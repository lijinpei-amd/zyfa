"""Counts M0 -> LDS DMA hazard slots per kernel and region in llc output or an inspect disassembly.

For every LDS DMA (buffer_load_* ... lds) it finds the closest earlier M0 write and reports whether an
s_nop sits between them (an unfilled slot) or only other instructions (a filled slot).

Regions follow the source's labelled blocks: entry (before the pass loop), pass start (pass loop
head up to stage0), steady (stage0-3), tails (tail, tail0/1, normal0/1, pvo0/1 and their split
blocks), transitions (last*, dead_last*, advance_*, prepare_*, finished_*), epilogue (pass_done*).
Disassembly (no block names) is classified by matching instruction text to an llc .s of the same
build when given with --names.

Usage: slots.py FILE.s [--json OUT] [--detail]
"""
import json
import re
import sys
from collections import defaultdict

REGIONS = ('entry', 'pass start', 'steady', 'tails', 'transitions', 'epilogue')


def region_of(name, cur):
    if re.search(r'%stage\d$', name):
        return 'steady'
    if re.search(r'%(tail\d?|normal\d|pvo\d)$', name):
        return 'tails'
    if re.search(r'%(last\d|dead_last\d|advance_\w+|prepare_\w+|finished_\w+)$', name):
        return 'transitions'
    if re.search(r'%pass_done\d?$', name):
        return 'epilogue'
    return cur


def short(kernel):
    m = re.search(r'attendILi(\d+)E(?:Lb([01])E)?', kernel)
    if not m:
        return kernel[:30]
    return f'd{m.group(1)}' + ({'1': ' all', '0': ' gen'}.get(m.group(2), ''))


def parse_marked(path):
    """Like parse, but keeps 'LABEL' for block starts and 'BARRIER' for sched_barriers."""
    kernels = {}
    kernel = None
    for line in open(path):
        line = line.rstrip('\n')
        m = re.match(r'^(_Z\w+):', line)
        if m:
            kernel = short(m.group(1))
            kernels[kernel] = []
            region = 'entry'
            seen_loop = False
            continue
        if kernel is None:
            continue
        if line.startswith('.Lfunc_end'):
            kernel = None
            continue
        if 'Loop Header: Depth=1' in line and not seen_loop and region == 'entry':
            seen_loop = True
            region = 'pass start'
            continue
        m = re.match(r'^(\.LBB\w+|; %bb\.\d+):\s*(?:;\s*(.*))?$', line)
        if m:
            region = region_of(m.group(2) or '', region)
            kernels[kernel].append((region, 'LABEL'))
            continue
        s = line.strip()
        if 'sched_barrier' in s:
            kernels[kernel].append((region, 'BARRIER'))
            continue
        if not s or s.startswith(';') or s.startswith('.'):
            continue
        kernels[kernel].append((region, s.split(';')[0].strip()))
    return kernels


def parse(path):
    kernels = {}
    kernel = None
    for line in open(path):
        line = line.rstrip('\n')
        m = re.match(r'^(_Z\w+):', line)
        if m:
            kernel = short(m.group(1))
            kernels[kernel] = []
            region = 'entry'
            seen_loop = False
            continue
        if kernel is None:
            continue
        if line.startswith('.Lfunc_end'):
            kernel = None
            continue
        if 'Loop Header: Depth=1' in line and not seen_loop and region == 'entry':
            seen_loop = True
            region = 'pass start'
            continue
        m = re.match(r'^(\.LBB\w+|; %bb\.\d+):\s*(?:;\s*(.*))?$', line)
        if m:
            region = region_of(m.group(2) or '', region)
            continue
        s = line.strip()
        if not s or s.startswith(';') or s.startswith('.'):
            continue
        kernels[kernel].append((region, s.split(';')[0].strip()))
    return kernels


def analyze(insts):
    stats = {r: defaultdict(int) for r in REGIONS}
    detail = []
    last_m0 = None
    for i, (region, t) in enumerate(insts):
        st = stats[region]
        if t.startswith('s_nop'):
            st['s_nop'] += 1
        if re.match(r'^\S+\s+m0\b', t):
            last_m0 = i
        if t.startswith('buffer_load') and re.search(r'\blds$', t):
            st['dma'] += 1
            between = [x[1] for x in insts[last_m0 + 1:i]] if last_m0 is not None else []
            nops = [b for b in between if b.startswith('s_nop')]
            if nops:
                st['unfilled'] += 1
                st['m0_nops'] += len(nops)
            else:
                st['filled'] += 1
            detail.append((region, insts[last_m0][1] if last_m0 is not None else '', between, t))
    return stats, detail


def main():
    path = sys.argv[1]
    out = {}
    for kernel, insts in parse(path).items():
        stats, detail = analyze(insts)
        out[kernel] = {r: dict(v) for r, v in stats.items()}
        if '--detail' in sys.argv:
            for region, m0, between, t in detail:
                print(f'{kernel:8} {region:12} {m0:32} | {" ; ".join(between):60} | {t}')
    print(f'{"kernel":8} ' + ' '.join(f'{r:>16}' for r in REGIONS) + '   total s_nop')
    for kernel, st in out.items():
        cells = []
        for r in REGIONS:
            s = st[r]
            cells.append(f'{s.get("filled", 0):>3}/{s.get("dma", 0):<3} n{s.get("m0_nops", 0):<3}'.rjust(16))
        total = sum(s.get('s_nop', 0) for s in st.values())
        print(f'{kernel:8} ' + ' '.join(cells) + f'   {total}')
    if '--json' in sys.argv:
        json.dump(out, open(sys.argv[sys.argv.index('--json') + 1], 'w'), indent=1)


if __name__ == "__main__":
    main()
