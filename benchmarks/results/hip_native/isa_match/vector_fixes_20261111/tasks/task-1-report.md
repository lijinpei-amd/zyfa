# Task 1 report: runtime PV V address reuse

The candidate removes exactly 42 repeated scalar/vector V address pairs for d128 and 18 pairs for d192 across six runtime PV sites. Each runtime PV site now constructs its completed V address once and reuses it for all 32/16 transposed DS reads. The actual frozen-source fat object passes strict 1333/825 retained steady-loop mnemonic identity against the current owning kernels and the reference kernels. Registers, spills, LDS, complete wait operands, DS/global/MFMA counts, barriers, and priority counts remain unchanged.

Commit: `80bb84378217c4de8a28338e686b6bff02d76bbf`.

Status: candidate implementation and CPU/codegen acceptance complete; integrated numerical and timing validation remain the root task's responsibility. No GPU benchmark or numerical execution was performed by this candidate agent. Only `csrc/fp8_native.hip` V helpers/`pv` and the regression immediately before `test_hip_epilogue_scales_then_packs_then_swaps` were edited in the isolated candidate worktree. No production-root source, compiler source/build, setup flags, emitted assembly, fixed-register workaround, or large inline assembly was changed.

## Source and build provenance

- Worktree: `/home/jinpli/workspace/home/jinpli/development/zyfa/build/vector-fixes-20261111/v-address`
- Supplied compiler: `/home/jinpli/workspace/home/jinpli/development/workspace/01/llvm-project`
- ROCm: `/home/jinpli/workspace/home/jinpli/.local/opt/rocm-7.2.3`
- Candidate source SHA256: `3f87fecf202af77920f435c66fa1c0633e4e60616a7d6373f33a4d20e49baa0f`
- Candidate host fat-object SHA256: `303e428836146cb5fc35928645b7f0265562533f59a370fe7e6317c8fb46f8b9`
- Candidate embedded code-object SHA256: `672634a5b15fe867ca8202a58a4333c2d22f18f7d1f01f1033b524bf579adb21`
- Current owning source SHA256: `9477a7f708f7e62bc9faf7c0522ccd5ee644ea9a0629014464d59bd66239bf8a`
- Current owning embedded code-object SHA256: `0ff478bdcb1cc4d37b3e3c344f88377d953f4cc012720833006d6e02368e7ee2`

The actual A/B used the authorized `compare-candidate.py --source-root WORKTREE --toolchain LLVM --output ARTIFACT_DIR` workflow. It snapshots source headers, reads the worktree's native build flags, compiles the host object with its embedded native code object, and extracts/disassembles that embedded object. Exact flags and source snapshots are in the artifact directory. The supplied script's `baseline-change` files compare an older `offsets_owning_20261111` artifact; they are historical context, **not this task's change delta**. `d128-owning-current-change.json`, `d192-owning-current-change.json`, and `v-address-validation.json` independently compare this candidate to the actual current `whole_kernel_fixes_20261111/owning` objects.

## Red and green verification

- Regression break: recomputing the completed runtime V address for every fragment, including an alternate lowering using repeated two-input adds, must fail. The test follows reaching definitions of the physical DS address registers and propagates vector register-copy origins; it never asserts a source string or merely limits ADD3 count. It partitions all tail transposed reads after the actual strict steady loop into six PV sites and checks exact read count, immediate-offset order, and one address origin per site. It does not globally filter out lane or spill instructions to hide extra work.
- Initial baseline pytest invocation: two fixture errors from ROCm `ld.lld` lacking `libxml2.so.2` in its loader path. Sourcing the existing root `build/env.sh` resolves this; no source/environment installation was changed.
- Correct baseline red: `python -m pytest tests/test_fp8_hip_codegen.py -k runtime_pv_reuses_one_v_address -q` with `ZYFA_LLVM_ROOT` and the sourced ROCm environment: **2 failed, 61 deselected in 54.32 s**, specifically 8 d128 and 4 d192 distinct completed-address definitions in site 0. The exact new regression was also directly exercised against the owning embedded-object disassembly and failed with the same 8/4 origins.
- Candidate green: full `python -m pytest tests/test_fp8_hip_codegen.py -q` in the same environment: **63 passed in 72.19 s**. This includes strict loop, scheduler/read-ahead, DMA slots, MFMA, float instruction, memory, overlap, epilogue, and ABI checks.
- Actual fat-object A/B: compile/extraction/inspection/strict-loop comparison exited 0. Independent `validate-v-address.py` exited 0 and asserts complete six-site coverage, the exact two owning-current histogram differences, full control operand/order equality, resource equality, and strict retained loops.
- `git diff --check`: passed. Static setup/ISA-comparison tests: **12 passed in 0.93 s**. Full extension/numerical tests are deferred to root integration because this isolated worktree does not contain an installed candidate extension and candidate GPU execution was explicitly excluded by the task brief.

