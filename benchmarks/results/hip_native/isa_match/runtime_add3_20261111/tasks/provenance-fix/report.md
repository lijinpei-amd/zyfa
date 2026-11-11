# Final review fix: Numeric runtime LDS V addressing

Status: minimal source remedy, actual fat-object audit and final full codegen tests complete. Corrected isolated commit: `f401329b387b1e4dfdf98e1304c6f054a3535244` (`Use numeric LDS addresses for HIP FP8 runtime selection`). Candidate source is based on isolated commit `041a610` (root equivalent `9da7f9d`). Root integration, linked-extension rebuild, full GPU suite and timings remain pending.

## Source semantics and regression

The prior `byte_lds invariant_vbase` was based on separately declared array `v0`; adding an array-derived slot delta could create out-of-object C++ pointer arithmetic when selecting `v1`, `v2` or `v3`. Valid emitted addresses did not establish defined source arithmetic.

The invariant is now `uint32_t`: `(uint32_t)(uintptr_t)sm.v0 + (uint32_t)vlane`. Each of four selections adds the actual-array-derived `value_offset` in unsigned 32-bit arithmetic, then converts the final numeric address through `uintptr_t` to `byte_lds`, following existing `Lds::value` conventions. All four arrays, correction terms, steady code, waits, pipeline structure and launch guards remain intact. No new inline assembly or LLVM changes.

`test_hip_runtime_v_selection_uses_numeric_lds_addresses` inspects frontend IR with LLVM passes disabled and value names retained. It requires integer storage and unsigned `add i32` for the invariant, plus four integer additions feeding integer-to-LDS-pointer conversions. Frontend address-space aliases and integer widening/truncation are handled. The test does not constrain the optimized IR recipe or its SSA names.

Baseline frontend IR fails for both dimensions because the invariant is pointer storage; corrected frontend IR passes. Retained optimized IR supplies supporting evidence: old V0-rooted dynamic non-inbounds GEP chains number 12 per kernel, corrected chains number zero. This optimized representation is not a regression requirement.

- [frontend-address-proof.json](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/provenance_fix/frontend-address-proof.json) records both frontend chains and optimized observations.
- [frontend-red.log](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/provenance_fix/frontend-red.log) records expected baseline failures.
- [baseline-frontend.ll](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/provenance_fix/baseline-frontend.ll) and [candidate-frontend.ll](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/provenance_fix/candidate-frontend.ll) retain pre-optimization IR.
- [baseline-optimized.ll](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/provenance_fix/baseline-optimized.ll) and [candidate-optimized.ll](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/provenance_fix/candidate-optimized.ll) retain optimized IR; original paths were `/tmp/pytest-of-jinpli/pytest-80/native_order0/native.ll` and `/tmp/pytest-of-jinpli/pytest-82/native_order0/native.ll`.

## Actual native fat object

The existing compare-candidate script compiled the final source with the same supplied LLVM/ROCm flags. Exact command and snapshots: [compile-command.json](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/provenance_fix/compile-command.json), [manifest.json](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/provenance_fix/manifest.json), [fp8_native.o](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/provenance_fix/fp8_native.o).

| Check | d128 | d192 |
|---|---:|---:|
| Whole ADD3 | 0 | 0 |
| Consuming runtime address selections | 4 | 4 |
| Strict retained steady sequence/count | 1333, identical | 825, identical |
| Six PV sites DS consumers | 192, same offsets | 96, same offsets |
| Retained whole kernel attempt1 → corrected | 4932 → 4929 | 3359 → 3359 |
| Raw whole kernel attempt1 → corrected | 5733 → 5730 | 3898 → 3898 |
| Setup MAD_U24 / MUL_LO | 4 / 7 | 3 / 7 |
| LDS bytes | 163840 | 131072 |

Floating-point, MFMA, memory, barriers, priorities, scratch instructions, register-copy and lane-spill counts are unchanged. Resource metadata is byte-identical apart from the file-path header: d128 VGPR/SGPR 256/106, private bytes 64, spills 23/14; d192 VGPR/SGPR 231/106, private bytes 0, spills 0/1.

Complete d128 retained/raw mnemonic delta against attempt1: `s_nop -3`, `v_lshl_or_b32 -1`, `v_lshlrev_b32_e32 +1`; no other count changes. The numeric invariant changes its entry lane-bit recipe to combine `(lane<<3)&0xf8` with `(lane>>5)<<13` and actual V0, affecting entry instruction scheduling and register operands. The exact steady mnemonic sequence is preserved. d192 complete raw instructions, operands, addresses and branch targets are identical.

