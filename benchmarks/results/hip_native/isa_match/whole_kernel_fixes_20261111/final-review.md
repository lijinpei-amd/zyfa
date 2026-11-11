# Integrated review of the whole-kernel continuation

Reviewed ZYFA `1b16627..5a2bf97` and LLVM `18b60c731b48..72e518a3f02a`, the complete supplied diffs, four task reports/reviews, progress ledger, owning source and compiler selection patterns, and the combined packaged evidence in `build/whole-kernel-candidates/integrated-best`.

**Code quality/correctness verdict: APPROVE for the scoped continuation; no blocking code findings.**

**Spec verdict: the reviewed changes preserve the binding constraints and improve the whole-kernel histogram, but the whole-kernel matching objective is NOT complete.** Exact whole-kernel per-mnemonic counts and sequence remain unmatched. The owning extension rebuild and integrated numerical/codegen suite passed; benchmark output checks passed for all 12 cases. Repeated performance measurements and the fallback comparison are complete. Retaining the selected implementation is consistent with the user's mnemonic-count priority; no general performance improvement is established.

## Combined evidence

The archived HIP source equals the current source. I independently checked source, host fat-object and extracted code-object SHA-256 values against the manifest; all match. The compile command uses the supplied compiler and the native flags from `setup.py`, including uniform irreducible-CFG preservation. Both repository diffs pass `git diff --check`. I inspected saved validation logs; I did not repeat compiler builds, expensive tests, or GPU runs.

| Measure | d128 | d192 |
| --- | ---: | ---: |
| Exact retained steady instructions | 1333 | 825 |
| Steady counts and mnemonic sequence | Match | Match |
| Retained whole instructions, baseline → combined | 5089 → 5042 | 3529 → 3420 |
| Assembly retained whole instructions | 5302 | 3737 |
| Histogram absolute distance, baseline → combined | 1199 → 972 | 964 → 791 |
| Positive / negative whole mnemonic deltas | +356 / −616 | +237 / −554 |
| First whole sequence mismatch | Index 4 | Index 4 |

I recalculated distances from the complete per-mnemonic dictionaries. All whole memory and MFMA counts remain unchanged against owning HIP. The filter preserves encoding suffixes, initialization, waits, nops, branches, and meaningful cross-lane operations. The excluded lane transfers are 73 operations on d128's spill carrier `v255` and two on d192's `v230`; retained cross-lane work includes `v_readfirstlane_b32` and `v_permlane32_swap_b32_e32`. These static counts do not establish performance or whole-kernel identity.

Allocation metrics remain LDS **163840/131072**, VGPR **256/231**, SGPR **106/106**, AGPR **0/0**, and private bytes **64/0**. Kernarg size/alignment remain **152/8**, wavefront size **64**, and maximum workgroup size **512**. One metadata field does change: d128 SGPR spill count is **22 → 14**; d128 VGPR spills remain **23**, and d192 SGPR/VGPR spills remain **1/0**. Describing *all* resource metadata as unchanged would be inaccurate.

### Owning extension validation update

The final build and test evidence is under `benchmarks/results/hip_native/isa_match/whole_kernel_fixes_20261111/`. I inspected `build.log`, `project-tests.log`, the owning/top-level manifests, and `performance/benchmark.json`; no tests or benchmarks were rerun for this update.

- The build log records compilation of the native object, linking it into `zyfa._C`, and copying the extension in place. The owning manifest identifies source **5a2bf97** and LLVM **72e518a3f02a**, with source/compiler/shared-library/object/code-object/extension hashes. The owning object has the complete instruction sequence reviewed above; its manifest records the extracted code object embedded verbatim in the extension. Packaging-dependent object/code-object hashes differ from the isolated candidate's hashes, so byte identity is claimed for the embedded owning code object, not between the two complete candidate/owning ELF files.
- `project-tests.log` records **295 passed, 2 skipped in 80.53 seconds**, covering the integrated project suite. The broad LLVM suite still has the 79 documented baseline shuffle failures; the project result does not turn that suite green.
- `performance/benchmark.json` contains **12 completed cases**, with source and extension hashes matching the owning manifest and a maximum relative RMS error of **0.005943745958183383**. All benchmark output checks passed. The first timing pass suggested about **3.6%** higher raw HIP latency than baseline for d128/GQA4/8192 and prompted the longer comparison below; it is not the final performance conclusion.
- `docs/hip-fp8-isa-match.md` now reports the current counts and revisions, the lane-spill exclusion policy, d128 SGPR spills **22 → 14**, and the explicit whole-kernel matching gap. The copied VCC evidence keeps the proposed hardware exception unproven; LLVM's hazard behavior remains unchanged.

### Final performance selection and restoration

I inspected the saved `repeat-baseline`, `repeat-best`, and `repeat-fallback` benchmark JSONs and alternate-extension provenance records. These runs use **500 warmups, 100 timed launches per sample, and seven repeats** on the d128/d192 GQA4/8192 cases. The respective median HIP latencies are:

| Variant | d128 | d192 |
| --- | ---: | ---: |
| Pre-fix baseline | 285.92 µs | 374.92 µs |
| Selected implementation | 288.12 µs | 376.86 µs |
| LDS-address fallback | 284.70 µs | 375.68 µs |

The selected implementation is approximately **0.8%/0.5% slower** than baseline in these repeated measurements. The fallback is approximately **1.2%/0.3% faster** than selected. All three sample ranges overlap in each dimension; this does not establish a broad speedup, a statistically resolved regression, or performance equivalence. The fallback's whole histogram distances are **1086/841**, compared with selected **972/791**. Keeping the selected form follows the user's count-first objective and is supported by these measurements without claiming a performance gain.

