"""Checks inline-asm VGPR writes against in-flight MFMAs in a disassembled HIP FP8 kernel.

GCNHazardRecognizer does not check inline asm against MFMA hazards, so it pads none of
the one-instruction asm moves. This walks every CFG predecessor path backwards from each
target, counting wait states (1 per instruction, N+1 per s_nop N), and reports the nearest
MFMA whose destination (WAW) or sources (WAR) overlap the target's destination.

Targets: each `v_mov_b32 vN, 0` in a run of at least 16 (the inline-asm O clear) and each
`v_mov_b32 vN, 0xff800000` (-inf fills).

Usage: python benchmarks/check_inline_asm_hazards.py DISASSEMBLY --dim 128|192 [--limit 64]
"""
import argparse
from pathlib import Path
import re
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from benchmarks.compare_isa import parse_disassembly, select_function  # noqa: E402


def regs(text):
    out = set()
    for m in re.finditer(r'\bv\[(\d+):(\d+)\]|\bv(\d+)\b', text):
        out.update([int(m[3])] if m[3] else range(int(m[1]), int(m[2]) + 1))
    return out


def cfg(code):
    addr = {i.address: k for k, i in enumerate(code)}
    leaders = {0}
    for k, i in enumerate(code):
        if i.branch_target in addr:
            leaders.add(addr[i.branch_target])
        if (i.branch_target is not None or i.mnemonic == 's_endpgm') and k + 1 < len(code):
            leaders.add(k + 1)
    starts = sorted(leaders)
    block_of = {}
    for b, s in enumerate(starts):
        e = starts[b + 1] if b + 1 < len(starts) else len(code)
        for k in range(s, e):
            block_of[k] = b
    preds = {b: set() for b in range(len(starts))}
    for b, s in enumerate(starts):
        e = (starts[b + 1] if b + 1 < len(starts) else len(code)) - 1
        last = code[e]
        if last.branch_target in addr:
            preds[block_of[addr[last.branch_target]]].add(b)
        if last.mnemonic not in ('s_branch', 's_endpgm') and e + 1 < len(code):
            preds[block_of[e + 1]].add(b)
    return starts, block_of, preds


def nearest(code, starts, block_of, preds, k, target, limit):
    """Backward walk over CFG predecessors from instruction k; returns the closest overlapping MFMA."""
    best = None
    stack = [(block_of[k], k, 0, frozenset())]  # (block, exclusive end within block, ws, seen)
    while stack:
        blk, j, ws, seen = stack.pop()
        while ws < limit:
            if j == starts[blk]:
                for p in preds[blk]:
                    if p not in seen:
                        end = starts[p + 1] if p + 1 < len(starts) else len(code)
                        stack.append((p, end, ws, seen | {p}))
                break
            j -= 1
            i = code[j]
            if i.mnemonic.startswith('v_mfma'):
                ops = [o.strip() for o in re.split(r',(?![^\[]*\])', i.operands)]
                dst, srcs = regs(ops[0]), set().union(*(regs(o) for o in ops[1:]))
                kind = 'WAW' if dst & target else ('WAR' if srcs & target else None)
                if kind and (best is None or ws < best[0]):
                    best = (ws, kind, hex(i.address), i.operands[:50])
            ws += int(i.operands) + 1 if i.mnemonic == 's_nop' else 1
    return best


def targets(code):
    zero = [k for k, i in enumerate(code)
            if i.mnemonic == 'v_mov_b32_e32' and re.fullmatch(r'v\d+, 0', i.operands)]
    runs, cur = [], []
    for k in zero:
        if cur and k != cur[-1] + 1:
            runs.append(cur)
            cur = []
        cur.append(k)
    if cur:
        runs.append(cur)
    found = [k for r in runs if len(r) >= 16 for k in r]
    found += [k for k, i in enumerate(code)
              if i.mnemonic == 'v_mov_b32_e32' and i.operands.endswith('0xff800000')]
    return found


def nearest_overlapping_mfma(code, limit):
    """Returns (target count, closest overlap within limit wait states or None)."""
    starts, block_of, preds = cfg(code)
    worst = None
    found = targets(code)
    for k in found:
        r = nearest(code, starts, block_of, preds, k, regs(code[k].operands.split(',')[0]), limit)
        if r and (worst is None or r[0] < worst[0]):
            worst = (r[0], r[1], r[2], r[3], hex(code[k].address), code[k].operands)
    return len(found), worst


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('disassembly', type=Path)
    parser.add_argument('--dim', type=int, choices=(128, 192), required=True)
    parser.add_argument('--limit', type=int, default=64)
    args = parser.parse_args()
    code = select_function(parse_disassembly(args.disassembly.read_text()), args.dim)
    count, worst = nearest_overlapping_mfma(code, args.limit)
    print(f'd{args.dim}: {count} targets; nearest overlapping MFMA within {args.limit} wait states: {worst}')


if __name__ == '__main__':
    main()
