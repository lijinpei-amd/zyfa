# HIP FP8 invariant runtime V addresses

Both linked HIP FP8 kernels now emit zero `v_add3_u32`, matching the assembly
backend for that mnemonic. One complete V0-plus-lane address is retained as a `uint32_t` from
entry, and four selected-address definitions serve the six tail PV sites.
Each selection completes unsigned integer addition before converting the final
address to an LDS pointer, avoiding arithmetic across distinct array objects.
Normal/PV-only dispatch shares a definition for each parity; each last-pass
address is selected before next-job preparation. The offset still derives from
all four actual LDS array pointers and preserves both correction terms.

Source commits: `9da7f9d` (shared V addressing) and `ce02af2` (numeric LDS
addressing), based on `39fec40`; final isolated candidate: `f401329`.
The supplied LLVM build was reused without edits or rebuilding. This change
adds no inline assembly or register-allocation workaround.

## Linked instruction comparison

Counts exclude scratch, register-source copies and inventoried native SGPR
lane spills. Literal initialization, encoding suffixes, waits, NOPs and branches
remain in the comparison. `whole-mnemonics.csv` records all positive and negative
deltas against the preceding HIP capture and assembly backend.

| Measurement | d128 before → after | d192 before → after |
|---|---:|---:|
| Whole-kernel ADD3 | 6 → 0 | 6 → 0 |
| Runtime selected-address definitions | 6 → 4 | 6 → 4 |
| Retained whole-kernel instructions | 4955 → 4929 | 3382 → 3359 |
| Strict steady-loop instructions | 1333 → 1333 | 825 → 825 |
| Positive vector mnemonic delta sum vs assembly | 34 → 29 | 38 → 35 |
| Positive whole-kernel mnemonic delta sum vs assembly | 313 → 301 | 219 → 214 |

Both strict loops retain the assembly backend's exact mnemonic counts and
sequence. Whole-kernel histogram/order equality remains unfinished. Reference
retained totals are 5302/3737, with current negative delta sums -674/-592.

Complete address work decreases: after slot masking, the old six scalar shifts,
six scalar V0 additions and six ADD3s cost 18 instructions per kernel. Four
selected updates plus three net extra setup vector instructions cost 9/7.
This normalized slice excludes copies, DS consumers and shared K/DMA work;
the full kernel comparison also accounts for those operations. Across the
complete kernels, vector instructions rise by one each; scalar instructions
fall by 27/24, giving net reductions of 26/23. d128 has one fewer alignment NOP
outside the strict loop; d192 substitutes two compare/branch mnemonic pairs.
These changes are included in the totals.

All six PV sites retain their exact transposed DS offset order and 192/96 total
reads. Whole memory, floating-point, MFMA, barrier, priority and wait counts are
preserved. Setup MAD_U24 counts remain 4/3 and full-width query/output MUL_LO
counts remain 7/7, with the native stride guards intact.

## Resources and provenance

| Resource, unchanged | d128 | d192 |
|---|---:|---:|
| LDS bytes/block | 163840 | 131072 |
| VGPRs / SGPRs | 256 / 106 | 231 / 106 |
| Private segment bytes/lane | 64 | 0 |
| Reported VGPR / SGPR spills | 23 / 14 | 0 / 1 |

Launch/workgroup/wavefront and argument size/alignment remain 512/64 and 152/8.
Existing d128 spilling is preserved.

`summary.json` records source, object, extension and code-object hashes. The
exact extracted native fatbin occurs once in the linked extension. The reviewed
candidate and linked object have identical `.text`, `.rodata` and `.note`
bytes; all 5730/3898 unfiltered instruction addresses, mnemonics and operands
also match. Their container hashes differ because the source compilation unit
produces a different `__hip_cuid` symbol and associated string/hash tables.
The checker permits differences only in those four sections.

`v-address-validation.json` explicitly checks one invariant definition before
the steady loop and four consumed updates, including the six DS-site counts
and offsets. Task audits record complete current/candidate/reference entry
recipes and all four reference tail-state recipes. The committed generated-ISA
regression checks shared input register names; the artifact and linked-object
checks additionally establish the single defining instruction.

## Runtime validation

