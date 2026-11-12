# HIP FP8: O-clear placement

The register-copy fixes slowed short shapes by up to 1.8%, because of where
they cleared O. Commit `9cf4ce9` moves the clear to after the pass-start
barrier. The mnemonic histogram is unchanged: all mnemonic counts and the
strict loops match `b73e505` exactly. Outputs are bitwise-identical.

- **Source:** `9cf4ce9` on top of `b73e505`, whose code equals `292d02a`.
- **Compiler and flags:** unchanged. The production LLVM is `72e518a3f02a`,
  with `-disable-machine-licm`.
- **Before:** [`copies_20261112`](../copies_20261112/README.md).

## Cause

`e89fa08` cleared O with 64 inline-asm `v_mov_b32 v, 0`, placed between the
pass-start `s_waitcnt` and group 0's V1/K2/K3 tile loads.

- **Group 0:** its loads, which the pass-start barrier waits for, started
  about 265 cycles later.
- **Group 1:** it carried the clear in its pass-start phase, which the
  ping-pong makes critical in the next barrier interval.
- **What `ac8512a` did:** its SGPR-splat zeroing ran after the barrier, at
  about the same issue cost.
- **Why only short shapes:** at length 256 each block runs several passes, and
  d128 GQA4 alternates 2- and 1-tile passes.

Evidence is in `investigations/short-shape-and-gap.md`:

- **Bisection:** with one build per process, only `e89fa08` regresses:
  +1.78% (d128 GQA4), +1.13% and +0.97% (d192) at L256.
- **ATT per-region breakdown:** the O-clear issue cost (+1060 cycles per wave
  over 4 passes) replaced the post-barrier copies (−940 to −1100). The
  difference came from waits: group 0's load wait and the barriers.

## Fix and alternatives

`9cf4ce9` sets O to an unspecified tile at the pass start, so the previous
pass's O isn't kept live. It leaves group 0's loads and wait unchanged, and
clears O once after `phase_barrier()`, for both groups. Everything after the
clear sits at the same addresses as before. The instructions are the same,
just in a different order.

| | `b73e505` | Two-site variant (C5, not used) | **`9cf4ce9`** |
|---|---|---|---|
| Positive excess / L1 vs assembly, d128 | 259 / 846 | 266 / 793 | **259 / 846** |
| Positive excess / L1 vs assembly, d192 | 204 / 682 | 258 / 723 | **204 / 682** |
| Static O-clear moves | 64 | 128 | 64 |
| Hazard margin before / after the clear, d128 | 102 / – | 108 / 189 | 108 / 185 |
| Hazard margin before / after the clear, d192 | 67 / – | 73 / 121 | 75 / 115 |

- **C5:** cleared group 0's O under its loads and group 1's after the barrier.
  That was 0.2–0.7% faster than `9cf4ce9` on d128, but it added 64 static
  moves and a branch, which worsened d192's count match.
- **Rejected:** clearing inside the first QK, which failed the hazard test,
  and a variant that spilled 45 VGPRs.

`verify-integrated.py` asserts:

- the mnemonic histogram is identical to the preceding capture;
- strict loops are exact;
- loop copies are at or below the assembly's (8/4 vs 12/12);
- resources are unchanged: VGPR/SGPR 244/77 and 206/79, no spills, no scratch;
- the nearest overlapping MFMA before the clear is more than 19 wait states
  away;
- the build matches the GPU-validated object byte for byte (`tasks/`).

The hazard window is about 19 wait states; the forward check is
`timing/fwd_hazard.py`.

## Runtime validation

**Project tests.** 314 passed and 2 were skipped on the rebuilt main-tree
extension (`project-tests.log`). The validation build gave the same result
with two GPUs visible.

**Correctness** (`runtime/tail-race-long/`):

- **Volume:** 1,134 cases and 798,316 launches, zero failures.
- **Bitwise equal to:** `b73e505`, the C5 variant, `ac8512a` and `4dd38ce`,
  with LSE on and off.
- **Pass-start coverage:** 28 O-clear shapes (GQA2/3/4/8, 1–2 tile passes,
  odd blocks), 5,600 fresh-seed launches under concurrent memory-copy load.

**Timing** (`timing/variant-readme/`). README protocol, five clean guarded
runs, paired per-repeat change, outputs bitwise-equal:

| Case | vs `b73e505` | Runs faster | HIP/assembly |
|---|---:|---:|---:|
| d128 MHA 256 / 1024 / 8192 | +0.13 / −0.36 / −0.18% | 0 / 4 / 4 | 1.070 / 1.059 / 1.010 |
| d128 GQA4 256 / 1024 / 8192 | −1.44 / −0.79 / −0.30% | 5 / 5 / 4 | 1.050 / 1.062 / 1.013 |
| d192 MHA 256 / 1024 / 8192 | −1.28 / −0.62 / −0.20% | 5 / 4 / 4 | 1.107 / 1.050 / 1.007 |
| d192 GQA4 256 / 1024 / 8192 | −1.19 / −0.54 / +0.23% | 5 / 4 / 2 | 1.085 / 1.043 / 1.008 |

Long sequences were measured on `292d02a` code (`timing/gap-long.md`); the
fix touches only the pass start. At 16K/32K, HIP is within 0.4–0.9% of the
assembly kernels, against 1.08–1.29× in the old documented comparison. The
remaining gap is at short lengths, outside the steady loop.

## Caveats

- **Hazards:** the clear is inline asm, so the compiler adds no MFMA hazard
  padding. Safety rests on the layout margins above. The repository test
  checks the backward direction.
- **Unspecified O before the barrier:** testing can't prove that no path reads
  it before the clear. None of the 798,316 launches differed.
- **Process context:** in processes that load three or more extension builds,
  the short-shape effect disappears. All timings here use one or two builds
  per process.

## Artifacts and reproduction

- `owning/`: linked ISA and comparisons of the main-tree build.
- `tasks/validated-*`: the GPU-validated build.
- `runtime/`: correctness validation summary, provenance, static and hazard
  checks, tail-race data, logs.
- `timing/`: variant timing, the bisection table, the long-sequence gap, the
  forward hazard script and the guard script.
- `investigations/short-shape-and-gap.md`: bisection, ATT region analysis,
  candidate variants and the gap measurements.

```sh
source build/env.sh
export ROCM_HOME="$ROCM_PATH" HIP_PATH="$ROCM_PATH"
export ZYFA_NATIVE_LLVM_ROOT=/home/jinpli/workspace/home/jinpli/development/workspace/01/llvm-project
export ZYFA_LLVM_ROOT="$ZYFA_NATIVE_LLVM_ROOT"
export AMDGPU_ASIC_ID_TABLE_PATHS=/home/jinpli/workspace/home/jinpli/venv/01/lib/python3.14/site-packages/torch/share/libdrm
python setup.py build_ext --inplace
python benchmarks/inspect_hip.py --output benchmarks/results/hip_native/isa_match/o_clear_placement_20261112/owning
python benchmarks/results/hip_native/isa_match/o_clear_placement_20261112/verify-integrated.py
python -m pytest -q tests
python benchmarks/results/hip_native/isa_match/runtime_add3_20261111/benchmark-before-after.py \
  --baseline-extension build/o-clear-20261112/evidence/baseline-extension.so --output DIR
```
