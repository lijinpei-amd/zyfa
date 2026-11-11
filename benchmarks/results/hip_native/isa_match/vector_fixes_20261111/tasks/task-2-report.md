# Task 2: Restore setup MAD_U24

Implemented in the isolated `build/vector-fixes-20261111/mad` worktree. The final candidate selects four d128 and three d192 setup `v_mad_u32_u24` instructions, with no setup `v_mul_lo_u32`, encoded `v_mul_u32_u24`, or full-width MAD. The five query and two shared output full-width products remain in each kernel.

The source uses the standard HIP `__umul24(key, stride) + chunk` expression at the K/V setup equations. It removes only the intermediate product scheduling anchors; all chunk, index, and final-offset anchors remain. The native launchers reject unsigned K/V strides >= 2^24 with `hipErrorInvalidValue` before HIP launch configuration or enqueue: d128 checks `kv_ss`, d192 checks both `k_ss` and `v_ss`. `fp8_native.h` documents this native API contract.

## Bounds and arithmetic

The fixed 512-thread launch gives `ctid` 0..1023 across the two K setup passes. K keys are 0..127 for d128 and 0..63 for d192. V keys consist of disjoint bounded bitfields and also lie in 0..127/0..63. K chunks are 0..112/0..176 and V chunks are 0..112. Existing exhaustive enumeration of all 3,584 setup indices is recorded in [`minor/bounds.json`](/home/jinpli/workspace/home/jinpli/development/zyfa/build/vector-excess-current/minor/bounds.json).

Both multiplicands therefore fit unsigned 24 bits after native host validation. U24 multiplication followed by the full-width unsigned chunk addition equals the previous i32 multiply/add in this domain. At the greatest accepted stride, d128 offsets are at most `127 * 16777215 + 112 = 2130706417`; d192 offsets are at most `63 * 16777215 + 176 = 1056964721`. Query/output arithmetic was not narrowed or edited. Public nonempty wrapper inputs already satisfy the bound through their N>=256 and `N*stride < 2^32` checks, as proved in the existing [analysis](/home/jinpli/workspace/home/jinpli/development/zyfa/build/vector-excess-current/minor/analysis.md).

The tested assume-only approach selected partial full-width MADs in the complete kernel. Adding key assumptions did not fix it. HIP `__umul24` with those assumptions was also canonicalized back to ordinary `mul` in optimized IR. The final source removes the redundant compiler assumptions: the guarded native contract establishes legality, and the HIP operation itself communicates the U24 width to device compilation. A reduced HIP probe emitted one MAD without a separate multiply or call, and the final complete kernel confirmed every setup site. No inline instruction assembly, fixed registers, emitted-assembly patch, or compiler change was used.

## Red and green regressions

- Generated-ISA baseline red: the two new tests fail at 0 versus expected 4/3 MADs. See [corrected red log](/home/jinpli/workspace/home/jinpli/development/zyfa/build/vector-fixes-20261111/mad/build/task2/red-tests-corrected.log). The forbidden U24 multiply check normalizes `_e32`/`_e64`.
- Native behavioral baseline red: the real baseline native launcher accepts stride 16777216, calls the HIP boundary, and returns the sentinel status rather than `hipErrorInvalidValue`: `status=801 expected=1 pushes=1 error_reads=1`. See [behavioral red log](/home/jinpli/workspace/home/jinpli/development/zyfa/build/vector-fixes-20261111/mad/build/task2/red-host-behavior.log).
- Native guard green: the executable test passed all 22 cases in complete post-guard runs, including accepted 0/1/16777215, rejected 16777216/16777217/2147483648/4294967295, independent d192 K/V rejection and both invalid, and unrestricted query/output stride fields. See the native test result in [green guard log](/home/jinpli/workspace/home/jinpli/development/zyfa/build/vector-fixes-20261111/mad/build/task2/green-tests-u24.log). That intermediate log also records the then-failing ISA expressions; its native guard test passed. The subsequent revision changes only device setup expressions, leaving the tested guards identical. Root will rerun the native executable in the integrated full suite.
- Final generated-ISA green: **2 passed, 62 deselected**, in 54.35s. See [final codegen log](/home/jinpli/workspace/home/jinpli/development/zyfa/build/vector-fixes-20261111/mad/build/task2/green-tests-final-u24.log).

