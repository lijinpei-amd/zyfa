# Register-pressure and interval structure: HIP (ac8512a) vs assembly reference

(Saved by the coordinator from the subagent's returned text; the harness blocked the subagent from writing this file.)

Compile-only. Run from a worktree copy at `ac8512a`; the production compile and a standalone `llc` run both reproduce the owning ISA exactly.

## Summary

**Same structure?** Not quite.
- **Inside the strict loop, nearly.** Both loops align 1:1 once copies are excluded (1333 / 825 instructions, 0 mismatches). Values written inside the loop match one for one, apart from lifetime trade-offs that net −1.1 (d128) and −0.3 (d192) VGPRs in HIP's favour. SGPRs differ by −1 (d128) and 0 (d192) at every point.
- **What's left is +8 VGPRs of long-lived values in both kernels.** d128: 6 pass-through + 2 loop invariants. d192: 7 pass-through + 1 invariant.
- **Outside the loop,** the same +8 shows up in every region, plus three local effects: S kept live through the PV-only tail tile (`pvo`), the 16-SGPR zero splat used to clear O, and allocation slack.

**Per-region maxima** (final ISA, CFG-aware): reference → HIP, with HIP pre-RA in parentheses. The reference has no pre-RA stage.

| Region | d128 VGPR | d128 SGPR | d192 VGPR | d192 SGPR |
|---|---|---|---|---|
| entry | 40→43 (43) | 64→58 | 44→50 (50) | 64→60 |
| prologue, first QK (unmasked / masked) | 135/136→139/139 (140) | 66/68→60/62 | 107/108→114/107 (115) | 67/69→62/63 |
| prologue, O clear | 175→179 (179) | 68→**81** | 142→149 (149) | 69→**83** |
| **strict loop** | **221→227 (227)** | 70→69 (69) | **191→199 (202)** | 71→71 (71) |
| masked tail | 225→224 (225) | 68→66 | 193→185 (191) | 68→69 |
| PV-only tail tile | 226→228 (**244**) | 67→65 | 176→183 (190) | 67→66 |
| last tile | 176→180 (180) | 68→66 | 146→152 (158) | 68→68 |
| transition | 129→130 | 69→68 | 122→126 | 69→71 |
| epilogue | 108→112 | 69→65 | 112→119 | 69→67 |

**Strict loop, per-point difference (HIP − reference):**

| | VGPR | Made up of | SGPR |
|---|---|---|---|
| d128 | +4…+10, mean +6.9 | pass-through +6, invariants +2, loop-written −4…+2 | −1 |
| d192 | +7…+8, mean +7.69 | pass-through +7, invariant +1, loop-written −1…0 | 0 |

**Remaining differences** (d128 / d192):

| # | Difference | Registers | Owner | Fix and result |
|---|---|---|---|---|
| 1 | Lane terms of `tid` live for the whole kernel (`tid&31`, `&63`, `ubfe(tid,5,1)`, `>>3`, `<<5`, and `(tid&31)<<8` in d192). | +5 / +6 V | IR CSE: the pre-codegen IR has one `and %tid,31` in `entry`, used in 20 blocks. | E1, an opaque `tid` read at each use: VGPRs 244→240 / 206→200. |
| 2 | Uniform float scales (`scale`, `p_scale`, `vd·v_scale`) held in VGPRs; the reference keeps them in SGPRs. | +3 / +2 V | Instruction selection: a uniform `fmul` goes to the VALU and nothing moves it back to an SGPR. | E2, `readfirstlane` in the source: VGPRs −2 / −2, SGPRs +3 / +2. |
| 3 | S stays live through the PV-only tile because the CFG allows `pvo → tail → masked/last` paths that can't happen at run time. This sets d128's 244 allocation. | +64 / +32 V pre-RA (transient) | Source: S is carried around the tail loop. | E3, S replaced by freeze(poison) after `softmax()`: VGPRs 244→236 / 206→202. Side effect: SGPR count goes to 102 (assignment spread; live maximum unchanged). |
| 4 | O cleared through a 16-SGPR zero splat. | +13 / +14 S (transient), and it sets the SGPR count | Instruction selection, plus a missing fold (inferred) | The parallel copies agent's VGPR-zero variant measured 88→77 / 90→79 SGPRs. |

**E1 + E2 + E3 together:**
- VGPRs: d128 228 (live max 219 vs reference 226); d192 194 (191 vs 193).
- Loop VGPR difference: d128 −4…+2; d192 −1…0. SGPRs +2.
- Both strict loops stay exact; +51 / +32 retained instructions.
- SGPR count reaches 104, but live max is only 84 / 85 and there are no spills.

**Allocation slack:**

| | Allocated | Pre-RA peak | Final live max |
|---|---|---|---|
| HIP d128 | 244 | 244 | 228 |
| HIP d192 | 206 | 202 | 199 |
| Ref d128 | 256 | – | 226 |
| Ref d192 | 222 | – | 193 |

- **HIP d128:** the 16-register gap isn't fragmentation. The pre-RA scheduler issues all 64 FMAs before the conversions while S is live; the final ISA interleaves them.
- **HIP d192:** 4 holes at the loop peak, plus 3 more counted by the pre-RA tracker.

**Copies:** inside the loop they create no more duplicate live values than the reference's copies do. The extras cost instructions only: 32 per iteration in d192 (`sb_lo` passed as the old value to `cvt_pk_fp8`) and 8 in d128 (`phase_use(f2{b,b})`).

**Measured vs inferred.**
- **Measured:** live counts, pre-RA numbers, the loop alignment, value lifetimes, the single IR definition of the lane terms, the pre-RA FMA/conversion order, and all experiment results.
- **Inferred:**
  - which passes are responsible (EarlyCSE/GVN, the post-RA scheduler, the missing fold);
  - HIP roles outside the loop (matched with difflib);
  - why E3 spreads the SGPR assignment.

## 1. Method and reproduction

- **Inputs** (`inputs/`, with `SHA256SUMS`):
  - the owning HIP disassembly (source sha256 `776857b4…`, matching `ac8512a`);
  - `assembly_d{128,192}.s`;
  - the labelled generator sources;
  - `precodegen.bc`.
- **Compile:**
  - `scripts/flags.sh` mirrors the `setup.py` flags, including `-disable-machine-licm`.
  - `compile.sh` and `llc_all.sh` on the LTO pre-codegen bitcode both reproduce all 9360 instruction lines.
  - `llc_all.sh` also produces:
    - `compile/llc/asm/llc.s`, verbose asm whose IR block names give the HIP region labels;
    - `pre-greedy.mir`;
    - `rp.log`, from `-run-pass=amdgpu-print-rp`.
- **Liveness:** the 11-11 `isa_liveness.py`, unchanged.
- **Regions:** `regions.py` applies one vocabulary to both sides.
  - The reference is split by generator labels, HIP by IR block names.
  - The strict loop is `compare_isa.steady_loop`.
  - Pre-RA MIR blocks are mapped by name.
  - The reference's epilogue sits at the top of the pass and HIP's at the bottom; both sit between the end of one pass and the head of the next.
- **Other tools:**

| Script | What it does |
|---|---|
| `compare_pressure.py` | Loop alignment, register map, per-phase tables |
| `loop_points.py` | Per-point split into pass-through / invariant / loop-written |
| `loop_values.py` | Value-identity comparison: walks the loop twice, copies keep identity |
| `role_map.py`, `role_summary.py`, `web_list.py` | Roles and interval classes |
| `dup_copies.py` | Second live ranges created by copies |
| `frag.py` | Allocated vs live maximum |
| `reuse.py` | Register reuse across phases |
| `ir_tid_terms.py` | Where the `tid`-derived values are defined and used in the IR |
| `make_variant.py`, `run_variant.sh`, `measure_variant.py`, `exp_table.py` | Experiments |

## 2. Q1: pressure structure

**2.1 Regions.** The full table is `data/cmp/regions-table.{md,csv}`.
- Pre-RA equals the final ISA almost everywhere.
- **d128 exception:** the PV-only tile, 244 vs 228.
- **d192 exceptions:**
  - loop 202 vs 199;
  - PV-only tile 190 vs 183;
  - last tile 158 vs 152;
  - masked tail 191 vs 185;
  - masked first QK 115 vs 107.
- **SGPRs:** HIP is at or below the reference everywhere except the O clear (+13 / +14) and, in d192, the transition and pass-done (+1…+2).
- **Whole-kernel peaks:**
  - VGPR: d128 228 in the PV-only tile (reference 226, also there); d192 199 in the loop (reference 193, in the masked tail).
  - SGPR: 81 / 83 in the O clear (reference 70 / 71, in the loop).
- The earlier masked-tail fix holds: d128's masked tail is 224, down from 270.

**2.2 Steady-loop entry** (registers):

| | VGPR pass-through | VGPR invariant | SGPR pass-through | SGPR invariant | Live V / S |
|---|---|---|---|---|---|
| ref d128 | 2 (V_TID, V_NINF) | 33 | 47 | 17 | 175 / 67 |
| HIP d128 | **8** | **35** | 47 | 16 | 179 / 66 |
| ref d192 | 2 | 40 | 48 | 17 | 142 / 68 |
| HIP d192 | **9** | **41** | 48 | 17 | 149 / 68 |

**Per-point split.**
- d128: pass-through +6 and invariants +2 at every point; loop-written values −4…+2.
  - Points per loop-written difference: −4: 177, −3: 104, −2: 416, −1: 8, 0: 304, +1: 256, +2: 68.
- d192: +7, +1, and −1…0.

**Value identity.**
- **d128:**
  - The reference keeps its second scale parity set longer: P2 +176 points per stage, SB +70 / +44.
  - HIP keeps the code bias longer: B8LO +81 points, B8HI +17. It stays live into the PV-only tile.
- **d192:** SB lives 63 points longer in the reference; the `v_pk_fma` pairs differ by ±18 because S's registers are permuted, which nets to zero.
- **Duplicates:** at most 2 / 1 inside the loop, the same on both sides.

## 3. Q2: interval structure by role

HIP roles are exact inside the loop (1:1 alignment) and approximate outside it (difflib per region, `match-stats.json`).

**3.1 Whole-kernel and pass-carried VGPRs:**

| Role | ref d128 | HIP d128 | ref d192 | HIP d192 |
|---|---|---|---|---|
| SEL×8, G2L voffsets, K/V LDS addresses, 0x7f, −inf, (−8.0) | 18 | 18 | 17 | 17 |
| tid | 1 (copy of v0) | 1 (v0 itself) | 1 | 1 |
| **tid lane terms** | 0 | **5** | 0 | **6** |
| **float scales** | 0 (s28, s29, s100) | **3** (v186–v188) | 0 (s28, s100) | **2** (v118, v132) |
| Q (pass-carried) | 16 | 16 | 24 | 24 |

- **Where the lane terms are used:** the mask threshold (masked first QK and masked tail), the Q-load address (transition), and the output and LSE addresses (epilogue, pass-done). The reference recomputes each from V_TID at the use.
- **IR evidence** (`compile/precodegen.ll`):
  - `%and = and i32 %tid, 31` is defined once in `entry` and used in 20 blocks.
  - `lshr %tid, 3` is used in 13 blocks.
  - `and %tid, 63` is used in both epilogue loops.

**3.2 Kept live vs recomputed.**

HIP keeps live, where the reference recomputes or doesn't need the value:
1. **The lane terms above.**
2. **The float scales** (the class difference covered in 3.3).
3. **S through the PV-only tile.**
   - The FMAs (d128) and `v_exp` (d192) write new registers while S stays live: the count climbs 180→228 / 150→182.
   - S stays live because `tail1→normal1` and `tail1→last1→softmax(s)` are feasible in the CFG; the reference overwrites S in place.
4. **The code bias, longer:** +1…+2 VGPRs at some loop points.
5. **The SGPR mix.** Same total, different contents:
   - 12 raw kernel arguments vs the reference's 24, plus more derived values;
   - two 64-bit uniform-flag masks (4 SGPRs);
   - the descriptor duplicate `s[66:67]←s[62:63]`;
   - the 0.125 constant in an SGPR. This is by design (`sgpr_constant`); the reference uses a literal.

The reference keeps live, where HIP doesn't:
1. **The second SB/P2 parity set:** about −2…−4 VGPRs over roughly half the loop.
2. **A deeper fragment prefetch in the tails** (fragment-ring max live, reference → HIP):

| | masked tail | PV-only tile | last tile | masked first QK |
|---|---|---|---|---|
| d192 | 40→32 | 24→12 | 24→16 | 40→24 |
| d128 | 32→28 | 32→19 | – | – |

This is why HIP's d192 masked tail is 8 below the reference.

**3.3 Class placement.**
- **Uniform floats in VGPRs:**
  - d128: `p_scale` (256 loop uses as an FMA operand), `scale` (12), `vd·v_scale` (pass-through).
  - d192: `scale` (64 `v_pk_fma` uses), `vd·v_scale`.
  - The reference computes the same products on the VALU and moves them back with `v_readfirstlane` (`common.py:descale_fold`).
- **Constants:**
  - −8.0, 0x7f and −inf are VGPRs on both sides.
  - −127 is an SGPR on both.
  - 0.125 is an SGPR in HIP and a literal in the reference.
- **Uniform booleans** become 64-bit SGPR masks in HIP; the reference uses `s_cmp` at the use.

**3.4 Copies.**
- **Totals:** HIP 609 / 443 vs reference 319 / 223.
- **Attribution,** from the copies agent's data (`origins-b0-d*.json`, read only):

| Cause | d128 | d192 |
|---|---|---|
| TwoAddress `REG_SEQUENCE` | 299 | 115 |
| PHI elimination | 249 | 243 |
| SIFixSGPRCopies | 41 | 41 |
| tied `cvt_pk_fp8` | – | 32 |
| `permlane32_swap` | 16 | 8 |

- **Second live ranges,** in register-points: HIP 42.6k vs 103k (d128) and 45.4k vs 34.8k (d192). On both sides they are mostly SEL replication and −inf fills.
- **HIP-specific:**
  - **O clear:** the `SGPR_512` splat plus `v_mov_b64` ×32, in each of 5 duplicated dispatch blocks. That's 171 duplicating copies, at most 57 at once.
  - **Descriptor word:** s67 copies s63 across the loop, +1 SGPR.
  - **d192 `sb_lo` copies:** 8 per stage from `fp8_native.hip:914`; 0 registers.
  - **d128 bias-pair copies:** 8 per iteration; 0 registers.

**3.5 Fragment ring, reuse, fragmentation.**
- **Fragment ring:**
  - The reference reserves a fixed 40 / 48 registers, with at most 32 / 40 live.
  - In the loop, HIP's fragments use 34 / 40 registers with at most 33 / 40 live, so HIP has no spare slot.
  - Outside the loop, HIP spreads fragments over 80 / 88 registers.
- **Value intervals per VGPR:** reference 10.8 / 8.1, HIP 15.7 / 10.4.
- **Epilogue:** both sides reuse dead loop tiles. The reference writes O ×64 and P ×8; HIP writes O ×64–66, S ×6 / ×18 and P ×6.
- **PV-only and last tiles:** the reference computes in place; HIP writes fresh registers. In d128 that includes 8 VGPRs never live in the loop.
- **Fragmentation:**
  - **HIP d128:** the pre-greedy order puts 64 FMAs first, so 180 + 64 = 244. The final ISA interleaves FMAs and conversions, giving 228. Q sits in v228–243.
  - **HIP d192:** holes at v115–117 and v162–165 at the loop peak, plus 3 registers counted only pre-RA.
  - **Reference:** fixed roles. In d192, V_KL and V_M8 are written but never read, and the fragment ring has a spare slot.

## 4. Q3: what remains

| # | Difference | Registers (d128 / d192) | Owner | Fix hypothesis | Evidence |
|---|---|---|---|---|---|
| 1 | Lane terms live for the whole kernel | +5 / +6 V | IR CSE (EarlyCSE/GVN family) | Opaque `tid` read in `mask()`, `FP8_LOAD_QUERY`, `FP8_OUTPUT` | **E1:** 240 / 200 VGPRs; loop pass-through +1; loop max 222 / 193; exact; +44 / +26 instructions |
| 2 | Float scales in VGPRs | +3 / +2 V, −3 / −2 S | Instruction selection | `readfirstlane`, as `descale_fold` does | **E2:** 242 / 204 VGPRs; 91 / 92 SGPRs; loop invariant difference 0; exact |
| 3 | S live through the PV-only tile | +64 / +32 transient; sets d128's allocation | Source: S carried around the tail loop | `__builtin_nondeterministic_value(S)` after `softmax()` in `pvo0` / `pvo1` | **E3:** 236 / 202 VGPRs; FMAs run in place; exact; SGPR count 102 (live max unchanged) |
| 4 | PV-only tile with all FMAs first | +16 allocated over final live (d128) | Pre-RA scheduler (`gcn-max-ilp`); post-RA reordering hides it (inferred) | Removed by fix 3 | Measured |
| 5 | O clear through `SGPR_512` splat | +13 / +14 S, sets the SGPR count | Instruction selection, then no fold (inferred) | Zero O from a VGPR | Copies agent's v4: 77 / 79 SGPRs, loop exact |
| 6 | SGPR mix (flag masks, descriptor duplicate, 0.125) | Loop totals −1 / 0 | Instruction selection + SIFixSGPRCopies; CodeGenPrepare phi split (11-11 attribution) | None needed | Measured |
| 7 | Loop lifetime trade-offs | −4…+2 / −1…0 | Source design | None | Measured |
| 8 | Copies with no register cost | 0 | Source (`cvt_pk_fp8` old = `sb_lo`; `phase_use(f2{b,b})`) | Pass poison or `P[J]` as the old value; drop the pair `phase_use` | Measured |
| 9 | d192 holes | 4 (+3 pre-RA) | Greedy assignment / tuple alignment (inferred) | None needed | Measured |

**E1 + E2 + E3 combined** (`data/cmp/experiments.csv`):

| | VGPRs | Live max (ref) | Loop ΔV | Loop ΔS | Retained instructions | L1 | SGPR count |
|---|---|---|---|---|---|---|---|
| d128 | 228 | 219 (226) | −4…+2 | +2 | 4961 (+51) | 923 | 104 |
| d192 | 194 | 191 (193) | −1…0 | +2 | 3430 (+32) | 735 | 104 |

- Both strict loops stay exact.
- The 104 SGPR count is E3's assignment spread; there are no spills.
- The O-clear fix (#5) isn't included.
- These are diagnostic compiles only: not run on a GPU, numerics and hazards not checked.

## 5. Measured vs inferred

**Measured:**
- ISA reproduction.
- All live and region maxima.
- Pre-RA RP.
- Loop alignment and per-point split.
- Value lifetimes.
- Register uses.
- The single IR definition of the lane terms.
- The pre-greedy FMA/conversion order.
- Copy and duplicate counts.
- Allocation slack.
- E1, E2, E3 and E123.

**Inferred:**
- The CSE pass names (the 11-11 attribution).
- That the post-RA scheduler interleaves the PV-only tile.
- The owner of the missing splat fold.
- Why E3 shifts the SGPR assignment.
- HIP roles outside the loop.
- The reference's parity-set artifact (path-insensitive liveness).

**Not done:**
- GPU runs.
- Pre-RA RP for the variants.
- Per-pass bisection of the CSE.

## 6. Files

All under this directory:

| Path | Contents |
|---|---|
| `scripts/` | All tools |
| `inputs/` | Inputs with SHA256SUMS |
| `compile/llc/` | Reproduction, labels, `pre-greedy.mir`, `rp.log` |
| `compile/precodegen.ll` | Pre-codegen IR as text |
| `data/{ref,hip}{128,192}/` | Pressure, live sets, value intervals, loops |
| `data/regions-*`, `data/mir-regions-*` | Region maps |
| `data/prera/` | Parsed print-rp |
| `data/cmp/` | Region table, loop alignment, value comparisons, copy duplicates, experiments |
| `data/roles/` | Interval classes, roles by class and region, reuse |
| `exp/` | `base` (reproduces the owning ISA), `e1-opaque-lane`, `e2-sgpr-scales`, `e3-kill-s-pvo`, `e123`, each with `source.diff`, ISA and measurements |

The agent worktree is `/home/jinpli/workspace/home/jinpli/development/zyfa/.claude/worktrees/agent-a263e903a40c4c8d6`.
