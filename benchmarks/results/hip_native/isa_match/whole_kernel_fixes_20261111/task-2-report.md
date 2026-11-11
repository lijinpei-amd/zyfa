# Task 2: Runtime LDS address candidate evidence
Status: implemented and committed the scalar V-base candidate; preserved an independently applicable lower-instruction-count fallback. No push, extension build, or GPU execution was performed. Integrated numerical and performance validation belongs to the root agent.
- Selected commit: `10b4e0033f67554b4a306f92421777f3d94beeb5`, based directly on `1b16627`.
- Fallback commit: `281670de2d8fe2c63e2fc71db2300b8919b11577`, also based directly on `1b16627`.
- Both are preserved by local `refs/candidates/2026-11-11-lds-*` references. The detached candidate worktree is left clean at the selected commit.
- Complete selected patch: `build/whole-kernel-candidates/lds/build/scalar-vbase/scalar-vbase.patch`.
- Complete fallback patch: `build/whole-kernel-candidates/lds/build/key-only-d192/fallback.patch`.
## Source behavior and address semantics
Only `csrc/fp8_native.hip` runtime `Lds::key/value` expressions and a forward declaration for the existing scalar address helper changed. The direct constant-slot switch, all nine distinct static shared arrays, exact allocations/alignment, lane swizzles, four-slot pipeline, two-wave ping-pong, and all tail predicate/scale/LSE regions are unchanged.
Let `b = slot & 3`, `h = b >> 1`, `l = b & 1`, and `A = p1 - p0`. The old interpolation is `p0 + l*A + h*(p2-p0) + (l&h)*(p3-p2-p1+p0)`. The candidate uses `p0 + b*A + h*(p2-p0-2*A) + (l&h)*(p3-p2-p1+p0)`. Because `b = l + 2*h`, these are identical modulo 2^32, including wraparound. Substituting each of the four slots yields the corresponding actual array pointer. Both correction terms remain: no contiguity, declaration-order, or linker-placement assumption was added. For the current regular rings, the corrections fold to zero and the runtime K address becomes mask plus shift.
The selected V expression adds the static base through the existing `scalar_add(p0, offset)` helper. That helper already emits a single volatile `s_add_u32` and declares its SCC clobber; its implementation is unchanged. This creates an explicit scalar address-construction boundary so the high LDS base cannot become a separate >16-bit literal addition at every transposed LDS read. No new assembly definition, large assembly block, emitted-assembly modification, allocation constraint, or hazard-model change was introduced.
The fallback factors K for both dimensions and V only for d128; it keeps the original d192 V interpolation. It adds no scalar-add boundary.
## Packaged code-object comparison
Compilation used the frozen toolchain under `build/whole-kernel-candidates/toolchain`, with the actual native flags extracted from `setup.py` by `compare-candidate.py`. Inspection used `benchmarks/inspect_hip.py` on each actual host fat object and its embedded gfx950 code object. Commands, object/source hashes, metadata, disassemblies, complete per-mnemonic count dictionaries, excluded instructions, and mismatch evidence are saved in each artifact directory. The fallback was freshly re-inspected from its saved packaged object after restoring its exact source; its source SHA matched the original compile manifest.
Filtering excludes scratch instructions, register-source copies, and SGPR lane spill read/write operations. It retains literal initialization, waits, nops, branches, all LDS/global operations, MFMAs, and meaningful `v_readfirstlane` operations. Counts below are static whole-kernel occurrences.
| Dimension | Assembly retained | Owning HIP retained | Selected retained | Selected Δ | Fallback retained | Fallback Δ |
|---|---:|---:|---:|---:|---:|---:|
| d128 | 5302 | 5089 | 5110 | +21 | 4970 | -119 |
| d192 | 3737 | 3529 | 3483 | -46 | 3473 | -56 |

