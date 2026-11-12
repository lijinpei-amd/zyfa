# Native HIP FP8 attention

Current LLVM results are in [LLVM FP8 ISA matching](hip-fp8-isa-match.md).

The later [assembly-order schedule experiment](hip-fp8-instruction-order.md)
adds explicit stage fences and matches the steady MFMA/DMA/refill/reduction
order. The results below describe the earlier performance-tuned schedule;
the experiment has separate assembly and timing artifacts.

`csrc/fp8_native.hip` implements gfx950 HIP C++ versions of both ZYFA FP8
assembly kernels. Select them with
`flash_attn_func(..., causal=True, backend="hip")`. The assembly backend remains
the default. Both native kernels support BHSD/BSHD, MHA and GQA, sequence
padding, BF16 output, optional FP32 LSE, scalar device descales, CUDA graphs,
and `torch.compile` through a separate `zyfa::fwd_hip` custom operator.

In the current build ([`short_gap_20261112`](../benchmarks/results/hip_native/isa_match/short_gap_20261112/README.md)),
the HIP kernel is within about 2.3% of the assembly kernel at every measured
length. Times below are HIP / assembly, same process:

| Length | d128 MHA | d128 GQA4 | d192 MHA | d192 GQA4 |
| --- | ---: | ---: | ---: | ---: |
| 256 | 1.017 | 1.005 | 1.008 | 1.023 |
| 1024 | 1.018 | 1.023 | 1.008 | 1.010 |
| 8192 | 1.003 | 1.009 | 1.004 | 1.003 |
| 16K / 32K | 1.008 / 1.007 | 1.009 / 1.007 | 1.004 / 1.005 | 1.006 / 1.006 |

The steady loops take the same cycles per iteration as the assembly kernels
(ATT). The rest of the short-length gap is in three places:
- the d128 masked tail, which still runs QK, mask, statistics and PV in a fixed
  order;
- the O clear;
- one extra serialized wait in the prologue.

All 314 project tests pass, with 2 skipped. The 16K/32K row was measured on the
previous code; the later changes affect only the pass start and masked tail.

The earlier 24-case comparison further down describes a much older build. It
was 28–29% slower than assembly for d128 at 32K tokens, and 3.05–3.28× slower
at 1K tokens.

## Structure reproduced

| Property | d128 | d192 |
| --- | --- | --- |
| QK dimension / V dimension | 128 / 128 | 192 / 128 |
| Query rows per block, MHA | 256 | 256 |
| Query rows per head, paired GQA | 128 on each of two heads | 128 on each of two heads |
| Keys per tile | 128 | 64 |
| Threads / wave64 waves per block | 512 / 8 | 512 / 8 |
| Waves per SIMD for one resident block | 2 | 2 |
| K LDS slots | 4 × 16 KiB | 4 × 16 KiB |
| V LDS slots | 4 × 16 KiB | 4 × 8 KiB |
| Output staging | 32 KiB | 32 KiB |
| Total LDS (one static array) | 160 KiB | 128 KiB |
| Key steps per steady-loop iteration | 4 | 4 |
| QK / PV / row-sum MFMAs per steady loop, per wave | 32 / 32 / 8 | 24 / 16 / 4 |

K slots start at bytes 0, 16384, 32768, and 49152. V starts at byte 65536.
The d192 K rows use a 256-byte LDS stride with 192 payload bytes. Output staging
starts at byte 131072 for d128 and 98304 for d192. K bank swizzles, V transpose
reads, and the output row/XOR swizzle follow the assembly layouts.

Waves 0–3 and 4–7 form two groups staggered by one phase. SM(k) converts scores
to FP8 probabilities and reads the initial K(k+1) fragments. MM(k) computes
rounded-P row sums, QK(k+1), PV(k), and the next score statistics. K(k+4)
is prefetched into slot k modulo 4, and V(k+2) into slot (k+2) modulo 4.
The steady loop statically instantiates all four ring rotations; its eight
barriers keep the groups in opposite SM/MM phases. The separately masked tail
keeps the same barrier count even when a wave has no further visible keys.
Each wave executes 2*n+3 barriers per pass, including startup/shutdown.

