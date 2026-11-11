# gfx950 VCC dependency evidence

Checked 2026-11-11. This was a focused documentation/source investigation; no source or compiler changes and no GPU execution.

## Result

AMD's CDNA4 manual documents a zero-wait **carry-in** exception, so a blanket statement that every VALU-to-VCC-to-VALU dependency needs two waits would exceed the manual. It also explicitly documents two waits when VALU-produced SGPR/VCC is read as a **constant**. The manual does not explicitly classify `V_CNDMASK_B32`'s condition mask as a carry-in operand. Consequently this investigation does **not** establish that `V_CMP -> V_CNDMASK` may safely omit software delay on gfx950. The supplied AMD-authored LLVM model explicitly covers implicit VCC dependencies, with no CNDMASK exception. Conservatively retain its two-wait policy for that pair unless the CNDMASK classification is independently confirmed by AMD.

The generator comment `VCC is interlocked (v_cmp -> v_cndmask may be back to back)` is broader and more specific than the documentation found supports. Passing numerical reference tests does not resolve this architectural uncertainty.

## Authoritative CDNA4 manual

**Document:** *CDNA4 Instruction Set Architecture: Reference Guide*, dated **5-August-2025** on its cover. Downloaded from AMD's own site. The canonical link is also linked by [AMD GPUOpen's architecture documentation index](https://gpuopen.com/amd-gpu-architecture-programming-documentation/).

- [Canonical AMD PDF](https://www.amd.com/content/dam/amd/en/documents/instinct-tech-docs/instruction-set-architectures/amd-instinct-cdna4-instruction-set-architecture.pdf)
- [Download URL actually used](https://www.amd.com/content/dam/amd/en/documents/instinct-tech-docs/instruction-set-architectures/amd-instinct-cdna4-instruction-set-architecture.pdf?download=1) (the canonical URL encountered transport errors; the query URL returned the real PDF, 4,596,505 bytes).
- Local downloaded PDF: `/tmp/zyfa-cdna4-query.pdf`.
- Local extracted text: `/tmp/zyfa-cdna4-isa.txt`.
- Visually checked Table 11 image: `/tmp/zyfa-cdna4-p21.png`.

**Section 4.5, “Manually Inserted Wait States (NOPs),” printed p.20 (PDF p.28):**

> The hardware does not check for the following dependencies; they must be resolved by inserting NOPs or independent instructions.

**Table 11, continued on printed p.21 (PDF p.29),** lists producer `VALU writes SGPR/VCC: v_readlane, v_readfirstlane, v_cmp, v_add*_i/u, v_sub*_i/u, v_div_scale*`, with these consumer rows:

| Second instruction | Wait |
| --- | ---: |
| `VALU reads SGPR as constant` | 2 |
| `VALU reads SGPR as carry-in` | 0 |
| `v_readlane, v_writelane reads SGPR as lane-select` | 4 |

On that same page, the mixed-access row distinguishes VCC's name from its underlying logical SGPR number. Its consumer description is:

> VALU which reads VCC as a constant (not as a carry-in which is 0 wait states).

The row assigns 1 wait for mixed VCC alias/SGPR-number access and explains that dependency checking does not recognize those names as the same register. This is evidence that **operand role and access naming matter**, rather than evidence of a universal VCC interlock.

**CNDMASK instruction definitions:** printed p.173 (PDF p.181), §12.7 VOP2; and printed p.338 (PDF p.346), §12.11 VOP3A & VOP3B:

> Copy data from one of two inputs based on the per-lane condition code and store the result into a vector register.

The pseudocode selects with `VCC.u64[laneId]`; the note says:

> In VOP3 the VCC source may be a scalar GPR specified in S2.

These definitions establish that the VOP3 explicit arbitrary SGPR operand is a **per-lane mask**, not a broadcast scalar arithmetic input. They do not call it “carry-in” or provide a CNDMASK-specific dependency exemption. Therefore neither “every explicit SGPR mask is a constant” nor “every explicit SGPR mask is interlocked like VCC” follows directly from the manual.

Section 6.2.1, printed p.32 (PDF p.40), groups `ADDC`, `SUBB`, and `CNDMASK` as implicit users of the SGPR value VCC for constant-source restrictions. This makes a common mask path plausible, but the statement is about operand restrictions, and does not explicitly settle the dependency wait classification.

## AMD-authored LLVM evidence and disagreement

- Commit: [f311f934e13e7c66c312c3cf1f042c01d8038c49](https://github.com/llvm/llvm-project/commit/f311f934e13e7c66c312c3cf1f042c01d8038c49), authored by **Stanislav Mekhanoshin (`@amd.com`)**, subject `[AMDGPU] gfx940 VALU hazard recognizer`.
- Review: [D122339](https://reviews.llvm.org/D122339), accepted by `kzhuravl`. Read its public timeline; discussion only addresses formatting and acceptance. No VCC/CNDMASK hardware exception or erratum is stated there.
- The change sets `VALUWriteSGPRVALUReadWaitstates = 2`, handles explicit SGPR uses, and then independently checks `VALU->readsRegister(AMDGPU::VCC, TRI)` with the same two-wait rule. There is no consumer-opcode exception for CNDMASK.
- Its `GCNSubtarget.h` comment says `Does not have HW interlocs for VALU writing and then reading SGPRs.`
- Its regression `valu_write_vcc_valu_read_as_constant` expects `V_CMP_NE_U32_e32`, then `S_NOP 1`, then **`V_ADDC_U32_e32`**. Thus it treats even this implicit arithmetic carry-in case as needing two waits. This is a concrete disagreement with the CDNA4 manual's zero-wait carry-in row; it prevents treating the LLVM implementation alone as a perfectly precise transcription of the later manual.

The owning compiler checkout at HEAD `72e518a3f02a` (verified by the controller) retains this VCC check in `llvm/lib/Target/AMDGPU/GCNHazardRecognizer.cpp`, and `hasVDecCoExecHazard()` remains `HasGFX940Insts`. `GCNFeatures.td` defines `FeatureISAVersion9_5_Common` by concatenating `FeatureISAVersion9_4_Common.Features`, so this model remains applicable to gfx950.

## Practical implication

The authoritative manual establishes the constant/carry-in distinction, but the precise CNDMASK classification remains unproven by the sources inspected. No AMD erratum or public review discussion establishing a gfx950 `V_CMP -> V_CNDMASK` zero-delay exemption was found in this focused investigation. Use two wait states (for example `s_nop 1`, or an equivalent gap of independent instructions) as the conservative policy for the remaining finding. If the generator deliberately exempts the VCC mask, label that decision as an unresolved hardware assumption rather than as a proven interlock.
