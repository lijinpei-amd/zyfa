# Single LDS array with immediate DMA offsets, plus LICM control — prototype report

(Saved by the coordinator from the subagent's returned text; the harness blocked the subagent from writing this file.)

Compile-only; nothing has run on a GPU.

## What changed

- **zyfa** commit `3ff0230` on `worktree-agent-ab463e649d54814c4` (worktree `/home/jinpli/workspace/home/jinpli/development/zyfa/.claude/worktrees/agent-ab463e649d54814c4`, based on `4dd38ce`), not pushed:
  - **Layout:** one array per kernel (`lds_bytes<D>`, 128-byte aligned), laid out like `csrc/asm/d*.py`: K slots at 0/16K/32K/48K, V slots from 64K, then the output buffer. The correction terms and `__builtin_assume_separate_storage` are gone.
  - **Steady-loop DMAs:** `s_add_u32 m0, base, imm` through a new `scalar_add_imm<N>` helper. Uses `"n"` instead of `"i"` because it guarantees a plain integer; the slot is a template parameter. Two wave bases, K and V, like the reference's s83/s84. The tails and transitions use the same immediate form on a runtime slot base.
  - **V reads:** steady-loop V fragments now use one lane base with the slot offset in the DS offset field, as the reference does.
  - **Two small fixes**, both caused by the single array (see the alias section).
- **LLVM** worktree `/home/jinpli/workspace/home/jinpli/development/workspace/01/llvm-lds-licm`, branch `2026-11-11-lds-imm-licm`, not pushed:
  - `69facd8d063f`: a pipeline lit test (no behaviour change).
  - `5be5c1df2471`: adds `-amdgpu-early-machinelicm-before-fold` (default true). Setting it false skips only the first of the two early MachineLICM runs, the one before SIFoldOperands. It only affects the legacy pass pipeline, which is what production uses.
- **Reproduction check:** before any change, the new Release+assertions build reproduced the owning ISA exactly: all 5730/3898 instructions, with addresses and operands.

## Variants

Production LTO compiles; changes are against owning.

| Variant | Strict loop | s_mov / s_movk | SGPR / VGPR spills | s_waitcnt | Positive excess |
|---|---|---|---|---|---|
| owning | 1333 / 825 exact | – | 14,23 / 1,0 | – | 301 / 214 |
| v1 single array, no other fix | broken (1345 / 833) | −11,−3 / −7,−3 | 4,23 / 0,0 | +12 / +8 | 310 / 225 |
| v1b + restrict on V reads | exact | −11,−3 / −7,−3 | 4,23 / 0,0 | −2 / −4 | 296 / 213 |
| v5 + immediates everywhere + one V base | exact | −12,−3 / −7,−3 | 4,19 / 0,0 | −6 / −4 | 272 / 193 |
| **v9 committed** (v5 + tail anchor) | exact | −12,−3 / −7,−3 | 4,19 / 0,0 | −6 / −4 | **269 / 193** |
| v8 = v9 + new LLVM flag | exact | −15,−3 / −13,−3 | **0,18** / 0,0 | −7 / −4 | 261 / 204 |
| v9, MachineLICM disabled | broken (1353 / 841) | +17 / +2 | 0,10 / 0,0 | 0 / −4 | 319 / 226 |
| v9, IR LICM disabled | d128 unchanged; d192 broken | as v9 | as v9 | 0 / 0 | 269 / 307 |

d192 now has 226 VGPRs (was 231); d128 private memory is 48 B (was 64). The LDS sizes are unchanged at 163840 / 131072. In the committed version the strict-loop M0 literals equal the reference's values; only register numbers differ.

## LDS DMA wait/alias problem

It appeared and is handled. With one LDS variable, LLVM's LDS lowering adds no alias scopes. The V reads then carry no alias information, so `SIInsertWaitcnts` waits on every outstanding DMA before them: +12 `vmcnt(0)` in the d128 strict loop and +8 in d192. A `__restrict__` parameter on `read_v_fragment` gives those reads scope metadata again, and the loops are exact.

Side effect: six compiler-inserted vmcnt waits before tail V reads disappear (two in d128, four in d192), along with four scratch-reload waits in d128. The reference has none of those six. Reasoning says the kernel's own end-of-stage waits and barriers should cover them, but that is only reasoning, so GPU correctness needs checking.

The other fix: the single array let LLVM duplicate the tail V address add (d192 went from 4 to 6 definitions). A fake use at each selection restores 4, which keeps `test_hip_runtime_pv_reuses_one_v_address` passing.

## LICM outcome

- The steady loop and the tail loop are irreducible cycles. To LLVM the only real loop is the persistent pass loop, so every hoist goes to the kernel entry. "Hoist into the steady loop's own preheader" can't be expressed: the steady loop has four entries and no preheader.
- A "hoist out of innermost loops only" MachineLICM change had no effect for that reason; it was reverted and not committed.
- Disabling MachineLICM entirely still breaks both loops: the float constants, `0x7f` and the V address are rematerialised inside the loop.
- Disabling IR LICM (`-opt-disable=licm`, 484 runs skipped) changes nothing in d128 and breaks the d192 loop (96 compares change encoding).
- Skipping only the first early MachineLICM is the one useful setting. That is the new LLVM flag: in d128 it takes SGPR spills 4→0 and VGPR spills 19→18, with both loops exact. In d192 it adds about 11 positive excess (mostly `s_nop 0`, which moves that count toward the reference's).

## Recommendation and what remains unverified

- Use `3ff0230` (v9) as the candidate; it needs no LLVM change. Treat the flag as an optional d128-focused step: it applies to both kernels at once, and needs the new LLVM build, so it was not added to `setup.py`.
- **Unverified:** GPU correctness (especially the removed waits and the restrict-based scopes), performance, and the codegen tests against the original Debug compiler.
- **Not fixed:**
  - `s_addk_i32` +6/+7: LLVM rewrites the slot-offset shift into a different form.
  - The remaining d128 VGPR spills, from the masked-tail duplicate and some cold addresses; these aren't caused by LICM.
  - The flag doesn't cover the new pass-manager codegen pipeline.

## Tests

- `tests/test_fp8_hip_codegen.py` passes 75 tests, with the stride-guard test deselected because it runs a binary.
- One existing expectation was changed intentionally: the IR check on the V base now accepts a constant offset into the single array.
- New tests: the single array and its group segment size; the steady-loop M0 immediates matching the reference; the single steady V base.
- The verifier's protected checks pass for both dimensions (strict loop, ADD3 = 0, MAD_U24, MUL_LO = 7, memory/float counts, PV address and setup checks).
- LLVM: the new lit test passes, as does `llc-pipeline.ll`. The full AMDGPU CodeGen suite has 79 failures, all `shufflevector.*` tests; their output is identical with the untouched base build, so they predate this work.

## Method

- Builds use the production flags through the new offload driver, so device code goes through LTO in lld. `-Xarch_device -mllvm=X` reaches both the pre-link compile and the LTO step.
- Metrics follow `verify-integrated.py`: scratch, register-only moves and SGPR lane spills are excluded.
- Codegen-only experiments re-run `llc` on the saved pre-codegen bitcode, which reproduces the production ISA byte for byte. Per-pass skips used `-opt-bisect=<intervals>` (in llc numbering, the first and second early MachineLICM are passes 47/56 for d128 and 96/105 for d192). The production `v8` build with the new flag is byte-identical to that skip.

**Part A details**
- The array-base add is kept rather than assuming address 0. It costs nothing: the lowered IR has a single `[163840 x i8]` / `[131072 x i8]` variable at absolute address 0, so the add folds away. Instead of an address-0 assertion, the tests check that the M0 immediates and group segment size match the reference.
- Every DMA uses `s_add_u32 m0, base, imm`, including `+0`, which mirrors the reference's tail loads. A variant using a plain move for group-0 round 0 (`v3`) had the same positive excess but a worse L1 distance, so it was dropped.
- `s_or_b32` falls by 11 (d128) and 18 (d192).
- The first whole-kernel sequence mismatch is unchanged at index 4 in the setup code (d128: reference `v_lshrrev_b32` vs HIP `v_bfe_u32`).

## Full signed histograms (v9 vs owning)

- d128: s_add_u32 −18, s_addk_i32 +6, s_and_b32 +3, s_bfe_u32 −1, s_lshl_b32 −9, s_mov_b32 −12, s_movk_i32 −3, s_nop −1, s_or_b32 −11, s_waitcnt −6, v_add −2, v_and −2, v_lshl_add −2, v_lshl_or −1, v_lshlrev −1, v_lshrrev +1, v_or −4, v_xor −4.
- d192: s_add_u32 +20, s_addk_i32 +7, s_and_b32 +7, s_bfe_u32 −1, scc0/scc1 branches −2/+2, cmp_ge/cmp_lt +2/−2, s_lshl_b32 −6, s_mov_b32 −7, s_movk_i32 −3, s_mul_i32 −3, s_nop +8 (M0→DMA hazard nops), s_or_b32 −18, s_waitcnt −4, v_and −1, v_lshl_add −4, v_lshlrev −1, v_or −5.
- No "other" (non-`s_`/`v_`) excess; the protected memory and float counts are unchanged.
- Totals for v9: L1 distance to the reference 975→978 (d128) and 806→775 (d192); retained instructions 4929→4862 and 3359→3348.

## Files

- `data/variants.csv` — the variant table
- `data/mnemonics-<variant>.csv` — full signed histograms per variant
- `data/<variant>.json` — per-variant evaluations
- `scripts/` — `compile.sh`, `variant.sh`, `evaluate.py`, `protected_checks.py`, `llc_variant.sh`, `bisect_set.sh`, `tabulate.py`. They still point at the worktree path and need it adjusted if the worktree is removed.
- `exp/<variant>/csrc` — the source snapshot for each variant
- `builds/` — compiled objects and disassembly
- `llvm-patches/` — the LLVM commits
