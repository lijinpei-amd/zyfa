"""Per-pass region breakdown of ZYFA FP8 HIP and assembly kernels from ATT captures.

Each wave's time between consecutive instruction timestamps is charged to the earlier instruction, split
into kind 'bar' (s_barrier), 'wait' (s_waitcnt) or 'issue' (everything else, including dependency stalls).
Regions are common to both implementations:

  prologue, epilogue (previous pass's output), start_qk (pass-top Q wait, first QK, mask, statistics),
  start_wait (vmcnt(0) after the first QK), start_misc, oclear (64 zero moves), g0loads (group-0 V1/K2/K3
  tile loads), g0wait (HIP: vmcnt(0) after them), start_bar (pass-start barrier), dispatch, steady, tail,
  last_sm (last tile's codes, wait, barrier), transition (epilogue addresses, next pass, next tiles, next Q),
  last_pv, pass_done (vmcnt + barrier), final.

Assembly regions come from the generator labels (the tree's generated .s zipped with its objdump for PCs);
HIP regions from block indices of the HEAD CFG, carried to other builds by block-signature alignment.

Usage:
  regions.py summary KIND CAPDIR [--dis-a DIS]
  regions.py compare LABEL_A KIND_A CAPDIR_A LABEL_B KIND_B CAPDIR_B [--dis-a DIS] [--dis-b DIS] [--json OUT]
  regions.py map KIND [--dis-a DIS]
KIND: hip128 | hip192 | asm128 | asm192. CAPDIR may be a comma-separated list (pooled).
"""
import argparse
import difflib
import glob
import json
import os
import re
import statistics
import sys
from collections import Counter, defaultdict

ROOT = '/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261112/short-gap'
HEAD_DIS = f'{ROOT}/trees/head/inspect/disassembly.s'
ASM_GEN = {128: f'{ROOT}/asm/d128_labels.s', 192: f'{ROOT}/asm/d192_labels.s'}
ASM_DIS = {128: f'{ROOT}/asm/d128_head.dis', 192: f'{ROOT}/asm/d192_head.dis'}
REGIONS = ['prologue', 'epilogue', 'start_qk', 'start_wait', 'start_misc', 'oclear', 'g0loads', 'g0wait',
           'start_bar', 'dispatch', 'steady', 'tail', 'last_sm', 'transition', 'last_pv', 'pass_done', 'final']
ZERO = re.compile(r'^v_mov_b32(?:_e32)? v(\d+), 0$')
sys.path.insert(0, f'{ROOT}/scripts')
import cfg  # noqa: E402


def mnem(text):
    return text.split()[0].replace('_e32', '').replace('_e64', '')


# ---------------------------------------------------------------- HIP spec (HEAD 9cf4ce9 block indices)
def rng(a, b):
    return list(range(a, b + 1))


HIP_SPEC = {
    128: dict(n=190, ranges=[
        ('prologue', rng(0, 12)), ('start_qk', rng(13, 27) + rng(46, 49)), ('start_post', [28]),
        ('g0loads', rng(29, 32) + [41, 42, 43]), ('g0wait', [33]), ('start_barblk', [34]),
        ('dispatch', rng(35, 40) + [44, 45]), ('steady', rng(50, 65)), ('tail', rng(66, 141)),
        ('last_sm', [142, 146]), ('last_blk', [143, 147, 150, 157]),
        ('transition', [144, 145, 148, 149] + rng(151, 156) + rng(158, 176) + [180]),
        ('last_pv', [177, 181]), ('pass_done', [178, 179, 182]), ('epilogue', [183, 184]),
        ('final', rng(185, 189))]),
    192: dict(n=172, ranges=[
        ('prologue', rng(0, 12)), ('start_qk', rng(13, 23)), ('start_post', [24]),
        ('g0loads', rng(25, 28) + [37, 38, 39]), ('g0wait', [29]), ('start_barblk', [30]),
        ('dispatch', rng(31, 36) + [40, 41]), ('steady', rng(42, 57)), ('tail', rng(58, 117)),
        ('last_sm', [118, 123]), ('last_blk', [119, 124, 128, 132]),
        ('transition', [120, 121, 122, 125, 126, 127, 129, 130, 131] + rng(133, 154) + rng(158, 162)),
        ('last_pv', [155, 163]), ('pass_done', [156, 157, 164]), ('epilogue', [165, 166]),
        ('final', rng(167, 171))]),
}


