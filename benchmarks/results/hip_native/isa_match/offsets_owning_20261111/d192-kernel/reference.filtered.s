s_load_dwordx16 s[16:31], s[0:1], 0x0
s_load_dwordx16 s[32:47], s[0:1], 0x40
s_load_dwordx4 s[96:99], s[0:1], 0x80
s_load_dwordx2 s[100:101], s[0:1], 0x90
v_lshrrev_b32_e32 v213, 6, v188
s_nop 3
v_readfirstlane_b32 s57, v213
s_nop 3
s_lshr_b32 s58, s57, 2
v_and_b32_e32 v207, 63, v188
v_and_b32_e32 v208, 31, v188
v_bfe_u32 v209, v188, 5, 1
v_lshrrev_b32_e32 v210, 4, v207
v_lshrrev_b32_e32 v213, 2, v207
v_xor_b32_e32 v210, v210, v213
v_and_b32_e32 v210, 1, v210
v_cmp_eq_u32_e32 vcc, 0, v210
v_mov_b32_e32 v213, 0x38383838
v_cndmask_b32_e64 v128, 0, v213, vcc
v_add_u32_e32 v189, 0, v209
v_add_u32_e32 v189, v189, v208
v_and_b32_e32 v189, 7, v189
v_lshlrev_b32_e32 v189, 5, v189
v_lshl_add_u32 v189, v208, 8, v189
v_add_u32_e32 v190, 2, v209
v_add_u32_e32 v190, v190, v208
v_and_b32_e32 v190, 7, v190
v_lshlrev_b32_e32 v190, 5, v190
v_lshl_add_u32 v190, v208, 8, v190
v_add_u32_e32 v191, 4, v209
v_add_u32_e32 v191, v191, v208
v_and_b32_e32 v191, 7, v191
v_lshlrev_b32_e32 v191, 5, v191
v_lshl_add_u32 v191, v208, 8, v191
v_lshrrev_b32_e32 v213, 4, v208
v_lshl_add_u32 v192, v209, 5, v213
v_lshlrev_b32_e32 v192, 7, v192
v_and_b32_e32 v213, 15, v208
v_lshl_add_u32 v192, v213, 3, v192
v_add_u32_e32 v192, 0x10000, v192
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
v_mov_b32_e32 v206, 0x7f
v_mov_b32_e32 v212, 0xff800000
v_mov_b32_e32 v221, 0xc1000000
s_mov_b32 s82, 0xc2fe0000
s_lshl_b32 s66, s34, 6
s_lshl_b32 s67, s35, 6
v_add_u32_e32 v210, 0, v188
v_lshrrev_b32_e32 v213, 4, v210
v_bfe_u32 v197, v210, 1, 3
v_sub_u32_e32 v197, v197, v213
v_and_b32_e32 v197, 7, v197
v_cmp_gt_u32_e32 vcc, 6, v197
v_cndmask_b32_e64 v197, 0, v197, vcc
v_lshlrev_b32_e32 v197, 5, v197
v_bfe_u32 v207, v210, 0, 1
v_lshl_add_u32 v197, v207, 4, v197
v_mad_u32_u24 v197, v213, s34, v197
v_add_u32_e32 v210, 0x200, v188
v_lshrrev_b32_e32 v213, 4, v210
v_bfe_u32 v198, v210, 1, 3
v_sub_u32_e32 v198, v198, v213
v_and_b32_e32 v198, 7, v198
v_cmp_gt_u32_e32 vcc, 6, v198
v_cndmask_b32_e64 v198, 0, v198, vcc
v_lshlrev_b32_e32 v198, 5, v198
v_bfe_u32 v207, v210, 0, 1
v_lshl_add_u32 v198, v207, 4, v198
v_mad_u32_u24 v198, v213, s34, v198
v_bfe_u32 v213, v188, 7, 1
v_lshlrev_b32_e32 v199, 5, v213
v_bfe_u32 v213, v188, 8, 1
v_lshl_add_u32 v199, v213, 2, v199
v_bfe_u32 v213, v188, 6, 1
v_lshl_add_u32 v199, v213, 4, v199
v_bfe_u32 v213, v188, 2, 1
v_lshl_add_u32 v199, v213, 3, v199
v_and_b32_e32 v213, 3, v188
v_add_u32_e32 v199, v199, v213
v_bfe_u32 v213, v188, 3, 3
v_lshlrev_b32_e32 v213, 4, v213
v_mad_u32_u24 v199, v199, s35, v213
s_lshl_b32 s83, s57, 10
s_add_u32 s84, s83, 0x10000
s_mov_b32 s60, 0
s_mov_b32 s90, 0
s_mov_b32 s70, 0
s_mov_b32 s73, 0
s_cmp_ge_u32 s56, s29
s_cbranch_scc1 5363
s_lshl_b32 s78, s56, 5
s_add_u32 s80, s26, s78
s_addc_u32 s81, s27, 0
s_load_dwordx8 s[48:55], s[80:81], 0x0
s_waitcnt lgkmcnt(0)
v_mul_f32_e32 v207, s98, v207
v_mul_f32_e32 v208, s28, v207
s_nop 3
v_readfirstlane_b32 s28, v208
v_mul_f32_e32 v207, s42, v207
s_nop 3
v_readfirstlane_b32 s100, v207
s_sub_u32 s78, s30, 1
s_sub_u32 s78, s78, s48
s_cmp_eq_u32 s60, 0
s_cselect_b32 s61, s78, s48
s_and_b32 s78, s57, 3
s_cmp_eq_u32 s32, 0
s_cselect_b32 s59, s57, s78
s_mul_i32 s78, s61, s31
s_add_u32 s78, s78, s59
s_lshl_b32 s62, s78, 5
s_add_u32 s78, s61, 1
s_mul_i32 s78, s78, s31
s_lshl_b32 s78, s78, 5
s_add_u32 s78, s78, 63
s_lshr_b32 s63, s78, 6
s_lshr_b32 s78, s40, 6
s_min_u32 s63, s63, s78
s_lshr_b32 s64, s62, 6
s_and_b32 s79, s58, s32
s_mul_i32 s80, s79, s37
s_add_u32 s4, s50, s80
s_addc_u32 s5, s51, 0
s_add_u32 s4, s4, s16
s_addc_u32 s5, s5, s17
s_mov_b32 s81, 0
s_lshl_b64 s[80:81], s[80:81], 8
s_add_u32 s6, s80, s22
s_addc_u32 s7, s81, s23
s_mul_i32 s80, s79, s38
s_add_u32 s6, s6, s80
s_addc_u32 s7, s7, 0
s_mul_i32 s80, s79, s39
s_add_u32 s80, s80, s49
s_lshl_b32 s80, s80, 2
s_cmp_eq_u64 s[24:25], 0
s_cselect_b32 s80, 0, s80
s_add_u32 s76, s24, s80
s_addc_u32 s77, s25, 0
s_add_u32 s8, s18, s52
s_addc_u32 s9, s19, s53
s_mul_i32 s10, s40, s34
s_mov_b32 s11, 0x110000
s_mov_b32 s81, 0
s_lshl_b64 s[80:81], s[80:81], 7
s_add_u32 s12, s80, s20
s_addc_u32 s13, s81, s21
s_mul_i32 s14, s40, s35
s_mov_b32 s15, 0x110000
v_and_b32_e32 v213, 31, v188
v_add_u32_e32 v213, s62, v213
v_mul_lo_u32 v213, v213, s33
v_bfe_u32 v207, v188, 5, 1
v_lshl_add_u32 v213, v207, 5, v213
global_load_dwordx4 v[104:107], v213, s[4:5]
global_load_dwordx4 v[108:111], v213, s[4:5] offset:16
global_load_dwordx4 v[112:115], v213, s[4:5] offset:64
global_load_dwordx4 v[116:119], v213, s[4:5] offset:80
global_load_dwordx4 v[120:123], v213, s[4:5] offset:128
global_load_dwordx4 v[124:127], v213, s[4:5] offset:144
s_mul_i32 s79, 0, s66
s_add_u32 m0, s83, 0
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_add_u32 m0, s83, 0x2000
s_nop 0
buffer_load_dwordx4 v198, s[8:11], s79 offen lds
s_mul_i32 s79, 0, s67
s_add_u32 m0, s84, 0
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
s_cmpk_le_u32 s63, 0x1
s_cbranch_scc1 11
s_mul_i32 s79, 1, s66
s_add_u32 m0, s83, 0x4000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_add_u32 m0, s83, 0x6000
s_nop 0
buffer_load_dwordx4 v198, s[8:11], s79 offen lds
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
v_rcp_f32_e32 v213, v201
v_log_f32_e32 v217, v201
s_nop 1
v_mul_f32_e32 v213, s100, v213
v_mul_f32_e32 v0, v213, v0
v_mul_f32_e32 v1, v213, v1
v_mul_f32_e32 v2, v213, v2
v_mul_f32_e32 v3, v213, v3
v_mul_f32_e32 v4, v213, v4
v_mul_f32_e32 v5, v213, v5
v_mul_f32_e32 v6, v213, v6
v_mul_f32_e32 v7, v213, v7
v_mul_f32_e32 v8, v213, v8
v_mul_f32_e32 v9, v213, v9
v_mul_f32_e32 v10, v213, v10
v_mul_f32_e32 v11, v213, v11
v_mul_f32_e32 v12, v213, v12
v_mul_f32_e32 v13, v213, v13
v_mul_f32_e32 v14, v213, v14
v_mul_f32_e32 v15, v213, v15
v_mul_f32_e32 v16, v213, v16
v_mul_f32_e32 v17, v213, v17
v_mul_f32_e32 v18, v213, v18
v_mul_f32_e32 v19, v213, v19
v_mul_f32_e32 v20, v213, v20
v_mul_f32_e32 v21, v213, v21
v_mul_f32_e32 v22, v213, v22
v_mul_f32_e32 v23, v213, v23
v_mul_f32_e32 v24, v213, v24
v_mul_f32_e32 v25, v213, v25
v_mul_f32_e32 v26, v213, v26
v_mul_f32_e32 v27, v213, v27
v_mul_f32_e32 v28, v213, v28
v_mul_f32_e32 v29, v213, v29
v_mul_f32_e32 v30, v213, v30
v_mul_f32_e32 v31, v213, v31
v_mul_f32_e32 v32, v213, v32
v_mul_f32_e32 v33, v213, v33
v_mul_f32_e32 v34, v213, v34
v_mul_f32_e32 v35, v213, v35
v_mul_f32_e32 v36, v213, v36
v_mul_f32_e32 v37, v213, v37
v_mul_f32_e32 v38, v213, v38
v_mul_f32_e32 v39, v213, v39
v_mul_f32_e32 v40, v213, v40
v_mul_f32_e32 v41, v213, v41
v_mul_f32_e32 v42, v213, v42
v_mul_f32_e32 v43, v213, v43
v_mul_f32_e32 v44, v213, v44
v_mul_f32_e32 v45, v213, v45
v_mul_f32_e32 v46, v213, v46
v_mul_f32_e32 v47, v213, v47
v_mul_f32_e32 v48, v213, v48
v_mul_f32_e32 v49, v213, v49
v_mul_f32_e32 v50, v213, v50
v_mul_f32_e32 v51, v213, v51
v_mul_f32_e32 v52, v213, v52
v_mul_f32_e32 v53, v213, v53
v_mul_f32_e32 v54, v213, v54
v_mul_f32_e32 v55, v213, v55
v_mul_f32_e32 v56, v213, v56
v_mul_f32_e32 v57, v213, v57
v_mul_f32_e32 v58, v213, v58
v_mul_f32_e32 v59, v213, v59
v_mul_f32_e32 v60, v213, v60
v_mul_f32_e32 v61, v213, v61
v_mul_f32_e32 v62, v213, v62
v_mul_f32_e32 v63, v213, v63
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
s_and_b32 s78, s57, 3
s_lshl_b32 s78, s78, 13
s_add_u32 s78, s78, 0x18000
s_lshl_b32 s79, s36, 2
v_and_b32_e32 v207, 31, v188
v_lshlrev_b32_e32 v208, 8, v207
v_add_u32_e32 v208, s78, v208
v_bfe_u32 v209, v188, 5, 1
v_and_b32_e32 v210, 15, v207
v_xor_b32_e32 v209, v209, v210
v_lshl_or_b32 v208, v209, 4, v208
v_xor_b32_e32 v209, 0, v208
ds_write_b128 v209, v[0:3]
v_xor_b32_e32 v209, 32, v208
ds_write_b128 v209, v[4:7]
v_xor_b32_e32 v209, 64, v208
ds_write_b128 v209, v[8:11]
v_xor_b32_e32 v209, 0x60, v208
ds_write_b128 v209, v[12:15]
v_xor_b32_e32 v209, 0x80, v208
ds_write_b128 v209, v[16:19]
v_xor_b32_e32 v209, 0xa0, v208
ds_write_b128 v209, v[20:23]
v_xor_b32_e32 v209, 0xc0, v208
ds_write_b128 v209, v[24:27]
v_xor_b32_e32 v209, 0xe0, v208
ds_write_b128 v209, v[28:31]
v_bfe_u32 v207, v188, 4, 2
v_and_b32_e32 v210, 15, v188
v_xor_b32_e32 v210, v210, v207
v_lshlrev_b32_e32 v207, 8, v207
v_add_u32_e32 v207, s78, v207
v_lshl_or_b32 v207, v210, 4, v207
v_xor_b32_e32 v208, 64, v207
v_xor_b32_e32 v209, 0x80, v207
v_xor_b32_e32 v210, 0xc0, v207
ds_read_b128 v[32:35], v207
ds_read_b128 v[36:39], v208 offset:1024
ds_read_b128 v[40:43], v209 offset:2048
ds_read_b128 v[44:47], v210 offset:3072
ds_read_b128 v[48:51], v207 offset:4096
ds_read_b128 v[52:55], v208 offset:5120
ds_read_b128 v[56:59], v209 offset:6144
ds_read_b128 v[60:63], v210 offset:7168
v_add_u32_e32 v97, s79, v96
v_add_u32_e32 v98, s79, v97
v_add_u32_e32 v99, s79, v98
v_add_u32_e32 v100, s79, v99
v_add_u32_e32 v101, s79, v100
v_add_u32_e32 v102, s79, v101
v_add_u32_e32 v103, s79, v102
s_waitcnt lgkmcnt(7)
global_store_dwordx4 v96, v[32:35], s[92:93]
s_waitcnt lgkmcnt(6)
global_store_dwordx4 v97, v[36:39], s[92:93]
s_waitcnt lgkmcnt(5)
global_store_dwordx4 v98, v[40:43], s[92:93]
s_waitcnt lgkmcnt(4)
global_store_dwordx4 v99, v[44:47], s[92:93]
s_waitcnt lgkmcnt(3)
global_store_dwordx4 v100, v[48:51], s[92:93]
s_waitcnt lgkmcnt(2)
global_store_dwordx4 v101, v[52:55], s[92:93]
s_waitcnt lgkmcnt(1)
global_store_dwordx4 v102, v[56:59], s[92:93]
s_waitcnt lgkmcnt(0)
global_store_dwordx4 v103, v[60:63], s[92:93]
v_add_f32_e32 v217, v200, v217
v_add_f32_e32 v217, -4.0, v217
v_add_f32_e32 v217, -2.0, v217
v_mul_f32_e32 v217, 0x3f317218, v217
s_cmp_eq_u64 s[94:95], 0
s_cbranch_scc1 2
global_store_dword v216, v217, s[94:95]
s_waitcnt vmcnt(8)
s_mov_b32 s65, -1
s_lshl_b32 s78, s90, 14
v_add_u32_e32 v193, s78, v189
v_add_u32_e32 v194, s78, v190
v_add_u32_e32 v195, s78, v191
s_sub_u32 s78, s63, 1
s_mul_i32 s68, s78, s66
s_mul_i32 s69, s78, s67
s_lshl_b32 s71, s66, 2
s_lshl_b32 s72, s67, 1
ds_read_b128 v[136:139], v193
ds_read_b128 v[140:143], v193 offset:16
ds_read_b128 v[144:147], v193 offset:8192
ds_read_b128 v[148:151], v193 offset:8208
ds_read_b128 v[152:155], v194
ds_read_b128 v[156:159], v194 offset:16
ds_read_b128 v[160:163], v194 offset:8192
ds_read_b128 v[164:167], v194 offset:8208
s_cmp_eq_u32 s64, 0
s_cbranch_scc1 109
s_setprio 1
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[136:143], v[104:111], 0
ds_read_b128 v[168:171], v195
ds_read_b128 v[172:175], v195 offset:16
ds_read_b128 v[176:179], v195 offset:8192
ds_read_b128 v[180:183], v195 offset:8208
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[144:151], v[104:111], 0
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[152:159], v[112:119], v[64:79]
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[160:167], v[112:119], v[80:95]
s_waitcnt lgkmcnt(0)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[168:175], v[120:127], v[64:79]
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[176:183], v[120:127], v[80:95]
s_nop 3
v_max_f32_e32 v207, v64, v65
v_max3_f32 v207, v66, v67, v207
v_max3_f32 v207, v68, v69, v207
v_max3_f32 v207, v70, v71, v207
v_max3_f32 v207, v72, v73, v207
v_max3_f32 v207, v74, v75, v207
v_max3_f32 v207, v76, v77, v207
v_max3_f32 v207, v78, v79, v207
s_nop 7
v_max_f32_e32 v208, v80, v81
v_max3_f32 v208, v82, v83, v208
v_max3_f32 v208, v84, v85, v208
v_max3_f32 v208, v86, v87, v208
v_max3_f32 v208, v88, v89, v208
v_max3_f32 v208, v90, v91, v208
v_max3_f32 v208, v92, v93, v208
v_max3_f32 v208, v94, v95, v208
v_max_f32_e32 v207, v207, v208
s_nop 1
v_permlane32_swap_b32_e32 v207, v208
v_max_f32_e32 v207, v207, v208
v_mul_f32_e32 v208, s28, v207
v_fma_f32 v207, v207, s28, -v202
v_floor_f32_e32 v207, v207
v_med3_f32 v207, v207, s82, 0
v_cvt_i32_f32_e32 v203, v207
v_add_u32_e32 v203, 0x7f, v203
v_add_f32_e32 v208, v202, v207
v_sub_f32_e32 v205, 0x40c00000, v208
v_pk_fma_f32 v[64:65], v[64:65], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[66:67], v[66:67], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[68:69], v[68:69], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[70:71], v[70:71], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[72:73], v[72:73], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[74:75], v[74:75], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[76:77], v[76:77], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[78:79], v[78:79], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[80:81], v[80:81], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[82:83], v[82:83], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[84:85], v[84:85], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[86:87], v[86:87], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[88:89], v[88:89], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[90:91], v[90:91], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[92:93], v[92:93], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[94:95], v[94:95], s[28:29], v[208:209] op_sel_hi:[1,0,0]
s_branch 265
s_setprio 1
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[136:143], v[104:111], 0
ds_read_b128 v[168:171], v195
ds_read_b128 v[172:175], v195 offset:16
ds_read_b128 v[176:179], v195 offset:8192
ds_read_b128 v[180:183], v195 offset:8208
s_add_u32 s81, s65, 1
s_lshl_b32 s81, s81, 6
s_sub_u32 s81, s62, s81
v_and_b32_e32 v213, 31, v188
v_add_u32_e32 v211, s81, v213
v_bfe_u32 v213, v188, 5, 1
v_lshlrev_b32_e32 v213, 2, v213
v_sub_u32_e32 v211, v211, v213
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[144:151], v[104:111], 0
s_waitcnt lgkmcnt(4)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[152:159], v[112:119], v[64:79]
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[160:167], v[112:119], v[80:95]
s_waitcnt lgkmcnt(0)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[168:175], v[120:127], v[64:79]
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[176:183], v[120:127], v[80:95]
s_sub_i32 s80, s81, 0
s_cmp_ge_i32 s80, 32
s_cbranch_scc1 69
s_cmp_lt_i32 s80, 0
s_cbranch_scc1 49
v_cmp_gt_i32_e32 vcc, 0, v211
v_cndmask_b32_e64 v64, v64, v212, vcc
v_cmp_gt_i32_e32 vcc, 1, v211
v_cndmask_b32_e64 v65, v65, v212, vcc
v_cmp_gt_i32_e32 vcc, 2, v211
v_cndmask_b32_e64 v66, v66, v212, vcc
v_cmp_gt_i32_e32 vcc, 3, v211
v_cndmask_b32_e64 v67, v67, v212, vcc
v_cmp_gt_i32_e32 vcc, 8, v211
v_cndmask_b32_e64 v68, v68, v212, vcc
v_cmp_gt_i32_e32 vcc, 9, v211
v_cndmask_b32_e64 v69, v69, v212, vcc
v_cmp_gt_i32_e32 vcc, 10, v211
v_cndmask_b32_e64 v70, v70, v212, vcc
v_cmp_gt_i32_e32 vcc, 11, v211
v_cndmask_b32_e64 v71, v71, v212, vcc
v_cmp_gt_i32_e32 vcc, 16, v211
v_cndmask_b32_e64 v72, v72, v212, vcc
v_cmp_gt_i32_e32 vcc, 17, v211
v_cndmask_b32_e64 v73, v73, v212, vcc
v_cmp_gt_i32_e32 vcc, 18, v211
v_cndmask_b32_e64 v74, v74, v212, vcc
v_cmp_gt_i32_e32 vcc, 19, v211
v_cndmask_b32_e64 v75, v75, v212, vcc
v_cmp_gt_i32_e32 vcc, 24, v211
v_cndmask_b32_e64 v76, v76, v212, vcc
v_cmp_gt_i32_e32 vcc, 25, v211
v_cndmask_b32_e64 v77, v77, v212, vcc
v_cmp_gt_i32_e32 vcc, 26, v211
v_cndmask_b32_e64 v78, v78, v212, vcc
v_cmp_gt_i32_e32 vcc, 27, v211
v_cndmask_b32_e64 v79, v79, v212, vcc
s_branch 18
s_nop 15
s_nop 3
s_nop 1
v_max_f32_e32 v207, v64, v65
v_max3_f32 v207, v66, v67, v207
v_max3_f32 v207, v68, v69, v207
v_max3_f32 v207, v70, v71, v207
v_max3_f32 v207, v72, v73, v207
v_max3_f32 v207, v74, v75, v207
v_max3_f32 v207, v76, v77, v207
v_max3_f32 v207, v78, v79, v207
s_sub_i32 s80, s81, 32
s_cmp_ge_i32 s80, 32
s_cbranch_scc1 71
s_cmp_lt_i32 s80, 0
s_cbranch_scc1 50
v_cmp_gt_i32_e32 vcc, 32, v211
s_nop 0
v_cndmask_b32_e64 v80, v80, v212, vcc
v_cmp_gt_i32_e32 vcc, 33, v211
v_cndmask_b32_e64 v81, v81, v212, vcc
v_cmp_gt_i32_e32 vcc, 34, v211
v_cndmask_b32_e64 v82, v82, v212, vcc
v_cmp_gt_i32_e32 vcc, 35, v211
v_cndmask_b32_e64 v83, v83, v212, vcc
v_cmp_gt_i32_e32 vcc, 40, v211
v_cndmask_b32_e64 v84, v84, v212, vcc
v_cmp_gt_i32_e32 vcc, 41, v211
v_cndmask_b32_e64 v85, v85, v212, vcc
v_cmp_gt_i32_e32 vcc, 42, v211
v_cndmask_b32_e64 v86, v86, v212, vcc
v_cmp_gt_i32_e32 vcc, 43, v211
v_cndmask_b32_e64 v87, v87, v212, vcc
v_cmp_gt_i32_e32 vcc, 48, v211
v_cndmask_b32_e64 v88, v88, v212, vcc
v_cmp_gt_i32_e32 vcc, 49, v211
v_cndmask_b32_e64 v89, v89, v212, vcc
v_cmp_gt_i32_e32 vcc, 50, v211
v_cndmask_b32_e64 v90, v90, v212, vcc
v_cmp_gt_i32_e32 vcc, 51, v211
v_cndmask_b32_e64 v91, v91, v212, vcc
v_cmp_gt_i32_e32 vcc, 56, v211
v_cndmask_b32_e64 v92, v92, v212, vcc
v_cmp_gt_i32_e32 vcc, 57, v211
v_cndmask_b32_e64 v93, v93, v212, vcc
v_cmp_gt_i32_e32 vcc, 58, v211
v_cndmask_b32_e64 v94, v94, v212, vcc
v_cmp_gt_i32_e32 vcc, 59, v211
v_cndmask_b32_e64 v95, v95, v212, vcc
s_branch 21
s_nop 15
s_nop 3
s_branch 2
s_nop 15
s_nop 3
s_nop 1
v_max_f32_e32 v208, v80, v81
v_max3_f32 v208, v82, v83, v208
v_max3_f32 v208, v84, v85, v208
v_max3_f32 v208, v86, v87, v208
v_max3_f32 v208, v88, v89, v208
v_max3_f32 v208, v90, v91, v208
v_max3_f32 v208, v92, v93, v208
v_max3_f32 v208, v94, v95, v208
v_max_f32_e32 v207, v207, v208
s_nop 1
v_permlane32_swap_b32_e32 v207, v208
v_max_f32_e32 v207, v207, v208
v_mul_f32_e32 v208, s28, v207
v_fma_f32 v207, v207, s28, -v202
v_floor_f32_e32 v207, v207
v_med3_f32 v207, v207, s82, 0
v_cvt_i32_f32_e32 v203, v207
v_add_u32_e32 v203, 0x7f, v203
v_add_f32_e32 v208, v202, v207
v_sub_f32_e32 v205, 0x40c00000, v208
v_pk_fma_f32 v[64:65], v[64:65], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[66:67], v[66:67], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[68:69], v[68:69], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[70:71], v[70:71], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[72:73], v[72:73], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[74:75], v[74:75], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[76:77], v[76:77], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[78:79], v[78:79], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[80:81], v[80:81], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[82:83], v[82:83], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[84:85], v[84:85], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[86:87], v[86:87], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[88:89], v[88:89], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[90:91], v[90:91], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[92:93], v[92:93], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[94:95], v[94:95], s[28:29], v[208:209] op_sel_hi:[1,0,0]
s_bitcmp1_b32 s90, 0
s_cbranch_scc0 1
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
v_mov_b32_e32 v201, 0
s_mov_b32 s73, 0
s_cmp_eq_u32 s58, 0
s_cbranch_scc0 130
s_cmpk_le_u32 s63, 0x1
s_cbranch_scc1 128
s_mul_i32 s79, 0, s35
s_mul_i32 s78, 1, s67
s_add_u32 s79, s79, s78
s_add_u32 s80, s90, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 13
s_add_u32 s80, s80, s84
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
s_mul_i32 s79, 4, s35
s_mul_i32 s78, 1, s67
s_add_u32 s79, s79, s78
s_add_u32 s80, s90, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 13
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
s_cmpk_le_u32 s63, 0x2
s_cbranch_scc1 102
s_mul_i32 s79, 0, s34
s_mul_i32 s78, 2, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s90, 2
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 16, s34
s_mul_i32 s78, 2, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s90, 2
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s34
s_mul_i32 s78, 2, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s90, 2
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 48, s34
s_mul_i32 s78, 2, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s90, 2
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_cmpk_le_u32 s63, 0x3
s_cbranch_scc1 50
s_mul_i32 s79, 0, s34
s_mul_i32 s78, 3, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s90, 3
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 16, s34
s_mul_i32 s78, 3, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s90, 3
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s34
s_mul_i32 s78, 3, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s90, 3
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 48, s34
s_mul_i32 s78, 3, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s90, 3
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_barrier
s_mov_b32 s65, 0
s_cmp_eq_u32 s90, 0
s_cbranch_scc1 5
s_cmp_eq_u32 s90, 1
s_cbranch_scc1 349
s_cmp_eq_u32 s90, 2
s_cbranch_scc1 694
s_branch 1039
s_add_u32 s78, s65, 1
s_cmp_ge_u32 s78, s64
s_cbranch_scc1 1384
s_setprio 0
v_exp_f32_e32 v64, v64
v_exp_f32_e32 v65, v65
v_exp_f32_e32 v66, v66
v_exp_f32_e32 v67, v67
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
v_cvt_pk_fp8_f32 v96, v64, v65
v_cvt_pk_fp8_f32 v96, v66, v67 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v97, v68, v69
v_cvt_pk_fp8_f32 v97, v70, v71 op_sel:[0,0,1]
v_exp_f32_e32 v80, v80
v_cvt_pk_fp8_f32 v98, v72, v73
v_exp_f32_e32 v81, v81
v_cvt_pk_fp8_f32 v98, v74, v75 op_sel:[0,0,1]
v_exp_f32_e32 v82, v82
v_cvt_pk_fp8_f32 v99, v76, v77
v_exp_f32_e32 v83, v83
v_cvt_pk_fp8_f32 v99, v78, v79 op_sel:[0,0,1]
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
v_cvt_pk_fp8_f32 v100, v80, v81
v_cvt_pk_fp8_f32 v100, v82, v83 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v101, v84, v85
v_cvt_pk_fp8_f32 v101, v86, v87 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v102, v88, v89
v_cvt_pk_fp8_f32 v102, v90, v91 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v103, v92, v93
v_cvt_pk_fp8_f32 v103, v94, v95 op_sel:[0,0,1]
ds_read_b128 v[136:139], v189 offset:16384
ds_read_b128 v[140:143], v189 offset:16400
ds_read_b128 v[144:147], v189 offset:24576
ds_read_b128 v[148:151], v189 offset:24592
ds_read_b128 v[152:155], v190 offset:16384
ds_read_b128 v[156:159], v190 offset:16400
ds_read_b128 v[160:163], v190 offset:24576
ds_read_b128 v[164:167], v190 offset:24592
s_barrier
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[184:187], v[128:135], v[96:103], 0
ds_read_b128 v[168:171], v191 offset:16384
ds_read_b128 v[172:175], v191 offset:16400
s_waitcnt lgkmcnt(6)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[136:143], v[104:111], 0
ds_read_b128 v[176:179], v191 offset:24576
ds_read_b128 v[180:183], v191 offset:24592
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[144:151], v[104:111], 0
ds_read_b64_tr_b8 v[136:137], v192
ds_read_b64_tr_b8 v[138:139], v192 offset:1024
ds_read_b64_tr_b8 v[140:141], v192 offset:2048
ds_read_b64_tr_b8 v[142:143], v192 offset:3072
s_min_u32 s78, s71, s68
s_add_u32 m0, s83, 0
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s78 offen lds
v_lshlrev_b32_e32 v213, 23, v203
v_fma_f32 v201, v184, v213, v201
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[152:159], v[112:119], v[64:79]
ds_read_b64_tr_b8 v[144:145], v192 offset:256
ds_read_b64_tr_b8 v[146:147], v192 offset:1280
ds_read_b64_tr_b8 v[148:149], v192 offset:2304
ds_read_b64_tr_b8 v[150:151], v192 offset:3328
s_add_u32 m0, s83, 0x2000
s_nop 0
buffer_load_dwordx4 v198, s[8:11], s78 offen lds
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[160:167], v[112:119], v[80:95]
s_min_u32 s79, s72, s69
s_add_u32 m0, s84, 0x4000
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
s_add_u32 s71, s71, s66
s_add_u32 s72, s72, s67
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[168:175], v[120:127], v[64:79]
ds_read_b64_tr_b8 v[152:153], v192 offset:512
ds_read_b64_tr_b8 v[154:155], v192 offset:1536
ds_read_b64_tr_b8 v[156:157], v192 offset:2560
ds_read_b64_tr_b8 v[158:159], v192 offset:3584
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[176:183], v[120:127], v[80:95]
s_nop 3
v_max_f32_e32 v207, v64, v65
v_max3_f32 v207, v66, v67, v207
v_max3_f32 v207, v68, v69, v207
v_max3_f32 v207, v70, v71, v207
v_max3_f32 v207, v72, v73, v207
v_max3_f32 v207, v74, v75, v207
v_max3_f32 v207, v76, v77, v207
v_max3_f32 v207, v78, v79, v207
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[136:143], v[96:103], v[0:15], v206, v203 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[160:161], v192 offset:768
ds_read_b64_tr_b8 v[162:163], v192 offset:1792
ds_read_b64_tr_b8 v[164:165], v192 offset:2816
ds_read_b64_tr_b8 v[166:167], v192 offset:3840
v_max_f32_e32 v208, v80, v81
v_max3_f32 v208, v82, v83, v208
v_max3_f32 v208, v84, v85, v208
v_max3_f32 v208, v86, v87, v208
v_max3_f32 v208, v88, v89, v208
v_max3_f32 v208, v90, v91, v208
v_max3_f32 v208, v92, v93, v208
v_max3_f32 v208, v94, v95, v208
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[144:151], v[96:103], v[16:31], v206, v203 op_sel_hi:[0,0,0]
v_max_f32_e32 v207, v207, v208
s_nop 1
v_permlane32_swap_b32_e32 v207, v208
v_max_f32_e32 v207, v207, v208
v_mul_f32_e32 v208, s28, v207
v_max_f32_e32 v210, v200, v208
v_sub_f32_e32 v208, v210, v200
v_cmp_lt_f32_e32 vcc, 0x3e000000, v208
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[152:159], v[96:103], v[32:47], v206, v203 op_sel_hi:[0,0,0]
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[74:75], -1, 0
s_cselect_b32 s73, 1, 0
v_cndmask_b32_e64 v202, v200, v210, s[74:75]
v_fma_f32 v207, v207, s28, -v202
v_floor_f32_e32 v207, v207
v_med3_f32 v207, v207, s82, 0
v_cvt_i32_f32_e32 v204, v207
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[160:167], v[96:103], v[48:63], v206, v203 op_sel_hi:[0,0,0]
v_add_u32_e32 v204, 0x7f, v204
v_add_f32_e32 v208, v202, v207
v_sub_f32_e32 v205, 0x40c00000, v208
v_pk_fma_f32 v[64:65], v[64:65], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[66:67], v[66:67], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[68:69], v[68:69], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[70:71], v[70:71], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[72:73], v[72:73], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[74:75], v[74:75], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[76:77], v[76:77], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[78:79], v[78:79], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[80:81], v[80:81], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[82:83], v[82:83], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[84:85], v[84:85], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[86:87], v[86:87], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[88:89], v[88:89], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[90:91], v[90:91], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[92:93], v[92:93], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[94:95], v[94:95], s[28:29], v[208:209] op_sel_hi:[1,0,0]
s_cmp_eq_u32 s73, 0
s_cbranch_scc1 69
v_sub_f32_e32 v214, v200, v202
v_exp_f32_e32 v214, v214
s_nop 0
v_pk_mul_f32 v[0:1], v[0:1], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[2:3], v[2:3], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[4:5], v[4:5], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[6:7], v[6:7], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[8:9], v[8:9], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[10:11], v[10:11], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[12:13], v[12:13], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[14:15], v[14:15], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[16:17], v[16:17], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[18:19], v[18:19], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[20:21], v[20:21], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[22:23], v[22:23], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[24:25], v[24:25], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[26:27], v[26:27], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[28:29], v[28:29], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[30:31], v[30:31], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[32:33], v[32:33], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[34:35], v[34:35], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[36:37], v[36:37], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[38:39], v[38:39], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[40:41], v[40:41], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[42:43], v[42:43], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[44:45], v[44:45], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[46:47], v[46:47], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[48:49], v[48:49], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[50:51], v[50:51], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[52:53], v[52:53], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[54:55], v[54:55], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[56:57], v[56:57], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[58:59], v[58:59], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[60:61], v[60:61], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[62:63], v[62:63], v[214:215] op_sel_hi:[1,0]
v_mul_f32_e32 v201, v214, v201
s_waitcnt vmcnt(3)
s_barrier
s_add_u32 s65, s65, 1
s_add_u32 s78, s65, 1
s_cmp_ge_u32 s78, s64
s_cbranch_scc1 1038
s_setprio 0
v_exp_f32_e32 v64, v64
v_exp_f32_e32 v65, v65
v_exp_f32_e32 v66, v66
v_exp_f32_e32 v67, v67
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
v_cvt_pk_fp8_f32 v96, v64, v65
v_cvt_pk_fp8_f32 v96, v66, v67 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v97, v68, v69
v_cvt_pk_fp8_f32 v97, v70, v71 op_sel:[0,0,1]
v_exp_f32_e32 v80, v80
v_cvt_pk_fp8_f32 v98, v72, v73
v_exp_f32_e32 v81, v81
v_cvt_pk_fp8_f32 v98, v74, v75 op_sel:[0,0,1]
v_exp_f32_e32 v82, v82
v_cvt_pk_fp8_f32 v99, v76, v77
v_exp_f32_e32 v83, v83
v_cvt_pk_fp8_f32 v99, v78, v79 op_sel:[0,0,1]
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
v_cvt_pk_fp8_f32 v100, v80, v81
v_cvt_pk_fp8_f32 v100, v82, v83 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v101, v84, v85
v_cvt_pk_fp8_f32 v101, v86, v87 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v102, v88, v89
v_cvt_pk_fp8_f32 v102, v90, v91 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v103, v92, v93
v_cvt_pk_fp8_f32 v103, v94, v95 op_sel:[0,0,1]
ds_read_b128 v[136:139], v189 offset:32768
ds_read_b128 v[140:143], v189 offset:32784
ds_read_b128 v[144:147], v189 offset:40960
ds_read_b128 v[148:151], v189 offset:40976
ds_read_b128 v[152:155], v190 offset:32768
ds_read_b128 v[156:159], v190 offset:32784
ds_read_b128 v[160:163], v190 offset:40960
ds_read_b128 v[164:167], v190 offset:40976
s_barrier
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[184:187], v[128:135], v[96:103], 0
ds_read_b128 v[168:171], v191 offset:32768
ds_read_b128 v[172:175], v191 offset:32784
s_waitcnt lgkmcnt(6)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[136:143], v[104:111], 0
ds_read_b128 v[176:179], v191 offset:40960
ds_read_b128 v[180:183], v191 offset:40976
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[144:151], v[104:111], 0
ds_read_b64_tr_b8 v[136:137], v192 offset:8192
ds_read_b64_tr_b8 v[138:139], v192 offset:9216
ds_read_b64_tr_b8 v[140:141], v192 offset:10240
ds_read_b64_tr_b8 v[142:143], v192 offset:11264
s_min_u32 s78, s71, s68
s_add_u32 m0, s83, 0x4000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s78 offen lds
v_lshlrev_b32_e32 v213, 23, v204
v_fma_f32 v201, v184, v213, v201
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[152:159], v[112:119], v[64:79]
ds_read_b64_tr_b8 v[144:145], v192 offset:8448
ds_read_b64_tr_b8 v[146:147], v192 offset:9472
ds_read_b64_tr_b8 v[148:149], v192 offset:10496
ds_read_b64_tr_b8 v[150:151], v192 offset:11520
s_add_u32 m0, s83, 0x6000
s_nop 0
buffer_load_dwordx4 v198, s[8:11], s78 offen lds
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[160:167], v[112:119], v[80:95]
s_min_u32 s79, s72, s69
s_add_u32 m0, s84, 0x6000
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
s_add_u32 s71, s71, s66
s_add_u32 s72, s72, s67
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[168:175], v[120:127], v[64:79]
ds_read_b64_tr_b8 v[152:153], v192 offset:8704
ds_read_b64_tr_b8 v[154:155], v192 offset:9728
ds_read_b64_tr_b8 v[156:157], v192 offset:10752
ds_read_b64_tr_b8 v[158:159], v192 offset:11776
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[176:183], v[120:127], v[80:95]
s_nop 3
v_max_f32_e32 v207, v64, v65
v_max3_f32 v207, v66, v67, v207
v_max3_f32 v207, v68, v69, v207
v_max3_f32 v207, v70, v71, v207
v_max3_f32 v207, v72, v73, v207
v_max3_f32 v207, v74, v75, v207
v_max3_f32 v207, v76, v77, v207
v_max3_f32 v207, v78, v79, v207
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[136:143], v[96:103], v[0:15], v206, v204 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[160:161], v192 offset:8960
ds_read_b64_tr_b8 v[162:163], v192 offset:9984
ds_read_b64_tr_b8 v[164:165], v192 offset:11008
ds_read_b64_tr_b8 v[166:167], v192 offset:12032
v_max_f32_e32 v208, v80, v81
v_max3_f32 v208, v82, v83, v208
v_max3_f32 v208, v84, v85, v208
v_max3_f32 v208, v86, v87, v208
v_max3_f32 v208, v88, v89, v208
v_max3_f32 v208, v90, v91, v208
v_max3_f32 v208, v92, v93, v208
v_max3_f32 v208, v94, v95, v208
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[144:151], v[96:103], v[16:31], v206, v204 op_sel_hi:[0,0,0]
v_max_f32_e32 v207, v207, v208
s_nop 1
v_permlane32_swap_b32_e32 v207, v208
v_max_f32_e32 v207, v207, v208
v_mul_f32_e32 v208, s28, v207
v_max_f32_e32 v210, v200, v208
v_sub_f32_e32 v208, v210, v200
v_cmp_lt_f32_e32 vcc, 0x3e000000, v208
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[152:159], v[96:103], v[32:47], v206, v204 op_sel_hi:[0,0,0]
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[74:75], -1, 0
s_cselect_b32 s73, 1, 0
v_cndmask_b32_e64 v202, v200, v210, s[74:75]
v_fma_f32 v207, v207, s28, -v202
v_floor_f32_e32 v207, v207
v_med3_f32 v207, v207, s82, 0
v_cvt_i32_f32_e32 v203, v207
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[160:167], v[96:103], v[48:63], v206, v204 op_sel_hi:[0,0,0]
v_add_u32_e32 v203, 0x7f, v203
v_add_f32_e32 v208, v202, v207
v_sub_f32_e32 v205, 0x40c00000, v208
v_pk_fma_f32 v[64:65], v[64:65], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[66:67], v[66:67], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[68:69], v[68:69], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[70:71], v[70:71], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[72:73], v[72:73], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[74:75], v[74:75], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[76:77], v[76:77], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[78:79], v[78:79], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[80:81], v[80:81], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[82:83], v[82:83], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[84:85], v[84:85], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[86:87], v[86:87], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[88:89], v[88:89], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[90:91], v[90:91], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[92:93], v[92:93], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[94:95], v[94:95], s[28:29], v[208:209] op_sel_hi:[1,0,0]
s_cmp_eq_u32 s73, 0
s_cbranch_scc1 69
v_sub_f32_e32 v214, v200, v202
v_exp_f32_e32 v214, v214
s_nop 0
v_pk_mul_f32 v[0:1], v[0:1], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[2:3], v[2:3], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[4:5], v[4:5], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[6:7], v[6:7], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[8:9], v[8:9], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[10:11], v[10:11], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[12:13], v[12:13], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[14:15], v[14:15], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[16:17], v[16:17], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[18:19], v[18:19], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[20:21], v[20:21], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[22:23], v[22:23], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[24:25], v[24:25], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[26:27], v[26:27], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[28:29], v[28:29], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[30:31], v[30:31], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[32:33], v[32:33], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[34:35], v[34:35], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[36:37], v[36:37], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[38:39], v[38:39], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[40:41], v[40:41], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[42:43], v[42:43], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[44:45], v[44:45], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[46:47], v[46:47], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[48:49], v[48:49], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[50:51], v[50:51], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[52:53], v[52:53], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[54:55], v[54:55], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[56:57], v[56:57], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[58:59], v[58:59], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[60:61], v[60:61], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[62:63], v[62:63], v[214:215] op_sel_hi:[1,0]
v_mul_f32_e32 v201, v214, v201
s_waitcnt vmcnt(3)
s_barrier
s_add_u32 s65, s65, 1
s_add_u32 s78, s65, 1
s_cmp_ge_u32 s78, s64
s_cbranch_scc1 691
s_setprio 0
v_exp_f32_e32 v64, v64
v_exp_f32_e32 v65, v65
v_exp_f32_e32 v66, v66
v_exp_f32_e32 v67, v67
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
v_cvt_pk_fp8_f32 v96, v64, v65
v_cvt_pk_fp8_f32 v96, v66, v67 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v97, v68, v69
v_cvt_pk_fp8_f32 v97, v70, v71 op_sel:[0,0,1]
v_exp_f32_e32 v80, v80
v_cvt_pk_fp8_f32 v98, v72, v73
v_exp_f32_e32 v81, v81
v_cvt_pk_fp8_f32 v98, v74, v75 op_sel:[0,0,1]
v_exp_f32_e32 v82, v82
v_cvt_pk_fp8_f32 v99, v76, v77
v_exp_f32_e32 v83, v83
v_cvt_pk_fp8_f32 v99, v78, v79 op_sel:[0,0,1]
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
v_cvt_pk_fp8_f32 v100, v80, v81
v_cvt_pk_fp8_f32 v100, v82, v83 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v101, v84, v85
v_cvt_pk_fp8_f32 v101, v86, v87 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v102, v88, v89
v_cvt_pk_fp8_f32 v102, v90, v91 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v103, v92, v93
v_cvt_pk_fp8_f32 v103, v94, v95 op_sel:[0,0,1]
ds_read_b128 v[136:139], v189 offset:49152
ds_read_b128 v[140:143], v189 offset:49168
ds_read_b128 v[144:147], v189 offset:57344
ds_read_b128 v[148:151], v189 offset:57360
ds_read_b128 v[152:155], v190 offset:49152
ds_read_b128 v[156:159], v190 offset:49168
ds_read_b128 v[160:163], v190 offset:57344
ds_read_b128 v[164:167], v190 offset:57360
s_barrier
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[184:187], v[128:135], v[96:103], 0
ds_read_b128 v[168:171], v191 offset:49152
ds_read_b128 v[172:175], v191 offset:49168
s_waitcnt lgkmcnt(6)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[136:143], v[104:111], 0
ds_read_b128 v[176:179], v191 offset:57344
ds_read_b128 v[180:183], v191 offset:57360
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[144:151], v[104:111], 0
ds_read_b64_tr_b8 v[136:137], v192 offset:16384
ds_read_b64_tr_b8 v[138:139], v192 offset:17408
ds_read_b64_tr_b8 v[140:141], v192 offset:18432
ds_read_b64_tr_b8 v[142:143], v192 offset:19456
s_min_u32 s78, s71, s68
s_add_u32 m0, s83, 0x8000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s78 offen lds
v_lshlrev_b32_e32 v213, 23, v203
v_fma_f32 v201, v184, v213, v201
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[152:159], v[112:119], v[64:79]
ds_read_b64_tr_b8 v[144:145], v192 offset:16640
ds_read_b64_tr_b8 v[146:147], v192 offset:17664
ds_read_b64_tr_b8 v[148:149], v192 offset:18688
ds_read_b64_tr_b8 v[150:151], v192 offset:19712
s_add_u32 m0, s83, 0xa000
s_nop 0
buffer_load_dwordx4 v198, s[8:11], s78 offen lds
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[160:167], v[112:119], v[80:95]
s_min_u32 s79, s72, s69
s_add_u32 m0, s84, 0
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
s_add_u32 s71, s71, s66
s_add_u32 s72, s72, s67
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[168:175], v[120:127], v[64:79]
ds_read_b64_tr_b8 v[152:153], v192 offset:16896
ds_read_b64_tr_b8 v[154:155], v192 offset:17920
ds_read_b64_tr_b8 v[156:157], v192 offset:18944
ds_read_b64_tr_b8 v[158:159], v192 offset:19968
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[176:183], v[120:127], v[80:95]
s_nop 3
v_max_f32_e32 v207, v64, v65
v_max3_f32 v207, v66, v67, v207
v_max3_f32 v207, v68, v69, v207
v_max3_f32 v207, v70, v71, v207
v_max3_f32 v207, v72, v73, v207
v_max3_f32 v207, v74, v75, v207
v_max3_f32 v207, v76, v77, v207
v_max3_f32 v207, v78, v79, v207
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[136:143], v[96:103], v[0:15], v206, v203 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[160:161], v192 offset:17152
ds_read_b64_tr_b8 v[162:163], v192 offset:18176
ds_read_b64_tr_b8 v[164:165], v192 offset:19200
ds_read_b64_tr_b8 v[166:167], v192 offset:20224
v_max_f32_e32 v208, v80, v81
v_max3_f32 v208, v82, v83, v208
v_max3_f32 v208, v84, v85, v208
v_max3_f32 v208, v86, v87, v208
v_max3_f32 v208, v88, v89, v208
v_max3_f32 v208, v90, v91, v208
v_max3_f32 v208, v92, v93, v208
v_max3_f32 v208, v94, v95, v208
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[144:151], v[96:103], v[16:31], v206, v203 op_sel_hi:[0,0,0]
v_max_f32_e32 v207, v207, v208
s_nop 1
v_permlane32_swap_b32_e32 v207, v208
v_max_f32_e32 v207, v207, v208
v_mul_f32_e32 v208, s28, v207
v_max_f32_e32 v210, v200, v208
v_sub_f32_e32 v208, v210, v200
v_cmp_lt_f32_e32 vcc, 0x3e000000, v208
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[152:159], v[96:103], v[32:47], v206, v203 op_sel_hi:[0,0,0]
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[74:75], -1, 0
s_cselect_b32 s73, 1, 0
v_cndmask_b32_e64 v202, v200, v210, s[74:75]
v_fma_f32 v207, v207, s28, -v202
v_floor_f32_e32 v207, v207
v_med3_f32 v207, v207, s82, 0
v_cvt_i32_f32_e32 v204, v207
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[160:167], v[96:103], v[48:63], v206, v203 op_sel_hi:[0,0,0]
v_add_u32_e32 v204, 0x7f, v204
v_add_f32_e32 v208, v202, v207
v_sub_f32_e32 v205, 0x40c00000, v208
v_pk_fma_f32 v[64:65], v[64:65], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[66:67], v[66:67], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[68:69], v[68:69], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[70:71], v[70:71], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[72:73], v[72:73], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[74:75], v[74:75], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[76:77], v[76:77], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[78:79], v[78:79], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[80:81], v[80:81], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[82:83], v[82:83], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[84:85], v[84:85], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[86:87], v[86:87], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[88:89], v[88:89], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[90:91], v[90:91], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[92:93], v[92:93], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[94:95], v[94:95], s[28:29], v[208:209] op_sel_hi:[1,0,0]
s_cmp_eq_u32 s73, 0
s_cbranch_scc1 69
v_sub_f32_e32 v214, v200, v202
v_exp_f32_e32 v214, v214
s_nop 0
v_pk_mul_f32 v[0:1], v[0:1], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[2:3], v[2:3], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[4:5], v[4:5], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[6:7], v[6:7], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[8:9], v[8:9], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[10:11], v[10:11], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[12:13], v[12:13], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[14:15], v[14:15], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[16:17], v[16:17], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[18:19], v[18:19], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[20:21], v[20:21], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[22:23], v[22:23], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[24:25], v[24:25], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[26:27], v[26:27], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[28:29], v[28:29], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[30:31], v[30:31], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[32:33], v[32:33], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[34:35], v[34:35], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[36:37], v[36:37], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[38:39], v[38:39], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[40:41], v[40:41], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[42:43], v[42:43], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[44:45], v[44:45], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[46:47], v[46:47], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[48:49], v[48:49], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[50:51], v[50:51], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[52:53], v[52:53], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[54:55], v[54:55], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[56:57], v[56:57], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[58:59], v[58:59], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[60:61], v[60:61], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[62:63], v[62:63], v[214:215] op_sel_hi:[1,0]
v_mul_f32_e32 v201, v214, v201
s_waitcnt vmcnt(3)
s_barrier
s_add_u32 s65, s65, 1
s_add_u32 s78, s65, 1
s_cmp_ge_u32 s78, s64
s_cbranch_scc1 345
s_setprio 0
v_exp_f32_e32 v64, v64
v_exp_f32_e32 v65, v65
v_exp_f32_e32 v66, v66
v_exp_f32_e32 v67, v67
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
v_cvt_pk_fp8_f32 v96, v64, v65
v_cvt_pk_fp8_f32 v96, v66, v67 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v97, v68, v69
v_cvt_pk_fp8_f32 v97, v70, v71 op_sel:[0,0,1]
v_exp_f32_e32 v80, v80
v_cvt_pk_fp8_f32 v98, v72, v73
v_exp_f32_e32 v81, v81
v_cvt_pk_fp8_f32 v98, v74, v75 op_sel:[0,0,1]
v_exp_f32_e32 v82, v82
v_cvt_pk_fp8_f32 v99, v76, v77
v_exp_f32_e32 v83, v83
v_cvt_pk_fp8_f32 v99, v78, v79 op_sel:[0,0,1]
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
v_cvt_pk_fp8_f32 v100, v80, v81
v_cvt_pk_fp8_f32 v100, v82, v83 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v101, v84, v85
v_cvt_pk_fp8_f32 v101, v86, v87 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v102, v88, v89
v_cvt_pk_fp8_f32 v102, v90, v91 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v103, v92, v93
v_cvt_pk_fp8_f32 v103, v94, v95 op_sel:[0,0,1]
ds_read_b128 v[136:139], v189
ds_read_b128 v[140:143], v189 offset:16
ds_read_b128 v[144:147], v189 offset:8192
ds_read_b128 v[148:151], v189 offset:8208
ds_read_b128 v[152:155], v190
ds_read_b128 v[156:159], v190 offset:16
ds_read_b128 v[160:163], v190 offset:8192
ds_read_b128 v[164:167], v190 offset:8208
s_barrier
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[184:187], v[128:135], v[96:103], 0
ds_read_b128 v[168:171], v191
ds_read_b128 v[172:175], v191 offset:16
s_waitcnt lgkmcnt(6)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[136:143], v[104:111], 0
ds_read_b128 v[176:179], v191 offset:8192
ds_read_b128 v[180:183], v191 offset:8208
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[144:151], v[104:111], 0
ds_read_b64_tr_b8 v[136:137], v192 offset:24576
ds_read_b64_tr_b8 v[138:139], v192 offset:25600
ds_read_b64_tr_b8 v[140:141], v192 offset:26624
ds_read_b64_tr_b8 v[142:143], v192 offset:27648
s_min_u32 s78, s71, s68
s_add_u32 m0, s83, 0xc000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s78 offen lds
v_lshlrev_b32_e32 v213, 23, v204
v_fma_f32 v201, v184, v213, v201
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[152:159], v[112:119], v[64:79]
ds_read_b64_tr_b8 v[144:145], v192 offset:24832
ds_read_b64_tr_b8 v[146:147], v192 offset:25856
ds_read_b64_tr_b8 v[148:149], v192 offset:26880
ds_read_b64_tr_b8 v[150:151], v192 offset:27904
s_add_u32 m0, s83, 0xe000
s_nop 0
buffer_load_dwordx4 v198, s[8:11], s78 offen lds
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[160:167], v[112:119], v[80:95]
s_min_u32 s79, s72, s69
s_add_u32 m0, s84, 0x2000
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
s_add_u32 s71, s71, s66
s_add_u32 s72, s72, s67
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[168:175], v[120:127], v[64:79]
ds_read_b64_tr_b8 v[152:153], v192 offset:25088
ds_read_b64_tr_b8 v[154:155], v192 offset:26112
ds_read_b64_tr_b8 v[156:157], v192 offset:27136
ds_read_b64_tr_b8 v[158:159], v192 offset:28160
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[176:183], v[120:127], v[80:95]
s_nop 3
v_max_f32_e32 v207, v64, v65
v_max3_f32 v207, v66, v67, v207
v_max3_f32 v207, v68, v69, v207
v_max3_f32 v207, v70, v71, v207
v_max3_f32 v207, v72, v73, v207
v_max3_f32 v207, v74, v75, v207
v_max3_f32 v207, v76, v77, v207
v_max3_f32 v207, v78, v79, v207
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[136:143], v[96:103], v[0:15], v206, v204 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[160:161], v192 offset:25344
ds_read_b64_tr_b8 v[162:163], v192 offset:26368
ds_read_b64_tr_b8 v[164:165], v192 offset:27392
ds_read_b64_tr_b8 v[166:167], v192 offset:28416
v_max_f32_e32 v208, v80, v81
v_max3_f32 v208, v82, v83, v208
v_max3_f32 v208, v84, v85, v208
v_max3_f32 v208, v86, v87, v208
v_max3_f32 v208, v88, v89, v208
v_max3_f32 v208, v90, v91, v208
v_max3_f32 v208, v92, v93, v208
v_max3_f32 v208, v94, v95, v208
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[144:151], v[96:103], v[16:31], v206, v204 op_sel_hi:[0,0,0]
v_max_f32_e32 v207, v207, v208
s_nop 1
v_permlane32_swap_b32_e32 v207, v208
v_max_f32_e32 v207, v207, v208
v_mul_f32_e32 v208, s28, v207
v_max_f32_e32 v210, v200, v208
v_sub_f32_e32 v208, v210, v200
v_cmp_lt_f32_e32 vcc, 0x3e000000, v208
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[152:159], v[96:103], v[32:47], v206, v204 op_sel_hi:[0,0,0]
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[74:75], -1, 0
s_cselect_b32 s73, 1, 0
v_cndmask_b32_e64 v202, v200, v210, s[74:75]
v_fma_f32 v207, v207, s28, -v202
v_floor_f32_e32 v207, v207
v_med3_f32 v207, v207, s82, 0
v_cvt_i32_f32_e32 v203, v207
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[160:167], v[96:103], v[48:63], v206, v204 op_sel_hi:[0,0,0]
v_add_u32_e32 v203, 0x7f, v203
v_add_f32_e32 v208, v202, v207
v_sub_f32_e32 v205, 0x40c00000, v208
v_pk_fma_f32 v[64:65], v[64:65], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[66:67], v[66:67], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[68:69], v[68:69], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[70:71], v[70:71], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[72:73], v[72:73], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[74:75], v[74:75], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[76:77], v[76:77], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[78:79], v[78:79], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[80:81], v[80:81], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[82:83], v[82:83], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[84:85], v[84:85], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[86:87], v[86:87], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[88:89], v[88:89], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[90:91], v[90:91], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[92:93], v[92:93], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[94:95], v[94:95], s[28:29], v[208:209] op_sel_hi:[1,0,0]
s_cmp_eq_u32 s73, 0
s_cbranch_scc1 69
v_sub_f32_e32 v214, v200, v202
v_exp_f32_e32 v214, v214
s_nop 0
v_pk_mul_f32 v[0:1], v[0:1], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[2:3], v[2:3], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[4:5], v[4:5], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[6:7], v[6:7], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[8:9], v[8:9], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[10:11], v[10:11], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[12:13], v[12:13], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[14:15], v[14:15], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[16:17], v[16:17], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[18:19], v[18:19], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[20:21], v[20:21], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[22:23], v[22:23], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[24:25], v[24:25], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[26:27], v[26:27], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[28:29], v[28:29], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[30:31], v[30:31], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[32:33], v[32:33], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[34:35], v[34:35], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[36:37], v[36:37], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[38:39], v[38:39], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[40:41], v[40:41], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[42:43], v[42:43], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[44:45], v[44:45], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[46:47], v[46:47], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[48:49], v[48:49], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[50:51], v[50:51], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[52:53], v[52:53], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[54:55], v[54:55], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[56:57], v[56:57], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[58:59], v[58:59], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[60:61], v[60:61], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[62:63], v[62:63], v[214:215] op_sel_hi:[1,0]
v_mul_f32_e32 v201, v214, v201
s_waitcnt vmcnt(3)
s_barrier
s_add_u32 s65, s65, 1
s_branch 64149
s_add_u32 s78, s65, s90
s_bitcmp1_b32 s78, 0
s_cbranch_scc1 1322
s_add_u32 s78, s65, 1
s_cmp_ge_u32 s78, s63
s_cbranch_scc1 697
s_add_u32 s85, s65, s90
s_add_u32 s78, s85, 1
s_and_b32 s78, s78, 3
s_lshl_b32 s86, s78, 14
s_and_b32 s78, s85, 3
s_lshl_b32 s79, s78, 14
s_add_u32 s88, s83, s79
s_lshl_b32 s87, s78, 13
s_add_u32 s78, s85, 2
s_and_b32 s78, s78, 3
s_lshl_b32 s79, s78, 13
s_add_u32 s89, s84, s79
v_add_u32_e32 v193, s86, v189
v_add_u32_e32 v194, s86, v190
v_add_u32_e32 v195, s86, v191
v_add_u32_e32 v196, s87, v192
s_cmp_lt_u32 s65, s64
s_cbranch_scc1 175
s_cmp_eq_u32 s65, s64
s_cbranch_scc1 26
s_barrier
s_waitcnt vmcnt(0)
s_add_u32 s78, s65, 4
s_cmp_ge_u32 s78, s63
s_cbranch_scc1 10
s_mul_i32 s78, s78, s66
s_add_u32 m0, s88, 0
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s78 offen lds
s_add_u32 m0, s88, 0x2000
s_nop 0
buffer_load_dwordx4 v198, s[8:11], s78 offen lds
s_add_u32 s79, s65, 2
s_cmp_ge_u32 s79, s63
s_cbranch_scc1 5
s_mul_i32 s79, s79, s67
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
s_barrier
s_add_u32 s65, s65, 1
s_branch 1273
s_setprio 0
v_exp_f32_e32 v64, v64
v_exp_f32_e32 v65, v65
v_exp_f32_e32 v66, v66
v_exp_f32_e32 v67, v67
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
v_cvt_pk_fp8_f32 v96, v64, v65
v_cvt_pk_fp8_f32 v96, v66, v67 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v97, v68, v69
v_cvt_pk_fp8_f32 v97, v70, v71 op_sel:[0,0,1]
v_exp_f32_e32 v80, v80
v_cvt_pk_fp8_f32 v98, v72, v73
v_exp_f32_e32 v81, v81
v_cvt_pk_fp8_f32 v98, v74, v75 op_sel:[0,0,1]
v_exp_f32_e32 v82, v82
v_cvt_pk_fp8_f32 v99, v76, v77
v_exp_f32_e32 v83, v83
v_cvt_pk_fp8_f32 v99, v78, v79 op_sel:[0,0,1]
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
v_cvt_pk_fp8_f32 v100, v80, v81
v_cvt_pk_fp8_f32 v100, v82, v83 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v101, v84, v85
v_cvt_pk_fp8_f32 v101, v86, v87 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v102, v88, v89
v_cvt_pk_fp8_f32 v102, v90, v91 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v103, v92, v93
v_cvt_pk_fp8_f32 v103, v94, v95 op_sel:[0,0,1]
s_barrier
s_setprio 1
s_waitcnt vmcnt(0)
v_mfma_f32_16x16x128_f8f6f4 v[184:187], v[128:135], v[96:103], 0
ds_read_b64_tr_b8 v[136:137], v196
ds_read_b64_tr_b8 v[138:139], v196 offset:1024
ds_read_b64_tr_b8 v[140:141], v196 offset:2048
ds_read_b64_tr_b8 v[142:143], v196 offset:3072
ds_read_b64_tr_b8 v[144:145], v196 offset:256
ds_read_b64_tr_b8 v[146:147], v196 offset:1280
ds_read_b64_tr_b8 v[148:149], v196 offset:2304
ds_read_b64_tr_b8 v[150:151], v196 offset:3328
ds_read_b64_tr_b8 v[152:153], v196 offset:512
ds_read_b64_tr_b8 v[154:155], v196 offset:1536
ds_read_b64_tr_b8 v[156:157], v196 offset:2560
ds_read_b64_tr_b8 v[158:159], v196 offset:3584
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[136:143], v[96:103], v[0:15], v206, v203 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[160:161], v196 offset:768
ds_read_b64_tr_b8 v[162:163], v196 offset:1792
ds_read_b64_tr_b8 v[164:165], v196 offset:2816
ds_read_b64_tr_b8 v[166:167], v196 offset:3840
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[144:151], v[96:103], v[16:31], v206, v203 op_sel_hi:[0,0,0]
s_add_u32 s78, s65, 4
s_cmp_ge_u32 s78, s63
s_cbranch_scc1 10
s_mul_i32 s78, s78, s66
s_add_u32 m0, s88, 0
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s78 offen lds
s_add_u32 m0, s88, 0x2000
s_nop 0
buffer_load_dwordx4 v198, s[8:11], s78 offen lds
v_lshlrev_b32_e32 v213, 23, v203
v_fma_f32 v201, v184, v213, v201
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[152:159], v[96:103], v[32:47], v206, v203 op_sel_hi:[0,0,0]
s_add_u32 s79, s65, 2
s_cmp_ge_u32 s79, s63
s_cbranch_scc1 5
s_mul_i32 s79, s79, s67
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[160:167], v[96:103], v[48:63], v206, v203 op_sel_hi:[0,0,0]
s_barrier
s_add_u32 s65, s65, 1
s_branch 1126
s_setprio 0
v_exp_f32_e32 v64, v64
v_exp_f32_e32 v65, v65
v_exp_f32_e32 v66, v66
v_exp_f32_e32 v67, v67
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
v_cvt_pk_fp8_f32 v96, v64, v65
v_cvt_pk_fp8_f32 v96, v66, v67 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v97, v68, v69
v_cvt_pk_fp8_f32 v97, v70, v71 op_sel:[0,0,1]
v_exp_f32_e32 v80, v80
v_cvt_pk_fp8_f32 v98, v72, v73
v_exp_f32_e32 v81, v81
v_cvt_pk_fp8_f32 v98, v74, v75 op_sel:[0,0,1]
v_exp_f32_e32 v82, v82
v_cvt_pk_fp8_f32 v99, v76, v77
v_exp_f32_e32 v83, v83
v_cvt_pk_fp8_f32 v99, v78, v79 op_sel:[0,0,1]
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
v_cvt_pk_fp8_f32 v100, v80, v81
v_cvt_pk_fp8_f32 v100, v82, v83 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v101, v84, v85
v_cvt_pk_fp8_f32 v101, v86, v87 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v102, v88, v89
v_cvt_pk_fp8_f32 v102, v90, v91 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v103, v92, v93
v_cvt_pk_fp8_f32 v103, v94, v95 op_sel:[0,0,1]
ds_read_b128 v[136:139], v193
ds_read_b128 v[140:143], v193 offset:16
ds_read_b128 v[144:147], v193 offset:8192
ds_read_b128 v[148:151], v193 offset:8208
ds_read_b128 v[152:155], v194
ds_read_b128 v[156:159], v194 offset:16
ds_read_b128 v[160:163], v194 offset:8192
ds_read_b128 v[164:167], v194 offset:8208
s_barrier
s_setprio 1
s_waitcnt vmcnt(0)
v_mfma_f32_16x16x128_f8f6f4 v[184:187], v[128:135], v[96:103], 0
ds_read_b128 v[168:171], v195
ds_read_b128 v[172:175], v195 offset:16
s_add_u32 s81, s65, 1
s_lshl_b32 s81, s81, 6
s_sub_u32 s81, s62, s81
v_and_b32_e32 v213, 31, v188
v_add_u32_e32 v211, s81, v213
v_bfe_u32 v213, v188, 5, 1
v_lshlrev_b32_e32 v213, 2, v213
v_sub_u32_e32 v211, v211, v213
s_waitcnt lgkmcnt(6)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[136:143], v[104:111], 0
ds_read_b128 v[176:179], v195 offset:8192
ds_read_b128 v[180:183], v195 offset:8208
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[144:151], v[104:111], 0
ds_read_b64_tr_b8 v[136:137], v196
ds_read_b64_tr_b8 v[138:139], v196 offset:1024
ds_read_b64_tr_b8 v[140:141], v196 offset:2048
ds_read_b64_tr_b8 v[142:143], v196 offset:3072
s_add_u32 s78, s65, 4
s_cmp_ge_u32 s78, s63
s_cbranch_scc1 10
s_mul_i32 s78, s78, s66
s_add_u32 m0, s88, 0
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s78 offen lds
s_add_u32 m0, s88, 0x2000
s_nop 0
buffer_load_dwordx4 v198, s[8:11], s78 offen lds
v_lshlrev_b32_e32 v213, 23, v203
v_fma_f32 v201, v184, v213, v201
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[152:159], v[112:119], v[64:79]
ds_read_b64_tr_b8 v[144:145], v196 offset:256
ds_read_b64_tr_b8 v[146:147], v196 offset:1280
ds_read_b64_tr_b8 v[148:149], v196 offset:2304
ds_read_b64_tr_b8 v[150:151], v196 offset:3328
s_add_u32 s79, s65, 2
s_cmp_ge_u32 s79, s63
s_cbranch_scc1 5
s_mul_i32 s79, s79, s67
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[160:167], v[112:119], v[80:95]
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[168:175], v[120:127], v[64:79]
ds_read_b64_tr_b8 v[152:153], v196 offset:512
ds_read_b64_tr_b8 v[154:155], v196 offset:1536
ds_read_b64_tr_b8 v[156:157], v196 offset:2560
ds_read_b64_tr_b8 v[158:159], v196 offset:3584
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[176:183], v[120:127], v[80:95]
s_sub_i32 s80, s81, 0
s_cmp_ge_i32 s80, 32
s_cbranch_scc1 69
s_cmp_lt_i32 s80, 0
s_cbranch_scc1 49
v_cmp_gt_i32_e32 vcc, 0, v211
v_cndmask_b32_e64 v64, v64, v212, vcc
v_cmp_gt_i32_e32 vcc, 1, v211
v_cndmask_b32_e64 v65, v65, v212, vcc
v_cmp_gt_i32_e32 vcc, 2, v211
v_cndmask_b32_e64 v66, v66, v212, vcc
v_cmp_gt_i32_e32 vcc, 3, v211
v_cndmask_b32_e64 v67, v67, v212, vcc
v_cmp_gt_i32_e32 vcc, 8, v211
v_cndmask_b32_e64 v68, v68, v212, vcc
v_cmp_gt_i32_e32 vcc, 9, v211
v_cndmask_b32_e64 v69, v69, v212, vcc
v_cmp_gt_i32_e32 vcc, 10, v211
v_cndmask_b32_e64 v70, v70, v212, vcc
v_cmp_gt_i32_e32 vcc, 11, v211
v_cndmask_b32_e64 v71, v71, v212, vcc
v_cmp_gt_i32_e32 vcc, 16, v211
v_cndmask_b32_e64 v72, v72, v212, vcc
v_cmp_gt_i32_e32 vcc, 17, v211
v_cndmask_b32_e64 v73, v73, v212, vcc
v_cmp_gt_i32_e32 vcc, 18, v211
v_cndmask_b32_e64 v74, v74, v212, vcc
v_cmp_gt_i32_e32 vcc, 19, v211
v_cndmask_b32_e64 v75, v75, v212, vcc
v_cmp_gt_i32_e32 vcc, 24, v211
v_cndmask_b32_e64 v76, v76, v212, vcc
v_cmp_gt_i32_e32 vcc, 25, v211
v_cndmask_b32_e64 v77, v77, v212, vcc
v_cmp_gt_i32_e32 vcc, 26, v211
v_cndmask_b32_e64 v78, v78, v212, vcc
v_cmp_gt_i32_e32 vcc, 27, v211
v_cndmask_b32_e64 v79, v79, v212, vcc
s_branch 18
s_nop 15
s_nop 3
s_nop 1
v_max_f32_e32 v207, v64, v65
v_max3_f32 v207, v66, v67, v207
v_max3_f32 v207, v68, v69, v207
v_max3_f32 v207, v70, v71, v207
v_max3_f32 v207, v72, v73, v207
v_max3_f32 v207, v74, v75, v207
v_max3_f32 v207, v76, v77, v207
v_max3_f32 v207, v78, v79, v207
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[136:143], v[96:103], v[0:15], v206, v203 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[160:161], v196 offset:768
ds_read_b64_tr_b8 v[162:163], v196 offset:1792
ds_read_b64_tr_b8 v[164:165], v196 offset:2816
ds_read_b64_tr_b8 v[166:167], v196 offset:3840
s_sub_i32 s80, s81, 32
s_cmp_ge_i32 s80, 32
s_cbranch_scc1 70
s_cmp_lt_i32 s80, 0
s_cbranch_scc1 49
v_cmp_gt_i32_e32 vcc, 32, v211
v_cndmask_b32_e64 v80, v80, v212, vcc
v_cmp_gt_i32_e32 vcc, 33, v211
v_cndmask_b32_e64 v81, v81, v212, vcc
v_cmp_gt_i32_e32 vcc, 34, v211
v_cndmask_b32_e64 v82, v82, v212, vcc
v_cmp_gt_i32_e32 vcc, 35, v211
v_cndmask_b32_e64 v83, v83, v212, vcc
v_cmp_gt_i32_e32 vcc, 40, v211
v_cndmask_b32_e64 v84, v84, v212, vcc
v_cmp_gt_i32_e32 vcc, 41, v211
v_cndmask_b32_e64 v85, v85, v212, vcc
v_cmp_gt_i32_e32 vcc, 42, v211
v_cndmask_b32_e64 v86, v86, v212, vcc
v_cmp_gt_i32_e32 vcc, 43, v211
v_cndmask_b32_e64 v87, v87, v212, vcc
v_cmp_gt_i32_e32 vcc, 48, v211
v_cndmask_b32_e64 v88, v88, v212, vcc
v_cmp_gt_i32_e32 vcc, 49, v211
v_cndmask_b32_e64 v89, v89, v212, vcc
v_cmp_gt_i32_e32 vcc, 50, v211
v_cndmask_b32_e64 v90, v90, v212, vcc
v_cmp_gt_i32_e32 vcc, 51, v211
v_cndmask_b32_e64 v91, v91, v212, vcc
v_cmp_gt_i32_e32 vcc, 56, v211
v_cndmask_b32_e64 v92, v92, v212, vcc
v_cmp_gt_i32_e32 vcc, 57, v211
v_cndmask_b32_e64 v93, v93, v212, vcc
v_cmp_gt_i32_e32 vcc, 58, v211
v_cndmask_b32_e64 v94, v94, v212, vcc
v_cmp_gt_i32_e32 vcc, 59, v211
v_cndmask_b32_e64 v95, v95, v212, vcc
s_branch 21
s_nop 15
s_nop 3
s_branch 2
s_nop 15
s_nop 3
s_nop 1
v_max_f32_e32 v208, v80, v81
v_max3_f32 v208, v82, v83, v208
v_max3_f32 v208, v84, v85, v208
v_max3_f32 v208, v86, v87, v208
v_max3_f32 v208, v88, v89, v208
v_max3_f32 v208, v90, v91, v208
v_max3_f32 v208, v92, v93, v208
v_max3_f32 v208, v94, v95, v208
v_max_f32_e32 v207, v207, v208
s_nop 1
v_permlane32_swap_b32_e32 v207, v208
v_max_f32_e32 v207, v207, v208
v_mul_f32_e32 v208, s28, v207
v_max_f32_e32 v210, v200, v208
v_sub_f32_e32 v208, v210, v200
v_cmp_lt_f32_e32 vcc, 0x3e000000, v208
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[74:75], -1, 0
s_cselect_b32 s73, 1, 0
v_cndmask_b32_e64 v202, v200, v210, s[74:75]
v_fma_f32 v207, v207, s28, -v202
v_floor_f32_e32 v207, v207
v_med3_f32 v207, v207, s82, 0
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[144:151], v[96:103], v[16:31], v206, v203 op_sel_hi:[0,0,0]
v_cvt_i32_f32_e32 v204, v207
v_add_u32_e32 v204, 0x7f, v204
v_add_f32_e32 v208, v202, v207
v_sub_f32_e32 v205, 0x40c00000, v208
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[152:159], v[96:103], v[32:47], v206, v203 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[160:167], v[96:103], v[48:63], v206, v203 op_sel_hi:[0,0,0]
v_pk_fma_f32 v[64:65], v[64:65], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[66:67], v[66:67], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[68:69], v[68:69], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[70:71], v[70:71], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[72:73], v[72:73], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[74:75], v[74:75], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[76:77], v[76:77], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[78:79], v[78:79], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[80:81], v[80:81], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[82:83], v[82:83], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[84:85], v[84:85], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[86:87], v[86:87], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[88:89], v[88:89], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[90:91], v[90:91], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[92:93], v[92:93], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[94:95], v[94:95], s[28:29], v[208:209] op_sel_hi:[1,0,0]
s_cmp_eq_u32 s73, 0
s_cbranch_scc1 69
v_sub_f32_e32 v214, v200, v202
v_exp_f32_e32 v214, v214
s_nop 0
v_pk_mul_f32 v[0:1], v[0:1], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[2:3], v[2:3], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[4:5], v[4:5], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[6:7], v[6:7], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[8:9], v[8:9], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[10:11], v[10:11], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[12:13], v[12:13], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[14:15], v[14:15], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[16:17], v[16:17], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[18:19], v[18:19], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[20:21], v[20:21], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[22:23], v[22:23], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[24:25], v[24:25], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[26:27], v[26:27], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[28:29], v[28:29], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[30:31], v[30:31], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[32:33], v[32:33], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[34:35], v[34:35], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[36:37], v[36:37], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[38:39], v[38:39], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[40:41], v[40:41], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[42:43], v[42:43], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[44:45], v[44:45], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[46:47], v[46:47], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[48:49], v[48:49], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[50:51], v[50:51], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[52:53], v[52:53], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[54:55], v[54:55], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[56:57], v[56:57], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[58:59], v[58:59], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[60:61], v[60:61], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[62:63], v[62:63], v[214:215] op_sel_hi:[1,0]
v_mul_f32_e32 v201, v214, v201
s_barrier
s_add_u32 s65, s65, 1
s_branch 622
s_add_u32 s85, s65, s90
s_add_u32 s78, s85, 1
s_and_b32 s78, s78, 3
s_lshl_b32 s86, s78, 14
s_and_b32 s78, s85, 3
s_lshl_b32 s79, s78, 14
s_add_u32 s88, s83, s79
s_lshl_b32 s87, s78, 13
s_add_u32 s78, s85, 2
s_and_b32 s78, s78, 3
s_lshl_b32 s79, s78, 13
s_add_u32 s89, s84, s79
v_add_u32_e32 v193, s86, v189
v_add_u32_e32 v194, s86, v190
v_add_u32_e32 v195, s86, v191
v_add_u32_e32 v196, s87, v192
s_cmp_lt_u32 s64, s65
s_cbranch_scc1 361
s_setprio 0
v_exp_f32_e32 v64, v64
v_exp_f32_e32 v65, v65
v_exp_f32_e32 v66, v66
v_exp_f32_e32 v67, v67
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
v_cvt_pk_fp8_f32 v96, v64, v65
v_cvt_pk_fp8_f32 v96, v66, v67 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v97, v68, v69
v_cvt_pk_fp8_f32 v97, v70, v71 op_sel:[0,0,1]
v_exp_f32_e32 v80, v80
v_cvt_pk_fp8_f32 v98, v72, v73
v_exp_f32_e32 v81, v81
v_cvt_pk_fp8_f32 v98, v74, v75 op_sel:[0,0,1]
v_exp_f32_e32 v82, v82
v_cvt_pk_fp8_f32 v99, v76, v77
v_exp_f32_e32 v83, v83
v_cvt_pk_fp8_f32 v99, v78, v79 op_sel:[0,0,1]
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
v_cvt_pk_fp8_f32 v100, v80, v81
v_cvt_pk_fp8_f32 v100, v82, v83 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v101, v84, v85
v_cvt_pk_fp8_f32 v101, v86, v87 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v102, v88, v89
v_cvt_pk_fp8_f32 v102, v90, v91 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v103, v92, v93
v_cvt_pk_fp8_f32 v103, v94, v95 op_sel:[0,0,1]
s_waitcnt vmcnt(0)
s_barrier
v_and_b32_e32 v213, 31, v188
v_add_u32_e32 v213, s62, v213
v_lshlrev_b32_e32 v216, 2, v213
v_bfe_u32 v213, v188, 4, 2
v_add_u32_e32 v213, s62, v213
v_mul_lo_u32 v215, v213, s36
v_and_b32_e32 v213, 15, v188
v_lshl_add_u32 v215, v213, 4, v215
s_add_u32 s91, s90, s63
s_and_b32 s91, s91, 3
s_cmp_eq_u32 s60, 0
s_cbranch_scc0 5
s_mov_b32 s60, 1
s_sub_u32 s78, s30, 1
s_sub_u32 s78, s78, s48
s_cmp_eq_u32 s78, s48
s_cbranch_scc0 11
s_add_u32 s56, s56, s41
s_mov_b32 s60, 0
s_cmp_ge_u32 s56, s29
s_cselect_b32 s70, 1, 0
s_cbranch_scc1 58
s_lshl_b32 s78, s56, 5
s_add_u32 s80, s26, s78
s_addc_u32 s81, s27, 0
s_load_dwordx8 s[48:55], s[80:81], 0x0
s_waitcnt lgkmcnt(0)
s_sub_u32 s78, s30, 1
s_sub_u32 s78, s78, s48
s_cmp_eq_u32 s60, 0
s_cselect_b32 s61, s78, s48
s_and_b32 s78, s57, 3
s_cmp_eq_u32 s32, 0
s_cselect_b32 s59, s57, s78
s_mul_i32 s78, s61, s31
s_add_u32 s78, s78, s59
s_lshl_b32 s62, s78, 5
s_add_u32 s78, s61, 1
s_mul_i32 s78, s78, s31
s_lshl_b32 s78, s78, 5
s_add_u32 s78, s78, 63
s_lshr_b32 s63, s78, 6
s_lshr_b32 s78, s40, 6
s_min_u32 s63, s63, s78
s_lshr_b32 s64, s62, 6
s_and_b32 s79, s58, s32
s_mul_i32 s80, s79, s37
s_add_u32 s4, s50, s80
s_addc_u32 s5, s51, 0
s_add_u32 s4, s4, s16
s_addc_u32 s5, s5, s17
s_mov_b32 s81, 0
s_lshl_b64 s[80:81], s[80:81], 8
s_add_u32 s6, s80, s22
s_addc_u32 s7, s81, s23
s_mul_i32 s80, s79, s38
s_add_u32 s6, s6, s80
s_addc_u32 s7, s7, 0
s_mul_i32 s80, s79, s39
s_add_u32 s80, s80, s49
s_lshl_b32 s80, s80, 2
s_cmp_eq_u64 s[24:25], 0
s_cselect_b32 s80, 0, s80
s_add_u32 s76, s24, s80
s_addc_u32 s77, s25, 0
s_add_u32 s8, s18, s52
s_addc_u32 s9, s19, s53
s_mul_i32 s10, s40, s34
s_mov_b32 s11, 0x110000
s_mov_b32 s81, 0
s_lshl_b64 s[80:81], s[80:81], 7
s_add_u32 s12, s80, s20
s_addc_u32 s13, s81, s21
s_mul_i32 s14, s40, s35
s_mov_b32 s15, 0x110000
s_cmp_eq_u32 s70, 0
s_cbranch_scc0 148
s_cmp_eq_u32 s58, 0
s_cbranch_scc0 126
s_mul_i32 s79, 0, s34
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 16, s34
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s34
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 48, s34
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 0, s35
s_mul_i32 s78, 0, s67
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 13
s_add_u32 s80, s80, s84
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
s_mul_i32 s79, 4, s35
s_mul_i32 s78, 0, s67
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 13
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
s_cmpk_le_u32 s63, 0x1
s_cbranch_scc1 50
s_mul_i32 s79, 0, s34
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 16, s34
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s34
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 48, s34
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
v_and_b32_e32 v213, 31, v188
v_add_u32_e32 v213, s62, v213
v_mul_lo_u32 v213, v213, s33
v_bfe_u32 v207, v188, 5, 1
v_lshl_add_u32 v213, v207, 5, v213
global_load_dwordx4 v[104:107], v213, s[4:5]
global_load_dwordx4 v[108:111], v213, s[4:5] offset:16
global_load_dwordx4 v[112:115], v213, s[4:5] offset:64
global_load_dwordx4 v[116:119], v213, s[4:5] offset:80
global_load_dwordx4 v[120:123], v213, s[4:5] offset:128
global_load_dwordx4 v[124:127], v213, s[4:5] offset:144
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[184:187], v[128:135], v[96:103], 0
ds_read_b64_tr_b8 v[136:137], v196
ds_read_b64_tr_b8 v[138:139], v196 offset:1024
ds_read_b64_tr_b8 v[140:141], v196 offset:2048
ds_read_b64_tr_b8 v[142:143], v196 offset:3072
ds_read_b64_tr_b8 v[144:145], v196 offset:256
ds_read_b64_tr_b8 v[146:147], v196 offset:1280
ds_read_b64_tr_b8 v[148:149], v196 offset:2304
ds_read_b64_tr_b8 v[150:151], v196 offset:3328
ds_read_b64_tr_b8 v[152:153], v196 offset:512
ds_read_b64_tr_b8 v[154:155], v196 offset:1536
ds_read_b64_tr_b8 v[156:157], v196 offset:2560
ds_read_b64_tr_b8 v[158:159], v196 offset:3584
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[136:143], v[96:103], v[0:15], v206, v203 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[160:161], v196 offset:768
ds_read_b64_tr_b8 v[162:163], v196 offset:1792
ds_read_b64_tr_b8 v[164:165], v196 offset:2816
ds_read_b64_tr_b8 v[166:167], v196 offset:3840
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[144:151], v[96:103], v[16:31], v206, v203 op_sel_hi:[0,0,0]
v_lshlrev_b32_e32 v213, 23, v203
v_fma_f32 v201, v184, v213, v201
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[152:159], v[96:103], v[32:47], v206, v203 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[160:167], v[96:103], v[48:63], v206, v203 op_sel_hi:[0,0,0]
s_branch 239
s_waitcnt vmcnt(0)
s_barrier
v_and_b32_e32 v213, 31, v188
v_add_u32_e32 v213, s62, v213
v_lshlrev_b32_e32 v216, 2, v213
v_bfe_u32 v213, v188, 4, 2
v_add_u32_e32 v213, s62, v213
v_mul_lo_u32 v215, v213, s36
v_and_b32_e32 v213, 15, v188
v_lshl_add_u32 v215, v213, 4, v215
s_add_u32 s91, s90, s63
s_and_b32 s91, s91, 3
s_cmp_eq_u32 s60, 0
s_cbranch_scc0 5
s_mov_b32 s60, 1
s_sub_u32 s78, s30, 1
s_sub_u32 s78, s78, s48
s_cmp_eq_u32 s78, s48
s_cbranch_scc0 11
s_add_u32 s56, s56, s41
s_mov_b32 s60, 0
s_cmp_ge_u32 s56, s29
s_cselect_b32 s70, 1, 0
s_cbranch_scc1 58
s_lshl_b32 s78, s56, 5
s_add_u32 s80, s26, s78
s_addc_u32 s81, s27, 0
s_load_dwordx8 s[48:55], s[80:81], 0x0
s_waitcnt lgkmcnt(0)
s_sub_u32 s78, s30, 1
s_sub_u32 s78, s78, s48
s_cmp_eq_u32 s60, 0
s_cselect_b32 s61, s78, s48
s_and_b32 s78, s57, 3
s_cmp_eq_u32 s32, 0
s_cselect_b32 s59, s57, s78
s_mul_i32 s78, s61, s31
s_add_u32 s78, s78, s59
s_lshl_b32 s62, s78, 5
s_add_u32 s78, s61, 1
s_mul_i32 s78, s78, s31
s_lshl_b32 s78, s78, 5
s_add_u32 s78, s78, 63
s_lshr_b32 s63, s78, 6
s_lshr_b32 s78, s40, 6
s_min_u32 s63, s63, s78
s_lshr_b32 s64, s62, 6
s_and_b32 s79, s58, s32
s_mul_i32 s80, s79, s37
s_add_u32 s4, s50, s80
s_addc_u32 s5, s51, 0
s_add_u32 s4, s4, s16
s_addc_u32 s5, s5, s17
s_mov_b32 s81, 0
s_lshl_b64 s[80:81], s[80:81], 8
s_add_u32 s6, s80, s22
s_addc_u32 s7, s81, s23
s_mul_i32 s80, s79, s38
s_add_u32 s6, s6, s80
s_addc_u32 s7, s7, 0
s_mul_i32 s80, s79, s39
s_add_u32 s80, s80, s49
s_lshl_b32 s80, s80, 2
s_cmp_eq_u64 s[24:25], 0
s_cselect_b32 s80, 0, s80
s_add_u32 s76, s24, s80
s_addc_u32 s77, s25, 0
s_add_u32 s8, s18, s52
s_addc_u32 s9, s19, s53
s_mul_i32 s10, s40, s34
s_mov_b32 s11, 0x110000
s_mov_b32 s81, 0
s_lshl_b64 s[80:81], s[80:81], 7
s_add_u32 s12, s80, s20
s_addc_u32 s13, s81, s21
s_mul_i32 s14, s40, s35
s_mov_b32 s15, 0x110000
s_cmp_eq_u32 s70, 0
s_cbranch_scc0 148
s_cmp_eq_u32 s58, 0
s_cbranch_scc0 126
s_mul_i32 s79, 0, s34
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 16, s34
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s34
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 48, s34
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 0, s35
s_mul_i32 s78, 0, s67
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 13
s_add_u32 s80, s80, s84
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
s_mul_i32 s79, 4, s35
s_mul_i32 s78, 0, s67
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 13
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
s_cmpk_le_u32 s63, 0x1
s_cbranch_scc1 50
s_mul_i32 s79, 0, s34
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 16, s34
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s34
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 48, s34
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
v_and_b32_e32 v213, 31, v188
v_add_u32_e32 v213, s62, v213
v_mul_lo_u32 v213, v213, s33
v_bfe_u32 v207, v188, 5, 1
v_lshl_add_u32 v213, v207, 5, v213
global_load_dwordx4 v[104:107], v213, s[4:5]
global_load_dwordx4 v[108:111], v213, s[4:5] offset:16
global_load_dwordx4 v[112:115], v213, s[4:5] offset:64
global_load_dwordx4 v[116:119], v213, s[4:5] offset:80
global_load_dwordx4 v[120:123], v213, s[4:5] offset:128
global_load_dwordx4 v[124:127], v213, s[4:5] offset:144
s_waitcnt vmcnt(6)
s_barrier
s_branch 1321
s_add_u32 s78, s65, 1
s_cmp_ge_u32 s78, s63
s_cbranch_scc1 697
s_add_u32 s85, s65, s90
s_add_u32 s78, s85, 1
s_and_b32 s78, s78, 3
s_lshl_b32 s86, s78, 14
s_and_b32 s78, s85, 3
s_lshl_b32 s79, s78, 14
s_add_u32 s88, s83, s79
s_lshl_b32 s87, s78, 13
s_add_u32 s78, s85, 2
s_and_b32 s78, s78, 3
s_lshl_b32 s79, s78, 13
s_add_u32 s89, s84, s79
v_add_u32_e32 v193, s86, v189
v_add_u32_e32 v194, s86, v190
v_add_u32_e32 v195, s86, v191
v_add_u32_e32 v196, s87, v192
s_cmp_lt_u32 s65, s64
s_cbranch_scc1 175
s_cmp_eq_u32 s65, s64
s_cbranch_scc1 26
s_barrier
s_waitcnt vmcnt(0)
s_add_u32 s78, s65, 4
s_cmp_ge_u32 s78, s63
s_cbranch_scc1 10
s_mul_i32 s78, s78, s66
s_add_u32 m0, s88, 0
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s78 offen lds
s_add_u32 m0, s88, 0x2000
s_nop 0
buffer_load_dwordx4 v198, s[8:11], s78 offen lds
s_add_u32 s79, s65, 2
s_cmp_ge_u32 s79, s63
s_cbranch_scc1 5
s_mul_i32 s79, s79, s67
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
s_barrier
s_add_u32 s65, s65, 1
s_branch 64165
s_setprio 0
v_exp_f32_e32 v64, v64
v_exp_f32_e32 v65, v65
v_exp_f32_e32 v66, v66
v_exp_f32_e32 v67, v67
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
v_cvt_pk_fp8_f32 v96, v64, v65
v_cvt_pk_fp8_f32 v96, v66, v67 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v97, v68, v69
v_cvt_pk_fp8_f32 v97, v70, v71 op_sel:[0,0,1]
v_exp_f32_e32 v80, v80
v_cvt_pk_fp8_f32 v98, v72, v73
v_exp_f32_e32 v81, v81
v_cvt_pk_fp8_f32 v98, v74, v75 op_sel:[0,0,1]
v_exp_f32_e32 v82, v82
v_cvt_pk_fp8_f32 v99, v76, v77
v_exp_f32_e32 v83, v83
v_cvt_pk_fp8_f32 v99, v78, v79 op_sel:[0,0,1]
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
v_cvt_pk_fp8_f32 v100, v80, v81
v_cvt_pk_fp8_f32 v100, v82, v83 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v101, v84, v85
v_cvt_pk_fp8_f32 v101, v86, v87 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v102, v88, v89
v_cvt_pk_fp8_f32 v102, v90, v91 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v103, v92, v93
v_cvt_pk_fp8_f32 v103, v94, v95 op_sel:[0,0,1]
s_barrier
s_setprio 1
s_waitcnt vmcnt(0)
v_mfma_f32_16x16x128_f8f6f4 v[184:187], v[128:135], v[96:103], 0
ds_read_b64_tr_b8 v[136:137], v196
ds_read_b64_tr_b8 v[138:139], v196 offset:1024
ds_read_b64_tr_b8 v[140:141], v196 offset:2048
ds_read_b64_tr_b8 v[142:143], v196 offset:3072
ds_read_b64_tr_b8 v[144:145], v196 offset:256
ds_read_b64_tr_b8 v[146:147], v196 offset:1280
ds_read_b64_tr_b8 v[148:149], v196 offset:2304
ds_read_b64_tr_b8 v[150:151], v196 offset:3328
ds_read_b64_tr_b8 v[152:153], v196 offset:512
ds_read_b64_tr_b8 v[154:155], v196 offset:1536
ds_read_b64_tr_b8 v[156:157], v196 offset:2560
ds_read_b64_tr_b8 v[158:159], v196 offset:3584
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[136:143], v[96:103], v[0:15], v206, v204 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[160:161], v196 offset:768
ds_read_b64_tr_b8 v[162:163], v196 offset:1792
ds_read_b64_tr_b8 v[164:165], v196 offset:2816
ds_read_b64_tr_b8 v[166:167], v196 offset:3840
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[144:151], v[96:103], v[16:31], v206, v204 op_sel_hi:[0,0,0]
s_add_u32 s78, s65, 4
s_cmp_ge_u32 s78, s63
s_cbranch_scc1 10
s_mul_i32 s78, s78, s66
s_add_u32 m0, s88, 0
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s78 offen lds
s_add_u32 m0, s88, 0x2000
s_nop 0
buffer_load_dwordx4 v198, s[8:11], s78 offen lds
v_lshlrev_b32_e32 v213, 23, v204
v_fma_f32 v201, v184, v213, v201
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[152:159], v[96:103], v[32:47], v206, v204 op_sel_hi:[0,0,0]
s_add_u32 s79, s65, 2
s_cmp_ge_u32 s79, s63
s_cbranch_scc1 5
s_mul_i32 s79, s79, s67
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[160:167], v[96:103], v[48:63], v206, v204 op_sel_hi:[0,0,0]
s_barrier
s_add_u32 s65, s65, 1
s_branch 64018
s_setprio 0
v_exp_f32_e32 v64, v64
v_exp_f32_e32 v65, v65
v_exp_f32_e32 v66, v66
v_exp_f32_e32 v67, v67
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
v_cvt_pk_fp8_f32 v96, v64, v65
v_cvt_pk_fp8_f32 v96, v66, v67 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v97, v68, v69
v_cvt_pk_fp8_f32 v97, v70, v71 op_sel:[0,0,1]
v_exp_f32_e32 v80, v80
v_cvt_pk_fp8_f32 v98, v72, v73
v_exp_f32_e32 v81, v81
v_cvt_pk_fp8_f32 v98, v74, v75 op_sel:[0,0,1]
v_exp_f32_e32 v82, v82
v_cvt_pk_fp8_f32 v99, v76, v77
v_exp_f32_e32 v83, v83
v_cvt_pk_fp8_f32 v99, v78, v79 op_sel:[0,0,1]
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
v_cvt_pk_fp8_f32 v100, v80, v81
v_cvt_pk_fp8_f32 v100, v82, v83 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v101, v84, v85
v_cvt_pk_fp8_f32 v101, v86, v87 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v102, v88, v89
v_cvt_pk_fp8_f32 v102, v90, v91 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v103, v92, v93
v_cvt_pk_fp8_f32 v103, v94, v95 op_sel:[0,0,1]
ds_read_b128 v[136:139], v193
ds_read_b128 v[140:143], v193 offset:16
ds_read_b128 v[144:147], v193 offset:8192
ds_read_b128 v[148:151], v193 offset:8208
ds_read_b128 v[152:155], v194
ds_read_b128 v[156:159], v194 offset:16
ds_read_b128 v[160:163], v194 offset:8192
ds_read_b128 v[164:167], v194 offset:8208
s_barrier
s_setprio 1
s_waitcnt vmcnt(0)
v_mfma_f32_16x16x128_f8f6f4 v[184:187], v[128:135], v[96:103], 0
ds_read_b128 v[168:171], v195
ds_read_b128 v[172:175], v195 offset:16
s_add_u32 s81, s65, 1
s_lshl_b32 s81, s81, 6
s_sub_u32 s81, s62, s81
v_and_b32_e32 v213, 31, v188
v_add_u32_e32 v211, s81, v213
v_bfe_u32 v213, v188, 5, 1
v_lshlrev_b32_e32 v213, 2, v213
v_sub_u32_e32 v211, v211, v213
s_waitcnt lgkmcnt(6)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[136:143], v[104:111], 0
ds_read_b128 v[176:179], v195 offset:8192
ds_read_b128 v[180:183], v195 offset:8208
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[144:151], v[104:111], 0
ds_read_b64_tr_b8 v[136:137], v196
ds_read_b64_tr_b8 v[138:139], v196 offset:1024
ds_read_b64_tr_b8 v[140:141], v196 offset:2048
ds_read_b64_tr_b8 v[142:143], v196 offset:3072
s_add_u32 s78, s65, 4
s_cmp_ge_u32 s78, s63
s_cbranch_scc1 10
s_mul_i32 s78, s78, s66
s_add_u32 m0, s88, 0
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s78 offen lds
s_add_u32 m0, s88, 0x2000
s_nop 0
buffer_load_dwordx4 v198, s[8:11], s78 offen lds
v_lshlrev_b32_e32 v213, 23, v204
v_fma_f32 v201, v184, v213, v201
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[152:159], v[112:119], v[64:79]
ds_read_b64_tr_b8 v[144:145], v196 offset:256
ds_read_b64_tr_b8 v[146:147], v196 offset:1280
ds_read_b64_tr_b8 v[148:149], v196 offset:2304
ds_read_b64_tr_b8 v[150:151], v196 offset:3328
s_add_u32 s79, s65, 2
s_cmp_ge_u32 s79, s63
s_cbranch_scc1 5
s_mul_i32 s79, s79, s67
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[160:167], v[112:119], v[80:95]
s_waitcnt lgkmcnt(8)
v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[168:175], v[120:127], v[64:79]
ds_read_b64_tr_b8 v[152:153], v196 offset:512
ds_read_b64_tr_b8 v[154:155], v196 offset:1536
ds_read_b64_tr_b8 v[156:157], v196 offset:2560
ds_read_b64_tr_b8 v[158:159], v196 offset:3584
v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[176:183], v[120:127], v[80:95]
s_sub_i32 s80, s81, 0
s_cmp_ge_i32 s80, 32
s_cbranch_scc1 69
s_cmp_lt_i32 s80, 0
s_cbranch_scc1 49
v_cmp_gt_i32_e32 vcc, 0, v211
v_cndmask_b32_e64 v64, v64, v212, vcc
v_cmp_gt_i32_e32 vcc, 1, v211
v_cndmask_b32_e64 v65, v65, v212, vcc
v_cmp_gt_i32_e32 vcc, 2, v211
v_cndmask_b32_e64 v66, v66, v212, vcc
v_cmp_gt_i32_e32 vcc, 3, v211
v_cndmask_b32_e64 v67, v67, v212, vcc
v_cmp_gt_i32_e32 vcc, 8, v211
v_cndmask_b32_e64 v68, v68, v212, vcc
v_cmp_gt_i32_e32 vcc, 9, v211
v_cndmask_b32_e64 v69, v69, v212, vcc
v_cmp_gt_i32_e32 vcc, 10, v211
v_cndmask_b32_e64 v70, v70, v212, vcc
v_cmp_gt_i32_e32 vcc, 11, v211
v_cndmask_b32_e64 v71, v71, v212, vcc
v_cmp_gt_i32_e32 vcc, 16, v211
v_cndmask_b32_e64 v72, v72, v212, vcc
v_cmp_gt_i32_e32 vcc, 17, v211
v_cndmask_b32_e64 v73, v73, v212, vcc
v_cmp_gt_i32_e32 vcc, 18, v211
v_cndmask_b32_e64 v74, v74, v212, vcc
v_cmp_gt_i32_e32 vcc, 19, v211
v_cndmask_b32_e64 v75, v75, v212, vcc
v_cmp_gt_i32_e32 vcc, 24, v211
v_cndmask_b32_e64 v76, v76, v212, vcc
v_cmp_gt_i32_e32 vcc, 25, v211
v_cndmask_b32_e64 v77, v77, v212, vcc
v_cmp_gt_i32_e32 vcc, 26, v211
v_cndmask_b32_e64 v78, v78, v212, vcc
v_cmp_gt_i32_e32 vcc, 27, v211
v_cndmask_b32_e64 v79, v79, v212, vcc
s_branch 18
s_nop 15
s_nop 3
s_nop 1
v_max_f32_e32 v207, v64, v65
v_max3_f32 v207, v66, v67, v207
v_max3_f32 v207, v68, v69, v207
v_max3_f32 v207, v70, v71, v207
v_max3_f32 v207, v72, v73, v207
v_max3_f32 v207, v74, v75, v207
v_max3_f32 v207, v76, v77, v207
v_max3_f32 v207, v78, v79, v207
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[136:143], v[96:103], v[0:15], v206, v204 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[160:161], v196 offset:768
ds_read_b64_tr_b8 v[162:163], v196 offset:1792
ds_read_b64_tr_b8 v[164:165], v196 offset:2816
ds_read_b64_tr_b8 v[166:167], v196 offset:3840
s_sub_i32 s80, s81, 32
s_cmp_ge_i32 s80, 32
s_cbranch_scc1 70
s_cmp_lt_i32 s80, 0
s_cbranch_scc1 49
v_cmp_gt_i32_e32 vcc, 32, v211
v_cndmask_b32_e64 v80, v80, v212, vcc
v_cmp_gt_i32_e32 vcc, 33, v211
v_cndmask_b32_e64 v81, v81, v212, vcc
v_cmp_gt_i32_e32 vcc, 34, v211
v_cndmask_b32_e64 v82, v82, v212, vcc
v_cmp_gt_i32_e32 vcc, 35, v211
v_cndmask_b32_e64 v83, v83, v212, vcc
v_cmp_gt_i32_e32 vcc, 40, v211
v_cndmask_b32_e64 v84, v84, v212, vcc
v_cmp_gt_i32_e32 vcc, 41, v211
v_cndmask_b32_e64 v85, v85, v212, vcc
v_cmp_gt_i32_e32 vcc, 42, v211
v_cndmask_b32_e64 v86, v86, v212, vcc
v_cmp_gt_i32_e32 vcc, 43, v211
v_cndmask_b32_e64 v87, v87, v212, vcc
v_cmp_gt_i32_e32 vcc, 48, v211
v_cndmask_b32_e64 v88, v88, v212, vcc
v_cmp_gt_i32_e32 vcc, 49, v211
v_cndmask_b32_e64 v89, v89, v212, vcc
v_cmp_gt_i32_e32 vcc, 50, v211
v_cndmask_b32_e64 v90, v90, v212, vcc
v_cmp_gt_i32_e32 vcc, 51, v211
v_cndmask_b32_e64 v91, v91, v212, vcc
v_cmp_gt_i32_e32 vcc, 56, v211
v_cndmask_b32_e64 v92, v92, v212, vcc
v_cmp_gt_i32_e32 vcc, 57, v211
v_cndmask_b32_e64 v93, v93, v212, vcc
v_cmp_gt_i32_e32 vcc, 58, v211
v_cndmask_b32_e64 v94, v94, v212, vcc
v_cmp_gt_i32_e32 vcc, 59, v211
v_cndmask_b32_e64 v95, v95, v212, vcc
s_branch 21
s_nop 15
s_nop 3
s_branch 2
s_nop 15
s_nop 3
s_nop 1
v_max_f32_e32 v208, v80, v81
v_max3_f32 v208, v82, v83, v208
v_max3_f32 v208, v84, v85, v208
v_max3_f32 v208, v86, v87, v208
v_max3_f32 v208, v88, v89, v208
v_max3_f32 v208, v90, v91, v208
v_max3_f32 v208, v92, v93, v208
v_max3_f32 v208, v94, v95, v208
v_max_f32_e32 v207, v207, v208
s_nop 1
v_permlane32_swap_b32_e32 v207, v208
v_max_f32_e32 v207, v207, v208
v_mul_f32_e32 v208, s28, v207
v_max_f32_e32 v210, v200, v208
v_sub_f32_e32 v208, v210, v200
v_cmp_lt_f32_e32 vcc, 0x3e000000, v208
s_cmp_lg_u64 vcc, 0
s_cselect_b64 s[74:75], -1, 0
s_cselect_b32 s73, 1, 0
v_cndmask_b32_e64 v202, v200, v210, s[74:75]
v_fma_f32 v207, v207, s28, -v202
v_floor_f32_e32 v207, v207
v_med3_f32 v207, v207, s82, 0
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[144:151], v[96:103], v[16:31], v206, v204 op_sel_hi:[0,0,0]
v_cvt_i32_f32_e32 v203, v207
v_add_u32_e32 v203, 0x7f, v203
v_add_f32_e32 v208, v202, v207
v_sub_f32_e32 v205, 0x40c00000, v208
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[152:159], v[96:103], v[32:47], v206, v204 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[160:167], v[96:103], v[48:63], v206, v204 op_sel_hi:[0,0,0]
v_pk_fma_f32 v[64:65], v[64:65], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[66:67], v[66:67], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[68:69], v[68:69], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[70:71], v[70:71], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[72:73], v[72:73], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[74:75], v[74:75], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[76:77], v[76:77], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[78:79], v[78:79], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[80:81], v[80:81], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[82:83], v[82:83], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[84:85], v[84:85], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[86:87], v[86:87], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[88:89], v[88:89], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[90:91], v[90:91], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[92:93], v[92:93], s[28:29], v[208:209] op_sel_hi:[1,0,0]
v_pk_fma_f32 v[94:95], v[94:95], s[28:29], v[208:209] op_sel_hi:[1,0,0]
s_cmp_eq_u32 s73, 0
s_cbranch_scc1 69
v_sub_f32_e32 v214, v200, v202
v_exp_f32_e32 v214, v214
s_nop 0
v_pk_mul_f32 v[0:1], v[0:1], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[2:3], v[2:3], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[4:5], v[4:5], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[6:7], v[6:7], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[8:9], v[8:9], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[10:11], v[10:11], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[12:13], v[12:13], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[14:15], v[14:15], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[16:17], v[16:17], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[18:19], v[18:19], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[20:21], v[20:21], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[22:23], v[22:23], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[24:25], v[24:25], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[26:27], v[26:27], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[28:29], v[28:29], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[30:31], v[30:31], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[32:33], v[32:33], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[34:35], v[34:35], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[36:37], v[36:37], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[38:39], v[38:39], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[40:41], v[40:41], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[42:43], v[42:43], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[44:45], v[44:45], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[46:47], v[46:47], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[48:49], v[48:49], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[50:51], v[50:51], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[52:53], v[52:53], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[54:55], v[54:55], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[56:57], v[56:57], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[58:59], v[58:59], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[60:61], v[60:61], v[214:215] op_sel_hi:[1,0]
v_pk_mul_f32 v[62:63], v[62:63], v[214:215] op_sel_hi:[1,0]
v_mul_f32_e32 v201, v214, v201
s_barrier
s_add_u32 s65, s65, 1
s_branch 63514
s_add_u32 s85, s65, s90
s_add_u32 s78, s85, 1
s_and_b32 s78, s78, 3
s_lshl_b32 s86, s78, 14
s_and_b32 s78, s85, 3
s_lshl_b32 s79, s78, 14
s_add_u32 s88, s83, s79
s_lshl_b32 s87, s78, 13
s_add_u32 s78, s85, 2
s_and_b32 s78, s78, 3
s_lshl_b32 s79, s78, 13
s_add_u32 s89, s84, s79
v_add_u32_e32 v193, s86, v189
v_add_u32_e32 v194, s86, v190
v_add_u32_e32 v195, s86, v191
v_add_u32_e32 v196, s87, v192
s_cmp_lt_u32 s64, s65
s_cbranch_scc1 361
s_setprio 0
v_exp_f32_e32 v64, v64
v_exp_f32_e32 v65, v65
v_exp_f32_e32 v66, v66
v_exp_f32_e32 v67, v67
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
v_cvt_pk_fp8_f32 v96, v64, v65
v_cvt_pk_fp8_f32 v96, v66, v67 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v97, v68, v69
v_cvt_pk_fp8_f32 v97, v70, v71 op_sel:[0,0,1]
v_exp_f32_e32 v80, v80
v_cvt_pk_fp8_f32 v98, v72, v73
v_exp_f32_e32 v81, v81
v_cvt_pk_fp8_f32 v98, v74, v75 op_sel:[0,0,1]
v_exp_f32_e32 v82, v82
v_cvt_pk_fp8_f32 v99, v76, v77
v_exp_f32_e32 v83, v83
v_cvt_pk_fp8_f32 v99, v78, v79 op_sel:[0,0,1]
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
v_cvt_pk_fp8_f32 v100, v80, v81
v_cvt_pk_fp8_f32 v100, v82, v83 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v101, v84, v85
v_cvt_pk_fp8_f32 v101, v86, v87 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v102, v88, v89
v_cvt_pk_fp8_f32 v102, v90, v91 op_sel:[0,0,1]
v_cvt_pk_fp8_f32 v103, v92, v93
v_cvt_pk_fp8_f32 v103, v94, v95 op_sel:[0,0,1]
s_waitcnt vmcnt(0)
s_barrier
v_and_b32_e32 v213, 31, v188
v_add_u32_e32 v213, s62, v213
v_lshlrev_b32_e32 v216, 2, v213
v_bfe_u32 v213, v188, 4, 2
v_add_u32_e32 v213, s62, v213
v_mul_lo_u32 v215, v213, s36
v_and_b32_e32 v213, 15, v188
v_lshl_add_u32 v215, v213, 4, v215
s_add_u32 s91, s90, s63
s_and_b32 s91, s91, 3
s_cmp_eq_u32 s60, 0
s_cbranch_scc0 5
s_mov_b32 s60, 1
s_sub_u32 s78, s30, 1
s_sub_u32 s78, s78, s48
s_cmp_eq_u32 s78, s48
s_cbranch_scc0 11
s_add_u32 s56, s56, s41
s_mov_b32 s60, 0
s_cmp_ge_u32 s56, s29
s_cselect_b32 s70, 1, 0
s_cbranch_scc1 58
s_lshl_b32 s78, s56, 5
s_add_u32 s80, s26, s78
s_addc_u32 s81, s27, 0
s_load_dwordx8 s[48:55], s[80:81], 0x0
s_waitcnt lgkmcnt(0)
s_sub_u32 s78, s30, 1
s_sub_u32 s78, s78, s48
s_cmp_eq_u32 s60, 0
s_cselect_b32 s61, s78, s48
s_and_b32 s78, s57, 3
s_cmp_eq_u32 s32, 0
s_cselect_b32 s59, s57, s78
s_mul_i32 s78, s61, s31
s_add_u32 s78, s78, s59
s_lshl_b32 s62, s78, 5
s_add_u32 s78, s61, 1
s_mul_i32 s78, s78, s31
s_lshl_b32 s78, s78, 5
s_add_u32 s78, s78, 63
s_lshr_b32 s63, s78, 6
s_lshr_b32 s78, s40, 6
s_min_u32 s63, s63, s78
s_lshr_b32 s64, s62, 6
s_and_b32 s79, s58, s32
s_mul_i32 s80, s79, s37
s_add_u32 s4, s50, s80
s_addc_u32 s5, s51, 0
s_add_u32 s4, s4, s16
s_addc_u32 s5, s5, s17
s_mov_b32 s81, 0
s_lshl_b64 s[80:81], s[80:81], 8
s_add_u32 s6, s80, s22
s_addc_u32 s7, s81, s23
s_mul_i32 s80, s79, s38
s_add_u32 s6, s6, s80
s_addc_u32 s7, s7, 0
s_mul_i32 s80, s79, s39
s_add_u32 s80, s80, s49
s_lshl_b32 s80, s80, 2
s_cmp_eq_u64 s[24:25], 0
s_cselect_b32 s80, 0, s80
s_add_u32 s76, s24, s80
s_addc_u32 s77, s25, 0
s_add_u32 s8, s18, s52
s_addc_u32 s9, s19, s53
s_mul_i32 s10, s40, s34
s_mov_b32 s11, 0x110000
s_mov_b32 s81, 0
s_lshl_b64 s[80:81], s[80:81], 7
s_add_u32 s12, s80, s20
s_addc_u32 s13, s81, s21
s_mul_i32 s14, s40, s35
s_mov_b32 s15, 0x110000
s_cmp_eq_u32 s70, 0
s_cbranch_scc0 148
s_cmp_eq_u32 s58, 0
s_cbranch_scc0 126
s_mul_i32 s79, 0, s34
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 16, s34
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s34
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 48, s34
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 0, s35
s_mul_i32 s78, 0, s67
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 13
s_add_u32 s80, s80, s84
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
s_mul_i32 s79, 4, s35
s_mul_i32 s78, 0, s67
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 13
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
s_cmpk_le_u32 s63, 0x1
s_cbranch_scc1 50
s_mul_i32 s79, 0, s34
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 16, s34
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s34
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 48, s34
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
v_and_b32_e32 v213, 31, v188
v_add_u32_e32 v213, s62, v213
v_mul_lo_u32 v213, v213, s33
v_bfe_u32 v207, v188, 5, 1
v_lshl_add_u32 v213, v207, 5, v213
global_load_dwordx4 v[104:107], v213, s[4:5]
global_load_dwordx4 v[108:111], v213, s[4:5] offset:16
global_load_dwordx4 v[112:115], v213, s[4:5] offset:64
global_load_dwordx4 v[116:119], v213, s[4:5] offset:80
global_load_dwordx4 v[120:123], v213, s[4:5] offset:128
global_load_dwordx4 v[124:127], v213, s[4:5] offset:144
s_setprio 1
v_mfma_f32_16x16x128_f8f6f4 v[184:187], v[128:135], v[96:103], 0
ds_read_b64_tr_b8 v[136:137], v196
ds_read_b64_tr_b8 v[138:139], v196 offset:1024
ds_read_b64_tr_b8 v[140:141], v196 offset:2048
ds_read_b64_tr_b8 v[142:143], v196 offset:3072
ds_read_b64_tr_b8 v[144:145], v196 offset:256
ds_read_b64_tr_b8 v[146:147], v196 offset:1280
ds_read_b64_tr_b8 v[148:149], v196 offset:2304
ds_read_b64_tr_b8 v[150:151], v196 offset:3328
ds_read_b64_tr_b8 v[152:153], v196 offset:512
ds_read_b64_tr_b8 v[154:155], v196 offset:1536
ds_read_b64_tr_b8 v[156:157], v196 offset:2560
ds_read_b64_tr_b8 v[158:159], v196 offset:3584
s_waitcnt lgkmcnt(4)
v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[136:143], v[96:103], v[0:15], v206, v204 op_sel_hi:[0,0,0]
ds_read_b64_tr_b8 v[160:161], v196 offset:768
ds_read_b64_tr_b8 v[162:163], v196 offset:1792
ds_read_b64_tr_b8 v[164:165], v196 offset:2816
ds_read_b64_tr_b8 v[166:167], v196 offset:3840
v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[144:151], v[96:103], v[16:31], v206, v204 op_sel_hi:[0,0,0]
v_lshlrev_b32_e32 v213, 23, v204
v_fma_f32 v201, v184, v213, v201
s_waitcnt lgkmcnt(0)
v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[152:159], v[96:103], v[32:47], v206, v204 op_sel_hi:[0,0,0]
v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[160:167], v[96:103], v[48:63], v206, v204 op_sel_hi:[0,0,0]
s_branch 239
s_waitcnt vmcnt(0)
s_barrier
v_and_b32_e32 v213, 31, v188
v_add_u32_e32 v213, s62, v213
v_lshlrev_b32_e32 v216, 2, v213
v_bfe_u32 v213, v188, 4, 2
v_add_u32_e32 v213, s62, v213
v_mul_lo_u32 v215, v213, s36
v_and_b32_e32 v213, 15, v188
v_lshl_add_u32 v215, v213, 4, v215
s_add_u32 s91, s90, s63
s_and_b32 s91, s91, 3
s_cmp_eq_u32 s60, 0
s_cbranch_scc0 5
s_mov_b32 s60, 1
s_sub_u32 s78, s30, 1
s_sub_u32 s78, s78, s48
s_cmp_eq_u32 s78, s48
s_cbranch_scc0 11
s_add_u32 s56, s56, s41
s_mov_b32 s60, 0
s_cmp_ge_u32 s56, s29
s_cselect_b32 s70, 1, 0
s_cbranch_scc1 58
s_lshl_b32 s78, s56, 5
s_add_u32 s80, s26, s78
s_addc_u32 s81, s27, 0
s_load_dwordx8 s[48:55], s[80:81], 0x0
s_waitcnt lgkmcnt(0)
s_sub_u32 s78, s30, 1
s_sub_u32 s78, s78, s48
s_cmp_eq_u32 s60, 0
s_cselect_b32 s61, s78, s48
s_and_b32 s78, s57, 3
s_cmp_eq_u32 s32, 0
s_cselect_b32 s59, s57, s78
s_mul_i32 s78, s61, s31
s_add_u32 s78, s78, s59
s_lshl_b32 s62, s78, 5
s_add_u32 s78, s61, 1
s_mul_i32 s78, s78, s31
s_lshl_b32 s78, s78, 5
s_add_u32 s78, s78, 63
s_lshr_b32 s63, s78, 6
s_lshr_b32 s78, s40, 6
s_min_u32 s63, s63, s78
s_lshr_b32 s64, s62, 6
s_and_b32 s79, s58, s32
s_mul_i32 s80, s79, s37
s_add_u32 s4, s50, s80
s_addc_u32 s5, s51, 0
s_add_u32 s4, s4, s16
s_addc_u32 s5, s5, s17
s_mov_b32 s81, 0
s_lshl_b64 s[80:81], s[80:81], 8
s_add_u32 s6, s80, s22
s_addc_u32 s7, s81, s23
s_mul_i32 s80, s79, s38
s_add_u32 s6, s6, s80
s_addc_u32 s7, s7, 0
s_mul_i32 s80, s79, s39
s_add_u32 s80, s80, s49
s_lshl_b32 s80, s80, 2
s_cmp_eq_u64 s[24:25], 0
s_cselect_b32 s80, 0, s80
s_add_u32 s76, s24, s80
s_addc_u32 s77, s25, 0
s_add_u32 s8, s18, s52
s_addc_u32 s9, s19, s53
s_mul_i32 s10, s40, s34
s_mov_b32 s11, 0x110000
s_mov_b32 s81, 0
s_lshl_b64 s[80:81], s[80:81], 7
s_add_u32 s12, s80, s20
s_addc_u32 s13, s81, s21
s_mul_i32 s14, s40, s35
s_mov_b32 s15, 0x110000
s_cmp_eq_u32 s70, 0
s_cbranch_scc0 148
s_cmp_eq_u32 s58, 0
s_cbranch_scc0 126
s_mul_i32 s79, 0, s34
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 16, s34
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s34
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 48, s34
s_mul_i32 s78, 0, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 0, s35
s_mul_i32 s78, 0, s67
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 13
s_add_u32 s80, s80, s84
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
s_mul_i32 s79, 4, s35
s_mul_i32 s78, 0, s67
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 0
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 13
s_add_u32 s80, s80, s84
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v199, s[12:15], s79 offen lds
s_cmpk_le_u32 s63, 0x1
s_cbranch_scc1 50
s_mul_i32 s79, 0, s34
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 16, s34
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x1000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 32, s34
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x2000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
s_mul_i32 s79, 48, s34
s_mul_i32 s78, 1, s66
s_add_u32 s79, s79, s78
s_add_u32 s80, s91, 1
s_and_b32 s80, s80, 3
s_lshl_b32 s80, s80, 14
s_add_u32 s80, s80, s83
s_add_u32 s80, s80, 0x3000
s_nop 0
buffer_load_dwordx4 v197, s[8:11], s79 offen lds
v_and_b32_e32 v213, 31, v188
v_add_u32_e32 v213, s62, v213
v_mul_lo_u32 v213, v213, s33
v_bfe_u32 v207, v188, 5, 1
v_lshl_add_u32 v213, v207, 5, v213
global_load_dwordx4 v[104:107], v213, s[4:5]
global_load_dwordx4 v[108:111], v213, s[4:5] offset:16
global_load_dwordx4 v[112:115], v213, s[4:5] offset:64
global_load_dwordx4 v[116:119], v213, s[4:5] offset:80
global_load_dwordx4 v[120:123], v213, s[4:5] offset:128
global_load_dwordx4 v[124:127], v213, s[4:5] offset:144
s_waitcnt vmcnt(6)
s_barrier
s_cmp_eq_u32 s70, 0
s_cbranch_scc1 60624
s_nop 15
s_nop 3
v_rcp_f32_e32 v213, v201
v_log_f32_e32 v217, v201
s_nop 1
v_mul_f32_e32 v213, s100, v213
v_mul_f32_e32 v0, v213, v0
v_mul_f32_e32 v1, v213, v1
v_mul_f32_e32 v2, v213, v2
v_mul_f32_e32 v3, v213, v3
v_mul_f32_e32 v4, v213, v4
v_mul_f32_e32 v5, v213, v5
v_mul_f32_e32 v6, v213, v6
v_mul_f32_e32 v7, v213, v7
v_mul_f32_e32 v8, v213, v8
v_mul_f32_e32 v9, v213, v9
v_mul_f32_e32 v10, v213, v10
v_mul_f32_e32 v11, v213, v11
v_mul_f32_e32 v12, v213, v12
v_mul_f32_e32 v13, v213, v13
v_mul_f32_e32 v14, v213, v14
v_mul_f32_e32 v15, v213, v15
v_mul_f32_e32 v16, v213, v16
v_mul_f32_e32 v17, v213, v17
v_mul_f32_e32 v18, v213, v18
v_mul_f32_e32 v19, v213, v19
v_mul_f32_e32 v20, v213, v20
v_mul_f32_e32 v21, v213, v21
v_mul_f32_e32 v22, v213, v22
v_mul_f32_e32 v23, v213, v23
v_mul_f32_e32 v24, v213, v24
v_mul_f32_e32 v25, v213, v25
v_mul_f32_e32 v26, v213, v26
v_mul_f32_e32 v27, v213, v27
v_mul_f32_e32 v28, v213, v28
v_mul_f32_e32 v29, v213, v29
v_mul_f32_e32 v30, v213, v30
v_mul_f32_e32 v31, v213, v31
v_mul_f32_e32 v32, v213, v32
v_mul_f32_e32 v33, v213, v33
v_mul_f32_e32 v34, v213, v34
v_mul_f32_e32 v35, v213, v35
v_mul_f32_e32 v36, v213, v36
v_mul_f32_e32 v37, v213, v37
v_mul_f32_e32 v38, v213, v38
v_mul_f32_e32 v39, v213, v39
v_mul_f32_e32 v40, v213, v40
v_mul_f32_e32 v41, v213, v41
v_mul_f32_e32 v42, v213, v42
v_mul_f32_e32 v43, v213, v43
v_mul_f32_e32 v44, v213, v44
v_mul_f32_e32 v45, v213, v45
v_mul_f32_e32 v46, v213, v46
v_mul_f32_e32 v47, v213, v47
v_mul_f32_e32 v48, v213, v48
v_mul_f32_e32 v49, v213, v49
v_mul_f32_e32 v50, v213, v50
v_mul_f32_e32 v51, v213, v51
v_mul_f32_e32 v52, v213, v52
v_mul_f32_e32 v53, v213, v53
v_mul_f32_e32 v54, v213, v54
v_mul_f32_e32 v55, v213, v55
v_mul_f32_e32 v56, v213, v56
v_mul_f32_e32 v57, v213, v57
v_mul_f32_e32 v58, v213, v58
v_mul_f32_e32 v59, v213, v59
v_mul_f32_e32 v60, v213, v60
v_mul_f32_e32 v61, v213, v61
v_mul_f32_e32 v62, v213, v62
v_mul_f32_e32 v63, v213, v63
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
s_and_b32 s78, s57, 3
s_lshl_b32 s78, s78, 13
s_add_u32 s78, s78, 0x18000
s_lshl_b32 s79, s36, 2
v_and_b32_e32 v207, 31, v188
v_lshlrev_b32_e32 v208, 8, v207
v_add_u32_e32 v208, s78, v208
v_bfe_u32 v209, v188, 5, 1
v_and_b32_e32 v210, 15, v207
v_xor_b32_e32 v209, v209, v210
v_lshl_or_b32 v208, v209, 4, v208
v_xor_b32_e32 v209, 0, v208
ds_write_b128 v209, v[0:3]
v_xor_b32_e32 v209, 32, v208
ds_write_b128 v209, v[4:7]
v_xor_b32_e32 v209, 64, v208
ds_write_b128 v209, v[8:11]
v_xor_b32_e32 v209, 0x60, v208
ds_write_b128 v209, v[12:15]
v_xor_b32_e32 v209, 0x80, v208
ds_write_b128 v209, v[16:19]
v_xor_b32_e32 v209, 0xa0, v208
ds_write_b128 v209, v[20:23]
v_xor_b32_e32 v209, 0xc0, v208
ds_write_b128 v209, v[24:27]
v_xor_b32_e32 v209, 0xe0, v208
ds_write_b128 v209, v[28:31]
v_bfe_u32 v207, v188, 4, 2
v_and_b32_e32 v210, 15, v188
v_xor_b32_e32 v210, v210, v207
v_lshlrev_b32_e32 v207, 8, v207
v_add_u32_e32 v207, s78, v207
v_lshl_or_b32 v207, v210, 4, v207
v_xor_b32_e32 v208, 64, v207
v_xor_b32_e32 v209, 0x80, v207
v_xor_b32_e32 v210, 0xc0, v207
ds_read_b128 v[32:35], v207
ds_read_b128 v[36:39], v208 offset:1024
ds_read_b128 v[40:43], v209 offset:2048
ds_read_b128 v[44:47], v210 offset:3072
ds_read_b128 v[48:51], v207 offset:4096
ds_read_b128 v[52:55], v208 offset:5120
ds_read_b128 v[56:59], v209 offset:6144
ds_read_b128 v[60:63], v210 offset:7168
v_add_u32_e32 v97, s79, v96
v_add_u32_e32 v98, s79, v97
v_add_u32_e32 v99, s79, v98
v_add_u32_e32 v100, s79, v99
v_add_u32_e32 v101, s79, v100
v_add_u32_e32 v102, s79, v101
v_add_u32_e32 v103, s79, v102
s_waitcnt lgkmcnt(7)
global_store_dwordx4 v96, v[32:35], s[92:93]
s_waitcnt lgkmcnt(6)
global_store_dwordx4 v97, v[36:39], s[92:93]
s_waitcnt lgkmcnt(5)
global_store_dwordx4 v98, v[40:43], s[92:93]
s_waitcnt lgkmcnt(4)
global_store_dwordx4 v99, v[44:47], s[92:93]
s_waitcnt lgkmcnt(3)
global_store_dwordx4 v100, v[48:51], s[92:93]
s_waitcnt lgkmcnt(2)
global_store_dwordx4 v101, v[52:55], s[92:93]
s_waitcnt lgkmcnt(1)
global_store_dwordx4 v102, v[56:59], s[92:93]
s_waitcnt lgkmcnt(0)
global_store_dwordx4 v103, v[60:63], s[92:93]
v_add_f32_e32 v217, v200, v217
v_add_f32_e32 v217, -4.0, v217
v_add_f32_e32 v217, -2.0, v217
v_mul_f32_e32 v217, 0x3f317218, v217
s_cmp_eq_u64 s[94:95], 0
s_cbranch_scc1 2
global_store_dword v216, v217, s[94:95]
s_cmp_eq_u32 s58, 0
s_cbranch_scc0 1
s_barrier
s_waitcnt vmcnt(0)
s_endpgm
