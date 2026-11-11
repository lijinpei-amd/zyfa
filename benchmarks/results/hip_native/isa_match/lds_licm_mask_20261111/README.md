# HIP FP8: single LDS array, LICM control, masked-tail fill

Both native HIP FP8 kernels now compile with no VGPR or SGPR spills and no
scratch. Both strict steady loops still match the assembly backend exactly.
Whole-kernel mnemonic distance to the assembly reference falls in both
dimensions. Outputs are bitwise-identical to the preceding build.

- **Source:** commits `3ff0230`, `47ffdef`, `38c4d97`, `af5d329`, `ebddf9d`, on
  top of `4dd38ce`.
- **Build:** `setup.py` adds `-Xarch_device -mllvm=-disable-machine-licm`.
- **Compiler:** the production LLVM `72e518a3f02a`, unchanged.
- **Before:** [`runtime_add3_20261111`](../runtime_add3_20261111/README.md)
  (`4dd38ce`).

## What changed and why

The investigations are archived in `investigations/`. They found that the
HIP source already places values the way the assembly does. In the steady
loop, d128 carries 3 VGPR / 46 SGPR through unused, against the assembly's
2 / 47. The excess pressure came from the compiler.

| Cause | Pass or construct | Fix |
|---|---|---|
| LDS address literals pinned in SGPRs (15 in d128, 11 in d192) | `"s"` inline-asm operand, then early MachineLICM | One static `__shared__` array in the reference layout. DMA M0 adds take the offset as an `"n"` immediate (`scalar_add_imm<N>`). |
| Loss of LDS-DMA alias scopes with one LDS object (+12 / +8 `vmcnt` in the loops) | `SIInsertWaitcnts` | `__restrict__` V-fragment base |
| Per-pass values hoisted to kernel entry: epilogue addresses, stride multiples, head bases | IR LICM (7 instances) | `#pragma clang loop licm(disable)` on the persistent pass loop (`for (;;)`) |
| Constants and V-ring bases hoisted to entry | Early MachineLICM | `-disable-machine-licm` |
| Loop constants rematerialized at every use without MachineLICM | Instruction selection | One-instruction `v_mov`/`s_mov` helpers define `0x7f`, 0.125, −127.0, −8.0 and −inf once at entry |
| `lse == null` mask held in VCC across the loop without LICM | GVN plus register allocation | `lh` written as a select |
| Duplicated 64-VGPR score tile in the masked tail | SimplifyCFG folds the fill; MachineSink refuses edges inside the irreducible tail cycle; coalescer interference | Elementwise path first. Opaque −inf. d128 0.85 placement weight. |

Hoisting can't be scoped to the steady loop: it and the tail loop have several
entry blocks, so LLVM treats them as irreducible cycles, not natural loops.
The pass loop is the only natural loop, so every hoist lands at the kernel
entry.

The MachineLICM patch in `llvm-patches/` makes MachineLICM honour
`llvm.licm.disable` loop metadata. With it, the unchanged production flags
produce byte-identical code (build B below). It is archived as an alternative
to the global flag and is not required.

## Linked instruction comparison

Counts exclude scratch, register-source copies and native SGPR lane spills.
None of those remain here. Literal initialization, encoding suffixes, waits,
NOPs and branches remain in the comparison. `whole-mnemonics.csv` has every
mnemonic with before, after and assembly counts.

| Measurement | d128 before → after | d192 before → after |
|---|---:|---:|
| Strict steady loop (count and sequence) | 1333 → 1333, exact | 825 → 825, exact |
| Retained whole-kernel instructions (assembly 5302 / 3737) | 4929 → 4910 | 3359 → 3398 |
| Positive mnemonic delta sum vs assembly | 301 → 261 | 214 → 203 |
| Negative mnemonic delta sum vs assembly | −674 → −653 | −592 → −542 |
| Sum of absolute differences (L1) | 975 → 914 | 806 → 745 |
| Positive scalar delta sum | 272 → 221 | 179 → 160 |
| Positive vector delta sum | 29 → 40 | 35 → 43 |
| `s_nop` (assembly 182 / 140) | 307 → 286 | 183 → 189 |
| `s_waitcnt` (assembly 114 / 86) | 130 → 117 | 90 → 85 |

