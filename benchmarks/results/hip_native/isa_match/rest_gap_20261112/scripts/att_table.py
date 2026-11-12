"""Per-case region table from att_compare.py output: cycles per wave per pass, group 0 / group 1, for the
assembly, HEAD and the final candidate, as deltas against the assembly.

Usage: att_table.py ANALYSIS_DIR
"""
import json
import sys

d = sys.argv[1]
CASES = ['d128-gqa4-256', 'd128-mha-256', 'd128-gqa4-1024', 'd128-mha-1024',
         'd192-mha-256', 'd192-gqa4-256', 'd192-mha-1024', 'd192-gqa4-1024']
REGIONS = ['prologue', 'epilogue', 'start_qk', 'oclear', 'dispatch', 'tail', 'last_sm', 'transition', 'last_pv',
           'pass_done', 'total']


def total(s, g, r):
    pp = s[str(g)]['per_pass']
    if r == 'total':
        return sum(pp.values())
    return sum(v for k, v in pp.items() if k.split('|')[0] == r)


print('Cycles per wave per pass, group 0 / group 1. asm: absolute; HEAD and final: delta to asm.\n')
print('| case | region | asm | HEAD - asm | final - asm | final - HEAD |')
print('|---|---|---|---|---|---|')
for case in CASES:
    try:
        a = json.load(open(f'{d}/asm-vs-final-{case}.json'))
        h = json.load(open(f'{d}/head-vs-final-{case}.json'))
    except FileNotFoundError:
        continue
    asm, fin, head = a['asm'], a['final'], h['head']
    for r in REGIONS:
        v = [[total(s, g, r) for g in (0, 1)] for s in (asm, head, fin)]
        print(f'| {case} | {r} | {v[0][0]:.0f} / {v[0][1]:.0f} | {v[1][0] - v[0][0]:+.0f} / {v[1][1] - v[0][1]:+.0f} | '
              f'{v[2][0] - v[0][0]:+.0f} / {v[2][1] - v[0][1]:+.0f} | {v[2][0] - v[1][0]:+.0f} / {v[2][1] - v[1][1]:+.0f} |')
