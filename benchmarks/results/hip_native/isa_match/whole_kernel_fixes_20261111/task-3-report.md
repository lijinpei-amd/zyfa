# Task 3 evidence: HIP tail scales, next-pass state, and LSE indexing

## Status and candidate

Accepted isolated candidate: `140316a1f9f710a277817d9fb9db9514e1617c39` (detached child of `1b16627`). Source worktree: `/home/jinpli/workspace/home/jinpli/development/zyfa/build/whole-kernel-candidates/tails`. Only `csrc/fp8_native.hip` and `tests/test_fp8_hip_codegen.py` changed. No LDS helpers, launch tiling, allocations, compiler code, emitted assembly, or numerical/performance tests were modified. No push was performed.

Packaged evidence: `/home/jinpli/workspace/home/jinpli/development/zyfa/build/whole-kernel-candidates/tails/build/control-scale-lse`. `compile-command.json` records flags obtained directly from candidate `setup.py`; `compile.log`, `manifest.json`, `native.co`, `disassembly.s`, `metadata.txt`, `d{128,192}-loop.json`, `d{128,192}-kernel.json`, `d{128,192}-baseline-change.json`, and `source.hip` retain the actual input and output. All compilation used the frozen root `build/whole-kernel-candidates/toolchain` (LLVM base `18b60c731b48`), with inspection through candidate `benchmarks/inspect_hip.py` and packaged gfx950 fat-object extraction. The mutable supplied LLVM build was never used. Root's separate new LLVM candidate is not included in this evidence.

## Final behavior and proof

1. D128 masked/tail sums consume `Params.sum_scale_lo/hi` instead of reconstructing the exponent from `Params.sb_lo/hi`. Both fields are assigned together in each statistics update from exactly `__int_as_float(sb << 23)`; the reused value is a bit-identical binary32 power-of-two representation. It introduces no arithmetic recomputation or rounding. The d128 separate multiply/add pragmas remain, and the d192 FMA remains. D192 retains exponent reconstruction to preserve the strict steady loop; see rejected experiment below.
2. `have_next` is a `uint32_t` flag with a common `phase_use(have_next)` use. The four existing final/dead-final next-pass sites use explicit sequential branches and local labels. If the current job's reflected query block differs and `pass == 0`, the job stays fixed, `pass` becomes one, and preparation runs without reloading the job. Otherwise the job advances by grid, `pass` becomes zero, and a new job is loaded and prepared exactly when the new job is below `n_jobs`. The completion flag is one precisely for these two preparation cases and zero for exhaustion. The final common branch consumes that flag. Original saved output pointers, `next_base = (base + n) & 3`, group-0 load guard, query load placement, and all waits and phase/pipeline barriers remain. Explicit source tests do not eliminate every compound predicate in optimized ISA: remaining `s_or_b64` and tail-parity materialization are outside the measured reduction.
3. `set_pass` forms `(lse_offset + paired_head * args.l_sh2) * 4u` in 32 bits before adding that byte offset to the scalar LSE base, preserving the nullable-pointer condition. The narrowing follows an existing host contract, not an assumed device limit: `csrc/fp8_d128_asm.hip:168` and `csrc/fp8_d192_asm.hip:171` include `(uint64_t)B * Hq * M * 4` in spans rejected at `>= 1ull << 32` for native launches. Both wrappers set `a.l_sh2 = M`. The job table's LSE element offset is `((b * Hq) + hq0) * M`; paired heads use an even `hq0` followed by its valid adjacent head, while nonpaired launches use `paired_head == 0`. Thus `lse_offset + paired_head * M <= B * Hq * M - M`, and its multiplication by four is below 2^32. The output row in `[0,M-1]` also stays within that same validated total span. Both the intermediate element addition and the byte multiplication therefore fit u32. No new bounds or fallback restrictions were added.

The transition truth-table check compared 1,023,360 representative states (query counts 1–128, all reflected-pair indices, both pass values, several job counts/grid strides, and exhausted-grid cases); all matched the original job/pass/completion/load decision. A seeded LSE arithmetic check covered 16,966 sampled accepted layouts and matched wide old addressing through the final row. These CPU checks support the semantic reasoning; GPU numerical execution remains root-owned.

## Whole-kernel and strict-loop results

The root comparison retains initialization, waits, nops, branches and meaningful cross-lane work. It excludes scratch instructions, register-source copies and SGPR lane spills. The primary score is the sum of absolute per-mnemonic count differences from the hand-assembly reference, rather than raw instruction total.

| Metric | d128 frozen base | d128 candidate | d192 frozen base | d192 candidate |
| --- | ---: | ---: | ---: | ---: |
| Reference retained whole count | 5302 | 5302 | 3737 | 3737 |
| HIP retained whole count | 5089 | 5060 | 3529 | 3494 |
| Positive per-mnemonic delta sum | 493 | 466 | 378 | 345 |
| Negative per-mnemonic delta sum | -706 | -708 | -586 | -588 |
| Absolute per-mnemonic distance | 1199 | 1174 | 964 | 933 |
| Strict retained steady count | 1333 | 1333 | 825 | 825 |
| Steady histogram and sequence | exact | exact | exact | exact |

