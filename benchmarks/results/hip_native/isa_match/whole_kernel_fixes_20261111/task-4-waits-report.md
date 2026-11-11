# Generic QK/PV wait candidate

Commit4ed12dd in build/whole-kernel-candidates/waits changes qk/pv helpers only.
Actual packaged evidence: build/whole-kernel-candidates/waits/qk-pv-pairs.
Baseline frozen compiler at18b60c731b48; no memory/hazard pass changes.

Explicit sched fences bracket builtin lgkm waits. D128 QK waits for paired
fragments at pending4 and drains pending0 for final pair. D192 QK drains its
incoming four-fragment head and final refill pair separately. PV reads three
four-event V fragments ahead, waits for paired consumers at pending4, and
refills the queue between MFMAs; final pair drains to0. All original LDS slices,
MFMA accumulator/operand logical mappings, floating arithmetic and prefetch
conditions remain. Runtime helper use occurs outside the matching steady macros.
The ordinary compiler wait insertion pass remains enabled and may strengthen
waits for other memory classes/dependencies.

Only retained mnemonic counts changed are s_waitcnt:168→130 d128 and116→90 d192.
All other retained counts are identical to baseline. Whole totals5089→5051 and
3529→3503; distance1199→1161 and964→938. Exact loops1333/825 with no mismatch.
VGPR256/231, SGPR106/106, scratch64/0, LDS163840/131072 unchanged.

Intermediate PV-only wait0 pairs reduced waits22/10 but drained read-ahead.
Final candidate restores three-fragment PV read-ahead and adds QK pair waits.
The first read-ahead-only compile was invalidated by source edits while Clang
mapped the file (lexer assertion); root helper now snapshots inputs, no compiler
bug inferred. Final qk-pv-pairs compile finished on stable source and passed.

GPU numerical tests, codegen regression suite and representative benchmark are
required at integration; not yet run for this candidate. No claim of whole
identity or performance improvement.

Full standalone tests/test_fp8_hip_codegen.py:58 passed in73.14s with frozen compiler and correct compatibility environment (waits/codegen-tests.log).
