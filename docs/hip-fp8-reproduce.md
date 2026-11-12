# Reproducing the native HIP FP8 results

This page records the compiler and the commands behind the current native HIP
FP8 kernels and their benchmark results. The results themselves are in
[LLVM FP8 ISA matching](hip-fp8-isa-match.md) and
[Native HIP FP8 attention](hip-fp8-performance.md). The capture that matches
this source is
[`rest_gap_20261112`](../benchmarks/results/hip_native/isa_match/rest_gap_20261112/README.md).

## Compiler

The native kernels need a patched LLVM. Stock ROCm or upstream LLVM rejects the
`-mllvm` options that `setup.py` passes, and generates different code.

| | |
| --- | --- |
| Repository | `git@github.com:lijinpei-amd/llvm-project.git` |
| Branch | `2026-11-10-fp8-schedule-match` |
| Commit | `72e518a3f02acb5c50f2dc64d7ad844c4694908b` |
| Base | upstream `llvm/llvm-project` `main` at `3ad61ff817ac` (2026-11-10) |
| Local commits | 26 AMDGPU commits: 13 code changes, 13 test-only precommits |

The code changes, oldest first:

| Commit | Change | Option it adds |
| --- | --- | --- |
| `e5c1bf92d380` | Honor full scheduling barriers when unpacking FP32 operations | — |
| `8a8680f36aa3` | Restrict inline asm destination-forwarding hazards to vector registers | — |
| `5ee669114fb9` | Expand validated single-op inline asm before emission | — |
| `d6697cd3593c` | Account for serialized XDL result windows on gfx950 | — |
| `acaf314460c2` | Optional SCC1 form for unsigned loop guards | `-amdgpu-prefer-scc1-branches` |
| `15e547416b09` | Account for serialized XDL destination overwrite windows | — |
| `8f7d205c4bc5` | Optionally preserve uniform irreducible cycles | `-amdgpu-preserve-uniform-irreducible` |
| `d3a5b41195ff` | Preserve accumulator constraints on scaled MFMA | — |
| `9b086fa081bc` | Shrink late compare and mask pairs using dead VCC | `-amdgpu-shrink-late-compare-mask` |
| `5dae02917821` | Prefer unsigned scalar addition with dead flags | `-amdgpu-prefer-unsigned-add` |
| `f4de4bc38b99` | Optionally canonicalize signed scalar upper bounds | `-amdgpu-prefer-ge-scalar-bounds` |
| `72e518a3f02a` | Use SCC branches for uniform truncates to i1 | — |

- `setup.py` also passes `-disable-machine-licm`. That is a stock LLVM option.
- None of the side branches from this work are needed: MachineLICM loop
  metadata, `-amdgpu-early-machinelicm-before-fold`, and copy-origin
  instrumentation.

### Building the compiler

`setup.py` runs `$ZYFA_NATIVE_LLVM_ROOT/build/bin/clang++`. The test suite runs
`clang++` and `llc` from `$ZYFA_LLVM_ROOT/build/bin`. Both variables point at
the LLVM checkout, with its build in `build/`.

```sh
git clone --branch 2026-11-10-fp8-schedule-match \
  git@github.com:lijinpei-amd/llvm-project.git
cd llvm-project
cmake -G Ninja -S llvm -B build \
  -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_ASSERTIONS=ON \
  -DLLVM_ENABLE_PROJECTS="clang;lld" -DLLVM_TARGETS_TO_BUILD="AMDGPU;X86" \
  -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++
ninja -C build
```

The device build needs the full tool set: `clang++`, `clang-linker-wrapper`,
`ld.lld` and the clang resource headers. The tests also use `llc`, so build all
default targets. `inspect_hip.py` uses ROCm's own LLVM tools (`$ROCM_PATH/llvm/bin`)
only to disassemble the kernels.

The recorded results were built with a Debug + assertions build of the same
commit: shared libraries, every target, plus mlir. A Release + assertions build
with the configuration above produced byte-identical kernel code.

## Environment

These are the settings on the recorded machine:
- one MI350X (gfx950, 256 CUs);
- ROCm 7.2.3, installed at `~/.local/opt/rocm-7.2.3`;
- PyTorch 2.14.1+rocm7.2, in the venv `~/venv/01`.

`build/env.sh` is gitignored, so create it:

```sh
export ROCM_PATH=/home/jinpli/workspace/home/jinpli/.local/opt/rocm-7.2.3
export LD_LIBRARY_PATH="$ROCM_PATH/lib/compat${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
export PATH="/home/jinpli/workspace/home/jinpli/venv/01/bin:$ROCM_PATH/bin:$PATH"
export MAX_JOBS="${MAX_JOBS:-8}"
```

Every command below assumes:

```sh
source build/env.sh
export ROCM_HOME="$ROCM_PATH" HIP_PATH="$ROCM_PATH"
export ZYFA_NATIVE_LLVM_ROOT=/path/to/llvm-project   # the checkout above
export ZYFA_LLVM_ROOT="$ZYFA_NATIVE_LLVM_ROOT"
# Directory containing amdgpu.ids:
export AMDGPU_ASIC_ID_TABLE_PATHS=/home/jinpli/workspace/home/jinpli/venv/01/lib/python3.14/site-packages/torch/share/libdrm
```

