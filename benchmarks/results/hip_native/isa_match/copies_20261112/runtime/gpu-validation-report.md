# GPU validation of candidate 292d02a

(Saved by the coordinator from the subagent's returned text; the harness blocked the subagent from writing this file.)

`292d02a` passes validation. Its outputs are bitwise-identical to ac8512a and `4dd38ce` across about 796,000 launches, and no failures occurred. Against ac8512a it is about 1.6–2.5% faster on d192 at length 8192, but 0.5–1.4% slower on several short shapes.

## Summary

**Provenance and static checks.**
- **Build:** `git archive 292d02a` (source `a636145c…`, matching the commit's file), built with the production LLVM and the tree's own `setup.py`, which already has `-disable-machine-licm`.
- **Linked object:** the extension (`4d6bebac…`) embeds its own fatbin (`903087a5…`) once and the owning fatbin zero times.
- **vs the ATT tree:** `.text`, `.rodata` and `.note` are byte-identical, and all 5322/3621 instructions match.
- **Static result, as expected:**
  - Strict loops are exact at 1333/825.
  - d128 uses 244 VGPR / **77 SGPR** and d192 206 / **79**, with zero spills, no scratch and no lane spills.
- **Adapted verifier checks** (same as ac8512a's, expecting 77/79 SGPRs): all pass. ADD3 = 0, MAD_U24 4/3, MUL_LO 7, PV address and u24 setup pass, and protected mnemonic counts equal both ac8512a and `4dd38ce`.
- **Whole-kernel change vs ac8512a:** `v_mov_b32` +64 in both kernels; d128 `s_add_u32` +2 and `s_addk_i32` −2; d192 `s_nop` +1.

**Tests.** 310 passed, 2 skipped, including 76 codegen tests. This matches ac8512a.

**Tail/race correctness (long pass).**
- **Volume:** 1,120 cases and 795,516 candidate launches.
- **Bitwise comparisons, all true:** against **ac8512a** (the main checkout's extension, `8a0d5fb8…`) and **`4dd38ce`**, both LSE modes; output with vs without LSE; public API vs raw launch. Every case was also repeat-stable.
- **Coverage:** the same as for `ebddf9d`, plus a new O-clear phase. It ran 14 shapes dominated by pass starts (up to 8 jobs per workgroup, 1–2 tiles per pass, two-pass and odd-block jobs). That gave 2,800 fresh-seed launches with alternating LSE and concurrent memory-copy load, and 0 mismatches.
- **Maximum error vs FP64:** relative RMS 0.0267, LSE 0.0501.

**Timing (README protocol).**
- **Primary device:** HIP 5 (amd-smi 4), with five clean runs per comparison. Tenants moved between the two GPU groups during the session.
- **Cross-check:** HIP 0 gave matching results, with 4 clean ac8512a runs and 5 clean `4dd38ce` runs.
- **Statistic:** the per-repeat after/before ratio. The pooled median misleads on d192 MHA 1024, which is bimodal for all three kernels, the assembly control included.

| HIP 5, paired | ac8512a → 292d02a | 4dd38ce → 292d02a |
|---|---|---|
| d128 MHA 256 / 1024 / 8192 | −0.46 / +0.14 / +0.04% | **−14.69 / −11.42** / −2.01% |
| d128 GQA4 256 / 1024 / 8192 | **+1.30** / +0.44 / +0.04% | **−15.11 / −12.06** / −2.26% |
| d192 MHA 256 / 1024 / 8192 | +0.70 / +0.09 / **−2.00%** | −1.22 / −1.05 / −2.28% |
| d192 GQA4 256 / 1024 / 8192 | +0.55 / −0.88 / **−1.76%** | −1.75 / −1.84 / −2.12% |

- **vs ac8512a:** d192 at 8192 is consistently faster (HIP 0: −2.47% / −1.64%). Short shapes are consistently slightly slower: d128 GQA4 256 +1.3–1.4% and d192 256 about +0.6–0.7% on both devices. The cause was not investigated.
- **Check during timing:** before/after outputs were bitwise-equal in all 22 runs.

**Verdict.**
- **Correctness:** passes. No hazard showed up from the inline-asm O clear in pass-start-heavy runs.
- **Performance:** a d192 long-sequence gain and a small short-sequence cost against ac8512a. It is a large gain over `4dd38ce`.

**What remains unverified.**
- Testing can't prove the O-clear MFMA hazard is absent; that safety still rests on the static distance (102/67 wait states vs a window of about 19).
- Only gfx950 with this ROCm and compiler was tested.

## Build and environment
- **Tree:** `build/292d02a` inside the agent worktree (`.claude/worktrees/agent-ac019c7f660da3916`), built with the production LLVM (`72e518a3f02a`, Debug, read-only). Same `env-run.sh` and pinned-import pytest runner as before.
- **Reference extensions:**

| Reference | Hash | Note |
|---|---|---|
| ac8512a | `8a0d5fb8…` (main checkout extension) | Embeds the ac8512a capture fatbin once; that capture's source is `776857b4…` |
| 4dd38ce | `dbb3ebfa…` | Hash-checked copy |

- **Device mapping:** HIP→amd-smi is 0→3, 1→0, 2→2, 3→1, 4→7, 5→4, 6→6, 7→5.
- **Other tenants:**
  - Before timing, group 0–3 held a 99 GB foreign job with bursts, and group 4–7 was free.
  - Correctness ran on group 4–7.
  - The tenants then swapped twice, so timing ran on HIP 0 first and on HIP 5 after the second swap.

## Provenance (`provenance-candidate.json`, `static-checks.json`)
- **Hashes:** native object `130afb2a…`; code object `ffcf7937…`; `.text` `04b70d82…`; fatbin `903087a5…`; extension `4d6bebac…`.
- **vs ATT tree** (`build/att-20261112/tree-292d02a/inspect`, compared only): differs only in `.dynstr`, `.strtab` and the hash tables.
- **`s_waitcnt`:** 117/85, unchanged from ac8512a. **`s_nop`:** 286/190.
- **Hash-field caveat:** `git_head` in the provenance JSON records the surrounding worktree's commit, not this tree's. The source hash ties the build to `292d02a`.

## Tests
`logs/tests-full.log`: 310 passed, 2 skipped (the expected "requires a build without the native HIP FP8 backend"), 188.76 s, with HIP 6,7 visible.

## Tail/race (`tail-race-long/`)

| Phase | Cases | Pass |
|---|---:|---:|
| Kernel | 100 | 100 |
| Persistent | 48 | 48 |
| Padded | 336 | 336 |
| Diagonal | 594 | 594 |
| O-clear seeds | 14 | 14 |
| Stress, fixed inputs (20,000 launches each) | 14 | 14 |
| Stress, fresh seeds (200 each) | 14 | 14 |

- **Equality checks, all true:** `ac8512a` and `owning4dd38ce` in both LSE modes, `api_raw` in both modes, and output with vs without LSE.
- **Failures:** 0.

## Timing (`timing/`)
- **Protocol:** the README script, unmodified (`406716cd…`), run from inside the 292d02a tree. Runs alternate ac8512a and `4dd38ce` per round, with a 1 s per-GPU activity sampler.
- **Exclusions:**
  - HIP 0: `ac8512a-c` (9% burst on the other group-0 GPUs), plus `ac8512a-f` (79%) and `4dd38ce-f` (31%).
  - All 10 HIP 5 runs stayed at or below 3% on their group.
- **Files:** `timing-pooled-hip5-clean.csv`, `timing-pooled-hip0-clean.csv`, `paired-median-change.txt`, and `timing-all-runs.csv` (22 runs, excluded runs labelled).
- **Pooled medians, HIP 5 (µs, ac8512a / 4dd38ce / 292d02a):**
  - d128 MHA 256: 40.43 / 47.24 / 40.27
  - d128 GQA4 256: 33.86 / 40.41 / 34.30
  - d192 MHA 8192: 410.26 / 413.34 / 404.01
  - d192 GQA4 8192: 404.28 / 407.62 / 398.47
- **Device difference:** HIP 5 runs slower than HIP 0 at length 1024 for every kernel, the assembly control included. Comparisons therefore stay within a single device.
- **d192 MHA 1024 bimodality:** repeats 1–2 sit near 75.5 µs and repeats 4–5 near 80 µs for all three kernels. The pooled-median +2.99% is an artefact; the paired change is +0.09%.

Nothing was pushed, and the main checkout is untouched (extension still `8a0d5fb8…`, no newer files).
