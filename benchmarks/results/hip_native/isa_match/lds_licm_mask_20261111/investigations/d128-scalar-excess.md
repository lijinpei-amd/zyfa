# d128 scalar (`s_*`) mnemonic excess: investigation report

(Saved by the coordinator from the subagent's returned text; the harness blocked the subagent from writing this file.)

Investigation only, compile-only experiments. No fix committed, no LLVM edit or rebuild, no GPU run, `benchmarks/results/` and the extension untouched. Source: `2026-11-11-hip-fp8-isa-match` @ `4dd38ce` (executable source `ce02af2`) in an isolated worktree. LLVM `72e518a3f02a` (Debug+asserts) used read-only. Root: `/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261111/d128-scalar-excess/`.

## Summary

- **Headline holds:** +272 positive, +147 without `s_nop`, −180 net. A rebuild reproduces the owning ISA exactly.
- **Excess by region (net `s_*`):** masked tail MM +134, first QK of a pass +44, entry +21, PV-only tail +12, strict loop 0, group-0 loads/dispatch −53, last tile and next-pass transitions −336. HIP spends about 103 scalar instructions per transition copy against the reference's 187, because LLVM hoists the invariants into the entry.
- **Substitution vs added:** 82 units are the same work under a different mnemonic (`s_or_b32` 23 for `s_add_u32`, `s_and_b64` 15 for `s_cmp_eq`, then `s_not`, `s_addk`, `s_xor`, `s_bfe`, compares, `vccz`). 190 are added: `s_nop` 125, `s_waitcnt` 16, literal moves 28, lane-mask predicates 18, compares 3. Without `s_nop` that is 82 substitution plus 65 added.
- **`s_nop` (+125):**
  - +192 is LLVM's 2-wait V_CMP→V_CNDMASK VCC rule on the three masked QK sites. That rule is protected; the reference skips these nops on an unproven interlock assumption.
  - +35 are HIP-only: register-allocator copies 12, SGPR lane-spill reload into a buffer offset 9, early row-sum use 8, separate permlane schedule points 4, spill store 2.
  - −101 is where HIP needs fewer: M0 waits 51, the generator's mask padding 42, others 8.
  - There are no alignment pads today, but code-size changes can add up to 5 in d128.
- **`s_waitcnt` (+16):** 13 are reload waits caused by VGPR spills, 2 come from the descale null-check branches, 1 is the explicit group-0 `wait_dma` (source line 1755).
- **Predicates and prior leads:** the lane masks come from uniform booleans that cross blocks. LLVM hoists `lse == null` and `group == 0` out of the job loop, and reuses the merged next-pass condition as the `pass == 0` test. AMDGPU never sinks these compares into their user blocks. Prior leads are confirmed for `s_or_b32`, `s_and_b64`, the compound condition and `vccz`. The parity masks, `s_andn2`, and `s_mov_b64` are gone in d128; the V-slot complement is now `s_xor_b32`.
- **Link to the spill investigation:** the 14 SGPR spills are all entry-hoisted invariants. About 18 constants hoisted by LLVM's early loop-invariant code motion, including the 14 strict-loop M0 literals, stay resident in SGPRs. Disabling that hoisting (diagnostic only) takes SGPR spills 14→0 and VGPR spills 23→12, but it adds 40 `s_mov` to the strict loop.

## 0. Method and verification
- Policy as in `verify-integrated.py`: scratch, register-source MOVs and `v_readlane/v_writelane` are excluded. Result: s_ +272 / +147 without nop / −452 / −180; retained 4929 vs 5302.
- Rebuilding with the setup.py flags gives `.text` identical to owning for both dimensions (`scripts/check_identity.py`).
- Production uses the new offload driver: device `-flto=full` bitcode, then `clang-linker-wrapper`/lld LTO codegen. `--cuda-device-only -S` does not match production; that listing is kept only as `builds/baseline/native-nonLTO-NOT-production.s`. Instead `-save-temps` keeps `*.img.0.5.precodegen.bc`, and `llc -O3 -mcpu=gfx950` with the setup.py `-mllvm` flags reproduces all 5730/3898 instructions exactly. That listing supplies LLVM block numbers and IR block names (`scripts/compile.sh`, `llc_precodegen.sh`, `hip_regions.py`).
- Reference regions come from regenerating `csrc/asm/d128.py` with labels, aligned 1:1 with `baseline/assembly_d128.s` (`scripts/ref_regions.py`).
- Regions: entry · pass_start_qk0 · group0_loads_dispatch · steady_strict · steady_other · tail_heads · tail_pvo · tail_masked_mm · last_transition · output_epilogue (pass_top) · final_output.
- No `.p2align` padding in d128 today: none of the 5 `.p2align 5,,4` GFX950 fetch-window sites pads. d192 has 1.

## 1. Region map
Full table: `data/region-table.csv`. Totals: `scripts/region_totals.py`. Cells are ref/hip and show only differences. The strict loop and stage-entry tests are identical.

| mnemonic | Δ | entry | qk0 | g0+disp | tail heads | pvo | masked MM | last/transition | pass_top | final |
|---|---:|---|---|---|---|---|---|---|---|---|
| s_nop | +125 | 11/4 | 21/69 | 12/2 | 8/6 | 8/6 | 40/158 | 48/28 | | |
| s_mov_b32 | +24 | 11/25 | 1/0 | 2/3 | | | | 16/26 | | |
| s_or_b32 | +23 | 0/3 | | 0/4 | | | | 0/16 | | |
| s_and_b64 | +19 | 0/1 | | 0/1 | | | | 0/16 | | 0/1 |
| s_waitcnt | +16 | 3/5 | | 1/2 | | | 18/20 | 18/22 | 8/9 | 9/15 |
| s_cselect_b64 | +10 | 0/2 | | | | | | 0/8 | | |
| s_not_b32 | +9 | 0/1 | | | | | | 0/8 | | |
| s_addk_i32 | +7 | 0/1 | | | | | 0/2 | 0/4 | | |
| s_xor_b32 | +7 | | | 0/1 | 0/2 | 0/2 | 0/2 | | | |
| s_cmp_ge_u32 | +6 | | | 0/2 | 6/8 | | | 4/6 | | |
| s_bfe_u32 | +5 | 0/1 | | | | | | 0/4 | | |
| s_cmp_lg_u32 | +5 | | | 0/1 | | | | 0/4 | | |
| s_movk_i32 | +4 | 0/4 | | | | | | | | |
| s_cmp_lt_u32 | +4 | 0/1 | | 0/3 | 2/0 | | | 2/4 | | |
| s_or_b64 | +4 | | | | | | | 0/4 | | |
| s_cmp_lt_i32 | +2 | | | 0/2 | | | | | | |
| s_cbranch_vccz | +2 | | | | | | 0/2 | | | |
| s_add_u32 | −155 | 19/15 | 1/0 | 45/18 | 27/26 | 14/20 | 16/22 | 246/114 | 1/0 | 1/0 |
| s_mul_i32 | −114 | 10/6 | 1/0 | 24/11 | | | | 124/28 | | |
| s_and_b32 | −71 | 2/0 | 0/1 | 12/2 | 6/2 | | 0/2 | 66/10 | 1/0 | 1/0 |
| s_lshl_b32 | −39 | 6/13 | 4/1 | 12/3 | 6/8 | 0/6 | 2/10 | 70/24 | 2/0 | 2/0 |
| s_cmp_eq_u32 | −25 | | | 4/1 | | | 2/0 | 24/6 | | 2/0 |

Scalar totals ref/hip: entry 109/130, qk0 69/113, g0+dispatch 126/73, steady 149/149, tail heads 81/80, pvo 54/66, masked MM 160/294, transitions 749/413 (about 187 vs 103 per copy), pass_top 17/16, final 24/24.

The negatives come from the reference recomputing per pass:
- `slot_m0`/`tile_loads_full` (d128.py:295–325): 2 `s_mul`, 3–4 `s_add`, `s_and` and `s_lshl` per round, 12 rounds per site, 5 sites.
- `pass_params` (173–220) at every transition.

## 2. Per-row mapping
Per-occurrence data: `data/row-map.csv` (PC, operands, LLVM block, IR name, region, cause, class, owning layer, reference recipe), counts in `data/cause-summary.csv`, reference occurrences in `data/ref-scalar-occurrences.tsv`, raw side-by-side dumps in `data/recipes-<region>.txt`. HIP line numbers are for `ce02af2`.

- **`s_mov_b32` +24, `s_movk_i32` +4**
  - Entry 0x1fc8–0x204c: 14 LDS literals (0x2000…0x1e000; 0x10000 sits in s48). Each is read once by the strict loop's `s_add_u32 m0, s88, sK`. Cause: the inline-asm `"s"` operand at 212/236, which LLVM's early loop-invariant code motion hoists. Reference: `s_add_u32 m0, s83/s84, <literal>`.
  - Constants in SGPRs: −8.0, 0.125, −inf (reference uses a VGPR or a VOPC literal). 0x20000 and 0x60 are needed because VOP3 literals are disabled (`-vop3-literal`).
  - Transitions: 18 boolean literals (have_next/pass, including edge blocks bb163–165) against the reference's 8 `pp` literals. The reference sets `S_DONE` with one `s_cselect_b32` (d128.py:240).
  - Group-0 dispatch: `k=0` is duplicated into three arms.
- **`s_or_b32` +23:** DMA M0 = `s88 | slot/chunk`. Entry 3, group-0 prologue 4, 4 per transition. Comes from the non-ByteOffset `load_k_chunk`/`load_v_chunk` path (209/233) via `load_first_tiles(_group0)` (1666–1673). The reference uses `s_add_u32` everywhere.
- **`s_and_b64` +19 / `s_cselect_b64` +10 / `s_or_b64` +4:**
  - Entry: lse==null mask (0x1e38/0x1e54) and group==0 mask (0x1f30).
  - Per transition, the compound test: `s_cmp_lg_u32 pass,0; s_cselect_b64; s_not; s_add; s_cmp_eq_u32; s_cselect_b64; s_or_b64; s_and_b64 exec` (e.g. 0x9174–0x9190).
  - Also per transition: qblk `s_and_b64 s[18:19],exec` (0x91d0), group `s_and_b64 s[10:11],exec` (0x91f8), lse `s_and_b64` (0x93a8). One more group test at final 0xa768.
  - Source: 1849–1850 and copies at 1881, 1954, 1986; 1658; 1653–1654; 1751, 1862, 2024.
  - Reference: `s_cmp_eq_u32 pp,0; s_cbranch_scc0; s_sub; s_sub; s_cmp_eq_u32; s_cbranch_scc0` (advance, 222–241), plus `s_cmp_eq_u32 s58,0`, plus `s_cmp_eq_u64 lse,0; s_cselect_b32 off,0,off`.
- **`s_not_b32` +9:** `num_q + ~qx` (1658, 1850). Reference: two `s_sub_u32`.
- **`s_addk_i32` +7:** `n` rounding uses +0x60 instead of +127 (5 sites). `(k<<7)+0x80` is used for tile=k+1 (masked MM, 2). Reference: `s_add_u32`.
- **`s_bfe_u32` +5:** wave&3 taken from `readfirstlane(tid)` (1). `fm = bfe(x, 2, 25)` (4). Reference: `s_and_b32` and `s_lshr_b32`.
- **`s_xor_b32` +7:** V prefetch slot `(cur+2)&3` computed as `cur^2` (1437, 1803, 1820, 1908, 1925). Reference: `s_add`+`s_and`, so HIP saves one instruction per site.
- **Compares:**
  - 4 GE-for-LT come from the local `-amdgpu-prefer-scc1-branches` peephole: k>=fm at 0x5864/0x7020, fm>=k at 0x87c4/0x8a90.
  - `n<2` replaces the reference's `s_cmpk_le_u32 n,1` (5 sites).
  - Group-0: n>=2, n>=3, n<4, plus duplicated n<3/n<4 at 0x2f58/0x2fcc.
  - Dispatch became a switch binary search: base<1, base<2, base!=0, base==2.
  - pass!=0 appears four times (`s_cmp_lg_u32`).
- **`s_cbranch_vccz` +2:** 0x67e8, 0x7fa4 (1479) branch on the live vote VCC. The reference uses `s_cmp_eq_u32 S_FLAG,0; s_cbranch_scc1`.

## 3. Substitution vs added (`data/substitution-vs-added.csv`)
- **Substitution, 82:** `s_or_b32` 23, `s_and_b64` 15, `s_not` 9, `s_addk` 7, `s_xor` 7, `s_cmp_ge` 6, `s_cmp_lg` 5, `s_bfe` 5, `s_cmp_lt_u32` 2, `s_cmp_lt_i32` 1, `vccz` 2.
- **Added, 190:** `s_nop` 125, `s_waitcnt` 16, `s_mov`/`s_movk` 28 (hoisted literals 20, boolean PHIs 10, k=0 1, minus 3 reference-only literals), predicate masks 18 (`s_cselect_b64` 10, `s_or_b64` 4, compound `s_and_b64` 4), compares 3 (2 tail-duplication, 1 switch).

## 4. `s_nop` and `s_waitcnt`
Per-nop classification: `data/nops.tsv`; per-region aggregation: `data/nop-attribution.csv`. HIP has 307, reference 182.

| cause | HIP | ref | Δ |
|---|---:|---:|---:|
| V_CMP→V_CNDMASK VCC 2-wait (LLVM `checkVALUHazards`; applies because local patch `5ee669114fb9` expands the inline-asm cndmask into a real `V_CNDMASK_B32_e64`). 16 per block × 4 blocks × 3 masked sites. The first per block (s_nop 3–7) also covers the MFMA wait. | 192 | 0 | +192 |
| `s_nop 15/3` before RA copies `v_mov_b64 v[64:127]←v[128:191]` (masked tail MM, 3 blocks × 2 sites) | 12 | 0 | +12 |
| 16×16 row-sum MFMA → immediate `l` update (masked MM `s_nop 3/5`, last-tile PV `s_nop 11`) | 8 | 0 | +8 |
| `v_readlane` spill reload → buffer soffset (`s_nop 4`, group-0 loads) | 9 | 0 | +9 |
| VALU copy → `permlane32_swap` (COMPUTE_STATS; the strict loop already matches) | 8 | 4 | +4 |
| `s_nop 0` between scratch stores of spilled P fragments | 2 | 0 | +2 |
| SALU M0 → LDS DMA (HIP interleaves SALU between them) | 49 | 100 | −51 |
| Reference mask-path padding (`s_nop 15/3`, NOP2 merges) | 0 | 42 | −42 |
| Reference descale readfirstlane pads and qk0 MFMA pads | 1 | 10 | −9 |
| Identical (strict loop, `pipeline_nop` in the epilogue) | 32 | 32 | 0 |

The reference's "VCC is interlocked" (`csrc/asm/common.py:197`) remains unproven per the VCC evidence document, so LLVM's rule is kept. Under that rule, nop-count parity is unreachable without unrelated nop changes.

`s_waitcnt` +16 (`data/waits.tsv`):
- +13: `vmcnt(0)` after scratch reloads. These are the Q lane offset ×4 in transitions; hoisted output LDS addresses ×1 in pass_top and ×6 in final; spilled P fragments ×2 in the masked MM.
- +2: descale null-check branches. InstCombine folds `qd*kd` into each branch, which adds an `lgkmcnt(0)` at 0x1b74 and 0x1ba0.
- +1: explicit `wait_dma()` at line 1755.

## 5. Predicates, LDS slots, job control: status of prior leads
- `s_or_b32` is all LDS address construction: confirmed, 23/23 M0 terms. All 57 sites (both kernels) carry `disjoint` with dead SCC at pre-emit (`data/pre-emit-or-flags.txt`).
- `s_and_b64` is EXEC predicate recovery: confirmed. Now group 6, lse 5, qblk 4, compound 4; the tail and V-ring parity masks are gone.
- `s_cselect_b64`: 6 rescale (these match the reference), 2 entry masks, 8 compound.
- Compound condition: confirmed and refined. The pre-codegen IR has `%or.cond = select i1 %pass_nonzero, i1 true, i1 %qx_eq` (merged by SimplifyCFG). It feeds the branch in `if.end12388`, and GVN reuses it as the `pass==0` qblk select in `prepare_last0`. That cross-block use forces a lane mask, so `-jump-is-expensive=false` (E7) changes nothing.
- `s_not_b32` is now only the 9 mirror sites; the V-slot complement became `s_xor 2`.
- `s_mov_b64` booleans: 0 in d128; they are now `s_mov_b32` 0/1 (+10). d192 still has 9 `s_mov_b64`.
- `s_andn2_b32` and the `s_bitcmp1_b32` excess are gone.
- `vccz`: confirmed.
- Compares: net +3; the GE forms come from the local prefer-scc1 peephole.
- Upstream root: `hasMultipleConditionRegisters()` returns true (AMDGPUISelLowering.h:425, whose FIXME names the uniform case), so CodeGenPrepare's `sinkCmpExpression` never sinks uniform compares.

## 6. Spill interaction
- **SGPR spills:** the 14 SGPR spills are v255 lanes 0–13, written in the entry. They hold qwarp, `n_keys>>7`, `head*l_sh2`, the lse mask (2 lanes), `kv_ss<<9/<<8/<<5/<<6/<<2`, the Q partial base (2) and the O partial base (2). Their 59 reloads include the 9 soffset nops.
- **Constants holding SGPRs:** about 18 constants hoisted by early MachineLICM stay in SGPRs for the whole kernel.
- **E8 evidence:** `-disable-machine-licm` takes SGPR spills 14→0, VGPR spills 23→12 and private memory 64→52 B. It also puts 40 `s_mov` into the strict loop, so it is not usable as a fix.
- **VGPR spills:** 13 waits and 2 nops are VGPR-spill reloads/stores. Source edits that raise VGPR pressure are harmful (E2).

## 7. Experiments
Sources are in `exp/`, diffs in `patches/`, objects in `builds/`, evaluations in `data/experiments.txt` and `data/exp-*.json` (full signed histogram for every mnemonic, strict loops, resources).
- **E1, permlane pairing:** d128 `s_nop` −4 only; strict loops exact; d192 and resources unchanged. Confirmed.
- **E2, deferring the `l` update:** `s_waitcnt` +4, `v_xor` +2, VGPR spills 23→41, private 64→104 B. Refuted.
- **E3, have_next select:** byte-identical ISA. Refuted.
- **E4, `"i"` operand:** lld reports "invalid operand in inline asm". The source-only route is infeasible.
- **E5, descale fake-use anchor:** `s_cmp_eq_u64` −2, `s_cbranch_scc0` −2, `s_waitcnt` −2, `s_mov_b32` +1, plus 2 alignment `s_nop 0` that vanish with `-amdgpu-loop-alignment=false`. d192 shows the same, with `s_nop` −1.
- **E6, alignment off:** d128 unchanged; d192 `s_nop` −1.
- **E7, `-jump-is-expensive=false`:** no change.
- **E8, `-disable-machine-licm`:** diagnostic only (see §6).

## 8. Ranked fix candidates

| # | Fix | Layer | Expected d128 delta | Risk | d192 |
|---|---|---|---|---|---|
| 1 | Rewrite disjoint `s_or_b32` as `s_add_u32` in the late peephole pass; all 57 sites carry the disjoint flag with dead SCC | LLVM | `s_or_b32` −23, `s_add_u32` +23 | very low; strict loops have no `s_or_b32` | −34/+34 |
| 2 | Recompute uniform compares in each using block instead of passing lane masks | LLVM | `s_and_b64` −19, `s_cselect_b64` −10, `s_or_b64` −4, `s_cmp_eq_u32` +10, `s_cmp_eq_u64` +4 | medium; must not touch the 6 rescale masks | larger gain |
| 3 | Let inline asm take the LDS address as an immediate, then change `"s"`→`"i"` at source lines 212/236 | LLVM + source | `s_mov_b32` −11..−12, `s_movk_i32` −3; likely removes the SGPR spills and their 9 nops | medium | same pattern |
| 4 | Pair the two permlane swaps in `FP8_COMPUTE_STATS` (E1) | source | `s_nop` −4, nothing else changes | minimal | no change |
| 5 | Fix the VGPR spills (with the spill agent) | LLVM/source | `s_waitcnt` −13, `s_nop` −2, possibly the 12 copy nops | depends on spill fix | — |
| 6 | Late peepholes for canonical forms (`num_q+~qx`, `s_addk`, `s_cmpk_le`, branch sense) | LLVM | about −30 positive, cost-neutral | low | similar |
| 7 | Descale fake-use anchor (E5), only together with #2; loop alignment off as a stabilizer | source + flag | `s_waitcnt` −2, `s_cmp_eq_u64` −2, `s_cbranch_scc0` −2, `s_mov_b32` +1 | alignment off loses GFX950 fetch alignment (needs timing) | same; −1 nop |

Details:
1. **Disjoint `S_OR_B32` → `S_ADD_U32`** as an opt-in late peephole in LLVM `SIPreEmitPeephole`. The same change for `V_OR_B32` would address the vector +24.
2. **Uniform cross-block i1 rematerialization** in LLVM (AMDGPU CodeGenPrepare-style sinking or duplication of uniform `icmp` and `select i1 a,true,b`, and remat of `pass==0`). Also about ±4 branches; frees the mask SGPRs.
3. **LDS-address inline-asm immediates** in LLVM (lower an LDS `GlobalAddress` `"i"` operand to its allocated address; let `expandSingleOpInlineAsm` accept an immediate src1), then `"s"`→`"i"` at 212/236. The strict-loop mnemonics stay the same.
4. **E1 source change** at 1377–1385: verified `s_nop` −4.
5. **VGPR spill fixes** (with the spill investigation).
6. **Cosmetic peepholes:** mirror as two `s_sub`, `s_addk`→`s_add_u32`, `s_cmpk_le`, branch sense, exact `s_bfe` cases.
7. **E5 together with #2** (makes `s_cmp_eq_u64` exact at 10), with loop alignment off as a stabilizer. The latter drops GFX950 fetch alignment, so it needs timing.
8. **Not recommended:** E2-style deferral, the have_next rewrites, removing the group-0 wait (a protected wait), dropping the VCC waits (protected).

## 9. Open
- Candidates 1–3, 5 and 6 are projections; no LLVM rebuild was allowed.
- The register-allocator decision behind the masked-MM copies is not traced.
- Counts are static.
- No runtime or numerical runs.
- d192 effects come from its CSV rows and E1/E5/E6/E8 only; no d192 per-occurrence map was built.

## 10. Files
- `scripts/`: common, compile, llc_precodegen, check_identity, ref_regions, hip_regions, rowmap, region_totals, show_region, nops, waits, annotate, literal_uses, alignment, evaluate, evaluate_all, driver_jobs.
- `data/`: region-table, region-summary, row-map, cause-summary, substitution-vs-added, occurrence TSVs, nops, nop-attribution, waits, `recipes-*.txt`, experiments.txt, `exp-*.json`, region JSONs, pre-emit-or-flags.
- `patches/`, `exp/`, `ref/` (labelled reference).
- `builds/` (objects, precodegen bitcode, labelled listings, `baseline-st/pre-emit.mir`).
