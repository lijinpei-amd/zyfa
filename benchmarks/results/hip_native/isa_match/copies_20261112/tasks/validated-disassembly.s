
/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261112/gpu-validation-292d02a/candidate/inspect/native.co:	file format elf64-amdgpu

Disassembly of section .text:

0000000000001b00 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE>:
	s_load_dwordx16 s[36:51], s[0:1], 0x0                      // 000000001B00: C0120900 00000000
	s_load_dwordx16 s[4:19], s[0:1], 0x40                      // 000000001B08: C0120100 00000040
	s_load_dwordx4 s[20:23], s[0:1], 0x80                      // 000000001B10: C00A0500 00000080
	s_load_dwordx2 s[24:25], s[0:1], 0x90                      // 000000001B18: C0060600 00000090
	v_bfe_u32 v171, v0, 5, 1                                   // 000000001B20: D1C800AB 02050B00
	v_lshrrev_b32_e32 v3, 2, v0                                // 000000001B28: 20060082
	v_and_b32_e32 v170, 31, v0                                 // 000000001B2C: 2754009F
	v_xor_b32_e32 v1, v171, v3                                 // 000000001B30: 2A0207AB
	s_movk_i32 s1, 0x60                                        // 000000001B34: B0010060
	v_lshlrev_b32_e32 v2, 7, v170                              // 000000001B38: 24055487
	v_lshlrev_b32_e32 v1, 5, v1                                // 000000001B3C: 24020285
	v_and_or_b32 v1, v1, s1, v2                                // 000000001B40: D2010001 04080301
	v_readfirstlane_b32 s0, v0                                 // 000000001B48: 7E000500
	v_xor_b32_e32 v172, 64, v1                                 // 000000001B4C: 2B5802C0
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
	s_load_dword s34, s[24:25], 0x0                            // 000000001B88: C002088C 00000000
	s_branch 8                                                 // 000000001B90: BF820008 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb4>
	s_mov_b32 s1, 1.0                                          // 000000001B94: BE8100F2
	s_cmp_eq_u64 s[22:23], 0                                   // 000000001B98: BF128016
	s_cbranch_scc0 65523                                       // 000000001B9C: BF84FFF3 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6c>
	s_waitcnt lgkmcnt(0)                                       // 000000001BA0: BF8CC07F
	v_mov_b32_e32 v4, s1                                       // 000000001BA4: 7E080201
	s_cmp_eq_u64 s[24:25], 0                                   // 000000001BA8: BF128018
	s_cbranch_scc0 65526                                       // 000000001BAC: BF84FFF6 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x88>
	s_mov_b32 s34, 1.0                                         // 000000001BB0: BEA200F2
	s_lshr_b32 s1, s0, 6                                       // 000000001BB4: 8F018600
	v_and_b32_e32 v6, 1, v0                                    // 000000001BB8: 260C0081
	v_mov_b32_e32 v173, 0x7f                                   // 000000001BBC: 7F5A02FF 0000007F
	v_mov_b32_e32 v174, 0xc1000000                             // 000000001BC4: 7F5C02FF C1000000
	s_mov_b32 s54, 0xc2fe0000                                  // 000000001BCC: BEB600FF C2FE0000
	s_mov_b32 s55, 0x3e000000                                  // 000000001BD4: BEB700FF 3E000000
	v_mov_b32_e32 v2, 0xff800000                               // 000000001BDC: 7E0402FF FF800000
	v_bfe_u32 v5, v0, 1, 2                                     // 000000001BE4: D1C80005 02090300
	s_mov_b32 s3, 1                                            // 000000001BEC: BE830081
	v_lshlrev_b32_e32 v7, 4, v6                                // 000000001BF0: 240E0C84
	v_lshrrev_b32_e32 v175, 3, v0                              // 000000001BF4: 215E0083
	v_lshrrev_b32_e32 v8, 5, v0                                // 000000001BF8: 20100085
	v_xor_b32_e32 v8, v5, v8                                   // 000000001BFC: 2A101105
	v_and_b32_e32 v8, 3, v8                                    // 000000001C00: 26101083
	v_lshlrev_b32_e32 v8, 5, v8                                // 000000001C04: 24101085
	v_or_b32_e32 v8, v8, v7                                    // 000000001C08: 28100F08
	v_mad_u32_u24 v176, s8, v175, v8                           // 000000001C0C: D1C300B0 04235E08
	v_or_b32_e32 v8, 0x200, v0                                 // 000000001C14: 281000FF 00000200
	v_lshrrev_b32_e32 v9, 3, v8                                // 000000001C1C: 20121083
	v_lshrrev_b32_e32 v10, 5, v8                               // 000000001C20: 20141085
	v_xor_b32_e32 v5, v5, v10                                  // 000000001C24: 2A0A1505
	v_and_b32_e32 v5, 3, v5                                    // 000000001C28: 260A0A83
	v_lshlrev_b32_e32 v5, 5, v5                                // 000000001C2C: 240A0A85
	v_or_b32_e32 v5, v5, v7                                    // 000000001C30: 280A0F05
	v_mad_u32_u24 v177, s8, v9, v5                             // 000000001C34: D1C300B1 04161208
	v_lshrrev_b32_e32 v5, 7, v0                                // 000000001C3C: 200A0087
	v_bfe_u32 v6, v0, 6, 1                                     // 000000001C40: D1C80006 02050D00
	v_bfe_u32 v7, v0, 2, 1                                     // 000000001C48: D1C80007 02050500
	v_bfe_u32 v10, v0, 3, 3                                    // 000000001C50: D1C8000A 020D0700
	v_and_b32_e32 v9, 3, v0                                    // 000000001C58: 26120083
	v_lshlrev_b32_e32 v11, 5, v5                               // 000000001C5C: 24160A85
	v_lshlrev_b32_e32 v12, 4, v6                               // 000000001C60: 24180C84
	v_lshlrev_b32_e32 v13, 3, v7                               // 000000001C64: 241A0E83
	v_lshlrev_b32_e32 v14, 4, v10                              // 000000001C68: 241C1484
	s_mov_b32 s16, 0                                           // 000000001C6C: BE900080
	v_or_b32_e32 v15, v11, v12                                 // 000000001C70: 281E190B
	v_or_b32_e32 v15, v15, v13                                 // 000000001C74: 281E1B0F
	v_or_b32_e32 v15, v15, v9                                  // 000000001C78: 281E130F
	v_mad_u32_u24 v178, s8, v15, v14                           // 000000001C7C: D1C300B2 043A1E08
	v_or_b32_e32 v5, 4, v11                                    // 000000001C84: 280A1684
	v_or_b32_e32 v5, v5, v12                                   // 000000001C88: 280A1905
	v_or_b32_e32 v5, v5, v13                                   // 000000001C8C: 280A1B05
	v_or_b32_e32 v5, v5, v9                                    // 000000001C90: 280A1305
	v_mad_u32_u24 v179, s8, v5, v14                            // 000000001C94: D1C300B3 043A0A08
	s_lshl_b32 s56, s1, 10                                     // 000000001C9C: 8E388A01
	s_add_u32 s57, s56, 0x10000                                // 000000001CA0: 8039FF38 00010000
	s_cmp_ge_u32 s2, s51                                       // 000000001CA8: BF093302
	s_cbranch_scc1 8397                                        // 000000001CAC: BF8520CD <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x84e4>
	s_lshl_b32 s58, s8, 7                                      // 000000001CB0: 8E3A8708
	s_lshr_b32 s59, s0, 8                                      // 000000001CB4: 8F3B8800
	s_and_b32 s33, s1, 3                                       // 000000001CB8: 86218301
	s_cmp_eq_u32 s6, 0                                         // 000000001CBC: BF068006
	s_cselect_b32 s6, s1, s33                                  // 000000001CC0: 85062101
	s_cselect_b32 s64, 0, s59                                  // 000000001CC4: 85403B80
	s_lshl_b32 s0, s2, 5                                       // 000000001CC8: 8E008502
	s_load_dwordx8 s[16:23], s[46:47], s0 offset:0x0           // 000000001CCC: C00E4417 00000000
	s_mul_i32 s60, s64, s10                                    // 000000001CD4: 923C0A40
	s_mul_i32 s26, s8, s13                                     // 000000001CD8: 921A0D08
	s_mov_b32 s27, 0x110000                                    // 000000001CDC: BE9B00FF 00110000
	s_mov_b32 s30, s26                                         // 000000001CE4: BE9E001A
	s_waitcnt lgkmcnt(0)                                       // 000000001CE8: BF8CC07F
	s_add_u32 s0, s36, s18                                     // 000000001CEC: 80001224
	s_addc_u32 s1, s37, s19                                    // 000000001CF0: 82011325
	s_add_u32 s0, s0, s60                                      // 000000001CF4: 80003C00
	s_addc_u32 s1, s1, 0                                       // 000000001CF8: 82018001
	s_add_u32 s24, s38, s20                                    // 000000001CFC: 80181426
	s_addc_u32 s25, s39, s21                                   // 000000001D00: 82191527
	s_add_u32 s28, s40, s20                                    // 000000001D04: 801C1428
	s_addc_u32 s29, s41, s21                                   // 000000001D08: 821D1529
	s_not_b32 s3, s16                                          // 000000001D0C: BE830410
	s_add_u32 s3, s4, s3                                       // 000000001D10: 80030304
	s_mul_i32 s10, s3, s5                                      // 000000001D14: 920A0503
	s_lshl_b32 s3, s3, 5                                       // 000000001D18: 8E038503
	s_lshr_b32 s61, s13, 7                                     // 000000001D1C: 8F3D870D
	s_add_u32 s10, s10, s6                                     // 000000001D20: 800A060A
	s_add_u32 s13, s3, 32                                      // 000000001D24: 800DA003
	s_lshl_b32 s3, s10, 5                                      // 000000001D28: 8E03850A
	s_mul_i32 s10, s13, s5                                     // 000000001D2C: 920A050D
	s_addk_i32 s10, 0x60                                       // 000000001D30: B70A0060
	s_lshr_b32 s10, s10, 7                                     // 000000001D34: 8F0A870A
	v_or_b32_e32 v5, s3, v170                                  // 000000001D38: 280B5403
	s_min_u32 s65, s61, s10                                    // 000000001D3C: 83C10A3D
	s_mov_b32 s31, s27                                         // 000000001D40: BE9F001B
	v_mul_lo_u32 v5, v5, s7                                    // 000000001D44: D2850005 00000F05
	v_lshlrev_b32_e32 v180, 5, v171                            // 000000001D4C: 25695685
	v_add_u32_e32 v5, v180, v5                                 // 000000001D50: 680A0BB4
	global_load_dwordx4 v[228:231], v5, s[0:1]                 // 000000001D54: DC5C8000 E4000005
	global_load_dwordx4 v[232:235], v5, s[0:1] offset:16       // 000000001D5C: DC5C8010 E8000005
	global_load_dwordx4 v[236:239], v5, s[0:1] offset:64       // 000000001D64: DC5C8040 EC000005
	global_load_dwordx4 v[240:243], v5, s[0:1] offset:80       // 000000001D6C: DC5C8050 F0000005
	s_add_u32 m0, s56, 0                                       // 000000001D74: 807C8038
	s_nop 0                                                    // 000000001D78: BF800000
	buffer_load_dwordx4 v176, s[24:27], 0 offen lds            // 000000001D7C: E05D1000 800600B0
	s_add_u32 m0, s56, 0x2000                                  // 000000001D84: 807CFF38 00002000
	s_nop 0                                                    // 000000001D8C: BF800000
	buffer_load_dwordx4 v177, s[24:27], 0 offen lds            // 000000001D90: E05D1000 800600B1
	s_add_u32 m0, s57, 0                                       // 000000001D98: 807C8039
	s_nop 0                                                    // 000000001D9C: BF800000
	buffer_load_dwordx4 v178, s[28:31], 0 offen lds            // 000000001DA0: E05D1000 800700B2
	s_add_u32 m0, s57, 0x2000                                  // 000000001DA8: 807CFF39 00002000
	s_cmp_lt_u32 s65, 2                                        // 000000001DB0: BF0A8241
	buffer_load_dwordx4 v179, s[28:31], 0 offen lds            // 000000001DB4: E05D1000 800700B3
	s_cbranch_scc1 11                                          // 000000001DBC: BF85000B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2ec>
	s_or_b32 s0, s56, 0x4000                                   // 000000001DC0: 8700FF38 00004000
	s_add_u32 m0, s0, 0                                        // 000000001DC8: 807C8000
	s_nop 0                                                    // 000000001DCC: BF800000
	buffer_load_dwordx4 v176, s[24:27], s58 offen lds          // 000000001DD0: E05D1000 3A0600B0
	s_add_u32 m0, s0, 0x2000                                   // 000000001DD8: 807CFF00 00002000
	s_nop 0                                                    // 000000001DE0: BF800000
	buffer_load_dwordx4 v177, s[24:27], s58 offen lds          // 000000001DE4: E05D1000 3A0600B1
	s_waitcnt vmcnt(0)                                         // 000000001DEC: BF8C0F70
	s_barrier                                                  // 000000001DF0: BF8A0000
	s_cmp_eq_u32 s59, 0                                        // 000000001DF4: BF06803B
	s_mov_b32 s62, 0                                           // 000000001DF8: BEBE0080
	s_cbranch_scc1 1                                           // 000000001DFC: BF850001 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x304>
	s_barrier                                                  // 000000001E00: BF8A0000
	s_add_u32 s0, s42, s22                                     // 000000001E04: 8000162A
	s_mul_i32 s63, s64, s11                                    // 000000001E08: 923F0B40
	v_mul_f32_e32 v183, s49, v4                                // 000000001E0C: 0B6E0831
	v_mul_f32_e32 v184, s48, v4                                // 000000001E10: 0B700830
	v_mov_b32_e32 v4, s34                                      // 000000001E14: 7E080222
	v_lshlrev_b32_e32 v6, 3, v0                                // 000000001E18: 240C0083
	s_addc_u32 s10, s43, s23                                   // 000000001E1C: 820A172B
	s_mul_i32 s64, s64, s12                                    // 000000001E20: 92400C40
	v_lshlrev_b32_e32 v5, 13, v171                             // 000000001E24: 240B568D
	s_mov_b32 s1, 0x10000                                      // 000000001E28: BE8100FF 00010000
	v_mul_f32_e32 v182, s15, v4                                // 000000001E30: 0B6C080F
	v_and_b32_e32 v4, 0xf8, v6                                 // 000000001E34: 26080CFF 000000F8
	s_add_u32 s0, s0, s63                                      // 000000001E3C: 80003F00
	v_or3_b32 v185, v4, v5, s1                                 // 000000001E40: D20200B9 00060B04
	s_addc_u32 s1, s10, 0                                      // 000000001E48: 8201800A
	s_add_u32 s10, s17, s64                                    // 000000001E4C: 800A4011
	s_lshl_b32 s10, s10, 2                                     // 000000001E50: 8E0A820A
	v_lshrrev_b32_e32 v7, 4, v0                                // 000000001E54: 200E0084
	s_add_u32 s15, s44, s10                                    // 000000001E58: 800F0A2C
	v_xor_b32_e32 v3, v7, v3                                   // 000000001E5C: 2A060707
	s_addc_u32 s30, s45, 0                                     // 000000001E60: 821E802D
	v_and_b32_e32 v3, 1, v3                                    // 000000001E64: 26060681
	s_cmp_eq_u64 s[44:45], 0                                   // 000000001E68: BF12802C
	v_mov_b32_e32 v8, 0x38383838                               // 000000001E6C: 7E1002FF 38383838
	v_cmp_eq_u32_e32 vcc, 0, v3                                // 000000001E74: 7D940680
	s_cselect_b64 s[12:13], -1, 0                              // 000000001E78: 858C80C1
	s_and_b64 s[10:11], s[12:13], exec                         // 000000001E7C: 868A7E0C
	v_cndmask_b32_e32 v146, 0, v8, vcc                         // 000000001E80: 01241080
	v_and_b32_e32 v181, 63, v0                                 // 000000001E84: 276A00BF
	s_mov_b32 s52, 0                                           // 000000001E88: BEB40080
	v_mov_b32_e32 v147, v146                                   // 000000001E8C: 7F260392
	v_mov_b32_e32 v148, v146                                   // 000000001E90: 7F280392
	v_mov_b32_e32 v149, v146                                   // 000000001E94: 7F2A0392
	v_mov_b32_e32 v150, v146                                   // 000000001E98: 7F2C0392
	v_mov_b32_e32 v151, v146                                   // 000000001E9C: 7F2E0392
	v_mov_b32_e32 v152, v146                                   // 000000001EA0: 7F300392
	v_mov_b32_e32 v153, v146                                   // 000000001EA4: 7F320392
	s_cselect_b32 s49, 0, s30                                  // 000000001EA8: 85311E80
	s_cselect_b32 s48, 0, s15                                  // 000000001EAC: 85300F80
	s_lshr_b32 s15, s3, 7                                      // 000000001EB0: 8F0F8703
	s_lshl_b32 s53, s62, 14                                    // 000000001EB4: 8E358E3E
	s_and_b32 s67, s53, 0xc000                                 // 000000001EB8: 8643FF35 0000C000
	v_or_b32_e32 v3, s67, v1                                   // 000000001EC0: 28060243
	s_waitcnt vmcnt(8)                                         // 000000001EC4: BF8C0F78
	ds_read_b128 v[12:15], v3                                  // 000000001EC8: D9FE0000 0C000003
	ds_read_b128 v[16:19], v3 offset:16                        // 000000001ED0: D9FE0010 10000003
	ds_read_b128 v[4:7], v3 offset:4096                        // 000000001ED8: D9FE1000 04000003
	ds_read_b128 v[8:11], v3 offset:4112                       // 000000001EE0: D9FE1010 08000003
	s_mov_b64 s[10:11], s[48:49]                               // 000000001EE8: BE8A0130
	s_cmp_eq_u32 s15, 0                                        // 000000001EEC: BF06800F
	s_mov_b32 s30, 0                                           // 000000001EF0: BE9E0080
	s_cbranch_scc1 145                                         // 000000001EF4: BF850091 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x63c>
	s_setprio 1                                                // 000000001EF8: BF8F0001
	v_add_u32_e32 v3, s67, v1                                  // 000000001EFC: 68060243
	ds_read_b128 v[20:23], v3 offset:8192                      // 000000001F00: D9FE2000 14000003
	ds_read_b128 v[24:27], v3 offset:8208                      // 000000001F08: D9FE2010 18000003
	ds_read_b128 v[28:31], v3 offset:12288                     // 000000001F10: D9FE3000 1C000003
	ds_read_b128 v[32:35], v3 offset:12304                     // 000000001F18: D9FE3010 20000003
	s_waitcnt lgkmcnt(4)                                       // 000000001F20: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[12:19], v[228:235], 0// 000000001F24: D3AE0082 0203C90C
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[4:11], v[228:235], 0// 000000001F2C: D3AE0072 0203C904
	v_add_u32_e32 v3, s67, v172                                // 000000001F34: 68075843
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
	v_mul_f32_e32 v16, v183, v5                                // 0000000020D4: 0A200BB7
	v_fma_f32 v3, v3, v183, -v16                               // 0000000020D8: D1CB0003 84436F03
	v_floor_f32_e32 v3, v3                                     // 0000000020E0: 7E063F03
	v_med3_f32 v5, v3, s54, 0                                  // 0000000020E4: D1D60005 02006D03
	v_cvt_i32_f32_e32 v3, v5                                   // 0000000020EC: 7E061105
	v_add_u32_e32 v187, 0x7f, v3                               // 0000000020F0: 697606FF 0000007F
	v_lshlrev_b32_e32 v3, 23, v187                             // 0000000020F8: 24077697
	v_fma_f32 v4, v4, v183, -v16                               // 0000000020FC: D1CB0004 84436F04
	v_floor_f32_e32 v4, v4                                     // 000000002104: 7E083F04
	v_med3_f32 v4, v4, s54, 0                                  // 000000002108: D1D60004 02006D04
	v_cvt_i32_f32_e32 v6, v4                                   // 000000002110: 7E0C1104
	v_add_u32_e32 v17, 0x7f, v6                                // 000000002114: 68220CFF 0000007F
	v_lshlrev_b32_e32 v190, 23, v17                            // 00000000211C: 257C2297
	v_fma_f32 v6, v16, v174, s50                               // 000000002120: D1CB0006 00CB5D10
	v_fma_f32 v192, v5, v174, v6                               // 000000002128: D1CB00C0 041B5D05
	v_fma_f32 v191, v4, v174, v6                               // 000000002130: D1CB00BF 041B5D04
	s_branch 438                                               // 000000002138: BF8201B6 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd14>
	s_setprio 1                                                // 00000000213C: BF8F0001
	v_add_u32_e32 v3, s67, v1                                  // 000000002140: 68060243
	ds_read_b128 v[20:23], v3 offset:8192                      // 000000002144: D9FE2000 14000003
	ds_read_b128 v[24:27], v3 offset:8208                      // 00000000214C: D9FE2010 18000003
	ds_read_b128 v[28:31], v3 offset:12288                     // 000000002154: D9FE3000 1C000003
	ds_read_b128 v[32:35], v3 offset:12304                     // 00000000215C: D9FE3010 20000003
	s_waitcnt lgkmcnt(4)                                       // 000000002164: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[12:19], v[228:235], 0// 000000002168: D3AE0082 0203C90C
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[4:11], v[228:235], 0// 000000002170: D3AE0072 0203C904
	v_add_u32_e32 v3, s67, v172                                // 000000002178: 68075843
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
	s_sub_u32 s30, s3, s30                                     // 0000000021F8: 809E1E03
	s_sub_i32 s30, s30, 0                                      // 0000000021FC: 819E801E
	s_cmp_ge_i32 s30, 32                                       // 000000002200: BF03A01E
	s_cbranch_scc1 69                                          // 000000002204: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x81c>
	s_cmp_lt_i32 s30, 0                                        // 000000002208: BF04801E
	s_cbranch_scc1 583                                         // 00000000220C: BF850247 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x102c>
	v_add_u32_e32 v3, s30, v170                                // 000000002210: 6807541E
	v_and_b32_e32 v4, 4, v175                                  // 000000002214: 26095E84
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
	s_mov_b32 s34, 0                                           // 00000000231C: BEA20080
	s_sub_u32 s30, s3, s34                                     // 000000002320: 809E2203
	s_sub_i32 s30, s30, 32                                     // 000000002324: 819EA01E
	s_cmp_ge_i32 s30, 32                                       // 000000002328: BF03A01E
	s_cbranch_scc1 69                                          // 00000000232C: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x944>
	s_cmp_lt_i32 s30, 0                                        // 000000002330: BF04801E
	s_cbranch_scc1 533                                         // 000000002334: BF850215 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x108c>
	v_add_u32_e32 v3, s30, v170                                // 000000002338: 6807541E
	v_and_b32_e32 v4, 4, v175                                  // 00000000233C: 26095E84
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
	s_sub_u32 s30, s3, s34                                     // 000000002444: 809E2203
	s_sub_i32 s30, s30, 64                                     // 000000002448: 819EC01E
	s_cmp_ge_i32 s30, 32                                       // 00000000244C: BF03A01E
	s_cbranch_scc1 69                                          // 000000002450: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa68>
	s_cmp_lt_i32 s30, 0                                        // 000000002454: BF04801E
	s_cbranch_scc1 484                                         // 000000002458: BF8501E4 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10ec>
	v_add_u32_e32 v3, s30, v170                                // 00000000245C: 6807541E
	v_and_b32_e32 v4, 4, v175                                  // 000000002460: 26095E84
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
	s_mov_b32 s30, 0                                           // 000000002568: BE9E0080
	s_sub_u32 s30, s3, s30                                     // 00000000256C: 809E1E03
	s_sub_i32 s30, s30, 0x60                                   // 000000002570: 819EFF1E 00000060
	s_cmp_ge_i32 s30, 32                                       // 000000002578: BF03A01E
	s_cbranch_scc1 69                                          // 00000000257C: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb94>
	s_cmp_lt_i32 s30, 0                                        // 000000002580: BF04801E
	s_cbranch_scc1 433                                         // 000000002584: BF8501B1 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x114c>
	v_add_u32_e32 v3, s30, v170                                // 000000002588: 6807541E
	v_and_b32_e32 v4, 4, v175                                  // 00000000258C: 26095E84
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
	v_mul_f32_e32 v16, v183, v5                                // 0000000027B0: 0A200BB7
	v_fma_f32 v3, v3, v183, -v16                               // 0000000027B4: D1CB0003 84436F03
	v_floor_f32_e32 v3, v3                                     // 0000000027BC: 7E063F03
	v_med3_f32 v5, v3, s54, 0                                  // 0000000027C0: D1D60005 02006D03
	v_cvt_i32_f32_e32 v3, v5                                   // 0000000027C8: 7E061105
	v_add_u32_e32 v187, 0x7f, v3                               // 0000000027CC: 697606FF 0000007F
	v_lshlrev_b32_e32 v3, 23, v187                             // 0000000027D4: 24077697
	v_fma_f32 v4, v4, v183, -v16                               // 0000000027D8: D1CB0004 84436F04
	v_floor_f32_e32 v4, v4                                     // 0000000027E0: 7E083F04
	v_med3_f32 v4, v4, s54, 0                                  // 0000000027E4: D1D60004 02006D04
	v_cvt_i32_f32_e32 v6, v4                                   // 0000000027EC: 7E0C1104
	v_add_u32_e32 v17, 0x7f, v6                                // 0000000027F0: 68220CFF 0000007F
	v_lshlrev_b32_e32 v190, 23, v17                            // 0000000027F8: 257C2297
	v_fma_f32 v6, v16, v174, s50                               // 0000000027FC: D1CB0006 00CB5D10
	v_fma_f32 v192, v5, v174, v6                               // 000000002804: D1CB00C0 041B5D05
	v_fma_f32 v191, v4, v174, v6                               // 00000000280C: D1CB00BF 041B5D04
	s_mov_b32 s30, s26                                         // 000000002814: BE9E001A
	s_lshl_b32 s66, s8, 8                                      // 000000002818: 8E428808
	s_waitcnt vmcnt(0)                                         // 00000000281C: BF8C0F70
	s_cmp_eq_u32 s59, 0                                        // 000000002820: BF06803B
	s_cselect_b64 s[34:35], -1, 0                              // 000000002824: 85A280C1
	s_cmp_lg_u32 s59, 0                                        // 000000002828: BF07803B
	s_mov_b32 s31, s27                                         // 00000000282C: BE9F001B
	v_mov_b32_e32 v66, 0                                       // 000000002830: 7E840280
	v_mov_b32_e32 v67, 0                                       // 000000002834: 7E860280
	v_mov_b32_e32 v68, 0                                       // 000000002838: 7E880280
	v_mov_b32_e32 v69, 0                                       // 00000000283C: 7E8A0280
	v_mov_b32_e32 v70, 0                                       // 000000002840: 7E8C0280
	v_mov_b32_e32 v71, 0                                       // 000000002844: 7E8E0280
	v_mov_b32_e32 v72, 0                                       // 000000002848: 7E900280
	v_mov_b32_e32 v73, 0                                       // 00000000284C: 7E920280
	v_mov_b32_e32 v74, 0                                       // 000000002850: 7E940280
	v_mov_b32_e32 v75, 0                                       // 000000002854: 7E960280
	v_mov_b32_e32 v76, 0                                       // 000000002858: 7E980280
	v_mov_b32_e32 v77, 0                                       // 00000000285C: 7E9A0280
	v_mov_b32_e32 v78, 0                                       // 000000002860: 7E9C0280
	v_mov_b32_e32 v79, 0                                       // 000000002864: 7E9E0280
	v_mov_b32_e32 v80, 0                                       // 000000002868: 7EA00280
	v_mov_b32_e32 v81, 0                                       // 00000000286C: 7EA20280
	v_mov_b32_e32 v50, 0                                       // 000000002870: 7E640280
	v_mov_b32_e32 v51, 0                                       // 000000002874: 7E660280
	v_mov_b32_e32 v52, 0                                       // 000000002878: 7E680280
	v_mov_b32_e32 v53, 0                                       // 00000000287C: 7E6A0280
	v_mov_b32_e32 v54, 0                                       // 000000002880: 7E6C0280
	v_mov_b32_e32 v55, 0                                       // 000000002884: 7E6E0280
	v_mov_b32_e32 v56, 0                                       // 000000002888: 7E700280
	v_mov_b32_e32 v57, 0                                       // 00000000288C: 7E720280
	v_mov_b32_e32 v58, 0                                       // 000000002890: 7E740280
	v_mov_b32_e32 v59, 0                                       // 000000002894: 7E760280
	v_mov_b32_e32 v60, 0                                       // 000000002898: 7E780280
	v_mov_b32_e32 v61, 0                                       // 00000000289C: 7E7A0280
	v_mov_b32_e32 v62, 0                                       // 0000000028A0: 7E7C0280
	v_mov_b32_e32 v63, 0                                       // 0000000028A4: 7E7E0280
	v_mov_b32_e32 v64, 0                                       // 0000000028A8: 7E800280
	v_mov_b32_e32 v65, 0                                       // 0000000028AC: 7E820280
	v_mov_b32_e32 v34, 0                                       // 0000000028B0: 7E440280
	v_mov_b32_e32 v35, 0                                       // 0000000028B4: 7E460280
	v_mov_b32_e32 v36, 0                                       // 0000000028B8: 7E480280
	v_mov_b32_e32 v37, 0                                       // 0000000028BC: 7E4A0280
	v_mov_b32_e32 v38, 0                                       // 0000000028C0: 7E4C0280
	v_mov_b32_e32 v39, 0                                       // 0000000028C4: 7E4E0280
	v_mov_b32_e32 v40, 0                                       // 0000000028C8: 7E500280
	v_mov_b32_e32 v41, 0                                       // 0000000028CC: 7E520280
	v_mov_b32_e32 v42, 0                                       // 0000000028D0: 7E540280
	v_mov_b32_e32 v43, 0                                       // 0000000028D4: 7E560280
	v_mov_b32_e32 v44, 0                                       // 0000000028D8: 7E580280
	v_mov_b32_e32 v45, 0                                       // 0000000028DC: 7E5A0280
	v_mov_b32_e32 v46, 0                                       // 0000000028E0: 7E5C0280
	v_mov_b32_e32 v47, 0                                       // 0000000028E4: 7E5E0280
	v_mov_b32_e32 v48, 0                                       // 0000000028E8: 7E600280
	v_mov_b32_e32 v49, 0                                       // 0000000028EC: 7E620280
	v_mov_b32_e32 v18, 0                                       // 0000000028F0: 7E240280
	v_mov_b32_e32 v19, 0                                       // 0000000028F4: 7E260280
	v_mov_b32_e32 v20, 0                                       // 0000000028F8: 7E280280
	v_mov_b32_e32 v21, 0                                       // 0000000028FC: 7E2A0280
	v_mov_b32_e32 v22, 0                                       // 000000002900: 7E2C0280
	v_mov_b32_e32 v23, 0                                       // 000000002904: 7E2E0280
	v_mov_b32_e32 v24, 0                                       // 000000002908: 7E300280
	v_mov_b32_e32 v25, 0                                       // 00000000290C: 7E320280
	v_mov_b32_e32 v26, 0                                       // 000000002910: 7E340280
	v_mov_b32_e32 v27, 0                                       // 000000002914: 7E360280
	v_mov_b32_e32 v28, 0                                       // 000000002918: 7E380280
	v_mov_b32_e32 v29, 0                                       // 00000000291C: 7E3A0280
	v_mov_b32_e32 v30, 0                                       // 000000002920: 7E3C0280
	v_mov_b32_e32 v31, 0                                       // 000000002924: 7E3E0280
	v_mov_b32_e32 v32, 0                                       // 000000002928: 7E400280
	v_mov_b32_e32 v33, 0                                       // 00000000292C: 7E420280
	s_cbranch_scc1 37                                          // 000000002930: BF850025 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xec8>
	s_cmp_ge_u32 s65, 2                                        // 000000002934: BF098241
	s_cbranch_scc1 58                                          // 000000002938: BF85003A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf24>
	s_cmp_ge_u32 s65, 3                                        // 00000000293C: BF098341
	s_cbranch_scc1 86                                          // 000000002940: BF850056 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf9c>
	s_cmp_lt_u32 s65, 4                                        // 000000002944: BF0A8441
	s_cbranch_scc1 30                                          // 000000002948: BF85001E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xec4>
	s_add_u32 s53, s53, 0xc000                                 // 00000000294C: 8035FF35 0000C000
	s_and_b32 s53, s53, 0xc000                                 // 000000002954: 8635FF35 0000C000
	s_mul_i32 s48, s8, 0x180                                   // 00000000295C: 9230FF08 00000180
	s_or_b32 s53, s56, s53                                     // 000000002964: 87353538
	s_add_u32 m0, s53, 0                                       // 000000002968: 807C8035
	s_mul_i32 s49, s8, 0x1a0                                   // 00000000296C: 9231FF08 000001A0
	buffer_load_dwordx4 v176, s[24:27], s48 offen lds          // 000000002974: E05D1000 300600B0
	s_add_u32 m0, s53, 0x1000                                  // 00000000297C: 807CFF35 00001000
	s_mul_i32 s67, s8, 0x1c0                                   // 000000002984: 9243FF08 000001C0
	s_mul_i32 s68, s8, 0x1e0                                   // 00000000298C: 9244FF08 000001E0
	buffer_load_dwordx4 v176, s[24:27], s49 offen lds          // 000000002994: E05D1000 310600B0
	s_add_u32 m0, s53, 0x2000                                  // 00000000299C: 807CFF35 00002000
	s_nop 0                                                    // 0000000029A4: BF800000
	buffer_load_dwordx4 v176, s[24:27], s67 offen lds          // 0000000029A8: E05D1000 430600B0
	s_add_u32 m0, s53, 0x3000                                  // 0000000029B0: 807CFF35 00003000
	s_nop 0                                                    // 0000000029B8: BF800000
	buffer_load_dwordx4 v176, s[24:27], s68 offen lds          // 0000000029BC: E05D1000 440600B0
	s_waitcnt vmcnt(0)                                         // 0000000029C4: BF8C0F70
	s_barrier                                                  // 0000000029C8: BF8A0000
	s_add_u32 s68, s65, -1                                     // 0000000029CC: 8044C141
	s_lshl_b32 s67, s8, 9                                      // 0000000029D0: 8E438908
	s_cmp_lt_i32 s62, 1                                        // 0000000029D4: BF04813E
	s_mul_i32 s68, s68, s58                                    // 0000000029D8: 92443A44
	s_cbranch_scc1 5                                           // 0000000029DC: BF850005 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xef4>
	s_cmp_lt_i32 s62, 2                                        // 0000000029E0: BF04823E
	s_cbranch_scc0 8                                           // 0000000029E4: BF840008 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf08>
	s_mov_b32 s53, 0                                           // 0000000029E8: BEB50080
	v_mov_b32_e32 v186, 0                                      // 0000000029EC: 7F740280
	s_branch 796                                               // 0000000029F0: BF82031C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1b64>
	s_cmp_lg_u32 s62, 0                                        // 0000000029F4: BF07803E
	s_mov_b32 s53, 0                                           // 0000000029F8: BEB50080
	s_cbranch_scc0 70                                          // 0000000029FC: BF840046 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1018>
	v_mov_b32_e32 v186, 0                                      // 000000002A00: 7F740280
	s_branch 2036                                              // 000000002A04: BF8207F4 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2ed8>
	s_cmp_eq_u32 s62, 2                                        // 000000002A08: BF06823E
	s_mov_b32 s53, 0                                           // 000000002A0C: BEB50080
	s_cbranch_scc0 63                                          // 000000002A10: BF84003F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1010>
	v_mov_b32_e32 v186, 0                                      // 000000002A14: 7F740280
	v_mov_b32_e32 v188, v16                                    // 000000002A18: 7F780310
	v_mov_b32_e32 v189, v17                                    // 000000002A1C: 7F7A0311
	s_branch 1407                                              // 000000002A20: BF82057F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2520>
	s_add_u32 s48, s53, 0x4000                                 // 000000002A24: 8030FF35 00004000
	s_and_b32 s48, s48, 0xc000                                 // 000000002A2C: 8630FF30 0000C000
	s_add_u32 s48, s57, s48                                    // 000000002A34: 80303039
	s_add_u32 m0, s48, 0                                       // 000000002A38: 807C8030
	s_mul_i32 s49, s8, 0xc0                                    // 000000002A3C: 9231FF08 000000C0
	buffer_load_dwordx4 v178, s[28:31], s58 offen lds          // 000000002A44: E05D1000 3A0700B2
	s_add_u32 m0, s48, 0x1000                                  // 000000002A4C: 807CFF30 00001000
	s_mul_i32 s68, s8, 0x84                                    // 000000002A54: 9244FF08 00000084
	s_mul_i32 s69, s8, 0xc4                                    // 000000002A5C: 9245FF08 000000C4
	buffer_load_dwordx4 v178, s[28:31], s49 offen lds          // 000000002A64: E05D1000 310700B2
	s_add_u32 m0, s48, 0x2000                                  // 000000002A6C: 807CFF30 00002000
	s_nop 0                                                    // 000000002A74: BF800000
	buffer_load_dwordx4 v178, s[28:31], s68 offen lds          // 000000002A78: E05D1000 440700B2
	s_add_u32 m0, s48, 0x3000                                  // 000000002A80: 807CFF30 00003000
	s_nop 0                                                    // 000000002A88: BF800000
	buffer_load_dwordx4 v178, s[28:31], s69 offen lds          // 000000002A8C: E05D1000 450700B2
	s_cmp_lt_u32 s65, 3                                        // 000000002A94: BF0A8341
	s_cbranch_scc1 65450                                       // 000000002A98: BF85FFAA <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xe44>
	s_xor_b32 s48, s67, 0x8000                                 // 000000002A9C: 8830FF43 00008000
	s_add_u32 s48, s56, s48                                    // 000000002AA4: 80303038
	s_add_u32 m0, s48, 0                                       // 000000002AA8: 807C8030
	s_mul_i32 s49, s8, 0x120                                   // 000000002AAC: 9231FF08 00000120
	buffer_load_dwordx4 v176, s[24:27], s66 offen lds          // 000000002AB4: E05D1000 420600B0
	s_add_u32 m0, s48, 0x1000                                  // 000000002ABC: 807CFF30 00001000
	s_mul_i32 s67, s8, 0x140                                   // 000000002AC4: 9243FF08 00000140
	s_mul_i32 s68, s8, 0x160                                   // 000000002ACC: 9244FF08 00000160
	buffer_load_dwordx4 v176, s[24:27], s49 offen lds          // 000000002AD4: E05D1000 310600B0
	s_add_u32 m0, s48, 0x2000                                  // 000000002ADC: 807CFF30 00002000
	s_nop 0                                                    // 000000002AE4: BF800000
	buffer_load_dwordx4 v176, s[24:27], s67 offen lds          // 000000002AE8: E05D1000 430600B0
	s_add_u32 m0, s48, 0x3000                                  // 000000002AF0: 807CFF30 00003000
	s_nop 0                                                    // 000000002AF8: BF800000
	buffer_load_dwordx4 v176, s[24:27], s68 offen lds          // 000000002AFC: E05D1000 440600B0
	s_cmp_lt_u32 s65, 4                                        // 000000002B04: BF0A8441
	s_cbranch_scc1 65454                                       // 000000002B08: BF85FFAE <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xec4>
	s_branch 65423                                             // 000000002B0C: BF82FF8F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xe4c>
	v_mov_b32_e32 v186, 0                                      // 000000002B10: 7F740280
	s_branch 1968                                              // 000000002B14: BF8207B0 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2ed8>
	v_mov_b32_e32 v186, 0                                      // 000000002B18: 7F740280
	s_mov_b32 s53, s62                                         // 000000002B1C: BEB5003E
	v_mov_b32_e32 v188, v16                                    // 000000002B20: 7F780310
	v_mov_b32_e32 v189, v17                                    // 000000002B24: 7F7A0311
	s_branch 96                                                // 000000002B28: BF820060 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x11ac>
	v_mov_b32_e32 v3, v2                                       // 000000002B2C: 7E060302
	v_mov_b32_e32 v4, v2                                       // 000000002B30: 7E080302
	v_mov_b32_e32 v5, v2                                       // 000000002B34: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000002B38: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000002B3C: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 000000002B40: 7E100302
	v_mov_b32_e32 v9, v2                                       // 000000002B44: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000002B48: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000002B4C: 7E160302
	v_mov_b32_e32 v12, v2                                      // 000000002B50: 7E180302
	v_mov_b32_e32 v13, v2                                      // 000000002B54: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000002B58: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000002B5C: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 000000002B60: 7E200302
	v_mov_b32_e32 v17, v2                                      // 000000002B64: 7E220302
	v_mov_b64_e32 v[144:145], v[16:17]                         // 000000002B68: 7F207110
	v_mov_b64_e32 v[142:143], v[14:15]                         // 000000002B6C: 7F1C710E
	v_mov_b64_e32 v[140:141], v[12:13]                         // 000000002B70: 7F18710C
	v_mov_b64_e32 v[138:139], v[10:11]                         // 000000002B74: 7F14710A
	v_mov_b64_e32 v[136:137], v[8:9]                           // 000000002B78: 7F107108
	v_mov_b64_e32 v[134:135], v[6:7]                           // 000000002B7C: 7F0C7106
	v_mov_b64_e32 v[132:133], v[4:5]                           // 000000002B80: 7F087104
	v_mov_b64_e32 v[130:131], v[2:3]                           // 000000002B84: 7F047102
	s_branch 64996                                             // 000000002B88: BF82FDE4 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x81c>
	v_mov_b32_e32 v3, v2                                       // 000000002B8C: 7E060302
	v_mov_b32_e32 v4, v2                                       // 000000002B90: 7E080302
	v_mov_b32_e32 v5, v2                                       // 000000002B94: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000002B98: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000002B9C: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 000000002BA0: 7E100302
	v_mov_b32_e32 v9, v2                                       // 000000002BA4: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000002BA8: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000002BAC: 7E160302
	v_mov_b32_e32 v12, v2                                      // 000000002BB0: 7E180302
	v_mov_b32_e32 v13, v2                                      // 000000002BB4: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000002BB8: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000002BBC: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 000000002BC0: 7E200302
	v_mov_b32_e32 v17, v2                                      // 000000002BC4: 7E220302
	v_mov_b64_e32 v[128:129], v[16:17]                         // 000000002BC8: 7F007110
	v_mov_b64_e32 v[126:127], v[14:15]                         // 000000002BCC: 7EFC710E
	v_mov_b64_e32 v[124:125], v[12:13]                         // 000000002BD0: 7EF8710C
	v_mov_b64_e32 v[122:123], v[10:11]                         // 000000002BD4: 7EF4710A
	v_mov_b64_e32 v[120:121], v[8:9]                           // 000000002BD8: 7EF07108
	v_mov_b64_e32 v[118:119], v[6:7]                           // 000000002BDC: 7EEC7106
	v_mov_b64_e32 v[116:117], v[4:5]                           // 000000002BE0: 7EE87104
	v_mov_b64_e32 v[114:115], v[2:3]                           // 000000002BE4: 7EE47102
	s_branch 65046                                             // 000000002BE8: BF82FE16 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x944>
	v_mov_b32_e32 v3, v2                                       // 000000002BEC: 7E060302
	v_mov_b32_e32 v4, v2                                       // 000000002BF0: 7E080302
	v_mov_b32_e32 v5, v2                                       // 000000002BF4: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000002BF8: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000002BFC: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 000000002C00: 7E100302
	v_mov_b32_e32 v9, v2                                       // 000000002C04: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000002C08: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000002C0C: 7E160302
	v_mov_b32_e32 v12, v2                                      // 000000002C10: 7E180302
	v_mov_b32_e32 v13, v2                                      // 000000002C14: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000002C18: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000002C1C: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 000000002C20: 7E200302
	v_mov_b32_e32 v17, v2                                      // 000000002C24: 7E220302
	v_mov_b64_e32 v[112:113], v[16:17]                         // 000000002C28: 7EE07110
	v_mov_b64_e32 v[110:111], v[14:15]                         // 000000002C2C: 7EDC710E
	v_mov_b64_e32 v[108:109], v[12:13]                         // 000000002C30: 7ED8710C
	v_mov_b64_e32 v[106:107], v[10:11]                         // 000000002C34: 7ED4710A
	v_mov_b64_e32 v[104:105], v[8:9]                           // 000000002C38: 7ED07108
	v_mov_b64_e32 v[102:103], v[6:7]                           // 000000002C3C: 7ECC7106
	v_mov_b64_e32 v[100:101], v[4:5]                           // 000000002C40: 7EC87104
	v_mov_b64_e32 v[98:99], v[2:3]                             // 000000002C44: 7EC47102
	s_branch 65095                                             // 000000002C48: BF82FE47 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa68>
	v_mov_b32_e32 v3, v2                                       // 000000002C4C: 7E060302
	v_mov_b32_e32 v4, v2                                       // 000000002C50: 7E080302
	v_mov_b32_e32 v5, v2                                       // 000000002C54: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000002C58: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000002C5C: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 000000002C60: 7E100302
	v_mov_b32_e32 v9, v2                                       // 000000002C64: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000002C68: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000002C6C: 7E160302
	v_mov_b32_e32 v12, v2                                      // 000000002C70: 7E180302
	v_mov_b32_e32 v13, v2                                      // 000000002C74: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000002C78: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000002C7C: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 000000002C80: 7E200302
	v_mov_b32_e32 v17, v2                                      // 000000002C84: 7E220302
	v_mov_b64_e32 v[96:97], v[16:17]                           // 000000002C88: 7EC07110
	v_mov_b64_e32 v[94:95], v[14:15]                           // 000000002C8C: 7EBC710E
	v_mov_b64_e32 v[92:93], v[12:13]                           // 000000002C90: 7EB8710C
	v_mov_b64_e32 v[90:91], v[10:11]                           // 000000002C94: 7EB4710A
	v_mov_b64_e32 v[88:89], v[8:9]                             // 000000002C98: 7EB07108
	v_mov_b64_e32 v[86:87], v[6:7]                             // 000000002C9C: 7EAC7106
	v_mov_b64_e32 v[84:85], v[4:5]                             // 000000002CA0: 7EA87104
	v_mov_b64_e32 v[82:83], v[2:3]                             // 000000002CA4: 7EA47102
	s_branch 65146                                             // 000000002CA8: BF82FE7A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb94>
	s_add_u32 s48, s53, 1                                      // 000000002CAC: 80308135
	s_cmp_ge_u32 s48, s15                                      // 000000002CB0: BF090F30
	s_cbranch_scc1 2490                                        // 000000002CB4: BF8509BA <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x38a0>
	s_setprio 0                                                // 000000002CB8: BF8F0000
	v_fma_f32 v4, v130, v184, v192                             // 000000002CBC: D1CB0004 07037182
	v_fma_f32 v5, v131, v184, v192                             // 000000002CC4: D1CB0005 07037183
	v_fma_f32 v6, v132, v184, v192                             // 000000002CCC: D1CB0006 07037184
	v_fma_f32 v7, v133, v184, v192                             // 000000002CD4: D1CB0007 07037185
	v_fma_f32 v8, v134, v184, v192                             // 000000002CDC: D1CB0008 07037186
	v_fma_f32 v9, v135, v184, v192                             // 000000002CE4: D1CB0009 07037187
	v_fma_f32 v10, v136, v184, v192                            // 000000002CEC: D1CB000A 07037188
	v_fma_f32 v11, v137, v184, v192                            // 000000002CF4: D1CB000B 07037189
	v_fma_f32 v12, v138, v184, v192                            // 000000002CFC: D1CB000C 0703718A
	v_fma_f32 v13, v139, v184, v192                            // 000000002D04: D1CB000D 0703718B
	v_fma_f32 v14, v140, v184, v192                            // 000000002D0C: D1CB000E 0703718C
	v_fma_f32 v15, v141, v184, v192                            // 000000002D14: D1CB000F 0703718D
	v_fma_f32 v16, v142, v184, v192                            // 000000002D1C: D1CB0010 0703718E
	v_fma_f32 v17, v143, v184, v192                            // 000000002D24: D1CB0011 0703718F
	v_fma_f32 v130, v144, v184, v192                           // 000000002D2C: D1CB0082 07037190
	v_fma_f32 v131, v145, v184, v192                           // 000000002D34: D1CB0083 07037191
	v_fma_f32 v114, v114, v184, v192                           // 000000002D3C: D1CB0072 07037172
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 000000002D44: D1DD0004 02010104
	v_fma_f32 v115, v115, v184, v192                           // 000000002D4C: D1CB0073 07037173
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 000000002D54: D1DD0008 02010108
	v_fma_f32 v116, v116, v184, v192                           // 000000002D5C: D1CB0074 07037174
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 000000002D64: D1DD000C 0201010C
	v_fma_f32 v117, v117, v184, v192                           // 000000002D6C: D1CB0075 07037175
	v_cvt_pk_u8_f32 v16, v16, 0, 0                             // 000000002D74: D1DD0010 02010110
	v_fma_f32 v118, v118, v184, v192                           // 000000002D7C: D1CB0076 07037176
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 000000002D84: D1DD0004 04110305
	v_fma_f32 v119, v119, v184, v192                           // 000000002D8C: D1CB0077 07037177
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 000000002D94: D1DD0005 04210309
	v_fma_f32 v8, v120, v184, v192                             // 000000002D9C: D1CB0008 07037178
	v_cvt_pk_u8_f32 v9, v13, 1, v12                            // 000000002DA4: D1DD0009 0431030D
	v_fma_f32 v12, v121, v184, v192                            // 000000002DAC: D1CB000C 07037179
	v_cvt_pk_u8_f32 v13, v17, 1, v16                           // 000000002DB4: D1DD000D 04410311
	v_fma_f32 v16, v122, v184, v192                            // 000000002DBC: D1CB0010 0703717A
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 000000002DC4: D1DD0004 04110506
	v_fma_f32 v17, v123, v184, v192                            // 000000002DCC: D1CB0011 0703717B
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 000000002DD4: D1DD0005 0415050A
	v_fma_f32 v10, v124, v184, v192                            // 000000002DDC: D1CB000A 0703717C
	v_cvt_pk_u8_f32 v6, v14, 2, v9                             // 000000002DE4: D1DD0006 0425050E
	v_fma_f32 v14, v125, v184, v192                            // 000000002DEC: D1CB000E 0703717D
	v_cvt_pk_u8_f32 v9, v130, 2, v13                           // 000000002DF4: D1DD0009 04350582
	v_fma_f32 v13, v126, v184, v192                            // 000000002DFC: D1CB000D 0703717E
	v_cvt_pk_u8_f32 v4, v7, 3, v4                              // 000000002E04: D1DD0004 04110707
	v_fma_f32 v120, v127, v184, v192                           // 000000002E0C: D1CB0078 0703717F
	v_cvt_pk_u8_f32 v5, v11, 3, v5                             // 000000002E14: D1DD0005 0415070B
	v_fma_f32 v11, v128, v184, v192                            // 000000002E1C: D1CB000B 07037180
	v_cvt_pk_u8_f32 v6, v15, 3, v6                             // 000000002E24: D1DD0006 0419070F
	v_fma_f32 v15, v129, v184, v192                            // 000000002E2C: D1CB000F 07037181
	v_cvt_pk_u8_f32 v7, v131, 3, v9                            // 000000002E34: D1DD0007 04250783
	v_fma_f32 v98, v98, v184, v191                             // 000000002E3C: D1CB0062 06FF7162
	v_cvt_pk_u8_f32 v9, v114, 0, 0                             // 000000002E44: D1DD0009 02010172
	v_fma_f32 v99, v99, v184, v191                             // 000000002E4C: D1CB0063 06FF7163
	v_cvt_pk_u8_f32 v114, v118, 0, 0                           // 000000002E54: D1DD0072 02010176
	v_fma_f32 v100, v100, v184, v191                           // 000000002E5C: D1CB0064 06FF7164
	v_cvt_pk_u8_f32 v16, v16, 0, 0                             // 000000002E64: D1DD0010 02010110
	v_fma_f32 v101, v101, v184, v191                           // 000000002E6C: D1CB0065 06FF7165
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 000000002E74: D1DD000D 0201010D
	v_fma_f32 v102, v102, v184, v191                           // 000000002E7C: D1CB0066 06FF7166
	v_cvt_pk_u8_f32 v9, v115, 1, v9                            // 000000002E84: D1DD0009 04250373
	v_fma_f32 v103, v103, v184, v191                           // 000000002E8C: D1CB0067 06FF7167
	v_cvt_pk_u8_f32 v114, v119, 1, v114                        // 000000002E94: D1DD0072 05C90377
	v_fma_f32 v104, v104, v184, v191                           // 000000002E9C: D1CB0068 06FF7168
	v_cvt_pk_u8_f32 v16, v17, 1, v16                           // 000000002EA4: D1DD0010 04410311
	v_fma_f32 v17, v105, v184, v191                            // 000000002EAC: D1CB0011 06FF7169
	v_cvt_pk_u8_f32 v13, v120, 1, v13                          // 000000002EB4: D1DD000D 04350378
	v_fma_f32 v105, v106, v184, v191                           // 000000002EBC: D1CB0069 06FF716A
	v_cvt_pk_u8_f32 v9, v116, 2, v9                            // 000000002EC4: D1DD0009 04250574
	v_fma_f32 v106, v107, v184, v191                           // 000000002ECC: D1CB006A 06FF716B
	v_cvt_pk_u8_f32 v107, v8, 2, v114                          // 000000002ED4: D1DD006B 05C90508
	v_fma_f32 v108, v108, v184, v191                           // 000000002EDC: D1CB006C 06FF716C
	v_cvt_pk_u8_f32 v10, v10, 2, v16                           // 000000002EE4: D1DD000A 0441050A
	v_fma_f32 v16, v109, v184, v191                            // 000000002EEC: D1CB0010 06FF716D
	v_cvt_pk_u8_f32 v11, v11, 2, v13                           // 000000002EF4: D1DD000B 0435050B
	v_fma_f32 v13, v110, v184, v191                            // 000000002EFC: D1CB000D 06FF716E
	v_cvt_pk_u8_f32 v8, v117, 3, v9                            // 000000002F04: D1DD0008 04250775
	v_fma_f32 v109, v111, v184, v191                           // 000000002F0C: D1CB006D 06FF716F
	v_cvt_pk_u8_f32 v9, v12, 3, v107                           // 000000002F14: D1DD0009 05AD070C
	v_fma_f32 v12, v112, v184, v191                            // 000000002F1C: D1CB000C 06FF7170
	v_cvt_pk_u8_f32 v10, v14, 3, v10                           // 000000002F24: D1DD000A 0429070E
	v_fma_f32 v14, v113, v184, v191                            // 000000002F2C: D1CB000E 06FF7171
	v_cvt_pk_u8_f32 v11, v15, 3, v11                           // 000000002F34: D1DD000B 042D070F
	v_fma_f32 v15, v82, v184, v191                             // 000000002F3C: D1CB000F 06FF7152
	v_cvt_pk_u8_f32 v82, v98, 0, 0                             // 000000002F44: D1DD0052 02010162
	v_fma_f32 v83, v83, v184, v191                             // 000000002F4C: D1CB0053 06FF7153
	v_cvt_pk_u8_f32 v98, v102, 0, 0                            // 000000002F54: D1DD0062 02010166
	v_fma_f32 v84, v84, v184, v191                             // 000000002F5C: D1CB0054 06FF7154
	v_cvt_pk_u8_f32 v102, v105, 0, 0                           // 000000002F64: D1DD0066 02010169
	v_fma_f32 v85, v85, v184, v191                             // 000000002F6C: D1CB0055 06FF7155
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 000000002F74: D1DD000D 0201010D
	v_fma_f32 v86, v86, v184, v191                             // 000000002F7C: D1CB0056 06FF7156
	v_cvt_pk_u8_f32 v82, v99, 1, v82                           // 000000002F84: D1DD0052 05490363
	v_fma_f32 v87, v87, v184, v191                             // 000000002F8C: D1CB0057 06FF7157
	v_cvt_pk_u8_f32 v98, v103, 1, v98                          // 000000002F94: D1DD0062 05890367
	v_fma_f32 v88, v88, v184, v191                             // 000000002F9C: D1CB0058 06FF7158
	v_cvt_pk_u8_f32 v99, v106, 1, v102                         // 000000002FA4: D1DD0063 0599036A
	v_fma_f32 v89, v89, v184, v191                             // 000000002FAC: D1CB0059 06FF7159
	v_cvt_pk_u8_f32 v13, v109, 1, v13                          // 000000002FB4: D1DD000D 0435036D
	v_fma_f32 v90, v90, v184, v191                             // 000000002FBC: D1CB005A 06FF715A
	v_cvt_pk_u8_f32 v82, v100, 2, v82                          // 000000002FC4: D1DD0052 05490564
	v_fma_f32 v91, v91, v184, v191                             // 000000002FCC: D1CB005B 06FF715B
	v_cvt_pk_u8_f32 v98, v104, 2, v98                          // 000000002FD4: D1DD0062 05890568
	v_fma_f32 v92, v92, v184, v191                             // 000000002FDC: D1CB005C 06FF715C
	v_cvt_pk_u8_f32 v99, v108, 2, v99                          // 000000002FE4: D1DD0063 058D056C
	v_fma_f32 v93, v93, v184, v191                             // 000000002FEC: D1CB005D 06FF715D
	v_cvt_pk_u8_f32 v12, v12, 2, v13                           // 000000002FF4: D1DD000C 0435050C
	v_fma_f32 v13, v94, v184, v191                             // 000000002FFC: D1CB000D 06FF715E
	v_cvt_pk_u8_f32 v154, v101, 3, v82                         // 000000003004: D1DD009A 05490765
	v_fma_f32 v82, v95, v184, v191                             // 00000000300C: D1CB0052 06FF715F
	v_cvt_pk_u8_f32 v155, v17, 3, v98                          // 000000003014: D1DD009B 05890711
	v_fma_f32 v17, v96, v184, v191                             // 00000000301C: D1CB0011 06FF7160
	v_cvt_pk_u8_f32 v156, v16, 3, v99                          // 000000003024: D1DD009C 058D0710
	v_fma_f32 v16, v97, v184, v191                             // 00000000302C: D1CB0010 06FF7161
	v_cvt_pk_u8_f32 v157, v14, 3, v12                          // 000000003034: D1DD009D 0431070E
	v_cvt_pk_u8_f32 v12, v15, 0, 0                             // 00000000303C: D1DD000C 0201010F
	v_cvt_pk_u8_f32 v14, v86, 0, 0                             // 000000003044: D1DD000E 02010156
	v_cvt_pk_u8_f32 v15, v90, 0, 0                             // 00000000304C: D1DD000F 0201015A
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 000000003054: D1DD000D 0201010D
	v_cvt_pk_u8_f32 v12, v83, 1, v12                           // 00000000305C: D1DD000C 04310353
	v_cvt_pk_u8_f32 v14, v87, 1, v14                           // 000000003064: D1DD000E 04390357
	v_cvt_pk_u8_f32 v15, v91, 1, v15                           // 00000000306C: D1DD000F 043D035B
	v_cvt_pk_u8_f32 v13, v82, 1, v13                           // 000000003074: D1DD000D 04350352
	v_cvt_pk_u8_f32 v12, v84, 2, v12                           // 00000000307C: D1DD000C 04310554
	v_cvt_pk_u8_f32 v14, v88, 2, v14                           // 000000003084: D1DD000E 04390558
	v_cvt_pk_u8_f32 v15, v92, 2, v15                           // 00000000308C: D1DD000F 043D055C
	v_cvt_pk_u8_f32 v13, v17, 2, v13                           // 000000003094: D1DD000D 04350511
	v_cvt_pk_u8_f32 v158, v85, 3, v12                          // 00000000309C: D1DD009E 04310755
	v_cvt_pk_u8_f32 v159, v89, 3, v14                          // 0000000030A4: D1DD009F 04390759
	v_cvt_pk_u8_f32 v160, v93, 3, v15                          // 0000000030AC: D1DD00A0 043D075D
	v_cvt_pk_u8_f32 v161, v16, 3, v13                          // 0000000030B4: D1DD00A1 04350710
	ds_read_b128 v[86:89], v1 offset:16384                     // 0000000030BC: D9FE4000 56000001
	ds_read_b128 v[90:93], v1 offset:16400                     // 0000000030C4: D9FE4010 5A000001
	ds_read_b128 v[94:97], v1 offset:20480                     // 0000000030CC: D9FE5000 5E000001
	ds_read_b128 v[98:101], v1 offset:20496                    // 0000000030D4: D9FE5010 62000001
	s_barrier                                                  // 0000000030DC: BF8A0000
	s_setprio 1                                                // 0000000030E0: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[4:11], 0// 0000000030E4: D3AD000C 02020992
	v_mfma_f32_16x16x128_f8f6f4 v[82:85], v[146:153], v[154:161], 0// 0000000030EC: D3AD0052 02033592
	ds_read_b128 v[162:165], v1 offset:24576                   // 0000000030F4: D9FE6000 A2000001
	ds_read_b128 v[166:169], v1 offset:24592                   // 0000000030FC: D9FE6010 A6000001
	ds_read_b128 v[192:195], v1 offset:28672                   // 000000003104: D9FE7000 C0000001
	ds_read_b128 v[196:199], v1 offset:28688                   // 00000000310C: D9FE7010 C4000001
	s_waitcnt lgkmcnt(4)                                       // 000000003114: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[86:93], v[228:235], 0// 000000003118: D3AE0082 0203C956
	ds_read_b128 v[200:203], v172 offset:16384                 // 000000003120: D9FE4000 C80000AC
	ds_read_b128 v[204:207], v172 offset:16400                 // 000000003128: D9FE4010 CC0000AC
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[94:101], v[228:235], 0// 000000003130: D3AE0072 0203C95E
	ds_read_b128 v[208:211], v172 offset:20480                 // 000000003138: D9FE5000 D00000AC
	ds_read_b128 v[212:215], v172 offset:20496                 // 000000003140: D9FE5010 D40000AC
	s_waitcnt lgkmcnt(4)                                       // 000000003148: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[162:169], v[228:235], 0// 00000000314C: D3AE0062 0203C9A2
	ds_read_b128 v[162:165], v172 offset:24576                 // 000000003154: D9FE6000 A20000AC
	ds_read_b128 v[166:169], v172 offset:24592                 // 00000000315C: D9FE6010 A60000AC
	s_min_u32 s48, s67, s68                                    // 000000003164: 83B04443
	s_add_u32 m0, s56, 0                                       // 000000003168: 807C8038
	s_nop 0                                                    // 00000000316C: BF800000
	buffer_load_dwordx4 v176, s[24:27], s48 offen lds          // 000000003170: E05D1000 300600B0
	v_mul_f32_e32 v3, v3, v12                                  // 000000003178: 0A061903
	v_add_f32_e32 v3, v186, v3                                 // 00000000317C: 020607BA
	v_mul_f32_e32 v16, v190, v82                               // 000000003180: 0A20A5BE
	v_add_f32_e32 v186, v3, v16                                // 000000003184: 03742103
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[192:199], v[228:235], 0// 000000003188: D3AE0052 0203C9C0
	ds_read_b128 v[190:193], v172 offset:28672                 // 000000003190: D9FE7000 BE0000AC
	ds_read_b128 v[194:197], v172 offset:28688                 // 000000003198: D9FE7010 C20000AC
	s_add_u32 m0, s56, 0x2000                                  // 0000000031A0: 807CFF38 00002000
	s_nop 0                                                    // 0000000031A8: BF800000
	buffer_load_dwordx4 v177, s[24:27], s48 offen lds          // 0000000031AC: E05D1000 300600B1
	s_waitcnt lgkmcnt(4)                                       // 0000000031B4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[200:207], v[236:243], v[130:145]// 0000000031B8: D3AE0082 060BD9C8
	ds_read_b64_tr_b8 v[198:199], v185                         // 0000000031C0: D9C40000 C60000B9
	ds_read_b64_tr_b8 v[200:201], v185 offset:1024             // 0000000031C8: D9C40400 C80000B9
	ds_read_b64_tr_b8 v[202:203], v185 offset:2048             // 0000000031D0: D9C40800 CA0000B9
	ds_read_b64_tr_b8 v[204:205], v185 offset:3072             // 0000000031D8: D9C40C00 CC0000B9
	s_min_u32 s48, s66, s68                                    // 0000000031E0: 83B04442
	s_add_u32 m0, s57, 0x8000                                  // 0000000031E4: 807CFF39 00008000
	s_nop 0                                                    // 0000000031EC: BF800000
	buffer_load_dwordx4 v178, s[28:31], s48 offen lds          // 0000000031F0: E05D1000 300700B2
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[208:215], v[236:243], v[114:129]// 0000000031F8: D3AE0072 05CBD9D0
	ds_read_b64_tr_b8 v[206:207], v185 offset:256              // 000000003200: D9C40100 CE0000B9
	ds_read_b64_tr_b8 v[208:209], v185 offset:1280             // 000000003208: D9C40500 D00000B9
	ds_read_b64_tr_b8 v[210:211], v185 offset:2304             // 000000003210: D9C40900 D20000B9
	ds_read_b64_tr_b8 v[212:213], v185 offset:3328             // 000000003218: D9C40D00 D40000B9
	s_add_u32 m0, s57, 0xa000                                  // 000000003220: 807CFF39 0000A000
	s_nop 0                                                    // 000000003228: BF800000
	buffer_load_dwordx4 v179, s[28:31], s48 offen lds          // 00000000322C: E05D1000 300700B3
	s_add_u32 s67, s67, s58                                    // 000000003234: 80433A43
	s_add_u32 s66, s66, s58                                    // 000000003238: 80423A42
	v_max_f32_e32 v3, v130, v131                               // 00000000323C: 16070782
	v_max3_f32 v3, v132, v133, v3                              // 000000003240: D1D30003 040F0B84
	v_max3_f32 v3, v134, v135, v3                              // 000000003248: D1D30003 040F0F86
	v_max3_f32 v3, v136, v137, v3                              // 000000003250: D1D30003 040F1388
	v_max3_f32 v3, v138, v139, v3                              // 000000003258: D1D30003 040F178A
	v_max3_f32 v3, v140, v141, v3                              // 000000003260: D1D30003 040F1B8C
	v_max3_f32 v3, v142, v143, v3                              // 000000003268: D1D30003 040F1F8E
	v_max3_f32 v3, v144, v145, v3                              // 000000003270: D1D30003 040F2390
	s_waitcnt lgkmcnt(8)                                       // 000000003278: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[162:169], v[236:243], v[98:113]// 00000000327C: D3AE0062 058BD9A2
	ds_read_b64_tr_b8 v[162:163], v185 offset:512              // 000000003284: D9C40200 A20000B9
	ds_read_b64_tr_b8 v[164:165], v185 offset:1536             // 00000000328C: D9C40600 A40000B9
	ds_read_b64_tr_b8 v[166:167], v185 offset:2560             // 000000003294: D9C40A00 A60000B9
	ds_read_b64_tr_b8 v[168:169], v185 offset:3584             // 00000000329C: D9C40E00 A80000B9
	v_max_f32_e32 v12, v114, v115                              // 0000000032A4: 1618E772
	v_max3_f32 v12, v116, v117, v12                            // 0000000032A8: D1D3000C 0432EB74
	v_max3_f32 v12, v118, v119, v12                            // 0000000032B0: D1D3000C 0432EF76
	v_max3_f32 v12, v120, v121, v12                            // 0000000032B8: D1D3000C 0432F378
	v_max3_f32 v12, v122, v123, v12                            // 0000000032C0: D1D3000C 0432F77A
	v_max3_f32 v12, v124, v125, v12                            // 0000000032C8: D1D3000C 0432FB7C
	v_max3_f32 v12, v126, v127, v12                            // 0000000032D0: D1D3000C 0432FF7E
	v_max3_f32 v12, v128, v129, v12                            // 0000000032D8: D1D3000C 04330380
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[190:197], v[236:243], v[82:97]// 0000000032E0: D3AE0052 054BD9BE
	s_nop 3                                                    // 0000000032E8: BF800003
	v_max_f32_e32 v13, v98, v99                                // 0000000032EC: 161AC762
	v_max3_f32 v13, v100, v101, v13                            // 0000000032F0: D1D3000D 0436CB64
	v_max3_f32 v13, v102, v103, v13                            // 0000000032F8: D1D3000D 0436CF66
	v_max3_f32 v13, v104, v105, v13                            // 000000003300: D1D3000D 0436D368
	v_max3_f32 v13, v106, v107, v13                            // 000000003308: D1D3000D 0436D76A
	v_max3_f32 v13, v108, v109, v13                            // 000000003310: D1D3000D 0436DB6C
	v_max3_f32 v13, v110, v111, v13                            // 000000003318: D1D3000D 0436DF6E
	v_max3_f32 v13, v112, v113, v13                            // 000000003320: D1D3000D 0436E370
	s_waitcnt lgkmcnt(4)                                       // 000000003328: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[198:205], v[4:11], v[66:81], v173, v187 op_sel_hi:[0,0,0]// 00000000332C: D3AC0000 000377AD D3AE0842 050A09C6
	ds_read_b64_tr_b8 v[190:191], v185 offset:768              // 00000000333C: D9C40300 BE0000B9
	ds_read_b64_tr_b8 v[192:193], v185 offset:1792             // 000000003344: D9C40700 C00000B9
	ds_read_b64_tr_b8 v[194:195], v185 offset:2816             // 00000000334C: D9C40B00 C20000B9
	ds_read_b64_tr_b8 v[196:197], v185 offset:3840             // 000000003354: D9C40F00 C40000B9
	ds_read_b64_tr_b8 v[198:199], v185 offset:4096             // 00000000335C: D9C41000 C60000B9
	ds_read_b64_tr_b8 v[200:201], v185 offset:5120             // 000000003364: D9C41400 C80000B9
	ds_read_b64_tr_b8 v[202:203], v185 offset:6144             // 00000000336C: D9C41800 CA0000B9
	ds_read_b64_tr_b8 v[204:205], v185 offset:7168             // 000000003374: D9C41C00 CC0000B9
	v_max_f32_e32 v14, v82, v83                                // 00000000337C: 161CA752
	v_max3_f32 v14, v84, v85, v14                              // 000000003380: D1D3000E 043AAB54
	v_max3_f32 v14, v86, v87, v14                              // 000000003388: D1D3000E 043AAF56
	v_max3_f32 v14, v88, v89, v14                              // 000000003390: D1D3000E 043AB358
	v_max3_f32 v14, v90, v91, v14                              // 000000003398: D1D3000E 043AB75A
	v_max3_f32 v14, v92, v93, v14                              // 0000000033A0: D1D3000E 043ABB5C
	v_max3_f32 v14, v94, v95, v14                              // 0000000033A8: D1D3000E 043ABF5E
	v_max3_f32 v14, v96, v97, v14                              // 0000000033B0: D1D3000E 043AC360
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[206:213], v[4:11], v[50:65], v173, v187 op_sel_hi:[0,0,0]// 0000000033B8: D3AC0000 000377AD D3AE0832 04CA09CE
	v_max_f32_e32 v12, v3, v12                                 // 0000000033C8: 16181903
	v_max_f32_e32 v14, v13, v14                                // 0000000033CC: 161C1D0D
	v_mov_b32_e32 v13, v12                                     // 0000000033D0: 7E1A030C
	v_mov_b32_e32 v15, v14                                     // 0000000033D4: 7E1E030E
	s_nop 0                                                    // 0000000033D8: BF800000
	v_permlane32_swap_b32_e32 v12, v13                         // 0000000033DC: 7E18B50D
	v_permlane32_swap_b32_e32 v14, v15                         // 0000000033E0: 7E1CB50F
	v_max_f32_e32 v3, v12, v13                                 // 0000000033E4: 16061B0C
	v_max_f32_e32 v12, v14, v15                                // 0000000033E8: 16181F0E
	s_waitcnt lgkmcnt(4)                                       // 0000000033EC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[162:169], v[4:11], v[34:49], v173, v187 op_sel_hi:[0,0,0]// 0000000033F0: D3AC0000 000377AD D3AE0822 048A09A2
	ds_read_b64_tr_b8 v[162:163], v185 offset:4352             // 000000003400: D9C41100 A20000B9
	ds_read_b64_tr_b8 v[164:165], v185 offset:5376             // 000000003408: D9C41500 A40000B9
	ds_read_b64_tr_b8 v[166:167], v185 offset:6400             // 000000003410: D9C41900 A60000B9
	ds_read_b64_tr_b8 v[168:169], v185 offset:7424             // 000000003418: D9C41D00 A80000B9
	ds_read_b64_tr_b8 v[206:207], v185 offset:4608             // 000000003420: D9C41200 CE0000B9
	ds_read_b64_tr_b8 v[208:209], v185 offset:5632             // 000000003428: D9C41600 D00000B9
	ds_read_b64_tr_b8 v[210:211], v185 offset:6656             // 000000003430: D9C41A00 D20000B9
	ds_read_b64_tr_b8 v[212:213], v185 offset:7680             // 000000003438: D9C41E00 D40000B9
	v_max_f32_e32 v13, v3, v12                                 // 000000003440: 161A1903
	v_mul_f32_e32 v13, v183, v13                               // 000000003444: 0A1A1BB7
	v_max_f32_e32 v13, v188, v13                               // 000000003448: 161A1BBC
	v_sub_f32_e32 v14, v13, v188                               // 00000000344C: 041D790D
	v_cmp_lt_f32_e32 vcc, s55, v14                             // 000000003450: 7C821C37
	s_cmp_lg_u64 vcc, 0                                        // 000000003454: BF13806A
	s_cselect_b64 s[48:49], -1, 0                              // 000000003458: 85B080C1
	s_cselect_b32 s69, 1, 0                                    // 00000000345C: 85458081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[190:197], v[4:11], v[18:33], v173, v187 op_sel_hi:[0,0,0]// 000000003460: D3AC0000 000377AD D3AE0812 044A09BE
	v_cndmask_b32_e64 v16, v188, v13, s[48:49]                 // 000000003470: D1000010 00C21BBC
	v_fma_f32 v3, v3, v183, -v16                               // 000000003478: D1CB0003 84436F03
	v_floor_f32_e32 v3, v3                                     // 000000003480: 7E063F03
	v_med3_f32 v4, v3, s54, 0                                  // 000000003484: D1D60004 02006D03
	v_cvt_i32_f32_e32 v3, v4                                   // 00000000348C: 7E061104
	v_add_u32_e32 v187, 0x7f, v3                               // 000000003490: 697606FF 0000007F
	v_lshlrev_b32_e32 v3, 23, v187                             // 000000003498: 24077697
	v_fma_f32 v5, v12, v183, -v16                              // 00000000349C: D1CB0005 84436F0C
	s_waitcnt lgkmcnt(4)                                       // 0000000034A4: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[198:205], v[154:161], v[66:81], v173, v189 op_sel_hi:[0,0,0]// 0000000034A8: D3AC0000 00037BAD D3AE0842 050B35C6
	ds_read_b64_tr_b8 v[8:9], v185 offset:4864                 // 0000000034B8: D9C41300 080000B9
	ds_read_b64_tr_b8 v[10:11], v185 offset:5888               // 0000000034C0: D9C41700 0A0000B9
	ds_read_b64_tr_b8 v[12:13], v185 offset:6912               // 0000000034C8: D9C41B00 0C0000B9
	ds_read_b64_tr_b8 v[14:15], v185 offset:7936               // 0000000034D0: D9C41F00 0E0000B9
	v_floor_f32_e32 v5, v5                                     // 0000000034D8: 7E0A3F05
	v_med3_f32 v5, v5, s54, 0                                  // 0000000034DC: D1D60005 02006D05
	v_cvt_i32_f32_e32 v6, v5                                   // 0000000034E4: 7E0C1105
	v_add_u32_e32 v17, 0x7f, v6                                // 0000000034E8: 68220CFF 0000007F
	v_lshlrev_b32_e32 v190, 23, v17                            // 0000000034F0: 257C2297
	v_fma_f32 v6, v16, v174, s50                               // 0000000034F4: D1CB0006 00CB5D10
	v_fma_f32 v192, v4, v174, v6                               // 0000000034FC: D1CB00C0 041B5D04
	v_fma_f32 v191, v5, v174, v6                               // 000000003504: D1CB00BF 041B5D05
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[162:169], v[154:161], v[50:65], v173, v189 op_sel_hi:[0,0,0]// 00000000350C: D3AC0000 00037BAD D3AE0832 04CB35A2
	s_waitcnt lgkmcnt(0)                                       // 00000000351C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[206:213], v[154:161], v[34:49], v173, v189 op_sel_hi:[0,0,0]// 000000003520: D3AC0000 00037BAD D3AE0822 048B35CE
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[8:15], v[154:161], v[18:33], v173, v189 op_sel_hi:[0,0,0]// 000000003530: D3AC0000 00037BAD D3AE0812 044B3508
	s_cmp_eq_u32 s69, 0                                        // 000000003540: BF068045
	s_cbranch_scc1 68                                          // 000000003544: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1b58>
	v_sub_f32_e32 v4, v188, v16                                // 000000003548: 040821BC
	v_exp_f32_e32 v4, v4                                       // 00000000354C: 7E084104
	s_nop 0                                                    // 000000003550: BF800000
	v_pk_mul_f32 v[80:81], v[4:5], v[80:81] op_sel_hi:[0,1]    // 000000003554: D3B14050 1002A104
	v_pk_mul_f32 v[78:79], v[4:5], v[78:79] op_sel_hi:[0,1]    // 00000000355C: D3B1404E 10029D04
	v_pk_mul_f32 v[76:77], v[4:5], v[76:77] op_sel_hi:[0,1]    // 000000003564: D3B1404C 10029904
	v_pk_mul_f32 v[74:75], v[4:5], v[74:75] op_sel_hi:[0,1]    // 00000000356C: D3B1404A 10029504
	v_pk_mul_f32 v[72:73], v[4:5], v[72:73] op_sel_hi:[0,1]    // 000000003574: D3B14048 10029104
	v_pk_mul_f32 v[70:71], v[4:5], v[70:71] op_sel_hi:[0,1]    // 00000000357C: D3B14046 10028D04
	v_pk_mul_f32 v[68:69], v[4:5], v[68:69] op_sel_hi:[0,1]    // 000000003584: D3B14044 10028904
	v_pk_mul_f32 v[66:67], v[4:5], v[66:67] op_sel_hi:[0,1]    // 00000000358C: D3B14042 10028504
	v_pk_mul_f32 v[64:65], v[4:5], v[64:65] op_sel_hi:[0,1]    // 000000003594: D3B14040 10028104
	v_pk_mul_f32 v[62:63], v[4:5], v[62:63] op_sel_hi:[0,1]    // 00000000359C: D3B1403E 10027D04
	v_pk_mul_f32 v[60:61], v[4:5], v[60:61] op_sel_hi:[0,1]    // 0000000035A4: D3B1403C 10027904
	v_pk_mul_f32 v[58:59], v[4:5], v[58:59] op_sel_hi:[0,1]    // 0000000035AC: D3B1403A 10027504
	v_pk_mul_f32 v[56:57], v[4:5], v[56:57] op_sel_hi:[0,1]    // 0000000035B4: D3B14038 10027104
	v_pk_mul_f32 v[54:55], v[4:5], v[54:55] op_sel_hi:[0,1]    // 0000000035BC: D3B14036 10026D04
	v_pk_mul_f32 v[52:53], v[4:5], v[52:53] op_sel_hi:[0,1]    // 0000000035C4: D3B14034 10026904
	v_pk_mul_f32 v[50:51], v[4:5], v[50:51] op_sel_hi:[0,1]    // 0000000035CC: D3B14032 10026504
	v_pk_mul_f32 v[48:49], v[4:5], v[48:49] op_sel_hi:[0,1]    // 0000000035D4: D3B14030 10026104
	v_pk_mul_f32 v[46:47], v[4:5], v[46:47] op_sel_hi:[0,1]    // 0000000035DC: D3B1402E 10025D04
	v_pk_mul_f32 v[44:45], v[4:5], v[44:45] op_sel_hi:[0,1]    // 0000000035E4: D3B1402C 10025904
	v_pk_mul_f32 v[42:43], v[4:5], v[42:43] op_sel_hi:[0,1]    // 0000000035EC: D3B1402A 10025504
	v_pk_mul_f32 v[40:41], v[4:5], v[40:41] op_sel_hi:[0,1]    // 0000000035F4: D3B14028 10025104
	v_pk_mul_f32 v[38:39], v[4:5], v[38:39] op_sel_hi:[0,1]    // 0000000035FC: D3B14026 10024D04
	v_pk_mul_f32 v[36:37], v[4:5], v[36:37] op_sel_hi:[0,1]    // 000000003604: D3B14024 10024904
	v_pk_mul_f32 v[34:35], v[4:5], v[34:35] op_sel_hi:[0,1]    // 00000000360C: D3B14022 10024504
	v_pk_mul_f32 v[32:33], v[4:5], v[32:33] op_sel_hi:[0,1]    // 000000003614: D3B14020 10024104
	v_pk_mul_f32 v[30:31], v[4:5], v[30:31] op_sel_hi:[0,1]    // 00000000361C: D3B1401E 10023D04
	v_pk_mul_f32 v[28:29], v[4:5], v[28:29] op_sel_hi:[0,1]    // 000000003624: D3B1401C 10023904
	v_pk_mul_f32 v[26:27], v[4:5], v[26:27] op_sel_hi:[0,1]    // 00000000362C: D3B1401A 10023504
	v_pk_mul_f32 v[24:25], v[4:5], v[24:25] op_sel_hi:[0,1]    // 000000003634: D3B14018 10023104
	v_pk_mul_f32 v[22:23], v[4:5], v[22:23] op_sel_hi:[0,1]    // 00000000363C: D3B14016 10022D04
	v_pk_mul_f32 v[20:21], v[4:5], v[20:21] op_sel_hi:[0,1]    // 000000003644: D3B14014 10022904
	v_pk_mul_f32 v[18:19], v[4:5], v[18:19] op_sel_hi:[0,1]    // 00000000364C: D3B14012 10022504
	v_mul_f32_e32 v186, v186, v4                               // 000000003654: 0B7409BA
	s_waitcnt vmcnt(4)                                         // 000000003658: BF8C0F74
	s_barrier                                                  // 00000000365C: BF8A0000
	s_add_u32 s53, s53, 1                                      // 000000003660: 80358135
	s_add_u32 s48, s53, 1                                      // 000000003664: 80308135
	s_cmp_ge_u32 s48, s15                                      // 000000003668: BF090F30
	s_cbranch_scc1 1872                                        // 00000000366C: BF850750 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x38b0>
	s_setprio 0                                                // 000000003670: BF8F0000
	v_fma_f32 v4, v130, v184, v192                             // 000000003674: D1CB0004 07037182
	v_fma_f32 v5, v131, v184, v192                             // 00000000367C: D1CB0005 07037183
	v_fma_f32 v6, v132, v184, v192                             // 000000003684: D1CB0006 07037184
	v_fma_f32 v7, v133, v184, v192                             // 00000000368C: D1CB0007 07037185
	v_fma_f32 v8, v134, v184, v192                             // 000000003694: D1CB0008 07037186
	v_fma_f32 v9, v135, v184, v192                             // 00000000369C: D1CB0009 07037187
	v_fma_f32 v10, v136, v184, v192                            // 0000000036A4: D1CB000A 07037188
	v_fma_f32 v11, v137, v184, v192                            // 0000000036AC: D1CB000B 07037189
	v_fma_f32 v12, v138, v184, v192                            // 0000000036B4: D1CB000C 0703718A
	v_fma_f32 v13, v139, v184, v192                            // 0000000036BC: D1CB000D 0703718B
	v_fma_f32 v14, v140, v184, v192                            // 0000000036C4: D1CB000E 0703718C
	v_fma_f32 v15, v141, v184, v192                            // 0000000036CC: D1CB000F 0703718D
	v_fma_f32 v130, v142, v184, v192                           // 0000000036D4: D1CB0082 0703718E
	v_fma_f32 v131, v143, v184, v192                           // 0000000036DC: D1CB0083 0703718F
	v_fma_f32 v132, v144, v184, v192                           // 0000000036E4: D1CB0084 07037190
	v_fma_f32 v133, v145, v184, v192                           // 0000000036EC: D1CB0085 07037191
	v_fma_f32 v114, v114, v184, v192                           // 0000000036F4: D1CB0072 07037172
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 0000000036FC: D1DD0004 02010104
	v_fma_f32 v115, v115, v184, v192                           // 000000003704: D1CB0073 07037173
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 00000000370C: D1DD0008 02010108
	v_fma_f32 v116, v116, v184, v192                           // 000000003714: D1CB0074 07037174
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 00000000371C: D1DD000C 0201010C
	v_fma_f32 v117, v117, v184, v192                           // 000000003724: D1CB0075 07037175
	v_cvt_pk_u8_f32 v130, v130, 0, 0                           // 00000000372C: D1DD0082 02010182
	v_fma_f32 v118, v118, v184, v192                           // 000000003734: D1CB0076 07037176
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 00000000373C: D1DD0004 04110305
	v_fma_f32 v119, v119, v184, v192                           // 000000003744: D1CB0077 07037177
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 00000000374C: D1DD0005 04210309
	v_fma_f32 v8, v120, v184, v192                             // 000000003754: D1CB0008 07037178
	v_cvt_pk_u8_f32 v9, v13, 1, v12                            // 00000000375C: D1DD0009 0431030D
	v_fma_f32 v12, v121, v184, v192                            // 000000003764: D1CB000C 07037179
	v_cvt_pk_u8_f32 v13, v131, 1, v130                         // 00000000376C: D1DD000D 06090383
	v_fma_f32 v120, v122, v184, v192                           // 000000003774: D1CB0078 0703717A
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 00000000377C: D1DD0004 04110506
	v_fma_f32 v121, v123, v184, v192                           // 000000003784: D1CB0079 0703717B
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 00000000378C: D1DD0005 0415050A
	v_fma_f32 v10, v124, v184, v192                            // 000000003794: D1CB000A 0703717C
	v_cvt_pk_u8_f32 v6, v14, 2, v9                             // 00000000379C: D1DD0006 0425050E
	v_fma_f32 v14, v125, v184, v192                            // 0000000037A4: D1CB000E 0703717D
	v_cvt_pk_u8_f32 v9, v132, 2, v13                           // 0000000037AC: D1DD0009 04350584
	v_fma_f32 v13, v126, v184, v192                            // 0000000037B4: D1CB000D 0703717E
	v_cvt_pk_u8_f32 v4, v7, 3, v4                              // 0000000037BC: D1DD0004 04110707
	v_fma_f32 v122, v127, v184, v192                           // 0000000037C4: D1CB007A 0703717F
	v_cvt_pk_u8_f32 v5, v11, 3, v5                             // 0000000037CC: D1DD0005 0415070B
	v_fma_f32 v11, v128, v184, v192                            // 0000000037D4: D1CB000B 07037180
	v_cvt_pk_u8_f32 v6, v15, 3, v6                             // 0000000037DC: D1DD0006 0419070F
	v_fma_f32 v15, v129, v184, v192                            // 0000000037E4: D1CB000F 07037181
	v_cvt_pk_u8_f32 v7, v133, 3, v9                            // 0000000037EC: D1DD0007 04250785
	v_fma_f32 v98, v98, v184, v191                             // 0000000037F4: D1CB0062 06FF7162
	v_cvt_pk_u8_f32 v9, v114, 0, 0                             // 0000000037FC: D1DD0009 02010172
	v_fma_f32 v99, v99, v184, v191                             // 000000003804: D1CB0063 06FF7163
	v_cvt_pk_u8_f32 v114, v118, 0, 0                           // 00000000380C: D1DD0072 02010176
	v_fma_f32 v100, v100, v184, v191                           // 000000003814: D1CB0064 06FF7164
	v_cvt_pk_u8_f32 v118, v120, 0, 0                           // 00000000381C: D1DD0076 02010178
	v_fma_f32 v101, v101, v184, v191                           // 000000003824: D1CB0065 06FF7165
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 00000000382C: D1DD000D 0201010D
	v_fma_f32 v102, v102, v184, v191                           // 000000003834: D1CB0066 06FF7166
	v_cvt_pk_u8_f32 v9, v115, 1, v9                            // 00000000383C: D1DD0009 04250373
	v_fma_f32 v103, v103, v184, v191                           // 000000003844: D1CB0067 06FF7167
	v_cvt_pk_u8_f32 v114, v119, 1, v114                        // 00000000384C: D1DD0072 05C90377
	v_fma_f32 v104, v104, v184, v191                           // 000000003854: D1CB0068 06FF7168
	v_cvt_pk_u8_f32 v115, v121, 1, v118                        // 00000000385C: D1DD0073 05D90379
	v_fma_f32 v105, v105, v184, v191                           // 000000003864: D1CB0069 06FF7169
	v_cvt_pk_u8_f32 v13, v122, 1, v13                          // 00000000386C: D1DD000D 0435037A
	v_fma_f32 v106, v106, v184, v191                           // 000000003874: D1CB006A 06FF716A
	v_cvt_pk_u8_f32 v9, v116, 2, v9                            // 00000000387C: D1DD0009 04250574
	v_fma_f32 v107, v107, v184, v191                           // 000000003884: D1CB006B 06FF716B
	v_cvt_pk_u8_f32 v114, v8, 2, v114                          // 00000000388C: D1DD0072 05C90508
	v_fma_f32 v108, v108, v184, v191                           // 000000003894: D1CB006C 06FF716C
	v_cvt_pk_u8_f32 v10, v10, 2, v115                          // 00000000389C: D1DD000A 05CD050A
	v_fma_f32 v109, v109, v184, v191                           // 0000000038A4: D1CB006D 06FF716D
	v_cvt_pk_u8_f32 v11, v11, 2, v13                           // 0000000038AC: D1DD000B 0435050B
	v_fma_f32 v13, v110, v184, v191                            // 0000000038B4: D1CB000D 06FF716E
	v_cvt_pk_u8_f32 v8, v117, 3, v9                            // 0000000038BC: D1DD0008 04250775
	v_fma_f32 v110, v111, v184, v191                           // 0000000038C4: D1CB006E 06FF716F
	v_cvt_pk_u8_f32 v9, v12, 3, v114                           // 0000000038CC: D1DD0009 05C9070C
	v_fma_f32 v12, v112, v184, v191                            // 0000000038D4: D1CB000C 06FF7170
	v_cvt_pk_u8_f32 v10, v14, 3, v10                           // 0000000038DC: D1DD000A 0429070E
	v_fma_f32 v14, v113, v184, v191                            // 0000000038E4: D1CB000E 06FF7171
	v_cvt_pk_u8_f32 v11, v15, 3, v11                           // 0000000038EC: D1DD000B 042D070F
	v_fma_f32 v15, v82, v184, v191                             // 0000000038F4: D1CB000F 06FF7152
	v_cvt_pk_u8_f32 v82, v98, 0, 0                             // 0000000038FC: D1DD0052 02010162
	v_fma_f32 v83, v83, v184, v191                             // 000000003904: D1CB0053 06FF7153
	v_cvt_pk_u8_f32 v98, v102, 0, 0                            // 00000000390C: D1DD0062 02010166
	v_fma_f32 v84, v84, v184, v191                             // 000000003914: D1CB0054 06FF7154
	v_cvt_pk_u8_f32 v102, v106, 0, 0                           // 00000000391C: D1DD0066 0201016A
	v_fma_f32 v85, v85, v184, v191                             // 000000003924: D1CB0055 06FF7155
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 00000000392C: D1DD000D 0201010D
	v_fma_f32 v86, v86, v184, v191                             // 000000003934: D1CB0056 06FF7156
	v_cvt_pk_u8_f32 v82, v99, 1, v82                           // 00000000393C: D1DD0052 05490363
	v_fma_f32 v87, v87, v184, v191                             // 000000003944: D1CB0057 06FF7157
	v_cvt_pk_u8_f32 v98, v103, 1, v98                          // 00000000394C: D1DD0062 05890367
	v_fma_f32 v88, v88, v184, v191                             // 000000003954: D1CB0058 06FF7158
	v_cvt_pk_u8_f32 v99, v107, 1, v102                         // 00000000395C: D1DD0063 0599036B
	v_fma_f32 v89, v89, v184, v191                             // 000000003964: D1CB0059 06FF7159
	v_cvt_pk_u8_f32 v13, v110, 1, v13                          // 00000000396C: D1DD000D 0435036E
	v_fma_f32 v90, v90, v184, v191                             // 000000003974: D1CB005A 06FF715A
	v_cvt_pk_u8_f32 v82, v100, 2, v82                          // 00000000397C: D1DD0052 05490564
	v_fma_f32 v91, v91, v184, v191                             // 000000003984: D1CB005B 06FF715B
	v_cvt_pk_u8_f32 v98, v104, 2, v98                          // 00000000398C: D1DD0062 05890568
	v_fma_f32 v92, v92, v184, v191                             // 000000003994: D1CB005C 06FF715C
	v_cvt_pk_u8_f32 v99, v108, 2, v99                          // 00000000399C: D1DD0063 058D056C
	v_fma_f32 v93, v93, v184, v191                             // 0000000039A4: D1CB005D 06FF715D
	v_cvt_pk_u8_f32 v12, v12, 2, v13                           // 0000000039AC: D1DD000C 0435050C
	v_fma_f32 v13, v94, v184, v191                             // 0000000039B4: D1CB000D 06FF715E
	v_cvt_pk_u8_f32 v154, v101, 3, v82                         // 0000000039BC: D1DD009A 05490765
	v_fma_f32 v82, v95, v184, v191                             // 0000000039C4: D1CB0052 06FF715F
	v_cvt_pk_u8_f32 v155, v105, 3, v98                         // 0000000039CC: D1DD009B 05890769
	v_fma_f32 v94, v96, v184, v191                             // 0000000039D4: D1CB005E 06FF7160
	v_cvt_pk_u8_f32 v156, v109, 3, v99                         // 0000000039DC: D1DD009C 058D076D
	v_fma_f32 v95, v97, v184, v191                             // 0000000039E4: D1CB005F 06FF7161
	v_cvt_pk_u8_f32 v157, v14, 3, v12                          // 0000000039EC: D1DD009D 0431070E
	v_cvt_pk_u8_f32 v12, v15, 0, 0                             // 0000000039F4: D1DD000C 0201010F
	v_cvt_pk_u8_f32 v14, v86, 0, 0                             // 0000000039FC: D1DD000E 02010156
	v_cvt_pk_u8_f32 v15, v90, 0, 0                             // 000000003A04: D1DD000F 0201015A
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 000000003A0C: D1DD000D 0201010D
	v_cvt_pk_u8_f32 v12, v83, 1, v12                           // 000000003A14: D1DD000C 04310353
	v_cvt_pk_u8_f32 v14, v87, 1, v14                           // 000000003A1C: D1DD000E 04390357
	v_cvt_pk_u8_f32 v15, v91, 1, v15                           // 000000003A24: D1DD000F 043D035B
	v_cvt_pk_u8_f32 v13, v82, 1, v13                           // 000000003A2C: D1DD000D 04350352
	v_cvt_pk_u8_f32 v12, v84, 2, v12                           // 000000003A34: D1DD000C 04310554
	v_cvt_pk_u8_f32 v14, v88, 2, v14                           // 000000003A3C: D1DD000E 04390558
	v_cvt_pk_u8_f32 v15, v92, 2, v15                           // 000000003A44: D1DD000F 043D055C
	v_cvt_pk_u8_f32 v13, v94, 2, v13                           // 000000003A4C: D1DD000D 0435055E
	v_cvt_pk_u8_f32 v158, v85, 3, v12                          // 000000003A54: D1DD009E 04310755
	v_cvt_pk_u8_f32 v159, v89, 3, v14                          // 000000003A5C: D1DD009F 04390759
	v_cvt_pk_u8_f32 v160, v93, 3, v15                          // 000000003A64: D1DD00A0 043D075D
	v_cvt_pk_u8_f32 v161, v95, 3, v13                          // 000000003A6C: D1DD00A1 0435075F
	ds_read_b128 v[86:89], v1 offset:32768                     // 000000003A74: D9FE8000 56000001
	ds_read_b128 v[90:93], v1 offset:32784                     // 000000003A7C: D9FE8010 5A000001
	ds_read_b128 v[94:97], v1 offset:36864                     // 000000003A84: D9FE9000 5E000001
	ds_read_b128 v[98:101], v1 offset:36880                    // 000000003A8C: D9FE9010 62000001
	s_barrier                                                  // 000000003A94: BF8A0000
	s_setprio 1                                                // 000000003A98: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[4:11], 0// 000000003A9C: D3AD000C 02020992
	v_mfma_f32_16x16x128_f8f6f4 v[82:85], v[146:153], v[154:161], 0// 000000003AA4: D3AD0052 02033592
	ds_read_b128 v[162:165], v1 offset:40960                   // 000000003AAC: D9FEA000 A2000001
	ds_read_b128 v[166:169], v1 offset:40976                   // 000000003AB4: D9FEA010 A6000001
	ds_read_b128 v[192:195], v1 offset:45056                   // 000000003ABC: D9FEB000 C0000001
	ds_read_b128 v[196:199], v1 offset:45072                   // 000000003AC4: D9FEB010 C4000001
	s_waitcnt lgkmcnt(4)                                       // 000000003ACC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[86:93], v[228:235], 0// 000000003AD0: D3AE0082 0203C956
	ds_read_b128 v[200:203], v172 offset:32768                 // 000000003AD8: D9FE8000 C80000AC
	ds_read_b128 v[204:207], v172 offset:32784                 // 000000003AE0: D9FE8010 CC0000AC
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[94:101], v[228:235], 0// 000000003AE8: D3AE0072 0203C95E
	ds_read_b128 v[208:211], v172 offset:36864                 // 000000003AF0: D9FE9000 D00000AC
	ds_read_b128 v[212:215], v172 offset:36880                 // 000000003AF8: D9FE9010 D40000AC
	s_waitcnt lgkmcnt(4)                                       // 000000003B00: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[162:169], v[228:235], 0// 000000003B04: D3AE0062 0203C9A2
	ds_read_b128 v[162:165], v172 offset:40960                 // 000000003B0C: D9FEA000 A20000AC
	ds_read_b128 v[166:169], v172 offset:40976                 // 000000003B14: D9FEA010 A60000AC
	s_min_u32 s48, s67, s68                                    // 000000003B1C: 83B04443
	s_add_u32 m0, s56, 0x4000                                  // 000000003B20: 807CFF38 00004000
	s_nop 0                                                    // 000000003B28: BF800000
	buffer_load_dwordx4 v176, s[24:27], s48 offen lds          // 000000003B2C: E05D1000 300600B0
	v_mul_f32_e32 v3, v3, v12                                  // 000000003B34: 0A061903
	v_add_f32_e32 v3, v186, v3                                 // 000000003B38: 020607BA
	v_mul_f32_e32 v86, v190, v82                               // 000000003B3C: 0AACA5BE
	v_add_f32_e32 v186, v3, v86                                // 000000003B40: 0374AD03
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[192:199], v[228:235], 0// 000000003B44: D3AE0052 0203C9C0
	ds_read_b128 v[188:191], v172 offset:45056                 // 000000003B4C: D9FEB000 BC0000AC
	ds_read_b128 v[192:195], v172 offset:45072                 // 000000003B54: D9FEB010 C00000AC
	s_add_u32 m0, s56, 0x6000                                  // 000000003B5C: 807CFF38 00006000
	s_nop 0                                                    // 000000003B64: BF800000
	buffer_load_dwordx4 v177, s[24:27], s48 offen lds          // 000000003B68: E05D1000 300600B1
	s_waitcnt lgkmcnt(4)                                       // 000000003B70: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[200:207], v[236:243], v[130:145]// 000000003B74: D3AE0082 060BD9C8
	ds_read_b64_tr_b8 v[196:197], v185 offset:16384            // 000000003B7C: D9C44000 C40000B9
	ds_read_b64_tr_b8 v[198:199], v185 offset:17408            // 000000003B84: D9C44400 C60000B9
	ds_read_b64_tr_b8 v[200:201], v185 offset:18432            // 000000003B8C: D9C44800 C80000B9
	ds_read_b64_tr_b8 v[202:203], v185 offset:19456            // 000000003B94: D9C44C00 CA0000B9
	s_min_u32 s48, s66, s68                                    // 000000003B9C: 83B04442
	s_add_u32 m0, s57, 0xc000                                  // 000000003BA0: 807CFF39 0000C000
	s_nop 0                                                    // 000000003BA8: BF800000
	buffer_load_dwordx4 v178, s[28:31], s48 offen lds          // 000000003BAC: E05D1000 300700B2
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[208:215], v[236:243], v[114:129]// 000000003BB4: D3AE0072 05CBD9D0
	ds_read_b64_tr_b8 v[204:205], v185 offset:16640            // 000000003BBC: D9C44100 CC0000B9
	ds_read_b64_tr_b8 v[206:207], v185 offset:17664            // 000000003BC4: D9C44500 CE0000B9
	ds_read_b64_tr_b8 v[208:209], v185 offset:18688            // 000000003BCC: D9C44900 D00000B9
	ds_read_b64_tr_b8 v[210:211], v185 offset:19712            // 000000003BD4: D9C44D00 D20000B9
	s_add_u32 m0, s57, 0xe000                                  // 000000003BDC: 807CFF39 0000E000
	s_nop 0                                                    // 000000003BE4: BF800000
	buffer_load_dwordx4 v179, s[28:31], s48 offen lds          // 000000003BE8: E05D1000 300700B3
	s_add_u32 s67, s67, s58                                    // 000000003BF0: 80433A43
	s_add_u32 s66, s66, s58                                    // 000000003BF4: 80423A42
	v_max_f32_e32 v3, v130, v131                               // 000000003BF8: 16070782
	v_max3_f32 v3, v132, v133, v3                              // 000000003BFC: D1D30003 040F0B84
	v_max3_f32 v3, v134, v135, v3                              // 000000003C04: D1D30003 040F0F86
	v_max3_f32 v3, v136, v137, v3                              // 000000003C0C: D1D30003 040F1388
	v_max3_f32 v3, v138, v139, v3                              // 000000003C14: D1D30003 040F178A
	v_max3_f32 v3, v140, v141, v3                              // 000000003C1C: D1D30003 040F1B8C
	v_max3_f32 v3, v142, v143, v3                              // 000000003C24: D1D30003 040F1F8E
	v_max3_f32 v3, v144, v145, v3                              // 000000003C2C: D1D30003 040F2390
	s_waitcnt lgkmcnt(8)                                       // 000000003C34: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[162:169], v[236:243], v[98:113]// 000000003C38: D3AE0062 058BD9A2
	ds_read_b64_tr_b8 v[162:163], v185 offset:16896            // 000000003C40: D9C44200 A20000B9
	ds_read_b64_tr_b8 v[164:165], v185 offset:17920            // 000000003C48: D9C44600 A40000B9
	ds_read_b64_tr_b8 v[166:167], v185 offset:18944            // 000000003C50: D9C44A00 A60000B9
	ds_read_b64_tr_b8 v[168:169], v185 offset:19968            // 000000003C58: D9C44E00 A80000B9
	v_max_f32_e32 v12, v114, v115                              // 000000003C60: 1618E772
	v_max3_f32 v12, v116, v117, v12                            // 000000003C64: D1D3000C 0432EB74
	v_max3_f32 v12, v118, v119, v12                            // 000000003C6C: D1D3000C 0432EF76
	v_max3_f32 v12, v120, v121, v12                            // 000000003C74: D1D3000C 0432F378
	v_max3_f32 v12, v122, v123, v12                            // 000000003C7C: D1D3000C 0432F77A
	v_max3_f32 v12, v124, v125, v12                            // 000000003C84: D1D3000C 0432FB7C
	v_max3_f32 v12, v126, v127, v12                            // 000000003C8C: D1D3000C 0432FF7E
	v_max3_f32 v12, v128, v129, v12                            // 000000003C94: D1D3000C 04330380
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[188:195], v[236:243], v[82:97]// 000000003C9C: D3AE0052 054BD9BC
	s_nop 3                                                    // 000000003CA4: BF800003
	v_max_f32_e32 v13, v98, v99                                // 000000003CA8: 161AC762
	v_max3_f32 v13, v100, v101, v13                            // 000000003CAC: D1D3000D 0436CB64
	v_max3_f32 v13, v102, v103, v13                            // 000000003CB4: D1D3000D 0436CF66
	v_max3_f32 v13, v104, v105, v13                            // 000000003CBC: D1D3000D 0436D368
	v_max3_f32 v13, v106, v107, v13                            // 000000003CC4: D1D3000D 0436D76A
	v_max3_f32 v13, v108, v109, v13                            // 000000003CCC: D1D3000D 0436DB6C
	v_max3_f32 v13, v110, v111, v13                            // 000000003CD4: D1D3000D 0436DF6E
	v_max3_f32 v13, v112, v113, v13                            // 000000003CDC: D1D3000D 0436E370
	s_waitcnt lgkmcnt(4)                                       // 000000003CE4: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[196:203], v[4:11], v[66:81], v173, v187 op_sel_hi:[0,0,0]// 000000003CE8: D3AC0000 000377AD D3AE0842 050A09C4
	ds_read_b64_tr_b8 v[188:189], v185 offset:17152            // 000000003CF8: D9C44300 BC0000B9
	ds_read_b64_tr_b8 v[190:191], v185 offset:18176            // 000000003D00: D9C44700 BE0000B9
	ds_read_b64_tr_b8 v[192:193], v185 offset:19200            // 000000003D08: D9C44B00 C00000B9
	ds_read_b64_tr_b8 v[194:195], v185 offset:20224            // 000000003D10: D9C44F00 C20000B9
	ds_read_b64_tr_b8 v[196:197], v185 offset:20480            // 000000003D18: D9C45000 C40000B9
	ds_read_b64_tr_b8 v[198:199], v185 offset:21504            // 000000003D20: D9C45400 C60000B9
	ds_read_b64_tr_b8 v[200:201], v185 offset:22528            // 000000003D28: D9C45800 C80000B9
	ds_read_b64_tr_b8 v[202:203], v185 offset:23552            // 000000003D30: D9C45C00 CA0000B9
	v_max_f32_e32 v14, v82, v83                                // 000000003D38: 161CA752
	v_max3_f32 v14, v84, v85, v14                              // 000000003D3C: D1D3000E 043AAB54
	v_max3_f32 v14, v86, v87, v14                              // 000000003D44: D1D3000E 043AAF56
	v_max3_f32 v14, v88, v89, v14                              // 000000003D4C: D1D3000E 043AB358
	v_max3_f32 v14, v90, v91, v14                              // 000000003D54: D1D3000E 043AB75A
	v_max3_f32 v14, v92, v93, v14                              // 000000003D5C: D1D3000E 043ABB5C
	v_max3_f32 v14, v94, v95, v14                              // 000000003D64: D1D3000E 043ABF5E
	v_max3_f32 v14, v96, v97, v14                              // 000000003D6C: D1D3000E 043AC360
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[204:211], v[4:11], v[50:65], v173, v187 op_sel_hi:[0,0,0]// 000000003D74: D3AC0000 000377AD D3AE0832 04CA09CC
	v_max_f32_e32 v12, v3, v12                                 // 000000003D84: 16181903
	v_max_f32_e32 v14, v13, v14                                // 000000003D88: 161C1D0D
	v_mov_b32_e32 v13, v12                                     // 000000003D8C: 7E1A030C
	v_mov_b32_e32 v15, v14                                     // 000000003D90: 7E1E030E
	s_nop 0                                                    // 000000003D94: BF800000
	v_permlane32_swap_b32_e32 v12, v13                         // 000000003D98: 7E18B50D
	v_permlane32_swap_b32_e32 v14, v15                         // 000000003D9C: 7E1CB50F
	v_max_f32_e32 v3, v12, v13                                 // 000000003DA0: 16061B0C
	v_max_f32_e32 v12, v14, v15                                // 000000003DA4: 16181F0E
	s_waitcnt lgkmcnt(4)                                       // 000000003DA8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[162:169], v[4:11], v[34:49], v173, v187 op_sel_hi:[0,0,0]// 000000003DAC: D3AC0000 000377AD D3AE0822 048A09A2
	ds_read_b64_tr_b8 v[162:163], v185 offset:20736            // 000000003DBC: D9C45100 A20000B9
	ds_read_b64_tr_b8 v[164:165], v185 offset:21760            // 000000003DC4: D9C45500 A40000B9
	ds_read_b64_tr_b8 v[166:167], v185 offset:22784            // 000000003DCC: D9C45900 A60000B9
	ds_read_b64_tr_b8 v[168:169], v185 offset:23808            // 000000003DD4: D9C45D00 A80000B9
	ds_read_b64_tr_b8 v[204:205], v185 offset:20992            // 000000003DDC: D9C45200 CC0000B9
	ds_read_b64_tr_b8 v[206:207], v185 offset:22016            // 000000003DE4: D9C45600 CE0000B9
	ds_read_b64_tr_b8 v[208:209], v185 offset:23040            // 000000003DEC: D9C45A00 D00000B9
	ds_read_b64_tr_b8 v[210:211], v185 offset:24064            // 000000003DF4: D9C45E00 D20000B9
	v_max_f32_e32 v13, v3, v12                                 // 000000003DFC: 161A1903
	v_mul_f32_e32 v13, v183, v13                               // 000000003E00: 0A1A1BB7
	v_max_f32_e32 v13, v16, v13                                // 000000003E04: 161A1B10
	v_sub_f32_e32 v14, v13, v16                                // 000000003E08: 041C210D
	v_cmp_lt_f32_e32 vcc, s55, v14                             // 000000003E0C: 7C821C37
	s_cmp_lg_u64 vcc, 0                                        // 000000003E10: BF13806A
	s_cselect_b64 s[48:49], -1, 0                              // 000000003E14: 85B080C1
	s_cselect_b32 s69, 1, 0                                    // 000000003E18: 85458081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[188:195], v[4:11], v[18:33], v173, v187 op_sel_hi:[0,0,0]// 000000003E1C: D3AC0000 000377AD D3AE0812 044A09BC
	v_cndmask_b32_e64 v188, v16, v13, s[48:49]                 // 000000003E2C: D10000BC 00C21B10
	v_fma_f32 v3, v3, v183, -v188                              // 000000003E34: D1CB0003 86F36F03
	v_floor_f32_e32 v3, v3                                     // 000000003E3C: 7E063F03
	v_med3_f32 v4, v3, s54, 0                                  // 000000003E40: D1D60004 02006D03
	v_cvt_i32_f32_e32 v3, v4                                   // 000000003E48: 7E061104
	v_add_u32_e32 v187, 0x7f, v3                               // 000000003E4C: 697606FF 0000007F
	v_lshlrev_b32_e32 v3, 23, v187                             // 000000003E54: 24077697
	v_fma_f32 v5, v12, v183, -v188                             // 000000003E58: D1CB0005 86F36F0C
	s_waitcnt lgkmcnt(4)                                       // 000000003E60: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[196:203], v[154:161], v[66:81], v173, v17 op_sel_hi:[0,0,0]// 000000003E64: D3AC0000 000223AD D3AE0842 050B35C4
	ds_read_b64_tr_b8 v[8:9], v185 offset:21248                // 000000003E74: D9C45300 080000B9
	ds_read_b64_tr_b8 v[10:11], v185 offset:22272              // 000000003E7C: D9C45700 0A0000B9
	ds_read_b64_tr_b8 v[12:13], v185 offset:23296              // 000000003E84: D9C45B00 0C0000B9
	ds_read_b64_tr_b8 v[14:15], v185 offset:24320              // 000000003E8C: D9C45F00 0E0000B9
	v_floor_f32_e32 v5, v5                                     // 000000003E94: 7E0A3F05
	v_med3_f32 v5, v5, s54, 0                                  // 000000003E98: D1D60005 02006D05
	v_cvt_i32_f32_e32 v6, v5                                   // 000000003EA0: 7E0C1105
	v_add_u32_e32 v189, 0x7f, v6                               // 000000003EA4: 697A0CFF 0000007F
	v_lshlrev_b32_e32 v190, 23, v189                           // 000000003EAC: 257D7A97
	v_fma_f32 v6, v188, v174, s50                              // 000000003EB0: D1CB0006 00CB5DBC
	v_fma_f32 v192, v4, v174, v6                               // 000000003EB8: D1CB00C0 041B5D04
	v_fma_f32 v191, v5, v174, v6                               // 000000003EC0: D1CB00BF 041B5D05
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[162:169], v[154:161], v[50:65], v173, v17 op_sel_hi:[0,0,0]// 000000003EC8: D3AC0000 000223AD D3AE0832 04CB35A2
	s_waitcnt lgkmcnt(0)                                       // 000000003ED8: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[204:211], v[154:161], v[34:49], v173, v17 op_sel_hi:[0,0,0]// 000000003EDC: D3AC0000 000223AD D3AE0822 048B35CC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[8:15], v[154:161], v[18:33], v173, v17 op_sel_hi:[0,0,0]// 000000003EEC: D3AC0000 000223AD D3AE0812 044B3508
	s_cmp_eq_u32 s69, 0                                        // 000000003EFC: BF068045
	s_cbranch_scc1 68                                          // 000000003F00: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2514>
	v_sub_f32_e32 v4, v16, v188                                // 000000003F04: 04097910
	v_exp_f32_e32 v4, v4                                       // 000000003F08: 7E084104
	s_nop 0                                                    // 000000003F0C: BF800000
	v_pk_mul_f32 v[80:81], v[4:5], v[80:81] op_sel_hi:[0,1]    // 000000003F10: D3B14050 1002A104
	v_pk_mul_f32 v[78:79], v[4:5], v[78:79] op_sel_hi:[0,1]    // 000000003F18: D3B1404E 10029D04
	v_pk_mul_f32 v[76:77], v[4:5], v[76:77] op_sel_hi:[0,1]    // 000000003F20: D3B1404C 10029904
	v_pk_mul_f32 v[74:75], v[4:5], v[74:75] op_sel_hi:[0,1]    // 000000003F28: D3B1404A 10029504
	v_pk_mul_f32 v[72:73], v[4:5], v[72:73] op_sel_hi:[0,1]    // 000000003F30: D3B14048 10029104
	v_pk_mul_f32 v[70:71], v[4:5], v[70:71] op_sel_hi:[0,1]    // 000000003F38: D3B14046 10028D04
	v_pk_mul_f32 v[68:69], v[4:5], v[68:69] op_sel_hi:[0,1]    // 000000003F40: D3B14044 10028904
	v_pk_mul_f32 v[66:67], v[4:5], v[66:67] op_sel_hi:[0,1]    // 000000003F48: D3B14042 10028504
	v_pk_mul_f32 v[64:65], v[4:5], v[64:65] op_sel_hi:[0,1]    // 000000003F50: D3B14040 10028104
	v_pk_mul_f32 v[62:63], v[4:5], v[62:63] op_sel_hi:[0,1]    // 000000003F58: D3B1403E 10027D04
	v_pk_mul_f32 v[60:61], v[4:5], v[60:61] op_sel_hi:[0,1]    // 000000003F60: D3B1403C 10027904
	v_pk_mul_f32 v[58:59], v[4:5], v[58:59] op_sel_hi:[0,1]    // 000000003F68: D3B1403A 10027504
	v_pk_mul_f32 v[56:57], v[4:5], v[56:57] op_sel_hi:[0,1]    // 000000003F70: D3B14038 10027104
	v_pk_mul_f32 v[54:55], v[4:5], v[54:55] op_sel_hi:[0,1]    // 000000003F78: D3B14036 10026D04
	v_pk_mul_f32 v[52:53], v[4:5], v[52:53] op_sel_hi:[0,1]    // 000000003F80: D3B14034 10026904
	v_pk_mul_f32 v[50:51], v[4:5], v[50:51] op_sel_hi:[0,1]    // 000000003F88: D3B14032 10026504
	v_pk_mul_f32 v[48:49], v[4:5], v[48:49] op_sel_hi:[0,1]    // 000000003F90: D3B14030 10026104
	v_pk_mul_f32 v[46:47], v[4:5], v[46:47] op_sel_hi:[0,1]    // 000000003F98: D3B1402E 10025D04
	v_pk_mul_f32 v[44:45], v[4:5], v[44:45] op_sel_hi:[0,1]    // 000000003FA0: D3B1402C 10025904
	v_pk_mul_f32 v[42:43], v[4:5], v[42:43] op_sel_hi:[0,1]    // 000000003FA8: D3B1402A 10025504
	v_pk_mul_f32 v[40:41], v[4:5], v[40:41] op_sel_hi:[0,1]    // 000000003FB0: D3B14028 10025104
	v_pk_mul_f32 v[38:39], v[4:5], v[38:39] op_sel_hi:[0,1]    // 000000003FB8: D3B14026 10024D04
	v_pk_mul_f32 v[36:37], v[4:5], v[36:37] op_sel_hi:[0,1]    // 000000003FC0: D3B14024 10024904
	v_pk_mul_f32 v[34:35], v[4:5], v[34:35] op_sel_hi:[0,1]    // 000000003FC8: D3B14022 10024504
	v_pk_mul_f32 v[32:33], v[4:5], v[32:33] op_sel_hi:[0,1]    // 000000003FD0: D3B14020 10024104
	v_pk_mul_f32 v[30:31], v[4:5], v[30:31] op_sel_hi:[0,1]    // 000000003FD8: D3B1401E 10023D04
	v_pk_mul_f32 v[28:29], v[4:5], v[28:29] op_sel_hi:[0,1]    // 000000003FE0: D3B1401C 10023904
	v_pk_mul_f32 v[26:27], v[4:5], v[26:27] op_sel_hi:[0,1]    // 000000003FE8: D3B1401A 10023504
	v_pk_mul_f32 v[24:25], v[4:5], v[24:25] op_sel_hi:[0,1]    // 000000003FF0: D3B14018 10023104
	v_pk_mul_f32 v[22:23], v[4:5], v[22:23] op_sel_hi:[0,1]    // 000000003FF8: D3B14016 10022D04
	v_pk_mul_f32 v[20:21], v[4:5], v[20:21] op_sel_hi:[0,1]    // 000000004000: D3B14014 10022904
	v_pk_mul_f32 v[18:19], v[4:5], v[18:19] op_sel_hi:[0,1]    // 000000004008: D3B14012 10022504
	v_mul_f32_e32 v186, v186, v4                               // 000000004010: 0B7409BA
	s_waitcnt vmcnt(4)                                         // 000000004014: BF8C0F74
	s_barrier                                                  // 000000004018: BF8A0000
	s_add_u32 s53, s53, 1                                      // 00000000401C: 80358135
	s_add_u32 s48, s53, 1                                      // 000000004020: 80308135
	s_cmp_ge_u32 s48, s15                                      // 000000004024: BF090F30
	s_cbranch_scc1 1245                                        // 000000004028: BF8504DD <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x38a0>
	s_setprio 0                                                // 00000000402C: BF8F0000
	v_fma_f32 v4, v130, v184, v192                             // 000000004030: D1CB0004 07037182
	v_fma_f32 v5, v131, v184, v192                             // 000000004038: D1CB0005 07037183
	v_fma_f32 v6, v132, v184, v192                             // 000000004040: D1CB0006 07037184
	v_fma_f32 v7, v133, v184, v192                             // 000000004048: D1CB0007 07037185
	v_fma_f32 v8, v134, v184, v192                             // 000000004050: D1CB0008 07037186
	v_fma_f32 v9, v135, v184, v192                             // 000000004058: D1CB0009 07037187
	v_fma_f32 v10, v136, v184, v192                            // 000000004060: D1CB000A 07037188
	v_fma_f32 v11, v137, v184, v192                            // 000000004068: D1CB000B 07037189
	v_fma_f32 v12, v138, v184, v192                            // 000000004070: D1CB000C 0703718A
	v_fma_f32 v13, v139, v184, v192                            // 000000004078: D1CB000D 0703718B
	v_fma_f32 v14, v140, v184, v192                            // 000000004080: D1CB000E 0703718C
	v_fma_f32 v15, v141, v184, v192                            // 000000004088: D1CB000F 0703718D
	v_fma_f32 v16, v142, v184, v192                            // 000000004090: D1CB0010 0703718E
	v_fma_f32 v17, v143, v184, v192                            // 000000004098: D1CB0011 0703718F
	v_fma_f32 v130, v144, v184, v192                           // 0000000040A0: D1CB0082 07037190
	v_fma_f32 v131, v145, v184, v192                           // 0000000040A8: D1CB0083 07037191
	v_fma_f32 v114, v114, v184, v192                           // 0000000040B0: D1CB0072 07037172
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 0000000040B8: D1DD0004 02010104
	v_fma_f32 v115, v115, v184, v192                           // 0000000040C0: D1CB0073 07037173
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 0000000040C8: D1DD0008 02010108
	v_fma_f32 v116, v116, v184, v192                           // 0000000040D0: D1CB0074 07037174
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 0000000040D8: D1DD000C 0201010C
	v_fma_f32 v117, v117, v184, v192                           // 0000000040E0: D1CB0075 07037175
	v_cvt_pk_u8_f32 v16, v16, 0, 0                             // 0000000040E8: D1DD0010 02010110
	v_fma_f32 v118, v118, v184, v192                           // 0000000040F0: D1CB0076 07037176
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 0000000040F8: D1DD0004 04110305
	v_fma_f32 v119, v119, v184, v192                           // 000000004100: D1CB0077 07037177
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 000000004108: D1DD0005 04210309
	v_fma_f32 v8, v120, v184, v192                             // 000000004110: D1CB0008 07037178
	v_cvt_pk_u8_f32 v9, v13, 1, v12                            // 000000004118: D1DD0009 0431030D
	v_fma_f32 v12, v121, v184, v192                            // 000000004120: D1CB000C 07037179
	v_cvt_pk_u8_f32 v13, v17, 1, v16                           // 000000004128: D1DD000D 04410311
	v_fma_f32 v16, v122, v184, v192                            // 000000004130: D1CB0010 0703717A
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 000000004138: D1DD0004 04110506
	v_fma_f32 v17, v123, v184, v192                            // 000000004140: D1CB0011 0703717B
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 000000004148: D1DD0005 0415050A
	v_fma_f32 v10, v124, v184, v192                            // 000000004150: D1CB000A 0703717C
	v_cvt_pk_u8_f32 v6, v14, 2, v9                             // 000000004158: D1DD0006 0425050E
	v_fma_f32 v14, v125, v184, v192                            // 000000004160: D1CB000E 0703717D
	v_cvt_pk_u8_f32 v9, v130, 2, v13                           // 000000004168: D1DD0009 04350582
	v_fma_f32 v13, v126, v184, v192                            // 000000004170: D1CB000D 0703717E
	v_cvt_pk_u8_f32 v4, v7, 3, v4                              // 000000004178: D1DD0004 04110707
	v_fma_f32 v120, v127, v184, v192                           // 000000004180: D1CB0078 0703717F
	v_cvt_pk_u8_f32 v5, v11, 3, v5                             // 000000004188: D1DD0005 0415070B
	v_fma_f32 v11, v128, v184, v192                            // 000000004190: D1CB000B 07037180
	v_cvt_pk_u8_f32 v6, v15, 3, v6                             // 000000004198: D1DD0006 0419070F
	v_fma_f32 v15, v129, v184, v192                            // 0000000041A0: D1CB000F 07037181
	v_cvt_pk_u8_f32 v7, v131, 3, v9                            // 0000000041A8: D1DD0007 04250783
	v_fma_f32 v98, v98, v184, v191                             // 0000000041B0: D1CB0062 06FF7162
	v_cvt_pk_u8_f32 v9, v114, 0, 0                             // 0000000041B8: D1DD0009 02010172
	v_fma_f32 v99, v99, v184, v191                             // 0000000041C0: D1CB0063 06FF7163
	v_cvt_pk_u8_f32 v114, v118, 0, 0                           // 0000000041C8: D1DD0072 02010176
	v_fma_f32 v100, v100, v184, v191                           // 0000000041D0: D1CB0064 06FF7164
	v_cvt_pk_u8_f32 v16, v16, 0, 0                             // 0000000041D8: D1DD0010 02010110
	v_fma_f32 v101, v101, v184, v191                           // 0000000041E0: D1CB0065 06FF7165
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 0000000041E8: D1DD000D 0201010D
	v_fma_f32 v102, v102, v184, v191                           // 0000000041F0: D1CB0066 06FF7166
	v_cvt_pk_u8_f32 v9, v115, 1, v9                            // 0000000041F8: D1DD0009 04250373
	v_fma_f32 v103, v103, v184, v191                           // 000000004200: D1CB0067 06FF7167
	v_cvt_pk_u8_f32 v114, v119, 1, v114                        // 000000004208: D1DD0072 05C90377
	v_fma_f32 v104, v104, v184, v191                           // 000000004210: D1CB0068 06FF7168
	v_cvt_pk_u8_f32 v16, v17, 1, v16                           // 000000004218: D1DD0010 04410311
	v_fma_f32 v17, v105, v184, v191                            // 000000004220: D1CB0011 06FF7169
	v_cvt_pk_u8_f32 v13, v120, 1, v13                          // 000000004228: D1DD000D 04350378
	v_fma_f32 v105, v106, v184, v191                           // 000000004230: D1CB0069 06FF716A
	v_cvt_pk_u8_f32 v9, v116, 2, v9                            // 000000004238: D1DD0009 04250574
	v_fma_f32 v106, v107, v184, v191                           // 000000004240: D1CB006A 06FF716B
	v_cvt_pk_u8_f32 v107, v8, 2, v114                          // 000000004248: D1DD006B 05C90508
	v_fma_f32 v108, v108, v184, v191                           // 000000004250: D1CB006C 06FF716C
	v_cvt_pk_u8_f32 v10, v10, 2, v16                           // 000000004258: D1DD000A 0441050A
	v_fma_f32 v16, v109, v184, v191                            // 000000004260: D1CB0010 06FF716D
	v_cvt_pk_u8_f32 v11, v11, 2, v13                           // 000000004268: D1DD000B 0435050B
	v_fma_f32 v13, v110, v184, v191                            // 000000004270: D1CB000D 06FF716E
	v_cvt_pk_u8_f32 v8, v117, 3, v9                            // 000000004278: D1DD0008 04250775
	v_fma_f32 v109, v111, v184, v191                           // 000000004280: D1CB006D 06FF716F
	v_cvt_pk_u8_f32 v9, v12, 3, v107                           // 000000004288: D1DD0009 05AD070C
	v_fma_f32 v12, v112, v184, v191                            // 000000004290: D1CB000C 06FF7170
	v_cvt_pk_u8_f32 v10, v14, 3, v10                           // 000000004298: D1DD000A 0429070E
	v_fma_f32 v14, v113, v184, v191                            // 0000000042A0: D1CB000E 06FF7171
	v_cvt_pk_u8_f32 v11, v15, 3, v11                           // 0000000042A8: D1DD000B 042D070F
	v_fma_f32 v15, v82, v184, v191                             // 0000000042B0: D1CB000F 06FF7152
	v_cvt_pk_u8_f32 v82, v98, 0, 0                             // 0000000042B8: D1DD0052 02010162
	v_fma_f32 v83, v83, v184, v191                             // 0000000042C0: D1CB0053 06FF7153
	v_cvt_pk_u8_f32 v98, v102, 0, 0                            // 0000000042C8: D1DD0062 02010166
	v_fma_f32 v84, v84, v184, v191                             // 0000000042D0: D1CB0054 06FF7154
	v_cvt_pk_u8_f32 v102, v105, 0, 0                           // 0000000042D8: D1DD0066 02010169
	v_fma_f32 v85, v85, v184, v191                             // 0000000042E0: D1CB0055 06FF7155
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 0000000042E8: D1DD000D 0201010D
	v_fma_f32 v86, v86, v184, v191                             // 0000000042F0: D1CB0056 06FF7156
	v_cvt_pk_u8_f32 v82, v99, 1, v82                           // 0000000042F8: D1DD0052 05490363
	v_fma_f32 v87, v87, v184, v191                             // 000000004300: D1CB0057 06FF7157
	v_cvt_pk_u8_f32 v98, v103, 1, v98                          // 000000004308: D1DD0062 05890367
	v_fma_f32 v88, v88, v184, v191                             // 000000004310: D1CB0058 06FF7158
	v_cvt_pk_u8_f32 v99, v106, 1, v102                         // 000000004318: D1DD0063 0599036A
	v_fma_f32 v89, v89, v184, v191                             // 000000004320: D1CB0059 06FF7159
	v_cvt_pk_u8_f32 v13, v109, 1, v13                          // 000000004328: D1DD000D 0435036D
	v_fma_f32 v90, v90, v184, v191                             // 000000004330: D1CB005A 06FF715A
	v_cvt_pk_u8_f32 v82, v100, 2, v82                          // 000000004338: D1DD0052 05490564
	v_fma_f32 v91, v91, v184, v191                             // 000000004340: D1CB005B 06FF715B
	v_cvt_pk_u8_f32 v98, v104, 2, v98                          // 000000004348: D1DD0062 05890568
	v_fma_f32 v92, v92, v184, v191                             // 000000004350: D1CB005C 06FF715C
	v_cvt_pk_u8_f32 v99, v108, 2, v99                          // 000000004358: D1DD0063 058D056C
	v_fma_f32 v93, v93, v184, v191                             // 000000004360: D1CB005D 06FF715D
	v_cvt_pk_u8_f32 v12, v12, 2, v13                           // 000000004368: D1DD000C 0435050C
	v_fma_f32 v13, v94, v184, v191                             // 000000004370: D1CB000D 06FF715E
	v_cvt_pk_u8_f32 v154, v101, 3, v82                         // 000000004378: D1DD009A 05490765
	v_fma_f32 v82, v95, v184, v191                             // 000000004380: D1CB0052 06FF715F
	v_cvt_pk_u8_f32 v155, v17, 3, v98                          // 000000004388: D1DD009B 05890711
	v_fma_f32 v17, v96, v184, v191                             // 000000004390: D1CB0011 06FF7160
	v_cvt_pk_u8_f32 v156, v16, 3, v99                          // 000000004398: D1DD009C 058D0710
	v_fma_f32 v16, v97, v184, v191                             // 0000000043A0: D1CB0010 06FF7161
	v_cvt_pk_u8_f32 v157, v14, 3, v12                          // 0000000043A8: D1DD009D 0431070E
	v_cvt_pk_u8_f32 v12, v15, 0, 0                             // 0000000043B0: D1DD000C 0201010F
	v_cvt_pk_u8_f32 v14, v86, 0, 0                             // 0000000043B8: D1DD000E 02010156
	v_cvt_pk_u8_f32 v15, v90, 0, 0                             // 0000000043C0: D1DD000F 0201015A
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 0000000043C8: D1DD000D 0201010D
	v_cvt_pk_u8_f32 v12, v83, 1, v12                           // 0000000043D0: D1DD000C 04310353
	v_cvt_pk_u8_f32 v14, v87, 1, v14                           // 0000000043D8: D1DD000E 04390357
	v_cvt_pk_u8_f32 v15, v91, 1, v15                           // 0000000043E0: D1DD000F 043D035B
	v_cvt_pk_u8_f32 v13, v82, 1, v13                           // 0000000043E8: D1DD000D 04350352
	v_cvt_pk_u8_f32 v12, v84, 2, v12                           // 0000000043F0: D1DD000C 04310554
	v_cvt_pk_u8_f32 v14, v88, 2, v14                           // 0000000043F8: D1DD000E 04390558
	v_cvt_pk_u8_f32 v15, v92, 2, v15                           // 000000004400: D1DD000F 043D055C
	v_cvt_pk_u8_f32 v13, v17, 2, v13                           // 000000004408: D1DD000D 04350511
	v_cvt_pk_u8_f32 v158, v85, 3, v12                          // 000000004410: D1DD009E 04310755
	v_cvt_pk_u8_f32 v159, v89, 3, v14                          // 000000004418: D1DD009F 04390759
	v_cvt_pk_u8_f32 v160, v93, 3, v15                          // 000000004420: D1DD00A0 043D075D
	v_cvt_pk_u8_f32 v161, v16, 3, v13                          // 000000004428: D1DD00A1 04350710
	ds_read_b128 v[86:89], v1 offset:49152                     // 000000004430: D9FEC000 56000001
	ds_read_b128 v[90:93], v1 offset:49168                     // 000000004438: D9FEC010 5A000001
	ds_read_b128 v[94:97], v1 offset:53248                     // 000000004440: D9FED000 5E000001
	ds_read_b128 v[98:101], v1 offset:53264                    // 000000004448: D9FED010 62000001
	s_barrier                                                  // 000000004450: BF8A0000
	s_setprio 1                                                // 000000004454: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[4:11], 0// 000000004458: D3AD000C 02020992
	v_mfma_f32_16x16x128_f8f6f4 v[82:85], v[146:153], v[154:161], 0// 000000004460: D3AD0052 02033592
	ds_read_b128 v[162:165], v1 offset:57344                   // 000000004468: D9FEE000 A2000001
	ds_read_b128 v[166:169], v1 offset:57360                   // 000000004470: D9FEE010 A6000001
	ds_read_b128 v[192:195], v1 offset:61440                   // 000000004478: D9FEF000 C0000001
	ds_read_b128 v[196:199], v1 offset:61456                   // 000000004480: D9FEF010 C4000001
	s_waitcnt lgkmcnt(4)                                       // 000000004488: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[86:93], v[228:235], 0// 00000000448C: D3AE0082 0203C956
	ds_read_b128 v[200:203], v172 offset:49152                 // 000000004494: D9FEC000 C80000AC
	ds_read_b128 v[204:207], v172 offset:49168                 // 00000000449C: D9FEC010 CC0000AC
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[94:101], v[228:235], 0// 0000000044A4: D3AE0072 0203C95E
	ds_read_b128 v[208:211], v172 offset:53248                 // 0000000044AC: D9FED000 D00000AC
	ds_read_b128 v[212:215], v172 offset:53264                 // 0000000044B4: D9FED010 D40000AC
	s_waitcnt lgkmcnt(4)                                       // 0000000044BC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[162:169], v[228:235], 0// 0000000044C0: D3AE0062 0203C9A2
	ds_read_b128 v[162:165], v172 offset:57344                 // 0000000044C8: D9FEE000 A20000AC
	ds_read_b128 v[166:169], v172 offset:57360                 // 0000000044D0: D9FEE010 A60000AC
	s_min_u32 s48, s67, s68                                    // 0000000044D8: 83B04443
	s_add_u32 m0, s56, 0x8000                                  // 0000000044DC: 807CFF38 00008000
	s_nop 0                                                    // 0000000044E4: BF800000
	buffer_load_dwordx4 v176, s[24:27], s48 offen lds          // 0000000044E8: E05D1000 300600B0
	v_mul_f32_e32 v3, v3, v12                                  // 0000000044F0: 0A061903
	v_add_f32_e32 v3, v186, v3                                 // 0000000044F4: 020607BA
	v_mul_f32_e32 v16, v190, v82                               // 0000000044F8: 0A20A5BE
	v_add_f32_e32 v186, v3, v16                                // 0000000044FC: 03742103
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[192:199], v[228:235], 0// 000000004500: D3AE0052 0203C9C0
	ds_read_b128 v[190:193], v172 offset:61440                 // 000000004508: D9FEF000 BE0000AC
	ds_read_b128 v[194:197], v172 offset:61456                 // 000000004510: D9FEF010 C20000AC
	s_add_u32 m0, s56, 0xa000                                  // 000000004518: 807CFF38 0000A000
	s_nop 0                                                    // 000000004520: BF800000
	buffer_load_dwordx4 v177, s[24:27], s48 offen lds          // 000000004524: E05D1000 300600B1
	s_waitcnt lgkmcnt(4)                                       // 00000000452C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[200:207], v[236:243], v[130:145]// 000000004530: D3AE0082 060BD9C8
	ds_read_b64_tr_b8 v[198:199], v185 offset:32768            // 000000004538: D9C48000 C60000B9
	ds_read_b64_tr_b8 v[200:201], v185 offset:33792            // 000000004540: D9C48400 C80000B9
	ds_read_b64_tr_b8 v[202:203], v185 offset:34816            // 000000004548: D9C48800 CA0000B9
	ds_read_b64_tr_b8 v[204:205], v185 offset:35840            // 000000004550: D9C48C00 CC0000B9
	s_min_u32 s48, s66, s68                                    // 000000004558: 83B04442
	s_add_u32 m0, s57, 0                                       // 00000000455C: 807C8039
	s_nop 0                                                    // 000000004560: BF800000
	buffer_load_dwordx4 v178, s[28:31], s48 offen lds          // 000000004564: E05D1000 300700B2
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[208:215], v[236:243], v[114:129]// 00000000456C: D3AE0072 05CBD9D0
	ds_read_b64_tr_b8 v[206:207], v185 offset:33024            // 000000004574: D9C48100 CE0000B9
	ds_read_b64_tr_b8 v[208:209], v185 offset:34048            // 00000000457C: D9C48500 D00000B9
	ds_read_b64_tr_b8 v[210:211], v185 offset:35072            // 000000004584: D9C48900 D20000B9
	ds_read_b64_tr_b8 v[212:213], v185 offset:36096            // 00000000458C: D9C48D00 D40000B9
	s_add_u32 m0, s57, 0x2000                                  // 000000004594: 807CFF39 00002000
	s_nop 0                                                    // 00000000459C: BF800000
	buffer_load_dwordx4 v179, s[28:31], s48 offen lds          // 0000000045A0: E05D1000 300700B3
	s_add_u32 s67, s67, s58                                    // 0000000045A8: 80433A43
	s_add_u32 s66, s66, s58                                    // 0000000045AC: 80423A42
	v_max_f32_e32 v3, v130, v131                               // 0000000045B0: 16070782
	v_max3_f32 v3, v132, v133, v3                              // 0000000045B4: D1D30003 040F0B84
	v_max3_f32 v3, v134, v135, v3                              // 0000000045BC: D1D30003 040F0F86
	v_max3_f32 v3, v136, v137, v3                              // 0000000045C4: D1D30003 040F1388
	v_max3_f32 v3, v138, v139, v3                              // 0000000045CC: D1D30003 040F178A
	v_max3_f32 v3, v140, v141, v3                              // 0000000045D4: D1D30003 040F1B8C
	v_max3_f32 v3, v142, v143, v3                              // 0000000045DC: D1D30003 040F1F8E
	v_max3_f32 v3, v144, v145, v3                              // 0000000045E4: D1D30003 040F2390
	s_waitcnt lgkmcnt(8)                                       // 0000000045EC: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[162:169], v[236:243], v[98:113]// 0000000045F0: D3AE0062 058BD9A2
	ds_read_b64_tr_b8 v[162:163], v185 offset:33280            // 0000000045F8: D9C48200 A20000B9
	ds_read_b64_tr_b8 v[164:165], v185 offset:34304            // 000000004600: D9C48600 A40000B9
	ds_read_b64_tr_b8 v[166:167], v185 offset:35328            // 000000004608: D9C48A00 A60000B9
	ds_read_b64_tr_b8 v[168:169], v185 offset:36352            // 000000004610: D9C48E00 A80000B9
	v_max_f32_e32 v12, v114, v115                              // 000000004618: 1618E772
	v_max3_f32 v12, v116, v117, v12                            // 00000000461C: D1D3000C 0432EB74
	v_max3_f32 v12, v118, v119, v12                            // 000000004624: D1D3000C 0432EF76
	v_max3_f32 v12, v120, v121, v12                            // 00000000462C: D1D3000C 0432F378
	v_max3_f32 v12, v122, v123, v12                            // 000000004634: D1D3000C 0432F77A
	v_max3_f32 v12, v124, v125, v12                            // 00000000463C: D1D3000C 0432FB7C
	v_max3_f32 v12, v126, v127, v12                            // 000000004644: D1D3000C 0432FF7E
	v_max3_f32 v12, v128, v129, v12                            // 00000000464C: D1D3000C 04330380
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[190:197], v[236:243], v[82:97]// 000000004654: D3AE0052 054BD9BE
	s_nop 3                                                    // 00000000465C: BF800003
	v_max_f32_e32 v13, v98, v99                                // 000000004660: 161AC762
	v_max3_f32 v13, v100, v101, v13                            // 000000004664: D1D3000D 0436CB64
	v_max3_f32 v13, v102, v103, v13                            // 00000000466C: D1D3000D 0436CF66
	v_max3_f32 v13, v104, v105, v13                            // 000000004674: D1D3000D 0436D368
	v_max3_f32 v13, v106, v107, v13                            // 00000000467C: D1D3000D 0436D76A
	v_max3_f32 v13, v108, v109, v13                            // 000000004684: D1D3000D 0436DB6C
	v_max3_f32 v13, v110, v111, v13                            // 00000000468C: D1D3000D 0436DF6E
	v_max3_f32 v13, v112, v113, v13                            // 000000004694: D1D3000D 0436E370
	s_waitcnt lgkmcnt(4)                                       // 00000000469C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[198:205], v[4:11], v[66:81], v173, v187 op_sel_hi:[0,0,0]// 0000000046A0: D3AC0000 000377AD D3AE0842 050A09C6
	ds_read_b64_tr_b8 v[190:191], v185 offset:33536            // 0000000046B0: D9C48300 BE0000B9
	ds_read_b64_tr_b8 v[192:193], v185 offset:34560            // 0000000046B8: D9C48700 C00000B9
	ds_read_b64_tr_b8 v[194:195], v185 offset:35584            // 0000000046C0: D9C48B00 C20000B9
	ds_read_b64_tr_b8 v[196:197], v185 offset:36608            // 0000000046C8: D9C48F00 C40000B9
	ds_read_b64_tr_b8 v[198:199], v185 offset:36864            // 0000000046D0: D9C49000 C60000B9
	ds_read_b64_tr_b8 v[200:201], v185 offset:37888            // 0000000046D8: D9C49400 C80000B9
	ds_read_b64_tr_b8 v[202:203], v185 offset:38912            // 0000000046E0: D9C49800 CA0000B9
	ds_read_b64_tr_b8 v[204:205], v185 offset:39936            // 0000000046E8: D9C49C00 CC0000B9
	v_max_f32_e32 v14, v82, v83                                // 0000000046F0: 161CA752
	v_max3_f32 v14, v84, v85, v14                              // 0000000046F4: D1D3000E 043AAB54
	v_max3_f32 v14, v86, v87, v14                              // 0000000046FC: D1D3000E 043AAF56
	v_max3_f32 v14, v88, v89, v14                              // 000000004704: D1D3000E 043AB358
	v_max3_f32 v14, v90, v91, v14                              // 00000000470C: D1D3000E 043AB75A
	v_max3_f32 v14, v92, v93, v14                              // 000000004714: D1D3000E 043ABB5C
	v_max3_f32 v14, v94, v95, v14                              // 00000000471C: D1D3000E 043ABF5E
	v_max3_f32 v14, v96, v97, v14                              // 000000004724: D1D3000E 043AC360
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[206:213], v[4:11], v[50:65], v173, v187 op_sel_hi:[0,0,0]// 00000000472C: D3AC0000 000377AD D3AE0832 04CA09CE
	v_max_f32_e32 v12, v3, v12                                 // 00000000473C: 16181903
	v_max_f32_e32 v14, v13, v14                                // 000000004740: 161C1D0D
	v_mov_b32_e32 v13, v12                                     // 000000004744: 7E1A030C
	v_mov_b32_e32 v15, v14                                     // 000000004748: 7E1E030E
	s_nop 0                                                    // 00000000474C: BF800000
	v_permlane32_swap_b32_e32 v12, v13                         // 000000004750: 7E18B50D
	v_permlane32_swap_b32_e32 v14, v15                         // 000000004754: 7E1CB50F
	v_max_f32_e32 v3, v12, v13                                 // 000000004758: 16061B0C
	v_max_f32_e32 v12, v14, v15                                // 00000000475C: 16181F0E
	s_waitcnt lgkmcnt(4)                                       // 000000004760: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[162:169], v[4:11], v[34:49], v173, v187 op_sel_hi:[0,0,0]// 000000004764: D3AC0000 000377AD D3AE0822 048A09A2
	ds_read_b64_tr_b8 v[162:163], v185 offset:37120            // 000000004774: D9C49100 A20000B9
	ds_read_b64_tr_b8 v[164:165], v185 offset:38144            // 00000000477C: D9C49500 A40000B9
	ds_read_b64_tr_b8 v[166:167], v185 offset:39168            // 000000004784: D9C49900 A60000B9
	ds_read_b64_tr_b8 v[168:169], v185 offset:40192            // 00000000478C: D9C49D00 A80000B9
	ds_read_b64_tr_b8 v[206:207], v185 offset:37376            // 000000004794: D9C49200 CE0000B9
	ds_read_b64_tr_b8 v[208:209], v185 offset:38400            // 00000000479C: D9C49600 D00000B9
	ds_read_b64_tr_b8 v[210:211], v185 offset:39424            // 0000000047A4: D9C49A00 D20000B9
	ds_read_b64_tr_b8 v[212:213], v185 offset:40448            // 0000000047AC: D9C49E00 D40000B9
	v_max_f32_e32 v13, v3, v12                                 // 0000000047B4: 161A1903
	v_mul_f32_e32 v13, v183, v13                               // 0000000047B8: 0A1A1BB7
	v_max_f32_e32 v13, v188, v13                               // 0000000047BC: 161A1BBC
	v_sub_f32_e32 v14, v13, v188                               // 0000000047C0: 041D790D
	v_cmp_lt_f32_e32 vcc, s55, v14                             // 0000000047C4: 7C821C37
	s_cmp_lg_u64 vcc, 0                                        // 0000000047C8: BF13806A
	s_cselect_b64 s[48:49], -1, 0                              // 0000000047CC: 85B080C1
	s_cselect_b32 s69, 1, 0                                    // 0000000047D0: 85458081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[190:197], v[4:11], v[18:33], v173, v187 op_sel_hi:[0,0,0]// 0000000047D4: D3AC0000 000377AD D3AE0812 044A09BE
	v_cndmask_b32_e64 v16, v188, v13, s[48:49]                 // 0000000047E4: D1000010 00C21BBC
	v_fma_f32 v3, v3, v183, -v16                               // 0000000047EC: D1CB0003 84436F03
	v_floor_f32_e32 v3, v3                                     // 0000000047F4: 7E063F03
	v_med3_f32 v4, v3, s54, 0                                  // 0000000047F8: D1D60004 02006D03
	v_cvt_i32_f32_e32 v3, v4                                   // 000000004800: 7E061104
	v_add_u32_e32 v187, 0x7f, v3                               // 000000004804: 697606FF 0000007F
	v_lshlrev_b32_e32 v3, 23, v187                             // 00000000480C: 24077697
	v_fma_f32 v5, v12, v183, -v16                              // 000000004810: D1CB0005 84436F0C
	s_waitcnt lgkmcnt(4)                                       // 000000004818: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[198:205], v[154:161], v[66:81], v173, v189 op_sel_hi:[0,0,0]// 00000000481C: D3AC0000 00037BAD D3AE0842 050B35C6
	ds_read_b64_tr_b8 v[8:9], v185 offset:37632                // 00000000482C: D9C49300 080000B9
	ds_read_b64_tr_b8 v[10:11], v185 offset:38656              // 000000004834: D9C49700 0A0000B9
	ds_read_b64_tr_b8 v[12:13], v185 offset:39680              // 00000000483C: D9C49B00 0C0000B9
	ds_read_b64_tr_b8 v[14:15], v185 offset:40704              // 000000004844: D9C49F00 0E0000B9
	v_floor_f32_e32 v5, v5                                     // 00000000484C: 7E0A3F05
	v_med3_f32 v5, v5, s54, 0                                  // 000000004850: D1D60005 02006D05
	v_cvt_i32_f32_e32 v6, v5                                   // 000000004858: 7E0C1105
	v_add_u32_e32 v17, 0x7f, v6                                // 00000000485C: 68220CFF 0000007F
	v_lshlrev_b32_e32 v190, 23, v17                            // 000000004864: 257C2297
	v_fma_f32 v6, v16, v174, s50                               // 000000004868: D1CB0006 00CB5D10
	v_fma_f32 v192, v4, v174, v6                               // 000000004870: D1CB00C0 041B5D04
	v_fma_f32 v191, v5, v174, v6                               // 000000004878: D1CB00BF 041B5D05
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[162:169], v[154:161], v[50:65], v173, v189 op_sel_hi:[0,0,0]// 000000004880: D3AC0000 00037BAD D3AE0832 04CB35A2
	s_waitcnt lgkmcnt(0)                                       // 000000004890: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[206:213], v[154:161], v[34:49], v173, v189 op_sel_hi:[0,0,0]// 000000004894: D3AC0000 00037BAD D3AE0822 048B35CE
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[8:15], v[154:161], v[18:33], v173, v189 op_sel_hi:[0,0,0]// 0000000048A4: D3AC0000 00037BAD D3AE0812 044B3508
	s_cmp_eq_u32 s69, 0                                        // 0000000048B4: BF068045
	s_cbranch_scc1 68                                          // 0000000048B8: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2ecc>
	v_sub_f32_e32 v4, v188, v16                                // 0000000048BC: 040821BC
	v_exp_f32_e32 v4, v4                                       // 0000000048C0: 7E084104
	s_nop 0                                                    // 0000000048C4: BF800000
	v_pk_mul_f32 v[80:81], v[4:5], v[80:81] op_sel_hi:[0,1]    // 0000000048C8: D3B14050 1002A104
	v_pk_mul_f32 v[78:79], v[4:5], v[78:79] op_sel_hi:[0,1]    // 0000000048D0: D3B1404E 10029D04
	v_pk_mul_f32 v[76:77], v[4:5], v[76:77] op_sel_hi:[0,1]    // 0000000048D8: D3B1404C 10029904
	v_pk_mul_f32 v[74:75], v[4:5], v[74:75] op_sel_hi:[0,1]    // 0000000048E0: D3B1404A 10029504
	v_pk_mul_f32 v[72:73], v[4:5], v[72:73] op_sel_hi:[0,1]    // 0000000048E8: D3B14048 10029104
	v_pk_mul_f32 v[70:71], v[4:5], v[70:71] op_sel_hi:[0,1]    // 0000000048F0: D3B14046 10028D04
	v_pk_mul_f32 v[68:69], v[4:5], v[68:69] op_sel_hi:[0,1]    // 0000000048F8: D3B14044 10028904
	v_pk_mul_f32 v[66:67], v[4:5], v[66:67] op_sel_hi:[0,1]    // 000000004900: D3B14042 10028504
	v_pk_mul_f32 v[64:65], v[4:5], v[64:65] op_sel_hi:[0,1]    // 000000004908: D3B14040 10028104
	v_pk_mul_f32 v[62:63], v[4:5], v[62:63] op_sel_hi:[0,1]    // 000000004910: D3B1403E 10027D04
	v_pk_mul_f32 v[60:61], v[4:5], v[60:61] op_sel_hi:[0,1]    // 000000004918: D3B1403C 10027904
	v_pk_mul_f32 v[58:59], v[4:5], v[58:59] op_sel_hi:[0,1]    // 000000004920: D3B1403A 10027504
	v_pk_mul_f32 v[56:57], v[4:5], v[56:57] op_sel_hi:[0,1]    // 000000004928: D3B14038 10027104
	v_pk_mul_f32 v[54:55], v[4:5], v[54:55] op_sel_hi:[0,1]    // 000000004930: D3B14036 10026D04
	v_pk_mul_f32 v[52:53], v[4:5], v[52:53] op_sel_hi:[0,1]    // 000000004938: D3B14034 10026904
	v_pk_mul_f32 v[50:51], v[4:5], v[50:51] op_sel_hi:[0,1]    // 000000004940: D3B14032 10026504
	v_pk_mul_f32 v[48:49], v[4:5], v[48:49] op_sel_hi:[0,1]    // 000000004948: D3B14030 10026104
	v_pk_mul_f32 v[46:47], v[4:5], v[46:47] op_sel_hi:[0,1]    // 000000004950: D3B1402E 10025D04
	v_pk_mul_f32 v[44:45], v[4:5], v[44:45] op_sel_hi:[0,1]    // 000000004958: D3B1402C 10025904
	v_pk_mul_f32 v[42:43], v[4:5], v[42:43] op_sel_hi:[0,1]    // 000000004960: D3B1402A 10025504
	v_pk_mul_f32 v[40:41], v[4:5], v[40:41] op_sel_hi:[0,1]    // 000000004968: D3B14028 10025104
	v_pk_mul_f32 v[38:39], v[4:5], v[38:39] op_sel_hi:[0,1]    // 000000004970: D3B14026 10024D04
	v_pk_mul_f32 v[36:37], v[4:5], v[36:37] op_sel_hi:[0,1]    // 000000004978: D3B14024 10024904
	v_pk_mul_f32 v[34:35], v[4:5], v[34:35] op_sel_hi:[0,1]    // 000000004980: D3B14022 10024504
	v_pk_mul_f32 v[32:33], v[4:5], v[32:33] op_sel_hi:[0,1]    // 000000004988: D3B14020 10024104
	v_pk_mul_f32 v[30:31], v[4:5], v[30:31] op_sel_hi:[0,1]    // 000000004990: D3B1401E 10023D04
	v_pk_mul_f32 v[28:29], v[4:5], v[28:29] op_sel_hi:[0,1]    // 000000004998: D3B1401C 10023904
	v_pk_mul_f32 v[26:27], v[4:5], v[26:27] op_sel_hi:[0,1]    // 0000000049A0: D3B1401A 10023504
	v_pk_mul_f32 v[24:25], v[4:5], v[24:25] op_sel_hi:[0,1]    // 0000000049A8: D3B14018 10023104
	v_pk_mul_f32 v[22:23], v[4:5], v[22:23] op_sel_hi:[0,1]    // 0000000049B0: D3B14016 10022D04
	v_pk_mul_f32 v[20:21], v[4:5], v[20:21] op_sel_hi:[0,1]    // 0000000049B8: D3B14014 10022904
	v_pk_mul_f32 v[18:19], v[4:5], v[18:19] op_sel_hi:[0,1]    // 0000000049C0: D3B14012 10022504
	v_mul_f32_e32 v186, v186, v4                               // 0000000049C8: 0B7409BA
	s_waitcnt vmcnt(4)                                         // 0000000049CC: BF8C0F74
	s_barrier                                                  // 0000000049D0: BF8A0000
	s_add_u32 s53, s53, 1                                      // 0000000049D4: 80358135
	s_add_u32 s48, s53, 1                                      // 0000000049D8: 80308135
	s_cmp_ge_u32 s48, s15                                      // 0000000049DC: BF090F30
	s_cbranch_scc1 621                                         // 0000000049E0: BF85026D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3898>
	s_setprio 0                                                // 0000000049E4: BF8F0000
	v_fma_f32 v4, v130, v184, v192                             // 0000000049E8: D1CB0004 07037182
	v_fma_f32 v5, v131, v184, v192                             // 0000000049F0: D1CB0005 07037183
	v_fma_f32 v6, v132, v184, v192                             // 0000000049F8: D1CB0006 07037184
	v_fma_f32 v7, v133, v184, v192                             // 000000004A00: D1CB0007 07037185
	v_fma_f32 v8, v134, v184, v192                             // 000000004A08: D1CB0008 07037186
	v_fma_f32 v9, v135, v184, v192                             // 000000004A10: D1CB0009 07037187
	v_fma_f32 v10, v136, v184, v192                            // 000000004A18: D1CB000A 07037188
	v_fma_f32 v11, v137, v184, v192                            // 000000004A20: D1CB000B 07037189
	v_fma_f32 v12, v138, v184, v192                            // 000000004A28: D1CB000C 0703718A
	v_fma_f32 v13, v139, v184, v192                            // 000000004A30: D1CB000D 0703718B
	v_fma_f32 v14, v140, v184, v192                            // 000000004A38: D1CB000E 0703718C
	v_fma_f32 v15, v141, v184, v192                            // 000000004A40: D1CB000F 0703718D
	v_fma_f32 v130, v142, v184, v192                           // 000000004A48: D1CB0082 0703718E
	v_fma_f32 v131, v143, v184, v192                           // 000000004A50: D1CB0083 0703718F
	v_fma_f32 v132, v144, v184, v192                           // 000000004A58: D1CB0084 07037190
	v_fma_f32 v133, v145, v184, v192                           // 000000004A60: D1CB0085 07037191
	v_fma_f32 v114, v114, v184, v192                           // 000000004A68: D1CB0072 07037172
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 000000004A70: D1DD0004 02010104
	v_fma_f32 v115, v115, v184, v192                           // 000000004A78: D1CB0073 07037173
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 000000004A80: D1DD0008 02010108
	v_fma_f32 v116, v116, v184, v192                           // 000000004A88: D1CB0074 07037174
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 000000004A90: D1DD000C 0201010C
	v_fma_f32 v117, v117, v184, v192                           // 000000004A98: D1CB0075 07037175
	v_cvt_pk_u8_f32 v130, v130, 0, 0                           // 000000004AA0: D1DD0082 02010182
	v_fma_f32 v118, v118, v184, v192                           // 000000004AA8: D1CB0076 07037176
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 000000004AB0: D1DD0004 04110305
	v_fma_f32 v119, v119, v184, v192                           // 000000004AB8: D1CB0077 07037177
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 000000004AC0: D1DD0005 04210309
	v_fma_f32 v8, v120, v184, v192                             // 000000004AC8: D1CB0008 07037178
	v_cvt_pk_u8_f32 v9, v13, 1, v12                            // 000000004AD0: D1DD0009 0431030D
	v_fma_f32 v12, v121, v184, v192                            // 000000004AD8: D1CB000C 07037179
	v_cvt_pk_u8_f32 v13, v131, 1, v130                         // 000000004AE0: D1DD000D 06090383
	v_fma_f32 v120, v122, v184, v192                           // 000000004AE8: D1CB0078 0703717A
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 000000004AF0: D1DD0004 04110506
	v_fma_f32 v121, v123, v184, v192                           // 000000004AF8: D1CB0079 0703717B
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 000000004B00: D1DD0005 0415050A
	v_fma_f32 v10, v124, v184, v192                            // 000000004B08: D1CB000A 0703717C
	v_cvt_pk_u8_f32 v6, v14, 2, v9                             // 000000004B10: D1DD0006 0425050E
	v_fma_f32 v14, v125, v184, v192                            // 000000004B18: D1CB000E 0703717D
	v_cvt_pk_u8_f32 v9, v132, 2, v13                           // 000000004B20: D1DD0009 04350584
	v_fma_f32 v13, v126, v184, v192                            // 000000004B28: D1CB000D 0703717E
	v_cvt_pk_u8_f32 v4, v7, 3, v4                              // 000000004B30: D1DD0004 04110707
	v_fma_f32 v122, v127, v184, v192                           // 000000004B38: D1CB007A 0703717F
	v_cvt_pk_u8_f32 v5, v11, 3, v5                             // 000000004B40: D1DD0005 0415070B
	v_fma_f32 v11, v128, v184, v192                            // 000000004B48: D1CB000B 07037180
	v_cvt_pk_u8_f32 v6, v15, 3, v6                             // 000000004B50: D1DD0006 0419070F
	v_fma_f32 v15, v129, v184, v192                            // 000000004B58: D1CB000F 07037181
	v_cvt_pk_u8_f32 v7, v133, 3, v9                            // 000000004B60: D1DD0007 04250785
	v_fma_f32 v98, v98, v184, v191                             // 000000004B68: D1CB0062 06FF7162
	v_cvt_pk_u8_f32 v9, v114, 0, 0                             // 000000004B70: D1DD0009 02010172
	v_fma_f32 v99, v99, v184, v191                             // 000000004B78: D1CB0063 06FF7163
	v_cvt_pk_u8_f32 v114, v118, 0, 0                           // 000000004B80: D1DD0072 02010176
	v_fma_f32 v100, v100, v184, v191                           // 000000004B88: D1CB0064 06FF7164
	v_cvt_pk_u8_f32 v118, v120, 0, 0                           // 000000004B90: D1DD0076 02010178
	v_fma_f32 v101, v101, v184, v191                           // 000000004B98: D1CB0065 06FF7165
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 000000004BA0: D1DD000D 0201010D
	v_fma_f32 v102, v102, v184, v191                           // 000000004BA8: D1CB0066 06FF7166
	v_cvt_pk_u8_f32 v9, v115, 1, v9                            // 000000004BB0: D1DD0009 04250373
	v_fma_f32 v103, v103, v184, v191                           // 000000004BB8: D1CB0067 06FF7167
	v_cvt_pk_u8_f32 v114, v119, 1, v114                        // 000000004BC0: D1DD0072 05C90377
	v_fma_f32 v104, v104, v184, v191                           // 000000004BC8: D1CB0068 06FF7168
	v_cvt_pk_u8_f32 v115, v121, 1, v118                        // 000000004BD0: D1DD0073 05D90379
	v_fma_f32 v105, v105, v184, v191                           // 000000004BD8: D1CB0069 06FF7169
	v_cvt_pk_u8_f32 v13, v122, 1, v13                          // 000000004BE0: D1DD000D 0435037A
	v_fma_f32 v106, v106, v184, v191                           // 000000004BE8: D1CB006A 06FF716A
	v_cvt_pk_u8_f32 v9, v116, 2, v9                            // 000000004BF0: D1DD0009 04250574
	v_fma_f32 v107, v107, v184, v191                           // 000000004BF8: D1CB006B 06FF716B
	v_cvt_pk_u8_f32 v114, v8, 2, v114                          // 000000004C00: D1DD0072 05C90508
	v_fma_f32 v108, v108, v184, v191                           // 000000004C08: D1CB006C 06FF716C
	v_cvt_pk_u8_f32 v10, v10, 2, v115                          // 000000004C10: D1DD000A 05CD050A
	v_fma_f32 v109, v109, v184, v191                           // 000000004C18: D1CB006D 06FF716D
	v_cvt_pk_u8_f32 v11, v11, 2, v13                           // 000000004C20: D1DD000B 0435050B
	v_fma_f32 v13, v110, v184, v191                            // 000000004C28: D1CB000D 06FF716E
	v_cvt_pk_u8_f32 v8, v117, 3, v9                            // 000000004C30: D1DD0008 04250775
	v_fma_f32 v110, v111, v184, v191                           // 000000004C38: D1CB006E 06FF716F
	v_cvt_pk_u8_f32 v9, v12, 3, v114                           // 000000004C40: D1DD0009 05C9070C
	v_fma_f32 v12, v112, v184, v191                            // 000000004C48: D1CB000C 06FF7170
	v_cvt_pk_u8_f32 v10, v14, 3, v10                           // 000000004C50: D1DD000A 0429070E
	v_fma_f32 v14, v113, v184, v191                            // 000000004C58: D1CB000E 06FF7171
	v_cvt_pk_u8_f32 v11, v15, 3, v11                           // 000000004C60: D1DD000B 042D070F
	v_fma_f32 v15, v82, v184, v191                             // 000000004C68: D1CB000F 06FF7152
	v_cvt_pk_u8_f32 v82, v98, 0, 0                             // 000000004C70: D1DD0052 02010162
	v_fma_f32 v83, v83, v184, v191                             // 000000004C78: D1CB0053 06FF7153
	v_cvt_pk_u8_f32 v98, v102, 0, 0                            // 000000004C80: D1DD0062 02010166
	v_fma_f32 v84, v84, v184, v191                             // 000000004C88: D1CB0054 06FF7154
	v_cvt_pk_u8_f32 v102, v106, 0, 0                           // 000000004C90: D1DD0066 0201016A
	v_fma_f32 v85, v85, v184, v191                             // 000000004C98: D1CB0055 06FF7155
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 000000004CA0: D1DD000D 0201010D
	v_fma_f32 v86, v86, v184, v191                             // 000000004CA8: D1CB0056 06FF7156
	v_cvt_pk_u8_f32 v82, v99, 1, v82                           // 000000004CB0: D1DD0052 05490363
	v_fma_f32 v87, v87, v184, v191                             // 000000004CB8: D1CB0057 06FF7157
	v_cvt_pk_u8_f32 v98, v103, 1, v98                          // 000000004CC0: D1DD0062 05890367
	v_fma_f32 v88, v88, v184, v191                             // 000000004CC8: D1CB0058 06FF7158
	v_cvt_pk_u8_f32 v99, v107, 1, v102                         // 000000004CD0: D1DD0063 0599036B
	v_fma_f32 v89, v89, v184, v191                             // 000000004CD8: D1CB0059 06FF7159
	v_cvt_pk_u8_f32 v13, v110, 1, v13                          // 000000004CE0: D1DD000D 0435036E
	v_fma_f32 v90, v90, v184, v191                             // 000000004CE8: D1CB005A 06FF715A
	v_cvt_pk_u8_f32 v82, v100, 2, v82                          // 000000004CF0: D1DD0052 05490564
	v_fma_f32 v91, v91, v184, v191                             // 000000004CF8: D1CB005B 06FF715B
	v_cvt_pk_u8_f32 v98, v104, 2, v98                          // 000000004D00: D1DD0062 05890568
	v_fma_f32 v92, v92, v184, v191                             // 000000004D08: D1CB005C 06FF715C
	v_cvt_pk_u8_f32 v99, v108, 2, v99                          // 000000004D10: D1DD0063 058D056C
	v_fma_f32 v93, v93, v184, v191                             // 000000004D18: D1CB005D 06FF715D
	v_cvt_pk_u8_f32 v12, v12, 2, v13                           // 000000004D20: D1DD000C 0435050C
	v_fma_f32 v13, v94, v184, v191                             // 000000004D28: D1CB000D 06FF715E
	v_cvt_pk_u8_f32 v154, v101, 3, v82                         // 000000004D30: D1DD009A 05490765
	v_fma_f32 v82, v95, v184, v191                             // 000000004D38: D1CB0052 06FF715F
	v_cvt_pk_u8_f32 v155, v105, 3, v98                         // 000000004D40: D1DD009B 05890769
	v_fma_f32 v94, v96, v184, v191                             // 000000004D48: D1CB005E 06FF7160
	v_cvt_pk_u8_f32 v156, v109, 3, v99                         // 000000004D50: D1DD009C 058D076D
	v_fma_f32 v95, v97, v184, v191                             // 000000004D58: D1CB005F 06FF7161
	v_cvt_pk_u8_f32 v157, v14, 3, v12                          // 000000004D60: D1DD009D 0431070E
	v_cvt_pk_u8_f32 v12, v15, 0, 0                             // 000000004D68: D1DD000C 0201010F
	v_cvt_pk_u8_f32 v14, v86, 0, 0                             // 000000004D70: D1DD000E 02010156
	v_cvt_pk_u8_f32 v15, v90, 0, 0                             // 000000004D78: D1DD000F 0201015A
	v_cvt_pk_u8_f32 v13, v13, 0, 0                             // 000000004D80: D1DD000D 0201010D
	v_cvt_pk_u8_f32 v12, v83, 1, v12                           // 000000004D88: D1DD000C 04310353
	v_cvt_pk_u8_f32 v14, v87, 1, v14                           // 000000004D90: D1DD000E 04390357
	v_cvt_pk_u8_f32 v15, v91, 1, v15                           // 000000004D98: D1DD000F 043D035B
	v_cvt_pk_u8_f32 v13, v82, 1, v13                           // 000000004DA0: D1DD000D 04350352
	v_cvt_pk_u8_f32 v12, v84, 2, v12                           // 000000004DA8: D1DD000C 04310554
	v_cvt_pk_u8_f32 v14, v88, 2, v14                           // 000000004DB0: D1DD000E 04390558
	v_cvt_pk_u8_f32 v15, v92, 2, v15                           // 000000004DB8: D1DD000F 043D055C
	v_cvt_pk_u8_f32 v13, v94, 2, v13                           // 000000004DC0: D1DD000D 0435055E
	v_cvt_pk_u8_f32 v158, v85, 3, v12                          // 000000004DC8: D1DD009E 04310755
	v_cvt_pk_u8_f32 v159, v89, 3, v14                          // 000000004DD0: D1DD009F 04390759
	v_cvt_pk_u8_f32 v160, v93, 3, v15                          // 000000004DD8: D1DD00A0 043D075D
	v_cvt_pk_u8_f32 v161, v95, 3, v13                          // 000000004DE0: D1DD00A1 0435075F
	ds_read_b128 v[86:89], v1                                  // 000000004DE8: D9FE0000 56000001
	ds_read_b128 v[90:93], v1 offset:16                        // 000000004DF0: D9FE0010 5A000001
	ds_read_b128 v[94:97], v1 offset:4096                      // 000000004DF8: D9FE1000 5E000001
	ds_read_b128 v[98:101], v1 offset:4112                     // 000000004E00: D9FE1010 62000001
	s_barrier                                                  // 000000004E08: BF8A0000
	s_setprio 1                                                // 000000004E0C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[4:11], 0// 000000004E10: D3AD000C 02020992
	v_mfma_f32_16x16x128_f8f6f4 v[82:85], v[146:153], v[154:161], 0// 000000004E18: D3AD0052 02033592
	ds_read_b128 v[162:165], v1 offset:8192                    // 000000004E20: D9FE2000 A2000001
	ds_read_b128 v[166:169], v1 offset:8208                    // 000000004E28: D9FE2010 A6000001
	ds_read_b128 v[192:195], v1 offset:12288                   // 000000004E30: D9FE3000 C0000001
	ds_read_b128 v[196:199], v1 offset:12304                   // 000000004E38: D9FE3010 C4000001
	s_waitcnt lgkmcnt(4)                                       // 000000004E40: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[86:93], v[228:235], 0// 000000004E44: D3AE0082 0203C956
	ds_read_b128 v[200:203], v172                              // 000000004E4C: D9FE0000 C80000AC
	ds_read_b128 v[204:207], v172 offset:16                    // 000000004E54: D9FE0010 CC0000AC
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[94:101], v[228:235], 0// 000000004E5C: D3AE0072 0203C95E
	ds_read_b128 v[208:211], v172 offset:4096                  // 000000004E64: D9FE1000 D00000AC
	ds_read_b128 v[212:215], v172 offset:4112                  // 000000004E6C: D9FE1010 D40000AC
	s_waitcnt lgkmcnt(4)                                       // 000000004E74: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[162:169], v[228:235], 0// 000000004E78: D3AE0062 0203C9A2
	ds_read_b128 v[162:165], v172 offset:8192                  // 000000004E80: D9FE2000 A20000AC
	ds_read_b128 v[166:169], v172 offset:8208                  // 000000004E88: D9FE2010 A60000AC
	s_min_u32 s48, s67, s68                                    // 000000004E90: 83B04443
	s_add_u32 m0, s56, 0xc000                                  // 000000004E94: 807CFF38 0000C000
	s_nop 0                                                    // 000000004E9C: BF800000
	buffer_load_dwordx4 v176, s[24:27], s48 offen lds          // 000000004EA0: E05D1000 300600B0
	v_mul_f32_e32 v3, v3, v12                                  // 000000004EA8: 0A061903
	v_add_f32_e32 v3, v186, v3                                 // 000000004EAC: 020607BA
	v_mul_f32_e32 v86, v190, v82                               // 000000004EB0: 0AACA5BE
	v_add_f32_e32 v186, v3, v86                                // 000000004EB4: 0374AD03
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[192:199], v[228:235], 0// 000000004EB8: D3AE0052 0203C9C0
	ds_read_b128 v[188:191], v172 offset:12288                 // 000000004EC0: D9FE3000 BC0000AC
	ds_read_b128 v[192:195], v172 offset:12304                 // 000000004EC8: D9FE3010 C00000AC
	s_add_u32 m0, s56, 0xe000                                  // 000000004ED0: 807CFF38 0000E000
	s_nop 0                                                    // 000000004ED8: BF800000
	buffer_load_dwordx4 v177, s[24:27], s48 offen lds          // 000000004EDC: E05D1000 300600B1
	s_waitcnt lgkmcnt(4)                                       // 000000004EE4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[200:207], v[236:243], v[130:145]// 000000004EE8: D3AE0082 060BD9C8
	ds_read_b64_tr_b8 v[196:197], v185 offset:49152            // 000000004EF0: D9C4C000 C40000B9
	ds_read_b64_tr_b8 v[198:199], v185 offset:50176            // 000000004EF8: D9C4C400 C60000B9
	ds_read_b64_tr_b8 v[200:201], v185 offset:51200            // 000000004F00: D9C4C800 C80000B9
	ds_read_b64_tr_b8 v[202:203], v185 offset:52224            // 000000004F08: D9C4CC00 CA0000B9
	s_min_u32 s48, s66, s68                                    // 000000004F10: 83B04442
	s_add_u32 m0, s57, 0x4000                                  // 000000004F14: 807CFF39 00004000
	s_nop 0                                                    // 000000004F1C: BF800000
	buffer_load_dwordx4 v178, s[28:31], s48 offen lds          // 000000004F20: E05D1000 300700B2
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[208:215], v[236:243], v[114:129]// 000000004F28: D3AE0072 05CBD9D0
	ds_read_b64_tr_b8 v[204:205], v185 offset:49408            // 000000004F30: D9C4C100 CC0000B9
	ds_read_b64_tr_b8 v[206:207], v185 offset:50432            // 000000004F38: D9C4C500 CE0000B9
	ds_read_b64_tr_b8 v[208:209], v185 offset:51456            // 000000004F40: D9C4C900 D00000B9
	ds_read_b64_tr_b8 v[210:211], v185 offset:52480            // 000000004F48: D9C4CD00 D20000B9
	s_add_u32 m0, s57, 0x6000                                  // 000000004F50: 807CFF39 00006000
	s_nop 0                                                    // 000000004F58: BF800000
	buffer_load_dwordx4 v179, s[28:31], s48 offen lds          // 000000004F5C: E05D1000 300700B3
	s_add_u32 s67, s67, s58                                    // 000000004F64: 80433A43
	s_add_u32 s66, s66, s58                                    // 000000004F68: 80423A42
	v_max_f32_e32 v3, v130, v131                               // 000000004F6C: 16070782
	v_max3_f32 v3, v132, v133, v3                              // 000000004F70: D1D30003 040F0B84
	v_max3_f32 v3, v134, v135, v3                              // 000000004F78: D1D30003 040F0F86
	v_max3_f32 v3, v136, v137, v3                              // 000000004F80: D1D30003 040F1388
	v_max3_f32 v3, v138, v139, v3                              // 000000004F88: D1D30003 040F178A
	v_max3_f32 v3, v140, v141, v3                              // 000000004F90: D1D30003 040F1B8C
	v_max3_f32 v3, v142, v143, v3                              // 000000004F98: D1D30003 040F1F8E
	v_max3_f32 v3, v144, v145, v3                              // 000000004FA0: D1D30003 040F2390
	s_waitcnt lgkmcnt(8)                                       // 000000004FA8: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[162:169], v[236:243], v[98:113]// 000000004FAC: D3AE0062 058BD9A2
	ds_read_b64_tr_b8 v[162:163], v185 offset:49664            // 000000004FB4: D9C4C200 A20000B9
	ds_read_b64_tr_b8 v[164:165], v185 offset:50688            // 000000004FBC: D9C4C600 A40000B9
	ds_read_b64_tr_b8 v[166:167], v185 offset:51712            // 000000004FC4: D9C4CA00 A60000B9
	ds_read_b64_tr_b8 v[168:169], v185 offset:52736            // 000000004FCC: D9C4CE00 A80000B9
	v_max_f32_e32 v12, v114, v115                              // 000000004FD4: 1618E772
	v_max3_f32 v12, v116, v117, v12                            // 000000004FD8: D1D3000C 0432EB74
	v_max3_f32 v12, v118, v119, v12                            // 000000004FE0: D1D3000C 0432EF76
	v_max3_f32 v12, v120, v121, v12                            // 000000004FE8: D1D3000C 0432F378
	v_max3_f32 v12, v122, v123, v12                            // 000000004FF0: D1D3000C 0432F77A
	v_max3_f32 v12, v124, v125, v12                            // 000000004FF8: D1D3000C 0432FB7C
	v_max3_f32 v12, v126, v127, v12                            // 000000005000: D1D3000C 0432FF7E
	v_max3_f32 v12, v128, v129, v12                            // 000000005008: D1D3000C 04330380
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[188:195], v[236:243], v[82:97]// 000000005010: D3AE0052 054BD9BC
	s_nop 3                                                    // 000000005018: BF800003
	v_max_f32_e32 v13, v98, v99                                // 00000000501C: 161AC762
	v_max3_f32 v13, v100, v101, v13                            // 000000005020: D1D3000D 0436CB64
	v_max3_f32 v13, v102, v103, v13                            // 000000005028: D1D3000D 0436CF66
	v_max3_f32 v13, v104, v105, v13                            // 000000005030: D1D3000D 0436D368
	v_max3_f32 v13, v106, v107, v13                            // 000000005038: D1D3000D 0436D76A
	v_max3_f32 v13, v108, v109, v13                            // 000000005040: D1D3000D 0436DB6C
	v_max3_f32 v13, v110, v111, v13                            // 000000005048: D1D3000D 0436DF6E
	v_max3_f32 v13, v112, v113, v13                            // 000000005050: D1D3000D 0436E370
	s_waitcnt lgkmcnt(4)                                       // 000000005058: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[196:203], v[4:11], v[66:81], v173, v187 op_sel_hi:[0,0,0]// 00000000505C: D3AC0000 000377AD D3AE0842 050A09C4
	ds_read_b64_tr_b8 v[188:189], v185 offset:49920            // 00000000506C: D9C4C300 BC0000B9
	ds_read_b64_tr_b8 v[190:191], v185 offset:50944            // 000000005074: D9C4C700 BE0000B9
	ds_read_b64_tr_b8 v[192:193], v185 offset:51968            // 00000000507C: D9C4CB00 C00000B9
	ds_read_b64_tr_b8 v[194:195], v185 offset:52992            // 000000005084: D9C4CF00 C20000B9
	ds_read_b64_tr_b8 v[196:197], v185 offset:53248            // 00000000508C: D9C4D000 C40000B9
	ds_read_b64_tr_b8 v[198:199], v185 offset:54272            // 000000005094: D9C4D400 C60000B9
	ds_read_b64_tr_b8 v[200:201], v185 offset:55296            // 00000000509C: D9C4D800 C80000B9
	ds_read_b64_tr_b8 v[202:203], v185 offset:56320            // 0000000050A4: D9C4DC00 CA0000B9
	v_max_f32_e32 v14, v82, v83                                // 0000000050AC: 161CA752
	v_max3_f32 v14, v84, v85, v14                              // 0000000050B0: D1D3000E 043AAB54
	v_max3_f32 v14, v86, v87, v14                              // 0000000050B8: D1D3000E 043AAF56
	v_max3_f32 v14, v88, v89, v14                              // 0000000050C0: D1D3000E 043AB358
	v_max3_f32 v14, v90, v91, v14                              // 0000000050C8: D1D3000E 043AB75A
	v_max3_f32 v14, v92, v93, v14                              // 0000000050D0: D1D3000E 043ABB5C
	v_max3_f32 v14, v94, v95, v14                              // 0000000050D8: D1D3000E 043ABF5E
	v_max3_f32 v14, v96, v97, v14                              // 0000000050E0: D1D3000E 043AC360
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[204:211], v[4:11], v[50:65], v173, v187 op_sel_hi:[0,0,0]// 0000000050E8: D3AC0000 000377AD D3AE0832 04CA09CC
	v_max_f32_e32 v12, v3, v12                                 // 0000000050F8: 16181903
	v_max_f32_e32 v14, v13, v14                                // 0000000050FC: 161C1D0D
	v_mov_b32_e32 v13, v12                                     // 000000005100: 7E1A030C
	v_mov_b32_e32 v15, v14                                     // 000000005104: 7E1E030E
	s_nop 0                                                    // 000000005108: BF800000
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000510C: 7E18B50D
	v_permlane32_swap_b32_e32 v14, v15                         // 000000005110: 7E1CB50F
	v_max_f32_e32 v3, v12, v13                                 // 000000005114: 16061B0C
	v_max_f32_e32 v12, v14, v15                                // 000000005118: 16181F0E
	s_waitcnt lgkmcnt(4)                                       // 00000000511C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[162:169], v[4:11], v[34:49], v173, v187 op_sel_hi:[0,0,0]// 000000005120: D3AC0000 000377AD D3AE0822 048A09A2
	ds_read_b64_tr_b8 v[162:163], v185 offset:53504            // 000000005130: D9C4D100 A20000B9
	ds_read_b64_tr_b8 v[164:165], v185 offset:54528            // 000000005138: D9C4D500 A40000B9
	ds_read_b64_tr_b8 v[166:167], v185 offset:55552            // 000000005140: D9C4D900 A60000B9
	ds_read_b64_tr_b8 v[168:169], v185 offset:56576            // 000000005148: D9C4DD00 A80000B9
	ds_read_b64_tr_b8 v[204:205], v185 offset:53760            // 000000005150: D9C4D200 CC0000B9
	ds_read_b64_tr_b8 v[206:207], v185 offset:54784            // 000000005158: D9C4D600 CE0000B9
	ds_read_b64_tr_b8 v[208:209], v185 offset:55808            // 000000005160: D9C4DA00 D00000B9
	ds_read_b64_tr_b8 v[210:211], v185 offset:56832            // 000000005168: D9C4DE00 D20000B9
	v_max_f32_e32 v13, v3, v12                                 // 000000005170: 161A1903
	v_mul_f32_e32 v13, v183, v13                               // 000000005174: 0A1A1BB7
	v_max_f32_e32 v13, v16, v13                                // 000000005178: 161A1B10
	v_sub_f32_e32 v14, v13, v16                                // 00000000517C: 041C210D
	v_cmp_lt_f32_e32 vcc, s55, v14                             // 000000005180: 7C821C37
	s_cmp_lg_u64 vcc, 0                                        // 000000005184: BF13806A
	s_cselect_b64 s[48:49], -1, 0                              // 000000005188: 85B080C1
	s_cselect_b32 s69, 1, 0                                    // 00000000518C: 85458081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[188:195], v[4:11], v[18:33], v173, v187 op_sel_hi:[0,0,0]// 000000005190: D3AC0000 000377AD D3AE0812 044A09BC
	v_cndmask_b32_e64 v188, v16, v13, s[48:49]                 // 0000000051A0: D10000BC 00C21B10
	v_fma_f32 v3, v3, v183, -v188                              // 0000000051A8: D1CB0003 86F36F03
	v_floor_f32_e32 v3, v3                                     // 0000000051B0: 7E063F03
	v_med3_f32 v4, v3, s54, 0                                  // 0000000051B4: D1D60004 02006D03
	v_cvt_i32_f32_e32 v3, v4                                   // 0000000051BC: 7E061104
	v_add_u32_e32 v187, 0x7f, v3                               // 0000000051C0: 697606FF 0000007F
	v_lshlrev_b32_e32 v3, 23, v187                             // 0000000051C8: 24077697
	v_fma_f32 v5, v12, v183, -v188                             // 0000000051CC: D1CB0005 86F36F0C
	s_waitcnt lgkmcnt(4)                                       // 0000000051D4: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[196:203], v[154:161], v[66:81], v173, v17 op_sel_hi:[0,0,0]// 0000000051D8: D3AC0000 000223AD D3AE0842 050B35C4
	ds_read_b64_tr_b8 v[8:9], v185 offset:54016                // 0000000051E8: D9C4D300 080000B9
	ds_read_b64_tr_b8 v[10:11], v185 offset:55040              // 0000000051F0: D9C4D700 0A0000B9
	ds_read_b64_tr_b8 v[12:13], v185 offset:56064              // 0000000051F8: D9C4DB00 0C0000B9
	ds_read_b64_tr_b8 v[14:15], v185 offset:57088              // 000000005200: D9C4DF00 0E0000B9
	v_floor_f32_e32 v5, v5                                     // 000000005208: 7E0A3F05
	v_med3_f32 v5, v5, s54, 0                                  // 00000000520C: D1D60005 02006D05
	v_cvt_i32_f32_e32 v6, v5                                   // 000000005214: 7E0C1105
	v_add_u32_e32 v189, 0x7f, v6                               // 000000005218: 697A0CFF 0000007F
	v_lshlrev_b32_e32 v190, 23, v189                           // 000000005220: 257D7A97
	v_fma_f32 v6, v188, v174, s50                              // 000000005224: D1CB0006 00CB5DBC
	v_fma_f32 v192, v4, v174, v6                               // 00000000522C: D1CB00C0 041B5D04
	v_fma_f32 v191, v5, v174, v6                               // 000000005234: D1CB00BF 041B5D05
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[162:169], v[154:161], v[50:65], v173, v17 op_sel_hi:[0,0,0]// 00000000523C: D3AC0000 000223AD D3AE0832 04CB35A2
	s_waitcnt lgkmcnt(0)                                       // 00000000524C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[204:211], v[154:161], v[34:49], v173, v17 op_sel_hi:[0,0,0]// 000000005250: D3AC0000 000223AD D3AE0822 048B35CC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[8:15], v[154:161], v[18:33], v173, v17 op_sel_hi:[0,0,0]// 000000005260: D3AC0000 000223AD D3AE0812 044B3508
	s_cmp_eq_u32 s69, 0                                        // 000000005270: BF068045
	s_cbranch_scc1 68                                          // 000000005274: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3888>
	v_sub_f32_e32 v4, v16, v188                                // 000000005278: 04097910
	v_exp_f32_e32 v4, v4                                       // 00000000527C: 7E084104
	s_nop 0                                                    // 000000005280: BF800000
	v_pk_mul_f32 v[80:81], v[4:5], v[80:81] op_sel_hi:[0,1]    // 000000005284: D3B14050 1002A104
	v_pk_mul_f32 v[78:79], v[4:5], v[78:79] op_sel_hi:[0,1]    // 00000000528C: D3B1404E 10029D04
	v_pk_mul_f32 v[76:77], v[4:5], v[76:77] op_sel_hi:[0,1]    // 000000005294: D3B1404C 10029904
	v_pk_mul_f32 v[74:75], v[4:5], v[74:75] op_sel_hi:[0,1]    // 00000000529C: D3B1404A 10029504
	v_pk_mul_f32 v[72:73], v[4:5], v[72:73] op_sel_hi:[0,1]    // 0000000052A4: D3B14048 10029104
	v_pk_mul_f32 v[70:71], v[4:5], v[70:71] op_sel_hi:[0,1]    // 0000000052AC: D3B14046 10028D04
	v_pk_mul_f32 v[68:69], v[4:5], v[68:69] op_sel_hi:[0,1]    // 0000000052B4: D3B14044 10028904
	v_pk_mul_f32 v[66:67], v[4:5], v[66:67] op_sel_hi:[0,1]    // 0000000052BC: D3B14042 10028504
	v_pk_mul_f32 v[64:65], v[4:5], v[64:65] op_sel_hi:[0,1]    // 0000000052C4: D3B14040 10028104
	v_pk_mul_f32 v[62:63], v[4:5], v[62:63] op_sel_hi:[0,1]    // 0000000052CC: D3B1403E 10027D04
	v_pk_mul_f32 v[60:61], v[4:5], v[60:61] op_sel_hi:[0,1]    // 0000000052D4: D3B1403C 10027904
	v_pk_mul_f32 v[58:59], v[4:5], v[58:59] op_sel_hi:[0,1]    // 0000000052DC: D3B1403A 10027504
	v_pk_mul_f32 v[56:57], v[4:5], v[56:57] op_sel_hi:[0,1]    // 0000000052E4: D3B14038 10027104
	v_pk_mul_f32 v[54:55], v[4:5], v[54:55] op_sel_hi:[0,1]    // 0000000052EC: D3B14036 10026D04
	v_pk_mul_f32 v[52:53], v[4:5], v[52:53] op_sel_hi:[0,1]    // 0000000052F4: D3B14034 10026904
	v_pk_mul_f32 v[50:51], v[4:5], v[50:51] op_sel_hi:[0,1]    // 0000000052FC: D3B14032 10026504
	v_pk_mul_f32 v[48:49], v[4:5], v[48:49] op_sel_hi:[0,1]    // 000000005304: D3B14030 10026104
	v_pk_mul_f32 v[46:47], v[4:5], v[46:47] op_sel_hi:[0,1]    // 00000000530C: D3B1402E 10025D04
	v_pk_mul_f32 v[44:45], v[4:5], v[44:45] op_sel_hi:[0,1]    // 000000005314: D3B1402C 10025904
	v_pk_mul_f32 v[42:43], v[4:5], v[42:43] op_sel_hi:[0,1]    // 00000000531C: D3B1402A 10025504
	v_pk_mul_f32 v[40:41], v[4:5], v[40:41] op_sel_hi:[0,1]    // 000000005324: D3B14028 10025104
	v_pk_mul_f32 v[38:39], v[4:5], v[38:39] op_sel_hi:[0,1]    // 00000000532C: D3B14026 10024D04
	v_pk_mul_f32 v[36:37], v[4:5], v[36:37] op_sel_hi:[0,1]    // 000000005334: D3B14024 10024904
	v_pk_mul_f32 v[34:35], v[4:5], v[34:35] op_sel_hi:[0,1]    // 00000000533C: D3B14022 10024504
	v_pk_mul_f32 v[32:33], v[4:5], v[32:33] op_sel_hi:[0,1]    // 000000005344: D3B14020 10024104
	v_pk_mul_f32 v[30:31], v[4:5], v[30:31] op_sel_hi:[0,1]    // 00000000534C: D3B1401E 10023D04
	v_pk_mul_f32 v[28:29], v[4:5], v[28:29] op_sel_hi:[0,1]    // 000000005354: D3B1401C 10023904
	v_pk_mul_f32 v[26:27], v[4:5], v[26:27] op_sel_hi:[0,1]    // 00000000535C: D3B1401A 10023504
	v_pk_mul_f32 v[24:25], v[4:5], v[24:25] op_sel_hi:[0,1]    // 000000005364: D3B14018 10023104
	v_pk_mul_f32 v[22:23], v[4:5], v[22:23] op_sel_hi:[0,1]    // 00000000536C: D3B14016 10022D04
	v_pk_mul_f32 v[20:21], v[4:5], v[20:21] op_sel_hi:[0,1]    // 000000005374: D3B14014 10022904
	v_pk_mul_f32 v[18:19], v[4:5], v[18:19] op_sel_hi:[0,1]    // 00000000537C: D3B14012 10022504
	v_mul_f32_e32 v186, v186, v4                               // 000000005384: 0B7409BA
	s_waitcnt vmcnt(4)                                         // 000000005388: BF8C0F74
	s_barrier                                                  // 00000000538C: BF8A0000
	s_add_u32 s53, s53, 1                                      // 000000005390: 80358135
	s_branch 63045                                             // 000000005394: BF82F645 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x11ac>
	v_mov_b32_e32 v188, v16                                    // 000000005398: 7F780310
	v_mov_b32_e32 v189, v17                                    // 00000000539C: 7F7A0311
	s_add_u32 s48, s53, s62                                    // 0000000053A0: 80303E35
	s_bitcmp1_b32 s48, 0                                       // 0000000053A4: BF0D8030
	s_cbranch_scc1 1392                                        // 0000000053A8: BF850570 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4e6c>
	s_branch 5                                                 // 0000000053AC: BF820005 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x38c4>
	v_mov_b32_e32 v188, v16                                    // 0000000053B0: 7F780310
	v_mov_b32_e32 v189, v17                                    // 0000000053B4: 7F7A0311
	s_add_u32 s48, s53, s62                                    // 0000000053B8: 80303E35
	s_bitcmp1_b32 s48, 0                                       // 0000000053BC: BF0D8030
	s_cbranch_scc1 1386                                        // 0000000053C0: BF85056A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4e6c>
	s_add_u32 s48, s53, 1                                      // 0000000053C4: 80308135
	s_cmp_ge_u32 s48, s65                                      // 0000000053C8: BF094130
	s_cbranch_scc1 2962                                        // 0000000053CC: BF850B92 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6718>
	s_add_u32 s49, s53, s62                                    // 0000000053D0: 80313E35
	s_lshl_b32 s66, s49, 14                                    // 0000000053D4: 8E428E31
	s_and_b32 s48, s66, 0xc000                                 // 0000000053D8: 8630FF42 0000C000
	v_add_u32_e32 v193, s48, v185                              // 0000000053E0: 69837230
	s_cmp_ge_u32 s53, s15                                      // 0000000053E4: BF090F35
	s_cbranch_scc1 937                                         // 0000000053E8: BF8503A9 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4790>
	s_setprio 0                                                // 0000000053EC: BF8F0000
	v_fma_f32 v94, v94, v184, v191                             // 0000000053F0: D1CB005E 06FF715E
	s_addk_i32 s66, 0x4000                                     // 0000000053F8: B7424000
	v_fma_f32 v95, v95, v184, v191                             // 0000000053FC: D1CB005F 06FF715F
	v_cvt_pk_u8_f32 v94, v94, 0, 0                             // 000000005404: D1DD005E 0201015E
	s_and_b32 s66, s66, 0xc000                                 // 00000000540C: 8642FF42 0000C000
	v_cvt_pk_u8_f32 v94, v95, 1, v94                           // 000000005414: D1DD005E 0579035F
	v_or_b32_e32 v95, s66, v1                                  // 00000000541C: 28BE0242
	ds_read_b128 v[194:197], v95                               // 000000005420: D9FE0000 C200005F
	ds_read_b128 v[198:201], v95 offset:16                     // 000000005428: D9FE0010 C600005F
	ds_read_b128 v[202:205], v95 offset:4096                   // 000000005430: D9FE1000 CA00005F
	ds_read_b128 v[206:209], v95 offset:4112                   // 000000005438: D9FE1010 CE00005F
	v_fma_f32 v4, v130, v184, v192                             // 000000005440: D1CB0004 07037182
	v_fma_f32 v8, v114, v184, v192                             // 000000005448: D1CB0008 07037172
	v_fma_f32 v10, v116, v184, v192                            // 000000005450: D1CB000A 07037174
	v_fma_f32 v12, v134, v184, v192                            // 000000005458: D1CB000C 07037186
	v_fma_f32 v16, v118, v184, v192                            // 000000005460: D1CB0010 07037176
	v_fma_f32 v114, v120, v184, v192                           // 000000005468: D1CB0072 07037178
	v_fma_f32 v116, v138, v184, v192                           // 000000005470: D1CB0074 0703718A
	v_fma_f32 v120, v122, v184, v192                           // 000000005478: D1CB0078 0703717A
	v_fma_f32 v122, v124, v184, v192                           // 000000005480: D1CB007A 0703717C
	v_fma_f32 v124, v142, v184, v192                           // 000000005488: D1CB007C 0703718E
	v_fma_f32 v126, v126, v184, v192                           // 000000005490: D1CB007E 0703717E
	v_fma_f32 v98, v98, v184, v191                             // 000000005498: D1CB0062 06FF7162
	v_fma_f32 v82, v82, v184, v191                             // 0000000054A0: D1CB0052 06FF7152
	v_fma_f32 v102, v102, v184, v191                           // 0000000054A8: D1CB0066 06FF7166
	v_fma_f32 v86, v86, v184, v191                             // 0000000054B0: D1CB0056 06FF7156
	v_fma_f32 v106, v106, v184, v191                           // 0000000054B8: D1CB006A 06FF716A
	v_fma_f32 v90, v90, v184, v191                             // 0000000054C0: D1CB005A 06FF715A
	v_fma_f32 v110, v110, v184, v191                           // 0000000054C8: D1CB006E 06FF716E
	v_fma_f32 v5, v131, v184, v192                             // 0000000054D0: D1CB0005 07037183
	v_fma_f32 v9, v115, v184, v192                             // 0000000054D8: D1CB0009 07037173
	v_fma_f32 v11, v117, v184, v192                            // 0000000054E0: D1CB000B 07037175
	v_fma_f32 v13, v135, v184, v192                            // 0000000054E8: D1CB000D 07037187
	v_fma_f32 v17, v119, v184, v192                            // 0000000054F0: D1CB0011 07037177
	v_fma_f32 v115, v121, v184, v192                           // 0000000054F8: D1CB0073 07037179
	v_fma_f32 v117, v139, v184, v192                           // 000000005500: D1CB0075 0703718B
	v_fma_f32 v121, v123, v184, v192                           // 000000005508: D1CB0079 0703717B
	v_fma_f32 v123, v125, v184, v192                           // 000000005510: D1CB007B 0703717D
	v_fma_f32 v125, v143, v184, v192                           // 000000005518: D1CB007D 0703718F
	v_fma_f32 v127, v127, v184, v192                           // 000000005520: D1CB007F 0703717F
	v_fma_f32 v99, v99, v184, v191                             // 000000005528: D1CB0063 06FF7163
	v_fma_f32 v83, v83, v184, v191                             // 000000005530: D1CB0053 06FF7153
	v_fma_f32 v103, v103, v184, v191                           // 000000005538: D1CB0067 06FF7167
	v_fma_f32 v87, v87, v184, v191                             // 000000005540: D1CB0057 06FF7157
	v_fma_f32 v107, v107, v184, v191                           // 000000005548: D1CB006B 06FF716B
	v_fma_f32 v91, v91, v184, v191                             // 000000005550: D1CB005B 06FF715B
	v_fma_f32 v111, v111, v184, v191                           // 000000005558: D1CB006F 06FF716F
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 000000005560: D1DD0004 02010104
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 000000005568: D1DD0008 02010108
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 000000005570: D1DD000C 0201010C
	v_cvt_pk_u8_f32 v16, v16, 0, 0                             // 000000005578: D1DD0010 02010110
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000005580: D1DD0074 02010174
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000005588: D1DD0078 02010178
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000005590: D1DD007C 0201017C
	v_cvt_pk_u8_f32 v126, v126, 0, 0                           // 000000005598: D1DD007E 0201017E
	v_cvt_pk_u8_f32 v98, v98, 0, 0                             // 0000000055A0: D1DD0062 02010162
	v_cvt_pk_u8_f32 v82, v82, 0, 0                             // 0000000055A8: D1DD0052 02010152
	v_cvt_pk_u8_f32 v102, v102, 0, 0                           // 0000000055B0: D1DD0066 02010166
	v_cvt_pk_u8_f32 v86, v86, 0, 0                             // 0000000055B8: D1DD0056 02010156
	v_cvt_pk_u8_f32 v106, v106, 0, 0                           // 0000000055C0: D1DD006A 0201016A
	v_cvt_pk_u8_f32 v90, v90, 0, 0                             // 0000000055C8: D1DD005A 0201015A
	v_cvt_pk_u8_f32 v110, v110, 0, 0                           // 0000000055D0: D1DD006E 0201016E
	v_fma_f32 v6, v132, v184, v192                             // 0000000055D8: D1CB0006 07037184
	v_fma_f32 v14, v136, v184, v192                            // 0000000055E0: D1CB000E 07037188
	v_fma_f32 v118, v140, v184, v192                           // 0000000055E8: D1CB0076 0703718C
	v_fma_f32 v130, v144, v184, v192                           // 0000000055F0: D1CB0082 07037190
	v_fma_f32 v128, v128, v184, v192                           // 0000000055F8: D1CB0080 07037180
	v_fma_f32 v100, v100, v184, v191                           // 000000005600: D1CB0064 06FF7164
	v_fma_f32 v84, v84, v184, v191                             // 000000005608: D1CB0054 06FF7154
	v_fma_f32 v104, v104, v184, v191                           // 000000005610: D1CB0068 06FF7168
	v_fma_f32 v88, v88, v184, v191                             // 000000005618: D1CB0058 06FF7158
	v_fma_f32 v108, v108, v184, v191                           // 000000005620: D1CB006C 06FF716C
	v_fma_f32 v92, v92, v184, v191                             // 000000005628: D1CB005C 06FF715C
	v_fma_f32 v112, v112, v184, v191                           // 000000005630: D1CB0070 06FF7170
	v_fma_f32 v96, v96, v184, v191                             // 000000005638: D1CB0060 06FF7160
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 000000005640: D1DD0004 04110305
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 000000005648: D1DD0005 04210309
	v_cvt_pk_u8_f32 v8, v13, 1, v12                            // 000000005650: D1DD0008 0431030D
	v_cvt_pk_u8_f32 v9, v17, 1, v16                            // 000000005658: D1DD0009 04410311
	v_cvt_pk_u8_f32 v12, v117, 1, v116                         // 000000005660: D1DD000C 05D10375
	v_cvt_pk_u8_f32 v13, v121, 1, v120                         // 000000005668: D1DD000D 05E10379
	v_cvt_pk_u8_f32 v16, v125, 1, v124                         // 000000005670: D1DD0010 05F1037D
	v_cvt_pk_u8_f32 v17, v127, 1, v126                         // 000000005678: D1DD0011 05F9037F
	v_cvt_pk_u8_f32 v98, v99, 1, v98                           // 000000005680: D1DD0062 05890363
	v_cvt_pk_u8_f32 v82, v83, 1, v82                           // 000000005688: D1DD0052 05490353
	v_cvt_pk_u8_f32 v83, v103, 1, v102                         // 000000005690: D1DD0053 05990367
	v_cvt_pk_u8_f32 v86, v87, 1, v86                           // 000000005698: D1DD0056 05590357
	v_cvt_pk_u8_f32 v87, v107, 1, v106                         // 0000000056A0: D1DD0057 05A9036B
	v_cvt_pk_u8_f32 v90, v91, 1, v90                           // 0000000056A8: D1DD005A 0569035B
	v_cvt_pk_u8_f32 v91, v111, 1, v110                         // 0000000056B0: D1DD005B 05B9036F
	v_fma_f32 v7, v133, v184, v192                             // 0000000056B8: D1CB0007 07037185
	v_fma_f32 v15, v137, v184, v192                            // 0000000056C0: D1CB000F 07037189
	v_fma_f32 v119, v141, v184, v192                           // 0000000056C8: D1CB0077 0703718D
	v_fma_f32 v131, v145, v184, v192                           // 0000000056D0: D1CB0083 07037191
	v_fma_f32 v129, v129, v184, v192                           // 0000000056D8: D1CB0081 07037181
	v_fma_f32 v101, v101, v184, v191                           // 0000000056E0: D1CB0065 06FF7165
	v_fma_f32 v85, v85, v184, v191                             // 0000000056E8: D1CB0055 06FF7155
	v_fma_f32 v105, v105, v184, v191                           // 0000000056F0: D1CB0069 06FF7169
	v_fma_f32 v89, v89, v184, v191                             // 0000000056F8: D1CB0059 06FF7159
	v_fma_f32 v109, v109, v184, v191                           // 000000005700: D1CB006D 06FF716D
	v_fma_f32 v93, v93, v184, v191                             // 000000005708: D1CB005D 06FF715D
	v_fma_f32 v113, v113, v184, v191                           // 000000005710: D1CB0071 06FF7171
	v_fma_f32 v97, v97, v184, v191                             // 000000005718: D1CB0061 06FF7161
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 000000005720: D1DD0004 04110506
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 000000005728: D1DD0005 0415050A
	v_cvt_pk_u8_f32 v6, v14, 2, v8                             // 000000005730: D1DD0006 0421050E
	v_cvt_pk_u8_f32 v8, v114, 2, v9                            // 000000005738: D1DD0008 04250572
	v_cvt_pk_u8_f32 v9, v118, 2, v12                           // 000000005740: D1DD0009 04310576
	v_cvt_pk_u8_f32 v10, v122, 2, v13                          // 000000005748: D1DD000A 0435057A
	v_cvt_pk_u8_f32 v12, v130, 2, v16                          // 000000005750: D1DD000C 04410582
	v_cvt_pk_u8_f32 v13, v128, 2, v17                          // 000000005758: D1DD000D 04450580
	v_cvt_pk_u8_f32 v14, v100, 2, v98                          // 000000005760: D1DD000E 05890564
	v_cvt_pk_u8_f32 v16, v84, 2, v82                           // 000000005768: D1DD0010 05490554
	v_cvt_pk_u8_f32 v17, v104, 2, v83                          // 000000005770: D1DD0011 054D0568
	v_cvt_pk_u8_f32 v82, v88, 2, v86                           // 000000005778: D1DD0052 05590558
	v_cvt_pk_u8_f32 v83, v108, 2, v87                          // 000000005780: D1DD0053 055D056C
	v_cvt_pk_u8_f32 v84, v92, 2, v90                           // 000000005788: D1DD0054 0569055C
	v_cvt_pk_u8_f32 v86, v112, 2, v91                          // 000000005790: D1DD0056 056D0570
	v_cvt_pk_u8_f32 v87, v96, 2, v94                           // 000000005798: D1DD0057 05790560
	v_cvt_pk_u8_f32 v162, v7, 3, v4                            // 0000000057A0: D1DD00A2 04110707
	v_cvt_pk_u8_f32 v166, v11, 3, v5                           // 0000000057A8: D1DD00A6 0415070B
	v_cvt_pk_u8_f32 v163, v15, 3, v6                           // 0000000057B0: D1DD00A3 0419070F
	v_cvt_pk_u8_f32 v167, v115, 3, v8                          // 0000000057B8: D1DD00A7 04210773
	v_cvt_pk_u8_f32 v164, v119, 3, v9                          // 0000000057C0: D1DD00A4 04250777
	v_cvt_pk_u8_f32 v168, v123, 3, v10                         // 0000000057C8: D1DD00A8 0429077B
	v_cvt_pk_u8_f32 v165, v131, 3, v12                         // 0000000057D0: D1DD00A5 04310783
	v_cvt_pk_u8_f32 v169, v129, 3, v13                         // 0000000057D8: D1DD00A9 04350781
	v_cvt_pk_u8_f32 v154, v101, 3, v14                         // 0000000057E0: D1DD009A 04390765
	v_cvt_pk_u8_f32 v158, v85, 3, v16                          // 0000000057E8: D1DD009E 04410755
	v_cvt_pk_u8_f32 v155, v105, 3, v17                         // 0000000057F0: D1DD009B 04450769
	v_cvt_pk_u8_f32 v159, v89, 3, v82                          // 0000000057F8: D1DD009F 05490759
	v_cvt_pk_u8_f32 v156, v109, 3, v83                         // 000000005800: D1DD009C 054D076D
	v_cvt_pk_u8_f32 v160, v93, 3, v84                          // 000000005808: D1DD00A0 0551075D
	v_cvt_pk_u8_f32 v157, v113, 3, v86                         // 000000005810: D1DD009D 05590771
	v_cvt_pk_u8_f32 v161, v97, 3, v87                          // 000000005818: D1DD00A1 055D0761
	s_barrier                                                  // 000000005820: BF8A0000
	s_and_b32 s48, s49, 3                                      // 000000005824: 86308331
	s_setprio 1                                                // 000000005828: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[4:7], v[146:153], v[162:169], 0// 00000000582C: D3AD0004 02034592
	v_mfma_f32_16x16x128_f8f6f4 v[6:9], v[146:153], v[154:161], 0// 000000005834: D3AD0006 02033592
	s_nop 3                                                    // 00000000583C: BF800003
	v_mul_f32_e32 v3, v3, v4                                   // 000000005840: 0A060903
	v_add_f32_e32 v3, v186, v3                                 // 000000005844: 020607BA
	s_nop 5                                                    // 000000005848: BF800005
	v_mul_f32_e32 v4, v190, v6                                 // 00000000584C: 0A080DBE
	v_add_f32_e32 v186, v3, v4                                 // 000000005850: 03740903
	ds_read_b128 v[82:85], v95 offset:8192                     // 000000005854: D9FE2000 5200005F
	ds_read_b128 v[86:89], v95 offset:8208                     // 00000000585C: D9FE2010 5600005F
	ds_read_b128 v[210:213], v95 offset:12288                  // 000000005864: D9FE3000 D200005F
	ds_read_b128 v[214:217], v95 offset:12304                  // 00000000586C: D9FE3010 D600005F
	s_waitcnt lgkmcnt(4)                                       // 000000005874: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[194:201], v[228:235], 0// 000000005878: D3AE0082 0203C9C2
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[202:209], v[228:235], 0// 000000005880: D3AE0072 0203C9CA
	v_or_b32_e32 v3, s66, v172                                 // 000000005888: 28075842
	ds_read_b128 v[4:7], v3                                    // 00000000588C: D9FE0000 04000003
	ds_read_b128 v[8:11], v3 offset:16                         // 000000005894: D9FE0010 08000003
	ds_read_b128 v[194:197], v3 offset:4096                    // 00000000589C: D9FE1000 C2000003
	ds_read_b128 v[198:201], v3 offset:4112                    // 0000000058A4: D9FE1010 C6000003
	s_waitcnt lgkmcnt(4)                                       // 0000000058AC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[82:89], v[228:235], 0// 0000000058B0: D3AE0062 0203C952
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[210:217], v[228:235], 0// 0000000058B8: D3AE0052 0203C9D2
	ds_read_b128 v[202:205], v3 offset:8192                    // 0000000058C0: D9FE2000 CA000003
	ds_read_b128 v[206:209], v3 offset:8208                    // 0000000058C8: D9FE2010 CE000003
	ds_read_b128 v[210:213], v3 offset:12288                   // 0000000058D0: D9FE3000 D2000003
	ds_read_b128 v[214:217], v3 offset:12304                   // 0000000058D8: D9FE3010 D6000003
	s_add_u32 s49, s53, 4                                      // 0000000058E0: 80318435
	s_cmp_ge_u32 s49, s65                                      // 0000000058E4: BF094131
	s_cbranch_scc1 13                                          // 0000000058E8: BF85000D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3e20>
	s_lshl_b32 s66, s48, 14                                    // 0000000058EC: 8E428E30
	s_mul_i32 s49, s49, s8                                     // 0000000058F0: 92310831
	s_or_b32 s66, s56, s66                                     // 0000000058F4: 87424238
	s_lshl_b32 s49, s49, 7                                     // 0000000058F8: 8E318731
	s_add_u32 m0, s66, 0                                       // 0000000058FC: 807C8042
	s_nop 0                                                    // 000000005900: BF800000
	buffer_load_dwordx4 v176, s[24:27], s49 offen lds          // 000000005904: E05D1000 310600B0
	s_add_u32 m0, s66, 0x2000                                  // 00000000590C: 807CFF42 00002000
	s_nop 0                                                    // 000000005914: BF800000
	buffer_load_dwordx4 v177, s[24:27], s49 offen lds          // 000000005918: E05D1000 310600B1
	s_add_u32 s49, s53, 2                                      // 000000005920: 80318235
	s_cmp_ge_u32 s49, s65                                      // 000000005924: BF094131
	s_cbranch_scc1 15                                          // 000000005928: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3e68>
	s_lshl_b32 s48, s48, 14                                    // 00000000592C: 8E308E30
	s_mul_i32 s49, s49, s8                                     // 000000005930: 92310831
	s_xor_b32 s48, s48, 0x8000                                 // 000000005934: 8830FF30 00008000
	s_lshl_b32 s49, s49, 7                                     // 00000000593C: 8E318731
	s_add_u32 s48, s57, s48                                    // 000000005940: 80303039
	s_add_u32 m0, s48, 0                                       // 000000005944: 807C8030
	s_nop 0                                                    // 000000005948: BF800000
	buffer_load_dwordx4 v178, s[28:31], s49 offen lds          // 00000000594C: E05D1000 310700B2
	s_add_u32 m0, s48, 0x2000                                  // 000000005954: 807CFF30 00002000
	s_nop 0                                                    // 00000000595C: BF800000
	buffer_load_dwordx4 v179, s[28:31], s49 offen lds          // 000000005960: E05D1000 310700B3
	s_waitcnt lgkmcnt(4)                                       // 000000005968: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[4:11], v[236:243], v[130:145]// 00000000596C: D3AE0082 060BD904
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[194:201], v[236:243], v[114:129]// 000000005974: D3AE0072 05CBD9C2
	s_waitcnt lgkmcnt(0)                                       // 00000000597C: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[202:209], v[236:243], v[98:113]// 000000005980: D3AE0062 058BD9CA
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[210:217], v[236:243], v[82:97]// 000000005988: D3AE0052 054BD9D2
	s_lshl_b32 s48, s53, 7                                     // 000000005990: 8E308735
	s_add_u32 s66, s48, 0x80                                   // 000000005994: 8042FF30 00000080
	s_sub_u32 s48, s3, s66                                     // 00000000599C: 80B04203
	s_sub_i32 s48, s48, 0                                      // 0000000059A0: 81B08030
	s_cmp_ge_i32 s48, 32                                       // 0000000059A4: BF03A030
	s_cbranch_scc1 69                                          // 0000000059A8: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3fc0>
	s_cmp_lt_i32 s48, 0                                        // 0000000059AC: BF048030
	s_cbranch_scc1 2393                                        // 0000000059B0: BF850959 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6418>
	v_add_u32_e32 v3, s48, v170                                // 0000000059B4: 68075430
	v_and_b32_e32 v4, 4, v175                                  // 0000000059B8: 26095E84
	v_sub_u32_e32 v3, v3, v4                                   // 0000000059BC: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 0000000059C0: 7D880680
	s_nop 1                                                    // 0000000059C4: BF800001
	v_cndmask_b32_e64 v130, v130, v2, vcc                      // 0000000059C8: D1000082 01AA0582
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 0000000059D0: 7D880681
	s_nop 1                                                    // 0000000059D4: BF800001
	v_cndmask_b32_e64 v131, v131, v2, vcc                      // 0000000059D8: D1000083 01AA0583
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 0000000059E0: 7D880682
	s_nop 1                                                    // 0000000059E4: BF800001
	v_cndmask_b32_e64 v132, v132, v2, vcc                      // 0000000059E8: D1000084 01AA0584
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 0000000059F0: 7D880683
	s_nop 1                                                    // 0000000059F4: BF800001
	v_cndmask_b32_e64 v133, v133, v2, vcc                      // 0000000059F8: D1000085 01AA0585
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 000000005A00: 7D880688
	s_nop 1                                                    // 000000005A04: BF800001
	v_cndmask_b32_e64 v134, v134, v2, vcc                      // 000000005A08: D1000086 01AA0586
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 000000005A10: 7D880689
	s_nop 1                                                    // 000000005A14: BF800001
	v_cndmask_b32_e64 v135, v135, v2, vcc                      // 000000005A18: D1000087 01AA0587
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 000000005A20: 7D88068A
	s_nop 1                                                    // 000000005A24: BF800001
	v_cndmask_b32_e64 v136, v136, v2, vcc                      // 000000005A28: D1000088 01AA0588
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 000000005A30: 7D88068B
	s_nop 1                                                    // 000000005A34: BF800001
	v_cndmask_b32_e64 v137, v137, v2, vcc                      // 000000005A38: D1000089 01AA0589
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 000000005A40: 7D880690
	s_nop 1                                                    // 000000005A44: BF800001
	v_cndmask_b32_e64 v138, v138, v2, vcc                      // 000000005A48: D100008A 01AA058A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 000000005A50: 7D880691
	s_nop 1                                                    // 000000005A54: BF800001
	v_cndmask_b32_e64 v139, v139, v2, vcc                      // 000000005A58: D100008B 01AA058B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 000000005A60: 7D880692
	s_nop 1                                                    // 000000005A64: BF800001
	v_cndmask_b32_e64 v140, v140, v2, vcc                      // 000000005A68: D100008C 01AA058C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 000000005A70: 7D880693
	s_nop 1                                                    // 000000005A74: BF800001
	v_cndmask_b32_e64 v141, v141, v2, vcc                      // 000000005A78: D100008D 01AA058D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 000000005A80: 7D880698
	s_nop 1                                                    // 000000005A84: BF800001
	v_cndmask_b32_e64 v142, v142, v2, vcc                      // 000000005A88: D100008E 01AA058E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 000000005A90: 7D880699
	s_nop 1                                                    // 000000005A94: BF800001
	v_cndmask_b32_e64 v143, v143, v2, vcc                      // 000000005A98: D100008F 01AA058F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 000000005AA0: 7D88069A
	s_nop 1                                                    // 000000005AA4: BF800001
	v_cndmask_b32_e64 v144, v144, v2, vcc                      // 000000005AA8: D1000090 01AA0590
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 000000005AB0: 7D88069B
	s_nop 1                                                    // 000000005AB4: BF800001
	v_cndmask_b32_e64 v145, v145, v2, vcc                      // 000000005AB8: D1000091 01AA0591
	s_sub_u32 s48, s3, s66                                     // 000000005AC0: 80B04203
	s_sub_i32 s48, s48, 32                                     // 000000005AC4: 81B0A030
	s_cmp_ge_i32 s48, 32                                       // 000000005AC8: BF03A030
	s_cbranch_scc1 69                                          // 000000005ACC: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x40e4>
	s_cmp_lt_i32 s48, 0                                        // 000000005AD0: BF048030
	s_cbranch_scc1 2464                                        // 000000005AD4: BF8509A0 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6658>
	v_add_u32_e32 v3, s48, v170                                // 000000005AD8: 68075430
	v_and_b32_e32 v4, 4, v175                                  // 000000005ADC: 26095E84
	v_sub_u32_e32 v3, v3, v4                                   // 000000005AE0: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 000000005AE4: 7D880680
	s_nop 1                                                    // 000000005AE8: BF800001
	v_cndmask_b32_e64 v114, v114, v2, vcc                      // 000000005AEC: D1000072 01AA0572
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 000000005AF4: 7D880681
	s_nop 1                                                    // 000000005AF8: BF800001
	v_cndmask_b32_e64 v115, v115, v2, vcc                      // 000000005AFC: D1000073 01AA0573
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 000000005B04: 7D880682
	s_nop 1                                                    // 000000005B08: BF800001
	v_cndmask_b32_e64 v116, v116, v2, vcc                      // 000000005B0C: D1000074 01AA0574
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 000000005B14: 7D880683
	s_nop 1                                                    // 000000005B18: BF800001
	v_cndmask_b32_e64 v117, v117, v2, vcc                      // 000000005B1C: D1000075 01AA0575
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 000000005B24: 7D880688
	s_nop 1                                                    // 000000005B28: BF800001
	v_cndmask_b32_e64 v118, v118, v2, vcc                      // 000000005B2C: D1000076 01AA0576
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 000000005B34: 7D880689
	s_nop 1                                                    // 000000005B38: BF800001
	v_cndmask_b32_e64 v119, v119, v2, vcc                      // 000000005B3C: D1000077 01AA0577
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 000000005B44: 7D88068A
	s_nop 1                                                    // 000000005B48: BF800001
	v_cndmask_b32_e64 v120, v120, v2, vcc                      // 000000005B4C: D1000078 01AA0578
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 000000005B54: 7D88068B
	s_nop 1                                                    // 000000005B58: BF800001
	v_cndmask_b32_e64 v121, v121, v2, vcc                      // 000000005B5C: D1000079 01AA0579
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 000000005B64: 7D880690
	s_nop 1                                                    // 000000005B68: BF800001
	v_cndmask_b32_e64 v122, v122, v2, vcc                      // 000000005B6C: D100007A 01AA057A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 000000005B74: 7D880691
	s_nop 1                                                    // 000000005B78: BF800001
	v_cndmask_b32_e64 v123, v123, v2, vcc                      // 000000005B7C: D100007B 01AA057B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 000000005B84: 7D880692
	s_nop 1                                                    // 000000005B88: BF800001
	v_cndmask_b32_e64 v124, v124, v2, vcc                      // 000000005B8C: D100007C 01AA057C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 000000005B94: 7D880693
	s_nop 1                                                    // 000000005B98: BF800001
	v_cndmask_b32_e64 v125, v125, v2, vcc                      // 000000005B9C: D100007D 01AA057D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 000000005BA4: 7D880698
	s_nop 1                                                    // 000000005BA8: BF800001
	v_cndmask_b32_e64 v126, v126, v2, vcc                      // 000000005BAC: D100007E 01AA057E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 000000005BB4: 7D880699
	s_nop 1                                                    // 000000005BB8: BF800001
	v_cndmask_b32_e64 v127, v127, v2, vcc                      // 000000005BBC: D100007F 01AA057F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 000000005BC4: 7D88069A
	s_nop 1                                                    // 000000005BC8: BF800001
	v_cndmask_b32_e64 v128, v128, v2, vcc                      // 000000005BCC: D1000080 01AA0580
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 000000005BD4: 7D88069B
	s_nop 1                                                    // 000000005BD8: BF800001
	v_cndmask_b32_e64 v129, v129, v2, vcc                      // 000000005BDC: D1000081 01AA0581
	s_sub_u32 s48, s3, s66                                     // 000000005BE4: 80B04203
	s_sub_i32 s48, s48, 64                                     // 000000005BE8: 81B0C030
	s_cmp_ge_i32 s48, 32                                       // 000000005BEC: BF03A030
	s_cbranch_scc1 69                                          // 000000005BF0: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4208>
	s_cmp_lt_i32 s48, 0                                        // 000000005BF4: BF048030
	s_cbranch_scc1 2343                                        // 000000005BF8: BF850927 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6598>
	v_add_u32_e32 v3, s48, v170                                // 000000005BFC: 68075430
	v_and_b32_e32 v4, 4, v175                                  // 000000005C00: 26095E84
	v_sub_u32_e32 v3, v3, v4                                   // 000000005C04: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 000000005C08: 7D880680
	s_nop 1                                                    // 000000005C0C: BF800001
	v_cndmask_b32_e64 v98, v98, v2, vcc                        // 000000005C10: D1000062 01AA0562
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 000000005C18: 7D880681
	s_nop 1                                                    // 000000005C1C: BF800001
	v_cndmask_b32_e64 v99, v99, v2, vcc                        // 000000005C20: D1000063 01AA0563
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 000000005C28: 7D880682
	s_nop 1                                                    // 000000005C2C: BF800001
	v_cndmask_b32_e64 v100, v100, v2, vcc                      // 000000005C30: D1000064 01AA0564
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 000000005C38: 7D880683
	s_nop 1                                                    // 000000005C3C: BF800001
	v_cndmask_b32_e64 v101, v101, v2, vcc                      // 000000005C40: D1000065 01AA0565
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 000000005C48: 7D880688
	s_nop 1                                                    // 000000005C4C: BF800001
	v_cndmask_b32_e64 v102, v102, v2, vcc                      // 000000005C50: D1000066 01AA0566
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 000000005C58: 7D880689
	s_nop 1                                                    // 000000005C5C: BF800001
	v_cndmask_b32_e64 v103, v103, v2, vcc                      // 000000005C60: D1000067 01AA0567
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 000000005C68: 7D88068A
	s_nop 1                                                    // 000000005C6C: BF800001
	v_cndmask_b32_e64 v104, v104, v2, vcc                      // 000000005C70: D1000068 01AA0568
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 000000005C78: 7D88068B
	s_nop 1                                                    // 000000005C7C: BF800001
	v_cndmask_b32_e64 v105, v105, v2, vcc                      // 000000005C80: D1000069 01AA0569
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 000000005C88: 7D880690
	s_nop 1                                                    // 000000005C8C: BF800001
	v_cndmask_b32_e64 v106, v106, v2, vcc                      // 000000005C90: D100006A 01AA056A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 000000005C98: 7D880691
	s_nop 1                                                    // 000000005C9C: BF800001
	v_cndmask_b32_e64 v107, v107, v2, vcc                      // 000000005CA0: D100006B 01AA056B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 000000005CA8: 7D880692
	s_nop 1                                                    // 000000005CAC: BF800001
	v_cndmask_b32_e64 v108, v108, v2, vcc                      // 000000005CB0: D100006C 01AA056C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 000000005CB8: 7D880693
	s_nop 1                                                    // 000000005CBC: BF800001
	v_cndmask_b32_e64 v109, v109, v2, vcc                      // 000000005CC0: D100006D 01AA056D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 000000005CC8: 7D880698
	s_nop 1                                                    // 000000005CCC: BF800001
	v_cndmask_b32_e64 v110, v110, v2, vcc                      // 000000005CD0: D100006E 01AA056E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 000000005CD8: 7D880699
	s_nop 1                                                    // 000000005CDC: BF800001
	v_cndmask_b32_e64 v111, v111, v2, vcc                      // 000000005CE0: D100006F 01AA056F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 000000005CE8: 7D88069A
	s_nop 1                                                    // 000000005CEC: BF800001
	v_cndmask_b32_e64 v112, v112, v2, vcc                      // 000000005CF0: D1000070 01AA0570
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 000000005CF8: 7D88069B
	s_nop 1                                                    // 000000005CFC: BF800001
	v_cndmask_b32_e64 v113, v113, v2, vcc                      // 000000005D00: D1000071 01AA0571
	s_sub_u32 s48, s3, s66                                     // 000000005D08: 80B04203
	s_sub_i32 s48, s48, 0x60                                   // 000000005D0C: 81B0FF30 00000060
	s_cmp_ge_i32 s48, 32                                       // 000000005D14: BF03A030
	s_cbranch_scc1 69                                          // 000000005D18: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4330>
	s_cmp_lt_i32 s48, 0                                        // 000000005D1C: BF048030
	s_cbranch_scc1 2221                                        // 000000005D20: BF8508AD <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x64d8>
	v_add_u32_e32 v3, s48, v170                                // 000000005D24: 68075430
	v_and_b32_e32 v4, 4, v175                                  // 000000005D28: 26095E84
	v_sub_u32_e32 v3, v3, v4                                   // 000000005D2C: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 000000005D30: 7D880680
	s_nop 3                                                    // 000000005D34: BF800003
	v_cndmask_b32_e64 v82, v82, v2, vcc                        // 000000005D38: D1000052 01AA0552
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 000000005D40: 7D880681
	s_nop 1                                                    // 000000005D44: BF800001
	v_cndmask_b32_e64 v83, v83, v2, vcc                        // 000000005D48: D1000053 01AA0553
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 000000005D50: 7D880682
	s_nop 1                                                    // 000000005D54: BF800001
	v_cndmask_b32_e64 v84, v84, v2, vcc                        // 000000005D58: D1000054 01AA0554
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 000000005D60: 7D880683
	s_nop 1                                                    // 000000005D64: BF800001
	v_cndmask_b32_e64 v85, v85, v2, vcc                        // 000000005D68: D1000055 01AA0555
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 000000005D70: 7D880688
	s_nop 1                                                    // 000000005D74: BF800001
	v_cndmask_b32_e64 v86, v86, v2, vcc                        // 000000005D78: D1000056 01AA0556
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 000000005D80: 7D880689
	s_nop 1                                                    // 000000005D84: BF800001
	v_cndmask_b32_e64 v87, v87, v2, vcc                        // 000000005D88: D1000057 01AA0557
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 000000005D90: 7D88068A
	s_nop 1                                                    // 000000005D94: BF800001
	v_cndmask_b32_e64 v88, v88, v2, vcc                        // 000000005D98: D1000058 01AA0558
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 000000005DA0: 7D88068B
	s_nop 1                                                    // 000000005DA4: BF800001
	v_cndmask_b32_e64 v89, v89, v2, vcc                        // 000000005DA8: D1000059 01AA0559
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 000000005DB0: 7D880690
	s_nop 1                                                    // 000000005DB4: BF800001
	v_cndmask_b32_e64 v90, v90, v2, vcc                        // 000000005DB8: D100005A 01AA055A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 000000005DC0: 7D880691
	s_nop 1                                                    // 000000005DC4: BF800001
	v_cndmask_b32_e64 v91, v91, v2, vcc                        // 000000005DC8: D100005B 01AA055B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 000000005DD0: 7D880692
	s_nop 1                                                    // 000000005DD4: BF800001
	v_cndmask_b32_e64 v92, v92, v2, vcc                        // 000000005DD8: D100005C 01AA055C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 000000005DE0: 7D880693
	s_nop 1                                                    // 000000005DE4: BF800001
	v_cndmask_b32_e64 v93, v93, v2, vcc                        // 000000005DE8: D100005D 01AA055D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 000000005DF0: 7D880698
	s_nop 1                                                    // 000000005DF4: BF800001
	v_cndmask_b32_e64 v94, v94, v2, vcc                        // 000000005DF8: D100005E 01AA055E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 000000005E00: 7D880699
	s_nop 1                                                    // 000000005E04: BF800001
	v_cndmask_b32_e64 v95, v95, v2, vcc                        // 000000005E08: D100005F 01AA055F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 000000005E10: 7D88069A
	s_nop 1                                                    // 000000005E14: BF800001
	v_cndmask_b32_e64 v96, v96, v2, vcc                        // 000000005E18: D1000060 01AA0560
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 000000005E20: 7D88069B
	s_nop 1                                                    // 000000005E24: BF800001
	v_cndmask_b32_e64 v97, v97, v2, vcc                        // 000000005E28: D1000061 01AA0561
	v_max_f32_e32 v3, v130, v131                               // 000000005E30: 16070782
	v_max3_f32 v3, v132, v133, v3                              // 000000005E34: D1D30003 040F0B84
	v_max3_f32 v3, v134, v135, v3                              // 000000005E3C: D1D30003 040F0F86
	v_max3_f32 v3, v136, v137, v3                              // 000000005E44: D1D30003 040F1388
	v_max3_f32 v3, v138, v139, v3                              // 000000005E4C: D1D30003 040F178A
	v_max3_f32 v3, v140, v141, v3                              // 000000005E54: D1D30003 040F1B8C
	v_max3_f32 v3, v142, v143, v3                              // 000000005E5C: D1D30003 040F1F8E
	v_max3_f32 v3, v144, v145, v3                              // 000000005E64: D1D30003 040F2390
	v_max_f32_e32 v4, v114, v115                               // 000000005E6C: 1608E772
	v_max3_f32 v4, v116, v117, v4                              // 000000005E70: D1D30004 0412EB74
	v_max3_f32 v4, v118, v119, v4                              // 000000005E78: D1D30004 0412EF76
	v_max3_f32 v4, v120, v121, v4                              // 000000005E80: D1D30004 0412F378
	v_max3_f32 v4, v122, v123, v4                              // 000000005E88: D1D30004 0412F77A
	v_max3_f32 v4, v124, v125, v4                              // 000000005E90: D1D30004 0412FB7C
	v_max3_f32 v4, v126, v127, v4                              // 000000005E98: D1D30004 0412FF7E
	v_max3_f32 v5, v128, v129, v4                              // 000000005EA0: D1D30005 04130380
	v_max_f32_e32 v4, v98, v99                                 // 000000005EA8: 1608C762
	v_max3_f32 v4, v100, v101, v4                              // 000000005EAC: D1D30004 0412CB64
	v_max3_f32 v4, v102, v103, v4                              // 000000005EB4: D1D30004 0412CF66
	v_max3_f32 v4, v104, v105, v4                              // 000000005EBC: D1D30004 0412D368
	v_max3_f32 v4, v106, v107, v4                              // 000000005EC4: D1D30004 0412D76A
	v_max3_f32 v4, v108, v109, v4                              // 000000005ECC: D1D30004 0412DB6C
	v_max3_f32 v4, v110, v111, v4                              // 000000005ED4: D1D30004 0412DF6E
	v_max3_f32 v4, v112, v113, v4                              // 000000005EDC: D1D30004 0412E370
	v_max_f32_e32 v6, v82, v83                                 // 000000005EE4: 160CA752
	v_max3_f32 v6, v84, v85, v6                                // 000000005EE8: D1D30006 041AAB54
	v_max3_f32 v6, v86, v87, v6                                // 000000005EF0: D1D30006 041AAF56
	v_max3_f32 v6, v88, v89, v6                                // 000000005EF8: D1D30006 041AB358
	v_max3_f32 v6, v90, v91, v6                                // 000000005F00: D1D30006 041AB75A
	v_max3_f32 v6, v92, v93, v6                                // 000000005F08: D1D30006 041ABB5C
	v_max3_f32 v6, v94, v95, v6                                // 000000005F10: D1D30006 041ABF5E
	v_max3_f32 v6, v96, v97, v6                                // 000000005F18: D1D30006 041AC360
	v_max_f32_e32 v4, v4, v6                                   // 000000005F20: 16080D04
	v_max_f32_e32 v6, v3, v5                                   // 000000005F24: 160C0B03
	v_mov_b32_e32 v7, v6                                       // 000000005F28: 7E0E0306
	s_nop 1                                                    // 000000005F2C: BF800001
	v_permlane32_swap_b32_e32 v6, v7                           // 000000005F30: 7E0CB507
	v_mov_b32_e32 v5, v4                                       // 000000005F34: 7E0A0304
	s_nop 1                                                    // 000000005F38: BF800001
	v_permlane32_swap_b32_e32 v4, v5                           // 000000005F3C: 7E08B505
	v_max_f32_e32 v4, v4, v5                                   // 000000005F40: 16080B04
	v_max_f32_e32 v3, v6, v7                                   // 000000005F44: 16060F06
	v_max_f32_e32 v5, v3, v4                                   // 000000005F48: 160A0903
	v_mul_f32_e32 v5, v183, v5                                 // 000000005F4C: 0A0A0BB7
	v_max_f32_e32 v5, v188, v5                                 // 000000005F50: 160A0BBC
	v_sub_f32_e32 v6, v5, v188                                 // 000000005F54: 040D7905
	v_cmp_lt_f32_e32 vcc, s55, v6                              // 000000005F58: 7C820C37
	s_cmp_lg_u64 vcc, 0                                        // 000000005F5C: BF13806A
	s_cselect_b32 s48, 1, 0                                    // 000000005F60: 85308081
	s_cselect_b64 s[48:49], -1, 0                              // 000000005F64: 85B080C1
	v_cndmask_b32_e64 v5, v188, v5, s[48:49]                   // 000000005F68: D1000005 00C20BBC
	v_fma_f32 v3, v3, v183, -v5                                // 000000005F70: D1CB0003 84176F03
	v_floor_f32_e32 v3, v3                                     // 000000005F78: 7E063F03
	v_med3_f32 v8, v3, s54, 0                                  // 000000005F7C: D1D60008 02006D03
	v_cvt_i32_f32_e32 v3, v8                                   // 000000005F84: 7E061108
	v_add_u32_e32 v6, 0x7f, v3                                 // 000000005F88: 680C06FF 0000007F
	v_lshlrev_b32_e32 v3, 23, v6                               // 000000005F90: 24060C97
	v_fma_f32 v4, v4, v183, -v5                                // 000000005F94: D1CB0004 84176F04
	v_floor_f32_e32 v4, v4                                     // 000000005F9C: 7E083F04
	v_med3_f32 v4, v4, s54, 0                                  // 000000005FA0: D1D60004 02006D04
	v_cvt_i32_f32_e32 v7, v4                                   // 000000005FA8: 7E0E1104
	v_add_u32_e32 v7, 0x7f, v7                                 // 000000005FAC: 680E0EFF 0000007F
	v_lshlrev_b32_e32 v190, 23, v7                             // 000000005FB4: 257C0E97
	v_fma_f32 v9, v5, v174, s50                                // 000000005FB8: D1CB0009 00CB5D05
	v_fma_f32 v192, v8, v174, v9                               // 000000005FC0: D1CB00C0 04275D08
	v_fma_f32 v191, v4, v174, v9                               // 000000005FC8: D1CB00BF 04275D04
	ds_read_b64_tr_b8 v[8:9], v193                             // 000000005FD0: D9C40000 080000C1
	ds_read_b64_tr_b8 v[10:11], v193 offset:1024               // 000000005FD8: D9C40400 0A0000C1
	ds_read_b64_tr_b8 v[12:13], v193 offset:2048               // 000000005FE0: D9C40800 0C0000C1
	ds_read_b64_tr_b8 v[14:15], v193 offset:3072               // 000000005FE8: D9C40C00 0E0000C1
	ds_read_b64_tr_b8 v[194:195], v193 offset:256              // 000000005FF0: D9C40100 C20000C1
	ds_read_b64_tr_b8 v[196:197], v193 offset:1280             // 000000005FF8: D9C40500 C40000C1
	ds_read_b64_tr_b8 v[198:199], v193 offset:2304             // 000000006000: D9C40900 C60000C1
	ds_read_b64_tr_b8 v[200:201], v193 offset:3328             // 000000006008: D9C40D00 C80000C1
	ds_read_b64_tr_b8 v[202:203], v193 offset:512              // 000000006010: D9C40200 CA0000C1
	ds_read_b64_tr_b8 v[204:205], v193 offset:1536             // 000000006018: D9C40600 CC0000C1
	ds_read_b64_tr_b8 v[206:207], v193 offset:2560             // 000000006020: D9C40A00 CE0000C1
	ds_read_b64_tr_b8 v[208:209], v193 offset:3584             // 000000006028: D9C40E00 D00000C1
	s_waitcnt lgkmcnt(4)                                       // 000000006030: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[8:15], v[162:169], v[66:81], v173, v187 op_sel_hi:[0,0,0]// 000000006034: D3AC0000 000377AD D3AE0842 050B4508
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[194:201], v[162:169], v[50:65], v173, v187 op_sel_hi:[0,0,0]// 000000006044: D3AC0000 000377AD D3AE0832 04CB45C2
	ds_read_b64_tr_b8 v[8:9], v193 offset:768                  // 000000006054: D9C40300 080000C1
	ds_read_b64_tr_b8 v[10:11], v193 offset:1792               // 00000000605C: D9C40700 0A0000C1
	ds_read_b64_tr_b8 v[12:13], v193 offset:2816               // 000000006064: D9C40B00 0C0000C1
	ds_read_b64_tr_b8 v[14:15], v193 offset:3840               // 00000000606C: D9C40F00 0E0000C1
	ds_read_b64_tr_b8 v[194:195], v193 offset:4096             // 000000006074: D9C41000 C20000C1
	ds_read_b64_tr_b8 v[196:197], v193 offset:5120             // 00000000607C: D9C41400 C40000C1
	ds_read_b64_tr_b8 v[198:199], v193 offset:6144             // 000000006084: D9C41800 C60000C1
	ds_read_b64_tr_b8 v[200:201], v193 offset:7168             // 00000000608C: D9C41C00 C80000C1
	s_waitcnt lgkmcnt(4)                                       // 000000006094: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[202:209], v[162:169], v[34:49], v173, v187 op_sel_hi:[0,0,0]// 000000006098: D3AC0000 000377AD D3AE0822 048B45CA
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[8:15], v[162:169], v[18:33], v173, v187 op_sel_hi:[0,0,0]// 0000000060A8: D3AC0000 000377AD D3AE0812 044B4508
	ds_read_b64_tr_b8 v[202:203], v193 offset:4352             // 0000000060B8: D9C41100 CA0000C1
	ds_read_b64_tr_b8 v[204:205], v193 offset:5376             // 0000000060C0: D9C41500 CC0000C1
	ds_read_b64_tr_b8 v[206:207], v193 offset:6400             // 0000000060C8: D9C41900 CE0000C1
	ds_read_b64_tr_b8 v[208:209], v193 offset:7424             // 0000000060D0: D9C41D00 D00000C1
	ds_read_b64_tr_b8 v[8:9], v193 offset:4608                 // 0000000060D8: D9C41200 080000C1
	ds_read_b64_tr_b8 v[10:11], v193 offset:5632               // 0000000060E0: D9C41600 0A0000C1
	ds_read_b64_tr_b8 v[12:13], v193 offset:6656               // 0000000060E8: D9C41A00 0C0000C1
	ds_read_b64_tr_b8 v[14:15], v193 offset:7680               // 0000000060F0: D9C41E00 0E0000C1
	s_waitcnt lgkmcnt(4)                                       // 0000000060F8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[194:201], v[154:161], v[66:81], v173, v189 op_sel_hi:[0,0,0]// 0000000060FC: D3AC0000 00037BAD D3AE0842 050B35C2
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[202:209], v[154:161], v[50:65], v173, v189 op_sel_hi:[0,0,0]// 00000000610C: D3AC0000 00037BAD D3AE0832 04CB35CA
	ds_read_b64_tr_b8 v[162:163], v193 offset:4864             // 00000000611C: D9C41300 A20000C1
	ds_read_b64_tr_b8 v[164:165], v193 offset:5888             // 000000006124: D9C41700 A40000C1
	ds_read_b64_tr_b8 v[166:167], v193 offset:6912             // 00000000612C: D9C41B00 A60000C1
	ds_read_b64_tr_b8 v[168:169], v193 offset:7936             // 000000006134: D9C41F00 A80000C1
	s_waitcnt lgkmcnt(0)                                       // 00000000613C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[8:15], v[154:161], v[34:49], v173, v189 op_sel_hi:[0,0,0]// 000000006140: D3AC0000 00037BAD D3AE0822 048B3508
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[162:169], v[154:161], v[18:33], v173, v189 op_sel_hi:[0,0,0]// 000000006150: D3AC0000 00037BAD D3AE0812 044B35A2
	s_cbranch_vccz 68                                          // 000000006160: BF860044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4774>
	v_sub_f32_e32 v4, v188, v5                                 // 000000006164: 04080BBC
	v_exp_f32_e32 v4, v4                                       // 000000006168: 7E084104
	s_nop 3                                                    // 00000000616C: BF800003
	v_pk_mul_f32 v[80:81], v[4:5], v[80:81] op_sel_hi:[0,1]    // 000000006170: D3B14050 1002A104
	v_pk_mul_f32 v[78:79], v[4:5], v[78:79] op_sel_hi:[0,1]    // 000000006178: D3B1404E 10029D04
	v_pk_mul_f32 v[76:77], v[4:5], v[76:77] op_sel_hi:[0,1]    // 000000006180: D3B1404C 10029904
	v_pk_mul_f32 v[74:75], v[4:5], v[74:75] op_sel_hi:[0,1]    // 000000006188: D3B1404A 10029504
	v_pk_mul_f32 v[72:73], v[4:5], v[72:73] op_sel_hi:[0,1]    // 000000006190: D3B14048 10029104
	v_pk_mul_f32 v[70:71], v[4:5], v[70:71] op_sel_hi:[0,1]    // 000000006198: D3B14046 10028D04
	v_pk_mul_f32 v[68:69], v[4:5], v[68:69] op_sel_hi:[0,1]    // 0000000061A0: D3B14044 10028904
	v_pk_mul_f32 v[66:67], v[4:5], v[66:67] op_sel_hi:[0,1]    // 0000000061A8: D3B14042 10028504
	v_pk_mul_f32 v[64:65], v[4:5], v[64:65] op_sel_hi:[0,1]    // 0000000061B0: D3B14040 10028104
	v_pk_mul_f32 v[62:63], v[4:5], v[62:63] op_sel_hi:[0,1]    // 0000000061B8: D3B1403E 10027D04
	v_pk_mul_f32 v[60:61], v[4:5], v[60:61] op_sel_hi:[0,1]    // 0000000061C0: D3B1403C 10027904
	v_pk_mul_f32 v[58:59], v[4:5], v[58:59] op_sel_hi:[0,1]    // 0000000061C8: D3B1403A 10027504
	v_pk_mul_f32 v[56:57], v[4:5], v[56:57] op_sel_hi:[0,1]    // 0000000061D0: D3B14038 10027104
	v_pk_mul_f32 v[54:55], v[4:5], v[54:55] op_sel_hi:[0,1]    // 0000000061D8: D3B14036 10026D04
	v_pk_mul_f32 v[52:53], v[4:5], v[52:53] op_sel_hi:[0,1]    // 0000000061E0: D3B14034 10026904
	v_pk_mul_f32 v[50:51], v[4:5], v[50:51] op_sel_hi:[0,1]    // 0000000061E8: D3B14032 10026504
	v_pk_mul_f32 v[48:49], v[4:5], v[48:49] op_sel_hi:[0,1]    // 0000000061F0: D3B14030 10026104
	v_pk_mul_f32 v[46:47], v[4:5], v[46:47] op_sel_hi:[0,1]    // 0000000061F8: D3B1402E 10025D04
	v_pk_mul_f32 v[44:45], v[4:5], v[44:45] op_sel_hi:[0,1]    // 000000006200: D3B1402C 10025904
	v_pk_mul_f32 v[42:43], v[4:5], v[42:43] op_sel_hi:[0,1]    // 000000006208: D3B1402A 10025504
	v_pk_mul_f32 v[40:41], v[4:5], v[40:41] op_sel_hi:[0,1]    // 000000006210: D3B14028 10025104
	v_pk_mul_f32 v[38:39], v[4:5], v[38:39] op_sel_hi:[0,1]    // 000000006218: D3B14026 10024D04
	v_pk_mul_f32 v[36:37], v[4:5], v[36:37] op_sel_hi:[0,1]    // 000000006220: D3B14024 10024904
	v_pk_mul_f32 v[34:35], v[4:5], v[34:35] op_sel_hi:[0,1]    // 000000006228: D3B14022 10024504
	v_pk_mul_f32 v[32:33], v[4:5], v[32:33] op_sel_hi:[0,1]    // 000000006230: D3B14020 10024104
	v_pk_mul_f32 v[30:31], v[4:5], v[30:31] op_sel_hi:[0,1]    // 000000006238: D3B1401E 10023D04
	v_pk_mul_f32 v[28:29], v[4:5], v[28:29] op_sel_hi:[0,1]    // 000000006240: D3B1401C 10023904
	v_pk_mul_f32 v[26:27], v[4:5], v[26:27] op_sel_hi:[0,1]    // 000000006248: D3B1401A 10023504
	v_pk_mul_f32 v[24:25], v[4:5], v[24:25] op_sel_hi:[0,1]    // 000000006250: D3B14018 10023104
	v_pk_mul_f32 v[22:23], v[4:5], v[22:23] op_sel_hi:[0,1]    // 000000006258: D3B14016 10022D04
	v_pk_mul_f32 v[20:21], v[4:5], v[20:21] op_sel_hi:[0,1]    // 000000006260: D3B14014 10022904
	v_pk_mul_f32 v[18:19], v[4:5], v[18:19] op_sel_hi:[0,1]    // 000000006268: D3B14012 10022504
	v_mul_f32_e32 v186, v186, v4                               // 000000006270: 0B7409BA
	s_waitcnt vmcnt(0)                                         // 000000006274: BF8C0F70
	s_barrier                                                  // 000000006278: BF8A0000
	s_add_u32 s53, s53, 1                                      // 00000000627C: 80358135
	v_mov_b32_e32 v188, v5                                     // 000000006280: 7F780305
	v_mov_b32_e32 v187, v6                                     // 000000006284: 7F760306
	v_mov_b32_e32 v189, v7                                     // 000000006288: 7F7A0307
	s_branch 439                                               // 00000000628C: BF8201B7 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4e6c>
	s_cmp_eq_u32 s53, s15                                      // 000000006290: BF060F35
	s_cbranch_scc0 402                                         // 000000006294: BF840192 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4de0>
	s_setprio 0                                                // 000000006298: BF8F0000
	v_fma_f32 v4, v130, v184, v192                             // 00000000629C: D1CB0004 07037182
	v_fma_f32 v8, v114, v184, v192                             // 0000000062A4: D1CB0008 07037172
	v_fma_f32 v12, v134, v184, v192                            // 0000000062AC: D1CB000C 07037186
	v_fma_f32 v16, v118, v184, v192                            // 0000000062B4: D1CB0010 07037176
	v_fma_f32 v155, v138, v184, v192                           // 0000000062BC: D1CB009B 0703718A
	v_fma_f32 v159, v122, v184, v192                           // 0000000062C4: D1CB009F 0703717A
	v_fma_f32 v164, v142, v184, v192                           // 0000000062CC: D1CB00A4 0703718E
	v_fma_f32 v168, v126, v184, v192                           // 0000000062D4: D1CB00A8 0703717E
	v_fma_f32 v196, v98, v184, v191                            // 0000000062DC: D1CB00C4 06FF7162
	v_fma_f32 v200, v82, v184, v191                            // 0000000062E4: D1CB00C8 06FF7152
	v_fma_f32 v204, v102, v184, v191                           // 0000000062EC: D1CB00CC 06FF7166
	v_fma_f32 v208, v86, v184, v191                            // 0000000062F4: D1CB00D0 06FF7156
	v_fma_f32 v212, v106, v184, v191                           // 0000000062FC: D1CB00D4 06FF716A
	v_fma_f32 v216, v90, v184, v191                            // 000000006304: D1CB00D8 06FF715A
	v_fma_f32 v220, v110, v184, v191                           // 00000000630C: D1CB00DC 06FF716E
	v_fma_f32 v224, v94, v184, v191                            // 000000006314: D1CB00E0 06FF715E
	v_fma_f32 v5, v131, v184, v192                             // 00000000631C: D1CB0005 07037183
	v_fma_f32 v9, v115, v184, v192                             // 000000006324: D1CB0009 07037173
	v_fma_f32 v13, v135, v184, v192                            // 00000000632C: D1CB000D 07037187
	v_fma_f32 v17, v119, v184, v192                            // 000000006334: D1CB0011 07037177
	v_fma_f32 v157, v139, v184, v192                           // 00000000633C: D1CB009D 0703718B
	v_fma_f32 v161, v123, v184, v192                           // 000000006344: D1CB00A1 0703717B
	v_fma_f32 v165, v143, v184, v192                           // 00000000634C: D1CB00A5 0703718F
	v_fma_f32 v169, v127, v184, v192                           // 000000006354: D1CB00A9 0703717F
	v_fma_f32 v197, v99, v184, v191                            // 00000000635C: D1CB00C5 06FF7163
	v_fma_f32 v201, v83, v184, v191                            // 000000006364: D1CB00C9 06FF7153
	v_fma_f32 v205, v103, v184, v191                           // 00000000636C: D1CB00CD 06FF7167
	v_fma_f32 v209, v87, v184, v191                            // 000000006374: D1CB00D1 06FF7157
	v_fma_f32 v213, v107, v184, v191                           // 00000000637C: D1CB00D5 06FF716B
	v_fma_f32 v217, v91, v184, v191                            // 000000006384: D1CB00D9 06FF715B
	v_fma_f32 v221, v111, v184, v191                           // 00000000638C: D1CB00DD 06FF716F
	v_fma_f32 v225, v95, v184, v191                            // 000000006394: D1CB00E1 06FF715F
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 00000000639C: D1DD0004 02010104
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 0000000063A4: D1DD0008 02010108
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 0000000063AC: D1DD000C 0201010C
	v_cvt_pk_u8_f32 v16, v16, 0, 0                             // 0000000063B4: D1DD0010 02010110
	v_cvt_pk_u8_f32 v155, v155, 0, 0                           // 0000000063BC: D1DD009B 0201019B
	v_cvt_pk_u8_f32 v159, v159, 0, 0                           // 0000000063C4: D1DD009F 0201019F
	v_cvt_pk_u8_f32 v164, v164, 0, 0                           // 0000000063CC: D1DD00A4 020101A4
	v_cvt_pk_u8_f32 v168, v168, 0, 0                           // 0000000063D4: D1DD00A8 020101A8
	v_cvt_pk_u8_f32 v196, v196, 0, 0                           // 0000000063DC: D1DD00C4 020101C4
	v_cvt_pk_u8_f32 v200, v200, 0, 0                           // 0000000063E4: D1DD00C8 020101C8
	v_cvt_pk_u8_f32 v204, v204, 0, 0                           // 0000000063EC: D1DD00CC 020101CC
	v_cvt_pk_u8_f32 v208, v208, 0, 0                           // 0000000063F4: D1DD00D0 020101D0
	v_cvt_pk_u8_f32 v212, v212, 0, 0                           // 0000000063FC: D1DD00D4 020101D4
	v_cvt_pk_u8_f32 v216, v216, 0, 0                           // 000000006404: D1DD00D8 020101D8
	v_cvt_pk_u8_f32 v220, v220, 0, 0                           // 00000000640C: D1DD00DC 020101DC
	v_cvt_pk_u8_f32 v224, v224, 0, 0                           // 000000006414: D1DD00E0 020101E0
	v_fma_f32 v6, v132, v184, v192                             // 00000000641C: D1CB0006 07037184
	v_fma_f32 v10, v116, v184, v192                            // 000000006424: D1CB000A 07037174
	v_fma_f32 v14, v136, v184, v192                            // 00000000642C: D1CB000E 07037188
	v_fma_f32 v154, v120, v184, v192                           // 000000006434: D1CB009A 07037178
	v_fma_f32 v158, v140, v184, v192                           // 00000000643C: D1CB009E 0703718C
	v_fma_f32 v162, v124, v184, v192                           // 000000006444: D1CB00A2 0703717C
	v_fma_f32 v166, v144, v184, v192                           // 00000000644C: D1CB00A6 07037190
	v_fma_f32 v194, v128, v184, v192                           // 000000006454: D1CB00C2 07037180
	v_fma_f32 v198, v100, v184, v191                           // 00000000645C: D1CB00C6 06FF7164
	v_fma_f32 v202, v84, v184, v191                            // 000000006464: D1CB00CA 06FF7154
	v_fma_f32 v206, v104, v184, v191                           // 00000000646C: D1CB00CE 06FF7168
	v_fma_f32 v210, v88, v184, v191                            // 000000006474: D1CB00D2 06FF7158
	v_fma_f32 v214, v108, v184, v191                           // 00000000647C: D1CB00D6 06FF716C
	v_fma_f32 v218, v92, v184, v191                            // 000000006484: D1CB00DA 06FF715C
	v_fma_f32 v222, v112, v184, v191                           // 00000000648C: D1CB00DE 06FF7170
	v_fma_f32 v226, v96, v184, v191                            // 000000006494: D1CB00E2 06FF7160
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 00000000649C: D1DD0004 04110305
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 0000000064A4: D1DD0005 04210309
	v_cvt_pk_u8_f32 v8, v13, 1, v12                            // 0000000064AC: D1DD0008 0431030D
	v_cvt_pk_u8_f32 v9, v17, 1, v16                            // 0000000064B4: D1DD0009 04410311
	v_cvt_pk_u8_f32 v12, v157, 1, v155                         // 0000000064BC: D1DD000C 066D039D
	v_cvt_pk_u8_f32 v13, v161, 1, v159                         // 0000000064C4: D1DD000D 067D03A1
	v_cvt_pk_u8_f32 v16, v165, 1, v164                         // 0000000064CC: D1DD0010 069103A5
	v_cvt_pk_u8_f32 v17, v169, 1, v168                         // 0000000064D4: D1DD0011 06A103A9
	v_cvt_pk_u8_f32 v155, v197, 1, v196                        // 0000000064DC: D1DD009B 071103C5
	v_cvt_pk_u8_f32 v157, v201, 1, v200                        // 0000000064E4: D1DD009D 072103C9
	v_cvt_pk_u8_f32 v159, v205, 1, v204                        // 0000000064EC: D1DD009F 073103CD
	v_cvt_pk_u8_f32 v161, v209, 1, v208                        // 0000000064F4: D1DD00A1 074103D1
	v_cvt_pk_u8_f32 v164, v213, 1, v212                        // 0000000064FC: D1DD00A4 075103D5
	v_cvt_pk_u8_f32 v165, v217, 1, v216                        // 000000006504: D1DD00A5 076103D9
	v_cvt_pk_u8_f32 v168, v221, 1, v220                        // 00000000650C: D1DD00A8 077103DD
	v_cvt_pk_u8_f32 v169, v225, 1, v224                        // 000000006514: D1DD00A9 078103E1
	v_fma_f32 v7, v133, v184, v192                             // 00000000651C: D1CB0007 07037185
	v_fma_f32 v11, v117, v184, v192                            // 000000006524: D1CB000B 07037175
	v_fma_f32 v15, v137, v184, v192                            // 00000000652C: D1CB000F 07037189
	v_fma_f32 v156, v121, v184, v192                           // 000000006534: D1CB009C 07037179
	v_fma_f32 v160, v141, v184, v192                           // 00000000653C: D1CB00A0 0703718D
	v_fma_f32 v163, v125, v184, v192                           // 000000006544: D1CB00A3 0703717D
	v_fma_f32 v167, v145, v184, v192                           // 00000000654C: D1CB00A7 07037191
	v_fma_f32 v195, v129, v184, v192                           // 000000006554: D1CB00C3 07037181
	v_fma_f32 v199, v101, v184, v191                           // 00000000655C: D1CB00C7 06FF7165
	v_fma_f32 v203, v85, v184, v191                            // 000000006564: D1CB00CB 06FF7155
	v_fma_f32 v207, v105, v184, v191                           // 00000000656C: D1CB00CF 06FF7169
	v_fma_f32 v211, v89, v184, v191                            // 000000006574: D1CB00D3 06FF7159
	v_fma_f32 v215, v109, v184, v191                           // 00000000657C: D1CB00D7 06FF716D
	v_fma_f32 v219, v93, v184, v191                            // 000000006584: D1CB00DB 06FF715D
	v_fma_f32 v223, v113, v184, v191                           // 00000000658C: D1CB00DF 06FF7171
	v_fma_f32 v227, v97, v184, v191                            // 000000006594: D1CB00E3 06FF7161
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 00000000659C: D1DD0004 04110506
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 0000000065A4: D1DD0005 0415050A
	v_cvt_pk_u8_f32 v6, v14, 2, v8                             // 0000000065AC: D1DD0006 0421050E
	v_cvt_pk_u8_f32 v8, v154, 2, v9                            // 0000000065B4: D1DD0008 0425059A
	v_cvt_pk_u8_f32 v9, v158, 2, v12                           // 0000000065BC: D1DD0009 0431059E
	v_cvt_pk_u8_f32 v10, v162, 2, v13                          // 0000000065C4: D1DD000A 043505A2
	v_cvt_pk_u8_f32 v12, v166, 2, v16                          // 0000000065CC: D1DD000C 044105A6
	v_cvt_pk_u8_f32 v13, v194, 2, v17                          // 0000000065D4: D1DD000D 044505C2
	v_cvt_pk_u8_f32 v14, v198, 2, v155                         // 0000000065DC: D1DD000E 066D05C6
	v_cvt_pk_u8_f32 v16, v202, 2, v157                         // 0000000065E4: D1DD0010 067505CA
	v_cvt_pk_u8_f32 v17, v206, 2, v159                         // 0000000065EC: D1DD0011 067D05CE
	v_cvt_pk_u8_f32 v162, v210, 2, v161                        // 0000000065F4: D1DD00A2 068505D2
	v_cvt_pk_u8_f32 v164, v214, 2, v164                        // 0000000065FC: D1DD00A4 069105D6
	v_cvt_pk_u8_f32 v165, v218, 2, v165                        // 000000006604: D1DD00A5 069505DA
	v_cvt_pk_u8_f32 v166, v222, 2, v168                        // 00000000660C: D1DD00A6 06A105DE
	v_cvt_pk_u8_f32 v168, v226, 2, v169                        // 000000006614: D1DD00A8 06A505E2
	v_cvt_pk_u8_f32 v154, v7, 3, v4                            // 00000000661C: D1DD009A 04110707
	v_cvt_pk_u8_f32 v158, v11, 3, v5                           // 000000006624: D1DD009E 0415070B
	v_cvt_pk_u8_f32 v155, v15, 3, v6                           // 00000000662C: D1DD009B 0419070F
	v_cvt_pk_u8_f32 v159, v156, 3, v8                          // 000000006634: D1DD009F 0421079C
	v_cvt_pk_u8_f32 v156, v160, 3, v9                          // 00000000663C: D1DD009C 042507A0
	v_cvt_pk_u8_f32 v160, v163, 3, v10                         // 000000006644: D1DD00A0 042907A3
	v_cvt_pk_u8_f32 v157, v167, 3, v12                         // 00000000664C: D1DD009D 043107A7
	v_cvt_pk_u8_f32 v161, v195, 3, v13                         // 000000006654: D1DD00A1 043507C3
	v_cvt_pk_u8_f32 v4, v199, 3, v14                           // 00000000665C: D1DD0004 043907C7
	v_cvt_pk_u8_f32 v8, v203, 3, v16                           // 000000006664: D1DD0008 044107CB
	v_cvt_pk_u8_f32 v5, v207, 3, v17                           // 00000000666C: D1DD0005 044507CF
	v_cvt_pk_u8_f32 v9, v211, 3, v162                          // 000000006674: D1DD0009 068907D3
	v_cvt_pk_u8_f32 v6, v215, 3, v164                          // 00000000667C: D1DD0006 069107D7
	v_cvt_pk_u8_f32 v10, v219, 3, v165                         // 000000006684: D1DD000A 069507DB
	v_cvt_pk_u8_f32 v7, v223, 3, v166                          // 00000000668C: D1DD0007 069907DF
	v_cvt_pk_u8_f32 v11, v227, 3, v168                         // 000000006694: D1DD000B 06A107E3
	s_barrier                                                  // 00000000669C: BF8A0000
	s_setprio 1                                                // 0000000066A0: BF8F0001
	s_waitcnt vmcnt(0)                                         // 0000000066A4: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[154:161], 0// 0000000066A8: D3AD000C 02033592
	v_mfma_f32_16x16x128_f8f6f4 v[14:17], v[146:153], v[4:11], 0// 0000000066B0: D3AD000E 02020992
	ds_read_b64_tr_b8 v[162:163], v193                         // 0000000066B8: D9C40000 A20000C1
	ds_read_b64_tr_b8 v[164:165], v193 offset:1024             // 0000000066C0: D9C40400 A40000C1
	ds_read_b64_tr_b8 v[166:167], v193 offset:2048             // 0000000066C8: D9C40800 A60000C1
	ds_read_b64_tr_b8 v[168:169], v193 offset:3072             // 0000000066D0: D9C40C00 A80000C1
	ds_read_b64_tr_b8 v[194:195], v193 offset:256              // 0000000066D8: D9C40100 C20000C1
	ds_read_b64_tr_b8 v[196:197], v193 offset:1280             // 0000000066E0: D9C40500 C40000C1
	ds_read_b64_tr_b8 v[198:199], v193 offset:2304             // 0000000066E8: D9C40900 C60000C1
	ds_read_b64_tr_b8 v[200:201], v193 offset:3328             // 0000000066F0: D9C40D00 C80000C1
	ds_read_b64_tr_b8 v[202:203], v193 offset:512              // 0000000066F8: D9C40200 CA0000C1
	ds_read_b64_tr_b8 v[204:205], v193 offset:1536             // 000000006700: D9C40600 CC0000C1
	ds_read_b64_tr_b8 v[206:207], v193 offset:2560             // 000000006708: D9C40A00 CE0000C1
	ds_read_b64_tr_b8 v[208:209], v193 offset:3584             // 000000006710: D9C40E00 D00000C1
	s_waitcnt lgkmcnt(4)                                       // 000000006718: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[162:169], v[154:161], v[66:81], v173, v187 op_sel_hi:[0,0,0]// 00000000671C: D3AC0000 000377AD D3AE0842 050B35A2
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[194:201], v[154:161], v[50:65], v173, v187 op_sel_hi:[0,0,0]// 00000000672C: D3AC0000 000377AD D3AE0832 04CB35C2
	ds_read_b64_tr_b8 v[162:163], v193 offset:768              // 00000000673C: D9C40300 A20000C1
	ds_read_b64_tr_b8 v[164:165], v193 offset:1792             // 000000006744: D9C40700 A40000C1
	ds_read_b64_tr_b8 v[166:167], v193 offset:2816             // 00000000674C: D9C40B00 A60000C1
	ds_read_b64_tr_b8 v[168:169], v193 offset:3840             // 000000006754: D9C40F00 A80000C1
	ds_read_b64_tr_b8 v[194:195], v193 offset:4096             // 00000000675C: D9C41000 C20000C1
	ds_read_b64_tr_b8 v[196:197], v193 offset:5120             // 000000006764: D9C41400 C40000C1
	ds_read_b64_tr_b8 v[198:199], v193 offset:6144             // 00000000676C: D9C41800 C60000C1
	ds_read_b64_tr_b8 v[200:201], v193 offset:7168             // 000000006774: D9C41C00 C80000C1
	s_waitcnt lgkmcnt(4)                                       // 00000000677C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[202:209], v[154:161], v[34:49], v173, v187 op_sel_hi:[0,0,0]// 000000006780: D3AC0000 000377AD D3AE0822 048B35CA
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[162:169], v[154:161], v[18:33], v173, v187 op_sel_hi:[0,0,0]// 000000006790: D3AC0000 000377AD D3AE0812 044B35A2
	ds_read_b64_tr_b8 v[202:203], v193 offset:4352             // 0000000067A0: D9C41100 CA0000C1
	ds_read_b64_tr_b8 v[204:205], v193 offset:5376             // 0000000067A8: D9C41500 CC0000C1
	ds_read_b64_tr_b8 v[206:207], v193 offset:6400             // 0000000067B0: D9C41900 CE0000C1
	ds_read_b64_tr_b8 v[208:209], v193 offset:7424             // 0000000067B8: D9C41D00 D00000C1
	ds_read_b64_tr_b8 v[154:155], v193 offset:4608             // 0000000067C0: D9C41200 9A0000C1
	ds_read_b64_tr_b8 v[156:157], v193 offset:5632             // 0000000067C8: D9C41600 9C0000C1
	ds_read_b64_tr_b8 v[158:159], v193 offset:6656             // 0000000067D0: D9C41A00 9E0000C1
	ds_read_b64_tr_b8 v[160:161], v193 offset:7680             // 0000000067D8: D9C41E00 A00000C1
	s_waitcnt lgkmcnt(4)                                       // 0000000067E0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[194:201], v[4:11], v[66:81], v173, v189 op_sel_hi:[0,0,0]// 0000000067E4: D3AC0000 00037BAD D3AE0842 050A09C2
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[202:209], v[4:11], v[50:65], v173, v189 op_sel_hi:[0,0,0]// 0000000067F4: D3AC0000 00037BAD D3AE0832 04CA09CA
	ds_read_b64_tr_b8 v[162:163], v193 offset:4864             // 000000006804: D9C41300 A20000C1
	ds_read_b64_tr_b8 v[164:165], v193 offset:5888             // 00000000680C: D9C41700 A40000C1
	ds_read_b64_tr_b8 v[166:167], v193 offset:6912             // 000000006814: D9C41B00 A60000C1
	ds_read_b64_tr_b8 v[168:169], v193 offset:7936             // 00000000681C: D9C41F00 A80000C1
	s_add_u32 s49, s15, 4                                      // 000000006824: 8031840F
	s_cmp_ge_u32 s49, s65                                      // 000000006828: BF094131
	s_cbranch_scc1 11                                          // 00000000682C: BF85000B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4d5c>
	s_mul_i32 s49, s49, s8                                     // 000000006830: 92310831
	s_add_u32 s53, s56, s48                                    // 000000006834: 80353038
	s_add_u32 m0, s53, 0                                       // 000000006838: 807C8035
	s_lshl_b32 s49, s49, 7                                     // 00000000683C: 8E318731
	buffer_load_dwordx4 v176, s[24:27], s49 offen lds          // 000000006840: E05D1000 310600B0
	s_add_u32 m0, s53, 0x2000                                  // 000000006848: 807CFF35 00002000
	s_nop 0                                                    // 000000006850: BF800000
	buffer_load_dwordx4 v177, s[24:27], s49 offen lds          // 000000006854: E05D1000 310600B1
	s_add_u32 s49, s15, 2                                      // 00000000685C: 8031820F
	s_cmp_ge_u32 s49, s65                                      // 000000006860: BF094131
	s_cbranch_scc1 14                                          // 000000006864: BF85000E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4da0>
	s_xor_b32 s48, s48, 0x8000                                 // 000000006868: 8830FF30 00008000
	s_mul_i32 s49, s49, s8                                     // 000000006870: 92310831
	s_add_u32 s48, s57, s48                                    // 000000006874: 80303039
	s_lshl_b32 s49, s49, 7                                     // 000000006878: 8E318731
	s_add_u32 m0, s48, 0                                       // 00000000687C: 807C8030
	s_nop 0                                                    // 000000006880: BF800000
	buffer_load_dwordx4 v178, s[28:31], s49 offen lds          // 000000006884: E05D1000 310700B2
	s_add_u32 m0, s48, 0x2000                                  // 00000000688C: 807CFF30 00002000
	s_nop 0                                                    // 000000006894: BF800000
	buffer_load_dwordx4 v179, s[28:31], s49 offen lds          // 000000006898: E05D1000 310700B3
	v_mul_f32_e32 v12, v3, v12                                 // 0000000068A0: 0A181903
	v_mul_f32_e32 v13, v190, v14                               // 0000000068A4: 0A1A1DBE
	v_add_f32_e32 v12, v186, v12                               // 0000000068A8: 021819BA
	v_add_f32_e32 v186, v12, v13                               // 0000000068AC: 03741B0C
	s_waitcnt lgkmcnt(0)                                       // 0000000068B0: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[154:161], v[4:11], v[34:49], v173, v189 op_sel_hi:[0,0,0]// 0000000068B4: D3AC0000 00037BAD D3AE0822 048A099A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[162:169], v[4:11], v[18:33], v173, v189 op_sel_hi:[0,0,0]// 0000000068C4: D3AC0000 00037BAD D3AE0812 044A09A2
	s_barrier                                                  // 0000000068D4: BF8A0000
	s_add_u32 s53, s15, 1                                      // 0000000068D8: 8035810F
	s_branch 35                                                // 0000000068DC: BF820023 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4e6c>
	s_barrier                                                  // 0000000068E0: BF8A0000
	s_waitcnt vmcnt(0)                                         // 0000000068E4: BF8C0F70
	s_add_u32 s49, s53, 4                                      // 0000000068E8: 80318435
	s_cmp_ge_u32 s49, s65                                      // 0000000068EC: BF094131
	s_cbranch_scc1 11                                          // 0000000068F0: BF85000B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4e20>
	s_mul_i32 s49, s49, s8                                     // 0000000068F4: 92310831
	s_add_u32 s66, s56, s48                                    // 0000000068F8: 80423038
	s_add_u32 m0, s66, 0                                       // 0000000068FC: 807C8042
	s_lshl_b32 s49, s49, 7                                     // 000000006900: 8E318731
	buffer_load_dwordx4 v176, s[24:27], s49 offen lds          // 000000006904: E05D1000 310600B0
	s_add_u32 m0, s66, 0x2000                                  // 00000000690C: 807CFF42 00002000
	s_nop 0                                                    // 000000006914: BF800000
	buffer_load_dwordx4 v177, s[24:27], s49 offen lds          // 000000006918: E05D1000 310600B1
	s_add_u32 s49, s53, 2                                      // 000000006920: 80318235
	s_cmp_ge_u32 s49, s65                                      // 000000006924: BF094131
	s_cbranch_scc1 14                                          // 000000006928: BF85000E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4e64>
	s_xor_b32 s48, s48, 0x8000                                 // 00000000692C: 8830FF30 00008000
	s_mul_i32 s49, s49, s8                                     // 000000006934: 92310831
	s_add_u32 s48, s57, s48                                    // 000000006938: 80303039
	s_lshl_b32 s49, s49, 7                                     // 00000000693C: 8E318731
	s_add_u32 m0, s48, 0                                       // 000000006940: 807C8030
	s_nop 0                                                    // 000000006944: BF800000
	buffer_load_dwordx4 v178, s[28:31], s49 offen lds          // 000000006948: E05D1000 310700B2
	s_add_u32 m0, s48, 0x2000                                  // 000000006950: 807CFF30 00002000
	s_nop 0                                                    // 000000006958: BF800000
	buffer_load_dwordx4 v179, s[28:31], s49 offen lds          // 00000000695C: E05D1000 310700B3
	s_barrier                                                  // 000000006964: BF8A0000
	s_add_u32 s53, s53, 1                                      // 000000006968: 80358135
	s_add_u32 s48, s53, 1                                      // 00000000696C: 80308135
	s_cmp_ge_u32 s48, s65                                      // 000000006970: BF094130
	s_cbranch_scc1 1599                                        // 000000006974: BF85063F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6774>
	s_add_u32 s49, s53, s62                                    // 000000006978: 80313E35
	s_lshl_b32 s66, s49, 14                                    // 00000000697C: 8E428E31
	s_and_b32 s48, s66, 0xc000                                 // 000000006980: 8630FF42 0000C000
	v_add_u32_e32 v193, s48, v185                              // 000000006988: 69837230
	s_cmp_ge_u32 s53, s15                                      // 00000000698C: BF090F35
	s_cbranch_scc1 937                                         // 000000006990: BF8503A9 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5d38>
	s_setprio 0                                                // 000000006994: BF8F0000
	v_fma_f32 v94, v94, v184, v191                             // 000000006998: D1CB005E 06FF715E
	s_addk_i32 s66, 0x4000                                     // 0000000069A0: B7424000
	v_fma_f32 v95, v95, v184, v191                             // 0000000069A4: D1CB005F 06FF715F
	v_cvt_pk_u8_f32 v94, v94, 0, 0                             // 0000000069AC: D1DD005E 0201015E
	s_and_b32 s66, s66, 0xc000                                 // 0000000069B4: 8642FF42 0000C000
	v_cvt_pk_u8_f32 v94, v95, 1, v94                           // 0000000069BC: D1DD005E 0579035F
	v_or_b32_e32 v95, s66, v1                                  // 0000000069C4: 28BE0242
	ds_read_b128 v[194:197], v95                               // 0000000069C8: D9FE0000 C200005F
	ds_read_b128 v[198:201], v95 offset:16                     // 0000000069D0: D9FE0010 C600005F
	ds_read_b128 v[202:205], v95 offset:4096                   // 0000000069D8: D9FE1000 CA00005F
	ds_read_b128 v[206:209], v95 offset:4112                   // 0000000069E0: D9FE1010 CE00005F
	v_fma_f32 v4, v130, v184, v192                             // 0000000069E8: D1CB0004 07037182
	v_fma_f32 v8, v114, v184, v192                             // 0000000069F0: D1CB0008 07037172
	v_fma_f32 v10, v116, v184, v192                            // 0000000069F8: D1CB000A 07037174
	v_fma_f32 v12, v134, v184, v192                            // 000000006A00: D1CB000C 07037186
	v_fma_f32 v16, v118, v184, v192                            // 000000006A08: D1CB0010 07037176
	v_fma_f32 v114, v120, v184, v192                           // 000000006A10: D1CB0072 07037178
	v_fma_f32 v116, v138, v184, v192                           // 000000006A18: D1CB0074 0703718A
	v_fma_f32 v120, v122, v184, v192                           // 000000006A20: D1CB0078 0703717A
	v_fma_f32 v122, v124, v184, v192                           // 000000006A28: D1CB007A 0703717C
	v_fma_f32 v124, v142, v184, v192                           // 000000006A30: D1CB007C 0703718E
	v_fma_f32 v126, v126, v184, v192                           // 000000006A38: D1CB007E 0703717E
	v_fma_f32 v98, v98, v184, v191                             // 000000006A40: D1CB0062 06FF7162
	v_fma_f32 v82, v82, v184, v191                             // 000000006A48: D1CB0052 06FF7152
	v_fma_f32 v102, v102, v184, v191                           // 000000006A50: D1CB0066 06FF7166
	v_fma_f32 v86, v86, v184, v191                             // 000000006A58: D1CB0056 06FF7156
	v_fma_f32 v106, v106, v184, v191                           // 000000006A60: D1CB006A 06FF716A
	v_fma_f32 v90, v90, v184, v191                             // 000000006A68: D1CB005A 06FF715A
	v_fma_f32 v110, v110, v184, v191                           // 000000006A70: D1CB006E 06FF716E
	v_fma_f32 v5, v131, v184, v192                             // 000000006A78: D1CB0005 07037183
	v_fma_f32 v9, v115, v184, v192                             // 000000006A80: D1CB0009 07037173
	v_fma_f32 v11, v117, v184, v192                            // 000000006A88: D1CB000B 07037175
	v_fma_f32 v13, v135, v184, v192                            // 000000006A90: D1CB000D 07037187
	v_fma_f32 v17, v119, v184, v192                            // 000000006A98: D1CB0011 07037177
	v_fma_f32 v115, v121, v184, v192                           // 000000006AA0: D1CB0073 07037179
	v_fma_f32 v117, v139, v184, v192                           // 000000006AA8: D1CB0075 0703718B
	v_fma_f32 v121, v123, v184, v192                           // 000000006AB0: D1CB0079 0703717B
	v_fma_f32 v123, v125, v184, v192                           // 000000006AB8: D1CB007B 0703717D
	v_fma_f32 v125, v143, v184, v192                           // 000000006AC0: D1CB007D 0703718F
	v_fma_f32 v127, v127, v184, v192                           // 000000006AC8: D1CB007F 0703717F
	v_fma_f32 v99, v99, v184, v191                             // 000000006AD0: D1CB0063 06FF7163
	v_fma_f32 v83, v83, v184, v191                             // 000000006AD8: D1CB0053 06FF7153
	v_fma_f32 v103, v103, v184, v191                           // 000000006AE0: D1CB0067 06FF7167
	v_fma_f32 v87, v87, v184, v191                             // 000000006AE8: D1CB0057 06FF7157
	v_fma_f32 v107, v107, v184, v191                           // 000000006AF0: D1CB006B 06FF716B
	v_fma_f32 v91, v91, v184, v191                             // 000000006AF8: D1CB005B 06FF715B
	v_fma_f32 v111, v111, v184, v191                           // 000000006B00: D1CB006F 06FF716F
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 000000006B08: D1DD0004 02010104
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 000000006B10: D1DD0008 02010108
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 000000006B18: D1DD000C 0201010C
	v_cvt_pk_u8_f32 v16, v16, 0, 0                             // 000000006B20: D1DD0010 02010110
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000006B28: D1DD0074 02010174
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000006B30: D1DD0078 02010178
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000006B38: D1DD007C 0201017C
	v_cvt_pk_u8_f32 v126, v126, 0, 0                           // 000000006B40: D1DD007E 0201017E
	v_cvt_pk_u8_f32 v98, v98, 0, 0                             // 000000006B48: D1DD0062 02010162
	v_cvt_pk_u8_f32 v82, v82, 0, 0                             // 000000006B50: D1DD0052 02010152
	v_cvt_pk_u8_f32 v102, v102, 0, 0                           // 000000006B58: D1DD0066 02010166
	v_cvt_pk_u8_f32 v86, v86, 0, 0                             // 000000006B60: D1DD0056 02010156
	v_cvt_pk_u8_f32 v106, v106, 0, 0                           // 000000006B68: D1DD006A 0201016A
	v_cvt_pk_u8_f32 v90, v90, 0, 0                             // 000000006B70: D1DD005A 0201015A
	v_cvt_pk_u8_f32 v110, v110, 0, 0                           // 000000006B78: D1DD006E 0201016E
	v_fma_f32 v6, v132, v184, v192                             // 000000006B80: D1CB0006 07037184
	v_fma_f32 v14, v136, v184, v192                            // 000000006B88: D1CB000E 07037188
	v_fma_f32 v118, v140, v184, v192                           // 000000006B90: D1CB0076 0703718C
	v_fma_f32 v130, v144, v184, v192                           // 000000006B98: D1CB0082 07037190
	v_fma_f32 v128, v128, v184, v192                           // 000000006BA0: D1CB0080 07037180
	v_fma_f32 v100, v100, v184, v191                           // 000000006BA8: D1CB0064 06FF7164
	v_fma_f32 v84, v84, v184, v191                             // 000000006BB0: D1CB0054 06FF7154
	v_fma_f32 v104, v104, v184, v191                           // 000000006BB8: D1CB0068 06FF7168
	v_fma_f32 v88, v88, v184, v191                             // 000000006BC0: D1CB0058 06FF7158
	v_fma_f32 v108, v108, v184, v191                           // 000000006BC8: D1CB006C 06FF716C
	v_fma_f32 v92, v92, v184, v191                             // 000000006BD0: D1CB005C 06FF715C
	v_fma_f32 v112, v112, v184, v191                           // 000000006BD8: D1CB0070 06FF7170
	v_fma_f32 v96, v96, v184, v191                             // 000000006BE0: D1CB0060 06FF7160
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 000000006BE8: D1DD0004 04110305
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 000000006BF0: D1DD0005 04210309
	v_cvt_pk_u8_f32 v8, v13, 1, v12                            // 000000006BF8: D1DD0008 0431030D
	v_cvt_pk_u8_f32 v9, v17, 1, v16                            // 000000006C00: D1DD0009 04410311
	v_cvt_pk_u8_f32 v12, v117, 1, v116                         // 000000006C08: D1DD000C 05D10375
	v_cvt_pk_u8_f32 v13, v121, 1, v120                         // 000000006C10: D1DD000D 05E10379
	v_cvt_pk_u8_f32 v16, v125, 1, v124                         // 000000006C18: D1DD0010 05F1037D
	v_cvt_pk_u8_f32 v17, v127, 1, v126                         // 000000006C20: D1DD0011 05F9037F
	v_cvt_pk_u8_f32 v98, v99, 1, v98                           // 000000006C28: D1DD0062 05890363
	v_cvt_pk_u8_f32 v82, v83, 1, v82                           // 000000006C30: D1DD0052 05490353
	v_cvt_pk_u8_f32 v83, v103, 1, v102                         // 000000006C38: D1DD0053 05990367
	v_cvt_pk_u8_f32 v86, v87, 1, v86                           // 000000006C40: D1DD0056 05590357
	v_cvt_pk_u8_f32 v87, v107, 1, v106                         // 000000006C48: D1DD0057 05A9036B
	v_cvt_pk_u8_f32 v90, v91, 1, v90                           // 000000006C50: D1DD005A 0569035B
	v_cvt_pk_u8_f32 v91, v111, 1, v110                         // 000000006C58: D1DD005B 05B9036F
	v_fma_f32 v7, v133, v184, v192                             // 000000006C60: D1CB0007 07037185
	v_fma_f32 v15, v137, v184, v192                            // 000000006C68: D1CB000F 07037189
	v_fma_f32 v119, v141, v184, v192                           // 000000006C70: D1CB0077 0703718D
	v_fma_f32 v131, v145, v184, v192                           // 000000006C78: D1CB0083 07037191
	v_fma_f32 v129, v129, v184, v192                           // 000000006C80: D1CB0081 07037181
	v_fma_f32 v101, v101, v184, v191                           // 000000006C88: D1CB0065 06FF7165
	v_fma_f32 v85, v85, v184, v191                             // 000000006C90: D1CB0055 06FF7155
	v_fma_f32 v105, v105, v184, v191                           // 000000006C98: D1CB0069 06FF7169
	v_fma_f32 v89, v89, v184, v191                             // 000000006CA0: D1CB0059 06FF7159
	v_fma_f32 v109, v109, v184, v191                           // 000000006CA8: D1CB006D 06FF716D
	v_fma_f32 v93, v93, v184, v191                             // 000000006CB0: D1CB005D 06FF715D
	v_fma_f32 v113, v113, v184, v191                           // 000000006CB8: D1CB0071 06FF7171
	v_fma_f32 v97, v97, v184, v191                             // 000000006CC0: D1CB0061 06FF7161
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 000000006CC8: D1DD0004 04110506
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 000000006CD0: D1DD0005 0415050A
	v_cvt_pk_u8_f32 v6, v14, 2, v8                             // 000000006CD8: D1DD0006 0421050E
	v_cvt_pk_u8_f32 v8, v114, 2, v9                            // 000000006CE0: D1DD0008 04250572
	v_cvt_pk_u8_f32 v9, v118, 2, v12                           // 000000006CE8: D1DD0009 04310576
	v_cvt_pk_u8_f32 v10, v122, 2, v13                          // 000000006CF0: D1DD000A 0435057A
	v_cvt_pk_u8_f32 v12, v130, 2, v16                          // 000000006CF8: D1DD000C 04410582
	v_cvt_pk_u8_f32 v13, v128, 2, v17                          // 000000006D00: D1DD000D 04450580
	v_cvt_pk_u8_f32 v14, v100, 2, v98                          // 000000006D08: D1DD000E 05890564
	v_cvt_pk_u8_f32 v16, v84, 2, v82                           // 000000006D10: D1DD0010 05490554
	v_cvt_pk_u8_f32 v17, v104, 2, v83                          // 000000006D18: D1DD0011 054D0568
	v_cvt_pk_u8_f32 v82, v88, 2, v86                           // 000000006D20: D1DD0052 05590558
	v_cvt_pk_u8_f32 v83, v108, 2, v87                          // 000000006D28: D1DD0053 055D056C
	v_cvt_pk_u8_f32 v84, v92, 2, v90                           // 000000006D30: D1DD0054 0569055C
	v_cvt_pk_u8_f32 v86, v112, 2, v91                          // 000000006D38: D1DD0056 056D0570
	v_cvt_pk_u8_f32 v87, v96, 2, v94                           // 000000006D40: D1DD0057 05790560
	v_cvt_pk_u8_f32 v162, v7, 3, v4                            // 000000006D48: D1DD00A2 04110707
	v_cvt_pk_u8_f32 v166, v11, 3, v5                           // 000000006D50: D1DD00A6 0415070B
	v_cvt_pk_u8_f32 v163, v15, 3, v6                           // 000000006D58: D1DD00A3 0419070F
	v_cvt_pk_u8_f32 v167, v115, 3, v8                          // 000000006D60: D1DD00A7 04210773
	v_cvt_pk_u8_f32 v164, v119, 3, v9                          // 000000006D68: D1DD00A4 04250777
	v_cvt_pk_u8_f32 v168, v123, 3, v10                         // 000000006D70: D1DD00A8 0429077B
	v_cvt_pk_u8_f32 v165, v131, 3, v12                         // 000000006D78: D1DD00A5 04310783
	v_cvt_pk_u8_f32 v169, v129, 3, v13                         // 000000006D80: D1DD00A9 04350781
	v_cvt_pk_u8_f32 v154, v101, 3, v14                         // 000000006D88: D1DD009A 04390765
	v_cvt_pk_u8_f32 v158, v85, 3, v16                          // 000000006D90: D1DD009E 04410755
	v_cvt_pk_u8_f32 v155, v105, 3, v17                         // 000000006D98: D1DD009B 04450769
	v_cvt_pk_u8_f32 v159, v89, 3, v82                          // 000000006DA0: D1DD009F 05490759
	v_cvt_pk_u8_f32 v156, v109, 3, v83                         // 000000006DA8: D1DD009C 054D076D
	v_cvt_pk_u8_f32 v160, v93, 3, v84                          // 000000006DB0: D1DD00A0 0551075D
	v_cvt_pk_u8_f32 v157, v113, 3, v86                         // 000000006DB8: D1DD009D 05590771
	v_cvt_pk_u8_f32 v161, v97, 3, v87                          // 000000006DC0: D1DD00A1 055D0761
	s_barrier                                                  // 000000006DC8: BF8A0000
	s_and_b32 s48, s49, 3                                      // 000000006DCC: 86308331
	s_setprio 1                                                // 000000006DD0: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[4:7], v[146:153], v[162:169], 0// 000000006DD4: D3AD0004 02034592
	v_mfma_f32_16x16x128_f8f6f4 v[6:9], v[146:153], v[154:161], 0// 000000006DDC: D3AD0006 02033592
	s_nop 3                                                    // 000000006DE4: BF800003
	v_mul_f32_e32 v3, v3, v4                                   // 000000006DE8: 0A060903
	v_add_f32_e32 v3, v186, v3                                 // 000000006DEC: 020607BA
	s_nop 5                                                    // 000000006DF0: BF800005
	v_mul_f32_e32 v4, v190, v6                                 // 000000006DF4: 0A080DBE
	v_add_f32_e32 v186, v3, v4                                 // 000000006DF8: 03740903
	ds_read_b128 v[82:85], v95 offset:8192                     // 000000006DFC: D9FE2000 5200005F
	ds_read_b128 v[86:89], v95 offset:8208                     // 000000006E04: D9FE2010 5600005F
	ds_read_b128 v[210:213], v95 offset:12288                  // 000000006E0C: D9FE3000 D200005F
	ds_read_b128 v[214:217], v95 offset:12304                  // 000000006E14: D9FE3010 D600005F
	s_waitcnt lgkmcnt(4)                                       // 000000006E1C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[194:201], v[228:235], 0// 000000006E20: D3AE0082 0203C9C2
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[202:209], v[228:235], 0// 000000006E28: D3AE0072 0203C9CA
	v_or_b32_e32 v3, s66, v172                                 // 000000006E30: 28075842
	ds_read_b128 v[4:7], v3                                    // 000000006E34: D9FE0000 04000003
	ds_read_b128 v[8:11], v3 offset:16                         // 000000006E3C: D9FE0010 08000003
	ds_read_b128 v[194:197], v3 offset:4096                    // 000000006E44: D9FE1000 C2000003
	ds_read_b128 v[198:201], v3 offset:4112                    // 000000006E4C: D9FE1010 C6000003
	s_waitcnt lgkmcnt(4)                                       // 000000006E54: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[82:89], v[228:235], 0// 000000006E58: D3AE0062 0203C952
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[210:217], v[228:235], 0// 000000006E60: D3AE0052 0203C9D2
	ds_read_b128 v[202:205], v3 offset:8192                    // 000000006E68: D9FE2000 CA000003
	ds_read_b128 v[206:209], v3 offset:8208                    // 000000006E70: D9FE2010 CE000003
	ds_read_b128 v[210:213], v3 offset:12288                   // 000000006E78: D9FE3000 D2000003
	ds_read_b128 v[214:217], v3 offset:12304                   // 000000006E80: D9FE3010 D6000003
	s_add_u32 s49, s53, 4                                      // 000000006E88: 80318435
	s_cmp_ge_u32 s49, s65                                      // 000000006E8C: BF094131
	s_cbranch_scc1 13                                          // 000000006E90: BF85000D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x53c8>
	s_lshl_b32 s66, s48, 14                                    // 000000006E94: 8E428E30
	s_mul_i32 s49, s49, s8                                     // 000000006E98: 92310831
	s_or_b32 s66, s56, s66                                     // 000000006E9C: 87424238
	s_lshl_b32 s49, s49, 7                                     // 000000006EA0: 8E318731
	s_add_u32 m0, s66, 0                                       // 000000006EA4: 807C8042
	s_nop 0                                                    // 000000006EA8: BF800000
	buffer_load_dwordx4 v176, s[24:27], s49 offen lds          // 000000006EAC: E05D1000 310600B0
	s_add_u32 m0, s66, 0x2000                                  // 000000006EB4: 807CFF42 00002000
	s_nop 0                                                    // 000000006EBC: BF800000
	buffer_load_dwordx4 v177, s[24:27], s49 offen lds          // 000000006EC0: E05D1000 310600B1
	s_add_u32 s49, s53, 2                                      // 000000006EC8: 80318235
	s_cmp_ge_u32 s49, s65                                      // 000000006ECC: BF094131
	s_cbranch_scc1 15                                          // 000000006ED0: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5410>
	s_lshl_b32 s48, s48, 14                                    // 000000006ED4: 8E308E30
	s_mul_i32 s49, s49, s8                                     // 000000006ED8: 92310831
	s_xor_b32 s48, s48, 0x8000                                 // 000000006EDC: 8830FF30 00008000
	s_lshl_b32 s49, s49, 7                                     // 000000006EE4: 8E318731
	s_add_u32 s48, s57, s48                                    // 000000006EE8: 80303039
	s_add_u32 m0, s48, 0                                       // 000000006EEC: 807C8030
	s_nop 0                                                    // 000000006EF0: BF800000
	buffer_load_dwordx4 v178, s[28:31], s49 offen lds          // 000000006EF4: E05D1000 310700B2
	s_add_u32 m0, s48, 0x2000                                  // 000000006EFC: 807CFF30 00002000
	s_nop 0                                                    // 000000006F04: BF800000
	buffer_load_dwordx4 v179, s[28:31], s49 offen lds          // 000000006F08: E05D1000 310700B3
	s_waitcnt lgkmcnt(4)                                       // 000000006F10: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[130:145], v[4:11], v[236:243], v[130:145]// 000000006F14: D3AE0082 060BD904
	v_mfma_f32_32x32x64_f8f6f4 v[114:129], v[194:201], v[236:243], v[114:129]// 000000006F1C: D3AE0072 05CBD9C2
	s_waitcnt lgkmcnt(0)                                       // 000000006F24: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[98:113], v[202:209], v[236:243], v[98:113]// 000000006F28: D3AE0062 058BD9CA
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[210:217], v[236:243], v[82:97]// 000000006F30: D3AE0052 054BD9D2
	s_lshl_b32 s48, s53, 7                                     // 000000006F38: 8E308735
	s_add_u32 s66, s48, 0x80                                   // 000000006F3C: 8042FF30 00000080
	s_sub_u32 s48, s3, s66                                     // 000000006F44: 80B04203
	s_sub_i32 s48, s48, 0                                      // 000000006F48: 81B08030
	s_cmp_ge_i32 s48, 32                                       // 000000006F4C: BF03A030
	s_cbranch_scc1 69                                          // 000000006F50: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5568>
	s_cmp_lt_i32 s48, 0                                        // 000000006F54: BF048030
	s_cbranch_scc1 1031                                        // 000000006F58: BF850407 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6478>
	v_add_u32_e32 v3, s48, v170                                // 000000006F5C: 68075430
	v_and_b32_e32 v4, 4, v175                                  // 000000006F60: 26095E84
	v_sub_u32_e32 v3, v3, v4                                   // 000000006F64: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 000000006F68: 7D880680
	s_nop 1                                                    // 000000006F6C: BF800001
	v_cndmask_b32_e64 v130, v130, v2, vcc                      // 000000006F70: D1000082 01AA0582
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 000000006F78: 7D880681
	s_nop 1                                                    // 000000006F7C: BF800001
	v_cndmask_b32_e64 v131, v131, v2, vcc                      // 000000006F80: D1000083 01AA0583
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 000000006F88: 7D880682
	s_nop 1                                                    // 000000006F8C: BF800001
	v_cndmask_b32_e64 v132, v132, v2, vcc                      // 000000006F90: D1000084 01AA0584
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 000000006F98: 7D880683
	s_nop 1                                                    // 000000006F9C: BF800001
	v_cndmask_b32_e64 v133, v133, v2, vcc                      // 000000006FA0: D1000085 01AA0585
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 000000006FA8: 7D880688
	s_nop 1                                                    // 000000006FAC: BF800001
	v_cndmask_b32_e64 v134, v134, v2, vcc                      // 000000006FB0: D1000086 01AA0586
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 000000006FB8: 7D880689
	s_nop 1                                                    // 000000006FBC: BF800001
	v_cndmask_b32_e64 v135, v135, v2, vcc                      // 000000006FC0: D1000087 01AA0587
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 000000006FC8: 7D88068A
	s_nop 1                                                    // 000000006FCC: BF800001
	v_cndmask_b32_e64 v136, v136, v2, vcc                      // 000000006FD0: D1000088 01AA0588
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 000000006FD8: 7D88068B
	s_nop 1                                                    // 000000006FDC: BF800001
	v_cndmask_b32_e64 v137, v137, v2, vcc                      // 000000006FE0: D1000089 01AA0589
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 000000006FE8: 7D880690
	s_nop 1                                                    // 000000006FEC: BF800001
	v_cndmask_b32_e64 v138, v138, v2, vcc                      // 000000006FF0: D100008A 01AA058A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 000000006FF8: 7D880691
	s_nop 1                                                    // 000000006FFC: BF800001
	v_cndmask_b32_e64 v139, v139, v2, vcc                      // 000000007000: D100008B 01AA058B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 000000007008: 7D880692
	s_nop 1                                                    // 00000000700C: BF800001
	v_cndmask_b32_e64 v140, v140, v2, vcc                      // 000000007010: D100008C 01AA058C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 000000007018: 7D880693
	s_nop 1                                                    // 00000000701C: BF800001
	v_cndmask_b32_e64 v141, v141, v2, vcc                      // 000000007020: D100008D 01AA058D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 000000007028: 7D880698
	s_nop 1                                                    // 00000000702C: BF800001
	v_cndmask_b32_e64 v142, v142, v2, vcc                      // 000000007030: D100008E 01AA058E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 000000007038: 7D880699
	s_nop 1                                                    // 00000000703C: BF800001
	v_cndmask_b32_e64 v143, v143, v2, vcc                      // 000000007040: D100008F 01AA058F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 000000007048: 7D88069A
	s_nop 1                                                    // 00000000704C: BF800001
	v_cndmask_b32_e64 v144, v144, v2, vcc                      // 000000007050: D1000090 01AA0590
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 000000007058: 7D88069B
	s_nop 1                                                    // 00000000705C: BF800001
	v_cndmask_b32_e64 v145, v145, v2, vcc                      // 000000007060: D1000091 01AA0591
	s_sub_u32 s48, s3, s66                                     // 000000007068: 80B04203
	s_sub_i32 s48, s48, 32                                     // 00000000706C: 81B0A030
	s_cmp_ge_i32 s48, 32                                       // 000000007070: BF03A030
	s_cbranch_scc1 69                                          // 000000007074: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x568c>
	s_cmp_lt_i32 s48, 0                                        // 000000007078: BF048030
	s_cbranch_scc1 1102                                        // 00000000707C: BF85044E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x66b8>
	v_add_u32_e32 v3, s48, v170                                // 000000007080: 68075430
	v_and_b32_e32 v4, 4, v175                                  // 000000007084: 26095E84
	v_sub_u32_e32 v3, v3, v4                                   // 000000007088: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 00000000708C: 7D880680
	s_nop 1                                                    // 000000007090: BF800001
	v_cndmask_b32_e64 v114, v114, v2, vcc                      // 000000007094: D1000072 01AA0572
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 00000000709C: 7D880681
	s_nop 1                                                    // 0000000070A0: BF800001
	v_cndmask_b32_e64 v115, v115, v2, vcc                      // 0000000070A4: D1000073 01AA0573
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 0000000070AC: 7D880682
	s_nop 1                                                    // 0000000070B0: BF800001
	v_cndmask_b32_e64 v116, v116, v2, vcc                      // 0000000070B4: D1000074 01AA0574
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 0000000070BC: 7D880683
	s_nop 1                                                    // 0000000070C0: BF800001
	v_cndmask_b32_e64 v117, v117, v2, vcc                      // 0000000070C4: D1000075 01AA0575
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 0000000070CC: 7D880688
	s_nop 1                                                    // 0000000070D0: BF800001
	v_cndmask_b32_e64 v118, v118, v2, vcc                      // 0000000070D4: D1000076 01AA0576
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 0000000070DC: 7D880689
	s_nop 1                                                    // 0000000070E0: BF800001
	v_cndmask_b32_e64 v119, v119, v2, vcc                      // 0000000070E4: D1000077 01AA0577
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 0000000070EC: 7D88068A
	s_nop 1                                                    // 0000000070F0: BF800001
	v_cndmask_b32_e64 v120, v120, v2, vcc                      // 0000000070F4: D1000078 01AA0578
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 0000000070FC: 7D88068B
	s_nop 1                                                    // 000000007100: BF800001
	v_cndmask_b32_e64 v121, v121, v2, vcc                      // 000000007104: D1000079 01AA0579
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 00000000710C: 7D880690
	s_nop 1                                                    // 000000007110: BF800001
	v_cndmask_b32_e64 v122, v122, v2, vcc                      // 000000007114: D100007A 01AA057A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 00000000711C: 7D880691
	s_nop 1                                                    // 000000007120: BF800001
	v_cndmask_b32_e64 v123, v123, v2, vcc                      // 000000007124: D100007B 01AA057B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 00000000712C: 7D880692
	s_nop 1                                                    // 000000007130: BF800001
	v_cndmask_b32_e64 v124, v124, v2, vcc                      // 000000007134: D100007C 01AA057C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 00000000713C: 7D880693
	s_nop 1                                                    // 000000007140: BF800001
	v_cndmask_b32_e64 v125, v125, v2, vcc                      // 000000007144: D100007D 01AA057D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 00000000714C: 7D880698
	s_nop 1                                                    // 000000007150: BF800001
	v_cndmask_b32_e64 v126, v126, v2, vcc                      // 000000007154: D100007E 01AA057E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 00000000715C: 7D880699
	s_nop 1                                                    // 000000007160: BF800001
	v_cndmask_b32_e64 v127, v127, v2, vcc                      // 000000007164: D100007F 01AA057F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 00000000716C: 7D88069A
	s_nop 1                                                    // 000000007170: BF800001
	v_cndmask_b32_e64 v128, v128, v2, vcc                      // 000000007174: D1000080 01AA0580
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 00000000717C: 7D88069B
	s_nop 1                                                    // 000000007180: BF800001
	v_cndmask_b32_e64 v129, v129, v2, vcc                      // 000000007184: D1000081 01AA0581
	s_sub_u32 s48, s3, s66                                     // 00000000718C: 80B04203
	s_sub_i32 s48, s48, 64                                     // 000000007190: 81B0C030
	s_cmp_ge_i32 s48, 32                                       // 000000007194: BF03A030
	s_cbranch_scc1 69                                          // 000000007198: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x57b0>
	s_cmp_lt_i32 s48, 0                                        // 00000000719C: BF048030
	s_cbranch_scc1 981                                         // 0000000071A0: BF8503D5 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x65f8>
	v_add_u32_e32 v3, s48, v170                                // 0000000071A4: 68075430
	v_and_b32_e32 v4, 4, v175                                  // 0000000071A8: 26095E84
	v_sub_u32_e32 v3, v3, v4                                   // 0000000071AC: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 0000000071B0: 7D880680
	s_nop 1                                                    // 0000000071B4: BF800001
	v_cndmask_b32_e64 v98, v98, v2, vcc                        // 0000000071B8: D1000062 01AA0562
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 0000000071C0: 7D880681
	s_nop 1                                                    // 0000000071C4: BF800001
	v_cndmask_b32_e64 v99, v99, v2, vcc                        // 0000000071C8: D1000063 01AA0563
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 0000000071D0: 7D880682
	s_nop 1                                                    // 0000000071D4: BF800001
	v_cndmask_b32_e64 v100, v100, v2, vcc                      // 0000000071D8: D1000064 01AA0564
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 0000000071E0: 7D880683
	s_nop 1                                                    // 0000000071E4: BF800001
	v_cndmask_b32_e64 v101, v101, v2, vcc                      // 0000000071E8: D1000065 01AA0565
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 0000000071F0: 7D880688
	s_nop 1                                                    // 0000000071F4: BF800001
	v_cndmask_b32_e64 v102, v102, v2, vcc                      // 0000000071F8: D1000066 01AA0566
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 000000007200: 7D880689
	s_nop 1                                                    // 000000007204: BF800001
	v_cndmask_b32_e64 v103, v103, v2, vcc                      // 000000007208: D1000067 01AA0567
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 000000007210: 7D88068A
	s_nop 1                                                    // 000000007214: BF800001
	v_cndmask_b32_e64 v104, v104, v2, vcc                      // 000000007218: D1000068 01AA0568
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 000000007220: 7D88068B
	s_nop 1                                                    // 000000007224: BF800001
	v_cndmask_b32_e64 v105, v105, v2, vcc                      // 000000007228: D1000069 01AA0569
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 000000007230: 7D880690
	s_nop 1                                                    // 000000007234: BF800001
	v_cndmask_b32_e64 v106, v106, v2, vcc                      // 000000007238: D100006A 01AA056A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 000000007240: 7D880691
	s_nop 1                                                    // 000000007244: BF800001
	v_cndmask_b32_e64 v107, v107, v2, vcc                      // 000000007248: D100006B 01AA056B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 000000007250: 7D880692
	s_nop 1                                                    // 000000007254: BF800001
	v_cndmask_b32_e64 v108, v108, v2, vcc                      // 000000007258: D100006C 01AA056C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 000000007260: 7D880693
	s_nop 1                                                    // 000000007264: BF800001
	v_cndmask_b32_e64 v109, v109, v2, vcc                      // 000000007268: D100006D 01AA056D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 000000007270: 7D880698
	s_nop 1                                                    // 000000007274: BF800001
	v_cndmask_b32_e64 v110, v110, v2, vcc                      // 000000007278: D100006E 01AA056E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 000000007280: 7D880699
	s_nop 1                                                    // 000000007284: BF800001
	v_cndmask_b32_e64 v111, v111, v2, vcc                      // 000000007288: D100006F 01AA056F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 000000007290: 7D88069A
	s_nop 1                                                    // 000000007294: BF800001
	v_cndmask_b32_e64 v112, v112, v2, vcc                      // 000000007298: D1000070 01AA0570
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 0000000072A0: 7D88069B
	s_nop 1                                                    // 0000000072A4: BF800001
	v_cndmask_b32_e64 v113, v113, v2, vcc                      // 0000000072A8: D1000071 01AA0571
	s_sub_u32 s48, s3, s66                                     // 0000000072B0: 80B04203
	s_sub_i32 s48, s48, 0x60                                   // 0000000072B4: 81B0FF30 00000060
	s_cmp_ge_i32 s48, 32                                       // 0000000072BC: BF03A030
	s_cbranch_scc1 69                                          // 0000000072C0: BF850045 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x58d8>
	s_cmp_lt_i32 s48, 0                                        // 0000000072C4: BF048030
	s_cbranch_scc1 859                                         // 0000000072C8: BF85035B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6538>
	v_add_u32_e32 v3, s48, v170                                // 0000000072CC: 68075430
	v_and_b32_e32 v4, 4, v175                                  // 0000000072D0: 26095E84
	v_sub_u32_e32 v3, v3, v4                                   // 0000000072D4: 6A060903
	v_cmp_gt_i32_e32 vcc, 0, v3                                // 0000000072D8: 7D880680
	s_nop 3                                                    // 0000000072DC: BF800003
	v_cndmask_b32_e64 v82, v82, v2, vcc                        // 0000000072E0: D1000052 01AA0552
	v_cmp_gt_i32_e32 vcc, 1, v3                                // 0000000072E8: 7D880681
	s_nop 1                                                    // 0000000072EC: BF800001
	v_cndmask_b32_e64 v83, v83, v2, vcc                        // 0000000072F0: D1000053 01AA0553
	v_cmp_gt_i32_e32 vcc, 2, v3                                // 0000000072F8: 7D880682
	s_nop 1                                                    // 0000000072FC: BF800001
	v_cndmask_b32_e64 v84, v84, v2, vcc                        // 000000007300: D1000054 01AA0554
	v_cmp_gt_i32_e32 vcc, 3, v3                                // 000000007308: 7D880683
	s_nop 1                                                    // 00000000730C: BF800001
	v_cndmask_b32_e64 v85, v85, v2, vcc                        // 000000007310: D1000055 01AA0555
	v_cmp_gt_i32_e32 vcc, 8, v3                                // 000000007318: 7D880688
	s_nop 1                                                    // 00000000731C: BF800001
	v_cndmask_b32_e64 v86, v86, v2, vcc                        // 000000007320: D1000056 01AA0556
	v_cmp_gt_i32_e32 vcc, 9, v3                                // 000000007328: 7D880689
	s_nop 1                                                    // 00000000732C: BF800001
	v_cndmask_b32_e64 v87, v87, v2, vcc                        // 000000007330: D1000057 01AA0557
	v_cmp_gt_i32_e32 vcc, 10, v3                               // 000000007338: 7D88068A
	s_nop 1                                                    // 00000000733C: BF800001
	v_cndmask_b32_e64 v88, v88, v2, vcc                        // 000000007340: D1000058 01AA0558
	v_cmp_gt_i32_e32 vcc, 11, v3                               // 000000007348: 7D88068B
	s_nop 1                                                    // 00000000734C: BF800001
	v_cndmask_b32_e64 v89, v89, v2, vcc                        // 000000007350: D1000059 01AA0559
	v_cmp_gt_i32_e32 vcc, 16, v3                               // 000000007358: 7D880690
	s_nop 1                                                    // 00000000735C: BF800001
	v_cndmask_b32_e64 v90, v90, v2, vcc                        // 000000007360: D100005A 01AA055A
	v_cmp_gt_i32_e32 vcc, 17, v3                               // 000000007368: 7D880691
	s_nop 1                                                    // 00000000736C: BF800001
	v_cndmask_b32_e64 v91, v91, v2, vcc                        // 000000007370: D100005B 01AA055B
	v_cmp_gt_i32_e32 vcc, 18, v3                               // 000000007378: 7D880692
	s_nop 1                                                    // 00000000737C: BF800001
	v_cndmask_b32_e64 v92, v92, v2, vcc                        // 000000007380: D100005C 01AA055C
	v_cmp_gt_i32_e32 vcc, 19, v3                               // 000000007388: 7D880693
	s_nop 1                                                    // 00000000738C: BF800001
	v_cndmask_b32_e64 v93, v93, v2, vcc                        // 000000007390: D100005D 01AA055D
	v_cmp_gt_i32_e32 vcc, 24, v3                               // 000000007398: 7D880698
	s_nop 1                                                    // 00000000739C: BF800001
	v_cndmask_b32_e64 v94, v94, v2, vcc                        // 0000000073A0: D100005E 01AA055E
	v_cmp_gt_i32_e32 vcc, 25, v3                               // 0000000073A8: 7D880699
	s_nop 1                                                    // 0000000073AC: BF800001
	v_cndmask_b32_e64 v95, v95, v2, vcc                        // 0000000073B0: D100005F 01AA055F
	v_cmp_gt_i32_e32 vcc, 26, v3                               // 0000000073B8: 7D88069A
	s_nop 1                                                    // 0000000073BC: BF800001
	v_cndmask_b32_e64 v96, v96, v2, vcc                        // 0000000073C0: D1000060 01AA0560
	v_cmp_gt_i32_e32 vcc, 27, v3                               // 0000000073C8: 7D88069B
	s_nop 1                                                    // 0000000073CC: BF800001
	v_cndmask_b32_e64 v97, v97, v2, vcc                        // 0000000073D0: D1000061 01AA0561
	v_max_f32_e32 v3, v130, v131                               // 0000000073D8: 16070782
	v_max3_f32 v3, v132, v133, v3                              // 0000000073DC: D1D30003 040F0B84
	v_max3_f32 v3, v134, v135, v3                              // 0000000073E4: D1D30003 040F0F86
	v_max3_f32 v3, v136, v137, v3                              // 0000000073EC: D1D30003 040F1388
	v_max3_f32 v3, v138, v139, v3                              // 0000000073F4: D1D30003 040F178A
	v_max3_f32 v3, v140, v141, v3                              // 0000000073FC: D1D30003 040F1B8C
	v_max3_f32 v3, v142, v143, v3                              // 000000007404: D1D30003 040F1F8E
	v_max3_f32 v3, v144, v145, v3                              // 00000000740C: D1D30003 040F2390
	v_max_f32_e32 v4, v114, v115                               // 000000007414: 1608E772
	v_max3_f32 v4, v116, v117, v4                              // 000000007418: D1D30004 0412EB74
	v_max3_f32 v4, v118, v119, v4                              // 000000007420: D1D30004 0412EF76
	v_max3_f32 v4, v120, v121, v4                              // 000000007428: D1D30004 0412F378
	v_max3_f32 v4, v122, v123, v4                              // 000000007430: D1D30004 0412F77A
	v_max3_f32 v4, v124, v125, v4                              // 000000007438: D1D30004 0412FB7C
	v_max3_f32 v4, v126, v127, v4                              // 000000007440: D1D30004 0412FF7E
	v_max3_f32 v5, v128, v129, v4                              // 000000007448: D1D30005 04130380
	v_max_f32_e32 v4, v98, v99                                 // 000000007450: 1608C762
	v_max3_f32 v4, v100, v101, v4                              // 000000007454: D1D30004 0412CB64
	v_max3_f32 v4, v102, v103, v4                              // 00000000745C: D1D30004 0412CF66
	v_max3_f32 v4, v104, v105, v4                              // 000000007464: D1D30004 0412D368
	v_max3_f32 v4, v106, v107, v4                              // 00000000746C: D1D30004 0412D76A
	v_max3_f32 v4, v108, v109, v4                              // 000000007474: D1D30004 0412DB6C
	v_max3_f32 v4, v110, v111, v4                              // 00000000747C: D1D30004 0412DF6E
	v_max3_f32 v4, v112, v113, v4                              // 000000007484: D1D30004 0412E370
	v_max_f32_e32 v6, v82, v83                                 // 00000000748C: 160CA752
	v_max3_f32 v6, v84, v85, v6                                // 000000007490: D1D30006 041AAB54
	v_max3_f32 v6, v86, v87, v6                                // 000000007498: D1D30006 041AAF56
	v_max3_f32 v6, v88, v89, v6                                // 0000000074A0: D1D30006 041AB358
	v_max3_f32 v6, v90, v91, v6                                // 0000000074A8: D1D30006 041AB75A
	v_max3_f32 v6, v92, v93, v6                                // 0000000074B0: D1D30006 041ABB5C
	v_max3_f32 v6, v94, v95, v6                                // 0000000074B8: D1D30006 041ABF5E
	v_max3_f32 v6, v96, v97, v6                                // 0000000074C0: D1D30006 041AC360
	v_max_f32_e32 v4, v4, v6                                   // 0000000074C8: 16080D04
	v_max_f32_e32 v6, v3, v5                                   // 0000000074CC: 160C0B03
	v_mov_b32_e32 v7, v6                                       // 0000000074D0: 7E0E0306
	s_nop 1                                                    // 0000000074D4: BF800001
	v_permlane32_swap_b32_e32 v6, v7                           // 0000000074D8: 7E0CB507
	v_mov_b32_e32 v5, v4                                       // 0000000074DC: 7E0A0304
	s_nop 1                                                    // 0000000074E0: BF800001
	v_permlane32_swap_b32_e32 v4, v5                           // 0000000074E4: 7E08B505
	v_max_f32_e32 v4, v4, v5                                   // 0000000074E8: 16080B04
	v_max_f32_e32 v3, v6, v7                                   // 0000000074EC: 16060F06
	v_max_f32_e32 v5, v3, v4                                   // 0000000074F0: 160A0903
	v_mul_f32_e32 v5, v183, v5                                 // 0000000074F4: 0A0A0BB7
	v_max_f32_e32 v5, v188, v5                                 // 0000000074F8: 160A0BBC
	v_sub_f32_e32 v6, v5, v188                                 // 0000000074FC: 040D7905
	v_cmp_lt_f32_e32 vcc, s55, v6                              // 000000007500: 7C820C37
	s_cmp_lg_u64 vcc, 0                                        // 000000007504: BF13806A
	s_cselect_b32 s48, 1, 0                                    // 000000007508: 85308081
	s_cselect_b64 s[48:49], -1, 0                              // 00000000750C: 85B080C1
	v_cndmask_b32_e64 v5, v188, v5, s[48:49]                   // 000000007510: D1000005 00C20BBC
	v_fma_f32 v3, v3, v183, -v5                                // 000000007518: D1CB0003 84176F03
	v_floor_f32_e32 v3, v3                                     // 000000007520: 7E063F03
	v_med3_f32 v8, v3, s54, 0                                  // 000000007524: D1D60008 02006D03
	v_cvt_i32_f32_e32 v3, v8                                   // 00000000752C: 7E061108
	v_add_u32_e32 v6, 0x7f, v3                                 // 000000007530: 680C06FF 0000007F
	v_lshlrev_b32_e32 v3, 23, v6                               // 000000007538: 24060C97
	v_fma_f32 v4, v4, v183, -v5                                // 00000000753C: D1CB0004 84176F04
	v_floor_f32_e32 v4, v4                                     // 000000007544: 7E083F04
	v_med3_f32 v4, v4, s54, 0                                  // 000000007548: D1D60004 02006D04
	v_cvt_i32_f32_e32 v7, v4                                   // 000000007550: 7E0E1104
	v_add_u32_e32 v7, 0x7f, v7                                 // 000000007554: 680E0EFF 0000007F
	v_lshlrev_b32_e32 v190, 23, v7                             // 00000000755C: 257C0E97
	v_fma_f32 v9, v5, v174, s50                                // 000000007560: D1CB0009 00CB5D05
	v_fma_f32 v192, v8, v174, v9                               // 000000007568: D1CB00C0 04275D08
	v_fma_f32 v191, v4, v174, v9                               // 000000007570: D1CB00BF 04275D04
	ds_read_b64_tr_b8 v[8:9], v193                             // 000000007578: D9C40000 080000C1
	ds_read_b64_tr_b8 v[10:11], v193 offset:1024               // 000000007580: D9C40400 0A0000C1
	ds_read_b64_tr_b8 v[12:13], v193 offset:2048               // 000000007588: D9C40800 0C0000C1
	ds_read_b64_tr_b8 v[14:15], v193 offset:3072               // 000000007590: D9C40C00 0E0000C1
	ds_read_b64_tr_b8 v[194:195], v193 offset:256              // 000000007598: D9C40100 C20000C1
	ds_read_b64_tr_b8 v[196:197], v193 offset:1280             // 0000000075A0: D9C40500 C40000C1
	ds_read_b64_tr_b8 v[198:199], v193 offset:2304             // 0000000075A8: D9C40900 C60000C1
	ds_read_b64_tr_b8 v[200:201], v193 offset:3328             // 0000000075B0: D9C40D00 C80000C1
	ds_read_b64_tr_b8 v[202:203], v193 offset:512              // 0000000075B8: D9C40200 CA0000C1
	ds_read_b64_tr_b8 v[204:205], v193 offset:1536             // 0000000075C0: D9C40600 CC0000C1
	ds_read_b64_tr_b8 v[206:207], v193 offset:2560             // 0000000075C8: D9C40A00 CE0000C1
	ds_read_b64_tr_b8 v[208:209], v193 offset:3584             // 0000000075D0: D9C40E00 D00000C1
	s_waitcnt lgkmcnt(4)                                       // 0000000075D8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[8:15], v[162:169], v[66:81], v173, v187 op_sel_hi:[0,0,0]// 0000000075DC: D3AC0000 000377AD D3AE0842 050B4508
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[194:201], v[162:169], v[50:65], v173, v187 op_sel_hi:[0,0,0]// 0000000075EC: D3AC0000 000377AD D3AE0832 04CB45C2
	ds_read_b64_tr_b8 v[8:9], v193 offset:768                  // 0000000075FC: D9C40300 080000C1
	ds_read_b64_tr_b8 v[10:11], v193 offset:1792               // 000000007604: D9C40700 0A0000C1
	ds_read_b64_tr_b8 v[12:13], v193 offset:2816               // 00000000760C: D9C40B00 0C0000C1
	ds_read_b64_tr_b8 v[14:15], v193 offset:3840               // 000000007614: D9C40F00 0E0000C1
	ds_read_b64_tr_b8 v[194:195], v193 offset:4096             // 00000000761C: D9C41000 C20000C1
	ds_read_b64_tr_b8 v[196:197], v193 offset:5120             // 000000007624: D9C41400 C40000C1
	ds_read_b64_tr_b8 v[198:199], v193 offset:6144             // 00000000762C: D9C41800 C60000C1
	ds_read_b64_tr_b8 v[200:201], v193 offset:7168             // 000000007634: D9C41C00 C80000C1
	s_waitcnt lgkmcnt(4)                                       // 00000000763C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[202:209], v[162:169], v[34:49], v173, v187 op_sel_hi:[0,0,0]// 000000007640: D3AC0000 000377AD D3AE0822 048B45CA
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[8:15], v[162:169], v[18:33], v173, v187 op_sel_hi:[0,0,0]// 000000007650: D3AC0000 000377AD D3AE0812 044B4508
	ds_read_b64_tr_b8 v[202:203], v193 offset:4352             // 000000007660: D9C41100 CA0000C1
	ds_read_b64_tr_b8 v[204:205], v193 offset:5376             // 000000007668: D9C41500 CC0000C1
	ds_read_b64_tr_b8 v[206:207], v193 offset:6400             // 000000007670: D9C41900 CE0000C1
	ds_read_b64_tr_b8 v[208:209], v193 offset:7424             // 000000007678: D9C41D00 D00000C1
	ds_read_b64_tr_b8 v[8:9], v193 offset:4608                 // 000000007680: D9C41200 080000C1
	ds_read_b64_tr_b8 v[10:11], v193 offset:5632               // 000000007688: D9C41600 0A0000C1
	ds_read_b64_tr_b8 v[12:13], v193 offset:6656               // 000000007690: D9C41A00 0C0000C1
	ds_read_b64_tr_b8 v[14:15], v193 offset:7680               // 000000007698: D9C41E00 0E0000C1
	s_waitcnt lgkmcnt(4)                                       // 0000000076A0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[194:201], v[154:161], v[66:81], v173, v189 op_sel_hi:[0,0,0]// 0000000076A4: D3AC0000 00037BAD D3AE0842 050B35C2
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[202:209], v[154:161], v[50:65], v173, v189 op_sel_hi:[0,0,0]// 0000000076B4: D3AC0000 00037BAD D3AE0832 04CB35CA
	ds_read_b64_tr_b8 v[162:163], v193 offset:4864             // 0000000076C4: D9C41300 A20000C1
	ds_read_b64_tr_b8 v[164:165], v193 offset:5888             // 0000000076CC: D9C41700 A40000C1
	ds_read_b64_tr_b8 v[166:167], v193 offset:6912             // 0000000076D4: D9C41B00 A60000C1
	ds_read_b64_tr_b8 v[168:169], v193 offset:7936             // 0000000076DC: D9C41F00 A80000C1
	s_waitcnt lgkmcnt(0)                                       // 0000000076E4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[8:15], v[154:161], v[34:49], v173, v189 op_sel_hi:[0,0,0]// 0000000076E8: D3AC0000 00037BAD D3AE0822 048B3508
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[162:169], v[154:161], v[18:33], v173, v189 op_sel_hi:[0,0,0]// 0000000076F8: D3AC0000 00037BAD D3AE0812 044B35A2
	s_cbranch_vccz 68                                          // 000000007708: BF860044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5d1c>
	v_sub_f32_e32 v4, v188, v5                                 // 00000000770C: 04080BBC
	v_exp_f32_e32 v4, v4                                       // 000000007710: 7E084104
	s_nop 3                                                    // 000000007714: BF800003
	v_pk_mul_f32 v[80:81], v[4:5], v[80:81] op_sel_hi:[0,1]    // 000000007718: D3B14050 1002A104
	v_pk_mul_f32 v[78:79], v[4:5], v[78:79] op_sel_hi:[0,1]    // 000000007720: D3B1404E 10029D04
	v_pk_mul_f32 v[76:77], v[4:5], v[76:77] op_sel_hi:[0,1]    // 000000007728: D3B1404C 10029904
	v_pk_mul_f32 v[74:75], v[4:5], v[74:75] op_sel_hi:[0,1]    // 000000007730: D3B1404A 10029504
	v_pk_mul_f32 v[72:73], v[4:5], v[72:73] op_sel_hi:[0,1]    // 000000007738: D3B14048 10029104
	v_pk_mul_f32 v[70:71], v[4:5], v[70:71] op_sel_hi:[0,1]    // 000000007740: D3B14046 10028D04
	v_pk_mul_f32 v[68:69], v[4:5], v[68:69] op_sel_hi:[0,1]    // 000000007748: D3B14044 10028904
	v_pk_mul_f32 v[66:67], v[4:5], v[66:67] op_sel_hi:[0,1]    // 000000007750: D3B14042 10028504
	v_pk_mul_f32 v[64:65], v[4:5], v[64:65] op_sel_hi:[0,1]    // 000000007758: D3B14040 10028104
	v_pk_mul_f32 v[62:63], v[4:5], v[62:63] op_sel_hi:[0,1]    // 000000007760: D3B1403E 10027D04
	v_pk_mul_f32 v[60:61], v[4:5], v[60:61] op_sel_hi:[0,1]    // 000000007768: D3B1403C 10027904
	v_pk_mul_f32 v[58:59], v[4:5], v[58:59] op_sel_hi:[0,1]    // 000000007770: D3B1403A 10027504
	v_pk_mul_f32 v[56:57], v[4:5], v[56:57] op_sel_hi:[0,1]    // 000000007778: D3B14038 10027104
	v_pk_mul_f32 v[54:55], v[4:5], v[54:55] op_sel_hi:[0,1]    // 000000007780: D3B14036 10026D04
	v_pk_mul_f32 v[52:53], v[4:5], v[52:53] op_sel_hi:[0,1]    // 000000007788: D3B14034 10026904
	v_pk_mul_f32 v[50:51], v[4:5], v[50:51] op_sel_hi:[0,1]    // 000000007790: D3B14032 10026504
	v_pk_mul_f32 v[48:49], v[4:5], v[48:49] op_sel_hi:[0,1]    // 000000007798: D3B14030 10026104
	v_pk_mul_f32 v[46:47], v[4:5], v[46:47] op_sel_hi:[0,1]    // 0000000077A0: D3B1402E 10025D04
	v_pk_mul_f32 v[44:45], v[4:5], v[44:45] op_sel_hi:[0,1]    // 0000000077A8: D3B1402C 10025904
	v_pk_mul_f32 v[42:43], v[4:5], v[42:43] op_sel_hi:[0,1]    // 0000000077B0: D3B1402A 10025504
	v_pk_mul_f32 v[40:41], v[4:5], v[40:41] op_sel_hi:[0,1]    // 0000000077B8: D3B14028 10025104
	v_pk_mul_f32 v[38:39], v[4:5], v[38:39] op_sel_hi:[0,1]    // 0000000077C0: D3B14026 10024D04
	v_pk_mul_f32 v[36:37], v[4:5], v[36:37] op_sel_hi:[0,1]    // 0000000077C8: D3B14024 10024904
	v_pk_mul_f32 v[34:35], v[4:5], v[34:35] op_sel_hi:[0,1]    // 0000000077D0: D3B14022 10024504
	v_pk_mul_f32 v[32:33], v[4:5], v[32:33] op_sel_hi:[0,1]    // 0000000077D8: D3B14020 10024104
	v_pk_mul_f32 v[30:31], v[4:5], v[30:31] op_sel_hi:[0,1]    // 0000000077E0: D3B1401E 10023D04
	v_pk_mul_f32 v[28:29], v[4:5], v[28:29] op_sel_hi:[0,1]    // 0000000077E8: D3B1401C 10023904
	v_pk_mul_f32 v[26:27], v[4:5], v[26:27] op_sel_hi:[0,1]    // 0000000077F0: D3B1401A 10023504
	v_pk_mul_f32 v[24:25], v[4:5], v[24:25] op_sel_hi:[0,1]    // 0000000077F8: D3B14018 10023104
	v_pk_mul_f32 v[22:23], v[4:5], v[22:23] op_sel_hi:[0,1]    // 000000007800: D3B14016 10022D04
	v_pk_mul_f32 v[20:21], v[4:5], v[20:21] op_sel_hi:[0,1]    // 000000007808: D3B14014 10022904
	v_pk_mul_f32 v[18:19], v[4:5], v[18:19] op_sel_hi:[0,1]    // 000000007810: D3B14012 10022504
	v_mul_f32_e32 v186, v186, v4                               // 000000007818: 0B7409BA
	s_waitcnt vmcnt(0)                                         // 00000000781C: BF8C0F70
	s_barrier                                                  // 000000007820: BF8A0000
	s_add_u32 s53, s53, 1                                      // 000000007824: 80358135
	v_mov_b32_e32 v188, v5                                     // 000000007828: 7F780305
	v_mov_b32_e32 v187, v6                                     // 00000000782C: 7F760306
	v_mov_b32_e32 v189, v7                                     // 000000007830: 7F7A0307
	s_branch 63203                                             // 000000007834: BF82F6E3 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x38c4>
	s_cmp_eq_u32 s53, s15                                      // 000000007838: BF060F35
	s_cbranch_scc0 402                                         // 00000000783C: BF840192 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6388>
	s_setprio 0                                                // 000000007840: BF8F0000
	v_fma_f32 v4, v130, v184, v192                             // 000000007844: D1CB0004 07037182
	v_fma_f32 v8, v114, v184, v192                             // 00000000784C: D1CB0008 07037172
	v_fma_f32 v12, v134, v184, v192                            // 000000007854: D1CB000C 07037186
	v_fma_f32 v16, v118, v184, v192                            // 00000000785C: D1CB0010 07037176
	v_fma_f32 v155, v138, v184, v192                           // 000000007864: D1CB009B 0703718A
	v_fma_f32 v159, v122, v184, v192                           // 00000000786C: D1CB009F 0703717A
	v_fma_f32 v164, v142, v184, v192                           // 000000007874: D1CB00A4 0703718E
	v_fma_f32 v168, v126, v184, v192                           // 00000000787C: D1CB00A8 0703717E
	v_fma_f32 v196, v98, v184, v191                            // 000000007884: D1CB00C4 06FF7162
	v_fma_f32 v200, v82, v184, v191                            // 00000000788C: D1CB00C8 06FF7152
	v_fma_f32 v204, v102, v184, v191                           // 000000007894: D1CB00CC 06FF7166
	v_fma_f32 v208, v86, v184, v191                            // 00000000789C: D1CB00D0 06FF7156
	v_fma_f32 v212, v106, v184, v191                           // 0000000078A4: D1CB00D4 06FF716A
	v_fma_f32 v216, v90, v184, v191                            // 0000000078AC: D1CB00D8 06FF715A
	v_fma_f32 v220, v110, v184, v191                           // 0000000078B4: D1CB00DC 06FF716E
	v_fma_f32 v224, v94, v184, v191                            // 0000000078BC: D1CB00E0 06FF715E
	v_fma_f32 v5, v131, v184, v192                             // 0000000078C4: D1CB0005 07037183
	v_fma_f32 v9, v115, v184, v192                             // 0000000078CC: D1CB0009 07037173
	v_fma_f32 v13, v135, v184, v192                            // 0000000078D4: D1CB000D 07037187
	v_fma_f32 v17, v119, v184, v192                            // 0000000078DC: D1CB0011 07037177
	v_fma_f32 v157, v139, v184, v192                           // 0000000078E4: D1CB009D 0703718B
	v_fma_f32 v161, v123, v184, v192                           // 0000000078EC: D1CB00A1 0703717B
	v_fma_f32 v165, v143, v184, v192                           // 0000000078F4: D1CB00A5 0703718F
	v_fma_f32 v169, v127, v184, v192                           // 0000000078FC: D1CB00A9 0703717F
	v_fma_f32 v197, v99, v184, v191                            // 000000007904: D1CB00C5 06FF7163
	v_fma_f32 v201, v83, v184, v191                            // 00000000790C: D1CB00C9 06FF7153
	v_fma_f32 v205, v103, v184, v191                           // 000000007914: D1CB00CD 06FF7167
	v_fma_f32 v209, v87, v184, v191                            // 00000000791C: D1CB00D1 06FF7157
	v_fma_f32 v213, v107, v184, v191                           // 000000007924: D1CB00D5 06FF716B
	v_fma_f32 v217, v91, v184, v191                            // 00000000792C: D1CB00D9 06FF715B
	v_fma_f32 v221, v111, v184, v191                           // 000000007934: D1CB00DD 06FF716F
	v_fma_f32 v225, v95, v184, v191                            // 00000000793C: D1CB00E1 06FF715F
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 000000007944: D1DD0004 02010104
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 00000000794C: D1DD0008 02010108
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 000000007954: D1DD000C 0201010C
	v_cvt_pk_u8_f32 v16, v16, 0, 0                             // 00000000795C: D1DD0010 02010110
	v_cvt_pk_u8_f32 v155, v155, 0, 0                           // 000000007964: D1DD009B 0201019B
	v_cvt_pk_u8_f32 v159, v159, 0, 0                           // 00000000796C: D1DD009F 0201019F
	v_cvt_pk_u8_f32 v164, v164, 0, 0                           // 000000007974: D1DD00A4 020101A4
	v_cvt_pk_u8_f32 v168, v168, 0, 0                           // 00000000797C: D1DD00A8 020101A8
	v_cvt_pk_u8_f32 v196, v196, 0, 0                           // 000000007984: D1DD00C4 020101C4
	v_cvt_pk_u8_f32 v200, v200, 0, 0                           // 00000000798C: D1DD00C8 020101C8
	v_cvt_pk_u8_f32 v204, v204, 0, 0                           // 000000007994: D1DD00CC 020101CC
	v_cvt_pk_u8_f32 v208, v208, 0, 0                           // 00000000799C: D1DD00D0 020101D0
	v_cvt_pk_u8_f32 v212, v212, 0, 0                           // 0000000079A4: D1DD00D4 020101D4
	v_cvt_pk_u8_f32 v216, v216, 0, 0                           // 0000000079AC: D1DD00D8 020101D8
	v_cvt_pk_u8_f32 v220, v220, 0, 0                           // 0000000079B4: D1DD00DC 020101DC
	v_cvt_pk_u8_f32 v224, v224, 0, 0                           // 0000000079BC: D1DD00E0 020101E0
	v_fma_f32 v6, v132, v184, v192                             // 0000000079C4: D1CB0006 07037184
	v_fma_f32 v10, v116, v184, v192                            // 0000000079CC: D1CB000A 07037174
	v_fma_f32 v14, v136, v184, v192                            // 0000000079D4: D1CB000E 07037188
	v_fma_f32 v154, v120, v184, v192                           // 0000000079DC: D1CB009A 07037178
	v_fma_f32 v158, v140, v184, v192                           // 0000000079E4: D1CB009E 0703718C
	v_fma_f32 v162, v124, v184, v192                           // 0000000079EC: D1CB00A2 0703717C
	v_fma_f32 v166, v144, v184, v192                           // 0000000079F4: D1CB00A6 07037190
	v_fma_f32 v194, v128, v184, v192                           // 0000000079FC: D1CB00C2 07037180
	v_fma_f32 v198, v100, v184, v191                           // 000000007A04: D1CB00C6 06FF7164
	v_fma_f32 v202, v84, v184, v191                            // 000000007A0C: D1CB00CA 06FF7154
	v_fma_f32 v206, v104, v184, v191                           // 000000007A14: D1CB00CE 06FF7168
	v_fma_f32 v210, v88, v184, v191                            // 000000007A1C: D1CB00D2 06FF7158
	v_fma_f32 v214, v108, v184, v191                           // 000000007A24: D1CB00D6 06FF716C
	v_fma_f32 v218, v92, v184, v191                            // 000000007A2C: D1CB00DA 06FF715C
	v_fma_f32 v222, v112, v184, v191                           // 000000007A34: D1CB00DE 06FF7170
	v_fma_f32 v226, v96, v184, v191                            // 000000007A3C: D1CB00E2 06FF7160
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 000000007A44: D1DD0004 04110305
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 000000007A4C: D1DD0005 04210309
	v_cvt_pk_u8_f32 v8, v13, 1, v12                            // 000000007A54: D1DD0008 0431030D
	v_cvt_pk_u8_f32 v9, v17, 1, v16                            // 000000007A5C: D1DD0009 04410311
	v_cvt_pk_u8_f32 v12, v157, 1, v155                         // 000000007A64: D1DD000C 066D039D
	v_cvt_pk_u8_f32 v13, v161, 1, v159                         // 000000007A6C: D1DD000D 067D03A1
	v_cvt_pk_u8_f32 v16, v165, 1, v164                         // 000000007A74: D1DD0010 069103A5
	v_cvt_pk_u8_f32 v17, v169, 1, v168                         // 000000007A7C: D1DD0011 06A103A9
	v_cvt_pk_u8_f32 v155, v197, 1, v196                        // 000000007A84: D1DD009B 071103C5
	v_cvt_pk_u8_f32 v157, v201, 1, v200                        // 000000007A8C: D1DD009D 072103C9
	v_cvt_pk_u8_f32 v159, v205, 1, v204                        // 000000007A94: D1DD009F 073103CD
	v_cvt_pk_u8_f32 v161, v209, 1, v208                        // 000000007A9C: D1DD00A1 074103D1
	v_cvt_pk_u8_f32 v164, v213, 1, v212                        // 000000007AA4: D1DD00A4 075103D5
	v_cvt_pk_u8_f32 v165, v217, 1, v216                        // 000000007AAC: D1DD00A5 076103D9
	v_cvt_pk_u8_f32 v168, v221, 1, v220                        // 000000007AB4: D1DD00A8 077103DD
	v_cvt_pk_u8_f32 v169, v225, 1, v224                        // 000000007ABC: D1DD00A9 078103E1
	v_fma_f32 v7, v133, v184, v192                             // 000000007AC4: D1CB0007 07037185
	v_fma_f32 v11, v117, v184, v192                            // 000000007ACC: D1CB000B 07037175
	v_fma_f32 v15, v137, v184, v192                            // 000000007AD4: D1CB000F 07037189
	v_fma_f32 v156, v121, v184, v192                           // 000000007ADC: D1CB009C 07037179
	v_fma_f32 v160, v141, v184, v192                           // 000000007AE4: D1CB00A0 0703718D
	v_fma_f32 v163, v125, v184, v192                           // 000000007AEC: D1CB00A3 0703717D
	v_fma_f32 v167, v145, v184, v192                           // 000000007AF4: D1CB00A7 07037191
	v_fma_f32 v195, v129, v184, v192                           // 000000007AFC: D1CB00C3 07037181
	v_fma_f32 v199, v101, v184, v191                           // 000000007B04: D1CB00C7 06FF7165
	v_fma_f32 v203, v85, v184, v191                            // 000000007B0C: D1CB00CB 06FF7155
	v_fma_f32 v207, v105, v184, v191                           // 000000007B14: D1CB00CF 06FF7169
	v_fma_f32 v211, v89, v184, v191                            // 000000007B1C: D1CB00D3 06FF7159
	v_fma_f32 v215, v109, v184, v191                           // 000000007B24: D1CB00D7 06FF716D
	v_fma_f32 v219, v93, v184, v191                            // 000000007B2C: D1CB00DB 06FF715D
	v_fma_f32 v223, v113, v184, v191                           // 000000007B34: D1CB00DF 06FF7171
	v_fma_f32 v227, v97, v184, v191                            // 000000007B3C: D1CB00E3 06FF7161
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 000000007B44: D1DD0004 04110506
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 000000007B4C: D1DD0005 0415050A
	v_cvt_pk_u8_f32 v6, v14, 2, v8                             // 000000007B54: D1DD0006 0421050E
	v_cvt_pk_u8_f32 v8, v154, 2, v9                            // 000000007B5C: D1DD0008 0425059A
	v_cvt_pk_u8_f32 v9, v158, 2, v12                           // 000000007B64: D1DD0009 0431059E
	v_cvt_pk_u8_f32 v10, v162, 2, v13                          // 000000007B6C: D1DD000A 043505A2
	v_cvt_pk_u8_f32 v12, v166, 2, v16                          // 000000007B74: D1DD000C 044105A6
	v_cvt_pk_u8_f32 v13, v194, 2, v17                          // 000000007B7C: D1DD000D 044505C2
	v_cvt_pk_u8_f32 v14, v198, 2, v155                         // 000000007B84: D1DD000E 066D05C6
	v_cvt_pk_u8_f32 v16, v202, 2, v157                         // 000000007B8C: D1DD0010 067505CA
	v_cvt_pk_u8_f32 v17, v206, 2, v159                         // 000000007B94: D1DD0011 067D05CE
	v_cvt_pk_u8_f32 v162, v210, 2, v161                        // 000000007B9C: D1DD00A2 068505D2
	v_cvt_pk_u8_f32 v164, v214, 2, v164                        // 000000007BA4: D1DD00A4 069105D6
	v_cvt_pk_u8_f32 v165, v218, 2, v165                        // 000000007BAC: D1DD00A5 069505DA
	v_cvt_pk_u8_f32 v166, v222, 2, v168                        // 000000007BB4: D1DD00A6 06A105DE
	v_cvt_pk_u8_f32 v168, v226, 2, v169                        // 000000007BBC: D1DD00A8 06A505E2
	v_cvt_pk_u8_f32 v154, v7, 3, v4                            // 000000007BC4: D1DD009A 04110707
	v_cvt_pk_u8_f32 v158, v11, 3, v5                           // 000000007BCC: D1DD009E 0415070B
	v_cvt_pk_u8_f32 v155, v15, 3, v6                           // 000000007BD4: D1DD009B 0419070F
	v_cvt_pk_u8_f32 v159, v156, 3, v8                          // 000000007BDC: D1DD009F 0421079C
	v_cvt_pk_u8_f32 v156, v160, 3, v9                          // 000000007BE4: D1DD009C 042507A0
	v_cvt_pk_u8_f32 v160, v163, 3, v10                         // 000000007BEC: D1DD00A0 042907A3
	v_cvt_pk_u8_f32 v157, v167, 3, v12                         // 000000007BF4: D1DD009D 043107A7
	v_cvt_pk_u8_f32 v161, v195, 3, v13                         // 000000007BFC: D1DD00A1 043507C3
	v_cvt_pk_u8_f32 v4, v199, 3, v14                           // 000000007C04: D1DD0004 043907C7
	v_cvt_pk_u8_f32 v8, v203, 3, v16                           // 000000007C0C: D1DD0008 044107CB
	v_cvt_pk_u8_f32 v5, v207, 3, v17                           // 000000007C14: D1DD0005 044507CF
	v_cvt_pk_u8_f32 v9, v211, 3, v162                          // 000000007C1C: D1DD0009 068907D3
	v_cvt_pk_u8_f32 v6, v215, 3, v164                          // 000000007C24: D1DD0006 069107D7
	v_cvt_pk_u8_f32 v10, v219, 3, v165                         // 000000007C2C: D1DD000A 069507DB
	v_cvt_pk_u8_f32 v7, v223, 3, v166                          // 000000007C34: D1DD0007 069907DF
	v_cvt_pk_u8_f32 v11, v227, 3, v168                         // 000000007C3C: D1DD000B 06A107E3
	s_barrier                                                  // 000000007C44: BF8A0000
	s_setprio 1                                                // 000000007C48: BF8F0001
	s_waitcnt vmcnt(0)                                         // 000000007C4C: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[154:161], 0// 000000007C50: D3AD000C 02033592
	v_mfma_f32_16x16x128_f8f6f4 v[14:17], v[146:153], v[4:11], 0// 000000007C58: D3AD000E 02020992
	ds_read_b64_tr_b8 v[162:163], v193                         // 000000007C60: D9C40000 A20000C1
	ds_read_b64_tr_b8 v[164:165], v193 offset:1024             // 000000007C68: D9C40400 A40000C1
	ds_read_b64_tr_b8 v[166:167], v193 offset:2048             // 000000007C70: D9C40800 A60000C1
	ds_read_b64_tr_b8 v[168:169], v193 offset:3072             // 000000007C78: D9C40C00 A80000C1
	ds_read_b64_tr_b8 v[194:195], v193 offset:256              // 000000007C80: D9C40100 C20000C1
	ds_read_b64_tr_b8 v[196:197], v193 offset:1280             // 000000007C88: D9C40500 C40000C1
	ds_read_b64_tr_b8 v[198:199], v193 offset:2304             // 000000007C90: D9C40900 C60000C1
	ds_read_b64_tr_b8 v[200:201], v193 offset:3328             // 000000007C98: D9C40D00 C80000C1
	ds_read_b64_tr_b8 v[202:203], v193 offset:512              // 000000007CA0: D9C40200 CA0000C1
	ds_read_b64_tr_b8 v[204:205], v193 offset:1536             // 000000007CA8: D9C40600 CC0000C1
	ds_read_b64_tr_b8 v[206:207], v193 offset:2560             // 000000007CB0: D9C40A00 CE0000C1
	ds_read_b64_tr_b8 v[208:209], v193 offset:3584             // 000000007CB8: D9C40E00 D00000C1
	s_waitcnt lgkmcnt(4)                                       // 000000007CC0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[162:169], v[154:161], v[66:81], v173, v187 op_sel_hi:[0,0,0]// 000000007CC4: D3AC0000 000377AD D3AE0842 050B35A2
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[194:201], v[154:161], v[50:65], v173, v187 op_sel_hi:[0,0,0]// 000000007CD4: D3AC0000 000377AD D3AE0832 04CB35C2
	ds_read_b64_tr_b8 v[162:163], v193 offset:768              // 000000007CE4: D9C40300 A20000C1
	ds_read_b64_tr_b8 v[164:165], v193 offset:1792             // 000000007CEC: D9C40700 A40000C1
	ds_read_b64_tr_b8 v[166:167], v193 offset:2816             // 000000007CF4: D9C40B00 A60000C1
	ds_read_b64_tr_b8 v[168:169], v193 offset:3840             // 000000007CFC: D9C40F00 A80000C1
	ds_read_b64_tr_b8 v[194:195], v193 offset:4096             // 000000007D04: D9C41000 C20000C1
	ds_read_b64_tr_b8 v[196:197], v193 offset:5120             // 000000007D0C: D9C41400 C40000C1
	ds_read_b64_tr_b8 v[198:199], v193 offset:6144             // 000000007D14: D9C41800 C60000C1
	ds_read_b64_tr_b8 v[200:201], v193 offset:7168             // 000000007D1C: D9C41C00 C80000C1
	s_waitcnt lgkmcnt(4)                                       // 000000007D24: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[202:209], v[154:161], v[34:49], v173, v187 op_sel_hi:[0,0,0]// 000000007D28: D3AC0000 000377AD D3AE0822 048B35CA
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[162:169], v[154:161], v[18:33], v173, v187 op_sel_hi:[0,0,0]// 000000007D38: D3AC0000 000377AD D3AE0812 044B35A2
	ds_read_b64_tr_b8 v[202:203], v193 offset:4352             // 000000007D48: D9C41100 CA0000C1
	ds_read_b64_tr_b8 v[204:205], v193 offset:5376             // 000000007D50: D9C41500 CC0000C1
	ds_read_b64_tr_b8 v[206:207], v193 offset:6400             // 000000007D58: D9C41900 CE0000C1
	ds_read_b64_tr_b8 v[208:209], v193 offset:7424             // 000000007D60: D9C41D00 D00000C1
	ds_read_b64_tr_b8 v[154:155], v193 offset:4608             // 000000007D68: D9C41200 9A0000C1
	ds_read_b64_tr_b8 v[156:157], v193 offset:5632             // 000000007D70: D9C41600 9C0000C1
	ds_read_b64_tr_b8 v[158:159], v193 offset:6656             // 000000007D78: D9C41A00 9E0000C1
	ds_read_b64_tr_b8 v[160:161], v193 offset:7680             // 000000007D80: D9C41E00 A00000C1
	s_waitcnt lgkmcnt(4)                                       // 000000007D88: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[194:201], v[4:11], v[66:81], v173, v189 op_sel_hi:[0,0,0]// 000000007D8C: D3AC0000 00037BAD D3AE0842 050A09C2
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[202:209], v[4:11], v[50:65], v173, v189 op_sel_hi:[0,0,0]// 000000007D9C: D3AC0000 00037BAD D3AE0832 04CA09CA
	ds_read_b64_tr_b8 v[162:163], v193 offset:4864             // 000000007DAC: D9C41300 A20000C1
	ds_read_b64_tr_b8 v[164:165], v193 offset:5888             // 000000007DB4: D9C41700 A40000C1
	ds_read_b64_tr_b8 v[166:167], v193 offset:6912             // 000000007DBC: D9C41B00 A60000C1
	ds_read_b64_tr_b8 v[168:169], v193 offset:7936             // 000000007DC4: D9C41F00 A80000C1
	s_add_u32 s49, s15, 4                                      // 000000007DCC: 8031840F
	s_cmp_ge_u32 s49, s65                                      // 000000007DD0: BF094131
	s_cbranch_scc1 11                                          // 000000007DD4: BF85000B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6304>
	s_mul_i32 s49, s49, s8                                     // 000000007DD8: 92310831
	s_add_u32 s53, s56, s48                                    // 000000007DDC: 80353038
	s_add_u32 m0, s53, 0                                       // 000000007DE0: 807C8035
	s_lshl_b32 s49, s49, 7                                     // 000000007DE4: 8E318731
	buffer_load_dwordx4 v176, s[24:27], s49 offen lds          // 000000007DE8: E05D1000 310600B0
	s_add_u32 m0, s53, 0x2000                                  // 000000007DF0: 807CFF35 00002000
	s_nop 0                                                    // 000000007DF8: BF800000
	buffer_load_dwordx4 v177, s[24:27], s49 offen lds          // 000000007DFC: E05D1000 310600B1
	s_add_u32 s49, s15, 2                                      // 000000007E04: 8031820F
	s_cmp_ge_u32 s49, s65                                      // 000000007E08: BF094131
	s_cbranch_scc1 14                                          // 000000007E0C: BF85000E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6348>
	s_xor_b32 s48, s48, 0x8000                                 // 000000007E10: 8830FF30 00008000
	s_mul_i32 s49, s49, s8                                     // 000000007E18: 92310831
	s_add_u32 s48, s57, s48                                    // 000000007E1C: 80303039
	s_lshl_b32 s49, s49, 7                                     // 000000007E20: 8E318731
	s_add_u32 m0, s48, 0                                       // 000000007E24: 807C8030
	s_nop 0                                                    // 000000007E28: BF800000
	buffer_load_dwordx4 v178, s[28:31], s49 offen lds          // 000000007E2C: E05D1000 310700B2
	s_add_u32 m0, s48, 0x2000                                  // 000000007E34: 807CFF30 00002000
	s_nop 0                                                    // 000000007E3C: BF800000
	buffer_load_dwordx4 v179, s[28:31], s49 offen lds          // 000000007E40: E05D1000 310700B3
	v_mul_f32_e32 v12, v3, v12                                 // 000000007E48: 0A181903
	v_mul_f32_e32 v13, v190, v14                               // 000000007E4C: 0A1A1DBE
	v_add_f32_e32 v12, v186, v12                               // 000000007E50: 021819BA
	v_add_f32_e32 v186, v12, v13                               // 000000007E54: 03741B0C
	s_waitcnt lgkmcnt(0)                                       // 000000007E58: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[154:161], v[4:11], v[34:49], v173, v189 op_sel_hi:[0,0,0]// 000000007E5C: D3AC0000 00037BAD D3AE0822 048A099A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[162:169], v[4:11], v[18:33], v173, v189 op_sel_hi:[0,0,0]// 000000007E6C: D3AC0000 00037BAD D3AE0812 044A09A2
	s_barrier                                                  // 000000007E7C: BF8A0000
	s_add_u32 s53, s15, 1                                      // 000000007E80: 8035810F
	s_branch 62799                                             // 000000007E84: BF82F54F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x38c4>
	s_barrier                                                  // 000000007E88: BF8A0000
	s_waitcnt vmcnt(0)                                         // 000000007E8C: BF8C0F70
	s_add_u32 s49, s53, 4                                      // 000000007E90: 80318435
	s_cmp_ge_u32 s49, s65                                      // 000000007E94: BF094131
	s_cbranch_scc1 11                                          // 000000007E98: BF85000B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x63c8>
	s_mul_i32 s49, s49, s8                                     // 000000007E9C: 92310831
	s_add_u32 s66, s56, s48                                    // 000000007EA0: 80423038
	s_add_u32 m0, s66, 0                                       // 000000007EA4: 807C8042
	s_lshl_b32 s49, s49, 7                                     // 000000007EA8: 8E318731
	buffer_load_dwordx4 v176, s[24:27], s49 offen lds          // 000000007EAC: E05D1000 310600B0
	s_add_u32 m0, s66, 0x2000                                  // 000000007EB4: 807CFF42 00002000
	s_nop 0                                                    // 000000007EBC: BF800000
	buffer_load_dwordx4 v177, s[24:27], s49 offen lds          // 000000007EC0: E05D1000 310600B1
	s_add_u32 s49, s53, 2                                      // 000000007EC8: 80318235
	s_cmp_ge_u32 s49, s65                                      // 000000007ECC: BF094131
	s_cbranch_scc1 14                                          // 000000007ED0: BF85000E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x640c>
	s_xor_b32 s48, s48, 0x8000                                 // 000000007ED4: 8830FF30 00008000
	s_mul_i32 s49, s49, s8                                     // 000000007EDC: 92310831
	s_add_u32 s48, s57, s48                                    // 000000007EE0: 80303039
	s_lshl_b32 s49, s49, 7                                     // 000000007EE4: 8E318731
	s_add_u32 m0, s48, 0                                       // 000000007EE8: 807C8030
	s_nop 0                                                    // 000000007EEC: BF800000
	buffer_load_dwordx4 v178, s[28:31], s49 offen lds          // 000000007EF0: E05D1000 310700B2
	s_add_u32 m0, s48, 0x2000                                  // 000000007EF8: 807CFF30 00002000
	s_nop 0                                                    // 000000007F00: BF800000
	buffer_load_dwordx4 v179, s[28:31], s49 offen lds          // 000000007F04: E05D1000 310700B3
	s_barrier                                                  // 000000007F0C: BF8A0000
	s_add_u32 s53, s53, 1                                      // 000000007F10: 80358135
	s_branch 62763                                             // 000000007F14: BF82F52B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x38c4>
	v_mov_b32_e32 v3, v2                                       // 000000007F18: 7E060302
	v_mov_b32_e32 v4, v2                                       // 000000007F1C: 7E080302
	v_mov_b32_e32 v5, v2                                       // 000000007F20: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000007F24: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000007F28: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 000000007F2C: 7E100302
	v_mov_b32_e32 v9, v2                                       // 000000007F30: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000007F34: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000007F38: 7E160302
	v_mov_b32_e32 v12, v2                                      // 000000007F3C: 7E180302
	v_mov_b32_e32 v13, v2                                      // 000000007F40: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000007F44: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000007F48: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 000000007F4C: 7E200302
	v_mov_b32_e32 v17, v2                                      // 000000007F50: 7E220302
	v_mov_b64_e32 v[144:145], v[16:17]                         // 000000007F54: 7F207110
	v_mov_b64_e32 v[142:143], v[14:15]                         // 000000007F58: 7F1C710E
	v_mov_b64_e32 v[140:141], v[12:13]                         // 000000007F5C: 7F18710C
	v_mov_b64_e32 v[138:139], v[10:11]                         // 000000007F60: 7F14710A
	v_mov_b64_e32 v[136:137], v[8:9]                           // 000000007F64: 7F107108
	v_mov_b64_e32 v[134:135], v[6:7]                           // 000000007F68: 7F0C7106
	v_mov_b64_e32 v[132:133], v[4:5]                           // 000000007F6C: 7F087104
	v_mov_b64_e32 v[130:131], v[2:3]                           // 000000007F70: 7F047102
	s_branch 63186                                             // 000000007F74: BF82F6D2 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3fc0>
	v_mov_b32_e32 v3, v2                                       // 000000007F78: 7E060302
	v_mov_b32_e32 v4, v2                                       // 000000007F7C: 7E080302
	v_mov_b32_e32 v5, v2                                       // 000000007F80: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000007F84: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000007F88: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 000000007F8C: 7E100302
	v_mov_b32_e32 v9, v2                                       // 000000007F90: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000007F94: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000007F98: 7E160302
	v_mov_b32_e32 v12, v2                                      // 000000007F9C: 7E180302
	v_mov_b32_e32 v13, v2                                      // 000000007FA0: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000007FA4: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000007FA8: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 000000007FAC: 7E200302
	v_mov_b32_e32 v17, v2                                      // 000000007FB0: 7E220302
	v_mov_b64_e32 v[144:145], v[16:17]                         // 000000007FB4: 7F207110
	v_mov_b64_e32 v[142:143], v[14:15]                         // 000000007FB8: 7F1C710E
	v_mov_b64_e32 v[140:141], v[12:13]                         // 000000007FBC: 7F18710C
	v_mov_b64_e32 v[138:139], v[10:11]                         // 000000007FC0: 7F14710A
	v_mov_b64_e32 v[136:137], v[8:9]                           // 000000007FC4: 7F107108
	v_mov_b64_e32 v[134:135], v[6:7]                           // 000000007FC8: 7F0C7106
	v_mov_b64_e32 v[132:133], v[4:5]                           // 000000007FCC: 7F087104
	v_mov_b64_e32 v[130:131], v[2:3]                           // 000000007FD0: 7F047102
	s_branch 64548                                             // 000000007FD4: BF82FC24 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5568>
	v_mov_b32_e32 v3, v2                                       // 000000007FD8: 7E060302
	v_mov_b32_e32 v4, v2                                       // 000000007FDC: 7E080302
	v_mov_b32_e32 v5, v2                                       // 000000007FE0: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000007FE4: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000007FE8: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 000000007FEC: 7E100302
	v_mov_b32_e32 v9, v2                                       // 000000007FF0: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000007FF4: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000007FF8: 7E160302
	v_mov_b32_e32 v12, v2                                      // 000000007FFC: 7E180302
	v_mov_b32_e32 v13, v2                                      // 000000008000: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000008004: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000008008: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 00000000800C: 7E200302
	v_mov_b32_e32 v17, v2                                      // 000000008010: 7E220302
	v_mov_b64_e32 v[96:97], v[16:17]                           // 000000008014: 7EC07110
	v_mov_b64_e32 v[94:95], v[14:15]                           // 000000008018: 7EBC710E
	v_mov_b64_e32 v[92:93], v[12:13]                           // 00000000801C: 7EB8710C
	v_mov_b64_e32 v[90:91], v[10:11]                           // 000000008020: 7EB4710A
	v_mov_b64_e32 v[88:89], v[8:9]                             // 000000008024: 7EB07108
	v_mov_b64_e32 v[86:87], v[6:7]                             // 000000008028: 7EAC7106
	v_mov_b64_e32 v[84:85], v[4:5]                             // 00000000802C: 7EA87104
	v_mov_b64_e32 v[82:83], v[2:3]                             // 000000008030: 7EA47102
	s_branch 63358                                             // 000000008034: BF82F77E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4330>
	v_mov_b32_e32 v3, v2                                       // 000000008038: 7E060302
	v_mov_b32_e32 v4, v2                                       // 00000000803C: 7E080302
	v_mov_b32_e32 v5, v2                                       // 000000008040: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000008044: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000008048: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 00000000804C: 7E100302
	v_mov_b32_e32 v9, v2                                       // 000000008050: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000008054: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000008058: 7E160302
	v_mov_b32_e32 v12, v2                                      // 00000000805C: 7E180302
	v_mov_b32_e32 v13, v2                                      // 000000008060: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000008064: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000008068: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 00000000806C: 7E200302
	v_mov_b32_e32 v17, v2                                      // 000000008070: 7E220302
	v_mov_b64_e32 v[96:97], v[16:17]                           // 000000008074: 7EC07110
	v_mov_b64_e32 v[94:95], v[14:15]                           // 000000008078: 7EBC710E
	v_mov_b64_e32 v[92:93], v[12:13]                           // 00000000807C: 7EB8710C
	v_mov_b64_e32 v[90:91], v[10:11]                           // 000000008080: 7EB4710A
	v_mov_b64_e32 v[88:89], v[8:9]                             // 000000008084: 7EB07108
	v_mov_b64_e32 v[86:87], v[6:7]                             // 000000008088: 7EAC7106
	v_mov_b64_e32 v[84:85], v[4:5]                             // 00000000808C: 7EA87104
	v_mov_b64_e32 v[82:83], v[2:3]                             // 000000008090: 7EA47102
	s_branch 64720                                             // 000000008094: BF82FCD0 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x58d8>
	v_mov_b32_e32 v3, v2                                       // 000000008098: 7E060302
	v_mov_b32_e32 v4, v2                                       // 00000000809C: 7E080302
	v_mov_b32_e32 v5, v2                                       // 0000000080A0: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 0000000080A4: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 0000000080A8: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 0000000080AC: 7E100302
	v_mov_b32_e32 v9, v2                                       // 0000000080B0: 7E120302
	v_mov_b32_e32 v10, v2                                      // 0000000080B4: 7E140302
	v_mov_b32_e32 v11, v2                                      // 0000000080B8: 7E160302
	v_mov_b32_e32 v12, v2                                      // 0000000080BC: 7E180302
	v_mov_b32_e32 v13, v2                                      // 0000000080C0: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 0000000080C4: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 0000000080C8: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 0000000080CC: 7E200302
	v_mov_b32_e32 v17, v2                                      // 0000000080D0: 7E220302
	v_mov_b64_e32 v[112:113], v[16:17]                         // 0000000080D4: 7EE07110
	v_mov_b64_e32 v[110:111], v[14:15]                         // 0000000080D8: 7EDC710E
	v_mov_b64_e32 v[108:109], v[12:13]                         // 0000000080DC: 7ED8710C
	v_mov_b64_e32 v[106:107], v[10:11]                         // 0000000080E0: 7ED4710A
	v_mov_b64_e32 v[104:105], v[8:9]                           // 0000000080E4: 7ED07108
	v_mov_b64_e32 v[102:103], v[6:7]                           // 0000000080E8: 7ECC7106
	v_mov_b64_e32 v[100:101], v[4:5]                           // 0000000080EC: 7EC87104
	v_mov_b64_e32 v[98:99], v[2:3]                             // 0000000080F0: 7EC47102
	s_branch 63236                                             // 0000000080F4: BF82F704 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4208>
	v_mov_b32_e32 v3, v2                                       // 0000000080F8: 7E060302
	v_mov_b32_e32 v4, v2                                       // 0000000080FC: 7E080302
	v_mov_b32_e32 v5, v2                                       // 000000008100: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000008104: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000008108: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 00000000810C: 7E100302
	v_mov_b32_e32 v9, v2                                       // 000000008110: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000008114: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000008118: 7E160302
	v_mov_b32_e32 v12, v2                                      // 00000000811C: 7E180302
	v_mov_b32_e32 v13, v2                                      // 000000008120: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000008124: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000008128: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 00000000812C: 7E200302
	v_mov_b32_e32 v17, v2                                      // 000000008130: 7E220302
	v_mov_b64_e32 v[112:113], v[16:17]                         // 000000008134: 7EE07110
	v_mov_b64_e32 v[110:111], v[14:15]                         // 000000008138: 7EDC710E
	v_mov_b64_e32 v[108:109], v[12:13]                         // 00000000813C: 7ED8710C
	v_mov_b64_e32 v[106:107], v[10:11]                         // 000000008140: 7ED4710A
	v_mov_b64_e32 v[104:105], v[8:9]                           // 000000008144: 7ED07108
	v_mov_b64_e32 v[102:103], v[6:7]                           // 000000008148: 7ECC7106
	v_mov_b64_e32 v[100:101], v[4:5]                           // 00000000814C: 7EC87104
	v_mov_b64_e32 v[98:99], v[2:3]                             // 000000008150: 7EC47102
	s_branch 64598                                             // 000000008154: BF82FC56 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x57b0>
	v_mov_b32_e32 v3, v2                                       // 000000008158: 7E060302
	v_mov_b32_e32 v4, v2                                       // 00000000815C: 7E080302
	v_mov_b32_e32 v5, v2                                       // 000000008160: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 000000008164: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 000000008168: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 00000000816C: 7E100302
	v_mov_b32_e32 v9, v2                                       // 000000008170: 7E120302
	v_mov_b32_e32 v10, v2                                      // 000000008174: 7E140302
	v_mov_b32_e32 v11, v2                                      // 000000008178: 7E160302
	v_mov_b32_e32 v12, v2                                      // 00000000817C: 7E180302
	v_mov_b32_e32 v13, v2                                      // 000000008180: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 000000008184: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 000000008188: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 00000000818C: 7E200302
	v_mov_b32_e32 v17, v2                                      // 000000008190: 7E220302
	v_mov_b64_e32 v[128:129], v[16:17]                         // 000000008194: 7F007110
	v_mov_b64_e32 v[126:127], v[14:15]                         // 000000008198: 7EFC710E
	v_mov_b64_e32 v[124:125], v[12:13]                         // 00000000819C: 7EF8710C
	v_mov_b64_e32 v[122:123], v[10:11]                         // 0000000081A0: 7EF4710A
	v_mov_b64_e32 v[120:121], v[8:9]                           // 0000000081A4: 7EF07108
	v_mov_b64_e32 v[118:119], v[6:7]                           // 0000000081A8: 7EEC7106
	v_mov_b64_e32 v[116:117], v[4:5]                           // 0000000081AC: 7EE87104
	v_mov_b64_e32 v[114:115], v[2:3]                           // 0000000081B0: 7EE47102
	s_branch 63115                                             // 0000000081B4: BF82F68B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x40e4>
	v_mov_b32_e32 v3, v2                                       // 0000000081B8: 7E060302
	v_mov_b32_e32 v4, v2                                       // 0000000081BC: 7E080302
	v_mov_b32_e32 v5, v2                                       // 0000000081C0: 7E0A0302
	v_mov_b32_e32 v6, v2                                       // 0000000081C4: 7E0C0302
	v_mov_b32_e32 v7, v2                                       // 0000000081C8: 7E0E0302
	v_mov_b32_e32 v8, v2                                       // 0000000081CC: 7E100302
	v_mov_b32_e32 v9, v2                                       // 0000000081D0: 7E120302
	v_mov_b32_e32 v10, v2                                      // 0000000081D4: 7E140302
	v_mov_b32_e32 v11, v2                                      // 0000000081D8: 7E160302
	v_mov_b32_e32 v12, v2                                      // 0000000081DC: 7E180302
	v_mov_b32_e32 v13, v2                                      // 0000000081E0: 7E1A0302
	v_mov_b32_e32 v14, v2                                      // 0000000081E4: 7E1C0302
	v_mov_b32_e32 v15, v2                                      // 0000000081E8: 7E1E0302
	v_mov_b32_e32 v16, v2                                      // 0000000081EC: 7E200302
	v_mov_b32_e32 v17, v2                                      // 0000000081F0: 7E220302
	v_mov_b64_e32 v[128:129], v[16:17]                         // 0000000081F4: 7F007110
	v_mov_b64_e32 v[126:127], v[14:15]                         // 0000000081F8: 7EFC710E
	v_mov_b64_e32 v[124:125], v[12:13]                         // 0000000081FC: 7EF8710C
	v_mov_b64_e32 v[122:123], v[10:11]                         // 000000008200: 7EF4710A
	v_mov_b64_e32 v[120:121], v[8:9]                           // 000000008204: 7EF07108
	v_mov_b64_e32 v[118:119], v[6:7]                           // 000000008208: 7EEC7106
	v_mov_b64_e32 v[116:117], v[4:5]                           // 00000000820C: 7EE87104
	v_mov_b64_e32 v[114:115], v[2:3]                           // 000000008210: 7EE47102
	s_branch 64477                                             // 000000008214: BF82FBDD <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x568c>
	s_cmp_ge_u32 s15, s53                                      // 000000008218: BF09350F
	s_cbranch_scc1 44                                          // 00000000821C: BF85002C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x67d0>
	s_waitcnt vmcnt(0)                                         // 000000008220: BF8C0F70
	s_barrier                                                  // 000000008224: BF8A0000
	s_add_u32 s30, s65, s62                                    // 000000008228: 801E3E41
	s_and_b32 s62, s30, 3                                      // 00000000822C: 863E831E
	s_cmp_lg_u32 s52, 0                                        // 000000008230: BF078034
	s_cselect_b64 s[30:31], -1, 0                              // 000000008234: 859E80C1
	s_not_b32 s48, s16                                         // 000000008238: BEB00410
	s_add_u32 s48, s4, s48                                     // 00000000823C: 80303004
	s_cmp_eq_u32 s16, s48                                      // 000000008240: BF063010
	s_cselect_b64 s[48:49], -1, 0                              // 000000008244: 85B080C1
	s_or_b64 s[48:49], s[30:31], s[48:49]                      // 000000008248: 87B0301E
	s_and_b64 s[30:31], s[48:49], exec                         // 00000000824C: 869E7E30
	s_mov_b32 s67, 0                                           // 000000008250: BEC30080
	s_cbranch_scc0 848                                         // 000000008254: BF840350 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7498>
	s_add_u32 s2, s2, s14                                      // 000000008258: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 00000000825C: BF093302
	s_cbranch_scc1 1097                                        // 000000008260: BF850449 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7888>
	s_lshl_b32 s15, s2, 5                                      // 000000008264: 8E0F8502
	s_load_dwordx8 s[16:23], s[46:47], s15 offset:0x0          // 000000008268: C00E4417 1E000000
	s_branch 842                                               // 000000008270: BF82034A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x749c>
	s_cmp_ge_u32 s15, s53                                      // 000000008274: BF09350F
	s_cbranch_scc1 430                                         // 000000008278: BF8501AE <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6e34>
	s_waitcnt vmcnt(0)                                         // 00000000827C: BF8C0F70
	s_barrier                                                  // 000000008280: BF8A0000
	s_add_u32 s30, s65, s62                                    // 000000008284: 801E3E41
	s_and_b32 s62, s30, 3                                      // 000000008288: 863E831E
	s_cmp_lg_u32 s52, 0                                        // 00000000828C: BF078034
	s_cselect_b64 s[30:31], -1, 0                              // 000000008290: 859E80C1
	s_not_b32 s48, s16                                         // 000000008294: BEB00410
	s_add_u32 s48, s4, s48                                     // 000000008298: 80303004
	s_cmp_eq_u32 s16, s48                                      // 00000000829C: BF063010
	s_cselect_b64 s[48:49], -1, 0                              // 0000000082A0: 85B080C1
	s_or_b64 s[48:49], s[30:31], s[48:49]                      // 0000000082A4: 87B0301E
	s_and_b64 s[30:31], s[48:49], exec                         // 0000000082A8: 869E7E30
	s_mov_b32 s67, 0                                           // 0000000082AC: BEC30080
	s_cbranch_scc0 951                                         // 0000000082B0: BF8403B7 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7690>
	s_add_u32 s2, s2, s14                                      // 0000000082B4: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 0000000082B8: BF093302
	s_cbranch_scc1 1079                                        // 0000000082BC: BF850437 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x789c>
	s_lshl_b32 s15, s2, 5                                      // 0000000082C0: 8E0F8502
	s_load_dwordx8 s[16:23], s[46:47], s15 offset:0x0          // 0000000082C4: C00E4417 1E000000
	s_branch 945                                               // 0000000082CC: BF8203B1 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7694>
	s_add_u32 s30, s53, s62                                    // 0000000082D0: 801E3E35
	s_lshl_b32 s30, s30, 14                                    // 0000000082D4: 8E1E8E1E
	s_and_b32 s30, s30, 0xc000                                 // 0000000082D8: 861EFF1E 0000C000
	v_add_u32_e32 v16, s30, v185                               // 0000000082E0: 6821721E
	s_setprio 0                                                // 0000000082E4: BF8F0000
	v_fma_f32 v4, v130, v184, v192                             // 0000000082E8: D1CB0004 07037182
	v_fma_f32 v7, v133, v184, v192                             // 0000000082F0: D1CB0007 07037185
	v_fma_f32 v8, v114, v184, v192                             // 0000000082F8: D1CB0008 07037172
	v_fma_f32 v10, v116, v184, v192                            // 000000008300: D1CB000A 07037174
	v_fma_f32 v11, v117, v184, v192                            // 000000008308: D1CB000B 07037175
	v_fma_f32 v12, v134, v184, v192                            // 000000008310: D1CB000C 07037186
	v_fma_f32 v17, v118, v184, v192                            // 000000008318: D1CB0011 07037176
	v_fma_f32 v116, v121, v184, v192                           // 000000008320: D1CB0074 07037179
	v_fma_f32 v117, v138, v184, v192                           // 000000008328: D1CB0075 0703718A
	v_fma_f32 v121, v122, v184, v192                           // 000000008330: D1CB0079 0703717A
	v_fma_f32 v122, v123, v184, v192                           // 000000008338: D1CB007A 0703717B
	v_fma_f32 v123, v124, v184, v192                           // 000000008340: D1CB007B 0703717C
	v_fma_f32 v124, v125, v184, v192                           // 000000008348: D1CB007C 0703717D
	v_fma_f32 v125, v142, v184, v192                           // 000000008350: D1CB007D 0703718E
	v_fma_f32 v126, v126, v184, v192                           // 000000008358: D1CB007E 0703717E
	v_fma_f32 v98, v98, v184, v191                             // 000000008360: D1CB0062 06FF7162
	v_fma_f32 v82, v82, v184, v191                             // 000000008368: D1CB0052 06FF7152
	v_fma_f32 v133, v85, v184, v191                            // 000000008370: D1CB0085 06FF7155
	v_fma_f32 v85, v102, v184, v191                            // 000000008378: D1CB0055 06FF7166
	v_fma_f32 v102, v103, v184, v191                           // 000000008380: D1CB0066 06FF7167
	v_fma_f32 v103, v104, v184, v191                           // 000000008388: D1CB0067 06FF7168
	v_fma_f32 v104, v105, v184, v191                           // 000000008390: D1CB0068 06FF7169
	v_fma_f32 v86, v86, v184, v191                             // 000000008398: D1CB0056 06FF7156
	v_fma_f32 v105, v89, v184, v191                            // 0000000083A0: D1CB0069 06FF7159
	v_fma_f32 v89, v106, v184, v191                            // 0000000083A8: D1CB0059 06FF716A
	v_fma_f32 v106, v107, v184, v191                           // 0000000083B0: D1CB006A 06FF716B
	v_fma_f32 v107, v108, v184, v191                           // 0000000083B8: D1CB006B 06FF716C
	v_fma_f32 v108, v109, v184, v191                           // 0000000083C0: D1CB006C 06FF716D
	v_fma_f32 v90, v90, v184, v191                             // 0000000083C8: D1CB005A 06FF715A
	v_fma_f32 v109, v110, v184, v191                           // 0000000083D0: D1CB006D 06FF716E
	v_fma_f32 v94, v94, v184, v191                             // 0000000083D8: D1CB005E 06FF715E
	v_fma_f32 v5, v131, v184, v192                             // 0000000083E0: D1CB0005 07037183
	v_fma_f32 v9, v115, v184, v192                             // 0000000083E8: D1CB0009 07037173
	v_fma_f32 v13, v135, v184, v192                            // 0000000083F0: D1CB000D 07037187
	v_fma_f32 v114, v119, v184, v192                           // 0000000083F8: D1CB0072 07037177
	v_fma_f32 v118, v139, v184, v192                           // 000000008400: D1CB0076 0703718B
	v_fma_f32 v130, v143, v184, v192                           // 000000008408: D1CB0082 0703718F
	v_fma_f32 v127, v127, v184, v192                           // 000000008410: D1CB007F 0703717F
	v_fma_f32 v99, v99, v184, v191                             // 000000008418: D1CB0063 06FF7163
	v_fma_f32 v83, v83, v184, v191                             // 000000008420: D1CB0053 06FF7153
	v_fma_f32 v87, v87, v184, v191                             // 000000008428: D1CB0057 06FF7157
	v_fma_f32 v91, v91, v184, v191                             // 000000008430: D1CB005B 06FF715B
	v_fma_f32 v110, v111, v184, v191                           // 000000008438: D1CB006E 06FF716F
	v_fma_f32 v111, v112, v184, v191                           // 000000008440: D1CB006F 06FF7170
	v_fma_f32 v112, v113, v184, v191                           // 000000008448: D1CB0070 06FF7171
	v_fma_f32 v95, v95, v184, v191                             // 000000008450: D1CB005F 06FF715F
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 000000008458: D1DD0004 02010104
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 000000008460: D1DD0008 02010108
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 000000008468: D1DD000C 0201010C
	v_cvt_pk_u8_f32 v17, v17, 0, 0                             // 000000008470: D1DD0011 02010111
	v_cvt_pk_u8_f32 v113, v117, 0, 0                           // 000000008478: D1DD0071 02010175
	v_cvt_pk_u8_f32 v117, v121, 0, 0                           // 000000008480: D1DD0075 02010179
	v_cvt_pk_u8_f32 v121, v125, 0, 0                           // 000000008488: D1DD0079 0201017D
	v_cvt_pk_u8_f32 v125, v126, 0, 0                           // 000000008490: D1DD007D 0201017E
	v_cvt_pk_u8_f32 v98, v98, 0, 0                             // 000000008498: D1DD0062 02010162
	v_cvt_pk_u8_f32 v82, v82, 0, 0                             // 0000000084A0: D1DD0052 02010152
	v_cvt_pk_u8_f32 v85, v85, 0, 0                             // 0000000084A8: D1DD0055 02010155
	v_cvt_pk_u8_f32 v86, v86, 0, 0                             // 0000000084B0: D1DD0056 02010156
	v_cvt_pk_u8_f32 v89, v89, 0, 0                             // 0000000084B8: D1DD0059 02010159
	v_cvt_pk_u8_f32 v90, v90, 0, 0                             // 0000000084C0: D1DD005A 0201015A
	v_cvt_pk_u8_f32 v109, v109, 0, 0                           // 0000000084C8: D1DD006D 0201016D
	v_cvt_pk_u8_f32 v94, v94, 0, 0                             // 0000000084D0: D1DD005E 0201015E
	v_fma_f32 v6, v132, v184, v192                             // 0000000084D8: D1CB0006 07037184
	v_fma_f32 v14, v136, v184, v192                            // 0000000084E0: D1CB000E 07037188
	v_fma_f32 v115, v120, v184, v192                           // 0000000084E8: D1CB0073 07037178
	v_fma_f32 v119, v140, v184, v192                           // 0000000084F0: D1CB0077 0703718C
	v_fma_f32 v131, v144, v184, v192                           // 0000000084F8: D1CB0083 07037190
	v_fma_f32 v128, v128, v184, v192                           // 000000008500: D1CB0080 07037180
	v_fma_f32 v100, v100, v184, v191                           // 000000008508: D1CB0064 06FF7164
	v_fma_f32 v84, v84, v184, v191                             // 000000008510: D1CB0054 06FF7154
	v_fma_f32 v88, v88, v184, v191                             // 000000008518: D1CB0058 06FF7158
	v_fma_f32 v92, v92, v184, v191                             // 000000008520: D1CB005C 06FF715C
	v_fma_f32 v96, v96, v184, v191                             // 000000008528: D1CB0060 06FF7160
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 000000008530: D1DD0004 04110305
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 000000008538: D1DD0005 04210309
	v_cvt_pk_u8_f32 v8, v13, 1, v12                            // 000000008540: D1DD0008 0431030D
	v_cvt_pk_u8_f32 v9, v114, 1, v17                           // 000000008548: D1DD0009 04450372
	v_cvt_pk_u8_f32 v12, v118, 1, v113                         // 000000008550: D1DD000C 05C50376
	v_cvt_pk_u8_f32 v13, v122, 1, v117                         // 000000008558: D1DD000D 05D5037A
	v_cvt_pk_u8_f32 v17, v130, 1, v121                         // 000000008560: D1DD0011 05E50382
	v_cvt_pk_u8_f32 v113, v127, 1, v125                        // 000000008568: D1DD0071 05F5037F
	v_cvt_pk_u8_f32 v98, v99, 1, v98                           // 000000008570: D1DD0062 05890363
	v_cvt_pk_u8_f32 v82, v83, 1, v82                           // 000000008578: D1DD0052 05490353
	v_cvt_pk_u8_f32 v83, v102, 1, v85                          // 000000008580: D1DD0053 05550366
	v_cvt_pk_u8_f32 v85, v87, 1, v86                           // 000000008588: D1DD0055 05590357
	v_cvt_pk_u8_f32 v86, v106, 1, v89                          // 000000008590: D1DD0056 0565036A
	v_cvt_pk_u8_f32 v87, v91, 1, v90                           // 000000008598: D1DD0057 0569035B
	v_cvt_pk_u8_f32 v89, v110, 1, v109                         // 0000000085A0: D1DD0059 05B5036E
	v_cvt_pk_u8_f32 v90, v95, 1, v94                           // 0000000085A8: D1DD005A 0579035F
	v_fma_f32 v15, v137, v184, v192                            // 0000000085B0: D1CB000F 07037189
	v_fma_f32 v120, v141, v184, v192                           // 0000000085B8: D1CB0078 0703718D
	v_fma_f32 v132, v145, v184, v192                           // 0000000085C0: D1CB0084 07037191
	v_fma_f32 v129, v129, v184, v192                           // 0000000085C8: D1CB0081 07037181
	v_fma_f32 v101, v101, v184, v191                           // 0000000085D0: D1CB0065 06FF7165
	v_fma_f32 v93, v93, v184, v191                             // 0000000085D8: D1CB005D 06FF715D
	v_fma_f32 v97, v97, v184, v191                             // 0000000085E0: D1CB0061 06FF7161
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 0000000085E8: D1DD0004 04110506
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 0000000085F0: D1DD0005 0415050A
	v_cvt_pk_u8_f32 v6, v14, 2, v8                             // 0000000085F8: D1DD0006 0421050E
	v_cvt_pk_u8_f32 v8, v115, 2, v9                            // 000000008600: D1DD0008 04250573
	v_cvt_pk_u8_f32 v9, v119, 2, v12                           // 000000008608: D1DD0009 04310577
	v_cvt_pk_u8_f32 v10, v123, 2, v13                          // 000000008610: D1DD000A 0435057B
	v_cvt_pk_u8_f32 v12, v131, 2, v17                          // 000000008618: D1DD000C 04450583
	v_cvt_pk_u8_f32 v13, v128, 2, v113                         // 000000008620: D1DD000D 05C50580
	v_cvt_pk_u8_f32 v14, v100, 2, v98                          // 000000008628: D1DD000E 05890564
	v_cvt_pk_u8_f32 v17, v84, 2, v82                           // 000000008630: D1DD0011 05490554
	v_cvt_pk_u8_f32 v91, v103, 2, v83                          // 000000008638: D1DD005B 054D0567
	v_cvt_pk_u8_f32 v94, v88, 2, v85                           // 000000008640: D1DD005E 05550558
	v_cvt_pk_u8_f32 v95, v107, 2, v86                          // 000000008648: D1DD005F 0559056B
	v_cvt_pk_u8_f32 v92, v92, 2, v87                           // 000000008650: D1DD005C 055D055C
	v_cvt_pk_u8_f32 v98, v111, 2, v89                          // 000000008658: D1DD0062 0565056F
	v_cvt_pk_u8_f32 v90, v96, 2, v90                           // 000000008660: D1DD005A 05690560
	s_mov_b32 s53, 0                                           // 000000008668: BEB50080
	s_mov_b32 s67, 1                                           // 00000000866C: BEC30081
	v_cvt_pk_u8_f32 v82, v7, 3, v4                             // 000000008670: D1DD0052 04110707
	v_cvt_pk_u8_f32 v86, v11, 3, v5                            // 000000008678: D1DD0056 0415070B
	v_cvt_pk_u8_f32 v83, v15, 3, v6                            // 000000008680: D1DD0053 0419070F
	v_cvt_pk_u8_f32 v87, v116, 3, v8                           // 000000008688: D1DD0057 04210774
	v_cvt_pk_u8_f32 v84, v120, 3, v9                           // 000000008690: D1DD0054 04250778
	v_cvt_pk_u8_f32 v88, v124, 3, v10                          // 000000008698: D1DD0058 0429077C
	v_cvt_pk_u8_f32 v85, v132, 3, v12                          // 0000000086A0: D1DD0055 04310784
	v_cvt_pk_u8_f32 v89, v129, 3, v13                          // 0000000086A8: D1DD0059 04350781
	v_cvt_pk_u8_f32 v4, v101, 3, v14                           // 0000000086B0: D1DD0004 04390765
	v_cvt_pk_u8_f32 v8, v133, 3, v17                           // 0000000086B8: D1DD0008 04450785
	v_cvt_pk_u8_f32 v5, v104, 3, v91                           // 0000000086C0: D1DD0005 056D0768
	v_cvt_pk_u8_f32 v9, v105, 3, v94                           // 0000000086C8: D1DD0009 05790769
	v_cvt_pk_u8_f32 v6, v108, 3, v95                           // 0000000086D0: D1DD0006 057D076C
	v_cvt_pk_u8_f32 v10, v93, 3, v92                           // 0000000086D8: D1DD000A 0571075D
	v_cvt_pk_u8_f32 v7, v112, 3, v98                           // 0000000086E0: D1DD0007 05890770
	v_cvt_pk_u8_f32 v11, v97, 3, v90                           // 0000000086E8: D1DD000B 05690761
	s_waitcnt vmcnt(0)                                         // 0000000086F0: BF8C0F70
	s_barrier                                                  // 0000000086F4: BF8A0000
	s_add_u32 s30, s65, s62                                    // 0000000086F8: 801E3E41
	s_and_b32 s62, s30, 3                                      // 0000000086FC: 863E831E
	s_cmp_lg_u32 s52, 0                                        // 000000008700: BF078034
	s_cselect_b64 s[30:31], -1, 0                              // 000000008704: 859E80C1
	s_not_b32 s48, s16                                         // 000000008708: BEB00410
	s_add_u32 s48, s4, s48                                     // 00000000870C: 80303004
	s_cmp_eq_u32 s16, s48                                      // 000000008710: BF063010
	s_cselect_b64 s[48:49], -1, 0                              // 000000008714: 85B080C1
	s_or_b64 s[48:49], s[30:31], s[48:49]                      // 000000008718: 87B0301E
	s_and_b64 s[30:31], s[48:49], exec                         // 00000000871C: 869E7E30
	s_cbranch_scc0 7                                           // 000000008720: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6c40>
	s_add_u32 s2, s2, s14                                      // 000000008724: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000008728: BF093302
	s_cbranch_scc1 800                                         // 00000000872C: BF850320 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x78b0>
	s_lshl_b32 s15, s2, 5                                      // 000000008730: 8E0F8502
	s_load_dwordx8 s[16:23], s[46:47], s15 offset:0x0          // 000000008734: C00E4417 1E000000
	s_mov_b32 s67, 0                                           // 00000000873C: BEC30080
	s_waitcnt lgkmcnt(0)                                       // 000000008740: BF8CC07F
	s_add_u32 s24, s38, s20                                    // 000000008744: 80181426
	s_addc_u32 s25, s39, s21                                   // 000000008748: 82191527
	s_add_u32 s28, s40, s20                                    // 00000000874C: 801C1428
	s_addc_u32 s29, s41, s21                                   // 000000008750: 821D1529
	s_not_b32 s15, s16                                         // 000000008754: BE8F0410
	s_add_u32 s15, s4, s15                                     // 000000008758: 800F0F04
	s_and_b64 s[48:49], s[48:49], exec                         // 00000000875C: 86B07E30
	s_cselect_b32 s15, s15, s16                                // 000000008760: 850F100F
	s_lshl_b32 s31, s15, 5                                     // 000000008764: 8E1F850F
	s_add_u32 s31, s31, 32                                     // 000000008768: 801FA01F
	s_mul_i32 s31, s31, s5                                     // 00000000876C: 921F051F
	s_addk_i32 s31, 0x60                                       // 000000008770: B71F0060
	s_lshr_b32 s31, s31, 7                                     // 000000008774: 8F1F871F
	s_min_u32 s65, s61, s31                                    // 000000008778: 83C11F3D
	s_mov_b32 s27, 0x110000                                    // 00000000877C: BE9B00FF 00110000
	s_and_b64 s[48:49], s[34:35], exec                         // 000000008784: 86B07E22
	s_cbranch_scc0 72                                          // 000000008788: BF840048 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6dac>
	s_lshl_b32 s48, s62, 14                                    // 00000000878C: 8E308E3E
	s_or_b32 s69, s56, s48                                     // 000000008790: 87453038
	s_add_u32 m0, s69, 0                                       // 000000008794: 807C8045
	s_lshl_b32 s49, s8, 5                                      // 000000008798: 8E318508
	buffer_load_dwordx4 v176, s[24:27], 0 offen lds            // 00000000879C: E05D1000 800600B0
	s_add_u32 m0, s69, 0x1000                                  // 0000000087A4: 807CFF45 00001000
	s_lshl_b32 s52, s8, 6                                      // 0000000087AC: 8E348608
	buffer_load_dwordx4 v176, s[24:27], s49 offen lds          // 0000000087B0: E05D1000 310600B0
	s_add_u32 m0, s69, 0x2000                                  // 0000000087B8: 807CFF45 00002000
	s_mul_i32 s53, s8, 0x60                                    // 0000000087C0: 9235FF08 00000060
	buffer_load_dwordx4 v176, s[24:27], s52 offen lds          // 0000000087C8: E05D1000 340600B0
	s_add_u32 m0, s69, 0x3000                                  // 0000000087D0: 807CFF45 00003000
	s_mov_b32 s30, s26                                         // 0000000087D8: BE9E001A
	s_mov_b32 s31, s27                                         // 0000000087DC: BE9F001B
	s_add_u32 s70, s57, s48                                    // 0000000087E0: 80463039
	buffer_load_dwordx4 v176, s[24:27], s53 offen lds          // 0000000087E4: E05D1000 350600B0
	s_add_u32 m0, s70, 0                                       // 0000000087EC: 807C8046
	s_lshl_b32 s66, s8, 2                                      // 0000000087F0: 8E428208
	buffer_load_dwordx4 v178, s[28:31], 0 offen lds            // 0000000087F4: E05D1000 800700B2
	s_add_u32 m0, s70, 0x1000                                  // 0000000087FC: 807CFF46 00001000
	s_mul_i32 s68, s8, 0x44                                    // 000000008804: 9244FF08 00000044
	buffer_load_dwordx4 v178, s[28:31], s52 offen lds          // 00000000880C: E05D1000 340700B2
	s_add_u32 m0, s70, 0x2000                                  // 000000008814: 807CFF46 00002000
	s_nop 0                                                    // 00000000881C: BF800000
	buffer_load_dwordx4 v178, s[28:31], s66 offen lds          // 000000008820: E05D1000 420700B2
	s_add_u32 m0, s70, 0x3000                                  // 000000008828: 807CFF46 00003000
	s_cmp_lt_u32 s65, 2                                        // 000000008830: BF0A8241
	buffer_load_dwordx4 v178, s[28:31], s68 offen lds          // 000000008834: E05D1000 440700B2
	s_cbranch_scc1 27                                          // 00000000883C: BF85001B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6dac>
	s_addk_i32 s48, 0x4000                                     // 000000008840: B7304000
	s_and_b32 s48, s48, 0xc000                                 // 000000008844: 8630FF30 0000C000
	s_or_b32 s48, s56, s48                                     // 00000000884C: 87303038
	s_add_u32 m0, s48, 0                                       // 000000008850: 807C8030
	s_mul_i32 s30, s8, 0xa0                                    // 000000008854: 921EFF08 000000A0
	buffer_load_dwordx4 v176, s[24:27], s58 offen lds          // 00000000885C: E05D1000 3A0600B0
	s_add_u32 m0, s48, 0x1000                                  // 000000008864: 807CFF30 00001000
	s_mul_i32 s31, s8, 0xc0                                    // 00000000886C: 921FFF08 000000C0
	s_mul_i32 s49, s8, 0xe0                                    // 000000008874: 9231FF08 000000E0
	buffer_load_dwordx4 v176, s[24:27], s30 offen lds          // 00000000887C: E05D1000 1E0600B0
	s_add_u32 m0, s48, 0x2000                                  // 000000008884: 807CFF30 00002000
	s_nop 0                                                    // 00000000888C: BF800000
	buffer_load_dwordx4 v176, s[24:27], s31 offen lds          // 000000008890: E05D1000 1F0600B0
	s_add_u32 m0, s48, 0x3000                                  // 000000008898: 807CFF30 00003000
	s_nop 0                                                    // 0000000088A0: BF800000
	buffer_load_dwordx4 v176, s[24:27], s49 offen lds          // 0000000088A4: E05D1000 310600B0
	s_add_u32 s30, s36, s18                                    // 0000000088AC: 801E1224
	s_addc_u32 s31, s37, s19                                   // 0000000088B0: 821F1325
	s_add_u32 s52, s30, s60                                    // 0000000088B4: 80343C1E
	s_addc_u32 s53, s31, 0                                     // 0000000088B8: 8235801F
	s_add_u32 s30, s42, s22                                    // 0000000088BC: 801E162A
	s_addc_u32 s31, s43, s23                                   // 0000000088C0: 821F172B
	s_add_u32 s30, s30, s63                                    // 0000000088C4: 801E3F1E
	s_addc_u32 s31, s31, 0                                     // 0000000088C8: 821F801F
	s_add_u32 s48, s17, s64                                    // 0000000088CC: 80304011
	s_lshl_b32 s48, s48, 2                                     // 0000000088D0: 8E308230
	s_add_u32 s66, s44, s48                                    // 0000000088D4: 8042302C
	s_addc_u32 s68, s45, 0                                     // 0000000088D8: 8244802D
	s_mul_i32 s15, s15, s5                                     // 0000000088DC: 920F050F
	s_and_b64 s[48:49], s[12:13], exec                         // 0000000088E0: 86B07E0C
	s_cselect_b32 s49, 0, s68                                  // 0000000088E4: 85314480
	s_cselect_b32 s48, 0, s66                                  // 0000000088E8: 85304280
	s_add_u32 s15, s15, s6                                     // 0000000088EC: 800F060F
	s_lshl_b32 s66, s15, 5                                     // 0000000088F0: 8E42850F
	v_or_b32_e32 v12, s66, v170                                // 0000000088F4: 28195442
	s_bfe_u32 s15, s15, 0x190002                               // 0000000088F8: 928FFF0F 00190002
	v_mul_lo_u32 v12, v12, s7                                  // 000000008900: D285000C 00000F0C
	v_add_u32_e32 v12, v180, v12                               // 000000008908: 681819B4
	global_load_dwordx4 v[228:231], v12, s[52:53]              // 00000000890C: DC5C8000 E434000C
	global_load_dwordx4 v[232:235], v12, s[52:53] offset:16    // 000000008914: DC5C8010 E834000C
	global_load_dwordx4 v[236:239], v12, s[52:53] offset:64    // 00000000891C: DC5C8040 EC34000C
	global_load_dwordx4 v[240:243], v12, s[52:53] offset:80    // 000000008924: DC5C8050 F034000C
	s_mov_b32 s53, 1                                           // 00000000892C: BEB50081
	s_branch 675                                               // 000000008930: BF8202A3 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x78c0>
	s_add_u32 s30, s53, s62                                    // 000000008934: 801E3E35
	s_lshl_b32 s30, s30, 14                                    // 000000008938: 8E1E8E1E
	s_and_b32 s30, s30, 0xc000                                 // 00000000893C: 861EFF1E 0000C000
	v_add_u32_e32 v16, s30, v185                               // 000000008944: 6821721E
	s_setprio 0                                                // 000000008948: BF8F0000
	v_fma_f32 v4, v130, v184, v192                             // 00000000894C: D1CB0004 07037182
	v_fma_f32 v7, v133, v184, v192                             // 000000008954: D1CB0007 07037185
	v_fma_f32 v8, v114, v184, v192                             // 00000000895C: D1CB0008 07037172
	v_fma_f32 v10, v116, v184, v192                            // 000000008964: D1CB000A 07037174
	v_fma_f32 v11, v117, v184, v192                            // 00000000896C: D1CB000B 07037175
	v_fma_f32 v12, v134, v184, v192                            // 000000008974: D1CB000C 07037186
	v_fma_f32 v17, v118, v184, v192                            // 00000000897C: D1CB0011 07037176
	v_fma_f32 v116, v121, v184, v192                           // 000000008984: D1CB0074 07037179
	v_fma_f32 v117, v138, v184, v192                           // 00000000898C: D1CB0075 0703718A
	v_fma_f32 v121, v122, v184, v192                           // 000000008994: D1CB0079 0703717A
	v_fma_f32 v122, v123, v184, v192                           // 00000000899C: D1CB007A 0703717B
	v_fma_f32 v123, v124, v184, v192                           // 0000000089A4: D1CB007B 0703717C
	v_fma_f32 v124, v125, v184, v192                           // 0000000089AC: D1CB007C 0703717D
	v_fma_f32 v125, v142, v184, v192                           // 0000000089B4: D1CB007D 0703718E
	v_fma_f32 v126, v126, v184, v192                           // 0000000089BC: D1CB007E 0703717E
	v_fma_f32 v98, v98, v184, v191                             // 0000000089C4: D1CB0062 06FF7162
	v_fma_f32 v82, v82, v184, v191                             // 0000000089CC: D1CB0052 06FF7152
	v_fma_f32 v133, v85, v184, v191                            // 0000000089D4: D1CB0085 06FF7155
	v_fma_f32 v85, v102, v184, v191                            // 0000000089DC: D1CB0055 06FF7166
	v_fma_f32 v102, v103, v184, v191                           // 0000000089E4: D1CB0066 06FF7167
	v_fma_f32 v103, v104, v184, v191                           // 0000000089EC: D1CB0067 06FF7168
	v_fma_f32 v104, v105, v184, v191                           // 0000000089F4: D1CB0068 06FF7169
	v_fma_f32 v86, v86, v184, v191                             // 0000000089FC: D1CB0056 06FF7156
	v_fma_f32 v105, v89, v184, v191                            // 000000008A04: D1CB0069 06FF7159
	v_fma_f32 v89, v106, v184, v191                            // 000000008A0C: D1CB0059 06FF716A
	v_fma_f32 v106, v107, v184, v191                           // 000000008A14: D1CB006A 06FF716B
	v_fma_f32 v107, v108, v184, v191                           // 000000008A1C: D1CB006B 06FF716C
	v_fma_f32 v108, v109, v184, v191                           // 000000008A24: D1CB006C 06FF716D
	v_fma_f32 v90, v90, v184, v191                             // 000000008A2C: D1CB005A 06FF715A
	v_fma_f32 v109, v110, v184, v191                           // 000000008A34: D1CB006D 06FF716E
	v_fma_f32 v94, v94, v184, v191                             // 000000008A3C: D1CB005E 06FF715E
	v_fma_f32 v5, v131, v184, v192                             // 000000008A44: D1CB0005 07037183
	v_fma_f32 v9, v115, v184, v192                             // 000000008A4C: D1CB0009 07037173
	v_fma_f32 v13, v135, v184, v192                            // 000000008A54: D1CB000D 07037187
	v_fma_f32 v114, v119, v184, v192                           // 000000008A5C: D1CB0072 07037177
	v_fma_f32 v118, v139, v184, v192                           // 000000008A64: D1CB0076 0703718B
	v_fma_f32 v130, v143, v184, v192                           // 000000008A6C: D1CB0082 0703718F
	v_fma_f32 v127, v127, v184, v192                           // 000000008A74: D1CB007F 0703717F
	v_fma_f32 v99, v99, v184, v191                             // 000000008A7C: D1CB0063 06FF7163
	v_fma_f32 v83, v83, v184, v191                             // 000000008A84: D1CB0053 06FF7153
	v_fma_f32 v87, v87, v184, v191                             // 000000008A8C: D1CB0057 06FF7157
	v_fma_f32 v91, v91, v184, v191                             // 000000008A94: D1CB005B 06FF715B
	v_fma_f32 v110, v111, v184, v191                           // 000000008A9C: D1CB006E 06FF716F
	v_fma_f32 v111, v112, v184, v191                           // 000000008AA4: D1CB006F 06FF7170
	v_fma_f32 v112, v113, v184, v191                           // 000000008AAC: D1CB0070 06FF7171
	v_fma_f32 v95, v95, v184, v191                             // 000000008AB4: D1CB005F 06FF715F
	v_cvt_pk_u8_f32 v4, v4, 0, 0                               // 000000008ABC: D1DD0004 02010104
	v_cvt_pk_u8_f32 v8, v8, 0, 0                               // 000000008AC4: D1DD0008 02010108
	v_cvt_pk_u8_f32 v12, v12, 0, 0                             // 000000008ACC: D1DD000C 0201010C
	v_cvt_pk_u8_f32 v17, v17, 0, 0                             // 000000008AD4: D1DD0011 02010111
	v_cvt_pk_u8_f32 v113, v117, 0, 0                           // 000000008ADC: D1DD0071 02010175
	v_cvt_pk_u8_f32 v117, v121, 0, 0                           // 000000008AE4: D1DD0075 02010179
	v_cvt_pk_u8_f32 v121, v125, 0, 0                           // 000000008AEC: D1DD0079 0201017D
	v_cvt_pk_u8_f32 v125, v126, 0, 0                           // 000000008AF4: D1DD007D 0201017E
	v_cvt_pk_u8_f32 v98, v98, 0, 0                             // 000000008AFC: D1DD0062 02010162
	v_cvt_pk_u8_f32 v82, v82, 0, 0                             // 000000008B04: D1DD0052 02010152
	v_cvt_pk_u8_f32 v85, v85, 0, 0                             // 000000008B0C: D1DD0055 02010155
	v_cvt_pk_u8_f32 v86, v86, 0, 0                             // 000000008B14: D1DD0056 02010156
	v_cvt_pk_u8_f32 v89, v89, 0, 0                             // 000000008B1C: D1DD0059 02010159
	v_cvt_pk_u8_f32 v90, v90, 0, 0                             // 000000008B24: D1DD005A 0201015A
	v_cvt_pk_u8_f32 v109, v109, 0, 0                           // 000000008B2C: D1DD006D 0201016D
	v_cvt_pk_u8_f32 v94, v94, 0, 0                             // 000000008B34: D1DD005E 0201015E
	v_fma_f32 v6, v132, v184, v192                             // 000000008B3C: D1CB0006 07037184
	v_fma_f32 v14, v136, v184, v192                            // 000000008B44: D1CB000E 07037188
	v_fma_f32 v115, v120, v184, v192                           // 000000008B4C: D1CB0073 07037178
	v_fma_f32 v119, v140, v184, v192                           // 000000008B54: D1CB0077 0703718C
	v_fma_f32 v131, v144, v184, v192                           // 000000008B5C: D1CB0083 07037190
	v_fma_f32 v128, v128, v184, v192                           // 000000008B64: D1CB0080 07037180
	v_fma_f32 v100, v100, v184, v191                           // 000000008B6C: D1CB0064 06FF7164
	v_fma_f32 v84, v84, v184, v191                             // 000000008B74: D1CB0054 06FF7154
	v_fma_f32 v88, v88, v184, v191                             // 000000008B7C: D1CB0058 06FF7158
	v_fma_f32 v92, v92, v184, v191                             // 000000008B84: D1CB005C 06FF715C
	v_fma_f32 v96, v96, v184, v191                             // 000000008B8C: D1CB0060 06FF7160
	v_cvt_pk_u8_f32 v4, v5, 1, v4                              // 000000008B94: D1DD0004 04110305
	v_cvt_pk_u8_f32 v5, v9, 1, v8                              // 000000008B9C: D1DD0005 04210309
	v_cvt_pk_u8_f32 v8, v13, 1, v12                            // 000000008BA4: D1DD0008 0431030D
	v_cvt_pk_u8_f32 v9, v114, 1, v17                           // 000000008BAC: D1DD0009 04450372
	v_cvt_pk_u8_f32 v12, v118, 1, v113                         // 000000008BB4: D1DD000C 05C50376
	v_cvt_pk_u8_f32 v13, v122, 1, v117                         // 000000008BBC: D1DD000D 05D5037A
	v_cvt_pk_u8_f32 v17, v130, 1, v121                         // 000000008BC4: D1DD0011 05E50382
	v_cvt_pk_u8_f32 v113, v127, 1, v125                        // 000000008BCC: D1DD0071 05F5037F
	v_cvt_pk_u8_f32 v98, v99, 1, v98                           // 000000008BD4: D1DD0062 05890363
	v_cvt_pk_u8_f32 v82, v83, 1, v82                           // 000000008BDC: D1DD0052 05490353
	v_cvt_pk_u8_f32 v83, v102, 1, v85                          // 000000008BE4: D1DD0053 05550366
	v_cvt_pk_u8_f32 v85, v87, 1, v86                           // 000000008BEC: D1DD0055 05590357
	v_cvt_pk_u8_f32 v86, v106, 1, v89                          // 000000008BF4: D1DD0056 0565036A
	v_cvt_pk_u8_f32 v87, v91, 1, v90                           // 000000008BFC: D1DD0057 0569035B
	v_cvt_pk_u8_f32 v89, v110, 1, v109                         // 000000008C04: D1DD0059 05B5036E
	v_cvt_pk_u8_f32 v90, v95, 1, v94                           // 000000008C0C: D1DD005A 0579035F
	v_fma_f32 v15, v137, v184, v192                            // 000000008C14: D1CB000F 07037189
	v_fma_f32 v120, v141, v184, v192                           // 000000008C1C: D1CB0078 0703718D
	v_fma_f32 v132, v145, v184, v192                           // 000000008C24: D1CB0084 07037191
	v_fma_f32 v129, v129, v184, v192                           // 000000008C2C: D1CB0081 07037181
	v_fma_f32 v101, v101, v184, v191                           // 000000008C34: D1CB0065 06FF7165
	v_fma_f32 v93, v93, v184, v191                             // 000000008C3C: D1CB005D 06FF715D
	v_fma_f32 v97, v97, v184, v191                             // 000000008C44: D1CB0061 06FF7161
	v_cvt_pk_u8_f32 v4, v6, 2, v4                              // 000000008C4C: D1DD0004 04110506
	v_cvt_pk_u8_f32 v5, v10, 2, v5                             // 000000008C54: D1DD0005 0415050A
	v_cvt_pk_u8_f32 v6, v14, 2, v8                             // 000000008C5C: D1DD0006 0421050E
	v_cvt_pk_u8_f32 v8, v115, 2, v9                            // 000000008C64: D1DD0008 04250573
	v_cvt_pk_u8_f32 v9, v119, 2, v12                           // 000000008C6C: D1DD0009 04310577
	v_cvt_pk_u8_f32 v10, v123, 2, v13                          // 000000008C74: D1DD000A 0435057B
	v_cvt_pk_u8_f32 v12, v131, 2, v17                          // 000000008C7C: D1DD000C 04450583
	v_cvt_pk_u8_f32 v13, v128, 2, v113                         // 000000008C84: D1DD000D 05C50580
	v_cvt_pk_u8_f32 v14, v100, 2, v98                          // 000000008C8C: D1DD000E 05890564
	v_cvt_pk_u8_f32 v17, v84, 2, v82                           // 000000008C94: D1DD0011 05490554
	v_cvt_pk_u8_f32 v91, v103, 2, v83                          // 000000008C9C: D1DD005B 054D0567
	v_cvt_pk_u8_f32 v94, v88, 2, v85                           // 000000008CA4: D1DD005E 05550558
	v_cvt_pk_u8_f32 v95, v107, 2, v86                          // 000000008CAC: D1DD005F 0559056B
	v_cvt_pk_u8_f32 v92, v92, 2, v87                           // 000000008CB4: D1DD005C 055D055C
	v_cvt_pk_u8_f32 v98, v111, 2, v89                          // 000000008CBC: D1DD0062 0565056F
	v_cvt_pk_u8_f32 v90, v96, 2, v90                           // 000000008CC4: D1DD005A 05690560
	s_mov_b32 s53, 0                                           // 000000008CCC: BEB50080
	s_mov_b32 s67, 1                                           // 000000008CD0: BEC30081
	v_cvt_pk_u8_f32 v82, v7, 3, v4                             // 000000008CD4: D1DD0052 04110707
	v_cvt_pk_u8_f32 v86, v11, 3, v5                            // 000000008CDC: D1DD0056 0415070B
	v_cvt_pk_u8_f32 v83, v15, 3, v6                            // 000000008CE4: D1DD0053 0419070F
	v_cvt_pk_u8_f32 v87, v116, 3, v8                           // 000000008CEC: D1DD0057 04210774
	v_cvt_pk_u8_f32 v84, v120, 3, v9                           // 000000008CF4: D1DD0054 04250778
	v_cvt_pk_u8_f32 v88, v124, 3, v10                          // 000000008CFC: D1DD0058 0429077C
	v_cvt_pk_u8_f32 v85, v132, 3, v12                          // 000000008D04: D1DD0055 04310784
	v_cvt_pk_u8_f32 v89, v129, 3, v13                          // 000000008D0C: D1DD0059 04350781
	v_cvt_pk_u8_f32 v4, v101, 3, v14                           // 000000008D14: D1DD0004 04390765
	v_cvt_pk_u8_f32 v8, v133, 3, v17                           // 000000008D1C: D1DD0008 04450785
	v_cvt_pk_u8_f32 v5, v104, 3, v91                           // 000000008D24: D1DD0005 056D0768
	v_cvt_pk_u8_f32 v9, v105, 3, v94                           // 000000008D2C: D1DD0009 05790769
	v_cvt_pk_u8_f32 v6, v108, 3, v95                           // 000000008D34: D1DD0006 057D076C
	v_cvt_pk_u8_f32 v10, v93, 3, v92                           // 000000008D3C: D1DD000A 0571075D
	v_cvt_pk_u8_f32 v7, v112, 3, v98                           // 000000008D44: D1DD0007 05890770
	v_cvt_pk_u8_f32 v11, v97, 3, v90                           // 000000008D4C: D1DD000B 05690761
	s_waitcnt vmcnt(0)                                         // 000000008D54: BF8C0F70
	s_barrier                                                  // 000000008D58: BF8A0000
	s_add_u32 s30, s65, s62                                    // 000000008D5C: 801E3E41
	s_and_b32 s62, s30, 3                                      // 000000008D60: 863E831E
	s_cmp_lg_u32 s52, 0                                        // 000000008D64: BF078034
	s_cselect_b64 s[30:31], -1, 0                              // 000000008D68: 859E80C1
	s_not_b32 s48, s16                                         // 000000008D6C: BEB00410
	s_add_u32 s48, s4, s48                                     // 000000008D70: 80303004
	s_cmp_eq_u32 s16, s48                                      // 000000008D74: BF063010
	s_cselect_b64 s[48:49], -1, 0                              // 000000008D78: 85B080C1
	s_or_b64 s[48:49], s[30:31], s[48:49]                      // 000000008D7C: 87B0301E
	s_and_b64 s[30:31], s[48:49], exec                         // 000000008D80: 869E7E30
	s_cbranch_scc0 7                                           // 000000008D84: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x72a4>
	s_add_u32 s2, s2, s14                                      // 000000008D88: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000008D8C: BF093302
	s_cbranch_scc1 513                                         // 000000008D90: BF850201 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7a98>
	s_lshl_b32 s15, s2, 5                                      // 000000008D94: 8E0F8502
	s_load_dwordx8 s[16:23], s[46:47], s15 offset:0x0          // 000000008D98: C00E4417 1E000000
	s_mov_b32 s67, 0                                           // 000000008DA0: BEC30080
	s_waitcnt lgkmcnt(0)                                       // 000000008DA4: BF8CC07F
	s_add_u32 s24, s38, s20                                    // 000000008DA8: 80181426
	s_addc_u32 s25, s39, s21                                   // 000000008DAC: 82191527
	s_add_u32 s28, s40, s20                                    // 000000008DB0: 801C1428
	s_addc_u32 s29, s41, s21                                   // 000000008DB4: 821D1529
	s_not_b32 s15, s16                                         // 000000008DB8: BE8F0410
	s_add_u32 s15, s4, s15                                     // 000000008DBC: 800F0F04
	s_and_b64 s[48:49], s[48:49], exec                         // 000000008DC0: 86B07E30
	s_cselect_b32 s15, s15, s16                                // 000000008DC4: 850F100F
	s_lshl_b32 s31, s15, 5                                     // 000000008DC8: 8E1F850F
	s_add_u32 s31, s31, 32                                     // 000000008DCC: 801FA01F
	s_mul_i32 s31, s31, s5                                     // 000000008DD0: 921F051F
	s_addk_i32 s31, 0x60                                       // 000000008DD4: B71F0060
	s_lshr_b32 s31, s31, 7                                     // 000000008DD8: 8F1F871F
	s_min_u32 s65, s61, s31                                    // 000000008DDC: 83C11F3D
	s_mov_b32 s27, 0x110000                                    // 000000008DE0: BE9B00FF 00110000
	s_and_b64 s[48:49], s[34:35], exec                         // 000000008DE8: 86B07E22
	s_cbranch_scc0 72                                          // 000000008DEC: BF840048 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7410>
	s_lshl_b32 s48, s62, 14                                    // 000000008DF0: 8E308E3E
	s_or_b32 s69, s56, s48                                     // 000000008DF4: 87453038
	s_add_u32 m0, s69, 0                                       // 000000008DF8: 807C8045
	s_lshl_b32 s49, s8, 5                                      // 000000008DFC: 8E318508
	buffer_load_dwordx4 v176, s[24:27], 0 offen lds            // 000000008E00: E05D1000 800600B0
	s_add_u32 m0, s69, 0x1000                                  // 000000008E08: 807CFF45 00001000
	s_lshl_b32 s52, s8, 6                                      // 000000008E10: 8E348608
	buffer_load_dwordx4 v176, s[24:27], s49 offen lds          // 000000008E14: E05D1000 310600B0
	s_add_u32 m0, s69, 0x2000                                  // 000000008E1C: 807CFF45 00002000
	s_mul_i32 s53, s8, 0x60                                    // 000000008E24: 9235FF08 00000060
	buffer_load_dwordx4 v176, s[24:27], s52 offen lds          // 000000008E2C: E05D1000 340600B0
	s_add_u32 m0, s69, 0x3000                                  // 000000008E34: 807CFF45 00003000
	s_mov_b32 s30, s26                                         // 000000008E3C: BE9E001A
	s_mov_b32 s31, s27                                         // 000000008E40: BE9F001B
	s_add_u32 s70, s57, s48                                    // 000000008E44: 80463039
	buffer_load_dwordx4 v176, s[24:27], s53 offen lds          // 000000008E48: E05D1000 350600B0
	s_add_u32 m0, s70, 0                                       // 000000008E50: 807C8046
	s_lshl_b32 s66, s8, 2                                      // 000000008E54: 8E428208
	buffer_load_dwordx4 v178, s[28:31], 0 offen lds            // 000000008E58: E05D1000 800700B2
	s_add_u32 m0, s70, 0x1000                                  // 000000008E60: 807CFF46 00001000
	s_mul_i32 s68, s8, 0x44                                    // 000000008E68: 9244FF08 00000044
	buffer_load_dwordx4 v178, s[28:31], s52 offen lds          // 000000008E70: E05D1000 340700B2
	s_add_u32 m0, s70, 0x2000                                  // 000000008E78: 807CFF46 00002000
	s_nop 0                                                    // 000000008E80: BF800000
	buffer_load_dwordx4 v178, s[28:31], s66 offen lds          // 000000008E84: E05D1000 420700B2
	s_add_u32 m0, s70, 0x3000                                  // 000000008E8C: 807CFF46 00003000
	s_cmp_lt_u32 s65, 2                                        // 000000008E94: BF0A8241
	buffer_load_dwordx4 v178, s[28:31], s68 offen lds          // 000000008E98: E05D1000 440700B2
	s_cbranch_scc1 27                                          // 000000008EA0: BF85001B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7410>
	s_addk_i32 s48, 0x4000                                     // 000000008EA4: B7304000
	s_and_b32 s48, s48, 0xc000                                 // 000000008EA8: 8630FF30 0000C000
	s_or_b32 s48, s56, s48                                     // 000000008EB0: 87303038
	s_add_u32 m0, s48, 0                                       // 000000008EB4: 807C8030
	s_mul_i32 s30, s8, 0xa0                                    // 000000008EB8: 921EFF08 000000A0
	buffer_load_dwordx4 v176, s[24:27], s58 offen lds          // 000000008EC0: E05D1000 3A0600B0
	s_add_u32 m0, s48, 0x1000                                  // 000000008EC8: 807CFF30 00001000
	s_mul_i32 s31, s8, 0xc0                                    // 000000008ED0: 921FFF08 000000C0
	s_mul_i32 s49, s8, 0xe0                                    // 000000008ED8: 9231FF08 000000E0
	buffer_load_dwordx4 v176, s[24:27], s30 offen lds          // 000000008EE0: E05D1000 1E0600B0
	s_add_u32 m0, s48, 0x2000                                  // 000000008EE8: 807CFF30 00002000
	s_nop 0                                                    // 000000008EF0: BF800000
	buffer_load_dwordx4 v176, s[24:27], s31 offen lds          // 000000008EF4: E05D1000 1F0600B0
	s_add_u32 m0, s48, 0x3000                                  // 000000008EFC: 807CFF30 00003000
	s_nop 0                                                    // 000000008F04: BF800000
	buffer_load_dwordx4 v176, s[24:27], s49 offen lds          // 000000008F08: E05D1000 310600B0
	s_add_u32 s30, s36, s18                                    // 000000008F10: 801E1224
	s_addc_u32 s31, s37, s19                                   // 000000008F14: 821F1325
	s_add_u32 s52, s30, s60                                    // 000000008F18: 80343C1E
	s_addc_u32 s53, s31, 0                                     // 000000008F1C: 8235801F
	s_add_u32 s30, s42, s22                                    // 000000008F20: 801E162A
	s_addc_u32 s31, s43, s23                                   // 000000008F24: 821F172B
	s_add_u32 s30, s30, s63                                    // 000000008F28: 801E3F1E
	s_addc_u32 s31, s31, 0                                     // 000000008F2C: 821F801F
	s_add_u32 s48, s17, s64                                    // 000000008F30: 80304011
	s_lshl_b32 s48, s48, 2                                     // 000000008F34: 8E308230
	s_add_u32 s66, s44, s48                                    // 000000008F38: 8042302C
	s_addc_u32 s68, s45, 0                                     // 000000008F3C: 8244802D
	s_mul_i32 s15, s15, s5                                     // 000000008F40: 920F050F
	s_and_b64 s[48:49], s[12:13], exec                         // 000000008F44: 86B07E0C
	s_cselect_b32 s49, 0, s68                                  // 000000008F48: 85314480
	s_cselect_b32 s48, 0, s66                                  // 000000008F4C: 85304280
	s_add_u32 s15, s15, s6                                     // 000000008F50: 800F060F
	s_lshl_b32 s66, s15, 5                                     // 000000008F54: 8E42850F
	v_or_b32_e32 v12, s66, v170                                // 000000008F58: 28195442
	s_bfe_u32 s15, s15, 0x190002                               // 000000008F5C: 928FFF0F 00190002
	v_mul_lo_u32 v12, v12, s7                                  // 000000008F64: D285000C 00000F0C
	v_add_u32_e32 v12, v180, v12                               // 000000008F6C: 681819B4
	global_load_dwordx4 v[228:231], v12, s[52:53]              // 000000008F70: DC5C8000 E434000C
	global_load_dwordx4 v[232:235], v12, s[52:53] offset:16    // 000000008F78: DC5C8010 E834000C
	global_load_dwordx4 v[236:239], v12, s[52:53] offset:64    // 000000008F80: DC5C8040 EC34000C
	global_load_dwordx4 v[240:243], v12, s[52:53] offset:80    // 000000008F88: DC5C8050 F034000C
	s_mov_b32 s53, 1                                           // 000000008F90: BEB50081
	s_branch 388                                               // 000000008F94: BF820184 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7aa8>
	s_mov_b32 s67, 1                                           // 000000008F98: BEC30081
	s_waitcnt lgkmcnt(0)                                       // 000000008F9C: BF8CC07F
	s_add_u32 s24, s38, s20                                    // 000000008FA0: 80181426
	s_addc_u32 s25, s39, s21                                   // 000000008FA4: 82191527
	s_add_u32 s28, s40, s20                                    // 000000008FA8: 801C1428
	s_addc_u32 s29, s41, s21                                   // 000000008FAC: 821D1529
	s_not_b32 s15, s16                                         // 000000008FB0: BE8F0410
	s_add_u32 s15, s4, s15                                     // 000000008FB4: 800F0F04
	s_and_b64 s[48:49], s[48:49], exec                         // 000000008FB8: 86B07E30
	s_cselect_b32 s15, s15, s16                                // 000000008FBC: 850F100F
	s_lshl_b32 s31, s15, 5                                     // 000000008FC0: 8E1F850F
	s_add_u32 s31, s31, 32                                     // 000000008FC4: 801FA01F
	s_mul_i32 s31, s31, s5                                     // 000000008FC8: 921F051F
	s_addk_i32 s31, 0x60                                       // 000000008FCC: B71F0060
	s_lshr_b32 s31, s31, 7                                     // 000000008FD0: 8F1F871F
	s_min_u32 s65, s61, s31                                    // 000000008FD4: 83C11F3D
	s_mov_b32 s27, 0x110000                                    // 000000008FD8: BE9B00FF 00110000
	s_and_b64 s[48:49], s[34:35], exec                         // 000000008FE0: 86B07E22
	s_cbranch_scc0 72                                          // 000000008FE4: BF840048 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7608>
	s_lshl_b32 s48, s62, 14                                    // 000000008FE8: 8E308E3E
	s_or_b32 s69, s56, s48                                     // 000000008FEC: 87453038
	s_add_u32 m0, s69, 0                                       // 000000008FF0: 807C8045
	s_lshl_b32 s49, s8, 5                                      // 000000008FF4: 8E318508
	buffer_load_dwordx4 v176, s[24:27], 0 offen lds            // 000000008FF8: E05D1000 800600B0
	s_add_u32 m0, s69, 0x1000                                  // 000000009000: 807CFF45 00001000
	s_lshl_b32 s52, s8, 6                                      // 000000009008: 8E348608
	buffer_load_dwordx4 v176, s[24:27], s49 offen lds          // 00000000900C: E05D1000 310600B0
	s_add_u32 m0, s69, 0x2000                                  // 000000009014: 807CFF45 00002000
	s_mul_i32 s53, s8, 0x60                                    // 00000000901C: 9235FF08 00000060
	buffer_load_dwordx4 v176, s[24:27], s52 offen lds          // 000000009024: E05D1000 340600B0
	s_add_u32 m0, s69, 0x3000                                  // 00000000902C: 807CFF45 00003000
	s_mov_b32 s30, s26                                         // 000000009034: BE9E001A
	s_mov_b32 s31, s27                                         // 000000009038: BE9F001B
	s_add_u32 s70, s57, s48                                    // 00000000903C: 80463039
	buffer_load_dwordx4 v176, s[24:27], s53 offen lds          // 000000009040: E05D1000 350600B0
	s_add_u32 m0, s70, 0                                       // 000000009048: 807C8046
	s_lshl_b32 s66, s8, 2                                      // 00000000904C: 8E428208
	buffer_load_dwordx4 v178, s[28:31], 0 offen lds            // 000000009050: E05D1000 800700B2
	s_add_u32 m0, s70, 0x1000                                  // 000000009058: 807CFF46 00001000
	s_mul_i32 s68, s8, 0x44                                    // 000000009060: 9244FF08 00000044
	buffer_load_dwordx4 v178, s[28:31], s52 offen lds          // 000000009068: E05D1000 340700B2
	s_add_u32 m0, s70, 0x2000                                  // 000000009070: 807CFF46 00002000
	s_nop 0                                                    // 000000009078: BF800000
	buffer_load_dwordx4 v178, s[28:31], s66 offen lds          // 00000000907C: E05D1000 420700B2
	s_add_u32 m0, s70, 0x3000                                  // 000000009084: 807CFF46 00003000
	s_cmp_lt_u32 s65, 2                                        // 00000000908C: BF0A8241
	buffer_load_dwordx4 v178, s[28:31], s68 offen lds          // 000000009090: E05D1000 440700B2
	s_cbranch_scc1 27                                          // 000000009098: BF85001B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7608>
	s_addk_i32 s48, 0x4000                                     // 00000000909C: B7304000
	s_and_b32 s48, s48, 0xc000                                 // 0000000090A0: 8630FF30 0000C000
	s_or_b32 s48, s56, s48                                     // 0000000090A8: 87303038
	s_add_u32 m0, s48, 0                                       // 0000000090AC: 807C8030
	s_mul_i32 s30, s8, 0xa0                                    // 0000000090B0: 921EFF08 000000A0
	buffer_load_dwordx4 v176, s[24:27], s58 offen lds          // 0000000090B8: E05D1000 3A0600B0
	s_add_u32 m0, s48, 0x1000                                  // 0000000090C0: 807CFF30 00001000
	s_mul_i32 s31, s8, 0xc0                                    // 0000000090C8: 921FFF08 000000C0
	s_mul_i32 s49, s8, 0xe0                                    // 0000000090D0: 9231FF08 000000E0
	buffer_load_dwordx4 v176, s[24:27], s30 offen lds          // 0000000090D8: E05D1000 1E0600B0
	s_add_u32 m0, s48, 0x2000                                  // 0000000090E0: 807CFF30 00002000
	s_nop 0                                                    // 0000000090E8: BF800000
	buffer_load_dwordx4 v176, s[24:27], s31 offen lds          // 0000000090EC: E05D1000 1F0600B0
	s_add_u32 m0, s48, 0x3000                                  // 0000000090F4: 807CFF30 00003000
	s_nop 0                                                    // 0000000090FC: BF800000
	buffer_load_dwordx4 v176, s[24:27], s49 offen lds          // 000000009100: E05D1000 310600B0
	s_add_u32 s30, s36, s18                                    // 000000009108: 801E1224
	s_addc_u32 s31, s37, s19                                   // 00000000910C: 821F1325
	s_add_u32 s52, s30, s60                                    // 000000009110: 80343C1E
	s_addc_u32 s53, s31, 0                                     // 000000009114: 8235801F
	s_add_u32 s30, s42, s22                                    // 000000009118: 801E162A
	s_addc_u32 s31, s43, s23                                   // 00000000911C: 821F172B
	s_add_u32 s30, s30, s63                                    // 000000009120: 801E3F1E
	s_addc_u32 s31, s31, 0                                     // 000000009124: 821F801F
	s_add_u32 s48, s17, s64                                    // 000000009128: 80304011
	s_lshl_b32 s48, s48, 2                                     // 00000000912C: 8E308230
	s_add_u32 s66, s44, s48                                    // 000000009130: 8042302C
	s_addc_u32 s68, s45, 0                                     // 000000009134: 8244802D
	s_mul_i32 s15, s15, s5                                     // 000000009138: 920F050F
	s_and_b64 s[48:49], s[12:13], exec                         // 00000000913C: 86B07E0C
	s_cselect_b32 s49, 0, s68                                  // 000000009140: 85314480
	s_cselect_b32 s48, 0, s66                                  // 000000009144: 85304280
	s_add_u32 s15, s15, s6                                     // 000000009148: 800F060F
	s_lshl_b32 s66, s15, 5                                     // 00000000914C: 8E42850F
	v_or_b32_e32 v3, s66, v170                                 // 000000009150: 28075442
	s_bfe_u32 s15, s15, 0x190002                               // 000000009154: 928FFF0F 00190002
	v_mul_lo_u32 v3, v3, s7                                    // 00000000915C: D2850003 00000F03
	v_add_u32_e32 v3, v180, v3                                 // 000000009164: 680607B4
	global_load_dwordx4 v[228:231], v3, s[52:53]               // 000000009168: DC5C8000 E4340003
	global_load_dwordx4 v[232:235], v3, s[52:53] offset:16     // 000000009170: DC5C8010 E8340003
	global_load_dwordx4 v[236:239], v3, s[52:53] offset:64     // 000000009178: DC5C8040 EC340003
	global_load_dwordx4 v[240:243], v3, s[52:53] offset:80     // 000000009180: DC5C8050 F0340003
	s_mov_b32 s53, 1                                           // 000000009188: BEB50081
	s_branch 250                                               // 00000000918C: BF8200FA <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7a78>
	s_mov_b32 s67, 1                                           // 000000009190: BEC30081
	s_waitcnt lgkmcnt(0)                                       // 000000009194: BF8CC07F
	s_add_u32 s24, s38, s20                                    // 000000009198: 80181426
	s_addc_u32 s25, s39, s21                                   // 00000000919C: 82191527
	s_add_u32 s28, s40, s20                                    // 0000000091A0: 801C1428
	s_addc_u32 s29, s41, s21                                   // 0000000091A4: 821D1529
	s_not_b32 s15, s16                                         // 0000000091A8: BE8F0410
	s_add_u32 s15, s4, s15                                     // 0000000091AC: 800F0F04
	s_and_b64 s[48:49], s[48:49], exec                         // 0000000091B0: 86B07E30
	s_cselect_b32 s15, s15, s16                                // 0000000091B4: 850F100F
	s_lshl_b32 s31, s15, 5                                     // 0000000091B8: 8E1F850F
	s_add_u32 s31, s31, 32                                     // 0000000091BC: 801FA01F
	s_mul_i32 s31, s31, s5                                     // 0000000091C0: 921F051F
	s_addk_i32 s31, 0x60                                       // 0000000091C4: B71F0060
	s_lshr_b32 s31, s31, 7                                     // 0000000091C8: 8F1F871F
	s_min_u32 s65, s61, s31                                    // 0000000091CC: 83C11F3D
	s_mov_b32 s27, 0x110000                                    // 0000000091D0: BE9B00FF 00110000
	s_and_b64 s[48:49], s[34:35], exec                         // 0000000091D8: 86B07E22
	s_cbranch_scc0 72                                          // 0000000091DC: BF840048 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7800>
	s_lshl_b32 s48, s62, 14                                    // 0000000091E0: 8E308E3E
	s_or_b32 s69, s56, s48                                     // 0000000091E4: 87453038
	s_add_u32 m0, s69, 0                                       // 0000000091E8: 807C8045
	s_lshl_b32 s49, s8, 5                                      // 0000000091EC: 8E318508
	buffer_load_dwordx4 v176, s[24:27], 0 offen lds            // 0000000091F0: E05D1000 800600B0
	s_add_u32 m0, s69, 0x1000                                  // 0000000091F8: 807CFF45 00001000
	s_lshl_b32 s52, s8, 6                                      // 000000009200: 8E348608
	buffer_load_dwordx4 v176, s[24:27], s49 offen lds          // 000000009204: E05D1000 310600B0
	s_add_u32 m0, s69, 0x2000                                  // 00000000920C: 807CFF45 00002000
	s_mul_i32 s53, s8, 0x60                                    // 000000009214: 9235FF08 00000060
	buffer_load_dwordx4 v176, s[24:27], s52 offen lds          // 00000000921C: E05D1000 340600B0
	s_add_u32 m0, s69, 0x3000                                  // 000000009224: 807CFF45 00003000
	s_mov_b32 s30, s26                                         // 00000000922C: BE9E001A
	s_mov_b32 s31, s27                                         // 000000009230: BE9F001B
	s_add_u32 s70, s57, s48                                    // 000000009234: 80463039
	buffer_load_dwordx4 v176, s[24:27], s53 offen lds          // 000000009238: E05D1000 350600B0
	s_add_u32 m0, s70, 0                                       // 000000009240: 807C8046
	s_lshl_b32 s66, s8, 2                                      // 000000009244: 8E428208
	buffer_load_dwordx4 v178, s[28:31], 0 offen lds            // 000000009248: E05D1000 800700B2
	s_add_u32 m0, s70, 0x1000                                  // 000000009250: 807CFF46 00001000
	s_mul_i32 s68, s8, 0x44                                    // 000000009258: 9244FF08 00000044
	buffer_load_dwordx4 v178, s[28:31], s52 offen lds          // 000000009260: E05D1000 340700B2
	s_add_u32 m0, s70, 0x2000                                  // 000000009268: 807CFF46 00002000
	s_nop 0                                                    // 000000009270: BF800000
	buffer_load_dwordx4 v178, s[28:31], s66 offen lds          // 000000009274: E05D1000 420700B2
	s_add_u32 m0, s70, 0x3000                                  // 00000000927C: 807CFF46 00003000
	s_cmp_lt_u32 s65, 2                                        // 000000009284: BF0A8241
	buffer_load_dwordx4 v178, s[28:31], s68 offen lds          // 000000009288: E05D1000 440700B2
	s_cbranch_scc1 27                                          // 000000009290: BF85001B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7800>
	s_addk_i32 s48, 0x4000                                     // 000000009294: B7304000
	s_and_b32 s48, s48, 0xc000                                 // 000000009298: 8630FF30 0000C000
	s_or_b32 s48, s56, s48                                     // 0000000092A0: 87303038
	s_add_u32 m0, s48, 0                                       // 0000000092A4: 807C8030
	s_mul_i32 s30, s8, 0xa0                                    // 0000000092A8: 921EFF08 000000A0
	buffer_load_dwordx4 v176, s[24:27], s58 offen lds          // 0000000092B0: E05D1000 3A0600B0
	s_add_u32 m0, s48, 0x1000                                  // 0000000092B8: 807CFF30 00001000
	s_mul_i32 s31, s8, 0xc0                                    // 0000000092C0: 921FFF08 000000C0
	s_mul_i32 s49, s8, 0xe0                                    // 0000000092C8: 9231FF08 000000E0
	buffer_load_dwordx4 v176, s[24:27], s30 offen lds          // 0000000092D0: E05D1000 1E0600B0
	s_add_u32 m0, s48, 0x2000                                  // 0000000092D8: 807CFF30 00002000
	s_nop 0                                                    // 0000000092E0: BF800000
	buffer_load_dwordx4 v176, s[24:27], s31 offen lds          // 0000000092E4: E05D1000 1F0600B0
	s_add_u32 m0, s48, 0x3000                                  // 0000000092EC: 807CFF30 00003000
	s_nop 0                                                    // 0000000092F4: BF800000
	buffer_load_dwordx4 v176, s[24:27], s49 offen lds          // 0000000092F8: E05D1000 310600B0
	s_add_u32 s30, s36, s18                                    // 000000009300: 801E1224
	s_addc_u32 s31, s37, s19                                   // 000000009304: 821F1325
	s_add_u32 s52, s30, s60                                    // 000000009308: 80343C1E
	s_addc_u32 s53, s31, 0                                     // 00000000930C: 8235801F
	s_add_u32 s30, s42, s22                                    // 000000009310: 801E162A
	s_addc_u32 s31, s43, s23                                   // 000000009314: 821F172B
	s_add_u32 s30, s30, s63                                    // 000000009318: 801E3F1E
	s_addc_u32 s31, s31, 0                                     // 00000000931C: 821F801F
	s_add_u32 s48, s17, s64                                    // 000000009320: 80304011
	s_lshl_b32 s48, s48, 2                                     // 000000009324: 8E308230
	s_add_u32 s66, s44, s48                                    // 000000009328: 8042302C
	s_addc_u32 s68, s45, 0                                     // 00000000932C: 8244802D
	s_mul_i32 s15, s15, s5                                     // 000000009330: 920F050F
	s_and_b64 s[48:49], s[12:13], exec                         // 000000009334: 86B07E0C
	s_cselect_b32 s49, 0, s68                                  // 000000009338: 85314480
	s_cselect_b32 s48, 0, s66                                  // 00000000933C: 85304280
	s_add_u32 s15, s15, s6                                     // 000000009340: 800F060F
	s_lshl_b32 s66, s15, 5                                     // 000000009344: 8E42850F
	v_or_b32_e32 v3, s66, v170                                 // 000000009348: 28075442
	s_bfe_u32 s15, s15, 0x190002                               // 00000000934C: 928FFF0F 00190002
	v_mul_lo_u32 v3, v3, s7                                    // 000000009354: D2850003 00000F03
	v_add_u32_e32 v3, v180, v3                                 // 00000000935C: 680607B4
	global_load_dwordx4 v[228:231], v3, s[52:53]               // 000000009360: DC5C8000 E4340003
	global_load_dwordx4 v[232:235], v3, s[52:53] offset:16     // 000000009368: DC5C8010 E8340003
	global_load_dwordx4 v[236:239], v3, s[52:53] offset:64     // 000000009370: DC5C8040 EC340003
	global_load_dwordx4 v[240:243], v3, s[52:53] offset:80     // 000000009378: DC5C8050 F0340003
	s_mov_b32 s53, 1                                           // 000000009380: BEB50081
	s_branch 246                                               // 000000009384: BF8200F6 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7c60>
	s_mov_b64 s[30:31], s[0:1]                                 // 000000009388: BE9E0100
	s_mov_b64 s[48:49], s[10:11]                               // 00000000938C: BEB0010A
	s_mov_b32 s66, s3                                          // 000000009390: BEC20003
	s_mov_b32 s53, 0                                           // 000000009394: BEB50080
	s_branch 119                                               // 000000009398: BF820077 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7a78>
	s_mov_b64 s[30:31], s[0:1]                                 // 00000000939C: BE9E0100
	s_mov_b64 s[48:49], s[10:11]                               // 0000000093A0: BEB0010A
	s_mov_b32 s66, s3                                          // 0000000093A4: BEC20003
	s_mov_b32 s53, 0                                           // 0000000093A8: BEB50080
	s_branch 236                                               // 0000000093AC: BF8200EC <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7c60>
	s_mov_b64 s[30:31], s[0:1]                                 // 0000000093B0: BE9E0100
	s_mov_b64 s[48:49], s[10:11]                               // 0000000093B4: BEB0010A
	s_mov_b32 s67, 0                                           // 0000000093B8: BEC30080
	s_mov_b32 s66, s3                                          // 0000000093BC: BEC20003
	s_setprio 1                                                // 0000000093C0: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[82:89], 0// 0000000093C4: D3AD000C 0202A592
	s_nop 11                                                   // 0000000093CC: BF80000B
	v_mul_f32_e32 v3, v3, v12                                  // 0000000093D0: 0A061903
	v_add_f32_e32 v3, v186, v3                                 // 0000000093D4: 020607BA
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[4:11], 0// 0000000093D8: D3AD000C 02020992
	ds_read_b64_tr_b8 v[90:91], v16                            // 0000000093E0: D9C40000 5A000010
	ds_read_b64_tr_b8 v[92:93], v16 offset:1024                // 0000000093E8: D9C40400 5C000010
	ds_read_b64_tr_b8 v[94:95], v16 offset:2048                // 0000000093F0: D9C40800 5E000010
	ds_read_b64_tr_b8 v[96:97], v16 offset:3072                // 0000000093F8: D9C40C00 60000010
	ds_read_b64_tr_b8 v[98:99], v16 offset:256                 // 000000009400: D9C40100 62000010
	ds_read_b64_tr_b8 v[100:101], v16 offset:1280              // 000000009408: D9C40500 64000010
	ds_read_b64_tr_b8 v[102:103], v16 offset:2304              // 000000009410: D9C40900 66000010
	ds_read_b64_tr_b8 v[104:105], v16 offset:3328              // 000000009418: D9C40D00 68000010
	ds_read_b64_tr_b8 v[106:107], v16 offset:512               // 000000009420: D9C40200 6A000010
	ds_read_b64_tr_b8 v[108:109], v16 offset:1536              // 000000009428: D9C40600 6C000010
	ds_read_b64_tr_b8 v[110:111], v16 offset:2560              // 000000009430: D9C40A00 6E000010
	ds_read_b64_tr_b8 v[112:113], v16 offset:3584              // 000000009438: D9C40E00 70000010
	v_mul_f32_e32 v12, v190, v12                               // 000000009440: 0A1819BE
	v_add_f32_e32 v186, v3, v12                                // 000000009444: 03741903
	s_waitcnt lgkmcnt(4)                                       // 000000009448: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[90:97], v[82:89], v[66:81], v173, v187 op_sel_hi:[0,0,0]// 00000000944C: D3AC0000 000377AD D3AE0842 050AA55A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[98:105], v[82:89], v[50:65], v173, v187 op_sel_hi:[0,0,0]// 00000000945C: D3AC0000 000377AD D3AE0832 04CAA562
	ds_read_b64_tr_b8 v[90:91], v16 offset:768                 // 00000000946C: D9C40300 5A000010
	ds_read_b64_tr_b8 v[92:93], v16 offset:1792                // 000000009474: D9C40700 5C000010
	ds_read_b64_tr_b8 v[94:95], v16 offset:2816                // 00000000947C: D9C40B00 5E000010
	ds_read_b64_tr_b8 v[96:97], v16 offset:3840                // 000000009484: D9C40F00 60000010
	ds_read_b64_tr_b8 v[98:99], v16 offset:4096                // 00000000948C: D9C41000 62000010
	ds_read_b64_tr_b8 v[100:101], v16 offset:5120              // 000000009494: D9C41400 64000010
	ds_read_b64_tr_b8 v[102:103], v16 offset:6144              // 00000000949C: D9C41800 66000010
	ds_read_b64_tr_b8 v[104:105], v16 offset:7168              // 0000000094A4: D9C41C00 68000010
	s_waitcnt lgkmcnt(4)                                       // 0000000094AC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[106:113], v[82:89], v[34:49], v173, v187 op_sel_hi:[0,0,0]// 0000000094B0: D3AC0000 000377AD D3AE0822 048AA56A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[90:97], v[82:89], v[18:33], v173, v187 op_sel_hi:[0,0,0]// 0000000094C0: D3AC0000 000377AD D3AE0812 044AA55A
	ds_read_b64_tr_b8 v[106:107], v16 offset:4352              // 0000000094D0: D9C41100 6A000010
	ds_read_b64_tr_b8 v[108:109], v16 offset:5376              // 0000000094D8: D9C41500 6C000010
	ds_read_b64_tr_b8 v[110:111], v16 offset:6400              // 0000000094E0: D9C41900 6E000010
	ds_read_b64_tr_b8 v[112:113], v16 offset:7424              // 0000000094E8: D9C41D00 70000010
	ds_read_b64_tr_b8 v[82:83], v16 offset:4608                // 0000000094F0: D9C41200 52000010
	ds_read_b64_tr_b8 v[84:85], v16 offset:5632                // 0000000094F8: D9C41600 54000010
	ds_read_b64_tr_b8 v[86:87], v16 offset:6656                // 000000009500: D9C41A00 56000010
	ds_read_b64_tr_b8 v[88:89], v16 offset:7680                // 000000009508: D9C41E00 58000010
	s_waitcnt lgkmcnt(4)                                       // 000000009510: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[98:105], v[4:11], v[66:81], v173, v189 op_sel_hi:[0,0,0]// 000000009514: D3AC0000 00037BAD D3AE0842 050A0962
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[106:113], v[4:11], v[50:65], v173, v189 op_sel_hi:[0,0,0]// 000000009524: D3AC0000 00037BAD D3AE0832 04CA096A
	ds_read_b64_tr_b8 v[90:91], v16 offset:4864                // 000000009534: D9C41300 5A000010
	ds_read_b64_tr_b8 v[92:93], v16 offset:5888                // 00000000953C: D9C41700 5C000010
	ds_read_b64_tr_b8 v[94:95], v16 offset:6912                // 000000009544: D9C41B00 5E000010
	ds_read_b64_tr_b8 v[96:97], v16 offset:7936                // 00000000954C: D9C41F00 60000010
	s_waitcnt lgkmcnt(0)                                       // 000000009554: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[82:89], v[4:11], v[34:49], v173, v189 op_sel_hi:[0,0,0]// 000000009558: D3AC0000 00037BAD D3AE0822 048A0952
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[90:97], v[4:11], v[18:33], v173, v189 op_sel_hi:[0,0,0]// 000000009568: D3AC0000 00037BAD D3AE0812 044A095A
	s_waitcnt vmcnt(4)                                         // 000000009578: BF8C0F74
	s_barrier                                                  // 00000000957C: BF8A0000
	s_mov_b32 s52, s67                                         // 000000009580: BEB40043
	s_cmp_eq_u32 s53, 0                                        // 000000009584: BF068035
	v_and_b32_e32 v82, 15, v0                                  // 000000009588: 26A4008F
	v_lshrrev_b32_e32 v83, 4, v181                             // 00000000958C: 20A76A84
	s_cbranch_scc0 122                                         // 000000009590: BF84007A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7c7c>
	s_branch 391                                               // 000000009594: BF820187 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x80b4>
	s_mov_b64 s[30:31], s[0:1]                                 // 000000009598: BE9E0100
	s_mov_b64 s[48:49], s[10:11]                               // 00000000959C: BEB0010A
	s_mov_b32 s67, 0                                           // 0000000095A0: BEC30080
	s_mov_b32 s66, s3                                          // 0000000095A4: BEC20003
	s_setprio 1                                                // 0000000095A8: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[82:89], 0// 0000000095AC: D3AD000C 0202A592
	s_nop 11                                                   // 0000000095B4: BF80000B
	v_mul_f32_e32 v3, v3, v12                                  // 0000000095B8: 0A061903
	v_add_f32_e32 v3, v186, v3                                 // 0000000095BC: 020607BA
	v_mfma_f32_16x16x128_f8f6f4 v[12:15], v[146:153], v[4:11], 0// 0000000095C0: D3AD000C 02020992
	ds_read_b64_tr_b8 v[90:91], v16                            // 0000000095C8: D9C40000 5A000010
	ds_read_b64_tr_b8 v[92:93], v16 offset:1024                // 0000000095D0: D9C40400 5C000010
	ds_read_b64_tr_b8 v[94:95], v16 offset:2048                // 0000000095D8: D9C40800 5E000010
	ds_read_b64_tr_b8 v[96:97], v16 offset:3072                // 0000000095E0: D9C40C00 60000010
	ds_read_b64_tr_b8 v[98:99], v16 offset:256                 // 0000000095E8: D9C40100 62000010
	ds_read_b64_tr_b8 v[100:101], v16 offset:1280              // 0000000095F0: D9C40500 64000010
	ds_read_b64_tr_b8 v[102:103], v16 offset:2304              // 0000000095F8: D9C40900 66000010
	ds_read_b64_tr_b8 v[104:105], v16 offset:3328              // 000000009600: D9C40D00 68000010
	ds_read_b64_tr_b8 v[106:107], v16 offset:512               // 000000009608: D9C40200 6A000010
	ds_read_b64_tr_b8 v[108:109], v16 offset:1536              // 000000009610: D9C40600 6C000010
	ds_read_b64_tr_b8 v[110:111], v16 offset:2560              // 000000009618: D9C40A00 6E000010
	ds_read_b64_tr_b8 v[112:113], v16 offset:3584              // 000000009620: D9C40E00 70000010
	v_mul_f32_e32 v12, v190, v12                               // 000000009628: 0A1819BE
	v_add_f32_e32 v186, v3, v12                                // 00000000962C: 03741903
	s_waitcnt lgkmcnt(4)                                       // 000000009630: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[90:97], v[82:89], v[66:81], v173, v187 op_sel_hi:[0,0,0]// 000000009634: D3AC0000 000377AD D3AE0842 050AA55A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[98:105], v[82:89], v[50:65], v173, v187 op_sel_hi:[0,0,0]// 000000009644: D3AC0000 000377AD D3AE0832 04CAA562
	ds_read_b64_tr_b8 v[90:91], v16 offset:768                 // 000000009654: D9C40300 5A000010
	ds_read_b64_tr_b8 v[92:93], v16 offset:1792                // 00000000965C: D9C40700 5C000010
	ds_read_b64_tr_b8 v[94:95], v16 offset:2816                // 000000009664: D9C40B00 5E000010
	ds_read_b64_tr_b8 v[96:97], v16 offset:3840                // 00000000966C: D9C40F00 60000010
	ds_read_b64_tr_b8 v[98:99], v16 offset:4096                // 000000009674: D9C41000 62000010
	ds_read_b64_tr_b8 v[100:101], v16 offset:5120              // 00000000967C: D9C41400 64000010
	ds_read_b64_tr_b8 v[102:103], v16 offset:6144              // 000000009684: D9C41800 66000010
	ds_read_b64_tr_b8 v[104:105], v16 offset:7168              // 00000000968C: D9C41C00 68000010
	s_waitcnt lgkmcnt(4)                                       // 000000009694: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[106:113], v[82:89], v[34:49], v173, v187 op_sel_hi:[0,0,0]// 000000009698: D3AC0000 000377AD D3AE0822 048AA56A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[90:97], v[82:89], v[18:33], v173, v187 op_sel_hi:[0,0,0]// 0000000096A8: D3AC0000 000377AD D3AE0812 044AA55A
	ds_read_b64_tr_b8 v[106:107], v16 offset:4352              // 0000000096B8: D9C41100 6A000010
	ds_read_b64_tr_b8 v[108:109], v16 offset:5376              // 0000000096C0: D9C41500 6C000010
	ds_read_b64_tr_b8 v[110:111], v16 offset:6400              // 0000000096C8: D9C41900 6E000010
	ds_read_b64_tr_b8 v[112:113], v16 offset:7424              // 0000000096D0: D9C41D00 70000010
	ds_read_b64_tr_b8 v[82:83], v16 offset:4608                // 0000000096D8: D9C41200 52000010
	ds_read_b64_tr_b8 v[84:85], v16 offset:5632                // 0000000096E0: D9C41600 54000010
	ds_read_b64_tr_b8 v[86:87], v16 offset:6656                // 0000000096E8: D9C41A00 56000010
	ds_read_b64_tr_b8 v[88:89], v16 offset:7680                // 0000000096F0: D9C41E00 58000010
	s_waitcnt lgkmcnt(4)                                       // 0000000096F8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[66:81], v[98:105], v[4:11], v[66:81], v173, v189 op_sel_hi:[0,0,0]// 0000000096FC: D3AC0000 00037BAD D3AE0842 050A0962
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[106:113], v[4:11], v[50:65], v173, v189 op_sel_hi:[0,0,0]// 00000000970C: D3AC0000 00037BAD D3AE0832 04CA096A
	ds_read_b64_tr_b8 v[90:91], v16 offset:4864                // 00000000971C: D9C41300 5A000010
	ds_read_b64_tr_b8 v[92:93], v16 offset:5888                // 000000009724: D9C41700 5C000010
	ds_read_b64_tr_b8 v[94:95], v16 offset:6912                // 00000000972C: D9C41B00 5E000010
	ds_read_b64_tr_b8 v[96:97], v16 offset:7936                // 000000009734: D9C41F00 60000010
	s_waitcnt lgkmcnt(0)                                       // 00000000973C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[82:89], v[4:11], v[34:49], v173, v189 op_sel_hi:[0,0,0]// 000000009740: D3AC0000 00037BAD D3AE0822 048A0952
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[90:97], v[4:11], v[18:33], v173, v189 op_sel_hi:[0,0,0]// 000000009750: D3AC0000 00037BAD D3AE0812 044A095A
	s_waitcnt vmcnt(4)                                         // 000000009760: BF8C0F74
	s_barrier                                                  // 000000009764: BF8A0000
	s_mov_b32 s52, s67                                         // 000000009768: BEB40043
	s_cmp_eq_u32 s53, 0                                        // 00000000976C: BF068035
	v_and_b32_e32 v82, 15, v0                                  // 000000009770: 26A4008F
	v_lshrrev_b32_e32 v83, 4, v181                             // 000000009774: 20A76A84
	s_cbranch_scc1 270                                         // 000000009778: BF85010E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x80b4>
	s_nop 15                                                   // 00000000977C: BF80000F
	s_nop 3                                                    // 000000009780: BF800003
	v_rcp_f32_e32 v3, v186                                     // 000000009784: 7E0645BA
	v_log_f32_e32 v84, v186                                    // 000000009788: 7EA843BA
	s_nop 1                                                    // 00000000978C: BF800001
	v_mul_f32_e32 v3, v182, v3                                 // 000000009790: 0A0607B6
	v_mul_f32_e32 v4, v66, v3                                  // 000000009794: 0A080742
	v_mul_f32_e32 v5, v67, v3                                  // 000000009798: 0A0A0743
	v_mul_f32_e32 v6, v68, v3                                  // 00000000979C: 0A0C0744
	v_mul_f32_e32 v7, v69, v3                                  // 0000000097A0: 0A0E0745
	v_mul_f32_e32 v8, v70, v3                                  // 0000000097A4: 0A100746
	v_mul_f32_e32 v9, v71, v3                                  // 0000000097A8: 0A120747
	v_mul_f32_e32 v10, v72, v3                                 // 0000000097AC: 0A140748
	v_mul_f32_e32 v11, v73, v3                                 // 0000000097B0: 0A160749
	v_mul_f32_e32 v12, v74, v3                                 // 0000000097B4: 0A18074A
	v_mul_f32_e32 v13, v75, v3                                 // 0000000097B8: 0A1A074B
	v_mul_f32_e32 v14, v76, v3                                 // 0000000097BC: 0A1C074C
	v_mul_f32_e32 v15, v77, v3                                 // 0000000097C0: 0A1E074D
	v_mul_f32_e32 v16, v78, v3                                 // 0000000097C4: 0A20074E
	v_mul_f32_e32 v17, v79, v3                                 // 0000000097C8: 0A22074F
	v_mul_f32_e32 v66, v80, v3                                 // 0000000097CC: 0A840750
	v_mul_f32_e32 v67, v81, v3                                 // 0000000097D0: 0A860751
	v_mul_f32_e32 v50, v50, v3                                 // 0000000097D4: 0A640732
	v_mul_f32_e32 v51, v51, v3                                 // 0000000097D8: 0A660733
	v_mul_f32_e32 v52, v52, v3                                 // 0000000097DC: 0A680734
	v_mul_f32_e32 v53, v53, v3                                 // 0000000097E0: 0A6A0735
	v_mul_f32_e32 v54, v54, v3                                 // 0000000097E4: 0A6C0736
	v_mul_f32_e32 v55, v55, v3                                 // 0000000097E8: 0A6E0737
	v_mul_f32_e32 v56, v56, v3                                 // 0000000097EC: 0A700738
	v_mul_f32_e32 v57, v57, v3                                 // 0000000097F0: 0A720739
	v_mul_f32_e32 v58, v58, v3                                 // 0000000097F4: 0A74073A
	v_mul_f32_e32 v59, v59, v3                                 // 0000000097F8: 0A76073B
	v_mul_f32_e32 v60, v60, v3                                 // 0000000097FC: 0A78073C
	v_mul_f32_e32 v61, v61, v3                                 // 000000009800: 0A7A073D
	v_mul_f32_e32 v62, v62, v3                                 // 000000009804: 0A7C073E
	v_mul_f32_e32 v63, v63, v3                                 // 000000009808: 0A7E073F
	v_mul_f32_e32 v64, v64, v3                                 // 00000000980C: 0A800740
	v_mul_f32_e32 v65, v65, v3                                 // 000000009810: 0A820741
	v_mul_f32_e32 v34, v34, v3                                 // 000000009814: 0A440722
	v_mul_f32_e32 v35, v35, v3                                 // 000000009818: 0A460723
	v_mul_f32_e32 v36, v36, v3                                 // 00000000981C: 0A480724
	v_mul_f32_e32 v37, v37, v3                                 // 000000009820: 0A4A0725
	v_mul_f32_e32 v38, v38, v3                                 // 000000009824: 0A4C0726
	v_mul_f32_e32 v39, v39, v3                                 // 000000009828: 0A4E0727
	v_mul_f32_e32 v40, v40, v3                                 // 00000000982C: 0A500728
	v_mul_f32_e32 v41, v41, v3                                 // 000000009830: 0A520729
	v_mul_f32_e32 v42, v42, v3                                 // 000000009834: 0A54072A
	v_mul_f32_e32 v43, v43, v3                                 // 000000009838: 0A56072B
	v_mul_f32_e32 v44, v44, v3                                 // 00000000983C: 0A58072C
	v_mul_f32_e32 v45, v45, v3                                 // 000000009840: 0A5A072D
	v_mul_f32_e32 v46, v46, v3                                 // 000000009844: 0A5C072E
	v_mul_f32_e32 v47, v47, v3                                 // 000000009848: 0A5E072F
	v_mul_f32_e32 v48, v48, v3                                 // 00000000984C: 0A600730
	v_mul_f32_e32 v49, v49, v3                                 // 000000009850: 0A620731
	v_mul_f32_e32 v68, v18, v3                                 // 000000009854: 0A880712
	v_mul_f32_e32 v69, v19, v3                                 // 000000009858: 0A8A0713
	v_mul_f32_e32 v70, v20, v3                                 // 00000000985C: 0A8C0714
	v_mul_f32_e32 v71, v21, v3                                 // 000000009860: 0A8E0715
	v_mul_f32_e32 v72, v22, v3                                 // 000000009864: 0A900716
	v_mul_f32_e32 v73, v23, v3                                 // 000000009868: 0A920717
	v_mul_f32_e32 v74, v24, v3                                 // 00000000986C: 0A940718
	v_mul_f32_e32 v75, v25, v3                                 // 000000009870: 0A960719
	v_mul_f32_e32 v76, v26, v3                                 // 000000009874: 0A98071A
	v_mul_f32_e32 v77, v27, v3                                 // 000000009878: 0A9A071B
	v_mul_f32_e32 v78, v28, v3                                 // 00000000987C: 0A9C071C
	v_mul_f32_e32 v79, v29, v3                                 // 000000009880: 0A9E071D
	v_mul_f32_e32 v80, v30, v3                                 // 000000009884: 0AA0071E
	v_mul_f32_e32 v81, v31, v3                                 // 000000009888: 0AA2071F
	v_mul_f32_e32 v85, v32, v3                                 // 00000000988C: 0AAA0720
	v_mul_f32_e32 v3, v33, v3                                  // 000000009890: 0A060721
	v_cvt_pk_bf16_f32 v4, v4, v5                               // 000000009894: D2680004 00020B04
	v_cvt_pk_bf16_f32 v5, v6, v7                               // 00000000989C: D2680005 00020F06
	v_cvt_pk_bf16_f32 v6, v8, v9                               // 0000000098A4: D2680006 00021308
	v_cvt_pk_bf16_f32 v7, v10, v11                             // 0000000098AC: D2680007 0002170A
	v_cvt_pk_bf16_f32 v8, v12, v13                             // 0000000098B4: D2680008 00021B0C
	v_cvt_pk_bf16_f32 v9, v14, v15                             // 0000000098BC: D2680009 00021F0E
	v_cvt_pk_bf16_f32 v10, v16, v17                            // 0000000098C4: D268000A 00022310
	v_cvt_pk_bf16_f32 v11, v66, v67                            // 0000000098CC: D268000B 00028742
	v_cvt_pk_bf16_f32 v12, v50, v51                            // 0000000098D4: D268000C 00026732
	v_cvt_pk_bf16_f32 v13, v52, v53                            // 0000000098DC: D268000D 00026B34
	v_cvt_pk_bf16_f32 v14, v54, v55                            // 0000000098E4: D268000E 00026F36
	v_cvt_pk_bf16_f32 v15, v56, v57                            // 0000000098EC: D268000F 00027338
	v_cvt_pk_bf16_f32 v16, v58, v59                            // 0000000098F4: D2680010 0002773A
	v_cvt_pk_bf16_f32 v17, v60, v61                            // 0000000098FC: D2680011 00027B3C
	v_cvt_pk_bf16_f32 v18, v62, v63                            // 000000009904: D2680012 00027F3E
	v_cvt_pk_bf16_f32 v19, v64, v65                            // 00000000990C: D2680013 00028340
	v_cvt_pk_bf16_f32 v20, v34, v35                            // 000000009914: D2680014 00024722
	v_cvt_pk_bf16_f32 v21, v36, v37                            // 00000000991C: D2680015 00024B24
	v_cvt_pk_bf16_f32 v22, v38, v39                            // 000000009924: D2680016 00024F26
	v_cvt_pk_bf16_f32 v23, v40, v41                            // 00000000992C: D2680017 00025328
	v_cvt_pk_bf16_f32 v24, v42, v43                            // 000000009934: D2680018 0002572A
	v_cvt_pk_bf16_f32 v25, v44, v45                            // 00000000993C: D2680019 00025B2C
	v_cvt_pk_bf16_f32 v26, v46, v47                            // 000000009944: D268001A 00025F2E
	v_cvt_pk_bf16_f32 v27, v48, v49                            // 00000000994C: D268001B 00026330
	v_cvt_pk_bf16_f32 v28, v68, v69                            // 000000009954: D268001C 00028B44
	v_cvt_pk_bf16_f32 v29, v70, v71                            // 00000000995C: D268001D 00028F46
	v_cvt_pk_bf16_f32 v30, v72, v73                            // 000000009964: D268001E 00029348
	v_cvt_pk_bf16_f32 v31, v74, v75                            // 00000000996C: D268001F 0002974A
	v_cvt_pk_bf16_f32 v32, v76, v77                            // 000000009974: D2680020 00029B4C
	v_cvt_pk_bf16_f32 v33, v78, v79                            // 00000000997C: D2680021 00029F4E
	v_cvt_pk_bf16_f32 v34, v80, v81                            // 000000009984: D2680022 0002A350
	v_cvt_pk_bf16_f32 v35, v85, v3                             // 00000000998C: D2680023 00020755
	v_permlane32_swap_b32_e32 v4, v6                           // 000000009994: 7E08B506
	v_permlane32_swap_b32_e32 v5, v7                           // 000000009998: 7E0AB507
	v_permlane32_swap_b32_e32 v8, v10                          // 00000000999C: 7E10B50A
	v_permlane32_swap_b32_e32 v9, v11                          // 0000000099A0: 7E12B50B
	v_permlane32_swap_b32_e32 v12, v14                         // 0000000099A4: 7E18B50E
	v_permlane32_swap_b32_e32 v13, v15                         // 0000000099A8: 7E1AB50F
	v_permlane32_swap_b32_e32 v16, v18                         // 0000000099AC: 7E20B512
	v_permlane32_swap_b32_e32 v17, v19                         // 0000000099B0: 7E22B513
	v_permlane32_swap_b32_e32 v20, v22                         // 0000000099B4: 7E28B516
	v_permlane32_swap_b32_e32 v21, v23                         // 0000000099B8: 7E2AB517
	v_permlane32_swap_b32_e32 v24, v26                         // 0000000099BC: 7E30B51A
	v_permlane32_swap_b32_e32 v25, v27                         // 0000000099C0: 7E32B51B
	v_permlane32_swap_b32_e32 v28, v30                         // 0000000099C4: 7E38B51E
	v_permlane32_swap_b32_e32 v29, v31                         // 0000000099C8: 7E3AB51F
	v_permlane32_swap_b32_e32 v32, v34                         // 0000000099CC: 7E40B522
	v_permlane32_swap_b32_e32 v33, v35                         // 0000000099D0: 7E42B523
	v_add_f32_e32 v3, v188, v84                                // 0000000099D4: 0206A9BC
	v_add_f32_e32 v3, -4.0, v3                                 // 0000000099D8: 020606F7
	v_add_f32_e32 v3, -2.0, v3                                 // 0000000099DC: 020606F5
	v_mul_f32_e32 v3, 0x3f317218, v3                           // 0000000099E0: 0A0606FF 3F317218
	s_lshl_b32 s34, s33, 13                                    // 0000000099E8: 8E228D21
	v_xor_b32_e32 v36, v171, v82                               // 0000000099EC: 2A48A5AB
	s_mov_b32 s35, 0x20000                                     // 0000000099F0: BEA300FF 00020000
	v_lshl_or_b32 v37, v170, 8, s34                            // 0000000099F8: D2000025 008911AA
	v_lshlrev_b32_e32 v36, 4, v36                              // 000000009A00: 24484884
	v_or3_b32 v36, v37, v36, s35                               // 000000009A04: D2020024 008E4925
	ds_write_b128 v36, v[4:7]                                  // 000000009A0C: D9BE0000 00000424
	v_xor_b32_e32 v4, 32, v36                                  // 000000009A14: 2A0848A0
	ds_write_b128 v4, v[8:11]                                  // 000000009A18: D9BE0000 00000804
	v_xor_b32_e32 v4, 64, v36                                  // 000000009A20: 2A0848C0
	ds_write_b128 v4, v[12:15]                                 // 000000009A24: D9BE0000 00000C04
	v_xor_b32_e32 v4, 0x60, v36                                // 000000009A2C: 2A0848FF 00000060
	ds_write_b128 v4, v[16:19]                                 // 000000009A34: D9BE0000 00001004
	v_xor_b32_e32 v4, 0x80, v36                                // 000000009A3C: 2A0848FF 00000080
	ds_write_b128 v4, v[20:23]                                 // 000000009A44: D9BE0000 00001404
	v_xor_b32_e32 v4, 0xa0, v36                                // 000000009A4C: 2A0848FF 000000A0
	ds_write_b128 v4, v[24:27]                                 // 000000009A54: D9BE0000 00001804
	v_xor_b32_e32 v4, 0xc0, v36                                // 000000009A5C: 2A0848FF 000000C0
	ds_write_b128 v4, v[28:31]                                 // 000000009A64: D9BE0000 00001C04
	v_xor_b32_e32 v4, 0xe0, v36                                // 000000009A6C: 2A0848FF 000000E0
	ds_write_b128 v4, v[32:35]                                 // 000000009A74: D9BE0000 00002004
	v_xor_b32_e32 v5, v83, v82                                 // 000000009A7C: 2A0AA553
	v_lshlrev_b32_e32 v4, 8, v83                               // 000000009A80: 2408A688
	v_lshlrev_b32_e32 v5, 4, v5                                // 000000009A84: 240A0A84
	v_or3_b32 v4, v4, s34, v5                                  // 000000009A88: D2020004 04144504
	v_or_b32_e32 v5, 0x20000, v4                               // 000000009A90: 280A08FF 00020000
	ds_read_b128 v[12:15], v5                                  // 000000009A98: D9FE0000 0C000005
	v_xor_b32_e32 v6, 64, v5                                   // 000000009AA0: 2A0C0AC0
	ds_read_b128 v[16:19], v6 offset:1024                      // 000000009AA4: D9FE0400 10000006
	v_xor_b32_e32 v7, 0x80, v5                                 // 000000009AAC: 2A0E0AFF 00000080
	ds_read_b128 v[20:23], v7 offset:2048                      // 000000009AB4: D9FE0800 14000007
	v_xor_b32_e32 v5, 0xc0, v5                                 // 000000009ABC: 2A0A0AFF 000000C0
	ds_read_b128 v[24:27], v5 offset:3072                      // 000000009AC4: D9FE0C00 18000005
	v_or_b32_e32 v4, 0x21000, v4                               // 000000009ACC: 280808FF 00021000
	ds_read_b128 v[28:31], v4                                  // 000000009AD4: D9FE0000 1C000004
	ds_read_b128 v[32:35], v6 offset:5120                      // 000000009ADC: D9FE1400 20000006
	ds_read_b128 v[36:39], v7 offset:6144                      // 000000009AE4: D9FE1800 24000007
	ds_read_b128 v[40:43], v5 offset:7168                      // 000000009AEC: D9FE1C00 28000005
	v_add_u32_e32 v4, s3, v83                                  // 000000009AF4: 6808A603
	v_mul_lo_u32 v4, v4, s9                                    // 000000009AF8: D2850004 00001304
	v_lshl_add_u32 v4, v82, 4, v4                              // 000000009B00: D1FD0004 04110952
	s_lshl_b32 s34, s9, 2                                      // 000000009B08: 8E228209
	v_add_u32_e32 v5, s34, v4                                  // 000000009B0C: 680A0822
	v_add_u32_e32 v6, s34, v5                                  // 000000009B10: 680C0A22
	v_add_u32_e32 v7, s34, v6                                  // 000000009B14: 680E0C22
	v_add_u32_e32 v8, s34, v7                                  // 000000009B18: 68100E22
	v_add_u32_e32 v9, s34, v8                                  // 000000009B1C: 68121022
	v_add_u32_e32 v10, s34, v9                                 // 000000009B20: 68141222
	v_add_u32_e32 v11, s34, v10                                // 000000009B24: 68161422
	s_waitcnt lgkmcnt(7)                                       // 000000009B28: BF8CC77F
	global_store_dwordx4 v4, v[12:15], s[0:1]                  // 000000009B2C: DC7C8000 00000C04
	s_waitcnt lgkmcnt(6)                                       // 000000009B34: BF8CC67F
	global_store_dwordx4 v5, v[16:19], s[0:1]                  // 000000009B38: DC7C8000 00001005
	s_waitcnt lgkmcnt(5)                                       // 000000009B40: BF8CC57F
	global_store_dwordx4 v6, v[20:23], s[0:1]                  // 000000009B44: DC7C8000 00001406
	s_waitcnt lgkmcnt(4)                                       // 000000009B4C: BF8CC47F
	global_store_dwordx4 v7, v[24:27], s[0:1]                  // 000000009B50: DC7C8000 00001807
	s_waitcnt lgkmcnt(3)                                       // 000000009B58: BF8CC37F
	global_store_dwordx4 v8, v[28:31], s[0:1]                  // 000000009B5C: DC7C8000 00001C08
	s_waitcnt lgkmcnt(2)                                       // 000000009B64: BF8CC27F
	global_store_dwordx4 v9, v[32:35], s[0:1]                  // 000000009B68: DC7C8000 00002009
	s_waitcnt lgkmcnt(1)                                       // 000000009B70: BF8CC17F
	global_store_dwordx4 v10, v[36:39], s[0:1]                 // 000000009B74: DC7C8000 0000240A
	s_waitcnt lgkmcnt(0)                                       // 000000009B7C: BF8CC07F
	global_store_dwordx4 v11, v[40:43], s[0:1]                 // 000000009B80: DC7C8000 0000280B
	v_add_u32_e32 v4, s3, v170                                 // 000000009B88: 68095403
	v_lshlrev_b32_e32 v4, 2, v4                                // 000000009B8C: 24080882
	s_cmp_eq_u64 s[10:11], 0                                   // 000000009B90: BF12800A
	s_mov_b64 s[0:1], s[30:31]                                 // 000000009B94: BE80011E
	s_mov_b32 s3, s66                                          // 000000009B98: BE830042
	s_cbranch_scc1 57541                                       // 000000009B9C: BF85E0C5 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3b4>
	global_store_dword v4, v3, s[10:11]                        // 000000009BA0: DC708000 000A0304
	s_mov_b64 s[0:1], s[30:31]                                 // 000000009BA8: BE80011E
	s_mov_b32 s3, s66                                          // 000000009BAC: BE830042
	s_branch 57536                                             // 000000009BB0: BF82E0C0 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3b4>
	s_nop 15                                                   // 000000009BB4: BF80000F
	s_nop 3                                                    // 000000009BB8: BF800003
	v_rcp_f32_e32 v0, v186                                     // 000000009BBC: 7E0045BA
	v_log_f32_e32 v84, v186                                    // 000000009BC0: 7EA843BA
	s_nop 1                                                    // 000000009BC4: BF800001
	v_mul_f32_e32 v0, v182, v0                                 // 000000009BC8: 0A0001B6
	v_mul_f32_e32 v1, v66, v0                                  // 000000009BCC: 0A020142
	v_mul_f32_e32 v2, v67, v0                                  // 000000009BD0: 0A040143
	v_mul_f32_e32 v3, v68, v0                                  // 000000009BD4: 0A060144
	v_mul_f32_e32 v4, v69, v0                                  // 000000009BD8: 0A080145
	v_mul_f32_e32 v5, v70, v0                                  // 000000009BDC: 0A0A0146
	v_mul_f32_e32 v6, v71, v0                                  // 000000009BE0: 0A0C0147
	v_mul_f32_e32 v7, v72, v0                                  // 000000009BE4: 0A0E0148
	v_mul_f32_e32 v8, v73, v0                                  // 000000009BE8: 0A100149
	v_mul_f32_e32 v9, v74, v0                                  // 000000009BEC: 0A12014A
	v_mul_f32_e32 v10, v75, v0                                 // 000000009BF0: 0A14014B
	v_mul_f32_e32 v11, v76, v0                                 // 000000009BF4: 0A16014C
	v_mul_f32_e32 v12, v77, v0                                 // 000000009BF8: 0A18014D
	v_mul_f32_e32 v13, v78, v0                                 // 000000009BFC: 0A1A014E
	v_mul_f32_e32 v14, v79, v0                                 // 000000009C00: 0A1C014F
	v_mul_f32_e32 v15, v80, v0                                 // 000000009C04: 0A1E0150
	v_mul_f32_e32 v16, v81, v0                                 // 000000009C08: 0A200151
	v_mul_f32_e32 v17, v50, v0                                 // 000000009C0C: 0A220132
	v_mul_f32_e32 v50, v51, v0                                 // 000000009C10: 0A640133
	v_mul_f32_e32 v51, v52, v0                                 // 000000009C14: 0A660134
	v_mul_f32_e32 v52, v53, v0                                 // 000000009C18: 0A680135
	v_mul_f32_e32 v53, v54, v0                                 // 000000009C1C: 0A6A0136
	v_mul_f32_e32 v54, v55, v0                                 // 000000009C20: 0A6C0137
	v_mul_f32_e32 v55, v56, v0                                 // 000000009C24: 0A6E0138
	v_mul_f32_e32 v56, v57, v0                                 // 000000009C28: 0A700139
	v_mul_f32_e32 v57, v58, v0                                 // 000000009C2C: 0A72013A
	v_mul_f32_e32 v58, v59, v0                                 // 000000009C30: 0A74013B
	v_mul_f32_e32 v59, v60, v0                                 // 000000009C34: 0A76013C
	v_mul_f32_e32 v60, v61, v0                                 // 000000009C38: 0A78013D
	v_mul_f32_e32 v61, v62, v0                                 // 000000009C3C: 0A7A013E
	v_mul_f32_e32 v62, v63, v0                                 // 000000009C40: 0A7C013F
	v_mul_f32_e32 v63, v64, v0                                 // 000000009C44: 0A7E0140
	v_mul_f32_e32 v64, v65, v0                                 // 000000009C48: 0A800141
	v_mul_f32_e32 v34, v34, v0                                 // 000000009C4C: 0A440122
	v_mul_f32_e32 v35, v35, v0                                 // 000000009C50: 0A460123
	v_mul_f32_e32 v36, v36, v0                                 // 000000009C54: 0A480124
	v_mul_f32_e32 v37, v37, v0                                 // 000000009C58: 0A4A0125
	v_mul_f32_e32 v38, v38, v0                                 // 000000009C5C: 0A4C0126
	v_mul_f32_e32 v39, v39, v0                                 // 000000009C60: 0A4E0127
	v_mul_f32_e32 v40, v40, v0                                 // 000000009C64: 0A500128
	v_mul_f32_e32 v41, v41, v0                                 // 000000009C68: 0A520129
	v_mul_f32_e32 v42, v42, v0                                 // 000000009C6C: 0A54012A
	v_mul_f32_e32 v43, v43, v0                                 // 000000009C70: 0A56012B
	v_mul_f32_e32 v44, v44, v0                                 // 000000009C74: 0A58012C
	v_mul_f32_e32 v45, v45, v0                                 // 000000009C78: 0A5A012D
	v_mul_f32_e32 v46, v46, v0                                 // 000000009C7C: 0A5C012E
	v_mul_f32_e32 v47, v47, v0                                 // 000000009C80: 0A5E012F
	v_mul_f32_e32 v48, v48, v0                                 // 000000009C84: 0A600130
	v_mul_f32_e32 v49, v49, v0                                 // 000000009C88: 0A620131
	v_mul_f32_e32 v65, v18, v0                                 // 000000009C8C: 0A820112
	v_mul_f32_e32 v66, v19, v0                                 // 000000009C90: 0A840113
	v_mul_f32_e32 v67, v20, v0                                 // 000000009C94: 0A860114
	v_mul_f32_e32 v68, v21, v0                                 // 000000009C98: 0A880115
	v_mul_f32_e32 v69, v22, v0                                 // 000000009C9C: 0A8A0116
	v_mul_f32_e32 v70, v23, v0                                 // 000000009CA0: 0A8C0117
	v_mul_f32_e32 v71, v24, v0                                 // 000000009CA4: 0A8E0118
	v_mul_f32_e32 v72, v25, v0                                 // 000000009CA8: 0A900119
	v_mul_f32_e32 v73, v26, v0                                 // 000000009CAC: 0A92011A
	v_mul_f32_e32 v74, v27, v0                                 // 000000009CB0: 0A94011B
	v_mul_f32_e32 v75, v28, v0                                 // 000000009CB4: 0A96011C
	v_mul_f32_e32 v29, v29, v0                                 // 000000009CB8: 0A3A011D
	v_mul_f32_e32 v30, v30, v0                                 // 000000009CBC: 0A3C011E
	v_mul_f32_e32 v31, v31, v0                                 // 000000009CC0: 0A3E011F
	v_mul_f32_e32 v32, v32, v0                                 // 000000009CC4: 0A400120
	v_mul_f32_e32 v33, v33, v0                                 // 000000009CC8: 0A420121
	v_cvt_pk_bf16_f32 v0, v1, v2                               // 000000009CCC: D2680000 00020501
	v_cvt_pk_bf16_f32 v1, v3, v4                               // 000000009CD4: D2680001 00020903
	v_cvt_pk_bf16_f32 v2, v5, v6                               // 000000009CDC: D2680002 00020D05
	v_cvt_pk_bf16_f32 v3, v7, v8                               // 000000009CE4: D2680003 00021107
	v_cvt_pk_bf16_f32 v4, v9, v10                              // 000000009CEC: D2680004 00021509
	v_cvt_pk_bf16_f32 v5, v11, v12                             // 000000009CF4: D2680005 0002190B
	v_cvt_pk_bf16_f32 v6, v13, v14                             // 000000009CFC: D2680006 00021D0D
	v_cvt_pk_bf16_f32 v7, v15, v16                             // 000000009D04: D2680007 0002210F
	v_cvt_pk_bf16_f32 v8, v17, v50                             // 000000009D0C: D2680008 00026511
	v_cvt_pk_bf16_f32 v9, v51, v52                             // 000000009D14: D2680009 00026933
	v_cvt_pk_bf16_f32 v10, v53, v54                            // 000000009D1C: D268000A 00026D35
	v_cvt_pk_bf16_f32 v11, v55, v56                            // 000000009D24: D268000B 00027137
	v_cvt_pk_bf16_f32 v12, v57, v58                            // 000000009D2C: D268000C 00027539
	v_cvt_pk_bf16_f32 v13, v59, v60                            // 000000009D34: D268000D 0002793B
	v_cvt_pk_bf16_f32 v14, v61, v62                            // 000000009D3C: D268000E 00027D3D
	v_cvt_pk_bf16_f32 v15, v63, v64                            // 000000009D44: D268000F 0002813F
	v_cvt_pk_bf16_f32 v16, v34, v35                            // 000000009D4C: D2680010 00024722
	v_cvt_pk_bf16_f32 v17, v36, v37                            // 000000009D54: D2680011 00024B24
	v_cvt_pk_bf16_f32 v18, v38, v39                            // 000000009D5C: D2680012 00024F26
	v_cvt_pk_bf16_f32 v19, v40, v41                            // 000000009D64: D2680013 00025328
	v_cvt_pk_bf16_f32 v20, v42, v43                            // 000000009D6C: D2680014 0002572A
	v_cvt_pk_bf16_f32 v21, v44, v45                            // 000000009D74: D2680015 00025B2C
	v_cvt_pk_bf16_f32 v22, v46, v47                            // 000000009D7C: D2680016 00025F2E
	v_cvt_pk_bf16_f32 v23, v48, v49                            // 000000009D84: D2680017 00026330
	v_cvt_pk_bf16_f32 v24, v65, v66                            // 000000009D8C: D2680018 00028541
	v_cvt_pk_bf16_f32 v25, v67, v68                            // 000000009D94: D2680019 00028943
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 000000009D9C: D268001A 00028D45
	v_cvt_pk_bf16_f32 v27, v71, v72                            // 000000009DA4: D268001B 00029147
	v_cvt_pk_bf16_f32 v28, v73, v74                            // 000000009DAC: D268001C 00029549
	v_cvt_pk_bf16_f32 v29, v75, v29                            // 000000009DB4: D268001D 00023B4B
	v_cvt_pk_bf16_f32 v30, v30, v31                            // 000000009DBC: D268001E 00023F1E
	v_cvt_pk_bf16_f32 v31, v32, v33                            // 000000009DC4: D268001F 00024320
	v_permlane32_swap_b32_e32 v0, v2                           // 000000009DCC: 7E00B502
	v_permlane32_swap_b32_e32 v1, v3                           // 000000009DD0: 7E02B503
	v_permlane32_swap_b32_e32 v4, v6                           // 000000009DD4: 7E08B506
	v_permlane32_swap_b32_e32 v5, v7                           // 000000009DD8: 7E0AB507
	v_permlane32_swap_b32_e32 v8, v10                          // 000000009DDC: 7E10B50A
	v_permlane32_swap_b32_e32 v9, v11                          // 000000009DE0: 7E12B50B
	v_permlane32_swap_b32_e32 v12, v14                         // 000000009DE4: 7E18B50E
	v_permlane32_swap_b32_e32 v13, v15                         // 000000009DE8: 7E1AB50F
	v_permlane32_swap_b32_e32 v16, v18                         // 000000009DEC: 7E20B512
	v_permlane32_swap_b32_e32 v17, v19                         // 000000009DF0: 7E22B513
	v_permlane32_swap_b32_e32 v20, v22                         // 000000009DF4: 7E28B516
	v_permlane32_swap_b32_e32 v21, v23                         // 000000009DF8: 7E2AB517
	v_permlane32_swap_b32_e32 v24, v26                         // 000000009DFC: 7E30B51A
	v_permlane32_swap_b32_e32 v25, v27                         // 000000009E00: 7E32B51B
	v_permlane32_swap_b32_e32 v28, v30                         // 000000009E04: 7E38B51E
	v_permlane32_swap_b32_e32 v29, v31                         // 000000009E08: 7E3AB51F
	v_add_f32_e32 v32, v188, v84                               // 000000009E0C: 0240A9BC
	v_add_f32_e32 v32, -4.0, v32                               // 000000009E10: 024040F7
	v_add_f32_e32 v32, -2.0, v32                               // 000000009E14: 024040F5
	v_mul_f32_e32 v32, 0x3f317218, v32                         // 000000009E18: 0A4040FF 3F317218
	s_lshl_b32 s2, s33, 13                                     // 000000009E20: 8E028D21
	v_xor_b32_e32 v33, v171, v82                               // 000000009E24: 2A42A5AB
	s_mov_b32 s4, 0x20000                                      // 000000009E28: BE8400FF 00020000
	v_lshl_or_b32 v34, v170, 8, s2                             // 000000009E30: D2000022 000911AA
	v_lshlrev_b32_e32 v33, 4, v33                              // 000000009E38: 24424284
	v_or3_b32 v33, v34, v33, s4                                // 000000009E3C: D2020021 00124322
	ds_write_b128 v33, v[0:3]                                  // 000000009E44: D9BE0000 00000021
	v_xor_b32_e32 v0, 32, v33                                  // 000000009E4C: 2A0042A0
	ds_write_b128 v0, v[4:7]                                   // 000000009E50: D9BE0000 00000400
	v_xor_b32_e32 v0, 64, v33                                  // 000000009E58: 2A0042C0
	ds_write_b128 v0, v[8:11]                                  // 000000009E5C: D9BE0000 00000800
	v_xor_b32_e32 v0, 0x60, v33                                // 000000009E64: 2A0042FF 00000060
	ds_write_b128 v0, v[12:15]                                 // 000000009E6C: D9BE0000 00000C00
	v_xor_b32_e32 v0, 0x80, v33                                // 000000009E74: 2A0042FF 00000080
	ds_write_b128 v0, v[16:19]                                 // 000000009E7C: D9BE0000 00001000
	v_xor_b32_e32 v0, 0xa0, v33                                // 000000009E84: 2A0042FF 000000A0
	ds_write_b128 v0, v[20:23]                                 // 000000009E8C: D9BE0000 00001400
	v_xor_b32_e32 v0, 0xc0, v33                                // 000000009E94: 2A0042FF 000000C0
	ds_write_b128 v0, v[24:27]                                 // 000000009E9C: D9BE0000 00001800
	v_xor_b32_e32 v0, 0xe0, v33                                // 000000009EA4: 2A0042FF 000000E0
	ds_write_b128 v0, v[28:31]                                 // 000000009EAC: D9BE0000 00001C00
	v_xor_b32_e32 v1, v83, v82                                 // 000000009EB4: 2A02A553
	v_lshlrev_b32_e32 v0, 8, v83                               // 000000009EB8: 2400A688
	v_lshlrev_b32_e32 v1, 4, v1                                // 000000009EBC: 24020284
	v_or3_b32 v0, v0, s2, v1                                   // 000000009EC0: D2020000 04040500
	v_or_b32_e32 v1, 0x20000, v0                               // 000000009EC8: 280200FF 00020000
	ds_read_b128 v[8:11], v1                                   // 000000009ED0: D9FE0000 08000001
	v_xor_b32_e32 v2, 64, v1                                   // 000000009ED8: 2A0402C0
	ds_read_b128 v[12:15], v2 offset:1024                      // 000000009EDC: D9FE0400 0C000002
	v_xor_b32_e32 v3, 0x80, v1                                 // 000000009EE4: 2A0602FF 00000080
	ds_read_b128 v[16:19], v3 offset:2048                      // 000000009EEC: D9FE0800 10000003
	v_xor_b32_e32 v1, 0xc0, v1                                 // 000000009EF4: 2A0202FF 000000C0
	ds_read_b128 v[20:23], v1 offset:3072                      // 000000009EFC: D9FE0C00 14000001
	v_or_b32_e32 v0, 0x21000, v0                               // 000000009F04: 280000FF 00021000
	ds_read_b128 v[24:27], v0                                  // 000000009F0C: D9FE0000 18000000
	ds_read_b128 v[28:31], v2 offset:5120                      // 000000009F14: D9FE1400 1C000002
	ds_read_b128 v[34:37], v3 offset:6144                      // 000000009F1C: D9FE1800 22000003
	ds_read_b128 v[38:41], v1 offset:7168                      // 000000009F24: D9FE1C00 26000001
	v_add_u32_e32 v0, s3, v83                                  // 000000009F2C: 6800A603
	v_mul_lo_u32 v0, v0, s9                                    // 000000009F30: D2850000 00001300
	v_lshl_add_u32 v0, v82, 4, v0                              // 000000009F38: D1FD0000 04010952
	s_lshl_b32 s2, s9, 2                                       // 000000009F40: 8E028209
	v_add_u32_e32 v1, s2, v0                                   // 000000009F44: 68020002
	v_add_u32_e32 v2, s2, v1                                   // 000000009F48: 68040202
	v_add_u32_e32 v3, s2, v2                                   // 000000009F4C: 68060402
	v_add_u32_e32 v4, s2, v3                                   // 000000009F50: 68080602
	v_add_u32_e32 v5, s2, v4                                   // 000000009F54: 680A0802
	v_add_u32_e32 v6, s2, v5                                   // 000000009F58: 680C0A02
	v_add_u32_e32 v7, s2, v6                                   // 000000009F5C: 680E0C02
	s_waitcnt lgkmcnt(7)                                       // 000000009F60: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[0:1]                   // 000000009F64: DC7C8000 00000800
	s_waitcnt lgkmcnt(6)                                       // 000000009F6C: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[0:1]                  // 000000009F70: DC7C8000 00000C01
	s_waitcnt lgkmcnt(5)                                       // 000000009F78: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[0:1]                  // 000000009F7C: DC7C8000 00001002
	s_waitcnt lgkmcnt(4)                                       // 000000009F84: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[0:1]                  // 000000009F88: DC7C8000 00001403
	s_waitcnt lgkmcnt(3)                                       // 000000009F90: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[0:1]                  // 000000009F94: DC7C8000 00001804
	s_waitcnt lgkmcnt(2)                                       // 000000009F9C: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[0:1]                  // 000000009FA0: DC7C8000 00001C05
	s_waitcnt lgkmcnt(1)                                       // 000000009FA8: BF8CC17F
	global_store_dwordx4 v6, v[34:37], s[0:1]                  // 000000009FAC: DC7C8000 00002206
	s_waitcnt lgkmcnt(0)                                       // 000000009FB4: BF8CC07F
	global_store_dwordx4 v7, v[38:41], s[0:1]                  // 000000009FB8: DC7C8000 00002607
	v_add_u32_e32 v0, s3, v170                                 // 000000009FC0: 68015403
	v_lshlrev_b32_e32 v0, 2, v0                                // 000000009FC4: 24000082
	s_cmp_eq_u64 s[10:11], 0                                   // 000000009FC8: BF12800A
	s_cbranch_scc1 2                                           // 000000009FCC: BF850002 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x84d8>
	global_store_dword v0, v32, s[10:11]                       // 000000009FD0: DC708000 000A2000
	s_and_b64 s[0:1], s[34:35], exec                           // 000000009FD8: 86807E22
	s_cbranch_scc0 1                                           // 000000009FDC: BF840001 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x84e4>
	s_barrier                                                  // 000000009FE0: BF8A0000
	s_waitcnt vmcnt(0)                                         // 000000009FE4: BF8C0F70
	s_endpgm                                                   // 000000009FE8: BF810000
		...

000000000000a000 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE>:
	s_load_dwordx16 s[36:51], s[0:1], 0x0                      // 00000000A000: C0120900 00000000
	s_load_dwordx16 s[4:19], s[0:1], 0x40                      // 00000000A008: C0120100 00000040
	s_load_dwordx4 s[20:23], s[0:1], 0x80                      // 00000000A010: C00A0500 00000080
	s_load_dwordx2 s[24:25], s[0:1], 0x90                      // 00000000A018: C0060600 00000090
	v_and_b32_e32 v1, 63, v0                                   // 00000000A020: 260200BF
	v_and_b32_e32 v119, 31, v0                                 // 00000000A024: 26EE009F
	v_bfe_u32 v120, v0, 5, 1                                   // 00000000A028: D1C80078 02050B00
	s_movk_i32 s1, 0xe0                                        // 00000000A030: B00100E0
	v_lshlrev_b32_e32 v121, 8, v119                            // 00000000A034: 24F2EE88
	v_add_lshl_u32 v2, v120, v1, 5                             // 00000000A038: D1FE0002 02160378
	v_and_or_b32 v122, v2, s1, v121                            // 00000000A040: D201007A 05E40302
	v_add_u32_e32 v3, 64, v2                                   // 00000000A048: 680604C0
	v_add_u32_e32 v2, 0x80, v2                                 // 00000000A04C: 680404FF 00000080
	v_readfirstlane_b32 s0, v0                                 // 00000000A054: 7E000500
	v_and_or_b32 v123, v3, s1, v121                            // 00000000A058: D201007B 05E40303
	v_and_or_b32 v124, v2, s1, v121                            // 00000000A060: D201007C 05E40302
	s_waitcnt lgkmcnt(0)                                       // 00000000A068: BF8CC07F
	s_cmp_eq_u64 s[20:21], 0                                   // 00000000A06C: BF128014
	s_cbranch_scc1 14                                          // 00000000A070: BF85000E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xac>
	s_load_dword s1, s[20:21], 0x0                             // 00000000A074: C002004A 00000000
	s_cmp_eq_u64 s[22:23], 0                                   // 00000000A07C: BF128016
	s_cbranch_scc1 13                                          // 00000000A080: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb8>
	s_load_dword s3, s[22:23], 0x0                             // 00000000A084: C00200CB 00000000
	s_waitcnt lgkmcnt(0)                                       // 00000000A08C: BF8CC07F
	v_mov_b32_e32 v2, s3                                       // 00000000A090: 7E040203
	v_mul_f32_e32 v2, s1, v2                                   // 00000000A094: 0A040401
	s_cmp_eq_u64 s[24:25], 0                                   // 00000000A098: BF128018
	s_cbranch_scc1 10                                          // 00000000A09C: BF85000A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc8>
	s_load_dword s15, s[24:25], 0x0                            // 00000000A0A0: C00203CC 00000000
	s_branch 8                                                 // 00000000A0A8: BF820008 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xcc>
	s_mov_b32 s1, 1.0                                          // 00000000A0AC: BE8100F2
	s_cmp_eq_u64 s[22:23], 0                                   // 00000000A0B0: BF128016
	s_cbranch_scc0 65523                                       // 00000000A0B4: BF84FFF3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x84>
	s_waitcnt lgkmcnt(0)                                       // 00000000A0B8: BF8CC07F
	v_mov_b32_e32 v2, s1                                       // 00000000A0BC: 7E040201
	s_cmp_eq_u64 s[24:25], 0                                   // 00000000A0C0: BF128018
	s_cbranch_scc0 65526                                       // 00000000A0C4: BF84FFF6 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa0>
	s_mov_b32 s15, 1.0                                         // 00000000A0C8: BE8F00F2
	s_lshr_b32 s3, s0, 6                                       // 00000000A0CC: 8F038600
	v_and_b32_e32 v5, 1, v0                                    // 00000000A0D0: 260A0081
	v_mov_b32_e32 v125, 0x7f                                   // 00000000A0D4: 7EFA02FF 0000007F
	v_mov_b32_e32 v3, 0xc1000000                               // 00000000A0DC: 7E0602FF C1000000
	s_mov_b32 s60, 0xc2fe0000                                  // 00000000A0E4: BEBC00FF C2FE0000
	s_mov_b32 s61, 0x3e000000                                  // 00000000A0EC: BEBD00FF 3E000000
	v_mov_b32_e32 v126, 0xff800000                             // 00000000A0F4: 7EFC02FF FF800000
	v_bfe_u32 v4, v0, 1, 3                                     // 00000000A0FC: D1C80004 020D0300
	v_lshlrev_b32_e32 v6, 4, v5                                // 00000000A104: 240C0A84
	v_lshrrev_b32_e32 v3, 4, v0                                // 00000000A108: 20060084
	v_sub_u32_e32 v7, v4, v3                                   // 00000000A10C: 6A0E0704
	v_and_b32_e32 v7, 7, v7                                    // 00000000A110: 260E0E87
	v_cmp_gt_u32_e32 vcc, 6, v7                                // 00000000A114: 7D980E86
	s_mov_b32 s1, 0                                            // 00000000A118: BE810080
	s_nop 0                                                    // 00000000A11C: BF800000
	v_cndmask_b32_e32 v7, 0, v7, vcc                           // 00000000A120: 000E0E80
	v_lshlrev_b32_e32 v7, 5, v7                                // 00000000A124: 240E0E85
	v_or_b32_e32 v7, v7, v6                                    // 00000000A128: 280E0D07
	v_mad_u32_u24 v127, s6, v3, v7                             // 00000000A12C: D1C3007F 041E0606
	v_or_b32_e32 v7, 0x200, v0                                 // 00000000A134: 280E00FF 00000200
	v_lshrrev_b32_e32 v7, 4, v7                                // 00000000A13C: 200E0E84
	v_sub_u32_e32 v4, v4, v7                                   // 00000000A140: 6A080F04
	v_and_b32_e32 v4, 7, v4                                    // 00000000A144: 26080887
	v_cmp_gt_u32_e32 vcc, 6, v4                                // 00000000A148: 7D980886
	s_nop 1                                                    // 00000000A14C: BF800001
	v_cndmask_b32_e32 v4, 0, v4, vcc                           // 00000000A150: 00080880
	v_lshlrev_b32_e32 v4, 5, v4                                // 00000000A154: 24080885
	v_or_b32_e32 v4, v4, v6                                    // 00000000A158: 28080D04
	v_mad_u32_u24 v128, s6, v7, v4                             // 00000000A15C: D1C30080 04120E06
	v_bfe_u32 v4, v0, 7, 1                                     // 00000000A164: D1C80004 02050F00
	v_lshrrev_b32_e32 v5, 8, v0                                // 00000000A16C: 200A0088
	v_lshlrev_b32_e32 v10, 5, v4                               // 00000000A170: 24140885
	v_bfe_u32 v6, v0, 6, 1                                     // 00000000A174: D1C80006 02050D00
	v_lshl_or_b32 v12, v5, 2, v10                              // 00000000A17C: D200000C 04290505
	v_bfe_u32 v7, v0, 2, 1                                     // 00000000A184: D1C80007 02050500
	v_lshl_or_b32 v13, v6, 4, v12                              // 00000000A18C: D200000D 04310906
	v_and_b32_e32 v8, 3, v0                                    // 00000000A194: 26100083
	v_bfe_u32 v9, v0, 3, 3                                     // 00000000A198: D1C80009 020D0700
	v_lshl_or_b32 v14, v7, 3, v13                              // 00000000A1A0: D200000E 04350707
	v_lshlrev_b32_e32 v11, 4, v9                               // 00000000A1A8: 24161284
	v_or_b32_e32 v15, v14, v8                                  // 00000000A1AC: 281E110E
	v_mad_u32_u24 v129, s7, v15, v11                           // 00000000A1B0: D1C30081 042E1E07
	s_lshl_b32 s62, s3, 10                                     // 00000000A1B8: 8E3E8A03
	s_add_u32 s63, s62, 0x10000                                // 00000000A1BC: 803FFF3E 00010000
	s_cmp_ge_u32 s2, s49                                       // 00000000A1C4: BF093102
	s_cbranch_scc1 5079                                        // 00000000A1C8: BF8513D7 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5128>
	s_lshl_b32 s64, s6, 6                                      // 00000000A1CC: 8E408606
	s_lshr_b32 s65, s0, 8                                      // 00000000A1D0: 8F418800
	s_and_b32 s33, s3, 3                                       // 00000000A1D4: 86218303
	s_cmp_eq_u32 s4, 0                                         // 00000000A1D8: BF068004
	s_cselect_b32 s4, s3, s33                                  // 00000000A1DC: 85042103
	s_cselect_b32 s52, 0, s65                                  // 00000000A1E0: 85344180
	s_lshl_b32 s0, s2, 5                                       // 00000000A1E4: 8E008502
	s_load_dwordx8 s[16:23], s[46:47], s0 offset:0x0           // 00000000A1E8: C00E4417 00000000
	s_mul_i32 s9, s9, s52                                      // 00000000A1F0: 92093409
	s_mul_i32 s26, s6, s12                                     // 00000000A1F4: 921A0C06
	s_mul_i32 s30, s7, s12                                     // 00000000A1F8: 921E0C07
	s_mov_b32 s27, 0x110000                                    // 00000000A1FC: BE9B00FF 00110000
	s_waitcnt lgkmcnt(0)                                       // 00000000A204: BF8CC07F
	s_mov_b32 s0, s22                                          // 00000000A208: BE800016
	s_lshl_b64 s[0:1], s[0:1], 7                               // 00000000A20C: 8E808700
	s_add_u32 s3, s36, s18                                     // 00000000A210: 80031224
	s_addc_u32 s24, s37, s19                                   // 00000000A214: 82181325
	s_add_u32 s34, s3, s9                                      // 00000000A218: 80220903
	s_addc_u32 s35, s24, 0                                     // 00000000A21C: 82238018
	s_add_u32 s24, s38, s20                                    // 00000000A220: 80181426
	s_addc_u32 s25, s39, s21                                   // 00000000A224: 82191527
	s_add_u32 s28, s40, s0                                     // 00000000A228: 801C0028
	s_addc_u32 s29, s41, s1                                    // 00000000A22C: 821D0129
	s_not_b32 s0, s16                                          // 00000000A230: BE800410
	s_add_u32 s0, s50, s0                                      // 00000000A234: 80000032
	s_mul_i32 s1, s51, s0                                      // 00000000A238: 92010033
	s_lshl_b32 s0, s0, 5                                       // 00000000A23C: 8E008500
	s_add_u32 s0, s0, 32                                       // 00000000A240: 8000A000
	s_mul_i32 s0, s0, s51                                      // 00000000A244: 92003300
	s_add_u32 s1, s1, s4                                       // 00000000A248: 80010401
	s_add_u32 s0, s0, 32                                       // 00000000A24C: 8000A000
	s_lshr_b32 s12, s12, 6                                     // 00000000A250: 8F0C860C
	s_lshl_b32 s3, s1, 5                                       // 00000000A254: 8E038501
	s_lshr_b32 s0, s0, 6                                       // 00000000A258: 8F008600
	v_or_b32_e32 v4, s3, v119                                  // 00000000A25C: 2808EE03
	s_min_u32 s68, s12, s0                                     // 00000000A260: 83C4000C
	s_mov_b32 s31, s27                                         // 00000000A264: BE9F001B
	v_mul_lo_u32 v4, s5, v4                                    // 00000000A268: D2850004 00020805
	v_lshlrev_b32_e32 v130, 5, v120                            // 00000000A270: 2504F085
	v_add_u32_e32 v4, v130, v4                                 // 00000000A274: 68080982
	global_load_dwordx4 v[166:169], v4, s[34:35]               // 00000000A278: DC5C8000 A6220004
	global_load_dwordx4 v[170:173], v4, s[34:35] offset:16     // 00000000A280: DC5C8010 AA220004
	global_load_dwordx4 v[174:177], v4, s[34:35] offset:64     // 00000000A288: DC5C8040 AE220004
	global_load_dwordx4 v[178:181], v4, s[34:35] offset:80     // 00000000A290: DC5C8050 B2220004
	global_load_dwordx4 v[182:185], v4, s[34:35] offset:128    // 00000000A298: DC5C8080 B6220004
	global_load_dwordx4 v[186:189], v4, s[34:35] offset:144    // 00000000A2A0: DC5C8090 BA220004
	s_add_u32 m0, s62, 0                                       // 00000000A2A8: 807C803E
	s_nop 0                                                    // 00000000A2AC: BF800000
	buffer_load_dwordx4 v127, s[24:27], 0 offen lds            // 00000000A2B0: E05D1000 8006007F
	s_add_u32 m0, s62, 0x2000                                  // 00000000A2B8: 807CFF3E 00002000
	s_nop 0                                                    // 00000000A2C0: BF800000
	buffer_load_dwordx4 v128, s[24:27], 0 offen lds            // 00000000A2C4: E05D1000 80060080
	s_add_u32 m0, s63, 0                                       // 00000000A2CC: 807C803F
	s_cmp_lt_u32 s68, 2                                        // 00000000A2D0: BF0A8244
	buffer_load_dwordx4 v129, s[28:31], 0 offen lds            // 00000000A2D4: E05D1000 80070081
	s_cbranch_scc1 11                                          // 00000000A2DC: BF85000B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x30c>
	s_or_b32 s0, s62, 0x4000                                   // 00000000A2E0: 8700FF3E 00004000
	s_add_u32 m0, s0, 0                                        // 00000000A2E8: 807C8000
	s_nop 0                                                    // 00000000A2EC: BF800000
	buffer_load_dwordx4 v127, s[24:27], s64 offen lds          // 00000000A2F0: E05D1000 4006007F
	s_add_u32 m0, s0, 0x2000                                   // 00000000A2F8: 807CFF00 00002000
	s_nop 0                                                    // 00000000A300: BF800000
	buffer_load_dwordx4 v128, s[24:27], s64 offen lds          // 00000000A304: E05D1000 40060080
	v_lshrrev_b32_e32 v4, 2, v0                                // 00000000A30C: 20080082
	s_waitcnt vmcnt(0)                                         // 00000000A310: BF8C0F70
	s_barrier                                                  // 00000000A314: BF8A0000
	s_cmp_eq_u32 s65, 0                                        // 00000000A318: BF068041
	s_mov_b32 s35, 0                                           // 00000000A31C: BEA30080
	s_cbranch_scc1 1                                           // 00000000A320: BF850001 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x328>
	s_barrier                                                  // 00000000A324: BF8A0000
	s_mov_b32 s34, s23                                         // 00000000A328: BEA20017
	v_mul_f32_e32 v118, s48, v2                                // 00000000A32C: 0AEC0430
	v_mov_b32_e32 v2, s14                                      // 00000000A330: 7E04020E
	v_lshrrev_b32_e32 v5, 4, v119                              // 00000000A334: 200AEE84
	s_lshl_b64 s[0:1], s[34:35], 8                             // 00000000A338: 8E808822
	v_lshlrev_b32_e32 v6, 3, v0                                // 00000000A33C: 240C0083
	v_mul_f32_e32 v132, s15, v2                                // 00000000A340: 0B08040F
	v_and_or_b32 v2, v0, 32, v5                                // 00000000A344: D2010002 04154100
	s_add_u32 s0, s42, s0                                      // 00000000A34C: 8000002A
	s_mul_i32 s66, s10, s52                                    // 00000000A350: 9242340A
	s_mov_b32 s10, 0x10000                                     // 00000000A354: BE8A00FF 00010000
	v_and_b32_e32 v5, 0x78, v6                                 // 00000000A35C: 260A0CFF 00000078
	v_lshlrev_b32_e32 v2, 7, v2                                // 00000000A364: 24040487
	s_addc_u32 s1, s43, s1                                     // 00000000A368: 8201012B
	s_mul_i32 s67, s11, s52                                    // 00000000A36C: 9243340B
	v_or3_b32 v133, v2, v5, s10                                // 00000000A370: D2020085 002A0B02
	s_add_u32 s10, s0, s66                                     // 00000000A378: 800A4200
	s_addc_u32 s11, s1, 0                                      // 00000000A37C: 820B8001
	s_add_u32 s0, s67, s17                                     // 00000000A380: 80001143
	s_lshl_b32 s0, s0, 2                                       // 00000000A384: 8E008200
	s_add_u32 s31, s44, s0                                     // 00000000A388: 801F002C
	v_xor_b32_e32 v3, v3, v4                                   // 00000000A38C: 2A060903
	s_addc_u32 s34, s45, 0                                     // 00000000A390: 8222802D
	v_and_b32_e32 v3, 1, v3                                    // 00000000A394: 26060681
	s_cmp_eq_u64 s[44:45], 0                                   // 00000000A398: BF12802C
	v_mov_b32_e32 v4, 0x38383838                               // 00000000A39C: 7E0802FF 38383838
	v_cmp_eq_u32_e32 vcc, 0, v3                                // 00000000A3A4: 7D940680
	s_cselect_b64 s[14:15], -1, 0                              // 00000000A3A8: 858E80C1
	s_and_b64 s[0:1], s[14:15], exec                           // 00000000A3AC: 86807E0E
	v_cndmask_b32_e32 v98, 0, v4, vcc                          // 00000000A3B0: 00C40880
	v_lshrrev_b32_e32 v131, 3, v0                              // 00000000A3B4: 21060083
	s_mov_b32 s58, 0                                           // 00000000A3B8: BEBA0080
	v_mov_b32_e32 v99, v98                                     // 00000000A3BC: 7EC60362
	v_mov_b32_e32 v100, v98                                    // 00000000A3C0: 7EC80362
	v_mov_b32_e32 v101, v98                                    // 00000000A3C4: 7ECA0362
	v_mov_b32_e32 v102, v98                                    // 00000000A3C8: 7ECC0362
	v_mov_b32_e32 v103, v98                                    // 00000000A3CC: 7ECE0362
	v_mov_b32_e32 v104, v98                                    // 00000000A3D0: 7ED00362
	v_mov_b32_e32 v105, v98                                    // 00000000A3D4: 7ED20362
	s_cselect_b32 s57, 0, s34                                  // 00000000A3D8: 85392280
	s_cselect_b32 s56, 0, s31                                  // 00000000A3DC: 85381F80
	s_lshr_b32 s48, s3, 6                                      // 00000000A3E0: 8F308603
	s_lshl_b32 s34, s7, 6                                      // 00000000A3E4: 8E228607
	s_lshl_b32 s54, s35, 14                                    // 00000000A3E8: 8E368E23
	s_and_b32 s55, s54, 0xc000                                 // 00000000A3EC: 8637FF36 0000C000
	v_or_b32_e32 v2, s55, v122                                 // 00000000A3F4: 2804F437
	s_waitcnt vmcnt(8)                                         // 00000000A3F8: BF8C0F78
	v_or_b32_e32 v3, s55, v123                                 // 00000000A3FC: 2806F637
	ds_read_b128 v[4:7], v2                                    // 00000000A400: D9FE0000 04000002
	ds_read_b128 v[8:11], v2 offset:16                         // 00000000A408: D9FE0010 08000002
	ds_read_b128 v[52:55], v2 offset:8192                      // 00000000A410: D9FE2000 34000002
	ds_read_b128 v[56:59], v2 offset:8208                      // 00000000A418: D9FE2010 38000002
	ds_read_b128 v[44:47], v3                                  // 00000000A420: D9FE0000 2C000003
	ds_read_b128 v[48:51], v3 offset:16                        // 00000000A428: D9FE0010 30000003
	ds_read_b128 v[36:39], v3 offset:8192                      // 00000000A430: D9FE2000 24000003
	ds_read_b128 v[40:43], v3 offset:8208                      // 00000000A438: D9FE2010 28000003
	s_mov_b64 s[0:1], s[56:57]                                 // 00000000A440: BE800138
	s_cmp_eq_u32 s48, 0                                        // 00000000A444: BF068030
	s_mov_b32 s31, 0                                           // 00000000A448: BE9F0080
	s_cbranch_scc1 107                                         // 00000000A44C: BF85006B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5fc>
	s_setprio 1                                                // 00000000A450: BF8F0001
	s_waitcnt lgkmcnt(0)                                       // 00000000A454: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[18:33], v[4:11], v[166:173], 0// 00000000A458: D3AE0012 02034D04
	v_add_u32_e32 v34, s55, v124                               // 00000000A460: 6844F837
	ds_read_b128 v[60:63], v34                                 // 00000000A464: D9FE0000 3C000022
	ds_read_b128 v[64:67], v34 offset:16                       // 00000000A46C: D9FE0010 40000022
	v_mfma_f32_32x32x64_f8f6f4 v[2:17], v[52:59], v[166:173], 0// 00000000A474: D3AE0002 02034D34
	ds_read_b128 v[52:55], v34 offset:8192                     // 00000000A47C: D9FE2000 34000022
	ds_read_b128 v[56:59], v34 offset:8208                     // 00000000A484: D9FE2010 38000022
	v_mfma_f32_32x32x64_f8f6f4 v[18:33], v[44:51], v[174:181], v[18:33]// 00000000A48C: D3AE0012 044B5D2C
	v_mfma_f32_32x32x64_f8f6f4 v[2:17], v[36:43], v[174:181], v[2:17]// 00000000A494: D3AE0002 040B5D24
	s_waitcnt lgkmcnt(0)                                       // 00000000A49C: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[18:33], v[60:67], v[182:189], v[18:33]// 00000000A4A0: D3AE0012 044B6D3C
	v_mfma_f32_32x32x64_f8f6f4 v[2:17], v[52:59], v[182:189], v[2:17]// 00000000A4A8: D3AE0002 040B6D34
	s_nop 3                                                    // 00000000A4B0: BF800003
	v_max_f32_e32 v34, v18, v19                                // 00000000A4B4: 16442712
	v_max3_f32 v34, v20, v21, v34                              // 00000000A4B8: D1D30022 048A2B14
	v_max3_f32 v34, v22, v23, v34                              // 00000000A4C0: D1D30022 048A2F16
	v_max3_f32 v34, v24, v25, v34                              // 00000000A4C8: D1D30022 048A3318
	v_max3_f32 v34, v26, v27, v34                              // 00000000A4D0: D1D30022 048A371A
	v_max3_f32 v34, v28, v29, v34                              // 00000000A4D8: D1D30022 048A3B1C
	v_max3_f32 v34, v30, v31, v34                              // 00000000A4E0: D1D30022 048A3F1E
	v_max3_f32 v34, v32, v33, v34                              // 00000000A4E8: D1D30022 048A4320
	s_nop 7                                                    // 00000000A4F0: BF800007
	v_max_f32_e32 v35, v2, v3                                  // 00000000A4F4: 16460702
	v_max3_f32 v35, v4, v5, v35                                // 00000000A4F8: D1D30023 048E0B04
	v_max3_f32 v35, v6, v7, v35                                // 00000000A500: D1D30023 048E0F06
	v_max3_f32 v35, v8, v9, v35                                // 00000000A508: D1D30023 048E1308
	v_max3_f32 v35, v10, v11, v35                              // 00000000A510: D1D30023 048E170A
	v_max3_f32 v35, v12, v13, v35                              // 00000000A518: D1D30023 048E1B0C
	v_max3_f32 v35, v14, v15, v35                              // 00000000A520: D1D30023 048E1F0E
	v_max3_f32 v35, v16, v17, v35                              // 00000000A528: D1D30023 048E2310
	v_max_f32_e32 v34, v34, v35                                // 00000000A530: 16444722
	v_mov_b32_e32 v35, v34                                     // 00000000A534: 7E460322
	s_nop 1                                                    // 00000000A538: BF800001
	v_permlane32_swap_b32_e32 v34, v35                         // 00000000A53C: 7E44B523
	v_max_f32_e32 v34, v34, v35                                // 00000000A540: 16444722
	v_mul_f32_e32 v137, v118, v34                              // 00000000A544: 0B124576
	v_fma_f32 v34, v34, v118, -v137                            // 00000000A548: D1CB0022 8626ED22
	v_floor_f32_e32 v34, v34                                   // 00000000A550: 7E443F22
	v_med3_f32 v34, v34, s60, 0                                // 00000000A554: D1D60022 02007922
	v_cvt_i32_f32_e32 v35, v34                                 // 00000000A55C: 7E461122
	v_add_u32_e32 v136, 0x7f, v35                              // 00000000A560: 691046FF 0000007F
	v_lshlrev_b32_e32 v35, 23, v136                            // 00000000A568: 24471097
	v_add_f32_e32 v34, v137, v34                               // 00000000A56C: 02444589
	v_sub_f32_e32 v34, 0x40c00000, v34                         // 00000000A570: 044444FF 40C00000
	v_pk_fma_f32 v[96:97], v[32:33], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A578: D3B00060 0C8AED20
	v_pk_fma_f32 v[94:95], v[30:31], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A580: D3B0005E 0C8AED1E
	v_pk_fma_f32 v[92:93], v[28:29], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A588: D3B0005C 0C8AED1C
	v_pk_fma_f32 v[90:91], v[26:27], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A590: D3B0005A 0C8AED1A
	v_pk_fma_f32 v[88:89], v[24:25], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A598: D3B00058 0C8AED18
	v_pk_fma_f32 v[86:87], v[22:23], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A5A0: D3B00056 0C8AED16
	v_pk_fma_f32 v[84:85], v[20:21], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A5A8: D3B00054 0C8AED14
	v_pk_fma_f32 v[82:83], v[18:19], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A5B0: D3B00052 0C8AED12
	v_pk_fma_f32 v[80:81], v[16:17], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A5B8: D3B00050 0C8AED10
	v_pk_fma_f32 v[78:79], v[14:15], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A5C0: D3B0004E 0C8AED0E
	v_pk_fma_f32 v[76:77], v[12:13], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A5C8: D3B0004C 0C8AED0C
	v_pk_fma_f32 v[74:75], v[10:11], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A5D0: D3B0004A 0C8AED0A
	v_pk_fma_f32 v[72:73], v[8:9], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A5D8: D3B00048 0C8AED08
	v_pk_fma_f32 v[70:71], v[6:7], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A5E0: D3B00046 0C8AED06
	v_pk_fma_f32 v[68:69], v[4:5], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A5E8: D3B00044 0C8AED04
	v_pk_fma_f32 v[66:67], v[2:3], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A5F0: D3B00042 0C8AED02
	s_branch 288                                               // 00000000A5F8: BF820120 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa7c>
	s_setprio 1                                                // 00000000A5FC: BF8F0001
	s_waitcnt lgkmcnt(0)                                       // 00000000A600: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[18:33], v[4:11], v[166:173], 0// 00000000A604: D3AE0012 02034D04
	v_mfma_f32_32x32x64_f8f6f4 v[2:17], v[52:59], v[166:173], 0// 00000000A60C: D3AE0002 02034D34
	v_add_u32_e32 v34, s55, v124                               // 00000000A614: 6844F837
	ds_read_b128 v[60:63], v34                                 // 00000000A618: D9FE0000 3C000022
	ds_read_b128 v[64:67], v34 offset:16                       // 00000000A620: D9FE0010 40000022
	v_mfma_f32_32x32x64_f8f6f4 v[18:33], v[44:51], v[174:181], v[18:33]// 00000000A628: D3AE0012 044B5D2C
	ds_read_b128 v[52:55], v34 offset:8192                     // 00000000A630: D9FE2000 34000022
	ds_read_b128 v[56:59], v34 offset:8208                     // 00000000A638: D9FE2010 38000022
	v_mfma_f32_32x32x64_f8f6f4 v[2:17], v[36:43], v[174:181], v[2:17]// 00000000A640: D3AE0002 040B5D24
	s_waitcnt lgkmcnt(0)                                       // 00000000A648: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[18:33], v[60:67], v[182:189], v[18:33]// 00000000A64C: D3AE0012 044B6D3C
	v_mfma_f32_32x32x64_f8f6f4 v[2:17], v[52:59], v[182:189], v[2:17]// 00000000A654: D3AE0002 040B6D34
	s_sub_u32 s31, s3, s31                                     // 00000000A65C: 809F1F03
	s_sub_i32 s31, s31, 0                                      // 00000000A660: 819F801F
	s_cmp_ge_i32 s31, 32                                       // 00000000A664: BF03A01F
	s_cbranch_scc1 87                                          // 00000000A668: BF850057 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7c8>
	s_cmp_lt_i32 s31, 0                                        // 00000000A66C: BF04801F
	s_cbranch_scc1 68                                          // 00000000A670: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x784>
	v_add_u32_e32 v34, s31, v119                               // 00000000A674: 6844EE1F
	v_and_b32_e32 v35, 4, v131                                 // 00000000A678: 26470684
	v_sub_u32_e32 v34, v34, v35                                // 00000000A67C: 6A444722
	v_cmp_gt_i32_e32 vcc, 0, v34                               // 00000000A680: 7D884480
	s_nop 5                                                    // 00000000A684: BF800005
	v_cndmask_b32_e64 v18, v18, v126, vcc                      // 00000000A688: D1000012 01AAFD12
	v_cmp_gt_i32_e32 vcc, 1, v34                               // 00000000A690: 7D884481
	s_nop 1                                                    // 00000000A694: BF800001
	v_cndmask_b32_e64 v19, v19, v126, vcc                      // 00000000A698: D1000013 01AAFD13
	v_cmp_gt_i32_e32 vcc, 2, v34                               // 00000000A6A0: 7D884482
	s_nop 1                                                    // 00000000A6A4: BF800001
	v_cndmask_b32_e64 v20, v20, v126, vcc                      // 00000000A6A8: D1000014 01AAFD14
	v_cmp_gt_i32_e32 vcc, 3, v34                               // 00000000A6B0: 7D884483
	s_nop 1                                                    // 00000000A6B4: BF800001
	v_cndmask_b32_e64 v21, v21, v126, vcc                      // 00000000A6B8: D1000015 01AAFD15
	v_cmp_gt_i32_e32 vcc, 8, v34                               // 00000000A6C0: 7D884488
	s_nop 1                                                    // 00000000A6C4: BF800001
	v_cndmask_b32_e64 v22, v22, v126, vcc                      // 00000000A6C8: D1000016 01AAFD16
	v_cmp_gt_i32_e32 vcc, 9, v34                               // 00000000A6D0: 7D884489
	s_nop 1                                                    // 00000000A6D4: BF800001
	v_cndmask_b32_e64 v23, v23, v126, vcc                      // 00000000A6D8: D1000017 01AAFD17
	v_cmp_gt_i32_e32 vcc, 10, v34                              // 00000000A6E0: 7D88448A
	s_nop 1                                                    // 00000000A6E4: BF800001
	v_cndmask_b32_e64 v24, v24, v126, vcc                      // 00000000A6E8: D1000018 01AAFD18
	v_cmp_gt_i32_e32 vcc, 11, v34                              // 00000000A6F0: 7D88448B
	s_nop 1                                                    // 00000000A6F4: BF800001
	v_cndmask_b32_e64 v25, v25, v126, vcc                      // 00000000A6F8: D1000019 01AAFD19
	v_cmp_gt_i32_e32 vcc, 16, v34                              // 00000000A700: 7D884490
	s_nop 1                                                    // 00000000A704: BF800001
	v_cndmask_b32_e64 v26, v26, v126, vcc                      // 00000000A708: D100001A 01AAFD1A
	v_cmp_gt_i32_e32 vcc, 17, v34                              // 00000000A710: 7D884491
	s_nop 1                                                    // 00000000A714: BF800001
	v_cndmask_b32_e64 v27, v27, v126, vcc                      // 00000000A718: D100001B 01AAFD1B
	v_cmp_gt_i32_e32 vcc, 18, v34                              // 00000000A720: 7D884492
	s_nop 1                                                    // 00000000A724: BF800001
	v_cndmask_b32_e64 v28, v28, v126, vcc                      // 00000000A728: D100001C 01AAFD1C
	v_cmp_gt_i32_e32 vcc, 19, v34                              // 00000000A730: 7D884493
	s_nop 1                                                    // 00000000A734: BF800001
	v_cndmask_b32_e64 v29, v29, v126, vcc                      // 00000000A738: D100001D 01AAFD1D
	v_cmp_gt_i32_e32 vcc, 24, v34                              // 00000000A740: 7D884498
	s_nop 1                                                    // 00000000A744: BF800001
	v_cndmask_b32_e64 v30, v30, v126, vcc                      // 00000000A748: D100001E 01AAFD1E
	v_cmp_gt_i32_e32 vcc, 25, v34                              // 00000000A750: 7D884499
	s_nop 1                                                    // 00000000A754: BF800001
	v_cndmask_b32_e64 v31, v31, v126, vcc                      // 00000000A758: D100001F 01AAFD1F
	v_cmp_gt_i32_e32 vcc, 26, v34                              // 00000000A760: 7D88449A
	s_nop 1                                                    // 00000000A764: BF800001
	v_cndmask_b32_e64 v32, v32, v126, vcc                      // 00000000A768: D1000020 01AAFD20
	v_cmp_gt_i32_e32 vcc, 27, v34                              // 00000000A770: 7D88449B
	s_nop 1                                                    // 00000000A774: BF800001
	v_cndmask_b32_e64 v33, v33, v126, vcc                      // 00000000A778: D1000021 01AAFD21
	s_branch 17                                                // 00000000A780: BF820011 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7c8>
	s_nop 9                                                    // 00000000A784: BF800009
	v_mov_b32_e32 v18, v126                                    // 00000000A788: 7E24037E
	v_mov_b32_e32 v19, v126                                    // 00000000A78C: 7E26037E
	v_mov_b32_e32 v20, v126                                    // 00000000A790: 7E28037E
	v_mov_b32_e32 v21, v126                                    // 00000000A794: 7E2A037E
	v_mov_b32_e32 v22, v126                                    // 00000000A798: 7E2C037E
	v_mov_b32_e32 v23, v126                                    // 00000000A79C: 7E2E037E
	v_mov_b32_e32 v24, v126                                    // 00000000A7A0: 7E30037E
	v_mov_b32_e32 v25, v126                                    // 00000000A7A4: 7E32037E
	v_mov_b32_e32 v26, v126                                    // 00000000A7A8: 7E34037E
	v_mov_b32_e32 v27, v126                                    // 00000000A7AC: 7E36037E
	v_mov_b32_e32 v28, v126                                    // 00000000A7B0: 7E38037E
	v_mov_b32_e32 v29, v126                                    // 00000000A7B4: 7E3A037E
	v_mov_b32_e32 v30, v126                                    // 00000000A7B8: 7E3C037E
	v_mov_b32_e32 v31, v126                                    // 00000000A7BC: 7E3E037E
	v_mov_b32_e32 v32, v126                                    // 00000000A7C0: 7E40037E
	v_mov_b32_e32 v33, v126                                    // 00000000A7C4: 7E42037E
	s_mov_b32 s31, 0                                           // 00000000A7C8: BE9F0080
	s_sub_u32 s31, s3, s31                                     // 00000000A7CC: 809F1F03
	s_sub_i32 s31, s31, 32                                     // 00000000A7D0: 819FA01F
	s_cmp_ge_i32 s31, 32                                       // 00000000A7D4: BF03A01F
	s_cbranch_scc1 87                                          // 00000000A7D8: BF850057 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x938>
	s_cmp_lt_i32 s31, 0                                        // 00000000A7DC: BF04801F
	s_cbranch_scc1 68                                          // 00000000A7E0: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8f4>
	v_add_u32_e32 v34, s31, v119                               // 00000000A7E4: 6844EE1F
	v_and_b32_e32 v35, 4, v131                                 // 00000000A7E8: 26470684
	v_sub_u32_e32 v34, v34, v35                                // 00000000A7EC: 6A444722
	v_cmp_gt_i32_e32 vcc, 0, v34                               // 00000000A7F0: 7D884480
	s_nop 8                                                    // 00000000A7F4: BF800008
	v_cndmask_b32_e64 v2, v2, v126, vcc                        // 00000000A7F8: D1000002 01AAFD02
	v_cmp_gt_i32_e32 vcc, 1, v34                               // 00000000A800: 7D884481
	s_nop 1                                                    // 00000000A804: BF800001
	v_cndmask_b32_e64 v3, v3, v126, vcc                        // 00000000A808: D1000003 01AAFD03
	v_cmp_gt_i32_e32 vcc, 2, v34                               // 00000000A810: 7D884482
	s_nop 1                                                    // 00000000A814: BF800001
	v_cndmask_b32_e64 v4, v4, v126, vcc                        // 00000000A818: D1000004 01AAFD04
	v_cmp_gt_i32_e32 vcc, 3, v34                               // 00000000A820: 7D884483
	s_nop 1                                                    // 00000000A824: BF800001
	v_cndmask_b32_e64 v5, v5, v126, vcc                        // 00000000A828: D1000005 01AAFD05
	v_cmp_gt_i32_e32 vcc, 8, v34                               // 00000000A830: 7D884488
	s_nop 1                                                    // 00000000A834: BF800001
	v_cndmask_b32_e64 v6, v6, v126, vcc                        // 00000000A838: D1000006 01AAFD06
	v_cmp_gt_i32_e32 vcc, 9, v34                               // 00000000A840: 7D884489
	s_nop 1                                                    // 00000000A844: BF800001
	v_cndmask_b32_e64 v7, v7, v126, vcc                        // 00000000A848: D1000007 01AAFD07
	v_cmp_gt_i32_e32 vcc, 10, v34                              // 00000000A850: 7D88448A
	s_nop 1                                                    // 00000000A854: BF800001
	v_cndmask_b32_e64 v8, v8, v126, vcc                        // 00000000A858: D1000008 01AAFD08
	v_cmp_gt_i32_e32 vcc, 11, v34                              // 00000000A860: 7D88448B
	s_nop 1                                                    // 00000000A864: BF800001
	v_cndmask_b32_e64 v9, v9, v126, vcc                        // 00000000A868: D1000009 01AAFD09
	v_cmp_gt_i32_e32 vcc, 16, v34                              // 00000000A870: 7D884490
	s_nop 1                                                    // 00000000A874: BF800001
	v_cndmask_b32_e64 v10, v10, v126, vcc                      // 00000000A878: D100000A 01AAFD0A
	v_cmp_gt_i32_e32 vcc, 17, v34                              // 00000000A880: 7D884491
	s_nop 1                                                    // 00000000A884: BF800001
	v_cndmask_b32_e64 v11, v11, v126, vcc                      // 00000000A888: D100000B 01AAFD0B
	v_cmp_gt_i32_e32 vcc, 18, v34                              // 00000000A890: 7D884492
	s_nop 1                                                    // 00000000A894: BF800001
	v_cndmask_b32_e64 v12, v12, v126, vcc                      // 00000000A898: D100000C 01AAFD0C
	v_cmp_gt_i32_e32 vcc, 19, v34                              // 00000000A8A0: 7D884493
	s_nop 1                                                    // 00000000A8A4: BF800001
	v_cndmask_b32_e64 v13, v13, v126, vcc                      // 00000000A8A8: D100000D 01AAFD0D
	v_cmp_gt_i32_e32 vcc, 24, v34                              // 00000000A8B0: 7D884498
	s_nop 1                                                    // 00000000A8B4: BF800001
	v_cndmask_b32_e64 v14, v14, v126, vcc                      // 00000000A8B8: D100000E 01AAFD0E
	v_cmp_gt_i32_e32 vcc, 25, v34                              // 00000000A8C0: 7D884499
	s_nop 1                                                    // 00000000A8C4: BF800001
	v_cndmask_b32_e64 v15, v15, v126, vcc                      // 00000000A8C8: D100000F 01AAFD0F
	v_cmp_gt_i32_e32 vcc, 26, v34                              // 00000000A8D0: 7D88449A
	s_nop 1                                                    // 00000000A8D4: BF800001
	v_cndmask_b32_e64 v16, v16, v126, vcc                      // 00000000A8D8: D1000010 01AAFD10
	v_cmp_gt_i32_e32 vcc, 27, v34                              // 00000000A8E0: 7D88449B
	s_nop 1                                                    // 00000000A8E4: BF800001
	v_cndmask_b32_e64 v17, v17, v126, vcc                      // 00000000A8E8: D1000011 01AAFD11
	s_branch 17                                                // 00000000A8F0: BF820011 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x938>
	s_nop 12                                                   // 00000000A8F4: BF80000C
	v_mov_b32_e32 v2, v126                                     // 00000000A8F8: 7E04037E
	v_mov_b32_e32 v3, v126                                     // 00000000A8FC: 7E06037E
	v_mov_b32_e32 v4, v126                                     // 00000000A900: 7E08037E
	v_mov_b32_e32 v5, v126                                     // 00000000A904: 7E0A037E
	v_mov_b32_e32 v6, v126                                     // 00000000A908: 7E0C037E
	v_mov_b32_e32 v7, v126                                     // 00000000A90C: 7E0E037E
	v_mov_b32_e32 v8, v126                                     // 00000000A910: 7E10037E
	v_mov_b32_e32 v9, v126                                     // 00000000A914: 7E12037E
	v_mov_b32_e32 v10, v126                                    // 00000000A918: 7E14037E
	v_mov_b32_e32 v11, v126                                    // 00000000A91C: 7E16037E
	v_mov_b32_e32 v12, v126                                    // 00000000A920: 7E18037E
	v_mov_b32_e32 v13, v126                                    // 00000000A924: 7E1A037E
	v_mov_b32_e32 v14, v126                                    // 00000000A928: 7E1C037E
	v_mov_b32_e32 v15, v126                                    // 00000000A92C: 7E1E037E
	v_mov_b32_e32 v16, v126                                    // 00000000A930: 7E20037E
	v_mov_b32_e32 v17, v126                                    // 00000000A934: 7E22037E
	v_max_f32_e32 v34, v18, v19                                // 00000000A938: 16442712
	v_max3_f32 v34, v20, v21, v34                              // 00000000A93C: D1D30022 048A2B14
	v_max3_f32 v34, v22, v23, v34                              // 00000000A944: D1D30022 048A2F16
	v_max3_f32 v34, v24, v25, v34                              // 00000000A94C: D1D30022 048A3318
	v_max3_f32 v34, v26, v27, v34                              // 00000000A954: D1D30022 048A371A
	v_max3_f32 v34, v28, v29, v34                              // 00000000A95C: D1D30022 048A3B1C
	v_max3_f32 v34, v30, v31, v34                              // 00000000A964: D1D30022 048A3F1E
	v_max3_f32 v34, v32, v33, v34                              // 00000000A96C: D1D30022 048A4320
	s_nop 6                                                    // 00000000A974: BF800006
	v_max_f32_e32 v35, v2, v3                                  // 00000000A978: 16460702
	v_max3_f32 v35, v4, v5, v35                                // 00000000A97C: D1D30023 048E0B04
	v_max3_f32 v35, v6, v7, v35                                // 00000000A984: D1D30023 048E0F06
	v_max3_f32 v35, v8, v9, v35                                // 00000000A98C: D1D30023 048E1308
	v_max3_f32 v35, v10, v11, v35                              // 00000000A994: D1D30023 048E170A
	v_max3_f32 v35, v12, v13, v35                              // 00000000A99C: D1D30023 048E1B0C
	v_max3_f32 v35, v14, v15, v35                              // 00000000A9A4: D1D30023 048E1F0E
	v_max3_f32 v35, v16, v17, v35                              // 00000000A9AC: D1D30023 048E2310
	v_max_f32_e32 v34, v34, v35                                // 00000000A9B4: 16444722
	v_mov_b32_e32 v35, v34                                     // 00000000A9B8: 7E460322
	s_nop 1                                                    // 00000000A9BC: BF800001
	v_permlane32_swap_b32_e32 v34, v35                         // 00000000A9C0: 7E44B523
	v_max_f32_e32 v34, v34, v35                                // 00000000A9C4: 16444722
	v_mul_f32_e32 v137, v118, v34                              // 00000000A9C8: 0B124576
	v_fma_f32 v34, v34, v118, -v137                            // 00000000A9CC: D1CB0022 8626ED22
	v_floor_f32_e32 v34, v34                                   // 00000000A9D4: 7E443F22
	v_med3_f32 v34, v34, s60, 0                                // 00000000A9D8: D1D60022 02007922
	v_cvt_i32_f32_e32 v35, v34                                 // 00000000A9E0: 7E461122
	v_add_u32_e32 v136, 0x7f, v35                              // 00000000A9E4: 691046FF 0000007F
	v_lshlrev_b32_e32 v35, 23, v136                            // 00000000A9EC: 24471097
	v_add_f32_e32 v34, v137, v34                               // 00000000A9F0: 02444589
	v_sub_f32_e32 v34, 0x40c00000, v34                         // 00000000A9F4: 044444FF 40C00000
	v_pk_fma_f32 v[96:97], v[32:33], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000A9FC: D3B00060 0C8AED20
	v_pk_fma_f32 v[94:95], v[30:31], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AA04: D3B0005E 0C8AED1E
	v_pk_fma_f32 v[92:93], v[28:29], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AA0C: D3B0005C 0C8AED1C
	v_pk_fma_f32 v[90:91], v[26:27], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AA14: D3B0005A 0C8AED1A
	v_pk_fma_f32 v[88:89], v[24:25], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AA1C: D3B00058 0C8AED18
	v_pk_fma_f32 v[86:87], v[22:23], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AA24: D3B00056 0C8AED16
	v_pk_fma_f32 v[84:85], v[20:21], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AA2C: D3B00054 0C8AED14
	v_pk_fma_f32 v[82:83], v[18:19], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AA34: D3B00052 0C8AED12
	v_pk_fma_f32 v[80:81], v[16:17], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AA3C: D3B00050 0C8AED10
	v_pk_fma_f32 v[78:79], v[14:15], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AA44: D3B0004E 0C8AED0E
	v_pk_fma_f32 v[76:77], v[12:13], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AA4C: D3B0004C 0C8AED0C
	v_pk_fma_f32 v[74:75], v[10:11], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AA54: D3B0004A 0C8AED0A
	v_pk_fma_f32 v[72:73], v[8:9], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AA5C: D3B00048 0C8AED08
	v_pk_fma_f32 v[70:71], v[6:7], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AA64: D3B00046 0C8AED06
	v_pk_fma_f32 v[68:69], v[4:5], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AA6C: D3B00044 0C8AED04
	v_pk_fma_f32 v[66:67], v[2:3], v[118:119], v[34:35] op_sel_hi:[1,0,0]// 00000000AA74: D3B00042 0C8AED02
	s_waitcnt vmcnt(0)                                         // 00000000AA7C: BF8C0F70
	s_cmp_eq_u32 s65, 0                                        // 00000000AA80: BF068041
	s_cselect_b64 s[52:53], -1, 0                              // 00000000AA84: 85B480C1
	s_cmp_lg_u32 s65, 0                                        // 00000000AA88: BF078041
	s_mov_b32 s31, s27                                         // 00000000AA8C: BE9F001B
	v_mov_b32_e32 v50, 0                                       // 00000000AA90: 7E640280
	v_mov_b32_e32 v51, 0                                       // 00000000AA94: 7E660280
	v_mov_b32_e32 v52, 0                                       // 00000000AA98: 7E680280
	v_mov_b32_e32 v53, 0                                       // 00000000AA9C: 7E6A0280
	v_mov_b32_e32 v54, 0                                       // 00000000AAA0: 7E6C0280
	v_mov_b32_e32 v55, 0                                       // 00000000AAA4: 7E6E0280
	v_mov_b32_e32 v56, 0                                       // 00000000AAA8: 7E700280
	v_mov_b32_e32 v57, 0                                       // 00000000AAAC: 7E720280
	v_mov_b32_e32 v58, 0                                       // 00000000AAB0: 7E740280
	v_mov_b32_e32 v59, 0                                       // 00000000AAB4: 7E760280
	v_mov_b32_e32 v60, 0                                       // 00000000AAB8: 7E780280
	v_mov_b32_e32 v61, 0                                       // 00000000AABC: 7E7A0280
	v_mov_b32_e32 v62, 0                                       // 00000000AAC0: 7E7C0280
	v_mov_b32_e32 v63, 0                                       // 00000000AAC4: 7E7E0280
	v_mov_b32_e32 v64, 0                                       // 00000000AAC8: 7E800280
	v_mov_b32_e32 v65, 0                                       // 00000000AACC: 7E820280
	v_mov_b32_e32 v34, 0                                       // 00000000AAD0: 7E440280
	v_mov_b32_e32 v35, 0                                       // 00000000AAD4: 7E460280
	v_mov_b32_e32 v36, 0                                       // 00000000AAD8: 7E480280
	v_mov_b32_e32 v37, 0                                       // 00000000AADC: 7E4A0280
	v_mov_b32_e32 v38, 0                                       // 00000000AAE0: 7E4C0280
	v_mov_b32_e32 v39, 0                                       // 00000000AAE4: 7E4E0280
	v_mov_b32_e32 v40, 0                                       // 00000000AAE8: 7E500280
	v_mov_b32_e32 v41, 0                                       // 00000000AAEC: 7E520280
	v_mov_b32_e32 v42, 0                                       // 00000000AAF0: 7E540280
	v_mov_b32_e32 v43, 0                                       // 00000000AAF4: 7E560280
	v_mov_b32_e32 v44, 0                                       // 00000000AAF8: 7E580280
	v_mov_b32_e32 v45, 0                                       // 00000000AAFC: 7E5A0280
	v_mov_b32_e32 v46, 0                                       // 00000000AB00: 7E5C0280
	v_mov_b32_e32 v47, 0                                       // 00000000AB04: 7E5E0280
	v_mov_b32_e32 v48, 0                                       // 00000000AB08: 7E600280
	v_mov_b32_e32 v49, 0                                       // 00000000AB0C: 7E620280
	v_mov_b32_e32 v18, 0                                       // 00000000AB10: 7E240280
	v_mov_b32_e32 v19, 0                                       // 00000000AB14: 7E260280
	v_mov_b32_e32 v20, 0                                       // 00000000AB18: 7E280280
	v_mov_b32_e32 v21, 0                                       // 00000000AB1C: 7E2A0280
	v_mov_b32_e32 v22, 0                                       // 00000000AB20: 7E2C0280
	v_mov_b32_e32 v23, 0                                       // 00000000AB24: 7E2E0280
	v_mov_b32_e32 v24, 0                                       // 00000000AB28: 7E300280
	v_mov_b32_e32 v25, 0                                       // 00000000AB2C: 7E320280
	v_mov_b32_e32 v26, 0                                       // 00000000AB30: 7E340280
	v_mov_b32_e32 v27, 0                                       // 00000000AB34: 7E360280
	v_mov_b32_e32 v28, 0                                       // 00000000AB38: 7E380280
	v_mov_b32_e32 v29, 0                                       // 00000000AB3C: 7E3A0280
	v_mov_b32_e32 v30, 0                                       // 00000000AB40: 7E3C0280
	v_mov_b32_e32 v31, 0                                       // 00000000AB44: 7E3E0280
	v_mov_b32_e32 v32, 0                                       // 00000000AB48: 7E400280
	v_mov_b32_e32 v33, 0                                       // 00000000AB4C: 7E420280
	v_mov_b32_e32 v2, 0                                        // 00000000AB50: 7E040280
	v_mov_b32_e32 v3, 0                                        // 00000000AB54: 7E060280
	v_mov_b32_e32 v4, 0                                        // 00000000AB58: 7E080280
	v_mov_b32_e32 v5, 0                                        // 00000000AB5C: 7E0A0280
	v_mov_b32_e32 v6, 0                                        // 00000000AB60: 7E0C0280
	v_mov_b32_e32 v7, 0                                        // 00000000AB64: 7E0E0280
	v_mov_b32_e32 v8, 0                                        // 00000000AB68: 7E100280
	v_mov_b32_e32 v9, 0                                        // 00000000AB6C: 7E120280
	v_mov_b32_e32 v10, 0                                       // 00000000AB70: 7E140280
	v_mov_b32_e32 v11, 0                                       // 00000000AB74: 7E160280
	v_mov_b32_e32 v12, 0                                       // 00000000AB78: 7E180280
	v_mov_b32_e32 v13, 0                                       // 00000000AB7C: 7E1A0280
	v_mov_b32_e32 v14, 0                                       // 00000000AB80: 7E1C0280
	v_mov_b32_e32 v15, 0                                       // 00000000AB84: 7E1E0280
	v_mov_b32_e32 v16, 0                                       // 00000000AB88: 7E200280
	v_mov_b32_e32 v17, 0                                       // 00000000AB8C: 7E220280
	s_cbranch_scc1 37                                          // 00000000AB90: BF850025 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc28>
	s_cmp_ge_u32 s68, 2                                        // 00000000AB94: BF098244
	s_cbranch_scc1 59                                          // 00000000AB98: BF85003B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc88>
	s_cmp_ge_u32 s68, 3                                        // 00000000AB9C: BF098344
	s_cbranch_scc1 75                                          // 00000000ABA0: BF85004B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xcd0>
	s_cmp_lt_u32 s68, 4                                        // 00000000ABA4: BF0A8444
	s_cbranch_scc1 30                                          // 00000000ABA8: BF85001E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc24>
	s_add_u32 s54, s54, 0xc000                                 // 00000000ABAC: 8036FF36 0000C000
	s_and_b32 s54, s54, 0xc000                                 // 00000000ABB4: 8636FF36 0000C000
	s_mul_i32 s55, s6, 0xc0                                    // 00000000ABBC: 9237FF06 000000C0
	s_or_b32 s54, s62, s54                                     // 00000000ABC4: 8736363E
	s_add_u32 m0, s54, 0                                       // 00000000ABC8: 807C8036
	s_mul_i32 s56, s6, 0xd0                                    // 00000000ABCC: 9238FF06 000000D0
	buffer_load_dwordx4 v127, s[24:27], s55 offen lds          // 00000000ABD4: E05D1000 3706007F
	s_add_u32 m0, s54, 0x1000                                  // 00000000ABDC: 807CFF36 00001000
	s_mul_i32 s57, s6, 0xe0                                    // 00000000ABE4: 9239FF06 000000E0
	s_mul_i32 s59, s6, 0xf0                                    // 00000000ABEC: 923BFF06 000000F0
	buffer_load_dwordx4 v127, s[24:27], s56 offen lds          // 00000000ABF4: E05D1000 3806007F
	s_add_u32 m0, s54, 0x2000                                  // 00000000ABFC: 807CFF36 00002000
	s_nop 0                                                    // 00000000AC04: BF800000
	buffer_load_dwordx4 v127, s[24:27], s57 offen lds          // 00000000AC08: E05D1000 3906007F
	s_add_u32 m0, s54, 0x3000                                  // 00000000AC10: 807CFF36 00003000
	s_nop 0                                                    // 00000000AC18: BF800000
	buffer_load_dwordx4 v127, s[24:27], s59 offen lds          // 00000000AC1C: E05D1000 3B06007F
	s_waitcnt vmcnt(0)                                         // 00000000AC24: BF8C0F70
	s_barrier                                                  // 00000000AC28: BF8A0000
	s_add_u32 s70, s68, -1                                     // 00000000AC2C: 8046C144
	s_lshl_b32 s56, s6, 8                                      // 00000000AC30: 8E388806
	s_lshl_b32 s57, s7, 7                                      // 00000000AC34: 8E398707
	s_mul_i32 s69, s70, s64                                    // 00000000AC38: 92454046
	s_cmp_lt_i32 s35, 1                                        // 00000000AC3C: BF048123
	s_mul_i32 s70, s70, s34                                    // 00000000AC40: 92462246
	s_cbranch_scc1 5                                           // 00000000AC44: BF850005 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc5c>
	s_cmp_lt_i32 s35, 2                                        // 00000000AC48: BF048223
	s_cbranch_scc0 8                                           // 00000000AC4C: BF840008 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc70>
	s_mov_b32 s59, 0                                           // 00000000AC50: BEBB0080
	v_mov_b32_e32 v135, 0                                      // 00000000AC54: 7F0E0280
	s_branch 408                                               // 00000000AC58: BF820198 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x12bc>
	s_cmp_lg_u32 s35, 0                                        // 00000000AC5C: BF078023
	s_mov_b32 s59, 0                                           // 00000000AC60: BEBB0080
	s_cbranch_scc0 58                                          // 00000000AC64: BF84003A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd50>
	v_mov_b32_e32 v135, 0                                      // 00000000AC68: 7F0E0280
	s_branch 1090                                              // 00000000AC6C: BF820442 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1d78>
	s_cmp_eq_u32 s35, 2                                        // 00000000AC70: BF068223
	s_mov_b32 s59, 0                                           // 00000000AC74: BEBB0080
	s_cbranch_scc0 51                                          // 00000000AC78: BF840033 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd48>
	v_mov_b32_e32 v135, 0                                      // 00000000AC7C: 7F0E0280
	v_mov_b32_e32 v134, v137                                   // 00000000AC80: 7F0C0389
	s_branch 741                                               // 00000000AC84: BF8202E5 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x181c>
	s_lshl_b32 s56, s35, 13                                    // 00000000AC88: 8E388D23
	s_addk_i32 s56, 0x2000                                     // 00000000AC8C: B7382000
	s_and_b32 s56, s56, 0x6000                                 // 00000000AC90: 8638FF38 00006000
	s_mul_i32 s57, s7, 0x44                                    // 00000000AC98: 9239FF07 00000044
	s_add_u32 s56, s63, s56                                    // 00000000ACA0: 8038383F
	s_add_u32 m0, s56, 0                                       // 00000000ACA4: 807C8038
	s_nop 0                                                    // 00000000ACA8: BF800000
	buffer_load_dwordx4 v129, s[28:31], s34 offen lds          // 00000000ACAC: E05D1000 22070081
	s_add_u32 m0, s56, 0x1000                                  // 00000000ACB4: 807CFF38 00001000
	s_nop 0                                                    // 00000000ACBC: BF800000
	buffer_load_dwordx4 v129, s[28:31], s57 offen lds          // 00000000ACC0: E05D1000 39070081
	s_cmp_lt_u32 s68, 3                                        // 00000000ACC8: BF0A8344
	s_cbranch_scc1 65461                                       // 00000000ACCC: BF85FFB5 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xba4>
	s_xor_b32 s55, s55, 0x8000                                 // 00000000ACD0: 8837FF37 00008000
	s_lshl_b32 s56, s6, 7                                      // 00000000ACD8: 8E388706
	s_add_u32 s55, s62, s55                                    // 00000000ACDC: 8037373E
	s_add_u32 m0, s55, 0                                       // 00000000ACE0: 807C8037
	s_mul_i32 s57, s6, 0x90                                    // 00000000ACE4: 9239FF06 00000090
	buffer_load_dwordx4 v127, s[24:27], s56 offen lds          // 00000000ACEC: E05D1000 3806007F
	s_add_u32 m0, s55, 0x1000                                  // 00000000ACF4: 807CFF37 00001000
	s_mul_i32 s59, s6, 0xa0                                    // 00000000ACFC: 923BFF06 000000A0
	s_mul_i32 s69, s6, 0xb0                                    // 00000000AD04: 9245FF06 000000B0
	buffer_load_dwordx4 v127, s[24:27], s57 offen lds          // 00000000AD0C: E05D1000 3906007F
	s_add_u32 m0, s55, 0x2000                                  // 00000000AD14: 807CFF37 00002000
	s_nop 0                                                    // 00000000AD1C: BF800000
	buffer_load_dwordx4 v127, s[24:27], s59 offen lds          // 00000000AD20: E05D1000 3B06007F
	s_add_u32 m0, s55, 0x3000                                  // 00000000AD28: 807CFF37 00003000
	s_nop 0                                                    // 00000000AD30: BF800000
	buffer_load_dwordx4 v127, s[24:27], s69 offen lds          // 00000000AD34: E05D1000 4506007F
	s_cmp_lt_u32 s68, 4                                        // 00000000AD3C: BF0A8444
	s_cbranch_scc1 65464                                       // 00000000AD40: BF85FFB8 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc24>
	s_branch 65433                                             // 00000000AD44: BF82FF99 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xbac>
	v_mov_b32_e32 v135, 0                                      // 00000000AD48: 7F0E0280
	s_branch 1034                                              // 00000000AD4C: BF82040A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1d78>
	v_mov_b32_e32 v135, 0                                      // 00000000AD50: 7F0E0280
	s_mov_b32 s59, s35                                         // 00000000AD54: BEBB0023
	v_mov_b32_e32 v134, v137                                   // 00000000AD58: 7F0C0389
	s_nop 0                                                    // 00000000AD5C: BF800000
	s_add_u32 s54, s59, 1                                      // 00000000AD60: 8036813B
	s_cmp_ge_u32 s54, s48                                      // 00000000AD64: BF093036
	s_cbranch_scc1 1373                                        // 00000000AD68: BF85055D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x22e0>
	s_setprio 0                                                // 00000000AD6C: BF8F0000
	v_exp_f32_e32 v82, v82                                     // 00000000AD70: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000AD74: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000AD78: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000AD7C: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000AD80: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000AD84: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000AD88: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000AD8C: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000AD90: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000AD94: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000AD98: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000AD9C: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000ADA0: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000ADA4: 7EBE415F
	v_exp_f32_e32 v96, v96                                     // 00000000ADA8: 7EC04160
	v_exp_f32_e32 v97, v97                                     // 00000000ADAC: 7EC24161
	v_cvt_pk_fp8_f32 v106, v82, v83                            // 00000000ADB0: D2A2006A 0002A752
	v_cvt_pk_fp8_f32 v106, v84, v85 op_sel:[0,0,1]             // 00000000ADB8: D2A2406A 0002AB54
	v_cvt_pk_fp8_f32 v107, v86, v87                            // 00000000ADC0: D2A2006B 0002AF56
	v_cvt_pk_fp8_f32 v107, v88, v89 op_sel:[0,0,1]             // 00000000ADC8: D2A2406B 0002B358
	v_exp_f32_e32 v66, v66                                     // 00000000ADD0: 7E844142
	v_cvt_pk_fp8_f32 v108, v90, v91                            // 00000000ADD4: D2A2006C 0002B75A
	v_exp_f32_e32 v67, v67                                     // 00000000ADDC: 7E864143
	v_cvt_pk_fp8_f32 v108, v92, v93 op_sel:[0,0,1]             // 00000000ADE0: D2A2406C 0002BB5C
	v_exp_f32_e32 v68, v68                                     // 00000000ADE8: 7E884144
	v_cvt_pk_fp8_f32 v109, v94, v95                            // 00000000ADEC: D2A2006D 0002BF5E
	v_exp_f32_e32 v69, v69                                     // 00000000ADF4: 7E8A4145
	v_cvt_pk_fp8_f32 v109, v96, v97 op_sel:[0,0,1]             // 00000000ADF8: D2A2406D 0002C360
	v_exp_f32_e32 v70, v70                                     // 00000000AE00: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000AE04: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000AE08: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000AE0C: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000AE10: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000AE14: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000AE18: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000AE1C: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000AE20: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000AE24: 7E9E414F
	v_exp_f32_e32 v80, v80                                     // 00000000AE28: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000AE2C: 7EA24151
	v_cvt_pk_fp8_f32 v110, v66, v67                            // 00000000AE30: D2A2006E 00028742
	v_cvt_pk_fp8_f32 v110, v68, v69 op_sel:[0,0,1]             // 00000000AE38: D2A2406E 00028B44
	v_cvt_pk_fp8_f32 v111, v70, v71                            // 00000000AE40: D2A2006F 00028F46
	v_cvt_pk_fp8_f32 v111, v72, v73 op_sel:[0,0,1]             // 00000000AE48: D2A2406F 00029348
	v_cvt_pk_fp8_f32 v112, v74, v75                            // 00000000AE50: D2A20070 0002974A
	v_cvt_pk_fp8_f32 v112, v76, v77 op_sel:[0,0,1]             // 00000000AE58: D2A24070 00029B4C
	v_cvt_pk_fp8_f32 v113, v78, v79                            // 00000000AE60: D2A20071 00029F4E
	v_cvt_pk_fp8_f32 v113, v80, v81 op_sel:[0,0,1]             // 00000000AE68: D2A24071 0002A350
	ds_read_b128 v[66:69], v122 offset:16384                   // 00000000AE70: D9FE4000 4200007A
	ds_read_b128 v[70:73], v122 offset:16400                   // 00000000AE78: D9FE4010 4600007A
	ds_read_b128 v[138:141], v122 offset:24576                 // 00000000AE80: D9FE6000 8A00007A
	ds_read_b128 v[142:145], v122 offset:24592                 // 00000000AE88: D9FE6010 8E00007A
	ds_read_b128 v[146:149], v123 offset:16384                 // 00000000AE90: D9FE4000 9200007B
	ds_read_b128 v[150:153], v123 offset:16400                 // 00000000AE98: D9FE4010 9600007B
	ds_read_b128 v[154:157], v123 offset:24576                 // 00000000AEA0: D9FE6000 9A00007B
	ds_read_b128 v[158:161], v123 offset:24592                 // 00000000AEA8: D9FE6010 9E00007B
	s_barrier                                                  // 00000000AEB0: BF8A0000
	s_setprio 1                                                // 00000000AEB4: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[114:117], v[98:105], v[106:113], 0// 00000000AEB8: D3AD0072 0202D562
	ds_read_b128 v[190:193], v124 offset:16384                 // 00000000AEC0: D9FE4000 BE00007C
	ds_read_b128 v[194:197], v124 offset:16400                 // 00000000AEC8: D9FE4010 C200007C
	s_waitcnt lgkmcnt(6)                                       // 00000000AED0: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[66:73], v[166:173], 0// 00000000AED4: D3AE0052 02034D42
	ds_read_b128 v[198:201], v124 offset:24576                 // 00000000AEDC: D9FE6000 C600007C
	ds_read_b128 v[202:205], v124 offset:24592                 // 00000000AEE4: D9FE6010 CA00007C
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[138:145], v[166:173], 0// 00000000AEEC: D3AE0042 02034D8A
	ds_read_b64_tr_b8 v[138:139], v133                         // 00000000AEF4: D9C40000 8A000085
	ds_read_b64_tr_b8 v[140:141], v133 offset:1024             // 00000000AEFC: D9C40400 8C000085
	ds_read_b64_tr_b8 v[142:143], v133 offset:2048             // 00000000AF04: D9C40800 8E000085
	ds_read_b64_tr_b8 v[144:145], v133 offset:3072             // 00000000AF0C: D9C40C00 90000085
	s_min_u32 s54, s56, s69                                    // 00000000AF14: 83B64538
	s_add_u32 m0, s62, 0                                       // 00000000AF18: 807C803E
	s_nop 0                                                    // 00000000AF1C: BF800000
	buffer_load_dwordx4 v127, s[24:27], s54 offen lds          // 00000000AF20: E05D1000 3606007F
	v_lshlrev_b32_e32 v137, 23, v136                           // 00000000AF28: 25131097
	v_fma_f32 v135, v114, v137, v135                           // 00000000AF2C: D1CB0087 061F1372
	s_waitcnt lgkmcnt(8)                                       // 00000000AF34: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[146:153], v[174:181], v[82:97]// 00000000AF38: D3AE0052 054B5D92
	ds_read_b64_tr_b8 v[146:147], v133 offset:256              // 00000000AF40: D9C40100 92000085
	ds_read_b64_tr_b8 v[148:149], v133 offset:1280             // 00000000AF48: D9C40500 94000085
	ds_read_b64_tr_b8 v[150:151], v133 offset:2304             // 00000000AF50: D9C40900 96000085
	ds_read_b64_tr_b8 v[152:153], v133 offset:3328             // 00000000AF58: D9C40D00 98000085
	s_add_u32 m0, s62, 0x2000                                  // 00000000AF60: 807CFF3E 00002000
	s_nop 0                                                    // 00000000AF68: BF800000
	buffer_load_dwordx4 v128, s[24:27], s54 offen lds          // 00000000AF6C: E05D1000 36060080
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[154:161], v[174:181], v[66:81]// 00000000AF74: D3AE0042 050B5D9A
	s_min_u32 s54, s57, s70                                    // 00000000AF7C: 83B64639
	s_add_u32 m0, s63, 0x4000                                  // 00000000AF80: 807CFF3F 00004000
	s_nop 0                                                    // 00000000AF88: BF800000
	buffer_load_dwordx4 v129, s[28:31], s54 offen lds          // 00000000AF8C: E05D1000 36070081
	s_add_u32 s56, s56, s64                                    // 00000000AF94: 80384038
	s_add_u32 s57, s57, s34                                    // 00000000AF98: 80392239
	s_waitcnt lgkmcnt(8)                                       // 00000000AF9C: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[190:197], v[182:189], v[82:97]// 00000000AFA0: D3AE0052 054B6DBE
	ds_read_b64_tr_b8 v[154:155], v133 offset:512              // 00000000AFA8: D9C40200 9A000085
	ds_read_b64_tr_b8 v[156:157], v133 offset:1536             // 00000000AFB0: D9C40600 9C000085
	ds_read_b64_tr_b8 v[158:159], v133 offset:2560             // 00000000AFB8: D9C40A00 9E000085
	ds_read_b64_tr_b8 v[160:161], v133 offset:3584             // 00000000AFC0: D9C40E00 A0000085
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[198:205], v[182:189], v[66:81]// 00000000AFC8: D3AE0042 050B6DC6
	s_nop 3                                                    // 00000000AFD0: BF800003
	v_max_f32_e32 v114, v82, v83                               // 00000000AFD4: 16E4A752
	v_max3_f32 v114, v84, v85, v114                            // 00000000AFD8: D1D30072 05CAAB54
	v_max3_f32 v114, v86, v87, v114                            // 00000000AFE0: D1D30072 05CAAF56
	v_max3_f32 v114, v88, v89, v114                            // 00000000AFE8: D1D30072 05CAB358
	v_max3_f32 v114, v90, v91, v114                            // 00000000AFF0: D1D30072 05CAB75A
	v_max3_f32 v114, v92, v93, v114                            // 00000000AFF8: D1D30072 05CABB5C
	v_max3_f32 v114, v94, v95, v114                            // 00000000B000: D1D30072 05CABF5E
	v_max3_f32 v114, v96, v97, v114                            // 00000000B008: D1D30072 05CAC360
	s_waitcnt lgkmcnt(4)                                       // 00000000B010: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[138:145], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000B014: D3AC0000 0003117D D3AE0832 04CAD58A
	ds_read_b64_tr_b8 v[138:139], v133 offset:768              // 00000000B024: D9C40300 8A000085
	ds_read_b64_tr_b8 v[140:141], v133 offset:1792             // 00000000B02C: D9C40700 8C000085
	ds_read_b64_tr_b8 v[142:143], v133 offset:2816             // 00000000B034: D9C40B00 8E000085
	ds_read_b64_tr_b8 v[144:145], v133 offset:3840             // 00000000B03C: D9C40F00 90000085
	v_max_f32_e32 v115, v66, v67                               // 00000000B044: 16E68742
	v_max3_f32 v115, v68, v69, v115                            // 00000000B048: D1D30073 05CE8B44
	v_max3_f32 v115, v70, v71, v115                            // 00000000B050: D1D30073 05CE8F46
	v_max3_f32 v115, v72, v73, v115                            // 00000000B058: D1D30073 05CE9348
	v_max3_f32 v115, v74, v75, v115                            // 00000000B060: D1D30073 05CE974A
	v_max3_f32 v115, v76, v77, v115                            // 00000000B068: D1D30073 05CE9B4C
	v_max3_f32 v115, v78, v79, v115                            // 00000000B070: D1D30073 05CE9F4E
	v_max3_f32 v115, v80, v81, v115                            // 00000000B078: D1D30073 05CEA350
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[146:153], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000B080: D3AC0000 0003117D D3AE0822 048AD592
	v_max_f32_e32 v114, v114, v115                             // 00000000B090: 16E4E772
	v_mov_b32_e32 v115, v114                                   // 00000000B094: 7EE60372
	s_nop 1                                                    // 00000000B098: BF800001
	v_permlane32_swap_b32_e32 v114, v115                       // 00000000B09C: 7EE4B573
	v_max_f32_e32 v114, v114, v115                             // 00000000B0A0: 16E4E772
	v_mul_f32_e32 v115, v118, v114                             // 00000000B0A4: 0AE6E576
	v_max_f32_e32 v115, v134, v115                             // 00000000B0A8: 16E6E786
	v_sub_f32_e32 v116, v115, v134                             // 00000000B0AC: 04E90D73
	v_cmp_lt_f32_e32 vcc, s61, v116                            // 00000000B0B0: 7C82E83D
	s_waitcnt lgkmcnt(0)                                       // 00000000B0B4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[154:161], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000B0B8: D3AC0000 0003117D D3AE0812 044AD59A
	s_cmp_lg_u64 vcc, 0                                        // 00000000B0C8: BF13806A
	s_cselect_b64 s[54:55], -1, 0                              // 00000000B0CC: 85B680C1
	s_cselect_b32 s71, 1, 0                                    // 00000000B0D0: 85478081
	v_cndmask_b32_e64 v137, v134, v115, s[54:55]               // 00000000B0D4: D1000089 00DAE786
	v_fma_f32 v114, v114, v118, -v137                          // 00000000B0DC: D1CB0072 8626ED72
	v_floor_f32_e32 v114, v114                                 // 00000000B0E4: 7EE43F72
	v_med3_f32 v114, v114, s60, 0                              // 00000000B0E8: D1D60072 02007972
	v_cvt_i32_f32_e32 v115, v114                               // 00000000B0F0: 7EE61172
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[138:145], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000B0F4: D3AC0000 0003117D D3AE0802 040AD58A
	v_add_u32_e32 v136, 0x7f, v115                             // 00000000B104: 6910E6FF 0000007F
	v_add_f32_e32 v106, v137, v114                             // 00000000B10C: 02D4E589
	v_sub_f32_e32 v106, 0x40c00000, v106                       // 00000000B110: 04D4D4FF 40C00000
	v_pk_fma_f32 v[96:97], v[96:97], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B118: D3B00060 0DAAED60
	v_pk_fma_f32 v[94:95], v[94:95], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B120: D3B0005E 0DAAED5E
	v_pk_fma_f32 v[92:93], v[92:93], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B128: D3B0005C 0DAAED5C
	v_pk_fma_f32 v[90:91], v[90:91], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B130: D3B0005A 0DAAED5A
	v_pk_fma_f32 v[88:89], v[88:89], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B138: D3B00058 0DAAED58
	v_pk_fma_f32 v[86:87], v[86:87], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B140: D3B00056 0DAAED56
	v_pk_fma_f32 v[84:85], v[84:85], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B148: D3B00054 0DAAED54
	v_pk_fma_f32 v[82:83], v[82:83], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B150: D3B00052 0DAAED52
	v_pk_fma_f32 v[80:81], v[80:81], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B158: D3B00050 0DAAED50
	v_pk_fma_f32 v[78:79], v[78:79], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B160: D3B0004E 0DAAED4E
	v_pk_fma_f32 v[76:77], v[76:77], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B168: D3B0004C 0DAAED4C
	v_pk_fma_f32 v[74:75], v[74:75], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B170: D3B0004A 0DAAED4A
	v_pk_fma_f32 v[72:73], v[72:73], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B178: D3B00048 0DAAED48
	v_pk_fma_f32 v[70:71], v[70:71], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B180: D3B00046 0DAAED46
	v_pk_fma_f32 v[68:69], v[68:69], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B188: D3B00044 0DAAED44
	v_pk_fma_f32 v[66:67], v[66:67], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B190: D3B00042 0DAAED42
	s_cmp_eq_u32 s71, 0                                        // 00000000B198: BF068047
	s_cbranch_scc1 68                                          // 00000000B19C: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x12b0>
	v_sub_f32_e32 v106, v134, v137                             // 00000000B1A0: 04D51386
	v_exp_f32_e32 v106, v106                                   // 00000000B1A4: 7ED4416A
	s_nop 0                                                    // 00000000B1A8: BF800000
	v_pk_mul_f32 v[64:65], v[64:65], v[106:107] op_sel_hi:[1,0]// 00000000B1AC: D3B14040 0802D540
	v_pk_mul_f32 v[62:63], v[62:63], v[106:107] op_sel_hi:[1,0]// 00000000B1B4: D3B1403E 0802D53E
	v_pk_mul_f32 v[60:61], v[60:61], v[106:107] op_sel_hi:[1,0]// 00000000B1BC: D3B1403C 0802D53C
	v_pk_mul_f32 v[58:59], v[58:59], v[106:107] op_sel_hi:[1,0]// 00000000B1C4: D3B1403A 0802D53A
	v_pk_mul_f32 v[56:57], v[56:57], v[106:107] op_sel_hi:[1,0]// 00000000B1CC: D3B14038 0802D538
	v_pk_mul_f32 v[54:55], v[54:55], v[106:107] op_sel_hi:[1,0]// 00000000B1D4: D3B14036 0802D536
	v_pk_mul_f32 v[52:53], v[52:53], v[106:107] op_sel_hi:[1,0]// 00000000B1DC: D3B14034 0802D534
	v_pk_mul_f32 v[50:51], v[50:51], v[106:107] op_sel_hi:[1,0]// 00000000B1E4: D3B14032 0802D532
	v_pk_mul_f32 v[48:49], v[48:49], v[106:107] op_sel_hi:[1,0]// 00000000B1EC: D3B14030 0802D530
	v_pk_mul_f32 v[46:47], v[46:47], v[106:107] op_sel_hi:[1,0]// 00000000B1F4: D3B1402E 0802D52E
	v_pk_mul_f32 v[44:45], v[44:45], v[106:107] op_sel_hi:[1,0]// 00000000B1FC: D3B1402C 0802D52C
	v_pk_mul_f32 v[42:43], v[42:43], v[106:107] op_sel_hi:[1,0]// 00000000B204: D3B1402A 0802D52A
	v_pk_mul_f32 v[40:41], v[40:41], v[106:107] op_sel_hi:[1,0]// 00000000B20C: D3B14028 0802D528
	v_pk_mul_f32 v[38:39], v[38:39], v[106:107] op_sel_hi:[1,0]// 00000000B214: D3B14026 0802D526
	v_pk_mul_f32 v[36:37], v[36:37], v[106:107] op_sel_hi:[1,0]// 00000000B21C: D3B14024 0802D524
	v_pk_mul_f32 v[34:35], v[34:35], v[106:107] op_sel_hi:[1,0]// 00000000B224: D3B14022 0802D522
	v_pk_mul_f32 v[32:33], v[32:33], v[106:107] op_sel_hi:[1,0]// 00000000B22C: D3B14020 0802D520
	v_pk_mul_f32 v[30:31], v[30:31], v[106:107] op_sel_hi:[1,0]// 00000000B234: D3B1401E 0802D51E
	v_pk_mul_f32 v[28:29], v[28:29], v[106:107] op_sel_hi:[1,0]// 00000000B23C: D3B1401C 0802D51C
	v_pk_mul_f32 v[26:27], v[26:27], v[106:107] op_sel_hi:[1,0]// 00000000B244: D3B1401A 0802D51A
	v_pk_mul_f32 v[24:25], v[24:25], v[106:107] op_sel_hi:[1,0]// 00000000B24C: D3B14018 0802D518
	v_pk_mul_f32 v[22:23], v[22:23], v[106:107] op_sel_hi:[1,0]// 00000000B254: D3B14016 0802D516
	v_pk_mul_f32 v[20:21], v[20:21], v[106:107] op_sel_hi:[1,0]// 00000000B25C: D3B14014 0802D514
	v_pk_mul_f32 v[18:19], v[18:19], v[106:107] op_sel_hi:[1,0]// 00000000B264: D3B14012 0802D512
	v_pk_mul_f32 v[16:17], v[16:17], v[106:107] op_sel_hi:[1,0]// 00000000B26C: D3B14010 0802D510
	v_pk_mul_f32 v[14:15], v[14:15], v[106:107] op_sel_hi:[1,0]// 00000000B274: D3B1400E 0802D50E
	v_pk_mul_f32 v[12:13], v[12:13], v[106:107] op_sel_hi:[1,0]// 00000000B27C: D3B1400C 0802D50C
	v_pk_mul_f32 v[10:11], v[10:11], v[106:107] op_sel_hi:[1,0]// 00000000B284: D3B1400A 0802D50A
	v_pk_mul_f32 v[8:9], v[8:9], v[106:107] op_sel_hi:[1,0]    // 00000000B28C: D3B14008 0802D508
	v_pk_mul_f32 v[6:7], v[6:7], v[106:107] op_sel_hi:[1,0]    // 00000000B294: D3B14006 0802D506
	v_pk_mul_f32 v[4:5], v[4:5], v[106:107] op_sel_hi:[1,0]    // 00000000B29C: D3B14004 0802D504
	v_pk_mul_f32 v[2:3], v[2:3], v[106:107] op_sel_hi:[1,0]    // 00000000B2A4: D3B14002 0802D502
	v_mul_f32_e32 v135, v135, v106                             // 00000000B2AC: 0B0ED587
	s_waitcnt vmcnt(3)                                         // 00000000B2B0: BF8C0F73
	s_barrier                                                  // 00000000B2B4: BF8A0000
	s_add_u32 s59, s59, 1                                      // 00000000B2B8: 803B813B
	s_add_u32 s54, s59, 1                                      // 00000000B2BC: 8036813B
	s_cmp_ge_u32 s54, s48                                      // 00000000B2C0: BF093036
	s_cbranch_scc1 1034                                        // 00000000B2C4: BF85040A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x22f0>
	s_setprio 0                                                // 00000000B2C8: BF8F0000
	v_exp_f32_e32 v82, v82                                     // 00000000B2CC: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000B2D0: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000B2D4: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000B2D8: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000B2DC: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000B2E0: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000B2E4: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000B2E8: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000B2EC: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000B2F0: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000B2F4: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000B2F8: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000B2FC: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000B300: 7EBE415F
	v_exp_f32_e32 v96, v96                                     // 00000000B304: 7EC04160
	v_exp_f32_e32 v97, v97                                     // 00000000B308: 7EC24161
	v_cvt_pk_fp8_f32 v106, v82, v83                            // 00000000B30C: D2A2006A 0002A752
	v_cvt_pk_fp8_f32 v106, v84, v85 op_sel:[0,0,1]             // 00000000B314: D2A2406A 0002AB54
	v_cvt_pk_fp8_f32 v107, v86, v87                            // 00000000B31C: D2A2006B 0002AF56
	v_cvt_pk_fp8_f32 v107, v88, v89 op_sel:[0,0,1]             // 00000000B324: D2A2406B 0002B358
	v_exp_f32_e32 v66, v66                                     // 00000000B32C: 7E844142
	v_cvt_pk_fp8_f32 v108, v90, v91                            // 00000000B330: D2A2006C 0002B75A
	v_exp_f32_e32 v67, v67                                     // 00000000B338: 7E864143
	v_cvt_pk_fp8_f32 v108, v92, v93 op_sel:[0,0,1]             // 00000000B33C: D2A2406C 0002BB5C
	v_exp_f32_e32 v68, v68                                     // 00000000B344: 7E884144
	v_cvt_pk_fp8_f32 v109, v94, v95                            // 00000000B348: D2A2006D 0002BF5E
	v_exp_f32_e32 v69, v69                                     // 00000000B350: 7E8A4145
	v_cvt_pk_fp8_f32 v109, v96, v97 op_sel:[0,0,1]             // 00000000B354: D2A2406D 0002C360
	v_exp_f32_e32 v70, v70                                     // 00000000B35C: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000B360: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000B364: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000B368: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000B36C: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000B370: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000B374: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000B378: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000B37C: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000B380: 7E9E414F
	v_exp_f32_e32 v80, v80                                     // 00000000B384: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000B388: 7EA24151
	v_cvt_pk_fp8_f32 v110, v66, v67                            // 00000000B38C: D2A2006E 00028742
	v_cvt_pk_fp8_f32 v110, v68, v69 op_sel:[0,0,1]             // 00000000B394: D2A2406E 00028B44
	v_cvt_pk_fp8_f32 v111, v70, v71                            // 00000000B39C: D2A2006F 00028F46
	v_cvt_pk_fp8_f32 v111, v72, v73 op_sel:[0,0,1]             // 00000000B3A4: D2A2406F 00029348
	v_cvt_pk_fp8_f32 v112, v74, v75                            // 00000000B3AC: D2A20070 0002974A
	v_cvt_pk_fp8_f32 v112, v76, v77 op_sel:[0,0,1]             // 00000000B3B4: D2A24070 00029B4C
	v_cvt_pk_fp8_f32 v113, v78, v79                            // 00000000B3BC: D2A20071 00029F4E
	v_cvt_pk_fp8_f32 v113, v80, v81 op_sel:[0,0,1]             // 00000000B3C4: D2A24071 0002A350
	ds_read_b128 v[66:69], v122 offset:32768                   // 00000000B3CC: D9FE8000 4200007A
	ds_read_b128 v[70:73], v122 offset:32784                   // 00000000B3D4: D9FE8010 4600007A
	ds_read_b128 v[138:141], v122 offset:40960                 // 00000000B3DC: D9FEA000 8A00007A
	ds_read_b128 v[142:145], v122 offset:40976                 // 00000000B3E4: D9FEA010 8E00007A
	ds_read_b128 v[146:149], v123 offset:32768                 // 00000000B3EC: D9FE8000 9200007B
	ds_read_b128 v[150:153], v123 offset:32784                 // 00000000B3F4: D9FE8010 9600007B
	ds_read_b128 v[154:157], v123 offset:40960                 // 00000000B3FC: D9FEA000 9A00007B
	ds_read_b128 v[158:161], v123 offset:40976                 // 00000000B404: D9FEA010 9E00007B
	s_barrier                                                  // 00000000B40C: BF8A0000
	s_setprio 1                                                // 00000000B410: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[114:117], v[98:105], v[106:113], 0// 00000000B414: D3AD0072 0202D562
	ds_read_b128 v[190:193], v124 offset:32768                 // 00000000B41C: D9FE8000 BE00007C
	ds_read_b128 v[194:197], v124 offset:32784                 // 00000000B424: D9FE8010 C200007C
	s_waitcnt lgkmcnt(6)                                       // 00000000B42C: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[66:73], v[166:173], 0// 00000000B430: D3AE0052 02034D42
	ds_read_b128 v[198:201], v124 offset:40960                 // 00000000B438: D9FEA000 C600007C
	ds_read_b128 v[202:205], v124 offset:40976                 // 00000000B440: D9FEA010 CA00007C
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[138:145], v[166:173], 0// 00000000B448: D3AE0042 02034D8A
	ds_read_b64_tr_b8 v[138:139], v133 offset:8192             // 00000000B450: D9C42000 8A000085
	ds_read_b64_tr_b8 v[140:141], v133 offset:9216             // 00000000B458: D9C42400 8C000085
	ds_read_b64_tr_b8 v[142:143], v133 offset:10240            // 00000000B460: D9C42800 8E000085
	ds_read_b64_tr_b8 v[144:145], v133 offset:11264            // 00000000B468: D9C42C00 90000085
	s_min_u32 s54, s56, s69                                    // 00000000B470: 83B64538
	s_add_u32 m0, s62, 0x4000                                  // 00000000B474: 807CFF3E 00004000
	s_nop 0                                                    // 00000000B47C: BF800000
	buffer_load_dwordx4 v127, s[24:27], s54 offen lds          // 00000000B480: E05D1000 3606007F
	v_lshlrev_b32_e32 v134, 23, v136                           // 00000000B488: 250D1097
	v_fma_f32 v135, v114, v134, v135                           // 00000000B48C: D1CB0087 061F0D72
	s_waitcnt lgkmcnt(8)                                       // 00000000B494: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[146:153], v[174:181], v[82:97]// 00000000B498: D3AE0052 054B5D92
	ds_read_b64_tr_b8 v[146:147], v133 offset:8448             // 00000000B4A0: D9C42100 92000085
	ds_read_b64_tr_b8 v[148:149], v133 offset:9472             // 00000000B4A8: D9C42500 94000085
	ds_read_b64_tr_b8 v[150:151], v133 offset:10496            // 00000000B4B0: D9C42900 96000085
	ds_read_b64_tr_b8 v[152:153], v133 offset:11520            // 00000000B4B8: D9C42D00 98000085
	s_add_u32 m0, s62, 0x6000                                  // 00000000B4C0: 807CFF3E 00006000
	s_nop 0                                                    // 00000000B4C8: BF800000
	buffer_load_dwordx4 v128, s[24:27], s54 offen lds          // 00000000B4CC: E05D1000 36060080
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[154:161], v[174:181], v[66:81]// 00000000B4D4: D3AE0042 050B5D9A
	s_min_u32 s54, s57, s70                                    // 00000000B4DC: 83B64639
	s_add_u32 m0, s63, 0x6000                                  // 00000000B4E0: 807CFF3F 00006000
	s_nop 0                                                    // 00000000B4E8: BF800000
	buffer_load_dwordx4 v129, s[28:31], s54 offen lds          // 00000000B4EC: E05D1000 36070081
	s_add_u32 s56, s56, s64                                    // 00000000B4F4: 80384038
	s_add_u32 s57, s57, s34                                    // 00000000B4F8: 80392239
	s_waitcnt lgkmcnt(8)                                       // 00000000B4FC: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[190:197], v[182:189], v[82:97]// 00000000B500: D3AE0052 054B6DBE
	ds_read_b64_tr_b8 v[154:155], v133 offset:8704             // 00000000B508: D9C42200 9A000085
	ds_read_b64_tr_b8 v[156:157], v133 offset:9728             // 00000000B510: D9C42600 9C000085
	ds_read_b64_tr_b8 v[158:159], v133 offset:10752            // 00000000B518: D9C42A00 9E000085
	ds_read_b64_tr_b8 v[160:161], v133 offset:11776            // 00000000B520: D9C42E00 A0000085
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[198:205], v[182:189], v[66:81]// 00000000B528: D3AE0042 050B6DC6
	s_nop 3                                                    // 00000000B530: BF800003
	v_max_f32_e32 v114, v82, v83                               // 00000000B534: 16E4A752
	v_max3_f32 v114, v84, v85, v114                            // 00000000B538: D1D30072 05CAAB54
	v_max3_f32 v114, v86, v87, v114                            // 00000000B540: D1D30072 05CAAF56
	v_max3_f32 v114, v88, v89, v114                            // 00000000B548: D1D30072 05CAB358
	v_max3_f32 v114, v90, v91, v114                            // 00000000B550: D1D30072 05CAB75A
	v_max3_f32 v114, v92, v93, v114                            // 00000000B558: D1D30072 05CABB5C
	v_max3_f32 v114, v94, v95, v114                            // 00000000B560: D1D30072 05CABF5E
	v_max3_f32 v114, v96, v97, v114                            // 00000000B568: D1D30072 05CAC360
	s_waitcnt lgkmcnt(4)                                       // 00000000B570: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[138:145], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000B574: D3AC0000 0003117D D3AE0832 04CAD58A
	ds_read_b64_tr_b8 v[138:139], v133 offset:8960             // 00000000B584: D9C42300 8A000085
	ds_read_b64_tr_b8 v[140:141], v133 offset:9984             // 00000000B58C: D9C42700 8C000085
	ds_read_b64_tr_b8 v[142:143], v133 offset:11008            // 00000000B594: D9C42B00 8E000085
	ds_read_b64_tr_b8 v[144:145], v133 offset:12032            // 00000000B59C: D9C42F00 90000085
	v_max_f32_e32 v115, v66, v67                               // 00000000B5A4: 16E68742
	v_max3_f32 v115, v68, v69, v115                            // 00000000B5A8: D1D30073 05CE8B44
	v_max3_f32 v115, v70, v71, v115                            // 00000000B5B0: D1D30073 05CE8F46
	v_max3_f32 v115, v72, v73, v115                            // 00000000B5B8: D1D30073 05CE9348
	v_max3_f32 v115, v74, v75, v115                            // 00000000B5C0: D1D30073 05CE974A
	v_max3_f32 v115, v76, v77, v115                            // 00000000B5C8: D1D30073 05CE9B4C
	v_max3_f32 v115, v78, v79, v115                            // 00000000B5D0: D1D30073 05CE9F4E
	v_max3_f32 v115, v80, v81, v115                            // 00000000B5D8: D1D30073 05CEA350
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[146:153], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000B5E0: D3AC0000 0003117D D3AE0822 048AD592
	v_max_f32_e32 v114, v114, v115                             // 00000000B5F0: 16E4E772
	v_mov_b32_e32 v115, v114                                   // 00000000B5F4: 7EE60372
	s_nop 1                                                    // 00000000B5F8: BF800001
	v_permlane32_swap_b32_e32 v114, v115                       // 00000000B5FC: 7EE4B573
	v_max_f32_e32 v114, v114, v115                             // 00000000B600: 16E4E772
	v_mul_f32_e32 v115, v118, v114                             // 00000000B604: 0AE6E576
	v_max_f32_e32 v115, v137, v115                             // 00000000B608: 16E6E789
	v_sub_f32_e32 v116, v115, v137                             // 00000000B60C: 04E91373
	v_cmp_lt_f32_e32 vcc, s61, v116                            // 00000000B610: 7C82E83D
	s_waitcnt lgkmcnt(0)                                       // 00000000B614: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[154:161], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000B618: D3AC0000 0003117D D3AE0812 044AD59A
	s_cmp_lg_u64 vcc, 0                                        // 00000000B628: BF13806A
	s_cselect_b64 s[54:55], -1, 0                              // 00000000B62C: 85B680C1
	s_cselect_b32 s71, 1, 0                                    // 00000000B630: 85478081
	v_cndmask_b32_e64 v134, v137, v115, s[54:55]               // 00000000B634: D1000086 00DAE789
	v_fma_f32 v114, v114, v118, -v134                          // 00000000B63C: D1CB0072 861AED72
	v_floor_f32_e32 v114, v114                                 // 00000000B644: 7EE43F72
	v_med3_f32 v114, v114, s60, 0                              // 00000000B648: D1D60072 02007972
	v_cvt_i32_f32_e32 v115, v114                               // 00000000B650: 7EE61172
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[138:145], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000B654: D3AC0000 0003117D D3AE0802 040AD58A
	v_add_u32_e32 v136, 0x7f, v115                             // 00000000B664: 6910E6FF 0000007F
	v_add_f32_e32 v106, v134, v114                             // 00000000B66C: 02D4E586
	v_sub_f32_e32 v106, 0x40c00000, v106                       // 00000000B670: 04D4D4FF 40C00000
	v_pk_fma_f32 v[96:97], v[96:97], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B678: D3B00060 0DAAED60
	v_pk_fma_f32 v[94:95], v[94:95], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B680: D3B0005E 0DAAED5E
	v_pk_fma_f32 v[92:93], v[92:93], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B688: D3B0005C 0DAAED5C
	v_pk_fma_f32 v[90:91], v[90:91], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B690: D3B0005A 0DAAED5A
	v_pk_fma_f32 v[88:89], v[88:89], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B698: D3B00058 0DAAED58
	v_pk_fma_f32 v[86:87], v[86:87], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6A0: D3B00056 0DAAED56
	v_pk_fma_f32 v[84:85], v[84:85], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6A8: D3B00054 0DAAED54
	v_pk_fma_f32 v[82:83], v[82:83], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6B0: D3B00052 0DAAED52
	v_pk_fma_f32 v[80:81], v[80:81], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6B8: D3B00050 0DAAED50
	v_pk_fma_f32 v[78:79], v[78:79], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6C0: D3B0004E 0DAAED4E
	v_pk_fma_f32 v[76:77], v[76:77], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6C8: D3B0004C 0DAAED4C
	v_pk_fma_f32 v[74:75], v[74:75], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6D0: D3B0004A 0DAAED4A
	v_pk_fma_f32 v[72:73], v[72:73], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6D8: D3B00048 0DAAED48
	v_pk_fma_f32 v[70:71], v[70:71], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6E0: D3B00046 0DAAED46
	v_pk_fma_f32 v[68:69], v[68:69], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6E8: D3B00044 0DAAED44
	v_pk_fma_f32 v[66:67], v[66:67], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000B6F0: D3B00042 0DAAED42
	s_cmp_eq_u32 s71, 0                                        // 00000000B6F8: BF068047
	s_cbranch_scc1 68                                          // 00000000B6FC: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1810>
	v_sub_f32_e32 v106, v137, v134                             // 00000000B700: 04D50D89
	v_exp_f32_e32 v106, v106                                   // 00000000B704: 7ED4416A
	s_nop 0                                                    // 00000000B708: BF800000
	v_pk_mul_f32 v[64:65], v[64:65], v[106:107] op_sel_hi:[1,0]// 00000000B70C: D3B14040 0802D540
	v_pk_mul_f32 v[62:63], v[62:63], v[106:107] op_sel_hi:[1,0]// 00000000B714: D3B1403E 0802D53E
	v_pk_mul_f32 v[60:61], v[60:61], v[106:107] op_sel_hi:[1,0]// 00000000B71C: D3B1403C 0802D53C
	v_pk_mul_f32 v[58:59], v[58:59], v[106:107] op_sel_hi:[1,0]// 00000000B724: D3B1403A 0802D53A
	v_pk_mul_f32 v[56:57], v[56:57], v[106:107] op_sel_hi:[1,0]// 00000000B72C: D3B14038 0802D538
	v_pk_mul_f32 v[54:55], v[54:55], v[106:107] op_sel_hi:[1,0]// 00000000B734: D3B14036 0802D536
	v_pk_mul_f32 v[52:53], v[52:53], v[106:107] op_sel_hi:[1,0]// 00000000B73C: D3B14034 0802D534
	v_pk_mul_f32 v[50:51], v[50:51], v[106:107] op_sel_hi:[1,0]// 00000000B744: D3B14032 0802D532
	v_pk_mul_f32 v[48:49], v[48:49], v[106:107] op_sel_hi:[1,0]// 00000000B74C: D3B14030 0802D530
	v_pk_mul_f32 v[46:47], v[46:47], v[106:107] op_sel_hi:[1,0]// 00000000B754: D3B1402E 0802D52E
	v_pk_mul_f32 v[44:45], v[44:45], v[106:107] op_sel_hi:[1,0]// 00000000B75C: D3B1402C 0802D52C
	v_pk_mul_f32 v[42:43], v[42:43], v[106:107] op_sel_hi:[1,0]// 00000000B764: D3B1402A 0802D52A
	v_pk_mul_f32 v[40:41], v[40:41], v[106:107] op_sel_hi:[1,0]// 00000000B76C: D3B14028 0802D528
	v_pk_mul_f32 v[38:39], v[38:39], v[106:107] op_sel_hi:[1,0]// 00000000B774: D3B14026 0802D526
	v_pk_mul_f32 v[36:37], v[36:37], v[106:107] op_sel_hi:[1,0]// 00000000B77C: D3B14024 0802D524
	v_pk_mul_f32 v[34:35], v[34:35], v[106:107] op_sel_hi:[1,0]// 00000000B784: D3B14022 0802D522
	v_pk_mul_f32 v[32:33], v[32:33], v[106:107] op_sel_hi:[1,0]// 00000000B78C: D3B14020 0802D520
	v_pk_mul_f32 v[30:31], v[30:31], v[106:107] op_sel_hi:[1,0]// 00000000B794: D3B1401E 0802D51E
	v_pk_mul_f32 v[28:29], v[28:29], v[106:107] op_sel_hi:[1,0]// 00000000B79C: D3B1401C 0802D51C
	v_pk_mul_f32 v[26:27], v[26:27], v[106:107] op_sel_hi:[1,0]// 00000000B7A4: D3B1401A 0802D51A
	v_pk_mul_f32 v[24:25], v[24:25], v[106:107] op_sel_hi:[1,0]// 00000000B7AC: D3B14018 0802D518
	v_pk_mul_f32 v[22:23], v[22:23], v[106:107] op_sel_hi:[1,0]// 00000000B7B4: D3B14016 0802D516
	v_pk_mul_f32 v[20:21], v[20:21], v[106:107] op_sel_hi:[1,0]// 00000000B7BC: D3B14014 0802D514
	v_pk_mul_f32 v[18:19], v[18:19], v[106:107] op_sel_hi:[1,0]// 00000000B7C4: D3B14012 0802D512
	v_pk_mul_f32 v[16:17], v[16:17], v[106:107] op_sel_hi:[1,0]// 00000000B7CC: D3B14010 0802D510
	v_pk_mul_f32 v[14:15], v[14:15], v[106:107] op_sel_hi:[1,0]// 00000000B7D4: D3B1400E 0802D50E
	v_pk_mul_f32 v[12:13], v[12:13], v[106:107] op_sel_hi:[1,0]// 00000000B7DC: D3B1400C 0802D50C
	v_pk_mul_f32 v[10:11], v[10:11], v[106:107] op_sel_hi:[1,0]// 00000000B7E4: D3B1400A 0802D50A
	v_pk_mul_f32 v[8:9], v[8:9], v[106:107] op_sel_hi:[1,0]    // 00000000B7EC: D3B14008 0802D508
	v_pk_mul_f32 v[6:7], v[6:7], v[106:107] op_sel_hi:[1,0]    // 00000000B7F4: D3B14006 0802D506
	v_pk_mul_f32 v[4:5], v[4:5], v[106:107] op_sel_hi:[1,0]    // 00000000B7FC: D3B14004 0802D504
	v_pk_mul_f32 v[2:3], v[2:3], v[106:107] op_sel_hi:[1,0]    // 00000000B804: D3B14002 0802D502
	v_mul_f32_e32 v135, v135, v106                             // 00000000B80C: 0B0ED587
	s_waitcnt vmcnt(3)                                         // 00000000B810: BF8C0F73
	s_barrier                                                  // 00000000B814: BF8A0000
	s_add_u32 s59, s59, 1                                      // 00000000B818: 803B813B
	s_add_u32 s54, s59, 1                                      // 00000000B81C: 8036813B
	s_cmp_ge_u32 s54, s48                                      // 00000000B820: BF093036
	s_cbranch_scc1 686                                         // 00000000B824: BF8502AE <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x22e0>
	s_setprio 0                                                // 00000000B828: BF8F0000
	v_exp_f32_e32 v82, v82                                     // 00000000B82C: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000B830: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000B834: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000B838: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000B83C: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000B840: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000B844: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000B848: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000B84C: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000B850: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000B854: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000B858: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000B85C: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000B860: 7EBE415F
	v_exp_f32_e32 v96, v96                                     // 00000000B864: 7EC04160
	v_exp_f32_e32 v97, v97                                     // 00000000B868: 7EC24161
	v_cvt_pk_fp8_f32 v106, v82, v83                            // 00000000B86C: D2A2006A 0002A752
	v_cvt_pk_fp8_f32 v106, v84, v85 op_sel:[0,0,1]             // 00000000B874: D2A2406A 0002AB54
	v_cvt_pk_fp8_f32 v107, v86, v87                            // 00000000B87C: D2A2006B 0002AF56
	v_cvt_pk_fp8_f32 v107, v88, v89 op_sel:[0,0,1]             // 00000000B884: D2A2406B 0002B358
	v_exp_f32_e32 v66, v66                                     // 00000000B88C: 7E844142
	v_cvt_pk_fp8_f32 v108, v90, v91                            // 00000000B890: D2A2006C 0002B75A
	v_exp_f32_e32 v67, v67                                     // 00000000B898: 7E864143
	v_cvt_pk_fp8_f32 v108, v92, v93 op_sel:[0,0,1]             // 00000000B89C: D2A2406C 0002BB5C
	v_exp_f32_e32 v68, v68                                     // 00000000B8A4: 7E884144
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
	v_cvt_pk_fp8_f32 v110, v66, v67                            // 00000000B8EC: D2A2006E 00028742
	v_cvt_pk_fp8_f32 v110, v68, v69 op_sel:[0,0,1]             // 00000000B8F4: D2A2406E 00028B44
	v_cvt_pk_fp8_f32 v111, v70, v71                            // 00000000B8FC: D2A2006F 00028F46
	v_cvt_pk_fp8_f32 v111, v72, v73 op_sel:[0,0,1]             // 00000000B904: D2A2406F 00029348
	v_cvt_pk_fp8_f32 v112, v74, v75                            // 00000000B90C: D2A20070 0002974A
	v_cvt_pk_fp8_f32 v112, v76, v77 op_sel:[0,0,1]             // 00000000B914: D2A24070 00029B4C
	v_cvt_pk_fp8_f32 v113, v78, v79                            // 00000000B91C: D2A20071 00029F4E
	v_cvt_pk_fp8_f32 v113, v80, v81 op_sel:[0,0,1]             // 00000000B924: D2A24071 0002A350
	ds_read_b128 v[66:69], v122 offset:49152                   // 00000000B92C: D9FEC000 4200007A
	ds_read_b128 v[70:73], v122 offset:49168                   // 00000000B934: D9FEC010 4600007A
	ds_read_b128 v[138:141], v122 offset:57344                 // 00000000B93C: D9FEE000 8A00007A
	ds_read_b128 v[142:145], v122 offset:57360                 // 00000000B944: D9FEE010 8E00007A
	ds_read_b128 v[146:149], v123 offset:49152                 // 00000000B94C: D9FEC000 9200007B
	ds_read_b128 v[150:153], v123 offset:49168                 // 00000000B954: D9FEC010 9600007B
	ds_read_b128 v[154:157], v123 offset:57344                 // 00000000B95C: D9FEE000 9A00007B
	ds_read_b128 v[158:161], v123 offset:57360                 // 00000000B964: D9FEE010 9E00007B
	s_barrier                                                  // 00000000B96C: BF8A0000
	s_setprio 1                                                // 00000000B970: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[114:117], v[98:105], v[106:113], 0// 00000000B974: D3AD0072 0202D562
	ds_read_b128 v[190:193], v124 offset:49152                 // 00000000B97C: D9FEC000 BE00007C
	ds_read_b128 v[194:197], v124 offset:49168                 // 00000000B984: D9FEC010 C200007C
	s_waitcnt lgkmcnt(6)                                       // 00000000B98C: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[66:73], v[166:173], 0// 00000000B990: D3AE0052 02034D42
	ds_read_b128 v[198:201], v124 offset:57344                 // 00000000B998: D9FEE000 C600007C
	ds_read_b128 v[202:205], v124 offset:57360                 // 00000000B9A0: D9FEE010 CA00007C
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[138:145], v[166:173], 0// 00000000B9A8: D3AE0042 02034D8A
	ds_read_b64_tr_b8 v[138:139], v133 offset:16384            // 00000000B9B0: D9C44000 8A000085
	ds_read_b64_tr_b8 v[140:141], v133 offset:17408            // 00000000B9B8: D9C44400 8C000085
	ds_read_b64_tr_b8 v[142:143], v133 offset:18432            // 00000000B9C0: D9C44800 8E000085
	ds_read_b64_tr_b8 v[144:145], v133 offset:19456            // 00000000B9C8: D9C44C00 90000085
	s_min_u32 s54, s56, s69                                    // 00000000B9D0: 83B64538
	s_add_u32 m0, s62, 0x8000                                  // 00000000B9D4: 807CFF3E 00008000
	s_nop 0                                                    // 00000000B9DC: BF800000
	buffer_load_dwordx4 v127, s[24:27], s54 offen lds          // 00000000B9E0: E05D1000 3606007F
	v_lshlrev_b32_e32 v137, 23, v136                           // 00000000B9E8: 25131097
	v_fma_f32 v135, v114, v137, v135                           // 00000000B9EC: D1CB0087 061F1372
	s_waitcnt lgkmcnt(8)                                       // 00000000B9F4: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[146:153], v[174:181], v[82:97]// 00000000B9F8: D3AE0052 054B5D92
	ds_read_b64_tr_b8 v[146:147], v133 offset:16640            // 00000000BA00: D9C44100 92000085
	ds_read_b64_tr_b8 v[148:149], v133 offset:17664            // 00000000BA08: D9C44500 94000085
	ds_read_b64_tr_b8 v[150:151], v133 offset:18688            // 00000000BA10: D9C44900 96000085
	ds_read_b64_tr_b8 v[152:153], v133 offset:19712            // 00000000BA18: D9C44D00 98000085
	s_add_u32 m0, s62, 0xa000                                  // 00000000BA20: 807CFF3E 0000A000
	s_nop 0                                                    // 00000000BA28: BF800000
	buffer_load_dwordx4 v128, s[24:27], s54 offen lds          // 00000000BA2C: E05D1000 36060080
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[154:161], v[174:181], v[66:81]// 00000000BA34: D3AE0042 050B5D9A
	s_min_u32 s54, s57, s70                                    // 00000000BA3C: 83B64639
	s_add_u32 m0, s63, 0                                       // 00000000BA40: 807C803F
	s_nop 0                                                    // 00000000BA44: BF800000
	buffer_load_dwordx4 v129, s[28:31], s54 offen lds          // 00000000BA48: E05D1000 36070081
	s_add_u32 s56, s56, s64                                    // 00000000BA50: 80384038
	s_add_u32 s57, s57, s34                                    // 00000000BA54: 80392239
	s_waitcnt lgkmcnt(8)                                       // 00000000BA58: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[190:197], v[182:189], v[82:97]// 00000000BA5C: D3AE0052 054B6DBE
	ds_read_b64_tr_b8 v[154:155], v133 offset:16896            // 00000000BA64: D9C44200 9A000085
	ds_read_b64_tr_b8 v[156:157], v133 offset:17920            // 00000000BA6C: D9C44600 9C000085
	ds_read_b64_tr_b8 v[158:159], v133 offset:18944            // 00000000BA74: D9C44A00 9E000085
	ds_read_b64_tr_b8 v[160:161], v133 offset:19968            // 00000000BA7C: D9C44E00 A0000085
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[198:205], v[182:189], v[66:81]// 00000000BA84: D3AE0042 050B6DC6
	s_nop 3                                                    // 00000000BA8C: BF800003
	v_max_f32_e32 v114, v82, v83                               // 00000000BA90: 16E4A752
	v_max3_f32 v114, v84, v85, v114                            // 00000000BA94: D1D30072 05CAAB54
	v_max3_f32 v114, v86, v87, v114                            // 00000000BA9C: D1D30072 05CAAF56
	v_max3_f32 v114, v88, v89, v114                            // 00000000BAA4: D1D30072 05CAB358
	v_max3_f32 v114, v90, v91, v114                            // 00000000BAAC: D1D30072 05CAB75A
	v_max3_f32 v114, v92, v93, v114                            // 00000000BAB4: D1D30072 05CABB5C
	v_max3_f32 v114, v94, v95, v114                            // 00000000BABC: D1D30072 05CABF5E
	v_max3_f32 v114, v96, v97, v114                            // 00000000BAC4: D1D30072 05CAC360
	s_waitcnt lgkmcnt(4)                                       // 00000000BACC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[138:145], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000BAD0: D3AC0000 0003117D D3AE0832 04CAD58A
	ds_read_b64_tr_b8 v[138:139], v133 offset:17152            // 00000000BAE0: D9C44300 8A000085
	ds_read_b64_tr_b8 v[140:141], v133 offset:18176            // 00000000BAE8: D9C44700 8C000085
	ds_read_b64_tr_b8 v[142:143], v133 offset:19200            // 00000000BAF0: D9C44B00 8E000085
	ds_read_b64_tr_b8 v[144:145], v133 offset:20224            // 00000000BAF8: D9C44F00 90000085
	v_max_f32_e32 v115, v66, v67                               // 00000000BB00: 16E68742
	v_max3_f32 v115, v68, v69, v115                            // 00000000BB04: D1D30073 05CE8B44
	v_max3_f32 v115, v70, v71, v115                            // 00000000BB0C: D1D30073 05CE8F46
	v_max3_f32 v115, v72, v73, v115                            // 00000000BB14: D1D30073 05CE9348
	v_max3_f32 v115, v74, v75, v115                            // 00000000BB1C: D1D30073 05CE974A
	v_max3_f32 v115, v76, v77, v115                            // 00000000BB24: D1D30073 05CE9B4C
	v_max3_f32 v115, v78, v79, v115                            // 00000000BB2C: D1D30073 05CE9F4E
	v_max3_f32 v115, v80, v81, v115                            // 00000000BB34: D1D30073 05CEA350
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[146:153], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000BB3C: D3AC0000 0003117D D3AE0822 048AD592
	v_max_f32_e32 v114, v114, v115                             // 00000000BB4C: 16E4E772
	v_mov_b32_e32 v115, v114                                   // 00000000BB50: 7EE60372
	s_nop 1                                                    // 00000000BB54: BF800001
	v_permlane32_swap_b32_e32 v114, v115                       // 00000000BB58: 7EE4B573
	v_max_f32_e32 v114, v114, v115                             // 00000000BB5C: 16E4E772
	v_mul_f32_e32 v115, v118, v114                             // 00000000BB60: 0AE6E576
	v_max_f32_e32 v115, v134, v115                             // 00000000BB64: 16E6E786
	v_sub_f32_e32 v116, v115, v134                             // 00000000BB68: 04E90D73
	v_cmp_lt_f32_e32 vcc, s61, v116                            // 00000000BB6C: 7C82E83D
	s_waitcnt lgkmcnt(0)                                       // 00000000BB70: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[154:161], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000BB74: D3AC0000 0003117D D3AE0812 044AD59A
	s_cmp_lg_u64 vcc, 0                                        // 00000000BB84: BF13806A
	s_cselect_b64 s[54:55], -1, 0                              // 00000000BB88: 85B680C1
	s_cselect_b32 s71, 1, 0                                    // 00000000BB8C: 85478081
	v_cndmask_b32_e64 v137, v134, v115, s[54:55]               // 00000000BB90: D1000089 00DAE786
	v_fma_f32 v114, v114, v118, -v137                          // 00000000BB98: D1CB0072 8626ED72
	v_floor_f32_e32 v114, v114                                 // 00000000BBA0: 7EE43F72
	v_med3_f32 v114, v114, s60, 0                              // 00000000BBA4: D1D60072 02007972
	v_cvt_i32_f32_e32 v115, v114                               // 00000000BBAC: 7EE61172
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[138:145], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000BBB0: D3AC0000 0003117D D3AE0802 040AD58A
	v_add_u32_e32 v136, 0x7f, v115                             // 00000000BBC0: 6910E6FF 0000007F
	v_add_f32_e32 v106, v137, v114                             // 00000000BBC8: 02D4E589
	v_sub_f32_e32 v106, 0x40c00000, v106                       // 00000000BBCC: 04D4D4FF 40C00000
	v_pk_fma_f32 v[96:97], v[96:97], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BBD4: D3B00060 0DAAED60
	v_pk_fma_f32 v[94:95], v[94:95], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BBDC: D3B0005E 0DAAED5E
	v_pk_fma_f32 v[92:93], v[92:93], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BBE4: D3B0005C 0DAAED5C
	v_pk_fma_f32 v[90:91], v[90:91], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BBEC: D3B0005A 0DAAED5A
	v_pk_fma_f32 v[88:89], v[88:89], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BBF4: D3B00058 0DAAED58
	v_pk_fma_f32 v[86:87], v[86:87], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BBFC: D3B00056 0DAAED56
	v_pk_fma_f32 v[84:85], v[84:85], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC04: D3B00054 0DAAED54
	v_pk_fma_f32 v[82:83], v[82:83], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC0C: D3B00052 0DAAED52
	v_pk_fma_f32 v[80:81], v[80:81], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC14: D3B00050 0DAAED50
	v_pk_fma_f32 v[78:79], v[78:79], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC1C: D3B0004E 0DAAED4E
	v_pk_fma_f32 v[76:77], v[76:77], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC24: D3B0004C 0DAAED4C
	v_pk_fma_f32 v[74:75], v[74:75], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC2C: D3B0004A 0DAAED4A
	v_pk_fma_f32 v[72:73], v[72:73], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC34: D3B00048 0DAAED48
	v_pk_fma_f32 v[70:71], v[70:71], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC3C: D3B00046 0DAAED46
	v_pk_fma_f32 v[68:69], v[68:69], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC44: D3B00044 0DAAED44
	v_pk_fma_f32 v[66:67], v[66:67], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000BC4C: D3B00042 0DAAED42
	s_cmp_eq_u32 s71, 0                                        // 00000000BC54: BF068047
	s_cbranch_scc1 68                                          // 00000000BC58: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1d6c>
	v_sub_f32_e32 v106, v134, v137                             // 00000000BC5C: 04D51386
	v_exp_f32_e32 v106, v106                                   // 00000000BC60: 7ED4416A
	s_nop 0                                                    // 00000000BC64: BF800000
	v_pk_mul_f32 v[64:65], v[64:65], v[106:107] op_sel_hi:[1,0]// 00000000BC68: D3B14040 0802D540
	v_pk_mul_f32 v[62:63], v[62:63], v[106:107] op_sel_hi:[1,0]// 00000000BC70: D3B1403E 0802D53E
	v_pk_mul_f32 v[60:61], v[60:61], v[106:107] op_sel_hi:[1,0]// 00000000BC78: D3B1403C 0802D53C
	v_pk_mul_f32 v[58:59], v[58:59], v[106:107] op_sel_hi:[1,0]// 00000000BC80: D3B1403A 0802D53A
	v_pk_mul_f32 v[56:57], v[56:57], v[106:107] op_sel_hi:[1,0]// 00000000BC88: D3B14038 0802D538
	v_pk_mul_f32 v[54:55], v[54:55], v[106:107] op_sel_hi:[1,0]// 00000000BC90: D3B14036 0802D536
	v_pk_mul_f32 v[52:53], v[52:53], v[106:107] op_sel_hi:[1,0]// 00000000BC98: D3B14034 0802D534
	v_pk_mul_f32 v[50:51], v[50:51], v[106:107] op_sel_hi:[1,0]// 00000000BCA0: D3B14032 0802D532
	v_pk_mul_f32 v[48:49], v[48:49], v[106:107] op_sel_hi:[1,0]// 00000000BCA8: D3B14030 0802D530
	v_pk_mul_f32 v[46:47], v[46:47], v[106:107] op_sel_hi:[1,0]// 00000000BCB0: D3B1402E 0802D52E
	v_pk_mul_f32 v[44:45], v[44:45], v[106:107] op_sel_hi:[1,0]// 00000000BCB8: D3B1402C 0802D52C
	v_pk_mul_f32 v[42:43], v[42:43], v[106:107] op_sel_hi:[1,0]// 00000000BCC0: D3B1402A 0802D52A
	v_pk_mul_f32 v[40:41], v[40:41], v[106:107] op_sel_hi:[1,0]// 00000000BCC8: D3B14028 0802D528
	v_pk_mul_f32 v[38:39], v[38:39], v[106:107] op_sel_hi:[1,0]// 00000000BCD0: D3B14026 0802D526
	v_pk_mul_f32 v[36:37], v[36:37], v[106:107] op_sel_hi:[1,0]// 00000000BCD8: D3B14024 0802D524
	v_pk_mul_f32 v[34:35], v[34:35], v[106:107] op_sel_hi:[1,0]// 00000000BCE0: D3B14022 0802D522
	v_pk_mul_f32 v[32:33], v[32:33], v[106:107] op_sel_hi:[1,0]// 00000000BCE8: D3B14020 0802D520
	v_pk_mul_f32 v[30:31], v[30:31], v[106:107] op_sel_hi:[1,0]// 00000000BCF0: D3B1401E 0802D51E
	v_pk_mul_f32 v[28:29], v[28:29], v[106:107] op_sel_hi:[1,0]// 00000000BCF8: D3B1401C 0802D51C
	v_pk_mul_f32 v[26:27], v[26:27], v[106:107] op_sel_hi:[1,0]// 00000000BD00: D3B1401A 0802D51A
	v_pk_mul_f32 v[24:25], v[24:25], v[106:107] op_sel_hi:[1,0]// 00000000BD08: D3B14018 0802D518
	v_pk_mul_f32 v[22:23], v[22:23], v[106:107] op_sel_hi:[1,0]// 00000000BD10: D3B14016 0802D516
	v_pk_mul_f32 v[20:21], v[20:21], v[106:107] op_sel_hi:[1,0]// 00000000BD18: D3B14014 0802D514
	v_pk_mul_f32 v[18:19], v[18:19], v[106:107] op_sel_hi:[1,0]// 00000000BD20: D3B14012 0802D512
	v_pk_mul_f32 v[16:17], v[16:17], v[106:107] op_sel_hi:[1,0]// 00000000BD28: D3B14010 0802D510
	v_pk_mul_f32 v[14:15], v[14:15], v[106:107] op_sel_hi:[1,0]// 00000000BD30: D3B1400E 0802D50E
	v_pk_mul_f32 v[12:13], v[12:13], v[106:107] op_sel_hi:[1,0]// 00000000BD38: D3B1400C 0802D50C
	v_pk_mul_f32 v[10:11], v[10:11], v[106:107] op_sel_hi:[1,0]// 00000000BD40: D3B1400A 0802D50A
	v_pk_mul_f32 v[8:9], v[8:9], v[106:107] op_sel_hi:[1,0]    // 00000000BD48: D3B14008 0802D508
	v_pk_mul_f32 v[6:7], v[6:7], v[106:107] op_sel_hi:[1,0]    // 00000000BD50: D3B14006 0802D506
	v_pk_mul_f32 v[4:5], v[4:5], v[106:107] op_sel_hi:[1,0]    // 00000000BD58: D3B14004 0802D504
	v_pk_mul_f32 v[2:3], v[2:3], v[106:107] op_sel_hi:[1,0]    // 00000000BD60: D3B14002 0802D502
	v_mul_f32_e32 v135, v135, v106                             // 00000000BD68: 0B0ED587
	s_waitcnt vmcnt(3)                                         // 00000000BD6C: BF8C0F73
	s_barrier                                                  // 00000000BD70: BF8A0000
	s_add_u32 s59, s59, 1                                      // 00000000BD74: 803B813B
	s_add_u32 s54, s59, 1                                      // 00000000BD78: 8036813B
	s_cmp_ge_u32 s54, s48                                      // 00000000BD7C: BF093036
	s_cbranch_scc1 342                                         // 00000000BD80: BF850156 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x22dc>
	s_setprio 0                                                // 00000000BD84: BF8F0000
	v_exp_f32_e32 v82, v82                                     // 00000000BD88: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000BD8C: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000BD90: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000BD94: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000BD98: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000BD9C: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000BDA0: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000BDA4: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000BDA8: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000BDAC: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000BDB0: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000BDB4: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000BDB8: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000BDBC: 7EBE415F
	v_exp_f32_e32 v96, v96                                     // 00000000BDC0: 7EC04160
	v_exp_f32_e32 v97, v97                                     // 00000000BDC4: 7EC24161
	v_cvt_pk_fp8_f32 v106, v82, v83                            // 00000000BDC8: D2A2006A 0002A752
	v_cvt_pk_fp8_f32 v106, v84, v85 op_sel:[0,0,1]             // 00000000BDD0: D2A2406A 0002AB54
	v_cvt_pk_fp8_f32 v107, v86, v87                            // 00000000BDD8: D2A2006B 0002AF56
	v_cvt_pk_fp8_f32 v107, v88, v89 op_sel:[0,0,1]             // 00000000BDE0: D2A2406B 0002B358
	v_exp_f32_e32 v66, v66                                     // 00000000BDE8: 7E844142
	v_cvt_pk_fp8_f32 v108, v90, v91                            // 00000000BDEC: D2A2006C 0002B75A
	v_exp_f32_e32 v67, v67                                     // 00000000BDF4: 7E864143
	v_cvt_pk_fp8_f32 v108, v92, v93 op_sel:[0,0,1]             // 00000000BDF8: D2A2406C 0002BB5C
	v_exp_f32_e32 v68, v68                                     // 00000000BE00: 7E884144
	v_cvt_pk_fp8_f32 v109, v94, v95                            // 00000000BE04: D2A2006D 0002BF5E
	v_exp_f32_e32 v69, v69                                     // 00000000BE0C: 7E8A4145
	v_cvt_pk_fp8_f32 v109, v96, v97 op_sel:[0,0,1]             // 00000000BE10: D2A2406D 0002C360
	v_exp_f32_e32 v70, v70                                     // 00000000BE18: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000BE1C: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000BE20: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000BE24: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000BE28: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000BE2C: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000BE30: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000BE34: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000BE38: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000BE3C: 7E9E414F
	v_exp_f32_e32 v80, v80                                     // 00000000BE40: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000BE44: 7EA24151
	v_cvt_pk_fp8_f32 v110, v66, v67                            // 00000000BE48: D2A2006E 00028742
	v_cvt_pk_fp8_f32 v110, v68, v69 op_sel:[0,0,1]             // 00000000BE50: D2A2406E 00028B44
	v_cvt_pk_fp8_f32 v111, v70, v71                            // 00000000BE58: D2A2006F 00028F46
	v_cvt_pk_fp8_f32 v111, v72, v73 op_sel:[0,0,1]             // 00000000BE60: D2A2406F 00029348
	v_cvt_pk_fp8_f32 v112, v74, v75                            // 00000000BE68: D2A20070 0002974A
	v_cvt_pk_fp8_f32 v112, v76, v77 op_sel:[0,0,1]             // 00000000BE70: D2A24070 00029B4C
	v_cvt_pk_fp8_f32 v113, v78, v79                            // 00000000BE78: D2A20071 00029F4E
	v_cvt_pk_fp8_f32 v113, v80, v81 op_sel:[0,0,1]             // 00000000BE80: D2A24071 0002A350
	ds_read_b128 v[66:69], v122                                // 00000000BE88: D9FE0000 4200007A
	ds_read_b128 v[70:73], v122 offset:16                      // 00000000BE90: D9FE0010 4600007A
	ds_read_b128 v[138:141], v122 offset:8192                  // 00000000BE98: D9FE2000 8A00007A
	ds_read_b128 v[142:145], v122 offset:8208                  // 00000000BEA0: D9FE2010 8E00007A
	ds_read_b128 v[146:149], v123                              // 00000000BEA8: D9FE0000 9200007B
	ds_read_b128 v[150:153], v123 offset:16                    // 00000000BEB0: D9FE0010 9600007B
	ds_read_b128 v[154:157], v123 offset:8192                  // 00000000BEB8: D9FE2000 9A00007B
	ds_read_b128 v[158:161], v123 offset:8208                  // 00000000BEC0: D9FE2010 9E00007B
	s_barrier                                                  // 00000000BEC8: BF8A0000
	s_setprio 1                                                // 00000000BECC: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[114:117], v[98:105], v[106:113], 0// 00000000BED0: D3AD0072 0202D562
	ds_read_b128 v[190:193], v124                              // 00000000BED8: D9FE0000 BE00007C
	ds_read_b128 v[194:197], v124 offset:16                    // 00000000BEE0: D9FE0010 C200007C
	s_waitcnt lgkmcnt(6)                                       // 00000000BEE8: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[66:73], v[166:173], 0// 00000000BEEC: D3AE0052 02034D42
	ds_read_b128 v[198:201], v124 offset:8192                  // 00000000BEF4: D9FE2000 C600007C
	ds_read_b128 v[202:205], v124 offset:8208                  // 00000000BEFC: D9FE2010 CA00007C
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[138:145], v[166:173], 0// 00000000BF04: D3AE0042 02034D8A
	ds_read_b64_tr_b8 v[138:139], v133 offset:24576            // 00000000BF0C: D9C46000 8A000085
	ds_read_b64_tr_b8 v[140:141], v133 offset:25600            // 00000000BF14: D9C46400 8C000085
	ds_read_b64_tr_b8 v[142:143], v133 offset:26624            // 00000000BF1C: D9C46800 8E000085
	ds_read_b64_tr_b8 v[144:145], v133 offset:27648            // 00000000BF24: D9C46C00 90000085
	s_min_u32 s54, s56, s69                                    // 00000000BF2C: 83B64538
	s_add_u32 m0, s62, 0xc000                                  // 00000000BF30: 807CFF3E 0000C000
	s_nop 0                                                    // 00000000BF38: BF800000
	buffer_load_dwordx4 v127, s[24:27], s54 offen lds          // 00000000BF3C: E05D1000 3606007F
	v_lshlrev_b32_e32 v134, 23, v136                           // 00000000BF44: 250D1097
	v_fma_f32 v135, v114, v134, v135                           // 00000000BF48: D1CB0087 061F0D72
	s_waitcnt lgkmcnt(8)                                       // 00000000BF50: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[146:153], v[174:181], v[82:97]// 00000000BF54: D3AE0052 054B5D92
	ds_read_b64_tr_b8 v[146:147], v133 offset:24832            // 00000000BF5C: D9C46100 92000085
	ds_read_b64_tr_b8 v[148:149], v133 offset:25856            // 00000000BF64: D9C46500 94000085
	ds_read_b64_tr_b8 v[150:151], v133 offset:26880            // 00000000BF6C: D9C46900 96000085
	ds_read_b64_tr_b8 v[152:153], v133 offset:27904            // 00000000BF74: D9C46D00 98000085
	s_add_u32 m0, s62, 0xe000                                  // 00000000BF7C: 807CFF3E 0000E000
	s_nop 0                                                    // 00000000BF84: BF800000
	buffer_load_dwordx4 v128, s[24:27], s54 offen lds          // 00000000BF88: E05D1000 36060080
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[154:161], v[174:181], v[66:81]// 00000000BF90: D3AE0042 050B5D9A
	s_min_u32 s54, s57, s70                                    // 00000000BF98: 83B64639
	s_add_u32 m0, s63, 0x2000                                  // 00000000BF9C: 807CFF3F 00002000
	s_nop 0                                                    // 00000000BFA4: BF800000
	buffer_load_dwordx4 v129, s[28:31], s54 offen lds          // 00000000BFA8: E05D1000 36070081
	s_add_u32 s56, s56, s64                                    // 00000000BFB0: 80384038
	s_add_u32 s57, s57, s34                                    // 00000000BFB4: 80392239
	s_waitcnt lgkmcnt(8)                                       // 00000000BFB8: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[190:197], v[182:189], v[82:97]// 00000000BFBC: D3AE0052 054B6DBE
	ds_read_b64_tr_b8 v[154:155], v133 offset:25088            // 00000000BFC4: D9C46200 9A000085
	ds_read_b64_tr_b8 v[156:157], v133 offset:26112            // 00000000BFCC: D9C46600 9C000085
	ds_read_b64_tr_b8 v[158:159], v133 offset:27136            // 00000000BFD4: D9C46A00 9E000085
	ds_read_b64_tr_b8 v[160:161], v133 offset:28160            // 00000000BFDC: D9C46E00 A0000085
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[198:205], v[182:189], v[66:81]// 00000000BFE4: D3AE0042 050B6DC6
	s_nop 3                                                    // 00000000BFEC: BF800003
	v_max_f32_e32 v114, v82, v83                               // 00000000BFF0: 16E4A752
	v_max3_f32 v114, v84, v85, v114                            // 00000000BFF4: D1D30072 05CAAB54
	v_max3_f32 v114, v86, v87, v114                            // 00000000BFFC: D1D30072 05CAAF56
	v_max3_f32 v114, v88, v89, v114                            // 00000000C004: D1D30072 05CAB358
	v_max3_f32 v114, v90, v91, v114                            // 00000000C00C: D1D30072 05CAB75A
	v_max3_f32 v114, v92, v93, v114                            // 00000000C014: D1D30072 05CABB5C
	v_max3_f32 v114, v94, v95, v114                            // 00000000C01C: D1D30072 05CABF5E
	v_max3_f32 v114, v96, v97, v114                            // 00000000C024: D1D30072 05CAC360
	s_waitcnt lgkmcnt(4)                                       // 00000000C02C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[138:145], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000C030: D3AC0000 0003117D D3AE0832 04CAD58A
	ds_read_b64_tr_b8 v[138:139], v133 offset:25344            // 00000000C040: D9C46300 8A000085
	ds_read_b64_tr_b8 v[140:141], v133 offset:26368            // 00000000C048: D9C46700 8C000085
	ds_read_b64_tr_b8 v[142:143], v133 offset:27392            // 00000000C050: D9C46B00 8E000085
	ds_read_b64_tr_b8 v[144:145], v133 offset:28416            // 00000000C058: D9C46F00 90000085
	v_max_f32_e32 v115, v66, v67                               // 00000000C060: 16E68742
	v_max3_f32 v115, v68, v69, v115                            // 00000000C064: D1D30073 05CE8B44
	v_max3_f32 v115, v70, v71, v115                            // 00000000C06C: D1D30073 05CE8F46
	v_max3_f32 v115, v72, v73, v115                            // 00000000C074: D1D30073 05CE9348
	v_max3_f32 v115, v74, v75, v115                            // 00000000C07C: D1D30073 05CE974A
	v_max3_f32 v115, v76, v77, v115                            // 00000000C084: D1D30073 05CE9B4C
	v_max3_f32 v115, v78, v79, v115                            // 00000000C08C: D1D30073 05CE9F4E
	v_max3_f32 v115, v80, v81, v115                            // 00000000C094: D1D30073 05CEA350
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[146:153], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000C09C: D3AC0000 0003117D D3AE0822 048AD592
	v_max_f32_e32 v114, v114, v115                             // 00000000C0AC: 16E4E772
	v_mov_b32_e32 v115, v114                                   // 00000000C0B0: 7EE60372
	s_nop 1                                                    // 00000000C0B4: BF800001
	v_permlane32_swap_b32_e32 v114, v115                       // 00000000C0B8: 7EE4B573
	v_max_f32_e32 v114, v114, v115                             // 00000000C0BC: 16E4E772
	v_mul_f32_e32 v115, v118, v114                             // 00000000C0C0: 0AE6E576
	v_max_f32_e32 v115, v137, v115                             // 00000000C0C4: 16E6E789
	v_sub_f32_e32 v116, v115, v137                             // 00000000C0C8: 04E91373
	v_cmp_lt_f32_e32 vcc, s61, v116                            // 00000000C0CC: 7C82E83D
	s_waitcnt lgkmcnt(0)                                       // 00000000C0D0: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[154:161], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000C0D4: D3AC0000 0003117D D3AE0812 044AD59A
	s_cmp_lg_u64 vcc, 0                                        // 00000000C0E4: BF13806A
	s_cselect_b64 s[54:55], -1, 0                              // 00000000C0E8: 85B680C1
	s_cselect_b32 s71, 1, 0                                    // 00000000C0EC: 85478081
	v_cndmask_b32_e64 v134, v137, v115, s[54:55]               // 00000000C0F0: D1000086 00DAE789
	v_fma_f32 v114, v114, v118, -v134                          // 00000000C0F8: D1CB0072 861AED72
	v_floor_f32_e32 v114, v114                                 // 00000000C100: 7EE43F72
	v_med3_f32 v114, v114, s60, 0                              // 00000000C104: D1D60072 02007972
	v_cvt_i32_f32_e32 v115, v114                               // 00000000C10C: 7EE61172
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[138:145], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000C110: D3AC0000 0003117D D3AE0802 040AD58A
	v_add_u32_e32 v136, 0x7f, v115                             // 00000000C120: 6910E6FF 0000007F
	v_add_f32_e32 v106, v134, v114                             // 00000000C128: 02D4E586
	v_sub_f32_e32 v106, 0x40c00000, v106                       // 00000000C12C: 04D4D4FF 40C00000
	v_pk_fma_f32 v[96:97], v[96:97], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C134: D3B00060 0DAAED60
	v_pk_fma_f32 v[94:95], v[94:95], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C13C: D3B0005E 0DAAED5E
	v_pk_fma_f32 v[92:93], v[92:93], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C144: D3B0005C 0DAAED5C
	v_pk_fma_f32 v[90:91], v[90:91], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C14C: D3B0005A 0DAAED5A
	v_pk_fma_f32 v[88:89], v[88:89], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C154: D3B00058 0DAAED58
	v_pk_fma_f32 v[86:87], v[86:87], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C15C: D3B00056 0DAAED56
	v_pk_fma_f32 v[84:85], v[84:85], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C164: D3B00054 0DAAED54
	v_pk_fma_f32 v[82:83], v[82:83], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C16C: D3B00052 0DAAED52
	v_pk_fma_f32 v[80:81], v[80:81], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C174: D3B00050 0DAAED50
	v_pk_fma_f32 v[78:79], v[78:79], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C17C: D3B0004E 0DAAED4E
	v_pk_fma_f32 v[76:77], v[76:77], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C184: D3B0004C 0DAAED4C
	v_pk_fma_f32 v[74:75], v[74:75], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C18C: D3B0004A 0DAAED4A
	v_pk_fma_f32 v[72:73], v[72:73], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C194: D3B00048 0DAAED48
	v_pk_fma_f32 v[70:71], v[70:71], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C19C: D3B00046 0DAAED46
	v_pk_fma_f32 v[68:69], v[68:69], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C1A4: D3B00044 0DAAED44
	v_pk_fma_f32 v[66:67], v[66:67], v[118:119], v[106:107] op_sel_hi:[1,0,0]// 00000000C1AC: D3B00042 0DAAED42
	s_cmp_eq_u32 s71, 0                                        // 00000000C1B4: BF068047
	s_cbranch_scc1 68                                          // 00000000C1B8: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x22cc>
	v_sub_f32_e32 v106, v137, v134                             // 00000000C1BC: 04D50D89
	v_exp_f32_e32 v106, v106                                   // 00000000C1C0: 7ED4416A
	s_nop 0                                                    // 00000000C1C4: BF800000
	v_pk_mul_f32 v[64:65], v[64:65], v[106:107] op_sel_hi:[1,0]// 00000000C1C8: D3B14040 0802D540
	v_pk_mul_f32 v[62:63], v[62:63], v[106:107] op_sel_hi:[1,0]// 00000000C1D0: D3B1403E 0802D53E
	v_pk_mul_f32 v[60:61], v[60:61], v[106:107] op_sel_hi:[1,0]// 00000000C1D8: D3B1403C 0802D53C
	v_pk_mul_f32 v[58:59], v[58:59], v[106:107] op_sel_hi:[1,0]// 00000000C1E0: D3B1403A 0802D53A
	v_pk_mul_f32 v[56:57], v[56:57], v[106:107] op_sel_hi:[1,0]// 00000000C1E8: D3B14038 0802D538
	v_pk_mul_f32 v[54:55], v[54:55], v[106:107] op_sel_hi:[1,0]// 00000000C1F0: D3B14036 0802D536
	v_pk_mul_f32 v[52:53], v[52:53], v[106:107] op_sel_hi:[1,0]// 00000000C1F8: D3B14034 0802D534
	v_pk_mul_f32 v[50:51], v[50:51], v[106:107] op_sel_hi:[1,0]// 00000000C200: D3B14032 0802D532
	v_pk_mul_f32 v[48:49], v[48:49], v[106:107] op_sel_hi:[1,0]// 00000000C208: D3B14030 0802D530
	v_pk_mul_f32 v[46:47], v[46:47], v[106:107] op_sel_hi:[1,0]// 00000000C210: D3B1402E 0802D52E
	v_pk_mul_f32 v[44:45], v[44:45], v[106:107] op_sel_hi:[1,0]// 00000000C218: D3B1402C 0802D52C
	v_pk_mul_f32 v[42:43], v[42:43], v[106:107] op_sel_hi:[1,0]// 00000000C220: D3B1402A 0802D52A
	v_pk_mul_f32 v[40:41], v[40:41], v[106:107] op_sel_hi:[1,0]// 00000000C228: D3B14028 0802D528
	v_pk_mul_f32 v[38:39], v[38:39], v[106:107] op_sel_hi:[1,0]// 00000000C230: D3B14026 0802D526
	v_pk_mul_f32 v[36:37], v[36:37], v[106:107] op_sel_hi:[1,0]// 00000000C238: D3B14024 0802D524
	v_pk_mul_f32 v[34:35], v[34:35], v[106:107] op_sel_hi:[1,0]// 00000000C240: D3B14022 0802D522
	v_pk_mul_f32 v[32:33], v[32:33], v[106:107] op_sel_hi:[1,0]// 00000000C248: D3B14020 0802D520
	v_pk_mul_f32 v[30:31], v[30:31], v[106:107] op_sel_hi:[1,0]// 00000000C250: D3B1401E 0802D51E
	v_pk_mul_f32 v[28:29], v[28:29], v[106:107] op_sel_hi:[1,0]// 00000000C258: D3B1401C 0802D51C
	v_pk_mul_f32 v[26:27], v[26:27], v[106:107] op_sel_hi:[1,0]// 00000000C260: D3B1401A 0802D51A
	v_pk_mul_f32 v[24:25], v[24:25], v[106:107] op_sel_hi:[1,0]// 00000000C268: D3B14018 0802D518
	v_pk_mul_f32 v[22:23], v[22:23], v[106:107] op_sel_hi:[1,0]// 00000000C270: D3B14016 0802D516
	v_pk_mul_f32 v[20:21], v[20:21], v[106:107] op_sel_hi:[1,0]// 00000000C278: D3B14014 0802D514
	v_pk_mul_f32 v[18:19], v[18:19], v[106:107] op_sel_hi:[1,0]// 00000000C280: D3B14012 0802D512
	v_pk_mul_f32 v[16:17], v[16:17], v[106:107] op_sel_hi:[1,0]// 00000000C288: D3B14010 0802D510
	v_pk_mul_f32 v[14:15], v[14:15], v[106:107] op_sel_hi:[1,0]// 00000000C290: D3B1400E 0802D50E
	v_pk_mul_f32 v[12:13], v[12:13], v[106:107] op_sel_hi:[1,0]// 00000000C298: D3B1400C 0802D50C
	v_pk_mul_f32 v[10:11], v[10:11], v[106:107] op_sel_hi:[1,0]// 00000000C2A0: D3B1400A 0802D50A
	v_pk_mul_f32 v[8:9], v[8:9], v[106:107] op_sel_hi:[1,0]    // 00000000C2A8: D3B14008 0802D508
	v_pk_mul_f32 v[6:7], v[6:7], v[106:107] op_sel_hi:[1,0]    // 00000000C2B0: D3B14006 0802D506
	v_pk_mul_f32 v[4:5], v[4:5], v[106:107] op_sel_hi:[1,0]    // 00000000C2B8: D3B14004 0802D504
	v_pk_mul_f32 v[2:3], v[2:3], v[106:107] op_sel_hi:[1,0]    // 00000000C2C0: D3B14002 0802D502
	v_mul_f32_e32 v135, v135, v106                             // 00000000C2C8: 0B0ED587
	s_waitcnt vmcnt(3)                                         // 00000000C2CC: BF8C0F73
	s_barrier                                                  // 00000000C2D0: BF8A0000
	s_add_u32 s59, s59, 1                                      // 00000000C2D4: 803B813B
	s_branch 64161                                             // 00000000C2D8: BF82FAA1 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd60>
	v_mov_b32_e32 v134, v137                                   // 00000000C2DC: 7F0C0389
	s_add_u32 s54, s59, s35                                    // 00000000C2E0: 8036233B
	s_bitcmp1_b32 s54, 0                                       // 00000000C2E4: BF0D8036
	s_cbranch_scc1 772                                         // 00000000C2E8: BF850304 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2efc>
	s_branch 4                                                 // 00000000C2EC: BF820004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2300>
	v_mov_b32_e32 v134, v137                                   // 00000000C2F0: 7F0C0389
	s_add_u32 s54, s59, s35                                    // 00000000C2F4: 8036233B
	s_bitcmp1_b32 s54, 0                                       // 00000000C2F8: BF0D8036
	s_cbranch_scc1 767                                         // 00000000C2FC: BF8502FF <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2efc>
	s_add_u32 s54, s59, 1                                      // 00000000C300: 8036813B
	s_cmp_ge_u32 s54, s68                                      // 00000000C304: BF094436
	s_cbranch_scc1 1532                                        // 00000000C308: BF8505FC <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3afc>
	s_add_u32 s56, s59, s35                                    // 00000000C30C: 8038233B
	s_lshl_b32 s54, s56, 13                                    // 00000000C310: 8E368D38
	s_and_b32 s54, s54, 0x6000                                 // 00000000C314: 8636FF36 00006000
	v_add_u32_e32 v137, s54, v133                              // 00000000C31C: 69130A36
	s_cmp_ge_u32 s59, s48                                      // 00000000C320: BF09303B
	s_cbranch_scc1 202                                         // 00000000C324: BF8500CA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2650>
	s_setprio 0                                                // 00000000C328: BF8F0000
	s_lshl_b32 s54, s56, 14                                    // 00000000C32C: 8E368E38
	s_addk_i32 s54, 0x4000                                     // 00000000C330: B7364000
	s_and_b32 s54, s54, 0xc000                                 // 00000000C334: 8636FF36 0000C000
	v_exp_f32_e32 v82, v82                                     // 00000000C33C: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000C340: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000C344: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000C348: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000C34C: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000C350: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000C354: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000C358: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000C35C: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000C360: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000C364: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000C368: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000C36C: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000C370: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000C374: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000C378: 7E9E414F
	v_or_b32_e32 v114, s54, v122                               // 00000000C37C: 28E4F436
	v_or_b32_e32 v115, s54, v123                               // 00000000C380: 28E6F636
	ds_read_b128 v[138:141], v114                              // 00000000C384: D9FE0000 8A000072
	ds_read_b128 v[142:145], v114 offset:16                    // 00000000C38C: D9FE0010 8E000072
	ds_read_b128 v[146:149], v114 offset:8192                  // 00000000C394: D9FE2000 92000072
	ds_read_b128 v[150:153], v114 offset:8208                  // 00000000C39C: D9FE2010 96000072
	ds_read_b128 v[154:157], v115                              // 00000000C3A4: D9FE0000 9A000073
	ds_read_b128 v[158:161], v115 offset:16                    // 00000000C3AC: D9FE0010 9E000073
	ds_read_b128 v[190:193], v115 offset:8192                  // 00000000C3B4: D9FE2000 BE000073
	ds_read_b128 v[194:197], v115 offset:8208                  // 00000000C3BC: D9FE2010 C2000073
	v_mov_b32_e32 v113, 0                                      // 00000000C3C4: 7EE20280
	v_mov_b32_e32 v106, 0                                      // 00000000C3C8: 7ED40280
	v_mov_b32_e32 v110, 0                                      // 00000000C3CC: 7EDC0280
	v_mov_b32_e32 v107, 0                                      // 00000000C3D0: 7ED60280
	v_mov_b32_e32 v111, 0                                      // 00000000C3D4: 7EDE0280
	v_mov_b32_e32 v108, 0                                      // 00000000C3D8: 7ED80280
	v_mov_b32_e32 v112, 0                                      // 00000000C3DC: 7EE00280
	v_mov_b32_e32 v109, 0                                      // 00000000C3E0: 7EDA0280
	v_exp_f32_e32 v84, v84                                     // 00000000C3E4: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000C3E8: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000C3EC: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000C3F0: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000C3F4: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000C3F8: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000C3FC: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000C400: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000C404: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000C408: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000C40C: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000C410: 7E9A414D
	v_exp_f32_e32 v96, v96                                     // 00000000C414: 7EC04160
	v_exp_f32_e32 v97, v97                                     // 00000000C418: 7EC24161
	v_exp_f32_e32 v80, v80                                     // 00000000C41C: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000C420: 7EA24151
	v_cvt_pk_fp8_f32 v106, v82, v83                            // 00000000C424: D2A2006A 0002A752
	v_cvt_pk_fp8_f32 v110, v66, v67                            // 00000000C42C: D2A2006E 00028742
	v_cvt_pk_fp8_f32 v107, v86, v87                            // 00000000C434: D2A2006B 0002AF56
	v_cvt_pk_fp8_f32 v111, v70, v71                            // 00000000C43C: D2A2006F 00028F46
	v_cvt_pk_fp8_f32 v108, v90, v91                            // 00000000C444: D2A2006C 0002B75A
	v_cvt_pk_fp8_f32 v112, v74, v75                            // 00000000C44C: D2A20070 0002974A
	v_cvt_pk_fp8_f32 v109, v94, v95                            // 00000000C454: D2A2006D 0002BF5E
	v_cvt_pk_fp8_f32 v113, v78, v79                            // 00000000C45C: D2A20071 00029F4E
	v_cvt_pk_fp8_f32 v106, v84, v85 op_sel:[0,0,1]             // 00000000C464: D2A2406A 0002AB54
	v_cvt_pk_fp8_f32 v110, v68, v69 op_sel:[0,0,1]             // 00000000C46C: D2A2406E 00028B44
	v_cvt_pk_fp8_f32 v107, v88, v89 op_sel:[0,0,1]             // 00000000C474: D2A2406B 0002B358
	v_cvt_pk_fp8_f32 v111, v72, v73 op_sel:[0,0,1]             // 00000000C47C: D2A2406F 00029348
	v_cvt_pk_fp8_f32 v108, v92, v93 op_sel:[0,0,1]             // 00000000C484: D2A2406C 0002BB5C
	v_cvt_pk_fp8_f32 v112, v76, v77 op_sel:[0,0,1]             // 00000000C48C: D2A24070 00029B4C
	v_cvt_pk_fp8_f32 v109, v96, v97 op_sel:[0,0,1]             // 00000000C494: D2A2406D 0002C360
	v_cvt_pk_fp8_f32 v113, v80, v81 op_sel:[0,0,1]             // 00000000C49C: D2A24071 0002A350
	s_barrier                                                  // 00000000C4A4: BF8A0000
	s_setprio 1                                                // 00000000C4A8: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[98:105], v[106:113], 0// 00000000C4AC: D3AD0042 0202D562
	s_nop 11                                                   // 00000000C4B4: BF80000B
	v_lshlrev_b32_e32 v67, 23, v136                            // 00000000C4B8: 24871097
	v_fma_f32 v135, v66, v67, v135                             // 00000000C4BC: D1CB0087 061E8742
	s_waitcnt lgkmcnt(0)                                       // 00000000C4C4: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[138:145], v[166:173], 0// 00000000C4C8: D3AE0052 02034D8A
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[146:153], v[166:173], 0// 00000000C4D0: D3AE0042 02034D92
	v_or_b32_e32 v114, s54, v124                               // 00000000C4D8: 28E4F836
	ds_read_b128 v[138:141], v114                              // 00000000C4DC: D9FE0000 8A000072
	ds_read_b128 v[142:145], v114 offset:16                    // 00000000C4E4: D9FE0010 8E000072
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[154:161], v[174:181], v[82:97]// 00000000C4EC: D3AE0052 054B5D9A
	ds_read_b128 v[146:149], v114 offset:8192                  // 00000000C4F4: D9FE2000 92000072
	ds_read_b128 v[150:153], v114 offset:8208                  // 00000000C4FC: D9FE2010 96000072
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[190:197], v[174:181], v[66:81]// 00000000C504: D3AE0042 050B5DBE
	s_waitcnt lgkmcnt(0)                                       // 00000000C50C: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[138:145], v[182:189], v[82:97]// 00000000C510: D3AE0052 054B6D8A
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[146:153], v[182:189], v[66:81]// 00000000C518: D3AE0042 050B6D92
	s_lshl_b32 s54, s59, 6                                     // 00000000C520: 8E36863B
	s_add_u32 s57, s54, 64                                     // 00000000C524: 8039C036
	s_sub_u32 s54, s3, s57                                     // 00000000C528: 80B63903
	s_sub_i32 s54, s54, 0                                      // 00000000C52C: 81B68036
	s_cmp_ge_i32 s54, 32                                       // 00000000C530: BF03A036
	s_cbranch_scc1 288                                         // 00000000C534: BF850120 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x29b8>
	s_cmp_lt_i32 s54, 0                                        // 00000000C538: BF048036
	s_cbranch_scc1 269                                         // 00000000C53C: BF85010D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2974>
	v_add_u32_e32 v114, s54, v119                              // 00000000C540: 68E4EE36
	v_and_b32_e32 v115, 4, v131                                // 00000000C544: 26E70684
	v_sub_u32_e32 v114, v114, v115                             // 00000000C548: 6AE4E772
	v_cmp_gt_i32_e32 vcc, 0, v114                              // 00000000C54C: 7D88E480
	s_nop 3                                                    // 00000000C550: BF800003
	v_cndmask_b32_e64 v82, v82, v126, vcc                      // 00000000C554: D1000052 01AAFD52
	v_cmp_gt_i32_e32 vcc, 1, v114                              // 00000000C55C: 7D88E481
	s_nop 1                                                    // 00000000C560: BF800001
	v_cndmask_b32_e64 v83, v83, v126, vcc                      // 00000000C564: D1000053 01AAFD53
	v_cmp_gt_i32_e32 vcc, 2, v114                              // 00000000C56C: 7D88E482
	s_nop 1                                                    // 00000000C570: BF800001
	v_cndmask_b32_e64 v84, v84, v126, vcc                      // 00000000C574: D1000054 01AAFD54
	v_cmp_gt_i32_e32 vcc, 3, v114                              // 00000000C57C: 7D88E483
	s_nop 1                                                    // 00000000C580: BF800001
	v_cndmask_b32_e64 v85, v85, v126, vcc                      // 00000000C584: D1000055 01AAFD55
	v_cmp_gt_i32_e32 vcc, 8, v114                              // 00000000C58C: 7D88E488
	s_nop 1                                                    // 00000000C590: BF800001
	v_cndmask_b32_e64 v86, v86, v126, vcc                      // 00000000C594: D1000056 01AAFD56
	v_cmp_gt_i32_e32 vcc, 9, v114                              // 00000000C59C: 7D88E489
	s_nop 1                                                    // 00000000C5A0: BF800001
	v_cndmask_b32_e64 v87, v87, v126, vcc                      // 00000000C5A4: D1000057 01AAFD57
	v_cmp_gt_i32_e32 vcc, 10, v114                             // 00000000C5AC: 7D88E48A
	s_nop 1                                                    // 00000000C5B0: BF800001
	v_cndmask_b32_e64 v88, v88, v126, vcc                      // 00000000C5B4: D1000058 01AAFD58
	v_cmp_gt_i32_e32 vcc, 11, v114                             // 00000000C5BC: 7D88E48B
	s_nop 1                                                    // 00000000C5C0: BF800001
	v_cndmask_b32_e64 v89, v89, v126, vcc                      // 00000000C5C4: D1000059 01AAFD59
	v_cmp_gt_i32_e32 vcc, 16, v114                             // 00000000C5CC: 7D88E490
	s_nop 1                                                    // 00000000C5D0: BF800001
	v_cndmask_b32_e64 v90, v90, v126, vcc                      // 00000000C5D4: D100005A 01AAFD5A
	v_cmp_gt_i32_e32 vcc, 17, v114                             // 00000000C5DC: 7D88E491
	s_nop 1                                                    // 00000000C5E0: BF800001
	v_cndmask_b32_e64 v91, v91, v126, vcc                      // 00000000C5E4: D100005B 01AAFD5B
	v_cmp_gt_i32_e32 vcc, 18, v114                             // 00000000C5EC: 7D88E492
	s_nop 1                                                    // 00000000C5F0: BF800001
	v_cndmask_b32_e64 v92, v92, v126, vcc                      // 00000000C5F4: D100005C 01AAFD5C
	v_cmp_gt_i32_e32 vcc, 19, v114                             // 00000000C5FC: 7D88E493
	s_nop 1                                                    // 00000000C600: BF800001
	v_cndmask_b32_e64 v93, v93, v126, vcc                      // 00000000C604: D100005D 01AAFD5D
	v_cmp_gt_i32_e32 vcc, 24, v114                             // 00000000C60C: 7D88E498
	s_nop 1                                                    // 00000000C610: BF800001
	v_cndmask_b32_e64 v94, v94, v126, vcc                      // 00000000C614: D100005E 01AAFD5E
	v_cmp_gt_i32_e32 vcc, 25, v114                             // 00000000C61C: 7D88E499
	s_nop 1                                                    // 00000000C620: BF800001
	v_cndmask_b32_e64 v95, v95, v126, vcc                      // 00000000C624: D100005F 01AAFD5F
	v_cmp_gt_i32_e32 vcc, 26, v114                             // 00000000C62C: 7D88E49A
	s_nop 1                                                    // 00000000C630: BF800001
	v_cndmask_b32_e64 v96, v96, v126, vcc                      // 00000000C634: D1000060 01AAFD60
	v_cmp_gt_i32_e32 vcc, 27, v114                             // 00000000C63C: 7D88E49B
	s_nop 1                                                    // 00000000C640: BF800001
	v_cndmask_b32_e64 v97, v97, v126, vcc                      // 00000000C644: D1000061 01AAFD61
	s_branch 218                                               // 00000000C64C: BF8200DA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x29b8>
	s_cmp_eq_u32 s59, s48                                      // 00000000C650: BF06303B
	s_cbranch_scc0 164                                         // 00000000C654: BF8400A4 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x28e8>
	s_setprio 0                                                // 00000000C658: BF8F0000
	v_exp_f32_e32 v114, v82                                    // 00000000C65C: 7EE44152
	v_exp_f32_e32 v115, v83                                    // 00000000C660: 7EE64153
	v_exp_f32_e32 v138, v66                                    // 00000000C664: 7F144142
	v_exp_f32_e32 v139, v67                                    // 00000000C668: 7F164143
	v_exp_f32_e32 v142, v86                                    // 00000000C66C: 7F1C4156
	v_exp_f32_e32 v143, v87                                    // 00000000C670: 7F1E4157
	v_exp_f32_e32 v146, v70                                    // 00000000C674: 7F244146
	v_exp_f32_e32 v147, v71                                    // 00000000C678: 7F264147
	v_exp_f32_e32 v150, v90                                    // 00000000C67C: 7F2C415A
	v_exp_f32_e32 v151, v91                                    // 00000000C680: 7F2E415B
	v_exp_f32_e32 v154, v74                                    // 00000000C684: 7F34414A
	v_exp_f32_e32 v155, v75                                    // 00000000C688: 7F36414B
	v_exp_f32_e32 v158, v94                                    // 00000000C68C: 7F3C415E
	v_exp_f32_e32 v159, v95                                    // 00000000C690: 7F3E415F
	v_exp_f32_e32 v162, v78                                    // 00000000C694: 7F44414E
	v_exp_f32_e32 v163, v79                                    // 00000000C698: 7F46414F
	v_mov_b32_e32 v113, 0                                      // 00000000C69C: 7EE20280
	v_mov_b32_e32 v106, 0                                      // 00000000C6A0: 7ED40280
	v_mov_b32_e32 v110, 0                                      // 00000000C6A4: 7EDC0280
	v_mov_b32_e32 v107, 0                                      // 00000000C6A8: 7ED60280
	v_mov_b32_e32 v111, 0                                      // 00000000C6AC: 7EDE0280
	v_mov_b32_e32 v108, 0                                      // 00000000C6B0: 7ED80280
	v_mov_b32_e32 v112, 0                                      // 00000000C6B4: 7EE00280
	v_mov_b32_e32 v109, 0                                      // 00000000C6B8: 7EDA0280
	v_exp_f32_e32 v116, v84                                    // 00000000C6BC: 7EE84154
	v_exp_f32_e32 v117, v85                                    // 00000000C6C0: 7EEA4155
	v_exp_f32_e32 v140, v68                                    // 00000000C6C4: 7F184144
	v_exp_f32_e32 v141, v69                                    // 00000000C6C8: 7F1A4145
	v_exp_f32_e32 v144, v88                                    // 00000000C6CC: 7F204158
	v_exp_f32_e32 v145, v89                                    // 00000000C6D0: 7F224159
	v_exp_f32_e32 v148, v72                                    // 00000000C6D4: 7F284148
	v_exp_f32_e32 v149, v73                                    // 00000000C6D8: 7F2A4149
	v_exp_f32_e32 v152, v92                                    // 00000000C6DC: 7F30415C
	v_exp_f32_e32 v153, v93                                    // 00000000C6E0: 7F32415D
	v_exp_f32_e32 v156, v76                                    // 00000000C6E4: 7F38414C
	v_exp_f32_e32 v157, v77                                    // 00000000C6E8: 7F3A414D
	v_exp_f32_e32 v160, v96                                    // 00000000C6EC: 7F404160
	v_exp_f32_e32 v161, v97                                    // 00000000C6F0: 7F424161
	v_exp_f32_e32 v164, v80                                    // 00000000C6F4: 7F484150
	v_exp_f32_e32 v165, v81                                    // 00000000C6F8: 7F4A4151
	v_cvt_pk_fp8_f32 v106, v114, v115                          // 00000000C6FC: D2A2006A 0002E772
	v_cvt_pk_fp8_f32 v110, v138, v139                          // 00000000C704: D2A2006E 0003178A
	v_cvt_pk_fp8_f32 v107, v142, v143                          // 00000000C70C: D2A2006B 00031F8E
	v_cvt_pk_fp8_f32 v111, v146, v147                          // 00000000C714: D2A2006F 00032792
	v_cvt_pk_fp8_f32 v108, v150, v151                          // 00000000C71C: D2A2006C 00032F96
	v_cvt_pk_fp8_f32 v112, v154, v155                          // 00000000C724: D2A20070 0003379A
	v_cvt_pk_fp8_f32 v109, v158, v159                          // 00000000C72C: D2A2006D 00033F9E
	v_cvt_pk_fp8_f32 v113, v162, v163                          // 00000000C734: D2A20071 000347A2
	v_cvt_pk_fp8_f32 v106, v116, v117 op_sel:[0,0,1]           // 00000000C73C: D2A2406A 0002EB74
	v_cvt_pk_fp8_f32 v110, v140, v141 op_sel:[0,0,1]           // 00000000C744: D2A2406E 00031B8C
	v_cvt_pk_fp8_f32 v107, v144, v145 op_sel:[0,0,1]           // 00000000C74C: D2A2406B 00032390
	v_cvt_pk_fp8_f32 v111, v148, v149 op_sel:[0,0,1]           // 00000000C754: D2A2406F 00032B94
	v_cvt_pk_fp8_f32 v108, v152, v153 op_sel:[0,0,1]           // 00000000C75C: D2A2406C 00033398
	v_cvt_pk_fp8_f32 v112, v156, v157 op_sel:[0,0,1]           // 00000000C764: D2A24070 00033B9C
	v_cvt_pk_fp8_f32 v109, v160, v161 op_sel:[0,0,1]           // 00000000C76C: D2A2406D 000343A0
	v_cvt_pk_fp8_f32 v113, v164, v165 op_sel:[0,0,1]           // 00000000C774: D2A24071 00034BA4
	s_barrier                                                  // 00000000C77C: BF8A0000
	s_setprio 1                                                // 00000000C780: BF8F0001
	s_waitcnt vmcnt(0)                                         // 00000000C784: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[114:117], v[98:105], v[106:113], 0// 00000000C788: D3AD0072 0202D562
	ds_read_b64_tr_b8 v[146:147], v137                         // 00000000C790: D9C40000 92000089
	ds_read_b64_tr_b8 v[148:149], v137 offset:1024             // 00000000C798: D9C40400 94000089
	ds_read_b64_tr_b8 v[150:151], v137 offset:2048             // 00000000C7A0: D9C40800 96000089
	ds_read_b64_tr_b8 v[152:153], v137 offset:3072             // 00000000C7A8: D9C40C00 98000089
	ds_read_b64_tr_b8 v[154:155], v137 offset:256              // 00000000C7B0: D9C40100 9A000089
	ds_read_b64_tr_b8 v[156:157], v137 offset:1280             // 00000000C7B8: D9C40500 9C000089
	ds_read_b64_tr_b8 v[158:159], v137 offset:2304             // 00000000C7C0: D9C40900 9E000089
	ds_read_b64_tr_b8 v[160:161], v137 offset:3328             // 00000000C7C8: D9C40D00 A0000089
	ds_read_b64_tr_b8 v[138:139], v137 offset:512              // 00000000C7D0: D9C40200 8A000089
	ds_read_b64_tr_b8 v[140:141], v137 offset:1536             // 00000000C7D8: D9C40600 8C000089
	ds_read_b64_tr_b8 v[142:143], v137 offset:2560             // 00000000C7E0: D9C40A00 8E000089
	ds_read_b64_tr_b8 v[144:145], v137 offset:3584             // 00000000C7E8: D9C40E00 90000089
	s_waitcnt lgkmcnt(4)                                       // 00000000C7F0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[146:153], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000C7F4: D3AC0000 0003117D D3AE0832 04CAD592
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[154:161], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000C804: D3AC0000 0003117D D3AE0822 048AD59A
	ds_read_b64_tr_b8 v[146:147], v137 offset:768              // 00000000C814: D9C40300 92000089
	ds_read_b64_tr_b8 v[148:149], v137 offset:1792             // 00000000C81C: D9C40700 94000089
	ds_read_b64_tr_b8 v[150:151], v137 offset:2816             // 00000000C824: D9C40B00 96000089
	ds_read_b64_tr_b8 v[152:153], v137 offset:3840             // 00000000C82C: D9C40F00 98000089
	s_add_u32 s55, s48, 4                                      // 00000000C834: 80378430
	s_cmp_ge_u32 s55, s68                                      // 00000000C838: BF094437
	s_cbranch_scc1 15                                          // 00000000C83C: BF85000F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x287c>
	s_lshl_b32 s56, s56, 14                                    // 00000000C840: 8E388E38
	s_mul_i32 s55, s55, s6                                     // 00000000C844: 92370637
	s_and_b32 s56, s56, 0xc000                                 // 00000000C848: 8638FF38 0000C000
	s_lshl_b32 s55, s55, 6                                     // 00000000C850: 8E378637
	s_or_b32 s56, s62, s56                                     // 00000000C854: 8738383E
	s_add_u32 m0, s56, 0                                       // 00000000C858: 807C8038
	s_nop 0                                                    // 00000000C85C: BF800000
	buffer_load_dwordx4 v127, s[24:27], s55 offen lds          // 00000000C860: E05D1000 3706007F
	s_add_u32 m0, s56, 0x2000                                  // 00000000C868: 807CFF38 00002000
	s_nop 0                                                    // 00000000C870: BF800000
	buffer_load_dwordx4 v128, s[24:27], s55 offen lds          // 00000000C874: E05D1000 37060080
	s_add_u32 s55, s48, 2                                      // 00000000C87C: 80378230
	s_cmp_ge_u32 s55, s68                                      // 00000000C880: BF094437
	s_cbranch_scc1 9                                           // 00000000C884: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x28ac>
	s_mul_i32 s55, s55, s7                                     // 00000000C888: 92370737
	s_xor_b32 s54, s54, 0x4000                                 // 00000000C88C: 8836FF36 00004000
	s_lshl_b32 s55, s55, 6                                     // 00000000C894: 8E378637
	s_add_u32 s54, s63, s54                                    // 00000000C898: 8036363F
	s_add_u32 m0, s54, 0                                       // 00000000C89C: 807C8036
	s_nop 0                                                    // 00000000C8A0: BF800000
	buffer_load_dwordx4 v129, s[28:31], s55 offen lds          // 00000000C8A4: E05D1000 37070081
	v_lshlrev_b32_e32 v115, 23, v136                           // 00000000C8AC: 24E71097
	v_fma_f32 v135, v114, v115, v135                           // 00000000C8B0: D1CB0087 061EE772
	s_waitcnt lgkmcnt(0)                                       // 00000000C8B8: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[138:145], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000C8BC: D3AC0000 0003117D D3AE0812 044AD58A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[146:153], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000C8CC: D3AC0000 0003117D D3AE0802 040AD592
	s_barrier                                                  // 00000000C8DC: BF8A0000
	s_add_u32 s59, s48, 1                                      // 00000000C8E0: 803B8130
	s_branch 389                                               // 00000000C8E4: BF820185 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2efc>
	s_barrier                                                  // 00000000C8E8: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000C8EC: BF8C0F70
	s_add_u32 s55, s59, 4                                      // 00000000C8F0: 8037843B
	s_cmp_ge_u32 s55, s68                                      // 00000000C8F4: BF094437
	s_cbranch_scc1 15                                          // 00000000C8F8: BF85000F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2938>
	s_lshl_b32 s56, s56, 14                                    // 00000000C8FC: 8E388E38
	s_mul_i32 s55, s55, s6                                     // 00000000C900: 92370637
	s_and_b32 s56, s56, 0xc000                                 // 00000000C904: 8638FF38 0000C000
	s_lshl_b32 s55, s55, 6                                     // 00000000C90C: 8E378637
	s_or_b32 s56, s62, s56                                     // 00000000C910: 8738383E
	s_add_u32 m0, s56, 0                                       // 00000000C914: 807C8038
	s_nop 0                                                    // 00000000C918: BF800000
	buffer_load_dwordx4 v127, s[24:27], s55 offen lds          // 00000000C91C: E05D1000 3706007F
	s_add_u32 m0, s56, 0x2000                                  // 00000000C924: 807CFF38 00002000
	s_nop 0                                                    // 00000000C92C: BF800000
	buffer_load_dwordx4 v128, s[24:27], s55 offen lds          // 00000000C930: E05D1000 37060080
	s_add_u32 s55, s59, 2                                      // 00000000C938: 8037823B
	s_cmp_ge_u32 s55, s68                                      // 00000000C93C: BF094437
	s_cbranch_scc1 9                                           // 00000000C940: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2968>
	s_mul_i32 s55, s55, s7                                     // 00000000C944: 92370737
	s_xor_b32 s54, s54, 0x4000                                 // 00000000C948: 8836FF36 00004000
	s_lshl_b32 s55, s55, 6                                     // 00000000C950: 8E378637
	s_add_u32 s54, s63, s54                                    // 00000000C954: 8036363F
	s_add_u32 m0, s54, 0                                       // 00000000C958: 807C8036
	s_nop 0                                                    // 00000000C95C: BF800000
	buffer_load_dwordx4 v129, s[28:31], s55 offen lds          // 00000000C960: E05D1000 37070081
	s_barrier                                                  // 00000000C968: BF8A0000
	s_add_u32 s59, s59, 1                                      // 00000000C96C: 803B813B
	s_branch 354                                               // 00000000C970: BF820162 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2efc>
	s_nop 7                                                    // 00000000C974: BF800007
	v_mov_b32_e32 v82, v126                                    // 00000000C978: 7EA4037E
	v_mov_b32_e32 v83, v126                                    // 00000000C97C: 7EA6037E
	v_mov_b32_e32 v84, v126                                    // 00000000C980: 7EA8037E
	v_mov_b32_e32 v85, v126                                    // 00000000C984: 7EAA037E
	v_mov_b32_e32 v86, v126                                    // 00000000C988: 7EAC037E
	v_mov_b32_e32 v87, v126                                    // 00000000C98C: 7EAE037E
	v_mov_b32_e32 v88, v126                                    // 00000000C990: 7EB0037E
	v_mov_b32_e32 v89, v126                                    // 00000000C994: 7EB2037E
	v_mov_b32_e32 v90, v126                                    // 00000000C998: 7EB4037E
	v_mov_b32_e32 v91, v126                                    // 00000000C99C: 7EB6037E
	v_mov_b32_e32 v92, v126                                    // 00000000C9A0: 7EB8037E
	v_mov_b32_e32 v93, v126                                    // 00000000C9A4: 7EBA037E
	v_mov_b32_e32 v94, v126                                    // 00000000C9A8: 7EBC037E
	v_mov_b32_e32 v95, v126                                    // 00000000C9AC: 7EBE037E
	v_mov_b32_e32 v96, v126                                    // 00000000C9B0: 7EC0037E
	v_mov_b32_e32 v97, v126                                    // 00000000C9B4: 7EC2037E
	s_sub_u32 s54, s3, s57                                     // 00000000C9B8: 80B63903
	s_sub_i32 s54, s54, 32                                     // 00000000C9BC: 81B6A036
	s_cmp_ge_i32 s54, 32                                       // 00000000C9C0: BF03A036
	s_cbranch_scc1 87                                          // 00000000C9C4: BF850057 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2b24>
	s_cmp_lt_i32 s54, 0                                        // 00000000C9C8: BF048036
	s_cbranch_scc1 68                                          // 00000000C9CC: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2ae0>
	v_add_u32_e32 v114, s54, v119                              // 00000000C9D0: 68E4EE36
	v_and_b32_e32 v115, 4, v131                                // 00000000C9D4: 26E70684
	v_sub_u32_e32 v114, v114, v115                             // 00000000C9D8: 6AE4E772
	v_cmp_gt_i32_e32 vcc, 0, v114                              // 00000000C9DC: 7D88E480
	s_nop 7                                                    // 00000000C9E0: BF800007
	v_cndmask_b32_e64 v66, v66, v126, vcc                      // 00000000C9E4: D1000042 01AAFD42
	v_cmp_gt_i32_e32 vcc, 1, v114                              // 00000000C9EC: 7D88E481
	s_nop 1                                                    // 00000000C9F0: BF800001
	v_cndmask_b32_e64 v67, v67, v126, vcc                      // 00000000C9F4: D1000043 01AAFD43
	v_cmp_gt_i32_e32 vcc, 2, v114                              // 00000000C9FC: 7D88E482
	s_nop 1                                                    // 00000000CA00: BF800001
	v_cndmask_b32_e64 v68, v68, v126, vcc                      // 00000000CA04: D1000044 01AAFD44
	v_cmp_gt_i32_e32 vcc, 3, v114                              // 00000000CA0C: 7D88E483
	s_nop 1                                                    // 00000000CA10: BF800001
	v_cndmask_b32_e64 v69, v69, v126, vcc                      // 00000000CA14: D1000045 01AAFD45
	v_cmp_gt_i32_e32 vcc, 8, v114                              // 00000000CA1C: 7D88E488
	s_nop 1                                                    // 00000000CA20: BF800001
	v_cndmask_b32_e64 v70, v70, v126, vcc                      // 00000000CA24: D1000046 01AAFD46
	v_cmp_gt_i32_e32 vcc, 9, v114                              // 00000000CA2C: 7D88E489
	s_nop 1                                                    // 00000000CA30: BF800001
	v_cndmask_b32_e64 v71, v71, v126, vcc                      // 00000000CA34: D1000047 01AAFD47
	v_cmp_gt_i32_e32 vcc, 10, v114                             // 00000000CA3C: 7D88E48A
	s_nop 1                                                    // 00000000CA40: BF800001
	v_cndmask_b32_e64 v72, v72, v126, vcc                      // 00000000CA44: D1000048 01AAFD48
	v_cmp_gt_i32_e32 vcc, 11, v114                             // 00000000CA4C: 7D88E48B
	s_nop 1                                                    // 00000000CA50: BF800001
	v_cndmask_b32_e64 v73, v73, v126, vcc                      // 00000000CA54: D1000049 01AAFD49
	v_cmp_gt_i32_e32 vcc, 16, v114                             // 00000000CA5C: 7D88E490
	s_nop 1                                                    // 00000000CA60: BF800001
	v_cndmask_b32_e64 v74, v74, v126, vcc                      // 00000000CA64: D100004A 01AAFD4A
	v_cmp_gt_i32_e32 vcc, 17, v114                             // 00000000CA6C: 7D88E491
	s_nop 1                                                    // 00000000CA70: BF800001
	v_cndmask_b32_e64 v75, v75, v126, vcc                      // 00000000CA74: D100004B 01AAFD4B
	v_cmp_gt_i32_e32 vcc, 18, v114                             // 00000000CA7C: 7D88E492
	s_nop 1                                                    // 00000000CA80: BF800001
	v_cndmask_b32_e64 v76, v76, v126, vcc                      // 00000000CA84: D100004C 01AAFD4C
	v_cmp_gt_i32_e32 vcc, 19, v114                             // 00000000CA8C: 7D88E493
	s_nop 1                                                    // 00000000CA90: BF800001
	v_cndmask_b32_e64 v77, v77, v126, vcc                      // 00000000CA94: D100004D 01AAFD4D
	v_cmp_gt_i32_e32 vcc, 24, v114                             // 00000000CA9C: 7D88E498
	s_nop 1                                                    // 00000000CAA0: BF800001
	v_cndmask_b32_e64 v78, v78, v126, vcc                      // 00000000CAA4: D100004E 01AAFD4E
	v_cmp_gt_i32_e32 vcc, 25, v114                             // 00000000CAAC: 7D88E499
	s_nop 1                                                    // 00000000CAB0: BF800001
	v_cndmask_b32_e64 v79, v79, v126, vcc                      // 00000000CAB4: D100004F 01AAFD4F
	v_cmp_gt_i32_e32 vcc, 26, v114                             // 00000000CABC: 7D88E49A
	s_nop 1                                                    // 00000000CAC0: BF800001
	v_cndmask_b32_e64 v80, v80, v126, vcc                      // 00000000CAC4: D1000050 01AAFD50
	v_cmp_gt_i32_e32 vcc, 27, v114                             // 00000000CACC: 7D88E49B
	s_nop 1                                                    // 00000000CAD0: BF800001
	v_cndmask_b32_e64 v81, v81, v126, vcc                      // 00000000CAD4: D1000051 01AAFD51
	s_branch 17                                                // 00000000CADC: BF820011 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2b24>
	s_nop 11                                                   // 00000000CAE0: BF80000B
	v_mov_b32_e32 v66, v126                                    // 00000000CAE4: 7E84037E
	v_mov_b32_e32 v67, v126                                    // 00000000CAE8: 7E86037E
	v_mov_b32_e32 v68, v126                                    // 00000000CAEC: 7E88037E
	v_mov_b32_e32 v69, v126                                    // 00000000CAF0: 7E8A037E
	v_mov_b32_e32 v70, v126                                    // 00000000CAF4: 7E8C037E
	v_mov_b32_e32 v71, v126                                    // 00000000CAF8: 7E8E037E
	v_mov_b32_e32 v72, v126                                    // 00000000CAFC: 7E90037E
	v_mov_b32_e32 v73, v126                                    // 00000000CB00: 7E92037E
	v_mov_b32_e32 v74, v126                                    // 00000000CB04: 7E94037E
	v_mov_b32_e32 v75, v126                                    // 00000000CB08: 7E96037E
	v_mov_b32_e32 v76, v126                                    // 00000000CB0C: 7E98037E
	v_mov_b32_e32 v77, v126                                    // 00000000CB10: 7E9A037E
	v_mov_b32_e32 v78, v126                                    // 00000000CB14: 7E9C037E
	v_mov_b32_e32 v79, v126                                    // 00000000CB18: 7E9E037E
	v_mov_b32_e32 v80, v126                                    // 00000000CB1C: 7EA0037E
	v_mov_b32_e32 v81, v126                                    // 00000000CB20: 7EA2037E
	s_and_b32 s69, s56, 3                                      // 00000000CB24: 86458338
	v_max_f32_e32 v114, v82, v83                               // 00000000CB28: 16E4A752
	v_max3_f32 v114, v84, v85, v114                            // 00000000CB2C: D1D30072 05CAAB54
	v_max3_f32 v114, v86, v87, v114                            // 00000000CB34: D1D30072 05CAAF56
	v_max3_f32 v114, v88, v89, v114                            // 00000000CB3C: D1D30072 05CAB358
	v_max3_f32 v114, v90, v91, v114                            // 00000000CB44: D1D30072 05CAB75A
	v_max3_f32 v114, v92, v93, v114                            // 00000000CB4C: D1D30072 05CABB5C
	v_max3_f32 v114, v94, v95, v114                            // 00000000CB54: D1D30072 05CABF5E
	v_max3_f32 v114, v96, v97, v114                            // 00000000CB5C: D1D30072 05CAC360
	s_nop 4                                                    // 00000000CB64: BF800004
	v_max_f32_e32 v115, v66, v67                               // 00000000CB68: 16E68742
	v_max3_f32 v115, v68, v69, v115                            // 00000000CB6C: D1D30073 05CE8B44
	v_max3_f32 v115, v70, v71, v115                            // 00000000CB74: D1D30073 05CE8F46
	v_max3_f32 v115, v72, v73, v115                            // 00000000CB7C: D1D30073 05CE9348
	v_max3_f32 v115, v74, v75, v115                            // 00000000CB84: D1D30073 05CE974A
	v_max3_f32 v115, v76, v77, v115                            // 00000000CB8C: D1D30073 05CE9B4C
	v_max3_f32 v115, v78, v79, v115                            // 00000000CB94: D1D30073 05CE9F4E
	v_max3_f32 v115, v80, v81, v115                            // 00000000CB9C: D1D30073 05CEA350
	v_max_f32_e32 v114, v114, v115                             // 00000000CBA4: 16E4E772
	v_mov_b32_e32 v115, v114                                   // 00000000CBA8: 7EE60372
	s_nop 1                                                    // 00000000CBAC: BF800001
	v_permlane32_swap_b32_e32 v114, v115                       // 00000000CBB0: 7EE4B573
	v_max_f32_e32 v114, v114, v115                             // 00000000CBB4: 16E4E772
	v_mul_f32_e32 v115, v118, v114                             // 00000000CBB8: 0AE6E576
	v_max_f32_e32 v115, v134, v115                             // 00000000CBBC: 16E6E786
	v_sub_f32_e32 v116, v115, v134                             // 00000000CBC0: 04E90D73
	v_cmp_lt_f32_e32 vcc, s61, v116                            // 00000000CBC4: 7C82E83D
	s_cmp_lg_u64 vcc, 0                                        // 00000000CBC8: BF13806A
	s_cselect_b64 s[54:55], -1, 0                              // 00000000CBCC: 85B680C1
	s_and_b64 s[56:57], s[54:55], exec                         // 00000000CBD0: 86B87E36
	s_cselect_b32 s56, 1, 0                                    // 00000000CBD4: 85388081
	s_cselect_b64 s[56:57], -1, 0                              // 00000000CBD8: 85B880C1
	v_cndmask_b32_e64 v115, v134, v115, s[56:57]               // 00000000CBDC: D1000073 00E2E786
	v_fma_f32 v114, v114, v118, -v115                          // 00000000CBE4: D1CB0072 85CEED72
	v_floor_f32_e32 v114, v114                                 // 00000000CBEC: 7EE43F72
	v_med3_f32 v114, v114, s60, 0                              // 00000000CBF0: D1D60072 02007972
	v_cvt_i32_f32_e32 v116, v114                               // 00000000CBF8: 7EE81172
	v_add_u32_e32 v116, 0x7f, v116                             // 00000000CBFC: 68E8E8FF 0000007F
	v_lshlrev_b32_e32 v117, 23, v116                           // 00000000CC04: 24EAE897
	v_add_f32_e32 v114, v115, v114                             // 00000000CC08: 02E4E573
	v_sub_f32_e32 v114, 0x40c00000, v114                       // 00000000CC0C: 04E4E4FF 40C00000
	ds_read_b64_tr_b8 v[146:147], v137                         // 00000000CC14: D9C40000 92000089
	ds_read_b64_tr_b8 v[148:149], v137 offset:1024             // 00000000CC1C: D9C40400 94000089
	ds_read_b64_tr_b8 v[150:151], v137 offset:2048             // 00000000CC24: D9C40800 96000089
	ds_read_b64_tr_b8 v[152:153], v137 offset:3072             // 00000000CC2C: D9C40C00 98000089
	ds_read_b64_tr_b8 v[154:155], v137 offset:256              // 00000000CC34: D9C40100 9A000089
	ds_read_b64_tr_b8 v[156:157], v137 offset:1280             // 00000000CC3C: D9C40500 9C000089
	ds_read_b64_tr_b8 v[158:159], v137 offset:2304             // 00000000CC44: D9C40900 9E000089
	ds_read_b64_tr_b8 v[160:161], v137 offset:3328             // 00000000CC4C: D9C40D00 A0000089
	ds_read_b64_tr_b8 v[138:139], v137 offset:512              // 00000000CC54: D9C40200 8A000089
	ds_read_b64_tr_b8 v[140:141], v137 offset:1536             // 00000000CC5C: D9C40600 8C000089
	ds_read_b64_tr_b8 v[142:143], v137 offset:2560             // 00000000CC64: D9C40A00 8E000089
	ds_read_b64_tr_b8 v[144:145], v137 offset:3584             // 00000000CC6C: D9C40E00 90000089
	s_waitcnt lgkmcnt(4)                                       // 00000000CC74: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[146:153], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000CC78: D3AC0000 0003117D D3AE0832 04CAD592
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[154:161], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000CC88: D3AC0000 0003117D D3AE0822 048AD59A
	ds_read_b64_tr_b8 v[146:147], v137 offset:768              // 00000000CC98: D9C40300 92000089
	ds_read_b64_tr_b8 v[148:149], v137 offset:1792             // 00000000CCA0: D9C40700 94000089
	ds_read_b64_tr_b8 v[150:151], v137 offset:2816             // 00000000CCA8: D9C40B00 96000089
	ds_read_b64_tr_b8 v[152:153], v137 offset:3840             // 00000000CCB0: D9C40F00 98000089
	s_add_u32 s56, s59, 4                                      // 00000000CCB8: 8038843B
	s_cmp_ge_u32 s56, s68                                      // 00000000CCBC: BF094438
	s_cbranch_scc1 13                                          // 00000000CCC0: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2cf8>
	s_lshl_b32 s57, s69, 14                                    // 00000000CCC4: 8E398E45
	s_mul_i32 s56, s56, s6                                     // 00000000CCC8: 92380638
	s_or_b32 s57, s62, s57                                     // 00000000CCCC: 8739393E
	s_lshl_b32 s56, s56, 6                                     // 00000000CCD0: 8E388638
	s_add_u32 m0, s57, 0                                       // 00000000CCD4: 807C8039
	s_nop 0                                                    // 00000000CCD8: BF800000
	buffer_load_dwordx4 v127, s[24:27], s56 offen lds          // 00000000CCDC: E05D1000 3806007F
	s_add_u32 m0, s57, 0x2000                                  // 00000000CCE4: 807CFF39 00002000
	s_nop 0                                                    // 00000000CCEC: BF800000
	buffer_load_dwordx4 v128, s[24:27], s56 offen lds          // 00000000CCF0: E05D1000 38060080
	s_add_u32 s56, s59, 2                                      // 00000000CCF8: 8038823B
	s_cmp_ge_u32 s56, s68                                      // 00000000CCFC: BF094438
	s_cbranch_scc1 10                                          // 00000000CD00: BF85000A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2d2c>
	s_lshl_b32 s57, s69, 13                                    // 00000000CD04: 8E398D45
	s_mul_i32 s56, s56, s7                                     // 00000000CD08: 92380738
	s_xor_b32 s57, s57, 0x4000                                 // 00000000CD0C: 8839FF39 00004000
	s_lshl_b32 s56, s56, 6                                     // 00000000CD14: 8E388638
	s_add_u32 s57, s63, s57                                    // 00000000CD18: 8039393F
	s_add_u32 m0, s57, 0                                       // 00000000CD1C: 807C8039
	s_nop 0                                                    // 00000000CD20: BF800000
	buffer_load_dwordx4 v129, s[28:31], s56 offen lds          // 00000000CD24: E05D1000 38070081
	s_waitcnt lgkmcnt(0)                                       // 00000000CD2C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[138:145], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000CD30: D3AC0000 0003117D D3AE0812 044AD58A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[146:153], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000CD40: D3AC0000 0003117D D3AE0802 040AD592
	v_pk_fma_f32 v[96:97], v[96:97], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000CD50: D3B00060 0DCAED60
	v_pk_fma_f32 v[94:95], v[94:95], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000CD58: D3B0005E 0DCAED5E
	v_pk_fma_f32 v[92:93], v[92:93], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000CD60: D3B0005C 0DCAED5C
	v_pk_fma_f32 v[90:91], v[90:91], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000CD68: D3B0005A 0DCAED5A
	v_pk_fma_f32 v[88:89], v[88:89], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000CD70: D3B00058 0DCAED58
	v_pk_fma_f32 v[86:87], v[86:87], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000CD78: D3B00056 0DCAED56
	v_pk_fma_f32 v[84:85], v[84:85], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000CD80: D3B00054 0DCAED54
	v_pk_fma_f32 v[82:83], v[82:83], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000CD88: D3B00052 0DCAED52
	v_pk_fma_f32 v[80:81], v[80:81], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000CD90: D3B00050 0DCAED50
	v_pk_fma_f32 v[78:79], v[78:79], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000CD98: D3B0004E 0DCAED4E
	v_pk_fma_f32 v[76:77], v[76:77], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000CDA0: D3B0004C 0DCAED4C
	v_pk_fma_f32 v[74:75], v[74:75], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000CDA8: D3B0004A 0DCAED4A
	v_pk_fma_f32 v[72:73], v[72:73], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000CDB0: D3B00048 0DCAED48
	v_pk_fma_f32 v[70:71], v[70:71], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000CDB8: D3B00046 0DCAED46
	v_pk_fma_f32 v[68:69], v[68:69], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000CDC0: D3B00044 0DCAED44
	v_pk_fma_f32 v[66:67], v[66:67], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000CDC8: D3B00042 0DCAED42
	s_and_b64 s[54:55], s[54:55], exec                         // 00000000CDD0: 86B67E36
	s_cbranch_scc0 68                                          // 00000000CDD4: BF840044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2ee8>
	v_sub_f32_e32 v106, v134, v115                             // 00000000CDD8: 04D4E786
	v_exp_f32_e32 v106, v106                                   // 00000000CDDC: 7ED4416A
	s_nop 0                                                    // 00000000CDE0: BF800000
	v_pk_mul_f32 v[64:65], v[106:107], v[64:65] op_sel_hi:[0,1]// 00000000CDE4: D3B14040 1002816A
	v_pk_mul_f32 v[62:63], v[106:107], v[62:63] op_sel_hi:[0,1]// 00000000CDEC: D3B1403E 10027D6A
	v_pk_mul_f32 v[60:61], v[106:107], v[60:61] op_sel_hi:[0,1]// 00000000CDF4: D3B1403C 1002796A
	v_pk_mul_f32 v[58:59], v[106:107], v[58:59] op_sel_hi:[0,1]// 00000000CDFC: D3B1403A 1002756A
	v_pk_mul_f32 v[56:57], v[106:107], v[56:57] op_sel_hi:[0,1]// 00000000CE04: D3B14038 1002716A
	v_pk_mul_f32 v[54:55], v[106:107], v[54:55] op_sel_hi:[0,1]// 00000000CE0C: D3B14036 10026D6A
	v_pk_mul_f32 v[52:53], v[106:107], v[52:53] op_sel_hi:[0,1]// 00000000CE14: D3B14034 1002696A
	v_pk_mul_f32 v[50:51], v[106:107], v[50:51] op_sel_hi:[0,1]// 00000000CE1C: D3B14032 1002656A
	v_pk_mul_f32 v[48:49], v[106:107], v[48:49] op_sel_hi:[0,1]// 00000000CE24: D3B14030 1002616A
	v_pk_mul_f32 v[46:47], v[106:107], v[46:47] op_sel_hi:[0,1]// 00000000CE2C: D3B1402E 10025D6A
	v_pk_mul_f32 v[44:45], v[106:107], v[44:45] op_sel_hi:[0,1]// 00000000CE34: D3B1402C 1002596A
	v_pk_mul_f32 v[42:43], v[106:107], v[42:43] op_sel_hi:[0,1]// 00000000CE3C: D3B1402A 1002556A
	v_pk_mul_f32 v[40:41], v[106:107], v[40:41] op_sel_hi:[0,1]// 00000000CE44: D3B14028 1002516A
	v_pk_mul_f32 v[38:39], v[106:107], v[38:39] op_sel_hi:[0,1]// 00000000CE4C: D3B14026 10024D6A
	v_pk_mul_f32 v[36:37], v[106:107], v[36:37] op_sel_hi:[0,1]// 00000000CE54: D3B14024 1002496A
	v_pk_mul_f32 v[34:35], v[106:107], v[34:35] op_sel_hi:[0,1]// 00000000CE5C: D3B14022 1002456A
	v_pk_mul_f32 v[32:33], v[106:107], v[32:33] op_sel_hi:[0,1]// 00000000CE64: D3B14020 1002416A
	v_pk_mul_f32 v[30:31], v[106:107], v[30:31] op_sel_hi:[0,1]// 00000000CE6C: D3B1401E 10023D6A
	v_pk_mul_f32 v[28:29], v[106:107], v[28:29] op_sel_hi:[0,1]// 00000000CE74: D3B1401C 1002396A
	v_pk_mul_f32 v[26:27], v[106:107], v[26:27] op_sel_hi:[0,1]// 00000000CE7C: D3B1401A 1002356A
	v_pk_mul_f32 v[24:25], v[106:107], v[24:25] op_sel_hi:[0,1]// 00000000CE84: D3B14018 1002316A
	v_pk_mul_f32 v[22:23], v[106:107], v[22:23] op_sel_hi:[0,1]// 00000000CE8C: D3B14016 10022D6A
	v_pk_mul_f32 v[20:21], v[106:107], v[20:21] op_sel_hi:[0,1]// 00000000CE94: D3B14014 1002296A
	v_pk_mul_f32 v[18:19], v[106:107], v[18:19] op_sel_hi:[0,1]// 00000000CE9C: D3B14012 1002256A
	v_pk_mul_f32 v[16:17], v[106:107], v[16:17] op_sel_hi:[0,1]// 00000000CEA4: D3B14010 1002216A
	v_pk_mul_f32 v[14:15], v[106:107], v[14:15] op_sel_hi:[0,1]// 00000000CEAC: D3B1400E 10021D6A
	v_pk_mul_f32 v[12:13], v[106:107], v[12:13] op_sel_hi:[0,1]// 00000000CEB4: D3B1400C 1002196A
	v_pk_mul_f32 v[10:11], v[106:107], v[10:11] op_sel_hi:[0,1]// 00000000CEBC: D3B1400A 1002156A
	v_pk_mul_f32 v[8:9], v[106:107], v[8:9] op_sel_hi:[0,1]    // 00000000CEC4: D3B14008 1002116A
	v_pk_mul_f32 v[6:7], v[106:107], v[6:7] op_sel_hi:[0,1]    // 00000000CECC: D3B14006 10020D6A
	v_pk_mul_f32 v[4:5], v[106:107], v[4:5] op_sel_hi:[0,1]    // 00000000CED4: D3B14004 1002096A
	v_pk_mul_f32 v[2:3], v[106:107], v[2:3] op_sel_hi:[0,1]    // 00000000CEDC: D3B14002 1002056A
	v_mul_f32_e32 v135, v135, v106                             // 00000000CEE4: 0B0ED587
	s_waitcnt vmcnt(0)                                         // 00000000CEE8: BF8C0F70
	s_barrier                                                  // 00000000CEEC: BF8A0000
	s_add_u32 s59, s59, 1                                      // 00000000CEF0: 803B813B
	v_mov_b32_e32 v134, v115                                   // 00000000CEF4: 7F0C0373
	v_mov_b32_e32 v136, v116                                   // 00000000CEF8: 7F100374
	s_add_u32 s54, s59, 1                                      // 00000000CEFC: 8036813B
	s_cmp_ge_u32 s54, s68                                      // 00000000CF00: BF094436
	s_cbranch_scc1 786                                         // 00000000CF04: BF850312 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3b50>
	s_add_u32 s56, s59, s35                                    // 00000000CF08: 8038233B
	s_lshl_b32 s54, s56, 13                                    // 00000000CF0C: 8E368D38
	s_and_b32 s54, s54, 0x6000                                 // 00000000CF10: 8636FF36 00006000
	v_add_u32_e32 v137, s54, v133                              // 00000000CF18: 69130A36
	s_cmp_ge_u32 s59, s48                                      // 00000000CF1C: BF09303B
	s_cbranch_scc1 202                                         // 00000000CF20: BF8500CA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x324c>
	s_setprio 0                                                // 00000000CF24: BF8F0000
	s_lshl_b32 s54, s56, 14                                    // 00000000CF28: 8E368E38
	s_addk_i32 s54, 0x4000                                     // 00000000CF2C: B7364000
	s_and_b32 s54, s54, 0xc000                                 // 00000000CF30: 8636FF36 0000C000
	v_exp_f32_e32 v82, v82                                     // 00000000CF38: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000CF3C: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000CF40: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000CF44: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000CF48: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000CF4C: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000CF50: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000CF54: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000CF58: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000CF5C: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000CF60: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000CF64: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000CF68: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000CF6C: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000CF70: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000CF74: 7E9E414F
	v_or_b32_e32 v114, s54, v122                               // 00000000CF78: 28E4F436
	v_or_b32_e32 v115, s54, v123                               // 00000000CF7C: 28E6F636
	ds_read_b128 v[138:141], v114                              // 00000000CF80: D9FE0000 8A000072
	ds_read_b128 v[142:145], v114 offset:16                    // 00000000CF88: D9FE0010 8E000072
	ds_read_b128 v[146:149], v114 offset:8192                  // 00000000CF90: D9FE2000 92000072
	ds_read_b128 v[150:153], v114 offset:8208                  // 00000000CF98: D9FE2010 96000072
	ds_read_b128 v[154:157], v115                              // 00000000CFA0: D9FE0000 9A000073
	ds_read_b128 v[158:161], v115 offset:16                    // 00000000CFA8: D9FE0010 9E000073
	ds_read_b128 v[190:193], v115 offset:8192                  // 00000000CFB0: D9FE2000 BE000073
	ds_read_b128 v[194:197], v115 offset:8208                  // 00000000CFB8: D9FE2010 C2000073
	v_mov_b32_e32 v113, 0                                      // 00000000CFC0: 7EE20280
	v_mov_b32_e32 v106, 0                                      // 00000000CFC4: 7ED40280
	v_mov_b32_e32 v110, 0                                      // 00000000CFC8: 7EDC0280
	v_mov_b32_e32 v107, 0                                      // 00000000CFCC: 7ED60280
	v_mov_b32_e32 v111, 0                                      // 00000000CFD0: 7EDE0280
	v_mov_b32_e32 v108, 0                                      // 00000000CFD4: 7ED80280
	v_mov_b32_e32 v112, 0                                      // 00000000CFD8: 7EE00280
	v_mov_b32_e32 v109, 0                                      // 00000000CFDC: 7EDA0280
	v_exp_f32_e32 v84, v84                                     // 00000000CFE0: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000CFE4: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000CFE8: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000CFEC: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000CFF0: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000CFF4: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000CFF8: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000CFFC: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000D000: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000D004: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000D008: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000D00C: 7E9A414D
	v_exp_f32_e32 v96, v96                                     // 00000000D010: 7EC04160
	v_exp_f32_e32 v97, v97                                     // 00000000D014: 7EC24161
	v_exp_f32_e32 v80, v80                                     // 00000000D018: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000D01C: 7EA24151
	v_cvt_pk_fp8_f32 v106, v82, v83                            // 00000000D020: D2A2006A 0002A752
	v_cvt_pk_fp8_f32 v110, v66, v67                            // 00000000D028: D2A2006E 00028742
	v_cvt_pk_fp8_f32 v107, v86, v87                            // 00000000D030: D2A2006B 0002AF56
	v_cvt_pk_fp8_f32 v111, v70, v71                            // 00000000D038: D2A2006F 00028F46
	v_cvt_pk_fp8_f32 v108, v90, v91                            // 00000000D040: D2A2006C 0002B75A
	v_cvt_pk_fp8_f32 v112, v74, v75                            // 00000000D048: D2A20070 0002974A
	v_cvt_pk_fp8_f32 v109, v94, v95                            // 00000000D050: D2A2006D 0002BF5E
	v_cvt_pk_fp8_f32 v113, v78, v79                            // 00000000D058: D2A20071 00029F4E
	v_cvt_pk_fp8_f32 v106, v84, v85 op_sel:[0,0,1]             // 00000000D060: D2A2406A 0002AB54
	v_cvt_pk_fp8_f32 v110, v68, v69 op_sel:[0,0,1]             // 00000000D068: D2A2406E 00028B44
	v_cvt_pk_fp8_f32 v107, v88, v89 op_sel:[0,0,1]             // 00000000D070: D2A2406B 0002B358
	v_cvt_pk_fp8_f32 v111, v72, v73 op_sel:[0,0,1]             // 00000000D078: D2A2406F 00029348
	v_cvt_pk_fp8_f32 v108, v92, v93 op_sel:[0,0,1]             // 00000000D080: D2A2406C 0002BB5C
	v_cvt_pk_fp8_f32 v112, v76, v77 op_sel:[0,0,1]             // 00000000D088: D2A24070 00029B4C
	v_cvt_pk_fp8_f32 v109, v96, v97 op_sel:[0,0,1]             // 00000000D090: D2A2406D 0002C360
	v_cvt_pk_fp8_f32 v113, v80, v81 op_sel:[0,0,1]             // 00000000D098: D2A24071 0002A350
	s_barrier                                                  // 00000000D0A0: BF8A0000
	s_setprio 1                                                // 00000000D0A4: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[98:105], v[106:113], 0// 00000000D0A8: D3AD0042 0202D562
	s_nop 11                                                   // 00000000D0B0: BF80000B
	v_lshlrev_b32_e32 v67, 23, v136                            // 00000000D0B4: 24871097
	v_fma_f32 v135, v66, v67, v135                             // 00000000D0B8: D1CB0087 061E8742
	s_waitcnt lgkmcnt(0)                                       // 00000000D0C0: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[138:145], v[166:173], 0// 00000000D0C4: D3AE0052 02034D8A
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[146:153], v[166:173], 0// 00000000D0CC: D3AE0042 02034D92
	v_or_b32_e32 v114, s54, v124                               // 00000000D0D4: 28E4F836
	ds_read_b128 v[138:141], v114                              // 00000000D0D8: D9FE0000 8A000072
	ds_read_b128 v[142:145], v114 offset:16                    // 00000000D0E0: D9FE0010 8E000072
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[154:161], v[174:181], v[82:97]// 00000000D0E8: D3AE0052 054B5D9A
	ds_read_b128 v[146:149], v114 offset:8192                  // 00000000D0F0: D9FE2000 92000072
	ds_read_b128 v[150:153], v114 offset:8208                  // 00000000D0F8: D9FE2010 96000072
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[190:197], v[174:181], v[66:81]// 00000000D100: D3AE0042 050B5DBE
	s_waitcnt lgkmcnt(0)                                       // 00000000D108: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[82:97], v[138:145], v[182:189], v[82:97]// 00000000D10C: D3AE0052 054B6D8A
	v_mfma_f32_32x32x64_f8f6f4 v[66:81], v[146:153], v[182:189], v[66:81]// 00000000D114: D3AE0042 050B6D92
	s_lshl_b32 s54, s59, 6                                     // 00000000D11C: 8E36863B
	s_add_u32 s57, s54, 64                                     // 00000000D120: 8039C036
	s_sub_u32 s54, s3, s57                                     // 00000000D124: 80B63903
	s_sub_i32 s54, s54, 0                                      // 00000000D128: 81B68036
	s_cmp_ge_i32 s54, 32                                       // 00000000D12C: BF03A036
	s_cbranch_scc1 288                                         // 00000000D130: BF850120 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x35b4>
	s_cmp_lt_i32 s54, 0                                        // 00000000D134: BF048036
	s_cbranch_scc1 269                                         // 00000000D138: BF85010D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3570>
	v_add_u32_e32 v114, s54, v119                              // 00000000D13C: 68E4EE36
	v_and_b32_e32 v115, 4, v131                                // 00000000D140: 26E70684
	v_sub_u32_e32 v114, v114, v115                             // 00000000D144: 6AE4E772
	v_cmp_gt_i32_e32 vcc, 0, v114                              // 00000000D148: 7D88E480
	s_nop 3                                                    // 00000000D14C: BF800003
	v_cndmask_b32_e64 v82, v82, v126, vcc                      // 00000000D150: D1000052 01AAFD52
	v_cmp_gt_i32_e32 vcc, 1, v114                              // 00000000D158: 7D88E481
	s_nop 1                                                    // 00000000D15C: BF800001
	v_cndmask_b32_e64 v83, v83, v126, vcc                      // 00000000D160: D1000053 01AAFD53
	v_cmp_gt_i32_e32 vcc, 2, v114                              // 00000000D168: 7D88E482
	s_nop 1                                                    // 00000000D16C: BF800001
	v_cndmask_b32_e64 v84, v84, v126, vcc                      // 00000000D170: D1000054 01AAFD54
	v_cmp_gt_i32_e32 vcc, 3, v114                              // 00000000D178: 7D88E483
	s_nop 1                                                    // 00000000D17C: BF800001
	v_cndmask_b32_e64 v85, v85, v126, vcc                      // 00000000D180: D1000055 01AAFD55
	v_cmp_gt_i32_e32 vcc, 8, v114                              // 00000000D188: 7D88E488
	s_nop 1                                                    // 00000000D18C: BF800001
	v_cndmask_b32_e64 v86, v86, v126, vcc                      // 00000000D190: D1000056 01AAFD56
	v_cmp_gt_i32_e32 vcc, 9, v114                              // 00000000D198: 7D88E489
	s_nop 1                                                    // 00000000D19C: BF800001
	v_cndmask_b32_e64 v87, v87, v126, vcc                      // 00000000D1A0: D1000057 01AAFD57
	v_cmp_gt_i32_e32 vcc, 10, v114                             // 00000000D1A8: 7D88E48A
	s_nop 1                                                    // 00000000D1AC: BF800001
	v_cndmask_b32_e64 v88, v88, v126, vcc                      // 00000000D1B0: D1000058 01AAFD58
	v_cmp_gt_i32_e32 vcc, 11, v114                             // 00000000D1B8: 7D88E48B
	s_nop 1                                                    // 00000000D1BC: BF800001
	v_cndmask_b32_e64 v89, v89, v126, vcc                      // 00000000D1C0: D1000059 01AAFD59
	v_cmp_gt_i32_e32 vcc, 16, v114                             // 00000000D1C8: 7D88E490
	s_nop 1                                                    // 00000000D1CC: BF800001
	v_cndmask_b32_e64 v90, v90, v126, vcc                      // 00000000D1D0: D100005A 01AAFD5A
	v_cmp_gt_i32_e32 vcc, 17, v114                             // 00000000D1D8: 7D88E491
	s_nop 1                                                    // 00000000D1DC: BF800001
	v_cndmask_b32_e64 v91, v91, v126, vcc                      // 00000000D1E0: D100005B 01AAFD5B
	v_cmp_gt_i32_e32 vcc, 18, v114                             // 00000000D1E8: 7D88E492
	s_nop 1                                                    // 00000000D1EC: BF800001
	v_cndmask_b32_e64 v92, v92, v126, vcc                      // 00000000D1F0: D100005C 01AAFD5C
	v_cmp_gt_i32_e32 vcc, 19, v114                             // 00000000D1F8: 7D88E493
	s_nop 1                                                    // 00000000D1FC: BF800001
	v_cndmask_b32_e64 v93, v93, v126, vcc                      // 00000000D200: D100005D 01AAFD5D
	v_cmp_gt_i32_e32 vcc, 24, v114                             // 00000000D208: 7D88E498
	s_nop 1                                                    // 00000000D20C: BF800001
	v_cndmask_b32_e64 v94, v94, v126, vcc                      // 00000000D210: D100005E 01AAFD5E
	v_cmp_gt_i32_e32 vcc, 25, v114                             // 00000000D218: 7D88E499
	s_nop 1                                                    // 00000000D21C: BF800001
	v_cndmask_b32_e64 v95, v95, v126, vcc                      // 00000000D220: D100005F 01AAFD5F
	v_cmp_gt_i32_e32 vcc, 26, v114                             // 00000000D228: 7D88E49A
	s_nop 1                                                    // 00000000D22C: BF800001
	v_cndmask_b32_e64 v96, v96, v126, vcc                      // 00000000D230: D1000060 01AAFD60
	v_cmp_gt_i32_e32 vcc, 27, v114                             // 00000000D238: 7D88E49B
	s_nop 1                                                    // 00000000D23C: BF800001
	v_cndmask_b32_e64 v97, v97, v126, vcc                      // 00000000D240: D1000061 01AAFD61
	s_branch 218                                               // 00000000D248: BF8200DA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x35b4>
	s_cmp_eq_u32 s59, s48                                      // 00000000D24C: BF06303B
	s_cbranch_scc0 164                                         // 00000000D250: BF8400A4 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x34e4>
	s_setprio 0                                                // 00000000D254: BF8F0000
	v_exp_f32_e32 v114, v82                                    // 00000000D258: 7EE44152
	v_exp_f32_e32 v115, v83                                    // 00000000D25C: 7EE64153
	v_exp_f32_e32 v138, v66                                    // 00000000D260: 7F144142
	v_exp_f32_e32 v139, v67                                    // 00000000D264: 7F164143
	v_exp_f32_e32 v142, v86                                    // 00000000D268: 7F1C4156
	v_exp_f32_e32 v143, v87                                    // 00000000D26C: 7F1E4157
	v_exp_f32_e32 v146, v70                                    // 00000000D270: 7F244146
	v_exp_f32_e32 v147, v71                                    // 00000000D274: 7F264147
	v_exp_f32_e32 v150, v90                                    // 00000000D278: 7F2C415A
	v_exp_f32_e32 v151, v91                                    // 00000000D27C: 7F2E415B
	v_exp_f32_e32 v154, v74                                    // 00000000D280: 7F34414A
	v_exp_f32_e32 v155, v75                                    // 00000000D284: 7F36414B
	v_exp_f32_e32 v158, v94                                    // 00000000D288: 7F3C415E
	v_exp_f32_e32 v159, v95                                    // 00000000D28C: 7F3E415F
	v_exp_f32_e32 v162, v78                                    // 00000000D290: 7F44414E
	v_exp_f32_e32 v163, v79                                    // 00000000D294: 7F46414F
	v_mov_b32_e32 v113, 0                                      // 00000000D298: 7EE20280
	v_mov_b32_e32 v106, 0                                      // 00000000D29C: 7ED40280
	v_mov_b32_e32 v110, 0                                      // 00000000D2A0: 7EDC0280
	v_mov_b32_e32 v107, 0                                      // 00000000D2A4: 7ED60280
	v_mov_b32_e32 v111, 0                                      // 00000000D2A8: 7EDE0280
	v_mov_b32_e32 v108, 0                                      // 00000000D2AC: 7ED80280
	v_mov_b32_e32 v112, 0                                      // 00000000D2B0: 7EE00280
	v_mov_b32_e32 v109, 0                                      // 00000000D2B4: 7EDA0280
	v_exp_f32_e32 v116, v84                                    // 00000000D2B8: 7EE84154
	v_exp_f32_e32 v117, v85                                    // 00000000D2BC: 7EEA4155
	v_exp_f32_e32 v140, v68                                    // 00000000D2C0: 7F184144
	v_exp_f32_e32 v141, v69                                    // 00000000D2C4: 7F1A4145
	v_exp_f32_e32 v144, v88                                    // 00000000D2C8: 7F204158
	v_exp_f32_e32 v145, v89                                    // 00000000D2CC: 7F224159
	v_exp_f32_e32 v148, v72                                    // 00000000D2D0: 7F284148
	v_exp_f32_e32 v149, v73                                    // 00000000D2D4: 7F2A4149
	v_exp_f32_e32 v152, v92                                    // 00000000D2D8: 7F30415C
	v_exp_f32_e32 v153, v93                                    // 00000000D2DC: 7F32415D
	v_exp_f32_e32 v156, v76                                    // 00000000D2E0: 7F38414C
	v_exp_f32_e32 v157, v77                                    // 00000000D2E4: 7F3A414D
	v_exp_f32_e32 v160, v96                                    // 00000000D2E8: 7F404160
	v_exp_f32_e32 v161, v97                                    // 00000000D2EC: 7F424161
	v_exp_f32_e32 v164, v80                                    // 00000000D2F0: 7F484150
	v_exp_f32_e32 v165, v81                                    // 00000000D2F4: 7F4A4151
	v_cvt_pk_fp8_f32 v106, v114, v115                          // 00000000D2F8: D2A2006A 0002E772
	v_cvt_pk_fp8_f32 v110, v138, v139                          // 00000000D300: D2A2006E 0003178A
	v_cvt_pk_fp8_f32 v107, v142, v143                          // 00000000D308: D2A2006B 00031F8E
	v_cvt_pk_fp8_f32 v111, v146, v147                          // 00000000D310: D2A2006F 00032792
	v_cvt_pk_fp8_f32 v108, v150, v151                          // 00000000D318: D2A2006C 00032F96
	v_cvt_pk_fp8_f32 v112, v154, v155                          // 00000000D320: D2A20070 0003379A
	v_cvt_pk_fp8_f32 v109, v158, v159                          // 00000000D328: D2A2006D 00033F9E
	v_cvt_pk_fp8_f32 v113, v162, v163                          // 00000000D330: D2A20071 000347A2
	v_cvt_pk_fp8_f32 v106, v116, v117 op_sel:[0,0,1]           // 00000000D338: D2A2406A 0002EB74
	v_cvt_pk_fp8_f32 v110, v140, v141 op_sel:[0,0,1]           // 00000000D340: D2A2406E 00031B8C
	v_cvt_pk_fp8_f32 v107, v144, v145 op_sel:[0,0,1]           // 00000000D348: D2A2406B 00032390
	v_cvt_pk_fp8_f32 v111, v148, v149 op_sel:[0,0,1]           // 00000000D350: D2A2406F 00032B94
	v_cvt_pk_fp8_f32 v108, v152, v153 op_sel:[0,0,1]           // 00000000D358: D2A2406C 00033398
	v_cvt_pk_fp8_f32 v112, v156, v157 op_sel:[0,0,1]           // 00000000D360: D2A24070 00033B9C
	v_cvt_pk_fp8_f32 v109, v160, v161 op_sel:[0,0,1]           // 00000000D368: D2A2406D 000343A0
	v_cvt_pk_fp8_f32 v113, v164, v165 op_sel:[0,0,1]           // 00000000D370: D2A24071 00034BA4
	s_barrier                                                  // 00000000D378: BF8A0000
	s_setprio 1                                                // 00000000D37C: BF8F0001
	s_waitcnt vmcnt(0)                                         // 00000000D380: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[114:117], v[98:105], v[106:113], 0// 00000000D384: D3AD0072 0202D562
	ds_read_b64_tr_b8 v[146:147], v137                         // 00000000D38C: D9C40000 92000089
	ds_read_b64_tr_b8 v[148:149], v137 offset:1024             // 00000000D394: D9C40400 94000089
	ds_read_b64_tr_b8 v[150:151], v137 offset:2048             // 00000000D39C: D9C40800 96000089
	ds_read_b64_tr_b8 v[152:153], v137 offset:3072             // 00000000D3A4: D9C40C00 98000089
	ds_read_b64_tr_b8 v[154:155], v137 offset:256              // 00000000D3AC: D9C40100 9A000089
	ds_read_b64_tr_b8 v[156:157], v137 offset:1280             // 00000000D3B4: D9C40500 9C000089
	ds_read_b64_tr_b8 v[158:159], v137 offset:2304             // 00000000D3BC: D9C40900 9E000089
	ds_read_b64_tr_b8 v[160:161], v137 offset:3328             // 00000000D3C4: D9C40D00 A0000089
	ds_read_b64_tr_b8 v[138:139], v137 offset:512              // 00000000D3CC: D9C40200 8A000089
	ds_read_b64_tr_b8 v[140:141], v137 offset:1536             // 00000000D3D4: D9C40600 8C000089
	ds_read_b64_tr_b8 v[142:143], v137 offset:2560             // 00000000D3DC: D9C40A00 8E000089
	ds_read_b64_tr_b8 v[144:145], v137 offset:3584             // 00000000D3E4: D9C40E00 90000089
	s_waitcnt lgkmcnt(4)                                       // 00000000D3EC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[146:153], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000D3F0: D3AC0000 0003117D D3AE0832 04CAD592
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[154:161], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000D400: D3AC0000 0003117D D3AE0822 048AD59A
	ds_read_b64_tr_b8 v[146:147], v137 offset:768              // 00000000D410: D9C40300 92000089
	ds_read_b64_tr_b8 v[148:149], v137 offset:1792             // 00000000D418: D9C40700 94000089
	ds_read_b64_tr_b8 v[150:151], v137 offset:2816             // 00000000D420: D9C40B00 96000089
	ds_read_b64_tr_b8 v[152:153], v137 offset:3840             // 00000000D428: D9C40F00 98000089
	s_add_u32 s55, s48, 4                                      // 00000000D430: 80378430
	s_cmp_ge_u32 s55, s68                                      // 00000000D434: BF094437
	s_cbranch_scc1 15                                          // 00000000D438: BF85000F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3478>
	s_lshl_b32 s56, s56, 14                                    // 00000000D43C: 8E388E38
	s_mul_i32 s55, s55, s6                                     // 00000000D440: 92370637
	s_and_b32 s56, s56, 0xc000                                 // 00000000D444: 8638FF38 0000C000
	s_lshl_b32 s55, s55, 6                                     // 00000000D44C: 8E378637
	s_or_b32 s56, s62, s56                                     // 00000000D450: 8738383E
	s_add_u32 m0, s56, 0                                       // 00000000D454: 807C8038
	s_nop 0                                                    // 00000000D458: BF800000
	buffer_load_dwordx4 v127, s[24:27], s55 offen lds          // 00000000D45C: E05D1000 3706007F
	s_add_u32 m0, s56, 0x2000                                  // 00000000D464: 807CFF38 00002000
	s_nop 0                                                    // 00000000D46C: BF800000
	buffer_load_dwordx4 v128, s[24:27], s55 offen lds          // 00000000D470: E05D1000 37060080
	s_add_u32 s55, s48, 2                                      // 00000000D478: 80378230
	s_cmp_ge_u32 s55, s68                                      // 00000000D47C: BF094437
	s_cbranch_scc1 9                                           // 00000000D480: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x34a8>
	s_mul_i32 s55, s55, s7                                     // 00000000D484: 92370737
	s_xor_b32 s54, s54, 0x4000                                 // 00000000D488: 8836FF36 00004000
	s_lshl_b32 s55, s55, 6                                     // 00000000D490: 8E378637
	s_add_u32 s54, s63, s54                                    // 00000000D494: 8036363F
	s_add_u32 m0, s54, 0                                       // 00000000D498: 807C8036
	s_nop 0                                                    // 00000000D49C: BF800000
	buffer_load_dwordx4 v129, s[28:31], s55 offen lds          // 00000000D4A0: E05D1000 37070081
	v_lshlrev_b32_e32 v115, 23, v136                           // 00000000D4A8: 24E71097
	v_fma_f32 v135, v114, v115, v135                           // 00000000D4AC: D1CB0087 061EE772
	s_waitcnt lgkmcnt(0)                                       // 00000000D4B4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[138:145], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000D4B8: D3AC0000 0003117D D3AE0812 044AD58A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[146:153], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000D4C8: D3AC0000 0003117D D3AE0802 040AD592
	s_barrier                                                  // 00000000D4D8: BF8A0000
	s_add_u32 s59, s48, 1                                      // 00000000D4DC: 803B8130
	s_branch 64391                                             // 00000000D4E0: BF82FB87 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2300>
	s_barrier                                                  // 00000000D4E4: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000D4E8: BF8C0F70
	s_add_u32 s55, s59, 4                                      // 00000000D4EC: 8037843B
	s_cmp_ge_u32 s55, s68                                      // 00000000D4F0: BF094437
	s_cbranch_scc1 15                                          // 00000000D4F4: BF85000F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3534>
	s_lshl_b32 s56, s56, 14                                    // 00000000D4F8: 8E388E38
	s_mul_i32 s55, s55, s6                                     // 00000000D4FC: 92370637
	s_and_b32 s56, s56, 0xc000                                 // 00000000D500: 8638FF38 0000C000
	s_lshl_b32 s55, s55, 6                                     // 00000000D508: 8E378637
	s_or_b32 s56, s62, s56                                     // 00000000D50C: 8738383E
	s_add_u32 m0, s56, 0                                       // 00000000D510: 807C8038
	s_nop 0                                                    // 00000000D514: BF800000
	buffer_load_dwordx4 v127, s[24:27], s55 offen lds          // 00000000D518: E05D1000 3706007F
	s_add_u32 m0, s56, 0x2000                                  // 00000000D520: 807CFF38 00002000
	s_nop 0                                                    // 00000000D528: BF800000
	buffer_load_dwordx4 v128, s[24:27], s55 offen lds          // 00000000D52C: E05D1000 37060080
	s_add_u32 s55, s59, 2                                      // 00000000D534: 8037823B
	s_cmp_ge_u32 s55, s68                                      // 00000000D538: BF094437
	s_cbranch_scc1 9                                           // 00000000D53C: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3564>
	s_mul_i32 s55, s55, s7                                     // 00000000D540: 92370737
	s_xor_b32 s54, s54, 0x4000                                 // 00000000D544: 8836FF36 00004000
	s_lshl_b32 s55, s55, 6                                     // 00000000D54C: 8E378637
	s_add_u32 s54, s63, s54                                    // 00000000D550: 8036363F
	s_add_u32 m0, s54, 0                                       // 00000000D554: 807C8036
	s_nop 0                                                    // 00000000D558: BF800000
	buffer_load_dwordx4 v129, s[28:31], s55 offen lds          // 00000000D55C: E05D1000 37070081
	s_barrier                                                  // 00000000D564: BF8A0000
	s_add_u32 s59, s59, 1                                      // 00000000D568: 803B813B
	s_branch 64356                                             // 00000000D56C: BF82FB64 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2300>
	s_nop 7                                                    // 00000000D570: BF800007
	v_mov_b32_e32 v82, v126                                    // 00000000D574: 7EA4037E
	v_mov_b32_e32 v83, v126                                    // 00000000D578: 7EA6037E
	v_mov_b32_e32 v84, v126                                    // 00000000D57C: 7EA8037E
	v_mov_b32_e32 v85, v126                                    // 00000000D580: 7EAA037E
	v_mov_b32_e32 v86, v126                                    // 00000000D584: 7EAC037E
	v_mov_b32_e32 v87, v126                                    // 00000000D588: 7EAE037E
	v_mov_b32_e32 v88, v126                                    // 00000000D58C: 7EB0037E
	v_mov_b32_e32 v89, v126                                    // 00000000D590: 7EB2037E
	v_mov_b32_e32 v90, v126                                    // 00000000D594: 7EB4037E
	v_mov_b32_e32 v91, v126                                    // 00000000D598: 7EB6037E
	v_mov_b32_e32 v92, v126                                    // 00000000D59C: 7EB8037E
	v_mov_b32_e32 v93, v126                                    // 00000000D5A0: 7EBA037E
	v_mov_b32_e32 v94, v126                                    // 00000000D5A4: 7EBC037E
	v_mov_b32_e32 v95, v126                                    // 00000000D5A8: 7EBE037E
	v_mov_b32_e32 v96, v126                                    // 00000000D5AC: 7EC0037E
	v_mov_b32_e32 v97, v126                                    // 00000000D5B0: 7EC2037E
	s_sub_u32 s54, s3, s57                                     // 00000000D5B4: 80B63903
	s_sub_i32 s54, s54, 32                                     // 00000000D5B8: 81B6A036
	s_cmp_ge_i32 s54, 32                                       // 00000000D5BC: BF03A036
	s_cbranch_scc1 87                                          // 00000000D5C0: BF850057 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3720>
	s_cmp_lt_i32 s54, 0                                        // 00000000D5C4: BF048036
	s_cbranch_scc1 68                                          // 00000000D5C8: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x36dc>
	v_add_u32_e32 v114, s54, v119                              // 00000000D5CC: 68E4EE36
	v_and_b32_e32 v115, 4, v131                                // 00000000D5D0: 26E70684
	v_sub_u32_e32 v114, v114, v115                             // 00000000D5D4: 6AE4E772
	v_cmp_gt_i32_e32 vcc, 0, v114                              // 00000000D5D8: 7D88E480
	s_nop 7                                                    // 00000000D5DC: BF800007
	v_cndmask_b32_e64 v66, v66, v126, vcc                      // 00000000D5E0: D1000042 01AAFD42
	v_cmp_gt_i32_e32 vcc, 1, v114                              // 00000000D5E8: 7D88E481
	s_nop 1                                                    // 00000000D5EC: BF800001
	v_cndmask_b32_e64 v67, v67, v126, vcc                      // 00000000D5F0: D1000043 01AAFD43
	v_cmp_gt_i32_e32 vcc, 2, v114                              // 00000000D5F8: 7D88E482
	s_nop 1                                                    // 00000000D5FC: BF800001
	v_cndmask_b32_e64 v68, v68, v126, vcc                      // 00000000D600: D1000044 01AAFD44
	v_cmp_gt_i32_e32 vcc, 3, v114                              // 00000000D608: 7D88E483
	s_nop 1                                                    // 00000000D60C: BF800001
	v_cndmask_b32_e64 v69, v69, v126, vcc                      // 00000000D610: D1000045 01AAFD45
	v_cmp_gt_i32_e32 vcc, 8, v114                              // 00000000D618: 7D88E488
	s_nop 1                                                    // 00000000D61C: BF800001
	v_cndmask_b32_e64 v70, v70, v126, vcc                      // 00000000D620: D1000046 01AAFD46
	v_cmp_gt_i32_e32 vcc, 9, v114                              // 00000000D628: 7D88E489
	s_nop 1                                                    // 00000000D62C: BF800001
	v_cndmask_b32_e64 v71, v71, v126, vcc                      // 00000000D630: D1000047 01AAFD47
	v_cmp_gt_i32_e32 vcc, 10, v114                             // 00000000D638: 7D88E48A
	s_nop 1                                                    // 00000000D63C: BF800001
	v_cndmask_b32_e64 v72, v72, v126, vcc                      // 00000000D640: D1000048 01AAFD48
	v_cmp_gt_i32_e32 vcc, 11, v114                             // 00000000D648: 7D88E48B
	s_nop 1                                                    // 00000000D64C: BF800001
	v_cndmask_b32_e64 v73, v73, v126, vcc                      // 00000000D650: D1000049 01AAFD49
	v_cmp_gt_i32_e32 vcc, 16, v114                             // 00000000D658: 7D88E490
	s_nop 1                                                    // 00000000D65C: BF800001
	v_cndmask_b32_e64 v74, v74, v126, vcc                      // 00000000D660: D100004A 01AAFD4A
	v_cmp_gt_i32_e32 vcc, 17, v114                             // 00000000D668: 7D88E491
	s_nop 1                                                    // 00000000D66C: BF800001
	v_cndmask_b32_e64 v75, v75, v126, vcc                      // 00000000D670: D100004B 01AAFD4B
	v_cmp_gt_i32_e32 vcc, 18, v114                             // 00000000D678: 7D88E492
	s_nop 1                                                    // 00000000D67C: BF800001
	v_cndmask_b32_e64 v76, v76, v126, vcc                      // 00000000D680: D100004C 01AAFD4C
	v_cmp_gt_i32_e32 vcc, 19, v114                             // 00000000D688: 7D88E493
	s_nop 1                                                    // 00000000D68C: BF800001
	v_cndmask_b32_e64 v77, v77, v126, vcc                      // 00000000D690: D100004D 01AAFD4D
	v_cmp_gt_i32_e32 vcc, 24, v114                             // 00000000D698: 7D88E498
	s_nop 1                                                    // 00000000D69C: BF800001
	v_cndmask_b32_e64 v78, v78, v126, vcc                      // 00000000D6A0: D100004E 01AAFD4E
	v_cmp_gt_i32_e32 vcc, 25, v114                             // 00000000D6A8: 7D88E499
	s_nop 1                                                    // 00000000D6AC: BF800001
	v_cndmask_b32_e64 v79, v79, v126, vcc                      // 00000000D6B0: D100004F 01AAFD4F
	v_cmp_gt_i32_e32 vcc, 26, v114                             // 00000000D6B8: 7D88E49A
	s_nop 1                                                    // 00000000D6BC: BF800001
	v_cndmask_b32_e64 v80, v80, v126, vcc                      // 00000000D6C0: D1000050 01AAFD50
	v_cmp_gt_i32_e32 vcc, 27, v114                             // 00000000D6C8: 7D88E49B
	s_nop 1                                                    // 00000000D6CC: BF800001
	v_cndmask_b32_e64 v81, v81, v126, vcc                      // 00000000D6D0: D1000051 01AAFD51
	s_branch 17                                                // 00000000D6D8: BF820011 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3720>
	s_nop 11                                                   // 00000000D6DC: BF80000B
	v_mov_b32_e32 v66, v126                                    // 00000000D6E0: 7E84037E
	v_mov_b32_e32 v67, v126                                    // 00000000D6E4: 7E86037E
	v_mov_b32_e32 v68, v126                                    // 00000000D6E8: 7E88037E
	v_mov_b32_e32 v69, v126                                    // 00000000D6EC: 7E8A037E
	v_mov_b32_e32 v70, v126                                    // 00000000D6F0: 7E8C037E
	v_mov_b32_e32 v71, v126                                    // 00000000D6F4: 7E8E037E
	v_mov_b32_e32 v72, v126                                    // 00000000D6F8: 7E90037E
	v_mov_b32_e32 v73, v126                                    // 00000000D6FC: 7E92037E
	v_mov_b32_e32 v74, v126                                    // 00000000D700: 7E94037E
	v_mov_b32_e32 v75, v126                                    // 00000000D704: 7E96037E
	v_mov_b32_e32 v76, v126                                    // 00000000D708: 7E98037E
	v_mov_b32_e32 v77, v126                                    // 00000000D70C: 7E9A037E
	v_mov_b32_e32 v78, v126                                    // 00000000D710: 7E9C037E
	v_mov_b32_e32 v79, v126                                    // 00000000D714: 7E9E037E
	v_mov_b32_e32 v80, v126                                    // 00000000D718: 7EA0037E
	v_mov_b32_e32 v81, v126                                    // 00000000D71C: 7EA2037E
	s_and_b32 s69, s56, 3                                      // 00000000D720: 86458338
	v_max_f32_e32 v114, v82, v83                               // 00000000D724: 16E4A752
	v_max3_f32 v114, v84, v85, v114                            // 00000000D728: D1D30072 05CAAB54
	v_max3_f32 v114, v86, v87, v114                            // 00000000D730: D1D30072 05CAAF56
	v_max3_f32 v114, v88, v89, v114                            // 00000000D738: D1D30072 05CAB358
	v_max3_f32 v114, v90, v91, v114                            // 00000000D740: D1D30072 05CAB75A
	v_max3_f32 v114, v92, v93, v114                            // 00000000D748: D1D30072 05CABB5C
	v_max3_f32 v114, v94, v95, v114                            // 00000000D750: D1D30072 05CABF5E
	v_max3_f32 v114, v96, v97, v114                            // 00000000D758: D1D30072 05CAC360
	s_nop 4                                                    // 00000000D760: BF800004
	v_max_f32_e32 v115, v66, v67                               // 00000000D764: 16E68742
	v_max3_f32 v115, v68, v69, v115                            // 00000000D768: D1D30073 05CE8B44
	v_max3_f32 v115, v70, v71, v115                            // 00000000D770: D1D30073 05CE8F46
	v_max3_f32 v115, v72, v73, v115                            // 00000000D778: D1D30073 05CE9348
	v_max3_f32 v115, v74, v75, v115                            // 00000000D780: D1D30073 05CE974A
	v_max3_f32 v115, v76, v77, v115                            // 00000000D788: D1D30073 05CE9B4C
	v_max3_f32 v115, v78, v79, v115                            // 00000000D790: D1D30073 05CE9F4E
	v_max3_f32 v115, v80, v81, v115                            // 00000000D798: D1D30073 05CEA350
	v_max_f32_e32 v114, v114, v115                             // 00000000D7A0: 16E4E772
	v_mov_b32_e32 v115, v114                                   // 00000000D7A4: 7EE60372
	s_nop 1                                                    // 00000000D7A8: BF800001
	v_permlane32_swap_b32_e32 v114, v115                       // 00000000D7AC: 7EE4B573
	v_max_f32_e32 v114, v114, v115                             // 00000000D7B0: 16E4E772
	v_mul_f32_e32 v115, v118, v114                             // 00000000D7B4: 0AE6E576
	v_max_f32_e32 v115, v134, v115                             // 00000000D7B8: 16E6E786
	v_sub_f32_e32 v116, v115, v134                             // 00000000D7BC: 04E90D73
	v_cmp_lt_f32_e32 vcc, s61, v116                            // 00000000D7C0: 7C82E83D
	s_cmp_lg_u64 vcc, 0                                        // 00000000D7C4: BF13806A
	s_cselect_b64 s[54:55], -1, 0                              // 00000000D7C8: 85B680C1
	s_and_b64 s[56:57], s[54:55], exec                         // 00000000D7CC: 86B87E36
	s_cselect_b32 s56, 1, 0                                    // 00000000D7D0: 85388081
	s_cselect_b64 s[56:57], -1, 0                              // 00000000D7D4: 85B880C1
	v_cndmask_b32_e64 v115, v134, v115, s[56:57]               // 00000000D7D8: D1000073 00E2E786
	v_fma_f32 v114, v114, v118, -v115                          // 00000000D7E0: D1CB0072 85CEED72
	v_floor_f32_e32 v114, v114                                 // 00000000D7E8: 7EE43F72
	v_med3_f32 v114, v114, s60, 0                              // 00000000D7EC: D1D60072 02007972
	v_cvt_i32_f32_e32 v116, v114                               // 00000000D7F4: 7EE81172
	v_add_u32_e32 v116, 0x7f, v116                             // 00000000D7F8: 68E8E8FF 0000007F
	v_lshlrev_b32_e32 v117, 23, v116                           // 00000000D800: 24EAE897
	v_add_f32_e32 v114, v115, v114                             // 00000000D804: 02E4E573
	v_sub_f32_e32 v114, 0x40c00000, v114                       // 00000000D808: 04E4E4FF 40C00000
	ds_read_b64_tr_b8 v[146:147], v137                         // 00000000D810: D9C40000 92000089
	ds_read_b64_tr_b8 v[148:149], v137 offset:1024             // 00000000D818: D9C40400 94000089
	ds_read_b64_tr_b8 v[150:151], v137 offset:2048             // 00000000D820: D9C40800 96000089
	ds_read_b64_tr_b8 v[152:153], v137 offset:3072             // 00000000D828: D9C40C00 98000089
	ds_read_b64_tr_b8 v[154:155], v137 offset:256              // 00000000D830: D9C40100 9A000089
	ds_read_b64_tr_b8 v[156:157], v137 offset:1280             // 00000000D838: D9C40500 9C000089
	ds_read_b64_tr_b8 v[158:159], v137 offset:2304             // 00000000D840: D9C40900 9E000089
	ds_read_b64_tr_b8 v[160:161], v137 offset:3328             // 00000000D848: D9C40D00 A0000089
	ds_read_b64_tr_b8 v[138:139], v137 offset:512              // 00000000D850: D9C40200 8A000089
	ds_read_b64_tr_b8 v[140:141], v137 offset:1536             // 00000000D858: D9C40600 8C000089
	ds_read_b64_tr_b8 v[142:143], v137 offset:2560             // 00000000D860: D9C40A00 8E000089
	ds_read_b64_tr_b8 v[144:145], v137 offset:3584             // 00000000D868: D9C40E00 90000089
	s_waitcnt lgkmcnt(4)                                       // 00000000D870: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[146:153], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000D874: D3AC0000 0003117D D3AE0832 04CAD592
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[154:161], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000D884: D3AC0000 0003117D D3AE0822 048AD59A
	ds_read_b64_tr_b8 v[146:147], v137 offset:768              // 00000000D894: D9C40300 92000089
	ds_read_b64_tr_b8 v[148:149], v137 offset:1792             // 00000000D89C: D9C40700 94000089
	ds_read_b64_tr_b8 v[150:151], v137 offset:2816             // 00000000D8A4: D9C40B00 96000089
	ds_read_b64_tr_b8 v[152:153], v137 offset:3840             // 00000000D8AC: D9C40F00 98000089
	s_add_u32 s56, s59, 4                                      // 00000000D8B4: 8038843B
	s_cmp_ge_u32 s56, s68                                      // 00000000D8B8: BF094438
	s_cbranch_scc1 13                                          // 00000000D8BC: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x38f4>
	s_lshl_b32 s57, s69, 14                                    // 00000000D8C0: 8E398E45
	s_mul_i32 s56, s56, s6                                     // 00000000D8C4: 92380638
	s_or_b32 s57, s62, s57                                     // 00000000D8C8: 8739393E
	s_lshl_b32 s56, s56, 6                                     // 00000000D8CC: 8E388638
	s_add_u32 m0, s57, 0                                       // 00000000D8D0: 807C8039
	s_nop 0                                                    // 00000000D8D4: BF800000
	buffer_load_dwordx4 v127, s[24:27], s56 offen lds          // 00000000D8D8: E05D1000 3806007F
	s_add_u32 m0, s57, 0x2000                                  // 00000000D8E0: 807CFF39 00002000
	s_nop 0                                                    // 00000000D8E8: BF800000
	buffer_load_dwordx4 v128, s[24:27], s56 offen lds          // 00000000D8EC: E05D1000 38060080
	s_add_u32 s56, s59, 2                                      // 00000000D8F4: 8038823B
	s_cmp_ge_u32 s56, s68                                      // 00000000D8F8: BF094438
	s_cbranch_scc1 10                                          // 00000000D8FC: BF85000A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3928>
	s_lshl_b32 s57, s69, 13                                    // 00000000D900: 8E398D45
	s_mul_i32 s56, s56, s7                                     // 00000000D904: 92380738
	s_xor_b32 s57, s57, 0x4000                                 // 00000000D908: 8839FF39 00004000
	s_lshl_b32 s56, s56, 6                                     // 00000000D910: 8E388638
	s_add_u32 s57, s63, s57                                    // 00000000D914: 8039393F
	s_add_u32 m0, s57, 0                                       // 00000000D918: 807C8039
	s_nop 0                                                    // 00000000D91C: BF800000
	buffer_load_dwordx4 v129, s[28:31], s56 offen lds          // 00000000D920: E05D1000 38070081
	s_waitcnt lgkmcnt(0)                                       // 00000000D928: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[138:145], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000D92C: D3AC0000 0003117D D3AE0812 044AD58A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[146:153], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000D93C: D3AC0000 0003117D D3AE0802 040AD592
	v_pk_fma_f32 v[96:97], v[96:97], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D94C: D3B00060 0DCAED60
	v_pk_fma_f32 v[94:95], v[94:95], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D954: D3B0005E 0DCAED5E
	v_pk_fma_f32 v[92:93], v[92:93], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D95C: D3B0005C 0DCAED5C
	v_pk_fma_f32 v[90:91], v[90:91], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D964: D3B0005A 0DCAED5A
	v_pk_fma_f32 v[88:89], v[88:89], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D96C: D3B00058 0DCAED58
	v_pk_fma_f32 v[86:87], v[86:87], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D974: D3B00056 0DCAED56
	v_pk_fma_f32 v[84:85], v[84:85], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D97C: D3B00054 0DCAED54
	v_pk_fma_f32 v[82:83], v[82:83], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D984: D3B00052 0DCAED52
	v_pk_fma_f32 v[80:81], v[80:81], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D98C: D3B00050 0DCAED50
	v_pk_fma_f32 v[78:79], v[78:79], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D994: D3B0004E 0DCAED4E
	v_pk_fma_f32 v[76:77], v[76:77], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D99C: D3B0004C 0DCAED4C
	v_pk_fma_f32 v[74:75], v[74:75], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D9A4: D3B0004A 0DCAED4A
	v_pk_fma_f32 v[72:73], v[72:73], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D9AC: D3B00048 0DCAED48
	v_pk_fma_f32 v[70:71], v[70:71], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D9B4: D3B00046 0DCAED46
	v_pk_fma_f32 v[68:69], v[68:69], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D9BC: D3B00044 0DCAED44
	v_pk_fma_f32 v[66:67], v[66:67], v[118:119], v[114:115] op_sel_hi:[1,0,0]// 00000000D9C4: D3B00042 0DCAED42
	s_and_b64 s[54:55], s[54:55], exec                         // 00000000D9CC: 86B67E36
	s_cbranch_scc0 68                                          // 00000000D9D0: BF840044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3ae4>
	v_sub_f32_e32 v106, v134, v115                             // 00000000D9D4: 04D4E786
	v_exp_f32_e32 v106, v106                                   // 00000000D9D8: 7ED4416A
	s_nop 0                                                    // 00000000D9DC: BF800000
	v_pk_mul_f32 v[64:65], v[106:107], v[64:65] op_sel_hi:[0,1]// 00000000D9E0: D3B14040 1002816A
	v_pk_mul_f32 v[62:63], v[106:107], v[62:63] op_sel_hi:[0,1]// 00000000D9E8: D3B1403E 10027D6A
	v_pk_mul_f32 v[60:61], v[106:107], v[60:61] op_sel_hi:[0,1]// 00000000D9F0: D3B1403C 1002796A
	v_pk_mul_f32 v[58:59], v[106:107], v[58:59] op_sel_hi:[0,1]// 00000000D9F8: D3B1403A 1002756A
	v_pk_mul_f32 v[56:57], v[106:107], v[56:57] op_sel_hi:[0,1]// 00000000DA00: D3B14038 1002716A
	v_pk_mul_f32 v[54:55], v[106:107], v[54:55] op_sel_hi:[0,1]// 00000000DA08: D3B14036 10026D6A
	v_pk_mul_f32 v[52:53], v[106:107], v[52:53] op_sel_hi:[0,1]// 00000000DA10: D3B14034 1002696A
	v_pk_mul_f32 v[50:51], v[106:107], v[50:51] op_sel_hi:[0,1]// 00000000DA18: D3B14032 1002656A
	v_pk_mul_f32 v[48:49], v[106:107], v[48:49] op_sel_hi:[0,1]// 00000000DA20: D3B14030 1002616A
	v_pk_mul_f32 v[46:47], v[106:107], v[46:47] op_sel_hi:[0,1]// 00000000DA28: D3B1402E 10025D6A
	v_pk_mul_f32 v[44:45], v[106:107], v[44:45] op_sel_hi:[0,1]// 00000000DA30: D3B1402C 1002596A
	v_pk_mul_f32 v[42:43], v[106:107], v[42:43] op_sel_hi:[0,1]// 00000000DA38: D3B1402A 1002556A
	v_pk_mul_f32 v[40:41], v[106:107], v[40:41] op_sel_hi:[0,1]// 00000000DA40: D3B14028 1002516A
	v_pk_mul_f32 v[38:39], v[106:107], v[38:39] op_sel_hi:[0,1]// 00000000DA48: D3B14026 10024D6A
	v_pk_mul_f32 v[36:37], v[106:107], v[36:37] op_sel_hi:[0,1]// 00000000DA50: D3B14024 1002496A
	v_pk_mul_f32 v[34:35], v[106:107], v[34:35] op_sel_hi:[0,1]// 00000000DA58: D3B14022 1002456A
	v_pk_mul_f32 v[32:33], v[106:107], v[32:33] op_sel_hi:[0,1]// 00000000DA60: D3B14020 1002416A
	v_pk_mul_f32 v[30:31], v[106:107], v[30:31] op_sel_hi:[0,1]// 00000000DA68: D3B1401E 10023D6A
	v_pk_mul_f32 v[28:29], v[106:107], v[28:29] op_sel_hi:[0,1]// 00000000DA70: D3B1401C 1002396A
	v_pk_mul_f32 v[26:27], v[106:107], v[26:27] op_sel_hi:[0,1]// 00000000DA78: D3B1401A 1002356A
	v_pk_mul_f32 v[24:25], v[106:107], v[24:25] op_sel_hi:[0,1]// 00000000DA80: D3B14018 1002316A
	v_pk_mul_f32 v[22:23], v[106:107], v[22:23] op_sel_hi:[0,1]// 00000000DA88: D3B14016 10022D6A
	v_pk_mul_f32 v[20:21], v[106:107], v[20:21] op_sel_hi:[0,1]// 00000000DA90: D3B14014 1002296A
	v_pk_mul_f32 v[18:19], v[106:107], v[18:19] op_sel_hi:[0,1]// 00000000DA98: D3B14012 1002256A
	v_pk_mul_f32 v[16:17], v[106:107], v[16:17] op_sel_hi:[0,1]// 00000000DAA0: D3B14010 1002216A
	v_pk_mul_f32 v[14:15], v[106:107], v[14:15] op_sel_hi:[0,1]// 00000000DAA8: D3B1400E 10021D6A
	v_pk_mul_f32 v[12:13], v[106:107], v[12:13] op_sel_hi:[0,1]// 00000000DAB0: D3B1400C 1002196A
	v_pk_mul_f32 v[10:11], v[106:107], v[10:11] op_sel_hi:[0,1]// 00000000DAB8: D3B1400A 1002156A
	v_pk_mul_f32 v[8:9], v[106:107], v[8:9] op_sel_hi:[0,1]    // 00000000DAC0: D3B14008 1002116A
	v_pk_mul_f32 v[6:7], v[106:107], v[6:7] op_sel_hi:[0,1]    // 00000000DAC8: D3B14006 10020D6A
	v_pk_mul_f32 v[4:5], v[106:107], v[4:5] op_sel_hi:[0,1]    // 00000000DAD0: D3B14004 1002096A
	v_pk_mul_f32 v[2:3], v[106:107], v[2:3] op_sel_hi:[0,1]    // 00000000DAD8: D3B14002 1002056A
	v_mul_f32_e32 v135, v135, v106                             // 00000000DAE0: 0B0ED587
	s_waitcnt vmcnt(0)                                         // 00000000DAE4: BF8C0F70
	s_barrier                                                  // 00000000DAE8: BF8A0000
	s_add_u32 s59, s59, 1                                      // 00000000DAEC: 803B813B
	v_mov_b32_e32 v134, v115                                   // 00000000DAF0: 7F0C0373
	v_mov_b32_e32 v136, v116                                   // 00000000DAF4: 7F100374
	s_branch 64001                                             // 00000000DAF8: BF82FA01 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2300>
	s_cmp_ge_u32 s48, s59                                      // 00000000DAFC: BF093B30
	s_cbranch_scc1 40                                          // 00000000DB00: BF850028 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3ba4>
	s_waitcnt vmcnt(0)                                         // 00000000DB04: BF8C0F70
	s_barrier                                                  // 00000000DB08: BF8A0000
	s_add_u32 s31, s68, s35                                    // 00000000DB0C: 801F2344
	s_and_b32 s35, s31, 3                                      // 00000000DB10: 8623831F
	s_cmp_lg_u32 s58, 0                                        // 00000000DB14: BF07803A
	s_mov_b32 s70, 0                                           // 00000000DB18: BEC60080
	s_cbranch_scc1 4                                           // 00000000DB1C: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3b30>
	s_not_b32 s31, s16                                         // 00000000DB20: BE9F0410
	s_add_u32 s31, s50, s31                                    // 00000000DB24: 801F1F32
	s_cmp_lg_u32 s16, s31                                      // 00000000DB28: BF071F10
	s_cbranch_scc1 243                                         // 00000000DB2C: BF8500F3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3efc>
	s_add_u32 s2, s2, s13                                      // 00000000DB30: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000DB34: BF093102
	s_cbranch_scc1 220                                         // 00000000DB38: BF8500DC <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3eac>
	s_lshl_b32 s16, s2, 5                                      // 00000000DB3C: 8E108502
	s_load_dwordx8 s[16:23], s[46:47], s16 offset:0x0          // 00000000DB40: C00E4417 20000000
	s_mov_b64 s[56:57], -1                                     // 00000000DB48: BEB801C1
	s_branch 237                                               // 00000000DB4C: BF8200ED <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3f04>
	s_cmp_ge_u32 s48, s59                                      // 00000000DB50: BF093B30
	s_cbranch_scc1 116                                         // 00000000DB54: BF850074 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d28>
	s_waitcnt vmcnt(0)                                         // 00000000DB58: BF8C0F70
	s_barrier                                                  // 00000000DB5C: BF8A0000
	s_add_u32 s31, s68, s35                                    // 00000000DB60: 801F2344
	s_and_b32 s35, s31, 3                                      // 00000000DB64: 8623831F
	s_cmp_lg_u32 s58, 0                                        // 00000000DB68: BF07803A
	s_mov_b32 s70, 0                                           // 00000000DB6C: BEC60080
	s_cbranch_scc1 4                                           // 00000000DB70: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3b84>
	s_not_b32 s31, s16                                         // 00000000DB74: BE9F0410
	s_add_u32 s31, s50, s31                                    // 00000000DB78: 801F1F32
	s_cmp_lg_u32 s16, s31                                      // 00000000DB7C: BF071F10
	s_cbranch_scc1 347                                         // 00000000DB80: BF85015B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x40f0>
	s_add_u32 s2, s2, s13                                      // 00000000DB84: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000DB88: BF093102
	s_cbranch_scc1 204                                         // 00000000DB8C: BF8500CC <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3ec0>
	s_lshl_b32 s16, s2, 5                                      // 00000000DB90: 8E108502
	s_load_dwordx8 s[16:23], s[46:47], s16 offset:0x0          // 00000000DB94: C00E4417 20000000
	s_mov_b64 s[56:57], -1                                     // 00000000DB9C: BEB801C1
	s_branch 341                                               // 00000000DBA0: BF820155 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x40f8>
	s_add_u32 s31, s59, s35                                    // 00000000DBA4: 801F233B
	s_lshl_b32 s31, s31, 13                                    // 00000000DBA8: 8E1F8D1F
	s_and_b32 s31, s31, 0x6000                                 // 00000000DBAC: 861FFF1F 00006000
	v_add_u32_e32 v114, s31, v133                              // 00000000DBB4: 68E50A1F
	s_setprio 0                                                // 00000000DBB8: BF8F0000
	v_exp_f32_e32 v82, v82                                     // 00000000DBBC: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000DBC0: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000DBC4: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000DBC8: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000DBCC: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000DBD0: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000DBD4: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000DBD8: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000DBDC: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000DBE0: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000DBE4: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000DBE8: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000DBEC: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000DBF0: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000DBF4: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000DBF8: 7E9E414F
	v_mov_b32_e32 v113, 0                                      // 00000000DBFC: 7EE20280
	v_mov_b32_e32 v106, 0                                      // 00000000DC00: 7ED40280
	v_mov_b32_e32 v110, 0                                      // 00000000DC04: 7EDC0280
	v_mov_b32_e32 v107, 0                                      // 00000000DC08: 7ED60280
	v_mov_b32_e32 v111, 0                                      // 00000000DC0C: 7EDE0280
	v_mov_b32_e32 v108, 0                                      // 00000000DC10: 7ED80280
	v_mov_b32_e32 v112, 0                                      // 00000000DC14: 7EE00280
	v_mov_b32_e32 v109, 0                                      // 00000000DC18: 7EDA0280
	v_exp_f32_e32 v84, v84                                     // 00000000DC1C: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000DC20: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000DC24: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000DC28: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000DC2C: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000DC30: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000DC34: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000DC38: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000DC3C: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000DC40: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000DC44: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000DC48: 7E9A414D
	v_exp_f32_e32 v96, v96                                     // 00000000DC4C: 7EC04160
	v_exp_f32_e32 v97, v97                                     // 00000000DC50: 7EC24161
	v_exp_f32_e32 v80, v80                                     // 00000000DC54: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000DC58: 7EA24151
	v_cvt_pk_fp8_f32 v106, v82, v83                            // 00000000DC5C: D2A2006A 0002A752
	v_cvt_pk_fp8_f32 v110, v66, v67                            // 00000000DC64: D2A2006E 00028742
	v_cvt_pk_fp8_f32 v107, v86, v87                            // 00000000DC6C: D2A2006B 0002AF56
	v_cvt_pk_fp8_f32 v111, v70, v71                            // 00000000DC74: D2A2006F 00028F46
	v_cvt_pk_fp8_f32 v108, v90, v91                            // 00000000DC7C: D2A2006C 0002B75A
	v_cvt_pk_fp8_f32 v112, v74, v75                            // 00000000DC84: D2A20070 0002974A
	v_cvt_pk_fp8_f32 v109, v94, v95                            // 00000000DC8C: D2A2006D 0002BF5E
	v_cvt_pk_fp8_f32 v113, v78, v79                            // 00000000DC94: D2A20071 00029F4E
	v_cvt_pk_fp8_f32 v106, v84, v85 op_sel:[0,0,1]             // 00000000DC9C: D2A2406A 0002AB54
	v_cvt_pk_fp8_f32 v110, v68, v69 op_sel:[0,0,1]             // 00000000DCA4: D2A2406E 00028B44
	v_cvt_pk_fp8_f32 v107, v88, v89 op_sel:[0,0,1]             // 00000000DCAC: D2A2406B 0002B358
	v_cvt_pk_fp8_f32 v111, v72, v73 op_sel:[0,0,1]             // 00000000DCB4: D2A2406F 00029348
	v_cvt_pk_fp8_f32 v108, v92, v93 op_sel:[0,0,1]             // 00000000DCBC: D2A2406C 0002BB5C
	v_cvt_pk_fp8_f32 v112, v76, v77 op_sel:[0,0,1]             // 00000000DCC4: D2A24070 00029B4C
	v_cvt_pk_fp8_f32 v109, v96, v97 op_sel:[0,0,1]             // 00000000DCCC: D2A2406D 0002C360
	v_cvt_pk_fp8_f32 v113, v80, v81 op_sel:[0,0,1]             // 00000000DCD4: D2A24071 0002A350
	s_mov_b32 s70, 0                                           // 00000000DCDC: BEC60080
	s_waitcnt vmcnt(0)                                         // 00000000DCE0: BF8C0F70
	s_barrier                                                  // 00000000DCE4: BF8A0000
	s_add_u32 s31, s68, s35                                    // 00000000DCE8: 801F2344
	s_and_b32 s35, s31, 3                                      // 00000000DCEC: 8623831F
	s_cmp_lg_u32 s58, 0                                        // 00000000DCF0: BF07803A
	s_cbranch_scc1 4                                           // 00000000DCF4: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d08>
	s_not_b32 s31, s16                                         // 00000000DCF8: BE9F0410
	s_add_u32 s31, s50, s31                                    // 00000000DCFC: 801F1F32
	s_cmp_lg_u32 s16, s31                                      // 00000000DD00: BF071F10
	s_cbranch_scc1 375                                         // 00000000DD04: BF850177 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x42e4>
	s_add_u32 s2, s2, s13                                      // 00000000DD08: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000DD0C: BF093102
	s_cbranch_scc1 112                                         // 00000000DD10: BF850070 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3ed4>
	s_lshl_b32 s16, s2, 5                                      // 00000000DD14: 8E108502
	s_load_dwordx8 s[16:23], s[46:47], s16 offset:0x0          // 00000000DD18: C00E4417 20000000
	s_mov_b64 s[56:57], -1                                     // 00000000DD20: BEB801C1
	s_branch 369                                               // 00000000DD24: BF820171 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x42ec>
	s_add_u32 s31, s59, s35                                    // 00000000DD28: 801F233B
	s_lshl_b32 s31, s31, 13                                    // 00000000DD2C: 8E1F8D1F
	s_and_b32 s31, s31, 0x6000                                 // 00000000DD30: 861FFF1F 00006000
	v_add_u32_e32 v114, s31, v133                              // 00000000DD38: 68E50A1F
	s_setprio 0                                                // 00000000DD3C: BF8F0000
	v_exp_f32_e32 v82, v82                                     // 00000000DD40: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000DD44: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000DD48: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000DD4C: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000DD50: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000DD54: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000DD58: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000DD5C: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000DD60: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000DD64: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000DD68: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000DD6C: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000DD70: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000DD74: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000DD78: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000DD7C: 7E9E414F
	v_mov_b32_e32 v113, 0                                      // 00000000DD80: 7EE20280
	v_mov_b32_e32 v106, 0                                      // 00000000DD84: 7ED40280
	v_mov_b32_e32 v110, 0                                      // 00000000DD88: 7EDC0280
	v_mov_b32_e32 v107, 0                                      // 00000000DD8C: 7ED60280
	v_mov_b32_e32 v111, 0                                      // 00000000DD90: 7EDE0280
	v_mov_b32_e32 v108, 0                                      // 00000000DD94: 7ED80280
	v_mov_b32_e32 v112, 0                                      // 00000000DD98: 7EE00280
	v_mov_b32_e32 v109, 0                                      // 00000000DD9C: 7EDA0280
	v_exp_f32_e32 v84, v84                                     // 00000000DDA0: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000DDA4: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000DDA8: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000DDAC: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000DDB0: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000DDB4: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000DDB8: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000DDBC: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000DDC0: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000DDC4: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000DDC8: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000DDCC: 7E9A414D
	v_exp_f32_e32 v96, v96                                     // 00000000DDD0: 7EC04160
	v_exp_f32_e32 v97, v97                                     // 00000000DDD4: 7EC24161
	v_exp_f32_e32 v80, v80                                     // 00000000DDD8: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000DDDC: 7EA24151
	v_cvt_pk_fp8_f32 v106, v82, v83                            // 00000000DDE0: D2A2006A 0002A752
	v_cvt_pk_fp8_f32 v110, v66, v67                            // 00000000DDE8: D2A2006E 00028742
	v_cvt_pk_fp8_f32 v107, v86, v87                            // 00000000DDF0: D2A2006B 0002AF56
	v_cvt_pk_fp8_f32 v111, v70, v71                            // 00000000DDF8: D2A2006F 00028F46
	v_cvt_pk_fp8_f32 v108, v90, v91                            // 00000000DE00: D2A2006C 0002B75A
	v_cvt_pk_fp8_f32 v112, v74, v75                            // 00000000DE08: D2A20070 0002974A
	v_cvt_pk_fp8_f32 v109, v94, v95                            // 00000000DE10: D2A2006D 0002BF5E
	v_cvt_pk_fp8_f32 v113, v78, v79                            // 00000000DE18: D2A20071 00029F4E
	v_cvt_pk_fp8_f32 v106, v84, v85 op_sel:[0,0,1]             // 00000000DE20: D2A2406A 0002AB54
	v_cvt_pk_fp8_f32 v110, v68, v69 op_sel:[0,0,1]             // 00000000DE28: D2A2406E 00028B44
	v_cvt_pk_fp8_f32 v107, v88, v89 op_sel:[0,0,1]             // 00000000DE30: D2A2406B 0002B358
	v_cvt_pk_fp8_f32 v111, v72, v73 op_sel:[0,0,1]             // 00000000DE38: D2A2406F 00029348
	v_cvt_pk_fp8_f32 v108, v92, v93 op_sel:[0,0,1]             // 00000000DE40: D2A2406C 0002BB5C
	v_cvt_pk_fp8_f32 v112, v76, v77 op_sel:[0,0,1]             // 00000000DE48: D2A24070 00029B4C
	v_cvt_pk_fp8_f32 v109, v96, v97 op_sel:[0,0,1]             // 00000000DE50: D2A2406D 0002C360
	v_cvt_pk_fp8_f32 v113, v80, v81 op_sel:[0,0,1]             // 00000000DE58: D2A24071 0002A350
	s_mov_b32 s70, 0                                           // 00000000DE60: BEC60080
	s_waitcnt vmcnt(0)                                         // 00000000DE64: BF8C0F70
	s_barrier                                                  // 00000000DE68: BF8A0000
	s_add_u32 s31, s68, s35                                    // 00000000DE6C: 801F2344
	s_and_b32 s35, s31, 3                                      // 00000000DE70: 8623831F
	s_cmp_lg_u32 s58, 0                                        // 00000000DE74: BF07803A
	s_cbranch_scc1 4                                           // 00000000DE78: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3e8c>
	s_not_b32 s31, s16                                         // 00000000DE7C: BE9F0410
	s_add_u32 s31, s50, s31                                    // 00000000DE80: 801F1F32
	s_cmp_lg_u32 s16, s31                                      // 00000000DE84: BF071F10
	s_cbranch_scc1 467                                         // 00000000DE88: BF8501D3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x45d8>
	s_add_u32 s2, s2, s13                                      // 00000000DE8C: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000DE90: BF093102
	s_cbranch_scc1 20                                          // 00000000DE94: BF850014 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3ee8>
	s_lshl_b32 s16, s2, 5                                      // 00000000DE98: 8E108502
	s_load_dwordx8 s[16:23], s[46:47], s16 offset:0x0          // 00000000DE9C: C00E4417 20000000
	s_mov_b64 s[56:57], -1                                     // 00000000DEA4: BEB801C1
	s_branch 461                                               // 00000000DEA8: BF8201CD <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x45e0>
	s_mov_b64 s[54:55], s[10:11]                               // 00000000DEAC: BEB6010A
	s_mov_b64 s[56:57], s[0:1]                                 // 00000000DEB0: BEB80100
	s_mov_b32 s31, s3                                          // 00000000DEB4: BE9F0003
	s_mov_b32 s69, 0                                           // 00000000DEB8: BEC50080
	s_branch 446                                               // 00000000DEBC: BF8201BE <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x45b8>
	s_mov_b64 s[54:55], s[10:11]                               // 00000000DEC0: BEB6010A
	s_mov_b64 s[56:57], s[0:1]                                 // 00000000DEC4: BEB80100
	s_mov_b32 s31, s3                                          // 00000000DEC8: BE9F0003
	s_mov_b32 s69, 0                                           // 00000000DECC: BEC50080
	s_branch 630                                               // 00000000DED0: BF820276 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x48ac>
	s_mov_b64 s[54:55], s[10:11]                               // 00000000DED4: BEB6010A
	s_mov_b64 s[56:57], s[0:1]                                 // 00000000DED8: BEB80100
	s_mov_b32 s31, s3                                          // 00000000DEDC: BE9F0003
	s_mov_b32 s69, 0                                           // 00000000DEE0: BEC50080
	s_branch 379                                               // 00000000DEE4: BF82017B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x44d4>
	s_mov_b64 s[54:55], s[10:11]                               // 00000000DEE8: BEB6010A
	s_mov_b64 s[56:57], s[0:1]                                 // 00000000DEEC: BEB80100
	s_mov_b32 s31, s3                                          // 00000000DEF0: BE9F0003
	s_mov_b32 s69, 0                                           // 00000000DEF4: BEC50080
	s_branch 563                                               // 00000000DEF8: BF820233 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x47c8>
	s_mov_b32 s70, 1                                           // 00000000DEFC: BEC60081
	s_mov_b64 s[56:57], 0                                      // 00000000DF00: BEB80180
	s_mov_b32 s55, 0                                           // 00000000DF04: BEB70080
	s_waitcnt lgkmcnt(0)                                       // 00000000DF08: BF8CC07F
	s_mov_b32 s54, s22                                         // 00000000DF0C: BEB60016
	s_lshl_b64 s[28:29], s[54:55], 7                           // 00000000DF10: 8E9C8736
	s_add_u32 s24, s38, s20                                    // 00000000DF14: 80181426
	s_addc_u32 s25, s39, s21                                   // 00000000DF18: 82191527
	s_add_u32 s28, s40, s28                                    // 00000000DF1C: 801C1C28
	s_addc_u32 s29, s41, s29                                   // 00000000DF20: 821D1D29
	s_not_b32 s31, s16                                         // 00000000DF24: BE9F0410
	s_add_u32 s31, s50, s31                                    // 00000000DF28: 801F1F32
	s_and_b64 s[56:57], s[56:57], exec                         // 00000000DF2C: 86B87E38
	s_cselect_b32 s48, s31, s16                                // 00000000DF30: 8530101F
	s_lshl_b32 s31, s48, 5                                     // 00000000DF34: 8E1F8530
	s_add_u32 s31, s31, 32                                     // 00000000DF38: 801FA01F
	s_mul_i32 s31, s31, s51                                    // 00000000DF3C: 921F331F
	s_add_u32 s31, s31, 32                                     // 00000000DF40: 801FA01F
	s_lshr_b32 s31, s31, 6                                     // 00000000DF44: 8F1F861F
	s_min_u32 s68, s12, s31                                    // 00000000DF48: 83C41F0C
	s_mov_b32 s27, 0x110000                                    // 00000000DF4C: BE9B00FF 00110000
	s_mov_b32 s69, 1                                           // 00000000DF54: BEC50081
	s_and_b64 s[56:57], s[52:53], exec                         // 00000000DF58: 86B87E34
	s_cbranch_scc0 61                                          // 00000000DF5C: BF84003D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4054>
	s_lshl_b32 s54, s35, 14                                    // 00000000DF60: 8E368E23
	s_or_b32 s72, s62, s54                                     // 00000000DF64: 8748363E
	s_add_u32 m0, s72, 0                                       // 00000000DF68: 807C8048
	s_lshl_b32 s56, s6, 4                                      // 00000000DF6C: 8E388406
	buffer_load_dwordx4 v127, s[24:27], 0 offen lds            // 00000000DF70: E05D1000 8006007F
	s_add_u32 m0, s72, 0x1000                                  // 00000000DF78: 807CFF48 00001000
	s_lshl_b32 s57, s6, 5                                      // 00000000DF80: 8E398506
	buffer_load_dwordx4 v127, s[24:27], s56 offen lds          // 00000000DF84: E05D1000 3806007F
	s_add_u32 m0, s72, 0x2000                                  // 00000000DF8C: 807CFF48 00002000
	s_mul_i32 s58, s6, 48                                      // 00000000DF94: 923AB006
	s_lshl_b32 s59, s35, 13                                    // 00000000DF98: 8E3B8D23
	buffer_load_dwordx4 v127, s[24:27], s57 offen lds          // 00000000DF9C: E05D1000 3906007F
	s_add_u32 m0, s72, 0x3000                                  // 00000000DFA4: 807CFF48 00003000
	s_mov_b32 s31, s27                                         // 00000000DFAC: BE9F001B
	s_lshl_b32 s71, s7, 2                                      // 00000000DFB0: 8E478207
	s_add_u32 s59, s63, s59                                    // 00000000DFB4: 803B3B3F
	buffer_load_dwordx4 v127, s[24:27], s58 offen lds          // 00000000DFB8: E05D1000 3A06007F
	s_add_u32 m0, s59, 0                                       // 00000000DFC0: 807C803B
	s_nop 0                                                    // 00000000DFC4: BF800000
	buffer_load_dwordx4 v129, s[28:31], 0 offen lds            // 00000000DFC8: E05D1000 80070081
	s_add_u32 m0, s59, 0x1000                                  // 00000000DFD0: 807CFF3B 00001000
	s_cmp_lt_u32 s68, 2                                        // 00000000DFD8: BF0A8244
	buffer_load_dwordx4 v129, s[28:31], s71 offen lds          // 00000000DFDC: E05D1000 47070081
	s_cbranch_scc1 27                                          // 00000000DFE4: BF85001B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4054>
	s_addk_i32 s54, 0x4000                                     // 00000000DFE8: B7364000
	s_and_b32 s54, s54, 0xc000                                 // 00000000DFEC: 8636FF36 0000C000
	s_or_b32 s54, s62, s54                                     // 00000000DFF4: 8736363E
	s_add_u32 m0, s54, 0                                       // 00000000DFF8: 807C8036
	s_mul_i32 s31, s6, 0x50                                    // 00000000DFFC: 921FFF06 00000050
	buffer_load_dwordx4 v127, s[24:27], s64 offen lds          // 00000000E004: E05D1000 4006007F
	s_add_u32 m0, s54, 0x1000                                  // 00000000E00C: 807CFF36 00001000
	s_mul_i32 s56, s6, 0x60                                    // 00000000E014: 9238FF06 00000060
	s_mul_i32 s57, s6, 0x70                                    // 00000000E01C: 9239FF06 00000070
	buffer_load_dwordx4 v127, s[24:27], s31 offen lds          // 00000000E024: E05D1000 1F06007F
	s_add_u32 m0, s54, 0x2000                                  // 00000000E02C: 807CFF36 00002000
	s_nop 0                                                    // 00000000E034: BF800000
	buffer_load_dwordx4 v127, s[24:27], s56 offen lds          // 00000000E038: E05D1000 3806007F
	s_add_u32 m0, s54, 0x3000                                  // 00000000E040: 807CFF36 00003000
	s_nop 0                                                    // 00000000E048: BF800000
	buffer_load_dwordx4 v127, s[24:27], s57 offen lds          // 00000000E04C: E05D1000 3906007F
	s_mov_b32 s54, s23                                         // 00000000E054: BEB60017
	s_lshl_b64 s[54:55], s[54:55], 8                           // 00000000E058: 8EB68836
	s_mul_i32 s31, s48, s51                                    // 00000000E05C: 921F3330
	s_add_u32 s48, s36, s18                                    // 00000000E060: 80301224
	s_addc_u32 s56, s37, s19                                   // 00000000E064: 82381325
	s_add_u32 s58, s48, s9                                     // 00000000E068: 803A0930
	s_addc_u32 s59, s56, 0                                     // 00000000E06C: 823B8038
	s_add_u32 s48, s42, s54                                    // 00000000E070: 8030362A
	s_addc_u32 s55, s43, s55                                   // 00000000E074: 8237372B
	s_add_u32 s54, s48, s66                                    // 00000000E078: 80364230
	s_addc_u32 s55, s55, 0                                     // 00000000E07C: 82378037
	s_add_u32 s48, s67, s17                                    // 00000000E080: 80301143
	s_lshl_b32 s48, s48, 2                                     // 00000000E084: 8E308230
	s_add_u32 s48, s44, s48                                    // 00000000E088: 8030302C
	s_addc_u32 s71, s45, 0                                     // 00000000E08C: 8247802D
	s_and_b64 s[56:57], s[14:15], exec                         // 00000000E090: 86B87E0E
	s_cselect_b32 s57, 0, s71                                  // 00000000E094: 85394780
	s_cselect_b32 s56, 0, s48                                  // 00000000E098: 85383080
	s_add_u32 s48, s31, s4                                     // 00000000E09C: 8030041F
	s_lshl_b32 s31, s48, 5                                     // 00000000E0A0: 8E1F8530
	v_or_b32_e32 v66, s31, v119                                // 00000000E0A4: 2884EE1F
	s_bfe_u32 s48, s48, 0x1a0001                               // 00000000E0A8: 92B0FF30 001A0001
	v_mul_lo_u32 v66, s5, v66                                  // 00000000E0B0: D2850042 00028405
	v_add_u32_e32 v66, v130, v66                               // 00000000E0B8: 68848582
	global_load_dwordx4 v[166:169], v66, s[58:59]              // 00000000E0BC: DC5C8000 A63A0042
	global_load_dwordx4 v[170:173], v66, s[58:59] offset:16    // 00000000E0C4: DC5C8010 AA3A0042
	global_load_dwordx4 v[174:177], v66, s[58:59] offset:64    // 00000000E0CC: DC5C8040 AE3A0042
	global_load_dwordx4 v[178:181], v66, s[58:59] offset:80    // 00000000E0D4: DC5C8050 B23A0042
	global_load_dwordx4 v[182:185], v66, s[58:59] offset:128   // 00000000E0DC: DC5C8080 B63A0042
	global_load_dwordx4 v[186:189], v66, s[58:59] offset:144   // 00000000E0E4: DC5C8090 BA3A0042
	s_branch 306                                               // 00000000E0EC: BF820132 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x45b8>
	s_mov_b32 s70, 1                                           // 00000000E0F0: BEC60081
	s_mov_b64 s[56:57], 0                                      // 00000000E0F4: BEB80180
	s_mov_b32 s55, 0                                           // 00000000E0F8: BEB70080
	s_waitcnt lgkmcnt(0)                                       // 00000000E0FC: BF8CC07F
	s_mov_b32 s54, s22                                         // 00000000E100: BEB60016
	s_lshl_b64 s[28:29], s[54:55], 7                           // 00000000E104: 8E9C8736
	s_add_u32 s24, s38, s20                                    // 00000000E108: 80181426
	s_addc_u32 s25, s39, s21                                   // 00000000E10C: 82191527
	s_add_u32 s28, s40, s28                                    // 00000000E110: 801C1C28
	s_addc_u32 s29, s41, s29                                   // 00000000E114: 821D1D29
	s_not_b32 s31, s16                                         // 00000000E118: BE9F0410
	s_add_u32 s31, s50, s31                                    // 00000000E11C: 801F1F32
	s_and_b64 s[56:57], s[56:57], exec                         // 00000000E120: 86B87E38
	s_cselect_b32 s48, s31, s16                                // 00000000E124: 8530101F
	s_lshl_b32 s31, s48, 5                                     // 00000000E128: 8E1F8530
	s_add_u32 s31, s31, 32                                     // 00000000E12C: 801FA01F
	s_mul_i32 s31, s31, s51                                    // 00000000E130: 921F331F
	s_add_u32 s31, s31, 32                                     // 00000000E134: 801FA01F
	s_lshr_b32 s31, s31, 6                                     // 00000000E138: 8F1F861F
	s_min_u32 s68, s12, s31                                    // 00000000E13C: 83C41F0C
	s_mov_b32 s27, 0x110000                                    // 00000000E140: BE9B00FF 00110000
	s_mov_b32 s69, 1                                           // 00000000E148: BEC50081
	s_and_b64 s[56:57], s[52:53], exec                         // 00000000E14C: 86B87E34
	s_cbranch_scc0 61                                          // 00000000E150: BF84003D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4248>
	s_lshl_b32 s54, s35, 14                                    // 00000000E154: 8E368E23
	s_or_b32 s72, s62, s54                                     // 00000000E158: 8748363E
	s_add_u32 m0, s72, 0                                       // 00000000E15C: 807C8048
	s_lshl_b32 s56, s6, 4                                      // 00000000E160: 8E388406
	buffer_load_dwordx4 v127, s[24:27], 0 offen lds            // 00000000E164: E05D1000 8006007F
	s_add_u32 m0, s72, 0x1000                                  // 00000000E16C: 807CFF48 00001000
	s_lshl_b32 s57, s6, 5                                      // 00000000E174: 8E398506
	buffer_load_dwordx4 v127, s[24:27], s56 offen lds          // 00000000E178: E05D1000 3806007F
	s_add_u32 m0, s72, 0x2000                                  // 00000000E180: 807CFF48 00002000
	s_mul_i32 s58, s6, 48                                      // 00000000E188: 923AB006
	s_lshl_b32 s59, s35, 13                                    // 00000000E18C: 8E3B8D23
	buffer_load_dwordx4 v127, s[24:27], s57 offen lds          // 00000000E190: E05D1000 3906007F
	s_add_u32 m0, s72, 0x3000                                  // 00000000E198: 807CFF48 00003000
	s_mov_b32 s31, s27                                         // 00000000E1A0: BE9F001B
	s_lshl_b32 s71, s7, 2                                      // 00000000E1A4: 8E478207
	s_add_u32 s59, s63, s59                                    // 00000000E1A8: 803B3B3F
	buffer_load_dwordx4 v127, s[24:27], s58 offen lds          // 00000000E1AC: E05D1000 3A06007F
	s_add_u32 m0, s59, 0                                       // 00000000E1B4: 807C803B
	s_nop 0                                                    // 00000000E1B8: BF800000
	buffer_load_dwordx4 v129, s[28:31], 0 offen lds            // 00000000E1BC: E05D1000 80070081
	s_add_u32 m0, s59, 0x1000                                  // 00000000E1C4: 807CFF3B 00001000
	s_cmp_lt_u32 s68, 2                                        // 00000000E1CC: BF0A8244
	buffer_load_dwordx4 v129, s[28:31], s71 offen lds          // 00000000E1D0: E05D1000 47070081
	s_cbranch_scc1 27                                          // 00000000E1D8: BF85001B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4248>
	s_addk_i32 s54, 0x4000                                     // 00000000E1DC: B7364000
	s_and_b32 s54, s54, 0xc000                                 // 00000000E1E0: 8636FF36 0000C000
	s_or_b32 s54, s62, s54                                     // 00000000E1E8: 8736363E
	s_add_u32 m0, s54, 0                                       // 00000000E1EC: 807C8036
	s_mul_i32 s31, s6, 0x50                                    // 00000000E1F0: 921FFF06 00000050
	buffer_load_dwordx4 v127, s[24:27], s64 offen lds          // 00000000E1F8: E05D1000 4006007F
	s_add_u32 m0, s54, 0x1000                                  // 00000000E200: 807CFF36 00001000
	s_mul_i32 s56, s6, 0x60                                    // 00000000E208: 9238FF06 00000060
	s_mul_i32 s57, s6, 0x70                                    // 00000000E210: 9239FF06 00000070
	buffer_load_dwordx4 v127, s[24:27], s31 offen lds          // 00000000E218: E05D1000 1F06007F
	s_add_u32 m0, s54, 0x2000                                  // 00000000E220: 807CFF36 00002000
	s_nop 0                                                    // 00000000E228: BF800000
	buffer_load_dwordx4 v127, s[24:27], s56 offen lds          // 00000000E22C: E05D1000 3806007F
	s_add_u32 m0, s54, 0x3000                                  // 00000000E234: 807CFF36 00003000
	s_nop 0                                                    // 00000000E23C: BF800000
	buffer_load_dwordx4 v127, s[24:27], s57 offen lds          // 00000000E240: E05D1000 3906007F
	s_mov_b32 s54, s23                                         // 00000000E248: BEB60017
	s_lshl_b64 s[54:55], s[54:55], 8                           // 00000000E24C: 8EB68836
	s_mul_i32 s31, s48, s51                                    // 00000000E250: 921F3330
	s_add_u32 s48, s36, s18                                    // 00000000E254: 80301224
	s_addc_u32 s56, s37, s19                                   // 00000000E258: 82381325
	s_add_u32 s58, s48, s9                                     // 00000000E25C: 803A0930
	s_addc_u32 s59, s56, 0                                     // 00000000E260: 823B8038
	s_add_u32 s48, s42, s54                                    // 00000000E264: 8030362A
	s_addc_u32 s55, s43, s55                                   // 00000000E268: 8237372B
	s_add_u32 s54, s48, s66                                    // 00000000E26C: 80364230
	s_addc_u32 s55, s55, 0                                     // 00000000E270: 82378037
	s_add_u32 s48, s67, s17                                    // 00000000E274: 80301143
	s_lshl_b32 s48, s48, 2                                     // 00000000E278: 8E308230
	s_add_u32 s48, s44, s48                                    // 00000000E27C: 8030302C
	s_addc_u32 s71, s45, 0                                     // 00000000E280: 8247802D
	s_and_b64 s[56:57], s[14:15], exec                         // 00000000E284: 86B87E0E
	s_cselect_b32 s57, 0, s71                                  // 00000000E288: 85394780
	s_cselect_b32 s56, 0, s48                                  // 00000000E28C: 85383080
	s_add_u32 s48, s31, s4                                     // 00000000E290: 8030041F
	s_lshl_b32 s31, s48, 5                                     // 00000000E294: 8E1F8530
	v_or_b32_e32 v66, s31, v119                                // 00000000E298: 2884EE1F
	s_bfe_u32 s48, s48, 0x1a0001                               // 00000000E29C: 92B0FF30 001A0001
	v_mul_lo_u32 v66, s5, v66                                  // 00000000E2A4: D2850042 00028405
	v_add_u32_e32 v66, v130, v66                               // 00000000E2AC: 68848582
	global_load_dwordx4 v[166:169], v66, s[58:59]              // 00000000E2B0: DC5C8000 A63A0042
	global_load_dwordx4 v[170:173], v66, s[58:59] offset:16    // 00000000E2B8: DC5C8010 AA3A0042
	global_load_dwordx4 v[174:177], v66, s[58:59] offset:64    // 00000000E2C0: DC5C8040 AE3A0042
	global_load_dwordx4 v[178:181], v66, s[58:59] offset:80    // 00000000E2C8: DC5C8050 B23A0042
	global_load_dwordx4 v[182:185], v66, s[58:59] offset:128   // 00000000E2D0: DC5C8080 B63A0042
	global_load_dwordx4 v[186:189], v66, s[58:59] offset:144   // 00000000E2D8: DC5C8090 BA3A0042
	s_branch 370                                               // 00000000E2E0: BF820172 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x48ac>
	s_mov_b32 s70, 1                                           // 00000000E2E4: BEC60081
	s_mov_b64 s[56:57], 0                                      // 00000000E2E8: BEB80180
	s_mov_b32 s55, 0                                           // 00000000E2EC: BEB70080
	s_waitcnt lgkmcnt(0)                                       // 00000000E2F0: BF8CC07F
	s_mov_b32 s54, s22                                         // 00000000E2F4: BEB60016
	s_lshl_b64 s[28:29], s[54:55], 7                           // 00000000E2F8: 8E9C8736
	s_add_u32 s24, s38, s20                                    // 00000000E2FC: 80181426
	s_addc_u32 s25, s39, s21                                   // 00000000E300: 82191527
	s_add_u32 s28, s40, s28                                    // 00000000E304: 801C1C28
	s_addc_u32 s29, s41, s29                                   // 00000000E308: 821D1D29
	s_not_b32 s31, s16                                         // 00000000E30C: BE9F0410
	s_add_u32 s31, s50, s31                                    // 00000000E310: 801F1F32
	s_and_b64 s[56:57], s[56:57], exec                         // 00000000E314: 86B87E38
	s_cselect_b32 s48, s31, s16                                // 00000000E318: 8530101F
	s_lshl_b32 s31, s48, 5                                     // 00000000E31C: 8E1F8530
	s_add_u32 s31, s31, 32                                     // 00000000E320: 801FA01F
	s_mul_i32 s31, s31, s51                                    // 00000000E324: 921F331F
	s_add_u32 s31, s31, 32                                     // 00000000E328: 801FA01F
	s_lshr_b32 s31, s31, 6                                     // 00000000E32C: 8F1F861F
	s_min_u32 s68, s12, s31                                    // 00000000E330: 83C41F0C
	s_mov_b32 s27, 0x110000                                    // 00000000E334: BE9B00FF 00110000
	s_mov_b32 s69, 1                                           // 00000000E33C: BEC50081
	s_and_b64 s[56:57], s[52:53], exec                         // 00000000E340: 86B87E34
	s_cbranch_scc0 61                                          // 00000000E344: BF84003D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x443c>
	s_lshl_b32 s54, s35, 14                                    // 00000000E348: 8E368E23
	s_or_b32 s72, s62, s54                                     // 00000000E34C: 8748363E
	s_add_u32 m0, s72, 0                                       // 00000000E350: 807C8048
	s_lshl_b32 s56, s6, 4                                      // 00000000E354: 8E388406
	buffer_load_dwordx4 v127, s[24:27], 0 offen lds            // 00000000E358: E05D1000 8006007F
	s_add_u32 m0, s72, 0x1000                                  // 00000000E360: 807CFF48 00001000
	s_lshl_b32 s57, s6, 5                                      // 00000000E368: 8E398506
	buffer_load_dwordx4 v127, s[24:27], s56 offen lds          // 00000000E36C: E05D1000 3806007F
	s_add_u32 m0, s72, 0x2000                                  // 00000000E374: 807CFF48 00002000
	s_mul_i32 s58, s6, 48                                      // 00000000E37C: 923AB006
	s_lshl_b32 s59, s35, 13                                    // 00000000E380: 8E3B8D23
	buffer_load_dwordx4 v127, s[24:27], s57 offen lds          // 00000000E384: E05D1000 3906007F
	s_add_u32 m0, s72, 0x3000                                  // 00000000E38C: 807CFF48 00003000
	s_mov_b32 s31, s27                                         // 00000000E394: BE9F001B
	s_lshl_b32 s71, s7, 2                                      // 00000000E398: 8E478207
	s_add_u32 s59, s63, s59                                    // 00000000E39C: 803B3B3F
	buffer_load_dwordx4 v127, s[24:27], s58 offen lds          // 00000000E3A0: E05D1000 3A06007F
	s_add_u32 m0, s59, 0                                       // 00000000E3A8: 807C803B
	s_nop 0                                                    // 00000000E3AC: BF800000
	buffer_load_dwordx4 v129, s[28:31], 0 offen lds            // 00000000E3B0: E05D1000 80070081
	s_add_u32 m0, s59, 0x1000                                  // 00000000E3B8: 807CFF3B 00001000
	s_cmp_lt_u32 s68, 2                                        // 00000000E3C0: BF0A8244
	buffer_load_dwordx4 v129, s[28:31], s71 offen lds          // 00000000E3C4: E05D1000 47070081
	s_cbranch_scc1 27                                          // 00000000E3CC: BF85001B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x443c>
	s_addk_i32 s54, 0x4000                                     // 00000000E3D0: B7364000
	s_and_b32 s54, s54, 0xc000                                 // 00000000E3D4: 8636FF36 0000C000
	s_or_b32 s54, s62, s54                                     // 00000000E3DC: 8736363E
	s_add_u32 m0, s54, 0                                       // 00000000E3E0: 807C8036
	s_mul_i32 s31, s6, 0x50                                    // 00000000E3E4: 921FFF06 00000050
	buffer_load_dwordx4 v127, s[24:27], s64 offen lds          // 00000000E3EC: E05D1000 4006007F
	s_add_u32 m0, s54, 0x1000                                  // 00000000E3F4: 807CFF36 00001000
	s_mul_i32 s56, s6, 0x60                                    // 00000000E3FC: 9238FF06 00000060
	s_mul_i32 s57, s6, 0x70                                    // 00000000E404: 9239FF06 00000070
	buffer_load_dwordx4 v127, s[24:27], s31 offen lds          // 00000000E40C: E05D1000 1F06007F
	s_add_u32 m0, s54, 0x2000                                  // 00000000E414: 807CFF36 00002000
	s_nop 0                                                    // 00000000E41C: BF800000
	buffer_load_dwordx4 v127, s[24:27], s56 offen lds          // 00000000E420: E05D1000 3806007F
	s_add_u32 m0, s54, 0x3000                                  // 00000000E428: 807CFF36 00003000
	s_nop 0                                                    // 00000000E430: BF800000
	buffer_load_dwordx4 v127, s[24:27], s57 offen lds          // 00000000E434: E05D1000 3906007F
	s_mov_b32 s54, s23                                         // 00000000E43C: BEB60017
	s_lshl_b64 s[54:55], s[54:55], 8                           // 00000000E440: 8EB68836
	s_mul_i32 s31, s48, s51                                    // 00000000E444: 921F3330
	s_add_u32 s48, s36, s18                                    // 00000000E448: 80301224
	s_addc_u32 s56, s37, s19                                   // 00000000E44C: 82381325
	s_add_u32 s58, s48, s9                                     // 00000000E450: 803A0930
	s_addc_u32 s59, s56, 0                                     // 00000000E454: 823B8038
	s_add_u32 s48, s42, s54                                    // 00000000E458: 8030362A
	s_addc_u32 s55, s43, s55                                   // 00000000E45C: 8237372B
	s_add_u32 s54, s48, s66                                    // 00000000E460: 80364230
	s_addc_u32 s55, s55, 0                                     // 00000000E464: 82378037
	s_add_u32 s48, s67, s17                                    // 00000000E468: 80301143
	s_lshl_b32 s48, s48, 2                                     // 00000000E46C: 8E308230
	s_add_u32 s48, s44, s48                                    // 00000000E470: 8030302C
	s_addc_u32 s71, s45, 0                                     // 00000000E474: 8247802D
	s_and_b64 s[56:57], s[14:15], exec                         // 00000000E478: 86B87E0E
	s_cselect_b32 s57, 0, s71                                  // 00000000E47C: 85394780
	s_cselect_b32 s56, 0, s48                                  // 00000000E480: 85383080
	s_add_u32 s48, s31, s4                                     // 00000000E484: 8030041F
	s_lshl_b32 s31, s48, 5                                     // 00000000E488: 8E1F8530
	v_or_b32_e32 v66, s31, v119                                // 00000000E48C: 2884EE1F
	s_bfe_u32 s48, s48, 0x1a0001                               // 00000000E490: 92B0FF30 001A0001
	v_mul_lo_u32 v66, s5, v66                                  // 00000000E498: D2850042 00028405
	v_add_u32_e32 v66, v130, v66                               // 00000000E4A0: 68848582
	global_load_dwordx4 v[166:169], v66, s[58:59]              // 00000000E4A4: DC5C8000 A63A0042
	global_load_dwordx4 v[170:173], v66, s[58:59] offset:16    // 00000000E4AC: DC5C8010 AA3A0042
	global_load_dwordx4 v[174:177], v66, s[58:59] offset:64    // 00000000E4B4: DC5C8040 AE3A0042
	global_load_dwordx4 v[178:181], v66, s[58:59] offset:80    // 00000000E4BC: DC5C8050 B23A0042
	global_load_dwordx4 v[182:185], v66, s[58:59] offset:128   // 00000000E4C4: DC5C8080 B63A0042
	global_load_dwordx4 v[186:189], v66, s[58:59] offset:144   // 00000000E4CC: DC5C8090 BA3A0042
	s_setprio 1                                                // 00000000E4D4: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[98:105], v[106:113], 0// 00000000E4D8: D3AD0042 0202D562
	s_nop 11                                                   // 00000000E4E0: BF80000B
	ds_read_b64_tr_b8 v[68:69], v114                           // 00000000E4E4: D9C40000 44000072
	ds_read_b64_tr_b8 v[70:71], v114 offset:1024               // 00000000E4EC: D9C40400 46000072
	ds_read_b64_tr_b8 v[72:73], v114 offset:2048               // 00000000E4F4: D9C40800 48000072
	ds_read_b64_tr_b8 v[74:75], v114 offset:3072               // 00000000E4FC: D9C40C00 4A000072
	ds_read_b64_tr_b8 v[76:77], v114 offset:256                // 00000000E504: D9C40100 4C000072
	ds_read_b64_tr_b8 v[78:79], v114 offset:1280               // 00000000E50C: D9C40500 4E000072
	ds_read_b64_tr_b8 v[80:81], v114 offset:2304               // 00000000E514: D9C40900 50000072
	ds_read_b64_tr_b8 v[82:83], v114 offset:3328               // 00000000E51C: D9C40D00 52000072
	ds_read_b64_tr_b8 v[84:85], v114 offset:512                // 00000000E524: D9C40200 54000072
	ds_read_b64_tr_b8 v[86:87], v114 offset:1536               // 00000000E52C: D9C40600 56000072
	ds_read_b64_tr_b8 v[88:89], v114 offset:2560               // 00000000E534: D9C40A00 58000072
	ds_read_b64_tr_b8 v[90:91], v114 offset:3584               // 00000000E53C: D9C40E00 5A000072
	v_lshlrev_b32_e32 v67, 23, v136                            // 00000000E544: 24871097
	v_fma_f32 v135, v66, v67, v135                             // 00000000E548: D1CB0087 061E8742
	s_waitcnt lgkmcnt(4)                                       // 00000000E550: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[68:75], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000E554: D3AC0000 0003117D D3AE0832 04CAD544
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[76:83], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000E564: D3AC0000 0003117D D3AE0822 048AD54C
	ds_read_b64_tr_b8 v[66:67], v114 offset:768                // 00000000E574: D9C40300 42000072
	ds_read_b64_tr_b8 v[68:69], v114 offset:1792               // 00000000E57C: D9C40700 44000072
	ds_read_b64_tr_b8 v[70:71], v114 offset:2816               // 00000000E584: D9C40B00 46000072
	ds_read_b64_tr_b8 v[72:73], v114 offset:3840               // 00000000E58C: D9C40F00 48000072
	s_waitcnt lgkmcnt(0)                                       // 00000000E594: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[84:91], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000E598: D3AC0000 0003117D D3AE0812 044AD554
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[66:73], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000E5A8: D3AC0000 0003117D D3AE0802 040AD542
	s_waitcnt vmcnt(6)                                         // 00000000E5B8: BF8C0F76
	s_barrier                                                  // 00000000E5BC: BF8A0000
	s_mov_b32 s58, s70                                         // 00000000E5C0: BEBA0046
	s_cmp_eq_u32 s69, 0                                        // 00000000E5C4: BF068045
	v_and_b32_e32 v66, 15, v0                                  // 00000000E5C8: 2684008F
	v_lshrrev_b32_e32 v67, 4, v1                               // 00000000E5CC: 20860284
	s_cbranch_scc0 189                                         // 00000000E5D0: BF8400BD <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x48c8>
	s_branch 457                                               // 00000000E5D4: BF8201C9 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4cfc>
	s_mov_b32 s70, 1                                           // 00000000E5D8: BEC60081
	s_mov_b64 s[56:57], 0                                      // 00000000E5DC: BEB80180
	s_mov_b32 s55, 0                                           // 00000000E5E0: BEB70080
	s_waitcnt lgkmcnt(0)                                       // 00000000E5E4: BF8CC07F
	s_mov_b32 s54, s22                                         // 00000000E5E8: BEB60016
	s_lshl_b64 s[28:29], s[54:55], 7                           // 00000000E5EC: 8E9C8736
	s_add_u32 s24, s38, s20                                    // 00000000E5F0: 80181426
	s_addc_u32 s25, s39, s21                                   // 00000000E5F4: 82191527
	s_add_u32 s28, s40, s28                                    // 00000000E5F8: 801C1C28
	s_addc_u32 s29, s41, s29                                   // 00000000E5FC: 821D1D29
	s_not_b32 s31, s16                                         // 00000000E600: BE9F0410
	s_add_u32 s31, s50, s31                                    // 00000000E604: 801F1F32
	s_and_b64 s[56:57], s[56:57], exec                         // 00000000E608: 86B87E38
	s_cselect_b32 s48, s31, s16                                // 00000000E60C: 8530101F
	s_lshl_b32 s31, s48, 5                                     // 00000000E610: 8E1F8530
	s_add_u32 s31, s31, 32                                     // 00000000E614: 801FA01F
	s_mul_i32 s31, s31, s51                                    // 00000000E618: 921F331F
	s_add_u32 s31, s31, 32                                     // 00000000E61C: 801FA01F
	s_lshr_b32 s31, s31, 6                                     // 00000000E620: 8F1F861F
	s_min_u32 s68, s12, s31                                    // 00000000E624: 83C41F0C
	s_mov_b32 s27, 0x110000                                    // 00000000E628: BE9B00FF 00110000
	s_mov_b32 s69, 1                                           // 00000000E630: BEC50081
	s_and_b64 s[56:57], s[52:53], exec                         // 00000000E634: 86B87E34
	s_cbranch_scc0 61                                          // 00000000E638: BF84003D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4730>
	s_lshl_b32 s54, s35, 14                                    // 00000000E63C: 8E368E23
	s_or_b32 s72, s62, s54                                     // 00000000E640: 8748363E
	s_add_u32 m0, s72, 0                                       // 00000000E644: 807C8048
	s_lshl_b32 s56, s6, 4                                      // 00000000E648: 8E388406
	buffer_load_dwordx4 v127, s[24:27], 0 offen lds            // 00000000E64C: E05D1000 8006007F
	s_add_u32 m0, s72, 0x1000                                  // 00000000E654: 807CFF48 00001000
	s_lshl_b32 s57, s6, 5                                      // 00000000E65C: 8E398506
	buffer_load_dwordx4 v127, s[24:27], s56 offen lds          // 00000000E660: E05D1000 3806007F
	s_add_u32 m0, s72, 0x2000                                  // 00000000E668: 807CFF48 00002000
	s_mul_i32 s58, s6, 48                                      // 00000000E670: 923AB006
	s_lshl_b32 s59, s35, 13                                    // 00000000E674: 8E3B8D23
	buffer_load_dwordx4 v127, s[24:27], s57 offen lds          // 00000000E678: E05D1000 3906007F
	s_add_u32 m0, s72, 0x3000                                  // 00000000E680: 807CFF48 00003000
	s_mov_b32 s31, s27                                         // 00000000E688: BE9F001B
	s_lshl_b32 s71, s7, 2                                      // 00000000E68C: 8E478207
	s_add_u32 s59, s63, s59                                    // 00000000E690: 803B3B3F
	buffer_load_dwordx4 v127, s[24:27], s58 offen lds          // 00000000E694: E05D1000 3A06007F
	s_add_u32 m0, s59, 0                                       // 00000000E69C: 807C803B
	s_nop 0                                                    // 00000000E6A0: BF800000
	buffer_load_dwordx4 v129, s[28:31], 0 offen lds            // 00000000E6A4: E05D1000 80070081
	s_add_u32 m0, s59, 0x1000                                  // 00000000E6AC: 807CFF3B 00001000
	s_cmp_lt_u32 s68, 2                                        // 00000000E6B4: BF0A8244
	buffer_load_dwordx4 v129, s[28:31], s71 offen lds          // 00000000E6B8: E05D1000 47070081
	s_cbranch_scc1 27                                          // 00000000E6C0: BF85001B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4730>
	s_addk_i32 s54, 0x4000                                     // 00000000E6C4: B7364000
	s_and_b32 s54, s54, 0xc000                                 // 00000000E6C8: 8636FF36 0000C000
	s_or_b32 s54, s62, s54                                     // 00000000E6D0: 8736363E
	s_add_u32 m0, s54, 0                                       // 00000000E6D4: 807C8036
	s_mul_i32 s31, s6, 0x50                                    // 00000000E6D8: 921FFF06 00000050
	buffer_load_dwordx4 v127, s[24:27], s64 offen lds          // 00000000E6E0: E05D1000 4006007F
	s_add_u32 m0, s54, 0x1000                                  // 00000000E6E8: 807CFF36 00001000
	s_mul_i32 s56, s6, 0x60                                    // 00000000E6F0: 9238FF06 00000060
	s_mul_i32 s57, s6, 0x70                                    // 00000000E6F8: 9239FF06 00000070
	buffer_load_dwordx4 v127, s[24:27], s31 offen lds          // 00000000E700: E05D1000 1F06007F
	s_add_u32 m0, s54, 0x2000                                  // 00000000E708: 807CFF36 00002000
	s_nop 0                                                    // 00000000E710: BF800000
	buffer_load_dwordx4 v127, s[24:27], s56 offen lds          // 00000000E714: E05D1000 3806007F
	s_add_u32 m0, s54, 0x3000                                  // 00000000E71C: 807CFF36 00003000
	s_nop 0                                                    // 00000000E724: BF800000
	buffer_load_dwordx4 v127, s[24:27], s57 offen lds          // 00000000E728: E05D1000 3906007F
	s_mov_b32 s54, s23                                         // 00000000E730: BEB60017
	s_lshl_b64 s[54:55], s[54:55], 8                           // 00000000E734: 8EB68836
	s_mul_i32 s31, s48, s51                                    // 00000000E738: 921F3330
	s_add_u32 s48, s36, s18                                    // 00000000E73C: 80301224
	s_addc_u32 s56, s37, s19                                   // 00000000E740: 82381325
	s_add_u32 s58, s48, s9                                     // 00000000E744: 803A0930
	s_addc_u32 s59, s56, 0                                     // 00000000E748: 823B8038
	s_add_u32 s48, s42, s54                                    // 00000000E74C: 8030362A
	s_addc_u32 s55, s43, s55                                   // 00000000E750: 8237372B
	s_add_u32 s54, s48, s66                                    // 00000000E754: 80364230
	s_addc_u32 s55, s55, 0                                     // 00000000E758: 82378037
	s_add_u32 s48, s67, s17                                    // 00000000E75C: 80301143
	s_lshl_b32 s48, s48, 2                                     // 00000000E760: 8E308230
	s_add_u32 s48, s44, s48                                    // 00000000E764: 8030302C
	s_addc_u32 s71, s45, 0                                     // 00000000E768: 8247802D
	s_and_b64 s[56:57], s[14:15], exec                         // 00000000E76C: 86B87E0E
	s_cselect_b32 s57, 0, s71                                  // 00000000E770: 85394780
	s_cselect_b32 s56, 0, s48                                  // 00000000E774: 85383080
	s_add_u32 s48, s31, s4                                     // 00000000E778: 8030041F
	s_lshl_b32 s31, s48, 5                                     // 00000000E77C: 8E1F8530
	v_or_b32_e32 v66, s31, v119                                // 00000000E780: 2884EE1F
	s_bfe_u32 s48, s48, 0x1a0001                               // 00000000E784: 92B0FF30 001A0001
	v_mul_lo_u32 v66, s5, v66                                  // 00000000E78C: D2850042 00028405
	v_add_u32_e32 v66, v130, v66                               // 00000000E794: 68848582
	global_load_dwordx4 v[166:169], v66, s[58:59]              // 00000000E798: DC5C8000 A63A0042
	global_load_dwordx4 v[170:173], v66, s[58:59] offset:16    // 00000000E7A0: DC5C8010 AA3A0042
	global_load_dwordx4 v[174:177], v66, s[58:59] offset:64    // 00000000E7A8: DC5C8040 AE3A0042
	global_load_dwordx4 v[178:181], v66, s[58:59] offset:80    // 00000000E7B0: DC5C8050 B23A0042
	global_load_dwordx4 v[182:185], v66, s[58:59] offset:128   // 00000000E7B8: DC5C8080 B63A0042
	global_load_dwordx4 v[186:189], v66, s[58:59] offset:144   // 00000000E7C0: DC5C8090 BA3A0042
	s_setprio 1                                                // 00000000E7C8: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[98:105], v[106:113], 0// 00000000E7CC: D3AD0042 0202D562
	s_nop 11                                                   // 00000000E7D4: BF80000B
	ds_read_b64_tr_b8 v[68:69], v114                           // 00000000E7D8: D9C40000 44000072
	ds_read_b64_tr_b8 v[70:71], v114 offset:1024               // 00000000E7E0: D9C40400 46000072
	ds_read_b64_tr_b8 v[72:73], v114 offset:2048               // 00000000E7E8: D9C40800 48000072
	ds_read_b64_tr_b8 v[74:75], v114 offset:3072               // 00000000E7F0: D9C40C00 4A000072
	ds_read_b64_tr_b8 v[76:77], v114 offset:256                // 00000000E7F8: D9C40100 4C000072
	ds_read_b64_tr_b8 v[78:79], v114 offset:1280               // 00000000E800: D9C40500 4E000072
	ds_read_b64_tr_b8 v[80:81], v114 offset:2304               // 00000000E808: D9C40900 50000072
	ds_read_b64_tr_b8 v[82:83], v114 offset:3328               // 00000000E810: D9C40D00 52000072
	ds_read_b64_tr_b8 v[84:85], v114 offset:512                // 00000000E818: D9C40200 54000072
	ds_read_b64_tr_b8 v[86:87], v114 offset:1536               // 00000000E820: D9C40600 56000072
	ds_read_b64_tr_b8 v[88:89], v114 offset:2560               // 00000000E828: D9C40A00 58000072
	ds_read_b64_tr_b8 v[90:91], v114 offset:3584               // 00000000E830: D9C40E00 5A000072
	v_lshlrev_b32_e32 v67, 23, v136                            // 00000000E838: 24871097
	v_fma_f32 v135, v66, v67, v135                             // 00000000E83C: D1CB0087 061E8742
	s_waitcnt lgkmcnt(4)                                       // 00000000E844: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[50:65], v[68:75], v[106:113], v[50:65], v125, v136 op_sel_hi:[0,0,0]// 00000000E848: D3AC0000 0003117D D3AE0832 04CAD544
	v_mfma_scale_f32_32x32x64_f8f6f4 v[34:49], v[76:83], v[106:113], v[34:49], v125, v136 op_sel_hi:[0,0,0]// 00000000E858: D3AC0000 0003117D D3AE0822 048AD54C
	ds_read_b64_tr_b8 v[66:67], v114 offset:768                // 00000000E868: D9C40300 42000072
	ds_read_b64_tr_b8 v[68:69], v114 offset:1792               // 00000000E870: D9C40700 44000072
	ds_read_b64_tr_b8 v[70:71], v114 offset:2816               // 00000000E878: D9C40B00 46000072
	ds_read_b64_tr_b8 v[72:73], v114 offset:3840               // 00000000E880: D9C40F00 48000072
	s_waitcnt lgkmcnt(0)                                       // 00000000E888: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[18:33], v[84:91], v[106:113], v[18:33], v125, v136 op_sel_hi:[0,0,0]// 00000000E88C: D3AC0000 0003117D D3AE0812 044AD554
	v_mfma_scale_f32_32x32x64_f8f6f4 v[2:17], v[66:73], v[106:113], v[2:17], v125, v136 op_sel_hi:[0,0,0]// 00000000E89C: D3AC0000 0003117D D3AE0802 040AD542
	s_waitcnt vmcnt(6)                                         // 00000000E8AC: BF8C0F76
	s_barrier                                                  // 00000000E8B0: BF8A0000
	s_mov_b32 s58, s70                                         // 00000000E8B4: BEBA0046
	s_cmp_eq_u32 s69, 0                                        // 00000000E8B8: BF068045
	v_and_b32_e32 v66, 15, v0                                  // 00000000E8BC: 2684008F
	v_lshrrev_b32_e32 v67, 4, v1                               // 00000000E8C0: 20860284
	s_cbranch_scc1 269                                         // 00000000E8C4: BF85010D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4cfc>
	s_nop 15                                                   // 00000000E8C8: BF80000F
	s_nop 3                                                    // 00000000E8CC: BF800003
	v_rcp_f32_e32 v68, v135                                    // 00000000E8D0: 7E884587
	v_log_f32_e32 v69, v135                                    // 00000000E8D4: 7E8A4387
	s_nop 1                                                    // 00000000E8D8: BF800001
	v_mul_f32_e32 v68, v132, v68                               // 00000000E8DC: 0A888984
	v_mul_f32_e32 v50, v50, v68                                // 00000000E8E0: 0A648932
	v_mul_f32_e32 v51, v51, v68                                // 00000000E8E4: 0A668933
	v_mul_f32_e32 v52, v52, v68                                // 00000000E8E8: 0A688934
	v_mul_f32_e32 v53, v53, v68                                // 00000000E8EC: 0A6A8935
	v_mul_f32_e32 v54, v54, v68                                // 00000000E8F0: 0A6C8936
	v_mul_f32_e32 v55, v55, v68                                // 00000000E8F4: 0A6E8937
	v_mul_f32_e32 v56, v56, v68                                // 00000000E8F8: 0A708938
	v_mul_f32_e32 v57, v57, v68                                // 00000000E8FC: 0A728939
	v_mul_f32_e32 v58, v58, v68                                // 00000000E900: 0A74893A
	v_mul_f32_e32 v59, v59, v68                                // 00000000E904: 0A76893B
	v_mul_f32_e32 v60, v60, v68                                // 00000000E908: 0A78893C
	v_mul_f32_e32 v61, v61, v68                                // 00000000E90C: 0A7A893D
	v_mul_f32_e32 v62, v62, v68                                // 00000000E910: 0A7C893E
	v_mul_f32_e32 v63, v63, v68                                // 00000000E914: 0A7E893F
	v_mul_f32_e32 v64, v64, v68                                // 00000000E918: 0A808940
	v_mul_f32_e32 v65, v65, v68                                // 00000000E91C: 0A828941
	v_mul_f32_e32 v34, v34, v68                                // 00000000E920: 0A448922
	v_mul_f32_e32 v35, v35, v68                                // 00000000E924: 0A468923
	v_mul_f32_e32 v36, v36, v68                                // 00000000E928: 0A488924
	v_mul_f32_e32 v37, v37, v68                                // 00000000E92C: 0A4A8925
	v_mul_f32_e32 v38, v38, v68                                // 00000000E930: 0A4C8926
	v_mul_f32_e32 v39, v39, v68                                // 00000000E934: 0A4E8927
	v_mul_f32_e32 v40, v40, v68                                // 00000000E938: 0A508928
	v_mul_f32_e32 v41, v41, v68                                // 00000000E93C: 0A528929
	v_mul_f32_e32 v42, v42, v68                                // 00000000E940: 0A54892A
	v_mul_f32_e32 v43, v43, v68                                // 00000000E944: 0A56892B
	v_mul_f32_e32 v44, v44, v68                                // 00000000E948: 0A58892C
	v_mul_f32_e32 v45, v45, v68                                // 00000000E94C: 0A5A892D
	v_mul_f32_e32 v46, v46, v68                                // 00000000E950: 0A5C892E
	v_mul_f32_e32 v47, v47, v68                                // 00000000E954: 0A5E892F
	v_mul_f32_e32 v48, v48, v68                                // 00000000E958: 0A608930
	v_mul_f32_e32 v49, v49, v68                                // 00000000E95C: 0A628931
	v_mul_f32_e32 v18, v18, v68                                // 00000000E960: 0A248912
	v_mul_f32_e32 v19, v19, v68                                // 00000000E964: 0A268913
	v_mul_f32_e32 v20, v20, v68                                // 00000000E968: 0A288914
	v_mul_f32_e32 v21, v21, v68                                // 00000000E96C: 0A2A8915
	v_mul_f32_e32 v22, v22, v68                                // 00000000E970: 0A2C8916
	v_mul_f32_e32 v23, v23, v68                                // 00000000E974: 0A2E8917
	v_mul_f32_e32 v24, v24, v68                                // 00000000E978: 0A308918
	v_mul_f32_e32 v25, v25, v68                                // 00000000E97C: 0A328919
	v_mul_f32_e32 v26, v26, v68                                // 00000000E980: 0A34891A
	v_mul_f32_e32 v27, v27, v68                                // 00000000E984: 0A36891B
	v_mul_f32_e32 v28, v28, v68                                // 00000000E988: 0A38891C
	v_mul_f32_e32 v29, v29, v68                                // 00000000E98C: 0A3A891D
	v_mul_f32_e32 v30, v30, v68                                // 00000000E990: 0A3C891E
	v_mul_f32_e32 v31, v31, v68                                // 00000000E994: 0A3E891F
	v_mul_f32_e32 v32, v32, v68                                // 00000000E998: 0A408920
	v_mul_f32_e32 v33, v33, v68                                // 00000000E99C: 0A428921
	v_mul_f32_e32 v70, v2, v68                                 // 00000000E9A0: 0A8C8902
	v_mul_f32_e32 v71, v3, v68                                 // 00000000E9A4: 0A8E8903
	v_mul_f32_e32 v72, v4, v68                                 // 00000000E9A8: 0A908904
	v_mul_f32_e32 v73, v5, v68                                 // 00000000E9AC: 0A928905
	v_mul_f32_e32 v74, v6, v68                                 // 00000000E9B0: 0A948906
	v_mul_f32_e32 v75, v7, v68                                 // 00000000E9B4: 0A968907
	v_mul_f32_e32 v76, v8, v68                                 // 00000000E9B8: 0A988908
	v_mul_f32_e32 v77, v9, v68                                 // 00000000E9BC: 0A9A8909
	v_mul_f32_e32 v78, v10, v68                                // 00000000E9C0: 0A9C890A
	v_mul_f32_e32 v79, v11, v68                                // 00000000E9C4: 0A9E890B
	v_mul_f32_e32 v80, v12, v68                                // 00000000E9C8: 0AA0890C
	v_mul_f32_e32 v81, v13, v68                                // 00000000E9CC: 0AA2890D
	v_mul_f32_e32 v82, v14, v68                                // 00000000E9D0: 0AA4890E
	v_mul_f32_e32 v83, v15, v68                                // 00000000E9D4: 0AA6890F
	v_mul_f32_e32 v84, v16, v68                                // 00000000E9D8: 0AA88910
	v_mul_f32_e32 v68, v17, v68                                // 00000000E9DC: 0A888911
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000E9E0: D2680002 00026732
	v_cvt_pk_bf16_f32 v3, v52, v53                             // 00000000E9E8: D2680003 00026B34
	v_cvt_pk_bf16_f32 v4, v54, v55                             // 00000000E9F0: D2680004 00026F36
	v_cvt_pk_bf16_f32 v5, v56, v57                             // 00000000E9F8: D2680005 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000EA00: D2680006 0002773A
	v_cvt_pk_bf16_f32 v7, v60, v61                             // 00000000EA08: D2680007 00027B3C
	v_cvt_pk_bf16_f32 v8, v62, v63                             // 00000000EA10: D2680008 00027F3E
	v_cvt_pk_bf16_f32 v9, v64, v65                             // 00000000EA18: D2680009 00028340
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000EA20: D268000A 00024722
	v_cvt_pk_bf16_f32 v11, v36, v37                            // 00000000EA28: D268000B 00024B24
	v_cvt_pk_bf16_f32 v12, v38, v39                            // 00000000EA30: D268000C 00024F26
	v_cvt_pk_bf16_f32 v13, v40, v41                            // 00000000EA38: D268000D 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000EA40: D268000E 0002572A
	v_cvt_pk_bf16_f32 v15, v44, v45                            // 00000000EA48: D268000F 00025B2C
	v_cvt_pk_bf16_f32 v16, v46, v47                            // 00000000EA50: D2680010 00025F2E
	v_cvt_pk_bf16_f32 v17, v48, v49                            // 00000000EA58: D2680011 00026330
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000EA60: D2680012 00022712
	v_cvt_pk_bf16_f32 v19, v20, v21                            // 00000000EA68: D2680013 00022B14
	v_cvt_pk_bf16_f32 v20, v22, v23                            // 00000000EA70: D2680014 00022F16
	v_cvt_pk_bf16_f32 v21, v24, v25                            // 00000000EA78: D2680015 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000EA80: D2680016 0002371A
	v_cvt_pk_bf16_f32 v23, v28, v29                            // 00000000EA88: D2680017 00023B1C
	v_cvt_pk_bf16_f32 v24, v30, v31                            // 00000000EA90: D2680018 00023F1E
	v_cvt_pk_bf16_f32 v25, v32, v33                            // 00000000EA98: D2680019 00024320
	v_cvt_pk_bf16_f32 v26, v70, v71                            // 00000000EAA0: D268001A 00028F46
	v_cvt_pk_bf16_f32 v27, v72, v73                            // 00000000EAA8: D268001B 00029348
	v_cvt_pk_bf16_f32 v28, v74, v75                            // 00000000EAB0: D268001C 0002974A
	v_cvt_pk_bf16_f32 v29, v76, v77                            // 00000000EAB8: D268001D 00029B4C
	v_cvt_pk_bf16_f32 v30, v78, v79                            // 00000000EAC0: D268001E 00029F4E
	v_cvt_pk_bf16_f32 v31, v80, v81                            // 00000000EAC8: D268001F 0002A350
	v_cvt_pk_bf16_f32 v32, v82, v83                            // 00000000EAD0: D2680020 0002A752
	v_cvt_pk_bf16_f32 v33, v84, v68                            // 00000000EAD8: D2680021 00028954
	v_permlane32_swap_b32_e32 v2, v4                           // 00000000EAE0: 7E04B504
	v_permlane32_swap_b32_e32 v3, v5                           // 00000000EAE4: 7E06B505
	v_permlane32_swap_b32_e32 v6, v8                           // 00000000EAE8: 7E0CB508
	v_permlane32_swap_b32_e32 v7, v9                           // 00000000EAEC: 7E0EB509
	v_permlane32_swap_b32_e32 v10, v12                         // 00000000EAF0: 7E14B50C
	v_permlane32_swap_b32_e32 v11, v13                         // 00000000EAF4: 7E16B50D
	v_permlane32_swap_b32_e32 v14, v16                         // 00000000EAF8: 7E1CB510
	v_permlane32_swap_b32_e32 v15, v17                         // 00000000EAFC: 7E1EB511
	v_permlane32_swap_b32_e32 v18, v20                         // 00000000EB00: 7E24B514
	v_permlane32_swap_b32_e32 v19, v21                         // 00000000EB04: 7E26B515
	v_permlane32_swap_b32_e32 v22, v24                         // 00000000EB08: 7E2CB518
	v_permlane32_swap_b32_e32 v23, v25                         // 00000000EB0C: 7E2EB519
	v_permlane32_swap_b32_e32 v26, v28                         // 00000000EB10: 7E34B51C
	v_permlane32_swap_b32_e32 v27, v29                         // 00000000EB14: 7E36B51D
	v_permlane32_swap_b32_e32 v30, v32                         // 00000000EB18: 7E3CB520
	v_permlane32_swap_b32_e32 v31, v33                         // 00000000EB1C: 7E3EB521
	s_lshl_b32 s52, s33, 13                                    // 00000000EB20: 8E348D21
	v_xor_b32_e32 v34, v120, v66                               // 00000000EB24: 2A448578
	s_mov_b32 s53, 0x18000                                     // 00000000EB28: BEB500FF 00018000
	v_or_b32_e32 v35, s52, v121                                // 00000000EB30: 2846F234
	v_lshlrev_b32_e32 v34, 4, v34                              // 00000000EB34: 24444484
	v_or3_b32 v34, v35, v34, s53                               // 00000000EB38: D2020022 00D64523
	ds_write_b128 v34, v[2:5]                                  // 00000000EB40: D9BE0000 00000222
	v_xor_b32_e32 v2, 32, v34                                  // 00000000EB48: 2A0444A0
	ds_write_b128 v2, v[6:9]                                   // 00000000EB4C: D9BE0000 00000602
	v_xor_b32_e32 v2, 64, v34                                  // 00000000EB54: 2A0444C0
	ds_write_b128 v2, v[10:13]                                 // 00000000EB58: D9BE0000 00000A02
	v_xor_b32_e32 v2, 0x60, v34                                // 00000000EB60: 2A0444FF 00000060
	ds_write_b128 v2, v[14:17]                                 // 00000000EB68: D9BE0000 00000E02
	v_xor_b32_e32 v2, 0x80, v34                                // 00000000EB70: 2A0444FF 00000080
	ds_write_b128 v2, v[18:21]                                 // 00000000EB78: D9BE0000 00001202
	v_xor_b32_e32 v2, 0xa0, v34                                // 00000000EB80: 2A0444FF 000000A0
	ds_write_b128 v2, v[22:25]                                 // 00000000EB88: D9BE0000 00001602
	v_xor_b32_e32 v2, 0xc0, v34                                // 00000000EB90: 2A0444FF 000000C0
	ds_write_b128 v2, v[26:29]                                 // 00000000EB98: D9BE0000 00001A02
	v_xor_b32_e32 v2, 0xe0, v34                                // 00000000EBA0: 2A0444FF 000000E0
	ds_write_b128 v2, v[30:33]                                 // 00000000EBA8: D9BE0000 00001E02
	v_xor_b32_e32 v3, v67, v66                                 // 00000000EBB0: 2A068543
	v_lshlrev_b32_e32 v2, 8, v67                               // 00000000EBB4: 24048688
	v_lshlrev_b32_e32 v3, 4, v3                                // 00000000EBB8: 24060684
	v_or3_b32 v2, v2, s52, v3                                  // 00000000EBBC: D2020002 040C6902
	v_or_b32_e32 v3, 0x18000, v2                               // 00000000EBC4: 280604FF 00018000
	ds_read_b128 v[10:13], v3                                  // 00000000EBCC: D9FE0000 0A000003
	v_xor_b32_e32 v4, 64, v3                                   // 00000000EBD4: 2A0806C0
	ds_read_b128 v[14:17], v4 offset:1024                      // 00000000EBD8: D9FE0400 0E000004
	v_xor_b32_e32 v5, 0x80, v3                                 // 00000000EBE0: 2A0A06FF 00000080
	ds_read_b128 v[18:21], v5 offset:2048                      // 00000000EBE8: D9FE0800 12000005
	v_xor_b32_e32 v3, 0xc0, v3                                 // 00000000EBF0: 2A0606FF 000000C0
	ds_read_b128 v[22:25], v3 offset:3072                      // 00000000EBF8: D9FE0C00 16000003
	v_or_b32_e32 v2, 0x19000, v2                               // 00000000EC00: 280404FF 00019000
	ds_read_b128 v[26:29], v2                                  // 00000000EC08: D9FE0000 1A000002
	ds_read_b128 v[30:33], v4 offset:5120                      // 00000000EC10: D9FE1400 1E000004
	ds_read_b128 v[34:37], v5 offset:6144                      // 00000000EC18: D9FE1800 22000005
	ds_read_b128 v[38:41], v3 offset:7168                      // 00000000EC20: D9FE1C00 26000003
	v_add_u32_e32 v2, s3, v67                                  // 00000000EC28: 68048603
	v_mul_lo_u32 v2, s8, v2                                    // 00000000EC2C: D2850002 00020408
	v_lshl_add_u32 v2, v66, 4, v2                              // 00000000EC34: D1FD0002 04090942
	s_lshl_b32 s52, s8, 2                                      // 00000000EC3C: 8E348208
	v_add_u32_e32 v3, s52, v2                                  // 00000000EC40: 68060434
	v_add_u32_e32 v4, s52, v3                                  // 00000000EC44: 68080634
	v_add_u32_e32 v5, s52, v4                                  // 00000000EC48: 680A0834
	v_add_u32_e32 v6, s52, v5                                  // 00000000EC4C: 680C0A34
	v_add_u32_e32 v7, s52, v6                                  // 00000000EC50: 680E0C34
	v_add_u32_e32 v8, s52, v7                                  // 00000000EC54: 68100E34
	v_add_u32_e32 v9, s52, v8                                  // 00000000EC58: 68121034
	s_waitcnt lgkmcnt(7)                                       // 00000000EC5C: BF8CC77F
	global_store_dwordx4 v2, v[10:13], s[10:11]                // 00000000EC60: DC7C8000 000A0A02
	s_waitcnt lgkmcnt(6)                                       // 00000000EC68: BF8CC67F
	global_store_dwordx4 v3, v[14:17], s[10:11]                // 00000000EC6C: DC7C8000 000A0E03
	s_waitcnt lgkmcnt(5)                                       // 00000000EC74: BF8CC57F
	global_store_dwordx4 v4, v[18:21], s[10:11]                // 00000000EC78: DC7C8000 000A1204
	s_waitcnt lgkmcnt(4)                                       // 00000000EC80: BF8CC47F
	global_store_dwordx4 v5, v[22:25], s[10:11]                // 00000000EC84: DC7C8000 000A1605
	s_waitcnt lgkmcnt(3)                                       // 00000000EC8C: BF8CC37F
	global_store_dwordx4 v6, v[26:29], s[10:11]                // 00000000EC90: DC7C8000 000A1A06
	s_waitcnt lgkmcnt(2)                                       // 00000000EC98: BF8CC27F
	global_store_dwordx4 v7, v[30:33], s[10:11]                // 00000000EC9C: DC7C8000 000A1E07
	s_waitcnt lgkmcnt(1)                                       // 00000000ECA4: BF8CC17F
	global_store_dwordx4 v8, v[34:37], s[10:11]                // 00000000ECA8: DC7C8000 000A2208
	s_waitcnt lgkmcnt(0)                                       // 00000000ECB0: BF8CC07F
	global_store_dwordx4 v9, v[38:41], s[10:11]                // 00000000ECB4: DC7C8000 000A2609
	v_add_f32_e32 v2, v134, v69                                // 00000000ECBC: 02048B86
	v_add_f32_e32 v2, -4.0, v2                                 // 00000000ECC0: 020404F7
	v_add_f32_e32 v2, -2.0, v2                                 // 00000000ECC4: 020404F5
	v_mul_f32_e32 v2, 0x3f317218, v2                           // 00000000ECC8: 0A0404FF 3F317218
	v_add_u32_e32 v3, s3, v119                                 // 00000000ECD0: 6806EE03
	v_lshlrev_b32_e32 v3, 2, v3                                // 00000000ECD4: 24060682
	s_cmp_eq_u64 s[0:1], 0                                     // 00000000ECD8: BF128000
	s_mov_b64 s[10:11], s[54:55]                               // 00000000ECDC: BE8A0136
	s_mov_b32 s3, s31                                          // 00000000ECE0: BE83001F
	s_cbranch_scc1 60864                                       // 00000000ECE4: BF85EDC0 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3e8>
	global_store_dword v3, v2, s[0:1]                          // 00000000ECE8: DC708000 00000203
	s_mov_b64 s[10:11], s[54:55]                               // 00000000ECF0: BE8A0136
	s_mov_b32 s3, s31                                          // 00000000ECF4: BE83001F
	s_branch 60859                                             // 00000000ECF8: BF82EDBB <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3e8>
	s_nop 15                                                   // 00000000ECFC: BF80000F
	s_nop 3                                                    // 00000000ED00: BF800003
	v_rcp_f32_e32 v0, v135                                     // 00000000ED04: 7E004587
	v_log_f32_e32 v68, v135                                    // 00000000ED08: 7E884387
	s_nop 1                                                    // 00000000ED0C: BF800001
	v_mul_f32_e32 v0, v132, v0                                 // 00000000ED10: 0A000184
	v_mul_f32_e32 v1, v50, v0                                  // 00000000ED14: 0A020132
	v_mul_f32_e32 v50, v51, v0                                 // 00000000ED18: 0A640133
	v_mul_f32_e32 v51, v52, v0                                 // 00000000ED1C: 0A660134
	v_mul_f32_e32 v52, v53, v0                                 // 00000000ED20: 0A680135
	v_mul_f32_e32 v53, v54, v0                                 // 00000000ED24: 0A6A0136
	v_mul_f32_e32 v54, v55, v0                                 // 00000000ED28: 0A6C0137
	v_mul_f32_e32 v55, v56, v0                                 // 00000000ED2C: 0A6E0138
	v_mul_f32_e32 v56, v57, v0                                 // 00000000ED30: 0A700139
	v_mul_f32_e32 v57, v58, v0                                 // 00000000ED34: 0A72013A
	v_mul_f32_e32 v58, v59, v0                                 // 00000000ED38: 0A74013B
	v_mul_f32_e32 v59, v60, v0                                 // 00000000ED3C: 0A76013C
	v_mul_f32_e32 v60, v61, v0                                 // 00000000ED40: 0A78013D
	v_mul_f32_e32 v61, v62, v0                                 // 00000000ED44: 0A7A013E
	v_mul_f32_e32 v62, v63, v0                                 // 00000000ED48: 0A7C013F
	v_mul_f32_e32 v63, v64, v0                                 // 00000000ED4C: 0A7E0140
	v_mul_f32_e32 v64, v65, v0                                 // 00000000ED50: 0A800141
	v_mul_f32_e32 v34, v34, v0                                 // 00000000ED54: 0A440122
	v_mul_f32_e32 v35, v35, v0                                 // 00000000ED58: 0A460123
	v_mul_f32_e32 v36, v36, v0                                 // 00000000ED5C: 0A480124
	v_mul_f32_e32 v37, v37, v0                                 // 00000000ED60: 0A4A0125
	v_mul_f32_e32 v38, v38, v0                                 // 00000000ED64: 0A4C0126
	v_mul_f32_e32 v39, v39, v0                                 // 00000000ED68: 0A4E0127
	v_mul_f32_e32 v40, v40, v0                                 // 00000000ED6C: 0A500128
	v_mul_f32_e32 v41, v41, v0                                 // 00000000ED70: 0A520129
	v_mul_f32_e32 v42, v42, v0                                 // 00000000ED74: 0A54012A
	v_mul_f32_e32 v43, v43, v0                                 // 00000000ED78: 0A56012B
	v_mul_f32_e32 v44, v44, v0                                 // 00000000ED7C: 0A58012C
	v_mul_f32_e32 v45, v45, v0                                 // 00000000ED80: 0A5A012D
	v_mul_f32_e32 v46, v46, v0                                 // 00000000ED84: 0A5C012E
	v_mul_f32_e32 v47, v47, v0                                 // 00000000ED88: 0A5E012F
	v_mul_f32_e32 v48, v48, v0                                 // 00000000ED8C: 0A600130
	v_mul_f32_e32 v49, v49, v0                                 // 00000000ED90: 0A620131
	v_mul_f32_e32 v18, v18, v0                                 // 00000000ED94: 0A240112
	v_mul_f32_e32 v19, v19, v0                                 // 00000000ED98: 0A260113
	v_mul_f32_e32 v20, v20, v0                                 // 00000000ED9C: 0A280114
	v_mul_f32_e32 v21, v21, v0                                 // 00000000EDA0: 0A2A0115
	v_mul_f32_e32 v22, v22, v0                                 // 00000000EDA4: 0A2C0116
	v_mul_f32_e32 v23, v23, v0                                 // 00000000EDA8: 0A2E0117
	v_mul_f32_e32 v24, v24, v0                                 // 00000000EDAC: 0A300118
	v_mul_f32_e32 v25, v25, v0                                 // 00000000EDB0: 0A320119
	v_mul_f32_e32 v26, v26, v0                                 // 00000000EDB4: 0A34011A
	v_mul_f32_e32 v27, v27, v0                                 // 00000000EDB8: 0A36011B
	v_mul_f32_e32 v28, v28, v0                                 // 00000000EDBC: 0A38011C
	v_mul_f32_e32 v29, v29, v0                                 // 00000000EDC0: 0A3A011D
	v_mul_f32_e32 v30, v30, v0                                 // 00000000EDC4: 0A3C011E
	v_mul_f32_e32 v31, v31, v0                                 // 00000000EDC8: 0A3E011F
	v_mul_f32_e32 v32, v32, v0                                 // 00000000EDCC: 0A400120
	v_mul_f32_e32 v33, v33, v0                                 // 00000000EDD0: 0A420121
	v_mul_f32_e32 v65, v2, v0                                  // 00000000EDD4: 0A820102
	v_mul_f32_e32 v69, v3, v0                                  // 00000000EDD8: 0A8A0103
	v_mul_f32_e32 v70, v4, v0                                  // 00000000EDDC: 0A8C0104
	v_mul_f32_e32 v71, v5, v0                                  // 00000000EDE0: 0A8E0105
	v_mul_f32_e32 v72, v6, v0                                  // 00000000EDE4: 0A900106
	v_mul_f32_e32 v73, v7, v0                                  // 00000000EDE8: 0A920107
	v_mul_f32_e32 v74, v8, v0                                  // 00000000EDEC: 0A940108
	v_mul_f32_e32 v75, v9, v0                                  // 00000000EDF0: 0A960109
	v_mul_f32_e32 v76, v10, v0                                 // 00000000EDF4: 0A98010A
	v_mul_f32_e32 v77, v11, v0                                 // 00000000EDF8: 0A9A010B
	v_mul_f32_e32 v78, v12, v0                                 // 00000000EDFC: 0A9C010C
	v_mul_f32_e32 v79, v13, v0                                 // 00000000EE00: 0A9E010D
	v_mul_f32_e32 v80, v14, v0                                 // 00000000EE04: 0AA0010E
	v_mul_f32_e32 v81, v15, v0                                 // 00000000EE08: 0AA2010F
	v_mul_f32_e32 v82, v16, v0                                 // 00000000EE0C: 0AA40110
	v_mul_f32_e32 v83, v17, v0                                 // 00000000EE10: 0AA60111
	v_cvt_pk_bf16_f32 v0, v1, v50                              // 00000000EE14: D2680000 00026501
	v_cvt_pk_bf16_f32 v1, v51, v52                             // 00000000EE1C: D2680001 00026933
	v_cvt_pk_bf16_f32 v2, v53, v54                             // 00000000EE24: D2680002 00026D35
	v_cvt_pk_bf16_f32 v3, v55, v56                             // 00000000EE2C: D2680003 00027137
	v_cvt_pk_bf16_f32 v4, v57, v58                             // 00000000EE34: D2680004 00027539
	v_cvt_pk_bf16_f32 v5, v59, v60                             // 00000000EE3C: D2680005 0002793B
	v_cvt_pk_bf16_f32 v6, v61, v62                             // 00000000EE44: D2680006 00027D3D
	v_cvt_pk_bf16_f32 v7, v63, v64                             // 00000000EE4C: D2680007 0002813F
	v_cvt_pk_bf16_f32 v8, v34, v35                             // 00000000EE54: D2680008 00024722
	v_cvt_pk_bf16_f32 v9, v36, v37                             // 00000000EE5C: D2680009 00024B24
	v_cvt_pk_bf16_f32 v10, v38, v39                            // 00000000EE64: D268000A 00024F26
	v_cvt_pk_bf16_f32 v11, v40, v41                            // 00000000EE6C: D268000B 00025328
	v_cvt_pk_bf16_f32 v12, v42, v43                            // 00000000EE74: D268000C 0002572A
	v_cvt_pk_bf16_f32 v13, v44, v45                            // 00000000EE7C: D268000D 00025B2C
	v_cvt_pk_bf16_f32 v14, v46, v47                            // 00000000EE84: D268000E 00025F2E
	v_cvt_pk_bf16_f32 v15, v48, v49                            // 00000000EE8C: D268000F 00026330
	v_cvt_pk_bf16_f32 v16, v18, v19                            // 00000000EE94: D2680010 00022712
	v_cvt_pk_bf16_f32 v17, v20, v21                            // 00000000EE9C: D2680011 00022B14
	v_cvt_pk_bf16_f32 v18, v22, v23                            // 00000000EEA4: D2680012 00022F16
	v_cvt_pk_bf16_f32 v19, v24, v25                            // 00000000EEAC: D2680013 00023318
	v_cvt_pk_bf16_f32 v20, v26, v27                            // 00000000EEB4: D2680014 0002371A
	v_cvt_pk_bf16_f32 v21, v28, v29                            // 00000000EEBC: D2680015 00023B1C
	v_cvt_pk_bf16_f32 v22, v30, v31                            // 00000000EEC4: D2680016 00023F1E
	v_cvt_pk_bf16_f32 v23, v32, v33                            // 00000000EECC: D2680017 00024320
	v_cvt_pk_bf16_f32 v24, v65, v69                            // 00000000EED4: D2680018 00028B41
	v_cvt_pk_bf16_f32 v25, v70, v71                            // 00000000EEDC: D2680019 00028F46
	v_cvt_pk_bf16_f32 v26, v72, v73                            // 00000000EEE4: D268001A 00029348
	v_cvt_pk_bf16_f32 v27, v74, v75                            // 00000000EEEC: D268001B 0002974A
	v_cvt_pk_bf16_f32 v28, v76, v77                            // 00000000EEF4: D268001C 00029B4C
	v_cvt_pk_bf16_f32 v29, v78, v79                            // 00000000EEFC: D268001D 00029F4E
	v_cvt_pk_bf16_f32 v30, v80, v81                            // 00000000EF04: D268001E 0002A350
	v_cvt_pk_bf16_f32 v31, v82, v83                            // 00000000EF0C: D268001F 0002A752
	v_permlane32_swap_b32_e32 v0, v2                           // 00000000EF14: 7E00B502
	v_permlane32_swap_b32_e32 v1, v3                           // 00000000EF18: 7E02B503
	v_permlane32_swap_b32_e32 v4, v6                           // 00000000EF1C: 7E08B506
	v_permlane32_swap_b32_e32 v5, v7                           // 00000000EF20: 7E0AB507
	v_permlane32_swap_b32_e32 v8, v10                          // 00000000EF24: 7E10B50A
	v_permlane32_swap_b32_e32 v9, v11                          // 00000000EF28: 7E12B50B
	v_permlane32_swap_b32_e32 v12, v14                         // 00000000EF2C: 7E18B50E
	v_permlane32_swap_b32_e32 v13, v15                         // 00000000EF30: 7E1AB50F
	v_permlane32_swap_b32_e32 v16, v18                         // 00000000EF34: 7E20B512
	v_permlane32_swap_b32_e32 v17, v19                         // 00000000EF38: 7E22B513
	v_permlane32_swap_b32_e32 v20, v22                         // 00000000EF3C: 7E28B516
	v_permlane32_swap_b32_e32 v21, v23                         // 00000000EF40: 7E2AB517
	v_permlane32_swap_b32_e32 v24, v26                         // 00000000EF44: 7E30B51A
	v_permlane32_swap_b32_e32 v25, v27                         // 00000000EF48: 7E32B51B
	v_permlane32_swap_b32_e32 v28, v30                         // 00000000EF4C: 7E38B51E
	v_permlane32_swap_b32_e32 v29, v31                         // 00000000EF50: 7E3AB51F
	s_lshl_b32 s2, s33, 13                                     // 00000000EF54: 8E028D21
	v_xor_b32_e32 v32, v120, v66                               // 00000000EF58: 2A408578
	s_mov_b32 s4, 0x18000                                      // 00000000EF5C: BE8400FF 00018000
	v_or_b32_e32 v33, s2, v121                                 // 00000000EF64: 2842F202
	v_lshlrev_b32_e32 v32, 4, v32                              // 00000000EF68: 24404084
	v_or3_b32 v32, v33, v32, s4                                // 00000000EF6C: D2020020 00124121
	ds_write_b128 v32, v[0:3]                                  // 00000000EF74: D9BE0000 00000020
	v_xor_b32_e32 v0, 32, v32                                  // 00000000EF7C: 2A0040A0
	ds_write_b128 v0, v[4:7]                                   // 00000000EF80: D9BE0000 00000400
	v_xor_b32_e32 v0, 64, v32                                  // 00000000EF88: 2A0040C0
	ds_write_b128 v0, v[8:11]                                  // 00000000EF8C: D9BE0000 00000800
	v_xor_b32_e32 v0, 0x60, v32                                // 00000000EF94: 2A0040FF 00000060
	ds_write_b128 v0, v[12:15]                                 // 00000000EF9C: D9BE0000 00000C00
	v_xor_b32_e32 v0, 0x80, v32                                // 00000000EFA4: 2A0040FF 00000080
	ds_write_b128 v0, v[16:19]                                 // 00000000EFAC: D9BE0000 00001000
	v_xor_b32_e32 v0, 0xa0, v32                                // 00000000EFB4: 2A0040FF 000000A0
	ds_write_b128 v0, v[20:23]                                 // 00000000EFBC: D9BE0000 00001400
	v_xor_b32_e32 v0, 0xc0, v32                                // 00000000EFC4: 2A0040FF 000000C0
	ds_write_b128 v0, v[24:27]                                 // 00000000EFCC: D9BE0000 00001800
	v_xor_b32_e32 v0, 0xe0, v32                                // 00000000EFD4: 2A0040FF 000000E0
	ds_write_b128 v0, v[28:31]                                 // 00000000EFDC: D9BE0000 00001C00
	v_xor_b32_e32 v1, v67, v66                                 // 00000000EFE4: 2A028543
	v_lshlrev_b32_e32 v0, 8, v67                               // 00000000EFE8: 24008688
	v_lshlrev_b32_e32 v1, 4, v1                                // 00000000EFEC: 24020284
	v_or3_b32 v0, v0, s2, v1                                   // 00000000EFF0: D2020000 04040500
	v_or_b32_e32 v1, 0x18000, v0                               // 00000000EFF8: 280200FF 00018000
	ds_read_b128 v[8:11], v1                                   // 00000000F000: D9FE0000 08000001
	v_xor_b32_e32 v2, 64, v1                                   // 00000000F008: 2A0402C0
	ds_read_b128 v[12:15], v2 offset:1024                      // 00000000F00C: D9FE0400 0C000002
	v_xor_b32_e32 v3, 0x80, v1                                 // 00000000F014: 2A0602FF 00000080
	ds_read_b128 v[16:19], v3 offset:2048                      // 00000000F01C: D9FE0800 10000003
	v_xor_b32_e32 v1, 0xc0, v1                                 // 00000000F024: 2A0202FF 000000C0
	ds_read_b128 v[20:23], v1 offset:3072                      // 00000000F02C: D9FE0C00 14000001
	v_or_b32_e32 v0, 0x19000, v0                               // 00000000F034: 280000FF 00019000
	ds_read_b128 v[24:27], v0                                  // 00000000F03C: D9FE0000 18000000
	ds_read_b128 v[28:31], v2 offset:5120                      // 00000000F044: D9FE1400 1C000002
	ds_read_b128 v[32:35], v3 offset:6144                      // 00000000F04C: D9FE1800 20000003
	ds_read_b128 v[36:39], v1 offset:7168                      // 00000000F054: D9FE1C00 24000001
	v_add_u32_e32 v0, s3, v67                                  // 00000000F05C: 68008603
	v_mul_lo_u32 v0, s8, v0                                    // 00000000F060: D2850000 00020008
	v_lshl_add_u32 v0, v66, 4, v0                              // 00000000F068: D1FD0000 04010942
	s_lshl_b32 s2, s8, 2                                       // 00000000F070: 8E028208
	v_add_u32_e32 v1, s2, v0                                   // 00000000F074: 68020002
	v_add_u32_e32 v2, s2, v1                                   // 00000000F078: 68040202
	v_add_u32_e32 v3, s2, v2                                   // 00000000F07C: 68060402
	v_add_u32_e32 v4, s2, v3                                   // 00000000F080: 68080602
	v_add_u32_e32 v5, s2, v4                                   // 00000000F084: 680A0802
	v_add_u32_e32 v6, s2, v5                                   // 00000000F088: 680C0A02
	v_add_u32_e32 v7, s2, v6                                   // 00000000F08C: 680E0C02
	s_waitcnt lgkmcnt(7)                                       // 00000000F090: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[10:11]                 // 00000000F094: DC7C8000 000A0800
	s_waitcnt lgkmcnt(6)                                       // 00000000F09C: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[10:11]                // 00000000F0A0: DC7C8000 000A0C01
	s_waitcnt lgkmcnt(5)                                       // 00000000F0A8: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[10:11]                // 00000000F0AC: DC7C8000 000A1002
	s_waitcnt lgkmcnt(4)                                       // 00000000F0B4: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[10:11]                // 00000000F0B8: DC7C8000 000A1403
	s_waitcnt lgkmcnt(3)                                       // 00000000F0C0: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[10:11]                // 00000000F0C4: DC7C8000 000A1804
	s_waitcnt lgkmcnt(2)                                       // 00000000F0CC: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[10:11]                // 00000000F0D0: DC7C8000 000A1C05
	s_waitcnt lgkmcnt(1)                                       // 00000000F0D8: BF8CC17F
	global_store_dwordx4 v6, v[32:35], s[10:11]                // 00000000F0DC: DC7C8000 000A2006
	s_waitcnt lgkmcnt(0)                                       // 00000000F0E4: BF8CC07F
	global_store_dwordx4 v7, v[36:39], s[10:11]                // 00000000F0E8: DC7C8000 000A2407
	v_add_f32_e32 v0, v134, v68                                // 00000000F0F0: 02008986
	v_add_f32_e32 v0, -4.0, v0                                 // 00000000F0F4: 020000F7
	v_add_f32_e32 v0, -2.0, v0                                 // 00000000F0F8: 020000F5
	v_mul_f32_e32 v0, 0x3f317218, v0                           // 00000000F0FC: 0A0000FF 3F317218
	v_add_u32_e32 v1, s3, v119                                 // 00000000F104: 6802EE03
	v_lshlrev_b32_e32 v1, 2, v1                                // 00000000F108: 24020282
	s_cmp_eq_u64 s[0:1], 0                                     // 00000000F10C: BF128000
	s_cbranch_scc1 2                                           // 00000000F110: BF850002 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x511c>
	global_store_dword v1, v0, s[0:1]                          // 00000000F114: DC708000 00000001
	s_and_b64 s[0:1], s[52:53], exec                           // 00000000F11C: 86807E34
	s_cbranch_scc0 1                                           // 00000000F120: BF840001 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5128>
	s_barrier                                                  // 00000000F124: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000F128: BF8C0F70
	s_endpgm                                                   // 00000000F12C: BF810000
