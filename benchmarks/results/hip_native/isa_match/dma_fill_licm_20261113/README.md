# HIP FP8 non-strict build: real-pressure MachineLICM and M0 hazard-slot fills

The non-strict build (`ZYFA_FP8_STRICT_ISA=0`) now uses two things together:
- MachineLICM turned back on, deciding hoists on real register pressure;
- source fills for the M0 → LDS DMA hazard slots (`ZYFA_FP8_DMA_FILL=7`).

It is 0.66% faster than the strict build on average, and faster in all 12
README cases. Against the earlier non-strict build (MachineLICM off, no fills)
it is neutral (−0.07%). HIP/assembly is 0.968–1.002. Outputs are
bitwise-identical to both earlier builds.

The strict build is unchanged: `.text` `179a935c` with either compiler.

- **Source:** `a09c781` adds the fills (opt-in at the time). The integration
  commit makes 7 the non-strict default and has `setup.py` pass
  `-machinelicm-real-pressure` instead of `-disable-machine-licm` for that
  build.
- **Compiler:** `lijinpei-amd/llvm-project` branch
  `2026-11-13-mlicm-rp-av-sreg`, `6eff2d896a12`. That is the production
  compiler `72e518a3f02a` plus 13 commits (see
  [hip-fp8-reproduce.md](../../../../../docs/hip-fp8-reproduce.md)).
- **Before:** the non-strict build of `ba9297b` with the production compiler
  and MachineLICM off (`builds/head-ns.out`, `.text` `0ed627d4`).

## The M0 hazard slot

An LDS DMA (`buffer_load … lds`) reads M0 one wait state after the SALU write
before it. When nothing sits between the two, the hazard recognizer inserts
`s_nop 0`. The fills move scalar work the kernel already does into that slot:

| Bit | Region | What goes in the slot |
| --- | --- | --- |
| 1 | steady loop | each chunk's soffset clamp (`s_min_u32`) or the step after it (`s_add_u32`) |
| 2 | group 0's whole-tile rounds (pass start, transitions) | each round's soffset multiply, a volatile `s_mul_i32` / `s_lshl_b32` |
| 4 | two-chunk tile loads of the masked MM and tails | the tile's soffset, one `s_mul_i32` |

Bits 2 and 4 count only when LLVM expands the `s_mul_i32` / `s_lshl_b32` asm
into real instructions before hazard recognition; `6eff2d896a12` adds that.

## Static results

All kernels: 0 spills, 0 private segment. Non-strict values are the
all-descales kernel; the general kernel has the same slots.

| Build | `.text` | d128 insts / `s_nop` / M0 nops | d192 insts / `s_nop` / M0 nops | SGPR d128/d192 | VGPR | Steady loop |
| --- | --- | --- | --- | --- | --- | --- |
| strict | `179a935c` | 5311 / 281 / 57 | 3603 / 183 / 52 | 77/79 | 244/214 | 1333/825, exact |
| non-strict before | `0ed627d4` | 5141 / 124 / 57 | 3511 / 105 / 52 | 93/94 | 244/214 | 1333/825 |
| real-pressure LICM, no fills (V0) | `3608da41` | 5146 / 125 / 57 | 3504 / 105 / 52 | 100/101 | 244/216 | 1333/825 |
| **integrated (fill 7)** | **`49f56326`** | 5107 / 90 / 21 | 3457 / 67 / 14 | 100/101 | 244/216 | 1317/813 |

The M0 nops left are d128 5/0/0/12/4 and d192 4/0/0/6/4 over entry / pass
start / steady / tails / transitions. `static/static-table.md` has the
intermediate fills.

Against the assembly (`isa/summary.json`, `compare_isa.py`, spills and copies
excluded):

| Build, kernel | d128 positive excess / L1 / exact LCS | d192 |
| --- | --- | --- |
| strict | 248 / 834 / 3434 | 190 / 671 / 2321 |
| non-strict before, general | 348 / 1190 / 3247 | 248 / 864 / 2222 |
| non-strict before, all-descales | 342 / 1193 / 3237 | 243 / 869 / 2214 |
| integrated, general | 348 / 1228 / 3193 | 248 / 920 / 2173 |
| integrated, all-descales | 342 / 1231 / 3183 | 242 / 923 / 2166 |

- **Steady loop:** the only differences from the assembly are 16/12 fewer
  `s_nop` and 4 `v_cndmask_b32` in the e32 encoding instead of e64 (the
  `inverse_ballot` selects). Before the fills it differed only in the
  encoding.
- L1 grows because the HIP kernel now has fewer `s_nop` than the assembly
  (90 vs 182 at d128), which counts against it. Positive excess is unchanged.
- O-clear hazard margins (inline-asm zeroing vs the nearest MFMA): 110/77
  wait states before and 185/115 after, against a window of about 19
  (`static/integrated-static.txt`).

## Timing

README protocol (`benchmark-before-after.py`), guarded, 5 clean runs per
pair, pooled. Paired change is against the named baseline in the same
process. HIP/assembly is the median of per-repeat ratios, from the runs against strict.
`timing/tables-main.md` has every series and range.

| Series | Paired vs strict, mean | Faster cases | Paired vs non-strict before | HIP/assembly |
| --- | ---: | ---: | ---: | --- |
| V0 (LICM, no fills) | −0.46% | 11/12 | +0.12% (d192 L256 +0.5%) | 0.970–1.004 |
| fill 1 | −0.58% | 12/12 | +0.02% | 0.970–1.001 |
| fill 3 | −0.60% | 11/12 | −0.15% | 0.969–1.007 |
| **fill 7 (integrated)** | **−0.66%** | **12/12** | **−0.07%** | **0.968–1.002** |
| strict with real-pressure LICM (R1) | +0.44% | 1/12 | — | 0.983–1.006 |

The control (the same build twice) moved −0.05% on average.

`timing/tables-extra.md` separates the two parts:
- fill 7 with MachineLICM off: −0.52% vs strict, +0.06% vs non-strict
  before;
- fill 1 with the production compiler: −0.59% vs strict, +0.13% vs non-strict
  before.

Neither part alone beats the earlier non-strict build. Together they are
neutral against it.

## Correctness

- **Tail/race pass** (`tail-race/`, `scripts/tail_race.sh`): 1134 cases,
  0 failures, 798,316 launches. It covers kernel, persistent, padded, diagonal,
  O-clear seed and stress phases at lengths 1–8192. Outputs are
  bitwise-equal to the strict and non-strict HEAD extensions, with and without
  LSE. Max relative RMS against the reference is 0.027.
- **Test suite** (`tests/`): 317 passed, 2 skipped, for both the integrated
  non-strict and strict builds with the `6eff2d896a12` compiler. That compiler
  is a Release build, so the suite takes about 12 s; the Debug production
  compiler made the codegen fixtures take minutes.

## Reproducing

`builds/*.out` records each build's tree, compiler, `.text` and extension
hashes. `scripts/build_wt.sh` builds the working tree;
`scripts/build_variant.sh` built the variants from a commit. The integrated
builds:

| Build | Compiler | `.text` |
| --- | --- | --- |
| `ZYFA_FP8_STRICT_ISA=0` | `6eff2d896a12` | `49f563269ba8…` |
| default (strict) | `6eff2d896a12` | `179a935c393b…` |
| default (strict) | `72e518a3f02a` | `179a935c393b…` |

The non-strict build needs `6eff2d896a12`: the production compiler rejects
`-machinelicm-real-pressure`.
