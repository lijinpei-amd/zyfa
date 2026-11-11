	s_add_u32 s18, s79, 1                                      // 00000000B8E0: 8012814F
	s_cmp_ge_u32 s18, s78                                      // 00000000B8E4: BF094E12
	s_cbranch_scc1 1399                                        // 00000000B8E8: BF850577 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26c8>
	s_setprio 0                                                // 00000000B8EC: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000B8F0: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000B8F4: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000B8F8: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000B8FC: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000B900: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000B904: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000B908: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000B90C: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000B910: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000B914: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000B918: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000B91C: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000B920: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000B924: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000B928: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000B92C: 7EBE415F
	v_mov_b32_e32 v80, v179                                    // 00000000B930: 7EA003B3
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000B934: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000B93C: D2A24050 0002A752
	v_mov_b32_e32 v81, v179                                    // 00000000B944: 7EA203B3
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000B948: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000B950: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000B958: 7E804140
	v_mov_b32_e32 v82, v179                                    // 00000000B95C: 7EA403B3
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000B960: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000B968: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000B96C: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000B974: 7E844142
	v_mov_b32_e32 v83, v179                                    // 00000000B978: 7EA603B3
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000B97C: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000B984: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000B988: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000B990: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000B994: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000B998: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000B99C: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000B9A0: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000B9A4: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000B9A8: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000B9AC: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000B9B0: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000B9B4: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000B9B8: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000B9BC: 7E9E414F
	v_mov_b32_e32 v84, v179                                    // 00000000B9C0: 7EA803B3
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000B9C4: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000B9CC: D2A24054 00028742
	v_mov_b32_e32 v85, v179                                    // 00000000B9D4: 7EAA03B3
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000B9D8: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000B9E0: D2A24055 00028F46
	v_mov_b32_e32 v86, v179                                    // 00000000B9E8: 7EAC03B3
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000B9EC: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000B9F4: D2A24056 0002974A
	v_mov_b32_e32 v87, v179                                    // 00000000B9FC: 7EAE03B3
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000BA00: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000BA08: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161 offset:16384                   // 00000000BA10: D9FE4000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:16400                   // 00000000BA18: D9FE4010 600000A1
	ds_read_b128 v[110:113], v161 offset:24576                 // 00000000BA20: D9FE6000 6E0000A1
	ds_read_b128 v[114:117], v161 offset:24592                 // 00000000BA28: D9FE6010 720000A1
	ds_read_b128 v[118:121], v162 offset:16384                 // 00000000BA30: D9FE4000 760000A2
	ds_read_b128 v[122:125], v162 offset:16400                 // 00000000BA38: D9FE4010 7A0000A2
	ds_read_b128 v[134:137], v162 offset:24576                 // 00000000BA40: D9FE6000 860000A2
	ds_read_b128 v[138:141], v162 offset:24592                 // 00000000BA48: D9FE6010 8A0000A2
	s_barrier                                                  // 00000000BA50: BF8A0000
	s_setprio 1                                                // 00000000BA54: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000BA58: D3AD0058 0202A17E
	ds_read_b128 v[206:209], v163 offset:16384                 // 00000000BA60: D9FE4000 CE0000A3
	ds_read_b128 v[210:213], v163 offset:16400                 // 00000000BA68: D9FE4010 D20000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000BA70: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000BA74: D3AE0040 02036D5C
	ds_read_b128 v[214:217], v163 offset:24576                 // 00000000BA7C: D9FE6000 D60000A3
	ds_read_b128 v[218:221], v163 offset:24592                 // 00000000BA84: D9FE6010 DA0000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[110:117], v[182:189], 0// 00000000BA8C: D3AE005E 02036D6E
	ds_read_b64_tr_b8 v[110:111], v173                         // 00000000BA94: D9C40000 6E0000AD
	ds_read_b64_tr_b8 v[112:113], v173 offset:1024             // 00000000BA9C: D9C40400 700000AD
	ds_read_b64_tr_b8 v[114:115], v173 offset:2048             // 00000000BAA4: D9C40800 720000AD
	ds_read_b64_tr_b8 v[116:117], v173 offset:3072             // 00000000BAAC: D9C40C00 740000AD
	s_min_u32 s18, s20, s84                                    // 00000000BAB4: 83925414
	s_add_u32 m0, s72, s16                                     // 00000000BAB8: 807C1048
	s_nop 0                                                    // 00000000BABC: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000BAC0: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v179                            // 00000000BAC8: 24B96697
	v_fma_f32 v178, v88, v92, v178                             // 00000000BACC: D1CB00B2 06CAB958
	s_waitcnt lgkmcnt(8)                                       // 00000000BAD4: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[118:125], v[190:197], v[64:79]// 00000000BAD8: D3AE0040 05037D76
	ds_read_b64_tr_b8 v[118:119], v173 offset:256              // 00000000BAE0: D9C40100 760000AD
	ds_read_b64_tr_b8 v[120:121], v173 offset:1280             // 00000000BAE8: D9C40500 780000AD
	ds_read_b64_tr_b8 v[122:123], v173 offset:2304             // 00000000BAF0: D9C40900 7A0000AD
	ds_read_b64_tr_b8 v[124:125], v173 offset:3328             // 00000000BAF8: D9C40D00 7C0000AD
	s_add_u32 m0, s72, s90                                     // 00000000BB00: 807C5A48
	s_nop 0                                                    // 00000000BB04: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000BB08: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[134:141], v[190:197], v[94:109]// 00000000BB10: D3AE005E 057B7D86
	s_min_u32 s18, s17, s87                                    // 00000000BB18: 83925711
	s_add_u32 m0, s72, s88                                     // 00000000BB1C: 807C5848
	s_nop 0                                                    // 00000000BB20: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000BB24: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000BB2C: 80140914
	s_add_u32 s17, s17, s99                                    // 00000000BB30: 80116311
	s_waitcnt lgkmcnt(8)                                       // 00000000BB34: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[206:213], v[198:205], v[64:79]// 00000000BB38: D3AE0040 05038DCE
	ds_read_b64_tr_b8 v[134:135], v173 offset:512              // 00000000BB40: D9C40200 860000AD
	ds_read_b64_tr_b8 v[136:137], v173 offset:1536             // 00000000BB48: D9C40600 880000AD
	ds_read_b64_tr_b8 v[138:139], v173 offset:2560             // 00000000BB50: D9C40A00 8A0000AD
	ds_read_b64_tr_b8 v[140:141], v173 offset:3584             // 00000000BB58: D9C40E00 8C0000AD
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[214:221], v[198:205], v[94:109]// 00000000BB60: D3AE005E 057B8DD6
	s_nop 3                                                    // 00000000BB68: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000BB6C: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000BB70: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000BB78: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000BB80: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000BB88: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000BB90: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000BB98: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000BBA0: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000BBA8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[110:117], v[80:87], v[48:63], v170, v179 op_sel_hi:[0,0,0]// 00000000BBAC: D3AC0000 000367AA D3AE0830 04C2A16E
	ds_read_b64_tr_b8 v[206:207], v173 offset:768              // 00000000BBBC: D9C40300 CE0000AD
	ds_read_b64_tr_b8 v[208:209], v173 offset:1792             // 00000000BBC4: D9C40700 D00000AD
	ds_read_b64_tr_b8 v[210:211], v173 offset:2816             // 00000000BBCC: D9C40B00 D20000AD
	ds_read_b64_tr_b8 v[212:213], v173 offset:3840             // 00000000BBD4: D9C40F00 D40000AD
	v_max_f32_e32 v89, v94, v95                                // 00000000BBDC: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000BBE0: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000BBE8: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000BBF0: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000BBF8: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000BC00: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000BC08: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000BC10: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[118:125], v[80:87], v[32:47], v170, v179 op_sel_hi:[0,0,0]// 00000000BC18: D3AC0000 000367AA D3AE0820 0482A176
	v_max_f32_e32 v88, v88, v89                                // 00000000BC28: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000BC2C: 7EB20358
	s_nop 1                                                    // 00000000BC30: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000BC34: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000BC38: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000BC3C: 0AB2B18E
	v_max_f32_e32 v89, v177, v89                               // 00000000BC40: 16B2B3B1
	v_sub_f32_e32 v90, v89, v177                               // 00000000BC44: 04B56359
	v_cmp_lt_f32_e32 vcc, s91, v90                             // 00000000BC48: 7C82B45B
	s_waitcnt lgkmcnt(0)                                       // 00000000BC4C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[134:141], v[80:87], v[16:31], v170, v179 op_sel_hi:[0,0,0]// 00000000BC50: D3AC0000 000367AA D3AE0810 0442A186
	s_cmp_lg_u64 vcc, 0                                        // 00000000BC60: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000BC64: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000BC68: 85158081
	v_cndmask_b32_e64 v111, v177, v89, s[18:19]                // 00000000BC6C: D100006F 004AB3B1
	v_fma_f32 v88, v88, v142, -v111                            // 00000000BC74: D1CB0058 85BF1D58
	v_floor_f32_e32 v88, v88                                   // 00000000BC7C: 7EB03F58
	v_med3_f32 v88, v88, s89, 0                                // 00000000BC80: D1D60058 0200B358
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000BC88: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[206:213], v[80:87], v[0:15], v170, v179 op_sel_hi:[0,0,0]// 00000000BC8C: D3AC0000 000367AA D3AE0800 0402A1CE
	v_add_u32_e32 v179, 0x7f, v89                              // 00000000BC9C: 6966B2FF 0000007F
	v_add_f32_e32 v80, v111, v88                               // 00000000BCA4: 02A0B16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000BCA8: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000BCB0: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000BCB4: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000BCBC: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCC4: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCCC: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCD4: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCDC: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCE4: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCEC: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCF4: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCFC: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BD04: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BD0C: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BD14: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BD1C: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BD24: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BD2C: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000BD34: BF068015
	s_cbranch_scc1 68                                          // 00000000BD38: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x164c>
	v_sub_f32_e32 v96, v177, v111                              // 00000000BD3C: 04C0DFB1
	v_exp_f32_e32 v96, v96                                     // 00000000BD40: 7EC04160
	s_nop 0                                                    // 00000000BD44: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000BD48: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000BD50: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000BD58: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000BD60: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000BD68: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000BD70: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000BD78: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000BD80: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000BD88: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000BD90: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000BD98: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000BDA0: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000BDA8: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000BDB0: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000BDB8: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000BDC0: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000BDC8: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000BDD0: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000BDD8: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000BDE0: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000BDE8: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000BDF0: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000BDF8: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000BE00: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000BE08: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000BE10: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000BE18: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000BE20: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000BE28: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000BE30: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000BE38: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000BE40: D3B14000 0802C100
	v_mul_f32_e32 v178, v178, v96                              // 00000000BE48: 0B64C1B2
	s_waitcnt vmcnt(3)                                         // 00000000BE4C: BF8C0F73
	s_barrier                                                  // 00000000BE50: BF8A0000
	s_add_u32 s79, s79, 1                                      // 00000000BE54: 804F814F
	s_add_u32 s18, s79, 1                                      // 00000000BE58: 8012814F
	s_cmp_ge_u32 s18, s78                                      // 00000000BE5C: BF094E12
	s_cbranch_scc1 1053                                        // 00000000BE60: BF85041D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26d8>
	s_setprio 0                                                // 00000000BE64: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000BE68: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000BE6C: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000BE70: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000BE74: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000BE78: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000BE7C: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000BE80: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000BE84: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000BE88: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000BE8C: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000BE90: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000BE94: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000BE98: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000BE9C: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000BEA0: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000BEA4: 7EBE415F
	v_mov_b32_e32 v80, v179                                    // 00000000BEA8: 7EA003B3
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000BEAC: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000BEB4: D2A24050 0002A752
	v_mov_b32_e32 v81, v179                                    // 00000000BEBC: 7EA203B3
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000BEC0: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000BEC8: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000BED0: 7E804140
	v_mov_b32_e32 v82, v179                                    // 00000000BED4: 7EA403B3
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000BED8: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000BEE0: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000BEE4: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000BEEC: 7E844142
	v_mov_b32_e32 v83, v179                                    // 00000000BEF0: 7EA603B3
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000BEF4: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000BEFC: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000BF00: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000BF08: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000BF0C: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000BF10: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000BF14: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000BF18: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000BF1C: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000BF20: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000BF24: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000BF28: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000BF2C: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000BF30: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000BF34: 7E9E414F
	v_mov_b32_e32 v84, v179                                    // 00000000BF38: 7EA803B3
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000BF3C: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000BF44: D2A24054 00028742
	v_mov_b32_e32 v85, v179                                    // 00000000BF4C: 7EAA03B3
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000BF50: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000BF58: D2A24055 00028F46
	v_mov_b32_e32 v86, v179                                    // 00000000BF60: 7EAC03B3
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000BF64: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000BF6C: D2A24056 0002974A
	v_mov_b32_e32 v87, v179                                    // 00000000BF74: 7EAE03B3
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000BF78: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000BF80: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161 offset:32768                   // 00000000BF88: D9FE8000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:32784                   // 00000000BF90: D9FE8010 600000A1
	ds_read_b128 v[112:115], v161 offset:40960                 // 00000000BF98: D9FEA000 700000A1
	ds_read_b128 v[116:119], v161 offset:40976                 // 00000000BFA0: D9FEA010 740000A1
	ds_read_b128 v[134:137], v162 offset:32768                 // 00000000BFA8: D9FE8000 860000A2
	ds_read_b128 v[138:141], v162 offset:32784                 // 00000000BFB0: D9FE8010 8A0000A2
	ds_read_b128 v[206:209], v162 offset:40960                 // 00000000BFB8: D9FEA000 CE0000A2
	ds_read_b128 v[210:213], v162 offset:40976                 // 00000000BFC0: D9FEA010 D20000A2
	s_barrier                                                  // 00000000BFC8: BF8A0000
	s_setprio 1                                                // 00000000BFCC: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000BFD0: D3AD0058 0202A17E
	ds_read_b128 v[214:217], v163 offset:32768                 // 00000000BFD8: D9FE8000 D60000A3
	ds_read_b128 v[218:221], v163 offset:32784                 // 00000000BFE0: D9FE8010 DA0000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000BFE8: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000BFEC: D3AE0040 02036D5C
	ds_read_b128 v[222:225], v163 offset:40960                 // 00000000BFF4: D9FEA000 DE0000A3
	ds_read_b128 v[226:229], v163 offset:40976                 // 00000000BFFC: D9FEA010 E20000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[112:119], v[182:189], 0// 00000000C004: D3AE005E 02036D70
	ds_read_b64_tr_b8 v[112:113], v174                         // 00000000C00C: D9C40000 700000AE
	ds_read_b64_tr_b8 v[114:115], v174 offset:1024             // 00000000C014: D9C40400 720000AE
	ds_read_b64_tr_b8 v[116:117], v174 offset:2048             // 00000000C01C: D9C40800 740000AE
	ds_read_b64_tr_b8 v[118:119], v174 offset:3072             // 00000000C024: D9C40C00 760000AE
	s_min_u32 s18, s20, s84                                    // 00000000C02C: 83925414
	s_add_u32 m0, s72, s92                                     // 00000000C030: 807C5C48
	s_nop 0                                                    // 00000000C034: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000C038: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v179                            // 00000000C040: 24B96697
	v_fma_f32 v178, v88, v92, v178                             // 00000000C044: D1CB00B2 06CAB958
	s_waitcnt lgkmcnt(8)                                       // 00000000C04C: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[134:141], v[190:197], v[64:79]// 00000000C050: D3AE0040 05037D86
	ds_read_b64_tr_b8 v[134:135], v174 offset:256              // 00000000C058: D9C40100 860000AE
	ds_read_b64_tr_b8 v[136:137], v174 offset:1280             // 00000000C060: D9C40500 880000AE
	ds_read_b64_tr_b8 v[138:139], v174 offset:2304             // 00000000C068: D9C40900 8A0000AE
	ds_read_b64_tr_b8 v[140:141], v174 offset:3328             // 00000000C070: D9C40D00 8C0000AE
	s_add_u32 m0, s72, s93                                     // 00000000C078: 807C5D48
	s_nop 0                                                    // 00000000C07C: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000C080: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[206:213], v[190:197], v[94:109]// 00000000C088: D3AE005E 057B7DCE
	s_min_u32 s18, s17, s87                                    // 00000000C090: 83925711
	s_add_u32 m0, s72, s82                                     // 00000000C094: 807C5248
	s_nop 0                                                    // 00000000C098: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000C09C: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000C0A4: 80140914
	s_add_u32 s17, s17, s99                                    // 00000000C0A8: 80116311
	s_waitcnt lgkmcnt(8)                                       // 00000000C0AC: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[214:221], v[198:205], v[64:79]// 00000000C0B0: D3AE0040 05038DD6
	ds_read_b64_tr_b8 v[206:207], v174 offset:512              // 00000000C0B8: D9C40200 CE0000AE
	ds_read_b64_tr_b8 v[208:209], v174 offset:1536             // 00000000C0C0: D9C40600 D00000AE
	ds_read_b64_tr_b8 v[210:211], v174 offset:2560             // 00000000C0C8: D9C40A00 D20000AE
	ds_read_b64_tr_b8 v[212:213], v174 offset:3584             // 00000000C0D0: D9C40E00 D40000AE
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[222:229], v[198:205], v[94:109]// 00000000C0D8: D3AE005E 057B8DDE
	s_nop 3                                                    // 00000000C0E0: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000C0E4: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000C0E8: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000C0F0: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000C0F8: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000C100: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000C108: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000C110: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000C118: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000C120: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[112:119], v[80:87], v[48:63], v170, v179 op_sel_hi:[0,0,0]// 00000000C124: D3AC0000 000367AA D3AE0830 04C2A170
	ds_read_b64_tr_b8 v[112:113], v174 offset:768              // 00000000C134: D9C40300 700000AE
	ds_read_b64_tr_b8 v[114:115], v174 offset:1792             // 00000000C13C: D9C40700 720000AE
	ds_read_b64_tr_b8 v[116:117], v174 offset:2816             // 00000000C144: D9C40B00 740000AE
	ds_read_b64_tr_b8 v[118:119], v174 offset:3840             // 00000000C14C: D9C40F00 760000AE
	v_max_f32_e32 v89, v94, v95                                // 00000000C154: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000C158: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000C160: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000C168: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000C170: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000C178: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000C180: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000C188: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[80:87], v[32:47], v170, v179 op_sel_hi:[0,0,0]// 00000000C190: D3AC0000 000367AA D3AE0820 0482A186
	v_max_f32_e32 v88, v88, v89                                // 00000000C1A0: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000C1A4: 7EB20358
	s_nop 1                                                    // 00000000C1A8: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000C1AC: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000C1B0: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000C1B4: 0AB2B18E
	v_max_f32_e32 v89, v111, v89                               // 00000000C1B8: 16B2B36F
	v_sub_f32_e32 v90, v89, v111                               // 00000000C1BC: 04B4DF59
	v_cmp_lt_f32_e32 vcc, s91, v90                             // 00000000C1C0: 7C82B45B
	s_waitcnt lgkmcnt(0)                                       // 00000000C1C4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[206:213], v[80:87], v[16:31], v170, v179 op_sel_hi:[0,0,0]// 00000000C1C8: D3AC0000 000367AA D3AE0810 0442A1CE
	s_cmp_lg_u64 vcc, 0                                        // 00000000C1D8: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000C1DC: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000C1E0: 85158081
	v_cndmask_b32_e64 v177, v111, v89, s[18:19]                // 00000000C1E4: D10000B1 004AB36F
	v_fma_f32 v88, v88, v142, -v177                            // 00000000C1EC: D1CB0058 86C71D58
	v_floor_f32_e32 v88, v88                                   // 00000000C1F4: 7EB03F58
	v_med3_f32 v88, v88, s89, 0                                // 00000000C1F8: D1D60058 0200B358
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000C200: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[112:119], v[80:87], v[0:15], v170, v179 op_sel_hi:[0,0,0]// 00000000C204: D3AC0000 000367AA D3AE0800 0402A170
	v_add_u32_e32 v179, 0x7f, v89                              // 00000000C214: 6966B2FF 0000007F
	v_add_f32_e32 v80, v177, v88                               // 00000000C21C: 02A0B1B1
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000C220: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000C228: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C22C: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C234: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C23C: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C244: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C24C: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C254: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C25C: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C264: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C26C: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C274: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C27C: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C284: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C28C: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C294: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C29C: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C2A4: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000C2AC: BF068015
	s_cbranch_scc1 68                                          // 00000000C2B0: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1bc4>
	v_sub_f32_e32 v96, v111, v177                              // 00000000C2B4: 04C1636F
	v_exp_f32_e32 v96, v96                                     // 00000000C2B8: 7EC04160
	s_nop 0                                                    // 00000000C2BC: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000C2C0: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000C2C8: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000C2D0: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000C2D8: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000C2E0: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000C2E8: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000C2F0: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000C2F8: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000C300: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000C308: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000C310: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000C318: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000C320: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000C328: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000C330: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000C338: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000C340: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000C348: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000C350: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000C358: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000C360: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000C368: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000C370: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000C378: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000C380: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000C388: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000C390: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000C398: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000C3A0: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000C3A8: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000C3B0: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000C3B8: D3B14000 0802C100
	v_mul_f32_e32 v178, v178, v96                              // 00000000C3C0: 0B64C1B2
	s_waitcnt vmcnt(3)                                         // 00000000C3C4: BF8C0F73
	s_barrier                                                  // 00000000C3C8: BF8A0000
	s_add_u32 s79, s79, 1                                      // 00000000C3CC: 804F814F
	s_add_u32 s18, s79, 1                                      // 00000000C3D0: 8012814F
	s_cmp_ge_u32 s18, s78                                      // 00000000C3D4: BF094E12
	s_cbranch_scc1 699                                         // 00000000C3D8: BF8502BB <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26c8>
	s_setprio 0                                                // 00000000C3DC: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000C3E0: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000C3E4: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000C3E8: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000C3EC: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000C3F0: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000C3F4: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000C3F8: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000C3FC: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000C400: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000C404: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000C408: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000C40C: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000C410: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000C414: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000C418: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000C41C: 7EBE415F
	v_mov_b32_e32 v80, v179                                    // 00000000C420: 7EA003B3
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000C424: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000C42C: D2A24050 0002A752
	v_mov_b32_e32 v81, v179                                    // 00000000C434: 7EA203B3
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000C438: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000C440: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000C448: 7E804140
	v_mov_b32_e32 v82, v179                                    // 00000000C44C: 7EA403B3
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000C450: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000C458: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000C45C: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000C464: 7E844142
	v_mov_b32_e32 v83, v179                                    // 00000000C468: 7EA603B3
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000C46C: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000C474: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000C478: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000C480: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000C484: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000C488: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000C48C: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000C490: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000C494: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000C498: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000C49C: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000C4A0: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000C4A4: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000C4A8: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000C4AC: 7E9E414F
	v_mov_b32_e32 v84, v179                                    // 00000000C4B0: 7EA803B3
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000C4B4: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000C4BC: D2A24054 00028742
	v_mov_b32_e32 v85, v179                                    // 00000000C4C4: 7EAA03B3
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000C4C8: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000C4D0: D2A24055 00028F46
	v_mov_b32_e32 v86, v179                                    // 00000000C4D8: 7EAC03B3
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000C4DC: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000C4E4: D2A24056 0002974A
	v_mov_b32_e32 v87, v179                                    // 00000000C4EC: 7EAE03B3
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000C4F0: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000C4F8: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161 offset:49152                   // 00000000C500: D9FEC000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:49168                   // 00000000C508: D9FEC010 600000A1
	ds_read_b128 v[110:113], v161 offset:57344                 // 00000000C510: D9FEE000 6E0000A1
	ds_read_b128 v[114:117], v161 offset:57360                 // 00000000C518: D9FEE010 720000A1
	ds_read_b128 v[118:121], v162 offset:49152                 // 00000000C520: D9FEC000 760000A2
	ds_read_b128 v[122:125], v162 offset:49168                 // 00000000C528: D9FEC010 7A0000A2
	ds_read_b128 v[134:137], v162 offset:57344                 // 00000000C530: D9FEE000 860000A2
	ds_read_b128 v[138:141], v162 offset:57360                 // 00000000C538: D9FEE010 8A0000A2
	s_barrier                                                  // 00000000C540: BF8A0000
	s_setprio 1                                                // 00000000C544: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000C548: D3AD0058 0202A17E
	ds_read_b128 v[206:209], v163 offset:49152                 // 00000000C550: D9FEC000 CE0000A3
	ds_read_b128 v[210:213], v163 offset:49168                 // 00000000C558: D9FEC010 D20000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000C560: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000C564: D3AE0040 02036D5C
	ds_read_b128 v[214:217], v163 offset:57344                 // 00000000C56C: D9FEE000 D60000A3
	ds_read_b128 v[218:221], v163 offset:57360                 // 00000000C574: D9FEE010 DA0000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[110:117], v[182:189], 0// 00000000C57C: D3AE005E 02036D6E
	ds_read_b64_tr_b8 v[110:111], v175                         // 00000000C584: D9C40000 6E0000AF
	ds_read_b64_tr_b8 v[112:113], v175 offset:1024             // 00000000C58C: D9C40400 700000AF
	ds_read_b64_tr_b8 v[114:115], v175 offset:2048             // 00000000C594: D9C40800 720000AF
	ds_read_b64_tr_b8 v[116:117], v175 offset:3072             // 00000000C59C: D9C40C00 740000AF
	s_min_u32 s18, s20, s84                                    // 00000000C5A4: 83925414
	s_add_u32 m0, s72, s94                                     // 00000000C5A8: 807C5E48
	s_nop 0                                                    // 00000000C5AC: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000C5B0: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v179                            // 00000000C5B8: 24B96697
	v_fma_f32 v178, v88, v92, v178                             // 00000000C5BC: D1CB00B2 06CAB958
	s_waitcnt lgkmcnt(8)                                       // 00000000C5C4: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[118:125], v[190:197], v[64:79]// 00000000C5C8: D3AE0040 05037D76
	ds_read_b64_tr_b8 v[118:119], v175 offset:256              // 00000000C5D0: D9C40100 760000AF
	ds_read_b64_tr_b8 v[120:121], v175 offset:1280             // 00000000C5D8: D9C40500 780000AF
	ds_read_b64_tr_b8 v[122:123], v175 offset:2304             // 00000000C5E0: D9C40900 7A0000AF
	ds_read_b64_tr_b8 v[124:125], v175 offset:3328             // 00000000C5E8: D9C40D00 7C0000AF
	s_add_u32 m0, s72, s95                                     // 00000000C5F0: 807C5F48
	s_nop 0                                                    // 00000000C5F4: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000C5F8: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[134:141], v[190:197], v[94:109]// 00000000C600: D3AE005E 057B7D86
	s_min_u32 s18, s17, s87                                    // 00000000C608: 83925711
	s_add_u32 m0, s72, s48                                     // 00000000C60C: 807C3048
	s_nop 0                                                    // 00000000C610: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000C614: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000C61C: 80140914
	s_add_u32 s17, s17, s99                                    // 00000000C620: 80116311
	s_waitcnt lgkmcnt(8)                                       // 00000000C624: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[206:213], v[198:205], v[64:79]// 00000000C628: D3AE0040 05038DCE
	ds_read_b64_tr_b8 v[134:135], v175 offset:512              // 00000000C630: D9C40200 860000AF
	ds_read_b64_tr_b8 v[136:137], v175 offset:1536             // 00000000C638: D9C40600 880000AF
	ds_read_b64_tr_b8 v[138:139], v175 offset:2560             // 00000000C640: D9C40A00 8A0000AF
	ds_read_b64_tr_b8 v[140:141], v175 offset:3584             // 00000000C648: D9C40E00 8C0000AF
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[214:221], v[198:205], v[94:109]// 00000000C650: D3AE005E 057B8DD6
	s_nop 3                                                    // 00000000C658: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000C65C: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000C660: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000C668: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000C670: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000C678: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000C680: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000C688: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000C690: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000C698: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[110:117], v[80:87], v[48:63], v170, v179 op_sel_hi:[0,0,0]// 00000000C69C: D3AC0000 000367AA D3AE0830 04C2A16E
	ds_read_b64_tr_b8 v[206:207], v175 offset:768              // 00000000C6AC: D9C40300 CE0000AF
	ds_read_b64_tr_b8 v[208:209], v175 offset:1792             // 00000000C6B4: D9C40700 D00000AF
	ds_read_b64_tr_b8 v[210:211], v175 offset:2816             // 00000000C6BC: D9C40B00 D20000AF
	ds_read_b64_tr_b8 v[212:213], v175 offset:3840             // 00000000C6C4: D9C40F00 D40000AF
	v_max_f32_e32 v89, v94, v95                                // 00000000C6CC: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000C6D0: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000C6D8: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000C6E0: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000C6E8: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000C6F0: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000C6F8: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000C700: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[118:125], v[80:87], v[32:47], v170, v179 op_sel_hi:[0,0,0]// 00000000C708: D3AC0000 000367AA D3AE0820 0482A176
	v_max_f32_e32 v88, v88, v89                                // 00000000C718: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000C71C: 7EB20358
	s_nop 1                                                    // 00000000C720: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000C724: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000C728: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000C72C: 0AB2B18E
	v_max_f32_e32 v89, v177, v89                               // 00000000C730: 16B2B3B1
	v_sub_f32_e32 v90, v89, v177                               // 00000000C734: 04B56359
	v_cmp_lt_f32_e32 vcc, s91, v90                             // 00000000C738: 7C82B45B
	s_waitcnt lgkmcnt(0)                                       // 00000000C73C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[134:141], v[80:87], v[16:31], v170, v179 op_sel_hi:[0,0,0]// 00000000C740: D3AC0000 000367AA D3AE0810 0442A186
	s_cmp_lg_u64 vcc, 0                                        // 00000000C750: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000C754: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000C758: 85158081
	v_cndmask_b32_e64 v111, v177, v89, s[18:19]                // 00000000C75C: D100006F 004AB3B1
	v_fma_f32 v88, v88, v142, -v111                            // 00000000C764: D1CB0058 85BF1D58
	v_floor_f32_e32 v88, v88                                   // 00000000C76C: 7EB03F58
	v_med3_f32 v88, v88, s89, 0                                // 00000000C770: D1D60058 0200B358
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000C778: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[206:213], v[80:87], v[0:15], v170, v179 op_sel_hi:[0,0,0]// 00000000C77C: D3AC0000 000367AA D3AE0800 0402A1CE
	v_add_u32_e32 v179, 0x7f, v89                              // 00000000C78C: 6966B2FF 0000007F
	v_add_f32_e32 v80, v111, v88                               // 00000000C794: 02A0B16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000C798: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000C7A0: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C7A4: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C7AC: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7B4: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7BC: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7C4: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7CC: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7D4: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7DC: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7E4: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7EC: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7F4: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7FC: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C804: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C80C: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C814: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C81C: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000C824: BF068015
	s_cbranch_scc1 68                                          // 00000000C828: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x213c>
	v_sub_f32_e32 v96, v177, v111                              // 00000000C82C: 04C0DFB1
	v_exp_f32_e32 v96, v96                                     // 00000000C830: 7EC04160
	s_nop 0                                                    // 00000000C834: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000C838: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000C840: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000C848: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000C850: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000C858: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000C860: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000C868: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000C870: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000C878: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000C880: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000C888: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000C890: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000C898: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000C8A0: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000C8A8: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000C8B0: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000C8B8: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000C8C0: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000C8C8: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000C8D0: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000C8D8: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000C8E0: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000C8E8: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000C8F0: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000C8F8: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000C900: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000C908: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000C910: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000C918: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000C920: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000C928: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000C930: D3B14000 0802C100
	v_mul_f32_e32 v178, v178, v96                              // 00000000C938: 0B64C1B2
	s_waitcnt vmcnt(3)                                         // 00000000C93C: BF8C0F73
	s_barrier                                                  // 00000000C940: BF8A0000
	s_add_u32 s79, s79, 1                                      // 00000000C944: 804F814F
	s_add_u32 s18, s79, 1                                      // 00000000C948: 8012814F
	s_cmp_ge_u32 s18, s78                                      // 00000000C94C: BF094E12
	s_cbranch_scc1 348                                         // 00000000C950: BF85015C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26c4>
	s_setprio 0                                                // 00000000C954: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000C958: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000C95C: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000C960: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000C964: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000C968: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000C96C: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000C970: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000C974: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000C978: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000C97C: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000C980: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000C984: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000C988: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000C98C: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000C990: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000C994: 7EBE415F
	v_mov_b32_e32 v80, v179                                    // 00000000C998: 7EA003B3
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000C99C: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000C9A4: D2A24050 0002A752
	v_mov_b32_e32 v81, v179                                    // 00000000C9AC: 7EA203B3
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000C9B0: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000C9B8: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000C9C0: 7E804140
	v_mov_b32_e32 v82, v179                                    // 00000000C9C4: 7EA403B3
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000C9C8: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000C9D0: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000C9D4: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000C9DC: 7E844142
	v_mov_b32_e32 v83, v179                                    // 00000000C9E0: 7EA603B3
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000C9E4: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000C9EC: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000C9F0: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000C9F8: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000C9FC: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000CA00: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000CA04: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000CA08: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000CA0C: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000CA10: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000CA14: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000CA18: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000CA1C: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000CA20: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000CA24: 7E9E414F
	v_mov_b32_e32 v84, v179                                    // 00000000CA28: 7EA803B3
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000CA2C: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000CA34: D2A24054 00028742
	v_mov_b32_e32 v85, v179                                    // 00000000CA3C: 7EAA03B3
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000CA40: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000CA48: D2A24055 00028F46
	v_mov_b32_e32 v86, v179                                    // 00000000CA50: 7EAC03B3
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000CA54: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000CA5C: D2A24056 0002974A
	v_mov_b32_e32 v87, v179                                    // 00000000CA64: 7EAE03B3
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000CA68: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000CA70: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161                                // 00000000CA78: D9FE0000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:16                      // 00000000CA80: D9FE0010 600000A1
	ds_read_b128 v[112:115], v161 offset:8192                  // 00000000CA88: D9FE2000 700000A1
	ds_read_b128 v[116:119], v161 offset:8208                  // 00000000CA90: D9FE2010 740000A1
	ds_read_b128 v[134:137], v162                              // 00000000CA98: D9FE0000 860000A2
	ds_read_b128 v[138:141], v162 offset:16                    // 00000000CAA0: D9FE0010 8A0000A2
	ds_read_b128 v[206:209], v162 offset:8192                  // 00000000CAA8: D9FE2000 CE0000A2
	ds_read_b128 v[210:213], v162 offset:8208                  // 00000000CAB0: D9FE2010 D20000A2
	s_barrier                                                  // 00000000CAB8: BF8A0000
	s_setprio 1                                                // 00000000CABC: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000CAC0: D3AD0058 0202A17E
	ds_read_b128 v[214:217], v163                              // 00000000CAC8: D9FE0000 D60000A3
	ds_read_b128 v[218:221], v163 offset:16                    // 00000000CAD0: D9FE0010 DA0000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000CAD8: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000CADC: D3AE0040 02036D5C
	ds_read_b128 v[222:225], v163 offset:8192                  // 00000000CAE4: D9FE2000 DE0000A3
	ds_read_b128 v[226:229], v163 offset:8208                  // 00000000CAEC: D9FE2010 E20000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[112:119], v[182:189], 0// 00000000CAF4: D3AE005E 02036D70
	ds_read_b64_tr_b8 v[112:113], v176                         // 00000000CAFC: D9C40000 700000B0
	ds_read_b64_tr_b8 v[114:115], v176 offset:1024             // 00000000CB04: D9C40400 720000B0
	ds_read_b64_tr_b8 v[116:117], v176 offset:2048             // 00000000CB0C: D9C40800 740000B0
	ds_read_b64_tr_b8 v[118:119], v176 offset:3072             // 00000000CB14: D9C40C00 760000B0
	s_min_u32 s18, s20, s84                                    // 00000000CB1C: 83925414
	s_add_u32 m0, s72, s96                                     // 00000000CB20: 807C6048
	s_nop 0                                                    // 00000000CB24: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000CB28: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v179                            // 00000000CB30: 24B96697
	v_fma_f32 v178, v88, v92, v178                             // 00000000CB34: D1CB00B2 06CAB958
	s_waitcnt lgkmcnt(8)                                       // 00000000CB3C: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[134:141], v[190:197], v[64:79]// 00000000CB40: D3AE0040 05037D86
	ds_read_b64_tr_b8 v[134:135], v176 offset:256              // 00000000CB48: D9C40100 860000B0
	ds_read_b64_tr_b8 v[136:137], v176 offset:1280             // 00000000CB50: D9C40500 880000B0
	ds_read_b64_tr_b8 v[138:139], v176 offset:2304             // 00000000CB58: D9C40900 8A0000B0
	ds_read_b64_tr_b8 v[140:141], v176 offset:3328             // 00000000CB60: D9C40D00 8C0000B0
	s_add_u32 m0, s72, s97                                     // 00000000CB68: 807C6148
	s_nop 0                                                    // 00000000CB6C: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000CB70: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[206:213], v[190:197], v[94:109]// 00000000CB78: D3AE005E 057B7DCE
	s_min_u32 s18, s17, s87                                    // 00000000CB80: 83925711
	s_add_u32 m0, s72, s83                                     // 00000000CB84: 807C5348
	s_nop 0                                                    // 00000000CB88: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000CB8C: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000CB94: 80140914
	s_add_u32 s17, s17, s99                                    // 00000000CB98: 80116311
	s_waitcnt lgkmcnt(8)                                       // 00000000CB9C: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[214:221], v[198:205], v[64:79]// 00000000CBA0: D3AE0040 05038DD6
	ds_read_b64_tr_b8 v[206:207], v176 offset:512              // 00000000CBA8: D9C40200 CE0000B0
	ds_read_b64_tr_b8 v[208:209], v176 offset:1536             // 00000000CBB0: D9C40600 D00000B0
	ds_read_b64_tr_b8 v[210:211], v176 offset:2560             // 00000000CBB8: D9C40A00 D20000B0
	ds_read_b64_tr_b8 v[212:213], v176 offset:3584             // 00000000CBC0: D9C40E00 D40000B0
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[222:229], v[198:205], v[94:109]// 00000000CBC8: D3AE005E 057B8DDE
	s_nop 3                                                    // 00000000CBD0: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000CBD4: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000CBD8: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000CBE0: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000CBE8: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000CBF0: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000CBF8: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000CC00: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000CC08: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000CC10: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[112:119], v[80:87], v[48:63], v170, v179 op_sel_hi:[0,0,0]// 00000000CC14: D3AC0000 000367AA D3AE0830 04C2A170
	ds_read_b64_tr_b8 v[112:113], v176 offset:768              // 00000000CC24: D9C40300 700000B0
	ds_read_b64_tr_b8 v[114:115], v176 offset:1792             // 00000000CC2C: D9C40700 720000B0
	ds_read_b64_tr_b8 v[116:117], v176 offset:2816             // 00000000CC34: D9C40B00 740000B0
	ds_read_b64_tr_b8 v[118:119], v176 offset:3840             // 00000000CC3C: D9C40F00 760000B0
	v_max_f32_e32 v89, v94, v95                                // 00000000CC44: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000CC48: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000CC50: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000CC58: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000CC60: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000CC68: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000CC70: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000CC78: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[80:87], v[32:47], v170, v179 op_sel_hi:[0,0,0]// 00000000CC80: D3AC0000 000367AA D3AE0820 0482A186
	v_max_f32_e32 v88, v88, v89                                // 00000000CC90: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000CC94: 7EB20358
	s_nop 1                                                    // 00000000CC98: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000CC9C: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000CCA0: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000CCA4: 0AB2B18E
	v_max_f32_e32 v89, v111, v89                               // 00000000CCA8: 16B2B36F
	v_sub_f32_e32 v90, v89, v111                               // 00000000CCAC: 04B4DF59
	v_cmp_lt_f32_e32 vcc, s91, v90                             // 00000000CCB0: 7C82B45B
	s_waitcnt lgkmcnt(0)                                       // 00000000CCB4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[206:213], v[80:87], v[16:31], v170, v179 op_sel_hi:[0,0,0]// 00000000CCB8: D3AC0000 000367AA D3AE0810 0442A1CE
	s_cmp_lg_u64 vcc, 0                                        // 00000000CCC8: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000CCCC: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000CCD0: 85158081
	v_cndmask_b32_e64 v177, v111, v89, s[18:19]                // 00000000CCD4: D10000B1 004AB36F
	v_fma_f32 v88, v88, v142, -v177                            // 00000000CCDC: D1CB0058 86C71D58
	v_floor_f32_e32 v88, v88                                   // 00000000CCE4: 7EB03F58
	v_med3_f32 v88, v88, s89, 0                                // 00000000CCE8: D1D60058 0200B358
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000CCF0: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[112:119], v[80:87], v[0:15], v170, v179 op_sel_hi:[0,0,0]// 00000000CCF4: D3AC0000 000367AA D3AE0800 0402A170
	v_add_u32_e32 v179, 0x7f, v89                              // 00000000CD04: 6966B2FF 0000007F
	v_add_f32_e32 v80, v177, v88                               // 00000000CD0C: 02A0B1B1
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000CD10: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000CD18: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000CD1C: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000CD24: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD2C: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD34: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD3C: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD44: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD4C: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD54: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD5C: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD64: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD6C: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD74: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD7C: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD84: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD8C: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD94: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000CD9C: BF068015
	s_cbranch_scc1 68                                          // 00000000CDA0: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26b4>
	v_sub_f32_e32 v96, v111, v177                              // 00000000CDA4: 04C1636F
	v_exp_f32_e32 v96, v96                                     // 00000000CDA8: 7EC04160
	s_nop 0                                                    // 00000000CDAC: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000CDB0: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000CDB8: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000CDC0: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000CDC8: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000CDD0: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000CDD8: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000CDE0: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000CDE8: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000CDF0: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000CDF8: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000CE00: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000CE08: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000CE10: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000CE18: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000CE20: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000CE28: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000CE30: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000CE38: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000CE40: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000CE48: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000CE50: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000CE58: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000CE60: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000CE68: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000CE70: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000CE78: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000CE80: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000CE88: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000CE90: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000CE98: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000CEA0: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000CEA8: D3B14000 0802C100
	v_mul_f32_e32 v178, v178, v96                              // 00000000CEB0: 0B64C1B2
	s_waitcnt vmcnt(3)                                         // 00000000CEB4: BF8C0F73
	s_barrier                                                  // 00000000CEB8: BF8A0000
	s_add_u32 s79, s79, 1                                      // 00000000CEBC: 804F814F
	s_branch 64135                                             // 00000000CEC0: BF82FA87 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10e0>
