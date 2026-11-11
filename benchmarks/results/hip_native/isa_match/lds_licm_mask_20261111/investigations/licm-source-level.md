# Why LICM can't be disabled, and LICM at source level

(Saved by the coordinator from the subagent's returned text; the harness blocked the subagent from writing this file.)

Compile-only; nothing has run on a GPU. Source commits are on `worktree-agent-ac16d545a81ddc86c` (worktree `/home/jinpli/workspace/home/jinpli/development/zyfa/.claude/worktrees/agent-ac16d545a81ddc86c`), on top of `3ff0230`, local only.

## Summary

Exact strict loops do not need LICM, provided four loop constants are made opaque in the source. With them held in registers and LICM off for the pass loop, both loops stay exact (1333 / 825) and the d128 spills go away.

**Correction to the earlier finding:** `-opt-disable=licm` never disabled the codegen LICM in llc/lld, because that pass is gated on its name, `Loop Invariant Code Motion`. Turning off all 7 IR LICM runs needs `-opt-disable=licm,Loop Invariant Code Motion`.

**Why each configuration breaks the loop** (every difference repeats once per stage, ×4):

| Config | d128 | d192 | What changes in the loop, and why |
|---|---|---|---|
| IR LICM off | exact | 825, broken | 4× `v_cmp_lt_f32_e32 vcc` becomes `_e64 s[0:1]`. Without LICM, the `lse ? … : nullptr` pointer stays a branch rather than a select, and its kernel-invariant `lse == null` mask sits in VCC across the whole loop, so the compare can't use VCC. The same cause re-encodes 96 masked-tail compares outside the loop. |
| MachineLICM off (post-RA instance has no effect) | 1353, broken | 841, broken | Constants are re-created at every use: `v_mov 0x7f` plus `s_nop 1`, `s_mov` 0.125, `s_mov` −127.0, and in d128 `s_mov` −8.0. Instruction selection makes one move per use and only MachineLICM hoists them. |
| Both off | 1353 | 841 | The union of the two rows. |

No configuration recomputes addresses or changes scheduling inside the loop.

**Invariants with no source-level handle:** 0x7f (MFMA scale), −127.0, −8.0, 0.125, and −inf (masked tail, outside the loop). They are LLVM constants, not SSA values, so IR LICM never sees them and writing them earlier in the source changes nothing. For 0.125 the reference uses a literal in the compare, which LLVM cannot produce; the best it can do is a register defined once before the loop.

**Source-level variants** (d128 / d192; "Δ" is positive-excess change against `3ff0230`; LCS is the whole-kernel order match, higher is better):

| Variant | Loops | Spills (VGPR,SGPR) | Positive excess (Δ) | L1 | LCS |
|---|---|---|---|---|---|
| `3ff0230` | exact | 19,4 / 0,0 | 269 / 193 | 978 / 775 | 3247 / 2155 |
| s1 (opaque constants), production LICM | exact | **44**,0 / 0 | +57 / −5 | 1043 / 774 | 3288 / 2155 |
| s1, all hoisting off by flags | exact | 0 / 0 | +14 / +12 | 956 / 746 | 3193 / 2162 |
| s2a, stock LLVM, production flags | exact | 0 / 0 | +1 / +12 | 944 / 755 | 3186 / 2168 |
| **s2a, patched LLVM, production flags** | exact | 0 / 0 | **−6 / +10** | **916 / 745** | 3212 / 2168 |
| s2b, patched LLVM | exact | 0 / 0 | −14 / +8 | 919 / 748 | 3214 / 2168 |

**Compiler control actually needed:**
- **IR LICM:** nothing new. `#pragma clang loop licm(disable)` works once the goto-based pass loop is written as `for (;;)`, with the same control flow. The metadata reaches the loop latch in both kernels after LTO.
- **MachineLICM:** a small patch makes it honour the same pragma. Without the patch, `-disable-machine-licm` produces byte-identical output, but it applies to the whole file.
- The `-amdgpu-early-machinelicm-before-fold` option and `-opt-disable` are no longer needed.

**Recommendation:** take s2a (`af5d329`) with the MachineLICM patch, or with `-disable-machine-licm` if you'd rather not change LLVM. The protected ISA checks pass and `tests/test_fp8_hip_codegen.py` passes 75 tests on both LLVM builds.

**Still open or unverified:**
- d192 positive excess is +10 against `3ff0230`: per-pass address terms are no longer hoisted.
- d128 whole-kernel order match drops by 35, from alignment differences in the masked tail.
- Nothing has run on a GPU: correctness and performance of the asm constants, the select-based LSE pointer, and the waits removed in `3ff0230` are untested.

## 1. Why disabling LICM breaks the loop

- **IR LICM off.** d128 is exact. d192 is broken:
  - 4× `v_cmp_lt_f32_e32 vcc, 0x3e000000, v` becomes `v_cmp_lt_f32_e64 s[0:1], sN, v`.
  - With LICM on, LICM hoists three of the instructions in the `lse ? … : nullptr` block and SimplifyCFG turns the rest into a `select`. Without LICM the block keeps 7 instructions and stays a branch on `%tobool.not.i3842` (`lse == null`), which GVN shares with the first `set_pass`.
  - That condition becomes one `S_AND_B64 $exec` mask, copied into VCC at the prologue branch and at 4+ post-loop branches.
  - Greedy register allocation follows the copy hint and gives the mask VCC for its whole range. The in-loop compares are also hinted to VCC but can't get it, so they stay VOP3.
  - Whole kernel: `v_cmp_gt_i32` e32→e64 ×96; `s_cbranch_vccnz`/`vccz` +4/+4; `s_cselect_b32` −8.
- **MachineLICM off** (`-disable-machine-licm` disables both early instances). Per stage:
  - `v_mov_b32 0x7f` plus `s_nop 1`, the hazard before the MFMA scale read.
  - `s_mov_b32 0x3e000000` (0.125).
  - `s_mov_b32 0xc2fe0000` (−127.0).
  - d128 only: `s_mov_b32 0xc1000000` (−8.0).
  - Post-RA MachineLICM: the output is byte-identical whether it runs or not.
- **Both off:** exactly the union of the two lists above.

## 2. Variants

Commits on `worktree-agent-ac16d545a81ddc86c`, local only:

- `47ffdef` **s1:** one-instruction `asm volatile` `v_mov`/`s_mov` helpers. A `LoopConstants kc` struct holds the constants, defined once at kernel entry as the reference does in its setup. `lh` is now a select.
- `38c4d97` **s1p:** the pass loop is `for (;;)` with `#pragma clang loop licm(disable)`.
- `af5d329` **s2a:** the elementwise mask path is written first, which gives the reference's `s_cmp_lt_i32 0` / `s_cbranch_scc1`.
- `4d23b76` **s2b:** the mask lane term is computed once per tile, like the reference's V_THR.

Register counts for the recommended build: d128 244 VGPR / 88 SGPR (was 256 / 106), d192 206 / 90 (was 226 / 106).

Configuration results for s1:

| Config | Strict loops | d128 VGPR spills |
|---|---|---|
| Production LICM | exact | 44 |
| IR LICM off, MachineLICM on | exact | 0 (positive excess 292 / 206) |
| Early MachineLICM #1 skipped as well | exact | 0 (positive excess 280 / 204) |

The full table, including every configuration, is in `data/summary-final.csv`.

## 3. LLVM

New worktree `/home/jinpli/workspace/home/jinpli/development/workspace/01/llvm-licm-src`, branch `2026-11-11-machinelicm-loop-md` (on top of `2026-11-11-lds-imm-licm`), built the same way as `llvm-lds-licm/build`. Two local commits:

- `f540cd896bb4` `[MachineLICM] Precommit llvm.licm.disable tests (NFC)`
- `282bb0968039` `[MachineLICM] Honor llvm.licm.disable loop metadata`

How it was checked:
- The two MIR tests were confirmed to show hoisting before the fix; their checks were regenerated with the official update script and are byte-stable.
- Lit over AMDGPU, X86, Generic, MIR and Transforms/LICM: 12003 tests, 79 failures, all `AMDGPU/shufflevector.*`, which already failed before this work.
- Before the change, the new build reproduced the stock build's output exactly. After it, s2a with no extra flags is byte-identical to s2a built with MachineLICM disabled.

Patches are also exported to `llvm-patches/`.

## Files

In this directory:
- `data/summary-final.csv`
- `data/loopdiff-*.csv`
- `llvm-patches/`
- `scripts/` (`loopref.py`, `summary.py`, `lcs_regions.py`, `run_configs.sh`)

The working copy is the same path under the worktree's `build/`, and `variant.sh` still points there.
