# HIP FP8: short-length waits and masked-MM order

At lengths 256 and 1024, HIP is now within 0.5–2.3% of the assembly kernels;
before these commits it was 4–11% slower. Three source commits remove waits and
serialization that the assembly kernels don't have. The mnemonic histogram moves
closer to the assembly, the strict loops still match exactly, and outputs are
bitwise-identical.

- **Source:**
  - `f66b5fa`, `c3b73c3`, `4a2e4fb`;
  - `7c3bf2e`, comment only;
  - all on top of `9d74db4`, whose kernel code is `9cf4ce9`.
- **Compiler and flags:** unchanged. The production LLVM is `72e518a3f02a`,
  with `-disable-machine-licm`.
- **Before:** [`o_clear_placement_20261112`](../o_clear_placement_20261112/README.md).

## Findings

ATT region analysis compared HIP and assembly cycles per wave per pass, per
wave group (`att/`; method and full tables in `investigations/short-gap.md`).
At L256 the old HEAD lost +645/+668 cycles per pass in d128 GQA4 and
+2345/+2333 in d192 MHA. In both, the loss was in waits, not in different code.

| Contributor | Cause | Fix | Share of the L256 gap |
|---|---|---|---|
| Group 0 waited `vmcnt(0)` for its V1/K2/K3 pass-start loads before the barrier: 600–1140 cycles per pass, mirrored at group 1's pass-done barrier | The assembly lets these loads cross the barrier; the first MM waits for them | `f66b5fa` | 44–90% |
| The masked MM waited at its end for the loads it had just issued | The assembly waits at the start of the masked MM, for the previous phase's loads | `c3b73c3` | 12–32% of d192, about 0 of d128 |
| The d192 masked MM issued PV after the mask and statistics, with `s_nop 11/7` padding the MFMA results before the mask | The PV MFMAs need only the previous tile's probabilities | `4a2e4fb`: d192 issues PV right after QK | 15–27% of d192 |

**Per-pass cycles at L256, group 0 / group 1:**

| | Assembly | Old HEAD | This capture |
|---|---|---|---|
| d128 GQA4 | 14213 / 14719 | +645 / +668 | −121 / −144 |
| d192 MHA | 19885 / 20356 | +2345 / +2333 | +70 / +97 |

**Still to do:**
- **d128 masked MM:** about +400–500 cycles per masked tile. PV-first slowed
  d128, so it needs an interleaved rewrite like the steady MM.
- **O clear after the barrier:** +130–290 cycles per pass.
- **Prologue:** three serialized `lgkmcnt(0)` waits, where the assembly has two.
- **Epilogue:** store-issue stalls; the instructions are the same as the
  assembly's.

The old documentation said HIP lacked cross-pass prefetch. That is out of date:
the next pass's K0/V0/K1 and Q load during the last tile, the ring rotates
across passes, and epilogue stores overlap the next pass's first QK.

**Rejected:**
- Clearing O where the assembly does: 1.5–3.5% slower at L256.
- PV-first for d128: 0.3–0.5% slower at L1024, and a worse order match.

## Linked instruction comparison

| Measurement | d128 before → after | d192 before → after |
|---|---:|---:|
| Strict loop | 1333, exact | 825, exact |
| Retained whole-kernel instructions (assembly 5302 / 3737) | 4974 → 4973 | 3463 → 3449 |
| Positive mnemonic delta sum | 259 → 258 | 204 → 193 |
| L1 to assembly | 846 → 845 | 682 → 674 |
| Exact LCS with the assembly sequence | 3307 → 3309 | 2223 → 2271 |
| Register copies, loop / whole kernel | 8 / 348 | 4 / 158 → 4 / 156 |

Mnemonic changes:
- **d128:** `s_waitcnt` −1.
- **d192:** `s_and_b64` −4, `s_cselect_b64` −2, `s_nop` −7, `s_waitcnt` −1,
  `s_cbranch_scc0` −2, `s_cbranch_vccz` +2.

