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
