# Reproducing the native HIP FP8 results

This page records the compiler and the commands behind the current native HIP
FP8 kernels and their benchmark results. The results themselves are in
[LLVM FP8 ISA matching](hip-fp8-isa-match.md) and
[Native HIP FP8 attention](hip-fp8-performance.md). The capture that matches
this source is
[`rest_gap_20261112`](../benchmarks/results/hip_native/isa_match/rest_gap_20261112/README.md)
for the strict build, and
[`dma_fill_licm_20261113`](../benchmarks/results/hip_native/isa_match/dma_fill_licm_20261113/README.md)
for the non-strict build.

## Compiler

The native kernels need a patched LLVM. Stock ROCm or upstream LLVM rejects the
`-mllvm` options that `setup.py` passes, and generates different code.

| | |
| --- | --- |
| Repository | `git@github.com:lijinpei-amd/llvm-project.git` |
| Branch | `2026-11-13-mlicm-rp-av-sreg` |
| Commit | `6eff2d896a12b73a3bb4b317ee6ef1ffa2579a67` |
| Base | upstream `llvm/llvm-project` `main` at `3ad61ff817ac` (2026-11-10) |
| Local commits | 39: the 26 of `2026-11-10-fp8-schedule-match` (`72e518a3f02a`), then 13 for MachineLICM and inline asm |

**Which build needs which commit.**
- The strict build (the default) needs only `72e518a3f02a`, the head of
  `2026-11-10-fp8-schedule-match`. With `6eff2d896a12` its kernel code is
  byte-identical (`.text` `179a935c`), so the strict results recorded before
  2026-11-13 hold for either.
- The non-strict build (`ZYFA_FP8_STRICT_ISA=0`) needs `6eff2d896a12`.
  `setup.py` passes it `-machinelicm-real-pressure`, which older compilers
  reject.

The first 26 commits are 12 code changes and 14 test-only commits (13
precommits, 1 check refresh). The code changes, oldest first:

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

The 13 commits after it are 8 code changes and 5 test precommits. The code
changes, oldest first:

| Commit | Change | Option it adds |
| --- | --- | --- |
| `14d21d46628b` | MachineLICM: decide hoisting on real register pressure | `-machinelicm-real-pressure` |
| `7b103ab26cb6` | AMDGPU: give that model the scheduler's occupancy limits | — |
| `2c650de2b8c3` | MachineLICM: skip rematerializable values in the real-pressure model (NFC) | — |
| `4d7d693278d2` | clang-format the real-pressure changes (NFC) | — |
| `e14f8d836257` | AMDGPU: count AV register classes in the VGPR pressure set | — |
| `cc3c59c140d0` | MachineLICM: drop the real-pressure fallback for classes in no pressure set (NFC) | — |
| `ef204770dd44` | AMDGPU: don't subtract reserved registers twice from the SGPR pressure limit | — |
| `6eff2d896a12` | AMDGPU: expand single-op `s_mul_i32` and `s_lshl_b32` inline asm | — |

- MachineLICM options in `setup.py`: the strict build passes the stock
  `-disable-machine-licm`; the non-strict build passes
  `-machinelicm-real-pressure` instead.
- [hip-fp8-workarounds.md](hip-fp8-workarounds.md) tracks every patch, flag and
  inline-asm workaround, and its removal status.
- None of the side branches from this work are needed: MachineLICM loop
  metadata, `-amdgpu-early-machinelicm-before-fold`, and copy-origin
  instrumentation.

### Building the compiler

`setup.py` runs `$ZYFA_NATIVE_LLVM_ROOT/build/bin/clang++`. The test suite runs
`clang++` and `llc` from `$ZYFA_LLVM_ROOT/build/bin`. Both variables point at
the LLVM checkout, with its build in `build/`.

