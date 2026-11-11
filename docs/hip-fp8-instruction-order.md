# HIP FP8 assembly instruction order

Current LLVM results are in [LLVM FP8 ISA matching](hip-fp8-isa-match.md).
The measurements below record the earlier ROCm scheduling experiment.

The native HIP steady loop follows the assembly backend's schedule for both
head dimensions. Each of the four unrolled stages ends with an explicit
`__builtin_amdgcn_sched_barrier(0)`. These are compiler scheduling fences;
the eight hardware `s_barrier` instructions per four-stage iteration remain.

`csrc/fp8_native.hip::FP8_STEADY_MM` spells out the row-sum MFMAs, QK MFMAs,
PV MFMAs, LDS fragment refills, DMA loads, and score reductions in the order
used by `csrc/asm/d128.py::seg_mm` and `csrc/asm/d192.py::seg_mm`.
The source fragment ring has five entries for d128 and six for d192.
LLVM chooses their physical registers. The block tiling, four K/V LDS slots,
512 threads, and staggered SM/MM wave phases are preserved.

| Steady-stage operation | d128 | d192 |
| --- | --- | --- |
| MFMA issue sequence | 2 RS, 8 QK, 8 PV | 1 RS, 6 QK, 4 PV |
| K DMA slots (zero-based MFMA index) | 4, 5 | 2, 3 |
| V DMA slots | 6, 7 | 4 |
| Finalized-score max chains | 7, 8, 9, 10 | 6, 7 |
| Initial K fragments read in SM | 2 | 4 |
| K LDS / V LDS / output staging | 64 / 64 / 32 KiB | 64 / 32 / 32 KiB |

The score reductions run under later MFMAs after each score tile's final QK.
The d192 score scale/bias FMAs occur in MM after its final PV, before the next
SM's exp2/conversion. The existing masked-tail helpers remain separately
predicated; exact slot-order assertions cover the four unmasked steady stages.

`llvm.fake.use` anchors keep each computed value at its source schedule point.
It emits no machine instruction. Scalar FP32 anchors pass integer bitcasts,
which avoid C++ variadic promotion to double. Scheduler fences also preserve
the order of the individual transpose byte reads. No instruction inline
assembly or physical-register declarations were added.

## Generated ISA and compiler limits

The code-generation tests compile the actual HIP source with ROCm 7.2.3 for
gfx950 and verify each stage's MFMA order, K/V DMA issue slots, score max chains,
fragment refill order, two hardware barriers, and explicit closing scheduling
fence. They also reject float-to-double conversions introduced by anchors.
A negative-control compile removing the four explicit stage fences fails
both stage-boundary checks.

The current steady loops have no scratch instructions. Both compiled kernels
still reserve scratch for startup, tails, and output. Their resources are:

| Resource | HIP d128 | HIP d192 | Assembly d128 / d192 |
| --- | ---: | ---: | ---: |
| VGPRs | 256 | 256 | 256 / 256 |
| SGPRs | 106 | 106 | 102 / 102 |
| Scratch bytes per lane | 428 | 224 | 0 / 0 |
| Dynamic LDS bytes per block | 163840 | 131072 | 163840 / 131072 |
| Steady-loop scratch instructions | 0 | 0 | 0 / 0 |
| Full VMEM waits per four-stage iteration | 12 | 8 | 0 / 0 |

The main operation order matches the assembly schedule. The complete ISA is
still different: LLVM inserts conservative `s_waitcnt vmcnt(0)` between
raw-buffer-to-LDS copies and subsequent LDS reads, even when they access
separate ring slots. The assembly schedule handles those known disjoint
addresses without these waits. LLVM also chooses different partial LDS waits,
latency padding, scalar versus packed FMAs, and register assignments. Some
d192 score FMAs use scalar instructions where the assembly uses packed FMAs.
Both score tiles now finish their scale/bias preparation before the optional
rescale branch; this emitted order has its own regression test.

## Validation and timing

The extension built successfully with ROCm 7.2.3. All **225 tests passed**,
including all 13 code-generation checks and the two-GPU validation. The
24-case benchmark also completed, and every case passed its sampled FP64
reference check (maximum relative RMS 0.00616).

GPU timings use 500 warmups, 100 profiled launches per sample, and three
alternating assembly/HIP samples. Each row uses identical quantized inputs,
descales, stream, device and timing method for its assembly and new HIP result.
The previous HIP column is from the earlier saved benchmark run, so the
new/previous comparison includes variation between runs.

