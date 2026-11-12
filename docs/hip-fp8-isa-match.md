# LLVM FP8 ISA matching

Both four-stage steady loops retain the assembly backend's exact disassembled
mnemonic counts and sequence. The whole-kernel counts and sequence still differ.

The compiler, environment and benchmark commands for the current kernels are
in [Reproducing the native HIP FP8 results](hip-fp8-reproduce.md).

## Current capture: masked-MM interleave and prologue loads

[`rest_gap_20261112`](../benchmarks/results/hip_native/isa_match/rest_gap_20261112/README.md)
removes the rest of the short-length gap.

- **Masked MMs** (`c946161`, `7ef2635`, `ee96028`): both now follow the
  generator's masked variant, as the steady MM does:
  - mask and row max run under the QK MFMAs;
  - statistics run under the first PV MFMAs.

  About 270 VALU instructions no longer run with no MFMA in flight.
- **Prologue** (`238a793`): all three descale loads issue before one wait.
  Before, a folded `qd * kd` serialized them.

HIP time / assembly time is now 0.978–1.000 at L256/L1024 and 1.000–1.003 at
L8192, down from 1.003–1.023. Outputs stay bitwise-identical, and strict loops
stay exact.

The match against the assembly improves on all three measures:

| | d128 | d192 |
| --- | --- | --- |
| Positive excess | 258 → 248 | 193 → 190 |
| L1 | 845 → 834 | 674 → 671 |
| Exact LCS order | 3309 → 3434 | 2271 → 2321 |

`s_waitcnt` now equals the assembly's count in d128, and d192 uses 214 VGPRs.

## Short-length waits and masked-MM order

[`short_gap_20261112`](../benchmarks/results/hip_native/isa_match/short_gap_20261112/README.md)
closes most of the short-length gap to the assembly kernels. Per-pass ATT
region analysis found where HIP waited or serialized and the assembly did not:

- **`f66b5fa`:** group 0 waited `vmcnt(0)` for its pass-start V1/K2/K3 loads
  before the barrier. The assembly lets them cross the barrier, and the first
  MM waits for them. The HIP wait cost 600–1140 cycles per pass in group 0, and
  group 1 sat at its barrier for the same time. This was 44–90% of the L256
  gap.
- **`c3b73c3`:** the masked MM waited at its end for loads it had just issued.
  It now waits at its start, for the previous phase's loads, as the assembly
  does.
- **`4a2e4fb`:** the d192 masked MM issues its PV MFMAs before the mask and
  statistics. That removes LLVM's MFMA-result padding before the mask. The
  same change slowed d128, so d128 keeps the old order.

HIP time / assembly time, before → after:

| | d128 MHA | d128 GQA4 | d192 MHA | d192 GQA4 |
| --- | ---: | ---: | ---: | ---: |
| L256 | 1.071 → 1.017 | 1.050 → 1.005 | 1.108 → 1.008 | 1.086 → 1.023 |
| L1024 | 1.058 → 1.018 | 1.064 → 1.023 | 1.051 → 1.008 | 1.048 → 1.010 |
| L8192 | 1.010 → 1.003 | 1.009 → 1.009 | 1.007 → 1.004 | 1.009 → 1.003 |

The mnemonic histogram moves closer to the assembly: positive excess 259/204 →
258/193, and L1 846/682 → 845/674. The change in d192 is −4 `s_and_b64`,
−2 `s_cselect_b64`, −7 `s_nop` and −1 `s_waitcnt`. Strict loops stay exact, and
loop copies stay at 8/4. Outputs are bitwise-identical over 798,316 launches.

The old documentation said HIP lacked the assembly's cross-pass prefetch. That
is out of date: the next pass's tiles and Q are already loaded during the last
tile, the ring rotates across passes, and the epilogue overlaps the next pass
start.

## O-clear placement

