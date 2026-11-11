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