Positive and negative sums are candidate minus assembly. L1 distance is the sum of absolute per-mnemonic deltas; it measures count agreement and prevents a net total reduction from hiding mnemonic regressions.
| Dimension/version | Positive sum | Negative sum | L1 distance |
|---|---:|---:|---:|
| d128 owning | 493 | -706 | 1199 |
| d128 selected | 426 | -618 | 1044 |
| d128 fallback | 412 | -744 | 1156 |
| d192 owning | 378 | -586 | 964 |
| d192 selected | 300 | -554 | 854 |
| d192 fallback | 318 | -582 | 900 |

The selected form improves both positive and negative sums in each dimension, and has the smallest histogram distance among the tested source forms. It introduces extra address additions, particularly d128 (+108 `s_add_u32`, +48 `v_add3_u32` versus owning), while removing selection and bit-test work. The fallback has fewer total instructions but a less close histogram. Root should compare integrated performance and can select the fallback if the scalar-add duplication materially slows the workload.
Both candidates retain exact steady-loop mnemonic counts **and sequence**: d128 **1333** instructions, d192 **825** instructions. Loop first mismatch is null for each. Whole memory and MFMA mnemonic counts are unchanged versus owning HIP.
Whole-kernel sequence identity is not achieved. In both dimensions the first candidate-versus-assembly mismatch remains retained index 4, in the untouched entry lane setup. Candidate-versus-owning first mismatch is d128 index 218 (`s_movk_i32` → retained literal `s_mov_b32`) and d192 index 219 (`s_movk_i32` → retained literal `v_mov_b32_e32`), reflecting changed address-constant materialization. Exact operands/PCs and every later mismatch are in the JSON evidence.
## Resources
All fields below are identical in owning, selected, and fallback packaged code objects.
| Dimension | LDS bytes | SGPR | VGPR | AGPR | Private bytes | SGPR spills | VGPR spills |
|---|---:|---:|---:|---:|---:|---:|---:|
| d128 | 163840 | 106 | 256 | 0 | 64 | 22 | 23 |
| d192 | 131072 | 106 | 231 | 0 | 0 | 1 | 0 |

Kernarg size/alignment remain 152/8, wavefront size 64, and maximum workgroup size 512. Existing spill and scratch use was preserved, rather than hidden by the retained-instruction filter.
## Verification and limitations
- Selected source: frozen codegen/comparator/setup tests passed **70/70** in `build/whole-kernel-candidates/lds/build/focused-tests-final.log`. These include steady DMA independence, fragment/refill order, scheduler barriers, MFMA overlap, whole memory/MFMA counts, and ABI checks. This device fixture validation supplements the actual packaged-object comparisons; it is not the packaged proof.
- Selected and fallback actual helper bodies passed **615168 pointer-identity checks each**, across both `Lds<128>`/`Lds<192>` instantiations, all 24×24 K/V array-order permutations, both V slot sizes, runtime slots -128 through 127 plus signed/extreme wrapping cases, and direct constant slots. The owning helper passed the same checks. Generated host fixtures use low-address mapped memory to reproduce the existing 32-bit LDS-pointer arithmetic and compare against independently indexed expected array pointers. The host stand-in for the existing scalar add performs the same unsigned addition; packaged codegen verifies the device instruction boundary.
- Both packaged candidates passed fresh strict 1333/825 loop checks and resource/whole-memory/MFMA comparisons. `git diff --check` passed; the selected worktree is clean.
- An initial fixture run had 34 passes and 36 setup errors because ROCm `ld.lld` could not load `libxml2.so.2`. Adding the existing ROCm `lib/compat` directory to `LD_LIBRARY_PATH` resolved the environment failure; the final selected run passed all 70 checks. The first fat-object attempt also exposed a missing snapshot offload helper; the root repaired the snapshot and the packaged compile was retried successfully.
- No GPU numerical/performance result is claimed here. Numerical behavior is supported by exact address equivalence, unchanged arithmetic regions, and codegen tests; root still needs integrated numerical/performance execution. The volatile scalar address-add duplication is the material performance concern.
## Other tested source forms
`pair-select` retained both strict loops but increased whole instructions by 68/58 and increased histogram distance, so it was rejected. `linear-factor` removed 119/6 instructions but d192 lost DS constant-offset folding and gained 90 vector adds; its d192 distance rose from 964 to 976. `linear-anchor` added an ineffective fake-use and had the same packaged histograms; no fake-use was retained. Their complete artifacts are under the candidate worktree build directory.
## Complete histogram evidence
The tables below show all mnemonic classes that differ in at least one of assembly/owning/selected/fallback. Unchanged classes are present in each complete `d*-kernel.json` count dictionary. Both signs of every selected-vs-assembly delta are shown.

