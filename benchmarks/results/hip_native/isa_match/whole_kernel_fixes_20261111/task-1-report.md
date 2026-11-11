# Task 1: LLVM whole-kernel predicate lowering

Implemented and locally committed a narrow uniform-predicate lowering fix. The gfx950 hazard model is unchanged. No ZYFA source was edited by this worker.

## Source state and deliverables

- LLVM checkout: `/home/jinpli/workspace/home/jinpli/development/workspace/01/llvm-project`.
- Branch: `2026-11-10-fp8-schedule-match`; starting commit `18b60c731b48`.
- `8da6055648da`: `[AMDGPU] Precommit uniform low-bit branch tests`.
- `72e518a3f02a`: `[AMDGPU] Use SCC branches for uniform truncates to i1`.
- Combined patch: `build/whole-kernel-fixes/uniform-truncate.patch` in the LLVM checkout.
- Working tree is clean; no push was made.
- No new flag or source interface is required. The supplied compiler was rebuilt only after the controller confirmed its frozen snapshot was complete.

## Root cause and fix

The masked-tail parity condition is correctly annotated as uniform. DAGCombine simplifies its low-bit comparison into `truncate i32 to i1`. The existing uniform truncate selection patterns in `SIInstructions.td` already produce SCC, but `AMDGPUDAGToDAGISel::isCBranchSCC` accepted only SETCC. Branch selection therefore copied SCC into an all-ones/zero lane mask, ANDed that mask with EXEC, and branched on VCC.

A reduced kernel with `(x & 1) == 0` reproduces the original sequence:

```
s_bitcmp1_b32 s0, 0
s_cselect_b64 s[2:3], -1, 0
s_and_b64 vcc, exec, s[2:3]
s_cbranch_vccnz ...
```

The fix recognizes one-use, uniform truncates of i16/i32/i64 when selecting an already-uniform branch. The reduced result is:

```
s_bitcmp1_b32 s0, 0
s_cbranch_scc1 ...
```

The original one-use requirements and uniform-branch metadata check are retained. Divergent truncates remain on the lane-mask path. Uniformity analysis, CFG structurization, and uniform irreducible-cycle preservation are not changed. This acts during instruction selection, before register allocation and scheduling; it does not reinterpret physical EXEC at a late peephole.

The new reduced regression is `llvm/test/CodeGen/AMDGPU/uniform-branch-truncate.ll`. It covers i16/i32/i64 inputs on gfx950 wave64 and gfx1030 wave32, plus divergent and nested-control examples. Existing branch, ballot, trap and irreducible tests supply additional uniform scalar-argument and nested-cycle coverage. All expected-check changes were inspected and regenerated with LLVM's updater.

## Packaged code-object effects

The controller built the actual HIP object and extracted its packaged code object with the changed compiler. I inspected its summary and loop reports under:

`/home/jinpli/workspace/home/jinpli/development/zyfa/build/whole-kernel-candidates/llvm-truncate/`

`native.co`, `native.fatbin`, `fp8_native.o`, `disassembly.s`, `compile-command.json`, `manifest.json`, `summary.json`, and the per-dimension loop/kernel JSON reports preserve the owning evidence.

| Measure | d128 | d192 |
|---|---:|---:|
| Retained whole instructions, baseline -> patch | 5089 -> 5090 | 3529 -> 3529 |
| Absolute mnemonic-count difference from assembly reference | 1199 -> 1194 | 964 -> 962 |
| Retained steady loop instructions | 1333 -> 1333 | 825 -> 825 |
| Steady-loop mnemonic counts and sequence | Exact match preserved | Exact match preserved |

The whole-kernel comparison excludes scratch, register copies, and SGPR spill lane operations according to the controller's policy. It keeps waits, nops, branches and meaningful cross-lane operations.

For both dimensions, the change removes one `s_and_b64`, one `s_cselect_b64`, and one `s_cbranch_vccnz`. Shorter tail dispatch becomes eligible for machine tail duplication, adding one `s_add_u32`, one `s_bitcmp1_b32` and two `s_cbranch_scc1` instructions. Thus the local two-instruction saving is partly offset by CFG layout. The packaged d192 object also loses one alignment nop. This is not a hazard-model change. Whole-kernel identity remains incomplete; the compiler fix improves the mnemonic histogram rather than claiming a global instruction-count reduction.

Independent device-fixture A/B output is in `build/whole-kernel-fixes/native.before.s` and `native.after.s`, generated from the existing `native.ll` with identical flags using frozen and patched llc. `fixture-comparison.json` confirms the 1333/825 loop matches. Its whole counts use the basic comparator without the controller's extra SGPR spill-lane exclusion, so the packaged summary above is the owning whole-kernel metric.

## Nop safety and scheduling interface

I did not relax gfx950 VCC/SGPR hazards. `GCNHazardRecognizer::checkVALUHazards` still enforces the two wait states from VALU-produced VCC/SGPR to VALU consumption, enabled by `hasVDecCoExecHazard()` on gfx940 and later. Its AMD-authored origin is local commit `f311f934e13e` (`[AMDGPU] gfx940 VALU hazard recognizer`, review D122339). Neither the generator's interlock assumption nor the existing reference assembly establishes a gfx950 exception, and no architectural proof supporting relaxation was obtained.

