# SDD ledger — plan: docs/superpowers/plans/2026-11-11-hip-fp8-runtime-add3.md

Baseline: `39fec40`, branch `2026-11-11-hip-fp8-isa-match`.
Owning baseline: `benchmarks/results/hip_native/isa_match/vector_fixes_20261111/owning`.

| Scan | Finding |
|---|---|
| Task 1 internal | Zero ADD3 must accompany reduced complete address arithmetic, exact steady loops, unchanged six PV read sequences, and preserved allocation. A two-input replacement alone is insufficient. |
| Task 2 internal | Source review precedes integration; owning-object, GPU tests and timings follow the final linked build. |
| Task 1 / Task 2 | Candidate source/object is produced in the existing ignored worktree and consumed sequentially by root. Root alone mutates the installed extension and authorized branch. |

Ruling: Continue the already-dispatched isolated ADD3 implementation under the approved ISA design and current user request; no repeat design or authorization round is needed.

Task 1 implementer: `/root/fix_remaining_add3`, worktree `build/runtime-add3-20261111/candidate`, baseline `39fec40`.
Brief: `task-1-brief.md`; report: `task-1-report.md`.
Baseline red: `build/runtime-add3-20261111/red.log`, four expected failures, six ADD3 per kernel.
First candidate compile: `build/runtime-add3-20261111/attempt1`.

Root resumed after compaction. No completed ADD3 tasks have been redispatched. Existing worktree isolation verified with `git worktree list` and `git check-ignore`; current process requires device GID 993 for GPU work.

Root preserved and independently verified the exact baseline linked extension/fatbin and source under `build/runtime-add3-20261111/evidence`. GPU access confirmed on gfx950 via current device GID 993. First candidate independently recounted: zero ADD3, exact strict-loop counts/sequence, retained totals 4955→4932 and 3382→3359. Candidate is not yet integrated; implementer is refining generated-ISA CFG address validation and evaluating setup mnemonic side effects.

Task1 candidate finalized at `041a61028275c21c52e7b350fb29f64344ac578b`, clean isolated worktree. Full codegen68passed in172.80s and20direct actual-object checks passed. Source/tests match the immutable review snapshot. Reviewer `/root/review_remaining_add3` is reviewing source/pipeline/bounds and actual-object evidence; no root integration yet. Final generated source keeps the first pure candidate: net vector+1 and scalar-24 per kernel, total-23; the one schedule-point refinement increased vector work and was discarded.

Task1 review: implementation/actual-object correctness PASS; audit/report gap identified because complete_setup_sequences stopped before the new invariant recipe and reference four-tail recipes were not captured. Fix round1 dispatched to original implementer `/root/fix_remaining_add3` for artifact/report-only correction; production/test commit041a610 remains unchanged.

Task1: minor (deferred): generated regression asserts common invariant VGPR name rather than one reaching definition. Current actual-object review proves exactly one invariant definition and four uses in each kernel; root owning-object validation will explicitly record/check this. Final integration reviewer must consider the remaining regression-hardening suggestion.

Task1: fix round1/5 (1addressed,0Importantopen; artifact-only correction, no source/test/object changes). Re-review confirms corrected current/candidate/reference entry and reference tail recipes support normalized address figures. Minor invariant regression strengthening remains nonblocking; actual audit proves common entry origin.

Task1: complete (candidate041a610, specPASS/qualityPASS; root cherry-pick completed). Root linked extension build started for Task2; final owning-object/GPU/timing checks pending.

Task2 owning validation: linked extension rebuilt and exact embedded native fatbin occurs once in the extension. Container SHA differs from isolated candidate solely in HIP compilation-unit identifier __hip_cuid and its four symbol/hash sections; .text/.rodata/.note byte-identical, every unfiltered instruction address/mnemonic/operand equal across5733/3898 instructions. Fresh owning recount confirms ADD3=0/0, strict1333/825 counts+sequence, four consuming updates from exactly one entry invariant, six PV offsets, MAD_U244/3 and MUL_LO7/7; unchanged baseline resources/memory/float counts. Retained totals4955→4932 /3382→3359. Full GPU suite running.