**GPU access.** The user must be in the group that owns `/dev/kfd` (GID 993 on
the recorded machine), or run the commands in a subprocess that has that group,
with the environment above set inside it.

## Build options

`ZYFA_FP8_STRICT_ISA` controls how the kernels' wave-mask selects
(`select_wave_mask`) are written:

| Value | Selects written as | Effect |
| --- | --- | --- |
| `1` (default) | one inline-asm `v_cndmask_b32_e64` each | The strict steady loops match the assembly's instruction sequence exactly. Every result recorded here uses this setting. |
| `0` | `__builtin_amdgcn_inverse_ballot_w64` and a select | 0.2–1.1% faster in the measured shapes. The strict loops no longer match exactly, the whole-kernel mnemonic distance grows (positive excess 248/190 → 347/249, L1 834/671 → 1189/867), and SGPRs rise to 93/94. Outputs are bitwise-identical. |

Set it in the environment when building, for example
`ZYFA_FP8_STRICT_ISA=0 python setup.py build_ext --inplace`. `setup.py` passes
it to the native compile as `-DZYFA_FP8_STRICT_ISA`. The codegen tests compile
with the default.

## Build, check and test

```sh
python setup.py build_ext --inplace
python benchmarks/inspect_hip.py --output /tmp/zyfa-inspect
python benchmarks/results/hip_native/isa_match/rest_gap_20261112/verify-integrated.py
python -m pytest -q tests
```

**Checking the build matches.**
- `inspect_hip.py` writes the linked kernel's disassembly and metadata.
- The archived capture's `verify-integrated.py` checks the build against the
  recorded one. It needs that capture's saved baseline extension under
  `build/`, and it asserts the source hash. Use it on the recorded commit only.
- To check a fresh build by hand, compare the kernel `.text` section:
  `llvm-objcopy -O binary --only-section=.text native.co`.
- The recorded `.text` SHA-256 for the current kernels begins `179a935c`.

**Test suite.** The full suite gave 314 passed and 2 skipped with two GPUs
visible. With one GPU visible, the two-GPU test is skipped as well.

## Benchmarks

### Timing protocol

The scripts time GPU kernel durations with the PyTorch profiler. They exclude
host launch overhead and job-table setup, and don't force clocks.

Other jobs on the same GPU group shift timings by several percent. Before
timing:
- check `amd-smi metric -u` (or `rocm-smi`) for idle GPUs;
- set `HIP_VISIBLE_DEVICES`;
- discard runs that overlapped another tenant's activity.

The recorded results used a guard that runs only on an idle GPU group, logs
activity every second, and retries contaminated runs:
`benchmarks/results/hip_native/isa_match/short_gap_20261112/scripts/guarded.py`.

HIP device numbers don't follow `amd-smi`'s order. Map them by PCI bus ID.

### Short and medium lengths (256, 1024, 8192), HIP against assembly

This is the "README protocol". It produced the HIP/assembly ratios in the
current tables.

```sh
python benchmarks/results/hip_native/isa_match/runtime_add3_20261111/benchmark-before-after.py \
  --baseline-extension BASELINE.so --output DIR
```

**What it runs.**
- One process times the baseline extension's HIP kernel, the current
  extension's HIP kernel, and the assembly kernel.
- Settings: BSHD, causal, output and LSE, d128 and d192, MHA and GQA4, lengths
  256 / 1024 / 8192.
- Each case gets 200 warmup and 100 timed calls, over 5 repeats with
  alternating order.
- The script checks that before and after outputs are bitwise-equal.

**Reading the results.**
- HIP/assembly is `after_us / asm_us` from `DIR/benchmark.json`.
- The recorded tables pool 5 or more clean runs and take the median of the
  per-repeat ratios.

**The baseline extension.** Any extension built from an earlier commit works;
it only affects the before/after columns. To reproduce a capture's before/after
deltas, build the baseline from that capture's base commit, named in its
README.

**Process context.** Load one or two extension builds per process. In
processes that loaded three or more, the short-shape timings didn't reproduce.

### Long lengths (1K–32K), HIP against assembly

```sh
python benchmarks/benchmark_hip.py --warmup 500 --iters 100 --repeats 3 --output DIR
```

- **Cases:** 24, covering d128 and d192, MHA and GQA4, and lengths 1K–32K.
- **Settings:** BSHD, causal, output without LSE, heads = max(32, 262144 / S).
- **Output:** `DIR/benchmark.csv` has `hip_over_assembly` for each case.
- **Noise:** at 1K–4K this protocol varied by 10–35% within a case on the
  shared machine. Quote short lengths from the README protocol instead.

### Steady-loop cycles (ATT)

ATT steady-loop cycles came from `rocprofv3 --att` captures on SE 0 / CU 1.

- **Profiler:** `rocprofv3` 7.2.3 from `~/.local/opt/rocprofiler-7.2.3`.
- **Launch script:** `att/run_case.sh` in
  [`copies_20261112`](../benchmarks/results/hip_native/isa_match/copies_20261112/README.md).
  It preloads the profiler's HIP and HSA libraries, which would otherwise clash
  with torch's bundled copies.
- **Analysis:** `loop_cycles.py` and `loop_align.py` in the same directory.
- **Settings and per-region analysis:** in each capture's README and
  investigation report.
