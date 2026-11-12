# Short-length HIP vs assembly gap: region breakdown and fixes

(Saved by the coordinator from the subagent's returned text; the harness blocked the subagent from writing this file.)

Base: HEAD `9d74db4` (kernel code `9cf4ce9`). Candidate branch `short-gap-20261112` = `4a2e4fb` (C5), local only, in the agent worktree `/home/jinpli/workspace/home/jinpli/development/zyfa/.claude/worktrees/agent-ac24e7bfa6fedf3e8`. Commits after `9d74db4`: `f66b5fa`, `c3b73c3`, `7c3bf2e` (comment only), `4a2e4fb`. Net diff: `csrc/fp8_native.hip` +16/−5. No LLVM change.

## Result

HIP time over assembly time, README protocol, 5 clean guarded runs:

| | d128 MHA | d128 GQA4 | d192 MHA | d192 GQA4 |
|---|---:|---:|---:|---:|
| L256 | 1.071 → **1.017** | 1.050 → **1.005** | 1.108 → **1.008** | 1.086 → **1.023** |
| L1024 | 1.058 → **1.018** | 1.064 → **1.023** | 1.051 → **1.008** | 1.048 → **1.010** |
| L8192 | 1.003 | 1.009 | 1.004 | 1.003 |

L8192 changes against HEAD are within noise (−0.1 to −0.5%).

**Per-pass region table at L256** (ATT, cycles per wave per pass, group 0 / group 1, 16 clean dispatches per kernel):

| Region | d128 GQA4: asm | HEAD | fix | d192 MHA: asm | HEAD | fix |
|---|---|---|---|---|---|---|
| Group-0 load wait before the pass-start barrier | 0 / – | **597** / – | 0 | 0 / – | **1138** / – | 0 |
| O clear + dispatch | 428 / 316 | 571 / 511 | 551 / 503 | 313 / 288 | 458 / 484 | 446 / 473 |
| First QK + statistics | 1729 / 1194 | 1534 / 1211 | 1537 / 1213 | 1310 / 838 | 1099 / 812 | 1350 / 828 |
| Tail (masked, PV-only, load-only tiles) | 2418 / 2229 | 2406 / 2387 | 2371 / 2363 | 7893 / 3102 | 8659 / 3776 | 7898 / 3421 |
| Last tile: codes + barrier | 2621 / 2448 | 2646 / 1923 | 2668 / 1880 | 1292 / 2873 | 1602 / 2865 | 1464 / 2567 |
| Transition + last PV | 1766 / 1647 | 1736 / 1011 | 1811 / 1316 | 1769 / 1102 | 1854 / 1387 | 1545 / 1123 |
| Pass-done barrier | 816 / 2375 | 541 / **3259** | 423 / 2557 | 1172 / 3848 | 1123 / **4190** | 1128 / 3750 |
| Epilogue | 1737 / 1361 | 1916 / 1533 | 1847 / 1509 | 2746 / 1492 | 2738 / 1538 | 2696 / 1573 |
| Prologue (per dispatch ÷ 4) | 1640 / 2192 | 1784 / 2574 | 1813 / 2242 | 1848 / 2490 | 2075 / 2973 | 1984 / 2504 |
| **Total per pass** | 14213 / 14719 | **+645 / +668** | **−121 / −144** | 19885 / 20356 | **+2345 / +2333** | **+70 / +97** |

## Ranked contributors

Share of the HEAD gap, measured by fixing them in turn:

1. **Group 0 waits for its V1/K2/K3 loads (`vmcnt(0)`) before the pass-start barrier** (structural, source). The assembly doesn't wait there; its first MM waits instead. This costs 600–1140 cycles per pass in group 0, and group 1 sits at its pass-done barrier for the same time. It accounts for 44–90% of the L256 gap and 38–64% of L1024. Fixed by `f66b5fa`.
2. **Masked-MM waits** (source). The masked MM waited `vmcnt(0)` at its end for the K/V tile loads it had just issued; the assembly waits at the start, for the previous phase's loads. This was 12–32% of the d192 gap and about 0 for d128. Fixed by `c3b73c3`.
3. **Masked-MM order** (source plus compiler). HIP runs QK → mask → statistics → PV in a fixed order, and LLVM pads `s_nop 11/7` before the mask can read the QK results. Per masked tile HIP is +460–620 cycles (d128) and +500–650 (d192) slower than the assembly. Issuing the PV MFMAs first (`4a2e4fb`, d192 only) fixed 15–27% of the d192 gap; d128 still carries about +490/+365 per masked tile.
4. **O clear after the barrier** (+130–290 cycles per pass). The 64 moves run at 5.5–7 cycles each because they compete with the other group's VALU work.
5. **Prologue**, once per dispatch: three serialized `lgkmcnt(0)` waits (kernarg, descales, job table) where the assembly has two.
6. **Epilogue**: the store instructions are identical; the extra time is store-issue stalls, not code.

HIP is faster than the assembly in the first QK, the transition and group 1's last PV.

**Cross-pass prefetch: the docs claim is out of date.** At HEAD the code already has all three features:
- the next pass's K0/V0/K1 tiles and Q are loaded during the last tile, before the last PV;
- the ring rotates across passes (`next_base`);
- the epilogue overlaps the next startup, with its stores in flight across the first QK.

The group-0 wait was the only structural difference left.

## Prototype checks (C5 = `4a2e4fb`)

- **Strict loops:** 1333/825, exact.
- **Mnemonic histogram:** d128 is one closer to the assembly (positive excess 259→258, L1 846→845); d192 moves 10 closer (204→194, L1 682→674).
- **Copies:** 8/4 in the loops (assembly 12/12); whole kernel 348/156, down from 348/158.
- **Instruction order:** exact LCS against the assembly goes 3307→3309 (d128) and 2223→2271 (d192).
- **Resources and hazards:** registers 244/77 and 206/79, no spills; O-clear hazard margins unchanged at 108/75 before and 185/115 after.
- **Tests:** codegen and ISA 87 passed; full suite 314 passed, 2 skipped.
- **Correctness:** 798,316 tail-race launches, bitwise equal to HEAD and the archived 9cf4ce9 build, 0 failures.

**Rejected:**
- **`5c4e357`, clearing O in the assembly's place:** 1.5–3.5% slower at L256, even though it matches order better.
- **`f182a6a`, PV-first for both dims:** d128 lost 0.3–0.5% at L1024 and some order match.

**Next steps:**
- Rewrite the d128 masked MM in the interleaved style of `FP8_STEADY_MM`; it's the main remaining d128 gap.
- Issue the descale and job-table loads before a single wait in the prologue.
- Fix the stale paragraphs in `docs/hip-fp8-performance.md` (no docs were edited).

**Caveats:**
- The table charges barrier waits to the region holding the barrier, so delays move between groups.
- Single-CU ATT spans differ from timing.
- The early unguarded captures were noisy and are excluded.
- The timing runs used HIP 0 and HIP 5; the ratios are paired within each process.

## 1. Method
- **Trees:** HEAD (`9d74db4`, its `.text` matches the archived owning ISA) and candidates C1–C5, each exported and built with `build_tree.sh`.
- **ATT:** each capture covers dispatches 8–15 of 16, all 8 waves of CU 1, with the shader engine as a second axis (SE 0 = prof1, SE 1 = prof2). The clean set is captures `g1`/`g2` taken under the guard: 16 dispatches per kernel.
- **Kernel versions:**
  - HEAD: `zyfa_fp8_d128_hip` v7–10, `zyfa_fp8_d192_hip` v6–9.
  - Assembly: `zyfa_fp8_d{128,192}_asm` v2–5.
  - C2: d128 v15–18, d192 v14–17.
  - C4: d128 v23–26, d192 v22–25. C5 is C2's d128 plus C4's d192, verified identical instruction for instruction.
- **Regions:**
  - Assembly: generator labels, with the generated `.s` zipped against its objdump for PCs.
  - HIP: block indices of the HEAD CFG, carried to candidates by block-signature alignment.
  - Charging: each interval is charged to the earlier instruction and split into issue, `s_waitcnt` and `s_barrier`.
  - Wave group: group 1 is the waves that execute the group-1-only prologue barrier.

## 2. HEAD vs assembly, other cases
Per-pass deltas, group 0 / group 1, from guarded ATT:

| Case | Group-0 wait | Pass-done barrier (g1) | Tail | O clear + dispatch | Epilogue | Prologue | Total |
|---|---:|---:|---:|---:|---:|---:|---:|
| d128 MHA L256 | +947 | +1158 | −62 / +246 | +132 / +205 | −21 / +168 | +143 / +371 | +1918 / +1937 |
| d128 GQA4 L1024 | +919 | +1071 | +606 / +922 | +122 / +208 | −5 / +192 | +47 / +324 | +2072 / +2054 |
| d128 MHA L1024 | +959 | +1436 | −226 / +238 | +150 / +231 | +237 / +19 | +290 / +501 | +1481 / +1488 |
| d192 GQA4 L256 | +822 | +632 | +695 / +755 | +145 / +225 | −6 / +96 | +179 / +307 | +1964 / +1976 |
| d192 MHA L1024 | +922 | +800 | +881 / +551 | +158 / +284 | +204 / +30 | +139 / +284 | +2428 / +2378 |
| d192 GQA4 L1024 | +696 | +478 | +803 / +968 | +144 / +270 | −83 / +73 | +185 / +241 | +1411 / +1401 |

The full tables are in `att/analysis/asm-vs-head-g.md`, `asm-vs-c2-g.md` and `asm-vs-c5-g.md`.

**Masked-MM duration per tile** (cycles, group 0 / group 1; from the start of the MM to its closing barrier):

| Case | asm | HEAD | C2 | C5 |
|---|---:|---:|---:|---:|
| d128 GQA4 L1024 | 1942 / 1817 | 2483 / 2198 | 2434 / 2182 | same as C2 |
| d192 MHA L256 | 1331 / 1288 | 1957 / 1784 | 1639 / 1617 | 1560 / 1489 |
| d192 MHA L1024 | 1353 / 1288 | 1884 / 1697 | 1670 / 1613 | 1574 / 1492 |

PV-only and SM phases are at parity with the assembly.

## 3. Timing (README protocol, guarded, 5 clean runs)

| Case | HEAD/asm (30 runs) | C1 | C2 (10 runs) | C3 | C4 | **C5** |
|---|---:|---:|---:|---:|---:|---:|
| d128 MHA L256 | 1.071 | 1.018 | 1.018 | 1.017 | 1.016 | **1.017** (−5.07%) |
| d128 MHA L1024 | 1.058 | 1.021 | 1.021 | 1.022 | 1.024 | **1.018** (−3.50%) |
| d128 GQA4 L256 | 1.050 | 1.005 | 1.005 | 1.020 | 1.007 | **1.005** (−4.25%) |
| d128 GQA4 L1024 | 1.064 | 1.024 | 1.023 | 1.030 | 1.028 | **1.023** (−3.73%) |
| d192 MHA L256 | 1.108 | 1.061 | 1.026 | 1.080 | 1.009 | **1.008** (−9.02%) |
| d192 MHA L1024 | 1.051 | 1.028 | 1.018 | 1.037 | 1.005 | **1.008** (−4.39%) |
| d192 GQA4 L256 | 1.086 | 1.047 | 1.036 | 1.063 | 1.023 | **1.023** (−5.73%) |
| d192 GQA4 L1024 | 1.048 | 1.030 | 1.023 | 1.036 | 1.013 | **1.010** (−3.23%) |

C5's percentages are the paired change against HEAD. All runs had bitwise-equal outputs. L8192 rows are in `timing/summary.md`.

## 4. Static checks (whole kernel against the assembly)

| | HEAD | C1–C3 | C4 | **C5** |
|---|---|---|---|---|
| d128 positive excess / L1 | 259 / 846 | 258 / 845 | 258 / 845 | **258 / 845** |
| d192 positive excess / L1 | 204 / 682 | 203 / 682 | 193 / 674 | **193 / 674** |
| LCS order, d128 / d192 | 3307 / 2223 | C3: 3317 / 2232 | 3283 / 2271 | **3309 / 2271** |
| Whole-kernel copies, d128 / d192 | 348 / 158 | 348 / 158 | 344 / 156 | **348 / 156** |

- **Waits and NOPs:** `s_waitcnt` drops by one in each kernel. In d192, `s_nop 11/7/4/3` drop by 10 (MFMA-result padding) while the protected VCC `s_nop 1` pads rise by 4. All padding is still the compiler's own.
- **C3's O clear:** hazard margins 102/67 before and 191/123 after; the clear is still well clear of any MFMA.
- **Order metric:** an exact bit-parallel LCS (`lcs_order.py`). The older difflib-based `order_match.py` moved by more than 160 when unrelated code shifted, so it isn't reliable for comparing candidates.

## 5. Artifacts
Everything is in this directory:
- `trees/{head,c1,c2,c2final,c3,c4,c5}`: the built trees.
- `att/analysis/`: the region tables, `tail-phases-guarded.txt` and the region maps.
- `att/guarded/`: per-capture guard logs.
- `att/capdirs.json`: index of capture directories.
- `timing/`: `round1`–`round3`, `summary.md`, the pooled CSVs and `guard-log.txt`.
- `correctness/{c2,c5}-tail-race`
- `tests/c5-full-suite.log`, `tests-codegen-{c2,c5}.log`
- `static-*.txt`
- `scripts/`: `regions.py`, `compare_all.py`, `gap_table.py`, `phase_durations.py`, `region_ops.py`, `region_pcs.py`, `lcs_order.py`, `guarded.py` (now accepts `GUARD_GROUPS` and skips finished runs), the `make_*` job writers and `capture.sh`.

**Branches:**
- `short-gap-20261112` = `4a2e4fb`, the recommended candidate (same as `short-gap-c5`).
- `short-gap-c3` = `5c4e357` (rejected).
- `short-gap-c4` = `f182a6a` (superseded by C5).

The main tree, `benchmarks/results/` and the LLVM checkouts are untouched.
