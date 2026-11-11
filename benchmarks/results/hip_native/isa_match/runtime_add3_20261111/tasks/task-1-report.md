# Task 1: Runtime V ADD3 implementation

Status: implementation, actual fat-object validation and final corrected full codegen tests complete. Candidate commit: `041a610` (`Reuse invariant V addresses in HIP FP8 tails`). Root owns linked-extension verification, the full GPU suite, timings, integration and push.

Worktree: `build/runtime-add3-20261111/candidate`, detached baseline `39fec40`. Final source exactly matches `attempt1/source/csrc/fp8_native.hip`. The supplied LLVM was used without modifications/rebuild; the absolute root `build/env.sh` supplied compatibility libraries.

## Implementation

`Lds::value_offset` retains the four actual array pointers and both correction terms. With `bits=slot&3`, `low=bits&1`, `high=bits>>1`, and `step=v1-v0`, the offset remains `bits*step + high*(v2-v0-2*step) + (low&high)*(v3-v2-v1+v0)`. No contiguity assumption or pointer OR was added to source.

The kernel retains `invariant_vbase = sm.v0 + lane_offset` and selects `tail_vbase` before each parity’s normal/PV-only dispatch. Each last path freezes its selected address before next-pass/job preparation. All six PV bodies consume that selected pointer; constant-slot steady reads and their scheduling source remain intact. The implementation is pure C++; no new inline assembly or register constraints.

## Actual fat-object evidence

Final object: [attempt1/fp8_native.o](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/attempt1/fp8_native.o); source/object/code-object provenance is in [manifest.json](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/attempt1/manifest.json).

| Item | d128 | d192 |
|---|---:|---:|
| Whole-kernel ADD3 current → candidate → reference | 6 → 0 → 0 | 6 → 0 → 0 |
| Retained whole-kernel instructions current → candidate | 4955 → 4932 | 3382 → 3359 |
| Exact retained strict loop current/reference/candidate | 1333 | 825 |
| Runtime selected-address definitions current → candidate/reference | 6 → 4 | 6 → 4 |
| Six PV sites’ transposed DS consumers | 192 | 96 |
| Setup MAD_U24 / whole MUL_LO | 4 / 7 | 3 / 7 |
| LDS / workgroup / wavefront | 163840 / 512 / 64 | 131072 / 512 / 64 |
| VGPR / SGPR / private bytes | 256 / 106 / 64 | 231 / 106 / 0 |
| VGPR / SGPR spills | 23 / 14 | 0 / 1 |

All resource metadata is byte-identical apart from its file-path header. Memory, floating-point, MFMA, barriers, priority operations and exact strict-loop mnemonic sequence/counts match the current baseline. Native stride guards are unchanged.

CFG reaching-definition tracing proves shared producers for normal0/PVO0 and normal1/PVO1, with separate last0/last1 producers. Consumer counts and offset order remain exactly `4096*Half + 256*J + 1024*word` at all six sites. All four updates use one common complete invariant VGPR (`v244` d128, `v172` d192). d128 emits two shift-plus-add pairs and two fused `v_lshl_add_u32`; d192 emits four fused shift-add updates.

After an already masked slot, the old six address prefixes cost six scalar shifts + six scalar V0 additions + six ADD3s = 18 instructions per kernel. The candidate costs six instructions d128 or four d192 at the four static selections, plus three net setup vector instructions for its retained invariant. That gives 18 → 9 and 18 → 7 in the normalized retained V-address slice. This slice starts after slot masking, excludes forwarding register copies, shared K/DMA work and DS reads, and includes the three net extra setup vector instructions measured over the entire pre-steady prefix. Full raw and retained kernel deltas also include masks, slot arithmetic, copies and other setup/control changes; the full kernels fall by 23 instructions each. This is static code accounting, not a runtime speedup claim.

The reference’s entry recipe combines both lane terms then adds V0; its tail recipe uses one scalar slot shift and one vector add at each of four static updates; d128 also copies the shared slot shift into its V scalar register. All 15/16 instructions of each reference `tail_state` recipe, including shared K/V/DMA work and the d128 scalar copy, are captured in `selected_address_recipes.reference`. HIP’s emitted bit fusion uses known lane-bit ranges; source keeps arithmetic and derives the actual-array offset. The remaining new vector excess includes setup bit extraction/fusion. Retained vector instructions rise by one overall in each kernel; retained scalar instructions fall by 24. A single schedule-point refinement kept loops/resources and the same total count, but increased retained vector arithmetic to +2, so it was discarded in favor of this verified pure candidate.

The corrected capture contains full histograms and raw/retained deltas; all disassembled instructions from entry to the earliest strict steady-loop instruction; focused baseline/candidate/reference V-entry dependency slices; all four complete reference tail-state recipes; and every consuming DS PC/offset at all six sites for each of baseline/candidate/reference. The pre-steady prefix also contains initial pass/query/QK work, so `focused_v_entry_slices` supplies the specific invariant recipe. Evidence is in:

- [d128-current-analysis.json](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/attempt1/d128-current-analysis.json)
- [d192-current-analysis.json](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/attempt1/d192-current-analysis.json)
- [current-summary.json](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/attempt1/current-summary.json)
- [capture-correction-checks.json](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/attempt1/capture-correction-checks.json)

All changed retained mnemonics against current `vector_fixes_20261111/owning` follow; absent mnemonics have zero delta. Register-copy, scratch and lane-spill inventories are retained in the full raw histograms. The compare-candidate script’s historical `baseline-change` output was not used as the current baseline.

