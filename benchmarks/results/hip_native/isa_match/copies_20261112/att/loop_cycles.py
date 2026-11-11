"""Measures steady-loop traversal cycles from an ATT ui_output directory.

The hot loop is the most frequently taken backward branch (latch -> target) of
the attention kernel. A sample is one complete traversal: from arriving at the
target via the latch to the next such arrival, staying inside [target, latch].
Timestamps are shader-clock cycles as written by the decoder.
"""
import argparse
from collections import Counter
import glob
import json
import statistics
import sys


def load(ui):
    rows = json.load(open(f'{ui}/code.json'))['code']
    kernel_obj = next(r[4] for r in rows if r[0].startswith(';') and ('attend' in r[0] or 'fmha' in r[0]))
    mapping = {r[2]: (r[5], r[0].split()[0] if r[0] and not r[0].startswith(';') else '')
               for r in rows if r[4] == kernel_obj}
    waves = []
    for path in sorted(glob.glob(f'{ui}/se*_sm*_sl*_wv*.json')):
        wave = json.load(open(path))['wave']
        seq = [(t, mapping.get(line, (-1, ''))) for t, _cat, _stall, _dur, line in wave['instructions']]
        waves.append({'name': path.rsplit('/', 1)[1], 'simd': wave['simd'], 'begin': wave['begin'],
                      'end': wave['end'], 'seq': seq})
    return waves


def analyze(ui):
    waves = load(ui)
    backedges = Counter()
    for w in waves:
        for (t0, (pc0, op0)), (t1, (pc1, _)) in zip(w['seq'], w['seq'][1:]):
            if op0.startswith('s_cbranch') or op0.startswith('s_branch'):
                if 0 <= pc1 < pc0:
                    backedges[(pc1, pc0)] += 1
    (target, latch), _ = max(backedges.items(), key=lambda kv: (kv[1], kv[0][1] - kv[0][0]))
    samples, per_wave = [], []
    for w in waves:
        start, valid, prev_pc, n = None, False, None, 0
        for t, (pc, op) in w['seq']:
            if pc == target and prev_pc == latch:
                if start is not None and valid:
                    samples.append(t - start)
                    n += 1
                start, valid = t, True
            elif start is not None and not (target <= pc <= latch):
                valid, start = False, None
            prev_pc = pc
        per_wave.append((w['name'], n))
    span_ops = Counter()
    seen = set()
    for w in waves:
        for _, (pc, op) in w['seq']:
            if target <= pc <= latch and pc not in seen:
                seen.add(pc)
                span_ops[op] += 1
    q = sorted(samples)
    return {
        'ui': ui, 'waves': len(waves), 'target': hex(target), 'latch': hex(latch),
        'static_instructions_in_span': len(seen),
        'mfma_in_span': sum(v for k, v in span_ops.items() if 'mfma' in k),
        'samples': len(samples),
        'cycles_mean': statistics.mean(samples), 'cycles_median': statistics.median(samples),
        'cycles_p10': q[len(q) // 10], 'cycles_p90': q[(9 * len(q)) // 10],
        'cycles_min': q[0], 'cycles_max': q[-1],
        'wave_duration_mean': statistics.mean(w['end'] - w['begin'] for w in waves),
        'per_wave_iterations': per_wave,
    }


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('ui', nargs='+')
    args = parser.parse_args()
    results = [analyze(ui) for ui in args.ui]
    json.dump(results, sys.stdout, indent=1)