The supplied masked-QK MIR has one reused SGPR pair and `SCHED_BARRIER 0` after every compare/select pair. Moving subsequent comparisons across those explicit fences is not a defensible compiler fix. The controller was notified and separately owns the source scheduling experiment; this worker made no source edit and did not move instructions across scheduling barriers.

A reduced hazard replay in `build/whole-kernel-fixes/vcc-mask-hazard.mir` contains an adjacent VCC compare/select and a second pair separated by two independent vector instructions. Both frozen and patched llc produce byte-identical MIR: the adjacent pair receives `S_NOP 1`, while the spaced pair needs no nop. Outputs are `vcc-mask-hazard.before.mir` and `vcc-mask-hazard.after.mir`. The existing gfx942 and gfx950 hazard regressions pass with the patched compiler.

## Verification

- Pre-fix reduced output empirically contained the select/EXEC round trip. A direct no-mask assertion failed as expected before the implementation was changed, and the pre-fix test was committed separately.
- `ninja -C build llc` completed successfully using the existing Debug build with `LLVM_ENABLE_ASSERTIONS=ON`.
- Updated checks were regenerated a second time and verified byte-stable. Changed C++ lines were formatted with the in-tree clang-format through `git-clang-format`. `git diff --check` passed.
- Final focused lit run: **21/21 passed**, with `LLVM_ENABLE_MACHINE_VERIFIER=1`. The run includes every changed test, gfx950/gfx942 hazards, late VCC mask peepholes, branch uniformity, divergent-branch controls, and i1-copy loop/PHI tests. Log: `build/whole-kernel-fixes/final-targeted-lit.log`.
- Full AMDGPU sweep: **5293 tests discovered, 88 initial failures**. Nine failures were expected golden-check updates for the changed scalar low-bit branch behavior; those tests were updated and pass in the final focused run. The remaining **79 shuffle tests also fail under the frozen pre-fix llc**, independently replayed with its frozen shared libraries. Log: `build/whole-kernel-fixes/frozen-shuffle-lit.log`; all 79 reproduce. The full suite is therefore not reported as green.
- A representative gfx942 shuffle case produces byte-identical assembly under frozen and patched llc, and FileCheck fails on that frozen output; gfx900 and gfx90a variants pass. No shuffle source or expectation is changed in these commits.
- Full initial sweep log: `build/whole-kernel-fixes/amdgpu-lit.log`. The complete baseline-failure file list is `build/whole-kernel-fixes/preexisting-shuffle-failures.txt` and is reproduced below.

Numerical GPU tests and performance checks are the controller's sequential integration responsibility; this worker did not run or claim them. LDS allocation, four-slot pipeline and ping-pong source were not edited. Actual packaged loop codegen is verified as above. The remaining waits/nops and cross-block saved-predicate materialization are not solved by this narrow change.

## Confirmed pre-existing failures

- `llvm/test/CodeGen/AMDGPU/shufflevector.v2bf16.v2bf16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2bf16.v3bf16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2f16.v2f16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2f16.v3f16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2f32.v2f32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2f32.v3f32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2i16.v2i16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2i16.v3i16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2i32.v2i32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2i32.v3i32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2i64.v2i64.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2i64.v3i64.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2p0.v2p0.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2p0.v3p0.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2p0.v4p0.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2p3.v2p3.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2p3.v3p3.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2p3.v4p3.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3f16.v2f16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3f16.v3f16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3i16.v2i16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3i16.v3i16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3p3.v2p3.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3p3.v3p3.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3i64.v2i64.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3i64.v3i64.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3f16.v4f16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3f32.v2f32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3i16.v4i16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3i32.v2i32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3i64.v4i64.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3p0.v2p0.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3f32.v3f32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3f32.v4f32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3bf16.v3bf16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3bf16.v4bf16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3i32.v3i32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3i32.v4i32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4f16.v2f16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4f16.v3f16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3p3.v4p3.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4bf16.v2bf16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4i16.v2i16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4i16.v3i16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3p0.v3p0.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3p0.v4p0.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4i64.v2i64.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4i64.v3i64.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2p3.v8p3.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v3bf16.v2bf16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4p3.v2p3.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4p3.v3p3.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2f16.v4f16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2f16.v8f16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2bf16.v4bf16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2bf16.v8bf16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2i16.v4i16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2i16.v8i16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4f16.v4f16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4f32.v2f32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2i32.v4i32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2i32.v8i32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2f32.v4f32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2f32.v8f32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2i64.v4i64.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v2i64.v8i64.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4i16.v4i16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4i32.v2i32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4p3.v4p3.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4i64.v4i64.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4p0.v2p0.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4bf16.v3bf16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4bf16.v4bf16.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4f32.v3f32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4f32.v4f32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4i32.v3i32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4i32.v4i32.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4p0.v3p0.ll`
- `llvm/test/CodeGen/AMDGPU/shufflevector.v4p0.v4p0.ll`
