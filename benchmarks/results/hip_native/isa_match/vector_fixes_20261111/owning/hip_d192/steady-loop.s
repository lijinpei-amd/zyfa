	s_add_u32 s18, s78, 1                                      // 00000000B8D4: 8012814E
	s_cmp_ge_u32 s18, s77                                      // 00000000B8D8: BF094D12
	s_cbranch_scc1 1399                                        // 00000000B8DC: BF850577 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26bc>
	s_setprio 0                                                // 00000000B8E0: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000B8E4: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000B8E8: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000B8EC: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000B8F0: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000B8F4: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000B8F8: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000B8FC: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000B900: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000B904: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000B908: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000B90C: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000B910: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000B914: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000B918: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000B91C: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000B920: 7EBE415F
	v_mov_b32_e32 v80, v180                                    // 00000000B924: 7EA003B4
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000B928: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000B930: D2A24050 0002A752
	v_mov_b32_e32 v81, v180                                    // 00000000B938: 7EA203B4
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000B93C: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000B944: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000B94C: 7E804140
	v_mov_b32_e32 v82, v180                                    // 00000000B950: 7EA403B4
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000B954: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000B95C: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000B960: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000B968: 7E844142
	v_mov_b32_e32 v83, v180                                    // 00000000B96C: 7EA603B4
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000B970: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000B978: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000B97C: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000B984: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000B988: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000B98C: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000B990: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000B994: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000B998: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000B99C: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000B9A0: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000B9A4: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000B9A8: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000B9AC: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000B9B0: 7E9E414F
	v_mov_b32_e32 v84, v180                                    // 00000000B9B4: 7EA803B4
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000B9B8: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000B9C0: D2A24054 00028742
	v_mov_b32_e32 v85, v180                                    // 00000000B9C8: 7EAA03B4
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000B9CC: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000B9D4: D2A24055 00028F46
	v_mov_b32_e32 v86, v180                                    // 00000000B9DC: 7EAC03B4
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000B9E0: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000B9E8: D2A24056 0002974A
	v_mov_b32_e32 v87, v180                                    // 00000000B9F0: 7EAE03B4
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000B9F4: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000B9FC: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161 offset:16384                   // 00000000BA04: D9FE4000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:16400                   // 00000000BA0C: D9FE4010 600000A1
	ds_read_b128 v[110:113], v161 offset:24576                 // 00000000BA14: D9FE6000 6E0000A1
	ds_read_b128 v[114:117], v161 offset:24592                 // 00000000BA1C: D9FE6010 720000A1
	ds_read_b128 v[118:121], v162 offset:16384                 // 00000000BA24: D9FE4000 760000A2
	ds_read_b128 v[122:125], v162 offset:16400                 // 00000000BA2C: D9FE4010 7A0000A2
	ds_read_b128 v[134:137], v162 offset:24576                 // 00000000BA34: D9FE6000 860000A2
	ds_read_b128 v[138:141], v162 offset:24592                 // 00000000BA3C: D9FE6010 8A0000A2
	s_barrier                                                  // 00000000BA44: BF8A0000
	s_setprio 1                                                // 00000000BA48: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000BA4C: D3AD0058 0202A17E
	ds_read_b128 v[206:209], v163 offset:16384                 // 00000000BA54: D9FE4000 CE0000A3
	ds_read_b128 v[210:213], v163 offset:16400                 // 00000000BA5C: D9FE4010 D20000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000BA64: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000BA68: D3AE0040 02036D5C
	ds_read_b128 v[214:217], v163 offset:24576                 // 00000000BA70: D9FE6000 D60000A3
	ds_read_b128 v[218:221], v163 offset:24592                 // 00000000BA78: D9FE6010 DA0000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[110:117], v[182:189], 0// 00000000BA80: D3AE005E 02036D6E
	ds_read_b64_tr_b8 v[110:111], v174                         // 00000000BA88: D9C40000 6E0000AE
	ds_read_b64_tr_b8 v[112:113], v174 offset:1024             // 00000000BA90: D9C40400 700000AE
	ds_read_b64_tr_b8 v[114:115], v174 offset:2048             // 00000000BA98: D9C40800 720000AE
	ds_read_b64_tr_b8 v[116:117], v174 offset:3072             // 00000000BAA0: D9C40C00 740000AE
	s_min_u32 s18, s20, s84                                    // 00000000BAA8: 83925414
	s_add_u32 m0, s72, s16                                     // 00000000BAAC: 807C1048
	s_nop 0                                                    // 00000000BAB0: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000BAB4: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v180                            // 00000000BABC: 24B96897
	v_fma_f32 v179, v88, v92, v179                             // 00000000BAC0: D1CB00B3 06CEB958
	s_waitcnt lgkmcnt(8)                                       // 00000000BAC8: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[118:125], v[190:197], v[64:79]// 00000000BACC: D3AE0040 05037D76
	ds_read_b64_tr_b8 v[118:119], v174 offset:256              // 00000000BAD4: D9C40100 760000AE
	ds_read_b64_tr_b8 v[120:121], v174 offset:1280             // 00000000BADC: D9C40500 780000AE
	ds_read_b64_tr_b8 v[122:123], v174 offset:2304             // 00000000BAE4: D9C40900 7A0000AE
	ds_read_b64_tr_b8 v[124:125], v174 offset:3328             // 00000000BAEC: D9C40D00 7C0000AE
	s_add_u32 m0, s72, s90                                     // 00000000BAF4: 807C5A48
	s_nop 0                                                    // 00000000BAF8: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000BAFC: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[134:141], v[190:197], v[94:109]// 00000000BB04: D3AE005E 057B7D86
	s_min_u32 s18, s17, s87                                    // 00000000BB0C: 83925711
	s_add_u32 m0, s72, s88                                     // 00000000BB10: 807C5848
	s_nop 0                                                    // 00000000BB14: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000BB18: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000BB20: 80140914
	s_add_u32 s17, s17, s99                                    // 00000000BB24: 80116311
	s_waitcnt lgkmcnt(8)                                       // 00000000BB28: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[206:213], v[198:205], v[64:79]// 00000000BB2C: D3AE0040 05038DCE
	ds_read_b64_tr_b8 v[134:135], v174 offset:512              // 00000000BB34: D9C40200 860000AE
	ds_read_b64_tr_b8 v[136:137], v174 offset:1536             // 00000000BB3C: D9C40600 880000AE
	ds_read_b64_tr_b8 v[138:139], v174 offset:2560             // 00000000BB44: D9C40A00 8A0000AE
	ds_read_b64_tr_b8 v[140:141], v174 offset:3584             // 00000000BB4C: D9C40E00 8C0000AE
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[214:221], v[198:205], v[94:109]// 00000000BB54: D3AE005E 057B8DD6
	s_nop 3                                                    // 00000000BB5C: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000BB60: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000BB64: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000BB6C: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000BB74: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000BB7C: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000BB84: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000BB8C: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000BB94: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000BB9C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[110:117], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000BBA0: D3AC0000 000369AA D3AE0830 04C2A16E
	ds_read_b64_tr_b8 v[206:207], v174 offset:768              // 00000000BBB0: D9C40300 CE0000AE
	ds_read_b64_tr_b8 v[208:209], v174 offset:1792             // 00000000BBB8: D9C40700 D00000AE
	ds_read_b64_tr_b8 v[210:211], v174 offset:2816             // 00000000BBC0: D9C40B00 D20000AE
	ds_read_b64_tr_b8 v[212:213], v174 offset:3840             // 00000000BBC8: D9C40F00 D40000AE
	v_max_f32_e32 v89, v94, v95                                // 00000000BBD0: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000BBD4: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000BBDC: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000BBE4: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000BBEC: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000BBF4: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000BBFC: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000BC04: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[118:125], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000BC0C: D3AC0000 000369AA D3AE0820 0482A176
	v_max_f32_e32 v88, v88, v89                                // 00000000BC1C: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000BC20: 7EB20358
	s_nop 1                                                    // 00000000BC24: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000BC28: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000BC2C: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000BC30: 0AB2B18E
	v_max_f32_e32 v89, v178, v89                               // 00000000BC34: 16B2B3B2
	v_sub_f32_e32 v90, v89, v178                               // 00000000BC38: 04B56559
	v_cmp_lt_f32_e32 vcc, s91, v90                             // 00000000BC3C: 7C82B45B
	s_waitcnt lgkmcnt(0)                                       // 00000000BC40: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[134:141], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000BC44: D3AC0000 000369AA D3AE0810 0442A186
	s_cmp_lg_u64 vcc, 0                                        // 00000000BC54: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000BC58: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000BC5C: 85158081
	v_cndmask_b32_e64 v111, v178, v89, s[18:19]                // 00000000BC60: D100006F 004AB3B2
	v_fma_f32 v88, v88, v142, -v111                            // 00000000BC68: D1CB0058 85BF1D58
	v_floor_f32_e32 v88, v88                                   // 00000000BC70: 7EB03F58
	v_med3_f32 v88, v88, s89, 0                                // 00000000BC74: D1D60058 0200B358
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000BC7C: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[206:213], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000BC80: D3AC0000 000369AA D3AE0800 0402A1CE
	v_add_u32_e32 v180, 0x7f, v89                              // 00000000BC90: 6968B2FF 0000007F
	v_add_f32_e32 v80, v111, v88                               // 00000000BC98: 02A0B16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000BC9C: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000BCA4: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000BCA8: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000BCB0: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCB8: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCC0: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCC8: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCD0: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCD8: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCE0: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCE8: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCF0: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCF8: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BD00: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BD08: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BD10: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BD18: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BD20: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000BD28: BF068015
	s_cbranch_scc1 68                                          // 00000000BD2C: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1640>
	v_sub_f32_e32 v96, v178, v111                              // 00000000BD30: 04C0DFB2
	v_exp_f32_e32 v96, v96                                     // 00000000BD34: 7EC04160
	s_nop 0                                                    // 00000000BD38: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000BD3C: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000BD44: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000BD4C: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000BD54: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000BD5C: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000BD64: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000BD6C: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000BD74: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000BD7C: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000BD84: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000BD8C: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000BD94: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000BD9C: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000BDA4: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000BDAC: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000BDB4: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000BDBC: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000BDC4: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000BDCC: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000BDD4: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000BDDC: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000BDE4: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000BDEC: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000BDF4: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000BDFC: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000BE04: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000BE0C: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000BE14: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000BE1C: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000BE24: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000BE2C: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000BE34: D3B14000 0802C100
	v_mul_f32_e32 v179, v179, v96                              // 00000000BE3C: 0B66C1B3
	s_waitcnt vmcnt(3)                                         // 00000000BE40: BF8C0F73
	s_barrier                                                  // 00000000BE44: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000BE48: 804E814E
	s_add_u32 s18, s78, 1                                      // 00000000BE4C: 8012814E
	s_cmp_ge_u32 s18, s77                                      // 00000000BE50: BF094D12
	s_cbranch_scc1 1053                                        // 00000000BE54: BF85041D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26cc>
	s_setprio 0                                                // 00000000BE58: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000BE5C: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000BE60: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000BE64: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000BE68: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000BE6C: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000BE70: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000BE74: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000BE78: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000BE7C: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000BE80: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000BE84: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000BE88: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000BE8C: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000BE90: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000BE94: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000BE98: 7EBE415F
	v_mov_b32_e32 v80, v180                                    // 00000000BE9C: 7EA003B4
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000BEA0: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000BEA8: D2A24050 0002A752
	v_mov_b32_e32 v81, v180                                    // 00000000BEB0: 7EA203B4
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000BEB4: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000BEBC: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000BEC4: 7E804140
	v_mov_b32_e32 v82, v180                                    // 00000000BEC8: 7EA403B4
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000BECC: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000BED4: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000BED8: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000BEE0: 7E844142
	v_mov_b32_e32 v83, v180                                    // 00000000BEE4: 7EA603B4
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000BEE8: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000BEF0: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000BEF4: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000BEFC: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000BF00: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000BF04: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000BF08: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000BF0C: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000BF10: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000BF14: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000BF18: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000BF1C: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000BF20: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000BF24: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000BF28: 7E9E414F
	v_mov_b32_e32 v84, v180                                    // 00000000BF2C: 7EA803B4
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000BF30: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000BF38: D2A24054 00028742
	v_mov_b32_e32 v85, v180                                    // 00000000BF40: 7EAA03B4
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000BF44: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000BF4C: D2A24055 00028F46
	v_mov_b32_e32 v86, v180                                    // 00000000BF54: 7EAC03B4
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000BF58: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000BF60: D2A24056 0002974A
	v_mov_b32_e32 v87, v180                                    // 00000000BF68: 7EAE03B4
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000BF6C: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000BF74: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161 offset:32768                   // 00000000BF7C: D9FE8000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:32784                   // 00000000BF84: D9FE8010 600000A1
	ds_read_b128 v[112:115], v161 offset:40960                 // 00000000BF8C: D9FEA000 700000A1
	ds_read_b128 v[116:119], v161 offset:40976                 // 00000000BF94: D9FEA010 740000A1
	ds_read_b128 v[134:137], v162 offset:32768                 // 00000000BF9C: D9FE8000 860000A2
	ds_read_b128 v[138:141], v162 offset:32784                 // 00000000BFA4: D9FE8010 8A0000A2
	ds_read_b128 v[206:209], v162 offset:40960                 // 00000000BFAC: D9FEA000 CE0000A2
	ds_read_b128 v[210:213], v162 offset:40976                 // 00000000BFB4: D9FEA010 D20000A2
	s_barrier                                                  // 00000000BFBC: BF8A0000
	s_setprio 1                                                // 00000000BFC0: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000BFC4: D3AD0058 0202A17E
	ds_read_b128 v[214:217], v163 offset:32768                 // 00000000BFCC: D9FE8000 D60000A3
	ds_read_b128 v[218:221], v163 offset:32784                 // 00000000BFD4: D9FE8010 DA0000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000BFDC: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000BFE0: D3AE0040 02036D5C
	ds_read_b128 v[222:225], v163 offset:40960                 // 00000000BFE8: D9FEA000 DE0000A3
	ds_read_b128 v[226:229], v163 offset:40976                 // 00000000BFF0: D9FEA010 E20000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[112:119], v[182:189], 0// 00000000BFF8: D3AE005E 02036D70
	ds_read_b64_tr_b8 v[112:113], v175                         // 00000000C000: D9C40000 700000AF
	ds_read_b64_tr_b8 v[114:115], v175 offset:1024             // 00000000C008: D9C40400 720000AF
	ds_read_b64_tr_b8 v[116:117], v175 offset:2048             // 00000000C010: D9C40800 740000AF
	ds_read_b64_tr_b8 v[118:119], v175 offset:3072             // 00000000C018: D9C40C00 760000AF
	s_min_u32 s18, s20, s84                                    // 00000000C020: 83925414
	s_add_u32 m0, s72, s92                                     // 00000000C024: 807C5C48
	s_nop 0                                                    // 00000000C028: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000C02C: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v180                            // 00000000C034: 24B96897
	v_fma_f32 v179, v88, v92, v179                             // 00000000C038: D1CB00B3 06CEB958
	s_waitcnt lgkmcnt(8)                                       // 00000000C040: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[134:141], v[190:197], v[64:79]// 00000000C044: D3AE0040 05037D86
	ds_read_b64_tr_b8 v[134:135], v175 offset:256              // 00000000C04C: D9C40100 860000AF
	ds_read_b64_tr_b8 v[136:137], v175 offset:1280             // 00000000C054: D9C40500 880000AF
	ds_read_b64_tr_b8 v[138:139], v175 offset:2304             // 00000000C05C: D9C40900 8A0000AF
	ds_read_b64_tr_b8 v[140:141], v175 offset:3328             // 00000000C064: D9C40D00 8C0000AF
	s_add_u32 m0, s72, s93                                     // 00000000C06C: 807C5D48
	s_nop 0                                                    // 00000000C070: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000C074: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[206:213], v[190:197], v[94:109]// 00000000C07C: D3AE005E 057B7DCE
	s_min_u32 s18, s17, s87                                    // 00000000C084: 83925711
	s_add_u32 m0, s72, s81                                     // 00000000C088: 807C5148
	s_nop 0                                                    // 00000000C08C: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000C090: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000C098: 80140914
	s_add_u32 s17, s17, s99                                    // 00000000C09C: 80116311
	s_waitcnt lgkmcnt(8)                                       // 00000000C0A0: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[214:221], v[198:205], v[64:79]// 00000000C0A4: D3AE0040 05038DD6
	ds_read_b64_tr_b8 v[206:207], v175 offset:512              // 00000000C0AC: D9C40200 CE0000AF
	ds_read_b64_tr_b8 v[208:209], v175 offset:1536             // 00000000C0B4: D9C40600 D00000AF
	ds_read_b64_tr_b8 v[210:211], v175 offset:2560             // 00000000C0BC: D9C40A00 D20000AF
	ds_read_b64_tr_b8 v[212:213], v175 offset:3584             // 00000000C0C4: D9C40E00 D40000AF
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[222:229], v[198:205], v[94:109]// 00000000C0CC: D3AE005E 057B8DDE
	s_nop 3                                                    // 00000000C0D4: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000C0D8: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000C0DC: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000C0E4: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000C0EC: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000C0F4: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000C0FC: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000C104: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000C10C: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000C114: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[112:119], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000C118: D3AC0000 000369AA D3AE0830 04C2A170
	ds_read_b64_tr_b8 v[112:113], v175 offset:768              // 00000000C128: D9C40300 700000AF
	ds_read_b64_tr_b8 v[114:115], v175 offset:1792             // 00000000C130: D9C40700 720000AF
	ds_read_b64_tr_b8 v[116:117], v175 offset:2816             // 00000000C138: D9C40B00 740000AF
	ds_read_b64_tr_b8 v[118:119], v175 offset:3840             // 00000000C140: D9C40F00 760000AF
	v_max_f32_e32 v89, v94, v95                                // 00000000C148: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000C14C: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000C154: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000C15C: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000C164: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000C16C: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000C174: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000C17C: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000C184: D3AC0000 000369AA D3AE0820 0482A186
	v_max_f32_e32 v88, v88, v89                                // 00000000C194: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000C198: 7EB20358
	s_nop 1                                                    // 00000000C19C: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000C1A0: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000C1A4: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000C1A8: 0AB2B18E
	v_max_f32_e32 v89, v111, v89                               // 00000000C1AC: 16B2B36F
	v_sub_f32_e32 v90, v89, v111                               // 00000000C1B0: 04B4DF59
	v_cmp_lt_f32_e32 vcc, s91, v90                             // 00000000C1B4: 7C82B45B
	s_waitcnt lgkmcnt(0)                                       // 00000000C1B8: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[206:213], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000C1BC: D3AC0000 000369AA D3AE0810 0442A1CE
	s_cmp_lg_u64 vcc, 0                                        // 00000000C1CC: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000C1D0: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000C1D4: 85158081
	v_cndmask_b32_e64 v178, v111, v89, s[18:19]                // 00000000C1D8: D10000B2 004AB36F
	v_fma_f32 v88, v88, v142, -v178                            // 00000000C1E0: D1CB0058 86CB1D58
	v_floor_f32_e32 v88, v88                                   // 00000000C1E8: 7EB03F58
	v_med3_f32 v88, v88, s89, 0                                // 00000000C1EC: D1D60058 0200B358
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000C1F4: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[112:119], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000C1F8: D3AC0000 000369AA D3AE0800 0402A170
	v_add_u32_e32 v180, 0x7f, v89                              // 00000000C208: 6968B2FF 0000007F
	v_add_f32_e32 v80, v178, v88                               // 00000000C210: 02A0B1B2
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000C214: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000C21C: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C220: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C228: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C230: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C238: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C240: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C248: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C250: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C258: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C260: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C268: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C270: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C278: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C280: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C288: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C290: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C298: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000C2A0: BF068015
	s_cbranch_scc1 68                                          // 00000000C2A4: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1bb8>
	v_sub_f32_e32 v96, v111, v178                              // 00000000C2A8: 04C1656F
	v_exp_f32_e32 v96, v96                                     // 00000000C2AC: 7EC04160
	s_nop 0                                                    // 00000000C2B0: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000C2B4: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000C2BC: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000C2C4: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000C2CC: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000C2D4: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000C2DC: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000C2E4: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000C2EC: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000C2F4: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000C2FC: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000C304: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000C30C: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000C314: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000C31C: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000C324: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000C32C: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000C334: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000C33C: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000C344: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000C34C: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000C354: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000C35C: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000C364: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000C36C: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000C374: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000C37C: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000C384: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000C38C: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000C394: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000C39C: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000C3A4: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000C3AC: D3B14000 0802C100
	v_mul_f32_e32 v179, v179, v96                              // 00000000C3B4: 0B66C1B3
	s_waitcnt vmcnt(3)                                         // 00000000C3B8: BF8C0F73
	s_barrier                                                  // 00000000C3BC: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000C3C0: 804E814E
	s_add_u32 s18, s78, 1                                      // 00000000C3C4: 8012814E
	s_cmp_ge_u32 s18, s77                                      // 00000000C3C8: BF094D12
	s_cbranch_scc1 699                                         // 00000000C3CC: BF8502BB <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26bc>
	s_setprio 0                                                // 00000000C3D0: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000C3D4: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000C3D8: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000C3DC: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000C3E0: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000C3E4: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000C3E8: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000C3EC: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000C3F0: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000C3F4: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000C3F8: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000C3FC: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000C400: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000C404: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000C408: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000C40C: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000C410: 7EBE415F
	v_mov_b32_e32 v80, v180                                    // 00000000C414: 7EA003B4
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000C418: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000C420: D2A24050 0002A752
	v_mov_b32_e32 v81, v180                                    // 00000000C428: 7EA203B4
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000C42C: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000C434: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000C43C: 7E804140
	v_mov_b32_e32 v82, v180                                    // 00000000C440: 7EA403B4
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000C444: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000C44C: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000C450: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000C458: 7E844142
	v_mov_b32_e32 v83, v180                                    // 00000000C45C: 7EA603B4
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000C460: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000C468: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000C46C: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000C474: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000C478: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000C47C: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000C480: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000C484: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000C488: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000C48C: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000C490: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000C494: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000C498: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000C49C: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000C4A0: 7E9E414F
	v_mov_b32_e32 v84, v180                                    // 00000000C4A4: 7EA803B4
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000C4A8: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000C4B0: D2A24054 00028742
	v_mov_b32_e32 v85, v180                                    // 00000000C4B8: 7EAA03B4
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000C4BC: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000C4C4: D2A24055 00028F46
	v_mov_b32_e32 v86, v180                                    // 00000000C4CC: 7EAC03B4
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000C4D0: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000C4D8: D2A24056 0002974A
	v_mov_b32_e32 v87, v180                                    // 00000000C4E0: 7EAE03B4
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000C4E4: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000C4EC: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161 offset:49152                   // 00000000C4F4: D9FEC000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:49168                   // 00000000C4FC: D9FEC010 600000A1
	ds_read_b128 v[110:113], v161 offset:57344                 // 00000000C504: D9FEE000 6E0000A1
	ds_read_b128 v[114:117], v161 offset:57360                 // 00000000C50C: D9FEE010 720000A1
	ds_read_b128 v[118:121], v162 offset:49152                 // 00000000C514: D9FEC000 760000A2
	ds_read_b128 v[122:125], v162 offset:49168                 // 00000000C51C: D9FEC010 7A0000A2
	ds_read_b128 v[134:137], v162 offset:57344                 // 00000000C524: D9FEE000 860000A2
	ds_read_b128 v[138:141], v162 offset:57360                 // 00000000C52C: D9FEE010 8A0000A2
	s_barrier                                                  // 00000000C534: BF8A0000
	s_setprio 1                                                // 00000000C538: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000C53C: D3AD0058 0202A17E
	ds_read_b128 v[206:209], v163 offset:49152                 // 00000000C544: D9FEC000 CE0000A3
	ds_read_b128 v[210:213], v163 offset:49168                 // 00000000C54C: D9FEC010 D20000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000C554: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000C558: D3AE0040 02036D5C
	ds_read_b128 v[214:217], v163 offset:57344                 // 00000000C560: D9FEE000 D60000A3
	ds_read_b128 v[218:221], v163 offset:57360                 // 00000000C568: D9FEE010 DA0000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[110:117], v[182:189], 0// 00000000C570: D3AE005E 02036D6E
	ds_read_b64_tr_b8 v[110:111], v176                         // 00000000C578: D9C40000 6E0000B0
	ds_read_b64_tr_b8 v[112:113], v176 offset:1024             // 00000000C580: D9C40400 700000B0
	ds_read_b64_tr_b8 v[114:115], v176 offset:2048             // 00000000C588: D9C40800 720000B0
	ds_read_b64_tr_b8 v[116:117], v176 offset:3072             // 00000000C590: D9C40C00 740000B0
	s_min_u32 s18, s20, s84                                    // 00000000C598: 83925414
	s_add_u32 m0, s72, s94                                     // 00000000C59C: 807C5E48
	s_nop 0                                                    // 00000000C5A0: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000C5A4: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v180                            // 00000000C5AC: 24B96897
	v_fma_f32 v179, v88, v92, v179                             // 00000000C5B0: D1CB00B3 06CEB958
	s_waitcnt lgkmcnt(8)                                       // 00000000C5B8: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[118:125], v[190:197], v[64:79]// 00000000C5BC: D3AE0040 05037D76
	ds_read_b64_tr_b8 v[118:119], v176 offset:256              // 00000000C5C4: D9C40100 760000B0
	ds_read_b64_tr_b8 v[120:121], v176 offset:1280             // 00000000C5CC: D9C40500 780000B0
	ds_read_b64_tr_b8 v[122:123], v176 offset:2304             // 00000000C5D4: D9C40900 7A0000B0
	ds_read_b64_tr_b8 v[124:125], v176 offset:3328             // 00000000C5DC: D9C40D00 7C0000B0
	s_add_u32 m0, s72, s95                                     // 00000000C5E4: 807C5F48
	s_nop 0                                                    // 00000000C5E8: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000C5EC: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[134:141], v[190:197], v[94:109]// 00000000C5F4: D3AE005E 057B7D86
	s_min_u32 s18, s17, s87                                    // 00000000C5FC: 83925711
	s_add_u32 m0, s72, s82                                     // 00000000C600: 807C5248
	s_nop 0                                                    // 00000000C604: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000C608: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000C610: 80140914
	s_add_u32 s17, s17, s99                                    // 00000000C614: 80116311
	s_waitcnt lgkmcnt(8)                                       // 00000000C618: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[206:213], v[198:205], v[64:79]// 00000000C61C: D3AE0040 05038DCE
	ds_read_b64_tr_b8 v[134:135], v176 offset:512              // 00000000C624: D9C40200 860000B0
	ds_read_b64_tr_b8 v[136:137], v176 offset:1536             // 00000000C62C: D9C40600 880000B0
	ds_read_b64_tr_b8 v[138:139], v176 offset:2560             // 00000000C634: D9C40A00 8A0000B0
	ds_read_b64_tr_b8 v[140:141], v176 offset:3584             // 00000000C63C: D9C40E00 8C0000B0
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[214:221], v[198:205], v[94:109]// 00000000C644: D3AE005E 057B8DD6
	s_nop 3                                                    // 00000000C64C: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000C650: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000C654: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000C65C: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000C664: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000C66C: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000C674: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000C67C: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000C684: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000C68C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[110:117], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000C690: D3AC0000 000369AA D3AE0830 04C2A16E
	ds_read_b64_tr_b8 v[206:207], v176 offset:768              // 00000000C6A0: D9C40300 CE0000B0
	ds_read_b64_tr_b8 v[208:209], v176 offset:1792             // 00000000C6A8: D9C40700 D00000B0
	ds_read_b64_tr_b8 v[210:211], v176 offset:2816             // 00000000C6B0: D9C40B00 D20000B0
	ds_read_b64_tr_b8 v[212:213], v176 offset:3840             // 00000000C6B8: D9C40F00 D40000B0
	v_max_f32_e32 v89, v94, v95                                // 00000000C6C0: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000C6C4: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000C6CC: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000C6D4: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000C6DC: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000C6E4: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000C6EC: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000C6F4: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[118:125], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000C6FC: D3AC0000 000369AA D3AE0820 0482A176
	v_max_f32_e32 v88, v88, v89                                // 00000000C70C: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000C710: 7EB20358
	s_nop 1                                                    // 00000000C714: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000C718: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000C71C: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000C720: 0AB2B18E
	v_max_f32_e32 v89, v178, v89                               // 00000000C724: 16B2B3B2
	v_sub_f32_e32 v90, v89, v178                               // 00000000C728: 04B56559
	v_cmp_lt_f32_e32 vcc, s91, v90                             // 00000000C72C: 7C82B45B
	s_waitcnt lgkmcnt(0)                                       // 00000000C730: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[134:141], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000C734: D3AC0000 000369AA D3AE0810 0442A186
	s_cmp_lg_u64 vcc, 0                                        // 00000000C744: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000C748: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000C74C: 85158081
	v_cndmask_b32_e64 v111, v178, v89, s[18:19]                // 00000000C750: D100006F 004AB3B2
	v_fma_f32 v88, v88, v142, -v111                            // 00000000C758: D1CB0058 85BF1D58
	v_floor_f32_e32 v88, v88                                   // 00000000C760: 7EB03F58
	v_med3_f32 v88, v88, s89, 0                                // 00000000C764: D1D60058 0200B358
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000C76C: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[206:213], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000C770: D3AC0000 000369AA D3AE0800 0402A1CE
	v_add_u32_e32 v180, 0x7f, v89                              // 00000000C780: 6968B2FF 0000007F
	v_add_f32_e32 v80, v111, v88                               // 00000000C788: 02A0B16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000C78C: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000C794: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C798: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C7A0: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7A8: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7B0: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7B8: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7C0: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7C8: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7D0: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7D8: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7E0: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7E8: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7F0: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7F8: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C800: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C808: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C810: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000C818: BF068015
	s_cbranch_scc1 68                                          // 00000000C81C: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2130>
	v_sub_f32_e32 v96, v178, v111                              // 00000000C820: 04C0DFB2
	v_exp_f32_e32 v96, v96                                     // 00000000C824: 7EC04160
	s_nop 0                                                    // 00000000C828: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000C82C: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000C834: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000C83C: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000C844: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000C84C: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000C854: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000C85C: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000C864: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000C86C: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000C874: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000C87C: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000C884: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000C88C: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000C894: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000C89C: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000C8A4: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000C8AC: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000C8B4: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000C8BC: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000C8C4: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000C8CC: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000C8D4: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000C8DC: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000C8E4: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000C8EC: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000C8F4: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000C8FC: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000C904: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000C90C: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000C914: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000C91C: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000C924: D3B14000 0802C100
	v_mul_f32_e32 v179, v179, v96                              // 00000000C92C: 0B66C1B3
	s_waitcnt vmcnt(3)                                         // 00000000C930: BF8C0F73
	s_barrier                                                  // 00000000C934: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000C938: 804E814E
	s_add_u32 s18, s78, 1                                      // 00000000C93C: 8012814E
	s_cmp_ge_u32 s18, s77                                      // 00000000C940: BF094D12
	s_cbranch_scc1 348                                         // 00000000C944: BF85015C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26b8>
	s_setprio 0                                                // 00000000C948: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000C94C: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000C950: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000C954: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000C958: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000C95C: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000C960: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000C964: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000C968: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000C96C: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000C970: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000C974: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000C978: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000C97C: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000C980: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000C984: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000C988: 7EBE415F
	v_mov_b32_e32 v80, v180                                    // 00000000C98C: 7EA003B4
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000C990: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000C998: D2A24050 0002A752
	v_mov_b32_e32 v81, v180                                    // 00000000C9A0: 7EA203B4
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000C9A4: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000C9AC: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000C9B4: 7E804140
	v_mov_b32_e32 v82, v180                                    // 00000000C9B8: 7EA403B4
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000C9BC: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000C9C4: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000C9C8: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000C9D0: 7E844142
	v_mov_b32_e32 v83, v180                                    // 00000000C9D4: 7EA603B4
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000C9D8: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000C9E0: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000C9E4: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000C9EC: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000C9F0: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000C9F4: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000C9F8: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000C9FC: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000CA00: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000CA04: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000CA08: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000CA0C: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000CA10: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000CA14: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000CA18: 7E9E414F
	v_mov_b32_e32 v84, v180                                    // 00000000CA1C: 7EA803B4
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000CA20: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000CA28: D2A24054 00028742
	v_mov_b32_e32 v85, v180                                    // 00000000CA30: 7EAA03B4
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000CA34: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000CA3C: D2A24055 00028F46
	v_mov_b32_e32 v86, v180                                    // 00000000CA44: 7EAC03B4
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000CA48: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000CA50: D2A24056 0002974A
	v_mov_b32_e32 v87, v180                                    // 00000000CA58: 7EAE03B4
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000CA5C: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000CA64: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161                                // 00000000CA6C: D9FE0000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:16                      // 00000000CA74: D9FE0010 600000A1
	ds_read_b128 v[112:115], v161 offset:8192                  // 00000000CA7C: D9FE2000 700000A1
	ds_read_b128 v[116:119], v161 offset:8208                  // 00000000CA84: D9FE2010 740000A1
	ds_read_b128 v[134:137], v162                              // 00000000CA8C: D9FE0000 860000A2
	ds_read_b128 v[138:141], v162 offset:16                    // 00000000CA94: D9FE0010 8A0000A2
	ds_read_b128 v[206:209], v162 offset:8192                  // 00000000CA9C: D9FE2000 CE0000A2
	ds_read_b128 v[210:213], v162 offset:8208                  // 00000000CAA4: D9FE2010 D20000A2
	s_barrier                                                  // 00000000CAAC: BF8A0000
	s_setprio 1                                                // 00000000CAB0: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000CAB4: D3AD0058 0202A17E
	ds_read_b128 v[214:217], v163                              // 00000000CABC: D9FE0000 D60000A3
	ds_read_b128 v[218:221], v163 offset:16                    // 00000000CAC4: D9FE0010 DA0000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000CACC: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000CAD0: D3AE0040 02036D5C
	ds_read_b128 v[222:225], v163 offset:8192                  // 00000000CAD8: D9FE2000 DE0000A3
	ds_read_b128 v[226:229], v163 offset:8208                  // 00000000CAE0: D9FE2010 E20000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[112:119], v[182:189], 0// 00000000CAE8: D3AE005E 02036D70
	ds_read_b64_tr_b8 v[112:113], v177                         // 00000000CAF0: D9C40000 700000B1
	ds_read_b64_tr_b8 v[114:115], v177 offset:1024             // 00000000CAF8: D9C40400 720000B1
	ds_read_b64_tr_b8 v[116:117], v177 offset:2048             // 00000000CB00: D9C40800 740000B1
	ds_read_b64_tr_b8 v[118:119], v177 offset:3072             // 00000000CB08: D9C40C00 760000B1
	s_min_u32 s18, s20, s84                                    // 00000000CB10: 83925414
	s_add_u32 m0, s72, s96                                     // 00000000CB14: 807C6048
	s_nop 0                                                    // 00000000CB18: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000CB1C: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v180                            // 00000000CB24: 24B96897
	v_fma_f32 v179, v88, v92, v179                             // 00000000CB28: D1CB00B3 06CEB958
	s_waitcnt lgkmcnt(8)                                       // 00000000CB30: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[134:141], v[190:197], v[64:79]// 00000000CB34: D3AE0040 05037D86
	ds_read_b64_tr_b8 v[134:135], v177 offset:256              // 00000000CB3C: D9C40100 860000B1
	ds_read_b64_tr_b8 v[136:137], v177 offset:1280             // 00000000CB44: D9C40500 880000B1
	ds_read_b64_tr_b8 v[138:139], v177 offset:2304             // 00000000CB4C: D9C40900 8A0000B1
	ds_read_b64_tr_b8 v[140:141], v177 offset:3328             // 00000000CB54: D9C40D00 8C0000B1
	s_add_u32 m0, s72, s97                                     // 00000000CB5C: 807C6148
	s_nop 0                                                    // 00000000CB60: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000CB64: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[206:213], v[190:197], v[94:109]// 00000000CB6C: D3AE005E 057B7DCE
	s_min_u32 s18, s17, s87                                    // 00000000CB74: 83925711
	s_add_u32 m0, s72, s83                                     // 00000000CB78: 807C5348
	s_nop 0                                                    // 00000000CB7C: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000CB80: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000CB88: 80140914
	s_add_u32 s17, s17, s99                                    // 00000000CB8C: 80116311
	s_waitcnt lgkmcnt(8)                                       // 00000000CB90: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[214:221], v[198:205], v[64:79]// 00000000CB94: D3AE0040 05038DD6
	ds_read_b64_tr_b8 v[206:207], v177 offset:512              // 00000000CB9C: D9C40200 CE0000B1
	ds_read_b64_tr_b8 v[208:209], v177 offset:1536             // 00000000CBA4: D9C40600 D00000B1
	ds_read_b64_tr_b8 v[210:211], v177 offset:2560             // 00000000CBAC: D9C40A00 D20000B1
	ds_read_b64_tr_b8 v[212:213], v177 offset:3584             // 00000000CBB4: D9C40E00 D40000B1
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[222:229], v[198:205], v[94:109]// 00000000CBBC: D3AE005E 057B8DDE
	s_nop 3                                                    // 00000000CBC4: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000CBC8: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000CBCC: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000CBD4: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000CBDC: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000CBE4: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000CBEC: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000CBF4: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000CBFC: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000CC04: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[112:119], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000CC08: D3AC0000 000369AA D3AE0830 04C2A170
	ds_read_b64_tr_b8 v[112:113], v177 offset:768              // 00000000CC18: D9C40300 700000B1
	ds_read_b64_tr_b8 v[114:115], v177 offset:1792             // 00000000CC20: D9C40700 720000B1
	ds_read_b64_tr_b8 v[116:117], v177 offset:2816             // 00000000CC28: D9C40B00 740000B1
	ds_read_b64_tr_b8 v[118:119], v177 offset:3840             // 00000000CC30: D9C40F00 760000B1
	v_max_f32_e32 v89, v94, v95                                // 00000000CC38: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000CC3C: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000CC44: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000CC4C: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000CC54: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000CC5C: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000CC64: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000CC6C: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000CC74: D3AC0000 000369AA D3AE0820 0482A186
	v_max_f32_e32 v88, v88, v89                                // 00000000CC84: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000CC88: 7EB20358
	s_nop 1                                                    // 00000000CC8C: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000CC90: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000CC94: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000CC98: 0AB2B18E
	v_max_f32_e32 v89, v111, v89                               // 00000000CC9C: 16B2B36F
	v_sub_f32_e32 v90, v89, v111                               // 00000000CCA0: 04B4DF59
	v_cmp_lt_f32_e32 vcc, s91, v90                             // 00000000CCA4: 7C82B45B
	s_waitcnt lgkmcnt(0)                                       // 00000000CCA8: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[206:213], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000CCAC: D3AC0000 000369AA D3AE0810 0442A1CE
	s_cmp_lg_u64 vcc, 0                                        // 00000000CCBC: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000CCC0: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000CCC4: 85158081
	v_cndmask_b32_e64 v178, v111, v89, s[18:19]                // 00000000CCC8: D10000B2 004AB36F
	v_fma_f32 v88, v88, v142, -v178                            // 00000000CCD0: D1CB0058 86CB1D58
	v_floor_f32_e32 v88, v88                                   // 00000000CCD8: 7EB03F58
	v_med3_f32 v88, v88, s89, 0                                // 00000000CCDC: D1D60058 0200B358
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000CCE4: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[112:119], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000CCE8: D3AC0000 000369AA D3AE0800 0402A170
	v_add_u32_e32 v180, 0x7f, v89                              // 00000000CCF8: 6968B2FF 0000007F
	v_add_f32_e32 v80, v178, v88                               // 00000000CD00: 02A0B1B2
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000CD04: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000CD0C: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000CD10: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000CD18: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD20: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD28: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD30: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD38: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD40: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD48: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD50: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD58: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD60: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD68: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD70: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD78: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD80: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD88: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000CD90: BF068015
	s_cbranch_scc1 68                                          // 00000000CD94: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26a8>
	v_sub_f32_e32 v96, v111, v178                              // 00000000CD98: 04C1656F
	v_exp_f32_e32 v96, v96                                     // 00000000CD9C: 7EC04160
	s_nop 0                                                    // 00000000CDA0: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000CDA4: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000CDAC: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000CDB4: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000CDBC: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000CDC4: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000CDCC: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000CDD4: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000CDDC: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000CDE4: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000CDEC: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000CDF4: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000CDFC: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000CE04: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000CE0C: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000CE14: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000CE1C: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000CE24: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000CE2C: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000CE34: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000CE3C: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000CE44: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000CE4C: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000CE54: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000CE5C: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000CE64: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000CE6C: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000CE74: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000CE7C: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000CE84: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000CE8C: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000CE94: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000CE9C: D3B14000 0802C100
	v_mul_f32_e32 v179, v179, v96                              // 00000000CEA4: 0B66C1B3
	s_waitcnt vmcnt(3)                                         // 00000000CEA8: BF8C0F73
	s_barrier                                                  // 00000000CEAC: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000CEB0: 804E814E
	s_branch 64135                                             // 00000000CEB4: BF82FA87 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10d4>