At 32K tokens, the new HIP/assembly ratio is **1.608–1.767 for d128** and
**1.536–1.748 for d192**. The earlier schedule was approximately 1.28–1.29 and
1.08, respectively. Matching the operation order has regressed performance;
the conservative LLVM DMA waits are a visible scheduling difference to address
in subsequent tuning. The explicit stage fences and assembly-order experiment
are retained as requested.

| D | GQA ratio | Tokens | Assembly µs | Previous HIP µs | New HIP µs | New HIP / assembly |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 128 | 1 | 1024 | 54.33 | 165.45 | 186.19 | 3.427 |
| 128 | 1 | 2048 | 87.75 | 193.09 | 219.41 | 2.501 |
| 128 | 1 | 4096 | 147.64 | 267.49 | 316.34 | 2.143 |
| 128 | 1 | 8192 | 275.68 | 409.03 | 503.60 | 1.827 |
| 128 | 1 | 16384 | 1077.66 | 1424.50 | 1918.77 | 1.781 |
| 128 | 1 | 32768 | 4134.07 | 5237.47 | 7302.98 | 1.767 |
| 128 | 4 | 1024 | 66.11 | 179.85 | 242.42 | 3.667 |
| 128 | 4 | 2048 | 95.18 | 205.38 | 275.16 | 2.891 |
| 128 | 4 | 4096 | 169.77 | 294.81 | 339.19 | 1.998 |
| 128 | 4 | 8192 | 310.56 | 426.09 | 517.57 | 1.667 |
| 128 | 4 | 16384 | 1059.95 | 1447.02 | 1752.85 | 1.654 |
| 128 | 4 | 32768 | 4102.73 | 5280.26 | 6595.87 | 1.608 |
| 192 | 1 | 1024 | 84.42 | 122.17 | 186.56 | 2.210 |
| 192 | 1 | 2048 | 138.87 | 174.33 | 250.89 | 1.807 |
| 192 | 1 | 4096 | 223.33 | 257.56 | 378.06 | 1.693 |
| 192 | 1 | 8192 | 410.32 | 436.42 | 640.87 | 1.562 |
| 192 | 1 | 16384 | 1485.99 | 1643.77 | 2683.17 | 1.806 |
| 192 | 1 | 32768 | 5767.98 | 6219.01 | 10080.46 | 1.748 |
| 192 | 4 | 1024 | 73.40 | 115.91 | 170.00 | 2.316 |
| 192 | 4 | 2048 | 138.25 | 168.16 | 233.81 | 1.691 |
| 192 | 4 | 4096 | 219.92 | 245.21 | 363.03 | 1.651 |
| 192 | 4 | 8192 | 402.04 | 426.11 | 621.01 | 1.545 |
| 192 | 4 | 16384 | 1453.82 | 1585.42 | 2254.73 | 1.551 |
| 192 | 4 | 32768 | 5656.46 | 6068.11 | 8688.24 | 1.536 |

## Artifacts

Final artifacts are saved separately from the prior baseline in
`benchmarks/results/hip_native/instruction_order/`:

- `benchmark.json`, `benchmark.csv`: GPU timings, raw samples, sampled errors, and hashes.
- `comparison.json`, `comparison.csv`: previous HIP timings and per-case comparisons.
- `tests.log`: final 225-test result.
- `assembly/hip_d128/steady-loop.s`, `assembly/hip_d192/steady-loop.s`: generated steady loops.
- `assembly/native.co`, `metadata.txt`, `disassembly.s`, `generated-source.s`: built code object and ISA.
- `assembly/manifest.json`, `loop-counts.json`: hashes, compile command and loop counts.
- `assembly/native-source.hip`, `fp8_native.h`, `rt.h`: source/dependency snapshots.

The two earlier inspection/timing trials are under
`instruction_order_promoted_anchors/` and `instruction_order_bits_first_operand/`.
They contain the diagnostic intermediate results; `instruction_order/` is the
final source and built binary.

The commands below run the current source; the timings above describe the
earlier instruction-order capture.

To rebuild, set `ROCM_PATH`, `ROCM_HOME`, and `HIP_PATH` to the local ROCm install
and set `ZYFA_NATIVE_LLVM_ROOT` to the compatible compiler described in
[LLVM FP8 ISA matching](hip-fp8-isa-match.md), then run
`python setup.py build_ext --inplace`. This machine's ROCm `ld.lld`
also needs its existing `lib/compat` directory in `LD_LIBRARY_PATH` for
`libxml2.so.2`. Run `python -m pytest -q` with `ROCM_PATH` and `ZYFA_LLVM_ROOT` set, then
`python benchmarks/inspect_hip.py --output DIR/assembly` and
`python benchmarks/benchmark_hip.py --output DIR`.
The current inspector extracts the linked native object and saves its
disassembled steady loops; `generated-source.s` belongs to the earlier capture.
