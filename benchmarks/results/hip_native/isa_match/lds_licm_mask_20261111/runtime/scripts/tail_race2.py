"""Tail/race correctness for native HIP FP8: candidate vs reference extensions vs FP64, both LSE modes.

Usage (from the candidate tree root):
  tail_race2.py --reference NAME=PATH [--reference NAME=PATH ...] --expect-sha SHA --output DIR
                [--repeats N] [--diag-repeats N] [--stress-iters N] [--seeds N] [--phases ...]

Extends tail_race.py (3ff0230 validation):
  * every case runs with return_lse=True and return_lse=False (both paths of the LSE pointer select);
    the no-LSE output must equal the LSE output bit for bit;
  * every candidate result is compared bitwise with each --reference extension (e.g. owning and 3ff0230);
  * diagonal phase: lengths m-1, m, m+1 for every multiple m of 32 up to 1056 through the padded API path,
    so the causal diagonal falls at every 32-row offset of 64-key (d192) and 128-key (d128) tiles;
  * persistent phase adds multi-pass shapes (two passes per job, odd num_q self-paired jobs, several jobs
    per workgroup).
Error vs an FP64 reference is computed over all rows for LSE-mode results.
"""
import argparse
import csv
import hashlib
import importlib.util
import json
import math
import os
import random
import sys
import time
from pathlib import Path

sys.path.insert(0, os.getcwd())
import torch
import zyfa
from zyfa import _C

parser = argparse.ArgumentParser()
parser.add_argument('--reference', action='append', required=True)
parser.add_argument('--expect-sha', required=True)
parser.add_argument('--output', type=Path, required=True)
parser.add_argument('--repeats', type=int, default=30)
parser.add_argument('--diag-repeats', type=int, default=10)
parser.add_argument('--stress-iters', type=int, default=200)
parser.add_argument('--seeds', type=int, default=20)
parser.add_argument('--phases', default='kernel,persistent,padded,diagonal,stress')
args = parser.parse_args()
args.output.mkdir(parents=True, exist_ok=True)

cand_sha = hashlib.sha256(Path(_C.__file__).read_bytes()).hexdigest()
assert Path(zyfa.__file__).resolve().parent.parent == Path.cwd().resolve(), zyfa.__file__
assert cand_sha == args.expect_sha, cand_sha
refs = {}
meta = {'candidate_extension': _C.__file__, 'candidate_extension_sha256': cand_sha, 'references': {},
        'device': torch.cuda.get_device_name(), 'HIP_VISIBLE_DEVICES': os.environ.get('HIP_VISIBLE_DEVICES'),
        'args': {k: str(v) for k, v in vars(args).items()}, 'start': time.strftime('%Y-%m-%dT%H:%M:%S')}
for item in args.reference:
    name, path = item.split('=', 1)
    spec = importlib.util.spec_from_file_location('_C', Path(path).resolve())
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    refs[name] = module
    meta['references'][name] = {'path': path, 'sha256': hashlib.sha256(Path(path).read_bytes()).hexdigest()}
print(json.dumps(meta, indent=1), flush=True)
rows, failures = [], []


def make(dim, B, Hq, Hkv, S, bshd, seed, grow=False):
    g = torch.Generator(device='cuda').manual_seed(seed)
    src = [torch.randn(B, h, S, d, generator=g, device='cuda') * 0.4
           for h, d in ((Hq, dim), (Hkv, dim), (Hkv, 128))]
    if grow:
        src[0][..., 0] = 1
        src[1][..., 0] += torch.arange(S, device='cuda') / 8
    quant = [zyfa.fp8_quantize(x) for x in src]
    t = [x[0] for x in quant]
    if bshd:
        t = [x.transpose(1, 2).contiguous() for x in t]
    return t, [x[1] for x in quant]


def call(module, dim, t, ds, bshd, lse=True):
    res = getattr(module, f'fp8_d{dim}_hip')(*t, 1 / math.sqrt(dim), True, lse, bshd, 1.0, *ds)
    return (res[0], res[1]) if lse else (res[0],)


def call_padded(module, dim, t, ds, bshd, lse=True):
    sd = 1 if bshd else 2
    S = t[0].shape[sd]
    pad = -S % 256
    if pad:
        t = [torch.cat([x, x.new_zeros((*x.shape[:sd], pad, *x.shape[sd + 1:]))], sd) for x in t]
    res = call(module, dim, t, ds, bshd, lse)
    out = res[0].narrow(sd, 0, S)
    if not lse:
        return (out,)
    B, Hq = t[0].shape[0], t[0].shape[2 if bshd else 1]
    return out, res[1].view(B, Hq, S + pad).narrow(2, 0, S)


