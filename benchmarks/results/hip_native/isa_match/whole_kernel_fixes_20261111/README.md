# Whole-kernel FP8 fix results

The LLVM/HIP fixes preserve exact retained steady-loop mnemonic counts and
sequence (1333 d128,825 d192). Whole-kernel counts and order remain different.
The owning extension was built from ZYFA `5a2bf97` and LLVM `72e518a3f02a`.
Its native code object is present verbatim in the linked extension; its complete
ISA equals the reviewed combined candidate. See manifest.json and owning/.

| Metric | d128 before | d128 after | d192 before | d192 after |
| --- | ---: | ---: | ---: | ---: |
| Reference whole count | 5302 | 5302 | 3737 | 3737 |
| HIP whole count | 5089 | 5042 | 3529 | 3420 |
| Positive mnemonic-delta sum | 493 | 356 | 378 | 237 |
| Negative mnemonic-delta sum | -706 | -616 | -586 | -554 |
| Sum of absolute mnemonic differences | 1199 | 972 | 964 | 791 |
| Exact steady sequence | Yes | Yes | Yes | Yes |

Filtering removes scratch, register-source MOVs, and SGPR lane spill reads/writes;
retains initialization, waits/nops, branches, memory/arithmetic and meaningful
cross-lane work; preserves encoding suffixes. Whole-mnemonics.csv contains all
per-mnemonic counts and both signs. Owning comparison JSONs and separate
excluded-lane-spill inventories record every excluded operation. Old basic
comparison reports retaining lane spills have larger totals; they are not the
baseline used here.

The accepted changes factor runtime LDS interpolation while retaining actual
static arrays/irregular-layout correction terms; materialize the high V base
through existing scalar address arithmetic; pair QK/PV fragment waits with
read-ahead; reuse d128 tail scales; use 32-bit next-pass state/LSE indexing; and
select SCC for uniform low-bit branches in LLVM. All numerical arithmetic,
static allocation, tiling and wave/pipeline invariants remain verified.

| Main mnemonic | d128 before → after | d192 before → after |
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

Register counts/private allocation remain 256/231 VGPRs,106/106 SGPRs,
64/0 scratch bytes per lane and 163840/131072 LDS bytes per block. D128 reported
SGPR spills decrease 22→14; d192 remains 1. VGPR spill counts remain 23/0.

Whole sequence first differs at retained index 4 in unchanged entry setup.
Residual positive gaps include nop 125/42, scalar OR 31/34, vector add3 48/24,
and EXEC-mask AND 19/21. Negative gaps reflect scalar arithmetic and literal
initialization that LLVM folds or combines. A closer total alone does not prove
mnemonic agreement. Whole-kernel matching remains incomplete.

The VCC nop discrepancy was investigated against AMD's CDNA4 manual. It gives
constant-input 2-wait and carry-in 0-wait rules but does not explicitly classify
CNDMASK's mask input; LLVM's conservative model is retained. Exact quotes,
pages and source/review evidence are in vcc-hazard-evidence.md. No assembly
reference or emitted machine code was patched to manufacture a match.

## Validation

- Native extension build succeeded; 295 project tests passed, 2 skipped.
- Actual code-object comparison proves exact loop counts/order and unchanged
  whole memory/MFMA/floating-point mnemonic counts.
- 21 LLVM focused lit tests passed with machine verification. The broad sweep
  discovered 5293 tests; nine expected checks were updated. All 79 remaining
  shuffle failures independently reproduce with frozen pre-fix LLVM.
- Independent reviews found no blocking code findings. Reports and patches
  are included; LLVM changes are local commits 8da6055648da and 72e518a3f02a.
- All 12 measured benchmark cases passed sampled FP64 checks, as did both
  repeated cases for each baseline/selected/fallback extension.

## Performance

Full comparisons used 100 warmups, 50 profiled launches per sample and 3 repeats
with assembly/HIP order alternating. Original and final results are under
baseline/,baseline-long/ and performance/. These timings show proximity for
these shapes, not a general performance improvement.

| Dimension | Group | S | Before HIP µs | After HIP µs | After HIP / assembly |
| --- | ---: | ---: | ---: | ---: | ---: |
| 128 | 1 | 1024 | 66.12 | 65.15 | 1.208 |
| 128 | 1 | 8192 | 287.86 | 289.04 | 1.019 |
| 128 | 1 | 32768 | 4107.87 | 4134.57 | 1.012 |
| 128 | 4 | 1024 | 60.51 | 60.33 | 1.232 |
| 128 | 4 | 8192 | 295.33 | 306.01 | 1.144 |
| 128 | 4 | 32768 | 4111.98 | 4138.07 | 1.013 |
| 192 | 1 | 1024 | 72.95 | 73.51 | 1.078 |
| 192 | 1 | 8192 | 376.78 | 377.48 | 0.967 |
| 192 | 1 | 32768 | 5863.07 | 5880.85 | 1.027 |
| 192 | 4 | 1024 | 72.33 | 67.94 | 1.077 |
| 192 | 4 | 8192 | 369.08 | 374.83 | 1.059 |
| 192 | 4 | 32768 | 5814.32 | 5828.01 | 1.028 |

The first pass showed a d128 GQA4 8K slowdown. Follow-up used 500 warmups,
100 launches and 7 repeats on both 8K GQA4 dimensions. The selected/fallback
objects were independently compiled and relinked into the same host wrappers;
code-object inclusion and owning source/extension hashes were checked.

| Version | d128 8K GQA4 HIP µs | d192 8K GQA4 HIP µs | Histogram distance d128/d192 |
| --- | ---: | ---: | --- |
| Pre-fix | 285.92 | 374.92 | 1199/964 |
| Selected | 288.12 | 376.86 | 972/791 |
| Fallback | 284.70 | 375.68 | 1086/841 |

Selected is 0.8%/0.5% slower than pre-fix in these repeats, with overlapping
sample ranges. Fallback is 1.2%/0.3% faster than selected, also within overlapping
ranges, and has less close mnemonic counts. The selected form is retained
under the user's count-first priority. The first-pass 4% slowdown did not persist
in the longer repeats; no broad performance win is claimed. The selected native
extension was restored byte-for-byte after comparisons and verified against
manifest.json, so the workspace contains the tested selected build.

## Evidence and decisions

- Source/compiler fixes: task-1-report.md,task-2-report.md,task-3-report.md and
  task-4-waits-report.md. Fallback codegen/source is in fallback/.
- Exact loop bodies: owning/hip_d128/steady-loop.s and
  owning/hip_d192/steady-loop.s. Complete emitted ISA: owning/disassembly.s.
- Frozen tools and isolated source worktrees kept compiler experiments from
  changing source-worker A/B behavior. Their independent diffs were integrated
  sequentially and reverified jointly.
- No new approval gate was introduced: the approved design and explicit request
  covered these internal source/compiler fixes. Spec constraints prevented
  weakening the unproven CNDMASK hazard model.
- The scalar V-base form was selected for closer histogram agreement despite
  repeated address additions; a materially different timing result could favor
  the retained fallback. This tradeoff is visible in counts and raw samples.
