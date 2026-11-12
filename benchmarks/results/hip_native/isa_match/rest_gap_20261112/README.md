# HIP FP8: masked-MM interleave and prologue descale loads

The native HIP kernels are now as fast as the assembly kernels, or faster, at
every measured length. The mnemonic histogram and instruction order move closer
to the assembly, the strict loops still match exactly, and outputs are
bitwise-identical.

- **Source:** commits `c946161`, `238a793`, `7ef2635`, `ee96028` on top of
  `e88e191`, all in `csrc/fp8_native.hip` (+237/−52).
- **Compiler and flags:** unchanged. The production LLVM is `72e518a3f02a`,
  with `-disable-machine-licm`.
- **Before:** [`short_gap_20261112`](../short_gap_20261112/README.md).

## Changes

1. **Masked MM interleave (`c946161`, `7ef2635`).**
   - **Problem:** about 270 mask and statistics VALU instructions ran with no
     MFMA in flight, so in-order issue could overlap them only with the last
     QK MFMA.
   - **Change:** both masked MMs now follow the assembly generator's masked
     variant (`csrc/asm/d{128,192}.py::seg_mm`), as the steady MM does:
     - each block's mask and row max run under the following QK MFMAs;
     - the statistics run under the first two PV MFMAs;
     - tile loads sit where the generator places them;
     - the rescale branch uses a scalar flag.
   - The math and accumulation order are unchanged.
   - d192 needs the mask's 0.85 branch weight inside the masked MM only
     (`ee96028`).
   - **Effect:** ATT tail cycles per pass drop by 340–1700.
2. **Prologue descale loads (`238a793`).**
   - **Problem:** InstCombine folded `qd * kd` into the K-descale branch
     through the known constant 1.0. That forced a wait before the V-descale
     load could issue.
   - **Change:** a non-volatile one-instruction `s_mov_b32 1.0`, the
     assembly's own instruction, lets all three loads issue before one wait.
   - **Effect:** the ATT prologue now matches the assembly (group 0: 1643 vs
     1640 cycles, against 1813 before).

**Not changed:**
- **O clear after the barrier.** The assembly's placement is still 0.2–1.6%
  slower. Spreading the clear under the first QK fails the inline-asm hazard
  rule; it is kept as optional branch `rest-gap-c6m-optional`, not used.
- **Epilogue.** Its instructions match the assembly's. What remains is
  store-issue time.

## Linked instruction comparison

| Measurement | d128 before → after | d192 before → after |
|---|---:|---:|
| Strict loop | 1333, exact | 825, exact |
| Retained whole-kernel instructions (assembly 5302 / 3737) | 4973 → 4964 | 3449 → 3446 |
| Positive mnemonic delta sum | 258 → **248** | 193 → **190** |
| L1 to assembly | 845 → **834** | 674 → **671** |
| Exact LCS with the assembly sequence | 3309 → **3434** | 2271 → **2321** |
| Register copies, loop / whole kernel | 8 / 348 → 8 / 347 | 4 / 156 → 4 / 157 |
| VGPR / SGPR | 244 / 77 | 206 → 214 / 79 |

Mnemonic changes:
- **d128:**
  - `s_waitcnt` −2, now equal to the assembly (114).
  - `s_nop` −5, `s_cbranch_vccz` −2.
  - `s_lshl_b32` −4, `s_and_b32` −2, `s_or_b32` −2, `s_branch` −1.
  - `s_cmp_eq_u32` +2, `s_cbranch_scc1` +2, `s_add_u32` +2,
    `v_add_u32_e32` +2, `s_mov_b32` +1.
- **d192:**
  - `s_cbranch_vccz` −2, `s_lshl_b32` −4, `s_addk_i32` −2.
  - `v_lshlrev_b32_e32` −2, now equal to the assembly.
  - `s_cmp_eq_u32` +2, `s_cbranch_scc1` +2, `s_add_u32` +2, `s_mov_b32` +1.

Other checks:
- No protected mnemonic changed: memory, `f32`, `bf16`, `fp8`.
- No spills or scratch.
- O-clear hazard margins are unchanged: 108/75 before the clear, 185/115 after.