def bits(x):
    return x.view(torch.int16) if x.dtype == torch.bfloat16 else x.view(torch.int32)


def same(a, b):
    return len(a) == len(b) and all(torch.equal(bits(x), bits(y)) for x, y in zip(a, b))


def reference_error(out, lse, t, ds, bshd):
    q, k, v = [(x.transpose(1, 2) if bshd else x) for x in t]
    o = out.transpose(1, 2) if bshd else out
    B, Hq, S, _ = q.shape
    group = Hq // k.shape[1]
    lse = lse.reshape(B, Hq, S)
    num = den = max_abs = lse_err = 0.0
    finite = bool(out.isfinite().all()) and bool(lse.isfinite().all())
    mask = torch.arange(S, device='cuda')[None, :] > torch.arange(S, device='cuda')[:, None]
    chunk = max(1, int(2**28 // (S * S)))
    for b in range(B):
        for h0 in range(0, Hq, chunk):
            hs = list(range(h0, min(Hq, h0 + chunk)))
            qd = q[b, hs].double() * ds[0]
            kd = k[b, [h // group for h in hs]].double() * ds[1]
            vd = v[b, [h // group for h in hs]].double() * ds[2]
            s = qd @ kd.transpose(-1, -2) / math.sqrt(q.shape[-1])
            s.masked_fill_(mask, -math.inf)
            exp = s.softmax(-1) @ vd
            act = o[b, hs].double()
            num += (act - exp).square().sum().item()
            den += exp.square().sum().item()
            max_abs = max(max_abs, (act - exp).abs().max().item())
            lse_err = max(lse_err, (lse[b, hs].double() - s.logsumexp(-1)).abs().max().item())
    return {'rel_rms': math.sqrt(num / den), 'max_abs_err': max_abs, 'lse_max_abs_err': lse_err, 'finite': finite}


def diff_stats(a, b):
    out = {'out_diff_elems': int((bits(a[0]) != bits(b[0])).sum()),
           'out_max_abs_diff': (a[0].float() - b[0].float()).abs().max().item()}
    if len(a) > 1 and len(b) > 1:
        out['lse_diff_elems'] = int((bits(a[1]) != bits(b[1])).sum())
    return out


def record(phase, case, extra):
    row = {'phase': phase, **case, **extra}
    ok = all(v for k, v in row.items() if k.startswith('equal_') or k == 'repeat_bitwise_stable') and \
        row.get('finite', True) and row.get('rel_rms', 0) < 0.05 and row.get('lse_max_abs_err', 0) < 0.06 and \
        row.get('mismatches', 0) == 0
    row['pass'] = bool(ok)
    rows.append(row)
    if not ok:
        failures.append(row)
        print('FAIL', json.dumps(row), flush=True)


def run_case(phase, dim, B, Hq, Hkv, S, bshd, seed, padded, repeats, grow=False, api=False):
    t, ds = make(dim, B, Hq, Hkv, S, bshd, seed, grow)
    fn = call_padded if padded else call
    case = {'dim': dim, 'B': B, 'Hq': Hq, 'Hkv': Hkv, 'S': S, 'layout': 'bshd' if bshd else 'bhsd',
            'seed': seed, 'grow': grow}
    extra = {}
    results = {}
    for lse in (True, False):
        tag = 'lse' if lse else 'nolse'
        cand = fn(_C, dim, t, ds, bshd, lse)
        results[tag] = cand
        for name, module in refs.items():
            r = fn(module, dim, t, ds, bshd, lse)
            eq = same(r, cand)
            extra[f'equal_{name}_{tag}'] = eq
            if not eq:
                extra.update({f'{name}_{tag}_{k}': v for k, v in diff_stats(r, cand).items()})
        if api:
            res = zyfa.flash_attn_func(*t, causal=True, layout='bshd' if bshd else 'bhsd', return_lse=lse,
                                       backend='hip', q_descale=ds[0], k_descale=ds[1], v_descale=ds[2])
            extra[f'equal_api_raw_{tag}'] = same(res if lse else (res,), cand)
        stable = True
        for _ in range(repeats):
            stable &= same(fn(_C, dim, t, ds, bshd, lse), cand)
        extra[f'repeat_stable_{tag}'] = stable
    extra['equal_output_lse_vs_nolse'] = same(results['lse'][:1], results['nolse'])
    extra['repeat_bitwise_stable'] = extra.pop('repeat_stable_lse') and extra.pop('repeat_stable_nolse')
    extra['repeats_per_mode'] = repeats
    extra['launches'] = 2 * (repeats + 1)
    extra.update(reference_error(results['lse'][0], results['lse'][1], t, ds, bshd))
    record(phase, case, extra)


# Negative control: single-bit flips must be detected.
_t, _ds = make(128, 1, 8, 8, 256, False, 1)
_ref = call(_C, 128, _t, _ds, False)
_o, _l = _ref[0].clone(), _ref[1].clone()
bits(_o).view(-1)[12345] ^= 1
bits(_l).view(-1)[77] ^= 1
assert same(_ref, (_ref[0].clone(), _ref[1].clone()))
assert not same(_ref, (_o, _ref[1])) and not same(_ref, (_ref[0], _l))
meta['negative_control'] = 'single-bit flips in output and LSE detected'

heads = [(8, 8), (8, 4), (8, 2), (12, 4), (16, 2)]   # MHA, GQA2 pair, GQA4 pair, GQA3 non-pair, GQA8 pair
phases = args.phases.split(',')
t0 = time.time()
if 'kernel' in phases:
    for dim in (128, 192):
        for Hq, Hkv in heads:
            for S in (256, 512, 768, 1024, 2048):
                for bshd in (False, True):
                    run_case('kernel', dim, 1, Hq, Hkv, S, bshd, 1000 + S, False, args.repeats, grow=(S == 1024))
    print(f'kernel phase done {time.time() - t0:.1f}s', flush=True)
if 'persistent' in phases:
    shapes = [(16, 64, 64, 256), (16, 64, 16, 256), (8, 32, 8, 768), (4, 48, 16, 512), (2, 64, 8, 2048),
              (2, 8, 8, 8192),
              # multi-pass: two passes per job and several jobs per workgroup; odd num_q gives self-paired jobs
              (4, 64, 64, 2048), (4, 64, 16, 2048), (8, 64, 64, 768), (8, 64, 16, 1280), (6, 48, 16, 1280),
              (3, 40, 8, 3328)]
    for dim in (128, 192):
        for B, Hq, Hkv, S in shapes:
            for bshd in (False, True):
                run_case('persistent', dim, B, Hq, Hkv, S, bshd, 7 + B * S, False, args.repeats,
                         grow=(S == 1280))
    print(f'persistent phase done {time.time() - t0:.1f}s', flush=True)
if 'padded' in phases:
    lengths = (1, 2, 3, 31, 32, 33, 63, 64, 65, 127, 128, 129, 191, 192, 193, 255, 257, 300, 383, 385, 511, 513,
               640, 700, 769, 1000, 1025, 1500)
    for dim in (128, 192):
        for Hq, Hkv in ((8, 8), (8, 2), (12, 4)):
            for S in lengths:
                for bshd in (False, True):
                    run_case('padded', dim, 1, Hq, Hkv, S, bshd, 500 + S, True, args.repeats, api=True)
    print(f'padded phase done {time.time() - t0:.1f}s', flush=True)
if 'diagonal' in phases:
    lengths = sorted({x for m in range(32, 1057, 32) for x in (m - 1, m, m + 1)})
    for dim in (128, 192):
        for Hq, Hkv in ((8, 8), (8, 2), (12, 4)):
            for i, S in enumerate(lengths):
                run_case('diagonal', dim, 1, Hq, Hkv, S, bool(i % 2), 3000 + S, True, args.diag_repeats,
                         grow=(i % 5 == 0), api=(i % 7 == 0))
    print(f'diagonal phase done {time.time() - t0:.1f}s', flush=True)
if 'stress' in phases:
    side = torch.cuda.Stream()
    big = torch.empty(2**28, dtype=torch.float32, device='cuda')
    sink = torch.empty_like(big)
    rng = random.Random(1234)
    shapes = [(128, 1, 8, 2, 256, False), (128, 1, 8, 8, 256, True), (128, 1, 12, 4, 768, False),
              (128, 16, 64, 16, 256, True), (128, 1, 8, 2, 385, True), (128, 1, 8, 8, 129, False),
              (128, 8, 64, 16, 1280, False),
              (192, 1, 8, 2, 256, False), (192, 1, 8, 8, 512, True), (192, 1, 12, 4, 768, False),
              (192, 16, 64, 16, 256, True), (192, 1, 8, 2, 385, True), (192, 1, 8, 8, 129, False),
              (192, 8, 64, 16, 1280, False)]
    owning = next(iter(refs.values()))
    for dim, B, Hq, Hkv, S, bshd in shapes:
        padded = S % 256 != 0
        fn = call_padded if padded else call
        case = {'dim': dim, 'B': B, 'Hq': Hq, 'Hkv': Hkv, 'S': S, 'layout': 'bshd' if bshd else 'bhsd'}
        t, ds = make(dim, B, Hq, Hkv, S, bshd, seed=99)
        expected = {lse: fn(owning, dim, t, ds, bshd, lse) for lse in (True, False)}
        torch.cuda.synchronize()
        mismatch = {'quiet': 0, 'hammer': 0}
        for i in range(args.stress_iters):
            mode = 'hammer' if i % 2 else 'quiet'
            lse = (i // 2) % 2 == 0
            if mode == 'hammer':
                n = rng.choice((2**22, 2**24, 2**26, 2**28))
                with torch.cuda.stream(side):
                    sink[:n].copy_(big[:n])
            got = fn(_C, dim, t, ds, bshd, lse)
            torch.cuda.synchronize()
            mismatch[mode] += not same(got, expected[lse])
        err = reference_error(expected[True][0], expected[True][1], t, ds, bshd)
        record('stress-fixed', case, {'launches': args.stress_iters, 'mismatches': sum(mismatch.values()),
                                      'mismatches_quiet': mismatch['quiet'], 'mismatches_hammer': mismatch['hammer'],
                                      **err})
        bad, worst = 0, 0.0
        for s in range(args.seeds):
            t, ds = make(dim, B, Hq, Hkv, S, bshd, seed=20000 + s, grow=bool(s % 3 == 0))
            lse = s % 4 < 2
            if s % 2:
                with torch.cuda.stream(side):
                    sink.copy_(big)
            got = fn(_C, dim, t, ds, bshd, lse)
            for module in refs.values():
                bad += not same(fn(module, dim, t, ds, bshd, lse), got)
            torch.cuda.synchronize()
            if lse:
                worst = max(worst, reference_error(got[0], got[1], t, ds, bshd)['rel_rms'])
        record('stress-seeds', case, {'launches': args.seeds, 'mismatches': bad, 'rel_rms': worst})
    print(f'stress phase done {time.time() - t0:.1f}s', flush=True)

meta['end'] = time.strftime('%Y-%m-%dT%H:%M:%S')
meta['elapsed_s'] = time.time() - t0
fields = []
for r in rows:
    fields += [k for k in r if k not in fields]
with (args.output / 'tail-race.csv').open('w') as f:
    w = csv.DictWriter(f, fieldnames=fields, lineterminator='\n')
    w.writeheader()
    w.writerows(rows)
summary = {'meta': meta, 'cases': len(rows), 'failures': len(failures),
           'by_phase': {p: {'cases': sum(r['phase'] == p for r in rows),
                            'pass': sum(r['phase'] == p and r['pass'] for r in rows)}
                        for p in sorted({r['phase'] for r in rows})},
           'all_equal_checks_true': all(v for r in rows for k, v in r.items() if k.startswith('equal_')),
           'equal_checks': sorted({k for r in rows for k in r if k.startswith('equal_')}),
           'repeat_stable_all': all(r.get('repeat_bitwise_stable', True) for r in rows),
           'total_candidate_launches': sum(r.get('launches', 0) for r in rows),
           'lengths_covered': sorted({r['S'] for r in rows}),
           'max_rel_rms': max(r.get('rel_rms', 0) for r in rows),
           'max_abs_err': max(r.get('max_abs_err', 0) for r in rows),
           'max_lse_abs_err': max(r.get('lse_max_abs_err', 0) for r in rows),
           'failure_rows': failures}
(args.output / 'tail-race-summary.json').write_text(json.dumps(summary, indent=2) + '\n')
print(json.dumps({k: v for k, v in summary.items() if k not in ('failure_rows', 'lengths_covered')}, indent=1))
print('FAILURES', len(failures))
sys.exit(1 if failures else 0)