Q remains resident as two/three eight-dword vectors. Each wave maintains four
16-register FP32 O tiles and four/two 16-register score tiles. d128 uses the
assembly's lean FP8-code approximation and separate E8M0 probability scales for
each 64-key half. d192 uses exp2 and hardware FP8 conversion with a per-tile
E8M0 scale. Both use a 0.125-log2-unit lazy-rescale threshold, normalize with
rounded-P row sums, and use scaled FP8 MFMAs for PV.

The native launchers share the existing assembly job tables, mirrored query
passes, even-ratio GQA head pairing, odd-ratio unpaired head mapping, device
validation, byte strides, and XCD-aware persistent grid. Descales are loaded
on the device, so captured graphs observe updates.

## Compiler and scheduling choices

The kernels use HIP/LLVM builtins for MFMAs, transpose LDS reads, probability
conversion, waits, priorities, barriers, and BF16 packing. External symbol
aliases name `llvm.amdgcn.raw.buffer.load.lds`, `llvm.fake.use` and a few
AMDGPU intrinsics; none of them contains instruction assembly. There are no
fixed-register declarations.

The native path does contain single-instruction inline assembly. Each
statement emits one named instruction with compiler-allocated registers:

- **Scalar arithmetic:** `scalar_add`, `scalar_add_imm<N>`, `scalar_sub`,
  `scalar_mask_sub<N>`, `scalar_increment` and `scalar_min` emit `s_add_u32`,
  `s_sub_u32`, `s_sub_i32` or `s_min_u32`.
  - They pin the mnemonic of uniform address and control arithmetic. Without
    them, LLVM turns disjoint adds into `s_or_b32`.
  - The `volatile` forms keep each DMA address add at its use, so LLVM cannot
    fold the per-DMA sums together or hoist them.
  - `scalar_add_imm<N>` takes the LDS offset as an `"n"` immediate, so DMA M0
    values are `s_add_u32 m0, base, literal`, as in the assembly kernels.
- **Wave-mask select:** `select_wave_mask` emits `v_cndmask_b32_e64`.
- **Loop constants:** `vgpr_constant<Bits>` and `sgpr_constant<Bits>` emit
  `v_mov_b32` or `s_mov_b32`. The constants are the E8M0 MFMA scale `0x7f`,
  the 0.125 rescale threshold, −127.0, d128's −8.0, and −inf.
  - Each is defined once at kernel entry and stays in a register, like the
    assembly's setup registers.
  - A plain C++ constant would be materialized at every use by instruction
    selection, and only MachineLICM would move it out of the loop.

All LDS buffers live in one static `__shared__` array per kernel, at the
offsets listed above. Because each LDS offset is a compile-time integer, it
can be encoded as an instruction immediate. A `__restrict__` V-fragment base
restores the alias scopes that `SIInsertWaitcnts` needs to avoid waiting on
unrelated LDS DMA.

Loop-invariant code motion is disabled for the persistent pass loop:

- **IR LICM:** `#pragma clang loop licm(disable)` turns it off for that loop.
- **MachineLICM:** `setup.py` passes `-mllvm=-disable-machine-licm`.
- **Why:** without this, LLVM hoists per-pass and per-use values (epilogue
  addresses, stride multiples, LDS literals) to the kernel entry, which caused
  the earlier register spills. The source already places these values the way
  the assembly kernels do. The steady and tail loops have several entry blocks,
  so LLVM sees them as irreducible cycles, not natural loops. All hoisting
  therefore crosses the pass loop.

The O tile is cleared at each pass start with 64 `vgpr_constant<0>` moves, as
the assembly kernels do. The clear sits after the pass-start barrier. The
assembly's position, before the barrier, timed slower. Until the clear, O is an unspecified tile. An `o_tile{}` zero
would become an SGPR splat whose PHI copies are repeated on every steady-loop
entry edge. The compiler adds no
MFMA hazard padding around inline asm; the nearest MFMA touching a cleared
register is far outside the hazard window. The low half of each FP8
probability pack takes an unspecified "old" operand, because the high-half pack
overwrites it. Passing a live value there would force a copy before every pack.

The masked tail tests the elementwise path first, as the assembly kernels do.
d128 weights that path at 0.85 so block placement keeps the −inf fill out of
line; this avoids a duplicated score tile.

