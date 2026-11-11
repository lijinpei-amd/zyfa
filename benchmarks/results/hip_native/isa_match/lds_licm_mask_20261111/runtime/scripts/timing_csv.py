"""Convert benchmark-before-after.py JSON files to one CSV with per-case medians, spread and overlap.

Usage: timing_csv.py OUTPUT_CSV LABEL=benchmark.json [LABEL=benchmark.json ...]
"""
import csv
import json
import statistics
import sys
from pathlib import Path

out = Path(sys.argv[1])
rows = []
for item in sys.argv[2:]:
    label, path = item.split('=', 1)
    report = json.loads(Path(path).read_text())
    for c in report['cases']:
        row = {'run': label, 'dim': c['dim'], 'group': c['group'], 'length': c['length'], 'heads': c['heads']}
        for name in ('before', 'after', 'assembly'):
            s = c['samples_us'][name]
            row[f'{name}_median_us'] = round(statistics.median(s), 3)
            row[f'{name}_min_us'] = round(min(s), 3)
            row[f'{name}_max_us'] = round(max(s), 3)
            row[f'{name}_stdev_us'] = round(statistics.stdev(s), 3)
        row['change_pct'] = round(c['change_pct'], 3)
        b, a = c['samples_us']['before'], c['samples_us']['after']
        row['ranges_overlap'] = not (max(a) < min(b) or max(b) < min(a))
        row['bitwise_output_lse_equal'] = all(c['bitwise_output_lse_equal'])
        row['relative_rms'] = c['relative_rms']
        row['baseline_extension_sha256'] = report['baseline_extension_sha256'][:16]
        row['current_extension_sha256'] = report['current_extension_sha256'][:16]
        rows.append(row)
with out.open('w') as f:
    w = csv.DictWriter(f, fieldnames=list(rows[0]), lineterminator='\n')
    w.writeheader()
    w.writerows(rows)
for r in rows:
    print(f"{r['run']:<24} d{r['dim']} g{r['group']} L{r['length']:<5} before {r['before_median_us']:8.2f} "
          f"[{r['before_min_us']:.2f}-{r['before_max_us']:.2f}] after {r['after_median_us']:8.2f} "
          f"[{r['after_min_us']:.2f}-{r['after_max_us']:.2f}] asm {r['assembly_median_us']:8.2f} "
          f"{r['change_pct']:+.2f}% overlap={r['ranges_overlap']} bitwise={r['bitwise_output_lse_equal']}")