All project checks passed on the corrected source in two partitions: **70
codegen tests passed** in 195.55 seconds, then **234 remaining tests passed,
with 2 skipped**, in 4.59 seconds on the rebuilt extension. Together these cover
the entire suite: **304 passed, 2 skipped**. The prior full single-command run
and its timings are preserved under `pre-provenance/`; current results use the
corrected source and final owning object.

Before/after HIP output and LSE are bitwise-identical in all 12 timing cases;
sampled FP64 relative RMS is below 0.006015. Final timing median changes range
from -2.13% to +3.18%; sample ranges overlap in 11/12 cases.
The d128 GQA4 length-8192 median is +3.18% slower in this run, with overlapping
sample ranges. The sole nonoverlap is d128 GQA4 length-256, whose median is
-0.44% faster. The other cases range from -2.13% to +0.56%. This run establishes
no consistent overall throughput improvement.

Timing protocol loads the saved baseline extension and current extension
separately in one process, then alternates before/after/assembly ordering. Cases
cover dimensions 128/192, MHA/GQA4, lengths 256/1024/8192, BSHD causal output+LSE,
200 warmups, 100 timed calls and 5 repeats. The existing full project tests also
cover BHSD, GQA3, every row at short lengths, padding, persistent jobs, changing
causal tile counts, descale graph replay and native stride boundaries.

| Dimension | Group | Length | Before µs | After µs | Assembly µs | Change |
|---|---:|---:|---:|---:|---:|---:|
| 128 | 1 | 256 | 47.37 | 47.05 | 37.61 | -0.67% |
| 128 | 1 | 1024 | 65.95 | 65.75 | 55.24 | -0.31% |
| 128 | 1 | 8192 | 290.94 | 288.71 | 274.18 | -0.77% |
| 128 | 4 | 256 | 40.66 | 40.48 | 32.27 | -0.44% |
| 128 | 4 | 1024 | 60.91 | 60.84 | 49.81 | -0.11% |
| 128 | 4 | 8192 | 283.42 | 292.44 | 279.97 | +3.18% |
| 192 | 1 | 256 | 48.73 | 48.98 | 43.14 | +0.51% |
| 192 | 1 | 1024 | 72.68 | 73.08 | 68.22 | +0.56% |
| 192 | 1 | 8192 | 387.69 | 383.52 | 377.47 | -1.07% |
| 192 | 4 | 256 | 44.11 | 44.21 | 39.49 | +0.24% |
| 192 | 4 | 1024 | 70.90 | 69.39 | 64.82 | -2.13% |
| 192 | 4 | 8192 | 383.63 | 378.60 | 370.90 | -1.31% |

## Artifacts and reproduction

- `owning/disassembly.s`: complete linked native ISA.
- `owning/hip_d{128,192}/steady-loop.s`: strict loop bodies.
- `owning/d{128,192}-{kernel,loop,before-after}.json`: comparisons and exclusions.
- `tasks/provenance-fix/`: final numeric-address source/IR regression evidence,
  complete entry/four-selection/DS audits and codegen results.
- `tasks/`: initial source/object review and the final reviewed candidate object.
- `final-review.md`: independent review and the addressed pointer-semantics finding.

```sh
source build/env.sh
export ROCM_HOME="$ROCM_PATH" HIP_PATH="$ROCM_PATH"
export ZYFA_NATIVE_LLVM_ROOT=/home/jinpli/workspace/home/jinpli/development/workspace/01/llvm-project
export ZYFA_LLVM_ROOT="$ZYFA_NATIVE_LLVM_ROOT"
export AMDGPU_ASIC_ID_TABLE_PATHS=/home/jinpli/workspace/home/jinpli/venv/01/lib/python3.14/site-packages/torch/share/libdrm
python setup.py build_ext --inplace
python benchmarks/inspect_hip.py --output benchmarks/results/hip_native/isa_match/runtime_add3_20261111/owning
python benchmarks/results/hip_native/isa_match/runtime_add3_20261111/verify-integrated.py
python -m pytest -q tests
```

GPU commands in this capture ran with the device's current GID 993 using
`sudo -n -u jinpli -g '#993'`; set the environment inside that subprocess.
The verifier and timing replay require the preserved baseline extension at
`build/runtime-add3-20261111/evidence/baseline-extension.so`, built from
`39fec40` and checked against the preceding owning fatbin. Timing replay accepts
its path through `benchmark-before-after.py --baseline-extension PATH --output DIR`.