**Largest d128 changes:**

| Mnemonic | Change |
|---|---:|
| `s_nop` | −21 |
| `s_mov_b32` | −14 |
| `s_waitcnt` | −13 |
| `s_add_u32` | −12 |
| `s_or_b32` | −11 |
| `v_sub_u32` | +11 |
| `v_and_b32` | +10 |
| `s_branch` | +9 |
| `v_xor_b32` | +7 |

**Largest d192 changes:**

| Mnemonic | Change |
|---|---:|
| `s_add_u32` | +26 |
| `s_or_b32` | −18 |
| `v_xor_b32` | +12 |
| `s_addk_i32` | +7 |
| `s_and_b32` | +7 |
| `s_mov_b32` | −7 |

Recomputing per-pass address terms instead of hoisting them adds vector
arithmetic in both kernels and scalar adds in d192. That is why the vector
positive sums and the d192 retained total rise while the other measures
improve.

The first whole-kernel sequence mismatch is still retained index 4, in entry
lane setup. Whole memory, MFMA, floating-point, barrier and priority counts
are unchanged. Setup MAD_U24 counts are 4/3, MUL_LO counts are 7/7, and ADD3
counts are 0/0.

## Resources and provenance

| Resource | d128 before → after | d192 before → after |
|---|---:|---:|
| VGPRs / SGPRs | 256 / 106 → 244 / 88 | 231 / 106 → 206 / 90 |
| VGPR / SGPR spills | 23 / 14 → 0 / 0 | 0 / 1 → 0 / 0 |
| Private segment bytes per lane | 64 → 0 | 0 → 0 |
| LDS bytes per block | 163840 → 163840 | 131072 → 131072 |

Launch size, workgroup size, wavefront size and argument size/alignment are
unchanged.

`verify-integrated.py` asserts:

- the resources above, and the strict-loop count and sequence match;
- the protected mnemonic counts and the PV-address and u24-setup codegen checks;
- the `setup.py` flag and the single LDS-loop pragma;
- that the extension embeds the owning fatbin exactly once, and that the saved
  baseline extension (`build/lds-licm-mask-20261111/evidence/baseline-extension.so`,
  `dbb3ebfa…`) embeds the before fatbin once;
- that the owning code object's `.text`, `.rodata` and `.note` are
  byte-identical to the GPU-validated builds in `tasks/`:
  - A: production LLVM plus `-disable-machine-licm`;
  - B: the MachineLICM-patched LLVM with unchanged flags.

  All 5519 / 3841 unfiltered instructions match. Only `.comment` and the
  CUID-derived string and hash sections differ.

## Runtime validation

**Project tests.** All 310 passed and 2 were skipped on the rebuilt main-tree
extension (`project-tests.log`). The codegen tests now pass
`-disable-machine-licm` to `llc`.

**Correctness** (`runtime/tail-race/`, run on build B; build A and earlier
builds served as bitwise references):

- **Volume:** 1,106 cases and 792,716 candidate launches, zero failures.
- **Bitwise equal to:** `4dd38ce`, `3ff0230` and build A.
- **Also bitwise checked:** with and without LSE; output with LSE against
  output without; public API against raw launch.
- **Coverage:**
  - Every causal diagonal offset: lengths m−1, m and m+1 for multiples of 32
    up to 1056.
  - Padded lengths, and persistent multi-pass jobs.
  - Stress alternating with a concurrent memory copy.
- **Maximum error vs FP64:** relative RMS 0.0267, absolute 0.0424, LSE 0.0501.

