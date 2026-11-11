s_load_dwordx16 s[16:31], s[0:1], 0x0
s_load_dwordx16 s[32:47], s[0:1], 0x40
s_load_dwordx4 s[96:99], s[0:1], 0x80
s_load_dwordx2 s[100:101], s[0:1], 0x90
v_lshrrev_b32_e32 v255, 6, v216
s_nop 3
v_readfirstlane_b32 s57, v255
s_nop 3
s_lshr_b32 s58, s57, 2
v_and_b32_e32 v244, 63, v216
v_and_b32_e32 v245, 31, v216
v_bfe_u32 v246, v216, 5, 1
v_lshrrev_b32_e32 v247, 4, v244
v_lshrrev_b32_e32 v255, 2, v244
v_xor_b32_e32 v247, v247, v255
v_and_b32_e32 v247, 1, v247
v_cmp_eq_u32_e32 vcc, 0, v247
v_mov_b32_e32 v255, 0x38383838
v_cndmask_b32_e64 v160, 0, v255, vcc
v_lshrrev_b32_e32 v255, 2, v245
v_add_u32_e32 v252, 0, v246
v_xor_b32_e32 v252, v252, v255
v_and_b32_e32 v252, 3, v252
v_lshlrev_b32_e32 v252, 5, v252
v_lshl_add_u32 v252, v245, 7, v252
v_add_u32_e32 v253, 2, v246
v_xor_b32_e32 v253, v253, v255
v_and_b32_e32 v253, 3, v253
v_lshlrev_b32_e32 v253, 5, v253
v_lshl_add_u32 v253, v245, 7, v253
v_lshrrev_b32_e32 v255, 4, v245
v_lshl_add_u32 v254, v246, 6, v255
v_lshlrev_b32_e32 v254, 7, v254
v_and_b32_e32 v255, 15, v245
v_lshl_add_u32 v254, v255, 3, v254
s_waitcnt lgkmcnt(0)
s_cmp_eq_u64 s[96:97], 0
s_cbranch_scc1 3
s_load_dword s96, s[96:97], 0x0
s_branch 1
s_mov_b32 s96, 1.0
s_cmp_eq_u64 s[98:99], 0
s_cbranch_scc1 3
s_load_dword s98, s[98:99], 0x0
s_branch 1
s_mov_b32 s98, 1.0
s_cmp_eq_u64 s[100:101], 0
s_cbranch_scc1 3
s_load_dword s100, s[100:101], 0x0
s_branch 1
s_mov_b32 s100, 1.0
v_mov_b32_e32 v243, 0x7f
v_mov_b32_e32 v250, 0xff800000
v_mov_b32_e32 v251, 0xc1000000
s_mov_b32 s82, 0xc2fe0000
s_lshl_b32 s66, s36, 7
v_add_u32_e32 v247, 0, v216
v_lshrrev_b32_e32 v255, 3, v247
v_bfe_u32 v227, v247, 1, 2
v_lshrrev_b32_e32 v244, 2, v255
v_xor_b32_e32 v227, v227, v244
v_and_b32_e32 v227, 3, v227
v_lshlrev_b32_e32 v227, 5, v227
v_bfe_u32 v244, v247, 0, 1
v_lshl_add_u32 v227, v244, 4, v227
v_mad_u32_u24 v227, v255, s36, v227
v_add_u32_e32 v247, 0x200, v216
v_lshrrev_b32_e32 v255, 3, v247
v_bfe_u32 v228, v247, 1, 2
v_lshrrev_b32_e32 v244, 2, v255
v_xor_b32_e32 v228, v228, v244
v_and_b32_e32 v228, 3, v228
v_lshlrev_b32_e32 v228, 5, v228
v_bfe_u32 v244, v247, 0, 1
v_lshl_add_u32 v228, v244, 4, v228
v_mad_u32_u24 v228, v255, s36, v228
v_add_u32_e32 v247, 0, v216
v_bfe_u32 v255, v247, 7, 2
v_lshlrev_b32_e32 v229, 5, v255
v_bfe_u32 v255, v247, 9, 1
v_lshl_add_u32 v229, v255, 2, v229
v_bfe_u32 v255, v247, 6, 1
v_lshl_add_u32 v229, v255, 4, v229
v_bfe_u32 v255, v247, 2, 1
v_lshl_add_u32 v229, v255, 3, v229
v_and_b32_e32 v255, 3, v247
v_add_u32_e32 v229, v229, v255
v_bfe_u32 v255, v247, 3, 3
v_lshlrev_b32_e32 v255, 4, v255
v_mad_u32_u24 v229, v229, s36, v255
v_add_u32_e32 v247, 0x200, v216
v_bfe_u32 v255, v247, 7, 2
v_lshlrev_b32_e32 v230, 5, v255
v_bfe_u32 v255, v247, 9, 1
v_lshl_add_u32 v230, v255, 2, v230
v_bfe_u32 v255, v247, 6, 1
v_lshl_add_u32 v230, v255, 4, v230
v_bfe_u32 v255, v247, 2, 1
v_lshl_add_u32 v230, v255, 3, v230
v_and_b32_e32 v255, 3, v247
v_add_u32_e32 v230, v230, v255
v_bfe_u32 v255, v247, 3, 3
v_lshlrev_b32_e32 v255, 4, v255
v_mad_u32_u24 v230, v230, s36, v255
v_add_u32_e32 v226, 0x10000, v254
s_lshl_b32 s83, s57, 10
s_add_u32 s84, s83, 0x10000
s_mov_b32 s90, 0x7050301
s_mov_b32 s60, 0
s_mov_b32 s91, 0
s_mov_b32 s46, 0
s_mov_b32 s73, 0
s_cmp_ge_u32 s56, s31
s_cbranch_scc1 8736
s_lshl_b32 s78, s56, 5
s_add_u32 s80, s26, s78
s_addc_u32 s81, s27, 0
s_load_dwordx8 s[48:55], s[80:81], 0x0
s_waitcnt lgkmcnt(0)
v_mul_f32_e32 v244, s98, v244
v_mul_f32_e32 v245, s28, v244
s_nop 3
v_readfirstlane_b32 s28, v245
v_mul_f32_e32 v245, s29, v244
s_nop 3
v_readfirstlane_b32 s29, v245
v_mul_f32_e32 v244, s43, v244
s_nop 3
v_readfirstlane_b32 s100, v244
s_sub_u32 s78, s32, 1
s_sub_u32 s78, s78, s48
s_cmp_eq_u32 s60, 0
s_cselect_b32 s61, s78, s48
s_and_b32 s78, s57, 3
s_cmp_eq_u32 s34, 0
s_cselect_b32 s59, s57, s78
s_mul_i32 s78, s61, s33
s_add_u32 s78, s78, s59
s_lshl_b32 s62, s78, 5
s_add_u32 s78, s61, 1
s_mul_i32 s78, s78, s33
s_lshl_b32 s78, s78, 5
s_add_u32 s78, s78, 0x7f
s_lshr_b32 s63, s78, 7
s_lshr_b32 s78, s41, 7
s_min_u32 s63, s63, s78
s_lshr_b32 s64, s62, 7
s_and_b32 s79, s58, s34
s_mul_i32 s80, s79, s38
s_add_u32 s4, s50, s80
s_addc_u32 s5, s51, 0
s_add_u32 s4, s4, s16
s_addc_u32 s5, s5, s17
s_mul_i32 s80, s79, s39
s_add_u32 s6, s54, s80
s_addc_u32 s7, s55, 0
s_add_u32 s6, s6, s22
s_addc_u32 s7, s7, s23
s_mul_i32 s80, s79, s40
s_add_u32 s80, s80, s49
s_lshl_b32 s80, s80, 2
s_cmp_eq_u64 s[24:25], 0
s_cselect_b32 s80, 0, s80
s_add_u32 s76, s24, s80
s_addc_u32 s77, s25, 0
s_add_u32 s8, s18, s52
s_addc_u32 s9, s19, s53
s_mul_i32 s10, s41, s36
s_mov_b32 s11, 0x110000
s_add_u32 s12, s20, s52
s_addc_u32 s13, s21, s53
s_mul_i32 s14, s41, s36
s_mov_b32 s15, 0x110000
v_and_b32_e32 v255, 31, v216
v_add_u32_e32 v255, s62, v255
v_mul_lo_u32 v255, v255, s35
v_bfe_u32 v244, v216, 5, 1
v_lshl_add_u32 v255, v244, 5, v255
global_load_dwordx4 v[144:147], v255, s[4:5]
global_load_dwordx4 v[148:151], v255, s[4:5] offset:16
global_load_dwordx4 v[152:155], v255, s[4:5] offset:64
global_load_dwordx4 v[156:159], v255, s[4:5] offset:80
s_mul_i32 s79, 0, s66
s_add_u32 m0, s83, 0
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_add_u32 m0, s83, 0x2000
s_nop 0
buffer_load_dwordx4 v228, s[8:11], s79 offen lds
s_mul_i32 s79, 0, s66
s_add_u32 m0, s84, 0
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_add_u32 m0, s84, 0x2000
s_nop 0
buffer_load_dwordx4 v230, s[12:15], s79 offen lds
s_cmpk_le_u32 s63, 0x1
s_cbranch_scc1 11
s_mul_i32 s79, 1, s66
s_add_u32 m0, s83, 0x4000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_add_u32 m0, s83, 0x6000
s_nop 0
buffer_load_dwordx4 v228, s[8:11], s79 offen lds
v_mov_b32_e32 v0, 0
v_mov_b32_e32 v1, 0
v_mov_b32_e32 v2, 0
v_mov_b32_e32 v3, 0
v_mov_b32_e32 v4, 0
v_mov_b32_e32 v5, 0
v_mov_b32_e32 v6, 0
v_mov_b32_e32 v7, 0
v_mov_b32_e32 v8, 0
v_mov_b32_e32 v9, 0
v_mov_b32_e32 v10, 0
v_mov_b32_e32 v11, 0
v_mov_b32_e32 v12, 0
v_mov_b32_e32 v13, 0
v_mov_b32_e32 v14, 0
v_mov_b32_e32 v15, 0
v_mov_b32_e32 v16, 0
v_mov_b32_e32 v17, 0
v_mov_b32_e32 v18, 0
v_mov_b32_e32 v19, 0
v_mov_b32_e32 v20, 0
v_mov_b32_e32 v21, 0
v_mov_b32_e32 v22, 0
v_mov_b32_e32 v23, 0
v_mov_b32_e32 v24, 0
v_mov_b32_e32 v25, 0
v_mov_b32_e32 v26, 0
v_mov_b32_e32 v27, 0
v_mov_b32_e32 v28, 0
v_mov_b32_e32 v29, 0
v_mov_b32_e32 v30, 0
v_mov_b32_e32 v31, 0
v_mov_b32_e32 v32, 0
v_mov_b32_e32 v33, 0
v_mov_b32_e32 v34, 0
v_mov_b32_e32 v35, 0
v_mov_b32_e32 v36, 0
v_mov_b32_e32 v37, 0
v_mov_b32_e32 v38, 0
v_mov_b32_e32 v39, 0
v_mov_b32_e32 v40, 0
v_mov_b32_e32 v41, 0
v_mov_b32_e32 v42, 0
v_mov_b32_e32 v43, 0
v_mov_b32_e32 v44, 0
v_mov_b32_e32 v45, 0
v_mov_b32_e32 v46, 0
v_mov_b32_e32 v47, 0
v_mov_b32_e32 v48, 0
v_mov_b32_e32 v49, 0
v_mov_b32_e32 v50, 0
v_mov_b32_e32 v51, 0
v_mov_b32_e32 v52, 0
v_mov_b32_e32 v53, 0
v_mov_b32_e32 v54, 0
v_mov_b32_e32 v55, 0
v_mov_b32_e32 v56, 0
v_mov_b32_e32 v57, 0
v_mov_b32_e32 v58, 0
v_mov_b32_e32 v59, 0
v_mov_b32_e32 v60, 0
v_mov_b32_e32 v61, 0
v_mov_b32_e32 v62, 0
v_mov_b32_e32 v63, 0
s_waitcnt vmcnt(0)
s_barrier
s_cmp_eq_u32 s58, 1
s_cbranch_scc0 1
s_barrier
s_branch 263
s_nop 15
s_nop 3
v_rcp_f32_e32 v255, v232
v_log_f32_e32 v223, v232
s_nop 1
v_mul_f32_e32 v255, s100, v255
v_mul_f32_e32 v0, v255, v0
v_mul_f32_e32 v1, v255, v1
v_mul_f32_e32 v2, v255, v2
v_mul_f32_e32 v3, v255, v3
v_mul_f32_e32 v4, v255, v4
v_mul_f32_e32 v5, v255, v5
v_mul_f32_e32 v6, v255, v6
v_mul_f32_e32 v7, v255, v7
v_mul_f32_e32 v8, v255, v8
v_mul_f32_e32 v9, v255, v9
v_mul_f32_e32 v10, v255, v10
v_mul_f32_e32 v11, v255, v11
v_mul_f32_e32 v12, v255, v12
v_mul_f32_e32 v13, v255, v13
v_mul_f32_e32 v14, v255, v14
v_mul_f32_e32 v15, v255, v15
v_mul_f32_e32 v16, v255, v16
v_mul_f32_e32 v17, v255, v17
v_mul_f32_e32 v18, v255, v18
v_mul_f32_e32 v19, v255, v19
v_mul_f32_e32 v20, v255, v20
v_mul_f32_e32 v21, v255, v21
v_mul_f32_e32 v22, v255, v22
v_mul_f32_e32 v23, v255, v23
v_mul_f32_e32 v24, v255, v24
v_mul_f32_e32 v25, v255, v25
v_mul_f32_e32 v26, v255, v26
v_mul_f32_e32 v27, v255, v27
v_mul_f32_e32 v28, v255, v28
v_mul_f32_e32 v29, v255, v29
v_mul_f32_e32 v30, v255, v30
v_mul_f32_e32 v31, v255, v31
v_mul_f32_e32 v32, v255, v32
v_mul_f32_e32 v33, v255, v33
v_mul_f32_e32 v34, v255, v34
v_mul_f32_e32 v35, v255, v35
v_mul_f32_e32 v36, v255, v36
v_mul_f32_e32 v37, v255, v37
v_mul_f32_e32 v38, v255, v38
v_mul_f32_e32 v39, v255, v39
v_mul_f32_e32 v40, v255, v40
v_mul_f32_e32 v41, v255, v41
v_mul_f32_e32 v42, v255, v42
v_mul_f32_e32 v43, v255, v43
v_mul_f32_e32 v44, v255, v44
v_mul_f32_e32 v45, v255, v45
v_mul_f32_e32 v46, v255, v46
v_mul_f32_e32 v47, v255, v47
v_mul_f32_e32 v48, v255, v48
v_mul_f32_e32 v49, v255, v49
v_mul_f32_e32 v50, v255, v50
v_mul_f32_e32 v51, v255, v51
v_mul_f32_e32 v52, v255, v52
v_mul_f32_e32 v53, v255, v53
v_mul_f32_e32 v54, v255, v54
v_mul_f32_e32 v55, v255, v55
v_mul_f32_e32 v56, v255, v56
v_mul_f32_e32 v57, v255, v57
v_mul_f32_e32 v58, v255, v58
v_mul_f32_e32 v59, v255, v59
v_mul_f32_e32 v60, v255, v60
v_mul_f32_e32 v61, v255, v61
v_mul_f32_e32 v62, v255, v62
v_mul_f32_e32 v63, v255, v63
v_cvt_pk_bf16_f32 v0, v0, v1
v_cvt_pk_bf16_f32 v1, v2, v3
v_cvt_pk_bf16_f32 v2, v4, v5
v_cvt_pk_bf16_f32 v3, v6, v7
v_cvt_pk_bf16_f32 v4, v8, v9
v_cvt_pk_bf16_f32 v5, v10, v11
v_cvt_pk_bf16_f32 v6, v12, v13
v_cvt_pk_bf16_f32 v7, v14, v15
v_cvt_pk_bf16_f32 v8, v16, v17
v_cvt_pk_bf16_f32 v9, v18, v19
v_cvt_pk_bf16_f32 v10, v20, v21
v_cvt_pk_bf16_f32 v11, v22, v23
v_cvt_pk_bf16_f32 v12, v24, v25
v_cvt_pk_bf16_f32 v13, v26, v27
v_cvt_pk_bf16_f32 v14, v28, v29
v_cvt_pk_bf16_f32 v15, v30, v31
v_cvt_pk_bf16_f32 v16, v32, v33
v_cvt_pk_bf16_f32 v17, v34, v35
v_cvt_pk_bf16_f32 v18, v36, v37
v_cvt_pk_bf16_f32 v19, v38, v39
v_cvt_pk_bf16_f32 v20, v40, v41
v_cvt_pk_bf16_f32 v21, v42, v43
v_cvt_pk_bf16_f32 v22, v44, v45
v_cvt_pk_bf16_f32 v23, v46, v47
v_cvt_pk_bf16_f32 v24, v48, v49
v_cvt_pk_bf16_f32 v25, v50, v51
v_cvt_pk_bf16_f32 v26, v52, v53
v_cvt_pk_bf16_f32 v27, v54, v55
v_cvt_pk_bf16_f32 v28, v56, v57
v_cvt_pk_bf16_f32 v29, v58, v59
v_cvt_pk_bf16_f32 v30, v60, v61
v_cvt_pk_bf16_f32 v31, v62, v63
v_permlane32_swap_b32_e32 v0, v2
v_permlane32_swap_b32_e32 v1, v3
v_permlane32_swap_b32_e32 v4, v6
v_permlane32_swap_b32_e32 v5, v7
v_permlane32_swap_b32_e32 v8, v10
v_permlane32_swap_b32_e32 v9, v11
v_permlane32_swap_b32_e32 v12, v14
v_permlane32_swap_b32_e32 v13, v15
v_permlane32_swap_b32_e32 v16, v18
v_permlane32_swap_b32_e32 v17, v19
v_permlane32_swap_b32_e32 v20, v22
v_permlane32_swap_b32_e32 v21, v23
v_permlane32_swap_b32_e32 v24, v26
v_permlane32_swap_b32_e32 v25, v27
v_permlane32_swap_b32_e32 v28, v30
v_permlane32_swap_b32_e32 v29, v31
v_add_f32_e32 v223, v231, v223
v_add_f32_e32 v223, -4.0, v223
v_add_f32_e32 v223, -2.0, v223
v_mul_f32_e32 v223, 0x3f317218, v223
s_and_b32 s78, s57, 3
s_lshl_b32 s78, s78, 13
s_add_u32 s78, s78, 0x20000
s_lshl_b32 s79, s37, 2
v_and_b32_e32 v244, 31, v216
v_lshlrev_b32_e32 v245, 8, v244
v_add_u32_e32 v245, s78, v245
v_bfe_u32 v246, v216, 5, 1
v_and_b32_e32 v247, 15, v244
v_xor_b32_e32 v246, v246, v247
v_lshl_or_b32 v245, v246, 4, v245
v_xor_b32_e32 v246, 0, v245
ds_write_b128 v246, v[0:3]
v_xor_b32_e32 v246, 32, v245
ds_write_b128 v246, v[4:7]
v_xor_b32_e32 v246, 64, v245
ds_write_b128 v246, v[8:11]
v_xor_b32_e32 v246, 0x60, v245
ds_write_b128 v246, v[12:15]
v_xor_b32_e32 v246, 0x80, v245
ds_write_b128 v246, v[16:19]
v_xor_b32_e32 v246, 0xa0, v245
ds_write_b128 v246, v[20:23]
v_xor_b32_e32 v246, 0xc0, v245
ds_write_b128 v246, v[24:27]
v_xor_b32_e32 v246, 0xe0, v245
ds_write_b128 v246, v[28:31]
v_bfe_u32 v244, v216, 4, 2
v_and_b32_e32 v247, 15, v216
v_xor_b32_e32 v247, v247, v244
v_lshlrev_b32_e32 v244, 8, v244
v_add_u32_e32 v244, s78, v244
v_lshl_or_b32 v244, v247, 4, v244
v_xor_b32_e32 v245, 64, v244
v_xor_b32_e32 v246, 0x80, v244
v_xor_b32_e32 v247, 0xc0, v244
ds_read_b128 v[32:35], v244
ds_read_b128 v[36:39], v245 offset:1024
ds_read_b128 v[40:43], v246 offset:2048
ds_read_b128 v[44:47], v247 offset:3072
ds_read_b128 v[48:51], v244 offset:4096
ds_read_b128 v[52:55], v245 offset:5120
ds_read_b128 v[56:59], v246 offset:6144
ds_read_b128 v[60:63], v247 offset:7168
v_add_u32_e32 v129, s79, v128
v_add_u32_e32 v130, s79, v129
v_add_u32_e32 v131, s79, v130
v_add_u32_e32 v132, s79, v131
v_add_u32_e32 v133, s79, v132
v_add_u32_e32 v134, s79, v133
v_add_u32_e32 v135, s79, v134
s_waitcnt lgkmcnt(7)
global_store_dwordx4 v128, v[32:35], s[92:93]
s_waitcnt lgkmcnt(6)
global_store_dwordx4 v129, v[36:39], s[92:93]
s_waitcnt lgkmcnt(5)
global_store_dwordx4 v130, v[40:43], s[92:93]
s_waitcnt lgkmcnt(4)
global_store_dwordx4 v131, v[44:47], s[92:93]
s_waitcnt lgkmcnt(3)
global_store_dwordx4 v132, v[48:51], s[92:93]
s_waitcnt lgkmcnt(2)
global_store_dwordx4 v133, v[52:55], s[92:93]
s_waitcnt lgkmcnt(1)
global_store_dwordx4 v134, v[56:59], s[92:93]
s_waitcnt lgkmcnt(0)
global_store_dwordx4 v135, v[60:63], s[92:93]
s_cmp_eq_u64 s[94:95], 0
s_cbranch_scc1 2
global_store_dword v222, v223, s[94:95]
s_waitcnt vmcnt(8)
s_mov_b32 s65, -1
s_lshl_b32 s78, s91, 14
v_add_u32_e32 v217, s78, v224
v_add_u32_e32 v218, s78, v225
s_sub_u32 s78, s63, 1
s_mul_i32 s85, s78, s66
s_lshl_b32 s71, s66, 2
s_lshl_b32 s72, s66, 1
ds_read_b128 v[168:171], v217
ds_read_b128 v[172:175], v217 offset:16
ds_read_b128 v[176:179], v217 offset:4096
ds_read_b128 v[180:183], v217 offset:4112
s_cmp_eq_u32 s64, 0
s_cbranch_scc1 147
s_setprio 1
s_waitcnt lgkmcnt(0)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[168:175], v[144:151], 0
ds_read_b128 v[184:187], v217 offset:8192
ds_read_b128 v[188:191], v217 offset:8208
ds_read_b128 v[192:195], v217 offset:12288
ds_read_b128 v[196:199], v217 offset:12304
ds_read_b128 v[200:203], v218
ds_read_b128 v[204:207], v218 offset:16
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[176:183], v[144:151], 0
ds_read_b128 v[168:171], v218 offset:4096
ds_read_b128 v[172:175], v218 offset:4112
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[184:191], v[144:151], 0
ds_read_b128 v[176:179], v218 offset:8192
ds_read_b128 v[180:183], v218 offset:8208
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[192:199], v[144:151], 0
ds_read_b128 v[184:187], v218 offset:12288
ds_read_b128 v[188:191], v218 offset:12304
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[200:207], v[152:159], v[64:79]
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[168:175], v[152:159], v[80:95]
s_nop 3
v_max_f32_e32 v244, v64, v65
v_max3_f32 v244, v66, v67, v244
v_max3_f32 v244, v68, v69, v244
v_max3_f32 v244, v70, v71, v244
v_max3_f32 v244, v72, v73, v244
v_max3_f32 v244, v74, v75, v244
v_max3_f32 v244, v76, v77, v244
v_max3_f32 v244, v78, v79, v244
s_waitcnt lgkmcnt(0)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[176:183], v[152:159], v[96:111]
s_nop 3
v_max_f32_e32 v245, v80, v81
v_max3_f32 v245, v82, v83, v245
v_max3_f32 v245, v84, v85, v245
v_max3_f32 v245, v86, v87, v245
v_max3_f32 v245, v88, v89, v245
v_max3_f32 v245, v90, v91, v245
v_max3_f32 v245, v92, v93, v245
v_max3_f32 v245, v94, v95, v245
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[184:191], v[152:159], v[112:127]
s_nop 3
v_max_f32_e32 v246, v96, v97
v_max3_f32 v246, v98, v99, v246
v_max3_f32 v246, v100, v101, v246
v_max3_f32 v246, v102, v103, v246
v_max3_f32 v246, v104, v105, v246
v_max3_f32 v246, v106, v107, v246
v_max3_f32 v246, v108, v109, v246
v_max3_f32 v246, v110, v111, v246
s_nop 7
v_max_f32_e32 v247, v112, v113
v_max3_f32 v247, v114, v115, v247
v_max3_f32 v247, v116, v117, v247
v_max3_f32 v247, v118, v119, v247
v_max3_f32 v247, v120, v121, v247
v_max3_f32 v247, v122, v123, v247
v_max3_f32 v247, v124, v125, v247
v_max3_f32 v247, v126, v127, v247
v_max_f32_e32 v244, v244, v245
v_max_f32_e32 v246, v246, v247
s_nop 1
v_permlane32_swap_b32_e32 v244, v245
v_permlane32_swap_b32_e32 v246, v247
v_max_f32_e32 v244, v244, v245
v_max_f32_e32 v246, v246, v247
v_max_f32_e32 v245, v244, v246
v_mul_f32_e32 v245, s29, v245
v_fma_f32 v244, v244, s29, -v220
v_floor_f32_e32 v244, v244
v_med3_f32 v244, v244, s82, 0
v_cvt_i32_f32_e32 v233, v244
v_add_u32_e32 v233, 0x7f, v233
v_lshlrev_b32_e32 v237, 23, v233
v_fma_f32 v246, v246, s29, -v220
v_floor_f32_e32 v246, v246
v_med3_f32 v246, v246, s82, 0
v_cvt_i32_f32_e32 v234, v246
v_add_u32_e32 v234, 0x7f, v234
v_lshlrev_b32_e32 v238, 23, v234
v_fma_f32 v245, v220, v251, s30
v_fma_f32 v241, v244, v251, v245
v_fma_f32 v242, v246, v251, v245
s_branch 479
s_setprio 1
s_waitcnt lgkmcnt(0)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[168:175], v[144:151], 0
ds_read_b128 v[184:187], v217 offset:8192
ds_read_b128 v[188:191], v217 offset:8208
ds_read_b128 v[192:195], v217 offset:12288
ds_read_b128 v[196:199], v217 offset:12304
ds_read_b128 v[200:203], v218
ds_read_b128 v[204:207], v218 offset:16
s_add_u32 s81, s65, 1
s_lshl_b32 s81, s81, 7
s_sub_u32 s81, s62, s81
v_and_b32_e32 v255, 31, v216
v_add_u32_e32 v249, s81, v255
v_bfe_u32 v255, v216, 5, 1
v_lshlrev_b32_e32 v255, 2, v255
v_sub_u32_e32 v249, v249, v255
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[176:183], v[144:151], 0
ds_read_b128 v[168:171], v218 offset:4096
ds_read_b128 v[172:175], v218 offset:4112
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[184:191], v[144:151], 0
ds_read_b128 v[176:179], v218 offset:8192
ds_read_b128 v[180:183], v218 offset:8208
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[192:199], v[144:151], 0
ds_read_b128 v[184:187], v218 offset:12288
ds_read_b128 v[188:191], v218 offset:12304
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[200:207], v[152:159], v[64:79]
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[168:175], v[152:159], v[80:95]
s_sub_i32 s80, s81, 0
s_cmp_ge_i32 s80, 32
s_cbranch_scc1 69
s_cmp_lt_i32 s80, 0
s_cbranch_scc1 49
v_cmp_gt_i32_e32 vcc, 0, v249
v_cndmask_b32_e64 v64, v64, v250, vcc
v_cmp_gt_i32_e32 vcc, 1, v249
v_cndmask_b32_e64 v65, v65, v250, vcc
v_cmp_gt_i32_e32 vcc, 2, v249
v_cndmask_b32_e64 v66, v66, v250, vcc
v_cmp_gt_i32_e32 vcc, 3, v249
v_cndmask_b32_e64 v67, v67, v250, vcc
v_cmp_gt_i32_e32 vcc, 8, v249
v_cndmask_b32_e64 v68, v68, v250, vcc
v_cmp_gt_i32_e32 vcc, 9, v249
v_cndmask_b32_e64 v69, v69, v250, vcc
v_cmp_gt_i32_e32 vcc, 10, v249
v_cndmask_b32_e64 v70, v70, v250, vcc
v_cmp_gt_i32_e32 vcc, 11, v249
v_cndmask_b32_e64 v71, v71, v250, vcc
v_cmp_gt_i32_e32 vcc, 16, v249
v_cndmask_b32_e64 v72, v72, v250, vcc
v_cmp_gt_i32_e32 vcc, 17, v249
v_cndmask_b32_e64 v73, v73, v250, vcc
v_cmp_gt_i32_e32 vcc, 18, v249
v_cndmask_b32_e64 v74, v74, v250, vcc
v_cmp_gt_i32_e32 vcc, 19, v249
v_cndmask_b32_e64 v75, v75, v250, vcc
v_cmp_gt_i32_e32 vcc, 24, v249
v_cndmask_b32_e64 v76, v76, v250, vcc
v_cmp_gt_i32_e32 vcc, 25, v249
v_cndmask_b32_e64 v77, v77, v250, vcc
v_cmp_gt_i32_e32 vcc, 26, v249
v_cndmask_b32_e64 v78, v78, v250, vcc
v_cmp_gt_i32_e32 vcc, 27, v249
v_cndmask_b32_e64 v79, v79, v250, vcc
s_branch 18
s_nop 15
s_nop 3
s_nop 1
v_max_f32_e32 v244, v64, v65
v_max3_f32 v244, v66, v67, v244
v_max3_f32 v244, v68, v69, v244
v_max3_f32 v244, v70, v71, v244
v_max3_f32 v244, v72, v73, v244
v_max3_f32 v244, v74, v75, v244
v_max3_f32 v244, v76, v77, v244
v_max3_f32 v244, v78, v79, v244
s_waitcnt lgkmcnt(0)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[176:183], v[152:159], v[96:111]
s_sub_i32 s80, s81, 32
s_cmp_ge_i32 s80, 32
s_cbranch_scc1 69
s_cmp_lt_i32 s80, 0
s_cbranch_scc1 49
v_cmp_gt_i32_e32 vcc, 32, v249
v_cndmask_b32_e64 v80, v80, v250, vcc
v_cmp_gt_i32_e32 vcc, 33, v249
v_cndmask_b32_e64 v81, v81, v250, vcc
v_cmp_gt_i32_e32 vcc, 34, v249
v_cndmask_b32_e64 v82, v82, v250, vcc
v_cmp_gt_i32_e32 vcc, 35, v249
v_cndmask_b32_e64 v83, v83, v250, vcc
v_cmp_gt_i32_e32 vcc, 40, v249
v_cndmask_b32_e64 v84, v84, v250, vcc
v_cmp_gt_i32_e32 vcc, 41, v249
v_cndmask_b32_e64 v85, v85, v250, vcc
v_cmp_gt_i32_e32 vcc, 42, v249
v_cndmask_b32_e64 v86, v86, v250, vcc
v_cmp_gt_i32_e32 vcc, 43, v249
v_cndmask_b32_e64 v87, v87, v250, vcc
v_cmp_gt_i32_e32 vcc, 48, v249
v_cndmask_b32_e64 v88, v88, v250, vcc
v_cmp_gt_i32_e32 vcc, 49, v249
v_cndmask_b32_e64 v89, v89, v250, vcc
v_cmp_gt_i32_e32 vcc, 50, v249
v_cndmask_b32_e64 v90, v90, v250, vcc
v_cmp_gt_i32_e32 vcc, 51, v249
v_cndmask_b32_e64 v91, v91, v250, vcc
v_cmp_gt_i32_e32 vcc, 56, v249
v_cndmask_b32_e64 v92, v92, v250, vcc
v_cmp_gt_i32_e32 vcc, 57, v249
v_cndmask_b32_e64 v93, v93, v250, vcc
v_cmp_gt_i32_e32 vcc, 58, v249
v_cndmask_b32_e64 v94, v94, v250, vcc
v_cmp_gt_i32_e32 vcc, 59, v249
v_cndmask_b32_e64 v95, v95, v250, vcc
s_branch 18
s_nop 15
s_nop 3
s_nop 1
v_max_f32_e32 v245, v80, v81
v_max3_f32 v245, v82, v83, v245
v_max3_f32 v245, v84, v85, v245
v_max3_f32 v245, v86, v87, v245
v_max3_f32 v245, v88, v89, v245
v_max3_f32 v245, v90, v91, v245
v_max3_f32 v245, v92, v93, v245
v_max3_f32 v245, v94, v95, v245
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[184:191], v[152:159], v[112:127]
s_sub_i32 s80, s81, 64
s_cmp_ge_i32 s80, 32
s_cbranch_scc1 84
s_cmp_lt_i32 s80, 0
s_cbranch_scc1 64
v_cmp_gt_i32_e32 vcc, 64, v249
v_cndmask_b32_e64 v96, v96, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x41, v249
v_cndmask_b32_e64 v97, v97, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x42, v249
v_cndmask_b32_e64 v98, v98, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x43, v249
v_cndmask_b32_e64 v99, v99, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x48, v249
v_cndmask_b32_e64 v100, v100, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x49, v249
v_cndmask_b32_e64 v101, v101, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x4a, v249
v_cndmask_b32_e64 v102, v102, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x4b, v249
v_cndmask_b32_e64 v103, v103, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x50, v249
v_cndmask_b32_e64 v104, v104, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x51, v249
v_cndmask_b32_e64 v105, v105, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x52, v249
v_cndmask_b32_e64 v106, v106, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x53, v249
v_cndmask_b32_e64 v107, v107, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x58, v249
v_cndmask_b32_e64 v108, v108, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x59, v249
v_cndmask_b32_e64 v109, v109, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x5a, v249
v_cndmask_b32_e64 v110, v110, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x5b, v249
v_cndmask_b32_e64 v111, v111, v250, vcc
s_branch 18
s_nop 15
s_nop 3
s_nop 1
v_max_f32_e32 v246, v96, v97
v_max3_f32 v246, v98, v99, v246
v_max3_f32 v246, v100, v101, v246
v_max3_f32 v246, v102, v103, v246
v_max3_f32 v246, v104, v105, v246
v_max3_f32 v246, v106, v107, v246
v_max3_f32 v246, v108, v109, v246
v_max3_f32 v246, v110, v111, v246
s_sub_i32 s80, s81, 0x60
s_cmp_ge_i32 s80, 32
s_cbranch_scc1 87
s_cmp_lt_i32 s80, 0
s_cbranch_scc1 66
v_cmp_gt_i32_e32 vcc, 0x60, v249
s_nop 0
v_cndmask_b32_e64 v112, v112, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x61, v249
v_cndmask_b32_e64 v113, v113, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x62, v249
v_cndmask_b32_e64 v114, v114, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x63, v249
v_cndmask_b32_e64 v115, v115, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x68, v249
v_cndmask_b32_e64 v116, v116, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x69, v249
v_cndmask_b32_e64 v117, v117, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x6a, v249
v_cndmask_b32_e64 v118, v118, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x6b, v249
v_cndmask_b32_e64 v119, v119, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x70, v249
v_cndmask_b32_e64 v120, v120, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x71, v249
v_cndmask_b32_e64 v121, v121, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x72, v249
v_cndmask_b32_e64 v122, v122, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x73, v249
v_cndmask_b32_e64 v123, v123, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x78, v249
v_cndmask_b32_e64 v124, v124, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x79, v249
v_cndmask_b32_e64 v125, v125, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x7a, v249
v_cndmask_b32_e64 v126, v126, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x7b, v249
v_cndmask_b32_e64 v127, v127, v250, vcc
s_branch 21
s_nop 15
s_nop 3
s_branch 2
s_nop 15
s_nop 3
s_nop 1
v_max_f32_e32 v247, v112, v113
v_max3_f32 v247, v114, v115, v247
v_max3_f32 v247, v116, v117, v247
v_max3_f32 v247, v118, v119, v247
v_max3_f32 v247, v120, v121, v247
v_max3_f32 v247, v122, v123, v247
v_max3_f32 v247, v124, v125, v247
v_max3_f32 v247, v126, v127, v247
v_max_f32_e32 v244, v244, v245
v_max_f32_e32 v246, v246, v247
s_nop 1
v_permlane32_swap_b32_e32 v244, v245
v_permlane32_swap_b32_e32 v246, v247
v_max_f32_e32 v244, v244, v245
v_max_f32_e32 v246, v246, v247
v_max_f32_e32 v245, v244, v246
v_mul_f32_e32 v245, s29, v245
v_fma_f32 v244, v244, s29, -v220
v_floor_f32_e32 v244, v244
v_med3_f32 v244, v244, s82, 0
v_cvt_i32_f32_e32 v233, v244
v_add_u32_e32 v233, 0x7f, v233
v_lshlrev_b32_e32 v237, 23, v233
v_fma_f32 v246, v246, s29, -v220
v_floor_f32_e32 v246, v246
v_med3_f32 v246, v246, s82, 0
v_cvt_i32_f32_e32 v234, v246
v_add_u32_e32 v234, 0x7f, v234
v_lshlrev_b32_e32 v238, 23, v234
v_fma_f32 v245, v220, v251, s30
v_fma_f32 v241, v244, v251, v245
v_fma_f32 v242, v246, v251, v245
s_bitcmp1_b32 s91, 0
s_cbranch_scc0 4
s_waitcnt vmcnt(0)
v_mov_b32_e32 v0, 0
v_mov_b32_e32 v1, 0
v_mov_b32_e32 v2, 0
v_mov_b32_e32 v3, 0
v_mov_b32_e32 v4, 0
v_mov_b32_e32 v5, 0
v_mov_b32_e32 v6, 0
v_mov_b32_e32 v7, 0
v_mov_b32_e32 v8, 0
v_mov_b32_e32 v9, 0
v_mov_b32_e32 v10, 0
v_mov_b32_e32 v11, 0
v_mov_b32_e32 v12, 0
v_mov_b32_e32 v13, 0
v_mov_b32_e32 v14, 0
v_mov_b32_e32 v15, 0
v_mov_b32_e32 v16, 0
v_mov_b32_e32 v17, 0
v_mov_b32_e32 v18, 0
v_mov_b32_e32 v19, 0
v_mov_b32_e32 v20, 0
v_mov_b32_e32 v21, 0
v_mov_b32_e32 v22, 0
v_mov_b32_e32 v23, 0
v_mov_b32_e32 v24, 0
v_mov_b32_e32 v25, 0
v_mov_b32_e32 v26, 0
v_mov_b32_e32 v27, 0
v_mov_b32_e32 v28, 0
v_mov_b32_e32 v29, 0
v_mov_b32_e32 v30, 0
v_mov_b32_e32 v31, 0
v_mov_b32_e32 v32, 0
v_mov_b32_e32 v33, 0
v_mov_b32_e32 v34, 0
v_mov_b32_e32 v35, 0
v_mov_b32_e32 v36, 0
v_mov_b32_e32 v37, 0
v_mov_b32_e32 v38, 0
v_mov_b32_e32 v39, 0
v_mov_b32_e32 v40, 0
v_mov_b32_e32 v41, 0
v_mov_b32_e32 v42, 0
v_mov_b32_e32 v43, 0
v_mov_b32_e32 v44, 0
v_mov_b32_e32 v45, 0
v_mov_b32_e32 v46, 0
v_mov_b32_e32 v47, 0
v_mov_b32_e32 v48, 0
v_mov_b32_e32 v49, 0
v_mov_b32_e32 v50, 0
v_mov_b32_e32 v51, 0
v_mov_b32_e32 v52, 0
v_mov_b32_e32 v53, 0
v_mov_b32_e32 v54, 0
v_mov_b32_e32 v55, 0
v_mov_b32_e32 v56, 0
v_mov_b32_e32 v57, 0
v_mov_b32_e32 v58, 0
v_mov_b32_e32 v59, 0
v_mov_b32_e32 v60, 0
v_mov_b32_e32 v61, 0
v_mov_b32_e32 v62, 0
v_mov_b32_e32 v63, 0
v_mov_b32_e32 v232, 0
s_mov_b32 s73, 0
s_cmp_eq_u32 s58, 0
s_cbranch_scc0 159
s_cmpk_le_u32 s63, 0x1
s_cbranch_scc1 157
s_mul_i32 s79, 0, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_mul_i32 s79, 64, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_mul_i32 s79, 4, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_mul_i32 s79, 0x44, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_cmpk_le_u32 s63, 0x2
s_cbranch_scc1 104
s_mul_i32 s79, 0, s36
s_mul_i32 s78, 2, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 2
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s36
s_mul_i32 s78, 2, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 2
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 64, s36
s_mul_i32 s78, 2, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 2
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 0x60, s36
s_mul_i32 s78, 2, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 2
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_cmpk_le_u32 s63, 0x3
s_cbranch_scc1 51
s_mul_i32 s79, 0, s36
s_mul_i32 s78, 3, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 3
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s36
s_mul_i32 s78, 3, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 3
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 64, s36
s_mul_i32 s78, 3, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 3
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 0x60, s36
s_mul_i32 s78, 3, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 3
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_barrier
s_mov_b32 s65, 0
s_cmp_eq_u32 s91, 0
s_cbranch_scc1 5
s_cmp_eq_u32 s91, 1
s_cbranch_scc1 627
s_cmp_eq_u32 s91, 2
s_cbranch_scc1 1250
s_branch 1873
s_add_u32 s78, s65, 1
s_cmp_ge_u32 s78, s64
s_cbranch_scc1 2496
s_setprio 0
v_fma_f32 v64, v64, s28, v241
v_fma_f32 v65, v65, s28, v241
v_fma_f32 v66, v66, s28, v241
v_fma_f32 v67, v67, s28, v241
v_fma_f32 v68, v68, s28, v241
v_fma_f32 v69, v69, s28, v241
v_fma_f32 v70, v70, s28, v241
v_fma_f32 v71, v71, s28, v241
v_fma_f32 v72, v72, s28, v241
v_fma_f32 v73, v73, s28, v241
v_fma_f32 v74, v74, s28, v241
v_fma_f32 v75, v75, s28, v241
v_fma_f32 v76, v76, s28, v241
v_fma_f32 v77, v77, s28, v241
v_fma_f32 v78, v78, s28, v241
v_fma_f32 v79, v79, s28, v241
v_fma_f32 v80, v80, s28, v241
v_cvt_pk_u8_f32 v128, v64, 0, 0
v_fma_f32 v81, v81, s28, v241
v_cvt_pk_u8_f32 v129, v68, 0, 0
v_fma_f32 v82, v82, s28, v241
v_cvt_pk_u8_f32 v130, v72, 0, 0
v_fma_f32 v83, v83, s28, v241
v_cvt_pk_u8_f32 v131, v76, 0, 0
v_fma_f32 v84, v84, s28, v241
v_cvt_pk_u8_f32 v128, v65, 1, v128
v_fma_f32 v85, v85, s28, v241
v_cvt_pk_u8_f32 v129, v69, 1, v129
v_fma_f32 v86, v86, s28, v241
v_cvt_pk_u8_f32 v130, v73, 1, v130
v_fma_f32 v87, v87, s28, v241
v_cvt_pk_u8_f32 v131, v77, 1, v131
v_fma_f32 v88, v88, s28, v241
v_cvt_pk_u8_f32 v128, v66, 2, v128
v_fma_f32 v89, v89, s28, v241
v_cvt_pk_u8_f32 v129, v70, 2, v129
v_fma_f32 v90, v90, s28, v241
v_cvt_pk_u8_f32 v130, v74, 2, v130
v_fma_f32 v91, v91, s28, v241
v_cvt_pk_u8_f32 v131, v78, 2, v131
v_fma_f32 v92, v92, s28, v241
v_cvt_pk_u8_f32 v128, v67, 3, v128
v_fma_f32 v93, v93, s28, v241
v_cvt_pk_u8_f32 v129, v71, 3, v129
v_fma_f32 v94, v94, s28, v241
v_cvt_pk_u8_f32 v130, v75, 3, v130
v_fma_f32 v95, v95, s28, v241
v_cvt_pk_u8_f32 v131, v79, 3, v131
v_fma_f32 v96, v96, s28, v242
v_cvt_pk_u8_f32 v132, v80, 0, 0
v_fma_f32 v97, v97, s28, v242
v_cvt_pk_u8_f32 v133, v84, 0, 0
v_fma_f32 v98, v98, s28, v242
v_cvt_pk_u8_f32 v134, v88, 0, 0
v_fma_f32 v99, v99, s28, v242
v_cvt_pk_u8_f32 v135, v92, 0, 0
v_fma_f32 v100, v100, s28, v242
v_cvt_pk_u8_f32 v132, v81, 1, v132
v_fma_f32 v101, v101, s28, v242
v_cvt_pk_u8_f32 v133, v85, 1, v133
v_fma_f32 v102, v102, s28, v242
v_cvt_pk_u8_f32 v134, v89, 1, v134
v_fma_f32 v103, v103, s28, v242
v_cvt_pk_u8_f32 v135, v93, 1, v135
v_fma_f32 v104, v104, s28, v242
v_cvt_pk_u8_f32 v132, v82, 2, v132
v_fma_f32 v105, v105, s28, v242
v_cvt_pk_u8_f32 v133, v86, 2, v133
v_fma_f32 v106, v106, s28, v242
v_cvt_pk_u8_f32 v134, v90, 2, v134
v_fma_f32 v107, v107, s28, v242
v_cvt_pk_u8_f32 v135, v94, 2, v135
v_fma_f32 v108, v108, s28, v242
v_cvt_pk_u8_f32 v132, v83, 3, v132
v_fma_f32 v109, v109, s28, v242
v_cvt_pk_u8_f32 v133, v87, 3, v133
v_fma_f32 v110, v110, s28, v242
v_cvt_pk_u8_f32 v134, v91, 3, v134
v_fma_f32 v111, v111, s28, v242
v_cvt_pk_u8_f32 v135, v95, 3, v135
v_fma_f32 v112, v112, s28, v242
v_cvt_pk_u8_f32 v136, v96, 0, 0
v_fma_f32 v113, v113, s28, v242
v_cvt_pk_u8_f32 v137, v100, 0, 0
v_fma_f32 v114, v114, s28, v242
v_cvt_pk_u8_f32 v138, v104, 0, 0
v_fma_f32 v115, v115, s28, v242
v_cvt_pk_u8_f32 v139, v108, 0, 0
v_fma_f32 v116, v116, s28, v242
v_cvt_pk_u8_f32 v136, v97, 1, v136
v_fma_f32 v117, v117, s28, v242
v_cvt_pk_u8_f32 v137, v101, 1, v137
v_fma_f32 v118, v118, s28, v242
v_cvt_pk_u8_f32 v138, v105, 1, v138
v_fma_f32 v119, v119, s28, v242
v_cvt_pk_u8_f32 v139, v109, 1, v139
v_fma_f32 v120, v120, s28, v242
v_cvt_pk_u8_f32 v136, v98, 2, v136
v_fma_f32 v121, v121, s28, v242
v_cvt_pk_u8_f32 v137, v102, 2, v137
v_fma_f32 v122, v122, s28, v242
v_cvt_pk_u8_f32 v138, v106, 2, v138
v_fma_f32 v123, v123, s28, v242
v_cvt_pk_u8_f32 v139, v110, 2, v139
v_fma_f32 v124, v124, s28, v242
v_cvt_pk_u8_f32 v136, v99, 3, v136
v_fma_f32 v125, v125, s28, v242
v_cvt_pk_u8_f32 v137, v103, 3, v137
v_fma_f32 v126, v126, s28, v242
v_cvt_pk_u8_f32 v138, v107, 3, v138
v_fma_f32 v127, v127, s28, v242
v_cvt_pk_u8_f32 v139, v111, 3, v139
v_cvt_pk_u8_f32 v140, v112, 0, 0
v_cvt_pk_u8_f32 v141, v116, 0, 0
v_cvt_pk_u8_f32 v142, v120, 0, 0
v_cvt_pk_u8_f32 v143, v124, 0, 0
v_cvt_pk_u8_f32 v140, v113, 1, v140
v_cvt_pk_u8_f32 v141, v117, 1, v141
v_cvt_pk_u8_f32 v142, v121, 1, v142
v_cvt_pk_u8_f32 v143, v125, 1, v143
v_cvt_pk_u8_f32 v140, v114, 2, v140
v_cvt_pk_u8_f32 v141, v118, 2, v141
v_cvt_pk_u8_f32 v142, v122, 2, v142
v_cvt_pk_u8_f32 v143, v126, 2, v143
v_cvt_pk_u8_f32 v140, v115, 3, v140
v_cvt_pk_u8_f32 v141, v119, 3, v141
v_cvt_pk_u8_f32 v142, v123, 3, v142
v_cvt_pk_u8_f32 v143, v127, 3, v143
ds_read_b128 v[168:171], v224 offset:16384
ds_read_b128 v[172:175], v224 offset:16400
ds_read_b128 v[176:179], v224 offset:20480
ds_read_b128 v[180:183], v224 offset:20496
s_barrier
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[208:211], v[160:167], v[128:135], 0
v_mfma_f32_16x16x128_f8f6f4 v[212:215], v[160:167], v[136:143], 0
ds_read_b128 v[184:187], v224 offset:24576
ds_read_b128 v[188:191], v224 offset:24592
ds_read_b128 v[192:195], v224 offset:28672
ds_read_b128 v[196:199], v224 offset:28688
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[168:175], v[144:151], 0
ds_read_b128 v[200:203], v225 offset:16384
ds_read_b128 v[204:207], v225 offset:16400
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[176:183], v[144:151], 0
ds_read_b128 v[168:171], v225 offset:20480
ds_read_b128 v[172:175], v225 offset:20496
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[184:191], v[144:151], 0
ds_read_b128 v[176:179], v225 offset:24576
ds_read_b128 v[180:183], v225 offset:24592
s_min_u32 s78, s71, s85
s_add_u32 m0, s83, 0
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s78 offen lds
v_mul_f32_e32 v255, v208, v237
v_add_f32_e32 v232, v232, v255
v_mul_f32_e32 v255, v212, v238
v_add_f32_e32 v232, v232, v255
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[192:199], v[144:151], 0
ds_read_b128 v[184:187], v225 offset:28672
ds_read_b128 v[188:191], v225 offset:28688
s_add_u32 m0, s83, 0x2000
s_nop 0
buffer_load_dwordx4 v228, s[8:11], s78 offen lds
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[200:207], v[152:159], v[64:79]
ds_read_b64_tr_b8 v[192:193], v226
ds_read_b64_tr_b8 v[194:195], v226 offset:1024
ds_read_b64_tr_b8 v[196:197], v226 offset:2048
ds_read_b64_tr_b8 v[198:199], v226 offset:3072
s_min_u32 s79, s72, s85
s_add_u32 m0, s84, 0x8000
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[168:175], v[152:159], v[80:95]
ds_read_b64_tr_b8 v[200:201], v226 offset:256
ds_read_b64_tr_b8 v[202:203], v226 offset:1280
ds_read_b64_tr_b8 v[204:205], v226 offset:2304
ds_read_b64_tr_b8 v[206:207], v226 offset:3328
s_add_u32 m0, s84, 0xa000
s_nop 0
buffer_load_dwordx4 v230, s[12:15], s79 offen lds
s_add_u32 s71, s71, s66
s_add_u32 s72, s72, s66
v_max_f32_e32 v244, v64, v65
v_max3_f32 v244, v66, v67, v244
v_max3_f32 v244, v68, v69, v244
v_max3_f32 v244, v70, v71, v244
v_max3_f32 v244, v72, v73, v244
v_max3_f32 v244, v74, v75, v244
v_max3_f32 v244, v76, v77, v244
v_max3_f32 v244, v78, v79, v244
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[176:183], v[152:159], v[96:111]
ds_read_b64_tr_b8 v[168:169], v226 offset:512
ds_read_b64_tr_b8 v[170:171], v226 offset:1536
ds_read_b64_tr_b8 v[172:173], v226 offset:2560
ds_read_b64_tr_b8 v[174:175], v226 offset:3584
v_max_f32_e32 v245, v80, v81
v_max3_f32 v245, v82, v83, v245
v_max3_f32 v245, v84, v85, v245
v_max3_f32 v245, v86, v87, v245
v_max3_f32 v245, v88, v89, v245
v_max3_f32 v245, v90, v91, v245
v_max3_f32 v245, v92, v93, v245
v_max3_f32 v245, v94, v95, v245
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[184:191], v[152:159], v[112:127]
s_nop 3
v_max_f32_e32 v246, v96, v97
v_max3_f32 v246, v98, v99, v246
v_max3_f32 v246, v100, v101, v246
v_max3_f32 v246, v102, v103, v246
v_max3_f32 v246, v104, v105, v246
v_max3_f32 v246, v106, v107, v246
v_max3_f32 v246, v108, v109, v246
v_max3_f32 v246, v110, v111, v246
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[192:199], v[128:135], v[0:15], v243, v233 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[176:177], v226 offset:768
ds_read_b64_tr_b8 v[178:179], v226 offset:1792
ds_read_b64_tr_b8 v[180:181], v226 offset:2816
ds_read_b64_tr_b8 v[182:183], v226 offset:3840
ds_read_b64_tr_b8 v[184:185], v226 offset:4096
ds_read_b64_tr_b8 v[186:187], v226 offset:5120
ds_read_b64_tr_b8 v[188:189], v226 offset:6144
ds_read_b64_tr_b8 v[190:191], v226 offset:7168
v_max_f32_e32 v247, v112, v113
v_max3_f32 v247, v114, v115, v247
v_max3_f32 v247, v116, v117, v247
v_max3_f32 v247, v118, v119, v247
v_max3_f32 v247, v120, v121, v247
v_max3_f32 v247, v122, v123, v247
v_max3_f32 v247, v124, v125, v247
v_max3_f32 v247, v126, v127, v247
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[200:207], v[128:135], v[16:31], v243, v233 op_sel_hi:[0,0,0]
v_max_f32_e32 v244, v244, v245
v_max_f32_e32 v246, v246, v247
s_nop 1
v_permlane32_swap_b32_e32 v244, v245
v_permlane32_swap_b32_e32 v246, v247
v_max_f32_e32 v244, v244, v245
v_max_f32_e32 v246, v246, v247
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[168:175], v[128:135], v[32:47], v243, v233 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[192:193], v226 offset:4352
ds_read_b64_tr_b8 v[194:195], v226 offset:5376
ds_read_b64_tr_b8 v[196:197], v226 offset:6400
ds_read_b64_tr_b8 v[198:199], v226 offset:7424
ds_read_b64_tr_b8 v[200:201], v226 offset:4608
ds_read_b64_tr_b8 v[202:203], v226 offset:5632
ds_read_b64_tr_b8 v[204:205], v226 offset:6656
ds_read_b64_tr_b8 v[206:207], v226 offset:7680
v_max_f32_e32 v245, v244, v246
v_mul_f32_e32 v245, s29, v245
v_max_f32_e32 v247, v231, v245
v_sub_f32_e32 v245, v247, v231
v_cmp_lt_f32_e32 vcc, 0x3e000000, v245
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[74:75], -1, 0
s_cselect_b32 s73, 1, 0
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[176:183], v[128:135], v[48:63], v243, v233 op_sel_hi:[0,0,0]
v_cndmask_b32_e64 v220, v231, v247, s[74:75]
v_fma_f32 v244, v244, s29, -v220
v_floor_f32_e32 v244, v244
v_med3_f32 v244, v244, s82, 0
v_cvt_i32_f32_e32 v235, v244
v_add_u32_e32 v235, 0x7f, v235
v_lshlrev_b32_e32 v239, 23, v235
v_fma_f32 v246, v246, s29, -v220
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[184:191], v[136:143], v[0:15], v243, v234 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[168:169], v226 offset:4864
ds_read_b64_tr_b8 v[170:171], v226 offset:5888
ds_read_b64_tr_b8 v[172:173], v226 offset:6912
ds_read_b64_tr_b8 v[174:175], v226 offset:7936
v_floor_f32_e32 v246, v246
v_med3_f32 v246, v246, s82, 0
v_cvt_i32_f32_e32 v236, v246
v_add_u32_e32 v236, 0x7f, v236
v_lshlrev_b32_e32 v240, 23, v236
v_fma_f32 v245, v220, v251, s30
v_fma_f32 v241, v244, v251, v245
v_fma_f32 v242, v246, v251, v245
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[192:199], v[136:143], v[16:31], v243, v234 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[200:207], v[136:143], v[32:47], v243, v234 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[168:175], v[136:143], v[48:63], v243, v234 op_sel_hi:[0,0,0]
s_cmp_eq_u32 s73, 0
s_cbranch_scc1 69
v_sub_f32_e32 v248, v231, v220
v_exp_f32_e32 v248, v248
s_nop 0
v_pk_mul_f32 v[0:1], v[0:1], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[2:3], v[2:3], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[4:5], v[4:5], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[6:7], v[6:7], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[8:9], v[8:9], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[10:11], v[10:11], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[12:13], v[12:13], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[14:15], v[14:15], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[16:17], v[16:17], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[18:19], v[18:19], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[20:21], v[20:21], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[22:23], v[22:23], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[24:25], v[24:25], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[26:27], v[26:27], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[28:29], v[28:29], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[30:31], v[30:31], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[32:33], v[32:33], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[34:35], v[34:35], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[36:37], v[36:37], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[38:39], v[38:39], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[40:41], v[40:41], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[42:43], v[42:43], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[44:45], v[44:45], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[46:47], v[46:47], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[48:49], v[48:49], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[50:51], v[50:51], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[52:53], v[52:53], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[54:55], v[54:55], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[56:57], v[56:57], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[58:59], v[58:59], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[60:61], v[60:61], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[62:63], v[62:63], v[248:249] op_sel_hi:[1,0]
v_mul_f32_e32 v232, v248, v232
s_waitcnt vmcnt(4)
s_barrier
s_add_u32 s65, s65, 1
s_add_u32 s78, s65, 1
s_cmp_ge_u32 s78, s64
s_cbranch_scc1 1872
s_setprio 0
v_fma_f32 v64, v64, s28, v241
v_fma_f32 v65, v65, s28, v241
v_fma_f32 v66, v66, s28, v241
v_fma_f32 v67, v67, s28, v241
v_fma_f32 v68, v68, s28, v241
v_fma_f32 v69, v69, s28, v241
v_fma_f32 v70, v70, s28, v241
v_fma_f32 v71, v71, s28, v241
v_fma_f32 v72, v72, s28, v241
v_fma_f32 v73, v73, s28, v241
v_fma_f32 v74, v74, s28, v241
v_fma_f32 v75, v75, s28, v241
v_fma_f32 v76, v76, s28, v241
v_fma_f32 v77, v77, s28, v241
v_fma_f32 v78, v78, s28, v241
v_fma_f32 v79, v79, s28, v241
v_fma_f32 v80, v80, s28, v241
v_cvt_pk_u8_f32 v128, v64, 0, 0
v_fma_f32 v81, v81, s28, v241
v_cvt_pk_u8_f32 v129, v68, 0, 0
v_fma_f32 v82, v82, s28, v241
v_cvt_pk_u8_f32 v130, v72, 0, 0
v_fma_f32 v83, v83, s28, v241
v_cvt_pk_u8_f32 v131, v76, 0, 0
v_fma_f32 v84, v84, s28, v241
v_cvt_pk_u8_f32 v128, v65, 1, v128
v_fma_f32 v85, v85, s28, v241
v_cvt_pk_u8_f32 v129, v69, 1, v129
v_fma_f32 v86, v86, s28, v241
v_cvt_pk_u8_f32 v130, v73, 1, v130
v_fma_f32 v87, v87, s28, v241
v_cvt_pk_u8_f32 v131, v77, 1, v131
v_fma_f32 v88, v88, s28, v241
v_cvt_pk_u8_f32 v128, v66, 2, v128
v_fma_f32 v89, v89, s28, v241
v_cvt_pk_u8_f32 v129, v70, 2, v129
v_fma_f32 v90, v90, s28, v241
v_cvt_pk_u8_f32 v130, v74, 2, v130
v_fma_f32 v91, v91, s28, v241
v_cvt_pk_u8_f32 v131, v78, 2, v131
v_fma_f32 v92, v92, s28, v241
v_cvt_pk_u8_f32 v128, v67, 3, v128
v_fma_f32 v93, v93, s28, v241
v_cvt_pk_u8_f32 v129, v71, 3, v129
v_fma_f32 v94, v94, s28, v241
v_cvt_pk_u8_f32 v130, v75, 3, v130
v_fma_f32 v95, v95, s28, v241
v_cvt_pk_u8_f32 v131, v79, 3, v131
v_fma_f32 v96, v96, s28, v242
v_cvt_pk_u8_f32 v132, v80, 0, 0
v_fma_f32 v97, v97, s28, v242
v_cvt_pk_u8_f32 v133, v84, 0, 0
v_fma_f32 v98, v98, s28, v242
v_cvt_pk_u8_f32 v134, v88, 0, 0
v_fma_f32 v99, v99, s28, v242
v_cvt_pk_u8_f32 v135, v92, 0, 0
v_fma_f32 v100, v100, s28, v242
v_cvt_pk_u8_f32 v132, v81, 1, v132
v_fma_f32 v101, v101, s28, v242
v_cvt_pk_u8_f32 v133, v85, 1, v133
v_fma_f32 v102, v102, s28, v242
v_cvt_pk_u8_f32 v134, v89, 1, v134
v_fma_f32 v103, v103, s28, v242
v_cvt_pk_u8_f32 v135, v93, 1, v135
v_fma_f32 v104, v104, s28, v242
v_cvt_pk_u8_f32 v132, v82, 2, v132
v_fma_f32 v105, v105, s28, v242
v_cvt_pk_u8_f32 v133, v86, 2, v133
v_fma_f32 v106, v106, s28, v242
v_cvt_pk_u8_f32 v134, v90, 2, v134
v_fma_f32 v107, v107, s28, v242
v_cvt_pk_u8_f32 v135, v94, 2, v135
v_fma_f32 v108, v108, s28, v242
v_cvt_pk_u8_f32 v132, v83, 3, v132
v_fma_f32 v109, v109, s28, v242
v_cvt_pk_u8_f32 v133, v87, 3, v133
v_fma_f32 v110, v110, s28, v242
v_cvt_pk_u8_f32 v134, v91, 3, v134
v_fma_f32 v111, v111, s28, v242
v_cvt_pk_u8_f32 v135, v95, 3, v135
v_fma_f32 v112, v112, s28, v242
v_cvt_pk_u8_f32 v136, v96, 0, 0
v_fma_f32 v113, v113, s28, v242
v_cvt_pk_u8_f32 v137, v100, 0, 0
v_fma_f32 v114, v114, s28, v242
v_cvt_pk_u8_f32 v138, v104, 0, 0
v_fma_f32 v115, v115, s28, v242
v_cvt_pk_u8_f32 v139, v108, 0, 0
v_fma_f32 v116, v116, s28, v242
v_cvt_pk_u8_f32 v136, v97, 1, v136
v_fma_f32 v117, v117, s28, v242
v_cvt_pk_u8_f32 v137, v101, 1, v137
v_fma_f32 v118, v118, s28, v242
v_cvt_pk_u8_f32 v138, v105, 1, v138
v_fma_f32 v119, v119, s28, v242
v_cvt_pk_u8_f32 v139, v109, 1, v139
v_fma_f32 v120, v120, s28, v242
v_cvt_pk_u8_f32 v136, v98, 2, v136
v_fma_f32 v121, v121, s28, v242
v_cvt_pk_u8_f32 v137, v102, 2, v137
v_fma_f32 v122, v122, s28, v242
v_cvt_pk_u8_f32 v138, v106, 2, v138
v_fma_f32 v123, v123, s28, v242
v_cvt_pk_u8_f32 v139, v110, 2, v139
v_fma_f32 v124, v124, s28, v242
v_cvt_pk_u8_f32 v136, v99, 3, v136
v_fma_f32 v125, v125, s28, v242
v_cvt_pk_u8_f32 v137, v103, 3, v137
v_fma_f32 v126, v126, s28, v242
v_cvt_pk_u8_f32 v138, v107, 3, v138
v_fma_f32 v127, v127, s28, v242
v_cvt_pk_u8_f32 v139, v111, 3, v139
v_cvt_pk_u8_f32 v140, v112, 0, 0
v_cvt_pk_u8_f32 v141, v116, 0, 0
v_cvt_pk_u8_f32 v142, v120, 0, 0
v_cvt_pk_u8_f32 v143, v124, 0, 0
v_cvt_pk_u8_f32 v140, v113, 1, v140
v_cvt_pk_u8_f32 v141, v117, 1, v141
v_cvt_pk_u8_f32 v142, v121, 1, v142
v_cvt_pk_u8_f32 v143, v125, 1, v143
v_cvt_pk_u8_f32 v140, v114, 2, v140
v_cvt_pk_u8_f32 v141, v118, 2, v141
v_cvt_pk_u8_f32 v142, v122, 2, v142
v_cvt_pk_u8_f32 v143, v126, 2, v143
v_cvt_pk_u8_f32 v140, v115, 3, v140
v_cvt_pk_u8_f32 v141, v119, 3, v141
v_cvt_pk_u8_f32 v142, v123, 3, v142
v_cvt_pk_u8_f32 v143, v127, 3, v143
ds_read_b128 v[168:171], v224 offset:32768
ds_read_b128 v[172:175], v224 offset:32784
ds_read_b128 v[176:179], v224 offset:36864
ds_read_b128 v[180:183], v224 offset:36880
s_barrier
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[208:211], v[160:167], v[128:135], 0
v_mfma_f32_16x16x128_f8f6f4 v[212:215], v[160:167], v[136:143], 0
ds_read_b128 v[184:187], v224 offset:40960
ds_read_b128 v[188:191], v224 offset:40976
ds_read_b128 v[192:195], v224 offset:45056
ds_read_b128 v[196:199], v224 offset:45072
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[168:175], v[144:151], 0
ds_read_b128 v[200:203], v225 offset:32768
ds_read_b128 v[204:207], v225 offset:32784
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[176:183], v[144:151], 0
ds_read_b128 v[168:171], v225 offset:36864
ds_read_b128 v[172:175], v225 offset:36880
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[184:191], v[144:151], 0
ds_read_b128 v[176:179], v225 offset:40960
ds_read_b128 v[180:183], v225 offset:40976
s_min_u32 s78, s71, s85
s_add_u32 m0, s83, 0x4000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s78 offen lds
v_mul_f32_e32 v255, v208, v239
v_add_f32_e32 v232, v232, v255
v_mul_f32_e32 v255, v212, v240
v_add_f32_e32 v232, v232, v255
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[192:199], v[144:151], 0
ds_read_b128 v[184:187], v225 offset:45056
ds_read_b128 v[188:191], v225 offset:45072
s_add_u32 m0, s83, 0x6000
s_nop 0
buffer_load_dwordx4 v228, s[8:11], s78 offen lds
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[200:207], v[152:159], v[64:79]
ds_read_b64_tr_b8 v[192:193], v226 offset:16384
ds_read_b64_tr_b8 v[194:195], v226 offset:17408
ds_read_b64_tr_b8 v[196:197], v226 offset:18432
ds_read_b64_tr_b8 v[198:199], v226 offset:19456
s_min_u32 s79, s72, s85
s_add_u32 m0, s84, 0xc000
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[168:175], v[152:159], v[80:95]
ds_read_b64_tr_b8 v[200:201], v226 offset:16640
ds_read_b64_tr_b8 v[202:203], v226 offset:17664
ds_read_b64_tr_b8 v[204:205], v226 offset:18688
ds_read_b64_tr_b8 v[206:207], v226 offset:19712
s_add_u32 m0, s84, 0xe000
s_nop 0
buffer_load_dwordx4 v230, s[12:15], s79 offen lds
s_add_u32 s71, s71, s66
s_add_u32 s72, s72, s66
v_max_f32_e32 v244, v64, v65
v_max3_f32 v244, v66, v67, v244
v_max3_f32 v244, v68, v69, v244
v_max3_f32 v244, v70, v71, v244
v_max3_f32 v244, v72, v73, v244
v_max3_f32 v244, v74, v75, v244
v_max3_f32 v244, v76, v77, v244
v_max3_f32 v244, v78, v79, v244
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[176:183], v[152:159], v[96:111]
ds_read_b64_tr_b8 v[168:169], v226 offset:16896
ds_read_b64_tr_b8 v[170:171], v226 offset:17920
ds_read_b64_tr_b8 v[172:173], v226 offset:18944
ds_read_b64_tr_b8 v[174:175], v226 offset:19968
v_max_f32_e32 v245, v80, v81
v_max3_f32 v245, v82, v83, v245
v_max3_f32 v245, v84, v85, v245
v_max3_f32 v245, v86, v87, v245
v_max3_f32 v245, v88, v89, v245
v_max3_f32 v245, v90, v91, v245
v_max3_f32 v245, v92, v93, v245
v_max3_f32 v245, v94, v95, v245
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[184:191], v[152:159], v[112:127]
s_nop 3
v_max_f32_e32 v246, v96, v97
v_max3_f32 v246, v98, v99, v246
v_max3_f32 v246, v100, v101, v246
v_max3_f32 v246, v102, v103, v246
v_max3_f32 v246, v104, v105, v246
v_max3_f32 v246, v106, v107, v246
v_max3_f32 v246, v108, v109, v246
v_max3_f32 v246, v110, v111, v246
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[192:199], v[128:135], v[0:15], v243, v235 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[176:177], v226 offset:17152
ds_read_b64_tr_b8 v[178:179], v226 offset:18176
ds_read_b64_tr_b8 v[180:181], v226 offset:19200
ds_read_b64_tr_b8 v[182:183], v226 offset:20224
ds_read_b64_tr_b8 v[184:185], v226 offset:20480
ds_read_b64_tr_b8 v[186:187], v226 offset:21504
ds_read_b64_tr_b8 v[188:189], v226 offset:22528
ds_read_b64_tr_b8 v[190:191], v226 offset:23552
v_max_f32_e32 v247, v112, v113
v_max3_f32 v247, v114, v115, v247
v_max3_f32 v247, v116, v117, v247
v_max3_f32 v247, v118, v119, v247
v_max3_f32 v247, v120, v121, v247
v_max3_f32 v247, v122, v123, v247
v_max3_f32 v247, v124, v125, v247
v_max3_f32 v247, v126, v127, v247
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[200:207], v[128:135], v[16:31], v243, v235 op_sel_hi:[0,0,0]
v_max_f32_e32 v244, v244, v245
v_max_f32_e32 v246, v246, v247
s_nop 1
v_permlane32_swap_b32_e32 v244, v245
v_permlane32_swap_b32_e32 v246, v247
v_max_f32_e32 v244, v244, v245
v_max_f32_e32 v246, v246, v247
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[168:175], v[128:135], v[32:47], v243, v235 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[192:193], v226 offset:20736
ds_read_b64_tr_b8 v[194:195], v226 offset:21760
ds_read_b64_tr_b8 v[196:197], v226 offset:22784
ds_read_b64_tr_b8 v[198:199], v226 offset:23808
ds_read_b64_tr_b8 v[200:201], v226 offset:20992
ds_read_b64_tr_b8 v[202:203], v226 offset:22016
ds_read_b64_tr_b8 v[204:205], v226 offset:23040
ds_read_b64_tr_b8 v[206:207], v226 offset:24064
v_max_f32_e32 v245, v244, v246
v_mul_f32_e32 v245, s29, v245
v_max_f32_e32 v247, v231, v245
v_sub_f32_e32 v245, v247, v231
v_cmp_lt_f32_e32 vcc, 0x3e000000, v245
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[74:75], -1, 0
s_cselect_b32 s73, 1, 0
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[176:183], v[128:135], v[48:63], v243, v235 op_sel_hi:[0,0,0]
v_cndmask_b32_e64 v220, v231, v247, s[74:75]
v_fma_f32 v244, v244, s29, -v220
v_floor_f32_e32 v244, v244
v_med3_f32 v244, v244, s82, 0
v_cvt_i32_f32_e32 v233, v244
v_add_u32_e32 v233, 0x7f, v233
v_lshlrev_b32_e32 v237, 23, v233
v_fma_f32 v246, v246, s29, -v220
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[184:191], v[136:143], v[0:15], v243, v236 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[168:169], v226 offset:21248
ds_read_b64_tr_b8 v[170:171], v226 offset:22272
ds_read_b64_tr_b8 v[172:173], v226 offset:23296
ds_read_b64_tr_b8 v[174:175], v226 offset:24320
v_floor_f32_e32 v246, v246
v_med3_f32 v246, v246, s82, 0
v_cvt_i32_f32_e32 v234, v246
v_add_u32_e32 v234, 0x7f, v234
v_lshlrev_b32_e32 v238, 23, v234
v_fma_f32 v245, v220, v251, s30
v_fma_f32 v241, v244, v251, v245
v_fma_f32 v242, v246, v251, v245
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[192:199], v[136:143], v[16:31], v243, v236 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[200:207], v[136:143], v[32:47], v243, v236 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[168:175], v[136:143], v[48:63], v243, v236 op_sel_hi:[0,0,0]
s_cmp_eq_u32 s73, 0
s_cbranch_scc1 69
v_sub_f32_e32 v248, v231, v220
v_exp_f32_e32 v248, v248
s_nop 0
v_pk_mul_f32 v[0:1], v[0:1], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[2:3], v[2:3], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[4:5], v[4:5], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[6:7], v[6:7], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[8:9], v[8:9], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[10:11], v[10:11], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[12:13], v[12:13], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[14:15], v[14:15], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[16:17], v[16:17], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[18:19], v[18:19], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[20:21], v[20:21], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[22:23], v[22:23], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[24:25], v[24:25], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[26:27], v[26:27], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[28:29], v[28:29], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[30:31], v[30:31], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[32:33], v[32:33], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[34:35], v[34:35], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[36:37], v[36:37], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[38:39], v[38:39], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[40:41], v[40:41], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[42:43], v[42:43], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[44:45], v[44:45], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[46:47], v[46:47], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[48:49], v[48:49], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[50:51], v[50:51], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[52:53], v[52:53], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[54:55], v[54:55], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[56:57], v[56:57], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[58:59], v[58:59], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[60:61], v[60:61], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[62:63], v[62:63], v[248:249] op_sel_hi:[1,0]
v_mul_f32_e32 v232, v248, v232
s_waitcnt vmcnt(4)
s_barrier
s_add_u32 s65, s65, 1
s_add_u32 s78, s65, 1
s_cmp_ge_u32 s78, s64
s_cbranch_scc1 1247
s_setprio 0
v_fma_f32 v64, v64, s28, v241
v_fma_f32 v65, v65, s28, v241
v_fma_f32 v66, v66, s28, v241
v_fma_f32 v67, v67, s28, v241
v_fma_f32 v68, v68, s28, v241
v_fma_f32 v69, v69, s28, v241
v_fma_f32 v70, v70, s28, v241
v_fma_f32 v71, v71, s28, v241
v_fma_f32 v72, v72, s28, v241
v_fma_f32 v73, v73, s28, v241
v_fma_f32 v74, v74, s28, v241
v_fma_f32 v75, v75, s28, v241
v_fma_f32 v76, v76, s28, v241
v_fma_f32 v77, v77, s28, v241
v_fma_f32 v78, v78, s28, v241
v_fma_f32 v79, v79, s28, v241
v_fma_f32 v80, v80, s28, v241
v_cvt_pk_u8_f32 v128, v64, 0, 0
v_fma_f32 v81, v81, s28, v241
v_cvt_pk_u8_f32 v129, v68, 0, 0
v_fma_f32 v82, v82, s28, v241
v_cvt_pk_u8_f32 v130, v72, 0, 0
v_fma_f32 v83, v83, s28, v241
v_cvt_pk_u8_f32 v131, v76, 0, 0
v_fma_f32 v84, v84, s28, v241
v_cvt_pk_u8_f32 v128, v65, 1, v128
v_fma_f32 v85, v85, s28, v241
v_cvt_pk_u8_f32 v129, v69, 1, v129
v_fma_f32 v86, v86, s28, v241
v_cvt_pk_u8_f32 v130, v73, 1, v130
v_fma_f32 v87, v87, s28, v241
v_cvt_pk_u8_f32 v131, v77, 1, v131
v_fma_f32 v88, v88, s28, v241
v_cvt_pk_u8_f32 v128, v66, 2, v128
v_fma_f32 v89, v89, s28, v241
v_cvt_pk_u8_f32 v129, v70, 2, v129
v_fma_f32 v90, v90, s28, v241
v_cvt_pk_u8_f32 v130, v74, 2, v130
v_fma_f32 v91, v91, s28, v241
v_cvt_pk_u8_f32 v131, v78, 2, v131
v_fma_f32 v92, v92, s28, v241
v_cvt_pk_u8_f32 v128, v67, 3, v128
v_fma_f32 v93, v93, s28, v241
v_cvt_pk_u8_f32 v129, v71, 3, v129
v_fma_f32 v94, v94, s28, v241
v_cvt_pk_u8_f32 v130, v75, 3, v130
v_fma_f32 v95, v95, s28, v241
v_cvt_pk_u8_f32 v131, v79, 3, v131
v_fma_f32 v96, v96, s28, v242
v_cvt_pk_u8_f32 v132, v80, 0, 0
v_fma_f32 v97, v97, s28, v242
v_cvt_pk_u8_f32 v133, v84, 0, 0
v_fma_f32 v98, v98, s28, v242
v_cvt_pk_u8_f32 v134, v88, 0, 0
v_fma_f32 v99, v99, s28, v242
v_cvt_pk_u8_f32 v135, v92, 0, 0
v_fma_f32 v100, v100, s28, v242
v_cvt_pk_u8_f32 v132, v81, 1, v132
v_fma_f32 v101, v101, s28, v242
v_cvt_pk_u8_f32 v133, v85, 1, v133
v_fma_f32 v102, v102, s28, v242
v_cvt_pk_u8_f32 v134, v89, 1, v134
v_fma_f32 v103, v103, s28, v242
v_cvt_pk_u8_f32 v135, v93, 1, v135
v_fma_f32 v104, v104, s28, v242
v_cvt_pk_u8_f32 v132, v82, 2, v132
v_fma_f32 v105, v105, s28, v242
v_cvt_pk_u8_f32 v133, v86, 2, v133
v_fma_f32 v106, v106, s28, v242
v_cvt_pk_u8_f32 v134, v90, 2, v134
v_fma_f32 v107, v107, s28, v242
v_cvt_pk_u8_f32 v135, v94, 2, v135
v_fma_f32 v108, v108, s28, v242
v_cvt_pk_u8_f32 v132, v83, 3, v132
v_fma_f32 v109, v109, s28, v242
v_cvt_pk_u8_f32 v133, v87, 3, v133
v_fma_f32 v110, v110, s28, v242
v_cvt_pk_u8_f32 v134, v91, 3, v134
v_fma_f32 v111, v111, s28, v242
v_cvt_pk_u8_f32 v135, v95, 3, v135
v_fma_f32 v112, v112, s28, v242
v_cvt_pk_u8_f32 v136, v96, 0, 0
v_fma_f32 v113, v113, s28, v242
v_cvt_pk_u8_f32 v137, v100, 0, 0
v_fma_f32 v114, v114, s28, v242
v_cvt_pk_u8_f32 v138, v104, 0, 0
v_fma_f32 v115, v115, s28, v242
v_cvt_pk_u8_f32 v139, v108, 0, 0
v_fma_f32 v116, v116, s28, v242
v_cvt_pk_u8_f32 v136, v97, 1, v136
v_fma_f32 v117, v117, s28, v242
v_cvt_pk_u8_f32 v137, v101, 1, v137
v_fma_f32 v118, v118, s28, v242
v_cvt_pk_u8_f32 v138, v105, 1, v138
v_fma_f32 v119, v119, s28, v242
v_cvt_pk_u8_f32 v139, v109, 1, v139
v_fma_f32 v120, v120, s28, v242
v_cvt_pk_u8_f32 v136, v98, 2, v136
v_fma_f32 v121, v121, s28, v242
v_cvt_pk_u8_f32 v137, v102, 2, v137
v_fma_f32 v122, v122, s28, v242
v_cvt_pk_u8_f32 v138, v106, 2, v138
v_fma_f32 v123, v123, s28, v242
v_cvt_pk_u8_f32 v139, v110, 2, v139
v_fma_f32 v124, v124, s28, v242
v_cvt_pk_u8_f32 v136, v99, 3, v136
v_fma_f32 v125, v125, s28, v242
v_cvt_pk_u8_f32 v137, v103, 3, v137
v_fma_f32 v126, v126, s28, v242
v_cvt_pk_u8_f32 v138, v107, 3, v138
v_fma_f32 v127, v127, s28, v242
v_cvt_pk_u8_f32 v139, v111, 3, v139
v_cvt_pk_u8_f32 v140, v112, 0, 0
v_cvt_pk_u8_f32 v141, v116, 0, 0
v_cvt_pk_u8_f32 v142, v120, 0, 0
v_cvt_pk_u8_f32 v143, v124, 0, 0
v_cvt_pk_u8_f32 v140, v113, 1, v140
v_cvt_pk_u8_f32 v141, v117, 1, v141
v_cvt_pk_u8_f32 v142, v121, 1, v142
v_cvt_pk_u8_f32 v143, v125, 1, v143
v_cvt_pk_u8_f32 v140, v114, 2, v140
v_cvt_pk_u8_f32 v141, v118, 2, v141
v_cvt_pk_u8_f32 v142, v122, 2, v142
v_cvt_pk_u8_f32 v143, v126, 2, v143
v_cvt_pk_u8_f32 v140, v115, 3, v140
v_cvt_pk_u8_f32 v141, v119, 3, v141
v_cvt_pk_u8_f32 v142, v123, 3, v142
v_cvt_pk_u8_f32 v143, v127, 3, v143
ds_read_b128 v[168:171], v224 offset:49152
ds_read_b128 v[172:175], v224 offset:49168
ds_read_b128 v[176:179], v224 offset:53248
ds_read_b128 v[180:183], v224 offset:53264
s_barrier
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[208:211], v[160:167], v[128:135], 0
v_mfma_f32_16x16x128_f8f6f4 v[212:215], v[160:167], v[136:143], 0
ds_read_b128 v[184:187], v224 offset:57344
ds_read_b128 v[188:191], v224 offset:57360
ds_read_b128 v[192:195], v224 offset:61440
ds_read_b128 v[196:199], v224 offset:61456
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[168:175], v[144:151], 0
ds_read_b128 v[200:203], v225 offset:49152
ds_read_b128 v[204:207], v225 offset:49168
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[176:183], v[144:151], 0
ds_read_b128 v[168:171], v225 offset:53248
ds_read_b128 v[172:175], v225 offset:53264
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[184:191], v[144:151], 0
ds_read_b128 v[176:179], v225 offset:57344
ds_read_b128 v[180:183], v225 offset:57360
s_min_u32 s78, s71, s85
s_add_u32 m0, s83, 0x8000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s78 offen lds
v_mul_f32_e32 v255, v208, v237
v_add_f32_e32 v232, v232, v255
v_mul_f32_e32 v255, v212, v238
v_add_f32_e32 v232, v232, v255
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[192:199], v[144:151], 0
ds_read_b128 v[184:187], v225 offset:61440
ds_read_b128 v[188:191], v225 offset:61456
s_add_u32 m0, s83, 0xa000
s_nop 0
buffer_load_dwordx4 v228, s[8:11], s78 offen lds
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[200:207], v[152:159], v[64:79]
ds_read_b64_tr_b8 v[192:193], v226 offset:32768
ds_read_b64_tr_b8 v[194:195], v226 offset:33792
ds_read_b64_tr_b8 v[196:197], v226 offset:34816
ds_read_b64_tr_b8 v[198:199], v226 offset:35840
s_min_u32 s79, s72, s85
s_add_u32 m0, s84, 0
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[168:175], v[152:159], v[80:95]
ds_read_b64_tr_b8 v[200:201], v226 offset:33024
ds_read_b64_tr_b8 v[202:203], v226 offset:34048
ds_read_b64_tr_b8 v[204:205], v226 offset:35072
ds_read_b64_tr_b8 v[206:207], v226 offset:36096
s_add_u32 m0, s84, 0x2000
s_nop 0
buffer_load_dwordx4 v230, s[12:15], s79 offen lds
s_add_u32 s71, s71, s66
s_add_u32 s72, s72, s66
v_max_f32_e32 v244, v64, v65
v_max3_f32 v244, v66, v67, v244
v_max3_f32 v244, v68, v69, v244
v_max3_f32 v244, v70, v71, v244
v_max3_f32 v244, v72, v73, v244
v_max3_f32 v244, v74, v75, v244
v_max3_f32 v244, v76, v77, v244
v_max3_f32 v244, v78, v79, v244
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[176:183], v[152:159], v[96:111]
ds_read_b64_tr_b8 v[168:169], v226 offset:33280
ds_read_b64_tr_b8 v[170:171], v226 offset:34304
ds_read_b64_tr_b8 v[172:173], v226 offset:35328
ds_read_b64_tr_b8 v[174:175], v226 offset:36352
v_max_f32_e32 v245, v80, v81
v_max3_f32 v245, v82, v83, v245
v_max3_f32 v245, v84, v85, v245
v_max3_f32 v245, v86, v87, v245
v_max3_f32 v245, v88, v89, v245
v_max3_f32 v245, v90, v91, v245
v_max3_f32 v245, v92, v93, v245
v_max3_f32 v245, v94, v95, v245
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[184:191], v[152:159], v[112:127]
s_nop 3
v_max_f32_e32 v246, v96, v97
v_max3_f32 v246, v98, v99, v246
v_max3_f32 v246, v100, v101, v246
v_max3_f32 v246, v102, v103, v246
v_max3_f32 v246, v104, v105, v246
v_max3_f32 v246, v106, v107, v246
v_max3_f32 v246, v108, v109, v246
v_max3_f32 v246, v110, v111, v246
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[192:199], v[128:135], v[0:15], v243, v233 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[176:177], v226 offset:33536
ds_read_b64_tr_b8 v[178:179], v226 offset:34560
ds_read_b64_tr_b8 v[180:181], v226 offset:35584
ds_read_b64_tr_b8 v[182:183], v226 offset:36608
ds_read_b64_tr_b8 v[184:185], v226 offset:36864
ds_read_b64_tr_b8 v[186:187], v226 offset:37888
ds_read_b64_tr_b8 v[188:189], v226 offset:38912
ds_read_b64_tr_b8 v[190:191], v226 offset:39936
v_max_f32_e32 v247, v112, v113
v_max3_f32 v247, v114, v115, v247
v_max3_f32 v247, v116, v117, v247
v_max3_f32 v247, v118, v119, v247
v_max3_f32 v247, v120, v121, v247
v_max3_f32 v247, v122, v123, v247
v_max3_f32 v247, v124, v125, v247
v_max3_f32 v247, v126, v127, v247
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[200:207], v[128:135], v[16:31], v243, v233 op_sel_hi:[0,0,0]
v_max_f32_e32 v244, v244, v245
v_max_f32_e32 v246, v246, v247
s_nop 1
v_permlane32_swap_b32_e32 v244, v245
v_permlane32_swap_b32_e32 v246, v247
v_max_f32_e32 v244, v244, v245
v_max_f32_e32 v246, v246, v247
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[168:175], v[128:135], v[32:47], v243, v233 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[192:193], v226 offset:37120
ds_read_b64_tr_b8 v[194:195], v226 offset:38144
ds_read_b64_tr_b8 v[196:197], v226 offset:39168
ds_read_b64_tr_b8 v[198:199], v226 offset:40192
ds_read_b64_tr_b8 v[200:201], v226 offset:37376
ds_read_b64_tr_b8 v[202:203], v226 offset:38400
ds_read_b64_tr_b8 v[204:205], v226 offset:39424
ds_read_b64_tr_b8 v[206:207], v226 offset:40448
v_max_f32_e32 v245, v244, v246
v_mul_f32_e32 v245, s29, v245
v_max_f32_e32 v247, v231, v245
v_sub_f32_e32 v245, v247, v231
v_cmp_lt_f32_e32 vcc, 0x3e000000, v245
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[74:75], -1, 0
s_cselect_b32 s73, 1, 0
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[176:183], v[128:135], v[48:63], v243, v233 op_sel_hi:[0,0,0]
v_cndmask_b32_e64 v220, v231, v247, s[74:75]
v_fma_f32 v244, v244, s29, -v220
v_floor_f32_e32 v244, v244
v_med3_f32 v244, v244, s82, 0
v_cvt_i32_f32_e32 v235, v244
v_add_u32_e32 v235, 0x7f, v235
v_lshlrev_b32_e32 v239, 23, v235
v_fma_f32 v246, v246, s29, -v220
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[184:191], v[136:143], v[0:15], v243, v234 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[168:169], v226 offset:37632
ds_read_b64_tr_b8 v[170:171], v226 offset:38656
ds_read_b64_tr_b8 v[172:173], v226 offset:39680
ds_read_b64_tr_b8 v[174:175], v226 offset:40704
v_floor_f32_e32 v246, v246
v_med3_f32 v246, v246, s82, 0
v_cvt_i32_f32_e32 v236, v246
v_add_u32_e32 v236, 0x7f, v236
v_lshlrev_b32_e32 v240, 23, v236
v_fma_f32 v245, v220, v251, s30
v_fma_f32 v241, v244, v251, v245
v_fma_f32 v242, v246, v251, v245
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[192:199], v[136:143], v[16:31], v243, v234 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[200:207], v[136:143], v[32:47], v243, v234 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[168:175], v[136:143], v[48:63], v243, v234 op_sel_hi:[0,0,0]
s_cmp_eq_u32 s73, 0
s_cbranch_scc1 69
v_sub_f32_e32 v248, v231, v220
v_exp_f32_e32 v248, v248
s_nop 0
v_pk_mul_f32 v[0:1], v[0:1], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[2:3], v[2:3], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[4:5], v[4:5], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[6:7], v[6:7], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[8:9], v[8:9], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[10:11], v[10:11], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[12:13], v[12:13], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[14:15], v[14:15], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[16:17], v[16:17], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[18:19], v[18:19], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[20:21], v[20:21], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[22:23], v[22:23], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[24:25], v[24:25], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[26:27], v[26:27], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[28:29], v[28:29], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[30:31], v[30:31], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[32:33], v[32:33], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[34:35], v[34:35], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[36:37], v[36:37], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[38:39], v[38:39], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[40:41], v[40:41], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[42:43], v[42:43], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[44:45], v[44:45], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[46:47], v[46:47], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[48:49], v[48:49], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[50:51], v[50:51], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[52:53], v[52:53], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[54:55], v[54:55], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[56:57], v[56:57], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[58:59], v[58:59], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[60:61], v[60:61], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[62:63], v[62:63], v[248:249] op_sel_hi:[1,0]
v_mul_f32_e32 v232, v248, v232
s_waitcnt vmcnt(4)
s_barrier
s_add_u32 s65, s65, 1
s_add_u32 s78, s65, 1
s_cmp_ge_u32 s78, s64
s_cbranch_scc1 623
s_setprio 0
v_fma_f32 v64, v64, s28, v241
v_fma_f32 v65, v65, s28, v241
v_fma_f32 v66, v66, s28, v241
v_fma_f32 v67, v67, s28, v241
v_fma_f32 v68, v68, s28, v241
v_fma_f32 v69, v69, s28, v241
v_fma_f32 v70, v70, s28, v241
v_fma_f32 v71, v71, s28, v241
v_fma_f32 v72, v72, s28, v241
v_fma_f32 v73, v73, s28, v241
v_fma_f32 v74, v74, s28, v241
v_fma_f32 v75, v75, s28, v241
v_fma_f32 v76, v76, s28, v241
v_fma_f32 v77, v77, s28, v241
v_fma_f32 v78, v78, s28, v241
v_fma_f32 v79, v79, s28, v241
v_fma_f32 v80, v80, s28, v241
v_cvt_pk_u8_f32 v128, v64, 0, 0
v_fma_f32 v81, v81, s28, v241
v_cvt_pk_u8_f32 v129, v68, 0, 0
v_fma_f32 v82, v82, s28, v241
v_cvt_pk_u8_f32 v130, v72, 0, 0
v_fma_f32 v83, v83, s28, v241
v_cvt_pk_u8_f32 v131, v76, 0, 0
v_fma_f32 v84, v84, s28, v241
v_cvt_pk_u8_f32 v128, v65, 1, v128
v_fma_f32 v85, v85, s28, v241
v_cvt_pk_u8_f32 v129, v69, 1, v129
v_fma_f32 v86, v86, s28, v241
v_cvt_pk_u8_f32 v130, v73, 1, v130
v_fma_f32 v87, v87, s28, v241
v_cvt_pk_u8_f32 v131, v77, 1, v131
v_fma_f32 v88, v88, s28, v241
v_cvt_pk_u8_f32 v128, v66, 2, v128
v_fma_f32 v89, v89, s28, v241
v_cvt_pk_u8_f32 v129, v70, 2, v129
v_fma_f32 v90, v90, s28, v241
v_cvt_pk_u8_f32 v130, v74, 2, v130
v_fma_f32 v91, v91, s28, v241
v_cvt_pk_u8_f32 v131, v78, 2, v131
v_fma_f32 v92, v92, s28, v241
v_cvt_pk_u8_f32 v128, v67, 3, v128
v_fma_f32 v93, v93, s28, v241
v_cvt_pk_u8_f32 v129, v71, 3, v129
v_fma_f32 v94, v94, s28, v241
v_cvt_pk_u8_f32 v130, v75, 3, v130
v_fma_f32 v95, v95, s28, v241
v_cvt_pk_u8_f32 v131, v79, 3, v131
v_fma_f32 v96, v96, s28, v242
v_cvt_pk_u8_f32 v132, v80, 0, 0
v_fma_f32 v97, v97, s28, v242
v_cvt_pk_u8_f32 v133, v84, 0, 0
v_fma_f32 v98, v98, s28, v242
v_cvt_pk_u8_f32 v134, v88, 0, 0
v_fma_f32 v99, v99, s28, v242
v_cvt_pk_u8_f32 v135, v92, 0, 0
v_fma_f32 v100, v100, s28, v242
v_cvt_pk_u8_f32 v132, v81, 1, v132
v_fma_f32 v101, v101, s28, v242
v_cvt_pk_u8_f32 v133, v85, 1, v133
v_fma_f32 v102, v102, s28, v242
v_cvt_pk_u8_f32 v134, v89, 1, v134
v_fma_f32 v103, v103, s28, v242
v_cvt_pk_u8_f32 v135, v93, 1, v135
v_fma_f32 v104, v104, s28, v242
v_cvt_pk_u8_f32 v132, v82, 2, v132
v_fma_f32 v105, v105, s28, v242
v_cvt_pk_u8_f32 v133, v86, 2, v133
v_fma_f32 v106, v106, s28, v242
v_cvt_pk_u8_f32 v134, v90, 2, v134
v_fma_f32 v107, v107, s28, v242
v_cvt_pk_u8_f32 v135, v94, 2, v135
v_fma_f32 v108, v108, s28, v242
v_cvt_pk_u8_f32 v132, v83, 3, v132
v_fma_f32 v109, v109, s28, v242
v_cvt_pk_u8_f32 v133, v87, 3, v133
v_fma_f32 v110, v110, s28, v242
v_cvt_pk_u8_f32 v134, v91, 3, v134
v_fma_f32 v111, v111, s28, v242
v_cvt_pk_u8_f32 v135, v95, 3, v135
v_fma_f32 v112, v112, s28, v242
v_cvt_pk_u8_f32 v136, v96, 0, 0
v_fma_f32 v113, v113, s28, v242
v_cvt_pk_u8_f32 v137, v100, 0, 0
v_fma_f32 v114, v114, s28, v242
v_cvt_pk_u8_f32 v138, v104, 0, 0
v_fma_f32 v115, v115, s28, v242
v_cvt_pk_u8_f32 v139, v108, 0, 0
v_fma_f32 v116, v116, s28, v242
v_cvt_pk_u8_f32 v136, v97, 1, v136
v_fma_f32 v117, v117, s28, v242
v_cvt_pk_u8_f32 v137, v101, 1, v137
v_fma_f32 v118, v118, s28, v242
v_cvt_pk_u8_f32 v138, v105, 1, v138
v_fma_f32 v119, v119, s28, v242
v_cvt_pk_u8_f32 v139, v109, 1, v139
v_fma_f32 v120, v120, s28, v242
v_cvt_pk_u8_f32 v136, v98, 2, v136
v_fma_f32 v121, v121, s28, v242
v_cvt_pk_u8_f32 v137, v102, 2, v137
v_fma_f32 v122, v122, s28, v242
v_cvt_pk_u8_f32 v138, v106, 2, v138
v_fma_f32 v123, v123, s28, v242
v_cvt_pk_u8_f32 v139, v110, 2, v139
v_fma_f32 v124, v124, s28, v242
v_cvt_pk_u8_f32 v136, v99, 3, v136
v_fma_f32 v125, v125, s28, v242
v_cvt_pk_u8_f32 v137, v103, 3, v137
v_fma_f32 v126, v126, s28, v242
v_cvt_pk_u8_f32 v138, v107, 3, v138
v_fma_f32 v127, v127, s28, v242
v_cvt_pk_u8_f32 v139, v111, 3, v139
v_cvt_pk_u8_f32 v140, v112, 0, 0
v_cvt_pk_u8_f32 v141, v116, 0, 0
v_cvt_pk_u8_f32 v142, v120, 0, 0
v_cvt_pk_u8_f32 v143, v124, 0, 0
v_cvt_pk_u8_f32 v140, v113, 1, v140
v_cvt_pk_u8_f32 v141, v117, 1, v141
v_cvt_pk_u8_f32 v142, v121, 1, v142
v_cvt_pk_u8_f32 v143, v125, 1, v143
v_cvt_pk_u8_f32 v140, v114, 2, v140
v_cvt_pk_u8_f32 v141, v118, 2, v141
v_cvt_pk_u8_f32 v142, v122, 2, v142
v_cvt_pk_u8_f32 v143, v126, 2, v143
v_cvt_pk_u8_f32 v140, v115, 3, v140
v_cvt_pk_u8_f32 v141, v119, 3, v141
v_cvt_pk_u8_f32 v142, v123, 3, v142
v_cvt_pk_u8_f32 v143, v127, 3, v143
ds_read_b128 v[168:171], v224
ds_read_b128 v[172:175], v224 offset:16
ds_read_b128 v[176:179], v224 offset:4096
ds_read_b128 v[180:183], v224 offset:4112
s_barrier
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[208:211], v[160:167], v[128:135], 0
v_mfma_f32_16x16x128_f8f6f4 v[212:215], v[160:167], v[136:143], 0
ds_read_b128 v[184:187], v224 offset:8192
ds_read_b128 v[188:191], v224 offset:8208
ds_read_b128 v[192:195], v224 offset:12288
ds_read_b128 v[196:199], v224 offset:12304
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[168:175], v[144:151], 0
ds_read_b128 v[200:203], v225
ds_read_b128 v[204:207], v225 offset:16
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[176:183], v[144:151], 0
ds_read_b128 v[168:171], v225 offset:4096
ds_read_b128 v[172:175], v225 offset:4112
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[184:191], v[144:151], 0
ds_read_b128 v[176:179], v225 offset:8192
ds_read_b128 v[180:183], v225 offset:8208
s_min_u32 s78, s71, s85
s_add_u32 m0, s83, 0xc000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s78 offen lds
v_mul_f32_e32 v255, v208, v239
v_add_f32_e32 v232, v232, v255
v_mul_f32_e32 v255, v212, v240
v_add_f32_e32 v232, v232, v255
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[192:199], v[144:151], 0
ds_read_b128 v[184:187], v225 offset:12288
ds_read_b128 v[188:191], v225 offset:12304
s_add_u32 m0, s83, 0xe000
s_nop 0
buffer_load_dwordx4 v228, s[8:11], s78 offen lds
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[200:207], v[152:159], v[64:79]
ds_read_b64_tr_b8 v[192:193], v226 offset:49152
ds_read_b64_tr_b8 v[194:195], v226 offset:50176
ds_read_b64_tr_b8 v[196:197], v226 offset:51200
ds_read_b64_tr_b8 v[198:199], v226 offset:52224
s_min_u32 s79, s72, s85
s_add_u32 m0, s84, 0x4000
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[168:175], v[152:159], v[80:95]
ds_read_b64_tr_b8 v[200:201], v226 offset:49408
ds_read_b64_tr_b8 v[202:203], v226 offset:50432
ds_read_b64_tr_b8 v[204:205], v226 offset:51456
ds_read_b64_tr_b8 v[206:207], v226 offset:52480
s_add_u32 m0, s84, 0x6000
s_nop 0
buffer_load_dwordx4 v230, s[12:15], s79 offen lds
s_add_u32 s71, s71, s66
s_add_u32 s72, s72, s66
v_max_f32_e32 v244, v64, v65
v_max3_f32 v244, v66, v67, v244
v_max3_f32 v244, v68, v69, v244
v_max3_f32 v244, v70, v71, v244
v_max3_f32 v244, v72, v73, v244
v_max3_f32 v244, v74, v75, v244
v_max3_f32 v244, v76, v77, v244
v_max3_f32 v244, v78, v79, v244
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[176:183], v[152:159], v[96:111]
ds_read_b64_tr_b8 v[168:169], v226 offset:49664
ds_read_b64_tr_b8 v[170:171], v226 offset:50688
ds_read_b64_tr_b8 v[172:173], v226 offset:51712
ds_read_b64_tr_b8 v[174:175], v226 offset:52736
v_max_f32_e32 v245, v80, v81
v_max3_f32 v245, v82, v83, v245
v_max3_f32 v245, v84, v85, v245
v_max3_f32 v245, v86, v87, v245
v_max3_f32 v245, v88, v89, v245
v_max3_f32 v245, v90, v91, v245
v_max3_f32 v245, v92, v93, v245
v_max3_f32 v245, v94, v95, v245
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[184:191], v[152:159], v[112:127]
s_nop 3
v_max_f32_e32 v246, v96, v97
v_max3_f32 v246, v98, v99, v246
v_max3_f32 v246, v100, v101, v246
v_max3_f32 v246, v102, v103, v246
v_max3_f32 v246, v104, v105, v246
v_max3_f32 v246, v106, v107, v246
v_max3_f32 v246, v108, v109, v246
v_max3_f32 v246, v110, v111, v246
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[192:199], v[128:135], v[0:15], v243, v235 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[176:177], v226 offset:49920
ds_read_b64_tr_b8 v[178:179], v226 offset:50944
ds_read_b64_tr_b8 v[180:181], v226 offset:51968
ds_read_b64_tr_b8 v[182:183], v226 offset:52992
ds_read_b64_tr_b8 v[184:185], v226 offset:53248
ds_read_b64_tr_b8 v[186:187], v226 offset:54272
ds_read_b64_tr_b8 v[188:189], v226 offset:55296
ds_read_b64_tr_b8 v[190:191], v226 offset:56320
v_max_f32_e32 v247, v112, v113
v_max3_f32 v247, v114, v115, v247
v_max3_f32 v247, v116, v117, v247
v_max3_f32 v247, v118, v119, v247
v_max3_f32 v247, v120, v121, v247
v_max3_f32 v247, v122, v123, v247
v_max3_f32 v247, v124, v125, v247
v_max3_f32 v247, v126, v127, v247
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[200:207], v[128:135], v[16:31], v243, v235 op_sel_hi:[0,0,0]
v_max_f32_e32 v244, v244, v245
v_max_f32_e32 v246, v246, v247
s_nop 1
v_permlane32_swap_b32_e32 v244, v245
v_permlane32_swap_b32_e32 v246, v247
v_max_f32_e32 v244, v244, v245
v_max_f32_e32 v246, v246, v247
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[168:175], v[128:135], v[32:47], v243, v235 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[192:193], v226 offset:53504
ds_read_b64_tr_b8 v[194:195], v226 offset:54528
ds_read_b64_tr_b8 v[196:197], v226 offset:55552
ds_read_b64_tr_b8 v[198:199], v226 offset:56576
ds_read_b64_tr_b8 v[200:201], v226 offset:53760
ds_read_b64_tr_b8 v[202:203], v226 offset:54784
ds_read_b64_tr_b8 v[204:205], v226 offset:55808
ds_read_b64_tr_b8 v[206:207], v226 offset:56832
v_max_f32_e32 v245, v244, v246
v_mul_f32_e32 v245, s29, v245
v_max_f32_e32 v247, v231, v245
v_sub_f32_e32 v245, v247, v231
v_cmp_lt_f32_e32 vcc, 0x3e000000, v245
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[74:75], -1, 0
s_cselect_b32 s73, 1, 0
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[176:183], v[128:135], v[48:63], v243, v235 op_sel_hi:[0,0,0]
v_cndmask_b32_e64 v220, v231, v247, s[74:75]
v_fma_f32 v244, v244, s29, -v220
v_floor_f32_e32 v244, v244
v_med3_f32 v244, v244, s82, 0
v_cvt_i32_f32_e32 v233, v244
v_add_u32_e32 v233, 0x7f, v233
v_lshlrev_b32_e32 v237, 23, v233
v_fma_f32 v246, v246, s29, -v220
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[184:191], v[136:143], v[0:15], v243, v236 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[168:169], v226 offset:54016
ds_read_b64_tr_b8 v[170:171], v226 offset:55040
ds_read_b64_tr_b8 v[172:173], v226 offset:56064
ds_read_b64_tr_b8 v[174:175], v226 offset:57088
v_floor_f32_e32 v246, v246
v_med3_f32 v246, v246, s82, 0
v_cvt_i32_f32_e32 v234, v246
v_add_u32_e32 v234, 0x7f, v234
v_lshlrev_b32_e32 v238, 23, v234
v_fma_f32 v245, v220, v251, s30
v_fma_f32 v241, v244, v251, v245
v_fma_f32 v242, v246, v251, v245
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[192:199], v[136:143], v[16:31], v243, v236 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[200:207], v[136:143], v[32:47], v243, v236 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[168:175], v[136:143], v[48:63], v243, v236 op_sel_hi:[0,0,0]
s_cmp_eq_u32 s73, 0
s_cbranch_scc1 69
v_sub_f32_e32 v248, v231, v220
v_exp_f32_e32 v248, v248
s_nop 0
v_pk_mul_f32 v[0:1], v[0:1], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[2:3], v[2:3], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[4:5], v[4:5], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[6:7], v[6:7], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[8:9], v[8:9], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[10:11], v[10:11], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[12:13], v[12:13], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[14:15], v[14:15], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[16:17], v[16:17], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[18:19], v[18:19], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[20:21], v[20:21], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[22:23], v[22:23], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[24:25], v[24:25], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[26:27], v[26:27], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[28:29], v[28:29], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[30:31], v[30:31], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[32:33], v[32:33], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[34:35], v[34:35], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[36:37], v[36:37], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[38:39], v[38:39], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[40:41], v[40:41], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[42:43], v[42:43], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[44:45], v[44:45], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[46:47], v[46:47], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[48:49], v[48:49], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[50:51], v[50:51], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[52:53], v[52:53], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[54:55], v[54:55], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[56:57], v[56:57], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[58:59], v[58:59], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[60:61], v[60:61], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[62:63], v[62:63], v[248:249] op_sel_hi:[1,0]
v_mul_f32_e32 v232, v248, v232
s_waitcnt vmcnt(4)
s_barrier
s_add_u32 s65, s65, 1
s_branch 63037
s_add_u32 s78, s65, s91
s_bitcmp1_b32 s78, 0
s_cbranch_scc1 2316
s_add_u32 s78, s65, 1
s_cmp_ge_u32 s78, s63
s_cbranch_scc1 1407
s_add_u32 s45, s65, s91
s_add_u32 s78, s45, 1
s_and_b32 s78, s78, 3
s_lshl_b32 s86, s78, 14
s_and_b32 s78, s45, 3
s_lshl_b32 s79, s78, 14
s_add_u32 s88, s83, s79
s_add_u32 s78, s45, 2
s_and_b32 s78, s78, 3
s_lshl_b32 s79, s78, 14
s_add_u32 s89, s84, s79
v_add_u32_e32 v217, s86, v224
v_add_u32_e32 v218, s86, v225
v_add_u32_e32 v219, s87, v226
s_cmp_lt_u32 s65, s64
s_cbranch_scc1 430
s_cmp_eq_u32 s65, s64
s_cbranch_scc1 31
s_barrier
s_waitcnt vmcnt(0)
s_add_u32 s78, s65, 4
s_cmp_ge_u32 s78, s63
s_cbranch_scc1 10
s_mul_i32 s78, s78, s66
s_add_u32 m0, s88, 0
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s78 offen lds
s_add_u32 m0, s88, 0x2000
s_nop 0
buffer_load_dwordx4 v228, s[8:11], s78 offen lds
s_add_u32 s79, s65, 2
s_cmp_ge_u32 s79, s63
s_cbranch_scc1 10
s_mul_i32 s79, s79, s66
s_add_u32 m0, s89, 0
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_add_u32 m0, s89, 0x2000
s_nop 0
buffer_load_dwordx4 v230, s[12:15], s79 offen lds
s_barrier
s_add_u32 s65, s65, 1
s_branch 2263
s_setprio 0
v_fma_f32 v64, v64, s28, v241
v_fma_f32 v65, v65, s28, v241
v_fma_f32 v66, v66, s28, v241
v_fma_f32 v67, v67, s28, v241
v_fma_f32 v68, v68, s28, v241
v_fma_f32 v69, v69, s28, v241
v_fma_f32 v70, v70, s28, v241
v_fma_f32 v71, v71, s28, v241
v_fma_f32 v72, v72, s28, v241
v_fma_f32 v73, v73, s28, v241
v_fma_f32 v74, v74, s28, v241
v_fma_f32 v75, v75, s28, v241
v_fma_f32 v76, v76, s28, v241
v_fma_f32 v77, v77, s28, v241
v_fma_f32 v78, v78, s28, v241
v_fma_f32 v79, v79, s28, v241
v_fma_f32 v80, v80, s28, v241
v_cvt_pk_u8_f32 v128, v64, 0, 0
v_fma_f32 v81, v81, s28, v241
v_cvt_pk_u8_f32 v129, v68, 0, 0
v_fma_f32 v82, v82, s28, v241
v_cvt_pk_u8_f32 v130, v72, 0, 0
v_fma_f32 v83, v83, s28, v241
v_cvt_pk_u8_f32 v131, v76, 0, 0
v_fma_f32 v84, v84, s28, v241
v_cvt_pk_u8_f32 v128, v65, 1, v128
v_fma_f32 v85, v85, s28, v241
v_cvt_pk_u8_f32 v129, v69, 1, v129
v_fma_f32 v86, v86, s28, v241
v_cvt_pk_u8_f32 v130, v73, 1, v130
v_fma_f32 v87, v87, s28, v241
v_cvt_pk_u8_f32 v131, v77, 1, v131
v_fma_f32 v88, v88, s28, v241
v_cvt_pk_u8_f32 v128, v66, 2, v128
v_fma_f32 v89, v89, s28, v241
v_cvt_pk_u8_f32 v129, v70, 2, v129
v_fma_f32 v90, v90, s28, v241
v_cvt_pk_u8_f32 v130, v74, 2, v130
v_fma_f32 v91, v91, s28, v241
v_cvt_pk_u8_f32 v131, v78, 2, v131
v_fma_f32 v92, v92, s28, v241
v_cvt_pk_u8_f32 v128, v67, 3, v128
v_fma_f32 v93, v93, s28, v241
v_cvt_pk_u8_f32 v129, v71, 3, v129
v_fma_f32 v94, v94, s28, v241
v_cvt_pk_u8_f32 v130, v75, 3, v130
v_fma_f32 v95, v95, s28, v241
v_cvt_pk_u8_f32 v131, v79, 3, v131
v_fma_f32 v96, v96, s28, v242
v_cvt_pk_u8_f32 v132, v80, 0, 0
v_fma_f32 v97, v97, s28, v242
v_cvt_pk_u8_f32 v133, v84, 0, 0
v_fma_f32 v98, v98, s28, v242
v_cvt_pk_u8_f32 v134, v88, 0, 0
v_fma_f32 v99, v99, s28, v242
v_cvt_pk_u8_f32 v135, v92, 0, 0
v_fma_f32 v100, v100, s28, v242
v_cvt_pk_u8_f32 v132, v81, 1, v132
v_fma_f32 v101, v101, s28, v242
v_cvt_pk_u8_f32 v133, v85, 1, v133
v_fma_f32 v102, v102, s28, v242
v_cvt_pk_u8_f32 v134, v89, 1, v134
v_fma_f32 v103, v103, s28, v242
v_cvt_pk_u8_f32 v135, v93, 1, v135
v_fma_f32 v104, v104, s28, v242
v_cvt_pk_u8_f32 v132, v82, 2, v132
v_fma_f32 v105, v105, s28, v242
v_cvt_pk_u8_f32 v133, v86, 2, v133
v_fma_f32 v106, v106, s28, v242
v_cvt_pk_u8_f32 v134, v90, 2, v134
v_fma_f32 v107, v107, s28, v242
v_cvt_pk_u8_f32 v135, v94, 2, v135
v_fma_f32 v108, v108, s28, v242
v_cvt_pk_u8_f32 v132, v83, 3, v132
v_fma_f32 v109, v109, s28, v242
v_cvt_pk_u8_f32 v133, v87, 3, v133
v_fma_f32 v110, v110, s28, v242
v_cvt_pk_u8_f32 v134, v91, 3, v134
v_fma_f32 v111, v111, s28, v242
v_cvt_pk_u8_f32 v135, v95, 3, v135
v_fma_f32 v112, v112, s28, v242
v_cvt_pk_u8_f32 v136, v96, 0, 0
v_fma_f32 v113, v113, s28, v242
v_cvt_pk_u8_f32 v137, v100, 0, 0
v_fma_f32 v114, v114, s28, v242
v_cvt_pk_u8_f32 v138, v104, 0, 0
v_fma_f32 v115, v115, s28, v242
v_cvt_pk_u8_f32 v139, v108, 0, 0
v_fma_f32 v116, v116, s28, v242
v_cvt_pk_u8_f32 v136, v97, 1, v136
v_fma_f32 v117, v117, s28, v242
v_cvt_pk_u8_f32 v137, v101, 1, v137
v_fma_f32 v118, v118, s28, v242
v_cvt_pk_u8_f32 v138, v105, 1, v138
v_fma_f32 v119, v119, s28, v242
v_cvt_pk_u8_f32 v139, v109, 1, v139
v_fma_f32 v120, v120, s28, v242
v_cvt_pk_u8_f32 v136, v98, 2, v136
v_fma_f32 v121, v121, s28, v242
v_cvt_pk_u8_f32 v137, v102, 2, v137
v_fma_f32 v122, v122, s28, v242
v_cvt_pk_u8_f32 v138, v106, 2, v138
v_fma_f32 v123, v123, s28, v242
v_cvt_pk_u8_f32 v139, v110, 2, v139
v_fma_f32 v124, v124, s28, v242
v_cvt_pk_u8_f32 v136, v99, 3, v136
v_fma_f32 v125, v125, s28, v242
v_cvt_pk_u8_f32 v137, v103, 3, v137
v_fma_f32 v126, v126, s28, v242
v_cvt_pk_u8_f32 v138, v107, 3, v138
v_fma_f32 v127, v127, s28, v242
v_cvt_pk_u8_f32 v139, v111, 3, v139
v_cvt_pk_u8_f32 v140, v112, 0, 0
v_cvt_pk_u8_f32 v141, v116, 0, 0
v_cvt_pk_u8_f32 v142, v120, 0, 0
v_cvt_pk_u8_f32 v143, v124, 0, 0
v_cvt_pk_u8_f32 v140, v113, 1, v140
v_cvt_pk_u8_f32 v141, v117, 1, v141
v_cvt_pk_u8_f32 v142, v121, 1, v142
v_cvt_pk_u8_f32 v143, v125, 1, v143
v_cvt_pk_u8_f32 v140, v114, 2, v140
v_cvt_pk_u8_f32 v141, v118, 2, v141
v_cvt_pk_u8_f32 v142, v122, 2, v142
v_cvt_pk_u8_f32 v143, v126, 2, v143
v_cvt_pk_u8_f32 v140, v115, 3, v140
v_cvt_pk_u8_f32 v141, v119, 3, v141
v_cvt_pk_u8_f32 v142, v123, 3, v142
v_cvt_pk_u8_f32 v143, v127, 3, v143
s_barrier
s_setprio 1
s_waitcnt vmcnt(0)
v_mfma_f32_16x16x128_f8f6f4 v[208:211], v[160:167], v[128:135], 0
v_mfma_f32_16x16x128_f8f6f4 v[212:215], v[160:167], v[136:143], 0
ds_read_b64_tr_b8 v[168:169], v219
ds_read_b64_tr_b8 v[170:171], v219 offset:1024
ds_read_b64_tr_b8 v[172:173], v219 offset:2048
ds_read_b64_tr_b8 v[174:175], v219 offset:3072
ds_read_b64_tr_b8 v[176:177], v219 offset:256
ds_read_b64_tr_b8 v[178:179], v219 offset:1280
ds_read_b64_tr_b8 v[180:181], v219 offset:2304
ds_read_b64_tr_b8 v[182:183], v219 offset:3328
ds_read_b64_tr_b8 v[184:185], v219 offset:512
ds_read_b64_tr_b8 v[186:187], v219 offset:1536
ds_read_b64_tr_b8 v[188:189], v219 offset:2560
ds_read_b64_tr_b8 v[190:191], v219 offset:3584
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[168:175], v[128:135], v[0:15], v243, v233 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[192:193], v219 offset:768
ds_read_b64_tr_b8 v[194:195], v219 offset:1792
ds_read_b64_tr_b8 v[196:197], v219 offset:2816
ds_read_b64_tr_b8 v[198:199], v219 offset:3840
ds_read_b64_tr_b8 v[200:201], v219 offset:4096
ds_read_b64_tr_b8 v[202:203], v219 offset:5120
ds_read_b64_tr_b8 v[204:205], v219 offset:6144
ds_read_b64_tr_b8 v[206:207], v219 offset:7168
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[176:183], v[128:135], v[16:31], v243, v233 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[184:191], v[128:135], v[32:47], v243, v233 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[168:169], v219 offset:4352
ds_read_b64_tr_b8 v[170:171], v219 offset:5376
ds_read_b64_tr_b8 v[172:173], v219 offset:6400
ds_read_b64_tr_b8 v[174:175], v219 offset:7424
ds_read_b64_tr_b8 v[176:177], v219 offset:4608
ds_read_b64_tr_b8 v[178:179], v219 offset:5632
ds_read_b64_tr_b8 v[180:181], v219 offset:6656
ds_read_b64_tr_b8 v[182:183], v219 offset:7680
s_add_u32 s78, s65, 4
s_cmp_ge_u32 s78, s63
s_cbranch_scc1 10
s_mul_i32 s78, s78, s66
s_add_u32 m0, s88, 0
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s78 offen lds
s_add_u32 m0, s88, 0x2000
s_nop 0
buffer_load_dwordx4 v228, s[8:11], s78 offen lds
v_mul_f32_e32 v255, v208, v237
v_add_f32_e32 v232, v232, v255
v_mul_f32_e32 v255, v212, v238
v_add_f32_e32 v232, v232, v255
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[192:199], v[128:135], v[48:63], v243, v233 op_sel_hi:[0,0,0]
s_add_u32 s79, s65, 2
s_cmp_ge_u32 s79, s63
s_cbranch_scc1 10
s_mul_i32 s79, s79, s66
s_add_u32 m0, s89, 0
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_add_u32 m0, s89, 0x2000
s_nop 0
buffer_load_dwordx4 v230, s[12:15], s79 offen lds
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[200:207], v[136:143], v[0:15], v243, v234 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[184:185], v219 offset:4864
ds_read_b64_tr_b8 v[186:187], v219 offset:5888
ds_read_b64_tr_b8 v[188:189], v219 offset:6912
ds_read_b64_tr_b8 v[190:191], v219 offset:7936
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[168:175], v[136:143], v[16:31], v243, v234 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[176:183], v[136:143], v[32:47], v243, v234 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[184:191], v[136:143], v[48:63], v243, v234 op_sel_hi:[0,0,0]
s_barrier
s_add_u32 s65, s65, 1
s_branch 1866
s_setprio 0
v_fma_f32 v64, v64, s28, v241
v_fma_f32 v65, v65, s28, v241
v_fma_f32 v66, v66, s28, v241
v_fma_f32 v67, v67, s28, v241
v_fma_f32 v68, v68, s28, v241
v_fma_f32 v69, v69, s28, v241
v_fma_f32 v70, v70, s28, v241
v_fma_f32 v71, v71, s28, v241
v_fma_f32 v72, v72, s28, v241
v_fma_f32 v73, v73, s28, v241
v_fma_f32 v74, v74, s28, v241
v_fma_f32 v75, v75, s28, v241
v_fma_f32 v76, v76, s28, v241
v_fma_f32 v77, v77, s28, v241
v_fma_f32 v78, v78, s28, v241
v_fma_f32 v79, v79, s28, v241
v_fma_f32 v80, v80, s28, v241
v_cvt_pk_u8_f32 v128, v64, 0, 0
v_fma_f32 v81, v81, s28, v241
v_cvt_pk_u8_f32 v129, v68, 0, 0
v_fma_f32 v82, v82, s28, v241
v_cvt_pk_u8_f32 v130, v72, 0, 0
v_fma_f32 v83, v83, s28, v241
v_cvt_pk_u8_f32 v131, v76, 0, 0
v_fma_f32 v84, v84, s28, v241
v_cvt_pk_u8_f32 v128, v65, 1, v128
v_fma_f32 v85, v85, s28, v241
v_cvt_pk_u8_f32 v129, v69, 1, v129
v_fma_f32 v86, v86, s28, v241
v_cvt_pk_u8_f32 v130, v73, 1, v130
v_fma_f32 v87, v87, s28, v241
v_cvt_pk_u8_f32 v131, v77, 1, v131
v_fma_f32 v88, v88, s28, v241
v_cvt_pk_u8_f32 v128, v66, 2, v128
v_fma_f32 v89, v89, s28, v241
v_cvt_pk_u8_f32 v129, v70, 2, v129
v_fma_f32 v90, v90, s28, v241
v_cvt_pk_u8_f32 v130, v74, 2, v130
v_fma_f32 v91, v91, s28, v241
v_cvt_pk_u8_f32 v131, v78, 2, v131
v_fma_f32 v92, v92, s28, v241
v_cvt_pk_u8_f32 v128, v67, 3, v128
v_fma_f32 v93, v93, s28, v241
v_cvt_pk_u8_f32 v129, v71, 3, v129
v_fma_f32 v94, v94, s28, v241
v_cvt_pk_u8_f32 v130, v75, 3, v130
v_fma_f32 v95, v95, s28, v241
v_cvt_pk_u8_f32 v131, v79, 3, v131
v_fma_f32 v96, v96, s28, v242
v_cvt_pk_u8_f32 v132, v80, 0, 0
v_fma_f32 v97, v97, s28, v242
v_cvt_pk_u8_f32 v133, v84, 0, 0
v_fma_f32 v98, v98, s28, v242
v_cvt_pk_u8_f32 v134, v88, 0, 0
v_fma_f32 v99, v99, s28, v242
v_cvt_pk_u8_f32 v135, v92, 0, 0
v_fma_f32 v100, v100, s28, v242
v_cvt_pk_u8_f32 v132, v81, 1, v132
v_fma_f32 v101, v101, s28, v242
v_cvt_pk_u8_f32 v133, v85, 1, v133
v_fma_f32 v102, v102, s28, v242
v_cvt_pk_u8_f32 v134, v89, 1, v134
v_fma_f32 v103, v103, s28, v242
v_cvt_pk_u8_f32 v135, v93, 1, v135
v_fma_f32 v104, v104, s28, v242
v_cvt_pk_u8_f32 v132, v82, 2, v132
v_fma_f32 v105, v105, s28, v242
v_cvt_pk_u8_f32 v133, v86, 2, v133
v_fma_f32 v106, v106, s28, v242
v_cvt_pk_u8_f32 v134, v90, 2, v134
v_fma_f32 v107, v107, s28, v242
v_cvt_pk_u8_f32 v135, v94, 2, v135
v_fma_f32 v108, v108, s28, v242
v_cvt_pk_u8_f32 v132, v83, 3, v132
v_fma_f32 v109, v109, s28, v242
v_cvt_pk_u8_f32 v133, v87, 3, v133
v_fma_f32 v110, v110, s28, v242
v_cvt_pk_u8_f32 v134, v91, 3, v134
v_fma_f32 v111, v111, s28, v242
v_cvt_pk_u8_f32 v135, v95, 3, v135
v_fma_f32 v112, v112, s28, v242
v_cvt_pk_u8_f32 v136, v96, 0, 0
v_fma_f32 v113, v113, s28, v242
v_cvt_pk_u8_f32 v137, v100, 0, 0
v_fma_f32 v114, v114, s28, v242
v_cvt_pk_u8_f32 v138, v104, 0, 0
v_fma_f32 v115, v115, s28, v242
v_cvt_pk_u8_f32 v139, v108, 0, 0
v_fma_f32 v116, v116, s28, v242
v_cvt_pk_u8_f32 v136, v97, 1, v136
v_fma_f32 v117, v117, s28, v242
v_cvt_pk_u8_f32 v137, v101, 1, v137
v_fma_f32 v118, v118, s28, v242
v_cvt_pk_u8_f32 v138, v105, 1, v138
v_fma_f32 v119, v119, s28, v242
v_cvt_pk_u8_f32 v139, v109, 1, v139
v_fma_f32 v120, v120, s28, v242
v_cvt_pk_u8_f32 v136, v98, 2, v136
v_fma_f32 v121, v121, s28, v242
v_cvt_pk_u8_f32 v137, v102, 2, v137
v_fma_f32 v122, v122, s28, v242
v_cvt_pk_u8_f32 v138, v106, 2, v138
v_fma_f32 v123, v123, s28, v242
v_cvt_pk_u8_f32 v139, v110, 2, v139
v_fma_f32 v124, v124, s28, v242
v_cvt_pk_u8_f32 v136, v99, 3, v136
v_fma_f32 v125, v125, s28, v242
v_cvt_pk_u8_f32 v137, v103, 3, v137
v_fma_f32 v126, v126, s28, v242
v_cvt_pk_u8_f32 v138, v107, 3, v138
v_fma_f32 v127, v127, s28, v242
v_cvt_pk_u8_f32 v139, v111, 3, v139
v_cvt_pk_u8_f32 v140, v112, 0, 0
v_cvt_pk_u8_f32 v141, v116, 0, 0
v_cvt_pk_u8_f32 v142, v120, 0, 0
v_cvt_pk_u8_f32 v143, v124, 0, 0
v_cvt_pk_u8_f32 v140, v113, 1, v140
v_cvt_pk_u8_f32 v141, v117, 1, v141
v_cvt_pk_u8_f32 v142, v121, 1, v142
v_cvt_pk_u8_f32 v143, v125, 1, v143
v_cvt_pk_u8_f32 v140, v114, 2, v140
v_cvt_pk_u8_f32 v141, v118, 2, v141
v_cvt_pk_u8_f32 v142, v122, 2, v142
v_cvt_pk_u8_f32 v143, v126, 2, v143
v_cvt_pk_u8_f32 v140, v115, 3, v140
v_cvt_pk_u8_f32 v141, v119, 3, v141
v_cvt_pk_u8_f32 v142, v123, 3, v142
v_cvt_pk_u8_f32 v143, v127, 3, v143
ds_read_b128 v[168:171], v217
ds_read_b128 v[172:175], v217 offset:16
ds_read_b128 v[176:179], v217 offset:4096
ds_read_b128 v[180:183], v217 offset:4112
s_barrier
s_setprio 1
s_waitcnt vmcnt(0)
v_mfma_f32_16x16x128_f8f6f4 v[208:211], v[160:167], v[128:135], 0
s_add_u32 s81, s65, 1
s_lshl_b32 s81, s81, 7
s_sub_u32 s81, s62, s81
v_and_b32_e32 v255, 31, v216
v_add_u32_e32 v249, s81, v255
v_bfe_u32 v255, v216, 5, 1
v_lshlrev_b32_e32 v255, 2, v255
v_sub_u32_e32 v249, v249, v255
v_mfma_f32_16x16x128_f8f6f4 v[212:215], v[160:167], v[136:143], 0
ds_read_b128 v[184:187], v217 offset:8192
ds_read_b128 v[188:191], v217 offset:8208
ds_read_b128 v[192:195], v217 offset:12288
ds_read_b128 v[196:199], v217 offset:12304
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[168:175], v[144:151], 0
ds_read_b128 v[200:203], v218
ds_read_b128 v[204:207], v218 offset:16
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[176:183], v[144:151], 0
ds_read_b128 v[168:171], v218 offset:4096
ds_read_b128 v[172:175], v218 offset:4112
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[184:191], v[144:151], 0
ds_read_b128 v[176:179], v218 offset:8192
ds_read_b128 v[180:183], v218 offset:8208
s_add_u32 s78, s65, 4
s_cmp_ge_u32 s78, s63
s_cbranch_scc1 10
s_mul_i32 s78, s78, s66
s_add_u32 m0, s88, 0
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s78 offen lds
s_add_u32 m0, s88, 0x2000
s_nop 0
buffer_load_dwordx4 v228, s[8:11], s78 offen lds
v_mul_f32_e32 v255, v208, v237
v_add_f32_e32 v232, v232, v255
v_mul_f32_e32 v255, v212, v238
v_add_f32_e32 v232, v232, v255
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[192:199], v[144:151], 0
ds_read_b128 v[184:187], v218 offset:12288
ds_read_b128 v[188:191], v218 offset:12304
s_add_u32 s79, s65, 2
s_cmp_ge_u32 s79, s63
s_cbranch_scc1 10
s_mul_i32 s79, s79, s66
s_add_u32 m0, s89, 0
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_add_u32 m0, s89, 0x2000
s_nop 0
buffer_load_dwordx4 v230, s[12:15], s79 offen lds
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[200:207], v[152:159], v[64:79]
ds_read_b64_tr_b8 v[192:193], v219
ds_read_b64_tr_b8 v[194:195], v219 offset:1024
ds_read_b64_tr_b8 v[196:197], v219 offset:2048
ds_read_b64_tr_b8 v[198:199], v219 offset:3072
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[168:175], v[152:159], v[80:95]
ds_read_b64_tr_b8 v[200:201], v219 offset:256
ds_read_b64_tr_b8 v[202:203], v219 offset:1280
ds_read_b64_tr_b8 v[204:205], v219 offset:2304
ds_read_b64_tr_b8 v[206:207], v219 offset:3328
s_sub_i32 s80, s81, 0
s_cmp_ge_i32 s80, 32
s_cbranch_scc1 69
s_cmp_lt_i32 s80, 0
s_cbranch_scc1 49
v_cmp_gt_i32_e32 vcc, 0, v249
v_cndmask_b32_e64 v64, v64, v250, vcc
v_cmp_gt_i32_e32 vcc, 1, v249
v_cndmask_b32_e64 v65, v65, v250, vcc
v_cmp_gt_i32_e32 vcc, 2, v249
v_cndmask_b32_e64 v66, v66, v250, vcc
v_cmp_gt_i32_e32 vcc, 3, v249
v_cndmask_b32_e64 v67, v67, v250, vcc
v_cmp_gt_i32_e32 vcc, 8, v249
v_cndmask_b32_e64 v68, v68, v250, vcc
v_cmp_gt_i32_e32 vcc, 9, v249
v_cndmask_b32_e64 v69, v69, v250, vcc
v_cmp_gt_i32_e32 vcc, 10, v249
v_cndmask_b32_e64 v70, v70, v250, vcc
v_cmp_gt_i32_e32 vcc, 11, v249
v_cndmask_b32_e64 v71, v71, v250, vcc
v_cmp_gt_i32_e32 vcc, 16, v249
v_cndmask_b32_e64 v72, v72, v250, vcc
v_cmp_gt_i32_e32 vcc, 17, v249
v_cndmask_b32_e64 v73, v73, v250, vcc
v_cmp_gt_i32_e32 vcc, 18, v249
v_cndmask_b32_e64 v74, v74, v250, vcc
v_cmp_gt_i32_e32 vcc, 19, v249
v_cndmask_b32_e64 v75, v75, v250, vcc
v_cmp_gt_i32_e32 vcc, 24, v249
v_cndmask_b32_e64 v76, v76, v250, vcc
v_cmp_gt_i32_e32 vcc, 25, v249
v_cndmask_b32_e64 v77, v77, v250, vcc
v_cmp_gt_i32_e32 vcc, 26, v249
v_cndmask_b32_e64 v78, v78, v250, vcc
v_cmp_gt_i32_e32 vcc, 27, v249
v_cndmask_b32_e64 v79, v79, v250, vcc
s_branch 18
s_nop 15
s_nop 3
s_nop 1
v_max_f32_e32 v244, v64, v65
v_max3_f32 v244, v66, v67, v244
v_max3_f32 v244, v68, v69, v244
v_max3_f32 v244, v70, v71, v244
v_max3_f32 v244, v72, v73, v244
v_max3_f32 v244, v74, v75, v244
v_max3_f32 v244, v76, v77, v244
v_max3_f32 v244, v78, v79, v244
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[176:183], v[152:159], v[96:111]
ds_read_b64_tr_b8 v[168:169], v219 offset:512
ds_read_b64_tr_b8 v[170:171], v219 offset:1536
ds_read_b64_tr_b8 v[172:173], v219 offset:2560
ds_read_b64_tr_b8 v[174:175], v219 offset:3584
s_sub_i32 s80, s81, 32
s_cmp_ge_i32 s80, 32
s_cbranch_scc1 69
s_cmp_lt_i32 s80, 0
s_cbranch_scc1 49
v_cmp_gt_i32_e32 vcc, 32, v249
v_cndmask_b32_e64 v80, v80, v250, vcc
v_cmp_gt_i32_e32 vcc, 33, v249
v_cndmask_b32_e64 v81, v81, v250, vcc
v_cmp_gt_i32_e32 vcc, 34, v249
v_cndmask_b32_e64 v82, v82, v250, vcc
v_cmp_gt_i32_e32 vcc, 35, v249
v_cndmask_b32_e64 v83, v83, v250, vcc
v_cmp_gt_i32_e32 vcc, 40, v249
v_cndmask_b32_e64 v84, v84, v250, vcc
v_cmp_gt_i32_e32 vcc, 41, v249
v_cndmask_b32_e64 v85, v85, v250, vcc
v_cmp_gt_i32_e32 vcc, 42, v249
v_cndmask_b32_e64 v86, v86, v250, vcc
v_cmp_gt_i32_e32 vcc, 43, v249
v_cndmask_b32_e64 v87, v87, v250, vcc
v_cmp_gt_i32_e32 vcc, 48, v249
v_cndmask_b32_e64 v88, v88, v250, vcc
v_cmp_gt_i32_e32 vcc, 49, v249
v_cndmask_b32_e64 v89, v89, v250, vcc
v_cmp_gt_i32_e32 vcc, 50, v249
v_cndmask_b32_e64 v90, v90, v250, vcc
v_cmp_gt_i32_e32 vcc, 51, v249
v_cndmask_b32_e64 v91, v91, v250, vcc
v_cmp_gt_i32_e32 vcc, 56, v249
v_cndmask_b32_e64 v92, v92, v250, vcc
v_cmp_gt_i32_e32 vcc, 57, v249
v_cndmask_b32_e64 v93, v93, v250, vcc
v_cmp_gt_i32_e32 vcc, 58, v249
v_cndmask_b32_e64 v94, v94, v250, vcc
v_cmp_gt_i32_e32 vcc, 59, v249
v_cndmask_b32_e64 v95, v95, v250, vcc
s_branch 18
s_nop 15
s_nop 3
s_nop 1
v_max_f32_e32 v245, v80, v81
v_max3_f32 v245, v82, v83, v245
v_max3_f32 v245, v84, v85, v245
v_max3_f32 v245, v86, v87, v245
v_max3_f32 v245, v88, v89, v245
v_max3_f32 v245, v90, v91, v245
v_max3_f32 v245, v92, v93, v245
v_max3_f32 v245, v94, v95, v245
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[184:191], v[152:159], v[112:127]
s_sub_i32 s80, s81, 64
s_cmp_ge_i32 s80, 32
s_cbranch_scc1 84
s_cmp_lt_i32 s80, 0
s_cbranch_scc1 64
v_cmp_gt_i32_e32 vcc, 64, v249
v_cndmask_b32_e64 v96, v96, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x41, v249
v_cndmask_b32_e64 v97, v97, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x42, v249
v_cndmask_b32_e64 v98, v98, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x43, v249
v_cndmask_b32_e64 v99, v99, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x48, v249
v_cndmask_b32_e64 v100, v100, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x49, v249
v_cndmask_b32_e64 v101, v101, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x4a, v249
v_cndmask_b32_e64 v102, v102, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x4b, v249
v_cndmask_b32_e64 v103, v103, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x50, v249
v_cndmask_b32_e64 v104, v104, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x51, v249
v_cndmask_b32_e64 v105, v105, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x52, v249
v_cndmask_b32_e64 v106, v106, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x53, v249
v_cndmask_b32_e64 v107, v107, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x58, v249
v_cndmask_b32_e64 v108, v108, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x59, v249
v_cndmask_b32_e64 v109, v109, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x5a, v249
v_cndmask_b32_e64 v110, v110, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x5b, v249
v_cndmask_b32_e64 v111, v111, v250, vcc
s_branch 18
s_nop 15
s_nop 3
s_nop 1
v_max_f32_e32 v246, v96, v97
v_max3_f32 v246, v98, v99, v246
v_max3_f32 v246, v100, v101, v246
v_max3_f32 v246, v102, v103, v246
v_max3_f32 v246, v104, v105, v246
v_max3_f32 v246, v106, v107, v246
v_max3_f32 v246, v108, v109, v246
v_max3_f32 v246, v110, v111, v246
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[192:199], v[128:135], v[0:15], v243, v233 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[176:177], v219 offset:768
ds_read_b64_tr_b8 v[178:179], v219 offset:1792
ds_read_b64_tr_b8 v[180:181], v219 offset:2816
ds_read_b64_tr_b8 v[182:183], v219 offset:3840
ds_read_b64_tr_b8 v[184:185], v219 offset:4096
ds_read_b64_tr_b8 v[186:187], v219 offset:5120
ds_read_b64_tr_b8 v[188:189], v219 offset:6144
ds_read_b64_tr_b8 v[190:191], v219 offset:7168
s_sub_i32 s80, s81, 0x60
s_cmp_ge_i32 s80, 32
s_cbranch_scc1 86
s_cmp_lt_i32 s80, 0
s_cbranch_scc1 65
v_cmp_gt_i32_e32 vcc, 0x60, v249
v_cndmask_b32_e64 v112, v112, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x61, v249
v_cndmask_b32_e64 v113, v113, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x62, v249
v_cndmask_b32_e64 v114, v114, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x63, v249
v_cndmask_b32_e64 v115, v115, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x68, v249
v_cndmask_b32_e64 v116, v116, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x69, v249
v_cndmask_b32_e64 v117, v117, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x6a, v249
v_cndmask_b32_e64 v118, v118, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x6b, v249
v_cndmask_b32_e64 v119, v119, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x70, v249
v_cndmask_b32_e64 v120, v120, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x71, v249
v_cndmask_b32_e64 v121, v121, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x72, v249
v_cndmask_b32_e64 v122, v122, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x73, v249
v_cndmask_b32_e64 v123, v123, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x78, v249
v_cndmask_b32_e64 v124, v124, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x79, v249
v_cndmask_b32_e64 v125, v125, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x7a, v249
v_cndmask_b32_e64 v126, v126, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x7b, v249
v_cndmask_b32_e64 v127, v127, v250, vcc
s_branch 21
s_nop 15
s_nop 3
s_branch 2
s_nop 15
s_nop 3
s_nop 1
v_max_f32_e32 v247, v112, v113
v_max3_f32 v247, v114, v115, v247
v_max3_f32 v247, v116, v117, v247
v_max3_f32 v247, v118, v119, v247
v_max3_f32 v247, v120, v121, v247
v_max3_f32 v247, v122, v123, v247
v_max3_f32 v247, v124, v125, v247
v_max3_f32 v247, v126, v127, v247
v_max_f32_e32 v244, v244, v245
v_max_f32_e32 v246, v246, v247
s_nop 1
v_permlane32_swap_b32_e32 v244, v245
v_permlane32_swap_b32_e32 v246, v247
v_max_f32_e32 v244, v244, v245
v_max_f32_e32 v246, v246, v247
v_max_f32_e32 v245, v244, v246
v_mul_f32_e32 v245, s29, v245
v_max_f32_e32 v247, v231, v245
v_sub_f32_e32 v245, v247, v231
v_cmp_lt_f32_e32 vcc, 0x3e000000, v245
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[74:75], -1, 0
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[200:207], v[128:135], v[16:31], v243, v233 op_sel_hi:[0,0,0]
s_cselect_b32 s73, 1, 0
v_cndmask_b32_e64 v220, v231, v247, s[74:75]
v_fma_f32 v244, v244, s29, -v220
v_floor_f32_e32 v244, v244
v_med3_f32 v244, v244, s82, 0
v_cvt_i32_f32_e32 v235, v244
v_add_u32_e32 v235, 0x7f, v235
v_lshlrev_b32_e32 v239, 23, v235
v_fma_f32 v246, v246, s29, -v220
v_floor_f32_e32 v246, v246
v_med3_f32 v246, v246, s82, 0
v_cvt_i32_f32_e32 v236, v246
v_add_u32_e32 v236, 0x7f, v236
v_lshlrev_b32_e32 v240, 23, v236
v_fma_f32 v245, v220, v251, s30
v_fma_f32 v241, v244, v251, v245
v_fma_f32 v242, v246, v251, v245
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[168:175], v[128:135], v[32:47], v243, v233 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[192:193], v219 offset:4352
ds_read_b64_tr_b8 v[194:195], v219 offset:5376
ds_read_b64_tr_b8 v[196:197], v219 offset:6400
ds_read_b64_tr_b8 v[198:199], v219 offset:7424
ds_read_b64_tr_b8 v[200:201], v219 offset:4608
ds_read_b64_tr_b8 v[202:203], v219 offset:5632
ds_read_b64_tr_b8 v[204:205], v219 offset:6656
ds_read_b64_tr_b8 v[206:207], v219 offset:7680
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[176:183], v[128:135], v[48:63], v243, v233 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[184:191], v[136:143], v[0:15], v243, v234 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[168:169], v219 offset:4864
ds_read_b64_tr_b8 v[170:171], v219 offset:5888
ds_read_b64_tr_b8 v[172:173], v219 offset:6912
ds_read_b64_tr_b8 v[174:175], v219 offset:7936
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[192:199], v[136:143], v[16:31], v243, v234 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[200:207], v[136:143], v[32:47], v243, v234 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[168:175], v[136:143], v[48:63], v243, v234 op_sel_hi:[0,0,0]
s_cmp_eq_u32 s73, 0
s_cbranch_scc1 69
v_sub_f32_e32 v248, v231, v220
v_exp_f32_e32 v248, v248
s_nop 0
v_pk_mul_f32 v[0:1], v[0:1], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[2:3], v[2:3], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[4:5], v[4:5], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[6:7], v[6:7], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[8:9], v[8:9], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[10:11], v[10:11], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[12:13], v[12:13], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[14:15], v[14:15], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[16:17], v[16:17], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[18:19], v[18:19], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[20:21], v[20:21], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[22:23], v[22:23], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[24:25], v[24:25], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[26:27], v[26:27], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[28:29], v[28:29], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[30:31], v[30:31], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[32:33], v[32:33], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[34:35], v[34:35], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[36:37], v[36:37], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[38:39], v[38:39], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[40:41], v[40:41], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[42:43], v[42:43], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[44:45], v[44:45], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[46:47], v[46:47], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[48:49], v[48:49], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[50:51], v[50:51], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[52:53], v[52:53], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[54:55], v[54:55], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[56:57], v[56:57], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[58:59], v[58:59], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[60:61], v[60:61], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[62:63], v[62:63], v[248:249] op_sel_hi:[1,0]
v_mul_f32_e32 v232, v248, v232
s_barrier
s_add_u32 s65, s65, 1
s_branch 906
s_add_u32 s45, s65, s91
s_add_u32 s78, s45, 1
s_and_b32 s78, s78, 3
s_lshl_b32 s86, s78, 14
s_and_b32 s78, s45, 3
s_lshl_b32 s79, s78, 14
s_add_u32 s88, s83, s79
s_add_u32 s78, s45, 2
s_and_b32 s78, s78, 3
s_lshl_b32 s79, s78, 14
s_add_u32 s89, s84, s79
v_add_u32_e32 v217, s86, v224
v_add_u32_e32 v218, s86, v225
v_add_u32_e32 v219, s87, v226
s_cmp_lt_u32 s64, s65
s_cbranch_scc1 626
s_setprio 0
v_fma_f32 v64, v64, s28, v241
v_fma_f32 v65, v65, s28, v241
v_fma_f32 v66, v66, s28, v241
v_fma_f32 v67, v67, s28, v241
v_fma_f32 v68, v68, s28, v241
v_fma_f32 v69, v69, s28, v241
v_fma_f32 v70, v70, s28, v241
v_fma_f32 v71, v71, s28, v241
v_fma_f32 v72, v72, s28, v241
v_fma_f32 v73, v73, s28, v241
v_fma_f32 v74, v74, s28, v241
v_fma_f32 v75, v75, s28, v241
v_fma_f32 v76, v76, s28, v241
v_fma_f32 v77, v77, s28, v241
v_fma_f32 v78, v78, s28, v241
v_fma_f32 v79, v79, s28, v241
v_fma_f32 v80, v80, s28, v241
v_cvt_pk_u8_f32 v128, v64, 0, 0
v_fma_f32 v81, v81, s28, v241
v_cvt_pk_u8_f32 v129, v68, 0, 0
v_fma_f32 v82, v82, s28, v241
v_cvt_pk_u8_f32 v130, v72, 0, 0
v_fma_f32 v83, v83, s28, v241
v_cvt_pk_u8_f32 v131, v76, 0, 0
v_fma_f32 v84, v84, s28, v241
v_cvt_pk_u8_f32 v128, v65, 1, v128
v_fma_f32 v85, v85, s28, v241
v_cvt_pk_u8_f32 v129, v69, 1, v129
v_fma_f32 v86, v86, s28, v241
v_cvt_pk_u8_f32 v130, v73, 1, v130
v_fma_f32 v87, v87, s28, v241
v_cvt_pk_u8_f32 v131, v77, 1, v131
v_fma_f32 v88, v88, s28, v241
v_cvt_pk_u8_f32 v128, v66, 2, v128
v_fma_f32 v89, v89, s28, v241
v_cvt_pk_u8_f32 v129, v70, 2, v129
v_fma_f32 v90, v90, s28, v241
v_cvt_pk_u8_f32 v130, v74, 2, v130
v_fma_f32 v91, v91, s28, v241
v_cvt_pk_u8_f32 v131, v78, 2, v131
v_fma_f32 v92, v92, s28, v241
v_cvt_pk_u8_f32 v128, v67, 3, v128
v_fma_f32 v93, v93, s28, v241
v_cvt_pk_u8_f32 v129, v71, 3, v129
v_fma_f32 v94, v94, s28, v241
v_cvt_pk_u8_f32 v130, v75, 3, v130
v_fma_f32 v95, v95, s28, v241
v_cvt_pk_u8_f32 v131, v79, 3, v131
v_fma_f32 v96, v96, s28, v242
v_cvt_pk_u8_f32 v132, v80, 0, 0
v_fma_f32 v97, v97, s28, v242
v_cvt_pk_u8_f32 v133, v84, 0, 0
v_fma_f32 v98, v98, s28, v242
v_cvt_pk_u8_f32 v134, v88, 0, 0
v_fma_f32 v99, v99, s28, v242
v_cvt_pk_u8_f32 v135, v92, 0, 0
v_fma_f32 v100, v100, s28, v242
v_cvt_pk_u8_f32 v132, v81, 1, v132
v_fma_f32 v101, v101, s28, v242
v_cvt_pk_u8_f32 v133, v85, 1, v133
v_fma_f32 v102, v102, s28, v242
v_cvt_pk_u8_f32 v134, v89, 1, v134
v_fma_f32 v103, v103, s28, v242
v_cvt_pk_u8_f32 v135, v93, 1, v135
v_fma_f32 v104, v104, s28, v242
v_cvt_pk_u8_f32 v132, v82, 2, v132
v_fma_f32 v105, v105, s28, v242
v_cvt_pk_u8_f32 v133, v86, 2, v133
v_fma_f32 v106, v106, s28, v242
v_cvt_pk_u8_f32 v134, v90, 2, v134
v_fma_f32 v107, v107, s28, v242
v_cvt_pk_u8_f32 v135, v94, 2, v135
v_fma_f32 v108, v108, s28, v242
v_cvt_pk_u8_f32 v132, v83, 3, v132
v_fma_f32 v109, v109, s28, v242
v_cvt_pk_u8_f32 v133, v87, 3, v133
v_fma_f32 v110, v110, s28, v242
v_cvt_pk_u8_f32 v134, v91, 3, v134
v_fma_f32 v111, v111, s28, v242
v_cvt_pk_u8_f32 v135, v95, 3, v135
v_fma_f32 v112, v112, s28, v242
v_cvt_pk_u8_f32 v136, v96, 0, 0
v_fma_f32 v113, v113, s28, v242
v_cvt_pk_u8_f32 v137, v100, 0, 0
v_fma_f32 v114, v114, s28, v242
v_cvt_pk_u8_f32 v138, v104, 0, 0
v_fma_f32 v115, v115, s28, v242
v_cvt_pk_u8_f32 v139, v108, 0, 0
v_fma_f32 v116, v116, s28, v242
v_cvt_pk_u8_f32 v136, v97, 1, v136
v_fma_f32 v117, v117, s28, v242
v_cvt_pk_u8_f32 v137, v101, 1, v137
v_fma_f32 v118, v118, s28, v242
v_cvt_pk_u8_f32 v138, v105, 1, v138
v_fma_f32 v119, v119, s28, v242
v_cvt_pk_u8_f32 v139, v109, 1, v139
v_fma_f32 v120, v120, s28, v242
v_cvt_pk_u8_f32 v136, v98, 2, v136
v_fma_f32 v121, v121, s28, v242
v_cvt_pk_u8_f32 v137, v102, 2, v137
v_fma_f32 v122, v122, s28, v242
v_cvt_pk_u8_f32 v138, v106, 2, v138
v_fma_f32 v123, v123, s28, v242
v_cvt_pk_u8_f32 v139, v110, 2, v139
v_fma_f32 v124, v124, s28, v242
v_cvt_pk_u8_f32 v136, v99, 3, v136
v_fma_f32 v125, v125, s28, v242
v_cvt_pk_u8_f32 v137, v103, 3, v137
v_fma_f32 v126, v126, s28, v242
v_cvt_pk_u8_f32 v138, v107, 3, v138
v_fma_f32 v127, v127, s28, v242
v_cvt_pk_u8_f32 v139, v111, 3, v139
v_cvt_pk_u8_f32 v140, v112, 0, 0
v_cvt_pk_u8_f32 v141, v116, 0, 0
v_cvt_pk_u8_f32 v142, v120, 0, 0
v_cvt_pk_u8_f32 v143, v124, 0, 0
v_cvt_pk_u8_f32 v140, v113, 1, v140
v_cvt_pk_u8_f32 v141, v117, 1, v141
v_cvt_pk_u8_f32 v142, v121, 1, v142
v_cvt_pk_u8_f32 v143, v125, 1, v143
v_cvt_pk_u8_f32 v140, v114, 2, v140
v_cvt_pk_u8_f32 v141, v118, 2, v141
v_cvt_pk_u8_f32 v142, v122, 2, v142
v_cvt_pk_u8_f32 v143, v126, 2, v143
v_cvt_pk_u8_f32 v140, v115, 3, v140
v_cvt_pk_u8_f32 v141, v119, 3, v141
v_cvt_pk_u8_f32 v142, v123, 3, v142
v_cvt_pk_u8_f32 v143, v127, 3, v143
s_waitcnt vmcnt(0)
s_barrier
v_and_b32_e32 v255, 31, v216
v_add_u32_e32 v255, s62, v255
v_lshlrev_b32_e32 v222, 2, v255
v_bfe_u32 v255, v216, 4, 2
v_add_u32_e32 v255, s62, v255
v_mul_lo_u32 v221, v255, s37
v_and_b32_e32 v255, 15, v216
v_lshl_add_u32 v221, v255, 4, v221
s_add_u32 s47, s91, s63
s_and_b32 s47, s47, 3
s_cmp_eq_u32 s60, 0
s_cbranch_scc0 5
s_mov_b32 s60, 1
s_sub_u32 s78, s32, 1
s_sub_u32 s78, s78, s48
s_cmp_eq_u32 s78, s48
s_cbranch_scc0 11
s_add_u32 s56, s56, s42
s_mov_b32 s60, 0
s_cmp_ge_u32 s56, s31
s_cselect_b32 s46, 1, 0
s_cbranch_scc1 53
s_lshl_b32 s78, s56, 5
s_add_u32 s80, s26, s78
s_addc_u32 s81, s27, 0
s_load_dwordx8 s[48:55], s[80:81], 0x0
s_waitcnt lgkmcnt(0)
s_sub_u32 s78, s32, 1
s_sub_u32 s78, s78, s48
s_cmp_eq_u32 s60, 0
s_cselect_b32 s61, s78, s48
s_and_b32 s78, s57, 3
s_cmp_eq_u32 s34, 0
s_cselect_b32 s59, s57, s78
s_mul_i32 s78, s61, s33
s_add_u32 s78, s78, s59
s_lshl_b32 s62, s78, 5
s_add_u32 s78, s61, 1
s_mul_i32 s78, s78, s33
s_lshl_b32 s78, s78, 5
s_add_u32 s78, s78, 0x7f
s_lshr_b32 s63, s78, 7
s_lshr_b32 s78, s41, 7
s_min_u32 s63, s63, s78
s_lshr_b32 s64, s62, 7
s_and_b32 s79, s58, s34
s_mul_i32 s80, s79, s38
s_add_u32 s4, s50, s80
s_addc_u32 s5, s51, 0
s_add_u32 s4, s4, s16
s_addc_u32 s5, s5, s17
s_mul_i32 s80, s79, s39
s_add_u32 s6, s54, s80
s_addc_u32 s7, s55, 0
s_add_u32 s6, s6, s22
s_addc_u32 s7, s7, s23
s_mul_i32 s80, s79, s40
s_add_u32 s80, s80, s49
s_lshl_b32 s80, s80, 2
s_cmp_eq_u64 s[24:25], 0
s_cselect_b32 s80, 0, s80
s_add_u32 s76, s24, s80
s_addc_u32 s77, s25, 0
s_add_u32 s8, s18, s52
s_addc_u32 s9, s19, s53
s_mul_i32 s10, s41, s36
s_mov_b32 s11, 0x110000
s_add_u32 s12, s20, s52
s_addc_u32 s13, s21, s53
s_mul_i32 s14, s41, s36
s_mov_b32 s15, 0x110000
s_cmp_eq_u32 s46, 0
s_cbranch_scc0 173
s_cmp_eq_u32 s58, 0
s_cbranch_scc0 155
s_mul_i32 s79, 0, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 64, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 0x60, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 0, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_mul_i32 s79, 64, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_mul_i32 s79, 4, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_mul_i32 s79, 0x44, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_cmpk_le_u32 s63, 0x1
s_cbranch_scc1 51
s_mul_i32 s79, 0, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 64, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 0x60, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
v_and_b32_e32 v255, 31, v216
v_add_u32_e32 v255, s62, v255
v_mul_lo_u32 v255, v255, s35
v_bfe_u32 v244, v216, 5, 1
v_lshl_add_u32 v255, v244, 5, v255
global_load_dwordx4 v[144:147], v255, s[4:5]
global_load_dwordx4 v[148:151], v255, s[4:5] offset:16
global_load_dwordx4 v[152:155], v255, s[4:5] offset:64
global_load_dwordx4 v[156:159], v255, s[4:5] offset:80
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[208:211], v[160:167], v[128:135], 0
v_mfma_f32_16x16x128_f8f6f4 v[212:215], v[160:167], v[136:143], 0
ds_read_b64_tr_b8 v[168:169], v219
ds_read_b64_tr_b8 v[170:171], v219 offset:1024
ds_read_b64_tr_b8 v[172:173], v219 offset:2048
ds_read_b64_tr_b8 v[174:175], v219 offset:3072
ds_read_b64_tr_b8 v[176:177], v219 offset:256
ds_read_b64_tr_b8 v[178:179], v219 offset:1280
ds_read_b64_tr_b8 v[180:181], v219 offset:2304
ds_read_b64_tr_b8 v[182:183], v219 offset:3328
ds_read_b64_tr_b8 v[184:185], v219 offset:512
ds_read_b64_tr_b8 v[186:187], v219 offset:1536
ds_read_b64_tr_b8 v[188:189], v219 offset:2560
ds_read_b64_tr_b8 v[190:191], v219 offset:3584
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[168:175], v[128:135], v[0:15], v243, v233 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[192:193], v219 offset:768
ds_read_b64_tr_b8 v[194:195], v219 offset:1792
ds_read_b64_tr_b8 v[196:197], v219 offset:2816
ds_read_b64_tr_b8 v[198:199], v219 offset:3840
ds_read_b64_tr_b8 v[200:201], v219 offset:4096
ds_read_b64_tr_b8 v[202:203], v219 offset:5120
ds_read_b64_tr_b8 v[204:205], v219 offset:6144
ds_read_b64_tr_b8 v[206:207], v219 offset:7168
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[176:183], v[128:135], v[16:31], v243, v233 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[184:191], v[128:135], v[32:47], v243, v233 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[168:169], v219 offset:4352
ds_read_b64_tr_b8 v[170:171], v219 offset:5376
ds_read_b64_tr_b8 v[172:173], v219 offset:6400
ds_read_b64_tr_b8 v[174:175], v219 offset:7424
ds_read_b64_tr_b8 v[176:177], v219 offset:4608
ds_read_b64_tr_b8 v[178:179], v219 offset:5632
ds_read_b64_tr_b8 v[180:181], v219 offset:6656
ds_read_b64_tr_b8 v[182:183], v219 offset:7680
v_mul_f32_e32 v255, v208, v237
v_add_f32_e32 v232, v232, v255
v_mul_f32_e32 v255, v212, v238
v_add_f32_e32 v232, v232, v255
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[192:199], v[128:135], v[48:63], v243, v233 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[200:207], v[136:143], v[0:15], v243, v234 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[184:185], v219 offset:4864
ds_read_b64_tr_b8 v[186:187], v219 offset:5888
ds_read_b64_tr_b8 v[188:189], v219 offset:6912
ds_read_b64_tr_b8 v[190:191], v219 offset:7936
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[168:175], v[136:143], v[16:31], v243, v234 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[176:183], v[136:143], v[32:47], v243, v234 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[184:191], v[136:143], v[48:63], v243, v234 op_sel_hi:[0,0,0]
s_branch 259
s_waitcnt vmcnt(0)
s_barrier
v_and_b32_e32 v255, 31, v216
v_add_u32_e32 v255, s62, v255
v_lshlrev_b32_e32 v222, 2, v255
v_bfe_u32 v255, v216, 4, 2
v_add_u32_e32 v255, s62, v255
v_mul_lo_u32 v221, v255, s37
v_and_b32_e32 v255, 15, v216
v_lshl_add_u32 v221, v255, 4, v221
s_add_u32 s47, s91, s63
s_and_b32 s47, s47, 3
s_cmp_eq_u32 s60, 0
s_cbranch_scc0 5
s_mov_b32 s60, 1
s_sub_u32 s78, s32, 1
s_sub_u32 s78, s78, s48
s_cmp_eq_u32 s78, s48
s_cbranch_scc0 11
s_add_u32 s56, s56, s42
s_mov_b32 s60, 0
s_cmp_ge_u32 s56, s31
s_cselect_b32 s46, 1, 0
s_cbranch_scc1 53
s_lshl_b32 s78, s56, 5
s_add_u32 s80, s26, s78
s_addc_u32 s81, s27, 0
s_load_dwordx8 s[48:55], s[80:81], 0x0
s_waitcnt lgkmcnt(0)
s_sub_u32 s78, s32, 1
s_sub_u32 s78, s78, s48
s_cmp_eq_u32 s60, 0
s_cselect_b32 s61, s78, s48
s_and_b32 s78, s57, 3
s_cmp_eq_u32 s34, 0
s_cselect_b32 s59, s57, s78
s_mul_i32 s78, s61, s33
s_add_u32 s78, s78, s59
s_lshl_b32 s62, s78, 5
s_add_u32 s78, s61, 1
s_mul_i32 s78, s78, s33
s_lshl_b32 s78, s78, 5
s_add_u32 s78, s78, 0x7f
s_lshr_b32 s63, s78, 7
s_lshr_b32 s78, s41, 7
s_min_u32 s63, s63, s78
s_lshr_b32 s64, s62, 7
s_and_b32 s79, s58, s34
s_mul_i32 s80, s79, s38
s_add_u32 s4, s50, s80
s_addc_u32 s5, s51, 0
s_add_u32 s4, s4, s16
s_addc_u32 s5, s5, s17
s_mul_i32 s80, s79, s39
s_add_u32 s6, s54, s80
s_addc_u32 s7, s55, 0
s_add_u32 s6, s6, s22
s_addc_u32 s7, s7, s23
s_mul_i32 s80, s79, s40
s_add_u32 s80, s80, s49
s_lshl_b32 s80, s80, 2
s_cmp_eq_u64 s[24:25], 0
s_cselect_b32 s80, 0, s80
s_add_u32 s76, s24, s80
s_addc_u32 s77, s25, 0
s_add_u32 s8, s18, s52
s_addc_u32 s9, s19, s53
s_mul_i32 s10, s41, s36
s_mov_b32 s11, 0x110000
s_add_u32 s12, s20, s52
s_addc_u32 s13, s21, s53
s_mul_i32 s14, s41, s36
s_mov_b32 s15, 0x110000
s_cmp_eq_u32 s46, 0
s_cbranch_scc0 173
s_cmp_eq_u32 s58, 0
s_cbranch_scc0 155
s_mul_i32 s79, 0, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 64, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 0x60, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 0, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_mul_i32 s79, 64, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_mul_i32 s79, 4, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_mul_i32 s79, 0x44, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_cmpk_le_u32 s63, 0x1
s_cbranch_scc1 51
s_mul_i32 s79, 0, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 64, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 0x60, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
v_and_b32_e32 v255, 31, v216
v_add_u32_e32 v255, s62, v255
v_mul_lo_u32 v255, v255, s35
v_bfe_u32 v244, v216, 5, 1
v_lshl_add_u32 v255, v244, 5, v255
global_load_dwordx4 v[144:147], v255, s[4:5]
global_load_dwordx4 v[148:151], v255, s[4:5] offset:16
global_load_dwordx4 v[152:155], v255, s[4:5] offset:64
global_load_dwordx4 v[156:159], v255, s[4:5] offset:80
s_waitcnt vmcnt(4)
s_barrier
s_branch 2315
s_add_u32 s78, s65, 1
s_cmp_ge_u32 s78, s63
s_cbranch_scc1 1407
s_add_u32 s45, s65, s91
s_add_u32 s78, s45, 1
s_and_b32 s78, s78, 3
s_lshl_b32 s86, s78, 14
s_and_b32 s78, s45, 3
s_lshl_b32 s79, s78, 14
s_add_u32 s88, s83, s79
s_add_u32 s78, s45, 2
s_and_b32 s78, s78, 3
s_lshl_b32 s79, s78, 14
s_add_u32 s89, s84, s79
v_add_u32_e32 v217, s86, v224
v_add_u32_e32 v218, s86, v225
v_add_u32_e32 v219, s87, v226
s_cmp_lt_u32 s65, s64
s_cbranch_scc1 430
s_cmp_eq_u32 s65, s64
s_cbranch_scc1 31
s_barrier
s_waitcnt vmcnt(0)
s_add_u32 s78, s65, 4
s_cmp_ge_u32 s78, s63
s_cbranch_scc1 10
s_mul_i32 s78, s78, s66
s_add_u32 m0, s88, 0
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s78 offen lds
s_add_u32 m0, s88, 0x2000
s_nop 0
buffer_load_dwordx4 v228, s[8:11], s78 offen lds
s_add_u32 s79, s65, 2
s_cmp_ge_u32 s79, s63
s_cbranch_scc1 10
s_mul_i32 s79, s79, s66
s_add_u32 m0, s89, 0
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_add_u32 m0, s89, 0x2000
s_nop 0
buffer_load_dwordx4 v230, s[12:15], s79 offen lds
s_barrier
s_add_u32 s65, s65, 1
s_branch 63167
s_setprio 0
v_fma_f32 v64, v64, s28, v241
v_fma_f32 v65, v65, s28, v241
v_fma_f32 v66, v66, s28, v241
v_fma_f32 v67, v67, s28, v241
v_fma_f32 v68, v68, s28, v241
v_fma_f32 v69, v69, s28, v241
v_fma_f32 v70, v70, s28, v241
v_fma_f32 v71, v71, s28, v241
v_fma_f32 v72, v72, s28, v241
v_fma_f32 v73, v73, s28, v241
v_fma_f32 v74, v74, s28, v241
v_fma_f32 v75, v75, s28, v241
v_fma_f32 v76, v76, s28, v241
v_fma_f32 v77, v77, s28, v241
v_fma_f32 v78, v78, s28, v241
v_fma_f32 v79, v79, s28, v241
v_fma_f32 v80, v80, s28, v241
v_cvt_pk_u8_f32 v128, v64, 0, 0
v_fma_f32 v81, v81, s28, v241
v_cvt_pk_u8_f32 v129, v68, 0, 0
v_fma_f32 v82, v82, s28, v241
v_cvt_pk_u8_f32 v130, v72, 0, 0
v_fma_f32 v83, v83, s28, v241
v_cvt_pk_u8_f32 v131, v76, 0, 0
v_fma_f32 v84, v84, s28, v241
v_cvt_pk_u8_f32 v128, v65, 1, v128
v_fma_f32 v85, v85, s28, v241
v_cvt_pk_u8_f32 v129, v69, 1, v129
v_fma_f32 v86, v86, s28, v241
v_cvt_pk_u8_f32 v130, v73, 1, v130
v_fma_f32 v87, v87, s28, v241
v_cvt_pk_u8_f32 v131, v77, 1, v131
v_fma_f32 v88, v88, s28, v241
v_cvt_pk_u8_f32 v128, v66, 2, v128
v_fma_f32 v89, v89, s28, v241
v_cvt_pk_u8_f32 v129, v70, 2, v129
v_fma_f32 v90, v90, s28, v241
v_cvt_pk_u8_f32 v130, v74, 2, v130
v_fma_f32 v91, v91, s28, v241
v_cvt_pk_u8_f32 v131, v78, 2, v131
v_fma_f32 v92, v92, s28, v241
v_cvt_pk_u8_f32 v128, v67, 3, v128
v_fma_f32 v93, v93, s28, v241
v_cvt_pk_u8_f32 v129, v71, 3, v129
v_fma_f32 v94, v94, s28, v241
v_cvt_pk_u8_f32 v130, v75, 3, v130
v_fma_f32 v95, v95, s28, v241
v_cvt_pk_u8_f32 v131, v79, 3, v131
v_fma_f32 v96, v96, s28, v242
v_cvt_pk_u8_f32 v132, v80, 0, 0
v_fma_f32 v97, v97, s28, v242
v_cvt_pk_u8_f32 v133, v84, 0, 0
v_fma_f32 v98, v98, s28, v242
v_cvt_pk_u8_f32 v134, v88, 0, 0
v_fma_f32 v99, v99, s28, v242
v_cvt_pk_u8_f32 v135, v92, 0, 0
v_fma_f32 v100, v100, s28, v242
v_cvt_pk_u8_f32 v132, v81, 1, v132
v_fma_f32 v101, v101, s28, v242
v_cvt_pk_u8_f32 v133, v85, 1, v133
v_fma_f32 v102, v102, s28, v242
v_cvt_pk_u8_f32 v134, v89, 1, v134
v_fma_f32 v103, v103, s28, v242
v_cvt_pk_u8_f32 v135, v93, 1, v135
v_fma_f32 v104, v104, s28, v242
v_cvt_pk_u8_f32 v132, v82, 2, v132
v_fma_f32 v105, v105, s28, v242
v_cvt_pk_u8_f32 v133, v86, 2, v133
v_fma_f32 v106, v106, s28, v242
v_cvt_pk_u8_f32 v134, v90, 2, v134
v_fma_f32 v107, v107, s28, v242
v_cvt_pk_u8_f32 v135, v94, 2, v135
v_fma_f32 v108, v108, s28, v242
v_cvt_pk_u8_f32 v132, v83, 3, v132
v_fma_f32 v109, v109, s28, v242
v_cvt_pk_u8_f32 v133, v87, 3, v133
v_fma_f32 v110, v110, s28, v242
v_cvt_pk_u8_f32 v134, v91, 3, v134
v_fma_f32 v111, v111, s28, v242
v_cvt_pk_u8_f32 v135, v95, 3, v135
v_fma_f32 v112, v112, s28, v242
v_cvt_pk_u8_f32 v136, v96, 0, 0
v_fma_f32 v113, v113, s28, v242
v_cvt_pk_u8_f32 v137, v100, 0, 0
v_fma_f32 v114, v114, s28, v242
v_cvt_pk_u8_f32 v138, v104, 0, 0
v_fma_f32 v115, v115, s28, v242
v_cvt_pk_u8_f32 v139, v108, 0, 0
v_fma_f32 v116, v116, s28, v242
v_cvt_pk_u8_f32 v136, v97, 1, v136
v_fma_f32 v117, v117, s28, v242
v_cvt_pk_u8_f32 v137, v101, 1, v137
v_fma_f32 v118, v118, s28, v242
v_cvt_pk_u8_f32 v138, v105, 1, v138
v_fma_f32 v119, v119, s28, v242
v_cvt_pk_u8_f32 v139, v109, 1, v139
v_fma_f32 v120, v120, s28, v242
v_cvt_pk_u8_f32 v136, v98, 2, v136
v_fma_f32 v121, v121, s28, v242
v_cvt_pk_u8_f32 v137, v102, 2, v137
v_fma_f32 v122, v122, s28, v242
v_cvt_pk_u8_f32 v138, v106, 2, v138
v_fma_f32 v123, v123, s28, v242
v_cvt_pk_u8_f32 v139, v110, 2, v139
v_fma_f32 v124, v124, s28, v242
v_cvt_pk_u8_f32 v136, v99, 3, v136
v_fma_f32 v125, v125, s28, v242
v_cvt_pk_u8_f32 v137, v103, 3, v137
v_fma_f32 v126, v126, s28, v242
v_cvt_pk_u8_f32 v138, v107, 3, v138
v_fma_f32 v127, v127, s28, v242
v_cvt_pk_u8_f32 v139, v111, 3, v139
v_cvt_pk_u8_f32 v140, v112, 0, 0
v_cvt_pk_u8_f32 v141, v116, 0, 0
v_cvt_pk_u8_f32 v142, v120, 0, 0
v_cvt_pk_u8_f32 v143, v124, 0, 0
v_cvt_pk_u8_f32 v140, v113, 1, v140
v_cvt_pk_u8_f32 v141, v117, 1, v141
v_cvt_pk_u8_f32 v142, v121, 1, v142
v_cvt_pk_u8_f32 v143, v125, 1, v143
v_cvt_pk_u8_f32 v140, v114, 2, v140
v_cvt_pk_u8_f32 v141, v118, 2, v141
v_cvt_pk_u8_f32 v142, v122, 2, v142
v_cvt_pk_u8_f32 v143, v126, 2, v143
v_cvt_pk_u8_f32 v140, v115, 3, v140
v_cvt_pk_u8_f32 v141, v119, 3, v141
v_cvt_pk_u8_f32 v142, v123, 3, v142
v_cvt_pk_u8_f32 v143, v127, 3, v143
s_barrier
s_setprio 1
s_waitcnt vmcnt(0)
v_mfma_f32_16x16x128_f8f6f4 v[208:211], v[160:167], v[128:135], 0
v_mfma_f32_16x16x128_f8f6f4 v[212:215], v[160:167], v[136:143], 0
ds_read_b64_tr_b8 v[168:169], v219
ds_read_b64_tr_b8 v[170:171], v219 offset:1024
ds_read_b64_tr_b8 v[172:173], v219 offset:2048
ds_read_b64_tr_b8 v[174:175], v219 offset:3072
ds_read_b64_tr_b8 v[176:177], v219 offset:256
ds_read_b64_tr_b8 v[178:179], v219 offset:1280
ds_read_b64_tr_b8 v[180:181], v219 offset:2304
ds_read_b64_tr_b8 v[182:183], v219 offset:3328
ds_read_b64_tr_b8 v[184:185], v219 offset:512
ds_read_b64_tr_b8 v[186:187], v219 offset:1536
ds_read_b64_tr_b8 v[188:189], v219 offset:2560
ds_read_b64_tr_b8 v[190:191], v219 offset:3584
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[168:175], v[128:135], v[0:15], v243, v235 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[192:193], v219 offset:768
ds_read_b64_tr_b8 v[194:195], v219 offset:1792
ds_read_b64_tr_b8 v[196:197], v219 offset:2816
ds_read_b64_tr_b8 v[198:199], v219 offset:3840
ds_read_b64_tr_b8 v[200:201], v219 offset:4096
ds_read_b64_tr_b8 v[202:203], v219 offset:5120
ds_read_b64_tr_b8 v[204:205], v219 offset:6144
ds_read_b64_tr_b8 v[206:207], v219 offset:7168
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[176:183], v[128:135], v[16:31], v243, v235 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[184:191], v[128:135], v[32:47], v243, v235 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[168:169], v219 offset:4352
ds_read_b64_tr_b8 v[170:171], v219 offset:5376
ds_read_b64_tr_b8 v[172:173], v219 offset:6400
ds_read_b64_tr_b8 v[174:175], v219 offset:7424
ds_read_b64_tr_b8 v[176:177], v219 offset:4608
ds_read_b64_tr_b8 v[178:179], v219 offset:5632
ds_read_b64_tr_b8 v[180:181], v219 offset:6656
ds_read_b64_tr_b8 v[182:183], v219 offset:7680
s_add_u32 s78, s65, 4
s_cmp_ge_u32 s78, s63
s_cbranch_scc1 10
s_mul_i32 s78, s78, s66
s_add_u32 m0, s88, 0
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s78 offen lds
s_add_u32 m0, s88, 0x2000
s_nop 0
buffer_load_dwordx4 v228, s[8:11], s78 offen lds
v_mul_f32_e32 v255, v208, v239
v_add_f32_e32 v232, v232, v255
v_mul_f32_e32 v255, v212, v240
v_add_f32_e32 v232, v232, v255
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[192:199], v[128:135], v[48:63], v243, v235 op_sel_hi:[0,0,0]
s_add_u32 s79, s65, 2
s_cmp_ge_u32 s79, s63
s_cbranch_scc1 10
s_mul_i32 s79, s79, s66
s_add_u32 m0, s89, 0
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_add_u32 m0, s89, 0x2000
s_nop 0
buffer_load_dwordx4 v230, s[12:15], s79 offen lds
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[200:207], v[136:143], v[0:15], v243, v236 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[184:185], v219 offset:4864
ds_read_b64_tr_b8 v[186:187], v219 offset:5888
ds_read_b64_tr_b8 v[188:189], v219 offset:6912
ds_read_b64_tr_b8 v[190:191], v219 offset:7936
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[168:175], v[136:143], v[16:31], v243, v236 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[176:183], v[136:143], v[32:47], v243, v236 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[184:191], v[136:143], v[48:63], v243, v236 op_sel_hi:[0,0,0]
s_barrier
s_add_u32 s65, s65, 1
s_branch 62770
s_setprio 0
v_fma_f32 v64, v64, s28, v241
v_fma_f32 v65, v65, s28, v241
v_fma_f32 v66, v66, s28, v241
v_fma_f32 v67, v67, s28, v241
v_fma_f32 v68, v68, s28, v241
v_fma_f32 v69, v69, s28, v241
v_fma_f32 v70, v70, s28, v241
v_fma_f32 v71, v71, s28, v241
v_fma_f32 v72, v72, s28, v241
v_fma_f32 v73, v73, s28, v241
v_fma_f32 v74, v74, s28, v241
v_fma_f32 v75, v75, s28, v241
v_fma_f32 v76, v76, s28, v241
v_fma_f32 v77, v77, s28, v241
v_fma_f32 v78, v78, s28, v241
v_fma_f32 v79, v79, s28, v241
v_fma_f32 v80, v80, s28, v241
v_cvt_pk_u8_f32 v128, v64, 0, 0
v_fma_f32 v81, v81, s28, v241
v_cvt_pk_u8_f32 v129, v68, 0, 0
v_fma_f32 v82, v82, s28, v241
v_cvt_pk_u8_f32 v130, v72, 0, 0
v_fma_f32 v83, v83, s28, v241
v_cvt_pk_u8_f32 v131, v76, 0, 0
v_fma_f32 v84, v84, s28, v241
v_cvt_pk_u8_f32 v128, v65, 1, v128
v_fma_f32 v85, v85, s28, v241
v_cvt_pk_u8_f32 v129, v69, 1, v129
v_fma_f32 v86, v86, s28, v241
v_cvt_pk_u8_f32 v130, v73, 1, v130
v_fma_f32 v87, v87, s28, v241
v_cvt_pk_u8_f32 v131, v77, 1, v131
v_fma_f32 v88, v88, s28, v241
v_cvt_pk_u8_f32 v128, v66, 2, v128
v_fma_f32 v89, v89, s28, v241
v_cvt_pk_u8_f32 v129, v70, 2, v129
v_fma_f32 v90, v90, s28, v241
v_cvt_pk_u8_f32 v130, v74, 2, v130
v_fma_f32 v91, v91, s28, v241
v_cvt_pk_u8_f32 v131, v78, 2, v131
v_fma_f32 v92, v92, s28, v241
v_cvt_pk_u8_f32 v128, v67, 3, v128
v_fma_f32 v93, v93, s28, v241
v_cvt_pk_u8_f32 v129, v71, 3, v129
v_fma_f32 v94, v94, s28, v241
v_cvt_pk_u8_f32 v130, v75, 3, v130
v_fma_f32 v95, v95, s28, v241
v_cvt_pk_u8_f32 v131, v79, 3, v131
v_fma_f32 v96, v96, s28, v242
v_cvt_pk_u8_f32 v132, v80, 0, 0
v_fma_f32 v97, v97, s28, v242
v_cvt_pk_u8_f32 v133, v84, 0, 0
v_fma_f32 v98, v98, s28, v242
v_cvt_pk_u8_f32 v134, v88, 0, 0
v_fma_f32 v99, v99, s28, v242
v_cvt_pk_u8_f32 v135, v92, 0, 0
v_fma_f32 v100, v100, s28, v242
v_cvt_pk_u8_f32 v132, v81, 1, v132
v_fma_f32 v101, v101, s28, v242
v_cvt_pk_u8_f32 v133, v85, 1, v133
v_fma_f32 v102, v102, s28, v242
v_cvt_pk_u8_f32 v134, v89, 1, v134
v_fma_f32 v103, v103, s28, v242
v_cvt_pk_u8_f32 v135, v93, 1, v135
v_fma_f32 v104, v104, s28, v242
v_cvt_pk_u8_f32 v132, v82, 2, v132
v_fma_f32 v105, v105, s28, v242
v_cvt_pk_u8_f32 v133, v86, 2, v133
v_fma_f32 v106, v106, s28, v242
v_cvt_pk_u8_f32 v134, v90, 2, v134
v_fma_f32 v107, v107, s28, v242
v_cvt_pk_u8_f32 v135, v94, 2, v135
v_fma_f32 v108, v108, s28, v242
v_cvt_pk_u8_f32 v132, v83, 3, v132
v_fma_f32 v109, v109, s28, v242
v_cvt_pk_u8_f32 v133, v87, 3, v133
v_fma_f32 v110, v110, s28, v242
v_cvt_pk_u8_f32 v134, v91, 3, v134
v_fma_f32 v111, v111, s28, v242
v_cvt_pk_u8_f32 v135, v95, 3, v135
v_fma_f32 v112, v112, s28, v242
v_cvt_pk_u8_f32 v136, v96, 0, 0
v_fma_f32 v113, v113, s28, v242
v_cvt_pk_u8_f32 v137, v100, 0, 0
v_fma_f32 v114, v114, s28, v242
v_cvt_pk_u8_f32 v138, v104, 0, 0
v_fma_f32 v115, v115, s28, v242
v_cvt_pk_u8_f32 v139, v108, 0, 0
v_fma_f32 v116, v116, s28, v242
v_cvt_pk_u8_f32 v136, v97, 1, v136
v_fma_f32 v117, v117, s28, v242
v_cvt_pk_u8_f32 v137, v101, 1, v137
v_fma_f32 v118, v118, s28, v242
v_cvt_pk_u8_f32 v138, v105, 1, v138
v_fma_f32 v119, v119, s28, v242
v_cvt_pk_u8_f32 v139, v109, 1, v139
v_fma_f32 v120, v120, s28, v242
v_cvt_pk_u8_f32 v136, v98, 2, v136
v_fma_f32 v121, v121, s28, v242
v_cvt_pk_u8_f32 v137, v102, 2, v137
v_fma_f32 v122, v122, s28, v242
v_cvt_pk_u8_f32 v138, v106, 2, v138
v_fma_f32 v123, v123, s28, v242
v_cvt_pk_u8_f32 v139, v110, 2, v139
v_fma_f32 v124, v124, s28, v242
v_cvt_pk_u8_f32 v136, v99, 3, v136
v_fma_f32 v125, v125, s28, v242
v_cvt_pk_u8_f32 v137, v103, 3, v137
v_fma_f32 v126, v126, s28, v242
v_cvt_pk_u8_f32 v138, v107, 3, v138
v_fma_f32 v127, v127, s28, v242
v_cvt_pk_u8_f32 v139, v111, 3, v139
v_cvt_pk_u8_f32 v140, v112, 0, 0
v_cvt_pk_u8_f32 v141, v116, 0, 0
v_cvt_pk_u8_f32 v142, v120, 0, 0
v_cvt_pk_u8_f32 v143, v124, 0, 0
v_cvt_pk_u8_f32 v140, v113, 1, v140
v_cvt_pk_u8_f32 v141, v117, 1, v141
v_cvt_pk_u8_f32 v142, v121, 1, v142
v_cvt_pk_u8_f32 v143, v125, 1, v143
v_cvt_pk_u8_f32 v140, v114, 2, v140
v_cvt_pk_u8_f32 v141, v118, 2, v141
v_cvt_pk_u8_f32 v142, v122, 2, v142
v_cvt_pk_u8_f32 v143, v126, 2, v143
v_cvt_pk_u8_f32 v140, v115, 3, v140
v_cvt_pk_u8_f32 v141, v119, 3, v141
v_cvt_pk_u8_f32 v142, v123, 3, v142
v_cvt_pk_u8_f32 v143, v127, 3, v143
ds_read_b128 v[168:171], v217
ds_read_b128 v[172:175], v217 offset:16
ds_read_b128 v[176:179], v217 offset:4096
ds_read_b128 v[180:183], v217 offset:4112
s_barrier
s_setprio 1
s_waitcnt vmcnt(0)
v_mfma_f32_16x16x128_f8f6f4 v[208:211], v[160:167], v[128:135], 0
s_add_u32 s81, s65, 1
s_lshl_b32 s81, s81, 7
s_sub_u32 s81, s62, s81
v_and_b32_e32 v255, 31, v216
v_add_u32_e32 v249, s81, v255
v_bfe_u32 v255, v216, 5, 1
v_lshlrev_b32_e32 v255, 2, v255
v_sub_u32_e32 v249, v249, v255
v_mfma_f32_16x16x128_f8f6f4 v[212:215], v[160:167], v[136:143], 0
ds_read_b128 v[184:187], v217 offset:8192
ds_read_b128 v[188:191], v217 offset:8208
ds_read_b128 v[192:195], v217 offset:12288
ds_read_b128 v[196:199], v217 offset:12304
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[168:175], v[144:151], 0
ds_read_b128 v[200:203], v218
ds_read_b128 v[204:207], v218 offset:16
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[176:183], v[144:151], 0
ds_read_b128 v[168:171], v218 offset:4096
ds_read_b128 v[172:175], v218 offset:4112
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[184:191], v[144:151], 0
ds_read_b128 v[176:179], v218 offset:8192
ds_read_b128 v[180:183], v218 offset:8208
s_add_u32 s78, s65, 4
s_cmp_ge_u32 s78, s63
s_cbranch_scc1 10
s_mul_i32 s78, s78, s66
s_add_u32 m0, s88, 0
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s78 offen lds
s_add_u32 m0, s88, 0x2000
s_nop 0
buffer_load_dwordx4 v228, s[8:11], s78 offen lds
v_mul_f32_e32 v255, v208, v239
v_add_f32_e32 v232, v232, v255
v_mul_f32_e32 v255, v212, v240
v_add_f32_e32 v232, v232, v255
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[192:199], v[144:151], 0
ds_read_b128 v[184:187], v218 offset:12288
ds_read_b128 v[188:191], v218 offset:12304
s_add_u32 s79, s65, 2
s_cmp_ge_u32 s79, s63
s_cbranch_scc1 10
s_mul_i32 s79, s79, s66
s_add_u32 m0, s89, 0
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_add_u32 m0, s89, 0x2000
s_nop 0
buffer_load_dwordx4 v230, s[12:15], s79 offen lds
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[200:207], v[152:159], v[64:79]
ds_read_b64_tr_b8 v[192:193], v219
ds_read_b64_tr_b8 v[194:195], v219 offset:1024
ds_read_b64_tr_b8 v[196:197], v219 offset:2048
ds_read_b64_tr_b8 v[198:199], v219 offset:3072
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[168:175], v[152:159], v[80:95]
ds_read_b64_tr_b8 v[200:201], v219 offset:256
ds_read_b64_tr_b8 v[202:203], v219 offset:1280
ds_read_b64_tr_b8 v[204:205], v219 offset:2304
ds_read_b64_tr_b8 v[206:207], v219 offset:3328
s_sub_i32 s80, s81, 0
s_cmp_ge_i32 s80, 32
s_cbranch_scc1 69
s_cmp_lt_i32 s80, 0
s_cbranch_scc1 49
v_cmp_gt_i32_e32 vcc, 0, v249
v_cndmask_b32_e64 v64, v64, v250, vcc
v_cmp_gt_i32_e32 vcc, 1, v249
v_cndmask_b32_e64 v65, v65, v250, vcc
v_cmp_gt_i32_e32 vcc, 2, v249
v_cndmask_b32_e64 v66, v66, v250, vcc
v_cmp_gt_i32_e32 vcc, 3, v249
v_cndmask_b32_e64 v67, v67, v250, vcc
v_cmp_gt_i32_e32 vcc, 8, v249
v_cndmask_b32_e64 v68, v68, v250, vcc
v_cmp_gt_i32_e32 vcc, 9, v249
v_cndmask_b32_e64 v69, v69, v250, vcc
v_cmp_gt_i32_e32 vcc, 10, v249
v_cndmask_b32_e64 v70, v70, v250, vcc
v_cmp_gt_i32_e32 vcc, 11, v249
v_cndmask_b32_e64 v71, v71, v250, vcc
v_cmp_gt_i32_e32 vcc, 16, v249
v_cndmask_b32_e64 v72, v72, v250, vcc
v_cmp_gt_i32_e32 vcc, 17, v249
v_cndmask_b32_e64 v73, v73, v250, vcc
v_cmp_gt_i32_e32 vcc, 18, v249
v_cndmask_b32_e64 v74, v74, v250, vcc
v_cmp_gt_i32_e32 vcc, 19, v249
v_cndmask_b32_e64 v75, v75, v250, vcc
v_cmp_gt_i32_e32 vcc, 24, v249
v_cndmask_b32_e64 v76, v76, v250, vcc
v_cmp_gt_i32_e32 vcc, 25, v249
v_cndmask_b32_e64 v77, v77, v250, vcc
v_cmp_gt_i32_e32 vcc, 26, v249
v_cndmask_b32_e64 v78, v78, v250, vcc
v_cmp_gt_i32_e32 vcc, 27, v249
v_cndmask_b32_e64 v79, v79, v250, vcc
s_branch 18
s_nop 15
s_nop 3
s_nop 1
v_max_f32_e32 v244, v64, v65
v_max3_f32 v244, v66, v67, v244
v_max3_f32 v244, v68, v69, v244
v_max3_f32 v244, v70, v71, v244
v_max3_f32 v244, v72, v73, v244
v_max3_f32 v244, v74, v75, v244
v_max3_f32 v244, v76, v77, v244
v_max3_f32 v244, v78, v79, v244
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[176:183], v[152:159], v[96:111]
ds_read_b64_tr_b8 v[168:169], v219 offset:512
ds_read_b64_tr_b8 v[170:171], v219 offset:1536
ds_read_b64_tr_b8 v[172:173], v219 offset:2560
ds_read_b64_tr_b8 v[174:175], v219 offset:3584
s_sub_i32 s80, s81, 32
s_cmp_ge_i32 s80, 32
s_cbranch_scc1 69
s_cmp_lt_i32 s80, 0
s_cbranch_scc1 49
v_cmp_gt_i32_e32 vcc, 32, v249
v_cndmask_b32_e64 v80, v80, v250, vcc
v_cmp_gt_i32_e32 vcc, 33, v249
v_cndmask_b32_e64 v81, v81, v250, vcc
v_cmp_gt_i32_e32 vcc, 34, v249
v_cndmask_b32_e64 v82, v82, v250, vcc
v_cmp_gt_i32_e32 vcc, 35, v249
v_cndmask_b32_e64 v83, v83, v250, vcc
v_cmp_gt_i32_e32 vcc, 40, v249
v_cndmask_b32_e64 v84, v84, v250, vcc
v_cmp_gt_i32_e32 vcc, 41, v249
v_cndmask_b32_e64 v85, v85, v250, vcc
v_cmp_gt_i32_e32 vcc, 42, v249
v_cndmask_b32_e64 v86, v86, v250, vcc
v_cmp_gt_i32_e32 vcc, 43, v249
v_cndmask_b32_e64 v87, v87, v250, vcc
v_cmp_gt_i32_e32 vcc, 48, v249
v_cndmask_b32_e64 v88, v88, v250, vcc
v_cmp_gt_i32_e32 vcc, 49, v249
v_cndmask_b32_e64 v89, v89, v250, vcc
v_cmp_gt_i32_e32 vcc, 50, v249
v_cndmask_b32_e64 v90, v90, v250, vcc
v_cmp_gt_i32_e32 vcc, 51, v249
v_cndmask_b32_e64 v91, v91, v250, vcc
v_cmp_gt_i32_e32 vcc, 56, v249
v_cndmask_b32_e64 v92, v92, v250, vcc
v_cmp_gt_i32_e32 vcc, 57, v249
v_cndmask_b32_e64 v93, v93, v250, vcc
v_cmp_gt_i32_e32 vcc, 58, v249
v_cndmask_b32_e64 v94, v94, v250, vcc
v_cmp_gt_i32_e32 vcc, 59, v249
v_cndmask_b32_e64 v95, v95, v250, vcc
s_branch 18
s_nop 15
s_nop 3
s_nop 1
v_max_f32_e32 v245, v80, v81
v_max3_f32 v245, v82, v83, v245
v_max3_f32 v245, v84, v85, v245
v_max3_f32 v245, v86, v87, v245
v_max3_f32 v245, v88, v89, v245
v_max3_f32 v245, v90, v91, v245
v_max3_f32 v245, v92, v93, v245
v_max3_f32 v245, v94, v95, v245
v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[184:191], v[152:159], v[112:127]
s_sub_i32 s80, s81, 64
s_cmp_ge_i32 s80, 32
s_cbranch_scc1 84
s_cmp_lt_i32 s80, 0
s_cbranch_scc1 64
v_cmp_gt_i32_e32 vcc, 64, v249
v_cndmask_b32_e64 v96, v96, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x41, v249
v_cndmask_b32_e64 v97, v97, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x42, v249
v_cndmask_b32_e64 v98, v98, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x43, v249
v_cndmask_b32_e64 v99, v99, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x48, v249
v_cndmask_b32_e64 v100, v100, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x49, v249
v_cndmask_b32_e64 v101, v101, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x4a, v249
v_cndmask_b32_e64 v102, v102, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x4b, v249
v_cndmask_b32_e64 v103, v103, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x50, v249
v_cndmask_b32_e64 v104, v104, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x51, v249
v_cndmask_b32_e64 v105, v105, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x52, v249
v_cndmask_b32_e64 v106, v106, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x53, v249
v_cndmask_b32_e64 v107, v107, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x58, v249
v_cndmask_b32_e64 v108, v108, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x59, v249
v_cndmask_b32_e64 v109, v109, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x5a, v249
v_cndmask_b32_e64 v110, v110, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x5b, v249
v_cndmask_b32_e64 v111, v111, v250, vcc
s_branch 18
s_nop 15
s_nop 3
s_nop 1
v_max_f32_e32 v246, v96, v97
v_max3_f32 v246, v98, v99, v246
v_max3_f32 v246, v100, v101, v246
v_max3_f32 v246, v102, v103, v246
v_max3_f32 v246, v104, v105, v246
v_max3_f32 v246, v106, v107, v246
v_max3_f32 v246, v108, v109, v246
v_max3_f32 v246, v110, v111, v246
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[192:199], v[128:135], v[0:15], v243, v235 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[176:177], v219 offset:768
ds_read_b64_tr_b8 v[178:179], v219 offset:1792
ds_read_b64_tr_b8 v[180:181], v219 offset:2816
ds_read_b64_tr_b8 v[182:183], v219 offset:3840
ds_read_b64_tr_b8 v[184:185], v219 offset:4096
ds_read_b64_tr_b8 v[186:187], v219 offset:5120
ds_read_b64_tr_b8 v[188:189], v219 offset:6144
ds_read_b64_tr_b8 v[190:191], v219 offset:7168
s_sub_i32 s80, s81, 0x60
s_cmp_ge_i32 s80, 32
s_cbranch_scc1 86
s_cmp_lt_i32 s80, 0
s_cbranch_scc1 65
v_cmp_gt_i32_e32 vcc, 0x60, v249
v_cndmask_b32_e64 v112, v112, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x61, v249
v_cndmask_b32_e64 v113, v113, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x62, v249
v_cndmask_b32_e64 v114, v114, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x63, v249
v_cndmask_b32_e64 v115, v115, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x68, v249
v_cndmask_b32_e64 v116, v116, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x69, v249
v_cndmask_b32_e64 v117, v117, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x6a, v249
v_cndmask_b32_e64 v118, v118, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x6b, v249
v_cndmask_b32_e64 v119, v119, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x70, v249
v_cndmask_b32_e64 v120, v120, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x71, v249
v_cndmask_b32_e64 v121, v121, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x72, v249
v_cndmask_b32_e64 v122, v122, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x73, v249
v_cndmask_b32_e64 v123, v123, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x78, v249
v_cndmask_b32_e64 v124, v124, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x79, v249
v_cndmask_b32_e64 v125, v125, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x7a, v249
v_cndmask_b32_e64 v126, v126, v250, vcc
v_cmp_gt_i32_e32 vcc, 0x7b, v249
v_cndmask_b32_e64 v127, v127, v250, vcc
s_branch 21
s_nop 15
s_nop 3
s_branch 2
s_nop 15
s_nop 3
s_nop 1
v_max_f32_e32 v247, v112, v113
v_max3_f32 v247, v114, v115, v247
v_max3_f32 v247, v116, v117, v247
v_max3_f32 v247, v118, v119, v247
v_max3_f32 v247, v120, v121, v247
v_max3_f32 v247, v122, v123, v247
v_max3_f32 v247, v124, v125, v247
v_max3_f32 v247, v126, v127, v247
v_max_f32_e32 v244, v244, v245
v_max_f32_e32 v246, v246, v247
s_nop 1
v_permlane32_swap_b32_e32 v244, v245
v_permlane32_swap_b32_e32 v246, v247
v_max_f32_e32 v244, v244, v245
v_max_f32_e32 v246, v246, v247
v_max_f32_e32 v245, v244, v246
v_mul_f32_e32 v245, s29, v245
v_max_f32_e32 v247, v231, v245
v_sub_f32_e32 v245, v247, v231
v_cmp_lt_f32_e32 vcc, 0x3e000000, v245
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[74:75], -1, 0
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[200:207], v[128:135], v[16:31], v243, v235 op_sel_hi:[0,0,0]
s_cselect_b32 s73, 1, 0
v_cndmask_b32_e64 v220, v231, v247, s[74:75]
v_fma_f32 v244, v244, s29, -v220
v_floor_f32_e32 v244, v244
v_med3_f32 v244, v244, s82, 0
v_cvt_i32_f32_e32 v233, v244
v_add_u32_e32 v233, 0x7f, v233
v_lshlrev_b32_e32 v237, 23, v233
v_fma_f32 v246, v246, s29, -v220
v_floor_f32_e32 v246, v246
v_med3_f32 v246, v246, s82, 0
v_cvt_i32_f32_e32 v234, v246
v_add_u32_e32 v234, 0x7f, v234
v_lshlrev_b32_e32 v238, 23, v234
v_fma_f32 v245, v220, v251, s30
v_fma_f32 v241, v244, v251, v245
v_fma_f32 v242, v246, v251, v245
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[168:175], v[128:135], v[32:47], v243, v235 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[192:193], v219 offset:4352
ds_read_b64_tr_b8 v[194:195], v219 offset:5376
ds_read_b64_tr_b8 v[196:197], v219 offset:6400
ds_read_b64_tr_b8 v[198:199], v219 offset:7424
ds_read_b64_tr_b8 v[200:201], v219 offset:4608
ds_read_b64_tr_b8 v[202:203], v219 offset:5632
ds_read_b64_tr_b8 v[204:205], v219 offset:6656
ds_read_b64_tr_b8 v[206:207], v219 offset:7680
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[176:183], v[128:135], v[48:63], v243, v235 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[184:191], v[136:143], v[0:15], v243, v236 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[168:169], v219 offset:4864
ds_read_b64_tr_b8 v[170:171], v219 offset:5888
ds_read_b64_tr_b8 v[172:173], v219 offset:6912
ds_read_b64_tr_b8 v[174:175], v219 offset:7936
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[192:199], v[136:143], v[16:31], v243, v236 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[200:207], v[136:143], v[32:47], v243, v236 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[168:175], v[136:143], v[48:63], v243, v236 op_sel_hi:[0,0,0]
s_cmp_eq_u32 s73, 0
s_cbranch_scc1 69
v_sub_f32_e32 v248, v231, v220
v_exp_f32_e32 v248, v248
s_nop 0
v_pk_mul_f32 v[0:1], v[0:1], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[2:3], v[2:3], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[4:5], v[4:5], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[6:7], v[6:7], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[8:9], v[8:9], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[10:11], v[10:11], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[12:13], v[12:13], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[14:15], v[14:15], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[16:17], v[16:17], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[18:19], v[18:19], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[20:21], v[20:21], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[22:23], v[22:23], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[24:25], v[24:25], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[26:27], v[26:27], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[28:29], v[28:29], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[30:31], v[30:31], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[32:33], v[32:33], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[34:35], v[34:35], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[36:37], v[36:37], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[38:39], v[38:39], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[40:41], v[40:41], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[42:43], v[42:43], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[44:45], v[44:45], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[46:47], v[46:47], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[48:49], v[48:49], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[50:51], v[50:51], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[52:53], v[52:53], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[54:55], v[54:55], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[56:57], v[56:57], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[58:59], v[58:59], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[60:61], v[60:61], v[248:249] op_sel_hi:[1,0]
v_pk_mul_f32 v[62:63], v[62:63], v[248:249] op_sel_hi:[1,0]
v_mul_f32_e32 v232, v248, v232
s_barrier
s_add_u32 s65, s65, 1
s_branch 61810
s_add_u32 s45, s65, s91
s_add_u32 s78, s45, 1
s_and_b32 s78, s78, 3
s_lshl_b32 s86, s78, 14
s_and_b32 s78, s45, 3
s_lshl_b32 s79, s78, 14
s_add_u32 s88, s83, s79
s_add_u32 s78, s45, 2
s_and_b32 s78, s78, 3
s_lshl_b32 s79, s78, 14
s_add_u32 s89, s84, s79
v_add_u32_e32 v217, s86, v224
v_add_u32_e32 v218, s86, v225
v_add_u32_e32 v219, s87, v226
s_cmp_lt_u32 s64, s65
s_cbranch_scc1 626
s_setprio 0
v_fma_f32 v64, v64, s28, v241
v_fma_f32 v65, v65, s28, v241
v_fma_f32 v66, v66, s28, v241
v_fma_f32 v67, v67, s28, v241
v_fma_f32 v68, v68, s28, v241
v_fma_f32 v69, v69, s28, v241
v_fma_f32 v70, v70, s28, v241
v_fma_f32 v71, v71, s28, v241
v_fma_f32 v72, v72, s28, v241
v_fma_f32 v73, v73, s28, v241
v_fma_f32 v74, v74, s28, v241
v_fma_f32 v75, v75, s28, v241
v_fma_f32 v76, v76, s28, v241
v_fma_f32 v77, v77, s28, v241
v_fma_f32 v78, v78, s28, v241
v_fma_f32 v79, v79, s28, v241
v_fma_f32 v80, v80, s28, v241
v_cvt_pk_u8_f32 v128, v64, 0, 0
v_fma_f32 v81, v81, s28, v241
v_cvt_pk_u8_f32 v129, v68, 0, 0
v_fma_f32 v82, v82, s28, v241
v_cvt_pk_u8_f32 v130, v72, 0, 0
v_fma_f32 v83, v83, s28, v241
v_cvt_pk_u8_f32 v131, v76, 0, 0
v_fma_f32 v84, v84, s28, v241
v_cvt_pk_u8_f32 v128, v65, 1, v128
v_fma_f32 v85, v85, s28, v241
v_cvt_pk_u8_f32 v129, v69, 1, v129
v_fma_f32 v86, v86, s28, v241
v_cvt_pk_u8_f32 v130, v73, 1, v130
v_fma_f32 v87, v87, s28, v241
v_cvt_pk_u8_f32 v131, v77, 1, v131
v_fma_f32 v88, v88, s28, v241
v_cvt_pk_u8_f32 v128, v66, 2, v128
v_fma_f32 v89, v89, s28, v241
v_cvt_pk_u8_f32 v129, v70, 2, v129
v_fma_f32 v90, v90, s28, v241
v_cvt_pk_u8_f32 v130, v74, 2, v130
v_fma_f32 v91, v91, s28, v241
v_cvt_pk_u8_f32 v131, v78, 2, v131
v_fma_f32 v92, v92, s28, v241
v_cvt_pk_u8_f32 v128, v67, 3, v128
v_fma_f32 v93, v93, s28, v241
v_cvt_pk_u8_f32 v129, v71, 3, v129
v_fma_f32 v94, v94, s28, v241
v_cvt_pk_u8_f32 v130, v75, 3, v130
v_fma_f32 v95, v95, s28, v241
v_cvt_pk_u8_f32 v131, v79, 3, v131
v_fma_f32 v96, v96, s28, v242
v_cvt_pk_u8_f32 v132, v80, 0, 0
v_fma_f32 v97, v97, s28, v242
v_cvt_pk_u8_f32 v133, v84, 0, 0
v_fma_f32 v98, v98, s28, v242
v_cvt_pk_u8_f32 v134, v88, 0, 0
v_fma_f32 v99, v99, s28, v242
v_cvt_pk_u8_f32 v135, v92, 0, 0
v_fma_f32 v100, v100, s28, v242
v_cvt_pk_u8_f32 v132, v81, 1, v132
v_fma_f32 v101, v101, s28, v242
v_cvt_pk_u8_f32 v133, v85, 1, v133
v_fma_f32 v102, v102, s28, v242
v_cvt_pk_u8_f32 v134, v89, 1, v134
v_fma_f32 v103, v103, s28, v242
v_cvt_pk_u8_f32 v135, v93, 1, v135
v_fma_f32 v104, v104, s28, v242
v_cvt_pk_u8_f32 v132, v82, 2, v132
v_fma_f32 v105, v105, s28, v242
v_cvt_pk_u8_f32 v133, v86, 2, v133
v_fma_f32 v106, v106, s28, v242
v_cvt_pk_u8_f32 v134, v90, 2, v134
v_fma_f32 v107, v107, s28, v242
v_cvt_pk_u8_f32 v135, v94, 2, v135
v_fma_f32 v108, v108, s28, v242
v_cvt_pk_u8_f32 v132, v83, 3, v132
v_fma_f32 v109, v109, s28, v242
v_cvt_pk_u8_f32 v133, v87, 3, v133
v_fma_f32 v110, v110, s28, v242
v_cvt_pk_u8_f32 v134, v91, 3, v134
v_fma_f32 v111, v111, s28, v242
v_cvt_pk_u8_f32 v135, v95, 3, v135
v_fma_f32 v112, v112, s28, v242
v_cvt_pk_u8_f32 v136, v96, 0, 0
v_fma_f32 v113, v113, s28, v242
v_cvt_pk_u8_f32 v137, v100, 0, 0
v_fma_f32 v114, v114, s28, v242
v_cvt_pk_u8_f32 v138, v104, 0, 0
v_fma_f32 v115, v115, s28, v242
v_cvt_pk_u8_f32 v139, v108, 0, 0
v_fma_f32 v116, v116, s28, v242
v_cvt_pk_u8_f32 v136, v97, 1, v136
v_fma_f32 v117, v117, s28, v242
v_cvt_pk_u8_f32 v137, v101, 1, v137
v_fma_f32 v118, v118, s28, v242
v_cvt_pk_u8_f32 v138, v105, 1, v138
v_fma_f32 v119, v119, s28, v242
v_cvt_pk_u8_f32 v139, v109, 1, v139
v_fma_f32 v120, v120, s28, v242
v_cvt_pk_u8_f32 v136, v98, 2, v136
v_fma_f32 v121, v121, s28, v242
v_cvt_pk_u8_f32 v137, v102, 2, v137
v_fma_f32 v122, v122, s28, v242
v_cvt_pk_u8_f32 v138, v106, 2, v138
v_fma_f32 v123, v123, s28, v242
v_cvt_pk_u8_f32 v139, v110, 2, v139
v_fma_f32 v124, v124, s28, v242
v_cvt_pk_u8_f32 v136, v99, 3, v136
v_fma_f32 v125, v125, s28, v242
v_cvt_pk_u8_f32 v137, v103, 3, v137
v_fma_f32 v126, v126, s28, v242
v_cvt_pk_u8_f32 v138, v107, 3, v138
v_fma_f32 v127, v127, s28, v242
v_cvt_pk_u8_f32 v139, v111, 3, v139
v_cvt_pk_u8_f32 v140, v112, 0, 0
v_cvt_pk_u8_f32 v141, v116, 0, 0
v_cvt_pk_u8_f32 v142, v120, 0, 0
v_cvt_pk_u8_f32 v143, v124, 0, 0
v_cvt_pk_u8_f32 v140, v113, 1, v140
v_cvt_pk_u8_f32 v141, v117, 1, v141
v_cvt_pk_u8_f32 v142, v121, 1, v142
v_cvt_pk_u8_f32 v143, v125, 1, v143
v_cvt_pk_u8_f32 v140, v114, 2, v140
v_cvt_pk_u8_f32 v141, v118, 2, v141
v_cvt_pk_u8_f32 v142, v122, 2, v142
v_cvt_pk_u8_f32 v143, v126, 2, v143
v_cvt_pk_u8_f32 v140, v115, 3, v140
v_cvt_pk_u8_f32 v141, v119, 3, v141
v_cvt_pk_u8_f32 v142, v123, 3, v142
v_cvt_pk_u8_f32 v143, v127, 3, v143
s_waitcnt vmcnt(0)
s_barrier
v_and_b32_e32 v255, 31, v216
v_add_u32_e32 v255, s62, v255
v_lshlrev_b32_e32 v222, 2, v255
v_bfe_u32 v255, v216, 4, 2
v_add_u32_e32 v255, s62, v255
v_mul_lo_u32 v221, v255, s37
v_and_b32_e32 v255, 15, v216
v_lshl_add_u32 v221, v255, 4, v221
s_add_u32 s47, s91, s63
s_and_b32 s47, s47, 3
s_cmp_eq_u32 s60, 0
s_cbranch_scc0 5
s_mov_b32 s60, 1
s_sub_u32 s78, s32, 1
s_sub_u32 s78, s78, s48
s_cmp_eq_u32 s78, s48
s_cbranch_scc0 11
s_add_u32 s56, s56, s42
s_mov_b32 s60, 0
s_cmp_ge_u32 s56, s31
s_cselect_b32 s46, 1, 0
s_cbranch_scc1 53
s_lshl_b32 s78, s56, 5
s_add_u32 s80, s26, s78
s_addc_u32 s81, s27, 0
s_load_dwordx8 s[48:55], s[80:81], 0x0
s_waitcnt lgkmcnt(0)
s_sub_u32 s78, s32, 1
s_sub_u32 s78, s78, s48
s_cmp_eq_u32 s60, 0
s_cselect_b32 s61, s78, s48
s_and_b32 s78, s57, 3
s_cmp_eq_u32 s34, 0
s_cselect_b32 s59, s57, s78
s_mul_i32 s78, s61, s33
s_add_u32 s78, s78, s59
s_lshl_b32 s62, s78, 5
s_add_u32 s78, s61, 1
s_mul_i32 s78, s78, s33
s_lshl_b32 s78, s78, 5
s_add_u32 s78, s78, 0x7f
s_lshr_b32 s63, s78, 7
s_lshr_b32 s78, s41, 7
s_min_u32 s63, s63, s78
s_lshr_b32 s64, s62, 7
s_and_b32 s79, s58, s34
s_mul_i32 s80, s79, s38
s_add_u32 s4, s50, s80
s_addc_u32 s5, s51, 0
s_add_u32 s4, s4, s16
s_addc_u32 s5, s5, s17
s_mul_i32 s80, s79, s39
s_add_u32 s6, s54, s80
s_addc_u32 s7, s55, 0
s_add_u32 s6, s6, s22
s_addc_u32 s7, s7, s23
s_mul_i32 s80, s79, s40
s_add_u32 s80, s80, s49
s_lshl_b32 s80, s80, 2
s_cmp_eq_u64 s[24:25], 0
s_cselect_b32 s80, 0, s80
s_add_u32 s76, s24, s80
s_addc_u32 s77, s25, 0
s_add_u32 s8, s18, s52
s_addc_u32 s9, s19, s53
s_mul_i32 s10, s41, s36
s_mov_b32 s11, 0x110000
s_add_u32 s12, s20, s52
s_addc_u32 s13, s21, s53
s_mul_i32 s14, s41, s36
s_mov_b32 s15, 0x110000
s_cmp_eq_u32 s46, 0
s_cbranch_scc0 173
s_cmp_eq_u32 s58, 0
s_cbranch_scc0 155
s_mul_i32 s79, 0, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 64, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 0x60, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 0, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_mul_i32 s79, 64, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_mul_i32 s79, 4, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_mul_i32 s79, 0x44, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_cmpk_le_u32 s63, 0x1
s_cbranch_scc1 51
s_mul_i32 s79, 0, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 64, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 0x60, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
v_and_b32_e32 v255, 31, v216
v_add_u32_e32 v255, s62, v255
v_mul_lo_u32 v255, v255, s35
v_bfe_u32 v244, v216, 5, 1
v_lshl_add_u32 v255, v244, 5, v255
global_load_dwordx4 v[144:147], v255, s[4:5]
global_load_dwordx4 v[148:151], v255, s[4:5] offset:16
global_load_dwordx4 v[152:155], v255, s[4:5] offset:64
global_load_dwordx4 v[156:159], v255, s[4:5] offset:80
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[208:211], v[160:167], v[128:135], 0
v_mfma_f32_16x16x128_f8f6f4 v[212:215], v[160:167], v[136:143], 0
ds_read_b64_tr_b8 v[168:169], v219
ds_read_b64_tr_b8 v[170:171], v219 offset:1024
ds_read_b64_tr_b8 v[172:173], v219 offset:2048
ds_read_b64_tr_b8 v[174:175], v219 offset:3072
ds_read_b64_tr_b8 v[176:177], v219 offset:256
ds_read_b64_tr_b8 v[178:179], v219 offset:1280
ds_read_b64_tr_b8 v[180:181], v219 offset:2304
ds_read_b64_tr_b8 v[182:183], v219 offset:3328
ds_read_b64_tr_b8 v[184:185], v219 offset:512
ds_read_b64_tr_b8 v[186:187], v219 offset:1536
ds_read_b64_tr_b8 v[188:189], v219 offset:2560
ds_read_b64_tr_b8 v[190:191], v219 offset:3584
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[168:175], v[128:135], v[0:15], v243, v235 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[192:193], v219 offset:768
ds_read_b64_tr_b8 v[194:195], v219 offset:1792
ds_read_b64_tr_b8 v[196:197], v219 offset:2816
ds_read_b64_tr_b8 v[198:199], v219 offset:3840
ds_read_b64_tr_b8 v[200:201], v219 offset:4096
ds_read_b64_tr_b8 v[202:203], v219 offset:5120
ds_read_b64_tr_b8 v[204:205], v219 offset:6144
ds_read_b64_tr_b8 v[206:207], v219 offset:7168
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[176:183], v[128:135], v[16:31], v243, v235 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[184:191], v[128:135], v[32:47], v243, v235 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[168:169], v219 offset:4352
ds_read_b64_tr_b8 v[170:171], v219 offset:5376
ds_read_b64_tr_b8 v[172:173], v219 offset:6400
ds_read_b64_tr_b8 v[174:175], v219 offset:7424
ds_read_b64_tr_b8 v[176:177], v219 offset:4608
ds_read_b64_tr_b8 v[178:179], v219 offset:5632
ds_read_b64_tr_b8 v[180:181], v219 offset:6656
ds_read_b64_tr_b8 v[182:183], v219 offset:7680
v_mul_f32_e32 v255, v208, v239
v_add_f32_e32 v232, v232, v255
v_mul_f32_e32 v255, v212, v240
v_add_f32_e32 v232, v232, v255
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[192:199], v[128:135], v[48:63], v243, v235 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[200:207], v[136:143], v[0:15], v243, v236 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[184:185], v219 offset:4864
ds_read_b64_tr_b8 v[186:187], v219 offset:5888
ds_read_b64_tr_b8 v[188:189], v219 offset:6912
ds_read_b64_tr_b8 v[190:191], v219 offset:7936
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[168:175], v[136:143], v[16:31], v243, v236 op_sel_hi:[0,0,0]
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[176:183], v[136:143], v[32:47], v243, v236 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[184:191], v[136:143], v[48:63], v243, v236 op_sel_hi:[0,0,0]
s_branch 259
s_waitcnt vmcnt(0)
s_barrier
v_and_b32_e32 v255, 31, v216
v_add_u32_e32 v255, s62, v255
v_lshlrev_b32_e32 v222, 2, v255
v_bfe_u32 v255, v216, 4, 2
v_add_u32_e32 v255, s62, v255
v_mul_lo_u32 v221, v255, s37
v_and_b32_e32 v255, 15, v216
v_lshl_add_u32 v221, v255, 4, v221
s_add_u32 s47, s91, s63
s_and_b32 s47, s47, 3
s_cmp_eq_u32 s60, 0
s_cbranch_scc0 5
s_mov_b32 s60, 1
s_sub_u32 s78, s32, 1
s_sub_u32 s78, s78, s48
s_cmp_eq_u32 s78, s48
s_cbranch_scc0 11
s_add_u32 s56, s56, s42
s_mov_b32 s60, 0
s_cmp_ge_u32 s56, s31
s_cselect_b32 s46, 1, 0
s_cbranch_scc1 53
s_lshl_b32 s78, s56, 5
s_add_u32 s80, s26, s78
s_addc_u32 s81, s27, 0
s_load_dwordx8 s[48:55], s[80:81], 0x0
s_waitcnt lgkmcnt(0)
s_sub_u32 s78, s32, 1
s_sub_u32 s78, s78, s48
s_cmp_eq_u32 s60, 0
s_cselect_b32 s61, s78, s48
s_and_b32 s78, s57, 3
s_cmp_eq_u32 s34, 0
s_cselect_b32 s59, s57, s78
s_mul_i32 s78, s61, s33
s_add_u32 s78, s78, s59
s_lshl_b32 s62, s78, 5
s_add_u32 s78, s61, 1
s_mul_i32 s78, s78, s33
s_lshl_b32 s78, s78, 5
s_add_u32 s78, s78, 0x7f
s_lshr_b32 s63, s78, 7
s_lshr_b32 s78, s41, 7
s_min_u32 s63, s63, s78
s_lshr_b32 s64, s62, 7
s_and_b32 s79, s58, s34
s_mul_i32 s80, s79, s38
s_add_u32 s4, s50, s80
s_addc_u32 s5, s51, 0
s_add_u32 s4, s4, s16
s_addc_u32 s5, s5, s17
s_mul_i32 s80, s79, s39
s_add_u32 s6, s54, s80
s_addc_u32 s7, s55, 0
s_add_u32 s6, s6, s22
s_addc_u32 s7, s7, s23
s_mul_i32 s80, s79, s40
s_add_u32 s80, s80, s49
s_lshl_b32 s80, s80, 2
s_cmp_eq_u64 s[24:25], 0
s_cselect_b32 s80, 0, s80
s_add_u32 s76, s24, s80
s_addc_u32 s77, s25, 0
s_add_u32 s8, s18, s52
s_addc_u32 s9, s19, s53
s_mul_i32 s10, s41, s36
s_mov_b32 s11, 0x110000
s_add_u32 s12, s20, s52
s_addc_u32 s13, s21, s53
s_mul_i32 s14, s41, s36
s_mov_b32 s15, 0x110000
s_cmp_eq_u32 s46, 0
s_cbranch_scc0 173
s_cmp_eq_u32 s58, 0
s_cbranch_scc0 155
s_mul_i32 s79, 0, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 64, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 0x60, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 0, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_mul_i32 s79, 64, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_mul_i32 s79, 4, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_mul_i32 s79, 0x44, s36
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v229, s[12:15], s79 offen lds
s_cmpk_le_u32 s63, 0x1
s_cbranch_scc1 51
s_mul_i32 s79, 0, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 64, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
s_mul_i32 s79, 0x60, s36
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s47, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v227, s[8:11], s79 offen lds
v_and_b32_e32 v255, 31, v216
v_add_u32_e32 v255, s62, v255
v_mul_lo_u32 v255, v255, s35
v_bfe_u32 v244, v216, 5, 1
v_lshl_add_u32 v255, v244, 5, v255
global_load_dwordx4 v[144:147], v255, s[4:5]
global_load_dwordx4 v[148:151], v255, s[4:5] offset:16
global_load_dwordx4 v[152:155], v255, s[4:5] offset:64
global_load_dwordx4 v[156:159], v255, s[4:5] offset:80
s_waitcnt vmcnt(4)
s_barrier
s_cmp_eq_u32 s46, 0
s_cbranch_scc1 57250
s_nop 15
s_nop 3
v_rcp_f32_e32 v255, v232
v_log_f32_e32 v223, v232
s_nop 1
v_mul_f32_e32 v255, s100, v255
v_mul_f32_e32 v0, v255, v0
v_mul_f32_e32 v1, v255, v1
v_mul_f32_e32 v2, v255, v2
v_mul_f32_e32 v3, v255, v3
v_mul_f32_e32 v4, v255, v4
v_mul_f32_e32 v5, v255, v5
v_mul_f32_e32 v6, v255, v6
v_mul_f32_e32 v7, v255, v7
v_mul_f32_e32 v8, v255, v8
v_mul_f32_e32 v9, v255, v9
v_mul_f32_e32 v10, v255, v10
v_mul_f32_e32 v11, v255, v11
v_mul_f32_e32 v12, v255, v12
v_mul_f32_e32 v13, v255, v13
v_mul_f32_e32 v14, v255, v14
v_mul_f32_e32 v15, v255, v15
v_mul_f32_e32 v16, v255, v16
v_mul_f32_e32 v17, v255, v17
v_mul_f32_e32 v18, v255, v18
v_mul_f32_e32 v19, v255, v19
v_mul_f32_e32 v20, v255, v20
v_mul_f32_e32 v21, v255, v21
v_mul_f32_e32 v22, v255, v22
v_mul_f32_e32 v23, v255, v23
v_mul_f32_e32 v24, v255, v24
v_mul_f32_e32 v25, v255, v25
v_mul_f32_e32 v26, v255, v26
v_mul_f32_e32 v27, v255, v27
v_mul_f32_e32 v28, v255, v28
v_mul_f32_e32 v29, v255, v29
v_mul_f32_e32 v30, v255, v30
v_mul_f32_e32 v31, v255, v31
v_mul_f32_e32 v32, v255, v32
v_mul_f32_e32 v33, v255, v33
v_mul_f32_e32 v34, v255, v34
v_mul_f32_e32 v35, v255, v35
v_mul_f32_e32 v36, v255, v36
v_mul_f32_e32 v37, v255, v37
v_mul_f32_e32 v38, v255, v38
v_mul_f32_e32 v39, v255, v39
v_mul_f32_e32 v40, v255, v40
v_mul_f32_e32 v41, v255, v41
v_mul_f32_e32 v42, v255, v42
v_mul_f32_e32 v43, v255, v43
v_mul_f32_e32 v44, v255, v44
v_mul_f32_e32 v45, v255, v45
v_mul_f32_e32 v46, v255, v46
v_mul_f32_e32 v47, v255, v47
v_mul_f32_e32 v48, v255, v48
v_mul_f32_e32 v49, v255, v49
v_mul_f32_e32 v50, v255, v50
v_mul_f32_e32 v51, v255, v51
v_mul_f32_e32 v52, v255, v52
v_mul_f32_e32 v53, v255, v53
v_mul_f32_e32 v54, v255, v54
v_mul_f32_e32 v55, v255, v55
v_mul_f32_e32 v56, v255, v56
v_mul_f32_e32 v57, v255, v57
v_mul_f32_e32 v58, v255, v58
v_mul_f32_e32 v59, v255, v59
v_mul_f32_e32 v60, v255, v60
v_mul_f32_e32 v61, v255, v61
v_mul_f32_e32 v62, v255, v62
v_mul_f32_e32 v63, v255, v63
v_cvt_pk_bf16_f32 v0, v0, v1
v_cvt_pk_bf16_f32 v1, v2, v3
v_cvt_pk_bf16_f32 v2, v4, v5
v_cvt_pk_bf16_f32 v3, v6, v7
v_cvt_pk_bf16_f32 v4, v8, v9
v_cvt_pk_bf16_f32 v5, v10, v11
v_cvt_pk_bf16_f32 v6, v12, v13
v_cvt_pk_bf16_f32 v7, v14, v15
v_cvt_pk_bf16_f32 v8, v16, v17
v_cvt_pk_bf16_f32 v9, v18, v19
v_cvt_pk_bf16_f32 v10, v20, v21
v_cvt_pk_bf16_f32 v11, v22, v23
v_cvt_pk_bf16_f32 v12, v24, v25
v_cvt_pk_bf16_f32 v13, v26, v27
v_cvt_pk_bf16_f32 v14, v28, v29
v_cvt_pk_bf16_f32 v15, v30, v31
v_cvt_pk_bf16_f32 v16, v32, v33
v_cvt_pk_bf16_f32 v17, v34, v35
v_cvt_pk_bf16_f32 v18, v36, v37
v_cvt_pk_bf16_f32 v19, v38, v39
v_cvt_pk_bf16_f32 v20, v40, v41
v_cvt_pk_bf16_f32 v21, v42, v43
v_cvt_pk_bf16_f32 v22, v44, v45
v_cvt_pk_bf16_f32 v23, v46, v47
v_cvt_pk_bf16_f32 v24, v48, v49
v_cvt_pk_bf16_f32 v25, v50, v51
v_cvt_pk_bf16_f32 v26, v52, v53
v_cvt_pk_bf16_f32 v27, v54, v55
v_cvt_pk_bf16_f32 v28, v56, v57
v_cvt_pk_bf16_f32 v29, v58, v59
v_cvt_pk_bf16_f32 v30, v60, v61
v_cvt_pk_bf16_f32 v31, v62, v63
v_permlane32_swap_b32_e32 v0, v2
v_permlane32_swap_b32_e32 v1, v3
v_permlane32_swap_b32_e32 v4, v6
v_permlane32_swap_b32_e32 v5, v7
v_permlane32_swap_b32_e32 v8, v10
v_permlane32_swap_b32_e32 v9, v11
v_permlane32_swap_b32_e32 v12, v14
v_permlane32_swap_b32_e32 v13, v15
v_permlane32_swap_b32_e32 v16, v18
v_permlane32_swap_b32_e32 v17, v19
v_permlane32_swap_b32_e32 v20, v22
v_permlane32_swap_b32_e32 v21, v23
v_permlane32_swap_b32_e32 v24, v26
v_permlane32_swap_b32_e32 v25, v27
v_permlane32_swap_b32_e32 v28, v30
v_permlane32_swap_b32_e32 v29, v31
v_add_f32_e32 v223, v231, v223
v_add_f32_e32 v223, -4.0, v223
v_add_f32_e32 v223, -2.0, v223
v_mul_f32_e32 v223, 0x3f317218, v223
s_and_b32 s78, s57, 3
s_lshl_b32 s78, s78, 13
s_add_u32 s78, s78, 0x20000
s_lshl_b32 s79, s37, 2
v_and_b32_e32 v244, 31, v216
v_lshlrev_b32_e32 v245, 8, v244
v_add_u32_e32 v245, s78, v245
v_bfe_u32 v246, v216, 5, 1
v_and_b32_e32 v247, 15, v244
v_xor_b32_e32 v246, v246, v247
v_lshl_or_b32 v245, v246, 4, v245
v_xor_b32_e32 v246, 0, v245
ds_write_b128 v246, v[0:3]
v_xor_b32_e32 v246, 32, v245
ds_write_b128 v246, v[4:7]
v_xor_b32_e32 v246, 64, v245
ds_write_b128 v246, v[8:11]
v_xor_b32_e32 v246, 0x60, v245
ds_write_b128 v246, v[12:15]
v_xor_b32_e32 v246, 0x80, v245
ds_write_b128 v246, v[16:19]
v_xor_b32_e32 v246, 0xa0, v245
ds_write_b128 v246, v[20:23]
v_xor_b32_e32 v246, 0xc0, v245
ds_write_b128 v246, v[24:27]
v_xor_b32_e32 v246, 0xe0, v245
ds_write_b128 v246, v[28:31]
v_bfe_u32 v244, v216, 4, 2
v_and_b32_e32 v247, 15, v216
v_xor_b32_e32 v247, v247, v244
v_lshlrev_b32_e32 v244, 8, v244
v_add_u32_e32 v244, s78, v244
v_lshl_or_b32 v244, v247, 4, v244
v_xor_b32_e32 v245, 64, v244
v_xor_b32_e32 v246, 0x80, v244
v_xor_b32_e32 v247, 0xc0, v244
ds_read_b128 v[32:35], v244
ds_read_b128 v[36:39], v245 offset:1024
ds_read_b128 v[40:43], v246 offset:2048
ds_read_b128 v[44:47], v247 offset:3072
ds_read_b128 v[48:51], v244 offset:4096
ds_read_b128 v[52:55], v245 offset:5120
ds_read_b128 v[56:59], v246 offset:6144
ds_read_b128 v[60:63], v247 offset:7168
v_add_u32_e32 v129, s79, v128
v_add_u32_e32 v130, s79, v129
v_add_u32_e32 v131, s79, v130
v_add_u32_e32 v132, s79, v131
v_add_u32_e32 v133, s79, v132
v_add_u32_e32 v134, s79, v133
v_add_u32_e32 v135, s79, v134
s_waitcnt lgkmcnt(7)
global_store_dwordx4 v128, v[32:35], s[92:93]
s_waitcnt lgkmcnt(6)
global_store_dwordx4 v129, v[36:39], s[92:93]
s_waitcnt lgkmcnt(5)
global_store_dwordx4 v130, v[40:43], s[92:93]
s_waitcnt lgkmcnt(4)
global_store_dwordx4 v131, v[44:47], s[92:93]
s_waitcnt lgkmcnt(3)
global_store_dwordx4 v132, v[48:51], s[92:93]
s_waitcnt lgkmcnt(2)
global_store_dwordx4 v133, v[52:55], s[92:93]
s_waitcnt lgkmcnt(1)
global_store_dwordx4 v134, v[56:59], s[92:93]
s_waitcnt lgkmcnt(0)
global_store_dwordx4 v135, v[60:63], s[92:93]
s_cmp_eq_u64 s[94:95], 0
s_cbranch_scc1 2
global_store_dword v222, v223, s[94:95]
s_cmp_eq_u32 s58, 0
s_cbranch_scc0 1
s_barrier
s_waitcnt vmcnt(0)
s_endpgm
