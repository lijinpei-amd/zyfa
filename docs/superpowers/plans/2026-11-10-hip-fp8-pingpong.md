# HIP FP8 Ping-Pong Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [x]`) syntax for tracking.

**Goal:** Implement and measure native HIP equivalents of both ZYFA FP8 assembly kernels.

**Architecture:** Add compiler-visible device helpers and a templated native HIP kernel beside the assembly reference. Share the assembly host launch plans and validation, and expose explicit HIP selection through the extension and Python interface.

**Tech Stack:** HIP C++20, ROCm 7.2.3 LLVM, gfx950, PyTorch, pytest.

**Spec:** `docs/superpowers/specs/2026-11-10-hip-fp8-pingpong-design.md` (approved).

## Global Constraints

- 512 threads, eight wave64 waves, 32 query rows per wave.
- d128: 128-key tiles, four 16 KiB K and V slots, 32 KiB output staging, 160 KiB LDS.
- d192: 64-key tiles, four 16 KiB K slots and four 8 KiB V slots, 32 KiB output staging, 128 KiB LDS.
- SM(k)/MM(k) phase skew, K(k+4)/V(k+2) prefetch, four statically unrolled stages.
- Rescale threshold 0.125 log2 units; rounded-P row sums, scaled PV, optional LSE.
- No large inline assembly and no register-allocation assembly workarounds.
- Leave assembly as the default; report measured performance without an invented acceptable gap.

## Review Focus

- Short causal ranges and final masked tiles must have balanced barriers.
- Cross-pass and cross-job ring reuse must not overwrite data another wave still reads.
- GQA pairing and BSHD strides must map each head to the correct KV head.
- Updated GPU descales must be observed inside a captured graph.
- Growing logits must rescale existing O and row sums consistently.

### Task 1: Native kernel and launch integration

**Files:** create `csrc/fp8_native.h`, `csrc/fp8_native.hip`, and `tests/test_fp8_hip.py`; modify `csrc/fp8_d128_asm.hip`, `csrc/fp8_d192_asm.hip`, `csrc/bindings.cpp`, and `setup.py`.

**Interfaces:** `fp8_d128_hip` and `fp8_d192_hip` accept the same extension arguments and return tensors as the corresponding assembly entries. `launch_d128`/`launch_d192` accept shared argument structs and a HIP stream.

- [x] Add GPU numerical tests for both dimensions, groups 1/4, layouts, batches, short tails, persistent work, rescaling, and device descales; compare FP64 attention with output relative RMS <0.05 and LSE max absolute error <0.06.
- [x] Run the tests and confirm failure because the HIP extension entries do not exist.
- [x] Add native MFMA, transpose-read, vector LDS, DMA, probability conversion, softmax, and output staging helpers; verify intrinsic signatures against LLVM and the compiler.
- [x] Implement the phase-skewed four-slot kernel, mirrored passes, persistent jobs, and head mapping. Reuse host plans and input validation through explicit native launch dispatch.
- [x] Build and run the numerical tests; inspect emitted resource metadata and barrier order; fix any failure before continuing.

### Task 2: Python backend selection

**Files:** modify `zyfa/interface.py`, `README.md`, and `tests/test_fp8_hip.py`.

**Interfaces:** `flash_attn_func(..., backend="assembly")`, with `backend="hip"` for FP8; preserve graph/fake/autograd behavior and all existing input handling.

- [x] Add tests for HIP selection, padding, unsupported backend validation, empty inputs, and captured graph descale updates.
- [x] Thread backend selection through the custom op and fake/autograd definitions, preserving assembly dispatch by default.
- [x] Run HIP tests and applicable existing API tests; document the explicit selection.

### Task 3: Generated-code analysis and performance tuning

**Files:** create `benchmarks/benchmark_hip.py`; save results and assembly under `benchmarks/results/`.

**Interfaces:** the harness times identical quantized inputs on HIP and assembly for the existing 24 shapes and emits JSON/CSV ratios.

- [x] Add a repeatable harness with warmup, isolated GPU kernel timing, sampled numerical verification, and resource/disassembly capture.
- [x] Run the full comparison and identify the largest gaps from timing and generated code.
- [x] Tune compiler-visible read-ahead, lifetimes, and scheduler hints while retaining required tiling, LDS, phase skew, and unroll; rerun affected correctness tests and timings after each substantive change.
- [x] Run final relevant tests, record per-case HIP/assembly ratios and compiler limitations, and review the final diff against the user's assembly constraint.
