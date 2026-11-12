"""Markdown per-pass region tables from compare_all.py JSON outputs.

Usage: gap_table.py PREFIX TAG_A TAG_B [CASE ...]
For each case: per group, cycles per wave per pass (A, B, B-A), with B-A split into issue / wait / barrier.
"""
import json
import sys

REGIONS = ['epilogue', 'start_qk', 'start_wait', 'start_misc', 'oclear', 'g0loads', 'g0wait', 'start_bar',
           'dispatch', 'steady', 'tail', 'last_sm', 'transition', 'last_pv', 'pass_done', 'prologue', 'final']
KINDS = ('issue', 'wait', 'bar')


def val(s, g, r, kinds=KINDS):
    return sum(s[str(g)]['per_pass'].get(f'{r}|{k}', 0.0) for k in kinds)


def main():
    prefix, ta, tb = sys.argv[1:4]
    cases = sys.argv[4:] or list(json.load(open(f'{prefix}.json')))
    for case in cases:
        d = json.load(open(f'{prefix}-{case}.json'))
        a, b = d[ta], d[tb]
        pa = a['0']['passes']
        print(f'\n### {case}\n')
        print(f'Block span {ta} {a["block_span"]["mean"]:.0f} (n={a["block_span"]["n"]}, sd {a["block_span"]["sd"]:.0f}), '
              f'{tb} {b["block_span"]["mean"]:.0f} (n={b["block_span"]["n"]}, sd {b["block_span"]["sd"]:.0f}); '
              f'delta {b["block_span"]["mean"] - a["block_span"]["mean"]:+.0f} = '
              f'{(b["block_span"]["mean"] - a["block_span"]["mean"]) / pa:+.0f} per pass ({pa:.2f} passes per wave)\n')
        print(f'| Region | g0 {ta} | g0 {tb} | g0 Δ (issue/wait/bar) | g1 {ta} | g1 {tb} | g1 Δ (issue/wait/bar) |')
        print('|---|---:|---:|---:|---:|---:|---:|')
        tot = [0.0] * 4
        for r in REGIONS:
            row = []
            for g in (0, 1):
                va, vb = val(a, g, r), val(b, g, r)
                dk = [val(b, g, r, (k,)) - val(a, g, r, (k,)) for k in KINDS]
                row += [f'{va:.0f}', f'{vb:.0f}', f'**{vb - va:+.0f}** ({dk[0]:+.0f}/{dk[1]:+.0f}/{dk[2]:+.0f})'
                        if abs(vb - va) >= 150 else f'{vb - va:+.0f} ({dk[0]:+.0f}/{dk[1]:+.0f}/{dk[2]:+.0f})']
                tot[2 * g] += va
                tot[2 * g + 1] += vb
            if max(abs(float(row[0])) + abs(float(row[1])), abs(float(row[3])) + abs(float(row[4]))) < 1:
                continue
            print(f'| {r} | ' + ' | '.join(row) + ' |')
        print(f'| total | {tot[0]:.0f} | {tot[1]:.0f} | {tot[1] - tot[0]:+.0f} | {tot[2]:.0f} | {tot[3]:.0f} | {tot[3] - tot[2]:+.0f} |')


if __name__ == '__main__':
    main()