Full entry/invariant/four-selection/DS audits against original `39fec40` owning and the assembly reference are in:
- [d128-current-analysis.json](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/provenance_fix/d128-current-analysis.json)
- [d192-current-analysis.json](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/provenance_fix/d192-current-analysis.json)
- [current-summary.json](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/provenance_fix/current-summary.json)
- [capture-correction-checks.json](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/provenance_fix/capture-correction-checks.json)

All four candidate updates consume the same entry reaching definition: d128 0x1efc, d192 0xabd8. The capture derives current PCs rather than assuming old ones. Complete entry vector work remains net +3 versus original owning. The normalized retained V-address slice therefore remains 18 → 9 / 18 → 7; complete whole-kernel deltas include every setup/control operation.

## Binary comparison and handoff

[machine-parity.json](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/provenance_fix/machine-parity.json) compares every ELF section and all raw instructions against attempt1. `.text` is the same length (57896 bytes) but differs; `.rodata` (128 bytes) and `.note` (1272 bytes) are byte-identical. Other changed sections are `.symtab`, `.dynstr`, `.eh_frame`, `.strtab`, `.gnu.hash` and `.dynsym`. The d192 text suffix from `0xa800` is byte-identical; its SHA256 is `8860b75420ae2a835fa7d296734171d6b5ac1bbc034de03d340f04ba2a67af36`.

The full code object is changed, so previous GPU/timing evidence must not be treated as evidence for an identical whole machine binary. Root will rebuild and rerun linked/GPU/timing checks. Full raw deltas: [d128-against-attempt1.json](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/provenance_fix/d128-against-attempt1.json) and [d192-against-attempt1.json](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/provenance_fix/d192-against-attempt1.json).

Final full covering command, completed with **70 passed in 195.55s**: `source /home/jinpli/workspace/home/jinpli/development/zyfa/build/env.sh; ZYFA_LLVM_ROOT=/home/jinpli/workspace/home/jinpli/development/workspace/01/llvm-project /home/jinpli/workspace/home/jinpli/venv/01/bin/python -m pytest tests/test_fp8_hip_codegen.py -q`. [codegen-tests.log](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/provenance_fix/codegen-tests.log). The first run was 68 passed / 2 failed because the new matcher did not handle frontend `.ascast` aliases and 32-bit LDS inttoptr lowering; those matcher assumptions are corrected.

Capture commands: `python build/runtime-add3-20261111/provenance_fix/compare-object.py`; `python build/runtime-add3-20261111/verify.py build/runtime-add3-20261111/provenance_fix`; `python build/runtime-add3-20261111/capture-v-addresses.py build/runtime-add3-20261111/provenance_fix`. Frontend command uses `clang++ -O3 -std=c++20 -ffast-math -fhonor-infinities -DKITTENS_CDNA4 --offload-arch=gfx950 --rocm-path=/home/jinpli/workspace/home/jinpli/.local/opt/rocm-7.2.3 --cuda-device-only -S -emit-llvm -Xclang -disable-llvm-passes -fno-discard-value-names`.

### SHA256

- Final source: `8ba78b70f82e232c8aef20f339078f6a10f915a57b61cef614bb844cfa31eed5`
- Final fat object: `ddcf2ae0d4d95caaa7b39b65a136eb54b2b7ec2b371dd165b94a892734d2a6a0`
- Final embedded code object: `f4a4231fe54ce1f1fd95f7e58bdc258b88feec87f0166ebbaaa1e653e9be9abc`
- Final `.text`: `4f9a3c7326d08d469ee8a079f245c6db56dada07581039d090919c71eab5593f`
- Unchanged `.rodata`: `82c8477afd00269769662b3ae777dc0ea2c11ae17e09235a917f83f3950d7f4f`
- Unchanged `.note`: `e9a7c27944dacd8d9c8f152d82ba091ef9f15c8b0a52b034b8f52137aa29fa75`
- baseline frontend IR: `ae9705ff6022f1b512b23d21143ff7ba0c4c48dc58df62dc2b6d4a8f535dc9b4`
- baseline optimized IR: `264dfff0d179bf99c6547a69f806ee0febe91574661a8016af959e616f34a77e`
- candidate frontend IR: `9203f1dbd14c9015301884e5356d311ebfef7d11ccf23cf371b708246cb04391`
- candidate optimized IR: `2d105c28699ff23733d158b3e7a034a32811cdc06cc6fb72a6103c489c3d1606`

Final frontend and optimized IR are retained from the completed `/tmp/pytest-of-jinpli/pytest-82` test run. They match the preliminary captured kernel IR; only the compiler-generated HIP CUID identifier differs between compilations. Final source matches the fat-object source snapshot; `git diff --check` passed and the isolated worktree is clean after commit. See [final-verification.json](/home/jinpli/workspace/home/jinpli/development/zyfa/build/runtime-add3-20261111/provenance_fix/final-verification.json). Root linked/GPU/timing validation remains pending.
