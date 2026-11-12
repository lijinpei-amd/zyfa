# Native HIP FP8: compiler and inline-asm workarounds

This page tracks every workaround the native HIP FP8 kernels
(`csrc/fp8_native.hip`) depend on, so each one can be removed or upstreamed
later. Check an item off once the kernels no longer need it, and record the
evidence (commit, capture, measurement).

"Strict loops" means the d128/d192 steady loops match the assembly backend's
mnemonic count and sequence exactly (1333/825). "Count match" means the
whole-kernel mnemonic histogram against the assembly (positive excess and L1).
How to build and measure is in [hip-fp8-reproduce.md](hip-fp8-reproduce.md).

## LLVM patches

Repository `lijinpei-amd/llvm-project`, branch `2026-11-10-fp8-schedule-match`
(`72e518a3f02a`): 26 commits on upstream `main` `3ad61ff817ac`, of which 12
change code and 14 only add or refresh tests.

### Correctness and hazard modeling (default codegen)

These change codegen with no option.

- [ ] **`d3a5b41195ff` — Preserve accumulator constraints on scaled MFMA.**
  - **Problem:** `ScaledMAIInst` dropped the early-clobber constraint for large
    untied accumulators, which allowed illegal partial destination/SrcC
    overlap.
  - **Evidence:** the FP8 kernel had 5 partial overlaps and failed complete-row
    numerical checks.
  - **Status:** a real bug fix. Upstream candidate.
- [ ] **`d6697cd3593c` — Account for serialized XDL result windows on gfx950.**
  - **Problem:** a later XDL issue leaves only a 4-wait-state residual window
    for earlier XDL results, but LLVM pads for the full window.
  - **Change:** track the residual bound per CFG path. This removes
    over-conservative `s_nop`s in the MFMA chains.
  - **Status:** upstream candidate. Needs architectural confirmation.
- [ ] **`15e547416b09` — Account for serialized XDL destination overwrite windows.**
  - **Change:** applies the same residual window to VALU overwrites (WAW).
  - **Status:** upstream candidate, together with `d6697cd3593c`.
- [ ] **`e5c1bf92d380` — Honor full scheduling barriers when unpacking FP32 operations.**
  - **Problem:** the MFMA unpacking search in `SIPreEmitPeephole` crossed
    `SCHED_FENCE` regions and rewrote packed operations outside them.
  - **Change:** stop at full fences.
  - **Status:** upstream candidate.
- [ ] **`72e518a3f02a` — Use SCC branches for uniform truncates to i1.**
  - **Problem:** uniform low-bit tests reached instruction selection as
    `trunc`, which branch selection didn't recognize. They went through a
    select, the EXEC mask and VCC.
  - **Change:** branch on SCC directly.
  - **Status:** upstream candidate.
- [ ] **`5ee669114fb9` — Expand validated single-op inline asm before emission.**
  - **Change:** turns the `s_add`/`s_min` and `v_cndmask` asm templates into
    real instructions after scheduling and placement.
  - **Why:** the final hazard recognizer then sees real semantics. That
    includes the VCC pads for `select_wave_mask` and counting scalar
    instructions in MFMA windows.
  - **Status:** exists only because of the inline-asm helpers below. Remove it
    with them.
- [ ] **`8a8680f36aa3` — Restrict inline asm destination forwarding hazards to vector registers.**
  - **Problem:** LLVM padded inline asm writing scalar registers as if they
    were vector writes, adding extra `s_nop`.
  - **Status:** exists only because of inline asm.

### Opt-in options (passed by `setup.py`)

The build fails if any of these is missing: an unknown `-mllvm` option is an
error.

- [ ] **`8f7d205c4bc5` — `-amdgpu-preserve-uniform-irreducible`.**
  - **Problem:** the steady loop and the tail cycle have several entry points
    (an irreducible, uniform four-entry ring). Stock FixIrreducible rewrites
    them with boolean hub PHIs and divergent branch scaffolding.
  - **Change:** leave fully uniform irreducible cycles unchanged.
  - **Status:** needed for the loop structure. Upstream candidate.
- [ ] **`acaf314460c2` — `-amdgpu-prefer-scc1-branches`.**
  - **Change:** rewrites `s_cmp_lt_u32` + `s_cbranch_scc0` into the reference's
    `s_cmp_ge_u32` + `s_cbranch_scc1` form.
  - **Status:** count match only.
