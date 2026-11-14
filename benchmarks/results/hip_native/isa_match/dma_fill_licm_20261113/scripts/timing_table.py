"""Markdown timing tables from timing_pool.py's CSV: per case the after/assembly ratio and the pooled
paired change against the baseline (with the per-run range), then per series the mean paired change
over d128, d192 and all 12 cases, the cases faster and whether every output was bitwise equal.

Usage: timing_table.py POOLED.csv
"""
import csv
import statistics
import sys
from collections import defaultdict

rows = list(csv.DictReader(open(sys.argv[1])))
series = list(dict.fromkeys(r['series'] for r in rows))
cases = list(dict.fromkeys((r['dim'], r['group'], r['length']) for r in rows))
by = {(r['series'], r['dim'], r['group'], r['length']): r for r in rows}
print('| case | ' + ' | '.join(f'{s} (paired; run range)' for s in series) + ' |')
print('|---|' + '---:|' * len(series))
for d, g, l in cases:
    cells = []
    for s in series:
        r = by[(s, d, g, l)]
        cells.append(f"{float(r['after_over_assembly']):.3f} ({float(r['paired_change_pct']):+.2f}%; "
                     f"{float(r['run_change_min_pct']):+.2f}..{float(r['run_change_max_pct']):+.2f})")
    print(f"| d{d} {'MHA' if g == '1' else 'GQA' + g} L{l} | " + ' | '.join(cells) + ' |')
print()
print('| series | mean paired, d128 | d192 | all 12 | cases faster | all bitwise |')
print('|---|---:|---:|---:|---:|---|')
for s in series:
    rs = [by[(s, *c)] for c in cases]
    p = lambda f: statistics.mean(float(r['paired_change_pct']) for r in rs if f(r))
    print(f"| {s} | {p(lambda r: r['dim'] == '128'):+.2f}% | {p(lambda r: r['dim'] == '192'):+.2f}% | "
          f"{p(lambda r: True):+.2f}% | {sum(float(r['paired_change_pct']) < 0 for r in rs)}/12 | "
          f"{all(r['all_bitwise_equal'] == 'True' for r in rs)} |")
