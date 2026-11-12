# HIP FP8: the remaining short-length gap to the assembly kernels

(Saved by the coordinator from the subagent's returned text; the harness blocked the subagent from writing this file.)

Base: `e88e191` (kernel code `4a2e4fb`). Recommended: **`ee96028`**, four commits on top of `e88e191`, all in `csrc/fp8_native.hip` (+237/−52), on the agent worktree branch and on `rest-gap-recommended-ee96028`. No LLVM change; nothing pushed.

| Commit | Change |
|---|---|
| `c946161` | Interleave the d128 masked MM as the assembly's masked MM |
| `238a793` | Issue all three descale loads before one prologue wait |
| `7ef2635` | Interleave the d192 masked MM; the 0.85 mask weight applies inside the masked MM only |
| `ee96028` | Keep the d128 pass-start masked QK's -inf fill in line; the weight now applies only in the masked MMs |

HIP is now at or below the assembly in every L256 and L1024 case, and within 0.3% at L8192.

| HIP/asm | HEAD | `ee96028` | change |
|---|---:|---:|---:|
| d128 MHA L256 / L1024 / L8192 | 1.017 / 1.021 / 1.007 | **0.992 / 1.000 / 1.003** | −2.56 / −2.09 / −0.40% |
| d128 GQA4 | 1.006 / 1.022 / 1.005 | **0.983 / 0.998 / 1.003** | −2.55 / −2.37 / −0.08% |
| d192 MHA | 1.010 / 1.003 / 1.003 | **0.978 / 0.987 / 1.000** | −3.23 / −1.70 / −0.27% |
| d192 GQA4 | 1.023 / 1.014 / 1.002 | **0.986 / 0.999 / 1.001** | −3.61 / −1.26 / −0.27% |

These are guarded, same-process README-protocol runs: 10 clean runs (two rounds of 5), with output and LSE bitwise-equal to HEAD in every run.

## Contributors

1. **d128 masked MM: fixed, and the same fix applied to d192.**
   - **Cause:** about 270 mask and statistics VALU instructions ran with no MFMA in flight. In-order issue meant they could only overlap the last QK MFMA. d192's PV-first order had the same problem after its last MFMA.
   - **Fix:** both masked MMs are now written like `FP8_STEADY_MM`, following the generator's masked variant: mask and row max under the QK MFMAs, statistics under the first two PV MFMAs.
   - **Effect:** d128 drops 5 `s_nop`; d192 adds none (the earlier x9b prototype added 6). Each costs 1.6–3.6% at L256/L1024 alone.
   - **Layout:** the d192 version needs the mask's 0.85 branch weight inside the masked MM only. Without it, a codegen test failed on the block layout; applying it at the pass start too cost 0.8% at L256.
2. **O clear after the pass-start barrier: not fixed.**
   - Re-measured on the new base, the assembly's placement is still 0.2–1.6% slower.
   - The only placement that gained is spreading the moves under the first QK's MFMAs: −1.5% for d128 MHA L256, about 0 elsewhere. It needs two copies of the clear (+4 positive excess per kernel, LCS −28/−25). It fails `test_hip_inline_asm_o_clear_is_outside_mfma_hazard_window`, and one move lands 2 wait states after an MFMA that reads the same register. Kept as `rest-gap-c6m-optional`, not recommended.
3. **Prologue: fixed.**
   - **Cause:** InstCombine folded `qd * kd` into the K-descale branch through the known constant 1.0. That forced a wait before the V-descale load could issue.
   - **Fix:** a non-volatile one-instruction asm `s_mov_b32 1.0`, the assembly's own instruction, so all three loads issue before one wait. A volatile asm turned the loads into `global_load_dword`.
   - **Effect:** ATT prologue now matches the assembly; −0.6 to −1.2% at L256.
4. **Epilogue: nothing to fix in code.** The instruction sequence is the assembly's, except an output-address multiply that finishes while the LDS reads are pending. What remains is store-issue time.

## Static checks, HEAD → `ee96028`

| | d128 | d192 |
|---|---|---|
| Positive excess / L1 | 258/845 → **248/834** | 193/674 → **190/671** |
| Exact LCS order | 3309 → **3434** | 2271 → **2321** |
| VGPR | 244 | 206 → 214 |

- Strict loops stay exact at 1333/825.
- Loop copies stay at 8/4 against the assembly's 12/12; whole-kernel copies go 348→347 and 156→157.
- No spills or scratch. No protected mnemonic (memory, `f32`, `bf16`, `fp8`) changed.
- O-clear hazard margins are unchanged: 108/75 before the clear, 185/115 after.
- d192's 214 VGPRs is under the 256 limit, but the short-gap `verify-integrated.py` hard-codes 206, so it would need updating.

**Mnemonic changes HEAD → final** (with "now / asm" counts):
- **d128:**
  - `s_waitcnt` −2 (114/114), `s_nop` −5 (281/182), `s_cbranch_vccz` −2 (0/0).
  - `s_cmp_eq_u32` +2, `s_cbranch_scc1` +2 (79/78).
  - `s_lshl_b32` −4, `s_and_b32` −2, `s_or_b32` −2, `s_branch` −1.
  - `s_add_u32` +2, `v_add_u32_e32` +2, `s_mov_b32` +1.
- **d192:**
  - `s_cbranch_vccz` −2, `s_cmp_eq_u32` +2, `s_cbranch_scc1` +2.
  - `s_lshl_b32` −4, `s_addk_i32` −2, `v_lshlrev_b32_e32` −2 (29/29).
  - `s_add_u32` +2, `s_mov_b32` +1.
- The mask's VCC `s_nop 1` pads are unchanged. They are LLVM's gfx950 VALU-writes-SGPR hazard, which the assembly doesn't pad.

## Tests and correctness
- Codegen and ISA tests: 87 passed.
- Full suite: 313 passed, 3 skipped. The extra skip is the two-GPU test, because the guard exposes one GPU; it passed when run separately on two idle GPUs.
- Long tail/race pass: 1,134 cases, 798,316 launches, **0 failures**, bitwise equal to HEAD and the `9cf4ce9` build with LSE on and off. Run under a relaxed guard: it starts only on an idle group but doesn't abort when neighbours get busy, since contention can't change bitwise results. It finished at 0% neighbour activity anyway.

## What remains against the assembly (ATT, cycles per pass, wave group 0 / 1)
- O clear: +71..+94 / +121..+182.
- Dispatch after the barrier: up to +58 / +70. Not investigated.
- Epilogue, group 1: +34..+161.
- Hoisting the mask threshold would lower positive excess but raise L1, so it was left.

## 1. Timing per commit

Rounds r9 and r10, 10 clean runs, pooled. Per-commit effect against HEAD (5 runs each, MHA/GQA4, in %):

| Candidate | d128 L256 | d128 L1024 | d192 L256 | d192 L1024 | pos/L1 d128; d192 | LCS d128/d192 |
|---|---|---|---|---|---|---|
| c1 (= `c946161`) | −1.61/−2.00 | −1.71/−1.89 | −0.12/−0.01 | +0.09/−0.03 | 249/835; 193/674 | 3431/2271 |
| c2 (+ `238a793`) | −2.31/−2.60 | −2.04/−2.56 | −1.27/−0.87 | −0.73/+0.05 | 248/834; 194/677 | 3429/2271 |
| c3: d192 interleave, unweighted; fails the PV-address test | −2.32/−2.45 | −1.92/−2.33 | −3.34/−3.64 | −2.10/−1.85 | 248/834; 190/671 | 3429/2278 |
| c5: weight on every d192 mask site | −2.31/−2.46 | −2.07/−2.03 | −2.54/−2.79 | −1.41/−1.47 | 248/834; 191/672 | 3429/2317 |
| c5m (`7ef2635` ISA), paired against c3 | −0.10/−0.01 | | +0.13/−0.10 | +0.39/+0.28 | 248/834; 190/671 | 3429/2321 |
| **`ee96028`** (10 runs) | **−2.56/−2.55** | **−2.09/−2.37** | **−3.23/−3.61** | **−1.70/−1.26** | **248/834; 190/671** | **3434/2321** |
| c4a: O clear before the wait (rejected) | −2.14/−1.12 | −1.34/−1.21 | −1.75/−2.45 | −1.53/−0.13 | 248/834; 190/671 | 3439/2287 |
| c4b: O clear under the first QK | −3.88/−2.62 | −2.53/−2.42 | −3.08/−3.75 | −1.53/−2.43 | 252/778; 242/711 | 3406/2252 |
| c6m: c4b plus no tail zero-inits, paired against c5m (optional) | −1.48/−0.33 | −0.12/−0.29 | +0.14/−0.13 | +0.20/−0.34 | 252/778; 194/663 | 3406/2296 |

- The prologue's share is c2 − c1: −0.6 to −1.2% at L256 and 0 to −0.8% at L1024.
- The d192 interleave's share is c3 − c2: −2.1/−2.8% at L256 and −1.4/−1.9% at L1024.
- `ee96028` against c5m: −0.1 to −0.2% at L256, within noise.

## 2. Root-cause details

### 2.1 Masked MM
- **HEAD d128:**
  - Row sums, then the l update (`s_nop 3`/`5`).
  - 8 QK MFMAs.
  - Up to 4 × 51-instruction mask blocks plus about 60 statistics instructions, with no MFMA in flight.
  - 8 PV MFMAs.
- **HEAD d192:** QK, then PV, then all the VALU.
- **Fix:** both are now written like the steady MM, following `csrc/asm/d{128,192}.py::seg_mm`'s masked variant:
  - runtime K and V slots;
  - tile loads where the generator's `LOAD_AT` places them;
  - the l update after the K loads;
  - each block's mask and max after the MFMA that follows its last QK MFMA;
  - statistics under PV(0,0) and PV(0,1);
  - the rescale branch on the scalar flag.
- The math and accumulation order are unchanged, so outputs are bitwise identical.
- **ATT tail region, final − HEAD (group 0 / group 1):**

  | Case | Tail change (cycles/pass) |
  |---|---:|
  | d128 GQA4 L1024 | −1258 / −1702 |
  | d128 MHA L1024 | −1563 / −443 |
  | d192 MHA L256 | −339 / −331 |
  | d192 GQA4 L1024 | −434 / −1083 |

### 2.2 O clear
- c4a (assembly placement) was rejected again: slower on the new base.
- c4b/c6m (moves spread under the first QK's MFMAs) is faster, but only for d128 MHA L256. Its costs are listed above.
- **Hazard detail:**
  - The spread clears reuse a K-fragment register: one move lands 2 wait states after the QK MFMA that read it as SrcA.
  - LLVM models a write-after-read hazard only for SrcC, so it pads nothing here.
  - It still violates the repository's 19-wait-state rule for inline asm.
  - `hazard_spread.py` checks these split clears.

### 2.3 Prologue
- The descale-default fold, the non-volatile `s_mov_b32 1.0` fix, and the volatile-asm pitfall are described above.
- ATT, d128 GQA4 L256 group 0: assembly 1640, HEAD 1813, final 1643 cycles.

### 2.4 Epilogue
- The mnemonic runs are identical to the assembly's except the output-row address.
- The next pass waits `vmcnt(8)` in both.
- There is no fix to make in code.

## 3. ATT (final vs assembly, cycles per wave per pass, group 0 / group 1)

| Case | HEAD − asm | final − asm |
|---|---:|---:|
| d128 GQA4 L256 | −121 / −144 | **−723 / −708** |
| d128 GQA4 L1024 | +666 / +664 | **−492 / −463** |
| d128 MHA L1024 | +1098 / +1105 | **−503 / −492** |
| d192 MHA L256 | +70 / +97 | **−89 / −80** |
| d192 GQA4 L256 | +202 / +255 | **−352 / −306** |
| d192 MHA L1024 | −64 / −88 | **−1175 / −1192** |
| d192 GQA4 L1024 | +648 / +604 | **−634 / −645** |

- d128 MHA L256's first capture pair was an outlier: block-span spread nearly twice the assembly's, plus 1283 extra issue cycles in a region this work doesn't touch.
- A second capture pair gives +80 cycles per pass for wave group 0.

## 4. Branches
- `rest-gap-recommended-ee96028` (also the worktree branch).
- `rest-gap-c6m-optional` (`e1b912d`).
- `rest-gap-c4a-rejected` (`3a10ba3`).
- `rest-gap-c4b-rejected` (`f880fa5`).
- `rest-gap-experiments` (`95777cc`), the original candidate chain.

## 5. Artifacts

Everything is in this directory:
- `trees/`: built candidate trees, including `final`.
- `quick/`: native-object-only builds.
- `timing/`: rounds r1–r10, `summary.md`, `final-pooled.csv`.
- `static/`: `static-final.txt`, `histograms-candidates.txt`, `lcs-candidates.txt`.
- `tests/`: codegen, full-suite, two-GPU and c3-failure logs.
- `correctness/final-tail-race/`: tail/race results.
- `att/`: capture logs, `analysis/` per-case tables, `region-table.md`.
- `scripts/`: the main tools.
  - `quick.sh`: compiles only the native kernel.
  - `static.sh`: histogram, LCS, copies, hazards, resources.
  - `dis_tests.py`: runs the disassembly codegen tests on any tree.
  - `att_compare.py`, `att_table.py`: ATT region comparison and table.
  - `mnemonic_delta.py`: per-mnemonic changes between two trees.
  - `hazard_spread.py`: hazard margins for split O clears.
  - `guarded_relaxed.py`: the relaxed guard used for the tail race and the suite.

ATT versions: `zyfa_fp8_d128_hip` v27–v30 (v28 also has reps g3/g4) and `zyfa_fp8_d192_hip` v26–v29, description `restgap-final-*`.
