# Masked-tail S duplicate in the HIP FP8 kernel (gfx950): root cause and fix

(Saved by the coordinator from the subagent's returned text; the harness blocked the subagent from writing this file.)

Compile-only; nothing ran on a GPU. The base is the candidate `3ff0230`. All numbers come from the production flags (new offload driver, device full LTO) unless marked "llc". Metrics follow `verify-integrated.py`: scratch, register-source moves and SGPR lane spills are excluded from histograms. "Positive excess" and "L1" are measured against the assembly reference.

## Summary

The d128 masked-tail S duplicate is fixed in source: d128 now has 0 VGPR spills (was 19). Positive excess went 269 → 251 and L1 distance 978 → 958, and the strict loops are still exact. d192 compiles to the same instructions as `3ff0230`.

**Root cause on 3ff0230 (still present).** One earlier claim is corrected: GCN AMDGPU does split critical edges in principle (only R600 forbids it). The real chain is:
- **Source:** `mask()` at `csrc/fp8_native.hip:356-375`. The `delta < 0` fill block (lines 360-361) is empty apart from the -inf assignment, so SimplifyCFG removes it. The IR is left with a 3-way phi: `phi [fresh, T1], [splat(-inf), T2], [sel, E]`. T2, the block that tests `delta < 0`, branches both to the merge and to the elementwise block E, and E still reads the fresh MFMA result.
- **ISel** materialises the -inf in T2.
- **MachineSink** would split the T2→merge edge, and does so for the first-QK mask site, which is why that site masks in place. For the two tail sites it refuses ("PUNTING"): they sit in the tail cycle, which has two entries (`tail0`, `tail1`) and is therefore irreducible, and `isLegalToBreakCriticalEdge` rejects every edge inside an irreducible cycle.
- **PHI elimination** only splits edges when LiveIntervals is available, which it isn't here. That is why `-phi-elim-split-all-critical-edges` changes nothing (still 19 spills).
- **Coalescer:** `%11016 = COPY %5989` hits "interference at %11016:20@96272r" (the -inf write in T2 while the fresh value lives to 97280r). For blocks b–d it joins the copy right after each MFMA instead.
- **Cost:** 32 `v_mov_b64` per site, run on every path, plus 12 HIP-only `s_nop 15/3`. Pre-RA tail peak is 266.

**d192 has the same pattern** (32 of 96 selects not in place), but it doesn't spill. Its tail peak (203, reference 193) comes from the QK MFMA chain, not the mask.

**Fix** (commit `26ee844`; clean single commit `dad28b2` on branch `masked-tail-fill-block`):
- The diagonal path comes first in `mask()`, so the second test keeps the reference's `s_cmp_lt_i32`/`s_cbranch_scc1` form.
- For d128 only, a `SCHED_FENCE` keeps the -inf fill in its own block, like the reference's `.Lmfull`.
- For d128 only, a 0.85 `__builtin_expect_with_probability` weight on the diagonal path. Without it, block placement drops the 240-instruction pvo chain between the diagonal path and the fill. With `[[likely]]` instead, SGPR spills went 4 → 230, so the weight value matters.
- d192 keeps the old form: fencing it costs +4 `s_branch` and +3 `s_nop` against a kernel that doesn't spill.
- New test `test_hip_d128_causal_mask_selects_scores_in_place`, which fails on `3ff0230`.

| variant | spills V,S d128 | tail peak d128 | pos. excess d128/d192 | L1 d128/d192 | s_nop Δ | in-order matches d128 |
|---|---|---|---|---|---|---|
| 3ff0230 | 19,4 | 266 | 269/193 | 978/775 | 0 | 2575 |
| s5 fence (v1) | 0,4 | 203 | 272/202 | 1000/786 | −16 | 2514 |
| diagonal first (v2) | 0,4 | 203 | 251/200 | 958/782 | −16 | 2520 |
| **final** | **0,4** | **203** | **251/193** | **958/775** | **−16 / 0** | **2577** |
| final + interleave (x9b) | 0,4 | 219 | 257/193 | 964/775 | −10 | 2691 |
| s3 fold (v10) | 0,0 | 203 | 278/187 | 1021/775 | −2 | 2573 |

"Tail peak" is pre-RA VGPR demand around the mask. For the final build, the d128 changes against `3ff0230` are `s_branch` +8, `s_nop` −16, `s_waitcnt` −7, `v_xor` −1. Scratch goes 18 → 0, the 4 SGPR lane spills remain, and the codegen tests pass 76.

**Mask/stats placement.** It doesn't cause the duplicate. Moving mask and row-max under the QK MFMAs, as the reference does (x9b), passes every check and adds 114 in-order matches, but costs +6 `s_nop`. Treat it as an optional follow-up for the ordering goal.

**LICM-agent branch (`af5d329`).** The duplicate is already gone there, with or without `-disable-machine-licm`: all 192/96 selects are in place in both dimensions. Its opaque -inf value stops SimplifyCFG from folding the fill. The 0.85 weight composes with it: with `-disable-machine-licm`, d128 positive excess 263 → 261, L1 916 → 914, in-order matches 2498 → 2578, d192 unchanged. That is on branch `masked-tail-weight-on-af5d329` (`ebddf9d`). `3ff0230` stays the primary base.

**Numerics.** The masked values should be bit-identical:
- Delta comes from the same `s_sub_u32`/`s_sub_i32` sequence.
- The integer ranges are identical: [32,∞) unchanged, [0,32) elementwise, below 0 filled.
- The elementwise code and the -inf bits (0xff800000) are unchanged.
- The fence and the weight have no semantic effect.
- Row max and sums read the same S values.
- The compiler pads the new read-after-MFMA and overwrite-MFMA-destination hazards itself.

**LLVM.** No commits. The narrowest change would be in `MachineSinking::isLegalToBreakCriticalEdge`: refuse only edges that enter the cycle (`FromCycle->isEntry(ToBB)`) instead of every edge in an irreducible cycle. Not implemented because a source fix exists. It would also fire in d192 (about +7 positive excess) and possibly inside the irreducible strict loop.

**Unverified:**
- GPU correctness and performance.
- Whether the hazard padding is sufficient.
- How robust the 0.85 placement weight is to future code changes.
- The 4 remaining d128 SGPR spills.
- The new d128 VGPR peak of 254 pre-RA, in the tail P-code FMAs that don't write in place.

## 1. Root cause on 3ff0230

The duplicate is still there. Of the 192 diagonal selects in d128 (3 sites × 4 blocks × 16), 128 are not in place: `v_cndmask v112, v176, v241, vcc` reads the MFMA result and writes a second register. Pre-RA VGPR demand peaks at 266 in tail_normal (owning: 270). The ISA live/demand peak is 256/266 in the masked tail.

**Source.** `csrc/fp8_native.hip:356-375`, `mask()`:

```cpp
if (delta >= 32) return;
if (delta < 0) { s = fx16{} + neg_inf(); return; }      // :360-361
... s[k] = select_wave_mask(visible, s[k], neg_inf());   // :371, elementwise
```

Callers:
- `FP8_MASKED_MM` (lines 1427/1430/1434/1437, after `qk()` at 1419). This runs in tail stages normal0/normal1, the two sites with the duplicate.
- The first-QK masked path in `attend` (lines 1692–1702, "qk0m"). This site is not affected; see MachineSink below.

**IR phi** (`ir-b0-tail-mask-a.ll`). SimplifyCFG removes the empty `delta < 0` block, leaving:

```
%s.sroa.0.13 = phi <16 x float> [ %2796, %T1 ], [ splat (float -inf), %if.end.i3617 ], [ %vecins.i3644.3.3, %if.end5.i3619 ]
```

T2 (`if.end.i3617`) branches to both the merge and E. E still reads `%2796`, the fresh QK MFMA result.

**Pass by pass:**
1. **ISel** materialises the constant in T2 (bb.76): `S_MOV_B32 -inf`, then a 16-SGPR `REG_SEQUENCE`, then `%10741:av_512 = COPY`. The PHI becomes `%516 = PHI %509(bb.75), %10741(bb.76), %515(bb.77)` (`mir-b0-finalize-isel-T1-T2.mir`). No second live copy exists yet.
2. **MachineSink** would sink that copy onto the T2→merge edge by splitting the edge.
   - It does this for the qk0m site ("Splitting critical edge: %bb.16 -- %bb.166 -- %bb.18"), which is why qk0m masks in place.
   - At the tail sites it reports "Critical edge found / PUNTING: Not legal or profitable to break critical edge".
   - The tail blocks lie in the depth-2 tail cycle, which has two entries (`entries(bb.128.tail1 bb.76.tail0)`, see `cycles-b0.txt`) and is therefore irreducible. `MachineSinking::isLegalToBreakCriticalEdge` refuses any edge inside an irreducible cycle.
3. **PHI elimination** inserts `home = COPY fresh` at the end of T1 and `home = COPY -inf` at the end of T2.
   - In this LLVM it splits critical edges only when LiveIntervals is available (`if (!DisableEdgeSplitting && LIS)`). The legacy pipeline doesn't provide it here, so `-phi-elim-split-all-critical-edges` is a no-op (llc run x11: still 19 spills).
   - Even with LiveIntervals, its heuristic would not split this edge, because `%10741` dies at the PHI.
4. **Register coalescer.**
   - Block a: `96088B %11016 = COPY %5989` fails with "interference at %11016:20@96272r". Value 20 is the -inf definition in T2, and `%5989` stays live to 97280r, its last read in E (`coalescer-b0-interference.txt`).
   - Blocks b–d (for example `%11162 = COPY %5990`, "interference at %11162:2@97872r"): the home register is joined with the AV copy right after each MFMA, so the leftover copy sits right after the MFMA.
   - So the earlier report's "duplicate exists at ISel" is true only of the IR value graph. The second live copy is the PHI-elimination copies, made permanent by the coalescer.

**Which blocks and paths run it** (both tail sites, `isa-b0-d128-tail-mask.lst`):
- `v_mov_b64` ×8 per S block (fresh → home), after `s_nop 15; s_nop 3` for blocks a–c. That is 32 per site and 64 in total; `v_mov_b64` falls 320 → 256 with the fix. These copies run on every path, including fully visible blocks, because they sit in or before T1.
- 8 `v_mov_b64 home <- s[52:67]` -inf writes in T2, which run on both the full and the diagonal path.
- 12 of the `s_nop`s are HIP-only.

**d192.** Same pattern at both tail sites × 2 blocks: 16 `v_mov_b32` copies after `s_nop 1`, plus `v_mov_b32 v64, 0xff800000` in T2. 32 of 96 selects are not in place. d192 doesn't spill. A separate fill block lowers its mask-window demand from 186 to 171. Its tail_normal peak of 203 (reference 193) is in the QK MFMA chain (the C=0 early-clobber MFMAs), so the duplicate doesn't set the d192 peak.

## 2. Variants (production LTO; d128 / d192)

| variant | strict loop | V,S spills | tail mask window (tail_normal) | pos. excess | L1 | s_nop Δ | s_waitcnt Δ | in-order matches |
|---|---|---|---|---|---|---|---|---|
| b0 = 3ff0230 | exact / exact | 19,4 / 0,0 | 266 (266) / 186 (203) | 269 / 193 | 978 / 775 | 0 / 0 | 0 / 0 | 2575 / 1814 |
| v1 s5 fence | exact | 0,4 / 0,0 | 203 (235) / 171 | 272 / 202 | 1000 / 786 | −16 / +3 | −7 / 0 | 2514 / 1909 |
| v2 diagonal first + fence | exact | 0,4 / 0,0 | 203 (235) / 171 | 251 / 200 | 958 / 782 | −16 / +3 | −7 / 0 | 2520 / 1915 |
| v3 = v2 + VGPR −inf | exact | 0,0 / 0,0 | 203 / 171 | 277 / 200 | 982 / 782 | +11 / +3 | −7 / 0 | 2583 / 1915 |
| v5 = v2, fence d128 only | exact | 0,4 / 0,0 | 203 / 186 | 251 / 193 | 958 / 775 | −16 / 0 | −7 / 0 | 2520 / 1814 |
| v6 = v2 + `[[likely]]` | exact | 0,**230** / 0,0 | 203 / 171 | 264 / 199 | 975 / 781 | −4 / +2 | −7 / 0 | 2520 / 1862 |
| v7 = v2 + 0.85 weight | exact | 0,4 / 0,0 | 203 / 171 | 251 / 199 | 958 / 781 | −16 / +2 | −7 / 0 | 2577 / 1862 |
| **final (v8)** | exact | **0,4 / 0,0** | **203 (235) / 186** | **251 / 193** | **958 / 775** | **−16 / 0** | **−7 / 0** | **2577 / 1814** |
| x9b = final + interleave | exact | 0,4 / 0,0 | 219 (235) / 186 | 257 / 193 | 964 / 775 | −10 / 0 | −7 / 0 | **2691** / 1814 |
| v10 s3 fold | exact | 0,0 / 0,0 | 203 / 171 | 278 / 187 | 1021 / 775 | −2 / −4 | −7 / 0 | 2573 / 1855 |
| llc x11 split-all | exact | 19,4 / 0,0 | 266 | 267 / 192 | 977 / 774 | −2 / 0 | 0 | – |

- **Tail mask window:** the pre-RA maximum from the last QK MFMA to the first `v_max` after the last mask. The bracketed number is the whole tail_normal block range.
- **Final d128 against 3ff0230:**
  - Histogram: `s_branch` +8 (the 12 out-of-line fills each end in a branch; −4 from layout elsewhere), `s_nop` −16 (`15:−6, 3:−6, 0:−4, 1:−4, 2:+2, 5:+2`), `s_waitcnt` −7 (`vmcnt(0)` −7, `vmcnt(0) lgkmcnt(4)` −2, `lgkmcnt(4)` +2), `v_xor` −1.
  - Resources: VGPR 256 → 255 (ISA live peak 256 → 239), scratch 18 → 0, private segment 48 → 0. SGPR spills stay at 4 (20 lanes).
  - The first whole-kernel mismatch with the reference stays at index 4. Against `3ff0230` the first difference is at retained index 173, where setup is rescheduled after register allocation.
- **Final d192:** identical instructions to `3ff0230`.
- **Checks:** protected checks pass (strict loop, ADD3 = 0, MAD_U24, MUL_LO = 7, protected counts, PV address, u24 setup). `tests/test_fp8_hip_codegen.py` passes 76 (75 plus the new in-place test, which fails on `3ff0230`); the stride-guard test is deselected.

**Why the earlier variants regressed, and what the final version fixes:**
- **s5 (v1):** writing the fill before the diagonal path flips the second test to `s_cmp_ge_i32`/`s_cbranch_scc0`, +12/+12 against the reference's `s_cmp_lt_i32`/`s_cbranch_scc1`. Putting the diagonal path first fixes this.
- **Block placement:** placement won't fall from E into the merge because the fill also wants to ("non-cold CFG conflict" at the 80% hot threshold, `mbp-v2-conflict.txt`). It then pulls the 240-instruction pvo chain between E and the fill, costing 55 in-order matches. A 0.85 weight lets E→merge win and moves the fill out of line.
  - `[[likely]]` (2000:1) does the same but takes d128 SGPR spills to 230.
  - Weights on the visible test are dropped and have no effect.
- **d192:** the separate block always costs it about +4 `s_branch` and +3 `s_nop` against a kernel that doesn't spill, so the fence and weight apply to d128 only.
- **VGPR -inf (v3, s9-style):** removes all SGPR spills, but fewer `S_MUL` rematerialisations (−10) expose M0→DMA `s_nop 0` (+19).
- **s3 fold (v10):** removes the test branch: +12 `s_cmp_ge`/`s_cselect`, −12 `s_cmp_lt`/`scc1`. That is +9 positive excess in d128. d192 gets −6 at equal L1, but its shape no longer matches the reference.

## 3. Mask/stats placement

- **Duplicate:** placement doesn't cause it; the phi copy does.
- **Pressure:** not interleaving actually helps, because no fragments are live at the mask (203 against the reference's ~214).
- **x9b prototype:** follows the reference's masked MM, running mask and row-max of block j after the final QK MFMA of block j+1.
  - It splits `FP8_COMPUTE_STATS` into the maxima and `FP8_STATS_FROM_MAX`; that split alone changes no instructions.
  - It passes the strict loops, the protected checks and the 76 tests.
  - Whole-kernel in-order matches go 2577 → 2691 (tail sites 148 → 178 of 208), the mask window 203 → 219, still no spills.
  - It costs +6 `s_nop` (`cndmask` → `v_max`, which the reference also pads with `s_nop 1`).
  - PV#1 isn't moved under the masks yet.
- **Recommendation:** an optional next step for instruction order.

## 4. Composition with the LICM work (af5d329, `-disable-machine-licm`)

- **No duplicate on af5d329, with or without `-disable-machine-licm`.** All selects are in place in both dimensions (192/192, 96/96) and `v_mov_b64` is 256. 47ffdef's opaque `ninf` makes the fill a real computation, so SimplifyCFG no longer folds it; af5d329 puts the diagonal path first. So af5d329 already contains the structural half of this fix, for both dimensions.
- **The 0.85 weight composes.** Against af5d329 + `-disable-machine-licm`:
  - d128: positive excess 263 → 261, L1 916 → 914, in-order matches 2498 → 2578, still 0/0 spills.
  - d192: unchanged.
  - Applying the weight to d192 too is slightly worse (204 / 746, order 1895).
- **The fence** is redundant on af5d329 but harmless.
- **Branch:** `masked-tail-weight-on-af5d329` (`ebddf9d`); 75 tests pass, and the new in-place test also passes on af5d329.
- **Base:** `3ff0230` stays the primary base.

## 5. LLVM

The copy is avoidable in LLVM. The narrowest change is in `MachineSinking::isLegalToBreakCriticalEdge`, which currently refuses every edge inside an irreducible cycle:

```cpp
if (FromCycle == ToCycle && FromCycle &&
    (!CI->isReducible(FromCycle) || CI->getHeader(FromCycle) == ToBB))
  return false;
```

It only needs to refuse edges into a cycle entry (`FromCycle->isEntry(ToBB)`).
- Edges into an entry are back or entering edges.
- T2→merge goes to a non-entry block, so MachineSink would then split it as it does for qk0m.

An alternative: let PHI elimination split edges without LiveIntervals, and add a heuristic that splits Pred→MBB when another incoming value of the same PHI (looked up through copies) is live into a sibling successor of Pred.

Neither is implemented, and there are no LLVM commits:
- A source fix exists.
- Both changes would also fire in d192 (about +7 positive excess, like v2).
- They could fire inside the irreducible steady loop, which risks the strict loop.

## 6. Numerics (reasoned, not run)

- **Same delta:** the same inline-asm `s_sub_u32`/`s_sub_i32` produce it.
- **Same partition:**
  - Old order: `>= 32` unchanged, `< 0` filled, otherwise elementwise.
  - New order: `>= 32` unchanged, `>= 0` elementwise, otherwise filled.
  - Over the integers both give [32,∞) unchanged, [0,32) elementwise, below 0 filled.
- **Elementwise path:** byte-identical source: the same threshold, `sicmp` predicate 38, and `v_cndmask` with `neg_inf()`.
- **Fill:** the same `fx16{} + neg_inf()`, constant-folded to `splat(0xff800000)` under `-fhonor-infinities`.
- **No semantic effect:** `SCHED_FENCE` and `__builtin_expect_with_probability`.
- **Downstream:** row max (`v_max`/`v_max3`, permlane32 swap), m, the rescale vote, offsets, P codes and row sums read bit-identical S; register assignment doesn't change FP results.
- **New hazards:** the compiler pads the new read-after-MFMA edge (the diagonal path reads the MFMA result directly: `s_nop 2`/`5`) and the overwrite-MFMA-destination edge (the fill; in d192 `s_nop 7`/`11`).
- **x9b:** computes the same maxima earlier. `fmaxf` is exact and the combination order is unchanged.

## 7. Unverified

- GPU correctness and performance.
- Whether the hazard padding on the new RAW/WAW edges is sufficient; this relies on this LLVM's gfx950 hazard recognizer.
- How robust the 0.85 placement weight is to future code; block placement is a heuristic.
- The MachineSink change (not built).
- The 4 remaining d128 SGPR spills, partly from the -inf SGPR splat.
- The new d128 VGPR peak (254 pre-RA): the tail_pvo and masked P-code FMAs don't write in place.
- The codegen tests use a non-LTO llc path; the production numbers come from the LTO build.

## Files

Everything is in this directory:
- `data/summary.md` / `data/summary.csv` — the variant table.
- `data/hist-<variant>.csv` — full signed histograms against the reference and `3ff0230`.
- `data/evidence/` — the IR, ISel/coalescer MIR, coalescer interference, cycle info, MachineSink split/punt and ISA excerpts.
- `scripts/` — the adapted build, evaluation and test tools, plus new pressure, order and summary tools.
- `exp/<variant>/csrc` — source snapshots; `builds/`, `ir/`, `logs/` — outputs.

Commits (local only):
- Worktree branch `worktree-agent-a22a21b5dd3cce8a1`: variant commits `440dfeb` … `959ea8e` (x9b is `6c81fbf`); tip `26ee844` is the final fix.
- `masked-tail-fill-block` `dad28b2`: the clean single commit on `3ff0230`, same tree as `26ee844`.
- `masked-tail-weight-on-af5d329` `ebddf9d`.