Logs: `build/vector-fixes-20261111/v-address-red.log`, `v-address-green.log`, `v-address-static.log`, and `v-address-ab.log` under the root checkout. Artifact root: `build/vector-fixes-20261111/v-address-artifacts/`; full ISA consumer proof, resources, control operands, histograms, and loop operand differences are in `v-address-validation.json`. The replay script is `validate-v-address.py` in the same directory.

## Exact source change

`read_v_fragment<Half,J,Ordered>` accepts a completed LDS base and preserves the same four transposed-read builtins, fragment immediate offsets, optional schedule fences, and packed return value. Existing `read_v<D,Half,J,Slot,Ordered>` retains the slot selection, actual `sm.value(slot)` allocation-aware pointer derivation, original lane address expression, and constant-slot steady callers; it forwards the completed base to the fragment reader.

`pv` computes `sm.value(slot) + laneoff` once before its first three read-ahead fragments, then uses that same base for all eight/four fragments. All waits, prefetch callbacks, and MFMA source/accumulator ordering are unchanged. The single existing scalar helper boundary remains per runtime call so the high LDS base cannot be silently folded into insufficient DS immediate offsets. V0 and runtime slot corrections continue to come from all four actual LDS array pointers; no assumption of declaration contiguity was added.

```diff
diff --git a/csrc/fp8_native.hip b/csrc/fp8_native.hip
index 43e1bea..f7251fa 100644
--- a/csrc/fp8_native.hip
+++ b/csrc/fp8_native.hip
@@ -303,12 +303,9 @@ __device__ __forceinline__ Head<D> read_head(Lds<D> sm, int runtime_slot) {
     return h;
 }
 
-template <int D, int Half, int J, int Slot, bool Ordered = false>
-__device__ __forceinline__ i8 read_v(Lds<D> sm, int runtime_slot) {
-    const int slot = Slot < 0 ? runtime_slot : Slot;
-    const int c = laneid() & 31, gb = laneid() >> 5;
-    const int laneoff = (gb * (keys<D> / 2) + (c >> 4)) * 128 + (c & 15) * 8;
-    const auto p = sm.value(slot) + laneoff + 4096 * Half + 256 * J;
+template <int Half, int J, bool Ordered = false>
+__device__ __forceinline__ i8 read_v_fragment(byte_lds base) {
+    const auto p = base + 4096 * Half + 256 * J;
     const i2 a = __builtin_amdgcn_ds_read_tr8_b64_v2i32((i2_lds)(p));
     if constexpr (Ordered) SCHED_FENCE();
     const i2 b = __builtin_amdgcn_ds_read_tr8_b64_v2i32((i2_lds)(p + 1024));
@@ -320,6 +317,14 @@ __device__ __forceinline__ i8 read_v(Lds<D> sm, int runtime_slot) {
     return i8{a[0], a[1], b[0], b[1], c0[0], c0[1], d[0], d[1]};
 }
 
+template <int D, int Half, int J, int Slot, bool Ordered = false>
+__device__ __forceinline__ i8 read_v(Lds<D> sm, int runtime_slot) {
+    const int slot = Slot < 0 ? runtime_slot : Slot;
+    const int c = laneid() & 31, gb = laneid() >> 5;
+    const int laneoff = (gb * (keys<D> / 2) + (c >> 4)) * 128 + (c & 15) * 8;
+    return read_v_fragment<Half, J, Ordered>(sm.value(slot) + laneoff);
+}
+
 
 // Pending counts LGKM events: two per K fragment and four per V fragment.
 template <int Pending>
@@ -487,27 +492,31 @@ __device__ __forceinline__ Probability<D> softmax(const Scores<D> &s, const Para
 template <int D, int Slot, typename Prefetch>
 __device__ __forceinline__ void pv(Lds<D> sm, int runtime_slot, const Probability<D> &p,
                                     const Params &params, o_tile &o, Prefetch prefetch) {
-    i8 a = read_v<D, 0, 0, Slot>(sm, runtime_slot);
-    i8 b = read_v<D, 0, 1, Slot>(sm, runtime_slot);
-    i8 c = read_v<D, 0, 2, Slot>(sm, runtime_slot);
+    const int slot = Slot < 0 ? runtime_slot : Slot;
+    const int c0 = laneid() & 31, gb = laneid() >> 5;
+    const int laneoff = (gb * (keys<D> / 2) + (c0 >> 4)) * 128 + (c0 & 15) * 8;
+    const auto vbase = sm.value(slot) + laneoff;
+    i8 a = read_v_fragment<0, 0>(vbase);
+    i8 b = read_v_fragment<0, 1>(vbase);
+    i8 c = read_v_fragment<0, 2>(vbase);
     wait_lds_fragments<4>();
     o.a = mma_scaled(a, p.a, o.a, params.sb_lo);
-    a = read_v<D, 0, 3, Slot>(sm, runtime_slot);
+    a = read_v_fragment<0, 3>(vbase);
     o.b = mma_scaled(b, p.a, o.b, params.sb_lo);
     if constexpr (D == 128)
-        b = read_v<D, 1, 0, Slot>(sm, runtime_slot);
+        b = read_v_fragment<1, 0>(vbase);
     else
         prefetch();
     wait_lds_fragments<D == 128 ? 4 : 0>();
     o.c = mma_scaled(c, p.a, o.c, params.sb_lo);
     if constexpr (D == 128)
-        c = read_v<D, 1, 1, Slot>(sm, runtime_slot);
+        c = read_v_fragment<1, 1>(vbase);
     o.d = mma_scaled(a, p.a, o.d, params.sb_lo);
     if constexpr (D == 128) {
-        a = read_v<D, 1, 2, Slot>(sm, runtime_slot);
+        a = read_v_fragment<1, 2>(vbase);
         wait_lds_fragments<4>();
         o.a = mma_scaled(b, p.b, o.a, params.sb_hi);
-        b = read_v<D, 1, 3, Slot>(sm, runtime_slot);
+        b = read_v_fragment<1, 3>(vbase);
         o.b = mma_scaled(c, p.b, o.b, params.sb_hi);
         prefetch();
         wait_lds_fragments<0>();
```

