# report.md — d192 follow-up: source-level pressure and the passes that raise it

(Saved by the coordinator from the subagent's returned text; the harness blocked the subagent from writing this file.)

2026-11-11. Investigation only. Everything was compile-only, run from the agent worktree or this output directory. The supplied LLVM was used read-only, with no rebuild; there were no GPU runs and no edits to the repo or to `benchmarks/results`.

## Summary

The source does mimic the reference in the strict loop. LLVM passes add the extra registers, and no single pass is the cause: seven redundant LICM instances move the same values, and MachineLICM, CSE/GVN and instruction selection add the rest.

**Q1 — source vs reference, loop pass-through.** Measured two ways:
- **Earliest SSA IR** (inline + SROA + constant-intrinsic lowering), estimating register units from IR types: HIP passes 47 SGPR / 2 VGPR through the loop and keeps 15 / 38 live loop invariants. The reference is 48 / 2 and 17 / 40. The uniformity rule matches LLVM's analysis on all 4,645 divergent values of the final IR.
- **Final ISA with all hoisting disabled** (all 7 IR LICM runs and both early MachineLICM runs skipped): 63 SGPR / 149 VGPR live at the loop header, 87 SGPRs total, no spill. Production is 87 / 166 and the reference 68 / 142. Diagnostic only: the strict loop grows from 825 to 925 retained instructions.

| Value (registers) | Source site | Reference | Source mimics ref? | Moving pass | Units |
|---|---|---|---|---|---|
| LDS constants for the inline asm (s16, s82…s97) | `fp8_native.hip:212/236`, at use | literal operand | yes | instruction selection materializes them, early MachineLICM #1 hoists | +11 S |
| Group-0 offsets incl. spilled `k_ss<<7` | `:222/:246` via `:1753` | `s_mul` temporaries | yes | pre-link late LICM; later LICMs re-hoist | +5 S (+12 rematerialized) |
| `k_ss<<8`, `v_ss<<7` | `:1694-95` | per-pass recompute | yes | pre-link LICM #1 | +2 S |
| head×stride products, `o_ss<<2` | `set_pass`, output code | recompute from raw args | yes | pre-link late LICM | +6 S (−4 raw args) |
| `n_keys` products, lse==null | `set_pass` | recompute | yes | pre-link GVN reuses the entry copy | +5 S |
| group==0 flag | `if (group == 0)` | `s_cmp` at use | yes | LICM #2, then instruction selection + SIFixSGPRCopies make a 64-bit mask | +1 S |
| 0.125 threshold | literal | literal | yes | early MachineLICM; SIFoldOperands can't fold it because `-vop3-literal` is off | +1 S |
| K descriptor duplicate | one `kr` phi | one | yes | AMDGPUCodeGenPrepare splits the phi, then instruction selection, MachineCSE, coalescer (inferred) | +5 S |
| 12 epilogue addresses + 1 | output code `:1259-91` | recomputed in epilogue | yes | pre-link late LICM | +13 V |
| Lane terms, mask lane term | entry, mask code | from `V_TID` | yes | EarlyCSE/GVN, LICM #2 | +4 V |
| 4 V-ring bases | `read_v`, at use | 1 base + offset | yes | early MachineLICM | +3 V |
| scale ×3, v_scale·vd | `:1527/:1529` (uniform) | SGPR | yes | instruction selection: uniform fmul goes to VALU | +4 V (−2 S) |
| qwarp, invariant_vbase | kept live by source | `S_W`/`V_TID` | no (by design) | — | ±1 |

**Measured attribution:**
- Skipping any one of the IR LICM, EarlyCSE or GVN runs leaves the ISA unchanged, because a later instance (lld LTO or the codegen LICM) redoes the move.
- Skipping all seven IR LICMs: 83 / 152 header live, 217 VGPRs, still one spill, loop 897.
- Skipping only **early MachineLICM #1 removes the spill (230 VGPRs) and keeps the loop at 825**. Diagnostic only; no production flag targets that one instance.
- `-amdgpu-codegenprepare-break-large-phis=false` saves 2 header SGPRs but produces 14 SGPR spills.

## Pipeline reproduction

`driver_jobs.sh` prints the production `setup.py` compile as jobs. The device compile uses the new offload driver:

1. `clang -cc1 -O3 -emit-llvm-bc -flto=full`: the LTO pre-link pipeline.
2. `llvm-offload-binary`.
3. `clang-linker-wrapper`, which runs `clang`, which runs `ld.lld -plugin-opt=O3 --lto-CGO3 -plugin-opt=-vectorize-slp=0` with the `-mllvm` flags. This is full LTO (`lto<O3>`) plus codegen.

Reproduction checks:

| Run | Result |
|---|---|
| Real wrapper (`run_wrapper.py`) on the pre-link bitcode | d192 ISA identical to `owning/disassembly.s` (3898 instructions) |
| The extracted lld command (`run_lld.py`) | identical |
| `llc` on `0.5.precodegen.bc` | identical |
| `opt -passes=lto<O3>` simulation | **not** identical, so it was not used |

LTO discards value names unless `--save-temps` is set; with it, names are kept and the ISA is still identical.

## Metrics

**Steady loop.** The loop is the strongly connected component containing block `stage0` once blocks named `tail*` are removed. This handles the four-entry irreducible cycle. The same rule works for IR and for machine code.

**IR metric (`ir_metric.py`).** SSA liveness. For each value:
- **pass-through:** defined outside the loop, live at its entry, unused inside it;
- **invariant:** defined outside, used inside;
- **loop max:** the largest live set at any instruction in the loop.

Units come from the IR type. Vectors count only the lanes read after the loop; uniform i1 = 1, divergent i1 = 2. Uniform vs divergent comes from a local propagation rule, which matches LLVM's `print<uniformity>` exactly on the final IR (4,645 / 4,645 divergent values). IR units are estimates.

**Machine-code metric (`mir_metric.py`).** Lane-accurate liveness on virtual registers, intersected with may-def. On the pre-greedy MIR its loop max of S 102 / V 218 equals `amdgpu-print-rp` exactly.

**Final-ISA metric.** The isa_liveness tool from the main report (all registers live at the strict-loop header; pass-through = not touched in the loop).

## Q1 — does the source mimic the reference?

Earliest SSA IR = frontend output with `-disable-llvm-passes`, then `always-inline, cgscc(inline), sroa, lower-constant-intrinsics`. The constant-intrinsic lowering is needed to resolve `__builtin_constant_p` in `Lds::key`.

| | Pass-through S/V | Invariant S/V |
|---|---|---|
| HIP source | 47 / 2 | 15 / 38 |
| Reference | 48 / 2 | 17 / 40 |

- **Source pass-through values:** raw kernargs (lanes read after the loop), qwarp, paired_head, k/v stride, v_scale, wave, group, n, base, job, jobdata, lh, oh, pass, q_start, qx_saved. Only 2 are VGPRs: tid and invariant_vbase.
- **Source invariants:** scale, dma_base, k/v step, fm, kr, vr, k/v max, klane×3, k/v offsets, sel (8), Q (24).
- **End-to-end check:** with all hoisting disabled (the `x_nohoist2` experiment) the final ISA has header live S 63 / V 149, pass-through S 46 / V 8, SGPR count 87 and no spill. The reference is 68 / 142 and 48 / 2.

**Verdict:** the source computes every HIP-only value per pass or at use, as the reference does. The compiler moved them. The exceptions are qwarp and invariant_vbase, which the source keeps live by design at about reference cost.

The per-value table is in `q1_value_table.csv` and in the summary above.

## Q2 — per-pass trajectory

The traces are `trace_prelink.csv`, `trace_lto.csv` (LTO plus codegen) and the corresponding `.moves.txt` files, which list which values entered or left each set.

| Stage | Pass | pass S/V | inv S/V | loop max S/V | Values moved |
|---|---|---|---|---|---|
| — | source SSA | 47/2 | 15/38 | — | — |
| pre-link | EarlyCSE (after inlining) | 66/15 | 17/40 | — | lane&63, lane&31 CSE'd to entry |
| pre-link | LICM #1 (7832) | — | — | — | k_ss<<8, v_ss<<7 |
| pre-link | LICM #2 (7834) | 92/83 | 15/106 | — | group==0 icmp, mask lane term ×6, O-zero splats, V bases |
| pre-link | GVN (7974) | 54/9 | 31/40 | — | n_keys>>6, n_keys·k_ss, n_keys·v_ss, lse==null, lane terms |
| pre-link | **late LICM (7989)** | **194/29** | **31/147** | 231/301 | group-0 offsets incl. k_ss<<7, head products, o_ss<<2, 12 epilogue addresses, LDS-difference terms |
| LTO | GVN | 67/26 | — | — | merges the 4 transition copies of each hoisted value |
| codegen IR | legacy LICM (196) + GVN, then CodeGenPrepare | 71/43 | 33/43 | — | CodeGenPrepare sinks address GEPs |
| machine code | instruction selection | 73/43 | 33/43 | 127/261 | — |
| machine code | SIFixSGPRCopies | 72/44 | 16/60 | — | COPY $scc → `S_CSELECT_B64` masks; uniform fmul in VALU |
| machine code | **early MachineLICM #1** | **118/45** | **42/60** | 179/280 | `S_MOV_B32` constants for the inline asm and the 0.125 threshold; V-ring bases |
| machine code | MachineCSE | 122/48 | — | — | word3 of the K descriptor taken from the entry copy |
| machine code | peephole, dead-mi | 114/24 | 40/46 | — | — |
| machine code | **SIFoldOperands** | **85/21** | 37/46 | 128/264 | folds most hoisted immediates (−29) |
| machine code | detect-dead-lanes | 75/21 | 28/46 | 109/264 | — |
| machine code | register coalescer | 68/20 | 28/46 | 102/218 | — |
| machine code | greedy | 55/20 | — | — | 12 rematerializations, 1 spill |
| final ISA | — | 56/21 | — | 90/216 | reference 48/2, 71/191 |

IR rows are estimates; machine-code rows are exact 32-bit lanes and match LLVM's own pressure printer before allocation (102 / 218).

**Origin of specific structures:**
- **K descriptor duplicate:** amdgpu-codegenprepare break-large-phis splits the `<4 x i32>` `kr` phi; instruction selection rebuilds it with REG_SEQUENCE plus an INSERT_SUBREG of word3 per use; MachineCSE takes word3 from the entry descriptor; the coalescer keeps two copies. The last step is inferred.
- **64-bit flag masks:** a cross-block uniform i1 is exported as an `sreg_64` copy of SCC, and SIFixSGPRCopies rewrites it to `S_CSELECT_B64 -1, 0`.
- **Threshold SGPR:** SIFoldOperands can't fold the literal into `V_CMP_GT_F32_e64` because the build passes `-vop3-literal`.

## Causal experiments

Final-ISA results; the full list is in `exp_summary.csv`. "Loop" is the retained strict-loop instruction count (825 in production).

| Configuration | Header S/V | Pass S/V | SGPR spills | VGPRs | Loop |
|---|---|---|---|---|---|
| baseline | 87/166 | 56/21 | 1 | 231 | 825 |
| any single IR LICM / GVN / EarlyCSE / MachineCSE run skipped | unchanged | unchanged | 1 | 231 | 825 |
| all 6 pre-link and LTO IR LICMs skipped | 85/166 | 54/21 | 1 | 231 | 825 |
| all 7 IR LICMs skipped (incl. codegen 196) | 83/152 | 52/10 | 1 | 217 | 897 |
| early MachineLICM #1 skipped | 86/165 | 55/20 | **0** | 230 | 825 |
| both early MachineLICM runs skipped | 80/164 | 63/19 | 0 | 230 | 857 |
| all 7 IR LICMs + both early MachineLICMs skipped | 63/149 | 46/8 | 0 | 214 | 925 |
| `break-large-phis=false` | 85/166 | 54/21 | 14 | 231 | 825 |

Skipping post-RA machinelicm has no effect.

## Secondary: the O-clear SGPR peak (112 before allocation) — inferred

LICM #2 hoists the `<16 x float>` zero splats. Instruction selection then materializes the uniform zero as an SGPR_512 tuple (15 extra lanes in the dispatch blocks) plus a copy to VGPRs, and lane 0 is shared with the inline-asm zero.

## Measured vs inferred

- **Measured:** pipeline equivalence, traces, value moves, skip experiments, and the machine-code metric's agreement with LLVM's own pressure printer.
- **Inferred:** IR unit estimates (including a 602-unit spike at the codegen GVN dump, which the machine code right after selection doesn't show: 43 lanes); the coalescer step of the duplicate descriptor; the O-clear attribution; source line mapping through value names.
- **Not verified:** any GPU run; any fix.

## Files

All under `followup-passes/`:
- **Tools:** `pipeline.py`, `run_lld.py`, `run_wrapper.py`, `driver_jobs.sh`, `ir_metric.py`, `mir_metric.py`, `trace.py`, `summarize_trace.py`, `dump_at.py`, `bisect_exp.py`, `run_all_exps*.sh`, `passthrough_list.py`, `check_divergence.py`, `same_func.py`.
- **Data:** `src_ssa.metric.txt`, `trace_*.csv`, `trace_*.moves.txt`, `exp_*/measure.json`, `exp_summary.csv`, `q1_value_table.csv`.
- **Dumps:** `dumps/*.gz` (pass dumps and opt-bisect index lists).
