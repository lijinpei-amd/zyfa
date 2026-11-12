"""Forward counterpart of benchmarks/check_inline_asm_hazards.py: from each inline-asm O-clear move,
walks CFG successors and reports the nearest MFMA (in wait states) that reads or writes the cleared
register (RAW as SrcA/B/C, or WAW).

Usage: fwd_hazard.py TREE --dim 128|192 [--limit 64]
"""
import argparse
from pathlib import Path
import re
import sys

parser = argparse.ArgumentParser()
parser.add_argument('tree', type=Path)
parser.add_argument('--dim', type=int, required=True)
parser.add_argument('--limit', type=int, default=64)
args = parser.parse_args()
sys.path.insert(0, str(args.tree))
import benchmarks.check_inline_asm_hazards as hz  # noqa: E402
from benchmarks.check_inline_asm_hazards import cfg, regs  # noqa: E402
import re as _re


def targets(code, min_run=8):
    zero = [k for k, i in enumerate(code) if i.mnemonic == "v_mov_b32_e32" and _re.fullmatch(r"v\d+, 0", i.operands)]
    runs, cur = [], []
    for k in zero:
        if cur and k != cur[-1] + 1:
            runs.append(cur)
            cur = []
        cur.append(k)
    if cur:
        runs.append(cur)
    return [k for r in runs if len(r) >= min_run for k in r]


hz.targets = targets
from benchmarks.compare_isa import parse_disassembly, select_function  # noqa: E402

code = select_function(parse_disassembly((args.tree / 'inspect/disassembly.s').read_text()), args.dim)
starts, block_of, preds = cfg(code)
succs = {b: set() for b in preds}
for b, ps in preds.items():
    for p in ps:
        succs[p].add(b)
ends = {b: (starts[b + 1] if b + 1 < len(starts) else len(code)) for b in range(len(starts))}
worst = None
found = [k for k in targets(code) if code[k].operands.endswith(', 0')]
for k in found:
    target = regs(code[k].operands.split(',')[0])
    stack = [(block_of[k], k + 1, 1, frozenset())]
    while stack:
        blk, j, ws, seen = stack.pop()
        while ws < args.limit:
            if j >= ends[blk]:
                for s in succs[blk]:
                    if s not in seen:
                        stack.append((s, starts[s], ws, seen | {s}))
                break
            i = code[j]
            if i.mnemonic.startswith('v_mfma'):
                ops = [o.strip() for o in re.split(r',(?![^\[]*\])', i.operands)]
                dst, srcs = regs(ops[0]), set().union(*(regs(o) for o in ops[1:]))
                kind = 'RAW' if srcs & target else ('WAW' if dst & target else None)
                if kind and (worst is None or ws < worst[0]):
                    worst = (ws, kind, hex(i.address), i.operands[:48], hex(code[k].address), code[k].operands)
            ws += int(i.operands) + 1 if i.mnemonic == 's_nop' else 1
            j += 1
bw = hz.nearest_overlapping_mfma(code, args.limit)
print(f"d{args.dim}: backward (runs >= 8): {bw}")
print(f'd{args.dim}: {len(found)} zero-move targets; nearest following MFMA on a cleared register within '
      f'{args.limit} wait states: {worst}')