The alternate benchmark records carry their actual compiled source and relinked-extension identities. The selected benchmark source/extension hashes match the owning manifest. After the controller restored the selected extension, I independently recomputed the current `zyfa/_C.cpython-314-x86_64-linux-gnu.so` SHA-256 and confirmed it equals the owning manifest's **953c8f8fe4e0ca5496a2cd5e58a3ec08d0a62512fdc525518fe0a11a7071dbd6**. Thus the restored extension is the same binary covered by the 295-pass suite; no retest is needed merely because it was temporarily replaced for comparative timing. No GPU execution or source edit was performed during this final review update.

## Interaction review

- **Runtime LDS aliases and scalar address selection — `csrc/fp8_native.hip:48–89`, `:142`, `:280–321`.** The factored interpolation remains equal modulo 2^32 for all four slots, including arbitrary array order/spacing, because `bits = low + 2*high`; both irregular-layout correction terms remain. Constant slots return their distinct static array pointers directly. The nine shared arrays and exact allocation are untouched. The scalar V-base addition consumes only uniform static bases and wave-uniform runtime slots, before lane offsets are added. Its existing assembly declares the SCC clobber, so it cannot silently invalidate the newly selected SCC branches. It introduces no physical-register reservation or allocation workaround.
- **Paired waits, aliases and prefetch — `csrc/fp8_native.hip:324–372`, `:487–520`.** The QK/PV fragment read order and logical MFMA operand/accumulator associations remain unchanged. K fragments comprise two LGKM events and V fragments four. The pending-four waits cover the older consumer pair while allowing the younger pair of K fragments or single V fragment to remain pending; the final zero waits drain the last consumers. The third live PV fragment reads an existing slice earlier and adds no memory operation. The new runtime address expression resolves to the same ring slice, and the unchanged callbacks write the same future K/V slots under the same bounds checks. Producer DMA waits and cross-wave barriers remain intact. Ordinary compiler wait insertion and hazard handling remain enabled and can strengthen explicit waits; source queue depth does not guarantee every emitted site retains four outstanding events.
- **Scale lifetime and next-pass preparation — `csrc/fp8_native.hip:417–436`, `:1436–1441`, `:1808–2011`.** Each changed d128 consumer uses a sum scale assigned alongside its exponent from the identical binary32 bit pattern. D128 preserves separate multiply/add; d192 retains its exponent reconstruction and FMA, avoiding consumption of fields its steady path does not maintain. Preparing the next pass updates addresses, jobs, query and descriptors but does not overwrite the current `params` before the last sum/PV consumers. Every final/dead-final path defines `have_next`; job/pass/load decisions remain equivalent, and all waves agree on completion. Saved output addresses and ring rotation precede the next-pass updates.
- **LSE narrowing — `csrc/fp8_native.hip:1640–1643`.** Both native host wrappers reject the complete `4*B*Hq*M` LSE span at or above 2^32 and use `l_sh2=M`. The job table's head offset plus valid adjacent paired head is below `B*Hq*M`; the byte multiplication therefore fits u32. The final row stays within the same validated span, and null LSE handling is preserved. This uses an existing host contract and adds no unsupported shape restriction.
- **SCC/EXEC lowering and uniform irreducible CFG — LLVM `AMDGPUISelDAGToDAG.cpp:2910–2944`, `:2981`; `SIInstructions.td:3571–3585`.** The new selector alternatives match existing uniform SCC-producing truncate patterns, retain both one-use checks, and still require uniform-branch metadata. Divergent control retains mask handling. The scalar-add SCC clobbers are compiler-visible; no late physical-EXEC reinterpretation is introduced. Uniformity analysis, structurization, irreducible-cycle preservation and hazard recognition are unchanged. The saved focused checks and unchanged hazard replay support the compiler change; the full AMDGPU suite is not green because 79 shuffle failures reproduce with the frozen baseline.
- **Compiler/build dependence.** This remains an opt-in native build using a compatible custom LLVM checkout. The new SCC optimization needs LLVM `72e518a3f02a`; no new flag is added, and the pre-existing flags still depend on the supplied compiler changes. The combined object is built with that checkout, while standalone source-candidate reports used the frozen baseline. Final reproducibility claims must identify both source/compiler revisions and the actual rebuilt extension/object, rather than treating standalone fixture results as integrated runtime validation.

## Findings and triage

No P0/P1/P2 code defect found. The following previously identified P3 items remain nonblocking:

1. **Document uniform runtime V slots and the scalar-address boundary**, `csrc/fp8_native.hip:85–88`. Current callers satisfy uniformity; the rationale is in the commit/report. A short source comment would help prevent a future incorrect lane-varying use or accidental removal of the code-generation boundary.
2. **Duplicate sum helpers**, `csrc/fp8_native.hip:428–436`. `add_scaled_sum` and `add_scaled_sum_float` now have identical arithmetic/pragmas. Consolidation can be deferred because it is a maintainability issue and any cleanup must recheck exact packaged loop codegen.
3. **Direct i16/i64 legalized-DAG coverage**, LLVM `uniform-branch-truncate.ll:48`, `:88`, and `AMDGPUISelDAGToDAG.cpp:2925`. Existing width tests exercise i16/i64 IR inputs that legalize to the i32 alternative. The accepted alternatives match existing TableGen patterns; no incorrect selection was demonstrated. Explicit surviving-width cases would strengthen regression coverage.

The wait-unit comment requested in the standalone review is present at `csrc/fp8_native.hip:324` and resolves the concrete units ambiguity. No additional scheduling rewrite is needed for that note.

The documentation addresses the reporting corrections, and the owning rebuild/numerical/codegen results, performance selection, and final binary restoration are recorded above. No validation obligation remains for accepting this scoped continuation. Keep the unmatched whole-kernel goal explicit: accepting these fixes does not complete the larger exact-ISA objective.
