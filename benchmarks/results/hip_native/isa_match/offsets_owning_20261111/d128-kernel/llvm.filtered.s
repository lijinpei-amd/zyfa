s_load_dwordx16 s[36:51], s[0:1], 0x0
s_load_dwordx16 s[4:19], s[0:1], 0x40
s_load_dwordx4 s[20:23], s[0:1], 0x80
s_load_dwordx2 s[24:25], s[0:1], 0x90
v_bfe_u32 v1, v0, 5, 1
v_lshrrev_b32_e32 v2, 2, v0
v_and_b32_e32 v216, 31, v0
v_xor_b32_e32 v3, v1, v2
s_movk_i32 s1, 0x60
v_lshlrev_b32_e32 v4, 7, v216
v_lshlrev_b32_e32 v3, 5, v3
v_and_or_b32 v231, v3, s1, v4
v_readfirstlane_b32 s0, v0
v_xor_b32_e32 v232, 64, v231
s_waitcnt lgkmcnt(0)
s_cmp_eq_u64 s[20:21], 0
s_cbranch_scc1 14
s_load_dword s1, s[20:21], 0x0
s_cmp_eq_u64 s[22:23], 0
s_cbranch_scc1 13
s_load_dword s3, s[22:23], 0x0
s_waitcnt lgkmcnt(0)
v_mul_f32_e32 v3, s1, v3
s_cmp_eq_u64 s[24:25], 0
s_cbranch_scc1 10
s_load_dword s17, s[24:25], 0x0
s_branch 8
s_mov_b32 s1, 1.0
s_cmp_eq_u64 s[22:23], 0
s_cbranch_scc0 65523
s_waitcnt lgkmcnt(0)
s_cmp_eq_u64 s[24:25], 0
s_cbranch_scc0 65526
s_mov_b32 s17, 1.0
v_and_b32_e32 v6, 1, v0
v_bfe_u32 v5, v0, 1, 2
s_mov_b32 s1, 1
v_lshlrev_b32_e32 v7, 4, v6
v_lshrrev_b32_e32 v4, 3, v0
v_lshrrev_b32_e32 v8, 5, v0
v_xor_b32_e32 v8, v5, v8
v_and_b32_e32 v8, 3, v8
v_lshlrev_b32_e32 v8, 5, v8
v_or_b32_e32 v8, v8, v7
v_mul_lo_u32 v9, s8, v4
v_add_u32_e32 v233, v9, v8
v_or_b32_e32 v8, 0x200, v0
v_lshrrev_b32_e32 v9, 3, v8
v_lshrrev_b32_e32 v10, 5, v8
v_xor_b32_e32 v5, v5, v10
v_and_b32_e32 v5, 3, v5
v_lshlrev_b32_e32 v5, 5, v5
v_or_b32_e32 v5, v5, v7
v_mul_lo_u32 v6, s8, v9
v_add_u32_e32 v234, v6, v5
v_lshrrev_b32_e32 v5, 7, v0
v_bfe_u32 v6, v0, 6, 1
v_bfe_u32 v7, v0, 2, 1
v_bfe_u32 v10, v0, 3, 3
v_and_b32_e32 v9, 3, v0
v_lshlrev_b32_e32 v11, 5, v5
v_lshlrev_b32_e32 v12, 4, v6
v_lshlrev_b32_e32 v13, 3, v7
v_lshlrev_b32_e32 v14, 4, v10
s_mov_b32 s3, 0
v_or_b32_e32 v15, v11, v12
v_or_b32_e32 v15, v15, v13
v_or_b32_e32 v15, v15, v9
v_mul_lo_u32 v15, s8, v15
v_add_u32_e32 v235, v15, v14
v_or_b32_e32 v5, 4, v11
v_or_b32_e32 v5, v5, v12
v_or_b32_e32 v5, v5, v13
v_or_b32_e32 v5, v5, v9
v_mul_lo_u32 v5, s8, v5
v_add_u32_e32 v236, v5, v14
s_cmp_ge_u32 s2, s51
s_cbranch_scc1 9164
s_lshr_b32 s1, s0, 6
s_lshl_b32 s33, s8, 7
s_lshr_b32 s21, s0, 8
s_bfe_u32 s20, s0, 0x20006
s_lshl_b32 s88, s1, 10
s_cmp_eq_u32 s6, 0
s_cselect_b32 s16, s1, s20
s_cselect_b32 s18, 0, s21
s_lshl_b32 s0, s2, 5
s_load_dwordx8 s[68:75], s[46:47], s0 offset:0x0
s_mul_i32 s6, s18, s10
s_mul_i32 s78, s8, s13
s_mov_b32 s79, 0x110000
v_writelane_b32 v255, s16, 0
s_waitcnt lgkmcnt(0)
s_add_u32 s0, s36, s70
s_addc_u32 s1, s37, s71
s_add_u32 s0, s0, s6
s_addc_u32 s1, s1, 0
s_add_u32 s76, s38, s72
s_addc_u32 s77, s39, s73
s_add_u32 s80, s40, s72
s_addc_u32 s81, s41, s73
s_not_b32 s3, s68
s_add_u32 s3, s4, s3
s_mul_i32 s10, s3, s5
s_lshl_b32 s3, s3, 5
s_lshr_b32 s19, s13, 7
s_add_u32 s10, s10, s16
s_add_u32 s13, s3, 32
s_lshl_b32 s3, s10, 5
s_mul_i32 s10, s13, s5
s_addk_i32 s10, 0x60
s_lshr_b32 s10, s10, 7
v_or_b32_e32 v5, s3, v216
v_writelane_b32 v255, s19, 1
s_min_u32 s91, s19, s10
v_mul_lo_u32 v5, v5, s7
v_lshlrev_b32_e32 v6, 5, v1
v_add_u32_e32 v5, v6, v5
global_load_dwordx4 v[220:223], v5, s[0:1]
global_load_dwordx4 v[224:227], v5, s[0:1] offset:16
global_load_dwordx4 v[200:203], v5, s[0:1] offset:64
global_load_dwordx4 v[204:207], v5, s[0:1] offset:80
s_or_b32 s0, s88, 0x10000
buffer_load_dwordx4 v233, s[76:79], 0 offen lds
s_or_b32 m0, s88, 0x2000
s_nop 0
buffer_load_dwordx4 v234, s[76:79], 0 offen lds
s_nop 0
buffer_load_dwordx4 v235, s[80:83], 0 offen lds
s_or_b32 m0, s88, 0x12000
s_cmp_lt_u32 s91, 2
buffer_load_dwordx4 v236, s[80:83], 0 offen lds
s_cbranch_scc1 10
s_add_u32 m0, s0, 0xffff4000
s_nop 0
buffer_load_dwordx4 v233, s[76:79], s33 offen lds
s_add_u32 m0, s0, 0xffff6000
s_nop 0
buffer_load_dwordx4 v234, s[76:79], s33 offen lds
v_and_b32_e32 v5, 63, v0
s_waitcnt vmcnt(0)
s_barrier
s_cmp_eq_u32 s21, 0
s_mov_b32 s16, 0
s_cbranch_scc1 1
s_barrier
s_add_u32 s0, s42, s74
s_mul_i32 s22, s18, s11
s_addc_u32 s1, s43, s75
s_add_u32 s0, s0, s22
s_addc_u32 s1, s1, 0
s_lshl_b64 s[10:11], s[10:11], 2
s_mul_i32 s12, s18, s12
s_add_u32 s10, s44, s10
v_mul_f32_e32 v238, s49, v3
v_mul_f32_e32 v239, s48, v3
s_addc_u32 s11, s45, s11
s_lshl_b64 s[12:13], s[12:13], 2
v_mul_f32_e32 v240, s15, v3
s_add_u32 s15, s10, s12
s_addc_u32 s18, s11, s13
s_cmp_eq_u64 s[44:45], 0
s_cselect_b64 s[10:11], -1, 0
v_writelane_b32 v255, s10, 2
v_lshrrev_b32_e32 v217, 4, v5
v_lshlrev_b32_e32 v6, 3, v0
v_writelane_b32 v255, s11, 3
s_and_b64 s[10:11], s[10:11], exec
s_cselect_b32 s19, 0, s18
s_cselect_b32 s18, 0, s15
s_lshl_b32 s10, s8, 9
s_lshr_b32 s35, s3, 7
v_writelane_b32 v255, s10, 4
s_lshl_b32 s10, s8, 8
v_writelane_b32 v255, s10, 5
s_add_u32 s6, s36, s6
v_writelane_b32 v255, s6, 6
s_addc_u32 s6, s37, 0
v_writelane_b32 v255, s6, 7
s_add_u32 s6, s42, s22
v_writelane_b32 v255, s6, 8
s_addc_u32 s6, s43, 0
s_cmp_eq_u32 s21, 0
v_writelane_b32 v255, s6, 9
s_cselect_b64 s[10:11], -1, 0
v_and_b32_e32 v7, 15, v0
v_lshl_or_b32 v0, v0, 1, v217
v_writelane_b32 v255, s10, 10
v_and_b32_e32 v0, 0x41, v0
s_add_u32 s6, s44, s12
v_writelane_b32 v255, s11, 11
v_lshlrev_b32_e32 v245, 7, v0
v_writelane_b32 v255, s6, 12
s_addc_u32 s6, s45, s13
v_and_b32_e32 v244, 0x78, v6
v_xor_b32_e32 v3, v1, v7
v_or_b32_e32 v0, 0x1c000, v245
v_writelane_b32 v255, s6, 13
s_lshl_b32 s6, s20, 13
s_mov_b32 s17, 0x20000
v_lshlrev_b32_e32 v3, 4, v3
v_add_u32_e32 v249, v0, v244
v_lshl_or_b32 v0, v216, 8, s6
v_xor_b32_e32 v2, v217, v2
v_or3_b32 v228, v0, v3, s17
v_and_b32_e32 v4, 4, v4
v_and_b32_e32 v2, 1, v2
v_xor_b32_e32 v0, 0x60, v228
v_sub_u32_e32 v243, v216, v4
v_xor_b32_e32 v4, v217, v7
v_cmp_eq_u32_e32 vcc, 0, v2
v_or_b32_e32 v2, 0x10000, v245
v_xor_b32_e32 v0, 0x80, v228
s_lshl_b32 s10, s8, 5
v_mov_b32_e32 v5, 0x38383838
v_lshlrev_b32_e32 v6, 4, v7
v_lshlrev_b32_e32 v4, 4, v4
v_add_u32_e32 v246, v2, v244
v_lshl_or_b32 v2, v217, 8, s6
v_xor_b32_e32 v0, 0xa0, v228
v_writelane_b32 v255, s10, 14
s_lshl_b32 s10, s8, 6
v_cndmask_b32_e32 v192, 0, v5, vcc
v_or_b32_e32 v5, 0x14000, v245
v_or_b32_e32 v6, 0x18000, v245
v_or3_b32 v219, v2, v4, s17
v_xor_b32_e32 v0, 0xc0, v228
v_writelane_b32 v255, s10, 15
s_lshl_b32 s10, s8, 2
s_mov_b32 s49, 0x1c000
s_mov_b32 s92, 0x10000
s_mov_b32 s93, 0x14000
s_mov_b32 s96, 0x18000
s_mov_b32 s97, 0x8000
s_movk_i32 s98, 0x4000
s_mov_b32 s99, 0xc2fe0000
v_mov_b32_e32 v241, 0xff800000
v_mov_b32_e32 v242, 0x7f
v_add_u32_e32 v247, v5, v244
v_add_u32_e32 v248, v6, v244
s_mov_b32 s95, 0xc1000000
s_movk_i32 s48, 0x2000
v_xor_b32_e32 v230, 32, v228
v_xor_b32_e32 v229, 64, v228
v_xor_b32_e32 v0, 0xe0, v228
v_xor_b32_e32 v218, 64, v219
v_xor_b32_e32 v237, 0x80, v219
v_xor_b32_e32 v254, 0xc0, v219
s_mov_b32 s36, 0x1a000
s_mov_b32 s37, 0x3e000000
s_movk_i32 s42, 0x6000
s_mov_b32 s43, 0x1e000
s_mov_b32 s44, 0xa000
s_mov_b32 s45, 0x12000
s_mov_b32 s89, 0xc000
s_mov_b32 s90, 0xe000
s_mov_b32 s34, 0x16000
s_lshl_b32 s6, s9, 2
v_writelane_b32 v255, s10, 16
s_mov_b32 s52, 0xff800000
s_mov_b32 s10, 0
s_mov_b32 s11, 0
v_writelane_b32 v255, s12, 17
s_lshl_b32 s12, s10, 14
s_and_b32 s17, s12, 0x8000
s_bitcmp1_b32 s10, 0
s_cselect_b32 s15, 0x4000, 0
s_or_b32 s17, s17, s15
v_or_b32_e32 v0, s17, v231
s_waitcnt vmcnt(8)
ds_read_b128 v[10:13], v0
ds_read_b128 v[14:17], v0 offset:16
ds_read_b128 v[2:5], v0 offset:4096
ds_read_b128 v[6:9], v0 offset:4112
s_cmp_eq_u32 s35, 0
s_cbranch_scc1 149
s_setprio 1
s_waitcnt lgkmcnt(2)
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[220:227], 0
v_add_u32_e32 v0, s17, v231
ds_read_b128 v[18:21], v0 offset:8192
ds_read_b128 v[22:25], v0 offset:8208
ds_read_b128 v[26:29], v0 offset:12288
ds_read_b128 v[30:33], v0 offset:12304
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[220:227], 0
v_add_u32_e32 v0, s17, v232
ds_read_b128 v[10:13], v0
ds_read_b128 v[14:17], v0 offset:16
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[220:227], 0
ds_read_b128 v[2:5], v0 offset:4096
ds_read_b128 v[6:9], v0 offset:4112
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[220:227], 0
ds_read_b128 v[18:21], v0 offset:8192
ds_read_b128 v[22:25], v0 offset:8208
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[200:207], v[112:127]
ds_read_b128 v[26:29], v0 offset:12288
ds_read_b128 v[30:33], v0 offset:12304
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[200:207], v[96:111]
s_waitcnt lgkmcnt(2)
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[200:207], v[80:95]
s_waitcnt lgkmcnt(0)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[200:207], v[64:79]
v_max_f32_e32 v0, v112, v113
v_max3_f32 v0, v114, v115, v0
v_max3_f32 v0, v116, v117, v0
v_max3_f32 v0, v118, v119, v0
v_max3_f32 v0, v120, v121, v0
v_max3_f32 v0, v122, v123, v0
v_max3_f32 v0, v124, v125, v0
v_max3_f32 v1, v126, v127, v0
v_max_f32_e32 v0, v96, v97
v_max3_f32 v0, v98, v99, v0
v_max3_f32 v0, v100, v101, v0
v_max3_f32 v0, v102, v103, v0
v_max3_f32 v0, v104, v105, v0
v_max3_f32 v0, v106, v107, v0
v_max3_f32 v0, v108, v109, v0
v_max3_f32 v2, v110, v111, v0
v_max_f32_e32 v0, v80, v81
v_max3_f32 v0, v82, v83, v0
v_max3_f32 v0, v84, v85, v0
v_max3_f32 v0, v86, v87, v0
v_max3_f32 v0, v88, v89, v0
v_max3_f32 v0, v90, v91, v0
v_max3_f32 v0, v92, v93, v0
v_max3_f32 v0, v94, v95, v0
v_max_f32_e32 v3, v64, v65
v_max3_f32 v3, v66, v67, v3
v_max3_f32 v3, v68, v69, v3
v_max3_f32 v3, v70, v71, v3
v_max3_f32 v3, v72, v73, v3
v_max3_f32 v3, v74, v75, v3
v_max3_f32 v3, v76, v77, v3
v_max3_f32 v3, v78, v79, v3
v_max_f32_e32 v0, v0, v3
v_max_f32_e32 v2, v1, v2
s_nop 1
v_permlane32_swap_b32_e32 v2, v3
s_nop 1
v_permlane32_swap_b32_e32 v0, v1
v_max_f32_e32 v0, v0, v1
v_max_f32_e32 v1, v2, v3
v_max_f32_e32 v2, v1, v0
v_mul_f32_e32 v148, v238, v2
v_fma_f32 v1, v1, v238, -v148
v_floor_f32_e32 v1, v1
v_med3_f32 v1, v1, s99, 0
v_cvt_i32_f32_e32 v2, v1
v_add_u32_e32 v251, 0x7f, v2
v_lshlrev_b32_e32 v144, 23, v251
v_fma_f32 v0, v0, v238, -v148
v_floor_f32_e32 v0, v0
v_med3_f32 v0, v0, s99, 0
v_cvt_i32_f32_e32 v2, v0
v_add_u32_e32 v149, 0x7f, v2
v_lshlrev_b32_e32 v145, 23, v149
v_fma_f32 v2, v148, s95, v2
v_fma_f32 v152, v1, s95, v2
v_fma_f32 v150, v0, s95, v2
s_branch 530
s_setprio 1
s_waitcnt lgkmcnt(2)
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[220:227], 0
v_add_u32_e32 v0, s17, v231
ds_read_b128 v[18:21], v0 offset:8192
ds_read_b128 v[22:25], v0 offset:8208
ds_read_b128 v[26:29], v0 offset:12288
ds_read_b128 v[30:33], v0 offset:12304
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[220:227], 0
v_add_u32_e32 v0, s17, v232
ds_read_b128 v[10:13], v0
ds_read_b128 v[14:17], v0 offset:16
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[220:227], 0
ds_read_b128 v[2:5], v0 offset:4096
ds_read_b128 v[6:9], v0 offset:4112
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[220:227], 0
ds_read_b128 v[18:21], v0 offset:8192
ds_read_b128 v[22:25], v0 offset:8208
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[200:207], v[112:127]
ds_read_b128 v[26:29], v0 offset:12288
ds_read_b128 v[30:33], v0 offset:12304
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[200:207], v[96:111]
s_waitcnt lgkmcnt(2)
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[200:207], v[80:95]
s_waitcnt lgkmcnt(0)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[200:207], v[64:79]
s_sub_u32 s17, s3, s16
s_sub_i32 s17, s17, 0
s_cmp_ge_i32 s17, 32
s_cbranch_scc1 91
s_cmp_lt_i32 s17, 0
s_cbranch_scc1 66
v_add_u32_e32 v0, s17, v243
v_cmp_gt_i32_e32 vcc, 0, v0
s_nop 1
v_cndmask_b32_e64 v112, v112, v241, vcc
v_cmp_gt_i32_e32 vcc, 1, v0
s_nop 1
v_cndmask_b32_e64 v113, v113, v241, vcc
v_cmp_gt_i32_e32 vcc, 2, v0
s_nop 1
v_cndmask_b32_e64 v114, v114, v241, vcc
v_cmp_gt_i32_e32 vcc, 3, v0
s_nop 1
v_cndmask_b32_e64 v115, v115, v241, vcc
v_cmp_gt_i32_e32 vcc, 8, v0
s_nop 1
v_cndmask_b32_e64 v116, v116, v241, vcc
v_cmp_gt_i32_e32 vcc, 9, v0
s_nop 1
v_cndmask_b32_e64 v117, v117, v241, vcc
v_cmp_gt_i32_e32 vcc, 10, v0
s_nop 1
v_cndmask_b32_e64 v118, v118, v241, vcc
v_cmp_gt_i32_e32 vcc, 11, v0
s_nop 1
v_cndmask_b32_e64 v119, v119, v241, vcc
v_cmp_gt_i32_e32 vcc, 16, v0
s_nop 1
v_cndmask_b32_e64 v120, v120, v241, vcc
v_cmp_gt_i32_e32 vcc, 17, v0
s_nop 1
v_cndmask_b32_e64 v121, v121, v241, vcc
v_cmp_gt_i32_e32 vcc, 18, v0
s_nop 1
v_cndmask_b32_e64 v122, v122, v241, vcc
v_cmp_gt_i32_e32 vcc, 19, v0
s_nop 1
v_cndmask_b32_e64 v123, v123, v241, vcc
v_cmp_gt_i32_e32 vcc, 24, v0
s_nop 1
v_cndmask_b32_e64 v124, v124, v241, vcc
v_cmp_gt_i32_e32 vcc, 25, v0
s_nop 1
v_cndmask_b32_e64 v125, v125, v241, vcc
v_cmp_gt_i32_e32 vcc, 26, v0
s_nop 1
v_cndmask_b32_e64 v126, v126, v241, vcc
v_cmp_gt_i32_e32 vcc, 27, v0
s_nop 1
v_cndmask_b32_e64 v127, v127, v241, vcc
s_branch 23
s_sub_u32 s17, s3, s16
s_sub_i32 s17, s17, 32
s_cmp_ge_i32 s17, 32
s_cbranch_scc1 91
s_cmp_lt_i32 s17, 0
s_cbranch_scc1 66
v_add_u32_e32 v0, s17, v243
v_cmp_gt_i32_e32 vcc, 0, v0
s_nop 2
v_cndmask_b32_e64 v96, v96, v241, vcc
v_cmp_gt_i32_e32 vcc, 1, v0
s_nop 1
v_cndmask_b32_e64 v97, v97, v241, vcc
v_cmp_gt_i32_e32 vcc, 2, v0
s_nop 1
v_cndmask_b32_e64 v98, v98, v241, vcc
v_cmp_gt_i32_e32 vcc, 3, v0
s_nop 1
v_cndmask_b32_e64 v99, v99, v241, vcc
v_cmp_gt_i32_e32 vcc, 8, v0
s_nop 1
v_cndmask_b32_e64 v100, v100, v241, vcc
v_cmp_gt_i32_e32 vcc, 9, v0
s_nop 1
v_cndmask_b32_e64 v101, v101, v241, vcc
v_cmp_gt_i32_e32 vcc, 10, v0
s_nop 1
v_cndmask_b32_e64 v102, v102, v241, vcc
v_cmp_gt_i32_e32 vcc, 11, v0
s_nop 1
v_cndmask_b32_e64 v103, v103, v241, vcc
v_cmp_gt_i32_e32 vcc, 16, v0
s_nop 1
v_cndmask_b32_e64 v104, v104, v241, vcc
v_cmp_gt_i32_e32 vcc, 17, v0
s_nop 1
v_cndmask_b32_e64 v105, v105, v241, vcc
v_cmp_gt_i32_e32 vcc, 18, v0
s_nop 1
v_cndmask_b32_e64 v106, v106, v241, vcc
v_cmp_gt_i32_e32 vcc, 19, v0
s_nop 1
v_cndmask_b32_e64 v107, v107, v241, vcc
v_cmp_gt_i32_e32 vcc, 24, v0
s_nop 1
v_cndmask_b32_e64 v108, v108, v241, vcc
v_cmp_gt_i32_e32 vcc, 25, v0
s_nop 1
v_cndmask_b32_e64 v109, v109, v241, vcc
v_cmp_gt_i32_e32 vcc, 26, v0
s_nop 1
v_cndmask_b32_e64 v110, v110, v241, vcc
v_cmp_gt_i32_e32 vcc, 27, v0
s_nop 1
v_cndmask_b32_e64 v111, v111, v241, vcc
s_branch 23
s_sub_u32 s17, s3, s16
s_sub_i32 s17, s17, 64
s_cmp_ge_i32 s17, 32
s_cbranch_scc1 92
s_cmp_lt_i32 s17, 0
s_cbranch_scc1 66
v_add_u32_e32 v0, s17, v243
v_cmp_gt_i32_e32 vcc, 0, v0
s_nop 2
v_cndmask_b32_e64 v80, v80, v241, vcc
v_cmp_gt_i32_e32 vcc, 1, v0
s_nop 1
v_cndmask_b32_e64 v81, v81, v241, vcc
v_cmp_gt_i32_e32 vcc, 2, v0
s_nop 1
v_cndmask_b32_e64 v82, v82, v241, vcc
v_cmp_gt_i32_e32 vcc, 3, v0
s_nop 1
v_cndmask_b32_e64 v83, v83, v241, vcc
v_cmp_gt_i32_e32 vcc, 8, v0
s_nop 1
v_cndmask_b32_e64 v84, v84, v241, vcc
v_cmp_gt_i32_e32 vcc, 9, v0
s_nop 1
v_cndmask_b32_e64 v85, v85, v241, vcc
v_cmp_gt_i32_e32 vcc, 10, v0
s_nop 1
v_cndmask_b32_e64 v86, v86, v241, vcc
v_cmp_gt_i32_e32 vcc, 11, v0
s_nop 1
v_cndmask_b32_e64 v87, v87, v241, vcc
v_cmp_gt_i32_e32 vcc, 16, v0
s_nop 1
v_cndmask_b32_e64 v88, v88, v241, vcc
v_cmp_gt_i32_e32 vcc, 17, v0
s_nop 1
v_cndmask_b32_e64 v89, v89, v241, vcc
v_cmp_gt_i32_e32 vcc, 18, v0
s_nop 1
v_cndmask_b32_e64 v90, v90, v241, vcc
v_cmp_gt_i32_e32 vcc, 19, v0
s_nop 1
v_cndmask_b32_e64 v91, v91, v241, vcc
v_cmp_gt_i32_e32 vcc, 24, v0
s_nop 1
v_cndmask_b32_e64 v92, v92, v241, vcc
v_cmp_gt_i32_e32 vcc, 25, v0
s_nop 1
v_cndmask_b32_e64 v93, v93, v241, vcc
v_cmp_gt_i32_e32 vcc, 26, v0
s_nop 1
v_cndmask_b32_e64 v94, v94, v241, vcc
v_cmp_gt_i32_e32 vcc, 27, v0
s_nop 1
v_cndmask_b32_e64 v95, v95, v241, vcc
s_branch 24
s_nop 0
s_sub_u32 s17, s3, s16
s_sub_i32 s17, s17, 0x60
s_cmp_ge_i32 s17, 32
s_cbranch_scc1 91
s_cmp_lt_i32 s17, 0
s_cbranch_scc1 66
v_add_u32_e32 v0, s17, v243
v_cmp_gt_i32_e32 vcc, 0, v0
s_nop 7
v_cndmask_b32_e64 v64, v64, v241, vcc
v_cmp_gt_i32_e32 vcc, 1, v0
s_nop 1
v_cndmask_b32_e64 v65, v65, v241, vcc
v_cmp_gt_i32_e32 vcc, 2, v0
s_nop 1
v_cndmask_b32_e64 v66, v66, v241, vcc
v_cmp_gt_i32_e32 vcc, 3, v0
s_nop 1
v_cndmask_b32_e64 v67, v67, v241, vcc
v_cmp_gt_i32_e32 vcc, 8, v0
s_nop 1
v_cndmask_b32_e64 v68, v68, v241, vcc
v_cmp_gt_i32_e32 vcc, 9, v0
s_nop 1
v_cndmask_b32_e64 v69, v69, v241, vcc
v_cmp_gt_i32_e32 vcc, 10, v0
s_nop 1
v_cndmask_b32_e64 v70, v70, v241, vcc
v_cmp_gt_i32_e32 vcc, 11, v0
s_nop 1
v_cndmask_b32_e64 v71, v71, v241, vcc
v_cmp_gt_i32_e32 vcc, 16, v0
s_nop 1
v_cndmask_b32_e64 v72, v72, v241, vcc
v_cmp_gt_i32_e32 vcc, 17, v0
s_nop 1
v_cndmask_b32_e64 v73, v73, v241, vcc
v_cmp_gt_i32_e32 vcc, 18, v0
s_nop 1
v_cndmask_b32_e64 v74, v74, v241, vcc
v_cmp_gt_i32_e32 vcc, 19, v0
s_nop 1
v_cndmask_b32_e64 v75, v75, v241, vcc
v_cmp_gt_i32_e32 vcc, 24, v0
s_nop 1
v_cndmask_b32_e64 v76, v76, v241, vcc
v_cmp_gt_i32_e32 vcc, 25, v0
s_nop 1
v_cndmask_b32_e64 v77, v77, v241, vcc
v_cmp_gt_i32_e32 vcc, 26, v0
s_nop 1
v_cndmask_b32_e64 v78, v78, v241, vcc
v_cmp_gt_i32_e32 vcc, 27, v0
s_nop 1
v_cndmask_b32_e64 v79, v79, v241, vcc
s_branch 23
v_max_f32_e32 v0, v112, v113
v_max3_f32 v0, v114, v115, v0
v_max3_f32 v0, v116, v117, v0
v_max3_f32 v0, v118, v119, v0
v_max3_f32 v0, v120, v121, v0
v_max3_f32 v0, v122, v123, v0
v_max3_f32 v0, v124, v125, v0
v_max3_f32 v1, v126, v127, v0
v_max_f32_e32 v0, v96, v97
v_max3_f32 v0, v98, v99, v0
v_max3_f32 v0, v100, v101, v0
v_max3_f32 v0, v102, v103, v0
v_max3_f32 v0, v104, v105, v0
v_max3_f32 v0, v106, v107, v0
v_max3_f32 v0, v108, v109, v0
v_max3_f32 v2, v110, v111, v0
v_max_f32_e32 v0, v80, v81
v_max3_f32 v0, v82, v83, v0
v_max3_f32 v0, v84, v85, v0
v_max3_f32 v0, v86, v87, v0
v_max3_f32 v0, v88, v89, v0
v_max3_f32 v0, v90, v91, v0
v_max3_f32 v0, v92, v93, v0
v_max3_f32 v0, v94, v95, v0
v_max_f32_e32 v3, v64, v65
v_max3_f32 v3, v66, v67, v3
v_max3_f32 v3, v68, v69, v3
v_max3_f32 v3, v70, v71, v3
v_max3_f32 v3, v72, v73, v3
v_max3_f32 v3, v74, v75, v3
v_max3_f32 v3, v76, v77, v3
v_max3_f32 v3, v78, v79, v3
v_max_f32_e32 v0, v0, v3
v_max_f32_e32 v2, v1, v2
s_nop 1
v_permlane32_swap_b32_e32 v2, v3
s_nop 1
v_permlane32_swap_b32_e32 v0, v1
v_max_f32_e32 v0, v0, v1
v_max_f32_e32 v1, v2, v3
v_max_f32_e32 v2, v1, v0
v_mul_f32_e32 v148, v238, v2
v_fma_f32 v1, v1, v238, -v148
v_floor_f32_e32 v1, v1
v_med3_f32 v1, v1, s99, 0
v_cvt_i32_f32_e32 v2, v1
v_add_u32_e32 v251, 0x7f, v2
v_lshlrev_b32_e32 v144, 23, v251
v_fma_f32 v0, v0, v238, -v148
v_floor_f32_e32 v0, v0
v_med3_f32 v0, v0, s99, 0
v_cvt_i32_f32_e32 v2, v0
v_add_u32_e32 v149, 0x7f, v2
v_lshlrev_b32_e32 v145, 23, v149
v_fma_f32 v2, v148, s95, v2
v_fma_f32 v152, v1, s95, v2
v_fma_f32 v150, v0, s95, v2
s_waitcnt vmcnt(0)
v_readlane_b32 s18, v255, 10
v_readlane_b32 s19, v255, 11
v_readlane_b32 s17, v255, 17
s_and_b64 s[18:19], s[18:19], exec
s_cbranch_scc0 38
s_cmp_ge_u32 s91, 2
s_cbranch_scc1 196
s_cmp_ge_u32 s91, 3
s_cbranch_scc1 226
s_cmp_lt_u32 s91, 4
s_cbranch_scc1 31
s_add_u32 s15, s10, 3
s_and_b32 s17, s15, 2
s_lshl_b32 s17, s17, 14
s_bitcmp1_b32 s15, 0
s_cselect_b32 s15, 0x4000, 0
s_or_b32 s15, s17, s15
s_or_b32 s15, s15, s88
s_mul_i32 s17, s8, 0x180
buffer_load_dwordx4 v233, s[84:87], s17 offen lds
s_add_u32 m0, s15, 0x1000
s_mul_i32 s17, s8, 0x1a0
buffer_load_dwordx4 v233, s[84:87], s17 offen lds
s_or_b32 m0, s15, 0x2000
s_mul_i32 s17, s8, 0x1c0
buffer_load_dwordx4 v233, s[84:87], s17 offen lds
s_add_u32 m0, s15, 0x3000
s_mul_i32 s15, s8, 0x1e0
buffer_load_dwordx4 v233, s[84:87], s15 offen lds
s_waitcnt vmcnt(0)
s_barrier
s_add_u32 s53, s91, -1
s_cmp_lt_i32 s10, 1
s_mul_i32 s53, s53, s33
s_cbranch_scc1 56
s_cmp_lt_i32 s10, 2
s_cbranch_scc0 95
s_mov_b32 s15, 0
v_mov_b32_e32 v250, 0
v_readlane_b32 s17, v255, 5
v_readlane_b32 s20, v255, 4
s_branch 869
s_mov_b32 s15, 0
s_cmp_lg_u32 s10, 0
s_cbranch_scc0 182
v_mov_b32_e32 v250, 0
v_readlane_b32 s17, v255, 5
v_readlane_b32 s20, v255, 4
s_branch 2057
s_mov_b32 s15, 0
s_cmp_eq_u32 s10, 2
s_cbranch_scc0 103
v_mov_b32_e32 v250, 0
v_readlane_b32 s17, v255, 5
v_readlane_b32 s20, v255, 4
s_branch 1392
s_add_u32 s17, s10, 1
s_and_b32 s18, s17, 2
s_lshl_b32 s18, s18, 14
s_bitcmp1_b32 s17, 0
s_cselect_b32 s17, s93, 0x10000
s_or_b32 s17, s18, s17
s_or_b32 s17, s17, s88
s_mul_i32 s18, s8, 0xc0
buffer_load_dwordx4 v235, s[80:83], s33 offen lds
s_add_u32 m0, s17, 0x1000
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s18 offen lds
s_add_u32 m0, s17, 0x2000
s_mul_i32 s18, s8, 0x84
buffer_load_dwordx4 v235, s[80:83], s18 offen lds
s_add_u32 m0, s17, 0x3000
s_mul_i32 s17, s8, 0xc4
buffer_load_dwordx4 v235, s[80:83], s17 offen lds
s_cmp_lt_u32 s91, 3
s_cbranch_scc1 65310
s_andn2_b32 s17, 2, s10
s_lshl_b32 s17, s17, 14
s_or_b32 s15, s17, s15
s_add_u32 s15, s15, s88
v_readlane_b32 s17, v255, 5
s_nop 4
buffer_load_dwordx4 v233, s[84:87], s17 offen lds
s_add_u32 m0, s15, 0x1000
s_mul_i32 s17, s8, 0x120
buffer_load_dwordx4 v233, s[84:87], s17 offen lds
s_add_u32 m0, s15, 0x2000
s_mul_i32 s17, s8, 0x140
buffer_load_dwordx4 v233, s[84:87], s17 offen lds
s_add_u32 m0, s15, 0x3000
s_mul_i32 s15, s8, 0x160
buffer_load_dwordx4 v233, s[84:87], s15 offen lds
s_cmp_lt_u32 s91, 4
s_cbranch_scc1 65313
s_branch 65281
v_mov_b32_e32 v250, 0
v_readlane_b32 s17, v255, 5
v_readlane_b32 s20, v255, 4
s_branch 1913
v_mov_b32_e32 v250, 0
v_readlane_b32 s17, v255, 5
v_readlane_b32 s20, v255, 4
s_branch 6
global_store_dword v0, v32, s[12:13]
s_branch 64479
s_nop 0
s_add_u32 s18, s15, 1
s_cmp_ge_u32 s18, s35
s_cbranch_scc1 2491
s_setprio 0
v_fma_f32 v112, v112, v239, v152
v_fma_f32 v113, v113, v239, v152
v_fma_f32 v114, v114, v239, v152
v_fma_f32 v115, v115, v239, v152
v_fma_f32 v116, v116, v239, v152
v_fma_f32 v117, v117, v239, v152
v_fma_f32 v118, v118, v239, v152
v_fma_f32 v119, v119, v239, v152
v_fma_f32 v120, v120, v239, v152
v_fma_f32 v121, v121, v239, v152
v_fma_f32 v122, v122, v239, v152
v_fma_f32 v123, v123, v239, v152
v_fma_f32 v124, v124, v239, v152
v_fma_f32 v125, v125, v239, v152
v_fma_f32 v126, v126, v239, v152
v_fma_f32 v127, v127, v239, v152
v_fma_f32 v96, v96, v239, v152
v_cvt_pk_u8_f32 v112, v112, 0, 0
v_fma_f32 v97, v97, v239, v152
v_cvt_pk_u8_f32 v116, v116, 0, 0
v_fma_f32 v98, v98, v239, v152
v_cvt_pk_u8_f32 v120, v120, 0, 0
v_fma_f32 v99, v99, v239, v152
v_cvt_pk_u8_f32 v124, v124, 0, 0
v_fma_f32 v100, v100, v239, v152
v_cvt_pk_u8_f32 v112, v113, 1, v112
v_fma_f32 v101, v101, v239, v152
v_cvt_pk_u8_f32 v113, v117, 1, v116
v_fma_f32 v102, v102, v239, v152
v_cvt_pk_u8_f32 v116, v121, 1, v120
v_fma_f32 v103, v103, v239, v152
v_cvt_pk_u8_f32 v117, v125, 1, v124
v_fma_f32 v104, v104, v239, v152
v_cvt_pk_u8_f32 v112, v114, 2, v112
v_fma_f32 v105, v105, v239, v152
v_cvt_pk_u8_f32 v113, v118, 2, v113
v_fma_f32 v106, v106, v239, v152
v_cvt_pk_u8_f32 v114, v122, 2, v116
v_fma_f32 v107, v107, v239, v152
v_cvt_pk_u8_f32 v116, v126, 2, v117
v_fma_f32 v108, v108, v239, v152
v_cvt_pk_u8_f32 v128, v115, 3, v112
v_fma_f32 v109, v109, v239, v152
v_cvt_pk_u8_f32 v129, v119, 3, v113
v_fma_f32 v110, v110, v239, v152
v_cvt_pk_u8_f32 v130, v123, 3, v114
v_fma_f32 v111, v111, v239, v152
v_cvt_pk_u8_f32 v131, v127, 3, v116
v_fma_f32 v80, v80, v239, v150
v_cvt_pk_u8_f32 v96, v96, 0, 0
v_fma_f32 v81, v81, v239, v150
v_cvt_pk_u8_f32 v100, v100, 0, 0
v_fma_f32 v82, v82, v239, v150
v_cvt_pk_u8_f32 v104, v104, 0, 0
v_fma_f32 v83, v83, v239, v150
v_cvt_pk_u8_f32 v108, v108, 0, 0
v_fma_f32 v84, v84, v239, v150
v_cvt_pk_u8_f32 v96, v97, 1, v96
v_fma_f32 v85, v85, v239, v150
v_cvt_pk_u8_f32 v97, v101, 1, v100
v_fma_f32 v86, v86, v239, v150
v_cvt_pk_u8_f32 v100, v105, 1, v104
v_fma_f32 v87, v87, v239, v150
v_cvt_pk_u8_f32 v101, v109, 1, v108
v_fma_f32 v88, v88, v239, v150
v_cvt_pk_u8_f32 v96, v98, 2, v96
v_fma_f32 v89, v89, v239, v150
v_cvt_pk_u8_f32 v97, v102, 2, v97
v_fma_f32 v90, v90, v239, v150
v_cvt_pk_u8_f32 v98, v106, 2, v100
v_fma_f32 v91, v91, v239, v150
v_cvt_pk_u8_f32 v100, v110, 2, v101
v_fma_f32 v92, v92, v239, v150
v_cvt_pk_u8_f32 v132, v99, 3, v96
v_fma_f32 v93, v93, v239, v150
v_cvt_pk_u8_f32 v133, v103, 3, v97
v_fma_f32 v94, v94, v239, v150
v_cvt_pk_u8_f32 v134, v107, 3, v98
v_fma_f32 v95, v95, v239, v150
v_cvt_pk_u8_f32 v135, v111, 3, v100
v_fma_f32 v64, v64, v239, v150
v_cvt_pk_u8_f32 v80, v80, 0, 0
v_fma_f32 v65, v65, v239, v150
v_cvt_pk_u8_f32 v84, v84, 0, 0
v_fma_f32 v66, v66, v239, v150
v_cvt_pk_u8_f32 v88, v88, 0, 0
v_fma_f32 v67, v67, v239, v150
v_cvt_pk_u8_f32 v92, v92, 0, 0
v_fma_f32 v68, v68, v239, v150
v_cvt_pk_u8_f32 v80, v81, 1, v80
v_fma_f32 v69, v69, v239, v150
v_cvt_pk_u8_f32 v81, v85, 1, v84
v_fma_f32 v70, v70, v239, v150
v_cvt_pk_u8_f32 v84, v89, 1, v88
v_fma_f32 v71, v71, v239, v150
v_cvt_pk_u8_f32 v85, v93, 1, v92
v_fma_f32 v72, v72, v239, v150
v_cvt_pk_u8_f32 v80, v82, 2, v80
v_fma_f32 v73, v73, v239, v150
v_cvt_pk_u8_f32 v81, v86, 2, v81
v_fma_f32 v74, v74, v239, v150
v_cvt_pk_u8_f32 v82, v90, 2, v84
v_fma_f32 v75, v75, v239, v150
v_cvt_pk_u8_f32 v84, v94, 2, v85
v_fma_f32 v76, v76, v239, v150
v_cvt_pk_u8_f32 v136, v83, 3, v80
v_fma_f32 v77, v77, v239, v150
v_cvt_pk_u8_f32 v137, v87, 3, v81
v_fma_f32 v78, v78, v239, v150
v_cvt_pk_u8_f32 v138, v91, 3, v82
v_fma_f32 v79, v79, v239, v150
v_cvt_pk_u8_f32 v139, v95, 3, v84
v_cvt_pk_u8_f32 v64, v64, 0, 0
v_cvt_pk_u8_f32 v68, v68, 0, 0
v_cvt_pk_u8_f32 v72, v72, 0, 0
v_cvt_pk_u8_f32 v76, v76, 0, 0
v_cvt_pk_u8_f32 v64, v65, 1, v64
v_cvt_pk_u8_f32 v65, v69, 1, v68
v_cvt_pk_u8_f32 v68, v73, 1, v72
v_cvt_pk_u8_f32 v69, v77, 1, v76
v_cvt_pk_u8_f32 v64, v66, 2, v64
v_cvt_pk_u8_f32 v65, v70, 2, v65
v_cvt_pk_u8_f32 v66, v74, 2, v68
v_cvt_pk_u8_f32 v68, v78, 2, v69
v_cvt_pk_u8_f32 v140, v67, 3, v64
v_cvt_pk_u8_f32 v141, v71, 3, v65
v_cvt_pk_u8_f32 v142, v75, 3, v66
v_cvt_pk_u8_f32 v143, v79, 3, v68
ds_read_b128 v[72:75], v231 offset:16384
ds_read_b128 v[76:79], v231 offset:16400
ds_read_b128 v[80:83], v231 offset:20480
ds_read_b128 v[84:87], v231 offset:20496
s_barrier
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0
v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0
ds_read_b128 v[146:149], v231 offset:24576
ds_read_b128 v[150:153], v231 offset:24592
ds_read_b128 v[154:157], v231 offset:28672
ds_read_b128 v[158:161], v231 offset:28688
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0
ds_read_b128 v[162:165], v232 offset:16384
ds_read_b128 v[166:169], v232 offset:16400
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0
ds_read_b128 v[170:173], v232 offset:20480
ds_read_b128 v[174:177], v232 offset:20496
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[146:153], v[220:227], 0
ds_read_b128 v[146:149], v232 offset:24576
ds_read_b128 v[150:153], v232 offset:24592
s_min_u32 s18, s20, s53
s_add_u32 m0, s88, s16
s_nop 0
buffer_load_dwordx4 v233, s[84:87], s18 offen lds
v_mul_f32_e32 v72, v144, v64
v_add_f32_e32 v72, v250, v72
v_mul_f32_e32 v73, v145, v68
v_add_f32_e32 v250, v72, v73
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[154:161], v[220:227], 0
ds_read_b128 v[154:157], v232 offset:28672
ds_read_b128 v[158:161], v232 offset:28688
s_add_u32 m0, s88, s48
s_nop 0
buffer_load_dwordx4 v234, s[84:87], s18 offen lds
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[162:169], v[200:207], v[112:127]
ds_read_b64_tr_b8 v[162:163], v246
ds_read_b64_tr_b8 v[164:165], v246 offset:1024
ds_read_b64_tr_b8 v[166:167], v246 offset:2048
ds_read_b64_tr_b8 v[168:169], v246 offset:3072
s_min_u32 s18, s17, s53
s_add_u32 m0, s88, s96
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s18 offen lds
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[170:177], v[200:207], v[96:111]
ds_read_b64_tr_b8 v[170:171], v246 offset:256
ds_read_b64_tr_b8 v[172:173], v246 offset:1280
ds_read_b64_tr_b8 v[174:175], v246 offset:2304
ds_read_b64_tr_b8 v[176:177], v246 offset:3328
s_add_u32 m0, s88, s36
s_nop 0
buffer_load_dwordx4 v236, s[80:83], s18 offen lds
s_add_u32 s20, s20, s33
s_add_u32 s17, s17, s33
v_max_f32_e32 v144, v112, v113
v_max3_f32 v144, v114, v115, v144
v_max3_f32 v144, v116, v117, v144
v_max3_f32 v144, v118, v119, v144
v_max3_f32 v144, v120, v121, v144
v_max3_f32 v144, v122, v123, v144
v_max3_f32 v144, v124, v125, v144
v_max3_f32 v144, v126, v127, v144
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[146:153], v[200:207], v[80:95]
ds_read_b64_tr_b8 v[178:179], v246 offset:512
ds_read_b64_tr_b8 v[180:181], v246 offset:1536
ds_read_b64_tr_b8 v[182:183], v246 offset:2560
ds_read_b64_tr_b8 v[184:185], v246 offset:3584
v_max_f32_e32 v145, v96, v97
v_max3_f32 v145, v98, v99, v145
v_max3_f32 v145, v100, v101, v145
v_max3_f32 v145, v102, v103, v145
v_max3_f32 v145, v104, v105, v145
v_max3_f32 v145, v106, v107, v145
v_max3_f32 v145, v108, v109, v145
v_max3_f32 v145, v110, v111, v145
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[154:161], v[200:207], v[64:79]
s_nop 3
v_max_f32_e32 v146, v80, v81
v_max3_f32 v146, v82, v83, v146
v_max3_f32 v146, v84, v85, v146
v_max3_f32 v146, v86, v87, v146
v_max3_f32 v146, v88, v89, v146
v_max3_f32 v146, v90, v91, v146
v_max3_f32 v146, v92, v93, v146
v_max3_f32 v146, v94, v95, v146
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[162:169], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[148:149], v246 offset:768
ds_read_b64_tr_b8 v[150:151], v246 offset:1792
ds_read_b64_tr_b8 v[152:153], v246 offset:2816
ds_read_b64_tr_b8 v[154:155], v246 offset:3840
ds_read_b64_tr_b8 v[156:157], v246 offset:4096
ds_read_b64_tr_b8 v[158:159], v246 offset:5120
ds_read_b64_tr_b8 v[160:161], v246 offset:6144
ds_read_b64_tr_b8 v[162:163], v246 offset:7168
v_max_f32_e32 v147, v64, v65
v_max3_f32 v147, v66, v67, v147
v_max3_f32 v147, v68, v69, v147
v_max3_f32 v147, v70, v71, v147
v_max3_f32 v147, v72, v73, v147
v_max3_f32 v147, v74, v75, v147
v_max3_f32 v147, v76, v77, v147
v_max3_f32 v147, v78, v79, v147
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[170:177], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]
v_max_f32_e32 v144, v144, v145
v_max_f32_e32 v146, v146, v147
s_nop 0
v_permlane32_swap_b32_e32 v144, v145
v_permlane32_swap_b32_e32 v146, v147
v_max_f32_e32 v144, v144, v145
v_max_f32_e32 v145, v146, v147
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[178:185], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[164:165], v246 offset:4352
ds_read_b64_tr_b8 v[166:167], v246 offset:5376
ds_read_b64_tr_b8 v[168:169], v246 offset:6400
ds_read_b64_tr_b8 v[170:171], v246 offset:7424
ds_read_b64_tr_b8 v[172:173], v246 offset:4608
ds_read_b64_tr_b8 v[174:175], v246 offset:5632
ds_read_b64_tr_b8 v[176:177], v246 offset:6656
ds_read_b64_tr_b8 v[178:179], v246 offset:7680
v_max_f32_e32 v146, v144, v145
v_mul_f32_e32 v146, v238, v146
v_max_f32_e32 v146, v252, v146
v_sub_f32_e32 v147, v146, v252
v_cmp_lt_f32_e32 vcc, s37, v147
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[18:19], -1, 0
s_cselect_b32 s21, 1, 0
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[148:155], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]
v_cndmask_b32_e64 v148, v252, v146, s[18:19]
v_fma_f32 v128, v144, v238, -v148
v_floor_f32_e32 v128, v128
v_med3_f32 v128, v128, s99, 0
v_cvt_i32_f32_e32 v129, v128
v_add_u32_e32 v251, 0x7f, v129
v_lshlrev_b32_e32 v144, 23, v251
v_fma_f32 v129, v145, v238, -v148
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v253 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[154:155], v246 offset:4864
ds_read_b64_tr_b8 v[156:157], v246 offset:5888
ds_read_b64_tr_b8 v[158:159], v246 offset:6912
ds_read_b64_tr_b8 v[160:161], v246 offset:7936
v_floor_f32_e32 v129, v129
v_med3_f32 v129, v129, s99, 0
v_cvt_i32_f32_e32 v130, v129
v_add_u32_e32 v149, 0x7f, v130
v_lshlrev_b32_e32 v145, 23, v149
v_fma_f32 v130, v148, s95, v130
v_fma_f32 v152, v128, s95, v130
v_fma_f32 v150, v129, s95, v130
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v253 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v253 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[154:161], v[136:143], v[0:15], v242, v253 op_sel_hi:[0,0,0]
s_cmp_eq_u32 s21, 0
s_cbranch_scc1 68
v_sub_f32_e32 v128, v252, v148
v_exp_f32_e32 v128, v128
s_nop 0
v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]
v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]
v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]
v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]
v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]
v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]
v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]
v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]
v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]
v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]
v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]
v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]
v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]
v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]
v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]
v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]
v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]
v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]
v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]
v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]
v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]
v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]
v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]
v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]
v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]
v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]
v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]
v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]
v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]
v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]
v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]
v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]
v_mul_f32_e32 v250, v250, v128
s_waitcnt vmcnt(4)
s_barrier
s_add_u32 s15, s15, 1
s_add_u32 s18, s15, 1
s_cmp_ge_u32 s18, s35
s_cbranch_scc1 1867
s_setprio 0
v_fma_f32 v112, v112, v239, v152
v_fma_f32 v113, v113, v239, v152
v_fma_f32 v114, v114, v239, v152
v_fma_f32 v115, v115, v239, v152
v_fma_f32 v116, v116, v239, v152
v_fma_f32 v117, v117, v239, v152
v_fma_f32 v118, v118, v239, v152
v_fma_f32 v119, v119, v239, v152
v_fma_f32 v120, v120, v239, v152
v_fma_f32 v121, v121, v239, v152
v_fma_f32 v122, v122, v239, v152
v_fma_f32 v123, v123, v239, v152
v_fma_f32 v124, v124, v239, v152
v_fma_f32 v125, v125, v239, v152
v_fma_f32 v126, v126, v239, v152
v_fma_f32 v127, v127, v239, v152
v_fma_f32 v96, v96, v239, v152
v_cvt_pk_u8_f32 v112, v112, 0, 0
v_fma_f32 v97, v97, v239, v152
v_cvt_pk_u8_f32 v116, v116, 0, 0
v_fma_f32 v98, v98, v239, v152
v_cvt_pk_u8_f32 v120, v120, 0, 0
v_fma_f32 v99, v99, v239, v152
v_cvt_pk_u8_f32 v124, v124, 0, 0
v_fma_f32 v100, v100, v239, v152
v_cvt_pk_u8_f32 v112, v113, 1, v112
v_fma_f32 v101, v101, v239, v152
v_cvt_pk_u8_f32 v113, v117, 1, v116
v_fma_f32 v102, v102, v239, v152
v_cvt_pk_u8_f32 v116, v121, 1, v120
v_fma_f32 v103, v103, v239, v152
v_cvt_pk_u8_f32 v117, v125, 1, v124
v_fma_f32 v104, v104, v239, v152
v_cvt_pk_u8_f32 v112, v114, 2, v112
v_fma_f32 v105, v105, v239, v152
v_cvt_pk_u8_f32 v113, v118, 2, v113
v_fma_f32 v106, v106, v239, v152
v_cvt_pk_u8_f32 v114, v122, 2, v116
v_fma_f32 v107, v107, v239, v152
v_cvt_pk_u8_f32 v116, v126, 2, v117
v_fma_f32 v108, v108, v239, v152
v_cvt_pk_u8_f32 v128, v115, 3, v112
v_fma_f32 v109, v109, v239, v152
v_cvt_pk_u8_f32 v129, v119, 3, v113
v_fma_f32 v110, v110, v239, v152
v_cvt_pk_u8_f32 v130, v123, 3, v114
v_fma_f32 v111, v111, v239, v152
v_cvt_pk_u8_f32 v131, v127, 3, v116
v_fma_f32 v80, v80, v239, v150
v_cvt_pk_u8_f32 v96, v96, 0, 0
v_fma_f32 v81, v81, v239, v150
v_cvt_pk_u8_f32 v100, v100, 0, 0
v_fma_f32 v82, v82, v239, v150
v_cvt_pk_u8_f32 v104, v104, 0, 0
v_fma_f32 v83, v83, v239, v150
v_cvt_pk_u8_f32 v108, v108, 0, 0
v_fma_f32 v84, v84, v239, v150
v_cvt_pk_u8_f32 v96, v97, 1, v96
v_fma_f32 v85, v85, v239, v150
v_cvt_pk_u8_f32 v97, v101, 1, v100
v_fma_f32 v86, v86, v239, v150
v_cvt_pk_u8_f32 v100, v105, 1, v104
v_fma_f32 v87, v87, v239, v150
v_cvt_pk_u8_f32 v101, v109, 1, v108
v_fma_f32 v88, v88, v239, v150
v_cvt_pk_u8_f32 v96, v98, 2, v96
v_fma_f32 v89, v89, v239, v150
v_cvt_pk_u8_f32 v97, v102, 2, v97
v_fma_f32 v90, v90, v239, v150
v_cvt_pk_u8_f32 v98, v106, 2, v100
v_fma_f32 v91, v91, v239, v150
v_cvt_pk_u8_f32 v100, v110, 2, v101
v_fma_f32 v92, v92, v239, v150
v_cvt_pk_u8_f32 v132, v99, 3, v96
v_fma_f32 v93, v93, v239, v150
v_cvt_pk_u8_f32 v133, v103, 3, v97
v_fma_f32 v94, v94, v239, v150
v_cvt_pk_u8_f32 v134, v107, 3, v98
v_fma_f32 v95, v95, v239, v150
v_cvt_pk_u8_f32 v135, v111, 3, v100
v_fma_f32 v64, v64, v239, v150
v_cvt_pk_u8_f32 v80, v80, 0, 0
v_fma_f32 v65, v65, v239, v150
v_cvt_pk_u8_f32 v84, v84, 0, 0
v_fma_f32 v66, v66, v239, v150
v_cvt_pk_u8_f32 v88, v88, 0, 0
v_fma_f32 v67, v67, v239, v150
v_cvt_pk_u8_f32 v92, v92, 0, 0
v_fma_f32 v68, v68, v239, v150
v_cvt_pk_u8_f32 v80, v81, 1, v80
v_fma_f32 v69, v69, v239, v150
v_cvt_pk_u8_f32 v81, v85, 1, v84
v_fma_f32 v70, v70, v239, v150
v_cvt_pk_u8_f32 v84, v89, 1, v88
v_fma_f32 v71, v71, v239, v150
v_cvt_pk_u8_f32 v85, v93, 1, v92
v_fma_f32 v72, v72, v239, v150
v_cvt_pk_u8_f32 v80, v82, 2, v80
v_fma_f32 v73, v73, v239, v150
v_cvt_pk_u8_f32 v81, v86, 2, v81
v_fma_f32 v74, v74, v239, v150
v_cvt_pk_u8_f32 v82, v90, 2, v84
v_fma_f32 v75, v75, v239, v150
v_cvt_pk_u8_f32 v84, v94, 2, v85
v_fma_f32 v76, v76, v239, v150
v_cvt_pk_u8_f32 v136, v83, 3, v80
v_fma_f32 v77, v77, v239, v150
v_cvt_pk_u8_f32 v137, v87, 3, v81
v_fma_f32 v78, v78, v239, v150
v_cvt_pk_u8_f32 v138, v91, 3, v82
v_fma_f32 v79, v79, v239, v150
v_cvt_pk_u8_f32 v139, v95, 3, v84
v_cvt_pk_u8_f32 v64, v64, 0, 0
v_cvt_pk_u8_f32 v68, v68, 0, 0
v_cvt_pk_u8_f32 v72, v72, 0, 0
v_cvt_pk_u8_f32 v76, v76, 0, 0
v_cvt_pk_u8_f32 v64, v65, 1, v64
v_cvt_pk_u8_f32 v65, v69, 1, v68
v_cvt_pk_u8_f32 v68, v73, 1, v72
v_cvt_pk_u8_f32 v69, v77, 1, v76
v_cvt_pk_u8_f32 v64, v66, 2, v64
v_cvt_pk_u8_f32 v65, v70, 2, v65
v_cvt_pk_u8_f32 v66, v74, 2, v68
v_cvt_pk_u8_f32 v68, v78, 2, v69
v_cvt_pk_u8_f32 v140, v67, 3, v64
v_cvt_pk_u8_f32 v141, v71, 3, v65
v_cvt_pk_u8_f32 v142, v75, 3, v66
v_cvt_pk_u8_f32 v143, v79, 3, v68
ds_read_b128 v[72:75], v231 offset:32768
ds_read_b128 v[76:79], v231 offset:32784
ds_read_b128 v[80:83], v231 offset:36864
ds_read_b128 v[84:87], v231 offset:36880
s_barrier
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0
v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0
ds_read_b128 v[150:153], v231 offset:40960
ds_read_b128 v[154:157], v231 offset:40976
ds_read_b128 v[158:161], v231 offset:45056
ds_read_b128 v[162:165], v231 offset:45072
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0
ds_read_b128 v[166:169], v232 offset:32768
ds_read_b128 v[170:173], v232 offset:32784
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0
ds_read_b128 v[174:177], v232 offset:36864
ds_read_b128 v[178:181], v232 offset:36880
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[150:157], v[220:227], 0
ds_read_b128 v[150:153], v232 offset:40960
ds_read_b128 v[154:157], v232 offset:40976
s_min_u32 s18, s20, s53
s_add_u32 m0, s88, s98
s_nop 0
buffer_load_dwordx4 v233, s[84:87], s18 offen lds
v_mul_f32_e32 v72, v144, v64
v_add_f32_e32 v72, v250, v72
v_mul_f32_e32 v73, v145, v68
v_add_f32_e32 v250, v72, v73
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[158:165], v[220:227], 0
ds_read_b128 v[158:161], v232 offset:45056
ds_read_b128 v[162:165], v232 offset:45072
s_add_u32 m0, s88, s42
s_nop 0
buffer_load_dwordx4 v234, s[84:87], s18 offen lds
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[166:173], v[200:207], v[112:127]
ds_read_b64_tr_b8 v[166:167], v247
ds_read_b64_tr_b8 v[168:169], v247 offset:1024
ds_read_b64_tr_b8 v[170:171], v247 offset:2048
ds_read_b64_tr_b8 v[172:173], v247 offset:3072
s_min_u32 s18, s17, s53
s_add_u32 m0, s88, s49
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s18 offen lds
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[174:181], v[200:207], v[96:111]
ds_read_b64_tr_b8 v[174:175], v247 offset:256
ds_read_b64_tr_b8 v[176:177], v247 offset:1280
ds_read_b64_tr_b8 v[178:179], v247 offset:2304
ds_read_b64_tr_b8 v[180:181], v247 offset:3328
s_add_u32 m0, s88, s43
s_nop 0
buffer_load_dwordx4 v236, s[80:83], s18 offen lds
s_add_u32 s20, s20, s33
s_add_u32 s17, s17, s33
v_max_f32_e32 v144, v112, v113
v_max3_f32 v144, v114, v115, v144
v_max3_f32 v144, v116, v117, v144
v_max3_f32 v144, v118, v119, v144
v_max3_f32 v144, v120, v121, v144
v_max3_f32 v144, v122, v123, v144
v_max3_f32 v144, v124, v125, v144
v_max3_f32 v144, v126, v127, v144
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[150:157], v[200:207], v[80:95]
ds_read_b64_tr_b8 v[150:151], v247 offset:512
ds_read_b64_tr_b8 v[152:153], v247 offset:1536
ds_read_b64_tr_b8 v[154:155], v247 offset:2560
ds_read_b64_tr_b8 v[156:157], v247 offset:3584
v_max_f32_e32 v145, v96, v97
v_max3_f32 v145, v98, v99, v145
v_max3_f32 v145, v100, v101, v145
v_max3_f32 v145, v102, v103, v145
v_max3_f32 v145, v104, v105, v145
v_max3_f32 v145, v106, v107, v145
v_max3_f32 v145, v108, v109, v145
v_max3_f32 v145, v110, v111, v145
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[158:165], v[200:207], v[64:79]
s_nop 3
v_max_f32_e32 v146, v80, v81
v_max3_f32 v146, v82, v83, v146
v_max3_f32 v146, v84, v85, v146
v_max3_f32 v146, v86, v87, v146
v_max3_f32 v146, v88, v89, v146
v_max3_f32 v146, v90, v91, v146
v_max3_f32 v146, v92, v93, v146
v_max3_f32 v146, v94, v95, v146
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[166:173], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[158:159], v247 offset:768
ds_read_b64_tr_b8 v[160:161], v247 offset:1792
ds_read_b64_tr_b8 v[162:163], v247 offset:2816
ds_read_b64_tr_b8 v[164:165], v247 offset:3840
ds_read_b64_tr_b8 v[166:167], v247 offset:4096
ds_read_b64_tr_b8 v[168:169], v247 offset:5120
ds_read_b64_tr_b8 v[170:171], v247 offset:6144
ds_read_b64_tr_b8 v[172:173], v247 offset:7168
v_max_f32_e32 v147, v64, v65
v_max3_f32 v147, v66, v67, v147
v_max3_f32 v147, v68, v69, v147
v_max3_f32 v147, v70, v71, v147
v_max3_f32 v147, v72, v73, v147
v_max3_f32 v147, v74, v75, v147
v_max3_f32 v147, v76, v77, v147
v_max3_f32 v147, v78, v79, v147
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[174:181], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]
v_max_f32_e32 v144, v144, v145
v_max_f32_e32 v146, v146, v147
s_nop 0
v_permlane32_swap_b32_e32 v144, v145
v_permlane32_swap_b32_e32 v146, v147
v_max_f32_e32 v144, v144, v145
v_max_f32_e32 v145, v146, v147
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[150:157], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[174:175], v247 offset:4352
ds_read_b64_tr_b8 v[176:177], v247 offset:5376
ds_read_b64_tr_b8 v[178:179], v247 offset:6400
ds_read_b64_tr_b8 v[180:181], v247 offset:7424
ds_read_b64_tr_b8 v[182:183], v247 offset:4608
ds_read_b64_tr_b8 v[184:185], v247 offset:5632
ds_read_b64_tr_b8 v[186:187], v247 offset:6656
ds_read_b64_tr_b8 v[188:189], v247 offset:7680
v_max_f32_e32 v146, v144, v145
v_mul_f32_e32 v146, v238, v146
v_max_f32_e32 v146, v148, v146
v_sub_f32_e32 v147, v146, v148
v_cmp_lt_f32_e32 vcc, s37, v147
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[18:19], -1, 0
s_cselect_b32 s21, 1, 0
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[158:165], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]
v_cndmask_b32_e64 v252, v148, v146, s[18:19]
v_fma_f32 v128, v144, v238, -v252
v_floor_f32_e32 v128, v128
v_med3_f32 v128, v128, s99, 0
v_cvt_i32_f32_e32 v129, v128
v_add_u32_e32 v251, 0x7f, v129
v_lshlrev_b32_e32 v144, 23, v251
v_fma_f32 v129, v145, v238, -v252
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[166:173], v[136:143], v[48:63], v242, v149 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[154:155], v247 offset:4864
ds_read_b64_tr_b8 v[156:157], v247 offset:5888
ds_read_b64_tr_b8 v[158:159], v247 offset:6912
ds_read_b64_tr_b8 v[160:161], v247 offset:7936
v_floor_f32_e32 v129, v129
v_med3_f32 v129, v129, s99, 0
v_cvt_i32_f32_e32 v130, v129
v_add_u32_e32 v253, 0x7f, v130
v_lshlrev_b32_e32 v145, 23, v253
v_fma_f32 v130, v252, s95, v130
v_fma_f32 v152, v128, s95, v130
v_fma_f32 v150, v129, s95, v130
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[174:181], v[136:143], v[32:47], v242, v149 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[182:189], v[136:143], v[16:31], v242, v149 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[154:161], v[136:143], v[0:15], v242, v149 op_sel_hi:[0,0,0]
s_cmp_eq_u32 s21, 0
s_cbranch_scc1 68
v_sub_f32_e32 v128, v148, v252
v_exp_f32_e32 v128, v128
s_nop 0
v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]
v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]
v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]
v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]
v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]
v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]
v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]
v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]
v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]
v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]
v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]
v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]
v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]
v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]
v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]
v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]
v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]
v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]
v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]
v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]
v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]
v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]
v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]
v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]
v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]
v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]
v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]
v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]
v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]
v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]
v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]
v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]
v_mul_f32_e32 v250, v250, v128
s_waitcnt vmcnt(4)
s_barrier
s_add_u32 s15, s15, 1
s_add_u32 s18, s15, 1
s_cmp_ge_u32 s18, s35
s_cbranch_scc1 1247
s_setprio 0
v_fma_f32 v112, v112, v239, v152
v_fma_f32 v113, v113, v239, v152
v_fma_f32 v114, v114, v239, v152
v_fma_f32 v115, v115, v239, v152
v_fma_f32 v116, v116, v239, v152
v_fma_f32 v117, v117, v239, v152
v_fma_f32 v118, v118, v239, v152
v_fma_f32 v119, v119, v239, v152
v_fma_f32 v120, v120, v239, v152
v_fma_f32 v121, v121, v239, v152
v_fma_f32 v122, v122, v239, v152
v_fma_f32 v123, v123, v239, v152
v_fma_f32 v124, v124, v239, v152
v_fma_f32 v125, v125, v239, v152
v_fma_f32 v126, v126, v239, v152
v_fma_f32 v127, v127, v239, v152
v_fma_f32 v96, v96, v239, v152
v_cvt_pk_u8_f32 v112, v112, 0, 0
v_fma_f32 v97, v97, v239, v152
v_cvt_pk_u8_f32 v116, v116, 0, 0
v_fma_f32 v98, v98, v239, v152
v_cvt_pk_u8_f32 v120, v120, 0, 0
v_fma_f32 v99, v99, v239, v152
v_cvt_pk_u8_f32 v124, v124, 0, 0
v_fma_f32 v100, v100, v239, v152
v_cvt_pk_u8_f32 v112, v113, 1, v112
v_fma_f32 v101, v101, v239, v152
v_cvt_pk_u8_f32 v113, v117, 1, v116
v_fma_f32 v102, v102, v239, v152
v_cvt_pk_u8_f32 v116, v121, 1, v120
v_fma_f32 v103, v103, v239, v152
v_cvt_pk_u8_f32 v117, v125, 1, v124
v_fma_f32 v104, v104, v239, v152
v_cvt_pk_u8_f32 v112, v114, 2, v112
v_fma_f32 v105, v105, v239, v152
v_cvt_pk_u8_f32 v113, v118, 2, v113
v_fma_f32 v106, v106, v239, v152
v_cvt_pk_u8_f32 v114, v122, 2, v116
v_fma_f32 v107, v107, v239, v152
v_cvt_pk_u8_f32 v116, v126, 2, v117
v_fma_f32 v108, v108, v239, v152
v_cvt_pk_u8_f32 v128, v115, 3, v112
v_fma_f32 v109, v109, v239, v152
v_cvt_pk_u8_f32 v129, v119, 3, v113
v_fma_f32 v110, v110, v239, v152
v_cvt_pk_u8_f32 v130, v123, 3, v114
v_fma_f32 v111, v111, v239, v152
v_cvt_pk_u8_f32 v131, v127, 3, v116
v_fma_f32 v80, v80, v239, v150
v_cvt_pk_u8_f32 v96, v96, 0, 0
v_fma_f32 v81, v81, v239, v150
v_cvt_pk_u8_f32 v100, v100, 0, 0
v_fma_f32 v82, v82, v239, v150
v_cvt_pk_u8_f32 v104, v104, 0, 0
v_fma_f32 v83, v83, v239, v150
v_cvt_pk_u8_f32 v108, v108, 0, 0
v_fma_f32 v84, v84, v239, v150
v_cvt_pk_u8_f32 v96, v97, 1, v96
v_fma_f32 v85, v85, v239, v150
v_cvt_pk_u8_f32 v97, v101, 1, v100
v_fma_f32 v86, v86, v239, v150
v_cvt_pk_u8_f32 v100, v105, 1, v104
v_fma_f32 v87, v87, v239, v150
v_cvt_pk_u8_f32 v101, v109, 1, v108
v_fma_f32 v88, v88, v239, v150
v_cvt_pk_u8_f32 v96, v98, 2, v96
v_fma_f32 v89, v89, v239, v150
v_cvt_pk_u8_f32 v97, v102, 2, v97
v_fma_f32 v90, v90, v239, v150
v_cvt_pk_u8_f32 v98, v106, 2, v100
v_fma_f32 v91, v91, v239, v150
v_cvt_pk_u8_f32 v100, v110, 2, v101
v_fma_f32 v92, v92, v239, v150
v_cvt_pk_u8_f32 v132, v99, 3, v96
v_fma_f32 v93, v93, v239, v150
v_cvt_pk_u8_f32 v133, v103, 3, v97
v_fma_f32 v94, v94, v239, v150
v_cvt_pk_u8_f32 v134, v107, 3, v98
v_fma_f32 v95, v95, v239, v150
v_cvt_pk_u8_f32 v135, v111, 3, v100
v_fma_f32 v64, v64, v239, v150
v_cvt_pk_u8_f32 v80, v80, 0, 0
v_fma_f32 v65, v65, v239, v150
v_cvt_pk_u8_f32 v84, v84, 0, 0
v_fma_f32 v66, v66, v239, v150
v_cvt_pk_u8_f32 v88, v88, 0, 0
v_fma_f32 v67, v67, v239, v150
v_cvt_pk_u8_f32 v92, v92, 0, 0
v_fma_f32 v68, v68, v239, v150
v_cvt_pk_u8_f32 v80, v81, 1, v80
v_fma_f32 v69, v69, v239, v150
v_cvt_pk_u8_f32 v81, v85, 1, v84
v_fma_f32 v70, v70, v239, v150
v_cvt_pk_u8_f32 v84, v89, 1, v88
v_fma_f32 v71, v71, v239, v150
v_cvt_pk_u8_f32 v85, v93, 1, v92
v_fma_f32 v72, v72, v239, v150
v_cvt_pk_u8_f32 v80, v82, 2, v80
v_fma_f32 v73, v73, v239, v150
v_cvt_pk_u8_f32 v81, v86, 2, v81
v_fma_f32 v74, v74, v239, v150
v_cvt_pk_u8_f32 v82, v90, 2, v84
v_fma_f32 v75, v75, v239, v150
v_cvt_pk_u8_f32 v84, v94, 2, v85
v_fma_f32 v76, v76, v239, v150
v_cvt_pk_u8_f32 v136, v83, 3, v80
v_fma_f32 v77, v77, v239, v150
v_cvt_pk_u8_f32 v137, v87, 3, v81
v_fma_f32 v78, v78, v239, v150
v_cvt_pk_u8_f32 v138, v91, 3, v82
v_fma_f32 v79, v79, v239, v150
v_cvt_pk_u8_f32 v139, v95, 3, v84
v_cvt_pk_u8_f32 v64, v64, 0, 0
v_cvt_pk_u8_f32 v68, v68, 0, 0
v_cvt_pk_u8_f32 v72, v72, 0, 0
v_cvt_pk_u8_f32 v76, v76, 0, 0
v_cvt_pk_u8_f32 v64, v65, 1, v64
v_cvt_pk_u8_f32 v65, v69, 1, v68
v_cvt_pk_u8_f32 v68, v73, 1, v72
v_cvt_pk_u8_f32 v69, v77, 1, v76
v_cvt_pk_u8_f32 v64, v66, 2, v64
v_cvt_pk_u8_f32 v65, v70, 2, v65
v_cvt_pk_u8_f32 v66, v74, 2, v68
v_cvt_pk_u8_f32 v68, v78, 2, v69
v_cvt_pk_u8_f32 v140, v67, 3, v64
v_cvt_pk_u8_f32 v141, v71, 3, v65
v_cvt_pk_u8_f32 v142, v75, 3, v66
v_cvt_pk_u8_f32 v143, v79, 3, v68
ds_read_b128 v[72:75], v231 offset:49152
ds_read_b128 v[76:79], v231 offset:49168
ds_read_b128 v[80:83], v231 offset:53248
ds_read_b128 v[84:87], v231 offset:53264
s_barrier
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0
v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0
ds_read_b128 v[146:149], v231 offset:57344
ds_read_b128 v[150:153], v231 offset:57360
ds_read_b128 v[154:157], v231 offset:61440
ds_read_b128 v[158:161], v231 offset:61456
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0
ds_read_b128 v[162:165], v232 offset:49152
ds_read_b128 v[166:169], v232 offset:49168
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0
ds_read_b128 v[170:173], v232 offset:53248
ds_read_b128 v[174:177], v232 offset:53264
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[146:153], v[220:227], 0
ds_read_b128 v[146:149], v232 offset:57344
ds_read_b128 v[150:153], v232 offset:57360
s_min_u32 s18, s20, s53
s_add_u32 m0, s88, s97
s_nop 0
buffer_load_dwordx4 v233, s[84:87], s18 offen lds
v_mul_f32_e32 v72, v144, v64
v_add_f32_e32 v72, v250, v72
v_mul_f32_e32 v73, v145, v68
v_add_f32_e32 v250, v72, v73
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[154:161], v[220:227], 0
ds_read_b128 v[154:157], v232 offset:61440
ds_read_b128 v[158:161], v232 offset:61456
s_add_u32 m0, s88, s44
s_nop 0
buffer_load_dwordx4 v234, s[84:87], s18 offen lds
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[162:169], v[200:207], v[112:127]
ds_read_b64_tr_b8 v[162:163], v248
ds_read_b64_tr_b8 v[164:165], v248 offset:1024
ds_read_b64_tr_b8 v[166:167], v248 offset:2048
ds_read_b64_tr_b8 v[168:169], v248 offset:3072
s_min_u32 s18, s17, s53
s_add_u32 m0, s88, s92
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s18 offen lds
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[170:177], v[200:207], v[96:111]
ds_read_b64_tr_b8 v[170:171], v248 offset:256
ds_read_b64_tr_b8 v[172:173], v248 offset:1280
ds_read_b64_tr_b8 v[174:175], v248 offset:2304
ds_read_b64_tr_b8 v[176:177], v248 offset:3328
s_add_u32 m0, s88, s45
s_nop 0
buffer_load_dwordx4 v236, s[80:83], s18 offen lds
s_add_u32 s20, s20, s33
s_add_u32 s17, s17, s33
v_max_f32_e32 v144, v112, v113
v_max3_f32 v144, v114, v115, v144
v_max3_f32 v144, v116, v117, v144
v_max3_f32 v144, v118, v119, v144
v_max3_f32 v144, v120, v121, v144
v_max3_f32 v144, v122, v123, v144
v_max3_f32 v144, v124, v125, v144
v_max3_f32 v144, v126, v127, v144
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[146:153], v[200:207], v[80:95]
ds_read_b64_tr_b8 v[178:179], v248 offset:512
ds_read_b64_tr_b8 v[180:181], v248 offset:1536
ds_read_b64_tr_b8 v[182:183], v248 offset:2560
ds_read_b64_tr_b8 v[184:185], v248 offset:3584
v_max_f32_e32 v145, v96, v97
v_max3_f32 v145, v98, v99, v145
v_max3_f32 v145, v100, v101, v145
v_max3_f32 v145, v102, v103, v145
v_max3_f32 v145, v104, v105, v145
v_max3_f32 v145, v106, v107, v145
v_max3_f32 v145, v108, v109, v145
v_max3_f32 v145, v110, v111, v145
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[154:161], v[200:207], v[64:79]
s_nop 3
v_max_f32_e32 v146, v80, v81
v_max3_f32 v146, v82, v83, v146
v_max3_f32 v146, v84, v85, v146
v_max3_f32 v146, v86, v87, v146
v_max3_f32 v146, v88, v89, v146
v_max3_f32 v146, v90, v91, v146
v_max3_f32 v146, v92, v93, v146
v_max3_f32 v146, v94, v95, v146
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[162:169], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[148:149], v248 offset:768
ds_read_b64_tr_b8 v[150:151], v248 offset:1792
ds_read_b64_tr_b8 v[152:153], v248 offset:2816
ds_read_b64_tr_b8 v[154:155], v248 offset:3840
ds_read_b64_tr_b8 v[156:157], v248 offset:4096
ds_read_b64_tr_b8 v[158:159], v248 offset:5120
ds_read_b64_tr_b8 v[160:161], v248 offset:6144
ds_read_b64_tr_b8 v[162:163], v248 offset:7168
v_max_f32_e32 v147, v64, v65
v_max3_f32 v147, v66, v67, v147
v_max3_f32 v147, v68, v69, v147
v_max3_f32 v147, v70, v71, v147
v_max3_f32 v147, v72, v73, v147
v_max3_f32 v147, v74, v75, v147
v_max3_f32 v147, v76, v77, v147
v_max3_f32 v147, v78, v79, v147
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[170:177], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]
v_max_f32_e32 v144, v144, v145
v_max_f32_e32 v146, v146, v147
s_nop 0
v_permlane32_swap_b32_e32 v144, v145
v_permlane32_swap_b32_e32 v146, v147
v_max_f32_e32 v144, v144, v145
v_max_f32_e32 v145, v146, v147
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[178:185], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[164:165], v248 offset:4352
ds_read_b64_tr_b8 v[166:167], v248 offset:5376
ds_read_b64_tr_b8 v[168:169], v248 offset:6400
ds_read_b64_tr_b8 v[170:171], v248 offset:7424
ds_read_b64_tr_b8 v[172:173], v248 offset:4608
ds_read_b64_tr_b8 v[174:175], v248 offset:5632
ds_read_b64_tr_b8 v[176:177], v248 offset:6656
ds_read_b64_tr_b8 v[178:179], v248 offset:7680
v_max_f32_e32 v146, v144, v145
v_mul_f32_e32 v146, v238, v146
v_max_f32_e32 v146, v252, v146
v_sub_f32_e32 v147, v146, v252
v_cmp_lt_f32_e32 vcc, s37, v147
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[18:19], -1, 0
s_cselect_b32 s21, 1, 0
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[148:155], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]
v_cndmask_b32_e64 v148, v252, v146, s[18:19]
v_fma_f32 v128, v144, v238, -v148
v_floor_f32_e32 v128, v128
v_med3_f32 v128, v128, s99, 0
v_cvt_i32_f32_e32 v129, v128
v_add_u32_e32 v251, 0x7f, v129
v_lshlrev_b32_e32 v144, 23, v251
v_fma_f32 v129, v145, v238, -v148
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v253 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[154:155], v248 offset:4864
ds_read_b64_tr_b8 v[156:157], v248 offset:5888
ds_read_b64_tr_b8 v[158:159], v248 offset:6912
ds_read_b64_tr_b8 v[160:161], v248 offset:7936
v_floor_f32_e32 v129, v129
v_med3_f32 v129, v129, s99, 0
v_cvt_i32_f32_e32 v130, v129
v_add_u32_e32 v149, 0x7f, v130
v_lshlrev_b32_e32 v145, 23, v149
v_fma_f32 v130, v148, s95, v130
v_fma_f32 v152, v128, s95, v130
v_fma_f32 v150, v129, s95, v130
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v253 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v253 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[154:161], v[136:143], v[0:15], v242, v253 op_sel_hi:[0,0,0]
s_cmp_eq_u32 s21, 0
s_cbranch_scc1 68
v_sub_f32_e32 v128, v252, v148
v_exp_f32_e32 v128, v128
s_nop 0
v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]
v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]
v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]
v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]
v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]
v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]
v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]
v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]
v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]
v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]
v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]
v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]
v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]
v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]
v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]
v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]
v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]
v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]
v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]
v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]
v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]
v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]
v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]
v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]
v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]
v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]
v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]
v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]
v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]
v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]
v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]
v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]
v_mul_f32_e32 v250, v250, v128
s_waitcnt vmcnt(4)
s_barrier
s_add_u32 s15, s15, 1
s_add_u32 s18, s15, 1
s_cmp_ge_u32 s18, s35
s_cbranch_scc1 620
s_setprio 0
v_fma_f32 v112, v112, v239, v152
v_fma_f32 v113, v113, v239, v152
v_fma_f32 v114, v114, v239, v152
v_fma_f32 v115, v115, v239, v152
v_fma_f32 v116, v116, v239, v152
v_fma_f32 v117, v117, v239, v152
v_fma_f32 v118, v118, v239, v152
v_fma_f32 v119, v119, v239, v152
v_fma_f32 v120, v120, v239, v152
v_fma_f32 v121, v121, v239, v152
v_fma_f32 v122, v122, v239, v152
v_fma_f32 v123, v123, v239, v152
v_fma_f32 v124, v124, v239, v152
v_fma_f32 v125, v125, v239, v152
v_fma_f32 v126, v126, v239, v152
v_fma_f32 v127, v127, v239, v152
v_fma_f32 v96, v96, v239, v152
v_cvt_pk_u8_f32 v112, v112, 0, 0
v_fma_f32 v97, v97, v239, v152
v_cvt_pk_u8_f32 v116, v116, 0, 0
v_fma_f32 v98, v98, v239, v152
v_cvt_pk_u8_f32 v120, v120, 0, 0
v_fma_f32 v99, v99, v239, v152
v_cvt_pk_u8_f32 v124, v124, 0, 0
v_fma_f32 v100, v100, v239, v152
v_cvt_pk_u8_f32 v112, v113, 1, v112
v_fma_f32 v101, v101, v239, v152
v_cvt_pk_u8_f32 v113, v117, 1, v116
v_fma_f32 v102, v102, v239, v152
v_cvt_pk_u8_f32 v116, v121, 1, v120
v_fma_f32 v103, v103, v239, v152
v_cvt_pk_u8_f32 v117, v125, 1, v124
v_fma_f32 v104, v104, v239, v152
v_cvt_pk_u8_f32 v112, v114, 2, v112
v_fma_f32 v105, v105, v239, v152
v_cvt_pk_u8_f32 v113, v118, 2, v113
v_fma_f32 v106, v106, v239, v152
v_cvt_pk_u8_f32 v114, v122, 2, v116
v_fma_f32 v107, v107, v239, v152
v_cvt_pk_u8_f32 v116, v126, 2, v117
v_fma_f32 v108, v108, v239, v152
v_cvt_pk_u8_f32 v128, v115, 3, v112
v_fma_f32 v109, v109, v239, v152
v_cvt_pk_u8_f32 v129, v119, 3, v113
v_fma_f32 v110, v110, v239, v152
v_cvt_pk_u8_f32 v130, v123, 3, v114
v_fma_f32 v111, v111, v239, v152
v_cvt_pk_u8_f32 v131, v127, 3, v116
v_fma_f32 v80, v80, v239, v150
v_cvt_pk_u8_f32 v96, v96, 0, 0
v_fma_f32 v81, v81, v239, v150
v_cvt_pk_u8_f32 v100, v100, 0, 0
v_fma_f32 v82, v82, v239, v150
v_cvt_pk_u8_f32 v104, v104, 0, 0
v_fma_f32 v83, v83, v239, v150
v_cvt_pk_u8_f32 v108, v108, 0, 0
v_fma_f32 v84, v84, v239, v150
v_cvt_pk_u8_f32 v96, v97, 1, v96
v_fma_f32 v85, v85, v239, v150
v_cvt_pk_u8_f32 v97, v101, 1, v100
v_fma_f32 v86, v86, v239, v150
v_cvt_pk_u8_f32 v100, v105, 1, v104
v_fma_f32 v87, v87, v239, v150
v_cvt_pk_u8_f32 v101, v109, 1, v108
v_fma_f32 v88, v88, v239, v150
v_cvt_pk_u8_f32 v96, v98, 2, v96
v_fma_f32 v89, v89, v239, v150
v_cvt_pk_u8_f32 v97, v102, 2, v97
v_fma_f32 v90, v90, v239, v150
v_cvt_pk_u8_f32 v98, v106, 2, v100
v_fma_f32 v91, v91, v239, v150
v_cvt_pk_u8_f32 v100, v110, 2, v101
v_fma_f32 v92, v92, v239, v150
v_cvt_pk_u8_f32 v132, v99, 3, v96
v_fma_f32 v93, v93, v239, v150
v_cvt_pk_u8_f32 v133, v103, 3, v97
v_fma_f32 v94, v94, v239, v150
v_cvt_pk_u8_f32 v134, v107, 3, v98
v_fma_f32 v95, v95, v239, v150
v_cvt_pk_u8_f32 v135, v111, 3, v100
v_fma_f32 v64, v64, v239, v150
v_cvt_pk_u8_f32 v80, v80, 0, 0
v_fma_f32 v65, v65, v239, v150
v_cvt_pk_u8_f32 v84, v84, 0, 0
v_fma_f32 v66, v66, v239, v150
v_cvt_pk_u8_f32 v88, v88, 0, 0
v_fma_f32 v67, v67, v239, v150
v_cvt_pk_u8_f32 v92, v92, 0, 0
v_fma_f32 v68, v68, v239, v150
v_cvt_pk_u8_f32 v80, v81, 1, v80
v_fma_f32 v69, v69, v239, v150
v_cvt_pk_u8_f32 v81, v85, 1, v84
v_fma_f32 v70, v70, v239, v150
v_cvt_pk_u8_f32 v84, v89, 1, v88
v_fma_f32 v71, v71, v239, v150
v_cvt_pk_u8_f32 v85, v93, 1, v92
v_fma_f32 v72, v72, v239, v150
v_cvt_pk_u8_f32 v80, v82, 2, v80
v_fma_f32 v73, v73, v239, v150
v_cvt_pk_u8_f32 v81, v86, 2, v81
v_fma_f32 v74, v74, v239, v150
v_cvt_pk_u8_f32 v82, v90, 2, v84
v_fma_f32 v75, v75, v239, v150
v_cvt_pk_u8_f32 v84, v94, 2, v85
v_fma_f32 v76, v76, v239, v150
v_cvt_pk_u8_f32 v136, v83, 3, v80
v_fma_f32 v77, v77, v239, v150
v_cvt_pk_u8_f32 v137, v87, 3, v81
v_fma_f32 v78, v78, v239, v150
v_cvt_pk_u8_f32 v138, v91, 3, v82
v_fma_f32 v79, v79, v239, v150
v_cvt_pk_u8_f32 v139, v95, 3, v84
v_cvt_pk_u8_f32 v64, v64, 0, 0
v_cvt_pk_u8_f32 v68, v68, 0, 0
v_cvt_pk_u8_f32 v72, v72, 0, 0
v_cvt_pk_u8_f32 v76, v76, 0, 0
v_cvt_pk_u8_f32 v64, v65, 1, v64
v_cvt_pk_u8_f32 v65, v69, 1, v68
v_cvt_pk_u8_f32 v68, v73, 1, v72
v_cvt_pk_u8_f32 v69, v77, 1, v76
v_cvt_pk_u8_f32 v64, v66, 2, v64
v_cvt_pk_u8_f32 v65, v70, 2, v65
v_cvt_pk_u8_f32 v66, v74, 2, v68
v_cvt_pk_u8_f32 v68, v78, 2, v69
v_cvt_pk_u8_f32 v140, v67, 3, v64
v_cvt_pk_u8_f32 v141, v71, 3, v65
v_cvt_pk_u8_f32 v142, v75, 3, v66
v_cvt_pk_u8_f32 v143, v79, 3, v68
ds_read_b128 v[72:75], v231
ds_read_b128 v[76:79], v231 offset:16
ds_read_b128 v[80:83], v231 offset:4096
ds_read_b128 v[84:87], v231 offset:4112
s_barrier
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0
v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0
ds_read_b128 v[150:153], v231 offset:8192
ds_read_b128 v[154:157], v231 offset:8208
ds_read_b128 v[158:161], v231 offset:12288
ds_read_b128 v[162:165], v231 offset:12304
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0
ds_read_b128 v[166:169], v232
ds_read_b128 v[170:173], v232 offset:16
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0
ds_read_b128 v[174:177], v232 offset:4096
ds_read_b128 v[178:181], v232 offset:4112
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[150:157], v[220:227], 0
ds_read_b128 v[150:153], v232 offset:8192
ds_read_b128 v[154:157], v232 offset:8208
s_min_u32 s18, s20, s53
s_add_u32 m0, s88, s89
s_nop 0
buffer_load_dwordx4 v233, s[84:87], s18 offen lds
v_mul_f32_e32 v72, v144, v64
v_add_f32_e32 v72, v250, v72
v_mul_f32_e32 v73, v145, v68
v_add_f32_e32 v250, v72, v73
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[158:165], v[220:227], 0
ds_read_b128 v[158:161], v232 offset:12288
ds_read_b128 v[162:165], v232 offset:12304
s_add_u32 m0, s88, s90
s_nop 0
buffer_load_dwordx4 v234, s[84:87], s18 offen lds
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[166:173], v[200:207], v[112:127]
ds_read_b64_tr_b8 v[166:167], v249
ds_read_b64_tr_b8 v[168:169], v249 offset:1024
ds_read_b64_tr_b8 v[170:171], v249 offset:2048
ds_read_b64_tr_b8 v[172:173], v249 offset:3072
s_min_u32 s18, s17, s53
s_add_u32 m0, s88, s93
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s18 offen lds
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[174:181], v[200:207], v[96:111]
ds_read_b64_tr_b8 v[174:175], v249 offset:256
ds_read_b64_tr_b8 v[176:177], v249 offset:1280
ds_read_b64_tr_b8 v[178:179], v249 offset:2304
ds_read_b64_tr_b8 v[180:181], v249 offset:3328
s_add_u32 m0, s88, s34
s_nop 0
buffer_load_dwordx4 v236, s[80:83], s18 offen lds
s_add_u32 s20, s20, s33
s_add_u32 s17, s17, s33
v_max_f32_e32 v144, v112, v113
v_max3_f32 v144, v114, v115, v144
v_max3_f32 v144, v116, v117, v144
v_max3_f32 v144, v118, v119, v144
v_max3_f32 v144, v120, v121, v144
v_max3_f32 v144, v122, v123, v144
v_max3_f32 v144, v124, v125, v144
v_max3_f32 v144, v126, v127, v144
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[150:157], v[200:207], v[80:95]
ds_read_b64_tr_b8 v[150:151], v249 offset:512
ds_read_b64_tr_b8 v[152:153], v249 offset:1536
ds_read_b64_tr_b8 v[154:155], v249 offset:2560
ds_read_b64_tr_b8 v[156:157], v249 offset:3584
v_max_f32_e32 v145, v96, v97
v_max3_f32 v145, v98, v99, v145
v_max3_f32 v145, v100, v101, v145
v_max3_f32 v145, v102, v103, v145
v_max3_f32 v145, v104, v105, v145
v_max3_f32 v145, v106, v107, v145
v_max3_f32 v145, v108, v109, v145
v_max3_f32 v145, v110, v111, v145
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[158:165], v[200:207], v[64:79]
s_nop 3
v_max_f32_e32 v146, v80, v81
v_max3_f32 v146, v82, v83, v146
v_max3_f32 v146, v84, v85, v146
v_max3_f32 v146, v86, v87, v146
v_max3_f32 v146, v88, v89, v146
v_max3_f32 v146, v90, v91, v146
v_max3_f32 v146, v92, v93, v146
v_max3_f32 v146, v94, v95, v146
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[166:173], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[158:159], v249 offset:768
ds_read_b64_tr_b8 v[160:161], v249 offset:1792
ds_read_b64_tr_b8 v[162:163], v249 offset:2816
ds_read_b64_tr_b8 v[164:165], v249 offset:3840
ds_read_b64_tr_b8 v[166:167], v249 offset:4096
ds_read_b64_tr_b8 v[168:169], v249 offset:5120
ds_read_b64_tr_b8 v[170:171], v249 offset:6144
ds_read_b64_tr_b8 v[172:173], v249 offset:7168
v_max_f32_e32 v147, v64, v65
v_max3_f32 v147, v66, v67, v147
v_max3_f32 v147, v68, v69, v147
v_max3_f32 v147, v70, v71, v147
v_max3_f32 v147, v72, v73, v147
v_max3_f32 v147, v74, v75, v147
v_max3_f32 v147, v76, v77, v147
v_max3_f32 v147, v78, v79, v147
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[174:181], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]
v_max_f32_e32 v144, v144, v145
v_max_f32_e32 v146, v146, v147
s_nop 0
v_permlane32_swap_b32_e32 v144, v145
v_permlane32_swap_b32_e32 v146, v147
v_max_f32_e32 v144, v144, v145
v_max_f32_e32 v145, v146, v147
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[150:157], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[174:175], v249 offset:4352
ds_read_b64_tr_b8 v[176:177], v249 offset:5376
ds_read_b64_tr_b8 v[178:179], v249 offset:6400
ds_read_b64_tr_b8 v[180:181], v249 offset:7424
ds_read_b64_tr_b8 v[182:183], v249 offset:4608
ds_read_b64_tr_b8 v[184:185], v249 offset:5632
ds_read_b64_tr_b8 v[186:187], v249 offset:6656
ds_read_b64_tr_b8 v[188:189], v249 offset:7680
v_max_f32_e32 v146, v144, v145
v_mul_f32_e32 v146, v238, v146
v_max_f32_e32 v146, v148, v146
v_sub_f32_e32 v147, v146, v148
v_cmp_lt_f32_e32 vcc, s37, v147
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[18:19], -1, 0
s_cselect_b32 s21, 1, 0
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[158:165], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]
v_cndmask_b32_e64 v252, v148, v146, s[18:19]
v_fma_f32 v128, v144, v238, -v252
v_floor_f32_e32 v128, v128
v_med3_f32 v128, v128, s99, 0
v_cvt_i32_f32_e32 v129, v128
v_add_u32_e32 v251, 0x7f, v129
v_lshlrev_b32_e32 v144, 23, v251
v_fma_f32 v129, v145, v238, -v252
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[166:173], v[136:143], v[48:63], v242, v149 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[154:155], v249 offset:4864
ds_read_b64_tr_b8 v[156:157], v249 offset:5888
ds_read_b64_tr_b8 v[158:159], v249 offset:6912
ds_read_b64_tr_b8 v[160:161], v249 offset:7936
v_floor_f32_e32 v129, v129
v_med3_f32 v129, v129, s99, 0
v_cvt_i32_f32_e32 v130, v129
v_add_u32_e32 v253, 0x7f, v130
v_lshlrev_b32_e32 v145, 23, v253
v_fma_f32 v130, v252, s95, v130
v_fma_f32 v152, v128, s95, v130
v_fma_f32 v150, v129, s95, v130
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[174:181], v[136:143], v[32:47], v242, v149 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[182:189], v[136:143], v[16:31], v242, v149 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[154:161], v[136:143], v[0:15], v242, v149 op_sel_hi:[0,0,0]
s_cmp_eq_u32 s21, 0
s_cbranch_scc1 68
v_sub_f32_e32 v128, v148, v252
v_exp_f32_e32 v128, v128
s_nop 0
v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]
v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]
v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]
v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]
v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]
v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]
v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]
v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]
v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]
v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]
v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]
v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]
v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]
v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]
v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]
v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]
v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]
v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]
v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]
v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]
v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]
v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]
v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]
v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]
v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]
v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]
v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]
v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]
v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]
v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]
v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]
v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]
v_mul_f32_e32 v250, v250, v128
s_waitcnt vmcnt(4)
s_barrier
s_add_u32 s15, s15, 1
s_branch 63047
s_branch 2
s_add_u32 s17, s15, s10
s_bitcmp1_b32 s17, 0
s_cselect_b64 s[18:19], -1, 0
s_and_b64 vcc, exec, s[18:19]
s_cbranch_vccnz 1590
s_add_u32 s17, s15, 1
s_cmp_ge_u32 s17, s91
s_cbranch_scc1 3178
s_cmp_ge_u32 s15, s35
s_cbranch_scc1 1106
s_setprio 0
s_add_u32 s17, s15, s10
s_add_u32 s18, s17, 1
s_lshl_b32 s19, s18, 14
v_fma_f32 v108, v108, v239, v152
v_fma_f32 v64, v64, v239, v150
v_fma_f32 v68, v68, v239, v150
s_and_b32 s19, s19, 0x8000
v_fma_f32 v96, v96, v239, v152
v_fma_f32 v116, v116, v239, v152
v_fma_f32 v100, v100, v239, v152
v_fma_f32 v120, v120, v239, v152
v_fma_f32 v104, v104, v239, v152
v_fma_f32 v109, v109, v239, v152
v_fma_f32 v80, v80, v239, v150
v_fma_f32 v65, v65, v239, v150
v_fma_f32 v84, v84, v239, v150
v_fma_f32 v69, v69, v239, v150
v_fma_f32 v72, v72, v239, v150
v_fma_f32 v92, v92, v239, v150
v_cvt_pk_u8_f32 v108, v108, 0, 0
v_cvt_pk_u8_f32 v64, v64, 0, 0
v_cvt_pk_u8_f32 v68, v68, 0, 0
s_bitcmp1_b32 s18, 0
v_fma_f32 v97, v97, v239, v152
v_fma_f32 v117, v117, v239, v152
v_fma_f32 v101, v101, v239, v152
v_fma_f32 v121, v121, v239, v152
v_fma_f32 v105, v105, v239, v152
v_fma_f32 v110, v110, v239, v152
v_fma_f32 v81, v81, v239, v150
v_fma_f32 v66, v66, v239, v150
v_fma_f32 v85, v85, v239, v150
v_fma_f32 v70, v70, v239, v150
v_fma_f32 v88, v88, v239, v150
v_fma_f32 v73, v73, v239, v150
v_fma_f32 v93, v93, v239, v150
v_cvt_pk_u8_f32 v96, v96, 0, 0
v_cvt_pk_u8_f32 v116, v116, 0, 0
v_cvt_pk_u8_f32 v100, v100, 0, 0
v_cvt_pk_u8_f32 v120, v120, 0, 0
v_cvt_pk_u8_f32 v104, v104, 0, 0
v_cvt_pk_u8_f32 v80, v80, 0, 0
v_cvt_pk_u8_f32 v84, v84, 0, 0
v_cvt_pk_u8_f32 v72, v72, 0, 0
v_cvt_pk_u8_f32 v92, v92, 0, 0
v_cvt_pk_u8_f32 v108, v109, 1, v108
v_cvt_pk_u8_f32 v64, v65, 1, v64
v_cvt_pk_u8_f32 v68, v69, 1, v68
s_cselect_b32 s18, 0x4000, 0
v_fma_f32 v98, v98, v239, v152
v_fma_f32 v118, v118, v239, v152
v_fma_f32 v102, v102, v239, v152
v_fma_f32 v122, v122, v239, v152
v_fma_f32 v106, v106, v239, v152
v_fma_f32 v111, v111, v239, v152
v_fma_f32 v82, v82, v239, v150
v_fma_f32 v86, v86, v239, v150
v_fma_f32 v71, v71, v239, v150
v_fma_f32 v89, v89, v239, v150
v_cvt_pk_u8_f32 v88, v88, 0, 0
v_cvt_pk_u8_f32 v96, v97, 1, v96
v_cvt_pk_u8_f32 v97, v117, 1, v116
v_cvt_pk_u8_f32 v100, v101, 1, v100
v_cvt_pk_u8_f32 v101, v121, 1, v120
v_cvt_pk_u8_f32 v104, v105, 1, v104
v_cvt_pk_u8_f32 v80, v81, 1, v80
v_cvt_pk_u8_f32 v65, v85, 1, v84
v_cvt_pk_u8_f32 v72, v73, 1, v72
v_cvt_pk_u8_f32 v73, v93, 1, v92
v_cvt_pk_u8_f32 v93, v110, 2, v108
v_cvt_pk_u8_f32 v64, v66, 2, v64
v_cvt_pk_u8_f32 v66, v70, 2, v68
s_or_b32 s19, s19, s18
v_fma_f32 v99, v99, v239, v152
v_fma_f32 v119, v119, v239, v152
v_fma_f32 v103, v103, v239, v152
v_fma_f32 v123, v123, v239, v152
v_fma_f32 v107, v107, v239, v152
v_fma_f32 v83, v83, v239, v150
v_fma_f32 v87, v87, v239, v150
v_cvt_pk_u8_f32 v69, v89, 1, v88
v_cvt_pk_u8_f32 v81, v98, 2, v96
v_cvt_pk_u8_f32 v84, v118, 2, v97
v_cvt_pk_u8_f32 v85, v102, 2, v100
v_cvt_pk_u8_f32 v88, v122, 2, v101
v_cvt_pk_u8_f32 v89, v106, 2, v104
v_cvt_pk_u8_f32 v80, v82, 2, v80
v_cvt_pk_u8_f32 v65, v86, 2, v65
v_cvt_pk_u8_f32 v215, v111, 3, v93
v_cvt_pk_u8_f32 v93, v71, 3, v66
v_or_b32_e32 v71, s19, v231
v_cvt_pk_u8_f32 v212, v99, 3, v81
v_cvt_pk_u8_f32 v209, v119, 3, v84
v_cvt_pk_u8_f32 v213, v103, 3, v85
v_cvt_pk_u8_f32 v210, v123, 3, v88
v_cvt_pk_u8_f32 v214, v107, 3, v89
v_cvt_pk_u8_f32 v88, v83, 3, v80
v_cvt_pk_u8_f32 v89, v87, 3, v65
ds_read_b128 v[80:83], v71
ds_read_b128 v[84:87], v71 offset:16
ds_read_b128 v[96:99], v71 offset:4096
ds_read_b128 v[100:103], v71 offset:4112
v_fma_f32 v112, v112, v239, v152
v_fma_f32 v124, v124, v239, v152
v_fma_f32 v113, v113, v239, v152
v_fma_f32 v125, v125, v239, v152
v_fma_f32 v76, v76, v239, v150
v_cvt_pk_u8_f32 v112, v112, 0, 0
v_cvt_pk_u8_f32 v124, v124, 0, 0
v_fma_f32 v114, v114, v239, v152
v_fma_f32 v126, v126, v239, v152
v_fma_f32 v77, v77, v239, v150
v_cvt_pk_u8_f32 v76, v76, 0, 0
v_cvt_pk_u8_f32 v112, v113, 1, v112
v_cvt_pk_u8_f32 v105, v125, 1, v124
v_fma_f32 v115, v115, v239, v152
v_fma_f32 v127, v127, v239, v152
v_fma_f32 v90, v90, v239, v150
v_fma_f32 v74, v74, v239, v150
v_fma_f32 v94, v94, v239, v150
v_fma_f32 v78, v78, v239, v150
v_cvt_pk_u8_f32 v76, v77, 1, v76
v_cvt_pk_u8_f32 v77, v114, 2, v112
v_cvt_pk_u8_f32 v92, v126, 2, v105
v_fma_f32 v67, v67, v239, v150
v_fma_f32 v91, v91, v239, v150
v_fma_f32 v75, v75, v239, v150
v_fma_f32 v95, v95, v239, v150
v_fma_f32 v79, v79, v239, v150
v_cvt_pk_u8_f32 v68, v90, 2, v69
v_cvt_pk_u8_f32 v69, v74, 2, v72
v_cvt_pk_u8_f32 v70, v94, 2, v73
v_cvt_pk_u8_f32 v72, v78, 2, v76
v_cvt_pk_u8_f32 v208, v115, 3, v77
v_cvt_pk_u8_f32 v211, v127, 3, v92
v_cvt_pk_u8_f32 v92, v67, 3, v64
v_cvt_pk_u8_f32 v90, v91, 3, v68
v_cvt_pk_u8_f32 v94, v75, 3, v69
v_cvt_pk_u8_f32 v91, v95, 3, v70
v_cvt_pk_u8_f32 v95, v79, 3, v72
s_barrier
s_and_b32 s18, s17, 3
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[208:215], 0
s_nop 0
v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[192:199], v[88:95], 0
s_nop 3
v_lshlrev_b32_e32 v65, 23, v251
v_mul_f32_e32 v64, v64, v65
v_add_f32_e32 v64, v250, v64
v_lshlrev_b32_e32 v65, 23, v253
s_nop 3
v_mul_f32_e32 v65, v66, v65
v_add_f32_e32 v250, v64, v65
s_waitcnt lgkmcnt(2)
v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[80:87], v[220:227], 0
ds_read_b128 v[88:91], v71 offset:8192
ds_read_b128 v[92:95], v71 offset:8208
ds_read_b128 v[104:107], v71 offset:12288
ds_read_b128 v[108:111], v71 offset:12304
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[96:103], v[220:227], 0
v_or_b32_e32 v64, s19, v232
ds_read_b128 v[66:69], v64
ds_read_b128 v[70:73], v64 offset:16
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[88:95], v[220:227], 0
ds_read_b128 v[74:77], v64 offset:4096
ds_read_b128 v[78:81], v64 offset:4112
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[104:111], v[220:227], 0
ds_read_b128 v[82:85], v64 offset:8192
ds_read_b128 v[86:89], v64 offset:8208
ds_read_b128 v[112:115], v64 offset:12288
ds_read_b128 v[116:119], v64 offset:12304
s_add_u32 s19, s15, 4
s_cmp_ge_u32 s19, s91
s_cbranch_scc1 19
s_lshl_b32 s20, s18, 14
s_and_b32 s20, s20, 0x8000
s_bitcmp1_b32 s17, 0
s_cselect_b32 s21, 0x4000, 0
s_or_b32 s20, s20, s21
s_or_b32 s20, s20, s88
s_mul_i32 s19, s19, s8
s_lshl_b32 s19, s19, 7
s_nop 0
buffer_load_dwordx4 v233, s[84:87], s19 offen lds
s_or_b32 m0, s20, 0x2000
s_nop 0
buffer_load_dwordx4 v234, s[84:87], s19 offen lds
s_add_u32 s19, s15, 2
s_cmp_ge_u32 s19, s91
s_cbranch_scc1 20
s_not_b32 s18, s18
s_lshl_b32 s18, s18, 14
s_and_b32 s18, s18, 0x8000
s_bitcmp1_b32 s17, 0
s_cselect_b32 s20, s93, 0x10000
s_or_b32 s18, s18, s20
s_or_b32 s18, s18, s88
s_mul_i32 s19, s19, s8
s_lshl_b32 s19, s19, 7
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s19 offen lds
s_add_u32 m0, s18, 0x2000
s_nop 0
buffer_load_dwordx4 v236, s[80:83], s19 offen lds
s_waitcnt lgkmcnt(6)
v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[66:73], v[200:207], v[176:191]
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[74:81], v[200:207], v[160:175]
s_nop 15
s_nop 3
s_waitcnt lgkmcnt(2)
v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[82:89], v[200:207], v[144:159]
s_nop 15
s_nop 3
s_waitcnt lgkmcnt(0)
v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[112:119], v[200:207], v[128:143]
s_nop 15
s_nop 3
s_lshl_b32 s18, s15, 7
s_add_u32 s20, s18, 0x80
s_sub_u32 s18, s3, s20
s_sub_i32 s18, s18, 0
s_cmp_ge_i32 s18, 32
s_cbranch_scc1 90
s_cmp_lt_i32 s18, 0
s_cbranch_scc1 65
v_add_u32_e32 v127, s18, v243
v_cmp_gt_i32_e32 vcc, 0, v127
s_nop 1
v_cndmask_b32_e64 v112, v176, v241, vcc
v_cmp_gt_i32_e32 vcc, 1, v127
s_nop 1
v_cndmask_b32_e64 v113, v177, v241, vcc
v_cmp_gt_i32_e32 vcc, 2, v127
s_nop 1
v_cndmask_b32_e64 v114, v178, v241, vcc
v_cmp_gt_i32_e32 vcc, 3, v127
s_nop 1
v_cndmask_b32_e64 v115, v179, v241, vcc
v_cmp_gt_i32_e32 vcc, 8, v127
s_nop 1
v_cndmask_b32_e64 v116, v180, v241, vcc
v_cmp_gt_i32_e32 vcc, 9, v127
s_nop 1
v_cndmask_b32_e64 v117, v181, v241, vcc
v_cmp_gt_i32_e32 vcc, 10, v127
s_nop 1
v_cndmask_b32_e64 v118, v182, v241, vcc
v_cmp_gt_i32_e32 vcc, 11, v127
s_nop 1
v_cndmask_b32_e64 v119, v183, v241, vcc
v_cmp_gt_i32_e32 vcc, 16, v127
s_nop 1
v_cndmask_b32_e64 v120, v184, v241, vcc
v_cmp_gt_i32_e32 vcc, 17, v127
s_nop 1
v_cndmask_b32_e64 v121, v185, v241, vcc
v_cmp_gt_i32_e32 vcc, 18, v127
s_nop 1
v_cndmask_b32_e64 v122, v186, v241, vcc
v_cmp_gt_i32_e32 vcc, 19, v127
s_nop 1
v_cndmask_b32_e64 v123, v187, v241, vcc
v_cmp_gt_i32_e32 vcc, 24, v127
s_nop 1
v_cndmask_b32_e64 v124, v188, v241, vcc
v_cmp_gt_i32_e32 vcc, 25, v127
s_nop 1
v_cndmask_b32_e64 v125, v189, v241, vcc
v_cmp_gt_i32_e32 vcc, 26, v127
s_nop 1
v_cndmask_b32_e64 v126, v190, v241, vcc
v_cmp_gt_i32_e32 vcc, 27, v127
s_nop 1
v_cndmask_b32_e64 v127, v191, v241, vcc
s_sub_u32 s18, s3, s20
s_sub_i32 s18, s18, 32
s_cmp_ge_i32 s18, 32
s_cbranch_scc1 90
s_cmp_lt_i32 s18, 0
s_cbranch_scc1 65
v_add_u32_e32 v111, s18, v243
v_cmp_gt_i32_e32 vcc, 0, v111
s_nop 1
v_cndmask_b32_e64 v96, v160, v241, vcc
v_cmp_gt_i32_e32 vcc, 1, v111
s_nop 1
v_cndmask_b32_e64 v97, v161, v241, vcc
v_cmp_gt_i32_e32 vcc, 2, v111
s_nop 1
v_cndmask_b32_e64 v98, v162, v241, vcc
v_cmp_gt_i32_e32 vcc, 3, v111
s_nop 1
v_cndmask_b32_e64 v99, v163, v241, vcc
v_cmp_gt_i32_e32 vcc, 8, v111
s_nop 1
v_cndmask_b32_e64 v100, v164, v241, vcc
v_cmp_gt_i32_e32 vcc, 9, v111
s_nop 1
v_cndmask_b32_e64 v101, v165, v241, vcc
v_cmp_gt_i32_e32 vcc, 10, v111
s_nop 1
v_cndmask_b32_e64 v102, v166, v241, vcc
v_cmp_gt_i32_e32 vcc, 11, v111
s_nop 1
v_cndmask_b32_e64 v103, v167, v241, vcc
v_cmp_gt_i32_e32 vcc, 16, v111
s_nop 1
v_cndmask_b32_e64 v104, v168, v241, vcc
v_cmp_gt_i32_e32 vcc, 17, v111
s_nop 1
v_cndmask_b32_e64 v105, v169, v241, vcc
v_cmp_gt_i32_e32 vcc, 18, v111
s_nop 1
v_cndmask_b32_e64 v106, v170, v241, vcc
v_cmp_gt_i32_e32 vcc, 19, v111
s_nop 1
v_cndmask_b32_e64 v107, v171, v241, vcc
v_cmp_gt_i32_e32 vcc, 24, v111
s_nop 1
v_cndmask_b32_e64 v108, v172, v241, vcc
v_cmp_gt_i32_e32 vcc, 25, v111
s_nop 1
v_cndmask_b32_e64 v109, v173, v241, vcc
v_cmp_gt_i32_e32 vcc, 26, v111
s_nop 1
v_cndmask_b32_e64 v110, v174, v241, vcc
v_cmp_gt_i32_e32 vcc, 27, v111
s_nop 1
v_cndmask_b32_e64 v111, v175, v241, vcc
s_sub_u32 s18, s3, s20
s_sub_i32 s18, s18, 64
s_cmp_ge_i32 s18, 32
s_cbranch_scc1 90
s_cmp_lt_i32 s18, 0
s_cbranch_scc1 65
v_add_u32_e32 v95, s18, v243
v_cmp_gt_i32_e32 vcc, 0, v95
s_nop 1
v_cndmask_b32_e64 v80, v144, v241, vcc
v_cmp_gt_i32_e32 vcc, 1, v95
s_nop 1
v_cndmask_b32_e64 v81, v145, v241, vcc
v_cmp_gt_i32_e32 vcc, 2, v95
s_nop 1
v_cndmask_b32_e64 v82, v146, v241, vcc
v_cmp_gt_i32_e32 vcc, 3, v95
s_nop 1
v_cndmask_b32_e64 v83, v147, v241, vcc
v_cmp_gt_i32_e32 vcc, 8, v95
s_nop 1
v_cndmask_b32_e64 v84, v148, v241, vcc
v_cmp_gt_i32_e32 vcc, 9, v95
s_nop 1
v_cndmask_b32_e64 v85, v149, v241, vcc
v_cmp_gt_i32_e32 vcc, 10, v95
s_nop 1
v_cndmask_b32_e64 v86, v150, v241, vcc
v_cmp_gt_i32_e32 vcc, 11, v95
s_nop 1
v_cndmask_b32_e64 v87, v151, v241, vcc
v_cmp_gt_i32_e32 vcc, 16, v95
s_nop 1
v_cndmask_b32_e64 v88, v152, v241, vcc
v_cmp_gt_i32_e32 vcc, 17, v95
s_nop 1
v_cndmask_b32_e64 v89, v153, v241, vcc
v_cmp_gt_i32_e32 vcc, 18, v95
s_nop 1
v_cndmask_b32_e64 v90, v154, v241, vcc
v_cmp_gt_i32_e32 vcc, 19, v95
s_nop 1
v_cndmask_b32_e64 v91, v155, v241, vcc
v_cmp_gt_i32_e32 vcc, 24, v95
s_nop 1
v_cndmask_b32_e64 v92, v156, v241, vcc
v_cmp_gt_i32_e32 vcc, 25, v95
s_nop 1
v_cndmask_b32_e64 v93, v157, v241, vcc
v_cmp_gt_i32_e32 vcc, 26, v95
s_nop 1
v_cndmask_b32_e64 v94, v158, v241, vcc
v_cmp_gt_i32_e32 vcc, 27, v95
s_nop 1
v_cndmask_b32_e64 v95, v159, v241, vcc
s_sub_u32 s18, s3, s20
s_sub_i32 s18, s18, 0x60
s_cmp_ge_i32 s18, 32
s_cbranch_scc1 90
s_cmp_lt_i32 s18, 0
s_cbranch_scc1 65
v_add_u32_e32 v79, s18, v243
v_cmp_gt_i32_e32 vcc, 0, v79
s_nop 1
v_cndmask_b32_e64 v64, v128, v241, vcc
v_cmp_gt_i32_e32 vcc, 1, v79
s_nop 1
v_cndmask_b32_e64 v65, v129, v241, vcc
v_cmp_gt_i32_e32 vcc, 2, v79
s_nop 1
v_cndmask_b32_e64 v66, v130, v241, vcc
v_cmp_gt_i32_e32 vcc, 3, v79
s_nop 1
v_cndmask_b32_e64 v67, v131, v241, vcc
v_cmp_gt_i32_e32 vcc, 8, v79
s_nop 1
v_cndmask_b32_e64 v68, v132, v241, vcc
v_cmp_gt_i32_e32 vcc, 9, v79
s_nop 1
v_cndmask_b32_e64 v69, v133, v241, vcc
v_cmp_gt_i32_e32 vcc, 10, v79
s_nop 1
v_cndmask_b32_e64 v70, v134, v241, vcc
v_cmp_gt_i32_e32 vcc, 11, v79
s_nop 1
v_cndmask_b32_e64 v71, v135, v241, vcc
v_cmp_gt_i32_e32 vcc, 16, v79
s_nop 1
v_cndmask_b32_e64 v72, v136, v241, vcc
v_cmp_gt_i32_e32 vcc, 17, v79
s_nop 1
v_cndmask_b32_e64 v73, v137, v241, vcc
v_cmp_gt_i32_e32 vcc, 18, v79
s_nop 1
v_cndmask_b32_e64 v74, v138, v241, vcc
v_cmp_gt_i32_e32 vcc, 19, v79
s_nop 1
v_cndmask_b32_e64 v75, v139, v241, vcc
v_cmp_gt_i32_e32 vcc, 24, v79
s_nop 1
v_cndmask_b32_e64 v76, v140, v241, vcc
v_cmp_gt_i32_e32 vcc, 25, v79
s_nop 1
v_cndmask_b32_e64 v77, v141, v241, vcc
v_cmp_gt_i32_e32 vcc, 26, v79
s_nop 1
v_cndmask_b32_e64 v78, v142, v241, vcc
v_cmp_gt_i32_e32 vcc, 27, v79
s_nop 1
v_cndmask_b32_e64 v79, v143, v241, vcc
v_max_f32_e32 v128, v112, v113
v_max3_f32 v128, v114, v115, v128
v_max3_f32 v128, v116, v117, v128
v_max3_f32 v128, v118, v119, v128
v_max3_f32 v128, v120, v121, v128
v_max3_f32 v128, v122, v123, v128
v_max3_f32 v128, v124, v125, v128
v_max3_f32 v129, v126, v127, v128
v_max_f32_e32 v128, v96, v97
v_max3_f32 v128, v98, v99, v128
v_max3_f32 v128, v100, v101, v128
v_max3_f32 v128, v102, v103, v128
v_max3_f32 v128, v104, v105, v128
v_max3_f32 v128, v106, v107, v128
v_max3_f32 v128, v108, v109, v128
v_max3_f32 v130, v110, v111, v128
v_max_f32_e32 v128, v80, v81
v_max3_f32 v128, v82, v83, v128
v_max3_f32 v128, v84, v85, v128
v_max3_f32 v128, v86, v87, v128
v_max3_f32 v128, v88, v89, v128
v_max3_f32 v128, v90, v91, v128
v_max3_f32 v128, v92, v93, v128
v_max3_f32 v128, v94, v95, v128
v_max_f32_e32 v131, v64, v65
v_max3_f32 v131, v66, v67, v131
v_max3_f32 v131, v68, v69, v131
v_max3_f32 v131, v70, v71, v131
v_max3_f32 v131, v72, v73, v131
v_max3_f32 v131, v74, v75, v131
v_max3_f32 v131, v76, v77, v131
v_max3_f32 v131, v78, v79, v131
v_max_f32_e32 v128, v128, v131
v_max_f32_e32 v130, v129, v130
s_nop 1
v_permlane32_swap_b32_e32 v130, v131
s_nop 1
v_permlane32_swap_b32_e32 v128, v129
v_max_f32_e32 v128, v128, v129
v_max_f32_e32 v130, v130, v131
v_max_f32_e32 v129, v130, v128
v_mul_f32_e32 v129, v238, v129
v_max_f32_e32 v129, v252, v129
v_sub_f32_e32 v131, v129, v252
v_cmp_lt_f32_e32 vcc, s37, v131
s_cmp_lg_u64 vcc, 0
s_cselect_b32 s18, 1, 0
s_cselect_b64 s[18:19], -1, 0
v_cndmask_b32_e64 v129, v252, v129, s[18:19]
v_fma_f32 v130, v130, v238, -v129
v_floor_f32_e32 v130, v130
v_med3_f32 v132, v130, s99, 0
v_cvt_i32_f32_e32 v130, v132
v_add_u32_e32 v130, 0x7f, v130
v_lshlrev_b32_e32 v131, 23, v130
v_fma_f32 v128, v128, v238, -v129
v_floor_f32_e32 v128, v128
v_med3_f32 v128, v128, s99, 0
v_cvt_i32_f32_e32 v131, v128
v_add_u32_e32 v131, 0x7f, v131
v_lshlrev_b32_e32 v133, 23, v131
v_fma_f32 v133, v129, s95, v133
v_fma_f32 v152, v132, s95, v133
v_fma_f32 v150, v128, s95, v133
s_lshl_b32 s18, s17, 14
s_and_b32 s18, s18, 0x8000
s_bitcmp1_b32 s17, 0
s_cselect_b32 s17, s93, 0x10000
s_or_b32 s18, s18, s17
v_or_b32_e32 v128, s18, v245
v_add_u32_e32 v128, v128, v244
s_waitcnt vmcnt(2)
ds_read_b64_tr_b8 v[132:133], v128
ds_read_b64_tr_b8 v[134:135], v128 offset:1024
ds_read_b64_tr_b8 v[136:137], v128 offset:2048
ds_read_b64_tr_b8 v[138:139], v128 offset:3072
ds_read_b64_tr_b8 v[140:141], v128 offset:256
ds_read_b64_tr_b8 v[142:143], v128 offset:1280
ds_read_b64_tr_b8 v[144:145], v128 offset:2304
ds_read_b64_tr_b8 v[146:147], v128 offset:3328
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[132:139], v[208:215], v[48:63], v242, v251 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[140:147], v[208:215], v[32:47], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[132:133], v128 offset:512
ds_read_b64_tr_b8 v[134:135], v128 offset:1536
ds_read_b64_tr_b8 v[136:137], v128 offset:2560
ds_read_b64_tr_b8 v[138:139], v128 offset:3584
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[132:139], v[208:215], v[16:31], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[140:141], v128 offset:768
ds_read_b64_tr_b8 v[142:143], v128 offset:1792
ds_read_b64_tr_b8 v[144:145], v128 offset:2816
ds_read_b64_tr_b8 v[146:147], v128 offset:3840
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[140:147], v[208:215], v[0:15], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[132:133], v128 offset:4096
ds_read_b64_tr_b8 v[134:135], v128 offset:5120
ds_read_b64_tr_b8 v[136:137], v128 offset:6144
ds_read_b64_tr_b8 v[138:139], v128 offset:7168
s_waitcnt vmcnt(0) lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[132:139], v[160:167], v[48:63], v242, v253 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[140:141], v128 offset:4352
ds_read_b64_tr_b8 v[142:143], v128 offset:5376
ds_read_b64_tr_b8 v[144:145], v128 offset:6400
ds_read_b64_tr_b8 v[146:147], v128 offset:7424
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[140:147], v[160:167], v[32:47], v242, v253 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[132:133], v128 offset:4608
ds_read_b64_tr_b8 v[134:135], v128 offset:5632
ds_read_b64_tr_b8 v[136:137], v128 offset:6656
ds_read_b64_tr_b8 v[138:139], v128 offset:7680
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[132:139], v[160:167], v[16:31], v242, v253 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[140:141], v128 offset:4864
ds_read_b64_tr_b8 v[142:143], v128 offset:5888
ds_read_b64_tr_b8 v[144:145], v128 offset:6912
ds_read_b64_tr_b8 v[146:147], v128 offset:7936
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[140:147], v[160:167], v[0:15], v242, v253 op_sel_hi:[0,0,0]
s_cbranch_vccz 68
v_sub_f32_e32 v128, v252, v129
v_exp_f32_e32 v128, v128
s_nop 0
v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]
v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]
v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]
v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]
v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]
v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]
v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]
v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]
v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]
v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]
v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]
v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]
v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]
v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]
v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]
v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]
v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]
v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]
v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]
v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]
v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]
v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]
v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]
v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]
v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]
v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]
v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]
v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]
v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]
v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]
v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]
v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]
v_mul_f32_e32 v250, v250, v128
s_waitcnt vmcnt(0)
s_barrier
s_add_u32 s15, s15, 1
s_branch 479
s_cmp_eq_u32 s15, s35
s_cbranch_scc0 429
s_setprio 0
v_fma_f32 v128, v112, v239, v152
v_fma_f32 v132, v96, v239, v152
v_fma_f32 v136, v116, v239, v152
v_fma_f32 v140, v100, v239, v152
v_fma_f32 v144, v120, v239, v152
v_fma_f32 v148, v104, v239, v152
v_fma_f32 v154, v124, v239, v152
v_fma_f32 v158, v108, v239, v152
v_fma_f32 v162, v80, v239, v150
v_fma_f32 v166, v64, v239, v150
v_fma_f32 v170, v84, v239, v150
v_fma_f32 v174, v68, v239, v150
v_fma_f32 v178, v88, v239, v150
v_fma_f32 v182, v72, v239, v150
v_fma_f32 v186, v92, v239, v150
v_fma_f32 v190, v76, v239, v150
v_fma_f32 v129, v113, v239, v152
v_fma_f32 v133, v97, v239, v152
v_fma_f32 v137, v117, v239, v152
v_fma_f32 v141, v101, v239, v152
v_fma_f32 v145, v121, v239, v152
v_fma_f32 v149, v105, v239, v152
v_fma_f32 v155, v125, v239, v152
v_fma_f32 v159, v109, v239, v152
v_fma_f32 v163, v81, v239, v150
v_fma_f32 v167, v65, v239, v150
v_fma_f32 v171, v85, v239, v150
v_fma_f32 v175, v69, v239, v150
v_fma_f32 v179, v89, v239, v150
v_fma_f32 v183, v73, v239, v150
v_fma_f32 v187, v93, v239, v150
v_fma_f32 v191, v77, v239, v150
v_cvt_pk_u8_f32 v128, v128, 0, 0
v_cvt_pk_u8_f32 v132, v132, 0, 0
v_cvt_pk_u8_f32 v136, v136, 0, 0
v_cvt_pk_u8_f32 v140, v140, 0, 0
v_cvt_pk_u8_f32 v144, v144, 0, 0
v_cvt_pk_u8_f32 v148, v148, 0, 0
v_cvt_pk_u8_f32 v154, v154, 0, 0
v_cvt_pk_u8_f32 v158, v158, 0, 0
v_cvt_pk_u8_f32 v162, v162, 0, 0
v_cvt_pk_u8_f32 v166, v166, 0, 0
v_cvt_pk_u8_f32 v170, v170, 0, 0
v_cvt_pk_u8_f32 v174, v174, 0, 0
v_cvt_pk_u8_f32 v178, v178, 0, 0
v_cvt_pk_u8_f32 v182, v182, 0, 0
v_cvt_pk_u8_f32 v186, v186, 0, 0
v_cvt_pk_u8_f32 v190, v190, 0, 0
v_fma_f32 v130, v114, v239, v152
v_fma_f32 v134, v98, v239, v152
v_fma_f32 v138, v118, v239, v152
v_fma_f32 v142, v102, v239, v152
v_fma_f32 v146, v122, v239, v152
v_fma_f32 v151, v106, v239, v152
v_fma_f32 v156, v126, v239, v152
v_fma_f32 v160, v110, v239, v152
v_fma_f32 v164, v82, v239, v150
v_fma_f32 v168, v66, v239, v150
v_fma_f32 v172, v86, v239, v150
v_fma_f32 v176, v70, v239, v150
v_fma_f32 v180, v90, v239, v150
v_fma_f32 v184, v74, v239, v150
v_fma_f32 v188, v94, v239, v150
v_fma_f32 v208, v78, v239, v150
v_cvt_pk_u8_f32 v128, v129, 1, v128
v_cvt_pk_u8_f32 v129, v133, 1, v132
v_cvt_pk_u8_f32 v132, v137, 1, v136
v_cvt_pk_u8_f32 v133, v141, 1, v140
v_cvt_pk_u8_f32 v136, v145, 1, v144
v_cvt_pk_u8_f32 v137, v149, 1, v148
v_cvt_pk_u8_f32 v140, v155, 1, v154
v_cvt_pk_u8_f32 v141, v159, 1, v158
v_cvt_pk_u8_f32 v144, v163, 1, v162
v_cvt_pk_u8_f32 v145, v167, 1, v166
v_cvt_pk_u8_f32 v148, v171, 1, v170
v_cvt_pk_u8_f32 v149, v175, 1, v174
v_cvt_pk_u8_f32 v154, v179, 1, v178
v_cvt_pk_u8_f32 v155, v183, 1, v182
v_cvt_pk_u8_f32 v158, v187, 1, v186
v_cvt_pk_u8_f32 v159, v191, 1, v190
v_fma_f32 v131, v115, v239, v152
v_fma_f32 v135, v99, v239, v152
v_fma_f32 v139, v119, v239, v152
v_fma_f32 v143, v103, v239, v152
v_fma_f32 v147, v123, v239, v152
v_fma_f32 v153, v107, v239, v152
v_fma_f32 v157, v127, v239, v152
v_fma_f32 v161, v111, v239, v152
v_fma_f32 v165, v83, v239, v150
v_fma_f32 v169, v67, v239, v150
v_fma_f32 v173, v87, v239, v150
v_fma_f32 v177, v71, v239, v150
v_fma_f32 v181, v91, v239, v150
v_fma_f32 v185, v75, v239, v150
v_fma_f32 v189, v95, v239, v150
v_fma_f32 v209, v79, v239, v150
v_cvt_pk_u8_f32 v128, v130, 2, v128
v_cvt_pk_u8_f32 v129, v134, 2, v129
v_cvt_pk_u8_f32 v130, v138, 2, v132
v_cvt_pk_u8_f32 v132, v142, 2, v133
v_cvt_pk_u8_f32 v133, v146, 2, v136
v_cvt_pk_u8_f32 v134, v151, 2, v137
v_cvt_pk_u8_f32 v146, v156, 2, v140
v_cvt_pk_u8_f32 v151, v160, 2, v141
v_cvt_pk_u8_f32 v144, v164, 2, v144
v_cvt_pk_u8_f32 v145, v168, 2, v145
v_cvt_pk_u8_f32 v148, v172, 2, v148
v_cvt_pk_u8_f32 v149, v176, 2, v149
v_cvt_pk_u8_f32 v154, v180, 2, v154
v_cvt_pk_u8_f32 v155, v184, 2, v155
v_cvt_pk_u8_f32 v156, v188, 2, v158
v_cvt_pk_u8_f32 v158, v208, 2, v159
v_cvt_pk_u8_f32 v136, v131, 3, v128
v_cvt_pk_u8_f32 v140, v135, 3, v129
v_cvt_pk_u8_f32 v137, v139, 3, v130
v_cvt_pk_u8_f32 v141, v143, 3, v132
v_cvt_pk_u8_f32 v138, v147, 3, v133
v_cvt_pk_u8_f32 v142, v153, 3, v134
v_cvt_pk_u8_f32 v139, v157, 3, v146
v_cvt_pk_u8_f32 v143, v161, 3, v151
v_cvt_pk_u8_f32 v128, v165, 3, v144
v_cvt_pk_u8_f32 v132, v169, 3, v145
v_cvt_pk_u8_f32 v129, v173, 3, v148
v_cvt_pk_u8_f32 v133, v177, 3, v149
v_cvt_pk_u8_f32 v130, v181, 3, v154
v_cvt_pk_u8_f32 v134, v185, 3, v155
v_cvt_pk_u8_f32 v131, v189, 3, v156
v_cvt_pk_u8_f32 v135, v209, 3, v158
s_barrier
s_setprio 1
s_waitcnt vmcnt(0)
v_mfma_f32_16x16x128_f8f6f4 v[144:147], v[192:199], v[136:143], 0
v_mfma_f32_16x16x128_f8f6f4 v[146:149], v[192:199], v[128:135], 0
s_add_u32 s17, s35, s10
s_bfe_u32 s18, s17, 0x10001
s_and_b32 s15, s17, 3
s_lshl_b32 s22, s18, 15
s_bitcmp1_b32 s17, 0
s_cselect_b64 s[18:19], -1, 0
s_and_b64 s[20:21], s[18:19], exec
s_cselect_b32 s17, s93, 0x10000
s_or_b32 s20, s22, s17
v_or_b32_e32 v145, s20, v245
v_add_u32_e32 v145, v145, v244
ds_read_b64_tr_b8 v[154:155], v145
ds_read_b64_tr_b8 v[156:157], v145 offset:1024
ds_read_b64_tr_b8 v[158:159], v145 offset:2048
ds_read_b64_tr_b8 v[160:161], v145 offset:3072
ds_read_b64_tr_b8 v[162:163], v145 offset:256
ds_read_b64_tr_b8 v[164:165], v145 offset:1280
ds_read_b64_tr_b8 v[166:167], v145 offset:2304
ds_read_b64_tr_b8 v[168:169], v145 offset:3328
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[154:161], v[136:143], v[48:63], v242, v251 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[162:169], v[136:143], v[32:47], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[154:155], v145 offset:512
ds_read_b64_tr_b8 v[156:157], v145 offset:1536
ds_read_b64_tr_b8 v[158:159], v145 offset:2560
ds_read_b64_tr_b8 v[160:161], v145 offset:3584
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[154:161], v[136:143], v[16:31], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[162:163], v145 offset:768
ds_read_b64_tr_b8 v[164:165], v145 offset:1792
ds_read_b64_tr_b8 v[166:167], v145 offset:2816
ds_read_b64_tr_b8 v[168:169], v145 offset:3840
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[162:169], v[136:143], v[0:15], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[154:155], v145 offset:4096
ds_read_b64_tr_b8 v[156:157], v145 offset:5120
ds_read_b64_tr_b8 v[158:159], v145 offset:6144
ds_read_b64_tr_b8 v[160:161], v145 offset:7168
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[154:161], v[128:135], v[48:63], v242, v253 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[136:137], v145 offset:4352
ds_read_b64_tr_b8 v[138:139], v145 offset:5376
ds_read_b64_tr_b8 v[140:141], v145 offset:6400
ds_read_b64_tr_b8 v[142:143], v145 offset:7424
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[136:143], v[128:135], v[32:47], v242, v253 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[154:155], v145 offset:4608
ds_read_b64_tr_b8 v[156:157], v145 offset:5632
ds_read_b64_tr_b8 v[158:159], v145 offset:6656
ds_read_b64_tr_b8 v[160:161], v145 offset:7680
ds_read_b64_tr_b8 v[162:163], v145 offset:4864
ds_read_b64_tr_b8 v[164:165], v145 offset:5888
ds_read_b64_tr_b8 v[166:167], v145 offset:6912
ds_read_b64_tr_b8 v[168:169], v145 offset:7936
s_add_u32 s20, s35, 4
s_cmp_ge_u32 s20, s91
s_cbranch_scc1 16
s_and_b64 s[18:19], s[18:19], exec
s_cselect_b32 s18, 0x4000, 0
s_add_u32 s18, s22, s18
s_add_u32 s18, s18, s88
s_mul_i32 s20, s20, s8
s_lshl_b32 s19, s20, 7
s_nop 0
buffer_load_dwordx4 v233, s[84:87], s19 offen lds
s_add_u32 m0, s18, 0x2000
s_nop 0
buffer_load_dwordx4 v234, s[84:87], s19 offen lds
s_add_u32 s18, s35, 2
s_cmp_ge_u32 s18, s91
s_cbranch_scc1 17
s_not_b32 s15, s15
s_lshl_b32 s15, s15, 14
s_and_b32 s15, s15, 0x8000
s_add_u32 s15, s15, s17
s_add_u32 s15, s15, s88
s_mul_i32 s18, s18, s8
s_lshl_b32 s17, s18, 7
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s17 offen lds
s_add_u32 m0, s15, 0x2000
s_nop 0
buffer_load_dwordx4 v236, s[80:83], s17 offen lds
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[154:161], v[128:135], v[16:31], v242, v253 op_sel_hi:[0,0,0]
v_lshlrev_b32_e32 v136, 23, v251
v_lshlrev_b32_e32 v137, 23, v253
v_mul_f32_e32 v136, v144, v136
v_mul_f32_e32 v137, v146, v137
v_add_f32_e32 v136, v250, v136
v_add_f32_e32 v250, v136, v137
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[162:169], v[128:135], v[0:15], v242, v253 op_sel_hi:[0,0,0]
s_barrier
s_add_u32 s15, s35, 1
s_branch 48
s_barrier
s_waitcnt vmcnt(0)
s_add_u32 s17, s15, 4
s_cmp_ge_u32 s17, s91
s_cbranch_scc1 19
s_add_u32 s18, s15, s10
s_and_b32 s19, s18, 2
s_lshl_b32 s19, s19, 14
s_bitcmp1_b32 s18, 0
s_cselect_b32 s18, 0x4000, 0
s_or_b32 s18, s19, s18
s_or_b32 s18, s18, s88
s_mul_i32 s17, s17, s8
s_lshl_b32 s17, s17, 7
s_nop 0
buffer_load_dwordx4 v233, s[84:87], s17 offen lds
s_or_b32 m0, s18, 0x2000
s_nop 0
buffer_load_dwordx4 v234, s[84:87], s17 offen lds
s_add_u32 s17, s15, 2
s_cmp_ge_u32 s17, s91
s_cbranch_scc1 19
s_add_u32 s18, s15, s10
s_andn2_b32 s19, 2, s18
s_lshl_b32 s19, s19, 14
s_bitcmp1_b32 s18, 0
s_cselect_b32 s18, s93, 0x10000
s_or_b32 s18, s19, s18
s_or_b32 s18, s18, s88
s_mul_i32 s17, s17, s8
s_lshl_b32 s17, s17, 7
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s17 offen lds
s_add_u32 m0, s18, 0x2000
s_nop 0
buffer_load_dwordx4 v236, s[80:83], s17 offen lds
s_barrier
s_add_u32 s15, s15, 1
s_add_u32 s17, s15, 1
s_cmp_ge_u32 s17, s91
s_cbranch_scc1 1786
s_cmp_ge_u32 s15, s35
s_cbranch_scc1 1106
s_setprio 0
s_add_u32 s17, s15, s10
s_add_u32 s18, s17, 1
s_lshl_b32 s19, s18, 14
v_fma_f32 v108, v108, v239, v152
v_fma_f32 v64, v64, v239, v150
v_fma_f32 v68, v68, v239, v150
s_and_b32 s19, s19, 0x8000
v_fma_f32 v96, v96, v239, v152
v_fma_f32 v116, v116, v239, v152
v_fma_f32 v100, v100, v239, v152
v_fma_f32 v120, v120, v239, v152
v_fma_f32 v104, v104, v239, v152
v_fma_f32 v109, v109, v239, v152
v_fma_f32 v80, v80, v239, v150
v_fma_f32 v65, v65, v239, v150
v_fma_f32 v84, v84, v239, v150
v_fma_f32 v69, v69, v239, v150
v_fma_f32 v72, v72, v239, v150
v_fma_f32 v92, v92, v239, v150
v_cvt_pk_u8_f32 v108, v108, 0, 0
v_cvt_pk_u8_f32 v64, v64, 0, 0
v_cvt_pk_u8_f32 v68, v68, 0, 0
s_bitcmp1_b32 s18, 0
v_fma_f32 v97, v97, v239, v152
v_fma_f32 v117, v117, v239, v152
v_fma_f32 v101, v101, v239, v152
v_fma_f32 v121, v121, v239, v152
v_fma_f32 v105, v105, v239, v152
v_fma_f32 v110, v110, v239, v152
v_fma_f32 v81, v81, v239, v150
v_fma_f32 v66, v66, v239, v150
v_fma_f32 v85, v85, v239, v150
v_fma_f32 v70, v70, v239, v150
v_fma_f32 v88, v88, v239, v150
v_fma_f32 v73, v73, v239, v150
v_fma_f32 v93, v93, v239, v150
v_cvt_pk_u8_f32 v96, v96, 0, 0
v_cvt_pk_u8_f32 v116, v116, 0, 0
v_cvt_pk_u8_f32 v100, v100, 0, 0
v_cvt_pk_u8_f32 v120, v120, 0, 0
v_cvt_pk_u8_f32 v104, v104, 0, 0
v_cvt_pk_u8_f32 v80, v80, 0, 0
v_cvt_pk_u8_f32 v84, v84, 0, 0
v_cvt_pk_u8_f32 v72, v72, 0, 0
v_cvt_pk_u8_f32 v92, v92, 0, 0
v_cvt_pk_u8_f32 v108, v109, 1, v108
v_cvt_pk_u8_f32 v64, v65, 1, v64
v_cvt_pk_u8_f32 v68, v69, 1, v68
s_cselect_b32 s18, 0x4000, 0
v_fma_f32 v98, v98, v239, v152
v_fma_f32 v118, v118, v239, v152
v_fma_f32 v102, v102, v239, v152
v_fma_f32 v122, v122, v239, v152
v_fma_f32 v106, v106, v239, v152
v_fma_f32 v111, v111, v239, v152
v_fma_f32 v82, v82, v239, v150
v_fma_f32 v86, v86, v239, v150
v_fma_f32 v71, v71, v239, v150
v_fma_f32 v89, v89, v239, v150
v_cvt_pk_u8_f32 v88, v88, 0, 0
v_cvt_pk_u8_f32 v96, v97, 1, v96
v_cvt_pk_u8_f32 v97, v117, 1, v116
v_cvt_pk_u8_f32 v100, v101, 1, v100
v_cvt_pk_u8_f32 v101, v121, 1, v120
v_cvt_pk_u8_f32 v104, v105, 1, v104
v_cvt_pk_u8_f32 v80, v81, 1, v80
v_cvt_pk_u8_f32 v65, v85, 1, v84
v_cvt_pk_u8_f32 v72, v73, 1, v72
v_cvt_pk_u8_f32 v73, v93, 1, v92
v_cvt_pk_u8_f32 v93, v110, 2, v108
v_cvt_pk_u8_f32 v64, v66, 2, v64
v_cvt_pk_u8_f32 v66, v70, 2, v68
s_or_b32 s19, s19, s18
v_fma_f32 v99, v99, v239, v152
v_fma_f32 v119, v119, v239, v152
v_fma_f32 v103, v103, v239, v152
v_fma_f32 v123, v123, v239, v152
v_fma_f32 v107, v107, v239, v152
v_fma_f32 v83, v83, v239, v150
v_fma_f32 v87, v87, v239, v150
v_cvt_pk_u8_f32 v69, v89, 1, v88
v_cvt_pk_u8_f32 v81, v98, 2, v96
v_cvt_pk_u8_f32 v84, v118, 2, v97
v_cvt_pk_u8_f32 v85, v102, 2, v100
v_cvt_pk_u8_f32 v88, v122, 2, v101
v_cvt_pk_u8_f32 v89, v106, 2, v104
v_cvt_pk_u8_f32 v80, v82, 2, v80
v_cvt_pk_u8_f32 v65, v86, 2, v65
v_cvt_pk_u8_f32 v215, v111, 3, v93
v_cvt_pk_u8_f32 v93, v71, 3, v66
v_or_b32_e32 v71, s19, v231
v_cvt_pk_u8_f32 v212, v99, 3, v81
v_cvt_pk_u8_f32 v209, v119, 3, v84
v_cvt_pk_u8_f32 v213, v103, 3, v85
v_cvt_pk_u8_f32 v210, v123, 3, v88
v_cvt_pk_u8_f32 v214, v107, 3, v89
v_cvt_pk_u8_f32 v88, v83, 3, v80
v_cvt_pk_u8_f32 v89, v87, 3, v65
ds_read_b128 v[80:83], v71
ds_read_b128 v[84:87], v71 offset:16
ds_read_b128 v[96:99], v71 offset:4096
ds_read_b128 v[100:103], v71 offset:4112
v_fma_f32 v112, v112, v239, v152
v_fma_f32 v124, v124, v239, v152
v_fma_f32 v113, v113, v239, v152
v_fma_f32 v125, v125, v239, v152
v_fma_f32 v76, v76, v239, v150
v_cvt_pk_u8_f32 v112, v112, 0, 0
v_cvt_pk_u8_f32 v124, v124, 0, 0
v_fma_f32 v114, v114, v239, v152
v_fma_f32 v126, v126, v239, v152
v_fma_f32 v77, v77, v239, v150
v_cvt_pk_u8_f32 v76, v76, 0, 0
v_cvt_pk_u8_f32 v112, v113, 1, v112
v_cvt_pk_u8_f32 v105, v125, 1, v124
v_fma_f32 v115, v115, v239, v152
v_fma_f32 v127, v127, v239, v152
v_fma_f32 v90, v90, v239, v150
v_fma_f32 v74, v74, v239, v150
v_fma_f32 v94, v94, v239, v150
v_fma_f32 v78, v78, v239, v150
v_cvt_pk_u8_f32 v76, v77, 1, v76
v_cvt_pk_u8_f32 v77, v114, 2, v112
v_cvt_pk_u8_f32 v92, v126, 2, v105
v_fma_f32 v67, v67, v239, v150
v_fma_f32 v91, v91, v239, v150
v_fma_f32 v75, v75, v239, v150
v_fma_f32 v95, v95, v239, v150
v_fma_f32 v79, v79, v239, v150
v_cvt_pk_u8_f32 v68, v90, 2, v69
v_cvt_pk_u8_f32 v69, v74, 2, v72
v_cvt_pk_u8_f32 v70, v94, 2, v73
v_cvt_pk_u8_f32 v72, v78, 2, v76
v_cvt_pk_u8_f32 v208, v115, 3, v77
v_cvt_pk_u8_f32 v211, v127, 3, v92
v_cvt_pk_u8_f32 v92, v67, 3, v64
v_cvt_pk_u8_f32 v90, v91, 3, v68
v_cvt_pk_u8_f32 v94, v75, 3, v69
v_cvt_pk_u8_f32 v91, v95, 3, v70
v_cvt_pk_u8_f32 v95, v79, 3, v72
s_barrier
s_and_b32 s18, s17, 3
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[208:215], 0
s_nop 0
v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[192:199], v[88:95], 0
s_nop 3
v_lshlrev_b32_e32 v65, 23, v251
v_mul_f32_e32 v64, v64, v65
v_add_f32_e32 v64, v250, v64
v_lshlrev_b32_e32 v65, 23, v253
s_nop 3
v_mul_f32_e32 v65, v66, v65
v_add_f32_e32 v250, v64, v65
s_waitcnt lgkmcnt(2)
v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[80:87], v[220:227], 0
ds_read_b128 v[88:91], v71 offset:8192
ds_read_b128 v[92:95], v71 offset:8208
ds_read_b128 v[104:107], v71 offset:12288
ds_read_b128 v[108:111], v71 offset:12304
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[96:103], v[220:227], 0
v_or_b32_e32 v64, s19, v232
ds_read_b128 v[66:69], v64
ds_read_b128 v[70:73], v64 offset:16
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[88:95], v[220:227], 0
ds_read_b128 v[74:77], v64 offset:4096
ds_read_b128 v[78:81], v64 offset:4112
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[104:111], v[220:227], 0
ds_read_b128 v[82:85], v64 offset:8192
ds_read_b128 v[86:89], v64 offset:8208
ds_read_b128 v[112:115], v64 offset:12288
ds_read_b128 v[116:119], v64 offset:12304
s_add_u32 s19, s15, 4
s_cmp_ge_u32 s19, s91
s_cbranch_scc1 19
s_lshl_b32 s20, s18, 14
s_and_b32 s20, s20, 0x8000
s_bitcmp1_b32 s17, 0
s_cselect_b32 s21, 0x4000, 0
s_or_b32 s20, s20, s21
s_or_b32 s20, s20, s88
s_mul_i32 s19, s19, s8
s_lshl_b32 s19, s19, 7
s_nop 0
buffer_load_dwordx4 v233, s[84:87], s19 offen lds
s_or_b32 m0, s20, 0x2000
s_nop 0
buffer_load_dwordx4 v234, s[84:87], s19 offen lds
s_add_u32 s19, s15, 2
s_cmp_ge_u32 s19, s91
s_cbranch_scc1 20
s_not_b32 s18, s18
s_lshl_b32 s18, s18, 14
s_and_b32 s18, s18, 0x8000
s_bitcmp1_b32 s17, 0
s_cselect_b32 s20, s93, 0x10000
s_or_b32 s18, s18, s20
s_or_b32 s18, s18, s88
s_mul_i32 s19, s19, s8
s_lshl_b32 s19, s19, 7
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s19 offen lds
s_add_u32 m0, s18, 0x2000
s_nop 0
buffer_load_dwordx4 v236, s[80:83], s19 offen lds
s_waitcnt lgkmcnt(6)
v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[66:73], v[200:207], v[176:191]
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[74:81], v[200:207], v[160:175]
s_nop 15
s_nop 3
s_waitcnt lgkmcnt(2)
v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[82:89], v[200:207], v[144:159]
s_nop 15
s_nop 3
s_waitcnt lgkmcnt(0)
v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[112:119], v[200:207], v[128:143]
s_nop 15
s_nop 3
s_lshl_b32 s18, s15, 7
s_add_u32 s20, s18, 0x80
s_sub_u32 s18, s3, s20
s_sub_i32 s18, s18, 0
s_cmp_ge_i32 s18, 32
s_cbranch_scc1 90
s_cmp_lt_i32 s18, 0
s_cbranch_scc1 65
v_add_u32_e32 v127, s18, v243
v_cmp_gt_i32_e32 vcc, 0, v127
s_nop 1
v_cndmask_b32_e64 v112, v176, v241, vcc
v_cmp_gt_i32_e32 vcc, 1, v127
s_nop 1
v_cndmask_b32_e64 v113, v177, v241, vcc
v_cmp_gt_i32_e32 vcc, 2, v127
s_nop 1
v_cndmask_b32_e64 v114, v178, v241, vcc
v_cmp_gt_i32_e32 vcc, 3, v127
s_nop 1
v_cndmask_b32_e64 v115, v179, v241, vcc
v_cmp_gt_i32_e32 vcc, 8, v127
s_nop 1
v_cndmask_b32_e64 v116, v180, v241, vcc
v_cmp_gt_i32_e32 vcc, 9, v127
s_nop 1
v_cndmask_b32_e64 v117, v181, v241, vcc
v_cmp_gt_i32_e32 vcc, 10, v127
s_nop 1
v_cndmask_b32_e64 v118, v182, v241, vcc
v_cmp_gt_i32_e32 vcc, 11, v127
s_nop 1
v_cndmask_b32_e64 v119, v183, v241, vcc
v_cmp_gt_i32_e32 vcc, 16, v127
s_nop 1
v_cndmask_b32_e64 v120, v184, v241, vcc
v_cmp_gt_i32_e32 vcc, 17, v127
s_nop 1
v_cndmask_b32_e64 v121, v185, v241, vcc
v_cmp_gt_i32_e32 vcc, 18, v127
s_nop 1
v_cndmask_b32_e64 v122, v186, v241, vcc
v_cmp_gt_i32_e32 vcc, 19, v127
s_nop 1
v_cndmask_b32_e64 v123, v187, v241, vcc
v_cmp_gt_i32_e32 vcc, 24, v127
s_nop 1
v_cndmask_b32_e64 v124, v188, v241, vcc
v_cmp_gt_i32_e32 vcc, 25, v127
s_nop 1
v_cndmask_b32_e64 v125, v189, v241, vcc
v_cmp_gt_i32_e32 vcc, 26, v127
s_nop 1
v_cndmask_b32_e64 v126, v190, v241, vcc
v_cmp_gt_i32_e32 vcc, 27, v127
s_nop 1
v_cndmask_b32_e64 v127, v191, v241, vcc
s_sub_u32 s18, s3, s20
s_sub_i32 s18, s18, 32
s_cmp_ge_i32 s18, 32
s_cbranch_scc1 90
s_cmp_lt_i32 s18, 0
s_cbranch_scc1 65
v_add_u32_e32 v111, s18, v243
v_cmp_gt_i32_e32 vcc, 0, v111
s_nop 1
v_cndmask_b32_e64 v96, v160, v241, vcc
v_cmp_gt_i32_e32 vcc, 1, v111
s_nop 1
v_cndmask_b32_e64 v97, v161, v241, vcc
v_cmp_gt_i32_e32 vcc, 2, v111
s_nop 1
v_cndmask_b32_e64 v98, v162, v241, vcc
v_cmp_gt_i32_e32 vcc, 3, v111
s_nop 1
v_cndmask_b32_e64 v99, v163, v241, vcc
v_cmp_gt_i32_e32 vcc, 8, v111
s_nop 1
v_cndmask_b32_e64 v100, v164, v241, vcc
v_cmp_gt_i32_e32 vcc, 9, v111
s_nop 1
v_cndmask_b32_e64 v101, v165, v241, vcc
v_cmp_gt_i32_e32 vcc, 10, v111
s_nop 1
v_cndmask_b32_e64 v102, v166, v241, vcc
v_cmp_gt_i32_e32 vcc, 11, v111
s_nop 1
v_cndmask_b32_e64 v103, v167, v241, vcc
v_cmp_gt_i32_e32 vcc, 16, v111
s_nop 1
v_cndmask_b32_e64 v104, v168, v241, vcc
v_cmp_gt_i32_e32 vcc, 17, v111
s_nop 1
v_cndmask_b32_e64 v105, v169, v241, vcc
v_cmp_gt_i32_e32 vcc, 18, v111
s_nop 1
v_cndmask_b32_e64 v106, v170, v241, vcc
v_cmp_gt_i32_e32 vcc, 19, v111
s_nop 1
v_cndmask_b32_e64 v107, v171, v241, vcc
v_cmp_gt_i32_e32 vcc, 24, v111
s_nop 1
v_cndmask_b32_e64 v108, v172, v241, vcc
v_cmp_gt_i32_e32 vcc, 25, v111
s_nop 1
v_cndmask_b32_e64 v109, v173, v241, vcc
v_cmp_gt_i32_e32 vcc, 26, v111
s_nop 1
v_cndmask_b32_e64 v110, v174, v241, vcc
v_cmp_gt_i32_e32 vcc, 27, v111
s_nop 1
v_cndmask_b32_e64 v111, v175, v241, vcc
s_sub_u32 s18, s3, s20
s_sub_i32 s18, s18, 64
s_cmp_ge_i32 s18, 32
s_cbranch_scc1 90
s_cmp_lt_i32 s18, 0
s_cbranch_scc1 65
v_add_u32_e32 v95, s18, v243
v_cmp_gt_i32_e32 vcc, 0, v95
s_nop 1
v_cndmask_b32_e64 v80, v144, v241, vcc
v_cmp_gt_i32_e32 vcc, 1, v95
s_nop 1
v_cndmask_b32_e64 v81, v145, v241, vcc
v_cmp_gt_i32_e32 vcc, 2, v95
s_nop 1
v_cndmask_b32_e64 v82, v146, v241, vcc
v_cmp_gt_i32_e32 vcc, 3, v95
s_nop 1
v_cndmask_b32_e64 v83, v147, v241, vcc
v_cmp_gt_i32_e32 vcc, 8, v95
s_nop 1
v_cndmask_b32_e64 v84, v148, v241, vcc
v_cmp_gt_i32_e32 vcc, 9, v95
s_nop 1
v_cndmask_b32_e64 v85, v149, v241, vcc
v_cmp_gt_i32_e32 vcc, 10, v95
s_nop 1
v_cndmask_b32_e64 v86, v150, v241, vcc
v_cmp_gt_i32_e32 vcc, 11, v95
s_nop 1
v_cndmask_b32_e64 v87, v151, v241, vcc
v_cmp_gt_i32_e32 vcc, 16, v95
s_nop 1
v_cndmask_b32_e64 v88, v152, v241, vcc
v_cmp_gt_i32_e32 vcc, 17, v95
s_nop 1
v_cndmask_b32_e64 v89, v153, v241, vcc
v_cmp_gt_i32_e32 vcc, 18, v95
s_nop 1
v_cndmask_b32_e64 v90, v154, v241, vcc
v_cmp_gt_i32_e32 vcc, 19, v95
s_nop 1
v_cndmask_b32_e64 v91, v155, v241, vcc
v_cmp_gt_i32_e32 vcc, 24, v95
s_nop 1
v_cndmask_b32_e64 v92, v156, v241, vcc
v_cmp_gt_i32_e32 vcc, 25, v95
s_nop 1
v_cndmask_b32_e64 v93, v157, v241, vcc
v_cmp_gt_i32_e32 vcc, 26, v95
s_nop 1
v_cndmask_b32_e64 v94, v158, v241, vcc
v_cmp_gt_i32_e32 vcc, 27, v95
s_nop 1
v_cndmask_b32_e64 v95, v159, v241, vcc
s_sub_u32 s18, s3, s20
s_sub_i32 s18, s18, 0x60
s_cmp_ge_i32 s18, 32
s_cbranch_scc1 90
s_cmp_lt_i32 s18, 0
s_cbranch_scc1 65
v_add_u32_e32 v79, s18, v243
v_cmp_gt_i32_e32 vcc, 0, v79
s_nop 1
v_cndmask_b32_e64 v64, v128, v241, vcc
v_cmp_gt_i32_e32 vcc, 1, v79
s_nop 1
v_cndmask_b32_e64 v65, v129, v241, vcc
v_cmp_gt_i32_e32 vcc, 2, v79
s_nop 1
v_cndmask_b32_e64 v66, v130, v241, vcc
v_cmp_gt_i32_e32 vcc, 3, v79
s_nop 1
v_cndmask_b32_e64 v67, v131, v241, vcc
v_cmp_gt_i32_e32 vcc, 8, v79
s_nop 1
v_cndmask_b32_e64 v68, v132, v241, vcc
v_cmp_gt_i32_e32 vcc, 9, v79
s_nop 1
v_cndmask_b32_e64 v69, v133, v241, vcc
v_cmp_gt_i32_e32 vcc, 10, v79
s_nop 1
v_cndmask_b32_e64 v70, v134, v241, vcc
v_cmp_gt_i32_e32 vcc, 11, v79
s_nop 1
v_cndmask_b32_e64 v71, v135, v241, vcc
v_cmp_gt_i32_e32 vcc, 16, v79
s_nop 1
v_cndmask_b32_e64 v72, v136, v241, vcc
v_cmp_gt_i32_e32 vcc, 17, v79
s_nop 1
v_cndmask_b32_e64 v73, v137, v241, vcc
v_cmp_gt_i32_e32 vcc, 18, v79
s_nop 1
v_cndmask_b32_e64 v74, v138, v241, vcc
v_cmp_gt_i32_e32 vcc, 19, v79
s_nop 1
v_cndmask_b32_e64 v75, v139, v241, vcc
v_cmp_gt_i32_e32 vcc, 24, v79
s_nop 1
v_cndmask_b32_e64 v76, v140, v241, vcc
v_cmp_gt_i32_e32 vcc, 25, v79
s_nop 1
v_cndmask_b32_e64 v77, v141, v241, vcc
v_cmp_gt_i32_e32 vcc, 26, v79
s_nop 1
v_cndmask_b32_e64 v78, v142, v241, vcc
v_cmp_gt_i32_e32 vcc, 27, v79
s_nop 1
v_cndmask_b32_e64 v79, v143, v241, vcc
v_max_f32_e32 v128, v112, v113
v_max3_f32 v128, v114, v115, v128
v_max3_f32 v128, v116, v117, v128
v_max3_f32 v128, v118, v119, v128
v_max3_f32 v128, v120, v121, v128
v_max3_f32 v128, v122, v123, v128
v_max3_f32 v128, v124, v125, v128
v_max3_f32 v129, v126, v127, v128
v_max_f32_e32 v128, v96, v97
v_max3_f32 v128, v98, v99, v128
v_max3_f32 v128, v100, v101, v128
v_max3_f32 v128, v102, v103, v128
v_max3_f32 v128, v104, v105, v128
v_max3_f32 v128, v106, v107, v128
v_max3_f32 v128, v108, v109, v128
v_max3_f32 v130, v110, v111, v128
v_max_f32_e32 v128, v80, v81
v_max3_f32 v128, v82, v83, v128
v_max3_f32 v128, v84, v85, v128
v_max3_f32 v128, v86, v87, v128
v_max3_f32 v128, v88, v89, v128
v_max3_f32 v128, v90, v91, v128
v_max3_f32 v128, v92, v93, v128
v_max3_f32 v128, v94, v95, v128
v_max_f32_e32 v131, v64, v65
v_max3_f32 v131, v66, v67, v131
v_max3_f32 v131, v68, v69, v131
v_max3_f32 v131, v70, v71, v131
v_max3_f32 v131, v72, v73, v131
v_max3_f32 v131, v74, v75, v131
v_max3_f32 v131, v76, v77, v131
v_max3_f32 v131, v78, v79, v131
v_max_f32_e32 v128, v128, v131
v_max_f32_e32 v130, v129, v130
s_nop 1
v_permlane32_swap_b32_e32 v130, v131
s_nop 1
v_permlane32_swap_b32_e32 v128, v129
v_max_f32_e32 v128, v128, v129
v_max_f32_e32 v130, v130, v131
v_max_f32_e32 v129, v130, v128
v_mul_f32_e32 v129, v238, v129
v_max_f32_e32 v129, v252, v129
v_sub_f32_e32 v131, v129, v252
v_cmp_lt_f32_e32 vcc, s37, v131
s_cmp_lg_u64 vcc, 0
s_cselect_b32 s18, 1, 0
s_cselect_b64 s[18:19], -1, 0
v_cndmask_b32_e64 v129, v252, v129, s[18:19]
v_fma_f32 v130, v130, v238, -v129
v_floor_f32_e32 v130, v130
v_med3_f32 v132, v130, s99, 0
v_cvt_i32_f32_e32 v130, v132
v_add_u32_e32 v130, 0x7f, v130
v_lshlrev_b32_e32 v131, 23, v130
v_fma_f32 v128, v128, v238, -v129
v_floor_f32_e32 v128, v128
v_med3_f32 v128, v128, s99, 0
v_cvt_i32_f32_e32 v131, v128
v_add_u32_e32 v131, 0x7f, v131
v_lshlrev_b32_e32 v133, 23, v131
v_fma_f32 v133, v129, s95, v133
v_fma_f32 v152, v132, s95, v133
v_fma_f32 v150, v128, s95, v133
s_lshl_b32 s18, s17, 14
s_and_b32 s18, s18, 0x8000
s_bitcmp1_b32 s17, 0
s_cselect_b32 s17, s93, 0x10000
s_or_b32 s18, s18, s17
v_or_b32_e32 v128, s18, v245
v_add_u32_e32 v128, v128, v244
s_waitcnt vmcnt(2)
ds_read_b64_tr_b8 v[132:133], v128
ds_read_b64_tr_b8 v[134:135], v128 offset:1024
ds_read_b64_tr_b8 v[136:137], v128 offset:2048
ds_read_b64_tr_b8 v[138:139], v128 offset:3072
ds_read_b64_tr_b8 v[140:141], v128 offset:256
ds_read_b64_tr_b8 v[142:143], v128 offset:1280
ds_read_b64_tr_b8 v[144:145], v128 offset:2304
ds_read_b64_tr_b8 v[146:147], v128 offset:3328
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[132:139], v[208:215], v[48:63], v242, v251 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[140:147], v[208:215], v[32:47], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[132:133], v128 offset:512
ds_read_b64_tr_b8 v[134:135], v128 offset:1536
ds_read_b64_tr_b8 v[136:137], v128 offset:2560
ds_read_b64_tr_b8 v[138:139], v128 offset:3584
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[132:139], v[208:215], v[16:31], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[140:141], v128 offset:768
ds_read_b64_tr_b8 v[142:143], v128 offset:1792
ds_read_b64_tr_b8 v[144:145], v128 offset:2816
ds_read_b64_tr_b8 v[146:147], v128 offset:3840
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[140:147], v[208:215], v[0:15], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[132:133], v128 offset:4096
ds_read_b64_tr_b8 v[134:135], v128 offset:5120
ds_read_b64_tr_b8 v[136:137], v128 offset:6144
ds_read_b64_tr_b8 v[138:139], v128 offset:7168
s_waitcnt vmcnt(0) lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[132:139], v[160:167], v[48:63], v242, v253 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[140:141], v128 offset:4352
ds_read_b64_tr_b8 v[142:143], v128 offset:5376
ds_read_b64_tr_b8 v[144:145], v128 offset:6400
ds_read_b64_tr_b8 v[146:147], v128 offset:7424
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[140:147], v[160:167], v[32:47], v242, v253 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[132:133], v128 offset:4608
ds_read_b64_tr_b8 v[134:135], v128 offset:5632
ds_read_b64_tr_b8 v[136:137], v128 offset:6656
ds_read_b64_tr_b8 v[138:139], v128 offset:7680
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[132:139], v[160:167], v[16:31], v242, v253 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[140:141], v128 offset:4864
ds_read_b64_tr_b8 v[142:143], v128 offset:5888
ds_read_b64_tr_b8 v[144:145], v128 offset:6912
ds_read_b64_tr_b8 v[146:147], v128 offset:7936
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[140:147], v[160:167], v[0:15], v242, v253 op_sel_hi:[0,0,0]
s_cbranch_vccz 68
v_sub_f32_e32 v128, v252, v129
v_exp_f32_e32 v128, v128
s_nop 0
v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]
v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]
v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]
v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]
v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]
v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]
v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]
v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]
v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]
v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]
v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]
v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]
v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]
v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]
v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]
v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]
v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]
v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]
v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]
v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]
v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]
v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]
v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]
v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]
v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]
v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]
v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]
v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]
v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]
v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]
v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]
v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]
v_mul_f32_e32 v250, v250, v128
s_waitcnt vmcnt(0)
s_barrier
s_add_u32 s15, s15, 1
s_branch 62835
s_cmp_eq_u32 s15, s35
s_cbranch_scc0 429
s_setprio 0
v_fma_f32 v128, v112, v239, v152
v_fma_f32 v132, v96, v239, v152
v_fma_f32 v136, v116, v239, v152
v_fma_f32 v140, v100, v239, v152
v_fma_f32 v144, v120, v239, v152
v_fma_f32 v148, v104, v239, v152
v_fma_f32 v154, v124, v239, v152
v_fma_f32 v158, v108, v239, v152
v_fma_f32 v162, v80, v239, v150
v_fma_f32 v166, v64, v239, v150
v_fma_f32 v170, v84, v239, v150
v_fma_f32 v174, v68, v239, v150
v_fma_f32 v178, v88, v239, v150
v_fma_f32 v182, v72, v239, v150
v_fma_f32 v186, v92, v239, v150
v_fma_f32 v190, v76, v239, v150
v_fma_f32 v129, v113, v239, v152
v_fma_f32 v133, v97, v239, v152
v_fma_f32 v137, v117, v239, v152
v_fma_f32 v141, v101, v239, v152
v_fma_f32 v145, v121, v239, v152
v_fma_f32 v149, v105, v239, v152
v_fma_f32 v155, v125, v239, v152
v_fma_f32 v159, v109, v239, v152
v_fma_f32 v163, v81, v239, v150
v_fma_f32 v167, v65, v239, v150
v_fma_f32 v171, v85, v239, v150
v_fma_f32 v175, v69, v239, v150
v_fma_f32 v179, v89, v239, v150
v_fma_f32 v183, v73, v239, v150
v_fma_f32 v187, v93, v239, v150
v_fma_f32 v191, v77, v239, v150
v_cvt_pk_u8_f32 v128, v128, 0, 0
v_cvt_pk_u8_f32 v132, v132, 0, 0
v_cvt_pk_u8_f32 v136, v136, 0, 0
v_cvt_pk_u8_f32 v140, v140, 0, 0
v_cvt_pk_u8_f32 v144, v144, 0, 0
v_cvt_pk_u8_f32 v148, v148, 0, 0
v_cvt_pk_u8_f32 v154, v154, 0, 0
v_cvt_pk_u8_f32 v158, v158, 0, 0
v_cvt_pk_u8_f32 v162, v162, 0, 0
v_cvt_pk_u8_f32 v166, v166, 0, 0
v_cvt_pk_u8_f32 v170, v170, 0, 0
v_cvt_pk_u8_f32 v174, v174, 0, 0
v_cvt_pk_u8_f32 v178, v178, 0, 0
v_cvt_pk_u8_f32 v182, v182, 0, 0
v_cvt_pk_u8_f32 v186, v186, 0, 0
v_cvt_pk_u8_f32 v190, v190, 0, 0
v_fma_f32 v130, v114, v239, v152
v_fma_f32 v134, v98, v239, v152
v_fma_f32 v138, v118, v239, v152
v_fma_f32 v142, v102, v239, v152
v_fma_f32 v146, v122, v239, v152
v_fma_f32 v151, v106, v239, v152
v_fma_f32 v156, v126, v239, v152
v_fma_f32 v160, v110, v239, v152
v_fma_f32 v164, v82, v239, v150
v_fma_f32 v168, v66, v239, v150
v_fma_f32 v172, v86, v239, v150
v_fma_f32 v176, v70, v239, v150
v_fma_f32 v180, v90, v239, v150
v_fma_f32 v184, v74, v239, v150
v_fma_f32 v188, v94, v239, v150
v_fma_f32 v208, v78, v239, v150
v_cvt_pk_u8_f32 v128, v129, 1, v128
v_cvt_pk_u8_f32 v129, v133, 1, v132
v_cvt_pk_u8_f32 v132, v137, 1, v136
v_cvt_pk_u8_f32 v133, v141, 1, v140
v_cvt_pk_u8_f32 v136, v145, 1, v144
v_cvt_pk_u8_f32 v137, v149, 1, v148
v_cvt_pk_u8_f32 v140, v155, 1, v154
v_cvt_pk_u8_f32 v141, v159, 1, v158
v_cvt_pk_u8_f32 v144, v163, 1, v162
v_cvt_pk_u8_f32 v145, v167, 1, v166
v_cvt_pk_u8_f32 v148, v171, 1, v170
v_cvt_pk_u8_f32 v149, v175, 1, v174
v_cvt_pk_u8_f32 v154, v179, 1, v178
v_cvt_pk_u8_f32 v155, v183, 1, v182
v_cvt_pk_u8_f32 v158, v187, 1, v186
v_cvt_pk_u8_f32 v159, v191, 1, v190
v_fma_f32 v131, v115, v239, v152
v_fma_f32 v135, v99, v239, v152
v_fma_f32 v139, v119, v239, v152
v_fma_f32 v143, v103, v239, v152
v_fma_f32 v147, v123, v239, v152
v_fma_f32 v153, v107, v239, v152
v_fma_f32 v157, v127, v239, v152
v_fma_f32 v161, v111, v239, v152
v_fma_f32 v165, v83, v239, v150
v_fma_f32 v169, v67, v239, v150
v_fma_f32 v173, v87, v239, v150
v_fma_f32 v177, v71, v239, v150
v_fma_f32 v181, v91, v239, v150
v_fma_f32 v185, v75, v239, v150
v_fma_f32 v189, v95, v239, v150
v_fma_f32 v209, v79, v239, v150
v_cvt_pk_u8_f32 v128, v130, 2, v128
v_cvt_pk_u8_f32 v129, v134, 2, v129
v_cvt_pk_u8_f32 v130, v138, 2, v132
v_cvt_pk_u8_f32 v132, v142, 2, v133
v_cvt_pk_u8_f32 v133, v146, 2, v136
v_cvt_pk_u8_f32 v134, v151, 2, v137
v_cvt_pk_u8_f32 v146, v156, 2, v140
v_cvt_pk_u8_f32 v151, v160, 2, v141
v_cvt_pk_u8_f32 v144, v164, 2, v144
v_cvt_pk_u8_f32 v145, v168, 2, v145
v_cvt_pk_u8_f32 v148, v172, 2, v148
v_cvt_pk_u8_f32 v149, v176, 2, v149
v_cvt_pk_u8_f32 v154, v180, 2, v154
v_cvt_pk_u8_f32 v155, v184, 2, v155
v_cvt_pk_u8_f32 v156, v188, 2, v158
v_cvt_pk_u8_f32 v158, v208, 2, v159
v_cvt_pk_u8_f32 v136, v131, 3, v128
v_cvt_pk_u8_f32 v140, v135, 3, v129
v_cvt_pk_u8_f32 v137, v139, 3, v130
v_cvt_pk_u8_f32 v141, v143, 3, v132
v_cvt_pk_u8_f32 v138, v147, 3, v133
v_cvt_pk_u8_f32 v142, v153, 3, v134
v_cvt_pk_u8_f32 v139, v157, 3, v146
v_cvt_pk_u8_f32 v143, v161, 3, v151
v_cvt_pk_u8_f32 v128, v165, 3, v144
v_cvt_pk_u8_f32 v132, v169, 3, v145
v_cvt_pk_u8_f32 v129, v173, 3, v148
v_cvt_pk_u8_f32 v133, v177, 3, v149
v_cvt_pk_u8_f32 v130, v181, 3, v154
v_cvt_pk_u8_f32 v134, v185, 3, v155
v_cvt_pk_u8_f32 v131, v189, 3, v156
v_cvt_pk_u8_f32 v135, v209, 3, v158
s_barrier
s_setprio 1
s_waitcnt vmcnt(0)
v_mfma_f32_16x16x128_f8f6f4 v[144:147], v[192:199], v[136:143], 0
v_mfma_f32_16x16x128_f8f6f4 v[146:149], v[192:199], v[128:135], 0
s_add_u32 s17, s35, s10
s_bfe_u32 s18, s17, 0x10001
s_and_b32 s15, s17, 3
s_lshl_b32 s22, s18, 15
s_bitcmp1_b32 s17, 0
s_cselect_b64 s[18:19], -1, 0
s_and_b64 s[20:21], s[18:19], exec
s_cselect_b32 s17, s93, 0x10000
s_or_b32 s20, s22, s17
v_or_b32_e32 v145, s20, v245
v_add_u32_e32 v145, v145, v244
ds_read_b64_tr_b8 v[154:155], v145
ds_read_b64_tr_b8 v[156:157], v145 offset:1024
ds_read_b64_tr_b8 v[158:159], v145 offset:2048
ds_read_b64_tr_b8 v[160:161], v145 offset:3072
ds_read_b64_tr_b8 v[162:163], v145 offset:256
ds_read_b64_tr_b8 v[164:165], v145 offset:1280
ds_read_b64_tr_b8 v[166:167], v145 offset:2304
ds_read_b64_tr_b8 v[168:169], v145 offset:3328
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[154:161], v[136:143], v[48:63], v242, v251 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[162:169], v[136:143], v[32:47], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[154:155], v145 offset:512
ds_read_b64_tr_b8 v[156:157], v145 offset:1536
ds_read_b64_tr_b8 v[158:159], v145 offset:2560
ds_read_b64_tr_b8 v[160:161], v145 offset:3584
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[154:161], v[136:143], v[16:31], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[162:163], v145 offset:768
ds_read_b64_tr_b8 v[164:165], v145 offset:1792
ds_read_b64_tr_b8 v[166:167], v145 offset:2816
ds_read_b64_tr_b8 v[168:169], v145 offset:3840
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[162:169], v[136:143], v[0:15], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[154:155], v145 offset:4096
ds_read_b64_tr_b8 v[156:157], v145 offset:5120
ds_read_b64_tr_b8 v[158:159], v145 offset:6144
ds_read_b64_tr_b8 v[160:161], v145 offset:7168
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[154:161], v[128:135], v[48:63], v242, v253 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[136:137], v145 offset:4352
ds_read_b64_tr_b8 v[138:139], v145 offset:5376
ds_read_b64_tr_b8 v[140:141], v145 offset:6400
ds_read_b64_tr_b8 v[142:143], v145 offset:7424
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[136:143], v[128:135], v[32:47], v242, v253 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[154:155], v145 offset:4608
ds_read_b64_tr_b8 v[156:157], v145 offset:5632
ds_read_b64_tr_b8 v[158:159], v145 offset:6656
ds_read_b64_tr_b8 v[160:161], v145 offset:7680
ds_read_b64_tr_b8 v[162:163], v145 offset:4864
ds_read_b64_tr_b8 v[164:165], v145 offset:5888
ds_read_b64_tr_b8 v[166:167], v145 offset:6912
ds_read_b64_tr_b8 v[168:169], v145 offset:7936
s_add_u32 s20, s35, 4
s_cmp_ge_u32 s20, s91
s_cbranch_scc1 16
s_and_b64 s[18:19], s[18:19], exec
s_cselect_b32 s18, 0x4000, 0
s_add_u32 s18, s22, s18
s_add_u32 s18, s18, s88
s_mul_i32 s20, s20, s8
s_lshl_b32 s19, s20, 7
s_nop 0
buffer_load_dwordx4 v233, s[84:87], s19 offen lds
s_add_u32 m0, s18, 0x2000
s_nop 0
buffer_load_dwordx4 v234, s[84:87], s19 offen lds
s_add_u32 s18, s35, 2
s_cmp_ge_u32 s18, s91
s_cbranch_scc1 17
s_not_b32 s15, s15
s_lshl_b32 s15, s15, 14
s_and_b32 s15, s15, 0x8000
s_add_u32 s15, s15, s17
s_add_u32 s15, s15, s88
s_mul_i32 s18, s18, s8
s_lshl_b32 s17, s18, 7
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s17 offen lds
s_add_u32 m0, s15, 0x2000
s_nop 0
buffer_load_dwordx4 v236, s[80:83], s17 offen lds
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[154:161], v[128:135], v[16:31], v242, v253 op_sel_hi:[0,0,0]
v_lshlrev_b32_e32 v136, 23, v251
v_lshlrev_b32_e32 v137, 23, v253
v_mul_f32_e32 v136, v144, v136
v_mul_f32_e32 v137, v146, v137
v_add_f32_e32 v136, v250, v136
v_add_f32_e32 v250, v136, v137
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[162:169], v[128:135], v[0:15], v242, v253 op_sel_hi:[0,0,0]
s_barrier
s_add_u32 s15, s35, 1
s_branch 62404
s_barrier
s_waitcnt vmcnt(0)
s_add_u32 s17, s15, 4
s_cmp_ge_u32 s17, s91
s_cbranch_scc1 19
s_add_u32 s18, s15, s10
s_and_b32 s19, s18, 2
s_lshl_b32 s19, s19, 14
s_bitcmp1_b32 s18, 0
s_cselect_b32 s18, 0x4000, 0
s_or_b32 s18, s19, s18
s_or_b32 s18, s18, s88
s_mul_i32 s17, s17, s8
s_lshl_b32 s17, s17, 7
s_nop 0
buffer_load_dwordx4 v233, s[84:87], s17 offen lds
s_or_b32 m0, s18, 0x2000
s_nop 0
buffer_load_dwordx4 v234, s[84:87], s17 offen lds
s_add_u32 s17, s15, 2
s_cmp_ge_u32 s17, s91
s_cbranch_scc1 19
s_add_u32 s18, s15, s10
s_andn2_b32 s19, 2, s18
s_lshl_b32 s19, s19, 14
s_bitcmp1_b32 s18, 0
s_cselect_b32 s18, s93, 0x10000
s_or_b32 s18, s19, s18
s_or_b32 s18, s18, s88
s_mul_i32 s17, s17, s8
s_lshl_b32 s17, s17, 7
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s17 offen lds
s_add_u32 m0, s18, 0x2000
s_nop 0
buffer_load_dwordx4 v236, s[80:83], s17 offen lds
s_barrier
s_add_u32 s15, s15, 1
s_branch 62355
s_cmp_ge_u32 s35, s15
s_cbranch_scc1 394
s_waitcnt vmcnt(0)
s_barrier
s_cmp_lg_u32 s11, 0
s_cselect_b64 s[18:19], -1, 0
s_not_b32 s11, s94
s_add_u32 s11, s4, s11
s_cmp_eq_u32 s94, s11
s_cselect_b64 s[22:23], -1, 0
s_or_b64 s[18:19], s[18:19], s[22:23]
s_mov_b64 s[20:21], -1
s_and_b64 s[22:23], s[18:19], exec
s_mov_b32 s26, 1
s_cbranch_scc0 7
s_add_u32 s2, s2, s14
s_cmp_ge_u32 s2, s51
s_mov_b32 s26, 0
s_cbranch_scc1 933
s_lshl_b32 s11, s2, 5
s_load_dwordx8 s[68:75], s[46:47], s11 offset:0x0
s_add_u32 s15, s91, s10
s_and_b32 s11, s15, 3
s_and_b64 s[20:21], s[20:21], exec
s_cbranch_scc0 931
s_waitcnt lgkmcnt(0)
s_add_u32 s76, s38, s72
s_addc_u32 s77, s39, s73
s_add_u32 s80, s40, s72
s_addc_u32 s81, s41, s73
s_not_b32 s10, s68
s_add_u32 s10, s4, s10
s_and_b64 s[18:19], s[18:19], exec
s_cselect_b32 s10, s10, s68
s_lshl_b32 s17, s10, 5
s_add_u32 s17, s17, 32
s_mul_i32 s17, s17, s5
s_addk_i32 s17, 0x60
s_lshr_b32 s17, s17, 7
v_readlane_b32 s18, v255, 1
s_min_u32 s91, s18, s17
v_readlane_b32 s18, v255, 10
v_readlane_b32 s19, v255, 11
s_and_b64 s[18:19], s[18:19], exec
s_cbranch_scc0 90
s_lshl_b32 s17, s11, 14
s_and_b32 s17, s17, 0x8000
s_bitcmp1_b32 s15, 0
s_cselect_b32 s15, 0x4000, 0
s_cselect_b32 s18, s93, 0x10000
s_or_b32 s15, s17, s15
s_or_b32 s15, s15, s88
s_or_b32 s17, s17, s18
buffer_load_dwordx4 v233, s[76:79], 0 offen lds
s_add_u32 m0, s15, 0x1000
v_readlane_b32 s18, v255, 14
s_or_b32 s17, s17, s88
s_nop 1
buffer_load_dwordx4 v233, s[76:79], s18 offen lds
s_or_b32 m0, s15, 0x2000
v_readlane_b32 s18, v255, 15
s_nop 4
buffer_load_dwordx4 v233, s[76:79], s18 offen lds
s_add_u32 m0, s15, 0x3000
s_mul_i32 s15, s8, 0x60
buffer_load_dwordx4 v233, s[76:79], s15 offen lds
v_readlane_b32 s15, v255, 16
buffer_load_dwordx4 v235, s[80:83], 0 offen lds
s_add_u32 m0, s17, 0x1000
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s18 offen lds
s_or_b32 m0, s17, 0x2000
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s15 offen lds
s_add_u32 m0, s17, 0x3000
s_mul_i32 s15, s8, 0x44
buffer_load_dwordx4 v235, s[80:83], s15 offen lds
s_cmp_lt_u32 s91, 2
s_cbranch_scc1 30
s_add_u32 s15, s11, 1
s_and_b32 s17, s15, 2
s_lshl_b32 s17, s17, 14
s_bitcmp1_b32 s15, 0
s_cselect_b32 s15, 0x4000, 0
s_or_b32 s15, s17, s15
s_or_b32 s15, s15, s88
s_mul_i32 s17, s8, 0xa0
buffer_load_dwordx4 v233, s[76:79], s33 offen lds
s_add_u32 m0, s15, 0x1000
s_nop 0
buffer_load_dwordx4 v233, s[76:79], s17 offen lds
s_or_b32 m0, s15, 0x2000
s_mul_i32 s17, s8, 0xc0
buffer_load_dwordx4 v233, s[76:79], s17 offen lds
s_add_u32 m0, s15, 0x3000
s_mul_i32 s15, s8, 0xe0
buffer_load_dwordx4 v233, s[76:79], s15 offen lds
v_readlane_b32 s15, v255, 6
s_add_u32 s22, s15, s70
v_readlane_b32 s15, v255, 7
s_addc_u32 s23, s15, s71
v_readlane_b32 s15, v255, 8
s_add_u32 s20, s15, s74
v_readlane_b32 s15, v255, 9
s_addc_u32 s21, s15, s75
s_lshl_b64 s[18:19], s[18:19], 2
v_readlane_b32 s15, v255, 12
s_add_u32 s15, s15, s18
v_readlane_b32 s17, v255, 13
s_addc_u32 s17, s17, s19
v_readlane_b32 s18, v255, 2
v_readlane_b32 s19, v255, 3
s_and_b64 s[18:19], s[18:19], exec
s_mul_i32 s10, s10, s5
s_cselect_b32 s18, 0, s15
v_readlane_b32 s15, v255, 0
s_cselect_b32 s19, 0, s17
s_add_u32 s10, s10, s15
s_lshl_b32 s17, s10, 5
v_or_b32_e32 v64, s17, v216
s_bfe_u32 s35, s10, 0x190002
v_mul_lo_u32 v64, v64, s7
s_waitcnt vmcnt(0)
v_add_u32_e32 v64, v65, v64
global_load_dwordx4 v[220:223], v64, s[22:23]
global_load_dwordx4 v[224:227], v64, s[22:23] offset:16
global_load_dwordx4 v[200:203], v64, s[22:23] offset:64
global_load_dwordx4 v[204:207], v64, s[22:23] offset:80
s_mov_b32 s10, 0x110000
s_mov_b32 s83, 0x110000
s_mov_b64 s[22:23], -1
v_writelane_b32 v255, s10, 17
s_branch 1077
s_cmp_ge_u32 s35, s15
s_cbranch_scc1 474
s_waitcnt vmcnt(0)
s_barrier
s_cmp_lg_u32 s11, 0
s_cselect_b64 s[18:19], -1, 0
s_not_b32 s11, s94
s_add_u32 s11, s4, s11
s_cmp_eq_u32 s94, s11
s_cselect_b64 s[22:23], -1, 0
s_or_b64 s[18:19], s[18:19], s[22:23]
s_mov_b64 s[20:21], -1
s_and_b64 s[22:23], s[18:19], exec
s_mov_b32 s26, 1
s_cbranch_scc0 7
s_add_u32 s2, s2, s14
s_cmp_ge_u32 s2, s51
s_mov_b32 s26, 0
s_cbranch_scc1 745
s_lshl_b32 s11, s2, 5
s_load_dwordx8 s[68:75], s[46:47], s11 offset:0x0
s_add_u32 s15, s91, s10
s_and_b32 s11, s15, 3
s_and_b64 s[20:21], s[20:21], exec
s_cbranch_scc0 743
s_waitcnt lgkmcnt(0)
s_add_u32 s76, s38, s72
s_addc_u32 s77, s39, s73
s_add_u32 s80, s40, s72
s_addc_u32 s81, s41, s73
s_not_b32 s10, s68
s_add_u32 s10, s4, s10
s_and_b64 s[18:19], s[18:19], exec
s_cselect_b32 s10, s10, s68
s_lshl_b32 s17, s10, 5
s_add_u32 s17, s17, 32
s_mul_i32 s17, s17, s5
s_addk_i32 s17, 0x60
s_lshr_b32 s17, s17, 7
v_readlane_b32 s18, v255, 1
s_min_u32 s91, s18, s17
v_readlane_b32 s18, v255, 10
v_readlane_b32 s19, v255, 11
s_and_b64 s[18:19], s[18:19], exec
s_cbranch_scc0 90
s_lshl_b32 s17, s11, 14
s_and_b32 s17, s17, 0x8000
s_bitcmp1_b32 s15, 0
s_cselect_b32 s15, 0x4000, 0
s_cselect_b32 s18, s93, 0x10000
s_or_b32 s15, s17, s15
s_or_b32 s15, s15, s88
s_or_b32 s17, s17, s18
buffer_load_dwordx4 v233, s[76:79], 0 offen lds
s_add_u32 m0, s15, 0x1000
v_readlane_b32 s18, v255, 14
s_or_b32 s17, s17, s88
s_nop 1
buffer_load_dwordx4 v233, s[76:79], s18 offen lds
s_or_b32 m0, s15, 0x2000
v_readlane_b32 s18, v255, 15
s_nop 4
buffer_load_dwordx4 v233, s[76:79], s18 offen lds
s_add_u32 m0, s15, 0x3000
s_mul_i32 s15, s8, 0x60
buffer_load_dwordx4 v233, s[76:79], s15 offen lds
v_readlane_b32 s15, v255, 16
buffer_load_dwordx4 v235, s[80:83], 0 offen lds
s_add_u32 m0, s17, 0x1000
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s18 offen lds
s_or_b32 m0, s17, 0x2000
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s15 offen lds
s_add_u32 m0, s17, 0x3000
s_mul_i32 s15, s8, 0x44
buffer_load_dwordx4 v235, s[80:83], s15 offen lds
s_cmp_lt_u32 s91, 2
s_cbranch_scc1 30
s_add_u32 s15, s11, 1
s_and_b32 s17, s15, 2
s_lshl_b32 s17, s17, 14
s_bitcmp1_b32 s15, 0
s_cselect_b32 s15, 0x4000, 0
s_or_b32 s15, s17, s15
s_or_b32 s15, s15, s88
s_mul_i32 s17, s8, 0xa0
buffer_load_dwordx4 v233, s[76:79], s33 offen lds
s_add_u32 m0, s15, 0x1000
s_nop 0
buffer_load_dwordx4 v233, s[76:79], s17 offen lds
s_or_b32 m0, s15, 0x2000
s_mul_i32 s17, s8, 0xc0
buffer_load_dwordx4 v233, s[76:79], s17 offen lds
s_add_u32 m0, s15, 0x3000
s_mul_i32 s15, s8, 0xe0
buffer_load_dwordx4 v233, s[76:79], s15 offen lds
v_readlane_b32 s15, v255, 6
s_add_u32 s22, s15, s70
v_readlane_b32 s15, v255, 7
s_addc_u32 s23, s15, s71
v_readlane_b32 s15, v255, 8
s_add_u32 s20, s15, s74
v_readlane_b32 s15, v255, 9
s_addc_u32 s21, s15, s75
s_lshl_b64 s[18:19], s[18:19], 2
v_readlane_b32 s15, v255, 12
s_add_u32 s15, s15, s18
v_readlane_b32 s17, v255, 13
s_addc_u32 s17, s17, s19
v_readlane_b32 s18, v255, 2
v_readlane_b32 s19, v255, 3
s_and_b64 s[18:19], s[18:19], exec
s_mul_i32 s10, s10, s5
s_cselect_b32 s18, 0, s15
v_readlane_b32 s15, v255, 0
s_cselect_b32 s19, 0, s17
s_add_u32 s10, s10, s15
s_lshl_b32 s17, s10, 5
v_or_b32_e32 v64, s17, v216
s_bfe_u32 s35, s10, 0x190002
v_mul_lo_u32 v64, v64, s7
s_waitcnt vmcnt(0)
v_add_u32_e32 v64, v65, v64
global_load_dwordx4 v[220:223], v64, s[22:23]
global_load_dwordx4 v[224:227], v64, s[22:23] offset:16
global_load_dwordx4 v[200:203], v64, s[22:23] offset:64
global_load_dwordx4 v[204:207], v64, s[22:23] offset:80
s_mov_b32 s10, 0x110000
s_mov_b32 s83, 0x110000
s_mov_b64 s[22:23], -1
v_writelane_b32 v255, s10, 17
s_branch 1189
s_setprio 0
v_fma_f32 v112, v112, v239, v152
v_fma_f32 v96, v96, v239, v152
v_fma_f32 v116, v116, v239, v152
v_fma_f32 v100, v100, v239, v152
v_fma_f32 v120, v120, v239, v152
v_fma_f32 v104, v104, v239, v152
v_fma_f32 v124, v124, v239, v152
v_fma_f32 v108, v108, v239, v152
v_fma_f32 v80, v80, v239, v150
v_fma_f32 v64, v64, v239, v150
v_fma_f32 v84, v84, v239, v150
v_fma_f32 v68, v68, v239, v150
v_fma_f32 v88, v88, v239, v150
v_fma_f32 v72, v72, v239, v150
v_fma_f32 v128, v75, v239, v150
v_fma_f32 v75, v92, v239, v150
v_fma_f32 v76, v76, v239, v150
v_fma_f32 v113, v113, v239, v152
v_fma_f32 v97, v97, v239, v152
v_fma_f32 v117, v117, v239, v152
v_fma_f32 v101, v101, v239, v152
v_fma_f32 v121, v121, v239, v152
v_fma_f32 v105, v105, v239, v152
v_fma_f32 v125, v125, v239, v152
v_fma_f32 v109, v109, v239, v152
v_fma_f32 v81, v81, v239, v150
v_fma_f32 v65, v65, v239, v150
v_fma_f32 v85, v85, v239, v150
v_fma_f32 v69, v69, v239, v150
v_fma_f32 v89, v89, v239, v150
v_fma_f32 v73, v73, v239, v150
v_fma_f32 v92, v93, v239, v150
v_fma_f32 v93, v94, v239, v150
v_fma_f32 v94, v95, v239, v150
v_fma_f32 v77, v77, v239, v150
v_fma_f32 v95, v79, v239, v150
v_cvt_pk_u8_f32 v79, v112, 0, 0
v_cvt_pk_u8_f32 v96, v96, 0, 0
v_cvt_pk_u8_f32 v112, v116, 0, 0
v_cvt_pk_u8_f32 v100, v100, 0, 0
v_cvt_pk_u8_f32 v116, v120, 0, 0
v_cvt_pk_u8_f32 v104, v104, 0, 0
v_cvt_pk_u8_f32 v120, v124, 0, 0
v_cvt_pk_u8_f32 v108, v108, 0, 0
v_cvt_pk_u8_f32 v80, v80, 0, 0
v_cvt_pk_u8_f32 v64, v64, 0, 0
v_cvt_pk_u8_f32 v84, v84, 0, 0
v_cvt_pk_u8_f32 v68, v68, 0, 0
v_cvt_pk_u8_f32 v88, v88, 0, 0
v_cvt_pk_u8_f32 v72, v72, 0, 0
v_cvt_pk_u8_f32 v75, v75, 0, 0
v_cvt_pk_u8_f32 v76, v76, 0, 0
v_fma_f32 v114, v114, v239, v152
v_fma_f32 v98, v98, v239, v152
v_fma_f32 v118, v118, v239, v152
v_fma_f32 v102, v102, v239, v152
v_fma_f32 v122, v122, v239, v152
v_fma_f32 v106, v106, v239, v152
v_fma_f32 v126, v126, v239, v152
v_fma_f32 v110, v110, v239, v152
v_fma_f32 v82, v82, v239, v150
v_fma_f32 v66, v66, v239, v150
v_fma_f32 v86, v86, v239, v150
v_fma_f32 v70, v70, v239, v150
v_fma_f32 v90, v90, v239, v150
v_fma_f32 v74, v74, v239, v150
v_fma_f32 v78, v78, v239, v150
v_cvt_pk_u8_f32 v79, v113, 1, v79
v_cvt_pk_u8_f32 v96, v97, 1, v96
v_cvt_pk_u8_f32 v97, v117, 1, v112
v_cvt_pk_u8_f32 v100, v101, 1, v100
v_cvt_pk_u8_f32 v101, v121, 1, v116
v_cvt_pk_u8_f32 v104, v105, 1, v104
v_cvt_pk_u8_f32 v105, v125, 1, v120
v_cvt_pk_u8_f32 v108, v109, 1, v108
v_cvt_pk_u8_f32 v80, v81, 1, v80
v_cvt_pk_u8_f32 v64, v65, 1, v64
v_cvt_pk_u8_f32 v65, v85, 1, v84
v_cvt_pk_u8_f32 v68, v69, 1, v68
v_cvt_pk_u8_f32 v69, v89, 1, v88
v_cvt_pk_u8_f32 v72, v73, 1, v72
v_cvt_pk_u8_f32 v73, v92, 1, v75
v_cvt_pk_u8_f32 v75, v77, 1, v76
v_fma_f32 v115, v115, v239, v152
v_fma_f32 v99, v99, v239, v152
v_fma_f32 v119, v119, v239, v152
v_fma_f32 v103, v103, v239, v152
v_fma_f32 v123, v123, v239, v152
v_fma_f32 v107, v107, v239, v152
v_fma_f32 v127, v127, v239, v152
v_fma_f32 v111, v111, v239, v152
v_fma_f32 v83, v83, v239, v150
v_fma_f32 v67, v67, v239, v150
v_fma_f32 v87, v87, v239, v150
v_fma_f32 v71, v71, v239, v150
v_fma_f32 v91, v91, v239, v150
v_cvt_pk_u8_f32 v76, v114, 2, v79
v_cvt_pk_u8_f32 v77, v98, 2, v96
v_cvt_pk_u8_f32 v79, v118, 2, v97
v_cvt_pk_u8_f32 v81, v102, 2, v100
v_cvt_pk_u8_f32 v84, v122, 2, v101
v_cvt_pk_u8_f32 v85, v106, 2, v104
v_cvt_pk_u8_f32 v88, v126, 2, v105
v_cvt_pk_u8_f32 v89, v110, 2, v108
v_cvt_pk_u8_f32 v80, v82, 2, v80
v_cvt_pk_u8_f32 v66, v66, 2, v64
v_cvt_pk_u8_f32 v65, v86, 2, v65
v_cvt_pk_u8_f32 v70, v70, 2, v68
v_cvt_pk_u8_f32 v82, v90, 2, v69
v_cvt_pk_u8_f32 v86, v74, 2, v72
v_cvt_pk_u8_f32 v90, v93, 2, v73
v_cvt_pk_u8_f32 v92, v78, 2, v75
s_mov_b32 s26, 1
v_cvt_pk_u8_f32 v72, v115, 3, v76
v_cvt_pk_u8_f32 v76, v99, 3, v77
v_cvt_pk_u8_f32 v73, v119, 3, v79
v_cvt_pk_u8_f32 v77, v103, 3, v81
v_cvt_pk_u8_f32 v74, v123, 3, v84
v_cvt_pk_u8_f32 v78, v107, 3, v85
v_cvt_pk_u8_f32 v75, v127, 3, v88
v_cvt_pk_u8_f32 v79, v111, 3, v89
v_cvt_pk_u8_f32 v64, v83, 3, v80
v_cvt_pk_u8_f32 v68, v67, 3, v66
v_cvt_pk_u8_f32 v65, v87, 3, v65
v_cvt_pk_u8_f32 v69, v71, 3, v70
v_cvt_pk_u8_f32 v66, v91, 3, v82
v_cvt_pk_u8_f32 v70, v128, 3, v86
v_cvt_pk_u8_f32 v67, v94, 3, v90
v_cvt_pk_u8_f32 v71, v95, 3, v92
s_waitcnt vmcnt(0)
s_barrier
s_cmp_lg_u32 s11, 0
s_cselect_b64 s[18:19], -1, 0
s_not_b32 s11, s94
s_add_u32 s11, s4, s11
s_cmp_eq_u32 s94, s11
s_cselect_b64 s[20:21], -1, 0
s_or_b64 s[24:25], s[18:19], s[20:21]
s_and_b64 s[18:19], s[24:25], exec
s_mov_b64 s[22:23], -1
s_cbranch_scc0 307
s_add_u32 s2, s2, s14
s_cmp_ge_u32 s2, s51
s_mov_b32 s26, 0
s_cbranch_scc1 302
s_lshl_b32 s11, s2, 5
s_load_dwordx8 s[68:75], s[46:47], s11 offset:0x0
s_branch 299
s_setprio 0
v_fma_f32 v112, v112, v239, v152
v_fma_f32 v96, v96, v239, v152
v_fma_f32 v116, v116, v239, v152
v_fma_f32 v100, v100, v239, v152
v_fma_f32 v120, v120, v239, v152
v_fma_f32 v104, v104, v239, v152
v_fma_f32 v124, v124, v239, v152
v_fma_f32 v108, v108, v239, v152
v_fma_f32 v80, v80, v239, v150
v_fma_f32 v64, v64, v239, v150
v_fma_f32 v84, v84, v239, v150
v_fma_f32 v68, v68, v239, v150
v_fma_f32 v88, v88, v239, v150
v_fma_f32 v72, v72, v239, v150
v_fma_f32 v128, v75, v239, v150
v_fma_f32 v75, v92, v239, v150
v_fma_f32 v76, v76, v239, v150
v_fma_f32 v113, v113, v239, v152
v_fma_f32 v97, v97, v239, v152
v_fma_f32 v117, v117, v239, v152
v_fma_f32 v101, v101, v239, v152
v_fma_f32 v121, v121, v239, v152
v_fma_f32 v105, v105, v239, v152
v_fma_f32 v125, v125, v239, v152
v_fma_f32 v109, v109, v239, v152
v_fma_f32 v81, v81, v239, v150
v_fma_f32 v65, v65, v239, v150
v_fma_f32 v85, v85, v239, v150
v_fma_f32 v69, v69, v239, v150
v_fma_f32 v89, v89, v239, v150
v_fma_f32 v73, v73, v239, v150
v_fma_f32 v92, v93, v239, v150
v_fma_f32 v93, v94, v239, v150
v_fma_f32 v94, v95, v239, v150
v_fma_f32 v77, v77, v239, v150
v_fma_f32 v95, v79, v239, v150
v_cvt_pk_u8_f32 v79, v112, 0, 0
v_cvt_pk_u8_f32 v96, v96, 0, 0
v_cvt_pk_u8_f32 v112, v116, 0, 0
v_cvt_pk_u8_f32 v100, v100, 0, 0
v_cvt_pk_u8_f32 v116, v120, 0, 0
v_cvt_pk_u8_f32 v104, v104, 0, 0
v_cvt_pk_u8_f32 v120, v124, 0, 0
v_cvt_pk_u8_f32 v108, v108, 0, 0
v_cvt_pk_u8_f32 v80, v80, 0, 0
v_cvt_pk_u8_f32 v64, v64, 0, 0
v_cvt_pk_u8_f32 v84, v84, 0, 0
v_cvt_pk_u8_f32 v68, v68, 0, 0
v_cvt_pk_u8_f32 v88, v88, 0, 0
v_cvt_pk_u8_f32 v72, v72, 0, 0
v_cvt_pk_u8_f32 v75, v75, 0, 0
v_cvt_pk_u8_f32 v76, v76, 0, 0
v_fma_f32 v114, v114, v239, v152
v_fma_f32 v98, v98, v239, v152
v_fma_f32 v118, v118, v239, v152
v_fma_f32 v102, v102, v239, v152
v_fma_f32 v122, v122, v239, v152
v_fma_f32 v106, v106, v239, v152
v_fma_f32 v126, v126, v239, v152
v_fma_f32 v110, v110, v239, v152
v_fma_f32 v82, v82, v239, v150
v_fma_f32 v66, v66, v239, v150
v_fma_f32 v86, v86, v239, v150
v_fma_f32 v70, v70, v239, v150
v_fma_f32 v90, v90, v239, v150
v_fma_f32 v74, v74, v239, v150
v_fma_f32 v78, v78, v239, v150
v_cvt_pk_u8_f32 v79, v113, 1, v79
v_cvt_pk_u8_f32 v96, v97, 1, v96
v_cvt_pk_u8_f32 v97, v117, 1, v112
v_cvt_pk_u8_f32 v100, v101, 1, v100
v_cvt_pk_u8_f32 v101, v121, 1, v116
v_cvt_pk_u8_f32 v104, v105, 1, v104
v_cvt_pk_u8_f32 v105, v125, 1, v120
v_cvt_pk_u8_f32 v108, v109, 1, v108
v_cvt_pk_u8_f32 v80, v81, 1, v80
v_cvt_pk_u8_f32 v64, v65, 1, v64
v_cvt_pk_u8_f32 v65, v85, 1, v84
v_cvt_pk_u8_f32 v68, v69, 1, v68
v_cvt_pk_u8_f32 v69, v89, 1, v88
v_cvt_pk_u8_f32 v72, v73, 1, v72
v_cvt_pk_u8_f32 v73, v92, 1, v75
v_cvt_pk_u8_f32 v75, v77, 1, v76
v_fma_f32 v115, v115, v239, v152
v_fma_f32 v99, v99, v239, v152
v_fma_f32 v119, v119, v239, v152
v_fma_f32 v103, v103, v239, v152
v_fma_f32 v123, v123, v239, v152
v_fma_f32 v107, v107, v239, v152
v_fma_f32 v127, v127, v239, v152
v_fma_f32 v111, v111, v239, v152
v_fma_f32 v83, v83, v239, v150
v_fma_f32 v67, v67, v239, v150
v_fma_f32 v87, v87, v239, v150
v_fma_f32 v71, v71, v239, v150
v_fma_f32 v91, v91, v239, v150
v_cvt_pk_u8_f32 v76, v114, 2, v79
v_cvt_pk_u8_f32 v77, v98, 2, v96
v_cvt_pk_u8_f32 v79, v118, 2, v97
v_cvt_pk_u8_f32 v81, v102, 2, v100
v_cvt_pk_u8_f32 v84, v122, 2, v101
v_cvt_pk_u8_f32 v85, v106, 2, v104
v_cvt_pk_u8_f32 v88, v126, 2, v105
v_cvt_pk_u8_f32 v89, v110, 2, v108
v_cvt_pk_u8_f32 v80, v82, 2, v80
v_cvt_pk_u8_f32 v66, v66, 2, v64
v_cvt_pk_u8_f32 v65, v86, 2, v65
v_cvt_pk_u8_f32 v70, v70, 2, v68
v_cvt_pk_u8_f32 v82, v90, 2, v69
v_cvt_pk_u8_f32 v86, v74, 2, v72
v_cvt_pk_u8_f32 v90, v93, 2, v73
v_cvt_pk_u8_f32 v92, v78, 2, v75
s_mov_b32 s26, 1
v_cvt_pk_u8_f32 v72, v115, 3, v76
v_cvt_pk_u8_f32 v76, v99, 3, v77
v_cvt_pk_u8_f32 v73, v119, 3, v79
v_cvt_pk_u8_f32 v77, v103, 3, v81
v_cvt_pk_u8_f32 v74, v123, 3, v84
v_cvt_pk_u8_f32 v78, v107, 3, v85
v_cvt_pk_u8_f32 v75, v127, 3, v88
v_cvt_pk_u8_f32 v79, v111, 3, v89
v_cvt_pk_u8_f32 v64, v83, 3, v80
v_cvt_pk_u8_f32 v68, v67, 3, v66
v_cvt_pk_u8_f32 v65, v87, 3, v65
v_cvt_pk_u8_f32 v69, v71, 3, v70
v_cvt_pk_u8_f32 v66, v91, 3, v82
v_cvt_pk_u8_f32 v70, v128, 3, v86
v_cvt_pk_u8_f32 v67, v94, 3, v90
v_cvt_pk_u8_f32 v71, v95, 3, v92
s_waitcnt vmcnt(0)
s_barrier
s_cmp_lg_u32 s11, 0
s_cselect_b64 s[18:19], -1, 0
s_not_b32 s11, s94
s_add_u32 s11, s4, s11
s_cmp_eq_u32 s94, s11
s_cselect_b64 s[20:21], -1, 0
s_or_b64 s[24:25], s[18:19], s[20:21]
s_and_b64 s[18:19], s[24:25], exec
s_mov_b64 s[22:23], -1
s_cbranch_scc0 339
s_add_u32 s2, s2, s14
s_cmp_ge_u32 s2, s51
s_mov_b32 s26, 0
s_cbranch_scc1 334
s_lshl_b32 s11, s2, 5
s_load_dwordx8 s[68:75], s[46:47], s11 offset:0x0
s_branch 331
s_mov_b64 s[20:21], 0
s_add_u32 s15, s91, s10
s_and_b32 s11, s15, 3
s_and_b64 s[20:21], s[20:21], exec
s_cbranch_scc1 64605
s_mov_b64 s[22:23], 0
s_branch 313
s_mov_b64 s[20:21], 0
s_add_u32 s15, s91, s10
s_and_b32 s11, s15, 3
s_and_b64 s[20:21], s[20:21], exec
s_cbranch_scc1 64793
s_mov_b64 s[22:23], 0
s_branch 613
s_mov_b64 s[22:23], 0
s_add_u32 s27, s91, s10
s_and_b32 s11, s27, 3
s_and_b64 s[18:19], s[22:23], exec
s_cbranch_scc0 170
s_waitcnt lgkmcnt(0)
s_add_u32 s76, s38, s72
s_addc_u32 s77, s39, s73
s_add_u32 s80, s40, s72
s_addc_u32 s81, s41, s73
s_not_b32 s17, s68
s_add_u32 s17, s4, s17
s_and_b64 s[18:19], s[24:25], exec
s_cselect_b32 s17, s17, s68
s_lshl_b32 s18, s17, 5
s_add_u32 s18, s18, 32
s_mul_i32 s18, s18, s5
s_addk_i32 s18, 0x60
s_lshr_b32 s18, s18, 7
v_readlane_b32 s19, v255, 1
s_min_u32 s91, s19, s18
v_readlane_b32 s18, v255, 10
v_readlane_b32 s19, v255, 11
s_and_b64 s[18:19], s[18:19], exec
s_cbranch_scc0 90
s_lshl_b32 s18, s11, 14
s_and_b32 s18, s18, 0x8000
s_bitcmp1_b32 s27, 0
s_cselect_b32 s19, 0x4000, 0
s_cselect_b32 s20, s93, 0x10000
s_or_b32 s19, s18, s19
s_or_b32 s19, s19, s88
s_or_b32 s18, s18, s20
buffer_load_dwordx4 v233, s[76:79], 0 offen lds
s_add_u32 m0, s19, 0x1000
v_readlane_b32 s20, v255, 14
s_or_b32 s18, s18, s88
s_nop 1
buffer_load_dwordx4 v233, s[76:79], s20 offen lds
s_or_b32 m0, s19, 0x2000
v_readlane_b32 s20, v255, 15
s_nop 4
buffer_load_dwordx4 v233, s[76:79], s20 offen lds
s_add_u32 m0, s19, 0x3000
s_mul_i32 s19, s8, 0x60
buffer_load_dwordx4 v233, s[76:79], s19 offen lds
v_readlane_b32 s19, v255, 16
buffer_load_dwordx4 v235, s[80:83], 0 offen lds
s_add_u32 m0, s18, 0x1000
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s20 offen lds
s_or_b32 m0, s18, 0x2000
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s19 offen lds
s_add_u32 m0, s18, 0x3000
s_mul_i32 s18, s8, 0x44
buffer_load_dwordx4 v235, s[80:83], s18 offen lds
s_cmp_lt_u32 s91, 2
s_cbranch_scc1 30
s_add_u32 s18, s11, 1
s_and_b32 s19, s18, 2
s_lshl_b32 s19, s19, 14
s_bitcmp1_b32 s18, 0
s_cselect_b32 s18, 0x4000, 0
s_or_b32 s18, s19, s18
s_or_b32 s18, s18, s88
s_mul_i32 s19, s8, 0xa0
buffer_load_dwordx4 v233, s[76:79], s33 offen lds
s_add_u32 m0, s18, 0x1000
s_nop 0
buffer_load_dwordx4 v233, s[76:79], s19 offen lds
s_or_b32 m0, s18, 0x2000
s_mul_i32 s19, s8, 0xc0
buffer_load_dwordx4 v233, s[76:79], s19 offen lds
s_add_u32 m0, s18, 0x3000
s_mul_i32 s18, s8, 0xe0
buffer_load_dwordx4 v233, s[76:79], s18 offen lds
v_readlane_b32 s18, v255, 6
s_add_u32 s24, s18, s70
v_readlane_b32 s18, v255, 7
s_addc_u32 s25, s18, s71
v_readlane_b32 s18, v255, 8
s_add_u32 s20, s18, s74
v_readlane_b32 s18, v255, 9
s_addc_u32 s21, s18, s75
s_lshl_b64 s[18:19], s[18:19], 2
v_readlane_b32 s27, v255, 12
s_add_u32 s27, s27, s18
v_readlane_b32 s18, v255, 13
s_addc_u32 s28, s18, s19
v_readlane_b32 s18, v255, 2
v_readlane_b32 s19, v255, 3
s_and_b64 s[18:19], s[18:19], exec
s_cselect_b32 s18, 0, s27
s_mul_i32 s17, s17, s5
v_readlane_b32 s27, v255, 0
s_cselect_b32 s19, 0, s28
s_add_u32 s27, s17, s27
s_lshl_b32 s17, s27, 5
s_bfe_u32 s35, s27, 0x190002
v_or_b32_e32 v80, s17, v216
v_mul_lo_u32 v80, v80, s7
s_waitcnt vmcnt(0)
v_add_u32_e32 v80, v81, v80
global_load_dwordx4 v[220:223], v80, s[24:25]
global_load_dwordx4 v[224:227], v80, s[24:25] offset:16
global_load_dwordx4 v[200:203], v80, s[24:25] offset:64
global_load_dwordx4 v[204:207], v80, s[24:25] offset:80
s_mov_b32 s24, 0x110000
s_mov_b32 s83, 0x110000
v_writelane_b32 v255, s24, 17
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[72:79], 0
s_nop 11
v_lshlrev_b32_e32 v81, 23, v251
v_mul_f32_e32 v80, v80, v81
v_add_f32_e32 v84, v250, v80
v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[64:71], 0
s_add_u32 s10, s15, s10
s_and_b32 s15, s10, 2
s_lshl_b32 s15, s15, 14
s_bitcmp1_b32 s10, 0
s_nop 7
v_lshlrev_b32_e32 v81, 23, v253
s_cselect_b32 s10, s93, 0x10000
v_mul_f32_e32 v80, v80, v81
s_or_b32 s15, s15, s10
v_add_f32_e32 v250, v84, v80
v_or_b32_e32 v80, s15, v245
v_add_u32_e32 v80, v80, v244
ds_read_b64_tr_b8 v[82:83], v80
ds_read_b64_tr_b8 v[84:85], v80 offset:1024
ds_read_b64_tr_b8 v[86:87], v80 offset:2048
ds_read_b64_tr_b8 v[88:89], v80 offset:3072
ds_read_b64_tr_b8 v[90:91], v80 offset:256
ds_read_b64_tr_b8 v[92:93], v80 offset:1280
ds_read_b64_tr_b8 v[94:95], v80 offset:2304
ds_read_b64_tr_b8 v[96:97], v80 offset:3328
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[82:89], v[72:79], v[48:63], v242, v251 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[90:97], v[72:79], v[32:47], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[82:83], v80 offset:512
ds_read_b64_tr_b8 v[84:85], v80 offset:1536
ds_read_b64_tr_b8 v[86:87], v80 offset:2560
ds_read_b64_tr_b8 v[88:89], v80 offset:3584
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[72:79], v[16:31], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[90:91], v80 offset:768
ds_read_b64_tr_b8 v[92:93], v80 offset:1792
ds_read_b64_tr_b8 v[94:95], v80 offset:2816
ds_read_b64_tr_b8 v[96:97], v80 offset:3840
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[90:97], v[72:79], v[0:15], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[82:83], v80 offset:4096
ds_read_b64_tr_b8 v[84:85], v80 offset:5120
ds_read_b64_tr_b8 v[86:87], v80 offset:6144
ds_read_b64_tr_b8 v[88:89], v80 offset:7168
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[82:89], v[64:71], v[48:63], v242, v253 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[72:73], v80 offset:4352
ds_read_b64_tr_b8 v[74:75], v80 offset:5376
ds_read_b64_tr_b8 v[76:77], v80 offset:6400
ds_read_b64_tr_b8 v[78:79], v80 offset:7424
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[72:79], v[64:71], v[32:47], v242, v253 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[82:83], v80 offset:4608
ds_read_b64_tr_b8 v[84:85], v80 offset:5632
ds_read_b64_tr_b8 v[86:87], v80 offset:6656
ds_read_b64_tr_b8 v[88:89], v80 offset:7680
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[64:71], v[16:31], v242, v253 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[72:73], v80 offset:4864
ds_read_b64_tr_b8 v[74:75], v80 offset:5888
ds_read_b64_tr_b8 v[76:77], v80 offset:6912
ds_read_b64_tr_b8 v[78:79], v80 offset:7936
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[72:79], v[64:71], v[0:15], v242, v253 op_sel_hi:[0,0,0]
s_waitcnt vmcnt(4)
s_barrier
s_and_b64 s[22:23], s[22:23], exec
s_cbranch_scc1 310
s_branch 575
s_mov_b64 s[22:23], 0
s_add_u32 s27, s91, s10
s_and_b32 s11, s27, 3
s_and_b64 s[18:19], s[22:23], exec
s_cbranch_scc0 170
s_waitcnt lgkmcnt(0)
s_add_u32 s76, s38, s72
s_addc_u32 s77, s39, s73
s_add_u32 s80, s40, s72
s_addc_u32 s81, s41, s73
s_not_b32 s17, s68
s_add_u32 s17, s4, s17
s_and_b64 s[18:19], s[24:25], exec
s_cselect_b32 s17, s17, s68
s_lshl_b32 s18, s17, 5
s_add_u32 s18, s18, 32
s_mul_i32 s18, s18, s5
s_addk_i32 s18, 0x60
s_lshr_b32 s18, s18, 7
v_readlane_b32 s19, v255, 1
s_min_u32 s91, s19, s18
v_readlane_b32 s18, v255, 10
v_readlane_b32 s19, v255, 11
s_and_b64 s[18:19], s[18:19], exec
s_cbranch_scc0 90
s_lshl_b32 s18, s11, 14
s_and_b32 s18, s18, 0x8000
s_bitcmp1_b32 s27, 0
s_cselect_b32 s19, 0x4000, 0
s_cselect_b32 s20, s93, 0x10000
s_or_b32 s19, s18, s19
s_or_b32 s19, s19, s88
s_or_b32 s18, s18, s20
buffer_load_dwordx4 v233, s[76:79], 0 offen lds
s_add_u32 m0, s19, 0x1000
v_readlane_b32 s20, v255, 14
s_or_b32 s18, s18, s88
s_nop 1
buffer_load_dwordx4 v233, s[76:79], s20 offen lds
s_or_b32 m0, s19, 0x2000
v_readlane_b32 s20, v255, 15
s_nop 4
buffer_load_dwordx4 v233, s[76:79], s20 offen lds
s_add_u32 m0, s19, 0x3000
s_mul_i32 s19, s8, 0x60
buffer_load_dwordx4 v233, s[76:79], s19 offen lds
v_readlane_b32 s19, v255, 16
buffer_load_dwordx4 v235, s[80:83], 0 offen lds
s_add_u32 m0, s18, 0x1000
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s20 offen lds
s_or_b32 m0, s18, 0x2000
s_nop 0
buffer_load_dwordx4 v235, s[80:83], s19 offen lds
s_add_u32 m0, s18, 0x3000
s_mul_i32 s18, s8, 0x44
buffer_load_dwordx4 v235, s[80:83], s18 offen lds
s_cmp_lt_u32 s91, 2
s_cbranch_scc1 30
s_add_u32 s18, s11, 1
s_and_b32 s19, s18, 2
s_lshl_b32 s19, s19, 14
s_bitcmp1_b32 s18, 0
s_cselect_b32 s18, 0x4000, 0
s_or_b32 s18, s19, s18
s_or_b32 s18, s18, s88
s_mul_i32 s19, s8, 0xa0
buffer_load_dwordx4 v233, s[76:79], s33 offen lds
s_add_u32 m0, s18, 0x1000
s_nop 0
buffer_load_dwordx4 v233, s[76:79], s19 offen lds
s_or_b32 m0, s18, 0x2000
s_mul_i32 s19, s8, 0xc0
buffer_load_dwordx4 v233, s[76:79], s19 offen lds
s_add_u32 m0, s18, 0x3000
s_mul_i32 s18, s8, 0xe0
buffer_load_dwordx4 v233, s[76:79], s18 offen lds
v_readlane_b32 s18, v255, 6
s_add_u32 s24, s18, s70
v_readlane_b32 s18, v255, 7
s_addc_u32 s25, s18, s71
v_readlane_b32 s18, v255, 8
s_add_u32 s20, s18, s74
v_readlane_b32 s18, v255, 9
s_addc_u32 s21, s18, s75
s_lshl_b64 s[18:19], s[18:19], 2
v_readlane_b32 s27, v255, 12
s_add_u32 s27, s27, s18
v_readlane_b32 s18, v255, 13
s_addc_u32 s28, s18, s19
v_readlane_b32 s18, v255, 2
v_readlane_b32 s19, v255, 3
s_and_b64 s[18:19], s[18:19], exec
s_cselect_b32 s18, 0, s27
s_mul_i32 s17, s17, s5
v_readlane_b32 s27, v255, 0
s_cselect_b32 s19, 0, s28
s_add_u32 s27, s17, s27
s_lshl_b32 s17, s27, 5
s_bfe_u32 s35, s27, 0x190002
v_or_b32_e32 v80, s17, v216
v_mul_lo_u32 v80, v80, s7
s_waitcnt vmcnt(0)
v_add_u32_e32 v80, v81, v80
global_load_dwordx4 v[220:223], v80, s[24:25]
global_load_dwordx4 v[224:227], v80, s[24:25] offset:16
global_load_dwordx4 v[200:203], v80, s[24:25] offset:64
global_load_dwordx4 v[204:207], v80, s[24:25] offset:80
s_mov_b32 s24, 0x110000
s_mov_b32 s83, 0x110000
v_writelane_b32 v255, s24, 17
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[72:79], 0
s_nop 11
v_lshlrev_b32_e32 v81, 23, v251
v_mul_f32_e32 v80, v80, v81
v_add_f32_e32 v84, v250, v80
v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[64:71], 0
s_add_u32 s10, s15, s10
s_and_b32 s15, s10, 2
s_lshl_b32 s15, s15, 14
s_bitcmp1_b32 s10, 0
s_nop 7
v_lshlrev_b32_e32 v81, 23, v253
s_cselect_b32 s10, s93, 0x10000
v_mul_f32_e32 v80, v80, v81
s_or_b32 s15, s15, s10
v_add_f32_e32 v250, v84, v80
v_or_b32_e32 v80, s15, v245
v_add_u32_e32 v80, v80, v244
ds_read_b64_tr_b8 v[82:83], v80
ds_read_b64_tr_b8 v[84:85], v80 offset:1024
ds_read_b64_tr_b8 v[86:87], v80 offset:2048
ds_read_b64_tr_b8 v[88:89], v80 offset:3072
ds_read_b64_tr_b8 v[90:91], v80 offset:256
ds_read_b64_tr_b8 v[92:93], v80 offset:1280
ds_read_b64_tr_b8 v[94:95], v80 offset:2304
ds_read_b64_tr_b8 v[96:97], v80 offset:3328
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[82:89], v[72:79], v[48:63], v242, v251 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[90:97], v[72:79], v[32:47], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[82:83], v80 offset:512
ds_read_b64_tr_b8 v[84:85], v80 offset:1536
ds_read_b64_tr_b8 v[86:87], v80 offset:2560
ds_read_b64_tr_b8 v[88:89], v80 offset:3584
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[72:79], v[16:31], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[90:91], v80 offset:768
ds_read_b64_tr_b8 v[92:93], v80 offset:1792
ds_read_b64_tr_b8 v[94:95], v80 offset:2816
ds_read_b64_tr_b8 v[96:97], v80 offset:3840
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[90:97], v[72:79], v[0:15], v242, v251 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[82:83], v80 offset:4096
ds_read_b64_tr_b8 v[84:85], v80 offset:5120
ds_read_b64_tr_b8 v[86:87], v80 offset:6144
ds_read_b64_tr_b8 v[88:89], v80 offset:7168
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[82:89], v[64:71], v[48:63], v242, v253 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[72:73], v80 offset:4352
ds_read_b64_tr_b8 v[74:75], v80 offset:5376
ds_read_b64_tr_b8 v[76:77], v80 offset:6400
ds_read_b64_tr_b8 v[78:79], v80 offset:7424
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[72:79], v[64:71], v[32:47], v242, v253 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[82:83], v80 offset:4608
ds_read_b64_tr_b8 v[84:85], v80 offset:5632
ds_read_b64_tr_b8 v[86:87], v80 offset:6656
ds_read_b64_tr_b8 v[88:89], v80 offset:7680
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[64:71], v[16:31], v242, v253 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[72:73], v80 offset:4864
ds_read_b64_tr_b8 v[74:75], v80 offset:5888
ds_read_b64_tr_b8 v[76:77], v80 offset:6912
ds_read_b64_tr_b8 v[78:79], v80 offset:7936
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[72:79], v[64:71], v[0:15], v242, v253 op_sel_hi:[0,0,0]
s_waitcnt vmcnt(4)
s_barrier
s_and_b64 s[22:23], s[22:23], exec
s_cbranch_scc0 266
s_nop 15
s_nop 3
v_rcp_f32_e32 v64, v250
v_log_f32_e32 v65, v250
s_nop 1
v_mul_f32_e32 v64, v240, v64
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
v_add_f32_e32 v32, v252, v65
v_add_f32_e32 v32, -4.0, v32
v_add_f32_e32 v32, -2.0, v32
v_mul_f32_e32 v32, 0x3f317218, v32
ds_write_b128 v228, v[0:3]
ds_write_b128 v230, v[4:7]
ds_write_b128 v229, v[8:11]
v_xor_b32_e32 v0, 0x60, v228
ds_write_b128 v0, v[12:15]
v_xor_b32_e32 v0, 0x80, v228
ds_write_b128 v0, v[16:19]
v_xor_b32_e32 v0, 0xa0, v228
ds_write_b128 v0, v[20:23]
v_xor_b32_e32 v0, 0xc0, v228
ds_write_b128 v0, v[24:27]
v_xor_b32_e32 v0, 0xe0, v228
ds_write_b128 v0, v[28:31]
ds_read_b128 v[8:11], v219
ds_read_b128 v[12:15], v218 offset:1024
ds_read_b128 v[16:19], v237 offset:2048
ds_read_b128 v[20:23], v254 offset:3072
ds_read_b128 v[24:27], v219 offset:4096
ds_read_b128 v[28:31], v218 offset:5120
ds_read_b128 v[34:37], v237 offset:6144
ds_read_b128 v[38:41], v254 offset:7168
v_add_u32_e32 v0, s3, v217
v_mul_lo_u32 v0, v0, s9
s_waitcnt vmcnt(0)
v_add_u32_e32 v0, v0, v1
v_add_u32_e32 v1, s6, v0
v_add_u32_e32 v2, s6, v1
v_add_u32_e32 v3, s6, v2
v_add_u32_e32 v4, s6, v3
v_add_u32_e32 v5, s6, v4
v_add_u32_e32 v6, s6, v5
v_add_u32_e32 v7, s6, v6
s_waitcnt lgkmcnt(0)
global_store_dwordx4 v0, v[8:11], s[0:1]
s_waitcnt lgkmcnt(6)
global_store_dwordx4 v1, v[12:15], s[0:1]
s_waitcnt lgkmcnt(5)
global_store_dwordx4 v2, v[16:19], s[0:1]
s_waitcnt lgkmcnt(4)
global_store_dwordx4 v3, v[20:23], s[0:1]
s_waitcnt lgkmcnt(3)
global_store_dwordx4 v4, v[24:27], s[0:1]
s_waitcnt lgkmcnt(2)
global_store_dwordx4 v5, v[28:31], s[0:1]
s_waitcnt lgkmcnt(1)
global_store_dwordx4 v6, v[34:37], s[0:1]
s_waitcnt lgkmcnt(0)
global_store_dwordx4 v7, v[38:41], s[0:1]
v_add_u32_e32 v0, s3, v216
v_lshlrev_b32_e32 v0, 2, v0
s_cmp_eq_u64 s[12:13], 0
s_cbranch_scc0 57994
s_branch 56941
s_nop 15
s_nop 3
v_rcp_f32_e32 v64, v250
v_log_f32_e32 v65, v250
s_nop 1
v_mul_f32_e32 v64, v240, v64
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
v_add_f32_e32 v32, v252, v65
v_add_f32_e32 v32, -4.0, v32
v_add_f32_e32 v32, -2.0, v32
v_mul_f32_e32 v32, 0x3f317218, v32
ds_write_b128 v228, v[0:3]
ds_write_b128 v230, v[4:7]
ds_write_b128 v229, v[8:11]
s_waitcnt vmcnt(0)
ds_write_b128 v0, v[12:15]
s_waitcnt vmcnt(0)
ds_write_b128 v0, v[16:19]
s_waitcnt vmcnt(0)
ds_write_b128 v0, v[20:23]
s_waitcnt vmcnt(0)
ds_write_b128 v0, v[24:27]
s_waitcnt vmcnt(0)
ds_write_b128 v0, v[28:31]
ds_read_b128 v[8:11], v219
ds_read_b128 v[12:15], v218 offset:1024
ds_read_b128 v[16:19], v237 offset:2048
ds_read_b128 v[20:23], v254 offset:3072
ds_read_b128 v[24:27], v219 offset:4096
ds_read_b128 v[28:31], v218 offset:5120
ds_read_b128 v[34:37], v237 offset:6144
ds_read_b128 v[38:41], v254 offset:7168
v_add_u32_e32 v0, s3, v217
v_mul_lo_u32 v0, v0, s9
s_waitcnt vmcnt(0)
v_add_u32_e32 v0, v0, v1
v_add_u32_e32 v1, s6, v0
v_add_u32_e32 v2, s6, v1
v_add_u32_e32 v3, s6, v2
v_add_u32_e32 v4, s6, v3
v_add_u32_e32 v5, s6, v4
v_add_u32_e32 v6, s6, v5
v_add_u32_e32 v7, s6, v6
s_waitcnt lgkmcnt(0)
global_store_dwordx4 v0, v[8:11], s[0:1]
s_waitcnt lgkmcnt(6)
global_store_dwordx4 v1, v[12:15], s[0:1]
s_waitcnt lgkmcnt(5)
global_store_dwordx4 v2, v[16:19], s[0:1]
s_waitcnt lgkmcnt(4)
global_store_dwordx4 v3, v[20:23], s[0:1]
s_waitcnt lgkmcnt(3)
global_store_dwordx4 v4, v[24:27], s[0:1]
s_waitcnt lgkmcnt(2)
global_store_dwordx4 v5, v[28:31], s[0:1]
s_waitcnt lgkmcnt(1)
global_store_dwordx4 v6, v[34:37], s[0:1]
s_waitcnt lgkmcnt(0)
global_store_dwordx4 v7, v[38:41], s[0:1]
v_add_u32_e32 v0, s3, v216
v_lshlrev_b32_e32 v0, 2, v0
s_cmp_eq_u64 s[12:13], 0
s_cbranch_scc1 2
global_store_dword v0, v32, s[12:13]
v_readlane_b32 s0, v255, 10
v_readlane_b32 s1, v255, 11
s_and_b64 s[0:1], s[0:1], exec
s_cbranch_scc0 1
s_barrier
s_waitcnt vmcnt(0)
s_endpgm
