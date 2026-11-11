	s_add_u32 s18, s78, 1                                      // 00000000BAE0: 8012814E
	s_cmp_ge_u32 s18, s77                                      // 00000000BAE4: BF094D12
	s_cbranch_scc1 1399                                        // 00000000BAE8: BF850577 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26c8>
	s_setprio 0                                                // 00000000BAEC: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000BAF0: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000BAF4: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000BAF8: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000BAFC: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000BB00: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000BB04: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000BB08: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000BB0C: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000BB10: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000BB14: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000BB18: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000BB1C: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000BB20: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000BB24: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000BB28: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000BB2C: 7EBE415F
	v_mov_b32_e32 v80, v180                                    // 00000000BB30: 7EA003B4
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000BB34: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000BB3C: D2A24050 0002A752
	v_mov_b32_e32 v81, v180                                    // 00000000BB44: 7EA203B4
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000BB48: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000BB50: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000BB58: 7E804140
	v_mov_b32_e32 v82, v180                                    // 00000000BB5C: 7EA403B4
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000BB60: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000BB68: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000BB6C: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000BB74: 7E844142
	v_mov_b32_e32 v83, v180                                    // 00000000BB78: 7EA603B4
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000BB7C: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000BB84: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000BB88: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000BB90: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000BB94: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000BB98: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000BB9C: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000BBA0: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000BBA4: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000BBA8: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000BBAC: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000BBB0: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000BBB4: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000BBB8: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000BBBC: 7E9E414F
	v_mov_b32_e32 v84, v180                                    // 00000000BBC0: 7EA803B4
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000BBC4: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000BBCC: D2A24054 00028742
	v_mov_b32_e32 v85, v180                                    // 00000000BBD4: 7EAA03B4
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000BBD8: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000BBE0: D2A24055 00028F46
	v_mov_b32_e32 v86, v180                                    // 00000000BBE8: 7EAC03B4
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000BBEC: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000BBF4: D2A24056 0002974A
	v_mov_b32_e32 v87, v180                                    // 00000000BBFC: 7EAE03B4
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000BC00: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000BC08: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161 offset:16384                   // 00000000BC10: D9FE4000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:16400                   // 00000000BC18: D9FE4010 600000A1
	ds_read_b128 v[110:113], v161 offset:24576                 // 00000000BC20: D9FE6000 6E0000A1
	ds_read_b128 v[114:117], v161 offset:24592                 // 00000000BC28: D9FE6010 720000A1
	ds_read_b128 v[118:121], v162 offset:16384                 // 00000000BC30: D9FE4000 760000A2
	ds_read_b128 v[122:125], v162 offset:16400                 // 00000000BC38: D9FE4010 7A0000A2
	ds_read_b128 v[134:137], v162 offset:24576                 // 00000000BC40: D9FE6000 860000A2
	ds_read_b128 v[138:141], v162 offset:24592                 // 00000000BC48: D9FE6010 8A0000A2
	s_barrier                                                  // 00000000BC50: BF8A0000
	s_setprio 1                                                // 00000000BC54: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000BC58: D3AD0058 0202A17E
	ds_read_b128 v[206:209], v163 offset:16384                 // 00000000BC60: D9FE4000 CE0000A3
	ds_read_b128 v[210:213], v163 offset:16400                 // 00000000BC68: D9FE4010 D20000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000BC70: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000BC74: D3AE0040 02036D5C
	ds_read_b128 v[214:217], v163 offset:24576                 // 00000000BC7C: D9FE6000 D60000A3
	ds_read_b128 v[218:221], v163 offset:24592                 // 00000000BC84: D9FE6010 DA0000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[110:117], v[182:189], 0// 00000000BC8C: D3AE005E 02036D6E
	ds_read_b64_tr_b8 v[110:111], v174                         // 00000000BC94: D9C40000 6E0000AE
	ds_read_b64_tr_b8 v[112:113], v174 offset:1024             // 00000000BC9C: D9C40400 700000AE
	ds_read_b64_tr_b8 v[114:115], v174 offset:2048             // 00000000BCA4: D9C40800 720000AE
	ds_read_b64_tr_b8 v[116:117], v174 offset:3072             // 00000000BCAC: D9C40C00 740000AE
	s_min_u32 s18, s20, s84                                    // 00000000BCB4: 83925414
	s_add_u32 m0, s72, s16                                     // 00000000BCB8: 807C1048
	s_nop 0                                                    // 00000000BCBC: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000BCC0: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v180                            // 00000000BCC8: 24B96897
	v_fma_f32 v179, v88, v92, v179                             // 00000000BCCC: D1CB00B3 06CEB958
	s_waitcnt lgkmcnt(8)                                       // 00000000BCD4: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[118:125], v[190:197], v[64:79]// 00000000BCD8: D3AE0040 05037D76
	ds_read_b64_tr_b8 v[118:119], v174 offset:256              // 00000000BCE0: D9C40100 760000AE
	ds_read_b64_tr_b8 v[120:121], v174 offset:1280             // 00000000BCE8: D9C40500 780000AE
	ds_read_b64_tr_b8 v[122:123], v174 offset:2304             // 00000000BCF0: D9C40900 7A0000AE
	ds_read_b64_tr_b8 v[124:125], v174 offset:3328             // 00000000BCF8: D9C40D00 7C0000AE
	s_add_u32 m0, s72, s90                                     // 00000000BD00: 807C5A48
	s_nop 0                                                    // 00000000BD04: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000BD08: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[134:141], v[190:197], v[94:109]// 00000000BD10: D3AE005E 057B7D86
	s_min_u32 s18, s17, s87                                    // 00000000BD18: 83925711
	s_add_u32 m0, s72, s88                                     // 00000000BD1C: 807C5848
	s_nop 0                                                    // 00000000BD20: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000BD24: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000BD2C: 80140914
	s_add_u32 s17, s17, s99                                    // 00000000BD30: 80116311
	s_waitcnt lgkmcnt(8)                                       // 00000000BD34: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[206:213], v[198:205], v[64:79]// 00000000BD38: D3AE0040 05038DCE
	ds_read_b64_tr_b8 v[134:135], v174 offset:512              // 00000000BD40: D9C40200 860000AE
	ds_read_b64_tr_b8 v[136:137], v174 offset:1536             // 00000000BD48: D9C40600 880000AE
	ds_read_b64_tr_b8 v[138:139], v174 offset:2560             // 00000000BD50: D9C40A00 8A0000AE
	ds_read_b64_tr_b8 v[140:141], v174 offset:3584             // 00000000BD58: D9C40E00 8C0000AE
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[214:221], v[198:205], v[94:109]// 00000000BD60: D3AE005E 057B8DD6
	s_nop 3                                                    // 00000000BD68: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000BD6C: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000BD70: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000BD78: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000BD80: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000BD88: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000BD90: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000BD98: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000BDA0: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000BDA8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[110:117], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000BDAC: D3AC0000 000369AA D3AE0830 04C2A16E
	ds_read_b64_tr_b8 v[206:207], v174 offset:768              // 00000000BDBC: D9C40300 CE0000AE
	ds_read_b64_tr_b8 v[208:209], v174 offset:1792             // 00000000BDC4: D9C40700 D00000AE
	ds_read_b64_tr_b8 v[210:211], v174 offset:2816             // 00000000BDCC: D9C40B00 D20000AE
	ds_read_b64_tr_b8 v[212:213], v174 offset:3840             // 00000000BDD4: D9C40F00 D40000AE
	v_max_f32_e32 v89, v94, v95                                // 00000000BDDC: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000BDE0: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000BDE8: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000BDF0: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000BDF8: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000BE00: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000BE08: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000BE10: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[118:125], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000BE18: D3AC0000 000369AA D3AE0820 0482A176
	v_max_f32_e32 v88, v88, v89                                // 00000000BE28: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000BE2C: 7EB20358
	s_nop 1                                                    // 00000000BE30: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000BE34: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000BE38: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000BE3C: 0AB2B18E
	v_max_f32_e32 v89, v178, v89                               // 00000000BE40: 16B2B3B2
	v_sub_f32_e32 v90, v89, v178                               // 00000000BE44: 04B56559
	v_cmp_lt_f32_e32 vcc, s91, v90                             // 00000000BE48: 7C82B45B
	s_waitcnt lgkmcnt(0)                                       // 00000000BE4C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[134:141], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000BE50: D3AC0000 000369AA D3AE0810 0442A186
	s_cmp_lg_u64 vcc, 0                                        // 00000000BE60: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000BE64: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000BE68: 85158081
	v_cndmask_b32_e64 v111, v178, v89, s[18:19]                // 00000000BE6C: D100006F 004AB3B2
	v_fma_f32 v88, v88, v142, -v111                            // 00000000BE74: D1CB0058 85BF1D58
	v_floor_f32_e32 v88, v88                                   // 00000000BE7C: 7EB03F58
	v_med3_f32 v88, v88, s89, 0                                // 00000000BE80: D1D60058 0200B358
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000BE88: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[206:213], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000BE8C: D3AC0000 000369AA D3AE0800 0402A1CE
	v_add_u32_e32 v180, 0x7f, v89                              // 00000000BE9C: 6968B2FF 0000007F
	v_add_f32_e32 v80, v111, v88                               // 00000000BEA4: 02A0B16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000BEA8: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000BEB0: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000BEB4: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000BEBC: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BEC4: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BECC: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BED4: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BEDC: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BEE4: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BEEC: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BEF4: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BEFC: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BF04: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BF0C: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BF14: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BF1C: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BF24: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BF2C: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000BF34: BF068015
	s_cbranch_scc1 68                                          // 00000000BF38: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x164c>
	v_sub_f32_e32 v96, v178, v111                              // 00000000BF3C: 04C0DFB2
	v_exp_f32_e32 v96, v96                                     // 00000000BF40: 7EC04160
	s_nop 0                                                    // 00000000BF44: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000BF48: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000BF50: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000BF58: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000BF60: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000BF68: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000BF70: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000BF78: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000BF80: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000BF88: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000BF90: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000BF98: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000BFA0: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000BFA8: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000BFB0: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000BFB8: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000BFC0: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000BFC8: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000BFD0: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000BFD8: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000BFE0: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000BFE8: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000BFF0: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000BFF8: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000C000: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000C008: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000C010: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000C018: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000C020: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000C028: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000C030: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000C038: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000C040: D3B14000 0802C100
	v_mul_f32_e32 v179, v179, v96                              // 00000000C048: 0B66C1B3
	s_waitcnt vmcnt(3)                                         // 00000000C04C: BF8C0F73
	s_barrier                                                  // 00000000C050: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000C054: 804E814E
	s_add_u32 s18, s78, 1                                      // 00000000C058: 8012814E
	s_cmp_ge_u32 s18, s77                                      // 00000000C05C: BF094D12
	s_cbranch_scc1 1053                                        // 00000000C060: BF85041D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26d8>
	s_setprio 0                                                // 00000000C064: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000C068: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000C06C: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000C070: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000C074: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000C078: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000C07C: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000C080: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000C084: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000C088: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000C08C: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000C090: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000C094: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000C098: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000C09C: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000C0A0: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000C0A4: 7EBE415F
	v_mov_b32_e32 v80, v180                                    // 00000000C0A8: 7EA003B4
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000C0AC: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000C0B4: D2A24050 0002A752
	v_mov_b32_e32 v81, v180                                    // 00000000C0BC: 7EA203B4
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000C0C0: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000C0C8: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000C0D0: 7E804140
	v_mov_b32_e32 v82, v180                                    // 00000000C0D4: 7EA403B4
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000C0D8: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000C0E0: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000C0E4: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000C0EC: 7E844142
	v_mov_b32_e32 v83, v180                                    // 00000000C0F0: 7EA603B4
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000C0F4: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000C0FC: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000C100: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000C108: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000C10C: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000C110: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000C114: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000C118: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000C11C: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000C120: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000C124: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000C128: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000C12C: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000C130: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000C134: 7E9E414F
	v_mov_b32_e32 v84, v180                                    // 00000000C138: 7EA803B4
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000C13C: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000C144: D2A24054 00028742
	v_mov_b32_e32 v85, v180                                    // 00000000C14C: 7EAA03B4
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000C150: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000C158: D2A24055 00028F46
	v_mov_b32_e32 v86, v180                                    // 00000000C160: 7EAC03B4
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000C164: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000C16C: D2A24056 0002974A
	v_mov_b32_e32 v87, v180                                    // 00000000C174: 7EAE03B4
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000C178: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000C180: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161 offset:32768                   // 00000000C188: D9FE8000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:32784                   // 00000000C190: D9FE8010 600000A1
	ds_read_b128 v[112:115], v161 offset:40960                 // 00000000C198: D9FEA000 700000A1
	ds_read_b128 v[116:119], v161 offset:40976                 // 00000000C1A0: D9FEA010 740000A1
	ds_read_b128 v[134:137], v162 offset:32768                 // 00000000C1A8: D9FE8000 860000A2
	ds_read_b128 v[138:141], v162 offset:32784                 // 00000000C1B0: D9FE8010 8A0000A2
	ds_read_b128 v[206:209], v162 offset:40960                 // 00000000C1B8: D9FEA000 CE0000A2
	ds_read_b128 v[210:213], v162 offset:40976                 // 00000000C1C0: D9FEA010 D20000A2
	s_barrier                                                  // 00000000C1C8: BF8A0000
	s_setprio 1                                                // 00000000C1CC: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000C1D0: D3AD0058 0202A17E
	ds_read_b128 v[214:217], v163 offset:32768                 // 00000000C1D8: D9FE8000 D60000A3
	ds_read_b128 v[218:221], v163 offset:32784                 // 00000000C1E0: D9FE8010 DA0000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000C1E8: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000C1EC: D3AE0040 02036D5C
	ds_read_b128 v[222:225], v163 offset:40960                 // 00000000C1F4: D9FEA000 DE0000A3
	ds_read_b128 v[226:229], v163 offset:40976                 // 00000000C1FC: D9FEA010 E20000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[112:119], v[182:189], 0// 00000000C204: D3AE005E 02036D70
	ds_read_b64_tr_b8 v[112:113], v175                         // 00000000C20C: D9C40000 700000AF
	ds_read_b64_tr_b8 v[114:115], v175 offset:1024             // 00000000C214: D9C40400 720000AF
	ds_read_b64_tr_b8 v[116:117], v175 offset:2048             // 00000000C21C: D9C40800 740000AF
	ds_read_b64_tr_b8 v[118:119], v175 offset:3072             // 00000000C224: D9C40C00 760000AF
	s_min_u32 s18, s20, s84                                    // 00000000C22C: 83925414
	s_add_u32 m0, s72, s92                                     // 00000000C230: 807C5C48
	s_nop 0                                                    // 00000000C234: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000C238: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v180                            // 00000000C240: 24B96897
	v_fma_f32 v179, v88, v92, v179                             // 00000000C244: D1CB00B3 06CEB958
	s_waitcnt lgkmcnt(8)                                       // 00000000C24C: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[134:141], v[190:197], v[64:79]// 00000000C250: D3AE0040 05037D86
	ds_read_b64_tr_b8 v[134:135], v175 offset:256              // 00000000C258: D9C40100 860000AF
	ds_read_b64_tr_b8 v[136:137], v175 offset:1280             // 00000000C260: D9C40500 880000AF
	ds_read_b64_tr_b8 v[138:139], v175 offset:2304             // 00000000C268: D9C40900 8A0000AF
	ds_read_b64_tr_b8 v[140:141], v175 offset:3328             // 00000000C270: D9C40D00 8C0000AF
	s_add_u32 m0, s72, s93                                     // 00000000C278: 807C5D48
	s_nop 0                                                    // 00000000C27C: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000C280: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[206:213], v[190:197], v[94:109]// 00000000C288: D3AE005E 057B7DCE
	s_min_u32 s18, s17, s87                                    // 00000000C290: 83925711
	s_add_u32 m0, s72, s81                                     // 00000000C294: 807C5148
	s_nop 0                                                    // 00000000C298: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000C29C: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000C2A4: 80140914
	s_add_u32 s17, s17, s99                                    // 00000000C2A8: 80116311
	s_waitcnt lgkmcnt(8)                                       // 00000000C2AC: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[214:221], v[198:205], v[64:79]// 00000000C2B0: D3AE0040 05038DD6
	ds_read_b64_tr_b8 v[206:207], v175 offset:512              // 00000000C2B8: D9C40200 CE0000AF
	ds_read_b64_tr_b8 v[208:209], v175 offset:1536             // 00000000C2C0: D9C40600 D00000AF
	ds_read_b64_tr_b8 v[210:211], v175 offset:2560             // 00000000C2C8: D9C40A00 D20000AF
	ds_read_b64_tr_b8 v[212:213], v175 offset:3584             // 00000000C2D0: D9C40E00 D40000AF
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[222:229], v[198:205], v[94:109]// 00000000C2D8: D3AE005E 057B8DDE
	s_nop 3                                                    // 00000000C2E0: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000C2E4: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000C2E8: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000C2F0: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000C2F8: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000C300: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000C308: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000C310: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000C318: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000C320: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[112:119], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000C324: D3AC0000 000369AA D3AE0830 04C2A170
	ds_read_b64_tr_b8 v[112:113], v175 offset:768              // 00000000C334: D9C40300 700000AF
	ds_read_b64_tr_b8 v[114:115], v175 offset:1792             // 00000000C33C: D9C40700 720000AF
	ds_read_b64_tr_b8 v[116:117], v175 offset:2816             // 00000000C344: D9C40B00 740000AF
	ds_read_b64_tr_b8 v[118:119], v175 offset:3840             // 00000000C34C: D9C40F00 760000AF
	v_max_f32_e32 v89, v94, v95                                // 00000000C354: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000C358: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000C360: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000C368: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000C370: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000C378: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000C380: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000C388: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000C390: D3AC0000 000369AA D3AE0820 0482A186
	v_max_f32_e32 v88, v88, v89                                // 00000000C3A0: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000C3A4: 7EB20358
	s_nop 1                                                    // 00000000C3A8: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000C3AC: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000C3B0: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000C3B4: 0AB2B18E
	v_max_f32_e32 v89, v111, v89                               // 00000000C3B8: 16B2B36F
	v_sub_f32_e32 v90, v89, v111                               // 00000000C3BC: 04B4DF59
	v_cmp_lt_f32_e32 vcc, s91, v90                             // 00000000C3C0: 7C82B45B
	s_waitcnt lgkmcnt(0)                                       // 00000000C3C4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[206:213], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000C3C8: D3AC0000 000369AA D3AE0810 0442A1CE
	s_cmp_lg_u64 vcc, 0                                        // 00000000C3D8: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000C3DC: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000C3E0: 85158081
	v_cndmask_b32_e64 v178, v111, v89, s[18:19]                // 00000000C3E4: D10000B2 004AB36F
	v_fma_f32 v88, v88, v142, -v178                            // 00000000C3EC: D1CB0058 86CB1D58
	v_floor_f32_e32 v88, v88                                   // 00000000C3F4: 7EB03F58
	v_med3_f32 v88, v88, s89, 0                                // 00000000C3F8: D1D60058 0200B358
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000C400: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[112:119], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000C404: D3AC0000 000369AA D3AE0800 0402A170
	v_add_u32_e32 v180, 0x7f, v89                              // 00000000C414: 6968B2FF 0000007F
	v_add_f32_e32 v80, v178, v88                               // 00000000C41C: 02A0B1B2
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000C420: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000C428: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C42C: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C434: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C43C: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C444: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C44C: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C454: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C45C: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C464: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C46C: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C474: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C47C: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C484: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C48C: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C494: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C49C: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C4A4: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000C4AC: BF068015
	s_cbranch_scc1 68                                          // 00000000C4B0: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1bc4>
	v_sub_f32_e32 v96, v111, v178                              // 00000000C4B4: 04C1656F
	v_exp_f32_e32 v96, v96                                     // 00000000C4B8: 7EC04160
	s_nop 0                                                    // 00000000C4BC: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000C4C0: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000C4C8: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000C4D0: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000C4D8: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000C4E0: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000C4E8: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000C4F0: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000C4F8: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000C500: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000C508: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000C510: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000C518: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000C520: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000C528: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000C530: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000C538: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000C540: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000C548: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000C550: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000C558: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000C560: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000C568: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000C570: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000C578: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000C580: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000C588: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000C590: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000C598: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000C5A0: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000C5A8: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000C5B0: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000C5B8: D3B14000 0802C100
	v_mul_f32_e32 v179, v179, v96                              // 00000000C5C0: 0B66C1B3
	s_waitcnt vmcnt(3)                                         // 00000000C5C4: BF8C0F73
	s_barrier                                                  // 00000000C5C8: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000C5CC: 804E814E
	s_add_u32 s18, s78, 1                                      // 00000000C5D0: 8012814E
	s_cmp_ge_u32 s18, s77                                      // 00000000C5D4: BF094D12
	s_cbranch_scc1 699                                         // 00000000C5D8: BF8502BB <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26c8>
	s_setprio 0                                                // 00000000C5DC: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000C5E0: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000C5E4: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000C5E8: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000C5EC: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000C5F0: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000C5F4: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000C5F8: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000C5FC: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000C600: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000C604: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000C608: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000C60C: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000C610: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000C614: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000C618: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000C61C: 7EBE415F
	v_mov_b32_e32 v80, v180                                    // 00000000C620: 7EA003B4
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000C624: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000C62C: D2A24050 0002A752
	v_mov_b32_e32 v81, v180                                    // 00000000C634: 7EA203B4
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000C638: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000C640: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000C648: 7E804140
	v_mov_b32_e32 v82, v180                                    // 00000000C64C: 7EA403B4
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000C650: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000C658: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000C65C: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000C664: 7E844142
	v_mov_b32_e32 v83, v180                                    // 00000000C668: 7EA603B4
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000C66C: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000C674: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000C678: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000C680: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000C684: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000C688: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000C68C: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000C690: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000C694: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000C698: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000C69C: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000C6A0: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000C6A4: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000C6A8: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000C6AC: 7E9E414F
	v_mov_b32_e32 v84, v180                                    // 00000000C6B0: 7EA803B4
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000C6B4: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000C6BC: D2A24054 00028742
	v_mov_b32_e32 v85, v180                                    // 00000000C6C4: 7EAA03B4
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000C6C8: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000C6D0: D2A24055 00028F46
	v_mov_b32_e32 v86, v180                                    // 00000000C6D8: 7EAC03B4
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000C6DC: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000C6E4: D2A24056 0002974A
	v_mov_b32_e32 v87, v180                                    // 00000000C6EC: 7EAE03B4
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000C6F0: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000C6F8: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161 offset:49152                   // 00000000C700: D9FEC000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:49168                   // 00000000C708: D9FEC010 600000A1
	ds_read_b128 v[110:113], v161 offset:57344                 // 00000000C710: D9FEE000 6E0000A1
	ds_read_b128 v[114:117], v161 offset:57360                 // 00000000C718: D9FEE010 720000A1
	ds_read_b128 v[118:121], v162 offset:49152                 // 00000000C720: D9FEC000 760000A2
	ds_read_b128 v[122:125], v162 offset:49168                 // 00000000C728: D9FEC010 7A0000A2
	ds_read_b128 v[134:137], v162 offset:57344                 // 00000000C730: D9FEE000 860000A2
	ds_read_b128 v[138:141], v162 offset:57360                 // 00000000C738: D9FEE010 8A0000A2
	s_barrier                                                  // 00000000C740: BF8A0000
	s_setprio 1                                                // 00000000C744: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000C748: D3AD0058 0202A17E
	ds_read_b128 v[206:209], v163 offset:49152                 // 00000000C750: D9FEC000 CE0000A3
	ds_read_b128 v[210:213], v163 offset:49168                 // 00000000C758: D9FEC010 D20000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000C760: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000C764: D3AE0040 02036D5C
	ds_read_b128 v[214:217], v163 offset:57344                 // 00000000C76C: D9FEE000 D60000A3
	ds_read_b128 v[218:221], v163 offset:57360                 // 00000000C774: D9FEE010 DA0000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[110:117], v[182:189], 0// 00000000C77C: D3AE005E 02036D6E
	ds_read_b64_tr_b8 v[110:111], v176                         // 00000000C784: D9C40000 6E0000B0
	ds_read_b64_tr_b8 v[112:113], v176 offset:1024             // 00000000C78C: D9C40400 700000B0
	ds_read_b64_tr_b8 v[114:115], v176 offset:2048             // 00000000C794: D9C40800 720000B0
	ds_read_b64_tr_b8 v[116:117], v176 offset:3072             // 00000000C79C: D9C40C00 740000B0
	s_min_u32 s18, s20, s84                                    // 00000000C7A4: 83925414
	s_add_u32 m0, s72, s94                                     // 00000000C7A8: 807C5E48
	s_nop 0                                                    // 00000000C7AC: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000C7B0: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v180                            // 00000000C7B8: 24B96897
	v_fma_f32 v179, v88, v92, v179                             // 00000000C7BC: D1CB00B3 06CEB958
	s_waitcnt lgkmcnt(8)                                       // 00000000C7C4: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[118:125], v[190:197], v[64:79]// 00000000C7C8: D3AE0040 05037D76
	ds_read_b64_tr_b8 v[118:119], v176 offset:256              // 00000000C7D0: D9C40100 760000B0
	ds_read_b64_tr_b8 v[120:121], v176 offset:1280             // 00000000C7D8: D9C40500 780000B0
	ds_read_b64_tr_b8 v[122:123], v176 offset:2304             // 00000000C7E0: D9C40900 7A0000B0
	ds_read_b64_tr_b8 v[124:125], v176 offset:3328             // 00000000C7E8: D9C40D00 7C0000B0
	s_add_u32 m0, s72, s95                                     // 00000000C7F0: 807C5F48
	s_nop 0                                                    // 00000000C7F4: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000C7F8: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[134:141], v[190:197], v[94:109]// 00000000C800: D3AE005E 057B7D86
	s_min_u32 s18, s17, s87                                    // 00000000C808: 83925711
	s_add_u32 m0, s72, s82                                     // 00000000C80C: 807C5248
	s_nop 0                                                    // 00000000C810: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000C814: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000C81C: 80140914
	s_add_u32 s17, s17, s99                                    // 00000000C820: 80116311
	s_waitcnt lgkmcnt(8)                                       // 00000000C824: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[206:213], v[198:205], v[64:79]// 00000000C828: D3AE0040 05038DCE
	ds_read_b64_tr_b8 v[134:135], v176 offset:512              // 00000000C830: D9C40200 860000B0
	ds_read_b64_tr_b8 v[136:137], v176 offset:1536             // 00000000C838: D9C40600 880000B0
	ds_read_b64_tr_b8 v[138:139], v176 offset:2560             // 00000000C840: D9C40A00 8A0000B0
	ds_read_b64_tr_b8 v[140:141], v176 offset:3584             // 00000000C848: D9C40E00 8C0000B0
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[214:221], v[198:205], v[94:109]// 00000000C850: D3AE005E 057B8DD6
	s_nop 3                                                    // 00000000C858: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000C85C: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000C860: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000C868: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000C870: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000C878: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000C880: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000C888: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000C890: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000C898: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[110:117], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000C89C: D3AC0000 000369AA D3AE0830 04C2A16E
	ds_read_b64_tr_b8 v[206:207], v176 offset:768              // 00000000C8AC: D9C40300 CE0000B0
	ds_read_b64_tr_b8 v[208:209], v176 offset:1792             // 00000000C8B4: D9C40700 D00000B0
	ds_read_b64_tr_b8 v[210:211], v176 offset:2816             // 00000000C8BC: D9C40B00 D20000B0
	ds_read_b64_tr_b8 v[212:213], v176 offset:3840             // 00000000C8C4: D9C40F00 D40000B0
	v_max_f32_e32 v89, v94, v95                                // 00000000C8CC: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000C8D0: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000C8D8: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000C8E0: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000C8E8: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000C8F0: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000C8F8: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000C900: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[118:125], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000C908: D3AC0000 000369AA D3AE0820 0482A176
	v_max_f32_e32 v88, v88, v89                                // 00000000C918: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000C91C: 7EB20358
	s_nop 1                                                    // 00000000C920: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000C924: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000C928: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000C92C: 0AB2B18E
	v_max_f32_e32 v89, v178, v89                               // 00000000C930: 16B2B3B2
	v_sub_f32_e32 v90, v89, v178                               // 00000000C934: 04B56559
	v_cmp_lt_f32_e32 vcc, s91, v90                             // 00000000C938: 7C82B45B
	s_waitcnt lgkmcnt(0)                                       // 00000000C93C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[134:141], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000C940: D3AC0000 000369AA D3AE0810 0442A186
	s_cmp_lg_u64 vcc, 0                                        // 00000000C950: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000C954: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000C958: 85158081
	v_cndmask_b32_e64 v111, v178, v89, s[18:19]                // 00000000C95C: D100006F 004AB3B2
	v_fma_f32 v88, v88, v142, -v111                            // 00000000C964: D1CB0058 85BF1D58
	v_floor_f32_e32 v88, v88                                   // 00000000C96C: 7EB03F58
	v_med3_f32 v88, v88, s89, 0                                // 00000000C970: D1D60058 0200B358
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000C978: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[206:213], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000C97C: D3AC0000 000369AA D3AE0800 0402A1CE
	v_add_u32_e32 v180, 0x7f, v89                              // 00000000C98C: 6968B2FF 0000007F
	v_add_f32_e32 v80, v111, v88                               // 00000000C994: 02A0B16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000C998: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000C9A0: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C9A4: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C9AC: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C9B4: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C9BC: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C9C4: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C9CC: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C9D4: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C9DC: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C9E4: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C9EC: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C9F4: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C9FC: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CA04: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CA0C: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CA14: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CA1C: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000CA24: BF068015
	s_cbranch_scc1 68                                          // 00000000CA28: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x213c>
	v_sub_f32_e32 v96, v178, v111                              // 00000000CA2C: 04C0DFB2
	v_exp_f32_e32 v96, v96                                     // 00000000CA30: 7EC04160
	s_nop 0                                                    // 00000000CA34: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000CA38: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000CA40: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000CA48: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000CA50: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000CA58: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000CA60: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000CA68: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000CA70: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000CA78: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000CA80: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000CA88: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000CA90: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000CA98: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000CAA0: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000CAA8: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000CAB0: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000CAB8: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000CAC0: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000CAC8: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000CAD0: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000CAD8: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000CAE0: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000CAE8: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000CAF0: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000CAF8: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000CB00: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000CB08: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000CB10: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000CB18: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000CB20: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000CB28: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000CB30: D3B14000 0802C100
	v_mul_f32_e32 v179, v179, v96                              // 00000000CB38: 0B66C1B3
	s_waitcnt vmcnt(3)                                         // 00000000CB3C: BF8C0F73
	s_barrier                                                  // 00000000CB40: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000CB44: 804E814E
	s_add_u32 s18, s78, 1                                      // 00000000CB48: 8012814E
	s_cmp_ge_u32 s18, s77                                      // 00000000CB4C: BF094D12
	s_cbranch_scc1 348                                         // 00000000CB50: BF85015C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26c4>
	s_setprio 0                                                // 00000000CB54: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000CB58: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000CB5C: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000CB60: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000CB64: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000CB68: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000CB6C: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000CB70: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000CB74: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000CB78: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000CB7C: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000CB80: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000CB84: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000CB88: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000CB8C: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000CB90: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000CB94: 7EBE415F
	v_mov_b32_e32 v80, v180                                    // 00000000CB98: 7EA003B4
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000CB9C: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000CBA4: D2A24050 0002A752
	v_mov_b32_e32 v81, v180                                    // 00000000CBAC: 7EA203B4
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000CBB0: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000CBB8: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000CBC0: 7E804140
	v_mov_b32_e32 v82, v180                                    // 00000000CBC4: 7EA403B4
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000CBC8: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000CBD0: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000CBD4: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000CBDC: 7E844142
	v_mov_b32_e32 v83, v180                                    // 00000000CBE0: 7EA603B4
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000CBE4: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000CBEC: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000CBF0: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000CBF8: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000CBFC: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000CC00: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000CC04: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000CC08: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000CC0C: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000CC10: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000CC14: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000CC18: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000CC1C: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000CC20: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000CC24: 7E9E414F
	v_mov_b32_e32 v84, v180                                    // 00000000CC28: 7EA803B4
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000CC2C: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000CC34: D2A24054 00028742
	v_mov_b32_e32 v85, v180                                    // 00000000CC3C: 7EAA03B4
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000CC40: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000CC48: D2A24055 00028F46
	v_mov_b32_e32 v86, v180                                    // 00000000CC50: 7EAC03B4
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000CC54: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000CC5C: D2A24056 0002974A
	v_mov_b32_e32 v87, v180                                    // 00000000CC64: 7EAE03B4
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000CC68: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000CC70: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161                                // 00000000CC78: D9FE0000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:16                      // 00000000CC80: D9FE0010 600000A1
	ds_read_b128 v[112:115], v161 offset:8192                  // 00000000CC88: D9FE2000 700000A1
	ds_read_b128 v[116:119], v161 offset:8208                  // 00000000CC90: D9FE2010 740000A1
	ds_read_b128 v[134:137], v162                              // 00000000CC98: D9FE0000 860000A2
	ds_read_b128 v[138:141], v162 offset:16                    // 00000000CCA0: D9FE0010 8A0000A2
	ds_read_b128 v[206:209], v162 offset:8192                  // 00000000CCA8: D9FE2000 CE0000A2
	ds_read_b128 v[210:213], v162 offset:8208                  // 00000000CCB0: D9FE2010 D20000A2
	s_barrier                                                  // 00000000CCB8: BF8A0000
	s_setprio 1                                                // 00000000CCBC: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000CCC0: D3AD0058 0202A17E
	ds_read_b128 v[214:217], v163                              // 00000000CCC8: D9FE0000 D60000A3
	ds_read_b128 v[218:221], v163 offset:16                    // 00000000CCD0: D9FE0010 DA0000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000CCD8: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000CCDC: D3AE0040 02036D5C
	ds_read_b128 v[222:225], v163 offset:8192                  // 00000000CCE4: D9FE2000 DE0000A3
	ds_read_b128 v[226:229], v163 offset:8208                  // 00000000CCEC: D9FE2010 E20000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[112:119], v[182:189], 0// 00000000CCF4: D3AE005E 02036D70
	ds_read_b64_tr_b8 v[112:113], v177                         // 00000000CCFC: D9C40000 700000B1
	ds_read_b64_tr_b8 v[114:115], v177 offset:1024             // 00000000CD04: D9C40400 720000B1
	ds_read_b64_tr_b8 v[116:117], v177 offset:2048             // 00000000CD0C: D9C40800 740000B1
	ds_read_b64_tr_b8 v[118:119], v177 offset:3072             // 00000000CD14: D9C40C00 760000B1
	s_min_u32 s18, s20, s84                                    // 00000000CD1C: 83925414
	s_add_u32 m0, s72, s96                                     // 00000000CD20: 807C6048
	s_nop 0                                                    // 00000000CD24: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000CD28: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v180                            // 00000000CD30: 24B96897
	v_fma_f32 v179, v88, v92, v179                             // 00000000CD34: D1CB00B3 06CEB958
	s_waitcnt lgkmcnt(8)                                       // 00000000CD3C: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[134:141], v[190:197], v[64:79]// 00000000CD40: D3AE0040 05037D86
	ds_read_b64_tr_b8 v[134:135], v177 offset:256              // 00000000CD48: D9C40100 860000B1
	ds_read_b64_tr_b8 v[136:137], v177 offset:1280             // 00000000CD50: D9C40500 880000B1
	ds_read_b64_tr_b8 v[138:139], v177 offset:2304             // 00000000CD58: D9C40900 8A0000B1
	ds_read_b64_tr_b8 v[140:141], v177 offset:3328             // 00000000CD60: D9C40D00 8C0000B1
	s_add_u32 m0, s72, s97                                     // 00000000CD68: 807C6148
	s_nop 0                                                    // 00000000CD6C: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000CD70: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[206:213], v[190:197], v[94:109]// 00000000CD78: D3AE005E 057B7DCE
	s_min_u32 s18, s17, s87                                    // 00000000CD80: 83925711
	s_add_u32 m0, s72, s83                                     // 00000000CD84: 807C5348
	s_nop 0                                                    // 00000000CD88: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000CD8C: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000CD94: 80140914
	s_add_u32 s17, s17, s99                                    // 00000000CD98: 80116311
	s_waitcnt lgkmcnt(8)                                       // 00000000CD9C: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[214:221], v[198:205], v[64:79]// 00000000CDA0: D3AE0040 05038DD6
	ds_read_b64_tr_b8 v[206:207], v177 offset:512              // 00000000CDA8: D9C40200 CE0000B1
	ds_read_b64_tr_b8 v[208:209], v177 offset:1536             // 00000000CDB0: D9C40600 D00000B1
	ds_read_b64_tr_b8 v[210:211], v177 offset:2560             // 00000000CDB8: D9C40A00 D20000B1
	ds_read_b64_tr_b8 v[212:213], v177 offset:3584             // 00000000CDC0: D9C40E00 D40000B1
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[222:229], v[198:205], v[94:109]// 00000000CDC8: D3AE005E 057B8DDE
	s_nop 3                                                    // 00000000CDD0: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000CDD4: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000CDD8: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000CDE0: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000CDE8: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000CDF0: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000CDF8: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000CE00: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000CE08: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000CE10: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[112:119], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000CE14: D3AC0000 000369AA D3AE0830 04C2A170
	ds_read_b64_tr_b8 v[112:113], v177 offset:768              // 00000000CE24: D9C40300 700000B1
	ds_read_b64_tr_b8 v[114:115], v177 offset:1792             // 00000000CE2C: D9C40700 720000B1
	ds_read_b64_tr_b8 v[116:117], v177 offset:2816             // 00000000CE34: D9C40B00 740000B1
	ds_read_b64_tr_b8 v[118:119], v177 offset:3840             // 00000000CE3C: D9C40F00 760000B1
	v_max_f32_e32 v89, v94, v95                                // 00000000CE44: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000CE48: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000CE50: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000CE58: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000CE60: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000CE68: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000CE70: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000CE78: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000CE80: D3AC0000 000369AA D3AE0820 0482A186
	v_max_f32_e32 v88, v88, v89                                // 00000000CE90: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000CE94: 7EB20358
	s_nop 1                                                    // 00000000CE98: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000CE9C: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000CEA0: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000CEA4: 0AB2B18E
	v_max_f32_e32 v89, v111, v89                               // 00000000CEA8: 16B2B36F
	v_sub_f32_e32 v90, v89, v111                               // 00000000CEAC: 04B4DF59
	v_cmp_lt_f32_e32 vcc, s91, v90                             // 00000000CEB0: 7C82B45B
	s_waitcnt lgkmcnt(0)                                       // 00000000CEB4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[206:213], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000CEB8: D3AC0000 000369AA D3AE0810 0442A1CE
	s_cmp_lg_u64 vcc, 0                                        // 00000000CEC8: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000CECC: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000CED0: 85158081
	v_cndmask_b32_e64 v178, v111, v89, s[18:19]                // 00000000CED4: D10000B2 004AB36F
	v_fma_f32 v88, v88, v142, -v178                            // 00000000CEDC: D1CB0058 86CB1D58
	v_floor_f32_e32 v88, v88                                   // 00000000CEE4: 7EB03F58
	v_med3_f32 v88, v88, s89, 0                                // 00000000CEE8: D1D60058 0200B358
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000CEF0: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[112:119], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000CEF4: D3AC0000 000369AA D3AE0800 0402A170
	v_add_u32_e32 v180, 0x7f, v89                              // 00000000CF04: 6968B2FF 0000007F
	v_add_f32_e32 v80, v178, v88                               // 00000000CF0C: 02A0B1B2
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000CF10: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000CF18: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000CF1C: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000CF24: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CF2C: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CF34: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CF3C: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CF44: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CF4C: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CF54: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CF5C: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CF64: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CF6C: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CF74: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CF7C: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CF84: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CF8C: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CF94: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000CF9C: BF068015
	s_cbranch_scc1 68                                          // 00000000CFA0: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26b4>
	v_sub_f32_e32 v96, v111, v178                              // 00000000CFA4: 04C1656F
	v_exp_f32_e32 v96, v96                                     // 00000000CFA8: 7EC04160
	s_nop 0                                                    // 00000000CFAC: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000CFB0: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000CFB8: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000CFC0: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000CFC8: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000CFD0: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000CFD8: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000CFE0: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000CFE8: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000CFF0: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000CFF8: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000D000: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000D008: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000D010: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000D018: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000D020: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000D028: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000D030: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000D038: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000D040: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000D048: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000D050: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000D058: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000D060: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000D068: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000D070: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000D078: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000D080: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000D088: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000D090: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000D098: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000D0A0: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000D0A8: D3B14000 0802C100
	v_mul_f32_e32 v179, v179, v96                              // 00000000D0B0: 0B66C1B3
	s_waitcnt vmcnt(3)                                         // 00000000D0B4: BF8C0F73
	s_barrier                                                  // 00000000D0B8: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000D0BC: 804E814E
	s_branch 64135                                             // 00000000D0C0: BF82FA87 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10e0>