Strict-loop first mismatch: **none** in either dimension. Whole-kernel histograms and sequence still differ from the reference. The first whole mismatch stays at retained index 4, in entry address setup: d128 reference `v_lshrrev_b32_e32` at PC `0x1524`, candidate `v_bfe_u32` at PC `0x1b20`; d192 reference `v_lshrrev_b32_e32` at PC `0x1524`, candidate `v_and_b32_e32` at PC `0xab20`. Full operand details and every count are in the JSONs. The candidate does not claim whole-kernel identity.

All changed retained mnemonic counts versus the owning/frozen baseline:

| Mnemonic | d128 before → after | d192 before → after |
| --- | ---: | ---: |
| `s_add_u32` | 185 → 186 | 174 → 173 |
| `s_addc_u32` | 31 → 29 | 31 → 29 |
| `s_and_b32` | 35 → 33 | 25 → 21 |
| `s_and_b64` | 32 → 24 | 40 → 30 |
| `s_cbranch_scc0` | 23 → 19 | 21 → 17 |
| `s_cbranch_scc1` | 75 → 73 | 73 → 69 |
| `s_cmp_eq_u32` | 15 → 17 | 11 → 13 |
| `s_lshl_b32` | 68 → 73 | 76 → 81 |
| `s_lshl_b64` | 6 → 0 | 17 → 10 |
| retained literal `s_mov_b32` | 44 → 54 | 38 → 47 |
| retained literal `s_mov_b64` | 12 → 0 | 29 → 9 |
| `s_nop` | 310 → 309 | 179 → 178 |
| `s_waitcnt` | 168 → 170 | 116 → 118 |
| `v_lshlrev_b32_e32` | 45 → 33 | 28 → 28 |

The reductions trade mask PHIs for more 32-bit literals and wide LSE shifts for narrow shifts; nops and waits are counted explicitly, not removed by filtering. No hazard assumption was weakened.

## Resources

Metadata is identical to the fresh frozen base:

| Resource | d128 | d192 |
| --- | ---: | ---: |
| LDS bytes per block | 163840 | 131072 |
| VGPRs | 256 | 231 |
| SGPRs | 106 | 106 |
| AGPRs | 0 | 0 |
| Private/scratch bytes per workitem | 64 | 0 |

The d128 64-byte scratch allocation is preexisting; this candidate does not remove it or increase it. Lane spill exclusions and raw metadata remain available in the artifacts.

## Focused validation

`build/checks/control-focused-pytest.log`: **15 passed, 46 deselected**. Command:

```sh
source /home/jinpli/workspace/home/jinpli/development/zyfa/build/env.sh
ZYFA_LLVM_ROOT=/home/jinpli/workspace/home/jinpli/development/zyfa/build/whole-kernel-candidates/toolchain /home/jinpli/workspace/home/jinpli/venv/01/bin/python -m pytest -q tests/test_fp8_hip_codegen.py -k 'host_argument or raw_kernarg or steady_disassembled or whole_float or lse_indexing or tail_reuses or lse_stores or priority_count or barrier_count'
```

This covers host argument compilation, raw kernarg ABI alignment, exact disassembled steady mnemonics, whole float counts, whole barrier/priority counts, scalar-base/32-bit-offset LSE stores, and two new regression checks for no additional wide LSE shifts and d128 exponent reconstruction count matching the reference. The earlier run without the compatibility library path passed two compilation/ABI tests but had 13 fixture setup errors because ROCm reference `ld.lld` could not load `libxml2.so.2`; the correctly configured run passed all selected tests. `git diff --check` passed before committing. Packaged strict-loop/histogram verification passed separately; the device-only pytest fixture is supplementary.

## Rejected and intermediate experiments

- `build/scale-lse`: reuse d192 scales too, with LSE narrowing. D128 strict loop exact, d192 **rejected**, 829 retained instructions versus 825 because four literal-zero `v_mov_b32_e32` initializers reappeared. First steady mismatch at index205, reference `s_add_u32`, candidate `v_mov_b32_e32 v111, 0` (PC `0xc4b4`). The whole distance was 1186/962. Source and packaged object are archived; no emitted assembly was patched.
- `build/d128-scale-lse`: retain d192 reconstruction. Strict loops exact; whole 5082/3535 and distances1186/960. D192's increased eight nops in this intermediate made it less attractive. The final scalar-state rewrite yields 5060/3494 and distances1174/933, with nop counts one below baseline in each dimension. Its source is archived for attribution.

No extension numerical tests, GPU runs, performance benchmarks, push, or integration occurred in this worktree. Root must run sequential integration, packaged verification with the new LLVM candidate, numerical tests and performance checks. Changes in compiler or other source candidates may alter non-steady hazards and allocation; this frozen standalone result cannot establish combined behavior.
