# LLVM FP8 ISA matching

Both four-stage steady loops retain the assembly backend's exact disassembled
mnemonic counts and sequence. The whole-kernel counts and sequence still differ.
The latest vector fixes reuse one runtime V address per PV site and restore
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

The largest remaining positive delta is `s_nop` (+125/+42). The assembly
reference assumes VCC mask interlocking, while LLVM inserts software delays.
AMD's CDNA4 ISA guide distinguishes two waits for SGPR/VCC constant inputs from
zero waits for carry-in, but does not explicitly classify CNDMASK's condition
mask. The continuation retained LLVM's conservative handling. See
[`vcc-hazard-evidence.md`](../benchmarks/results/hip_native/isa_match/whole_kernel_fixes_20261111/vcc-hazard-evidence.md)
for manual pages, quotations and the precise unresolved classification.

| Packaged allocation | d128 | d192 |
| --- | ---: | ---: |
| VGPRs | 256 | 231 |
| SGPRs | 106 | 106 |
| Scratch bytes per lane | 64 | 0 |
| LDS bytes per block | 163840 | 131072 |
| Reported SGPR spills before → after | 22 → 14 | 1 → 1 |
| Reported VGPR spills before → after | 23 → 23 | 0 → 0 |

Tiling, LDS allocation, four-slot pipeline, wave phases and steady unrolling
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
