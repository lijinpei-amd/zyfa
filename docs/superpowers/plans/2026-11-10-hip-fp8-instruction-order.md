# HIP FP8 Instruction Order Implementation Plan

> **For agentic workers:** Use superpowers:executing-plans for inline implementation.

**Goal:** Add explicit scheduler barriers between unrolled stages and make native HIP instruction scheduling follow the assembly backend.

**Architecture:** Keep the approved tiling and SM/MM pipeline. Express MM's row-sum, QK, PV, read-ahead, DMA and statistics in assembly order, using compiler-visible scheduling intrinsics and lifetime anchors. Validate generated code as well as outputs.

**Spec:** Approved docs/superpowers/specs/2026-11-10-hip-fp8-pingpong-design.md, amended by the user's explicit instruction-order request.

**Constraints:** No instruction inline assembly or register pins; retain 512 threads, four LDS slots, existing hardware barrier counts and numerical behavior.

- [x] Add code-generation tests for all four stages' RS/QK/PV order and scheduler barriers; observe failure on the current source.
- [x] Add stage scheduler barriers and reorder/factor native MM work to match the assembly schedule; inspect generated ISA after each scheduling change.
- [x] Build, run full correctness/code-generation tests, inspect resources, and benchmark the 24-case matrix against assembly and the prior HIP result.
- [x] Save new assembly/results separately, document achieved order and any remaining instruction-selection or scheduling differences.