## Address counts, consumers, and exact owning-current changes

| Dimension | Owning ADD3 | Candidate ADD3 | Owning runtime scalar V-base adds | Candidate runtime scalar V-base adds | Transposed runtime reads | Removed operations |
|---|---:|---:|---:|---:|---:|---:|
| d128 | 48 | 6 | 48 | 6 | 192 → 192 | 84 |
| d192 | 24 | 6 | 24 | 6 | 96 → 96 | 36 |

Whole-kernel `s_add_u32` is 295 → 253 for d128 and 220 → 202 for d192. Whole-kernel histograms change **only** `s_add_u32` and `v_add3_u32`, by −42 each for d128 and −18 each for d192. The scalar-plus-vector construction retains one useful three-input vector add per executed PV; this task removes repeated arithmetic rather than substituting ADD3 with other mnemonics.

### d128 candidate static sites

| Site | Scalar base add PC | Completed vector address PC | DS address register | Read count | Read PC range |
|---:|---|---|---|---:|---|
| 0 | `0x6654` | `0x6658` | `v128` | 32 | `0x6664–0x67c8` |
| 1 | `0x6d58` | `0x6d5c` | `v145` | 32 | `0x6d64–0x6ec8` |
| 2 | `0x7e4c` | `0x7e50` | `v128` | 32 | `0x7e5c–0x7fc0` |
| 3 | `0x8550` | `0x8554` | `v145` | 32 | `0x855c–0x86c0` |
| 4 | `0x9bd8` | `0x9bdc` | `v80` | 32 | `0x9be4–0x9d48` |
| 5 | `0x9dd8` | `0x9ddc` | `v80` | 32 | `0x9de4–0x9f48` |

Offset order at every site: `0,1024,2048,3072,256,1280,2304,3328,512,1536,2560,3584,768,1792,2816,3840,4096,5120,6144,7168,4352,5376,6400,7424,4608,5632,6656,7680,4864,5888,6912,7936`. These match all owning consumers and the reference offset classes.

### d192 candidate static sites

| Site | Scalar base add PC | Completed vector address PC | DS address register | Read count | Read PC range |
|---:|---|---|---|---:|---|
| 0 | `0xd530` | `0xd534` | `v80` | 16 | `0xd540–0xd5dc` |
| 1 | `0xd978` | `0xd980` | `v105` | 16 | `0xd988–0xda24` |
| 2 | `0xe1b0` | `0xe1b4` | `v80` | 16 | `0xe1c0–0xe25c` |
| 3 | `0xe5f8` | `0xe600` | `v105` | 16 | `0xe608–0xe6a4` |
| 4 | `0xf1a4` | `0xf1ac` | `v65` | 16 | `0xf1b8–0xf260` |
| 5 | `0xf4a4` | `0xf4ac` | `v65` | 16 | `0xf4b8–0xf560` |

