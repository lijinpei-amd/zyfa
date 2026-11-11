# d128 register spills: HIP vs assembly-backend liveness and interval structure

(Saved by the coordinator from the subagent's returned text; the harness blocked the subagent from writing this file.)

Investigation only. Nothing in the source, compiler or frozen artifacts was changed.

## Summary

**Same structure as the reference?** Inside the strict steady loop, yes. Outside it, no.
- **Loop:** all 1333 instructions align 1:1 and the per-iteration and loop-carried interval shape matches. HIP holds a near-constant extra: +12…18 live VGPRs (+18…24 counting scratch) and +9 SGPRs (+23 counting `v255` lanes). These are loop-invariant values the loop never uses.
- **Spills:** caused outside the loop (below).

| | Reference | HIP live / demand | HIP pre-RA |
|---|---|---|---|
| VGPR peak | 226 (`.Ltpvo`); loop 221; masked tail 225 | 256 / **270** (masked tail, 0x5ec4); loop 235/241 | 270 masked tail; loop 241 |
| SGPR peak | 70 | 90 / **104**; loop 79/93 | **118**; loop 107 |
| Budget | 256 VGPR / 102 SGPR | **255** VGPR (`v255` holds SGPR spills) / **100** SGPR + VCC | |
| AGPR | 0, accum_offset 256 | 0, accum_offset 256 | |

AGPRs are not a factor: 2 waves per SIMD caps each wave at 256 registers total.

**Divergences, ranked by registers:**
1. **Duplicate S tuple in the masked tail (up to +64 VGPR).** `mask()` writes −inf in the test block that also falls into the elementwise path. The coalescer then reports interference between S's home register and the fresh MFMA result, so each S block is copied (`v_mov_b64` ×32 per path).
2. **Whole-kernel VGPR invariants (+12 live, +7 spilled).** IR LICM hoists the epilogue LDS staging addresses and the Q/O lane offsets into the prologue.
3. **15 M0 slot-address constants in SGPRs (+15).** The inline asm `"s"` operand forces them into registers, and MachineLICM always hoists rematerializable `S_MOV_B32`.
4. **16-SGPR −inf and zero splat tuples (+15/16, transient).**
5. **Per-job scalars hoisted to the prologue (+8 SGPR pass-through).**

HIP is cheaper in two places: no fragment ring live at its mask point (−30) and no second parity set (−4).

**Spill → cause:**
- **scr 0–31:** high-half P codes in the masked tail, a local spill at the 270 peak.
- **scr 32, 36, 40–56:** cold whole-kernel addresses spilled whole.
- **14 lanes:** SGPR demand exceeds 100. Values defined by SCC-setting SALU ops can't be rematerialized; the 14 `S_MUL_I32` values were.

**Diagnostic compiles (not fixes):**
- **s5**, one `SCHED_FENCE` in the full-mask path: 0 VGPR spills, peak 241, strict loop exact.
- **s9**, s5 plus a VGPR −inf per lane: 0 VGPR and 5 SGPR spills, loop exact.
- **`-disable-machine-licm`:** 0 SGPR spills, but breaks the loop.
- **s1**, opaque tid: steady-loop demand 193→178.

**Fix hypotheses, ranked:** (1) separate full-mask block with VGPR −inf; (2) remove the SGPR excess (M0 literals, splat-free O zeroing, recompute pass scalars, SCC-aware remat), which also frees `v255`; (3) stop hoisting epilogue/Q addresses.

**Not verified:** dynamic spill counts (no GPU runs); numerics, hazards, performance and d192 effects of the variants; which IR pass did the hoisting (consistent with LICM, not bisected); why critical-edge splitting barely acts.

---

**Inputs:**
- Frozen owning capture `runtime_add3_20261111/owning` (source `ce02af2`, sha256 `8ba78b70…`).
- Reference `baseline/assembly_d128.s`, with labels from the generator output `build/include/generated/fmha_fp8_d128_pp.s`.

**Reproduction check:** `scripts/compile.sh` reproduces the owning ISA text exactly, and so do standalone `llc` runs on `compile/precodegen.bc` and on `pre-greedy.mir` (`-start-before=greedy`). Device code goes through full LTO in clang-linker-wrapper, and `-Xarch_device -mllvm` flags only reach that step, so `--cuda-device-only` compiles do not reproduce it.

## 1. Budgets

| | Reference | HIP |
|---|---|---|
| VGPR | 256, all fixed roles | 256; allocatable **v0–v254** (v255 is the WWM lane carrier) |
| AGPR | 0, accum_offset 256 | 0, accum_offset 256 (decoded kernel descriptors) |
| SGPR | 102 declared, max s101 | 106 in metadata; allocatable **s0–s99 + VCC** (register allocator order) |
| Peak liveness | VGPR 226 @0x594c, SGPR 70 @0x3448 | VGPR 256 / demand 270 @0x5ec4; SGPR 90 / demand 104 @0x5f04 |
| Pre-RA (`amdgpu-print-rp`) | – | VGPR 270 (bb.93/145); SGPR 118 (bb.94/146); steady loop 241/107 |
| Private segment | 0 | 64 B |

## 2. Reference

**Loops** (found as strongly connected components): the persistent pass loop, the tail loop, and the **irreducible 4-entry steady loop** (`.Lst0`–`.Lst3`).

**Steady-loop entry: 175 VGPR / 67 SGPR.**

| Class | VGPR | SGPR |
|---|---|---|
| Loop-carried | 140: O 64, S 64, m, l, SB/P2 ×2 parity sets, B8LO/HI | 3 |
| Invariant, used in loop | 33: Q 16, SEL 8, K/V addresses, G2L voffsets, 0x7f, −8.0 | 17: rsrc, scale constants, M0 bases, fm, kmax |
| Pass-through | 2: tid, −inf | 47: raw kernargs, job table entry, per-pass bases and state |

**Recomputed instead of kept live:**
- Per-pass scalars come from kernargs plus the job table in `pass_params`.
- Soffsets are recomputed with `s_mul` at each use.
- M0 offsets are SALU literals.
- Epilogue addresses are rebuilt from V_TID.
- −inf and zero fills are per-lane `v_mov_b32`.

**Register reuse across phases:**
- P_LO holds the epilogue store addresses.
- O holds packed bf16 and the LDS readback.
- V_T*, V_TMP and S_T* are general temporaries.
- s45–47 (unread kernarg slots) become S_U, S_DONE and S_NBASE.
- The fragment ring alternates K and V.

The role × phase matrix is in `data/ref/roles-*`. One artifact: SB/P2 parity set 1 shows as live-in at entry because the liveness is path-insensitive.

## 3. HIP

**Steady-loop entry: 187 live + 7 scratch VGPR, 76 live + 14 lanes SGPR.**

| Class | VGPR | SGPR |
|---|---|---|
| Loop-carried | 136 | 3 |
| Invariant, used in loop | 37 (+4: four per-slot V addresses; scale constants in VGPRs) | 32 (+15: M0 constants 0x2000…0x1e000) |
| Pass-through | 14 + 7 scratch (epilogue staging addresses, column/gb offsets, v_descale, h, threshold base, tail V base, v255) | 41 + 14 lanes |

**Pre-RA maxima by phase (VGPR / SGPR):**

| Phase | VGPR | SGPR |
|---|---|---|
| qk0 | 154 | 111 |
| pass_prologue | 193 | 117 (zero splat) |
| steady | 241 | 107 |
| tail_pvo | 236 | 103 |
| tail_normal | 270 | 118 (−inf splat) |
| last | 193 | 103 |

## 4. Comparison

**Phases.** Live max for the reference, and live max / demand for HIP (`data/cmp-phases.csv`):

| Phase | VGPR ref | VGPR HIP (live / demand) | SGPR ref | SGPR HIP (live / demand) |
|---|---|---|---|---|
| setup | 40 | 53 / 59 | 64 | 69 / 83 |
| qk0 | 136 | 147 / 153 | 68 | 83 / 97 |
| pass_prologue | 175 | 187 / 193 | 68 | 89 / 103 |
| steady | 221 | 235 / 241 | 70 | 79 / 93 |
| tail_pvo | 226 | 230 / 236 | 67 | 75 / 89 |
| **tail_normal** | **225** | **256 / 270** | 68 | 90 / **104** |
| last | 176 | 187 / 193 | 69 | 75 / 89 |
| epilogue_loop | 108 | 118 / 124 | 69 | 72 / 86 |

**Masked tail, aligned by MFMA order.** HIP runs a 416-instruction mask/stats block between QK#8 and PV#1, and that is where demand reaches 270. The reference's matching segment peaks at 214, because it schedules mask and stats under the QK MFMAs.

Composition at the HIP peak (0x5ec4), against the reference peak (0x680c):

| Component | HIP | Reference |
|---|---|---|
| O | 64 | 64 |
| S, fresh MFMA results | 64 | 64 (one copy) |
| S, home copy | **64** | – |
| Q | 16 | 16 |
| SEL | 8 | 8 |
| P | 16 (8 in scratch) | 16 |
| Fragment ring | 0 | 30 |
| Other | 39 (7 in scratch) | 25 |

The +47 gap is +64 (S duplicate) − 30 (fragments) + 14 (hoisted invariants). Per-instruction alignment is in `data/cmp-loop-aligned.csv`; the register correspondence is in `cmp-loop-regmap.csv`.

## 5. Spill inventory (static)

11 scratch stores / 15 loads; 14 `v_writelane` / 59 `v_readlane`. The steady loop has none. Details in `data/hip/d128-spill-inventory.csv`.

| Slot | Value | Stored | Reloaded | Allocator cause |
|---|---|---|---|---|
| scr 0–31 | P hi-half codes v[88:95] | normal0/1 at 0x5cb0 and 0x746c | 0x61b4 and 0x7970 | Local `lr-split` (SS#20/21) at the 270 peak |
| scr 32 | column<<4 | setup | epilogue_loop and final epilogue | Cold, spans the peak, spilled whole |
| scr 36 | gb<<5 (Q lane offset) | setup | prepare_* ×4 | Same |
| scr 40–56 | write_address ^ 224, 192, 160, 128, 96 | setup | final epilogue | Same; the in-loop use was rematerialized |
| lanes 0–4 | qwarp, n_keys>>7, head·l_sh2, lse-null mask | setup | set_pass ×4 | Not rematerializable |
| lanes 5–6 | kv_ss<<9, kv_ss<<8 (k_future / v_future) | setup | pass_prologue | `S_LSHL_B32` sets SCC |
| lanes 7–10 | Q and O head bases | setup | set_pass | `S_ADD` / `S_ADDC` |
| lanes 11–13 | kv_ss<<5, <<6, <<2 | setup | group-0 tile loads | `S_LSHL_B32` |

The SGPR allocation pass made 27 spill decisions: 14 were `S_MUL_I32` values rematerialized at every use, and 13 got stack slots. The rematerialization rule is `SIInstrInfo::isReMaterializableImpl`. It only fast-paths SALU instructions with no implicit def; anything else falls to the generic check, which rejects any physical-register def, including `implicit-def dead $scc`.

## 6. Mechanisms and evidence (`data/evidence/`)

1. **S duplication.** The coalescer reports `interference at %11129:20@96496r`: S's loop-carried home register gets −inf in bb.94 while the MFMA result is still read in bb.95. The leftover copy sits right after each MFMA.
2. **Hoisted epilogue addresses.** The pre-link IR already has the XOR address chain in `if.end260` (the kernel prologue).
3. **M0 constants.** Before allocation, MachineLICM hoisted 548 `S_MOV_B32` in this kernel, including every LDS slot constant. Its code hoists trivially rematerializable instructions unconditionally.
4. **Splat tuples.** ISel builds −inf and zero splats as 16-SGPR `REG_SEQUENCE`s and then copies them to VGPRs.
5. **SGPR budget.** HIP gets 100 SGPRs plus VCC; the reference uses 102.

## 7. Diagnostic compiles

| Variant | VGPR count / spills V,S | Peak VGPR demand | Strict loop |
|---|---|---|---|
| baseline | 256 / 23,14 | 270 | exact |
| s5: `SCHED_FENCE` in full-mask path | 250 / 0,14 | 241 | exact |
| s3: full-mask path folded into elementwise | 250 / 0,3 | 241 | exact |
| s9: s5 + VGPR −inf per lane | 250 / 0,5 | 241 | exact |
| s1: opaque tid in output/Q-load | 248 / 16,19 | 255 | exact |
| s10: s1 + s9 | 235 / 0,6 | 226 | exact |
| `-disable-machine-licm` | 256 / 12,0 | 267 | broken |
| s2: plain C++ add for M0 | 256 / 23,26 | 270 | broken |
| `-phi-elim-split-all-critical-edges` | unchanged | 270 | exact |
| `-disable-machine-cse` | unchanged | 270 | exact |
| s7: asm `"i"` operand for the LDS address | does not compile | – | – |

Whole-kernel retained positive excess (lane spills excluded) moves 301 → 309 for s5 and 301 → 328 for s9.

## 8. Hypotheses (unverified)

1. **Masked tail:** keep the full-mask path as its own block and fill −inf per lane from a VGPR, as the reference's `.Lmfull` does. Check d192, hazards and whole-kernel histogram shaping.
2. **SGPR excess:**
   - Let the M0 offsets be SALU literals (integer LDS layout or a compiler change).
   - Zero O without an SGPR splat.
   - Recompute per-pass scalars at transitions, or use ops that don't set SCC.
   - Compiler option: allow remat of dead-SCC SALU ops.

   Removing all lane spills also restores v255.
3. **Epilogue/Q addresses:** keep them inside the pass loop instead of hoisting them; this mainly reduces steady-loop demand.

## 9. Tools (reusable for d192)

```sh
isa_liveness.py ISA --kernel K [--pc-from DISASM] --csv --summary --live-sets --webs --loop-report [--regions] [--explain]
compare_pressure.py loop|phases|anchors
spill_inventory.py
parse_print_rp.py   # input: llc -run-pass=amdgpu-print-rp
ra_spills.py        # input: llc -debug-only=regalloc
ref_roles.py / hip_roles.py
kd_decode.py
compile.sh / llc_run.sh / llc_experiment.sh
```

All in `scripts/`; the phase map and spill-value descriptions are in `data/maps/`.

The agent worktree has an untracked branch, `investigate-d128-spills`, at `ce02af2` with no tracked changes.