The native executable compiles the real HIP source and links `libamdhip64`. It intercepts only `__hipPushCallConfiguration` and `hipGetLastError`; a failing launch-configuration response prevents device execution. This verifies the native rejection result and absence of enqueue/configuration side effects without copied arithmetic or source-string assertions. Initial harness errors (missing AMD platform definition, linker/runtime dependencies, and host-only undefined fatbin) were corrected before obtaining the behavioral red evidence. Full fat-object linkage supplies the registration binary; PyTorch's bundled DRM/NUMA libraries supply dependency resolution.

## Actual packaged object validation

The required `compare-candidate.py` compiled the actual fat object using the supplied existing LLVM checkout and `setup.py` native flags. [Manifest](/home/jinpli/workspace/home/jinpli/development/zyfa/build/vector-fixes-20261111/mad/build/task2/packaged-final-u24/manifest.json) records the frozen source and extracted owning code object. Source SHA256 is `83d5ac600d7cd063b2533b6a6ffdf6e8b31fac6e9b0aaf3ad2aeadd785e24c6d`; fat object is `1bec763d8cc1cf3dffdac8ec78e39c4ff974cc68e6cc508b1b5ced071cf043c8`; code object is `718e10c3e992a783585034283fda2363ad6d5d01ef8dd10e4f1ef38327e312e3`.

The independent [task audit](/home/jinpli/workspace/home/jinpli/development/zyfa/build/vector-fixes-20261111/mad/build/task2/packaged-final-u24/task2-audit.json) compares against authoritative `whole_kernel_fixes_20261111/owning` (code hash `0ff478bd...`) and records all MAD operands/PCs, exact whole-kernel histogram differences, memory/float counts, resources, and excluded lane spills. The required comparison script also produces reference-loop and whole-kernel JSON files in this artifact directory; its older `offsets_owning_20261111` baseline-change comparison is not the authoritative current-source delta.

| Check | d128 | d192 |
|---|---:|---:|
| Setup MAD_U24 | 4 | 3 |
| Setup extra multiplication/full-width MAD | 0 | 0 |
| Query/output MUL_LO | 7 | 7 |
| Strict retained loop, count and sequence exact | 1333 | 825 |
| Whole retained count, before -> after | 5042 -> 5039 | 3420 -> 3418 |
| LDS bytes, unchanged | 163840 | 131072 |
| Private segment bytes, unchanged | 64 | 0 |
| SGPR/VGPR counts, unchanged | 106/256 | 106/231 |

The complete-kernel deltas are exactly d128 MUL_LO -4, ADD -4, MAD_U24 +4; d192 MUL_LO -3, ADD -3, MAD_U24 +3; and one additional `s_nop 0` in each dimension. The additional NOPs are outside the strict loops and correspond to existing `.p2align 5, , 4` block padding after the setup shrinks (d128 new PC 0x287c, d192 0xd0dc). No other retained mnemonic count changes. Every global/buffer/LDS/scalar memory mnemonic and every float/BF16/FP8/MFMA mnemonic count remains identical. Excluded scratch/register copies and inventoried lane spills remain separately accounted for in the audit.

The source keeps the existing tiling, LDS allocations, four-slot and two-wave pipeline, query/output bodies, and all numerical operations. Candidate validation performed no GPU execution or benchmarking and makes no throughput claim. Integrated numerical/runtime and full-suite verification belong to root Task 3. The remaining original runtime V-address duplication is outside this isolated Task 2 candidate and is addressed by Task 1.

The final [source diff](/home/jinpli/workspace/home/jinpli/development/zyfa/build/vector-fixes-20261111/mad/build/task2/final-source.diff) and [audit log](/home/jinpli/workspace/home/jinpli/development/zyfa/build/vector-fixes-20261111/mad/build/task2/audit.log) are retained with the artifacts. Candidate commit: `f1bf42a23a140ac3d9da6230cb6c9d952de32fe7` (`Restore U24 MAD fusion for native FP8 setup offsets`). The isolated worktree is clean after committing its four candidate files.