- [ ] **`9b086fa081bc` — `-amdgpu-shrink-late-compare-mask`.**
  - **Change:** post-RA, uses the compact VOPC (VCC) encoding for the expanded
    compare/`v_cndmask` pairs when VCC is dead.
  - **Status:** count match only. Depends on `5ee669114fb9`.
- [ ] **`5dae02917821` — `-amdgpu-prefer-unsigned-add`.**
  - **Change:** selects `s_add_u32` instead of `s_add_i32` when SCC is dead.
    The bits are identical.
  - **Status:** count match only.
- [ ] **`f4de4bc38b99` — `-amdgpu-prefer-ge-scalar-bounds`.**
  - **Change:** selects `s_cmp_ge_i32` for immediate signed upper bounds, the
    reference's causal-mask compare.
  - **Status:** count match only.

### Stock options and target features in `setup.py`

These aren't patches, but they steer stock LLVM. The original rationale isn't
recorded; the reasons below are inferred from each option's effect.

- [ ] **`-disable-machine-licm`.**
  - **Reason:** turns off both early MachineLICM runs. They hoisted per-pass
    values, literals and V-ring bases to kernel entry, which raised SGPR/VGPR
    pressure and caused spills.
  - **Cost:** requires the loop-constant asm (below).
  - **Status:** under investigation (`build/investigations-20261112/licm-on/`).
- [ ] **`-Xclang -target-feature` `-vop3-literal`, `-dl-insts`, `-bitop3-insts`.**
  - **Reason (inferred):** keep LLVM to the encodings and instructions the
    assembly kernels use.
  - **Note:** `-vop3-literal` is why constants like 0.125 need a register.
- [ ] **`-rotation-max-header-size=0`.**
  - **Reason (inferred):** turns off IR loop rotation, so loop guards stay at
    the top as in the assembly.
- [ ] **`-misched=gcn-max-ilp`.** Scheduler strategy; rationale not recorded.
- [ ] **`-greedy-regclass-priority-trumps-globalness=true`.** Register-allocator
  priority; rationale not recorded.
- [ ] **`-enable-tail-merge=false`, `-branch-folder-hoist-common-code=false`.**
  - **Reason (inferred):** keep duplicated blocks unmerged and in place, to
    preserve the assembly's block layout.
- [ ] **`-amdgpu-spill-sgpr-to-vgpr=true`.** SGPR spill mode; the current
  kernels don't spill.

## Inline-asm helpers in `csrc/fp8_native.hip`

Every helper is a one-instruction asm with compiler-allocated registers.
Removing *all* of them was measured: the strict loops were no longer exact,
positive excess went 248/190 → 1157/624, d128 spilled, and kernels ran
1–13% slower (`build/investigations-20261112/no-inline-asm/`).

- [ ] **`select_wave_mask` — `v_cndmask_b32_e64 v, old, new, s[mask]`** (7 sites:
  the causal mask and the rescale vote).
  - **Reason:** HIP C++ has no way to use a `uint64_t` wave mask as a select
    condition. A literal translation extracts the lane bit with a 64-bit shift,
    two `v_and`, a `v_cmp_eq_u64` and an `s_nop`, which caused spills and a
    9–13% d128 slowdown.
  - **Alternative:** `__builtin_amdgcn_inverse_ballot_w64`. It is built with
    `ZYFA_FP8_STRICT_ISA=0`.
    - It is 0.2–1.1% faster.
    - The strict loops are no longer exact.
    - The count match gets worse: 347/249, L1 1189/867.
    - SGPRs rise to 93/94.
  - **Status:** switchable; the strict build keeps the asm.
- [ ] **`vgpr_constant<Bits>` / `sgpr_constant<Bits>` for `LoopConstants`.**
  - **Constants:** `0x7f`, −8.0, −127.0, 0.125, −inf, defined once at kernel
    entry.
  - **Reason, the LICM workaround:** these constants can't be inline-encoded,
    and with MachineLICM off LLVM recreates them at every use. Without the asm,
    each stage gains moves plus an `s_nop`: the strict loops grow to
    1353/841, and d192 is about 2% slower.
  - **Status:** under investigation, together with `-disable-machine-licm`.