Task2 full GPU suite302passed2skipped in180.54s. Same-process12case baseline/current/assembly timing+bitwise comparison running; final integration review can inspect source/owning verification while results finish.

Task2 runtime comparison complete: all12before/after HIP output+LSE pairs bitwise equal; sampledFP64RMSmax0.00601438; timing medians-1.96%..+4.88%, rangesoverlap12/12; no overall throughput improvement claimed. Durable report now complete, final integration review pending.

Final integrated reviewer: `/root/review_add3_integration`, source39fec40..9da7f9d plus completed staged verification artifacts. Source/object/full-GPU/timing work complete; final review, evidence commit and authorized push pending.

Final integration review found one Important source-semantics issue: pointer arithmetic from v0 crosses separately declared LDS arrays despite correct current machine code. One final fix wave dispatched to original implementer `/root/fix_remaining_add3`, isolated candidate041a610. Minimal fix keeps invariant and selected-address arithmetic unsigned32 and converts only the final address to byte_lds, matching existing Lds.value() convention. New source/IR regression red on both baseline kernels; corrected actual fat object compiling. Require actual ISA/.text/descriptors/meta parity and fresh covering codegen results before integrating. Minor invariant-regression recommendation remains nonblocking. No further material findings in broad review; reporting/provenance/GPU/timing checks passed.

Final fix wave complete: candidatef401329/rootce02af2, source8ba78b70..., full codegen70passed195.55s. Scoped final re-review ImportantADDRESSED, specPASS/qualityPASS; no new material findings. Numeric source keeps defined uint32 address arithmetic. Candidate d128 retained4929, d1923359, zeroADD3, strict1333/825, unchanged resources/DS/protected/copy counts. Root source integrated after preserving/unstaging only generated artifacts. Earlier rebuild stopped before integration; fresh corrected rebuild running. Root will run remaining project tests (codegen70 already freshly passed) and final12case timings after linked parity.

Corrected linked extension rebuilt successfully. Fresh owning verifier passed on rootce02af2: code .text/.rodata/.note byte-identical to reviewed corrected candidate; all5730/3898 raw instruction signatures equal. Exact package fatbin/source hash verified, zeroADD3, four consuming invariant updates, six DSoffset sequences, MAD4/3, MUL_LO7/7, strict1333/825 exact and resources preserved. Whole retained4955→4929 /3382→3359. Fresh project suite excluding codegen file is running; that file already passed70cases on exact final source. Final12case timing replay follows sequentially.

Final project verification complete in two partitions on corrected source:70codegenpassed195.55s; remaining234passed2skipped4.59s on freshly rebuilt corrected linked extension. Total304passed2skipped, covering the complete project suite without repeating compiler checks already verified. Corrected12case same-process baseline/current/assembly timing and bitwise replay now running.

Final corrected timing replay complete: source/extension hashes match owning manifest; all12HIPoutput+LSEbitwise equal, maxFP64RMS0.00601438. Median changes-2.13%..+3.18%, rangesoverlap11/12; d128GQA4S8192+3.18%slower. No overall speedup claimed. Final linked/GPU/test/count goals verified; broad reviewer receives final evidence update before commit/push.

Final report consistency correction: d128GQA4S8192median+3.18% has overlapping ranges; sole nonoverlap is d128GQA4S256median-0.44%faster. Earlier draft attached nonoverlap to wrong case; README and integration reports corrected from exact per-case min/max. Runtime-summary.json now records the specific nonoverlap case. No source/test/object changes.

Task2: implementation and verification complete (source39fec40..ce02af2, finalspecPASS/qualityPASS, no open Important findings). Allprojectchecks304passed2skipped, final12case bitwise output/LSEequal, exact zeroADD3/loops/resources/source-object-provenance verified. Authorised evidence commit and fast-forward push are the controller final steps. Minor common-register-name regression improvement remains nonblocking, covered by actual/audit single-origin checks. Broader whole-kernel ISA matching remains unfinished.