**Timing** (`runtime/timing/`). Same-process before/after protocol from
[`runtime_add3_20261111`](../runtime_add3_20261111/README.md), with
`benchmark-before-after.py` unchanged. Settings: BSHD, causal, output and LSE,
200 warmups, 100 timed calls, 5 repeats per run, 5 clean runs pooled, one
MI350X. Two runs that overlapped another container's GPU bursts are excluded
and labelled in `timing-all-runs.csv`.

| Dimension | Group | Length | Before µs | After µs | Assembly µs | Change |
|---|---:|---:|---:|---:|---:|---:|
| 128 | 1 | 256 | 47.16 | 40.50 | 37.74 | −14.12% |
| 128 | 1 | 1024 | 65.87 | 58.71 | 55.57 | −10.87% |
| 128 | 1 | 8192 | 278.68 | 275.30 | 273.01 | −1.22% |
| 128 | 4 | 256 | 40.45 | 33.91 | 32.30 | −16.16% |
| 128 | 4 | 1024 | 60.86 | 53.27 | 49.93 | −12.47% |
| 128 | 4 | 8192 | 276.53 | 273.42 | 267.15 | −1.12% |
| 192 | 1 | 256 | 48.96 | 48.11 | 43.14 | −1.75% |
| 192 | 1 | 1024 | 73.82 | 72.72 | 69.24 | −1.49% |
| 192 | 1 | 8192 | 391.98 | 393.13 | 378.97 | +0.29% |
| 192 | 4 | 256 | 44.15 | 43.08 | 39.41 | −2.42% |
| 192 | 4 | 1024 | 70.89 | 68.80 | 65.98 | −2.95% |
| 192 | 4 | 8192 | 388.09 | 386.73 | 371.10 | −0.35% |

- **Lengths 256 and 1024:** all five runs were faster in every case. The d128
  before and after sample ranges do not overlap.
- **Length 8192:** every kernel, including the unchanged assembly kernel,
  varies by about ±4% between runs, so changes there are not resolved.
- **Output check:** before and after outputs were bitwise-equal in every
  timing run.

Testing can't prove that a race or hazard is absent. Only gfx950 with this
ROCm and LLVM pair was tested.

## Artifacts and reproduction

- `owning/`: linked ISA, strict loops, comparisons, manifest and metadata of
  the main-tree build.
- `tasks/validated-{A,B}-native.co`, `tasks/validated-A-disassembly.s`: the
  GPU-validated build objects.
- `runtime/`: GPU validation summary and reports, provenance, tail-race and
  timing data, logs and scripts. Script paths refer to the validation
  worktree.
- `investigations/`: reports on register pressure, pass attribution, scalar
  excess, the LDS layout, LICM and the masked tail.
- `llvm-patches/`: the optional MachineLICM `llvm.licm.disable` patch, with
  its tests.

```sh
source build/env.sh
export ROCM_HOME="$ROCM_PATH" HIP_PATH="$ROCM_PATH"
export ZYFA_NATIVE_LLVM_ROOT=/home/jinpli/workspace/home/jinpli/development/workspace/01/llvm-project
export ZYFA_LLVM_ROOT="$ZYFA_NATIVE_LLVM_ROOT"
export AMDGPU_ASIC_ID_TABLE_PATHS=/home/jinpli/workspace/home/jinpli/venv/01/lib/python3.14/site-packages/torch/share/libdrm
python setup.py build_ext --inplace
python benchmarks/inspect_hip.py --output benchmarks/results/hip_native/isa_match/lds_licm_mask_20261111/owning
python benchmarks/results/hip_native/isa_match/lds_licm_mask_20261111/verify-integrated.py
python -m pytest -q tests
python benchmarks/results/hip_native/isa_match/runtime_add3_20261111/benchmark-before-after.py \
  --baseline-extension build/lds-licm-mask-20261111/evidence/baseline-extension.so --output DIR
```

The device nodes belong to GID 993. This session's user already had that
group, so no `sudo` was needed.
