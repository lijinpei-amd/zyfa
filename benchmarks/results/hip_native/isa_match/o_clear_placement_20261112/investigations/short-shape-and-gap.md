# Short-shape slowdown and gap to the assembly kernels

(Saved by the coordinator from the subagent's returned text; the harness blocked the subagent from writing this file.)

Agent worktree branch `worktree-agent-a033ffad08c20e864`, from `b73e505` (whose code equals `292d02a`). Nothing was pushed. The main tree, `benchmarks/results/` and the LLVM checkouts are untouched.

## Summary

**Task 1 root cause: `e89fa08`, through *where* it clears O, not how much the clear costs.**
- **Bisection:** single-module processes, 3 guarded clean rounds per tree, change in HIP time vs `ac8512a` (L256):
  - **`e89fa08`:** d128 GQA4 +1.78%, d192 MHA +1.13%, d192 GQA4 +0.97%.
  - **`0ddab6a` and `c76a127`:** neutral, within ±0.3%.
  - **`292d02a`:** its epilogue change recovers 0.3–0.5%, leaving +1.25 / +0.62 / +0.58%.
- **Mechanism:** the 64 moves sit between the pass-start `s_waitcnt vmcnt(0)` and group 0's V1/K2/K3 tile loads.
  - In group 0 they delay the loads that the pass-start barrier waits for.
  - In group 1 they lengthen the pass-start phase, which the ping-pong makes critical in the next barrier interval.
  - In `ac8512a` the same zeroing (SGPR splat plus PHI copies) ran *after* the barrier, at about the same issue cost.
- **ATT** (cycles per wave over 4 passes):

  | Region | d128 GQA4, HIP 0 | d128 GQA4, HIP 5 | d192 MHA, HIP 0 |
  |---|---:|---:|---:|
  | O clear (64 moves) | +1062 | +1060 | +1034 |
  | Removed post-barrier zeroing | −1102 | −939 | −886 |
  | Epilogue (`292d02a`) | −486 | −644 | −571 |
  | Block span (whole CU) | +2136 | **−1582** | +1228 |

- **ATT can't settle the size of the effect:** block spans of the same code differ by 1.5–2.5k cycles between GPUs because of memory and barrier waits. That exceeds the ~1% effect, so timing decided.

**Fix: `a7297a9`, plus the comment-only `de29ef9`, which has the identical `.text`.**
- **Change:** group 0 clears O right after issuing its tile loads, inside their latency. Group 1, which has no loads there, clears after the barrier.
- **Static checks:**
  - strict loops 1333/825 exact;
  - loop copies 8/4 (assembly 12/12); whole-kernel copies 348/158, unchanged;
  - 0 spills; VGPR 244/206, SGPR 77/79;
  - 87/87 codegen and ISA tests;
  - hazard margins 108/73 wait states before a clear and 189/121 after, against a window of about 19;
  - full suite 313 passed, 3 skipped (the extra skip is the two-GPU test, with one device visible).
- **README protocol**, 5 clean runs per baseline, outputs bitwise equal:

  | Length | vs `292d02a` | vs `ac8512a` |
  |---|---|---|
  | L256 | −0.22 / −1.57 / −1.60 / −1.07% | −0.63 / −0.33 / −0.84 / −0.41% |
  | L1024 | −0.77 to −1.08% | −0.47 to −1.08% |
  | L8192 | within noise | d192 keeps −2.4 / −2.0% |

- **Rejected candidates:**
  - **C1 (`2d1aa0f`):** d128 GQA4 stays +0.8%, because its single-tile passes have no loads to hide behind.
  - **C3 (clear between the first QK's MFMAs):** no faster, and it **failed the hazard test** with 0–2 wait states.
  - **C6:** 45 VGPR spills.

**Task 2: HIP/assembly on HEAD (with the fix in parentheses).**

| | d128 MHA | d128 GQA4 | d192 MHA | d192 GQA4 |
|---|---:|---:|---:|---:|
| L256 | 1.068 (1.067) | 1.065 (1.050) | 1.122 (1.105) | 1.100 (1.088) |
| L1024 | 1.061 (1.052) | 1.068 (1.058) | 1.060 (1.051) | 1.060 (1.045) |
| L8192 | 1.014 (1.011) | 1.003 (1.017) | 1.010 (1.001) | 1.018 (1.013) |
| 16K / 32K | 1.008 / 1.007 | 1.009 / 1.007 | 1.004 / 1.005 | 1.006 / 1.006 |

The old docs table had 1.28–3.28× (d128) and 1.075–1.61× (d192). Today the gap is ≤1% at 16K/32K; what remains is at short lengths, worst for d192 L256 at 10–12%.

**Caveats.**
- **Process context hides the effect:** in processes that load 3+ extension builds, every version times like `ac8512a`. The cause is unexplained, so those timings were not used.
- **Other tenants:** they moved between GPU groups throughout. Final numbers come from a guard that only runs on an idle group and retries contaminated runs.
- **Mid lengths:** 1K–4K are 10–35% noisy under `benchmark_hip.py`; use the README L1024 rows.
- **Hazard safety:** both clear sites depend on code layout, because the compiler adds no hazard padding around inline asm.

## 1. Task 1: the short-shape slowdown

### 1.1 Which commit, and why

**Bisection.** One zyfa tree per process, with HIP and assembly timed in the same process. Each run had 3 clean rounds under the guard, README inputs, and L256 shapes. The HIP/assembly ratio cancels drift between processes, and plain time agrees. 16 rounds ran on HIP 0 and 8 on HIP 5. The full table is `timing/single-guarded/single-table.md`. Values are the change in HIP time vs `ac8512a`:

| Tree | d128 MHA | d128 GQA4 | d192 MHA | d192 GQA4 |
|---|---:|---:|---:|---:|
| `ac8512a` (µs) | 40.48 | 33.94 | 47.91 | 42.95 |
| `0ddab6a` | +0.04% | −0.15% | −0.03% | −0.09% |
| `c76a127` | +0.09% | +0.07% | −0.08% | −0.30% |
| **`e89fa08`** | +0.22% | **+1.78%** | **+1.13%** | **+0.97%** |
| `292d02a` | −0.34% | +1.25% | +0.62% | +0.58% |
| C1 `2d1aa0f` | −1.44% | +0.78% | +0.04% | −0.00% |
| C3 `a40183c` | −0.32% | +1.41% | +0.40% | +0.63% |
| **final (C5)** | **−0.59%** | **−0.33%** | **−0.58%** | **−0.34%** |

**What `e89fa08` changed.** Both versions zero O once per pass at about the same issue cost; only the position differs.
- **`ac8512a`:**
  - An SGPR zero splat feeds the O PHIs.
  - The copies (8 `v_mov_b64` from SGPRs, plus 24 `v_mov_b64` on each loop-entry edge) run in the stage-dispatch blocks after the pass-start `s_barrier`, about 235–275 cycles per pass per wave.
- **`e89fa08` / `292d02a`:**
  - The 64 `v_mov_b32 v, 0` run straight after the pass-start `s_waitcnt vmcnt(0)` (about 265 cycles per pass).
  - Only then does group 0 issue its tile loads, wait `vmcnt(0)`, and reach the barrier, so the loads the barrier depends on start about 265 cycles later.
  - Group 1, which runs one phase behind, now carries the clear inside its pass-start phase. In the HIP 0 barrier-interval analysis, interval 2's critical wave switches from group 0 to group 1.
- **Why only short shapes:** at length 256 each block runs 4 passes, and d128 GQA4 alternates passes of 2 tiles and 1 tile (128-key tiles). Pass-start work is a large share of a ~34 µs kernel; at 8192 it is noise.

### 1.2 ATT evidence

**How the captures were made.**
- The capture-att-trace skill script with the earlier settings, but dispatches 8–15 of 16; that's 8 dispatches × 8 waves per capture, one block per CU, 4 passes.
- New versions of the existing kernel ids:
  - `zyfa_fp8_d128_hip`: v3 `ac8512a` (rep1 on HIP 0, rep2 on HIP 5), v4 `292d02a` (rep1/rep2), v5 C1, v6 final.
  - `zyfa_fp8_d192_hip`: v3 / v4 / v5 for `ac8512a` / `292d02a` / final.
  - `zyfa_fp8_d{128,192}_asm`: v1.
- All verdicts OK. The assembly captures warn "isa-hash not computed", as before.

**How time is split into regions.**
- Each wave's time is charged to the instruction it was waiting on.
- Regions come from the 292d02a control-flow graph:
  - prologue;
  - QK and stats;
  - O clear;
  - group-0 load wait;
  - barrier and dispatch;
  - steady loop, tails, last softmax, next-pass transition, last PV, pass done, epilogue, final.
- Other builds map onto these regions by block index or by aligning blocks on their mnemonics.

**Region deltas, 292d02a − ac8512a** (cycles per wave over 4 passes):

| Region | d128 GQA4, HIP 0 | d128 GQA4, HIP 5 | d192 MHA, HIP 0 |
|---|---:|---:|---:|
| O clear | +1062 | +1060 | +1034 |
| Barrier + dispatch (the old copies) | −1102 | −939 | −886 |
| Group-0 load wait | +183 | +65 | −544 |
| QK + stats (includes the Q-load wait) | +306 | +267 | +203 |
| Epilogue | −486 | −644 | −571 |
| Tail / last softmax / transition / pass done | +1014 / +722 / −49 / +934 | +1006 / −1160 / −1372 / −128 | +618 / +306 / −98 / +674 |
| **Block span** | **+2136** | **−1582** | **+1228** |

**Reading the table.**
- The issue-cost rows (O clear, barrier + dispatch, epilogue) reproduce across captures.
- The wait-dominated rows flip sign between GPUs.
- Splitting HIP 0 wave time by instruction kind:
  - **HIP 0:** barrier +2195, `vmcnt` waits +1038, VALU −227, SALU −276, VMEM issue −401.
  - **HIP 5:** barrier +164, `vmcnt` −223, VMEM issue −1910.

**Per wave group, d128 GQA4, HIP 5:**

| Build | Group 0 load wait | Group 0 pass-start total | Group 1 clear before barrier |
|---|---:|---:|---:|
| `ac8512a` | 2598 | 11479 | 0 (copies after barrier) |
| `292d02a` | 2728 | 12756 | 1024 |
| C1 | 2011 | 12101 | 1028 |
| final | 248 | 11439 | 0 (clear after barrier) |

- In C1, group 0's clear is hidden only in the 2-tile passes; the load wait shrinks by about 720.
- In the final build, group 0's pass start is back at ac8512a's level.

**Assembly comparison, L256 block spans (cycles):**
- d128 GQA4: assembly 58.7k; HIP 61.1k (ac8512a) and 63.3k (292d02a).
- d192 MHA: assembly 82.4k; HIP 92.0k (ac8512a), 93.2k (292d02a), 91.5k (final).

### 1.3 Fix candidates

All candidates were committed on the agent worktree branch only:

| Commit | Change | Outcome |
|---|---|---|
| `2d1aa0f` C1 | Group 0 issues its loads, then O is cleared, then one wait and the barrier | Good for d192 and d128 MHA; d128 GQA4 stays +0.8% |
| `a40183c` C3, reverted by `854649a` | Clear inside the first QK's MFMA sequence | No gain, and **failed the hazard test**: the allocator reused an MFMA's source registers for O, leaving 0/2 wait states. The revert message only mentions timing. |
| **`a7297a9` C5** | Group 0 clears under its loads; group 1 holds O as poison until the barrier, then clears | **Chosen** |
| `4ba7cb3` C6, reverted by `e371073` | Clear before the barrier only when there are loads | 256 VGPRs, 45 spills, 94 SGPRs, 152-byte scratch frame |
| `de29ef9` | Comment-only: `zero_fx16` comment moved back above its function, margins updated | Same `.text` as `a7297a9` |

**The final diff against `b73e505`** touches only `csrc/fp8_native.hip`:
- adds `unspecified_fx16()` (a poison value), so group 1 doesn't keep the old O live across the pass start;
- moves the clear into group 0's load branch;
- makes `wait_dma()` unconditional (a no-op for group 1);
- clears group 1 after `phase_barrier()`.

There are now two clear sites, so the static count of zero moves is 133/181 (was 69/117).

**Static checks of the final tree:**
- Strict loops 1333/825, counts and order exact.
- Loop copies 8/4 (assembly 12/12); whole-kernel copies 348/158.
- VGPR 244/206, SGPR 77/79, no spills, no scratch; LDS 163840/131072.
- `s_waitcnt` 117/85 and `s_nop` 286/190, unchanged.
- 87 codegen and ISA tests passed.
- Hazard distances from the clears: 108/73 wait states backward (repository checker), 189/121 forward (the agent's new `fwd_hazard.py`).
- Full suite: 313 passed, 3 skipped.

**README protocol, final tree, 5 clean runs per baseline** (paired change, all outputs bitwise equal):

| Case | vs `292d02a` | Runs faster | vs `ac8512a` | Runs faster |
|---|---:|---:|---:|---:|
| d128 MHA 256 / 1024 / 8192 | −0.22 / −1.03 / +1.03% | 5 / 5 / 3 | −0.63 / −0.47 / −0.05% | 5 / 4 / 2 |
| d128 GQA4 256 / 1024 / 8192 | −1.57 / −1.08 / +0.85% | 5 / 5 / 3 | −0.33 / −0.75 / +0.29% | 4 / 5 / 3 |
| d192 MHA 256 / 1024 / 8192 | −1.60 / −0.77 / −0.30% | 5 / 5 / 2 | −0.84 / −0.76 / −2.41% | 5 / 5 / 5 |
| d192 GQA4 256 / 1024 / 8192 | −1.07 / −0.98 / −0.66% | 5 / 5 / 3 | −0.41 / −1.08 / −2.04% | 5 / 5 / 5 |

At L8192, the individual runs against 292d02a span about −1.5% to +2.5%, so those differences are noise.

## 2. Task 2: gap to the assembly kernels

**Setup.**
- HEAD's kernel code is `292d02a` (`.text` `04b70d82…`); the fix is the final tree.
- Every job ran under `scripts/guarded.py`. It starts only on an idle GPU group, samples activity every second, and kills and retries a run if another GPU in its group goes above 5% for 4 samples.

### 2.1 Short sequences

README protocol, 5 pooled clean runs on HIP 0; HIP/asm is the median of per-repeat ratios.

| d | Heads | S | asm µs | HEAD HIP µs | HEAD HIP/asm | Fix HIP µs | Fix HIP/asm | Fix vs HEAD | stdev asm / HEAD / fix (µs) |
|---|---|---:|---:|---:|---:|---:|---:|---:|---:|
| 128 | MHA | 256 | 37.74 | 40.34 | 1.068× | 40.27 | 1.067× | −0.22% | 0.13 / 0.80 / 0.26 |
| 128 | MHA | 1024 | 55.47 | 58.90 | 1.061× | 58.37 | 1.052× | −1.03% | 0.30 / 0.22 / 0.31 |
| 128 | MHA | 8192 | 269.08 | 271.56 | 1.014× | 272.04 | 1.011× | +1.03% | 7.51 / 6.24 / 5.68 |
| 128 | GQA4 | 256 | 32.32 | 34.39 | 1.065× | 33.87 | 1.050× | −1.57% | 0.17 / 0.90 / 0.38 |
| 128 | GQA4 | 1024 | 49.89 | 53.35 | 1.068× | 52.76 | 1.058× | −1.08% | 1.35 / 0.20 / 0.51 |
| 128 | GQA4 | 8192 | 266.55 | 269.87 | 1.003× | 269.01 | 1.017× | +0.85% | 9.92 / 7.54 / 10.84 |
| 192 | MHA | 256 | 43.09 | 48.39 | 1.122× | 47.60 | 1.105× | −1.60% | 0.09 / 0.44 / 0.08 |
| 192 | MHA | 1024 | 68.58 | 72.91 | 1.060× | 72.30 | 1.051× | −0.77% | 2.61 / 1.66 / 1.94 |
| 192 | MHA | 8192 | 379.44 | 381.44 | 1.010× | 381.75 | 1.001× | −0.30% | 4.32 / 6.07 / 5.43 |
| 192 | GQA4 | 256 | 39.38 | 43.25 | 1.100× | 42.81 | 1.088× | −1.07% | 0.07 / 0.66 / 0.08 |
| 192 | GQA4 | 1024 | 66.80 | 69.93 | 1.060× | 68.45 | 1.045× | −0.98% | 2.61 / 2.03 / 1.68 |
| 192 | GQA4 | 8192 | 371.87 | 377.63 | 1.018× | 377.41 | 1.013× | −0.66% | 3.22 / 5.70 / 5.87 |

### 2.2 Long sequences

**Method.**
- The `benchmark_hip.py` protocol (warmup 500, iters 100, repeats 3, LSE off), run through `benchmark_hip_tree.py`. That is a verbatim copy whose tree root and recorded commit come from the environment, because the archived trees aren't git checkouts.
- Each case ran as its own job, HEAD and fix interleaved per case, 2 rounds (6 samples per kernel).
- A whole 24-case run rarely found a clean window. The one clean whole HEAD run (`gap/long-head-292d02a-r1/`) agrees with the per-case results.
- Spread is (max − min) / median.

| d | Heads | S | asm µs | HEAD HIP µs | HEAD HIP/asm | Fix HIP/asm | Fix vs HEAD | Spread asm / HEAD / fix % | Old HIP/asm |
|---|---|---:|---:|---:|---:|---:|---:|---:|---:|
| 128 | MHA | 1024 | 56.73 | 60.75 | 1.069× | 1.060× | −0.84% | 14.8 / 10.4 / 12.4 | 3.052× |
| 128 | MHA | 2048 | 87.39 | 91.30 | 1.034× | 1.053× | +1.86% | 34.5 / 20.8 / 16.3 | 2.207× |
| 128 | MHA | 4096 | 142.40 | 160.69 | 1.101× | 1.074× | −2.52% | 16.2 / 15.1 / 17.0 | 1.925× |
| 128 | MHA | 8192 | 270.51 | 278.45 | 1.032× | 1.022× | −0.97% | 5.1 / 4.3 / 2.5 | 1.514× |
| 128 | MHA | 16384 | 1048.97 | 1057.41 | 1.008× | 1.007× | −0.04% | 0.7 / 0.3 / 0.4 | 1.366× |
| 128 | MHA | 32768 | 4103.90 | 4129.15 | 1.007× | 1.005× | −0.13% | 0.8 / 0.5 / 0.7 | 1.280× |
| 128 | GQA4 | 1024 | 48.83 | 52.43 | 1.070× | 1.059× | −1.05% | 15.4 / 13.4 / 14.1 | 3.282× |
| 128 | GQA4 | 2048 | 85.08 | 87.85 | 1.024× | 1.016× | −0.77% | 14.1 / 19.9 / 15.5 | 2.463× |
| 128 | GQA4 | 4096 | 143.92 | 155.50 | 1.067× | 1.030× | −3.44% | 21.3 / 14.3 / 18.6 | 2.074× |
| 128 | GQA4 | 8192 | 265.30 | 269.00 | 1.011× | 1.009× | −0.16% | 7.7 / 9.4 / 4.2 | 1.573× |
| 128 | GQA4 | 16384 | 1035.26 | 1044.30 | 1.009× | 1.009× | −0.01% | 1.2 / 0.2 / 0.4 | 1.390× |
| 128 | GQA4 | 32768 | 4090.50 | 4119.88 | 1.007× | 1.006× | −0.01% | 0.7 / 0.3 / 0.6 | 1.288× |
| 192 | MHA | 1024 | 73.35 | 72.20 | 1.048× | 1.045× | −0.22% | 11.9 / 11.3 / 11.5 | 1.612× |
| 192 | MHA | 2048 | 113.80 | 120.45 | 1.081× | 1.056× | −2.31% | 23.4 / 10.9 / 7.6 | 1.529× |
| 192 | MHA | 4096 | 191.26 | 222.55 | 1.179× | 1.068× | −9.39% | 14.1 / 27.8 / 17.6 | 1.206× |
| 192 | MHA | 8192 | 375.08 | 387.24 | 1.004× | 0.991× | −1.26% | 6.8 / 4.3 / 4.1 | 1.153× |
| 192 | MHA | 16384 | 1463.30 | 1466.24 | 1.004× | 1.004× | +0.09% | 5.2 / 0.8 / 4.9 | 1.116× |
| 192 | MHA | 32768 | 6012.49 | 5898.72 | 1.005× | 1.007× | +0.20% | 6.9 / 6.1 / 2.6 | 1.083× |
| 192 | GQA4 | 1024 | 69.98 | 69.45 | 1.042× | 1.042× | +0.07% | 16.5 / 15.2 / 16.8 | 1.612× |
| 192 | GQA4 | 2048 | 117.33 | 115.31 | 1.015× | 1.015× | +0.02% | 19.9 / 21.1 / 7.9 | 1.502× |
| 192 | GQA4 | 4096 | 204.41 | 207.57 | 1.015× | 1.011× | −0.39% | 21.5 / 12.9 / 4.2 | 1.225× |
| 192 | GQA4 | 8192 | 368.52 | 367.49 | 1.003× | 1.004× | +0.11% | 3.9 / 3.3 / 2.5 | 1.152× |
| 192 | GQA4 | 16384 | 1425.61 | 1432.19 | 1.006× | 1.005× | −0.13% | 1.7 / 1.0 / 0.8 | 1.104× |
| 192 | GQA4 | 32768 | 5775.60 | 5810.12 | 1.006× | 1.005× | −0.04% | 6.3 / 5.4 / 6.3 | 1.075× |

The old assembly/HIP µs columns from `docs/hip-fp8-performance.md`, and the fix's µs, are in `gap/gap-long.md`.

**Reading the table.**
- **16K and 32K:** HIP is within 0.4–0.9% of assembly in all 8 cases. The old table had 28–29% for d128 and 7.5–11.6% for d192.
- **8K:** 0.3–3%.
- **1K–4K:** this protocol is too noisy to quote, with 10–35% spread within a case. At 1K, use the README rows from 2.1: HEAD 6.0–6.8%, fix 4.5–5.8%.
- **Where the gap is:** the remaining difference is at L256–L1024 (5–7%, and 10–12% for d192 L256), and it sits outside the steady loop: pass start, tails and epilogue.

## 3. Caveats

**Process context hides the effect.**
- When one process loads 3 or more extension builds (`bench_multi.py`, 13 runs), every version times within ±0.2% of `ac8512a`.
- The README script (2 modules), single-module processes, and `run_case.py` all show the slowdown.
- A copy of the README script with only its root pinned reproduces it, and neither the slot nor an A/A pairing changes it.
- The cause is unexplained; the leading guess, not tested, is where the job table and LSE buffers land in memory.

**GPU contamination.**
- Other tenants moved between GPU groups (amd-smi 0–3 and 4–7), often at 100% on all four GPUs of a group.
- The first activity logs were truncated: amd-smi buffers its output when not attached to a terminal. Fixed with `PYTHONUNBUFFERED=1`.
- The early unguarded experiments are kept (`bisect-*`, `order-*`, `asmfrom-*`, `single-hip5-*`, `proto-*`, `readme-hip0-*`) but superseded by the guarded runs.

**ATT limits.** Single-CU block spans move by up to ±2.5k cycles between captures of the same code, so only issue-cost regions are comparable. ATT shows the mechanism; timing shows the effect.

**Hazards.** The compiler adds no padding around inline asm, so both clear sites rely on layout. The forward check is the agent's own script and is not in the repository's tests.

**Not done.**
- No `docs/` or `benchmarks/results/` updates. `docs/hip-fp8-isa-match.md` still quotes 102/67 hazard margins and "+64" retained moves; the fix has two clear sites, so 128 more static moves than `ac8512a`.
- `compare_isa.py` was not re-run on the whole kernel beyond the counts above.

## 4. Artifacts

All under this directory:
- **`trees/`:** built trees `ac8512a`, `c76a127`, `e89fa08`, `c1`, `c3`, `c5`, `c6`, `final`.
- **`att/`:** capture JSON and logs, block lists, and `analysis/` (region tables, per-group tables, barrier intervals, wait kinds, block spans).
  - The traces themselves are under `~/.local/share/capture_att_trace/zyfa_fp8_d{128,192}_{hip,asm}/`.
- **`timing/`:**
  - `readme-final/`: the 5+5 guarded README runs, `pooled.csv`, `gap-short.md`.
  - `single-guarded/`: single-module rounds and `single-table.md`.
  - `guard-log.txt`, plus the superseded experiments.
- **`gap/`:** `longcase/`, `gap-long.md`, `gap-long.csv`, `long-head-292d02a-r1/`.
- **`static/`:** `static-c{1,3,5}.log`, `static-summary.txt`, `tests-final.log`.
- **`scripts/`:** every tool used, the region spec, and the job lists.
