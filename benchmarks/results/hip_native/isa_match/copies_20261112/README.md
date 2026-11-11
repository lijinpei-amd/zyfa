# HIP FP8: register-copy fixes

The steady loops now issue fewer register copies than the assembly kernels.
The d192 steady loop now takes the same number of cycles per iteration as the
assembly kernel. Both strict loops still match the assembly backend exactly,
neither kernel spills, and outputs are bitwise-identical to the two preceding
captures.

- **Source:** commits `0ddab6a`, `c76a127`, `e89fa08`, `292d02a` on top of
  `ac8512a`, plus a codegen regression test.
- **Compiler and flags:** unchanged. The production LLVM is `72e518a3f02a`,
  with `-disable-machine-licm`.
- **Before:** [`lds_licm_mask_20261111`](../lds_licm_mask_20261111/README.md)
  (`ac8512a`).

## What changed and why

`benchmarks/compare_isa.py` excludes register-source copies from the
mnemonic match, but copies still issue. The attribution in
`investigations/copies.md` traces every copy to its pass. None came from
live-range splitting.

| Copy group (d128 / d192) | Before | Pass | Cause | Fix |
|---|---:|---|---|---|
| E8M0 scale copied into P before each low FP8 pack (in loop) | – / 32 | two-address | `params.sb_lo` passed as the tied "old" operand of `v_cvt_pk_fp8_f32`. That half is never observed; the high pack overwrites it. | `0ddab6a`: an unspecified operand (shufflevector poison) |
| Code-bias pair (in loop) | 8 / – | two-address | `phase_use(f2{b, b})` forces an aligned register pair | `c76a127`: scalar fake uses |
| O-tile zero | 205 / 205 | ISel, SIFixSGPRCopies, two-address, PHI elimination | One SGPR zero splat feeds four O PHIs; three tiles are copied on each of five loop-entry edges | `e89fa08`: 64 `vgpr_constant<0>` moves, as the assembly clears O |
| Epilogue store quads | 48 / 48 | two-address | Fake use of each permlane result pair forces aligned pairs | `292d02a`: anchored individually |

The ATT traces in `att/` showed the cost. In `ac8512a`, every d192 low pack's
tied destination was written by a `v_mov` one instruction earlier (32 of 32
per iteration). After `0ddab6a`, the producer-distance histogram of all 64
packs per iteration equals the assembly's.

**Register copies** (`summary.json`, `register_copies`):

| | Assembly | Before | After |
|---|---:|---:|---:|
| d128 strict loop / whole kernel | 12 / 319 | 16 / 609 | **8** / 348 |
| d192 strict loop / whole kernel | 12 / 223 | 36 / 443 | **4** / 158 |

The remaining d128 excess is mostly the masked-tail −inf fill. Its copies fill
the MFMA hazard window that the assembly fills with `s_nop 15; s_nop 3`, and
the alternatives tried added `s_nop`s or flipped branches.

## Linked instruction comparison

Same filter as the preceding captures: register copies, scratch and lane
spills are excluded, and literals, waits, NOPs and branches are retained.

| Measurement | d128 before → after | d192 before → after |
|---|---:|---:|
| Strict steady loop (count and sequence) | 1333, exact | 825, exact |
| Retained whole-kernel instructions (assembly 5302 / 3737) | 4910 → 4974 | 3398 → 3463 |
| Positive mnemonic delta sum vs assembly | 261 → 259 | 203 → 204 |
| Negative mnemonic delta sum | −653 → −587 | −542 → −478 |
| Sum of absolute differences (L1) | 914 → 846 | 745 → 682 |
| `v_mov_b32` (assembly 133 / 133) | 9 → 73 | 57 → 121 |
| `s_nop` / `s_waitcnt` | 286 / 117, unchanged | 189 → 190 / 85 |

The +64 `v_mov_b32 v, 0` are the explicit O clear, which the assembly kernels
also issue. The other changes:

- d128: `s_add_u32` +2, `s_addk_i32` −2.
- d192: one `s_nop 0` on a tail entry.

**Resources.** VGPRs are unchanged at 244 / 206. SGPRs fall from 88 / 90 to
77 / 79. VGPR and SGPR spills are 0 / 0, with no scratch. LDS bytes per block
are unchanged at 163840 / 131072.

**What `verify-integrated.py` asserts:**

- the resources above;
- the strict-loop match;
- loop copies at or below the assembly's;
- the protected mnemonic counts and the PV-address and u24-setup checks;
- the build flag and LICM pragma;
- that the extension embeds the owning fatbin once;
- that the baseline extension (`build/copies-20261112/evidence/baseline-extension.so`,
  `8a0d5fb8…`) embeds the previous fatbin once;
- that `.text`, `.rodata` and `.note` are byte-identical to the GPU-validated
  build in `tasks/`. All 5322 / 3621 unfiltered instructions match.

## Hazard note

Inline asm gets no MFMA hazard padding from the compiler. A static CFG walk
(`investigations/copies.md`) found that the nearest MFMA touching a register
cleared by `e89fa08` is 102 / 67 wait states away. The window is about 19.
The pass-start-heavy GPU runs below found no failures, but testing can't prove
the hazard absent.

## Runtime validation