Offset order at every site: `0,1024,2048,3072,256,1280,2304,3328,512,1536,2560,3584,768,1792,2816,3840`. These match all owning consumers and the reference offset classes.

## Resources, pipeline, and strict loops

| Dimension | LDS bytes | Scratch bytes | SGPRs | VGPRs | SGPR spills | VGPR spills | Wave size |
|---|---:|---:|---:|---:|---:|---:|---:|
| d128 | 163840 | 64 | 106 | 256 | 14 | 23 | 64 |
| d192 | 131072 | 0 | 106 | 231 | 1 | 0 | 64 |

Every resource entry above is equal to owning metadata. The pre-existing d128 scratch/spills remain; this task adds none. Kernarg bytes/alignment remain 152/8. The existing two-wave/four-slot tiling and pipeline source were not edited; exact steady schedule tests passed.

Both kernels retain 30 barriers and 22 priority instructions with identical operand order. Whole-kernel `s_waitcnt` remains 130 for d128 and 90 for d192 with identical complete operand sequences. DS/global/MFMA opcode histograms are identical to owning; the only count changes are the two address mnemonics already identified.

The strict retained loop lengths are exactly **1333 d128 / 825 d192**, with exact mnemonic order and counts against owning and reference. Raw loop lengths are 1353/865, including allocator copies. d192 raw and retained instruction operands are identical to owning. d128 has exactly eight operand differences: the loop induction SGPR is consistently allocated as `s42` instead of `s43`; substituting that register name yields complete raw-loop instruction/operand identity. No wait/immediate/scheduling change occurs in those differences. These are mnemonic/operand checks, not a claim of identical code bytes or identical branch PCs across relocated objects.

## Remaining reference differences and limitations

The reference shares normal/PV-only address updates at the dispatch boundary: four static updates serve six PV sites. This candidate deliberately retains six updates, one at each call; remaining ADD3 instructions are useful. The reference's entry-precomputed V0+lane base also differs from this candidate's one scalar plus one vector pair per runtime site. Whole-kernel reference identity is not claimed: using the comparison policy that excludes allocator lane spills, copies, and scratch, d128 is 5302 reference / 4958 candidate (+314 / −658 opcode deltas), and d192 is 3737 / 3384 (+219 / −572). These broad differences predate or lie outside this narrow task. Root Task 2 owns the separate entry setup/host-launch candidate.

No numerical or uninstrumented timing conclusion is drawn from static instruction counts. Root must rebuild/link the integrated extension and run its intended numerical/timing acceptance, then inspect the combined fat object. The longer lifetime of a shared V address is the main theoretical implementation concern; both isolated generated kernels retain exactly owning resource metadata, steady loops, wait operands, and memory counts.

## Complete whole-kernel opcode histograms

Each table includes every raw opcode and every retained opcode for reference, current owning, and candidate. A zero means absent. `Raw` includes copies, lane operations, and scratch. `Retained` uses the supplied whole-kernel comparison policy: exclude `v_readlane_b32`/`v_writelane_b32`, scratch, and register-to-register copies; literal moves and all useful ISA remain. This explains the difference between owning-current JSON totals (which include lane instructions) and the comparable retained totals here.

### d128

