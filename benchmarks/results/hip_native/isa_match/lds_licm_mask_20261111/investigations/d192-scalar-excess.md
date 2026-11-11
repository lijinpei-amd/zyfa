# d192 scalar (`s_*`) mnemonic excess: investigation report

(Saved by the coordinator from the subagent's returned text; the harness blocked the subagent from writing this file.)

Scripts, CSV/JSON data, variant diffs and experiment deltas are in this directory. The scripts' working layout (`base`, `base_g`, `exp`, `fullcompile`, batch logs) lives in the agent worktree at `/home/jinpli/workspace/home/jinpli/development/zyfa/.claude/worktrees/agent-a52c4c596d6e77c43/build/inv/` (113 MB). No commits, LLVM rebuilds or GPU runs; frozen artifacts untouched.

## Summary

**Baseline.** The CSV figures reproduce exactly (+179 positive, +136 excluding `s_nop`, −239 net). A setup.py-identical build from `4dd38ce` matches the owning ISA instruction for instruction. Source ownership comes from a `-gline-tables-only` build with identical ISA, plus the reference generator run with instrumentation.

**By region.**

| region | net scalar Δ | main cause |
|---|---:|---|
| tail | **+85** | 64 VCC nops, per-path slot recompute (+18 `s_lshl_b32`, +12 `s_or_b32`, +6 `s_xor_b32`) |
| preheader (HIP only) | **+39** | about 11 LDS literals pinned in SGPRs by the `"s"` inline-asm constraint |
| pass_start | −25 | |
| transition | **−314** | the reference recomputes slot/offset for every DMA round |
| others | small | |

**Substitution vs added work.**
- Pure substitutions:
  - `s_or_b32` +34 replaces `s_add_u32` (proven 1:1).
  - `s_and_b64` +21 replaces `s_cmp_eq_*`.
  - `s_not_b32` +9, `s_xor_b32` +7, `s_bfe_u32` +5, `s_cmp_lg_u32` +9 (branch polarity; the reference never uses lg).
  - The `s_cmp_ge/lt_u32` vs `s_cmpk_le_u32` forms.
- Genuinely added:
  - `s_mov_b64` +9: the `pass==0` boolean PHI edge masks plus one null LSE pointer.
  - `s_cselect_b64` +5.
  - `s_mov_b32` +8 and `s_movk_i32` +4 (preheader literals).
  - `s_waitcnt` +4 and `s_nop` +43.

**`s_nop` (183 vs 140).**
- **+98** are LLVM's 2-wait pads between `v_cmp` and `v_cndmask` in the masked QK/MM paths and entry. Kept, as required; the reference assumes the unproven VCC interlock.
- Offsets: −39 M0→LDS-DMA pads, −12 MFMA pads, −5 permlane/transcendental, +1 `.p2align` fill (0xb8dc).
- One retained `s_nop 4` (0xb740) exists only because of the SGPR lane-spill reload.

**`s_waitcnt` (+4).**
- Entry +2: the descale multiply sits inside the descale-null branch structure.
- First job +1: the LSE-null branch splits the job-table wait.
- Last tile +2: `vmcnt(6)` before the last PV drains the next pass's group-0 LDS DMA, which the reference doesn't do. This may cost performance; unmeasured.

**Experiments** (compile-only, all keep the strict loops 1333/825):
- **E8b**, K DMA base via `scalar_add`: `s_or_b32` −33, `s_add_u32` +34.
- **E13**, `pass = scalar_increment(0u)`: `s_mov_b64` −8, `s_and_b64` −4, `s_cmp_lg_u32` −4, `s_cmp_eq_u32` +8.
- **E2**, masked-MM rescale tested via readfirstlane, like the steady loop: `s_and_b64` −4, `s_cselect_b64` −2.
- **E2+E8b+E13 combined**: d192 scalar positive 179→120, all-mnemonic Σ|Δ| 806→698; d128 positive 272→250. Resources unchanged.

**Ranked fix candidates.**
1. E8/E8b (source, shared, low risk).
2. E13 (source; d128 `s_cbranch_vccz` +4) or the equivalent compiler fix. Emulated: d192 positive −16, no d128 effect.
3. E2 (source, very low risk).
4. LLVM uniform-compare sinking plus an eq/scc0 polarity peephole. Emulated d192 positive 179→160 (→144 combined with the pass-PHI fix), and it **removes the d192 lane spill**. LLVM's own FIXME at `AMDGPUISelLowering.h:425` describes the gap.
5. Immediate LDS operands in inline asm (needs a backend change). Mixed for d192 counts (`s_nop` +16), but removes the d192 spill and cuts d128 SGPR spills 14→3.
6. The VCC pads are blocked: architectural evidence is needed, and the SGPR-pair interleave alternative only moves the distance into vector rows.

**Rejected:** readfirstlane group tests (spills rise), `tile*step` offsets (d192 spills 1→11), `"si"`/`"i"` constraints (compile/link errors), separate-storage hints for the last-PV wait (no effect).

**For the spill investigator:** the spilled value is `k_ss<<7`, the group-0 K tile-2 offset, hoisted at 0xabd4 and reloaded at 0xb738. Freeing SGPRs (sinking uniform compares, or LDS immediates) removes it; E9a and E5 make it worse.

**Unverified:**
- No GPU numerics or timing.
- Compiler candidates are IR/MIR emulations, not LLVM patches.
- Codegen tests were not run on the variants.
- The d128 side effects (`s_nop` +6 under sinking, `vccz` +4 under E13) were not root-caused.
- Sequence order was not analysed.

---

## 0. Method and provenance

- **Counts.** `whole-mnemonics.csv`, `dimension=192`, `s_` rows, with the verifier's filter (compare_isa exclusions plus lane spills). Scalar totals: HIP 1121 vs reference 1360. All rows reproduced.
- **Builds.**
  - `scripts/fullcompile.sh` (exact setup.py, LTO) matches the owning d128 and d192 ISA instruction for instruction.
  - `compile.sh` (device-only `-S`, optionally `-gline-tables-only`) is d192-identical. It gives block labels and per-instruction inline source chains via `llvm-symbolizer --inlining`.
- **Reference ownership.** `ref_owner.py` runs `csrc/asm/d192.py` unmodified with an instrumented line buffer. It records the generator method chain and pad reason for all 3960 instructions, which match `assembly_d192.s`.
- **Regions** (`regions.py`):
  - `entry` and `first_job`.
  - `preheader`: HIP BB1_14.
  - `pass_start`: QK0, masks, group-0 V1/K2/K3, stage dispatch.
  - `steady`.
  - `tail`: dispatch, state, dead, pvo, normal.
  - `last`: head, PV, join.
  - `transition`: four instances.
  - `output_loop` and `output_final`.
  - `alignment`.
- **Data** (`data/`):
  - `row_region_table.csv`: mnemonic × region.
  - `hip_scalar_instances.csv`, `ref_scalar_instances.csv`: every scalar instruction with PC, region, block or label, and source or generator chain.
  - `nop_attribution.csv`, `wait_attribution.csv`, `experiments.csv`.
  - `variant_diffs/`.

## 1. Scalar Δ by region (HIP − reference)

| region | net | positive part / negative part |
|---|---:|---|
| entry | −6 | +7 / −13 |
| first_job | −11 | +17 / −28 |
| preheader | +39 | +39 / 0 |
| pass_start | −25 | +38 / −63 |
| steady | 0 | the +1 alignment nop lies outside the loop |
| tail | +85 | +105 / −20 |
| last | 0 | +24 / −24 |
| transition | −314 | +74 / −388 |
| output loop / final | −2 / −6 | |

Selected rows, with per-region deltas:

| row | Δ | per-region breakdown |
|---|---:|---|
| `s_nop` | +43 | pass_start +18, tail +54, last +2, transition −28, first job −4, alignment +1 |
| `s_or_b32` | +34 | tail 12, transition 16, pass_start 4, first job 2 |
| `s_and_b64` | +21 | transition 12, tail 4, first job 3, pass_start 1, final 1 |
| `s_mov_b32` | +8 | preheader +14, last +10, entry −6, transition −8, first job −2 |
| `s_add_u32` | −155 | transition −112, pass_start −26, … |
| `s_mul_i32` | −99 | transition −84, … |
| `s_and_b32` | −61 | |

Converting positive rows into the reference's negative-row mnemonics improves both sides of the distance.

## 2. Positive rows: owner and kind

PCs are current owning PCs.

- **`s_or_b32` +34** — K DMA M0 bases from `load_k_chunk` lines 209–214, two per K load pair:
  - Examples: `s_or_b32 sX, slot<<14, s72` and `s_or_b32 m0, sX, 0x2000`.
  - PCs: tail 0xd5f0/0xd608, transitions 0xebc8…, pass_start 0xb414/0xb444/0xb730/0xb764, first job 0xaab8/0xaac8.
  - Cause: InstCombine marks the add `or disjoint`. The reference uses `s_add_u32`.
  - Kind: substitution. Shared with d128 (+23).
- **`s_and_b64` +21** — EXEC tests of uniform i1 values kept as 64-bit lane masks:
  - `pass==0` PHI (0xeb9c/0xed88/0xef74/0xf26c).
  - `group==0`, hoisted to the preheader (0xb3e0, 0xebbc, 0xeda8, 0xef94, 0xf28c, 0xfd14).
  - LSE-null (0xa9c0, 0xece4, 0xeed0, 0xf0bc, 0xf3b4).
  - `args.pair` (0xa99c, 0xaa24).
  - Masked rescale (0xd4f0, 0xd6f4, 0xe140, 0xe344).
  - The reference uses `s_cmp_eq_u32/u64` instead. Kind: substitution. Shared.
- **`s_cselect_b64` +5** — lane-mask materialisations:
  - Pair (0xa998), LSE (0xa9b4), group (0xabcc).
  - The second masked-rescale mask (0xd4f8, 0xe148).
  - Kind: added. Shared.
- **`s_mov_b64` +9** — `±1` edge masks for `phi i1 [true],[false]` built beside `phi i32 pass [0],[1]`:
  - Edge masks at 0xe7d8, 0xe82c, 0xe99c, 0xeb0c, 0xeb70, 0xed5c, 0xef48, 0xf240.
  - Plus the null LSE pointer at 0xa9b8.
  - Kind: added. d192-specific.
- **`s_cbranch_vccnz` +1** — the first-job LSE branch at 0xa9c4. Kind: substitution.
- **`s_not_b32` +9** — `num_q+~qx` in place of the reference's two `s_sub_u32`.
  - PCs: 0xaa2c, the four transition compares, the four qblk selects.
  - Kind: substitution. Shared.
- **`s_cmp_lg_u32` +9** — `pass!=0` ×4, `qx!=mirror` ×4, one switch leaf.
  - Cause: ISel inverts the compare when the then-block is the fallthrough. The local SCC1-preference flag isn't the cause; it only rewrites `lt_u32` + `scc0`.
  - Kind: substitution.
- **`s_xor_b32` +7** — `(u&3)^2` in the V-slot computation.
  - Six copies in the tail plus K3 (0xb728); the reference uses add+and once per tail iteration.
  - Kind: substitution, but replicated per path.
- **`s_bfe_u32` +5** — fm computed as `(x<<5)>>6` (0xecfc…) and `wave&3` (0xaa18).
  - The reference uses `s_lshr` and `s_and`. Kind: substitution.
- **`s_cmp_lt_u32` +6, `s_cmp_ge_u32` +4, `s_cmp_lt_i32` +2 vs `s_cmpk_le_u32` −8** — bounds and dispatch compares:
  - Inline-constant bounds where the reference uses SOPK compares.
  - Block-placement duplication of the group-0 bound chain (0xb720, 0xb794).
  - A signed LowerSwitch tree for the stage dispatch (0xb484, 0xb4cc).
  - Kind: mostly substitution; +3 genuinely added.
- **`s_mov_b32` +8 and `s_movk_i32` +4** — preheader literals, kept in SGPRs by the `"s"` constraint and hoisted:
  - LDS constants s48, s82, s83, s88, s90, s92–s97, plus 0.125f and 0x18000.
  - Also `pass`/`have_next` literals on PHI edges.
  - Kind: added. Shared.
- **`s_branch` +5, `s_cbranch_scc1` +3** — critical-edge blocks carrying PHI copies, and the tail parity dispatch duplicated by block placement (BB1_61/62).
  - Kind: layout.
- **`s_waitcnt` +4** — see §4.

## 3. Recipes (tail and transition)

**Tail.** The reference's `tail_state` computes the read and load slot bases once per tail iteration (12 SALU). HIP recomputes them inside each of the normal, pvo and dead paths' guarded loads:
- K: `s_lshl 14`, `s_or dma`, `s_or 0x2000`.
- V: `s_xor 2`, `s_lshl 13`, `s_add v0`, `s_add dma`.
- Tile offsets: `s_mul` + `s_lshl 6`, where the reference uses `s_mul` with a precomputed tile stride.

The masked MM also has a rescale round trip (0xd4e8–0xd4f8, then `s_and_b64` and `scc0` at 0xd6f4). The `scalar_sub(q_start, …)` is duplicated per S block, because inline asm is convergent and isn't CSE'd.

**Transition.** The positive rows come from:
- uniform-predicate lowering (3 `s_and_b64` + 2 `s_mov_b64` per instance);
- `s_not` forms;
- `lg` branch polarity;
- the `s_bfe` for fm;
- K-base `s_or_b32`;
- a 64-bit LSE select (2 `s_cselect_b32`) where the reference selects a 32-bit offset (1).

## 4. Nops and waits

**Nops (HIP / reference).**

| category | HIP | ref | Δ | where |
|---|---:|---:|---:|---|
| VCC compare→cndmask | 98 | 0 | **+98** | tail +64, pass_start +32, entry +2 |
| M0 write → LDS DMA | 46 | 85 | −39 | |
| MFMA windows | 17 | 29 | −12 | the reference uses literal `s_nop 15/3` padding in mask paths |
| permlane | 8 | 11 | −3 | |
| transcendental | 6 | 8 | −2 | |
| source-requested | 6 | 6 | 0 | |
| VALU-written SGPR read | 1 | 1 | 0 | HIP's is the spill reload |
| alignment | 1 | 0 | +1 | |

**Waits.**
- Entry +2: the descale multiply sits inside the null-check branches.
- First job +1: the LSE branch splits the wait.
- Last +2: `vmcnt(6)` at 0xf14c and 0xf444 drains the next-pass DMA before the last PV.
- pass_start −1 and tail 0: operand substitutions (lgkm vs vmcnt).

## 5. Prior leads re-checked on the current object

All historical leads are confirmed in narrowed form: `s_or_b32` 71→34, `s_and_b64` 40→21, `s_cselect_b64` 16→11, `s_mov_b64` 29→9.
- The V-slot complements are now `s_xor_b32`.
- `s_bitcmp1_b32` is fixed.
- The tail-parity `vccnz` is fixed; only the first-job LSE branch remains.
- The masked-rescale round trip is confirmed (now at 0xd4e8), and E2 fixes it.

## 6. Experiments

All experiments keep the strict loops. Columns: d192 scalar positive excess, d192 all-mnemonic Σ|Δ|, d128 scalar positive excess.

| id | change | d192 + | d192 Σ\|Δ\| | d128 + |
|---|---|---|---|---|
| E2 | readfirstlane rescale test | 175 | 802 | 270 |
| E8 | volatile `scalar_add` K base | 142 | 697 | 251 |
| E8b | non-volatile `scalar_add` K base | 147 | 740 | 255 |
| E13 | opaque `pass = 1` | 159 | 774 | 269 |
| E2+E8b+E13 | combined | **120** | **698** | **250** |
| E2+E8+E13 | combined | 115 | 655 | 246 |
| +E12 | add LSE offset select | 110 | 653 | 243 |
| E12 alone | LSE offset select | 172 | 802 | 272, but d128 Σ\|Δ\| +5 |
| E11 | two `scalar_sub` for `num_q-1-qx` | mixed | | |
| F1 | `-tail-dup-placement=false` | mixed | | |
| early-taildup flags | | no effect | | |
| emu passphi | i32 compare instead of i1 PHI | 163 | | |
| emu sink | uniform-compare sinking | 178 | | spill 1→0 |
| emu sink+polarity | | 160 | | |
| emu sink+passphi+polarity | | 144 | | |
| emu ldsimm | LDS immediates | 185 | | d192 spill 1→0; d128 spills 14→3 |

Rejected: E5, E9a, E6a/b/c, E14 (reasons in the summary above).

## 7. Ranked candidates

1. **E8b/E8.** Source, shared; low risk.
   - d192: `s_or_b32` −33, `s_add_u32` +34/+72, `s_movk_i32` +1.
   - d128: `s_or_b32` −21, `s_add_u32` +22/+60.
2. **E13**, or the compiler route (passphi).
   - d192: `s_mov_b64` −8, `s_and_b64` −4, `s_cmp_lg_u32` −4, `s_cmp_eq_u32` +8, `s_mov_b32` −4, `s_add_u32` +4.
   - d128: `s_cbranch_vccz` +4 under E13; the compiler route has no d128 effect.
3. **E2.**
   - d192: `s_and_b64` −4, `s_cselect_b64` −2, `s_cmp_eq_u32` +2.
   - d128: `s_cbranch_vccz` −2.
4. **LLVM uniform-compare sinking plus a polarity peephole.**
   - d192: `s_and_b64` −15, `s_cselect_b64` −4, `vccnz` −1, `s_cmp_eq` +10; removes the d192 spill.
   - d128: `s_nop` +6.
5. **LLVM absolute-LDS immediates in inline asm.**
   - Count effect is mixed: `s_mov_b32`/`s_movk_i32` −10, `s_nop` +16.
   - Main value is register pressure.
6. **VCC pads: blocked.** Needs architectural evidence.
7. **Minor:** E12, polarity alone, `s_cmpk` selection, if-chain dispatch, tail slot hoisting (worsens negative rows), last-PV wait (needs LDS-DMA alias support).

**d192-specific vs shared.**
- d192-specific: `s_mov_b64`, `s_cbranch_vccnz`, and the sign of `s_branch`/`s_cbranch_scc1`.
- Shared with d128: all the others.

## 8. Spill interaction

- The spilled value is `k_ss<<7` at 0xabd4, the group-0 K tile-2 soffset. It is written to `v230` lane 0 at 0xad38, reloaded at 0xb738, and its hazard pad is the `s_nop 4` at 0xb740.
- Freeing SGPRs removes the spill: either sinking the hoisted masks (frees 4 SGPRs) or LDS immediates (frees about 11).
- E2, E8 and E13 leave resources unchanged; E9a and E5 increase spills.

## 9. Reproduction

Scripts are in `scripts/`:
- `fullcompile.sh`, `compile.sh`: builds.
- `ref_owner.py`, `hip_owner.py`, `regions.py`, `region_table.py`, `nops.py`, `waits.py`, `tables.py`, `render_tables.py`: attribution.
- `variants.py`, `run_batch.sh`, `exp.sh`, `delta.py`: source experiments.
- `ir_llc.sh`, `ir_emulate.py`, `emu_batch.sh`, `mir_polarity.py`, `pol_pipeline.sh`: compiler emulations.
- `collect_experiments.py`: summary tables.

The scripts expect the working layout of the agent worktree's `build/inv/`; the `base`/`ref` outputs can be regenerated with `compile.sh` and `ref_owner.py`.