**Project tests.** 312 passed and 2 were skipped on the rebuilt main-tree
extension (`project-tests.log`). That includes the new
`test_hip_steady_register_copies_do_not_exceed_assembly`, which fails on
`ac8512a` (16 / 36 copies against 12).

**Correctness** (`runtime/tail-race-long/`):

- **Volume:** 1,120 cases and 795,516 candidate launches, zero failures.
- **Bitwise equal to:** `ac8512a` and `4dd38ce`, with LSE on and off. Output
  with LSE was also checked against output without, and the public API against
  a raw launch.
- **Coverage:**
  - every causal diagonal offset;
  - padded lengths;
  - persistent multi-pass jobs;
  - a new O-clear phase: 14 shapes dominated by pass starts, 2,800 fresh-seed
    launches, under concurrent memory-copy load;
  - stress runs.

**ATT** (`att/`; one CU, one dispatch, length 8192, MHA). Steady-loop cycles
per iteration:

| | Assembly | `ac8512a` | `0ddab6a` | `292d02a` |
|---|---:|---:|---:|---:|
| d128 | 10142 | 10132 | 10136 | 10106 |
| d192 | 7473 | 7896 | 7494 | **7474** |

Whole-wave duration against the assembly kernel:

- d128: +2.1% → +1.7%.
- d192: +5.9% → +1.3%.

What remains is outside the steady loop.

**Timing** (`runtime/timing/`). Same-process README protocol, five clean runs,
with the paired per-repeat after/before change. The d192 MHA 1024 case is
bimodal for all three kernels, so its pooled median is misleading. HIP 5 is the
primary device and HIP 0 the cross-check.

| Case | vs `ac8512a`, HIP 5 | vs `ac8512a`, HIP 0 | vs `4dd38ce`, HIP 5 |
|---|---:|---:|---:|
| d128 MHA 256 / 1024 / 8192 | −0.46 / +0.14 / +0.04% | −0.47 / +0.80 / −0.98% | −14.69 / −11.42 / −2.01% |
| d128 GQA4 256 / 1024 / 8192 | +1.30 / +0.44 / +0.04% | +1.37 / +0.23 / +0.43% | −15.11 / −12.06 / −2.26% |
| d192 MHA 256 / 1024 / 8192 | +0.70 / +0.09 / −2.00% | +0.68 / +0.06 / −2.47% | −1.22 / −1.05 / −2.28% |
| d192 GQA4 256 / 1024 / 8192 | +0.55 / −0.88 / −1.76% | +0.67 / +0.06 / −1.64% | −1.75 / −1.84 / −2.12% |

- **d192 at 8192:** consistently faster.
- **Short shapes:** consistently slightly slower than `ac8512a`, most of all
  d128 GQA4 at length 256 (+1.3%). The cause is not investigated.
- **Output check:** before and after outputs were bitwise-equal in all timing
  runs.

## Artifacts and reproduction

- `owning/`: linked ISA, strict loops, comparisons, manifest and metadata of
  the main-tree build.
- `tasks/validated-native.co`, `tasks/validated-disassembly.s`: the
  GPU-validated build.
- `runtime/`: GPU validation summary and report, provenance, static checks,
  tail-race and timing data, logs and scripts. Script paths refer to the
  validation worktree.
- `att/`: capture metadata (`capture-*.json`), loop-cycle and alignment
  results, and the launch and analysis scripts. The traces themselves are under
  `~/.local/share/capture_att_trace/zyfa_fp8_d{128,192}_{hip,asm}/`: baseline,
  then `v1` = `0ddab6a` and `v2` = `292d02a`.
- `investigations/`: copy attribution (`copies.md`) and register-pressure
  structure (`pressure-structure.md`).
- `llvm-patches/`: the debug-only copy-origin instrumentation patch used for
  attribution. It is not for upstream and not used by the build.

```sh
source build/env.sh
export ROCM_HOME="$ROCM_PATH" HIP_PATH="$ROCM_PATH"
export ZYFA_NATIVE_LLVM_ROOT=/home/jinpli/workspace/home/jinpli/development/workspace/01/llvm-project
export ZYFA_LLVM_ROOT="$ZYFA_NATIVE_LLVM_ROOT"
export AMDGPU_ASIC_ID_TABLE_PATHS=/home/jinpli/workspace/home/jinpli/venv/01/lib/python3.14/site-packages/torch/share/libdrm
python setup.py build_ext --inplace
python benchmarks/inspect_hip.py --output benchmarks/results/hip_native/isa_match/copies_20261112/owning
python benchmarks/results/hip_native/isa_match/copies_20261112/verify-integrated.py
python -m pytest -q tests
python benchmarks/results/hip_native/isa_match/runtime_add3_20261111/benchmark-before-after.py \
  --baseline-extension build/copies-20261112/evidence/baseline-extension.so --output DIR
```

For ATT, `att/run_case.sh` preloads the profiler's runtime libraries; torch
otherwise loads its own bundled copies, which clash with them. Captures used
the capture-att-trace skill script with `-T --kernel-include-regex '^attend$'`
(or `'^fmha_fp8'` for assembly) and `--kernel-iteration-range 10`, on SE 0 / CU 1.