[`o_clear_placement_20261112`](../benchmarks/results/hip_native/isa_match/o_clear_placement_20261112/README.md)
moves the O clear introduced by the register-copy fixes below to after the
pass-start barrier (`9cf4ce9`). The moves had sat in front of group 0's
pass-start tile loads and in group 1's pass-start phase. That slowed short
shapes by up to 1.8%.

The fix:
- **Placement:** O is cleared once, after the barrier, for both groups.
- **Before the clear:** O is an unspecified tile, so the previous pass's O
  isn't kept live.

The result:
- **Instruction match:** the mnemonic histogram is unchanged (positive excess
  259/204, L1 846/682). Strict loops stay exact, with no spills.
- **Hazard margins:** 108/75 wait states before the clear and 185/115 after,
  against a window of about 19.
- **Short-shape timing vs `b73e505`:** −1.2% to −1.4% at L256 for d128 GQA4 and
  d192, −0.4% to −0.8% at L1024.
- **Correctness:** outputs are bitwise-identical to the preceding captures.

A two-site variant was 0.2–0.7% faster on d128, but added 64 static moves.
That worsened d192's count match (positive excess 204 → 258), so it wasn't
used.

HIP time / assembly time, same process (README protocol, five clean runs):

| | d128 MHA | d128 GQA4 | d192 MHA | d192 GQA4 |
| --- | ---: | ---: | ---: | ---: |
| L256 | 1.070 | 1.050 | 1.107 | 1.085 |
| L1024 | 1.059 | 1.062 | 1.050 | 1.043 |
| L8192 | 1.010 | 1.013 | 1.007 | 1.008 |
| L16K / L32K (292d02a code) | 1.008 / 1.007 | 1.009 / 1.007 | 1.004 / 1.005 | 1.006 / 1.006 |

The remaining gap is at short lengths, outside the steady loop: pass start,
tails and epilogue.

## Register copies

[`copies_20261112`](../benchmarks/results/hip_native/isa_match/copies_20261112/README.md)
adds source commits `0ddab6a`–`292d02a` to the single-LDS capture below. The
compiler and flags are unchanged. The ISA comparison excludes register-source
copies, but they still issue. These commits remove copies that had no
counterpart in the assembly kernels:

| Copies (d128 / d192) | Assembly | Before | After |
| --- | ---: | ---: | ---: |
| Strict steady loop | 12 / 12 | 16 / 36 | **8 / 4** |
| Whole kernel | 319 / 223 | 609 / 443 | 348 / 158 |

- **d192 FP8 pack:** the low half of the d192 FP8 probability pack now takes an
  unspecified "old" operand. Passing the E8M0 scale there forced a copy before
  each of the eight packs per stage.
- **d128 code biases:** anchored by scalar fake uses instead of a register
  pair.
- **O tile:** cleared with 64 one-instruction `v_mov_b32 v, 0` helpers, as the
  assembly does, instead of an SGPR zero splat. The splat's PHI copies are gone
  and SGPRs drop from 88/90 to 77/79.
- **Epilogue:** permlane results are anchored individually.

| Measurement (d128 / d192) | Before → after |
| --- | ---: |
| Strict loop | exact → exact |
| Retained whole-kernel instructions | 4910 / 3398 → 4974 / 3463 |
| Positive mnemonic delta sum | 261 / 203 → 259 / 204 |
| Sum of absolute differences (L1) | 914 / 745 → 846 / 682 |
| VGPR / SGPR spills | 0 / 0 → 0 / 0 |

Retained instructions rise by 64 because the explicit O-clear moves are
retained (assembly `v_mov_b32` count: 133).

ATT traces from one CU, one dispatch, length 8192, measure cycles per steady
loop iteration:

| | Assembly | Before | After |
| --- | ---: | ---: | ---: |
| d128 | 10142 | 10132 | 10106 |
| d192 | 7473 | 7896 (+5.7%) | **7474** |

Outputs are bitwise-identical to the two preceding captures over 795,516
launches. The full suite passes.

Same-process timing compared with `ac8512a`:

