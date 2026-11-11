
/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261111/gpu-validation-ebddf9d/A/inspect/native.co:	file format elf64-amdgpu

Disassembly of section .text:

0000000000001b00 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE>:
	s_load_dwordx16 s[36:51], s[0:1], 0x0                      // 000000001B00: C0120900 00000000
	s_load_dwordx16 s[4:19], s[0:1], 0x40                      // 000000001B08: C0120100 00000040
	s_load_dwordx4 s[20:23], s[0:1], 0x80                      // 000000001B10: C00A0500 00000080
	s_load_dwordx2 s[24:25], s[0:1], 0x90                      // 000000001B18: C0060600 00000090
	v_bfe_u32 v175, v0, 5, 1                                   // 000000001B20: D1C800AF 02050B00
	v_lshrrev_b32_e32 v3, 2, v0                                // 000000001B28: 20060082
	v_and_b32_e32 v174, 31, v0                                 // 000000001B2C: 275C009F
	v_xor_b32_e32 v1, v175, v3                                 // 000000001B30: 2A0207AF
	s_movk_i32 s1, 0x60                                        // 000000001B34: B0010060
	v_lshlrev_b32_e32 v2, 7, v174                              // 000000001B38: 24055C87
	v_lshlrev_b32_e32 v1, 5, v1                                // 000000001B3C: 24020285
	v_and_or_b32 v1, v1, s1, v2                                // 000000001B40: D2010001 04080301
	v_readfirstlane_b32 s0, v0                                 // 000000001B48: 7E000500
	v_xor_b32_e32 v176, 64, v1                                 // 000000001B4C: 2B6002C0
	s_waitcnt lgkmcnt(0)                                       // 000000001B50: BF8CC07F
	s_cmp_eq_u64 s[20:21], 0                                   // 000000001B54: BF128014
	s_cbranch_scc1 14                                          // 000000001B58: BF85000E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x94>
	s_load_dword s1, s[20:21], 0x0                             // 000000001B5C: C002004A 00000000
	s_cmp_eq_u64 s[22:23], 0                                   // 000000001B64: BF128016
	s_cbranch_scc1 13                                          // 000000001B68: BF85000D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa0>
	s_load_dword s3, s[22:23], 0x0                             // 000000001B6C: C00200CB 00000000
	s_waitcnt lgkmcnt(0)                                       // 000000001B74: BF8CC07F
	v_mov_b32_e32 v2, s3                                       // 000000001B78: 7E040203
	v_mul_f32_e32 v4, s1, v2                                   // 000000001B7C: 0A080401
	s_cmp_eq_u64 s[24:25], 0                                   // 000000001B80: BF128018
	s_cbranch_scc1 10                                          // 000000001B84: BF85000A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb0>
	s_load_dword s16, s[24:25], 0x0                            // 000000001B88: C002040C 00000000
	s_branch 8                                                 // 000000001B90: BF820008 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb4>
	s_mov_b32 s1, 1.0                                          // 000000001B94: BE8100F2
	s_cmp_eq_u64 s[22:23], 0                                   // 000000001B98: BF128016
	s_cbranch_scc0 65523                                       // 000000001B9C: BF84FFF3 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6c>
	s_waitcnt lgkmcnt(0)                                       // 000000001BA0: BF8CC07F
	v_mov_b32_e32 v4, s1                                       // 000000001BA4: 7E080201
	s_cmp_eq_u64 s[24:25], 0                                   // 000000001BA8: BF128018
	s_cbranch_scc0 65526                                       // 000000001BAC: BF84FFF6 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x88>
	s_mov_b32 s16, 1.0                                         // 000000001BB0: BE9000F2
	s_lshr_b32 s1, s0, 6                                       // 000000001BB4: 8F018600
	v_and_b32_e32 v6, 1, v0                                    // 000000001BB8: 260C0081
	v_mov_b32_e32 v177, 0x7f                                   // 000000001BBC: 7F6202FF 0000007F
	v_mov_b32_e32 v178, 0xc1000000                             // 000000001BC4: 7F6402FF C1000000
	s_mov_b32 s68, 0xc2fe0000                                  // 000000001BCC: BEC400FF C2FE0000
	s_mov_b32 s69, 0x3e000000                                  // 000000001BD4: BEC500FF 3E000000
	v_mov_b32_e32 v2, 0xff800000                               // 000000001BDC: 7E0402FF FF800000
	v_bfe_u32 v5, v0, 1, 2                                     // 000000001BE4: D1C80005 02090300
	s_mov_b32 s3, 1                                            // 000000001BEC: BE830081
	v_lshlrev_b32_e32 v7, 4, v6                                // 000000001BF0: 240E0C84
	v_lshrrev_b32_e32 v179, 3, v0                              // 000000001BF4: 21660083
	v_lshrrev_b32_e32 v8, 5, v0                                // 000000001BF8: 20100085
	v_xor_b32_e32 v8, v5, v8                                   // 000000001BFC: 2A101105
	v_and_b32_e32 v8, 3, v8                                    // 000000001C00: 26101083
	v_lshlrev_b32_e32 v8, 5, v8                                // 000000001C04: 24101085
	v_or_b32_e32 v8, v8, v7                                    // 000000001C08: 28100F08
	v_mad_u32_u24 v180, s8, v179, v8                           // 000000001C0C: D1C300B4 04236608
	v_or_b32_e32 v8, 0x200, v0                                 // 000000001C14: 281000FF 00000200
	v_lshrrev_b32_e32 v9, 3, v8                                // 000000001C1C: 20121083
	v_lshrrev_b32_e32 v10, 5, v8                               // 000000001C20: 20141085
	v_xor_b32_e32 v5, v5, v10                                  // 000000001C24: 2A0A1505
	v_and_b32_e32 v5, 3, v5                                    // 000000001C28: 260A0A83
	v_lshlrev_b32_e32 v5, 5, v5                                // 000000001C2C: 240A0A85
	v_or_b32_e32 v5, v5, v7                                    // 000000001C30: 280A0F05
	v_mad_u32_u24 v181, s8, v9, v5                             // 000000001C34: D1C300B5 04161208
	v_lshrrev_b32_e32 v5, 7, v0                                // 000000001C3C: 200A0087
	v_bfe_u32 v6, v0, 6, 1                                     // 000000001C40: D1C80006 02050D00
	v_bfe_u32 v7, v0, 2, 1                                     // 000000001C48: D1C80007 02050500
	v_bfe_u32 v10, v0, 3, 3                                    // 000000001C50: D1C8000A 020D0700
	v_and_b32_e32 v9, 3, v0                                    // 000000001C58: 26120083
	v_lshlrev_b32_e32 v11, 5, v5                               // 000000001C5C: 24160A85
	v_lshlrev_b32_e32 v12, 4, v6                               // 000000001C60: 24180C84
	v_lshlrev_b32_e32 v13, 3, v7                               // 000000001C64: 241A0E83
	v_lshlrev_b32_e32 v14, 4, v10                              // 000000001C68: 241C1484
	s_mov_b32 s17, 0                                           // 000000001C6C: BE910080
	v_or_b32_e32 v15, v11, v12                                 // 000000001C70: 281E190B
	v_or_b32_e32 v15, v15, v13                                 // 000000001C74: 281E1B0F
	v_or_b32_e32 v15, v15, v9                                  // 000000001C78: 281E130F
	v_mad_u32_u24 v182, s8, v15, v14                           // 000000001C7C: D1C300B6 043A1E08
	v_or_b32_e32 v5, 4, v11                                    // 000000001C84: 280A1684
	v_or_b32_e32 v5, v5, v12                                   // 000000001C88: 280A1905
	v_or_b32_e32 v5, v5, v13                                   // 000000001C8C: 280A1B05
	v_or_b32_e32 v5, v5, v9                                    // 000000001C90: 280A1305
	v_mad_u32_u24 v183, s8, v5, v14                            // 000000001C94: D1C300B7 043A0A08
	s_lshl_b32 s70, s1, 10                                     // 000000001C9C: 8E468A01
	s_add_u32 s71, s70, 0x10000                                // 000000001CA0: 8047FF46 00010000
	s_cmp_ge_u32 s2, s51                                       // 000000001CA8: BF093302
	s_cbranch_scc1 8592                                        // 000000001CAC: BF852190 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x87f0>
	s_lshl_b32 s72, s8, 7                                      // 000000001CB0: 8E488708
	s_lshr_b32 s73, s0, 8                                      // 000000001CB4: 8F498800
	s_and_b32 s33, s1, 3                                       // 000000001CB8: 86218301
	s_cmp_eq_u32 s6, 0                                         // 000000001CBC: BF068006
	s_cselect_b32 s6, s1, s33                                  // 000000001CC0: 85062101
	s_cselect_b32 s78, 0, s73                                  // 000000001CC4: 854E4980
	s_lshl_b32 s0, s2, 5                                       // 000000001CC8: 8E008502
	s_load_dwordx8 s[52:59], s[46:47], s0 offset:0x0           // 000000001CCC: C00E4D17 00000000
	s_mul_i32 s74, s78, s10                                    // 000000001CD4: 924A0A4E
	s_mul_i32 s62, s8, s13                                     // 000000001CD8: 923E0D08
	s_mov_b32 s63, 0x110000                                    // 000000001CDC: BEBF00FF 00110000
	s_mov_b32 s66, s62                                         // 000000001CE4: BEC2003E
	s_waitcnt lgkmcnt(0)                                       // 000000001CE8: BF8CC07F
	s_add_u32 s0, s36, s54                                     // 000000001CEC: 80003624
	s_addc_u32 s1, s37, s55                                    // 000000001CF0: 82013725
	s_add_u32 s0, s0, s74                                      // 000000001CF4: 80004A00
	s_addc_u32 s1, s1, 0                                       // 000000001CF8: 82018001
	s_add_u32 s60, s38, s56                                    // 000000001CFC: 803C3826
	s_addc_u32 s61, s39, s57                                   // 000000001D00: 823D3927
	s_add_u32 s64, s40, s56                                    // 000000001D04: 80403828
	s_addc_u32 s65, s41, s57                                   // 000000001D08: 82413929
	s_not_b32 s3, s52                                          // 000000001D0C: BE830434
	s_add_u32 s3, s4, s3                                       // 000000001D10: 80030304
	s_mul_i32 s10, s3, s5                                      // 000000001D14: 920A0503
	s_lshl_b32 s3, s3, 5                                       // 000000001D18: 8E038503
	s_lshr_b32 s75, s13, 7                                     // 000000001D1C: 8F4B870D
	s_add_u32 s10, s10, s6                                     // 000000001D20: 800A060A
	s_add_u32 s13, s3, 32                                      // 000000001D24: 800DA003
	s_lshl_b32 s3, s10, 5                                      // 000000001D28: 8E03850A
	s_mul_i32 s10, s13, s5                                     // 000000001D2C: 920A050D
	s_addk_i32 s10, 0x60                                       // 000000001D30: B70A0060
	s_lshr_b32 s10, s10, 7                                     // 000000001D34: 8F0A870A
	v_or_b32_e32 v5, s3, v174                                  // 000000001D38: 280B5C03
	s_min_u32 s79, s75, s10                                    // 000000001D3C: 83CF0A4B
	s_mov_b32 s67, s63                                         // 000000001D40: BEC3003F
	v_mul_lo_u32 v5, v5, s7                                    // 000000001D44: D2850005 00000F05
	v_lshlrev_b32_e32 v184, 5, v175                            // 000000001D4C: 25715E85
	v_add_u32_e32 v5, v184, v5                                 // 000000001D50: 680A0BB8
	global_load_dwordx4 v[228:231], v5, s[0:1]                 // 000000001D54: DC5C8000 E4000005
	global_load_dwordx4 v[232:235], v5, s[0:1] offset:16       // 000000001D5C: DC5C8010 E8000005
	global_load_dwordx4 v[236:239], v5, s[0:1] offset:64       // 000000001D64: DC5C8040 EC000005
	global_load_dwordx4 v[240:243], v5, s[0:1] offset:80       // 000000001D6C: DC5C8050 F0000005
	s_add_u32 m0, s70, 0                                       // 000000001D74: 807C8046
	s_nop 0                                                    // 000000001D78: BF800000
	buffer_load_dwordx4 v180, s[60:63], 0 offen lds            // 000000001D7C: E05D1000 800F00B4
	s_add_u32 m0, s70, 0x2000                                  // 000000001D84: 807CFF46 00002000
	s_nop 0                                                    // 000000001D8C: BF800000
	buffer_load_dwordx4 v181, s[60:63], 0 offen lds            // 000000001D90: E05D1000 800F00B5
	s_add_u32 m0, s71, 0                                       // 000000001D98: 807C8047
	s_nop 0                                                    // 000000001D9C: BF800000
	buffer_load_dwordx4 v182, s[64:67], 0 offen lds            // 000000001DA0: E05D1000 801000B6
	s_add_u32 m0, s71, 0x2000                                  // 000000001DA8: 807CFF47 00002000
	s_cmp_lt_u32 s79, 2                                        // 000000001DB0: BF0A824F
	buffer_load_dwordx4 v183, s[64:67], 0 offen lds            // 000000001DB4: E05D1000 801000B7
	s_cbranch_scc1 11                                          // 000000001DBC: BF85000B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2ec>
	s_or_b32 s0, s70, 0x4000                                   // 000000001DC0: 8700FF46 00004000
	s_add_u32 m0, s0, 0                                        // 000000001DC8: 807C8000
	s_nop 0                                                    // 000000001DCC: BF800000
	buffer_load_dwordx4 v180, s[60:63], s72 offen lds          // 000000001DD0: E05D1000 480F00B4
	s_add_u32 m0, s0, 0x2000                                   // 000000001DD8: 807CFF00 00002000
	s_nop 0                                                    // 000000001DE0: BF800000
	buffer_load_dwordx4 v181, s[60:63], s72 offen lds          // 000000001DE4: E05D1000 480F00B5
	s_waitcnt vmcnt(0)                                         // 000000001DEC: BF8C0F70
	s_barrier                                                  // 000000001DF0: BF8A0000
	s_cmp_eq_u32 s73, 0                                        // 000000001DF4: BF068049
	s_mov_b32 s76, 0                                           // 000000001DF8: BECC0080
	s_cbranch_scc1 1                                           // 000000001DFC: BF850001 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x304>
	s_barrier                                                  // 000000001E00: BF8A0000
	s_add_u32 s0, s42, s58                                     // 000000001E04: 80003A2A
	s_mul_i32 s77, s78, s11                                    // 000000001E08: 924D0B4E
	v_mul_f32_e32 v187, s49, v4                                // 000000001E0C: 0B760831
	v_mul_f32_e32 v188, s48, v4                                // 000000001E10: 0B780830
	v_mov_b32_e32 v4, s16                                      // 000000001E14: 7E080210
	v_lshlrev_b32_e32 v6, 3, v0                                // 000000001E18: 240C0083
	s_addc_u32 s10, s43, s59                                   // 000000001E1C: 820A3B2B
	s_mul_i32 s78, s78, s12                                    // 000000001E20: 924E0C4E
	v_lshlrev_b32_e32 v5, 13, v175                             // 000000001E24: 240B5E8D
	s_mov_b32 s1, 0x10000                                      // 000000001E28: BE8100FF 00010000
	v_mul_f32_e32 v186, s15, v4                                // 000000001E30: 0B74080F
	v_and_b32_e32 v4, 0xf8, v6                                 // 000000001E34: 26080CFF 000000F8
	s_add_u32 s0, s0, s77                                      // 000000001E3C: 80004D00
	v_or3_b32 v189, v4, v5, s1                                 // 000000001E40: D20200BD 00060B04
	s_addc_u32 s1, s10, 0                                      // 000000001E48: 8201800A
	s_add_u32 s10, s53, s78                                    // 000000001E4C: 800A4E35
	s_lshl_b32 s10, s10, 2                                     // 000000001E50: 8E0A820A
	v_lshrrev_b32_e32 v7, 4, v0                                // 000000001E54: 200E0084
	s_add_u32 s15, s44, s10                                    // 000000001E58: 800F0A2C
	v_xor_b32_e32 v3, v7, v3                                   // 000000001E5C: 2A060707
	s_addc_u32 s16, s45, 0                                     // 000000001E60: 8210802D
	v_and_b32_e32 v3, 1, v3                                    // 000000001E64: 26060681
	s_cmp_eq_u64 s[44:45], 0                                   // 000000001E68: BF12802C
	v_mov_b32_e32 v8, 0x38383838                               // 000000001E6C: 7E1002FF 38383838
	v_cmp_eq_u32_e32 vcc, 0, v3                                // 000000001E74: 7D940680
	s_cselect_b64 s[12:13], -1, 0                              // 000000001E78: 858C80C1
	s_and_b64 s[10:11], s[12:13], exec                         // 000000001E7C: 868A7E0C
	v_cndmask_b32_e32 v146, 0, v8, vcc                         // 000000001E80: 01241080
	v_and_b32_e32 v185, 63, v0                                 // 000000001E84: 277200BF
	s_mov_b32 s48, 0                                           // 000000001E88: BEB00080
	v_mov_b32_e32 v147, v146                                   // 000000001E8C: 7F260392
	v_mov_b32_e32 v148, v146                                   // 000000001E90: 7F280392
	v_mov_b32_e32 v149, v146                                   // 000000001E94: 7F2A0392
	v_mov_b32_e32 v150, v146                                   // 000000001E98: 7F2C0392
	v_mov_b32_e32 v151, v146                                   // 000000001E9C: 7F2E0392
	v_mov_b32_e32 v152, v146                                   // 000000001EA0: 7F300392
	v_mov_b32_e32 v153, v146                                   // 000000001EA4: 7F320392
	s_cselect_b32 s19, 0, s16                                  // 000000001EA8: 85131080
	s_cselect_b32 s18, 0, s15                                  // 000000001EAC: 85120F80
	s_lshr_b32 s15, s3, 7                                      // 000000001EB0: 8F0F8703
	s_lshl_b32 s20, s76, 14                                    // 000000001EB4: 8E148E4C
	s_and_b32 s21, s20, 0xc000                                 // 000000001EB8: 8615FF14 0000C000
	v_or_b32_e32 v3, s21, v1                                   // 000000001EC0: 28060215
	s_waitcnt vmcnt(8)                                         // 000000001EC4: BF8C0F78
	ds_read_b128 v[12:15], v3                                  // 000000001EC8: D9FE0000 0C000003
	ds_read_b128 v[16:19], v3 offset:16                        // 000000001ED0: D9FE0010 10000003
	ds_read_b128 v[4:7], v3 offset:4096                        // 000000001ED8: D9FE1000 04000003
	ds_read_b128 v[8:11], v3 offset:4112                       // 000000001EE0: D9FE1010 08000003
	s_mov_b64 s[10:11], s[18:19]                               // 000000001EE8: BE8A0112
	s_cmp_eq_u32 s15, 0                                        // 000000001EEC: BF06800F
	s_mov_b32 s16, 0                                           // 000000001EF0: BE900080
	s_cbranch_scc1 145                                         // 000000001EF4: BF850091 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x63c>
	s_setprio 1                                                // 000000001EF8: BF8F0001
	v_add_u32_e32 v3, s21, v1                                  // 000000001EFC: 68060215
	ds_read_b128 v[20:23], v3 offset:8192                      // 000000001F00: D9FE2000 14000003
	ds_read_b128 v[24:27], v3 offset:8208                      // 000000001F08: D9FE2010 18000003
	ds_read_b128 v[28:31], v3 offset:12288                     // 000000001F10: D9FE3000 1C000003
	ds_read_b128 v[32:35], v3 offset:12304                     // 000000001F18: D9FE3010 20000003
	s_waitcnt lgkmcnt(4)                                       // 000000001F20: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[12:19], v[228:235], 0// 000000001F24: D3AE0082 0203C90C
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[4:11], v[228:235], 0// 000000001F2C: D3AE0072 0203C904
	v_add_u32_e32 v3, s21, v176                                // 000000001F34: 68076015
	ds_read_b128 v[12:15], v3                                  // 000000001F38: D9FE0000 0C000003
	ds_read_b128 v[16:19], v3 offset:16                        // 000000001F40: D9FE0010 10000003
	ds_read_b128 v[4:7], v3 offset:4096                        // 000000001F48: D9FE1000 04000003
	ds_read_b128 v[8:11], v3 offset:4112                       // 000000001F50: D9FE1010 08000003
	s_waitcnt lgkmcnt(4)                                       // 000000001F58: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[20:27], v[228:235], 0// 000000001F5C: D3AE0062 0203C914
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[28:35], v[228:235], 0// 000000001F64: D3AE0052 0203C91C
	ds_read_b128 v[20:23], v3 offset:8192                      // 000000001F6C: D9FE2000 14000003
	ds_read_b128 v[24:27], v3 offset:8208                      // 000000001F74: D9FE2010 18000003
	ds_read_b128 v[28:31], v3 offset:12288                     // 000000001F7C: D9FE3000 1C000003
	ds_read_b128 v[32:35], v3 offset:12304                     // 000000001F84: D9FE3010 20000003
	s_waitcnt lgkmcnt(4)                                       // 000000001F8C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[12:19], v[236:243], v[130:145]// 000000001F90: D3AE0082 060BD90C
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[4:11], v[236:243], v[114:129]// 000000001F98: D3AE0072 05CBD904
	s_waitcnt lgkmcnt(0)                                       // 000000001FA0: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[20:27], v[236:243], v[98:113]// 000000001FA4: D3AE0062 058BD914
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[28:35], v[236:243], v[82:97]// 000000001FAC: D3AE0052 054BD91C
	s_nop 0                                                    // 000000001FB4: BF800000
	v_max_f32_e32 v3, v130, v131                               // 000000001FB8: 16070782
	v_max3_f32 v3, v132, v133, v3                              // 000000001FBC: D1D30003 040F0B84
	v_max3_f32 v3, v134, v135, v3                              // 000000001FC4: D1D30003 040F0F86
	v_max3_f32 v3, v136, v137, v3                              // 000000001FCC: D1D30003 040F1388
	v_max3_f32 v3, v138, v139, v3                              // 000000001FD4: D1D30003 040F178A
	v_max3_f32 v3, v140, v141, v3                              // 000000001FDC: D1D30003 040F1B8C
	v_max3_f32 v3, v142, v143, v3                              // 000000001FE4: D1D30003 040F1F8E
	v_max3_f32 v3, v144, v145, v3                              // 000000001FEC: D1D30003 040F2390
	v_max_f32_e32 v4, v114, v115                               // 000000001FF4: 1608E772
	v_max3_f32 v4, v116, v117, v4                              // 000000001FF8: D1D30004 0412EB74
	v_max3_f32 v4, v118, v119, v4                              // 000000002000: D1D30004 0412EF76
	v_max3_f32 v4, v120, v121, v4                              // 000000002008: D1D30004 0412F378
	v_max3_f32 v4, v122, v123, v4                              // 000000002010: D1D30004 0412F77A
	v_max3_f32 v4, v124, v125, v4                              // 000000002018: D1D30004 0412FB7C
	v_max3_f32 v4, v126, v127, v4                              // 000000002020: D1D30004 0412FF7E
	v_max3_f32 v5, v128, v129, v4                              // 000000002028: D1D30005 04130380
	v_max_f32_e32 v4, v98, v99                                 // 000000002030: 1608C762
	v_max3_f32 v4, v100, v101, v4                              // 000000002034: D1D30004 0412CB64
	v_max3_f32 v4, v102, v103, v4                              // 00000000203C: D1D30004 0412CF66
	v_max3_f32 v4, v104, v105, v4                              // 000000002044: D1D30004 0412D368
	v_max3_f32 v4, v106, v107, v4                              // 00000000204C: D1D30004 0412D76A
	v_max3_f32 v4, v108, v109, v4                              // 000000002054: D1D30004 0412DB6C
	v_max3_f32 v4, v110, v111, v4                              // 00000000205C: D1D30004 0412DF6E
	v_max3_f32 v4, v112, v113, v4                              // 000000002064: D1D30004 0412E370
	v_max_f32_e32 v6, v82, v83                                 // 00000000206C: 160CA752
	v_max3_f32 v6, v84, v85, v6                                // 000000002070: D1D30006 041AAB54
	v_max3_f32 v6, v86, v87, v6                                // 000000002078: D1D30006 041AAF56
	v_max3_f32 v6, v88, v89, v6                                // 000000002080: D1D30006 041AB358
	v_max3_f32 v6, v90, v91, v6                                // 000000002088: D1D30006 041AB75A
	v_max3_f32 v6, v92, v93, v6                                // 000000002090: D1D30006 041ABB5C
	v_max3_f32 v6, v94, v95, v6                                // 000000002098: D1D30006 041ABF5E
	v_max3_f32 v6, v96, v97, v6                                // 0000000020A0: D1D30006 041AC360
	v_max_f32_e32 v4, v4, v6                                   // 0000000020A8: 16080D04
	v_max_f32_e32 v6, v3, v5                                   // 0000000020AC: 160C0B03
	v_mov_b32_e32 v7, v6                                       // 0000000020B0: 7E0E0306
	s_nop 1                                                    // 0000000020B4: BF800001
	v_permlane32_swap_b32_e32 v6, v7                           // 0000000020B8: 7E0CB507
	v_mov_b32_e32 v5, v4                                       // 0000000020BC: 7E0A0304
	s_nop 1                                                    // 0000000020C0: BF800001
	v_permlane32_swap_b32_e32 v4, v5                           // 0000000020C4: 7E08B505
	v_max_f32_e32 v4, v4, v5                                   // 0000000020C8: 16080B04
	v_max_f32_e32 v3, v6, v7                                   // 0000000020CC: 16060F06
	v_max_f32_e32 v5, v3, v4                                   // 0000000020D0: 160A0903
	v_mul_f32_e32 v16, v187, v5                                // 0000000020D4: 0A200BBB
	v_fma_f32 v3, v3, v187, -v16                               // 0000000020D8: D1CB0003 84437703
	v_floor_f32_e32 v3, v3                                     // 0000000020E0: 7E063F03
	v_med3_f32 v5, v3, s68, 0                                  // 0000000020E4: D1D60005 02008903
	v_cvt_i32_f32_e32 v3, v5                                   // 0000000020EC: 7E061105
	v_add_u32_e32 v191, 0x7f, v3                               // 0000000020F0: 697E06FF 0000007F
	v_lshlrev_b32_e32 v3, 23, v191                             // 0000000020F8: 24077E97
	v_fma_f32 v4, v4, v187, -v16                               // 0000000020FC: D1CB0004 84437704
	v_floor_f32_e32 v4, v4                                     // 000000002104: 7E083F04
	v_med3_f32 v4, v4, s68, 0                                  // 000000002108: D1D60004 02008904
	v_cvt_i32_f32_e32 v6, v4                                   // 000000002110: 7E0C1104
	v_add_u32_e32 v17, 0x7f, v6                                // 000000002114: 68220CFF 0000007F
	v_lshlrev_b32_e32 v194, 23, v17                            // 00000000211C: 25842297
	v_fma_f32 v6, v16, v178, s50                               // 000000002120: D1CB0006 00CB6510
	v_fma_f32 v172, v5, v178, v6                               // 000000002128: D1CB00AC 041B6505
	v_fma_f32 v170, v4, v178, v6                               // 000000002130: D1CB00AA 041B6504
	s_branch 438                                               // 000000002138: BF8201B6 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd14>
	s_setprio 1                                                // 00000000213C: BF8F0001
	v_add_u32_e32 v3, s21, v1                                  // 000000002140: 68060215
	ds_read_b128 v[20:23], v3 offset:8192                      // 000000002144: D9FE2000 14000003
	ds_read_b128 v[24:27], v3 offset:8208                      // 00000000214C: D9FE2010 18000003
	ds_read_b128 v[28:31], v3 offset:12288                     // 000000002154: D9FE3000 1C000003
	ds_read_b128 v[32:35], v3 offset:12304                     // 00000000215C: D9FE3010 20000003
	s_waitcnt lgkmcnt(4)                                       // 000000002164: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[12:19], v[228:235], 0// 000000002168: D3AE0082 0203C90C
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[4:11], v[228:235], 0// 000000002170: D3AE0072 0203C904
	v_add_u32_e32 v3, s21, v176                                // 000000002178: 68076015
	ds_read_b128 v[12:15], v3                                  // 00000000217C: D9FE0000 0C000003
	ds_read_b128 v[16:19], v3 offset:16                        // 000000002184: D9FE0010 10000003
	ds_read_b128 v[4:7], v3 offset:4096                        // 00000000218C: D9FE1000 04000003
	ds_read_b128 v[8:11], v3 offset:4112                       // 000000002194: D9FE1010 08000003
	s_waitcnt lgkmcnt(4)                                       // 00000000219C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[20:27], v[228:235], 0// 0000000021A0: D3AE0062 0203C914
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[28:35], v[228:235], 0// 0000000021A8: D3AE0052 0203C91C
	ds_read_b128 v[20:23], v3 offset:8192                      // 0000000021B0: D9FE2000 14000003
	ds_read_b128 v[24:27], v3 offset:8208                      // 0000000021B8: D9FE2010 18000003
	ds_read_b128 v[28:31], v3 offset:12288                     // 0000000021C0: D9FE3000 1C000003
	ds_read_b128 v[32:35], v3 offset:12304                     // 0000000021C8: D9FE3010 20000003
	s_waitcnt lgkmcnt(4)                                       // 0000000021D0: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[12:19], v[236:243], v[130:145]// 0000000021D4: D3AE0082 060BD90C
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[4:11], v[236:243], v[114:129]// 0000000021DC: D3AE0072 05CBD904
	s_waitcnt lgkmcnt(0)                                       // 0000000021E4: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[20:27], v[236:243], v[98:113]// 0000000021E8: D3AE0062 058BD914
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[28:35], v[236:243], v[82:97]// 0000000021F0: D3AE0052 054BD91C
	s_sub_u32 s16, s3, s16                                     // 0000000021F8: 80901003
	s_sub_i32 s16, s16, 0                                      // 0000000021FC: 81908010
	s_cmp_ge_i32 s16, 32                                       // 000000002200: BF03A010
	s_cbranch_scc1 69                                          // 000000002204: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x81c>
	s_cmp_lt_i32 s16, 0                                        // 000000002208: BF048010
	s_cbranch_scc1 724                                         // 00000000220C: BF8502D4 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1260>
	v_add_u32_e32 v3, s16, v174                                // 000000002210: 68075C10
	v_and_b32_e32 v4, 4, v179                                  // 000000002214: 26096684
	v_sub_u32_e32 v3, v3, v4                                   // 000000002218: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 00000000221C: 7D880680
	s_nop 2                                                    // 000000002220: BF800002
	v_cndmask_b32_e64 v130, v130, v2, vcc                      // 000000002224: D1000082 01AA0582
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 00000000222C: 7D880681
	s_nop 1                                                    // 000000002230: BF800001
	v_cndmask_b32_e64 v131, v131, v2, vcc                      // 000000002234: D1000083 01AA0583
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 00000000223C: 7D880682
	s_nop 1                                                    // 000000002240: BF800001
	v_cndmask_b32_e64 v132, v132, v2, vcc                      // 000000002244: D1000084 01AA0584
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 00000000224C: 7D880683
	s_nop 1                                                    // 000000002250: BF800001
	v_cndmask_b32_e64 v133, v133, v2, vcc                      // 000000002254: D1000085 01AA0585
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 00000000225C: 7D880688
	s_nop 1                                                    // 000000002260: BF800001
	v_cndmask_b32_e64 v134, v134, v2, vcc                      // 000000002264: D1000086 01AA0586
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 00000000226C: 7D880689
	s_nop 1                                                    // 000000002270: BF800001
	v_cndmask_b32_e64 v135, v135, v2, vcc                      // 000000002274: D1000087 01AA0587
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 00000000227C: 7D88068A
	s_nop 1                                                    // 000000002280: BF800001
	v_cndmask_b32_e64 v136, v136, v2, vcc                      // 000000002284: D1000088 01AA0588
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 00000000228C: 7D88068B
	s_nop 1                                                    // 000000002290: BF800001
	v_cndmask_b32_e64 v137, v137, v2, vcc                      // 000000002294: D1000089 01AA0589
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 00000000229C: 7D880690
	s_nop 1                                                    // 0000000022A0: BF800001
	v_cndmask_b32_e64 v138, v138, v2, vcc                      // 0000000022A4: D100008A 01AA058A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 0000000022AC: 7D880691
	s_nop 1                                                    // 0000000022B0: BF800001
	v_cndmask_b32_e64 v139, v139, v2, vcc                      // 0000000022B4: D100008B 01AA058B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 0000000022BC: 7D880692
	s_nop 1                                                    // 0000000022C0: BF800001
	v_cndmask_b32_e64 v140, v140, v2, vcc                      // 0000000022C4: D100008C 01AA058C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 0000000022CC: 7D880693
	s_nop 1                                                    // 0000000022D0: BF800001
	v_cndmask_b32_e64 v141, v141, v2, vcc                      // 0000000022D4: D100008D 01AA058D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 0000000022DC: 7D880698
	s_nop 1                                                    // 0000000022E0: BF800001
	v_cndmask_b32_e64 v142, v142, v2, vcc                      // 0000000022E4: D100008E 01AA058E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 0000000022EC: 7D880699
	s_nop 1                                                    // 0000000022F0: BF800001
	v_cndmask_b32_e64 v143, v143, v2, vcc                      // 0000000022F4: D100008F 01AA058F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 0000000022FC: 7D88069A
	s_nop 1                                                    // 000000002300: BF800001
	v_cndmask_b32_e64 v144, v144, v2, vcc                      // 000000002304: D1000090 01AA0590
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 00000000230C: 7D88069B
	s_nop 1                                                    // 000000002310: BF800001
	v_cndmask_b32_e64 v145, v145, v2, vcc                      // 000000002314: D1000091 01AA0591
	s_mov_b32 s18, 0                                           // 00000000231C: BE920080
	s_sub_u32 s16, s3, s18                                     // 000000002320: 80901203
	s_sub_i32 s16, s16, 32                                     // 000000002324: 8190A010
	s_cmp_ge_i32 s16, 32                                       // 000000002328: BF03A010
	s_cbranch_scc1 69                                          // 00000000232C: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x944>
	s_cmp_lt_i32 s16, 0                                        // 000000002330: BF048010
	s_cbranch_scc1 674                                         // 000000002334: BF8502A2 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x12c0>
	v_add_u32_e32 v3, s16, v174                                // 000000002338: 68075C10
	v_and_b32_e32 v4, 4, v179                                  // 00000000233C: 26096684
	v_sub_u32_e32 v3, v3, v4                                   // 000000002340: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 000000002344: 7D880680
	s_nop 1                                                    // 000000002348: BF800001
	v_cndmask_b32_e64 v114, v114, v2, vcc                      // 00000000234C: D1000072 01AA0572
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 000000002354: 7D880681
	s_nop 1                                                    // 000000002358: BF800001
	v_cndmask_b32_e64 v115, v115, v2, vcc                      // 00000000235C: D1000073 01AA0573
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 000000002364: 7D880682
	s_nop 1                                                    // 000000002368: BF800001
	v_cndmask_b32_e64 v116, v116, v2, vcc                      // 00000000236C: D1000074 01AA0574
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 000000002374: 7D880683
	s_nop 1                                                    // 000000002378: BF800001
	v_cndmask_b32_e64 v117, v117, v2, vcc                      // 00000000237C: D1000075 01AA0575
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 000000002384: 7D880688
	s_nop 1                                                    // 000000002388: BF800001
	v_cndmask_b32_e64 v118, v118, v2, vcc                      // 00000000238C: D1000076 01AA0576
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 000000002394: 7D880689
	s_nop 1                                                    // 000000002398: BF800001
	v_cndmask_b32_e64 v119, v119, v2, vcc                      // 00000000239C: D1000077 01AA0577
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 0000000023A4: 7D88068A
	s_nop 1                                                    // 0000000023A8: BF800001
	v_cndmask_b32_e64 v120, v120, v2, vcc                      // 0000000023AC: D1000078 01AA0578
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 0000000023B4: 7D88068B
	s_nop 1                                                    // 0000000023B8: BF800001
	v_cndmask_b32_e64 v121, v121, v2, vcc                      // 0000000023BC: D1000079 01AA0579
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 0000000023C4: 7D880690
	s_nop 1                                                    // 0000000023C8: BF800001
	v_cndmask_b32_e64 v122, v122, v2, vcc                      // 0000000023CC: D100007A 01AA057A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 0000000023D4: 7D880691
	s_nop 1                                                    // 0000000023D8: BF800001
	v_cndmask_b32_e64 v123, v123, v2, vcc                      // 0000000023DC: D100007B 01AA057B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 0000000023E4: 7D880692
	s_nop 1                                                    // 0000000023E8: BF800001
	v_cndmask_b32_e64 v124, v124, v2, vcc                      // 0000000023EC: D100007C 01AA057C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 0000000023F4: 7D880693
	s_nop 1                                                    // 0000000023F8: BF800001
	v_cndmask_b32_e64 v125, v125, v2, vcc                      // 0000000023FC: D100007D 01AA057D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 000000002404: 7D880698
	s_nop 1                                                    // 000000002408: BF800001
	v_cndmask_b32_e64 v126, v126, v2, vcc                      // 00000000240C: D100007E 01AA057E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 000000002414: 7D880699
	s_nop 1                                                    // 000000002418: BF800001
	v_cndmask_b32_e64 v127, v127, v2, vcc                      // 00000000241C: D100007F 01AA057F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 000000002424: 7D88069A
	s_nop 1                                                    // 000000002428: BF800001
	v_cndmask_b32_e64 v128, v128, v2, vcc                      // 00000000242C: D1000080 01AA0580
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 000000002434: 7D88069B
	s_nop 1                                                    // 000000002438: BF800001
	v_cndmask_b32_e64 v129, v129, v2, vcc                      // 00000000243C: D1000081 01AA0581
	s_sub_u32 s16, s3, s18                                     // 000000002444: 80901203
	s_sub_i32 s16, s16, 64                                     // 000000002448: 8190C010
	s_cmp_ge_i32 s16, 32                                       // 00000000244C: BF03A010
	s_cbranch_scc1 69                                          // 000000002450: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa68>
	s_cmp_lt_i32 s16, 0                                        // 000000002454: BF048010
	s_cbranch_scc1 625                                         // 000000002458: BF850271 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1320>
	v_add_u32_e32 v3, s16, v174                                // 00000000245C: 68075C10
	v_and_b32_e32 v4, 4, v179                                  // 000000002460: 26096684
	v_sub_u32_e32 v3, v3, v4                                   // 000000002464: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 000000002468: 7D880680
	s_nop 1                                                    // 00000000246C: BF800001
	v_cndmask_b32_e64 v98, v98, v2, vcc                        // 000000002470: D1000062 01AA0562
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 000000002478: 7D880681
	s_nop 1                                                    // 00000000247C: BF800001
	v_cndmask_b32_e64 v99, v99, v2, vcc                        // 000000002480: D1000063 01AA0563
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 000000002488: 7D880682
	s_nop 1                                                    // 00000000248C: BF800001
	v_cndmask_b32_e64 v100, v100, v2, vcc                      // 000000002490: D1000064 01AA0564
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 000000002498: 7D880683
	s_nop 1                                                    // 00000000249C: BF800001
	v_cndmask_b32_e64 v101, v101, v2, vcc                      // 0000000024A0: D1000065 01AA0565
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 0000000024A8: 7D880688
	s_nop 1                                                    // 0000000024AC: BF800001
	v_cndmask_b32_e64 v102, v102, v2, vcc                      // 0000000024B0: D1000066 01AA0566
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 0000000024B8: 7D880689
	s_nop 1                                                    // 0000000024BC: BF800001
	v_cndmask_b32_e64 v103, v103, v2, vcc                      // 0000000024C0: D1000067 01AA0567
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 0000000024C8: 7D88068A
	s_nop 1                                                    // 0000000024CC: BF800001
	v_cndmask_b32_e64 v104, v104, v2, vcc                      // 0000000024D0: D1000068 01AA0568
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 0000000024D8: 7D88068B
	s_nop 1                                                    // 0000000024DC: BF800001
	v_cndmask_b32_e64 v105, v105, v2, vcc                      // 0000000024E0: D1000069 01AA0569
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 0000000024E8: 7D880690
	s_nop 1                                                    // 0000000024EC: BF800001
	v_cndmask_b32_e64 v106, v106, v2, vcc                      // 0000000024F0: D100006A 01AA056A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 0000000024F8: 7D880691
	s_nop 1                                                    // 0000000024FC: BF800001
	v_cndmask_b32_e64 v107, v107, v2, vcc                      // 000000002500: D100006B 01AA056B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 000000002508: 7D880692
	s_nop 1                                                    // 00000000250C: BF800001
	v_cndmask_b32_e64 v108, v108, v2, vcc                      // 000000002510: D100006C 01AA056C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 000000002518: 7D880693
	s_nop 1                                                    // 00000000251C: BF800001
	v_cndmask_b32_e64 v109, v109, v2, vcc                      // 000000002520: D100006D 01AA056D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 000000002528: 7D880698
	s_nop 1                                                    // 00000000252C: BF800001
	v_cndmask_b32_e64 v110, v110, v2, vcc                      // 000000002530: D100006E 01AA056E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 000000002538: 7D880699
	s_nop 1                                                    // 00000000253C: BF800001
	v_cndmask_b32_e64 v111, v111, v2, vcc                      // 000000002540: D100006F 01AA056F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 000000002548: 7D88069A
	s_nop 1                                                    // 00000000254C: BF800001
	v_cndmask_b32_e64 v112, v112, v2, vcc                      // 000000002550: D1000070 01AA0570
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 000000002558: 7D88069B
	s_nop 1                                                    // 00000000255C: BF800001
	v_cndmask_b32_e64 v113, v113, v2, vcc                      // 000000002560: D1000071 01AA0571
	s_mov_b32 s16, 0                                           // 000000002568: BE900080
	s_sub_u32 s16, s3, s16                                     // 00000000256C: 80901003
	s_sub_i32 s16, s16, 0x60                                   // 000000002570: 8190FF10 00000060
	s_cmp_ge_i32 s16, 32                                       // 000000002578: BF03A010
	s_cbranch_scc1 69                                          // 00000000257C: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb94>
	s_cmp_lt_i32 s16, 0                                        // 000000002580: BF048010
	s_cbranch_scc1 574                                         // 000000002584: BF85023E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1380>
	v_add_u32_e32 v3, s16, v174                                // 000000002588: 68075C10
	v_and_b32_e32 v4, 4, v179                                  // 00000000258C: 26096684
	v_sub_u32_e32 v3, v3, v4                                   // 000000002590: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 000000002594: 7D880680
	s_nop 3                                                    // 000000002598: BF800003
	v_cndmask_b32_e64 v82, v82, v2, vcc                        // 00000000259C: D1000052 01AA0552
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 0000000025A4: 7D880681
	s_nop 1                                                    // 0000000025A8: BF800001
	v_cndmask_b32_e64 v83, v83, v2, vcc                        // 0000000025AC: D1000053 01AA0553
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 0000000025B4: 7D880682
	s_nop 1                                                    // 0000000025B8: BF800001
	v_cndmask_b32_e64 v84, v84, v2, vcc                        // 0000000025BC: D1000054 01AA0554
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 0000000025C4: 7D880683
	s_nop 1                                                    // 0000000025C8: BF800001
	v_cndmask_b32_e64 v85, v85, v2, vcc                        // 0000000025CC: D1000055 01AA0555
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 0000000025D4: 7D880688
	s_nop 1                                                    // 0000000025D8: BF800001
	v_cndmask_b32_e64 v86, v86, v2, vcc                        // 0000000025DC: D1000056 01AA0556
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 0000000025E4: 7D880689
	s_nop 1                                                    // 0000000025E8: BF800001
	v_cndmask_b32_e64 v87, v87, v2, vcc                        // 0000000025EC: D1000057 01AA0557
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 0000000025F4: 7D88068A
	s_nop 1                                                    // 0000000025F8: BF800001
	v_cndmask_b32_e64 v88, v88, v2, vcc                        // 0000000025FC: D1000058 01AA0558
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 000000002604: 7D88068B
	s_nop 1                                                    // 000000002608: BF800001
	v_cndmask_b32_e64 v89, v89, v2, vcc                        // 00000000260C: D1000059 01AA0559
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 000000002614: 7D880690
	s_nop 1                                                    // 000000002618: BF800001
	v_cndmask_b32_e64 v90, v90, v2, vcc                        // 00000000261C: D100005A 01AA055A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 000000002624: 7D880691
	s_nop 1                                                    // 000000002628: BF800001
	v_cndmask_b32_e64 v91, v91, v2, vcc                        // 00000000262C: D100005B 01AA055B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 000000002634: 7D880692
	s_nop 1                                                    // 000000002638: BF800001
	v_cndmask_b32_e64 v92, v92, v2, vcc                        // 00000000263C: D100005C 01AA055C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 000000002644: 7D880693
	s_nop 1                                                    // 000000002648: BF800001
	v_cndmask_b32_e64 v93, v93, v2, vcc                        // 00000000264C: D100005D 01AA055D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 000000002654: 7D880698
	s_nop 1                                                    // 000000002658: BF800001
	v_cndmask_b32_e64 v94, v94, v2, vcc                        // 00000000265C: D100005E 01AA055E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 000000002664: 7D880699
	s_nop 1                                                    // 000000002668: BF800001
	v_cndmask_b32_e64 v95, v95, v2, vcc                        // 00000000266C: D100005F 01AA055F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 000000002674: 7D88069A
	s_nop 1                                                    // 000000002678: BF800001
	v_cndmask_b32_e64 v96, v96, v2, vcc                        // 00000000267C: D1000060 01AA0560
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 000000002684: 7D88069B
	s_nop 1                                                    // 000000002688: BF800001
	v_cndmask_b32_e64 v97, v97, v2, vcc                        // 00000000268C: D1000061 01AA0561
	v_max_f32_e32 v3, v130, v131                               // 000000002694: 16070782
	v_max3_f32 v3, v132, v133, v3                              // 000000002698: D1D30003 040F0B84
	v_max3_f32 v3, v134, v135, v3                              // 0000000026A0: D1D30003 040F0F86
	v_max3_f32 v3, v136, v137, v3                              // 0000000026A8: D1D30003 040F1388
	v_max3_f32 v3, v138, v139, v3                              // 0000000026B0: D1D30003 040F178A
	v_max3_f32 v3, v140, v141, v3                              // 0000000026B8: D1D30003 040F1B8C
	v_max3_f32 v3, v142, v143, v3                              // 0000000026C0: D1D30003 040F1F8E
	v_max3_f32 v3, v144, v145, v3                              // 0000000026C8: D1D30003 040F2390
	v_max_f32_e32 v4, v114, v115                               // 0000000026D0: 1608E772
	v_max3_f32 v4, v116, v117, v4                              // 0000000026D4: D1D30004 0412EB74
	v_max3_f32 v4, v118, v119, v4                              // 0000000026DC: D1D30004 0412EF76
	v_max3_f32 v4, v120, v121, v4                              // 0000000026E4: D1D30004 0412F378
	v_max3_f32 v4, v122, v123, v4                              // 0000000026EC: D1D30004 0412F77A
	v_max3_f32 v4, v124, v125, v4                              // 0000000026F4: D1D30004 0412FB7C
	v_max3_f32 v4, v126, v127, v4                              // 0000000026FC: D1D30004 0412FF7E
	v_max3_f32 v5, v128, v129, v4                              // 000000002704: D1D30005 04130380
	v_max_f32_e32 v4, v98, v99                                 // 00000000270C: 1608C762
	v_max3_f32 v4, v100, v101, v4                              // 000000002710: D1D30004 0412CB64
	v_max3_f32 v4, v102, v103, v4                              // 000000002718: D1D30004 0412CF66
	v_max3_f32 v4, v104, v105, v4                              // 000000002720: D1D30004 0412D368
	v_max3_f32 v4, v106, v107, v4                              // 000000002728: D1D30004 0412D76A
	v_max3_f32 v4, v108, v109, v4                              // 000000002730: D1D30004 0412DB6C
	v_max3_f32 v4, v110, v111, v4                              // 000000002738: D1D30004 0412DF6E
	v_max3_f32 v4, v112, v113, v4                              // 000000002740: D1D30004 0412E370
	v_max_f32_e32 v6, v82, v83                                 // 000000002748: 160CA752
	v_max3_f32 v6, v84, v85, v6                                // 00000000274C: D1D30006 041AAB54
	v_max3_f32 v6, v86, v87, v6                                // 000000002754: D1D30006 041AAF56
	v_max3_f32 v6, v88, v89, v6                                // 00000000275C: D1D30006 041AB358
	v_max3_f32 v6, v90, v91, v6                                // 000000002764: D1D30006 041AB75A
	v_max3_f32 v6, v92, v93, v6                                // 00000000276C: D1D30006 041ABB5C
	v_max3_f32 v6, v94, v95, v6                                // 000000002774: D1D30006 041ABF5E
	v_max3_f32 v6, v96, v97, v6                                // 00000000277C: D1D30006 041AC360
	v_max_f32_e32 v4, v4, v6                                   // 000000002784: 16080D04
	v_max_f32_e32 v6, v3, v5                                   // 000000002788: 160C0B03
	v_mov_b32_e32 v7, v6                                       // 00000000278C: 7E0E0306
	s_nop 1                                                    // 000000002790: BF800001
	v_permlane32_swap_b32_e32 v6, v7                           // 000000002794: 7E0CB507
	v_mov_b32_e32 v5, v4                                       // 000000002798: 7E0A0304
	s_nop 1                                                    // 00000000279C: BF800001
	v_permlane32_swap_b32_e32 v4, v5                           // 0000000027A0: 7E08B505
	v_max_f32_e32 v4, v4, v5                                   // 0000000027A4: 16080B04
	v_max_f32_e32 v3, v6, v7                                   // 0000000027A8: 16060F06
	v_max_f32_e32 v5, v3, v4                                   // 0000000027AC: 160A0903
	v_mul_f32_e32 v16, v187, v5                                // 0000000027B0: 0A200BBB
	v_fma_f32 v3, v3, v187, -v16                               // 0000000027B4: D1CB0003 84437703
	v_floor_f32_e32 v3, v3                                     // 0000000027BC: 7E063F03
	v_med3_f32 v5, v3, s68, 0                                  // 0000000027C0: D1D60005 02008903
	v_cvt_i32_f32_e32 v3, v5                                   // 0000000027C8: 7E061105
	v_add_u32_e32 v191, 0x7f, v3                               // 0000000027CC: 697E06FF 0000007F
	v_lshlrev_b32_e32 v3, 23, v191                             // 0000000027D4: 24077E97
	v_fma_f32 v4, v4, v187, -v16                               // 0000000027D8: D1CB0004 84437704
	v_floor_f32_e32 v4, v4                                     // 0000000027E0: 7E083F04
	v_med3_f32 v4, v4, s68, 0                                  // 0000000027E4: D1D60004 02008904
	v_cvt_i32_f32_e32 v6, v4                                   // 0000000027EC: 7E0C1104
	v_add_u32_e32 v17, 0x7f, v6                                // 0000000027F0: 68220CFF 0000007F
	v_lshlrev_b32_e32 v194, 23, v17                            // 0000000027F8: 25842297
	v_fma_f32 v6, v16, v178, s50                               // 0000000027FC: D1CB0006 00CB6510
	v_fma_f32 v172, v5, v178, v6                               // 000000002804: D1CB00AC 041B6505
	v_fma_f32 v170, v4, v178, v6                               // 00000000280C: D1CB00AA 041B6504
	s_mov_b32 s66, s62                                         // 000000002814: BEC2003E
	s_lshl_b32 s49, s8, 8                                      // 000000002818: 8E318808
	s_waitcnt vmcnt(0)                                         // 00000000281C: BF8C0F70
	s_cmp_eq_u32 s73, 0                                        // 000000002820: BF068049
	s_cselect_b64 s[34:35], -1, 0                              // 000000002824: 85A280C1
	s_cmp_lg_u32 s73, 0                                        // 000000002828: BF078049
	s_mov_b32 s67, s63                                         // 00000000282C: BEC3003F
	s_cbranch_scc1 37                                          // 000000002830: BF850025 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xdc8>
	s_cmp_ge_u32 s79, 2                                        // 000000002834: BF09824F
	s_cbranch_scc1 199                                         // 000000002838: BF8500C7 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1058>
	s_cmp_ge_u32 s79, 3                                        // 00000000283C: BF09834F
	s_cbranch_scc1 227                                         // 000000002840: BF8500E3 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10d0>
	s_cmp_lt_u32 s79, 4                                        // 000000002844: BF0A844F
	s_cbranch_scc1 30                                          // 000000002848: BF85001E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xdc4>
	s_add_u32 s20, s20, 0xc000                                 // 00000000284C: 8014FF14 0000C000
	s_and_b32 s20, s20, 0xc000                                 // 000000002854: 8614FF14 0000C000
	s_mul_i32 s16, s8, 0x180                                   // 00000000285C: 9210FF08 00000180
	s_or_b32 s20, s70, s20                                     // 000000002864: 87141446
	s_add_u32 m0, s20, 0                                       // 000000002868: 807C8014
	s_mul_i32 s17, s8, 0x1a0                                   // 00000000286C: 9211FF08 000001A0
	buffer_load_dwordx4 v180, s[60:63], s16 offen lds          // 000000002874: E05D1000 100F00B4
	s_add_u32 m0, s20, 0x1000                                  // 00000000287C: 807CFF14 00001000
	s_mul_i32 s18, s8, 0x1c0                                   // 000000002884: 9212FF08 000001C0
	s_mul_i32 s19, s8, 0x1e0                                   // 00000000288C: 9213FF08 000001E0
	buffer_load_dwordx4 v180, s[60:63], s17 offen lds          // 000000002894: E05D1000 110F00B4
	s_add_u32 m0, s20, 0x2000                                  // 00000000289C: 807CFF14 00002000
	s_nop 0                                                    // 0000000028A4: BF800000
	buffer_load_dwordx4 v180, s[60:63], s18 offen lds          // 0000000028A8: E05D1000 120F00B4
	s_add_u32 m0, s20, 0x3000                                  // 0000000028B0: 807CFF14 00003000
	s_nop 0                                                    // 0000000028B8: BF800000
	buffer_load_dwordx4 v180, s[60:63], s19 offen lds          // 0000000028BC: E05D1000 130F00B4
	s_waitcnt vmcnt(0)                                         // 0000000028C4: BF8C0F70
	s_barrier                                                  // 0000000028C8: BF8A0000
	s_add_u32 s81, s79, -1                                     // 0000000028CC: 8051C14F
	s_lshl_b32 s80, s8, 9                                      // 0000000028D0: 8E508908
	s_cmp_lt_i32 s76, 1                                        // 0000000028D4: BF04814C
	s_mul_i32 s81, s81, s72                                    // 0000000028D8: 92514851
	s_cbranch_scc1 52                                          // 0000000028DC: BF850034 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xeb0>
	s_cmp_lt_i32 s76, 2                                        // 0000000028E0: BF04824C
	s_cbranch_scc0 102                                         // 0000000028E4: BF840066 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf80>
	s_mov_b32 s16, 0                                           // 0000000028E8: BE900080
	s_mov_b32 s17, s16                                         // 0000000028EC: BE910010
	s_mov_b32 s18, s16                                         // 0000000028F0: BE920010
	s_mov_b32 s19, s16                                         // 0000000028F4: BE930010
	s_mov_b32 s20, s16                                         // 0000000028F8: BE940010
	s_mov_b32 s21, s16                                         // 0000000028FC: BE950010
	s_mov_b32 s22, s16                                         // 000000002900: BE960010
	s_mov_b32 s23, s16                                         // 000000002904: BE970010
	s_mov_b32 s24, s16                                         // 000000002908: BE980010
	s_mov_b32 s25, s16                                         // 00000000290C: BE990010
	s_mov_b32 s26, s16                                         // 000000002910: BE9A0010
	s_mov_b32 s27, s16                                         // 000000002914: BE9B0010
	s_mov_b32 s28, s16                                         // 000000002918: BE9C0010
	s_mov_b32 s29, s16                                         // 00000000291C: BE9D0010
	s_mov_b32 s30, s16                                         // 000000002920: BE9E0010
	s_mov_b32 s31, s16                                         // 000000002924: BE9F0010
	v_mov_b64_e32 v[48:49], s[30:31]                           // 000000002928: 7E60701E
	v_mov_b64_e32 v[46:47], s[28:29]                           // 00000000292C: 7E5C701C
	v_mov_b64_e32 v[44:45], s[26:27]                           // 000000002930: 7E58701A
	v_mov_b64_e32 v[42:43], s[24:25]                           // 000000002934: 7E547018
	v_mov_b64_e32 v[40:41], s[22:23]                           // 000000002938: 7E507016
	v_mov_b64_e32 v[38:39], s[20:21]                           // 00000000293C: 7E4C7014
	v_mov_b64_e32 v[36:37], s[18:19]                           // 000000002940: 7E487012
	v_mov_b64_e32 v[34:35], s[16:17]                           // 000000002944: 7E447010
	v_mov_b32_e32 v190, 0                                      // 000000002948: 7F7C0280
	v_mov_b64_e32 v[64:65], v[48:49]                           // 00000000294C: 7E807130
	v_mov_b64_e32 v[62:63], v[46:47]                           // 000000002950: 7E7C712E
	v_mov_b64_e32 v[60:61], v[44:45]                           // 000000002954: 7E78712C
	v_mov_b64_e32 v[58:59], v[42:43]                           // 000000002958: 7E74712A
	v_mov_b64_e32 v[56:57], v[40:41]                           // 00000000295C: 7E707128
	v_mov_b64_e32 v[54:55], v[38:39]                           // 000000002960: 7E6C7126
	v_mov_b64_e32 v[52:53], v[36:37]                           // 000000002964: 7E687124
	v_mov_b64_e32 v[50:51], v[34:35]                           // 000000002968: 7E647122
	v_mov_b64_e32 v[80:81], v[48:49]                           // 00000000296C: 7EA07130
	v_mov_b64_e32 v[78:79], v[46:47]                           // 000000002970: 7E9C712E
	v_mov_b64_e32 v[76:77], v[44:45]                           // 000000002974: 7E98712C
	v_mov_b64_e32 v[74:75], v[42:43]                           // 000000002978: 7E94712A
	v_mov_b64_e32 v[72:73], v[40:41]                           // 00000000297C: 7E907128
	v_mov_b64_e32 v[70:71], v[38:39]                           // 000000002980: 7E8C7126
	v_mov_b64_e32 v[68:69], v[36:37]                           // 000000002984: 7E887124
	v_mov_b64_e32 v[66:67], v[34:35]                           // 000000002988: 7E847122
	v_mov_b64_e32 v[18:19], v[34:35]                           // 00000000298C: 7E247122
	v_mov_b64_e32 v[20:21], v[36:37]                           // 000000002990: 7E287124
	v_mov_b64_e32 v[22:23], v[38:39]                           // 000000002994: 7E2C7126
	v_mov_b64_e32 v[24:25], v[40:41]                           // 000000002998: 7E307128
	v_mov_b64_e32 v[26:27], v[42:43]                           // 00000000299C: 7E34712A
	v_mov_b64_e32 v[28:29], v[44:45]                           // 0000000029A0: 7E38712C
	v_mov_b64_e32 v[30:31], v[46:47]                           // 0000000029A4: 7E3C712E
	v_mov_b64_e32 v[32:33], v[48:49]                           // 0000000029A8: 7E407130
	s_branch 956                                               // 0000000029AC: BF8203BC <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1da0>
	s_mov_b32 s16, 0                                           // 0000000029B0: BE900080
	s_cmp_lg_u32 s76, 0                                        // 0000000029B4: BF07804C
	s_mov_b32 s17, s16                                         // 0000000029B8: BE910010
	s_mov_b32 s18, s16                                         // 0000000029BC: BE920010
	s_mov_b32 s19, s16                                         // 0000000029C0: BE930010
	s_mov_b32 s20, s16                                         // 0000000029C4: BE940010
	s_mov_b32 s21, s16                                         // 0000000029C8: BE950010
	s_mov_b32 s22, s16                                         // 0000000029CC: BE960010
	s_mov_b32 s23, s16                                         // 0000000029D0: BE970010
	s_mov_b32 s24, s16                                         // 0000000029D4: BE980010
	s_mov_b32 s25, s16                                         // 0000000029D8: BE990010
	s_mov_b32 s26, s16                                         // 0000000029DC: BE9A0010
	s_mov_b32 s27, s16                                         // 0000000029E0: BE9B0010
	s_mov_b32 s28, s16                                         // 0000000029E4: BE9C0010
	s_mov_b32 s29, s16                                         // 0000000029E8: BE9D0010
	s_mov_b32 s30, s16                                         // 0000000029EC: BE9E0010
	s_mov_b32 s31, s16                                         // 0000000029F0: BE9F0010
	s_cbranch_scc0 181                                         // 0000000029F4: BF8400B5 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x11cc>
	v_mov_b64_e32 v[48:49], s[30:31]                           // 0000000029F8: 7E60701E
	v_mov_b64_e32 v[46:47], s[28:29]                           // 0000000029FC: 7E5C701C
	v_mov_b64_e32 v[44:45], s[26:27]                           // 000000002A00: 7E58701A
	v_mov_b64_e32 v[42:43], s[24:25]                           // 000000002A04: 7E547018
	v_mov_b64_e32 v[40:41], s[22:23]                           // 000000002A08: 7E507016
	v_mov_b64_e32 v[38:39], s[20:21]                           // 000000002A0C: 7E4C7014
	v_mov_b64_e32 v[36:37], s[18:19]                           // 000000002A10: 7E487012
	v_mov_b64_e32 v[34:35], s[16:17]                           // 000000002A14: 7E447010
	v_mov_b32_e32 v190, 0                                      // 000000002A18: 7F7C0280
	v_mov_b64_e32 v[64:65], v[48:49]                           // 000000002A1C: 7E807130
	v_mov_b64_e32 v[62:63], v[46:47]                           // 000000002A20: 7E7C712E
	v_mov_b64_e32 v[60:61], v[44:45]                           // 000000002A24: 7E78712C
	v_mov_b64_e32 v[58:59], v[42:43]                           // 000000002A28: 7E74712A
	v_mov_b64_e32 v[56:57], v[40:41]                           // 000000002A2C: 7E707128
	v_mov_b64_e32 v[54:55], v[38:39]                           // 000000002A30: 7E6C7126
	v_mov_b64_e32 v[52:53], v[36:37]                           // 000000002A34: 7E687124
	v_mov_b64_e32 v[50:51], v[34:35]                           // 000000002A38: 7E647122
	v_mov_b64_e32 v[80:81], v[48:49]                           // 000000002A3C: 7EA07130
	v_mov_b64_e32 v[78:79], v[46:47]                           // 000000002A40: 7E9C712E
	v_mov_b64_e32 v[76:77], v[44:45]                           // 000000002A44: 7E98712C
	v_mov_b64_e32 v[74:75], v[42:43]                           // 000000002A48: 7E94712A
	v_mov_b64_e32 v[72:73], v[40:41]                           // 000000002A4C: 7E907128
	v_mov_b64_e32 v[70:71], v[38:39]                           // 000000002A50: 7E8C7126
	v_mov_b64_e32 v[68:69], v[36:37]                           // 000000002A54: 7E887124
	v_mov_b64_e32 v[66:67], v[34:35]                           // 000000002A58: 7E847122
	v_mov_b64_e32 v[18:19], v[34:35]                           // 000000002A5C: 7E247122
	v_mov_b64_e32 v[20:21], v[36:37]                           // 000000002A60: 7E287124
	v_mov_b64_e32 v[22:23], v[38:39]                           // 000000002A64: 7E2C7126
	v_mov_b64_e32 v[24:25], v[40:41]                           // 000000002A68: 7E307128
	v_mov_b64_e32 v[26:27], v[42:43]                           // 000000002A6C: 7E34712A
	v_mov_b64_e32 v[28:29], v[44:45]                           // 000000002A70: 7E38712C
	v_mov_b64_e32 v[30:31], v[46:47]                           // 000000002A74: 7E3C712E
	v_mov_b64_e32 v[32:33], v[48:49]                           // 000000002A78: 7E407130
	s_branch 2153                                              // 000000002A7C: BF820869 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3124>
	s_mov_b32 s16, 0                                           // 000000002A80: BE900080
	s_cmp_eq_u32 s76, 2                                        // 000000002A84: BF06824C
	s_mov_b32 s17, s16                                         // 000000002A88: BE910010
	s_mov_b32 s18, s16                                         // 000000002A8C: BE920010
	s_mov_b32 s19, s16                                         // 000000002A90: BE930010
	s_mov_b32 s20, s16                                         // 000000002A94: BE940010
	s_mov_b32 s21, s16                                         // 000000002A98: BE950010
	s_mov_b32 s22, s16                                         // 000000002A9C: BE960010
	s_mov_b32 s23, s16                                         // 000000002AA0: BE970010
	s_mov_b32 s24, s16                                         // 000000002AA4: BE980010
	s_mov_b32 s25, s16                                         // 000000002AA8: BE990010
	s_mov_b32 s26, s16                                         // 000000002AAC: BE9A0010
	s_mov_b32 s27, s16                                         // 000000002AB0: BE9B0010
	s_mov_b32 s28, s16                                         // 000000002AB4: BE9C0010
	s_mov_b32 s29, s16                                         // 000000002AB8: BE9D0010
	s_mov_b32 s30, s16                                         // 000000002ABC: BE9E0010
	s_mov_b32 s31, s16                                         // 000000002AC0: BE9F0010
	s_cbranch_scc0 95                                          // 000000002AC4: BF84005F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1144>
	v_mov_b64_e32 v[48:49], s[30:31]                           // 000000002AC8: 7E60701E
	v_mov_b64_e32 v[46:47], s[28:29]                           // 000000002ACC: 7E5C701C
	v_mov_b64_e32 v[44:45], s[26:27]                           // 000000002AD0: 7E58701A
	v_mov_b64_e32 v[42:43], s[24:25]                           // 000000002AD4: 7E547018
	v_mov_b64_e32 v[40:41], s[22:23]                           // 000000002AD8: 7E507016
	v_mov_b64_e32 v[38:39], s[20:21]                           // 000000002ADC: 7E4C7014
	v_mov_b64_e32 v[36:37], s[18:19]                           // 000000002AE0: 7E487012
	v_mov_b64_e32 v[34:35], s[16:17]                           // 000000002AE4: 7E447010
	v_mov_b32_e32 v190, 0                                      // 000000002AE8: 7F7C0280
	v_mov_b32_e32 v192, v16                                    // 000000002AEC: 7F800310
	v_mov_b32_e32 v193, v17                                    // 000000002AF0: 7F820311
	v_mov_b64_e32 v[64:65], v[48:49]                           // 000000002AF4: 7E807130
	v_mov_b64_e32 v[62:63], v[46:47]                           // 000000002AF8: 7E7C712E
	v_mov_b64_e32 v[60:61], v[44:45]                           // 000000002AFC: 7E78712C
	v_mov_b64_e32 v[58:59], v[42:43]                           // 000000002B00: 7E74712A
	v_mov_b64_e32 v[56:57], v[40:41]                           // 000000002B04: 7E707128
	v_mov_b64_e32 v[54:55], v[38:39]                           // 000000002B08: 7E6C7126
	v_mov_b64_e32 v[52:53], v[36:37]                           // 000000002B0C: 7E687124
	v_mov_b64_e32 v[50:51], v[34:35]                           // 000000002B10: 7E647122
	v_mov_b64_e32 v[80:81], v[48:49]                           // 000000002B14: 7EA07130
	v_mov_b64_e32 v[78:79], v[46:47]                           // 000000002B18: 7E9C712E
	v_mov_b64_e32 v[76:77], v[44:45]                           // 000000002B1C: 7E98712C
	v_mov_b64_e32 v[74:75], v[42:43]                           // 000000002B20: 7E94712A
	v_mov_b64_e32 v[72:73], v[40:41]                           // 000000002B24: 7E907128
	v_mov_b64_e32 v[70:71], v[38:39]                           // 000000002B28: 7E8C7126
	v_mov_b64_e32 v[68:69], v[36:37]                           // 000000002B2C: 7E887124
	v_mov_b64_e32 v[66:67], v[34:35]                           // 000000002B30: 7E847122
	v_mov_b64_e32 v[18:19], v[34:35]                           // 000000002B34: 7E247122
	v_mov_b64_e32 v[20:21], v[36:37]                           // 000000002B38: 7E287124
	v_mov_b64_e32 v[22:23], v[38:39]                           // 000000002B3C: 7E2C7126
	v_mov_b64_e32 v[24:25], v[40:41]                           // 000000002B40: 7E307128
	v_mov_b64_e32 v[26:27], v[42:43]                           // 000000002B44: 7E34712A
	v_mov_b64_e32 v[28:29], v[44:45]                           // 000000002B48: 7E38712C
	v_mov_b64_e32 v[30:31], v[46:47]                           // 000000002B4C: 7E3C712E
	v_mov_b64_e32 v[32:33], v[48:49]                           // 000000002B50: 7E407130
	s_branch 1475                                              // 000000002B54: BF8205C3 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2764>
	s_add_u32 s16, s20, 0x4000                                 // 000000002B58: 8010FF14 00004000
	s_and_b32 s16, s16, 0xc000                                 // 000000002B60: 8610FF10 0000C000
	s_add_u32 s16, s71, s16                                    // 000000002B68: 80101047
	s_add_u32 m0, s16, 0                                       // 000000002B6C: 807C8010
	s_mul_i32 s17, s8, 0xc0                                    // 000000002B70: 9211FF08 000000C0
	buffer_load_dwordx4 v182, s[64:67], s72 offen lds          // 000000002B78: E05D1000 481000B6
	s_add_u32 m0, s16, 0x1000                                  // 000000002B80: 807CFF10 00001000
	s_mul_i32 s18, s8, 0x84                                    // 000000002B88: 9212FF08 00000084
	s_mul_i32 s19, s8, 0xc4                                    // 000000002B90: 9213FF08 000000C4
	buffer_load_dwordx4 v182, s[64:67], s17 offen lds          // 000000002B98: E05D1000 111000B6
	s_add_u32 m0, s16, 0x2000                                  // 000000002BA0: 807CFF10 00002000
	s_nop 0                                                    // 000000002BA8: BF800000
	buffer_load_dwordx4 v182, s[64:67], s18 offen lds          // 000000002BAC: E05D1000 121000B6
	s_add_u32 m0, s16, 0x3000                                  // 000000002BB4: 807CFF10 00003000
	s_nop 0                                                    // 000000002BBC: BF800000
	buffer_load_dwordx4 v182, s[64:67], s19 offen lds          // 000000002BC0: E05D1000 131000B6
	s_cmp_lt_u32 s79, 3                                        // 000000002BC8: BF0A834F
	s_cbranch_scc1 65309                                       // 000000002BCC: BF85FF1D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd44>
	s_xor_b32 s16, s21, 0x8000                                 // 000000002BD0: 8810FF15 00008000
	s_add_u32 s16, s70, s16                                    // 000000002BD8: 80101046
	s_add_u32 m0, s16, 0                                       // 000000002BDC: 807C8010
	s_mul_i32 s17, s8, 0x120                                   // 000000002BE0: 9211FF08 00000120
	buffer_load_dwordx4 v180, s[60:63], s49 offen lds          // 000000002BE8: E05D1000 310F00B4
	s_add_u32 m0, s16, 0x1000                                  // 000000002BF0: 807CFF10 00001000
	s_mul_i32 s18, s8, 0x140                                   // 000000002BF8: 9212FF08 00000140
	s_mul_i32 s19, s8, 0x160                                   // 000000002C00: 9213FF08 00000160
	buffer_load_dwordx4 v180, s[60:63], s17 offen lds          // 000000002C08: E05D1000 110F00B4
	s_add_u32 m0, s16, 0x2000                                  // 000000002C10: 807CFF10 00002000
	s_nop 0                                                    // 000000002C18: BF800000
	buffer_load_dwordx4 v180, s[60:63], s18 offen lds          // 000000002C1C: E05D1000 120F00B4
	s_add_u32 m0, s16, 0x3000                                  // 000000002C24: 807CFF10 00003000
	s_nop 0                                                    // 000000002C2C: BF800000
	buffer_load_dwordx4 v180, s[60:63], s19 offen lds          // 000000002C30: E05D1000 130F00B4
	s_cmp_lt_u32 s79, 4                                        // 000000002C38: BF0A844F
	s_cbranch_scc1 65313                                       // 000000002C3C: BF85FF21 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xdc4>
	s_branch 65282                                             // 000000002C40: BF82FF02 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd4c>
	v_mov_b64_e32 v[48:49], s[30:31]                           // 000000002C44: 7E60701E
	v_mov_b64_e32 v[46:47], s[28:29]                           // 000000002C48: 7E5C701C
	v_mov_b64_e32 v[44:45], s[26:27]                           // 000000002C4C: 7E58701A
	v_mov_b64_e32 v[42:43], s[24:25]                           // 000000002C50: 7E547018
	v_mov_b64_e32 v[40:41], s[22:23]                           // 000000002C54: 7E507016
	v_mov_b64_e32 v[38:39], s[20:21]                           // 000000002C58: 7E4C7014
	v_mov_b64_e32 v[36:37], s[18:19]                           // 000000002C5C: 7E487012
	v_mov_b64_e32 v[34:35], s[16:17]                           // 000000002C60: 7E447010
	v_mov_b32_e32 v190, 0                                      // 000000002C64: 7F7C0280
	v_mov_b64_e32 v[64:65], v[48:49]                           // 000000002C68: 7E807130
	v_mov_b64_e32 v[62:63], v[46:47]                           // 000000002C6C: 7E7C712E
	v_mov_b64_e32 v[60:61], v[44:45]                           // 000000002C70: 7E78712C
	v_mov_b64_e32 v[58:59], v[42:43]                           // 000000002C74: 7E74712A
	v_mov_b64_e32 v[56:57], v[40:41]                           // 000000002C78: 7E707128
	v_mov_b64_e32 v[54:55], v[38:39]                           // 000000002C7C: 7E6C7126
	v_mov_b64_e32 v[52:53], v[36:37]                           // 000000002C80: 7E687124
	v_mov_b64_e32 v[50:51], v[34:35]                           // 000000002C84: 7E647122
	v_mov_b64_e32 v[80:81], v[48:49]                           // 000000002C88: 7EA07130
	v_mov_b64_e32 v[78:79], v[46:47]                           // 000000002C8C: 7E9C712E
	v_mov_b64_e32 v[76:77], v[44:45]                           // 000000002C90: 7E98712C
	v_mov_b64_e32 v[74:75], v[42:43]                           // 000000002C94: 7E94712A
	v_mov_b64_e32 v[72:73], v[40:41]                           // 000000002C98: 7E907128
	v_mov_b64_e32 v[70:71], v[38:39]                           // 000000002C9C: 7E8C7126
	v_mov_b64_e32 v[68:69], v[36:37]                           // 000000002CA0: 7E887124
	v_mov_b64_e32 v[66:67], v[34:35]                           // 000000002CA4: 7E847122
	v_mov_b64_e32 v[18:19], v[34:35]                           // 000000002CA8: 7E247122
	v_mov_b64_e32 v[20:21], v[36:37]                           // 000000002CAC: 7E287124
	v_mov_b64_e32 v[22:23], v[38:39]                           // 000000002CB0: 7E2C7126
	v_mov_b64_e32 v[24:25], v[40:41]                           // 000000002CB4: 7E307128
	v_mov_b64_e32 v[26:27], v[42:43]                           // 000000002CB8: 7E34712A
	v_mov_b64_e32 v[28:29], v[44:45]                           // 000000002CBC: 7E38712C
	v_mov_b64_e32 v[30:31], v[46:47]                           // 000000002CC0: 7E3C712E
	v_mov_b64_e32 v[32:33], v[48:49]                           // 000000002CC4: 7E407130
	s_branch 2006                                              // 000000002CC8: BF8207D6 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3124>
	v_mov_b64_e32 v[48:49], s[30:31]                           // 000000002CCC: 7E60701E
	v_mov_b64_e32 v[46:47], s[28:29]                           // 000000002CD0: 7E5C701C
	v_mov_b64_e32 v[44:45], s[26:27]                           // 000000002CD4: 7E58701A
	v_mov_b64_e32 v[42:43], s[24:25]                           // 000000002CD8: 7E547018
	v_mov_b64_e32 v[40:41], s[22:23]                           // 000000002CDC: 7E507016
	v_mov_b64_e32 v[38:39], s[20:21]                           // 000000002CE0: 7E4C7014
	v_mov_b64_e32 v[36:37], s[18:19]                           // 000000002CE4: 7E487012
	v_mov_b64_e32 v[34:35], s[16:17]                           // 000000002CE8: 7E447010
	v_mov_b32_e32 v190, 0                                      // 000000002CEC: 7F7C0280
	s_mov_b32 s16, s76                                         // 000000002CF0: BE90004C
	v_mov_b32_e32 v192, v16                                    // 000000002CF4: 7F800310
	v_mov_b32_e32 v193, v17                                    // 000000002CF8: 7F820311
	v_mov_b64_e32 v[64:65], v[48:49]                           // 000000002CFC: 7E807130
	v_mov_b64_e32 v[62:63], v[46:47]                           // 000000002D00: 7E7C712E
	v_mov_b64_e32 v[60:61], v[44:45]                           // 000000002D04: 7E78712C
	v_mov_b64_e32 v[58:59], v[42:43]                           // 000000002D08: 7E74712A
	v_mov_b64_e32 v[56:57], v[40:41]                           // 000000002D0C: 7E707128
	v_mov_b64_e32 v[54:55], v[38:39]                           // 000000002D10: 7E6C7126
	v_mov_b64_e32 v[52:53], v[36:37]                           // 000000002D14: 7E687124
	v_mov_b64_e32 v[50:51], v[34:35]                           // 000000002D18: 7E647122
	v_mov_b64_e32 v[80:81], v[48:49]                           // 000000002D1C: 7EA07130
	v_mov_b64_e32 v[78:79], v[46:47]                           // 000000002D20: 7E9C712E
	v_mov_b64_e32 v[76:77], v[44:45]                           // 000000002D24: 7E98712C
	v_mov_b64_e32 v[74:75], v[42:43]                           // 000000002D28: 7E94712A
	v_mov_b64_e32 v[72:73], v[40:41]                           // 000000002D2C: 7E907128
	v_mov_b64_e32 v[70:71], v[38:39]                           // 000000002D30: 7E8C7126
	v_mov_b64_e32 v[68:69], v[36:37]                           // 000000002D34: 7E887124
	v_mov_b64_e32 v[66:67], v[34:35]                           // 000000002D38: 7E847122
	v_mov_b64_e32 v[18:19], v[34:35]                           // 000000002D3C: 7E247122
	v_mov_b64_e32 v[20:21], v[36:37]                           // 000000002D40: 7E287124
	v_mov_b64_e32 v[22:23], v[38:39]                           // 000000002D44: 7E2C7126
	v_mov_b64_e32 v[24:25], v[40:41]                           // 000000002D48: 7E307128
	v_mov_b64_e32 v[26:27], v[42:43]                           // 000000002D4C: 7E34712A
	v_mov_b64_e32 v[28:29], v[44:45]                           // 000000002D50: 7E38712C
	v_mov_b64_e32 v[30:31], v[46:47]                           // 000000002D54: 7E3C712E
	v_mov_b64_e32 v[32:33], v[48:49]                           // 000000002D58: 7E407130
	s_branch 96                                                // 000000002D5C: BF820060 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x13e0>
	v_mov_b32_e32 v3, v2                                       // 000000002D60: 7E060302
	v_mov_b32_e32 v4, v2                                       // 000000002D64: 7E080302
	v_mov_b32_e32 v5, v2                                       // 000000002D68: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000002D6C: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000002D70: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 000000002D74: 7E100302
	v_mov_b32_e32 v9, v2                                       // 000000002D78: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000002D7C: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000002D80: 7E160302
	v_mov_b32_e32 v12, v2                                      // 000000002D84: 7E180302
	v_mov_b32_e32 v13, v2                                      // 000000002D88: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000002D8C: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000002D90: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 000000002D94: 7E200302
	v_mov_b32_e32 v17, v2                                      // 000000002D98: 7E220302
	v_mov_b64_e32 v[144:145], v[16:17]                         // 000000002D9C: 7F207110
	v_mov_b64_e32 v[142:143], v[14:15]                         // 000000002DA0: 7F1C710E
	v_mov_b64_e32 v[140:141], v[12:13]                         // 000000002DA4: 7F18710C
	v_mov_b64_e32 v[138:139], v[10:11]                         // 000000002DA8: 7F14710A
	v_mov_b64_e32 v[136:137], v[8:9]                           // 000000002DAC: 7F107108
	v_mov_b64_e32 v[134:135], v[6:7]                           // 000000002DB0: 7F0C7106
	v_mov_b64_e32 v[132:133], v[4:5]                           // 000000002DB4: 7F087104
	v_mov_b64_e32 v[130:131], v[2:3]                           // 000000002DB8: 7F047102
	s_branch 64855                                             // 000000002DBC: BF82FD57 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x81c>
	v_mov_b32_e32 v3, v2                                       // 000000002DC0: 7E060302
	v_mov_b32_e32 v4, v2                                       // 000000002DC4: 7E080302
	v_mov_b32_e32 v5, v2                                       // 000000002DC8: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000002DCC: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000002DD0: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 000000002DD4: 7E100302
	v_mov_b32_e32 v9, v2                                       // 000000002DD8: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000002DDC: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000002DE0: 7E160302
	v_mov_b32_e32 v12, v2                                      // 000000002DE4: 7E180302
	v_mov_b32_e32 v13, v2                                      // 000000002DE8: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000002DEC: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000002DF0: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 000000002DF4: 7E200302
	v_mov_b32_e32 v17, v2                                      // 000000002DF8: 7E220302
	v_mov_b64_e32 v[128:129], v[16:17]                         // 000000002DFC: 7F007110
	v_mov_b64_e32 v[126:127], v[14:15]                         // 000000002E00: 7EFC710E
	v_mov_b64_e32 v[124:125], v[12:13]                         // 000000002E04: 7EF8710C
	v_mov_b64_e32 v[122:123], v[10:11]                         // 000000002E08: 7EF4710A
	v_mov_b64_e32 v[120:121], v[8:9]                           // 000000002E0C: 7EF07108
	v_mov_b64_e32 v[118:119], v[6:7]                           // 000000002E10: 7EEC7106
	v_mov_b64_e32 v[116:117], v[4:5]                           // 000000002E14: 7EE87104
	v_mov_b64_e32 v[114:115], v[2:3]                           // 000000002E18: 7EE47102
	s_branch 64905                                             // 000000002E1C: BF82FD89 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x944>
	v_mov_b32_e32 v3, v2                                       // 000000002E20: 7E060302
	v_mov_b32_e32 v4, v2                                       // 000000002E24: 7E080302
	v_mov_b32_e32 v5, v2                                       // 000000002E28: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000002E2C: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000002E30: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 000000002E34: 7E100302
	v_mov_b32_e32 v9, v2                                       // 000000002E38: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000002E3C: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000002E40: 7E160302
	v_mov_b32_e32 v12, v2                                      // 000000002E44: 7E180302
	v_mov_b32_e32 v13, v2                                      // 000000002E48: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000002E4C: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000002E50: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 000000002E54: 7E200302
	v_mov_b32_e32 v17, v2                                      // 000000002E58: 7E220302
	v_mov_b64_e32 v[112:113], v[16:17]                         // 000000002E5C: 7EE07110
	v_mov_b64_e32 v[110:111], v[14:15]                         // 000000002E60: 7EDC710E
	v_mov_b64_e32 v[108:109], v[12:13]                         // 000000002E64: 7ED8710C
	v_mov_b64_e32 v[106:107], v[10:11]                         // 000000002E68: 7ED4710A
	v_mov_b64_e32 v[104:105], v[8:9]                           // 000000002E6C: 7ED07108
	v_mov_b64_e32 v[102:103], v[6:7]                           // 000000002E70: 7ECC7106
	v_mov_b64_e32 v[100:101], v[4:5]                           // 000000002E74: 7EC87104
	v_mov_b64_e32 v[98:99], v[2:3]                             // 000000002E78: 7EC47102
	s_branch 64954                                             // 000000002E7C: BF82FDBA <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa68>
	v_mov_b32_e32 v3, v2                                       // 000000002E80: 7E060302
	v_mov_b32_e32 v4, v2                                       // 000000002E84: 7E080302
	v_mov_b32_e32 v5, v2                                       // 000000002E88: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000002E8C: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000002E90: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 000000002E94: 7E100302
	v_mov_b32_e32 v9, v2                                       // 000000002E98: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000002E9C: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000002EA0: 7E160302
	v_mov_b32_e32 v12, v2                                      // 000000002EA4: 7E180302
	v_mov_b32_e32 v13, v2                                      // 000000002EA8: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000002EAC: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000002EB0: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 000000002EB4: 7E200302
	v_mov_b32_e32 v17, v2                                      // 000000002EB8: 7E220302
	v_mov_b64_e32 v[96:97], v[16:17]                           // 000000002EBC: 7EC07110
	v_mov_b64_e32 v[94:95], v[14:15]                           // 000000002EC0: 7EBC710E
	v_mov_b64_e32 v[92:93], v[12:13]                           // 000000002EC4: 7EB8710C
	v_mov_b64_e32 v[90:91], v[10:11]                           // 000000002EC8: 7EB4710A
	v_mov_b64_e32 v[88:89], v[8:9]                             // 000000002ECC: 7EB07108
	v_mov_b64_e32 v[86:87], v[6:7]                             // 000000002ED0: 7EAC7106
	v_mov_b64_e32 v[84:85], v[4:5]                             // 000000002ED4: 7EA87104
	v_mov_b64_e32 v[82:83], v[2:3]                             // 000000002ED8: 7EA47102
	s_branch 65005                                             // 000000002EDC: BF82FDED <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb94>
	s_add_u32 s17, s16, 1                                      // 000000002EE0: 80118110
	s_cmp_ge_u32 s17, s15                                      // 000000002EE4: BF090F11
	s_cbranch_scc1 2498                                        // 000000002EE8: BF8509C2 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3af4>
	s_setprio 0                                                // 000000002EEC: BF8F0000
	v_fma_f32 v4, v130, v188, v172                             // 000000002EF0: D1CB0004 06B37982
	v_fma_f32 v5, v131, v188, v172                             // 000000002EF8: D1CB0005 06B37983
	v_fma_f32 v6, v132, v188, v172                             // 000000002F00: D1CB0006 06B37984
	v_fma_f32 v7, v133, v188, v172                             // 000000002F08: D1CB0007 06B37985
	v_fma_f32 v8, v134, v188, v172                             // 000000002F10: D1CB0008 06B37986
	v_fma_f32 v9, v135, v188, v172                             // 000000002F18: D1CB0009 06B37987
	v_fma_f32 v10, v136, v188, v172                            // 000000002F20: D1CB000A 06B37988
	v_fma_f32 v11, v137, v188, v172                            // 000000002F28: D1CB000B 06B37989
	v_fma_f32 v12, v138, v188, v172                            // 000000002F30: D1CB000C 06B3798A
	v_fma_f32 v13, v139, v188, v172                            // 000000002F38: D1CB000D 06B3798B
	v_fma_f32 v14, v140, v188, v172                            // 000000002F40: D1CB000E 06B3798C
	v_fma_f32 v15, v141, v188, v172                            // 000000002F48: D1CB000F 06B3798D
	v_fma_f32 v16, v142, v188, v172                            // 000000002F50: D1CB0010 06B3798E
	v_fma_f32 v17, v143, v188, v172                            // 000000002F58: D1CB0011 06B3798F
	v_fma_f32 v130, v144, v188, v172                           // 000000002F60: D1CB0082 06B37990
	v_fma_f32 v131, v145, v188, v172                           // 000000002F68: D1CB0083 06B37991
	v_fma_f32 v114, v114, v188, v172                           // 000000002F70: D1CB0072 06B37972
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 000000002F78: D1DD0004 02010104
	v_fma_f32 v115, v115, v188, v172                           // 000000002F80: D1CB0073 06B37973
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 000000002F88: D1DD0008 02010108
	v_fma_f32 v116, v116, v188, v172                           // 000000002F90: D1CB0074 06B37974
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 000000002F98: D1DD000C 0201010C
	v_fma_f32 v117, v117, v188, v172                           // 000000002FA0: D1CB0075 06B37975
	v_cvt_pk_u8_f32 v16, v16, 0, 0                             // 000000002FA8: D1DD0010 02010110
	v_fma_f32 v118, v118, v188, v172                           // 000000002FB0: D1CB0076 06B37976
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 000000002FB8: D1DD0004 04110305
	v_fma_f32 v119, v119, v188, v172                           // 000000002FC0: D1CB0077 06B37977
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 000000002FC8: D1DD0005 04210309
	v_fma_f32 v8, v120, v188, v172                             // 000000002FD0: D1CB0008 06B37978
	v_cvt_pk_u8_f32 v9, v13, 1, v12                            // 000000002FD8: D1DD0009 0431030D
	v_fma_f32 v12, v121, v188, v172                            // 000000002FE0: D1CB000C 06B37979
	v_cvt_pk_u8_f32 v13, v17, 1, v16                           // 000000002FE8: D1DD000D 04410311
	v_fma_f32 v16, v122, v188, v172                            // 000000002FF0: D1CB0010 06B3797A
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 000000002FF8: D1DD0004 04110506
	v_fma_f32 v17, v123, v188, v172                            // 000000003000: D1CB0011 06B3797B
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 000000003008: D1DD0005 0415050A
	v_fma_f32 v10, v124, v188, v172                            // 000000003010: D1CB000A 06B3797C
	v_cvt_pk_u8_f32 v6, v14, 2, v9                             // 000000003018: D1DD0006 0425050E
	v_fma_f32 v14, v125, v188, v172                            // 000000003020: D1CB000E 06B3797D
	v_cvt_pk_u8_f32 v9, v130, 2, v13                           // 000000003028: D1DD0009 04350582
	v_fma_f32 v13, v126, v188, v172                            // 000000003030: D1CB000D 06B3797E
	v_cvt_pk_u8_f32 v4, v7, 3, v4                              // 000000003038: D1DD0004 04110707
	v_fma_f32 v120, v127, v188, v172                           // 000000003040: D1CB0078 06B3797F
	v_cvt_pk_u8_f32 v5, v11, 3, v5                             // 000000003048: D1DD0005 0415070B
	v_fma_f32 v11, v128, v188, v172                            // 000000003050: D1CB000B 06B37980
	v_cvt_pk_u8_f32 v6, v15, 3, v6                             // 000000003058: D1DD0006 0419070F
	v_fma_f32 v15, v129, v188, v172                            // 000000003060: D1CB000F 06B37981
	v_cvt_pk_u8_f32 v7, v131, 3, v9                            // 000000003068: D1DD0007 04250783
	v_fma_f32 v98, v98, v188, v170                             // 000000003070: D1CB0062 06AB7962
	v_cvt_pk_u8_f32 v9, v114, 0, 0                             // 000000003078: D1DD0009 02010172
	v_fma_f32 v99, v99, v188, v170                             // 000000003080: D1CB0063 06AB7963
	v_cvt_pk_u8_f32 v114, v118, 0, 0                           // 000000003088: D1DD0072 02010176
	v_fma_f32 v100, v100, v188, v170                           // 000000003090: D1CB0064 06AB7964
	v_cvt_pk_u8_f32 v16, v16, 0, 0                             // 000000003098: D1DD0010 02010110
	v_fma_f32 v101, v101, v188, v170                           // 0000000030A0: D1CB0065 06AB7965
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 0000000030A8: D1DD000D 0201010D
	v_fma_f32 v102, v102, v188, v170                           // 0000000030B0: D1CB0066 06AB7966
	v_cvt_pk_u8_f32 v9, v115, 1, v9                            // 0000000030B8: D1DD0009 04250373
	v_fma_f32 v103, v103, v188, v170                           // 0000000030C0: D1CB0067 06AB7967
	v_cvt_pk_u8_f32 v114, v119, 1, v114                        // 0000000030C8: D1DD0072 05C90377
	v_fma_f32 v104, v104, v188, v170                           // 0000000030D0: D1CB0068 06AB7968
	v_cvt_pk_u8_f32 v16, v17, 1, v16                           // 0000000030D8: D1DD0010 04410311
	v_fma_f32 v17, v105, v188, v170                            // 0000000030E0: D1CB0011 06AB7969
	v_cvt_pk_u8_f32 v13, v120, 1, v13                          // 0000000030E8: D1DD000D 04350378
	v_fma_f32 v105, v106, v188, v170                           // 0000000030F0: D1CB0069 06AB796A
	v_cvt_pk_u8_f32 v9, v116, 2, v9                            // 0000000030F8: D1DD0009 04250574
	v_fma_f32 v106, v107, v188, v170                           // 000000003100: D1CB006A 06AB796B
	v_cvt_pk_u8_f32 v107, v8, 2, v114                          // 000000003108: D1DD006B 05C90508
	v_fma_f32 v108, v108, v188, v170                           // 000000003110: D1CB006C 06AB796C
	v_cvt_pk_u8_f32 v10, v10, 2, v16                           // 000000003118: D1DD000A 0441050A
	v_fma_f32 v16, v109, v188, v170                            // 000000003120: D1CB0010 06AB796D
	v_cvt_pk_u8_f32 v11, v11, 2, v13                           // 000000003128: D1DD000B 0435050B
	v_fma_f32 v13, v110, v188, v170                            // 000000003130: D1CB000D 06AB796E
	v_cvt_pk_u8_f32 v8, v117, 3, v9                            // 000000003138: D1DD0008 04250775
	v_fma_f32 v109, v111, v188, v170                           // 000000003140: D1CB006D 06AB796F
	v_cvt_pk_u8_f32 v9, v12, 3, v107                           // 000000003148: D1DD0009 05AD070C
	v_fma_f32 v12, v112, v188, v170                            // 000000003150: D1CB000C 06AB7970
	v_cvt_pk_u8_f32 v10, v14, 3, v10                           // 000000003158: D1DD000A 0429070E
	v_fma_f32 v14, v113, v188, v170                            // 000000003160: D1CB000E 06AB7971
	v_cvt_pk_u8_f32 v11, v15, 3, v11                           // 000000003168: D1DD000B 042D070F
	v_fma_f32 v15, v82, v188, v170                             // 000000003170: D1CB000F 06AB7952
	v_cvt_pk_u8_f32 v82, v98, 0, 0                             // 000000003178: D1DD0052 02010162
	v_fma_f32 v83, v83, v188, v170                             // 000000003180: D1CB0053 06AB7953
	v_cvt_pk_u8_f32 v98, v102, 0, 0                            // 000000003188: D1DD0062 02010166
	v_fma_f32 v84, v84, v188, v170                             // 000000003190: D1CB0054 06AB7954
	v_cvt_pk_u8_f32 v102, v105, 0, 0                           // 000000003198: D1DD0066 02010169
	v_fma_f32 v85, v85, v188, v170                             // 0000000031A0: D1CB0055 06AB7955
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 0000000031A8: D1DD000D 0201010D
	v_fma_f32 v86, v86, v188, v170                             // 0000000031B0: D1CB0056 06AB7956
	v_cvt_pk_u8_f32 v82, v99, 1, v82                           // 0000000031B8: D1DD0052 05490363
	v_fma_f32 v87, v87, v188, v170                             // 0000000031C0: D1CB0057 06AB7957
	v_cvt_pk_u8_f32 v98, v103, 1, v98                          // 0000000031C8: D1DD0062 05890367
	v_fma_f32 v88, v88, v188, v170                             // 0000000031D0: D1CB0058 06AB7958
	v_cvt_pk_u8_f32 v99, v106, 1, v102                         // 0000000031D8: D1DD0063 0599036A
	v_fma_f32 v89, v89, v188, v170                             // 0000000031E0: D1CB0059 06AB7959
	v_cvt_pk_u8_f32 v13, v109, 1, v13                          // 0000000031E8: D1DD000D 0435036D
	v_fma_f32 v90, v90, v188, v170                             // 0000000031F0: D1CB005A 06AB795A
	v_cvt_pk_u8_f32 v82, v100, 2, v82                          // 0000000031F8: D1DD0052 05490564
	v_fma_f32 v91, v91, v188, v170                             // 000000003200: D1CB005B 06AB795B
	v_cvt_pk_u8_f32 v98, v104, 2, v98                          // 000000003208: D1DD0062 05890568
	v_fma_f32 v92, v92, v188, v170                             // 000000003210: D1CB005C 06AB795C
	v_cvt_pk_u8_f32 v99, v108, 2, v99                          // 000000003218: D1DD0063 058D056C
	v_fma_f32 v93, v93, v188, v170                             // 000000003220: D1CB005D 06AB795D
	v_cvt_pk_u8_f32 v12, v12, 2, v13                           // 000000003228: D1DD000C 0435050C
	v_fma_f32 v13, v94, v188, v170                             // 000000003230: D1CB000D 06AB795E
	v_cvt_pk_u8_f32 v154, v101, 3, v82                         // 000000003238: D1DD009A 05490765
	v_fma_f32 v82, v95, v188, v170                             // 000000003240: D1CB0052 06AB795F
	v_cvt_pk_u8_f32 v155, v17, 3, v98                          // 000000003248: D1DD009B 05890711
	v_fma_f32 v17, v96, v188, v170                             // 000000003250: D1CB0011 06AB7960
	v_cvt_pk_u8_f32 v156, v16, 3, v99                          // 000000003258: D1DD009C 058D0710
	v_fma_f32 v16, v97, v188, v170                             // 000000003260: D1CB0010 06AB7961
	v_cvt_pk_u8_f32 v157, v14, 3, v12                          // 000000003268: D1DD009D 0431070E
	v_cvt_pk_u8_f32 v12, v15, 0, 0                             // 000000003270: D1DD000C 0201010F
	v_cvt_pk_u8_f32 v14, v86, 0, 0                             // 000000003278: D1DD000E 02010156
	v_cvt_pk_u8_f32 v15, v90, 0, 0                             // 000000003280: D1DD000F 0201015A
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 000000003288: D1DD000D 0201010D
	v_cvt_pk_u8_f32 v12, v83, 1, v12                           // 000000003290: D1DD000C 04310353
	v_cvt_pk_u8_f32 v14, v87, 1, v14                           // 000000003298: D1DD000E 04390357
	v_cvt_pk_u8_f32 v15, v91, 1, v15                           // 0000000032A0: D1DD000F 043D035B
	v_cvt_pk_u8_f32 v13, v82, 1, v13                           // 0000000032A8: D1DD000D 04350352
	v_cvt_pk_u8_f32 v12, v84, 2, v12                           // 0000000032B0: D1DD000C 04310554
	v_cvt_pk_u8_f32 v14, v88, 2, v14                           // 0000000032B8: D1DD000E 04390558
	v_cvt_pk_u8_f32 v15, v92, 2, v15                           // 0000000032C0: D1DD000F 043D055C
	v_cvt_pk_u8_f32 v13, v17, 2, v13                           // 0000000032C8: D1DD000D 04350511
	v_cvt_pk_u8_f32 v158, v85, 3, v12                          // 0000000032D0: D1DD009E 04310755
	v_cvt_pk_u8_f32 v159, v89, 3, v14                          // 0000000032D8: D1DD009F 04390759
	v_cvt_pk_u8_f32 v160, v93, 3, v15                          // 0000000032E0: D1DD00A0 043D075D
	v_cvt_pk_u8_f32 v161, v16, 3, v13                          // 0000000032E8: D1DD00A1 04350710
	v_mov_b32_e32 v173, v172                                   // 0000000032F0: 7F5A03AC
	v_mov_b32_e32 v171, v170                                   // 0000000032F4: 7F5603AA
	ds_read_b128 v[86:89], v1 offset:16384                     // 0000000032F8: D9FE4000 56000001
	ds_read_b128 v[90:93], v1 offset:16400                     // 000000003300: D9FE4010 5A000001
	ds_read_b128 v[94:97], v1 offset:20480                     // 000000003308: D9FE5000 5E000001
	ds_read_b128 v[98:101], v1 offset:20496                    // 000000003310: D9FE5010 62000001
	s_barrier                                                  // 000000003318: BF8A0000
	s_setprio 1                                                // 00000000331C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[4:11], 0// 000000003320: D3AD000C 02020992
	v_mfma_f32_16x16x128_f8f6f4 v[82:85], v[146:153], v[154:161], 0// 000000003328: D3AD0052 02033592
	ds_read_b128 v[162:165], v1 offset:24576                   // 000000003330: D9FE6000 A2000001
	ds_read_b128 v[166:169], v1 offset:24592                   // 000000003338: D9FE6010 A6000001
	ds_read_b128 v[196:199], v1 offset:28672                   // 000000003340: D9FE7000 C4000001
	ds_read_b128 v[200:203], v1 offset:28688                   // 000000003348: D9FE7010 C8000001
	s_waitcnt lgkmcnt(4)                                       // 000000003350: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[86:93], v[228:235], 0// 000000003354: D3AE0082 0203C956
	ds_read_b128 v[204:207], v176 offset:16384                 // 00000000335C: D9FE4000 CC0000B0
	ds_read_b128 v[208:211], v176 offset:16400                 // 000000003364: D9FE4010 D00000B0
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[94:101], v[228:235], 0// 00000000336C: D3AE0072 0203C95E
	ds_read_b128 v[212:215], v176 offset:20480                 // 000000003374: D9FE5000 D40000B0
	ds_read_b128 v[216:219], v176 offset:20496                 // 00000000337C: D9FE5010 D80000B0
	s_waitcnt lgkmcnt(4)                                       // 000000003384: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[162:169], v[228:235], 0// 000000003388: D3AE0062 0203C9A2
	ds_read_b128 v[162:165], v176 offset:24576                 // 000000003390: D9FE6000 A20000B0
	ds_read_b128 v[166:169], v176 offset:24592                 // 000000003398: D9FE6010 A60000B0
	s_min_u32 s17, s80, s81                                    // 0000000033A0: 83915150
	s_add_u32 m0, s70, 0                                       // 0000000033A4: 807C8046
	s_nop 0                                                    // 0000000033A8: BF800000
	buffer_load_dwordx4 v180, s[60:63], s17 offen lds          // 0000000033AC: E05D1000 110F00B4
	v_mul_f32_e32 v3, v3, v12                                  // 0000000033B4: 0A061903
	v_add_f32_e32 v3, v190, v3                                 // 0000000033B8: 020607BE
	v_mul_f32_e32 v16, v194, v82                               // 0000000033BC: 0A20A5C2
	v_add_f32_e32 v190, v3, v16                                // 0000000033C0: 037C2103
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[196:203], v[228:235], 0// 0000000033C4: D3AE0052 0203C9C4
	ds_read_b128 v[194:197], v176 offset:28672                 // 0000000033CC: D9FE7000 C20000B0
	ds_read_b128 v[198:201], v176 offset:28688                 // 0000000033D4: D9FE7010 C60000B0
	s_add_u32 m0, s70, 0x2000                                  // 0000000033DC: 807CFF46 00002000
	s_nop 0                                                    // 0000000033E4: BF800000
	buffer_load_dwordx4 v181, s[60:63], s17 offen lds          // 0000000033E8: E05D1000 110F00B5
	s_waitcnt lgkmcnt(4)                                       // 0000000033F0: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[204:211], v[236:243], v[130:145]// 0000000033F4: D3AE0082 060BD9CC
	ds_read_b64_tr_b8 v[202:203], v189                         // 0000000033FC: D9C40000 CA0000BD
	ds_read_b64_tr_b8 v[204:205], v189 offset:1024             // 000000003404: D9C40400 CC0000BD
	ds_read_b64_tr_b8 v[206:207], v189 offset:2048             // 00000000340C: D9C40800 CE0000BD
	ds_read_b64_tr_b8 v[208:209], v189 offset:3072             // 000000003414: D9C40C00 D00000BD
	s_min_u32 s17, s49, s81                                    // 00000000341C: 83915131
	s_add_u32 m0, s71, 0x8000                                  // 000000003420: 807CFF47 00008000
	s_nop 0                                                    // 000000003428: BF800000
	buffer_load_dwordx4 v182, s[64:67], s17 offen lds          // 00000000342C: E05D1000 111000B6
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[212:219], v[236:243], v[114:129]// 000000003434: D3AE0072 05CBD9D4
	ds_read_b64_tr_b8 v[210:211], v189 offset:256              // 00000000343C: D9C40100 D20000BD
	ds_read_b64_tr_b8 v[212:213], v189 offset:1280             // 000000003444: D9C40500 D40000BD
	ds_read_b64_tr_b8 v[214:215], v189 offset:2304             // 00000000344C: D9C40900 D60000BD
	ds_read_b64_tr_b8 v[216:217], v189 offset:3328             // 000000003454: D9C40D00 D80000BD
	s_add_u32 m0, s71, 0xa000                                  // 00000000345C: 807CFF47 0000A000
	s_nop 0                                                    // 000000003464: BF800000
	buffer_load_dwordx4 v183, s[64:67], s17 offen lds          // 000000003468: E05D1000 111000B7
	s_add_u32 s80, s80, s72                                    // 000000003470: 80504850
	s_add_u32 s49, s49, s72                                    // 000000003474: 80314831
	v_max_f32_e32 v3, v130, v131                               // 000000003478: 16070782
	v_max3_f32 v3, v132, v133, v3                              // 00000000347C: D1D30003 040F0B84
	v_max3_f32 v3, v134, v135, v3                              // 000000003484: D1D30003 040F0F86
	v_max3_f32 v3, v136, v137, v3                              // 00000000348C: D1D30003 040F1388
	v_max3_f32 v3, v138, v139, v3                              // 000000003494: D1D30003 040F178A
	v_max3_f32 v3, v140, v141, v3                              // 00000000349C: D1D30003 040F1B8C
	v_max3_f32 v3, v142, v143, v3                              // 0000000034A4: D1D30003 040F1F8E
	v_max3_f32 v3, v144, v145, v3                              // 0000000034AC: D1D30003 040F2390
	s_waitcnt lgkmcnt(8)                                       // 0000000034B4: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[162:169], v[236:243], v[98:113]// 0000000034B8: D3AE0062 058BD9A2
	ds_read_b64_tr_b8 v[162:163], v189 offset:512              // 0000000034C0: D9C40200 A20000BD
	ds_read_b64_tr_b8 v[164:165], v189 offset:1536             // 0000000034C8: D9C40600 A40000BD
	ds_read_b64_tr_b8 v[166:167], v189 offset:2560             // 0000000034D0: D9C40A00 A60000BD
	ds_read_b64_tr_b8 v[168:169], v189 offset:3584             // 0000000034D8: D9C40E00 A80000BD
	v_max_f32_e32 v12, v114, v115                              // 0000000034E0: 1618E772
	v_max3_f32 v12, v116, v117, v12                            // 0000000034E4: D1D3000C 0432EB74
	v_max3_f32 v12, v118, v119, v12                            // 0000000034EC: D1D3000C 0432EF76
	v_max3_f32 v12, v120, v121, v12                            // 0000000034F4: D1D3000C 0432F378
	v_max3_f32 v12, v122, v123, v12                            // 0000000034FC: D1D3000C 0432F77A
	v_max3_f32 v12, v124, v125, v12                            // 000000003504: D1D3000C 0432FB7C
	v_max3_f32 v12, v126, v127, v12                            // 00000000350C: D1D3000C 0432FF7E
	v_max3_f32 v12, v128, v129, v12                            // 000000003514: D1D3000C 04330380
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[194:201], v[236:243], v[82:97]// 00000000351C: D3AE0052 054BD9C2
	s_nop 3                                                    // 000000003524: BF800003
	v_max_f32_e32 v13, v98, v99                                // 000000003528: 161AC762
	v_max3_f32 v13, v100, v101, v13                            // 00000000352C: D1D3000D 0436CB64
	v_max3_f32 v13, v102, v103, v13                            // 000000003534: D1D3000D 0436CF66
	v_max3_f32 v13, v104, v105, v13                            // 00000000353C: D1D3000D 0436D368
	v_max3_f32 v13, v106, v107, v13                            // 000000003544: D1D3000D 0436D76A
	v_max3_f32 v13, v108, v109, v13                            // 00000000354C: D1D3000D 0436DB6C
	v_max3_f32 v13, v110, v111, v13                            // 000000003554: D1D3000D 0436DF6E
	v_max3_f32 v13, v112, v113, v13                            // 00000000355C: D1D3000D 0436E370
	s_waitcnt lgkmcnt(4)                                       // 000000003564: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[202:209], v[4:11], v[66:81], v177, v191 op_sel_hi:[0,0,0]// 000000003568: D3AC0000 00037FB1 D3AE0842 050A09CA
	ds_read_b64_tr_b8 v[194:195], v189 offset:768              // 000000003578: D9C40300 C20000BD
	ds_read_b64_tr_b8 v[196:197], v189 offset:1792             // 000000003580: D9C40700 C40000BD
	ds_read_b64_tr_b8 v[198:199], v189 offset:2816             // 000000003588: D9C40B00 C60000BD
	ds_read_b64_tr_b8 v[200:201], v189 offset:3840             // 000000003590: D9C40F00 C80000BD
	ds_read_b64_tr_b8 v[202:203], v189 offset:4096             // 000000003598: D9C41000 CA0000BD
	ds_read_b64_tr_b8 v[204:205], v189 offset:5120             // 0000000035A0: D9C41400 CC0000BD
	ds_read_b64_tr_b8 v[206:207], v189 offset:6144             // 0000000035A8: D9C41800 CE0000BD
	ds_read_b64_tr_b8 v[208:209], v189 offset:7168             // 0000000035B0: D9C41C00 D00000BD
	v_max_f32_e32 v14, v82, v83                                // 0000000035B8: 161CA752
	v_max3_f32 v14, v84, v85, v14                              // 0000000035BC: D1D3000E 043AAB54
	v_max3_f32 v14, v86, v87, v14                              // 0000000035C4: D1D3000E 043AAF56
	v_max3_f32 v14, v88, v89, v14                              // 0000000035CC: D1D3000E 043AB358
	v_max3_f32 v14, v90, v91, v14                              // 0000000035D4: D1D3000E 043AB75A
	v_max3_f32 v14, v92, v93, v14                              // 0000000035DC: D1D3000E 043ABB5C
	v_max3_f32 v14, v94, v95, v14                              // 0000000035E4: D1D3000E 043ABF5E
	v_max3_f32 v14, v96, v97, v14                              // 0000000035EC: D1D3000E 043AC360
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[210:217], v[4:11], v[50:65], v177, v191 op_sel_hi:[0,0,0]// 0000000035F4: D3AC0000 00037FB1 D3AE0832 04CA09D2
	v_max_f32_e32 v12, v3, v12                                 // 000000003604: 16181903
	v_max_f32_e32 v14, v13, v14                                // 000000003608: 161C1D0D
	v_mov_b32_e32 v13, v12                                     // 00000000360C: 7E1A030C
	v_mov_b32_e32 v15, v14                                     // 000000003610: 7E1E030E
	s_nop 0                                                    // 000000003614: BF800000
	v_permlane32_swap_b32_e32 v12, v13                         // 000000003618: 7E18B50D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000361C: 7E1CB50F
	v_max_f32_e32 v3, v12, v13                                 // 000000003620: 16061B0C
	v_max_f32_e32 v12, v14, v15                                // 000000003624: 16181F0E
	s_waitcnt lgkmcnt(4)                                       // 000000003628: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[162:169], v[4:11], v[34:49], v177, v191 op_sel_hi:[0,0,0]// 00000000362C: D3AC0000 00037FB1 D3AE0822 048A09A2
	ds_read_b64_tr_b8 v[162:163], v189 offset:4352             // 00000000363C: D9C41100 A20000BD
	ds_read_b64_tr_b8 v[164:165], v189 offset:5376             // 000000003644: D9C41500 A40000BD
	ds_read_b64_tr_b8 v[166:167], v189 offset:6400             // 00000000364C: D9C41900 A60000BD
	ds_read_b64_tr_b8 v[168:169], v189 offset:7424             // 000000003654: D9C41D00 A80000BD
	ds_read_b64_tr_b8 v[210:211], v189 offset:4608             // 00000000365C: D9C41200 D20000BD
	ds_read_b64_tr_b8 v[212:213], v189 offset:5632             // 000000003664: D9C41600 D40000BD
	ds_read_b64_tr_b8 v[214:215], v189 offset:6656             // 00000000366C: D9C41A00 D60000BD
	ds_read_b64_tr_b8 v[216:217], v189 offset:7680             // 000000003674: D9C41E00 D80000BD
	v_max_f32_e32 v13, v3, v12                                 // 00000000367C: 161A1903
	v_mul_f32_e32 v13, v187, v13                               // 000000003680: 0A1A1BBB
	v_max_f32_e32 v13, v192, v13                               // 000000003684: 161A1BC0
	v_sub_f32_e32 v14, v13, v192                               // 000000003688: 041D810D
	v_cmp_lt_f32_e32 vcc, s69, v14                             // 00000000368C: 7C821C45
	s_cmp_lg_u64 vcc, 0                                        // 000000003690: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 000000003694: 859280C1
	s_cselect_b32 s17, 1, 0                                    // 000000003698: 85118081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[194:201], v[4:11], v[18:33], v177, v191 op_sel_hi:[0,0,0]// 00000000369C: D3AC0000 00037FB1 D3AE0812 044A09C2
	v_cndmask_b32_e64 v16, v192, v13, s[18:19]                 // 0000000036AC: D1000010 004A1BC0
	v_fma_f32 v3, v3, v187, -v16                               // 0000000036B4: D1CB0003 84437703
	v_floor_f32_e32 v3, v3                                     // 0000000036BC: 7E063F03
	v_med3_f32 v4, v3, s68, 0                                  // 0000000036C0: D1D60004 02008903
	v_cvt_i32_f32_e32 v3, v4                                   // 0000000036C8: 7E061104
	v_add_u32_e32 v191, 0x7f, v3                               // 0000000036CC: 697E06FF 0000007F
	v_lshlrev_b32_e32 v3, 23, v191                             // 0000000036D4: 24077E97
	v_fma_f32 v5, v12, v187, -v16                              // 0000000036D8: D1CB0005 8443770C
	s_waitcnt lgkmcnt(4)                                       // 0000000036E0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[202:209], v[154:161], v[66:81], v177, v193 op_sel_hi:[0,0,0]// 0000000036E4: D3AC0000 000383B1 D3AE0842 050B35CA
	ds_read_b64_tr_b8 v[8:9], v189 offset:4864                 // 0000000036F4: D9C41300 080000BD
	ds_read_b64_tr_b8 v[10:11], v189 offset:5888               // 0000000036FC: D9C41700 0A0000BD
	ds_read_b64_tr_b8 v[12:13], v189 offset:6912               // 000000003704: D9C41B00 0C0000BD
	ds_read_b64_tr_b8 v[14:15], v189 offset:7936               // 00000000370C: D9C41F00 0E0000BD
	v_floor_f32_e32 v5, v5                                     // 000000003714: 7E0A3F05
	v_med3_f32 v5, v5, s68, 0                                  // 000000003718: D1D60005 02008905
	v_cvt_i32_f32_e32 v6, v5                                   // 000000003720: 7E0C1105
	v_add_u32_e32 v17, 0x7f, v6                                // 000000003724: 68220CFF 0000007F
	v_lshlrev_b32_e32 v194, 23, v17                            // 00000000372C: 25842297
	v_fma_f32 v6, v16, v178, s50                               // 000000003730: D1CB0006 00CB6510
	v_fma_f32 v172, v4, v178, v6                               // 000000003738: D1CB00AC 041B6504
	v_fma_f32 v170, v5, v178, v6                               // 000000003740: D1CB00AA 041B6505
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[162:169], v[154:161], v[50:65], v177, v193 op_sel_hi:[0,0,0]// 000000003748: D3AC0000 000383B1 D3AE0832 04CB35A2
	s_waitcnt lgkmcnt(0)                                       // 000000003758: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[210:217], v[154:161], v[34:49], v177, v193 op_sel_hi:[0,0,0]// 00000000375C: D3AC0000 000383B1 D3AE0822 048B35D2
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[8:15], v[154:161], v[18:33], v177, v193 op_sel_hi:[0,0,0]// 00000000376C: D3AC0000 000383B1 D3AE0812 044B3508
	s_cmp_eq_u32 s17, 0                                        // 00000000377C: BF068011
	s_cbranch_scc1 68                                          // 000000003780: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1d94>
	v_sub_f32_e32 v4, v192, v16                                // 000000003784: 040821C0
	v_exp_f32_e32 v4, v4                                       // 000000003788: 7E084104
	s_nop 0                                                    // 00000000378C: BF800000
	v_pk_mul_f32 v[80:81], v[4:5], v[80:81] op_sel_hi:[0,1]    // 000000003790: D3B14050 1002A104
	v_pk_mul_f32 v[78:79], v[4:5], v[78:79] op_sel_hi:[0,1]    // 000000003798: D3B1404E 10029D04
	v_pk_mul_f32 v[76:77], v[4:5], v[76:77] op_sel_hi:[0,1]    // 0000000037A0: D3B1404C 10029904
	v_pk_mul_f32 v[74:75], v[4:5], v[74:75] op_sel_hi:[0,1]    // 0000000037A8: D3B1404A 10029504
	v_pk_mul_f32 v[72:73], v[4:5], v[72:73] op_sel_hi:[0,1]    // 0000000037B0: D3B14048 10029104
	v_pk_mul_f32 v[70:71], v[4:5], v[70:71] op_sel_hi:[0,1]    // 0000000037B8: D3B14046 10028D04
	v_pk_mul_f32 v[68:69], v[4:5], v[68:69] op_sel_hi:[0,1]    // 0000000037C0: D3B14044 10028904
	v_pk_mul_f32 v[66:67], v[4:5], v[66:67] op_sel_hi:[0,1]    // 0000000037C8: D3B14042 10028504
	v_pk_mul_f32 v[64:65], v[4:5], v[64:65] op_sel_hi:[0,1]    // 0000000037D0: D3B14040 10028104
	v_pk_mul_f32 v[62:63], v[4:5], v[62:63] op_sel_hi:[0,1]    // 0000000037D8: D3B1403E 10027D04
	v_pk_mul_f32 v[60:61], v[4:5], v[60:61] op_sel_hi:[0,1]    // 0000000037E0: D3B1403C 10027904
	v_pk_mul_f32 v[58:59], v[4:5], v[58:59] op_sel_hi:[0,1]    // 0000000037E8: D3B1403A 10027504
	v_pk_mul_f32 v[56:57], v[4:5], v[56:57] op_sel_hi:[0,1]    // 0000000037F0: D3B14038 10027104
	v_pk_mul_f32 v[54:55], v[4:5], v[54:55] op_sel_hi:[0,1]    // 0000000037F8: D3B14036 10026D04
	v_pk_mul_f32 v[52:53], v[4:5], v[52:53] op_sel_hi:[0,1]    // 000000003800: D3B14034 10026904
	v_pk_mul_f32 v[50:51], v[4:5], v[50:51] op_sel_hi:[0,1]    // 000000003808: D3B14032 10026504
	v_pk_mul_f32 v[48:49], v[4:5], v[48:49] op_sel_hi:[0,1]    // 000000003810: D3B14030 10026104
	v_pk_mul_f32 v[46:47], v[4:5], v[46:47] op_sel_hi:[0,1]    // 000000003818: D3B1402E 10025D04
	v_pk_mul_f32 v[44:45], v[4:5], v[44:45] op_sel_hi:[0,1]    // 000000003820: D3B1402C 10025904
	v_pk_mul_f32 v[42:43], v[4:5], v[42:43] op_sel_hi:[0,1]    // 000000003828: D3B1402A 10025504
	v_pk_mul_f32 v[40:41], v[4:5], v[40:41] op_sel_hi:[0,1]    // 000000003830: D3B14028 10025104
	v_pk_mul_f32 v[38:39], v[4:5], v[38:39] op_sel_hi:[0,1]    // 000000003838: D3B14026 10024D04
	v_pk_mul_f32 v[36:37], v[4:5], v[36:37] op_sel_hi:[0,1]    // 000000003840: D3B14024 10024904
	v_pk_mul_f32 v[34:35], v[4:5], v[34:35] op_sel_hi:[0,1]    // 000000003848: D3B14022 10024504
	v_pk_mul_f32 v[32:33], v[4:5], v[32:33] op_sel_hi:[0,1]    // 000000003850: D3B14020 10024104
	v_pk_mul_f32 v[30:31], v[4:5], v[30:31] op_sel_hi:[0,1]    // 000000003858: D3B1401E 10023D04
	v_pk_mul_f32 v[28:29], v[4:5], v[28:29] op_sel_hi:[0,1]    // 000000003860: D3B1401C 10023904
	v_pk_mul_f32 v[26:27], v[4:5], v[26:27] op_sel_hi:[0,1]    // 000000003868: D3B1401A 10023504
	v_pk_mul_f32 v[24:25], v[4:5], v[24:25] op_sel_hi:[0,1]    // 000000003870: D3B14018 10023104
	v_pk_mul_f32 v[22:23], v[4:5], v[22:23] op_sel_hi:[0,1]    // 000000003878: D3B14016 10022D04
	v_pk_mul_f32 v[20:21], v[4:5], v[20:21] op_sel_hi:[0,1]    // 000000003880: D3B14014 10022904
	v_pk_mul_f32 v[18:19], v[4:5], v[18:19] op_sel_hi:[0,1]    // 000000003888: D3B14012 10022504
	v_mul_f32_e32 v190, v190, v4                               // 000000003890: 0B7C09BE
	s_waitcnt vmcnt(4)                                         // 000000003894: BF8C0F74
	s_barrier                                                  // 000000003898: BF8A0000
	s_add_u32 s16, s16, 1                                      // 00000000389C: 80108110
	s_add_u32 s17, s16, 1                                      // 0000000038A0: 80118110
	s_cmp_ge_u32 s17, s15                                      // 0000000038A4: BF090F11
	s_cbranch_scc1 1878                                        // 0000000038A8: BF850756 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3b04>
	s_setprio 0                                                // 0000000038AC: BF8F0000
	v_fma_f32 v4, v130, v188, v172                             // 0000000038B0: D1CB0004 06B37982
	v_fma_f32 v5, v131, v188, v172                             // 0000000038B8: D1CB0005 06B37983
	v_fma_f32 v6, v132, v188, v172                             // 0000000038C0: D1CB0006 06B37984
	v_fma_f32 v7, v133, v188, v172                             // 0000000038C8: D1CB0007 06B37985
	v_fma_f32 v8, v134, v188, v172                             // 0000000038D0: D1CB0008 06B37986
	v_fma_f32 v9, v135, v188, v172                             // 0000000038D8: D1CB0009 06B37987
	v_fma_f32 v10, v136, v188, v172                            // 0000000038E0: D1CB000A 06B37988
	v_fma_f32 v11, v137, v188, v172                            // 0000000038E8: D1CB000B 06B37989
	v_fma_f32 v12, v138, v188, v172                            // 0000000038F0: D1CB000C 06B3798A
	v_fma_f32 v13, v139, v188, v172                            // 0000000038F8: D1CB000D 06B3798B
	v_fma_f32 v14, v140, v188, v172                            // 000000003900: D1CB000E 06B3798C
	v_fma_f32 v15, v141, v188, v172                            // 000000003908: D1CB000F 06B3798D
	v_fma_f32 v130, v142, v188, v172                           // 000000003910: D1CB0082 06B3798E
	v_fma_f32 v131, v143, v188, v172                           // 000000003918: D1CB0083 06B3798F
	v_fma_f32 v132, v144, v188, v172                           // 000000003920: D1CB0084 06B37990
	v_fma_f32 v133, v145, v188, v172                           // 000000003928: D1CB0085 06B37991
	v_fma_f32 v114, v114, v188, v172                           // 000000003930: D1CB0072 06B37972
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 000000003938: D1DD0004 02010104
	v_fma_f32 v115, v115, v188, v172                           // 000000003940: D1CB0073 06B37973
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 000000003948: D1DD0008 02010108
	v_fma_f32 v116, v116, v188, v172                           // 000000003950: D1CB0074 06B37974
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 000000003958: D1DD000C 0201010C
	v_fma_f32 v117, v117, v188, v172                           // 000000003960: D1CB0075 06B37975
	v_cvt_pk_u8_f32 v130, v130, 0, 0                           // 000000003968: D1DD0082 02010182
	v_fma_f32 v118, v118, v188, v172                           // 000000003970: D1CB0076 06B37976
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 000000003978: D1DD0004 04110305
	v_fma_f32 v119, v119, v188, v172                           // 000000003980: D1CB0077 06B37977
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 000000003988: D1DD0005 04210309
	v_fma_f32 v8, v120, v188, v172                             // 000000003990: D1CB0008 06B37978
	v_cvt_pk_u8_f32 v9, v13, 1, v12                            // 000000003998: D1DD0009 0431030D
	v_fma_f32 v12, v121, v188, v172                            // 0000000039A0: D1CB000C 06B37979
	v_cvt_pk_u8_f32 v13, v131, 1, v130                         // 0000000039A8: D1DD000D 06090383
	v_fma_f32 v120, v122, v188, v172                           // 0000000039B0: D1CB0078 06B3797A
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 0000000039B8: D1DD0004 04110506
	v_fma_f32 v121, v123, v188, v172                           // 0000000039C0: D1CB0079 06B3797B
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 0000000039C8: D1DD0005 0415050A
	v_fma_f32 v10, v124, v188, v172                            // 0000000039D0: D1CB000A 06B3797C
	v_cvt_pk_u8_f32 v6, v14, 2, v9                             // 0000000039D8: D1DD0006 0425050E
	v_fma_f32 v14, v125, v188, v172                            // 0000000039E0: D1CB000E 06B3797D
	v_cvt_pk_u8_f32 v9, v132, 2, v13                           // 0000000039E8: D1DD0009 04350584
	v_fma_f32 v13, v126, v188, v172                            // 0000000039F0: D1CB000D 06B3797E
	v_cvt_pk_u8_f32 v4, v7, 3, v4                              // 0000000039F8: D1DD0004 04110707
	v_fma_f32 v122, v127, v188, v172                           // 000000003A00: D1CB007A 06B3797F
	v_cvt_pk_u8_f32 v5, v11, 3, v5                             // 000000003A08: D1DD0005 0415070B
	v_fma_f32 v11, v128, v188, v172                            // 000000003A10: D1CB000B 06B37980
	v_cvt_pk_u8_f32 v6, v15, 3, v6                             // 000000003A18: D1DD0006 0419070F
	v_fma_f32 v15, v129, v188, v172                            // 000000003A20: D1CB000F 06B37981
	v_cvt_pk_u8_f32 v7, v133, 3, v9                            // 000000003A28: D1DD0007 04250785
	v_fma_f32 v98, v98, v188, v170                             // 000000003A30: D1CB0062 06AB7962
	v_cvt_pk_u8_f32 v9, v114, 0, 0                             // 000000003A38: D1DD0009 02010172
	v_fma_f32 v99, v99, v188, v170                             // 000000003A40: D1CB0063 06AB7963
	v_cvt_pk_u8_f32 v114, v118, 0, 0                           // 000000003A48: D1DD0072 02010176
	v_fma_f32 v100, v100, v188, v170                           // 000000003A50: D1CB0064 06AB7964
	v_cvt_pk_u8_f32 v118, v120, 0, 0                           // 000000003A58: D1DD0076 02010178
	v_fma_f32 v101, v101, v188, v170                           // 000000003A60: D1CB0065 06AB7965
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 000000003A68: D1DD000D 0201010D
	v_fma_f32 v102, v102, v188, v170                           // 000000003A70: D1CB0066 06AB7966
	v_cvt_pk_u8_f32 v9, v115, 1, v9                            // 000000003A78: D1DD0009 04250373
	v_fma_f32 v103, v103, v188, v170                           // 000000003A80: D1CB0067 06AB7967
	v_cvt_pk_u8_f32 v114, v119, 1, v114                        // 000000003A88: D1DD0072 05C90377
	v_fma_f32 v104, v104, v188, v170                           // 000000003A90: D1CB0068 06AB7968
	v_cvt_pk_u8_f32 v115, v121, 1, v118                        // 000000003A98: D1DD0073 05D90379
	v_fma_f32 v105, v105, v188, v170                           // 000000003AA0: D1CB0069 06AB7969
	v_cvt_pk_u8_f32 v13, v122, 1, v13                          // 000000003AA8: D1DD000D 0435037A
	v_fma_f32 v106, v106, v188, v170                           // 000000003AB0: D1CB006A 06AB796A
	v_cvt_pk_u8_f32 v9, v116, 2, v9                            // 000000003AB8: D1DD0009 04250574
	v_fma_f32 v107, v107, v188, v170                           // 000000003AC0: D1CB006B 06AB796B
	v_cvt_pk_u8_f32 v114, v8, 2, v114                          // 000000003AC8: D1DD0072 05C90508
	v_fma_f32 v108, v108, v188, v170                           // 000000003AD0: D1CB006C 06AB796C
	v_cvt_pk_u8_f32 v10, v10, 2, v115                          // 000000003AD8: D1DD000A 05CD050A
	v_fma_f32 v109, v109, v188, v170                           // 000000003AE0: D1CB006D 06AB796D
	v_cvt_pk_u8_f32 v11, v11, 2, v13                           // 000000003AE8: D1DD000B 0435050B
	v_fma_f32 v13, v110, v188, v170                            // 000000003AF0: D1CB000D 06AB796E
	v_cvt_pk_u8_f32 v8, v117, 3, v9                            // 000000003AF8: D1DD0008 04250775
	v_fma_f32 v110, v111, v188, v170                           // 000000003B00: D1CB006E 06AB796F
	v_cvt_pk_u8_f32 v9, v12, 3, v114                           // 000000003B08: D1DD0009 05C9070C
	v_fma_f32 v12, v112, v188, v170                            // 000000003B10: D1CB000C 06AB7970
	v_cvt_pk_u8_f32 v10, v14, 3, v10                           // 000000003B18: D1DD000A 0429070E
	v_fma_f32 v14, v113, v188, v170                            // 000000003B20: D1CB000E 06AB7971
	v_cvt_pk_u8_f32 v11, v15, 3, v11                           // 000000003B28: D1DD000B 042D070F
	v_fma_f32 v15, v82, v188, v170                             // 000000003B30: D1CB000F 06AB7952
	v_cvt_pk_u8_f32 v82, v98, 0, 0                             // 000000003B38: D1DD0052 02010162
	v_fma_f32 v83, v83, v188, v170                             // 000000003B40: D1CB0053 06AB7953
	v_cvt_pk_u8_f32 v98, v102, 0, 0                            // 000000003B48: D1DD0062 02010166
	v_fma_f32 v84, v84, v188, v170                             // 000000003B50: D1CB0054 06AB7954
	v_cvt_pk_u8_f32 v102, v106, 0, 0                           // 000000003B58: D1DD0066 0201016A
	v_fma_f32 v85, v85, v188, v170                             // 000000003B60: D1CB0055 06AB7955
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 000000003B68: D1DD000D 0201010D
	v_fma_f32 v86, v86, v188, v170                             // 000000003B70: D1CB0056 06AB7956
	v_cvt_pk_u8_f32 v82, v99, 1, v82                           // 000000003B78: D1DD0052 05490363
	v_fma_f32 v87, v87, v188, v170                             // 000000003B80: D1CB0057 06AB7957
	v_cvt_pk_u8_f32 v98, v103, 1, v98                          // 000000003B88: D1DD0062 05890367
	v_fma_f32 v88, v88, v188, v170                             // 000000003B90: D1CB0058 06AB7958
	v_cvt_pk_u8_f32 v99, v107, 1, v102                         // 000000003B98: D1DD0063 0599036B
	v_fma_f32 v89, v89, v188, v170                             // 000000003BA0: D1CB0059 06AB7959
	v_cvt_pk_u8_f32 v13, v110, 1, v13                          // 000000003BA8: D1DD000D 0435036E
	v_fma_f32 v90, v90, v188, v170                             // 000000003BB0: D1CB005A 06AB795A
	v_cvt_pk_u8_f32 v82, v100, 2, v82                          // 000000003BB8: D1DD0052 05490564
	v_fma_f32 v91, v91, v188, v170                             // 000000003BC0: D1CB005B 06AB795B
	v_cvt_pk_u8_f32 v98, v104, 2, v98                          // 000000003BC8: D1DD0062 05890568
	v_fma_f32 v92, v92, v188, v170                             // 000000003BD0: D1CB005C 06AB795C
	v_cvt_pk_u8_f32 v99, v108, 2, v99                          // 000000003BD8: D1DD0063 058D056C
	v_fma_f32 v93, v93, v188, v170                             // 000000003BE0: D1CB005D 06AB795D
	v_cvt_pk_u8_f32 v12, v12, 2, v13                           // 000000003BE8: D1DD000C 0435050C
	v_fma_f32 v13, v94, v188, v170                             // 000000003BF0: D1CB000D 06AB795E
	v_cvt_pk_u8_f32 v154, v101, 3, v82                         // 000000003BF8: D1DD009A 05490765
	v_fma_f32 v82, v95, v188, v170                             // 000000003C00: D1CB0052 06AB795F
	v_cvt_pk_u8_f32 v155, v105, 3, v98                         // 000000003C08: D1DD009B 05890769
	v_fma_f32 v94, v96, v188, v170                             // 000000003C10: D1CB005E 06AB7960
	v_cvt_pk_u8_f32 v156, v109, 3, v99                         // 000000003C18: D1DD009C 058D076D
	v_fma_f32 v95, v97, v188, v170                             // 000000003C20: D1CB005F 06AB7961
	v_cvt_pk_u8_f32 v157, v14, 3, v12                          // 000000003C28: D1DD009D 0431070E
	v_cvt_pk_u8_f32 v12, v15, 0, 0                             // 000000003C30: D1DD000C 0201010F
	v_cvt_pk_u8_f32 v14, v86, 0, 0                             // 000000003C38: D1DD000E 02010156
	v_cvt_pk_u8_f32 v15, v90, 0, 0                             // 000000003C40: D1DD000F 0201015A
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 000000003C48: D1DD000D 0201010D
	v_cvt_pk_u8_f32 v12, v83, 1, v12                           // 000000003C50: D1DD000C 04310353
	v_cvt_pk_u8_f32 v14, v87, 1, v14                           // 000000003C58: D1DD000E 04390357
	v_cvt_pk_u8_f32 v15, v91, 1, v15                           // 000000003C60: D1DD000F 043D035B
	v_cvt_pk_u8_f32 v13, v82, 1, v13                           // 000000003C68: D1DD000D 04350352
	v_cvt_pk_u8_f32 v12, v84, 2, v12                           // 000000003C70: D1DD000C 04310554
	v_cvt_pk_u8_f32 v14, v88, 2, v14                           // 000000003C78: D1DD000E 04390558
	v_cvt_pk_u8_f32 v15, v92, 2, v15                           // 000000003C80: D1DD000F 043D055C
	v_cvt_pk_u8_f32 v13, v94, 2, v13                           // 000000003C88: D1DD000D 0435055E
	v_cvt_pk_u8_f32 v158, v85, 3, v12                          // 000000003C90: D1DD009E 04310755
	v_cvt_pk_u8_f32 v159, v89, 3, v14                          // 000000003C98: D1DD009F 04390759
	v_cvt_pk_u8_f32 v160, v93, 3, v15                          // 000000003CA0: D1DD00A0 043D075D
	v_cvt_pk_u8_f32 v161, v95, 3, v13                          // 000000003CA8: D1DD00A1 0435075F
	v_mov_b32_e32 v173, v172                                   // 000000003CB0: 7F5A03AC
	v_mov_b32_e32 v171, v170                                   // 000000003CB4: 7F5603AA
	ds_read_b128 v[86:89], v1 offset:32768                     // 000000003CB8: D9FE8000 56000001
	ds_read_b128 v[90:93], v1 offset:32784                     // 000000003CC0: D9FE8010 5A000001
	ds_read_b128 v[94:97], v1 offset:36864                     // 000000003CC8: D9FE9000 5E000001
	ds_read_b128 v[98:101], v1 offset:36880                    // 000000003CD0: D9FE9010 62000001
	s_barrier                                                  // 000000003CD8: BF8A0000
	s_setprio 1                                                // 000000003CDC: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[4:11], 0// 000000003CE0: D3AD000C 02020992
	v_mfma_f32_16x16x128_f8f6f4 v[82:85], v[146:153], v[154:161], 0// 000000003CE8: D3AD0052 02033592
	ds_read_b128 v[162:165], v1 offset:40960                   // 000000003CF0: D9FEA000 A2000001
	ds_read_b128 v[166:169], v1 offset:40976                   // 000000003CF8: D9FEA010 A6000001
	ds_read_b128 v[196:199], v1 offset:45056                   // 000000003D00: D9FEB000 C4000001
	ds_read_b128 v[200:203], v1 offset:45072                   // 000000003D08: D9FEB010 C8000001
	s_waitcnt lgkmcnt(4)                                       // 000000003D10: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[86:93], v[228:235], 0// 000000003D14: D3AE0082 0203C956
	ds_read_b128 v[204:207], v176 offset:32768                 // 000000003D1C: D9FE8000 CC0000B0
	ds_read_b128 v[208:211], v176 offset:32784                 // 000000003D24: D9FE8010 D00000B0
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[94:101], v[228:235], 0// 000000003D2C: D3AE0072 0203C95E
	ds_read_b128 v[212:215], v176 offset:36864                 // 000000003D34: D9FE9000 D40000B0
	ds_read_b128 v[216:219], v176 offset:36880                 // 000000003D3C: D9FE9010 D80000B0
	s_waitcnt lgkmcnt(4)                                       // 000000003D44: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[162:169], v[228:235], 0// 000000003D48: D3AE0062 0203C9A2
	ds_read_b128 v[162:165], v176 offset:40960                 // 000000003D50: D9FEA000 A20000B0
	ds_read_b128 v[166:169], v176 offset:40976                 // 000000003D58: D9FEA010 A60000B0
	s_min_u32 s17, s80, s81                                    // 000000003D60: 83915150
	s_add_u32 m0, s70, 0x4000                                  // 000000003D64: 807CFF46 00004000
	s_nop 0                                                    // 000000003D6C: BF800000
	buffer_load_dwordx4 v180, s[60:63], s17 offen lds          // 000000003D70: E05D1000 110F00B4
	v_mul_f32_e32 v3, v3, v12                                  // 000000003D78: 0A061903
	v_add_f32_e32 v3, v190, v3                                 // 000000003D7C: 020607BE
	v_mul_f32_e32 v86, v194, v82                               // 000000003D80: 0AACA5C2
	v_add_f32_e32 v190, v3, v86                                // 000000003D84: 037CAD03
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[196:203], v[228:235], 0// 000000003D88: D3AE0052 0203C9C4
	ds_read_b128 v[192:195], v176 offset:45056                 // 000000003D90: D9FEB000 C00000B0
	ds_read_b128 v[196:199], v176 offset:45072                 // 000000003D98: D9FEB010 C40000B0
	s_add_u32 m0, s70, 0x6000                                  // 000000003DA0: 807CFF46 00006000
	s_nop 0                                                    // 000000003DA8: BF800000
	buffer_load_dwordx4 v181, s[60:63], s17 offen lds          // 000000003DAC: E05D1000 110F00B5
	s_waitcnt lgkmcnt(4)                                       // 000000003DB4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[204:211], v[236:243], v[130:145]// 000000003DB8: D3AE0082 060BD9CC
	ds_read_b64_tr_b8 v[200:201], v189 offset:16384            // 000000003DC0: D9C44000 C80000BD
	ds_read_b64_tr_b8 v[202:203], v189 offset:17408            // 000000003DC8: D9C44400 CA0000BD
	ds_read_b64_tr_b8 v[204:205], v189 offset:18432            // 000000003DD0: D9C44800 CC0000BD
	ds_read_b64_tr_b8 v[206:207], v189 offset:19456            // 000000003DD8: D9C44C00 CE0000BD
	s_min_u32 s17, s49, s81                                    // 000000003DE0: 83915131
	s_add_u32 m0, s71, 0xc000                                  // 000000003DE4: 807CFF47 0000C000
	s_nop 0                                                    // 000000003DEC: BF800000
	buffer_load_dwordx4 v182, s[64:67], s17 offen lds          // 000000003DF0: E05D1000 111000B6
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[212:219], v[236:243], v[114:129]// 000000003DF8: D3AE0072 05CBD9D4
	ds_read_b64_tr_b8 v[208:209], v189 offset:16640            // 000000003E00: D9C44100 D00000BD
	ds_read_b64_tr_b8 v[210:211], v189 offset:17664            // 000000003E08: D9C44500 D20000BD
	ds_read_b64_tr_b8 v[212:213], v189 offset:18688            // 000000003E10: D9C44900 D40000BD
	ds_read_b64_tr_b8 v[214:215], v189 offset:19712            // 000000003E18: D9C44D00 D60000BD
	s_add_u32 m0, s71, 0xe000                                  // 000000003E20: 807CFF47 0000E000
	s_nop 0                                                    // 000000003E28: BF800000
	buffer_load_dwordx4 v183, s[64:67], s17 offen lds          // 000000003E2C: E05D1000 111000B7
	s_add_u32 s80, s80, s72                                    // 000000003E34: 80504850
	s_add_u32 s49, s49, s72                                    // 000000003E38: 80314831
	v_max_f32_e32 v3, v130, v131                               // 000000003E3C: 16070782
	v_max3_f32 v3, v132, v133, v3                              // 000000003E40: D1D30003 040F0B84
	v_max3_f32 v3, v134, v135, v3                              // 000000003E48: D1D30003 040F0F86
	v_max3_f32 v3, v136, v137, v3                              // 000000003E50: D1D30003 040F1388
	v_max3_f32 v3, v138, v139, v3                              // 000000003E58: D1D30003 040F178A
	v_max3_f32 v3, v140, v141, v3                              // 000000003E60: D1D30003 040F1B8C
	v_max3_f32 v3, v142, v143, v3                              // 000000003E68: D1D30003 040F1F8E
	v_max3_f32 v3, v144, v145, v3                              // 000000003E70: D1D30003 040F2390
	s_waitcnt lgkmcnt(8)                                       // 000000003E78: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[162:169], v[236:243], v[98:113]// 000000003E7C: D3AE0062 058BD9A2
	ds_read_b64_tr_b8 v[162:163], v189 offset:16896            // 000000003E84: D9C44200 A20000BD
	ds_read_b64_tr_b8 v[164:165], v189 offset:17920            // 000000003E8C: D9C44600 A40000BD
	ds_read_b64_tr_b8 v[166:167], v189 offset:18944            // 000000003E94: D9C44A00 A60000BD
	ds_read_b64_tr_b8 v[168:169], v189 offset:19968            // 000000003E9C: D9C44E00 A80000BD
	v_max_f32_e32 v12, v114, v115                              // 000000003EA4: 1618E772
	v_max3_f32 v12, v116, v117, v12                            // 000000003EA8: D1D3000C 0432EB74
	v_max3_f32 v12, v118, v119, v12                            // 000000003EB0: D1D3000C 0432EF76
	v_max3_f32 v12, v120, v121, v12                            // 000000003EB8: D1D3000C 0432F378
	v_max3_f32 v12, v122, v123, v12                            // 000000003EC0: D1D3000C 0432F77A
	v_max3_f32 v12, v124, v125, v12                            // 000000003EC8: D1D3000C 0432FB7C
	v_max3_f32 v12, v126, v127, v12                            // 000000003ED0: D1D3000C 0432FF7E
	v_max3_f32 v12, v128, v129, v12                            // 000000003ED8: D1D3000C 04330380
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[192:199], v[236:243], v[82:97]// 000000003EE0: D3AE0052 054BD9C0
	s_nop 3                                                    // 000000003EE8: BF800003
	v_max_f32_e32 v13, v98, v99                                // 000000003EEC: 161AC762
	v_max3_f32 v13, v100, v101, v13                            // 000000003EF0: D1D3000D 0436CB64
	v_max3_f32 v13, v102, v103, v13                            // 000000003EF8: D1D3000D 0436CF66
	v_max3_f32 v13, v104, v105, v13                            // 000000003F00: D1D3000D 0436D368
	v_max3_f32 v13, v106, v107, v13                            // 000000003F08: D1D3000D 0436D76A
	v_max3_f32 v13, v108, v109, v13                            // 000000003F10: D1D3000D 0436DB6C
	v_max3_f32 v13, v110, v111, v13                            // 000000003F18: D1D3000D 0436DF6E
	v_max3_f32 v13, v112, v113, v13                            // 000000003F20: D1D3000D 0436E370
	s_waitcnt lgkmcnt(4)                                       // 000000003F28: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[200:207], v[4:11], v[66:81], v177, v191 op_sel_hi:[0,0,0]// 000000003F2C: D3AC0000 00037FB1 D3AE0842 050A09C8
	ds_read_b64_tr_b8 v[192:193], v189 offset:17152            // 000000003F3C: D9C44300 C00000BD
	ds_read_b64_tr_b8 v[194:195], v189 offset:18176            // 000000003F44: D9C44700 C20000BD
	ds_read_b64_tr_b8 v[196:197], v189 offset:19200            // 000000003F4C: D9C44B00 C40000BD
	ds_read_b64_tr_b8 v[198:199], v189 offset:20224            // 000000003F54: D9C44F00 C60000BD
	ds_read_b64_tr_b8 v[200:201], v189 offset:20480            // 000000003F5C: D9C45000 C80000BD
	ds_read_b64_tr_b8 v[202:203], v189 offset:21504            // 000000003F64: D9C45400 CA0000BD
	ds_read_b64_tr_b8 v[204:205], v189 offset:22528            // 000000003F6C: D9C45800 CC0000BD
	ds_read_b64_tr_b8 v[206:207], v189 offset:23552            // 000000003F74: D9C45C00 CE0000BD
	v_max_f32_e32 v14, v82, v83                                // 000000003F7C: 161CA752
	v_max3_f32 v14, v84, v85, v14                              // 000000003F80: D1D3000E 043AAB54
	v_max3_f32 v14, v86, v87, v14                              // 000000003F88: D1D3000E 043AAF56
	v_max3_f32 v14, v88, v89, v14                              // 000000003F90: D1D3000E 043AB358
	v_max3_f32 v14, v90, v91, v14                              // 000000003F98: D1D3000E 043AB75A
	v_max3_f32 v14, v92, v93, v14                              // 000000003FA0: D1D3000E 043ABB5C
	v_max3_f32 v14, v94, v95, v14                              // 000000003FA8: D1D3000E 043ABF5E
	v_max3_f32 v14, v96, v97, v14                              // 000000003FB0: D1D3000E 043AC360
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[208:215], v[4:11], v[50:65], v177, v191 op_sel_hi:[0,0,0]// 000000003FB8: D3AC0000 00037FB1 D3AE0832 04CA09D0
	v_max_f32_e32 v12, v3, v12                                 // 000000003FC8: 16181903
	v_max_f32_e32 v14, v13, v14                                // 000000003FCC: 161C1D0D
	v_mov_b32_e32 v13, v12                                     // 000000003FD0: 7E1A030C
	v_mov_b32_e32 v15, v14                                     // 000000003FD4: 7E1E030E
	s_nop 0                                                    // 000000003FD8: BF800000
	v_permlane32_swap_b32_e32 v12, v13                         // 000000003FDC: 7E18B50D
	v_permlane32_swap_b32_e32 v14, v15                         // 000000003FE0: 7E1CB50F
	v_max_f32_e32 v3, v12, v13                                 // 000000003FE4: 16061B0C
	v_max_f32_e32 v12, v14, v15                                // 000000003FE8: 16181F0E
	s_waitcnt lgkmcnt(4)                                       // 000000003FEC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[162:169], v[4:11], v[34:49], v177, v191 op_sel_hi:[0,0,0]// 000000003FF0: D3AC0000 00037FB1 D3AE0822 048A09A2
	ds_read_b64_tr_b8 v[162:163], v189 offset:20736            // 000000004000: D9C45100 A20000BD
	ds_read_b64_tr_b8 v[164:165], v189 offset:21760            // 000000004008: D9C45500 A40000BD
	ds_read_b64_tr_b8 v[166:167], v189 offset:22784            // 000000004010: D9C45900 A60000BD
	ds_read_b64_tr_b8 v[168:169], v189 offset:23808            // 000000004018: D9C45D00 A80000BD
	ds_read_b64_tr_b8 v[208:209], v189 offset:20992            // 000000004020: D9C45200 D00000BD
	ds_read_b64_tr_b8 v[210:211], v189 offset:22016            // 000000004028: D9C45600 D20000BD
	ds_read_b64_tr_b8 v[212:213], v189 offset:23040            // 000000004030: D9C45A00 D40000BD
	ds_read_b64_tr_b8 v[214:215], v189 offset:24064            // 000000004038: D9C45E00 D60000BD
	v_max_f32_e32 v13, v3, v12                                 // 000000004040: 161A1903
	v_mul_f32_e32 v13, v187, v13                               // 000000004044: 0A1A1BBB
	v_max_f32_e32 v13, v16, v13                                // 000000004048: 161A1B10
	v_sub_f32_e32 v14, v13, v16                                // 00000000404C: 041C210D
	v_cmp_lt_f32_e32 vcc, s69, v14                             // 000000004050: 7C821C45
	s_cmp_lg_u64 vcc, 0                                        // 000000004054: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 000000004058: 859280C1
	s_cselect_b32 s17, 1, 0                                    // 00000000405C: 85118081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[192:199], v[4:11], v[18:33], v177, v191 op_sel_hi:[0,0,0]// 000000004060: D3AC0000 00037FB1 D3AE0812 044A09C0
	v_cndmask_b32_e64 v192, v16, v13, s[18:19]                 // 000000004070: D10000C0 004A1B10
	v_fma_f32 v3, v3, v187, -v192                              // 000000004078: D1CB0003 87037703
	v_floor_f32_e32 v3, v3                                     // 000000004080: 7E063F03
	v_med3_f32 v4, v3, s68, 0                                  // 000000004084: D1D60004 02008903
	v_cvt_i32_f32_e32 v3, v4                                   // 00000000408C: 7E061104
	v_add_u32_e32 v191, 0x7f, v3                               // 000000004090: 697E06FF 0000007F
	v_lshlrev_b32_e32 v3, 23, v191                             // 000000004098: 24077E97
	v_fma_f32 v5, v12, v187, -v192                             // 00000000409C: D1CB0005 8703770C
	s_waitcnt lgkmcnt(4)                                       // 0000000040A4: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[200:207], v[154:161], v[66:81], v177, v17 op_sel_hi:[0,0,0]// 0000000040A8: D3AC0000 000223B1 D3AE0842 050B35C8
	ds_read_b64_tr_b8 v[8:9], v189 offset:21248                // 0000000040B8: D9C45300 080000BD
	ds_read_b64_tr_b8 v[10:11], v189 offset:22272              // 0000000040C0: D9C45700 0A0000BD
	ds_read_b64_tr_b8 v[12:13], v189 offset:23296              // 0000000040C8: D9C45B00 0C0000BD
	ds_read_b64_tr_b8 v[14:15], v189 offset:24320              // 0000000040D0: D9C45F00 0E0000BD
	v_floor_f32_e32 v5, v5                                     // 0000000040D8: 7E0A3F05
	v_med3_f32 v5, v5, s68, 0                                  // 0000000040DC: D1D60005 02008905
	v_cvt_i32_f32_e32 v6, v5                                   // 0000000040E4: 7E0C1105
	v_add_u32_e32 v193, 0x7f, v6                               // 0000000040E8: 69820CFF 0000007F
	v_lshlrev_b32_e32 v194, 23, v193                           // 0000000040F0: 25858297
	v_fma_f32 v6, v192, v178, s50                              // 0000000040F4: D1CB0006 00CB65C0
	v_fma_f32 v172, v4, v178, v6                               // 0000000040FC: D1CB00AC 041B6504
	v_fma_f32 v170, v5, v178, v6                               // 000000004104: D1CB00AA 041B6505
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[162:169], v[154:161], v[50:65], v177, v17 op_sel_hi:[0,0,0]// 00000000410C: D3AC0000 000223B1 D3AE0832 04CB35A2
	s_waitcnt lgkmcnt(0)                                       // 00000000411C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[208:215], v[154:161], v[34:49], v177, v17 op_sel_hi:[0,0,0]// 000000004120: D3AC0000 000223B1 D3AE0822 048B35D0
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[8:15], v[154:161], v[18:33], v177, v17 op_sel_hi:[0,0,0]// 000000004130: D3AC0000 000223B1 D3AE0812 044B3508
	s_cmp_eq_u32 s17, 0                                        // 000000004140: BF068011
	s_cbranch_scc1 68                                          // 000000004144: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2758>
	v_sub_f32_e32 v4, v16, v192                                // 000000004148: 04098110
	v_exp_f32_e32 v4, v4                                       // 00000000414C: 7E084104
	s_nop 0                                                    // 000000004150: BF800000
	v_pk_mul_f32 v[80:81], v[4:5], v[80:81] op_sel_hi:[0,1]    // 000000004154: D3B14050 1002A104
	v_pk_mul_f32 v[78:79], v[4:5], v[78:79] op_sel_hi:[0,1]    // 00000000415C: D3B1404E 10029D04
	v_pk_mul_f32 v[76:77], v[4:5], v[76:77] op_sel_hi:[0,1]    // 000000004164: D3B1404C 10029904
	v_pk_mul_f32 v[74:75], v[4:5], v[74:75] op_sel_hi:[0,1]    // 00000000416C: D3B1404A 10029504
	v_pk_mul_f32 v[72:73], v[4:5], v[72:73] op_sel_hi:[0,1]    // 000000004174: D3B14048 10029104
	v_pk_mul_f32 v[70:71], v[4:5], v[70:71] op_sel_hi:[0,1]    // 00000000417C: D3B14046 10028D04
	v_pk_mul_f32 v[68:69], v[4:5], v[68:69] op_sel_hi:[0,1]    // 000000004184: D3B14044 10028904
	v_pk_mul_f32 v[66:67], v[4:5], v[66:67] op_sel_hi:[0,1]    // 00000000418C: D3B14042 10028504
	v_pk_mul_f32 v[64:65], v[4:5], v[64:65] op_sel_hi:[0,1]    // 000000004194: D3B14040 10028104
	v_pk_mul_f32 v[62:63], v[4:5], v[62:63] op_sel_hi:[0,1]    // 00000000419C: D3B1403E 10027D04
	v_pk_mul_f32 v[60:61], v[4:5], v[60:61] op_sel_hi:[0,1]    // 0000000041A4: D3B1403C 10027904
	v_pk_mul_f32 v[58:59], v[4:5], v[58:59] op_sel_hi:[0,1]    // 0000000041AC: D3B1403A 10027504
	v_pk_mul_f32 v[56:57], v[4:5], v[56:57] op_sel_hi:[0,1]    // 0000000041B4: D3B14038 10027104
	v_pk_mul_f32 v[54:55], v[4:5], v[54:55] op_sel_hi:[0,1]    // 0000000041BC: D3B14036 10026D04
	v_pk_mul_f32 v[52:53], v[4:5], v[52:53] op_sel_hi:[0,1]    // 0000000041C4: D3B14034 10026904
	v_pk_mul_f32 v[50:51], v[4:5], v[50:51] op_sel_hi:[0,1]    // 0000000041CC: D3B14032 10026504
	v_pk_mul_f32 v[48:49], v[4:5], v[48:49] op_sel_hi:[0,1]    // 0000000041D4: D3B14030 10026104
	v_pk_mul_f32 v[46:47], v[4:5], v[46:47] op_sel_hi:[0,1]    // 0000000041DC: D3B1402E 10025D04
	v_pk_mul_f32 v[44:45], v[4:5], v[44:45] op_sel_hi:[0,1]    // 0000000041E4: D3B1402C 10025904
	v_pk_mul_f32 v[42:43], v[4:5], v[42:43] op_sel_hi:[0,1]    // 0000000041EC: D3B1402A 10025504
	v_pk_mul_f32 v[40:41], v[4:5], v[40:41] op_sel_hi:[0,1]    // 0000000041F4: D3B14028 10025104
	v_pk_mul_f32 v[38:39], v[4:5], v[38:39] op_sel_hi:[0,1]    // 0000000041FC: D3B14026 10024D04
	v_pk_mul_f32 v[36:37], v[4:5], v[36:37] op_sel_hi:[0,1]    // 000000004204: D3B14024 10024904
	v_pk_mul_f32 v[34:35], v[4:5], v[34:35] op_sel_hi:[0,1]    // 00000000420C: D3B14022 10024504
	v_pk_mul_f32 v[32:33], v[4:5], v[32:33] op_sel_hi:[0,1]    // 000000004214: D3B14020 10024104
	v_pk_mul_f32 v[30:31], v[4:5], v[30:31] op_sel_hi:[0,1]    // 00000000421C: D3B1401E 10023D04
	v_pk_mul_f32 v[28:29], v[4:5], v[28:29] op_sel_hi:[0,1]    // 000000004224: D3B1401C 10023904
	v_pk_mul_f32 v[26:27], v[4:5], v[26:27] op_sel_hi:[0,1]    // 00000000422C: D3B1401A 10023504
	v_pk_mul_f32 v[24:25], v[4:5], v[24:25] op_sel_hi:[0,1]    // 000000004234: D3B14018 10023104
	v_pk_mul_f32 v[22:23], v[4:5], v[22:23] op_sel_hi:[0,1]    // 00000000423C: D3B14016 10022D04
	v_pk_mul_f32 v[20:21], v[4:5], v[20:21] op_sel_hi:[0,1]    // 000000004244: D3B14014 10022904
	v_pk_mul_f32 v[18:19], v[4:5], v[18:19] op_sel_hi:[0,1]    // 00000000424C: D3B14012 10022504
	v_mul_f32_e32 v190, v190, v4                               // 000000004254: 0B7C09BE
	s_waitcnt vmcnt(4)                                         // 000000004258: BF8C0F74
	s_barrier                                                  // 00000000425C: BF8A0000
	s_add_u32 s16, s16, 1                                      // 000000004260: 80108110
	s_add_u32 s17, s16, 1                                      // 000000004264: 80118110
	s_cmp_ge_u32 s17, s15                                      // 000000004268: BF090F11
	s_cbranch_scc1 1249                                        // 00000000426C: BF8504E1 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3af4>
	s_setprio 0                                                // 000000004270: BF8F0000
	v_fma_f32 v4, v130, v188, v172                             // 000000004274: D1CB0004 06B37982
	v_fma_f32 v5, v131, v188, v172                             // 00000000427C: D1CB0005 06B37983
	v_fma_f32 v6, v132, v188, v172                             // 000000004284: D1CB0006 06B37984
	v_fma_f32 v7, v133, v188, v172                             // 00000000428C: D1CB0007 06B37985
	v_fma_f32 v8, v134, v188, v172                             // 000000004294: D1CB0008 06B37986
	v_fma_f32 v9, v135, v188, v172                             // 00000000429C: D1CB0009 06B37987
	v_fma_f32 v10, v136, v188, v172                            // 0000000042A4: D1CB000A 06B37988
	v_fma_f32 v11, v137, v188, v172                            // 0000000042AC: D1CB000B 06B37989
	v_fma_f32 v12, v138, v188, v172                            // 0000000042B4: D1CB000C 06B3798A
	v_fma_f32 v13, v139, v188, v172                            // 0000000042BC: D1CB000D 06B3798B
	v_fma_f32 v14, v140, v188, v172                            // 0000000042C4: D1CB000E 06B3798C
	v_fma_f32 v15, v141, v188, v172                            // 0000000042CC: D1CB000F 06B3798D
	v_fma_f32 v16, v142, v188, v172                            // 0000000042D4: D1CB0010 06B3798E
	v_fma_f32 v17, v143, v188, v172                            // 0000000042DC: D1CB0011 06B3798F
	v_fma_f32 v130, v144, v188, v172                           // 0000000042E4: D1CB0082 06B37990
	v_fma_f32 v131, v145, v188, v172                           // 0000000042EC: D1CB0083 06B37991
	v_fma_f32 v114, v114, v188, v172                           // 0000000042F4: D1CB0072 06B37972
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 0000000042FC: D1DD0004 02010104
	v_fma_f32 v115, v115, v188, v172                           // 000000004304: D1CB0073 06B37973
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 00000000430C: D1DD0008 02010108
	v_fma_f32 v116, v116, v188, v172                           // 000000004314: D1CB0074 06B37974
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 00000000431C: D1DD000C 0201010C
	v_fma_f32 v117, v117, v188, v172                           // 000000004324: D1CB0075 06B37975
	v_cvt_pk_u8_f32 v16, v16, 0, 0                             // 00000000432C: D1DD0010 02010110
	v_fma_f32 v118, v118, v188, v172                           // 000000004334: D1CB0076 06B37976
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 00000000433C: D1DD0004 04110305
	v_fma_f32 v119, v119, v188, v172                           // 000000004344: D1CB0077 06B37977
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 00000000434C: D1DD0005 04210309
	v_fma_f32 v8, v120, v188, v172                             // 000000004354: D1CB0008 06B37978
	v_cvt_pk_u8_f32 v9, v13, 1, v12                            // 00000000435C: D1DD0009 0431030D
	v_fma_f32 v12, v121, v188, v172                            // 000000004364: D1CB000C 06B37979
	v_cvt_pk_u8_f32 v13, v17, 1, v16                           // 00000000436C: D1DD000D 04410311
	v_fma_f32 v16, v122, v188, v172                            // 000000004374: D1CB0010 06B3797A
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 00000000437C: D1DD0004 04110506
	v_fma_f32 v17, v123, v188, v172                            // 000000004384: D1CB0011 06B3797B
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 00000000438C: D1DD0005 0415050A
	v_fma_f32 v10, v124, v188, v172                            // 000000004394: D1CB000A 06B3797C
	v_cvt_pk_u8_f32 v6, v14, 2, v9                             // 00000000439C: D1DD0006 0425050E
	v_fma_f32 v14, v125, v188, v172                            // 0000000043A4: D1CB000E 06B3797D
	v_cvt_pk_u8_f32 v9, v130, 2, v13                           // 0000000043AC: D1DD0009 04350582
	v_fma_f32 v13, v126, v188, v172                            // 0000000043B4: D1CB000D 06B3797E
	v_cvt_pk_u8_f32 v4, v7, 3, v4                              // 0000000043BC: D1DD0004 04110707
	v_fma_f32 v120, v127, v188, v172                           // 0000000043C4: D1CB0078 06B3797F
	v_cvt_pk_u8_f32 v5, v11, 3, v5                             // 0000000043CC: D1DD0005 0415070B
	v_fma_f32 v11, v128, v188, v172                            // 0000000043D4: D1CB000B 06B37980
	v_cvt_pk_u8_f32 v6, v15, 3, v6                             // 0000000043DC: D1DD0006 0419070F
	v_fma_f32 v15, v129, v188, v172                            // 0000000043E4: D1CB000F 06B37981
	v_cvt_pk_u8_f32 v7, v131, 3, v9                            // 0000000043EC: D1DD0007 04250783
	v_fma_f32 v98, v98, v188, v170                             // 0000000043F4: D1CB0062 06AB7962
	v_cvt_pk_u8_f32 v9, v114, 0, 0                             // 0000000043FC: D1DD0009 02010172
	v_fma_f32 v99, v99, v188, v170                             // 000000004404: D1CB0063 06AB7963
	v_cvt_pk_u8_f32 v114, v118, 0, 0                           // 00000000440C: D1DD0072 02010176
	v_fma_f32 v100, v100, v188, v170                           // 000000004414: D1CB0064 06AB7964
	v_cvt_pk_u8_f32 v16, v16, 0, 0                             // 00000000441C: D1DD0010 02010110
	v_fma_f32 v101, v101, v188, v170                           // 000000004424: D1CB0065 06AB7965
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 00000000442C: D1DD000D 0201010D
	v_fma_f32 v102, v102, v188, v170                           // 000000004434: D1CB0066 06AB7966
	v_cvt_pk_u8_f32 v9, v115, 1, v9                            // 00000000443C: D1DD0009 04250373
	v_fma_f32 v103, v103, v188, v170                           // 000000004444: D1CB0067 06AB7967
	v_cvt_pk_u8_f32 v114, v119, 1, v114                        // 00000000444C: D1DD0072 05C90377
	v_fma_f32 v104, v104, v188, v170                           // 000000004454: D1CB0068 06AB7968
	v_cvt_pk_u8_f32 v16, v17, 1, v16                           // 00000000445C: D1DD0010 04410311
	v_fma_f32 v17, v105, v188, v170                            // 000000004464: D1CB0011 06AB7969
	v_cvt_pk_u8_f32 v13, v120, 1, v13                          // 00000000446C: D1DD000D 04350378
	v_fma_f32 v105, v106, v188, v170                           // 000000004474: D1CB0069 06AB796A
	v_cvt_pk_u8_f32 v9, v116, 2, v9                            // 00000000447C: D1DD0009 04250574
	v_fma_f32 v106, v107, v188, v170                           // 000000004484: D1CB006A 06AB796B
	v_cvt_pk_u8_f32 v107, v8, 2, v114                          // 00000000448C: D1DD006B 05C90508
	v_fma_f32 v108, v108, v188, v170                           // 000000004494: D1CB006C 06AB796C
	v_cvt_pk_u8_f32 v10, v10, 2, v16                           // 00000000449C: D1DD000A 0441050A
	v_fma_f32 v16, v109, v188, v170                            // 0000000044A4: D1CB0010 06AB796D
	v_cvt_pk_u8_f32 v11, v11, 2, v13                           // 0000000044AC: D1DD000B 0435050B
	v_fma_f32 v13, v110, v188, v170                            // 0000000044B4: D1CB000D 06AB796E
	v_cvt_pk_u8_f32 v8, v117, 3, v9                            // 0000000044BC: D1DD0008 04250775
	v_fma_f32 v109, v111, v188, v170                           // 0000000044C4: D1CB006D 06AB796F
	v_cvt_pk_u8_f32 v9, v12, 3, v107                           // 0000000044CC: D1DD0009 05AD070C
	v_fma_f32 v12, v112, v188, v170                            // 0000000044D4: D1CB000C 06AB7970
	v_cvt_pk_u8_f32 v10, v14, 3, v10                           // 0000000044DC: D1DD000A 0429070E
	v_fma_f32 v14, v113, v188, v170                            // 0000000044E4: D1CB000E 06AB7971
	v_cvt_pk_u8_f32 v11, v15, 3, v11                           // 0000000044EC: D1DD000B 042D070F
	v_fma_f32 v15, v82, v188, v170                             // 0000000044F4: D1CB000F 06AB7952
	v_cvt_pk_u8_f32 v82, v98, 0, 0                             // 0000000044FC: D1DD0052 02010162
	v_fma_f32 v83, v83, v188, v170                             // 000000004504: D1CB0053 06AB7953
	v_cvt_pk_u8_f32 v98, v102, 0, 0                            // 00000000450C: D1DD0062 02010166
	v_fma_f32 v84, v84, v188, v170                             // 000000004514: D1CB0054 06AB7954
	v_cvt_pk_u8_f32 v102, v105, 0, 0                           // 00000000451C: D1DD0066 02010169
	v_fma_f32 v85, v85, v188, v170                             // 000000004524: D1CB0055 06AB7955
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 00000000452C: D1DD000D 0201010D
	v_fma_f32 v86, v86, v188, v170                             // 000000004534: D1CB0056 06AB7956
	v_cvt_pk_u8_f32 v82, v99, 1, v82                           // 00000000453C: D1DD0052 05490363
	v_fma_f32 v87, v87, v188, v170                             // 000000004544: D1CB0057 06AB7957
	v_cvt_pk_u8_f32 v98, v103, 1, v98                          // 00000000454C: D1DD0062 05890367
	v_fma_f32 v88, v88, v188, v170                             // 000000004554: D1CB0058 06AB7958
	v_cvt_pk_u8_f32 v99, v106, 1, v102                         // 00000000455C: D1DD0063 0599036A
	v_fma_f32 v89, v89, v188, v170                             // 000000004564: D1CB0059 06AB7959
	v_cvt_pk_u8_f32 v13, v109, 1, v13                          // 00000000456C: D1DD000D 0435036D
	v_fma_f32 v90, v90, v188, v170                             // 000000004574: D1CB005A 06AB795A
	v_cvt_pk_u8_f32 v82, v100, 2, v82                          // 00000000457C: D1DD0052 05490564
	v_fma_f32 v91, v91, v188, v170                             // 000000004584: D1CB005B 06AB795B
	v_cvt_pk_u8_f32 v98, v104, 2, v98                          // 00000000458C: D1DD0062 05890568
	v_fma_f32 v92, v92, v188, v170                             // 000000004594: D1CB005C 06AB795C
	v_cvt_pk_u8_f32 v99, v108, 2, v99                          // 00000000459C: D1DD0063 058D056C
	v_fma_f32 v93, v93, v188, v170                             // 0000000045A4: D1CB005D 06AB795D
	v_cvt_pk_u8_f32 v12, v12, 2, v13                           // 0000000045AC: D1DD000C 0435050C
	v_fma_f32 v13, v94, v188, v170                             // 0000000045B4: D1CB000D 06AB795E
	v_cvt_pk_u8_f32 v154, v101, 3, v82                         // 0000000045BC: D1DD009A 05490765
	v_fma_f32 v82, v95, v188, v170                             // 0000000045C4: D1CB0052 06AB795F
	v_cvt_pk_u8_f32 v155, v17, 3, v98                          // 0000000045CC: D1DD009B 05890711
	v_fma_f32 v17, v96, v188, v170                             // 0000000045D4: D1CB0011 06AB7960
	v_cvt_pk_u8_f32 v156, v16, 3, v99                          // 0000000045DC: D1DD009C 058D0710
	v_fma_f32 v16, v97, v188, v170                             // 0000000045E4: D1CB0010 06AB7961
	v_cvt_pk_u8_f32 v157, v14, 3, v12                          // 0000000045EC: D1DD009D 0431070E
	v_cvt_pk_u8_f32 v12, v15, 0, 0                             // 0000000045F4: D1DD000C 0201010F
	v_cvt_pk_u8_f32 v14, v86, 0, 0                             // 0000000045FC: D1DD000E 02010156
	v_cvt_pk_u8_f32 v15, v90, 0, 0                             // 000000004604: D1DD000F 0201015A
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 00000000460C: D1DD000D 0201010D
	v_cvt_pk_u8_f32 v12, v83, 1, v12                           // 000000004614: D1DD000C 04310353
	v_cvt_pk_u8_f32 v14, v87, 1, v14                           // 00000000461C: D1DD000E 04390357
	v_cvt_pk_u8_f32 v15, v91, 1, v15                           // 000000004624: D1DD000F 043D035B
	v_cvt_pk_u8_f32 v13, v82, 1, v13                           // 00000000462C: D1DD000D 04350352
	v_cvt_pk_u8_f32 v12, v84, 2, v12                           // 000000004634: D1DD000C 04310554
	v_cvt_pk_u8_f32 v14, v88, 2, v14                           // 00000000463C: D1DD000E 04390558
	v_cvt_pk_u8_f32 v15, v92, 2, v15                           // 000000004644: D1DD000F 043D055C
	v_cvt_pk_u8_f32 v13, v17, 2, v13                           // 00000000464C: D1DD000D 04350511
	v_cvt_pk_u8_f32 v158, v85, 3, v12                          // 000000004654: D1DD009E 04310755
	v_cvt_pk_u8_f32 v159, v89, 3, v14                          // 00000000465C: D1DD009F 04390759
	v_cvt_pk_u8_f32 v160, v93, 3, v15                          // 000000004664: D1DD00A0 043D075D
	v_cvt_pk_u8_f32 v161, v16, 3, v13                          // 00000000466C: D1DD00A1 04350710
	v_mov_b32_e32 v173, v172                                   // 000000004674: 7F5A03AC
	v_mov_b32_e32 v171, v170                                   // 000000004678: 7F5603AA
	ds_read_b128 v[86:89], v1 offset:49152                     // 00000000467C: D9FEC000 56000001
	ds_read_b128 v[90:93], v1 offset:49168                     // 000000004684: D9FEC010 5A000001
	ds_read_b128 v[94:97], v1 offset:53248                     // 00000000468C: D9FED000 5E000001
	ds_read_b128 v[98:101], v1 offset:53264                    // 000000004694: D9FED010 62000001
	s_barrier                                                  // 00000000469C: BF8A0000
	s_setprio 1                                                // 0000000046A0: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[4:11], 0// 0000000046A4: D3AD000C 02020992
	v_mfma_f32_16x16x128_f8f6f4 v[82:85], v[146:153], v[154:161], 0// 0000000046AC: D3AD0052 02033592
	ds_read_b128 v[162:165], v1 offset:57344                   // 0000000046B4: D9FEE000 A2000001
	ds_read_b128 v[166:169], v1 offset:57360                   // 0000000046BC: D9FEE010 A6000001
	ds_read_b128 v[196:199], v1 offset:61440                   // 0000000046C4: D9FEF000 C4000001
	ds_read_b128 v[200:203], v1 offset:61456                   // 0000000046CC: D9FEF010 C8000001
	s_waitcnt lgkmcnt(4)                                       // 0000000046D4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[86:93], v[228:235], 0// 0000000046D8: D3AE0082 0203C956
	ds_read_b128 v[204:207], v176 offset:49152                 // 0000000046E0: D9FEC000 CC0000B0
	ds_read_b128 v[208:211], v176 offset:49168                 // 0000000046E8: D9FEC010 D00000B0
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[94:101], v[228:235], 0// 0000000046F0: D3AE0072 0203C95E
	ds_read_b128 v[212:215], v176 offset:53248                 // 0000000046F8: D9FED000 D40000B0
	ds_read_b128 v[216:219], v176 offset:53264                 // 000000004700: D9FED010 D80000B0
	s_waitcnt lgkmcnt(4)                                       // 000000004708: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[162:169], v[228:235], 0// 00000000470C: D3AE0062 0203C9A2
	ds_read_b128 v[162:165], v176 offset:57344                 // 000000004714: D9FEE000 A20000B0
	ds_read_b128 v[166:169], v176 offset:57360                 // 00000000471C: D9FEE010 A60000B0
	s_min_u32 s17, s80, s81                                    // 000000004724: 83915150
	s_add_u32 m0, s70, 0x8000                                  // 000000004728: 807CFF46 00008000
	s_nop 0                                                    // 000000004730: BF800000
	buffer_load_dwordx4 v180, s[60:63], s17 offen lds          // 000000004734: E05D1000 110F00B4
	v_mul_f32_e32 v3, v3, v12                                  // 00000000473C: 0A061903
	v_add_f32_e32 v3, v190, v3                                 // 000000004740: 020607BE
	v_mul_f32_e32 v16, v194, v82                               // 000000004744: 0A20A5C2
	v_add_f32_e32 v190, v3, v16                                // 000000004748: 037C2103
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[196:203], v[228:235], 0// 00000000474C: D3AE0052 0203C9C4
	ds_read_b128 v[194:197], v176 offset:61440                 // 000000004754: D9FEF000 C20000B0
	ds_read_b128 v[198:201], v176 offset:61456                 // 00000000475C: D9FEF010 C60000B0
	s_add_u32 m0, s70, 0xa000                                  // 000000004764: 807CFF46 0000A000
	s_nop 0                                                    // 00000000476C: BF800000
	buffer_load_dwordx4 v181, s[60:63], s17 offen lds          // 000000004770: E05D1000 110F00B5
	s_waitcnt lgkmcnt(4)                                       // 000000004778: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[204:211], v[236:243], v[130:145]// 00000000477C: D3AE0082 060BD9CC
	ds_read_b64_tr_b8 v[202:203], v189 offset:32768            // 000000004784: D9C48000 CA0000BD
	ds_read_b64_tr_b8 v[204:205], v189 offset:33792            // 00000000478C: D9C48400 CC0000BD
	ds_read_b64_tr_b8 v[206:207], v189 offset:34816            // 000000004794: D9C48800 CE0000BD
	ds_read_b64_tr_b8 v[208:209], v189 offset:35840            // 00000000479C: D9C48C00 D00000BD
	s_min_u32 s17, s49, s81                                    // 0000000047A4: 83915131
	s_add_u32 m0, s71, 0                                       // 0000000047A8: 807C8047
	s_nop 0                                                    // 0000000047AC: BF800000
	buffer_load_dwordx4 v182, s[64:67], s17 offen lds          // 0000000047B0: E05D1000 111000B6
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[212:219], v[236:243], v[114:129]// 0000000047B8: D3AE0072 05CBD9D4
	ds_read_b64_tr_b8 v[210:211], v189 offset:33024            // 0000000047C0: D9C48100 D20000BD
	ds_read_b64_tr_b8 v[212:213], v189 offset:34048            // 0000000047C8: D9C48500 D40000BD
	ds_read_b64_tr_b8 v[214:215], v189 offset:35072            // 0000000047D0: D9C48900 D60000BD
	ds_read_b64_tr_b8 v[216:217], v189 offset:36096            // 0000000047D8: D9C48D00 D80000BD
	s_add_u32 m0, s71, 0x2000                                  // 0000000047E0: 807CFF47 00002000
	s_nop 0                                                    // 0000000047E8: BF800000
	buffer_load_dwordx4 v183, s[64:67], s17 offen lds          // 0000000047EC: E05D1000 111000B7
	s_add_u32 s80, s80, s72                                    // 0000000047F4: 80504850
	s_add_u32 s49, s49, s72                                    // 0000000047F8: 80314831
	v_max_f32_e32 v3, v130, v131                               // 0000000047FC: 16070782
	v_max3_f32 v3, v132, v133, v3                              // 000000004800: D1D30003 040F0B84
	v_max3_f32 v3, v134, v135, v3                              // 000000004808: D1D30003 040F0F86
	v_max3_f32 v3, v136, v137, v3                              // 000000004810: D1D30003 040F1388
	v_max3_f32 v3, v138, v139, v3                              // 000000004818: D1D30003 040F178A
	v_max3_f32 v3, v140, v141, v3                              // 000000004820: D1D30003 040F1B8C
	v_max3_f32 v3, v142, v143, v3                              // 000000004828: D1D30003 040F1F8E
	v_max3_f32 v3, v144, v145, v3                              // 000000004830: D1D30003 040F2390
	s_waitcnt lgkmcnt(8)                                       // 000000004838: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[162:169], v[236:243], v[98:113]// 00000000483C: D3AE0062 058BD9A2
	ds_read_b64_tr_b8 v[162:163], v189 offset:33280            // 000000004844: D9C48200 A20000BD
	ds_read_b64_tr_b8 v[164:165], v189 offset:34304            // 00000000484C: D9C48600 A40000BD
	ds_read_b64_tr_b8 v[166:167], v189 offset:35328            // 000000004854: D9C48A00 A60000BD
	ds_read_b64_tr_b8 v[168:169], v189 offset:36352            // 00000000485C: D9C48E00 A80000BD
	v_max_f32_e32 v12, v114, v115                              // 000000004864: 1618E772
	v_max3_f32 v12, v116, v117, v12                            // 000000004868: D1D3000C 0432EB74
	v_max3_f32 v12, v118, v119, v12                            // 000000004870: D1D3000C 0432EF76
	v_max3_f32 v12, v120, v121, v12                            // 000000004878: D1D3000C 0432F378
	v_max3_f32 v12, v122, v123, v12                            // 000000004880: D1D3000C 0432F77A
	v_max3_f32 v12, v124, v125, v12                            // 000000004888: D1D3000C 0432FB7C
	v_max3_f32 v12, v126, v127, v12                            // 000000004890: D1D3000C 0432FF7E
	v_max3_f32 v12, v128, v129, v12                            // 000000004898: D1D3000C 04330380
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[194:201], v[236:243], v[82:97]// 0000000048A0: D3AE0052 054BD9C2
	s_nop 3                                                    // 0000000048A8: BF800003
	v_max_f32_e32 v13, v98, v99                                // 0000000048AC: 161AC762
	v_max3_f32 v13, v100, v101, v13                            // 0000000048B0: D1D3000D 0436CB64
	v_max3_f32 v13, v102, v103, v13                            // 0000000048B8: D1D3000D 0436CF66
	v_max3_f32 v13, v104, v105, v13                            // 0000000048C0: D1D3000D 0436D368
	v_max3_f32 v13, v106, v107, v13                            // 0000000048C8: D1D3000D 0436D76A
	v_max3_f32 v13, v108, v109, v13                            // 0000000048D0: D1D3000D 0436DB6C
	v_max3_f32 v13, v110, v111, v13                            // 0000000048D8: D1D3000D 0436DF6E
	v_max3_f32 v13, v112, v113, v13                            // 0000000048E0: D1D3000D 0436E370
	s_waitcnt lgkmcnt(4)                                       // 0000000048E8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[202:209], v[4:11], v[66:81], v177, v191 op_sel_hi:[0,0,0]// 0000000048EC: D3AC0000 00037FB1 D3AE0842 050A09CA
	ds_read_b64_tr_b8 v[194:195], v189 offset:33536            // 0000000048FC: D9C48300 C20000BD
	ds_read_b64_tr_b8 v[196:197], v189 offset:34560            // 000000004904: D9C48700 C40000BD
	ds_read_b64_tr_b8 v[198:199], v189 offset:35584            // 00000000490C: D9C48B00 C60000BD
	ds_read_b64_tr_b8 v[200:201], v189 offset:36608            // 000000004914: D9C48F00 C80000BD
	ds_read_b64_tr_b8 v[202:203], v189 offset:36864            // 00000000491C: D9C49000 CA0000BD
	ds_read_b64_tr_b8 v[204:205], v189 offset:37888            // 000000004924: D9C49400 CC0000BD
	ds_read_b64_tr_b8 v[206:207], v189 offset:38912            // 00000000492C: D9C49800 CE0000BD
	ds_read_b64_tr_b8 v[208:209], v189 offset:39936            // 000000004934: D9C49C00 D00000BD
	v_max_f32_e32 v14, v82, v83                                // 00000000493C: 161CA752
	v_max3_f32 v14, v84, v85, v14                              // 000000004940: D1D3000E 043AAB54
	v_max3_f32 v14, v86, v87, v14                              // 000000004948: D1D3000E 043AAF56
	v_max3_f32 v14, v88, v89, v14                              // 000000004950: D1D3000E 043AB358
	v_max3_f32 v14, v90, v91, v14                              // 000000004958: D1D3000E 043AB75A
	v_max3_f32 v14, v92, v93, v14                              // 000000004960: D1D3000E 043ABB5C
	v_max3_f32 v14, v94, v95, v14                              // 000000004968: D1D3000E 043ABF5E
	v_max3_f32 v14, v96, v97, v14                              // 000000004970: D1D3000E 043AC360
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[210:217], v[4:11], v[50:65], v177, v191 op_sel_hi:[0,0,0]// 000000004978: D3AC0000 00037FB1 D3AE0832 04CA09D2
	v_max_f32_e32 v12, v3, v12                                 // 000000004988: 16181903
	v_max_f32_e32 v14, v13, v14                                // 00000000498C: 161C1D0D
	v_mov_b32_e32 v13, v12                                     // 000000004990: 7E1A030C
	v_mov_b32_e32 v15, v14                                     // 000000004994: 7E1E030E
	s_nop 0                                                    // 000000004998: BF800000
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000499C: 7E18B50D
	v_permlane32_swap_b32_e32 v14, v15                         // 0000000049A0: 7E1CB50F
	v_max_f32_e32 v3, v12, v13                                 // 0000000049A4: 16061B0C
	v_max_f32_e32 v12, v14, v15                                // 0000000049A8: 16181F0E
	s_waitcnt lgkmcnt(4)                                       // 0000000049AC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[162:169], v[4:11], v[34:49], v177, v191 op_sel_hi:[0,0,0]// 0000000049B0: D3AC0000 00037FB1 D3AE0822 048A09A2
	ds_read_b64_tr_b8 v[162:163], v189 offset:37120            // 0000000049C0: D9C49100 A20000BD
	ds_read_b64_tr_b8 v[164:165], v189 offset:38144            // 0000000049C8: D9C49500 A40000BD
	ds_read_b64_tr_b8 v[166:167], v189 offset:39168            // 0000000049D0: D9C49900 A60000BD
	ds_read_b64_tr_b8 v[168:169], v189 offset:40192            // 0000000049D8: D9C49D00 A80000BD
	ds_read_b64_tr_b8 v[210:211], v189 offset:37376            // 0000000049E0: D9C49200 D20000BD
	ds_read_b64_tr_b8 v[212:213], v189 offset:38400            // 0000000049E8: D9C49600 D40000BD
	ds_read_b64_tr_b8 v[214:215], v189 offset:39424            // 0000000049F0: D9C49A00 D60000BD
	ds_read_b64_tr_b8 v[216:217], v189 offset:40448            // 0000000049F8: D9C49E00 D80000BD
	v_max_f32_e32 v13, v3, v12                                 // 000000004A00: 161A1903
	v_mul_f32_e32 v13, v187, v13                               // 000000004A04: 0A1A1BBB
	v_max_f32_e32 v13, v192, v13                               // 000000004A08: 161A1BC0
	v_sub_f32_e32 v14, v13, v192                               // 000000004A0C: 041D810D
	v_cmp_lt_f32_e32 vcc, s69, v14                             // 000000004A10: 7C821C45
	s_cmp_lg_u64 vcc, 0                                        // 000000004A14: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 000000004A18: 859280C1
	s_cselect_b32 s17, 1, 0                                    // 000000004A1C: 85118081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[194:201], v[4:11], v[18:33], v177, v191 op_sel_hi:[0,0,0]// 000000004A20: D3AC0000 00037FB1 D3AE0812 044A09C2
	v_cndmask_b32_e64 v16, v192, v13, s[18:19]                 // 000000004A30: D1000010 004A1BC0
	v_fma_f32 v3, v3, v187, -v16                               // 000000004A38: D1CB0003 84437703
	v_floor_f32_e32 v3, v3                                     // 000000004A40: 7E063F03
	v_med3_f32 v4, v3, s68, 0                                  // 000000004A44: D1D60004 02008903
	v_cvt_i32_f32_e32 v3, v4                                   // 000000004A4C: 7E061104
	v_add_u32_e32 v191, 0x7f, v3                               // 000000004A50: 697E06FF 0000007F
	v_lshlrev_b32_e32 v3, 23, v191                             // 000000004A58: 24077E97
	v_fma_f32 v5, v12, v187, -v16                              // 000000004A5C: D1CB0005 8443770C
	s_waitcnt lgkmcnt(4)                                       // 000000004A64: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[202:209], v[154:161], v[66:81], v177, v193 op_sel_hi:[0,0,0]// 000000004A68: D3AC0000 000383B1 D3AE0842 050B35CA
	ds_read_b64_tr_b8 v[8:9], v189 offset:37632                // 000000004A78: D9C49300 080000BD
	ds_read_b64_tr_b8 v[10:11], v189 offset:38656              // 000000004A80: D9C49700 0A0000BD
	ds_read_b64_tr_b8 v[12:13], v189 offset:39680              // 000000004A88: D9C49B00 0C0000BD
	ds_read_b64_tr_b8 v[14:15], v189 offset:40704              // 000000004A90: D9C49F00 0E0000BD
	v_floor_f32_e32 v5, v5                                     // 000000004A98: 7E0A3F05
	v_med3_f32 v5, v5, s68, 0                                  // 000000004A9C: D1D60005 02008905
	v_cvt_i32_f32_e32 v6, v5                                   // 000000004AA4: 7E0C1105
	v_add_u32_e32 v17, 0x7f, v6                                // 000000004AA8: 68220CFF 0000007F
	v_lshlrev_b32_e32 v194, 23, v17                            // 000000004AB0: 25842297
	v_fma_f32 v6, v16, v178, s50                               // 000000004AB4: D1CB0006 00CB6510
	v_fma_f32 v172, v4, v178, v6                               // 000000004ABC: D1CB00AC 041B6504
	v_fma_f32 v170, v5, v178, v6                               // 000000004AC4: D1CB00AA 041B6505
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[162:169], v[154:161], v[50:65], v177, v193 op_sel_hi:[0,0,0]// 000000004ACC: D3AC0000 000383B1 D3AE0832 04CB35A2
	s_waitcnt lgkmcnt(0)                                       // 000000004ADC: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[210:217], v[154:161], v[34:49], v177, v193 op_sel_hi:[0,0,0]// 000000004AE0: D3AC0000 000383B1 D3AE0822 048B35D2
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[8:15], v[154:161], v[18:33], v177, v193 op_sel_hi:[0,0,0]// 000000004AF0: D3AC0000 000383B1 D3AE0812 044B3508
	s_cmp_eq_u32 s17, 0                                        // 000000004B00: BF068011
	s_cbranch_scc1 68                                          // 000000004B04: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3118>
	v_sub_f32_e32 v4, v192, v16                                // 000000004B08: 040821C0
	v_exp_f32_e32 v4, v4                                       // 000000004B0C: 7E084104
	s_nop 0                                                    // 000000004B10: BF800000
	v_pk_mul_f32 v[80:81], v[4:5], v[80:81] op_sel_hi:[0,1]    // 000000004B14: D3B14050 1002A104
	v_pk_mul_f32 v[78:79], v[4:5], v[78:79] op_sel_hi:[0,1]    // 000000004B1C: D3B1404E 10029D04
	v_pk_mul_f32 v[76:77], v[4:5], v[76:77] op_sel_hi:[0,1]    // 000000004B24: D3B1404C 10029904
	v_pk_mul_f32 v[74:75], v[4:5], v[74:75] op_sel_hi:[0,1]    // 000000004B2C: D3B1404A 10029504
	v_pk_mul_f32 v[72:73], v[4:5], v[72:73] op_sel_hi:[0,1]    // 000000004B34: D3B14048 10029104
	v_pk_mul_f32 v[70:71], v[4:5], v[70:71] op_sel_hi:[0,1]    // 000000004B3C: D3B14046 10028D04
	v_pk_mul_f32 v[68:69], v[4:5], v[68:69] op_sel_hi:[0,1]    // 000000004B44: D3B14044 10028904
	v_pk_mul_f32 v[66:67], v[4:5], v[66:67] op_sel_hi:[0,1]    // 000000004B4C: D3B14042 10028504
	v_pk_mul_f32 v[64:65], v[4:5], v[64:65] op_sel_hi:[0,1]    // 000000004B54: D3B14040 10028104
	v_pk_mul_f32 v[62:63], v[4:5], v[62:63] op_sel_hi:[0,1]    // 000000004B5C: D3B1403E 10027D04
	v_pk_mul_f32 v[60:61], v[4:5], v[60:61] op_sel_hi:[0,1]    // 000000004B64: D3B1403C 10027904
	v_pk_mul_f32 v[58:59], v[4:5], v[58:59] op_sel_hi:[0,1]    // 000000004B6C: D3B1403A 10027504
	v_pk_mul_f32 v[56:57], v[4:5], v[56:57] op_sel_hi:[0,1]    // 000000004B74: D3B14038 10027104
	v_pk_mul_f32 v[54:55], v[4:5], v[54:55] op_sel_hi:[0,1]    // 000000004B7C: D3B14036 10026D04
	v_pk_mul_f32 v[52:53], v[4:5], v[52:53] op_sel_hi:[0,1]    // 000000004B84: D3B14034 10026904
	v_pk_mul_f32 v[50:51], v[4:5], v[50:51] op_sel_hi:[0,1]    // 000000004B8C: D3B14032 10026504
	v_pk_mul_f32 v[48:49], v[4:5], v[48:49] op_sel_hi:[0,1]    // 000000004B94: D3B14030 10026104
	v_pk_mul_f32 v[46:47], v[4:5], v[46:47] op_sel_hi:[0,1]    // 000000004B9C: D3B1402E 10025D04
	v_pk_mul_f32 v[44:45], v[4:5], v[44:45] op_sel_hi:[0,1]    // 000000004BA4: D3B1402C 10025904
	v_pk_mul_f32 v[42:43], v[4:5], v[42:43] op_sel_hi:[0,1]    // 000000004BAC: D3B1402A 10025504
	v_pk_mul_f32 v[40:41], v[4:5], v[40:41] op_sel_hi:[0,1]    // 000000004BB4: D3B14028 10025104
	v_pk_mul_f32 v[38:39], v[4:5], v[38:39] op_sel_hi:[0,1]    // 000000004BBC: D3B14026 10024D04
	v_pk_mul_f32 v[36:37], v[4:5], v[36:37] op_sel_hi:[0,1]    // 000000004BC4: D3B14024 10024904
	v_pk_mul_f32 v[34:35], v[4:5], v[34:35] op_sel_hi:[0,1]    // 000000004BCC: D3B14022 10024504
	v_pk_mul_f32 v[32:33], v[4:5], v[32:33] op_sel_hi:[0,1]    // 000000004BD4: D3B14020 10024104
	v_pk_mul_f32 v[30:31], v[4:5], v[30:31] op_sel_hi:[0,1]    // 000000004BDC: D3B1401E 10023D04
	v_pk_mul_f32 v[28:29], v[4:5], v[28:29] op_sel_hi:[0,1]    // 000000004BE4: D3B1401C 10023904
	v_pk_mul_f32 v[26:27], v[4:5], v[26:27] op_sel_hi:[0,1]    // 000000004BEC: D3B1401A 10023504
	v_pk_mul_f32 v[24:25], v[4:5], v[24:25] op_sel_hi:[0,1]    // 000000004BF4: D3B14018 10023104
	v_pk_mul_f32 v[22:23], v[4:5], v[22:23] op_sel_hi:[0,1]    // 000000004BFC: D3B14016 10022D04
	v_pk_mul_f32 v[20:21], v[4:5], v[20:21] op_sel_hi:[0,1]    // 000000004C04: D3B14014 10022904
	v_pk_mul_f32 v[18:19], v[4:5], v[18:19] op_sel_hi:[0,1]    // 000000004C0C: D3B14012 10022504
	v_mul_f32_e32 v190, v190, v4                               // 000000004C14: 0B7C09BE
	s_waitcnt vmcnt(4)                                         // 000000004C18: BF8C0F74
	s_barrier                                                  // 000000004C1C: BF8A0000
	s_add_u32 s16, s16, 1                                      // 000000004C20: 80108110
	s_add_u32 s17, s16, 1                                      // 000000004C24: 80118110
	s_cmp_ge_u32 s17, s15                                      // 000000004C28: BF090F11
	s_cbranch_scc1 623                                         // 000000004C2C: BF85026F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3aec>
	s_setprio 0                                                // 000000004C30: BF8F0000
	v_fma_f32 v4, v130, v188, v172                             // 000000004C34: D1CB0004 06B37982
	v_fma_f32 v5, v131, v188, v172                             // 000000004C3C: D1CB0005 06B37983
	v_fma_f32 v6, v132, v188, v172                             // 000000004C44: D1CB0006 06B37984
	v_fma_f32 v7, v133, v188, v172                             // 000000004C4C: D1CB0007 06B37985
	v_fma_f32 v8, v134, v188, v172                             // 000000004C54: D1CB0008 06B37986
	v_fma_f32 v9, v135, v188, v172                             // 000000004C5C: D1CB0009 06B37987
	v_fma_f32 v10, v136, v188, v172                            // 000000004C64: D1CB000A 06B37988
	v_fma_f32 v11, v137, v188, v172                            // 000000004C6C: D1CB000B 06B37989
	v_fma_f32 v12, v138, v188, v172                            // 000000004C74: D1CB000C 06B3798A
	v_fma_f32 v13, v139, v188, v172                            // 000000004C7C: D1CB000D 06B3798B
	v_fma_f32 v14, v140, v188, v172                            // 000000004C84: D1CB000E 06B3798C
	v_fma_f32 v15, v141, v188, v172                            // 000000004C8C: D1CB000F 06B3798D
	v_fma_f32 v130, v142, v188, v172                           // 000000004C94: D1CB0082 06B3798E
	v_fma_f32 v131, v143, v188, v172                           // 000000004C9C: D1CB0083 06B3798F
	v_fma_f32 v132, v144, v188, v172                           // 000000004CA4: D1CB0084 06B37990
	v_fma_f32 v133, v145, v188, v172                           // 000000004CAC: D1CB0085 06B37991
	v_fma_f32 v114, v114, v188, v172                           // 000000004CB4: D1CB0072 06B37972
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 000000004CBC: D1DD0004 02010104
	v_fma_f32 v115, v115, v188, v172                           // 000000004CC4: D1CB0073 06B37973
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 000000004CCC: D1DD0008 02010108
	v_fma_f32 v116, v116, v188, v172                           // 000000004CD4: D1CB0074 06B37974
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 000000004CDC: D1DD000C 0201010C
	v_fma_f32 v117, v117, v188, v172                           // 000000004CE4: D1CB0075 06B37975
	v_cvt_pk_u8_f32 v130, v130, 0, 0                           // 000000004CEC: D1DD0082 02010182
	v_fma_f32 v118, v118, v188, v172                           // 000000004CF4: D1CB0076 06B37976
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 000000004CFC: D1DD0004 04110305
	v_fma_f32 v119, v119, v188, v172                           // 000000004D04: D1CB0077 06B37977
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 000000004D0C: D1DD0005 04210309
	v_fma_f32 v8, v120, v188, v172                             // 000000004D14: D1CB0008 06B37978
	v_cvt_pk_u8_f32 v9, v13, 1, v12                            // 000000004D1C: D1DD0009 0431030D
	v_fma_f32 v12, v121, v188, v172                            // 000000004D24: D1CB000C 06B37979
	v_cvt_pk_u8_f32 v13, v131, 1, v130                         // 000000004D2C: D1DD000D 06090383
	v_fma_f32 v120, v122, v188, v172                           // 000000004D34: D1CB0078 06B3797A
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 000000004D3C: D1DD0004 04110506
	v_fma_f32 v121, v123, v188, v172                           // 000000004D44: D1CB0079 06B3797B
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 000000004D4C: D1DD0005 0415050A
	v_fma_f32 v10, v124, v188, v172                            // 000000004D54: D1CB000A 06B3797C
	v_cvt_pk_u8_f32 v6, v14, 2, v9                             // 000000004D5C: D1DD0006 0425050E
	v_fma_f32 v14, v125, v188, v172                            // 000000004D64: D1CB000E 06B3797D
	v_cvt_pk_u8_f32 v9, v132, 2, v13                           // 000000004D6C: D1DD0009 04350584
	v_fma_f32 v13, v126, v188, v172                            // 000000004D74: D1CB000D 06B3797E
	v_cvt_pk_u8_f32 v4, v7, 3, v4                              // 000000004D7C: D1DD0004 04110707
	v_fma_f32 v122, v127, v188, v172                           // 000000004D84: D1CB007A 06B3797F
	v_cvt_pk_u8_f32 v5, v11, 3, v5                             // 000000004D8C: D1DD0005 0415070B
	v_fma_f32 v11, v128, v188, v172                            // 000000004D94: D1CB000B 06B37980
	v_cvt_pk_u8_f32 v6, v15, 3, v6                             // 000000004D9C: D1DD0006 0419070F
	v_fma_f32 v15, v129, v188, v172                            // 000000004DA4: D1CB000F 06B37981
	v_cvt_pk_u8_f32 v7, v133, 3, v9                            // 000000004DAC: D1DD0007 04250785
	v_fma_f32 v98, v98, v188, v170                             // 000000004DB4: D1CB0062 06AB7962
	v_cvt_pk_u8_f32 v9, v114, 0, 0                             // 000000004DBC: D1DD0009 02010172
	v_fma_f32 v99, v99, v188, v170                             // 000000004DC4: D1CB0063 06AB7963
	v_cvt_pk_u8_f32 v114, v118, 0, 0                           // 000000004DCC: D1DD0072 02010176
	v_fma_f32 v100, v100, v188, v170                           // 000000004DD4: D1CB0064 06AB7964
	v_cvt_pk_u8_f32 v118, v120, 0, 0                           // 000000004DDC: D1DD0076 02010178
	v_fma_f32 v101, v101, v188, v170                           // 000000004DE4: D1CB0065 06AB7965
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 000000004DEC: D1DD000D 0201010D
	v_fma_f32 v102, v102, v188, v170                           // 000000004DF4: D1CB0066 06AB7966
	v_cvt_pk_u8_f32 v9, v115, 1, v9                            // 000000004DFC: D1DD0009 04250373
	v_fma_f32 v103, v103, v188, v170                           // 000000004E04: D1CB0067 06AB7967
	v_cvt_pk_u8_f32 v114, v119, 1, v114                        // 000000004E0C: D1DD0072 05C90377
	v_fma_f32 v104, v104, v188, v170                           // 000000004E14: D1CB0068 06AB7968
	v_cvt_pk_u8_f32 v115, v121, 1, v118                        // 000000004E1C: D1DD0073 05D90379
	v_fma_f32 v105, v105, v188, v170                           // 000000004E24: D1CB0069 06AB7969
	v_cvt_pk_u8_f32 v13, v122, 1, v13                          // 000000004E2C: D1DD000D 0435037A
	v_fma_f32 v106, v106, v188, v170                           // 000000004E34: D1CB006A 06AB796A
	v_cvt_pk_u8_f32 v9, v116, 2, v9                            // 000000004E3C: D1DD0009 04250574
	v_fma_f32 v107, v107, v188, v170                           // 000000004E44: D1CB006B 06AB796B
	v_cvt_pk_u8_f32 v114, v8, 2, v114                          // 000000004E4C: D1DD0072 05C90508
	v_fma_f32 v108, v108, v188, v170                           // 000000004E54: D1CB006C 06AB796C
	v_cvt_pk_u8_f32 v10, v10, 2, v115                          // 000000004E5C: D1DD000A 05CD050A
	v_fma_f32 v109, v109, v188, v170                           // 000000004E64: D1CB006D 06AB796D
	v_cvt_pk_u8_f32 v11, v11, 2, v13                           // 000000004E6C: D1DD000B 0435050B
	v_fma_f32 v13, v110, v188, v170                            // 000000004E74: D1CB000D 06AB796E
	v_cvt_pk_u8_f32 v8, v117, 3, v9                            // 000000004E7C: D1DD0008 04250775
	v_fma_f32 v110, v111, v188, v170                           // 000000004E84: D1CB006E 06AB796F
	v_cvt_pk_u8_f32 v9, v12, 3, v114                           // 000000004E8C: D1DD0009 05C9070C
	v_fma_f32 v12, v112, v188, v170                            // 000000004E94: D1CB000C 06AB7970
	v_cvt_pk_u8_f32 v10, v14, 3, v10                           // 000000004E9C: D1DD000A 0429070E
	v_fma_f32 v14, v113, v188, v170                            // 000000004EA4: D1CB000E 06AB7971
	v_cvt_pk_u8_f32 v11, v15, 3, v11                           // 000000004EAC: D1DD000B 042D070F
	v_fma_f32 v15, v82, v188, v170                             // 000000004EB4: D1CB000F 06AB7952
	v_cvt_pk_u8_f32 v82, v98, 0, 0                             // 000000004EBC: D1DD0052 02010162
	v_fma_f32 v83, v83, v188, v170                             // 000000004EC4: D1CB0053 06AB7953
	v_cvt_pk_u8_f32 v98, v102, 0, 0                            // 000000004ECC: D1DD0062 02010166
	v_fma_f32 v84, v84, v188, v170                             // 000000004ED4: D1CB0054 06AB7954
	v_cvt_pk_u8_f32 v102, v106, 0, 0                           // 000000004EDC: D1DD0066 0201016A
	v_fma_f32 v85, v85, v188, v170                             // 000000004EE4: D1CB0055 06AB7955
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 000000004EEC: D1DD000D 0201010D
	v_fma_f32 v86, v86, v188, v170                             // 000000004EF4: D1CB0056 06AB7956
	v_cvt_pk_u8_f32 v82, v99, 1, v82                           // 000000004EFC: D1DD0052 05490363
	v_fma_f32 v87, v87, v188, v170                             // 000000004F04: D1CB0057 06AB7957
	v_cvt_pk_u8_f32 v98, v103, 1, v98                          // 000000004F0C: D1DD0062 05890367
	v_fma_f32 v88, v88, v188, v170                             // 000000004F14: D1CB0058 06AB7958
	v_cvt_pk_u8_f32 v99, v107, 1, v102                         // 000000004F1C: D1DD0063 0599036B
	v_fma_f32 v89, v89, v188, v170                             // 000000004F24: D1CB0059 06AB7959
	v_cvt_pk_u8_f32 v13, v110, 1, v13                          // 000000004F2C: D1DD000D 0435036E
	v_fma_f32 v90, v90, v188, v170                             // 000000004F34: D1CB005A 06AB795A
	v_cvt_pk_u8_f32 v82, v100, 2, v82                          // 000000004F3C: D1DD0052 05490564
	v_fma_f32 v91, v91, v188, v170                             // 000000004F44: D1CB005B 06AB795B
	v_cvt_pk_u8_f32 v98, v104, 2, v98                          // 000000004F4C: D1DD0062 05890568
	v_fma_f32 v92, v92, v188, v170                             // 000000004F54: D1CB005C 06AB795C
	v_cvt_pk_u8_f32 v99, v108, 2, v99                          // 000000004F5C: D1DD0063 058D056C
	v_fma_f32 v93, v93, v188, v170                             // 000000004F64: D1CB005D 06AB795D
	v_cvt_pk_u8_f32 v12, v12, 2, v13                           // 000000004F6C: D1DD000C 0435050C
	v_fma_f32 v13, v94, v188, v170                             // 000000004F74: D1CB000D 06AB795E
	v_cvt_pk_u8_f32 v154, v101, 3, v82                         // 000000004F7C: D1DD009A 05490765
	v_fma_f32 v82, v95, v188, v170                             // 000000004F84: D1CB0052 06AB795F
	v_cvt_pk_u8_f32 v155, v105, 3, v98                         // 000000004F8C: D1DD009B 05890769
	v_fma_f32 v94, v96, v188, v170                             // 000000004F94: D1CB005E 06AB7960
	v_cvt_pk_u8_f32 v156, v109, 3, v99                         // 000000004F9C: D1DD009C 058D076D
	v_fma_f32 v95, v97, v188, v170                             // 000000004FA4: D1CB005F 06AB7961
	v_cvt_pk_u8_f32 v157, v14, 3, v12                          // 000000004FAC: D1DD009D 0431070E
	v_cvt_pk_u8_f32 v12, v15, 0, 0                             // 000000004FB4: D1DD000C 0201010F
	v_cvt_pk_u8_f32 v14, v86, 0, 0                             // 000000004FBC: D1DD000E 02010156
	v_cvt_pk_u8_f32 v15, v90, 0, 0                             // 000000004FC4: D1DD000F 0201015A
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 000000004FCC: D1DD000D 0201010D
	v_cvt_pk_u8_f32 v12, v83, 1, v12                           // 000000004FD4: D1DD000C 04310353
	v_cvt_pk_u8_f32 v14, v87, 1, v14                           // 000000004FDC: D1DD000E 04390357
	v_cvt_pk_u8_f32 v15, v91, 1, v15                           // 000000004FE4: D1DD000F 043D035B
	v_cvt_pk_u8_f32 v13, v82, 1, v13                           // 000000004FEC: D1DD000D 04350352
	v_cvt_pk_u8_f32 v12, v84, 2, v12                           // 000000004FF4: D1DD000C 04310554
	v_cvt_pk_u8_f32 v14, v88, 2, v14                           // 000000004FFC: D1DD000E 04390558
	v_cvt_pk_u8_f32 v15, v92, 2, v15                           // 000000005004: D1DD000F 043D055C
	v_cvt_pk_u8_f32 v13, v94, 2, v13                           // 00000000500C: D1DD000D 0435055E
	v_cvt_pk_u8_f32 v158, v85, 3, v12                          // 000000005014: D1DD009E 04310755
	v_cvt_pk_u8_f32 v159, v89, 3, v14                          // 00000000501C: D1DD009F 04390759
	v_cvt_pk_u8_f32 v160, v93, 3, v15                          // 000000005024: D1DD00A0 043D075D
	v_cvt_pk_u8_f32 v161, v95, 3, v13                          // 00000000502C: D1DD00A1 0435075F
	v_mov_b32_e32 v173, v172                                   // 000000005034: 7F5A03AC
	v_mov_b32_e32 v171, v170                                   // 000000005038: 7F5603AA
	ds_read_b128 v[86:89], v1                                  // 00000000503C: D9FE0000 56000001
	ds_read_b128 v[90:93], v1 offset:16                        // 000000005044: D9FE0010 5A000001
	ds_read_b128 v[94:97], v1 offset:4096                      // 00000000504C: D9FE1000 5E000001
	ds_read_b128 v[98:101], v1 offset:4112                     // 000000005054: D9FE1010 62000001
	s_barrier                                                  // 00000000505C: BF8A0000
	s_setprio 1                                                // 000000005060: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[4:11], 0// 000000005064: D3AD000C 02020992
	v_mfma_f32_16x16x128_f8f6f4 v[82:85], v[146:153], v[154:161], 0// 00000000506C: D3AD0052 02033592
	ds_read_b128 v[162:165], v1 offset:8192                    // 000000005074: D9FE2000 A2000001
	ds_read_b128 v[166:169], v1 offset:8208                    // 00000000507C: D9FE2010 A6000001
	ds_read_b128 v[196:199], v1 offset:12288                   // 000000005084: D9FE3000 C4000001
	ds_read_b128 v[200:203], v1 offset:12304                   // 00000000508C: D9FE3010 C8000001
	s_waitcnt lgkmcnt(4)                                       // 000000005094: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[86:93], v[228:235], 0// 000000005098: D3AE0082 0203C956
	ds_read_b128 v[204:207], v176                              // 0000000050A0: D9FE0000 CC0000B0
	ds_read_b128 v[208:211], v176 offset:16                    // 0000000050A8: D9FE0010 D00000B0
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[94:101], v[228:235], 0// 0000000050B0: D3AE0072 0203C95E
	ds_read_b128 v[212:215], v176 offset:4096                  // 0000000050B8: D9FE1000 D40000B0
	ds_read_b128 v[216:219], v176 offset:4112                  // 0000000050C0: D9FE1010 D80000B0
	s_waitcnt lgkmcnt(4)                                       // 0000000050C8: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[162:169], v[228:235], 0// 0000000050CC: D3AE0062 0203C9A2
	ds_read_b128 v[162:165], v176 offset:8192                  // 0000000050D4: D9FE2000 A20000B0
	ds_read_b128 v[166:169], v176 offset:8208                  // 0000000050DC: D9FE2010 A60000B0
	s_min_u32 s17, s80, s81                                    // 0000000050E4: 83915150
	s_add_u32 m0, s70, 0xc000                                  // 0000000050E8: 807CFF46 0000C000
	s_nop 0                                                    // 0000000050F0: BF800000
	buffer_load_dwordx4 v180, s[60:63], s17 offen lds          // 0000000050F4: E05D1000 110F00B4
	v_mul_f32_e32 v3, v3, v12                                  // 0000000050FC: 0A061903
	v_add_f32_e32 v3, v190, v3                                 // 000000005100: 020607BE
	v_mul_f32_e32 v86, v194, v82                               // 000000005104: 0AACA5C2
	v_add_f32_e32 v190, v3, v86                                // 000000005108: 037CAD03
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[196:203], v[228:235], 0// 00000000510C: D3AE0052 0203C9C4
	ds_read_b128 v[192:195], v176 offset:12288                 // 000000005114: D9FE3000 C00000B0
	ds_read_b128 v[196:199], v176 offset:12304                 // 00000000511C: D9FE3010 C40000B0
	s_add_u32 m0, s70, 0xe000                                  // 000000005124: 807CFF46 0000E000
	s_nop 0                                                    // 00000000512C: BF800000
	buffer_load_dwordx4 v181, s[60:63], s17 offen lds          // 000000005130: E05D1000 110F00B5
	s_waitcnt lgkmcnt(4)                                       // 000000005138: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[204:211], v[236:243], v[130:145]// 00000000513C: D3AE0082 060BD9CC
	ds_read_b64_tr_b8 v[200:201], v189 offset:49152            // 000000005144: D9C4C000 C80000BD
	ds_read_b64_tr_b8 v[202:203], v189 offset:50176            // 00000000514C: D9C4C400 CA0000BD
	ds_read_b64_tr_b8 v[204:205], v189 offset:51200            // 000000005154: D9C4C800 CC0000BD
	ds_read_b64_tr_b8 v[206:207], v189 offset:52224            // 00000000515C: D9C4CC00 CE0000BD
	s_min_u32 s17, s49, s81                                    // 000000005164: 83915131
	s_add_u32 m0, s71, 0x4000                                  // 000000005168: 807CFF47 00004000
	s_nop 0                                                    // 000000005170: BF800000
	buffer_load_dwordx4 v182, s[64:67], s17 offen lds          // 000000005174: E05D1000 111000B6
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[212:219], v[236:243], v[114:129]// 00000000517C: D3AE0072 05CBD9D4
	ds_read_b64_tr_b8 v[208:209], v189 offset:49408            // 000000005184: D9C4C100 D00000BD
	ds_read_b64_tr_b8 v[210:211], v189 offset:50432            // 00000000518C: D9C4C500 D20000BD
	ds_read_b64_tr_b8 v[212:213], v189 offset:51456            // 000000005194: D9C4C900 D40000BD
	ds_read_b64_tr_b8 v[214:215], v189 offset:52480            // 00000000519C: D9C4CD00 D60000BD
	s_add_u32 m0, s71, 0x6000                                  // 0000000051A4: 807CFF47 00006000
	s_nop 0                                                    // 0000000051AC: BF800000
	buffer_load_dwordx4 v183, s[64:67], s17 offen lds          // 0000000051B0: E05D1000 111000B7
	s_add_u32 s80, s80, s72                                    // 0000000051B8: 80504850
	s_add_u32 s49, s49, s72                                    // 0000000051BC: 80314831
	v_max_f32_e32 v3, v130, v131                               // 0000000051C0: 16070782
	v_max3_f32 v3, v132, v133, v3                              // 0000000051C4: D1D30003 040F0B84
	v_max3_f32 v3, v134, v135, v3                              // 0000000051CC: D1D30003 040F0F86
	v_max3_f32 v3, v136, v137, v3                              // 0000000051D4: D1D30003 040F1388
	v_max3_f32 v3, v138, v139, v3                              // 0000000051DC: D1D30003 040F178A
	v_max3_f32 v3, v140, v141, v3                              // 0000000051E4: D1D30003 040F1B8C
	v_max3_f32 v3, v142, v143, v3                              // 0000000051EC: D1D30003 040F1F8E
	v_max3_f32 v3, v144, v145, v3                              // 0000000051F4: D1D30003 040F2390
	s_waitcnt lgkmcnt(8)                                       // 0000000051FC: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[162:169], v[236:243], v[98:113]// 000000005200: D3AE0062 058BD9A2
	ds_read_b64_tr_b8 v[162:163], v189 offset:49664            // 000000005208: D9C4C200 A20000BD
	ds_read_b64_tr_b8 v[164:165], v189 offset:50688            // 000000005210: D9C4C600 A40000BD
	ds_read_b64_tr_b8 v[166:167], v189 offset:51712            // 000000005218: D9C4CA00 A60000BD
	ds_read_b64_tr_b8 v[168:169], v189 offset:52736            // 000000005220: D9C4CE00 A80000BD
	v_max_f32_e32 v12, v114, v115                              // 000000005228: 1618E772
	v_max3_f32 v12, v116, v117, v12                            // 00000000522C: D1D3000C 0432EB74
	v_max3_f32 v12, v118, v119, v12                            // 000000005234: D1D3000C 0432EF76
	v_max3_f32 v12, v120, v121, v12                            // 00000000523C: D1D3000C 0432F378
	v_max3_f32 v12, v122, v123, v12                            // 000000005244: D1D3000C 0432F77A
	v_max3_f32 v12, v124, v125, v12                            // 00000000524C: D1D3000C 0432FB7C
	v_max3_f32 v12, v126, v127, v12                            // 000000005254: D1D3000C 0432FF7E
	v_max3_f32 v12, v128, v129, v12                            // 00000000525C: D1D3000C 04330380
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[192:199], v[236:243], v[82:97]// 000000005264: D3AE0052 054BD9C0
	s_nop 3                                                    // 00000000526C: BF800003
	v_max_f32_e32 v13, v98, v99                                // 000000005270: 161AC762
	v_max3_f32 v13, v100, v101, v13                            // 000000005274: D1D3000D 0436CB64
	v_max3_f32 v13, v102, v103, v13                            // 00000000527C: D1D3000D 0436CF66
	v_max3_f32 v13, v104, v105, v13                            // 000000005284: D1D3000D 0436D368
	v_max3_f32 v13, v106, v107, v13                            // 00000000528C: D1D3000D 0436D76A
	v_max3_f32 v13, v108, v109, v13                            // 000000005294: D1D3000D 0436DB6C
	v_max3_f32 v13, v110, v111, v13                            // 00000000529C: D1D3000D 0436DF6E
	v_max3_f32 v13, v112, v113, v13                            // 0000000052A4: D1D3000D 0436E370
	s_waitcnt lgkmcnt(4)                                       // 0000000052AC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[200:207], v[4:11], v[66:81], v177, v191 op_sel_hi:[0,0,0]// 0000000052B0: D3AC0000 00037FB1 D3AE0842 050A09C8
	ds_read_b64_tr_b8 v[192:193], v189 offset:49920            // 0000000052C0: D9C4C300 C00000BD
	ds_read_b64_tr_b8 v[194:195], v189 offset:50944            // 0000000052C8: D9C4C700 C20000BD
	ds_read_b64_tr_b8 v[196:197], v189 offset:51968            // 0000000052D0: D9C4CB00 C40000BD
	ds_read_b64_tr_b8 v[198:199], v189 offset:52992            // 0000000052D8: D9C4CF00 C60000BD
	ds_read_b64_tr_b8 v[200:201], v189 offset:53248            // 0000000052E0: D9C4D000 C80000BD
	ds_read_b64_tr_b8 v[202:203], v189 offset:54272            // 0000000052E8: D9C4D400 CA0000BD
	ds_read_b64_tr_b8 v[204:205], v189 offset:55296            // 0000000052F0: D9C4D800 CC0000BD
	ds_read_b64_tr_b8 v[206:207], v189 offset:56320            // 0000000052F8: D9C4DC00 CE0000BD
	v_max_f32_e32 v14, v82, v83                                // 000000005300: 161CA752
	v_max3_f32 v14, v84, v85, v14                              // 000000005304: D1D3000E 043AAB54
	v_max3_f32 v14, v86, v87, v14                              // 00000000530C: D1D3000E 043AAF56
	v_max3_f32 v14, v88, v89, v14                              // 000000005314: D1D3000E 043AB358
	v_max3_f32 v14, v90, v91, v14                              // 00000000531C: D1D3000E 043AB75A
	v_max3_f32 v14, v92, v93, v14                              // 000000005324: D1D3000E 043ABB5C
	v_max3_f32 v14, v94, v95, v14                              // 00000000532C: D1D3000E 043ABF5E
	v_max3_f32 v14, v96, v97, v14                              // 000000005334: D1D3000E 043AC360
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[208:215], v[4:11], v[50:65], v177, v191 op_sel_hi:[0,0,0]// 00000000533C: D3AC0000 00037FB1 D3AE0832 04CA09D0
	v_max_f32_e32 v12, v3, v12                                 // 00000000534C: 16181903
	v_max_f32_e32 v14, v13, v14                                // 000000005350: 161C1D0D
	v_mov_b32_e32 v13, v12                                     // 000000005354: 7E1A030C
	v_mov_b32_e32 v15, v14                                     // 000000005358: 7E1E030E
	s_nop 0                                                    // 00000000535C: BF800000
	v_permlane32_swap_b32_e32 v12, v13                         // 000000005360: 7E18B50D
	v_permlane32_swap_b32_e32 v14, v15                         // 000000005364: 7E1CB50F
	v_max_f32_e32 v3, v12, v13                                 // 000000005368: 16061B0C
	v_max_f32_e32 v12, v14, v15                                // 00000000536C: 16181F0E
	s_waitcnt lgkmcnt(4)                                       // 000000005370: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[162:169], v[4:11], v[34:49], v177, v191 op_sel_hi:[0,0,0]// 000000005374: D3AC0000 00037FB1 D3AE0822 048A09A2
	ds_read_b64_tr_b8 v[162:163], v189 offset:53504            // 000000005384: D9C4D100 A20000BD
	ds_read_b64_tr_b8 v[164:165], v189 offset:54528            // 00000000538C: D9C4D500 A40000BD
	ds_read_b64_tr_b8 v[166:167], v189 offset:55552            // 000000005394: D9C4D900 A60000BD
	ds_read_b64_tr_b8 v[168:169], v189 offset:56576            // 00000000539C: D9C4DD00 A80000BD
	ds_read_b64_tr_b8 v[208:209], v189 offset:53760            // 0000000053A4: D9C4D200 D00000BD
	ds_read_b64_tr_b8 v[210:211], v189 offset:54784            // 0000000053AC: D9C4D600 D20000BD
	ds_read_b64_tr_b8 v[212:213], v189 offset:55808            // 0000000053B4: D9C4DA00 D40000BD
	ds_read_b64_tr_b8 v[214:215], v189 offset:56832            // 0000000053BC: D9C4DE00 D60000BD
	v_max_f32_e32 v13, v3, v12                                 // 0000000053C4: 161A1903
	v_mul_f32_e32 v13, v187, v13                               // 0000000053C8: 0A1A1BBB
	v_max_f32_e32 v13, v16, v13                                // 0000000053CC: 161A1B10
	v_sub_f32_e32 v14, v13, v16                                // 0000000053D0: 041C210D
	v_cmp_lt_f32_e32 vcc, s69, v14                             // 0000000053D4: 7C821C45
	s_cmp_lg_u64 vcc, 0                                        // 0000000053D8: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 0000000053DC: 859280C1
	s_cselect_b32 s17, 1, 0                                    // 0000000053E0: 85118081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[192:199], v[4:11], v[18:33], v177, v191 op_sel_hi:[0,0,0]// 0000000053E4: D3AC0000 00037FB1 D3AE0812 044A09C0
	v_cndmask_b32_e64 v192, v16, v13, s[18:19]                 // 0000000053F4: D10000C0 004A1B10
	v_fma_f32 v3, v3, v187, -v192                              // 0000000053FC: D1CB0003 87037703
	v_floor_f32_e32 v3, v3                                     // 000000005404: 7E063F03
	v_med3_f32 v4, v3, s68, 0                                  // 000000005408: D1D60004 02008903
	v_cvt_i32_f32_e32 v3, v4                                   // 000000005410: 7E061104
	v_add_u32_e32 v191, 0x7f, v3                               // 000000005414: 697E06FF 0000007F
	v_lshlrev_b32_e32 v3, 23, v191                             // 00000000541C: 24077E97
	v_fma_f32 v5, v12, v187, -v192                             // 000000005420: D1CB0005 8703770C
	s_waitcnt lgkmcnt(4)                                       // 000000005428: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[200:207], v[154:161], v[66:81], v177, v17 op_sel_hi:[0,0,0]// 00000000542C: D3AC0000 000223B1 D3AE0842 050B35C8
	ds_read_b64_tr_b8 v[8:9], v189 offset:54016                // 00000000543C: D9C4D300 080000BD
	ds_read_b64_tr_b8 v[10:11], v189 offset:55040              // 000000005444: D9C4D700 0A0000BD
	ds_read_b64_tr_b8 v[12:13], v189 offset:56064              // 00000000544C: D9C4DB00 0C0000BD
	ds_read_b64_tr_b8 v[14:15], v189 offset:57088              // 000000005454: D9C4DF00 0E0000BD
	v_floor_f32_e32 v5, v5                                     // 00000000545C: 7E0A3F05
	v_med3_f32 v5, v5, s68, 0                                  // 000000005460: D1D60005 02008905
	v_cvt_i32_f32_e32 v6, v5                                   // 000000005468: 7E0C1105
	v_add_u32_e32 v193, 0x7f, v6                               // 00000000546C: 69820CFF 0000007F
	v_lshlrev_b32_e32 v194, 23, v193                           // 000000005474: 25858297
	v_fma_f32 v6, v192, v178, s50                              // 000000005478: D1CB0006 00CB65C0
	v_fma_f32 v172, v4, v178, v6                               // 000000005480: D1CB00AC 041B6504
	v_fma_f32 v170, v5, v178, v6                               // 000000005488: D1CB00AA 041B6505
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[162:169], v[154:161], v[50:65], v177, v17 op_sel_hi:[0,0,0]// 000000005490: D3AC0000 000223B1 D3AE0832 04CB35A2
	s_waitcnt lgkmcnt(0)                                       // 0000000054A0: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[208:215], v[154:161], v[34:49], v177, v17 op_sel_hi:[0,0,0]// 0000000054A4: D3AC0000 000223B1 D3AE0822 048B35D0
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[8:15], v[154:161], v[18:33], v177, v17 op_sel_hi:[0,0,0]// 0000000054B4: D3AC0000 000223B1 D3AE0812 044B3508
	s_cmp_eq_u32 s17, 0                                        // 0000000054C4: BF068011
	s_cbranch_scc1 68                                          // 0000000054C8: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3adc>
	v_sub_f32_e32 v4, v16, v192                                // 0000000054CC: 04098110
	v_exp_f32_e32 v4, v4                                       // 0000000054D0: 7E084104
	s_nop 0                                                    // 0000000054D4: BF800000
	v_pk_mul_f32 v[80:81], v[4:5], v[80:81] op_sel_hi:[0,1]    // 0000000054D8: D3B14050 1002A104
	v_pk_mul_f32 v[78:79], v[4:5], v[78:79] op_sel_hi:[0,1]    // 0000000054E0: D3B1404E 10029D04
	v_pk_mul_f32 v[76:77], v[4:5], v[76:77] op_sel_hi:[0,1]    // 0000000054E8: D3B1404C 10029904
	v_pk_mul_f32 v[74:75], v[4:5], v[74:75] op_sel_hi:[0,1]    // 0000000054F0: D3B1404A 10029504
	v_pk_mul_f32 v[72:73], v[4:5], v[72:73] op_sel_hi:[0,1]    // 0000000054F8: D3B14048 10029104
	v_pk_mul_f32 v[70:71], v[4:5], v[70:71] op_sel_hi:[0,1]    // 000000005500: D3B14046 10028D04
	v_pk_mul_f32 v[68:69], v[4:5], v[68:69] op_sel_hi:[0,1]    // 000000005508: D3B14044 10028904
	v_pk_mul_f32 v[66:67], v[4:5], v[66:67] op_sel_hi:[0,1]    // 000000005510: D3B14042 10028504
	v_pk_mul_f32 v[64:65], v[4:5], v[64:65] op_sel_hi:[0,1]    // 000000005518: D3B14040 10028104
	v_pk_mul_f32 v[62:63], v[4:5], v[62:63] op_sel_hi:[0,1]    // 000000005520: D3B1403E 10027D04
	v_pk_mul_f32 v[60:61], v[4:5], v[60:61] op_sel_hi:[0,1]    // 000000005528: D3B1403C 10027904
	v_pk_mul_f32 v[58:59], v[4:5], v[58:59] op_sel_hi:[0,1]    // 000000005530: D3B1403A 10027504
	v_pk_mul_f32 v[56:57], v[4:5], v[56:57] op_sel_hi:[0,1]    // 000000005538: D3B14038 10027104
	v_pk_mul_f32 v[54:55], v[4:5], v[54:55] op_sel_hi:[0,1]    // 000000005540: D3B14036 10026D04
	v_pk_mul_f32 v[52:53], v[4:5], v[52:53] op_sel_hi:[0,1]    // 000000005548: D3B14034 10026904
	v_pk_mul_f32 v[50:51], v[4:5], v[50:51] op_sel_hi:[0,1]    // 000000005550: D3B14032 10026504
	v_pk_mul_f32 v[48:49], v[4:5], v[48:49] op_sel_hi:[0,1]    // 000000005558: D3B14030 10026104
	v_pk_mul_f32 v[46:47], v[4:5], v[46:47] op_sel_hi:[0,1]    // 000000005560: D3B1402E 10025D04
	v_pk_mul_f32 v[44:45], v[4:5], v[44:45] op_sel_hi:[0,1]    // 000000005568: D3B1402C 10025904
	v_pk_mul_f32 v[42:43], v[4:5], v[42:43] op_sel_hi:[0,1]    // 000000005570: D3B1402A 10025504
	v_pk_mul_f32 v[40:41], v[4:5], v[40:41] op_sel_hi:[0,1]    // 000000005578: D3B14028 10025104
	v_pk_mul_f32 v[38:39], v[4:5], v[38:39] op_sel_hi:[0,1]    // 000000005580: D3B14026 10024D04
	v_pk_mul_f32 v[36:37], v[4:5], v[36:37] op_sel_hi:[0,1]    // 000000005588: D3B14024 10024904
	v_pk_mul_f32 v[34:35], v[4:5], v[34:35] op_sel_hi:[0,1]    // 000000005590: D3B14022 10024504
	v_pk_mul_f32 v[32:33], v[4:5], v[32:33] op_sel_hi:[0,1]    // 000000005598: D3B14020 10024104
	v_pk_mul_f32 v[30:31], v[4:5], v[30:31] op_sel_hi:[0,1]    // 0000000055A0: D3B1401E 10023D04
	v_pk_mul_f32 v[28:29], v[4:5], v[28:29] op_sel_hi:[0,1]    // 0000000055A8: D3B1401C 10023904
	v_pk_mul_f32 v[26:27], v[4:5], v[26:27] op_sel_hi:[0,1]    // 0000000055B0: D3B1401A 10023504
	v_pk_mul_f32 v[24:25], v[4:5], v[24:25] op_sel_hi:[0,1]    // 0000000055B8: D3B14018 10023104
	v_pk_mul_f32 v[22:23], v[4:5], v[22:23] op_sel_hi:[0,1]    // 0000000055C0: D3B14016 10022D04
	v_pk_mul_f32 v[20:21], v[4:5], v[20:21] op_sel_hi:[0,1]    // 0000000055C8: D3B14014 10022904
	v_pk_mul_f32 v[18:19], v[4:5], v[18:19] op_sel_hi:[0,1]    // 0000000055D0: D3B14012 10022504
	v_mul_f32_e32 v190, v190, v4                               // 0000000055D8: 0B7C09BE
	s_waitcnt vmcnt(4)                                         // 0000000055DC: BF8C0F74
	s_barrier                                                  // 0000000055E0: BF8A0000
	s_add_u32 s16, s16, 1                                      // 0000000055E4: 80108110
	s_branch 63037                                             // 0000000055E8: BF82F63D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x13e0>
	v_mov_b32_e32 v192, v16                                    // 0000000055EC: 7F800310
	v_mov_b32_e32 v193, v17                                    // 0000000055F0: 7F820311
	s_add_u32 s17, s16, s76                                    // 0000000055F4: 80114C10
	s_bitcmp1_b32 s17, 0                                       // 0000000055F8: BF0D8011
	s_cbranch_scc1 1391                                        // 0000000055FC: BF85056F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x50bc>
	s_branch 5                                                 // 000000005600: BF820005 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3b18>
	v_mov_b32_e32 v192, v16                                    // 000000005604: 7F800310
	v_mov_b32_e32 v193, v17                                    // 000000005608: 7F820311
	s_add_u32 s17, s16, s76                                    // 00000000560C: 80114C10
	s_bitcmp1_b32 s17, 0                                       // 000000005610: BF0D8011
	s_cbranch_scc1 1385                                        // 000000005614: BF850569 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x50bc>
	s_add_u32 s17, s16, 1                                      // 000000005618: 80118110
	s_cmp_ge_u32 s17, s79                                      // 00000000561C: BF094F11
	s_cbranch_scc1 2960                                        // 000000005620: BF850B90 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6964>
	s_add_u32 s18, s16, s76                                    // 000000005624: 80124C10
	s_lshl_b32 s19, s18, 14                                    // 000000005628: 8E138E12
	s_and_b32 s17, s19, 0xc000                                 // 00000000562C: 8611FF13 0000C000
	v_add_u32_e32 v171, s17, v189                              // 000000005634: 69577A11
	s_cmp_ge_u32 s16, s15                                      // 000000005638: BF090F10
	s_cbranch_scc1 936                                         // 00000000563C: BF8503A8 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x49e0>
	s_setprio 0                                                // 000000005640: BF8F0000
	v_fma_f32 v94, v94, v188, v170                             // 000000005644: D1CB005E 06AB795E
	s_addk_i32 s19, 0x4000                                     // 00000000564C: B7134000
	v_fma_f32 v95, v95, v188, v170                             // 000000005650: D1CB005F 06AB795F
	v_cvt_pk_u8_f32 v94, v94, 0, 0                             // 000000005658: D1DD005E 0201015E
	s_and_b32 s19, s19, 0xc000                                 // 000000005660: 8613FF13 0000C000
	v_cvt_pk_u8_f32 v94, v95, 1, v94                           // 000000005668: D1DD005E 0579035F
	v_or_b32_e32 v95, s19, v1                                  // 000000005670: 28BE0213
	ds_read_b128 v[196:199], v95                               // 000000005674: D9FE0000 C400005F
	ds_read_b128 v[200:203], v95 offset:16                     // 00000000567C: D9FE0010 C800005F
	ds_read_b128 v[204:207], v95 offset:4096                   // 000000005684: D9FE1000 CC00005F
	ds_read_b128 v[208:211], v95 offset:4112                   // 00000000568C: D9FE1010 D000005F
	v_fma_f32 v4, v130, v188, v172                             // 000000005694: D1CB0004 06B37982
	v_fma_f32 v8, v114, v188, v172                             // 00000000569C: D1CB0008 06B37972
	v_fma_f32 v10, v116, v188, v172                            // 0000000056A4: D1CB000A 06B37974
	v_fma_f32 v12, v134, v188, v172                            // 0000000056AC: D1CB000C 06B37986
	v_fma_f32 v16, v118, v188, v172                            // 0000000056B4: D1CB0010 06B37976
	v_fma_f32 v114, v120, v188, v172                           // 0000000056BC: D1CB0072 06B37978
	v_fma_f32 v116, v138, v188, v172                           // 0000000056C4: D1CB0074 06B3798A
	v_fma_f32 v120, v122, v188, v172                           // 0000000056CC: D1CB0078 06B3797A
	v_fma_f32 v122, v124, v188, v172                           // 0000000056D4: D1CB007A 06B3797C
	v_fma_f32 v124, v142, v188, v172                           // 0000000056DC: D1CB007C 06B3798E
	v_fma_f32 v126, v126, v188, v172                           // 0000000056E4: D1CB007E 06B3797E
	v_fma_f32 v98, v98, v188, v170                             // 0000000056EC: D1CB0062 06AB7962
	v_fma_f32 v82, v82, v188, v170                             // 0000000056F4: D1CB0052 06AB7952
	v_fma_f32 v102, v102, v188, v170                           // 0000000056FC: D1CB0066 06AB7966
	v_fma_f32 v86, v86, v188, v170                             // 000000005704: D1CB0056 06AB7956
	v_fma_f32 v106, v106, v188, v170                           // 00000000570C: D1CB006A 06AB796A
	v_fma_f32 v90, v90, v188, v170                             // 000000005714: D1CB005A 06AB795A
	v_fma_f32 v110, v110, v188, v170                           // 00000000571C: D1CB006E 06AB796E
	v_fma_f32 v5, v131, v188, v172                             // 000000005724: D1CB0005 06B37983
	v_fma_f32 v9, v115, v188, v172                             // 00000000572C: D1CB0009 06B37973
	v_fma_f32 v11, v117, v188, v172                            // 000000005734: D1CB000B 06B37975
	v_fma_f32 v13, v135, v188, v172                            // 00000000573C: D1CB000D 06B37987
	v_fma_f32 v17, v119, v188, v172                            // 000000005744: D1CB0011 06B37977
	v_fma_f32 v115, v121, v188, v172                           // 00000000574C: D1CB0073 06B37979
	v_fma_f32 v117, v139, v188, v172                           // 000000005754: D1CB0075 06B3798B
	v_fma_f32 v121, v123, v188, v172                           // 00000000575C: D1CB0079 06B3797B
	v_fma_f32 v123, v125, v188, v172                           // 000000005764: D1CB007B 06B3797D
	v_fma_f32 v125, v143, v188, v172                           // 00000000576C: D1CB007D 06B3798F
	v_fma_f32 v127, v127, v188, v172                           // 000000005774: D1CB007F 06B3797F
	v_fma_f32 v99, v99, v188, v170                             // 00000000577C: D1CB0063 06AB7963
	v_fma_f32 v83, v83, v188, v170                             // 000000005784: D1CB0053 06AB7953
	v_fma_f32 v103, v103, v188, v170                           // 00000000578C: D1CB0067 06AB7967
	v_fma_f32 v87, v87, v188, v170                             // 000000005794: D1CB0057 06AB7957
	v_fma_f32 v107, v107, v188, v170                           // 00000000579C: D1CB006B 06AB796B
	v_fma_f32 v91, v91, v188, v170                             // 0000000057A4: D1CB005B 06AB795B
	v_fma_f32 v111, v111, v188, v170                           // 0000000057AC: D1CB006F 06AB796F
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 0000000057B4: D1DD0004 02010104
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 0000000057BC: D1DD0008 02010108
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 0000000057C4: D1DD000C 0201010C
	v_cvt_pk_u8_f32 v16, v16, 0, 0                             // 0000000057CC: D1DD0010 02010110
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 0000000057D4: D1DD0074 02010174
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 0000000057DC: D1DD0078 02010178
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 0000000057E4: D1DD007C 0201017C
	v_cvt_pk_u8_f32 v126, v126, 0, 0                           // 0000000057EC: D1DD007E 0201017E
	v_cvt_pk_u8_f32 v98, v98, 0, 0                             // 0000000057F4: D1DD0062 02010162
	v_cvt_pk_u8_f32 v82, v82, 0, 0                             // 0000000057FC: D1DD0052 02010152
	v_cvt_pk_u8_f32 v102, v102, 0, 0                           // 000000005804: D1DD0066 02010166
	v_cvt_pk_u8_f32 v86, v86, 0, 0                             // 00000000580C: D1DD0056 02010156
	v_cvt_pk_u8_f32 v106, v106, 0, 0                           // 000000005814: D1DD006A 0201016A
	v_cvt_pk_u8_f32 v90, v90, 0, 0                             // 00000000581C: D1DD005A 0201015A
	v_cvt_pk_u8_f32 v110, v110, 0, 0                           // 000000005824: D1DD006E 0201016E
	v_fma_f32 v6, v132, v188, v172                             // 00000000582C: D1CB0006 06B37984
	v_fma_f32 v14, v136, v188, v172                            // 000000005834: D1CB000E 06B37988
	v_fma_f32 v118, v140, v188, v172                           // 00000000583C: D1CB0076 06B3798C
	v_fma_f32 v130, v144, v188, v172                           // 000000005844: D1CB0082 06B37990
	v_fma_f32 v128, v128, v188, v172                           // 00000000584C: D1CB0080 06B37980
	v_fma_f32 v100, v100, v188, v170                           // 000000005854: D1CB0064 06AB7964
	v_fma_f32 v84, v84, v188, v170                             // 00000000585C: D1CB0054 06AB7954
	v_fma_f32 v104, v104, v188, v170                           // 000000005864: D1CB0068 06AB7968
	v_fma_f32 v88, v88, v188, v170                             // 00000000586C: D1CB0058 06AB7958
	v_fma_f32 v108, v108, v188, v170                           // 000000005874: D1CB006C 06AB796C
	v_fma_f32 v92, v92, v188, v170                             // 00000000587C: D1CB005C 06AB795C
	v_fma_f32 v112, v112, v188, v170                           // 000000005884: D1CB0070 06AB7970
	v_fma_f32 v96, v96, v188, v170                             // 00000000588C: D1CB0060 06AB7960
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 000000005894: D1DD0004 04110305
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 00000000589C: D1DD0005 04210309
	v_cvt_pk_u8_f32 v8, v13, 1, v12                            // 0000000058A4: D1DD0008 0431030D
	v_cvt_pk_u8_f32 v9, v17, 1, v16                            // 0000000058AC: D1DD0009 04410311
	v_cvt_pk_u8_f32 v12, v117, 1, v116                         // 0000000058B4: D1DD000C 05D10375
	v_cvt_pk_u8_f32 v13, v121, 1, v120                         // 0000000058BC: D1DD000D 05E10379
	v_cvt_pk_u8_f32 v16, v125, 1, v124                         // 0000000058C4: D1DD0010 05F1037D
	v_cvt_pk_u8_f32 v17, v127, 1, v126                         // 0000000058CC: D1DD0011 05F9037F
	v_cvt_pk_u8_f32 v98, v99, 1, v98                           // 0000000058D4: D1DD0062 05890363
	v_cvt_pk_u8_f32 v82, v83, 1, v82                           // 0000000058DC: D1DD0052 05490353
	v_cvt_pk_u8_f32 v83, v103, 1, v102                         // 0000000058E4: D1DD0053 05990367
	v_cvt_pk_u8_f32 v86, v87, 1, v86                           // 0000000058EC: D1DD0056 05590357
	v_cvt_pk_u8_f32 v87, v107, 1, v106                         // 0000000058F4: D1DD0057 05A9036B
	v_cvt_pk_u8_f32 v90, v91, 1, v90                           // 0000000058FC: D1DD005A 0569035B
	v_cvt_pk_u8_f32 v91, v111, 1, v110                         // 000000005904: D1DD005B 05B9036F
	v_fma_f32 v7, v133, v188, v172                             // 00000000590C: D1CB0007 06B37985
	v_fma_f32 v15, v137, v188, v172                            // 000000005914: D1CB000F 06B37989
	v_fma_f32 v119, v141, v188, v172                           // 00000000591C: D1CB0077 06B3798D
	v_fma_f32 v131, v145, v188, v172                           // 000000005924: D1CB0083 06B37991
	v_fma_f32 v129, v129, v188, v172                           // 00000000592C: D1CB0081 06B37981
	v_fma_f32 v101, v101, v188, v170                           // 000000005934: D1CB0065 06AB7965
	v_fma_f32 v85, v85, v188, v170                             // 00000000593C: D1CB0055 06AB7955
	v_fma_f32 v105, v105, v188, v170                           // 000000005944: D1CB0069 06AB7969
	v_fma_f32 v89, v89, v188, v170                             // 00000000594C: D1CB0059 06AB7959
	v_fma_f32 v109, v109, v188, v170                           // 000000005954: D1CB006D 06AB796D
	v_fma_f32 v93, v93, v188, v170                             // 00000000595C: D1CB005D 06AB795D
	v_fma_f32 v113, v113, v188, v170                           // 000000005964: D1CB0071 06AB7971
	v_fma_f32 v97, v97, v188, v170                             // 00000000596C: D1CB0061 06AB7961
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 000000005974: D1DD0004 04110506
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 00000000597C: D1DD0005 0415050A
	v_cvt_pk_u8_f32 v6, v14, 2, v8                             // 000000005984: D1DD0006 0421050E
	v_cvt_pk_u8_f32 v8, v114, 2, v9                            // 00000000598C: D1DD0008 04250572
	v_cvt_pk_u8_f32 v9, v118, 2, v12                           // 000000005994: D1DD0009 04310576
	v_cvt_pk_u8_f32 v10, v122, 2, v13                          // 00000000599C: D1DD000A 0435057A
	v_cvt_pk_u8_f32 v12, v130, 2, v16                          // 0000000059A4: D1DD000C 04410582
	v_cvt_pk_u8_f32 v13, v128, 2, v17                          // 0000000059AC: D1DD000D 04450580
	v_cvt_pk_u8_f32 v14, v100, 2, v98                          // 0000000059B4: D1DD000E 05890564
	v_cvt_pk_u8_f32 v16, v84, 2, v82                           // 0000000059BC: D1DD0010 05490554
	v_cvt_pk_u8_f32 v17, v104, 2, v83                          // 0000000059C4: D1DD0011 054D0568
	v_cvt_pk_u8_f32 v82, v88, 2, v86                           // 0000000059CC: D1DD0052 05590558
	v_cvt_pk_u8_f32 v83, v108, 2, v87                          // 0000000059D4: D1DD0053 055D056C
	v_cvt_pk_u8_f32 v84, v92, 2, v90                           // 0000000059DC: D1DD0054 0569055C
	v_cvt_pk_u8_f32 v86, v112, 2, v91                          // 0000000059E4: D1DD0056 056D0570
	v_cvt_pk_u8_f32 v87, v96, 2, v94                           // 0000000059EC: D1DD0057 05790560
	v_cvt_pk_u8_f32 v162, v7, 3, v4                            // 0000000059F4: D1DD00A2 04110707
	v_cvt_pk_u8_f32 v166, v11, 3, v5                           // 0000000059FC: D1DD00A6 0415070B
	v_cvt_pk_u8_f32 v163, v15, 3, v6                           // 000000005A04: D1DD00A3 0419070F
	v_cvt_pk_u8_f32 v167, v115, 3, v8                          // 000000005A0C: D1DD00A7 04210773
	v_cvt_pk_u8_f32 v164, v119, 3, v9                          // 000000005A14: D1DD00A4 04250777
	v_cvt_pk_u8_f32 v168, v123, 3, v10                         // 000000005A1C: D1DD00A8 0429077B
	v_cvt_pk_u8_f32 v165, v131, 3, v12                         // 000000005A24: D1DD00A5 04310783
	v_cvt_pk_u8_f32 v169, v129, 3, v13                         // 000000005A2C: D1DD00A9 04350781
	v_cvt_pk_u8_f32 v154, v101, 3, v14                         // 000000005A34: D1DD009A 04390765
	v_cvt_pk_u8_f32 v158, v85, 3, v16                          // 000000005A3C: D1DD009E 04410755
	v_cvt_pk_u8_f32 v155, v105, 3, v17                         // 000000005A44: D1DD009B 04450769
	v_cvt_pk_u8_f32 v159, v89, 3, v82                          // 000000005A4C: D1DD009F 05490759
	v_cvt_pk_u8_f32 v156, v109, 3, v83                         // 000000005A54: D1DD009C 054D076D
	v_cvt_pk_u8_f32 v160, v93, 3, v84                          // 000000005A5C: D1DD00A0 0551075D
	v_cvt_pk_u8_f32 v157, v113, 3, v86                         // 000000005A64: D1DD009D 05590771
	v_cvt_pk_u8_f32 v161, v97, 3, v87                          // 000000005A6C: D1DD00A1 055D0761
	s_barrier                                                  // 000000005A74: BF8A0000
	s_and_b32 s17, s18, 3                                      // 000000005A78: 86118312
	s_setprio 1                                                // 000000005A7C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[4:7], v[146:153], v[162:169], 0// 000000005A80: D3AD0004 02034592
	v_mfma_f32_16x16x128_f8f6f4 v[6:9], v[146:153], v[154:161], 0// 000000005A88: D3AD0006 02033592
	s_nop 3                                                    // 000000005A90: BF800003
	v_mul_f32_e32 v3, v3, v4                                   // 000000005A94: 0A060903
	v_add_f32_e32 v3, v190, v3                                 // 000000005A98: 020607BE
	s_nop 5                                                    // 000000005A9C: BF800005
	v_mul_f32_e32 v4, v194, v6                                 // 000000005AA0: 0A080DC2
	v_add_f32_e32 v190, v3, v4                                 // 000000005AA4: 037C0903
	ds_read_b128 v[82:85], v95 offset:8192                     // 000000005AA8: D9FE2000 5200005F
	ds_read_b128 v[86:89], v95 offset:8208                     // 000000005AB0: D9FE2010 5600005F
	ds_read_b128 v[212:215], v95 offset:12288                  // 000000005AB8: D9FE3000 D400005F
	ds_read_b128 v[216:219], v95 offset:12304                  // 000000005AC0: D9FE3010 D800005F
	s_waitcnt lgkmcnt(4)                                       // 000000005AC8: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[196:203], v[228:235], 0// 000000005ACC: D3AE0082 0203C9C4
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[204:211], v[228:235], 0// 000000005AD4: D3AE0072 0203C9CC
	v_or_b32_e32 v3, s19, v176                                 // 000000005ADC: 28076013
	ds_read_b128 v[4:7], v3                                    // 000000005AE0: D9FE0000 04000003
	ds_read_b128 v[8:11], v3 offset:16                         // 000000005AE8: D9FE0010 08000003
	ds_read_b128 v[194:197], v3 offset:4096                    // 000000005AF0: D9FE1000 C2000003
	ds_read_b128 v[198:201], v3 offset:4112                    // 000000005AF8: D9FE1010 C6000003
	s_waitcnt lgkmcnt(4)                                       // 000000005B00: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[82:89], v[228:235], 0// 000000005B04: D3AE0062 0203C952
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[212:219], v[228:235], 0// 000000005B0C: D3AE0052 0203C9D4
	ds_read_b128 v[202:205], v3 offset:8192                    // 000000005B14: D9FE2000 CA000003
	ds_read_b128 v[206:209], v3 offset:8208                    // 000000005B1C: D9FE2010 CE000003
	ds_read_b128 v[210:213], v3 offset:12288                   // 000000005B24: D9FE3000 D2000003
	ds_read_b128 v[214:217], v3 offset:12304                   // 000000005B2C: D9FE3010 D6000003
	s_add_u32 s18, s16, 4                                      // 000000005B34: 80128410
	s_cmp_ge_u32 s18, s79                                      // 000000005B38: BF094F12
	s_cbranch_scc1 13                                          // 000000005B3C: BF85000D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4074>
	s_lshl_b32 s19, s17, 14                                    // 000000005B40: 8E138E11
	s_mul_i32 s18, s18, s8                                     // 000000005B44: 92120812
	s_or_b32 s19, s70, s19                                     // 000000005B48: 87131346
	s_lshl_b32 s18, s18, 7                                     // 000000005B4C: 8E128712
	s_add_u32 m0, s19, 0                                       // 000000005B50: 807C8013
	s_nop 0                                                    // 000000005B54: BF800000
	buffer_load_dwordx4 v180, s[60:63], s18 offen lds          // 000000005B58: E05D1000 120F00B4
	s_add_u32 m0, s19, 0x2000                                  // 000000005B60: 807CFF13 00002000
	s_nop 0                                                    // 000000005B68: BF800000
	buffer_load_dwordx4 v181, s[60:63], s18 offen lds          // 000000005B6C: E05D1000 120F00B5
	s_add_u32 s18, s16, 2                                      // 000000005B74: 80128210
	s_cmp_ge_u32 s18, s79                                      // 000000005B78: BF094F12
	s_cbranch_scc1 15                                          // 000000005B7C: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x40bc>
	s_lshl_b32 s17, s17, 14                                    // 000000005B80: 8E118E11
	s_mul_i32 s18, s18, s8                                     // 000000005B84: 92120812
	s_xor_b32 s17, s17, 0x8000                                 // 000000005B88: 8811FF11 00008000
	s_lshl_b32 s18, s18, 7                                     // 000000005B90: 8E128712
	s_add_u32 s17, s71, s17                                    // 000000005B94: 80111147
	s_add_u32 m0, s17, 0                                       // 000000005B98: 807C8011
	s_nop 0                                                    // 000000005B9C: BF800000
	buffer_load_dwordx4 v182, s[64:67], s18 offen lds          // 000000005BA0: E05D1000 121000B6
	s_add_u32 m0, s17, 0x2000                                  // 000000005BA8: 807CFF11 00002000
	s_nop 0                                                    // 000000005BB0: BF800000
	buffer_load_dwordx4 v183, s[64:67], s18 offen lds          // 000000005BB4: E05D1000 121000B7
	s_waitcnt lgkmcnt(4)                                       // 000000005BBC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[4:11], v[236:243], v[130:145]// 000000005BC0: D3AE0082 060BD904
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[194:201], v[236:243], v[114:129]// 000000005BC8: D3AE0072 05CBD9C2
	s_waitcnt lgkmcnt(0)                                       // 000000005BD0: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[202:209], v[236:243], v[98:113]// 000000005BD4: D3AE0062 058BD9CA
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[210:217], v[236:243], v[82:97]// 000000005BDC: D3AE0052 054BD9D2
	s_lshl_b32 s17, s16, 7                                     // 000000005BE4: 8E118710
	s_addk_i32 s17, 0x80                                       // 000000005BE8: B7110080
	s_sub_u32 s18, s3, s17                                     // 000000005BEC: 80921103
	s_sub_i32 s18, s18, 0                                      // 000000005BF0: 81928012
	s_cmp_ge_i32 s18, 32                                       // 000000005BF4: BF03A012
	s_cbranch_scc1 69                                          // 000000005BF8: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4210>
	s_cmp_lt_i32 s18, 0                                        // 000000005BFC: BF048012
	s_cbranch_scc1 2392                                        // 000000005C00: BF850958 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6664>
	v_add_u32_e32 v3, s18, v174                                // 000000005C04: 68075C12
	v_and_b32_e32 v4, 4, v179                                  // 000000005C08: 26096684
	v_sub_u32_e32 v3, v3, v4                                   // 000000005C0C: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 000000005C10: 7D880680
	s_nop 1                                                    // 000000005C14: BF800001
	v_cndmask_b32_e64 v130, v130, v2, vcc                      // 000000005C18: D1000082 01AA0582
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 000000005C20: 7D880681
	s_nop 1                                                    // 000000005C24: BF800001
	v_cndmask_b32_e64 v131, v131, v2, vcc                      // 000000005C28: D1000083 01AA0583
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 000000005C30: 7D880682
	s_nop 1                                                    // 000000005C34: BF800001
	v_cndmask_b32_e64 v132, v132, v2, vcc                      // 000000005C38: D1000084 01AA0584
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 000000005C40: 7D880683
	s_nop 1                                                    // 000000005C44: BF800001
	v_cndmask_b32_e64 v133, v133, v2, vcc                      // 000000005C48: D1000085 01AA0585
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 000000005C50: 7D880688
	s_nop 1                                                    // 000000005C54: BF800001
	v_cndmask_b32_e64 v134, v134, v2, vcc                      // 000000005C58: D1000086 01AA0586
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 000000005C60: 7D880689
	s_nop 1                                                    // 000000005C64: BF800001
	v_cndmask_b32_e64 v135, v135, v2, vcc                      // 000000005C68: D1000087 01AA0587
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 000000005C70: 7D88068A
	s_nop 1                                                    // 000000005C74: BF800001
	v_cndmask_b32_e64 v136, v136, v2, vcc                      // 000000005C78: D1000088 01AA0588
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 000000005C80: 7D88068B
	s_nop 1                                                    // 000000005C84: BF800001
	v_cndmask_b32_e64 v137, v137, v2, vcc                      // 000000005C88: D1000089 01AA0589
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 000000005C90: 7D880690
	s_nop 1                                                    // 000000005C94: BF800001
	v_cndmask_b32_e64 v138, v138, v2, vcc                      // 000000005C98: D100008A 01AA058A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 000000005CA0: 7D880691
	s_nop 1                                                    // 000000005CA4: BF800001
	v_cndmask_b32_e64 v139, v139, v2, vcc                      // 000000005CA8: D100008B 01AA058B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 000000005CB0: 7D880692
	s_nop 1                                                    // 000000005CB4: BF800001
	v_cndmask_b32_e64 v140, v140, v2, vcc                      // 000000005CB8: D100008C 01AA058C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 000000005CC0: 7D880693
	s_nop 1                                                    // 000000005CC4: BF800001
	v_cndmask_b32_e64 v141, v141, v2, vcc                      // 000000005CC8: D100008D 01AA058D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 000000005CD0: 7D880698
	s_nop 1                                                    // 000000005CD4: BF800001
	v_cndmask_b32_e64 v142, v142, v2, vcc                      // 000000005CD8: D100008E 01AA058E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 000000005CE0: 7D880699
	s_nop 1                                                    // 000000005CE4: BF800001
	v_cndmask_b32_e64 v143, v143, v2, vcc                      // 000000005CE8: D100008F 01AA058F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 000000005CF0: 7D88069A
	s_nop 1                                                    // 000000005CF4: BF800001
	v_cndmask_b32_e64 v144, v144, v2, vcc                      // 000000005CF8: D1000090 01AA0590
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 000000005D00: 7D88069B
	s_nop 1                                                    // 000000005D04: BF800001
	v_cndmask_b32_e64 v145, v145, v2, vcc                      // 000000005D08: D1000091 01AA0591
	s_sub_u32 s18, s3, s17                                     // 000000005D10: 80921103
	s_sub_i32 s18, s18, 32                                     // 000000005D14: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 000000005D18: BF03A012
	s_cbranch_scc1 69                                          // 000000005D1C: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4334>
	s_cmp_lt_i32 s18, 0                                        // 000000005D20: BF048012
	s_cbranch_scc1 2463                                        // 000000005D24: BF85099F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x68a4>
	v_add_u32_e32 v3, s18, v174                                // 000000005D28: 68075C12
	v_and_b32_e32 v4, 4, v179                                  // 000000005D2C: 26096684
	v_sub_u32_e32 v3, v3, v4                                   // 000000005D30: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 000000005D34: 7D880680
	s_nop 1                                                    // 000000005D38: BF800001
	v_cndmask_b32_e64 v114, v114, v2, vcc                      // 000000005D3C: D1000072 01AA0572
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 000000005D44: 7D880681
	s_nop 1                                                    // 000000005D48: BF800001
	v_cndmask_b32_e64 v115, v115, v2, vcc                      // 000000005D4C: D1000073 01AA0573
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 000000005D54: 7D880682
	s_nop 1                                                    // 000000005D58: BF800001
	v_cndmask_b32_e64 v116, v116, v2, vcc                      // 000000005D5C: D1000074 01AA0574
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 000000005D64: 7D880683
	s_nop 1                                                    // 000000005D68: BF800001
	v_cndmask_b32_e64 v117, v117, v2, vcc                      // 000000005D6C: D1000075 01AA0575
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 000000005D74: 7D880688
	s_nop 1                                                    // 000000005D78: BF800001
	v_cndmask_b32_e64 v118, v118, v2, vcc                      // 000000005D7C: D1000076 01AA0576
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 000000005D84: 7D880689
	s_nop 1                                                    // 000000005D88: BF800001
	v_cndmask_b32_e64 v119, v119, v2, vcc                      // 000000005D8C: D1000077 01AA0577
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 000000005D94: 7D88068A
	s_nop 1                                                    // 000000005D98: BF800001
	v_cndmask_b32_e64 v120, v120, v2, vcc                      // 000000005D9C: D1000078 01AA0578
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 000000005DA4: 7D88068B
	s_nop 1                                                    // 000000005DA8: BF800001
	v_cndmask_b32_e64 v121, v121, v2, vcc                      // 000000005DAC: D1000079 01AA0579
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 000000005DB4: 7D880690
	s_nop 1                                                    // 000000005DB8: BF800001
	v_cndmask_b32_e64 v122, v122, v2, vcc                      // 000000005DBC: D100007A 01AA057A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 000000005DC4: 7D880691
	s_nop 1                                                    // 000000005DC8: BF800001
	v_cndmask_b32_e64 v123, v123, v2, vcc                      // 000000005DCC: D100007B 01AA057B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 000000005DD4: 7D880692
	s_nop 1                                                    // 000000005DD8: BF800001
	v_cndmask_b32_e64 v124, v124, v2, vcc                      // 000000005DDC: D100007C 01AA057C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 000000005DE4: 7D880693
	s_nop 1                                                    // 000000005DE8: BF800001
	v_cndmask_b32_e64 v125, v125, v2, vcc                      // 000000005DEC: D100007D 01AA057D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 000000005DF4: 7D880698
	s_nop 1                                                    // 000000005DF8: BF800001
	v_cndmask_b32_e64 v126, v126, v2, vcc                      // 000000005DFC: D100007E 01AA057E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 000000005E04: 7D880699
	s_nop 1                                                    // 000000005E08: BF800001
	v_cndmask_b32_e64 v127, v127, v2, vcc                      // 000000005E0C: D100007F 01AA057F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 000000005E14: 7D88069A
	s_nop 1                                                    // 000000005E18: BF800001
	v_cndmask_b32_e64 v128, v128, v2, vcc                      // 000000005E1C: D1000080 01AA0580
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 000000005E24: 7D88069B
	s_nop 1                                                    // 000000005E28: BF800001
	v_cndmask_b32_e64 v129, v129, v2, vcc                      // 000000005E2C: D1000081 01AA0581
	s_sub_u32 s18, s3, s17                                     // 000000005E34: 80921103
	s_sub_i32 s18, s18, 64                                     // 000000005E38: 8192C012
	s_cmp_ge_i32 s18, 32                                       // 000000005E3C: BF03A012
	s_cbranch_scc1 69                                          // 000000005E40: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4458>
	s_cmp_lt_i32 s18, 0                                        // 000000005E44: BF048012
	s_cbranch_scc1 2342                                        // 000000005E48: BF850926 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x67e4>
	v_add_u32_e32 v3, s18, v174                                // 000000005E4C: 68075C12
	v_and_b32_e32 v4, 4, v179                                  // 000000005E50: 26096684
	v_sub_u32_e32 v3, v3, v4                                   // 000000005E54: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 000000005E58: 7D880680
	s_nop 1                                                    // 000000005E5C: BF800001
	v_cndmask_b32_e64 v98, v98, v2, vcc                        // 000000005E60: D1000062 01AA0562
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 000000005E68: 7D880681
	s_nop 1                                                    // 000000005E6C: BF800001
	v_cndmask_b32_e64 v99, v99, v2, vcc                        // 000000005E70: D1000063 01AA0563
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 000000005E78: 7D880682
	s_nop 1                                                    // 000000005E7C: BF800001
	v_cndmask_b32_e64 v100, v100, v2, vcc                      // 000000005E80: D1000064 01AA0564
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 000000005E88: 7D880683
	s_nop 1                                                    // 000000005E8C: BF800001
	v_cndmask_b32_e64 v101, v101, v2, vcc                      // 000000005E90: D1000065 01AA0565
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 000000005E98: 7D880688
	s_nop 1                                                    // 000000005E9C: BF800001
	v_cndmask_b32_e64 v102, v102, v2, vcc                      // 000000005EA0: D1000066 01AA0566
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 000000005EA8: 7D880689
	s_nop 1                                                    // 000000005EAC: BF800001
	v_cndmask_b32_e64 v103, v103, v2, vcc                      // 000000005EB0: D1000067 01AA0567
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 000000005EB8: 7D88068A
	s_nop 1                                                    // 000000005EBC: BF800001
	v_cndmask_b32_e64 v104, v104, v2, vcc                      // 000000005EC0: D1000068 01AA0568
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 000000005EC8: 7D88068B
	s_nop 1                                                    // 000000005ECC: BF800001
	v_cndmask_b32_e64 v105, v105, v2, vcc                      // 000000005ED0: D1000069 01AA0569
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 000000005ED8: 7D880690
	s_nop 1                                                    // 000000005EDC: BF800001
	v_cndmask_b32_e64 v106, v106, v2, vcc                      // 000000005EE0: D100006A 01AA056A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 000000005EE8: 7D880691
	s_nop 1                                                    // 000000005EEC: BF800001
	v_cndmask_b32_e64 v107, v107, v2, vcc                      // 000000005EF0: D100006B 01AA056B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 000000005EF8: 7D880692
	s_nop 1                                                    // 000000005EFC: BF800001
	v_cndmask_b32_e64 v108, v108, v2, vcc                      // 000000005F00: D100006C 01AA056C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 000000005F08: 7D880693
	s_nop 1                                                    // 000000005F0C: BF800001
	v_cndmask_b32_e64 v109, v109, v2, vcc                      // 000000005F10: D100006D 01AA056D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 000000005F18: 7D880698
	s_nop 1                                                    // 000000005F1C: BF800001
	v_cndmask_b32_e64 v110, v110, v2, vcc                      // 000000005F20: D100006E 01AA056E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 000000005F28: 7D880699
	s_nop 1                                                    // 000000005F2C: BF800001
	v_cndmask_b32_e64 v111, v111, v2, vcc                      // 000000005F30: D100006F 01AA056F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 000000005F38: 7D88069A
	s_nop 1                                                    // 000000005F3C: BF800001
	v_cndmask_b32_e64 v112, v112, v2, vcc                      // 000000005F40: D1000070 01AA0570
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 000000005F48: 7D88069B
	s_nop 1                                                    // 000000005F4C: BF800001
	v_cndmask_b32_e64 v113, v113, v2, vcc                      // 000000005F50: D1000071 01AA0571
	s_sub_u32 s17, s3, s17                                     // 000000005F58: 80911103
	s_sub_i32 s17, s17, 0x60                                   // 000000005F5C: 8191FF11 00000060
	s_cmp_ge_i32 s17, 32                                       // 000000005F64: BF03A011
	s_cbranch_scc1 69                                          // 000000005F68: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4580>
	s_cmp_lt_i32 s17, 0                                        // 000000005F6C: BF048011
	s_cbranch_scc1 2220                                        // 000000005F70: BF8508AC <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6724>
	v_add_u32_e32 v3, s17, v174                                // 000000005F74: 68075C11
	v_and_b32_e32 v4, 4, v179                                  // 000000005F78: 26096684
	v_sub_u32_e32 v3, v3, v4                                   // 000000005F7C: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 000000005F80: 7D880680
	s_nop 3                                                    // 000000005F84: BF800003
	v_cndmask_b32_e64 v82, v82, v2, vcc                        // 000000005F88: D1000052 01AA0552
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 000000005F90: 7D880681
	s_nop 1                                                    // 000000005F94: BF800001
	v_cndmask_b32_e64 v83, v83, v2, vcc                        // 000000005F98: D1000053 01AA0553
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 000000005FA0: 7D880682
	s_nop 1                                                    // 000000005FA4: BF800001
	v_cndmask_b32_e64 v84, v84, v2, vcc                        // 000000005FA8: D1000054 01AA0554
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 000000005FB0: 7D880683
	s_nop 1                                                    // 000000005FB4: BF800001
	v_cndmask_b32_e64 v85, v85, v2, vcc                        // 000000005FB8: D1000055 01AA0555
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 000000005FC0: 7D880688
	s_nop 1                                                    // 000000005FC4: BF800001
	v_cndmask_b32_e64 v86, v86, v2, vcc                        // 000000005FC8: D1000056 01AA0556
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 000000005FD0: 7D880689
	s_nop 1                                                    // 000000005FD4: BF800001
	v_cndmask_b32_e64 v87, v87, v2, vcc                        // 000000005FD8: D1000057 01AA0557
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 000000005FE0: 7D88068A
	s_nop 1                                                    // 000000005FE4: BF800001
	v_cndmask_b32_e64 v88, v88, v2, vcc                        // 000000005FE8: D1000058 01AA0558
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 000000005FF0: 7D88068B
	s_nop 1                                                    // 000000005FF4: BF800001
	v_cndmask_b32_e64 v89, v89, v2, vcc                        // 000000005FF8: D1000059 01AA0559
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 000000006000: 7D880690
	s_nop 1                                                    // 000000006004: BF800001
	v_cndmask_b32_e64 v90, v90, v2, vcc                        // 000000006008: D100005A 01AA055A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 000000006010: 7D880691
	s_nop 1                                                    // 000000006014: BF800001
	v_cndmask_b32_e64 v91, v91, v2, vcc                        // 000000006018: D100005B 01AA055B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 000000006020: 7D880692
	s_nop 1                                                    // 000000006024: BF800001
	v_cndmask_b32_e64 v92, v92, v2, vcc                        // 000000006028: D100005C 01AA055C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 000000006030: 7D880693
	s_nop 1                                                    // 000000006034: BF800001
	v_cndmask_b32_e64 v93, v93, v2, vcc                        // 000000006038: D100005D 01AA055D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 000000006040: 7D880698
	s_nop 1                                                    // 000000006044: BF800001
	v_cndmask_b32_e64 v94, v94, v2, vcc                        // 000000006048: D100005E 01AA055E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 000000006050: 7D880699
	s_nop 1                                                    // 000000006054: BF800001
	v_cndmask_b32_e64 v95, v95, v2, vcc                        // 000000006058: D100005F 01AA055F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 000000006060: 7D88069A
	s_nop 1                                                    // 000000006064: BF800001
	v_cndmask_b32_e64 v96, v96, v2, vcc                        // 000000006068: D1000060 01AA0560
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 000000006070: 7D88069B
	s_nop 1                                                    // 000000006074: BF800001
	v_cndmask_b32_e64 v97, v97, v2, vcc                        // 000000006078: D1000061 01AA0561
	v_max_f32_e32 v3, v130, v131                               // 000000006080: 16070782
	v_max3_f32 v3, v132, v133, v3                              // 000000006084: D1D30003 040F0B84
	v_max3_f32 v3, v134, v135, v3                              // 00000000608C: D1D30003 040F0F86
	v_max3_f32 v3, v136, v137, v3                              // 000000006094: D1D30003 040F1388
	v_max3_f32 v3, v138, v139, v3                              // 00000000609C: D1D30003 040F178A
	v_max3_f32 v3, v140, v141, v3                              // 0000000060A4: D1D30003 040F1B8C
	v_max3_f32 v3, v142, v143, v3                              // 0000000060AC: D1D30003 040F1F8E
	v_max3_f32 v3, v144, v145, v3                              // 0000000060B4: D1D30003 040F2390
	v_max_f32_e32 v4, v114, v115                               // 0000000060BC: 1608E772
	v_max3_f32 v4, v116, v117, v4                              // 0000000060C0: D1D30004 0412EB74
	v_max3_f32 v4, v118, v119, v4                              // 0000000060C8: D1D30004 0412EF76
	v_max3_f32 v4, v120, v121, v4                              // 0000000060D0: D1D30004 0412F378
	v_max3_f32 v4, v122, v123, v4                              // 0000000060D8: D1D30004 0412F77A
	v_max3_f32 v4, v124, v125, v4                              // 0000000060E0: D1D30004 0412FB7C
	v_max3_f32 v4, v126, v127, v4                              // 0000000060E8: D1D30004 0412FF7E
	v_max3_f32 v5, v128, v129, v4                              // 0000000060F0: D1D30005 04130380
	v_max_f32_e32 v4, v98, v99                                 // 0000000060F8: 1608C762
	v_max3_f32 v4, v100, v101, v4                              // 0000000060FC: D1D30004 0412CB64
	v_max3_f32 v4, v102, v103, v4                              // 000000006104: D1D30004 0412CF66
	v_max3_f32 v4, v104, v105, v4                              // 00000000610C: D1D30004 0412D368
	v_max3_f32 v4, v106, v107, v4                              // 000000006114: D1D30004 0412D76A
	v_max3_f32 v4, v108, v109, v4                              // 00000000611C: D1D30004 0412DB6C
	v_max3_f32 v4, v110, v111, v4                              // 000000006124: D1D30004 0412DF6E
	v_max3_f32 v4, v112, v113, v4                              // 00000000612C: D1D30004 0412E370
	v_max_f32_e32 v6, v82, v83                                 // 000000006134: 160CA752
	v_max3_f32 v6, v84, v85, v6                                // 000000006138: D1D30006 041AAB54
	v_max3_f32 v6, v86, v87, v6                                // 000000006140: D1D30006 041AAF56
	v_max3_f32 v6, v88, v89, v6                                // 000000006148: D1D30006 041AB358
	v_max3_f32 v6, v90, v91, v6                                // 000000006150: D1D30006 041AB75A
	v_max3_f32 v6, v92, v93, v6                                // 000000006158: D1D30006 041ABB5C
	v_max3_f32 v6, v94, v95, v6                                // 000000006160: D1D30006 041ABF5E
	v_max3_f32 v6, v96, v97, v6                                // 000000006168: D1D30006 041AC360
	v_max_f32_e32 v4, v4, v6                                   // 000000006170: 16080D04
	v_max_f32_e32 v6, v3, v5                                   // 000000006174: 160C0B03
	v_mov_b32_e32 v7, v6                                       // 000000006178: 7E0E0306
	s_nop 1                                                    // 00000000617C: BF800001
	v_permlane32_swap_b32_e32 v6, v7                           // 000000006180: 7E0CB507
	v_mov_b32_e32 v5, v4                                       // 000000006184: 7E0A0304
	s_nop 1                                                    // 000000006188: BF800001
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000618C: 7E08B505
	v_max_f32_e32 v4, v4, v5                                   // 000000006190: 16080B04
	v_max_f32_e32 v3, v6, v7                                   // 000000006194: 16060F06
	v_max_f32_e32 v5, v3, v4                                   // 000000006198: 160A0903
	v_mul_f32_e32 v5, v187, v5                                 // 00000000619C: 0A0A0BBB
	v_max_f32_e32 v5, v192, v5                                 // 0000000061A0: 160A0BC0
	v_sub_f32_e32 v6, v5, v192                                 // 0000000061A4: 040D8105
	v_cmp_lt_f32_e32 vcc, s69, v6                              // 0000000061A8: 7C820C45
	s_cmp_lg_u64 vcc, 0                                        // 0000000061AC: BF13806A
	s_cselect_b32 s17, 1, 0                                    // 0000000061B0: 85118081
	s_cselect_b64 s[18:19], -1, 0                              // 0000000061B4: 859280C1
	v_cndmask_b32_e64 v5, v192, v5, s[18:19]                   // 0000000061B8: D1000005 004A0BC0
	v_fma_f32 v3, v3, v187, -v5                                // 0000000061C0: D1CB0003 84177703
	v_floor_f32_e32 v3, v3                                     // 0000000061C8: 7E063F03
	v_med3_f32 v8, v3, s68, 0                                  // 0000000061CC: D1D60008 02008903
	v_cvt_i32_f32_e32 v3, v8                                   // 0000000061D4: 7E061108
	v_add_u32_e32 v6, 0x7f, v3                                 // 0000000061D8: 680C06FF 0000007F
	v_lshlrev_b32_e32 v3, 23, v6                               // 0000000061E0: 24060C97
	v_fma_f32 v4, v4, v187, -v5                                // 0000000061E4: D1CB0004 84177704
	v_floor_f32_e32 v4, v4                                     // 0000000061EC: 7E083F04
	v_med3_f32 v4, v4, s68, 0                                  // 0000000061F0: D1D60004 02008904
	v_cvt_i32_f32_e32 v7, v4                                   // 0000000061F8: 7E0E1104
	v_add_u32_e32 v7, 0x7f, v7                                 // 0000000061FC: 680E0EFF 0000007F
	v_lshlrev_b32_e32 v194, 23, v7                             // 000000006204: 25840E97
	v_fma_f32 v9, v5, v178, s50                                // 000000006208: D1CB0009 00CB6505
	v_fma_f32 v172, v8, v178, v9                               // 000000006210: D1CB00AC 04276508
	v_fma_f32 v170, v4, v178, v9                               // 000000006218: D1CB00AA 04276504
	ds_read_b64_tr_b8 v[8:9], v171                             // 000000006220: D9C40000 080000AB
	ds_read_b64_tr_b8 v[10:11], v171 offset:1024               // 000000006228: D9C40400 0A0000AB
	ds_read_b64_tr_b8 v[12:13], v171 offset:2048               // 000000006230: D9C40800 0C0000AB
	ds_read_b64_tr_b8 v[14:15], v171 offset:3072               // 000000006238: D9C40C00 0E0000AB
	ds_read_b64_tr_b8 v[196:197], v171 offset:256              // 000000006240: D9C40100 C40000AB
	ds_read_b64_tr_b8 v[198:199], v171 offset:1280             // 000000006248: D9C40500 C60000AB
	ds_read_b64_tr_b8 v[200:201], v171 offset:2304             // 000000006250: D9C40900 C80000AB
	ds_read_b64_tr_b8 v[202:203], v171 offset:3328             // 000000006258: D9C40D00 CA0000AB
	ds_read_b64_tr_b8 v[204:205], v171 offset:512              // 000000006260: D9C40200 CC0000AB
	ds_read_b64_tr_b8 v[206:207], v171 offset:1536             // 000000006268: D9C40600 CE0000AB
	ds_read_b64_tr_b8 v[208:209], v171 offset:2560             // 000000006270: D9C40A00 D00000AB
	ds_read_b64_tr_b8 v[210:211], v171 offset:3584             // 000000006278: D9C40E00 D20000AB
	s_waitcnt lgkmcnt(4)                                       // 000000006280: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[8:15], v[162:169], v[66:81], v177, v191 op_sel_hi:[0,0,0]// 000000006284: D3AC0000 00037FB1 D3AE0842 050B4508
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[196:203], v[162:169], v[50:65], v177, v191 op_sel_hi:[0,0,0]// 000000006294: D3AC0000 00037FB1 D3AE0832 04CB45C4
	ds_read_b64_tr_b8 v[8:9], v171 offset:768                  // 0000000062A4: D9C40300 080000AB
	ds_read_b64_tr_b8 v[10:11], v171 offset:1792               // 0000000062AC: D9C40700 0A0000AB
	ds_read_b64_tr_b8 v[12:13], v171 offset:2816               // 0000000062B4: D9C40B00 0C0000AB
	ds_read_b64_tr_b8 v[14:15], v171 offset:3840               // 0000000062BC: D9C40F00 0E0000AB
	ds_read_b64_tr_b8 v[196:197], v171 offset:4096             // 0000000062C4: D9C41000 C40000AB
	ds_read_b64_tr_b8 v[198:199], v171 offset:5120             // 0000000062CC: D9C41400 C60000AB
	ds_read_b64_tr_b8 v[200:201], v171 offset:6144             // 0000000062D4: D9C41800 C80000AB
	ds_read_b64_tr_b8 v[202:203], v171 offset:7168             // 0000000062DC: D9C41C00 CA0000AB
	s_waitcnt lgkmcnt(4)                                       // 0000000062E4: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[204:211], v[162:169], v[34:49], v177, v191 op_sel_hi:[0,0,0]// 0000000062E8: D3AC0000 00037FB1 D3AE0822 048B45CC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[8:15], v[162:169], v[18:33], v177, v191 op_sel_hi:[0,0,0]// 0000000062F8: D3AC0000 00037FB1 D3AE0812 044B4508
	ds_read_b64_tr_b8 v[204:205], v171 offset:4352             // 000000006308: D9C41100 CC0000AB
	ds_read_b64_tr_b8 v[206:207], v171 offset:5376             // 000000006310: D9C41500 CE0000AB
	ds_read_b64_tr_b8 v[208:209], v171 offset:6400             // 000000006318: D9C41900 D00000AB
	ds_read_b64_tr_b8 v[210:211], v171 offset:7424             // 000000006320: D9C41D00 D20000AB
	ds_read_b64_tr_b8 v[8:9], v171 offset:4608                 // 000000006328: D9C41200 080000AB
	ds_read_b64_tr_b8 v[10:11], v171 offset:5632               // 000000006330: D9C41600 0A0000AB
	ds_read_b64_tr_b8 v[12:13], v171 offset:6656               // 000000006338: D9C41A00 0C0000AB
	ds_read_b64_tr_b8 v[14:15], v171 offset:7680               // 000000006340: D9C41E00 0E0000AB
	s_waitcnt lgkmcnt(4)                                       // 000000006348: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[196:203], v[154:161], v[66:81], v177, v193 op_sel_hi:[0,0,0]// 00000000634C: D3AC0000 000383B1 D3AE0842 050B35C4
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[204:211], v[154:161], v[50:65], v177, v193 op_sel_hi:[0,0,0]// 00000000635C: D3AC0000 000383B1 D3AE0832 04CB35CC
	ds_read_b64_tr_b8 v[162:163], v171 offset:4864             // 00000000636C: D9C41300 A20000AB
	ds_read_b64_tr_b8 v[164:165], v171 offset:5888             // 000000006374: D9C41700 A40000AB
	ds_read_b64_tr_b8 v[166:167], v171 offset:6912             // 00000000637C: D9C41B00 A60000AB
	ds_read_b64_tr_b8 v[168:169], v171 offset:7936             // 000000006384: D9C41F00 A80000AB
	s_waitcnt lgkmcnt(0)                                       // 00000000638C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[8:15], v[154:161], v[34:49], v177, v193 op_sel_hi:[0,0,0]// 000000006390: D3AC0000 000383B1 D3AE0822 048B3508
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[162:169], v[154:161], v[18:33], v177, v193 op_sel_hi:[0,0,0]// 0000000063A0: D3AC0000 000383B1 D3AE0812 044B35A2
	s_cbranch_vccz 68                                          // 0000000063B0: BF860044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x49c4>
	v_sub_f32_e32 v4, v192, v5                                 // 0000000063B4: 04080BC0
	v_exp_f32_e32 v4, v4                                       // 0000000063B8: 7E084104
	s_nop 3                                                    // 0000000063BC: BF800003
	v_pk_mul_f32 v[80:81], v[4:5], v[80:81] op_sel_hi:[0,1]    // 0000000063C0: D3B14050 1002A104
	v_pk_mul_f32 v[78:79], v[4:5], v[78:79] op_sel_hi:[0,1]    // 0000000063C8: D3B1404E 10029D04
	v_pk_mul_f32 v[76:77], v[4:5], v[76:77] op_sel_hi:[0,1]    // 0000000063D0: D3B1404C 10029904
	v_pk_mul_f32 v[74:75], v[4:5], v[74:75] op_sel_hi:[0,1]    // 0000000063D8: D3B1404A 10029504
	v_pk_mul_f32 v[72:73], v[4:5], v[72:73] op_sel_hi:[0,1]    // 0000000063E0: D3B14048 10029104
	v_pk_mul_f32 v[70:71], v[4:5], v[70:71] op_sel_hi:[0,1]    // 0000000063E8: D3B14046 10028D04
	v_pk_mul_f32 v[68:69], v[4:5], v[68:69] op_sel_hi:[0,1]    // 0000000063F0: D3B14044 10028904
	v_pk_mul_f32 v[66:67], v[4:5], v[66:67] op_sel_hi:[0,1]    // 0000000063F8: D3B14042 10028504
	v_pk_mul_f32 v[64:65], v[4:5], v[64:65] op_sel_hi:[0,1]    // 000000006400: D3B14040 10028104
	v_pk_mul_f32 v[62:63], v[4:5], v[62:63] op_sel_hi:[0,1]    // 000000006408: D3B1403E 10027D04
	v_pk_mul_f32 v[60:61], v[4:5], v[60:61] op_sel_hi:[0,1]    // 000000006410: D3B1403C 10027904
	v_pk_mul_f32 v[58:59], v[4:5], v[58:59] op_sel_hi:[0,1]    // 000000006418: D3B1403A 10027504
	v_pk_mul_f32 v[56:57], v[4:5], v[56:57] op_sel_hi:[0,1]    // 000000006420: D3B14038 10027104
	v_pk_mul_f32 v[54:55], v[4:5], v[54:55] op_sel_hi:[0,1]    // 000000006428: D3B14036 10026D04
	v_pk_mul_f32 v[52:53], v[4:5], v[52:53] op_sel_hi:[0,1]    // 000000006430: D3B14034 10026904
	v_pk_mul_f32 v[50:51], v[4:5], v[50:51] op_sel_hi:[0,1]    // 000000006438: D3B14032 10026504
	v_pk_mul_f32 v[48:49], v[4:5], v[48:49] op_sel_hi:[0,1]    // 000000006440: D3B14030 10026104
	v_pk_mul_f32 v[46:47], v[4:5], v[46:47] op_sel_hi:[0,1]    // 000000006448: D3B1402E 10025D04
	v_pk_mul_f32 v[44:45], v[4:5], v[44:45] op_sel_hi:[0,1]    // 000000006450: D3B1402C 10025904
	v_pk_mul_f32 v[42:43], v[4:5], v[42:43] op_sel_hi:[0,1]    // 000000006458: D3B1402A 10025504
	v_pk_mul_f32 v[40:41], v[4:5], v[40:41] op_sel_hi:[0,1]    // 000000006460: D3B14028 10025104
	v_pk_mul_f32 v[38:39], v[4:5], v[38:39] op_sel_hi:[0,1]    // 000000006468: D3B14026 10024D04
	v_pk_mul_f32 v[36:37], v[4:5], v[36:37] op_sel_hi:[0,1]    // 000000006470: D3B14024 10024904
	v_pk_mul_f32 v[34:35], v[4:5], v[34:35] op_sel_hi:[0,1]    // 000000006478: D3B14022 10024504
	v_pk_mul_f32 v[32:33], v[4:5], v[32:33] op_sel_hi:[0,1]    // 000000006480: D3B14020 10024104
	v_pk_mul_f32 v[30:31], v[4:5], v[30:31] op_sel_hi:[0,1]    // 000000006488: D3B1401E 10023D04
	v_pk_mul_f32 v[28:29], v[4:5], v[28:29] op_sel_hi:[0,1]    // 000000006490: D3B1401C 10023904
	v_pk_mul_f32 v[26:27], v[4:5], v[26:27] op_sel_hi:[0,1]    // 000000006498: D3B1401A 10023504
	v_pk_mul_f32 v[24:25], v[4:5], v[24:25] op_sel_hi:[0,1]    // 0000000064A0: D3B14018 10023104
	v_pk_mul_f32 v[22:23], v[4:5], v[22:23] op_sel_hi:[0,1]    // 0000000064A8: D3B14016 10022D04
	v_pk_mul_f32 v[20:21], v[4:5], v[20:21] op_sel_hi:[0,1]    // 0000000064B0: D3B14014 10022904
	v_pk_mul_f32 v[18:19], v[4:5], v[18:19] op_sel_hi:[0,1]    // 0000000064B8: D3B14012 10022504
	v_mul_f32_e32 v190, v190, v4                               // 0000000064C0: 0B7C09BE
	s_waitcnt vmcnt(0)                                         // 0000000064C4: BF8C0F70
	s_barrier                                                  // 0000000064C8: BF8A0000
	s_add_u32 s16, s16, 1                                      // 0000000064CC: 80108110
	v_mov_b32_e32 v192, v5                                     // 0000000064D0: 7F800305
	v_mov_b32_e32 v191, v6                                     // 0000000064D4: 7F7E0306
	v_mov_b32_e32 v193, v7                                     // 0000000064D8: 7F820307
	s_branch 439                                               // 0000000064DC: BF8201B7 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x50bc>
	s_cmp_eq_u32 s16, s15                                      // 0000000064E0: BF060F10
	s_cbranch_scc0 402                                         // 0000000064E4: BF840192 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5030>
	s_setprio 0                                                // 0000000064E8: BF8F0000
	v_fma_f32 v4, v130, v188, v172                             // 0000000064EC: D1CB0004 06B37982
	v_fma_f32 v8, v114, v188, v172                             // 0000000064F4: D1CB0008 06B37972
	v_fma_f32 v12, v134, v188, v172                            // 0000000064FC: D1CB000C 06B37986
	v_fma_f32 v16, v118, v188, v172                            // 000000006504: D1CB0010 06B37976
	v_fma_f32 v155, v138, v188, v172                           // 00000000650C: D1CB009B 06B3798A
	v_fma_f32 v159, v122, v188, v172                           // 000000006514: D1CB009F 06B3797A
	v_fma_f32 v164, v142, v188, v172                           // 00000000651C: D1CB00A4 06B3798E
	v_fma_f32 v168, v126, v188, v172                           // 000000006524: D1CB00A8 06B3797E
	v_fma_f32 v196, v98, v188, v170                            // 00000000652C: D1CB00C4 06AB7962
	v_fma_f32 v200, v82, v188, v170                            // 000000006534: D1CB00C8 06AB7952
	v_fma_f32 v204, v102, v188, v170                           // 00000000653C: D1CB00CC 06AB7966
	v_fma_f32 v208, v86, v188, v170                            // 000000006544: D1CB00D0 06AB7956
	v_fma_f32 v212, v106, v188, v170                           // 00000000654C: D1CB00D4 06AB796A
	v_fma_f32 v216, v90, v188, v170                            // 000000006554: D1CB00D8 06AB795A
	v_fma_f32 v220, v110, v188, v170                           // 00000000655C: D1CB00DC 06AB796E
	v_fma_f32 v224, v94, v188, v170                            // 000000006564: D1CB00E0 06AB795E
	v_fma_f32 v5, v131, v188, v172                             // 00000000656C: D1CB0005 06B37983
	v_fma_f32 v9, v115, v188, v172                             // 000000006574: D1CB0009 06B37973
	v_fma_f32 v13, v135, v188, v172                            // 00000000657C: D1CB000D 06B37987
	v_fma_f32 v17, v119, v188, v172                            // 000000006584: D1CB0011 06B37977
	v_fma_f32 v157, v139, v188, v172                           // 00000000658C: D1CB009D 06B3798B
	v_fma_f32 v161, v123, v188, v172                           // 000000006594: D1CB00A1 06B3797B
	v_fma_f32 v165, v143, v188, v172                           // 00000000659C: D1CB00A5 06B3798F
	v_fma_f32 v169, v127, v188, v172                           // 0000000065A4: D1CB00A9 06B3797F
	v_fma_f32 v197, v99, v188, v170                            // 0000000065AC: D1CB00C5 06AB7963
	v_fma_f32 v201, v83, v188, v170                            // 0000000065B4: D1CB00C9 06AB7953
	v_fma_f32 v205, v103, v188, v170                           // 0000000065BC: D1CB00CD 06AB7967
	v_fma_f32 v209, v87, v188, v170                            // 0000000065C4: D1CB00D1 06AB7957
	v_fma_f32 v213, v107, v188, v170                           // 0000000065CC: D1CB00D5 06AB796B
	v_fma_f32 v217, v91, v188, v170                            // 0000000065D4: D1CB00D9 06AB795B
	v_fma_f32 v221, v111, v188, v170                           // 0000000065DC: D1CB00DD 06AB796F
	v_fma_f32 v225, v95, v188, v170                            // 0000000065E4: D1CB00E1 06AB795F
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 0000000065EC: D1DD0004 02010104
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 0000000065F4: D1DD0008 02010108
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 0000000065FC: D1DD000C 0201010C
	v_cvt_pk_u8_f32 v16, v16, 0, 0                             // 000000006604: D1DD0010 02010110
	v_cvt_pk_u8_f32 v155, v155, 0, 0                           // 00000000660C: D1DD009B 0201019B
	v_cvt_pk_u8_f32 v159, v159, 0, 0                           // 000000006614: D1DD009F 0201019F
	v_cvt_pk_u8_f32 v164, v164, 0, 0                           // 00000000661C: D1DD00A4 020101A4
	v_cvt_pk_u8_f32 v168, v168, 0, 0                           // 000000006624: D1DD00A8 020101A8
	v_cvt_pk_u8_f32 v196, v196, 0, 0                           // 00000000662C: D1DD00C4 020101C4
	v_cvt_pk_u8_f32 v200, v200, 0, 0                           // 000000006634: D1DD00C8 020101C8
	v_cvt_pk_u8_f32 v204, v204, 0, 0                           // 00000000663C: D1DD00CC 020101CC
	v_cvt_pk_u8_f32 v208, v208, 0, 0                           // 000000006644: D1DD00D0 020101D0
	v_cvt_pk_u8_f32 v212, v212, 0, 0                           // 00000000664C: D1DD00D4 020101D4
	v_cvt_pk_u8_f32 v216, v216, 0, 0                           // 000000006654: D1DD00D8 020101D8
	v_cvt_pk_u8_f32 v220, v220, 0, 0                           // 00000000665C: D1DD00DC 020101DC
	v_cvt_pk_u8_f32 v224, v224, 0, 0                           // 000000006664: D1DD00E0 020101E0
	v_fma_f32 v6, v132, v188, v172                             // 00000000666C: D1CB0006 06B37984
	v_fma_f32 v10, v116, v188, v172                            // 000000006674: D1CB000A 06B37974
	v_fma_f32 v14, v136, v188, v172                            // 00000000667C: D1CB000E 06B37988
	v_fma_f32 v154, v120, v188, v172                           // 000000006684: D1CB009A 06B37978
	v_fma_f32 v158, v140, v188, v172                           // 00000000668C: D1CB009E 06B3798C
	v_fma_f32 v162, v124, v188, v172                           // 000000006694: D1CB00A2 06B3797C
	v_fma_f32 v166, v144, v188, v172                           // 00000000669C: D1CB00A6 06B37990
	v_fma_f32 v173, v128, v188, v172                           // 0000000066A4: D1CB00AD 06B37980
	v_fma_f32 v198, v100, v188, v170                           // 0000000066AC: D1CB00C6 06AB7964
	v_fma_f32 v202, v84, v188, v170                            // 0000000066B4: D1CB00CA 06AB7954
	v_fma_f32 v206, v104, v188, v170                           // 0000000066BC: D1CB00CE 06AB7968
	v_fma_f32 v210, v88, v188, v170                            // 0000000066C4: D1CB00D2 06AB7958
	v_fma_f32 v214, v108, v188, v170                           // 0000000066CC: D1CB00D6 06AB796C
	v_fma_f32 v218, v92, v188, v170                            // 0000000066D4: D1CB00DA 06AB795C
	v_fma_f32 v222, v112, v188, v170                           // 0000000066DC: D1CB00DE 06AB7970
	v_fma_f32 v226, v96, v188, v170                            // 0000000066E4: D1CB00E2 06AB7960
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 0000000066EC: D1DD0004 04110305
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 0000000066F4: D1DD0005 04210309
	v_cvt_pk_u8_f32 v8, v13, 1, v12                            // 0000000066FC: D1DD0008 0431030D
	v_cvt_pk_u8_f32 v9, v17, 1, v16                            // 000000006704: D1DD0009 04410311
	v_cvt_pk_u8_f32 v12, v157, 1, v155                         // 00000000670C: D1DD000C 066D039D
	v_cvt_pk_u8_f32 v13, v161, 1, v159                         // 000000006714: D1DD000D 067D03A1
	v_cvt_pk_u8_f32 v16, v165, 1, v164                         // 00000000671C: D1DD0010 069103A5
	v_cvt_pk_u8_f32 v17, v169, 1, v168                         // 000000006724: D1DD0011 06A103A9
	v_cvt_pk_u8_f32 v155, v197, 1, v196                        // 00000000672C: D1DD009B 071103C5
	v_cvt_pk_u8_f32 v157, v201, 1, v200                        // 000000006734: D1DD009D 072103C9
	v_cvt_pk_u8_f32 v159, v205, 1, v204                        // 00000000673C: D1DD009F 073103CD
	v_cvt_pk_u8_f32 v161, v209, 1, v208                        // 000000006744: D1DD00A1 074103D1
	v_cvt_pk_u8_f32 v164, v213, 1, v212                        // 00000000674C: D1DD00A4 075103D5
	v_cvt_pk_u8_f32 v165, v217, 1, v216                        // 000000006754: D1DD00A5 076103D9
	v_cvt_pk_u8_f32 v168, v221, 1, v220                        // 00000000675C: D1DD00A8 077103DD
	v_cvt_pk_u8_f32 v169, v225, 1, v224                        // 000000006764: D1DD00A9 078103E1
	v_fma_f32 v7, v133, v188, v172                             // 00000000676C: D1CB0007 06B37985
	v_fma_f32 v11, v117, v188, v172                            // 000000006774: D1CB000B 06B37975
	v_fma_f32 v15, v137, v188, v172                            // 00000000677C: D1CB000F 06B37989
	v_fma_f32 v156, v121, v188, v172                           // 000000006784: D1CB009C 06B37979
	v_fma_f32 v160, v141, v188, v172                           // 00000000678C: D1CB00A0 06B3798D
	v_fma_f32 v163, v125, v188, v172                           // 000000006794: D1CB00A3 06B3797D
	v_fma_f32 v167, v145, v188, v172                           // 00000000679C: D1CB00A7 06B37991
	v_fma_f32 v195, v129, v188, v172                           // 0000000067A4: D1CB00C3 06B37981
	v_fma_f32 v199, v101, v188, v170                           // 0000000067AC: D1CB00C7 06AB7965
	v_fma_f32 v203, v85, v188, v170                            // 0000000067B4: D1CB00CB 06AB7955
	v_fma_f32 v207, v105, v188, v170                           // 0000000067BC: D1CB00CF 06AB7969
	v_fma_f32 v211, v89, v188, v170                            // 0000000067C4: D1CB00D3 06AB7959
	v_fma_f32 v215, v109, v188, v170                           // 0000000067CC: D1CB00D7 06AB796D
	v_fma_f32 v219, v93, v188, v170                            // 0000000067D4: D1CB00DB 06AB795D
	v_fma_f32 v223, v113, v188, v170                           // 0000000067DC: D1CB00DF 06AB7971
	v_fma_f32 v227, v97, v188, v170                            // 0000000067E4: D1CB00E3 06AB7961
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 0000000067EC: D1DD0004 04110506
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 0000000067F4: D1DD0005 0415050A
	v_cvt_pk_u8_f32 v6, v14, 2, v8                             // 0000000067FC: D1DD0006 0421050E
	v_cvt_pk_u8_f32 v8, v154, 2, v9                            // 000000006804: D1DD0008 0425059A
	v_cvt_pk_u8_f32 v9, v158, 2, v12                           // 00000000680C: D1DD0009 0431059E
	v_cvt_pk_u8_f32 v10, v162, 2, v13                          // 000000006814: D1DD000A 043505A2
	v_cvt_pk_u8_f32 v12, v166, 2, v16                          // 00000000681C: D1DD000C 044105A6
	v_cvt_pk_u8_f32 v13, v173, 2, v17                          // 000000006824: D1DD000D 044505AD
	v_cvt_pk_u8_f32 v14, v198, 2, v155                         // 00000000682C: D1DD000E 066D05C6
	v_cvt_pk_u8_f32 v16, v202, 2, v157                         // 000000006834: D1DD0010 067505CA
	v_cvt_pk_u8_f32 v17, v206, 2, v159                         // 00000000683C: D1DD0011 067D05CE
	v_cvt_pk_u8_f32 v162, v210, 2, v161                        // 000000006844: D1DD00A2 068505D2
	v_cvt_pk_u8_f32 v164, v214, 2, v164                        // 00000000684C: D1DD00A4 069105D6
	v_cvt_pk_u8_f32 v165, v218, 2, v165                        // 000000006854: D1DD00A5 069505DA
	v_cvt_pk_u8_f32 v166, v222, 2, v168                        // 00000000685C: D1DD00A6 06A105DE
	v_cvt_pk_u8_f32 v168, v226, 2, v169                        // 000000006864: D1DD00A8 06A505E2
	v_cvt_pk_u8_f32 v154, v7, 3, v4                            // 00000000686C: D1DD009A 04110707
	v_cvt_pk_u8_f32 v158, v11, 3, v5                           // 000000006874: D1DD009E 0415070B
	v_cvt_pk_u8_f32 v155, v15, 3, v6                           // 00000000687C: D1DD009B 0419070F
	v_cvt_pk_u8_f32 v159, v156, 3, v8                          // 000000006884: D1DD009F 0421079C
	v_cvt_pk_u8_f32 v156, v160, 3, v9                          // 00000000688C: D1DD009C 042507A0
	v_cvt_pk_u8_f32 v160, v163, 3, v10                         // 000000006894: D1DD00A0 042907A3
	v_cvt_pk_u8_f32 v157, v167, 3, v12                         // 00000000689C: D1DD009D 043107A7
	v_cvt_pk_u8_f32 v161, v195, 3, v13                         // 0000000068A4: D1DD00A1 043507C3
	v_cvt_pk_u8_f32 v4, v199, 3, v14                           // 0000000068AC: D1DD0004 043907C7
	v_cvt_pk_u8_f32 v8, v203, 3, v16                           // 0000000068B4: D1DD0008 044107CB
	v_cvt_pk_u8_f32 v5, v207, 3, v17                           // 0000000068BC: D1DD0005 044507CF
	v_cvt_pk_u8_f32 v9, v211, 3, v162                          // 0000000068C4: D1DD0009 068907D3
	v_cvt_pk_u8_f32 v6, v215, 3, v164                          // 0000000068CC: D1DD0006 069107D7
	v_cvt_pk_u8_f32 v10, v219, 3, v165                         // 0000000068D4: D1DD000A 069507DB
	v_cvt_pk_u8_f32 v7, v223, 3, v166                          // 0000000068DC: D1DD0007 069907DF
	v_cvt_pk_u8_f32 v11, v227, 3, v168                         // 0000000068E4: D1DD000B 06A107E3
	s_barrier                                                  // 0000000068EC: BF8A0000
	s_setprio 1                                                // 0000000068F0: BF8F0001
	s_waitcnt vmcnt(0)                                         // 0000000068F4: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[154:161], 0// 0000000068F8: D3AD000C 02033592
	v_mfma_f32_16x16x128_f8f6f4 v[14:17], v[146:153], v[4:11], 0// 000000006900: D3AD000E 02020992
	ds_read_b64_tr_b8 v[162:163], v171                         // 000000006908: D9C40000 A20000AB
	ds_read_b64_tr_b8 v[164:165], v171 offset:1024             // 000000006910: D9C40400 A40000AB
	ds_read_b64_tr_b8 v[166:167], v171 offset:2048             // 000000006918: D9C40800 A60000AB
	ds_read_b64_tr_b8 v[168:169], v171 offset:3072             // 000000006920: D9C40C00 A80000AB
	ds_read_b64_tr_b8 v[196:197], v171 offset:256              // 000000006928: D9C40100 C40000AB
	ds_read_b64_tr_b8 v[198:199], v171 offset:1280             // 000000006930: D9C40500 C60000AB
	ds_read_b64_tr_b8 v[200:201], v171 offset:2304             // 000000006938: D9C40900 C80000AB
	ds_read_b64_tr_b8 v[202:203], v171 offset:3328             // 000000006940: D9C40D00 CA0000AB
	ds_read_b64_tr_b8 v[204:205], v171 offset:512              // 000000006948: D9C40200 CC0000AB
	ds_read_b64_tr_b8 v[206:207], v171 offset:1536             // 000000006950: D9C40600 CE0000AB
	ds_read_b64_tr_b8 v[208:209], v171 offset:2560             // 000000006958: D9C40A00 D00000AB
	ds_read_b64_tr_b8 v[210:211], v171 offset:3584             // 000000006960: D9C40E00 D20000AB
	s_waitcnt lgkmcnt(4)                                       // 000000006968: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[162:169], v[154:161], v[66:81], v177, v191 op_sel_hi:[0,0,0]// 00000000696C: D3AC0000 00037FB1 D3AE0842 050B35A2
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[196:203], v[154:161], v[50:65], v177, v191 op_sel_hi:[0,0,0]// 00000000697C: D3AC0000 00037FB1 D3AE0832 04CB35C4
	ds_read_b64_tr_b8 v[162:163], v171 offset:768              // 00000000698C: D9C40300 A20000AB
	ds_read_b64_tr_b8 v[164:165], v171 offset:1792             // 000000006994: D9C40700 A40000AB
	ds_read_b64_tr_b8 v[166:167], v171 offset:2816             // 00000000699C: D9C40B00 A60000AB
	ds_read_b64_tr_b8 v[168:169], v171 offset:3840             // 0000000069A4: D9C40F00 A80000AB
	ds_read_b64_tr_b8 v[196:197], v171 offset:4096             // 0000000069AC: D9C41000 C40000AB
	ds_read_b64_tr_b8 v[198:199], v171 offset:5120             // 0000000069B4: D9C41400 C60000AB
	ds_read_b64_tr_b8 v[200:201], v171 offset:6144             // 0000000069BC: D9C41800 C80000AB
	ds_read_b64_tr_b8 v[202:203], v171 offset:7168             // 0000000069C4: D9C41C00 CA0000AB
	s_waitcnt lgkmcnt(4)                                       // 0000000069CC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[204:211], v[154:161], v[34:49], v177, v191 op_sel_hi:[0,0,0]// 0000000069D0: D3AC0000 00037FB1 D3AE0822 048B35CC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[162:169], v[154:161], v[18:33], v177, v191 op_sel_hi:[0,0,0]// 0000000069E0: D3AC0000 00037FB1 D3AE0812 044B35A2
	ds_read_b64_tr_b8 v[204:205], v171 offset:4352             // 0000000069F0: D9C41100 CC0000AB
	ds_read_b64_tr_b8 v[206:207], v171 offset:5376             // 0000000069F8: D9C41500 CE0000AB
	ds_read_b64_tr_b8 v[208:209], v171 offset:6400             // 000000006A00: D9C41900 D00000AB
	ds_read_b64_tr_b8 v[210:211], v171 offset:7424             // 000000006A08: D9C41D00 D20000AB
	ds_read_b64_tr_b8 v[154:155], v171 offset:4608             // 000000006A10: D9C41200 9A0000AB
	ds_read_b64_tr_b8 v[156:157], v171 offset:5632             // 000000006A18: D9C41600 9C0000AB
	ds_read_b64_tr_b8 v[158:159], v171 offset:6656             // 000000006A20: D9C41A00 9E0000AB
	ds_read_b64_tr_b8 v[160:161], v171 offset:7680             // 000000006A28: D9C41E00 A00000AB
	s_waitcnt lgkmcnt(4)                                       // 000000006A30: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[196:203], v[4:11], v[66:81], v177, v193 op_sel_hi:[0,0,0]// 000000006A34: D3AC0000 000383B1 D3AE0842 050A09C4
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[204:211], v[4:11], v[50:65], v177, v193 op_sel_hi:[0,0,0]// 000000006A44: D3AC0000 000383B1 D3AE0832 04CA09CC
	ds_read_b64_tr_b8 v[162:163], v171 offset:4864             // 000000006A54: D9C41300 A20000AB
	ds_read_b64_tr_b8 v[164:165], v171 offset:5888             // 000000006A5C: D9C41700 A40000AB
	ds_read_b64_tr_b8 v[166:167], v171 offset:6912             // 000000006A64: D9C41B00 A60000AB
	ds_read_b64_tr_b8 v[168:169], v171 offset:7936             // 000000006A6C: D9C41F00 A80000AB
	s_add_u32 s16, s15, 4                                      // 000000006A74: 8010840F
	s_cmp_ge_u32 s16, s79                                      // 000000006A78: BF094F10
	s_cbranch_scc1 11                                          // 000000006A7C: BF85000B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4fac>
	s_mul_i32 s16, s16, s8                                     // 000000006A80: 92100810
	s_add_u32 s18, s70, s17                                    // 000000006A84: 80121146
	s_add_u32 m0, s18, 0                                       // 000000006A88: 807C8012
	s_lshl_b32 s16, s16, 7                                     // 000000006A8C: 8E108710
	buffer_load_dwordx4 v180, s[60:63], s16 offen lds          // 000000006A90: E05D1000 100F00B4
	s_add_u32 m0, s18, 0x2000                                  // 000000006A98: 807CFF12 00002000
	s_nop 0                                                    // 000000006AA0: BF800000
	buffer_load_dwordx4 v181, s[60:63], s16 offen lds          // 000000006AA4: E05D1000 100F00B5
	s_add_u32 s16, s15, 2                                      // 000000006AAC: 8010820F
	s_cmp_ge_u32 s16, s79                                      // 000000006AB0: BF094F10
	s_cbranch_scc1 14                                          // 000000006AB4: BF85000E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4ff0>
	s_xor_b32 s17, s17, 0x8000                                 // 000000006AB8: 8811FF11 00008000
	s_mul_i32 s16, s16, s8                                     // 000000006AC0: 92100810
	s_add_u32 s17, s71, s17                                    // 000000006AC4: 80111147
	s_lshl_b32 s16, s16, 7                                     // 000000006AC8: 8E108710
	s_add_u32 m0, s17, 0                                       // 000000006ACC: 807C8011
	s_nop 0                                                    // 000000006AD0: BF800000
	buffer_load_dwordx4 v182, s[64:67], s16 offen lds          // 000000006AD4: E05D1000 101000B6
	s_add_u32 m0, s17, 0x2000                                  // 000000006ADC: 807CFF11 00002000
	s_nop 0                                                    // 000000006AE4: BF800000
	buffer_load_dwordx4 v183, s[64:67], s16 offen lds          // 000000006AE8: E05D1000 101000B7
	v_mul_f32_e32 v12, v3, v12                                 // 000000006AF0: 0A181903
	v_mul_f32_e32 v13, v194, v14                               // 000000006AF4: 0A1A1DC2
	v_add_f32_e32 v12, v190, v12                               // 000000006AF8: 021819BE
	v_add_f32_e32 v190, v12, v13                               // 000000006AFC: 037C1B0C
	s_waitcnt lgkmcnt(0)                                       // 000000006B00: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[154:161], v[4:11], v[34:49], v177, v193 op_sel_hi:[0,0,0]// 000000006B04: D3AC0000 000383B1 D3AE0822 048A099A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[162:169], v[4:11], v[18:33], v177, v193 op_sel_hi:[0,0,0]// 000000006B14: D3AC0000 000383B1 D3AE0812 044A09A2
	s_barrier                                                  // 000000006B24: BF8A0000
	s_add_u32 s16, s15, 1                                      // 000000006B28: 8010810F
	s_branch 35                                                // 000000006B2C: BF820023 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x50bc>
	s_barrier                                                  // 000000006B30: BF8A0000
	s_waitcnt vmcnt(0)                                         // 000000006B34: BF8C0F70
	s_add_u32 s18, s16, 4                                      // 000000006B38: 80128410
	s_cmp_ge_u32 s18, s79                                      // 000000006B3C: BF094F12
	s_cbranch_scc1 11                                          // 000000006B40: BF85000B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5070>
	s_mul_i32 s18, s18, s8                                     // 000000006B44: 92120812
	s_add_u32 s19, s70, s17                                    // 000000006B48: 80131146
	s_add_u32 m0, s19, 0                                       // 000000006B4C: 807C8013
	s_lshl_b32 s18, s18, 7                                     // 000000006B50: 8E128712
	buffer_load_dwordx4 v180, s[60:63], s18 offen lds          // 000000006B54: E05D1000 120F00B4
	s_add_u32 m0, s19, 0x2000                                  // 000000006B5C: 807CFF13 00002000
	s_nop 0                                                    // 000000006B64: BF800000
	buffer_load_dwordx4 v181, s[60:63], s18 offen lds          // 000000006B68: E05D1000 120F00B5
	s_add_u32 s18, s16, 2                                      // 000000006B70: 80128210
	s_cmp_ge_u32 s18, s79                                      // 000000006B74: BF094F12
	s_cbranch_scc1 14                                          // 000000006B78: BF85000E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x50b4>
	s_xor_b32 s17, s17, 0x8000                                 // 000000006B7C: 8811FF11 00008000
	s_mul_i32 s18, s18, s8                                     // 000000006B84: 92120812
	s_add_u32 s17, s71, s17                                    // 000000006B88: 80111147
	s_lshl_b32 s18, s18, 7                                     // 000000006B8C: 8E128712
	s_add_u32 m0, s17, 0                                       // 000000006B90: 807C8011
	s_nop 0                                                    // 000000006B94: BF800000
	buffer_load_dwordx4 v182, s[64:67], s18 offen lds          // 000000006B98: E05D1000 121000B6
	s_add_u32 m0, s17, 0x2000                                  // 000000006BA0: 807CFF11 00002000
	s_nop 0                                                    // 000000006BA8: BF800000
	buffer_load_dwordx4 v183, s[64:67], s18 offen lds          // 000000006BAC: E05D1000 121000B7
	s_barrier                                                  // 000000006BB4: BF8A0000
	s_add_u32 s16, s16, 1                                      // 000000006BB8: 80108110
	s_add_u32 s17, s16, 1                                      // 000000006BBC: 80118110
	s_cmp_ge_u32 s17, s79                                      // 000000006BC0: BF094F11
	s_cbranch_scc1 1598                                        // 000000006BC4: BF85063E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x69c0>
	s_add_u32 s18, s16, s76                                    // 000000006BC8: 80124C10
	s_lshl_b32 s19, s18, 14                                    // 000000006BCC: 8E138E12
	s_and_b32 s17, s19, 0xc000                                 // 000000006BD0: 8611FF13 0000C000
	v_add_u32_e32 v171, s17, v189                              // 000000006BD8: 69577A11
	s_cmp_ge_u32 s16, s15                                      // 000000006BDC: BF090F10
	s_cbranch_scc1 936                                         // 000000006BE0: BF8503A8 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5f84>
	s_setprio 0                                                // 000000006BE4: BF8F0000
	v_fma_f32 v94, v94, v188, v170                             // 000000006BE8: D1CB005E 06AB795E
	s_addk_i32 s19, 0x4000                                     // 000000006BF0: B7134000
	v_fma_f32 v95, v95, v188, v170                             // 000000006BF4: D1CB005F 06AB795F
	v_cvt_pk_u8_f32 v94, v94, 0, 0                             // 000000006BFC: D1DD005E 0201015E
	s_and_b32 s19, s19, 0xc000                                 // 000000006C04: 8613FF13 0000C000
	v_cvt_pk_u8_f32 v94, v95, 1, v94                           // 000000006C0C: D1DD005E 0579035F
	v_or_b32_e32 v95, s19, v1                                  // 000000006C14: 28BE0213
	ds_read_b128 v[196:199], v95                               // 000000006C18: D9FE0000 C400005F
	ds_read_b128 v[200:203], v95 offset:16                     // 000000006C20: D9FE0010 C800005F
	ds_read_b128 v[204:207], v95 offset:4096                   // 000000006C28: D9FE1000 CC00005F
	ds_read_b128 v[208:211], v95 offset:4112                   // 000000006C30: D9FE1010 D000005F
	v_fma_f32 v4, v130, v188, v172                             // 000000006C38: D1CB0004 06B37982
	v_fma_f32 v8, v114, v188, v172                             // 000000006C40: D1CB0008 06B37972
	v_fma_f32 v10, v116, v188, v172                            // 000000006C48: D1CB000A 06B37974
	v_fma_f32 v12, v134, v188, v172                            // 000000006C50: D1CB000C 06B37986
	v_fma_f32 v16, v118, v188, v172                            // 000000006C58: D1CB0010 06B37976
	v_fma_f32 v114, v120, v188, v172                           // 000000006C60: D1CB0072 06B37978
	v_fma_f32 v116, v138, v188, v172                           // 000000006C68: D1CB0074 06B3798A
	v_fma_f32 v120, v122, v188, v172                           // 000000006C70: D1CB0078 06B3797A
	v_fma_f32 v122, v124, v188, v172                           // 000000006C78: D1CB007A 06B3797C
	v_fma_f32 v124, v142, v188, v172                           // 000000006C80: D1CB007C 06B3798E
	v_fma_f32 v126, v126, v188, v172                           // 000000006C88: D1CB007E 06B3797E
	v_fma_f32 v98, v98, v188, v170                             // 000000006C90: D1CB0062 06AB7962
	v_fma_f32 v82, v82, v188, v170                             // 000000006C98: D1CB0052 06AB7952
	v_fma_f32 v102, v102, v188, v170                           // 000000006CA0: D1CB0066 06AB7966
	v_fma_f32 v86, v86, v188, v170                             // 000000006CA8: D1CB0056 06AB7956
	v_fma_f32 v106, v106, v188, v170                           // 000000006CB0: D1CB006A 06AB796A
	v_fma_f32 v90, v90, v188, v170                             // 000000006CB8: D1CB005A 06AB795A
	v_fma_f32 v110, v110, v188, v170                           // 000000006CC0: D1CB006E 06AB796E
	v_fma_f32 v5, v131, v188, v172                             // 000000006CC8: D1CB0005 06B37983
	v_fma_f32 v9, v115, v188, v172                             // 000000006CD0: D1CB0009 06B37973
	v_fma_f32 v11, v117, v188, v172                            // 000000006CD8: D1CB000B 06B37975
	v_fma_f32 v13, v135, v188, v172                            // 000000006CE0: D1CB000D 06B37987
	v_fma_f32 v17, v119, v188, v172                            // 000000006CE8: D1CB0011 06B37977
	v_fma_f32 v115, v121, v188, v172                           // 000000006CF0: D1CB0073 06B37979
	v_fma_f32 v117, v139, v188, v172                           // 000000006CF8: D1CB0075 06B3798B
	v_fma_f32 v121, v123, v188, v172                           // 000000006D00: D1CB0079 06B3797B
	v_fma_f32 v123, v125, v188, v172                           // 000000006D08: D1CB007B 06B3797D
	v_fma_f32 v125, v143, v188, v172                           // 000000006D10: D1CB007D 06B3798F
	v_fma_f32 v127, v127, v188, v172                           // 000000006D18: D1CB007F 06B3797F
	v_fma_f32 v99, v99, v188, v170                             // 000000006D20: D1CB0063 06AB7963
	v_fma_f32 v83, v83, v188, v170                             // 000000006D28: D1CB0053 06AB7953
	v_fma_f32 v103, v103, v188, v170                           // 000000006D30: D1CB0067 06AB7967
	v_fma_f32 v87, v87, v188, v170                             // 000000006D38: D1CB0057 06AB7957
	v_fma_f32 v107, v107, v188, v170                           // 000000006D40: D1CB006B 06AB796B
	v_fma_f32 v91, v91, v188, v170                             // 000000006D48: D1CB005B 06AB795B
	v_fma_f32 v111, v111, v188, v170                           // 000000006D50: D1CB006F 06AB796F
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 000000006D58: D1DD0004 02010104
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 000000006D60: D1DD0008 02010108
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 000000006D68: D1DD000C 0201010C
	v_cvt_pk_u8_f32 v16, v16, 0, 0                             // 000000006D70: D1DD0010 02010110
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000006D78: D1DD0074 02010174
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000006D80: D1DD0078 02010178
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000006D88: D1DD007C 0201017C
	v_cvt_pk_u8_f32 v126, v126, 0, 0                           // 000000006D90: D1DD007E 0201017E
	v_cvt_pk_u8_f32 v98, v98, 0, 0                             // 000000006D98: D1DD0062 02010162
	v_cvt_pk_u8_f32 v82, v82, 0, 0                             // 000000006DA0: D1DD0052 02010152
	v_cvt_pk_u8_f32 v102, v102, 0, 0                           // 000000006DA8: D1DD0066 02010166
	v_cvt_pk_u8_f32 v86, v86, 0, 0                             // 000000006DB0: D1DD0056 02010156
	v_cvt_pk_u8_f32 v106, v106, 0, 0                           // 000000006DB8: D1DD006A 0201016A
	v_cvt_pk_u8_f32 v90, v90, 0, 0                             // 000000006DC0: D1DD005A 0201015A
	v_cvt_pk_u8_f32 v110, v110, 0, 0                           // 000000006DC8: D1DD006E 0201016E
	v_fma_f32 v6, v132, v188, v172                             // 000000006DD0: D1CB0006 06B37984
	v_fma_f32 v14, v136, v188, v172                            // 000000006DD8: D1CB000E 06B37988
	v_fma_f32 v118, v140, v188, v172                           // 000000006DE0: D1CB0076 06B3798C
	v_fma_f32 v130, v144, v188, v172                           // 000000006DE8: D1CB0082 06B37990
	v_fma_f32 v128, v128, v188, v172                           // 000000006DF0: D1CB0080 06B37980
	v_fma_f32 v100, v100, v188, v170                           // 000000006DF8: D1CB0064 06AB7964
	v_fma_f32 v84, v84, v188, v170                             // 000000006E00: D1CB0054 06AB7954
	v_fma_f32 v104, v104, v188, v170                           // 000000006E08: D1CB0068 06AB7968
	v_fma_f32 v88, v88, v188, v170                             // 000000006E10: D1CB0058 06AB7958
	v_fma_f32 v108, v108, v188, v170                           // 000000006E18: D1CB006C 06AB796C
	v_fma_f32 v92, v92, v188, v170                             // 000000006E20: D1CB005C 06AB795C
	v_fma_f32 v112, v112, v188, v170                           // 000000006E28: D1CB0070 06AB7970
	v_fma_f32 v96, v96, v188, v170                             // 000000006E30: D1CB0060 06AB7960
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 000000006E38: D1DD0004 04110305
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 000000006E40: D1DD0005 04210309
	v_cvt_pk_u8_f32 v8, v13, 1, v12                            // 000000006E48: D1DD0008 0431030D
	v_cvt_pk_u8_f32 v9, v17, 1, v16                            // 000000006E50: D1DD0009 04410311
	v_cvt_pk_u8_f32 v12, v117, 1, v116                         // 000000006E58: D1DD000C 05D10375
	v_cvt_pk_u8_f32 v13, v121, 1, v120                         // 000000006E60: D1DD000D 05E10379
	v_cvt_pk_u8_f32 v16, v125, 1, v124                         // 000000006E68: D1DD0010 05F1037D
	v_cvt_pk_u8_f32 v17, v127, 1, v126                         // 000000006E70: D1DD0011 05F9037F
	v_cvt_pk_u8_f32 v98, v99, 1, v98                           // 000000006E78: D1DD0062 05890363
	v_cvt_pk_u8_f32 v82, v83, 1, v82                           // 000000006E80: D1DD0052 05490353
	v_cvt_pk_u8_f32 v83, v103, 1, v102                         // 000000006E88: D1DD0053 05990367
	v_cvt_pk_u8_f32 v86, v87, 1, v86                           // 000000006E90: D1DD0056 05590357
	v_cvt_pk_u8_f32 v87, v107, 1, v106                         // 000000006E98: D1DD0057 05A9036B
	v_cvt_pk_u8_f32 v90, v91, 1, v90                           // 000000006EA0: D1DD005A 0569035B
	v_cvt_pk_u8_f32 v91, v111, 1, v110                         // 000000006EA8: D1DD005B 05B9036F
	v_fma_f32 v7, v133, v188, v172                             // 000000006EB0: D1CB0007 06B37985
	v_fma_f32 v15, v137, v188, v172                            // 000000006EB8: D1CB000F 06B37989
	v_fma_f32 v119, v141, v188, v172                           // 000000006EC0: D1CB0077 06B3798D
	v_fma_f32 v131, v145, v188, v172                           // 000000006EC8: D1CB0083 06B37991
	v_fma_f32 v129, v129, v188, v172                           // 000000006ED0: D1CB0081 06B37981
	v_fma_f32 v101, v101, v188, v170                           // 000000006ED8: D1CB0065 06AB7965
	v_fma_f32 v85, v85, v188, v170                             // 000000006EE0: D1CB0055 06AB7955
	v_fma_f32 v105, v105, v188, v170                           // 000000006EE8: D1CB0069 06AB7969
	v_fma_f32 v89, v89, v188, v170                             // 000000006EF0: D1CB0059 06AB7959
	v_fma_f32 v109, v109, v188, v170                           // 000000006EF8: D1CB006D 06AB796D
	v_fma_f32 v93, v93, v188, v170                             // 000000006F00: D1CB005D 06AB795D
	v_fma_f32 v113, v113, v188, v170                           // 000000006F08: D1CB0071 06AB7971
	v_fma_f32 v97, v97, v188, v170                             // 000000006F10: D1CB0061 06AB7961
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 000000006F18: D1DD0004 04110506
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 000000006F20: D1DD0005 0415050A
	v_cvt_pk_u8_f32 v6, v14, 2, v8                             // 000000006F28: D1DD0006 0421050E
	v_cvt_pk_u8_f32 v8, v114, 2, v9                            // 000000006F30: D1DD0008 04250572
	v_cvt_pk_u8_f32 v9, v118, 2, v12                           // 000000006F38: D1DD0009 04310576
	v_cvt_pk_u8_f32 v10, v122, 2, v13                          // 000000006F40: D1DD000A 0435057A
	v_cvt_pk_u8_f32 v12, v130, 2, v16                          // 000000006F48: D1DD000C 04410582
	v_cvt_pk_u8_f32 v13, v128, 2, v17                          // 000000006F50: D1DD000D 04450580
	v_cvt_pk_u8_f32 v14, v100, 2, v98                          // 000000006F58: D1DD000E 05890564
	v_cvt_pk_u8_f32 v16, v84, 2, v82                           // 000000006F60: D1DD0010 05490554
	v_cvt_pk_u8_f32 v17, v104, 2, v83                          // 000000006F68: D1DD0011 054D0568
	v_cvt_pk_u8_f32 v82, v88, 2, v86                           // 000000006F70: D1DD0052 05590558
	v_cvt_pk_u8_f32 v83, v108, 2, v87                          // 000000006F78: D1DD0053 055D056C
	v_cvt_pk_u8_f32 v84, v92, 2, v90                           // 000000006F80: D1DD0054 0569055C
	v_cvt_pk_u8_f32 v86, v112, 2, v91                          // 000000006F88: D1DD0056 056D0570
	v_cvt_pk_u8_f32 v87, v96, 2, v94                           // 000000006F90: D1DD0057 05790560
	v_cvt_pk_u8_f32 v162, v7, 3, v4                            // 000000006F98: D1DD00A2 04110707
	v_cvt_pk_u8_f32 v166, v11, 3, v5                           // 000000006FA0: D1DD00A6 0415070B
	v_cvt_pk_u8_f32 v163, v15, 3, v6                           // 000000006FA8: D1DD00A3 0419070F
	v_cvt_pk_u8_f32 v167, v115, 3, v8                          // 000000006FB0: D1DD00A7 04210773
	v_cvt_pk_u8_f32 v164, v119, 3, v9                          // 000000006FB8: D1DD00A4 04250777
	v_cvt_pk_u8_f32 v168, v123, 3, v10                         // 000000006FC0: D1DD00A8 0429077B
	v_cvt_pk_u8_f32 v165, v131, 3, v12                         // 000000006FC8: D1DD00A5 04310783
	v_cvt_pk_u8_f32 v169, v129, 3, v13                         // 000000006FD0: D1DD00A9 04350781
	v_cvt_pk_u8_f32 v154, v101, 3, v14                         // 000000006FD8: D1DD009A 04390765
	v_cvt_pk_u8_f32 v158, v85, 3, v16                          // 000000006FE0: D1DD009E 04410755
	v_cvt_pk_u8_f32 v155, v105, 3, v17                         // 000000006FE8: D1DD009B 04450769
	v_cvt_pk_u8_f32 v159, v89, 3, v82                          // 000000006FF0: D1DD009F 05490759
	v_cvt_pk_u8_f32 v156, v109, 3, v83                         // 000000006FF8: D1DD009C 054D076D
	v_cvt_pk_u8_f32 v160, v93, 3, v84                          // 000000007000: D1DD00A0 0551075D
	v_cvt_pk_u8_f32 v157, v113, 3, v86                         // 000000007008: D1DD009D 05590771
	v_cvt_pk_u8_f32 v161, v97, 3, v87                          // 000000007010: D1DD00A1 055D0761
	s_barrier                                                  // 000000007018: BF8A0000
	s_and_b32 s17, s18, 3                                      // 00000000701C: 86118312
	s_setprio 1                                                // 000000007020: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[4:7], v[146:153], v[162:169], 0// 000000007024: D3AD0004 02034592
	v_mfma_f32_16x16x128_f8f6f4 v[6:9], v[146:153], v[154:161], 0// 00000000702C: D3AD0006 02033592
	s_nop 3                                                    // 000000007034: BF800003
	v_mul_f32_e32 v3, v3, v4                                   // 000000007038: 0A060903
	v_add_f32_e32 v3, v190, v3                                 // 00000000703C: 020607BE
	s_nop 5                                                    // 000000007040: BF800005
	v_mul_f32_e32 v4, v194, v6                                 // 000000007044: 0A080DC2
	v_add_f32_e32 v190, v3, v4                                 // 000000007048: 037C0903
	ds_read_b128 v[82:85], v95 offset:8192                     // 00000000704C: D9FE2000 5200005F
	ds_read_b128 v[86:89], v95 offset:8208                     // 000000007054: D9FE2010 5600005F
	ds_read_b128 v[212:215], v95 offset:12288                  // 00000000705C: D9FE3000 D400005F
	ds_read_b128 v[216:219], v95 offset:12304                  // 000000007064: D9FE3010 D800005F
	s_waitcnt lgkmcnt(4)                                       // 00000000706C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[196:203], v[228:235], 0// 000000007070: D3AE0082 0203C9C4
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[204:211], v[228:235], 0// 000000007078: D3AE0072 0203C9CC
	v_or_b32_e32 v3, s19, v176                                 // 000000007080: 28076013
	ds_read_b128 v[4:7], v3                                    // 000000007084: D9FE0000 04000003
	ds_read_b128 v[8:11], v3 offset:16                         // 00000000708C: D9FE0010 08000003
	ds_read_b128 v[194:197], v3 offset:4096                    // 000000007094: D9FE1000 C2000003
	ds_read_b128 v[198:201], v3 offset:4112                    // 00000000709C: D9FE1010 C6000003
	s_waitcnt lgkmcnt(4)                                       // 0000000070A4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[82:89], v[228:235], 0// 0000000070A8: D3AE0062 0203C952
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[212:219], v[228:235], 0// 0000000070B0: D3AE0052 0203C9D4
	ds_read_b128 v[202:205], v3 offset:8192                    // 0000000070B8: D9FE2000 CA000003
	ds_read_b128 v[206:209], v3 offset:8208                    // 0000000070C0: D9FE2010 CE000003
	ds_read_b128 v[210:213], v3 offset:12288                   // 0000000070C8: D9FE3000 D2000003
	ds_read_b128 v[214:217], v3 offset:12304                   // 0000000070D0: D9FE3010 D6000003
	s_add_u32 s18, s16, 4                                      // 0000000070D8: 80128410
	s_cmp_ge_u32 s18, s79                                      // 0000000070DC: BF094F12
	s_cbranch_scc1 13                                          // 0000000070E0: BF85000D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5618>
	s_lshl_b32 s19, s17, 14                                    // 0000000070E4: 8E138E11
	s_mul_i32 s18, s18, s8                                     // 0000000070E8: 92120812
	s_or_b32 s19, s70, s19                                     // 0000000070EC: 87131346
	s_lshl_b32 s18, s18, 7                                     // 0000000070F0: 8E128712
	s_add_u32 m0, s19, 0                                       // 0000000070F4: 807C8013
	s_nop 0                                                    // 0000000070F8: BF800000
	buffer_load_dwordx4 v180, s[60:63], s18 offen lds          // 0000000070FC: E05D1000 120F00B4
	s_add_u32 m0, s19, 0x2000                                  // 000000007104: 807CFF13 00002000
	s_nop 0                                                    // 00000000710C: BF800000
	buffer_load_dwordx4 v181, s[60:63], s18 offen lds          // 000000007110: E05D1000 120F00B5
	s_add_u32 s18, s16, 2                                      // 000000007118: 80128210
	s_cmp_ge_u32 s18, s79                                      // 00000000711C: BF094F12
	s_cbranch_scc1 15                                          // 000000007120: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5660>
	s_lshl_b32 s17, s17, 14                                    // 000000007124: 8E118E11
	s_mul_i32 s18, s18, s8                                     // 000000007128: 92120812
	s_xor_b32 s17, s17, 0x8000                                 // 00000000712C: 8811FF11 00008000
	s_lshl_b32 s18, s18, 7                                     // 000000007134: 8E128712
	s_add_u32 s17, s71, s17                                    // 000000007138: 80111147
	s_add_u32 m0, s17, 0                                       // 00000000713C: 807C8011
	s_nop 0                                                    // 000000007140: BF800000
	buffer_load_dwordx4 v182, s[64:67], s18 offen lds          // 000000007144: E05D1000 121000B6
	s_add_u32 m0, s17, 0x2000                                  // 00000000714C: 807CFF11 00002000
	s_nop 0                                                    // 000000007154: BF800000
	buffer_load_dwordx4 v183, s[64:67], s18 offen lds          // 000000007158: E05D1000 121000B7
	s_waitcnt lgkmcnt(4)                                       // 000000007160: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[4:11], v[236:243], v[130:145]// 000000007164: D3AE0082 060BD904
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[194:201], v[236:243], v[114:129]// 00000000716C: D3AE0072 05CBD9C2
	s_waitcnt lgkmcnt(0)                                       // 000000007174: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[202:209], v[236:243], v[98:113]// 000000007178: D3AE0062 058BD9CA
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[210:217], v[236:243], v[82:97]// 000000007180: D3AE0052 054BD9D2
	s_lshl_b32 s17, s16, 7                                     // 000000007188: 8E118710
	s_addk_i32 s17, 0x80                                       // 00000000718C: B7110080
	s_sub_u32 s18, s3, s17                                     // 000000007190: 80921103
	s_sub_i32 s18, s18, 0                                      // 000000007194: 81928012
	s_cmp_ge_i32 s18, 32                                       // 000000007198: BF03A012
	s_cbranch_scc1 69                                          // 00000000719C: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x57b4>
	s_cmp_lt_i32 s18, 0                                        // 0000000071A0: BF048012
	s_cbranch_scc1 1031                                        // 0000000071A4: BF850407 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x66c4>
	v_add_u32_e32 v3, s18, v174                                // 0000000071A8: 68075C12
	v_and_b32_e32 v4, 4, v179                                  // 0000000071AC: 26096684
	v_sub_u32_e32 v3, v3, v4                                   // 0000000071B0: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 0000000071B4: 7D880680
	s_nop 1                                                    // 0000000071B8: BF800001
	v_cndmask_b32_e64 v130, v130, v2, vcc                      // 0000000071BC: D1000082 01AA0582
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 0000000071C4: 7D880681
	s_nop 1                                                    // 0000000071C8: BF800001
	v_cndmask_b32_e64 v131, v131, v2, vcc                      // 0000000071CC: D1000083 01AA0583
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 0000000071D4: 7D880682
	s_nop 1                                                    // 0000000071D8: BF800001
	v_cndmask_b32_e64 v132, v132, v2, vcc                      // 0000000071DC: D1000084 01AA0584
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 0000000071E4: 7D880683
	s_nop 1                                                    // 0000000071E8: BF800001
	v_cndmask_b32_e64 v133, v133, v2, vcc                      // 0000000071EC: D1000085 01AA0585
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 0000000071F4: 7D880688
	s_nop 1                                                    // 0000000071F8: BF800001
	v_cndmask_b32_e64 v134, v134, v2, vcc                      // 0000000071FC: D1000086 01AA0586
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 000000007204: 7D880689
	s_nop 1                                                    // 000000007208: BF800001
	v_cndmask_b32_e64 v135, v135, v2, vcc                      // 00000000720C: D1000087 01AA0587
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 000000007214: 7D88068A
	s_nop 1                                                    // 000000007218: BF800001
	v_cndmask_b32_e64 v136, v136, v2, vcc                      // 00000000721C: D1000088 01AA0588
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 000000007224: 7D88068B
	s_nop 1                                                    // 000000007228: BF800001
	v_cndmask_b32_e64 v137, v137, v2, vcc                      // 00000000722C: D1000089 01AA0589
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 000000007234: 7D880690
	s_nop 1                                                    // 000000007238: BF800001
	v_cndmask_b32_e64 v138, v138, v2, vcc                      // 00000000723C: D100008A 01AA058A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 000000007244: 7D880691
	s_nop 1                                                    // 000000007248: BF800001
	v_cndmask_b32_e64 v139, v139, v2, vcc                      // 00000000724C: D100008B 01AA058B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 000000007254: 7D880692
	s_nop 1                                                    // 000000007258: BF800001
	v_cndmask_b32_e64 v140, v140, v2, vcc                      // 00000000725C: D100008C 01AA058C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 000000007264: 7D880693
	s_nop 1                                                    // 000000007268: BF800001
	v_cndmask_b32_e64 v141, v141, v2, vcc                      // 00000000726C: D100008D 01AA058D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 000000007274: 7D880698
	s_nop 1                                                    // 000000007278: BF800001
	v_cndmask_b32_e64 v142, v142, v2, vcc                      // 00000000727C: D100008E 01AA058E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 000000007284: 7D880699
	s_nop 1                                                    // 000000007288: BF800001
	v_cndmask_b32_e64 v143, v143, v2, vcc                      // 00000000728C: D100008F 01AA058F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 000000007294: 7D88069A
	s_nop 1                                                    // 000000007298: BF800001
	v_cndmask_b32_e64 v144, v144, v2, vcc                      // 00000000729C: D1000090 01AA0590
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 0000000072A4: 7D88069B
	s_nop 1                                                    // 0000000072A8: BF800001
	v_cndmask_b32_e64 v145, v145, v2, vcc                      // 0000000072AC: D1000091 01AA0591
	s_sub_u32 s18, s3, s17                                     // 0000000072B4: 80921103
	s_sub_i32 s18, s18, 32                                     // 0000000072B8: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 0000000072BC: BF03A012
	s_cbranch_scc1 69                                          // 0000000072C0: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x58d8>
	s_cmp_lt_i32 s18, 0                                        // 0000000072C4: BF048012
	s_cbranch_scc1 1102                                        // 0000000072C8: BF85044E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6904>
	v_add_u32_e32 v3, s18, v174                                // 0000000072CC: 68075C12
	v_and_b32_e32 v4, 4, v179                                  // 0000000072D0: 26096684
	v_sub_u32_e32 v3, v3, v4                                   // 0000000072D4: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 0000000072D8: 7D880680
	s_nop 1                                                    // 0000000072DC: BF800001
	v_cndmask_b32_e64 v114, v114, v2, vcc                      // 0000000072E0: D1000072 01AA0572
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 0000000072E8: 7D880681
	s_nop 1                                                    // 0000000072EC: BF800001
	v_cndmask_b32_e64 v115, v115, v2, vcc                      // 0000000072F0: D1000073 01AA0573
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 0000000072F8: 7D880682
	s_nop 1                                                    // 0000000072FC: BF800001
	v_cndmask_b32_e64 v116, v116, v2, vcc                      // 000000007300: D1000074 01AA0574
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 000000007308: 7D880683
	s_nop 1                                                    // 00000000730C: BF800001
	v_cndmask_b32_e64 v117, v117, v2, vcc                      // 000000007310: D1000075 01AA0575
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 000000007318: 7D880688
	s_nop 1                                                    // 00000000731C: BF800001
	v_cndmask_b32_e64 v118, v118, v2, vcc                      // 000000007320: D1000076 01AA0576
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 000000007328: 7D880689
	s_nop 1                                                    // 00000000732C: BF800001
	v_cndmask_b32_e64 v119, v119, v2, vcc                      // 000000007330: D1000077 01AA0577
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 000000007338: 7D88068A
	s_nop 1                                                    // 00000000733C: BF800001
	v_cndmask_b32_e64 v120, v120, v2, vcc                      // 000000007340: D1000078 01AA0578
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 000000007348: 7D88068B
	s_nop 1                                                    // 00000000734C: BF800001
	v_cndmask_b32_e64 v121, v121, v2, vcc                      // 000000007350: D1000079 01AA0579
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 000000007358: 7D880690
	s_nop 1                                                    // 00000000735C: BF800001
	v_cndmask_b32_e64 v122, v122, v2, vcc                      // 000000007360: D100007A 01AA057A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 000000007368: 7D880691
	s_nop 1                                                    // 00000000736C: BF800001
	v_cndmask_b32_e64 v123, v123, v2, vcc                      // 000000007370: D100007B 01AA057B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 000000007378: 7D880692
	s_nop 1                                                    // 00000000737C: BF800001
	v_cndmask_b32_e64 v124, v124, v2, vcc                      // 000000007380: D100007C 01AA057C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 000000007388: 7D880693
	s_nop 1                                                    // 00000000738C: BF800001
	v_cndmask_b32_e64 v125, v125, v2, vcc                      // 000000007390: D100007D 01AA057D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 000000007398: 7D880698
	s_nop 1                                                    // 00000000739C: BF800001
	v_cndmask_b32_e64 v126, v126, v2, vcc                      // 0000000073A0: D100007E 01AA057E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 0000000073A8: 7D880699
	s_nop 1                                                    // 0000000073AC: BF800001
	v_cndmask_b32_e64 v127, v127, v2, vcc                      // 0000000073B0: D100007F 01AA057F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 0000000073B8: 7D88069A
	s_nop 1                                                    // 0000000073BC: BF800001
	v_cndmask_b32_e64 v128, v128, v2, vcc                      // 0000000073C0: D1000080 01AA0580
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 0000000073C8: 7D88069B
	s_nop 1                                                    // 0000000073CC: BF800001
	v_cndmask_b32_e64 v129, v129, v2, vcc                      // 0000000073D0: D1000081 01AA0581
	s_sub_u32 s18, s3, s17                                     // 0000000073D8: 80921103
	s_sub_i32 s18, s18, 64                                     // 0000000073DC: 8192C012
	s_cmp_ge_i32 s18, 32                                       // 0000000073E0: BF03A012
	s_cbranch_scc1 69                                          // 0000000073E4: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x59fc>
	s_cmp_lt_i32 s18, 0                                        // 0000000073E8: BF048012
	s_cbranch_scc1 981                                         // 0000000073EC: BF8503D5 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6844>
	v_add_u32_e32 v3, s18, v174                                // 0000000073F0: 68075C12
	v_and_b32_e32 v4, 4, v179                                  // 0000000073F4: 26096684
	v_sub_u32_e32 v3, v3, v4                                   // 0000000073F8: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 0000000073FC: 7D880680
	s_nop 1                                                    // 000000007400: BF800001
	v_cndmask_b32_e64 v98, v98, v2, vcc                        // 000000007404: D1000062 01AA0562
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 00000000740C: 7D880681
	s_nop 1                                                    // 000000007410: BF800001
	v_cndmask_b32_e64 v99, v99, v2, vcc                        // 000000007414: D1000063 01AA0563
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 00000000741C: 7D880682
	s_nop 1                                                    // 000000007420: BF800001
	v_cndmask_b32_e64 v100, v100, v2, vcc                      // 000000007424: D1000064 01AA0564
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 00000000742C: 7D880683
	s_nop 1                                                    // 000000007430: BF800001
	v_cndmask_b32_e64 v101, v101, v2, vcc                      // 000000007434: D1000065 01AA0565
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 00000000743C: 7D880688
	s_nop 1                                                    // 000000007440: BF800001
	v_cndmask_b32_e64 v102, v102, v2, vcc                      // 000000007444: D1000066 01AA0566
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 00000000744C: 7D880689
	s_nop 1                                                    // 000000007450: BF800001
	v_cndmask_b32_e64 v103, v103, v2, vcc                      // 000000007454: D1000067 01AA0567
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 00000000745C: 7D88068A
	s_nop 1                                                    // 000000007460: BF800001
	v_cndmask_b32_e64 v104, v104, v2, vcc                      // 000000007464: D1000068 01AA0568
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 00000000746C: 7D88068B
	s_nop 1                                                    // 000000007470: BF800001
	v_cndmask_b32_e64 v105, v105, v2, vcc                      // 000000007474: D1000069 01AA0569
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 00000000747C: 7D880690
	s_nop 1                                                    // 000000007480: BF800001
	v_cndmask_b32_e64 v106, v106, v2, vcc                      // 000000007484: D100006A 01AA056A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 00000000748C: 7D880691
	s_nop 1                                                    // 000000007490: BF800001
	v_cndmask_b32_e64 v107, v107, v2, vcc                      // 000000007494: D100006B 01AA056B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 00000000749C: 7D880692
	s_nop 1                                                    // 0000000074A0: BF800001
	v_cndmask_b32_e64 v108, v108, v2, vcc                      // 0000000074A4: D100006C 01AA056C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 0000000074AC: 7D880693
	s_nop 1                                                    // 0000000074B0: BF800001
	v_cndmask_b32_e64 v109, v109, v2, vcc                      // 0000000074B4: D100006D 01AA056D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 0000000074BC: 7D880698
	s_nop 1                                                    // 0000000074C0: BF800001
	v_cndmask_b32_e64 v110, v110, v2, vcc                      // 0000000074C4: D100006E 01AA056E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 0000000074CC: 7D880699
	s_nop 1                                                    // 0000000074D0: BF800001
	v_cndmask_b32_e64 v111, v111, v2, vcc                      // 0000000074D4: D100006F 01AA056F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 0000000074DC: 7D88069A
	s_nop 1                                                    // 0000000074E0: BF800001
	v_cndmask_b32_e64 v112, v112, v2, vcc                      // 0000000074E4: D1000070 01AA0570
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 0000000074EC: 7D88069B
	s_nop 1                                                    // 0000000074F0: BF800001
	v_cndmask_b32_e64 v113, v113, v2, vcc                      // 0000000074F4: D1000071 01AA0571
	s_sub_u32 s17, s3, s17                                     // 0000000074FC: 80911103
	s_sub_i32 s17, s17, 0x60                                   // 000000007500: 8191FF11 00000060
	s_cmp_ge_i32 s17, 32                                       // 000000007508: BF03A011
	s_cbranch_scc1 69                                          // 00000000750C: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5b24>
	s_cmp_lt_i32 s17, 0                                        // 000000007510: BF048011
	s_cbranch_scc1 859                                         // 000000007514: BF85035B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6784>
	v_add_u32_e32 v3, s17, v174                                // 000000007518: 68075C11
	v_and_b32_e32 v4, 4, v179                                  // 00000000751C: 26096684
	v_sub_u32_e32 v3, v3, v4                                   // 000000007520: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 000000007524: 7D880680
	s_nop 3                                                    // 000000007528: BF800003
	v_cndmask_b32_e64 v82, v82, v2, vcc                        // 00000000752C: D1000052 01AA0552
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 000000007534: 7D880681
	s_nop 1                                                    // 000000007538: BF800001
	v_cndmask_b32_e64 v83, v83, v2, vcc                        // 00000000753C: D1000053 01AA0553
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 000000007544: 7D880682
	s_nop 1                                                    // 000000007548: BF800001
	v_cndmask_b32_e64 v84, v84, v2, vcc                        // 00000000754C: D1000054 01AA0554
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 000000007554: 7D880683
	s_nop 1                                                    // 000000007558: BF800001
	v_cndmask_b32_e64 v85, v85, v2, vcc                        // 00000000755C: D1000055 01AA0555
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 000000007564: 7D880688
	s_nop 1                                                    // 000000007568: BF800001
	v_cndmask_b32_e64 v86, v86, v2, vcc                        // 00000000756C: D1000056 01AA0556
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 000000007574: 7D880689
	s_nop 1                                                    // 000000007578: BF800001
	v_cndmask_b32_e64 v87, v87, v2, vcc                        // 00000000757C: D1000057 01AA0557
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 000000007584: 7D88068A
	s_nop 1                                                    // 000000007588: BF800001
	v_cndmask_b32_e64 v88, v88, v2, vcc                        // 00000000758C: D1000058 01AA0558
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 000000007594: 7D88068B
	s_nop 1                                                    // 000000007598: BF800001
	v_cndmask_b32_e64 v89, v89, v2, vcc                        // 00000000759C: D1000059 01AA0559
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 0000000075A4: 7D880690
	s_nop 1                                                    // 0000000075A8: BF800001
	v_cndmask_b32_e64 v90, v90, v2, vcc                        // 0000000075AC: D100005A 01AA055A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 0000000075B4: 7D880691
	s_nop 1                                                    // 0000000075B8: BF800001
	v_cndmask_b32_e64 v91, v91, v2, vcc                        // 0000000075BC: D100005B 01AA055B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 0000000075C4: 7D880692
	s_nop 1                                                    // 0000000075C8: BF800001
	v_cndmask_b32_e64 v92, v92, v2, vcc                        // 0000000075CC: D100005C 01AA055C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 0000000075D4: 7D880693
	s_nop 1                                                    // 0000000075D8: BF800001
	v_cndmask_b32_e64 v93, v93, v2, vcc                        // 0000000075DC: D100005D 01AA055D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 0000000075E4: 7D880698
	s_nop 1                                                    // 0000000075E8: BF800001
	v_cndmask_b32_e64 v94, v94, v2, vcc                        // 0000000075EC: D100005E 01AA055E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 0000000075F4: 7D880699
	s_nop 1                                                    // 0000000075F8: BF800001
	v_cndmask_b32_e64 v95, v95, v2, vcc                        // 0000000075FC: D100005F 01AA055F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 000000007604: 7D88069A
	s_nop 1                                                    // 000000007608: BF800001
	v_cndmask_b32_e64 v96, v96, v2, vcc                        // 00000000760C: D1000060 01AA0560
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 000000007614: 7D88069B
	s_nop 1                                                    // 000000007618: BF800001
	v_cndmask_b32_e64 v97, v97, v2, vcc                        // 00000000761C: D1000061 01AA0561
	v_max_f32_e32 v3, v130, v131                               // 000000007624: 16070782
	v_max3_f32 v3, v132, v133, v3                              // 000000007628: D1D30003 040F0B84
	v_max3_f32 v3, v134, v135, v3                              // 000000007630: D1D30003 040F0F86
	v_max3_f32 v3, v136, v137, v3                              // 000000007638: D1D30003 040F1388
	v_max3_f32 v3, v138, v139, v3                              // 000000007640: D1D30003 040F178A
	v_max3_f32 v3, v140, v141, v3                              // 000000007648: D1D30003 040F1B8C
	v_max3_f32 v3, v142, v143, v3                              // 000000007650: D1D30003 040F1F8E
	v_max3_f32 v3, v144, v145, v3                              // 000000007658: D1D30003 040F2390
	v_max_f32_e32 v4, v114, v115                               // 000000007660: 1608E772
	v_max3_f32 v4, v116, v117, v4                              // 000000007664: D1D30004 0412EB74
	v_max3_f32 v4, v118, v119, v4                              // 00000000766C: D1D30004 0412EF76
	v_max3_f32 v4, v120, v121, v4                              // 000000007674: D1D30004 0412F378
	v_max3_f32 v4, v122, v123, v4                              // 00000000767C: D1D30004 0412F77A
	v_max3_f32 v4, v124, v125, v4                              // 000000007684: D1D30004 0412FB7C
	v_max3_f32 v4, v126, v127, v4                              // 00000000768C: D1D30004 0412FF7E
	v_max3_f32 v5, v128, v129, v4                              // 000000007694: D1D30005 04130380
	v_max_f32_e32 v4, v98, v99                                 // 00000000769C: 1608C762
	v_max3_f32 v4, v100, v101, v4                              // 0000000076A0: D1D30004 0412CB64
	v_max3_f32 v4, v102, v103, v4                              // 0000000076A8: D1D30004 0412CF66
	v_max3_f32 v4, v104, v105, v4                              // 0000000076B0: D1D30004 0412D368
	v_max3_f32 v4, v106, v107, v4                              // 0000000076B8: D1D30004 0412D76A
	v_max3_f32 v4, v108, v109, v4                              // 0000000076C0: D1D30004 0412DB6C
	v_max3_f32 v4, v110, v111, v4                              // 0000000076C8: D1D30004 0412DF6E
	v_max3_f32 v4, v112, v113, v4                              // 0000000076D0: D1D30004 0412E370
	v_max_f32_e32 v6, v82, v83                                 // 0000000076D8: 160CA752
	v_max3_f32 v6, v84, v85, v6                                // 0000000076DC: D1D30006 041AAB54
	v_max3_f32 v6, v86, v87, v6                                // 0000000076E4: D1D30006 041AAF56
	v_max3_f32 v6, v88, v89, v6                                // 0000000076EC: D1D30006 041AB358
	v_max3_f32 v6, v90, v91, v6                                // 0000000076F4: D1D30006 041AB75A
	v_max3_f32 v6, v92, v93, v6                                // 0000000076FC: D1D30006 041ABB5C
	v_max3_f32 v6, v94, v95, v6                                // 000000007704: D1D30006 041ABF5E
	v_max3_f32 v6, v96, v97, v6                                // 00000000770C: D1D30006 041AC360
	v_max_f32_e32 v4, v4, v6                                   // 000000007714: 16080D04
	v_max_f32_e32 v6, v3, v5                                   // 000000007718: 160C0B03
	v_mov_b32_e32 v7, v6                                       // 00000000771C: 7E0E0306
	s_nop 1                                                    // 000000007720: BF800001
	v_permlane32_swap_b32_e32 v6, v7                           // 000000007724: 7E0CB507
	v_mov_b32_e32 v5, v4                                       // 000000007728: 7E0A0304
	s_nop 1                                                    // 00000000772C: BF800001
	v_permlane32_swap_b32_e32 v4, v5                           // 000000007730: 7E08B505
	v_max_f32_e32 v4, v4, v5                                   // 000000007734: 16080B04
	v_max_f32_e32 v3, v6, v7                                   // 000000007738: 16060F06
	v_max_f32_e32 v5, v3, v4                                   // 00000000773C: 160A0903
	v_mul_f32_e32 v5, v187, v5                                 // 000000007740: 0A0A0BBB
	v_max_f32_e32 v5, v192, v5                                 // 000000007744: 160A0BC0
	v_sub_f32_e32 v6, v5, v192                                 // 000000007748: 040D8105
	v_cmp_lt_f32_e32 vcc, s69, v6                              // 00000000774C: 7C820C45
	s_cmp_lg_u64 vcc, 0                                        // 000000007750: BF13806A
	s_cselect_b32 s17, 1, 0                                    // 000000007754: 85118081
	s_cselect_b64 s[18:19], -1, 0                              // 000000007758: 859280C1
	v_cndmask_b32_e64 v5, v192, v5, s[18:19]                   // 00000000775C: D1000005 004A0BC0
	v_fma_f32 v3, v3, v187, -v5                                // 000000007764: D1CB0003 84177703
	v_floor_f32_e32 v3, v3                                     // 00000000776C: 7E063F03
	v_med3_f32 v8, v3, s68, 0                                  // 000000007770: D1D60008 02008903
	v_cvt_i32_f32_e32 v3, v8                                   // 000000007778: 7E061108
	v_add_u32_e32 v6, 0x7f, v3                                 // 00000000777C: 680C06FF 0000007F
	v_lshlrev_b32_e32 v3, 23, v6                               // 000000007784: 24060C97
	v_fma_f32 v4, v4, v187, -v5                                // 000000007788: D1CB0004 84177704
	v_floor_f32_e32 v4, v4                                     // 000000007790: 7E083F04
	v_med3_f32 v4, v4, s68, 0                                  // 000000007794: D1D60004 02008904
	v_cvt_i32_f32_e32 v7, v4                                   // 00000000779C: 7E0E1104
	v_add_u32_e32 v7, 0x7f, v7                                 // 0000000077A0: 680E0EFF 0000007F
	v_lshlrev_b32_e32 v194, 23, v7                             // 0000000077A8: 25840E97
	v_fma_f32 v9, v5, v178, s50                                // 0000000077AC: D1CB0009 00CB6505
	v_fma_f32 v172, v8, v178, v9                               // 0000000077B4: D1CB00AC 04276508
	v_fma_f32 v170, v4, v178, v9                               // 0000000077BC: D1CB00AA 04276504
	ds_read_b64_tr_b8 v[8:9], v171                             // 0000000077C4: D9C40000 080000AB
	ds_read_b64_tr_b8 v[10:11], v171 offset:1024               // 0000000077CC: D9C40400 0A0000AB
	ds_read_b64_tr_b8 v[12:13], v171 offset:2048               // 0000000077D4: D9C40800 0C0000AB
	ds_read_b64_tr_b8 v[14:15], v171 offset:3072               // 0000000077DC: D9C40C00 0E0000AB
	ds_read_b64_tr_b8 v[196:197], v171 offset:256              // 0000000077E4: D9C40100 C40000AB
	ds_read_b64_tr_b8 v[198:199], v171 offset:1280             // 0000000077EC: D9C40500 C60000AB
	ds_read_b64_tr_b8 v[200:201], v171 offset:2304             // 0000000077F4: D9C40900 C80000AB
	ds_read_b64_tr_b8 v[202:203], v171 offset:3328             // 0000000077FC: D9C40D00 CA0000AB
	ds_read_b64_tr_b8 v[204:205], v171 offset:512              // 000000007804: D9C40200 CC0000AB
	ds_read_b64_tr_b8 v[206:207], v171 offset:1536             // 00000000780C: D9C40600 CE0000AB
	ds_read_b64_tr_b8 v[208:209], v171 offset:2560             // 000000007814: D9C40A00 D00000AB
	ds_read_b64_tr_b8 v[210:211], v171 offset:3584             // 00000000781C: D9C40E00 D20000AB
	s_waitcnt lgkmcnt(4)                                       // 000000007824: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[8:15], v[162:169], v[66:81], v177, v191 op_sel_hi:[0,0,0]// 000000007828: D3AC0000 00037FB1 D3AE0842 050B4508
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[196:203], v[162:169], v[50:65], v177, v191 op_sel_hi:[0,0,0]// 000000007838: D3AC0000 00037FB1 D3AE0832 04CB45C4
	ds_read_b64_tr_b8 v[8:9], v171 offset:768                  // 000000007848: D9C40300 080000AB
	ds_read_b64_tr_b8 v[10:11], v171 offset:1792               // 000000007850: D9C40700 0A0000AB
	ds_read_b64_tr_b8 v[12:13], v171 offset:2816               // 000000007858: D9C40B00 0C0000AB
	ds_read_b64_tr_b8 v[14:15], v171 offset:3840               // 000000007860: D9C40F00 0E0000AB
	ds_read_b64_tr_b8 v[196:197], v171 offset:4096             // 000000007868: D9C41000 C40000AB
	ds_read_b64_tr_b8 v[198:199], v171 offset:5120             // 000000007870: D9C41400 C60000AB
	ds_read_b64_tr_b8 v[200:201], v171 offset:6144             // 000000007878: D9C41800 C80000AB
	ds_read_b64_tr_b8 v[202:203], v171 offset:7168             // 000000007880: D9C41C00 CA0000AB
	s_waitcnt lgkmcnt(4)                                       // 000000007888: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[204:211], v[162:169], v[34:49], v177, v191 op_sel_hi:[0,0,0]// 00000000788C: D3AC0000 00037FB1 D3AE0822 048B45CC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[8:15], v[162:169], v[18:33], v177, v191 op_sel_hi:[0,0,0]// 00000000789C: D3AC0000 00037FB1 D3AE0812 044B4508
	ds_read_b64_tr_b8 v[204:205], v171 offset:4352             // 0000000078AC: D9C41100 CC0000AB
	ds_read_b64_tr_b8 v[206:207], v171 offset:5376             // 0000000078B4: D9C41500 CE0000AB
	ds_read_b64_tr_b8 v[208:209], v171 offset:6400             // 0000000078BC: D9C41900 D00000AB
	ds_read_b64_tr_b8 v[210:211], v171 offset:7424             // 0000000078C4: D9C41D00 D20000AB
	ds_read_b64_tr_b8 v[8:9], v171 offset:4608                 // 0000000078CC: D9C41200 080000AB
	ds_read_b64_tr_b8 v[10:11], v171 offset:5632               // 0000000078D4: D9C41600 0A0000AB
	ds_read_b64_tr_b8 v[12:13], v171 offset:6656               // 0000000078DC: D9C41A00 0C0000AB
	ds_read_b64_tr_b8 v[14:15], v171 offset:7680               // 0000000078E4: D9C41E00 0E0000AB
	s_waitcnt lgkmcnt(4)                                       // 0000000078EC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[196:203], v[154:161], v[66:81], v177, v193 op_sel_hi:[0,0,0]// 0000000078F0: D3AC0000 000383B1 D3AE0842 050B35C4
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[204:211], v[154:161], v[50:65], v177, v193 op_sel_hi:[0,0,0]// 000000007900: D3AC0000 000383B1 D3AE0832 04CB35CC
	ds_read_b64_tr_b8 v[162:163], v171 offset:4864             // 000000007910: D9C41300 A20000AB
	ds_read_b64_tr_b8 v[164:165], v171 offset:5888             // 000000007918: D9C41700 A40000AB
	ds_read_b64_tr_b8 v[166:167], v171 offset:6912             // 000000007920: D9C41B00 A60000AB
	ds_read_b64_tr_b8 v[168:169], v171 offset:7936             // 000000007928: D9C41F00 A80000AB
	s_waitcnt lgkmcnt(0)                                       // 000000007930: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[8:15], v[154:161], v[34:49], v177, v193 op_sel_hi:[0,0,0]// 000000007934: D3AC0000 000383B1 D3AE0822 048B3508
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[162:169], v[154:161], v[18:33], v177, v193 op_sel_hi:[0,0,0]// 000000007944: D3AC0000 000383B1 D3AE0812 044B35A2
	s_cbranch_vccz 68                                          // 000000007954: BF860044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5f68>
	v_sub_f32_e32 v4, v192, v5                                 // 000000007958: 04080BC0
	v_exp_f32_e32 v4, v4                                       // 00000000795C: 7E084104
	s_nop 3                                                    // 000000007960: BF800003
	v_pk_mul_f32 v[80:81], v[4:5], v[80:81] op_sel_hi:[0,1]    // 000000007964: D3B14050 1002A104
	v_pk_mul_f32 v[78:79], v[4:5], v[78:79] op_sel_hi:[0,1]    // 00000000796C: D3B1404E 10029D04
	v_pk_mul_f32 v[76:77], v[4:5], v[76:77] op_sel_hi:[0,1]    // 000000007974: D3B1404C 10029904
	v_pk_mul_f32 v[74:75], v[4:5], v[74:75] op_sel_hi:[0,1]    // 00000000797C: D3B1404A 10029504
	v_pk_mul_f32 v[72:73], v[4:5], v[72:73] op_sel_hi:[0,1]    // 000000007984: D3B14048 10029104
	v_pk_mul_f32 v[70:71], v[4:5], v[70:71] op_sel_hi:[0,1]    // 00000000798C: D3B14046 10028D04
	v_pk_mul_f32 v[68:69], v[4:5], v[68:69] op_sel_hi:[0,1]    // 000000007994: D3B14044 10028904
	v_pk_mul_f32 v[66:67], v[4:5], v[66:67] op_sel_hi:[0,1]    // 00000000799C: D3B14042 10028504
	v_pk_mul_f32 v[64:65], v[4:5], v[64:65] op_sel_hi:[0,1]    // 0000000079A4: D3B14040 10028104
	v_pk_mul_f32 v[62:63], v[4:5], v[62:63] op_sel_hi:[0,1]    // 0000000079AC: D3B1403E 10027D04
	v_pk_mul_f32 v[60:61], v[4:5], v[60:61] op_sel_hi:[0,1]    // 0000000079B4: D3B1403C 10027904
	v_pk_mul_f32 v[58:59], v[4:5], v[58:59] op_sel_hi:[0,1]    // 0000000079BC: D3B1403A 10027504
	v_pk_mul_f32 v[56:57], v[4:5], v[56:57] op_sel_hi:[0,1]    // 0000000079C4: D3B14038 10027104
	v_pk_mul_f32 v[54:55], v[4:5], v[54:55] op_sel_hi:[0,1]    // 0000000079CC: D3B14036 10026D04
	v_pk_mul_f32 v[52:53], v[4:5], v[52:53] op_sel_hi:[0,1]    // 0000000079D4: D3B14034 10026904
	v_pk_mul_f32 v[50:51], v[4:5], v[50:51] op_sel_hi:[0,1]    // 0000000079DC: D3B14032 10026504
	v_pk_mul_f32 v[48:49], v[4:5], v[48:49] op_sel_hi:[0,1]    // 0000000079E4: D3B14030 10026104
	v_pk_mul_f32 v[46:47], v[4:5], v[46:47] op_sel_hi:[0,1]    // 0000000079EC: D3B1402E 10025D04
	v_pk_mul_f32 v[44:45], v[4:5], v[44:45] op_sel_hi:[0,1]    // 0000000079F4: D3B1402C 10025904
	v_pk_mul_f32 v[42:43], v[4:5], v[42:43] op_sel_hi:[0,1]    // 0000000079FC: D3B1402A 10025504
	v_pk_mul_f32 v[40:41], v[4:5], v[40:41] op_sel_hi:[0,1]    // 000000007A04: D3B14028 10025104
	v_pk_mul_f32 v[38:39], v[4:5], v[38:39] op_sel_hi:[0,1]    // 000000007A0C: D3B14026 10024D04
	v_pk_mul_f32 v[36:37], v[4:5], v[36:37] op_sel_hi:[0,1]    // 000000007A14: D3B14024 10024904
	v_pk_mul_f32 v[34:35], v[4:5], v[34:35] op_sel_hi:[0,1]    // 000000007A1C: D3B14022 10024504
	v_pk_mul_f32 v[32:33], v[4:5], v[32:33] op_sel_hi:[0,1]    // 000000007A24: D3B14020 10024104
	v_pk_mul_f32 v[30:31], v[4:5], v[30:31] op_sel_hi:[0,1]    // 000000007A2C: D3B1401E 10023D04
	v_pk_mul_f32 v[28:29], v[4:5], v[28:29] op_sel_hi:[0,1]    // 000000007A34: D3B1401C 10023904
	v_pk_mul_f32 v[26:27], v[4:5], v[26:27] op_sel_hi:[0,1]    // 000000007A3C: D3B1401A 10023504
	v_pk_mul_f32 v[24:25], v[4:5], v[24:25] op_sel_hi:[0,1]    // 000000007A44: D3B14018 10023104
	v_pk_mul_f32 v[22:23], v[4:5], v[22:23] op_sel_hi:[0,1]    // 000000007A4C: D3B14016 10022D04
	v_pk_mul_f32 v[20:21], v[4:5], v[20:21] op_sel_hi:[0,1]    // 000000007A54: D3B14014 10022904
	v_pk_mul_f32 v[18:19], v[4:5], v[18:19] op_sel_hi:[0,1]    // 000000007A5C: D3B14012 10022504
	v_mul_f32_e32 v190, v190, v4                               // 000000007A64: 0B7C09BE
	s_waitcnt vmcnt(0)                                         // 000000007A68: BF8C0F70
	s_barrier                                                  // 000000007A6C: BF8A0000
	s_add_u32 s16, s16, 1                                      // 000000007A70: 80108110
	v_mov_b32_e32 v192, v5                                     // 000000007A74: 7F800305
	v_mov_b32_e32 v191, v6                                     // 000000007A78: 7F7E0306
	v_mov_b32_e32 v193, v7                                     // 000000007A7C: 7F820307
	s_branch 63205                                             // 000000007A80: BF82F6E5 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3b18>
	s_cmp_eq_u32 s16, s15                                      // 000000007A84: BF060F10
	s_cbranch_scc0 402                                         // 000000007A88: BF840192 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x65d4>
	s_setprio 0                                                // 000000007A8C: BF8F0000
	v_fma_f32 v4, v130, v188, v172                             // 000000007A90: D1CB0004 06B37982
	v_fma_f32 v8, v114, v188, v172                             // 000000007A98: D1CB0008 06B37972
	v_fma_f32 v12, v134, v188, v172                            // 000000007AA0: D1CB000C 06B37986
	v_fma_f32 v16, v118, v188, v172                            // 000000007AA8: D1CB0010 06B37976
	v_fma_f32 v155, v138, v188, v172                           // 000000007AB0: D1CB009B 06B3798A
	v_fma_f32 v159, v122, v188, v172                           // 000000007AB8: D1CB009F 06B3797A
	v_fma_f32 v164, v142, v188, v172                           // 000000007AC0: D1CB00A4 06B3798E
	v_fma_f32 v168, v126, v188, v172                           // 000000007AC8: D1CB00A8 06B3797E
	v_fma_f32 v196, v98, v188, v170                            // 000000007AD0: D1CB00C4 06AB7962
	v_fma_f32 v200, v82, v188, v170                            // 000000007AD8: D1CB00C8 06AB7952
	v_fma_f32 v204, v102, v188, v170                           // 000000007AE0: D1CB00CC 06AB7966
	v_fma_f32 v208, v86, v188, v170                            // 000000007AE8: D1CB00D0 06AB7956
	v_fma_f32 v212, v106, v188, v170                           // 000000007AF0: D1CB00D4 06AB796A
	v_fma_f32 v216, v90, v188, v170                            // 000000007AF8: D1CB00D8 06AB795A
	v_fma_f32 v220, v110, v188, v170                           // 000000007B00: D1CB00DC 06AB796E
	v_fma_f32 v224, v94, v188, v170                            // 000000007B08: D1CB00E0 06AB795E
	v_fma_f32 v5, v131, v188, v172                             // 000000007B10: D1CB0005 06B37983
	v_fma_f32 v9, v115, v188, v172                             // 000000007B18: D1CB0009 06B37973
	v_fma_f32 v13, v135, v188, v172                            // 000000007B20: D1CB000D 06B37987
	v_fma_f32 v17, v119, v188, v172                            // 000000007B28: D1CB0011 06B37977
	v_fma_f32 v157, v139, v188, v172                           // 000000007B30: D1CB009D 06B3798B
	v_fma_f32 v161, v123, v188, v172                           // 000000007B38: D1CB00A1 06B3797B
	v_fma_f32 v165, v143, v188, v172                           // 000000007B40: D1CB00A5 06B3798F
	v_fma_f32 v169, v127, v188, v172                           // 000000007B48: D1CB00A9 06B3797F
	v_fma_f32 v197, v99, v188, v170                            // 000000007B50: D1CB00C5 06AB7963
	v_fma_f32 v201, v83, v188, v170                            // 000000007B58: D1CB00C9 06AB7953
	v_fma_f32 v205, v103, v188, v170                           // 000000007B60: D1CB00CD 06AB7967
	v_fma_f32 v209, v87, v188, v170                            // 000000007B68: D1CB00D1 06AB7957
	v_fma_f32 v213, v107, v188, v170                           // 000000007B70: D1CB00D5 06AB796B
	v_fma_f32 v217, v91, v188, v170                            // 000000007B78: D1CB00D9 06AB795B
	v_fma_f32 v221, v111, v188, v170                           // 000000007B80: D1CB00DD 06AB796F
	v_fma_f32 v225, v95, v188, v170                            // 000000007B88: D1CB00E1 06AB795F
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 000000007B90: D1DD0004 02010104
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 000000007B98: D1DD0008 02010108
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 000000007BA0: D1DD000C 0201010C
	v_cvt_pk_u8_f32 v16, v16, 0, 0                             // 000000007BA8: D1DD0010 02010110
	v_cvt_pk_u8_f32 v155, v155, 0, 0                           // 000000007BB0: D1DD009B 0201019B
	v_cvt_pk_u8_f32 v159, v159, 0, 0                           // 000000007BB8: D1DD009F 0201019F
	v_cvt_pk_u8_f32 v164, v164, 0, 0                           // 000000007BC0: D1DD00A4 020101A4
	v_cvt_pk_u8_f32 v168, v168, 0, 0                           // 000000007BC8: D1DD00A8 020101A8
	v_cvt_pk_u8_f32 v196, v196, 0, 0                           // 000000007BD0: D1DD00C4 020101C4
	v_cvt_pk_u8_f32 v200, v200, 0, 0                           // 000000007BD8: D1DD00C8 020101C8
	v_cvt_pk_u8_f32 v204, v204, 0, 0                           // 000000007BE0: D1DD00CC 020101CC
	v_cvt_pk_u8_f32 v208, v208, 0, 0                           // 000000007BE8: D1DD00D0 020101D0
	v_cvt_pk_u8_f32 v212, v212, 0, 0                           // 000000007BF0: D1DD00D4 020101D4
	v_cvt_pk_u8_f32 v216, v216, 0, 0                           // 000000007BF8: D1DD00D8 020101D8
	v_cvt_pk_u8_f32 v220, v220, 0, 0                           // 000000007C00: D1DD00DC 020101DC
	v_cvt_pk_u8_f32 v224, v224, 0, 0                           // 000000007C08: D1DD00E0 020101E0
	v_fma_f32 v6, v132, v188, v172                             // 000000007C10: D1CB0006 06B37984
	v_fma_f32 v10, v116, v188, v172                            // 000000007C18: D1CB000A 06B37974
	v_fma_f32 v14, v136, v188, v172                            // 000000007C20: D1CB000E 06B37988
	v_fma_f32 v154, v120, v188, v172                           // 000000007C28: D1CB009A 06B37978
	v_fma_f32 v158, v140, v188, v172                           // 000000007C30: D1CB009E 06B3798C
	v_fma_f32 v162, v124, v188, v172                           // 000000007C38: D1CB00A2 06B3797C
	v_fma_f32 v166, v144, v188, v172                           // 000000007C40: D1CB00A6 06B37990
	v_fma_f32 v173, v128, v188, v172                           // 000000007C48: D1CB00AD 06B37980
	v_fma_f32 v198, v100, v188, v170                           // 000000007C50: D1CB00C6 06AB7964
	v_fma_f32 v202, v84, v188, v170                            // 000000007C58: D1CB00CA 06AB7954
	v_fma_f32 v206, v104, v188, v170                           // 000000007C60: D1CB00CE 06AB7968
	v_fma_f32 v210, v88, v188, v170                            // 000000007C68: D1CB00D2 06AB7958
	v_fma_f32 v214, v108, v188, v170                           // 000000007C70: D1CB00D6 06AB796C
	v_fma_f32 v218, v92, v188, v170                            // 000000007C78: D1CB00DA 06AB795C
	v_fma_f32 v222, v112, v188, v170                           // 000000007C80: D1CB00DE 06AB7970
	v_fma_f32 v226, v96, v188, v170                            // 000000007C88: D1CB00E2 06AB7960
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 000000007C90: D1DD0004 04110305
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 000000007C98: D1DD0005 04210309
	v_cvt_pk_u8_f32 v8, v13, 1, v12                            // 000000007CA0: D1DD0008 0431030D
	v_cvt_pk_u8_f32 v9, v17, 1, v16                            // 000000007CA8: D1DD0009 04410311
	v_cvt_pk_u8_f32 v12, v157, 1, v155                         // 000000007CB0: D1DD000C 066D039D
	v_cvt_pk_u8_f32 v13, v161, 1, v159                         // 000000007CB8: D1DD000D 067D03A1
	v_cvt_pk_u8_f32 v16, v165, 1, v164                         // 000000007CC0: D1DD0010 069103A5
	v_cvt_pk_u8_f32 v17, v169, 1, v168                         // 000000007CC8: D1DD0011 06A103A9
	v_cvt_pk_u8_f32 v155, v197, 1, v196                        // 000000007CD0: D1DD009B 071103C5
	v_cvt_pk_u8_f32 v157, v201, 1, v200                        // 000000007CD8: D1DD009D 072103C9
	v_cvt_pk_u8_f32 v159, v205, 1, v204                        // 000000007CE0: D1DD009F 073103CD
	v_cvt_pk_u8_f32 v161, v209, 1, v208                        // 000000007CE8: D1DD00A1 074103D1
	v_cvt_pk_u8_f32 v164, v213, 1, v212                        // 000000007CF0: D1DD00A4 075103D5
	v_cvt_pk_u8_f32 v165, v217, 1, v216                        // 000000007CF8: D1DD00A5 076103D9
	v_cvt_pk_u8_f32 v168, v221, 1, v220                        // 000000007D00: D1DD00A8 077103DD
	v_cvt_pk_u8_f32 v169, v225, 1, v224                        // 000000007D08: D1DD00A9 078103E1
	v_fma_f32 v7, v133, v188, v172                             // 000000007D10: D1CB0007 06B37985
	v_fma_f32 v11, v117, v188, v172                            // 000000007D18: D1CB000B 06B37975
	v_fma_f32 v15, v137, v188, v172                            // 000000007D20: D1CB000F 06B37989
	v_fma_f32 v156, v121, v188, v172                           // 000000007D28: D1CB009C 06B37979
	v_fma_f32 v160, v141, v188, v172                           // 000000007D30: D1CB00A0 06B3798D
	v_fma_f32 v163, v125, v188, v172                           // 000000007D38: D1CB00A3 06B3797D
	v_fma_f32 v167, v145, v188, v172                           // 000000007D40: D1CB00A7 06B37991
	v_fma_f32 v195, v129, v188, v172                           // 000000007D48: D1CB00C3 06B37981
	v_fma_f32 v199, v101, v188, v170                           // 000000007D50: D1CB00C7 06AB7965
	v_fma_f32 v203, v85, v188, v170                            // 000000007D58: D1CB00CB 06AB7955
	v_fma_f32 v207, v105, v188, v170                           // 000000007D60: D1CB00CF 06AB7969
	v_fma_f32 v211, v89, v188, v170                            // 000000007D68: D1CB00D3 06AB7959
	v_fma_f32 v215, v109, v188, v170                           // 000000007D70: D1CB00D7 06AB796D
	v_fma_f32 v219, v93, v188, v170                            // 000000007D78: D1CB00DB 06AB795D
	v_fma_f32 v223, v113, v188, v170                           // 000000007D80: D1CB00DF 06AB7971
	v_fma_f32 v227, v97, v188, v170                            // 000000007D88: D1CB00E3 06AB7961
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 000000007D90: D1DD0004 04110506
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 000000007D98: D1DD0005 0415050A
	v_cvt_pk_u8_f32 v6, v14, 2, v8                             // 000000007DA0: D1DD0006 0421050E
	v_cvt_pk_u8_f32 v8, v154, 2, v9                            // 000000007DA8: D1DD0008 0425059A
	v_cvt_pk_u8_f32 v9, v158, 2, v12                           // 000000007DB0: D1DD0009 0431059E
	v_cvt_pk_u8_f32 v10, v162, 2, v13                          // 000000007DB8: D1DD000A 043505A2
	v_cvt_pk_u8_f32 v12, v166, 2, v16                          // 000000007DC0: D1DD000C 044105A6
	v_cvt_pk_u8_f32 v13, v173, 2, v17                          // 000000007DC8: D1DD000D 044505AD
	v_cvt_pk_u8_f32 v14, v198, 2, v155                         // 000000007DD0: D1DD000E 066D05C6
	v_cvt_pk_u8_f32 v16, v202, 2, v157                         // 000000007DD8: D1DD0010 067505CA
	v_cvt_pk_u8_f32 v17, v206, 2, v159                         // 000000007DE0: D1DD0011 067D05CE
	v_cvt_pk_u8_f32 v162, v210, 2, v161                        // 000000007DE8: D1DD00A2 068505D2
	v_cvt_pk_u8_f32 v164, v214, 2, v164                        // 000000007DF0: D1DD00A4 069105D6
	v_cvt_pk_u8_f32 v165, v218, 2, v165                        // 000000007DF8: D1DD00A5 069505DA
	v_cvt_pk_u8_f32 v166, v222, 2, v168                        // 000000007E00: D1DD00A6 06A105DE
	v_cvt_pk_u8_f32 v168, v226, 2, v169                        // 000000007E08: D1DD00A8 06A505E2
	v_cvt_pk_u8_f32 v154, v7, 3, v4                            // 000000007E10: D1DD009A 04110707
	v_cvt_pk_u8_f32 v158, v11, 3, v5                           // 000000007E18: D1DD009E 0415070B
	v_cvt_pk_u8_f32 v155, v15, 3, v6                           // 000000007E20: D1DD009B 0419070F
	v_cvt_pk_u8_f32 v159, v156, 3, v8                          // 000000007E28: D1DD009F 0421079C
	v_cvt_pk_u8_f32 v156, v160, 3, v9                          // 000000007E30: D1DD009C 042507A0
	v_cvt_pk_u8_f32 v160, v163, 3, v10                         // 000000007E38: D1DD00A0 042907A3
	v_cvt_pk_u8_f32 v157, v167, 3, v12                         // 000000007E40: D1DD009D 043107A7
	v_cvt_pk_u8_f32 v161, v195, 3, v13                         // 000000007E48: D1DD00A1 043507C3
	v_cvt_pk_u8_f32 v4, v199, 3, v14                           // 000000007E50: D1DD0004 043907C7
	v_cvt_pk_u8_f32 v8, v203, 3, v16                           // 000000007E58: D1DD0008 044107CB
	v_cvt_pk_u8_f32 v5, v207, 3, v17                           // 000000007E60: D1DD0005 044507CF
	v_cvt_pk_u8_f32 v9, v211, 3, v162                          // 000000007E68: D1DD0009 068907D3
	v_cvt_pk_u8_f32 v6, v215, 3, v164                          // 000000007E70: D1DD0006 069107D7
	v_cvt_pk_u8_f32 v10, v219, 3, v165                         // 000000007E78: D1DD000A 069507DB
	v_cvt_pk_u8_f32 v7, v223, 3, v166                          // 000000007E80: D1DD0007 069907DF
	v_cvt_pk_u8_f32 v11, v227, 3, v168                         // 000000007E88: D1DD000B 06A107E3
	s_barrier                                                  // 000000007E90: BF8A0000
	s_setprio 1                                                // 000000007E94: BF8F0001
	s_waitcnt vmcnt(0)                                         // 000000007E98: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[154:161], 0// 000000007E9C: D3AD000C 02033592
	v_mfma_f32_16x16x128_f8f6f4 v[14:17], v[146:153], v[4:11], 0// 000000007EA4: D3AD000E 02020992
	ds_read_b64_tr_b8 v[162:163], v171                         // 000000007EAC: D9C40000 A20000AB
	ds_read_b64_tr_b8 v[164:165], v171 offset:1024             // 000000007EB4: D9C40400 A40000AB
	ds_read_b64_tr_b8 v[166:167], v171 offset:2048             // 000000007EBC: D9C40800 A60000AB
	ds_read_b64_tr_b8 v[168:169], v171 offset:3072             // 000000007EC4: D9C40C00 A80000AB
	ds_read_b64_tr_b8 v[196:197], v171 offset:256              // 000000007ECC: D9C40100 C40000AB
	ds_read_b64_tr_b8 v[198:199], v171 offset:1280             // 000000007ED4: D9C40500 C60000AB
	ds_read_b64_tr_b8 v[200:201], v171 offset:2304             // 000000007EDC: D9C40900 C80000AB
	ds_read_b64_tr_b8 v[202:203], v171 offset:3328             // 000000007EE4: D9C40D00 CA0000AB
	ds_read_b64_tr_b8 v[204:205], v171 offset:512              // 000000007EEC: D9C40200 CC0000AB
	ds_read_b64_tr_b8 v[206:207], v171 offset:1536             // 000000007EF4: D9C40600 CE0000AB
	ds_read_b64_tr_b8 v[208:209], v171 offset:2560             // 000000007EFC: D9C40A00 D00000AB
	ds_read_b64_tr_b8 v[210:211], v171 offset:3584             // 000000007F04: D9C40E00 D20000AB
	s_waitcnt lgkmcnt(4)                                       // 000000007F0C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[162:169], v[154:161], v[66:81], v177, v191 op_sel_hi:[0,0,0]// 000000007F10: D3AC0000 00037FB1 D3AE0842 050B35A2
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[196:203], v[154:161], v[50:65], v177, v191 op_sel_hi:[0,0,0]// 000000007F20: D3AC0000 00037FB1 D3AE0832 04CB35C4
	ds_read_b64_tr_b8 v[162:163], v171 offset:768              // 000000007F30: D9C40300 A20000AB
	ds_read_b64_tr_b8 v[164:165], v171 offset:1792             // 000000007F38: D9C40700 A40000AB
	ds_read_b64_tr_b8 v[166:167], v171 offset:2816             // 000000007F40: D9C40B00 A60000AB
	ds_read_b64_tr_b8 v[168:169], v171 offset:3840             // 000000007F48: D9C40F00 A80000AB
	ds_read_b64_tr_b8 v[196:197], v171 offset:4096             // 000000007F50: D9C41000 C40000AB
	ds_read_b64_tr_b8 v[198:199], v171 offset:5120             // 000000007F58: D9C41400 C60000AB
	ds_read_b64_tr_b8 v[200:201], v171 offset:6144             // 000000007F60: D9C41800 C80000AB
	ds_read_b64_tr_b8 v[202:203], v171 offset:7168             // 000000007F68: D9C41C00 CA0000AB
	s_waitcnt lgkmcnt(4)                                       // 000000007F70: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[204:211], v[154:161], v[34:49], v177, v191 op_sel_hi:[0,0,0]// 000000007F74: D3AC0000 00037FB1 D3AE0822 048B35CC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[162:169], v[154:161], v[18:33], v177, v191 op_sel_hi:[0,0,0]// 000000007F84: D3AC0000 00037FB1 D3AE0812 044B35A2
	ds_read_b64_tr_b8 v[204:205], v171 offset:4352             // 000000007F94: D9C41100 CC0000AB
	ds_read_b64_tr_b8 v[206:207], v171 offset:5376             // 000000007F9C: D9C41500 CE0000AB
	ds_read_b64_tr_b8 v[208:209], v171 offset:6400             // 000000007FA4: D9C41900 D00000AB
	ds_read_b64_tr_b8 v[210:211], v171 offset:7424             // 000000007FAC: D9C41D00 D20000AB
	ds_read_b64_tr_b8 v[154:155], v171 offset:4608             // 000000007FB4: D9C41200 9A0000AB
	ds_read_b64_tr_b8 v[156:157], v171 offset:5632             // 000000007FBC: D9C41600 9C0000AB
	ds_read_b64_tr_b8 v[158:159], v171 offset:6656             // 000000007FC4: D9C41A00 9E0000AB
	ds_read_b64_tr_b8 v[160:161], v171 offset:7680             // 000000007FCC: D9C41E00 A00000AB
	s_waitcnt lgkmcnt(4)                                       // 000000007FD4: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[196:203], v[4:11], v[66:81], v177, v193 op_sel_hi:[0,0,0]// 000000007FD8: D3AC0000 000383B1 D3AE0842 050A09C4
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[204:211], v[4:11], v[50:65], v177, v193 op_sel_hi:[0,0,0]// 000000007FE8: D3AC0000 000383B1 D3AE0832 04CA09CC
	ds_read_b64_tr_b8 v[162:163], v171 offset:4864             // 000000007FF8: D9C41300 A20000AB
	ds_read_b64_tr_b8 v[164:165], v171 offset:5888             // 000000008000: D9C41700 A40000AB
	ds_read_b64_tr_b8 v[166:167], v171 offset:6912             // 000000008008: D9C41B00 A60000AB
	ds_read_b64_tr_b8 v[168:169], v171 offset:7936             // 000000008010: D9C41F00 A80000AB
	s_add_u32 s16, s15, 4                                      // 000000008018: 8010840F
	s_cmp_ge_u32 s16, s79                                      // 00000000801C: BF094F10
	s_cbranch_scc1 11                                          // 000000008020: BF85000B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6550>
	s_mul_i32 s16, s16, s8                                     // 000000008024: 92100810
	s_add_u32 s18, s70, s17                                    // 000000008028: 80121146
	s_add_u32 m0, s18, 0                                       // 00000000802C: 807C8012
	s_lshl_b32 s16, s16, 7                                     // 000000008030: 8E108710
	buffer_load_dwordx4 v180, s[60:63], s16 offen lds          // 000000008034: E05D1000 100F00B4
	s_add_u32 m0, s18, 0x2000                                  // 00000000803C: 807CFF12 00002000
	s_nop 0                                                    // 000000008044: BF800000
	buffer_load_dwordx4 v181, s[60:63], s16 offen lds          // 000000008048: E05D1000 100F00B5
	s_add_u32 s16, s15, 2                                      // 000000008050: 8010820F
	s_cmp_ge_u32 s16, s79                                      // 000000008054: BF094F10
	s_cbranch_scc1 14                                          // 000000008058: BF85000E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6594>
	s_xor_b32 s17, s17, 0x8000                                 // 00000000805C: 8811FF11 00008000
	s_mul_i32 s16, s16, s8                                     // 000000008064: 92100810
	s_add_u32 s17, s71, s17                                    // 000000008068: 80111147
	s_lshl_b32 s16, s16, 7                                     // 00000000806C: 8E108710
	s_add_u32 m0, s17, 0                                       // 000000008070: 807C8011
	s_nop 0                                                    // 000000008074: BF800000
	buffer_load_dwordx4 v182, s[64:67], s16 offen lds          // 000000008078: E05D1000 101000B6
	s_add_u32 m0, s17, 0x2000                                  // 000000008080: 807CFF11 00002000
	s_nop 0                                                    // 000000008088: BF800000
	buffer_load_dwordx4 v183, s[64:67], s16 offen lds          // 00000000808C: E05D1000 101000B7
	v_mul_f32_e32 v12, v3, v12                                 // 000000008094: 0A181903
	v_mul_f32_e32 v13, v194, v14                               // 000000008098: 0A1A1DC2
	v_add_f32_e32 v12, v190, v12                               // 00000000809C: 021819BE
	v_add_f32_e32 v190, v12, v13                               // 0000000080A0: 037C1B0C
	s_waitcnt lgkmcnt(0)                                       // 0000000080A4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[154:161], v[4:11], v[34:49], v177, v193 op_sel_hi:[0,0,0]// 0000000080A8: D3AC0000 000383B1 D3AE0822 048A099A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[162:169], v[4:11], v[18:33], v177, v193 op_sel_hi:[0,0,0]// 0000000080B8: D3AC0000 000383B1 D3AE0812 044A09A2
	s_barrier                                                  // 0000000080C8: BF8A0000
	s_add_u32 s16, s15, 1                                      // 0000000080CC: 8010810F
	s_branch 62801                                             // 0000000080D0: BF82F551 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3b18>
	s_barrier                                                  // 0000000080D4: BF8A0000
	s_waitcnt vmcnt(0)                                         // 0000000080D8: BF8C0F70
	s_add_u32 s18, s16, 4                                      // 0000000080DC: 80128410
	s_cmp_ge_u32 s18, s79                                      // 0000000080E0: BF094F12
	s_cbranch_scc1 11                                          // 0000000080E4: BF85000B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6614>
	s_mul_i32 s18, s18, s8                                     // 0000000080E8: 92120812
	s_add_u32 s19, s70, s17                                    // 0000000080EC: 80131146
	s_add_u32 m0, s19, 0                                       // 0000000080F0: 807C8013
	s_lshl_b32 s18, s18, 7                                     // 0000000080F4: 8E128712
	buffer_load_dwordx4 v180, s[60:63], s18 offen lds          // 0000000080F8: E05D1000 120F00B4
	s_add_u32 m0, s19, 0x2000                                  // 000000008100: 807CFF13 00002000
	s_nop 0                                                    // 000000008108: BF800000
	buffer_load_dwordx4 v181, s[60:63], s18 offen lds          // 00000000810C: E05D1000 120F00B5
	s_add_u32 s18, s16, 2                                      // 000000008114: 80128210
	s_cmp_ge_u32 s18, s79                                      // 000000008118: BF094F12
	s_cbranch_scc1 14                                          // 00000000811C: BF85000E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6658>
	s_xor_b32 s17, s17, 0x8000                                 // 000000008120: 8811FF11 00008000
	s_mul_i32 s18, s18, s8                                     // 000000008128: 92120812
	s_add_u32 s17, s71, s17                                    // 00000000812C: 80111147
	s_lshl_b32 s18, s18, 7                                     // 000000008130: 8E128712
	s_add_u32 m0, s17, 0                                       // 000000008134: 807C8011
	s_nop 0                                                    // 000000008138: BF800000
	buffer_load_dwordx4 v182, s[64:67], s18 offen lds          // 00000000813C: E05D1000 121000B6
	s_add_u32 m0, s17, 0x2000                                  // 000000008144: 807CFF11 00002000
	s_nop 0                                                    // 00000000814C: BF800000
	buffer_load_dwordx4 v183, s[64:67], s18 offen lds          // 000000008150: E05D1000 121000B7
	s_barrier                                                  // 000000008158: BF8A0000
	s_add_u32 s16, s16, 1                                      // 00000000815C: 80108110
	s_branch 62765                                             // 000000008160: BF82F52D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3b18>
	v_mov_b32_e32 v3, v2                                       // 000000008164: 7E060302
	v_mov_b32_e32 v4, v2                                       // 000000008168: 7E080302
	v_mov_b32_e32 v5, v2                                       // 00000000816C: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000008170: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000008174: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 000000008178: 7E100302
	v_mov_b32_e32 v9, v2                                       // 00000000817C: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000008180: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000008184: 7E160302
	v_mov_b32_e32 v12, v2                                      // 000000008188: 7E180302
	v_mov_b32_e32 v13, v2                                      // 00000000818C: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000008190: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000008194: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 000000008198: 7E200302
	v_mov_b32_e32 v17, v2                                      // 00000000819C: 7E220302
	v_mov_b64_e32 v[144:145], v[16:17]                         // 0000000081A0: 7F207110
	v_mov_b64_e32 v[142:143], v[14:15]                         // 0000000081A4: 7F1C710E
	v_mov_b64_e32 v[140:141], v[12:13]                         // 0000000081A8: 7F18710C
	v_mov_b64_e32 v[138:139], v[10:11]                         // 0000000081AC: 7F14710A
	v_mov_b64_e32 v[136:137], v[8:9]                           // 0000000081B0: 7F107108
	v_mov_b64_e32 v[134:135], v[6:7]                           // 0000000081B4: 7F0C7106
	v_mov_b64_e32 v[132:133], v[4:5]                           // 0000000081B8: 7F087104
	v_mov_b64_e32 v[130:131], v[2:3]                           // 0000000081BC: 7F047102
	s_branch 63187                                             // 0000000081C0: BF82F6D3 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4210>
	v_mov_b32_e32 v3, v2                                       // 0000000081C4: 7E060302
	v_mov_b32_e32 v4, v2                                       // 0000000081C8: 7E080302
	v_mov_b32_e32 v5, v2                                       // 0000000081CC: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 0000000081D0: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 0000000081D4: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 0000000081D8: 7E100302
	v_mov_b32_e32 v9, v2                                       // 0000000081DC: 7E120302
	v_mov_b32_e32 v10, v2                                      // 0000000081E0: 7E140302
	v_mov_b32_e32 v11, v2                                      // 0000000081E4: 7E160302
	v_mov_b32_e32 v12, v2                                      // 0000000081E8: 7E180302
	v_mov_b32_e32 v13, v2                                      // 0000000081EC: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 0000000081F0: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 0000000081F4: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 0000000081F8: 7E200302
	v_mov_b32_e32 v17, v2                                      // 0000000081FC: 7E220302
	v_mov_b64_e32 v[144:145], v[16:17]                         // 000000008200: 7F207110
	v_mov_b64_e32 v[142:143], v[14:15]                         // 000000008204: 7F1C710E
	v_mov_b64_e32 v[140:141], v[12:13]                         // 000000008208: 7F18710C
	v_mov_b64_e32 v[138:139], v[10:11]                         // 00000000820C: 7F14710A
	v_mov_b64_e32 v[136:137], v[8:9]                           // 000000008210: 7F107108
	v_mov_b64_e32 v[134:135], v[6:7]                           // 000000008214: 7F0C7106
	v_mov_b64_e32 v[132:133], v[4:5]                           // 000000008218: 7F087104
	v_mov_b64_e32 v[130:131], v[2:3]                           // 00000000821C: 7F047102
	s_branch 64548                                             // 000000008220: BF82FC24 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x57b4>
	v_mov_b32_e32 v3, v2                                       // 000000008224: 7E060302
	v_mov_b32_e32 v4, v2                                       // 000000008228: 7E080302
	v_mov_b32_e32 v5, v2                                       // 00000000822C: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000008230: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000008234: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 000000008238: 7E100302
	v_mov_b32_e32 v9, v2                                       // 00000000823C: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000008240: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000008244: 7E160302
	v_mov_b32_e32 v12, v2                                      // 000000008248: 7E180302
	v_mov_b32_e32 v13, v2                                      // 00000000824C: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000008250: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000008254: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 000000008258: 7E200302
	v_mov_b32_e32 v17, v2                                      // 00000000825C: 7E220302
	v_mov_b64_e32 v[96:97], v[16:17]                           // 000000008260: 7EC07110
	v_mov_b64_e32 v[94:95], v[14:15]                           // 000000008264: 7EBC710E
	v_mov_b64_e32 v[92:93], v[12:13]                           // 000000008268: 7EB8710C
	v_mov_b64_e32 v[90:91], v[10:11]                           // 00000000826C: 7EB4710A
	v_mov_b64_e32 v[88:89], v[8:9]                             // 000000008270: 7EB07108
	v_mov_b64_e32 v[86:87], v[6:7]                             // 000000008274: 7EAC7106
	v_mov_b64_e32 v[84:85], v[4:5]                             // 000000008278: 7EA87104
	v_mov_b64_e32 v[82:83], v[2:3]                             // 00000000827C: 7EA47102
	s_branch 63359                                             // 000000008280: BF82F77F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4580>
	v_mov_b32_e32 v3, v2                                       // 000000008284: 7E060302
	v_mov_b32_e32 v4, v2                                       // 000000008288: 7E080302
	v_mov_b32_e32 v5, v2                                       // 00000000828C: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000008290: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000008294: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 000000008298: 7E100302
	v_mov_b32_e32 v9, v2                                       // 00000000829C: 7E120302
	v_mov_b32_e32 v10, v2                                      // 0000000082A0: 7E140302
	v_mov_b32_e32 v11, v2                                      // 0000000082A4: 7E160302
	v_mov_b32_e32 v12, v2                                      // 0000000082A8: 7E180302
	v_mov_b32_e32 v13, v2                                      // 0000000082AC: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 0000000082B0: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 0000000082B4: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 0000000082B8: 7E200302
	v_mov_b32_e32 v17, v2                                      // 0000000082BC: 7E220302
	v_mov_b64_e32 v[96:97], v[16:17]                           // 0000000082C0: 7EC07110
	v_mov_b64_e32 v[94:95], v[14:15]                           // 0000000082C4: 7EBC710E
	v_mov_b64_e32 v[92:93], v[12:13]                           // 0000000082C8: 7EB8710C
	v_mov_b64_e32 v[90:91], v[10:11]                           // 0000000082CC: 7EB4710A
	v_mov_b64_e32 v[88:89], v[8:9]                             // 0000000082D0: 7EB07108
	v_mov_b64_e32 v[86:87], v[6:7]                             // 0000000082D4: 7EAC7106
	v_mov_b64_e32 v[84:85], v[4:5]                             // 0000000082D8: 7EA87104
	v_mov_b64_e32 v[82:83], v[2:3]                             // 0000000082DC: 7EA47102
	s_branch 64720                                             // 0000000082E0: BF82FCD0 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5b24>
	v_mov_b32_e32 v3, v2                                       // 0000000082E4: 7E060302
	v_mov_b32_e32 v4, v2                                       // 0000000082E8: 7E080302
	v_mov_b32_e32 v5, v2                                       // 0000000082EC: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 0000000082F0: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 0000000082F4: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 0000000082F8: 7E100302
	v_mov_b32_e32 v9, v2                                       // 0000000082FC: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000008300: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000008304: 7E160302
	v_mov_b32_e32 v12, v2                                      // 000000008308: 7E180302
	v_mov_b32_e32 v13, v2                                      // 00000000830C: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000008310: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000008314: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 000000008318: 7E200302
	v_mov_b32_e32 v17, v2                                      // 00000000831C: 7E220302
	v_mov_b64_e32 v[112:113], v[16:17]                         // 000000008320: 7EE07110
	v_mov_b64_e32 v[110:111], v[14:15]                         // 000000008324: 7EDC710E
	v_mov_b64_e32 v[108:109], v[12:13]                         // 000000008328: 7ED8710C
	v_mov_b64_e32 v[106:107], v[10:11]                         // 00000000832C: 7ED4710A
	v_mov_b64_e32 v[104:105], v[8:9]                           // 000000008330: 7ED07108
	v_mov_b64_e32 v[102:103], v[6:7]                           // 000000008334: 7ECC7106
	v_mov_b64_e32 v[100:101], v[4:5]                           // 000000008338: 7EC87104
	v_mov_b64_e32 v[98:99], v[2:3]                             // 00000000833C: 7EC47102
	s_branch 63237                                             // 000000008340: BF82F705 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4458>
	v_mov_b32_e32 v3, v2                                       // 000000008344: 7E060302
	v_mov_b32_e32 v4, v2                                       // 000000008348: 7E080302
	v_mov_b32_e32 v5, v2                                       // 00000000834C: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000008350: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000008354: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 000000008358: 7E100302
	v_mov_b32_e32 v9, v2                                       // 00000000835C: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000008360: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000008364: 7E160302
	v_mov_b32_e32 v12, v2                                      // 000000008368: 7E180302
	v_mov_b32_e32 v13, v2                                      // 00000000836C: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000008370: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000008374: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 000000008378: 7E200302
	v_mov_b32_e32 v17, v2                                      // 00000000837C: 7E220302
	v_mov_b64_e32 v[112:113], v[16:17]                         // 000000008380: 7EE07110
	v_mov_b64_e32 v[110:111], v[14:15]                         // 000000008384: 7EDC710E
	v_mov_b64_e32 v[108:109], v[12:13]                         // 000000008388: 7ED8710C
	v_mov_b64_e32 v[106:107], v[10:11]                         // 00000000838C: 7ED4710A
	v_mov_b64_e32 v[104:105], v[8:9]                           // 000000008390: 7ED07108
	v_mov_b64_e32 v[102:103], v[6:7]                           // 000000008394: 7ECC7106
	v_mov_b64_e32 v[100:101], v[4:5]                           // 000000008398: 7EC87104
	v_mov_b64_e32 v[98:99], v[2:3]                             // 00000000839C: 7EC47102
	s_branch 64598                                             // 0000000083A0: BF82FC56 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x59fc>
	v_mov_b32_e32 v3, v2                                       // 0000000083A4: 7E060302
	v_mov_b32_e32 v4, v2                                       // 0000000083A8: 7E080302
	v_mov_b32_e32 v5, v2                                       // 0000000083AC: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 0000000083B0: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 0000000083B4: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 0000000083B8: 7E100302
	v_mov_b32_e32 v9, v2                                       // 0000000083BC: 7E120302
	v_mov_b32_e32 v10, v2                                      // 0000000083C0: 7E140302
	v_mov_b32_e32 v11, v2                                      // 0000000083C4: 7E160302
	v_mov_b32_e32 v12, v2                                      // 0000000083C8: 7E180302
	v_mov_b32_e32 v13, v2                                      // 0000000083CC: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 0000000083D0: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 0000000083D4: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 0000000083D8: 7E200302
	v_mov_b32_e32 v17, v2                                      // 0000000083DC: 7E220302
	v_mov_b64_e32 v[128:129], v[16:17]                         // 0000000083E0: 7F007110
	v_mov_b64_e32 v[126:127], v[14:15]                         // 0000000083E4: 7EFC710E
	v_mov_b64_e32 v[124:125], v[12:13]                         // 0000000083E8: 7EF8710C
	v_mov_b64_e32 v[122:123], v[10:11]                         // 0000000083EC: 7EF4710A
	v_mov_b64_e32 v[120:121], v[8:9]                           // 0000000083F0: 7EF07108
	v_mov_b64_e32 v[118:119], v[6:7]                           // 0000000083F4: 7EEC7106
	v_mov_b64_e32 v[116:117], v[4:5]                           // 0000000083F8: 7EE87104
	v_mov_b64_e32 v[114:115], v[2:3]                           // 0000000083FC: 7EE47102
	s_branch 63116                                             // 000000008400: BF82F68C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4334>
	v_mov_b32_e32 v3, v2                                       // 000000008404: 7E060302
	v_mov_b32_e32 v4, v2                                       // 000000008408: 7E080302
	v_mov_b32_e32 v5, v2                                       // 00000000840C: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000008410: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000008414: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 000000008418: 7E100302
	v_mov_b32_e32 v9, v2                                       // 00000000841C: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000008420: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000008424: 7E160302
	v_mov_b32_e32 v12, v2                                      // 000000008428: 7E180302
	v_mov_b32_e32 v13, v2                                      // 00000000842C: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000008430: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000008434: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 000000008438: 7E200302
	v_mov_b32_e32 v17, v2                                      // 00000000843C: 7E220302
	v_mov_b64_e32 v[128:129], v[16:17]                         // 000000008440: 7F007110
	v_mov_b64_e32 v[126:127], v[14:15]                         // 000000008444: 7EFC710E
	v_mov_b64_e32 v[124:125], v[12:13]                         // 000000008448: 7EF8710C
	v_mov_b64_e32 v[122:123], v[10:11]                         // 00000000844C: 7EF4710A
	v_mov_b64_e32 v[120:121], v[8:9]                           // 000000008450: 7EF07108
	v_mov_b64_e32 v[118:119], v[6:7]                           // 000000008454: 7EEC7106
	v_mov_b64_e32 v[116:117], v[4:5]                           // 000000008458: 7EE87104
	v_mov_b64_e32 v[114:115], v[2:3]                           // 00000000845C: 7EE47102
	s_branch 64477                                             // 000000008460: BF82FBDD <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x58d8>
	s_cmp_ge_u32 s15, s16                                      // 000000008464: BF09100F
	s_cbranch_scc1 44                                          // 000000008468: BF85002C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6a1c>
	s_waitcnt vmcnt(0)                                         // 00000000846C: BF8C0F70
	s_barrier                                                  // 000000008470: BF8A0000
	s_add_u32 s16, s79, s76                                    // 000000008474: 80104C4F
	s_and_b32 s76, s16, 3                                      // 000000008478: 864C8310
	s_cmp_lg_u32 s48, 0                                        // 00000000847C: BF078030
	s_cselect_b64 s[16:17], -1, 0                              // 000000008480: 859080C1
	s_not_b32 s18, s52                                         // 000000008484: BE920434
	s_add_u32 s18, s4, s18                                     // 000000008488: 80121204
	s_cmp_eq_u32 s52, s18                                      // 00000000848C: BF061234
	s_cselect_b64 s[18:19], -1, 0                              // 000000008490: 859280C1
	s_or_b64 s[16:17], s[16:17], s[18:19]                      // 000000008494: 87901210
	s_and_b64 s[18:19], s[16:17], exec                         // 000000008498: 86927E10
	s_mov_b32 s23, 0                                           // 00000000849C: BE970080
	s_cbranch_scc0 848                                         // 0000000084A0: BF840350 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x76e4>
	s_add_u32 s2, s2, s14                                      // 0000000084A4: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 0000000084A8: BF093302
	s_cbranch_scc1 1097                                        // 0000000084AC: BF850449 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7ad4>
	s_lshl_b32 s15, s2, 5                                      // 0000000084B0: 8E0F8502
	s_load_dwordx8 s[52:59], s[46:47], s15 offset:0x0          // 0000000084B4: C00E4D17 1E000000
	s_branch 842                                               // 0000000084BC: BF82034A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x76e8>
	s_cmp_ge_u32 s15, s16                                      // 0000000084C0: BF09100F
	s_cbranch_scc1 430                                         // 0000000084C4: BF8501AE <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7080>
	s_waitcnt vmcnt(0)                                         // 0000000084C8: BF8C0F70
	s_barrier                                                  // 0000000084CC: BF8A0000
	s_add_u32 s16, s79, s76                                    // 0000000084D0: 80104C4F
	s_and_b32 s76, s16, 3                                      // 0000000084D4: 864C8310
	s_cmp_lg_u32 s48, 0                                        // 0000000084D8: BF078030
	s_cselect_b64 s[16:17], -1, 0                              // 0000000084DC: 859080C1
	s_not_b32 s18, s52                                         // 0000000084E0: BE920434
	s_add_u32 s18, s4, s18                                     // 0000000084E4: 80121204
	s_cmp_eq_u32 s52, s18                                      // 0000000084E8: BF061234
	s_cselect_b64 s[18:19], -1, 0                              // 0000000084EC: 859280C1
	s_or_b64 s[16:17], s[16:17], s[18:19]                      // 0000000084F0: 87901210
	s_and_b64 s[18:19], s[16:17], exec                         // 0000000084F4: 86927E10
	s_mov_b32 s23, 0                                           // 0000000084F8: BE970080
	s_cbranch_scc0 951                                         // 0000000084FC: BF8403B7 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x78dc>
	s_add_u32 s2, s2, s14                                      // 000000008500: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000008504: BF093302
	s_cbranch_scc1 1079                                        // 000000008508: BF850437 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7ae8>
	s_lshl_b32 s15, s2, 5                                      // 00000000850C: 8E0F8502
	s_load_dwordx8 s[52:59], s[46:47], s15 offset:0x0          // 000000008510: C00E4D17 1E000000
	s_branch 945                                               // 000000008518: BF8203B1 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x78e0>
	s_add_u32 s16, s16, s76                                    // 00000000851C: 80104C10
	s_lshl_b32 s16, s16, 14                                    // 000000008520: 8E108E10
	s_and_b32 s16, s16, 0xc000                                 // 000000008524: 8610FF10 0000C000
	v_add_u32_e32 v16, s16, v189                               // 00000000852C: 68217A10
	s_setprio 0                                                // 000000008530: BF8F0000
	v_fma_f32 v4, v130, v188, v172                             // 000000008534: D1CB0004 06B37982
	v_fma_f32 v7, v133, v188, v172                             // 00000000853C: D1CB0007 06B37985
	v_fma_f32 v8, v114, v188, v172                             // 000000008544: D1CB0008 06B37972
	v_fma_f32 v10, v116, v188, v172                            // 00000000854C: D1CB000A 06B37974
	v_fma_f32 v11, v117, v188, v172                            // 000000008554: D1CB000B 06B37975
	v_fma_f32 v12, v134, v188, v172                            // 00000000855C: D1CB000C 06B37986
	v_fma_f32 v17, v118, v188, v172                            // 000000008564: D1CB0011 06B37976
	v_fma_f32 v116, v121, v188, v172                           // 00000000856C: D1CB0074 06B37979
	v_fma_f32 v117, v138, v188, v172                           // 000000008574: D1CB0075 06B3798A
	v_fma_f32 v121, v122, v188, v172                           // 00000000857C: D1CB0079 06B3797A
	v_fma_f32 v122, v123, v188, v172                           // 000000008584: D1CB007A 06B3797B
	v_fma_f32 v123, v124, v188, v172                           // 00000000858C: D1CB007B 06B3797C
	v_fma_f32 v124, v125, v188, v172                           // 000000008594: D1CB007C 06B3797D
	v_fma_f32 v125, v142, v188, v172                           // 00000000859C: D1CB007D 06B3798E
	v_fma_f32 v126, v126, v188, v172                           // 0000000085A4: D1CB007E 06B3797E
	v_fma_f32 v98, v98, v188, v170                             // 0000000085AC: D1CB0062 06AB7962
	v_fma_f32 v82, v82, v188, v170                             // 0000000085B4: D1CB0052 06AB7952
	v_fma_f32 v133, v85, v188, v170                            // 0000000085BC: D1CB0085 06AB7955
	v_fma_f32 v85, v102, v188, v170                            // 0000000085C4: D1CB0055 06AB7966
	v_fma_f32 v102, v103, v188, v170                           // 0000000085CC: D1CB0066 06AB7967
	v_fma_f32 v103, v104, v188, v170                           // 0000000085D4: D1CB0067 06AB7968
	v_fma_f32 v104, v105, v188, v170                           // 0000000085DC: D1CB0068 06AB7969
	v_fma_f32 v86, v86, v188, v170                             // 0000000085E4: D1CB0056 06AB7956
	v_fma_f32 v105, v89, v188, v170                            // 0000000085EC: D1CB0069 06AB7959
	v_fma_f32 v89, v106, v188, v170                            // 0000000085F4: D1CB0059 06AB796A
	v_fma_f32 v106, v107, v188, v170                           // 0000000085FC: D1CB006A 06AB796B
	v_fma_f32 v107, v108, v188, v170                           // 000000008604: D1CB006B 06AB796C
	v_fma_f32 v108, v109, v188, v170                           // 00000000860C: D1CB006C 06AB796D
	v_fma_f32 v90, v90, v188, v170                             // 000000008614: D1CB005A 06AB795A
	v_fma_f32 v109, v110, v188, v170                           // 00000000861C: D1CB006D 06AB796E
	v_fma_f32 v94, v94, v188, v170                             // 000000008624: D1CB005E 06AB795E
	v_fma_f32 v5, v131, v188, v172                             // 00000000862C: D1CB0005 06B37983
	v_fma_f32 v9, v115, v188, v172                             // 000000008634: D1CB0009 06B37973
	v_fma_f32 v13, v135, v188, v172                            // 00000000863C: D1CB000D 06B37987
	v_fma_f32 v114, v119, v188, v172                           // 000000008644: D1CB0072 06B37977
	v_fma_f32 v118, v139, v188, v172                           // 00000000864C: D1CB0076 06B3798B
	v_fma_f32 v130, v143, v188, v172                           // 000000008654: D1CB0082 06B3798F
	v_fma_f32 v127, v127, v188, v172                           // 00000000865C: D1CB007F 06B3797F
	v_fma_f32 v99, v99, v188, v170                             // 000000008664: D1CB0063 06AB7963
	v_fma_f32 v83, v83, v188, v170                             // 00000000866C: D1CB0053 06AB7953
	v_fma_f32 v87, v87, v188, v170                             // 000000008674: D1CB0057 06AB7957
	v_fma_f32 v91, v91, v188, v170                             // 00000000867C: D1CB005B 06AB795B
	v_fma_f32 v110, v111, v188, v170                           // 000000008684: D1CB006E 06AB796F
	v_fma_f32 v111, v112, v188, v170                           // 00000000868C: D1CB006F 06AB7970
	v_fma_f32 v112, v113, v188, v170                           // 000000008694: D1CB0070 06AB7971
	v_fma_f32 v95, v95, v188, v170                             // 00000000869C: D1CB005F 06AB795F
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 0000000086A4: D1DD0004 02010104
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 0000000086AC: D1DD0008 02010108
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 0000000086B4: D1DD000C 0201010C
	v_cvt_pk_u8_f32 v17, v17, 0, 0                             // 0000000086BC: D1DD0011 02010111
	v_cvt_pk_u8_f32 v113, v117, 0, 0                           // 0000000086C4: D1DD0071 02010175
	v_cvt_pk_u8_f32 v117, v121, 0, 0                           // 0000000086CC: D1DD0075 02010179
	v_cvt_pk_u8_f32 v121, v125, 0, 0                           // 0000000086D4: D1DD0079 0201017D
	v_cvt_pk_u8_f32 v125, v126, 0, 0                           // 0000000086DC: D1DD007D 0201017E
	v_cvt_pk_u8_f32 v98, v98, 0, 0                             // 0000000086E4: D1DD0062 02010162
	v_cvt_pk_u8_f32 v82, v82, 0, 0                             // 0000000086EC: D1DD0052 02010152
	v_cvt_pk_u8_f32 v85, v85, 0, 0                             // 0000000086F4: D1DD0055 02010155
	v_cvt_pk_u8_f32 v86, v86, 0, 0                             // 0000000086FC: D1DD0056 02010156
	v_cvt_pk_u8_f32 v89, v89, 0, 0                             // 000000008704: D1DD0059 02010159
	v_cvt_pk_u8_f32 v90, v90, 0, 0                             // 00000000870C: D1DD005A 0201015A
	v_cvt_pk_u8_f32 v109, v109, 0, 0                           // 000000008714: D1DD006D 0201016D
	v_cvt_pk_u8_f32 v94, v94, 0, 0                             // 00000000871C: D1DD005E 0201015E
	v_fma_f32 v6, v132, v188, v172                             // 000000008724: D1CB0006 06B37984
	v_fma_f32 v14, v136, v188, v172                            // 00000000872C: D1CB000E 06B37988
	v_fma_f32 v115, v120, v188, v172                           // 000000008734: D1CB0073 06B37978
	v_fma_f32 v119, v140, v188, v172                           // 00000000873C: D1CB0077 06B3798C
	v_fma_f32 v131, v144, v188, v172                           // 000000008744: D1CB0083 06B37990
	v_fma_f32 v128, v128, v188, v172                           // 00000000874C: D1CB0080 06B37980
	v_fma_f32 v100, v100, v188, v170                           // 000000008754: D1CB0064 06AB7964
	v_fma_f32 v84, v84, v188, v170                             // 00000000875C: D1CB0054 06AB7954
	v_fma_f32 v88, v88, v188, v170                             // 000000008764: D1CB0058 06AB7958
	v_fma_f32 v92, v92, v188, v170                             // 00000000876C: D1CB005C 06AB795C
	v_fma_f32 v96, v96, v188, v170                             // 000000008774: D1CB0060 06AB7960
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 00000000877C: D1DD0004 04110305
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 000000008784: D1DD0005 04210309
	v_cvt_pk_u8_f32 v8, v13, 1, v12                            // 00000000878C: D1DD0008 0431030D
	v_cvt_pk_u8_f32 v9, v114, 1, v17                           // 000000008794: D1DD0009 04450372
	v_cvt_pk_u8_f32 v12, v118, 1, v113                         // 00000000879C: D1DD000C 05C50376
	v_cvt_pk_u8_f32 v13, v122, 1, v117                         // 0000000087A4: D1DD000D 05D5037A
	v_cvt_pk_u8_f32 v17, v130, 1, v121                         // 0000000087AC: D1DD0011 05E50382
	v_cvt_pk_u8_f32 v113, v127, 1, v125                        // 0000000087B4: D1DD0071 05F5037F
	v_cvt_pk_u8_f32 v98, v99, 1, v98                           // 0000000087BC: D1DD0062 05890363
	v_cvt_pk_u8_f32 v82, v83, 1, v82                           // 0000000087C4: D1DD0052 05490353
	v_cvt_pk_u8_f32 v83, v102, 1, v85                          // 0000000087CC: D1DD0053 05550366
	v_cvt_pk_u8_f32 v85, v87, 1, v86                           // 0000000087D4: D1DD0055 05590357
	v_cvt_pk_u8_f32 v86, v106, 1, v89                          // 0000000087DC: D1DD0056 0565036A
	v_cvt_pk_u8_f32 v87, v91, 1, v90                           // 0000000087E4: D1DD0057 0569035B
	v_cvt_pk_u8_f32 v89, v110, 1, v109                         // 0000000087EC: D1DD0059 05B5036E
	v_cvt_pk_u8_f32 v90, v95, 1, v94                           // 0000000087F4: D1DD005A 0579035F
	v_fma_f32 v15, v137, v188, v172                            // 0000000087FC: D1CB000F 06B37989
	v_fma_f32 v120, v141, v188, v172                           // 000000008804: D1CB0078 06B3798D
	v_fma_f32 v132, v145, v188, v172                           // 00000000880C: D1CB0084 06B37991
	v_fma_f32 v129, v129, v188, v172                           // 000000008814: D1CB0081 06B37981
	v_fma_f32 v101, v101, v188, v170                           // 00000000881C: D1CB0065 06AB7965
	v_fma_f32 v93, v93, v188, v170                             // 000000008824: D1CB005D 06AB795D
	v_fma_f32 v97, v97, v188, v170                             // 00000000882C: D1CB0061 06AB7961
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 000000008834: D1DD0004 04110506
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 00000000883C: D1DD0005 0415050A
	v_cvt_pk_u8_f32 v6, v14, 2, v8                             // 000000008844: D1DD0006 0421050E
	v_cvt_pk_u8_f32 v8, v115, 2, v9                            // 00000000884C: D1DD0008 04250573
	v_cvt_pk_u8_f32 v9, v119, 2, v12                           // 000000008854: D1DD0009 04310577
	v_cvt_pk_u8_f32 v10, v123, 2, v13                          // 00000000885C: D1DD000A 0435057B
	v_cvt_pk_u8_f32 v12, v131, 2, v17                          // 000000008864: D1DD000C 04450583
	v_cvt_pk_u8_f32 v13, v128, 2, v113                         // 00000000886C: D1DD000D 05C50580
	v_cvt_pk_u8_f32 v14, v100, 2, v98                          // 000000008874: D1DD000E 05890564
	v_cvt_pk_u8_f32 v17, v84, 2, v82                           // 00000000887C: D1DD0011 05490554
	v_cvt_pk_u8_f32 v91, v103, 2, v83                          // 000000008884: D1DD005B 054D0567
	v_cvt_pk_u8_f32 v94, v88, 2, v85                           // 00000000888C: D1DD005E 05550558
	v_cvt_pk_u8_f32 v95, v107, 2, v86                          // 000000008894: D1DD005F 0559056B
	v_cvt_pk_u8_f32 v92, v92, 2, v87                           // 00000000889C: D1DD005C 055D055C
	v_cvt_pk_u8_f32 v98, v111, 2, v89                          // 0000000088A4: D1DD0062 0565056F
	v_cvt_pk_u8_f32 v90, v96, 2, v90                           // 0000000088AC: D1DD005A 05690560
	s_mov_b32 s20, 0                                           // 0000000088B4: BE940080
	s_mov_b32 s23, 1                                           // 0000000088B8: BE970081
	v_cvt_pk_u8_f32 v82, v7, 3, v4                             // 0000000088BC: D1DD0052 04110707
	v_cvt_pk_u8_f32 v86, v11, 3, v5                            // 0000000088C4: D1DD0056 0415070B
	v_cvt_pk_u8_f32 v83, v15, 3, v6                            // 0000000088CC: D1DD0053 0419070F
	v_cvt_pk_u8_f32 v87, v116, 3, v8                           // 0000000088D4: D1DD0057 04210774
	v_cvt_pk_u8_f32 v84, v120, 3, v9                           // 0000000088DC: D1DD0054 04250778
	v_cvt_pk_u8_f32 v88, v124, 3, v10                          // 0000000088E4: D1DD0058 0429077C
	v_cvt_pk_u8_f32 v85, v132, 3, v12                          // 0000000088EC: D1DD0055 04310784
	v_cvt_pk_u8_f32 v89, v129, 3, v13                          // 0000000088F4: D1DD0059 04350781
	v_cvt_pk_u8_f32 v4, v101, 3, v14                           // 0000000088FC: D1DD0004 04390765
	v_cvt_pk_u8_f32 v8, v133, 3, v17                           // 000000008904: D1DD0008 04450785
	v_cvt_pk_u8_f32 v5, v104, 3, v91                           // 00000000890C: D1DD0005 056D0768
	v_cvt_pk_u8_f32 v9, v105, 3, v94                           // 000000008914: D1DD0009 05790769
	v_cvt_pk_u8_f32 v6, v108, 3, v95                           // 00000000891C: D1DD0006 057D076C
	v_cvt_pk_u8_f32 v10, v93, 3, v92                           // 000000008924: D1DD000A 0571075D
	v_cvt_pk_u8_f32 v7, v112, 3, v98                           // 00000000892C: D1DD0007 05890770
	v_cvt_pk_u8_f32 v11, v97, 3, v90                           // 000000008934: D1DD000B 05690761
	s_waitcnt vmcnt(0)                                         // 00000000893C: BF8C0F70
	s_barrier                                                  // 000000008940: BF8A0000
	s_add_u32 s16, s79, s76                                    // 000000008944: 80104C4F
	s_and_b32 s76, s16, 3                                      // 000000008948: 864C8310
	s_cmp_lg_u32 s48, 0                                        // 00000000894C: BF078030
	s_cselect_b64 s[16:17], -1, 0                              // 000000008950: 859080C1
	s_not_b32 s18, s52                                         // 000000008954: BE920434
	s_add_u32 s18, s4, s18                                     // 000000008958: 80121204
	s_cmp_eq_u32 s52, s18                                      // 00000000895C: BF061234
	s_cselect_b64 s[18:19], -1, 0                              // 000000008960: 859280C1
	s_or_b64 s[16:17], s[16:17], s[18:19]                      // 000000008964: 87901210
	s_and_b64 s[18:19], s[16:17], exec                         // 000000008968: 86927E10
	s_cbranch_scc0 7                                           // 00000000896C: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6e8c>
	s_add_u32 s2, s2, s14                                      // 000000008970: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000008974: BF093302
	s_cbranch_scc1 800                                         // 000000008978: BF850320 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7afc>
	s_lshl_b32 s15, s2, 5                                      // 00000000897C: 8E0F8502
	s_load_dwordx8 s[52:59], s[46:47], s15 offset:0x0          // 000000008980: C00E4D17 1E000000
	s_mov_b32 s23, 0                                           // 000000008988: BE970080
	s_waitcnt lgkmcnt(0)                                       // 00000000898C: BF8CC07F
	s_add_u32 s60, s38, s56                                    // 000000008990: 803C3826
	s_addc_u32 s61, s39, s57                                   // 000000008994: 823D3927
	s_add_u32 s64, s40, s56                                    // 000000008998: 80403828
	s_addc_u32 s65, s41, s57                                   // 00000000899C: 82413929
	s_not_b32 s15, s52                                         // 0000000089A0: BE8F0434
	s_add_u32 s15, s4, s15                                     // 0000000089A4: 800F0F04
	s_and_b64 s[16:17], s[16:17], exec                         // 0000000089A8: 86907E10
	s_cselect_b32 s15, s15, s52                                // 0000000089AC: 850F340F
	s_lshl_b32 s16, s15, 5                                     // 0000000089B0: 8E10850F
	s_add_u32 s16, s16, 32                                     // 0000000089B4: 8010A010
	s_mul_i32 s16, s16, s5                                     // 0000000089B8: 92100510
	s_addk_i32 s16, 0x60                                       // 0000000089BC: B7100060
	s_lshr_b32 s16, s16, 7                                     // 0000000089C0: 8F108710
	s_min_u32 s79, s75, s16                                    // 0000000089C4: 83CF104B
	s_mov_b32 s63, 0x110000                                    // 0000000089C8: BEBF00FF 00110000
	s_and_b64 s[16:17], s[34:35], exec                         // 0000000089D0: 86907E22
	s_cbranch_scc0 72                                          // 0000000089D4: BF840048 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6ff8>
	s_lshl_b32 s16, s76, 14                                    // 0000000089D8: 8E108E4C
	s_or_b32 s22, s70, s16                                     // 0000000089DC: 87161046
	s_add_u32 m0, s22, 0                                       // 0000000089E0: 807C8016
	s_lshl_b32 s17, s8, 5                                      // 0000000089E4: 8E118508
	buffer_load_dwordx4 v180, s[60:63], 0 offen lds            // 0000000089E8: E05D1000 800F00B4
	s_add_u32 m0, s22, 0x1000                                  // 0000000089F0: 807CFF16 00001000
	s_lshl_b32 s18, s8, 6                                      // 0000000089F8: 8E128608
	buffer_load_dwordx4 v180, s[60:63], s17 offen lds          // 0000000089FC: E05D1000 110F00B4
	s_add_u32 m0, s22, 0x2000                                  // 000000008A04: 807CFF16 00002000
	s_mul_i32 s19, s8, 0x60                                    // 000000008A0C: 9213FF08 00000060
	buffer_load_dwordx4 v180, s[60:63], s18 offen lds          // 000000008A14: E05D1000 120F00B4
	s_add_u32 m0, s22, 0x3000                                  // 000000008A1C: 807CFF16 00003000
	s_mov_b32 s66, s62                                         // 000000008A24: BEC2003E
	s_mov_b32 s67, s63                                         // 000000008A28: BEC3003F
	s_add_u32 s24, s71, s16                                    // 000000008A2C: 80181047
	buffer_load_dwordx4 v180, s[60:63], s19 offen lds          // 000000008A30: E05D1000 130F00B4
	s_add_u32 m0, s24, 0                                       // 000000008A38: 807C8018
	s_lshl_b32 s20, s8, 2                                      // 000000008A3C: 8E148208
	buffer_load_dwordx4 v182, s[64:67], 0 offen lds            // 000000008A40: E05D1000 801000B6
	s_add_u32 m0, s24, 0x1000                                  // 000000008A48: 807CFF18 00001000
	s_mul_i32 s21, s8, 0x44                                    // 000000008A50: 9215FF08 00000044
	buffer_load_dwordx4 v182, s[64:67], s18 offen lds          // 000000008A58: E05D1000 121000B6
	s_add_u32 m0, s24, 0x2000                                  // 000000008A60: 807CFF18 00002000
	s_nop 0                                                    // 000000008A68: BF800000
	buffer_load_dwordx4 v182, s[64:67], s20 offen lds          // 000000008A6C: E05D1000 141000B6
	s_add_u32 m0, s24, 0x3000                                  // 000000008A74: 807CFF18 00003000
	s_cmp_lt_u32 s79, 2                                        // 000000008A7C: BF0A824F
	buffer_load_dwordx4 v182, s[64:67], s21 offen lds          // 000000008A80: E05D1000 151000B6
	s_cbranch_scc1 27                                          // 000000008A88: BF85001B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6ff8>
	s_addk_i32 s16, 0x4000                                     // 000000008A8C: B7104000
	s_and_b32 s16, s16, 0xc000                                 // 000000008A90: 8610FF10 0000C000
	s_or_b32 s16, s70, s16                                     // 000000008A98: 87101046
	s_add_u32 m0, s16, 0                                       // 000000008A9C: 807C8010
	s_mul_i32 s17, s8, 0xa0                                    // 000000008AA0: 9211FF08 000000A0
	buffer_load_dwordx4 v180, s[60:63], s72 offen lds          // 000000008AA8: E05D1000 480F00B4
	s_add_u32 m0, s16, 0x1000                                  // 000000008AB0: 807CFF10 00001000
	s_mul_i32 s18, s8, 0xc0                                    // 000000008AB8: 9212FF08 000000C0
	s_mul_i32 s19, s8, 0xe0                                    // 000000008AC0: 9213FF08 000000E0
	buffer_load_dwordx4 v180, s[60:63], s17 offen lds          // 000000008AC8: E05D1000 110F00B4
	s_add_u32 m0, s16, 0x2000                                  // 000000008AD0: 807CFF10 00002000
	s_nop 0                                                    // 000000008AD8: BF800000
	buffer_load_dwordx4 v180, s[60:63], s18 offen lds          // 000000008ADC: E05D1000 120F00B4
	s_add_u32 m0, s16, 0x3000                                  // 000000008AE4: 807CFF10 00003000
	s_nop 0                                                    // 000000008AEC: BF800000
	buffer_load_dwordx4 v180, s[60:63], s19 offen lds          // 000000008AF0: E05D1000 130F00B4
	s_add_u32 s16, s36, s54                                    // 000000008AF8: 80103624
	s_addc_u32 s17, s37, s55                                   // 000000008AFC: 82113725
	s_add_u32 s20, s16, s74                                    // 000000008B00: 80144A10
	s_addc_u32 s21, s17, 0                                     // 000000008B04: 82158011
	s_add_u32 s16, s42, s58                                    // 000000008B08: 80103A2A
	s_addc_u32 s17, s43, s59                                   // 000000008B0C: 82113B2B
	s_add_u32 s16, s16, s77                                    // 000000008B10: 80104D10
	s_addc_u32 s17, s17, 0                                     // 000000008B14: 82118011
	s_add_u32 s18, s53, s78                                    // 000000008B18: 80124E35
	s_lshl_b32 s18, s18, 2                                     // 000000008B1C: 8E128212
	s_add_u32 s22, s44, s18                                    // 000000008B20: 8016122C
	s_addc_u32 s24, s45, 0                                     // 000000008B24: 8218802D
	s_mul_i32 s15, s15, s5                                     // 000000008B28: 920F050F
	s_and_b64 s[18:19], s[12:13], exec                         // 000000008B2C: 86927E0C
	s_cselect_b32 s19, 0, s24                                  // 000000008B30: 85131880
	s_cselect_b32 s18, 0, s22                                  // 000000008B34: 85121680
	s_add_u32 s15, s15, s6                                     // 000000008B38: 800F060F
	s_lshl_b32 s22, s15, 5                                     // 000000008B3C: 8E16850F
	v_or_b32_e32 v12, s22, v174                                // 000000008B40: 28195C16
	s_bfe_u32 s15, s15, 0x190002                               // 000000008B44: 928FFF0F 00190002
	v_mul_lo_u32 v12, v12, s7                                  // 000000008B4C: D285000C 00000F0C
	v_add_u32_e32 v12, v184, v12                               // 000000008B54: 681819B8
	global_load_dwordx4 v[228:231], v12, s[20:21]              // 000000008B58: DC5C8000 E414000C
	global_load_dwordx4 v[232:235], v12, s[20:21] offset:16    // 000000008B60: DC5C8010 E814000C
	global_load_dwordx4 v[236:239], v12, s[20:21] offset:64    // 000000008B68: DC5C8040 EC14000C
	global_load_dwordx4 v[240:243], v12, s[20:21] offset:80    // 000000008B70: DC5C8050 F014000C
	s_mov_b32 s20, 1                                           // 000000008B78: BE940081
	s_branch 675                                               // 000000008B7C: BF8202A3 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7b0c>
	s_add_u32 s16, s16, s76                                    // 000000008B80: 80104C10
	s_lshl_b32 s16, s16, 14                                    // 000000008B84: 8E108E10
	s_and_b32 s16, s16, 0xc000                                 // 000000008B88: 8610FF10 0000C000
	v_add_u32_e32 v16, s16, v189                               // 000000008B90: 68217A10
	s_setprio 0                                                // 000000008B94: BF8F0000
	v_fma_f32 v4, v130, v188, v172                             // 000000008B98: D1CB0004 06B37982
	v_fma_f32 v7, v133, v188, v172                             // 000000008BA0: D1CB0007 06B37985
	v_fma_f32 v8, v114, v188, v172                             // 000000008BA8: D1CB0008 06B37972
	v_fma_f32 v10, v116, v188, v172                            // 000000008BB0: D1CB000A 06B37974
	v_fma_f32 v11, v117, v188, v172                            // 000000008BB8: D1CB000B 06B37975
	v_fma_f32 v12, v134, v188, v172                            // 000000008BC0: D1CB000C 06B37986
	v_fma_f32 v17, v118, v188, v172                            // 000000008BC8: D1CB0011 06B37976
	v_fma_f32 v116, v121, v188, v172                           // 000000008BD0: D1CB0074 06B37979
	v_fma_f32 v117, v138, v188, v172                           // 000000008BD8: D1CB0075 06B3798A
	v_fma_f32 v121, v122, v188, v172                           // 000000008BE0: D1CB0079 06B3797A
	v_fma_f32 v122, v123, v188, v172                           // 000000008BE8: D1CB007A 06B3797B
	v_fma_f32 v123, v124, v188, v172                           // 000000008BF0: D1CB007B 06B3797C
	v_fma_f32 v124, v125, v188, v172                           // 000000008BF8: D1CB007C 06B3797D
	v_fma_f32 v125, v142, v188, v172                           // 000000008C00: D1CB007D 06B3798E
	v_fma_f32 v126, v126, v188, v172                           // 000000008C08: D1CB007E 06B3797E
	v_fma_f32 v98, v98, v188, v170                             // 000000008C10: D1CB0062 06AB7962
	v_fma_f32 v82, v82, v188, v170                             // 000000008C18: D1CB0052 06AB7952
	v_fma_f32 v133, v85, v188, v170                            // 000000008C20: D1CB0085 06AB7955
	v_fma_f32 v85, v102, v188, v170                            // 000000008C28: D1CB0055 06AB7966
	v_fma_f32 v102, v103, v188, v170                           // 000000008C30: D1CB0066 06AB7967
	v_fma_f32 v103, v104, v188, v170                           // 000000008C38: D1CB0067 06AB7968
	v_fma_f32 v104, v105, v188, v170                           // 000000008C40: D1CB0068 06AB7969
	v_fma_f32 v86, v86, v188, v170                             // 000000008C48: D1CB0056 06AB7956
	v_fma_f32 v105, v89, v188, v170                            // 000000008C50: D1CB0069 06AB7959
	v_fma_f32 v89, v106, v188, v170                            // 000000008C58: D1CB0059 06AB796A
	v_fma_f32 v106, v107, v188, v170                           // 000000008C60: D1CB006A 06AB796B
	v_fma_f32 v107, v108, v188, v170                           // 000000008C68: D1CB006B 06AB796C
	v_fma_f32 v108, v109, v188, v170                           // 000000008C70: D1CB006C 06AB796D
	v_fma_f32 v90, v90, v188, v170                             // 000000008C78: D1CB005A 06AB795A
	v_fma_f32 v109, v110, v188, v170                           // 000000008C80: D1CB006D 06AB796E
	v_fma_f32 v94, v94, v188, v170                             // 000000008C88: D1CB005E 06AB795E
	v_fma_f32 v5, v131, v188, v172                             // 000000008C90: D1CB0005 06B37983
	v_fma_f32 v9, v115, v188, v172                             // 000000008C98: D1CB0009 06B37973
	v_fma_f32 v13, v135, v188, v172                            // 000000008CA0: D1CB000D 06B37987
	v_fma_f32 v114, v119, v188, v172                           // 000000008CA8: D1CB0072 06B37977
	v_fma_f32 v118, v139, v188, v172                           // 000000008CB0: D1CB0076 06B3798B
	v_fma_f32 v130, v143, v188, v172                           // 000000008CB8: D1CB0082 06B3798F
	v_fma_f32 v127, v127, v188, v172                           // 000000008CC0: D1CB007F 06B3797F
	v_fma_f32 v99, v99, v188, v170                             // 000000008CC8: D1CB0063 06AB7963
	v_fma_f32 v83, v83, v188, v170                             // 000000008CD0: D1CB0053 06AB7953
	v_fma_f32 v87, v87, v188, v170                             // 000000008CD8: D1CB0057 06AB7957
	v_fma_f32 v91, v91, v188, v170                             // 000000008CE0: D1CB005B 06AB795B
	v_fma_f32 v110, v111, v188, v170                           // 000000008CE8: D1CB006E 06AB796F
	v_fma_f32 v111, v112, v188, v170                           // 000000008CF0: D1CB006F 06AB7970
	v_fma_f32 v112, v113, v188, v170                           // 000000008CF8: D1CB0070 06AB7971
	v_fma_f32 v95, v95, v188, v170                             // 000000008D00: D1CB005F 06AB795F
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 000000008D08: D1DD0004 02010104
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 000000008D10: D1DD0008 02010108
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 000000008D18: D1DD000C 0201010C
	v_cvt_pk_u8_f32 v17, v17, 0, 0                             // 000000008D20: D1DD0011 02010111
	v_cvt_pk_u8_f32 v113, v117, 0, 0                           // 000000008D28: D1DD0071 02010175
	v_cvt_pk_u8_f32 v117, v121, 0, 0                           // 000000008D30: D1DD0075 02010179
	v_cvt_pk_u8_f32 v121, v125, 0, 0                           // 000000008D38: D1DD0079 0201017D
	v_cvt_pk_u8_f32 v125, v126, 0, 0                           // 000000008D40: D1DD007D 0201017E
	v_cvt_pk_u8_f32 v98, v98, 0, 0                             // 000000008D48: D1DD0062 02010162
	v_cvt_pk_u8_f32 v82, v82, 0, 0                             // 000000008D50: D1DD0052 02010152
	v_cvt_pk_u8_f32 v85, v85, 0, 0                             // 000000008D58: D1DD0055 02010155
	v_cvt_pk_u8_f32 v86, v86, 0, 0                             // 000000008D60: D1DD0056 02010156
	v_cvt_pk_u8_f32 v89, v89, 0, 0                             // 000000008D68: D1DD0059 02010159
	v_cvt_pk_u8_f32 v90, v90, 0, 0                             // 000000008D70: D1DD005A 0201015A
	v_cvt_pk_u8_f32 v109, v109, 0, 0                           // 000000008D78: D1DD006D 0201016D
	v_cvt_pk_u8_f32 v94, v94, 0, 0                             // 000000008D80: D1DD005E 0201015E
	v_fma_f32 v6, v132, v188, v172                             // 000000008D88: D1CB0006 06B37984
	v_fma_f32 v14, v136, v188, v172                            // 000000008D90: D1CB000E 06B37988
	v_fma_f32 v115, v120, v188, v172                           // 000000008D98: D1CB0073 06B37978
	v_fma_f32 v119, v140, v188, v172                           // 000000008DA0: D1CB0077 06B3798C
	v_fma_f32 v131, v144, v188, v172                           // 000000008DA8: D1CB0083 06B37990
	v_fma_f32 v128, v128, v188, v172                           // 000000008DB0: D1CB0080 06B37980
	v_fma_f32 v100, v100, v188, v170                           // 000000008DB8: D1CB0064 06AB7964
	v_fma_f32 v84, v84, v188, v170                             // 000000008DC0: D1CB0054 06AB7954
	v_fma_f32 v88, v88, v188, v170                             // 000000008DC8: D1CB0058 06AB7958
	v_fma_f32 v92, v92, v188, v170                             // 000000008DD0: D1CB005C 06AB795C
	v_fma_f32 v96, v96, v188, v170                             // 000000008DD8: D1CB0060 06AB7960
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 000000008DE0: D1DD0004 04110305
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 000000008DE8: D1DD0005 04210309
	v_cvt_pk_u8_f32 v8, v13, 1, v12                            // 000000008DF0: D1DD0008 0431030D
	v_cvt_pk_u8_f32 v9, v114, 1, v17                           // 000000008DF8: D1DD0009 04450372
	v_cvt_pk_u8_f32 v12, v118, 1, v113                         // 000000008E00: D1DD000C 05C50376
	v_cvt_pk_u8_f32 v13, v122, 1, v117                         // 000000008E08: D1DD000D 05D5037A
	v_cvt_pk_u8_f32 v17, v130, 1, v121                         // 000000008E10: D1DD0011 05E50382
	v_cvt_pk_u8_f32 v113, v127, 1, v125                        // 000000008E18: D1DD0071 05F5037F
	v_cvt_pk_u8_f32 v98, v99, 1, v98                           // 000000008E20: D1DD0062 05890363
	v_cvt_pk_u8_f32 v82, v83, 1, v82                           // 000000008E28: D1DD0052 05490353
	v_cvt_pk_u8_f32 v83, v102, 1, v85                          // 000000008E30: D1DD0053 05550366
	v_cvt_pk_u8_f32 v85, v87, 1, v86                           // 000000008E38: D1DD0055 05590357
	v_cvt_pk_u8_f32 v86, v106, 1, v89                          // 000000008E40: D1DD0056 0565036A
	v_cvt_pk_u8_f32 v87, v91, 1, v90                           // 000000008E48: D1DD0057 0569035B
	v_cvt_pk_u8_f32 v89, v110, 1, v109                         // 000000008E50: D1DD0059 05B5036E
	v_cvt_pk_u8_f32 v90, v95, 1, v94                           // 000000008E58: D1DD005A 0579035F
	v_fma_f32 v15, v137, v188, v172                            // 000000008E60: D1CB000F 06B37989
	v_fma_f32 v120, v141, v188, v172                           // 000000008E68: D1CB0078 06B3798D
	v_fma_f32 v132, v145, v188, v172                           // 000000008E70: D1CB0084 06B37991
	v_fma_f32 v129, v129, v188, v172                           // 000000008E78: D1CB0081 06B37981
	v_fma_f32 v101, v101, v188, v170                           // 000000008E80: D1CB0065 06AB7965
	v_fma_f32 v93, v93, v188, v170                             // 000000008E88: D1CB005D 06AB795D
	v_fma_f32 v97, v97, v188, v170                             // 000000008E90: D1CB0061 06AB7961
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 000000008E98: D1DD0004 04110506
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 000000008EA0: D1DD0005 0415050A
	v_cvt_pk_u8_f32 v6, v14, 2, v8                             // 000000008EA8: D1DD0006 0421050E
	v_cvt_pk_u8_f32 v8, v115, 2, v9                            // 000000008EB0: D1DD0008 04250573
	v_cvt_pk_u8_f32 v9, v119, 2, v12                           // 000000008EB8: D1DD0009 04310577
	v_cvt_pk_u8_f32 v10, v123, 2, v13                          // 000000008EC0: D1DD000A 0435057B
	v_cvt_pk_u8_f32 v12, v131, 2, v17                          // 000000008EC8: D1DD000C 04450583
	v_cvt_pk_u8_f32 v13, v128, 2, v113                         // 000000008ED0: D1DD000D 05C50580
	v_cvt_pk_u8_f32 v14, v100, 2, v98                          // 000000008ED8: D1DD000E 05890564
	v_cvt_pk_u8_f32 v17, v84, 2, v82                           // 000000008EE0: D1DD0011 05490554
	v_cvt_pk_u8_f32 v91, v103, 2, v83                          // 000000008EE8: D1DD005B 054D0567
	v_cvt_pk_u8_f32 v94, v88, 2, v85                           // 000000008EF0: D1DD005E 05550558
	v_cvt_pk_u8_f32 v95, v107, 2, v86                          // 000000008EF8: D1DD005F 0559056B
	v_cvt_pk_u8_f32 v92, v92, 2, v87                           // 000000008F00: D1DD005C 055D055C
	v_cvt_pk_u8_f32 v98, v111, 2, v89                          // 000000008F08: D1DD0062 0565056F
	v_cvt_pk_u8_f32 v90, v96, 2, v90                           // 000000008F10: D1DD005A 05690560
	s_mov_b32 s20, 0                                           // 000000008F18: BE940080
	s_mov_b32 s23, 1                                           // 000000008F1C: BE970081
	v_cvt_pk_u8_f32 v82, v7, 3, v4                             // 000000008F20: D1DD0052 04110707
	v_cvt_pk_u8_f32 v86, v11, 3, v5                            // 000000008F28: D1DD0056 0415070B
	v_cvt_pk_u8_f32 v83, v15, 3, v6                            // 000000008F30: D1DD0053 0419070F
	v_cvt_pk_u8_f32 v87, v116, 3, v8                           // 000000008F38: D1DD0057 04210774
	v_cvt_pk_u8_f32 v84, v120, 3, v9                           // 000000008F40: D1DD0054 04250778
	v_cvt_pk_u8_f32 v88, v124, 3, v10                          // 000000008F48: D1DD0058 0429077C
	v_cvt_pk_u8_f32 v85, v132, 3, v12                          // 000000008F50: D1DD0055 04310784
	v_cvt_pk_u8_f32 v89, v129, 3, v13                          // 000000008F58: D1DD0059 04350781
	v_cvt_pk_u8_f32 v4, v101, 3, v14                           // 000000008F60: D1DD0004 04390765
	v_cvt_pk_u8_f32 v8, v133, 3, v17                           // 000000008F68: D1DD0008 04450785
	v_cvt_pk_u8_f32 v5, v104, 3, v91                           // 000000008F70: D1DD0005 056D0768
	v_cvt_pk_u8_f32 v9, v105, 3, v94                           // 000000008F78: D1DD0009 05790769
	v_cvt_pk_u8_f32 v6, v108, 3, v95                           // 000000008F80: D1DD0006 057D076C
	v_cvt_pk_u8_f32 v10, v93, 3, v92                           // 000000008F88: D1DD000A 0571075D
	v_cvt_pk_u8_f32 v7, v112, 3, v98                           // 000000008F90: D1DD0007 05890770
	v_cvt_pk_u8_f32 v11, v97, 3, v90                           // 000000008F98: D1DD000B 05690761
	s_waitcnt vmcnt(0)                                         // 000000008FA0: BF8C0F70
	s_barrier                                                  // 000000008FA4: BF8A0000
	s_add_u32 s16, s79, s76                                    // 000000008FA8: 80104C4F
	s_and_b32 s76, s16, 3                                      // 000000008FAC: 864C8310
	s_cmp_lg_u32 s48, 0                                        // 000000008FB0: BF078030
	s_cselect_b64 s[16:17], -1, 0                              // 000000008FB4: 859080C1
	s_not_b32 s18, s52                                         // 000000008FB8: BE920434
	s_add_u32 s18, s4, s18                                     // 000000008FBC: 80121204
	s_cmp_eq_u32 s52, s18                                      // 000000008FC0: BF061234
	s_cselect_b64 s[18:19], -1, 0                              // 000000008FC4: 859280C1
	s_or_b64 s[16:17], s[16:17], s[18:19]                      // 000000008FC8: 87901210
	s_and_b64 s[18:19], s[16:17], exec                         // 000000008FCC: 86927E10
	s_cbranch_scc0 7                                           // 000000008FD0: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x74f0>
	s_add_u32 s2, s2, s14                                      // 000000008FD4: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000008FD8: BF093302
	s_cbranch_scc1 513                                         // 000000008FDC: BF850201 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7ce4>
	s_lshl_b32 s15, s2, 5                                      // 000000008FE0: 8E0F8502
	s_load_dwordx8 s[52:59], s[46:47], s15 offset:0x0          // 000000008FE4: C00E4D17 1E000000
	s_mov_b32 s23, 0                                           // 000000008FEC: BE970080
	s_waitcnt lgkmcnt(0)                                       // 000000008FF0: BF8CC07F
	s_add_u32 s60, s38, s56                                    // 000000008FF4: 803C3826
	s_addc_u32 s61, s39, s57                                   // 000000008FF8: 823D3927
	s_add_u32 s64, s40, s56                                    // 000000008FFC: 80403828
	s_addc_u32 s65, s41, s57                                   // 000000009000: 82413929
	s_not_b32 s15, s52                                         // 000000009004: BE8F0434
	s_add_u32 s15, s4, s15                                     // 000000009008: 800F0F04
	s_and_b64 s[16:17], s[16:17], exec                         // 00000000900C: 86907E10
	s_cselect_b32 s15, s15, s52                                // 000000009010: 850F340F
	s_lshl_b32 s16, s15, 5                                     // 000000009014: 8E10850F
	s_add_u32 s16, s16, 32                                     // 000000009018: 8010A010
	s_mul_i32 s16, s16, s5                                     // 00000000901C: 92100510
	s_addk_i32 s16, 0x60                                       // 000000009020: B7100060
	s_lshr_b32 s16, s16, 7                                     // 000000009024: 8F108710
	s_min_u32 s79, s75, s16                                    // 000000009028: 83CF104B
	s_mov_b32 s63, 0x110000                                    // 00000000902C: BEBF00FF 00110000
	s_and_b64 s[16:17], s[34:35], exec                         // 000000009034: 86907E22
	s_cbranch_scc0 72                                          // 000000009038: BF840048 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x765c>
	s_lshl_b32 s16, s76, 14                                    // 00000000903C: 8E108E4C
	s_or_b32 s22, s70, s16                                     // 000000009040: 87161046
	s_add_u32 m0, s22, 0                                       // 000000009044: 807C8016
	s_lshl_b32 s17, s8, 5                                      // 000000009048: 8E118508
	buffer_load_dwordx4 v180, s[60:63], 0 offen lds            // 00000000904C: E05D1000 800F00B4
	s_add_u32 m0, s22, 0x1000                                  // 000000009054: 807CFF16 00001000
	s_lshl_b32 s18, s8, 6                                      // 00000000905C: 8E128608
	buffer_load_dwordx4 v180, s[60:63], s17 offen lds          // 000000009060: E05D1000 110F00B4
	s_add_u32 m0, s22, 0x2000                                  // 000000009068: 807CFF16 00002000
	s_mul_i32 s19, s8, 0x60                                    // 000000009070: 9213FF08 00000060
	buffer_load_dwordx4 v180, s[60:63], s18 offen lds          // 000000009078: E05D1000 120F00B4
	s_add_u32 m0, s22, 0x3000                                  // 000000009080: 807CFF16 00003000
	s_mov_b32 s66, s62                                         // 000000009088: BEC2003E
	s_mov_b32 s67, s63                                         // 00000000908C: BEC3003F
	s_add_u32 s24, s71, s16                                    // 000000009090: 80181047
	buffer_load_dwordx4 v180, s[60:63], s19 offen lds          // 000000009094: E05D1000 130F00B4
	s_add_u32 m0, s24, 0                                       // 00000000909C: 807C8018
	s_lshl_b32 s20, s8, 2                                      // 0000000090A0: 8E148208
	buffer_load_dwordx4 v182, s[64:67], 0 offen lds            // 0000000090A4: E05D1000 801000B6
	s_add_u32 m0, s24, 0x1000                                  // 0000000090AC: 807CFF18 00001000
	s_mul_i32 s21, s8, 0x44                                    // 0000000090B4: 9215FF08 00000044
	buffer_load_dwordx4 v182, s[64:67], s18 offen lds          // 0000000090BC: E05D1000 121000B6
	s_add_u32 m0, s24, 0x2000                                  // 0000000090C4: 807CFF18 00002000
	s_nop 0                                                    // 0000000090CC: BF800000
	buffer_load_dwordx4 v182, s[64:67], s20 offen lds          // 0000000090D0: E05D1000 141000B6
	s_add_u32 m0, s24, 0x3000                                  // 0000000090D8: 807CFF18 00003000
	s_cmp_lt_u32 s79, 2                                        // 0000000090E0: BF0A824F
	buffer_load_dwordx4 v182, s[64:67], s21 offen lds          // 0000000090E4: E05D1000 151000B6
	s_cbranch_scc1 27                                          // 0000000090EC: BF85001B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x765c>
	s_addk_i32 s16, 0x4000                                     // 0000000090F0: B7104000
	s_and_b32 s16, s16, 0xc000                                 // 0000000090F4: 8610FF10 0000C000
	s_or_b32 s16, s70, s16                                     // 0000000090FC: 87101046
	s_add_u32 m0, s16, 0                                       // 000000009100: 807C8010
	s_mul_i32 s17, s8, 0xa0                                    // 000000009104: 9211FF08 000000A0
	buffer_load_dwordx4 v180, s[60:63], s72 offen lds          // 00000000910C: E05D1000 480F00B4
	s_add_u32 m0, s16, 0x1000                                  // 000000009114: 807CFF10 00001000
	s_mul_i32 s18, s8, 0xc0                                    // 00000000911C: 9212FF08 000000C0
	s_mul_i32 s19, s8, 0xe0                                    // 000000009124: 9213FF08 000000E0
	buffer_load_dwordx4 v180, s[60:63], s17 offen lds          // 00000000912C: E05D1000 110F00B4
	s_add_u32 m0, s16, 0x2000                                  // 000000009134: 807CFF10 00002000
	s_nop 0                                                    // 00000000913C: BF800000
	buffer_load_dwordx4 v180, s[60:63], s18 offen lds          // 000000009140: E05D1000 120F00B4
	s_add_u32 m0, s16, 0x3000                                  // 000000009148: 807CFF10 00003000
	s_nop 0                                                    // 000000009150: BF800000
	buffer_load_dwordx4 v180, s[60:63], s19 offen lds          // 000000009154: E05D1000 130F00B4
	s_add_u32 s16, s36, s54                                    // 00000000915C: 80103624
	s_addc_u32 s17, s37, s55                                   // 000000009160: 82113725
	s_add_u32 s20, s16, s74                                    // 000000009164: 80144A10
	s_addc_u32 s21, s17, 0                                     // 000000009168: 82158011
	s_add_u32 s16, s42, s58                                    // 00000000916C: 80103A2A
	s_addc_u32 s17, s43, s59                                   // 000000009170: 82113B2B
	s_add_u32 s16, s16, s77                                    // 000000009174: 80104D10
	s_addc_u32 s17, s17, 0                                     // 000000009178: 82118011
	s_add_u32 s18, s53, s78                                    // 00000000917C: 80124E35
	s_lshl_b32 s18, s18, 2                                     // 000000009180: 8E128212
	s_add_u32 s22, s44, s18                                    // 000000009184: 8016122C
	s_addc_u32 s24, s45, 0                                     // 000000009188: 8218802D
	s_mul_i32 s15, s15, s5                                     // 00000000918C: 920F050F
	s_and_b64 s[18:19], s[12:13], exec                         // 000000009190: 86927E0C
	s_cselect_b32 s19, 0, s24                                  // 000000009194: 85131880
	s_cselect_b32 s18, 0, s22                                  // 000000009198: 85121680
	s_add_u32 s15, s15, s6                                     // 00000000919C: 800F060F
	s_lshl_b32 s22, s15, 5                                     // 0000000091A0: 8E16850F
	v_or_b32_e32 v12, s22, v174                                // 0000000091A4: 28195C16
	s_bfe_u32 s15, s15, 0x190002                               // 0000000091A8: 928FFF0F 00190002
	v_mul_lo_u32 v12, v12, s7                                  // 0000000091B0: D285000C 00000F0C
	v_add_u32_e32 v12, v184, v12                               // 0000000091B8: 681819B8
	global_load_dwordx4 v[228:231], v12, s[20:21]              // 0000000091BC: DC5C8000 E414000C
	global_load_dwordx4 v[232:235], v12, s[20:21] offset:16    // 0000000091C4: DC5C8010 E814000C
	global_load_dwordx4 v[236:239], v12, s[20:21] offset:64    // 0000000091CC: DC5C8040 EC14000C
	global_load_dwordx4 v[240:243], v12, s[20:21] offset:80    // 0000000091D4: DC5C8050 F014000C
	s_mov_b32 s20, 1                                           // 0000000091DC: BE940081
	s_branch 388                                               // 0000000091E0: BF820184 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7cf4>
	s_mov_b32 s23, 1                                           // 0000000091E4: BE970081
	s_waitcnt lgkmcnt(0)                                       // 0000000091E8: BF8CC07F
	s_add_u32 s60, s38, s56                                    // 0000000091EC: 803C3826
	s_addc_u32 s61, s39, s57                                   // 0000000091F0: 823D3927
	s_add_u32 s64, s40, s56                                    // 0000000091F4: 80403828
	s_addc_u32 s65, s41, s57                                   // 0000000091F8: 82413929
	s_not_b32 s15, s52                                         // 0000000091FC: BE8F0434
	s_add_u32 s15, s4, s15                                     // 000000009200: 800F0F04
	s_and_b64 s[16:17], s[16:17], exec                         // 000000009204: 86907E10
	s_cselect_b32 s15, s15, s52                                // 000000009208: 850F340F
	s_lshl_b32 s16, s15, 5                                     // 00000000920C: 8E10850F
	s_add_u32 s16, s16, 32                                     // 000000009210: 8010A010
	s_mul_i32 s16, s16, s5                                     // 000000009214: 92100510
	s_addk_i32 s16, 0x60                                       // 000000009218: B7100060
	s_lshr_b32 s16, s16, 7                                     // 00000000921C: 8F108710
	s_min_u32 s79, s75, s16                                    // 000000009220: 83CF104B
	s_mov_b32 s63, 0x110000                                    // 000000009224: BEBF00FF 00110000
	s_and_b64 s[16:17], s[34:35], exec                         // 00000000922C: 86907E22
	s_cbranch_scc0 72                                          // 000000009230: BF840048 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7854>
	s_lshl_b32 s16, s76, 14                                    // 000000009234: 8E108E4C
	s_or_b32 s22, s70, s16                                     // 000000009238: 87161046
	s_add_u32 m0, s22, 0                                       // 00000000923C: 807C8016
	s_lshl_b32 s17, s8, 5                                      // 000000009240: 8E118508
	buffer_load_dwordx4 v180, s[60:63], 0 offen lds            // 000000009244: E05D1000 800F00B4
	s_add_u32 m0, s22, 0x1000                                  // 00000000924C: 807CFF16 00001000
	s_lshl_b32 s18, s8, 6                                      // 000000009254: 8E128608
	buffer_load_dwordx4 v180, s[60:63], s17 offen lds          // 000000009258: E05D1000 110F00B4
	s_add_u32 m0, s22, 0x2000                                  // 000000009260: 807CFF16 00002000
	s_mul_i32 s19, s8, 0x60                                    // 000000009268: 9213FF08 00000060
	buffer_load_dwordx4 v180, s[60:63], s18 offen lds          // 000000009270: E05D1000 120F00B4
	s_add_u32 m0, s22, 0x3000                                  // 000000009278: 807CFF16 00003000
	s_mov_b32 s66, s62                                         // 000000009280: BEC2003E
	s_mov_b32 s67, s63                                         // 000000009284: BEC3003F
	s_add_u32 s24, s71, s16                                    // 000000009288: 80181047
	buffer_load_dwordx4 v180, s[60:63], s19 offen lds          // 00000000928C: E05D1000 130F00B4
	s_add_u32 m0, s24, 0                                       // 000000009294: 807C8018
	s_lshl_b32 s20, s8, 2                                      // 000000009298: 8E148208
	buffer_load_dwordx4 v182, s[64:67], 0 offen lds            // 00000000929C: E05D1000 801000B6
	s_add_u32 m0, s24, 0x1000                                  // 0000000092A4: 807CFF18 00001000
	s_mul_i32 s21, s8, 0x44                                    // 0000000092AC: 9215FF08 00000044
	buffer_load_dwordx4 v182, s[64:67], s18 offen lds          // 0000000092B4: E05D1000 121000B6
	s_add_u32 m0, s24, 0x2000                                  // 0000000092BC: 807CFF18 00002000
	s_nop 0                                                    // 0000000092C4: BF800000
	buffer_load_dwordx4 v182, s[64:67], s20 offen lds          // 0000000092C8: E05D1000 141000B6
	s_add_u32 m0, s24, 0x3000                                  // 0000000092D0: 807CFF18 00003000
	s_cmp_lt_u32 s79, 2                                        // 0000000092D8: BF0A824F
	buffer_load_dwordx4 v182, s[64:67], s21 offen lds          // 0000000092DC: E05D1000 151000B6
	s_cbranch_scc1 27                                          // 0000000092E4: BF85001B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7854>
	s_addk_i32 s16, 0x4000                                     // 0000000092E8: B7104000
	s_and_b32 s16, s16, 0xc000                                 // 0000000092EC: 8610FF10 0000C000
	s_or_b32 s16, s70, s16                                     // 0000000092F4: 87101046
	s_add_u32 m0, s16, 0                                       // 0000000092F8: 807C8010
	s_mul_i32 s17, s8, 0xa0                                    // 0000000092FC: 9211FF08 000000A0
	buffer_load_dwordx4 v180, s[60:63], s72 offen lds          // 000000009304: E05D1000 480F00B4
	s_add_u32 m0, s16, 0x1000                                  // 00000000930C: 807CFF10 00001000
	s_mul_i32 s18, s8, 0xc0                                    // 000000009314: 9212FF08 000000C0
	s_mul_i32 s19, s8, 0xe0                                    // 00000000931C: 9213FF08 000000E0
	buffer_load_dwordx4 v180, s[60:63], s17 offen lds          // 000000009324: E05D1000 110F00B4
	s_add_u32 m0, s16, 0x2000                                  // 00000000932C: 807CFF10 00002000
	s_nop 0                                                    // 000000009334: BF800000
	buffer_load_dwordx4 v180, s[60:63], s18 offen lds          // 000000009338: E05D1000 120F00B4
	s_add_u32 m0, s16, 0x3000                                  // 000000009340: 807CFF10 00003000
	s_nop 0                                                    // 000000009348: BF800000
	buffer_load_dwordx4 v180, s[60:63], s19 offen lds          // 00000000934C: E05D1000 130F00B4
	s_add_u32 s16, s36, s54                                    // 000000009354: 80103624
	s_addc_u32 s17, s37, s55                                   // 000000009358: 82113725
	s_add_u32 s20, s16, s74                                    // 00000000935C: 80144A10
	s_addc_u32 s21, s17, 0                                     // 000000009360: 82158011
	s_add_u32 s16, s42, s58                                    // 000000009364: 80103A2A
	s_addc_u32 s17, s43, s59                                   // 000000009368: 82113B2B
	s_add_u32 s16, s16, s77                                    // 00000000936C: 80104D10
	s_addc_u32 s17, s17, 0                                     // 000000009370: 82118011
	s_add_u32 s18, s53, s78                                    // 000000009374: 80124E35
	s_lshl_b32 s18, s18, 2                                     // 000000009378: 8E128212
	s_add_u32 s22, s44, s18                                    // 00000000937C: 8016122C
	s_addc_u32 s24, s45, 0                                     // 000000009380: 8218802D
	s_mul_i32 s15, s15, s5                                     // 000000009384: 920F050F
	s_and_b64 s[18:19], s[12:13], exec                         // 000000009388: 86927E0C
	s_cselect_b32 s19, 0, s24                                  // 00000000938C: 85131880
	s_cselect_b32 s18, 0, s22                                  // 000000009390: 85121680
	s_add_u32 s15, s15, s6                                     // 000000009394: 800F060F
	s_lshl_b32 s22, s15, 5                                     // 000000009398: 8E16850F
	v_or_b32_e32 v3, s22, v174                                 // 00000000939C: 28075C16
	s_bfe_u32 s15, s15, 0x190002                               // 0000000093A0: 928FFF0F 00190002
	v_mul_lo_u32 v3, v3, s7                                    // 0000000093A8: D2850003 00000F03
	v_add_u32_e32 v3, v184, v3                                 // 0000000093B0: 680607B8
	global_load_dwordx4 v[228:231], v3, s[20:21]               // 0000000093B4: DC5C8000 E4140003
	global_load_dwordx4 v[232:235], v3, s[20:21] offset:16     // 0000000093BC: DC5C8010 E8140003
	global_load_dwordx4 v[236:239], v3, s[20:21] offset:64     // 0000000093C4: DC5C8040 EC140003
	global_load_dwordx4 v[240:243], v3, s[20:21] offset:80     // 0000000093CC: DC5C8050 F0140003
	s_mov_b32 s20, 1                                           // 0000000093D4: BE940081
	s_branch 250                                               // 0000000093D8: BF8200FA <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7cc4>
	s_mov_b32 s23, 1                                           // 0000000093DC: BE970081
	s_waitcnt lgkmcnt(0)                                       // 0000000093E0: BF8CC07F
	s_add_u32 s60, s38, s56                                    // 0000000093E4: 803C3826
	s_addc_u32 s61, s39, s57                                   // 0000000093E8: 823D3927
	s_add_u32 s64, s40, s56                                    // 0000000093EC: 80403828
	s_addc_u32 s65, s41, s57                                   // 0000000093F0: 82413929
	s_not_b32 s15, s52                                         // 0000000093F4: BE8F0434
	s_add_u32 s15, s4, s15                                     // 0000000093F8: 800F0F04
	s_and_b64 s[16:17], s[16:17], exec                         // 0000000093FC: 86907E10
	s_cselect_b32 s15, s15, s52                                // 000000009400: 850F340F
	s_lshl_b32 s16, s15, 5                                     // 000000009404: 8E10850F
	s_add_u32 s16, s16, 32                                     // 000000009408: 8010A010
	s_mul_i32 s16, s16, s5                                     // 00000000940C: 92100510
	s_addk_i32 s16, 0x60                                       // 000000009410: B7100060
	s_lshr_b32 s16, s16, 7                                     // 000000009414: 8F108710
	s_min_u32 s79, s75, s16                                    // 000000009418: 83CF104B
	s_mov_b32 s63, 0x110000                                    // 00000000941C: BEBF00FF 00110000
	s_and_b64 s[16:17], s[34:35], exec                         // 000000009424: 86907E22
	s_cbranch_scc0 72                                          // 000000009428: BF840048 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7a4c>
	s_lshl_b32 s16, s76, 14                                    // 00000000942C: 8E108E4C
	s_or_b32 s22, s70, s16                                     // 000000009430: 87161046
	s_add_u32 m0, s22, 0                                       // 000000009434: 807C8016
	s_lshl_b32 s17, s8, 5                                      // 000000009438: 8E118508
	buffer_load_dwordx4 v180, s[60:63], 0 offen lds            // 00000000943C: E05D1000 800F00B4
	s_add_u32 m0, s22, 0x1000                                  // 000000009444: 807CFF16 00001000
	s_lshl_b32 s18, s8, 6                                      // 00000000944C: 8E128608
	buffer_load_dwordx4 v180, s[60:63], s17 offen lds          // 000000009450: E05D1000 110F00B4
	s_add_u32 m0, s22, 0x2000                                  // 000000009458: 807CFF16 00002000
	s_mul_i32 s19, s8, 0x60                                    // 000000009460: 9213FF08 00000060
	buffer_load_dwordx4 v180, s[60:63], s18 offen lds          // 000000009468: E05D1000 120F00B4
	s_add_u32 m0, s22, 0x3000                                  // 000000009470: 807CFF16 00003000
	s_mov_b32 s66, s62                                         // 000000009478: BEC2003E
	s_mov_b32 s67, s63                                         // 00000000947C: BEC3003F
	s_add_u32 s24, s71, s16                                    // 000000009480: 80181047
	buffer_load_dwordx4 v180, s[60:63], s19 offen lds          // 000000009484: E05D1000 130F00B4
	s_add_u32 m0, s24, 0                                       // 00000000948C: 807C8018
	s_lshl_b32 s20, s8, 2                                      // 000000009490: 8E148208
	buffer_load_dwordx4 v182, s[64:67], 0 offen lds            // 000000009494: E05D1000 801000B6
	s_add_u32 m0, s24, 0x1000                                  // 00000000949C: 807CFF18 00001000
	s_mul_i32 s21, s8, 0x44                                    // 0000000094A4: 9215FF08 00000044
	buffer_load_dwordx4 v182, s[64:67], s18 offen lds          // 0000000094AC: E05D1000 121000B6
	s_add_u32 m0, s24, 0x2000                                  // 0000000094B4: 807CFF18 00002000
	s_nop 0                                                    // 0000000094BC: BF800000
	buffer_load_dwordx4 v182, s[64:67], s20 offen lds          // 0000000094C0: E05D1000 141000B6
	s_add_u32 m0, s24, 0x3000                                  // 0000000094C8: 807CFF18 00003000
	s_cmp_lt_u32 s79, 2                                        // 0000000094D0: BF0A824F
	buffer_load_dwordx4 v182, s[64:67], s21 offen lds          // 0000000094D4: E05D1000 151000B6
	s_cbranch_scc1 27                                          // 0000000094DC: BF85001B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7a4c>
	s_addk_i32 s16, 0x4000                                     // 0000000094E0: B7104000
	s_and_b32 s16, s16, 0xc000                                 // 0000000094E4: 8610FF10 0000C000
	s_or_b32 s16, s70, s16                                     // 0000000094EC: 87101046
	s_add_u32 m0, s16, 0                                       // 0000000094F0: 807C8010
	s_mul_i32 s17, s8, 0xa0                                    // 0000000094F4: 9211FF08 000000A0
	buffer_load_dwordx4 v180, s[60:63], s72 offen lds          // 0000000094FC: E05D1000 480F00B4
	s_add_u32 m0, s16, 0x1000                                  // 000000009504: 807CFF10 00001000
	s_mul_i32 s18, s8, 0xc0                                    // 00000000950C: 9212FF08 000000C0
	s_mul_i32 s19, s8, 0xe0                                    // 000000009514: 9213FF08 000000E0
	buffer_load_dwordx4 v180, s[60:63], s17 offen lds          // 00000000951C: E05D1000 110F00B4
	s_add_u32 m0, s16, 0x2000                                  // 000000009524: 807CFF10 00002000
	s_nop 0                                                    // 00000000952C: BF800000
	buffer_load_dwordx4 v180, s[60:63], s18 offen lds          // 000000009530: E05D1000 120F00B4
	s_add_u32 m0, s16, 0x3000                                  // 000000009538: 807CFF10 00003000
	s_nop 0                                                    // 000000009540: BF800000
	buffer_load_dwordx4 v180, s[60:63], s19 offen lds          // 000000009544: E05D1000 130F00B4
	s_add_u32 s16, s36, s54                                    // 00000000954C: 80103624
	s_addc_u32 s17, s37, s55                                   // 000000009550: 82113725
	s_add_u32 s20, s16, s74                                    // 000000009554: 80144A10
	s_addc_u32 s21, s17, 0                                     // 000000009558: 82158011
	s_add_u32 s16, s42, s58                                    // 00000000955C: 80103A2A
	s_addc_u32 s17, s43, s59                                   // 000000009560: 82113B2B
	s_add_u32 s16, s16, s77                                    // 000000009564: 80104D10
	s_addc_u32 s17, s17, 0                                     // 000000009568: 82118011
	s_add_u32 s18, s53, s78                                    // 00000000956C: 80124E35
	s_lshl_b32 s18, s18, 2                                     // 000000009570: 8E128212
	s_add_u32 s22, s44, s18                                    // 000000009574: 8016122C
	s_addc_u32 s24, s45, 0                                     // 000000009578: 8218802D
	s_mul_i32 s15, s15, s5                                     // 00000000957C: 920F050F
	s_and_b64 s[18:19], s[12:13], exec                         // 000000009580: 86927E0C
	s_cselect_b32 s19, 0, s24                                  // 000000009584: 85131880
	s_cselect_b32 s18, 0, s22                                  // 000000009588: 85121680
	s_add_u32 s15, s15, s6                                     // 00000000958C: 800F060F
	s_lshl_b32 s22, s15, 5                                     // 000000009590: 8E16850F
	v_or_b32_e32 v3, s22, v174                                 // 000000009594: 28075C16
	s_bfe_u32 s15, s15, 0x190002                               // 000000009598: 928FFF0F 00190002
	v_mul_lo_u32 v3, v3, s7                                    // 0000000095A0: D2850003 00000F03
	v_add_u32_e32 v3, v184, v3                                 // 0000000095A8: 680607B8
	global_load_dwordx4 v[228:231], v3, s[20:21]               // 0000000095AC: DC5C8000 E4140003
	global_load_dwordx4 v[232:235], v3, s[20:21] offset:16     // 0000000095B4: DC5C8010 E8140003
	global_load_dwordx4 v[236:239], v3, s[20:21] offset:64     // 0000000095BC: DC5C8040 EC140003
	global_load_dwordx4 v[240:243], v3, s[20:21] offset:80     // 0000000095C4: DC5C8050 F0140003
	s_mov_b32 s20, 1                                           // 0000000095CC: BE940081
	s_branch 246                                               // 0000000095D0: BF8200F6 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7eac>
	s_mov_b64 s[16:17], s[0:1]                                 // 0000000095D4: BE900100
	s_mov_b64 s[18:19], s[10:11]                               // 0000000095D8: BE92010A
	s_mov_b32 s22, s3                                          // 0000000095DC: BE960003
	s_mov_b32 s20, 0                                           // 0000000095E0: BE940080
	s_branch 119                                               // 0000000095E4: BF820077 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7cc4>
	s_mov_b64 s[16:17], s[0:1]                                 // 0000000095E8: BE900100
	s_mov_b64 s[18:19], s[10:11]                               // 0000000095EC: BE92010A
	s_mov_b32 s22, s3                                          // 0000000095F0: BE960003
	s_mov_b32 s20, 0                                           // 0000000095F4: BE940080
	s_branch 236                                               // 0000000095F8: BF8200EC <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7eac>
	s_mov_b64 s[16:17], s[0:1]                                 // 0000000095FC: BE900100
	s_mov_b64 s[18:19], s[10:11]                               // 000000009600: BE92010A
	s_mov_b32 s23, 0                                           // 000000009604: BE970080
	s_mov_b32 s22, s3                                          // 000000009608: BE960003
	s_setprio 1                                                // 00000000960C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[82:89], 0// 000000009610: D3AD000C 0202A592
	s_nop 11                                                   // 000000009618: BF80000B
	v_mul_f32_e32 v3, v3, v12                                  // 00000000961C: 0A061903
	v_add_f32_e32 v3, v190, v3                                 // 000000009620: 020607BE
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[4:11], 0// 000000009624: D3AD000C 02020992
	ds_read_b64_tr_b8 v[90:91], v16                            // 00000000962C: D9C40000 5A000010
	ds_read_b64_tr_b8 v[92:93], v16 offset:1024                // 000000009634: D9C40400 5C000010
	ds_read_b64_tr_b8 v[94:95], v16 offset:2048                // 00000000963C: D9C40800 5E000010
	ds_read_b64_tr_b8 v[96:97], v16 offset:3072                // 000000009644: D9C40C00 60000010
	ds_read_b64_tr_b8 v[98:99], v16 offset:256                 // 00000000964C: D9C40100 62000010
	ds_read_b64_tr_b8 v[100:101], v16 offset:1280              // 000000009654: D9C40500 64000010
	ds_read_b64_tr_b8 v[102:103], v16 offset:2304              // 00000000965C: D9C40900 66000010
	ds_read_b64_tr_b8 v[104:105], v16 offset:3328              // 000000009664: D9C40D00 68000010
	ds_read_b64_tr_b8 v[106:107], v16 offset:512               // 00000000966C: D9C40200 6A000010
	ds_read_b64_tr_b8 v[108:109], v16 offset:1536              // 000000009674: D9C40600 6C000010
	ds_read_b64_tr_b8 v[110:111], v16 offset:2560              // 00000000967C: D9C40A00 6E000010
	ds_read_b64_tr_b8 v[112:113], v16 offset:3584              // 000000009684: D9C40E00 70000010
	v_mul_f32_e32 v12, v194, v12                               // 00000000968C: 0A1819C2
	v_add_f32_e32 v190, v3, v12                                // 000000009690: 037C1903
	s_waitcnt lgkmcnt(4)                                       // 000000009694: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[90:97], v[82:89], v[66:81], v177, v191 op_sel_hi:[0,0,0]// 000000009698: D3AC0000 00037FB1 D3AE0842 050AA55A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[98:105], v[82:89], v[50:65], v177, v191 op_sel_hi:[0,0,0]// 0000000096A8: D3AC0000 00037FB1 D3AE0832 04CAA562
	ds_read_b64_tr_b8 v[90:91], v16 offset:768                 // 0000000096B8: D9C40300 5A000010
	ds_read_b64_tr_b8 v[92:93], v16 offset:1792                // 0000000096C0: D9C40700 5C000010
	ds_read_b64_tr_b8 v[94:95], v16 offset:2816                // 0000000096C8: D9C40B00 5E000010
	ds_read_b64_tr_b8 v[96:97], v16 offset:3840                // 0000000096D0: D9C40F00 60000010
	ds_read_b64_tr_b8 v[98:99], v16 offset:4096                // 0000000096D8: D9C41000 62000010
	ds_read_b64_tr_b8 v[100:101], v16 offset:5120              // 0000000096E0: D9C41400 64000010
	ds_read_b64_tr_b8 v[102:103], v16 offset:6144              // 0000000096E8: D9C41800 66000010
	ds_read_b64_tr_b8 v[104:105], v16 offset:7168              // 0000000096F0: D9C41C00 68000010
	s_waitcnt lgkmcnt(4)                                       // 0000000096F8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[106:113], v[82:89], v[34:49], v177, v191 op_sel_hi:[0,0,0]// 0000000096FC: D3AC0000 00037FB1 D3AE0822 048AA56A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[90:97], v[82:89], v[18:33], v177, v191 op_sel_hi:[0,0,0]// 00000000970C: D3AC0000 00037FB1 D3AE0812 044AA55A
	ds_read_b64_tr_b8 v[106:107], v16 offset:4352              // 00000000971C: D9C41100 6A000010
	ds_read_b64_tr_b8 v[108:109], v16 offset:5376              // 000000009724: D9C41500 6C000010
	ds_read_b64_tr_b8 v[110:111], v16 offset:6400              // 00000000972C: D9C41900 6E000010
	ds_read_b64_tr_b8 v[112:113], v16 offset:7424              // 000000009734: D9C41D00 70000010
	ds_read_b64_tr_b8 v[82:83], v16 offset:4608                // 00000000973C: D9C41200 52000010
	ds_read_b64_tr_b8 v[84:85], v16 offset:5632                // 000000009744: D9C41600 54000010
	ds_read_b64_tr_b8 v[86:87], v16 offset:6656                // 00000000974C: D9C41A00 56000010
	ds_read_b64_tr_b8 v[88:89], v16 offset:7680                // 000000009754: D9C41E00 58000010
	s_waitcnt lgkmcnt(4)                                       // 00000000975C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[98:105], v[4:11], v[66:81], v177, v193 op_sel_hi:[0,0,0]// 000000009760: D3AC0000 000383B1 D3AE0842 050A0962
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[106:113], v[4:11], v[50:65], v177, v193 op_sel_hi:[0,0,0]// 000000009770: D3AC0000 000383B1 D3AE0832 04CA096A
	ds_read_b64_tr_b8 v[90:91], v16 offset:4864                // 000000009780: D9C41300 5A000010
	ds_read_b64_tr_b8 v[92:93], v16 offset:5888                // 000000009788: D9C41700 5C000010
	ds_read_b64_tr_b8 v[94:95], v16 offset:6912                // 000000009790: D9C41B00 5E000010
	ds_read_b64_tr_b8 v[96:97], v16 offset:7936                // 000000009798: D9C41F00 60000010
	s_waitcnt lgkmcnt(0)                                       // 0000000097A0: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[82:89], v[4:11], v[34:49], v177, v193 op_sel_hi:[0,0,0]// 0000000097A4: D3AC0000 000383B1 D3AE0822 048A0952
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[90:97], v[4:11], v[18:33], v177, v193 op_sel_hi:[0,0,0]// 0000000097B4: D3AC0000 000383B1 D3AE0812 044A095A
	s_waitcnt vmcnt(4)                                         // 0000000097C4: BF8C0F74
	s_barrier                                                  // 0000000097C8: BF8A0000
	s_mov_b32 s48, s23                                         // 0000000097CC: BEB00017
	s_cmp_eq_u32 s20, 0                                        // 0000000097D0: BF068014
	v_and_b32_e32 v82, 15, v0                                  // 0000000097D4: 26A4008F
	v_lshrrev_b32_e32 v83, 4, v185                             // 0000000097D8: 20A77284
	s_cbranch_scc0 122                                         // 0000000097DC: BF84007A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7ec8>
	s_branch 415                                               // 0000000097E0: BF82019F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8360>
	s_mov_b64 s[16:17], s[0:1]                                 // 0000000097E4: BE900100
	s_mov_b64 s[18:19], s[10:11]                               // 0000000097E8: BE92010A
	s_mov_b32 s23, 0                                           // 0000000097EC: BE970080
	s_mov_b32 s22, s3                                          // 0000000097F0: BE960003
	s_setprio 1                                                // 0000000097F4: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[82:89], 0// 0000000097F8: D3AD000C 0202A592
	s_nop 11                                                   // 000000009800: BF80000B
	v_mul_f32_e32 v3, v3, v12                                  // 000000009804: 0A061903
	v_add_f32_e32 v3, v190, v3                                 // 000000009808: 020607BE
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[4:11], 0// 00000000980C: D3AD000C 02020992
	ds_read_b64_tr_b8 v[90:91], v16                            // 000000009814: D9C40000 5A000010
	ds_read_b64_tr_b8 v[92:93], v16 offset:1024                // 00000000981C: D9C40400 5C000010
	ds_read_b64_tr_b8 v[94:95], v16 offset:2048                // 000000009824: D9C40800 5E000010
	ds_read_b64_tr_b8 v[96:97], v16 offset:3072                // 00000000982C: D9C40C00 60000010
	ds_read_b64_tr_b8 v[98:99], v16 offset:256                 // 000000009834: D9C40100 62000010
	ds_read_b64_tr_b8 v[100:101], v16 offset:1280              // 00000000983C: D9C40500 64000010
	ds_read_b64_tr_b8 v[102:103], v16 offset:2304              // 000000009844: D9C40900 66000010
	ds_read_b64_tr_b8 v[104:105], v16 offset:3328              // 00000000984C: D9C40D00 68000010
	ds_read_b64_tr_b8 v[106:107], v16 offset:512               // 000000009854: D9C40200 6A000010
	ds_read_b64_tr_b8 v[108:109], v16 offset:1536              // 00000000985C: D9C40600 6C000010
	ds_read_b64_tr_b8 v[110:111], v16 offset:2560              // 000000009864: D9C40A00 6E000010
	ds_read_b64_tr_b8 v[112:113], v16 offset:3584              // 00000000986C: D9C40E00 70000010
	v_mul_f32_e32 v12, v194, v12                               // 000000009874: 0A1819C2
	v_add_f32_e32 v190, v3, v12                                // 000000009878: 037C1903
	s_waitcnt lgkmcnt(4)                                       // 00000000987C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[90:97], v[82:89], v[66:81], v177, v191 op_sel_hi:[0,0,0]// 000000009880: D3AC0000 00037FB1 D3AE0842 050AA55A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[98:105], v[82:89], v[50:65], v177, v191 op_sel_hi:[0,0,0]// 000000009890: D3AC0000 00037FB1 D3AE0832 04CAA562
	ds_read_b64_tr_b8 v[90:91], v16 offset:768                 // 0000000098A0: D9C40300 5A000010
	ds_read_b64_tr_b8 v[92:93], v16 offset:1792                // 0000000098A8: D9C40700 5C000010
	ds_read_b64_tr_b8 v[94:95], v16 offset:2816                // 0000000098B0: D9C40B00 5E000010
	ds_read_b64_tr_b8 v[96:97], v16 offset:3840                // 0000000098B8: D9C40F00 60000010
	ds_read_b64_tr_b8 v[98:99], v16 offset:4096                // 0000000098C0: D9C41000 62000010
	ds_read_b64_tr_b8 v[100:101], v16 offset:5120              // 0000000098C8: D9C41400 64000010
	ds_read_b64_tr_b8 v[102:103], v16 offset:6144              // 0000000098D0: D9C41800 66000010
	ds_read_b64_tr_b8 v[104:105], v16 offset:7168              // 0000000098D8: D9C41C00 68000010
	s_waitcnt lgkmcnt(4)                                       // 0000000098E0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[106:113], v[82:89], v[34:49], v177, v191 op_sel_hi:[0,0,0]// 0000000098E4: D3AC0000 00037FB1 D3AE0822 048AA56A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[90:97], v[82:89], v[18:33], v177, v191 op_sel_hi:[0,0,0]// 0000000098F4: D3AC0000 00037FB1 D3AE0812 044AA55A
	ds_read_b64_tr_b8 v[106:107], v16 offset:4352              // 000000009904: D9C41100 6A000010
	ds_read_b64_tr_b8 v[108:109], v16 offset:5376              // 00000000990C: D9C41500 6C000010
	ds_read_b64_tr_b8 v[110:111], v16 offset:6400              // 000000009914: D9C41900 6E000010
	ds_read_b64_tr_b8 v[112:113], v16 offset:7424              // 00000000991C: D9C41D00 70000010
	ds_read_b64_tr_b8 v[82:83], v16 offset:4608                // 000000009924: D9C41200 52000010
	ds_read_b64_tr_b8 v[84:85], v16 offset:5632                // 00000000992C: D9C41600 54000010
	ds_read_b64_tr_b8 v[86:87], v16 offset:6656                // 000000009934: D9C41A00 56000010
	ds_read_b64_tr_b8 v[88:89], v16 offset:7680                // 00000000993C: D9C41E00 58000010
	s_waitcnt lgkmcnt(4)                                       // 000000009944: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[98:105], v[4:11], v[66:81], v177, v193 op_sel_hi:[0,0,0]// 000000009948: D3AC0000 000383B1 D3AE0842 050A0962
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[106:113], v[4:11], v[50:65], v177, v193 op_sel_hi:[0,0,0]// 000000009958: D3AC0000 000383B1 D3AE0832 04CA096A
	ds_read_b64_tr_b8 v[90:91], v16 offset:4864                // 000000009968: D9C41300 5A000010
	ds_read_b64_tr_b8 v[92:93], v16 offset:5888                // 000000009970: D9C41700 5C000010
	ds_read_b64_tr_b8 v[94:95], v16 offset:6912                // 000000009978: D9C41B00 5E000010
	ds_read_b64_tr_b8 v[96:97], v16 offset:7936                // 000000009980: D9C41F00 60000010
	s_waitcnt lgkmcnt(0)                                       // 000000009988: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[82:89], v[4:11], v[34:49], v177, v193 op_sel_hi:[0,0,0]// 00000000998C: D3AC0000 000383B1 D3AE0822 048A0952
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[90:97], v[4:11], v[18:33], v177, v193 op_sel_hi:[0,0,0]// 00000000999C: D3AC0000 000383B1 D3AE0812 044A095A
	s_waitcnt vmcnt(4)                                         // 0000000099AC: BF8C0F74
	s_barrier                                                  // 0000000099B0: BF8A0000
	s_mov_b32 s48, s23                                         // 0000000099B4: BEB00017
	s_cmp_eq_u32 s20, 0                                        // 0000000099B8: BF068014
	v_and_b32_e32 v82, 15, v0                                  // 0000000099BC: 26A4008F
	v_lshrrev_b32_e32 v83, 4, v185                             // 0000000099C0: 20A77284
	s_cbranch_scc1 294                                         // 0000000099C4: BF850126 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8360>
	s_nop 15                                                   // 0000000099C8: BF80000F
	s_nop 3                                                    // 0000000099CC: BF800003
	v_rcp_f32_e32 v3, v190                                     // 0000000099D0: 7E0645BE
	v_log_f32_e32 v84, v190                                    // 0000000099D4: 7EA843BE
	s_nop 1                                                    // 0000000099D8: BF800001
	v_mul_f32_e32 v3, v186, v3                                 // 0000000099DC: 0A0607BA
	v_mul_f32_e32 v4, v66, v3                                  // 0000000099E0: 0A080742
	v_mul_f32_e32 v5, v67, v3                                  // 0000000099E4: 0A0A0743
	v_mul_f32_e32 v6, v68, v3                                  // 0000000099E8: 0A0C0744
	v_mul_f32_e32 v7, v69, v3                                  // 0000000099EC: 0A0E0745
	v_mul_f32_e32 v9, v70, v3                                  // 0000000099F0: 0A120746
	v_mul_f32_e32 v10, v71, v3                                 // 0000000099F4: 0A140747
	v_mul_f32_e32 v11, v72, v3                                 // 0000000099F8: 0A160748
	v_mul_f32_e32 v12, v73, v3                                 // 0000000099FC: 0A180749
	v_mul_f32_e32 v13, v74, v3                                 // 000000009A00: 0A1A074A
	v_mul_f32_e32 v14, v75, v3                                 // 000000009A04: 0A1C074B
	v_mul_f32_e32 v15, v76, v3                                 // 000000009A08: 0A1E074C
	v_mul_f32_e32 v16, v77, v3                                 // 000000009A0C: 0A20074D
	v_mul_f32_e32 v17, v78, v3                                 // 000000009A10: 0A22074E
	v_mul_f32_e32 v66, v79, v3                                 // 000000009A14: 0A84074F
	v_mul_f32_e32 v67, v80, v3                                 // 000000009A18: 0A860750
	v_mul_f32_e32 v68, v81, v3                                 // 000000009A1C: 0A880751
	v_mul_f32_e32 v50, v50, v3                                 // 000000009A20: 0A640732
	v_mul_f32_e32 v51, v51, v3                                 // 000000009A24: 0A660733
	v_mul_f32_e32 v52, v52, v3                                 // 000000009A28: 0A680734
	v_mul_f32_e32 v53, v53, v3                                 // 000000009A2C: 0A6A0735
	v_mul_f32_e32 v54, v54, v3                                 // 000000009A30: 0A6C0736
	v_mul_f32_e32 v55, v55, v3                                 // 000000009A34: 0A6E0737
	v_mul_f32_e32 v56, v56, v3                                 // 000000009A38: 0A700738
	v_mul_f32_e32 v57, v57, v3                                 // 000000009A3C: 0A720739
	v_mul_f32_e32 v58, v58, v3                                 // 000000009A40: 0A74073A
	v_mul_f32_e32 v59, v59, v3                                 // 000000009A44: 0A76073B
	v_mul_f32_e32 v60, v60, v3                                 // 000000009A48: 0A78073C
	v_mul_f32_e32 v61, v61, v3                                 // 000000009A4C: 0A7A073D
	v_mul_f32_e32 v62, v62, v3                                 // 000000009A50: 0A7C073E
	v_mul_f32_e32 v63, v63, v3                                 // 000000009A54: 0A7E073F
	v_mul_f32_e32 v64, v64, v3                                 // 000000009A58: 0A800740
	v_mul_f32_e32 v65, v65, v3                                 // 000000009A5C: 0A820741
	v_mul_f32_e32 v34, v34, v3                                 // 000000009A60: 0A440722
	v_mul_f32_e32 v35, v35, v3                                 // 000000009A64: 0A460723
	v_mul_f32_e32 v36, v36, v3                                 // 000000009A68: 0A480724
	v_mul_f32_e32 v37, v37, v3                                 // 000000009A6C: 0A4A0725
	v_mul_f32_e32 v38, v38, v3                                 // 000000009A70: 0A4C0726
	v_mul_f32_e32 v39, v39, v3                                 // 000000009A74: 0A4E0727
	v_mul_f32_e32 v40, v40, v3                                 // 000000009A78: 0A500728
	v_mul_f32_e32 v41, v41, v3                                 // 000000009A7C: 0A520729
	v_mul_f32_e32 v42, v42, v3                                 // 000000009A80: 0A54072A
	v_mul_f32_e32 v43, v43, v3                                 // 000000009A84: 0A56072B
	v_mul_f32_e32 v44, v44, v3                                 // 000000009A88: 0A58072C
	v_mul_f32_e32 v45, v45, v3                                 // 000000009A8C: 0A5A072D
	v_mul_f32_e32 v46, v46, v3                                 // 000000009A90: 0A5C072E
	v_mul_f32_e32 v47, v47, v3                                 // 000000009A94: 0A5E072F
	v_mul_f32_e32 v48, v48, v3                                 // 000000009A98: 0A600730
	v_mul_f32_e32 v49, v49, v3                                 // 000000009A9C: 0A620731
	v_mul_f32_e32 v69, v18, v3                                 // 000000009AA0: 0A8A0712
	v_mul_f32_e32 v70, v19, v3                                 // 000000009AA4: 0A8C0713
	v_mul_f32_e32 v71, v20, v3                                 // 000000009AA8: 0A8E0714
	v_mul_f32_e32 v72, v21, v3                                 // 000000009AAC: 0A900715
	v_mul_f32_e32 v73, v22, v3                                 // 000000009AB0: 0A920716
	v_mul_f32_e32 v74, v23, v3                                 // 000000009AB4: 0A940717
	v_mul_f32_e32 v75, v24, v3                                 // 000000009AB8: 0A960718
	v_mul_f32_e32 v76, v25, v3                                 // 000000009ABC: 0A980719
	v_mul_f32_e32 v77, v26, v3                                 // 000000009AC0: 0A9A071A
	v_mul_f32_e32 v78, v27, v3                                 // 000000009AC4: 0A9C071B
	v_mul_f32_e32 v79, v28, v3                                 // 000000009AC8: 0A9E071C
	v_mul_f32_e32 v80, v29, v3                                 // 000000009ACC: 0AA0071D
	v_mul_f32_e32 v81, v30, v3                                 // 000000009AD0: 0AA2071E
	v_mul_f32_e32 v85, v31, v3                                 // 000000009AD4: 0AAA071F
	v_mul_f32_e32 v86, v32, v3                                 // 000000009AD8: 0AAC0720
	v_mul_f32_e32 v3, v33, v3                                  // 000000009ADC: 0A060721
	v_cvt_pk_bf16_f32 v8, v4, v5                               // 000000009AE0: D2680008 00020B04
	v_cvt_pk_bf16_f32 v6, v6, v7                               // 000000009AE8: D2680006 00020F06
	v_cvt_pk_bf16_f32 v9, v9, v10                              // 000000009AF0: D2680009 00021509
	v_cvt_pk_bf16_f32 v7, v11, v12                             // 000000009AF8: D2680007 0002190B
	v_cvt_pk_bf16_f32 v12, v13, v14                            // 000000009B00: D268000C 00021D0D
	v_cvt_pk_bf16_f32 v10, v15, v16                            // 000000009B08: D268000A 0002210F
	v_cvt_pk_bf16_f32 v13, v17, v66                            // 000000009B10: D268000D 00028511
	v_cvt_pk_bf16_f32 v11, v67, v68                            // 000000009B18: D268000B 00028943
	v_cvt_pk_bf16_f32 v16, v50, v51                            // 000000009B20: D2680010 00026732
	v_cvt_pk_bf16_f32 v14, v52, v53                            // 000000009B28: D268000E 00026B34
	v_cvt_pk_bf16_f32 v17, v54, v55                            // 000000009B30: D2680011 00026F36
	v_cvt_pk_bf16_f32 v15, v56, v57                            // 000000009B38: D268000F 00027338
	v_cvt_pk_bf16_f32 v20, v58, v59                            // 000000009B40: D2680014 0002773A
	v_cvt_pk_bf16_f32 v18, v60, v61                            // 000000009B48: D2680012 00027B3C
	v_cvt_pk_bf16_f32 v21, v62, v63                            // 000000009B50: D2680015 00027F3E
	v_cvt_pk_bf16_f32 v19, v64, v65                            // 000000009B58: D2680013 00028340
	v_cvt_pk_bf16_f32 v24, v34, v35                            // 000000009B60: D2680018 00024722
	v_cvt_pk_bf16_f32 v22, v36, v37                            // 000000009B68: D2680016 00024B24
	v_cvt_pk_bf16_f32 v25, v38, v39                            // 000000009B70: D2680019 00024F26
	v_cvt_pk_bf16_f32 v23, v40, v41                            // 000000009B78: D2680017 00025328
	v_cvt_pk_bf16_f32 v28, v42, v43                            // 000000009B80: D268001C 0002572A
	v_cvt_pk_bf16_f32 v26, v44, v45                            // 000000009B88: D268001A 00025B2C
	v_cvt_pk_bf16_f32 v29, v46, v47                            // 000000009B90: D268001D 00025F2E
	v_cvt_pk_bf16_f32 v27, v48, v49                            // 000000009B98: D268001B 00026330
	v_cvt_pk_bf16_f32 v32, v69, v70                            // 000000009BA0: D2680020 00028D45
	v_cvt_pk_bf16_f32 v30, v71, v72                            // 000000009BA8: D268001E 00029147
	v_cvt_pk_bf16_f32 v33, v73, v74                            // 000000009BB0: D2680021 00029549
	v_cvt_pk_bf16_f32 v31, v75, v76                            // 000000009BB8: D268001F 0002994B
	v_cvt_pk_bf16_f32 v36, v77, v78                            // 000000009BC0: D2680024 00029D4D
	v_cvt_pk_bf16_f32 v34, v79, v80                            // 000000009BC8: D2680022 0002A14F
	v_cvt_pk_bf16_f32 v37, v81, v85                            // 000000009BD0: D2680025 0002AB51
	v_cvt_pk_bf16_f32 v35, v86, v3                             // 000000009BD8: D2680023 00020756
	v_permlane32_swap_b32_e32 v8, v9                           // 000000009BE0: 7E10B509
	v_permlane32_swap_b32_e32 v6, v7                           // 000000009BE4: 7E0CB507
	v_mov_b32_e32 v4, v8                                       // 000000009BE8: 7E080308
	v_permlane32_swap_b32_e32 v12, v13                         // 000000009BEC: 7E18B50D
	v_mov_b32_e32 v5, v6                                       // 000000009BF0: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 000000009BF4: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 000000009BF8: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 000000009BFC: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 000000009C00: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 000000009C04: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 000000009C08: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 000000009C0C: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 000000009C10: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 000000009C14: 7E180310
	v_mov_b32_e32 v13, v14                                     // 000000009C18: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 000000009C1C: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 000000009C20: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 000000009C24: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 000000009C28: 7E200314
	v_mov_b32_e32 v17, v18                                     // 000000009C2C: 7E220312
	v_mov_b32_e32 v18, v21                                     // 000000009C30: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 000000009C34: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 000000009C38: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 000000009C3C: 7E280318
	v_mov_b32_e32 v21, v22                                     // 000000009C40: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 000000009C44: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 000000009C48: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 000000009C4C: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 000000009C50: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 000000009C54: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 000000009C58: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 000000009C5C: 7E3CB51F
	v_permlane32_swap_b32_e32 v36, v37                         // 000000009C60: 7E48B525
	v_mov_b32_e32 v28, v32                                     // 000000009C64: 7E380320
	v_mov_b32_e32 v29, v30                                     // 000000009C68: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 000000009C6C: 7E3C0321
	v_permlane32_swap_b32_e32 v34, v35                         // 000000009C70: 7E44B523
	v_add_f32_e32 v3, v192, v84                                // 000000009C74: 0206A9C0
	v_mov_b32_e32 v32, v36                                     // 000000009C78: 7E400324
	v_mov_b32_e32 v33, v34                                     // 000000009C7C: 7E420322
	v_mov_b32_e32 v34, v37                                     // 000000009C80: 7E440325
	v_add_f32_e32 v3, -4.0, v3                                 // 000000009C84: 020606F7
	v_add_f32_e32 v3, -2.0, v3                                 // 000000009C88: 020606F5
	v_mul_f32_e32 v3, 0x3f317218, v3                           // 000000009C8C: 0A0606FF 3F317218
	s_lshl_b32 s20, s33, 13                                    // 000000009C94: 8E148D21
	v_xor_b32_e32 v36, v175, v82                               // 000000009C98: 2A48A5AF
	s_mov_b32 s21, 0x20000                                     // 000000009C9C: BE9500FF 00020000
	v_lshl_or_b32 v37, v174, 8, s20                            // 000000009CA4: D2000025 005111AE
	v_lshlrev_b32_e32 v36, 4, v36                              // 000000009CAC: 24484884
	v_or3_b32 v36, v37, v36, s21                               // 000000009CB0: D2020024 00564925
	ds_write_b128 v36, v[4:7]                                  // 000000009CB8: D9BE0000 00000424
	v_xor_b32_e32 v4, 32, v36                                  // 000000009CC0: 2A0848A0
	ds_write_b128 v4, v[8:11]                                  // 000000009CC4: D9BE0000 00000804
	v_xor_b32_e32 v4, 64, v36                                  // 000000009CCC: 2A0848C0
	ds_write_b128 v4, v[12:15]                                 // 000000009CD0: D9BE0000 00000C04
	v_xor_b32_e32 v4, 0x60, v36                                // 000000009CD8: 2A0848FF 00000060
	ds_write_b128 v4, v[16:19]                                 // 000000009CE0: D9BE0000 00001004
	v_xor_b32_e32 v4, 0x80, v36                                // 000000009CE8: 2A0848FF 00000080
	ds_write_b128 v4, v[20:23]                                 // 000000009CF0: D9BE0000 00001404
	v_xor_b32_e32 v4, 0xa0, v36                                // 000000009CF8: 2A0848FF 000000A0
	ds_write_b128 v4, v[24:27]                                 // 000000009D00: D9BE0000 00001804
	v_xor_b32_e32 v4, 0xc0, v36                                // 000000009D08: 2A0848FF 000000C0
	ds_write_b128 v4, v[28:31]                                 // 000000009D10: D9BE0000 00001C04
	v_xor_b32_e32 v4, 0xe0, v36                                // 000000009D18: 2A0848FF 000000E0
	ds_write_b128 v4, v[32:35]                                 // 000000009D20: D9BE0000 00002004
	v_xor_b32_e32 v5, v83, v82                                 // 000000009D28: 2A0AA553
	v_lshlrev_b32_e32 v4, 8, v83                               // 000000009D2C: 2408A688
	v_lshlrev_b32_e32 v5, 4, v5                                // 000000009D30: 240A0A84
	v_or3_b32 v4, v4, s20, v5                                  // 000000009D34: D2020004 04142904
	v_or_b32_e32 v5, 0x20000, v4                               // 000000009D3C: 280A08FF 00020000
	ds_read_b128 v[12:15], v5                                  // 000000009D44: D9FE0000 0C000005
	v_xor_b32_e32 v6, 64, v5                                   // 000000009D4C: 2A0C0AC0
	ds_read_b128 v[16:19], v6 offset:1024                      // 000000009D50: D9FE0400 10000006
	v_xor_b32_e32 v7, 0x80, v5                                 // 000000009D58: 2A0E0AFF 00000080
	ds_read_b128 v[20:23], v7 offset:2048                      // 000000009D60: D9FE0800 14000007
	v_xor_b32_e32 v5, 0xc0, v5                                 // 000000009D68: 2A0A0AFF 000000C0
	ds_read_b128 v[24:27], v5 offset:3072                      // 000000009D70: D9FE0C00 18000005
	v_or_b32_e32 v4, 0x21000, v4                               // 000000009D78: 280808FF 00021000
	ds_read_b128 v[28:31], v4                                  // 000000009D80: D9FE0000 1C000004
	ds_read_b128 v[32:35], v6 offset:5120                      // 000000009D88: D9FE1400 20000006
	ds_read_b128 v[36:39], v7 offset:6144                      // 000000009D90: D9FE1800 24000007
	ds_read_b128 v[40:43], v5 offset:7168                      // 000000009D98: D9FE1C00 28000005
	v_add_u32_e32 v4, s3, v83                                  // 000000009DA0: 6808A603
	v_mul_lo_u32 v4, v4, s9                                    // 000000009DA4: D2850004 00001304
	v_lshl_add_u32 v4, v82, 4, v4                              // 000000009DAC: D1FD0004 04110952
	s_lshl_b32 s20, s9, 2                                      // 000000009DB4: 8E148209
	v_add_u32_e32 v5, s20, v4                                  // 000000009DB8: 680A0814
	v_add_u32_e32 v6, s20, v5                                  // 000000009DBC: 680C0A14
	v_add_u32_e32 v7, s20, v6                                  // 000000009DC0: 680E0C14
	v_add_u32_e32 v8, s20, v7                                  // 000000009DC4: 68100E14
	v_add_u32_e32 v9, s20, v8                                  // 000000009DC8: 68121014
	v_add_u32_e32 v10, s20, v9                                 // 000000009DCC: 68141214
	v_add_u32_e32 v11, s20, v10                                // 000000009DD0: 68161414
	s_waitcnt lgkmcnt(7)                                       // 000000009DD4: BF8CC77F
	global_store_dwordx4 v4, v[12:15], s[0:1]                  // 000000009DD8: DC7C8000 00000C04
	s_waitcnt lgkmcnt(6)                                       // 000000009DE0: BF8CC67F
	global_store_dwordx4 v5, v[16:19], s[0:1]                  // 000000009DE4: DC7C8000 00001005
	s_waitcnt lgkmcnt(5)                                       // 000000009DEC: BF8CC57F
	global_store_dwordx4 v6, v[20:23], s[0:1]                  // 000000009DF0: DC7C8000 00001406
	s_waitcnt lgkmcnt(4)                                       // 000000009DF8: BF8CC47F
	global_store_dwordx4 v7, v[24:27], s[0:1]                  // 000000009DFC: DC7C8000 00001807
	s_waitcnt lgkmcnt(3)                                       // 000000009E04: BF8CC37F
	global_store_dwordx4 v8, v[28:31], s[0:1]                  // 000000009E08: DC7C8000 00001C08
	s_waitcnt lgkmcnt(2)                                       // 000000009E10: BF8CC27F
	global_store_dwordx4 v9, v[32:35], s[0:1]                  // 000000009E14: DC7C8000 00002009
	s_waitcnt lgkmcnt(1)                                       // 000000009E1C: BF8CC17F
	global_store_dwordx4 v10, v[36:39], s[0:1]                 // 000000009E20: DC7C8000 0000240A
	s_waitcnt lgkmcnt(0)                                       // 000000009E28: BF8CC07F
	global_store_dwordx4 v11, v[40:43], s[0:1]                 // 000000009E2C: DC7C8000 0000280B
	v_add_u32_e32 v4, s3, v174                                 // 000000009E34: 68095C03
	v_lshlrev_b32_e32 v4, 2, v4                                // 000000009E38: 24080882
	s_cmp_eq_u64 s[10:11], 0                                   // 000000009E3C: BF12800A
	s_mov_b64 s[0:1], s[16:17]                                 // 000000009E40: BE800110
	s_mov_b32 s3, s22                                          // 000000009E44: BE830016
	s_cbranch_scc1 57370                                       // 000000009E48: BF85E01A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3b4>
	global_store_dword v4, v3, s[10:11]                        // 000000009E4C: DC708000 000A0304
	s_mov_b64 s[0:1], s[16:17]                                 // 000000009E54: BE800110
	s_mov_b32 s3, s22                                          // 000000009E58: BE830016
	s_branch 57365                                             // 000000009E5C: BF82E015 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3b4>
	s_nop 15                                                   // 000000009E60: BF80000F
	s_nop 3                                                    // 000000009E64: BF800003
	v_rcp_f32_e32 v0, v190                                     // 000000009E68: 7E0045BE
	v_log_f32_e32 v84, v190                                    // 000000009E6C: 7EA843BE
	s_nop 1                                                    // 000000009E70: BF800001
	v_mul_f32_e32 v0, v186, v0                                 // 000000009E74: 0A0001BA
	v_mul_f32_e32 v1, v66, v0                                  // 000000009E78: 0A020142
	v_mul_f32_e32 v2, v67, v0                                  // 000000009E7C: 0A040143
	v_mul_f32_e32 v3, v68, v0                                  // 000000009E80: 0A060144
	v_mul_f32_e32 v5, v69, v0                                  // 000000009E84: 0A0A0145
	v_mul_f32_e32 v6, v70, v0                                  // 000000009E88: 0A0C0146
	v_mul_f32_e32 v7, v71, v0                                  // 000000009E8C: 0A0E0147
	v_mul_f32_e32 v8, v72, v0                                  // 000000009E90: 0A100148
	v_mul_f32_e32 v9, v73, v0                                  // 000000009E94: 0A120149
	v_mul_f32_e32 v10, v74, v0                                 // 000000009E98: 0A14014A
	v_mul_f32_e32 v11, v75, v0                                 // 000000009E9C: 0A16014B
	v_mul_f32_e32 v12, v76, v0                                 // 000000009EA0: 0A18014C
	v_mul_f32_e32 v13, v77, v0                                 // 000000009EA4: 0A1A014D
	v_mul_f32_e32 v14, v78, v0                                 // 000000009EA8: 0A1C014E
	v_mul_f32_e32 v15, v79, v0                                 // 000000009EAC: 0A1E014F
	v_mul_f32_e32 v16, v80, v0                                 // 000000009EB0: 0A200150
	v_mul_f32_e32 v17, v81, v0                                 // 000000009EB4: 0A220151
	v_mul_f32_e32 v50, v50, v0                                 // 000000009EB8: 0A640132
	v_mul_f32_e32 v51, v51, v0                                 // 000000009EBC: 0A660133
	v_mul_f32_e32 v52, v52, v0                                 // 000000009EC0: 0A680134
	v_mul_f32_e32 v53, v53, v0                                 // 000000009EC4: 0A6A0135
	v_mul_f32_e32 v54, v54, v0                                 // 000000009EC8: 0A6C0136
	v_mul_f32_e32 v55, v55, v0                                 // 000000009ECC: 0A6E0137
	v_mul_f32_e32 v56, v56, v0                                 // 000000009ED0: 0A700138
	v_mul_f32_e32 v57, v57, v0                                 // 000000009ED4: 0A720139
	v_mul_f32_e32 v58, v58, v0                                 // 000000009ED8: 0A74013A
	v_mul_f32_e32 v59, v59, v0                                 // 000000009EDC: 0A76013B
	v_mul_f32_e32 v60, v60, v0                                 // 000000009EE0: 0A78013C
	v_mul_f32_e32 v61, v61, v0                                 // 000000009EE4: 0A7A013D
	v_mul_f32_e32 v62, v62, v0                                 // 000000009EE8: 0A7C013E
	v_mul_f32_e32 v63, v63, v0                                 // 000000009EEC: 0A7E013F
	v_mul_f32_e32 v64, v64, v0                                 // 000000009EF0: 0A800140
	v_mul_f32_e32 v65, v65, v0                                 // 000000009EF4: 0A820141
	v_mul_f32_e32 v34, v34, v0                                 // 000000009EF8: 0A440122
	v_mul_f32_e32 v35, v35, v0                                 // 000000009EFC: 0A460123
	v_mul_f32_e32 v36, v36, v0                                 // 000000009F00: 0A480124
	v_mul_f32_e32 v37, v37, v0                                 // 000000009F04: 0A4A0125
	v_mul_f32_e32 v38, v38, v0                                 // 000000009F08: 0A4C0126
	v_mul_f32_e32 v39, v39, v0                                 // 000000009F0C: 0A4E0127
	v_mul_f32_e32 v40, v40, v0                                 // 000000009F10: 0A500128
	v_mul_f32_e32 v41, v41, v0                                 // 000000009F14: 0A520129
	v_mul_f32_e32 v42, v42, v0                                 // 000000009F18: 0A54012A
	v_mul_f32_e32 v43, v43, v0                                 // 000000009F1C: 0A56012B
	v_mul_f32_e32 v44, v44, v0                                 // 000000009F20: 0A58012C
	v_mul_f32_e32 v45, v45, v0                                 // 000000009F24: 0A5A012D
	v_mul_f32_e32 v46, v46, v0                                 // 000000009F28: 0A5C012E
	v_mul_f32_e32 v47, v47, v0                                 // 000000009F2C: 0A5E012F
	v_mul_f32_e32 v48, v48, v0                                 // 000000009F30: 0A600130
	v_mul_f32_e32 v49, v49, v0                                 // 000000009F34: 0A620131
	v_mul_f32_e32 v66, v18, v0                                 // 000000009F38: 0A840112
	v_mul_f32_e32 v67, v19, v0                                 // 000000009F3C: 0A860113
	v_mul_f32_e32 v68, v20, v0                                 // 000000009F40: 0A880114
	v_mul_f32_e32 v69, v21, v0                                 // 000000009F44: 0A8A0115
	v_mul_f32_e32 v70, v22, v0                                 // 000000009F48: 0A8C0116
	v_mul_f32_e32 v71, v23, v0                                 // 000000009F4C: 0A8E0117
	v_mul_f32_e32 v72, v24, v0                                 // 000000009F50: 0A900118
	v_mul_f32_e32 v73, v25, v0                                 // 000000009F54: 0A920119
	v_mul_f32_e32 v74, v26, v0                                 // 000000009F58: 0A94011A
	v_mul_f32_e32 v75, v27, v0                                 // 000000009F5C: 0A96011B
	v_mul_f32_e32 v76, v28, v0                                 // 000000009F60: 0A98011C
	v_mul_f32_e32 v77, v29, v0                                 // 000000009F64: 0A9A011D
	v_mul_f32_e32 v78, v30, v0                                 // 000000009F68: 0A9C011E
	v_mul_f32_e32 v31, v31, v0                                 // 000000009F6C: 0A3E011F
	v_mul_f32_e32 v79, v32, v0                                 // 000000009F70: 0A9E0120
	v_mul_f32_e32 v0, v33, v0                                  // 000000009F74: 0A000121
	v_cvt_pk_bf16_f32 v4, v1, v2                               // 000000009F78: D2680004 00020501
	v_cvt_pk_bf16_f32 v2, v3, v5                               // 000000009F80: D2680002 00020B03
	v_cvt_pk_bf16_f32 v5, v6, v7                               // 000000009F88: D2680005 00020F06
	v_cvt_pk_bf16_f32 v3, v8, v9                               // 000000009F90: D2680003 00021308
	v_cvt_pk_bf16_f32 v8, v10, v11                             // 000000009F98: D2680008 0002170A
	v_cvt_pk_bf16_f32 v6, v12, v13                             // 000000009FA0: D2680006 00021B0C
	v_cvt_pk_bf16_f32 v9, v14, v15                             // 000000009FA8: D2680009 00021F0E
	v_cvt_pk_bf16_f32 v7, v16, v17                             // 000000009FB0: D2680007 00022310
	v_cvt_pk_bf16_f32 v12, v50, v51                            // 000000009FB8: D268000C 00026732
	v_cvt_pk_bf16_f32 v10, v52, v53                            // 000000009FC0: D268000A 00026B34
	v_cvt_pk_bf16_f32 v13, v54, v55                            // 000000009FC8: D268000D 00026F36
	v_cvt_pk_bf16_f32 v11, v56, v57                            // 000000009FD0: D268000B 00027338
	v_cvt_pk_bf16_f32 v16, v58, v59                            // 000000009FD8: D2680010 0002773A
	v_cvt_pk_bf16_f32 v14, v60, v61                            // 000000009FE0: D268000E 00027B3C
	v_cvt_pk_bf16_f32 v17, v62, v63                            // 000000009FE8: D2680011 00027F3E
	v_cvt_pk_bf16_f32 v15, v64, v65                            // 000000009FF0: D268000F 00028340
	v_cvt_pk_bf16_f32 v20, v34, v35                            // 000000009FF8: D2680014 00024722
	v_cvt_pk_bf16_f32 v18, v36, v37                            // 00000000A000: D2680012 00024B24
	v_cvt_pk_bf16_f32 v21, v38, v39                            // 00000000A008: D2680015 00024F26
	v_cvt_pk_bf16_f32 v19, v40, v41                            // 00000000A010: D2680013 00025328
	v_cvt_pk_bf16_f32 v24, v42, v43                            // 00000000A018: D2680018 0002572A
	v_cvt_pk_bf16_f32 v22, v44, v45                            // 00000000A020: D2680016 00025B2C
	v_cvt_pk_bf16_f32 v25, v46, v47                            // 00000000A028: D2680019 00025F2E
	v_cvt_pk_bf16_f32 v23, v48, v49                            // 00000000A030: D2680017 00026330
	v_cvt_pk_bf16_f32 v28, v66, v67                            // 00000000A038: D268001C 00028742
	v_cvt_pk_bf16_f32 v26, v68, v69                            // 00000000A040: D268001A 00028B44
	v_cvt_pk_bf16_f32 v29, v70, v71                            // 00000000A048: D268001D 00028F46
	v_cvt_pk_bf16_f32 v27, v72, v73                            // 00000000A050: D268001B 00029348
	v_cvt_pk_bf16_f32 v32, v74, v75                            // 00000000A058: D2680020 0002974A
	v_cvt_pk_bf16_f32 v30, v76, v77                            // 00000000A060: D268001E 00029B4C
	v_cvt_pk_bf16_f32 v33, v78, v31                            // 00000000A068: D2680021 00023F4E
	v_cvt_pk_bf16_f32 v31, v79, v0                             // 00000000A070: D268001F 0002014F
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000A078: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000A07C: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000A080: 7E000304
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000A084: 7E10B509
	v_mov_b32_e32 v1, v2                                       // 00000000A088: 7E020302
	v_mov_b32_e32 v2, v5                                       // 00000000A08C: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000A090: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000A094: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000A098: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000A09C: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000A0A0: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000A0A4: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000A0A8: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000A0AC: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000A0B0: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000A0B4: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000A0B8: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000A0BC: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000A0C0: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000A0C4: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000A0C8: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000A0CC: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000A0D0: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000A0D4: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000A0D8: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000A0DC: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000A0E0: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000A0E4: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000A0E8: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000A0EC: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000A0F0: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000A0F4: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000A0F8: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000A0FC: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000A100: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000A104: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000A108: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000A10C: 7E380320
	v_add_f32_e32 v32, v192, v84                               // 00000000A110: 0240A9C0
	v_mov_b32_e32 v29, v30                                     // 00000000A114: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000A118: 7E3C0321
	v_add_f32_e32 v32, -4.0, v32                               // 00000000A11C: 024040F7
	v_add_f32_e32 v32, -2.0, v32                               // 00000000A120: 024040F5
	v_mul_f32_e32 v32, 0x3f317218, v32                         // 00000000A124: 0A4040FF 3F317218
	s_lshl_b32 s2, s33, 13                                     // 00000000A12C: 8E028D21
	v_xor_b32_e32 v33, v175, v82                               // 00000000A130: 2A42A5AF
	s_mov_b32 s4, 0x20000                                      // 00000000A134: BE8400FF 00020000
	v_lshl_or_b32 v34, v174, 8, s2                             // 00000000A13C: D2000022 000911AE
	v_lshlrev_b32_e32 v33, 4, v33                              // 00000000A144: 24424284
	v_or3_b32 v33, v34, v33, s4                                // 00000000A148: D2020021 00124322
	ds_write_b128 v33, v[0:3]                                  // 00000000A150: D9BE0000 00000021
	v_xor_b32_e32 v0, 32, v33                                  // 00000000A158: 2A0042A0
	ds_write_b128 v0, v[4:7]                                   // 00000000A15C: D9BE0000 00000400
	v_xor_b32_e32 v0, 64, v33                                  // 00000000A164: 2A0042C0
	ds_write_b128 v0, v[8:11]                                  // 00000000A168: D9BE0000 00000800
	v_xor_b32_e32 v0, 0x60, v33                                // 00000000A170: 2A0042FF 00000060
	ds_write_b128 v0, v[12:15]                                 // 00000000A178: D9BE0000 00000C00
	v_xor_b32_e32 v0, 0x80, v33                                // 00000000A180: 2A0042FF 00000080
	ds_write_b128 v0, v[16:19]                                 // 00000000A188: D9BE0000 00001000
	v_xor_b32_e32 v0, 0xa0, v33                                // 00000000A190: 2A0042FF 000000A0
	ds_write_b128 v0, v[20:23]                                 // 00000000A198: D9BE0000 00001400
	v_xor_b32_e32 v0, 0xc0, v33                                // 00000000A1A0: 2A0042FF 000000C0
	ds_write_b128 v0, v[24:27]                                 // 00000000A1A8: D9BE0000 00001800
	v_xor_b32_e32 v0, 0xe0, v33                                // 00000000A1B0: 2A0042FF 000000E0
	ds_write_b128 v0, v[28:31]                                 // 00000000A1B8: D9BE0000 00001C00
	v_xor_b32_e32 v1, v83, v82                                 // 00000000A1C0: 2A02A553
	v_lshlrev_b32_e32 v0, 8, v83                               // 00000000A1C4: 2400A688
	v_lshlrev_b32_e32 v1, 4, v1                                // 00000000A1C8: 24020284
	v_or3_b32 v0, v0, s2, v1                                   // 00000000A1CC: D2020000 04040500
	v_or_b32_e32 v1, 0x20000, v0                               // 00000000A1D4: 280200FF 00020000
	ds_read_b128 v[8:11], v1                                   // 00000000A1DC: D9FE0000 08000001
	v_xor_b32_e32 v2, 64, v1                                   // 00000000A1E4: 2A0402C0
	ds_read_b128 v[12:15], v2 offset:1024                      // 00000000A1E8: D9FE0400 0C000002
	v_xor_b32_e32 v3, 0x80, v1                                 // 00000000A1F0: 2A0602FF 00000080
	ds_read_b128 v[16:19], v3 offset:2048                      // 00000000A1F8: D9FE0800 10000003
	v_xor_b32_e32 v1, 0xc0, v1                                 // 00000000A200: 2A0202FF 000000C0
	ds_read_b128 v[20:23], v1 offset:3072                      // 00000000A208: D9FE0C00 14000001
	v_or_b32_e32 v0, 0x21000, v0                               // 00000000A210: 280000FF 00021000
	ds_read_b128 v[24:27], v0                                  // 00000000A218: D9FE0000 18000000
	ds_read_b128 v[28:31], v2 offset:5120                      // 00000000A220: D9FE1400 1C000002
	ds_read_b128 v[34:37], v3 offset:6144                      // 00000000A228: D9FE1800 22000003
	ds_read_b128 v[38:41], v1 offset:7168                      // 00000000A230: D9FE1C00 26000001
	v_add_u32_e32 v0, s3, v83                                  // 00000000A238: 6800A603
	v_mul_lo_u32 v0, v0, s9                                    // 00000000A23C: D2850000 00001300
	v_lshl_add_u32 v0, v82, 4, v0                              // 00000000A244: D1FD0000 04010952
	s_lshl_b32 s2, s9, 2                                       // 00000000A24C: 8E028209
	v_add_u32_e32 v1, s2, v0                                   // 00000000A250: 68020002
	v_add_u32_e32 v2, s2, v1                                   // 00000000A254: 68040202
	v_add_u32_e32 v3, s2, v2                                   // 00000000A258: 68060402
	v_add_u32_e32 v4, s2, v3                                   // 00000000A25C: 68080602
	v_add_u32_e32 v5, s2, v4                                   // 00000000A260: 680A0802
	v_add_u32_e32 v6, s2, v5                                   // 00000000A264: 680C0A02
	v_add_u32_e32 v7, s2, v6                                   // 00000000A268: 680E0C02
	s_waitcnt lgkmcnt(7)                                       // 00000000A26C: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[0:1]                   // 00000000A270: DC7C8000 00000800
	s_waitcnt lgkmcnt(6)                                       // 00000000A278: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[0:1]                  // 00000000A27C: DC7C8000 00000C01
	s_waitcnt lgkmcnt(5)                                       // 00000000A284: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[0:1]                  // 00000000A288: DC7C8000 00001002
	s_waitcnt lgkmcnt(4)                                       // 00000000A290: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[0:1]                  // 00000000A294: DC7C8000 00001403
	s_waitcnt lgkmcnt(3)                                       // 00000000A29C: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[0:1]                  // 00000000A2A0: DC7C8000 00001804
	s_waitcnt lgkmcnt(2)                                       // 00000000A2A8: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[0:1]                  // 00000000A2AC: DC7C8000 00001C05
	s_waitcnt lgkmcnt(1)                                       // 00000000A2B4: BF8CC17F
	global_store_dwordx4 v6, v[34:37], s[0:1]                  // 00000000A2B8: DC7C8000 00002206
	s_waitcnt lgkmcnt(0)                                       // 00000000A2C0: BF8CC07F
	global_store_dwordx4 v7, v[38:41], s[0:1]                  // 00000000A2C4: DC7C8000 00002607
	v_add_u32_e32 v0, s3, v174                                 // 00000000A2CC: 68015C03
	v_lshlrev_b32_e32 v0, 2, v0                                // 00000000A2D0: 24000082
	s_cmp_eq_u64 s[10:11], 0                                   // 00000000A2D4: BF12800A
	s_cbranch_scc1 2                                           // 00000000A2D8: BF850002 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x87e4>
	global_store_dword v0, v32, s[10:11]                       // 00000000A2DC: DC708000 000A2000
	s_and_b64 s[0:1], s[34:35], exec                           // 00000000A2E4: 86807E22
	s_cbranch_scc0 1                                           // 00000000A2E8: BF840001 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x87f0>
	s_barrier                                                  // 00000000A2EC: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000A2F0: BF8C0F70
	s_endpgm                                                   // 00000000A2F4: BF810000
		...

000000000000a300 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE>:
	s_load_dwordx16 s[36:51], s[0:1], 0x0                      // 00000000A300: C0120900 00000000
	s_load_dwordx16 s[4:19], s[0:1], 0x40                      // 00000000A308: C0120100 00000040
	s_load_dwordx4 s[20:23], s[0:1], 0x80                      // 00000000A310: C00A0500 00000080
	s_load_dwordx2 s[24:25], s[0:1], 0x90                      // 00000000A318: C0060600 00000090
	v_and_b32_e32 v1, 63, v0                                   // 00000000A320: 260200BF
	v_and_b32_e32 v119, 31, v0                                 // 00000000A324: 26EE009F
	v_bfe_u32 v120, v0, 5, 1                                   // 00000000A328: D1C80078 02050B00
	s_movk_i32 s1, 0xe0                                        // 00000000A330: B00100E0
	v_lshlrev_b32_e32 v121, 8, v119                            // 00000000A334: 24F2EE88
	v_add_lshl_u32 v2, v120, v1, 5                             // 00000000A338: D1FE0002 02160378
	v_and_or_b32 v122, v2, s1, v121                            // 00000000A340: D201007A 05E40302
	v_add_u32_e32 v3, 64, v2                                   // 00000000A348: 680604C0
	v_add_u32_e32 v2, 0x80, v2                                 // 00000000A34C: 680404FF 00000080
	v_readfirstlane_b32 s0, v0                                 // 00000000A354: 7E000500
	v_and_or_b32 v123, v3, s1, v121                            // 00000000A358: D201007B 05E40303
	v_and_or_b32 v124, v2, s1, v121                            // 00000000A360: D201007C 05E40302
	s_waitcnt lgkmcnt(0)                                       // 00000000A368: BF8CC07F
	s_cmp_eq_u64 s[20:21], 0                                   // 00000000A36C: BF128014
	s_cbranch_scc1 14                                          // 00000000A370: BF85000E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xac>
	s_load_dword s1, s[20:21], 0x0                             // 00000000A374: C002004A 00000000
	s_cmp_eq_u64 s[22:23], 0                                   // 00000000A37C: BF128016
	s_cbranch_scc1 13                                          // 00000000A380: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb8>
	s_load_dword s3, s[22:23], 0x0                             // 00000000A384: C00200CB 00000000
	s_waitcnt lgkmcnt(0)                                       // 00000000A38C: BF8CC07F
	v_mov_b32_e32 v2, s3                                       // 00000000A390: 7E040203
	v_mul_f32_e32 v2, s1, v2                                   // 00000000A394: 0A040401
	s_cmp_eq_u64 s[24:25], 0                                   // 00000000A398: BF128018
	s_cbranch_scc1 10                                          // 00000000A39C: BF85000A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc8>
	s_load_dword s15, s[24:25], 0x0                            // 00000000A3A0: C00203CC 00000000
	s_branch 8                                                 // 00000000A3A8: BF820008 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xcc>
	s_mov_b32 s1, 1.0                                          // 00000000A3AC: BE8100F2
	s_cmp_eq_u64 s[22:23], 0                                   // 00000000A3B0: BF128016
	s_cbranch_scc0 65523                                       // 00000000A3B4: BF84FFF3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x84>
	s_waitcnt lgkmcnt(0)                                       // 00000000A3B8: BF8CC07F
	v_mov_b32_e32 v2, s1                                       // 00000000A3BC: 7E040201
	s_cmp_eq_u64 s[24:25], 0                                   // 00000000A3C0: BF128018
	s_cbranch_scc0 65526                                       // 00000000A3C4: BF84FFF6 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa0>
	s_mov_b32 s15, 1.0                                         // 00000000A3C8: BE8F00F2
	s_lshr_b32 s3, s0, 6                                       // 00000000A3CC: 8F038600
	v_and_b32_e32 v5, 1, v0                                    // 00000000A3D0: 260A0081
	v_mov_b32_e32 v125, 0x7f                                   // 00000000A3D4: 7EFA02FF 0000007F
	v_mov_b32_e32 v3, 0xc1000000                               // 00000000A3DC: 7E0602FF C1000000
	s_mov_b32 s70, 0xc2fe0000                                  // 00000000A3E4: BEC600FF C2FE0000
	s_mov_b32 s71, 0x3e000000                                  // 00000000A3EC: BEC700FF 3E000000
	v_mov_b32_e32 v126, 0xff800000                             // 00000000A3F4: 7EFC02FF FF800000
	v_bfe_u32 v4, v0, 1, 3                                     // 00000000A3FC: D1C80004 020D0300
	v_lshlrev_b32_e32 v6, 4, v5                                // 00000000A404: 240C0A84
	v_lshrrev_b32_e32 v3, 4, v0                                // 00000000A408: 20060084
	v_sub_u32_e32 v7, v4, v3                                   // 00000000A40C: 6A0E0704
	v_and_b32_e32 v7, 7, v7                                    // 00000000A410: 260E0E87
	v_cmp_gt_u32_e32 vcc, 6, v7                                // 00000000A414: 7D980E86
	s_mov_b32 s1, 0                                            // 00000000A418: BE810080
	s_nop 0                                                    // 00000000A41C: BF800000
	v_cndmask_b32_e32 v7, 0, v7, vcc                           // 00000000A420: 000E0E80
	v_lshlrev_b32_e32 v7, 5, v7                                // 00000000A424: 240E0E85
	v_or_b32_e32 v7, v7, v6                                    // 00000000A428: 280E0D07
	v_mad_u32_u24 v127, s6, v3, v7                             // 00000000A42C: D1C3007F 041E0606
	v_or_b32_e32 v7, 0x200, v0                                 // 00000000A434: 280E00FF 00000200
	v_lshrrev_b32_e32 v7, 4, v7                                // 00000000A43C: 200E0E84
	v_sub_u32_e32 v4, v4, v7                                   // 00000000A440: 6A080F04
	v_and_b32_e32 v4, 7, v4                                    // 00000000A444: 26080887
	v_cmp_gt_u32_e32 vcc, 6, v4                                // 00000000A448: 7D980886
	s_nop 1                                                    // 00000000A44C: BF800001
	v_cndmask_b32_e32 v4, 0, v4, vcc                           // 00000000A450: 00080880
	v_lshlrev_b32_e32 v4, 5, v4                                // 00000000A454: 24080885
	v_or_b32_e32 v4, v4, v6                                    // 00000000A458: 28080D04
	v_mad_u32_u24 v128, s6, v7, v4                             // 00000000A45C: D1C30080 04120E06
	v_bfe_u32 v4, v0, 7, 1                                     // 00000000A464: D1C80004 02050F00
	v_lshrrev_b32_e32 v5, 8, v0                                // 00000000A46C: 200A0088
	v_lshlrev_b32_e32 v10, 5, v4                               // 00000000A470: 24140885
	v_bfe_u32 v6, v0, 6, 1                                     // 00000000A474: D1C80006 02050D00
	v_lshl_or_b32 v12, v5, 2, v10                              // 00000000A47C: D200000C 04290505
	v_bfe_u32 v7, v0, 2, 1                                     // 00000000A484: D1C80007 02050500
	v_lshl_or_b32 v13, v6, 4, v12                              // 00000000A48C: D200000D 04310906
	v_and_b32_e32 v8, 3, v0                                    // 00000000A494: 26100083
	v_bfe_u32 v9, v0, 3, 3                                     // 00000000A498: D1C80009 020D0700
	v_lshl_or_b32 v14, v7, 3, v13                              // 00000000A4A0: D200000E 04350707
	v_lshlrev_b32_e32 v11, 4, v9                               // 00000000A4A8: 24161284
	v_or_b32_e32 v15, v14, v8                                  // 00000000A4AC: 281E110E
	v_mad_u32_u24 v129, s7, v15, v11                           // 00000000A4B0: D1C30081 042E1E07
	s_lshl_b32 s72, s3, 10                                     // 00000000A4B8: 8E488A03
	s_add_u32 s73, s72, 0x10000                                // 00000000A4BC: 8049FF48 00010000
	s_cmp_ge_u32 s2, s49                                       // 00000000A4C4: BF093102
	s_cbranch_scc1 5299                                        // 00000000A4C8: BF8514B3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5498>
	s_lshl_b32 s74, s6, 6                                      // 00000000A4CC: 8E4A8606
	s_lshr_b32 s75, s0, 8                                      // 00000000A4D0: 8F4B8800
	s_and_b32 s33, s3, 3                                       // 00000000A4D4: 86218303
	s_cmp_eq_u32 s4, 0                                         // 00000000A4D8: BF068004
	s_cselect_b32 s4, s3, s33                                  // 00000000A4DC: 85042103
	s_cselect_b32 s18, 0, s75                                  // 00000000A4E0: 85124B80
	s_lshl_b32 s0, s2, 5                                       // 00000000A4E4: 8E008502
	s_load_dwordx8 s[52:59], s[46:47], s0 offset:0x0           // 00000000A4E8: C00E4D17 00000000
	s_mul_i32 s9, s9, s18                                      // 00000000A4F0: 92091209
	s_mul_i32 s62, s6, s12                                     // 00000000A4F4: 923E0C06
	s_mul_i32 s66, s7, s12                                     // 00000000A4F8: 92420C07
	s_mov_b32 s63, 0x110000                                    // 00000000A4FC: BEBF00FF 00110000
	s_waitcnt lgkmcnt(0)                                       // 00000000A504: BF8CC07F
	s_mov_b32 s0, s58                                          // 00000000A508: BE80003A
	s_lshl_b64 s[0:1], s[0:1], 7                               // 00000000A50C: 8E808700
	s_add_u32 s3, s36, s54                                     // 00000000A510: 80033624
	s_addc_u32 s17, s37, s55                                   // 00000000A514: 82113725
	s_add_u32 s16, s3, s9                                      // 00000000A518: 80100903
	s_addc_u32 s17, s17, 0                                     // 00000000A51C: 82118011
	s_add_u32 s60, s38, s56                                    // 00000000A520: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000A524: 823D3927
	s_add_u32 s64, s40, s0                                     // 00000000A528: 80400028
	s_addc_u32 s65, s41, s1                                    // 00000000A52C: 82410129
	s_not_b32 s0, s52                                          // 00000000A530: BE800434
	s_add_u32 s0, s50, s0                                      // 00000000A534: 80000032
	s_mul_i32 s1, s51, s0                                      // 00000000A538: 92010033
	s_lshl_b32 s0, s0, 5                                       // 00000000A53C: 8E008500
	s_add_u32 s0, s0, 32                                       // 00000000A540: 8000A000
	s_mul_i32 s0, s0, s51                                      // 00000000A544: 92003300
	s_add_u32 s1, s1, s4                                       // 00000000A548: 80010401
	s_add_u32 s0, s0, 32                                       // 00000000A54C: 8000A000
	s_lshr_b32 s12, s12, 6                                     // 00000000A550: 8F0C860C
	s_lshl_b32 s3, s1, 5                                       // 00000000A554: 8E038501
	s_lshr_b32 s0, s0, 6                                       // 00000000A558: 8F008600
	v_or_b32_e32 v4, s3, v119                                  // 00000000A55C: 2808EE03
	s_min_u32 s78, s12, s0                                     // 00000000A560: 83CE000C
	s_mov_b32 s67, s63                                         // 00000000A564: BEC3003F
	v_mul_lo_u32 v4, s5, v4                                    // 00000000A568: D2850004 00020805
	v_lshlrev_b32_e32 v130, 5, v120                            // 00000000A570: 2504F085
	v_add_u32_e32 v4, v130, v4                                 // 00000000A574: 68080982
	global_load_dwordx4 v[166:169], v4, s[16:17]               // 00000000A578: DC5C8000 A6100004
	global_load_dwordx4 v[170:173], v4, s[16:17] offset:16     // 00000000A580: DC5C8010 AA100004
	global_load_dwordx4 v[174:177], v4, s[16:17] offset:64     // 00000000A588: DC5C8040 AE100004
	global_load_dwordx4 v[178:181], v4, s[16:17] offset:80     // 00000000A590: DC5C8050 B2100004
	global_load_dwordx4 v[182:185], v4, s[16:17] offset:128    // 00000000A598: DC5C8080 B6100004
	global_load_dwordx4 v[186:189], v4, s[16:17] offset:144    // 00000000A5A0: DC5C8090 BA100004
	s_add_u32 m0, s72, 0                                       // 00000000A5A8: 807C8048
	s_nop 0                                                    // 00000000A5AC: BF800000
	buffer_load_dwordx4 v127, s[60:63], 0 offen lds            // 00000000A5B0: E05D1000 800F007F
	s_add_u32 m0, s72, 0x2000                                  // 00000000A5B8: 807CFF48 00002000
	s_nop 0                                                    // 00000000A5C0: BF800000
	buffer_load_dwordx4 v128, s[60:63], 0 offen lds            // 00000000A5C4: E05D1000 800F0080
	s_add_u32 m0, s73, 0                                       // 00000000A5CC: 807C8049
	s_cmp_lt_u32 s78, 2                                        // 00000000A5D0: BF0A824E
	buffer_load_dwordx4 v129, s[64:67], 0 offen lds            // 00000000A5D4: E05D1000 80100081
	s_cbranch_scc1 11                                          // 00000000A5DC: BF85000B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x30c>
	s_or_b32 s0, s72, 0x4000                                   // 00000000A5E0: 8700FF48 00004000
	s_add_u32 m0, s0, 0                                        // 00000000A5E8: 807C8000
	s_nop 0                                                    // 00000000A5EC: BF800000
	buffer_load_dwordx4 v127, s[60:63], s74 offen lds          // 00000000A5F0: E05D1000 4A0F007F
	s_add_u32 m0, s0, 0x2000                                   // 00000000A5F8: 807CFF00 00002000
	s_nop 0                                                    // 00000000A600: BF800000
	buffer_load_dwordx4 v128, s[60:63], s74 offen lds          // 00000000A604: E05D1000 4A0F0080
	v_lshrrev_b32_e32 v4, 2, v0                                // 00000000A60C: 20080082
	s_waitcnt vmcnt(0)                                         // 00000000A610: BF8C0F70
	s_barrier                                                  // 00000000A614: BF8A0000
	s_cmp_eq_u32 s75, 0                                        // 00000000A618: BF06804B
	s_mov_b32 s35, 0                                           // 00000000A61C: BEA30080
	s_cbranch_scc1 1                                           // 00000000A620: BF850001 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x328>
	s_barrier                                                  // 00000000A624: BF8A0000
	s_mov_b32 s34, s59                                         // 00000000A628: BEA2003B
	v_mul_f32_e32 v118, s48, v2                                // 00000000A62C: 0AEC0430
	v_mov_b32_e32 v2, s14                                      // 00000000A630: 7E04020E
	v_lshrrev_b32_e32 v5, 4, v119                              // 00000000A634: 200AEE84
	s_lshl_b64 s[0:1], s[34:35], 8                             // 00000000A638: 8E808822
	v_lshlrev_b32_e32 v6, 3, v0                                // 00000000A63C: 240C0083
	v_mul_f32_e32 v132, s15, v2                                // 00000000A640: 0B08040F
	v_and_or_b32 v2, v0, 32, v5                                // 00000000A644: D2010002 04154100
	s_add_u32 s0, s42, s0                                      // 00000000A64C: 8000002A
	s_mul_i32 s76, s10, s18                                    // 00000000A650: 924C120A
	s_mov_b32 s10, 0x10000                                     // 00000000A654: BE8A00FF 00010000
	v_and_b32_e32 v5, 0x78, v6                                 // 00000000A65C: 260A0CFF 00000078
	v_lshlrev_b32_e32 v2, 7, v2                                // 00000000A664: 24040487
	s_addc_u32 s1, s43, s1                                     // 00000000A668: 8201012B
	s_mul_i32 s77, s11, s18                                    // 00000000A66C: 924D120B
	v_or3_b32 v133, v2, v5, s10                                // 00000000A670: D2020085 002A0B02
	s_add_u32 s10, s0, s76                                     // 00000000A678: 800A4C00
	s_addc_u32 s11, s1, 0                                      // 00000000A67C: 820B8001
	s_add_u32 s0, s77, s53                                     // 00000000A680: 8000354D
	s_lshl_b32 s0, s0, 2                                       // 00000000A684: 8E008200
	s_add_u32 s16, s44, s0                                     // 00000000A688: 8010002C
	v_xor_b32_e32 v3, v3, v4                                   // 00000000A68C: 2A060903
	s_addc_u32 s17, s45, 0                                     // 00000000A690: 8211802D
	v_and_b32_e32 v3, 1, v3                                    // 00000000A694: 26060681
	s_cmp_eq_u64 s[44:45], 0                                   // 00000000A698: BF12802C
	v_mov_b32_e32 v4, 0x38383838                               // 00000000A69C: 7E0802FF 38383838
	v_cmp_eq_u32_e32 vcc, 0, v3                                // 00000000A6A4: 7D940680
	s_cselect_b64 s[14:15], -1, 0                              // 00000000A6A8: 858E80C1
	s_and_b64 s[0:1], s[14:15], exec                           // 00000000A6AC: 86807E0E
	v_cndmask_b32_e32 v98, 0, v4, vcc                          // 00000000A6B0: 00C40880
	v_lshrrev_b32_e32 v131, 3, v0                              // 00000000A6B4: 21060083
	s_mov_b32 s79, 0                                           // 00000000A6B8: BECF0080
	v_mov_b32_e32 v99, v98                                     // 00000000A6BC: 7EC60362
	v_mov_b32_e32 v100, v98                                    // 00000000A6C0: 7EC80362
	v_mov_b32_e32 v101, v98                                    // 00000000A6C4: 7ECA0362
	v_mov_b32_e32 v102, v98                                    // 00000000A6C8: 7ECC0362
	v_mov_b32_e32 v103, v98                                    // 00000000A6CC: 7ECE0362
	v_mov_b32_e32 v104, v98                                    // 00000000A6D0: 7ED00362
	v_mov_b32_e32 v105, v98                                    // 00000000A6D4: 7ED20362
	s_cselect_b32 s19, 0, s17                                  // 00000000A6D8: 85131180
	s_cselect_b32 s18, 0, s16                                  // 00000000A6DC: 85121080
	s_lshr_b32 s48, s3, 6                                      // 00000000A6E0: 8F308603
	s_lshl_b32 s34, s7, 6                                      // 00000000A6E4: 8E228607
	s_lshl_b32 s20, s35, 14                                    // 00000000A6E8: 8E148E23
	s_and_b32 s21, s20, 0xc000                                 // 00000000A6EC: 8615FF14 0000C000
	v_or_b32_e32 v2, s21, v122                                 // 00000000A6F4: 2804F415
	s_waitcnt vmcnt(8)                                         // 00000000A6F8: BF8C0F78
	v_or_b32_e32 v3, s21, v123                                 // 00000000A6FC: 2806F615
	ds_read_b128 v[4:7], v2                                    // 00000000A700: D9FE0000 04000002
	ds_read_b128 v[8:11], v2 offset:16                         // 00000000A708: D9FE0010 08000002
	ds_read_b128 v[52:55], v2 offset:8192                      // 00000000A710: D9FE2000 34000002
	ds_read_b128 v[56:59], v2 offset:8208                      // 00000000A718: D9FE2010 38000002
	ds_read_b128 v[44:47], v3                                  // 00000000A720: D9FE0000 2C000003
	ds_read_b128 v[48:51], v3 offset:16                        // 00000000A728: D9FE0010 30000003
	ds_read_b128 v[36:39], v3 offset:8192                      // 00000000A730: D9FE2000 24000003
	ds_read_b128 v[40:43], v3 offset:8208                      // 00000000A738: D9FE2010 28000003
	s_mov_b64 s[0:1], s[18:19]                                 // 00000000A740: BE800112
	s_cmp_eq_u32 s48, 0                                        // 00000000A744: BF068030
	s_mov_b32 s16, 0                                           // 00000000A748: BE900080
	s_cbranch_scc1 107                                         // 00000000A74C: BF85006B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5fc>
	s_setprio 1                                                // 00000000A750: BF8F0001
	s_waitcnt lgkmcnt(0)                                       // 00000000A754: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[18:33], v[4:11], v[166:173], 0// 00000000A758: D3AE0012 02034D04
	v_add_u32_e32 v34, s21, v124                               // 00000000A760: 6844F815
	ds_read_b128 v[60:63], v34                                 // 00000000A764: D9FE0000 3C000022
	ds_read_b128 v[64:67], v34 offset:16                       // 00000000A76C: D9FE0010 40000022
	v_mfma_f32_32x32x64_f8f6f4 v[2:17], v[52:59], v[166:173], 0// 00000000A774: D3AE0002 02034D34
	ds_read_b128 v[52:55], v34 offset:8192                     // 00000000A77C: D9FE2000 34000022
	ds_read_b128 v[56:59], v34 offset:8208                     // 00000000A784: D9FE2010 38000022
	v_mfma_f32_32x32x64_f8f6f4 v[18:33], v[44:51], v[174:181], v[18:33]// 00000000A78C: D3AE0012 044B5D2C
	v_mfma_f32_32x32x64_f8f6f4 v[2:17], v[36:43], v[174:181], v[2:17]// 00000000A794: D3AE0002 040B5D24
	s_waitcnt lgkmcnt(0)                                       // 00000000A79C: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[18:33], v[60:67], v[182:189], v[18:33]// 00000000A7A0: D3AE0012 044B6D3C
	v_mfma_f32_32x32x64_f8f6f4 v[2:17], v[52:59], v[182:189], v[2:17]// 00000000A7A8: D3AE0002 040B6D34
	s_nop 3                                                    // 00000000A7B0: BF800003
	v_max_f32_e32 v34, v18, v19                                // 00000000A7B4: 16442712
	v_max3_f32 v34, v20, v21, v34                              // 00000000A7B8: D1D30022 048A2B14
	v_max3_f32 v34, v22, v23, v34                              // 00000000A7C0: D1D30022 048A2F16
	v_max3_f32 v34, v24, v25, v34                              // 00000000A7C8: D1D30022 048A3318
	v_max3_f32 v34, v26, v27, v34                              // 00000000A7D0: D1D30022 048A371A
	v_max3_f32 v34, v28, v29, v34                              // 00000000A7D8: D1D30022 048A3B1C
	v_max3_f32 v34, v30, v31, v34                              // 00000000A7E0: D1D30022 048A3F1E
	v_max3_f32 v34, v32, v33, v34                              // 00000000A7E8: D1D30022 048A4320
	s_nop 7                                                    // 00000000A7F0: BF800007
	v_max_f32_e32 v35, v2, v3                                  // 00000000A7F4: 16460702
	v_max3_f32 v35, v4, v5, v35                                // 00000000A7F8: D1D30023 048E0B04
	v_max3_f32 v35, v6, v7, v35                                // 00000000A800: D1D30023 048E0F06
	v_max3_f32 v35, v8, v9, v35                                // 00000000A808: D1D30023 048E1308
	v_max3_f32 v35, v10, v11, v35                              // 00000000A810: D1D30023 048E170A
	v_max3_f32 v35, v12, v13, v35                              // 00000000A818: D1D30023 048E1B0C
	v_max3_f32 v35, v14, v15, v35                              // 00000000A820: D1D30023 048E1F0E
	v_max3_f32 v35, v16, v17, v35                              // 00000000A828: D1D30023 048E2310
	v_max_f32_e32 v34, v34, v35                                // 00000000A830: 16444722
	v_mov_b32_e32 v35, v34                                     // 00000000A834: 7E460322
	s_nop 1                                                    // 00000000A838: BF800001
	v_permlane32_swap_b32_e32 v34, v35                         // 00000000A83C: 7E44B523
	v_max_f32_e32 v34, v34, v35                                // 00000000A840: 16444722
	v_mul_f32_e32 v137, v118, v34                              // 00000000A844: 0B124576
	v_fma_f32 v34, v34, v118, -v137                            // 00000000A848: D1CB0022 8626ED22
	v_floor_f32_e32 v34, v34                                   // 00000000A850: 7E443F22
	v_med3_f32 v34, v34, s70, 0                                // 00000000A854: D1D60022 02008D22
	v_cvt_i32_f32_e32 v35, v34                                 // 00000000A85C: 7E461122
	v_add_u32_e32 v136, 0x7f, v35                              // 00000000A860: 691046FF 0000007F
	v_lshlrev_b32_e32 v35, 23, v136                            // 00000000A868: 24471097
	v_add_f32_e32 v34, v137, v34                               // 00000000A86C: 02444589
	v_sub_f32_e32 v34, 0x40c00000, v34                         // 00000000A870: 044444FF 40C00000
	v_pk_fma_f32 v[96:97], v[32:33], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A878: D3B00060 0C8AED20
	v_pk_fma_f32 v[94:95], v[30:31], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A880: D3B0005E 0C8AED1E
	v_pk_fma_f32 v[92:93], v[28:29], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A888: D3B0005C 0C8AED1C
	v_pk_fma_f32 v[90:91], v[26:27], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A890: D3B0005A 0C8AED1A
	v_pk_fma_f32 v[88:89], v[24:25], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A898: D3B00058 0C8AED18
	v_pk_fma_f32 v[86:87], v[22:23], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A8A0: D3B00056 0C8AED16
	v_pk_fma_f32 v[84:85], v[20:21], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A8A8: D3B00054 0C8AED14
	v_pk_fma_f32 v[82:83], v[18:19], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A8B0: D3B00052 0C8AED12
	v_pk_fma_f32 v[80:81], v[16:17], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A8B8: D3B00050 0C8AED10
	v_pk_fma_f32 v[78:79], v[14:15], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A8C0: D3B0004E 0C8AED0E
	v_pk_fma_f32 v[76:77], v[12:13], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A8C8: D3B0004C 0C8AED0C
	v_pk_fma_f32 v[74:75], v[10:11], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A8D0: D3B0004A 0C8AED0A
	v_pk_fma_f32 v[72:73], v[8:9], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A8D8: D3B00048 0C8AED08
	v_pk_fma_f32 v[70:71], v[6:7], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A8E0: D3B00046 0C8AED06
	v_pk_fma_f32 v[68:69], v[4:5], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A8E8: D3B00044 0C8AED04
	v_pk_fma_f32 v[66:67], v[2:3], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A8F0: D3B00042 0C8AED02
	s_branch 288                                               // 00000000A8F8: BF820120 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa7c>
	s_setprio 1                                                // 00000000A8FC: BF8F0001
	s_waitcnt lgkmcnt(0)                                       // 00000000A900: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[18:33], v[4:11], v[166:173], 0// 00000000A904: D3AE0012 02034D04
	v_mfma_f32_32x32x64_f8f6f4 v[2:17], v[52:59], v[166:173], 0// 00000000A90C: D3AE0002 02034D34
	v_add_u32_e32 v34, s21, v124                               // 00000000A914: 6844F815
	ds_read_b128 v[60:63], v34                                 // 00000000A918: D9FE0000 3C000022
	ds_read_b128 v[64:67], v34 offset:16                       // 00000000A920: D9FE0010 40000022
	v_mfma_f32_32x32x64_f8f6f4 v[18:33], v[44:51], v[174:181], v[18:33]// 00000000A928: D3AE0012 044B5D2C
	ds_read_b128 v[52:55], v34 offset:8192                     // 00000000A930: D9FE2000 34000022
	ds_read_b128 v[56:59], v34 offset:8208                     // 00000000A938: D9FE2010 38000022
	v_mfma_f32_32x32x64_f8f6f4 v[2:17], v[36:43], v[174:181], v[2:17]// 00000000A940: D3AE0002 040B5D24
	s_waitcnt lgkmcnt(0)                                       // 00000000A948: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[18:33], v[60:67], v[182:189], v[18:33]// 00000000A94C: D3AE0012 044B6D3C
	v_mfma_f32_32x32x64_f8f6f4 v[2:17], v[52:59], v[182:189], v[2:17]// 00000000A954: D3AE0002 040B6D34
	s_sub_u32 s16, s3, s16                                     // 00000000A95C: 80901003
	s_sub_i32 s16, s16, 0                                      // 00000000A960: 81908010
	s_cmp_ge_i32 s16, 32                                       // 00000000A964: BF03A010
	s_cbranch_scc1 87                                          // 00000000A968: BF850057 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7c8>
	s_cmp_lt_i32 s16, 0                                        // 00000000A96C: BF048010
	s_cbranch_scc1 68                                          // 00000000A970: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x784>
	v_add_u32_e32 v34, s16, v119                               // 00000000A974: 6844EE10
	v_and_b32_e32 v35, 4, v131                                 // 00000000A978: 26470684
	v_sub_u32_e32 v34, v34, v35                                // 00000000A97C: 6A444722
	v_cmp_gt_i32_e32 vcc, 0, v34                               // 00000000A980: 7D884480
	s_nop 5                                                    // 00000000A984: BF800005
	v_cndmask_b32_e64 v18, v18, v126, vcc                      // 00000000A988: D1000012 01AAFD12
	v_cmp_gt_i32_e32 vcc, 1, v34                               // 00000000A990: 7D884481
	s_nop 1                                                    // 00000000A994: BF800001
	v_cndmask_b32_e64 v19, v19, v126, vcc                      // 00000000A998: D1000013 01AAFD13
	v_cmp_gt_i32_e32 vcc, 2, v34                               // 00000000A9A0: 7D884482
	s_nop 1                                                    // 00000000A9A4: BF800001
	v_cndmask_b32_e64 v20, v20, v126, vcc                      // 00000000A9A8: D1000014 01AAFD14
	v_cmp_gt_i32_e32 vcc, 3, v34                               // 00000000A9B0: 7D884483
	s_nop 1                                                    // 00000000A9B4: BF800001
	v_cndmask_b32_e64 v21, v21, v126, vcc                      // 00000000A9B8: D1000015 01AAFD15
	v_cmp_gt_i32_e32 vcc, 8, v34                               // 00000000A9C0: 7D884488
	s_nop 1                                                    // 00000000A9C4: BF800001
	v_cndmask_b32_e64 v22, v22, v126, vcc                      // 00000000A9C8: D1000016 01AAFD16
	v_cmp_gt_i32_e32 vcc, 9, v34                               // 00000000A9D0: 7D884489
	s_nop 1                                                    // 00000000A9D4: BF800001
	v_cndmask_b32_e64 v23, v23, v126, vcc                      // 00000000A9D8: D1000017 01AAFD17
	v_cmp_gt_i32_e32 vcc, 10, v34                              // 00000000A9E0: 7D88448A
	s_nop 1                                                    // 00000000A9E4: BF800001
	v_cndmask_b32_e64 v24, v24, v126, vcc                      // 00000000A9E8: D1000018 01AAFD18
	v_cmp_gt_i32_e32 vcc, 11, v34                              // 00000000A9F0: 7D88448B
	s_nop 1                                                    // 00000000A9F4: BF800001
	v_cndmask_b32_e64 v25, v25, v126, vcc                      // 00000000A9F8: D1000019 01AAFD19
	v_cmp_gt_i32_e32 vcc, 16, v34                              // 00000000AA00: 7D884490
	s_nop 1                                                    // 00000000AA04: BF800001
	v_cndmask_b32_e64 v26, v26, v126, vcc                      // 00000000AA08: D100001A 01AAFD1A
	v_cmp_gt_i32_e32 vcc, 17, v34                              // 00000000AA10: 7D884491
	s_nop 1                                                    // 00000000AA14: BF800001
	v_cndmask_b32_e64 v27, v27, v126, vcc                      // 00000000AA18: D100001B 01AAFD1B
	v_cmp_gt_i32_e32 vcc, 18, v34                              // 00000000AA20: 7D884492
	s_nop 1                                                    // 00000000AA24: BF800001
	v_cndmask_b32_e64 v28, v28, v126, vcc                      // 00000000AA28: D100001C 01AAFD1C
	v_cmp_gt_i32_e32 vcc, 19, v34                              // 00000000AA30: 7D884493
	s_nop 1                                                    // 00000000AA34: BF800001
	v_cndmask_b32_e64 v29, v29, v126, vcc                      // 00000000AA38: D100001D 01AAFD1D
	v_cmp_gt_i32_e32 vcc, 24, v34                              // 00000000AA40: 7D884498
	s_nop 1                                                    // 00000000AA44: BF800001
	v_cndmask_b32_e64 v30, v30, v126, vcc                      // 00000000AA48: D100001E 01AAFD1E
	v_cmp_gt_i32_e32 vcc, 25, v34                              // 00000000AA50: 7D884499
	s_nop 1                                                    // 00000000AA54: BF800001
	v_cndmask_b32_e64 v31, v31, v126, vcc                      // 00000000AA58: D100001F 01AAFD1F
	v_cmp_gt_i32_e32 vcc, 26, v34                              // 00000000AA60: 7D88449A
	s_nop 1                                                    // 00000000AA64: BF800001
	v_cndmask_b32_e64 v32, v32, v126, vcc                      // 00000000AA68: D1000020 01AAFD20
	v_cmp_gt_i32_e32 vcc, 27, v34                              // 00000000AA70: 7D88449B
	s_nop 1                                                    // 00000000AA74: BF800001
	v_cndmask_b32_e64 v33, v33, v126, vcc                      // 00000000AA78: D1000021 01AAFD21
	s_branch 17                                                // 00000000AA80: BF820011 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7c8>
	s_nop 9                                                    // 00000000AA84: BF800009
	v_mov_b32_e32 v18, v126                                    // 00000000AA88: 7E24037E
	v_mov_b32_e32 v19, v126                                    // 00000000AA8C: 7E26037E
	v_mov_b32_e32 v20, v126                                    // 00000000AA90: 7E28037E
	v_mov_b32_e32 v21, v126                                    // 00000000AA94: 7E2A037E
	v_mov_b32_e32 v22, v126                                    // 00000000AA98: 7E2C037E
	v_mov_b32_e32 v23, v126                                    // 00000000AA9C: 7E2E037E
	v_mov_b32_e32 v24, v126                                    // 00000000AAA0: 7E30037E
	v_mov_b32_e32 v25, v126                                    // 00000000AAA4: 7E32037E
	v_mov_b32_e32 v26, v126                                    // 00000000AAA8: 7E34037E
	v_mov_b32_e32 v27, v126                                    // 00000000AAAC: 7E36037E
	v_mov_b32_e32 v28, v126                                    // 00000000AAB0: 7E38037E
	v_mov_b32_e32 v29, v126                                    // 00000000AAB4: 7E3A037E
	v_mov_b32_e32 v30, v126                                    // 00000000AAB8: 7E3C037E
	v_mov_b32_e32 v31, v126                                    // 00000000AABC: 7E3E037E
	v_mov_b32_e32 v32, v126                                    // 00000000AAC0: 7E40037E
	v_mov_b32_e32 v33, v126                                    // 00000000AAC4: 7E42037E
	s_mov_b32 s16, 0                                           // 00000000AAC8: BE900080
	s_sub_u32 s16, s3, s16                                     // 00000000AACC: 80901003
	s_sub_i32 s16, s16, 32                                     // 00000000AAD0: 8190A010
	s_cmp_ge_i32 s16, 32                                       // 00000000AAD4: BF03A010
	s_cbranch_scc1 87                                          // 00000000AAD8: BF850057 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x938>
	s_cmp_lt_i32 s16, 0                                        // 00000000AADC: BF048010
	s_cbranch_scc1 68                                          // 00000000AAE0: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8f4>
	v_add_u32_e32 v34, s16, v119                               // 00000000AAE4: 6844EE10
	v_and_b32_e32 v35, 4, v131                                 // 00000000AAE8: 26470684
	v_sub_u32_e32 v34, v34, v35                                // 00000000AAEC: 6A444722
	v_cmp_gt_i32_e32 vcc, 0, v34                               // 00000000AAF0: 7D884480
	s_nop 8                                                    // 00000000AAF4: BF800008
	v_cndmask_b32_e64 v2, v2, v126, vcc                        // 00000000AAF8: D1000002 01AAFD02
	v_cmp_gt_i32_e32 vcc, 1, v34                               // 00000000AB00: 7D884481
	s_nop 1                                                    // 00000000AB04: BF800001
	v_cndmask_b32_e64 v3, v3, v126, vcc                        // 00000000AB08: D1000003 01AAFD03
	v_cmp_gt_i32_e32 vcc, 2, v34                               // 00000000AB10: 7D884482
	s_nop 1                                                    // 00000000AB14: BF800001
	v_cndmask_b32_e64 v4, v4, v126, vcc                        // 00000000AB18: D1000004 01AAFD04
	v_cmp_gt_i32_e32 vcc, 3, v34                               // 00000000AB20: 7D884483
	s_nop 1                                                    // 00000000AB24: BF800001
	v_cndmask_b32_e64 v5, v5, v126, vcc                        // 00000000AB28: D1000005 01AAFD05
	v_cmp_gt_i32_e32 vcc, 8, v34                               // 00000000AB30: 7D884488
	s_nop 1                                                    // 00000000AB34: BF800001
	v_cndmask_b32_e64 v6, v6, v126, vcc                        // 00000000AB38: D1000006 01AAFD06
	v_cmp_gt_i32_e32 vcc, 9, v34                               // 00000000AB40: 7D884489
	s_nop 1                                                    // 00000000AB44: BF800001
	v_cndmask_b32_e64 v7, v7, v126, vcc                        // 00000000AB48: D1000007 01AAFD07
	v_cmp_gt_i32_e32 vcc, 10, v34                              // 00000000AB50: 7D88448A
	s_nop 1                                                    // 00000000AB54: BF800001
	v_cndmask_b32_e64 v8, v8, v126, vcc                        // 00000000AB58: D1000008 01AAFD08
	v_cmp_gt_i32_e32 vcc, 11, v34                              // 00000000AB60: 7D88448B
	s_nop 1                                                    // 00000000AB64: BF800001
	v_cndmask_b32_e64 v9, v9, v126, vcc                        // 00000000AB68: D1000009 01AAFD09
	v_cmp_gt_i32_e32 vcc, 16, v34                              // 00000000AB70: 7D884490
	s_nop 1                                                    // 00000000AB74: BF800001
	v_cndmask_b32_e64 v10, v10, v126, vcc                      // 00000000AB78: D100000A 01AAFD0A
	v_cmp_gt_i32_e32 vcc, 17, v34                              // 00000000AB80: 7D884491
	s_nop 1                                                    // 00000000AB84: BF800001
	v_cndmask_b32_e64 v11, v11, v126, vcc                      // 00000000AB88: D100000B 01AAFD0B
	v_cmp_gt_i32_e32 vcc, 18, v34                              // 00000000AB90: 7D884492
	s_nop 1                                                    // 00000000AB94: BF800001
	v_cndmask_b32_e64 v12, v12, v126, vcc                      // 00000000AB98: D100000C 01AAFD0C
	v_cmp_gt_i32_e32 vcc, 19, v34                              // 00000000ABA0: 7D884493
	s_nop 1                                                    // 00000000ABA4: BF800001
	v_cndmask_b32_e64 v13, v13, v126, vcc                      // 00000000ABA8: D100000D 01AAFD0D
	v_cmp_gt_i32_e32 vcc, 24, v34                              // 00000000ABB0: 7D884498
	s_nop 1                                                    // 00000000ABB4: BF800001
	v_cndmask_b32_e64 v14, v14, v126, vcc                      // 00000000ABB8: D100000E 01AAFD0E
	v_cmp_gt_i32_e32 vcc, 25, v34                              // 00000000ABC0: 7D884499
	s_nop 1                                                    // 00000000ABC4: BF800001
	v_cndmask_b32_e64 v15, v15, v126, vcc                      // 00000000ABC8: D100000F 01AAFD0F
	v_cmp_gt_i32_e32 vcc, 26, v34                              // 00000000ABD0: 7D88449A
	s_nop 1                                                    // 00000000ABD4: BF800001
	v_cndmask_b32_e64 v16, v16, v126, vcc                      // 00000000ABD8: D1000010 01AAFD10
	v_cmp_gt_i32_e32 vcc, 27, v34                              // 00000000ABE0: 7D88449B
	s_nop 1                                                    // 00000000ABE4: BF800001
	v_cndmask_b32_e64 v17, v17, v126, vcc                      // 00000000ABE8: D1000011 01AAFD11
	s_branch 17                                                // 00000000ABF0: BF820011 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x938>
	s_nop 12                                                   // 00000000ABF4: BF80000C
	v_mov_b32_e32 v2, v126                                     // 00000000ABF8: 7E04037E
	v_mov_b32_e32 v3, v126                                     // 00000000ABFC: 7E06037E
	v_mov_b32_e32 v4, v126                                     // 00000000AC00: 7E08037E
	v_mov_b32_e32 v5, v126                                     // 00000000AC04: 7E0A037E
	v_mov_b32_e32 v6, v126                                     // 00000000AC08: 7E0C037E
	v_mov_b32_e32 v7, v126                                     // 00000000AC0C: 7E0E037E
	v_mov_b32_e32 v8, v126                                     // 00000000AC10: 7E10037E
	v_mov_b32_e32 v9, v126                                     // 00000000AC14: 7E12037E
	v_mov_b32_e32 v10, v126                                    // 00000000AC18: 7E14037E
	v_mov_b32_e32 v11, v126                                    // 00000000AC1C: 7E16037E
	v_mov_b32_e32 v12, v126                                    // 00000000AC20: 7E18037E
	v_mov_b32_e32 v13, v126                                    // 00000000AC24: 7E1A037E
	v_mov_b32_e32 v14, v126                                    // 00000000AC28: 7E1C037E
	v_mov_b32_e32 v15, v126                                    // 00000000AC2C: 7E1E037E
	v_mov_b32_e32 v16, v126                                    // 00000000AC30: 7E20037E
	v_mov_b32_e32 v17, v126                                    // 00000000AC34: 7E22037E
	v_max_f32_e32 v34, v18, v19                                // 00000000AC38: 16442712
	v_max3_f32 v34, v20, v21, v34                              // 00000000AC3C: D1D30022 048A2B14
	v_max3_f32 v34, v22, v23, v34                              // 00000000AC44: D1D30022 048A2F16
	v_max3_f32 v34, v24, v25, v34                              // 00000000AC4C: D1D30022 048A3318
	v_max3_f32 v34, v26, v27, v34                              // 00000000AC54: D1D30022 048A371A
	v_max3_f32 v34, v28, v29, v34                              // 00000000AC5C: D1D30022 048A3B1C
	v_max3_f32 v34, v30, v31, v34                              // 00000000AC64: D1D30022 048A3F1E
	v_max3_f32 v34, v32, v33, v34                              // 00000000AC6C: D1D30022 048A4320
	s_nop 6                                                    // 00000000AC74: BF800006
	v_max_f32_e32 v35, v2, v3                                  // 00000000AC78: 16460702
	v_max3_f32 v35, v4, v5, v35                                // 00000000AC7C: D1D30023 048E0B04
	v_max3_f32 v35, v6, v7, v35                                // 00000000AC84: D1D30023 048E0F06
	v_max3_f32 v35, v8, v9, v35                                // 00000000AC8C: D1D30023 048E1308
	v_max3_f32 v35, v10, v11, v35                              // 00000000AC94: D1D30023 048E170A
	v_max3_f32 v35, v12, v13, v35                              // 00000000AC9C: D1D30023 048E1B0C
	v_max3_f32 v35, v14, v15, v35                              // 00000000ACA4: D1D30023 048E1F0E
	v_max3_f32 v35, v16, v17, v35                              // 00000000ACAC: D1D30023 048E2310
	v_max_f32_e32 v34, v34, v35                                // 00000000ACB4: 16444722
	v_mov_b32_e32 v35, v34                                     // 00000000ACB8: 7E460322
	s_nop 1                                                    // 00000000ACBC: BF800001
	v_permlane32_swap_b32_e32 v34, v35                         // 00000000ACC0: 7E44B523
	v_max_f32_e32 v34, v34, v35                                // 00000000ACC4: 16444722
	v_mul_f32_e32 v137, v118, v34                              // 00000000ACC8: 0B124576
	v_fma_f32 v34, v34, v118, -v137                            // 00000000ACCC: D1CB0022 8626ED22
	v_floor_f32_e32 v34, v34                                   // 00000000ACD4: 7E443F22
	v_med3_f32 v34, v34, s70, 0                                // 00000000ACD8: D1D60022 02008D22
	v_cvt_i32_f32_e32 v35, v34                                 // 00000000ACE0: 7E461122
	v_add_u32_e32 v136, 0x7f, v35                              // 00000000ACE4: 691046FF 0000007F
	v_lshlrev_b32_e32 v35, 23, v136                            // 00000000ACEC: 24471097
	v_add_f32_e32 v34, v137, v34                               // 00000000ACF0: 02444589
	v_sub_f32_e32 v34, 0x40c00000, v34                         // 00000000ACF4: 044444FF 40C00000
	v_pk_fma_f32 v[96:97], v[32:33], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000ACFC: D3B00060 0C8AED20
	v_pk_fma_f32 v[94:95], v[30:31], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AD04: D3B0005E 0C8AED1E
	v_pk_fma_f32 v[92:93], v[28:29], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AD0C: D3B0005C 0C8AED1C
	v_pk_fma_f32 v[90:91], v[26:27], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AD14: D3B0005A 0C8AED1A
	v_pk_fma_f32 v[88:89], v[24:25], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AD1C: D3B00058 0C8AED18
	v_pk_fma_f32 v[86:87], v[22:23], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AD24: D3B00056 0C8AED16
	v_pk_fma_f32 v[84:85], v[20:21], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AD2C: D3B00054 0C8AED14
	v_pk_fma_f32 v[82:83], v[18:19], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AD34: D3B00052 0C8AED12
	v_pk_fma_f32 v[80:81], v[16:17], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AD3C: D3B00050 0C8AED10
	v_pk_fma_f32 v[78:79], v[14:15], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AD44: D3B0004E 0C8AED0E
	v_pk_fma_f32 v[76:77], v[12:13], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AD4C: D3B0004C 0C8AED0C
	v_pk_fma_f32 v[74:75], v[10:11], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AD54: D3B0004A 0C8AED0A
	v_pk_fma_f32 v[72:73], v[8:9], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AD5C: D3B00048 0C8AED08
	v_pk_fma_f32 v[70:71], v[6:7], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AD64: D3B00046 0C8AED06
	v_pk_fma_f32 v[68:69], v[4:5], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AD6C: D3B00044 0C8AED04
	v_pk_fma_f32 v[66:67], v[2:3], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AD74: D3B00042 0C8AED02
	s_waitcnt vmcnt(0)                                         // 00000000AD7C: BF8C0F70
	s_cmp_eq_u32 s75, 0                                        // 00000000AD80: BF06804B
	s_cselect_b64 s[68:69], -1, 0                              // 00000000AD84: 85C480C1
	s_cmp_lg_u32 s75, 0                                        // 00000000AD88: BF07804B
	s_mov_b32 s67, s63                                         // 00000000AD8C: BEC3003F
	s_cbranch_scc1 37                                          // 00000000AD90: BF850025 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb28>
	s_cmp_ge_u32 s78, 2                                        // 00000000AD94: BF09824E
	s_cbranch_scc1 200                                         // 00000000AD98: BF8500C8 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xdbc>
	s_cmp_ge_u32 s78, 3                                        // 00000000AD9C: BF09834E
	s_cbranch_scc1 216                                         // 00000000ADA0: BF8500D8 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xe04>
	s_cmp_lt_u32 s78, 4                                        // 00000000ADA4: BF0A844E
	s_cbranch_scc1 30                                          // 00000000ADA8: BF85001E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb24>
	s_add_u32 s20, s20, 0xc000                                 // 00000000ADAC: 8014FF14 0000C000
	s_and_b32 s20, s20, 0xc000                                 // 00000000ADB4: 8614FF14 0000C000
	s_mul_i32 s16, s6, 0xc0                                    // 00000000ADBC: 9210FF06 000000C0
	s_or_b32 s20, s72, s20                                     // 00000000ADC4: 87141448
	s_add_u32 m0, s20, 0                                       // 00000000ADC8: 807C8014
	s_mul_i32 s17, s6, 0xd0                                    // 00000000ADCC: 9211FF06 000000D0
	buffer_load_dwordx4 v127, s[60:63], s16 offen lds          // 00000000ADD4: E05D1000 100F007F
	s_add_u32 m0, s20, 0x1000                                  // 00000000ADDC: 807CFF14 00001000
	s_mul_i32 s18, s6, 0xe0                                    // 00000000ADE4: 9212FF06 000000E0
	s_mul_i32 s19, s6, 0xf0                                    // 00000000ADEC: 9213FF06 000000F0
	buffer_load_dwordx4 v127, s[60:63], s17 offen lds          // 00000000ADF4: E05D1000 110F007F
	s_add_u32 m0, s20, 0x2000                                  // 00000000ADFC: 807CFF14 00002000
	s_nop 0                                                    // 00000000AE04: BF800000
	buffer_load_dwordx4 v127, s[60:63], s18 offen lds          // 00000000AE08: E05D1000 120F007F
	s_add_u32 m0, s20, 0x3000                                  // 00000000AE10: 807CFF14 00003000
	s_nop 0                                                    // 00000000AE18: BF800000
	buffer_load_dwordx4 v127, s[60:63], s19 offen lds          // 00000000AE1C: E05D1000 130F007F
	s_waitcnt vmcnt(0)                                         // 00000000AE24: BF8C0F70
	s_barrier                                                  // 00000000AE28: BF8A0000
	s_add_u32 s83, s78, -1                                     // 00000000AE2C: 8053C14E
	s_lshl_b32 s80, s6, 8                                      // 00000000AE30: 8E508806
	s_lshl_b32 s81, s7, 7                                      // 00000000AE34: 8E518707
	s_mul_i32 s82, s83, s74                                    // 00000000AE38: 92524A53
	s_cmp_lt_i32 s35, 1                                        // 00000000AE3C: BF048123
	s_mul_i32 s83, s83, s34                                    // 00000000AE40: 92532253
	s_cbranch_scc1 52                                          // 00000000AE44: BF850034 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc18>
	s_cmp_lt_i32 s35, 2                                        // 00000000AE48: BF048223
	s_cbranch_scc0 102                                         // 00000000AE4C: BF840066 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xce8>
	s_mov_b32 s16, 0                                           // 00000000AE50: BE900080
	s_mov_b32 s17, s16                                         // 00000000AE54: BE910010
	s_mov_b32 s18, s16                                         // 00000000AE58: BE920010
	s_mov_b32 s19, s16                                         // 00000000AE5C: BE930010
	s_mov_b32 s20, s16                                         // 00000000AE60: BE940010
	s_mov_b32 s21, s16                                         // 00000000AE64: BE950010
	s_mov_b32 s22, s16                                         // 00000000AE68: BE960010
	s_mov_b32 s23, s16                                         // 00000000AE6C: BE970010
	s_mov_b32 s24, s16                                         // 00000000AE70: BE980010
	s_mov_b32 s25, s16                                         // 00000000AE74: BE990010
	s_mov_b32 s26, s16                                         // 00000000AE78: BE9A0010
	s_mov_b32 s27, s16                                         // 00000000AE7C: BE9B0010
	s_mov_b32 s28, s16                                         // 00000000AE80: BE9C0010
	s_mov_b32 s29, s16                                         // 00000000AE84: BE9D0010
	s_mov_b32 s30, s16                                         // 00000000AE88: BE9E0010
	s_mov_b32 s31, s16                                         // 00000000AE8C: BE9F0010
	v_mov_b64_e32 v[64:65], s[30:31]                           // 00000000AE90: 7E80701E
	v_mov_b64_e32 v[62:63], s[28:29]                           // 00000000AE94: 7E7C701C
	v_mov_b64_e32 v[60:61], s[26:27]                           // 00000000AE98: 7E78701A
	v_mov_b64_e32 v[58:59], s[24:25]                           // 00000000AE9C: 7E747018
	v_mov_b64_e32 v[56:57], s[22:23]                           // 00000000AEA0: 7E707016
	v_mov_b64_e32 v[54:55], s[20:21]                           // 00000000AEA4: 7E6C7014
	v_mov_b64_e32 v[52:53], s[18:19]                           // 00000000AEA8: 7E687012
	v_mov_b64_e32 v[50:51], s[16:17]                           // 00000000AEAC: 7E647010
	v_mov_b32_e32 v135, 0                                      // 00000000AEB0: 7F0E0280
	v_mov_b64_e32 v[34:35], v[50:51]                           // 00000000AEB4: 7E447132
	v_mov_b64_e32 v[36:37], v[52:53]                           // 00000000AEB8: 7E487134
	v_mov_b64_e32 v[38:39], v[54:55]                           // 00000000AEBC: 7E4C7136
	v_mov_b64_e32 v[40:41], v[56:57]                           // 00000000AEC0: 7E507138
	v_mov_b64_e32 v[42:43], v[58:59]                           // 00000000AEC4: 7E54713A
	v_mov_b64_e32 v[44:45], v[60:61]                           // 00000000AEC8: 7E58713C
	v_mov_b64_e32 v[46:47], v[62:63]                           // 00000000AECC: 7E5C713E
	v_mov_b64_e32 v[48:49], v[64:65]                           // 00000000AED0: 7E607140
	v_mov_b64_e32 v[18:19], v[50:51]                           // 00000000AED4: 7E247132
	v_mov_b64_e32 v[20:21], v[52:53]                           // 00000000AED8: 7E287134
	v_mov_b64_e32 v[22:23], v[54:55]                           // 00000000AEDC: 7E2C7136
	v_mov_b64_e32 v[24:25], v[56:57]                           // 00000000AEE0: 7E307138
	v_mov_b64_e32 v[26:27], v[58:59]                           // 00000000AEE4: 7E34713A
	v_mov_b64_e32 v[28:29], v[60:61]                           // 00000000AEE8: 7E38713C
	v_mov_b64_e32 v[30:31], v[62:63]                           // 00000000AEEC: 7E3C713E
	v_mov_b64_e32 v[32:33], v[64:65]                           // 00000000AEF0: 7E407140
	v_mov_b64_e32 v[2:3], v[50:51]                             // 00000000AEF4: 7E047132
	v_mov_b64_e32 v[4:5], v[52:53]                             // 00000000AEF8: 7E087134
	v_mov_b64_e32 v[6:7], v[54:55]                             // 00000000AEFC: 7E0C7136
	v_mov_b64_e32 v[8:9], v[56:57]                             // 00000000AF00: 7E107138
	v_mov_b64_e32 v[10:11], v[58:59]                           // 00000000AF04: 7E14713A
	v_mov_b64_e32 v[12:13], v[60:61]                           // 00000000AF08: 7E18713C
	v_mov_b64_e32 v[14:15], v[62:63]                           // 00000000AF0C: 7E1C713E
	v_mov_b64_e32 v[16:17], v[64:65]                           // 00000000AF10: 7E207140
	s_branch 573                                               // 00000000AF14: BF82023D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x150c>
	s_mov_b32 s16, 0                                           // 00000000AF18: BE900080
	s_cmp_lg_u32 s35, 0                                        // 00000000AF1C: BF078023
	s_mov_b32 s17, s16                                         // 00000000AF20: BE910010
	s_mov_b32 s18, s16                                         // 00000000AF24: BE920010
	s_mov_b32 s19, s16                                         // 00000000AF28: BE930010
	s_mov_b32 s20, s16                                         // 00000000AF2C: BE940010
	s_mov_b32 s21, s16                                         // 00000000AF30: BE950010
	s_mov_b32 s22, s16                                         // 00000000AF34: BE960010
	s_mov_b32 s23, s16                                         // 00000000AF38: BE970010
	s_mov_b32 s24, s16                                         // 00000000AF3C: BE980010
	s_mov_b32 s25, s16                                         // 00000000AF40: BE990010
	s_mov_b32 s26, s16                                         // 00000000AF44: BE9A0010
	s_mov_b32 s27, s16                                         // 00000000AF48: BE9B0010
	s_mov_b32 s28, s16                                         // 00000000AF4C: BE9C0010
	s_mov_b32 s29, s16                                         // 00000000AF50: BE9D0010
	s_mov_b32 s30, s16                                         // 00000000AF54: BE9E0010
	s_mov_b32 s31, s16                                         // 00000000AF58: BE9F0010
	s_cbranch_scc0 169                                         // 00000000AF5C: BF8400A9 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf04>
	v_mov_b64_e32 v[64:65], s[30:31]                           // 00000000AF60: 7E80701E
	v_mov_b64_e32 v[62:63], s[28:29]                           // 00000000AF64: 7E7C701C
	v_mov_b64_e32 v[60:61], s[26:27]                           // 00000000AF68: 7E78701A
	v_mov_b64_e32 v[58:59], s[24:25]                           // 00000000AF6C: 7E747018
	v_mov_b64_e32 v[56:57], s[22:23]                           // 00000000AF70: 7E707016
	v_mov_b64_e32 v[54:55], s[20:21]                           // 00000000AF74: 7E6C7014
	v_mov_b64_e32 v[52:53], s[18:19]                           // 00000000AF78: 7E687012
	v_mov_b64_e32 v[50:51], s[16:17]                           // 00000000AF7C: 7E647010
	v_mov_b32_e32 v135, 0                                      // 00000000AF80: 7F0E0280
	v_mov_b64_e32 v[34:35], v[50:51]                           // 00000000AF84: 7E447132
	v_mov_b64_e32 v[36:37], v[52:53]                           // 00000000AF88: 7E487134
	v_mov_b64_e32 v[38:39], v[54:55]                           // 00000000AF8C: 7E4C7136
	v_mov_b64_e32 v[40:41], v[56:57]                           // 00000000AF90: 7E507138
	v_mov_b64_e32 v[42:43], v[58:59]                           // 00000000AF94: 7E54713A
	v_mov_b64_e32 v[44:45], v[60:61]                           // 00000000AF98: 7E58713C
	v_mov_b64_e32 v[46:47], v[62:63]                           // 00000000AF9C: 7E5C713E
	v_mov_b64_e32 v[48:49], v[64:65]                           // 00000000AFA0: 7E607140
	v_mov_b64_e32 v[18:19], v[50:51]                           // 00000000AFA4: 7E247132
	v_mov_b64_e32 v[20:21], v[52:53]                           // 00000000AFA8: 7E287134
	v_mov_b64_e32 v[22:23], v[54:55]                           // 00000000AFAC: 7E2C7136
	v_mov_b64_e32 v[24:25], v[56:57]                           // 00000000AFB0: 7E307138
	v_mov_b64_e32 v[26:27], v[58:59]                           // 00000000AFB4: 7E34713A
	v_mov_b64_e32 v[28:29], v[60:61]                           // 00000000AFB8: 7E38713C
	v_mov_b64_e32 v[30:31], v[62:63]                           // 00000000AFBC: 7E3C713E
	v_mov_b64_e32 v[32:33], v[64:65]                           // 00000000AFC0: 7E407140
	v_mov_b64_e32 v[2:3], v[50:51]                             // 00000000AFC4: 7E047132
	v_mov_b64_e32 v[4:5], v[52:53]                             // 00000000AFC8: 7E087134
	v_mov_b64_e32 v[6:7], v[54:55]                             // 00000000AFCC: 7E0C7136
	v_mov_b64_e32 v[8:9], v[56:57]                             // 00000000AFD0: 7E107138
	v_mov_b64_e32 v[10:11], v[58:59]                           // 00000000AFD4: 7E14713A
	v_mov_b64_e32 v[12:13], v[60:61]                           // 00000000AFD8: 7E18713C
	v_mov_b64_e32 v[14:15], v[62:63]                           // 00000000AFDC: 7E1C713E
	v_mov_b64_e32 v[16:17], v[64:65]                           // 00000000AFE0: 7E207140
	s_branch 1224                                              // 00000000AFE4: BF8204C8 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2008>
	s_mov_b32 s16, 0                                           // 00000000AFE8: BE900080
	s_cmp_eq_u32 s35, 2                                        // 00000000AFEC: BF068223
	s_mov_b32 s17, s16                                         // 00000000AFF0: BE910010
	s_mov_b32 s18, s16                                         // 00000000AFF4: BE920010
	s_mov_b32 s19, s16                                         // 00000000AFF8: BE930010
	s_mov_b32 s20, s16                                         // 00000000AFFC: BE940010
	s_mov_b32 s21, s16                                         // 00000000B000: BE950010
	s_mov_b32 s22, s16                                         // 00000000B004: BE960010
	s_mov_b32 s23, s16                                         // 00000000B008: BE970010
	s_mov_b32 s24, s16                                         // 00000000B00C: BE980010
	s_mov_b32 s25, s16                                         // 00000000B010: BE990010
	s_mov_b32 s26, s16                                         // 00000000B014: BE9A0010
	s_mov_b32 s27, s16                                         // 00000000B018: BE9B0010
	s_mov_b32 s28, s16                                         // 00000000B01C: BE9C0010
	s_mov_b32 s29, s16                                         // 00000000B020: BE9D0010
	s_mov_b32 s30, s16                                         // 00000000B024: BE9E0010
	s_mov_b32 s31, s16                                         // 00000000B028: BE9F0010
	s_cbranch_scc0 83                                          // 00000000B02C: BF840053 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xe7c>
	v_mov_b64_e32 v[64:65], s[30:31]                           // 00000000B030: 7E80701E
	v_mov_b64_e32 v[62:63], s[28:29]                           // 00000000B034: 7E7C701C
	v_mov_b64_e32 v[60:61], s[26:27]                           // 00000000B038: 7E78701A
	v_mov_b64_e32 v[58:59], s[24:25]                           // 00000000B03C: 7E747018
	v_mov_b64_e32 v[56:57], s[22:23]                           // 00000000B040: 7E707016
	v_mov_b64_e32 v[54:55], s[20:21]                           // 00000000B044: 7E6C7014
	v_mov_b64_e32 v[52:53], s[18:19]                           // 00000000B048: 7E687012
	v_mov_b64_e32 v[50:51], s[16:17]                           // 00000000B04C: 7E647010
	v_mov_b32_e32 v135, 0                                      // 00000000B050: 7F0E0280
	v_mov_b32_e32 v134, v137                                   // 00000000B054: 7F0C0389
	v_mov_b64_e32 v[34:35], v[50:51]                           // 00000000B058: 7E447132
	v_mov_b64_e32 v[36:37], v[52:53]                           // 00000000B05C: 7E487134
	v_mov_b64_e32 v[38:39], v[54:55]                           // 00000000B060: 7E4C7136
	v_mov_b64_e32 v[40:41], v[56:57]                           // 00000000B064: 7E507138
	v_mov_b64_e32 v[42:43], v[58:59]                           // 00000000B068: 7E54713A
	v_mov_b64_e32 v[44:45], v[60:61]                           // 00000000B06C: 7E58713C
	v_mov_b64_e32 v[46:47], v[62:63]                           // 00000000B070: 7E5C713E
	v_mov_b64_e32 v[48:49], v[64:65]                           // 00000000B074: 7E607140
	v_mov_b64_e32 v[18:19], v[50:51]                           // 00000000B078: 7E247132
	v_mov_b64_e32 v[20:21], v[52:53]                           // 00000000B07C: 7E287134
	v_mov_b64_e32 v[22:23], v[54:55]                           // 00000000B080: 7E2C7136
	v_mov_b64_e32 v[24:25], v[56:57]                           // 00000000B084: 7E307138
	v_mov_b64_e32 v[26:27], v[58:59]                           // 00000000B088: 7E34713A
	v_mov_b64_e32 v[28:29], v[60:61]                           // 00000000B08C: 7E38713C
	v_mov_b64_e32 v[30:31], v[62:63]                           // 00000000B090: 7E3C713E
	v_mov_b64_e32 v[32:33], v[64:65]                           // 00000000B094: 7E407140
	v_mov_b64_e32 v[2:3], v[50:51]                             // 00000000B098: 7E047132
	v_mov_b64_e32 v[4:5], v[52:53]                             // 00000000B09C: 7E087134
	v_mov_b64_e32 v[6:7], v[54:55]                             // 00000000B0A0: 7E0C7136
	v_mov_b64_e32 v[8:9], v[56:57]                             // 00000000B0A4: 7E107138
	v_mov_b64_e32 v[10:11], v[58:59]                           // 00000000B0A8: 7E14713A
	v_mov_b64_e32 v[12:13], v[60:61]                           // 00000000B0AC: 7E18713C
	v_mov_b64_e32 v[14:15], v[62:63]                           // 00000000B0B0: 7E1C713E
	v_mov_b64_e32 v[16:17], v[64:65]                           // 00000000B0B4: 7E207140
	s_branch 820                                               // 00000000B0B8: BF820334 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1a8c>
	s_lshl_b32 s16, s35, 13                                    // 00000000B0BC: 8E108D23
	s_addk_i32 s16, 0x2000                                     // 00000000B0C0: B7102000
	s_and_b32 s16, s16, 0x6000                                 // 00000000B0C4: 8610FF10 00006000
	s_mul_i32 s17, s7, 0x44                                    // 00000000B0CC: 9211FF07 00000044
	s_add_u32 s16, s73, s16                                    // 00000000B0D4: 80101049
	s_add_u32 m0, s16, 0                                       // 00000000B0D8: 807C8010
	s_nop 0                                                    // 00000000B0DC: BF800000
	buffer_load_dwordx4 v129, s[64:67], s34 offen lds          // 00000000B0E0: E05D1000 22100081
	s_add_u32 m0, s16, 0x1000                                  // 00000000B0E8: 807CFF10 00001000
	s_nop 0                                                    // 00000000B0F0: BF800000
	buffer_load_dwordx4 v129, s[64:67], s17 offen lds          // 00000000B0F4: E05D1000 11100081
	s_cmp_lt_u32 s78, 3                                        // 00000000B0FC: BF0A834E
	s_cbranch_scc1 65320                                       // 00000000B100: BF85FF28 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xaa4>
	s_xor_b32 s16, s21, 0x8000                                 // 00000000B104: 8810FF15 00008000
	s_lshl_b32 s17, s6, 7                                      // 00000000B10C: 8E118706
	s_add_u32 s16, s72, s16                                    // 00000000B110: 80101048
	s_add_u32 m0, s16, 0                                       // 00000000B114: 807C8010
	s_mul_i32 s18, s6, 0x90                                    // 00000000B118: 9212FF06 00000090
	buffer_load_dwordx4 v127, s[60:63], s17 offen lds          // 00000000B120: E05D1000 110F007F
	s_add_u32 m0, s16, 0x1000                                  // 00000000B128: 807CFF10 00001000
	s_mul_i32 s19, s6, 0xa0                                    // 00000000B130: 9213FF06 000000A0
	s_mul_i32 s21, s6, 0xb0                                    // 00000000B138: 9215FF06 000000B0
	buffer_load_dwordx4 v127, s[60:63], s18 offen lds          // 00000000B140: E05D1000 120F007F
	s_add_u32 m0, s16, 0x2000                                  // 00000000B148: 807CFF10 00002000
	s_nop 0                                                    // 00000000B150: BF800000
	buffer_load_dwordx4 v127, s[60:63], s19 offen lds          // 00000000B154: E05D1000 130F007F
	s_add_u32 m0, s16, 0x3000                                  // 00000000B15C: 807CFF10 00003000
	s_nop 0                                                    // 00000000B164: BF800000
	buffer_load_dwordx4 v127, s[60:63], s21 offen lds          // 00000000B168: E05D1000 150F007F
	s_cmp_lt_u32 s78, 4                                        // 00000000B170: BF0A844E
	s_cbranch_scc1 65323                                       // 00000000B174: BF85FF2B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb24>
	s_branch 65292                                             // 00000000B178: BF82FF0C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xaac>
	v_mov_b64_e32 v[64:65], s[30:31]                           // 00000000B17C: 7E80701E
	v_mov_b64_e32 v[62:63], s[28:29]                           // 00000000B180: 7E7C701C
	v_mov_b64_e32 v[60:61], s[26:27]                           // 00000000B184: 7E78701A
	v_mov_b64_e32 v[58:59], s[24:25]                           // 00000000B188: 7E747018
	v_mov_b64_e32 v[56:57], s[22:23]                           // 00000000B18C: 7E707016
	v_mov_b64_e32 v[54:55], s[20:21]                           // 00000000B190: 7E6C7014
	v_mov_b64_e32 v[52:53], s[18:19]                           // 00000000B194: 7E687012
	v_mov_b64_e32 v[50:51], s[16:17]                           // 00000000B198: 7E647010
	v_mov_b32_e32 v135, 0                                      // 00000000B19C: 7F0E0280
	v_mov_b64_e32 v[34:35], v[50:51]                           // 00000000B1A0: 7E447132
	v_mov_b64_e32 v[36:37], v[52:53]                           // 00000000B1A4: 7E487134
	v_mov_b64_e32 v[38:39], v[54:55]                           // 00000000B1A8: 7E4C7136
	v_mov_b64_e32 v[40:41], v[56:57]                           // 00000000B1AC: 7E507138
	v_mov_b64_e32 v[42:43], v[58:59]                           // 00000000B1B0: 7E54713A
	v_mov_b64_e32 v[44:45], v[60:61]                           // 00000000B1B4: 7E58713C
	v_mov_b64_e32 v[46:47], v[62:63]                           // 00000000B1B8: 7E5C713E
	v_mov_b64_e32 v[48:49], v[64:65]                           // 00000000B1BC: 7E607140
	v_mov_b64_e32 v[18:19], v[50:51]                           // 00000000B1C0: 7E247132
	v_mov_b64_e32 v[20:21], v[52:53]                           // 00000000B1C4: 7E287134
	v_mov_b64_e32 v[22:23], v[54:55]                           // 00000000B1C8: 7E2C7136
	v_mov_b64_e32 v[24:25], v[56:57]                           // 00000000B1CC: 7E307138
	v_mov_b64_e32 v[26:27], v[58:59]                           // 00000000B1D0: 7E34713A
	v_mov_b64_e32 v[28:29], v[60:61]                           // 00000000B1D4: 7E38713C
	v_mov_b64_e32 v[30:31], v[62:63]                           // 00000000B1D8: 7E3C713E
	v_mov_b64_e32 v[32:33], v[64:65]                           // 00000000B1DC: 7E407140
	v_mov_b64_e32 v[2:3], v[50:51]                             // 00000000B1E0: 7E047132
	v_mov_b64_e32 v[4:5], v[52:53]                             // 00000000B1E4: 7E087134
	v_mov_b64_e32 v[6:7], v[54:55]                             // 00000000B1E8: 7E0C7136
	v_mov_b64_e32 v[8:9], v[56:57]                             // 00000000B1EC: 7E107138
	v_mov_b64_e32 v[10:11], v[58:59]                           // 00000000B1F0: 7E14713A
	v_mov_b64_e32 v[12:13], v[60:61]                           // 00000000B1F4: 7E18713C
	v_mov_b64_e32 v[14:15], v[62:63]                           // 00000000B1F8: 7E1C713E
	v_mov_b64_e32 v[16:17], v[64:65]                           // 00000000B1FC: 7E207140
	s_branch 1089                                              // 00000000B200: BF820441 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2008>
	v_mov_b64_e32 v[64:65], s[30:31]                           // 00000000B204: 7E80701E
	v_mov_b64_e32 v[62:63], s[28:29]                           // 00000000B208: 7E7C701C
	v_mov_b64_e32 v[60:61], s[26:27]                           // 00000000B20C: 7E78701A
	v_mov_b64_e32 v[58:59], s[24:25]                           // 00000000B210: 7E747018
	v_mov_b64_e32 v[56:57], s[22:23]                           // 00000000B214: 7E707016
	v_mov_b64_e32 v[54:55], s[20:21]                           // 00000000B218: 7E6C7014
	v_mov_b64_e32 v[52:53], s[18:19]                           // 00000000B21C: 7E687012
	v_mov_b64_e32 v[50:51], s[16:17]                           // 00000000B220: 7E647010
	v_mov_b32_e32 v135, 0                                      // 00000000B224: 7F0E0280
	s_mov_b32 s16, s35                                         // 00000000B228: BE900023
	v_mov_b32_e32 v134, v137                                   // 00000000B22C: 7F0C0389
	v_mov_b64_e32 v[34:35], v[50:51]                           // 00000000B230: 7E447132
	v_mov_b64_e32 v[36:37], v[52:53]                           // 00000000B234: 7E487134
	v_mov_b64_e32 v[38:39], v[54:55]                           // 00000000B238: 7E4C7136
	v_mov_b64_e32 v[40:41], v[56:57]                           // 00000000B23C: 7E507138
	v_mov_b64_e32 v[42:43], v[58:59]                           // 00000000B240: 7E54713A
	v_mov_b64_e32 v[44:45], v[60:61]                           // 00000000B244: 7E58713C
	v_mov_b64_e32 v[46:47], v[62:63]                           // 00000000B248: 7E5C713E
	v_mov_b64_e32 v[48:49], v[64:65]                           // 00000000B24C: 7E607140
	v_mov_b64_e32 v[18:19], v[50:51]                           // 00000000B250: 7E247132
	v_mov_b64_e32 v[20:21], v[52:53]                           // 00000000B254: 7E287134
	v_mov_b64_e32 v[22:23], v[54:55]                           // 00000000B258: 7E2C7136
	v_mov_b64_e32 v[24:25], v[56:57]                           // 00000000B25C: 7E307138
	v_mov_b64_e32 v[26:27], v[58:59]                           // 00000000B260: 7E34713A
	v_mov_b64_e32 v[28:29], v[60:61]                           // 00000000B264: 7E38713C
	v_mov_b64_e32 v[30:31], v[62:63]                           // 00000000B268: 7E3C713E
	v_mov_b64_e32 v[32:33], v[64:65]                           // 00000000B26C: 7E407140
	v_mov_b64_e32 v[2:3], v[50:51]                             // 00000000B270: 7E047132
	v_mov_b64_e32 v[4:5], v[52:53]                             // 00000000B274: 7E087134
	v_mov_b64_e32 v[6:7], v[54:55]                             // 00000000B278: 7E0C7136
	v_mov_b64_e32 v[8:9], v[56:57]                             // 00000000B27C: 7E107138
	v_mov_b64_e32 v[10:11], v[58:59]                           // 00000000B280: 7E14713A
	v_mov_b64_e32 v[12:13], v[60:61]                           // 00000000B284: 7E18713C
	v_mov_b64_e32 v[14:15], v[62:63]                           // 00000000B288: 7E1C713E
	v_mov_b64_e32 v[16:17], v[64:65]                           // 00000000B28C: 7E207140
	s_add_u32 s17, s16, 1                                      // 00000000B290: 80118110
	s_cmp_ge_u32 s17, s48                                      // 00000000B294: BF093011
	s_cbranch_scc1 1405                                        // 00000000B298: BF85057D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2590>
	s_setprio 0                                                // 00000000B29C: BF8F0000
	v_exp_f32_e32 v82, v82                                     // 00000000B2A0: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000B2A4: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000B2A8: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000B2AC: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000B2B0: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000B2B4: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000B2B8: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000B2BC: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000B2C0: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000B2C4: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000B2C8: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000B2CC: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000B2D0: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000B2D4: 7EBE415F
	v_exp_f32_e32 v96, v96                                     // 00000000B2D8: 7EC04160
	v_exp_f32_e32 v97, v97                                     // 00000000B2DC: 7EC24161
	v_mov_b32_e32 v106, v136                                   // 00000000B2E0: 7ED40388
	v_cvt_pk_fp8_f32 v106, v82, v83                            // 00000000B2E4: D2A2006A 0002A752
	v_cvt_pk_fp8_f32 v106, v84, v85 op_sel:[0,0,1]             // 00000000B2EC: D2A2406A 0002AB54
	v_mov_b32_e32 v107, v136                                   // 00000000B2F4: 7ED60388
	v_cvt_pk_fp8_f32 v107, v86, v87                            // 00000000B2F8: D2A2006B 0002AF56
	v_cvt_pk_fp8_f32 v107, v88, v89 op_sel:[0,0,1]             // 00000000B300: D2A2406B 0002B358
	v_exp_f32_e32 v66, v66                                     // 00000000B308: 7E844142
	v_mov_b32_e32 v108, v136                                   // 00000000B30C: 7ED80388
	v_cvt_pk_fp8_f32 v108, v90, v91                            // 00000000B310: D2A2006C 0002B75A
	v_exp_f32_e32 v67, v67                                     // 00000000B318: 7E864143
	v_cvt_pk_fp8_f32 v108, v92, v93 op_sel:[0,0,1]             // 00000000B31C: D2A2406C 0002BB5C
	v_exp_f32_e32 v68, v68                                     // 00000000B324: 7E884144
	v_mov_b32_e32 v109, v136                                   // 00000000B328: 7EDA0388
	v_cvt_pk_fp8_f32 v109, v94, v95                            // 00000000B32C: D2A2006D 0002BF5E
	v_exp_f32_e32 v69, v69                                     // 00000000B334: 7E8A4145
	v_cvt_pk_fp8_f32 v109, v96, v97 op_sel:[0,0,1]             // 00000000B338: D2A2406D 0002C360
	v_exp_f32_e32 v70, v70                                     // 00000000B340: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000B344: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000B348: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000B34C: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000B350: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000B354: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000B358: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000B35C: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000B360: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000B364: 7E9E414F
	v_exp_f32_e32 v80, v80                                     // 00000000B368: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000B36C: 7EA24151
	v_mov_b32_e32 v110, v136                                   // 00000000B370: 7EDC0388
	v_cvt_pk_fp8_f32 v110, v66, v67                            // 00000000B374: D2A2006E 00028742
	v_cvt_pk_fp8_f32 v110, v68, v69 op_sel:[0,0,1]             // 00000000B37C: D2A2406E 00028B44
	v_mov_b32_e32 v111, v136                                   // 00000000B384: 7EDE0388
	v_cvt_pk_fp8_f32 v111, v70, v71                            // 00000000B388: D2A2006F 00028F46
	v_cvt_pk_fp8_f32 v111, v72, v73 op_sel:[0,0,1]             // 00000000B390: D2A2406F 00029348
	v_mov_b32_e32 v112, v136                                   // 00000000B398: 7EE00388
	v_cvt_pk_fp8_f32 v112, v74, v75                            // 00000000B39C: D2A20070 0002974A
	v_cvt_pk_fp8_f32 v112, v76, v77 op_sel:[0,0,1]             // 00000000B3A4: D2A24070 00029B4C
	v_mov_b32_e32 v113, v136                                   // 00000000B3AC: 7EE20388
	v_cvt_pk_fp8_f32 v113, v78, v79                            // 00000000B3B0: D2A20071 00029F4E
	v_cvt_pk_fp8_f32 v113, v80, v81 op_sel:[0,0,1]             // 00000000B3B8: D2A24071 0002A350
	ds_read_b128 v[66:69], v122 offset:16384                   // 00000000B3C0: D9FE4000 4200007A
	ds_read_b128 v[70:73], v122 offset:16400                   // 00000000B3C8: D9FE4010 4600007A
	ds_read_b128 v[138:141], v122 offset:24576                 // 00000000B3D0: D9FE6000 8A00007A
	ds_read_b128 v[142:145], v122 offset:24592                 // 00000000B3D8: D9FE6010 8E00007A
	ds_read_b128 v[146:149], v123 offset:16384                 // 00000000B3E0: D9FE4000 9200007B
	ds_read_b128 v[150:153], v123 offset:16400                 // 00000000B3E8: D9FE4010 9600007B
	ds_read_b128 v[154:157], v123 offset:24576                 // 00000000B3F0: D9FE6000 9A00007B
	ds_read_b128 v[158:161], v123 offset:24592                 // 00000000B3F8: D9FE6010 9E00007B
	s_barrier                                                  // 00000000B400: BF8A0000
	s_setprio 1                                                // 00000000B404: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[114:117], v[98:105], v[106:113], 0// 00000000B408: D3AD0072 0202D562
	ds_read_b128 v[190:193], v124 offset:16384                 // 00000000B410: D9FE4000 BE00007C
	ds_read_b128 v[194:197], v124 offset:16400                 // 00000000B418: D9FE4010 C200007C
	s_waitcnt lgkmcnt(6)                                       // 00000000B420: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[66:73], v[166:173], 0// 00000000B424: D3AE0052 02034D42
	ds_read_b128 v[198:201], v124 offset:24576                 // 00000000B42C: D9FE6000 C600007C
	ds_read_b128 v[202:205], v124 offset:24592                 // 00000000B434: D9FE6010 CA00007C
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[138:145], v[166:173], 0// 00000000B43C: D3AE0042 02034D8A
	ds_read_b64_tr_b8 v[138:139], v133                         // 00000000B444: D9C40000 8A000085
	ds_read_b64_tr_b8 v[140:141], v133 offset:1024             // 00000000B44C: D9C40400 8C000085
	ds_read_b64_tr_b8 v[142:143], v133 offset:2048             // 00000000B454: D9C40800 8E000085
	ds_read_b64_tr_b8 v[144:145], v133 offset:3072             // 00000000B45C: D9C40C00 90000085
	s_min_u32 s17, s80, s82                                    // 00000000B464: 83915250
	s_add_u32 m0, s72, 0                                       // 00000000B468: 807C8048
	s_nop 0                                                    // 00000000B46C: BF800000
	buffer_load_dwordx4 v127, s[60:63], s17 offen lds          // 00000000B470: E05D1000 110F007F
	v_lshlrev_b32_e32 v137, 23, v136                           // 00000000B478: 25131097
	v_fma_f32 v135, v114, v137, v135                           // 00000000B47C: D1CB0087 061F1372
	s_waitcnt lgkmcnt(8)                                       // 00000000B484: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[146:153], v[174:181], v[82:97]// 00000000B488: D3AE0052 054B5D92
	ds_read_b64_tr_b8 v[146:147], v133 offset:256              // 00000000B490: D9C40100 92000085
	ds_read_b64_tr_b8 v[148:149], v133 offset:1280             // 00000000B498: D9C40500 94000085
	ds_read_b64_tr_b8 v[150:151], v133 offset:2304             // 00000000B4A0: D9C40900 96000085
	ds_read_b64_tr_b8 v[152:153], v133 offset:3328             // 00000000B4A8: D9C40D00 98000085
	s_add_u32 m0, s72, 0x2000                                  // 00000000B4B0: 807CFF48 00002000
	s_nop 0                                                    // 00000000B4B8: BF800000
	buffer_load_dwordx4 v128, s[60:63], s17 offen lds          // 00000000B4BC: E05D1000 110F0080
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[154:161], v[174:181], v[66:81]// 00000000B4C4: D3AE0042 050B5D9A
	s_min_u32 s17, s81, s83                                    // 00000000B4CC: 83915351
	s_add_u32 m0, s73, 0x4000                                  // 00000000B4D0: 807CFF49 00004000
	s_nop 0                                                    // 00000000B4D8: BF800000
	buffer_load_dwordx4 v129, s[64:67], s17 offen lds          // 00000000B4DC: E05D1000 11100081
	s_add_u32 s80, s80, s74                                    // 00000000B4E4: 80504A50
	s_add_u32 s81, s81, s34                                    // 00000000B4E8: 80512251
	s_waitcnt lgkmcnt(8)                                       // 00000000B4EC: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[190:197], v[182:189], v[82:97]// 00000000B4F0: D3AE0052 054B6DBE
	ds_read_b64_tr_b8 v[154:155], v133 offset:512              // 00000000B4F8: D9C40200 9A000085
	ds_read_b64_tr_b8 v[156:157], v133 offset:1536             // 00000000B500: D9C40600 9C000085
	ds_read_b64_tr_b8 v[158:159], v133 offset:2560             // 00000000B508: D9C40A00 9E000085
	ds_read_b64_tr_b8 v[160:161], v133 offset:3584             // 00000000B510: D9C40E00 A0000085
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[198:205], v[182:189], v[66:81]// 00000000B518: D3AE0042 050B6DC6
	s_nop 3                                                    // 00000000B520: BF800003
	v_max_f32_e32 v114, v82, v83                               // 00000000B524: 16E4A752
	v_max3_f32 v114, v84, v85, v114                            // 00000000B528: D1D30072 05CAAB54
	v_max3_f32 v114, v86, v87, v114                            // 00000000B530: D1D30072 05CAAF56
	v_max3_f32 v114, v88, v89, v114                            // 00000000B538: D1D30072 05CAB358
	v_max3_f32 v114, v90, v91, v114                            // 00000000B540: D1D30072 05CAB75A
	v_max3_f32 v114, v92, v93, v114                            // 00000000B548: D1D30072 05CABB5C
	v_max3_f32 v114, v94, v95, v114                            // 00000000B550: D1D30072 05CABF5E
	v_max3_f32 v114, v96, v97, v114                            // 00000000B558: D1D30072 05CAC360
	s_waitcnt lgkmcnt(4)                                       // 00000000B560: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[138:145], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000B564: D3AC0000 0003117D D3AE0832 04CAD58A
	ds_read_b64_tr_b8 v[138:139], v133 offset:768              // 00000000B574: D9C40300 8A000085
	ds_read_b64_tr_b8 v[140:141], v133 offset:1792             // 00000000B57C: D9C40700 8C000085
	ds_read_b64_tr_b8 v[142:143], v133 offset:2816             // 00000000B584: D9C40B00 8E000085
	ds_read_b64_tr_b8 v[144:145], v133 offset:3840             // 00000000B58C: D9C40F00 90000085
	v_max_f32_e32 v115, v66, v67                               // 00000000B594: 16E68742
	v_max3_f32 v115, v68, v69, v115                            // 00000000B598: D1D30073 05CE8B44
	v_max3_f32 v115, v70, v71, v115                            // 00000000B5A0: D1D30073 05CE8F46
	v_max3_f32 v115, v72, v73, v115                            // 00000000B5A8: D1D30073 05CE9348
	v_max3_f32 v115, v74, v75, v115                            // 00000000B5B0: D1D30073 05CE974A
	v_max3_f32 v115, v76, v77, v115                            // 00000000B5B8: D1D30073 05CE9B4C
	v_max3_f32 v115, v78, v79, v115                            // 00000000B5C0: D1D30073 05CE9F4E
	v_max3_f32 v115, v80, v81, v115                            // 00000000B5C8: D1D30073 05CEA350
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[146:153], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000B5D0: D3AC0000 0003117D D3AE0822 048AD592
	v_max_f32_e32 v114, v114, v115                             // 00000000B5E0: 16E4E772
	v_mov_b32_e32 v115, v114                                   // 00000000B5E4: 7EE60372
	s_nop 1                                                    // 00000000B5E8: BF800001
	v_permlane32_swap_b32_e32 v114, v115                       // 00000000B5EC: 7EE4B573
	v_max_f32_e32 v114, v114, v115                             // 00000000B5F0: 16E4E772
	v_mul_f32_e32 v115, v118, v114                             // 00000000B5F4: 0AE6E576
	v_max_f32_e32 v115, v134, v115                             // 00000000B5F8: 16E6E786
	v_sub_f32_e32 v116, v115, v134                             // 00000000B5FC: 04E90D73
	v_cmp_lt_f32_e32 vcc, s71, v116                            // 00000000B600: 7C82E847
	s_waitcnt lgkmcnt(0)                                       // 00000000B604: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[154:161], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000B608: D3AC0000 0003117D D3AE0812 044AD59A
	s_cmp_lg_u64 vcc, 0                                        // 00000000B618: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000B61C: 859280C1
	s_cselect_b32 s17, 1, 0                                    // 00000000B620: 85118081
	v_cndmask_b32_e64 v137, v134, v115, s[18:19]               // 00000000B624: D1000089 004AE786
	v_fma_f32 v114, v114, v118, -v137                          // 00000000B62C: D1CB0072 8626ED72
	v_floor_f32_e32 v114, v114                                 // 00000000B634: 7EE43F72
	v_med3_f32 v114, v114, s70, 0                              // 00000000B638: D1D60072 02008D72
	v_cvt_i32_f32_e32 v115, v114                               // 00000000B640: 7EE61172
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[138:145], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000B644: D3AC0000 0003117D D3AE0802 040AD58A
	v_add_u32_e32 v136, 0x7f, v115                             // 00000000B654: 6910E6FF 0000007F
	v_add_f32_e32 v106, v137, v114                             // 00000000B65C: 02D4E589
	v_sub_f32_e32 v106, 0x40c00000, v106                       // 00000000B660: 04D4D4FF 40C00000
	v_pk_fma_f32 v[96:97], v[96:97], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B668: D3B00060 0DAAED60
	v_pk_fma_f32 v[94:95], v[94:95], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B670: D3B0005E 0DAAED5E
	v_pk_fma_f32 v[92:93], v[92:93], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B678: D3B0005C 0DAAED5C
	v_pk_fma_f32 v[90:91], v[90:91], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B680: D3B0005A 0DAAED5A
	v_pk_fma_f32 v[88:89], v[88:89], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B688: D3B00058 0DAAED58
	v_pk_fma_f32 v[86:87], v[86:87], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B690: D3B00056 0DAAED56
	v_pk_fma_f32 v[84:85], v[84:85], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B698: D3B00054 0DAAED54
	v_pk_fma_f32 v[82:83], v[82:83], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6A0: D3B00052 0DAAED52
	v_pk_fma_f32 v[80:81], v[80:81], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6A8: D3B00050 0DAAED50
	v_pk_fma_f32 v[78:79], v[78:79], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6B0: D3B0004E 0DAAED4E
	v_pk_fma_f32 v[76:77], v[76:77], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6B8: D3B0004C 0DAAED4C
	v_pk_fma_f32 v[74:75], v[74:75], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6C0: D3B0004A 0DAAED4A
	v_pk_fma_f32 v[72:73], v[72:73], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6C8: D3B00048 0DAAED48
	v_pk_fma_f32 v[70:71], v[70:71], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6D0: D3B00046 0DAAED46
	v_pk_fma_f32 v[68:69], v[68:69], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6D8: D3B00044 0DAAED44
	v_pk_fma_f32 v[66:67], v[66:67], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6E0: D3B00042 0DAAED42
	s_cmp_eq_u32 s17, 0                                        // 00000000B6E8: BF068011
	s_cbranch_scc1 68                                          // 00000000B6EC: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1500>
	v_sub_f32_e32 v106, v134, v137                             // 00000000B6F0: 04D51386
	v_exp_f32_e32 v106, v106                                   // 00000000B6F4: 7ED4416A
	s_nop 0                                                    // 00000000B6F8: BF800000
	v_pk_mul_f32 v[64:65], v[64:65], v[106:107] op_sel_hi:[1,0]// 00000000B6FC: D3B14040 0802D540
	v_pk_mul_f32 v[62:63], v[62:63], v[106:107] op_sel_hi:[1,0]// 00000000B704: D3B1403E 0802D53E
	v_pk_mul_f32 v[60:61], v[60:61], v[106:107] op_sel_hi:[1,0]// 00000000B70C: D3B1403C 0802D53C
	v_pk_mul_f32 v[58:59], v[58:59], v[106:107] op_sel_hi:[1,0]// 00000000B714: D3B1403A 0802D53A
	v_pk_mul_f32 v[56:57], v[56:57], v[106:107] op_sel_hi:[1,0]// 00000000B71C: D3B14038 0802D538
	v_pk_mul_f32 v[54:55], v[54:55], v[106:107] op_sel_hi:[1,0]// 00000000B724: D3B14036 0802D536
	v_pk_mul_f32 v[52:53], v[52:53], v[106:107] op_sel_hi:[1,0]// 00000000B72C: D3B14034 0802D534
	v_pk_mul_f32 v[50:51], v[50:51], v[106:107] op_sel_hi:[1,0]// 00000000B734: D3B14032 0802D532
	v_pk_mul_f32 v[48:49], v[48:49], v[106:107] op_sel_hi:[1,0]// 00000000B73C: D3B14030 0802D530
	v_pk_mul_f32 v[46:47], v[46:47], v[106:107] op_sel_hi:[1,0]// 00000000B744: D3B1402E 0802D52E
	v_pk_mul_f32 v[44:45], v[44:45], v[106:107] op_sel_hi:[1,0]// 00000000B74C: D3B1402C 0802D52C
	v_pk_mul_f32 v[42:43], v[42:43], v[106:107] op_sel_hi:[1,0]// 00000000B754: D3B1402A 0802D52A
	v_pk_mul_f32 v[40:41], v[40:41], v[106:107] op_sel_hi:[1,0]// 00000000B75C: D3B14028 0802D528
	v_pk_mul_f32 v[38:39], v[38:39], v[106:107] op_sel_hi:[1,0]// 00000000B764: D3B14026 0802D526
	v_pk_mul_f32 v[36:37], v[36:37], v[106:107] op_sel_hi:[1,0]// 00000000B76C: D3B14024 0802D524
	v_pk_mul_f32 v[34:35], v[34:35], v[106:107] op_sel_hi:[1,0]// 00000000B774: D3B14022 0802D522
	v_pk_mul_f32 v[32:33], v[32:33], v[106:107] op_sel_hi:[1,0]// 00000000B77C: D3B14020 0802D520
	v_pk_mul_f32 v[30:31], v[30:31], v[106:107] op_sel_hi:[1,0]// 00000000B784: D3B1401E 0802D51E
	v_pk_mul_f32 v[28:29], v[28:29], v[106:107] op_sel_hi:[1,0]// 00000000B78C: D3B1401C 0802D51C
	v_pk_mul_f32 v[26:27], v[26:27], v[106:107] op_sel_hi:[1,0]// 00000000B794: D3B1401A 0802D51A
	v_pk_mul_f32 v[24:25], v[24:25], v[106:107] op_sel_hi:[1,0]// 00000000B79C: D3B14018 0802D518
	v_pk_mul_f32 v[22:23], v[22:23], v[106:107] op_sel_hi:[1,0]// 00000000B7A4: D3B14016 0802D516
	v_pk_mul_f32 v[20:21], v[20:21], v[106:107] op_sel_hi:[1,0]// 00000000B7AC: D3B14014 0802D514
	v_pk_mul_f32 v[18:19], v[18:19], v[106:107] op_sel_hi:[1,0]// 00000000B7B4: D3B14012 0802D512
	v_pk_mul_f32 v[16:17], v[16:17], v[106:107] op_sel_hi:[1,0]// 00000000B7BC: D3B14010 0802D510
	v_pk_mul_f32 v[14:15], v[14:15], v[106:107] op_sel_hi:[1,0]// 00000000B7C4: D3B1400E 0802D50E
	v_pk_mul_f32 v[12:13], v[12:13], v[106:107] op_sel_hi:[1,0]// 00000000B7CC: D3B1400C 0802D50C
	v_pk_mul_f32 v[10:11], v[10:11], v[106:107] op_sel_hi:[1,0]// 00000000B7D4: D3B1400A 0802D50A
	v_pk_mul_f32 v[8:9], v[8:9], v[106:107] op_sel_hi:[1,0]    // 00000000B7DC: D3B14008 0802D508
	v_pk_mul_f32 v[6:7], v[6:7], v[106:107] op_sel_hi:[1,0]    // 00000000B7E4: D3B14006 0802D506
	v_pk_mul_f32 v[4:5], v[4:5], v[106:107] op_sel_hi:[1,0]    // 00000000B7EC: D3B14004 0802D504
	v_pk_mul_f32 v[2:3], v[2:3], v[106:107] op_sel_hi:[1,0]    // 00000000B7F4: D3B14002 0802D502
	v_mul_f32_e32 v135, v135, v106                             // 00000000B7FC: 0B0ED587
	s_waitcnt vmcnt(3)                                         // 00000000B800: BF8C0F73
	s_barrier                                                  // 00000000B804: BF8A0000
	s_add_u32 s16, s16, 1                                      // 00000000B808: 80108110
	s_add_u32 s17, s16, 1                                      // 00000000B80C: 80118110
	s_cmp_ge_u32 s17, s48                                      // 00000000B810: BF093011
	s_cbranch_scc1 1058                                        // 00000000B814: BF850422 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x25a0>
	s_setprio 0                                                // 00000000B818: BF8F0000
	v_exp_f32_e32 v82, v82                                     // 00000000B81C: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000B820: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000B824: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000B828: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000B82C: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000B830: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000B834: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000B838: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000B83C: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000B840: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000B844: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000B848: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000B84C: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000B850: 7EBE415F
	v_exp_f32_e32 v96, v96                                     // 00000000B854: 7EC04160
	v_exp_f32_e32 v97, v97                                     // 00000000B858: 7EC24161
	v_mov_b32_e32 v106, v136                                   // 00000000B85C: 7ED40388
	v_cvt_pk_fp8_f32 v106, v82, v83                            // 00000000B860: D2A2006A 0002A752
	v_cvt_pk_fp8_f32 v106, v84, v85 op_sel:[0,0,1]             // 00000000B868: D2A2406A 0002AB54
	v_mov_b32_e32 v107, v136                                   // 00000000B870: 7ED60388
	v_cvt_pk_fp8_f32 v107, v86, v87                            // 00000000B874: D2A2006B 0002AF56
	v_cvt_pk_fp8_f32 v107, v88, v89 op_sel:[0,0,1]             // 00000000B87C: D2A2406B 0002B358
	v_exp_f32_e32 v66, v66                                     // 00000000B884: 7E844142
	v_mov_b32_e32 v108, v136                                   // 00000000B888: 7ED80388
	v_cvt_pk_fp8_f32 v108, v90, v91                            // 00000000B88C: D2A2006C 0002B75A
	v_exp_f32_e32 v67, v67                                     // 00000000B894: 7E864143
	v_cvt_pk_fp8_f32 v108, v92, v93 op_sel:[0,0,1]             // 00000000B898: D2A2406C 0002BB5C
	v_exp_f32_e32 v68, v68                                     // 00000000B8A0: 7E884144
	v_mov_b32_e32 v109, v136                                   // 00000000B8A4: 7EDA0388
	v_cvt_pk_fp8_f32 v109, v94, v95                            // 00000000B8A8: D2A2006D 0002BF5E
	v_exp_f32_e32 v69, v69                                     // 00000000B8B0: 7E8A4145
	v_cvt_pk_fp8_f32 v109, v96, v97 op_sel:[0,0,1]             // 00000000B8B4: D2A2406D 0002C360
	v_exp_f32_e32 v70, v70                                     // 00000000B8BC: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000B8C0: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000B8C4: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000B8C8: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000B8CC: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000B8D0: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000B8D4: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000B8D8: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000B8DC: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000B8E0: 7E9E414F
	v_exp_f32_e32 v80, v80                                     // 00000000B8E4: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000B8E8: 7EA24151
	v_mov_b32_e32 v110, v136                                   // 00000000B8EC: 7EDC0388
	v_cvt_pk_fp8_f32 v110, v66, v67                            // 00000000B8F0: D2A2006E 00028742
	v_cvt_pk_fp8_f32 v110, v68, v69 op_sel:[0,0,1]             // 00000000B8F8: D2A2406E 00028B44
	v_mov_b32_e32 v111, v136                                   // 00000000B900: 7EDE0388
	v_cvt_pk_fp8_f32 v111, v70, v71                            // 00000000B904: D2A2006F 00028F46
	v_cvt_pk_fp8_f32 v111, v72, v73 op_sel:[0,0,1]             // 00000000B90C: D2A2406F 00029348
	v_mov_b32_e32 v112, v136                                   // 00000000B914: 7EE00388
	v_cvt_pk_fp8_f32 v112, v74, v75                            // 00000000B918: D2A20070 0002974A
	v_cvt_pk_fp8_f32 v112, v76, v77 op_sel:[0,0,1]             // 00000000B920: D2A24070 00029B4C
	v_mov_b32_e32 v113, v136                                   // 00000000B928: 7EE20388
	v_cvt_pk_fp8_f32 v113, v78, v79                            // 00000000B92C: D2A20071 00029F4E
	v_cvt_pk_fp8_f32 v113, v80, v81 op_sel:[0,0,1]             // 00000000B934: D2A24071 0002A350
	ds_read_b128 v[66:69], v122 offset:32768                   // 00000000B93C: D9FE8000 4200007A
	ds_read_b128 v[70:73], v122 offset:32784                   // 00000000B944: D9FE8010 4600007A
	ds_read_b128 v[138:141], v122 offset:40960                 // 00000000B94C: D9FEA000 8A00007A
	ds_read_b128 v[142:145], v122 offset:40976                 // 00000000B954: D9FEA010 8E00007A
	ds_read_b128 v[146:149], v123 offset:32768                 // 00000000B95C: D9FE8000 9200007B
	ds_read_b128 v[150:153], v123 offset:32784                 // 00000000B964: D9FE8010 9600007B
	ds_read_b128 v[154:157], v123 offset:40960                 // 00000000B96C: D9FEA000 9A00007B
	ds_read_b128 v[158:161], v123 offset:40976                 // 00000000B974: D9FEA010 9E00007B
	s_barrier                                                  // 00000000B97C: BF8A0000
	s_setprio 1                                                // 00000000B980: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[114:117], v[98:105], v[106:113], 0// 00000000B984: D3AD0072 0202D562
	ds_read_b128 v[190:193], v124 offset:32768                 // 00000000B98C: D9FE8000 BE00007C
	ds_read_b128 v[194:197], v124 offset:32784                 // 00000000B994: D9FE8010 C200007C
	s_waitcnt lgkmcnt(6)                                       // 00000000B99C: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[66:73], v[166:173], 0// 00000000B9A0: D3AE0052 02034D42
	ds_read_b128 v[198:201], v124 offset:40960                 // 00000000B9A8: D9FEA000 C600007C
	ds_read_b128 v[202:205], v124 offset:40976                 // 00000000B9B0: D9FEA010 CA00007C
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[138:145], v[166:173], 0// 00000000B9B8: D3AE0042 02034D8A
	ds_read_b64_tr_b8 v[138:139], v133 offset:8192             // 00000000B9C0: D9C42000 8A000085
	ds_read_b64_tr_b8 v[140:141], v133 offset:9216             // 00000000B9C8: D9C42400 8C000085
	ds_read_b64_tr_b8 v[142:143], v133 offset:10240            // 00000000B9D0: D9C42800 8E000085
	ds_read_b64_tr_b8 v[144:145], v133 offset:11264            // 00000000B9D8: D9C42C00 90000085
	s_min_u32 s17, s80, s82                                    // 00000000B9E0: 83915250
	s_add_u32 m0, s72, 0x4000                                  // 00000000B9E4: 807CFF48 00004000
	s_nop 0                                                    // 00000000B9EC: BF800000
	buffer_load_dwordx4 v127, s[60:63], s17 offen lds          // 00000000B9F0: E05D1000 110F007F
	v_lshlrev_b32_e32 v134, 23, v136                           // 00000000B9F8: 250D1097
	v_fma_f32 v135, v114, v134, v135                           // 00000000B9FC: D1CB0087 061F0D72
	s_waitcnt lgkmcnt(8)                                       // 00000000BA04: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[146:153], v[174:181], v[82:97]// 00000000BA08: D3AE0052 054B5D92
	ds_read_b64_tr_b8 v[146:147], v133 offset:8448             // 00000000BA10: D9C42100 92000085
	ds_read_b64_tr_b8 v[148:149], v133 offset:9472             // 00000000BA18: D9C42500 94000085
	ds_read_b64_tr_b8 v[150:151], v133 offset:10496            // 00000000BA20: D9C42900 96000085
	ds_read_b64_tr_b8 v[152:153], v133 offset:11520            // 00000000BA28: D9C42D00 98000085
	s_add_u32 m0, s72, 0x6000                                  // 00000000BA30: 807CFF48 00006000
	s_nop 0                                                    // 00000000BA38: BF800000
	buffer_load_dwordx4 v128, s[60:63], s17 offen lds          // 00000000BA3C: E05D1000 110F0080
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[154:161], v[174:181], v[66:81]// 00000000BA44: D3AE0042 050B5D9A
	s_min_u32 s17, s81, s83                                    // 00000000BA4C: 83915351
	s_add_u32 m0, s73, 0x6000                                  // 00000000BA50: 807CFF49 00006000
	s_nop 0                                                    // 00000000BA58: BF800000
	buffer_load_dwordx4 v129, s[64:67], s17 offen lds          // 00000000BA5C: E05D1000 11100081
	s_add_u32 s80, s80, s74                                    // 00000000BA64: 80504A50
	s_add_u32 s81, s81, s34                                    // 00000000BA68: 80512251
	s_waitcnt lgkmcnt(8)                                       // 00000000BA6C: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[190:197], v[182:189], v[82:97]// 00000000BA70: D3AE0052 054B6DBE
	ds_read_b64_tr_b8 v[154:155], v133 offset:8704             // 00000000BA78: D9C42200 9A000085
	ds_read_b64_tr_b8 v[156:157], v133 offset:9728             // 00000000BA80: D9C42600 9C000085
	ds_read_b64_tr_b8 v[158:159], v133 offset:10752            // 00000000BA88: D9C42A00 9E000085
	ds_read_b64_tr_b8 v[160:161], v133 offset:11776            // 00000000BA90: D9C42E00 A0000085
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[198:205], v[182:189], v[66:81]// 00000000BA98: D3AE0042 050B6DC6
	s_nop 3                                                    // 00000000BAA0: BF800003
	v_max_f32_e32 v114, v82, v83                               // 00000000BAA4: 16E4A752
	v_max3_f32 v114, v84, v85, v114                            // 00000000BAA8: D1D30072 05CAAB54
	v_max3_f32 v114, v86, v87, v114                            // 00000000BAB0: D1D30072 05CAAF56
	v_max3_f32 v114, v88, v89, v114                            // 00000000BAB8: D1D30072 05CAB358
	v_max3_f32 v114, v90, v91, v114                            // 00000000BAC0: D1D30072 05CAB75A
	v_max3_f32 v114, v92, v93, v114                            // 00000000BAC8: D1D30072 05CABB5C
	v_max3_f32 v114, v94, v95, v114                            // 00000000BAD0: D1D30072 05CABF5E
	v_max3_f32 v114, v96, v97, v114                            // 00000000BAD8: D1D30072 05CAC360
	s_waitcnt lgkmcnt(4)                                       // 00000000BAE0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[138:145], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000BAE4: D3AC0000 0003117D D3AE0832 04CAD58A
	ds_read_b64_tr_b8 v[138:139], v133 offset:8960             // 00000000BAF4: D9C42300 8A000085
	ds_read_b64_tr_b8 v[140:141], v133 offset:9984             // 00000000BAFC: D9C42700 8C000085
	ds_read_b64_tr_b8 v[142:143], v133 offset:11008            // 00000000BB04: D9C42B00 8E000085
	ds_read_b64_tr_b8 v[144:145], v133 offset:12032            // 00000000BB0C: D9C42F00 90000085
	v_max_f32_e32 v115, v66, v67                               // 00000000BB14: 16E68742
	v_max3_f32 v115, v68, v69, v115                            // 00000000BB18: D1D30073 05CE8B44
	v_max3_f32 v115, v70, v71, v115                            // 00000000BB20: D1D30073 05CE8F46
	v_max3_f32 v115, v72, v73, v115                            // 00000000BB28: D1D30073 05CE9348
	v_max3_f32 v115, v74, v75, v115                            // 00000000BB30: D1D30073 05CE974A
	v_max3_f32 v115, v76, v77, v115                            // 00000000BB38: D1D30073 05CE9B4C
	v_max3_f32 v115, v78, v79, v115                            // 00000000BB40: D1D30073 05CE9F4E
	v_max3_f32 v115, v80, v81, v115                            // 00000000BB48: D1D30073 05CEA350
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[146:153], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000BB50: D3AC0000 0003117D D3AE0822 048AD592
	v_max_f32_e32 v114, v114, v115                             // 00000000BB60: 16E4E772
	v_mov_b32_e32 v115, v114                                   // 00000000BB64: 7EE60372
	s_nop 1                                                    // 00000000BB68: BF800001
	v_permlane32_swap_b32_e32 v114, v115                       // 00000000BB6C: 7EE4B573
	v_max_f32_e32 v114, v114, v115                             // 00000000BB70: 16E4E772
	v_mul_f32_e32 v115, v118, v114                             // 00000000BB74: 0AE6E576
	v_max_f32_e32 v115, v137, v115                             // 00000000BB78: 16E6E789
	v_sub_f32_e32 v116, v115, v137                             // 00000000BB7C: 04E91373
	v_cmp_lt_f32_e32 vcc, s71, v116                            // 00000000BB80: 7C82E847
	s_waitcnt lgkmcnt(0)                                       // 00000000BB84: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[154:161], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000BB88: D3AC0000 0003117D D3AE0812 044AD59A
	s_cmp_lg_u64 vcc, 0                                        // 00000000BB98: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000BB9C: 859280C1
	s_cselect_b32 s17, 1, 0                                    // 00000000BBA0: 85118081
	v_cndmask_b32_e64 v134, v137, v115, s[18:19]               // 00000000BBA4: D1000086 004AE789
	v_fma_f32 v114, v114, v118, -v134                          // 00000000BBAC: D1CB0072 861AED72
	v_floor_f32_e32 v114, v114                                 // 00000000BBB4: 7EE43F72
	v_med3_f32 v114, v114, s70, 0                              // 00000000BBB8: D1D60072 02008D72
	v_cvt_i32_f32_e32 v115, v114                               // 00000000BBC0: 7EE61172
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[138:145], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000BBC4: D3AC0000 0003117D D3AE0802 040AD58A
	v_add_u32_e32 v136, 0x7f, v115                             // 00000000BBD4: 6910E6FF 0000007F
	v_add_f32_e32 v106, v134, v114                             // 00000000BBDC: 02D4E586
	v_sub_f32_e32 v106, 0x40c00000, v106                       // 00000000BBE0: 04D4D4FF 40C00000
	v_pk_fma_f32 v[96:97], v[96:97], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BBE8: D3B00060 0DAAED60
	v_pk_fma_f32 v[94:95], v[94:95], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BBF0: D3B0005E 0DAAED5E
	v_pk_fma_f32 v[92:93], v[92:93], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BBF8: D3B0005C 0DAAED5C
	v_pk_fma_f32 v[90:91], v[90:91], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC00: D3B0005A 0DAAED5A
	v_pk_fma_f32 v[88:89], v[88:89], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC08: D3B00058 0DAAED58
	v_pk_fma_f32 v[86:87], v[86:87], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC10: D3B00056 0DAAED56
	v_pk_fma_f32 v[84:85], v[84:85], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC18: D3B00054 0DAAED54
	v_pk_fma_f32 v[82:83], v[82:83], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC20: D3B00052 0DAAED52
	v_pk_fma_f32 v[80:81], v[80:81], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC28: D3B00050 0DAAED50
	v_pk_fma_f32 v[78:79], v[78:79], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC30: D3B0004E 0DAAED4E
	v_pk_fma_f32 v[76:77], v[76:77], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC38: D3B0004C 0DAAED4C
	v_pk_fma_f32 v[74:75], v[74:75], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC40: D3B0004A 0DAAED4A
	v_pk_fma_f32 v[72:73], v[72:73], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC48: D3B00048 0DAAED48
	v_pk_fma_f32 v[70:71], v[70:71], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC50: D3B00046 0DAAED46
	v_pk_fma_f32 v[68:69], v[68:69], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC58: D3B00044 0DAAED44
	v_pk_fma_f32 v[66:67], v[66:67], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC60: D3B00042 0DAAED42
	s_cmp_eq_u32 s17, 0                                        // 00000000BC68: BF068011
	s_cbranch_scc1 68                                          // 00000000BC6C: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1a80>
	v_sub_f32_e32 v106, v137, v134                             // 00000000BC70: 04D50D89
	v_exp_f32_e32 v106, v106                                   // 00000000BC74: 7ED4416A
	s_nop 0                                                    // 00000000BC78: BF800000
	v_pk_mul_f32 v[64:65], v[64:65], v[106:107] op_sel_hi:[1,0]// 00000000BC7C: D3B14040 0802D540
	v_pk_mul_f32 v[62:63], v[62:63], v[106:107] op_sel_hi:[1,0]// 00000000BC84: D3B1403E 0802D53E
	v_pk_mul_f32 v[60:61], v[60:61], v[106:107] op_sel_hi:[1,0]// 00000000BC8C: D3B1403C 0802D53C
	v_pk_mul_f32 v[58:59], v[58:59], v[106:107] op_sel_hi:[1,0]// 00000000BC94: D3B1403A 0802D53A
	v_pk_mul_f32 v[56:57], v[56:57], v[106:107] op_sel_hi:[1,0]// 00000000BC9C: D3B14038 0802D538
	v_pk_mul_f32 v[54:55], v[54:55], v[106:107] op_sel_hi:[1,0]// 00000000BCA4: D3B14036 0802D536
	v_pk_mul_f32 v[52:53], v[52:53], v[106:107] op_sel_hi:[1,0]// 00000000BCAC: D3B14034 0802D534
	v_pk_mul_f32 v[50:51], v[50:51], v[106:107] op_sel_hi:[1,0]// 00000000BCB4: D3B14032 0802D532
	v_pk_mul_f32 v[48:49], v[48:49], v[106:107] op_sel_hi:[1,0]// 00000000BCBC: D3B14030 0802D530
	v_pk_mul_f32 v[46:47], v[46:47], v[106:107] op_sel_hi:[1,0]// 00000000BCC4: D3B1402E 0802D52E
	v_pk_mul_f32 v[44:45], v[44:45], v[106:107] op_sel_hi:[1,0]// 00000000BCCC: D3B1402C 0802D52C
	v_pk_mul_f32 v[42:43], v[42:43], v[106:107] op_sel_hi:[1,0]// 00000000BCD4: D3B1402A 0802D52A
	v_pk_mul_f32 v[40:41], v[40:41], v[106:107] op_sel_hi:[1,0]// 00000000BCDC: D3B14028 0802D528
	v_pk_mul_f32 v[38:39], v[38:39], v[106:107] op_sel_hi:[1,0]// 00000000BCE4: D3B14026 0802D526
	v_pk_mul_f32 v[36:37], v[36:37], v[106:107] op_sel_hi:[1,0]// 00000000BCEC: D3B14024 0802D524
	v_pk_mul_f32 v[34:35], v[34:35], v[106:107] op_sel_hi:[1,0]// 00000000BCF4: D3B14022 0802D522
	v_pk_mul_f32 v[32:33], v[32:33], v[106:107] op_sel_hi:[1,0]// 00000000BCFC: D3B14020 0802D520
	v_pk_mul_f32 v[30:31], v[30:31], v[106:107] op_sel_hi:[1,0]// 00000000BD04: D3B1401E 0802D51E
	v_pk_mul_f32 v[28:29], v[28:29], v[106:107] op_sel_hi:[1,0]// 00000000BD0C: D3B1401C 0802D51C
	v_pk_mul_f32 v[26:27], v[26:27], v[106:107] op_sel_hi:[1,0]// 00000000BD14: D3B1401A 0802D51A
	v_pk_mul_f32 v[24:25], v[24:25], v[106:107] op_sel_hi:[1,0]// 00000000BD1C: D3B14018 0802D518
	v_pk_mul_f32 v[22:23], v[22:23], v[106:107] op_sel_hi:[1,0]// 00000000BD24: D3B14016 0802D516
	v_pk_mul_f32 v[20:21], v[20:21], v[106:107] op_sel_hi:[1,0]// 00000000BD2C: D3B14014 0802D514
	v_pk_mul_f32 v[18:19], v[18:19], v[106:107] op_sel_hi:[1,0]// 00000000BD34: D3B14012 0802D512
	v_pk_mul_f32 v[16:17], v[16:17], v[106:107] op_sel_hi:[1,0]// 00000000BD3C: D3B14010 0802D510
	v_pk_mul_f32 v[14:15], v[14:15], v[106:107] op_sel_hi:[1,0]// 00000000BD44: D3B1400E 0802D50E
	v_pk_mul_f32 v[12:13], v[12:13], v[106:107] op_sel_hi:[1,0]// 00000000BD4C: D3B1400C 0802D50C
	v_pk_mul_f32 v[10:11], v[10:11], v[106:107] op_sel_hi:[1,0]// 00000000BD54: D3B1400A 0802D50A
	v_pk_mul_f32 v[8:9], v[8:9], v[106:107] op_sel_hi:[1,0]    // 00000000BD5C: D3B14008 0802D508
	v_pk_mul_f32 v[6:7], v[6:7], v[106:107] op_sel_hi:[1,0]    // 00000000BD64: D3B14006 0802D506
	v_pk_mul_f32 v[4:5], v[4:5], v[106:107] op_sel_hi:[1,0]    // 00000000BD6C: D3B14004 0802D504
	v_pk_mul_f32 v[2:3], v[2:3], v[106:107] op_sel_hi:[1,0]    // 00000000BD74: D3B14002 0802D502
	v_mul_f32_e32 v135, v135, v106                             // 00000000BD7C: 0B0ED587
	s_waitcnt vmcnt(3)                                         // 00000000BD80: BF8C0F73
	s_barrier                                                  // 00000000BD84: BF8A0000
	s_add_u32 s16, s16, 1                                      // 00000000BD88: 80108110
	s_add_u32 s17, s16, 1                                      // 00000000BD8C: 80118110
	s_cmp_ge_u32 s17, s48                                      // 00000000BD90: BF093011
	s_cbranch_scc1 702                                         // 00000000BD94: BF8502BE <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2590>
	s_setprio 0                                                // 00000000BD98: BF8F0000
	v_exp_f32_e32 v82, v82                                     // 00000000BD9C: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000BDA0: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000BDA4: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000BDA8: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000BDAC: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000BDB0: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000BDB4: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000BDB8: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000BDBC: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000BDC0: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000BDC4: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000BDC8: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000BDCC: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000BDD0: 7EBE415F
	v_exp_f32_e32 v96, v96                                     // 00000000BDD4: 7EC04160
	v_exp_f32_e32 v97, v97                                     // 00000000BDD8: 7EC24161
	v_mov_b32_e32 v106, v136                                   // 00000000BDDC: 7ED40388
	v_cvt_pk_fp8_f32 v106, v82, v83                            // 00000000BDE0: D2A2006A 0002A752
	v_cvt_pk_fp8_f32 v106, v84, v85 op_sel:[0,0,1]             // 00000000BDE8: D2A2406A 0002AB54
	v_mov_b32_e32 v107, v136                                   // 00000000BDF0: 7ED60388
	v_cvt_pk_fp8_f32 v107, v86, v87                            // 00000000BDF4: D2A2006B 0002AF56
	v_cvt_pk_fp8_f32 v107, v88, v89 op_sel:[0,0,1]             // 00000000BDFC: D2A2406B 0002B358
	v_exp_f32_e32 v66, v66                                     // 00000000BE04: 7E844142
	v_mov_b32_e32 v108, v136                                   // 00000000BE08: 7ED80388
	v_cvt_pk_fp8_f32 v108, v90, v91                            // 00000000BE0C: D2A2006C 0002B75A
	v_exp_f32_e32 v67, v67                                     // 00000000BE14: 7E864143
	v_cvt_pk_fp8_f32 v108, v92, v93 op_sel:[0,0,1]             // 00000000BE18: D2A2406C 0002BB5C
	v_exp_f32_e32 v68, v68                                     // 00000000BE20: 7E884144
	v_mov_b32_e32 v109, v136                                   // 00000000BE24: 7EDA0388
	v_cvt_pk_fp8_f32 v109, v94, v95                            // 00000000BE28: D2A2006D 0002BF5E
	v_exp_f32_e32 v69, v69                                     // 00000000BE30: 7E8A4145
	v_cvt_pk_fp8_f32 v109, v96, v97 op_sel:[0,0,1]             // 00000000BE34: D2A2406D 0002C360
	v_exp_f32_e32 v70, v70                                     // 00000000BE3C: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000BE40: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000BE44: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000BE48: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000BE4C: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000BE50: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000BE54: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000BE58: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000BE5C: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000BE60: 7E9E414F
	v_exp_f32_e32 v80, v80                                     // 00000000BE64: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000BE68: 7EA24151
	v_mov_b32_e32 v110, v136                                   // 00000000BE6C: 7EDC0388
	v_cvt_pk_fp8_f32 v110, v66, v67                            // 00000000BE70: D2A2006E 00028742
	v_cvt_pk_fp8_f32 v110, v68, v69 op_sel:[0,0,1]             // 00000000BE78: D2A2406E 00028B44
	v_mov_b32_e32 v111, v136                                   // 00000000BE80: 7EDE0388
	v_cvt_pk_fp8_f32 v111, v70, v71                            // 00000000BE84: D2A2006F 00028F46
	v_cvt_pk_fp8_f32 v111, v72, v73 op_sel:[0,0,1]             // 00000000BE8C: D2A2406F 00029348
	v_mov_b32_e32 v112, v136                                   // 00000000BE94: 7EE00388
	v_cvt_pk_fp8_f32 v112, v74, v75                            // 00000000BE98: D2A20070 0002974A
	v_cvt_pk_fp8_f32 v112, v76, v77 op_sel:[0,0,1]             // 00000000BEA0: D2A24070 00029B4C
	v_mov_b32_e32 v113, v136                                   // 00000000BEA8: 7EE20388
	v_cvt_pk_fp8_f32 v113, v78, v79                            // 00000000BEAC: D2A20071 00029F4E
	v_cvt_pk_fp8_f32 v113, v80, v81 op_sel:[0,0,1]             // 00000000BEB4: D2A24071 0002A350
	ds_read_b128 v[66:69], v122 offset:49152                   // 00000000BEBC: D9FEC000 4200007A
	ds_read_b128 v[70:73], v122 offset:49168                   // 00000000BEC4: D9FEC010 4600007A
	ds_read_b128 v[138:141], v122 offset:57344                 // 00000000BECC: D9FEE000 8A00007A
	ds_read_b128 v[142:145], v122 offset:57360                 // 00000000BED4: D9FEE010 8E00007A
	ds_read_b128 v[146:149], v123 offset:49152                 // 00000000BEDC: D9FEC000 9200007B
	ds_read_b128 v[150:153], v123 offset:49168                 // 00000000BEE4: D9FEC010 9600007B
	ds_read_b128 v[154:157], v123 offset:57344                 // 00000000BEEC: D9FEE000 9A00007B
	ds_read_b128 v[158:161], v123 offset:57360                 // 00000000BEF4: D9FEE010 9E00007B
	s_barrier                                                  // 00000000BEFC: BF8A0000
	s_setprio 1                                                // 00000000BF00: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[114:117], v[98:105], v[106:113], 0// 00000000BF04: D3AD0072 0202D562
	ds_read_b128 v[190:193], v124 offset:49152                 // 00000000BF0C: D9FEC000 BE00007C
	ds_read_b128 v[194:197], v124 offset:49168                 // 00000000BF14: D9FEC010 C200007C
	s_waitcnt lgkmcnt(6)                                       // 00000000BF1C: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[66:73], v[166:173], 0// 00000000BF20: D3AE0052 02034D42
	ds_read_b128 v[198:201], v124 offset:57344                 // 00000000BF28: D9FEE000 C600007C
	ds_read_b128 v[202:205], v124 offset:57360                 // 00000000BF30: D9FEE010 CA00007C
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[138:145], v[166:173], 0// 00000000BF38: D3AE0042 02034D8A
	ds_read_b64_tr_b8 v[138:139], v133 offset:16384            // 00000000BF40: D9C44000 8A000085
	ds_read_b64_tr_b8 v[140:141], v133 offset:17408            // 00000000BF48: D9C44400 8C000085
	ds_read_b64_tr_b8 v[142:143], v133 offset:18432            // 00000000BF50: D9C44800 8E000085
	ds_read_b64_tr_b8 v[144:145], v133 offset:19456            // 00000000BF58: D9C44C00 90000085
	s_min_u32 s17, s80, s82                                    // 00000000BF60: 83915250
	s_add_u32 m0, s72, 0x8000                                  // 00000000BF64: 807CFF48 00008000
	s_nop 0                                                    // 00000000BF6C: BF800000
	buffer_load_dwordx4 v127, s[60:63], s17 offen lds          // 00000000BF70: E05D1000 110F007F
	v_lshlrev_b32_e32 v137, 23, v136                           // 00000000BF78: 25131097
	v_fma_f32 v135, v114, v137, v135                           // 00000000BF7C: D1CB0087 061F1372
	s_waitcnt lgkmcnt(8)                                       // 00000000BF84: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[146:153], v[174:181], v[82:97]// 00000000BF88: D3AE0052 054B5D92
	ds_read_b64_tr_b8 v[146:147], v133 offset:16640            // 00000000BF90: D9C44100 92000085
	ds_read_b64_tr_b8 v[148:149], v133 offset:17664            // 00000000BF98: D9C44500 94000085
	ds_read_b64_tr_b8 v[150:151], v133 offset:18688            // 00000000BFA0: D9C44900 96000085
	ds_read_b64_tr_b8 v[152:153], v133 offset:19712            // 00000000BFA8: D9C44D00 98000085
	s_add_u32 m0, s72, 0xa000                                  // 00000000BFB0: 807CFF48 0000A000
	s_nop 0                                                    // 00000000BFB8: BF800000
	buffer_load_dwordx4 v128, s[60:63], s17 offen lds          // 00000000BFBC: E05D1000 110F0080
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[154:161], v[174:181], v[66:81]// 00000000BFC4: D3AE0042 050B5D9A
	s_min_u32 s17, s81, s83                                    // 00000000BFCC: 83915351
	s_add_u32 m0, s73, 0                                       // 00000000BFD0: 807C8049
	s_nop 0                                                    // 00000000BFD4: BF800000
	buffer_load_dwordx4 v129, s[64:67], s17 offen lds          // 00000000BFD8: E05D1000 11100081
	s_add_u32 s80, s80, s74                                    // 00000000BFE0: 80504A50
	s_add_u32 s81, s81, s34                                    // 00000000BFE4: 80512251
	s_waitcnt lgkmcnt(8)                                       // 00000000BFE8: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[190:197], v[182:189], v[82:97]// 00000000BFEC: D3AE0052 054B6DBE
	ds_read_b64_tr_b8 v[154:155], v133 offset:16896            // 00000000BFF4: D9C44200 9A000085
	ds_read_b64_tr_b8 v[156:157], v133 offset:17920            // 00000000BFFC: D9C44600 9C000085
	ds_read_b64_tr_b8 v[158:159], v133 offset:18944            // 00000000C004: D9C44A00 9E000085
	ds_read_b64_tr_b8 v[160:161], v133 offset:19968            // 00000000C00C: D9C44E00 A0000085
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[198:205], v[182:189], v[66:81]// 00000000C014: D3AE0042 050B6DC6
	s_nop 3                                                    // 00000000C01C: BF800003
	v_max_f32_e32 v114, v82, v83                               // 00000000C020: 16E4A752
	v_max3_f32 v114, v84, v85, v114                            // 00000000C024: D1D30072 05CAAB54
	v_max3_f32 v114, v86, v87, v114                            // 00000000C02C: D1D30072 05CAAF56
	v_max3_f32 v114, v88, v89, v114                            // 00000000C034: D1D30072 05CAB358
	v_max3_f32 v114, v90, v91, v114                            // 00000000C03C: D1D30072 05CAB75A
	v_max3_f32 v114, v92, v93, v114                            // 00000000C044: D1D30072 05CABB5C
	v_max3_f32 v114, v94, v95, v114                            // 00000000C04C: D1D30072 05CABF5E
	v_max3_f32 v114, v96, v97, v114                            // 00000000C054: D1D30072 05CAC360
	s_waitcnt lgkmcnt(4)                                       // 00000000C05C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[138:145], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000C060: D3AC0000 0003117D D3AE0832 04CAD58A
	ds_read_b64_tr_b8 v[138:139], v133 offset:17152            // 00000000C070: D9C44300 8A000085
	ds_read_b64_tr_b8 v[140:141], v133 offset:18176            // 00000000C078: D9C44700 8C000085
	ds_read_b64_tr_b8 v[142:143], v133 offset:19200            // 00000000C080: D9C44B00 8E000085
	ds_read_b64_tr_b8 v[144:145], v133 offset:20224            // 00000000C088: D9C44F00 90000085
	v_max_f32_e32 v115, v66, v67                               // 00000000C090: 16E68742
	v_max3_f32 v115, v68, v69, v115                            // 00000000C094: D1D30073 05CE8B44
	v_max3_f32 v115, v70, v71, v115                            // 00000000C09C: D1D30073 05CE8F46
	v_max3_f32 v115, v72, v73, v115                            // 00000000C0A4: D1D30073 05CE9348
	v_max3_f32 v115, v74, v75, v115                            // 00000000C0AC: D1D30073 05CE974A
	v_max3_f32 v115, v76, v77, v115                            // 00000000C0B4: D1D30073 05CE9B4C
	v_max3_f32 v115, v78, v79, v115                            // 00000000C0BC: D1D30073 05CE9F4E
	v_max3_f32 v115, v80, v81, v115                            // 00000000C0C4: D1D30073 05CEA350
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[146:153], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000C0CC: D3AC0000 0003117D D3AE0822 048AD592
	v_max_f32_e32 v114, v114, v115                             // 00000000C0DC: 16E4E772
	v_mov_b32_e32 v115, v114                                   // 00000000C0E0: 7EE60372
	s_nop 1                                                    // 00000000C0E4: BF800001
	v_permlane32_swap_b32_e32 v114, v115                       // 00000000C0E8: 7EE4B573
	v_max_f32_e32 v114, v114, v115                             // 00000000C0EC: 16E4E772
	v_mul_f32_e32 v115, v118, v114                             // 00000000C0F0: 0AE6E576
	v_max_f32_e32 v115, v134, v115                             // 00000000C0F4: 16E6E786
	v_sub_f32_e32 v116, v115, v134                             // 00000000C0F8: 04E90D73
	v_cmp_lt_f32_e32 vcc, s71, v116                            // 00000000C0FC: 7C82E847
	s_waitcnt lgkmcnt(0)                                       // 00000000C100: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[154:161], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000C104: D3AC0000 0003117D D3AE0812 044AD59A
	s_cmp_lg_u64 vcc, 0                                        // 00000000C114: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000C118: 859280C1
	s_cselect_b32 s17, 1, 0                                    // 00000000C11C: 85118081
	v_cndmask_b32_e64 v137, v134, v115, s[18:19]               // 00000000C120: D1000089 004AE786
	v_fma_f32 v114, v114, v118, -v137                          // 00000000C128: D1CB0072 8626ED72
	v_floor_f32_e32 v114, v114                                 // 00000000C130: 7EE43F72
	v_med3_f32 v114, v114, s70, 0                              // 00000000C134: D1D60072 02008D72
	v_cvt_i32_f32_e32 v115, v114                               // 00000000C13C: 7EE61172
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[138:145], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000C140: D3AC0000 0003117D D3AE0802 040AD58A
	v_add_u32_e32 v136, 0x7f, v115                             // 00000000C150: 6910E6FF 0000007F
	v_add_f32_e32 v106, v137, v114                             // 00000000C158: 02D4E589
	v_sub_f32_e32 v106, 0x40c00000, v106                       // 00000000C15C: 04D4D4FF 40C00000
	v_pk_fma_f32 v[96:97], v[96:97], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C164: D3B00060 0DAAED60
	v_pk_fma_f32 v[94:95], v[94:95], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C16C: D3B0005E 0DAAED5E
	v_pk_fma_f32 v[92:93], v[92:93], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C174: D3B0005C 0DAAED5C
	v_pk_fma_f32 v[90:91], v[90:91], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C17C: D3B0005A 0DAAED5A
	v_pk_fma_f32 v[88:89], v[88:89], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C184: D3B00058 0DAAED58
	v_pk_fma_f32 v[86:87], v[86:87], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C18C: D3B00056 0DAAED56
	v_pk_fma_f32 v[84:85], v[84:85], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C194: D3B00054 0DAAED54
	v_pk_fma_f32 v[82:83], v[82:83], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C19C: D3B00052 0DAAED52
	v_pk_fma_f32 v[80:81], v[80:81], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C1A4: D3B00050 0DAAED50
	v_pk_fma_f32 v[78:79], v[78:79], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C1AC: D3B0004E 0DAAED4E
	v_pk_fma_f32 v[76:77], v[76:77], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C1B4: D3B0004C 0DAAED4C
	v_pk_fma_f32 v[74:75], v[74:75], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C1BC: D3B0004A 0DAAED4A
	v_pk_fma_f32 v[72:73], v[72:73], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C1C4: D3B00048 0DAAED48
	v_pk_fma_f32 v[70:71], v[70:71], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C1CC: D3B00046 0DAAED46
	v_pk_fma_f32 v[68:69], v[68:69], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C1D4: D3B00044 0DAAED44
	v_pk_fma_f32 v[66:67], v[66:67], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C1DC: D3B00042 0DAAED42
	s_cmp_eq_u32 s17, 0                                        // 00000000C1E4: BF068011
	s_cbranch_scc1 68                                          // 00000000C1E8: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1ffc>
	v_sub_f32_e32 v106, v134, v137                             // 00000000C1EC: 04D51386
	v_exp_f32_e32 v106, v106                                   // 00000000C1F0: 7ED4416A
	s_nop 0                                                    // 00000000C1F4: BF800000
	v_pk_mul_f32 v[64:65], v[64:65], v[106:107] op_sel_hi:[1,0]// 00000000C1F8: D3B14040 0802D540
	v_pk_mul_f32 v[62:63], v[62:63], v[106:107] op_sel_hi:[1,0]// 00000000C200: D3B1403E 0802D53E
	v_pk_mul_f32 v[60:61], v[60:61], v[106:107] op_sel_hi:[1,0]// 00000000C208: D3B1403C 0802D53C
	v_pk_mul_f32 v[58:59], v[58:59], v[106:107] op_sel_hi:[1,0]// 00000000C210: D3B1403A 0802D53A
	v_pk_mul_f32 v[56:57], v[56:57], v[106:107] op_sel_hi:[1,0]// 00000000C218: D3B14038 0802D538
	v_pk_mul_f32 v[54:55], v[54:55], v[106:107] op_sel_hi:[1,0]// 00000000C220: D3B14036 0802D536
	v_pk_mul_f32 v[52:53], v[52:53], v[106:107] op_sel_hi:[1,0]// 00000000C228: D3B14034 0802D534
	v_pk_mul_f32 v[50:51], v[50:51], v[106:107] op_sel_hi:[1,0]// 00000000C230: D3B14032 0802D532
	v_pk_mul_f32 v[48:49], v[48:49], v[106:107] op_sel_hi:[1,0]// 00000000C238: D3B14030 0802D530
	v_pk_mul_f32 v[46:47], v[46:47], v[106:107] op_sel_hi:[1,0]// 00000000C240: D3B1402E 0802D52E
	v_pk_mul_f32 v[44:45], v[44:45], v[106:107] op_sel_hi:[1,0]// 00000000C248: D3B1402C 0802D52C
	v_pk_mul_f32 v[42:43], v[42:43], v[106:107] op_sel_hi:[1,0]// 00000000C250: D3B1402A 0802D52A
	v_pk_mul_f32 v[40:41], v[40:41], v[106:107] op_sel_hi:[1,0]// 00000000C258: D3B14028 0802D528
	v_pk_mul_f32 v[38:39], v[38:39], v[106:107] op_sel_hi:[1,0]// 00000000C260: D3B14026 0802D526
	v_pk_mul_f32 v[36:37], v[36:37], v[106:107] op_sel_hi:[1,0]// 00000000C268: D3B14024 0802D524
	v_pk_mul_f32 v[34:35], v[34:35], v[106:107] op_sel_hi:[1,0]// 00000000C270: D3B14022 0802D522
	v_pk_mul_f32 v[32:33], v[32:33], v[106:107] op_sel_hi:[1,0]// 00000000C278: D3B14020 0802D520
	v_pk_mul_f32 v[30:31], v[30:31], v[106:107] op_sel_hi:[1,0]// 00000000C280: D3B1401E 0802D51E
	v_pk_mul_f32 v[28:29], v[28:29], v[106:107] op_sel_hi:[1,0]// 00000000C288: D3B1401C 0802D51C
	v_pk_mul_f32 v[26:27], v[26:27], v[106:107] op_sel_hi:[1,0]// 00000000C290: D3B1401A 0802D51A
	v_pk_mul_f32 v[24:25], v[24:25], v[106:107] op_sel_hi:[1,0]// 00000000C298: D3B14018 0802D518
	v_pk_mul_f32 v[22:23], v[22:23], v[106:107] op_sel_hi:[1,0]// 00000000C2A0: D3B14016 0802D516
	v_pk_mul_f32 v[20:21], v[20:21], v[106:107] op_sel_hi:[1,0]// 00000000C2A8: D3B14014 0802D514
	v_pk_mul_f32 v[18:19], v[18:19], v[106:107] op_sel_hi:[1,0]// 00000000C2B0: D3B14012 0802D512
	v_pk_mul_f32 v[16:17], v[16:17], v[106:107] op_sel_hi:[1,0]// 00000000C2B8: D3B14010 0802D510
	v_pk_mul_f32 v[14:15], v[14:15], v[106:107] op_sel_hi:[1,0]// 00000000C2C0: D3B1400E 0802D50E
	v_pk_mul_f32 v[12:13], v[12:13], v[106:107] op_sel_hi:[1,0]// 00000000C2C8: D3B1400C 0802D50C
	v_pk_mul_f32 v[10:11], v[10:11], v[106:107] op_sel_hi:[1,0]// 00000000C2D0: D3B1400A 0802D50A
	v_pk_mul_f32 v[8:9], v[8:9], v[106:107] op_sel_hi:[1,0]    // 00000000C2D8: D3B14008 0802D508
	v_pk_mul_f32 v[6:7], v[6:7], v[106:107] op_sel_hi:[1,0]    // 00000000C2E0: D3B14006 0802D506
	v_pk_mul_f32 v[4:5], v[4:5], v[106:107] op_sel_hi:[1,0]    // 00000000C2E8: D3B14004 0802D504
	v_pk_mul_f32 v[2:3], v[2:3], v[106:107] op_sel_hi:[1,0]    // 00000000C2F0: D3B14002 0802D502
	v_mul_f32_e32 v135, v135, v106                             // 00000000C2F8: 0B0ED587
	s_waitcnt vmcnt(3)                                         // 00000000C2FC: BF8C0F73
	s_barrier                                                  // 00000000C300: BF8A0000
	s_add_u32 s16, s16, 1                                      // 00000000C304: 80108110
	s_add_u32 s17, s16, 1                                      // 00000000C308: 80118110
	s_cmp_ge_u32 s17, s48                                      // 00000000C30C: BF093011
	s_cbranch_scc1 350                                         // 00000000C310: BF85015E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x258c>
	s_setprio 0                                                // 00000000C314: BF8F0000
	v_exp_f32_e32 v82, v82                                     // 00000000C318: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000C31C: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000C320: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000C324: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000C328: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000C32C: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000C330: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000C334: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000C338: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000C33C: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000C340: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000C344: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000C348: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000C34C: 7EBE415F
	v_exp_f32_e32 v96, v96                                     // 00000000C350: 7EC04160
	v_exp_f32_e32 v97, v97                                     // 00000000C354: 7EC24161
	v_mov_b32_e32 v106, v136                                   // 00000000C358: 7ED40388
	v_cvt_pk_fp8_f32 v106, v82, v83                            // 00000000C35C: D2A2006A 0002A752
	v_cvt_pk_fp8_f32 v106, v84, v85 op_sel:[0,0,1]             // 00000000C364: D2A2406A 0002AB54
	v_mov_b32_e32 v107, v136                                   // 00000000C36C: 7ED60388
	v_cvt_pk_fp8_f32 v107, v86, v87                            // 00000000C370: D2A2006B 0002AF56
	v_cvt_pk_fp8_f32 v107, v88, v89 op_sel:[0,0,1]             // 00000000C378: D2A2406B 0002B358
	v_exp_f32_e32 v66, v66                                     // 00000000C380: 7E844142
	v_mov_b32_e32 v108, v136                                   // 00000000C384: 7ED80388
	v_cvt_pk_fp8_f32 v108, v90, v91                            // 00000000C388: D2A2006C 0002B75A
	v_exp_f32_e32 v67, v67                                     // 00000000C390: 7E864143
	v_cvt_pk_fp8_f32 v108, v92, v93 op_sel:[0,0,1]             // 00000000C394: D2A2406C 0002BB5C
	v_exp_f32_e32 v68, v68                                     // 00000000C39C: 7E884144
	v_mov_b32_e32 v109, v136                                   // 00000000C3A0: 7EDA0388
	v_cvt_pk_fp8_f32 v109, v94, v95                            // 00000000C3A4: D2A2006D 0002BF5E
	v_exp_f32_e32 v69, v69                                     // 00000000C3AC: 7E8A4145
	v_cvt_pk_fp8_f32 v109, v96, v97 op_sel:[0,0,1]             // 00000000C3B0: D2A2406D 0002C360
	v_exp_f32_e32 v70, v70                                     // 00000000C3B8: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000C3BC: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000C3C0: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000C3C4: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000C3C8: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000C3CC: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000C3D0: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000C3D4: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000C3D8: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000C3DC: 7E9E414F
	v_exp_f32_e32 v80, v80                                     // 00000000C3E0: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000C3E4: 7EA24151
	v_mov_b32_e32 v110, v136                                   // 00000000C3E8: 7EDC0388
	v_cvt_pk_fp8_f32 v110, v66, v67                            // 00000000C3EC: D2A2006E 00028742
	v_cvt_pk_fp8_f32 v110, v68, v69 op_sel:[0,0,1]             // 00000000C3F4: D2A2406E 00028B44
	v_mov_b32_e32 v111, v136                                   // 00000000C3FC: 7EDE0388
	v_cvt_pk_fp8_f32 v111, v70, v71                            // 00000000C400: D2A2006F 00028F46
	v_cvt_pk_fp8_f32 v111, v72, v73 op_sel:[0,0,1]             // 00000000C408: D2A2406F 00029348
	v_mov_b32_e32 v112, v136                                   // 00000000C410: 7EE00388
	v_cvt_pk_fp8_f32 v112, v74, v75                            // 00000000C414: D2A20070 0002974A
	v_cvt_pk_fp8_f32 v112, v76, v77 op_sel:[0,0,1]             // 00000000C41C: D2A24070 00029B4C
	v_mov_b32_e32 v113, v136                                   // 00000000C424: 7EE20388
	v_cvt_pk_fp8_f32 v113, v78, v79                            // 00000000C428: D2A20071 00029F4E
	v_cvt_pk_fp8_f32 v113, v80, v81 op_sel:[0,0,1]             // 00000000C430: D2A24071 0002A350
	ds_read_b128 v[66:69], v122                                // 00000000C438: D9FE0000 4200007A
	ds_read_b128 v[70:73], v122 offset:16                      // 00000000C440: D9FE0010 4600007A
	ds_read_b128 v[138:141], v122 offset:8192                  // 00000000C448: D9FE2000 8A00007A
	ds_read_b128 v[142:145], v122 offset:8208                  // 00000000C450: D9FE2010 8E00007A
	ds_read_b128 v[146:149], v123                              // 00000000C458: D9FE0000 9200007B
	ds_read_b128 v[150:153], v123 offset:16                    // 00000000C460: D9FE0010 9600007B
	ds_read_b128 v[154:157], v123 offset:8192                  // 00000000C468: D9FE2000 9A00007B
	ds_read_b128 v[158:161], v123 offset:8208                  // 00000000C470: D9FE2010 9E00007B
	s_barrier                                                  // 00000000C478: BF8A0000
	s_setprio 1                                                // 00000000C47C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[114:117], v[98:105], v[106:113], 0// 00000000C480: D3AD0072 0202D562
	ds_read_b128 v[190:193], v124                              // 00000000C488: D9FE0000 BE00007C
	ds_read_b128 v[194:197], v124 offset:16                    // 00000000C490: D9FE0010 C200007C
	s_waitcnt lgkmcnt(6)                                       // 00000000C498: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[66:73], v[166:173], 0// 00000000C49C: D3AE0052 02034D42
	ds_read_b128 v[198:201], v124 offset:8192                  // 00000000C4A4: D9FE2000 C600007C
	ds_read_b128 v[202:205], v124 offset:8208                  // 00000000C4AC: D9FE2010 CA00007C
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[138:145], v[166:173], 0// 00000000C4B4: D3AE0042 02034D8A
	ds_read_b64_tr_b8 v[138:139], v133 offset:24576            // 00000000C4BC: D9C46000 8A000085
	ds_read_b64_tr_b8 v[140:141], v133 offset:25600            // 00000000C4C4: D9C46400 8C000085
	ds_read_b64_tr_b8 v[142:143], v133 offset:26624            // 00000000C4CC: D9C46800 8E000085
	ds_read_b64_tr_b8 v[144:145], v133 offset:27648            // 00000000C4D4: D9C46C00 90000085
	s_min_u32 s17, s80, s82                                    // 00000000C4DC: 83915250
	s_add_u32 m0, s72, 0xc000                                  // 00000000C4E0: 807CFF48 0000C000
	s_nop 0                                                    // 00000000C4E8: BF800000
	buffer_load_dwordx4 v127, s[60:63], s17 offen lds          // 00000000C4EC: E05D1000 110F007F
	v_lshlrev_b32_e32 v134, 23, v136                           // 00000000C4F4: 250D1097
	v_fma_f32 v135, v114, v134, v135                           // 00000000C4F8: D1CB0087 061F0D72
	s_waitcnt lgkmcnt(8)                                       // 00000000C500: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[146:153], v[174:181], v[82:97]// 00000000C504: D3AE0052 054B5D92
	ds_read_b64_tr_b8 v[146:147], v133 offset:24832            // 00000000C50C: D9C46100 92000085
	ds_read_b64_tr_b8 v[148:149], v133 offset:25856            // 00000000C514: D9C46500 94000085
	ds_read_b64_tr_b8 v[150:151], v133 offset:26880            // 00000000C51C: D9C46900 96000085
	ds_read_b64_tr_b8 v[152:153], v133 offset:27904            // 00000000C524: D9C46D00 98000085
	s_add_u32 m0, s72, 0xe000                                  // 00000000C52C: 807CFF48 0000E000
	s_nop 0                                                    // 00000000C534: BF800000
	buffer_load_dwordx4 v128, s[60:63], s17 offen lds          // 00000000C538: E05D1000 110F0080
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[154:161], v[174:181], v[66:81]// 00000000C540: D3AE0042 050B5D9A
	s_min_u32 s17, s81, s83                                    // 00000000C548: 83915351
	s_add_u32 m0, s73, 0x2000                                  // 00000000C54C: 807CFF49 00002000
	s_nop 0                                                    // 00000000C554: BF800000
	buffer_load_dwordx4 v129, s[64:67], s17 offen lds          // 00000000C558: E05D1000 11100081
	s_add_u32 s80, s80, s74                                    // 00000000C560: 80504A50
	s_add_u32 s81, s81, s34                                    // 00000000C564: 80512251
	s_waitcnt lgkmcnt(8)                                       // 00000000C568: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[190:197], v[182:189], v[82:97]// 00000000C56C: D3AE0052 054B6DBE
	ds_read_b64_tr_b8 v[154:155], v133 offset:25088            // 00000000C574: D9C46200 9A000085
	ds_read_b64_tr_b8 v[156:157], v133 offset:26112            // 00000000C57C: D9C46600 9C000085
	ds_read_b64_tr_b8 v[158:159], v133 offset:27136            // 00000000C584: D9C46A00 9E000085
	ds_read_b64_tr_b8 v[160:161], v133 offset:28160            // 00000000C58C: D9C46E00 A0000085
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[198:205], v[182:189], v[66:81]// 00000000C594: D3AE0042 050B6DC6
	s_nop 3                                                    // 00000000C59C: BF800003
	v_max_f32_e32 v114, v82, v83                               // 00000000C5A0: 16E4A752
	v_max3_f32 v114, v84, v85, v114                            // 00000000C5A4: D1D30072 05CAAB54
	v_max3_f32 v114, v86, v87, v114                            // 00000000C5AC: D1D30072 05CAAF56
	v_max3_f32 v114, v88, v89, v114                            // 00000000C5B4: D1D30072 05CAB358
	v_max3_f32 v114, v90, v91, v114                            // 00000000C5BC: D1D30072 05CAB75A
	v_max3_f32 v114, v92, v93, v114                            // 00000000C5C4: D1D30072 05CABB5C
	v_max3_f32 v114, v94, v95, v114                            // 00000000C5CC: D1D30072 05CABF5E
	v_max3_f32 v114, v96, v97, v114                            // 00000000C5D4: D1D30072 05CAC360
	s_waitcnt lgkmcnt(4)                                       // 00000000C5DC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[138:145], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000C5E0: D3AC0000 0003117D D3AE0832 04CAD58A
	ds_read_b64_tr_b8 v[138:139], v133 offset:25344            // 00000000C5F0: D9C46300 8A000085
	ds_read_b64_tr_b8 v[140:141], v133 offset:26368            // 00000000C5F8: D9C46700 8C000085
	ds_read_b64_tr_b8 v[142:143], v133 offset:27392            // 00000000C600: D9C46B00 8E000085
	ds_read_b64_tr_b8 v[144:145], v133 offset:28416            // 00000000C608: D9C46F00 90000085
	v_max_f32_e32 v115, v66, v67                               // 00000000C610: 16E68742
	v_max3_f32 v115, v68, v69, v115                            // 00000000C614: D1D30073 05CE8B44
	v_max3_f32 v115, v70, v71, v115                            // 00000000C61C: D1D30073 05CE8F46
	v_max3_f32 v115, v72, v73, v115                            // 00000000C624: D1D30073 05CE9348
	v_max3_f32 v115, v74, v75, v115                            // 00000000C62C: D1D30073 05CE974A
	v_max3_f32 v115, v76, v77, v115                            // 00000000C634: D1D30073 05CE9B4C
	v_max3_f32 v115, v78, v79, v115                            // 00000000C63C: D1D30073 05CE9F4E
	v_max3_f32 v115, v80, v81, v115                            // 00000000C644: D1D30073 05CEA350
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[146:153], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000C64C: D3AC0000 0003117D D3AE0822 048AD592
	v_max_f32_e32 v114, v114, v115                             // 00000000C65C: 16E4E772
	v_mov_b32_e32 v115, v114                                   // 00000000C660: 7EE60372
	s_nop 1                                                    // 00000000C664: BF800001
	v_permlane32_swap_b32_e32 v114, v115                       // 00000000C668: 7EE4B573
	v_max_f32_e32 v114, v114, v115                             // 00000000C66C: 16E4E772
	v_mul_f32_e32 v115, v118, v114                             // 00000000C670: 0AE6E576
	v_max_f32_e32 v115, v137, v115                             // 00000000C674: 16E6E789
	v_sub_f32_e32 v116, v115, v137                             // 00000000C678: 04E91373
	v_cmp_lt_f32_e32 vcc, s71, v116                            // 00000000C67C: 7C82E847
	s_waitcnt lgkmcnt(0)                                       // 00000000C680: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[154:161], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000C684: D3AC0000 0003117D D3AE0812 044AD59A
	s_cmp_lg_u64 vcc, 0                                        // 00000000C694: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000C698: 859280C1
	s_cselect_b32 s17, 1, 0                                    // 00000000C69C: 85118081
	v_cndmask_b32_e64 v134, v137, v115, s[18:19]               // 00000000C6A0: D1000086 004AE789
	v_fma_f32 v114, v114, v118, -v134                          // 00000000C6A8: D1CB0072 861AED72
	v_floor_f32_e32 v114, v114                                 // 00000000C6B0: 7EE43F72
	v_med3_f32 v114, v114, s70, 0                              // 00000000C6B4: D1D60072 02008D72
	v_cvt_i32_f32_e32 v115, v114                               // 00000000C6BC: 7EE61172
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[138:145], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000C6C0: D3AC0000 0003117D D3AE0802 040AD58A
	v_add_u32_e32 v136, 0x7f, v115                             // 00000000C6D0: 6910E6FF 0000007F
	v_add_f32_e32 v106, v134, v114                             // 00000000C6D8: 02D4E586
	v_sub_f32_e32 v106, 0x40c00000, v106                       // 00000000C6DC: 04D4D4FF 40C00000
	v_pk_fma_f32 v[96:97], v[96:97], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C6E4: D3B00060 0DAAED60
	v_pk_fma_f32 v[94:95], v[94:95], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C6EC: D3B0005E 0DAAED5E
	v_pk_fma_f32 v[92:93], v[92:93], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C6F4: D3B0005C 0DAAED5C
	v_pk_fma_f32 v[90:91], v[90:91], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C6FC: D3B0005A 0DAAED5A
	v_pk_fma_f32 v[88:89], v[88:89], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C704: D3B00058 0DAAED58
	v_pk_fma_f32 v[86:87], v[86:87], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C70C: D3B00056 0DAAED56
	v_pk_fma_f32 v[84:85], v[84:85], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C714: D3B00054 0DAAED54
	v_pk_fma_f32 v[82:83], v[82:83], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C71C: D3B00052 0DAAED52
	v_pk_fma_f32 v[80:81], v[80:81], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C724: D3B00050 0DAAED50
	v_pk_fma_f32 v[78:79], v[78:79], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C72C: D3B0004E 0DAAED4E
	v_pk_fma_f32 v[76:77], v[76:77], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C734: D3B0004C 0DAAED4C
	v_pk_fma_f32 v[74:75], v[74:75], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C73C: D3B0004A 0DAAED4A
	v_pk_fma_f32 v[72:73], v[72:73], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C744: D3B00048 0DAAED48
	v_pk_fma_f32 v[70:71], v[70:71], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C74C: D3B00046 0DAAED46
	v_pk_fma_f32 v[68:69], v[68:69], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C754: D3B00044 0DAAED44
	v_pk_fma_f32 v[66:67], v[66:67], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C75C: D3B00042 0DAAED42
	s_cmp_eq_u32 s17, 0                                        // 00000000C764: BF068011
	s_cbranch_scc1 68                                          // 00000000C768: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x257c>
	v_sub_f32_e32 v106, v137, v134                             // 00000000C76C: 04D50D89
	v_exp_f32_e32 v106, v106                                   // 00000000C770: 7ED4416A
	s_nop 0                                                    // 00000000C774: BF800000
	v_pk_mul_f32 v[64:65], v[64:65], v[106:107] op_sel_hi:[1,0]// 00000000C778: D3B14040 0802D540
	v_pk_mul_f32 v[62:63], v[62:63], v[106:107] op_sel_hi:[1,0]// 00000000C780: D3B1403E 0802D53E
	v_pk_mul_f32 v[60:61], v[60:61], v[106:107] op_sel_hi:[1,0]// 00000000C788: D3B1403C 0802D53C
	v_pk_mul_f32 v[58:59], v[58:59], v[106:107] op_sel_hi:[1,0]// 00000000C790: D3B1403A 0802D53A
	v_pk_mul_f32 v[56:57], v[56:57], v[106:107] op_sel_hi:[1,0]// 00000000C798: D3B14038 0802D538
	v_pk_mul_f32 v[54:55], v[54:55], v[106:107] op_sel_hi:[1,0]// 00000000C7A0: D3B14036 0802D536
	v_pk_mul_f32 v[52:53], v[52:53], v[106:107] op_sel_hi:[1,0]// 00000000C7A8: D3B14034 0802D534
	v_pk_mul_f32 v[50:51], v[50:51], v[106:107] op_sel_hi:[1,0]// 00000000C7B0: D3B14032 0802D532
	v_pk_mul_f32 v[48:49], v[48:49], v[106:107] op_sel_hi:[1,0]// 00000000C7B8: D3B14030 0802D530
	v_pk_mul_f32 v[46:47], v[46:47], v[106:107] op_sel_hi:[1,0]// 00000000C7C0: D3B1402E 0802D52E
	v_pk_mul_f32 v[44:45], v[44:45], v[106:107] op_sel_hi:[1,0]// 00000000C7C8: D3B1402C 0802D52C
	v_pk_mul_f32 v[42:43], v[42:43], v[106:107] op_sel_hi:[1,0]// 00000000C7D0: D3B1402A 0802D52A
	v_pk_mul_f32 v[40:41], v[40:41], v[106:107] op_sel_hi:[1,0]// 00000000C7D8: D3B14028 0802D528
	v_pk_mul_f32 v[38:39], v[38:39], v[106:107] op_sel_hi:[1,0]// 00000000C7E0: D3B14026 0802D526
	v_pk_mul_f32 v[36:37], v[36:37], v[106:107] op_sel_hi:[1,0]// 00000000C7E8: D3B14024 0802D524
	v_pk_mul_f32 v[34:35], v[34:35], v[106:107] op_sel_hi:[1,0]// 00000000C7F0: D3B14022 0802D522
	v_pk_mul_f32 v[32:33], v[32:33], v[106:107] op_sel_hi:[1,0]// 00000000C7F8: D3B14020 0802D520
	v_pk_mul_f32 v[30:31], v[30:31], v[106:107] op_sel_hi:[1,0]// 00000000C800: D3B1401E 0802D51E
	v_pk_mul_f32 v[28:29], v[28:29], v[106:107] op_sel_hi:[1,0]// 00000000C808: D3B1401C 0802D51C
	v_pk_mul_f32 v[26:27], v[26:27], v[106:107] op_sel_hi:[1,0]// 00000000C810: D3B1401A 0802D51A
	v_pk_mul_f32 v[24:25], v[24:25], v[106:107] op_sel_hi:[1,0]// 00000000C818: D3B14018 0802D518
	v_pk_mul_f32 v[22:23], v[22:23], v[106:107] op_sel_hi:[1,0]// 00000000C820: D3B14016 0802D516
	v_pk_mul_f32 v[20:21], v[20:21], v[106:107] op_sel_hi:[1,0]// 00000000C828: D3B14014 0802D514
	v_pk_mul_f32 v[18:19], v[18:19], v[106:107] op_sel_hi:[1,0]// 00000000C830: D3B14012 0802D512
	v_pk_mul_f32 v[16:17], v[16:17], v[106:107] op_sel_hi:[1,0]// 00000000C838: D3B14010 0802D510
	v_pk_mul_f32 v[14:15], v[14:15], v[106:107] op_sel_hi:[1,0]// 00000000C840: D3B1400E 0802D50E
	v_pk_mul_f32 v[12:13], v[12:13], v[106:107] op_sel_hi:[1,0]// 00000000C848: D3B1400C 0802D50C
	v_pk_mul_f32 v[10:11], v[10:11], v[106:107] op_sel_hi:[1,0]// 00000000C850: D3B1400A 0802D50A
	v_pk_mul_f32 v[8:9], v[8:9], v[106:107] op_sel_hi:[1,0]    // 00000000C858: D3B14008 0802D508
	v_pk_mul_f32 v[6:7], v[6:7], v[106:107] op_sel_hi:[1,0]    // 00000000C860: D3B14006 0802D506
	v_pk_mul_f32 v[4:5], v[4:5], v[106:107] op_sel_hi:[1,0]    // 00000000C868: D3B14004 0802D504
	v_pk_mul_f32 v[2:3], v[2:3], v[106:107] op_sel_hi:[1,0]    // 00000000C870: D3B14002 0802D502
	v_mul_f32_e32 v135, v135, v106                             // 00000000C878: 0B0ED587
	s_waitcnt vmcnt(3)                                         // 00000000C87C: BF8C0F73
	s_barrier                                                  // 00000000C880: BF8A0000
	s_add_u32 s16, s16, 1                                      // 00000000C884: 80108110
	s_branch 64129                                             // 00000000C888: BF82FA81 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf90>
	v_mov_b32_e32 v134, v137                                   // 00000000C88C: 7F0C0389
	s_add_u32 s17, s16, s35                                    // 00000000C890: 80112310
	s_bitcmp1_b32 s17, 0                                       // 00000000C894: BF0D8011
	s_cbranch_scc1 772                                         // 00000000C898: BF850304 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x31ac>
	s_branch 4                                                 // 00000000C89C: BF820004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x25b0>
	v_mov_b32_e32 v134, v137                                   // 00000000C8A0: 7F0C0389
	s_add_u32 s17, s16, s35                                    // 00000000C8A4: 80112310
	s_bitcmp1_b32 s17, 0                                       // 00000000C8A8: BF0D8011
	s_cbranch_scc1 767                                         // 00000000C8AC: BF8502FF <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x31ac>
	s_add_u32 s17, s16, 1                                      // 00000000C8B0: 80118110
	s_cmp_ge_u32 s17, s78                                      // 00000000C8B4: BF094E11
	s_cbranch_scc1 1532                                        // 00000000C8B8: BF8505FC <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3dac>
	s_add_u32 s17, s16, s35                                    // 00000000C8BC: 80112310
	s_lshl_b32 s18, s17, 13                                    // 00000000C8C0: 8E128D11
	s_and_b32 s18, s18, 0x6000                                 // 00000000C8C4: 8612FF12 00006000
	v_add_u32_e32 v137, s18, v133                              // 00000000C8CC: 69130A12
	s_cmp_ge_u32 s16, s48                                      // 00000000C8D0: BF093010
	s_cbranch_scc1 202                                         // 00000000C8D4: BF8500CA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2900>
	s_setprio 0                                                // 00000000C8D8: BF8F0000
	s_lshl_b32 s18, s17, 14                                    // 00000000C8DC: 8E128E11
	s_addk_i32 s18, 0x4000                                     // 00000000C8E0: B7124000
	s_and_b32 s18, s18, 0xc000                                 // 00000000C8E4: 8612FF12 0000C000
	v_exp_f32_e32 v82, v82                                     // 00000000C8EC: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000C8F0: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000C8F4: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000C8F8: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000C8FC: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000C900: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000C904: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000C908: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000C90C: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000C910: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000C914: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000C918: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000C91C: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000C920: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000C924: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000C928: 7E9E414F
	v_or_b32_e32 v114, s18, v122                               // 00000000C92C: 28E4F412
	v_or_b32_e32 v115, s18, v123                               // 00000000C930: 28E6F612
	ds_read_b128 v[138:141], v114                              // 00000000C934: D9FE0000 8A000072
	ds_read_b128 v[142:145], v114 offset:16                    // 00000000C93C: D9FE0010 8E000072
	ds_read_b128 v[146:149], v114 offset:8192                  // 00000000C944: D9FE2000 92000072
	ds_read_b128 v[150:153], v114 offset:8208                  // 00000000C94C: D9FE2010 96000072
	ds_read_b128 v[154:157], v115                              // 00000000C954: D9FE0000 9A000073
	ds_read_b128 v[158:161], v115 offset:16                    // 00000000C95C: D9FE0010 9E000073
	ds_read_b128 v[190:193], v115 offset:8192                  // 00000000C964: D9FE2000 BE000073
	ds_read_b128 v[194:197], v115 offset:8208                  // 00000000C96C: D9FE2010 C2000073
	v_mov_b32_e32 v113, 0                                      // 00000000C974: 7EE20280
	v_mov_b32_e32 v106, 0                                      // 00000000C978: 7ED40280
	v_mov_b32_e32 v110, 0                                      // 00000000C97C: 7EDC0280
	v_mov_b32_e32 v107, 0                                      // 00000000C980: 7ED60280
	v_mov_b32_e32 v111, 0                                      // 00000000C984: 7EDE0280
	v_mov_b32_e32 v108, 0                                      // 00000000C988: 7ED80280
	v_mov_b32_e32 v112, 0                                      // 00000000C98C: 7EE00280
	v_mov_b32_e32 v109, 0                                      // 00000000C990: 7EDA0280
	v_exp_f32_e32 v84, v84                                     // 00000000C994: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000C998: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000C99C: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000C9A0: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000C9A4: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000C9A8: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000C9AC: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000C9B0: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000C9B4: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000C9B8: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000C9BC: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000C9C0: 7E9A414D
	v_exp_f32_e32 v96, v96                                     // 00000000C9C4: 7EC04160
	v_exp_f32_e32 v97, v97                                     // 00000000C9C8: 7EC24161
	v_exp_f32_e32 v80, v80                                     // 00000000C9CC: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000C9D0: 7EA24151
	v_cvt_pk_fp8_f32 v106, v82, v83                            // 00000000C9D4: D2A2006A 0002A752
	v_cvt_pk_fp8_f32 v110, v66, v67                            // 00000000C9DC: D2A2006E 00028742
	v_cvt_pk_fp8_f32 v107, v86, v87                            // 00000000C9E4: D2A2006B 0002AF56
	v_cvt_pk_fp8_f32 v111, v70, v71                            // 00000000C9EC: D2A2006F 00028F46
	v_cvt_pk_fp8_f32 v108, v90, v91                            // 00000000C9F4: D2A2006C 0002B75A
	v_cvt_pk_fp8_f32 v112, v74, v75                            // 00000000C9FC: D2A20070 0002974A
	v_cvt_pk_fp8_f32 v109, v94, v95                            // 00000000CA04: D2A2006D 0002BF5E
	v_cvt_pk_fp8_f32 v113, v78, v79                            // 00000000CA0C: D2A20071 00029F4E
	v_cvt_pk_fp8_f32 v106, v84, v85 op_sel:[0,0,1]             // 00000000CA14: D2A2406A 0002AB54
	v_cvt_pk_fp8_f32 v110, v68, v69 op_sel:[0,0,1]             // 00000000CA1C: D2A2406E 00028B44
	v_cvt_pk_fp8_f32 v107, v88, v89 op_sel:[0,0,1]             // 00000000CA24: D2A2406B 0002B358
	v_cvt_pk_fp8_f32 v111, v72, v73 op_sel:[0,0,1]             // 00000000CA2C: D2A2406F 00029348
	v_cvt_pk_fp8_f32 v108, v92, v93 op_sel:[0,0,1]             // 00000000CA34: D2A2406C 0002BB5C
	v_cvt_pk_fp8_f32 v112, v76, v77 op_sel:[0,0,1]             // 00000000CA3C: D2A24070 00029B4C
	v_cvt_pk_fp8_f32 v109, v96, v97 op_sel:[0,0,1]             // 00000000CA44: D2A2406D 0002C360
	v_cvt_pk_fp8_f32 v113, v80, v81 op_sel:[0,0,1]             // 00000000CA4C: D2A24071 0002A350
	s_barrier                                                  // 00000000CA54: BF8A0000
	s_setprio 1                                                // 00000000CA58: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[98:105], v[106:113], 0// 00000000CA5C: D3AD0042 0202D562
	s_nop 11                                                   // 00000000CA64: BF80000B
	v_lshlrev_b32_e32 v67, 23, v136                            // 00000000CA68: 24871097
	v_fma_f32 v135, v66, v67, v135                             // 00000000CA6C: D1CB0087 061E8742
	s_waitcnt lgkmcnt(0)                                       // 00000000CA74: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[138:145], v[166:173], 0// 00000000CA78: D3AE0052 02034D8A
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[146:153], v[166:173], 0// 00000000CA80: D3AE0042 02034D92
	v_or_b32_e32 v114, s18, v124                               // 00000000CA88: 28E4F812
	ds_read_b128 v[138:141], v114                              // 00000000CA8C: D9FE0000 8A000072
	ds_read_b128 v[142:145], v114 offset:16                    // 00000000CA94: D9FE0010 8E000072
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[154:161], v[174:181], v[82:97]// 00000000CA9C: D3AE0052 054B5D9A
	ds_read_b128 v[146:149], v114 offset:8192                  // 00000000CAA4: D9FE2000 92000072
	ds_read_b128 v[150:153], v114 offset:8208                  // 00000000CAAC: D9FE2010 96000072
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[190:197], v[174:181], v[66:81]// 00000000CAB4: D3AE0042 050B5DBE
	s_waitcnt lgkmcnt(0)                                       // 00000000CABC: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[138:145], v[182:189], v[82:97]// 00000000CAC0: D3AE0052 054B6D8A
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[146:153], v[182:189], v[66:81]// 00000000CAC8: D3AE0042 050B6D92
	s_lshl_b32 s18, s16, 6                                     // 00000000CAD0: 8E128610
	s_add_u32 s20, s18, 64                                     // 00000000CAD4: 8014C012
	s_sub_u32 s18, s3, s20                                     // 00000000CAD8: 80921403
	s_sub_i32 s18, s18, 0                                      // 00000000CADC: 81928012
	s_cmp_ge_i32 s18, 32                                       // 00000000CAE0: BF03A012
	s_cbranch_scc1 288                                         // 00000000CAE4: BF850120 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2c68>
	s_cmp_lt_i32 s18, 0                                        // 00000000CAE8: BF048012
	s_cbranch_scc1 269                                         // 00000000CAEC: BF85010D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2c24>
	v_add_u32_e32 v114, s18, v119                              // 00000000CAF0: 68E4EE12
	v_and_b32_e32 v115, 4, v131                                // 00000000CAF4: 26E70684
	v_sub_u32_e32 v114, v114, v115                             // 00000000CAF8: 6AE4E772
	v_cmp_gt_i32_e32 vcc, 0, v114                              // 00000000CAFC: 7D88E480
	s_nop 3                                                    // 00000000CB00: BF800003
	v_cndmask_b32_e64 v82, v82, v126, vcc                      // 00000000CB04: D1000052 01AAFD52
	v_cmp_gt_i32_e32 vcc, 1, v114                              // 00000000CB0C: 7D88E481
	s_nop 1                                                    // 00000000CB10: BF800001
	v_cndmask_b32_e64 v83, v83, v126, vcc                      // 00000000CB14: D1000053 01AAFD53
	v_cmp_gt_i32_e32 vcc, 2, v114                              // 00000000CB1C: 7D88E482
	s_nop 1                                                    // 00000000CB20: BF800001
	v_cndmask_b32_e64 v84, v84, v126, vcc                      // 00000000CB24: D1000054 01AAFD54
	v_cmp_gt_i32_e32 vcc, 3, v114                              // 00000000CB2C: 7D88E483
	s_nop 1                                                    // 00000000CB30: BF800001
	v_cndmask_b32_e64 v85, v85, v126, vcc                      // 00000000CB34: D1000055 01AAFD55
	v_cmp_gt_i32_e32 vcc, 8, v114                              // 00000000CB3C: 7D88E488
	s_nop 1                                                    // 00000000CB40: BF800001
	v_cndmask_b32_e64 v86, v86, v126, vcc                      // 00000000CB44: D1000056 01AAFD56
	v_cmp_gt_i32_e32 vcc, 9, v114                              // 00000000CB4C: 7D88E489
	s_nop 1                                                    // 00000000CB50: BF800001
	v_cndmask_b32_e64 v87, v87, v126, vcc                      // 00000000CB54: D1000057 01AAFD57
	v_cmp_gt_i32_e32 vcc, 10, v114                             // 00000000CB5C: 7D88E48A
	s_nop 1                                                    // 00000000CB60: BF800001
	v_cndmask_b32_e64 v88, v88, v126, vcc                      // 00000000CB64: D1000058 01AAFD58
	v_cmp_gt_i32_e32 vcc, 11, v114                             // 00000000CB6C: 7D88E48B
	s_nop 1                                                    // 00000000CB70: BF800001
	v_cndmask_b32_e64 v89, v89, v126, vcc                      // 00000000CB74: D1000059 01AAFD59
	v_cmp_gt_i32_e32 vcc, 16, v114                             // 00000000CB7C: 7D88E490
	s_nop 1                                                    // 00000000CB80: BF800001
	v_cndmask_b32_e64 v90, v90, v126, vcc                      // 00000000CB84: D100005A 01AAFD5A
	v_cmp_gt_i32_e32 vcc, 17, v114                             // 00000000CB8C: 7D88E491
	s_nop 1                                                    // 00000000CB90: BF800001
	v_cndmask_b32_e64 v91, v91, v126, vcc                      // 00000000CB94: D100005B 01AAFD5B
	v_cmp_gt_i32_e32 vcc, 18, v114                             // 00000000CB9C: 7D88E492
	s_nop 1                                                    // 00000000CBA0: BF800001
	v_cndmask_b32_e64 v92, v92, v126, vcc                      // 00000000CBA4: D100005C 01AAFD5C
	v_cmp_gt_i32_e32 vcc, 19, v114                             // 00000000CBAC: 7D88E493
	s_nop 1                                                    // 00000000CBB0: BF800001
	v_cndmask_b32_e64 v93, v93, v126, vcc                      // 00000000CBB4: D100005D 01AAFD5D
	v_cmp_gt_i32_e32 vcc, 24, v114                             // 00000000CBBC: 7D88E498
	s_nop 1                                                    // 00000000CBC0: BF800001
	v_cndmask_b32_e64 v94, v94, v126, vcc                      // 00000000CBC4: D100005E 01AAFD5E
	v_cmp_gt_i32_e32 vcc, 25, v114                             // 00000000CBCC: 7D88E499
	s_nop 1                                                    // 00000000CBD0: BF800001
	v_cndmask_b32_e64 v95, v95, v126, vcc                      // 00000000CBD4: D100005F 01AAFD5F
	v_cmp_gt_i32_e32 vcc, 26, v114                             // 00000000CBDC: 7D88E49A
	s_nop 1                                                    // 00000000CBE0: BF800001
	v_cndmask_b32_e64 v96, v96, v126, vcc                      // 00000000CBE4: D1000060 01AAFD60
	v_cmp_gt_i32_e32 vcc, 27, v114                             // 00000000CBEC: 7D88E49B
	s_nop 1                                                    // 00000000CBF0: BF800001
	v_cndmask_b32_e64 v97, v97, v126, vcc                      // 00000000CBF4: D1000061 01AAFD61
	s_branch 218                                               // 00000000CBFC: BF8200DA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2c68>
	s_cmp_eq_u32 s16, s48                                      // 00000000CC00: BF063010
	s_cbranch_scc0 164                                         // 00000000CC04: BF8400A4 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2b98>
	s_setprio 0                                                // 00000000CC08: BF8F0000
	v_exp_f32_e32 v114, v82                                    // 00000000CC0C: 7EE44152
	v_exp_f32_e32 v115, v83                                    // 00000000CC10: 7EE64153
	v_exp_f32_e32 v138, v66                                    // 00000000CC14: 7F144142
	v_exp_f32_e32 v139, v67                                    // 00000000CC18: 7F164143
	v_exp_f32_e32 v142, v86                                    // 00000000CC1C: 7F1C4156
	v_exp_f32_e32 v143, v87                                    // 00000000CC20: 7F1E4157
	v_exp_f32_e32 v146, v70                                    // 00000000CC24: 7F244146
	v_exp_f32_e32 v147, v71                                    // 00000000CC28: 7F264147
	v_exp_f32_e32 v150, v90                                    // 00000000CC2C: 7F2C415A
	v_exp_f32_e32 v151, v91                                    // 00000000CC30: 7F2E415B
	v_exp_f32_e32 v154, v74                                    // 00000000CC34: 7F34414A
	v_exp_f32_e32 v155, v75                                    // 00000000CC38: 7F36414B
	v_exp_f32_e32 v158, v94                                    // 00000000CC3C: 7F3C415E
	v_exp_f32_e32 v159, v95                                    // 00000000CC40: 7F3E415F
	v_exp_f32_e32 v162, v78                                    // 00000000CC44: 7F44414E
	v_exp_f32_e32 v163, v79                                    // 00000000CC48: 7F46414F
	v_mov_b32_e32 v113, 0                                      // 00000000CC4C: 7EE20280
	v_mov_b32_e32 v106, 0                                      // 00000000CC50: 7ED40280
	v_mov_b32_e32 v110, 0                                      // 00000000CC54: 7EDC0280
	v_mov_b32_e32 v107, 0                                      // 00000000CC58: 7ED60280
	v_mov_b32_e32 v111, 0                                      // 00000000CC5C: 7EDE0280
	v_mov_b32_e32 v108, 0                                      // 00000000CC60: 7ED80280
	v_mov_b32_e32 v112, 0                                      // 00000000CC64: 7EE00280
	v_mov_b32_e32 v109, 0                                      // 00000000CC68: 7EDA0280
	v_exp_f32_e32 v116, v84                                    // 00000000CC6C: 7EE84154
	v_exp_f32_e32 v117, v85                                    // 00000000CC70: 7EEA4155
	v_exp_f32_e32 v140, v68                                    // 00000000CC74: 7F184144
	v_exp_f32_e32 v141, v69                                    // 00000000CC78: 7F1A4145
	v_exp_f32_e32 v144, v88                                    // 00000000CC7C: 7F204158
	v_exp_f32_e32 v145, v89                                    // 00000000CC80: 7F224159
	v_exp_f32_e32 v148, v72                                    // 00000000CC84: 7F284148
	v_exp_f32_e32 v149, v73                                    // 00000000CC88: 7F2A4149
	v_exp_f32_e32 v152, v92                                    // 00000000CC8C: 7F30415C
	v_exp_f32_e32 v153, v93                                    // 00000000CC90: 7F32415D
	v_exp_f32_e32 v156, v76                                    // 00000000CC94: 7F38414C
	v_exp_f32_e32 v157, v77                                    // 00000000CC98: 7F3A414D
	v_exp_f32_e32 v160, v96                                    // 00000000CC9C: 7F404160
	v_exp_f32_e32 v161, v97                                    // 00000000CCA0: 7F424161
	v_exp_f32_e32 v164, v80                                    // 00000000CCA4: 7F484150
	v_exp_f32_e32 v165, v81                                    // 00000000CCA8: 7F4A4151
	v_cvt_pk_fp8_f32 v106, v114, v115                          // 00000000CCAC: D2A2006A 0002E772
	v_cvt_pk_fp8_f32 v110, v138, v139                          // 00000000CCB4: D2A2006E 0003178A
	v_cvt_pk_fp8_f32 v107, v142, v143                          // 00000000CCBC: D2A2006B 00031F8E
	v_cvt_pk_fp8_f32 v111, v146, v147                          // 00000000CCC4: D2A2006F 00032792
	v_cvt_pk_fp8_f32 v108, v150, v151                          // 00000000CCCC: D2A2006C 00032F96
	v_cvt_pk_fp8_f32 v112, v154, v155                          // 00000000CCD4: D2A20070 0003379A
	v_cvt_pk_fp8_f32 v109, v158, v159                          // 00000000CCDC: D2A2006D 00033F9E
	v_cvt_pk_fp8_f32 v113, v162, v163                          // 00000000CCE4: D2A20071 000347A2
	v_cvt_pk_fp8_f32 v106, v116, v117 op_sel:[0,0,1]           // 00000000CCEC: D2A2406A 0002EB74
	v_cvt_pk_fp8_f32 v110, v140, v141 op_sel:[0,0,1]           // 00000000CCF4: D2A2406E 00031B8C
	v_cvt_pk_fp8_f32 v107, v144, v145 op_sel:[0,0,1]           // 00000000CCFC: D2A2406B 00032390
	v_cvt_pk_fp8_f32 v111, v148, v149 op_sel:[0,0,1]           // 00000000CD04: D2A2406F 00032B94
	v_cvt_pk_fp8_f32 v108, v152, v153 op_sel:[0,0,1]           // 00000000CD0C: D2A2406C 00033398
	v_cvt_pk_fp8_f32 v112, v156, v157 op_sel:[0,0,1]           // 00000000CD14: D2A24070 00033B9C
	v_cvt_pk_fp8_f32 v109, v160, v161 op_sel:[0,0,1]           // 00000000CD1C: D2A2406D 000343A0
	v_cvt_pk_fp8_f32 v113, v164, v165 op_sel:[0,0,1]           // 00000000CD24: D2A24071 00034BA4
	s_barrier                                                  // 00000000CD2C: BF8A0000
	s_setprio 1                                                // 00000000CD30: BF8F0001
	s_waitcnt vmcnt(0)                                         // 00000000CD34: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[114:117], v[98:105], v[106:113], 0// 00000000CD38: D3AD0072 0202D562
	ds_read_b64_tr_b8 v[146:147], v137                         // 00000000CD40: D9C40000 92000089
	ds_read_b64_tr_b8 v[148:149], v137 offset:1024             // 00000000CD48: D9C40400 94000089
	ds_read_b64_tr_b8 v[150:151], v137 offset:2048             // 00000000CD50: D9C40800 96000089
	ds_read_b64_tr_b8 v[152:153], v137 offset:3072             // 00000000CD58: D9C40C00 98000089
	ds_read_b64_tr_b8 v[154:155], v137 offset:256              // 00000000CD60: D9C40100 9A000089
	ds_read_b64_tr_b8 v[156:157], v137 offset:1280             // 00000000CD68: D9C40500 9C000089
	ds_read_b64_tr_b8 v[158:159], v137 offset:2304             // 00000000CD70: D9C40900 9E000089
	ds_read_b64_tr_b8 v[160:161], v137 offset:3328             // 00000000CD78: D9C40D00 A0000089
	ds_read_b64_tr_b8 v[138:139], v137 offset:512              // 00000000CD80: D9C40200 8A000089
	ds_read_b64_tr_b8 v[140:141], v137 offset:1536             // 00000000CD88: D9C40600 8C000089
	ds_read_b64_tr_b8 v[142:143], v137 offset:2560             // 00000000CD90: D9C40A00 8E000089
	ds_read_b64_tr_b8 v[144:145], v137 offset:3584             // 00000000CD98: D9C40E00 90000089
	s_waitcnt lgkmcnt(4)                                       // 00000000CDA0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[146:153], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000CDA4: D3AC0000 0003117D D3AE0832 04CAD592
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[154:161], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000CDB4: D3AC0000 0003117D D3AE0822 048AD59A
	ds_read_b64_tr_b8 v[146:147], v137 offset:768              // 00000000CDC4: D9C40300 92000089
	ds_read_b64_tr_b8 v[148:149], v137 offset:1792             // 00000000CDCC: D9C40700 94000089
	ds_read_b64_tr_b8 v[150:151], v137 offset:2816             // 00000000CDD4: D9C40B00 96000089
	ds_read_b64_tr_b8 v[152:153], v137 offset:3840             // 00000000CDDC: D9C40F00 98000089
	s_add_u32 s16, s48, 4                                      // 00000000CDE4: 80108430
	s_cmp_ge_u32 s16, s78                                      // 00000000CDE8: BF094E10
	s_cbranch_scc1 15                                          // 00000000CDEC: BF85000F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2b2c>
	s_lshl_b32 s17, s17, 14                                    // 00000000CDF0: 8E118E11
	s_mul_i32 s16, s16, s6                                     // 00000000CDF4: 92100610
	s_and_b32 s17, s17, 0xc000                                 // 00000000CDF8: 8611FF11 0000C000
	s_lshl_b32 s16, s16, 6                                     // 00000000CE00: 8E108610
	s_or_b32 s17, s72, s17                                     // 00000000CE04: 87111148
	s_add_u32 m0, s17, 0                                       // 00000000CE08: 807C8011
	s_nop 0                                                    // 00000000CE0C: BF800000
	buffer_load_dwordx4 v127, s[60:63], s16 offen lds          // 00000000CE10: E05D1000 100F007F
	s_add_u32 m0, s17, 0x2000                                  // 00000000CE18: 807CFF11 00002000
	s_nop 0                                                    // 00000000CE20: BF800000
	buffer_load_dwordx4 v128, s[60:63], s16 offen lds          // 00000000CE24: E05D1000 100F0080
	s_add_u32 s16, s48, 2                                      // 00000000CE2C: 80108230
	s_cmp_ge_u32 s16, s78                                      // 00000000CE30: BF094E10
	s_cbranch_scc1 9                                           // 00000000CE34: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2b5c>
	s_mul_i32 s16, s16, s7                                     // 00000000CE38: 92100710
	s_xor_b32 s17, s18, 0x4000                                 // 00000000CE3C: 8811FF12 00004000
	s_lshl_b32 s16, s16, 6                                     // 00000000CE44: 8E108610
	s_add_u32 s17, s73, s17                                    // 00000000CE48: 80111149
	s_add_u32 m0, s17, 0                                       // 00000000CE4C: 807C8011
	s_nop 0                                                    // 00000000CE50: BF800000
	buffer_load_dwordx4 v129, s[64:67], s16 offen lds          // 00000000CE54: E05D1000 10100081
	v_lshlrev_b32_e32 v115, 23, v136                           // 00000000CE5C: 24E71097
	v_fma_f32 v135, v114, v115, v135                           // 00000000CE60: D1CB0087 061EE772
	s_waitcnt lgkmcnt(0)                                       // 00000000CE68: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[138:145], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000CE6C: D3AC0000 0003117D D3AE0812 044AD58A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[146:153], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000CE7C: D3AC0000 0003117D D3AE0802 040AD592
	s_barrier                                                  // 00000000CE8C: BF8A0000
	s_add_u32 s16, s48, 1                                      // 00000000CE90: 80108130
	s_branch 389                                               // 00000000CE94: BF820185 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x31ac>
	s_barrier                                                  // 00000000CE98: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000CE9C: BF8C0F70
	s_add_u32 s19, s16, 4                                      // 00000000CEA0: 80138410
	s_cmp_ge_u32 s19, s78                                      // 00000000CEA4: BF094E13
	s_cbranch_scc1 15                                          // 00000000CEA8: BF85000F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2be8>
	s_lshl_b32 s17, s17, 14                                    // 00000000CEAC: 8E118E11
	s_mul_i32 s19, s19, s6                                     // 00000000CEB0: 92130613
	s_and_b32 s17, s17, 0xc000                                 // 00000000CEB4: 8611FF11 0000C000
	s_lshl_b32 s19, s19, 6                                     // 00000000CEBC: 8E138613
	s_or_b32 s17, s72, s17                                     // 00000000CEC0: 87111148
	s_add_u32 m0, s17, 0                                       // 00000000CEC4: 807C8011
	s_nop 0                                                    // 00000000CEC8: BF800000
	buffer_load_dwordx4 v127, s[60:63], s19 offen lds          // 00000000CECC: E05D1000 130F007F
	s_add_u32 m0, s17, 0x2000                                  // 00000000CED4: 807CFF11 00002000
	s_nop 0                                                    // 00000000CEDC: BF800000
	buffer_load_dwordx4 v128, s[60:63], s19 offen lds          // 00000000CEE0: E05D1000 130F0080
	s_add_u32 s17, s16, 2                                      // 00000000CEE8: 80118210
	s_cmp_ge_u32 s17, s78                                      // 00000000CEEC: BF094E11
	s_cbranch_scc1 9                                           // 00000000CEF0: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2c18>
	s_mul_i32 s17, s17, s7                                     // 00000000CEF4: 92110711
	s_xor_b32 s18, s18, 0x4000                                 // 00000000CEF8: 8812FF12 00004000
	s_lshl_b32 s17, s17, 6                                     // 00000000CF00: 8E118611
	s_add_u32 s18, s73, s18                                    // 00000000CF04: 80121249
	s_add_u32 m0, s18, 0                                       // 00000000CF08: 807C8012
	s_nop 0                                                    // 00000000CF0C: BF800000
	buffer_load_dwordx4 v129, s[64:67], s17 offen lds          // 00000000CF10: E05D1000 11100081
	s_barrier                                                  // 00000000CF18: BF8A0000
	s_add_u32 s16, s16, 1                                      // 00000000CF1C: 80108110
	s_branch 354                                               // 00000000CF20: BF820162 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x31ac>
	s_nop 7                                                    // 00000000CF24: BF800007
	v_mov_b32_e32 v82, v126                                    // 00000000CF28: 7EA4037E
	v_mov_b32_e32 v83, v126                                    // 00000000CF2C: 7EA6037E
	v_mov_b32_e32 v84, v126                                    // 00000000CF30: 7EA8037E
	v_mov_b32_e32 v85, v126                                    // 00000000CF34: 7EAA037E
	v_mov_b32_e32 v86, v126                                    // 00000000CF38: 7EAC037E
	v_mov_b32_e32 v87, v126                                    // 00000000CF3C: 7EAE037E
	v_mov_b32_e32 v88, v126                                    // 00000000CF40: 7EB0037E
	v_mov_b32_e32 v89, v126                                    // 00000000CF44: 7EB2037E
	v_mov_b32_e32 v90, v126                                    // 00000000CF48: 7EB4037E
	v_mov_b32_e32 v91, v126                                    // 00000000CF4C: 7EB6037E
	v_mov_b32_e32 v92, v126                                    // 00000000CF50: 7EB8037E
	v_mov_b32_e32 v93, v126                                    // 00000000CF54: 7EBA037E
	v_mov_b32_e32 v94, v126                                    // 00000000CF58: 7EBC037E
	v_mov_b32_e32 v95, v126                                    // 00000000CF5C: 7EBE037E
	v_mov_b32_e32 v96, v126                                    // 00000000CF60: 7EC0037E
	v_mov_b32_e32 v97, v126                                    // 00000000CF64: 7EC2037E
	s_sub_u32 s18, s3, s20                                     // 00000000CF68: 80921403
	s_sub_i32 s18, s18, 32                                     // 00000000CF6C: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 00000000CF70: BF03A012
	s_cbranch_scc1 87                                          // 00000000CF74: BF850057 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2dd4>
	s_cmp_lt_i32 s18, 0                                        // 00000000CF78: BF048012
	s_cbranch_scc1 68                                          // 00000000CF7C: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2d90>
	v_add_u32_e32 v114, s18, v119                              // 00000000CF80: 68E4EE12
	v_and_b32_e32 v115, 4, v131                                // 00000000CF84: 26E70684
	v_sub_u32_e32 v114, v114, v115                             // 00000000CF88: 6AE4E772
	v_cmp_gt_i32_e32 vcc, 0, v114                              // 00000000CF8C: 7D88E480
	s_nop 7                                                    // 00000000CF90: BF800007
	v_cndmask_b32_e64 v66, v66, v126, vcc                      // 00000000CF94: D1000042 01AAFD42
	v_cmp_gt_i32_e32 vcc, 1, v114                              // 00000000CF9C: 7D88E481
	s_nop 1                                                    // 00000000CFA0: BF800001
	v_cndmask_b32_e64 v67, v67, v126, vcc                      // 00000000CFA4: D1000043 01AAFD43
	v_cmp_gt_i32_e32 vcc, 2, v114                              // 00000000CFAC: 7D88E482
	s_nop 1                                                    // 00000000CFB0: BF800001
	v_cndmask_b32_e64 v68, v68, v126, vcc                      // 00000000CFB4: D1000044 01AAFD44
	v_cmp_gt_i32_e32 vcc, 3, v114                              // 00000000CFBC: 7D88E483
	s_nop 1                                                    // 00000000CFC0: BF800001
	v_cndmask_b32_e64 v69, v69, v126, vcc                      // 00000000CFC4: D1000045 01AAFD45
	v_cmp_gt_i32_e32 vcc, 8, v114                              // 00000000CFCC: 7D88E488
	s_nop 1                                                    // 00000000CFD0: BF800001
	v_cndmask_b32_e64 v70, v70, v126, vcc                      // 00000000CFD4: D1000046 01AAFD46
	v_cmp_gt_i32_e32 vcc, 9, v114                              // 00000000CFDC: 7D88E489
	s_nop 1                                                    // 00000000CFE0: BF800001
	v_cndmask_b32_e64 v71, v71, v126, vcc                      // 00000000CFE4: D1000047 01AAFD47
	v_cmp_gt_i32_e32 vcc, 10, v114                             // 00000000CFEC: 7D88E48A
	s_nop 1                                                    // 00000000CFF0: BF800001
	v_cndmask_b32_e64 v72, v72, v126, vcc                      // 00000000CFF4: D1000048 01AAFD48
	v_cmp_gt_i32_e32 vcc, 11, v114                             // 00000000CFFC: 7D88E48B
	s_nop 1                                                    // 00000000D000: BF800001
	v_cndmask_b32_e64 v73, v73, v126, vcc                      // 00000000D004: D1000049 01AAFD49
	v_cmp_gt_i32_e32 vcc, 16, v114                             // 00000000D00C: 7D88E490
	s_nop 1                                                    // 00000000D010: BF800001
	v_cndmask_b32_e64 v74, v74, v126, vcc                      // 00000000D014: D100004A 01AAFD4A
	v_cmp_gt_i32_e32 vcc, 17, v114                             // 00000000D01C: 7D88E491
	s_nop 1                                                    // 00000000D020: BF800001
	v_cndmask_b32_e64 v75, v75, v126, vcc                      // 00000000D024: D100004B 01AAFD4B
	v_cmp_gt_i32_e32 vcc, 18, v114                             // 00000000D02C: 7D88E492
	s_nop 1                                                    // 00000000D030: BF800001
	v_cndmask_b32_e64 v76, v76, v126, vcc                      // 00000000D034: D100004C 01AAFD4C
	v_cmp_gt_i32_e32 vcc, 19, v114                             // 00000000D03C: 7D88E493
	s_nop 1                                                    // 00000000D040: BF800001
	v_cndmask_b32_e64 v77, v77, v126, vcc                      // 00000000D044: D100004D 01AAFD4D
	v_cmp_gt_i32_e32 vcc, 24, v114                             // 00000000D04C: 7D88E498
	s_nop 1                                                    // 00000000D050: BF800001
	v_cndmask_b32_e64 v78, v78, v126, vcc                      // 00000000D054: D100004E 01AAFD4E
	v_cmp_gt_i32_e32 vcc, 25, v114                             // 00000000D05C: 7D88E499
	s_nop 1                                                    // 00000000D060: BF800001
	v_cndmask_b32_e64 v79, v79, v126, vcc                      // 00000000D064: D100004F 01AAFD4F
	v_cmp_gt_i32_e32 vcc, 26, v114                             // 00000000D06C: 7D88E49A
	s_nop 1                                                    // 00000000D070: BF800001
	v_cndmask_b32_e64 v80, v80, v126, vcc                      // 00000000D074: D1000050 01AAFD50
	v_cmp_gt_i32_e32 vcc, 27, v114                             // 00000000D07C: 7D88E49B
	s_nop 1                                                    // 00000000D080: BF800001
	v_cndmask_b32_e64 v81, v81, v126, vcc                      // 00000000D084: D1000051 01AAFD51
	s_branch 17                                                // 00000000D08C: BF820011 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2dd4>
	s_nop 11                                                   // 00000000D090: BF80000B
	v_mov_b32_e32 v66, v126                                    // 00000000D094: 7E84037E
	v_mov_b32_e32 v67, v126                                    // 00000000D098: 7E86037E
	v_mov_b32_e32 v68, v126                                    // 00000000D09C: 7E88037E
	v_mov_b32_e32 v69, v126                                    // 00000000D0A0: 7E8A037E
	v_mov_b32_e32 v70, v126                                    // 00000000D0A4: 7E8C037E
	v_mov_b32_e32 v71, v126                                    // 00000000D0A8: 7E8E037E
	v_mov_b32_e32 v72, v126                                    // 00000000D0AC: 7E90037E
	v_mov_b32_e32 v73, v126                                    // 00000000D0B0: 7E92037E
	v_mov_b32_e32 v74, v126                                    // 00000000D0B4: 7E94037E
	v_mov_b32_e32 v75, v126                                    // 00000000D0B8: 7E96037E
	v_mov_b32_e32 v76, v126                                    // 00000000D0BC: 7E98037E
	v_mov_b32_e32 v77, v126                                    // 00000000D0C0: 7E9A037E
	v_mov_b32_e32 v78, v126                                    // 00000000D0C4: 7E9C037E
	v_mov_b32_e32 v79, v126                                    // 00000000D0C8: 7E9E037E
	v_mov_b32_e32 v80, v126                                    // 00000000D0CC: 7EA0037E
	v_mov_b32_e32 v81, v126                                    // 00000000D0D0: 7EA2037E
	s_and_b32 s17, s17, 3                                      // 00000000D0D4: 86118311
	v_max_f32_e32 v114, v82, v83                               // 00000000D0D8: 16E4A752
	v_max3_f32 v114, v84, v85, v114                            // 00000000D0DC: D1D30072 05CAAB54
	v_max3_f32 v114, v86, v87, v114                            // 00000000D0E4: D1D30072 05CAAF56
	v_max3_f32 v114, v88, v89, v114                            // 00000000D0EC: D1D30072 05CAB358
	v_max3_f32 v114, v90, v91, v114                            // 00000000D0F4: D1D30072 05CAB75A
	v_max3_f32 v114, v92, v93, v114                            // 00000000D0FC: D1D30072 05CABB5C
	v_max3_f32 v114, v94, v95, v114                            // 00000000D104: D1D30072 05CABF5E
	v_max3_f32 v114, v96, v97, v114                            // 00000000D10C: D1D30072 05CAC360
	s_nop 4                                                    // 00000000D114: BF800004
	v_max_f32_e32 v115, v66, v67                               // 00000000D118: 16E68742
	v_max3_f32 v115, v68, v69, v115                            // 00000000D11C: D1D30073 05CE8B44
	v_max3_f32 v115, v70, v71, v115                            // 00000000D124: D1D30073 05CE8F46
	v_max3_f32 v115, v72, v73, v115                            // 00000000D12C: D1D30073 05CE9348
	v_max3_f32 v115, v74, v75, v115                            // 00000000D134: D1D30073 05CE974A
	v_max3_f32 v115, v76, v77, v115                            // 00000000D13C: D1D30073 05CE9B4C
	v_max3_f32 v115, v78, v79, v115                            // 00000000D144: D1D30073 05CE9F4E
	v_max3_f32 v115, v80, v81, v115                            // 00000000D14C: D1D30073 05CEA350
	v_max_f32_e32 v114, v114, v115                             // 00000000D154: 16E4E772
	v_mov_b32_e32 v115, v114                                   // 00000000D158: 7EE60372
	s_nop 1                                                    // 00000000D15C: BF800001
	v_permlane32_swap_b32_e32 v114, v115                       // 00000000D160: 7EE4B573
	v_max_f32_e32 v114, v114, v115                             // 00000000D164: 16E4E772
	v_mul_f32_e32 v115, v118, v114                             // 00000000D168: 0AE6E576
	v_max_f32_e32 v115, v134, v115                             // 00000000D16C: 16E6E786
	v_sub_f32_e32 v116, v115, v134                             // 00000000D170: 04E90D73
	v_cmp_lt_f32_e32 vcc, s71, v116                            // 00000000D174: 7C82E847
	s_cmp_lg_u64 vcc, 0                                        // 00000000D178: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000D17C: 859280C1
	s_and_b64 s[20:21], s[18:19], exec                         // 00000000D180: 86947E12
	s_cselect_b32 s20, 1, 0                                    // 00000000D184: 85148081
	s_cselect_b64 s[20:21], -1, 0                              // 00000000D188: 859480C1
	v_cndmask_b32_e64 v115, v134, v115, s[20:21]               // 00000000D18C: D1000073 0052E786
	v_fma_f32 v114, v114, v118, -v115                          // 00000000D194: D1CB0072 85CEED72
	v_floor_f32_e32 v114, v114                                 // 00000000D19C: 7EE43F72
	v_med3_f32 v114, v114, s70, 0                              // 00000000D1A0: D1D60072 02008D72
	v_cvt_i32_f32_e32 v116, v114                               // 00000000D1A8: 7EE81172
	v_add_u32_e32 v116, 0x7f, v116                             // 00000000D1AC: 68E8E8FF 0000007F
	v_lshlrev_b32_e32 v117, 23, v116                           // 00000000D1B4: 24EAE897
	v_add_f32_e32 v114, v115, v114                             // 00000000D1B8: 02E4E573
	v_sub_f32_e32 v114, 0x40c00000, v114                       // 00000000D1BC: 04E4E4FF 40C00000
	ds_read_b64_tr_b8 v[146:147], v137                         // 00000000D1C4: D9C40000 92000089
	ds_read_b64_tr_b8 v[148:149], v137 offset:1024             // 00000000D1CC: D9C40400 94000089
	ds_read_b64_tr_b8 v[150:151], v137 offset:2048             // 00000000D1D4: D9C40800 96000089
	ds_read_b64_tr_b8 v[152:153], v137 offset:3072             // 00000000D1DC: D9C40C00 98000089
	ds_read_b64_tr_b8 v[154:155], v137 offset:256              // 00000000D1E4: D9C40100 9A000089
	ds_read_b64_tr_b8 v[156:157], v137 offset:1280             // 00000000D1EC: D9C40500 9C000089
	ds_read_b64_tr_b8 v[158:159], v137 offset:2304             // 00000000D1F4: D9C40900 9E000089
	ds_read_b64_tr_b8 v[160:161], v137 offset:3328             // 00000000D1FC: D9C40D00 A0000089
	ds_read_b64_tr_b8 v[138:139], v137 offset:512              // 00000000D204: D9C40200 8A000089
	ds_read_b64_tr_b8 v[140:141], v137 offset:1536             // 00000000D20C: D9C40600 8C000089
	ds_read_b64_tr_b8 v[142:143], v137 offset:2560             // 00000000D214: D9C40A00 8E000089
	ds_read_b64_tr_b8 v[144:145], v137 offset:3584             // 00000000D21C: D9C40E00 90000089
	s_waitcnt lgkmcnt(4)                                       // 00000000D224: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[146:153], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000D228: D3AC0000 0003117D D3AE0832 04CAD592
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[154:161], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000D238: D3AC0000 0003117D D3AE0822 048AD59A
	ds_read_b64_tr_b8 v[146:147], v137 offset:768              // 00000000D248: D9C40300 92000089
	ds_read_b64_tr_b8 v[148:149], v137 offset:1792             // 00000000D250: D9C40700 94000089
	ds_read_b64_tr_b8 v[150:151], v137 offset:2816             // 00000000D258: D9C40B00 96000089
	ds_read_b64_tr_b8 v[152:153], v137 offset:3840             // 00000000D260: D9C40F00 98000089
	s_add_u32 s20, s16, 4                                      // 00000000D268: 80148410
	s_cmp_ge_u32 s20, s78                                      // 00000000D26C: BF094E14
	s_cbranch_scc1 13                                          // 00000000D270: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2fa8>
	s_lshl_b32 s21, s17, 14                                    // 00000000D274: 8E158E11
	s_mul_i32 s20, s20, s6                                     // 00000000D278: 92140614
	s_or_b32 s21, s72, s21                                     // 00000000D27C: 87151548
	s_lshl_b32 s20, s20, 6                                     // 00000000D280: 8E148614
	s_add_u32 m0, s21, 0                                       // 00000000D284: 807C8015
	s_nop 0                                                    // 00000000D288: BF800000
	buffer_load_dwordx4 v127, s[60:63], s20 offen lds          // 00000000D28C: E05D1000 140F007F
	s_add_u32 m0, s21, 0x2000                                  // 00000000D294: 807CFF15 00002000
	s_nop 0                                                    // 00000000D29C: BF800000
	buffer_load_dwordx4 v128, s[60:63], s20 offen lds          // 00000000D2A0: E05D1000 140F0080
	s_add_u32 s20, s16, 2                                      // 00000000D2A8: 80148210
	s_cmp_ge_u32 s20, s78                                      // 00000000D2AC: BF094E14
	s_cbranch_scc1 10                                          // 00000000D2B0: BF85000A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2fdc>
	s_lshl_b32 s17, s17, 13                                    // 00000000D2B4: 8E118D11
	s_mul_i32 s20, s20, s7                                     // 00000000D2B8: 92140714
	s_xor_b32 s17, s17, 0x4000                                 // 00000000D2BC: 8811FF11 00004000
	s_lshl_b32 s20, s20, 6                                     // 00000000D2C4: 8E148614
	s_add_u32 s17, s73, s17                                    // 00000000D2C8: 80111149
	s_add_u32 m0, s17, 0                                       // 00000000D2CC: 807C8011
	s_nop 0                                                    // 00000000D2D0: BF800000
	buffer_load_dwordx4 v129, s[64:67], s20 offen lds          // 00000000D2D4: E05D1000 14100081
	s_waitcnt lgkmcnt(0)                                       // 00000000D2DC: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[138:145], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000D2E0: D3AC0000 0003117D D3AE0812 044AD58A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[146:153], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000D2F0: D3AC0000 0003117D D3AE0802 040AD592
	v_pk_fma_f32 v[96:97], v[96:97], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D300: D3B00060 0DCAED60
	v_pk_fma_f32 v[94:95], v[94:95], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D308: D3B0005E 0DCAED5E
	v_pk_fma_f32 v[92:93], v[92:93], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D310: D3B0005C 0DCAED5C
	v_pk_fma_f32 v[90:91], v[90:91], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D318: D3B0005A 0DCAED5A
	v_pk_fma_f32 v[88:89], v[88:89], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D320: D3B00058 0DCAED58
	v_pk_fma_f32 v[86:87], v[86:87], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D328: D3B00056 0DCAED56
	v_pk_fma_f32 v[84:85], v[84:85], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D330: D3B00054 0DCAED54
	v_pk_fma_f32 v[82:83], v[82:83], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D338: D3B00052 0DCAED52
	v_pk_fma_f32 v[80:81], v[80:81], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D340: D3B00050 0DCAED50
	v_pk_fma_f32 v[78:79], v[78:79], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D348: D3B0004E 0DCAED4E
	v_pk_fma_f32 v[76:77], v[76:77], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D350: D3B0004C 0DCAED4C
	v_pk_fma_f32 v[74:75], v[74:75], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D358: D3B0004A 0DCAED4A
	v_pk_fma_f32 v[72:73], v[72:73], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D360: D3B00048 0DCAED48
	v_pk_fma_f32 v[70:71], v[70:71], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D368: D3B00046 0DCAED46
	v_pk_fma_f32 v[68:69], v[68:69], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D370: D3B00044 0DCAED44
	v_pk_fma_f32 v[66:67], v[66:67], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D378: D3B00042 0DCAED42
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000D380: 86927E12
	s_cbranch_scc0 68                                          // 00000000D384: BF840044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3198>
	v_sub_f32_e32 v106, v134, v115                             // 00000000D388: 04D4E786
	v_exp_f32_e32 v106, v106                                   // 00000000D38C: 7ED4416A
	s_nop 0                                                    // 00000000D390: BF800000
	v_pk_mul_f32 v[64:65], v[106:107], v[64:65] op_sel_hi:[0,1]// 00000000D394: D3B14040 1002816A
	v_pk_mul_f32 v[62:63], v[106:107], v[62:63] op_sel_hi:[0,1]// 00000000D39C: D3B1403E 10027D6A
	v_pk_mul_f32 v[60:61], v[106:107], v[60:61] op_sel_hi:[0,1]// 00000000D3A4: D3B1403C 1002796A
	v_pk_mul_f32 v[58:59], v[106:107], v[58:59] op_sel_hi:[0,1]// 00000000D3AC: D3B1403A 1002756A
	v_pk_mul_f32 v[56:57], v[106:107], v[56:57] op_sel_hi:[0,1]// 00000000D3B4: D3B14038 1002716A
	v_pk_mul_f32 v[54:55], v[106:107], v[54:55] op_sel_hi:[0,1]// 00000000D3BC: D3B14036 10026D6A
	v_pk_mul_f32 v[52:53], v[106:107], v[52:53] op_sel_hi:[0,1]// 00000000D3C4: D3B14034 1002696A
	v_pk_mul_f32 v[50:51], v[106:107], v[50:51] op_sel_hi:[0,1]// 00000000D3CC: D3B14032 1002656A
	v_pk_mul_f32 v[48:49], v[106:107], v[48:49] op_sel_hi:[0,1]// 00000000D3D4: D3B14030 1002616A
	v_pk_mul_f32 v[46:47], v[106:107], v[46:47] op_sel_hi:[0,1]// 00000000D3DC: D3B1402E 10025D6A
	v_pk_mul_f32 v[44:45], v[106:107], v[44:45] op_sel_hi:[0,1]// 00000000D3E4: D3B1402C 1002596A
	v_pk_mul_f32 v[42:43], v[106:107], v[42:43] op_sel_hi:[0,1]// 00000000D3EC: D3B1402A 1002556A
	v_pk_mul_f32 v[40:41], v[106:107], v[40:41] op_sel_hi:[0,1]// 00000000D3F4: D3B14028 1002516A
	v_pk_mul_f32 v[38:39], v[106:107], v[38:39] op_sel_hi:[0,1]// 00000000D3FC: D3B14026 10024D6A
	v_pk_mul_f32 v[36:37], v[106:107], v[36:37] op_sel_hi:[0,1]// 00000000D404: D3B14024 1002496A
	v_pk_mul_f32 v[34:35], v[106:107], v[34:35] op_sel_hi:[0,1]// 00000000D40C: D3B14022 1002456A
	v_pk_mul_f32 v[32:33], v[106:107], v[32:33] op_sel_hi:[0,1]// 00000000D414: D3B14020 1002416A
	v_pk_mul_f32 v[30:31], v[106:107], v[30:31] op_sel_hi:[0,1]// 00000000D41C: D3B1401E 10023D6A
	v_pk_mul_f32 v[28:29], v[106:107], v[28:29] op_sel_hi:[0,1]// 00000000D424: D3B1401C 1002396A
	v_pk_mul_f32 v[26:27], v[106:107], v[26:27] op_sel_hi:[0,1]// 00000000D42C: D3B1401A 1002356A
	v_pk_mul_f32 v[24:25], v[106:107], v[24:25] op_sel_hi:[0,1]// 00000000D434: D3B14018 1002316A
	v_pk_mul_f32 v[22:23], v[106:107], v[22:23] op_sel_hi:[0,1]// 00000000D43C: D3B14016 10022D6A
	v_pk_mul_f32 v[20:21], v[106:107], v[20:21] op_sel_hi:[0,1]// 00000000D444: D3B14014 1002296A
	v_pk_mul_f32 v[18:19], v[106:107], v[18:19] op_sel_hi:[0,1]// 00000000D44C: D3B14012 1002256A
	v_pk_mul_f32 v[16:17], v[106:107], v[16:17] op_sel_hi:[0,1]// 00000000D454: D3B14010 1002216A
	v_pk_mul_f32 v[14:15], v[106:107], v[14:15] op_sel_hi:[0,1]// 00000000D45C: D3B1400E 10021D6A
	v_pk_mul_f32 v[12:13], v[106:107], v[12:13] op_sel_hi:[0,1]// 00000000D464: D3B1400C 1002196A
	v_pk_mul_f32 v[10:11], v[106:107], v[10:11] op_sel_hi:[0,1]// 00000000D46C: D3B1400A 1002156A
	v_pk_mul_f32 v[8:9], v[106:107], v[8:9] op_sel_hi:[0,1]    // 00000000D474: D3B14008 1002116A
	v_pk_mul_f32 v[6:7], v[106:107], v[6:7] op_sel_hi:[0,1]    // 00000000D47C: D3B14006 10020D6A
	v_pk_mul_f32 v[4:5], v[106:107], v[4:5] op_sel_hi:[0,1]    // 00000000D484: D3B14004 1002096A
	v_pk_mul_f32 v[2:3], v[106:107], v[2:3] op_sel_hi:[0,1]    // 00000000D48C: D3B14002 1002056A
	v_mul_f32_e32 v135, v135, v106                             // 00000000D494: 0B0ED587
	s_waitcnt vmcnt(0)                                         // 00000000D498: BF8C0F70
	s_barrier                                                  // 00000000D49C: BF8A0000
	s_add_u32 s16, s16, 1                                      // 00000000D4A0: 80108110
	v_mov_b32_e32 v134, v115                                   // 00000000D4A4: 7F0C0373
	v_mov_b32_e32 v136, v116                                   // 00000000D4A8: 7F100374
	s_add_u32 s17, s16, 1                                      // 00000000D4AC: 80118110
	s_cmp_ge_u32 s17, s78                                      // 00000000D4B0: BF094E11
	s_cbranch_scc1 786                                         // 00000000D4B4: BF850312 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3e00>
	s_add_u32 s17, s16, s35                                    // 00000000D4B8: 80112310
	s_lshl_b32 s18, s17, 13                                    // 00000000D4BC: 8E128D11
	s_and_b32 s18, s18, 0x6000                                 // 00000000D4C0: 8612FF12 00006000
	v_add_u32_e32 v137, s18, v133                              // 00000000D4C8: 69130A12
	s_cmp_ge_u32 s16, s48                                      // 00000000D4CC: BF093010
	s_cbranch_scc1 202                                         // 00000000D4D0: BF8500CA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x34fc>
	s_setprio 0                                                // 00000000D4D4: BF8F0000
	s_lshl_b32 s18, s17, 14                                    // 00000000D4D8: 8E128E11
	s_addk_i32 s18, 0x4000                                     // 00000000D4DC: B7124000
	s_and_b32 s18, s18, 0xc000                                 // 00000000D4E0: 8612FF12 0000C000
	v_exp_f32_e32 v82, v82                                     // 00000000D4E8: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000D4EC: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000D4F0: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000D4F4: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000D4F8: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000D4FC: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000D500: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000D504: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000D508: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000D50C: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000D510: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000D514: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000D518: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000D51C: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000D520: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000D524: 7E9E414F
	v_or_b32_e32 v114, s18, v122                               // 00000000D528: 28E4F412
	v_or_b32_e32 v115, s18, v123                               // 00000000D52C: 28E6F612
	ds_read_b128 v[138:141], v114                              // 00000000D530: D9FE0000 8A000072
	ds_read_b128 v[142:145], v114 offset:16                    // 00000000D538: D9FE0010 8E000072
	ds_read_b128 v[146:149], v114 offset:8192                  // 00000000D540: D9FE2000 92000072
	ds_read_b128 v[150:153], v114 offset:8208                  // 00000000D548: D9FE2010 96000072
	ds_read_b128 v[154:157], v115                              // 00000000D550: D9FE0000 9A000073
	ds_read_b128 v[158:161], v115 offset:16                    // 00000000D558: D9FE0010 9E000073
	ds_read_b128 v[190:193], v115 offset:8192                  // 00000000D560: D9FE2000 BE000073
	ds_read_b128 v[194:197], v115 offset:8208                  // 00000000D568: D9FE2010 C2000073
	v_mov_b32_e32 v113, 0                                      // 00000000D570: 7EE20280
	v_mov_b32_e32 v106, 0                                      // 00000000D574: 7ED40280
	v_mov_b32_e32 v110, 0                                      // 00000000D578: 7EDC0280
	v_mov_b32_e32 v107, 0                                      // 00000000D57C: 7ED60280
	v_mov_b32_e32 v111, 0                                      // 00000000D580: 7EDE0280
	v_mov_b32_e32 v108, 0                                      // 00000000D584: 7ED80280
	v_mov_b32_e32 v112, 0                                      // 00000000D588: 7EE00280
	v_mov_b32_e32 v109, 0                                      // 00000000D58C: 7EDA0280
	v_exp_f32_e32 v84, v84                                     // 00000000D590: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000D594: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000D598: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000D59C: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000D5A0: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000D5A4: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000D5A8: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000D5AC: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000D5B0: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000D5B4: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000D5B8: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000D5BC: 7E9A414D
	v_exp_f32_e32 v96, v96                                     // 00000000D5C0: 7EC04160
	v_exp_f32_e32 v97, v97                                     // 00000000D5C4: 7EC24161
	v_exp_f32_e32 v80, v80                                     // 00000000D5C8: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000D5CC: 7EA24151
	v_cvt_pk_fp8_f32 v106, v82, v83                            // 00000000D5D0: D2A2006A 0002A752
	v_cvt_pk_fp8_f32 v110, v66, v67                            // 00000000D5D8: D2A2006E 00028742
	v_cvt_pk_fp8_f32 v107, v86, v87                            // 00000000D5E0: D2A2006B 0002AF56
	v_cvt_pk_fp8_f32 v111, v70, v71                            // 00000000D5E8: D2A2006F 00028F46
	v_cvt_pk_fp8_f32 v108, v90, v91                            // 00000000D5F0: D2A2006C 0002B75A
	v_cvt_pk_fp8_f32 v112, v74, v75                            // 00000000D5F8: D2A20070 0002974A
	v_cvt_pk_fp8_f32 v109, v94, v95                            // 00000000D600: D2A2006D 0002BF5E
	v_cvt_pk_fp8_f32 v113, v78, v79                            // 00000000D608: D2A20071 00029F4E
	v_cvt_pk_fp8_f32 v106, v84, v85 op_sel:[0,0,1]             // 00000000D610: D2A2406A 0002AB54
	v_cvt_pk_fp8_f32 v110, v68, v69 op_sel:[0,0,1]             // 00000000D618: D2A2406E 00028B44
	v_cvt_pk_fp8_f32 v107, v88, v89 op_sel:[0,0,1]             // 00000000D620: D2A2406B 0002B358
	v_cvt_pk_fp8_f32 v111, v72, v73 op_sel:[0,0,1]             // 00000000D628: D2A2406F 00029348
	v_cvt_pk_fp8_f32 v108, v92, v93 op_sel:[0,0,1]             // 00000000D630: D2A2406C 0002BB5C
	v_cvt_pk_fp8_f32 v112, v76, v77 op_sel:[0,0,1]             // 00000000D638: D2A24070 00029B4C
	v_cvt_pk_fp8_f32 v109, v96, v97 op_sel:[0,0,1]             // 00000000D640: D2A2406D 0002C360
	v_cvt_pk_fp8_f32 v113, v80, v81 op_sel:[0,0,1]             // 00000000D648: D2A24071 0002A350
	s_barrier                                                  // 00000000D650: BF8A0000
	s_setprio 1                                                // 00000000D654: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[98:105], v[106:113], 0// 00000000D658: D3AD0042 0202D562
	s_nop 11                                                   // 00000000D660: BF80000B
	v_lshlrev_b32_e32 v67, 23, v136                            // 00000000D664: 24871097
	v_fma_f32 v135, v66, v67, v135                             // 00000000D668: D1CB0087 061E8742
	s_waitcnt lgkmcnt(0)                                       // 00000000D670: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[138:145], v[166:173], 0// 00000000D674: D3AE0052 02034D8A
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[146:153], v[166:173], 0// 00000000D67C: D3AE0042 02034D92
	v_or_b32_e32 v114, s18, v124                               // 00000000D684: 28E4F812
	ds_read_b128 v[138:141], v114                              // 00000000D688: D9FE0000 8A000072
	ds_read_b128 v[142:145], v114 offset:16                    // 00000000D690: D9FE0010 8E000072
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[154:161], v[174:181], v[82:97]// 00000000D698: D3AE0052 054B5D9A
	ds_read_b128 v[146:149], v114 offset:8192                  // 00000000D6A0: D9FE2000 92000072
	ds_read_b128 v[150:153], v114 offset:8208                  // 00000000D6A8: D9FE2010 96000072
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[190:197], v[174:181], v[66:81]// 00000000D6B0: D3AE0042 050B5DBE
	s_waitcnt lgkmcnt(0)                                       // 00000000D6B8: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[138:145], v[182:189], v[82:97]// 00000000D6BC: D3AE0052 054B6D8A
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[146:153], v[182:189], v[66:81]// 00000000D6C4: D3AE0042 050B6D92
	s_lshl_b32 s18, s16, 6                                     // 00000000D6CC: 8E128610
	s_add_u32 s20, s18, 64                                     // 00000000D6D0: 8014C012
	s_sub_u32 s18, s3, s20                                     // 00000000D6D4: 80921403
	s_sub_i32 s18, s18, 0                                      // 00000000D6D8: 81928012
	s_cmp_ge_i32 s18, 32                                       // 00000000D6DC: BF03A012
	s_cbranch_scc1 288                                         // 00000000D6E0: BF850120 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3864>
	s_cmp_lt_i32 s18, 0                                        // 00000000D6E4: BF048012
	s_cbranch_scc1 269                                         // 00000000D6E8: BF85010D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3820>
	v_add_u32_e32 v114, s18, v119                              // 00000000D6EC: 68E4EE12
	v_and_b32_e32 v115, 4, v131                                // 00000000D6F0: 26E70684
	v_sub_u32_e32 v114, v114, v115                             // 00000000D6F4: 6AE4E772
	v_cmp_gt_i32_e32 vcc, 0, v114                              // 00000000D6F8: 7D88E480
	s_nop 3                                                    // 00000000D6FC: BF800003
	v_cndmask_b32_e64 v82, v82, v126, vcc                      // 00000000D700: D1000052 01AAFD52
	v_cmp_gt_i32_e32 vcc, 1, v114                              // 00000000D708: 7D88E481
	s_nop 1                                                    // 00000000D70C: BF800001
	v_cndmask_b32_e64 v83, v83, v126, vcc                      // 00000000D710: D1000053 01AAFD53
	v_cmp_gt_i32_e32 vcc, 2, v114                              // 00000000D718: 7D88E482
	s_nop 1                                                    // 00000000D71C: BF800001
	v_cndmask_b32_e64 v84, v84, v126, vcc                      // 00000000D720: D1000054 01AAFD54
	v_cmp_gt_i32_e32 vcc, 3, v114                              // 00000000D728: 7D88E483
	s_nop 1                                                    // 00000000D72C: BF800001
	v_cndmask_b32_e64 v85, v85, v126, vcc                      // 00000000D730: D1000055 01AAFD55
	v_cmp_gt_i32_e32 vcc, 8, v114                              // 00000000D738: 7D88E488
	s_nop 1                                                    // 00000000D73C: BF800001
	v_cndmask_b32_e64 v86, v86, v126, vcc                      // 00000000D740: D1000056 01AAFD56
	v_cmp_gt_i32_e32 vcc, 9, v114                              // 00000000D748: 7D88E489
	s_nop 1                                                    // 00000000D74C: BF800001
	v_cndmask_b32_e64 v87, v87, v126, vcc                      // 00000000D750: D1000057 01AAFD57
	v_cmp_gt_i32_e32 vcc, 10, v114                             // 00000000D758: 7D88E48A
	s_nop 1                                                    // 00000000D75C: BF800001
	v_cndmask_b32_e64 v88, v88, v126, vcc                      // 00000000D760: D1000058 01AAFD58
	v_cmp_gt_i32_e32 vcc, 11, v114                             // 00000000D768: 7D88E48B
	s_nop 1                                                    // 00000000D76C: BF800001
	v_cndmask_b32_e64 v89, v89, v126, vcc                      // 00000000D770: D1000059 01AAFD59
	v_cmp_gt_i32_e32 vcc, 16, v114                             // 00000000D778: 7D88E490
	s_nop 1                                                    // 00000000D77C: BF800001
	v_cndmask_b32_e64 v90, v90, v126, vcc                      // 00000000D780: D100005A 01AAFD5A
	v_cmp_gt_i32_e32 vcc, 17, v114                             // 00000000D788: 7D88E491
	s_nop 1                                                    // 00000000D78C: BF800001
	v_cndmask_b32_e64 v91, v91, v126, vcc                      // 00000000D790: D100005B 01AAFD5B
	v_cmp_gt_i32_e32 vcc, 18, v114                             // 00000000D798: 7D88E492
	s_nop 1                                                    // 00000000D79C: BF800001
	v_cndmask_b32_e64 v92, v92, v126, vcc                      // 00000000D7A0: D100005C 01AAFD5C
	v_cmp_gt_i32_e32 vcc, 19, v114                             // 00000000D7A8: 7D88E493
	s_nop 1                                                    // 00000000D7AC: BF800001
	v_cndmask_b32_e64 v93, v93, v126, vcc                      // 00000000D7B0: D100005D 01AAFD5D
	v_cmp_gt_i32_e32 vcc, 24, v114                             // 00000000D7B8: 7D88E498
	s_nop 1                                                    // 00000000D7BC: BF800001
	v_cndmask_b32_e64 v94, v94, v126, vcc                      // 00000000D7C0: D100005E 01AAFD5E
	v_cmp_gt_i32_e32 vcc, 25, v114                             // 00000000D7C8: 7D88E499
	s_nop 1                                                    // 00000000D7CC: BF800001
	v_cndmask_b32_e64 v95, v95, v126, vcc                      // 00000000D7D0: D100005F 01AAFD5F
	v_cmp_gt_i32_e32 vcc, 26, v114                             // 00000000D7D8: 7D88E49A
	s_nop 1                                                    // 00000000D7DC: BF800001
	v_cndmask_b32_e64 v96, v96, v126, vcc                      // 00000000D7E0: D1000060 01AAFD60
	v_cmp_gt_i32_e32 vcc, 27, v114                             // 00000000D7E8: 7D88E49B
	s_nop 1                                                    // 00000000D7EC: BF800001
	v_cndmask_b32_e64 v97, v97, v126, vcc                      // 00000000D7F0: D1000061 01AAFD61
	s_branch 218                                               // 00000000D7F8: BF8200DA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3864>
	s_cmp_eq_u32 s16, s48                                      // 00000000D7FC: BF063010
	s_cbranch_scc0 164                                         // 00000000D800: BF8400A4 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3794>
	s_setprio 0                                                // 00000000D804: BF8F0000
	v_exp_f32_e32 v114, v82                                    // 00000000D808: 7EE44152
	v_exp_f32_e32 v115, v83                                    // 00000000D80C: 7EE64153
	v_exp_f32_e32 v138, v66                                    // 00000000D810: 7F144142
	v_exp_f32_e32 v139, v67                                    // 00000000D814: 7F164143
	v_exp_f32_e32 v142, v86                                    // 00000000D818: 7F1C4156
	v_exp_f32_e32 v143, v87                                    // 00000000D81C: 7F1E4157
	v_exp_f32_e32 v146, v70                                    // 00000000D820: 7F244146
	v_exp_f32_e32 v147, v71                                    // 00000000D824: 7F264147
	v_exp_f32_e32 v150, v90                                    // 00000000D828: 7F2C415A
	v_exp_f32_e32 v151, v91                                    // 00000000D82C: 7F2E415B
	v_exp_f32_e32 v154, v74                                    // 00000000D830: 7F34414A
	v_exp_f32_e32 v155, v75                                    // 00000000D834: 7F36414B
	v_exp_f32_e32 v158, v94                                    // 00000000D838: 7F3C415E
	v_exp_f32_e32 v159, v95                                    // 00000000D83C: 7F3E415F
	v_exp_f32_e32 v162, v78                                    // 00000000D840: 7F44414E
	v_exp_f32_e32 v163, v79                                    // 00000000D844: 7F46414F
	v_mov_b32_e32 v113, 0                                      // 00000000D848: 7EE20280
	v_mov_b32_e32 v106, 0                                      // 00000000D84C: 7ED40280
	v_mov_b32_e32 v110, 0                                      // 00000000D850: 7EDC0280
	v_mov_b32_e32 v107, 0                                      // 00000000D854: 7ED60280
	v_mov_b32_e32 v111, 0                                      // 00000000D858: 7EDE0280
	v_mov_b32_e32 v108, 0                                      // 00000000D85C: 7ED80280
	v_mov_b32_e32 v112, 0                                      // 00000000D860: 7EE00280
	v_mov_b32_e32 v109, 0                                      // 00000000D864: 7EDA0280
	v_exp_f32_e32 v116, v84                                    // 00000000D868: 7EE84154
	v_exp_f32_e32 v117, v85                                    // 00000000D86C: 7EEA4155
	v_exp_f32_e32 v140, v68                                    // 00000000D870: 7F184144
	v_exp_f32_e32 v141, v69                                    // 00000000D874: 7F1A4145
	v_exp_f32_e32 v144, v88                                    // 00000000D878: 7F204158
	v_exp_f32_e32 v145, v89                                    // 00000000D87C: 7F224159
	v_exp_f32_e32 v148, v72                                    // 00000000D880: 7F284148
	v_exp_f32_e32 v149, v73                                    // 00000000D884: 7F2A4149
	v_exp_f32_e32 v152, v92                                    // 00000000D888: 7F30415C
	v_exp_f32_e32 v153, v93                                    // 00000000D88C: 7F32415D
	v_exp_f32_e32 v156, v76                                    // 00000000D890: 7F38414C
	v_exp_f32_e32 v157, v77                                    // 00000000D894: 7F3A414D
	v_exp_f32_e32 v160, v96                                    // 00000000D898: 7F404160
	v_exp_f32_e32 v161, v97                                    // 00000000D89C: 7F424161
	v_exp_f32_e32 v164, v80                                    // 00000000D8A0: 7F484150
	v_exp_f32_e32 v165, v81                                    // 00000000D8A4: 7F4A4151
	v_cvt_pk_fp8_f32 v106, v114, v115                          // 00000000D8A8: D2A2006A 0002E772
	v_cvt_pk_fp8_f32 v110, v138, v139                          // 00000000D8B0: D2A2006E 0003178A
	v_cvt_pk_fp8_f32 v107, v142, v143                          // 00000000D8B8: D2A2006B 00031F8E
	v_cvt_pk_fp8_f32 v111, v146, v147                          // 00000000D8C0: D2A2006F 00032792
	v_cvt_pk_fp8_f32 v108, v150, v151                          // 00000000D8C8: D2A2006C 00032F96
	v_cvt_pk_fp8_f32 v112, v154, v155                          // 00000000D8D0: D2A20070 0003379A
	v_cvt_pk_fp8_f32 v109, v158, v159                          // 00000000D8D8: D2A2006D 00033F9E
	v_cvt_pk_fp8_f32 v113, v162, v163                          // 00000000D8E0: D2A20071 000347A2
	v_cvt_pk_fp8_f32 v106, v116, v117 op_sel:[0,0,1]           // 00000000D8E8: D2A2406A 0002EB74
	v_cvt_pk_fp8_f32 v110, v140, v141 op_sel:[0,0,1]           // 00000000D8F0: D2A2406E 00031B8C
	v_cvt_pk_fp8_f32 v107, v144, v145 op_sel:[0,0,1]           // 00000000D8F8: D2A2406B 00032390
	v_cvt_pk_fp8_f32 v111, v148, v149 op_sel:[0,0,1]           // 00000000D900: D2A2406F 00032B94
	v_cvt_pk_fp8_f32 v108, v152, v153 op_sel:[0,0,1]           // 00000000D908: D2A2406C 00033398
	v_cvt_pk_fp8_f32 v112, v156, v157 op_sel:[0,0,1]           // 00000000D910: D2A24070 00033B9C
	v_cvt_pk_fp8_f32 v109, v160, v161 op_sel:[0,0,1]           // 00000000D918: D2A2406D 000343A0
	v_cvt_pk_fp8_f32 v113, v164, v165 op_sel:[0,0,1]           // 00000000D920: D2A24071 00034BA4
	s_barrier                                                  // 00000000D928: BF8A0000
	s_setprio 1                                                // 00000000D92C: BF8F0001
	s_waitcnt vmcnt(0)                                         // 00000000D930: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[114:117], v[98:105], v[106:113], 0// 00000000D934: D3AD0072 0202D562
	ds_read_b64_tr_b8 v[146:147], v137                         // 00000000D93C: D9C40000 92000089
	ds_read_b64_tr_b8 v[148:149], v137 offset:1024             // 00000000D944: D9C40400 94000089
	ds_read_b64_tr_b8 v[150:151], v137 offset:2048             // 00000000D94C: D9C40800 96000089
	ds_read_b64_tr_b8 v[152:153], v137 offset:3072             // 00000000D954: D9C40C00 98000089
	ds_read_b64_tr_b8 v[154:155], v137 offset:256              // 00000000D95C: D9C40100 9A000089
	ds_read_b64_tr_b8 v[156:157], v137 offset:1280             // 00000000D964: D9C40500 9C000089
	ds_read_b64_tr_b8 v[158:159], v137 offset:2304             // 00000000D96C: D9C40900 9E000089
	ds_read_b64_tr_b8 v[160:161], v137 offset:3328             // 00000000D974: D9C40D00 A0000089
	ds_read_b64_tr_b8 v[138:139], v137 offset:512              // 00000000D97C: D9C40200 8A000089
	ds_read_b64_tr_b8 v[140:141], v137 offset:1536             // 00000000D984: D9C40600 8C000089
	ds_read_b64_tr_b8 v[142:143], v137 offset:2560             // 00000000D98C: D9C40A00 8E000089
	ds_read_b64_tr_b8 v[144:145], v137 offset:3584             // 00000000D994: D9C40E00 90000089
	s_waitcnt lgkmcnt(4)                                       // 00000000D99C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[146:153], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000D9A0: D3AC0000 0003117D D3AE0832 04CAD592
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[154:161], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000D9B0: D3AC0000 0003117D D3AE0822 048AD59A
	ds_read_b64_tr_b8 v[146:147], v137 offset:768              // 00000000D9C0: D9C40300 92000089
	ds_read_b64_tr_b8 v[148:149], v137 offset:1792             // 00000000D9C8: D9C40700 94000089
	ds_read_b64_tr_b8 v[150:151], v137 offset:2816             // 00000000D9D0: D9C40B00 96000089
	ds_read_b64_tr_b8 v[152:153], v137 offset:3840             // 00000000D9D8: D9C40F00 98000089
	s_add_u32 s16, s48, 4                                      // 00000000D9E0: 80108430
	s_cmp_ge_u32 s16, s78                                      // 00000000D9E4: BF094E10
	s_cbranch_scc1 15                                          // 00000000D9E8: BF85000F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3728>
	s_lshl_b32 s17, s17, 14                                    // 00000000D9EC: 8E118E11
	s_mul_i32 s16, s16, s6                                     // 00000000D9F0: 92100610
	s_and_b32 s17, s17, 0xc000                                 // 00000000D9F4: 8611FF11 0000C000
	s_lshl_b32 s16, s16, 6                                     // 00000000D9FC: 8E108610
	s_or_b32 s17, s72, s17                                     // 00000000DA00: 87111148
	s_add_u32 m0, s17, 0                                       // 00000000DA04: 807C8011
	s_nop 0                                                    // 00000000DA08: BF800000
	buffer_load_dwordx4 v127, s[60:63], s16 offen lds          // 00000000DA0C: E05D1000 100F007F
	s_add_u32 m0, s17, 0x2000                                  // 00000000DA14: 807CFF11 00002000
	s_nop 0                                                    // 00000000DA1C: BF800000
	buffer_load_dwordx4 v128, s[60:63], s16 offen lds          // 00000000DA20: E05D1000 100F0080
	s_add_u32 s16, s48, 2                                      // 00000000DA28: 80108230
	s_cmp_ge_u32 s16, s78                                      // 00000000DA2C: BF094E10
	s_cbranch_scc1 9                                           // 00000000DA30: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3758>
	s_mul_i32 s16, s16, s7                                     // 00000000DA34: 92100710
	s_xor_b32 s17, s18, 0x4000                                 // 00000000DA38: 8811FF12 00004000
	s_lshl_b32 s16, s16, 6                                     // 00000000DA40: 8E108610
	s_add_u32 s17, s73, s17                                    // 00000000DA44: 80111149
	s_add_u32 m0, s17, 0                                       // 00000000DA48: 807C8011
	s_nop 0                                                    // 00000000DA4C: BF800000
	buffer_load_dwordx4 v129, s[64:67], s16 offen lds          // 00000000DA50: E05D1000 10100081
	v_lshlrev_b32_e32 v115, 23, v136                           // 00000000DA58: 24E71097
	v_fma_f32 v135, v114, v115, v135                           // 00000000DA5C: D1CB0087 061EE772
	s_waitcnt lgkmcnt(0)                                       // 00000000DA64: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[138:145], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000DA68: D3AC0000 0003117D D3AE0812 044AD58A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[146:153], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000DA78: D3AC0000 0003117D D3AE0802 040AD592
	s_barrier                                                  // 00000000DA88: BF8A0000
	s_add_u32 s16, s48, 1                                      // 00000000DA8C: 80108130
	s_branch 64391                                             // 00000000DA90: BF82FB87 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x25b0>
	s_barrier                                                  // 00000000DA94: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000DA98: BF8C0F70
	s_add_u32 s19, s16, 4                                      // 00000000DA9C: 80138410
	s_cmp_ge_u32 s19, s78                                      // 00000000DAA0: BF094E13
	s_cbranch_scc1 15                                          // 00000000DAA4: BF85000F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x37e4>
	s_lshl_b32 s17, s17, 14                                    // 00000000DAA8: 8E118E11
	s_mul_i32 s19, s19, s6                                     // 00000000DAAC: 92130613
	s_and_b32 s17, s17, 0xc000                                 // 00000000DAB0: 8611FF11 0000C000
	s_lshl_b32 s19, s19, 6                                     // 00000000DAB8: 8E138613
	s_or_b32 s17, s72, s17                                     // 00000000DABC: 87111148
	s_add_u32 m0, s17, 0                                       // 00000000DAC0: 807C8011
	s_nop 0                                                    // 00000000DAC4: BF800000
	buffer_load_dwordx4 v127, s[60:63], s19 offen lds          // 00000000DAC8: E05D1000 130F007F
	s_add_u32 m0, s17, 0x2000                                  // 00000000DAD0: 807CFF11 00002000
	s_nop 0                                                    // 00000000DAD8: BF800000
	buffer_load_dwordx4 v128, s[60:63], s19 offen lds          // 00000000DADC: E05D1000 130F0080
	s_add_u32 s17, s16, 2                                      // 00000000DAE4: 80118210
	s_cmp_ge_u32 s17, s78                                      // 00000000DAE8: BF094E11
	s_cbranch_scc1 9                                           // 00000000DAEC: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3814>
	s_mul_i32 s17, s17, s7                                     // 00000000DAF0: 92110711
	s_xor_b32 s18, s18, 0x4000                                 // 00000000DAF4: 8812FF12 00004000
	s_lshl_b32 s17, s17, 6                                     // 00000000DAFC: 8E118611
	s_add_u32 s18, s73, s18                                    // 00000000DB00: 80121249
	s_add_u32 m0, s18, 0                                       // 00000000DB04: 807C8012
	s_nop 0                                                    // 00000000DB08: BF800000
	buffer_load_dwordx4 v129, s[64:67], s17 offen lds          // 00000000DB0C: E05D1000 11100081
	s_barrier                                                  // 00000000DB14: BF8A0000
	s_add_u32 s16, s16, 1                                      // 00000000DB18: 80108110
	s_branch 64356                                             // 00000000DB1C: BF82FB64 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x25b0>
	s_nop 7                                                    // 00000000DB20: BF800007
	v_mov_b32_e32 v82, v126                                    // 00000000DB24: 7EA4037E
	v_mov_b32_e32 v83, v126                                    // 00000000DB28: 7EA6037E
	v_mov_b32_e32 v84, v126                                    // 00000000DB2C: 7EA8037E
	v_mov_b32_e32 v85, v126                                    // 00000000DB30: 7EAA037E
	v_mov_b32_e32 v86, v126                                    // 00000000DB34: 7EAC037E
	v_mov_b32_e32 v87, v126                                    // 00000000DB38: 7EAE037E
	v_mov_b32_e32 v88, v126                                    // 00000000DB3C: 7EB0037E
	v_mov_b32_e32 v89, v126                                    // 00000000DB40: 7EB2037E
	v_mov_b32_e32 v90, v126                                    // 00000000DB44: 7EB4037E
	v_mov_b32_e32 v91, v126                                    // 00000000DB48: 7EB6037E
	v_mov_b32_e32 v92, v126                                    // 00000000DB4C: 7EB8037E
	v_mov_b32_e32 v93, v126                                    // 00000000DB50: 7EBA037E
	v_mov_b32_e32 v94, v126                                    // 00000000DB54: 7EBC037E
	v_mov_b32_e32 v95, v126                                    // 00000000DB58: 7EBE037E
	v_mov_b32_e32 v96, v126                                    // 00000000DB5C: 7EC0037E
	v_mov_b32_e32 v97, v126                                    // 00000000DB60: 7EC2037E
	s_sub_u32 s18, s3, s20                                     // 00000000DB64: 80921403
	s_sub_i32 s18, s18, 32                                     // 00000000DB68: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 00000000DB6C: BF03A012
	s_cbranch_scc1 87                                          // 00000000DB70: BF850057 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x39d0>
	s_cmp_lt_i32 s18, 0                                        // 00000000DB74: BF048012
	s_cbranch_scc1 68                                          // 00000000DB78: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x398c>
	v_add_u32_e32 v114, s18, v119                              // 00000000DB7C: 68E4EE12
	v_and_b32_e32 v115, 4, v131                                // 00000000DB80: 26E70684
	v_sub_u32_e32 v114, v114, v115                             // 00000000DB84: 6AE4E772
	v_cmp_gt_i32_e32 vcc, 0, v114                              // 00000000DB88: 7D88E480
	s_nop 7                                                    // 00000000DB8C: BF800007
	v_cndmask_b32_e64 v66, v66, v126, vcc                      // 00000000DB90: D1000042 01AAFD42
	v_cmp_gt_i32_e32 vcc, 1, v114                              // 00000000DB98: 7D88E481
	s_nop 1                                                    // 00000000DB9C: BF800001
	v_cndmask_b32_e64 v67, v67, v126, vcc                      // 00000000DBA0: D1000043 01AAFD43
	v_cmp_gt_i32_e32 vcc, 2, v114                              // 00000000DBA8: 7D88E482
	s_nop 1                                                    // 00000000DBAC: BF800001
	v_cndmask_b32_e64 v68, v68, v126, vcc                      // 00000000DBB0: D1000044 01AAFD44
	v_cmp_gt_i32_e32 vcc, 3, v114                              // 00000000DBB8: 7D88E483
	s_nop 1                                                    // 00000000DBBC: BF800001
	v_cndmask_b32_e64 v69, v69, v126, vcc                      // 00000000DBC0: D1000045 01AAFD45
	v_cmp_gt_i32_e32 vcc, 8, v114                              // 00000000DBC8: 7D88E488
	s_nop 1                                                    // 00000000DBCC: BF800001
	v_cndmask_b32_e64 v70, v70, v126, vcc                      // 00000000DBD0: D1000046 01AAFD46
	v_cmp_gt_i32_e32 vcc, 9, v114                              // 00000000DBD8: 7D88E489
	s_nop 1                                                    // 00000000DBDC: BF800001
	v_cndmask_b32_e64 v71, v71, v126, vcc                      // 00000000DBE0: D1000047 01AAFD47
	v_cmp_gt_i32_e32 vcc, 10, v114                             // 00000000DBE8: 7D88E48A
	s_nop 1                                                    // 00000000DBEC: BF800001
	v_cndmask_b32_e64 v72, v72, v126, vcc                      // 00000000DBF0: D1000048 01AAFD48
	v_cmp_gt_i32_e32 vcc, 11, v114                             // 00000000DBF8: 7D88E48B
	s_nop 1                                                    // 00000000DBFC: BF800001
	v_cndmask_b32_e64 v73, v73, v126, vcc                      // 00000000DC00: D1000049 01AAFD49
	v_cmp_gt_i32_e32 vcc, 16, v114                             // 00000000DC08: 7D88E490
	s_nop 1                                                    // 00000000DC0C: BF800001
	v_cndmask_b32_e64 v74, v74, v126, vcc                      // 00000000DC10: D100004A 01AAFD4A
	v_cmp_gt_i32_e32 vcc, 17, v114                             // 00000000DC18: 7D88E491
	s_nop 1                                                    // 00000000DC1C: BF800001
	v_cndmask_b32_e64 v75, v75, v126, vcc                      // 00000000DC20: D100004B 01AAFD4B
	v_cmp_gt_i32_e32 vcc, 18, v114                             // 00000000DC28: 7D88E492
	s_nop 1                                                    // 00000000DC2C: BF800001
	v_cndmask_b32_e64 v76, v76, v126, vcc                      // 00000000DC30: D100004C 01AAFD4C
	v_cmp_gt_i32_e32 vcc, 19, v114                             // 00000000DC38: 7D88E493
	s_nop 1                                                    // 00000000DC3C: BF800001
	v_cndmask_b32_e64 v77, v77, v126, vcc                      // 00000000DC40: D100004D 01AAFD4D
	v_cmp_gt_i32_e32 vcc, 24, v114                             // 00000000DC48: 7D88E498
	s_nop 1                                                    // 00000000DC4C: BF800001
	v_cndmask_b32_e64 v78, v78, v126, vcc                      // 00000000DC50: D100004E 01AAFD4E
	v_cmp_gt_i32_e32 vcc, 25, v114                             // 00000000DC58: 7D88E499
	s_nop 1                                                    // 00000000DC5C: BF800001
	v_cndmask_b32_e64 v79, v79, v126, vcc                      // 00000000DC60: D100004F 01AAFD4F
	v_cmp_gt_i32_e32 vcc, 26, v114                             // 00000000DC68: 7D88E49A
	s_nop 1                                                    // 00000000DC6C: BF800001
	v_cndmask_b32_e64 v80, v80, v126, vcc                      // 00000000DC70: D1000050 01AAFD50
	v_cmp_gt_i32_e32 vcc, 27, v114                             // 00000000DC78: 7D88E49B
	s_nop 1                                                    // 00000000DC7C: BF800001
	v_cndmask_b32_e64 v81, v81, v126, vcc                      // 00000000DC80: D1000051 01AAFD51
	s_branch 17                                                // 00000000DC88: BF820011 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x39d0>
	s_nop 11                                                   // 00000000DC8C: BF80000B
	v_mov_b32_e32 v66, v126                                    // 00000000DC90: 7E84037E
	v_mov_b32_e32 v67, v126                                    // 00000000DC94: 7E86037E
	v_mov_b32_e32 v68, v126                                    // 00000000DC98: 7E88037E
	v_mov_b32_e32 v69, v126                                    // 00000000DC9C: 7E8A037E
	v_mov_b32_e32 v70, v126                                    // 00000000DCA0: 7E8C037E
	v_mov_b32_e32 v71, v126                                    // 00000000DCA4: 7E8E037E
	v_mov_b32_e32 v72, v126                                    // 00000000DCA8: 7E90037E
	v_mov_b32_e32 v73, v126                                    // 00000000DCAC: 7E92037E
	v_mov_b32_e32 v74, v126                                    // 00000000DCB0: 7E94037E
	v_mov_b32_e32 v75, v126                                    // 00000000DCB4: 7E96037E
	v_mov_b32_e32 v76, v126                                    // 00000000DCB8: 7E98037E
	v_mov_b32_e32 v77, v126                                    // 00000000DCBC: 7E9A037E
	v_mov_b32_e32 v78, v126                                    // 00000000DCC0: 7E9C037E
	v_mov_b32_e32 v79, v126                                    // 00000000DCC4: 7E9E037E
	v_mov_b32_e32 v80, v126                                    // 00000000DCC8: 7EA0037E
	v_mov_b32_e32 v81, v126                                    // 00000000DCCC: 7EA2037E
	s_and_b32 s17, s17, 3                                      // 00000000DCD0: 86118311
	v_max_f32_e32 v114, v82, v83                               // 00000000DCD4: 16E4A752
	v_max3_f32 v114, v84, v85, v114                            // 00000000DCD8: D1D30072 05CAAB54
	v_max3_f32 v114, v86, v87, v114                            // 00000000DCE0: D1D30072 05CAAF56
	v_max3_f32 v114, v88, v89, v114                            // 00000000DCE8: D1D30072 05CAB358
	v_max3_f32 v114, v90, v91, v114                            // 00000000DCF0: D1D30072 05CAB75A
	v_max3_f32 v114, v92, v93, v114                            // 00000000DCF8: D1D30072 05CABB5C
	v_max3_f32 v114, v94, v95, v114                            // 00000000DD00: D1D30072 05CABF5E
	v_max3_f32 v114, v96, v97, v114                            // 00000000DD08: D1D30072 05CAC360
	s_nop 4                                                    // 00000000DD10: BF800004
	v_max_f32_e32 v115, v66, v67                               // 00000000DD14: 16E68742
	v_max3_f32 v115, v68, v69, v115                            // 00000000DD18: D1D30073 05CE8B44
	v_max3_f32 v115, v70, v71, v115                            // 00000000DD20: D1D30073 05CE8F46
	v_max3_f32 v115, v72, v73, v115                            // 00000000DD28: D1D30073 05CE9348
	v_max3_f32 v115, v74, v75, v115                            // 00000000DD30: D1D30073 05CE974A
	v_max3_f32 v115, v76, v77, v115                            // 00000000DD38: D1D30073 05CE9B4C
	v_max3_f32 v115, v78, v79, v115                            // 00000000DD40: D1D30073 05CE9F4E
	v_max3_f32 v115, v80, v81, v115                            // 00000000DD48: D1D30073 05CEA350
	v_max_f32_e32 v114, v114, v115                             // 00000000DD50: 16E4E772
	v_mov_b32_e32 v115, v114                                   // 00000000DD54: 7EE60372
	s_nop 1                                                    // 00000000DD58: BF800001
	v_permlane32_swap_b32_e32 v114, v115                       // 00000000DD5C: 7EE4B573
	v_max_f32_e32 v114, v114, v115                             // 00000000DD60: 16E4E772
	v_mul_f32_e32 v115, v118, v114                             // 00000000DD64: 0AE6E576
	v_max_f32_e32 v115, v134, v115                             // 00000000DD68: 16E6E786
	v_sub_f32_e32 v116, v115, v134                             // 00000000DD6C: 04E90D73
	v_cmp_lt_f32_e32 vcc, s71, v116                            // 00000000DD70: 7C82E847
	s_cmp_lg_u64 vcc, 0                                        // 00000000DD74: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000DD78: 859280C1
	s_and_b64 s[20:21], s[18:19], exec                         // 00000000DD7C: 86947E12
	s_cselect_b32 s20, 1, 0                                    // 00000000DD80: 85148081
	s_cselect_b64 s[20:21], -1, 0                              // 00000000DD84: 859480C1
	v_cndmask_b32_e64 v115, v134, v115, s[20:21]               // 00000000DD88: D1000073 0052E786
	v_fma_f32 v114, v114, v118, -v115                          // 00000000DD90: D1CB0072 85CEED72
	v_floor_f32_e32 v114, v114                                 // 00000000DD98: 7EE43F72
	v_med3_f32 v114, v114, s70, 0                              // 00000000DD9C: D1D60072 02008D72
	v_cvt_i32_f32_e32 v116, v114                               // 00000000DDA4: 7EE81172
	v_add_u32_e32 v116, 0x7f, v116                             // 00000000DDA8: 68E8E8FF 0000007F
	v_lshlrev_b32_e32 v117, 23, v116                           // 00000000DDB0: 24EAE897
	v_add_f32_e32 v114, v115, v114                             // 00000000DDB4: 02E4E573
	v_sub_f32_e32 v114, 0x40c00000, v114                       // 00000000DDB8: 04E4E4FF 40C00000
	ds_read_b64_tr_b8 v[146:147], v137                         // 00000000DDC0: D9C40000 92000089
	ds_read_b64_tr_b8 v[148:149], v137 offset:1024             // 00000000DDC8: D9C40400 94000089
	ds_read_b64_tr_b8 v[150:151], v137 offset:2048             // 00000000DDD0: D9C40800 96000089
	ds_read_b64_tr_b8 v[152:153], v137 offset:3072             // 00000000DDD8: D9C40C00 98000089
	ds_read_b64_tr_b8 v[154:155], v137 offset:256              // 00000000DDE0: D9C40100 9A000089
	ds_read_b64_tr_b8 v[156:157], v137 offset:1280             // 00000000DDE8: D9C40500 9C000089
	ds_read_b64_tr_b8 v[158:159], v137 offset:2304             // 00000000DDF0: D9C40900 9E000089
	ds_read_b64_tr_b8 v[160:161], v137 offset:3328             // 00000000DDF8: D9C40D00 A0000089
	ds_read_b64_tr_b8 v[138:139], v137 offset:512              // 00000000DE00: D9C40200 8A000089
	ds_read_b64_tr_b8 v[140:141], v137 offset:1536             // 00000000DE08: D9C40600 8C000089
	ds_read_b64_tr_b8 v[142:143], v137 offset:2560             // 00000000DE10: D9C40A00 8E000089
	ds_read_b64_tr_b8 v[144:145], v137 offset:3584             // 00000000DE18: D9C40E00 90000089
	s_waitcnt lgkmcnt(4)                                       // 00000000DE20: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[146:153], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000DE24: D3AC0000 0003117D D3AE0832 04CAD592
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[154:161], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000DE34: D3AC0000 0003117D D3AE0822 048AD59A
	ds_read_b64_tr_b8 v[146:147], v137 offset:768              // 00000000DE44: D9C40300 92000089
	ds_read_b64_tr_b8 v[148:149], v137 offset:1792             // 00000000DE4C: D9C40700 94000089
	ds_read_b64_tr_b8 v[150:151], v137 offset:2816             // 00000000DE54: D9C40B00 96000089
	ds_read_b64_tr_b8 v[152:153], v137 offset:3840             // 00000000DE5C: D9C40F00 98000089
	s_add_u32 s20, s16, 4                                      // 00000000DE64: 80148410
	s_cmp_ge_u32 s20, s78                                      // 00000000DE68: BF094E14
	s_cbranch_scc1 13                                          // 00000000DE6C: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3ba4>
	s_lshl_b32 s21, s17, 14                                    // 00000000DE70: 8E158E11
	s_mul_i32 s20, s20, s6                                     // 00000000DE74: 92140614
	s_or_b32 s21, s72, s21                                     // 00000000DE78: 87151548
	s_lshl_b32 s20, s20, 6                                     // 00000000DE7C: 8E148614
	s_add_u32 m0, s21, 0                                       // 00000000DE80: 807C8015
	s_nop 0                                                    // 00000000DE84: BF800000
	buffer_load_dwordx4 v127, s[60:63], s20 offen lds          // 00000000DE88: E05D1000 140F007F
	s_add_u32 m0, s21, 0x2000                                  // 00000000DE90: 807CFF15 00002000
	s_nop 0                                                    // 00000000DE98: BF800000
	buffer_load_dwordx4 v128, s[60:63], s20 offen lds          // 00000000DE9C: E05D1000 140F0080
	s_add_u32 s20, s16, 2                                      // 00000000DEA4: 80148210
	s_cmp_ge_u32 s20, s78                                      // 00000000DEA8: BF094E14
	s_cbranch_scc1 10                                          // 00000000DEAC: BF85000A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3bd8>
	s_lshl_b32 s17, s17, 13                                    // 00000000DEB0: 8E118D11
	s_mul_i32 s20, s20, s7                                     // 00000000DEB4: 92140714
	s_xor_b32 s17, s17, 0x4000                                 // 00000000DEB8: 8811FF11 00004000
	s_lshl_b32 s20, s20, 6                                     // 00000000DEC0: 8E148614
	s_add_u32 s17, s73, s17                                    // 00000000DEC4: 80111149
	s_add_u32 m0, s17, 0                                       // 00000000DEC8: 807C8011
	s_nop 0                                                    // 00000000DECC: BF800000
	buffer_load_dwordx4 v129, s[64:67], s20 offen lds          // 00000000DED0: E05D1000 14100081
	s_waitcnt lgkmcnt(0)                                       // 00000000DED8: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[138:145], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000DEDC: D3AC0000 0003117D D3AE0812 044AD58A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[146:153], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000DEEC: D3AC0000 0003117D D3AE0802 040AD592
	v_pk_fma_f32 v[96:97], v[96:97], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000DEFC: D3B00060 0DCAED60
	v_pk_fma_f32 v[94:95], v[94:95], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000DF04: D3B0005E 0DCAED5E
	v_pk_fma_f32 v[92:93], v[92:93], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000DF0C: D3B0005C 0DCAED5C
	v_pk_fma_f32 v[90:91], v[90:91], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000DF14: D3B0005A 0DCAED5A
	v_pk_fma_f32 v[88:89], v[88:89], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000DF1C: D3B00058 0DCAED58
	v_pk_fma_f32 v[86:87], v[86:87], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000DF24: D3B00056 0DCAED56
	v_pk_fma_f32 v[84:85], v[84:85], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000DF2C: D3B00054 0DCAED54
	v_pk_fma_f32 v[82:83], v[82:83], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000DF34: D3B00052 0DCAED52
	v_pk_fma_f32 v[80:81], v[80:81], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000DF3C: D3B00050 0DCAED50
	v_pk_fma_f32 v[78:79], v[78:79], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000DF44: D3B0004E 0DCAED4E
	v_pk_fma_f32 v[76:77], v[76:77], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000DF4C: D3B0004C 0DCAED4C
	v_pk_fma_f32 v[74:75], v[74:75], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000DF54: D3B0004A 0DCAED4A
	v_pk_fma_f32 v[72:73], v[72:73], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000DF5C: D3B00048 0DCAED48
	v_pk_fma_f32 v[70:71], v[70:71], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000DF64: D3B00046 0DCAED46
	v_pk_fma_f32 v[68:69], v[68:69], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000DF6C: D3B00044 0DCAED44
	v_pk_fma_f32 v[66:67], v[66:67], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000DF74: D3B00042 0DCAED42
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000DF7C: 86927E12
	s_cbranch_scc0 68                                          // 00000000DF80: BF840044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d94>
	v_sub_f32_e32 v106, v134, v115                             // 00000000DF84: 04D4E786
	v_exp_f32_e32 v106, v106                                   // 00000000DF88: 7ED4416A
	s_nop 0                                                    // 00000000DF8C: BF800000
	v_pk_mul_f32 v[64:65], v[106:107], v[64:65] op_sel_hi:[0,1]// 00000000DF90: D3B14040 1002816A
	v_pk_mul_f32 v[62:63], v[106:107], v[62:63] op_sel_hi:[0,1]// 00000000DF98: D3B1403E 10027D6A
	v_pk_mul_f32 v[60:61], v[106:107], v[60:61] op_sel_hi:[0,1]// 00000000DFA0: D3B1403C 1002796A
	v_pk_mul_f32 v[58:59], v[106:107], v[58:59] op_sel_hi:[0,1]// 00000000DFA8: D3B1403A 1002756A
	v_pk_mul_f32 v[56:57], v[106:107], v[56:57] op_sel_hi:[0,1]// 00000000DFB0: D3B14038 1002716A
	v_pk_mul_f32 v[54:55], v[106:107], v[54:55] op_sel_hi:[0,1]// 00000000DFB8: D3B14036 10026D6A
	v_pk_mul_f32 v[52:53], v[106:107], v[52:53] op_sel_hi:[0,1]// 00000000DFC0: D3B14034 1002696A
	v_pk_mul_f32 v[50:51], v[106:107], v[50:51] op_sel_hi:[0,1]// 00000000DFC8: D3B14032 1002656A
	v_pk_mul_f32 v[48:49], v[106:107], v[48:49] op_sel_hi:[0,1]// 00000000DFD0: D3B14030 1002616A
	v_pk_mul_f32 v[46:47], v[106:107], v[46:47] op_sel_hi:[0,1]// 00000000DFD8: D3B1402E 10025D6A
	v_pk_mul_f32 v[44:45], v[106:107], v[44:45] op_sel_hi:[0,1]// 00000000DFE0: D3B1402C 1002596A
	v_pk_mul_f32 v[42:43], v[106:107], v[42:43] op_sel_hi:[0,1]// 00000000DFE8: D3B1402A 1002556A
	v_pk_mul_f32 v[40:41], v[106:107], v[40:41] op_sel_hi:[0,1]// 00000000DFF0: D3B14028 1002516A
	v_pk_mul_f32 v[38:39], v[106:107], v[38:39] op_sel_hi:[0,1]// 00000000DFF8: D3B14026 10024D6A
	v_pk_mul_f32 v[36:37], v[106:107], v[36:37] op_sel_hi:[0,1]// 00000000E000: D3B14024 1002496A
	v_pk_mul_f32 v[34:35], v[106:107], v[34:35] op_sel_hi:[0,1]// 00000000E008: D3B14022 1002456A
	v_pk_mul_f32 v[32:33], v[106:107], v[32:33] op_sel_hi:[0,1]// 00000000E010: D3B14020 1002416A
	v_pk_mul_f32 v[30:31], v[106:107], v[30:31] op_sel_hi:[0,1]// 00000000E018: D3B1401E 10023D6A
	v_pk_mul_f32 v[28:29], v[106:107], v[28:29] op_sel_hi:[0,1]// 00000000E020: D3B1401C 1002396A
	v_pk_mul_f32 v[26:27], v[106:107], v[26:27] op_sel_hi:[0,1]// 00000000E028: D3B1401A 1002356A
	v_pk_mul_f32 v[24:25], v[106:107], v[24:25] op_sel_hi:[0,1]// 00000000E030: D3B14018 1002316A
	v_pk_mul_f32 v[22:23], v[106:107], v[22:23] op_sel_hi:[0,1]// 00000000E038: D3B14016 10022D6A
	v_pk_mul_f32 v[20:21], v[106:107], v[20:21] op_sel_hi:[0,1]// 00000000E040: D3B14014 1002296A
	v_pk_mul_f32 v[18:19], v[106:107], v[18:19] op_sel_hi:[0,1]// 00000000E048: D3B14012 1002256A
	v_pk_mul_f32 v[16:17], v[106:107], v[16:17] op_sel_hi:[0,1]// 00000000E050: D3B14010 1002216A
	v_pk_mul_f32 v[14:15], v[106:107], v[14:15] op_sel_hi:[0,1]// 00000000E058: D3B1400E 10021D6A
	v_pk_mul_f32 v[12:13], v[106:107], v[12:13] op_sel_hi:[0,1]// 00000000E060: D3B1400C 1002196A
	v_pk_mul_f32 v[10:11], v[106:107], v[10:11] op_sel_hi:[0,1]// 00000000E068: D3B1400A 1002156A
	v_pk_mul_f32 v[8:9], v[106:107], v[8:9] op_sel_hi:[0,1]    // 00000000E070: D3B14008 1002116A
	v_pk_mul_f32 v[6:7], v[106:107], v[6:7] op_sel_hi:[0,1]    // 00000000E078: D3B14006 10020D6A
	v_pk_mul_f32 v[4:5], v[106:107], v[4:5] op_sel_hi:[0,1]    // 00000000E080: D3B14004 1002096A
	v_pk_mul_f32 v[2:3], v[106:107], v[2:3] op_sel_hi:[0,1]    // 00000000E088: D3B14002 1002056A
	v_mul_f32_e32 v135, v135, v106                             // 00000000E090: 0B0ED587
	s_waitcnt vmcnt(0)                                         // 00000000E094: BF8C0F70
	s_barrier                                                  // 00000000E098: BF8A0000
	s_add_u32 s16, s16, 1                                      // 00000000E09C: 80108110
	v_mov_b32_e32 v134, v115                                   // 00000000E0A0: 7F0C0373
	v_mov_b32_e32 v136, v116                                   // 00000000E0A4: 7F100374
	s_branch 64001                                             // 00000000E0A8: BF82FA01 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x25b0>
	s_cmp_ge_u32 s48, s16                                      // 00000000E0AC: BF091030
	s_cbranch_scc1 40                                          // 00000000E0B0: BF850028 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3e54>
	s_waitcnt vmcnt(0)                                         // 00000000E0B4: BF8C0F70
	s_barrier                                                  // 00000000E0B8: BF8A0000
	s_add_u32 s16, s78, s35                                    // 00000000E0BC: 8010234E
	s_and_b32 s35, s16, 3                                      // 00000000E0C0: 86238310
	s_cmp_lg_u32 s79, 0                                        // 00000000E0C4: BF07804F
	s_mov_b32 s24, 0                                           // 00000000E0C8: BE980080
	s_cbranch_scc1 4                                           // 00000000E0CC: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3de0>
	s_not_b32 s16, s52                                         // 00000000E0D0: BE900434
	s_add_u32 s16, s50, s16                                    // 00000000E0D4: 80101032
	s_cmp_lg_u32 s52, s16                                      // 00000000E0D8: BF071034
	s_cbranch_scc1 243                                         // 00000000E0DC: BF8500F3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x41ac>
	s_add_u32 s2, s2, s13                                      // 00000000E0E0: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000E0E4: BF093102
	s_cbranch_scc1 220                                         // 00000000E0E8: BF8500DC <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x415c>
	s_lshl_b32 s16, s2, 5                                      // 00000000E0EC: 8E108502
	s_load_dwordx8 s[52:59], s[46:47], s16 offset:0x0          // 00000000E0F0: C00E4D17 20000000
	s_mov_b64 s[18:19], -1                                     // 00000000E0F8: BE9201C1
	s_branch 237                                               // 00000000E0FC: BF8200ED <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x41b4>
	s_cmp_ge_u32 s48, s16                                      // 00000000E100: BF091030
	s_cbranch_scc1 116                                         // 00000000E104: BF850074 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3fd8>
	s_waitcnt vmcnt(0)                                         // 00000000E108: BF8C0F70
	s_barrier                                                  // 00000000E10C: BF8A0000
	s_add_u32 s16, s78, s35                                    // 00000000E110: 8010234E
	s_and_b32 s35, s16, 3                                      // 00000000E114: 86238310
	s_cmp_lg_u32 s79, 0                                        // 00000000E118: BF07804F
	s_mov_b32 s24, 0                                           // 00000000E11C: BE980080
	s_cbranch_scc1 4                                           // 00000000E120: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3e34>
	s_not_b32 s16, s52                                         // 00000000E124: BE900434
	s_add_u32 s16, s50, s16                                    // 00000000E128: 80101032
	s_cmp_lg_u32 s52, s16                                      // 00000000E12C: BF071034
	s_cbranch_scc1 347                                         // 00000000E130: BF85015B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x43a0>
	s_add_u32 s2, s2, s13                                      // 00000000E134: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000E138: BF093102
	s_cbranch_scc1 204                                         // 00000000E13C: BF8500CC <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4170>
	s_lshl_b32 s16, s2, 5                                      // 00000000E140: 8E108502
	s_load_dwordx8 s[52:59], s[46:47], s16 offset:0x0          // 00000000E144: C00E4D17 20000000
	s_mov_b64 s[18:19], -1                                     // 00000000E14C: BE9201C1
	s_branch 341                                               // 00000000E150: BF820155 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x43a8>
	s_add_u32 s16, s16, s35                                    // 00000000E154: 80102310
	s_lshl_b32 s16, s16, 13                                    // 00000000E158: 8E108D10
	s_and_b32 s16, s16, 0x6000                                 // 00000000E15C: 8610FF10 00006000
	v_add_u32_e32 v114, s16, v133                              // 00000000E164: 68E50A10
	s_setprio 0                                                // 00000000E168: BF8F0000
	v_exp_f32_e32 v82, v82                                     // 00000000E16C: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000E170: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000E174: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000E178: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000E17C: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000E180: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000E184: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000E188: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000E18C: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000E190: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000E194: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000E198: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000E19C: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000E1A0: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000E1A4: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000E1A8: 7E9E414F
	v_mov_b32_e32 v113, 0                                      // 00000000E1AC: 7EE20280
	v_mov_b32_e32 v106, 0                                      // 00000000E1B0: 7ED40280
	v_mov_b32_e32 v110, 0                                      // 00000000E1B4: 7EDC0280
	v_mov_b32_e32 v107, 0                                      // 00000000E1B8: 7ED60280
	v_mov_b32_e32 v111, 0                                      // 00000000E1BC: 7EDE0280
	v_mov_b32_e32 v108, 0                                      // 00000000E1C0: 7ED80280
	v_mov_b32_e32 v112, 0                                      // 00000000E1C4: 7EE00280
	v_mov_b32_e32 v109, 0                                      // 00000000E1C8: 7EDA0280
	v_exp_f32_e32 v84, v84                                     // 00000000E1CC: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000E1D0: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000E1D4: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000E1D8: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000E1DC: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000E1E0: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000E1E4: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000E1E8: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000E1EC: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000E1F0: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000E1F4: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000E1F8: 7E9A414D
	v_exp_f32_e32 v96, v96                                     // 00000000E1FC: 7EC04160
	v_exp_f32_e32 v97, v97                                     // 00000000E200: 7EC24161
	v_exp_f32_e32 v80, v80                                     // 00000000E204: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000E208: 7EA24151
	v_cvt_pk_fp8_f32 v106, v82, v83                            // 00000000E20C: D2A2006A 0002A752
	v_cvt_pk_fp8_f32 v110, v66, v67                            // 00000000E214: D2A2006E 00028742
	v_cvt_pk_fp8_f32 v107, v86, v87                            // 00000000E21C: D2A2006B 0002AF56
	v_cvt_pk_fp8_f32 v111, v70, v71                            // 00000000E224: D2A2006F 00028F46
	v_cvt_pk_fp8_f32 v108, v90, v91                            // 00000000E22C: D2A2006C 0002B75A
	v_cvt_pk_fp8_f32 v112, v74, v75                            // 00000000E234: D2A20070 0002974A
	v_cvt_pk_fp8_f32 v109, v94, v95                            // 00000000E23C: D2A2006D 0002BF5E
	v_cvt_pk_fp8_f32 v113, v78, v79                            // 00000000E244: D2A20071 00029F4E
	v_cvt_pk_fp8_f32 v106, v84, v85 op_sel:[0,0,1]             // 00000000E24C: D2A2406A 0002AB54
	v_cvt_pk_fp8_f32 v110, v68, v69 op_sel:[0,0,1]             // 00000000E254: D2A2406E 00028B44
	v_cvt_pk_fp8_f32 v107, v88, v89 op_sel:[0,0,1]             // 00000000E25C: D2A2406B 0002B358
	v_cvt_pk_fp8_f32 v111, v72, v73 op_sel:[0,0,1]             // 00000000E264: D2A2406F 00029348
	v_cvt_pk_fp8_f32 v108, v92, v93 op_sel:[0,0,1]             // 00000000E26C: D2A2406C 0002BB5C
	v_cvt_pk_fp8_f32 v112, v76, v77 op_sel:[0,0,1]             // 00000000E274: D2A24070 00029B4C
	v_cvt_pk_fp8_f32 v109, v96, v97 op_sel:[0,0,1]             // 00000000E27C: D2A2406D 0002C360
	v_cvt_pk_fp8_f32 v113, v80, v81 op_sel:[0,0,1]             // 00000000E284: D2A24071 0002A350
	s_mov_b32 s24, 0                                           // 00000000E28C: BE980080
	s_waitcnt vmcnt(0)                                         // 00000000E290: BF8C0F70
	s_barrier                                                  // 00000000E294: BF8A0000
	s_add_u32 s16, s78, s35                                    // 00000000E298: 8010234E
	s_and_b32 s35, s16, 3                                      // 00000000E29C: 86238310
	s_cmp_lg_u32 s79, 0                                        // 00000000E2A0: BF07804F
	s_cbranch_scc1 4                                           // 00000000E2A4: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3fb8>
	s_not_b32 s16, s52                                         // 00000000E2A8: BE900434
	s_add_u32 s16, s50, s16                                    // 00000000E2AC: 80101032
	s_cmp_lg_u32 s52, s16                                      // 00000000E2B0: BF071034
	s_cbranch_scc1 375                                         // 00000000E2B4: BF850177 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4594>
	s_add_u32 s2, s2, s13                                      // 00000000E2B8: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000E2BC: BF093102
	s_cbranch_scc1 112                                         // 00000000E2C0: BF850070 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4184>
	s_lshl_b32 s16, s2, 5                                      // 00000000E2C4: 8E108502
	s_load_dwordx8 s[52:59], s[46:47], s16 offset:0x0          // 00000000E2C8: C00E4D17 20000000
	s_mov_b64 s[18:19], -1                                     // 00000000E2D0: BE9201C1
	s_branch 369                                               // 00000000E2D4: BF820171 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x459c>
	s_add_u32 s16, s16, s35                                    // 00000000E2D8: 80102310
	s_lshl_b32 s16, s16, 13                                    // 00000000E2DC: 8E108D10
	s_and_b32 s16, s16, 0x6000                                 // 00000000E2E0: 8610FF10 00006000
	v_add_u32_e32 v114, s16, v133                              // 00000000E2E8: 68E50A10
	s_setprio 0                                                // 00000000E2EC: BF8F0000
	v_exp_f32_e32 v82, v82                                     // 00000000E2F0: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000E2F4: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000E2F8: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000E2FC: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000E300: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000E304: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000E308: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000E30C: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000E310: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000E314: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000E318: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000E31C: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000E320: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000E324: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000E328: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000E32C: 7E9E414F
	v_mov_b32_e32 v113, 0                                      // 00000000E330: 7EE20280
	v_mov_b32_e32 v106, 0                                      // 00000000E334: 7ED40280
	v_mov_b32_e32 v110, 0                                      // 00000000E338: 7EDC0280
	v_mov_b32_e32 v107, 0                                      // 00000000E33C: 7ED60280
	v_mov_b32_e32 v111, 0                                      // 00000000E340: 7EDE0280
	v_mov_b32_e32 v108, 0                                      // 00000000E344: 7ED80280
	v_mov_b32_e32 v112, 0                                      // 00000000E348: 7EE00280
	v_mov_b32_e32 v109, 0                                      // 00000000E34C: 7EDA0280
	v_exp_f32_e32 v84, v84                                     // 00000000E350: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000E354: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000E358: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000E35C: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000E360: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000E364: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000E368: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000E36C: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000E370: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000E374: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000E378: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000E37C: 7E9A414D
	v_exp_f32_e32 v96, v96                                     // 00000000E380: 7EC04160
	v_exp_f32_e32 v97, v97                                     // 00000000E384: 7EC24161
	v_exp_f32_e32 v80, v80                                     // 00000000E388: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000E38C: 7EA24151
	v_cvt_pk_fp8_f32 v106, v82, v83                            // 00000000E390: D2A2006A 0002A752
	v_cvt_pk_fp8_f32 v110, v66, v67                            // 00000000E398: D2A2006E 00028742
	v_cvt_pk_fp8_f32 v107, v86, v87                            // 00000000E3A0: D2A2006B 0002AF56
	v_cvt_pk_fp8_f32 v111, v70, v71                            // 00000000E3A8: D2A2006F 00028F46
	v_cvt_pk_fp8_f32 v108, v90, v91                            // 00000000E3B0: D2A2006C 0002B75A
	v_cvt_pk_fp8_f32 v112, v74, v75                            // 00000000E3B8: D2A20070 0002974A
	v_cvt_pk_fp8_f32 v109, v94, v95                            // 00000000E3C0: D2A2006D 0002BF5E
	v_cvt_pk_fp8_f32 v113, v78, v79                            // 00000000E3C8: D2A20071 00029F4E
	v_cvt_pk_fp8_f32 v106, v84, v85 op_sel:[0,0,1]             // 00000000E3D0: D2A2406A 0002AB54
	v_cvt_pk_fp8_f32 v110, v68, v69 op_sel:[0,0,1]             // 00000000E3D8: D2A2406E 00028B44
	v_cvt_pk_fp8_f32 v107, v88, v89 op_sel:[0,0,1]             // 00000000E3E0: D2A2406B 0002B358
	v_cvt_pk_fp8_f32 v111, v72, v73 op_sel:[0,0,1]             // 00000000E3E8: D2A2406F 00029348
	v_cvt_pk_fp8_f32 v108, v92, v93 op_sel:[0,0,1]             // 00000000E3F0: D2A2406C 0002BB5C
	v_cvt_pk_fp8_f32 v112, v76, v77 op_sel:[0,0,1]             // 00000000E3F8: D2A24070 00029B4C
	v_cvt_pk_fp8_f32 v109, v96, v97 op_sel:[0,0,1]             // 00000000E400: D2A2406D 0002C360
	v_cvt_pk_fp8_f32 v113, v80, v81 op_sel:[0,0,1]             // 00000000E408: D2A24071 0002A350
	s_mov_b32 s24, 0                                           // 00000000E410: BE980080
	s_waitcnt vmcnt(0)                                         // 00000000E414: BF8C0F70
	s_barrier                                                  // 00000000E418: BF8A0000
	s_add_u32 s16, s78, s35                                    // 00000000E41C: 8010234E
	s_and_b32 s35, s16, 3                                      // 00000000E420: 86238310
	s_cmp_lg_u32 s79, 0                                        // 00000000E424: BF07804F
	s_cbranch_scc1 4                                           // 00000000E428: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x413c>
	s_not_b32 s16, s52                                         // 00000000E42C: BE900434
	s_add_u32 s16, s50, s16                                    // 00000000E430: 80101032
	s_cmp_lg_u32 s52, s16                                      // 00000000E434: BF071034
	s_cbranch_scc1 467                                         // 00000000E438: BF8501D3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4888>
	s_add_u32 s2, s2, s13                                      // 00000000E43C: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000E440: BF093102
	s_cbranch_scc1 20                                          // 00000000E444: BF850014 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4198>
	s_lshl_b32 s16, s2, 5                                      // 00000000E448: 8E108502
	s_load_dwordx8 s[52:59], s[46:47], s16 offset:0x0          // 00000000E44C: C00E4D17 20000000
	s_mov_b64 s[18:19], -1                                     // 00000000E454: BE9201C1
	s_branch 461                                               // 00000000E458: BF8201CD <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4890>
	s_mov_b64 s[16:17], s[10:11]                               // 00000000E45C: BE90010A
	s_mov_b64 s[18:19], s[0:1]                                 // 00000000E460: BE920100
	s_mov_b32 s22, s3                                          // 00000000E464: BE960003
	s_mov_b32 s23, 0                                           // 00000000E468: BE970080
	s_branch 446                                               // 00000000E46C: BF8201BE <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4868>
	s_mov_b64 s[16:17], s[10:11]                               // 00000000E470: BE90010A
	s_mov_b64 s[18:19], s[0:1]                                 // 00000000E474: BE920100
	s_mov_b32 s22, s3                                          // 00000000E478: BE960003
	s_mov_b32 s23, 0                                           // 00000000E47C: BE970080
	s_branch 630                                               // 00000000E480: BF820276 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4b5c>
	s_mov_b64 s[16:17], s[10:11]                               // 00000000E484: BE90010A
	s_mov_b64 s[18:19], s[0:1]                                 // 00000000E488: BE920100
	s_mov_b32 s22, s3                                          // 00000000E48C: BE960003
	s_mov_b32 s23, 0                                           // 00000000E490: BE970080
	s_branch 379                                               // 00000000E494: BF82017B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4784>
	s_mov_b64 s[16:17], s[10:11]                               // 00000000E498: BE90010A
	s_mov_b64 s[18:19], s[0:1]                                 // 00000000E49C: BE920100
	s_mov_b32 s22, s3                                          // 00000000E4A0: BE960003
	s_mov_b32 s23, 0                                           // 00000000E4A4: BE970080
	s_branch 563                                               // 00000000E4A8: BF820233 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4a78>
	s_mov_b32 s24, 1                                           // 00000000E4AC: BE980081
	s_mov_b64 s[18:19], 0                                      // 00000000E4B0: BE920180
	s_mov_b32 s17, 0                                           // 00000000E4B4: BE910080
	s_waitcnt lgkmcnt(0)                                       // 00000000E4B8: BF8CC07F
	s_mov_b32 s16, s58                                         // 00000000E4BC: BE90003A
	s_lshl_b64 s[20:21], s[16:17], 7                           // 00000000E4C0: 8E948710
	s_add_u32 s60, s38, s56                                    // 00000000E4C4: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000E4C8: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000E4CC: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000E4D0: 82411529
	s_not_b32 s16, s52                                         // 00000000E4D4: BE900434
	s_add_u32 s16, s50, s16                                    // 00000000E4D8: 80101032
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000E4DC: 86927E12
	s_cselect_b32 s20, s16, s52                                // 00000000E4E0: 85143410
	s_lshl_b32 s16, s20, 5                                     // 00000000E4E4: 8E108514
	s_add_u32 s16, s16, 32                                     // 00000000E4E8: 8010A010
	s_mul_i32 s16, s16, s51                                    // 00000000E4EC: 92103310
	s_add_u32 s16, s16, 32                                     // 00000000E4F0: 8010A010
	s_lshr_b32 s16, s16, 6                                     // 00000000E4F4: 8F108610
	s_min_u32 s78, s12, s16                                    // 00000000E4F8: 83CE100C
	s_mov_b32 s63, 0x110000                                    // 00000000E4FC: BEBF00FF 00110000
	s_mov_b32 s23, 1                                           // 00000000E504: BE970081
	s_and_b64 s[18:19], s[68:69], exec                         // 00000000E508: 86927E44
	s_cbranch_scc0 61                                          // 00000000E50C: BF84003D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4304>
	s_lshl_b32 s16, s35, 14                                    // 00000000E510: 8E108E23
	s_or_b32 s26, s72, s16                                     // 00000000E514: 871A1048
	s_add_u32 m0, s26, 0                                       // 00000000E518: 807C801A
	s_lshl_b32 s18, s6, 4                                      // 00000000E51C: 8E128406
	buffer_load_dwordx4 v127, s[60:63], 0 offen lds            // 00000000E520: E05D1000 800F007F
	s_add_u32 m0, s26, 0x1000                                  // 00000000E528: 807CFF1A 00001000
	s_lshl_b32 s19, s6, 5                                      // 00000000E530: 8E138506
	buffer_load_dwordx4 v127, s[60:63], s18 offen lds          // 00000000E534: E05D1000 120F007F
	s_add_u32 m0, s26, 0x2000                                  // 00000000E53C: 807CFF1A 00002000
	s_mul_i32 s21, s6, 48                                      // 00000000E544: 9215B006
	s_lshl_b32 s22, s35, 13                                    // 00000000E548: 8E168D23
	buffer_load_dwordx4 v127, s[60:63], s19 offen lds          // 00000000E54C: E05D1000 130F007F
	s_add_u32 m0, s26, 0x3000                                  // 00000000E554: 807CFF1A 00003000
	s_mov_b32 s67, s63                                         // 00000000E55C: BEC3003F
	s_lshl_b32 s25, s7, 2                                      // 00000000E560: 8E198207
	s_add_u32 s22, s73, s22                                    // 00000000E564: 80161649
	buffer_load_dwordx4 v127, s[60:63], s21 offen lds          // 00000000E568: E05D1000 150F007F
	s_add_u32 m0, s22, 0                                       // 00000000E570: 807C8016
	s_nop 0                                                    // 00000000E574: BF800000
	buffer_load_dwordx4 v129, s[64:67], 0 offen lds            // 00000000E578: E05D1000 80100081
	s_add_u32 m0, s22, 0x1000                                  // 00000000E580: 807CFF16 00001000
	s_cmp_lt_u32 s78, 2                                        // 00000000E588: BF0A824E
	buffer_load_dwordx4 v129, s[64:67], s25 offen lds          // 00000000E58C: E05D1000 19100081
	s_cbranch_scc1 27                                          // 00000000E594: BF85001B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4304>
	s_addk_i32 s16, 0x4000                                     // 00000000E598: B7104000
	s_and_b32 s16, s16, 0xc000                                 // 00000000E59C: 8610FF10 0000C000
	s_or_b32 s16, s72, s16                                     // 00000000E5A4: 87101048
	s_add_u32 m0, s16, 0                                       // 00000000E5A8: 807C8010
	s_mul_i32 s18, s6, 0x50                                    // 00000000E5AC: 9212FF06 00000050
	buffer_load_dwordx4 v127, s[60:63], s74 offen lds          // 00000000E5B4: E05D1000 4A0F007F
	s_add_u32 m0, s16, 0x1000                                  // 00000000E5BC: 807CFF10 00001000
	s_mul_i32 s19, s6, 0x60                                    // 00000000E5C4: 9213FF06 00000060
	s_mul_i32 s21, s6, 0x70                                    // 00000000E5CC: 9215FF06 00000070
	buffer_load_dwordx4 v127, s[60:63], s18 offen lds          // 00000000E5D4: E05D1000 120F007F
	s_add_u32 m0, s16, 0x2000                                  // 00000000E5DC: 807CFF10 00002000
	s_nop 0                                                    // 00000000E5E4: BF800000
	buffer_load_dwordx4 v127, s[60:63], s19 offen lds          // 00000000E5E8: E05D1000 130F007F
	s_add_u32 m0, s16, 0x3000                                  // 00000000E5F0: 807CFF10 00003000
	s_nop 0                                                    // 00000000E5F8: BF800000
	buffer_load_dwordx4 v127, s[60:63], s21 offen lds          // 00000000E5FC: E05D1000 150F007F
	s_mov_b32 s16, s59                                         // 00000000E604: BE90003B
	s_lshl_b64 s[16:17], s[16:17], 8                           // 00000000E608: 8E908810
	s_add_u32 s18, s36, s54                                    // 00000000E60C: 80123624
	s_addc_u32 s19, s37, s55                                   // 00000000E610: 82133725
	s_mul_i32 s22, s20, s51                                    // 00000000E614: 92163314
	s_add_u32 s20, s18, s9                                     // 00000000E618: 80140912
	s_addc_u32 s21, s19, 0                                     // 00000000E61C: 82158013
	s_add_u32 s16, s42, s16                                    // 00000000E620: 8010102A
	s_addc_u32 s17, s43, s17                                   // 00000000E624: 8211112B
	s_add_u32 s16, s16, s76                                    // 00000000E628: 80104C10
	s_addc_u32 s17, s17, 0                                     // 00000000E62C: 82118011
	s_add_u32 s18, s77, s53                                    // 00000000E630: 8012354D
	s_lshl_b32 s18, s18, 2                                     // 00000000E634: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000E638: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000E63C: 821A802D
	s_and_b64 s[18:19], s[14:15], exec                         // 00000000E640: 86927E0E
	s_cselect_b32 s19, 0, s26                                  // 00000000E644: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000E648: 85121980
	s_add_u32 s25, s22, s4                                     // 00000000E64C: 80190416
	s_lshl_b32 s22, s25, 5                                     // 00000000E650: 8E168519
	v_or_b32_e32 v66, s22, v119                                // 00000000E654: 2884EE16
	s_bfe_u32 s48, s25, 0x1a0001                               // 00000000E658: 92B0FF19 001A0001
	v_mul_lo_u32 v66, s5, v66                                  // 00000000E660: D2850042 00028405
	v_add_u32_e32 v66, v130, v66                               // 00000000E668: 68848582
	global_load_dwordx4 v[166:169], v66, s[20:21]              // 00000000E66C: DC5C8000 A6140042
	global_load_dwordx4 v[170:173], v66, s[20:21] offset:16    // 00000000E674: DC5C8010 AA140042
	global_load_dwordx4 v[174:177], v66, s[20:21] offset:64    // 00000000E67C: DC5C8040 AE140042
	global_load_dwordx4 v[178:181], v66, s[20:21] offset:80    // 00000000E684: DC5C8050 B2140042
	global_load_dwordx4 v[182:185], v66, s[20:21] offset:128   // 00000000E68C: DC5C8080 B6140042
	global_load_dwordx4 v[186:189], v66, s[20:21] offset:144   // 00000000E694: DC5C8090 BA140042
	s_branch 306                                               // 00000000E69C: BF820132 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4868>
	s_mov_b32 s24, 1                                           // 00000000E6A0: BE980081
	s_mov_b64 s[18:19], 0                                      // 00000000E6A4: BE920180
	s_mov_b32 s17, 0                                           // 00000000E6A8: BE910080
	s_waitcnt lgkmcnt(0)                                       // 00000000E6AC: BF8CC07F
	s_mov_b32 s16, s58                                         // 00000000E6B0: BE90003A
	s_lshl_b64 s[20:21], s[16:17], 7                           // 00000000E6B4: 8E948710
	s_add_u32 s60, s38, s56                                    // 00000000E6B8: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000E6BC: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000E6C0: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000E6C4: 82411529
	s_not_b32 s16, s52                                         // 00000000E6C8: BE900434
	s_add_u32 s16, s50, s16                                    // 00000000E6CC: 80101032
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000E6D0: 86927E12
	s_cselect_b32 s20, s16, s52                                // 00000000E6D4: 85143410
	s_lshl_b32 s16, s20, 5                                     // 00000000E6D8: 8E108514
	s_add_u32 s16, s16, 32                                     // 00000000E6DC: 8010A010
	s_mul_i32 s16, s16, s51                                    // 00000000E6E0: 92103310
	s_add_u32 s16, s16, 32                                     // 00000000E6E4: 8010A010
	s_lshr_b32 s16, s16, 6                                     // 00000000E6E8: 8F108610
	s_min_u32 s78, s12, s16                                    // 00000000E6EC: 83CE100C
	s_mov_b32 s63, 0x110000                                    // 00000000E6F0: BEBF00FF 00110000
	s_mov_b32 s23, 1                                           // 00000000E6F8: BE970081
	s_and_b64 s[18:19], s[68:69], exec                         // 00000000E6FC: 86927E44
	s_cbranch_scc0 61                                          // 00000000E700: BF84003D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x44f8>
	s_lshl_b32 s16, s35, 14                                    // 00000000E704: 8E108E23
	s_or_b32 s26, s72, s16                                     // 00000000E708: 871A1048
	s_add_u32 m0, s26, 0                                       // 00000000E70C: 807C801A
	s_lshl_b32 s18, s6, 4                                      // 00000000E710: 8E128406
	buffer_load_dwordx4 v127, s[60:63], 0 offen lds            // 00000000E714: E05D1000 800F007F
	s_add_u32 m0, s26, 0x1000                                  // 00000000E71C: 807CFF1A 00001000
	s_lshl_b32 s19, s6, 5                                      // 00000000E724: 8E138506
	buffer_load_dwordx4 v127, s[60:63], s18 offen lds          // 00000000E728: E05D1000 120F007F
	s_add_u32 m0, s26, 0x2000                                  // 00000000E730: 807CFF1A 00002000
	s_mul_i32 s21, s6, 48                                      // 00000000E738: 9215B006
	s_lshl_b32 s22, s35, 13                                    // 00000000E73C: 8E168D23
	buffer_load_dwordx4 v127, s[60:63], s19 offen lds          // 00000000E740: E05D1000 130F007F
	s_add_u32 m0, s26, 0x3000                                  // 00000000E748: 807CFF1A 00003000
	s_mov_b32 s67, s63                                         // 00000000E750: BEC3003F
	s_lshl_b32 s25, s7, 2                                      // 00000000E754: 8E198207
	s_add_u32 s22, s73, s22                                    // 00000000E758: 80161649
	buffer_load_dwordx4 v127, s[60:63], s21 offen lds          // 00000000E75C: E05D1000 150F007F
	s_add_u32 m0, s22, 0                                       // 00000000E764: 807C8016
	s_nop 0                                                    // 00000000E768: BF800000
	buffer_load_dwordx4 v129, s[64:67], 0 offen lds            // 00000000E76C: E05D1000 80100081
	s_add_u32 m0, s22, 0x1000                                  // 00000000E774: 807CFF16 00001000
	s_cmp_lt_u32 s78, 2                                        // 00000000E77C: BF0A824E
	buffer_load_dwordx4 v129, s[64:67], s25 offen lds          // 00000000E780: E05D1000 19100081
	s_cbranch_scc1 27                                          // 00000000E788: BF85001B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x44f8>
	s_addk_i32 s16, 0x4000                                     // 00000000E78C: B7104000
	s_and_b32 s16, s16, 0xc000                                 // 00000000E790: 8610FF10 0000C000
	s_or_b32 s16, s72, s16                                     // 00000000E798: 87101048
	s_add_u32 m0, s16, 0                                       // 00000000E79C: 807C8010
	s_mul_i32 s18, s6, 0x50                                    // 00000000E7A0: 9212FF06 00000050
	buffer_load_dwordx4 v127, s[60:63], s74 offen lds          // 00000000E7A8: E05D1000 4A0F007F
	s_add_u32 m0, s16, 0x1000                                  // 00000000E7B0: 807CFF10 00001000
	s_mul_i32 s19, s6, 0x60                                    // 00000000E7B8: 9213FF06 00000060
	s_mul_i32 s21, s6, 0x70                                    // 00000000E7C0: 9215FF06 00000070
	buffer_load_dwordx4 v127, s[60:63], s18 offen lds          // 00000000E7C8: E05D1000 120F007F
	s_add_u32 m0, s16, 0x2000                                  // 00000000E7D0: 807CFF10 00002000
	s_nop 0                                                    // 00000000E7D8: BF800000
	buffer_load_dwordx4 v127, s[60:63], s19 offen lds          // 00000000E7DC: E05D1000 130F007F
	s_add_u32 m0, s16, 0x3000                                  // 00000000E7E4: 807CFF10 00003000
	s_nop 0                                                    // 00000000E7EC: BF800000
	buffer_load_dwordx4 v127, s[60:63], s21 offen lds          // 00000000E7F0: E05D1000 150F007F
	s_mov_b32 s16, s59                                         // 00000000E7F8: BE90003B
	s_lshl_b64 s[16:17], s[16:17], 8                           // 00000000E7FC: 8E908810
	s_add_u32 s18, s36, s54                                    // 00000000E800: 80123624
	s_addc_u32 s19, s37, s55                                   // 00000000E804: 82133725
	s_mul_i32 s22, s20, s51                                    // 00000000E808: 92163314
	s_add_u32 s20, s18, s9                                     // 00000000E80C: 80140912
	s_addc_u32 s21, s19, 0                                     // 00000000E810: 82158013
	s_add_u32 s16, s42, s16                                    // 00000000E814: 8010102A
	s_addc_u32 s17, s43, s17                                   // 00000000E818: 8211112B
	s_add_u32 s16, s16, s76                                    // 00000000E81C: 80104C10
	s_addc_u32 s17, s17, 0                                     // 00000000E820: 82118011
	s_add_u32 s18, s77, s53                                    // 00000000E824: 8012354D
	s_lshl_b32 s18, s18, 2                                     // 00000000E828: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000E82C: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000E830: 821A802D
	s_and_b64 s[18:19], s[14:15], exec                         // 00000000E834: 86927E0E
	s_cselect_b32 s19, 0, s26                                  // 00000000E838: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000E83C: 85121980
	s_add_u32 s25, s22, s4                                     // 00000000E840: 80190416
	s_lshl_b32 s22, s25, 5                                     // 00000000E844: 8E168519
	v_or_b32_e32 v66, s22, v119                                // 00000000E848: 2884EE16
	s_bfe_u32 s48, s25, 0x1a0001                               // 00000000E84C: 92B0FF19 001A0001
	v_mul_lo_u32 v66, s5, v66                                  // 00000000E854: D2850042 00028405
	v_add_u32_e32 v66, v130, v66                               // 00000000E85C: 68848582
	global_load_dwordx4 v[166:169], v66, s[20:21]              // 00000000E860: DC5C8000 A6140042
	global_load_dwordx4 v[170:173], v66, s[20:21] offset:16    // 00000000E868: DC5C8010 AA140042
	global_load_dwordx4 v[174:177], v66, s[20:21] offset:64    // 00000000E870: DC5C8040 AE140042
	global_load_dwordx4 v[178:181], v66, s[20:21] offset:80    // 00000000E878: DC5C8050 B2140042
	global_load_dwordx4 v[182:185], v66, s[20:21] offset:128   // 00000000E880: DC5C8080 B6140042
	global_load_dwordx4 v[186:189], v66, s[20:21] offset:144   // 00000000E888: DC5C8090 BA140042
	s_branch 370                                               // 00000000E890: BF820172 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4b5c>
	s_mov_b32 s24, 1                                           // 00000000E894: BE980081
	s_mov_b64 s[18:19], 0                                      // 00000000E898: BE920180
	s_mov_b32 s17, 0                                           // 00000000E89C: BE910080
	s_waitcnt lgkmcnt(0)                                       // 00000000E8A0: BF8CC07F
	s_mov_b32 s16, s58                                         // 00000000E8A4: BE90003A
	s_lshl_b64 s[20:21], s[16:17], 7                           // 00000000E8A8: 8E948710
	s_add_u32 s60, s38, s56                                    // 00000000E8AC: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000E8B0: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000E8B4: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000E8B8: 82411529
	s_not_b32 s16, s52                                         // 00000000E8BC: BE900434
	s_add_u32 s16, s50, s16                                    // 00000000E8C0: 80101032
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000E8C4: 86927E12
	s_cselect_b32 s20, s16, s52                                // 00000000E8C8: 85143410
	s_lshl_b32 s16, s20, 5                                     // 00000000E8CC: 8E108514
	s_add_u32 s16, s16, 32                                     // 00000000E8D0: 8010A010
	s_mul_i32 s16, s16, s51                                    // 00000000E8D4: 92103310
	s_add_u32 s16, s16, 32                                     // 00000000E8D8: 8010A010
	s_lshr_b32 s16, s16, 6                                     // 00000000E8DC: 8F108610
	s_min_u32 s78, s12, s16                                    // 00000000E8E0: 83CE100C
	s_mov_b32 s63, 0x110000                                    // 00000000E8E4: BEBF00FF 00110000
	s_mov_b32 s23, 1                                           // 00000000E8EC: BE970081
	s_and_b64 s[18:19], s[68:69], exec                         // 00000000E8F0: 86927E44
	s_cbranch_scc0 61                                          // 00000000E8F4: BF84003D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x46ec>
	s_lshl_b32 s16, s35, 14                                    // 00000000E8F8: 8E108E23
	s_or_b32 s26, s72, s16                                     // 00000000E8FC: 871A1048
	s_add_u32 m0, s26, 0                                       // 00000000E900: 807C801A
	s_lshl_b32 s18, s6, 4                                      // 00000000E904: 8E128406
	buffer_load_dwordx4 v127, s[60:63], 0 offen lds            // 00000000E908: E05D1000 800F007F
	s_add_u32 m0, s26, 0x1000                                  // 00000000E910: 807CFF1A 00001000
	s_lshl_b32 s19, s6, 5                                      // 00000000E918: 8E138506
	buffer_load_dwordx4 v127, s[60:63], s18 offen lds          // 00000000E91C: E05D1000 120F007F
	s_add_u32 m0, s26, 0x2000                                  // 00000000E924: 807CFF1A 00002000
	s_mul_i32 s21, s6, 48                                      // 00000000E92C: 9215B006
	s_lshl_b32 s22, s35, 13                                    // 00000000E930: 8E168D23
	buffer_load_dwordx4 v127, s[60:63], s19 offen lds          // 00000000E934: E05D1000 130F007F
	s_add_u32 m0, s26, 0x3000                                  // 00000000E93C: 807CFF1A 00003000
	s_mov_b32 s67, s63                                         // 00000000E944: BEC3003F
	s_lshl_b32 s25, s7, 2                                      // 00000000E948: 8E198207
	s_add_u32 s22, s73, s22                                    // 00000000E94C: 80161649
	buffer_load_dwordx4 v127, s[60:63], s21 offen lds          // 00000000E950: E05D1000 150F007F
	s_add_u32 m0, s22, 0                                       // 00000000E958: 807C8016
	s_nop 0                                                    // 00000000E95C: BF800000
	buffer_load_dwordx4 v129, s[64:67], 0 offen lds            // 00000000E960: E05D1000 80100081
	s_add_u32 m0, s22, 0x1000                                  // 00000000E968: 807CFF16 00001000
	s_cmp_lt_u32 s78, 2                                        // 00000000E970: BF0A824E
	buffer_load_dwordx4 v129, s[64:67], s25 offen lds          // 00000000E974: E05D1000 19100081
	s_cbranch_scc1 27                                          // 00000000E97C: BF85001B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x46ec>
	s_addk_i32 s16, 0x4000                                     // 00000000E980: B7104000
	s_and_b32 s16, s16, 0xc000                                 // 00000000E984: 8610FF10 0000C000
	s_or_b32 s16, s72, s16                                     // 00000000E98C: 87101048
	s_add_u32 m0, s16, 0                                       // 00000000E990: 807C8010
	s_mul_i32 s18, s6, 0x50                                    // 00000000E994: 9212FF06 00000050
	buffer_load_dwordx4 v127, s[60:63], s74 offen lds          // 00000000E99C: E05D1000 4A0F007F
	s_add_u32 m0, s16, 0x1000                                  // 00000000E9A4: 807CFF10 00001000
	s_mul_i32 s19, s6, 0x60                                    // 00000000E9AC: 9213FF06 00000060
	s_mul_i32 s21, s6, 0x70                                    // 00000000E9B4: 9215FF06 00000070
	buffer_load_dwordx4 v127, s[60:63], s18 offen lds          // 00000000E9BC: E05D1000 120F007F
	s_add_u32 m0, s16, 0x2000                                  // 00000000E9C4: 807CFF10 00002000
	s_nop 0                                                    // 00000000E9CC: BF800000
	buffer_load_dwordx4 v127, s[60:63], s19 offen lds          // 00000000E9D0: E05D1000 130F007F
	s_add_u32 m0, s16, 0x3000                                  // 00000000E9D8: 807CFF10 00003000
	s_nop 0                                                    // 00000000E9E0: BF800000
	buffer_load_dwordx4 v127, s[60:63], s21 offen lds          // 00000000E9E4: E05D1000 150F007F
	s_mov_b32 s16, s59                                         // 00000000E9EC: BE90003B
	s_lshl_b64 s[16:17], s[16:17], 8                           // 00000000E9F0: 8E908810
	s_add_u32 s18, s36, s54                                    // 00000000E9F4: 80123624
	s_addc_u32 s19, s37, s55                                   // 00000000E9F8: 82133725
	s_mul_i32 s22, s20, s51                                    // 00000000E9FC: 92163314
	s_add_u32 s20, s18, s9                                     // 00000000EA00: 80140912
	s_addc_u32 s21, s19, 0                                     // 00000000EA04: 82158013
	s_add_u32 s16, s42, s16                                    // 00000000EA08: 8010102A
	s_addc_u32 s17, s43, s17                                   // 00000000EA0C: 8211112B
	s_add_u32 s16, s16, s76                                    // 00000000EA10: 80104C10
	s_addc_u32 s17, s17, 0                                     // 00000000EA14: 82118011
	s_add_u32 s18, s77, s53                                    // 00000000EA18: 8012354D
	s_lshl_b32 s18, s18, 2                                     // 00000000EA1C: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000EA20: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000EA24: 821A802D
	s_and_b64 s[18:19], s[14:15], exec                         // 00000000EA28: 86927E0E
	s_cselect_b32 s19, 0, s26                                  // 00000000EA2C: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000EA30: 85121980
	s_add_u32 s25, s22, s4                                     // 00000000EA34: 80190416
	s_lshl_b32 s22, s25, 5                                     // 00000000EA38: 8E168519
	v_or_b32_e32 v66, s22, v119                                // 00000000EA3C: 2884EE16
	s_bfe_u32 s48, s25, 0x1a0001                               // 00000000EA40: 92B0FF19 001A0001
	v_mul_lo_u32 v66, s5, v66                                  // 00000000EA48: D2850042 00028405
	v_add_u32_e32 v66, v130, v66                               // 00000000EA50: 68848582
	global_load_dwordx4 v[166:169], v66, s[20:21]              // 00000000EA54: DC5C8000 A6140042
	global_load_dwordx4 v[170:173], v66, s[20:21] offset:16    // 00000000EA5C: DC5C8010 AA140042
	global_load_dwordx4 v[174:177], v66, s[20:21] offset:64    // 00000000EA64: DC5C8040 AE140042
	global_load_dwordx4 v[178:181], v66, s[20:21] offset:80    // 00000000EA6C: DC5C8050 B2140042
	global_load_dwordx4 v[182:185], v66, s[20:21] offset:128   // 00000000EA74: DC5C8080 B6140042
	global_load_dwordx4 v[186:189], v66, s[20:21] offset:144   // 00000000EA7C: DC5C8090 BA140042
	s_setprio 1                                                // 00000000EA84: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[98:105], v[106:113], 0// 00000000EA88: D3AD0042 0202D562
	s_nop 11                                                   // 00000000EA90: BF80000B
	ds_read_b64_tr_b8 v[68:69], v114                           // 00000000EA94: D9C40000 44000072
	ds_read_b64_tr_b8 v[70:71], v114 offset:1024               // 00000000EA9C: D9C40400 46000072
	ds_read_b64_tr_b8 v[72:73], v114 offset:2048               // 00000000EAA4: D9C40800 48000072
	ds_read_b64_tr_b8 v[74:75], v114 offset:3072               // 00000000EAAC: D9C40C00 4A000072
	ds_read_b64_tr_b8 v[76:77], v114 offset:256                // 00000000EAB4: D9C40100 4C000072
	ds_read_b64_tr_b8 v[78:79], v114 offset:1280               // 00000000EABC: D9C40500 4E000072
	ds_read_b64_tr_b8 v[80:81], v114 offset:2304               // 00000000EAC4: D9C40900 50000072
	ds_read_b64_tr_b8 v[82:83], v114 offset:3328               // 00000000EACC: D9C40D00 52000072
	ds_read_b64_tr_b8 v[84:85], v114 offset:512                // 00000000EAD4: D9C40200 54000072
	ds_read_b64_tr_b8 v[86:87], v114 offset:1536               // 00000000EADC: D9C40600 56000072
	ds_read_b64_tr_b8 v[88:89], v114 offset:2560               // 00000000EAE4: D9C40A00 58000072
	ds_read_b64_tr_b8 v[90:91], v114 offset:3584               // 00000000EAEC: D9C40E00 5A000072
	v_lshlrev_b32_e32 v67, 23, v136                            // 00000000EAF4: 24871097
	v_fma_f32 v135, v66, v67, v135                             // 00000000EAF8: D1CB0087 061E8742
	s_waitcnt lgkmcnt(4)                                       // 00000000EB00: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[68:75], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000EB04: D3AC0000 0003117D D3AE0832 04CAD544
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[76:83], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000EB14: D3AC0000 0003117D D3AE0822 048AD54C
	ds_read_b64_tr_b8 v[66:67], v114 offset:768                // 00000000EB24: D9C40300 42000072
	ds_read_b64_tr_b8 v[68:69], v114 offset:1792               // 00000000EB2C: D9C40700 44000072
	ds_read_b64_tr_b8 v[70:71], v114 offset:2816               // 00000000EB34: D9C40B00 46000072
	ds_read_b64_tr_b8 v[72:73], v114 offset:3840               // 00000000EB3C: D9C40F00 48000072
	s_waitcnt lgkmcnt(0)                                       // 00000000EB44: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[84:91], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000EB48: D3AC0000 0003117D D3AE0812 044AD554
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[66:73], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000EB58: D3AC0000 0003117D D3AE0802 040AD542
	s_waitcnt vmcnt(6)                                         // 00000000EB68: BF8C0F76
	s_barrier                                                  // 00000000EB6C: BF8A0000
	s_mov_b32 s79, s24                                         // 00000000EB70: BECF0018
	s_cmp_eq_u32 s23, 0                                        // 00000000EB74: BF068017
	v_and_b32_e32 v66, 15, v0                                  // 00000000EB78: 2684008F
	v_lshrrev_b32_e32 v67, 4, v1                               // 00000000EB7C: 20860284
	s_cbranch_scc0 189                                         // 00000000EB80: BF8400BD <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4b78>
	s_branch 481                                               // 00000000EB84: BF8201E1 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x500c>
	s_mov_b32 s24, 1                                           // 00000000EB88: BE980081
	s_mov_b64 s[18:19], 0                                      // 00000000EB8C: BE920180
	s_mov_b32 s17, 0                                           // 00000000EB90: BE910080
	s_waitcnt lgkmcnt(0)                                       // 00000000EB94: BF8CC07F
	s_mov_b32 s16, s58                                         // 00000000EB98: BE90003A
	s_lshl_b64 s[20:21], s[16:17], 7                           // 00000000EB9C: 8E948710
	s_add_u32 s60, s38, s56                                    // 00000000EBA0: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000EBA4: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000EBA8: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000EBAC: 82411529
	s_not_b32 s16, s52                                         // 00000000EBB0: BE900434
	s_add_u32 s16, s50, s16                                    // 00000000EBB4: 80101032
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000EBB8: 86927E12
	s_cselect_b32 s20, s16, s52                                // 00000000EBBC: 85143410
	s_lshl_b32 s16, s20, 5                                     // 00000000EBC0: 8E108514
	s_add_u32 s16, s16, 32                                     // 00000000EBC4: 8010A010
	s_mul_i32 s16, s16, s51                                    // 00000000EBC8: 92103310
	s_add_u32 s16, s16, 32                                     // 00000000EBCC: 8010A010
	s_lshr_b32 s16, s16, 6                                     // 00000000EBD0: 8F108610
	s_min_u32 s78, s12, s16                                    // 00000000EBD4: 83CE100C
	s_mov_b32 s63, 0x110000                                    // 00000000EBD8: BEBF00FF 00110000
	s_mov_b32 s23, 1                                           // 00000000EBE0: BE970081
	s_and_b64 s[18:19], s[68:69], exec                         // 00000000EBE4: 86927E44
	s_cbranch_scc0 61                                          // 00000000EBE8: BF84003D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x49e0>
	s_lshl_b32 s16, s35, 14                                    // 00000000EBEC: 8E108E23
	s_or_b32 s26, s72, s16                                     // 00000000EBF0: 871A1048
	s_add_u32 m0, s26, 0                                       // 00000000EBF4: 807C801A
	s_lshl_b32 s18, s6, 4                                      // 00000000EBF8: 8E128406
	buffer_load_dwordx4 v127, s[60:63], 0 offen lds            // 00000000EBFC: E05D1000 800F007F
	s_add_u32 m0, s26, 0x1000                                  // 00000000EC04: 807CFF1A 00001000
	s_lshl_b32 s19, s6, 5                                      // 00000000EC0C: 8E138506
	buffer_load_dwordx4 v127, s[60:63], s18 offen lds          // 00000000EC10: E05D1000 120F007F
	s_add_u32 m0, s26, 0x2000                                  // 00000000EC18: 807CFF1A 00002000
	s_mul_i32 s21, s6, 48                                      // 00000000EC20: 9215B006
	s_lshl_b32 s22, s35, 13                                    // 00000000EC24: 8E168D23
	buffer_load_dwordx4 v127, s[60:63], s19 offen lds          // 00000000EC28: E05D1000 130F007F
	s_add_u32 m0, s26, 0x3000                                  // 00000000EC30: 807CFF1A 00003000
	s_mov_b32 s67, s63                                         // 00000000EC38: BEC3003F
	s_lshl_b32 s25, s7, 2                                      // 00000000EC3C: 8E198207
	s_add_u32 s22, s73, s22                                    // 00000000EC40: 80161649
	buffer_load_dwordx4 v127, s[60:63], s21 offen lds          // 00000000EC44: E05D1000 150F007F
	s_add_u32 m0, s22, 0                                       // 00000000EC4C: 807C8016
	s_nop 0                                                    // 00000000EC50: BF800000
	buffer_load_dwordx4 v129, s[64:67], 0 offen lds            // 00000000EC54: E05D1000 80100081
	s_add_u32 m0, s22, 0x1000                                  // 00000000EC5C: 807CFF16 00001000
	s_cmp_lt_u32 s78, 2                                        // 00000000EC64: BF0A824E
	buffer_load_dwordx4 v129, s[64:67], s25 offen lds          // 00000000EC68: E05D1000 19100081
	s_cbranch_scc1 27                                          // 00000000EC70: BF85001B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x49e0>
	s_addk_i32 s16, 0x4000                                     // 00000000EC74: B7104000
	s_and_b32 s16, s16, 0xc000                                 // 00000000EC78: 8610FF10 0000C000
	s_or_b32 s16, s72, s16                                     // 00000000EC80: 87101048
	s_add_u32 m0, s16, 0                                       // 00000000EC84: 807C8010
	s_mul_i32 s18, s6, 0x50                                    // 00000000EC88: 9212FF06 00000050
	buffer_load_dwordx4 v127, s[60:63], s74 offen lds          // 00000000EC90: E05D1000 4A0F007F
	s_add_u32 m0, s16, 0x1000                                  // 00000000EC98: 807CFF10 00001000
	s_mul_i32 s19, s6, 0x60                                    // 00000000ECA0: 9213FF06 00000060
	s_mul_i32 s21, s6, 0x70                                    // 00000000ECA8: 9215FF06 00000070
	buffer_load_dwordx4 v127, s[60:63], s18 offen lds          // 00000000ECB0: E05D1000 120F007F
	s_add_u32 m0, s16, 0x2000                                  // 00000000ECB8: 807CFF10 00002000
	s_nop 0                                                    // 00000000ECC0: BF800000
	buffer_load_dwordx4 v127, s[60:63], s19 offen lds          // 00000000ECC4: E05D1000 130F007F
	s_add_u32 m0, s16, 0x3000                                  // 00000000ECCC: 807CFF10 00003000
	s_nop 0                                                    // 00000000ECD4: BF800000
	buffer_load_dwordx4 v127, s[60:63], s21 offen lds          // 00000000ECD8: E05D1000 150F007F
	s_mov_b32 s16, s59                                         // 00000000ECE0: BE90003B
	s_lshl_b64 s[16:17], s[16:17], 8                           // 00000000ECE4: 8E908810
	s_add_u32 s18, s36, s54                                    // 00000000ECE8: 80123624
	s_addc_u32 s19, s37, s55                                   // 00000000ECEC: 82133725
	s_mul_i32 s22, s20, s51                                    // 00000000ECF0: 92163314
	s_add_u32 s20, s18, s9                                     // 00000000ECF4: 80140912
	s_addc_u32 s21, s19, 0                                     // 00000000ECF8: 82158013
	s_add_u32 s16, s42, s16                                    // 00000000ECFC: 8010102A
	s_addc_u32 s17, s43, s17                                   // 00000000ED00: 8211112B
	s_add_u32 s16, s16, s76                                    // 00000000ED04: 80104C10
	s_addc_u32 s17, s17, 0                                     // 00000000ED08: 82118011
	s_add_u32 s18, s77, s53                                    // 00000000ED0C: 8012354D
	s_lshl_b32 s18, s18, 2                                     // 00000000ED10: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000ED14: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000ED18: 821A802D
	s_and_b64 s[18:19], s[14:15], exec                         // 00000000ED1C: 86927E0E
	s_cselect_b32 s19, 0, s26                                  // 00000000ED20: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000ED24: 85121980
	s_add_u32 s25, s22, s4                                     // 00000000ED28: 80190416
	s_lshl_b32 s22, s25, 5                                     // 00000000ED2C: 8E168519
	v_or_b32_e32 v66, s22, v119                                // 00000000ED30: 2884EE16
	s_bfe_u32 s48, s25, 0x1a0001                               // 00000000ED34: 92B0FF19 001A0001
	v_mul_lo_u32 v66, s5, v66                                  // 00000000ED3C: D2850042 00028405
	v_add_u32_e32 v66, v130, v66                               // 00000000ED44: 68848582
	global_load_dwordx4 v[166:169], v66, s[20:21]              // 00000000ED48: DC5C8000 A6140042
	global_load_dwordx4 v[170:173], v66, s[20:21] offset:16    // 00000000ED50: DC5C8010 AA140042
	global_load_dwordx4 v[174:177], v66, s[20:21] offset:64    // 00000000ED58: DC5C8040 AE140042
	global_load_dwordx4 v[178:181], v66, s[20:21] offset:80    // 00000000ED60: DC5C8050 B2140042
	global_load_dwordx4 v[182:185], v66, s[20:21] offset:128   // 00000000ED68: DC5C8080 B6140042
	global_load_dwordx4 v[186:189], v66, s[20:21] offset:144   // 00000000ED70: DC5C8090 BA140042
	s_setprio 1                                                // 00000000ED78: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[98:105], v[106:113], 0// 00000000ED7C: D3AD0042 0202D562
	s_nop 11                                                   // 00000000ED84: BF80000B
	ds_read_b64_tr_b8 v[68:69], v114                           // 00000000ED88: D9C40000 44000072
	ds_read_b64_tr_b8 v[70:71], v114 offset:1024               // 00000000ED90: D9C40400 46000072
	ds_read_b64_tr_b8 v[72:73], v114 offset:2048               // 00000000ED98: D9C40800 48000072
	ds_read_b64_tr_b8 v[74:75], v114 offset:3072               // 00000000EDA0: D9C40C00 4A000072
	ds_read_b64_tr_b8 v[76:77], v114 offset:256                // 00000000EDA8: D9C40100 4C000072
	ds_read_b64_tr_b8 v[78:79], v114 offset:1280               // 00000000EDB0: D9C40500 4E000072
	ds_read_b64_tr_b8 v[80:81], v114 offset:2304               // 00000000EDB8: D9C40900 50000072
	ds_read_b64_tr_b8 v[82:83], v114 offset:3328               // 00000000EDC0: D9C40D00 52000072
	ds_read_b64_tr_b8 v[84:85], v114 offset:512                // 00000000EDC8: D9C40200 54000072
	ds_read_b64_tr_b8 v[86:87], v114 offset:1536               // 00000000EDD0: D9C40600 56000072
	ds_read_b64_tr_b8 v[88:89], v114 offset:2560               // 00000000EDD8: D9C40A00 58000072
	ds_read_b64_tr_b8 v[90:91], v114 offset:3584               // 00000000EDE0: D9C40E00 5A000072
	v_lshlrev_b32_e32 v67, 23, v136                            // 00000000EDE8: 24871097
	v_fma_f32 v135, v66, v67, v135                             // 00000000EDEC: D1CB0087 061E8742
	s_waitcnt lgkmcnt(4)                                       // 00000000EDF4: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[68:75], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000EDF8: D3AC0000 0003117D D3AE0832 04CAD544
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[76:83], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000EE08: D3AC0000 0003117D D3AE0822 048AD54C
	ds_read_b64_tr_b8 v[66:67], v114 offset:768                // 00000000EE18: D9C40300 42000072
	ds_read_b64_tr_b8 v[68:69], v114 offset:1792               // 00000000EE20: D9C40700 44000072
	ds_read_b64_tr_b8 v[70:71], v114 offset:2816               // 00000000EE28: D9C40B00 46000072
	ds_read_b64_tr_b8 v[72:73], v114 offset:3840               // 00000000EE30: D9C40F00 48000072
	s_waitcnt lgkmcnt(0)                                       // 00000000EE38: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[84:91], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000EE3C: D3AC0000 0003117D D3AE0812 044AD554
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[66:73], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000EE4C: D3AC0000 0003117D D3AE0802 040AD542
	s_waitcnt vmcnt(6)                                         // 00000000EE5C: BF8C0F76
	s_barrier                                                  // 00000000EE60: BF8A0000
	s_mov_b32 s79, s24                                         // 00000000EE64: BECF0018
	s_cmp_eq_u32 s23, 0                                        // 00000000EE68: BF068017
	v_and_b32_e32 v66, 15, v0                                  // 00000000EE6C: 2684008F
	v_lshrrev_b32_e32 v67, 4, v1                               // 00000000EE70: 20860284
	s_cbranch_scc1 293                                         // 00000000EE74: BF850125 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x500c>
	s_nop 15                                                   // 00000000EE78: BF80000F
	s_nop 3                                                    // 00000000EE7C: BF800003
	v_rcp_f32_e32 v68, v135                                    // 00000000EE80: 7E884587
	v_log_f32_e32 v69, v135                                    // 00000000EE84: 7E8A4387
	s_nop 1                                                    // 00000000EE88: BF800001
	v_mul_f32_e32 v68, v132, v68                               // 00000000EE8C: 0A888984
	v_mul_f32_e32 v50, v50, v68                                // 00000000EE90: 0A648932
	v_mul_f32_e32 v51, v51, v68                                // 00000000EE94: 0A668933
	v_mul_f32_e32 v52, v52, v68                                // 00000000EE98: 0A688934
	v_mul_f32_e32 v53, v53, v68                                // 00000000EE9C: 0A6A8935
	v_mul_f32_e32 v54, v54, v68                                // 00000000EEA0: 0A6C8936
	v_mul_f32_e32 v55, v55, v68                                // 00000000EEA4: 0A6E8937
	v_mul_f32_e32 v56, v56, v68                                // 00000000EEA8: 0A708938
	v_mul_f32_e32 v57, v57, v68                                // 00000000EEAC: 0A728939
	v_mul_f32_e32 v58, v58, v68                                // 00000000EEB0: 0A74893A
	v_mul_f32_e32 v59, v59, v68                                // 00000000EEB4: 0A76893B
	v_mul_f32_e32 v60, v60, v68                                // 00000000EEB8: 0A78893C
	v_mul_f32_e32 v61, v61, v68                                // 00000000EEBC: 0A7A893D
	v_mul_f32_e32 v62, v62, v68                                // 00000000EEC0: 0A7C893E
	v_mul_f32_e32 v63, v63, v68                                // 00000000EEC4: 0A7E893F
	v_mul_f32_e32 v64, v64, v68                                // 00000000EEC8: 0A808940
	v_mul_f32_e32 v65, v65, v68                                // 00000000EECC: 0A828941
	v_mul_f32_e32 v34, v34, v68                                // 00000000EED0: 0A448922
	v_mul_f32_e32 v35, v35, v68                                // 00000000EED4: 0A468923
	v_mul_f32_e32 v36, v36, v68                                // 00000000EED8: 0A488924
	v_mul_f32_e32 v37, v37, v68                                // 00000000EEDC: 0A4A8925
	v_mul_f32_e32 v38, v38, v68                                // 00000000EEE0: 0A4C8926
	v_mul_f32_e32 v39, v39, v68                                // 00000000EEE4: 0A4E8927
	v_mul_f32_e32 v40, v40, v68                                // 00000000EEE8: 0A508928
	v_mul_f32_e32 v41, v41, v68                                // 00000000EEEC: 0A528929
	v_mul_f32_e32 v42, v42, v68                                // 00000000EEF0: 0A54892A
	v_mul_f32_e32 v43, v43, v68                                // 00000000EEF4: 0A56892B
	v_mul_f32_e32 v44, v44, v68                                // 00000000EEF8: 0A58892C
	v_mul_f32_e32 v45, v45, v68                                // 00000000EEFC: 0A5A892D
	v_mul_f32_e32 v46, v46, v68                                // 00000000EF00: 0A5C892E
	v_mul_f32_e32 v47, v47, v68                                // 00000000EF04: 0A5E892F
	v_mul_f32_e32 v48, v48, v68                                // 00000000EF08: 0A608930
	v_mul_f32_e32 v49, v49, v68                                // 00000000EF0C: 0A628931
	v_mul_f32_e32 v70, v18, v68                                // 00000000EF10: 0A8C8912
	v_mul_f32_e32 v71, v19, v68                                // 00000000EF14: 0A8E8913
	v_mul_f32_e32 v20, v20, v68                                // 00000000EF18: 0A288914
	v_mul_f32_e32 v21, v21, v68                                // 00000000EF1C: 0A2A8915
	v_mul_f32_e32 v72, v22, v68                                // 00000000EF20: 0A908916
	v_mul_f32_e32 v23, v23, v68                                // 00000000EF24: 0A2E8917
	v_mul_f32_e32 v24, v24, v68                                // 00000000EF28: 0A308918
	v_mul_f32_e32 v25, v25, v68                                // 00000000EF2C: 0A328919
	v_mul_f32_e32 v26, v26, v68                                // 00000000EF30: 0A34891A
	v_mul_f32_e32 v27, v27, v68                                // 00000000EF34: 0A36891B
	v_mul_f32_e32 v28, v28, v68                                // 00000000EF38: 0A38891C
	v_mul_f32_e32 v29, v29, v68                                // 00000000EF3C: 0A3A891D
	v_mul_f32_e32 v30, v30, v68                                // 00000000EF40: 0A3C891E
	v_mul_f32_e32 v31, v31, v68                                // 00000000EF44: 0A3E891F
	v_mul_f32_e32 v32, v32, v68                                // 00000000EF48: 0A408920
	v_mul_f32_e32 v33, v33, v68                                // 00000000EF4C: 0A428921
	v_mul_f32_e32 v2, v2, v68                                  // 00000000EF50: 0A048902
	v_mul_f32_e32 v3, v3, v68                                  // 00000000EF54: 0A068903
	v_mul_f32_e32 v73, v4, v68                                 // 00000000EF58: 0A928904
	v_mul_f32_e32 v74, v5, v68                                 // 00000000EF5C: 0A948905
	v_mul_f32_e32 v75, v6, v68                                 // 00000000EF60: 0A968906
	v_mul_f32_e32 v76, v7, v68                                 // 00000000EF64: 0A988907
	v_mul_f32_e32 v77, v8, v68                                 // 00000000EF68: 0A9A8908
	v_mul_f32_e32 v78, v9, v68                                 // 00000000EF6C: 0A9C8909
	v_mul_f32_e32 v79, v10, v68                                // 00000000EF70: 0A9E890A
	v_mul_f32_e32 v80, v11, v68                                // 00000000EF74: 0AA0890B
	v_mul_f32_e32 v81, v12, v68                                // 00000000EF78: 0AA2890C
	v_mul_f32_e32 v82, v13, v68                                // 00000000EF7C: 0AA4890D
	v_mul_f32_e32 v83, v14, v68                                // 00000000EF80: 0AA6890E
	v_mul_f32_e32 v84, v15, v68                                // 00000000EF84: 0AA8890F
	v_mul_f32_e32 v85, v16, v68                                // 00000000EF88: 0AAA8910
	v_mul_f32_e32 v68, v17, v68                                // 00000000EF8C: 0A888911
	v_cvt_pk_bf16_f32 v6, v50, v51                             // 00000000EF90: D2680006 00026732
	v_cvt_pk_bf16_f32 v4, v52, v53                             // 00000000EF98: D2680004 00026B34
	v_cvt_pk_bf16_f32 v7, v54, v55                             // 00000000EFA0: D2680007 00026F36
	v_cvt_pk_bf16_f32 v5, v56, v57                             // 00000000EFA8: D2680005 00027338
	v_cvt_pk_bf16_f32 v10, v58, v59                            // 00000000EFB0: D268000A 0002773A
	v_cvt_pk_bf16_f32 v8, v60, v61                             // 00000000EFB8: D2680008 00027B3C
	v_cvt_pk_bf16_f32 v11, v62, v63                            // 00000000EFC0: D268000B 00027F3E
	v_cvt_pk_bf16_f32 v9, v64, v65                             // 00000000EFC8: D2680009 00028340
	v_cvt_pk_bf16_f32 v14, v34, v35                            // 00000000EFD0: D268000E 00024722
	v_cvt_pk_bf16_f32 v12, v36, v37                            // 00000000EFD8: D268000C 00024B24
	v_cvt_pk_bf16_f32 v15, v38, v39                            // 00000000EFE0: D268000F 00024F26
	v_cvt_pk_bf16_f32 v13, v40, v41                            // 00000000EFE8: D268000D 00025328
	v_cvt_pk_bf16_f32 v18, v42, v43                            // 00000000EFF0: D2680012 0002572A
	v_cvt_pk_bf16_f32 v16, v44, v45                            // 00000000EFF8: D2680010 00025B2C
	v_cvt_pk_bf16_f32 v19, v46, v47                            // 00000000F000: D2680013 00025F2E
	v_cvt_pk_bf16_f32 v17, v48, v49                            // 00000000F008: D2680011 00026330
	v_cvt_pk_bf16_f32 v22, v70, v71                            // 00000000F010: D2680016 00028F46
	v_cvt_pk_bf16_f32 v20, v20, v21                            // 00000000F018: D2680014 00022B14
	v_cvt_pk_bf16_f32 v23, v72, v23                            // 00000000F020: D2680017 00022F48
	v_cvt_pk_bf16_f32 v21, v24, v25                            // 00000000F028: D2680015 00023318
	v_cvt_pk_bf16_f32 v26, v26, v27                            // 00000000F030: D268001A 0002371A
	v_cvt_pk_bf16_f32 v24, v28, v29                            // 00000000F038: D2680018 00023B1C
	v_cvt_pk_bf16_f32 v27, v30, v31                            // 00000000F040: D268001B 00023F1E
	v_cvt_pk_bf16_f32 v25, v32, v33                            // 00000000F048: D2680019 00024320
	v_cvt_pk_bf16_f32 v30, v2, v3                              // 00000000F050: D268001E 00020702
	v_cvt_pk_bf16_f32 v28, v73, v74                            // 00000000F058: D268001C 00029549
	v_cvt_pk_bf16_f32 v31, v75, v76                            // 00000000F060: D268001F 0002994B
	v_cvt_pk_bf16_f32 v29, v77, v78                            // 00000000F068: D268001D 00029D4D
	v_cvt_pk_bf16_f32 v34, v79, v80                            // 00000000F070: D2680022 0002A14F
	v_cvt_pk_bf16_f32 v32, v81, v82                            // 00000000F078: D2680020 0002A551
	v_cvt_pk_bf16_f32 v35, v83, v84                            // 00000000F080: D2680023 0002A953
	v_cvt_pk_bf16_f32 v33, v85, v68                            // 00000000F088: D2680021 00028955
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000F090: 7E0CB507
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000F094: 7E08B505
	v_mov_b32_e32 v2, v6                                       // 00000000F098: 7E040306
	v_mov_b32_e32 v3, v4                                       // 00000000F09C: 7E060304
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000F0A0: 7E14B50B
	v_mov_b32_e32 v4, v7                                       // 00000000F0A4: 7E080307
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000F0A8: 7E10B509
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000F0AC: 7E1CB50F
	v_mov_b32_e32 v6, v10                                      // 00000000F0B0: 7E0C030A
	v_mov_b32_e32 v7, v8                                       // 00000000F0B4: 7E0E0308
	v_mov_b32_e32 v8, v11                                      // 00000000F0B8: 7E10030B
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000F0BC: 7E18B50D
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000F0C0: 7E24B513
	v_mov_b32_e32 v10, v14                                     // 00000000F0C4: 7E14030E
	v_mov_b32_e32 v11, v12                                     // 00000000F0C8: 7E16030C
	v_mov_b32_e32 v12, v15                                     // 00000000F0CC: 7E18030F
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000F0D0: 7E20B511
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000F0D4: 7E2CB517
	v_mov_b32_e32 v14, v18                                     // 00000000F0D8: 7E1C0312
	v_mov_b32_e32 v15, v16                                     // 00000000F0DC: 7E1E0310
	v_mov_b32_e32 v16, v19                                     // 00000000F0E0: 7E200313
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000F0E4: 7E28B515
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000F0E8: 7E34B51B
	v_mov_b32_e32 v18, v22                                     // 00000000F0EC: 7E240316
	v_mov_b32_e32 v19, v20                                     // 00000000F0F0: 7E260314
	v_mov_b32_e32 v20, v23                                     // 00000000F0F4: 7E280317
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000F0F8: 7E30B519
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000F0FC: 7E3CB51F
	v_mov_b32_e32 v22, v26                                     // 00000000F100: 7E2C031A
	v_mov_b32_e32 v23, v24                                     // 00000000F104: 7E2E0318
	v_mov_b32_e32 v24, v27                                     // 00000000F108: 7E30031B
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000F10C: 7E38B51D
	v_permlane32_swap_b32_e32 v34, v35                         // 00000000F110: 7E44B523
	v_mov_b32_e32 v26, v30                                     // 00000000F114: 7E34031E
	v_mov_b32_e32 v27, v28                                     // 00000000F118: 7E36031C
	v_mov_b32_e32 v28, v31                                     // 00000000F11C: 7E38031F
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000F120: 7E40B521
	v_mov_b32_e32 v30, v34                                     // 00000000F124: 7E3C0322
	s_lshl_b32 s20, s33, 13                                    // 00000000F128: 8E148D21
	v_xor_b32_e32 v34, v120, v66                               // 00000000F12C: 2A448578
	v_mov_b32_e32 v31, v32                                     // 00000000F130: 7E3E0320
	v_mov_b32_e32 v32, v35                                     // 00000000F134: 7E400323
	s_mov_b32 s21, 0x18000                                     // 00000000F138: BE9500FF 00018000
	v_or_b32_e32 v35, s20, v121                                // 00000000F140: 2846F214
	v_lshlrev_b32_e32 v34, 4, v34                              // 00000000F144: 24444484
	v_or3_b32 v34, v35, v34, s21                               // 00000000F148: D2020022 00564523
	ds_write_b128 v34, v[2:5]                                  // 00000000F150: D9BE0000 00000222
	v_xor_b32_e32 v2, 32, v34                                  // 00000000F158: 2A0444A0
	ds_write_b128 v2, v[6:9]                                   // 00000000F15C: D9BE0000 00000602
	v_xor_b32_e32 v2, 64, v34                                  // 00000000F164: 2A0444C0
	ds_write_b128 v2, v[10:13]                                 // 00000000F168: D9BE0000 00000A02
	v_xor_b32_e32 v2, 0x60, v34                                // 00000000F170: 2A0444FF 00000060
	ds_write_b128 v2, v[14:17]                                 // 00000000F178: D9BE0000 00000E02
	v_xor_b32_e32 v2, 0x80, v34                                // 00000000F180: 2A0444FF 00000080
	ds_write_b128 v2, v[18:21]                                 // 00000000F188: D9BE0000 00001202
	v_xor_b32_e32 v2, 0xa0, v34                                // 00000000F190: 2A0444FF 000000A0
	ds_write_b128 v2, v[22:25]                                 // 00000000F198: D9BE0000 00001602
	v_xor_b32_e32 v2, 0xc0, v34                                // 00000000F1A0: 2A0444FF 000000C0
	ds_write_b128 v2, v[26:29]                                 // 00000000F1A8: D9BE0000 00001A02
	v_xor_b32_e32 v2, 0xe0, v34                                // 00000000F1B0: 2A0444FF 000000E0
	ds_write_b128 v2, v[30:33]                                 // 00000000F1B8: D9BE0000 00001E02
	v_xor_b32_e32 v3, v67, v66                                 // 00000000F1C0: 2A068543
	v_lshlrev_b32_e32 v2, 8, v67                               // 00000000F1C4: 24048688
	v_lshlrev_b32_e32 v3, 4, v3                                // 00000000F1C8: 24060684
	v_or3_b32 v2, v2, s20, v3                                  // 00000000F1CC: D2020002 040C2902
	v_or_b32_e32 v3, 0x18000, v2                               // 00000000F1D4: 280604FF 00018000
	ds_read_b128 v[10:13], v3                                  // 00000000F1DC: D9FE0000 0A000003
	v_xor_b32_e32 v4, 64, v3                                   // 00000000F1E4: 2A0806C0
	ds_read_b128 v[14:17], v4 offset:1024                      // 00000000F1E8: D9FE0400 0E000004
	v_xor_b32_e32 v5, 0x80, v3                                 // 00000000F1F0: 2A0A06FF 00000080
	ds_read_b128 v[18:21], v5 offset:2048                      // 00000000F1F8: D9FE0800 12000005
	v_xor_b32_e32 v3, 0xc0, v3                                 // 00000000F200: 2A0606FF 000000C0
	ds_read_b128 v[22:25], v3 offset:3072                      // 00000000F208: D9FE0C00 16000003
	v_or_b32_e32 v2, 0x19000, v2                               // 00000000F210: 280404FF 00019000
	ds_read_b128 v[26:29], v2                                  // 00000000F218: D9FE0000 1A000002
	ds_read_b128 v[30:33], v4 offset:5120                      // 00000000F220: D9FE1400 1E000004
	ds_read_b128 v[34:37], v5 offset:6144                      // 00000000F228: D9FE1800 22000005
	ds_read_b128 v[38:41], v3 offset:7168                      // 00000000F230: D9FE1C00 26000003
	v_add_u32_e32 v2, s3, v67                                  // 00000000F238: 68048603
	v_mul_lo_u32 v2, s8, v2                                    // 00000000F23C: D2850002 00020408
	v_lshl_add_u32 v2, v66, 4, v2                              // 00000000F244: D1FD0002 04090942
	s_lshl_b32 s20, s8, 2                                      // 00000000F24C: 8E148208
	v_add_u32_e32 v3, s20, v2                                  // 00000000F250: 68060414
	v_add_u32_e32 v4, s20, v3                                  // 00000000F254: 68080614
	v_add_u32_e32 v5, s20, v4                                  // 00000000F258: 680A0814
	v_add_u32_e32 v6, s20, v5                                  // 00000000F25C: 680C0A14
	v_add_u32_e32 v7, s20, v6                                  // 00000000F260: 680E0C14
	v_add_u32_e32 v8, s20, v7                                  // 00000000F264: 68100E14
	v_add_u32_e32 v9, s20, v8                                  // 00000000F268: 68121014
	s_waitcnt lgkmcnt(7)                                       // 00000000F26C: BF8CC77F
	global_store_dwordx4 v2, v[10:13], s[10:11]                // 00000000F270: DC7C8000 000A0A02
	s_waitcnt lgkmcnt(6)                                       // 00000000F278: BF8CC67F
	global_store_dwordx4 v3, v[14:17], s[10:11]                // 00000000F27C: DC7C8000 000A0E03
	s_waitcnt lgkmcnt(5)                                       // 00000000F284: BF8CC57F
	global_store_dwordx4 v4, v[18:21], s[10:11]                // 00000000F288: DC7C8000 000A1204
	s_waitcnt lgkmcnt(4)                                       // 00000000F290: BF8CC47F
	global_store_dwordx4 v5, v[22:25], s[10:11]                // 00000000F294: DC7C8000 000A1605
	s_waitcnt lgkmcnt(3)                                       // 00000000F29C: BF8CC37F
	global_store_dwordx4 v6, v[26:29], s[10:11]                // 00000000F2A0: DC7C8000 000A1A06
	s_waitcnt lgkmcnt(2)                                       // 00000000F2A8: BF8CC27F
	global_store_dwordx4 v7, v[30:33], s[10:11]                // 00000000F2AC: DC7C8000 000A1E07
	s_waitcnt lgkmcnt(1)                                       // 00000000F2B4: BF8CC17F
	global_store_dwordx4 v8, v[34:37], s[10:11]                // 00000000F2B8: DC7C8000 000A2208
	s_waitcnt lgkmcnt(0)                                       // 00000000F2C0: BF8CC07F
	global_store_dwordx4 v9, v[38:41], s[10:11]                // 00000000F2C4: DC7C8000 000A2609
	v_add_f32_e32 v2, v134, v69                                // 00000000F2CC: 02048B86
	v_add_f32_e32 v2, -4.0, v2                                 // 00000000F2D0: 020404F7
	v_add_f32_e32 v2, -2.0, v2                                 // 00000000F2D4: 020404F5
	v_mul_f32_e32 v2, 0x3f317218, v2                           // 00000000F2D8: 0A0404FF 3F317218
	v_add_u32_e32 v3, s3, v119                                 // 00000000F2E0: 6806EE03
	v_lshlrev_b32_e32 v3, 2, v3                                // 00000000F2E4: 24060682
	s_cmp_eq_u64 s[0:1], 0                                     // 00000000F2E8: BF128000
	s_mov_b64 s[10:11], s[16:17]                               // 00000000F2EC: BE8A0110
	s_mov_b32 s3, s22                                          // 00000000F2F0: BE830016
	s_cbranch_scc1 60668                                       // 00000000F2F4: BF85ECFC <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3e8>
	global_store_dword v3, v2, s[0:1]                          // 00000000F2F8: DC708000 00000203
	s_mov_b64 s[10:11], s[16:17]                               // 00000000F300: BE8A0110
	s_mov_b32 s3, s22                                          // 00000000F304: BE830016
	s_branch 60663                                             // 00000000F308: BF82ECF7 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3e8>
	s_nop 15                                                   // 00000000F30C: BF80000F
	s_nop 3                                                    // 00000000F310: BF800003
	v_rcp_f32_e32 v0, v135                                     // 00000000F314: 7E004587
	v_log_f32_e32 v68, v135                                    // 00000000F318: 7E884387
	s_nop 1                                                    // 00000000F31C: BF800001
	v_mul_f32_e32 v0, v132, v0                                 // 00000000F320: 0A000184
	v_mul_f32_e32 v1, v50, v0                                  // 00000000F324: 0A020132
	v_mul_f32_e32 v50, v51, v0                                 // 00000000F328: 0A640133
	v_mul_f32_e32 v51, v52, v0                                 // 00000000F32C: 0A660134
	v_mul_f32_e32 v52, v53, v0                                 // 00000000F330: 0A680135
	v_mul_f32_e32 v53, v54, v0                                 // 00000000F334: 0A6A0136
	v_mul_f32_e32 v54, v55, v0                                 // 00000000F338: 0A6C0137
	v_mul_f32_e32 v55, v56, v0                                 // 00000000F33C: 0A6E0138
	v_mul_f32_e32 v56, v57, v0                                 // 00000000F340: 0A700139
	v_mul_f32_e32 v57, v58, v0                                 // 00000000F344: 0A72013A
	v_mul_f32_e32 v58, v59, v0                                 // 00000000F348: 0A74013B
	v_mul_f32_e32 v59, v60, v0                                 // 00000000F34C: 0A76013C
	v_mul_f32_e32 v60, v61, v0                                 // 00000000F350: 0A78013D
	v_mul_f32_e32 v61, v62, v0                                 // 00000000F354: 0A7A013E
	v_mul_f32_e32 v62, v63, v0                                 // 00000000F358: 0A7C013F
	v_mul_f32_e32 v63, v64, v0                                 // 00000000F35C: 0A7E0140
	v_mul_f32_e32 v64, v65, v0                                 // 00000000F360: 0A800141
	v_mul_f32_e32 v34, v34, v0                                 // 00000000F364: 0A440122
	v_mul_f32_e32 v35, v35, v0                                 // 00000000F368: 0A460123
	v_mul_f32_e32 v36, v36, v0                                 // 00000000F36C: 0A480124
	v_mul_f32_e32 v37, v37, v0                                 // 00000000F370: 0A4A0125
	v_mul_f32_e32 v38, v38, v0                                 // 00000000F374: 0A4C0126
	v_mul_f32_e32 v39, v39, v0                                 // 00000000F378: 0A4E0127
	v_mul_f32_e32 v40, v40, v0                                 // 00000000F37C: 0A500128
	v_mul_f32_e32 v41, v41, v0                                 // 00000000F380: 0A520129
	v_mul_f32_e32 v42, v42, v0                                 // 00000000F384: 0A54012A
	v_mul_f32_e32 v43, v43, v0                                 // 00000000F388: 0A56012B
	v_mul_f32_e32 v44, v44, v0                                 // 00000000F38C: 0A58012C
	v_mul_f32_e32 v45, v45, v0                                 // 00000000F390: 0A5A012D
	v_mul_f32_e32 v46, v46, v0                                 // 00000000F394: 0A5C012E
	v_mul_f32_e32 v47, v47, v0                                 // 00000000F398: 0A5E012F
	v_mul_f32_e32 v48, v48, v0                                 // 00000000F39C: 0A600130
	v_mul_f32_e32 v49, v49, v0                                 // 00000000F3A0: 0A620131
	v_mul_f32_e32 v18, v18, v0                                 // 00000000F3A4: 0A240112
	v_mul_f32_e32 v19, v19, v0                                 // 00000000F3A8: 0A260113
	v_mul_f32_e32 v65, v20, v0                                 // 00000000F3AC: 0A820114
	v_mul_f32_e32 v21, v21, v0                                 // 00000000F3B0: 0A2A0115
	v_mul_f32_e32 v22, v22, v0                                 // 00000000F3B4: 0A2C0116
	v_mul_f32_e32 v23, v23, v0                                 // 00000000F3B8: 0A2E0117
	v_mul_f32_e32 v24, v24, v0                                 // 00000000F3BC: 0A300118
	v_mul_f32_e32 v25, v25, v0                                 // 00000000F3C0: 0A320119
	v_mul_f32_e32 v26, v26, v0                                 // 00000000F3C4: 0A34011A
	v_mul_f32_e32 v27, v27, v0                                 // 00000000F3C8: 0A36011B
	v_mul_f32_e32 v28, v28, v0                                 // 00000000F3CC: 0A38011C
	v_mul_f32_e32 v29, v29, v0                                 // 00000000F3D0: 0A3A011D
	v_mul_f32_e32 v30, v30, v0                                 // 00000000F3D4: 0A3C011E
	v_mul_f32_e32 v31, v31, v0                                 // 00000000F3D8: 0A3E011F
	v_mul_f32_e32 v32, v32, v0                                 // 00000000F3DC: 0A400120
	v_mul_f32_e32 v33, v33, v0                                 // 00000000F3E0: 0A420121
	v_mul_f32_e32 v69, v2, v0                                  // 00000000F3E4: 0A8A0102
	v_mul_f32_e32 v70, v3, v0                                  // 00000000F3E8: 0A8C0103
	v_mul_f32_e32 v71, v4, v0                                  // 00000000F3EC: 0A8E0104
	v_mul_f32_e32 v72, v5, v0                                  // 00000000F3F0: 0A900105
	v_mul_f32_e32 v73, v6, v0                                  // 00000000F3F4: 0A920106
	v_mul_f32_e32 v74, v7, v0                                  // 00000000F3F8: 0A940107
	v_mul_f32_e32 v75, v8, v0                                  // 00000000F3FC: 0A960108
	v_mul_f32_e32 v76, v9, v0                                  // 00000000F400: 0A980109
	v_mul_f32_e32 v77, v10, v0                                 // 00000000F404: 0A9A010A
	v_mul_f32_e32 v78, v11, v0                                 // 00000000F408: 0A9C010B
	v_mul_f32_e32 v79, v12, v0                                 // 00000000F40C: 0A9E010C
	v_mul_f32_e32 v80, v13, v0                                 // 00000000F410: 0AA0010D
	v_mul_f32_e32 v81, v14, v0                                 // 00000000F414: 0AA2010E
	v_mul_f32_e32 v82, v15, v0                                 // 00000000F418: 0AA4010F
	v_mul_f32_e32 v83, v16, v0                                 // 00000000F41C: 0AA60110
	v_mul_f32_e32 v0, v17, v0                                  // 00000000F420: 0A000111
	v_cvt_pk_bf16_f32 v4, v1, v50                              // 00000000F424: D2680004 00026501
	v_cvt_pk_bf16_f32 v2, v51, v52                             // 00000000F42C: D2680002 00026933
	v_cvt_pk_bf16_f32 v5, v53, v54                             // 00000000F434: D2680005 00026D35
	v_cvt_pk_bf16_f32 v3, v55, v56                             // 00000000F43C: D2680003 00027137
	v_cvt_pk_bf16_f32 v8, v57, v58                             // 00000000F444: D2680008 00027539
	v_cvt_pk_bf16_f32 v6, v59, v60                             // 00000000F44C: D2680006 0002793B
	v_cvt_pk_bf16_f32 v9, v61, v62                             // 00000000F454: D2680009 00027D3D
	v_cvt_pk_bf16_f32 v7, v63, v64                             // 00000000F45C: D2680007 0002813F
	v_cvt_pk_bf16_f32 v12, v34, v35                            // 00000000F464: D268000C 00024722
	v_cvt_pk_bf16_f32 v10, v36, v37                            // 00000000F46C: D268000A 00024B24
	v_cvt_pk_bf16_f32 v13, v38, v39                            // 00000000F474: D268000D 00024F26
	v_cvt_pk_bf16_f32 v11, v40, v41                            // 00000000F47C: D268000B 00025328
	v_cvt_pk_bf16_f32 v16, v42, v43                            // 00000000F484: D2680010 0002572A
	v_cvt_pk_bf16_f32 v14, v44, v45                            // 00000000F48C: D268000E 00025B2C
	v_cvt_pk_bf16_f32 v17, v46, v47                            // 00000000F494: D2680011 00025F2E
	v_cvt_pk_bf16_f32 v15, v48, v49                            // 00000000F49C: D268000F 00026330
	v_cvt_pk_bf16_f32 v20, v18, v19                            // 00000000F4A4: D2680014 00022712
	v_cvt_pk_bf16_f32 v18, v65, v21                            // 00000000F4AC: D2680012 00022B41
	v_cvt_pk_bf16_f32 v21, v22, v23                            // 00000000F4B4: D2680015 00022F16
	v_cvt_pk_bf16_f32 v19, v24, v25                            // 00000000F4BC: D2680013 00023318
	v_cvt_pk_bf16_f32 v24, v26, v27                            // 00000000F4C4: D2680018 0002371A
	v_cvt_pk_bf16_f32 v22, v28, v29                            // 00000000F4CC: D2680016 00023B1C
	v_cvt_pk_bf16_f32 v25, v30, v31                            // 00000000F4D4: D2680019 00023F1E
	v_cvt_pk_bf16_f32 v23, v32, v33                            // 00000000F4DC: D2680017 00024320
	v_cvt_pk_bf16_f32 v28, v69, v70                            // 00000000F4E4: D268001C 00028D45
	v_cvt_pk_bf16_f32 v26, v71, v72                            // 00000000F4EC: D268001A 00029147
	v_cvt_pk_bf16_f32 v29, v73, v74                            // 00000000F4F4: D268001D 00029549
	v_cvt_pk_bf16_f32 v27, v75, v76                            // 00000000F4FC: D268001B 0002994B
	v_cvt_pk_bf16_f32 v32, v77, v78                            // 00000000F504: D2680020 00029D4D
	v_cvt_pk_bf16_f32 v30, v79, v80                            // 00000000F50C: D268001E 0002A14F
	v_cvt_pk_bf16_f32 v33, v81, v82                            // 00000000F514: D2680021 0002A551
	v_cvt_pk_bf16_f32 v31, v83, v0                             // 00000000F51C: D268001F 00020153
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000F524: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000F528: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000F52C: 7E000304
	v_mov_b32_e32 v1, v2                                       // 00000000F530: 7E020302
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000F534: 7E10B509
	v_mov_b32_e32 v2, v5                                       // 00000000F538: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000F53C: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000F540: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000F544: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000F548: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000F54C: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000F550: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000F554: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000F558: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000F55C: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000F560: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000F564: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000F568: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000F56C: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000F570: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000F574: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000F578: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000F57C: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000F580: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000F584: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000F588: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000F58C: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000F590: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000F594: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000F598: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000F59C: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000F5A0: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000F5A4: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000F5A8: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000F5AC: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000F5B0: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000F5B4: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000F5B8: 7E380320
	s_lshl_b32 s2, s33, 13                                     // 00000000F5BC: 8E028D21
	v_xor_b32_e32 v32, v120, v66                               // 00000000F5C0: 2A408578
	v_mov_b32_e32 v29, v30                                     // 00000000F5C4: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000F5C8: 7E3C0321
	s_mov_b32 s4, 0x18000                                      // 00000000F5CC: BE8400FF 00018000
	v_or_b32_e32 v33, s2, v121                                 // 00000000F5D4: 2842F202
	v_lshlrev_b32_e32 v32, 4, v32                              // 00000000F5D8: 24404084
	v_or3_b32 v32, v33, v32, s4                                // 00000000F5DC: D2020020 00124121
	ds_write_b128 v32, v[0:3]                                  // 00000000F5E4: D9BE0000 00000020
	v_xor_b32_e32 v0, 32, v32                                  // 00000000F5EC: 2A0040A0
	ds_write_b128 v0, v[4:7]                                   // 00000000F5F0: D9BE0000 00000400
	v_xor_b32_e32 v0, 64, v32                                  // 00000000F5F8: 2A0040C0
	ds_write_b128 v0, v[8:11]                                  // 00000000F5FC: D9BE0000 00000800
	v_xor_b32_e32 v0, 0x60, v32                                // 00000000F604: 2A0040FF 00000060
	ds_write_b128 v0, v[12:15]                                 // 00000000F60C: D9BE0000 00000C00
	v_xor_b32_e32 v0, 0x80, v32                                // 00000000F614: 2A0040FF 00000080
	ds_write_b128 v0, v[16:19]                                 // 00000000F61C: D9BE0000 00001000
	v_xor_b32_e32 v0, 0xa0, v32                                // 00000000F624: 2A0040FF 000000A0
	ds_write_b128 v0, v[20:23]                                 // 00000000F62C: D9BE0000 00001400
	v_xor_b32_e32 v0, 0xc0, v32                                // 00000000F634: 2A0040FF 000000C0
	ds_write_b128 v0, v[24:27]                                 // 00000000F63C: D9BE0000 00001800
	v_xor_b32_e32 v0, 0xe0, v32                                // 00000000F644: 2A0040FF 000000E0
	ds_write_b128 v0, v[28:31]                                 // 00000000F64C: D9BE0000 00001C00
	v_xor_b32_e32 v1, v67, v66                                 // 00000000F654: 2A028543
	v_lshlrev_b32_e32 v0, 8, v67                               // 00000000F658: 24008688
	v_lshlrev_b32_e32 v1, 4, v1                                // 00000000F65C: 24020284
	v_or3_b32 v0, v0, s2, v1                                   // 00000000F660: D2020000 04040500
	v_or_b32_e32 v1, 0x18000, v0                               // 00000000F668: 280200FF 00018000
	ds_read_b128 v[8:11], v1                                   // 00000000F670: D9FE0000 08000001
	v_xor_b32_e32 v2, 64, v1                                   // 00000000F678: 2A0402C0
	ds_read_b128 v[12:15], v2 offset:1024                      // 00000000F67C: D9FE0400 0C000002
	v_xor_b32_e32 v3, 0x80, v1                                 // 00000000F684: 2A0602FF 00000080
	ds_read_b128 v[16:19], v3 offset:2048                      // 00000000F68C: D9FE0800 10000003
	v_xor_b32_e32 v1, 0xc0, v1                                 // 00000000F694: 2A0202FF 000000C0
	ds_read_b128 v[20:23], v1 offset:3072                      // 00000000F69C: D9FE0C00 14000001
	v_or_b32_e32 v0, 0x19000, v0                               // 00000000F6A4: 280000FF 00019000
	ds_read_b128 v[24:27], v0                                  // 00000000F6AC: D9FE0000 18000000
	ds_read_b128 v[28:31], v2 offset:5120                      // 00000000F6B4: D9FE1400 1C000002
	ds_read_b128 v[32:35], v3 offset:6144                      // 00000000F6BC: D9FE1800 20000003
	ds_read_b128 v[36:39], v1 offset:7168                      // 00000000F6C4: D9FE1C00 24000001
	v_add_u32_e32 v0, s3, v67                                  // 00000000F6CC: 68008603
	v_mul_lo_u32 v0, s8, v0                                    // 00000000F6D0: D2850000 00020008
	v_lshl_add_u32 v0, v66, 4, v0                              // 00000000F6D8: D1FD0000 04010942
	s_lshl_b32 s2, s8, 2                                       // 00000000F6E0: 8E028208
	v_add_u32_e32 v1, s2, v0                                   // 00000000F6E4: 68020002
	v_add_u32_e32 v2, s2, v1                                   // 00000000F6E8: 68040202
	v_add_u32_e32 v3, s2, v2                                   // 00000000F6EC: 68060402
	v_add_u32_e32 v4, s2, v3                                   // 00000000F6F0: 68080602
	v_add_u32_e32 v5, s2, v4                                   // 00000000F6F4: 680A0802
	v_add_u32_e32 v6, s2, v5                                   // 00000000F6F8: 680C0A02
	v_add_u32_e32 v7, s2, v6                                   // 00000000F6FC: 680E0C02
	s_waitcnt lgkmcnt(7)                                       // 00000000F700: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[10:11]                 // 00000000F704: DC7C8000 000A0800
	s_waitcnt lgkmcnt(6)                                       // 00000000F70C: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[10:11]                // 00000000F710: DC7C8000 000A0C01
	s_waitcnt lgkmcnt(5)                                       // 00000000F718: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[10:11]                // 00000000F71C: DC7C8000 000A1002
	s_waitcnt lgkmcnt(4)                                       // 00000000F724: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[10:11]                // 00000000F728: DC7C8000 000A1403
	s_waitcnt lgkmcnt(3)                                       // 00000000F730: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[10:11]                // 00000000F734: DC7C8000 000A1804
	s_waitcnt lgkmcnt(2)                                       // 00000000F73C: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[10:11]                // 00000000F740: DC7C8000 000A1C05
	s_waitcnt lgkmcnt(1)                                       // 00000000F748: BF8CC17F
	global_store_dwordx4 v6, v[32:35], s[10:11]                // 00000000F74C: DC7C8000 000A2006
	s_waitcnt lgkmcnt(0)                                       // 00000000F754: BF8CC07F
	global_store_dwordx4 v7, v[36:39], s[10:11]                // 00000000F758: DC7C8000 000A2407
	v_add_f32_e32 v0, v134, v68                                // 00000000F760: 02008986
	v_add_f32_e32 v0, -4.0, v0                                 // 00000000F764: 020000F7
	v_add_f32_e32 v0, -2.0, v0                                 // 00000000F768: 020000F5
	v_mul_f32_e32 v0, 0x3f317218, v0                           // 00000000F76C: 0A0000FF 3F317218
	v_add_u32_e32 v1, s3, v119                                 // 00000000F774: 6802EE03
	v_lshlrev_b32_e32 v1, 2, v1                                // 00000000F778: 24020282
	s_cmp_eq_u64 s[0:1], 0                                     // 00000000F77C: BF128000
	s_cbranch_scc1 2                                           // 00000000F780: BF850002 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x548c>
	global_store_dword v1, v0, s[0:1]                          // 00000000F784: DC708000 00000001
	s_and_b64 s[0:1], s[68:69], exec                           // 00000000F78C: 86807E44
	s_cbranch_scc0 1                                           // 00000000F790: BF840001 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5498>
	s_barrier                                                  // 00000000F794: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000F798: BF8C0F70
	s_endpgm                                                   // 00000000F79C: BF810000
