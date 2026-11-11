# Register-copy attribution and fixes (HIP FP8, from ac8512a)

(Saved by the coordinator from the subagent's returned text; the harness blocked the subagent from writing this file.)

Compile-only; nothing ran on a GPU. ATT results were measured separately by the coordinator (build/att-20261112/).

## Summary

Every register copy in both kernels is traced to the pass that created it. The in-loop copies are fixed, and both strict loops have fewer copies than the assembly reference: d128 16 → 8 (reference 12), d192 36 → 4 (reference 12). The coordinator's ATT run shows the d192 loop gap closed: 7896 → 7474 cycles per iteration, against 7473 for the assembly. Both strict loops stay exact, spills stay 0/0, protected mnemonic counts are unchanged, and `tests/test_fp8_hip_codegen.py` passes (75 passed, the GPU-launch test deselected) on `0ddab6a`, `292d02a` and `c59940c`. Numerics should be bit-identical by construction, but nothing was run on a GPU.

**Attribution at `ac8512a`** (d128 / d192; reference totals 319 / 223). No copy comes from greedy live-range splitting, and the coalescer creates none.

| Copy group | Where | d128 | d192 | Pass | Root cause |
|---|---|---:|---:|---|---|
| E8M0 scale into P | loop, 8 per stage | – | 32 | two-address (tied `v_cvt_pk_fp8` old operand) | `params.sb_lo` was passed as the low pack's old operand, which is never observed |
| Code-bias pair | loop | 8 | – | two-address (REG_SEQUENCE) | `phase_use(f2{bias, bias})` forces an aligned register pair |
| `permlane32_swap` operands | loop and stats | 16 | 8 | two-address (tied) | Inherent; the reference has the same copies |
| O-tile zero | pass top, 5 loop-entry edges | 205 | 205 | ISel + SIFixSGPRCopies + two-address + PHI elimination | One zero splat feeds all four O PHIs, so three tiles are copied on each entry edge |
| −inf fill | mask paths | 276 | 96 | two-address + PHI elimination | d128: coalescer joins kernel-wide `kc.ninf` into lane 0, then "interference at %11217:1@11192r"; d192 matches the reference |
| Epilogue store quads | 2 epilogues | 48 | 48 | two-address (REG_SEQUENCE) | Fake use of each permlane result pair forces an aligned pair |
| Pass state (pointers, `saved_*`, `k`) | pass transitions | 20 | 20 | PHI elimination | Parallel copies; the reference has 16 equivalent `s_mov` |
| params PHIs, selector, SGPR descriptors, SGPR→VGPR | various | 36 | 34 | PHI elimination, two-address, ISel | Small, mostly on par with the reference |

The hypothesis that the long runs come from PHI elimination at the irreducible loop's multiple entries is correct for the O-zero, params and pass-state groups. It is not the cause of the fill, epilogue or in-loop copies.

**Fixes** (branch `copies-20261112`, local only; each row is d128 / d192):

| Commit | Change | Copies, whole | Copies, loop | Positive excess | L1 | VGPR/SGPR |
|---|---|---:|---:|---:|---:|---|
| `ac8512a` | base | 609 / 443 | 16 / 36 | 261 / 203 | 914 / 745 | 244/88, 206/90 |
| `0ddab6a` | d192 low pack takes an unspecified operand | 609 / 411 | 16 / 4 | unchanged | unchanged | unchanged |
| `c76a127` | d128 bias anchors made scalar | 601 / 411 | 8 / 4 | unchanged | unchanged | unchanged |
| `e89fa08` | O cleared with 64 one-instruction moves | 396 / 206 | 8 / 4 | 259 / 204 | 846 / 682 | 244/77, 206/79 |
| `292d02a` | epilogue permlane results anchored separately | 348 / 158 | 8 / 4 | 259 / 204 | 846 / 682 | same |
| `c59940c` (optional) | `pack_exp` low pack also unspecified | 348 / 158 | 8 / 4 | 259 / 204 | 846 / 730 | 244/77, 208/79 |

- **`c59940c` raises L1 on purpose.** It removes 48 `v_mov_b32 0` in d192 that the reference doesn't have. L1 still rises by 48 because whole-kernel `v_mov_b32` is already below the reference: it clears O at two sites, HIP at one. Drop it if L1 matters more.
- **`e89fa08` adds one `s_nop 0`** in d192, on a tail entry.
- **The d192 `v_cvt_pk_fp8` stalls.** In `ac8512a` they came from each low pack's tied destination being written by `v_mov vP, v136` on the immediately preceding instruction (32 of 32). After `0ddab6a` the producer-distance histogram for all 64 packs matches the reference exactly; exp→cvt distances were already equal.

**Pressure-structure interaction** (each experiment applied on HEAD; strict loops stay exact):
- **E1** adds 18 / 12 copies, two-address copies of its `"+v"` tied asm operand.
- **E2** changes no copies.
- **E3 adds copies rather than removing PV-only-tile ones:** 348→442 / 158→218. InstCombine folds `__builtin_nondeterministic_value` to zero tiles, which rebuilds the zero-splat pattern `e89fa08` removed. Its extra SGPRs come from the same splats. With plain poison instead, E3 does nothing and the VGPR saving disappears.

**LLVM:** no fix commits on `2026-11-12-fp8-copies`.
- **No fix was worth committing.** A demanded-bits fold for the pack's old operand wouldn't fire, because the per-pack fake use demands all bits. A coalescer heuristic for the d128 fill would be a broad change for copies that cost no time. The source fixes cover everything else.
- **Instrumentation commit.** The tracing tool is local commit `4aebeaa1b129` on `2026-11-12-copy-origin-instrument`. It is debug-only (flag `-copy-origin`, no codegen change when off) and not for upstream.

**What remains, and what is unverified:**
- **d128 fill copies.** d128 still has 348 copies against 319. The −inf fill accounts for 84 of the difference. It was left: its 23 moves fill the MFMA hazard window that the reference fills with `s_nop 15; s_nop 3`. The two alternatives tried added 14 nops or flipped 12 branches.
- **Inline-asm O clear (`e89fa08`) has no automatic hazard padding.** The compiler's hazard pass skips MFMA checks for inline asm. A CFG walk shows the nearest MFMA touching a zeroed register is 102 / 67 wait states away, against a window of about 19. So it is safe in this layout, not guaranteed.
- **Not measured:** GPU correctness and ATT for `c59940c`.

## Method

- **Reproduction.** The Release+assertions build in `llvm-copies` is at the production revision `72e518a3f02a`.
  - Compiling with `setup.py`'s flags, including `-disable-machine-licm`, gives disassembly identical to the owning capture.
  - `llc` on the LTO `precodegen.bc` reproduces all 5519 / 3841 instructions, operands included.
  - The production Debug LLVM gives byte-identical disassembly for HEAD.
- **Attribution tool.** A side table tags each new COPY/MOV after every machine pass.
  - PHI elimination, two-address lowering and SplitKit add detail: the PHI and edge, the tied opcode or REG_SEQUENCE, the split strategy.
  - Tags survive instruction cloning and post-RA COPY expansion, and print as `; origin:` comments.
  - `scripts/origins.py` aligns the annotated asm one-to-one with the object disassembly, ignoring `s_nop` (the object has one inline-asm hazard nop the asm text lacks).
- **Coalescer decisions** came from `-debug-only=regalloc`.

## Detailed attribution

**d192 scale broadcast (`0ddab6a`).**
- `FP8_CODE_FP8` passed `params.sb_lo` as the low-half pack's old operand, which is tied to the destination.
- Because `sb_lo` stays live (it is also the MFMA scale operand), two-address lowering copies it into each P register before every low pack: `v_add_u32 v136, 0x7f, v115` followed by 8× `v_mov vP, v136`.
- The low pack keeps the high 16 bits of the old value and the high pack then overwrites them, so that value is never observed.
- The fix passes `__builtin_shufflevector(i2{}, i2{}, -1, -1)[0]`. That is poison in IR, and no LLVM pass folds these intrinsics.
- `freeze(poison)` was rejected: InstCombine turns it into 0, which puts 32 `v_mov 0` in the loop and breaks exactness.

**d128 bias pair (`c76a127`).** `phase_use(f2{bias, bias})` builds a REG_SEQUENCE of one value into an aligned pair, which costs one copy per pair, two per stage. Scalar fake uses keep the same anchor. Registers are renumbered, but the mnemonic sequence is unchanged.

**O-tile zero (`e89fa08`).**
- Instruction selection builds `o_tile{}` as `s_mov_b32 s16, 0` plus a 16-SGPR REG_SEQUENCE (15 copies), then SIFixSGPRCopies copies the SGPR tuple into VGPRs (8 `v_mov_b64`).
- The one value feeds all four O PHIs at each of the five steady-loop entry edges. The coalescer can join only one, so PHI elimination copies three 16-register tiles per edge (24 `v_mov_b64`).
- 64 `vgpr_constant<0u>()` moves give the reference's own 64 `v_mov_b32 v, 0` at the pass top. As a side effect SGPR use drops by 11.

**Epilogue (`292d02a`).** `FP8_OUTPUT_POINT(lo)` forced each permlane result pair into adjacent registers. The 128-bit LDS store needs rows 0/2 and 1/3, as the reference's `v_permlane32_swap v0, v2` leaves them, so 3 of every 4 values were copied.

**d128 −inf fill (unchanged).**
- The 512-bit S PHI is kept because AMDGPUCodeGenPrepare's break-large-phis heuristic (two-thirds of the PHI web must have breakable inputs) fails for d128. d192's S PHIs are scalarized, which is why d192's fill matches the reference.
- The coalescer first merges `%1687.sub0 = COPY %1750`, where `%1750` is `kc.ninf` with live range `[1024r,165156B)`, the whole kernel, into lane 0 of the fill tuple.
- The other 15 lane copies then become "Not coalescable", and the PHI copy `%11217 = COPY %1687` fails with "interference at %11217:1@11192r".
- Alternatives tried:
  - a fill-local −inf literal: 252 copies but 14 extra `s_nop`s, positive excess 259 → 273;
  - 16 inline-asm copies of `kc.ninf`: 264 copies, but block placement flips 12 `delta` tests (positive excess 280).

## Rejected and alternative variants (d128 / d192)

| Variant | Loop exact | Copies, whole | Retained | Positive excess | L1 |
|---|---|---:|---:|---:|---:|
| freeze(poison) old operand | yes / **no** | 609 / 411 | 4910 / 3430 | 261 / 203 | 914 / 713 |
| d128 local −inf literal | yes / yes | 252 / 158 | 5000 / 3463 | 273 / 204 | 848 / 682 |
| d128 16 asm copies of `kc.ninf` | yes / yes | 264 / 158 | 4976 / 3463 | 280 / 204 | 886 / 682 |
| E1 on HEAD | yes / yes | 366 / 170 | 5018 / 3439 | 285 / 210 | 854 / 718 |
| E2 on HEAD | yes / yes | 348 / 158 | 4979 / 3418 | 261 / 204 | 845 / 727 |
| E3 on HEAD | yes / yes | 442 / 218 | 4976 / 3420 | 261 / 209 | 848 / 735 |
| E3 with poison, on HEAD | yes / yes | 348 / 158 | 4974 / 3415 | 259 / 204 | 846 / 730 |
| E1+E2+E3 on HEAD | yes / yes | 460 / 230 | 5024 / 3446 | 288 / 214 | 854 / 719 |

## Remaining small groups

- **Pass state:** four transition edges carry `s_mov_b64` ×2 + `s_mov_b32` for `saved_*`, plus the pass-loop back edges and one PHI-destination copy.
- **params PHIs:** the steady-loop entries, the stage-exit merge, and the two-entry tail cycle.
- **SGPR REG_SEQUENCE:** the K and V buffer descriptors share one flags constant, and `{jobdata.word6/7, 0}` pairs are built for `vo/oo` shifts.
- **SGPR→VGPR:** three copies at kernel entry (two from instruction selection, one from SIFixSGPRCopies).

## Files

In this directory:
- `data/variants.csv` and `data/c-*.json`: per-commit metrics.
- `data/origins-b0-d128.json`, `data/origins-b0-d192.json`, `data/origins-v5-d128.json`, `data/origins-v5-d192.json`: every copy with its origin tag (`v5` is the `292d02a` source).
- `data/coalescer-d128-fill-excerpt.txt`, `data/d192-cvt-pk-fp8-distances.txt`, `data/o-zero-hazard-check.txt`: the key evidence above.
- `scripts/`: start with `evaluate.py`, `llc_origin.sh` + `origins.py` + `origin_groups.py`, `deps.py` and `hazard_check.py`.
- `logs/`: codegen test logs for each checked commit.
- `llvm/0001-CodeGen-debug-only-Tag-COPY-MOV-instructions-with-th.patch`: the instrumentation patch.

The source commits are in the worktree `/home/jinpli/workspace/home/jinpli/development/zyfa/.claude/worktrees/agent-a07e21c4210508b73` on `copies-20261112`.
