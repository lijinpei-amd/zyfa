# Exact LLVM ISA matching for FP8 attention

The user's acceptance criteria are identical instruction counts per mnemonic,
then identical instruction sequence, first for both four-stage steady loops,
then for both whole kernels. Register spills/reloads and register copies are
excluded. The existing HIP implementation remains the starting point, and the
assembly generator remains the reference. No large instruction inline assembly
or assembly used to control register allocation is permitted.

Compare actual code objects with the same llvm-objdump, including waits, nops,
branches, memory operations and ALU instructions. Preserve mnemonic encoding
suffixes. Initially exclude scratch operations and register-to-register moves;
retain literal initialization and cross-lane operations. Record every excluded
instruction, so allocator artifacts cannot conceal algorithm differences.

Use source changes and existing LLVM intrinsics first. The supplied assertions
build at development/workspace/01/llvm-project can diagnose and fix missing
alias information, instruction selection and scheduling preservation. Compiler
changes must preserve memory hazards and be supported by reduced regressions.
Do not bypass LLVM emission with the reference assembly or patch output text.

Maintain the approved tiling, numerical behavior and four-slot LDS pipeline.
The complete-kernel phase also must restore the assembly's masked-tail parity,
cross-pass ring rotation, next-pass prefetch and epilogue overlap. Numerical
tests and GPU execution remain required alongside the ISA comparisons.

Report counts and the first sequence mismatch after each change. A passing
MFMA subset or a matching total instruction count does not satisfy the goal.
