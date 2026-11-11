"""Pool benchmark-before-after.py samples across independent runs of one comparison series.

Usage: timing_pool.py OUTPUT_CSV SERIES=DIR_GLOB [SERIES=DIR_GLOB ...]
Each DIR contains benchmark.json. Per case: pooled before/after/assembly medians, min/max/stdev over all
samples (runs x repeats), pooled median change, per-run median change range, and pooled range overlap.
"""
import csv
import glob
import json
import statistics
import sys
from pathlib import Path

out = Path(sys.argv[1])
rows = []
for item in sys.argv[2:]:
    series, pattern = item.split('=', 1)
    reports = [json.loads((Path(d) / 'benchmark.json').read_text()) for d in sorted(glob.glob(pattern))]
    keys = [(c['dim'], c['group'], c['length']) for c in reports[0]['cases']]
    for key in keys:
        cases = [next(c for c in r['cases'] if (c['dim'], c['group'], c['length']) == key) for r in reports]
        pooled = {n: [x for c in cases for x in c['samples_us'][n]] for n in ('before', 'after', 'assembly')}
        med = {n: statistics.median(v) for n, v in pooled.items()}
        per_run = [c['change_pct'] for c in cases]
        b, a = pooled['before'], pooled['after']
        row = {'series': series, 'runs': len(reports), 'samples_per_kernel': len(b), 'dim': key[0],
               'group': key[1], 'length': key[2]}
        for n in ('before', 'after', 'assembly'):
            row[f'{n}_median_us'] = round(med[n], 2)
            row[f'{n}_min_us'] = round(min(pooled[n]), 2)
            row[f'{n}_max_us'] = round(max(pooled[n]), 2)
            row[f'{n}_stdev_us'] = round(statistics.stdev(pooled[n]), 2)
        row['pooled_change_pct'] = round(100 * (med['after'] / med['before'] - 1), 2)
        row['run_change_min_pct'] = round(min(per_run), 2)
        row['run_change_max_pct'] = round(max(per_run), 2)
        row['runs_faster'] = sum(x < 0 for x in per_run)
        row['pooled_ranges_overlap'] = not (max(a) < min(b) or max(b) < min(a))
        row['all_bitwise_equal'] = all(all(c['bitwise_output_lse_equal']) for c in cases)
        row['max_relative_rms'] = max(c['relative_rms'] for c in cases)
        row['baseline_sha256'] = reports[0]['baseline_extension_sha256'][:16]
        row['current_sha256'] = reports[0]['current_extension_sha256'][:16]
        assert len({r['baseline_extension_sha256'] for r in reports}) == 1
        assert len({r['current_extension_sha256'] for r in reports}) == 1
        rows.append(row)
with out.open('w') as f:
    w = csv.DictWriter(f, fieldnames=list(rows[0]), lineterminator='\n')
    w.writeheader()
    w.writerows(rows)
for r in rows:
    print(f"{r['series']:<22} n={r['runs']}x d{r['dim']} g{r['group']} L{r['length']:<5} "
          f"before {r['before_median_us']:7.2f} [{r['before_min_us']:.2f}-{r['before_max_us']:.2f}] "
          f"after {r['after_median_us']:7.2f} [{r['after_min_us']:.2f}-{r['after_max_us']:.2f}] "
          f"asm {r['assembly_median_us']:7.2f} pooled {r['pooled_change_pct']:+.2f}% "
          f"runs [{r['run_change_min_pct']:+.2f},{r['run_change_max_pct']:+.2f}] faster {r['runs_faster']}/{r['runs']} "
          f"overlap={r['pooled_ranges_overlap']} bitwise={r['all_bitwise_equal']}")