| Opcode | Raw ref | Raw owning | Raw candidate | Retained ref | Retained owning | Retained candidate |
|---|---:|---:|---:|---:|---:|---:|
| `buffer_load_dwordx4` | 106 | 106 | 106 | 106 | 106 | 106 |
| `ds_read_b128` | 140 | 140 | 140 | 140 | 140 | 140 |
| `ds_read_b64_tr_b8` | 320 | 320 | 320 | 320 | 320 | 320 |
| `ds_write_b128` | 16 | 16 | 16 | 16 | 16 | 16 |
| `global_load_dwordx4` | 20 | 20 | 20 | 20 | 20 | 20 |
| `global_store_dword` | 2 | 2 | 2 | 2 | 2 | 2 |
| `global_store_dwordx4` | 16 | 16 | 16 | 16 | 16 | 16 |
| `s_add_u32` | 402 | 295 | 253 | 402 | 295 | 253 |
| `s_addc_u32` | 40 | 29 | 29 | 40 | 29 | 29 |
| `s_addk_i32` | 0 | 5 | 5 | 0 | 5 | 5 |
| `s_and_b32` | 88 | 23 | 23 | 88 | 23 | 23 |
| `s_and_b64` | 0 | 19 | 19 | 0 | 19 | 19 |
| `s_barrier` | 30 | 30 | 30 | 30 | 30 | 30 |
| `s_bfe_u32` | 0 | 5 | 5 | 0 | 5 | 5 |
| `s_bitcmp1_b32` | 2 | 2 | 2 | 2 | 2 | 2 |
| `s_branch` | 31 | 28 | 28 | 31 | 28 | 28 |
| `s_cbranch_scc0` | 20 | 19 | 19 | 20 | 19 | 19 |
| `s_cbranch_scc1` | 78 | 75 | 75 | 78 | 75 | 75 |
| `s_cbranch_vccz` | 0 | 2 | 2 | 0 | 2 | 2 |
| `s_cmp_eq_u32` | 42 | 17 | 17 | 42 | 17 | 17 |
| `s_cmp_eq_u64` | 10 | 8 | 8 | 10 | 8 | 8 |
| `s_cmp_ge_i32` | 12 | 12 | 12 | 12 | 12 | 12 |
| `s_cmp_ge_u32` | 23 | 29 | 29 | 23 | 29 | 29 |
| `s_cmp_lg_u32` | 0 | 5 | 5 | 0 | 5 | 5 |
| `s_cmp_lg_u64` | 6 | 6 | 6 | 6 | 6 | 6 |
| `s_cmp_lt_i32` | 12 | 14 | 14 | 12 | 14 | 14 |
| `s_cmp_lt_u32` | 4 | 8 | 8 | 4 | 8 | 8 |
| `s_cmpk_le_u32` | 8 | 0 | 0 | 8 | 0 | 0 |
| `s_cselect_b32` | 25 | 22 | 22 | 25 | 22 | 22 |
| `s_cselect_b64` | 6 | 16 | 16 | 6 | 16 | 16 |
| `s_endpgm` | 1 | 1 | 1 | 1 | 1 | 1 |
| `s_load_dword` | 3 | 3 | 3 | 3 | 3 | 3 |
| `s_load_dwordx16` | 2 | 2 | 2 | 2 | 2 | 2 |
| `s_load_dwordx2` | 1 | 1 | 1 | 1 | 1 | 1 |
| `s_load_dwordx4` | 1 | 1 | 1 | 1 | 1 | 1 |
| `s_load_dwordx8` | 5 | 5 | 5 | 5 | 5 | 5 |
| `s_lshl_b32` | 104 | 73 | 73 | 104 | 73 | 73 |
| `s_lshr_b32` | 16 | 9 | 9 | 16 | 9 | 9 |
| `s_min_u32` | 13 | 13 | 13 | 13 | 13 | 13 |
| `s_mov_b32` | 113 | 307 | 307 | 30 | 54 | 54 |
| `s_mov_b64` | 0 | 25 | 25 | 0 | 0 | 0 |
| `s_movk_i32` | 0 | 4 | 4 | 0 | 4 | 4 |
| `s_mul_i32` | 171 | 57 | 57 | 171 | 57 | 57 |
| `s_nop` | 182 | 307 | 307 | 182 | 307 | 307 |
| `s_not_b32` | 0 | 9 | 9 | 0 | 9 | 9 |
| `s_or_b32` | 0 | 31 | 31 | 0 | 31 | 31 |
| `s_or_b64` | 0 | 4 | 4 | 0 | 4 | 4 |
| `s_setprio` | 22 | 22 | 22 | 22 | 22 | 22 |
| `s_sub_i32` | 12 | 12 | 12 | 12 | 12 | 12 |
| `s_sub_u32` | 22 | 12 | 12 | 22 | 12 | 12 |
| `s_waitcnt` | 114 | 130 | 130 | 114 | 130 | 130 |
| `s_xor_b32` | 0 | 7 | 7 | 0 | 7 | 7 |
| `scratch_load_dword` | 0 | 11 | 11 | 0 | 0 | 0 |
| `scratch_load_dwordx4` | 0 | 4 | 4 | 0 | 0 | 0 |
| `scratch_store_dword` | 0 | 7 | 7 | 0 | 0 | 0 |
| `scratch_store_dwordx4` | 0 | 4 | 4 | 0 | 0 | 0 |
| `v_add3_u32` | 0 | 48 | 6 | 0 | 48 | 6 |
| `v_add_f32_e32` | 26 | 26 | 26 | 26 | 26 | 26 |
| `v_add_u32_e32` | 73 | 65 | 65 | 73 | 65 | 65 |
| `v_and_b32_e32` | 32 | 11 | 11 | 32 | 11 | 11 |
| `v_and_or_b32` | 0 | 1 | 1 | 0 | 1 | 1 |
| `v_bfe_u32` | 31 | 5 | 5 | 31 | 5 | 5 |
| `v_cmp_eq_u32_e32` | 1 | 1 | 1 | 1 | 1 | 1 |
| `v_cmp_gt_i32_e32` | 192 | 192 | 192 | 192 | 192 | 192 |
| `v_cmp_lt_f32_e32` | 6 | 6 | 6 | 6 | 6 | 6 |
| `v_cndmask_b32_e32` | 0 | 1 | 1 | 0 | 1 | 1 |
| `v_cndmask_b32_e64` | 199 | 198 | 198 | 199 | 198 | 198 |
| `v_cvt_i32_f32_e32` | 16 | 16 | 16 | 16 | 16 | 16 |
| `v_cvt_pk_bf16_f32` | 64 | 64 | 64 | 64 | 64 | 64 |
| `v_cvt_pk_u8_f32` | 640 | 640 | 640 | 640 | 640 | 640 |
| `v_exp_f32_e32` | 6 | 6 | 6 | 6 | 6 | 6 |
| `v_floor_f32_e32` | 16 | 16 | 16 | 16 | 16 | 16 |
| `v_fma_f32` | 680 | 680 | 680 | 680 | 680 | 680 |
| `v_log_f32_e32` | 2 | 2 | 2 | 2 | 2 | 2 |
| `v_lshl_add_u32` | 21 | 0 | 0 | 21 | 0 | 0 |
| `v_lshl_or_b32` | 4 | 3 | 3 | 4 | 3 | 3 |
| `v_lshlrev_b32_e32` | 36 | 33 | 33 | 36 | 33 | 33 |
| `v_lshrrev_b32_e32` | 9 | 7 | 7 | 9 | 7 | 7 |
| `v_mad_u32_u24` | 4 | 0 | 0 | 4 | 0 | 0 |
| `v_max3_f32` | 224 | 224 | 224 | 224 | 224 | 224 |
| `v_max_f32_e32` | 78 | 78 | 78 | 78 | 78 | 78 |
| `v_med3_f32` | 16 | 16 | 16 | 16 | 16 | 16 |
| `v_mfma_f32_16x16x128_f8f6f4` | 20 | 20 | 20 | 20 | 20 | 20 |
| `v_mfma_f32_32x32x64_f8f6f4` | 64 | 64 | 64 | 64 | 64 | 64 |
| `v_mfma_scale_f32_32x32x64_f8f6f4` | 80 | 80 | 80 | 80 | 80 | 80 |
| `v_mov_b32_e32` | 369 | 112 | 112 | 133 | 8 | 8 |
| `v_mov_b64_e32` | 0 | 320 | 320 | 0 | 0 | 0 |
| `v_mul_f32_e32` | 170 | 170 | 170 | 170 | 170 | 170 |
| `v_mul_lo_u32` | 9 | 11 | 11 | 9 | 11 | 11 |
| `v_or3_b32` | 0 | 2 | 2 | 0 | 2 | 2 |
| `v_or_b32_e32` | 0 | 24 | 24 | 0 | 24 | 24 |
| `v_permlane32_swap_b32_e32` | 48 | 48 | 48 | 48 | 48 | 48 |
| `v_pk_mul_f32` | 192 | 192 | 192 | 192 | 192 | 192 |
| `v_rcp_f32_e32` | 2 | 2 | 2 | 2 | 2 | 2 |
| `v_readfirstlane_b32` | 4 | 1 | 1 | 4 | 1 | 1 |
| `v_readlane_b32` | 0 | 59 | 59 | 0 | 0 | 0 |
| `v_sub_f32_e32` | 12 | 12 | 12 | 12 | 12 | 12 |
| `v_sub_u32_e32` | 3 | 1 | 1 | 3 | 1 | 1 |
| `v_writelane_b32` | 0 | 14 | 14 | 0 | 0 | 0 |
| `v_xor_b32_e32` | 31 | 22 | 22 | 31 | 22 | 22 |
| **Total** | 5621 | 5843 | 5759 | 5302 | 5042 | 4958 |

