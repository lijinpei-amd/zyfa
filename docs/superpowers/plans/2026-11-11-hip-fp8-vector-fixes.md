# HIP FP8 Vector Fixes Implementation Plan

> **For agentic workers:** Use subagent-driven-development for isolated candidates and review. Track each task below.

**Goal:** Remove repeated runtime V address construction and select one U24 multiply-add at each K/V setup site.

**Architecture:** Reuse one complete V address per runtime PV invocation while retaining constant-slot steady paths. Express setup U24 width with the HIP multiply builtin, remove only setup product anchors, and enforce the validated stride bound at native host launchers.

**Tech Stack:** HIP C++20, supplied LLVM build, gfx950, pytest, native code-object inspection.

**Spec:** The approved `docs/superpowers/specs/2026-11-10-hip-fp8-isa-match-design.md`, narrowed by the user's request to fix findings 1 and 2 in `build/vector-excess-current/analysis.md`.

## Global Constraints

- Preserve exact retained steady-loop mnemonic counts and sequence: d128 1333, d192 825.
- Preserve exact tiling, LDS allocation, four-slot pipeline, two-wave ping-pong, memory operations, and numerical behavior.
- No large inline assembly, fixed-register workarounds, emitted-assembly patches, or weakening of LLVM memory hazards.
- Validate actual packaged code objects; exclude scratch/register copies and inventoried SGPR lane spills from retained comparisons.
- Source candidates use separate ignored worktrees; do not rebuild or edit LLVM.
- Reject native K/V strides >= 2^24 before launch; public validated wrapper inputs remain accepted.

## Review Focus

- Runtime slots 0..3 and normal/PV-only/last paths reuse a valid complete V address without changing DS offsets.
- Constant-slot paths preserve the exact steady schedule and LDS allocation.
- Both dimensions retain prefetch and wait order across the PV read-ahead.
- Native stride bound covers d128 shared stride and both d192 strides, including the exact boundary.
- Full-width query/output arithmetic remains unchanged; all supported layouts, GQA, tails, and persistent jobs remain numerically correct.

### Task 1: Reuse runtime V address

**Files:** `csrc/fp8_native.hip` V read helpers and `pv`; targeted codegen regression in `tests/test_fp8_hip_codegen.py`.

- [x] Add a generated-ISA regression showing runtime V address construction is bounded by one per each of six PV sites, with unchanged transposed-read counts and offsets; verify failure on baseline.
- [x] Factor the fragment reader to accept a shared base and reuse the runtime complete address in `pv`, preserving the constant-slot path and all read-ahead/waits.
- [x] Compile the actual native fat object with the supplied compiler and compare both complete kernels and strict loops against baseline/reference.
- [x] Record exact address counts, scalar counts, DS consumers, resources, test results, source diff, and any remaining mismatch in the task report; commit candidate changes only in its worktree.

### Task 2: Restore setup MAD_U24

**Files:** `csrc/fp8_native.hip` setup K/V offsets and host launchers; `csrc/fp8_native.h` contract; targeted codegen/native-host regressions.

- [x] Add a generated-ISA regression requiring four/three setup MAD_U24s without extra setup multiplies; verify failure on baseline. Add an executable host check for rejection at stride 2^24 before kernel enqueue.
- [x] Enforce native stride bounds, express unsigned U24 width with `__umul24`, write setup multiply-add as one equation, and remove the intermediate product anchors while retaining chunk/final-offset anchors. Explicit compiler assumptions were tested and removed because they erased width information before selection.
- [x] Compile the actual native fat object and confirm the desired setup MADs, unchanged query/output arithmetic, memory counts, and exact strict loops.
- [x] Record codegen, arithmetic-bound proof, native API behavior, resources, tests, and source diff in the task report; commit candidate changes only in its worktree.

### Task 3: Integrate and verify

- [x] Review both candidate diffs and evidence, integrate sequentially, and rebuild the native extension.
- [x] Extract the owning code object; verify source/object/extension provenance, exact steady loops, whole-kernel histograms, runtime address reuse and setup MADs.
- [x] Run the full project suite with GPU access and the supplied compiler, then compare representative pre/post HIP timings and assembly timings using the same protocol.
- [x] Record results in a durable report, review the integrated branch, and commit/push to the existing authorized `lijinpei-amd` branch.
