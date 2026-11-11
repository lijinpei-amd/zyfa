# SDD ledger — plan: docs/superpowers/plans/2026-11-11-hip-fp8-whole-kernel-fixes.md

Base ZYFA: 1b16627e0c50c8f6a10d547a4479158565b67b8b
Base LLVM: 18b60c731b48
Spec: docs/superpowers/specs/2026-11-10-hip-fp8-isa-match-design.md

| Scope | Shared interface / self-consistency | Ruling |
| --- | --- | --- |
| Tasks 1 and 2/3 | Compiler rebuild affects source comparisons | Frozen binaries and dependencies before LLVM rebuild |
| Tasks 2 and 3 | Same file, disjoint regions | Isolated worktrees; sequential integration |
| Task 1 | Reference hazard model differs | Authoritative evidence before relaxing hazards |
| Task 2 | Simplification can lose LDS alias identities | Preserve static allocations; exact loop check |
| Task 3 | Scale/index changes can affect correctness | Precision and bounds proof; numerical checks |
| Task 4 vs all | Joint scheduling can differ | Packaged integration checks |

Ruling: Parallel isolated implementers satisfy explicit user request and avoid shared-file conflicts — independent candidates, sequential integration — integration may need rework.
Ruling: No new approval gate; approved spec and explicit authorization cover internal fixes.

Tasks 1–3: ready. Task 4: pending review.

Task 1 dispatched: /root/fix_llvm_whole_kernel; compiler snapshot complete.
Task 2 dispatched: /root/fix_lds_addresses; candidate worktree lds.
Task 3 dispatched: /root/fix_tail_control_scales; candidate worktree tails.
Task 4 active: root mask scheduling candidate removes only per-element sched fences; no weakened hardware dependencies.
Frozen packaged baseline reproduced 5089/3529 whole and exact 1333/825 loops. Baseline representative GPU benchmark completed (8 cases).

Root candidate no-inner-fence: identical ISA; no accepted patch.
Root candidate batch4 mask: nops -192/-94 but replaces 144/72 e32 compares with e64, worsens exact histogram (1423/1124 distance vs1199/964). Rejected under encoding-suffix constraint. Retain authoritative LLVM VCC hazards.
Root paired-PV wait0 candidate: only s_waitcnt changed (-22/-10), exact loops. Testing three-fragment read-ahead for less drain/overlap.
LLVM truncate packaged: exact loops; distances1199→1194 and964→962, includes tail-block layout change.

Root pv-read-ahead compile invalidated: source edited while Clang mapped file caused lexer assertion. No compiler defect inferred. Helper now freezes source/header inputs per compile to prevent source provenance drift; rerun candidate after current compile completes.

Task3 review: spec pass, quality pass, optional duplicate-helper nit only. Candidate140316a integrated. Combined GPU/perf validation pending.
Task4 wait candidate4ed12dd: static packaged exact loop pass, all other retained counts unchanged; review agent /root/review_fragment_wait_fix running.

LLVM task1 commits8da6055648da +72e518a3f02a; source clean;21 focused lit passed,79 full-sweep failures proven baseline. Reviewer /root/review_llvm_scc_fix active.
Root wait full codegen58 passed; reviewer active.

Task4 wait review: spec/quality pass, P3 event-count documentation addressed with one-line source comment. Candidate4ed12dd integrated on top of accepted task3.

Task1 review: spec/quality pass; P3 explicit i16/i64 DAG alternative coverage noted; user-level widths and legal existing patterns covered, no blocking defect. Compiler72e518a3f02a accepted.
Root wait integrated commit c8b37a1 (one-line event-count comment added).

Task2 independent review passed spec and quality. Candidate10b4e00 integrated as5a2bf97. P3 source comment suggestion documented in task report/commit; all current callers uniform. Selected histogram-first candidate gets final GPU/perf check; fallback retained.
Combined candidate (isolated snapshot) exact loops1333/825; whole5042/3420; positive356/237, negative-616/-554; distances972/791. Resources unchanged. Packaged native extension build running.

Scoped fixes complete: task1 LLVM72e518a3f02a reviewed, task2 ZYFA5a2bf97 reviewed, task3 ZYFA67d3e64 reviewed, paired waits ZYFAc8b37a1 reviewed. Integrated native295 passed2 skipped; actual owning exact loops verified; final12 benchmark outputchecks and repeatedbaseline/selected/fallback outputchecks passed. Selected binary restored and verified byte-for-byte. Whole-kernel goal remains incomplete; counts972/791 differ and CNDMASK timing class unresolved. Retain ledger/workspace for continuation.
Final independent review approves scoped continuation, no blocking findings. Performance difference small/overlapping; selected histogram closer.
