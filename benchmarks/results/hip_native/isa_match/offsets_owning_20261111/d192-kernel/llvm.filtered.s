s_load_dwordx16 s[36:51], s[0:1], 0x0
s_load_dwordx16 s[4:19], s[0:1], 0x40
s_load_dwordx4 s[20:23], s[0:1], 0x80
s_load_dwordx2 s[24:25], s[0:1], 0x90
v_and_b32_e32 v2, 63, v0
v_bfe_u32 v1, v0, 5, 1
v_lshlrev_b32_e32 v3, 8, v0
s_movk_i32 s0, 0xe0
v_and_b32_e32 v3, 0x1f00, v3
v_add_lshl_u32 v4, v1, v2, 5
v_and_or_b32 v161, v4, s0, v3
v_add_u32_e32 v5, 64, v4
v_add_u32_e32 v4, 0x80, v4
v_readfirstlane_b32 s3, v0
v_and_or_b32 v162, v5, s0, v3
v_and_or_b32 v163, v4, s0, v3
s_waitcnt lgkmcnt(0)
s_cmp_eq_u64 s[20:21], 0
s_cbranch_scc1 14
s_load_dword s0, s[20:21], 0x0
s_cmp_eq_u64 s[22:23], 0
s_cbranch_scc1 13
s_load_dword s1, s[22:23], 0x0
s_waitcnt lgkmcnt(0)
v_mul_f32_e32 v3, s0, v3
s_cmp_eq_u64 s[24:25], 0
s_cbranch_scc1 10
s_load_dword s15, s[24:25], 0x0
s_branch 8
s_mov_b32 s0, 1.0
s_cmp_eq_u64 s[22:23], 0
s_cbranch_scc0 65523
s_waitcnt lgkmcnt(0)
s_cmp_eq_u64 s[24:25], 0
s_cbranch_scc0 65526
s_mov_b32 s15, 1.0
v_and_b32_e32 v5, 1, v0
v_bfe_u32 v4, v0, 1, 3
v_lshlrev_b32_e32 v6, 4, v5
v_lshrrev_b32_e32 v7, 4, v0
v_sub_u32_e32 v8, v4, v7
v_and_b32_e32 v8, 7, v8
v_cmp_gt_u32_e32 vcc, 6, v8
s_nop 1
v_cndmask_b32_e32 v8, 0, v8, vcc
v_lshlrev_b32_e32 v8, 5, v8
v_or_b32_e32 v8, v8, v6
v_mul_lo_u32 v7, s6, v7
v_add_u32_e32 v164, v7, v8
v_or_b32_e32 v7, 0x200, v0
v_lshrrev_b32_e32 v7, 4, v7
v_sub_u32_e32 v4, v4, v7
v_and_b32_e32 v4, 7, v4
v_cmp_gt_u32_e32 vcc, 6, v4
s_nop 1
v_cndmask_b32_e32 v4, 0, v4, vcc
v_lshlrev_b32_e32 v4, 5, v4
v_or_b32_e32 v4, v4, v6
v_mul_lo_u32 v5, s6, v7
v_add_u32_e32 v165, v5, v4
v_bfe_u32 v4, v0, 7, 1
v_lshrrev_b32_e32 v5, 8, v0
v_lshlrev_b32_e32 v10, 5, v4
v_bfe_u32 v6, v0, 6, 1
v_lshl_or_b32 v12, v5, 2, v10
v_bfe_u32 v7, v0, 2, 1
v_lshl_or_b32 v13, v6, 4, v12
v_and_b32_e32 v8, 3, v0
v_lshl_or_b32 v14, v7, 3, v13
v_bfe_u32 v9, v0, 3, 3
v_or_b32_e32 v15, v14, v8
v_lshlrev_b32_e32 v11, 4, v9
v_mul_lo_u32 v16, s7, v15
v_add_u32_e32 v166, v16, v11
s_cmp_ge_u32 s2, s49
s_cbranch_scc1 5574
s_lshr_b32 s24, s3, 8
s_cmp_eq_u32 s4, 0
s_cselect_b64 s[0:1], -1, 0
s_and_b64 s[16:17], s[0:1], exec
s_cselect_b32 s25, 0, s24
s_lshl_b32 s4, s2, 5
s_load_dwordx8 s[52:59], s[46:47], s4 offset:0x0
s_cmp_eq_u64 s[44:45], 0
s_cselect_b64 s[34:35], -1, 0
s_mov_b64 s[18:19], 0
s_mul_i32 s20, s11, s25
s_and_b64 vcc, exec, s[34:35]
s_cbranch_vccnz 10
s_mov_b32 s17, 0
s_waitcnt lgkmcnt(0)
s_lshl_b64 s[18:19], s[16:17], 2
s_add_u32 s4, s44, s18
s_addc_u32 s11, s45, s19
s_lshl_b64 s[16:17], s[20:21], 2
s_add_u32 s18, s4, s16
s_addc_u32 s19, s11, s17
s_mov_b32 s17, 0
s_waitcnt lgkmcnt(0)
s_lshl_b64 s[16:17], s[16:17], 7
s_mul_i32 s4, s9, s25
s_add_u32 s9, s36, s54
s_addc_u32 s11, s37, s55
s_add_u32 s22, s9, s4
s_addc_u32 s23, s11, 0
s_add_u32 s60, s38, s56
s_addc_u32 s61, s39, s57
s_add_u32 s64, s40, s16
s_addc_u32 s65, s41, s17
s_lshr_b32 s11, s3, 6
s_lshl_b32 s9, s6, 6
s_bfe_u32 s17, s3, 0x20006
s_lshl_b32 s33, s11, 10
s_and_b64 s[0:1], s[0:1], exec
s_cselect_b32 s72, s11, s17
s_not_b32 s0, s52
s_add_u32 s0, s50, s0
s_mul_i32 s1, s51, s0
s_lshl_b32 s0, s0, 5
s_add_u32 s0, s0, 32
s_mul_i32 s0, s0, s51
s_add_u32 s1, s1, s72
s_add_u32 s0, s0, 32
s_mul_i32 s62, s6, s12
s_mul_i32 s66, s7, s12
v_and_b32_e32 v146, 31, v0
s_lshr_b32 s12, s12, 6
s_lshl_b32 s3, s1, 5
s_lshr_b32 s0, s0, 6
s_mov_b32 s63, 0x110000
v_or_b32_e32 v4, s3, v146
s_min_u32 s73, s12, s0
v_mul_lo_u32 v4, s5, v4
v_lshlrev_b32_e32 v167, 5, v1
v_add_u32_e32 v4, v167, v4
global_load_dwordx4 v[182:185], v4, s[22:23]
global_load_dwordx4 v[186:189], v4, s[22:23] offset:16
global_load_dwordx4 v[190:193], v4, s[22:23] offset:64
global_load_dwordx4 v[194:197], v4, s[22:23] offset:80
global_load_dwordx4 v[198:201], v4, s[22:23] offset:128
global_load_dwordx4 v[202:205], v4, s[22:23] offset:144
s_or_b32 s0, s33, 0x10000
buffer_load_dwordx4 v164, s[60:63], 0 offen lds
s_or_b32 m0, s33, 0x2000
s_cmp_lt_u32 s73, 2
buffer_load_dwordx4 v165, s[60:63], 0 offen lds
s_nop 0
buffer_load_dwordx4 v166, s[64:67], 0 offen lds
s_cbranch_scc1 10
s_add_u32 m0, s0, 0xffff4000
s_nop 0
buffer_load_dwordx4 v164, s[60:63], s9 offen lds
s_add_u32 m0, s0, 0xffff6000
s_nop 0
buffer_load_dwordx4 v165, s[60:63], s9 offen lds
v_lshrrev_b32_e32 v4, 2, v0
v_lshrrev_b32_e32 v5, 3, v0
s_waitcnt vmcnt(0)
s_barrier
s_cmp_eq_u32 s24, 0
s_cbranch_scc1 1
s_barrier
s_mov_b32 s16, 0
s_lshr_b32 s76, s3, 6
s_lshl_b64 s[0:1], s[0:1], 8
s_add_u32 s0, s42, s0
s_mul_i32 s22, s10, s25
s_addc_u32 s1, s43, s1
s_add_u32 s10, s0, s22
s_addc_u32 s11, s1, 0
s_lshl_b32 s98, s7, 6
s_lshl_b32 s99, s6, 8
s_lshl_b32 s85, s7, 7
v_mul_f32_e32 v142, s48, v3
v_lshrrev_b32_e32 v147, 4, v2
v_and_b32_e32 v6, 32, v0
s_cmp_eq_u32 s24, 0
v_and_b32_e32 v5, 4, v5
v_lshlrev_b32_e32 v7, 3, v0
v_and_b32_e32 v0, 15, v0
v_mul_f32_e32 v168, s15, v3
v_xor_b32_e32 v3, v147, v4
v_and_or_b32 v4, v147, 1, v6
s_cselect_b64 s[0:1], -1, 0
s_lshl_b32 s15, s17, 13
s_lshl_b32 s17, s6, 7
v_sub_u32_e32 v171, v146, v5
v_xor_b32_e32 v5, v1, v0
v_xor_b32_e32 v6, v147, v0
v_lshlrev_b32_e32 v148, 4, v0
v_and_b32_e32 v0, 1, v3
v_lshlrev_b32_e32 v173, 7, v4
s_add_u32 s36, s36, s4
v_mov_b32_e32 v2, 0x38383838
v_and_b32_e32 v172, 0x78, v7
v_cmp_eq_u32_e32 vcc, 0, v0
v_or_b32_e32 v0, 0x16000, v173
s_addc_u32 s37, s37, 0
s_mov_b32 s14, 0x18000
v_lshlrev_b32_e32 v3, 4, v5
v_lshlrev_b32_e32 v4, 4, v6
v_cndmask_b32_e32 v126, 0, v2, vcc
v_add_u32_e32 v177, v0, v172
v_lshl_or_b32 v0, v146, 8, s15
v_lshl_or_b32 v2, v147, 8, s15
s_add_u32 s42, s42, s22
v_or3_b32 v158, v0, v3, s14
v_or3_b32 v149, v2, v4, s14
s_addc_u32 s43, s43, 0
s_lshl_b64 s[14:15], s[20:21], 2
v_or_b32_e32 v5, 0x10000, v173
v_or_b32_e32 v6, 0x12000, v173
v_or_b32_e32 v7, 0x14000, v173
s_add_u32 s44, s44, s14
s_mov_b32 s81, 0x16000
s_mov_b32 s82, 0x10000
s_mov_b32 s83, 0x12000
s_mov_b32 s88, 0x14000
s_mov_b32 s89, 0x8000
s_movk_i32 s90, 0x4000
s_mov_b32 s91, 0xc2fe0000
v_mov_b32_e32 v169, 0xff800000
s_movk_i32 s92, 0x2000
v_mov_b32_e32 v170, 0x7f
s_mov_b32 s93, 0x3e000000
s_movk_i32 s94, 0x6000
s_mov_b32 s95, 0xa000
s_mov_b32 s96, 0xc000
s_mov_b32 s97, 0xe000
v_add_u32_e32 v174, v5, v172
v_add_u32_e32 v175, v6, v172
v_add_u32_e32 v176, v7, v172
v_xor_b32_e32 v160, 32, v158
v_xor_b32_e32 v159, 64, v158
v_xor_b32_e32 v157, 0x60, v158
v_xor_b32_e32 v156, 0x80, v158
v_xor_b32_e32 v155, 0xa0, v158
v_xor_b32_e32 v154, 0xc0, v158
v_xor_b32_e32 v153, 0xe0, v158
v_xor_b32_e32 v152, 64, v149
v_xor_b32_e32 v151, 0x80, v149
v_xor_b32_e32 v150, 0xc0, v149
s_addc_u32 s45, s45, s15
s_lshl_b32 s87, s6, 4
s_lshl_b32 s48, s6, 5
s_lshl_b32 s74, s7, 2
s_lshl_b32 s4, s8, 2
v_writelane_b32 v230, s17, 0
s_mov_b32 s80, 0
s_mov_b32 s75, 0
s_lshl_b32 s14, s80, 14
s_and_b32 s20, s14, 0x8000
s_bitcmp1_b32 s80, 0
s_cselect_b32 s17, 0x4000, 0
s_or_b32 s20, s20, s17
v_or_b32_e32 v0, s20, v161
s_waitcnt vmcnt(8)
v_or_b32_e32 v1, s20, v162
ds_read_b128 v[2:5], v0
ds_read_b128 v[6:9], v0 offset:16
ds_read_b128 v[50:53], v0 offset:8192
ds_read_b128 v[54:57], v0 offset:8208
ds_read_b128 v[42:45], v1
ds_read_b128 v[46:49], v1 offset:16
ds_read_b128 v[34:37], v1 offset:8192
ds_read_b128 v[38:41], v1 offset:8208
s_cmp_eq_u32 s76, 0
s_cbranch_scc1 112
s_setprio 1
s_waitcnt lgkmcnt(6)
v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[2:9], v[182:189], 0
v_add_u32_e32 v32, s20, v163
ds_read_b128 v[58:61], v32
ds_read_b128 v[62:65], v32 offset:16
s_waitcnt lgkmcnt(6)
v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[182:189], 0
ds_read_b128 v[50:53], v32 offset:8192
ds_read_b128 v[54:57], v32 offset:8208
s_waitcnt lgkmcnt(6)
v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[42:49], v[190:197], v[16:31]
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[34:41], v[190:197], v[0:15]
s_waitcnt lgkmcnt(2)
v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[58:65], v[198:205], v[16:31]
s_waitcnt lgkmcnt(0)
v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[198:205], v[0:15]
s_nop 3
v_max_f32_e32 v32, v16, v17
v_max3_f32 v32, v18, v19, v32
v_max3_f32 v32, v20, v21, v32
v_max3_f32 v32, v22, v23, v32
v_max3_f32 v32, v24, v25, v32
v_max3_f32 v32, v26, v27, v32
v_max3_f32 v32, v28, v29, v32
v_max3_f32 v32, v30, v31, v32
s_nop 7
v_max_f32_e32 v33, v0, v1
v_max3_f32 v33, v2, v3, v33
v_max3_f32 v33, v4, v5, v33
v_max3_f32 v33, v6, v7, v33
v_max3_f32 v33, v8, v9, v33
v_max3_f32 v33, v10, v11, v33
v_max3_f32 v33, v12, v13, v33
v_max3_f32 v33, v14, v15, v33
v_max_f32_e32 v32, v32, v33
s_nop 1
v_permlane32_swap_b32_e32 v32, v33
v_max_f32_e32 v32, v32, v33
v_mul_f32_e32 v111, v142, v32
v_fma_f32 v32, v32, v142, -v111
v_floor_f32_e32 v32, v32
v_med3_f32 v32, v32, s91, 0
v_cvt_i32_f32_e32 v33, v32
v_add_u32_e32 v180, 0x7f, v33
v_lshlrev_b32_e32 v33, 23, v180
v_add_f32_e32 v32, v111, v32
v_sub_f32_e32 v32, 0x40c00000, v32
v_pk_fma_f32 v[80:81], v[16:17], v[144:145], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[64:65], v[0:1], v[144:145], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[94:95], v[30:31], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[92:93], v[28:29], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[90:91], v[26:27], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[88:89], v[24:25], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[86:87], v[22:23], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[84:85], v[20:21], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[82:83], v[18:19], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[78:79], v[14:15], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[76:77], v[12:13], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[74:75], v[10:11], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[72:73], v[8:9], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[70:71], v[6:7], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[68:69], v[4:5], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[66:67], v[2:3], v[142:143], v[32:33] op_sel_hi:[1,1,0]
s_branch 290
s_setprio 1
s_waitcnt lgkmcnt(6)
v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[2:9], v[182:189], 0
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[182:189], 0
v_add_u32_e32 v32, s20, v163
ds_read_b128 v[58:61], v32
ds_read_b128 v[62:65], v32 offset:16
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[42:49], v[190:197], v[16:31]
ds_read_b128 v[50:53], v32 offset:8192
ds_read_b128 v[54:57], v32 offset:8208
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[34:41], v[190:197], v[0:15]
s_waitcnt lgkmcnt(2)
v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[58:65], v[198:205], v[16:31]
s_waitcnt lgkmcnt(0)
v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[198:205], v[0:15]
s_sub_u32 s18, s3, s16
s_sub_i32 s18, s18, 0
s_cmp_ge_i32 s18, 32
s_cbranch_scc1 86
s_cmp_lt_i32 s18, 0
s_cbranch_scc1 66
v_add_u32_e32 v32, s18, v171
v_cmp_gt_i32_e32 vcc, 0, v32
s_nop 6
v_cndmask_b32_e64 v16, v16, v169, vcc
v_cmp_gt_i32_e32 vcc, 1, v32
s_nop 1
v_cndmask_b32_e64 v17, v17, v169, vcc
v_cmp_gt_i32_e32 vcc, 2, v32
s_nop 1
v_cndmask_b32_e64 v18, v18, v169, vcc
v_cmp_gt_i32_e32 vcc, 3, v32
s_nop 1
v_cndmask_b32_e64 v19, v19, v169, vcc
v_cmp_gt_i32_e32 vcc, 8, v32
s_nop 1
v_cndmask_b32_e64 v20, v20, v169, vcc
v_cmp_gt_i32_e32 vcc, 9, v32
s_nop 1
v_cndmask_b32_e64 v21, v21, v169, vcc
v_cmp_gt_i32_e32 vcc, 10, v32
s_nop 1
v_cndmask_b32_e64 v22, v22, v169, vcc
v_cmp_gt_i32_e32 vcc, 11, v32
s_nop 1
v_cndmask_b32_e64 v23, v23, v169, vcc
v_cmp_gt_i32_e32 vcc, 16, v32
s_nop 1
v_cndmask_b32_e64 v24, v24, v169, vcc
v_cmp_gt_i32_e32 vcc, 17, v32
s_nop 1
v_cndmask_b32_e64 v25, v25, v169, vcc
v_cmp_gt_i32_e32 vcc, 18, v32
s_nop 1
v_cndmask_b32_e64 v26, v26, v169, vcc
v_cmp_gt_i32_e32 vcc, 19, v32
s_nop 1
v_cndmask_b32_e64 v27, v27, v169, vcc
v_cmp_gt_i32_e32 vcc, 24, v32
s_nop 1
v_cndmask_b32_e64 v28, v28, v169, vcc
v_cmp_gt_i32_e32 vcc, 25, v32
s_nop 1
v_cndmask_b32_e64 v29, v29, v169, vcc
v_cmp_gt_i32_e32 vcc, 26, v32
s_nop 1
v_cndmask_b32_e64 v30, v30, v169, vcc
v_cmp_gt_i32_e32 vcc, 27, v32
s_nop 1
v_cndmask_b32_e64 v31, v31, v169, vcc
s_branch 18
s_nop 8
v_mov_b32_e32 v16, 0xff800000
s_sub_u32 s18, s3, s16
s_sub_i32 s18, s18, 32
s_cmp_ge_i32 s18, 32
s_cbranch_scc1 86
s_cmp_lt_i32 s18, 0
s_cbranch_scc1 66
v_add_u32_e32 v32, s18, v171
v_cmp_gt_i32_e32 vcc, 0, v32
s_nop 11
v_cndmask_b32_e64 v0, v0, v169, vcc
v_cmp_gt_i32_e32 vcc, 1, v32
s_nop 1
v_cndmask_b32_e64 v1, v1, v169, vcc
v_cmp_gt_i32_e32 vcc, 2, v32
s_nop 1
v_cndmask_b32_e64 v2, v2, v169, vcc
v_cmp_gt_i32_e32 vcc, 3, v32
s_nop 1
v_cndmask_b32_e64 v3, v3, v169, vcc
v_cmp_gt_i32_e32 vcc, 8, v32
s_nop 1
v_cndmask_b32_e64 v4, v4, v169, vcc
v_cmp_gt_i32_e32 vcc, 9, v32
s_nop 1
v_cndmask_b32_e64 v5, v5, v169, vcc
v_cmp_gt_i32_e32 vcc, 10, v32
s_nop 1
v_cndmask_b32_e64 v6, v6, v169, vcc
v_cmp_gt_i32_e32 vcc, 11, v32
s_nop 1
v_cndmask_b32_e64 v7, v7, v169, vcc
v_cmp_gt_i32_e32 vcc, 16, v32
s_nop 1
v_cndmask_b32_e64 v8, v8, v169, vcc
v_cmp_gt_i32_e32 vcc, 17, v32
s_nop 1
v_cndmask_b32_e64 v9, v9, v169, vcc
v_cmp_gt_i32_e32 vcc, 18, v32
s_nop 1
v_cndmask_b32_e64 v10, v10, v169, vcc
v_cmp_gt_i32_e32 vcc, 19, v32
s_nop 1
v_cndmask_b32_e64 v11, v11, v169, vcc
v_cmp_gt_i32_e32 vcc, 24, v32
s_nop 1
v_cndmask_b32_e64 v12, v12, v169, vcc
v_cmp_gt_i32_e32 vcc, 25, v32
s_nop 1
v_cndmask_b32_e64 v13, v13, v169, vcc
v_cmp_gt_i32_e32 vcc, 26, v32
s_nop 1
v_cndmask_b32_e64 v14, v14, v169, vcc
v_cmp_gt_i32_e32 vcc, 27, v32
s_nop 1
v_cndmask_b32_e64 v15, v15, v169, vcc
s_branch 18
s_nop 13
v_mov_b32_e32 v0, 0xff800000
v_max_f32_e32 v32, v16, v17
v_max3_f32 v32, v18, v19, v32
v_max3_f32 v32, v20, v21, v32
v_max3_f32 v32, v22, v23, v32
v_max3_f32 v32, v24, v25, v32
v_max3_f32 v32, v26, v27, v32
v_max3_f32 v32, v28, v29, v32
v_max3_f32 v32, v30, v31, v32
s_nop 7
v_max_f32_e32 v33, v0, v1
v_max3_f32 v33, v2, v3, v33
v_max3_f32 v33, v4, v5, v33
v_max3_f32 v33, v6, v7, v33
v_max3_f32 v33, v8, v9, v33
v_max3_f32 v33, v10, v11, v33
v_max3_f32 v33, v12, v13, v33
v_max3_f32 v33, v14, v15, v33
v_max_f32_e32 v32, v32, v33
s_nop 1
v_permlane32_swap_b32_e32 v32, v33
v_max_f32_e32 v32, v32, v33
v_mul_f32_e32 v111, v142, v32
v_fma_f32 v32, v32, v142, -v111
v_floor_f32_e32 v32, v32
v_med3_f32 v32, v32, s91, 0
v_cvt_i32_f32_e32 v33, v32
v_add_u32_e32 v180, 0x7f, v33
v_lshlrev_b32_e32 v33, 23, v180
v_add_f32_e32 v32, v111, v32
v_sub_f32_e32 v32, 0x40c00000, v32
v_pk_fma_f32 v[80:81], v[16:17], v[144:145], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[64:65], v[0:1], v[144:145], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[94:95], v[30:31], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[92:93], v[28:29], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[90:91], v[26:27], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[88:89], v[24:25], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[86:87], v[22:23], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[84:85], v[20:21], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[82:83], v[18:19], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[78:79], v[14:15], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[76:77], v[12:13], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[74:75], v[10:11], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[72:73], v[8:9], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[70:71], v[6:7], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[68:69], v[4:5], v[142:143], v[32:33] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[66:67], v[2:3], v[142:143], v[32:33] op_sel_hi:[1,1,0]
s_waitcnt vmcnt(0)
s_and_b64 s[18:19], s[0:1], exec
s_cbranch_scc0 38
s_cmp_ge_u32 s73, 2
s_cbranch_scc1 190
s_cmp_ge_u32 s73, 3
s_cbranch_scc1 208
s_cmp_lt_u32 s73, 4
s_cbranch_scc1 31
s_add_u32 s17, s80, 3
s_and_b32 s18, s17, 2
s_lshl_b32 s18, s18, 14
s_bitcmp1_b32 s17, 0
s_cselect_b32 s17, 0x4000, 0
s_or_b32 s17, s18, s17
s_or_b32 s17, s17, s33
s_mul_i32 s18, s6, 0xc0
buffer_load_dwordx4 v164, s[68:71], s18 offen lds
s_add_u32 m0, s17, 0x1000
s_mul_i32 s18, s6, 0xd0
buffer_load_dwordx4 v164, s[68:71], s18 offen lds
s_or_b32 m0, s17, 0x2000
s_mul_i32 s18, s6, 0xe0
buffer_load_dwordx4 v164, s[68:71], s18 offen lds
s_add_u32 m0, s17, 0x3000
s_mul_i32 s17, s6, 0xf0
buffer_load_dwordx4 v164, s[68:71], s17 offen lds
s_waitcnt vmcnt(0)
s_barrier
s_add_u32 s86, s73, -1
s_mul_i32 s84, s86, s9
s_cmp_lt_i32 s80, 1
s_mul_i32 s86, s86, s98
s_cbranch_scc1 54
s_cmp_lt_i32 s80, 2
s_cbranch_scc0 91
s_mov_b32 s77, 0
v_mov_b32_e32 v179, 0
s_branch 574
s_mov_b32 s77, 0
s_cmp_lg_u32 s80, 0
s_cbranch_scc0 163
v_mov_b32_e32 v179, 0
s_branch 1220
s_mov_b32 s77, 0
s_cmp_eq_u32 s80, 2
s_cbranch_scc0 88
v_mov_b32_e32 v179, 0
s_branch 830
s_add_u32 s18, s80, 1
s_and_b32 s19, s18, 2
s_lshl_b32 s19, s19, 13
s_bitcmp1_b32 s18, 0
s_cselect_b32 s18, s83, 0x10000
s_or_b32 s18, s19, s18
s_or_b32 s18, s18, s33
s_nop 0
buffer_load_dwordx4 v166, s[64:67], s98 offen lds
s_add_u32 m0, s18, 0x1000
s_mul_i32 s18, s7, 0x44
buffer_load_dwordx4 v166, s[64:67], s18 offen lds
s_cmp_lt_u32 s73, 3
s_cbranch_scc1 65328
s_andn2_b32 s18, 2, s80
s_lshl_b32 s18, s18, 14
s_or_b32 s17, s18, s17
s_add_u32 s17, s17, s33
v_readlane_b32 s18, v230, 0
s_nop 4
buffer_load_dwordx4 v164, s[68:71], s18 offen lds
s_add_u32 m0, s17, 0x1000
s_mul_i32 s18, s6, 0x90
buffer_load_dwordx4 v164, s[68:71], s18 offen lds
s_add_u32 m0, s17, 0x2000
s_mul_i32 s18, s6, 0xa0
buffer_load_dwordx4 v164, s[68:71], s18 offen lds
s_add_u32 m0, s17, 0x3000
s_mul_i32 s17, s6, 0xb0
buffer_load_dwordx4 v164, s[68:71], s17 offen lds
s_cmp_lt_u32 s73, 4
s_cbranch_scc1 65331
s_branch 65299
v_mov_b32_e32 v179, 0
s_branch 1093
v_mov_b32_e32 v179, 0
s_branch 5
global_store_dword v1, v0, s[14:15]
s_branch 64777
s_add_u32 s18, s77, 1
s_cmp_ge_u32 s18, s76
s_cbranch_scc1 1401
s_setprio 0
v_exp_f32_e32 v96, v80
v_exp_f32_e32 v81, v81
v_exp_f32_e32 v82, v82
v_exp_f32_e32 v83, v83
v_exp_f32_e32 v84, v84
v_exp_f32_e32 v85, v85
v_exp_f32_e32 v86, v86
v_exp_f32_e32 v87, v87
v_exp_f32_e32 v88, v88
v_exp_f32_e32 v89, v89
v_exp_f32_e32 v90, v90
v_exp_f32_e32 v91, v91
v_exp_f32_e32 v92, v92
v_exp_f32_e32 v93, v93
v_exp_f32_e32 v94, v94
v_exp_f32_e32 v95, v95
v_cvt_pk_fp8_f32 v80, v96, v81
v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v81, v84, v85
v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]
v_exp_f32_e32 v64, v64
v_cvt_pk_fp8_f32 v82, v88, v89
v_exp_f32_e32 v65, v65
v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]
v_exp_f32_e32 v66, v66
v_cvt_pk_fp8_f32 v83, v92, v93
v_exp_f32_e32 v67, v67
v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]
v_exp_f32_e32 v68, v68
v_exp_f32_e32 v69, v69
v_exp_f32_e32 v70, v70
v_exp_f32_e32 v71, v71
v_exp_f32_e32 v72, v72
v_exp_f32_e32 v73, v73
v_exp_f32_e32 v74, v74
v_exp_f32_e32 v75, v75
v_exp_f32_e32 v76, v76
v_exp_f32_e32 v77, v77
v_exp_f32_e32 v78, v78
v_exp_f32_e32 v79, v79
v_cvt_pk_fp8_f32 v84, v64, v65
v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v85, v68, v69
v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v86, v72, v73
v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v87, v76, v77
v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]
ds_read_b128 v[92:95], v161 offset:16384
ds_read_b128 v[96:99], v161 offset:16400
ds_read_b128 v[110:113], v161 offset:24576
ds_read_b128 v[114:117], v161 offset:24592
ds_read_b128 v[118:121], v162 offset:16384
ds_read_b128 v[122:125], v162 offset:16400
ds_read_b128 v[134:137], v162 offset:24576
ds_read_b128 v[138:141], v162 offset:24592
s_barrier
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0
ds_read_b128 v[206:209], v163 offset:16384
ds_read_b128 v[210:213], v163 offset:16400
s_waitcnt lgkmcnt(6)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0
ds_read_b128 v[214:217], v163 offset:24576
ds_read_b128 v[218:221], v163 offset:24592
v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[110:117], v[182:189], 0
ds_read_b64_tr_b8 v[110:111], v174
ds_read_b64_tr_b8 v[112:113], v174 offset:1024
ds_read_b64_tr_b8 v[114:115], v174 offset:2048
ds_read_b64_tr_b8 v[116:117], v174 offset:3072
s_min_u32 s18, s20, s84
s_add_u32 m0, s33, s16
s_nop 0
buffer_load_dwordx4 v164, s[68:71], s18 offen lds
v_lshlrev_b32_e32 v92, 23, v180
v_fma_f32 v179, v88, v92, v179
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[118:125], v[190:197], v[64:79]
ds_read_b64_tr_b8 v[118:119], v174 offset:256
ds_read_b64_tr_b8 v[120:121], v174 offset:1280
ds_read_b64_tr_b8 v[122:123], v174 offset:2304
ds_read_b64_tr_b8 v[124:125], v174 offset:3328
s_add_u32 m0, s33, s92
s_nop 0
buffer_load_dwordx4 v165, s[68:71], s18 offen lds
v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[134:141], v[190:197], v[94:109]
s_min_u32 s18, s17, s86
s_add_u32 m0, s33, s88
s_nop 0
buffer_load_dwordx4 v166, s[64:67], s18 offen lds
s_add_u32 s20, s20, s9
s_add_u32 s17, s17, s98
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[206:213], v[198:205], v[64:79]
ds_read_b64_tr_b8 v[134:135], v174 offset:512
ds_read_b64_tr_b8 v[136:137], v174 offset:1536
ds_read_b64_tr_b8 v[138:139], v174 offset:2560
ds_read_b64_tr_b8 v[140:141], v174 offset:3584
v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[214:221], v[198:205], v[94:109]
s_nop 3
v_max_f32_e32 v88, v64, v65
v_max3_f32 v88, v66, v67, v88
v_max3_f32 v88, v68, v69, v88
v_max3_f32 v88, v70, v71, v88
v_max3_f32 v88, v72, v73, v88
v_max3_f32 v88, v74, v75, v88
v_max3_f32 v88, v76, v77, v88
v_max3_f32 v88, v78, v79, v88
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[110:117], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[206:207], v174 offset:768
ds_read_b64_tr_b8 v[208:209], v174 offset:1792
ds_read_b64_tr_b8 v[210:211], v174 offset:2816
ds_read_b64_tr_b8 v[212:213], v174 offset:3840
v_max_f32_e32 v89, v94, v95
v_max3_f32 v89, v96, v97, v89
v_max3_f32 v89, v98, v99, v89
v_max3_f32 v89, v100, v101, v89
v_max3_f32 v89, v102, v103, v89
v_max3_f32 v89, v104, v105, v89
v_max3_f32 v89, v106, v107, v89
v_max3_f32 v89, v108, v109, v89
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[118:125], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]
v_max_f32_e32 v88, v88, v89
s_nop 1
v_permlane32_swap_b32_e32 v88, v89
v_max_f32_e32 v88, v88, v89
v_mul_f32_e32 v89, v142, v88
v_max_f32_e32 v89, v178, v89
v_sub_f32_e32 v90, v89, v178
v_cmp_lt_f32_e32 vcc, s93, v90
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[134:141], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[18:19], -1, 0
s_cselect_b32 s21, 1, 0
v_cndmask_b32_e64 v111, v178, v89, s[18:19]
v_fma_f32 v88, v88, v142, -v111
v_floor_f32_e32 v88, v88
v_med3_f32 v88, v88, s91, 0
v_cvt_i32_f32_e32 v89, v88
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[206:213], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]
v_add_u32_e32 v180, 0x7f, v89
v_add_f32_e32 v80, v111, v88
v_sub_f32_e32 v110, 0x40c00000, v80
v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]
s_cmp_eq_u32 s21, 0
s_cbranch_scc1 68
v_sub_f32_e32 v96, v178, v111
v_exp_f32_e32 v96, v96
s_nop 0
v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]
v_mul_f32_e32 v179, v179, v96
s_waitcnt vmcnt(3)
s_barrier
s_add_u32 s77, s77, 1
s_add_u32 s18, s77, 1
s_cmp_ge_u32 s18, s76
s_cbranch_scc1 1050
s_setprio 0
v_exp_f32_e32 v96, v80
v_exp_f32_e32 v81, v81
v_exp_f32_e32 v82, v82
v_exp_f32_e32 v83, v83
v_exp_f32_e32 v84, v84
v_exp_f32_e32 v85, v85
v_exp_f32_e32 v86, v86
v_exp_f32_e32 v87, v87
v_exp_f32_e32 v88, v88
v_exp_f32_e32 v89, v89
v_exp_f32_e32 v90, v90
v_exp_f32_e32 v91, v91
v_exp_f32_e32 v92, v92
v_exp_f32_e32 v93, v93
v_exp_f32_e32 v94, v94
v_exp_f32_e32 v95, v95
v_cvt_pk_fp8_f32 v80, v96, v81
v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v81, v84, v85
v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]
v_exp_f32_e32 v64, v64
v_cvt_pk_fp8_f32 v82, v88, v89
v_exp_f32_e32 v65, v65
v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]
v_exp_f32_e32 v66, v66
v_cvt_pk_fp8_f32 v83, v92, v93
v_exp_f32_e32 v67, v67
v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]
v_exp_f32_e32 v68, v68
v_exp_f32_e32 v69, v69
v_exp_f32_e32 v70, v70
v_exp_f32_e32 v71, v71
v_exp_f32_e32 v72, v72
v_exp_f32_e32 v73, v73
v_exp_f32_e32 v74, v74
v_exp_f32_e32 v75, v75
v_exp_f32_e32 v76, v76
v_exp_f32_e32 v77, v77
v_exp_f32_e32 v78, v78
v_exp_f32_e32 v79, v79
v_cvt_pk_fp8_f32 v84, v64, v65
v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v85, v68, v69
v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v86, v72, v73
v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v87, v76, v77
v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]
ds_read_b128 v[92:95], v161 offset:32768
ds_read_b128 v[96:99], v161 offset:32784
ds_read_b128 v[112:115], v161 offset:40960
ds_read_b128 v[116:119], v161 offset:40976
ds_read_b128 v[134:137], v162 offset:32768
ds_read_b128 v[138:141], v162 offset:32784
ds_read_b128 v[206:209], v162 offset:40960
ds_read_b128 v[210:213], v162 offset:40976
s_barrier
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0
ds_read_b128 v[214:217], v163 offset:32768
ds_read_b128 v[218:221], v163 offset:32784
s_waitcnt lgkmcnt(6)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0
ds_read_b128 v[222:225], v163 offset:40960
ds_read_b128 v[226:229], v163 offset:40976
v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[112:119], v[182:189], 0
ds_read_b64_tr_b8 v[112:113], v175
ds_read_b64_tr_b8 v[114:115], v175 offset:1024
ds_read_b64_tr_b8 v[116:117], v175 offset:2048
ds_read_b64_tr_b8 v[118:119], v175 offset:3072
s_min_u32 s18, s20, s84
s_add_u32 m0, s33, s90
s_nop 0
buffer_load_dwordx4 v164, s[68:71], s18 offen lds
v_lshlrev_b32_e32 v92, 23, v180
v_fma_f32 v179, v88, v92, v179
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[134:141], v[190:197], v[64:79]
ds_read_b64_tr_b8 v[134:135], v175 offset:256
ds_read_b64_tr_b8 v[136:137], v175 offset:1280
ds_read_b64_tr_b8 v[138:139], v175 offset:2304
ds_read_b64_tr_b8 v[140:141], v175 offset:3328
s_add_u32 m0, s33, s94
s_nop 0
buffer_load_dwordx4 v165, s[68:71], s18 offen lds
v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[206:213], v[190:197], v[94:109]
s_min_u32 s18, s17, s86
s_add_u32 m0, s33, s81
s_nop 0
buffer_load_dwordx4 v166, s[64:67], s18 offen lds
s_add_u32 s20, s20, s9
s_add_u32 s17, s17, s98
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[214:221], v[198:205], v[64:79]
ds_read_b64_tr_b8 v[206:207], v175 offset:512
ds_read_b64_tr_b8 v[208:209], v175 offset:1536
ds_read_b64_tr_b8 v[210:211], v175 offset:2560
ds_read_b64_tr_b8 v[212:213], v175 offset:3584
v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[222:229], v[198:205], v[94:109]
s_nop 3
v_max_f32_e32 v88, v64, v65
v_max3_f32 v88, v66, v67, v88
v_max3_f32 v88, v68, v69, v88
v_max3_f32 v88, v70, v71, v88
v_max3_f32 v88, v72, v73, v88
v_max3_f32 v88, v74, v75, v88
v_max3_f32 v88, v76, v77, v88
v_max3_f32 v88, v78, v79, v88
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[112:119], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[112:113], v175 offset:768
ds_read_b64_tr_b8 v[114:115], v175 offset:1792
ds_read_b64_tr_b8 v[116:117], v175 offset:2816
ds_read_b64_tr_b8 v[118:119], v175 offset:3840
v_max_f32_e32 v89, v94, v95
v_max3_f32 v89, v96, v97, v89
v_max3_f32 v89, v98, v99, v89
v_max3_f32 v89, v100, v101, v89
v_max3_f32 v89, v102, v103, v89
v_max3_f32 v89, v104, v105, v89
v_max3_f32 v89, v106, v107, v89
v_max3_f32 v89, v108, v109, v89
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]
v_max_f32_e32 v88, v88, v89
s_nop 1
v_permlane32_swap_b32_e32 v88, v89
v_max_f32_e32 v88, v88, v89
v_mul_f32_e32 v89, v142, v88
v_max_f32_e32 v89, v111, v89
v_sub_f32_e32 v90, v89, v111
v_cmp_lt_f32_e32 vcc, s93, v90
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[206:213], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[18:19], -1, 0
s_cselect_b32 s21, 1, 0
v_cndmask_b32_e64 v178, v111, v89, s[18:19]
v_fma_f32 v88, v88, v142, -v178
v_floor_f32_e32 v88, v88
v_med3_f32 v88, v88, s91, 0
v_cvt_i32_f32_e32 v89, v88
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[112:119], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]
v_add_u32_e32 v180, 0x7f, v89
v_add_f32_e32 v80, v178, v88
v_sub_f32_e32 v110, 0x40c00000, v80
v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]
s_cmp_eq_u32 s21, 0
s_cbranch_scc1 68
v_sub_f32_e32 v96, v111, v178
v_exp_f32_e32 v96, v96
s_nop 0
v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]
v_mul_f32_e32 v179, v179, v96
s_waitcnt vmcnt(3)
s_barrier
s_add_u32 s77, s77, 1
s_add_u32 s18, s77, 1
s_cmp_ge_u32 s18, s76
s_cbranch_scc1 701
s_setprio 0
v_exp_f32_e32 v96, v80
v_exp_f32_e32 v81, v81
v_exp_f32_e32 v82, v82
v_exp_f32_e32 v83, v83
v_exp_f32_e32 v84, v84
v_exp_f32_e32 v85, v85
v_exp_f32_e32 v86, v86
v_exp_f32_e32 v87, v87
v_exp_f32_e32 v88, v88
v_exp_f32_e32 v89, v89
v_exp_f32_e32 v90, v90
v_exp_f32_e32 v91, v91
v_exp_f32_e32 v92, v92
v_exp_f32_e32 v93, v93
v_exp_f32_e32 v94, v94
v_exp_f32_e32 v95, v95
v_cvt_pk_fp8_f32 v80, v96, v81
v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v81, v84, v85
v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]
v_exp_f32_e32 v64, v64
v_cvt_pk_fp8_f32 v82, v88, v89
v_exp_f32_e32 v65, v65
v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]
v_exp_f32_e32 v66, v66
v_cvt_pk_fp8_f32 v83, v92, v93
v_exp_f32_e32 v67, v67
v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]
v_exp_f32_e32 v68, v68
v_exp_f32_e32 v69, v69
v_exp_f32_e32 v70, v70
v_exp_f32_e32 v71, v71
v_exp_f32_e32 v72, v72
v_exp_f32_e32 v73, v73
v_exp_f32_e32 v74, v74
v_exp_f32_e32 v75, v75
v_exp_f32_e32 v76, v76
v_exp_f32_e32 v77, v77
v_exp_f32_e32 v78, v78
v_exp_f32_e32 v79, v79
v_cvt_pk_fp8_f32 v84, v64, v65
v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v85, v68, v69
v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v86, v72, v73
v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v87, v76, v77
v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]
ds_read_b128 v[92:95], v161 offset:49152
ds_read_b128 v[96:99], v161 offset:49168
ds_read_b128 v[110:113], v161 offset:57344
ds_read_b128 v[114:117], v161 offset:57360
ds_read_b128 v[118:121], v162 offset:49152
ds_read_b128 v[122:125], v162 offset:49168
ds_read_b128 v[134:137], v162 offset:57344
ds_read_b128 v[138:141], v162 offset:57360
s_barrier
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0
ds_read_b128 v[206:209], v163 offset:49152
ds_read_b128 v[210:213], v163 offset:49168
s_waitcnt lgkmcnt(6)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0
ds_read_b128 v[214:217], v163 offset:57344
ds_read_b128 v[218:221], v163 offset:57360
v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[110:117], v[182:189], 0
ds_read_b64_tr_b8 v[110:111], v176
ds_read_b64_tr_b8 v[112:113], v176 offset:1024
ds_read_b64_tr_b8 v[114:115], v176 offset:2048
ds_read_b64_tr_b8 v[116:117], v176 offset:3072
s_min_u32 s18, s20, s84
s_add_u32 m0, s33, s89
s_nop 0
buffer_load_dwordx4 v164, s[68:71], s18 offen lds
v_lshlrev_b32_e32 v92, 23, v180
v_fma_f32 v179, v88, v92, v179
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[118:125], v[190:197], v[64:79]
ds_read_b64_tr_b8 v[118:119], v176 offset:256
ds_read_b64_tr_b8 v[120:121], v176 offset:1280
ds_read_b64_tr_b8 v[122:123], v176 offset:2304
ds_read_b64_tr_b8 v[124:125], v176 offset:3328
s_add_u32 m0, s33, s95
s_nop 0
buffer_load_dwordx4 v165, s[68:71], s18 offen lds
v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[134:141], v[190:197], v[94:109]
s_min_u32 s18, s17, s86
s_add_u32 m0, s33, s82
s_nop 0
buffer_load_dwordx4 v166, s[64:67], s18 offen lds
s_add_u32 s20, s20, s9
s_add_u32 s17, s17, s98
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[206:213], v[198:205], v[64:79]
ds_read_b64_tr_b8 v[134:135], v176 offset:512
ds_read_b64_tr_b8 v[136:137], v176 offset:1536
ds_read_b64_tr_b8 v[138:139], v176 offset:2560
ds_read_b64_tr_b8 v[140:141], v176 offset:3584
v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[214:221], v[198:205], v[94:109]
s_nop 3
v_max_f32_e32 v88, v64, v65
v_max3_f32 v88, v66, v67, v88
v_max3_f32 v88, v68, v69, v88
v_max3_f32 v88, v70, v71, v88
v_max3_f32 v88, v72, v73, v88
v_max3_f32 v88, v74, v75, v88
v_max3_f32 v88, v76, v77, v88
v_max3_f32 v88, v78, v79, v88
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[110:117], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[206:207], v176 offset:768
ds_read_b64_tr_b8 v[208:209], v176 offset:1792
ds_read_b64_tr_b8 v[210:211], v176 offset:2816
ds_read_b64_tr_b8 v[212:213], v176 offset:3840
v_max_f32_e32 v89, v94, v95
v_max3_f32 v89, v96, v97, v89
v_max3_f32 v89, v98, v99, v89
v_max3_f32 v89, v100, v101, v89
v_max3_f32 v89, v102, v103, v89
v_max3_f32 v89, v104, v105, v89
v_max3_f32 v89, v106, v107, v89
v_max3_f32 v89, v108, v109, v89
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[118:125], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]
v_max_f32_e32 v88, v88, v89
s_nop 1
v_permlane32_swap_b32_e32 v88, v89
v_max_f32_e32 v88, v88, v89
v_mul_f32_e32 v89, v142, v88
v_max_f32_e32 v89, v178, v89
v_sub_f32_e32 v90, v89, v178
v_cmp_lt_f32_e32 vcc, s93, v90
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[134:141], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[18:19], -1, 0
s_cselect_b32 s21, 1, 0
v_cndmask_b32_e64 v111, v178, v89, s[18:19]
v_fma_f32 v88, v88, v142, -v111
v_floor_f32_e32 v88, v88
v_med3_f32 v88, v88, s91, 0
v_cvt_i32_f32_e32 v89, v88
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[206:213], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]
v_add_u32_e32 v180, 0x7f, v89
v_add_f32_e32 v80, v111, v88
v_sub_f32_e32 v110, 0x40c00000, v80
v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]
s_cmp_eq_u32 s21, 0
s_cbranch_scc1 68
v_sub_f32_e32 v96, v178, v111
v_exp_f32_e32 v96, v96
s_nop 0
v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]
v_mul_f32_e32 v179, v179, v96
s_waitcnt vmcnt(3)
s_barrier
s_add_u32 s77, s77, 1
s_add_u32 s18, s77, 1
s_cmp_ge_u32 s18, s76
s_cbranch_scc1 348
s_setprio 0
v_exp_f32_e32 v96, v80
v_exp_f32_e32 v81, v81
v_exp_f32_e32 v82, v82
v_exp_f32_e32 v83, v83
v_exp_f32_e32 v84, v84
v_exp_f32_e32 v85, v85
v_exp_f32_e32 v86, v86
v_exp_f32_e32 v87, v87
v_exp_f32_e32 v88, v88
v_exp_f32_e32 v89, v89
v_exp_f32_e32 v90, v90
v_exp_f32_e32 v91, v91
v_exp_f32_e32 v92, v92
v_exp_f32_e32 v93, v93
v_exp_f32_e32 v94, v94
v_exp_f32_e32 v95, v95
v_cvt_pk_fp8_f32 v80, v96, v81
v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v81, v84, v85
v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]
v_exp_f32_e32 v64, v64
v_cvt_pk_fp8_f32 v82, v88, v89
v_exp_f32_e32 v65, v65
v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]
v_exp_f32_e32 v66, v66
v_cvt_pk_fp8_f32 v83, v92, v93
v_exp_f32_e32 v67, v67
v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]
v_exp_f32_e32 v68, v68
v_exp_f32_e32 v69, v69
v_exp_f32_e32 v70, v70
v_exp_f32_e32 v71, v71
v_exp_f32_e32 v72, v72
v_exp_f32_e32 v73, v73
v_exp_f32_e32 v74, v74
v_exp_f32_e32 v75, v75
v_exp_f32_e32 v76, v76
v_exp_f32_e32 v77, v77
v_exp_f32_e32 v78, v78
v_exp_f32_e32 v79, v79
v_cvt_pk_fp8_f32 v84, v64, v65
v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v85, v68, v69
v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v86, v72, v73
v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v87, v76, v77
v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]
ds_read_b128 v[92:95], v161
ds_read_b128 v[96:99], v161 offset:16
ds_read_b128 v[112:115], v161 offset:8192
ds_read_b128 v[116:119], v161 offset:8208
ds_read_b128 v[134:137], v162
ds_read_b128 v[138:141], v162 offset:16
ds_read_b128 v[206:209], v162 offset:8192
ds_read_b128 v[210:213], v162 offset:8208
s_barrier
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0
ds_read_b128 v[214:217], v163
ds_read_b128 v[218:221], v163 offset:16
s_waitcnt lgkmcnt(6)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0
ds_read_b128 v[222:225], v163 offset:8192
ds_read_b128 v[226:229], v163 offset:8208
v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[112:119], v[182:189], 0
ds_read_b64_tr_b8 v[112:113], v177
ds_read_b64_tr_b8 v[114:115], v177 offset:1024
ds_read_b64_tr_b8 v[116:117], v177 offset:2048
ds_read_b64_tr_b8 v[118:119], v177 offset:3072
s_min_u32 s18, s20, s84
s_add_u32 m0, s33, s96
s_nop 0
buffer_load_dwordx4 v164, s[68:71], s18 offen lds
v_lshlrev_b32_e32 v92, 23, v180
v_fma_f32 v179, v88, v92, v179
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[134:141], v[190:197], v[64:79]
ds_read_b64_tr_b8 v[134:135], v177 offset:256
ds_read_b64_tr_b8 v[136:137], v177 offset:1280
ds_read_b64_tr_b8 v[138:139], v177 offset:2304
ds_read_b64_tr_b8 v[140:141], v177 offset:3328
s_add_u32 m0, s33, s97
s_nop 0
buffer_load_dwordx4 v165, s[68:71], s18 offen lds
v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[206:213], v[190:197], v[94:109]
s_min_u32 s18, s17, s86
s_add_u32 m0, s33, s83
s_nop 0
buffer_load_dwordx4 v166, s[64:67], s18 offen lds
s_add_u32 s20, s20, s9
s_add_u32 s17, s17, s98
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[214:221], v[198:205], v[64:79]
ds_read_b64_tr_b8 v[206:207], v177 offset:512
ds_read_b64_tr_b8 v[208:209], v177 offset:1536
ds_read_b64_tr_b8 v[210:211], v177 offset:2560
ds_read_b64_tr_b8 v[212:213], v177 offset:3584
v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[222:229], v[198:205], v[94:109]
s_nop 3
v_max_f32_e32 v88, v64, v65
v_max3_f32 v88, v66, v67, v88
v_max3_f32 v88, v68, v69, v88
v_max3_f32 v88, v70, v71, v88
v_max3_f32 v88, v72, v73, v88
v_max3_f32 v88, v74, v75, v88
v_max3_f32 v88, v76, v77, v88
v_max3_f32 v88, v78, v79, v88
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[112:119], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[112:113], v177 offset:768
ds_read_b64_tr_b8 v[114:115], v177 offset:1792
ds_read_b64_tr_b8 v[116:117], v177 offset:2816
ds_read_b64_tr_b8 v[118:119], v177 offset:3840
v_max_f32_e32 v89, v94, v95
v_max3_f32 v89, v96, v97, v89
v_max3_f32 v89, v98, v99, v89
v_max3_f32 v89, v100, v101, v89
v_max3_f32 v89, v102, v103, v89
v_max3_f32 v89, v104, v105, v89
v_max3_f32 v89, v106, v107, v89
v_max3_f32 v89, v108, v109, v89
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]
v_max_f32_e32 v88, v88, v89
s_nop 1
v_permlane32_swap_b32_e32 v88, v89
v_max_f32_e32 v88, v88, v89
v_mul_f32_e32 v89, v142, v88
v_max_f32_e32 v89, v111, v89
v_sub_f32_e32 v90, v89, v111
v_cmp_lt_f32_e32 vcc, s93, v90
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[206:213], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[18:19], -1, 0
s_cselect_b32 s21, 1, 0
v_cndmask_b32_e64 v178, v111, v89, s[18:19]
v_fma_f32 v88, v88, v142, -v178
v_floor_f32_e32 v88, v88
v_med3_f32 v88, v88, s91, 0
v_cvt_i32_f32_e32 v89, v88
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[112:119], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]
v_add_u32_e32 v180, 0x7f, v89
v_add_f32_e32 v80, v178, v88
v_sub_f32_e32 v110, 0x40c00000, v80
v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]
s_cmp_eq_u32 s21, 0
s_cbranch_scc1 68
v_sub_f32_e32 v96, v111, v178
v_exp_f32_e32 v96, v96
s_nop 0
v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]
v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]
v_mul_f32_e32 v179, v179, v96
s_waitcnt vmcnt(3)
s_barrier
s_add_u32 s77, s77, 1
s_branch 64135
s_branch 1
s_add_u32 s17, s77, s80
s_bitcmp1_b32 s17, 0
s_cselect_b64 s[18:19], -1, 0
s_and_b64 vcc, exec, s[18:19]
s_cbranch_vccnz 844
s_nop 0
s_add_u32 s17, s77, 1
s_cmp_ge_u32 s17, s73
s_cbranch_scc1 1684
s_cmp_ge_u32 s77, s76
s_cbranch_scc1 611
s_setprio 0
v_exp_f32_e32 v68, v68
v_exp_f32_e32 v69, v69
v_exp_f32_e32 v72, v72
v_exp_f32_e32 v73, v73
s_add_u32 s17, s77, s80
s_add_u32 s18, s17, 1
s_lshl_b32 s19, s18, 14
v_exp_f32_e32 v64, v64
v_exp_f32_e32 v65, v65
v_mov_b32_e32 v139, 0
v_mov_b32_e32 v140, 0
s_and_b32 s19, s19, 0x8000
v_exp_f32_e32 v70, v70
v_exp_f32_e32 v71, v71
v_exp_f32_e32 v74, v74
v_exp_f32_e32 v75, v75
v_cvt_pk_fp8_f32 v139, v68, v69
v_cvt_pk_fp8_f32 v140, v72, v73
s_bitcmp1_b32 s18, 0
s_cselect_b32 s18, 0x4000, 0
v_mov_b32_e32 v138, 0
s_or_b32 s19, s19, s18
v_exp_f32_e32 v80, v80
v_exp_f32_e32 v81, v81
v_exp_f32_e32 v84, v84
v_exp_f32_e32 v85, v85
v_exp_f32_e32 v88, v88
v_exp_f32_e32 v89, v89
v_exp_f32_e32 v92, v92
v_exp_f32_e32 v93, v93
v_exp_f32_e32 v76, v76
v_exp_f32_e32 v77, v77
v_cvt_pk_fp8_f32 v138, v64, v65
v_or_b32_e32 v64, s19, v161
v_or_b32_e32 v65, s19, v162
v_cvt_pk_fp8_f32 v139, v70, v71 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v140, v74, v75 op_sel:[0,0,1]
ds_read_b128 v[68:71], v64
ds_read_b128 v[72:75], v64 offset:16
ds_read_b128 v[96:99], v64 offset:8192
ds_read_b128 v[100:103], v64 offset:8208
ds_read_b128 v[206:209], v65
ds_read_b128 v[210:213], v65 offset:16
ds_read_b128 v[214:217], v65 offset:8192
ds_read_b128 v[218:221], v65 offset:8208
v_mov_b32_e32 v134, 0
v_mov_b32_e32 v135, 0
v_mov_b32_e32 v136, 0
v_mov_b32_e32 v137, 0
v_mov_b32_e32 v141, 0
v_exp_f32_e32 v82, v82
v_exp_f32_e32 v83, v83
v_exp_f32_e32 v66, v66
v_exp_f32_e32 v67, v67
v_exp_f32_e32 v86, v86
v_exp_f32_e32 v87, v87
v_exp_f32_e32 v90, v90
v_exp_f32_e32 v91, v91
v_exp_f32_e32 v94, v94
v_exp_f32_e32 v95, v95
v_exp_f32_e32 v78, v78
v_exp_f32_e32 v79, v79
v_cvt_pk_fp8_f32 v134, v80, v81
v_cvt_pk_fp8_f32 v135, v84, v85
v_cvt_pk_fp8_f32 v136, v88, v89
v_cvt_pk_fp8_f32 v137, v92, v93
v_cvt_pk_fp8_f32 v141, v76, v77
v_cvt_pk_fp8_f32 v134, v82, v83 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v138, v66, v67 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v135, v86, v87 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v136, v90, v91 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v137, v94, v95 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v141, v78, v79 op_sel:[0,0,1]
s_barrier
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[134:141], 0
s_nop 11
v_lshlrev_b32_e32 v65, 23, v180
v_fma_f32 v179, v64, v65, v179
s_waitcnt lgkmcnt(6)
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[68:75], v[182:189], 0
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[96:103], v[182:189], 0
v_or_b32_e32 v64, s19, v163
ds_read_b128 v[66:69], v64
ds_read_b128 v[70:73], v64 offset:16
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[206:213], v[190:197], v[80:95]
ds_read_b128 v[96:99], v64 offset:8192
ds_read_b128 v[100:103], v64 offset:8208
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[214:221], v[190:197], v[110:125]
s_waitcnt lgkmcnt(2)
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[66:73], v[198:205], v[80:95]
s_waitcnt lgkmcnt(0)
v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[96:103], v[198:205], v[110:125]
s_lshl_b32 s18, s77, 6
s_add_u32 s20, s18, 64
s_sub_u32 s18, s3, s20
s_sub_i32 s18, s18, 0
s_nop 1
s_cmp_ge_i32 s18, 32
s_cbranch_scc1 84
v_mov_b32_e32 v64, 0xff800000
s_cmp_lt_i32 s18, 0
s_cbranch_scc1 65
v_add_u32_e32 v79, s18, v171
v_cmp_gt_i32_e32 vcc, 0, v79
s_nop 1
v_cndmask_b32_e64 v64, v80, v169, vcc
v_cmp_gt_i32_e32 vcc, 1, v79
s_nop 1
v_cndmask_b32_e64 v65, v81, v169, vcc
v_cmp_gt_i32_e32 vcc, 2, v79
s_nop 1
v_cndmask_b32_e64 v66, v82, v169, vcc
v_cmp_gt_i32_e32 vcc, 3, v79
s_nop 1
v_cndmask_b32_e64 v67, v83, v169, vcc
v_cmp_gt_i32_e32 vcc, 8, v79
s_nop 1
v_cndmask_b32_e64 v68, v84, v169, vcc
v_cmp_gt_i32_e32 vcc, 9, v79
s_nop 1
v_cndmask_b32_e64 v69, v85, v169, vcc
v_cmp_gt_i32_e32 vcc, 10, v79
s_nop 1
v_cndmask_b32_e64 v70, v86, v169, vcc
v_cmp_gt_i32_e32 vcc, 11, v79
s_nop 1
v_cndmask_b32_e64 v71, v87, v169, vcc
v_cmp_gt_i32_e32 vcc, 16, v79
s_nop 1
v_cndmask_b32_e64 v72, v88, v169, vcc
v_cmp_gt_i32_e32 vcc, 17, v79
s_nop 1
v_cndmask_b32_e64 v73, v89, v169, vcc
v_cmp_gt_i32_e32 vcc, 18, v79
s_nop 1
v_cndmask_b32_e64 v74, v90, v169, vcc
v_cmp_gt_i32_e32 vcc, 19, v79
s_nop 1
v_cndmask_b32_e64 v75, v91, v169, vcc
v_cmp_gt_i32_e32 vcc, 24, v79
s_nop 1
v_cndmask_b32_e64 v76, v92, v169, vcc
v_cmp_gt_i32_e32 vcc, 25, v79
s_nop 1
v_cndmask_b32_e64 v77, v93, v169, vcc
v_cmp_gt_i32_e32 vcc, 26, v79
s_nop 1
v_cndmask_b32_e64 v78, v94, v169, vcc
v_cmp_gt_i32_e32 vcc, 27, v79
s_nop 1
v_cndmask_b32_e64 v79, v95, v169, vcc
s_sub_u32 s18, s3, s20
s_sub_i32 s18, s18, 32
s_cmp_ge_i32 s18, 32
s_cbranch_scc1 84
v_mov_b32_e32 v94, 0xff800000
s_cmp_lt_i32 s18, 0
s_cbranch_scc1 65
v_add_u32_e32 v80, s18, v171
v_cmp_gt_i32_e32 vcc, 0, v80
s_nop 1
v_cndmask_b32_e64 v94, v110, v169, vcc
v_cmp_gt_i32_e32 vcc, 1, v80
s_nop 1
v_cndmask_b32_e64 v95, v111, v169, vcc
v_cmp_gt_i32_e32 vcc, 2, v80
s_nop 1
v_cndmask_b32_e64 v96, v112, v169, vcc
v_cmp_gt_i32_e32 vcc, 3, v80
s_nop 1
v_cndmask_b32_e64 v97, v113, v169, vcc
v_cmp_gt_i32_e32 vcc, 8, v80
s_nop 1
v_cndmask_b32_e64 v98, v114, v169, vcc
v_cmp_gt_i32_e32 vcc, 9, v80
s_nop 1
v_cndmask_b32_e64 v99, v115, v169, vcc
v_cmp_gt_i32_e32 vcc, 10, v80
s_nop 1
v_cndmask_b32_e64 v100, v116, v169, vcc
v_cmp_gt_i32_e32 vcc, 11, v80
s_nop 1
v_cndmask_b32_e64 v101, v117, v169, vcc
v_cmp_gt_i32_e32 vcc, 16, v80
s_nop 1
v_cndmask_b32_e64 v102, v118, v169, vcc
v_cmp_gt_i32_e32 vcc, 17, v80
s_nop 1
v_cndmask_b32_e64 v103, v119, v169, vcc
v_cmp_gt_i32_e32 vcc, 18, v80
s_nop 1
v_cndmask_b32_e64 v104, v120, v169, vcc
v_cmp_gt_i32_e32 vcc, 19, v80
s_nop 1
v_cndmask_b32_e64 v105, v121, v169, vcc
v_cmp_gt_i32_e32 vcc, 24, v80
s_nop 1
v_cndmask_b32_e64 v106, v122, v169, vcc
v_cmp_gt_i32_e32 vcc, 25, v80
s_nop 1
v_cndmask_b32_e64 v107, v123, v169, vcc
v_cmp_gt_i32_e32 vcc, 26, v80
s_nop 1
v_cndmask_b32_e64 v108, v124, v169, vcc
v_cmp_gt_i32_e32 vcc, 27, v80
s_nop 1
v_cndmask_b32_e64 v109, v125, v169, vcc
v_max_f32_e32 v80, v64, v65
v_max3_f32 v80, v66, v67, v80
v_max3_f32 v80, v68, v69, v80
v_max3_f32 v80, v70, v71, v80
v_max3_f32 v80, v72, v73, v80
v_max3_f32 v80, v74, v75, v80
v_max3_f32 v80, v76, v77, v80
v_max3_f32 v80, v78, v79, v80
v_max_f32_e32 v81, v94, v95
v_max3_f32 v81, v96, v97, v81
v_max3_f32 v81, v98, v99, v81
v_max3_f32 v81, v100, v101, v81
v_max3_f32 v81, v102, v103, v81
v_max3_f32 v81, v104, v105, v81
v_max3_f32 v81, v106, v107, v81
v_max3_f32 v81, v108, v109, v81
v_max_f32_e32 v80, v80, v81
s_nop 1
v_permlane32_swap_b32_e32 v80, v81
v_max_f32_e32 v80, v80, v81
v_mul_f32_e32 v81, v142, v80
v_max_f32_e32 v81, v178, v81
v_sub_f32_e32 v82, v81, v178
v_cmp_lt_f32_e32 vcc, s93, v82
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[18:19], -1, 0
s_and_b64 s[20:21], s[18:19], exec
s_cselect_b32 s20, 1, 0
s_cselect_b64 s[20:21], -1, 0
v_cndmask_b32_e64 v111, v178, v81, s[20:21]
v_fma_f32 v80, v80, v142, -v111
v_floor_f32_e32 v80, v80
v_med3_f32 v80, v80, s91, 0
v_cvt_i32_f32_e32 v81, v80
v_add_u32_e32 v112, 0x7f, v81
v_lshlrev_b32_e32 v81, 23, v112
v_add_f32_e32 v80, v111, v80
v_sub_f32_e32 v110, 0x40c00000, v80
s_bfe_u32 s24, s17, 0x10001
s_lshl_b32 s25, s24, 14
s_bitcmp1_b32 s17, 0
s_cselect_b64 s[20:21], -1, 0
s_and_b64 s[22:23], s[20:21], exec
s_cselect_b32 s22, s83, 0x10000
s_or_b32 s25, s25, s22
v_or_b32_e32 v80, s25, v173
v_add_u32_e32 v80, v80, v172
s_waitcnt vmcnt(0)
ds_read_b64_tr_b8 v[82:83], v80
ds_read_b64_tr_b8 v[84:85], v80 offset:1024
ds_read_b64_tr_b8 v[86:87], v80 offset:2048
ds_read_b64_tr_b8 v[88:89], v80 offset:3072
ds_read_b64_tr_b8 v[114:115], v80 offset:256
ds_read_b64_tr_b8 v[116:117], v80 offset:1280
ds_read_b64_tr_b8 v[118:119], v80 offset:2304
ds_read_b64_tr_b8 v[120:121], v80 offset:3328
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[82:89], v[134:141], v[48:63], v170, v180 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[114:121], v[134:141], v[32:47], v170, v180 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[82:83], v80 offset:512
ds_read_b64_tr_b8 v[84:85], v80 offset:1536
ds_read_b64_tr_b8 v[86:87], v80 offset:2560
ds_read_b64_tr_b8 v[88:89], v80 offset:3584
ds_read_b64_tr_b8 v[114:115], v80 offset:768
ds_read_b64_tr_b8 v[116:117], v80 offset:1792
ds_read_b64_tr_b8 v[118:119], v80 offset:2816
ds_read_b64_tr_b8 v[120:121], v80 offset:3840
s_add_u32 s23, s77, 4
s_cmp_ge_u32 s23, s73
s_cbranch_scc1 17
s_lshl_b32 s24, s24, 15
s_and_b64 s[20:21], s[20:21], exec
s_cselect_b32 s20, 0x4000, 0
s_or_b32 s20, s24, s20
s_or_b32 s20, s20, s33
s_mul_i32 s23, s23, s6
s_lshl_b32 s21, s23, 6
s_nop 0
buffer_load_dwordx4 v164, s[68:71], s21 offen lds
s_or_b32 m0, s20, 0x2000
s_nop 0
buffer_load_dwordx4 v165, s[68:71], s21 offen lds
s_add_u32 s20, s77, 2
s_cmp_ge_u32 s20, s73
s_cbranch_scc1 11
s_and_b32 s17, s17, 2
s_lshl_b32 s17, s17, 13
s_xor_b32 s17, s17, 0x4000
s_mul_i32 s20, s20, s7
s_add_u32 s17, s17, s22
s_lshl_b32 s20, s20, 6
s_add_u32 m0, s17, s33
s_nop 0
buffer_load_dwordx4 v166, s[64:67], s20 offen lds
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[134:141], v[16:31], v170, v180 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[134:141], v[0:15], v170, v180 op_sel_hi:[0,0,0]
v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]
s_and_b64 s[18:19], s[18:19], exec
s_cbranch_scc0 68
v_sub_f32_e32 v96, v178, v111
v_exp_f32_e32 v96, v96
s_nop 0
v_pk_mul_f32 v[62:63], v[96:97], v[62:63] op_sel_hi:[0,1]
v_pk_mul_f32 v[60:61], v[96:97], v[60:61] op_sel_hi:[0,1]
v_pk_mul_f32 v[58:59], v[96:97], v[58:59] op_sel_hi:[0,1]
v_pk_mul_f32 v[56:57], v[96:97], v[56:57] op_sel_hi:[0,1]
v_pk_mul_f32 v[54:55], v[96:97], v[54:55] op_sel_hi:[0,1]
v_pk_mul_f32 v[52:53], v[96:97], v[52:53] op_sel_hi:[0,1]
v_pk_mul_f32 v[50:51], v[96:97], v[50:51] op_sel_hi:[0,1]
v_pk_mul_f32 v[48:49], v[96:97], v[48:49] op_sel_hi:[0,1]
v_pk_mul_f32 v[46:47], v[96:97], v[46:47] op_sel_hi:[0,1]
v_pk_mul_f32 v[44:45], v[96:97], v[44:45] op_sel_hi:[0,1]
v_pk_mul_f32 v[42:43], v[96:97], v[42:43] op_sel_hi:[0,1]
v_pk_mul_f32 v[40:41], v[96:97], v[40:41] op_sel_hi:[0,1]
v_pk_mul_f32 v[38:39], v[96:97], v[38:39] op_sel_hi:[0,1]
v_pk_mul_f32 v[36:37], v[96:97], v[36:37] op_sel_hi:[0,1]
v_pk_mul_f32 v[34:35], v[96:97], v[34:35] op_sel_hi:[0,1]
v_pk_mul_f32 v[32:33], v[96:97], v[32:33] op_sel_hi:[0,1]
v_pk_mul_f32 v[30:31], v[96:97], v[30:31] op_sel_hi:[0,1]
v_pk_mul_f32 v[28:29], v[96:97], v[28:29] op_sel_hi:[0,1]
v_pk_mul_f32 v[26:27], v[96:97], v[26:27] op_sel_hi:[0,1]
v_pk_mul_f32 v[24:25], v[96:97], v[24:25] op_sel_hi:[0,1]
v_pk_mul_f32 v[22:23], v[96:97], v[22:23] op_sel_hi:[0,1]
v_pk_mul_f32 v[20:21], v[96:97], v[20:21] op_sel_hi:[0,1]
v_pk_mul_f32 v[18:19], v[96:97], v[18:19] op_sel_hi:[0,1]
v_pk_mul_f32 v[16:17], v[96:97], v[16:17] op_sel_hi:[0,1]
v_pk_mul_f32 v[14:15], v[96:97], v[14:15] op_sel_hi:[0,1]
v_pk_mul_f32 v[12:13], v[96:97], v[12:13] op_sel_hi:[0,1]
v_pk_mul_f32 v[10:11], v[96:97], v[10:11] op_sel_hi:[0,1]
v_pk_mul_f32 v[8:9], v[96:97], v[8:9] op_sel_hi:[0,1]
v_pk_mul_f32 v[6:7], v[96:97], v[6:7] op_sel_hi:[0,1]
v_pk_mul_f32 v[4:5], v[96:97], v[4:5] op_sel_hi:[0,1]
v_pk_mul_f32 v[2:3], v[96:97], v[2:3] op_sel_hi:[0,1]
v_pk_mul_f32 v[0:1], v[96:97], v[0:1] op_sel_hi:[0,1]
v_mul_f32_e32 v179, v179, v96
s_waitcnt vmcnt(0)
s_barrier
s_add_u32 s77, s77, 1
s_branch 227
s_cmp_eq_u32 s77, s76
s_cbranch_scc0 181
s_setprio 0
v_exp_f32_e32 v104, v80
v_exp_f32_e32 v105, v81
v_exp_f32_e32 v108, v64
v_exp_f32_e32 v109, v65
v_exp_f32_e32 v112, v84
v_exp_f32_e32 v113, v85
v_exp_f32_e32 v116, v68
v_exp_f32_e32 v117, v69
v_exp_f32_e32 v120, v88
v_exp_f32_e32 v121, v89
v_exp_f32_e32 v124, v72
v_exp_f32_e32 v125, v73
v_exp_f32_e32 v136, v92
v_exp_f32_e32 v137, v93
v_exp_f32_e32 v140, v76
v_exp_f32_e32 v141, v77
v_mov_b32_e32 v96, 0
v_mov_b32_e32 v100, 0
v_mov_b32_e32 v97, 0
v_mov_b32_e32 v101, 0
v_mov_b32_e32 v98, 0
v_mov_b32_e32 v102, 0
v_mov_b32_e32 v99, 0
v_mov_b32_e32 v103, 0
v_exp_f32_e32 v106, v82
v_exp_f32_e32 v107, v83
v_exp_f32_e32 v110, v66
v_exp_f32_e32 v111, v67
v_exp_f32_e32 v114, v86
v_exp_f32_e32 v115, v87
v_exp_f32_e32 v118, v70
v_exp_f32_e32 v119, v71
v_exp_f32_e32 v122, v90
v_exp_f32_e32 v123, v91
v_exp_f32_e32 v134, v74
v_exp_f32_e32 v135, v75
v_exp_f32_e32 v138, v94
v_exp_f32_e32 v139, v95
v_exp_f32_e32 v143, v78
v_exp_f32_e32 v181, v79
v_cvt_pk_fp8_f32 v96, v104, v105
v_cvt_pk_fp8_f32 v100, v108, v109
v_cvt_pk_fp8_f32 v97, v112, v113
v_cvt_pk_fp8_f32 v101, v116, v117
v_cvt_pk_fp8_f32 v98, v120, v121
v_cvt_pk_fp8_f32 v102, v124, v125
v_cvt_pk_fp8_f32 v99, v136, v137
v_cvt_pk_fp8_f32 v103, v140, v141
v_cvt_pk_fp8_f32 v96, v106, v107 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v100, v110, v111 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v97, v114, v115 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v101, v118, v119 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v98, v122, v123 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v102, v134, v135 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v99, v138, v139 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v103, v143, v181 op_sel:[0,0,1]
s_barrier
s_setprio 1
s_waitcnt vmcnt(0)
v_mfma_f32_16x16x128_f8f6f4 v[104:107], v[126:133], v[96:103], 0
s_add_u32 s18, s76, s80
s_bfe_u32 s17, s18, 0x10001
s_lshl_b32 s22, s17, 14
s_bitcmp1_b32 s18, 0
s_cselect_b64 s[18:19], -1, 0
s_and_b64 s[20:21], s[18:19], exec
s_cselect_b32 s20, s83, 0x10000
s_or_b32 s22, s22, s20
s_nop 3
v_or_b32_e32 v105, s22, v173
v_add_u32_e32 v105, v105, v172
ds_read_b64_tr_b8 v[106:107], v105
ds_read_b64_tr_b8 v[108:109], v105 offset:1024
ds_read_b64_tr_b8 v[110:111], v105 offset:2048
ds_read_b64_tr_b8 v[112:113], v105 offset:3072
ds_read_b64_tr_b8 v[114:115], v105 offset:256
ds_read_b64_tr_b8 v[116:117], v105 offset:1280
ds_read_b64_tr_b8 v[118:119], v105 offset:2304
ds_read_b64_tr_b8 v[120:121], v105 offset:3328
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[106:113], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[114:121], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[106:107], v105 offset:512
ds_read_b64_tr_b8 v[108:109], v105 offset:1536
ds_read_b64_tr_b8 v[110:111], v105 offset:2560
ds_read_b64_tr_b8 v[112:113], v105 offset:3584
ds_read_b64_tr_b8 v[114:115], v105 offset:768
ds_read_b64_tr_b8 v[116:117], v105 offset:1792
ds_read_b64_tr_b8 v[118:119], v105 offset:2816
ds_read_b64_tr_b8 v[120:121], v105 offset:3840
s_add_u32 s21, s76, 4
s_cmp_ge_u32 s21, s73
s_cbranch_scc1 17
s_lshl_b32 s22, s17, 15
s_and_b64 s[18:19], s[18:19], exec
s_cselect_b32 s18, 0x4000, 0
s_or_b32 s18, s22, s18
s_mul_i32 s21, s21, s6
s_or_b32 s18, s18, s33
s_lshl_b32 s19, s21, 6
s_nop 0
buffer_load_dwordx4 v164, s[68:71], s19 offen lds
s_or_b32 m0, s18, 0x2000
s_nop 0
buffer_load_dwordx4 v165, s[68:71], s19 offen lds
s_add_u32 s18, s76, 2
s_cmp_ge_u32 s18, s73
s_cbranch_scc1 9
s_xor_b32 s17, s17, 1
s_lshl_b32 s17, s17, 14
s_mul_i32 s18, s18, s7
s_add_u32 s17, s17, s20
s_lshl_b32 s18, s18, 6
s_add_u32 m0, s17, s33
s_nop 0
buffer_load_dwordx4 v166, s[64:67], s18 offen lds
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[106:113], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]
v_lshlrev_b32_e32 v105, 23, v180
v_fma_f32 v179, v104, v105, v179
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]
s_barrier
s_add_u32 s77, s76, 1
s_branch 44
s_barrier
s_waitcnt vmcnt(0)
s_add_u32 s17, s77, 4
s_cmp_ge_u32 s17, s73
s_cbranch_scc1 19
s_add_u32 s18, s77, s80
s_and_b32 s19, s18, 2
s_lshl_b32 s19, s19, 14
s_bitcmp1_b32 s18, 0
s_cselect_b32 s18, 0x4000, 0
s_or_b32 s18, s19, s18
s_mul_i32 s17, s17, s6
s_or_b32 s18, s18, s33
s_lshl_b32 s17, s17, 6
s_nop 0
buffer_load_dwordx4 v164, s[68:71], s17 offen lds
s_or_b32 m0, s18, 0x2000
s_nop 0
buffer_load_dwordx4 v165, s[68:71], s17 offen lds
s_add_u32 s17, s77, 2
s_cmp_ge_u32 s17, s73
s_cbranch_scc1 15
s_add_u32 s18, s77, s80
s_not_b32 s19, s18
s_lshl_b32 s19, s19, 13
s_and_b32 s19, s19, 0x4000
s_bitcmp1_b32 s18, 0
s_cselect_b32 s18, s83, 0x10000
s_mul_i32 s17, s17, s7
s_or_b32 s18, s19, s18
s_lshl_b32 s17, s17, 6
s_or_b32 m0, s18, s33
s_nop 0
buffer_load_dwordx4 v166, s[64:67], s17 offen lds
s_barrier
s_add_u32 s77, s77, 1
s_add_u32 s17, s77, 1
s_cmp_ge_u32 s17, s73
s_cbranch_scc1 865
s_cmp_ge_u32 s77, s76
s_cbranch_scc1 611
s_setprio 0
v_exp_f32_e32 v68, v68
v_exp_f32_e32 v69, v69
v_exp_f32_e32 v72, v72
v_exp_f32_e32 v73, v73
s_add_u32 s17, s77, s80
s_add_u32 s18, s17, 1
s_lshl_b32 s19, s18, 14
v_exp_f32_e32 v64, v64
v_exp_f32_e32 v65, v65
v_mov_b32_e32 v139, 0
v_mov_b32_e32 v140, 0
s_and_b32 s19, s19, 0x8000
v_exp_f32_e32 v70, v70
v_exp_f32_e32 v71, v71
v_exp_f32_e32 v74, v74
v_exp_f32_e32 v75, v75
v_cvt_pk_fp8_f32 v139, v68, v69
v_cvt_pk_fp8_f32 v140, v72, v73
s_bitcmp1_b32 s18, 0
s_cselect_b32 s18, 0x4000, 0
v_mov_b32_e32 v138, 0
s_or_b32 s19, s19, s18
v_exp_f32_e32 v80, v80
v_exp_f32_e32 v81, v81
v_exp_f32_e32 v84, v84
v_exp_f32_e32 v85, v85
v_exp_f32_e32 v88, v88
v_exp_f32_e32 v89, v89
v_exp_f32_e32 v92, v92
v_exp_f32_e32 v93, v93
v_exp_f32_e32 v76, v76
v_exp_f32_e32 v77, v77
v_cvt_pk_fp8_f32 v138, v64, v65
v_or_b32_e32 v64, s19, v161
v_or_b32_e32 v65, s19, v162
v_cvt_pk_fp8_f32 v139, v70, v71 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v140, v74, v75 op_sel:[0,0,1]
ds_read_b128 v[68:71], v64
ds_read_b128 v[72:75], v64 offset:16
ds_read_b128 v[96:99], v64 offset:8192
ds_read_b128 v[100:103], v64 offset:8208
ds_read_b128 v[206:209], v65
ds_read_b128 v[210:213], v65 offset:16
ds_read_b128 v[214:217], v65 offset:8192
ds_read_b128 v[218:221], v65 offset:8208
v_mov_b32_e32 v134, 0
v_mov_b32_e32 v135, 0
v_mov_b32_e32 v136, 0
v_mov_b32_e32 v137, 0
v_mov_b32_e32 v141, 0
v_exp_f32_e32 v82, v82
v_exp_f32_e32 v83, v83
v_exp_f32_e32 v66, v66
v_exp_f32_e32 v67, v67
v_exp_f32_e32 v86, v86
v_exp_f32_e32 v87, v87
v_exp_f32_e32 v90, v90
v_exp_f32_e32 v91, v91
v_exp_f32_e32 v94, v94
v_exp_f32_e32 v95, v95
v_exp_f32_e32 v78, v78
v_exp_f32_e32 v79, v79
v_cvt_pk_fp8_f32 v134, v80, v81
v_cvt_pk_fp8_f32 v135, v84, v85
v_cvt_pk_fp8_f32 v136, v88, v89
v_cvt_pk_fp8_f32 v137, v92, v93
v_cvt_pk_fp8_f32 v141, v76, v77
v_cvt_pk_fp8_f32 v134, v82, v83 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v138, v66, v67 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v135, v86, v87 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v136, v90, v91 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v137, v94, v95 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v141, v78, v79 op_sel:[0,0,1]
s_barrier
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[134:141], 0
s_nop 11
v_lshlrev_b32_e32 v65, 23, v180
v_fma_f32 v179, v64, v65, v179
s_waitcnt lgkmcnt(6)
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[68:75], v[182:189], 0
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[96:103], v[182:189], 0
v_or_b32_e32 v64, s19, v163
ds_read_b128 v[66:69], v64
ds_read_b128 v[70:73], v64 offset:16
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[206:213], v[190:197], v[80:95]
ds_read_b128 v[96:99], v64 offset:8192
ds_read_b128 v[100:103], v64 offset:8208
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[214:221], v[190:197], v[110:125]
s_waitcnt lgkmcnt(2)
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[66:73], v[198:205], v[80:95]
s_waitcnt lgkmcnt(0)
v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[96:103], v[198:205], v[110:125]
s_lshl_b32 s18, s77, 6
s_add_u32 s20, s18, 64
s_sub_u32 s18, s3, s20
s_sub_i32 s18, s18, 0
s_nop 1
s_cmp_ge_i32 s18, 32
s_cbranch_scc1 84
v_mov_b32_e32 v64, 0xff800000
s_cmp_lt_i32 s18, 0
s_cbranch_scc1 65
v_add_u32_e32 v79, s18, v171
v_cmp_gt_i32_e32 vcc, 0, v79
s_nop 1
v_cndmask_b32_e64 v64, v80, v169, vcc
v_cmp_gt_i32_e32 vcc, 1, v79
s_nop 1
v_cndmask_b32_e64 v65, v81, v169, vcc
v_cmp_gt_i32_e32 vcc, 2, v79
s_nop 1
v_cndmask_b32_e64 v66, v82, v169, vcc
v_cmp_gt_i32_e32 vcc, 3, v79
s_nop 1
v_cndmask_b32_e64 v67, v83, v169, vcc
v_cmp_gt_i32_e32 vcc, 8, v79
s_nop 1
v_cndmask_b32_e64 v68, v84, v169, vcc
v_cmp_gt_i32_e32 vcc, 9, v79
s_nop 1
v_cndmask_b32_e64 v69, v85, v169, vcc
v_cmp_gt_i32_e32 vcc, 10, v79
s_nop 1
v_cndmask_b32_e64 v70, v86, v169, vcc
v_cmp_gt_i32_e32 vcc, 11, v79
s_nop 1
v_cndmask_b32_e64 v71, v87, v169, vcc
v_cmp_gt_i32_e32 vcc, 16, v79
s_nop 1
v_cndmask_b32_e64 v72, v88, v169, vcc
v_cmp_gt_i32_e32 vcc, 17, v79
s_nop 1
v_cndmask_b32_e64 v73, v89, v169, vcc
v_cmp_gt_i32_e32 vcc, 18, v79
s_nop 1
v_cndmask_b32_e64 v74, v90, v169, vcc
v_cmp_gt_i32_e32 vcc, 19, v79
s_nop 1
v_cndmask_b32_e64 v75, v91, v169, vcc
v_cmp_gt_i32_e32 vcc, 24, v79
s_nop 1
v_cndmask_b32_e64 v76, v92, v169, vcc
v_cmp_gt_i32_e32 vcc, 25, v79
s_nop 1
v_cndmask_b32_e64 v77, v93, v169, vcc
v_cmp_gt_i32_e32 vcc, 26, v79
s_nop 1
v_cndmask_b32_e64 v78, v94, v169, vcc
v_cmp_gt_i32_e32 vcc, 27, v79
s_nop 1
v_cndmask_b32_e64 v79, v95, v169, vcc
s_sub_u32 s18, s3, s20
s_sub_i32 s18, s18, 32
s_cmp_ge_i32 s18, 32
s_cbranch_scc1 84
v_mov_b32_e32 v94, 0xff800000
s_cmp_lt_i32 s18, 0
s_cbranch_scc1 65
v_add_u32_e32 v80, s18, v171
v_cmp_gt_i32_e32 vcc, 0, v80
s_nop 1
v_cndmask_b32_e64 v94, v110, v169, vcc
v_cmp_gt_i32_e32 vcc, 1, v80
s_nop 1
v_cndmask_b32_e64 v95, v111, v169, vcc
v_cmp_gt_i32_e32 vcc, 2, v80
s_nop 1
v_cndmask_b32_e64 v96, v112, v169, vcc
v_cmp_gt_i32_e32 vcc, 3, v80
s_nop 1
v_cndmask_b32_e64 v97, v113, v169, vcc
v_cmp_gt_i32_e32 vcc, 8, v80
s_nop 1
v_cndmask_b32_e64 v98, v114, v169, vcc
v_cmp_gt_i32_e32 vcc, 9, v80
s_nop 1
v_cndmask_b32_e64 v99, v115, v169, vcc
v_cmp_gt_i32_e32 vcc, 10, v80
s_nop 1
v_cndmask_b32_e64 v100, v116, v169, vcc
v_cmp_gt_i32_e32 vcc, 11, v80
s_nop 1
v_cndmask_b32_e64 v101, v117, v169, vcc
v_cmp_gt_i32_e32 vcc, 16, v80
s_nop 1
v_cndmask_b32_e64 v102, v118, v169, vcc
v_cmp_gt_i32_e32 vcc, 17, v80
s_nop 1
v_cndmask_b32_e64 v103, v119, v169, vcc
v_cmp_gt_i32_e32 vcc, 18, v80
s_nop 1
v_cndmask_b32_e64 v104, v120, v169, vcc
v_cmp_gt_i32_e32 vcc, 19, v80
s_nop 1
v_cndmask_b32_e64 v105, v121, v169, vcc
v_cmp_gt_i32_e32 vcc, 24, v80
s_nop 1
v_cndmask_b32_e64 v106, v122, v169, vcc
v_cmp_gt_i32_e32 vcc, 25, v80
s_nop 1
v_cndmask_b32_e64 v107, v123, v169, vcc
v_cmp_gt_i32_e32 vcc, 26, v80
s_nop 1
v_cndmask_b32_e64 v108, v124, v169, vcc
v_cmp_gt_i32_e32 vcc, 27, v80
s_nop 1
v_cndmask_b32_e64 v109, v125, v169, vcc
v_max_f32_e32 v80, v64, v65
v_max3_f32 v80, v66, v67, v80
v_max3_f32 v80, v68, v69, v80
v_max3_f32 v80, v70, v71, v80
v_max3_f32 v80, v72, v73, v80
v_max3_f32 v80, v74, v75, v80
v_max3_f32 v80, v76, v77, v80
v_max3_f32 v80, v78, v79, v80
v_max_f32_e32 v81, v94, v95
v_max3_f32 v81, v96, v97, v81
v_max3_f32 v81, v98, v99, v81
v_max3_f32 v81, v100, v101, v81
v_max3_f32 v81, v102, v103, v81
v_max3_f32 v81, v104, v105, v81
v_max3_f32 v81, v106, v107, v81
v_max3_f32 v81, v108, v109, v81
v_max_f32_e32 v80, v80, v81
s_nop 1
v_permlane32_swap_b32_e32 v80, v81
v_max_f32_e32 v80, v80, v81
v_mul_f32_e32 v81, v142, v80
v_max_f32_e32 v81, v178, v81
v_sub_f32_e32 v82, v81, v178
v_cmp_lt_f32_e32 vcc, s93, v82
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[18:19], -1, 0
s_and_b64 s[20:21], s[18:19], exec
s_cselect_b32 s20, 1, 0
s_cselect_b64 s[20:21], -1, 0
v_cndmask_b32_e64 v111, v178, v81, s[20:21]
v_fma_f32 v80, v80, v142, -v111
v_floor_f32_e32 v80, v80
v_med3_f32 v80, v80, s91, 0
v_cvt_i32_f32_e32 v81, v80
v_add_u32_e32 v112, 0x7f, v81
v_lshlrev_b32_e32 v81, 23, v112
v_add_f32_e32 v80, v111, v80
v_sub_f32_e32 v110, 0x40c00000, v80
s_bfe_u32 s24, s17, 0x10001
s_lshl_b32 s25, s24, 14
s_bitcmp1_b32 s17, 0
s_cselect_b64 s[20:21], -1, 0
s_and_b64 s[22:23], s[20:21], exec
s_cselect_b32 s22, s83, 0x10000
s_or_b32 s25, s25, s22
v_or_b32_e32 v80, s25, v173
v_add_u32_e32 v80, v80, v172
s_waitcnt vmcnt(0)
ds_read_b64_tr_b8 v[82:83], v80
ds_read_b64_tr_b8 v[84:85], v80 offset:1024
ds_read_b64_tr_b8 v[86:87], v80 offset:2048
ds_read_b64_tr_b8 v[88:89], v80 offset:3072
ds_read_b64_tr_b8 v[114:115], v80 offset:256
ds_read_b64_tr_b8 v[116:117], v80 offset:1280
ds_read_b64_tr_b8 v[118:119], v80 offset:2304
ds_read_b64_tr_b8 v[120:121], v80 offset:3328
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[82:89], v[134:141], v[48:63], v170, v180 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[114:121], v[134:141], v[32:47], v170, v180 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[82:83], v80 offset:512
ds_read_b64_tr_b8 v[84:85], v80 offset:1536
ds_read_b64_tr_b8 v[86:87], v80 offset:2560
ds_read_b64_tr_b8 v[88:89], v80 offset:3584
ds_read_b64_tr_b8 v[114:115], v80 offset:768
ds_read_b64_tr_b8 v[116:117], v80 offset:1792
ds_read_b64_tr_b8 v[118:119], v80 offset:2816
ds_read_b64_tr_b8 v[120:121], v80 offset:3840
s_add_u32 s23, s77, 4
s_cmp_ge_u32 s23, s73
s_cbranch_scc1 17
s_lshl_b32 s24, s24, 15
s_and_b64 s[20:21], s[20:21], exec
s_cselect_b32 s20, 0x4000, 0
s_or_b32 s20, s24, s20
s_or_b32 s20, s20, s33
s_mul_i32 s23, s23, s6
s_lshl_b32 s21, s23, 6
s_nop 0
buffer_load_dwordx4 v164, s[68:71], s21 offen lds
s_or_b32 m0, s20, 0x2000
s_nop 0
buffer_load_dwordx4 v165, s[68:71], s21 offen lds
s_add_u32 s20, s77, 2
s_cmp_ge_u32 s20, s73
s_cbranch_scc1 11
s_and_b32 s17, s17, 2
s_lshl_b32 s17, s17, 13
s_xor_b32 s17, s17, 0x4000
s_mul_i32 s20, s20, s7
s_add_u32 s17, s17, s22
s_lshl_b32 s20, s20, 6
s_add_u32 m0, s17, s33
s_nop 0
buffer_load_dwordx4 v166, s[64:67], s20 offen lds
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[134:141], v[16:31], v170, v180 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[134:141], v[0:15], v170, v180 op_sel_hi:[0,0,0]
v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]
v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]
s_and_b64 s[18:19], s[18:19], exec
s_cbranch_scc0 68
v_sub_f32_e32 v96, v178, v111
v_exp_f32_e32 v96, v96
s_nop 0
v_pk_mul_f32 v[62:63], v[96:97], v[62:63] op_sel_hi:[0,1]
v_pk_mul_f32 v[60:61], v[96:97], v[60:61] op_sel_hi:[0,1]
v_pk_mul_f32 v[58:59], v[96:97], v[58:59] op_sel_hi:[0,1]
v_pk_mul_f32 v[56:57], v[96:97], v[56:57] op_sel_hi:[0,1]
v_pk_mul_f32 v[54:55], v[96:97], v[54:55] op_sel_hi:[0,1]
v_pk_mul_f32 v[52:53], v[96:97], v[52:53] op_sel_hi:[0,1]
v_pk_mul_f32 v[50:51], v[96:97], v[50:51] op_sel_hi:[0,1]
v_pk_mul_f32 v[48:49], v[96:97], v[48:49] op_sel_hi:[0,1]
v_pk_mul_f32 v[46:47], v[96:97], v[46:47] op_sel_hi:[0,1]
v_pk_mul_f32 v[44:45], v[96:97], v[44:45] op_sel_hi:[0,1]
v_pk_mul_f32 v[42:43], v[96:97], v[42:43] op_sel_hi:[0,1]
v_pk_mul_f32 v[40:41], v[96:97], v[40:41] op_sel_hi:[0,1]
v_pk_mul_f32 v[38:39], v[96:97], v[38:39] op_sel_hi:[0,1]
v_pk_mul_f32 v[36:37], v[96:97], v[36:37] op_sel_hi:[0,1]
v_pk_mul_f32 v[34:35], v[96:97], v[34:35] op_sel_hi:[0,1]
v_pk_mul_f32 v[32:33], v[96:97], v[32:33] op_sel_hi:[0,1]
v_pk_mul_f32 v[30:31], v[96:97], v[30:31] op_sel_hi:[0,1]
v_pk_mul_f32 v[28:29], v[96:97], v[28:29] op_sel_hi:[0,1]
v_pk_mul_f32 v[26:27], v[96:97], v[26:27] op_sel_hi:[0,1]
v_pk_mul_f32 v[24:25], v[96:97], v[24:25] op_sel_hi:[0,1]
v_pk_mul_f32 v[22:23], v[96:97], v[22:23] op_sel_hi:[0,1]
v_pk_mul_f32 v[20:21], v[96:97], v[20:21] op_sel_hi:[0,1]
v_pk_mul_f32 v[18:19], v[96:97], v[18:19] op_sel_hi:[0,1]
v_pk_mul_f32 v[16:17], v[96:97], v[16:17] op_sel_hi:[0,1]
v_pk_mul_f32 v[14:15], v[96:97], v[14:15] op_sel_hi:[0,1]
v_pk_mul_f32 v[12:13], v[96:97], v[12:13] op_sel_hi:[0,1]
v_pk_mul_f32 v[10:11], v[96:97], v[10:11] op_sel_hi:[0,1]
v_pk_mul_f32 v[8:9], v[96:97], v[8:9] op_sel_hi:[0,1]
v_pk_mul_f32 v[6:7], v[96:97], v[6:7] op_sel_hi:[0,1]
v_pk_mul_f32 v[4:5], v[96:97], v[4:5] op_sel_hi:[0,1]
v_pk_mul_f32 v[2:3], v[96:97], v[2:3] op_sel_hi:[0,1]
v_pk_mul_f32 v[0:1], v[96:97], v[0:1] op_sel_hi:[0,1]
v_mul_f32_e32 v179, v179, v96
s_waitcnt vmcnt(0)
s_barrier
s_add_u32 s77, s77, 1
s_branch 64077
s_cmp_eq_u32 s77, s76
s_cbranch_scc0 181
s_setprio 0
v_exp_f32_e32 v104, v80
v_exp_f32_e32 v105, v81
v_exp_f32_e32 v108, v64
v_exp_f32_e32 v109, v65
v_exp_f32_e32 v112, v84
v_exp_f32_e32 v113, v85
v_exp_f32_e32 v116, v68
v_exp_f32_e32 v117, v69
v_exp_f32_e32 v120, v88
v_exp_f32_e32 v121, v89
v_exp_f32_e32 v124, v72
v_exp_f32_e32 v125, v73
v_exp_f32_e32 v136, v92
v_exp_f32_e32 v137, v93
v_exp_f32_e32 v140, v76
v_exp_f32_e32 v141, v77
v_mov_b32_e32 v96, 0
v_mov_b32_e32 v100, 0
v_mov_b32_e32 v97, 0
v_mov_b32_e32 v101, 0
v_mov_b32_e32 v98, 0
v_mov_b32_e32 v102, 0
v_mov_b32_e32 v99, 0
v_mov_b32_e32 v103, 0
v_exp_f32_e32 v106, v82
v_exp_f32_e32 v107, v83
v_exp_f32_e32 v110, v66
v_exp_f32_e32 v111, v67
v_exp_f32_e32 v114, v86
v_exp_f32_e32 v115, v87
v_exp_f32_e32 v118, v70
v_exp_f32_e32 v119, v71
v_exp_f32_e32 v122, v90
v_exp_f32_e32 v123, v91
v_exp_f32_e32 v134, v74
v_exp_f32_e32 v135, v75
v_exp_f32_e32 v138, v94
v_exp_f32_e32 v139, v95
v_exp_f32_e32 v143, v78
v_exp_f32_e32 v181, v79
v_cvt_pk_fp8_f32 v96, v104, v105
v_cvt_pk_fp8_f32 v100, v108, v109
v_cvt_pk_fp8_f32 v97, v112, v113
v_cvt_pk_fp8_f32 v101, v116, v117
v_cvt_pk_fp8_f32 v98, v120, v121
v_cvt_pk_fp8_f32 v102, v124, v125
v_cvt_pk_fp8_f32 v99, v136, v137
v_cvt_pk_fp8_f32 v103, v140, v141
v_cvt_pk_fp8_f32 v96, v106, v107 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v100, v110, v111 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v97, v114, v115 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v101, v118, v119 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v98, v122, v123 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v102, v134, v135 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v99, v138, v139 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v103, v143, v181 op_sel:[0,0,1]
s_barrier
s_setprio 1
s_waitcnt vmcnt(0)
v_mfma_f32_16x16x128_f8f6f4 v[104:107], v[126:133], v[96:103], 0
s_add_u32 s18, s76, s80
s_bfe_u32 s17, s18, 0x10001
s_lshl_b32 s22, s17, 14
s_bitcmp1_b32 s18, 0
s_cselect_b64 s[18:19], -1, 0
s_and_b64 s[20:21], s[18:19], exec
s_cselect_b32 s20, s83, 0x10000
s_or_b32 s22, s22, s20
s_nop 3
v_or_b32_e32 v105, s22, v173
v_add_u32_e32 v105, v105, v172
ds_read_b64_tr_b8 v[106:107], v105
ds_read_b64_tr_b8 v[108:109], v105 offset:1024
ds_read_b64_tr_b8 v[110:111], v105 offset:2048
ds_read_b64_tr_b8 v[112:113], v105 offset:3072
ds_read_b64_tr_b8 v[114:115], v105 offset:256
ds_read_b64_tr_b8 v[116:117], v105 offset:1280
ds_read_b64_tr_b8 v[118:119], v105 offset:2304
ds_read_b64_tr_b8 v[120:121], v105 offset:3328
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[106:113], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[114:121], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[106:107], v105 offset:512
ds_read_b64_tr_b8 v[108:109], v105 offset:1536
ds_read_b64_tr_b8 v[110:111], v105 offset:2560
ds_read_b64_tr_b8 v[112:113], v105 offset:3584
ds_read_b64_tr_b8 v[114:115], v105 offset:768
ds_read_b64_tr_b8 v[116:117], v105 offset:1792
ds_read_b64_tr_b8 v[118:119], v105 offset:2816
ds_read_b64_tr_b8 v[120:121], v105 offset:3840
s_add_u32 s21, s76, 4
s_cmp_ge_u32 s21, s73
s_cbranch_scc1 17
s_lshl_b32 s22, s17, 15
s_and_b64 s[18:19], s[18:19], exec
s_cselect_b32 s18, 0x4000, 0
s_or_b32 s18, s22, s18
s_mul_i32 s21, s21, s6
s_or_b32 s18, s18, s33
s_lshl_b32 s19, s21, 6
s_nop 0
buffer_load_dwordx4 v164, s[68:71], s19 offen lds
s_or_b32 m0, s18, 0x2000
s_nop 0
buffer_load_dwordx4 v165, s[68:71], s19 offen lds
s_add_u32 s18, s76, 2
s_cmp_ge_u32 s18, s73
s_cbranch_scc1 9
s_xor_b32 s17, s17, 1
s_lshl_b32 s17, s17, 14
s_mul_i32 s18, s18, s7
s_add_u32 s17, s17, s20
s_lshl_b32 s18, s18, 6
s_add_u32 m0, s17, s33
s_nop 0
buffer_load_dwordx4 v166, s[64:67], s18 offen lds
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[106:113], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]
v_lshlrev_b32_e32 v105, 23, v180
v_fma_f32 v179, v104, v105, v179
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]
s_barrier
s_add_u32 s77, s76, 1
s_branch 63894
s_barrier
s_waitcnt vmcnt(0)
s_add_u32 s17, s77, 4
s_cmp_ge_u32 s17, s73
s_cbranch_scc1 19
s_add_u32 s18, s77, s80
s_and_b32 s19, s18, 2
s_lshl_b32 s19, s19, 14
s_bitcmp1_b32 s18, 0
s_cselect_b32 s18, 0x4000, 0
s_or_b32 s18, s19, s18
s_mul_i32 s17, s17, s6
s_or_b32 s18, s18, s33
s_lshl_b32 s17, s17, 6
s_nop 0
buffer_load_dwordx4 v164, s[68:71], s17 offen lds
s_or_b32 m0, s18, 0x2000
s_nop 0
buffer_load_dwordx4 v165, s[68:71], s17 offen lds
s_add_u32 s17, s77, 2
s_cmp_ge_u32 s17, s73
s_cbranch_scc1 15
s_add_u32 s18, s77, s80
s_not_b32 s19, s18
s_lshl_b32 s19, s19, 13
s_and_b32 s19, s19, 0x4000
s_bitcmp1_b32 s18, 0
s_cselect_b32 s18, s83, 0x10000
s_mul_i32 s17, s17, s7
s_or_b32 s18, s19, s18
s_lshl_b32 s17, s17, 6
s_or_b32 m0, s18, s33
s_nop 0
buffer_load_dwordx4 v166, s[64:67], s17 offen lds
s_barrier
s_add_u32 s77, s77, 1
s_branch 63849
s_cmp_ge_u32 s76, s77
s_cbranch_scc1 46
s_waitcnt vmcnt(0)
s_barrier
s_cmp_lg_u32 s75, 0
s_cbranch_scc1 4
s_not_b32 s17, s78
s_add_u32 s17, s50, s17
s_cmp_lg_u32 s78, s17
s_cbranch_scc1 502
s_add_u32 s2, s2, s13
s_cmp_ge_u32 s2, s49
s_mov_b32 s75, 0
s_cbranch_scc1 216
s_lshl_b32 s17, s2, 5
s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0
s_mov_b64 s[18:19], -1
s_mov_b64 s[20:21], -1
s_add_u32 s22, s73, s80
s_and_b32 s28, s22, 3
s_and_b64 s[20:21], s[20:21], exec
s_cbranch_scc1 213
s_branch 495
s_cmp_ge_u32 s76, s77
s_cbranch_scc1 113
s_waitcnt vmcnt(0)
s_barrier
s_cmp_lg_u32 s75, 0
s_cbranch_scc1 4
s_not_b32 s17, s78
s_add_u32 s17, s50, s17
s_cmp_lg_u32 s78, s17
s_cbranch_scc1 490
s_add_u32 s2, s2, s13
s_cmp_ge_u32 s2, s49
s_mov_b32 s75, 0
s_cbranch_scc1 330
s_lshl_b32 s17, s2, 5
s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0
s_mov_b64 s[18:19], -1
s_mov_b64 s[20:21], -1
s_add_u32 s22, s73, s80
s_and_b32 s28, s22, 3
s_and_b64 s[20:21], s[20:21], exec
s_cbranch_scc1 327
s_branch 483
s_setprio 0
v_exp_f32_e32 v80, v80
v_exp_f32_e32 v81, v81
v_exp_f32_e32 v64, v64
v_exp_f32_e32 v65, v65
v_exp_f32_e32 v84, v84
v_exp_f32_e32 v85, v85
v_exp_f32_e32 v68, v68
v_exp_f32_e32 v69, v69
v_exp_f32_e32 v88, v88
v_exp_f32_e32 v89, v89
v_exp_f32_e32 v72, v72
v_exp_f32_e32 v73, v73
v_exp_f32_e32 v92, v92
v_exp_f32_e32 v93, v93
v_exp_f32_e32 v76, v76
v_exp_f32_e32 v77, v77
v_mov_b32_e32 v96, 0
v_mov_b32_e32 v100, 0
v_mov_b32_e32 v97, 0
v_mov_b32_e32 v101, 0
v_mov_b32_e32 v98, 0
v_mov_b32_e32 v102, 0
v_mov_b32_e32 v99, 0
v_mov_b32_e32 v103, 0
v_exp_f32_e32 v82, v82
v_exp_f32_e32 v83, v83
v_exp_f32_e32 v66, v66
v_exp_f32_e32 v67, v67
v_exp_f32_e32 v86, v86
v_exp_f32_e32 v87, v87
v_exp_f32_e32 v70, v70
v_exp_f32_e32 v71, v71
v_exp_f32_e32 v90, v90
v_exp_f32_e32 v91, v91
v_exp_f32_e32 v74, v74
v_exp_f32_e32 v75, v75
v_exp_f32_e32 v94, v94
v_exp_f32_e32 v95, v95
v_exp_f32_e32 v78, v78
v_exp_f32_e32 v79, v79
v_cvt_pk_fp8_f32 v96, v80, v81
v_cvt_pk_fp8_f32 v100, v64, v65
v_cvt_pk_fp8_f32 v97, v84, v85
v_cvt_pk_fp8_f32 v101, v68, v69
v_cvt_pk_fp8_f32 v98, v88, v89
v_cvt_pk_fp8_f32 v102, v72, v73
v_cvt_pk_fp8_f32 v99, v92, v93
v_cvt_pk_fp8_f32 v103, v76, v77
v_cvt_pk_fp8_f32 v96, v82, v83 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v100, v66, v67 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v97, v86, v87 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v101, v70, v71 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v98, v90, v91 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v102, v74, v75 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v99, v94, v95 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v103, v78, v79 op_sel:[0,0,1]
s_waitcnt vmcnt(0)
s_barrier
s_cmp_lg_u32 s75, 0
s_cbranch_scc1 4
s_not_b32 s17, s78
s_add_u32 s17, s50, s17
s_cmp_lg_u32 s78, s17
s_cbranch_scc1 407
s_add_u32 s2, s2, s13
s_cmp_ge_u32 s2, s49
s_mov_b32 s75, 0
s_cbranch_scc1 373
s_lshl_b32 s17, s2, 5
s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0
s_mov_b64 s[24:25], -1
s_mov_b64 s[22:23], -1
s_branch 400
s_setprio 0
v_exp_f32_e32 v80, v80
v_exp_f32_e32 v81, v81
v_exp_f32_e32 v64, v64
v_exp_f32_e32 v65, v65
v_exp_f32_e32 v84, v84
v_exp_f32_e32 v85, v85
v_exp_f32_e32 v68, v68
v_exp_f32_e32 v69, v69
v_exp_f32_e32 v88, v88
v_exp_f32_e32 v89, v89
v_exp_f32_e32 v72, v72
v_exp_f32_e32 v73, v73
v_exp_f32_e32 v92, v92
v_exp_f32_e32 v93, v93
v_exp_f32_e32 v76, v76
v_exp_f32_e32 v77, v77
v_mov_b32_e32 v96, 0
v_mov_b32_e32 v100, 0
v_mov_b32_e32 v97, 0
v_mov_b32_e32 v101, 0
v_mov_b32_e32 v98, 0
v_mov_b32_e32 v102, 0
v_mov_b32_e32 v99, 0
v_mov_b32_e32 v103, 0
v_exp_f32_e32 v82, v82
v_exp_f32_e32 v83, v83
v_exp_f32_e32 v66, v66
v_exp_f32_e32 v67, v67
v_exp_f32_e32 v86, v86
v_exp_f32_e32 v87, v87
v_exp_f32_e32 v70, v70
v_exp_f32_e32 v71, v71
v_exp_f32_e32 v90, v90
v_exp_f32_e32 v91, v91
v_exp_f32_e32 v74, v74
v_exp_f32_e32 v75, v75
v_exp_f32_e32 v94, v94
v_exp_f32_e32 v95, v95
v_exp_f32_e32 v78, v78
v_exp_f32_e32 v79, v79
v_cvt_pk_fp8_f32 v96, v80, v81
v_cvt_pk_fp8_f32 v100, v64, v65
v_cvt_pk_fp8_f32 v97, v84, v85
v_cvt_pk_fp8_f32 v101, v68, v69
v_cvt_pk_fp8_f32 v98, v88, v89
v_cvt_pk_fp8_f32 v102, v72, v73
v_cvt_pk_fp8_f32 v99, v92, v93
v_cvt_pk_fp8_f32 v103, v76, v77
v_cvt_pk_fp8_f32 v96, v82, v83 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v100, v66, v67 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v97, v86, v87 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v101, v70, v71 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v98, v90, v91 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v102, v74, v75 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v99, v94, v95 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v103, v78, v79 op_sel:[0,0,1]
s_waitcnt vmcnt(0)
s_barrier
s_cmp_lg_u32 s75, 0
s_cbranch_scc1 4
s_not_b32 s17, s78
s_add_u32 s17, s50, s17
s_cmp_lg_u32 s78, s17
s_cbranch_scc1 530
s_add_u32 s2, s2, s13
s_cmp_ge_u32 s2, s49
s_mov_b32 s75, 0
s_cbranch_scc1 285
s_lshl_b32 s17, s2, 5
s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0
s_mov_b64 s[24:25], -1
s_mov_b64 s[22:23], -1
s_branch 523
s_mov_b64 s[20:21], 0
s_mov_b64 s[18:19], -1
s_add_u32 s22, s73, s80
s_and_b32 s28, s22, 3
s_and_b64 s[20:21], s[20:21], exec
s_cbranch_scc0 283
s_waitcnt lgkmcnt(0)
s_lshl_b64 s[20:21], s[20:21], 7
s_add_u32 s60, s38, s56
s_addc_u32 s61, s39, s57
s_add_u32 s64, s40, s20
s_addc_u32 s65, s41, s21
s_not_b32 s17, s52
s_add_u32 s17, s50, s17
s_and_b64 s[18:19], s[18:19], exec
s_cselect_b32 s17, s17, s52
s_lshl_b32 s18, s17, 5
s_add_u32 s18, s18, 32
s_mul_i32 s18, s18, s51
s_add_u32 s18, s18, 32
s_lshr_b32 s18, s18, 6
s_min_u32 s73, s12, s18
s_and_b64 s[18:19], s[0:1], exec
s_cbranch_scc0 69
s_lshr_b32 s18, s28, 1
s_lshl_b32 s19, s18, 15
s_bitcmp1_b32 s22, 0
s_cselect_b32 s20, 0x4000, 0
s_cselect_b32 s21, s83, 0x10000
s_or_b32 s19, s19, s20
s_or_b32 s19, s19, s33
s_lshl_b32 s18, s18, 14
buffer_load_dwordx4 v164, s[60:63], 0 offen lds
s_add_u32 m0, s19, 0x1000
s_or_b32 s18, s18, s21
buffer_load_dwordx4 v164, s[60:63], s87 offen lds
s_or_b32 m0, s19, 0x2000
s_or_b32 s18, s18, s33
buffer_load_dwordx4 v164, s[60:63], s48 offen lds
s_add_u32 m0, s19, 0x3000
s_mul_i32 s19, s6, 48
buffer_load_dwordx4 v164, s[60:63], s19 offen lds
s_nop 0
buffer_load_dwordx4 v166, s[64:67], 0 offen lds
s_add_u32 m0, s18, 0x1000
s_cmp_lt_u32 s73, 2
buffer_load_dwordx4 v166, s[64:67], s74 offen lds
s_cbranch_scc1 30
s_add_u32 s18, s28, 1
s_and_b32 s19, s18, 2
s_lshl_b32 s19, s19, 14
s_bitcmp1_b32 s18, 0
s_cselect_b32 s18, 0x4000, 0
s_or_b32 s18, s19, s18
s_or_b32 s18, s18, s33
s_mul_i32 s19, s6, 0x50
buffer_load_dwordx4 v164, s[60:63], s9 offen lds
s_add_u32 m0, s18, 0x1000
s_nop 0
buffer_load_dwordx4 v164, s[60:63], s19 offen lds
s_or_b32 m0, s18, 0x2000
s_mul_i32 s19, s6, 0x60
buffer_load_dwordx4 v164, s[60:63], s19 offen lds
s_add_u32 m0, s18, 0x3000
s_mul_i32 s18, s6, 0x70
buffer_load_dwordx4 v164, s[60:63], s18 offen lds
s_lshl_b64 s[18:19], s[18:19], 8
s_add_u32 s24, s36, s54
s_addc_u32 s25, s37, s55
s_add_u32 s20, s42, s18
s_addc_u32 s21, s43, s19
s_lshl_b64 s[18:19], s[22:23], 2
s_add_u32 s22, s44, s18
s_addc_u32 s23, s45, s19
s_mul_i32 s17, s17, s51
s_and_b64 s[18:19], exec, s[34:35]
s_cselect_b32 s19, 0, s23
s_cselect_b32 s18, 0, s22
s_add_u32 s22, s17, s72
s_lshl_b32 s17, s22, 5
v_or_b32_e32 v64, s17, v146
s_bfe_u32 s76, s22, 0x1a0001
v_mul_lo_u32 v64, s5, v64
v_add_u32_e32 v64, v167, v64
global_load_dwordx4 v[182:185], v64, s[24:25]
global_load_dwordx4 v[186:189], v64, s[24:25] offset:16
global_load_dwordx4 v[190:193], v64, s[24:25] offset:64
global_load_dwordx4 v[194:197], v64, s[24:25] offset:80
global_load_dwordx4 v[198:201], v64, s[24:25] offset:128
global_load_dwordx4 v[202:205], v64, s[24:25] offset:144
s_mov_b32 s67, 0x110000
s_mov_b64 s[22:23], -1
s_mov_b32 s79, 0x110000
s_branch 376
s_mov_b64 s[20:21], 0
s_mov_b64 s[18:19], -1
s_add_u32 s22, s73, s80
s_and_b32 s28, s22, 3
s_and_b64 s[20:21], s[20:21], exec
s_cbranch_scc0 157
s_waitcnt lgkmcnt(0)
s_lshl_b64 s[20:21], s[20:21], 7
s_add_u32 s60, s38, s56
s_addc_u32 s61, s39, s57
s_add_u32 s64, s40, s20
s_addc_u32 s65, s41, s21
s_not_b32 s17, s52
s_add_u32 s17, s50, s17
s_and_b64 s[18:19], s[18:19], exec
s_cselect_b32 s17, s17, s52
s_lshl_b32 s18, s17, 5
s_add_u32 s18, s18, 32
s_mul_i32 s18, s18, s51
s_add_u32 s18, s18, 32
s_lshr_b32 s18, s18, 6
s_min_u32 s73, s12, s18
s_and_b64 s[18:19], s[0:1], exec
s_cbranch_scc0 69
s_lshr_b32 s18, s28, 1
s_lshl_b32 s19, s18, 15
s_bitcmp1_b32 s22, 0
s_cselect_b32 s20, 0x4000, 0
s_cselect_b32 s21, s83, 0x10000
s_or_b32 s19, s19, s20
s_or_b32 s19, s19, s33
s_lshl_b32 s18, s18, 14
buffer_load_dwordx4 v164, s[60:63], 0 offen lds
s_add_u32 m0, s19, 0x1000
s_or_b32 s18, s18, s21
buffer_load_dwordx4 v164, s[60:63], s87 offen lds
s_or_b32 m0, s19, 0x2000
s_or_b32 s18, s18, s33
buffer_load_dwordx4 v164, s[60:63], s48 offen lds
s_add_u32 m0, s19, 0x3000
s_mul_i32 s19, s6, 48
buffer_load_dwordx4 v164, s[60:63], s19 offen lds
s_nop 0
buffer_load_dwordx4 v166, s[64:67], 0 offen lds
s_add_u32 m0, s18, 0x1000
s_cmp_lt_u32 s73, 2
buffer_load_dwordx4 v166, s[64:67], s74 offen lds
s_cbranch_scc1 30
s_add_u32 s18, s28, 1
s_and_b32 s19, s18, 2
s_lshl_b32 s19, s19, 14
s_bitcmp1_b32 s18, 0
s_cselect_b32 s18, 0x4000, 0
s_or_b32 s18, s19, s18
s_or_b32 s18, s18, s33
s_mul_i32 s19, s6, 0x50
buffer_load_dwordx4 v164, s[60:63], s9 offen lds
s_add_u32 m0, s18, 0x1000
s_nop 0
buffer_load_dwordx4 v164, s[60:63], s19 offen lds
s_or_b32 m0, s18, 0x2000
s_mul_i32 s19, s6, 0x60
buffer_load_dwordx4 v164, s[60:63], s19 offen lds
s_add_u32 m0, s18, 0x3000
s_mul_i32 s18, s6, 0x70
buffer_load_dwordx4 v164, s[60:63], s18 offen lds
s_lshl_b64 s[18:19], s[18:19], 8
s_add_u32 s24, s36, s54
s_addc_u32 s25, s37, s55
s_add_u32 s20, s42, s18
s_addc_u32 s21, s43, s19
s_lshl_b64 s[18:19], s[22:23], 2
s_add_u32 s22, s44, s18
s_addc_u32 s23, s45, s19
s_mul_i32 s17, s17, s51
s_and_b64 s[18:19], exec, s[34:35]
s_cselect_b32 s19, 0, s23
s_cselect_b32 s18, 0, s22
s_add_u32 s22, s17, s72
s_lshl_b32 s17, s22, 5
v_or_b32_e32 v64, s17, v146
s_bfe_u32 s76, s22, 0x1a0001
v_mul_lo_u32 v64, s5, v64
v_add_u32_e32 v64, v167, v64
global_load_dwordx4 v[182:185], v64, s[24:25]
global_load_dwordx4 v[186:189], v64, s[24:25] offset:16
global_load_dwordx4 v[190:193], v64, s[24:25] offset:64
global_load_dwordx4 v[194:197], v64, s[24:25] offset:80
global_load_dwordx4 v[198:201], v64, s[24:25] offset:128
global_load_dwordx4 v[202:205], v64, s[24:25] offset:144
s_mov_b32 s67, 0x110000
s_mov_b64 s[22:23], -1
s_mov_b32 s79, 0x110000
s_branch 452
s_mov_b64 s[22:23], 0
s_mov_b64 s[24:25], -1
s_branch 30
s_mov_b64 s[22:23], 0
s_mov_b64 s[24:25], -1
s_branch 241
s_mov_b64 s[20:21], -1
s_mov_b32 s75, 1
s_mov_b64 s[18:19], 0
s_add_u32 s22, s73, s80
s_and_b32 s28, s22, 3
s_and_b64 s[20:21], s[20:21], exec
s_cbranch_scc1 65253
s_mov_b64 s[22:23], 0
s_branch 220
s_mov_b64 s[20:21], -1
s_mov_b32 s75, 1
s_mov_b64 s[18:19], 0
s_add_u32 s22, s73, s80
s_and_b32 s28, s22, 3
s_and_b64 s[20:21], s[20:21], exec
s_cbranch_scc1 65379
s_mov_b64 s[22:23], 0
s_branch 422
s_mov_b64 s[22:23], -1
s_mov_b32 s75, 1
s_mov_b64 s[24:25], 0
s_add_u32 s26, s73, s80
s_and_b32 s28, s26, 3
s_and_b64 s[18:19], s[22:23], exec
s_cbranch_scc0 130
s_waitcnt lgkmcnt(0)
s_lshl_b64 s[18:19], s[18:19], 7
s_add_u32 s60, s38, s56
s_addc_u32 s61, s39, s57
s_add_u32 s64, s40, s18
s_addc_u32 s65, s41, s19
s_not_b32 s17, s52
s_add_u32 s17, s50, s17
s_and_b64 s[18:19], s[24:25], exec
s_cselect_b32 s17, s17, s52
s_lshl_b32 s18, s17, 5
s_add_u32 s18, s18, 32
s_mul_i32 s18, s18, s51
s_add_u32 s18, s18, 32
s_lshr_b32 s18, s18, 6
s_min_u32 s73, s12, s18
s_and_b64 s[18:19], s[0:1], exec
s_cbranch_scc0 69
s_lshr_b32 s18, s28, 1
s_lshl_b32 s19, s18, 15
s_bitcmp1_b32 s26, 0
s_cselect_b32 s20, 0x4000, 0
s_cselect_b32 s21, s83, 0x10000
s_or_b32 s19, s19, s20
s_or_b32 s19, s19, s33
s_lshl_b32 s18, s18, 14
buffer_load_dwordx4 v164, s[60:63], 0 offen lds
s_add_u32 m0, s19, 0x1000
s_or_b32 s18, s18, s21
buffer_load_dwordx4 v164, s[60:63], s87 offen lds
s_or_b32 m0, s19, 0x2000
s_or_b32 s18, s18, s33
buffer_load_dwordx4 v164, s[60:63], s48 offen lds
s_add_u32 m0, s19, 0x3000
s_mul_i32 s19, s6, 48
buffer_load_dwordx4 v164, s[60:63], s19 offen lds
s_nop 0
buffer_load_dwordx4 v166, s[64:67], 0 offen lds
s_add_u32 m0, s18, 0x1000
s_cmp_lt_u32 s73, 2
buffer_load_dwordx4 v166, s[64:67], s74 offen lds
s_cbranch_scc1 30
s_add_u32 s18, s28, 1
s_and_b32 s19, s18, 2
s_lshl_b32 s19, s19, 14
s_bitcmp1_b32 s18, 0
s_cselect_b32 s18, 0x4000, 0
s_or_b32 s18, s19, s18
s_or_b32 s18, s18, s33
s_mul_i32 s19, s6, 0x50
buffer_load_dwordx4 v164, s[60:63], s9 offen lds
s_add_u32 m0, s18, 0x1000
s_nop 0
buffer_load_dwordx4 v164, s[60:63], s19 offen lds
s_or_b32 m0, s18, 0x2000
s_mul_i32 s19, s6, 0x60
buffer_load_dwordx4 v164, s[60:63], s19 offen lds
s_add_u32 m0, s18, 0x3000
s_mul_i32 s18, s6, 0x70
buffer_load_dwordx4 v164, s[60:63], s18 offen lds
s_lshl_b64 s[18:19], s[18:19], 8
s_add_u32 s26, s36, s54
s_addc_u32 s27, s37, s55
s_add_u32 s20, s42, s18
s_addc_u32 s21, s43, s19
s_lshl_b64 s[18:19], s[24:25], 2
s_add_u32 s24, s44, s18
s_addc_u32 s25, s45, s19
s_mul_i32 s17, s17, s51
s_and_b64 s[18:19], exec, s[34:35]
s_cselect_b32 s19, 0, s25
s_cselect_b32 s18, 0, s24
s_add_u32 s24, s17, s72
s_lshl_b32 s17, s24, 5
v_or_b32_e32 v64, s17, v146
s_bfe_u32 s76, s24, 0x1a0001
v_mul_lo_u32 v64, s5, v64
v_add_u32_e32 v64, v167, v64
global_load_dwordx4 v[182:185], v64, s[26:27]
global_load_dwordx4 v[186:189], v64, s[26:27] offset:16
global_load_dwordx4 v[190:193], v64, s[26:27] offset:64
global_load_dwordx4 v[194:197], v64, s[26:27] offset:80
global_load_dwordx4 v[198:201], v64, s[26:27] offset:128
global_load_dwordx4 v[202:205], v64, s[26:27] offset:144
s_mov_b32 s67, 0x110000
s_mov_b32 s79, 0x110000
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[96:103], 0
s_add_u32 s24, s77, s80
s_and_b32 s25, s24, 2
s_lshl_b32 s25, s25, 13
s_bitcmp1_b32 s24, 0
s_cselect_b32 s24, s83, 0x10000
s_or_b32 s25, s25, s24
s_nop 5
v_or_b32_e32 v65, s25, v173
v_add_u32_e32 v65, v65, v172
s_waitcnt vmcnt(6)
ds_read_b64_tr_b8 v[66:67], v65
ds_read_b64_tr_b8 v[68:69], v65 offset:1024
ds_read_b64_tr_b8 v[70:71], v65 offset:2048
ds_read_b64_tr_b8 v[72:73], v65 offset:3072
ds_read_b64_tr_b8 v[74:75], v65 offset:256
ds_read_b64_tr_b8 v[76:77], v65 offset:1280
ds_read_b64_tr_b8 v[78:79], v65 offset:2304
ds_read_b64_tr_b8 v[80:81], v65 offset:3328
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[66:73], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]
v_lshlrev_b32_e32 v66, 23, v180
v_fma_f32 v179, v64, v66, v179
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[74:81], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[66:67], v65 offset:512
ds_read_b64_tr_b8 v[68:69], v65 offset:1536
ds_read_b64_tr_b8 v[70:71], v65 offset:2560
ds_read_b64_tr_b8 v[72:73], v65 offset:3584
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[66:73], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[74:75], v65 offset:768
ds_read_b64_tr_b8 v[76:77], v65 offset:1792
ds_read_b64_tr_b8 v[78:79], v65 offset:2816
ds_read_b64_tr_b8 v[80:81], v65 offset:3840
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[74:81], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]
s_waitcnt vmcnt(6)
s_barrier
s_and_b64 s[22:23], s[22:23], exec
s_cbranch_scc1 214
s_branch 466
s_mov_b64 s[22:23], -1
s_mov_b32 s75, 1
s_mov_b64 s[24:25], 0
s_add_u32 s26, s73, s80
s_and_b32 s28, s26, 3
s_and_b64 s[18:19], s[22:23], exec
s_cbranch_scc0 130
s_waitcnt lgkmcnt(0)
s_lshl_b64 s[18:19], s[18:19], 7
s_add_u32 s60, s38, s56
s_addc_u32 s61, s39, s57
s_add_u32 s64, s40, s18
s_addc_u32 s65, s41, s19
s_not_b32 s17, s52
s_add_u32 s17, s50, s17
s_and_b64 s[18:19], s[24:25], exec
s_cselect_b32 s17, s17, s52
s_lshl_b32 s18, s17, 5
s_add_u32 s18, s18, 32
s_mul_i32 s18, s18, s51
s_add_u32 s18, s18, 32
s_lshr_b32 s18, s18, 6
s_min_u32 s73, s12, s18
s_and_b64 s[18:19], s[0:1], exec
s_cbranch_scc0 69
s_lshr_b32 s18, s28, 1
s_lshl_b32 s19, s18, 15
s_bitcmp1_b32 s26, 0
s_cselect_b32 s20, 0x4000, 0
s_cselect_b32 s21, s83, 0x10000
s_or_b32 s19, s19, s20
s_or_b32 s19, s19, s33
s_lshl_b32 s18, s18, 14
buffer_load_dwordx4 v164, s[60:63], 0 offen lds
s_add_u32 m0, s19, 0x1000
s_or_b32 s18, s18, s21
buffer_load_dwordx4 v164, s[60:63], s87 offen lds
s_or_b32 m0, s19, 0x2000
s_or_b32 s18, s18, s33
buffer_load_dwordx4 v164, s[60:63], s48 offen lds
s_add_u32 m0, s19, 0x3000
s_mul_i32 s19, s6, 48
buffer_load_dwordx4 v164, s[60:63], s19 offen lds
s_nop 0
buffer_load_dwordx4 v166, s[64:67], 0 offen lds
s_add_u32 m0, s18, 0x1000
s_cmp_lt_u32 s73, 2
buffer_load_dwordx4 v166, s[64:67], s74 offen lds
s_cbranch_scc1 30
s_add_u32 s18, s28, 1
s_and_b32 s19, s18, 2
s_lshl_b32 s19, s19, 14
s_bitcmp1_b32 s18, 0
s_cselect_b32 s18, 0x4000, 0
s_or_b32 s18, s19, s18
s_or_b32 s18, s18, s33
s_mul_i32 s19, s6, 0x50
buffer_load_dwordx4 v164, s[60:63], s9 offen lds
s_add_u32 m0, s18, 0x1000
s_nop 0
buffer_load_dwordx4 v164, s[60:63], s19 offen lds
s_or_b32 m0, s18, 0x2000
s_mul_i32 s19, s6, 0x60
buffer_load_dwordx4 v164, s[60:63], s19 offen lds
s_add_u32 m0, s18, 0x3000
s_mul_i32 s18, s6, 0x70
buffer_load_dwordx4 v164, s[60:63], s18 offen lds
s_lshl_b64 s[18:19], s[18:19], 8
s_add_u32 s26, s36, s54
s_addc_u32 s27, s37, s55
s_add_u32 s20, s42, s18
s_addc_u32 s21, s43, s19
s_lshl_b64 s[18:19], s[24:25], 2
s_add_u32 s24, s44, s18
s_addc_u32 s25, s45, s19
s_mul_i32 s17, s17, s51
s_and_b64 s[18:19], exec, s[34:35]
s_cselect_b32 s19, 0, s25
s_cselect_b32 s18, 0, s24
s_add_u32 s24, s17, s72
s_lshl_b32 s17, s24, 5
v_or_b32_e32 v64, s17, v146
s_bfe_u32 s76, s24, 0x1a0001
v_mul_lo_u32 v64, s5, v64
v_add_u32_e32 v64, v167, v64
global_load_dwordx4 v[182:185], v64, s[26:27]
global_load_dwordx4 v[186:189], v64, s[26:27] offset:16
global_load_dwordx4 v[190:193], v64, s[26:27] offset:64
global_load_dwordx4 v[194:197], v64, s[26:27] offset:80
global_load_dwordx4 v[198:201], v64, s[26:27] offset:128
global_load_dwordx4 v[202:205], v64, s[26:27] offset:144
s_mov_b32 s67, 0x110000
s_mov_b32 s79, 0x110000
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[96:103], 0
s_add_u32 s24, s77, s80
s_and_b32 s25, s24, 2
s_lshl_b32 s25, s25, 13
s_bitcmp1_b32 s24, 0
s_cselect_b32 s24, s83, 0x10000
s_or_b32 s25, s25, s24
s_nop 5
v_or_b32_e32 v65, s25, v173
v_add_u32_e32 v65, v65, v172
s_waitcnt vmcnt(6)
ds_read_b64_tr_b8 v[66:67], v65
ds_read_b64_tr_b8 v[68:69], v65 offset:1024
ds_read_b64_tr_b8 v[70:71], v65 offset:2048
ds_read_b64_tr_b8 v[72:73], v65 offset:3072
ds_read_b64_tr_b8 v[74:75], v65 offset:256
ds_read_b64_tr_b8 v[76:77], v65 offset:1280
ds_read_b64_tr_b8 v[78:79], v65 offset:2304
ds_read_b64_tr_b8 v[80:81], v65 offset:3328
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[66:73], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]
v_lshlrev_b32_e32 v66, 23, v180
v_fma_f32 v179, v64, v66, v179
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[74:81], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[66:67], v65 offset:512
ds_read_b64_tr_b8 v[68:69], v65 offset:1536
ds_read_b64_tr_b8 v[70:71], v65 offset:2560
ds_read_b64_tr_b8 v[72:73], v65 offset:3584
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[66:73], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[74:75], v65 offset:768
ds_read_b64_tr_b8 v[76:77], v65 offset:1792
ds_read_b64_tr_b8 v[78:79], v65 offset:2816
ds_read_b64_tr_b8 v[80:81], v65 offset:3840
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[74:81], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]
s_waitcnt vmcnt(6)
s_barrier
s_and_b64 s[22:23], s[22:23], exec
s_cbranch_scc0 253
s_nop 15
s_nop 3
v_rcp_f32_e32 v64, v179
v_log_f32_e32 v65, v179
s_nop 1
v_mul_f32_e32 v64, v168, v64
v_mul_f32_e32 v48, v48, v64
v_mul_f32_e32 v49, v49, v64
v_mul_f32_e32 v50, v50, v64
v_mul_f32_e32 v51, v51, v64
v_mul_f32_e32 v52, v52, v64
v_mul_f32_e32 v53, v53, v64
v_mul_f32_e32 v54, v54, v64
v_mul_f32_e32 v55, v55, v64
v_mul_f32_e32 v56, v56, v64
v_mul_f32_e32 v57, v57, v64
v_mul_f32_e32 v58, v58, v64
v_mul_f32_e32 v59, v59, v64
v_mul_f32_e32 v60, v60, v64
v_mul_f32_e32 v61, v61, v64
v_mul_f32_e32 v62, v62, v64
v_mul_f32_e32 v63, v63, v64
v_mul_f32_e32 v32, v32, v64
v_mul_f32_e32 v33, v33, v64
v_mul_f32_e32 v34, v34, v64
v_mul_f32_e32 v35, v35, v64
v_mul_f32_e32 v36, v36, v64
v_mul_f32_e32 v37, v37, v64
v_mul_f32_e32 v38, v38, v64
v_mul_f32_e32 v39, v39, v64
v_mul_f32_e32 v40, v40, v64
v_mul_f32_e32 v41, v41, v64
v_mul_f32_e32 v42, v42, v64
v_mul_f32_e32 v43, v43, v64
v_mul_f32_e32 v44, v44, v64
v_mul_f32_e32 v45, v45, v64
v_mul_f32_e32 v46, v46, v64
v_mul_f32_e32 v47, v47, v64
v_mul_f32_e32 v66, v16, v64
v_mul_f32_e32 v67, v17, v64
v_mul_f32_e32 v18, v18, v64
v_mul_f32_e32 v19, v19, v64
v_mul_f32_e32 v68, v20, v64
v_mul_f32_e32 v21, v21, v64
v_mul_f32_e32 v22, v22, v64
v_mul_f32_e32 v23, v23, v64
v_mul_f32_e32 v24, v24, v64
v_mul_f32_e32 v25, v25, v64
v_mul_f32_e32 v26, v26, v64
v_mul_f32_e32 v27, v27, v64
v_mul_f32_e32 v28, v28, v64
v_mul_f32_e32 v29, v29, v64
v_mul_f32_e32 v30, v30, v64
v_mul_f32_e32 v31, v31, v64
v_mul_f32_e32 v0, v0, v64
v_mul_f32_e32 v1, v1, v64
v_mul_f32_e32 v69, v2, v64
v_mul_f32_e32 v70, v3, v64
v_mul_f32_e32 v71, v4, v64
v_mul_f32_e32 v72, v5, v64
v_mul_f32_e32 v73, v6, v64
v_mul_f32_e32 v74, v7, v64
v_mul_f32_e32 v75, v8, v64
v_mul_f32_e32 v76, v9, v64
v_mul_f32_e32 v77, v10, v64
v_mul_f32_e32 v78, v11, v64
v_mul_f32_e32 v79, v12, v64
v_mul_f32_e32 v80, v13, v64
v_mul_f32_e32 v81, v14, v64
v_mul_f32_e32 v64, v15, v64
v_cvt_pk_bf16_f32 v4, v48, v49
v_cvt_pk_bf16_f32 v2, v50, v51
v_cvt_pk_bf16_f32 v5, v52, v53
v_cvt_pk_bf16_f32 v3, v54, v55
v_cvt_pk_bf16_f32 v8, v56, v57
v_cvt_pk_bf16_f32 v6, v58, v59
v_cvt_pk_bf16_f32 v9, v60, v61
v_cvt_pk_bf16_f32 v7, v62, v63
v_cvt_pk_bf16_f32 v12, v32, v33
v_cvt_pk_bf16_f32 v10, v34, v35
v_cvt_pk_bf16_f32 v13, v36, v37
v_cvt_pk_bf16_f32 v11, v38, v39
v_cvt_pk_bf16_f32 v16, v40, v41
v_cvt_pk_bf16_f32 v14, v42, v43
v_cvt_pk_bf16_f32 v17, v44, v45
v_cvt_pk_bf16_f32 v15, v46, v47
v_cvt_pk_bf16_f32 v20, v66, v67
v_cvt_pk_bf16_f32 v18, v18, v19
v_cvt_pk_bf16_f32 v21, v68, v21
v_cvt_pk_bf16_f32 v19, v22, v23
v_cvt_pk_bf16_f32 v24, v24, v25
v_cvt_pk_bf16_f32 v22, v26, v27
v_cvt_pk_bf16_f32 v25, v28, v29
v_cvt_pk_bf16_f32 v23, v30, v31
v_cvt_pk_bf16_f32 v28, v0, v1
v_cvt_pk_bf16_f32 v26, v69, v70
v_cvt_pk_bf16_f32 v29, v71, v72
v_cvt_pk_bf16_f32 v27, v73, v74
v_cvt_pk_bf16_f32 v32, v75, v76
v_cvt_pk_bf16_f32 v30, v77, v78
v_cvt_pk_bf16_f32 v33, v79, v80
v_cvt_pk_bf16_f32 v31, v81, v64
v_permlane32_swap_b32_e32 v4, v5
v_permlane32_swap_b32_e32 v2, v3
v_permlane32_swap_b32_e32 v8, v9
v_permlane32_swap_b32_e32 v6, v7
v_permlane32_swap_b32_e32 v12, v13
v_permlane32_swap_b32_e32 v10, v11
v_permlane32_swap_b32_e32 v16, v17
v_permlane32_swap_b32_e32 v14, v15
v_permlane32_swap_b32_e32 v20, v21
v_permlane32_swap_b32_e32 v18, v19
v_permlane32_swap_b32_e32 v24, v25
v_permlane32_swap_b32_e32 v22, v23
v_permlane32_swap_b32_e32 v28, v29
v_permlane32_swap_b32_e32 v26, v27
v_permlane32_swap_b32_e32 v32, v33
v_permlane32_swap_b32_e32 v30, v31
ds_write_b128 v158, v[0:3]
ds_write_b128 v160, v[4:7]
ds_write_b128 v159, v[8:11]
ds_write_b128 v157, v[12:15]
ds_write_b128 v156, v[16:19]
ds_write_b128 v155, v[20:23]
ds_write_b128 v154, v[24:27]
ds_write_b128 v153, v[28:31]
ds_read_b128 v[8:11], v149
ds_read_b128 v[12:15], v152 offset:1024
ds_read_b128 v[16:19], v151 offset:2048
ds_read_b128 v[20:23], v150 offset:3072
ds_read_b128 v[24:27], v149 offset:4096
ds_read_b128 v[28:31], v152 offset:5120
ds_read_b128 v[32:35], v151 offset:6144
ds_read_b128 v[36:39], v150 offset:7168
v_add_u32_e32 v0, s3, v147
v_mul_lo_u32 v0, s8, v0
v_add_u32_e32 v0, v0, v148
v_add_u32_e32 v1, s4, v0
v_add_u32_e32 v2, s4, v1
v_add_u32_e32 v3, s4, v2
v_add_u32_e32 v4, s4, v3
v_add_u32_e32 v5, s4, v4
v_add_u32_e32 v6, s4, v5
v_add_u32_e32 v7, s4, v6
s_waitcnt lgkmcnt(0)
global_store_dwordx4 v0, v[8:11], s[10:11]
s_waitcnt lgkmcnt(6)
global_store_dwordx4 v1, v[12:15], s[10:11]
s_waitcnt lgkmcnt(5)
global_store_dwordx4 v2, v[16:19], s[10:11]
s_waitcnt lgkmcnt(4)
global_store_dwordx4 v3, v[20:23], s[10:11]
s_waitcnt lgkmcnt(3)
global_store_dwordx4 v4, v[24:27], s[10:11]
s_waitcnt lgkmcnt(2)
global_store_dwordx4 v5, v[28:31], s[10:11]
s_waitcnt lgkmcnt(1)
global_store_dwordx4 v6, v[32:35], s[10:11]
s_waitcnt lgkmcnt(0)
global_store_dwordx4 v7, v[36:39], s[10:11]
v_add_f32_e32 v0, v178, v65
v_add_f32_e32 v0, -4.0, v0
v_add_f32_e32 v0, -2.0, v0
v_mul_f32_e32 v0, 0x3f317218, v0
v_add_u32_e32 v1, s3, v146
v_lshlrev_b32_e32 v1, 2, v1
s_cmp_eq_u64 s[14:15], 0
s_cbranch_scc0 61219
s_branch 60464
s_nop 15
s_nop 3
v_rcp_f32_e32 v64, v179
v_log_f32_e32 v65, v179
s_nop 1
v_mul_f32_e32 v64, v168, v64
v_mul_f32_e32 v48, v48, v64
v_mul_f32_e32 v49, v49, v64
v_mul_f32_e32 v50, v50, v64
v_mul_f32_e32 v51, v51, v64
v_mul_f32_e32 v52, v52, v64
v_mul_f32_e32 v53, v53, v64
v_mul_f32_e32 v54, v54, v64
v_mul_f32_e32 v55, v55, v64
v_mul_f32_e32 v56, v56, v64
v_mul_f32_e32 v57, v57, v64
v_mul_f32_e32 v58, v58, v64
v_mul_f32_e32 v59, v59, v64
v_mul_f32_e32 v60, v60, v64
v_mul_f32_e32 v61, v61, v64
v_mul_f32_e32 v62, v62, v64
v_mul_f32_e32 v63, v63, v64
v_mul_f32_e32 v32, v32, v64
v_mul_f32_e32 v33, v33, v64
v_mul_f32_e32 v34, v34, v64
v_mul_f32_e32 v35, v35, v64
v_mul_f32_e32 v36, v36, v64
v_mul_f32_e32 v37, v37, v64
v_mul_f32_e32 v38, v38, v64
v_mul_f32_e32 v39, v39, v64
v_mul_f32_e32 v40, v40, v64
v_mul_f32_e32 v41, v41, v64
v_mul_f32_e32 v42, v42, v64
v_mul_f32_e32 v43, v43, v64
v_mul_f32_e32 v44, v44, v64
v_mul_f32_e32 v45, v45, v64
v_mul_f32_e32 v46, v46, v64
v_mul_f32_e32 v47, v47, v64
v_mul_f32_e32 v66, v16, v64
v_mul_f32_e32 v67, v17, v64
v_mul_f32_e32 v18, v18, v64
v_mul_f32_e32 v19, v19, v64
v_mul_f32_e32 v68, v20, v64
v_mul_f32_e32 v21, v21, v64
v_mul_f32_e32 v22, v22, v64
v_mul_f32_e32 v23, v23, v64
v_mul_f32_e32 v24, v24, v64
v_mul_f32_e32 v25, v25, v64
v_mul_f32_e32 v26, v26, v64
v_mul_f32_e32 v27, v27, v64
v_mul_f32_e32 v28, v28, v64
v_mul_f32_e32 v29, v29, v64
v_mul_f32_e32 v30, v30, v64
v_mul_f32_e32 v31, v31, v64
v_mul_f32_e32 v0, v0, v64
v_mul_f32_e32 v1, v1, v64
v_mul_f32_e32 v69, v2, v64
v_mul_f32_e32 v70, v3, v64
v_mul_f32_e32 v71, v4, v64
v_mul_f32_e32 v72, v5, v64
v_mul_f32_e32 v73, v6, v64
v_mul_f32_e32 v74, v7, v64
v_mul_f32_e32 v75, v8, v64
v_mul_f32_e32 v76, v9, v64
v_mul_f32_e32 v77, v10, v64
v_mul_f32_e32 v78, v11, v64
v_mul_f32_e32 v79, v12, v64
v_mul_f32_e32 v80, v13, v64
v_mul_f32_e32 v81, v14, v64
v_mul_f32_e32 v64, v15, v64
v_cvt_pk_bf16_f32 v4, v48, v49
v_cvt_pk_bf16_f32 v2, v50, v51
v_cvt_pk_bf16_f32 v5, v52, v53
v_cvt_pk_bf16_f32 v3, v54, v55
v_cvt_pk_bf16_f32 v8, v56, v57
v_cvt_pk_bf16_f32 v6, v58, v59
v_cvt_pk_bf16_f32 v9, v60, v61
v_cvt_pk_bf16_f32 v7, v62, v63
v_cvt_pk_bf16_f32 v12, v32, v33
v_cvt_pk_bf16_f32 v10, v34, v35
v_cvt_pk_bf16_f32 v13, v36, v37
v_cvt_pk_bf16_f32 v11, v38, v39
v_cvt_pk_bf16_f32 v16, v40, v41
v_cvt_pk_bf16_f32 v14, v42, v43
v_cvt_pk_bf16_f32 v17, v44, v45
v_cvt_pk_bf16_f32 v15, v46, v47
v_cvt_pk_bf16_f32 v20, v66, v67
v_cvt_pk_bf16_f32 v18, v18, v19
v_cvt_pk_bf16_f32 v21, v68, v21
v_cvt_pk_bf16_f32 v19, v22, v23
v_cvt_pk_bf16_f32 v24, v24, v25
v_cvt_pk_bf16_f32 v22, v26, v27
v_cvt_pk_bf16_f32 v25, v28, v29
v_cvt_pk_bf16_f32 v23, v30, v31
v_cvt_pk_bf16_f32 v28, v0, v1
v_cvt_pk_bf16_f32 v26, v69, v70
v_cvt_pk_bf16_f32 v29, v71, v72
v_cvt_pk_bf16_f32 v27, v73, v74
v_cvt_pk_bf16_f32 v32, v75, v76
v_cvt_pk_bf16_f32 v30, v77, v78
v_cvt_pk_bf16_f32 v33, v79, v80
v_cvt_pk_bf16_f32 v31, v81, v64
v_permlane32_swap_b32_e32 v4, v5
v_permlane32_swap_b32_e32 v2, v3
v_permlane32_swap_b32_e32 v8, v9
v_permlane32_swap_b32_e32 v6, v7
v_permlane32_swap_b32_e32 v12, v13
v_permlane32_swap_b32_e32 v10, v11
v_permlane32_swap_b32_e32 v16, v17
v_permlane32_swap_b32_e32 v14, v15
v_permlane32_swap_b32_e32 v20, v21
v_permlane32_swap_b32_e32 v18, v19
v_permlane32_swap_b32_e32 v24, v25
v_permlane32_swap_b32_e32 v22, v23
v_permlane32_swap_b32_e32 v28, v29
v_permlane32_swap_b32_e32 v26, v27
v_permlane32_swap_b32_e32 v32, v33
v_permlane32_swap_b32_e32 v30, v31
ds_write_b128 v158, v[0:3]
ds_write_b128 v160, v[4:7]
ds_write_b128 v159, v[8:11]
ds_write_b128 v157, v[12:15]
ds_write_b128 v156, v[16:19]
ds_write_b128 v155, v[20:23]
ds_write_b128 v154, v[24:27]
ds_write_b128 v153, v[28:31]
ds_read_b128 v[8:11], v149
ds_read_b128 v[12:15], v152 offset:1024
ds_read_b128 v[16:19], v151 offset:2048
ds_read_b128 v[20:23], v150 offset:3072
ds_read_b128 v[24:27], v149 offset:4096
ds_read_b128 v[28:31], v152 offset:5120
ds_read_b128 v[32:35], v151 offset:6144
ds_read_b128 v[36:39], v150 offset:7168
v_add_u32_e32 v0, s3, v147
v_mul_lo_u32 v0, s8, v0
v_add_u32_e32 v0, v0, v148
v_add_u32_e32 v1, s4, v0
v_add_u32_e32 v2, s4, v1
v_add_u32_e32 v3, s4, v2
v_add_u32_e32 v4, s4, v3
v_add_u32_e32 v5, s4, v4
v_add_u32_e32 v6, s4, v5
v_add_u32_e32 v7, s4, v6
s_waitcnt lgkmcnt(0)
global_store_dwordx4 v0, v[8:11], s[10:11]
s_waitcnt lgkmcnt(6)
global_store_dwordx4 v1, v[12:15], s[10:11]
s_waitcnt lgkmcnt(5)
global_store_dwordx4 v2, v[16:19], s[10:11]
s_waitcnt lgkmcnt(4)
global_store_dwordx4 v3, v[20:23], s[10:11]
s_waitcnt lgkmcnt(3)
global_store_dwordx4 v4, v[24:27], s[10:11]
s_waitcnt lgkmcnt(2)
global_store_dwordx4 v5, v[28:31], s[10:11]
s_waitcnt lgkmcnt(1)
global_store_dwordx4 v6, v[32:35], s[10:11]
s_waitcnt lgkmcnt(0)
global_store_dwordx4 v7, v[36:39], s[10:11]
v_add_f32_e32 v0, v178, v65
v_add_f32_e32 v0, -4.0, v0
v_add_f32_e32 v0, -2.0, v0
v_mul_f32_e32 v0, 0x3f317218, v0
v_add_u32_e32 v1, s3, v146
v_lshlrev_b32_e32 v1, 2, v1
s_cmp_eq_u64 s[14:15], 0
s_cbranch_scc1 2
global_store_dword v1, v0, s[14:15]
s_and_b64 s[0:1], s[0:1], exec
s_cbranch_scc0 1
s_barrier
s_waitcnt vmcnt(0)
s_endpgm