- [ ] **`vgpr_constant<0>` in `zero_fx16` — 64 × `v_mov_b32 v, 0`** (O clear,
  one site after the pass-start barrier).
  - **Reason:** an `o_tile{}` zero becomes an SGPR splat that feeds four O
    PHIs, and PHI elimination copies three tiles on every loop-entry edge
    (205 copies per kernel).
  - **Hazard:** the compiler adds no MFMA hazard padding around inline asm.
    `test_hip_inline_asm_o_clear_is_outside_mfma_hazard_window` guards the
    margin: 108/75 wait states before, 185/115 after, against a window of
    about 19.
- [ ] **`sgpr_one` — `s_mov_b32 s, 1.0`** (not volatile; the descale default
  in the prologue).
  - **Reason:** with a literal 1.0, InstCombine rewrites
    `qd * phi(k, 1.0)` → `phi(qd * k, qd)`. That puts a wait before the
    V-descale load. Removing it gave −0.6 to −1.2% at L256.
  - **Why not volatile:** a volatile version turned the descale loads into
    vector loads.
  - **Status:** compile-time descale specialization for the non-strict build
    is under investigation (`build/investigations-20261112/descale-specialize/`).
- [ ] **`scalar_increment` — `s_add_u32 s, s, 1`** (volatile, 17 sites: stage
  guards and advances).
  - **Reason:** keeps the reference's separate advance and guard recompute.
    With a plain `+ 1`, CSE merges them, block placement rotates the loop (an
    `s_cbranch_scc0` back edge with the `s_branch` gone), and the strict loops
    become 1328/820.
  - **Effect on time:** ≤0.8%.
  - **Status:** count match only.
- [ ] **`scalar_add` — `s_add_u32`** (volatile, 9 sites).
  - **Reason:** uniform address math as `s_add_u32` rather than `s_or_b32`.
    Each DMA address add stays at its use, without merging or hoisting.
  - **Status:** count match only.
- [ ] **`scalar_add_imm<B>` — `s_add_u32 m0, base, B`** (volatile, `"n"`
  immediate, 3 sites).
  - **Reason:** DMA M0 offsets as literals, as in the assembly. A `"s"`
    operand forced each LDS literal into an SGPR that MachineLICM hoisted.
  - **Status:** count match.
- [ ] **`scalar_sub` — `s_sub_u32`** (2 sites), **`scalar_mask_sub<B>` —
  `s_sub_i32 s, s, B`** (volatile, 2 sites), **`scalar_min` — `s_min_u32`**
  (volatile, 5 sites).
  - **Reason:** the reference's scalar mnemonics for the mask delta and
    bounds.
  - **Status:** count match only. Removing all scalar helpers changed time by
    at most about 0.8%.

The `__asm("llvm.…")` declarations (`fake.use`, `s.barrier`, `s.setprio`,
`s.nop`, `rcp.f32`, `log.f32`) only alias LLVM intrinsics. They aren't
instruction asm and aren't tracked here.

## Related source-level steering (no asm, no patch)

- [ ] **`#pragma clang loop licm(disable)`** on the persistent pass loop
  (written as `for (;;)`): turns off IR LICM for that loop. Under
  investigation with `-disable-machine-licm`.
- [ ] **`__builtin_expect_with_probability(delta >= 0, 1, 0.85)`** inside the
  masked MMs.
  - **Reason:** block placement keeps the −inf fill out of line.
  - **Note:** `[[likely]]` caused SGPR spills, and applying the weight at the
    pass start cost 0.8%.
- [ ] **`unspecified_fx16()`** (shufflevector poison):
  - O before the pass-start clear, so the previous pass's O isn't kept live;
  - the d192 low-half FP8 pack's unused "old" operand, which avoids 32 loop
    copies.
- [ ] **`__restrict__` on `read_v_fragment`'s base.** Restores the alias scopes
  that `SIInsertWaitcnts` needs once all LDS is one array. Without it, the
  strict loops gain `vmcnt(0)` waits.
- [ ] **`phase_use` (`llvm.fake.use`) anchors and `SCHED_FENCE`.** These pin
  values and instruction order to the assembly's phases: probability packing on
  the SM side, the d128 bias, and the epilogue permlane results.