- **d192 at length 8192:** 1.8–2.0% faster.
- **Short shapes:** 0.5–1.3% slower. d128 GQA4 at 256 is +1.3%.

Compared with `4dd38ce`, d128 is 11–15% faster at 256 and 1024.

The O-clear asm gets no compiler hazard padding. Its nearest MFMA is 102/67
wait states away, against a window of about 19.

## Single LDS array, LICM control, masked-tail fill

[`lds_licm_mask_20261111`](../benchmarks/results/hip_native/isa_match/lds_licm_mask_20261111/README.md)
captures source commits `3ff0230`–`ebddf9d` with the production LLVM
(`72e518a3f02a`) and the new `-mllvm=-disable-machine-licm` device flag.
Before is the zero-ADD3 capture
[`runtime_add3_20261111`](../benchmarks/results/hip_native/isa_match/runtime_add3_20261111/README.md)
(`4dd38ce`).

| Measurement | d128 before → after | d192 before → after |
| --- | ---: | ---: |
| Strict steady loop | 1333 → 1333, exact | 825 → 825, exact |
| Retained whole-kernel instructions (assembly 5302 / 3737) | 4929 → 4910 | 3359 → 3398 |
| Positive whole-kernel mnemonic delta sum | 301 → 261 | 214 → 203 |
| Sum of absolute mnemonic differences | 975 → 914 | 806 → 745 |
| Positive scalar delta sum | 272 → 221 | 179 → 160 |
| Positive vector delta sum | 29 → 40 | 35 → 43 |
| VGPRs / SGPRs | 256 / 106 → 244 / 88 | 231 / 106 → 206 / 90 |
| VGPR / SGPR spills | 23 / 14 → 0 / 0 | 0 / 1 → 0 / 0 |
| Scratch bytes per lane | 64 → 0 | 0 → 0 |

The investigation found that the HIP source already matches the assembly's
register pressure in the steady loop: d128 carries 3 VGPR / 46 SGPR through
the loop unused, against the assembly's 2 / 47. The excess came from LLVM
moving values the source computes per pass or at use to the kernel entry:

- **IR LICM, EarlyCSE and GVN:** epilogue addresses, stride multiples and
  head bases.
- **Early MachineLICM:** literal and constant moves, and V-ring bases.
- **The `"s"` inline-asm constraint:** it forced every LDS address literal
  into an SGPR.
- **Masked tail:** a duplicated score tile, created because the fully masked
  fill folded into the mask test block.

The source changes:

- **One static LDS array** in the reference layout. M0 offsets are `"n"`
  immediates, and a `__restrict__` V base keeps the LDS-DMA wait scopes.
- **Loop constants** are defined once at entry through one-instruction moves,
  and the `lse` pointer is a select.
- **LICM:** `#pragma clang loop licm(disable)` covers the persistent pass loop,
  and `-disable-machine-licm` disables early MachineLICM.
- **Masked tail:** the elementwise path is tested first, and d128 uses a 0.85
  placement weight.

Recomputing per-pass address terms adds some vector arithmetic and d192
scalar adds, so d192 retains more instructions than before. The other
measures above improve or stay exact.

Outputs are bitwise-identical to `4dd38ce` across 792,716 tail-focused
launches. The full suite passes. Same-process timing improves d128 by
10.9–16.2% at lengths 256 and 1024, and d192 by 1.5–3.0%. Length 8192 is
within run-to-run noise. A MachineLICM patch honouring `llvm.licm.disable`
produces byte-identical code without the global flag; it is archived as an
alternative.

## Earlier captures

The vector fixes reuse one runtime V address per PV site and restore
four/three setup MAD_U24s with HIP `__umul24` and validated native stride bounds.
The linked kernels retain 4955/3382 instructions, down from 5042/3420, with
unchanged steady sequences and resources. See
[`vector_fixes_20261111`](../benchmarks/results/hip_native/isa_match/vector_fixes_20261111/).
No additional LLVM change was needed for these source fixes.

