"""Durations of the tail's SM and MM phases, per wave group, for HIP and assembly captures.

A phase starts at a tail `s_setprio 0` (SM) or at the `s_setprio 1` that follows the SM's barrier (MM), and
ends at the next s_barrier the wave executes (its issue; the barrier wait is excluded). Phases are labelled
by the number of MFMAs executed inside them (masked MM = row sums + QK + PV; PV-only = row sums + PV).

Usage: phase_durations.py KIND CAPS [--dis DIS]
"""
import argparse
import glob
import json
import statistics
import sys
from collections import Counter, defaultdict

sys.path.insert(0, '/home/jinpli/workspace/home/jinpli/development/zyfa/.claude/worktrees/agent-ac24e7bfa6fedf3e8/build/sg')
import regions as R  # noqa: E402


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('kind')
    ap.add_argument('caps')
    ap.add_argument('--dis')
    a = ap.parse_args()
    asm = a.kind.startswith('asm')
    dim = int(a.kind[3:])
    pcr, insts = R.asm_regions(dim) if asm else R.hip_regions(dim, a.dis)
    text_of = dict(insts)
    bars = sorted(pc for pc, t in insts if R.mnem(t) == 's_barrier' and pcr.get(pc) == 'prologue')
    g1_bar = bars[-1]
    sm_start = {pc for pc, t in insts if pcr.get(pc) == 'tail' and R.mnem(t) == 's_setprio' and t.endswith(' 0')}
    is_bar = {pc for pc, t in insts if R.mnem(t) == 's_barrier'}
    is_mfma = {pc for pc, t in insts if 'mfma' in t}
    is_p1 = {pc for pc, t in insts if R.mnem(t) == 's_setprio' and t.endswith(' 1')}
    index = json.load(open(f'{R.ROOT}/att/capdirs.json'))
    dur = defaultdict(list)
    for cap in a.caps.split(','):
        cap = cap if cap.startswith('/') else index[cap]
        for ui in sorted(glob.glob(f'{cap}/ui_output_agent_*_dispatch_*')):
            rows = R.kernel_rows(ui, asm)
            line_pc = {line: pc for pc, _, line in rows}
            for path in sorted(glob.glob(f'{ui}/se*_sm*_sl*_wv*.json')):
                w = json.load(open(path))['wave']
                seq = [(t, line_pc[line]) for t, _c, _s, _d, line in w['instructions'] if line in line_pc]
                if not seq:
                    continue
                g = 1 if Counter(pc for _, pc in seq)[g1_bar] else 0
                state, t0, nmf, after_sm_bar = None, 0, 0, False
                for t, pc in seq:
                    if state is None:
                        if pc in sm_start:
                            state, t0, nmf = 'SM', t, 0
                        elif after_sm_bar:
                            state, t0, nmf = 'MM', t, 0
                        after_sm_bar = False
                        continue
                    if pc in is_mfma:
                        nmf += 1
                    if pc in is_bar:
                        dur[(g, state if state == 'SM' else f'MM{nmf}')].append(t - t0)
                        after_sm_bar = state == 'SM'
                        state = None
    for (g, kind), v in sorted(dur.items()):
        print(f'group {g} {kind:5s} n={len(v):4d} mean {statistics.mean(v):7.0f} median {statistics.median(v):7.0f}')


if __name__ == '__main__':
    main()