The DMA LDS base is made wave-uniform before computing its address, matching
m0's hardware semantics and reducing register pressure. Output lane indices
use native mbcnt builtins. `llvm.fake.use` keeps packed probabilities on the
SM side of the barrier; LLVM otherwise sinks their conversion into MM.

Timing selected DMA placement after the last PV fragment reads for steady
stages and d192. The masked d128 tail retains earlier DMA placement during QK.
This preserves the same four-slot prefetch distances while reducing waits
around current-tile LDS reads. For the earlier schedule, plain ternary
masking, additional scheduler fences, static LDS declarations, output
outlining, and alternate output staging were also investigated. The current
source uses one static LDS array for the reasons above.

## Generated code and remaining differences

Current resources, from the
[`o_clear_placement_20261112`](../benchmarks/results/hip_native/isa_match/o_clear_placement_20261112/README.md)
capture:

| Resource | HIP d128 | Assembly d128 | HIP d192 | Assembly d192 |
| --- | ---: | ---: | ---: | ---: |
| VGPRs per wave | 244 | 256 | 206 | 256 |
| SGPRs | 77 | 102 | 79 | 102 |
| AGPRs | 0 | 0 | 0 | 0 |
| VGPR / SGPR spills | 0 / 0 | 0 / 0 | 0 / 0 | 0 / 0 |
| Scratch frame bytes per lane | 0 | 0 | 0 | 0 |
| Total LDS bytes per block | 163840 | 163840 | 131072 | 131072 |

The eight-wave block and LDS allocation permit one resident block per CU, with
two waves per SIMD. The single static LDS array is reported as fixed group
segment size in the code-object metadata.

Neither kernel spills or uses scratch. The earlier capture described below had
396/212-byte scratch frames, plus four eight-byte scratch reloads per d128
steady-loop iteration. Those spills came from LLVM hoisting per-pass values to
the kernel entry, and from a duplicated score tile in the masked tail.

Like the assembly kernels, the HIP kernels:
- load the next pass's first K/V tiles and Q during the last tile;
- rotate the four-slot ring across passes;
- overlap the previous epilogue's stores with the next pass's first QK.

Group 0's pass-start tile loads stay in flight across the pass-start barrier,
and the first MM waits for them. The masked MM waits at its start for the
previous phase's loads. Outside the steady loops, LLVM still chooses different
instruction interleaving and register allocation; the steady loops match. Row/tile spans at or above 4 GiB are explicitly
rejected by the native backend; the assembly default retains its legacy
fallback for those shapes.

The earlier capture's artifacts are in `benchmarks/results/hip_native/final/assembly/`:

- `native.co`: the GPU code object extracted from the built native HIP object.
- `metadata.txt` and `disassembly.s`: metadata and disassembly of that code object.
- `generated-source.s`: LLVM assembly compiled with the extension's device flags.
- `hip_d128/steady-loop.s` and `hip_d192/steady-loop.s`: the complete four-step
  steady loops, identified by their back edges and 72/44 MFMA counts.
- `manifest.json`: compiler, compilation command, source/object/code-object hashes,
  and dynamic LDS sizes.

The current inspector extracts `build/native/fp8_native.o` and saves loop bodies
from that object's disassembly. It no longer generates `generated-source.s` by
recompiling source; its manifest records object hashes and total LDS bytes.

## Validation

`python -m pytest -q` passed all **212 tests**, including 61 native HIP tests.
The native tests cover both dimensions, MHA, GQA4, odd-ratio GQA3, both layouts,
batching, persistent jobs, growing logits/rescaling, short/padded tails, LSE,
null/unit descales, graph updates, fake tensors, and compiled determinism.
Numerical checks use FP64 causal attention, output relative RMS below 0.05,
and LSE maximum absolute error below 0.06. The final benchmark additionally
checks sampled rows and heads for every measured shape.

## Final measured performance

Times are GPU kernel microseconds. HIP/assembly is a latency ratio; values
above one mean the HIP kernel takes longer. These are the final warmed
three-sample measurements, not the shorter exploratory runs.

