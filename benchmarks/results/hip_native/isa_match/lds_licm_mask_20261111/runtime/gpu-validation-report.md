# GPU validation of candidate ebddf9d (builds A and B)

(Saved by the coordinator from the subagent's returned text; the harness blocked the subagent from writing this file.)

`ebddf9d` passes validation in both compiler configurations. Builds A and B produce byte-identical kernel code, so the GPU set ran once. Every output is bitwise-identical to owning `4dd38ce` and to `3ff0230`. On d128 it is 8–16% faster at lengths 256 and 1024.

## Summary

**Provenance.**
- **Source:** both trees are `git archive ebddf9d`; the source hashes `776857b4…`, matching the commit's file.
- **A vs B:** the code objects' `.text`, `.rodata` and `.note` are byte-identical, and every instruction matches. Only the compiler-version string and per-build ID sections differ.
- **Linked object:** each extension (A `30e9c69d…`, B `f9b7241d…`) embeds its own fatbin once and the owning fatbin zero times.
- **Static result, as expected:**
  - Strict loops are exact at 1333/825.
  - d128 uses 244 VGPR / 88 SGPR and d192 206 / 90, with zero spills of either kind.
  - `s_waitcnt` is 117/85, down from 130/90 in owning.
- **Protected checks:** all pass. ADD3 = 0, MAD_U24 4/3, MUL_LO 7, protected mnemonic counts equal owning, and the PV-address and u24-setup checks pass.

**Tests.**
- **Full suite on B** (codegen against the production LLVM, as in the README): **310 passed, 2 skipped**, matching `3ff0230`.
- **Codegen against `llvm-licm-src`:** **76 passed**.
- **Harness limitation:**
  - The codegen tests read `ZYFA_LLVM_ROOT`, not `ZYFA_NATIVE_LLVM_ROOT`; the wrapper sets both.
  - They use their own hard-coded clang/llc flags, so A's `-disable-machine-licm` can't be expressed in them.

**Tail/race correctness (long pass on B, with A as an extra reference).**
- **Volume:** 1,106 cases and 792,716 candidate launches, zero failures.
- **Bitwise comparisons, all true:**
  - against owning `4dd38ce`, `3ff0230` and build A;
  - with LSE requested and not requested;
  - output with vs without LSE;
  - public API vs raw launch.
- **New coverage:**
  - Diagonal offsets: lengths m−1, m, m+1 for every multiple m of 32 up to 1056.
  - Persistent multi-pass jobs: two passes per job, odd block counts, several jobs per workgroup.
  - Stress runs that alternate LSE modes.
- **Maximum error vs FP64:** relative RMS 0.0267, absolute 0.0424, LSE 0.0501.
- **Not tested:** non-causal, which isn't supported.

**Timing (GPU 0, README protocol, 5 clean runs each; percentage changes vs before).**

| | owning → ebddf9d | 3ff0230 → ebddf9d |
|---|---|---|
| d128 MHA 256 / 1024 / 8192 | **−14.12% / −10.87%** / −1.22% | **−8.75% / −7.78%** / −1.97% |
| d128 GQA4 256 / 1024 / 8192 | **−16.16% / −12.47%** / −1.12% | **−9.40% / −9.09%** / −1.21% |
| d192 MHA 256 / 1024 / 8192 | −1.75% / −1.49% / +0.29% | −1.60% / −1.08% / −0.50% |
| d192 GQA4 256 / 1024 / 8192 | −2.42% / −2.95% / −0.35% | −1.37% / −1.05% / +0.05% |

- **Spread:** at 256 and 1024 every run was faster, and d128 sample ranges don't overlap. The 8192 cases overlap and stay within about ±4% noise.
- **Check during timing:** before/after outputs were bitwise-equal in all 12 runs.
- **Excluded runs:** two runs coincided with bursts from another container on the same GPU group (11–13% and 30–39%) and are excluded. They remain in the per-run CSV, labelled.

**Correction to the `3ff0230` report.** The HIP device numbers used don't match `amd-smi`'s numbering: HIP 0→amd-smi 3, 1→0, 2→2, 3→1, 4→7, 5→4, 6→6, 7→5. "GPU 0" there means the card at PCI `78:00.0`. The other containers' jobs covered whole groups of four GPUs (0–3 or 4–7), so the earlier interference conclusions still hold.

**Verdict.**
- **Correctness:** passes in both configurations.
- **Performance:** a large, repeatable d128 gain at short and medium lengths, a small d192 gain, and no detected regression.

**What remains unverified.**
- Testing can't prove there is no race or hazard.
- Only gfx950 with this ROCm/LLVM pair was tested.
- Changes below 1% at length 8192 are below the noise floor.

## Builds and environment
- **Trees:** `build/ebddf9d-A` and `build/ebddf9d-B` inside the agent worktree (`.claude/worktrees/agent-ac019c7f660da3916`), both from `git archive ebddf9d`.
- **Build A:** production `llvm-project` (Debug). Its local `setup.py` copy adds `-Xarch_device -mllvm=-disable-machine-licm` (`logs/build-A-setup.diff`).
- **Build B:** `llvm-licm-src` at `282bb0968039` (Release), unchanged flags. Both compilers were used read-only.
- **Environment:** the same `env-run.sh`, and the pinned-import pytest runner asserts the expected extension hash.
- **Other GPU tenants:** a foreign 100 GB job sits on GPUs 0–3 with intermittent bursts; another moved through GPUs 4–7. Correctness ran on idle devices; timing ran on HIP 0 with a 1 s activity sampler.

## Provenance

| | A | B |
|---|---|---|
| Native object | `e74cbcfd…` | `747e5e54…` |
| Code object | `558a70d8…` | `73305032…` |
| `.text` | `38114f54…` | `38114f54…` (identical) |
| Fatbin in extension | 1× `687b3df6…` | 1× `c769b5cf…` |
| Owning fatbin in extension | 0 | 0 |

- **Identity:** A and B match instruction for instruction (5519 / 3841). They differ only in `.comment`, `.dynstr`, `.strtab` and the hash tables.
- **Resources:** LDS 163840/131072 and private memory 0, as expected.
- **Hash-field caveat:** `git_head` in `provenance-*.json` records the surrounding worktree's commit (`3ff0230`), because the exported trees have no `.git`. The source hash above is the one that ties the build to `ebddf9d`.

## Tests
- **B, full suite:** 310 passed, 2 skipped in 596 s (slowed by the foreign load), with GPUs 1,2 visible so the two-GPU test ran. Log: `logs/tests-B-full-codegen-production-llvm.log`.
- **B, codegen with `llvm-licm-src`:** 76 passed in 8.6 s (`logs/tests-B-codegen-llvm-licm-src.log`).
- **Build A:** no separate GPU suite run, because its kernel code is identical to B's and its runtime identity was checked bitwise in every tail/race case.

## Tail/race (`tail-race-long/`, `scripts/tail_race2.py`)
- **Phases:**
  - Kernel: 100 cases × 2 LSE modes × 501 launches.
  - Persistent: 48 cases, including multi-pass shapes 4×64×2048, 8×64×768, 8×64×1280, 6×48×1280 and 3×40×3328.
  - Padded: 336 cases, each also checked through the public API.
  - Diagonal: 594 cases, 99 lengths × 2 dims × 3 head configurations × 21 launches per mode.
  - Stress: 14 fixed shapes × 20,000 launches, alternating LSE modes and the concurrent memory copy, plus 14 shapes × 200 fresh seeds.
- **Checks:** a negative control confirms single-bit flips are detected.
- **Result:** every equality flag is true and every case is repeat-stable, with 0 failures.

## Timing (`timing/`)
- **Protocol:** the README script, unmodified (`406716cd…`), run from inside tree B.
- **Rounds:** a–f, alternating owning → ebddf9d and `3ff0230` → ebddf9d.
- **Contamination check:** a 1 s sampler logged per-GPU peak activity for each run. HIP 0 is amd-smi 3; amd-smi 0–2 show the foreign job's activity.
- **Exclusions:** `c3ff0230-d` (11–13%; its baseline at d128 GQA4 256 was 40.18 vs about 37.4 µs) and `owning-f` (30–39%).
- **Pooled sample medians (µs, owning / 3ff0230 / ebddf9d):**
  - d128 MHA 256: 47.16 / 44.36 / 40.50
  - d128 GQA4 256: 40.45 / 37.48 / 33.91
  - d128 MHA 1024: 65.87 / 63.60 / 58.71
  - d128 GQA4 1024: 60.86 / 58.47 / 53.27
- **Files:** `timing-pooled-gpu0-clean.csv` and `timing-all-runs.csv`.

## Files
In this directory:
- `summary.json`
- `provenance-A-vs-B.json`
- `provenance-B-vs-A.json`
- `protected-checks-A.json`
- `tail-race-long/`
- `timing/`
- `logs/`
- `scripts/`
- `extensions/`
- `A/`, `B/` (inspection output and objects)

Nothing was pushed, and the main checkout is untouched (extension still `dbb3ebfa…`).