### d128

| Mnemonic | Assembly | Owning | Selected | Δ assembly | Δ owning | Fallback |
|---|---:|---:|---:|---:|---:|---:|
| `s_add_u32` | 402 | 185 | 293 | -109 | +108 | 170 |
| `s_addc_u32` | 40 | 31 | 31 | -9 | +0 | 31 |
| `s_addk_i32` | 0 | 5 | 5 | +5 | +0 | 5 |
| `s_and_b32` | 88 | 35 | 25 | -63 | -10 | 25 |
| `s_and_b64` | 0 | 32 | 28 | +28 | -4 | 28 |
| `s_andn2_b32` | 0 | 3 | 0 | +0 | -3 | 0 |
| `s_bfe_u32` | 0 | 7 | 5 | +5 | -2 | 5 |
| `s_bitcmp1_b32` | 2 | 28 | 1 | -1 | -27 | 1 |
| `s_branch` | 31 | 28 | 28 | -3 | +0 | 28 |
| `s_cbranch_scc0` | 20 | 23 | 23 | +3 | +0 | 23 |
| `s_cbranch_scc1` | 78 | 75 | 75 | -3 | +0 | 75 |
| `s_cbranch_vccnz` | 0 | 1 | 1 | +1 | +0 | 1 |
| `s_cbranch_vccz` | 0 | 2 | 2 | +2 | +0 | 2 |
| `s_cmp_eq_u32` | 42 | 15 | 15 | -27 | +0 | 15 |
| `s_cmp_eq_u64` | 10 | 8 | 8 | -2 | +0 | 8 |
| `s_cmp_ge_u32` | 23 | 29 | 29 | +6 | +0 | 29 |
| `s_cmp_lg_u32` | 0 | 5 | 5 | +5 | +0 | 5 |
| `s_cmp_lt_i32` | 12 | 14 | 14 | +2 | +0 | 14 |
| `s_cmp_lt_u32` | 4 | 8 | 8 | +4 | +0 | 8 |
| `s_cmpk_le_u32` | 8 | 0 | 0 | -8 | +0 | 0 |
| `s_cselect_b32` | 25 | 55 | 22 | -3 | -33 | 22 |
| `s_cselect_b64` | 6 | 19 | 17 | +11 | -2 | 17 |
| `s_lshl_b32` | 104 | 68 | 68 | -36 | +0 | 64 |
| `s_lshl_b64` | 0 | 6 | 6 | +6 | +0 | 6 |
| `s_lshr_b32` | 16 | 9 | 9 | -7 | +0 | 9 |
| `s_mov_b32` | 30 | 44 | 44 | +14 | +0 | 44 |
| `s_mov_b64` | 0 | 12 | 12 | +12 | +0 | 12 |
| `s_movk_i32` | 0 | 4 | 4 | +4 | +0 | 4 |
| `s_mul_i32` | 171 | 57 | 57 | -114 | +0 | 57 |
| `s_nop` | 182 | 310 | 306 | +124 | -4 | 302 |
| `s_not_b32` | 0 | 13 | 9 | +9 | -4 | 9 |
| `s_or_b32` | 0 | 74 | 31 | +31 | -43 | 60 |
| `s_or_b64` | 0 | 4 | 4 | +4 | +0 | 4 |
| `s_sub_u32` | 22 | 12 | 12 | -10 | +0 | 12 |
| `s_waitcnt` | 114 | 168 | 170 | +56 | +2 | 168 |
| `s_xor_b32` | 0 | 0 | 7 | +7 | +7 | 7 |
| `v_add3_u32` | 0 | 0 | 48 | +48 | +48 | 6 |
| `v_add_u32_e32` | 73 | 71 | 65 | -8 | -6 | 65 |
| `v_and_b32_e32` | 32 | 11 | 11 | -21 | +0 | 11 |
| `v_and_or_b32` | 0 | 1 | 1 | +1 | +0 | 1 |
| `v_bfe_u32` | 31 | 5 | 5 | -26 | +0 | 5 |
| `v_cndmask_b32_e32` | 0 | 1 | 1 | +1 | +0 | 1 |
| `v_cndmask_b32_e64` | 199 | 198 | 198 | -1 | +0 | 198 |
| `v_lshl_add_u32` | 21 | 0 | 0 | -21 | +0 | 0 |
| `v_lshl_or_b32` | 4 | 3 | 3 | -1 | +0 | 7 |
| `v_lshlrev_b32_e32` | 36 | 45 | 45 | +9 | +0 | 45 |
| `v_lshrrev_b32_e32` | 9 | 7 | 7 | -2 | +0 | 7 |
| `v_mad_u32_u24` | 4 | 0 | 0 | -4 | +0 | 0 |
| `v_mov_b32_e32` | 133 | 8 | 8 | -125 | +0 | 8 |
| `v_mul_lo_u32` | 9 | 11 | 11 | +2 | +0 | 11 |
| `v_or3_b32` | 0 | 2 | 2 | +2 | +0 | 2 |
| `v_or_b32_e32` | 0 | 30 | 24 | +24 | -6 | 26 |
| `v_readfirstlane_b32` | 4 | 1 | 1 | -3 | +0 | 1 |
| `v_sub_u32_e32` | 3 | 1 | 1 | -2 | +0 | 1 |
| `v_xor_b32_e32` | 31 | 22 | 22 | -9 | +0 | 22 |

