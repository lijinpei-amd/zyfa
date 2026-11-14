"""Writes a guarded.py job list: benchmark-before-after.py run from inside each variant tree (its root
detection pins the zyfa import to that tree) against a baseline extension, interleaved per round.

Usage: make_jobs.py OUT.json TAG RUNS SPEC [SPEC ...]
SPEC is NAME:TREE_DIR:BASELINE_KEY, BASELINE_KEY one of: s (HEAD strict, 179a935c), ns (HEAD non-strict),
nscopy (a byte copy of the HEAD non-strict extension, for the control).
"""
import json
import sys

OUT = '/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261113/nop-slots'
SCRIPT = 'benchmarks/results/hip_native/isa_match/runtime_add3_20261111/benchmark-before-after.py'
SO = '_C.cpython-314-x86_64-linux-gnu.so'
BASE = {'s': f'/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261112/mlicm-followup/trees/head/zyfa/{SO}',
        'ns': f'{OUT}/trees/head-ns/zyfa/{SO}',
        'nscopy': f'{OUT}/extensions/head-ns-copy/{SO}'}
out, tag, runs = sys.argv[1], sys.argv[2], int(sys.argv[3])
jobs = []
for r in range(1, runs + 1):
    for spec in sys.argv[4:]:
        name, tree, key = spec.split(':')
        d = f'{OUT}/timing/{tag}/{name}-vs-{key}-r{r}'
        jobs.append({'name': f'{tag} {name} vs {key} r{r}', 'out': d,
                     'cmd': ['python', f'{tree}/{SCRIPT}', '--baseline-extension', BASE[key], '--output', d]})
json.dump(jobs, open(out, 'w'), indent=1)
print(len(jobs), 'jobs')
