"""Compare native HIP and assembly FP8 attention with GPU kernel timings.

Run from a built checkout with --output DIR. JSON and CSV contain per-case
medians, raw timing samples, sampled FP64 errors, and source/binary hashes.
"""

import argparse
import csv
import hashlib
import json
import math
import os
from pathlib import Path
import statistics
import subprocess
import time

os.environ.setdefault("KINETO_LOG_LEVEL", "5")

import torch
from torch.profiler import ProfilerActivity, profile

import zyfa
from zyfa import _C


def kernel_time(fn, warmup, iters):
    """Return mean GPU kernel time in microseconds and recorded kernel names."""
    for _ in range(warmup):
        fn()
    torch.cuda.synchronize()
    with profile(activities=[ProfilerActivity.CUDA]) as prof:
        for _ in range(iters):
            fn()
        torch.cuda.synchronize()
    events = [e for e in prof.key_averages() if e.device_type.name in ("CUDA", "HIP")]
    us = sum(e.device_time_total for e in events) / iters
    if us <= 0:
        raise RuntimeError("profiler recorded no GPU kernel time")
    return us, [e.key for e in events]


def correctness(output, tensors, descales):
    """Check sampled rows/heads against FP64 attention and return relative RMS."""
    q, k, v = tensors
    s, h = q.shape[1:3]
    positions = sorted(set([0, 31, 32, 127, 128, s // 2, s - 1]))
    positions = [p for p in positions if p < s]
    heads = sorted(set([0, h // 2, h - 1]))
    group = h // k.shape[2]
    qd = q[:, positions][:, :, heads].double().transpose(1, 2) * descales[0]
    kd = k[:, :, [i // group for i in heads]].double().transpose(1, 2) * descales[1]
    vd = v[:, :, [i // group for i in heads]].double().transpose(1, 2) * descales[2]
    scores = qd @ kd.transpose(-1, -2) / math.sqrt(q.shape[-1])
    mask = torch.arange(s, device="cuda")[None, :] > torch.tensor(positions, device="cuda")[:, None]
    scores.masked_fill_(mask, -math.inf)
    expected = (scores.softmax(-1) @ vd).transpose(1, 2)
    actual = output[:, positions][:, :, heads].double()
    rms = ((actual - expected).square().mean() / expected.square().mean()).sqrt().item()
    finite = bool(output.isfinite().all().item())
    if not finite or rms >= 0.05:
        raise RuntimeError(f"native correctness failed: {finite=}, {rms=}")
    return rms


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--dims", type=int, nargs="+", default=[128, 192])
    parser.add_argument("--groups", type=int, nargs="+", default=[1, 4])
    parser.add_argument("--seqlens", type=int, nargs="+", default=[1024, 2048, 4096, 8192, 16384, 32768])
    parser.add_argument("--warmup", type=int, default=500)
    parser.add_argument("--iters", type=int, default=100)
    parser.add_argument("--repeats", type=int, default=3)
    parser.add_argument("--cooldown", type=float, default=0)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    with profile(activities=[ProfilerActivity.CUDA]):
        torch.ones(1, device="cuda").add_(1)
        torch.cuda.synchronize()
    root = Path(__file__).resolve().parents[1]
    properties = torch.cuda.get_device_properties(torch.cuda.current_device())
    report = {"gpu": torch.cuda.get_device_name(), "torch": torch.__version__, "hip": torch.version.hip,
              "architecture": properties.gcnArchName, "compute_units": properties.multi_processor_count,
              "device": torch.cuda.current_device(),
              "git_commit": subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=root, text=True).strip(),
              "native_source_sha256": hashlib.sha256((root / "csrc/fp8_native.hip").read_bytes()).hexdigest(),
              "extension_sha256": hashlib.sha256(Path(_C.__file__).read_bytes()).hexdigest(),
              "protocol": {"warmup": args.warmup, "iters": args.iters, "repeats": args.repeats,
                           "cooldown": args.cooldown, "seed": 29, "std": 0.1, "layout": "bshd"}, "cases": []}
    print(" dim group      S heads    asm_us    hip_us hip/asm  rel_rms", flush=True)
    for dim in args.dims:
        for group in args.groups:
            for s in args.seqlens:
                torch.manual_seed(29)
                heads = max(32, 262144 // s)
                source = [torch.randn(1, s, h, d, device="cuda", dtype=torch.bfloat16) * 0.1
                          for h, d in ((heads, dim), (heads // group, dim), (heads // group, 128))]
                quantized = [zyfa.fp8_quantize(x) for x in source]
                tensors, descales = [x[0] for x in quantized], [x[1] for x in quantized]
                asm = getattr(_C, f"fp8_d{dim}")
                hip = getattr(_C, f"fp8_d{dim}_hip")
                kwargs = (1 / math.sqrt(dim), True, False, True, 1.0, *descales)
                functions = {"assembly": lambda: asm(*tensors, *kwargs)[0],
                             "hip": lambda: hip(*tensors, *kwargs)[0]}
                rms = correctness(functions["hip"](), tensors, descales)
                times = {"assembly": [], "hip": []}
                names = {}
                for repeat in range(args.repeats):
                    order = ("assembly", "hip") if repeat % 2 == 0 else ("hip", "assembly")
                    for name in order:
                        if args.cooldown and s >= 16384:
                            torch.cuda.synchronize()
                            time.sleep(args.cooldown)
                        us, names[name] = kernel_time(functions[name], args.warmup, args.iters)
                        times[name].append(us)
                medians = {name: statistics.median(values) for name, values in times.items()}
                case = {"dim": dim, "group": group, "seqlen": s, "heads": heads,
                        "assembly_us": medians["assembly"], "hip_us": medians["hip"],
                        "hip_over_assembly": medians["hip"] / medians["assembly"], "relative_rms": rms,
                        "samples_us": times, "kernel_names": names}
                report["cases"].append(case)
                (args.output / "benchmark.json").write_text(json.dumps(report, indent=2) + "\n")
                print(f"{dim:4} {group:5} {s:6} {heads:5} {case['assembly_us']:9.2f} "
                      f"{case['hip_us']:9.2f} {case['hip_over_assembly']:7.3f} {rms:8.5f}", flush=True)
                del source, quantized, tensors, descales
    fields = ["dim", "group", "seqlen", "heads", "assembly_us", "hip_us", "hip_over_assembly", "relative_rms"]
    with (args.output / "benchmark.csv").open("w") as f:
        writer = csv.DictWriter(f, fieldnames=fields, extrasaction="ignore")
        writer.writeheader()
        writer.writerows(report["cases"])


if __name__ == "__main__":
    main()
