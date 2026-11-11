# SDD ledger — plan: docs/superpowers/plans/2026-11-11-hip-fp8-vector-fixes.md

Baseline: `73e75dc`, branch `2026-11-11-hip-fp8-isa-match`.

| Scan | Finding |
|---|---|
| Task 1 internal | Runtime address regression and helper reuse agree; constant-slot schedule is preserved. |
| Task 2 internal | MAD selection needs both a compiler-visible bound and relaxed product anchor; native launcher enforces the bound. |
| Task 1 / Task 2 | Both touch native source and codegen tests in distinct regions. Separate worktrees, sequential integration, and disjoint test insertion points prevent mutation conflicts. |
| Integration | Current linked object/source hashes match the recorded owning capture; GPU commands require supplemental device GID 993. |

Ruling: Execute the independent source candidates concurrently in separate worktrees — developer delegation instruction and no shared mutable source/compiler state — integrated effects will be verified on the final fat object.

Ruling: The user's "fix 1 and 2" selects the concrete remedies already investigated under the approved ISA design — no further design/permission round is needed.

Task 1 implementer: `/root/implement_v_address`, detached candidate `build/vector-fixes-20261111/v-address`.
Task 2 implementer: `/root/implement_setup_mad`, detached candidate `build/vector-fixes-20261111/mad`.
Baseline object/source/extension saved under `build/vector-fixes-20261111/evidence`; representative baseline GPU timings are running before any root source mutation.

Task 1: complete (candidate commit `80bb843`; review spec PASS / quality APPROVE, no findings). Integrated into root by cherry-pick. Candidate codegen 63 passed and static tests 12 passed; fat-object changes are exactly -42/-18 scalar adds and -42/-18 ADD3s, with identical metadata and strict loops. Final combined numerical/timing checks remain Task 3.

Task 2 review identified current packaged MAD count failures after ordinary multiply/assume attempts (d1283+d1922 U24s, remaining V sites use full-width MAD). Approval withheld; generated-ISA regressions caught the failures.

Ruling: Express only setup products with the existing amdgcn unsigned-24-bit multiply intrinsic plus addition — ordinary source bounds do not reliably survive selection, and the reduced intrinsic case demonstrates single-MAD fusion — mathematical equivalence relies on the enforced stride bound and proven setup key domain, which are unchanged. Query/output products stay full-width.

Task 2: complete (candidate commit `f1bf42a`; review spec PASS / quality APPROVE, no open findings). Final standard HIP `__umul24` expression preserves width by omitting redundant compiler assumes. Host guards and documented native contract unchanged. Actual fat object has4/3 setup MAD_U24,7/7 query/output MUL_LO, exact1333/825 loops, identical resources/memory/float counts; +1 block-alignment NOP each outside loops. Integrated by cherry-pick into root.

Task 3 runtime verification: integrated extension rebuild succeeded; fresh extracted payload is present exactly once in the linked extension; exact steady loops, six shared V sites, MAD4/3 and full-width products7/7 passed. Whole retained5042->4955 and3420->3382. Full suite300passed2skipped in180.56s, fresh guard22cases included. All12before/afterHIP output+LSE pairs bitwise equal; timing medians -3.22%..+2.73%, ranges overlap11/12. Broad review pending final verdict; no consistent performance improvement claimed.

Task 3 final review: spec PASS / quality APPROVE, no open findings. Reporting polish corrected before/after HIP equality scope and spacing. Source and verification complete; final artifacts committed and pushed to the already-authorized branch by controller.