def hip_blocks(dis, dim):
    name, start, insts = cfg.parse(dis, str(dim))
    bl = cfg.blocks(insts)
    return start, [[(pc - start, text) for pc, text, _ in b['insts']] for b in bl]


def refine(block_region, insts):
    """Instruction-level regions inside a block-level region."""
    out = []
    seen_bar = False
    for pc, text in insts:
        m = mnem(text)
        r = block_region
        if block_region == 'start_post':
            r = 'start_wait' if m == 's_waitcnt' else 'start_misc'
        elif block_region == 'start_barblk':
            r = 'start_bar' if m == 's_barrier' else 'dispatch'
        elif block_region == 'last_blk':
            r = 'transition' if seen_bar else 'last_sm'
            if m == 's_barrier':
                seen_bar = True
        out.append((pc, r))
    return out


def oclear_runs(insts, min_run=16):
    """PCs of runs of at least min_run consecutive `v_mov_b32 vN, 0` (the pass-start O clear)."""
    out, run = set(), []
    for pc, text in list(insts) + [(-1, '')]:
        if ZERO.match(text):
            run.append(pc)
            continue
        if len(run) >= min_run:
            out.update(run)
        run = []
    return out


def hip_regions(dim, dis=None):
    _, ref_blocks = hip_blocks(HEAD_DIS, dim)
    spec = HIP_SPEC[dim]
    assert len(ref_blocks) == spec['n'], (dim, len(ref_blocks))
    bregion = [None] * spec['n']
    for r, idx in spec['ranges']:
        for i in idx:
            assert bregion[i] is None, (dim, i)
            bregion[i] = r
    assert None not in bregion, [i for i, r in enumerate(bregion) if r is None]
    if dis is None or os.path.abspath(dis) == os.path.abspath(HEAD_DIS):
        blocks, region = ref_blocks, bregion
    else:
        _, blocks = hip_blocks(dis, dim)
        sig = lambda b: tuple(mnem(t) for _, t in b if not ZERO.match(t))
        sm = difflib.SequenceMatcher(a=[sig(b) for b in ref_blocks], b=[sig(b) for b in blocks], autojunk=False)
        region = [None] * len(blocks)
        for op, a0, a1, b0, b1 in sm.get_opcodes():
            for k in range(b1 - b0):
                region[b0 + k] = bregion[min(a0 + k, a1 - 1)] if a1 > a0 else None
        last = 'prologue'
        for i, r in enumerate(region):
            region[i] = r = r or last
            last = r
    pcr = {}
    for b, r in zip(blocks, region):
        for pc, rr in refine(r, b):
            pcr[pc] = rr
    insts = [t for b in blocks for t in b]
    for pc in oclear_runs(insts):
        if pcr[pc] not in ('prologue', 'final'):
            pcr[pc] = 'oclear'
    return pcr, insts


# ---------------------------------------------------------------- assembly spec (generator labels)
G0LOAD = ('buffer_load_dwordx4', 's_mul_i32', 's_cmpk_le_u32', 's_add_u32', 's_and_b32', 's_lshl_b32')


def asm_regions(dim):
    gen = []
    state = 'prologue'
    for line in open(ASM_GEN[dim]):
        s = line.split('//')[0].strip()
        if not s:
            continue
        lm = re.match(r'^([.A-Za-z_0-9]+):$', s)
        if lm:
            lab = re.sub(r'_\d+$', '', lm.group(1))
            if lab == '.Lpasstop':
                state = 'epilogue'
            elif lab == '.Lfirst':
                state = 'start_qk'
            elif lab == '.Lpareven':
                state = 'start_post'
            elif lab == '.Lnog0' and state in ('start_post', 'start_g0'):
                state = 'start_barblk'
            elif lab == '.Lst0':
                state = 'steady'
            elif lab in ('.Ltail', '.Ltail0', '.Ltail1'):
                state = 'tail'
            elif lab in ('.Llast0', '.Llast1', '.Ldeadlast'):
                state = 'last_blk'
            elif lab == '.Lnonext' and state == 'transition':
                state = 'last_pv'
            elif lab in ('.Llastjoin', '.Lpdone'):
                state = 'pass_done'
            continue
        if not re.match(r'^[a-z][a-z_0-9]*(\s|$)', s) or s.startswith(('amdhsa', 'end_amd')):
            continue
        m = mnem(s)
        r = state
        if state == 'start_post':
            zm = re.match(r'^v_mov_b32 v(\d+), 0$', s)
            if m == 's_waitcnt':
                r = 'start_wait'
            elif zm and int(zm.group(1)) < 64:
                r = 'oclear'
            elif m in G0LOAD or s.startswith('s_mov_b32 m0'):
                r = 'g0loads'
                state = 'start_g0'
            else:
                r = 'start_misc'
        elif state == 'start_g0':
            r = 'g0loads'
        elif state == 'start_barblk':
            r = 'start_bar' if m == 's_barrier' else 'dispatch'
        elif state == 'last_blk':
            r = 'last_sm'
            if m == 's_barrier':
                state = 'transition'
        gen.append((m, r))
        if state == 'pass_done' and m == 's_cbranch_scc1' and '.Lpasstop' in s:
            state = 'final'
    dis = []
    for line in open(ASM_DIS[dim]):
        mm = re.match(r'^\s+([a-z_0-9]+)[^/]*//\s*([0-9A-F]+):', line)
        if mm:
            dis.append((int(mm.group(2), 16), mm.group(1), line.split('//')[0].strip()))
    assert len(dis) == len(gen), (dim, len(dis), len(gen))
    start = dis[0][0]
    pcr, insts = {}, []
    for (pc, dm, text), (gm, r) in zip(dis, gen):
        assert mnem(dm) == gm, (hex(pc), dm, gm)
        pcr[pc - start] = r
        insts.append((pc - start, ' '.join(text.split())))
    return pcr, insts


