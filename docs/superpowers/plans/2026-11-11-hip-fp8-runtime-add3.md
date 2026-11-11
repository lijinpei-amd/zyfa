# Remaining Runtime V ADD3 Implementation Plan

> **For agentic workers:** Use subagent-driven-development for the isolated implementation and independent review.

**Goal:** Eliminate all six remaining `v_add3_u32` instructions in each HIP FP8 kernel through shared invariant V addressing.

**Architecture:** Derive and retain one complete invariant V0-plus-lane base from the actual LDS arrays, then form runtime selected addresses with two-input updates. Share selected addresses at normal/PV-only tail dispatch where practical, approaching the reference's four static updates. Preserve constant-slot steady paths unless an alternative proves identical generated steady sequences and allocation.

**Spec:** `docs/superpowers/specs/2026-11-10-hip-fp8-isa-match-design.md`; current user request to fix remaining ADD3 excess with a subagent.

## Constraints

- Current baseline is source commit `39fec40`, owning capture `benchmarks/results/hip_native/isa_match/vector_fixes_20261111/owning`.
- Exact retained steady-loop mnemonic counts and sequence remain 1333/825; tiling, four K/V slots, two-wave phases, LDS bytes 163840/131072, prefetch/read-ahead/waits and numerical behavior remain intact.
- Preserve setup MAD_U24 counts4/3, query/output MUL_LO counts7/7, native stride guards, memory/float/MFMA counts, and distinct actual shared-array identities.
- No large inline assembly, emitted-assembly patches, fixed-register or register-allocation workarounds, hardcoded/unproved LDS pointer relations, or weakening of hazards.
- The outcome must reduce complete address-construction work or align its complete sequence with the reference; merely renaming/splitting ADD3 into extra arithmetic is insufficient.
- Use the existing supplied compiler without editing/rebuilding LLVM. Isolated source worktree; root owns installed-extension GPU verification and authorized branch push.

### Task 1: Implement invariant/shared runtime V base

- [x] Add a meaningful generated-ISA red regression requiring no whole-kernel ADD3 and unchanged six PV sites' DS consumer counts/offset order; verify current baseline failure.
- [x] Compare entry invariant V addressing and four tail-state updates in the assembly generators with current six runtime PV address prefixes; record complete scalar/vector sequences rather than a positive opcode alone.
- [x] Implement invariant-base reuse and selected-address sharing, preserving actual-array-derived correction terms, existing steady source/sequence, and last-pass address lifetime across next-job preparation.
- [x] Compile the actual HIP fat object and verify zero ADD3, exact loops and protected counts. Inventory all new address instructions against current and reference, including negatives, spills/copies and metadata.
- [x] Run relevant codegen regressions, document final source/object provenance and results concisely, and commit the isolated candidate.

### Task 2: Review, integrate, and verify

- [x] Independently review source/pipeline/bounds and actual code-object evidence, then integrate sequentially.
- [x] Rebuild the linked extension and extract its exact embedded object; recount whole kernels/strict loops and verify zero ADD3 plus consumed address definitions and offsets.
- [x] Run the full project suite with GPU access and representative same-process before/after timings; record any material resource/performance effect without assuming a speedup.
- [x] Save a durable report and assembly artifacts, finish review, and commit/push to the existing authorized `lijinpei-amd` branch.