The preceding whole-kernel continuation is captured in
[`whole_kernel_fixes_20261111`](../benchmarks/results/hip_native/isa_match/whole_kernel_fixes_20261111/).
Its compiled source is ZYFA `5a2bf97` and compiler LLVM `72e518a3f02a`.

| Dimension | Scope | Assembly | HIP before fixes | HIP after fixes | Count/sequence match after |
| --- | --- | ---: | ---: | ---: | --- |
| 128 | Steady loop | 1333 | 1333 | 1333 | Yes / Yes |
| 192 | Steady loop | 825 | 825 | 825 | Yes / Yes |
| 128 | Whole kernel | 5302 | 5089 | 5042 | No / No |
| 192 | Whole kernel | 3737 | 3529 | 3420 | No / No |

Counts exclude scratch operations, register-source MOVs, and SGPR spill
`v_readlane_b32`/`v_writelane_b32`. Literal initialization, waits, nops, branches,
arithmetic, memory and meaningful cross-lane operations remain. Encoding
suffixes are significant. The older capture retained the SGPR lane spills and
therefore reported HIP whole counts 5187/3531. Under the current policy its
baseline is 5089/3529. Separate lane-spill inventories and other excluded
instructions accompany every comparison.

Total instruction counts conceal opcode substitutions. The sum of absolute
per-mnemonic differences fell from 1199 to 972 for d128 and 964 to 791 for d192.
The sums of positive HIP-minus-assembly differences fell from 493 to 356 and
378 to 237; negative sums changed from -706/-586 to -616/-554.
[`whole-mnemonics.csv`](../benchmarks/results/hip_native/isa_match/whole_kernel_fixes_20261111/whole-mnemonics.csv)
contains every mnemonic, both signs, and before/after counts.

## Implemented fixes

- Runtime LDS address interpolation uses a single slot term while preserving
  both irregular-layout correction terms and all distinct static arrays. The
  runtime V base uses the existing one-instruction scalar-add helper so its high
  LDS constant stays outside repeated DS address additions. This is an address
  selection boundary, with no fixed-register allocation or new assembly block.
- Generic QK/PV helpers wait for paired LDS consumers and retain PV fragment
  read-ahead. LLVM's wait insertion and hazard recognizer remain enabled.
- D128 tail sums reuse the exact binary32 scales already held in `Params`.
  D192 retains scale reconstruction because reusing it changed the steady loop.
- Next-pass state uses a 32-bit completion flag and sequential source tests.
  LSE combines its validated 32-bit element index before shifting to bytes.
  Existing native host checks require the complete LSE span below 4 GiB.
- LLVM recognizes uniform one-use low-bit truncates as SCC branch predicates,
  avoiding an unnecessary select/EXEC-mask round trip. The fix adds no option
  and preserves divergence and uniform irreducible control flow.

Important mnemonic changes in the actual linked kernel:

| Mnemonic | d128 before → after | d192 before → after |
| --- | ---: | ---: |
| `s_waitcnt` | 168 → 130 | 116 → 90 |
| `s_bitcmp1_b32` | 28 → 2 | 24 → 2 |
| `s_cselect_b32` | 55 → 22 | 51 → 20 |
| `s_and_b64` | 32 → 19 | 40 → 21 |
| `s_mov_b64` | 12 → 0 | 29 → 9 |
| `s_lshl_b64` | 6 → 0 | 17 → 10 |
| `s_or_b32` | 74 → 31 | 71 → 34 |
| `s_nop` | 310 → 307 | 179 → 182 |
| `s_add_u32` | 185 → 295 | 174 → 220 |
| `v_add3_u32` | 0 → 48 | 0 → 24 |

That capture still repeated the scalar/vector V-base pair for every runtime
fragment. The subsequent vector fixes remove 42/18 repeated pairs across six
PV sites; each site now reuses one pair. They also replace the four/three setup
MUL_LO-plus-ADD pairs with four/three MAD_U24s. Native launchers reject K/V byte
strides at or above 2^24 before enqueue, matching the existing public wrapper
domain. Query/output products retain their full width. Each kernel gains one
block-alignment NOP outside the steady loop. Static count improvements alone
do not establish a performance benefit.