# ---------------------------------------------------------------- traces
def kernel_rows(ui, asm):
    rows = json.load(open(f'{ui}/code.json'))['code']
    start, out, active = None, [], False
    for r in rows:
        if r[0].startswith(';'):
            active = ('fmha' in r[0]) if asm else ('attend' in r[0] or 'attend' in r[3])
            if active:
                start = r[5]
            continue
        if active:
            out.append((r[5] - start, r[0].strip(), r[2]))
    return out


def load_capture(capdirs, kind, dis=None):
    asm = kind.startswith('asm')
    dim = int(kind[3:])
    pcr, insts = asm_regions(dim) if asm else hip_regions(dim, dis)
    text_of = dict(insts)
    bars = sorted(pc for pc, t in insts if mnem(t) == 's_barrier' and pcr.get(pc) == 'prologue')
    g1_bar = bars[-1]
    start_bar = [pc for pc, t in insts if pcr.get(pc) == 'start_bar']
    assert len(start_bar) == 1, start_bar
    start_bar = start_bar[0]
    dispatches = []
    for capdir in capdirs.split(','):
        first = len(dispatches)
        for ui in sorted(glob.glob(f'{capdir}/ui_output_agent_*_dispatch_*')):
            rows = kernel_rows(ui, asm)
            for pc, t, _ in rows:
                assert mnem(t) == mnem(text_of.get(pc, t)), (ui, hex(pc), t, text_of.get(pc))
            line_pc = {line: pc for pc, _, line in rows}
            waves = []
            for path in sorted(glob.glob(f'{ui}/se*_sm*_sl*_wv*.json')):
                w = json.load(open(path))['wave']
                seq = [(t, line_pc[line]) for t, _c, _s, _d, line in w['instructions'] if line in line_pc]
                if not seq:
                    continue
                pcs = Counter(pc for _, pc in seq)
                group = 1 if pcs[g1_bar] else 0
                acc = defaultdict(float)
                for (t0, pc0), (t1, _) in zip(seq, seq[1:]):
                    r = pcr.get(pc0, '?')
                    m = mnem(text_of.get(pc0, 'x'))
                    k = 'bar' if m == 's_barrier' else 'wait' if m == 's_waitcnt' else 'issue'
                    acc[(r, k)] += t1 - t0
                waves.append({'group': group, 'passes': pcs[start_bar], 'acc': acc,
                              'span': seq[-1][0] - seq[0][0], 'begin': w['begin'], 'end': w['end'], 'n': len(seq)})
            dispatches.append({'ui': ui, 'waves': waves,
                               'block_span': max(w['end'] for w in waves) - min(w['begin'] for w in waves)})
        # Outliers: a dispatch whose block span exceeds 1.2x the capture's median (preemption or a stalled
        # memory system) is dropped and counted.
        mine = dispatches[first:]
        med = statistics.median(d['block_span'] for d in mine)
        for d in mine:
            d['outlier'] = d['block_span'] > 1.2 * med
    return dispatches


