"""Aligns HIP and assembly steady-loop timelines from ATT traces.

For each static loop instruction, computes its mean issue time relative to the
start of a complete traversal, aligns the two loops by mnemonic (register
copies excluded), and reports where HIP's cumulative time lead/lag changes.
"""
import difflib
import json
import re
import statistics
import sys
from collections import defaultdict

sys.path.insert(0, '/home/jinpli/workspace/home/jinpli/development/zyfa/build/att-20261112')
from loop_cycles import load, analyze  # noqa: E402

COPY = re.compile(r'^(v_mov_b32(_e32)?|s_mov_b32|v_mov_b64(_e32)?|s_mov_b64)\s+\S+,\s*[vs](\d+|\[\d+:\d+\])$')


def offsets(ui):
    info = analyze(ui)
    target, latch = int(info['target'], 16), int(info['latch'], 16)
    rows = json.load(open(f'{ui}/code.json'))['code']
    kernel_obj = next(r[4] for r in rows if r[0].startswith(';') and ('attend' in r[0] or 'fmha' in r[0]))
    text = {r[5]: r[0] for r in rows if r[4] == kernel_obj and not r[0].startswith(';') and target <= r[5] <= latch}
    acc = defaultdict(list)
    for w in load(ui):
        start, valid, prev, cur = None, False, None, {}
        for t, (pc, _op) in w['seq']:
            if pc == target and prev == latch:
                if start is not None and valid:
                    for p, tt in cur.items():
                        acc[p].append(tt - start)
                start, valid, cur = t, True, {}
            elif start is not None and not (target <= pc <= latch):
                valid, start, cur = False, None, {}
            if start is not None and pc not in cur:
                cur[pc] = t
            prev = pc
    mean = {p: statistics.mean(v) for p, v in acc.items()}
    loop = [(p, text[p]) for p in sorted(text)]
    return info, loop, mean


def main(hip_ui, asm_ui):
    hinfo, hloop, hmean = offsets(hip_ui)
    ainfo, aloop, amean = offsets(asm_ui)
    keep = lambda loop: [(p, t) for p, t in loop if not COPY.match(t.strip())]
    hk, ak = keep(hloop), keep(aloop)
    hm, am = [t.split()[0] for _, t in hk], [t.split()[0] for _, t in ak]
    sm = difflib.SequenceMatcher(a=am, b=hm, autojunk=False)
    pairs = []
    for a0, b0, n in sm.get_matching_blocks():
        pairs += [(ak[a0 + i], hk[b0 + i]) for i in range(n)]
    print(f'aligned {len(pairs)} of asm {len(ak)} / hip {len(hk)} retained; copies hip '
          f'{len(hloop) - len(hk)} asm {len(aloop) - len(ak)}; mean cycles hip {hinfo["cycles_mean"]:.1f} '
          f'asm {ainfo["cycles_mean"]:.1f}')
    prev_delta, rows = 0.0, []
    for (ap, at), (hp, ht) in pairs:
        if ap in amean and hp in hmean:
            delta = hmean[hp] - amean[ap]
            rows.append((delta - prev_delta, delta, ap, at, hp, ht))
            prev_delta = delta
    print(f'final delta at last aligned instruction: {prev_delta:.1f}')
    print('largest increases of HIP lag (cycles, cumulative, asm pc/insn, hip pc/insn):')
    for inc, delta, ap, at, hp, ht in sorted(rows, key=lambda r: -r[0])[:15]:
        print(f'  {inc:+8.1f} {delta:+8.1f}  {ap:#x} {at[:48]:48} | {hp:#x} {ht[:60]}')
    print('largest decreases:')
    for inc, delta, ap, at, hp, ht in sorted(rows, key=lambda r: r[0])[:8]:
        print(f'  {inc:+8.1f} {delta:+8.1f}  {ap:#x} {at[:48]:48} | {hp:#x} {ht[:60]}')
    json.dump([dict(inc=r[0], delta=r[1], asm_pc=r[2], asm=r[3], hip_pc=r[4], hip=r[5]) for r in rows],
              open(sys.argv[3], 'w'), indent=0)


if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2])