## Remaining differences

Whole-kernel sequence first diverges at retained index 4, after the four kernarg
loads, in entry lane/address setup. Scalar setup/control arithmetic, literal
initialization and outside-loop waits/nops still differ. All whole-kernel
LDS/global/buffer/MFMA and floating-point mnemonic counts remain matched.

The largest remaining positive delta is `s_nop`: +104/+50 in the current
capture, down from +125/+43. The assembly
reference assumes VCC mask interlocking, while LLVM inserts software delays.
AMD's CDNA4 ISA guide distinguishes two waits for SGPR/VCC constant inputs from
zero waits for carry-in, but does not explicitly classify CNDMASK's condition
mask. The continuation retained LLVM's conservative handling. See
[`vcc-hazard-evidence.md`](../benchmarks/results/hip_native/isa_match/whole_kernel_fixes_20261111/vcc-hazard-evidence.md)
for manual pages, quotations and the precise unresolved classification.

| Packaged allocation, current capture | d128 | d192 |
| --- | ---: | ---: |
| VGPRs | 244 | 206 |
| SGPRs | 77 | 79 |
| Scratch bytes per lane | 0 | 0 |
| LDS bytes per block | 163840 | 131072 |
| Reported SGPR spills | 0 | 0 |
| Reported VGPR spills | 0 | 0 |

The whole-kernel fixes capture had 256/231 VGPRs, 106/106 SGPRs and 64/0
scratch bytes. Its d128 kernel spilled 23 VGPRs and 14 SGPRs, and its d192
kernel 1 SGPR.

Tiling, LDS sizes and slot offsets, the four-slot pipeline, wave phases and steady unrolling
remain unchanged. Allocation values describe the complete kernel; direct spill
instructions remain recorded separately from retained instruction comparisons.

## Validation and reproduction

The native extension rebuilt successfully, its embedded code object matches the
reviewed candidate's complete ISA, and all 295 project tests passed (2 skipped).
The LLVM fix passed 21 focused lit tests with machine verification. The broad
AMDGPU sweep had 79 remaining shuffle failures, each also reproduced with the
frozen pre-fix compiler; the suite is not reported as entirely passing.

Use the supplied LLVM checkout and `build/env.sh` for the native build:

```sh
source build/env.sh
export ROCM_HOME="$ROCM_PATH" HIP_PATH="$ROCM_PATH"
export LLVM_ROOT=/home/jinpli/workspace/home/jinpli/development/workspace/01/llvm-project
ZYFA_NATIVE_LLVM_ROOT="$LLVM_ROOT" python setup.py build_ext --inplace
ZYFA_LLVM_ROOT="$LLVM_ROOT" python -m pytest -q tests
python benchmarks/inspect_hip.py --output DIR
python benchmarks/compare_isa.py --llvm DIR/disassembly.s \
  --assembly benchmarks/results/hip_native/isa_match/baseline/assembly_d128.s \
  --dim 128 --scope loop --output DIR/d128-loop
```

Repeat for d192. `--scope kernel` still returns mismatch; use
`--allow-mismatch` to save diagnostics. The artifact's `compare-candidate.py`
applies the additional SGPR lane-spill policy used in the current whole counts.
The owning manifest records source/compiler revisions and hashes, source
snapshots, native object/code-object/extension identity, and filtering policy.

All 12 benchmark output checks passed. Longer 8K GQA4 repeats put the selected
build 0.8%/0.5% slower than pre-fix for d128/d192, with overlapping sample ranges.
The fallback was slightly faster but less close in mnemonic counts, so the
count-first form remains selected. No general performance improvement is
claimed. See the continuation README and raw timing samples for details.
The prior build and its earlier benchmark protocol remain archived in
`offsets_owning_20261111/` and `push_validation_20261111/`.
