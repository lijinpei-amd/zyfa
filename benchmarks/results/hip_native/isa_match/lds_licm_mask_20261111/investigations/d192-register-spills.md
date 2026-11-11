# report.md — d192 register-spill investigation: HIP vs reference liveness

2026-11-11. Investigation only. No fix is committed; `csrc/`, the real branch, LLVM and the extension are untouched; there were no GPU runs. All experiments are compile-only: isolated source copies, or MIR fed to the supplied `llc`.

(Saved by the coordinator from the subagent's returned text; the harness blocked the subagent from writing this file.)

## Answer in brief

**The structure is not the same.** Inside the strict loop it is identical; outside it, HIP keeps more invariants live.

- **Strict loop:** 825 aligned points, copies excluded, mnemonic sequences identical. HIP − ref = +24 or +25 VGPRs at every point and exactly +19 SGPRs (counting the spilled value) at every point. VGPR webs: 1071 vs 1075 per-iteration, 65 vs 65 loop-carried. The difference is entirely pass-through values.
- **Spill:** vreg `%86` = `S_LSHL_B32 k_ss, 7` (128·k_stride), the group-0 K(2) round-0 soffset.
  - IR LICM hoisted it to the pass-loop preheader `if.end285`.
  - It is live across the whole pass loop with one use per pass.
  - SGPR demand is 100 against 99 allocatable registers.
  - It was evicted as the lowest-weight interval; a split was unprofitable; remat was refused because of `implicit-def dead $scc`. It went to `v230` lane 0.

## Inputs and provenance

`inputs/` holds copies with SHA256SUMS:

- The owning disassembly.
- The steady-loop extract.
- `baseline/assembly_d192.s`.
- The generator's labelled `build/include/generated/fmha_fp8_d192_pp.s`. Its 3960 instructions align 1:1 with the reference disassembly.

Source is `4dd38ce`; the `fp8_native.hip` sha256 `8ba78b70…` equals `owning/fp8_native.hip`. The pipeline is `compile/emit_ir.sh` (codegen-test clang flags) and `compile/llc.sh` (setup.py llc flags), on a d192-only module (`opt internalize,globaldce`). Its output is **identical, instruction for instruction (3898)**, to the owning ISA. That also holds with `-fno-discard-value-names` and for `llc -start-before=greedy` on the dumped `compile/pre_greedy.mir`. Resources match for d128 (64/106/14/256/23) and d192 (0/106/1/231/0).

## Method: `tools/isa_liveness.py`

- Basic blocks come from branch targets (simm16).
- Defs and uses include tuples, implicit `vcc`/`exec`/`m0`/`scc`, and LDS-DMA `m0`.
- Backward liveness is intersected with forward may-def (as LLVM live intervals are).
- Pressure = max(|live-in|, |live-out ∪ defs|) per register file. SGPR counts cover s0–s105 only.
- `--lane-spill` adds a pseudo-SGPR for each writelane/readlane pair.

Modelling choices:

- `cvt_pk_fp8` with the `op_sel` dst bit is read-modify-write; the low-half form is a full def.
- `v_pk_*_f32` reads only the dwords that `op_sel`/`op_sel_hi` select.
- `permlane32_swap` reads and writes both operands.
- `buffer_load … lds` has no VGPR def.

Path-insensitive artifacts, which the compiler also sees:

- Reference v204 (SB1) is used before def on an infeasible path.
- Reference `S_QH` appears live across the loop via the `S_DONE` correlated branches.
- HIP s[60:61] appears live via the `have_next = 0` → back-edge path.

Regions come from generator labels (reference) and llc IR block names (HIP; table in `tools/regions.py`). "Loop" means `compare_isa.steady_loop`.

## 1. Reference liveness

- **VGPRs:** peak 193 at 0x42dc (tail.masked); loop maximum 191; 142 live at the loop header.
- **SGPRs:** peak 71 at 0x2b84 (in the loop, rescale vote); 68 live at the loop header.
- **AGPRs:** 0.
- **Declared:** `next_free_vgpr` 256, `next_free_sgpr` 102, `accum_offset` 256.
- **Referenced:** v0–v221 and s0–s101. v218–v221 (`V_KL`, `V_M8`) are written but never read.

## 2. Reference interval structure

Roles are from `csrc/asm/d192.py`; webs are in `out/ref_webs.csv`.

- **Whole-kernel persistent:**
  - Lane registers: `V_TID`, `V_KA`×3, a single `V_VA` (slots use immediate offsets), `V_GK0/1`, `V_GV0`, `V_127`, `V_NINF`, `SEL`.
  - Scalars: args s16–s41 (26), `S_W`, `S_G`, `S_KVT`, `S_VVT`, `S_M127`, `S_M0K`, `S_M0V`, `S_VD` (s100), `SL2` (s28, descale-folded).
- **Pass-carried:**
  - Scalars: `S_TAB`×8, `S_QH`, `S_OH`, `S_LSE`, `S_KR`, `S_VR`, `S_JOB`, `S_PP`, `S_QSTART`, `S_N`, `S_FM`, `S_DONE`, `S_BASE`/`S_NBASE`, `S_KMAX`, `S_VMAX`.
  - Vectors: Q (reloaded per pass); O, `V_L`, `V_M` (cleared per pass).
- **Steady-loop-carried:** `S_K`, `S_KSOFF`, `S_VSOFF`, O, S(k+1), `V_M`, `V_L`, `V_MREF`, `SB0/1`, `V_BX`.
- **Per-iteration:** FR ring (48), P, RS, `S_T*`, `V_T*`, `V_TMP`, `V_CORR`, `S_FLAG`, `S_RMASK`.
- **Setup-only:** kernarg and descale pointers, `S_WG`.
- **Tail/transition/epilogue-only:** `S_U`, `S_KRT`/`S_VRT`/`S_KLT`/`S_VLT`, `V_TKA`, `V_TVA`, `V_THR`, `V_EA`/`V_ELA`/`V_LSE`, `S_EOH`/`S_ELSE`.
- **Loop web counts:** VGPR 1075 per-iteration / 65 carried / 40 invariant / **2 pass-through**; SGPR 24 / 3 / 17 / 48.

**Recomputed at the point of use rather than kept live:**

- Group-0 soffsets. At 0x2654: `s_mul_i32 s79,0,s34; s_mul_i32 s78,2,s66; s_add_u32`.
- `KSOFF`/`VSOFF` recomputed each pass.
- Every lane term rebuilt from `V_TID`, including one `v_xor` per epilogue store.
- Runtime ring bases rebuilt in `tail_state`.
- M0 formed with a literal: `s_add_u32 m0, s83, 0x12000`.
- Flags compared at the point of use.
- O cleared with 64 `v_mov_b32 v, 0`.

**Reuse across phases:** O v0–31 holds the bf16 output; O[2] holds rows read back from staging; P holds store addresses; `S_T*`/`V_T*` serve every phase.

## 3. HIP liveness and compiler pressure

- **VGPRs:** peak 216 in the loop (including `v230`); 231 allocated, about 15 lost to fragmentation.
- **SGPRs:** peak 99 + spill = **100** at 0xb5a4 (LeafBlock, O-clear dispatch); 86 + 1 at the loop header.
- **AGPRs:** 0; `accum_offset` 232; attribute `"amdgpu-agpr-alloc"="0"`.
- **Metadata:** `sgpr_count` 106 = s0–s99 + 6 extra (VCC, FLAT_SCRATCH, XNACK).
- **Allocatable SGPRs: 99.** `stackPtrOffsetReg = $sgpr32` (never used in the final ISA) and `sgprForEXECCopy = $sgpr100_sgpr101`. The greedy candidate list is s0–31, s33–99, vcc_lo and vcc_hi.
- **Pre-RA (`amdgpu-print-rp` on pre-greedy MIR):** SGPR 112 in the O-clear blocks bb.41–48, 102 in the loop bodies; VGPR 218.

## 4. Comparison

Column order: ref V / HIP V / ref S / HIP S (+spill).

| Region | ref V | HIP V | ref S | HIP S (+spill) |
|---|---:|---:|---:|---:|
| entry | 43 | 67 | 64 | 77 (78) |
| prologue.head | 76 | 99 | 68 | 79 (80) |
| prologue.qk0 | 107 | 131 | 67 | 79 (80) |
| prologue.qk0m | 108 | 124 | 69 | 79 (80) |
| prologue.rest | 142 | 166 | 69 | 99 (100) |
| loop | 191 | 216 | 71 | 89 (90) |
| tail.ctl | 146 | 167 | 68 | 84 (85) |
| tail.masked | 193 | 202 | 68 | 87 (88) |
| tail.pvo | 176 | 200 | 67 | 84 (85) |
| tail.dead | 142 | 166 | 67 | 85 (86) |
| last.pv | 146 | 169 | 68 | 85 (86) |
| last.dead | 109 | 133 | 63 | 77 (78) |
| trans | 122 | 142 | 69 | 85 (86) |
| passdone | 111 | 133 | 67 | 83 (84) |
| epilogue | 112 | 134 | 69 | 82 (83) |

**SGPR categories.** Columns: ref loop header / HIP loop header / HIP peak 0xb5a4 / HIP reload 0xb738. The reference at the corresponding group-0 K2 point (0x264c) has 67.

| Category | ref | HIP hdr | HIP peak | HIP reload |
|---|---:|---:|---:|---:|
| Raw args | 26 | 16 | 16 | 16 |
| Arg-derived hoisted (s12, s33, s36/37, s42/43, s73) | 0 | 7 | 7 | 7 |
| Job table | 8 | 8 | 8 | 8 |
| Descriptors (s[60:63] + s[64:67] + s[68:71] + s80) | 8 | 13 | 13 | 13 |
| Pass/job state | 16 | 11 | 10 | 10 |
| 64-bit flag masks s[0:1], s[34:35] | 0 | 4 | 4 | 4 |
| Loop strides | 6 | 6 | 4 | 3 |
| **Hoisted stride multiples** (s4, s74, s75, s76, s85, s86, spilled k_ss<<7) | 0 | 7 | 7 | 7 |
| LDS bases | 2 | 2 | 2 | 2 |
| **LDS constants for the inline-asm `"s"` operands** (s16 = 0, s82, s83, s88, s90, s92–97) | 0 | 11 | 11 | 11 |
| Float constants (s89, s91) | 1 | 2 | 2 | 2 |
| Descale | 1 | 0 | 0 | 0 |
| **O-clear SGPR_512 zero lanes** s17–31 | 0 | 0 | 15 | 0 |
| **Total** | **68** | **87** | **99 (+1 def)** | **83** |

**VGPR categories at the loop header** (ref 142, HIP 166):

- **Equal:** O/S/Q/SEL (128), `V_KA`, voffsets, `V_127`, −inf, m, l.
- **HIP higher:**
  - +18 hoisted lane terms: v146–148; **v149–160 (12 epilogue staging addresses)**; v167, v171, v172.
  - +3 V bases (v173–176).
  - +3 scale copies (v142, v144, v145).
  - +1 v_scale·vd (v168).
  - +1 `v230`.
- **Reference higher:** `V_TID` and the second `SB` (−2 for HIP).

## 5. The spill

- **Source:** `fp8_native.hip:1753` → `load_k_chunk:222` (tile 2, round 0).
- **IR:** `shl nsw i32 k_ss, 7` is hoisted to `if.end285`. `opt -debug-only=licm` lists 530 hoists into that block, 107 of them `shl`.
- **ISA timeline:**

| PC | Instruction | Notes |
|---|---|---|
| 0xabd4 | `s_lshl_b32 s17, s6, 7` | definition |
| 0xad38 | `v_writelane v230, s17, 0` | the only reaching def; s17 is reused at 0xad50 |
| 0xb738 | `v_readlane s18, v230, 0` | reload, in `if.then2153` |
| 0xb740 | `s_nop 4` | hazard |
| 0xb744 | `buffer_load … s[68:71], s18 offen lds` | the only use; s18 is clobbered at 0xb754 |

- **Lifetime:** live across the whole pass loop.
- **Execution:** the write runs once per wave per launch. The reload runs once per pass on group-0 waves when n > 2. For MHA (qw = 8) that is every pass; for GQA4 (qw = 4) every pass except qblk = 0.
- **RA log (`evidence/regalloc_k_ss_shl7.txt`):**
  - 12 hoisted `S_MUL_I32` offsets were rematerialized.
  - `%86` (weight 4.2e-5, spanning 154 blocks with 2 instructions) was evicted from `$sgpr87` by `%320` (k_max).
  - The split was unprofitable; VCC was costed at 64500.
  - "skipping remat … S_LSHL_B32 … implicit-def dead $scc" / "cannot remat": `S_LSHL_B32` isn't flagged rematerializable, and the generic check refuses physreg defs. The value was spilled, then lowered to a VGPR lane.

## 6. Hypotheses (results in `evidence/exp_*.txt`)

1. **Compiler: rematerialize SALU ops with a dead SCC def.**
   - E1, d192: spill → 0, VGPRs 230, loop unchanged, −2 lane instructions, −1 `s_nop`.
   - H1-approx, d128: SGPR spills 14 → 9, lane instructions 73 → 45, loop unchanged.
2. **Compiler: release s[100:101] when there is no whole-wave work.** E3: spill → 0, loop unchanged, SGPR count 108.
3. **Compiler (or a source form): zero the O tile with VGPR moves.** E2: spill → 0, loop unchanged; +80 retained `v_mov_b32`, +15 `s_nop`.
4. **Source/compiler: stop pass-invariant hoisting across the persistent loop.**
   - F1 (no MachineLICM): loop grows to 857, rejected.
   - F2 (`-sink-insts-to-avoid-spills`): VGPRs 219, but the loop grows to 869 and the SGPR spill remains, rejected.
5. **Source: immediate LDS offsets in the inline asm.** S1 failed: clang rejects `"si"`; `"i"` fails in llc on the LDS ConstantExpr.
6. **Coalesce the duplicated K descriptor** (`%9333 = COPY %1409` with sub3 from `%193`): untested.
- **Release s32:** E4 was negative (2 spills).
- **Margin:** one register.

## 7. Unverified

- No GPU or performance validation.
- Fixes 1–3 are MIR simulations, not LLVM patches.
- d128 effects were measured only for fix 1.
- HIP roles are hand-assigned at the anchor points.
- Path-insensitive artifacts are noted above.

## Files

- `tools/`: `isa_liveness.py`, `compare_liveness.py`, `regions.py`, `sgpr_categories.py`, `live_at.py`, `reg_refs.py`, `rp_summary.py`, `isa_delta.py`, `same_isa.py`, `mir_*.py`, `extract_evidence.py`.
- `out/`: `{ref,hip}_pressure.csv`, `region_summary.csv`, `loop_alignment.csv`, `loop_regmap.csv`, `*_webs.csv`, `anchor_inventory.csv`, `sgpr_categories.*`, `hip_pre_greedy_rp_blocks.csv`, `summary.json`.
- `evidence/`, `compile/`, `exp/`, `inputs/`.

Reproduce with `python3 -I tools/compare_liveness.py --ref inputs/ref_d192.s --ref-src inputs/ref_d192_src.s --hip inputs/hip_d192.s --hip-named-s compile/d192_named.s --out out`, then `python3 -I tools/sgpr_categories.py`.
