# Static (built trees; all-descales kernel shown for non-strict builds, general kernel identical in slots)

M0 nops = `s_nop 0` between an M0 write and the LDS DMA that reads it, per region:
entry / pass start / steady / tails / transitions. Slots filled = DMAs with no s_nop after their M0 write.

| tree | compiler, LICM | .text | d128 insts | d128 s_nop | d128 M0 nops (e/p/s/t/x) | d128 slots filled | d192 insts | d192 s_nop | d192 M0 nops | d192 slots filled | SGPR d128/d192 | VGPR | spills | steady loop d128/d192 |
|---|---|---|---:|---:|---|---:|---:|---:|---|---:|---|---|---|---|
| HEAD strict | prod, off | 179a935c | 5311 | 281 | 57 (5/6/16/18/12) | 49/106 | 3603 | 183 | 52 (4/6/12/18/12) | 33/85 | 77/79 | 244/214 | 0 | 1341/829 |
| R1 (strict) | rp, real pressure | 441c1b86 | 5324 | 299 | 75 (5/12/16/18/24) | 31/106 | 3600 | 191 | 60 (4/10/12/18/16) | 25/85 | 100/100 | 244/216 | 0 | 1341/829 |
| HEAD non-strict | prod, off | 0ed627d4 | 5141 | 124 | 57 (5/6/16/18/12) | 49/106 | 3511 | 105 | 52 (4/6/12/18/12) | 33/85 | 93/94 | 244/214 | 0 | 1341/829 |
| V0 = HEAD ns | rp2, real pressure | 3608da41 | 5146 | 125 | 57 (5/6/16/18/12) | 49/106 | 3504 | 105 | 52 (4/6/12/18/12) | 33/85 | 100/101 | 244/216 | 0 | 1341/829 |
| FS (fill 1) | rp2, real pressure | fcf5bafd | 5130 | 109 | 41 (5/6/0/18/12) | 65/106 | 3492 | 93 | 40 (4/6/0/18/12) | 45/85 | 100/101 | 244/216 | 0 | 1325/817 |
| FSG (fill 3) | rp2, real pressure | f894dea8 | 5125 | 96 | 27 (5/0/0/18/4) | 79/106 | 3481 | 79 | 26 (4/0/0/18/4) | 59/85 | 100/101 | 244/216 | 0 | 1325/817 |
| FSGT (fill 7) | rp2, real pressure | 49f56326 | 5107 | 90 | 21 (5/0/0/12/4) | 85/106 | 3457 | 67 | 14 (4/0/0/6/4) | 71/85 | 100/101 | 244/216 | 0 | 1325/817 |