```sh
git clone --branch 2026-11-13-mlicm-rp-av-sreg \
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

The strict results recorded up to 2026-11-12 were built with a Debug +
assertions build of `72e518a3f02a`: shared libraries, every target, plus mlir.
A Release + assertions build with the configuration above produced
byte-identical kernel code. The non-strict results of 2026-11-13 used a
Release + assertions build of `6eff2d896a12`.

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

`ZYFA_FP8_STRICT_ISA` chooses between matching the assembly exactly and a
slightly faster build:

| | Strict, `1` (default) | Non-strict, `0` |
| --- | --- | --- |
| Wave-mask selects (`select_wave_mask`) | one inline-asm `v_cndmask_b32_e64` each | `__builtin_amdgcn_inverse_ballot_w64` and a select |
| Kernels per head dimension | one, `attend<D>` | two: `attend<D, true>` and `attend<D, false>` |
| MachineLICM (`setup.py`) | off, `-disable-machine-licm` | on, `-machinelicm-real-pressure` |
| M0 hazard-slot fills, `ZYFA_FP8_DMA_FILL` | 0 (a nonzero value is an error) | 7 |
| Compiler | `72e518a3f02a` or later | `6eff2d896a12` |
| `.text` SHA-256 begins | `179a935c` | `49f56326` |

**Strict (`1`).** The strict steady loops match the assembly's instruction
sequence exactly. Every result recorded before 2026-11-13 uses this setting.

**Non-strict (`0`).** Outputs are bitwise-identical to the strict build. Over
the 12 README-protocol cases it is 0.66% faster than the strict build on
average and faster in every case; HIP/assembly is 0.968–1.002
([`dma_fill_licm_20261113`](../benchmarks/results/hip_native/isa_match/dma_fill_licm_20261113/README.md)).
The steady loops are 1317/813 instructions against the assembly's 1333/825:
16/12 fewer `s_nop`, and 4 selects in the e32 encoding. Whole-kernel positive
excess is 348/248 and L1 1228/920 (general kernel). SGPRs are 100/101, VGPRs
244/216, and nothing spills. Its parts:
- **Selects.** On their own 0.2–1.1% faster in the measured shapes. LLVM
  groups a block's compares ahead of its selects, so the VCC hazard `s_nop`s
  go, but the loops no longer match exactly and SGPRs rise to 93/94.
- **Descale specialization.** The launcher runs `attend<D, true>` when q, k
  and v descales are all passed as tensors, as the benchmarks do, and the
  general `attend<D, false>` for any other combination. Python float descales
  are applied on the host, so they count as missing. The choice depends only
  on which pointers are set, so CUDA graph replays stay valid.
  - `attend<D, true>` loads the three descales with no null checks and no
    `s_mov_b32 1.0`. That is 14 fewer instructions (5 compares, 6 branches,
    3 moves), and the three `s_load_dword`s issue back to back. The assembly
    keeps its null checks, so removing them lowers the positive excess
    (342/242) but adds to L1 (1231/923).
  - `attend<D, false>` uses a plain `1.0f` for a missing descale, so it has no
    inline asm there. InstCombine then folds the descale multiply into a
    branch again, which costs `s_waitcnt` +2 and `s_mov_b32` −1 in the
    prologue. This kernel runs only when a descale is missing.
  - Timing: within ±0.25% of the unspecialized non-strict build in every
    case, with mixed signs, so no measurable gain.
  - Costs: the code object holds four kernels instead of two (`.text` 54 → 109
    KB), and the native compile takes longer.
- **MachineLICM with real register pressure.** MachineLICM's default model
  undercounts the pressure already live in the loop, which is why the strict
  build turns it off. With `-machinelicm-real-pressure` it hoists only while
  the loop's live SGPR and VGPR pressure stays under the limits the scheduler
  uses for the kernel's occupancy. Nothing spills; the hoisted values take
  the free SGPRs. On its own it was 0.12% slower than the earlier non-strict
  build (0.5% at d192 L256).
- **M0 hazard-slot fills.** An LDS DMA reads M0 one wait state after the SALU
  write before it, and LLVM pads an empty slot with `s_nop 0`. The fills put
  scalar work the kernel already does there. `ZYFA_FP8_DMA_FILL` is a
  bitmask: 1 the steady loop, 2 group 0's whole-tile rounds, 4 the two-chunk
  tile loads of the masked MM and tails. 2 and 4 use `s_mul_i32` /
  `s_lshl_b32` inline asm that only `6eff2d896a12` expands for the hazard
  recognizer. With 7, the M0 `s_nop`s per kernel drop from 57/52 to 21/14.
  Fills and MachineLICM are each neutral to slightly slower alone, and
  together 0.07% faster than the earlier non-strict build.

Set these in the environment when building, for example
`ZYFA_FP8_STRICT_ISA=0 python setup.py build_ext --inplace`. `setup.py` passes
them to the native compile as `-DZYFA_FP8_STRICT_ISA` and
`-DZYFA_FP8_DMA_FILL`; leave `ZYFA_FP8_DMA_FILL` unset for the default. The
codegen tests compile with the defaults (strict).

**Tools on a non-strict build.** `compare_isa.select_function` returns the
general kernel by default (`attend<D>` or `attend<D, false>`), and the
all-descales kernel with `all_descales=True`. `compare_isa.py --all-descales`
compares that kernel. `inspect_hip.py` saves its steady loops under
`hip_d{128,192}_all_descales/`, next to the general kernel's `hip_d{128,192}/`.

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
- The recorded `.text` SHA-256 for the current kernels begins `179a935c`
  (strict) and `49f56326` (`ZYFA_FP8_STRICT_ISA=0`).

**Test suite.** The full suite gave 317 passed and 2 skipped, for both
builds, with two GPUs visible. With one GPU visible, the two-GPU test is
skipped as well. With a Release compiler it takes about 15 s; with the Debug
`72e518a3f02a` build, about 3 minutes.

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
