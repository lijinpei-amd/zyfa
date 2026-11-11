# LLVM FP8 ISA matching

Both four-stage steady loops match the assembly backend's complete disassembled
mnemonic sequence. The whole-kernel count and sequence goals remain incomplete.
The current packaged build is captured in
`benchmarks/results/hip_native/isa_match/offsets_owning_20261111/`.

| Dimension | Scope | Assembly instructions | LLVM instructions | Counts match | Sequence matches |
| --- | --- | ---: | ---: | --- | --- |
| 128 | Steady loop | 1333 | 1333 | Yes | Yes |
| 192 | Steady loop | 825 | 825 | Yes | Yes |
| 128 | Whole kernel | 5302 | 5187 | No | No |
| 192 | Whole kernel | 3737 | 3531 | No | No |

The whole-kernel histograms differ for 55 mnemonics in d128 and 53 in d192.
The sums of absolute per-mnemonic count differences are 1297 and 966. Similar
instruction totals do not imply matching histograms. Both first sequence
mismatches are at index 4, immediately after the four kernarg loads.

The comparison excludes scratch instructions and register-to-register moves.
It retains literal initialization, lane transfers, waits, nops, branches,
arithmetic, and memory instructions. Encoding suffixes remain significant.
Every excluded instruction is recorded in `comparison.json`.

## Address changes

Startup now reads the initial K fragments once before selecting the masked or
unmasked QK path. Both kernels match every whole-kernel LDS, raw-buffer, and
global-memory mnemonic count, as well as every floating-point, BF16, FP8, and
MFMA mnemonic count.

`FP8_LOAD_QUERY` spells out unsigned row/stride arithmetic in the kernel body.
Each load remains at its source scheduling point through `llvm.fake.use` and
scheduler fences. Query loads issue in offsets 0, 16, 64, 80, followed by 128,
144 for d192. All five query batches use a 32-bit VGPR offset and a 64-bit SGPR
base. Helper-only scheduling fences did not change final assembly; volatile
loads preserved order but introduced extra waits, so they were not retained.

K/V DMA lane offsets are computed once in the kernel body, following the
assembly's bit extraction and swizzle calculations. The helpers reuse these
offsets for full-block loads and the group-0 rounds. Explicit unsigned products
and source anchors preserve 32-bit offset arithmetic. Output row products and
LSE byte offsets follow the same approach. Neither kernel contains
`v_mad_u64_u32` or `v_lshl_add_u64`, and LSE stores use the reference's scalar
base plus 32-bit vector offset.

The block tiling, four K/V LDS slots, eight-wave ping-pong phases, four-stage
unrolling, accumulator semantics, and required memory hazards are preserved.
These address changes add no instruction inline assembly or fixed-register
allocation.

## Remaining work

The largest histogram differences are scalar address/control arithmetic,
initialization, and waits/nops outside the steady loops. The assembly generator
also repeats arithmetic that LLVM folds or combines. Whole-kernel counts must
match before claiming whole-kernel sequence matching.

| Packaged resource | d128 | d192 |
| --- | ---: | ---: |
| VGPRs | 256 | 231 |
| SGPRs | 106 | 106 |
| Scratch bytes per lane | 64 | 0 |
| LDS bytes per block | 163840 | 131072 |

The scratch and resource values describe the entire kernel. The steady-loop
regression also checks that accumulator C/D ranges have no partial overlap.

## Reproduction

Set `ROCM_PATH`, `ROCM_HOME`, and `HIP_PATH` to the local ROCm 7.2.3 install.
Set `LD_LIBRARY_PATH` to include its `lib/compat` directory. The compiler root
used for the packaged build is
`/home/jinpli/workspace/home/jinpli/development/workspace/01/llvm-project`.

```sh
ZYFA_NATIVE_LLVM_ROOT="$LLVM_ROOT" python setup.py build_ext --inplace
ZYFA_LLVM_ROOT="$LLVM_ROOT" python -m pytest -q
python benchmarks/compare_isa.py --llvm DIR/disassembly.s \
  --assembly benchmarks/results/hip_native/isa_match/baseline/assembly_d128.s \
  --dim 128 --scope loop --output DIR/d128-loop
```

Repeat the comparison for d192 and for `--scope kernel`. The kernel comparisons
currently return failure. Use `--allow-mismatch` only to save diagnostic reports.
The artifact manifest records the build commands, compiler revision, and hashes
of the source, code object, compiler tools, and AMDGPU shared library.

## Validation and performance

At the recorded capture, the owning source passed all 65 code-generation/comparison
checks. The packaged extension passed all 285 project tests, and 32 additional
checks passed against its extracted code object. GPU candidate validation covered
all 69 native numerical tests. The address audit checked 24,576 K/V calculations,
including strides above 24 bits.

The final packaging review made native compilation opt-in through
`ZYFA_NATIVE_LLVM_ROOT` and corrected inspection to use the linked native object.
Stock ROCm builds pass 167 tests, with 127 native/code-generation checks skipped.
Native builds pass 292 tests, with two disabled-backend checks skipped. Both
rebuilt steady loops pass strict count and sequence comparisons, and the native
code object is byte-identical to the recorded ISA/performance capture. Fresh
build logs, test results, comparison checks, and hashes are saved in
`benchmarks/results/hip_native/push_validation_20261111/`.

Twelve benchmark cases passed their sampled FP64 output checks; maximum relative
RMS was 0.005944. Timings use 500 warmups, 100 profiled launches per sample, and
three samples with alternating assembly/HIP order. Entries below are HIP divided
by assembly latency, so values above one indicate slower HIP execution.

| Dimension | GQA group | 1K tokens | 8K tokens | 32K tokens |
| --- | ---: | ---: | ---: | ---: |
| 128 | 1 | 1.213 | 1.035 | 1.006 |
| 128 | 4 | 1.193 | 1.086 | 1.010 |
| 192 | 1 | 1.071 | 1.038 | 1.032 |
| 192 | 4 | 1.074 | 1.041 | 1.028 |

The full timings, samples, sampled errors, and extension/source hashes are in
`offsets_owning_20261111/performance/benchmark.json` and `benchmark.csv`.
These measurements demonstrate performance proximity for the measured shapes;
they do not satisfy the remaining whole-kernel ISA matching criteria.