def summarize(dispatches):
    """Per group: mean cycles per wave per pass for (region, kind); spans."""
    dropped = sum(d['outlier'] for d in dispatches)
    dispatches = [d for d in dispatches if not d['outlier']]
    out = {'dropped': dropped}
    for g in (0, 1):
        ws = [w for d in dispatches for w in d['waves'] if w['group'] == g]
        if not ws:
            continue
        passes = statistics.mean(w['passes'] for w in ws)
        acc = defaultdict(float)
        for w in ws:
            for key, v in w['acc'].items():
                acc[key] += v / len(ws)
        out[g] = {'waves': len(ws), 'passes': passes, 'span': statistics.mean(w['span'] for w in ws),
                  'per_pass': {f'{r}|{k}': v / passes for (r, k), v in acc.items()}}
    spans = [d['block_span'] for d in dispatches]
    out['block_span'] = {'mean': statistics.mean(spans), 'median': statistics.median(spans), 'min': min(spans),
                         'max': max(spans), 'n': len(spans),
                         'sd': statistics.pstdev(spans) if len(spans) > 1 else 0.0}
    return out


def region_total(s, g, r, kinds=('issue', 'wait', 'bar')):
    return sum(s[g]['per_pass'].get(f'{r}|{k}', 0.0) for k in kinds)


def print_compare(la, sa, lb, sb):
    A, B = sa['block_span'], sb['block_span']
    print(f'block span (cycles, all passes): {la} mean {A["mean"]:.0f} sd {A["sd"]:.0f} [{A["min"]}-{A["max"]}] '
          f'n={A["n"]} (+{sa["dropped"]} outliers dropped); {lb} mean {B["mean"]:.0f} sd {B["sd"]:.0f} '
          f'[{B["min"]}-{B["max"]}] n={B["n"]} (+{sb["dropped"]}); delta {B["mean"] - A["mean"]:+.0f}')
    for g in (0, 1):
        if g not in sa or g not in sb:
            continue
        print(f'\ngroup {g}: passes/wave {la} {sa[g]["passes"]:.2f} {lb} {sb[g]["passes"]:.2f}; wave span '
              f'{sa[g]["span"]:.0f} vs {sb[g]["span"]:.0f}; cycles per wave per pass, issue/wait/bar=total')
        print(f'{"region":12s} {la:>27s} {lb:>27s} {"delta B-A":>27s}')
        tots = [[0.0] * 3, [0.0] * 3]
        for r in REGIONS:
            va = [region_total(sa, g, r, (k,)) for k in ('issue', 'wait', 'bar')]
            vb = [region_total(sb, g, r, (k,)) for k in ('issue', 'wait', 'bar')]
            if sum(va) + sum(vb) < 1:
                continue
            for i in range(3):
                tots[0][i] += va[i]
                tots[1][i] += vb[i]
            print(f'{r:12s} {fmt(va):>27s} {fmt(vb):>27s} {fmt([b - a for a, b in zip(va, vb)], True):>27s}')
        print(f'{"total":12s} {fmt(tots[0]):>27s} {fmt(tots[1]):>27s} '
              f'{fmt([b - a for a, b in zip(*tots)], True):>27s}')


def fmt(v, sign=False):
    s = '+' if sign else ''
    return f'{v[0]:{s}6.0f}/{v[1]:{s}5.0f}/{v[2]:{s}5.0f}={sum(v):{s}6.0f}'


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('cmd')
    ap.add_argument('args', nargs='*')
    ap.add_argument('--dis-a')
    ap.add_argument('--dis-b')
    ap.add_argument('--json')
    a = ap.parse_args()
    if a.cmd == 'summary':
        kind, cap = a.args
        json.dump(summarize(load_capture(cap, kind, a.dis_a)), sys.stdout, indent=1)
    elif a.cmd == 'compare':
        la, ka, ca, lb, kb, cb = a.args
        sa = summarize(load_capture(ca, ka, a.dis_a))
        sb = summarize(load_capture(cb, kb, a.dis_b))
        print_compare(la, sa, lb, sb)
        if a.json:
            json.dump({la: sa, lb: sb}, open(a.json, 'w'), indent=1)
    elif a.cmd == 'map':
        kind = a.args[0]
        dim = int(kind[3:])
        pcr, insts = asm_regions(dim) if kind.startswith('asm') else hip_regions(dim, a.dis_a)
        print(dict(Counter(pcr.values())))
        for pc, t in insts:
            print(f'{pc:#7x} {pcr.get(pc, "?"):12s} {t}')


if __name__ == '__main__':
    main()
