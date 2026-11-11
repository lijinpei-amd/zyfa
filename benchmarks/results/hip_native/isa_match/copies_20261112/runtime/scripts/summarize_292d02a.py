"""Per-run timing CSV (labelled) and summary.json for the 292d02a GPU validation."""
import csv
import json
import subprocess
import sys
from pathlib import Path

O = Path('/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261112/gpu-validation-292d02a')
T = O / 'timing'
labels = {'hip0-ac8512a-vs-292d02a-c': 'BURST-9pct-excluded', 'hip0-ac8512a-vs-292d02a-f': 'CONTAMINATED-79pct',
          'hip0-4dd38ce-vs-292d02a-f': 'CONTAMINATED-31pct'}
args = [f"{d.name}{'-' + labels[d.name] if d.name in labels else ''}={d / 'benchmark.json'}"
        for d in sorted(T.glob('hip*-vs-292d02a-?'))]
subprocess.run([sys.executable, str(Path(__file__).parent / 'timing_csv.py'), str(T / 'timing-all-runs.csv'), *args],
               check=True, stdout=subprocess.DEVNULL)
rows = list(csv.DictReader((T / 'timing-all-runs.csv').open()))
load = lambda p: json.loads((O / p).read_text())
tail = load('tail-race-long/tail-race-summary.json')
summary = {
    'candidate': '292d02a (copies-20261112), exported by git archive; source sha256 '
                 'a636145c58361731ff82cd4c43ac17d28744a42d3acf0ccbc4765302d6ebee83 (= git show 292d02a blob)',
    'compiler': 'production llvm-project 72e518a3f02a (Debug), tree setup.py with -disable-machine-licm',
    'provenance': {k: v for k, v in load('provenance-candidate.json').items()
                   if k not in ('inspect_manifest', 'git_head', 'git_status_porcelain', 'source_sha256_at_head_blob')},
    'provenance_note': 'reference_dir is the coordinator ATT tree inspect output (comparison only); git_head fields '
                       'omitted because the exported tree has no .git.',
    'static_checks': load('static-checks.json'),
    'tests': '310 passed, 2 skipped (HIP_VISIBLE_DEVICES=6,7; 188.76 s); codegen 76',
    'tail_race_long': {k: v for k, v in tail.items() if k != 'failure_rows'},
    'timing_runs': len({r['run'] for r in rows}),
    'timing_all_bitwise_equal': all(r['bitwise_output_lse_equal'] == 'True' for r in rows),
    'timing_max_relative_rms': max(float(r['relative_rms']) for r in rows),
    'timing_pooled_hip5': list(csv.DictReader((T / 'timing-pooled-hip5-clean.csv').open())),
    'timing_pooled_hip0': list(csv.DictReader((T / 'timing-pooled-hip0-clean.csv').open())),
    'timing_paired_median_change': (T / 'paired-median-change.txt').read_text().splitlines(),
    'device_mapping': 'HIP->amd-smi: 0->3, 1->0, 2->2, 3->1, 4->7, 5->4, 6->6, 7->5',
}
(O / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
print('runs', summary['timing_runs'], 'bitwise', summary['timing_all_bitwise_equal'], 'max rms',
      summary['timing_max_relative_rms'])