### d128 retained deltas

| Mnemonic | Current | Candidate | Delta |
|---|---:|---:|---:|
| `s_add_u32` | 253 | 247 | -6 |
| `s_addk_i32` | 5 | 7 | +2 |
| `s_and_b32` | 23 | 17 | -6 |
| `s_lshl_b32` | 73 | 65 | -8 |
| `s_nop` | 308 | 310 | +2 |
| `s_or_b32` | 31 | 23 | -8 |
| `v_add3_u32` | 6 | 0 | -6 |
| `v_add_u32_e32` | 61 | 63 | +2 |
| `v_and_b32_e32` | 11 | 12 | +1 |
| `v_lshl_add_u32` | 0 | 2 | +2 |
| `v_lshl_or_b32` | 3 | 4 | +1 |
| `v_or3_b32` | 2 | 3 | +1 |

### d192 retained deltas

| Mnemonic | Current | Candidate | Delta |
|---|---:|---:|---:|
| `s_add_u32` | 202 | 190 | -12 |
| `s_and_b32` | 23 | 17 | -6 |
| `s_cbranch_scc0` | 17 | 19 | +2 |
| `s_cbranch_scc1` | 71 | 69 | -2 |
| `s_cmp_ge_u32` | 29 | 27 | -2 |
| `s_cmp_lt_u32` | 8 | 10 | +2 |
| `s_lshl_b32` | 81 | 75 | -6 |
| `v_add3_u32` | 6 | 0 | -6 |
| `v_and_b32_e32` | 12 | 11 | -1 |
| `v_lshl_add_u32` | 0 | 4 | +4 |
| `v_lshl_or_b32` | 5 | 4 | -1 |
| `v_lshlrev_b32_e32` | 28 | 29 | +1 |
| `v_lshrrev_b32_e32` | 6 | 7 | +1 |
| `v_or3_b32` | 2 | 3 | +1 |
| `v_or_b32_e32` | 21 | 23 | +2 |

## Verification and handoff

Test-first baseline: [red.log](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/red.log) records four expected failures (`whole_kernel_has_no_three_input_address_adds` and `runtime_pv_reuses_one_v_address` for both dimensions), before production edits. The final CFG-based versions also fail against the current owning baseline and pass directly against the actual candidate fat object.

The first full codegen run was 66 passed / 2 failed: the initial new test incorrectly permitted only unfused vector adds and used the existing linear copy trace, which becomes invalid across shared branches. The regression now follows CFG predecessors/copies and accepts the mathematically equivalent fused shift-add, still requiring exactly four producers, one shared invariant input register name and all six exact DS-offset sequences. The artifact audit separately proves that all four candidate updates consume the same single entry reaching definition: d128 `v244` at `0x1f00`, d192 `v172` at `0xabd8`. The reference proofs identify `v226` at `0x177c` and `v192` at `0x15f8`. The audit restricts predecessor edges to instructions reachable from kernel entry, excluding predecessor-free unreachable compiler blocks.

Final test command, completed with **68 passed in 172.80s**: `source /home/jinpli/workspace/home/jinpli/development/zyfa/build/env.sh; ZYFA_LLVM_ROOT=/home/jinpli/workspace/home/jinpli/development/workspace/01/llvm-project /home/jinpli/workspace/home/jinpli/venv/01/bin/python -m pytest tests/test_fp8_hip_codegen.py -q`. Log: [final-codegen.log](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/final-codegen.log).

Reusable owning-object checks: `test_hip_whole_kernel_has_no_three_input_address_adds`, `test_hip_runtime_pv_reuses_one_v_address`, `runtime_pv_address_sites`, `test_hip_setup_offsets_fuse_to_u24_mads`, `test_hip_steady_disassembled_mnemonics_match`, and existing protected whole-memory/float/MFMA/barrier/priority tests.

Twenty direct actual-fat-object checks also passed, recorded in [final-object-checks.json](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/attempt1/final-object-checks.json). `git diff --check` passed, and the candidate worktree is clean after commit.

Independent review and root linked/GPU/timing validation remain pending; no numerical/performance claim is made here.

### SHA256 provenance

- Source: `95ea2313169e6a3d2b76f1247fc362eef3727fa9ccc462d4e5dd54438b9a2b61`
- Fat object: `9fb39e82aa60f563139d51bdbcb2d43b6692318c92ba63eb255f8410a0382396`
- Embedded code object: `c8b5b5d81783431d99e70fd667608730f03697aaf19d7520374990d2b1ae8feb`

## Artifact correction, review round 1

The original `complete_setup_sequences` capture incorrectly stopped at the first scalar upper-bound guard, before the V invariant recipe. It has been replaced with the full pre-steady prefix and focused reaching-definition slices. Reference capture now includes all four tail-state recipes and all six DS sites. Capture-only checks passed for both dimensions: every invariant root is in the extended setup, all four updates reach the same defined entry invariant, all six reference/baseline/candidate sites retain their exact offset order, and complete reference recipe mnemonic sequences match the generators. The extended setup vector delta is independently +3 for each dimension; normalized address and whole-kernel arithmetic figures therefore remain unchanged.

No production/test source, compiler, object or test results changed in this correction. Candidate commit remains `041a610`. Reproduction script: [capture-v-addresses.py](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/capture-v-addresses.py).
