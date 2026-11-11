# Task 2 review: runtime LDS address construction

Reviewed selected commit `10b4e0033f67554b4a306f92421777f3d94beeb5` and fallback `281670de2d8fe2c63e2fc71db2300b8919b11577`, both against `1b16627`. Source locations below refer to the selected candidate in `build/whole-kernel-candidates/lds`.

## Spec verdict: PASS for Task 2 candidate integration

The selected patch stays within `Lds::key/value` plus a declaration for the existing `scalar_add`. It preserves the direct constant-slot switches, all nine distinct static shared arrays, their alignment and sizes, the four-slot pipeline, and the two-wave ping-pong. It does not change arithmetic, scale/LSE/tail-control code, emitted assembly, compiler hazard rules, or allocation strategy.

The runtime interpolation is correct without a linker-layout assumption. With `b = slot & 3`, `l = b & 1`, `h = b >> 1`, and `A = p1 - p0`, the identity `b = l + 2*h` gives `b*A + h*(p2-p0-2*A) = l*A + h*(p2-p0)` modulo 2^32. The unchanged final correction selects `p3` when both bits are set. All arithmetic intermediates are unsigned 32-bit; negative/extreme input slots are converted before masking. Therefore descending pointers, arbitrary spacing/order, and subtraction wraparound do not invalidate the formula. No C++ subtraction between separate array pointers is introduced.

The one-instruction `scalar_add` is an intentional address instruction-selection boundary. Its existing `s_add_u32`, scalar input/output constraints, and SCC clobber implement the required unsigned addition. Current runtime slots derive from wave-uniform base/iteration state, and static LDS bases are uniform, so these constraints fit the actual callers. This does not implement spills, reserve named registers, override register allocation, or weaken scheduling hazards. The constant-slot path still returns the individual array pointer directly and bypasses this boundary.

Packaged evidence supports the required retained steady-loop counts **and mnemonic sequence**: d128 **1333**, d192 **825**, with null first mismatch for both selected and fallback. All whole-kernel LDS/global/buffer/MFMA mnemonic counts remain equal to owning HIP. Complete kernel metadata matches the frozen owning baseline, including LDS 163840/131072 bytes, SGPR 106/106, VGPR 256/231, private bytes 64/0, and SGPR/VGPR spill counts 22/23 and 1/0. The exact source diff leaves array allocation and aliases intact.

The selected candidate is preferable under the stated histogram-first criterion:

| Dimension | Owning L1 distance | Selected L1 distance | Fallback L1 distance | Selected retained total | Owning retained total |
|---|---:|---:|---:|---:|---:|
| d128 | 1199 | 1044 | 1156 | 5110 | 5089 |
| d192 | 964 | 854 | 900 | 3483 | 3529 |

I recalculated these distances from the complete count dictionaries, including negative deltas. The smaller fallback totals (4970/3473) do not make it a closer mnemonic match. Whole-kernel identity is still incomplete: first mismatch remains retained index 4 against assembly, in unchanged entry setup. Task 2 is a validated improvement candidate, not completion of the entire whole-kernel matching objective.

## Quality verdict: PASS with one nonblocking maintainability note

No blocking correctness or spec findings. The patch is small, uses defined unsigned arithmetic, retains the irregular-layout correction terms, and reuses an existing helper without adding assembly machinery. Evidence clearly separates packaged-object inspection from device-fixture tests and host arithmetic checks.

### Findings and tradeoffs

- **P3 — document the runtime V-address boundary and uniform-slot requirement.** Location: `csrc/fp8_native.hip:85-88`, with helper definition at line 142. The reason for calling volatile `scalar_add` rather than writing `p0 + offset` currently lives in the report/commit message. A short source comment explaining that this keeps the high LDS base out of repeated DS address additions, and that the slot is wave-uniform, would help prevent a future cleanup from removing the optimization or a new caller from passing a lane-varying slot. This is nonblocking; all current callers satisfy the assumption.
- **Material performance tradeoff, not a correctness defect:** location `csrc/fp8_native.hip:88`, used by `read_v` at line 311 and V DMA helpers at lines 230/233. Volatile calls prevent common-subexpression elimination, so the scalar base addition and some vector address work repeat. This is visible in the packaged d192 sequence at `build/scalar-vbase/disassembly.s:8004` and following reads, and in repeated d128 DMA setup at lines 997-1012. Versus owning, selected d128 gains 108 `s_add_u32` and 48 `v_add3_u32`; d192 gains 46 and 24. Both dimensions also gain two retained waits. These costs are honestly reported and compatible with the histogram-first requirement, but instruction counts do not establish runtime benefit. Root-owned integrated numerical/performance checks remain necessary before choosing the final integrated candidate. The fallback is independently applicable if that measured tradeoff is unfavorable.

## Evidence audited and review limits

- Matched selected and fallback committed source hashes to their manifests; matched actual host fat-object and extracted code-object SHA-256 values. Selected source snapshot also equals the candidate worktree source. The selected worktree is clean, and its diff passes `git diff --check`.
- Inspected the compile command and comparator: actual `setup.py` native flags with the frozen toolchain compile a HIP host fat object, then inspection extracts its gfx950 code object. The filter retains literal initialization, waits/nops/branches, and meaningful cross-lane work. Saved lane spill operations use the spill carrier registers; resource spill counts remain explicit.
- Read both loop JSON records, recalculated full signed histogram distances, checked unchanged memory/MFMA dictionaries, and compared full kernel metadata with the frozen baseline. Reviewed selected/fallback source forms and representative emitted runtime V address sequences.
- Read the final 70-pass fixture log, pointer-check generator, and saved owning/selected/fallback results. The host fixture tests actual extracted helper bodies against independently indexed expected array pointers, including all per-ring permutations and extreme wrapping slot values. It substitutes unsigned addition for device assembly; the algebra and packaged device evidence cover the complementary concerns.
- Did not rerun the 70 checks or 615168 pointer identities, compile another artifact, execute GPU work, edit candidate source, or push. No numerical or performance pass is asserted by this review.