Selected complete evidence: `/home/jinpli/workspace/home/jinpli/development/zyfa/build/whole-kernel-candidates/lds/build/scalar-vbase/d128-kernel.json`, `/home/jinpli/workspace/home/jinpli/development/zyfa/build/whole-kernel-candidates/lds/build/scalar-vbase/d128-baseline-change.json`, `/home/jinpli/workspace/home/jinpli/development/zyfa/build/whole-kernel-candidates/lds/build/scalar-vbase/d128-loop.json`. Fallback complete evidence: corresponding files under `/home/jinpli/workspace/home/jinpli/development/zyfa/build/whole-kernel-candidates/lds/build/key-only-d192-final`.

### d192

| Mnemonic | Assembly | Owning | Selected | Δ assembly | Δ owning | Fallback |
|---|---:|---:|---:|---:|---:|---:|
| `s_add_u32` | 345 | 174 | 220 | -125 | +46 | 172 |
| `s_addc_u32` | 40 | 31 | 31 | -9 | +0 | 31 |
| `s_and_b32` | 78 | 25 | 27 | -51 | +2 | 35 |
| `s_and_b64` | 0 | 40 | 32 | +32 | -8 | 32 |
| `s_andn2_b32` | 0 | 1 | 0 | +0 | -1 | 0 |
| `s_bfe_u32` | 0 | 9 | 5 | +5 | -4 | 7 |
| `s_bitcmp1_b32` | 2 | 24 | 1 | -1 | -23 | 14 |
| `s_branch` | 25 | 30 | 30 | +5 | +0 | 30 |
| `s_cbranch_scc0` | 20 | 21 | 21 | +1 | +0 | 21 |
| `s_cbranch_scc1` | 66 | 73 | 73 | +7 | +0 | 73 |
| `s_cbranch_vccnz` | 0 | 2 | 2 | +2 | +0 | 2 |
| `s_cmp_eq_u32` | 42 | 11 | 11 | -31 | +0 | 11 |
| `s_cmp_eq_u64` | 10 | 8 | 8 | -2 | +0 | 8 |
| `s_cmp_ge_u32` | 23 | 29 | 29 | +6 | +0 | 29 |
| `s_cmp_lg_u32` | 0 | 9 | 9 | +9 | +0 | 9 |
| `s_cmp_lt_i32` | 6 | 8 | 8 | +2 | +0 | 8 |
| `s_cmp_lt_u32` | 4 | 8 | 8 | +4 | +0 | 8 |
| `s_cmpk_le_u32` | 8 | 0 | 0 | -8 | +0 | 0 |
| `s_cselect_b32` | 25 | 51 | 20 | -5 | -31 | 33 |
| `s_cselect_b64` | 6 | 16 | 12 | +6 | -4 | 12 |
| `s_lshl_b32` | 99 | 76 | 76 | -23 | +0 | 76 |
| `s_lshl_b64` | 10 | 17 | 17 | +7 | +0 | 17 |
| `s_lshr_b32` | 16 | 13 | 9 | -7 | -4 | 9 |
| `s_mov_b32` | 39 | 38 | 38 | -1 | +0 | 38 |
| `s_mov_b64` | 0 | 29 | 29 | +29 | +0 | 29 |
| `s_movk_i32` | 0 | 4 | 4 | +4 | +0 | 4 |
| `s_mul_i32` | 152 | 53 | 53 | -99 | +0 | 53 |
| `s_nop` | 140 | 179 | 182 | +42 | +3 | 178 |
| `s_not_b32` | 0 | 11 | 9 | +9 | -2 | 13 |
| `s_or_b32` | 0 | 71 | 34 | +34 | -37 | 54 |
| `s_sub_u32` | 22 | 6 | 6 | -16 | +0 | 6 |
| `s_waitcnt` | 86 | 116 | 118 | +32 | +2 | 116 |
| `s_xor_b32` | 0 | 4 | 7 | +7 | +3 | 3 |
| `v_add3_u32` | 0 | 0 | 24 | +24 | +24 | 0 |
| `v_add_lshl_u32` | 0 | 1 | 1 | +1 | +0 | 1 |
| `v_add_u32_e32` | 71 | 56 | 50 | -21 | -6 | 56 |
| `v_and_b32_e32` | 32 | 12 | 12 | -20 | +0 | 12 |
| `v_and_or_b32` | 0 | 4 | 4 | +4 | +0 | 4 |
| `v_bfe_u32` | 26 | 6 | 6 | -20 | +0 | 6 |
| `v_cndmask_b32_e32` | 0 | 3 | 3 | +3 | +0 | 3 |
| `v_cndmask_b32_e64` | 105 | 102 | 102 | -3 | +0 | 102 |
| `v_lshl_add_u32` | 19 | 0 | 0 | -19 | +0 | 0 |
| `v_lshl_or_b32` | 4 | 5 | 5 | +1 | +0 | 5 |
| `v_lshlrev_b32_e32` | 29 | 28 | 28 | -1 | +0 | 28 |
| `v_mad_u32_u24` | 3 | 0 | 0 | -3 | +0 | 0 |
| `v_mov_b32_e32` | 133 | 62 | 62 | -71 | +0 | 62 |
| `v_mul_lo_u32` | 9 | 10 | 10 | +1 | +0 | 10 |
| `v_or3_b32` | 0 | 2 | 2 | +2 | +0 | 2 |
| `v_or_b32_e32` | 0 | 27 | 21 | +21 | -6 | 27 |
| `v_readfirstlane_b32` | 3 | 1 | 1 | -2 | +0 | 1 |
| `v_sub_u32_e32` | 5 | 3 | 3 | -2 | +0 | 3 |
| `v_xor_b32_e32` | 27 | 13 | 13 | -14 | +0 | 13 |

Selected complete evidence: `/home/jinpli/workspace/home/jinpli/development/zyfa/build/whole-kernel-candidates/lds/build/scalar-vbase/d192-kernel.json`, `/home/jinpli/workspace/home/jinpli/development/zyfa/build/whole-kernel-candidates/lds/build/scalar-vbase/d192-baseline-change.json`, `/home/jinpli/workspace/home/jinpli/development/zyfa/build/whole-kernel-candidates/lds/build/scalar-vbase/d192-loop.json`. Fallback complete evidence: corresponding files under `/home/jinpli/workspace/home/jinpli/development/zyfa/build/whole-kernel-candidates/lds/build/key-only-d192-final`.
