# HIP FP8 runtime V reuse and setup MAD fusion

The integrated source fixes reuse one complete V address per tail PV site and
select one MAD_U24 at every K/V setup site. Both strict steady loops retain the
assembly backend's exact mnemonic counts and order. Whole-kernel reference
counts/order remain different.

Source commits: `5822b92` (V reuse), `f097bea` (setup U24 fusion), based on
`73e75dc`. The supplied LLVM checkout/build was reused without modifications.
`owning/manifest.json` and `summary.json` record source, native object, code
object, and linked-extension hashes. The exact extracted native fatbin occurs
once in the linked extension; the saved baseline extension similarly contains
the exact preceding owning fatbin.

## Linked instruction changes

Counts exclude scratch, register-source copies, and inventoried SGPR lane
spills; retain initialization, waits, NOPs, branches, and encoding suffixes.

| Measurement | d128 before -> after | d192 before -> after |
|---|---:|---:|
| Strict steady retained instructions | 1333 -> 1333 | 825 -> 825 |
| Whole retained instructions | 5042 -> 4955 (-87) | 3420 -> 3382 (-38) |
| Runtime V scalar-base adds | 48 -> 6 | 24 -> 6 |
| Whole scalar ADDs | 295 -> 253 | 220 -> 202 |
| Runtime V ADD3s | 48 -> 6 | 24 -> 6 |
| Setup MAD_U24s | 0 -> 4 | 0 -> 3 |
| Whole MUL_LOs | 11 -> 7 | 10 -> 7 |
| Whole vector ADDs | 65 -> 61 | 50 -> 47 |
| Whole NOPs | 307 -> 308 | 182 -> 183 |

These are the only retained mnemonic changes. The extra NOPs are block
alignment outside the strict loops. Memory, float, MFMA, barrier, and wait
counts remain unchanged. `whole-mnemonics.csv` lists every mnemonic against
the assembly backend and preceding HIP capture, including both delta signs.

V reuse removes 42/18 repeated scalar-plus-vector address pairs across six
static tail PV sites. Each site's 32/16 transposed DS reads retain the same
offset order and share one address definition. Six static constructions remain;
the reference uses four dispatch-shared updates and an entry-precomputed base.

The setup equations use HIP `__umul24(key, stride) + chunk`, with product-only
anchors removed and chunk/final-offset anchors retained. The fixed 512-thread
launch and bounded V fields establish keys below 128/64. Native launchers reject
unsigned K/V byte strides >=2^24 before enqueue; public nonempty wrapper inputs
already satisfy this domain. Query/output products remain full-width. The
ordinary-multiply and assume variants failed the ISA regressions; assumptions
also erased the HIP builtin's masks during optimization. The final source
preserves the builtin's width information without those redundant assumptions.

Positive whole-kernel mnemonic deltas fall 356 -> 313 and 237 -> 219, while negative
sums change -616 -> -660 and -554 -> -574. Absolute per-mnemonic differences are
972 -> 973 and 791 -> 793: operation sharing and substitutions still prevent exact
whole-kernel histogram identity. Positive vector deltas are now 34/38. This is
an implementation of the two requested fixes, not a claim that the complete
ISA-matching objective has been achieved.

## Resources and runtime checks

| Resource, unchanged | d128 | d192 |
|---|---:|---:|
| LDS bytes/block | 163840 | 131072 |
| VGPRs / SGPRs | 256 / 106 | 231 / 106 |
| Private segment bytes/lane | 64 | 0 |
| Reported VGPR / SGPR spills | 23 / 14 | 0 / 1 |

The existing d128 spills remain. No allocation workaround or large inline
assembly was introduced. Native argument size/alignment remains 152/8.

The same-process timing comparison loaded the saved baseline and current
extensions independently, checked their distinct binary payloads, and timed
before/after/assembly in alternating order. It used BSHD, causal output+LSE,
dimensions 128/192, MHA/GQA4, lengths 256/1024/8192, 200 warmups, 100 timed calls,
and 5 repeats. Before and after HIP output and LSE are bitwise-identical in all
12 cases; assembly is timed separately. Sampled FP64 relative RMS stays below
0.00602. Median changes range from -3.22% to +2.73%, with overlapping
before/after sample ranges in 11 of 12 cases. No consistent
overall throughput improvement is established by this run.

The full project suite passed **300 tests, with 2 skipped**, in 180.56 seconds
after integration, including a freshly built 22-case native stride-guard
executable. The complete result is in `project-tests.log`. Task-level red/green,
boundary tests, code-object audits, and independent reviews are under `tasks/`.

## Reproduction

```sh
source build/env.sh
export ROCM_HOME="$ROCM_PATH" HIP_PATH="$ROCM_PATH"
export ZYFA_NATIVE_LLVM_ROOT=/home/jinpli/workspace/home/jinpli/development/workspace/01/llvm-project
export ZYFA_LLVM_ROOT="$ZYFA_NATIVE_LLVM_ROOT"
python setup.py build_ext --inplace
python benchmarks/inspect_hip.py --output benchmarks/results/hip_native/isa_match/vector_fixes_20261111/owning
python benchmarks/results/hip_native/isa_match/vector_fixes_20261111/verify-integrated.py
python -m pytest -q tests
```

GPU execution requires the process to have the current device group. This run
used `sudo -n -u jinpli -g '#993'` for tests and timings. Timing replay also needs
an extension built from the baseline source, passed to
`benchmark-before-after.py --baseline-extension PATH --output DIR`.

Assembly: `owning/disassembly.s` is the complete packaged native ISA;
`owning/hip_d{128,192}/steady-loop.s` are its strict loop bodies. Inputs and
copies/spill exclusions are preserved in the owning comparison JSONs.