`verify-integrated.py` asserts:
- positive excess and L1 are no worse than before;
- strict loops are exact;
- loop copies are at or below the assembly's;
- the resources, including d192's 214 VGPRs;
- the protected counts;
- the hazard margin;
- identity with the validated build (`tasks/`, `.text` `179a935c…`).

## Runtime validation

**Project tests.** The full suite passes on the rebuilt main-tree extension
(`project-tests.log`). In the validation tree the two-GPU test was also run
separately (`runtime/final-second-gpu.log`).

**Correctness** (`runtime/tail-race/`):
- **Volume:** 1,134 cases and 798,316 launches, zero failures.
- **Bitwise equal to:** the previous HEAD and the `9cf4ce9` build, with LSE on
  and off.
- **Coverage:** the kernel, persistent, padded, diagonal, pass-start O-clear
  and stress phases.

**Timing** (`timing/summary.md`, `timing/final-pooled.csv`). README protocol,
guarded, 10 clean runs (rounds r9 and r10), outputs bitwise-equal:

| HIP / assembly | Before | After | Paired change |
|---|---:|---:|---:|
| d128 MHA L256 / L1024 / L8192 | 1.017 / 1.021 / 1.007 | **0.992 / 1.000 / 1.003** | −2.56 / −2.09 / −0.40% |
| d128 GQA4 L256 / L1024 / L8192 | 1.006 / 1.022 / 1.005 | **0.983 / 0.998 / 1.003** | −2.55 / −2.37 / −0.08% |
| d192 MHA L256 / L1024 / L8192 | 1.010 / 1.003 / 1.003 | **0.978 / 0.987 / 1.000** | −3.23 / −1.70 / −0.27% |
| d192 GQA4 L256 / L1024 / L8192 | 1.023 / 1.014 / 1.002 | **0.986 / 0.999 / 1.001** | −3.61 / −1.26 / −0.27% |

**ATT** (`att/`, final − assembly, cycles per wave per pass, group 0 / 1):

| Case | Final − assembly |
|---|---:|
| d128 GQA4 L256 | −723 / −708 |
| d128 GQA4 L1024 | −492 / −463 |
| d128 MHA L1024 | −503 / −492 |
| d192 MHA L256 | −89 / −80 |
| d192 GQA4 L256 | −352 / −306 |
| d192 MHA L1024 | −1175 / −1192 |
| d192 GQA4 L1024 | −634 / −645 |

What remains against the assembly is small:
- O clear: about +70–180 cycles per pass.
- Dispatch after the barrier: up to +70.
- Group 1's epilogue: +30–160.

## Artifacts and reproduction

- `owning/`: the main-tree ISA.
- `tasks/validated-*`: the validated build.
- `runtime/`: tail-race results and test logs.
- `timing/`: pooled timing for every round.
- `att/`: region tables.
- `static/`: histogram, LCS and candidate summaries.
- `scripts/`: the static, ATT and hazard tools.
- `investigations/rest-gap.md`: the full report.

```sh
source build/env.sh
export ROCM_HOME="$ROCM_PATH" HIP_PATH="$ROCM_PATH"
export ZYFA_NATIVE_LLVM_ROOT=/home/jinpli/workspace/home/jinpli/development/workspace/01/llvm-project
export ZYFA_LLVM_ROOT="$ZYFA_NATIVE_LLVM_ROOT"
export AMDGPU_ASIC_ID_TABLE_PATHS=/home/jinpli/workspace/home/jinpli/venv/01/lib/python3.14/site-packages/torch/share/libdrm
python setup.py build_ext --inplace
python benchmarks/inspect_hip.py --output benchmarks/results/hip_native/isa_match/rest_gap_20261112/owning
python benchmarks/results/hip_native/isa_match/rest_gap_20261112/verify-integrated.py
python -m pytest -q tests
python benchmarks/results/hip_native/isa_match/runtime_add3_20261111/benchmark-before-after.py \
  --baseline-extension build/rest-gap-20261112/evidence/baseline-extension.so --output DIR
```
