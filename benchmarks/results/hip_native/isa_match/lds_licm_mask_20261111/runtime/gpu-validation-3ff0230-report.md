# GPU validation of candidate 3ff0230

(Saved by the coordinator from the subagent's returned text; the harness blocked the subagent from writing this file.)

`3ff0230` passes on the GPU. Its outputs are bitwise-identical to the owning build `4dd38ce` across about 473,000 tail-focused launches. It is 3–7% faster on d128 at lengths 256 and 1024 and neutral elsewhere.

## Summary

**Provenance.** Built in the agent worktree with the production LLVM (`72e518a3f02a`, Debug, read-only).
- **Linked object is the candidate's:**
  - Source `3cd9ee17…` equals the commit's file.
  - The extension (`daedaa89…`) contains the candidate fatbin (`5e57339c…`) once and the owning fatbin zero times.
  - The code object's `.text`, `.rodata` and `.note` are byte-identical to the investigation's `v9-final`, and all 5580/3865 instructions match.
- **Static checks:** strict loops are exact at 1333/825. `s_waitcnt` falls 130→124 (d128) and 90→86 (d192). Spills: d128 14/23 → 4/19, d192 1/0 → 0/0.
- **Owning build:** source `8ba78b70…` and extension `dbb3ebfa…` match the record.
- **Main checkout:** untouched.

**Tests.**
- **Owning:** 304 passed, 2 skipped, which reproduces the record.
- **Candidate:** 310 passed, 2 skipped. The six extra tests are its new codegen tests.
- **Failures:** none. The two-GPU test needed a separate run with two GPUs visible.

**Tail/race correctness.**
- **How:** the candidate and owning ran in the same process on identical inputs, compared bitwise, then repeated and compared against the candidate's own first output. Error was measured against an FP64 reference over all rows. A negative control confirmed a single flipped bit is detected.
- **Shapes covered:**
  - d128 and d192 at lengths 256–2048, MHA and GQA 2, 3, 4 and 8, both layouts. This gives d128 blocks with n = 1, 2, 3 … 16 tiles; d192 tile counts are always even.
  - Persistent-job shapes that rotate the ring slot.
  - 28 lengths that aren't multiples of the tile (1 to 1500), through the padded public path.
  - Stress runs alongside a concurrent memory copy, plus fresh random inputs.
- **Results:**
  - Short pass: 484 cases, 35,964 launches.
  - Long pass: 484 cases, 472,884 launches, all bitwise-equal to owning and repeat-stable.
  - Maximum error: relative RMS 0.0264, absolute 0.0380, LSE 0.0501. Zero failures.
- **Not tested:** non-causal, because neither the kernel nor the API supports it.

**Timing (GPU 0, README protocol, 5 runs × 5 repeats).** Baseline sanity reproduced the README to within 1% at lengths 256 and 1024.

| | Length 256 | Length 1024 | Length 8192 |
|---|---|---|---|
| d128 MHA | **−5.84%** (all runs −5.66…−5.88) | **−3.01%** | +0.56% (noise) |
| d128 GQA4 | **−6.83%** | **−3.89%** | +0.69% (noise) |
| d192 MHA | −0.46% | +0.19% | −0.43% |
| d192 GQA4 | −1.13% | −1.02% | +0.13% |

- **d128 at 256 and 1024:** every run was faster, and the before and after sample ranges don't overlap.
- **8192:** all kernels vary by about ±4% between runs, including the unchanged assembly kernel, so changes there are not detectable.
- **Check during timing:** before/after outputs were bitwise-equal in all 25 runs.
- **GPU choice:** timed on GPU 0 because another container's job moved onto GPUs 4–7 partway through. The one affected run is excluded, and the remaining GPU-4 runs agree with GPU 0.

**Optional flag variant (run).**
- **Static:** d128 spills drop to 0 SGPR / 18 VGPR, d192 stays 0/0, and strict loops stay exact.
- **Correctness:** the long tail/race pass is clean (472,884 launches) and the runtime tests passed (234, 2 skipped).
- **Timing:**
  - Against owning, d128 is −7.01% / −8.35% at 256 and −3.58% / −5.13% at 1024.
  - Against the candidate in the same process, d128 is a further −1.44% / −1.30% at 256 and −0.32% / −1.25% at 1024. d192 is neutral.

**Verdict.**
- **Correctness:** `3ff0230` passes. The removed waits caused no observable race.
- **Performance:** a repeatable d128 speedup at short and medium lengths with no detected regression.

**What remains unverified.**
- **No proof:** testing can't prove a race is absent. No instruction-level hazard proof was done.
- **Scope:** only gfx950 with this ROCm and compiler.
- **8192:** sub-1% changes there are below the noise floor.
- **Flag variant:** its codegen tests weren't run, because the test harness compiles with the production LLVM.

## Environment
- **Worktree:** `.claude/worktrees/agent-ac019c7f660da3916`, detached at `3ff0230`, clean.
- **Owning tree:** `git archive 4dd38ce` into `build/owning-4dd38ce/`, plus a copy of the main checkout's installed extension.
- **Compiler and environment:** production LLVM used read-only. `scripts/env-run.sh` sets the `build/env.sh` values and the README exports. `AMDGPU_ASIC_ID_TABLE_PATHS` points at `torch/share/libdrm`, which contains `amdgpu.ids`.
- **GPU access:** the device nodes belong to GID 993 today. The session already had that group, so no `sudo`/`sg` was needed.
- **Other GPU users:** another container's jobs, invisible to `ps` here.
  - At the start, a 99.9 GB job sat on GPUs 0–3.
  - During GPU-4 run `t2e`, a job started on GPUs 4–7 and slowed every kernel, including the assembly control, so `t2e` is excluded.
  - Primary timing was then re-run on GPU 0, which stayed at 0% activity.
- **Import pinning:** the editable install makes a plain `import zyfa` load the main checkout. Every test and correctness run therefore pins `zyfa` to its own tree and asserts the expected extension hash.

## Provenance (`provenance-candidate.json`)

| Item | Value |
|---|---|
| Source hash | `3cd9ee17…` (equals the commit's file and the `v9-final` snapshot) |
| Code object / `.text` | `23ca0ed9…` / `63950b3f…` |
| Native fatbin | `5e57339c…` |
| Extension | `daedaa89…` |
| Candidate fatbin in extension | 1 |
| Owning fatbin in extension | 0 |
| vs `v9-final` | `.text`, `.rodata`, `.note` identical; all instructions match. Only `.comment` and the CUID string/hash sections differ. |
| Strict loops | 1333 / 825, exact |
| `s_waitcnt` (owning→candidate) | d128 130→124, d192 90→86 |
| Spills SGPR/VGPR | d128 14/23 → 4/19; d192 1/0 → 0/0 |
| Other resources | d192 VGPRs 231→226; d128 private memory 64→48 B; LDS 163840/131072 unchanged |

- **Owning:** source `8ba78b70…` and extension `dbb3ebfa…` match the record, and the owning fatbin occurs once in that extension.
- **Saved baseline:** `baseline-extension.so` (`39fec40`) hashes `5fa7ec92…`, matching its manifest.
- **Main checkout:** its extension still hashes `dbb3ebfa…` with the 13:33 timestamp, and nothing under `benchmarks/results`, `zyfa`, `csrc` or `tests` changed.

## Project tests

| Build | Result |
|---|---|
| Owning `4dd38ce` | 303 passed, 3 skipped on one GPU, plus the two-GPU test passing on two GPUs → **304 passed, 2 skipped**. 70 codegen tests. |
| Candidate `3ff0230` | 309 passed, 3 skipped (190 s), plus the two-GPU test passing → **310 passed, 2 skipped**. 76 codegen tests. |

The two remaining skips are the expected "requires a build without the native HIP FP8 backend". Logs are `logs/tests-*.log`.

## Tail/race correctness (`tail-race/`, `tail-race-long/`)

**Method.**
- Each case runs candidate and owning on identical FP8 inputs in one process and compares output and LSE bitwise.
- Repeats are then compared against the candidate's first output.
- Error is measured against an FP64 reference over all rows.
- A negative control confirms single-bit flips in output or LSE are detected.

**Coverage.**
- **Raw launches:** lengths 256/512/768/1024/2048 × d128 and d192 × MHA, GQA2, GQA4, GQA8 (pair mode) and GQA3 (non-pair) × BHSD/BSHD. The 1024 cases use growing scores to force rescales.
- **Persistent jobs:** 16×64×256 (MHA and GQA4), 8×32×768 GQA4, 4×48×512 GQA3, 2×64×2048 GQA8, 2×8×8192 MHA.
- **Padded lengths:** 1, 2, 3, 31–33, 63–65, 127–129, 191–193, 255, 257, 300, 383, 385, 511, 513, 640, 700, 769, 1000, 1025, 1500 through `flash_attn_func(backend="hip")`. The API result also had to equal the hand-padded launch bit for bit.
- **Stress:** 12 tail-heavy shapes, each with 1,000 or 20,000 launches alternating with a concurrent 16 MB–1 GB memory copy, plus 40 or 200 fresh seeds.

| Run | Cases | Launches compared | Bitwise = owning | Repeat-stable | Max rel. RMS | Max abs | Max LSE | Failures |
|---|---:|---:|---|---|---:|---:|---:|---:|
| Short | 484 | 35,964 | all | all | 0.0264 | 0.0380 | 0.0501 | 0 |
| Long | 484 | 472,884 | all | all | 0.0264 | 0.0380 | 0.0501 | 0 |

## Timing (`timing/`)

**Protocol.**
- **Script:** the README's benchmark script, byte-identical (`406716cd…`), run from a copy inside each tree.
- **Settings:** 200 warmups, 100 timed calls, 5 alternating repeats.
- **Check:** the script's bitwise before/after assertion held in all 25 runs (300 cases). The maximum sampled RMS was 0.006014.

**Runs.**
- **T1, baseline sanity** (saved `39fec40` → owning): matches the README, e.g. d128 MHA 256 is 47.41 → 47.19 µs today vs 47.37 → 47.05 recorded.
- **T2, owning → candidate:** the table in the summary. Owning medians at 256: 47.25 / 40.39 / 49.07 / 44.15 µs; candidate 44.49 / 37.64 / 48.84 / 43.65 µs.
- **T3, saved `39fec40` → candidate (1 run):** d128 −6.27 / −3.48 / −7.36 / −4.10%. The d128 GQA4 8192 value is +7.17%, inside the noise band.
- **GPU-4 cross-check (7 clean runs):** d128 256 −5.65% / −6.94%, 1024 −3.19% / −3.82%.

## Flag variant (`flag-variant/`, `provenance-flag-variant.json`)
- **Build:** `git archive 3ff0230` with a local `setup.py` copy adding `-Xarch_device -mllvm=-amdgpu-early-machinelicm-before-fold=false` (diff in `logs/flag-variant-setup.diff`), compiled with the `llvm-lds-licm` build (`5be5c1df2471`, Release) used read-only.
- **Provenance:** extension `ea059502…` embeds its fatbin once. `.text`, `.rodata` and `.note` are identical to the investigation's v8.
- **Resources:** d128 spills 0/18 (private memory 44 B), d192 0/0, strict loops exact.
- **Correctness:** long tail/race pass clean; runtime tests 234 passed, 2 skipped.
- **Timing (owning → flag, 5 runs):** d128 256 −7.01% / −8.35%; 1024 −3.58% / −5.13%; 8192 noise; d192 −0.15% to −2.06%.
- **Timing (candidate → flag, same process, 3 runs):** d128 −1.44% / −1.30% at 256 and −0.32% / −1.25% at 1024.

## Files
All in this directory:
- `summary.json`
- `provenance-candidate.json`
- `provenance-flag-variant.json`
- `tail-race*/tail-race.csv`
- `timing/timing-pooled-gpu0.csv`
- `timing/timing-all-runs.csv`
- `logs/`
- `scripts/`
- `extensions/` (the three `.so` copies)