The `s_nop` change is −10 MFMA-result pads and +4 protected VCC pads; all
padding is still the compiler's.

**Resources:** VGPR/SGPR stay at 244/77 and 206/79, with no spills or scratch.
**O-clear hazard margins:** unchanged at 108/75 before the clear and 185/115
after it.

`verify-integrated.py` asserts:
- positive excess and L1 are no worse than before;
- strict loops are exact;
- loop copies are at or below the assembly's;
- the protected counts;
- the O-clear hazard margin;
- identity with the GPU-validated build (`tasks/`, `.text` `35927b17…`).

## Runtime validation

**Project tests.** 314 passed and 2 were skipped on the rebuilt main-tree
extension (`project-tests.log`); the validation tree gave the same.

**Correctness** (`runtime/tail-race/`):
- **Volume:** 1,134 cases and 798,316 launches, zero failures.
- **Bitwise equal to:** the old HEAD and the `9cf4ce9` main-tree build, with
  LSE on and off. Those are themselves bitwise equal to `ac8512a` and `4dd38ce`.
- **Coverage:** the kernel, persistent, padded, diagonal, pass-start O-clear
  and stress phases.

**Timing** (`timing/summary.md`). README protocol, guarded so it runs only on
an idle GPU group, 5 clean runs, outputs bitwise-equal:

| | d128 MHA | d128 GQA4 | d192 MHA | d192 GQA4 |
|---|---:|---:|---:|---:|
| HIP/asm L256, before → after | 1.071 → 1.017 | 1.050 → 1.005 | 1.108 → 1.008 | 1.086 → 1.023 |
| HIP/asm L1024 | 1.058 → 1.018 | 1.064 → 1.023 | 1.051 → 1.008 | 1.048 → 1.010 |
| HIP/asm L8192 | 1.010 → 1.003 | 1.009 → 1.009 | 1.007 → 1.004 | 1.009 → 1.003 |
| Paired change, L256 / L1024 | −5.07 / −3.50% | −4.25 / −3.73% | −9.02 / −4.39% | −5.73 / −3.23% |

## Caveats

- **ATT:** single-CU block spans vary by about ±2.5k cycles between captures.
  ATT locates the regions; the guarded timing measures the size.
- **Barrier waits** are charged to the region that holds the barrier, so delay
  can show up in the other wave group.
- **Inline-asm hazards:** the O-clear hazard safety still rests on layout
  margins.

## Artifacts and reproduction

- `owning/`: the main-tree build's ISA and comparisons.
- `tasks/validated-*`: the validated build.
- `runtime/`: tail-race results and test logs.
- `timing/`: pooled CSVs and the summary.
- `att/`: region tables against the assembly, and the capture index. Traces are
  under `~/.local/share/capture_att_trace/zyfa_fp8_d{128,192}_{hip,asm}/`.
- `scripts/`: region, LCS and guard tools.
- `investigations/short-gap.md`: the full report.

```sh
source build/env.sh
export ROCM_HOME="$ROCM_PATH" HIP_PATH="$ROCM_PATH"
export ZYFA_NATIVE_LLVM_ROOT=/home/jinpli/workspace/home/jinpli/development/workspace/01/llvm-project
export ZYFA_LLVM_ROOT="$ZYFA_NATIVE_LLVM_ROOT"
export AMDGPU_ASIC_ID_TABLE_PATHS=/home/jinpli/workspace/home/jinpli/venv/01/lib/python3.14/site-packages/torch/share/libdrm
python setup.py build_ext --inplace
python benchmarks/inspect_hip.py --output benchmarks/results/hip_native/isa_match/short_gap_20261112/owning
python benchmarks/results/hip_native/isa_match/short_gap_20261112/verify-integrated.py
python -m pytest -q tests
python benchmarks/results/hip_native/isa_match/runtime_add3_20261111/benchmark-before-after.py \
  --baseline-extension build/short-gap-20261112/evidence/baseline-extension.so --output DIR
```