### d192

| Opcode | Raw ref | Raw owning | Raw candidate | Retained ref | Retained owning | Retained candidate |
|---|---:|---:|---:|---:|---:|---:|
| `buffer_load_dwordx4` | 85 | 85 | 85 | 85 | 85 | 85 |
| `ds_read_b128` | 104 | 104 | 104 | 104 | 104 | 104 |
| `ds_read_b64_tr_b8` | 160 | 160 | 160 | 160 | 160 | 160 |
| `ds_write_b128` | 16 | 16 | 16 | 16 | 16 | 16 |
| `global_load_dwordx4` | 30 | 30 | 30 | 30 | 30 | 30 |
| `global_store_dword` | 2 | 2 | 2 | 2 | 2 | 2 |
| `global_store_dwordx4` | 16 | 16 | 16 | 16 | 16 | 16 |
| `s_add_u32` | 345 | 220 | 202 | 345 | 220 | 202 |
| `s_addc_u32` | 40 | 29 | 29 | 40 | 29 | 29 |
| `s_and_b32` | 78 | 23 | 23 | 78 | 23 | 23 |
| `s_and_b64` | 0 | 21 | 21 | 0 | 21 | 21 |
| `s_barrier` | 30 | 30 | 30 | 30 | 30 | 30 |
| `s_bfe_u32` | 0 | 5 | 5 | 0 | 5 | 5 |
| `s_bitcmp1_b32` | 2 | 2 | 2 | 2 | 2 | 2 |
| `s_branch` | 25 | 30 | 30 | 25 | 30 | 30 |
| `s_cbranch_scc0` | 20 | 17 | 17 | 20 | 17 | 17 |
| `s_cbranch_scc1` | 66 | 71 | 71 | 66 | 71 | 71 |
| `s_cbranch_vccnz` | 0 | 1 | 1 | 0 | 1 | 1 |
| `s_cmp_eq_u32` | 42 | 13 | 13 | 42 | 13 | 13 |
| `s_cmp_eq_u64` | 10 | 8 | 8 | 10 | 8 | 8 |
| `s_cmp_ge_i32` | 6 | 6 | 6 | 6 | 6 | 6 |
| `s_cmp_ge_u32` | 23 | 29 | 29 | 23 | 29 | 29 |
| `s_cmp_lg_u32` | 0 | 9 | 9 | 0 | 9 | 9 |
| `s_cmp_lg_u64` | 6 | 6 | 6 | 6 | 6 | 6 |
| `s_cmp_lt_i32` | 6 | 8 | 8 | 6 | 8 | 8 |
| `s_cmp_lt_u32` | 4 | 8 | 8 | 4 | 8 | 8 |
| `s_cmpk_le_u32` | 8 | 0 | 0 | 8 | 0 | 0 |
| `s_cselect_b32` | 25 | 20 | 20 | 25 | 20 | 20 |
| `s_cselect_b64` | 6 | 11 | 11 | 6 | 11 | 11 |
| `s_endpgm` | 1 | 1 | 1 | 1 | 1 | 1 |
| `s_load_dword` | 3 | 3 | 3 | 3 | 3 | 3 |
| `s_load_dwordx16` | 2 | 2 | 2 | 2 | 2 | 2 |
| `s_load_dwordx2` | 1 | 1 | 1 | 1 | 1 | 1 |
| `s_load_dwordx4` | 1 | 1 | 1 | 1 | 1 | 1 |
| `s_load_dwordx8` | 5 | 5 | 5 | 5 | 5 | 5 |
| `s_lshl_b32` | 99 | 81 | 81 | 99 | 81 | 81 |
| `s_lshl_b64` | 10 | 10 | 10 | 10 | 10 | 10 |
| `s_lshr_b32` | 16 | 9 | 9 | 16 | 9 | 9 |
| `s_min_u32` | 13 | 13 | 13 | 13 | 13 | 13 |
| `s_mov_b32` | 124 | 141 | 141 | 39 | 47 | 47 |
| `s_mov_b64` | 0 | 22 | 22 | 0 | 9 | 9 |
| `s_movk_i32` | 0 | 4 | 4 | 0 | 4 | 4 |
| `s_mul_i32` | 152 | 53 | 53 | 152 | 53 | 53 |
| `s_nop` | 140 | 182 | 182 | 140 | 182 | 182 |
| `s_not_b32` | 0 | 9 | 9 | 0 | 9 | 9 |
| `s_or_b32` | 0 | 34 | 34 | 0 | 34 | 34 |
| `s_setprio` | 22 | 22 | 22 | 22 | 22 | 22 |
| `s_sub_i32` | 6 | 6 | 6 | 6 | 6 | 6 |
| `s_sub_u32` | 22 | 6 | 6 | 22 | 6 | 6 |
| `s_waitcnt` | 86 | 90 | 90 | 86 | 90 | 90 |
| `s_xor_b32` | 0 | 7 | 7 | 0 | 7 | 7 |
| `v_add3_u32` | 0 | 24 | 6 | 0 | 24 | 6 |
| `v_add_f32_e32` | 14 | 14 | 14 | 14 | 14 | 14 |
| `v_add_lshl_u32` | 0 | 1 | 1 | 0 | 1 | 1 |
| `v_add_u32_e32` | 71 | 50 | 50 | 71 | 50 | 50 |
| `v_and_b32_e32` | 32 | 12 | 12 | 32 | 12 | 12 |
| `v_and_or_b32` | 0 | 4 | 4 | 0 | 4 | 4 |
| `v_bfe_u32` | 26 | 6 | 6 | 26 | 6 | 6 |
| `v_cmp_eq_u32_e32` | 1 | 1 | 1 | 1 | 1 | 1 |
| `v_cmp_gt_i32_e32` | 96 | 96 | 96 | 96 | 96 | 96 |
| `v_cmp_gt_u32_e32` | 2 | 2 | 2 | 2 | 2 | 2 |
| `v_cmp_lt_f32_e32` | 6 | 6 | 6 | 6 | 6 | 6 |
| `v_cndmask_b32_e32` | 0 | 3 | 3 | 0 | 3 | 3 |
| `v_cndmask_b32_e64` | 105 | 102 | 102 | 105 | 102 | 102 |
| `v_cvt_i32_f32_e32` | 8 | 8 | 8 | 8 | 8 | 8 |
| `v_cvt_pk_bf16_f32` | 64 | 64 | 64 | 64 | 64 | 64 |
| `v_cvt_pk_fp8_f32` | 160 | 160 | 160 | 160 | 160 | 160 |
| `v_exp_f32_e32` | 326 | 326 | 326 | 326 | 326 | 326 |
| `v_floor_f32_e32` | 8 | 8 | 8 | 8 | 8 | 8 |
| `v_fma_f32` | 18 | 18 | 18 | 18 | 18 | 18 |
| `v_log_f32_e32` | 2 | 2 | 2 | 2 | 2 | 2 |
| `v_lshl_add_u32` | 19 | 0 | 0 | 19 | 0 | 0 |
| `v_lshl_or_b32` | 4 | 5 | 5 | 4 | 5 | 5 |
| `v_lshlrev_b32_e32` | 29 | 28 | 28 | 29 | 28 | 28 |
| `v_lshrrev_b32_e32` | 6 | 6 | 6 | 6 | 6 | 6 |
| `v_mad_u32_u24` | 3 | 0 | 0 | 3 | 0 | 0 |
| `v_max3_f32` | 112 | 112 | 112 | 112 | 112 | 112 |
| `v_max_f32_e32` | 38 | 38 | 38 | 38 | 38 | 38 |
| `v_med3_f32` | 8 | 8 | 8 | 8 | 8 | 8 |
| `v_mfma_f32_16x16x128_f8f6f4` | 10 | 10 | 10 | 10 | 10 | 10 |
| `v_mfma_f32_32x32x64_f8f6f4` | 48 | 48 | 48 | 48 | 48 | 48 |
| `v_mfma_scale_f32_32x32x64_f8f6f4` | 40 | 40 | 40 | 40 | 40 | 40 |
| `v_mov_b32_e32` | 271 | 332 | 332 | 133 | 62 | 62 |
| `v_mov_b64_e32` | 0 | 160 | 160 | 0 | 0 | 0 |
| `v_mul_f32_e32` | 149 | 149 | 149 | 149 | 149 | 149 |
| `v_mul_lo_u32` | 9 | 10 | 10 | 9 | 10 | 10 |
| `v_or3_b32` | 0 | 2 | 2 | 0 | 2 | 2 |
| `v_or_b32_e32` | 0 | 21 | 21 | 0 | 21 | 21 |
| `v_permlane32_swap_b32_e32` | 40 | 40 | 40 | 40 | 40 | 40 |
| `v_pk_fma_f32` | 128 | 128 | 128 | 128 | 128 | 128 |
| `v_pk_mul_f32` | 192 | 192 | 192 | 192 | 192 | 192 |
| `v_rcp_f32_e32` | 2 | 2 | 2 | 2 | 2 | 2 |
| `v_readfirstlane_b32` | 3 | 1 | 1 | 3 | 1 | 1 |
| `v_readlane_b32` | 0 | 1 | 1 | 0 | 0 | 0 |
| `v_sub_f32_e32` | 20 | 20 | 20 | 20 | 20 | 20 |
| `v_sub_u32_e32` | 5 | 3 | 3 | 5 | 3 | 3 |
| `v_writelane_b32` | 0 | 1 | 1 | 0 | 0 | 0 |
| `v_xor_b32_e32` | 27 | 13 | 13 | 27 | 13 | 13 |
| **Total** | 3960 | 3959 | 3923 | 3737 | 3420 | 3384 |

