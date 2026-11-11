# d128 follow-up: source-level pressure and the passes that raise it

(Saved by the coordinator from the subagent's returned text; the harness blocked the subagent from writing this file.)

## Summary

**Question 1: yes, the source already matches the reference; the compiler adds the extra.** In the inlined, SSA-only IR (no optimization), the steady loop holds about what the reference holds:

| | Pass-through (VGPR / SGPR) | Used in loop (VGPR / SGPR) |
|---|---|---|
| Source | 3 / 46 | 32 / 15 |
| Reference | 2 / 47 | 33 / 17 |
| Final HIP | 14 + 7 scratch / 41 + 14 lanes | 37 / 32 |

Every extra value at the final loop header is computed per pass or at its use in the source, and a pass moved it. The only differences already in the source are class placements: the scale constants and `v_scale` are uniform floats that ISel puts in VGPRs (the reference keeps them in SGPRs), and `qwarp` is kept from entry (unit-neutral).

**Per value:**

| Value | Source def site | Reference | Moving pass | Units |
|---|---|---|---|---|
| Epilogue LDS staging addresses + column<<4 | FP8_OUTPUT at pass_top, per pass | recomputed at use | IR LICM on the pass loop, pre-link dump #122 (final copy merged by LTO GVN) | 13 V |
| Q lane offset gb<<5; lane>>4 | FP8_LOAD_QUERY / FP8_OUTPUT, per pass | recomputed | GVN pre-link #117 (reuses entry instance) | 2 V |
| Mask threshold base | `mask()` at use | recomputed | LICM pre-link #57 | 1 V |
| Per-slot V addresses (×4) | V fragment reads at use | 1 base + offset field | IR LICM #122, then early-machinelicm | +3 V |
| 15 M0 slot constants, float constants | asm `"s"` operands at use | SALU literals | early-machinelicm (+MachineCSE); SIFoldOperands can't fold into asm | ~18–20 S |
| k_future / v_future, Q/O head bases | pass_start / set_pass, per pass | recomputed per pass | LICM pre-link #56 | 6 S |
| kv_ss<<5/<<6/<<2 (+14 rematerialized multiples) | tile loads at use | `s_mul` at use | LICM #122 | 3 S |
| n_keys>>7, lse-null mask, head·l_sh2 | set_pass, per pass | recomputed | EarlyCSE #15; GVN #117 (after LICM #57) | 4 S |

**Steady-loop trajectory** (pass-through V/S, used-in-loop V/S, loop max V/S; MIR stages are exact):

| Stage | Pass-through | Used in loop | Loop max |
|---|---|---|---|
| ISel | 35 / 69 | 35 / 20 | 292 / 116 |
| early-machinelicm | 36 / **99** | 37 / **47** | 294 / 171 |
| MachineCSE | 38 / 104 | 37 / 44 | 297 / 169 |
| peephole | 22 / 104 | 37 / 44 | 281 / 167 |
| SIFoldOperands | 20 / 72 | 37 / 45 | 278 / 124 |
| coalescer (pre-RA final) | 20 / 60 | 37 / 41 | 241 / 107 |
| greedy SGPR, then VGPR | 14 V + 7 scratch / 33 S + 14 slots | 37 / 41 | 235 / 80 |

**IR LICM is confirmed:** the three invocations are on the persistent pass loop `%pass_start` in the pre-link pipeline (#56, #57, #122). EarlyCSE #15, GVN #117 and MachineLICM also add live-through values. The LTO pipeline moves nothing; it only deduplicates. LoopRotate, GVN-PRE and SimplifyCFG move nothing that matters.

**Masked tail (secondary):** the duplicate S tuple is already present at ISel (tail-loop max 283, 270 after folding). The coalescer doesn't remove it because the fully-masked `-inf` path sits in the test block.

**Measured:** source-level live-through, MIR trajectory, per-value movements by name/pattern, and reproductions (pre-link matches modulo name suffixes, LTO exact with SLP off, llc exact). **Inferred:** IR-level units (divergence estimate plus noisy address values), and which pre-link pipeline slot each LICM invocation belongs to.

## Method and reproductions

- **Pre-link:** the production device cc1 job, re-run from `clang -###`. Its output matches the production `.tmp.o` / LTO input once value names are canonicalized; only inliner name suffixes differ (`scripts/fn_compare.py`). Instrumented with `-mllvm -print-changed=quiet -filter-print-funcs=attend<128>`.
- **LTO:** `opt -passes='lto<O3>'` with the device `-mllvm` flags and `-vectorize-slp=false` on `0.2.internalize.bc` reproduces `0.4.opt.bc` exactly.
- **Codegen:** `llc -print-after-all` on the production precodegen bitcode.
- **Source-structure IR:** the cc1 job with `-disable-llvm-passes`, then `always-inline, cgscc(inline), sroa, mem2reg` (`ir/source-ssa.ll`).
- **Analyzers:**
  - `ir_liveness.py` builds SSA liveness over a nested-SCC loop finder anchored on block `stage0`. Units come from type width plus a divergence estimate; uniform floats count as VGPR, and vector lanes count only if read after the loop. Its divergence estimate agrees with LLVM `print<uniformity>` on 35 of 40 values. The 5 disagreements are phis LLVM marks divergent but the final code keeps in SGPRs.
  - `mir_liveness.py` is lane-precise on MIR, including spill slots and lanes before PEI. It matches `amdgpu-print-rp` exactly (loop 241/107) and the final ISA.

## Q1: per-value verdict

See `data/per-value-attribution.csv`.

- **Source keeps live, same as the reference:**
  - selector (8), Q (16), K/V G2L voffsets, klane0/1, dma_base, k_step/v_step, k_max/v_max, fm, rsrc, raw kernargs, job table, pass/job/base/n/q_start
  - invariant_vbase, tid
  - scale constants (live in both; class differs, VGPR vs SGPR)
- **Source computes per pass or at use; the compiler moved it:** every row of the per-value table. This covers 19 VGPR lanes (13 epilogue, gb<<5, lane>>4, mask threshold, +3 per-slot V addresses) plus about 32 SGPR units (15 M0 constants, ~5 float/rsrc constants, 14 hoisted scalars of which 14 end up as lanes).

## Q2: pass attribution

- **Increase pass-through / used-in-loop pressure:**
  - Pre-link LICM `%pass_start` #56 (k_future, v_future, invariant.gep Q/O bases).
  - LICM #57 (invariant.op mask base, row_step, `group == 0` compare, head·l_sh2 copies).
  - LICM #122 (13 epilogue VGPRs, the column offset, round soffsets and S_MUL multiples, per-slot V addresses).
  - EarlyCSE #15 (n_keys>>7 and lse-null mask: per-pass instances replaced by the entry instance).
  - GVN #117 (gb<<5, lane>>4, head·l_sh2).
  - early-machinelicm, llc #75 (+33 pass-through / +29 used-in-loop SGPR: S_MOV immediates for LDS addresses and float/rsrc constants, plus 4 V_ADD per-slot V addresses).
  - MachineCSE (+5 S / +2 V).
- **Reduce:**
  - LTO GVN (deduplicates hoisted copies, −122 S estimated).
  - CodeGenPrepare (sinks hoisted address modes, −237 V estimated).
  - peephole (−16 V).
  - SIFoldOperands (−32 S).
  - DetectDeadLanes (−8 S).
  - coalescer (−8 S; loop max V 285→241).
  - greedy (rematerializes 14 `S_MUL`, spills 14 SGPRs to lanes and 7 VGPRs to scratch).
- **No effect on the steady loop:** LoopRotate, GVN-PRE, SimplifyCFG hoisting, the LTO pipeline. llc "Code sinking" only moves values within the prologue.

## Masked tail

MIR tail-loop max VGPR by stage: ISel 283 → fix-sgpr-copies 286 → MachineCSE 289 → peephole 272 → SIFold 270. It stays at 270 through two-address, the coalescer and the scheduler; the VGPR allocator then gets 256 + 15 spilled.

Tail SGPR max: early-machinelicm takes it 103 → 165; it settles at 118 after the coalescer.

The source structure is `mask()`'s 3-way phi. The diagnostic s5 variant from the earlier investigation fixes this: tail peak 241, 0 VGPR spills.

## Files

- `data/` — `per-value-attribution.csv`, `llc-trajectory.csv`, `llc-tailloop-trajectory.csv`, `prelink-trajectory.csv`, `lto-trajectory.csv`, `track-named.json`, `source-ssa-lt-values.csv`, `preisel-lt-values.csv`
- `scripts/` — the analyzers and trackers. Caveat: `cc1_run.sh` sources its flags by a worktree-relative path, so the published copy needs that path adjusted before it will run.
- `ir/` — key IR/MIR snapshots
- `logs/` — gzipped pass logs
