# Whole-kernel FP8 ISA fixes

Continue the approved ISA-match design in
`docs/superpowers/specs/2026-11-10-hip-fp8-isa-match-design.md`.
The user explicitly authorized fixes with parallel subagents.

## Global Constraints

- Preserve exact retained steady-loop mnemonic counts and sequence for d128
  (1333 instructions) and d192 (825 instructions).
- Match whole-kernel per-mnemonic counts before instruction order. Exclude
  scratch operations, register copies, and SGPR lane spill operations; retain
  initialization, waits, nops, branches, and meaningful cross-lane operations.
- Keep the approved tiling, exact LDS allocations, four-slot pipeline, two-wave
  ping-pong, and numerical behavior. No large inline assembly or assembly used
  to work around register allocation. Never patch emitted assembly.
- Compiler changes must preserve memory and execution hazards and have reduced
  regressions. A different hazard assumption in the reference is not sufficient
  evidence to weaken LLVM's model.
- Compare actual packaged code objects. Device-only fixture output is useful
  for experiments but does not establish packaged whole-kernel identity.
- Each implementer uses isolated source state and writes an evidence report.
  Integrate sequentially and run numerical/codegen tests and performance checks.

### Task 1: LLVM hazards and uniform predicate lowering

Work in the supplied LLVM checkout. Investigate and fix defensible causes of
masked-QK nop growth and unnecessary uniform-predicate EXEC mask round trips.
Use `build/whole-kernel-excess/waits/` and `control/` as existing reproduction
evidence, not as a reason to repeat the completed investigation. Prove gfx950
VCC hazard behavior from authoritative evidence before relaxing it. If that
cannot be established, retain the model and pursue safe scheduling or predicate
lowering improvements. Preserve existing uniform irreducible-cycle behavior.
Do not edit ZYFA source. The controller provides a frozen toolchain for source
workers, so rebuilding the supplied LLVM build is permitted after notification.
Create reduced regressions, run relevant lit tests, and report actual codegen
effects, compiler commits/patches, evidence, and unresolved constraints.

### Task 2: Runtime LDS address construction

Use an isolated ZYFA candidate worktree. Own `Lds::key/value` and closely related
address helpers in `csrc/fp8_native.hip`, not tail control/scale/LSE code. Reduce
runtime ring pointer selection, bit tests, and extra address operations while
preserving distinct static shared-array alias identities and exact allocation.
Use the frozen toolchain. Compile the actual HIP fat object, inspect its code
object, assert exact steady-loop matching, and compare the complete mnemonic
histogram including negative deltas. Report candidate commits/patches, source
semantics, before/after counts and first mismatch, resource metadata, tests,
and remaining limitations.

### Task 3: Tail predicates, scale reuse, and LSE indexing

Use another isolated ZYFA candidate worktree. Own next-pass/tail predicates,
tail sum/scale helpers, and LSE pointer construction in `csrc/fp8_native.hip`.
Reduce boolean mask PHIs/EXEC round trips, duplicated exponent reconstruction,
and separate wide LSE indexing. Preserve synchronized wave paths and prefetch
rotation. Prove arithmetic bounds before narrowing index math, and preserve
precision when reusing existing scale fields. Do not edit LDS address helpers.
Use the frozen toolchain and verify packaged exact steady-loop matching plus
whole histograms. Report candidate commits/patches, semantic proof, counts,
first mismatch, resource metadata, focused tests, and limitations.

### Task 4: Integration, waits, and verification

Review each candidate for spec compliance and quality; integrate accepted
changes sequentially. Improve remaining non-spill wait placement only with
producer/consumer evidence and without weakening dependencies. Rebuild the
native extension, extract its owning code object, rerun exact loop comparisons,
whole-kernel comparisons, full numerical/codegen checks, and representative
GPU benchmarks. Capture source/compiler provenance. Report concrete count and
performance changes and all remaining whole-kernel gaps honestly.