| Dimension | Heads | S | Assembly µs | HIP µs | HIP/assembly |
| --- | --- | ---: | ---: | ---: | ---: |
| 128 | MHA | 1024 | 54.21 | 165.45 | 3.052× |
| 128 | MHA | 2048 | 87.51 | 193.09 | 2.207× |
| 128 | MHA | 4096 | 138.98 | 267.49 | 1.925× |
| 128 | MHA | 8192 | 270.17 | 409.03 | 1.514× |
| 128 | MHA | 16384 | 1042.94 | 1424.50 | 1.366× |
| 128 | MHA | 32768 | 4090.42 | 5237.47 | 1.280× |
| 128 | GQA4 | 1024 | 54.79 | 179.85 | 3.282× |
| 128 | GQA4 | 2048 | 83.38 | 205.38 | 2.463× |
| 128 | GQA4 | 4096 | 142.13 | 294.81 | 2.074× |
| 128 | GQA4 | 8192 | 270.84 | 426.09 | 1.573× |
| 128 | GQA4 | 16384 | 1040.70 | 1447.02 | 1.390× |
| 128 | GQA4 | 32768 | 4100.37 | 5280.26 | 1.288× |
| 192 | MHA | 1024 | 75.79 | 122.17 | 1.612× |
| 192 | MHA | 2048 | 113.98 | 174.33 | 1.529× |
| 192 | MHA | 4096 | 213.51 | 257.56 | 1.206× |
| 192 | MHA | 8192 | 378.55 | 436.42 | 1.153× |
| 192 | MHA | 16384 | 1472.66 | 1643.77 | 1.116× |
| 192 | MHA | 32768 | 5743.45 | 6219.01 | 1.083× |
| 192 | GQA4 | 1024 | 71.92 | 115.91 | 1.612× |
| 192 | GQA4 | 2048 | 111.94 | 168.16 | 1.502× |
| 192 | GQA4 | 4096 | 200.19 | 245.21 | 1.225× |
| 192 | GQA4 | 8192 | 370.01 | 426.11 | 1.152× |
| 192 | GQA4 | 16384 | 1435.44 | 1585.42 | 1.104× |
| 192 | GQA4 | 32768 | 5643.41 | 6068.11 | 1.075× |

Maximum sampled output relative RMS across all cases: 0.616%.
The full timing samples, kernel names, protocol, and hashes are in
`benchmarks/results/hip_native/final/benchmark.json`; the corresponding CSV
is `benchmarks/results/hip_native/final/benchmark.csv`.

Exploratory runs in sibling directories used shorter warmups and fewer
samples. They are tuning records; the table above is the final comparison.

## Reproduction

The commands below run the current source. The timings above describe the
earlier capture; current timings are in [LLVM FP8 ISA matching](hip-fp8-isa-match.md).

Build against the installed ROCm PyTorch, with `LLVM_ROOT` pointing to the
compatible compiler described in [LLVM FP8 ISA matching](hip-fp8-isa-match.md):

```sh
ZYFA_NATIVE_LLVM_ROOT="$LLVM_ROOT" pip install . --no-build-isolation
ZYFA_LLVM_ROOT="$LLVM_ROOT" python -m pytest -q
python benchmarks/benchmark_hip.py --warmup 500 --iters 100 --repeats 3 \
  --output benchmarks/results/hip_native/final
python benchmarks/inspect_hip.py --output benchmarks/results/hip_native/final/assembly
```

Set `ROCM_PATH` to the intended ROCm installation. On this workspace the
installation is `/home/jinpli/workspace/home/jinpli/.local/opt/rocm-7.2.3`;
its `lib/compat` directory must be on `LD_LIBRARY_PATH` for LLVM tools.

The comparison uses one MI350X (gfx950, 256 CUs), ROCm 7.2.3 / AMD LLVM 22,
and PyTorch 2.14.1+rocm7.2. Inputs are identical quantized Gaussian tensors
(seed 29, BF16 source standard deviation 0.1), BSHD, batch 1, causal,
d_v=128. Heads are max(32, 262144/S), with MHA and GQA4 at each sequence length.

Each backend gets 500 warmup launches and 100 measured launches per sample,
with three samples and alternating backend order. Times are medians of GPU
kernel durations from the PyTorch profiler, excluding Python/host launch,
allocation, and initial job-table setup. Clocks are not forced. JSON includes
all raw timing samples and source/extension hashes; CSV has one row per case.
