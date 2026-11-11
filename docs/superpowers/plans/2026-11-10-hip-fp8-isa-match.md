# Exact HIP FP8 ISA Matching Implementation Plan

> **For agentic workers:** Use superpowers:executing-plans for inline implementation, with independent read-only LLVM investigations under superpowers:dispatching-parallel-agents.

**Goal:** Match assembly-backend mnemonic counts and instruction sequence, excluding allocator spill/copy instructions, for both loops and then both kernels.

**Architecture:** A comparison tool operates on actual disassembled code objects; HIP source and narrow LLVM fixes close specific mismatches. The assembly reference remains fixed.

**Tech Stack:** HIP C++, Python, AMDGPU LLVM24 assertions build, gfx950.

**Spec:** docs/superpowers/specs/2026-11-10-hip-fp8-isa-match-design.md; directly specified and authorized by the user.

## Global Constraints

- No large instruction inline assembly or register-allocation assembly workarounds.
- Do not filter waits, nops, control flow, memory or arithmetic to claim matching.
- Preserve source/binary snapshots and isolate changes from existing dirty work.
- No compiler patch may weaken required LDS DMA or register hazards.

## Review Focus

Comparison excludes must not remove meaningful memory/arithmetic operations;
all backward-loop candidates must be checked; LDS alias scopes must remain
valid for ring reuse; rescale and causal tails must retain numerical behavior;
cross-pass overlap must preserve every wave's barrier count.

## Tasks

- [x] Add and test parse/filter/loop/count/sequence comparison; record current ROCm22 and LLVM24 baselines from code objects.
- [x] Match loop mnemonic counts: LDS alias identity, arithmetic/packed selection, scalar loop controls and waits/nops. Each fix gets a reduced or full-codegen regression.
- [x] Match complete loop instruction order; require strict comparisons for both dimensions plus numerical execution.
- [ ] Reproduce whole-kernel startup, parity tails, cross-pass rotation/prefetch and output overlap; match whole-kernel counts then sequence.
- [ ] Run project and relevant LLVM tests, final strict comparisons, GPU validation and performance; save complete evidence and request final review.
