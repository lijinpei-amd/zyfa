# HIP C++ equivalents of ZYFA FP8 attention

## Intent and constraints

Implement HIP C++ kernels for gfx950 that reproduce the structure of the existing
ZYFA FP8 assembly kernels and approach their performance. The user specifically
requires equivalent tiling, LDS allocation and pipeline stages, two-wave
ping-pong, four-stage unrolling, and the remaining attention implementation
details. LLVM may select different instructions and allocate different registers.
Large inline assembly blocks and assembly used to control register allocation are
excluded. Correctness and measured performance take precedence over matching
individual instruction encodings.

## Approach

Add a separate native HIP backend beside the assembly reference. This is the
implementation choice, based on the user's requested HIP C++ implementation.
Reworking the old HIP fallback would also require replacing its two-slot rings,
eight-stage loop, and assembly wrappers; a separate backend makes comparison and
review clearer. Translating assembly into inline assembly would preserve the
schedule but violates the user's constraint.

The existing public assembly dispatch remains the default. Expose the HIP backend
through `fp8_d128_hip` and `fp8_d192_hip` extension entries and a Python backend
selection that reuses the existing layout, padding, validation, and descale
handling. Keep this selection explicit during performance evaluation.

## Tile and LDS layout

Both dimensions use 512 threads, eight wave64 waves, and 32 query rows per wave.
Waves 0–3 form group 0 and waves 4–7 form group 1. Each SIMD has two waves.
MHA processes 256 query rows per pass; paired even-ratio GQA processes 128 rows
of each of two query heads sharing the same KV head.

| Dimension | Keys per tile | K slot | V slot | Four K + four V slots | Output staging | Total LDS |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| d128 | 128 | 16 KiB | 16 KiB | 128 KiB | 32 KiB | 160 KiB |
| d192 | 64 | 16 KiB | 8 KiB | 96 KiB | 32 KiB | 128 KiB |

The four K slots begin at byte offsets 0, 16384, 32768, and 49152.
The V ring begins at 65536. d192 K rows have a 256-byte LDS stride, with
192 meaningful bytes. Reproduce the assembly's K bank swizzles and V layout for
transpose byte reads. Use compiler-visible raw-buffer-to-LDS copies, ordinary
address-space-3 vector reads for K, and the LLVM transpose-read intrinsic for V.
Alias declarations naming LLVM intrinsics are allowed; they contain no inline
instruction assembly.

## Computation and scheduling

Keep Q resident as two or three eight-dword fragments. Maintain four FP32
16-register output tiles and four (d128) or two (d192) score tiles per wave.
Use named fragment vectors and compile-time indices so LLVM can manage lifetimes
without dynamically indexed register arrays.

The pipeline splits each key step k into:

- SM(k): convert scores into FP8 probabilities, then read ahead the initial
  fragments of K(k+1).
- MM(k): sum rounded probabilities with a 16x16x128 FP8 MFMA, compute QK(k+1),
  compute PV(k) with scaled 32x32x64 FP8 MFMAs, and calculate next score statistics.

In MM(k), prefetch K(k+4) into slot k modulo 4 and V(k+2) into slot
(k+2) modulo 4. Read K from slot (k+1) modulo 4 and V from slot k modulo 4.
Four statically instantiated stages rotate these slots. Preserve a separately
masked tail; do not add steady-loop per-element causal comparisons.

Stagger group 1 by one phase with the same startup/shutdown barrier accounting
as the assembly generator: group 1 initially waits while group 0 starts QK0;
thereafter one group runs SM while the other runs MM, switching at each barrier.
Use wave-uniform group branches and native barrier/wait/priority builtins. Inspect
the emitted ISA to verify that LLVM preserves the phase skew and barrier order.
Do not simulate the schedule with large inline assembly or fixed-register pins.

Use LLVM scheduler hints only where inspection and timing show a benefit. Leave
instruction selection, latency padding, and physical register allocation to LLVM.
Initial fragment read-ahead should follow the assembly's small fragment ring;
tune compiler-visible lifetimes and scheduling without changing the four LDS
slots or tile sizes.

## Numerical and API behavior

Inputs are e4m3fn FP8, output is BF16, and accumulators are FP32. Both kernels
are causal attention with d_v=128. Preserve the assembly's log2 scaling, lazy
rescale threshold of 0.125 log2 units (`csrc/asm/common.py:RESCALE_THR`), and
rounded-P row sums used to normalize PV. The value eight in `rt.h` belongs to
another helper path and is not the current FP8 assembly threshold.
d128 uses the lean piecewise-linear FP8-code approximation and separate E8M0
scales for each 64-key half. d192 uses hardware exp2 followed by FP8 conversion
and a per-tile E8M0 scale. Preserve descale reads on device so CUDA graphs observe
updated scalar device tensors, and apply the V descale in the output epilogue.

Use the existing mirrored causal query-block passes and persistent job mapping,
including even-ratio head pairing, batch/layout strides, and XCD-aware grid size.
Reuse host validation, job-table semantics, and allocations rather than creating
a second attention API with different input rules. Preserve cross-pass ring
rotation and next-pass prefetch where LLVM permits; quantify any measured
compiler-induced scheduling limitation.

Stage BF16 output in the extra 32 KiB, using the assembly's row/XOR mapping
and contiguous vector stores. Preserve optional FP32 LSE and empty-input behavior.

## Validation and performance acceptance

Add meaningful HIP-backend correctness coverage before the implementation:
both dimensions, MHA and GQA, BHSD and BSHD, batching, short masked tails,
multiple persistent jobs, descales, and logits that force rescaling. Compare
against a high-precision causal reference using the existing FP8 tolerances
(relative RMS output error below 0.05 and LSE maximum absolute error below 0.06).
Run applicable existing API tests with HIP selected.

Build on the current ROCm 7.2.3 toolchain and MI350X. Disassemble the native code
objects and record VGPR/SGPR allocation, LDS, scratch, occupancy, MFMA types,
four-stage loop body, transpose reads, and barrier order. Check the native backend
and its helper dependency path for instruction assembly or register pins.

Benchmark HIP and assembly on identical quantized tensors, device, stream,
warmups, and timing method. Reuse the existing 24-case matrix: d128/d192,
MHA/GQA4, sequence lengths 1024 through 32768, d_v=128. Report GPU kernel time
separately from Python/host overhead, and give per-case HIP/assembly ratios.
Iterate scheduling and fragment lifetimes where evidence identifies a bottleneck.

The user gave no fixed allowable slowdown. The builder should pursue the closest
performance practical under the constraints and report achieved results honestly;
do not label an arbitrary performance gap as equivalent. Save repeatable tests,
benchmark scripts/results, and disassembly artifacts. ATT may help diagnose a
remaining gap but is not required unless useful evidence cannot be obtained from
timings and generated code.

## Builder choices

The builder may choose helper factoring, template specialization, compiler
scheduler hints, launch attributes, and backend-selection spelling, while retaining
the public default and the structural requirements above. If the compiler lacks
a necessary intrinsic, first verify the LLVM intrinsic alias route. A tiny
single-instruction wrapper may be proposed only for an otherwise unavailable
operation, with no register-allocation workaround. Any material departure from
the requested pipeline must be identified in the implementation report.
