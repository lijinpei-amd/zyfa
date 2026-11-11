
build/whole-kernel-candidates/integrated-fallback-object/native.co:	file format elf64-amdgpu

Disassembly of section .text:

0000000000001b00 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE>:
	s_load_dwordx16 s[36:51], s[0:1], 0x0                      // 000000001B00: C0120900 00000000
	s_load_dwordx16 s[4:19], s[0:1], 0x40                      // 000000001B08: C0120100 00000040
	s_load_dwordx4 s[20:23], s[0:1], 0x80                      // 000000001B10: C00A0500 00000080
	s_load_dwordx2 s[24:25], s[0:1], 0x90                      // 000000001B18: C0060600 00000090
	v_bfe_u32 v1, v0, 5, 1                                     // 000000001B20: D1C80001 02050B00
	v_lshrrev_b32_e32 v2, 2, v0                                // 000000001B28: 20040082
	v_and_b32_e32 v216, 31, v0                                 // 000000001B2C: 27B0009F
	v_xor_b32_e32 v3, v1, v2                                   // 000000001B30: 2A060501
	s_movk_i32 s1, 0x60                                        // 000000001B34: B0010060
	v_lshlrev_b32_e32 v4, 7, v216                              // 000000001B38: 2409B087
	v_lshlrev_b32_e32 v3, 5, v3                                // 000000001B3C: 24060685
	v_and_or_b32 v231, v3, s1, v4                              // 000000001B40: D20100E7 04100303
	v_readfirstlane_b32 s0, v0                                 // 000000001B48: 7E000500
	v_xor_b32_e32 v232, 64, v231                               // 000000001B4C: 2BD1CEC0
	s_waitcnt lgkmcnt(0)                                       // 000000001B50: BF8CC07F
	s_cmp_eq_u64 s[20:21], 0                                   // 000000001B54: BF128014
	s_cbranch_scc1 14                                          // 000000001B58: BF85000E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x94>
	s_load_dword s1, s[20:21], 0x0                             // 000000001B5C: C002004A 00000000
	s_cmp_eq_u64 s[22:23], 0                                   // 000000001B64: BF128016
	s_cbranch_scc1 13                                          // 000000001B68: BF85000D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa0>
	s_load_dword s3, s[22:23], 0x0                             // 000000001B6C: C00200CB 00000000
	s_waitcnt lgkmcnt(0)                                       // 000000001B74: BF8CC07F
	v_mov_b32_e32 v3, s3                                       // 000000001B78: 7E060203
	v_mul_f32_e32 v3, s1, v3                                   // 000000001B7C: 0A060601
	s_cmp_eq_u64 s[24:25], 0                                   // 000000001B80: BF128018
	s_cbranch_scc1 10                                          // 000000001B84: BF85000A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb0>
	s_load_dword s17, s[24:25], 0x0                            // 000000001B88: C002044C 00000000
	s_branch 8                                                 // 000000001B90: BF820008 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb4>
	s_mov_b32 s1, 1.0                                          // 000000001B94: BE8100F2
	s_cmp_eq_u64 s[22:23], 0                                   // 000000001B98: BF128016
	s_cbranch_scc0 65523                                       // 000000001B9C: BF84FFF3 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6c>
	s_waitcnt lgkmcnt(0)                                       // 000000001BA0: BF8CC07F
	v_mov_b32_e32 v3, s1                                       // 000000001BA4: 7E060201
	s_cmp_eq_u64 s[24:25], 0                                   // 000000001BA8: BF128018
	s_cbranch_scc0 65526                                       // 000000001BAC: BF84FFF6 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x88>
	s_mov_b32 s17, 1.0                                         // 000000001BB0: BE9100F2
	v_and_b32_e32 v6, 1, v0                                    // 000000001BB4: 260C0081
	v_bfe_u32 v5, v0, 1, 2                                     // 000000001BB8: D1C80005 02090300
	s_mov_b32 s1, 1                                            // 000000001BC0: BE810081
	v_lshlrev_b32_e32 v7, 4, v6                                // 000000001BC4: 240E0C84
	v_lshrrev_b32_e32 v4, 3, v0                                // 000000001BC8: 20080083
	v_lshrrev_b32_e32 v8, 5, v0                                // 000000001BCC: 20100085
	v_xor_b32_e32 v8, v5, v8                                   // 000000001BD0: 2A101105
	v_and_b32_e32 v8, 3, v8                                    // 000000001BD4: 26101083
	v_lshlrev_b32_e32 v8, 5, v8                                // 000000001BD8: 24101085
	v_or_b32_e32 v8, v8, v7                                    // 000000001BDC: 28100F08
	v_mul_lo_u32 v9, s8, v4                                    // 000000001BE0: D2850009 00020808
	v_add_u32_e32 v233, v9, v8                                 // 000000001BE8: 69D21109
	v_or_b32_e32 v8, 0x200, v0                                 // 000000001BEC: 281000FF 00000200
	v_lshrrev_b32_e32 v9, 3, v8                                // 000000001BF4: 20121083
	v_lshrrev_b32_e32 v10, 5, v8                               // 000000001BF8: 20141085
	v_xor_b32_e32 v5, v5, v10                                  // 000000001BFC: 2A0A1505
	v_and_b32_e32 v5, 3, v5                                    // 000000001C00: 260A0A83
	v_lshlrev_b32_e32 v5, 5, v5                                // 000000001C04: 240A0A85
	v_or_b32_e32 v5, v5, v7                                    // 000000001C08: 280A0F05
	v_mul_lo_u32 v6, s8, v9                                    // 000000001C0C: D2850006 00021208
	v_add_u32_e32 v234, v6, v5                                 // 000000001C14: 69D40B06
	v_lshrrev_b32_e32 v5, 7, v0                                // 000000001C18: 200A0087
	v_bfe_u32 v6, v0, 6, 1                                     // 000000001C1C: D1C80006 02050D00
	v_bfe_u32 v7, v0, 2, 1                                     // 000000001C24: D1C80007 02050500
	v_bfe_u32 v10, v0, 3, 3                                    // 000000001C2C: D1C8000A 020D0700
	v_and_b32_e32 v9, 3, v0                                    // 000000001C34: 26120083
	v_lshlrev_b32_e32 v11, 5, v5                               // 000000001C38: 24160A85
	v_lshlrev_b32_e32 v12, 4, v6                               // 000000001C3C: 24180C84
	v_lshlrev_b32_e32 v13, 3, v7                               // 000000001C40: 241A0E83
	v_lshlrev_b32_e32 v14, 4, v10                              // 000000001C44: 241C1484
	s_mov_b32 s3, 0                                            // 000000001C48: BE830080
	v_or_b32_e32 v15, v11, v12                                 // 000000001C4C: 281E190B
	v_or_b32_e32 v15, v15, v13                                 // 000000001C50: 281E1B0F
	v_or_b32_e32 v15, v15, v9                                  // 000000001C54: 281E130F
	v_mul_lo_u32 v15, s8, v15                                  // 000000001C58: D285000F 00021E08
	v_add_u32_e32 v235, v15, v14                               // 000000001C60: 69D61D0F
	v_or_b32_e32 v5, 4, v11                                    // 000000001C64: 280A1684
	v_or_b32_e32 v5, v5, v12                                   // 000000001C68: 280A1905
	v_or_b32_e32 v5, v5, v13                                   // 000000001C6C: 280A1B05
	v_or_b32_e32 v5, v5, v9                                    // 000000001C70: 280A1305
	v_mul_lo_u32 v5, s8, v5                                    // 000000001C74: D2850005 00020A08
	v_add_u32_e32 v236, v5, v14                                // 000000001C7C: 69D81D05
	s_cmp_ge_u32 s2, s51                                       // 000000001C80: BF093302
	s_cbranch_scc1 8885                                        // 000000001C84: BF8522B5 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8c5c>
	s_lshr_b32 s1, s0, 6                                       // 000000001C88: 8F018600
	s_lshl_b32 s33, s8, 7                                      // 000000001C8C: 8E218708
	s_lshr_b32 s21, s0, 8                                      // 000000001C90: 8F158800
	s_bfe_u32 s20, s0, 0x20006                                 // 000000001C94: 9294FF00 00020006
	s_lshl_b32 s88, s1, 10                                     // 000000001C9C: 8E588A01
	s_cmp_eq_u32 s6, 0                                         // 000000001CA0: BF068006
	s_cselect_b32 s16, s1, s20                                 // 000000001CA4: 85101401
	s_cselect_b32 s6, 0, s21                                   // 000000001CA8: 85061580
	s_lshl_b32 s0, s2, 5                                       // 000000001CAC: 8E008502
	s_load_dwordx8 s[68:75], s[46:47], s0 offset:0x0           // 000000001CB0: C00E5117 00000000
	s_mul_i32 s22, s6, s10                                     // 000000001CB8: 92160A06
	s_mul_i32 s30, s8, s13                                     // 000000001CBC: 921E0D08
	s_mov_b32 s31, 0x110000                                    // 000000001CC0: BE9F00FF 00110000
	v_writelane_b32 v255, s16, 0                               // 000000001CC8: D28A00FF 00010010
	s_waitcnt lgkmcnt(0)                                       // 000000001CD0: BF8CC07F
	s_add_u32 s0, s36, s70                                     // 000000001CD4: 80004624
	s_addc_u32 s1, s37, s71                                    // 000000001CD8: 82014725
	s_add_u32 s0, s0, s22                                      // 000000001CDC: 80001600
	s_addc_u32 s1, s1, 0                                       // 000000001CE0: 82018001
	s_add_u32 s28, s38, s72                                    // 000000001CE4: 801C4826
	s_addc_u32 s29, s39, s73                                   // 000000001CE8: 821D4927
	s_add_u32 s80, s40, s72                                    // 000000001CEC: 80504828
	s_addc_u32 s81, s41, s73                                   // 000000001CF0: 82514929
	s_not_b32 s3, s68                                          // 000000001CF4: BE830444
	s_add_u32 s3, s4, s3                                       // 000000001CF8: 80030304
	s_mul_i32 s10, s3, s5                                      // 000000001CFC: 920A0503
	s_lshl_b32 s3, s3, 5                                       // 000000001D00: 8E038503
	s_lshr_b32 s18, s13, 7                                     // 000000001D04: 8F12870D
	s_add_u32 s10, s10, s16                                    // 000000001D08: 800A100A
	s_add_u32 s13, s3, 32                                      // 000000001D0C: 800DA003
	s_lshl_b32 s3, s10, 5                                      // 000000001D10: 8E03850A
	s_mul_i32 s10, s13, s5                                     // 000000001D14: 920A050D
	s_addk_i32 s10, 0x60                                       // 000000001D18: B70A0060
	s_lshr_b32 s10, s10, 7                                     // 000000001D1C: 8F0A870A
	v_or_b32_e32 v5, s3, v216                                  // 000000001D20: 280BB003
	v_writelane_b32 v255, s18, 1                               // 000000001D24: D28A00FF 00010212
	s_min_u32 s96, s18, s10                                    // 000000001D2C: 83E00A12
	s_mov_b32 s82, s30                                         // 000000001D30: BED2001E
	s_mov_b32 s83, s31                                         // 000000001D34: BED3001F
	v_mul_lo_u32 v5, v5, s7                                    // 000000001D38: D2850005 00000F05
	v_lshlrev_b32_e32 v6, 5, v1                                // 000000001D40: 240C0285
	v_add_u32_e32 v5, v6, v5                                   // 000000001D44: 680A0B06
	scratch_store_dword off, v6, off offset:36                 // 000000001D48: DC704024 007F0600
	global_load_dwordx4 v[220:223], v5, s[0:1]                 // 000000001D50: DC5C8000 DC000005
	global_load_dwordx4 v[224:227], v5, s[0:1] offset:16       // 000000001D58: DC5C8010 E0000005
	global_load_dwordx4 v[200:203], v5, s[0:1] offset:64       // 000000001D60: DC5C8040 C8000005
	global_load_dwordx4 v[204:207], v5, s[0:1] offset:80       // 000000001D68: DC5C8050 CC000005
	s_mov_b32 m0, s88                                          // 000000001D70: BEFC0058
	s_or_b32 s0, s88, 0x10000                                  // 000000001D74: 8700FF58 00010000
	buffer_load_dwordx4 v233, s[28:31], 0 offen lds            // 000000001D7C: E05D1000 800700E9
	s_or_b32 m0, s88, 0x2000                                   // 000000001D84: 877CFF58 00002000
	s_nop 0                                                    // 000000001D8C: BF800000
	buffer_load_dwordx4 v234, s[28:31], 0 offen lds            // 000000001D90: E05D1000 800700EA
	s_mov_b32 m0, s0                                           // 000000001D98: BEFC0000
	s_nop 0                                                    // 000000001D9C: BF800000
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 000000001DA0: E05D1000 801400EB
	s_or_b32 m0, s88, 0x12000                                  // 000000001DA8: 877CFF58 00012000
	s_cmp_lt_u32 s96, 2                                        // 000000001DB0: BF0A8260
	buffer_load_dwordx4 v236, s[80:83], 0 offen lds            // 000000001DB4: E05D1000 801400EC
	s_cbranch_scc1 10                                          // 000000001DBC: BF85000A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2e8>
	s_add_u32 m0, s0, 0xffff4000                               // 000000001DC0: 807CFF00 FFFF4000
	s_nop 0                                                    // 000000001DC8: BF800000
	buffer_load_dwordx4 v233, s[28:31], s33 offen lds          // 000000001DCC: E05D1000 210700E9
	s_add_u32 m0, s0, 0xffff6000                               // 000000001DD4: 807CFF00 FFFF6000
	s_nop 0                                                    // 000000001DDC: BF800000
	buffer_load_dwordx4 v234, s[28:31], s33 offen lds          // 000000001DE0: E05D1000 210700EA
	v_and_b32_e32 v5, 63, v0                                   // 000000001DE8: 260A00BF
	s_waitcnt vmcnt(0)                                         // 000000001DEC: BF8C0F70
	s_barrier                                                  // 000000001DF0: BF8A0000
	s_cmp_eq_u32 s21, 0                                        // 000000001DF4: BF068015
	s_mov_b32 s16, 0                                           // 000000001DF8: BE900080
	s_cbranch_scc1 1                                           // 000000001DFC: BF850001 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x304>
	s_barrier                                                  // 000000001E00: BF8A0000
	s_add_u32 s0, s42, s74                                     // 000000001E04: 80004A2A
	s_mul_i32 s23, s6, s11                                     // 000000001E08: 92170B06
	s_addc_u32 s1, s43, s75                                    // 000000001E0C: 82014B2B
	s_mul_i32 s10, s6, s12                                     // 000000001E10: 920A0C06
	s_add_u32 s0, s0, s23                                      // 000000001E14: 80001700
	s_addc_u32 s1, s1, 0                                       // 000000001E18: 82018001
	v_writelane_b32 v255, s10, 2                               // 000000001E1C: D28A00FF 0001040A
	s_add_u32 s10, s69, s10                                    // 000000001E24: 800A0A45
	v_mul_f32_e32 v238, s49, v3                                // 000000001E28: 0BDC0631
	v_mul_f32_e32 v239, s48, v3                                // 000000001E2C: 0BDE0630
	v_mov_b32_e32 v3, s17                                      // 000000001E30: 7E060211
	s_lshl_b32 s10, s10, 2                                     // 000000001E34: 8E0A820A
	v_mul_f32_e32 v241, s15, v3                                // 000000001E38: 0BE2060F
	s_add_u32 s15, s44, s10                                    // 000000001E3C: 800F0A2C
	s_addc_u32 s18, s45, 0                                     // 000000001E40: 8212802D
	s_cmp_eq_u64 s[44:45], 0                                   // 000000001E44: BF12802C
	s_cselect_b64 s[10:11], -1, 0                              // 000000001E48: 858A80C1
	v_writelane_b32 v255, s10, 3                               // 000000001E4C: D28A00FF 0001060A
	v_lshrrev_b32_e32 v217, 4, v5                              // 000000001E54: 21B20A84
	v_lshlrev_b32_e32 v6, 3, v0                                // 000000001E58: 240C0083
	v_writelane_b32 v255, s11, 4                               // 000000001E5C: D28A00FF 0001080B
	s_and_b64 s[10:11], s[10:11], exec                         // 000000001E64: 868A7E0A
	s_cselect_b32 s19, 0, s18                                  // 000000001E68: 85131280
	s_cselect_b32 s18, 0, s15                                  // 000000001E6C: 85120F80
	s_lshl_b32 s10, s8, 9                                      // 000000001E70: 8E0A8908
	s_lshr_b32 s79, s3, 7                                      // 000000001E74: 8F4F8703
	v_writelane_b32 v255, s10, 5                               // 000000001E78: D28A00FF 00010A0A
	s_lshl_b32 s10, s8, 8                                      // 000000001E80: 8E0A8808
	v_writelane_b32 v255, s10, 6                               // 000000001E84: D28A00FF 00010C0A
	s_add_u32 s10, s36, s22                                    // 000000001E8C: 800A1624
	v_writelane_b32 v255, s10, 7                               // 000000001E90: D28A00FF 00010E0A
	s_addc_u32 s10, s37, 0                                     // 000000001E98: 820A8025
	v_and_b32_e32 v7, 15, v0                                   // 000000001E9C: 260E008F
	v_lshl_or_b32 v0, v0, 1, v217                              // 000000001EA0: D2000000 07650300
	v_writelane_b32 v255, s10, 8                               // 000000001EA8: D28A00FF 0001100A
	s_add_u32 s10, s42, s23                                    // 000000001EB0: 800A172A
	v_and_b32_e32 v0, 0x41, v0                                 // 000000001EB4: 260000FF 00000041
	v_writelane_b32 v255, s10, 9                               // 000000001EBC: D28A00FF 0001120A
	s_addc_u32 s10, s43, 0                                     // 000000001EC4: 820A802B
	v_lshlrev_b32_e32 v245, 7, v0                              // 000000001EC8: 25EA0087
	s_cmp_eq_u32 s21, 0                                        // 000000001ECC: BF068015
	v_and_b32_e32 v244, 0x78, v6                               // 000000001ED0: 27E80CFF 00000078
	v_xor_b32_e32 v3, v1, v7                                   // 000000001ED8: 2A060F01
	v_or_b32_e32 v0, 0x1c000, v245                             // 000000001EDC: 2801EAFF 0001C000
	v_writelane_b32 v255, s10, 10                              // 000000001EE4: D28A00FF 0001140A
	s_cselect_b64 s[10:11], -1, 0                              // 000000001EEC: 858A80C1
	s_lshl_b32 s20, s20, 13                                    // 000000001EF0: 8E148D14
	s_mov_b32 s17, 0x20000                                     // 000000001EF4: BE9100FF 00020000
	v_lshlrev_b32_e32 v3, 4, v3                                // 000000001EFC: 24060684
	v_add_u32_e32 v249, v0, v244                               // 000000001F00: 69F3E900
	v_lshl_or_b32 v0, v216, 8, s20                             // 000000001F04: D2000000 005111D8
	v_xor_b32_e32 v2, v217, v2                                 // 000000001F0C: 2A0405D9
	v_or3_b32 v228, v0, v3, s17                                // 000000001F10: D20200E4 00460700
	v_and_b32_e32 v4, 4, v4                                    // 000000001F18: 26080884
	v_and_b32_e32 v2, 1, v2                                    // 000000001F1C: 26040481
	v_xor_b32_e32 v0, 0x60, v228                               // 000000001F20: 2A01C8FF 00000060
	v_sub_u32_e32 v243, v216, v4                               // 000000001F28: 6BE609D8
	v_xor_b32_e32 v4, v217, v7                                 // 000000001F2C: 2A080FD9
	v_cmp_eq_u32_e32 vcc, 0, v2                                // 000000001F30: 7D940480
	v_or_b32_e32 v2, 0x10000, v245                             // 000000001F34: 2805EAFF 00010000
	s_lshl_b32 s21, s8, 5                                      // 000000001F3C: 8E158508
	scratch_store_dword off, v0, off offset:56                 // 000000001F40: DC704038 007F0000
	v_xor_b32_e32 v0, 0x80, v228                               // 000000001F48: 2A01C8FF 00000080
	v_mov_b32_e32 v5, 0x38383838                               // 000000001F50: 7E0A02FF 38383838
	v_lshlrev_b32_e32 v6, 4, v7                                // 000000001F58: 240C0E84
	v_lshlrev_b32_e32 v4, 4, v4                                // 000000001F5C: 24080884
	v_add_u32_e32 v246, v2, v244                               // 000000001F60: 69EDE902
	v_writelane_b32 v255, s21, 11                              // 000000001F64: D28A00FF 00011615
	s_lshl_b32 s21, s8, 6                                      // 000000001F6C: 8E158608
	v_lshl_or_b32 v2, v217, 8, s20                             // 000000001F70: D2000002 005111D9
	scratch_store_dword off, v0, off offset:52                 // 000000001F78: DC704034 007F0000
	v_xor_b32_e32 v0, 0xa0, v228                               // 000000001F80: 2A01C8FF 000000A0
	scratch_store_dword off, v6, off offset:32                 // 000000001F88: DC704020 007F0600
	v_cndmask_b32_e32 v192, 0, v5, vcc                         // 000000001F90: 01800A80
	v_or_b32_e32 v5, 0x14000, v245                             // 000000001F94: 280BEAFF 00014000
	v_or_b32_e32 v6, 0x18000, v245                             // 000000001F9C: 280DEAFF 00018000
	v_writelane_b32 v255, s21, 12                              // 000000001FA4: D28A00FF 00011815
	s_lshl_b32 s20, s8, 2                                      // 000000001FAC: 8E148208
	v_or3_b32 v219, v2, v4, s17                                // 000000001FB0: D20200DB 00460902
	scratch_store_dword off, v0, off offset:48                 // 000000001FB8: DC704030 007F0000
	v_xor_b32_e32 v0, 0xc0, v228                               // 000000001FC0: 2A01C8FF 000000C0
	s_mov_b32 s49, 0x1c000                                     // 000000001FC8: BEB100FF 0001C000
	s_mov_b32 s92, 0x10000                                     // 000000001FD0: BEDC00FF 00010000
	s_mov_b32 s93, 0x14000                                     // 000000001FD8: BEDD00FF 00014000
	s_mov_b32 s97, 0x18000                                     // 000000001FE0: BEE100FF 00018000
	s_mov_b32 s98, 0xc2fe0000                                  // 000000001FE8: BEE200FF C2FE0000
	s_mov_b32 s99, 0xc1000000                                  // 000000001FF0: BEE300FF C1000000
	v_mov_b32_e32 v240, 0xff800000                             // 000000001FF8: 7FE002FF FF800000
	s_mov_b32 s94, 0x12000                                     // 000000002000: BEDE00FF 00012000
	s_movk_i32 s95, 0x2000                                     // 000000002008: B05F2000
	s_mov_b32 s48, 0x1a000                                     // 00000000200C: BEB000FF 0001A000
	v_mov_b32_e32 v242, 0x7f                                   // 000000002014: 7FE402FF 0000007F
	s_mov_b32 s89, 0x3e000000                                  // 00000000201C: BED900FF 3E000000
	s_movk_i32 s90, 0x4000                                     // 000000002024: B05A4000
	s_movk_i32 s91, 0x6000                                     // 000000002028: B05B6000
	s_mov_b32 s34, 0x1e000                                     // 00000000202C: BEA200FF 0001E000
	s_mov_b32 s35, 0x8000                                      // 000000002034: BEA300FF 00008000
	s_mov_b32 s12, 0xa000                                      // 00000000203C: BE8C00FF 0000A000
	s_mov_b32 s13, 0xc000                                      // 000000002044: BE8D00FF 0000C000
	s_mov_b32 s6, 0xe000                                       // 00000000204C: BE8600FF 0000E000
	s_mov_b32 s76, 0x16000                                     // 000000002054: BECC00FF 00016000
	v_mov_b32_e32 v193, v192                                   // 00000000205C: 7F8203C0
	v_mov_b32_e32 v194, v192                                   // 000000002060: 7F8403C0
	v_mov_b32_e32 v195, v192                                   // 000000002064: 7F8603C0
	v_mov_b32_e32 v196, v192                                   // 000000002068: 7F8803C0
	v_mov_b32_e32 v197, v192                                   // 00000000206C: 7F8A03C0
	v_mov_b32_e32 v198, v192                                   // 000000002070: 7F8C03C0
	v_mov_b32_e32 v199, v192                                   // 000000002074: 7F8E03C0
	v_add_u32_e32 v247, v5, v244                               // 000000002078: 69EFE905
	v_add_u32_e32 v248, v6, v244                               // 00000000207C: 69F1E906
	s_lshl_b32 s15, s9, 2                                      // 000000002080: 8E0F8209
	v_writelane_b32 v255, s20, 13                              // 000000002084: D28A00FF 00011A14
	v_xor_b32_e32 v230, 32, v228                               // 00000000208C: 2BCDC8A0
	v_xor_b32_e32 v229, 64, v228                               // 000000002090: 2BCBC8C0
	scratch_store_dword off, v0, off offset:44                 // 000000002094: DC70402C 007F0000
	v_xor_b32_e32 v0, 0xe0, v228                               // 00000000209C: 2A01C8FF 000000E0
	v_xor_b32_e32 v218, 64, v219                               // 0000000020A4: 2BB5B6C0
	v_xor_b32_e32 v237, 0x80, v219                             // 0000000020A8: 2BDBB6FF 00000080
	v_xor_b32_e32 v254, 0xc0, v219                             // 0000000020B0: 2BFDB6FF 000000C0
	s_mov_b32 s52, 0xff800000                                  // 0000000020B8: BEB400FF FF800000
	scratch_store_dword off, v0, off offset:40                 // 0000000020C0: DC704028 007F0000
	s_mov_b32 s78, 0                                           // 0000000020C8: BECE0080
	s_mov_b32 s77, 0                                           // 0000000020CC: BECD0080
	s_mov_b32 s83, s31                                         // 0000000020D0: BED3001F
	s_mov_b32 s43, s31                                         // 0000000020D4: BEAB001F
	s_and_b32 s17, s78, 3                                      // 0000000020D8: 8611834E
	s_lshl_b32 s20, s17, 14                                    // 0000000020DC: 8E148E11
	v_or_b32_e32 v0, s20, v231                                 // 0000000020E0: 2801CE14
	s_waitcnt vmcnt(8)                                         // 0000000020E4: BF8C0F78
	ds_read_b128 v[10:13], v0                                  // 0000000020E8: D9FE0000 0A000000
	ds_read_b128 v[14:17], v0 offset:16                        // 0000000020F0: D9FE0010 0E000000
	ds_read_b128 v[2:5], v0 offset:4096                        // 0000000020F8: D9FE1000 02000000
	ds_read_b128 v[6:9], v0 offset:4112                        // 000000002100: D9FE1010 06000000
	s_mov_b64 s[36:37], s[18:19]                               // 000000002108: BEA40112
	s_cmp_eq_u32 s79, 0                                        // 00000000210C: BF06804F
	s_cbranch_scc1 146                                         // 000000002110: BF850092 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x85c>
	s_setprio 1                                                // 000000002114: BF8F0001
	v_add_u32_e32 v0, s20, v231                                // 000000002118: 6801CE14
	ds_read_b128 v[18:21], v0 offset:8192                      // 00000000211C: D9FE2000 12000000
	ds_read_b128 v[22:25], v0 offset:8208                      // 000000002124: D9FE2010 16000000
	ds_read_b128 v[26:29], v0 offset:12288                     // 00000000212C: D9FE3000 1A000000
	ds_read_b128 v[30:33], v0 offset:12304                     // 000000002134: D9FE3010 1E000000
	s_waitcnt lgkmcnt(4)                                       // 00000000213C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[220:227], 0// 000000002140: D3AE0070 0203B90A
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[220:227], 0// 000000002148: D3AE0060 0203B902
	v_add_u32_e32 v0, s20, v232                                // 000000002150: 6801D014
	ds_read_b128 v[10:13], v0                                  // 000000002154: D9FE0000 0A000000
	ds_read_b128 v[14:17], v0 offset:16                        // 00000000215C: D9FE0010 0E000000
	ds_read_b128 v[2:5], v0 offset:4096                        // 000000002164: D9FE1000 02000000
	ds_read_b128 v[6:9], v0 offset:4112                        // 00000000216C: D9FE1010 06000000
	s_waitcnt lgkmcnt(4)                                       // 000000002174: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[220:227], 0// 000000002178: D3AE0050 0203B912
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[220:227], 0// 000000002180: D3AE0040 0203B91A
	ds_read_b128 v[18:21], v0 offset:8192                      // 000000002188: D9FE2000 12000000
	ds_read_b128 v[22:25], v0 offset:8208                      // 000000002190: D9FE2010 16000000
	ds_read_b128 v[26:29], v0 offset:12288                     // 000000002198: D9FE3000 1A000000
	ds_read_b128 v[30:33], v0 offset:12304                     // 0000000021A0: D9FE3010 1E000000
	s_waitcnt lgkmcnt(4)                                       // 0000000021A8: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[200:207], v[112:127]// 0000000021AC: D3AE0070 05C3910A
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[200:207], v[96:111]// 0000000021B4: D3AE0060 05839102
	s_waitcnt lgkmcnt(0)                                       // 0000000021BC: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[200:207], v[80:95]// 0000000021C0: D3AE0050 05439112
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[200:207], v[64:79]// 0000000021C8: D3AE0040 0503911A
	s_nop 0                                                    // 0000000021D0: BF800000
	v_max_f32_e32 v0, v112, v113                               // 0000000021D4: 1600E370
	v_max3_f32 v0, v114, v115, v0                              // 0000000021D8: D1D30000 0402E772
	v_max3_f32 v0, v116, v117, v0                              // 0000000021E0: D1D30000 0402EB74
	v_max3_f32 v0, v118, v119, v0                              // 0000000021E8: D1D30000 0402EF76
	v_max3_f32 v0, v120, v121, v0                              // 0000000021F0: D1D30000 0402F378
	v_max3_f32 v0, v122, v123, v0                              // 0000000021F8: D1D30000 0402F77A
	v_max3_f32 v0, v124, v125, v0                              // 000000002200: D1D30000 0402FB7C
	v_max3_f32 v1, v126, v127, v0                              // 000000002208: D1D30001 0402FF7E
	v_max_f32_e32 v0, v96, v97                                 // 000000002210: 1600C360
	v_max3_f32 v0, v98, v99, v0                                // 000000002214: D1D30000 0402C762
	v_max3_f32 v0, v100, v101, v0                              // 00000000221C: D1D30000 0402CB64
	v_max3_f32 v0, v102, v103, v0                              // 000000002224: D1D30000 0402CF66
	v_max3_f32 v0, v104, v105, v0                              // 00000000222C: D1D30000 0402D368
	v_max3_f32 v0, v106, v107, v0                              // 000000002234: D1D30000 0402D76A
	v_max3_f32 v0, v108, v109, v0                              // 00000000223C: D1D30000 0402DB6C
	v_max3_f32 v2, v110, v111, v0                              // 000000002244: D1D30002 0402DF6E
	v_max_f32_e32 v0, v80, v81                                 // 00000000224C: 1600A350
	v_max3_f32 v0, v82, v83, v0                                // 000000002250: D1D30000 0402A752
	v_max3_f32 v0, v84, v85, v0                                // 000000002258: D1D30000 0402AB54
	v_max3_f32 v0, v86, v87, v0                                // 000000002260: D1D30000 0402AF56
	v_max3_f32 v0, v88, v89, v0                                // 000000002268: D1D30000 0402B358
	v_max3_f32 v0, v90, v91, v0                                // 000000002270: D1D30000 0402B75A
	v_max3_f32 v0, v92, v93, v0                                // 000000002278: D1D30000 0402BB5C
	v_max3_f32 v0, v94, v95, v0                                // 000000002280: D1D30000 0402BF5E
	v_max_f32_e32 v3, v64, v65                                 // 000000002288: 16068340
	v_max3_f32 v3, v66, v67, v3                                // 00000000228C: D1D30003 040E8742
	v_max3_f32 v3, v68, v69, v3                                // 000000002294: D1D30003 040E8B44
	v_max3_f32 v3, v70, v71, v3                                // 00000000229C: D1D30003 040E8F46
	v_max3_f32 v3, v72, v73, v3                                // 0000000022A4: D1D30003 040E9348
	v_max3_f32 v3, v74, v75, v3                                // 0000000022AC: D1D30003 040E974A
	v_max3_f32 v3, v76, v77, v3                                // 0000000022B4: D1D30003 040E9B4C
	v_max3_f32 v3, v78, v79, v3                                // 0000000022BC: D1D30003 040E9F4E
	v_max_f32_e32 v0, v0, v3                                   // 0000000022C4: 16000700
	v_max_f32_e32 v2, v1, v2                                   // 0000000022C8: 16040501
	v_mov_b32_e32 v3, v2                                       // 0000000022CC: 7E060302
	s_nop 1                                                    // 0000000022D0: BF800001
	v_permlane32_swap_b32_e32 v2, v3                           // 0000000022D4: 7E04B503
	v_mov_b32_e32 v1, v0                                       // 0000000022D8: 7E020300
	s_nop 1                                                    // 0000000022DC: BF800001
	v_permlane32_swap_b32_e32 v0, v1                           // 0000000022E0: 7E00B501
	v_max_f32_e32 v0, v0, v1                                   // 0000000022E4: 16000300
	v_max_f32_e32 v1, v2, v3                                   // 0000000022E8: 16020702
	v_max_f32_e32 v2, v1, v0                                   // 0000000022EC: 16040101
	v_mul_f32_e32 v148, v238, v2                               // 0000000022F0: 0B2805EE
	v_fma_f32 v1, v1, v238, -v148                              // 0000000022F4: D1CB0001 8653DD01
	v_floor_f32_e32 v1, v1                                     // 0000000022FC: 7E023F01
	v_med3_f32 v1, v1, s98, 0                                  // 000000002300: D1D60001 0200C501
	v_cvt_i32_f32_e32 v2, v1                                   // 000000002308: 7E041101
	v_add_u32_e32 v251, 0x7f, v2                               // 00000000230C: 69F604FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v251                           // 000000002314: 2535F697
	v_fma_f32 v0, v0, v238, -v148                              // 000000002318: D1CB0000 8653DD00
	v_floor_f32_e32 v0, v0                                     // 000000002320: 7E003F00
	v_med3_f32 v0, v0, s98, 0                                  // 000000002324: D1D60000 0200C500
	v_cvt_i32_f32_e32 v2, v0                                   // 00000000232C: 7E041100
	v_add_u32_e32 v149, 0x7f, v2                               // 000000002330: 692A04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v149                           // 000000002338: 25372A97
	v_mov_b32_e32 v2, s50                                      // 00000000233C: 7E040232
	v_fma_f32 v2, v148, s99, v2                                // 000000002340: D1CB0002 0408C794
	v_fma_f32 v152, v1, s99, v2                                // 000000002348: D1CB0098 0408C701
	v_fma_f32 v150, v0, s99, v2                                // 000000002350: D1CB0096 0408C700
	s_branch 525                                               // 000000002358: BF82020D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1090>
	s_setprio 1                                                // 00000000235C: BF8F0001
	v_add_u32_e32 v0, s20, v231                                // 000000002360: 6801CE14
	ds_read_b128 v[18:21], v0 offset:8192                      // 000000002364: D9FE2000 12000000
	ds_read_b128 v[22:25], v0 offset:8208                      // 00000000236C: D9FE2010 16000000
	ds_read_b128 v[26:29], v0 offset:12288                     // 000000002374: D9FE3000 1A000000
	ds_read_b128 v[30:33], v0 offset:12304                     // 00000000237C: D9FE3010 1E000000
	s_waitcnt lgkmcnt(4)                                       // 000000002384: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[220:227], 0// 000000002388: D3AE0070 0203B90A
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[220:227], 0// 000000002390: D3AE0060 0203B902
	v_add_u32_e32 v0, s20, v232                                // 000000002398: 6801D014
	ds_read_b128 v[10:13], v0                                  // 00000000239C: D9FE0000 0A000000
	ds_read_b128 v[14:17], v0 offset:16                        // 0000000023A4: D9FE0010 0E000000
	ds_read_b128 v[2:5], v0 offset:4096                        // 0000000023AC: D9FE1000 02000000
	ds_read_b128 v[6:9], v0 offset:4112                        // 0000000023B4: D9FE1010 06000000
	s_waitcnt lgkmcnt(4)                                       // 0000000023BC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[220:227], 0// 0000000023C0: D3AE0050 0203B912
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[220:227], 0// 0000000023C8: D3AE0040 0203B91A
	ds_read_b128 v[18:21], v0 offset:8192                      // 0000000023D0: D9FE2000 12000000
	ds_read_b128 v[22:25], v0 offset:8208                      // 0000000023D8: D9FE2010 16000000
	ds_read_b128 v[26:29], v0 offset:12288                     // 0000000023E0: D9FE3000 1A000000
	ds_read_b128 v[30:33], v0 offset:12304                     // 0000000023E8: D9FE3010 1E000000
	s_waitcnt lgkmcnt(4)                                       // 0000000023F0: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[200:207], v[112:127]// 0000000023F4: D3AE0070 05C3910A
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[200:207], v[96:111]// 0000000023FC: D3AE0060 05839102
	s_waitcnt lgkmcnt(0)                                       // 000000002404: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[200:207], v[80:95]// 000000002408: D3AE0050 05439112
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[200:207], v[64:79]// 000000002410: D3AE0040 0503911A
	s_sub_u32 s18, s3, s16                                     // 000000002418: 80921003
	s_sub_i32 s18, s18, 0                                      // 00000000241C: 81928012
	s_cmp_ge_i32 s18, 32                                       // 000000002420: BF03A012
	s_cbranch_scc1 91                                          // 000000002424: BF85005B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa94>
	s_cmp_lt_i32 s18, 0                                        // 000000002428: BF048012
	s_cbranch_scc1 66                                          // 00000000242C: BF850042 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa38>
	v_add_u32_e32 v0, s18, v243                                // 000000002430: 6801E612
	v_cmp_gt_i32_e32 vcc, 0, v0                                // 000000002434: 7D880080
	s_nop 4                                                    // 000000002438: BF800004
	v_cndmask_b32_e64 v112, v112, v240, vcc                    // 00000000243C: D1000070 01ABE170
	v_cmp_gt_i32_e32 vcc, 1, v0                                // 000000002444: 7D880081
	s_nop 1                                                    // 000000002448: BF800001
	v_cndmask_b32_e64 v113, v113, v240, vcc                    // 00000000244C: D1000071 01ABE171
	v_cmp_gt_i32_e32 vcc, 2, v0                                // 000000002454: 7D880082
	s_nop 1                                                    // 000000002458: BF800001
	v_cndmask_b32_e64 v114, v114, v240, vcc                    // 00000000245C: D1000072 01ABE172
	v_cmp_gt_i32_e32 vcc, 3, v0                                // 000000002464: 7D880083
	s_nop 1                                                    // 000000002468: BF800001
	v_cndmask_b32_e64 v115, v115, v240, vcc                    // 00000000246C: D1000073 01ABE173
	v_cmp_gt_i32_e32 vcc, 8, v0                                // 000000002474: 7D880088
	s_nop 1                                                    // 000000002478: BF800001
	v_cndmask_b32_e64 v116, v116, v240, vcc                    // 00000000247C: D1000074 01ABE174
	v_cmp_gt_i32_e32 vcc, 9, v0                                // 000000002484: 7D880089
	s_nop 1                                                    // 000000002488: BF800001
	v_cndmask_b32_e64 v117, v117, v240, vcc                    // 00000000248C: D1000075 01ABE175
	v_cmp_gt_i32_e32 vcc, 10, v0                               // 000000002494: 7D88008A
	s_nop 1                                                    // 000000002498: BF800001
	v_cndmask_b32_e64 v118, v118, v240, vcc                    // 00000000249C: D1000076 01ABE176
	v_cmp_gt_i32_e32 vcc, 11, v0                               // 0000000024A4: 7D88008B
	s_nop 1                                                    // 0000000024A8: BF800001
	v_cndmask_b32_e64 v119, v119, v240, vcc                    // 0000000024AC: D1000077 01ABE177
	v_cmp_gt_i32_e32 vcc, 16, v0                               // 0000000024B4: 7D880090
	s_nop 1                                                    // 0000000024B8: BF800001
	v_cndmask_b32_e64 v120, v120, v240, vcc                    // 0000000024BC: D1000078 01ABE178
	v_cmp_gt_i32_e32 vcc, 17, v0                               // 0000000024C4: 7D880091
	s_nop 1                                                    // 0000000024C8: BF800001
	v_cndmask_b32_e64 v121, v121, v240, vcc                    // 0000000024CC: D1000079 01ABE179
	v_cmp_gt_i32_e32 vcc, 18, v0                               // 0000000024D4: 7D880092
	s_nop 1                                                    // 0000000024D8: BF800001
	v_cndmask_b32_e64 v122, v122, v240, vcc                    // 0000000024DC: D100007A 01ABE17A
	v_cmp_gt_i32_e32 vcc, 19, v0                               // 0000000024E4: 7D880093
	s_nop 1                                                    // 0000000024E8: BF800001
	v_cndmask_b32_e64 v123, v123, v240, vcc                    // 0000000024EC: D100007B 01ABE17B
	v_cmp_gt_i32_e32 vcc, 24, v0                               // 0000000024F4: 7D880098
	s_nop 1                                                    // 0000000024F8: BF800001
	v_cndmask_b32_e64 v124, v124, v240, vcc                    // 0000000024FC: D100007C 01ABE17C
	v_cmp_gt_i32_e32 vcc, 25, v0                               // 000000002504: 7D880099
	s_nop 1                                                    // 000000002508: BF800001
	v_cndmask_b32_e64 v125, v125, v240, vcc                    // 00000000250C: D100007D 01ABE17D
	v_cmp_gt_i32_e32 vcc, 26, v0                               // 000000002514: 7D88009A
	s_nop 1                                                    // 000000002518: BF800001
	v_cndmask_b32_e64 v126, v126, v240, vcc                    // 00000000251C: D100007E 01ABE17E
	v_cmp_gt_i32_e32 vcc, 27, v0                               // 000000002524: 7D88009B
	s_nop 1                                                    // 000000002528: BF800001
	v_cndmask_b32_e64 v127, v127, v240, vcc                    // 00000000252C: D100007F 01ABE17F
	s_branch 23                                                // 000000002534: BF820017 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa94>
	s_mov_b32 s53, s52                                         // 000000002538: BEB50034
	s_mov_b32 s54, s52                                         // 00000000253C: BEB60034
	s_mov_b32 s55, s52                                         // 000000002540: BEB70034
	s_mov_b32 s56, s52                                         // 000000002544: BEB80034
	s_mov_b32 s57, s52                                         // 000000002548: BEB90034
	s_mov_b32 s58, s52                                         // 00000000254C: BEBA0034
	s_mov_b32 s59, s52                                         // 000000002550: BEBB0034
	s_mov_b32 s60, s52                                         // 000000002554: BEBC0034
	s_mov_b32 s61, s52                                         // 000000002558: BEBD0034
	s_mov_b32 s62, s52                                         // 00000000255C: BEBE0034
	s_mov_b32 s63, s52                                         // 000000002560: BEBF0034
	s_mov_b32 s64, s52                                         // 000000002564: BEC00034
	s_mov_b32 s65, s52                                         // 000000002568: BEC10034
	s_mov_b32 s66, s52                                         // 00000000256C: BEC20034
	s_mov_b32 s67, s52                                         // 000000002570: BEC30034
	v_mov_b64_e32 v[126:127], s[66:67]                         // 000000002574: 7EFC7042
	v_mov_b64_e32 v[124:125], s[64:65]                         // 000000002578: 7EF87040
	v_mov_b64_e32 v[122:123], s[62:63]                         // 00000000257C: 7EF4703E
	v_mov_b64_e32 v[120:121], s[60:61]                         // 000000002580: 7EF0703C
	v_mov_b64_e32 v[118:119], s[58:59]                         // 000000002584: 7EEC703A
	v_mov_b64_e32 v[116:117], s[56:57]                         // 000000002588: 7EE87038
	v_mov_b64_e32 v[114:115], s[54:55]                         // 00000000258C: 7EE47036
	v_mov_b64_e32 v[112:113], s[52:53]                         // 000000002590: 7EE07034
	s_sub_u32 s18, s3, s16                                     // 000000002594: 80921003
	s_sub_i32 s18, s18, 32                                     // 000000002598: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 00000000259C: BF03A012
	s_cbranch_scc1 91                                          // 0000000025A0: BF85005B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc10>
	s_cmp_lt_i32 s18, 0                                        // 0000000025A4: BF048012
	s_cbranch_scc1 66                                          // 0000000025A8: BF850042 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xbb4>
	v_add_u32_e32 v0, s18, v243                                // 0000000025AC: 6801E612
	v_cmp_gt_i32_e32 vcc, 0, v0                                // 0000000025B0: 7D880080
	s_nop 3                                                    // 0000000025B4: BF800003
	v_cndmask_b32_e64 v96, v96, v240, vcc                      // 0000000025B8: D1000060 01ABE160
	v_cmp_gt_i32_e32 vcc, 1, v0                                // 0000000025C0: 7D880081
	s_nop 1                                                    // 0000000025C4: BF800001
	v_cndmask_b32_e64 v97, v97, v240, vcc                      // 0000000025C8: D1000061 01ABE161
	v_cmp_gt_i32_e32 vcc, 2, v0                                // 0000000025D0: 7D880082
	s_nop 1                                                    // 0000000025D4: BF800001
	v_cndmask_b32_e64 v98, v98, v240, vcc                      // 0000000025D8: D1000062 01ABE162
	v_cmp_gt_i32_e32 vcc, 3, v0                                // 0000000025E0: 7D880083
	s_nop 1                                                    // 0000000025E4: BF800001
	v_cndmask_b32_e64 v99, v99, v240, vcc                      // 0000000025E8: D1000063 01ABE163
	v_cmp_gt_i32_e32 vcc, 8, v0                                // 0000000025F0: 7D880088
	s_nop 1                                                    // 0000000025F4: BF800001
	v_cndmask_b32_e64 v100, v100, v240, vcc                    // 0000000025F8: D1000064 01ABE164
	v_cmp_gt_i32_e32 vcc, 9, v0                                // 000000002600: 7D880089
	s_nop 1                                                    // 000000002604: BF800001
	v_cndmask_b32_e64 v101, v101, v240, vcc                    // 000000002608: D1000065 01ABE165
	v_cmp_gt_i32_e32 vcc, 10, v0                               // 000000002610: 7D88008A
	s_nop 1                                                    // 000000002614: BF800001
	v_cndmask_b32_e64 v102, v102, v240, vcc                    // 000000002618: D1000066 01ABE166
	v_cmp_gt_i32_e32 vcc, 11, v0                               // 000000002620: 7D88008B
	s_nop 1                                                    // 000000002624: BF800001
	v_cndmask_b32_e64 v103, v103, v240, vcc                    // 000000002628: D1000067 01ABE167
	v_cmp_gt_i32_e32 vcc, 16, v0                               // 000000002630: 7D880090
	s_nop 1                                                    // 000000002634: BF800001
	v_cndmask_b32_e64 v104, v104, v240, vcc                    // 000000002638: D1000068 01ABE168
	v_cmp_gt_i32_e32 vcc, 17, v0                               // 000000002640: 7D880091
	s_nop 1                                                    // 000000002644: BF800001
	v_cndmask_b32_e64 v105, v105, v240, vcc                    // 000000002648: D1000069 01ABE169
	v_cmp_gt_i32_e32 vcc, 18, v0                               // 000000002650: 7D880092
	s_nop 1                                                    // 000000002654: BF800001
	v_cndmask_b32_e64 v106, v106, v240, vcc                    // 000000002658: D100006A 01ABE16A
	v_cmp_gt_i32_e32 vcc, 19, v0                               // 000000002660: 7D880093
	s_nop 1                                                    // 000000002664: BF800001
	v_cndmask_b32_e64 v107, v107, v240, vcc                    // 000000002668: D100006B 01ABE16B
	v_cmp_gt_i32_e32 vcc, 24, v0                               // 000000002670: 7D880098
	s_nop 1                                                    // 000000002674: BF800001
	v_cndmask_b32_e64 v108, v108, v240, vcc                    // 000000002678: D100006C 01ABE16C
	v_cmp_gt_i32_e32 vcc, 25, v0                               // 000000002680: 7D880099
	s_nop 1                                                    // 000000002684: BF800001
	v_cndmask_b32_e64 v109, v109, v240, vcc                    // 000000002688: D100006D 01ABE16D
	v_cmp_gt_i32_e32 vcc, 26, v0                               // 000000002690: 7D88009A
	s_nop 1                                                    // 000000002694: BF800001
	v_cndmask_b32_e64 v110, v110, v240, vcc                    // 000000002698: D100006E 01ABE16E
	v_cmp_gt_i32_e32 vcc, 27, v0                               // 0000000026A0: 7D88009B
	s_nop 1                                                    // 0000000026A4: BF800001
	v_cndmask_b32_e64 v111, v111, v240, vcc                    // 0000000026A8: D100006F 01ABE16F
	s_branch 23                                                // 0000000026B0: BF820017 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc10>
	s_mov_b32 s53, s52                                         // 0000000026B4: BEB50034
	s_mov_b32 s54, s52                                         // 0000000026B8: BEB60034
	s_mov_b32 s55, s52                                         // 0000000026BC: BEB70034
	s_mov_b32 s56, s52                                         // 0000000026C0: BEB80034
	s_mov_b32 s57, s52                                         // 0000000026C4: BEB90034
	s_mov_b32 s58, s52                                         // 0000000026C8: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000026CC: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000026D0: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000026D4: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000026D8: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000026DC: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000026E0: BEC00034
	s_mov_b32 s65, s52                                         // 0000000026E4: BEC10034
	s_mov_b32 s66, s52                                         // 0000000026E8: BEC20034
	s_mov_b32 s67, s52                                         // 0000000026EC: BEC30034
	v_mov_b64_e32 v[110:111], s[66:67]                         // 0000000026F0: 7EDC7042
	v_mov_b64_e32 v[108:109], s[64:65]                         // 0000000026F4: 7ED87040
	v_mov_b64_e32 v[106:107], s[62:63]                         // 0000000026F8: 7ED4703E
	v_mov_b64_e32 v[104:105], s[60:61]                         // 0000000026FC: 7ED0703C
	v_mov_b64_e32 v[102:103], s[58:59]                         // 000000002700: 7ECC703A
	v_mov_b64_e32 v[100:101], s[56:57]                         // 000000002704: 7EC87038
	v_mov_b64_e32 v[98:99], s[54:55]                           // 000000002708: 7EC47036
	v_mov_b64_e32 v[96:97], s[52:53]                           // 00000000270C: 7EC07034
	s_sub_u32 s18, s3, s16                                     // 000000002710: 80921003
	s_sub_i32 s18, s18, 64                                     // 000000002714: 8192C012
	s_cmp_ge_i32 s18, 32                                       // 000000002718: BF03A012
	s_cbranch_scc1 91                                          // 00000000271C: BF85005B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd8c>
	s_cmp_lt_i32 s18, 0                                        // 000000002720: BF048012
	s_cbranch_scc1 66                                          // 000000002724: BF850042 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd30>
	v_add_u32_e32 v0, s18, v243                                // 000000002728: 6801E612
	v_cmp_gt_i32_e32 vcc, 0, v0                                // 00000000272C: 7D880080
	s_nop 3                                                    // 000000002730: BF800003
	v_cndmask_b32_e64 v80, v80, v240, vcc                      // 000000002734: D1000050 01ABE150
	v_cmp_gt_i32_e32 vcc, 1, v0                                // 00000000273C: 7D880081
	s_nop 1                                                    // 000000002740: BF800001
	v_cndmask_b32_e64 v81, v81, v240, vcc                      // 000000002744: D1000051 01ABE151
	v_cmp_gt_i32_e32 vcc, 2, v0                                // 00000000274C: 7D880082
	s_nop 1                                                    // 000000002750: BF800001
	v_cndmask_b32_e64 v82, v82, v240, vcc                      // 000000002754: D1000052 01ABE152
	v_cmp_gt_i32_e32 vcc, 3, v0                                // 00000000275C: 7D880083
	s_nop 1                                                    // 000000002760: BF800001
	v_cndmask_b32_e64 v83, v83, v240, vcc                      // 000000002764: D1000053 01ABE153
	v_cmp_gt_i32_e32 vcc, 8, v0                                // 00000000276C: 7D880088
	s_nop 1                                                    // 000000002770: BF800001
	v_cndmask_b32_e64 v84, v84, v240, vcc                      // 000000002774: D1000054 01ABE154
	v_cmp_gt_i32_e32 vcc, 9, v0                                // 00000000277C: 7D880089
	s_nop 1                                                    // 000000002780: BF800001
	v_cndmask_b32_e64 v85, v85, v240, vcc                      // 000000002784: D1000055 01ABE155
	v_cmp_gt_i32_e32 vcc, 10, v0                               // 00000000278C: 7D88008A
	s_nop 1                                                    // 000000002790: BF800001
	v_cndmask_b32_e64 v86, v86, v240, vcc                      // 000000002794: D1000056 01ABE156
	v_cmp_gt_i32_e32 vcc, 11, v0                               // 00000000279C: 7D88008B
	s_nop 1                                                    // 0000000027A0: BF800001
	v_cndmask_b32_e64 v87, v87, v240, vcc                      // 0000000027A4: D1000057 01ABE157
	v_cmp_gt_i32_e32 vcc, 16, v0                               // 0000000027AC: 7D880090
	s_nop 1                                                    // 0000000027B0: BF800001
	v_cndmask_b32_e64 v88, v88, v240, vcc                      // 0000000027B4: D1000058 01ABE158
	v_cmp_gt_i32_e32 vcc, 17, v0                               // 0000000027BC: 7D880091
	s_nop 1                                                    // 0000000027C0: BF800001
	v_cndmask_b32_e64 v89, v89, v240, vcc                      // 0000000027C4: D1000059 01ABE159
	v_cmp_gt_i32_e32 vcc, 18, v0                               // 0000000027CC: 7D880092
	s_nop 1                                                    // 0000000027D0: BF800001
	v_cndmask_b32_e64 v90, v90, v240, vcc                      // 0000000027D4: D100005A 01ABE15A
	v_cmp_gt_i32_e32 vcc, 19, v0                               // 0000000027DC: 7D880093
	s_nop 1                                                    // 0000000027E0: BF800001
	v_cndmask_b32_e64 v91, v91, v240, vcc                      // 0000000027E4: D100005B 01ABE15B
	v_cmp_gt_i32_e32 vcc, 24, v0                               // 0000000027EC: 7D880098
	s_nop 1                                                    // 0000000027F0: BF800001
	v_cndmask_b32_e64 v92, v92, v240, vcc                      // 0000000027F4: D100005C 01ABE15C
	v_cmp_gt_i32_e32 vcc, 25, v0                               // 0000000027FC: 7D880099
	s_nop 1                                                    // 000000002800: BF800001
	v_cndmask_b32_e64 v93, v93, v240, vcc                      // 000000002804: D100005D 01ABE15D
	v_cmp_gt_i32_e32 vcc, 26, v0                               // 00000000280C: 7D88009A
	s_nop 1                                                    // 000000002810: BF800001
	v_cndmask_b32_e64 v94, v94, v240, vcc                      // 000000002814: D100005E 01ABE15E
	v_cmp_gt_i32_e32 vcc, 27, v0                               // 00000000281C: 7D88009B
	s_nop 1                                                    // 000000002820: BF800001
	v_cndmask_b32_e64 v95, v95, v240, vcc                      // 000000002824: D100005F 01ABE15F
	s_branch 23                                                // 00000000282C: BF820017 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd8c>
	s_mov_b32 s53, s52                                         // 000000002830: BEB50034
	s_mov_b32 s54, s52                                         // 000000002834: BEB60034
	s_mov_b32 s55, s52                                         // 000000002838: BEB70034
	s_mov_b32 s56, s52                                         // 00000000283C: BEB80034
	s_mov_b32 s57, s52                                         // 000000002840: BEB90034
	s_mov_b32 s58, s52                                         // 000000002844: BEBA0034
	s_mov_b32 s59, s52                                         // 000000002848: BEBB0034
	s_mov_b32 s60, s52                                         // 00000000284C: BEBC0034
	s_mov_b32 s61, s52                                         // 000000002850: BEBD0034
	s_mov_b32 s62, s52                                         // 000000002854: BEBE0034
	s_mov_b32 s63, s52                                         // 000000002858: BEBF0034
	s_mov_b32 s64, s52                                         // 00000000285C: BEC00034
	s_mov_b32 s65, s52                                         // 000000002860: BEC10034
	s_mov_b32 s66, s52                                         // 000000002864: BEC20034
	s_mov_b32 s67, s52                                         // 000000002868: BEC30034
	v_mov_b64_e32 v[94:95], s[66:67]                           // 00000000286C: 7EBC7042
	v_mov_b64_e32 v[92:93], s[64:65]                           // 000000002870: 7EB87040
	v_mov_b64_e32 v[90:91], s[62:63]                           // 000000002874: 7EB4703E
	v_mov_b64_e32 v[88:89], s[60:61]                           // 000000002878: 7EB0703C
	v_mov_b64_e32 v[86:87], s[58:59]                           // 00000000287C: 7EAC703A
	v_mov_b64_e32 v[84:85], s[56:57]                           // 000000002880: 7EA87038
	v_mov_b64_e32 v[82:83], s[54:55]                           // 000000002884: 7EA47036
	v_mov_b64_e32 v[80:81], s[52:53]                           // 000000002888: 7EA07034
	s_sub_u32 s18, s3, s16                                     // 00000000288C: 80921003
	s_sub_i32 s18, s18, 0x60                                   // 000000002890: 8192FF12 00000060
	s_cmp_ge_i32 s18, 32                                       // 000000002898: BF03A012
	s_cbranch_scc1 91                                          // 00000000289C: BF85005B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf0c>
	s_cmp_lt_i32 s18, 0                                        // 0000000028A0: BF048012
	s_cbranch_scc1 66                                          // 0000000028A4: BF850042 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xeb0>
	v_add_u32_e32 v0, s18, v243                                // 0000000028A8: 6801E612
	v_cmp_gt_i32_e32 vcc, 0, v0                                // 0000000028AC: 7D880080
	s_nop 7                                                    // 0000000028B0: BF800007
	v_cndmask_b32_e64 v64, v64, v240, vcc                      // 0000000028B4: D1000040 01ABE140
	v_cmp_gt_i32_e32 vcc, 1, v0                                // 0000000028BC: 7D880081
	s_nop 1                                                    // 0000000028C0: BF800001
	v_cndmask_b32_e64 v65, v65, v240, vcc                      // 0000000028C4: D1000041 01ABE141
	v_cmp_gt_i32_e32 vcc, 2, v0                                // 0000000028CC: 7D880082
	s_nop 1                                                    // 0000000028D0: BF800001
	v_cndmask_b32_e64 v66, v66, v240, vcc                      // 0000000028D4: D1000042 01ABE142
	v_cmp_gt_i32_e32 vcc, 3, v0                                // 0000000028DC: 7D880083
	s_nop 1                                                    // 0000000028E0: BF800001
	v_cndmask_b32_e64 v67, v67, v240, vcc                      // 0000000028E4: D1000043 01ABE143
	v_cmp_gt_i32_e32 vcc, 8, v0                                // 0000000028EC: 7D880088
	s_nop 1                                                    // 0000000028F0: BF800001
	v_cndmask_b32_e64 v68, v68, v240, vcc                      // 0000000028F4: D1000044 01ABE144
	v_cmp_gt_i32_e32 vcc, 9, v0                                // 0000000028FC: 7D880089
	s_nop 1                                                    // 000000002900: BF800001
	v_cndmask_b32_e64 v69, v69, v240, vcc                      // 000000002904: D1000045 01ABE145
	v_cmp_gt_i32_e32 vcc, 10, v0                               // 00000000290C: 7D88008A
	s_nop 1                                                    // 000000002910: BF800001
	v_cndmask_b32_e64 v70, v70, v240, vcc                      // 000000002914: D1000046 01ABE146
	v_cmp_gt_i32_e32 vcc, 11, v0                               // 00000000291C: 7D88008B
	s_nop 1                                                    // 000000002920: BF800001
	v_cndmask_b32_e64 v71, v71, v240, vcc                      // 000000002924: D1000047 01ABE147
	v_cmp_gt_i32_e32 vcc, 16, v0                               // 00000000292C: 7D880090
	s_nop 1                                                    // 000000002930: BF800001
	v_cndmask_b32_e64 v72, v72, v240, vcc                      // 000000002934: D1000048 01ABE148
	v_cmp_gt_i32_e32 vcc, 17, v0                               // 00000000293C: 7D880091
	s_nop 1                                                    // 000000002940: BF800001
	v_cndmask_b32_e64 v73, v73, v240, vcc                      // 000000002944: D1000049 01ABE149
	v_cmp_gt_i32_e32 vcc, 18, v0                               // 00000000294C: 7D880092
	s_nop 1                                                    // 000000002950: BF800001
	v_cndmask_b32_e64 v74, v74, v240, vcc                      // 000000002954: D100004A 01ABE14A
	v_cmp_gt_i32_e32 vcc, 19, v0                               // 00000000295C: 7D880093
	s_nop 1                                                    // 000000002960: BF800001
	v_cndmask_b32_e64 v75, v75, v240, vcc                      // 000000002964: D100004B 01ABE14B
	v_cmp_gt_i32_e32 vcc, 24, v0                               // 00000000296C: 7D880098
	s_nop 1                                                    // 000000002970: BF800001
	v_cndmask_b32_e64 v76, v76, v240, vcc                      // 000000002974: D100004C 01ABE14C
	v_cmp_gt_i32_e32 vcc, 25, v0                               // 00000000297C: 7D880099
	s_nop 1                                                    // 000000002980: BF800001
	v_cndmask_b32_e64 v77, v77, v240, vcc                      // 000000002984: D100004D 01ABE14D
	v_cmp_gt_i32_e32 vcc, 26, v0                               // 00000000298C: 7D88009A
	s_nop 1                                                    // 000000002990: BF800001
	v_cndmask_b32_e64 v78, v78, v240, vcc                      // 000000002994: D100004E 01ABE14E
	v_cmp_gt_i32_e32 vcc, 27, v0                               // 00000000299C: 7D88009B
	s_nop 1                                                    // 0000000029A0: BF800001
	v_cndmask_b32_e64 v79, v79, v240, vcc                      // 0000000029A4: D100004F 01ABE14F
	s_branch 23                                                // 0000000029AC: BF820017 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf0c>
	s_mov_b32 s53, s52                                         // 0000000029B0: BEB50034
	s_mov_b32 s54, s52                                         // 0000000029B4: BEB60034
	s_mov_b32 s55, s52                                         // 0000000029B8: BEB70034
	s_mov_b32 s56, s52                                         // 0000000029BC: BEB80034
	s_mov_b32 s57, s52                                         // 0000000029C0: BEB90034
	s_mov_b32 s58, s52                                         // 0000000029C4: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000029C8: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000029CC: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000029D0: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000029D4: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000029D8: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000029DC: BEC00034
	s_mov_b32 s65, s52                                         // 0000000029E0: BEC10034
	s_mov_b32 s66, s52                                         // 0000000029E4: BEC20034
	s_mov_b32 s67, s52                                         // 0000000029E8: BEC30034
	v_mov_b64_e32 v[78:79], s[66:67]                           // 0000000029EC: 7E9C7042
	v_mov_b64_e32 v[76:77], s[64:65]                           // 0000000029F0: 7E987040
	v_mov_b64_e32 v[74:75], s[62:63]                           // 0000000029F4: 7E94703E
	v_mov_b64_e32 v[72:73], s[60:61]                           // 0000000029F8: 7E90703C
	v_mov_b64_e32 v[70:71], s[58:59]                           // 0000000029FC: 7E8C703A
	v_mov_b64_e32 v[68:69], s[56:57]                           // 000000002A00: 7E887038
	v_mov_b64_e32 v[66:67], s[54:55]                           // 000000002A04: 7E847036
	v_mov_b64_e32 v[64:65], s[52:53]                           // 000000002A08: 7E807034
	v_max_f32_e32 v0, v112, v113                               // 000000002A0C: 1600E370
	v_max3_f32 v0, v114, v115, v0                              // 000000002A10: D1D30000 0402E772
	v_max3_f32 v0, v116, v117, v0                              // 000000002A18: D1D30000 0402EB74
	v_max3_f32 v0, v118, v119, v0                              // 000000002A20: D1D30000 0402EF76
	v_max3_f32 v0, v120, v121, v0                              // 000000002A28: D1D30000 0402F378
	v_max3_f32 v0, v122, v123, v0                              // 000000002A30: D1D30000 0402F77A
	v_max3_f32 v0, v124, v125, v0                              // 000000002A38: D1D30000 0402FB7C
	v_max3_f32 v1, v126, v127, v0                              // 000000002A40: D1D30001 0402FF7E
	v_max_f32_e32 v0, v96, v97                                 // 000000002A48: 1600C360
	v_max3_f32 v0, v98, v99, v0                                // 000000002A4C: D1D30000 0402C762
	v_max3_f32 v0, v100, v101, v0                              // 000000002A54: D1D30000 0402CB64
	v_max3_f32 v0, v102, v103, v0                              // 000000002A5C: D1D30000 0402CF66
	v_max3_f32 v0, v104, v105, v0                              // 000000002A64: D1D30000 0402D368
	v_max3_f32 v0, v106, v107, v0                              // 000000002A6C: D1D30000 0402D76A
	v_max3_f32 v0, v108, v109, v0                              // 000000002A74: D1D30000 0402DB6C
	v_max3_f32 v2, v110, v111, v0                              // 000000002A7C: D1D30002 0402DF6E
	v_max_f32_e32 v0, v80, v81                                 // 000000002A84: 1600A350
	v_max3_f32 v0, v82, v83, v0                                // 000000002A88: D1D30000 0402A752
	v_max3_f32 v0, v84, v85, v0                                // 000000002A90: D1D30000 0402AB54
	v_max3_f32 v0, v86, v87, v0                                // 000000002A98: D1D30000 0402AF56
	v_max3_f32 v0, v88, v89, v0                                // 000000002AA0: D1D30000 0402B358
	v_max3_f32 v0, v90, v91, v0                                // 000000002AA8: D1D30000 0402B75A
	v_max3_f32 v0, v92, v93, v0                                // 000000002AB0: D1D30000 0402BB5C
	v_max3_f32 v0, v94, v95, v0                                // 000000002AB8: D1D30000 0402BF5E
	v_max_f32_e32 v3, v64, v65                                 // 000000002AC0: 16068340
	v_max3_f32 v3, v66, v67, v3                                // 000000002AC4: D1D30003 040E8742
	v_max3_f32 v3, v68, v69, v3                                // 000000002ACC: D1D30003 040E8B44
	v_max3_f32 v3, v70, v71, v3                                // 000000002AD4: D1D30003 040E8F46
	v_max3_f32 v3, v72, v73, v3                                // 000000002ADC: D1D30003 040E9348
	v_max3_f32 v3, v74, v75, v3                                // 000000002AE4: D1D30003 040E974A
	v_max3_f32 v3, v76, v77, v3                                // 000000002AEC: D1D30003 040E9B4C
	v_max3_f32 v3, v78, v79, v3                                // 000000002AF4: D1D30003 040E9F4E
	v_max_f32_e32 v0, v0, v3                                   // 000000002AFC: 16000700
	v_max_f32_e32 v2, v1, v2                                   // 000000002B00: 16040501
	v_mov_b32_e32 v3, v2                                       // 000000002B04: 7E060302
	s_nop 1                                                    // 000000002B08: BF800001
	v_permlane32_swap_b32_e32 v2, v3                           // 000000002B0C: 7E04B503
	v_mov_b32_e32 v1, v0                                       // 000000002B10: 7E020300
	s_nop 1                                                    // 000000002B14: BF800001
	v_permlane32_swap_b32_e32 v0, v1                           // 000000002B18: 7E00B501
	v_max_f32_e32 v0, v0, v1                                   // 000000002B1C: 16000300
	v_max_f32_e32 v1, v2, v3                                   // 000000002B20: 16020702
	v_max_f32_e32 v2, v1, v0                                   // 000000002B24: 16040101
	v_mul_f32_e32 v148, v238, v2                               // 000000002B28: 0B2805EE
	v_fma_f32 v1, v1, v238, -v148                              // 000000002B2C: D1CB0001 8653DD01
	v_floor_f32_e32 v1, v1                                     // 000000002B34: 7E023F01
	v_med3_f32 v1, v1, s98, 0                                  // 000000002B38: D1D60001 0200C501
	v_cvt_i32_f32_e32 v2, v1                                   // 000000002B40: 7E041101
	v_add_u32_e32 v251, 0x7f, v2                               // 000000002B44: 69F604FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v251                           // 000000002B4C: 2535F697
	v_fma_f32 v0, v0, v238, -v148                              // 000000002B50: D1CB0000 8653DD00
	v_floor_f32_e32 v0, v0                                     // 000000002B58: 7E003F00
	v_med3_f32 v0, v0, s98, 0                                  // 000000002B5C: D1D60000 0200C500
	v_cvt_i32_f32_e32 v2, v0                                   // 000000002B64: 7E041100
	v_add_u32_e32 v149, 0x7f, v2                               // 000000002B68: 692A04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v149                           // 000000002B70: 25372A97
	v_mov_b32_e32 v2, s50                                      // 000000002B74: 7E040232
	v_fma_f32 v2, v148, s99, v2                                // 000000002B78: D1CB0002 0408C794
	v_fma_f32 v152, v1, s99, v2                                // 000000002B80: D1CB0098 0408C701
	v_fma_f32 v150, v0, s99, v2                                // 000000002B88: D1CB0096 0408C700
	s_mov_b32 s82, s30                                         // 000000002B90: BED2001E
	s_waitcnt vmcnt(0)                                         // 000000002B94: BF8C0F70
	s_mov_b64 s[86:87], s[30:31]                               // 000000002B98: BED6011E
	s_and_b64 s[18:19], s[10:11], exec                         // 000000002B9C: 86927E0A
	s_mov_b64 s[84:85], s[28:29]                               // 000000002BA0: BED4011C
	s_mov_b32 s87, s43                                         // 000000002BA4: BED7002B
	s_cbranch_scc0 34                                          // 000000002BA8: BF840022 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1134>
	s_cmp_ge_u32 s96, 2                                        // 000000002BAC: BF098260
	s_cbranch_scc1 200                                         // 000000002BB0: BF8500C8 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x13d4>
	s_cmp_ge_u32 s96, 3                                        // 000000002BB4: BF098360
	s_cbranch_scc1 227                                         // 000000002BB8: BF8500E3 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1448>
	s_cmp_lt_u32 s96, 4                                        // 000000002BBC: BF0A8460
	s_cbranch_scc1 27                                          // 000000002BC0: BF85001B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1130>
	s_add_u32 s17, s78, -1                                     // 000000002BC4: 8011C14E
	s_and_b32 s17, s17, 3                                      // 000000002BC8: 86118311
	s_lshl_b32 s17, s17, 14                                    // 000000002BCC: 8E118E11
	s_or_b32 s17, s17, s88                                     // 000000002BD0: 87115811
	s_mov_b32 m0, s17                                          // 000000002BD4: BEFC0011
	s_mul_i32 s18, s8, 0x180                                   // 000000002BD8: 9212FF08 00000180
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002BE0: E05D1000 121500E9
	s_add_u32 m0, s17, 0x1000                                  // 000000002BE8: 807CFF11 00001000
	s_mul_i32 s18, s8, 0x1a0                                   // 000000002BF0: 9212FF08 000001A0
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002BF8: E05D1000 121500E9
	s_or_b32 m0, s17, 0x2000                                   // 000000002C00: 877CFF11 00002000
	s_mul_i32 s18, s8, 0x1c0                                   // 000000002C08: 9212FF08 000001C0
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002C10: E05D1000 121500E9
	s_add_u32 m0, s17, 0x3000                                  // 000000002C18: 807CFF11 00003000
	s_mul_i32 s17, s8, 0x1e0                                   // 000000002C20: 9211FF08 000001E0
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 000000002C28: E05D1000 111500E9
	s_waitcnt vmcnt(0)                                         // 000000002C30: BF8C0F70
	s_barrier                                                  // 000000002C34: BF8A0000
	s_add_u32 s53, s96, -1                                     // 000000002C38: 8035C160
	s_mov_b64 s[58:59], s[30:31]                               // 000000002C3C: BEBA011E
	s_mov_b64 s[56:57], s[28:29]                               // 000000002C40: BEB8011C
	s_cmp_lt_i32 s78, 1                                        // 000000002C44: BF04814E
	s_mul_i32 s53, s53, s33                                    // 000000002C48: 92352135
	s_cbranch_scc1 58                                          // 000000002C4C: BF85003A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1238>
	s_mov_b32 s17, s16                                         // 000000002C50: BE910010
	s_mov_b32 s18, s16                                         // 000000002C54: BE920010
	s_mov_b32 s19, s16                                         // 000000002C58: BE930010
	s_mov_b32 s20, s16                                         // 000000002C5C: BE940010
	s_mov_b32 s21, s16                                         // 000000002C60: BE950010
	s_mov_b32 s22, s16                                         // 000000002C64: BE960010
	s_mov_b32 s23, s16                                         // 000000002C68: BE970010
	s_mov_b32 s24, s16                                         // 000000002C6C: BE980010
	s_mov_b32 s25, s16                                         // 000000002C70: BE990010
	s_mov_b32 s26, s16                                         // 000000002C74: BE9A0010
	s_mov_b32 s27, s16                                         // 000000002C78: BE9B0010
	s_mov_b32 s28, s16                                         // 000000002C7C: BE9C0010
	s_mov_b32 s29, s16                                         // 000000002C80: BE9D0010
	s_mov_b32 s30, s16                                         // 000000002C84: BE9E0010
	s_mov_b32 s31, s16                                         // 000000002C88: BE9F0010
	s_cmp_lt_i32 s78, 2                                        // 000000002C8C: BF04824E
	s_cbranch_scc0 99                                          // 000000002C90: BF840063 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1320>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000002C94: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000002C98: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000002C9C: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000002CA0: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000002CA4: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000002CA8: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000002CAC: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000002CB0: 7E1C701E
	s_mov_b32 s42, 0                                           // 000000002CB4: BEAA0080
	v_mov_b32_e32 v250, 0                                      // 000000002CB8: 7FF40280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000002CBC: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000002CC0: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 000000002CC4: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 000000002CC8: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 000000002CCC: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 000000002CD0: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 000000002CD4: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 000000002CD8: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 000000002CDC: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 000000002CE0: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 000000002CE4: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 000000002CE8: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 000000002CEC: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 000000002CF0: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 000000002CF4: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 000000002CF8: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 000000002CFC: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 000000002D00: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 000000002D04: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 000000002D08: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 000000002D0C: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 000000002D10: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 000000002D14: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000002D18: 7E607100
	v_readlane_b32 s17, v255, 6                                // 000000002D1C: D2890011 00010DFF
	v_readlane_b32 s20, v255, 5                                // 000000002D24: D2890014 00010BFF
	s_mov_b64 s[28:29], s[56:57]                               // 000000002D2C: BE9C0138
	s_mov_b64 s[30:31], s[58:59]                               // 000000002D30: BE9E013A
	s_branch 872                                               // 000000002D34: BF820368 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1fd8>
	s_mov_b32 s17, s16                                         // 000000002D38: BE910010
	s_mov_b32 s18, s16                                         // 000000002D3C: BE920010
	s_mov_b32 s19, s16                                         // 000000002D40: BE930010
	s_mov_b32 s20, s16                                         // 000000002D44: BE940010
	s_mov_b32 s21, s16                                         // 000000002D48: BE950010
	s_mov_b32 s22, s16                                         // 000000002D4C: BE960010
	s_mov_b32 s23, s16                                         // 000000002D50: BE970010
	s_mov_b32 s24, s16                                         // 000000002D54: BE980010
	s_mov_b32 s25, s16                                         // 000000002D58: BE990010
	s_mov_b32 s26, s16                                         // 000000002D5C: BE9A0010
	s_mov_b32 s27, s16                                         // 000000002D60: BE9B0010
	s_mov_b32 s28, s16                                         // 000000002D64: BE9C0010
	s_mov_b32 s29, s16                                         // 000000002D68: BE9D0010
	s_mov_b32 s30, s16                                         // 000000002D6C: BE9E0010
	s_mov_b32 s31, s16                                         // 000000002D70: BE9F0010
	s_mov_b32 s42, 0                                           // 000000002D74: BEAA0080
	s_cmp_lg_u32 s78, 0                                        // 000000002D78: BF07804E
	s_cbranch_scc0 184                                         // 000000002D7C: BF8400B8 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1560>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000002D80: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000002D84: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000002D88: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000002D8C: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000002D90: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000002D94: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000002D98: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000002D9C: 7E1C701E
	v_mov_b32_e32 v250, 0                                      // 000000002DA0: 7FF40280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000002DA4: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000002DA8: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 000000002DAC: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 000000002DB0: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 000000002DB4: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 000000002DB8: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 000000002DBC: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 000000002DC0: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 000000002DC4: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 000000002DC8: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 000000002DCC: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 000000002DD0: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 000000002DD4: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 000000002DD8: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 000000002DDC: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 000000002DE0: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 000000002DE4: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 000000002DE8: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 000000002DEC: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 000000002DF0: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 000000002DF4: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 000000002DF8: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 000000002DFC: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000002E00: 7E607100
	v_readlane_b32 s17, v255, 6                                // 000000002E04: D2890011 00010DFF
	v_readlane_b32 s20, v255, 5                                // 000000002E0C: D2890014 00010BFF
	s_mov_b64 s[28:29], s[56:57]                               // 000000002E14: BE9C0138
	s_mov_b64 s[30:31], s[58:59]                               // 000000002E18: BE9E013A
	s_branch 2058                                              // 000000002E1C: BF82080A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3348>
	s_mov_b32 s42, 0                                           // 000000002E20: BEAA0080
	s_cmp_eq_u32 s78, 2                                        // 000000002E24: BF06824E
	s_cbranch_scc0 101                                         // 000000002E28: BF840065 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x14c0>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000002E2C: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000002E30: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000002E34: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000002E38: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000002E3C: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000002E40: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000002E44: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000002E48: 7E1C701E
	v_mov_b32_e32 v250, 0                                      // 000000002E4C: 7FF40280
	v_mov_b32_e32 v253, v149                                   // 000000002E50: 7FFA0395
	v_mov_b32_e32 v252, v148                                   // 000000002E54: 7FF80394
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000002E58: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000002E5C: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 000000002E60: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 000000002E64: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 000000002E68: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 000000002E6C: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 000000002E70: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 000000002E74: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 000000002E78: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 000000002E7C: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 000000002E80: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 000000002E84: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 000000002E88: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 000000002E8C: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 000000002E90: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 000000002E94: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 000000002E98: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 000000002E9C: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 000000002EA0: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 000000002EA4: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 000000002EA8: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 000000002EAC: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 000000002EB0: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000002EB4: 7E607100
	v_readlane_b32 s17, v255, 6                                // 000000002EB8: D2890011 00010DFF
	v_readlane_b32 s20, v255, 5                                // 000000002EC0: D2890014 00010BFF
	s_mov_b64 s[28:29], s[56:57]                               // 000000002EC8: BE9C0138
	s_mov_b64 s[30:31], s[58:59]                               // 000000002ECC: BE9E013A
	s_branch 1391                                              // 000000002ED0: BF82056F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2990>
	s_add_u32 s18, s78, 1                                      // 000000002ED4: 8012814E
	s_and_b32 s18, s18, 3                                      // 000000002ED8: 86128312
	s_lshl_b32 s18, s18, 14                                    // 000000002EDC: 8E128E12
	s_or_b32 s18, s18, s88                                     // 000000002EE0: 87125812
	s_or_b32 m0, s18, 0x10000                                  // 000000002EE4: 877CFF12 00010000
	s_mul_i32 s19, s8, 0xc0                                    // 000000002EEC: 9213FF08 000000C0
	buffer_load_dwordx4 v235, s[80:83], s33 offen lds          // 000000002EF4: E05D1000 211400EB
	s_add_u32 m0, s18, 0x11000                                 // 000000002EFC: 807CFF12 00011000
	s_nop 0                                                    // 000000002F04: BF800000
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000002F08: E05D1000 131400EB
	s_or_b32 m0, s18, 0x12000                                  // 000000002F10: 877CFF12 00012000
	s_mul_i32 s19, s8, 0x84                                    // 000000002F18: 9213FF08 00000084
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000002F20: E05D1000 131400EB
	s_add_u32 m0, s18, 0x13000                                 // 000000002F28: 807CFF12 00013000
	s_mul_i32 s18, s8, 0xc4                                    // 000000002F30: 9212FF08 000000C4
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000002F38: E05D1000 121400EB
	s_cmp_lt_u32 s96, 3                                        // 000000002F40: BF0A8360
	s_cbranch_scc1 65309                                       // 000000002F44: BF85FF1D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10bc>
	s_xor_b32 s17, s17, 2                                      // 000000002F48: 88118211
	s_lshl_b32 s17, s17, 14                                    // 000000002F4C: 8E118E11
	s_or_b32 s17, s17, s88                                     // 000000002F50: 87115811
	s_mov_b32 m0, s17                                          // 000000002F54: BEFC0011
	v_readlane_b32 s18, v255, 6                                // 000000002F58: D2890012 00010DFF
	s_nop 4                                                    // 000000002F60: BF800004
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002F64: E05D1000 121500E9
	s_add_u32 m0, s17, 0x1000                                  // 000000002F6C: 807CFF11 00001000
	s_mul_i32 s18, s8, 0x120                                   // 000000002F74: 9212FF08 00000120
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002F7C: E05D1000 121500E9
	s_or_b32 m0, s17, 0x2000                                   // 000000002F84: 877CFF11 00002000
	s_mul_i32 s18, s8, 0x140                                   // 000000002F8C: 9212FF08 00000140
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002F94: E05D1000 121500E9
	s_add_u32 m0, s17, 0x3000                                  // 000000002F9C: 807CFF11 00003000
	s_mul_i32 s17, s8, 0x160                                   // 000000002FA4: 9211FF08 00000160
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 000000002FAC: E05D1000 111500E9
	s_cmp_lt_u32 s96, 4                                        // 000000002FB4: BF0A8460
	s_cbranch_scc1 65309                                       // 000000002FB8: BF85FF1D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1130>
	s_branch 65281                                             // 000000002FBC: BF82FF01 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10c4>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000002FC0: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000002FC4: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000002FC8: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000002FCC: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000002FD0: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000002FD4: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000002FD8: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000002FDC: 7E1C701E
	v_mov_b32_e32 v250, 0                                      // 000000002FE0: 7FF40280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000002FE4: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000002FE8: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 000000002FEC: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 000000002FF0: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 000000002FF4: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 000000002FF8: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 000000002FFC: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 000000003000: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 000000003004: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 000000003008: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000300C: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 000000003010: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 000000003014: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 000000003018: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000301C: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 000000003020: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 000000003024: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 000000003028: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000302C: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 000000003030: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 000000003034: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 000000003038: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000303C: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000003040: 7E607100
	v_readlane_b32 s17, v255, 6                                // 000000003044: D2890011 00010DFF
	v_readlane_b32 s20, v255, 5                                // 00000000304C: D2890014 00010BFF
	s_mov_b64 s[28:29], s[56:57]                               // 000000003054: BE9C0138
	s_mov_b64 s[30:31], s[58:59]                               // 000000003058: BE9E013A
	s_branch 1914                                              // 00000000305C: BF82077A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3348>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000003060: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000003064: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000003068: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000306C: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000003070: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000003074: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000003078: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000307C: 7E1C701E
	v_mov_b32_e32 v250, 0                                      // 000000003080: 7FF40280
	s_mov_b32 s42, s78                                         // 000000003084: BEAA004E
	v_mov_b32_e32 v253, v149                                   // 000000003088: 7FFA0395
	v_mov_b32_e32 v252, v148                                   // 00000000308C: 7FF80394
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000003090: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000003094: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 000000003098: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000309C: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 0000000030A0: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 0000000030A4: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 0000000030A8: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 0000000030AC: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 0000000030B0: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 0000000030B4: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 0000000030B8: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 0000000030BC: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 0000000030C0: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 0000000030C4: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 0000000030C8: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 0000000030CC: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 0000000030D0: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 0000000030D4: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 0000000030D8: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 0000000030DC: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 0000000030E0: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 0000000030E4: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 0000000030E8: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 0000000030EC: 7E607100
	v_readlane_b32 s17, v255, 6                                // 0000000030F0: D2890011 00010DFF
	v_readlane_b32 s20, v255, 5                                // 0000000030F8: D2890014 00010BFF
	s_mov_b64 s[28:29], s[56:57]                               // 000000003100: BE9C0138
	s_mov_b64 s[30:31], s[58:59]                               // 000000003104: BE9E013A
	s_branch 5                                                 // 000000003108: BF820005 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1620>
	s_mov_b64 s[0:1], s[20:21]                                 // 00000000310C: BE800114
	s_mov_b32 s3, s17                                          // 000000003110: BE830011
	global_store_dword v0, v32, s[36:37]                       // 000000003114: DC708000 00242000
	s_branch 64494                                             // 00000000311C: BF82FBEE <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5d8>
	s_add_u32 s18, s42, 1                                      // 000000003120: 8012812A
	s_cmp_ge_u32 s18, s79                                      // 000000003124: BF094F12
	s_cbranch_scc1 2488                                        // 000000003128: BF8509B8 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d0c>
	s_setprio 0                                                // 00000000312C: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000003130: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 000000003138: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 000000003140: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 000000003148: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 000000003150: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 000000003158: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 000000003160: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 000000003168: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 000000003170: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 000000003178: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 000000003180: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 000000003188: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 000000003190: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 000000003198: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 0000000031A0: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 0000000031A8: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 0000000031B0: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 0000000031B8: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 0000000031C0: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 0000000031C8: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 0000000031D0: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 0000000031D8: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 0000000031E0: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 0000000031E8: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 0000000031F0: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 0000000031F8: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000003200: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 000000003208: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000003210: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 000000003218: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 000000003220: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 000000003228: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 000000003230: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 000000003238: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 000000003240: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 000000003248: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 000000003250: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 000000003258: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 000000003260: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 000000003268: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 000000003270: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 000000003278: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 000000003280: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 000000003288: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 000000003290: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 000000003298: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 0000000032A0: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 0000000032A8: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 0000000032B0: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 0000000032B8: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 0000000032C0: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 0000000032C8: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 0000000032D0: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 0000000032D8: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 0000000032E0: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 0000000032E8: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 0000000032F0: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 0000000032F8: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 000000003300: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 000000003308: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 000000003310: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 000000003318: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 000000003320: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 000000003328: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 000000003330: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 000000003338: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 000000003340: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 000000003348: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 000000003350: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 000000003358: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 000000003360: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 000000003368: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 000000003370: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 000000003378: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 000000003380: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 000000003388: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 000000003390: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 000000003398: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 0000000033A0: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 0000000033A8: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 0000000033B0: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 0000000033B8: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 0000000033C0: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 0000000033C8: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 0000000033D0: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 0000000033D8: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 0000000033E0: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 0000000033E8: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 0000000033F0: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 0000000033F8: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 000000003400: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 000000003408: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 000000003410: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 000000003418: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 000000003420: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 000000003428: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 000000003430: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000003438: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 000000003440: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 000000003448: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 000000003450: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 000000003458: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 000000003460: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 000000003468: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 000000003470: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 000000003478: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 000000003480: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 000000003488: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 000000003490: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 000000003498: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 0000000034A0: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 0000000034A8: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 0000000034B0: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 0000000034B8: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 0000000034C0: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 0000000034C8: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 0000000034D0: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 0000000034D8: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 0000000034E0: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 0000000034E8: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 0000000034F0: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 0000000034F8: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 000000003500: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 000000003508: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 000000003510: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 000000003518: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 000000003520: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 000000003528: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 000000003530: 7F320398
	v_mov_b32_e32 v151, v150                                   // 000000003534: 7F2E0396
	ds_read_b128 v[72:75], v231 offset:16384                   // 000000003538: D9FE4000 480000E7
	ds_read_b128 v[76:79], v231 offset:16400                   // 000000003540: D9FE4010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:20480                   // 000000003548: D9FE5000 500000E7
	ds_read_b128 v[84:87], v231 offset:20496                   // 000000003550: D9FE5010 540000E7
	s_barrier                                                  // 000000003558: BF8A0000
	s_setprio 1                                                // 00000000355C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 000000003560: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 000000003568: D3AD0044 020311C0
	ds_read_b128 v[144:147], v231 offset:24576                 // 000000003570: D9FE6000 900000E7
	ds_read_b128 v[148:151], v231 offset:24592                 // 000000003578: D9FE6010 940000E7
	ds_read_b128 v[156:159], v231 offset:28672                 // 000000003580: D9FE7000 9C0000E7
	ds_read_b128 v[160:163], v231 offset:28688                 // 000000003588: D9FE7010 A00000E7
	s_waitcnt lgkmcnt(4)                                       // 000000003590: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 000000003594: D3AE0070 0203B948
	ds_read_b128 v[164:167], v232 offset:16384                 // 00000000359C: D9FE4000 A40000E8
	ds_read_b128 v[168:171], v232 offset:16400                 // 0000000035A4: D9FE4010 A80000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 0000000035AC: D3AE0060 0203B950
	ds_read_b128 v[172:175], v232 offset:20480                 // 0000000035B4: D9FE5000 AC0000E8
	ds_read_b128 v[176:179], v232 offset:20496                 // 0000000035BC: D9FE5010 B00000E8
	s_waitcnt lgkmcnt(4)                                       // 0000000035C4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[144:151], v[220:227], 0// 0000000035C8: D3AE0050 0203B990
	ds_read_b128 v[146:149], v232 offset:24576                 // 0000000035D0: D9FE6000 920000E8
	ds_read_b128 v[150:153], v232 offset:24592                 // 0000000035D8: D9FE6010 960000E8
	s_min_u32 s18, s20, s53                                    // 0000000035E0: 83923514
	s_add_u32 m0, s88, s16                                     // 0000000035E4: 807C1058
	s_nop 0                                                    // 0000000035E8: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 0000000035EC: E05D1000 121500E9
	v_mul_f32_e32 v72, v154, v64                               // 0000000035F4: 0A90819A
	v_add_f32_e32 v72, v250, v72                               // 0000000035F8: 029091FA
	v_mul_f32_e32 v73, v155, v68                               // 0000000035FC: 0A92899B
	v_add_f32_e32 v250, v72, v73                               // 000000003600: 03F49348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[156:163], v[220:227], 0// 000000003604: D3AE0040 0203B99C
	ds_read_b128 v[154:157], v232 offset:28672                 // 00000000360C: D9FE7000 9A0000E8
	ds_read_b128 v[158:161], v232 offset:28688                 // 000000003614: D9FE7010 9E0000E8
	s_add_u32 m0, s88, s95                                     // 00000000361C: 807C5F58
	s_nop 0                                                    // 000000003620: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 000000003624: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 00000000362C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[164:171], v[200:207], v[112:127]// 000000003630: D3AE0070 05C391A4
	ds_read_b64_tr_b8 v[162:163], v246                         // 000000003638: D9C40000 A20000F6
	ds_read_b64_tr_b8 v[164:165], v246 offset:1024             // 000000003640: D9C40400 A40000F6
	ds_read_b64_tr_b8 v[166:167], v246 offset:2048             // 000000003648: D9C40800 A60000F6
	ds_read_b64_tr_b8 v[168:169], v246 offset:3072             // 000000003650: D9C40C00 A80000F6
	s_min_u32 s18, s17, s53                                    // 000000003658: 83923511
	s_add_u32 m0, s88, s97                                     // 00000000365C: 807C6158
	s_nop 0                                                    // 000000003660: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000003664: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[172:179], v[200:207], v[96:111]// 00000000366C: D3AE0060 058391AC
	ds_read_b64_tr_b8 v[170:171], v246 offset:256              // 000000003674: D9C40100 AA0000F6
	ds_read_b64_tr_b8 v[172:173], v246 offset:1280             // 00000000367C: D9C40500 AC0000F6
	ds_read_b64_tr_b8 v[174:175], v246 offset:2304             // 000000003684: D9C40900 AE0000F6
	ds_read_b64_tr_b8 v[176:177], v246 offset:3328             // 00000000368C: D9C40D00 B00000F6
	s_add_u32 m0, s88, s48                                     // 000000003694: 807C3058
	s_nop 0                                                    // 000000003698: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 00000000369C: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 0000000036A4: 80142114
	s_add_u32 s17, s17, s33                                    // 0000000036A8: 80112111
	v_max_f32_e32 v144, v112, v113                             // 0000000036AC: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 0000000036B0: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 0000000036B8: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 0000000036C0: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 0000000036C8: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 0000000036D0: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 0000000036D8: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 0000000036E0: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 0000000036E8: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[146:153], v[200:207], v[80:95]// 0000000036EC: D3AE0050 05439192
	ds_read_b64_tr_b8 v[178:179], v246 offset:512              // 0000000036F4: D9C40200 B20000F6
	ds_read_b64_tr_b8 v[180:181], v246 offset:1536             // 0000000036FC: D9C40600 B40000F6
	ds_read_b64_tr_b8 v[182:183], v246 offset:2560             // 000000003704: D9C40A00 B60000F6
	ds_read_b64_tr_b8 v[184:185], v246 offset:3584             // 00000000370C: D9C40E00 B80000F6
	v_max_f32_e32 v145, v96, v97                               // 000000003714: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 000000003718: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 000000003720: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 000000003728: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 000000003730: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 000000003738: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 000000003740: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 000000003748: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[154:161], v[200:207], v[64:79]// 000000003750: D3AE0040 0503919A
	s_nop 3                                                    // 000000003758: BF800003
	v_max_f32_e32 v146, v80, v81                               // 00000000375C: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 000000003760: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 000000003768: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 000000003770: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 000000003778: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 000000003780: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 000000003788: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 000000003790: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 000000003798: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[162:169], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 00000000379C: D3AC0000 0003F7F2 D3AE0830 04C301A2
	ds_read_b64_tr_b8 v[148:149], v246 offset:768              // 0000000037AC: D9C40300 940000F6
	ds_read_b64_tr_b8 v[150:151], v246 offset:1792             // 0000000037B4: D9C40700 960000F6
	ds_read_b64_tr_b8 v[152:153], v246 offset:2816             // 0000000037BC: D9C40B00 980000F6
	ds_read_b64_tr_b8 v[154:155], v246 offset:3840             // 0000000037C4: D9C40F00 9A0000F6
	ds_read_b64_tr_b8 v[156:157], v246 offset:4096             // 0000000037CC: D9C41000 9C0000F6
	ds_read_b64_tr_b8 v[158:159], v246 offset:5120             // 0000000037D4: D9C41400 9E0000F6
	ds_read_b64_tr_b8 v[160:161], v246 offset:6144             // 0000000037DC: D9C41800 A00000F6
	ds_read_b64_tr_b8 v[162:163], v246 offset:7168             // 0000000037E4: D9C41C00 A20000F6
	v_max_f32_e32 v147, v64, v65                               // 0000000037EC: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 0000000037F0: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 0000000037F8: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 000000003800: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 000000003808: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 000000003810: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 000000003818: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 000000003820: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[170:177], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000003828: D3AC0000 0003F7F2 D3AE0820 048301AA
	v_max_f32_e32 v144, v144, v145                             // 000000003838: 17212390
	v_max_f32_e32 v146, v146, v147                             // 00000000383C: 17252792
	v_mov_b32_e32 v145, v144                                   // 000000003840: 7F220390
	v_mov_b32_e32 v147, v146                                   // 000000003844: 7F260392
	s_nop 0                                                    // 000000003848: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 00000000384C: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 000000003850: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 000000003854: 17212390
	v_max_f32_e32 v145, v146, v147                             // 000000003858: 17232792
	s_waitcnt lgkmcnt(4)                                       // 00000000385C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[178:185], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000003860: D3AC0000 0003F7F2 D3AE0810 044301B2
	ds_read_b64_tr_b8 v[164:165], v246 offset:4352             // 000000003870: D9C41100 A40000F6
	ds_read_b64_tr_b8 v[166:167], v246 offset:5376             // 000000003878: D9C41500 A60000F6
	ds_read_b64_tr_b8 v[168:169], v246 offset:6400             // 000000003880: D9C41900 A80000F6
	ds_read_b64_tr_b8 v[170:171], v246 offset:7424             // 000000003888: D9C41D00 AA0000F6
	ds_read_b64_tr_b8 v[172:173], v246 offset:4608             // 000000003890: D9C41200 AC0000F6
	ds_read_b64_tr_b8 v[174:175], v246 offset:5632             // 000000003898: D9C41600 AE0000F6
	ds_read_b64_tr_b8 v[176:177], v246 offset:6656             // 0000000038A0: D9C41A00 B00000F6
	ds_read_b64_tr_b8 v[178:179], v246 offset:7680             // 0000000038A8: D9C41E00 B20000F6
	v_max_f32_e32 v146, v144, v145                             // 0000000038B0: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 0000000038B4: 0B2525EE
	v_max_f32_e32 v146, v252, v146                             // 0000000038B8: 172525FC
	v_sub_f32_e32 v147, v146, v252                             // 0000000038BC: 0527F992
	v_cmp_lt_f32_e32 vcc, s89, v147                            // 0000000038C0: 7C832659
	s_cmp_lg_u64 vcc, 0                                        // 0000000038C4: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 0000000038C8: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 0000000038CC: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[148:155], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 0000000038D0: D3AC0000 0003F7F2 D3AE0800 04030194
	v_cndmask_b32_e64 v148, v252, v146, s[18:19]               // 0000000038E0: D1000094 004B25FC
	v_fma_f32 v128, v144, v238, -v148                          // 0000000038E8: D1CB0080 8653DD90
	v_floor_f32_e32 v128, v128                                 // 0000000038F0: 7F003F80
	v_med3_f32 v128, v128, s98, 0                              // 0000000038F4: D1D60080 0200C580
	v_cvt_i32_f32_e32 v129, v128                               // 0000000038FC: 7F021180
	v_add_u32_e32 v251, 0x7f, v129                             // 000000003900: 69F702FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v251                           // 000000003908: 2535F697
	v_fma_f32 v129, v145, v238, -v148                          // 00000000390C: D1CB0081 8653DD91
	s_waitcnt lgkmcnt(4)                                       // 000000003914: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000003918: D3AC0000 0003FBF2 D3AE0830 04C3119C
	ds_read_b64_tr_b8 v[156:157], v246 offset:4864             // 000000003928: D9C41300 9C0000F6
	ds_read_b64_tr_b8 v[158:159], v246 offset:5888             // 000000003930: D9C41700 9E0000F6
	ds_read_b64_tr_b8 v[160:161], v246 offset:6912             // 000000003938: D9C41B00 A00000F6
	ds_read_b64_tr_b8 v[162:163], v246 offset:7936             // 000000003940: D9C41F00 A20000F6
	v_floor_f32_e32 v129, v129                                 // 000000003948: 7F023F81
	v_med3_f32 v129, v129, s98, 0                              // 00000000394C: D1D60081 0200C581
	v_cvt_i32_f32_e32 v130, v129                               // 000000003954: 7F041181
	v_add_u32_e32 v149, 0x7f, v130                             // 000000003958: 692B04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v149                           // 000000003960: 25372A97
	v_mov_b32_e32 v130, s50                                    // 000000003964: 7F040232
	v_fma_f32 v130, v148, s99, v130                            // 000000003968: D1CB0082 0608C794
	v_fma_f32 v152, v128, s99, v130                            // 000000003970: D1CB0098 0608C780
	v_fma_f32 v150, v129, s99, v130                            // 000000003978: D1CB0096 0608C781
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000003980: D3AC0000 0003FBF2 D3AE0820 048311A4
	s_waitcnt lgkmcnt(0)                                       // 000000003990: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000003994: D3AC0000 0003FBF2 D3AE0810 044311AC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 0000000039A4: D3AC0000 0003FBF2 D3AE0800 0403119C
	s_cmp_eq_u32 s21, 0                                        // 0000000039B4: BF068015
	s_cbranch_scc1 68                                          // 0000000039B8: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1fcc>
	v_sub_f32_e32 v128, v252, v148                             // 0000000039BC: 050129FC
	v_exp_f32_e32 v128, v128                                   // 0000000039C0: 7F004180
	s_nop 0                                                    // 0000000039C4: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 0000000039C8: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 0000000039D0: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 0000000039D8: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 0000000039E0: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 0000000039E8: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 0000000039F0: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 0000000039F8: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000003A00: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000003A08: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000003A10: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000003A18: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000003A20: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000003A28: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000003A30: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000003A38: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000003A40: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000003A48: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000003A50: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000003A58: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000003A60: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000003A68: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000003A70: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000003A78: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 000000003A80: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 000000003A88: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 000000003A90: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 000000003A98: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 000000003AA0: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 000000003AA8: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 000000003AB0: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 000000003AB8: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 000000003AC0: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 000000003AC8: 0BF501FA
	s_waitcnt vmcnt(4)                                         // 000000003ACC: BF8C0F74
	s_barrier                                                  // 000000003AD0: BF8A0000
	s_add_u32 s42, s42, 1                                      // 000000003AD4: 802A812A
	s_add_u32 s18, s42, 1                                      // 000000003AD8: 8012812A
	s_cmp_ge_u32 s18, s79                                      // 000000003ADC: BF094F12
	s_cbranch_scc1 1870                                        // 000000003AE0: BF85074E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d1c>
	s_setprio 0                                                // 000000003AE4: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000003AE8: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 000000003AF0: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 000000003AF8: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 000000003B00: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 000000003B08: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 000000003B10: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 000000003B18: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 000000003B20: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 000000003B28: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 000000003B30: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 000000003B38: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 000000003B40: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 000000003B48: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 000000003B50: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 000000003B58: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 000000003B60: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 000000003B68: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000003B70: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 000000003B78: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000003B80: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 000000003B88: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000003B90: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 000000003B98: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000003BA0: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 000000003BA8: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000003BB0: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000003BB8: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 000000003BC0: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000003BC8: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 000000003BD0: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 000000003BD8: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 000000003BE0: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 000000003BE8: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 000000003BF0: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 000000003BF8: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 000000003C00: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 000000003C08: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 000000003C10: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 000000003C18: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 000000003C20: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 000000003C28: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 000000003C30: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 000000003C38: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 000000003C40: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 000000003C48: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 000000003C50: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 000000003C58: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 000000003C60: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 000000003C68: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000003C70: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 000000003C78: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000003C80: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 000000003C88: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000003C90: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 000000003C98: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000003CA0: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 000000003CA8: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000003CB0: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 000000003CB8: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 000000003CC0: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 000000003CC8: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 000000003CD0: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 000000003CD8: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 000000003CE0: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 000000003CE8: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 000000003CF0: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 000000003CF8: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 000000003D00: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 000000003D08: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 000000003D10: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 000000003D18: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 000000003D20: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 000000003D28: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 000000003D30: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 000000003D38: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 000000003D40: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 000000003D48: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 000000003D50: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 000000003D58: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 000000003D60: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 000000003D68: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000003D70: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 000000003D78: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000003D80: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 000000003D88: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000003D90: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 000000003D98: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000003DA0: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 000000003DA8: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000003DB0: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 000000003DB8: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 000000003DC0: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 000000003DC8: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 000000003DD0: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 000000003DD8: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 000000003DE0: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 000000003DE8: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000003DF0: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 000000003DF8: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 000000003E00: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 000000003E08: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 000000003E10: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 000000003E18: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 000000003E20: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 000000003E28: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 000000003E30: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 000000003E38: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 000000003E40: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 000000003E48: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 000000003E50: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 000000003E58: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 000000003E60: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000003E68: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000003E70: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000003E78: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000003E80: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000003E88: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 000000003E90: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 000000003E98: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 000000003EA0: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000003EA8: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 000000003EB0: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 000000003EB8: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 000000003EC0: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 000000003EC8: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 000000003ED0: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 000000003ED8: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 000000003EE0: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 000000003EE8: 7F320398
	v_mov_b32_e32 v151, v150                                   // 000000003EEC: 7F2E0396
	ds_read_b128 v[72:75], v231 offset:32768                   // 000000003EF0: D9FE8000 480000E7
	ds_read_b128 v[76:79], v231 offset:32784                   // 000000003EF8: D9FE8010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:36864                   // 000000003F00: D9FE9000 500000E7
	ds_read_b128 v[84:87], v231 offset:36880                   // 000000003F08: D9FE9010 540000E7
	s_barrier                                                  // 000000003F10: BF8A0000
	s_setprio 1                                                // 000000003F14: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 000000003F18: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 000000003F20: D3AD0044 020311C0
	ds_read_b128 v[156:159], v231 offset:40960                 // 000000003F28: D9FEA000 9C0000E7
	ds_read_b128 v[160:163], v231 offset:40976                 // 000000003F30: D9FEA010 A00000E7
	ds_read_b128 v[164:167], v231 offset:45056                 // 000000003F38: D9FEB000 A40000E7
	ds_read_b128 v[168:171], v231 offset:45072                 // 000000003F40: D9FEB010 A80000E7
	s_waitcnt lgkmcnt(4)                                       // 000000003F48: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 000000003F4C: D3AE0070 0203B948
	ds_read_b128 v[172:175], v232 offset:32768                 // 000000003F54: D9FE8000 AC0000E8
	ds_read_b128 v[176:179], v232 offset:32784                 // 000000003F5C: D9FE8010 B00000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 000000003F64: D3AE0060 0203B950
	ds_read_b128 v[180:183], v232 offset:36864                 // 000000003F6C: D9FE9000 B40000E8
	ds_read_b128 v[184:187], v232 offset:36880                 // 000000003F74: D9FE9010 B80000E8
	s_waitcnt lgkmcnt(4)                                       // 000000003F7C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[156:163], v[220:227], 0// 000000003F80: D3AE0050 0203B99C
	ds_read_b128 v[156:159], v232 offset:40960                 // 000000003F88: D9FEA000 9C0000E8
	ds_read_b128 v[160:163], v232 offset:40976                 // 000000003F90: D9FEA010 A00000E8
	s_min_u32 s18, s20, s53                                    // 000000003F98: 83923514
	s_add_u32 m0, s88, s90                                     // 000000003F9C: 807C5A58
	s_nop 0                                                    // 000000003FA0: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000003FA4: E05D1000 121500E9
	v_mul_f32_e32 v72, v154, v64                               // 000000003FAC: 0A90819A
	v_add_f32_e32 v72, v250, v72                               // 000000003FB0: 029091FA
	v_mul_f32_e32 v73, v155, v68                               // 000000003FB4: 0A92899B
	v_add_f32_e32 v250, v72, v73                               // 000000003FB8: 03F49348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[164:171], v[220:227], 0// 000000003FBC: D3AE0040 0203B9A4
	ds_read_b128 v[164:167], v232 offset:45056                 // 000000003FC4: D9FEB000 A40000E8
	ds_read_b128 v[168:171], v232 offset:45072                 // 000000003FCC: D9FEB010 A80000E8
	s_add_u32 m0, s88, s91                                     // 000000003FD4: 807C5B58
	s_nop 0                                                    // 000000003FD8: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 000000003FDC: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 000000003FE4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[172:179], v[200:207], v[112:127]// 000000003FE8: D3AE0070 05C391AC
	ds_read_b64_tr_b8 v[172:173], v247                         // 000000003FF0: D9C40000 AC0000F7
	ds_read_b64_tr_b8 v[174:175], v247 offset:1024             // 000000003FF8: D9C40400 AE0000F7
	ds_read_b64_tr_b8 v[176:177], v247 offset:2048             // 000000004000: D9C40800 B00000F7
	ds_read_b64_tr_b8 v[178:179], v247 offset:3072             // 000000004008: D9C40C00 B20000F7
	s_min_u32 s18, s17, s53                                    // 000000004010: 83923511
	s_add_u32 m0, s88, s49                                     // 000000004014: 807C3158
	s_nop 0                                                    // 000000004018: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 00000000401C: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[180:187], v[200:207], v[96:111]// 000000004024: D3AE0060 058391B4
	ds_read_b64_tr_b8 v[180:181], v247 offset:256              // 00000000402C: D9C40100 B40000F7
	ds_read_b64_tr_b8 v[182:183], v247 offset:1280             // 000000004034: D9C40500 B60000F7
	ds_read_b64_tr_b8 v[184:185], v247 offset:2304             // 00000000403C: D9C40900 B80000F7
	ds_read_b64_tr_b8 v[186:187], v247 offset:3328             // 000000004044: D9C40D00 BA0000F7
	s_add_u32 m0, s88, s34                                     // 00000000404C: 807C2258
	s_nop 0                                                    // 000000004050: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000004054: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 00000000405C: 80142114
	s_add_u32 s17, s17, s33                                    // 000000004060: 80112111
	v_max_f32_e32 v144, v112, v113                             // 000000004064: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 000000004068: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 000000004070: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 000000004078: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 000000004080: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 000000004088: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 000000004090: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 000000004098: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 0000000040A0: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[156:163], v[200:207], v[80:95]// 0000000040A4: D3AE0050 0543919C
	ds_read_b64_tr_b8 v[150:151], v247 offset:512              // 0000000040AC: D9C40200 960000F7
	ds_read_b64_tr_b8 v[152:153], v247 offset:1536             // 0000000040B4: D9C40600 980000F7
	ds_read_b64_tr_b8 v[154:155], v247 offset:2560             // 0000000040BC: D9C40A00 9A0000F7
	ds_read_b64_tr_b8 v[156:157], v247 offset:3584             // 0000000040C4: D9C40E00 9C0000F7
	v_max_f32_e32 v145, v96, v97                               // 0000000040CC: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 0000000040D0: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 0000000040D8: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 0000000040E0: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 0000000040E8: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 0000000040F0: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 0000000040F8: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 000000004100: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[164:171], v[200:207], v[64:79]// 000000004108: D3AE0040 050391A4
	s_nop 3                                                    // 000000004110: BF800003
	v_max_f32_e32 v146, v80, v81                               // 000000004114: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 000000004118: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 000000004120: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 000000004128: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 000000004130: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 000000004138: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 000000004140: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 000000004148: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 000000004150: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[172:179], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000004154: D3AC0000 0003F7F2 D3AE0830 04C301AC
	ds_read_b64_tr_b8 v[158:159], v247 offset:768              // 000000004164: D9C40300 9E0000F7
	ds_read_b64_tr_b8 v[160:161], v247 offset:1792             // 00000000416C: D9C40700 A00000F7
	ds_read_b64_tr_b8 v[162:163], v247 offset:2816             // 000000004174: D9C40B00 A20000F7
	ds_read_b64_tr_b8 v[164:165], v247 offset:3840             // 00000000417C: D9C40F00 A40000F7
	ds_read_b64_tr_b8 v[166:167], v247 offset:4096             // 000000004184: D9C41000 A60000F7
	ds_read_b64_tr_b8 v[168:169], v247 offset:5120             // 00000000418C: D9C41400 A80000F7
	ds_read_b64_tr_b8 v[170:171], v247 offset:6144             // 000000004194: D9C41800 AA0000F7
	ds_read_b64_tr_b8 v[172:173], v247 offset:7168             // 00000000419C: D9C41C00 AC0000F7
	v_max_f32_e32 v147, v64, v65                               // 0000000041A4: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 0000000041A8: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 0000000041B0: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 0000000041B8: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 0000000041C0: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 0000000041C8: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 0000000041D0: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 0000000041D8: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[180:187], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 0000000041E0: D3AC0000 0003F7F2 D3AE0820 048301B4
	v_max_f32_e32 v144, v144, v145                             // 0000000041F0: 17212390
	v_max_f32_e32 v146, v146, v147                             // 0000000041F4: 17252792
	v_mov_b32_e32 v145, v144                                   // 0000000041F8: 7F220390
	v_mov_b32_e32 v147, v146                                   // 0000000041FC: 7F260392
	s_nop 0                                                    // 000000004200: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 000000004204: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 000000004208: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 00000000420C: 17212390
	v_max_f32_e32 v145, v146, v147                             // 000000004210: 17232792
	s_waitcnt lgkmcnt(4)                                       // 000000004214: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[150:157], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000004218: D3AC0000 0003F7F2 D3AE0810 04430196
	ds_read_b64_tr_b8 v[174:175], v247 offset:4352             // 000000004228: D9C41100 AE0000F7
	ds_read_b64_tr_b8 v[176:177], v247 offset:5376             // 000000004230: D9C41500 B00000F7
	ds_read_b64_tr_b8 v[178:179], v247 offset:6400             // 000000004238: D9C41900 B20000F7
	ds_read_b64_tr_b8 v[180:181], v247 offset:7424             // 000000004240: D9C41D00 B40000F7
	ds_read_b64_tr_b8 v[182:183], v247 offset:4608             // 000000004248: D9C41200 B60000F7
	ds_read_b64_tr_b8 v[184:185], v247 offset:5632             // 000000004250: D9C41600 B80000F7
	ds_read_b64_tr_b8 v[186:187], v247 offset:6656             // 000000004258: D9C41A00 BA0000F7
	ds_read_b64_tr_b8 v[188:189], v247 offset:7680             // 000000004260: D9C41E00 BC0000F7
	v_max_f32_e32 v146, v144, v145                             // 000000004268: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 00000000426C: 0B2525EE
	v_max_f32_e32 v146, v148, v146                             // 000000004270: 17252594
	v_sub_f32_e32 v147, v146, v148                             // 000000004274: 05272992
	v_cmp_lt_f32_e32 vcc, s89, v147                            // 000000004278: 7C832659
	s_cmp_lg_u64 vcc, 0                                        // 00000000427C: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 000000004280: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 000000004284: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[158:165], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000004288: D3AC0000 0003F7F2 D3AE0800 0403019E
	v_cndmask_b32_e64 v252, v148, v146, s[18:19]               // 000000004298: D10000FC 004B2594
	v_fma_f32 v128, v144, v238, -v252                          // 0000000042A0: D1CB0080 87F3DD90
	v_floor_f32_e32 v128, v128                                 // 0000000042A8: 7F003F80
	v_med3_f32 v128, v128, s98, 0                              // 0000000042AC: D1D60080 0200C580
	v_cvt_i32_f32_e32 v129, v128                               // 0000000042B4: 7F021180
	v_add_u32_e32 v251, 0x7f, v129                             // 0000000042B8: 69F702FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v251                           // 0000000042C0: 2535F697
	v_fma_f32 v129, v145, v238, -v252                          // 0000000042C4: D1CB0081 87F3DD91
	s_waitcnt lgkmcnt(4)                                       // 0000000042CC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[166:173], v[136:143], v[48:63], v242, v149 op_sel_hi:[0,0,0]// 0000000042D0: D3AC0000 00032BF2 D3AE0830 04C311A6
	ds_read_b64_tr_b8 v[156:157], v247 offset:4864             // 0000000042E0: D9C41300 9C0000F7
	ds_read_b64_tr_b8 v[158:159], v247 offset:5888             // 0000000042E8: D9C41700 9E0000F7
	ds_read_b64_tr_b8 v[160:161], v247 offset:6912             // 0000000042F0: D9C41B00 A00000F7
	ds_read_b64_tr_b8 v[162:163], v247 offset:7936             // 0000000042F8: D9C41F00 A20000F7
	v_floor_f32_e32 v129, v129                                 // 000000004300: 7F023F81
	v_med3_f32 v129, v129, s98, 0                              // 000000004304: D1D60081 0200C581
	v_cvt_i32_f32_e32 v130, v129                               // 00000000430C: 7F041181
	v_add_u32_e32 v253, 0x7f, v130                             // 000000004310: 69FB04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v253                           // 000000004318: 2537FA97
	v_mov_b32_e32 v130, s50                                    // 00000000431C: 7F040232
	v_fma_f32 v130, v252, s99, v130                            // 000000004320: D1CB0082 0608C7FC
	v_fma_f32 v152, v128, s99, v130                            // 000000004328: D1CB0098 0608C780
	v_fma_f32 v150, v129, s99, v130                            // 000000004330: D1CB0096 0608C781
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[174:181], v[136:143], v[32:47], v242, v149 op_sel_hi:[0,0,0]// 000000004338: D3AC0000 00032BF2 D3AE0820 048311AE
	s_waitcnt lgkmcnt(0)                                       // 000000004348: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[182:189], v[136:143], v[16:31], v242, v149 op_sel_hi:[0,0,0]// 00000000434C: D3AC0000 00032BF2 D3AE0810 044311B6
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v149 op_sel_hi:[0,0,0]// 00000000435C: D3AC0000 00032BF2 D3AE0800 0403119C
	s_cmp_eq_u32 s21, 0                                        // 00000000436C: BF068015
	s_cbranch_scc1 68                                          // 000000004370: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2984>
	v_sub_f32_e32 v128, v148, v252                             // 000000004374: 0501F994
	v_exp_f32_e32 v128, v128                                   // 000000004378: 7F004180
	s_nop 0                                                    // 00000000437C: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 000000004380: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 000000004388: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000004390: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000004398: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 0000000043A0: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 0000000043A8: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 0000000043B0: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 0000000043B8: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 0000000043C0: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 0000000043C8: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 0000000043D0: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 0000000043D8: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 0000000043E0: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 0000000043E8: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 0000000043F0: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 0000000043F8: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000004400: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000004408: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000004410: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000004418: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000004420: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000004428: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000004430: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 000000004438: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 000000004440: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 000000004448: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 000000004450: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 000000004458: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 000000004460: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 000000004468: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 000000004470: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 000000004478: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 000000004480: 0BF501FA
	s_waitcnt vmcnt(4)                                         // 000000004484: BF8C0F74
	s_barrier                                                  // 000000004488: BF8A0000
	s_add_u32 s42, s42, 1                                      // 00000000448C: 802A812A
	s_add_u32 s18, s42, 1                                      // 000000004490: 8012812A
	s_cmp_ge_u32 s18, s79                                      // 000000004494: BF094F12
	s_cbranch_scc1 1244                                        // 000000004498: BF8504DC <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d0c>
	s_setprio 0                                                // 00000000449C: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 0000000044A0: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 0000000044A8: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 0000000044B0: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 0000000044B8: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 0000000044C0: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 0000000044C8: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 0000000044D0: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 0000000044D8: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 0000000044E0: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 0000000044E8: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 0000000044F0: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 0000000044F8: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 000000004500: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 000000004508: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 000000004510: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 000000004518: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 000000004520: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000004528: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 000000004530: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000004538: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 000000004540: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000004548: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 000000004550: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000004558: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 000000004560: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000004568: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000004570: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 000000004578: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000004580: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 000000004588: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 000000004590: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 000000004598: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 0000000045A0: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 0000000045A8: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 0000000045B0: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 0000000045B8: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 0000000045C0: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 0000000045C8: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 0000000045D0: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 0000000045D8: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 0000000045E0: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 0000000045E8: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 0000000045F0: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 0000000045F8: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 000000004600: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 000000004608: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 000000004610: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 000000004618: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 000000004620: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000004628: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 000000004630: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000004638: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 000000004640: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000004648: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 000000004650: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000004658: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 000000004660: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000004668: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 000000004670: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 000000004678: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 000000004680: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 000000004688: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 000000004690: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 000000004698: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 0000000046A0: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 0000000046A8: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 0000000046B0: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 0000000046B8: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 0000000046C0: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 0000000046C8: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 0000000046D0: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 0000000046D8: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 0000000046E0: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 0000000046E8: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 0000000046F0: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 0000000046F8: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 000000004700: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 000000004708: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 000000004710: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 000000004718: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 000000004720: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000004728: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 000000004730: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000004738: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 000000004740: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000004748: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 000000004750: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000004758: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 000000004760: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000004768: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 000000004770: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 000000004778: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 000000004780: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 000000004788: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 000000004790: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 000000004798: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 0000000047A0: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 0000000047A8: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 0000000047B0: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 0000000047B8: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 0000000047C0: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 0000000047C8: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 0000000047D0: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 0000000047D8: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 0000000047E0: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 0000000047E8: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 0000000047F0: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 0000000047F8: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 000000004800: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 000000004808: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 000000004810: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 000000004818: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000004820: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000004828: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000004830: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000004838: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000004840: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 000000004848: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 000000004850: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 000000004858: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000004860: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 000000004868: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 000000004870: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 000000004878: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 000000004880: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 000000004888: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 000000004890: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 000000004898: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 0000000048A0: 7F320398
	v_mov_b32_e32 v151, v150                                   // 0000000048A4: 7F2E0396
	ds_read_b128 v[72:75], v231 offset:49152                   // 0000000048A8: D9FEC000 480000E7
	ds_read_b128 v[76:79], v231 offset:49168                   // 0000000048B0: D9FEC010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:53248                   // 0000000048B8: D9FED000 500000E7
	ds_read_b128 v[84:87], v231 offset:53264                   // 0000000048C0: D9FED010 540000E7
	s_barrier                                                  // 0000000048C8: BF8A0000
	s_setprio 1                                                // 0000000048CC: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 0000000048D0: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 0000000048D8: D3AD0044 020311C0
	ds_read_b128 v[144:147], v231 offset:57344                 // 0000000048E0: D9FEE000 900000E7
	ds_read_b128 v[148:151], v231 offset:57360                 // 0000000048E8: D9FEE010 940000E7
	ds_read_b128 v[156:159], v231 offset:61440                 // 0000000048F0: D9FEF000 9C0000E7
	ds_read_b128 v[160:163], v231 offset:61456                 // 0000000048F8: D9FEF010 A00000E7
	s_waitcnt lgkmcnt(4)                                       // 000000004900: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 000000004904: D3AE0070 0203B948
	ds_read_b128 v[164:167], v232 offset:49152                 // 00000000490C: D9FEC000 A40000E8
	ds_read_b128 v[168:171], v232 offset:49168                 // 000000004914: D9FEC010 A80000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 00000000491C: D3AE0060 0203B950
	ds_read_b128 v[172:175], v232 offset:53248                 // 000000004924: D9FED000 AC0000E8
	ds_read_b128 v[176:179], v232 offset:53264                 // 00000000492C: D9FED010 B00000E8
	s_waitcnt lgkmcnt(4)                                       // 000000004934: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[144:151], v[220:227], 0// 000000004938: D3AE0050 0203B990
	ds_read_b128 v[146:149], v232 offset:57344                 // 000000004940: D9FEE000 920000E8
	ds_read_b128 v[150:153], v232 offset:57360                 // 000000004948: D9FEE010 960000E8
	s_min_u32 s18, s20, s53                                    // 000000004950: 83923514
	s_add_u32 m0, s88, s35                                     // 000000004954: 807C2358
	s_nop 0                                                    // 000000004958: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 00000000495C: E05D1000 121500E9
	v_mul_f32_e32 v72, v154, v64                               // 000000004964: 0A90819A
	v_add_f32_e32 v72, v250, v72                               // 000000004968: 029091FA
	v_mul_f32_e32 v73, v155, v68                               // 00000000496C: 0A92899B
	v_add_f32_e32 v250, v72, v73                               // 000000004970: 03F49348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[156:163], v[220:227], 0// 000000004974: D3AE0040 0203B99C
	ds_read_b128 v[154:157], v232 offset:61440                 // 00000000497C: D9FEF000 9A0000E8
	ds_read_b128 v[158:161], v232 offset:61456                 // 000000004984: D9FEF010 9E0000E8
	s_add_u32 m0, s88, s12                                     // 00000000498C: 807C0C58
	s_nop 0                                                    // 000000004990: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 000000004994: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 00000000499C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[164:171], v[200:207], v[112:127]// 0000000049A0: D3AE0070 05C391A4
	ds_read_b64_tr_b8 v[162:163], v248                         // 0000000049A8: D9C40000 A20000F8
	ds_read_b64_tr_b8 v[164:165], v248 offset:1024             // 0000000049B0: D9C40400 A40000F8
	ds_read_b64_tr_b8 v[166:167], v248 offset:2048             // 0000000049B8: D9C40800 A60000F8
	ds_read_b64_tr_b8 v[168:169], v248 offset:3072             // 0000000049C0: D9C40C00 A80000F8
	s_min_u32 s18, s17, s53                                    // 0000000049C8: 83923511
	s_add_u32 m0, s88, s92                                     // 0000000049CC: 807C5C58
	s_nop 0                                                    // 0000000049D0: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 0000000049D4: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[172:179], v[200:207], v[96:111]// 0000000049DC: D3AE0060 058391AC
	ds_read_b64_tr_b8 v[170:171], v248 offset:256              // 0000000049E4: D9C40100 AA0000F8
	ds_read_b64_tr_b8 v[172:173], v248 offset:1280             // 0000000049EC: D9C40500 AC0000F8
	ds_read_b64_tr_b8 v[174:175], v248 offset:2304             // 0000000049F4: D9C40900 AE0000F8
	ds_read_b64_tr_b8 v[176:177], v248 offset:3328             // 0000000049FC: D9C40D00 B00000F8
	s_add_u32 m0, s88, s94                                     // 000000004A04: 807C5E58
	s_nop 0                                                    // 000000004A08: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000004A0C: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 000000004A14: 80142114
	s_add_u32 s17, s17, s33                                    // 000000004A18: 80112111
	v_max_f32_e32 v144, v112, v113                             // 000000004A1C: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 000000004A20: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 000000004A28: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 000000004A30: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 000000004A38: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 000000004A40: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 000000004A48: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 000000004A50: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 000000004A58: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[146:153], v[200:207], v[80:95]// 000000004A5C: D3AE0050 05439192
	ds_read_b64_tr_b8 v[178:179], v248 offset:512              // 000000004A64: D9C40200 B20000F8
	ds_read_b64_tr_b8 v[180:181], v248 offset:1536             // 000000004A6C: D9C40600 B40000F8
	ds_read_b64_tr_b8 v[182:183], v248 offset:2560             // 000000004A74: D9C40A00 B60000F8
	ds_read_b64_tr_b8 v[184:185], v248 offset:3584             // 000000004A7C: D9C40E00 B80000F8
	v_max_f32_e32 v145, v96, v97                               // 000000004A84: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 000000004A88: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 000000004A90: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 000000004A98: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 000000004AA0: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 000000004AA8: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 000000004AB0: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 000000004AB8: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[154:161], v[200:207], v[64:79]// 000000004AC0: D3AE0040 0503919A
	s_nop 3                                                    // 000000004AC8: BF800003
	v_max_f32_e32 v146, v80, v81                               // 000000004ACC: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 000000004AD0: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 000000004AD8: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 000000004AE0: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 000000004AE8: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 000000004AF0: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 000000004AF8: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 000000004B00: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 000000004B08: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[162:169], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000004B0C: D3AC0000 0003F7F2 D3AE0830 04C301A2
	ds_read_b64_tr_b8 v[148:149], v248 offset:768              // 000000004B1C: D9C40300 940000F8
	ds_read_b64_tr_b8 v[150:151], v248 offset:1792             // 000000004B24: D9C40700 960000F8
	ds_read_b64_tr_b8 v[152:153], v248 offset:2816             // 000000004B2C: D9C40B00 980000F8
	ds_read_b64_tr_b8 v[154:155], v248 offset:3840             // 000000004B34: D9C40F00 9A0000F8
	ds_read_b64_tr_b8 v[156:157], v248 offset:4096             // 000000004B3C: D9C41000 9C0000F8
	ds_read_b64_tr_b8 v[158:159], v248 offset:5120             // 000000004B44: D9C41400 9E0000F8
	ds_read_b64_tr_b8 v[160:161], v248 offset:6144             // 000000004B4C: D9C41800 A00000F8
	ds_read_b64_tr_b8 v[162:163], v248 offset:7168             // 000000004B54: D9C41C00 A20000F8
	v_max_f32_e32 v147, v64, v65                               // 000000004B5C: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 000000004B60: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 000000004B68: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 000000004B70: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 000000004B78: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 000000004B80: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 000000004B88: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 000000004B90: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[170:177], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000004B98: D3AC0000 0003F7F2 D3AE0820 048301AA
	v_max_f32_e32 v144, v144, v145                             // 000000004BA8: 17212390
	v_max_f32_e32 v146, v146, v147                             // 000000004BAC: 17252792
	v_mov_b32_e32 v145, v144                                   // 000000004BB0: 7F220390
	v_mov_b32_e32 v147, v146                                   // 000000004BB4: 7F260392
	s_nop 0                                                    // 000000004BB8: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 000000004BBC: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 000000004BC0: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 000000004BC4: 17212390
	v_max_f32_e32 v145, v146, v147                             // 000000004BC8: 17232792
	s_waitcnt lgkmcnt(4)                                       // 000000004BCC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[178:185], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000004BD0: D3AC0000 0003F7F2 D3AE0810 044301B2
	ds_read_b64_tr_b8 v[164:165], v248 offset:4352             // 000000004BE0: D9C41100 A40000F8
	ds_read_b64_tr_b8 v[166:167], v248 offset:5376             // 000000004BE8: D9C41500 A60000F8
	ds_read_b64_tr_b8 v[168:169], v248 offset:6400             // 000000004BF0: D9C41900 A80000F8
	ds_read_b64_tr_b8 v[170:171], v248 offset:7424             // 000000004BF8: D9C41D00 AA0000F8
	ds_read_b64_tr_b8 v[172:173], v248 offset:4608             // 000000004C00: D9C41200 AC0000F8
	ds_read_b64_tr_b8 v[174:175], v248 offset:5632             // 000000004C08: D9C41600 AE0000F8
	ds_read_b64_tr_b8 v[176:177], v248 offset:6656             // 000000004C10: D9C41A00 B00000F8
	ds_read_b64_tr_b8 v[178:179], v248 offset:7680             // 000000004C18: D9C41E00 B20000F8
	v_max_f32_e32 v146, v144, v145                             // 000000004C20: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 000000004C24: 0B2525EE
	v_max_f32_e32 v146, v252, v146                             // 000000004C28: 172525FC
	v_sub_f32_e32 v147, v146, v252                             // 000000004C2C: 0527F992
	v_cmp_lt_f32_e32 vcc, s89, v147                            // 000000004C30: 7C832659
	s_cmp_lg_u64 vcc, 0                                        // 000000004C34: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 000000004C38: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 000000004C3C: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[148:155], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000004C40: D3AC0000 0003F7F2 D3AE0800 04030194
	v_cndmask_b32_e64 v148, v252, v146, s[18:19]               // 000000004C50: D1000094 004B25FC
	v_fma_f32 v128, v144, v238, -v148                          // 000000004C58: D1CB0080 8653DD90
	v_floor_f32_e32 v128, v128                                 // 000000004C60: 7F003F80
	v_med3_f32 v128, v128, s98, 0                              // 000000004C64: D1D60080 0200C580
	v_cvt_i32_f32_e32 v129, v128                               // 000000004C6C: 7F021180
	v_add_u32_e32 v251, 0x7f, v129                             // 000000004C70: 69F702FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v251                           // 000000004C78: 2535F697
	v_fma_f32 v129, v145, v238, -v148                          // 000000004C7C: D1CB0081 8653DD91
	s_waitcnt lgkmcnt(4)                                       // 000000004C84: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000004C88: D3AC0000 0003FBF2 D3AE0830 04C3119C
	ds_read_b64_tr_b8 v[156:157], v248 offset:4864             // 000000004C98: D9C41300 9C0000F8
	ds_read_b64_tr_b8 v[158:159], v248 offset:5888             // 000000004CA0: D9C41700 9E0000F8
	ds_read_b64_tr_b8 v[160:161], v248 offset:6912             // 000000004CA8: D9C41B00 A00000F8
	ds_read_b64_tr_b8 v[162:163], v248 offset:7936             // 000000004CB0: D9C41F00 A20000F8
	v_floor_f32_e32 v129, v129                                 // 000000004CB8: 7F023F81
	v_med3_f32 v129, v129, s98, 0                              // 000000004CBC: D1D60081 0200C581
	v_cvt_i32_f32_e32 v130, v129                               // 000000004CC4: 7F041181
	v_add_u32_e32 v149, 0x7f, v130                             // 000000004CC8: 692B04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v149                           // 000000004CD0: 25372A97
	v_mov_b32_e32 v130, s50                                    // 000000004CD4: 7F040232
	v_fma_f32 v130, v148, s99, v130                            // 000000004CD8: D1CB0082 0608C794
	v_fma_f32 v152, v128, s99, v130                            // 000000004CE0: D1CB0098 0608C780
	v_fma_f32 v150, v129, s99, v130                            // 000000004CE8: D1CB0096 0608C781
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000004CF0: D3AC0000 0003FBF2 D3AE0820 048311A4
	s_waitcnt lgkmcnt(0)                                       // 000000004D00: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000004D04: D3AC0000 0003FBF2 D3AE0810 044311AC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000004D14: D3AC0000 0003FBF2 D3AE0800 0403119C
	s_cmp_eq_u32 s21, 0                                        // 000000004D24: BF068015
	s_cbranch_scc1 68                                          // 000000004D28: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x333c>
	v_sub_f32_e32 v128, v252, v148                             // 000000004D2C: 050129FC
	v_exp_f32_e32 v128, v128                                   // 000000004D30: 7F004180
	s_nop 0                                                    // 000000004D34: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 000000004D38: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 000000004D40: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000004D48: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000004D50: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000004D58: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000004D60: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000004D68: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000004D70: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000004D78: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000004D80: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000004D88: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000004D90: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000004D98: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000004DA0: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000004DA8: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000004DB0: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000004DB8: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000004DC0: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000004DC8: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000004DD0: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000004DD8: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000004DE0: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000004DE8: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 000000004DF0: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 000000004DF8: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 000000004E00: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 000000004E08: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 000000004E10: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 000000004E18: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 000000004E20: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 000000004E28: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 000000004E30: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 000000004E38: 0BF501FA
	s_waitcnt vmcnt(4)                                         // 000000004E3C: BF8C0F74
	s_barrier                                                  // 000000004E40: BF8A0000
	s_add_u32 s42, s42, 1                                      // 000000004E44: 802A812A
	s_add_u32 s18, s42, 1                                      // 000000004E48: 8012812A
	s_cmp_ge_u32 s18, s79                                      // 000000004E4C: BF094F12
	s_cbranch_scc1 620                                         // 000000004E50: BF85026C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d04>
	s_setprio 0                                                // 000000004E54: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000004E58: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 000000004E60: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 000000004E68: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 000000004E70: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 000000004E78: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 000000004E80: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 000000004E88: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 000000004E90: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 000000004E98: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 000000004EA0: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 000000004EA8: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 000000004EB0: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 000000004EB8: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 000000004EC0: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 000000004EC8: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 000000004ED0: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 000000004ED8: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000004EE0: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 000000004EE8: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000004EF0: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 000000004EF8: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000004F00: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 000000004F08: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000004F10: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 000000004F18: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000004F20: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000004F28: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 000000004F30: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000004F38: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 000000004F40: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 000000004F48: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 000000004F50: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 000000004F58: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 000000004F60: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 000000004F68: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 000000004F70: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 000000004F78: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 000000004F80: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 000000004F88: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 000000004F90: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 000000004F98: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 000000004FA0: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 000000004FA8: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 000000004FB0: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 000000004FB8: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 000000004FC0: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 000000004FC8: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 000000004FD0: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 000000004FD8: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000004FE0: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 000000004FE8: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000004FF0: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 000000004FF8: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000005000: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 000000005008: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000005010: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 000000005018: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000005020: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 000000005028: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 000000005030: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 000000005038: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 000000005040: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 000000005048: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 000000005050: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 000000005058: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 000000005060: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 000000005068: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 000000005070: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 000000005078: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 000000005080: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 000000005088: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 000000005090: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 000000005098: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 0000000050A0: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 0000000050A8: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 0000000050B0: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 0000000050B8: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 0000000050C0: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 0000000050C8: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 0000000050D0: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 0000000050D8: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 0000000050E0: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 0000000050E8: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 0000000050F0: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 0000000050F8: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000005100: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 000000005108: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000005110: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 000000005118: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000005120: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 000000005128: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 000000005130: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 000000005138: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 000000005140: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 000000005148: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 000000005150: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 000000005158: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000005160: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 000000005168: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 000000005170: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 000000005178: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 000000005180: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 000000005188: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 000000005190: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 000000005198: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 0000000051A0: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 0000000051A8: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 0000000051B0: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 0000000051B8: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 0000000051C0: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 0000000051C8: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 0000000051D0: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 0000000051D8: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 0000000051E0: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 0000000051E8: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 0000000051F0: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 0000000051F8: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 000000005200: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 000000005208: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 000000005210: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000005218: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 000000005220: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 000000005228: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 000000005230: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 000000005238: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 000000005240: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 000000005248: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 000000005250: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 000000005258: 7F320398
	v_mov_b32_e32 v151, v150                                   // 00000000525C: 7F2E0396
	ds_read_b128 v[72:75], v231                                // 000000005260: D9FE0000 480000E7
	ds_read_b128 v[76:79], v231 offset:16                      // 000000005268: D9FE0010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:4096                    // 000000005270: D9FE1000 500000E7
	ds_read_b128 v[84:87], v231 offset:4112                    // 000000005278: D9FE1010 540000E7
	s_barrier                                                  // 000000005280: BF8A0000
	s_setprio 1                                                // 000000005284: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 000000005288: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 000000005290: D3AD0044 020311C0
	ds_read_b128 v[156:159], v231 offset:8192                  // 000000005298: D9FE2000 9C0000E7
	ds_read_b128 v[160:163], v231 offset:8208                  // 0000000052A0: D9FE2010 A00000E7
	ds_read_b128 v[164:167], v231 offset:12288                 // 0000000052A8: D9FE3000 A40000E7
	ds_read_b128 v[168:171], v231 offset:12304                 // 0000000052B0: D9FE3010 A80000E7
	s_waitcnt lgkmcnt(4)                                       // 0000000052B8: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 0000000052BC: D3AE0070 0203B948
	ds_read_b128 v[172:175], v232                              // 0000000052C4: D9FE0000 AC0000E8
	ds_read_b128 v[176:179], v232 offset:16                    // 0000000052CC: D9FE0010 B00000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 0000000052D4: D3AE0060 0203B950
	ds_read_b128 v[180:183], v232 offset:4096                  // 0000000052DC: D9FE1000 B40000E8
	ds_read_b128 v[184:187], v232 offset:4112                  // 0000000052E4: D9FE1010 B80000E8
	s_waitcnt lgkmcnt(4)                                       // 0000000052EC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[156:163], v[220:227], 0// 0000000052F0: D3AE0050 0203B99C
	ds_read_b128 v[156:159], v232 offset:8192                  // 0000000052F8: D9FE2000 9C0000E8
	ds_read_b128 v[160:163], v232 offset:8208                  // 000000005300: D9FE2010 A00000E8
	s_min_u32 s18, s20, s53                                    // 000000005308: 83923514
	s_add_u32 m0, s88, s13                                     // 00000000530C: 807C0D58
	s_nop 0                                                    // 000000005310: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000005314: E05D1000 121500E9
	v_mul_f32_e32 v72, v154, v64                               // 00000000531C: 0A90819A
	v_add_f32_e32 v72, v250, v72                               // 000000005320: 029091FA
	v_mul_f32_e32 v73, v155, v68                               // 000000005324: 0A92899B
	v_add_f32_e32 v250, v72, v73                               // 000000005328: 03F49348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[164:171], v[220:227], 0// 00000000532C: D3AE0040 0203B9A4
	ds_read_b128 v[164:167], v232 offset:12288                 // 000000005334: D9FE3000 A40000E8
	ds_read_b128 v[168:171], v232 offset:12304                 // 00000000533C: D9FE3010 A80000E8
	s_add_u32 m0, s88, s6                                      // 000000005344: 807C0658
	s_nop 0                                                    // 000000005348: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 00000000534C: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 000000005354: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[172:179], v[200:207], v[112:127]// 000000005358: D3AE0070 05C391AC
	ds_read_b64_tr_b8 v[172:173], v249                         // 000000005360: D9C40000 AC0000F9
	ds_read_b64_tr_b8 v[174:175], v249 offset:1024             // 000000005368: D9C40400 AE0000F9
	ds_read_b64_tr_b8 v[176:177], v249 offset:2048             // 000000005370: D9C40800 B00000F9
	ds_read_b64_tr_b8 v[178:179], v249 offset:3072             // 000000005378: D9C40C00 B20000F9
	s_min_u32 s18, s17, s53                                    // 000000005380: 83923511
	s_add_u32 m0, s88, s93                                     // 000000005384: 807C5D58
	s_nop 0                                                    // 000000005388: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 00000000538C: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[180:187], v[200:207], v[96:111]// 000000005394: D3AE0060 058391B4
	ds_read_b64_tr_b8 v[180:181], v249 offset:256              // 00000000539C: D9C40100 B40000F9
	ds_read_b64_tr_b8 v[182:183], v249 offset:1280             // 0000000053A4: D9C40500 B60000F9
	ds_read_b64_tr_b8 v[184:185], v249 offset:2304             // 0000000053AC: D9C40900 B80000F9
	ds_read_b64_tr_b8 v[186:187], v249 offset:3328             // 0000000053B4: D9C40D00 BA0000F9
	s_add_u32 m0, s88, s76                                     // 0000000053BC: 807C4C58
	s_nop 0                                                    // 0000000053C0: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 0000000053C4: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 0000000053CC: 80142114
	s_add_u32 s17, s17, s33                                    // 0000000053D0: 80112111
	v_max_f32_e32 v144, v112, v113                             // 0000000053D4: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 0000000053D8: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 0000000053E0: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 0000000053E8: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 0000000053F0: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 0000000053F8: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 000000005400: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 000000005408: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 000000005410: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[156:163], v[200:207], v[80:95]// 000000005414: D3AE0050 0543919C
	ds_read_b64_tr_b8 v[150:151], v249 offset:512              // 00000000541C: D9C40200 960000F9
	ds_read_b64_tr_b8 v[152:153], v249 offset:1536             // 000000005424: D9C40600 980000F9
	ds_read_b64_tr_b8 v[154:155], v249 offset:2560             // 00000000542C: D9C40A00 9A0000F9
	ds_read_b64_tr_b8 v[156:157], v249 offset:3584             // 000000005434: D9C40E00 9C0000F9
	v_max_f32_e32 v145, v96, v97                               // 00000000543C: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 000000005440: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 000000005448: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 000000005450: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 000000005458: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 000000005460: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 000000005468: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 000000005470: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[164:171], v[200:207], v[64:79]// 000000005478: D3AE0040 050391A4
	s_nop 3                                                    // 000000005480: BF800003
	v_max_f32_e32 v146, v80, v81                               // 000000005484: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 000000005488: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 000000005490: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 000000005498: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 0000000054A0: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 0000000054A8: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 0000000054B0: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 0000000054B8: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 0000000054C0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[172:179], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 0000000054C4: D3AC0000 0003F7F2 D3AE0830 04C301AC
	ds_read_b64_tr_b8 v[158:159], v249 offset:768              // 0000000054D4: D9C40300 9E0000F9
	ds_read_b64_tr_b8 v[160:161], v249 offset:1792             // 0000000054DC: D9C40700 A00000F9
	ds_read_b64_tr_b8 v[162:163], v249 offset:2816             // 0000000054E4: D9C40B00 A20000F9
	ds_read_b64_tr_b8 v[164:165], v249 offset:3840             // 0000000054EC: D9C40F00 A40000F9
	ds_read_b64_tr_b8 v[166:167], v249 offset:4096             // 0000000054F4: D9C41000 A60000F9
	ds_read_b64_tr_b8 v[168:169], v249 offset:5120             // 0000000054FC: D9C41400 A80000F9
	ds_read_b64_tr_b8 v[170:171], v249 offset:6144             // 000000005504: D9C41800 AA0000F9
	ds_read_b64_tr_b8 v[172:173], v249 offset:7168             // 00000000550C: D9C41C00 AC0000F9
	v_max_f32_e32 v147, v64, v65                               // 000000005514: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 000000005518: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 000000005520: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 000000005528: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 000000005530: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 000000005538: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 000000005540: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 000000005548: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[180:187], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000005550: D3AC0000 0003F7F2 D3AE0820 048301B4
	v_max_f32_e32 v144, v144, v145                             // 000000005560: 17212390
	v_max_f32_e32 v146, v146, v147                             // 000000005564: 17252792
	v_mov_b32_e32 v145, v144                                   // 000000005568: 7F220390
	v_mov_b32_e32 v147, v146                                   // 00000000556C: 7F260392
	s_nop 0                                                    // 000000005570: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 000000005574: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 000000005578: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 00000000557C: 17212390
	v_max_f32_e32 v145, v146, v147                             // 000000005580: 17232792
	s_waitcnt lgkmcnt(4)                                       // 000000005584: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[150:157], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000005588: D3AC0000 0003F7F2 D3AE0810 04430196
	ds_read_b64_tr_b8 v[174:175], v249 offset:4352             // 000000005598: D9C41100 AE0000F9
	ds_read_b64_tr_b8 v[176:177], v249 offset:5376             // 0000000055A0: D9C41500 B00000F9
	ds_read_b64_tr_b8 v[178:179], v249 offset:6400             // 0000000055A8: D9C41900 B20000F9
	ds_read_b64_tr_b8 v[180:181], v249 offset:7424             // 0000000055B0: D9C41D00 B40000F9
	ds_read_b64_tr_b8 v[182:183], v249 offset:4608             // 0000000055B8: D9C41200 B60000F9
	ds_read_b64_tr_b8 v[184:185], v249 offset:5632             // 0000000055C0: D9C41600 B80000F9
	ds_read_b64_tr_b8 v[186:187], v249 offset:6656             // 0000000055C8: D9C41A00 BA0000F9
	ds_read_b64_tr_b8 v[188:189], v249 offset:7680             // 0000000055D0: D9C41E00 BC0000F9
	v_max_f32_e32 v146, v144, v145                             // 0000000055D8: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 0000000055DC: 0B2525EE
	v_max_f32_e32 v146, v148, v146                             // 0000000055E0: 17252594
	v_sub_f32_e32 v147, v146, v148                             // 0000000055E4: 05272992
	v_cmp_lt_f32_e32 vcc, s89, v147                            // 0000000055E8: 7C832659
	s_cmp_lg_u64 vcc, 0                                        // 0000000055EC: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 0000000055F0: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 0000000055F4: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[158:165], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 0000000055F8: D3AC0000 0003F7F2 D3AE0800 0403019E
	v_cndmask_b32_e64 v252, v148, v146, s[18:19]               // 000000005608: D10000FC 004B2594
	v_fma_f32 v128, v144, v238, -v252                          // 000000005610: D1CB0080 87F3DD90
	v_floor_f32_e32 v128, v128                                 // 000000005618: 7F003F80
	v_med3_f32 v128, v128, s98, 0                              // 00000000561C: D1D60080 0200C580
	v_cvt_i32_f32_e32 v129, v128                               // 000000005624: 7F021180
	v_add_u32_e32 v251, 0x7f, v129                             // 000000005628: 69F702FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v251                           // 000000005630: 2535F697
	v_fma_f32 v129, v145, v238, -v252                          // 000000005634: D1CB0081 87F3DD91
	s_waitcnt lgkmcnt(4)                                       // 00000000563C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[166:173], v[136:143], v[48:63], v242, v149 op_sel_hi:[0,0,0]// 000000005640: D3AC0000 00032BF2 D3AE0830 04C311A6
	ds_read_b64_tr_b8 v[156:157], v249 offset:4864             // 000000005650: D9C41300 9C0000F9
	ds_read_b64_tr_b8 v[158:159], v249 offset:5888             // 000000005658: D9C41700 9E0000F9
	ds_read_b64_tr_b8 v[160:161], v249 offset:6912             // 000000005660: D9C41B00 A00000F9
	ds_read_b64_tr_b8 v[162:163], v249 offset:7936             // 000000005668: D9C41F00 A20000F9
	v_floor_f32_e32 v129, v129                                 // 000000005670: 7F023F81
	v_med3_f32 v129, v129, s98, 0                              // 000000005674: D1D60081 0200C581
	v_cvt_i32_f32_e32 v130, v129                               // 00000000567C: 7F041181
	v_add_u32_e32 v253, 0x7f, v130                             // 000000005680: 69FB04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v253                           // 000000005688: 2537FA97
	v_mov_b32_e32 v130, s50                                    // 00000000568C: 7F040232
	v_fma_f32 v130, v252, s99, v130                            // 000000005690: D1CB0082 0608C7FC
	v_fma_f32 v152, v128, s99, v130                            // 000000005698: D1CB0098 0608C780
	v_fma_f32 v150, v129, s99, v130                            // 0000000056A0: D1CB0096 0608C781
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[174:181], v[136:143], v[32:47], v242, v149 op_sel_hi:[0,0,0]// 0000000056A8: D3AC0000 00032BF2 D3AE0820 048311AE
	s_waitcnt lgkmcnt(0)                                       // 0000000056B8: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[182:189], v[136:143], v[16:31], v242, v149 op_sel_hi:[0,0,0]// 0000000056BC: D3AC0000 00032BF2 D3AE0810 044311B6
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v149 op_sel_hi:[0,0,0]// 0000000056CC: D3AC0000 00032BF2 D3AE0800 0403119C
	s_cmp_eq_u32 s21, 0                                        // 0000000056DC: BF068015
	s_cbranch_scc1 68                                          // 0000000056E0: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3cf4>
	v_sub_f32_e32 v128, v148, v252                             // 0000000056E4: 0501F994
	v_exp_f32_e32 v128, v128                                   // 0000000056E8: 7F004180
	s_nop 0                                                    // 0000000056EC: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 0000000056F0: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 0000000056F8: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000005700: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000005708: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000005710: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000005718: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000005720: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000005728: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000005730: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000005738: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000005740: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000005748: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000005750: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000005758: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000005760: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000005768: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000005770: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000005778: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000005780: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000005788: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000005790: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000005798: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 0000000057A0: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 0000000057A8: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 0000000057B0: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 0000000057B8: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 0000000057C0: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 0000000057C8: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 0000000057D0: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 0000000057D8: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 0000000057E0: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 0000000057E8: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 0000000057F0: 0BF501FA
	s_waitcnt vmcnt(4)                                         // 0000000057F4: BF8C0F74
	s_barrier                                                  // 0000000057F8: BF8A0000
	s_add_u32 s42, s42, 1                                      // 0000000057FC: 802A812A
	s_branch 63047                                             // 000000005800: BF82F647 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1620>
	v_mov_b32_e32 v253, v149                                   // 000000005804: 7FFA0395
	v_mov_b32_e32 v252, v148                                   // 000000005808: 7FF80394
	s_add_u32 s17, s42, s78                                    // 00000000580C: 80114E2A
	s_bitcmp1_b32 s17, 0                                       // 000000005810: BF0D8011
	s_cbranch_scc1 1539                                        // 000000005814: BF850603 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5524>
	s_branch 5                                                 // 000000005818: BF820005 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d30>
	v_mov_b32_e32 v253, v149                                   // 00000000581C: 7FFA0395
	v_mov_b32_e32 v252, v148                                   // 000000005820: 7FF80394
	s_add_u32 s17, s42, s78                                    // 000000005824: 80114E2A
	s_bitcmp1_b32 s17, 0                                       // 000000005828: BF0D8011
	s_cbranch_scc1 1533                                        // 00000000582C: BF8505FD <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5524>
	s_add_u32 s17, s42, 1                                      // 000000005830: 8011812A
	s_cmp_ge_u32 s17, s96                                      // 000000005834: BF096011
	s_cbranch_scc1 3064                                        // 000000005838: BF850BF8 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6d1c>
	s_cmp_ge_u32 s42, s79                                      // 00000000583C: BF094F2A
	s_cbranch_scc1 1074                                        // 000000005840: BF850432 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4e0c>
	s_setprio 0                                                // 000000005844: BF8F0000
	v_fma_f32 v108, v108, v239, v152                           // 000000005848: D1CB006C 0663DF6C
	v_fma_f32 v64, v64, v239, v150                             // 000000005850: D1CB0040 065BDF40
	v_fma_f32 v68, v68, v239, v150                             // 000000005858: D1CB0044 065BDF44
	s_add_u32 s17, s42, s78                                    // 000000005860: 80114E2A
	v_fma_f32 v96, v96, v239, v152                             // 000000005864: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 00000000586C: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 000000005874: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 00000000587C: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 000000005884: D1CB0068 0663DF68
	v_fma_f32 v109, v109, v239, v152                           // 00000000588C: D1CB006D 0663DF6D
	v_fma_f32 v80, v80, v239, v150                             // 000000005894: D1CB0050 065BDF50
	v_fma_f32 v65, v65, v239, v150                             // 00000000589C: D1CB0041 065BDF41
	v_fma_f32 v84, v84, v239, v150                             // 0000000058A4: D1CB0054 065BDF54
	v_fma_f32 v69, v69, v239, v150                             // 0000000058AC: D1CB0045 065BDF45
	v_fma_f32 v72, v72, v239, v150                             // 0000000058B4: D1CB0048 065BDF48
	v_fma_f32 v92, v92, v239, v150                             // 0000000058BC: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 0000000058C4: D1DD006C 0201016C
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 0000000058CC: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 0000000058D4: D1DD0044 02010144
	s_add_u32 s18, s17, 1                                      // 0000000058DC: 80128111
	v_fma_f32 v97, v97, v239, v152                             // 0000000058E0: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 0000000058E8: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 0000000058F0: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 0000000058F8: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 000000005900: D1CB0069 0663DF69
	v_fma_f32 v110, v110, v239, v152                           // 000000005908: D1CB006E 0663DF6E
	v_fma_f32 v81, v81, v239, v150                             // 000000005910: D1CB0051 065BDF51
	v_fma_f32 v66, v66, v239, v150                             // 000000005918: D1CB0042 065BDF42
	v_fma_f32 v85, v85, v239, v150                             // 000000005920: D1CB0055 065BDF55
	v_fma_f32 v70, v70, v239, v150                             // 000000005928: D1CB0046 065BDF46
	v_fma_f32 v88, v88, v239, v150                             // 000000005930: D1CB0058 065BDF58
	v_fma_f32 v73, v73, v239, v150                             // 000000005938: D1CB0049 065BDF49
	v_fma_f32 v93, v93, v239, v150                             // 000000005940: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000005948: D1DD0060 02010160
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000005950: D1DD0074 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000005958: D1DD0064 02010164
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000005960: D1DD0078 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000005968: D1DD0068 02010168
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000005970: D1DD0050 02010150
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000005978: D1DD0054 02010154
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000005980: D1DD0048 02010148
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000005988: D1DD005C 0201015C
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 000000005990: D1DD006C 05B1036D
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000005998: D1DD0040 05010341
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 0000000059A0: D1DD0044 05110345
	s_and_b32 s18, s18, 3                                      // 0000000059A8: 86128312
	v_fma_f32 v98, v98, v239, v152                             // 0000000059AC: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 0000000059B4: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 0000000059BC: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 0000000059C4: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 0000000059CC: D1CB006A 0663DF6A
	v_fma_f32 v111, v111, v239, v152                           // 0000000059D4: D1CB006F 0663DF6F
	v_fma_f32 v82, v82, v239, v150                             // 0000000059DC: D1CB0052 065BDF52
	v_fma_f32 v86, v86, v239, v150                             // 0000000059E4: D1CB0056 065BDF56
	v_fma_f32 v71, v71, v239, v150                             // 0000000059EC: D1CB0047 065BDF47
	v_fma_f32 v89, v89, v239, v150                             // 0000000059F4: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 0000000059FC: D1DD0058 02010158
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000005A04: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v116                         // 000000005A0C: D1DD0061 05D10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 000000005A14: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v120                        // 000000005A1C: D1DD0065 05E10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 000000005A24: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000005A2C: D1DD0050 05410351
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 000000005A34: D1DD0041 05510355
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 000000005A3C: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v93, 1, v92                           // 000000005A44: D1DD0049 0571035D
	v_cvt_pk_u8_f32 v93, v110, 2, v108                         // 000000005A4C: D1DD005D 05B1056E
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000005A54: D1DD0040 05010542
	v_cvt_pk_u8_f32 v66, v70, 2, v68                           // 000000005A5C: D1DD0042 05110546
	s_lshl_b32 s18, s18, 14                                    // 000000005A64: 8E128E12
	v_fma_f32 v99, v99, v239, v152                             // 000000005A68: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 000000005A70: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 000000005A78: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 000000005A80: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 000000005A88: D1CB006B 0663DF6B
	v_fma_f32 v83, v83, v239, v150                             // 000000005A90: D1CB0053 065BDF53
	v_fma_f32 v87, v87, v239, v150                             // 000000005A98: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 000000005AA0: D1DD0045 05610359
	v_cvt_pk_u8_f32 v81, v98, 2, v96                           // 000000005AA8: D1DD0051 05810562
	v_cvt_pk_u8_f32 v84, v118, 2, v97                          // 000000005AB0: D1DD0054 05850576
	v_cvt_pk_u8_f32 v85, v102, 2, v100                         // 000000005AB8: D1DD0055 05910566
	v_cvt_pk_u8_f32 v88, v122, 2, v101                         // 000000005AC0: D1DD0058 0595057A
	v_cvt_pk_u8_f32 v89, v106, 2, v104                         // 000000005AC8: D1DD0059 05A1056A
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000005AD0: D1DD0050 05410552
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 000000005AD8: D1DD0041 05050556
	v_cvt_pk_u8_f32 v215, v111, 3, v93                         // 000000005AE0: D1DD00D7 0575076F
	v_cvt_pk_u8_f32 v93, v71, 3, v66                           // 000000005AE8: D1DD005D 05090747
	v_or_b32_e32 v71, s18, v231                                // 000000005AF0: 288FCE12
	v_cvt_pk_u8_f32 v212, v99, 3, v81                          // 000000005AF4: D1DD00D4 05450763
	v_cvt_pk_u8_f32 v209, v119, 3, v84                         // 000000005AFC: D1DD00D1 05510777
	v_cvt_pk_u8_f32 v213, v103, 3, v85                         // 000000005B04: D1DD00D5 05550767
	v_cvt_pk_u8_f32 v210, v123, 3, v88                         // 000000005B0C: D1DD00D2 0561077B
	v_cvt_pk_u8_f32 v214, v107, 3, v89                         // 000000005B14: D1DD00D6 0565076B
	v_cvt_pk_u8_f32 v88, v83, 3, v80                           // 000000005B1C: D1DD0058 05410753
	v_cvt_pk_u8_f32 v89, v87, 3, v65                           // 000000005B24: D1DD0059 05050757
	ds_read_b128 v[80:83], v71                                 // 000000005B2C: D9FE0000 50000047
	ds_read_b128 v[84:87], v71 offset:16                       // 000000005B34: D9FE0010 54000047
	ds_read_b128 v[96:99], v71 offset:4096                     // 000000005B3C: D9FE1000 60000047
	ds_read_b128 v[100:103], v71 offset:4112                   // 000000005B44: D9FE1010 64000047
	v_fma_f32 v112, v112, v239, v152                           // 000000005B4C: D1CB0070 0663DF70
	v_fma_f32 v124, v124, v239, v152                           // 000000005B54: D1CB007C 0663DF7C
	v_fma_f32 v113, v113, v239, v152                           // 000000005B5C: D1CB0071 0663DF71
	v_fma_f32 v125, v125, v239, v152                           // 000000005B64: D1CB007D 0663DF7D
	v_fma_f32 v76, v76, v239, v150                             // 000000005B6C: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000005B74: D1DD0070 02010170
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000005B7C: D1DD007C 0201017C
	v_fma_f32 v114, v114, v239, v152                           // 000000005B84: D1CB0072 0663DF72
	v_fma_f32 v126, v126, v239, v152                           // 000000005B8C: D1CB007E 0663DF7E
	v_fma_f32 v77, v77, v239, v150                             // 000000005B94: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000005B9C: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000005BA4: D1DD0070 05C10371
	v_cvt_pk_u8_f32 v105, v125, 1, v124                        // 000000005BAC: D1DD0069 05F1037D
	v_fma_f32 v115, v115, v239, v152                           // 000000005BB4: D1CB0073 0663DF73
	v_fma_f32 v127, v127, v239, v152                           // 000000005BBC: D1CB007F 0663DF7F
	v_fma_f32 v90, v90, v239, v150                             // 000000005BC4: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 000000005BCC: D1CB004A 065BDF4A
	v_fma_f32 v94, v94, v239, v150                             // 000000005BD4: D1CB005E 065BDF5E
	v_fma_f32 v78, v78, v239, v150                             // 000000005BDC: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v76, v77, 1, v76                           // 000000005BE4: D1DD004C 0531034D
	v_cvt_pk_u8_f32 v77, v114, 2, v112                         // 000000005BEC: D1DD004D 05C10572
	v_cvt_pk_u8_f32 v92, v126, 2, v105                         // 000000005BF4: D1DD005C 05A5057E
	v_fma_f32 v67, v67, v239, v150                             // 000000005BFC: D1CB0043 065BDF43
	v_fma_f32 v91, v91, v239, v150                             // 000000005C04: D1CB005B 065BDF5B
	v_fma_f32 v75, v75, v239, v150                             // 000000005C0C: D1CB004B 065BDF4B
	v_fma_f32 v95, v95, v239, v150                             // 000000005C14: D1CB005F 065BDF5F
	v_fma_f32 v79, v79, v239, v150                             // 000000005C1C: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v68, v90, 2, v69                           // 000000005C24: D1DD0044 0515055A
	v_cvt_pk_u8_f32 v69, v74, 2, v72                           // 000000005C2C: D1DD0045 0521054A
	v_cvt_pk_u8_f32 v70, v94, 2, v73                           // 000000005C34: D1DD0046 0525055E
	v_cvt_pk_u8_f32 v72, v78, 2, v76                           // 000000005C3C: D1DD0048 0531054E
	v_cvt_pk_u8_f32 v208, v115, 3, v77                         // 000000005C44: D1DD00D0 05350773
	v_cvt_pk_u8_f32 v211, v127, 3, v92                         // 000000005C4C: D1DD00D3 0571077F
	v_cvt_pk_u8_f32 v92, v67, 3, v64                           // 000000005C54: D1DD005C 05010743
	v_cvt_pk_u8_f32 v90, v91, 3, v68                           // 000000005C5C: D1DD005A 0511075B
	v_cvt_pk_u8_f32 v94, v75, 3, v69                           // 000000005C64: D1DD005E 0515074B
	v_cvt_pk_u8_f32 v91, v95, 3, v70                           // 000000005C6C: D1DD005B 0519075F
	v_cvt_pk_u8_f32 v95, v79, 3, v72                           // 000000005C74: D1DD005F 0521074F
	s_barrier                                                  // 000000005C7C: BF8A0000
	s_and_b32 s17, s17, 3                                      // 000000005C80: 86118311
	s_setprio 1                                                // 000000005C84: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[208:215], 0// 000000005C88: D3AD0040 0203A1C0
	scratch_store_dwordx4 off, v[88:91], off                   // 000000005C90: DC7C4000 007F5800
	s_nop 0                                                    // 000000005C98: BF800000
	scratch_store_dwordx4 off, v[92:95], off offset:16         // 000000005C9C: DC7C4010 007F5C00
	v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[192:199], v[88:95], 0// 000000005CA4: D3AD0042 0202B1C0
	s_nop 3                                                    // 000000005CAC: BF800003
	v_mul_f32_e32 v64, v154, v64                               // 000000005CB0: 0A80819A
	v_add_f32_e32 v64, v250, v64                               // 000000005CB4: 028081FA
	s_nop 5                                                    // 000000005CB8: BF800005
	v_mul_f32_e32 v65, v155, v66                               // 000000005CBC: 0A82859B
	v_add_f32_e32 v250, v64, v65                               // 000000005CC0: 03F48340
	ds_read_b128 v[88:91], v71 offset:8192                     // 000000005CC4: D9FE2000 58000047
	ds_read_b128 v[92:95], v71 offset:8208                     // 000000005CCC: D9FE2010 5C000047
	ds_read_b128 v[104:107], v71 offset:12288                  // 000000005CD4: D9FE3000 68000047
	ds_read_b128 v[108:111], v71 offset:12304                  // 000000005CDC: D9FE3010 6C000047
	s_waitcnt lgkmcnt(4)                                       // 000000005CE4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[80:87], v[220:227], 0// 000000005CE8: D3AE00B0 0203B950
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[96:103], v[220:227], 0// 000000005CF0: D3AE00A0 0203B960
	v_or_b32_e32 v64, s18, v232                                // 000000005CF8: 2881D012
	ds_read_b128 v[66:69], v64                                 // 000000005CFC: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 000000005D04: D9FE0010 46000040
	ds_read_b128 v[74:77], v64 offset:4096                     // 000000005D0C: D9FE1000 4A000040
	ds_read_b128 v[78:81], v64 offset:4112                     // 000000005D14: D9FE1010 4E000040
	s_waitcnt lgkmcnt(4)                                       // 000000005D1C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[88:95], v[220:227], 0// 000000005D20: D3AE0090 0203B958
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[104:111], v[220:227], 0// 000000005D28: D3AE0080 0203B968
	ds_read_b128 v[82:85], v64 offset:8192                     // 000000005D30: D9FE2000 52000040
	ds_read_b128 v[86:89], v64 offset:8208                     // 000000005D38: D9FE2010 56000040
	ds_read_b128 v[112:115], v64 offset:12288                  // 000000005D40: D9FE3000 70000040
	ds_read_b128 v[116:119], v64 offset:12304                  // 000000005D48: D9FE3010 74000040
	s_add_u32 s18, s42, 4                                      // 000000005D50: 8012842A
	s_cmp_ge_u32 s18, s96                                      // 000000005D54: BF096012
	s_cbranch_scc1 13                                          // 000000005D58: BF85000D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4290>
	s_lshl_b32 s19, s17, 14                                    // 000000005D5C: 8E138E11
	s_or_b32 s19, s19, s88                                     // 000000005D60: 87135813
	s_mul_i32 s18, s18, s8                                     // 000000005D64: 92120812
	s_lshl_b32 s18, s18, 7                                     // 000000005D68: 8E128712
	s_mov_b32 m0, s19                                          // 000000005D6C: BEFC0013
	s_nop 0                                                    // 000000005D70: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000005D74: E05D1000 121500E9
	s_or_b32 m0, s19, 0x2000                                   // 000000005D7C: 877CFF13 00002000
	s_nop 0                                                    // 000000005D84: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 000000005D88: E05D1000 121500EA
	s_add_u32 s18, s42, 2                                      // 000000005D90: 8012822A
	s_cmp_ge_u32 s18, s96                                      // 000000005D94: BF096012
	s_cbranch_scc1 14                                          // 000000005D98: BF85000E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x42d4>
	s_xor_b32 s19, s17, 2                                      // 000000005D9C: 88138211
	s_lshl_b32 s19, s19, 14                                    // 000000005DA0: 8E138E13
	s_or_b32 s19, s19, s88                                     // 000000005DA4: 87135813
	s_mul_i32 s18, s18, s8                                     // 000000005DA8: 92120812
	s_or_b32 m0, s19, 0x10000                                  // 000000005DAC: 877CFF13 00010000
	s_lshl_b32 s18, s18, 7                                     // 000000005DB4: 8E128712
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000005DB8: E05D1000 121400EB
	s_or_b32 m0, s19, 0x12000                                  // 000000005DC0: 877CFF13 00012000
	s_nop 0                                                    // 000000005DC8: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000005DCC: E05D1000 121400EC
	s_waitcnt lgkmcnt(4)                                       // 000000005DD4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[66:73], v[200:207], v[176:191]// 000000005DD8: D3AE00B0 06C39142
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[74:81], v[200:207], v[160:175]// 000000005DE0: D3AE00A0 0683914A
	s_nop 15                                                   // 000000005DE8: BF80000F
	s_nop 3                                                    // 000000005DEC: BF800003
	v_mov_b64_e32 v[96:97], v[160:161]                         // 000000005DF0: 7EC071A0
	v_mov_b64_e32 v[98:99], v[162:163]                         // 000000005DF4: 7EC471A2
	v_mov_b64_e32 v[100:101], v[164:165]                       // 000000005DF8: 7EC871A4
	v_mov_b64_e32 v[102:103], v[166:167]                       // 000000005DFC: 7ECC71A6
	v_mov_b64_e32 v[104:105], v[168:169]                       // 000000005E00: 7ED071A8
	v_mov_b64_e32 v[106:107], v[170:171]                       // 000000005E04: 7ED471AA
	v_mov_b64_e32 v[108:109], v[172:173]                       // 000000005E08: 7ED871AC
	v_mov_b64_e32 v[110:111], v[174:175]                       // 000000005E0C: 7EDC71AE
	s_waitcnt lgkmcnt(0)                                       // 000000005E10: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[82:89], v[200:207], v[144:159]// 000000005E14: D3AE0090 06439152
	s_nop 15                                                   // 000000005E1C: BF80000F
	s_nop 3                                                    // 000000005E20: BF800003
	v_mov_b64_e32 v[80:81], v[144:145]                         // 000000005E24: 7EA07190
	v_mov_b64_e32 v[82:83], v[146:147]                         // 000000005E28: 7EA47192
	v_mov_b64_e32 v[84:85], v[148:149]                         // 000000005E2C: 7EA87194
	v_mov_b64_e32 v[86:87], v[150:151]                         // 000000005E30: 7EAC7196
	v_mov_b64_e32 v[88:89], v[152:153]                         // 000000005E34: 7EB07198
	v_mov_b64_e32 v[90:91], v[154:155]                         // 000000005E38: 7EB4719A
	v_mov_b64_e32 v[92:93], v[156:157]                         // 000000005E3C: 7EB8719C
	v_mov_b64_e32 v[94:95], v[158:159]                         // 000000005E40: 7EBC719E
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[112:119], v[200:207], v[128:143]// 000000005E44: D3AE0080 06039170
	s_nop 15                                                   // 000000005E4C: BF80000F
	s_nop 3                                                    // 000000005E50: BF800003
	v_mov_b64_e32 v[64:65], v[128:129]                         // 000000005E54: 7E807180
	v_mov_b64_e32 v[66:67], v[130:131]                         // 000000005E58: 7E847182
	v_mov_b64_e32 v[68:69], v[132:133]                         // 000000005E5C: 7E887184
	v_mov_b64_e32 v[70:71], v[134:135]                         // 000000005E60: 7E8C7186
	v_mov_b64_e32 v[72:73], v[136:137]                         // 000000005E64: 7E907188
	v_mov_b64_e32 v[74:75], v[138:139]                         // 000000005E68: 7E94718A
	v_mov_b64_e32 v[76:77], v[140:141]                         // 000000005E6C: 7E98718C
	v_mov_b64_e32 v[78:79], v[142:143]                         // 000000005E70: 7E9C718E
	s_lshl_b32 s18, s42, 7                                     // 000000005E74: 8E12872A
	s_add_u32 s20, s18, 0x80                                   // 000000005E78: 8014FF12 00000080
	s_sub_u32 s18, s3, s20                                     // 000000005E80: 80921403
	s_sub_i32 s18, s18, 0                                      // 000000005E84: 81928012
	s_cmp_ge_i32 s18, 32                                       // 000000005E88: BF03A012
	v_mov_b64_e32 v[112:113], v[176:177]                       // 000000005E8C: 7EE071B0
	v_mov_b64_e32 v[114:115], v[178:179]                       // 000000005E90: 7EE471B2
	v_mov_b64_e32 v[116:117], v[180:181]                       // 000000005E94: 7EE871B4
	v_mov_b64_e32 v[118:119], v[182:183]                       // 000000005E98: 7EEC71B6
	v_mov_b64_e32 v[120:121], v[184:185]                       // 000000005E9C: 7EF071B8
	v_mov_b64_e32 v[122:123], v[186:187]                       // 000000005EA0: 7EF471BA
	v_mov_b64_e32 v[124:125], v[188:189]                       // 000000005EA4: 7EF871BC
	v_mov_b64_e32 v[126:127], v[190:191]                       // 000000005EA8: 7EFC71BE
	s_cbranch_scc1 90                                          // 000000005EAC: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4518>
	s_mov_b32 s53, s52                                         // 000000005EB0: BEB50034
	s_mov_b32 s54, s52                                         // 000000005EB4: BEB60034
	s_mov_b32 s55, s52                                         // 000000005EB8: BEB70034
	s_mov_b32 s56, s52                                         // 000000005EBC: BEB80034
	s_mov_b32 s57, s52                                         // 000000005EC0: BEB90034
	s_mov_b32 s58, s52                                         // 000000005EC4: BEBA0034
	s_mov_b32 s59, s52                                         // 000000005EC8: BEBB0034
	s_mov_b32 s60, s52                                         // 000000005ECC: BEBC0034
	s_mov_b32 s61, s52                                         // 000000005ED0: BEBD0034
	s_mov_b32 s62, s52                                         // 000000005ED4: BEBE0034
	s_mov_b32 s63, s52                                         // 000000005ED8: BEBF0034
	s_mov_b32 s64, s52                                         // 000000005EDC: BEC00034
	s_mov_b32 s65, s52                                         // 000000005EE0: BEC10034
	s_mov_b32 s66, s52                                         // 000000005EE4: BEC20034
	s_mov_b32 s67, s52                                         // 000000005EE8: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000005EEC: BF048012
	v_mov_b64_e32 v[126:127], s[66:67]                         // 000000005EF0: 7EFC7042
	v_mov_b64_e32 v[124:125], s[64:65]                         // 000000005EF4: 7EF87040
	v_mov_b64_e32 v[122:123], s[62:63]                         // 000000005EF8: 7EF4703E
	v_mov_b64_e32 v[120:121], s[60:61]                         // 000000005EFC: 7EF0703C
	v_mov_b64_e32 v[118:119], s[58:59]                         // 000000005F00: 7EEC703A
	v_mov_b64_e32 v[116:117], s[56:57]                         // 000000005F04: 7EE87038
	v_mov_b64_e32 v[114:115], s[54:55]                         // 000000005F08: 7EE47036
	v_mov_b64_e32 v[112:113], s[52:53]                         // 000000005F0C: 7EE07034
	s_cbranch_scc1 65                                          // 000000005F10: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4518>
	v_add_u32_e32 v127, s18, v243                              // 000000005F14: 68FFE612
	v_cmp_gt_i32_e32 vcc, 0, v127                              // 000000005F18: 7D88FE80
	s_nop 1                                                    // 000000005F1C: BF800001
	v_cndmask_b32_e64 v112, v176, v240, vcc                    // 000000005F20: D1000070 01ABE1B0
	v_cmp_gt_i32_e32 vcc, 1, v127                              // 000000005F28: 7D88FE81
	s_nop 1                                                    // 000000005F2C: BF800001
	v_cndmask_b32_e64 v113, v177, v240, vcc                    // 000000005F30: D1000071 01ABE1B1
	v_cmp_gt_i32_e32 vcc, 2, v127                              // 000000005F38: 7D88FE82
	s_nop 1                                                    // 000000005F3C: BF800001
	v_cndmask_b32_e64 v114, v178, v240, vcc                    // 000000005F40: D1000072 01ABE1B2
	v_cmp_gt_i32_e32 vcc, 3, v127                              // 000000005F48: 7D88FE83
	s_nop 1                                                    // 000000005F4C: BF800001
	v_cndmask_b32_e64 v115, v179, v240, vcc                    // 000000005F50: D1000073 01ABE1B3
	v_cmp_gt_i32_e32 vcc, 8, v127                              // 000000005F58: 7D88FE88
	s_nop 1                                                    // 000000005F5C: BF800001
	v_cndmask_b32_e64 v116, v180, v240, vcc                    // 000000005F60: D1000074 01ABE1B4
	v_cmp_gt_i32_e32 vcc, 9, v127                              // 000000005F68: 7D88FE89
	s_nop 1                                                    // 000000005F6C: BF800001
	v_cndmask_b32_e64 v117, v181, v240, vcc                    // 000000005F70: D1000075 01ABE1B5
	v_cmp_gt_i32_e32 vcc, 10, v127                             // 000000005F78: 7D88FE8A
	s_nop 1                                                    // 000000005F7C: BF800001
	v_cndmask_b32_e64 v118, v182, v240, vcc                    // 000000005F80: D1000076 01ABE1B6
	v_cmp_gt_i32_e32 vcc, 11, v127                             // 000000005F88: 7D88FE8B
	s_nop 1                                                    // 000000005F8C: BF800001
	v_cndmask_b32_e64 v119, v183, v240, vcc                    // 000000005F90: D1000077 01ABE1B7
	v_cmp_gt_i32_e32 vcc, 16, v127                             // 000000005F98: 7D88FE90
	s_nop 1                                                    // 000000005F9C: BF800001
	v_cndmask_b32_e64 v120, v184, v240, vcc                    // 000000005FA0: D1000078 01ABE1B8
	v_cmp_gt_i32_e32 vcc, 17, v127                             // 000000005FA8: 7D88FE91
	s_nop 1                                                    // 000000005FAC: BF800001
	v_cndmask_b32_e64 v121, v185, v240, vcc                    // 000000005FB0: D1000079 01ABE1B9
	v_cmp_gt_i32_e32 vcc, 18, v127                             // 000000005FB8: 7D88FE92
	s_nop 1                                                    // 000000005FBC: BF800001
	v_cndmask_b32_e64 v122, v186, v240, vcc                    // 000000005FC0: D100007A 01ABE1BA
	v_cmp_gt_i32_e32 vcc, 19, v127                             // 000000005FC8: 7D88FE93
	s_nop 1                                                    // 000000005FCC: BF800001
	v_cndmask_b32_e64 v123, v187, v240, vcc                    // 000000005FD0: D100007B 01ABE1BB
	v_cmp_gt_i32_e32 vcc, 24, v127                             // 000000005FD8: 7D88FE98
	s_nop 1                                                    // 000000005FDC: BF800001
	v_cndmask_b32_e64 v124, v188, v240, vcc                    // 000000005FE0: D100007C 01ABE1BC
	v_cmp_gt_i32_e32 vcc, 25, v127                             // 000000005FE8: 7D88FE99
	s_nop 1                                                    // 000000005FEC: BF800001
	v_cndmask_b32_e64 v125, v189, v240, vcc                    // 000000005FF0: D100007D 01ABE1BD
	v_cmp_gt_i32_e32 vcc, 26, v127                             // 000000005FF8: 7D88FE9A
	s_nop 1                                                    // 000000005FFC: BF800001
	v_cndmask_b32_e64 v126, v190, v240, vcc                    // 000000006000: D100007E 01ABE1BE
	v_cmp_gt_i32_e32 vcc, 27, v127                             // 000000006008: 7D88FE9B
	s_nop 1                                                    // 00000000600C: BF800001
	v_cndmask_b32_e64 v127, v191, v240, vcc                    // 000000006010: D100007F 01ABE1BF
	s_sub_u32 s18, s3, s20                                     // 000000006018: 80921403
	s_sub_i32 s18, s18, 32                                     // 00000000601C: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 000000006020: BF03A012
	s_cbranch_scc1 90                                          // 000000006024: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4690>
	s_mov_b32 s53, s52                                         // 000000006028: BEB50034
	s_mov_b32 s54, s52                                         // 00000000602C: BEB60034
	s_mov_b32 s55, s52                                         // 000000006030: BEB70034
	s_mov_b32 s56, s52                                         // 000000006034: BEB80034
	s_mov_b32 s57, s52                                         // 000000006038: BEB90034
	s_mov_b32 s58, s52                                         // 00000000603C: BEBA0034
	s_mov_b32 s59, s52                                         // 000000006040: BEBB0034
	s_mov_b32 s60, s52                                         // 000000006044: BEBC0034
	s_mov_b32 s61, s52                                         // 000000006048: BEBD0034
	s_mov_b32 s62, s52                                         // 00000000604C: BEBE0034
	s_mov_b32 s63, s52                                         // 000000006050: BEBF0034
	s_mov_b32 s64, s52                                         // 000000006054: BEC00034
	s_mov_b32 s65, s52                                         // 000000006058: BEC10034
	s_mov_b32 s66, s52                                         // 00000000605C: BEC20034
	s_mov_b32 s67, s52                                         // 000000006060: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000006064: BF048012
	v_mov_b64_e32 v[110:111], s[66:67]                         // 000000006068: 7EDC7042
	v_mov_b64_e32 v[108:109], s[64:65]                         // 00000000606C: 7ED87040
	v_mov_b64_e32 v[106:107], s[62:63]                         // 000000006070: 7ED4703E
	v_mov_b64_e32 v[104:105], s[60:61]                         // 000000006074: 7ED0703C
	v_mov_b64_e32 v[102:103], s[58:59]                         // 000000006078: 7ECC703A
	v_mov_b64_e32 v[100:101], s[56:57]                         // 00000000607C: 7EC87038
	v_mov_b64_e32 v[98:99], s[54:55]                           // 000000006080: 7EC47036
	v_mov_b64_e32 v[96:97], s[52:53]                           // 000000006084: 7EC07034
	s_cbranch_scc1 65                                          // 000000006088: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4690>
	v_add_u32_e32 v111, s18, v243                              // 00000000608C: 68DFE612
	v_cmp_gt_i32_e32 vcc, 0, v111                              // 000000006090: 7D88DE80
	s_nop 1                                                    // 000000006094: BF800001
	v_cndmask_b32_e64 v96, v160, v240, vcc                     // 000000006098: D1000060 01ABE1A0
	v_cmp_gt_i32_e32 vcc, 1, v111                              // 0000000060A0: 7D88DE81
	s_nop 1                                                    // 0000000060A4: BF800001
	v_cndmask_b32_e64 v97, v161, v240, vcc                     // 0000000060A8: D1000061 01ABE1A1
	v_cmp_gt_i32_e32 vcc, 2, v111                              // 0000000060B0: 7D88DE82
	s_nop 1                                                    // 0000000060B4: BF800001
	v_cndmask_b32_e64 v98, v162, v240, vcc                     // 0000000060B8: D1000062 01ABE1A2
	v_cmp_gt_i32_e32 vcc, 3, v111                              // 0000000060C0: 7D88DE83
	s_nop 1                                                    // 0000000060C4: BF800001
	v_cndmask_b32_e64 v99, v163, v240, vcc                     // 0000000060C8: D1000063 01ABE1A3
	v_cmp_gt_i32_e32 vcc, 8, v111                              // 0000000060D0: 7D88DE88
	s_nop 1                                                    // 0000000060D4: BF800001
	v_cndmask_b32_e64 v100, v164, v240, vcc                    // 0000000060D8: D1000064 01ABE1A4
	v_cmp_gt_i32_e32 vcc, 9, v111                              // 0000000060E0: 7D88DE89
	s_nop 1                                                    // 0000000060E4: BF800001
	v_cndmask_b32_e64 v101, v165, v240, vcc                    // 0000000060E8: D1000065 01ABE1A5
	v_cmp_gt_i32_e32 vcc, 10, v111                             // 0000000060F0: 7D88DE8A
	s_nop 1                                                    // 0000000060F4: BF800001
	v_cndmask_b32_e64 v102, v166, v240, vcc                    // 0000000060F8: D1000066 01ABE1A6
	v_cmp_gt_i32_e32 vcc, 11, v111                             // 000000006100: 7D88DE8B
	s_nop 1                                                    // 000000006104: BF800001
	v_cndmask_b32_e64 v103, v167, v240, vcc                    // 000000006108: D1000067 01ABE1A7
	v_cmp_gt_i32_e32 vcc, 16, v111                             // 000000006110: 7D88DE90
	s_nop 1                                                    // 000000006114: BF800001
	v_cndmask_b32_e64 v104, v168, v240, vcc                    // 000000006118: D1000068 01ABE1A8
	v_cmp_gt_i32_e32 vcc, 17, v111                             // 000000006120: 7D88DE91
	s_nop 1                                                    // 000000006124: BF800001
	v_cndmask_b32_e64 v105, v169, v240, vcc                    // 000000006128: D1000069 01ABE1A9
	v_cmp_gt_i32_e32 vcc, 18, v111                             // 000000006130: 7D88DE92
	s_nop 1                                                    // 000000006134: BF800001
	v_cndmask_b32_e64 v106, v170, v240, vcc                    // 000000006138: D100006A 01ABE1AA
	v_cmp_gt_i32_e32 vcc, 19, v111                             // 000000006140: 7D88DE93
	s_nop 1                                                    // 000000006144: BF800001
	v_cndmask_b32_e64 v107, v171, v240, vcc                    // 000000006148: D100006B 01ABE1AB
	v_cmp_gt_i32_e32 vcc, 24, v111                             // 000000006150: 7D88DE98
	s_nop 1                                                    // 000000006154: BF800001
	v_cndmask_b32_e64 v108, v172, v240, vcc                    // 000000006158: D100006C 01ABE1AC
	v_cmp_gt_i32_e32 vcc, 25, v111                             // 000000006160: 7D88DE99
	s_nop 1                                                    // 000000006164: BF800001
	v_cndmask_b32_e64 v109, v173, v240, vcc                    // 000000006168: D100006D 01ABE1AD
	v_cmp_gt_i32_e32 vcc, 26, v111                             // 000000006170: 7D88DE9A
	s_nop 1                                                    // 000000006174: BF800001
	v_cndmask_b32_e64 v110, v174, v240, vcc                    // 000000006178: D100006E 01ABE1AE
	v_cmp_gt_i32_e32 vcc, 27, v111                             // 000000006180: 7D88DE9B
	s_nop 1                                                    // 000000006184: BF800001
	v_cndmask_b32_e64 v111, v175, v240, vcc                    // 000000006188: D100006F 01ABE1AF
	s_sub_u32 s18, s3, s20                                     // 000000006190: 80921403
	s_sub_i32 s18, s18, 64                                     // 000000006194: 8192C012
	scratch_load_dwordx4 v[164:167], off, off                  // 000000006198: DC5C4000 A47F0000
	scratch_load_dwordx4 v[168:171], off, off offset:16        // 0000000061A0: DC5C4010 A87F0000
	s_cmp_ge_i32 s18, 32                                       // 0000000061A8: BF03A012
	s_cbranch_scc1 90                                          // 0000000061AC: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4818>
	s_mov_b32 s53, s52                                         // 0000000061B0: BEB50034
	s_mov_b32 s54, s52                                         // 0000000061B4: BEB60034
	s_mov_b32 s55, s52                                         // 0000000061B8: BEB70034
	s_mov_b32 s56, s52                                         // 0000000061BC: BEB80034
	s_mov_b32 s57, s52                                         // 0000000061C0: BEB90034
	s_mov_b32 s58, s52                                         // 0000000061C4: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000061C8: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000061CC: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000061D0: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000061D4: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000061D8: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000061DC: BEC00034
	s_mov_b32 s65, s52                                         // 0000000061E0: BEC10034
	s_mov_b32 s66, s52                                         // 0000000061E4: BEC20034
	s_mov_b32 s67, s52                                         // 0000000061E8: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 0000000061EC: BF048012
	v_mov_b64_e32 v[94:95], s[66:67]                           // 0000000061F0: 7EBC7042
	v_mov_b64_e32 v[92:93], s[64:65]                           // 0000000061F4: 7EB87040
	v_mov_b64_e32 v[90:91], s[62:63]                           // 0000000061F8: 7EB4703E
	v_mov_b64_e32 v[88:89], s[60:61]                           // 0000000061FC: 7EB0703C
	v_mov_b64_e32 v[86:87], s[58:59]                           // 000000006200: 7EAC703A
	v_mov_b64_e32 v[84:85], s[56:57]                           // 000000006204: 7EA87038
	v_mov_b64_e32 v[82:83], s[54:55]                           // 000000006208: 7EA47036
	v_mov_b64_e32 v[80:81], s[52:53]                           // 00000000620C: 7EA07034
	s_cbranch_scc1 65                                          // 000000006210: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4818>
	v_add_u32_e32 v95, s18, v243                               // 000000006214: 68BFE612
	v_cmp_gt_i32_e32 vcc, 0, v95                               // 000000006218: 7D88BE80
	s_nop 1                                                    // 00000000621C: BF800001
	v_cndmask_b32_e64 v80, v144, v240, vcc                     // 000000006220: D1000050 01ABE190
	v_cmp_gt_i32_e32 vcc, 1, v95                               // 000000006228: 7D88BE81
	s_nop 1                                                    // 00000000622C: BF800001
	v_cndmask_b32_e64 v81, v145, v240, vcc                     // 000000006230: D1000051 01ABE191
	v_cmp_gt_i32_e32 vcc, 2, v95                               // 000000006238: 7D88BE82
	s_nop 1                                                    // 00000000623C: BF800001
	v_cndmask_b32_e64 v82, v146, v240, vcc                     // 000000006240: D1000052 01ABE192
	v_cmp_gt_i32_e32 vcc, 3, v95                               // 000000006248: 7D88BE83
	s_nop 1                                                    // 00000000624C: BF800001
	v_cndmask_b32_e64 v83, v147, v240, vcc                     // 000000006250: D1000053 01ABE193
	v_cmp_gt_i32_e32 vcc, 8, v95                               // 000000006258: 7D88BE88
	s_nop 1                                                    // 00000000625C: BF800001
	v_cndmask_b32_e64 v84, v148, v240, vcc                     // 000000006260: D1000054 01ABE194
	v_cmp_gt_i32_e32 vcc, 9, v95                               // 000000006268: 7D88BE89
	s_nop 1                                                    // 00000000626C: BF800001
	v_cndmask_b32_e64 v85, v149, v240, vcc                     // 000000006270: D1000055 01ABE195
	v_cmp_gt_i32_e32 vcc, 10, v95                              // 000000006278: 7D88BE8A
	s_nop 1                                                    // 00000000627C: BF800001
	v_cndmask_b32_e64 v86, v150, v240, vcc                     // 000000006280: D1000056 01ABE196
	v_cmp_gt_i32_e32 vcc, 11, v95                              // 000000006288: 7D88BE8B
	s_nop 1                                                    // 00000000628C: BF800001
	v_cndmask_b32_e64 v87, v151, v240, vcc                     // 000000006290: D1000057 01ABE197
	v_cmp_gt_i32_e32 vcc, 16, v95                              // 000000006298: 7D88BE90
	s_nop 1                                                    // 00000000629C: BF800001
	v_cndmask_b32_e64 v88, v152, v240, vcc                     // 0000000062A0: D1000058 01ABE198
	v_cmp_gt_i32_e32 vcc, 17, v95                              // 0000000062A8: 7D88BE91
	s_nop 1                                                    // 0000000062AC: BF800001
	v_cndmask_b32_e64 v89, v153, v240, vcc                     // 0000000062B0: D1000059 01ABE199
	v_cmp_gt_i32_e32 vcc, 18, v95                              // 0000000062B8: 7D88BE92
	s_nop 1                                                    // 0000000062BC: BF800001
	v_cndmask_b32_e64 v90, v154, v240, vcc                     // 0000000062C0: D100005A 01ABE19A
	v_cmp_gt_i32_e32 vcc, 19, v95                              // 0000000062C8: 7D88BE93
	s_nop 1                                                    // 0000000062CC: BF800001
	v_cndmask_b32_e64 v91, v155, v240, vcc                     // 0000000062D0: D100005B 01ABE19B
	v_cmp_gt_i32_e32 vcc, 24, v95                              // 0000000062D8: 7D88BE98
	s_nop 1                                                    // 0000000062DC: BF800001
	v_cndmask_b32_e64 v92, v156, v240, vcc                     // 0000000062E0: D100005C 01ABE19C
	v_cmp_gt_i32_e32 vcc, 25, v95                              // 0000000062E8: 7D88BE99
	s_nop 1                                                    // 0000000062EC: BF800001
	v_cndmask_b32_e64 v93, v157, v240, vcc                     // 0000000062F0: D100005D 01ABE19D
	v_cmp_gt_i32_e32 vcc, 26, v95                              // 0000000062F8: 7D88BE9A
	s_nop 1                                                    // 0000000062FC: BF800001
	v_cndmask_b32_e64 v94, v158, v240, vcc                     // 000000006300: D100005E 01ABE19E
	v_cmp_gt_i32_e32 vcc, 27, v95                              // 000000006308: 7D88BE9B
	s_nop 1                                                    // 00000000630C: BF800001
	v_cndmask_b32_e64 v95, v159, v240, vcc                     // 000000006310: D100005F 01ABE19F
	s_sub_u32 s18, s3, s20                                     // 000000006318: 80921403
	s_sub_i32 s18, s18, 0x60                                   // 00000000631C: 8192FF12 00000060
	s_cmp_ge_i32 s18, 32                                       // 000000006324: BF03A012
	s_cbranch_scc1 90                                          // 000000006328: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4994>
	s_mov_b32 s53, s52                                         // 00000000632C: BEB50034
	s_mov_b32 s54, s52                                         // 000000006330: BEB60034
	s_mov_b32 s55, s52                                         // 000000006334: BEB70034
	s_mov_b32 s56, s52                                         // 000000006338: BEB80034
	s_mov_b32 s57, s52                                         // 00000000633C: BEB90034
	s_mov_b32 s58, s52                                         // 000000006340: BEBA0034
	s_mov_b32 s59, s52                                         // 000000006344: BEBB0034
	s_mov_b32 s60, s52                                         // 000000006348: BEBC0034
	s_mov_b32 s61, s52                                         // 00000000634C: BEBD0034
	s_mov_b32 s62, s52                                         // 000000006350: BEBE0034
	s_mov_b32 s63, s52                                         // 000000006354: BEBF0034
	s_mov_b32 s64, s52                                         // 000000006358: BEC00034
	s_mov_b32 s65, s52                                         // 00000000635C: BEC10034
	s_mov_b32 s66, s52                                         // 000000006360: BEC20034
	s_mov_b32 s67, s52                                         // 000000006364: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000006368: BF048012
	v_mov_b64_e32 v[78:79], s[66:67]                           // 00000000636C: 7E9C7042
	v_mov_b64_e32 v[76:77], s[64:65]                           // 000000006370: 7E987040
	v_mov_b64_e32 v[74:75], s[62:63]                           // 000000006374: 7E94703E
	v_mov_b64_e32 v[72:73], s[60:61]                           // 000000006378: 7E90703C
	v_mov_b64_e32 v[70:71], s[58:59]                           // 00000000637C: 7E8C703A
	v_mov_b64_e32 v[68:69], s[56:57]                           // 000000006380: 7E887038
	v_mov_b64_e32 v[66:67], s[54:55]                           // 000000006384: 7E847036
	v_mov_b64_e32 v[64:65], s[52:53]                           // 000000006388: 7E807034
	s_cbranch_scc1 65                                          // 00000000638C: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4994>
	v_add_u32_e32 v79, s18, v243                               // 000000006390: 689FE612
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 000000006394: 7D889E80
	s_nop 1                                                    // 000000006398: BF800001
	v_cndmask_b32_e64 v64, v128, v240, vcc                     // 00000000639C: D1000040 01ABE180
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 0000000063A4: 7D889E81
	s_nop 1                                                    // 0000000063A8: BF800001
	v_cndmask_b32_e64 v65, v129, v240, vcc                     // 0000000063AC: D1000041 01ABE181
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 0000000063B4: 7D889E82
	s_nop 1                                                    // 0000000063B8: BF800001
	v_cndmask_b32_e64 v66, v130, v240, vcc                     // 0000000063BC: D1000042 01ABE182
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 0000000063C4: 7D889E83
	s_nop 1                                                    // 0000000063C8: BF800001
	v_cndmask_b32_e64 v67, v131, v240, vcc                     // 0000000063CC: D1000043 01ABE183
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 0000000063D4: 7D889E88
	s_nop 1                                                    // 0000000063D8: BF800001
	v_cndmask_b32_e64 v68, v132, v240, vcc                     // 0000000063DC: D1000044 01ABE184
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 0000000063E4: 7D889E89
	s_nop 1                                                    // 0000000063E8: BF800001
	v_cndmask_b32_e64 v69, v133, v240, vcc                     // 0000000063EC: D1000045 01ABE185
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 0000000063F4: 7D889E8A
	s_nop 1                                                    // 0000000063F8: BF800001
	v_cndmask_b32_e64 v70, v134, v240, vcc                     // 0000000063FC: D1000046 01ABE186
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 000000006404: 7D889E8B
	s_nop 1                                                    // 000000006408: BF800001
	v_cndmask_b32_e64 v71, v135, v240, vcc                     // 00000000640C: D1000047 01ABE187
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 000000006414: 7D889E90
	s_nop 1                                                    // 000000006418: BF800001
	v_cndmask_b32_e64 v72, v136, v240, vcc                     // 00000000641C: D1000048 01ABE188
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 000000006424: 7D889E91
	s_nop 1                                                    // 000000006428: BF800001
	v_cndmask_b32_e64 v73, v137, v240, vcc                     // 00000000642C: D1000049 01ABE189
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 000000006434: 7D889E92
	s_nop 1                                                    // 000000006438: BF800001
	v_cndmask_b32_e64 v74, v138, v240, vcc                     // 00000000643C: D100004A 01ABE18A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 000000006444: 7D889E93
	s_nop 1                                                    // 000000006448: BF800001
	v_cndmask_b32_e64 v75, v139, v240, vcc                     // 00000000644C: D100004B 01ABE18B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 000000006454: 7D889E98
	s_nop 1                                                    // 000000006458: BF800001
	v_cndmask_b32_e64 v76, v140, v240, vcc                     // 00000000645C: D100004C 01ABE18C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 000000006464: 7D889E99
	s_nop 1                                                    // 000000006468: BF800001
	v_cndmask_b32_e64 v77, v141, v240, vcc                     // 00000000646C: D100004D 01ABE18D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 000000006474: 7D889E9A
	s_nop 1                                                    // 000000006478: BF800001
	v_cndmask_b32_e64 v78, v142, v240, vcc                     // 00000000647C: D100004E 01ABE18E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 000000006484: 7D889E9B
	s_nop 1                                                    // 000000006488: BF800001
	v_cndmask_b32_e64 v79, v143, v240, vcc                     // 00000000648C: D100004F 01ABE18F
	v_max_f32_e32 v128, v112, v113                             // 000000006494: 1700E370
	v_max3_f32 v128, v114, v115, v128                          // 000000006498: D1D30080 0602E772
	v_max3_f32 v128, v116, v117, v128                          // 0000000064A0: D1D30080 0602EB74
	v_max3_f32 v128, v118, v119, v128                          // 0000000064A8: D1D30080 0602EF76
	v_max3_f32 v128, v120, v121, v128                          // 0000000064B0: D1D30080 0602F378
	v_max3_f32 v128, v122, v123, v128                          // 0000000064B8: D1D30080 0602F77A
	v_max3_f32 v128, v124, v125, v128                          // 0000000064C0: D1D30080 0602FB7C
	v_max3_f32 v129, v126, v127, v128                          // 0000000064C8: D1D30081 0602FF7E
	v_max_f32_e32 v128, v96, v97                               // 0000000064D0: 1700C360
	v_max3_f32 v128, v98, v99, v128                            // 0000000064D4: D1D30080 0602C762
	v_max3_f32 v128, v100, v101, v128                          // 0000000064DC: D1D30080 0602CB64
	v_max3_f32 v128, v102, v103, v128                          // 0000000064E4: D1D30080 0602CF66
	v_max3_f32 v128, v104, v105, v128                          // 0000000064EC: D1D30080 0602D368
	v_max3_f32 v128, v106, v107, v128                          // 0000000064F4: D1D30080 0602D76A
	v_max3_f32 v128, v108, v109, v128                          // 0000000064FC: D1D30080 0602DB6C
	v_max3_f32 v130, v110, v111, v128                          // 000000006504: D1D30082 0602DF6E
	v_max_f32_e32 v128, v80, v81                               // 00000000650C: 1700A350
	v_max3_f32 v128, v82, v83, v128                            // 000000006510: D1D30080 0602A752
	v_max3_f32 v128, v84, v85, v128                            // 000000006518: D1D30080 0602AB54
	v_max3_f32 v128, v86, v87, v128                            // 000000006520: D1D30080 0602AF56
	v_max3_f32 v128, v88, v89, v128                            // 000000006528: D1D30080 0602B358
	v_max3_f32 v128, v90, v91, v128                            // 000000006530: D1D30080 0602B75A
	v_max3_f32 v128, v92, v93, v128                            // 000000006538: D1D30080 0602BB5C
	v_max3_f32 v128, v94, v95, v128                            // 000000006540: D1D30080 0602BF5E
	v_max_f32_e32 v131, v64, v65                               // 000000006548: 17068340
	v_max3_f32 v131, v66, v67, v131                            // 00000000654C: D1D30083 060E8742
	v_max3_f32 v131, v68, v69, v131                            // 000000006554: D1D30083 060E8B44
	v_max3_f32 v131, v70, v71, v131                            // 00000000655C: D1D30083 060E8F46
	v_max3_f32 v131, v72, v73, v131                            // 000000006564: D1D30083 060E9348
	v_max3_f32 v131, v74, v75, v131                            // 00000000656C: D1D30083 060E974A
	v_max3_f32 v131, v76, v77, v131                            // 000000006574: D1D30083 060E9B4C
	v_max3_f32 v131, v78, v79, v131                            // 00000000657C: D1D30083 060E9F4E
	v_max_f32_e32 v128, v128, v131                             // 000000006584: 17010780
	v_max_f32_e32 v130, v129, v130                             // 000000006588: 17050581
	v_mov_b32_e32 v131, v130                                   // 00000000658C: 7F060382
	s_nop 1                                                    // 000000006590: BF800001
	v_permlane32_swap_b32_e32 v130, v131                       // 000000006594: 7F04B583
	v_mov_b32_e32 v129, v128                                   // 000000006598: 7F020380
	s_nop 1                                                    // 00000000659C: BF800001
	v_permlane32_swap_b32_e32 v128, v129                       // 0000000065A0: 7F00B581
	v_max_f32_e32 v128, v128, v129                             // 0000000065A4: 17010380
	v_max_f32_e32 v130, v130, v131                             // 0000000065A8: 17050782
	v_max_f32_e32 v129, v130, v128                             // 0000000065AC: 17030182
	v_mul_f32_e32 v129, v238, v129                             // 0000000065B0: 0B0303EE
	v_max_f32_e32 v129, v252, v129                             // 0000000065B4: 170303FC
	v_sub_f32_e32 v131, v129, v252                             // 0000000065B8: 0507F981
	v_cmp_lt_f32_e32 vcc, s89, v131                            // 0000000065BC: 7C830659
	s_cmp_lg_u64 vcc, 0                                        // 0000000065C0: BF13806A
	s_cselect_b32 s18, 1, 0                                    // 0000000065C4: 85128081
	s_cselect_b64 s[18:19], -1, 0                              // 0000000065C8: 859280C1
	v_cndmask_b32_e64 v129, v252, v129, s[18:19]               // 0000000065CC: D1000081 004B03FC
	v_fma_f32 v130, v130, v238, -v129                          // 0000000065D4: D1CB0082 8607DD82
	v_floor_f32_e32 v130, v130                                 // 0000000065DC: 7F043F82
	v_med3_f32 v132, v130, s98, 0                              // 0000000065E0: D1D60084 0200C582
	v_cvt_i32_f32_e32 v130, v132                               // 0000000065E8: 7F041184
	v_add_u32_e32 v130, 0x7f, v130                             // 0000000065EC: 690504FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v130                           // 0000000065F4: 25350497
	v_fma_f32 v128, v128, v238, -v129                          // 0000000065F8: D1CB0080 8607DD80
	v_floor_f32_e32 v128, v128                                 // 000000006600: 7F003F80
	v_med3_f32 v128, v128, s98, 0                              // 000000006604: D1D60080 0200C580
	v_cvt_i32_f32_e32 v131, v128                               // 00000000660C: 7F061180
	v_add_u32_e32 v131, 0x7f, v131                             // 000000006610: 690706FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v131                           // 000000006618: 25370697
	v_mov_b32_e32 v133, s50                                    // 00000000661C: 7F0A0232
	v_fma_f32 v133, v129, s99, v133                            // 000000006620: D1CB0085 0614C781
	v_fma_f32 v152, v132, s99, v133                            // 000000006628: D1CB0098 0614C784
	v_fma_f32 v150, v128, s99, v133                            // 000000006630: D1CB0096 0614C780
	v_lshl_or_b32 v128, s17, 14, v245                          // 000000006638: D2000080 07D51C11
	v_add3_u32 v128, v244, v128, s92                           // 000000006640: D1FF0080 017301F4
	s_waitcnt vmcnt(2)                                         // 000000006648: BF8C0F72
	ds_read_b64_tr_b8 v[132:133], v128                         // 00000000664C: D9C40000 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:1024             // 000000006654: D9C40400 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:2048             // 00000000665C: D9C40800 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:3072             // 000000006664: D9C40C00 8A000080
	ds_read_b64_tr_b8 v[140:141], v128 offset:256              // 00000000666C: D9C40100 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:1280             // 000000006674: D9C40500 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:2304             // 00000000667C: D9C40900 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:3328             // 000000006684: D9C40D00 92000080
	ds_read_b64_tr_b8 v[156:157], v128 offset:512              // 00000000668C: D9C40200 9C000080
	ds_read_b64_tr_b8 v[158:159], v128 offset:1536             // 000000006694: D9C40600 9E000080
	ds_read_b64_tr_b8 v[160:161], v128 offset:2560             // 00000000669C: D9C40A00 A0000080
	ds_read_b64_tr_b8 v[162:163], v128 offset:3584             // 0000000066A4: D9C40E00 A2000080
	s_waitcnt lgkmcnt(4)                                       // 0000000066AC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[132:139], v[208:215], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 0000000066B0: D3AC0000 0003F7F2 D3AE0830 04C3A184
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[140:147], v[208:215], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 0000000066C0: D3AC0000 0003F7F2 D3AE0820 0483A18C
	ds_read_b64_tr_b8 v[132:133], v128 offset:768              // 0000000066D0: D9C40300 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:1792             // 0000000066D8: D9C40700 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:2816             // 0000000066E0: D9C40B00 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:3840             // 0000000066E8: D9C40F00 8A000080
	ds_read_b64_tr_b8 v[140:141], v128 offset:4096             // 0000000066F0: D9C41000 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:5120             // 0000000066F8: D9C41400 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:6144             // 000000006700: D9C41800 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:7168             // 000000006708: D9C41C00 92000080
	s_waitcnt lgkmcnt(4)                                       // 000000006710: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[156:163], v[208:215], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000006714: D3AC0000 0003F7F2 D3AE0810 0443A19C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[132:139], v[208:215], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000006724: D3AC0000 0003F7F2 D3AE0800 0403A184
	ds_read_b64_tr_b8 v[156:157], v128 offset:4352             // 000000006734: D9C41100 9C000080
	ds_read_b64_tr_b8 v[158:159], v128 offset:5376             // 00000000673C: D9C41500 9E000080
	ds_read_b64_tr_b8 v[160:161], v128 offset:6400             // 000000006744: D9C41900 A0000080
	ds_read_b64_tr_b8 v[162:163], v128 offset:7424             // 00000000674C: D9C41D00 A2000080
	ds_read_b64_tr_b8 v[132:133], v128 offset:4608             // 000000006754: D9C41200 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:5632             // 00000000675C: D9C41600 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:6656             // 000000006764: D9C41A00 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:7680             // 00000000676C: D9C41E00 8A000080
	s_waitcnt vmcnt(0) lgkmcnt(4)                              // 000000006774: BF8C0470
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[140:147], v[164:171], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000006778: D3AC0000 0003FBF2 D3AE0830 04C3498C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[156:163], v[164:171], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000006788: D3AC0000 0003FBF2 D3AE0820 0483499C
	ds_read_b64_tr_b8 v[140:141], v128 offset:4864             // 000000006798: D9C41300 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:5888             // 0000000067A0: D9C41700 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:6912             // 0000000067A8: D9C41B00 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:7936             // 0000000067B0: D9C41F00 92000080
	s_waitcnt lgkmcnt(0)                                       // 0000000067B8: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[132:139], v[164:171], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 0000000067BC: D3AC0000 0003FBF2 D3AE0810 04434984
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[140:147], v[164:171], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 0000000067CC: D3AC0000 0003FBF2 D3AE0800 0403498C
	s_cbranch_vccz 68                                          // 0000000067DC: BF860044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4df0>
	v_sub_f32_e32 v128, v252, v129                             // 0000000067E0: 050103FC
	v_exp_f32_e32 v128, v128                                   // 0000000067E4: 7F004180
	s_nop 3                                                    // 0000000067E8: BF800003
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 0000000067EC: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 0000000067F4: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 0000000067FC: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000006804: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 00000000680C: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000006814: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 00000000681C: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000006824: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 00000000682C: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000006834: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 00000000683C: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000006844: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 00000000684C: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000006854: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 00000000685C: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000006864: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 00000000686C: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000006874: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 00000000687C: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000006884: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 00000000688C: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000006894: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 00000000689C: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 0000000068A4: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 0000000068AC: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 0000000068B4: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 0000000068BC: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 0000000068C4: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 0000000068CC: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 0000000068D4: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 0000000068DC: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 0000000068E4: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 0000000068EC: 0BF501FA
	s_waitcnt vmcnt(0)                                         // 0000000068F0: BF8C0F70
	s_barrier                                                  // 0000000068F4: BF8A0000
	s_add_u32 s42, s42, 1                                      // 0000000068F8: 802A812A
	v_mov_b32_e32 v253, v131                                   // 0000000068FC: 7FFA0383
	v_mov_b32_e32 v251, v130                                   // 000000006900: 7FF60382
	v_mov_b32_e32 v252, v129                                   // 000000006904: 7FF80381
	s_branch 454                                               // 000000006908: BF8201C6 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5524>
	s_cmp_eq_u32 s42, s79                                      // 00000000690C: BF064F2A
	s_cbranch_scc0 411                                         // 000000006910: BF84019B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5480>
	s_setprio 0                                                // 000000006914: BF8F0000
	v_fma_f32 v128, v112, v239, v152                           // 000000006918: D1CB0080 0663DF70
	v_fma_f32 v129, v113, v239, v152                           // 000000006920: D1CB0081 0663DF71
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006928: D1DD0080 02010180
	v_fma_f32 v130, v114, v239, v152                           // 000000006930: D1CB0082 0663DF72
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006938: D1DD0080 06010381
	v_fma_f32 v131, v115, v239, v152                           // 000000006940: D1CB0083 0663DF73
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006948: D1DD0080 06010582
	v_cvt_pk_u8_f32 v136, v131, 3, v128                        // 000000006950: D1DD0088 06010783
	v_fma_f32 v128, v96, v239, v152                            // 000000006958: D1CB0080 0663DF60
	v_fma_f32 v129, v97, v239, v152                            // 000000006960: D1CB0081 0663DF61
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006968: D1DD0080 02010180
	v_fma_f32 v130, v98, v239, v152                            // 000000006970: D1CB0082 0663DF62
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006978: D1DD0080 06010381
	v_fma_f32 v131, v99, v239, v152                            // 000000006980: D1CB0083 0663DF63
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006988: D1DD0080 06010582
	v_cvt_pk_u8_f32 v140, v131, 3, v128                        // 000000006990: D1DD008C 06010783
	v_fma_f32 v128, v116, v239, v152                           // 000000006998: D1CB0080 0663DF74
	v_fma_f32 v129, v117, v239, v152                           // 0000000069A0: D1CB0081 0663DF75
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000069A8: D1DD0080 02010180
	v_fma_f32 v130, v118, v239, v152                           // 0000000069B0: D1CB0082 0663DF76
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 0000000069B8: D1DD0080 06010381
	v_fma_f32 v131, v119, v239, v152                           // 0000000069C0: D1CB0083 0663DF77
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 0000000069C8: D1DD0080 06010582
	v_cvt_pk_u8_f32 v137, v131, 3, v128                        // 0000000069D0: D1DD0089 06010783
	v_fma_f32 v128, v100, v239, v152                           // 0000000069D8: D1CB0080 0663DF64
	v_fma_f32 v129, v101, v239, v152                           // 0000000069E0: D1CB0081 0663DF65
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000069E8: D1DD0080 02010180
	v_fma_f32 v130, v102, v239, v152                           // 0000000069F0: D1CB0082 0663DF66
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 0000000069F8: D1DD0080 06010381
	v_fma_f32 v131, v103, v239, v152                           // 000000006A00: D1CB0083 0663DF67
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006A08: D1DD0080 06010582
	v_cvt_pk_u8_f32 v141, v131, 3, v128                        // 000000006A10: D1DD008D 06010783
	v_fma_f32 v128, v120, v239, v152                           // 000000006A18: D1CB0080 0663DF78
	v_fma_f32 v129, v121, v239, v152                           // 000000006A20: D1CB0081 0663DF79
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006A28: D1DD0080 02010180
	v_fma_f32 v130, v122, v239, v152                           // 000000006A30: D1CB0082 0663DF7A
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006A38: D1DD0080 06010381
	v_fma_f32 v131, v123, v239, v152                           // 000000006A40: D1CB0083 0663DF7B
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006A48: D1DD0080 06010582
	v_cvt_pk_u8_f32 v138, v131, 3, v128                        // 000000006A50: D1DD008A 06010783
	v_fma_f32 v128, v104, v239, v152                           // 000000006A58: D1CB0080 0663DF68
	v_fma_f32 v129, v105, v239, v152                           // 000000006A60: D1CB0081 0663DF69
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006A68: D1DD0080 02010180
	v_fma_f32 v130, v106, v239, v152                           // 000000006A70: D1CB0082 0663DF6A
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006A78: D1DD0080 06010381
	v_fma_f32 v131, v107, v239, v152                           // 000000006A80: D1CB0083 0663DF6B
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006A88: D1DD0080 06010582
	v_cvt_pk_u8_f32 v142, v131, 3, v128                        // 000000006A90: D1DD008E 06010783
	v_fma_f32 v128, v124, v239, v152                           // 000000006A98: D1CB0080 0663DF7C
	v_fma_f32 v129, v125, v239, v152                           // 000000006AA0: D1CB0081 0663DF7D
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006AA8: D1DD0080 02010180
	v_fma_f32 v130, v126, v239, v152                           // 000000006AB0: D1CB0082 0663DF7E
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006AB8: D1DD0080 06010381
	v_fma_f32 v131, v127, v239, v152                           // 000000006AC0: D1CB0083 0663DF7F
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006AC8: D1DD0080 06010582
	v_cvt_pk_u8_f32 v139, v131, 3, v128                        // 000000006AD0: D1DD008B 06010783
	v_fma_f32 v128, v108, v239, v152                           // 000000006AD8: D1CB0080 0663DF6C
	v_fma_f32 v129, v109, v239, v152                           // 000000006AE0: D1CB0081 0663DF6D
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006AE8: D1DD0080 02010180
	v_fma_f32 v130, v110, v239, v152                           // 000000006AF0: D1CB0082 0663DF6E
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006AF8: D1DD0080 06010381
	v_fma_f32 v131, v111, v239, v152                           // 000000006B00: D1CB0083 0663DF6F
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006B08: D1DD0080 06010582
	v_cvt_pk_u8_f32 v143, v131, 3, v128                        // 000000006B10: D1DD008F 06010783
	v_fma_f32 v128, v80, v239, v150                            // 000000006B18: D1CB0080 065BDF50
	v_fma_f32 v129, v81, v239, v150                            // 000000006B20: D1CB0081 065BDF51
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006B28: D1DD0080 02010180
	v_fma_f32 v130, v82, v239, v150                            // 000000006B30: D1CB0082 065BDF52
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006B38: D1DD0080 06010381
	v_fma_f32 v129, v64, v239, v150                            // 000000006B40: D1CB0081 065BDF40
	v_fma_f32 v131, v83, v239, v150                            // 000000006B48: D1CB0083 065BDF53
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006B50: D1DD0080 06010582
	v_fma_f32 v130, v65, v239, v150                            // 000000006B58: D1CB0082 065BDF41
	v_cvt_pk_u8_f32 v129, v129, 0, 0                           // 000000006B60: D1DD0081 02010181
	v_cvt_pk_u8_f32 v128, v131, 3, v128                        // 000000006B68: D1DD0080 06010783
	v_fma_f32 v131, v66, v239, v150                            // 000000006B70: D1CB0083 065BDF42
	v_cvt_pk_u8_f32 v129, v130, 1, v129                        // 000000006B78: D1DD0081 06050382
	v_fma_f32 v132, v67, v239, v150                            // 000000006B80: D1CB0084 065BDF43
	v_cvt_pk_u8_f32 v129, v131, 2, v129                        // 000000006B88: D1DD0081 06050583
	v_cvt_pk_u8_f32 v132, v132, 3, v129                        // 000000006B90: D1DD0084 06050784
	v_fma_f32 v129, v84, v239, v150                            // 000000006B98: D1CB0081 065BDF54
	v_fma_f32 v130, v85, v239, v150                            // 000000006BA0: D1CB0082 065BDF55
	v_cvt_pk_u8_f32 v129, v129, 0, 0                           // 000000006BA8: D1DD0081 02010181
	v_fma_f32 v131, v86, v239, v150                            // 000000006BB0: D1CB0083 065BDF56
	v_cvt_pk_u8_f32 v129, v130, 1, v129                        // 000000006BB8: D1DD0081 06050382
	v_fma_f32 v130, v68, v239, v150                            // 000000006BC0: D1CB0082 065BDF44
	v_fma_f32 v133, v87, v239, v150                            // 000000006BC8: D1CB0085 065BDF57
	v_cvt_pk_u8_f32 v129, v131, 2, v129                        // 000000006BD0: D1DD0081 06050583
	v_fma_f32 v131, v69, v239, v150                            // 000000006BD8: D1CB0083 065BDF45
	v_cvt_pk_u8_f32 v130, v130, 0, 0                           // 000000006BE0: D1DD0082 02010182
	v_cvt_pk_u8_f32 v129, v133, 3, v129                        // 000000006BE8: D1DD0081 06050785
	v_fma_f32 v133, v70, v239, v150                            // 000000006BF0: D1CB0085 065BDF46
	v_cvt_pk_u8_f32 v130, v131, 1, v130                        // 000000006BF8: D1DD0082 06090383
	v_fma_f32 v134, v71, v239, v150                            // 000000006C00: D1CB0086 065BDF47
	v_cvt_pk_u8_f32 v130, v133, 2, v130                        // 000000006C08: D1DD0082 06090585
	v_cvt_pk_u8_f32 v133, v134, 3, v130                        // 000000006C10: D1DD0085 06090786
	v_fma_f32 v130, v88, v239, v150                            // 000000006C18: D1CB0082 065BDF58
	v_fma_f32 v131, v89, v239, v150                            // 000000006C20: D1CB0083 065BDF59
	v_cvt_pk_u8_f32 v130, v130, 0, 0                           // 000000006C28: D1DD0082 02010182
	v_fma_f32 v134, v90, v239, v150                            // 000000006C30: D1CB0086 065BDF5A
	v_cvt_pk_u8_f32 v130, v131, 1, v130                        // 000000006C38: D1DD0082 06090383
	v_fma_f32 v131, v72, v239, v150                            // 000000006C40: D1CB0083 065BDF48
	v_fma_f32 v135, v91, v239, v150                            // 000000006C48: D1CB0087 065BDF5B
	v_cvt_pk_u8_f32 v130, v134, 2, v130                        // 000000006C50: D1DD0082 06090586
	v_fma_f32 v134, v73, v239, v150                            // 000000006C58: D1CB0086 065BDF49
	v_cvt_pk_u8_f32 v131, v131, 0, 0                           // 000000006C60: D1DD0083 02010183
	v_cvt_pk_u8_f32 v130, v135, 3, v130                        // 000000006C68: D1DD0082 06090787
	v_fma_f32 v135, v74, v239, v150                            // 000000006C70: D1CB0087 065BDF4A
	v_cvt_pk_u8_f32 v131, v134, 1, v131                        // 000000006C78: D1DD0083 060D0386
	v_fma_f32 v144, v75, v239, v150                            // 000000006C80: D1CB0090 065BDF4B
	v_cvt_pk_u8_f32 v131, v135, 2, v131                        // 000000006C88: D1DD0083 060D0587
	v_cvt_pk_u8_f32 v134, v144, 3, v131                        // 000000006C90: D1DD0086 060D0790
	v_fma_f32 v131, v92, v239, v150                            // 000000006C98: D1CB0083 065BDF5C
	v_fma_f32 v135, v93, v239, v150                            // 000000006CA0: D1CB0087 065BDF5D
	v_cvt_pk_u8_f32 v131, v131, 0, 0                           // 000000006CA8: D1DD0083 02010183
	v_fma_f32 v144, v94, v239, v150                            // 000000006CB0: D1CB0090 065BDF5E
	v_cvt_pk_u8_f32 v131, v135, 1, v131                        // 000000006CB8: D1DD0083 060D0387
	v_fma_f32 v135, v76, v239, v150                            // 000000006CC0: D1CB0087 065BDF4C
	v_fma_f32 v145, v95, v239, v150                            // 000000006CC8: D1CB0091 065BDF5F
	v_cvt_pk_u8_f32 v131, v144, 2, v131                        // 000000006CD0: D1DD0083 060D0590
	v_fma_f32 v144, v77, v239, v150                            // 000000006CD8: D1CB0090 065BDF4D
	v_cvt_pk_u8_f32 v135, v135, 0, 0                           // 000000006CE0: D1DD0087 02010187
	v_cvt_pk_u8_f32 v131, v145, 3, v131                        // 000000006CE8: D1DD0083 060D0791
	v_fma_f32 v145, v78, v239, v150                            // 000000006CF0: D1CB0091 065BDF4E
	v_cvt_pk_u8_f32 v135, v144, 1, v135                        // 000000006CF8: D1DD0087 061D0390
	v_fma_f32 v146, v79, v239, v150                            // 000000006D00: D1CB0092 065BDF4F
	v_cvt_pk_u8_f32 v135, v145, 2, v135                        // 000000006D08: D1DD0087 061D0591
	v_cvt_pk_u8_f32 v135, v146, 3, v135                        // 000000006D10: D1DD0087 061D0792
	s_barrier                                                  // 000000006D18: BF8A0000
	s_setprio 1                                                // 000000006D1C: BF8F0001
	s_waitcnt vmcnt(0)                                         // 000000006D20: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[144:147], v[192:199], v[136:143], 0// 000000006D24: D3AD0090 020311C0
	v_mfma_f32_16x16x128_f8f6f4 v[146:149], v[192:199], v[128:135], 0// 000000006D2C: D3AD0092 020301C0
	s_add_u32 s17, s79, s78                                    // 000000006D34: 80114E4F
	s_and_b32 s17, s17, 3                                      // 000000006D38: 86118311
	s_lshl_b32 s18, s17, 14                                    // 000000006D3C: 8E128E11
	s_nop 0                                                    // 000000006D40: BF800000
	v_or_b32_e32 v145, s18, v245                               // 000000006D44: 2923EA12
	v_add3_u32 v145, v244, v145, s92                           // 000000006D48: D1FF0091 017323F4
	ds_read_b64_tr_b8 v[156:157], v145                         // 000000006D50: D9C40000 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:1024             // 000000006D58: D9C40400 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:2048             // 000000006D60: D9C40800 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:3072             // 000000006D68: D9C40C00 A2000091
	ds_read_b64_tr_b8 v[164:165], v145 offset:256              // 000000006D70: D9C40100 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:1280             // 000000006D78: D9C40500 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:2304             // 000000006D80: D9C40900 A8000091
	ds_read_b64_tr_b8 v[170:171], v145 offset:3328             // 000000006D88: D9C40D00 AA000091
	ds_read_b64_tr_b8 v[172:173], v145 offset:512              // 000000006D90: D9C40200 AC000091
	ds_read_b64_tr_b8 v[174:175], v145 offset:1536             // 000000006D98: D9C40600 AE000091
	ds_read_b64_tr_b8 v[176:177], v145 offset:2560             // 000000006DA0: D9C40A00 B0000091
	ds_read_b64_tr_b8 v[178:179], v145 offset:3584             // 000000006DA8: D9C40E00 B2000091
	s_waitcnt lgkmcnt(4)                                       // 000000006DB0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000006DB4: D3AC0000 0003F7F2 D3AE0830 04C3119C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000006DC4: D3AC0000 0003F7F2 D3AE0820 048311A4
	ds_read_b64_tr_b8 v[156:157], v145 offset:768              // 000000006DD4: D9C40300 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:1792             // 000000006DDC: D9C40700 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:2816             // 000000006DE4: D9C40B00 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:3840             // 000000006DEC: D9C40F00 A2000091
	ds_read_b64_tr_b8 v[164:165], v145 offset:4096             // 000000006DF4: D9C41000 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:5120             // 000000006DFC: D9C41400 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:6144             // 000000006E04: D9C41800 A8000091
	ds_read_b64_tr_b8 v[170:171], v145 offset:7168             // 000000006E0C: D9C41C00 AA000091
	s_waitcnt lgkmcnt(4)                                       // 000000006E14: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000006E18: D3AC0000 0003F7F2 D3AE0810 044311AC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000006E28: D3AC0000 0003F7F2 D3AE0800 0403119C
	ds_read_b64_tr_b8 v[172:173], v145 offset:4352             // 000000006E38: D9C41100 AC000091
	ds_read_b64_tr_b8 v[174:175], v145 offset:5376             // 000000006E40: D9C41500 AE000091
	ds_read_b64_tr_b8 v[176:177], v145 offset:6400             // 000000006E48: D9C41900 B0000091
	ds_read_b64_tr_b8 v[178:179], v145 offset:7424             // 000000006E50: D9C41D00 B2000091
	ds_read_b64_tr_b8 v[156:157], v145 offset:4608             // 000000006E58: D9C41200 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:5632             // 000000006E60: D9C41600 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:6656             // 000000006E68: D9C41A00 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:7680             // 000000006E70: D9C41E00 A2000091
	s_waitcnt lgkmcnt(4)                                       // 000000006E78: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[164:171], v[128:135], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000006E7C: D3AC0000 0003FBF2 D3AE0830 04C301A4
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[172:179], v[128:135], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000006E8C: D3AC0000 0003FBF2 D3AE0820 048301AC
	ds_read_b64_tr_b8 v[164:165], v145 offset:4864             // 000000006E9C: D9C41300 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:5888             // 000000006EA4: D9C41700 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:6912             // 000000006EAC: D9C41B00 A8000091
	ds_read_b64_tr_b8 v[170:171], v145 offset:7936             // 000000006EB4: D9C41F00 AA000091
	s_add_u32 s19, s79, 4                                      // 000000006EBC: 8013844F
	s_cmp_ge_u32 s19, s96                                      // 000000006EC0: BF096013
	s_cbranch_scc1 12                                          // 000000006EC4: BF85000C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x53f8>
	s_add_u32 s18, s18, s88                                    // 000000006EC8: 80125812
	s_mul_i32 s19, s19, s8                                     // 000000006ECC: 92130813
	s_lshl_b32 s19, s19, 7                                     // 000000006ED0: 8E138713
	s_mov_b32 m0, s18                                          // 000000006ED4: BEFC0012
	s_nop 0                                                    // 000000006ED8: BF800000
	buffer_load_dwordx4 v233, s[84:87], s19 offen lds          // 000000006EDC: E05D1000 131500E9
	s_add_u32 m0, s18, 0x2000                                  // 000000006EE4: 807CFF12 00002000
	s_nop 0                                                    // 000000006EEC: BF800000
	buffer_load_dwordx4 v234, s[84:87], s19 offen lds          // 000000006EF0: E05D1000 131500EA
	s_add_u32 s18, s79, 2                                      // 000000006EF8: 8012824F
	s_cmp_ge_u32 s18, s96                                      // 000000006EFC: BF096012
	s_cbranch_scc1 15                                          // 000000006F00: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5440>
	s_xor_b32 s17, s17, 2                                      // 000000006F04: 88118211
	s_lshl_b32 s17, s17, 14                                    // 000000006F08: 8E118E11
	s_mul_i32 s18, s18, s8                                     // 000000006F0C: 92120812
	s_or_b32 s17, s17, s88                                     // 000000006F10: 87115811
	s_lshl_b32 s18, s18, 7                                     // 000000006F14: 8E128712
	s_or_b32 m0, s17, 0x10000                                  // 000000006F18: 877CFF11 00010000
	s_nop 0                                                    // 000000006F20: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000006F24: E05D1000 121400EB
	s_or_b32 m0, s17, 0x12000                                  // 000000006F2C: 877CFF11 00012000
	s_nop 0                                                    // 000000006F34: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000006F38: E05D1000 121400EC
	v_mul_f32_e32 v136, v154, v144                             // 000000006F40: 0B11219A
	v_mul_f32_e32 v137, v155, v146                             // 000000006F44: 0B13259B
	v_add_f32_e32 v136, v250, v136                             // 000000006F48: 031111FA
	v_add_f32_e32 v250, v136, v137                             // 000000006F4C: 03F51388
	s_waitcnt lgkmcnt(0)                                       // 000000006F50: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[156:163], v[128:135], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000006F54: D3AC0000 0003FBF2 D3AE0810 0443019C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[164:171], v[128:135], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000006F64: D3AC0000 0003FBF2 D3AE0800 040301A4
	s_barrier                                                  // 000000006F74: BF8A0000
	s_add_u32 s42, s79, 1                                      // 000000006F78: 802A814F
	s_branch 41                                                // 000000006F7C: BF820029 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5524>
	s_barrier                                                  // 000000006F80: BF8A0000
	s_waitcnt vmcnt(0)                                         // 000000006F84: BF8C0F70
	s_add_u32 s17, s42, 4                                      // 000000006F88: 8011842A
	s_cmp_ge_u32 s17, s96                                      // 000000006F8C: BF096011
	s_cbranch_scc1 15                                          // 000000006F90: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x54d0>
	s_add_u32 s18, s42, s78                                    // 000000006F94: 80124E2A
	s_and_b32 s18, s18, 3                                      // 000000006F98: 86128312
	s_lshl_b32 s18, s18, 14                                    // 000000006F9C: 8E128E12
	s_or_b32 s18, s18, s88                                     // 000000006FA0: 87125812
	s_mul_i32 s17, s17, s8                                     // 000000006FA4: 92110811
	s_lshl_b32 s17, s17, 7                                     // 000000006FA8: 8E118711
	s_mov_b32 m0, s18                                          // 000000006FAC: BEFC0012
	s_nop 0                                                    // 000000006FB0: BF800000
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 000000006FB4: E05D1000 111500E9
	s_or_b32 m0, s18, 0x2000                                   // 000000006FBC: 877CFF12 00002000
	s_nop 0                                                    // 000000006FC4: BF800000
	buffer_load_dwordx4 v234, s[84:87], s17 offen lds          // 000000006FC8: E05D1000 111500EA
	s_add_u32 s17, s42, 2                                      // 000000006FD0: 8011822A
	s_cmp_ge_u32 s17, s96                                      // 000000006FD4: BF096011
	s_cbranch_scc1 16                                          // 000000006FD8: BF850010 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x551c>
	s_add_u32 s18, s42, s78                                    // 000000006FDC: 80124E2A
	s_and_b32 s18, s18, 3                                      // 000000006FE0: 86128312
	s_xor_b32 s18, s18, 2                                      // 000000006FE4: 88128212
	s_lshl_b32 s18, s18, 14                                    // 000000006FE8: 8E128E12
	s_or_b32 s18, s18, s88                                     // 000000006FEC: 87125812
	s_mul_i32 s17, s17, s8                                     // 000000006FF0: 92110811
	s_or_b32 m0, s18, 0x10000                                  // 000000006FF4: 877CFF12 00010000
	s_lshl_b32 s17, s17, 7                                     // 000000006FFC: 8E118711
	buffer_load_dwordx4 v235, s[80:83], s17 offen lds          // 000000007000: E05D1000 111400EB
	s_or_b32 m0, s18, 0x12000                                  // 000000007008: 877CFF12 00012000
	s_nop 0                                                    // 000000007010: BF800000
	buffer_load_dwordx4 v236, s[80:83], s17 offen lds          // 000000007014: E05D1000 111400EC
	s_barrier                                                  // 00000000701C: BF8A0000
	s_add_u32 s42, s42, 1                                      // 000000007020: 802A812A
	s_add_u32 s17, s42, 1                                      // 000000007024: 8011812A
	s_cmp_ge_u32 s17, s96                                      // 000000007028: BF096011
	s_cbranch_scc1 1702                                        // 00000000702C: BF8506A6 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6fc8>
	s_cmp_ge_u32 s42, s79                                      // 000000007030: BF094F2A
	s_cbranch_scc1 1074                                        // 000000007034: BF850432 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6600>
	s_setprio 0                                                // 000000007038: BF8F0000
	v_fma_f32 v108, v108, v239, v152                           // 00000000703C: D1CB006C 0663DF6C
	v_fma_f32 v64, v64, v239, v150                             // 000000007044: D1CB0040 065BDF40
	v_fma_f32 v68, v68, v239, v150                             // 00000000704C: D1CB0044 065BDF44
	s_add_u32 s17, s42, s78                                    // 000000007054: 80114E2A
	v_fma_f32 v96, v96, v239, v152                             // 000000007058: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 000000007060: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 000000007068: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 000000007070: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 000000007078: D1CB0068 0663DF68
	v_fma_f32 v109, v109, v239, v152                           // 000000007080: D1CB006D 0663DF6D
	v_fma_f32 v80, v80, v239, v150                             // 000000007088: D1CB0050 065BDF50
	v_fma_f32 v65, v65, v239, v150                             // 000000007090: D1CB0041 065BDF41
	v_fma_f32 v84, v84, v239, v150                             // 000000007098: D1CB0054 065BDF54
	v_fma_f32 v69, v69, v239, v150                             // 0000000070A0: D1CB0045 065BDF45
	v_fma_f32 v72, v72, v239, v150                             // 0000000070A8: D1CB0048 065BDF48
	v_fma_f32 v92, v92, v239, v150                             // 0000000070B0: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 0000000070B8: D1DD006C 0201016C
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 0000000070C0: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 0000000070C8: D1DD0044 02010144
	s_add_u32 s18, s17, 1                                      // 0000000070D0: 80128111
	v_fma_f32 v97, v97, v239, v152                             // 0000000070D4: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 0000000070DC: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 0000000070E4: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 0000000070EC: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 0000000070F4: D1CB0069 0663DF69
	v_fma_f32 v110, v110, v239, v152                           // 0000000070FC: D1CB006E 0663DF6E
	v_fma_f32 v81, v81, v239, v150                             // 000000007104: D1CB0051 065BDF51
	v_fma_f32 v66, v66, v239, v150                             // 00000000710C: D1CB0042 065BDF42
	v_fma_f32 v85, v85, v239, v150                             // 000000007114: D1CB0055 065BDF55
	v_fma_f32 v70, v70, v239, v150                             // 00000000711C: D1CB0046 065BDF46
	v_fma_f32 v88, v88, v239, v150                             // 000000007124: D1CB0058 065BDF58
	v_fma_f32 v73, v73, v239, v150                             // 00000000712C: D1CB0049 065BDF49
	v_fma_f32 v93, v93, v239, v150                             // 000000007134: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 00000000713C: D1DD0060 02010160
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000007144: D1DD0074 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 00000000714C: D1DD0064 02010164
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000007154: D1DD0078 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 00000000715C: D1DD0068 02010168
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000007164: D1DD0050 02010150
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 00000000716C: D1DD0054 02010154
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000007174: D1DD0048 02010148
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 00000000717C: D1DD005C 0201015C
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 000000007184: D1DD006C 05B1036D
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 00000000718C: D1DD0040 05010341
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 000000007194: D1DD0044 05110345
	s_and_b32 s18, s18, 3                                      // 00000000719C: 86128312
	v_fma_f32 v98, v98, v239, v152                             // 0000000071A0: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 0000000071A8: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 0000000071B0: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 0000000071B8: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 0000000071C0: D1CB006A 0663DF6A
	v_fma_f32 v111, v111, v239, v152                           // 0000000071C8: D1CB006F 0663DF6F
	v_fma_f32 v82, v82, v239, v150                             // 0000000071D0: D1CB0052 065BDF52
	v_fma_f32 v86, v86, v239, v150                             // 0000000071D8: D1CB0056 065BDF56
	v_fma_f32 v71, v71, v239, v150                             // 0000000071E0: D1CB0047 065BDF47
	v_fma_f32 v89, v89, v239, v150                             // 0000000071E8: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 0000000071F0: D1DD0058 02010158
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 0000000071F8: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v116                         // 000000007200: D1DD0061 05D10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 000000007208: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v120                        // 000000007210: D1DD0065 05E10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 000000007218: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000007220: D1DD0050 05410351
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 000000007228: D1DD0041 05510355
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 000000007230: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v93, 1, v92                           // 000000007238: D1DD0049 0571035D
	v_cvt_pk_u8_f32 v93, v110, 2, v108                         // 000000007240: D1DD005D 05B1056E
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000007248: D1DD0040 05010542
	v_cvt_pk_u8_f32 v66, v70, 2, v68                           // 000000007250: D1DD0042 05110546
	s_lshl_b32 s18, s18, 14                                    // 000000007258: 8E128E12
	v_fma_f32 v99, v99, v239, v152                             // 00000000725C: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 000000007264: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 00000000726C: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 000000007274: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 00000000727C: D1CB006B 0663DF6B
	v_fma_f32 v83, v83, v239, v150                             // 000000007284: D1CB0053 065BDF53
	v_fma_f32 v87, v87, v239, v150                             // 00000000728C: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 000000007294: D1DD0045 05610359
	v_cvt_pk_u8_f32 v81, v98, 2, v96                           // 00000000729C: D1DD0051 05810562
	v_cvt_pk_u8_f32 v84, v118, 2, v97                          // 0000000072A4: D1DD0054 05850576
	v_cvt_pk_u8_f32 v85, v102, 2, v100                         // 0000000072AC: D1DD0055 05910566
	v_cvt_pk_u8_f32 v88, v122, 2, v101                         // 0000000072B4: D1DD0058 0595057A
	v_cvt_pk_u8_f32 v89, v106, 2, v104                         // 0000000072BC: D1DD0059 05A1056A
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 0000000072C4: D1DD0050 05410552
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 0000000072CC: D1DD0041 05050556
	v_cvt_pk_u8_f32 v215, v111, 3, v93                         // 0000000072D4: D1DD00D7 0575076F
	v_cvt_pk_u8_f32 v93, v71, 3, v66                           // 0000000072DC: D1DD005D 05090747
	v_or_b32_e32 v71, s18, v231                                // 0000000072E4: 288FCE12
	v_cvt_pk_u8_f32 v212, v99, 3, v81                          // 0000000072E8: D1DD00D4 05450763
	v_cvt_pk_u8_f32 v209, v119, 3, v84                         // 0000000072F0: D1DD00D1 05510777
	v_cvt_pk_u8_f32 v213, v103, 3, v85                         // 0000000072F8: D1DD00D5 05550767
	v_cvt_pk_u8_f32 v210, v123, 3, v88                         // 000000007300: D1DD00D2 0561077B
	v_cvt_pk_u8_f32 v214, v107, 3, v89                         // 000000007308: D1DD00D6 0565076B
	v_cvt_pk_u8_f32 v88, v83, 3, v80                           // 000000007310: D1DD0058 05410753
	v_cvt_pk_u8_f32 v89, v87, 3, v65                           // 000000007318: D1DD0059 05050757
	ds_read_b128 v[80:83], v71                                 // 000000007320: D9FE0000 50000047
	ds_read_b128 v[84:87], v71 offset:16                       // 000000007328: D9FE0010 54000047
	ds_read_b128 v[96:99], v71 offset:4096                     // 000000007330: D9FE1000 60000047
	ds_read_b128 v[100:103], v71 offset:4112                   // 000000007338: D9FE1010 64000047
	v_fma_f32 v112, v112, v239, v152                           // 000000007340: D1CB0070 0663DF70
	v_fma_f32 v124, v124, v239, v152                           // 000000007348: D1CB007C 0663DF7C
	v_fma_f32 v113, v113, v239, v152                           // 000000007350: D1CB0071 0663DF71
	v_fma_f32 v125, v125, v239, v152                           // 000000007358: D1CB007D 0663DF7D
	v_fma_f32 v76, v76, v239, v150                             // 000000007360: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000007368: D1DD0070 02010170
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000007370: D1DD007C 0201017C
	v_fma_f32 v114, v114, v239, v152                           // 000000007378: D1CB0072 0663DF72
	v_fma_f32 v126, v126, v239, v152                           // 000000007380: D1CB007E 0663DF7E
	v_fma_f32 v77, v77, v239, v150                             // 000000007388: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000007390: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000007398: D1DD0070 05C10371
	v_cvt_pk_u8_f32 v105, v125, 1, v124                        // 0000000073A0: D1DD0069 05F1037D
	v_fma_f32 v115, v115, v239, v152                           // 0000000073A8: D1CB0073 0663DF73
	v_fma_f32 v127, v127, v239, v152                           // 0000000073B0: D1CB007F 0663DF7F
	v_fma_f32 v90, v90, v239, v150                             // 0000000073B8: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 0000000073C0: D1CB004A 065BDF4A
	v_fma_f32 v94, v94, v239, v150                             // 0000000073C8: D1CB005E 065BDF5E
	v_fma_f32 v78, v78, v239, v150                             // 0000000073D0: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v76, v77, 1, v76                           // 0000000073D8: D1DD004C 0531034D
	v_cvt_pk_u8_f32 v77, v114, 2, v112                         // 0000000073E0: D1DD004D 05C10572
	v_cvt_pk_u8_f32 v92, v126, 2, v105                         // 0000000073E8: D1DD005C 05A5057E
	v_fma_f32 v67, v67, v239, v150                             // 0000000073F0: D1CB0043 065BDF43
	v_fma_f32 v91, v91, v239, v150                             // 0000000073F8: D1CB005B 065BDF5B
	v_fma_f32 v75, v75, v239, v150                             // 000000007400: D1CB004B 065BDF4B
	v_fma_f32 v95, v95, v239, v150                             // 000000007408: D1CB005F 065BDF5F
	v_fma_f32 v79, v79, v239, v150                             // 000000007410: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v68, v90, 2, v69                           // 000000007418: D1DD0044 0515055A
	v_cvt_pk_u8_f32 v69, v74, 2, v72                           // 000000007420: D1DD0045 0521054A
	v_cvt_pk_u8_f32 v70, v94, 2, v73                           // 000000007428: D1DD0046 0525055E
	v_cvt_pk_u8_f32 v72, v78, 2, v76                           // 000000007430: D1DD0048 0531054E
	v_cvt_pk_u8_f32 v208, v115, 3, v77                         // 000000007438: D1DD00D0 05350773
	v_cvt_pk_u8_f32 v211, v127, 3, v92                         // 000000007440: D1DD00D3 0571077F
	v_cvt_pk_u8_f32 v92, v67, 3, v64                           // 000000007448: D1DD005C 05010743
	v_cvt_pk_u8_f32 v90, v91, 3, v68                           // 000000007450: D1DD005A 0511075B
	v_cvt_pk_u8_f32 v94, v75, 3, v69                           // 000000007458: D1DD005E 0515074B
	v_cvt_pk_u8_f32 v91, v95, 3, v70                           // 000000007460: D1DD005B 0519075F
	v_cvt_pk_u8_f32 v95, v79, 3, v72                           // 000000007468: D1DD005F 0521074F
	s_barrier                                                  // 000000007470: BF8A0000
	s_and_b32 s17, s17, 3                                      // 000000007474: 86118311
	s_setprio 1                                                // 000000007478: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[208:215], 0// 00000000747C: D3AD0040 0203A1C0
	scratch_store_dwordx4 off, v[88:91], off                   // 000000007484: DC7C4000 007F5800
	s_nop 0                                                    // 00000000748C: BF800000
	scratch_store_dwordx4 off, v[92:95], off offset:16         // 000000007490: DC7C4010 007F5C00
	v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[192:199], v[88:95], 0// 000000007498: D3AD0042 0202B1C0
	s_nop 3                                                    // 0000000074A0: BF800003
	v_mul_f32_e32 v64, v154, v64                               // 0000000074A4: 0A80819A
	v_add_f32_e32 v64, v250, v64                               // 0000000074A8: 028081FA
	s_nop 5                                                    // 0000000074AC: BF800005
	v_mul_f32_e32 v65, v155, v66                               // 0000000074B0: 0A82859B
	v_add_f32_e32 v250, v64, v65                               // 0000000074B4: 03F48340
	ds_read_b128 v[88:91], v71 offset:8192                     // 0000000074B8: D9FE2000 58000047
	ds_read_b128 v[92:95], v71 offset:8208                     // 0000000074C0: D9FE2010 5C000047
	ds_read_b128 v[104:107], v71 offset:12288                  // 0000000074C8: D9FE3000 68000047
	ds_read_b128 v[108:111], v71 offset:12304                  // 0000000074D0: D9FE3010 6C000047
	s_waitcnt lgkmcnt(4)                                       // 0000000074D8: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[80:87], v[220:227], 0// 0000000074DC: D3AE00B0 0203B950
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[96:103], v[220:227], 0// 0000000074E4: D3AE00A0 0203B960
	v_or_b32_e32 v64, s18, v232                                // 0000000074EC: 2881D012
	ds_read_b128 v[66:69], v64                                 // 0000000074F0: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 0000000074F8: D9FE0010 46000040
	ds_read_b128 v[74:77], v64 offset:4096                     // 000000007500: D9FE1000 4A000040
	ds_read_b128 v[78:81], v64 offset:4112                     // 000000007508: D9FE1010 4E000040
	s_waitcnt lgkmcnt(4)                                       // 000000007510: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[88:95], v[220:227], 0// 000000007514: D3AE0090 0203B958
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[104:111], v[220:227], 0// 00000000751C: D3AE0080 0203B968
	ds_read_b128 v[82:85], v64 offset:8192                     // 000000007524: D9FE2000 52000040
	ds_read_b128 v[86:89], v64 offset:8208                     // 00000000752C: D9FE2010 56000040
	ds_read_b128 v[112:115], v64 offset:12288                  // 000000007534: D9FE3000 70000040
	ds_read_b128 v[116:119], v64 offset:12304                  // 00000000753C: D9FE3010 74000040
	s_add_u32 s18, s42, 4                                      // 000000007544: 8012842A
	s_cmp_ge_u32 s18, s96                                      // 000000007548: BF096012
	s_cbranch_scc1 13                                          // 00000000754C: BF85000D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5a84>
	s_lshl_b32 s19, s17, 14                                    // 000000007550: 8E138E11
	s_or_b32 s19, s19, s88                                     // 000000007554: 87135813
	s_mul_i32 s18, s18, s8                                     // 000000007558: 92120812
	s_lshl_b32 s18, s18, 7                                     // 00000000755C: 8E128712
	s_mov_b32 m0, s19                                          // 000000007560: BEFC0013
	s_nop 0                                                    // 000000007564: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000007568: E05D1000 121500E9
	s_or_b32 m0, s19, 0x2000                                   // 000000007570: 877CFF13 00002000
	s_nop 0                                                    // 000000007578: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 00000000757C: E05D1000 121500EA
	s_add_u32 s18, s42, 2                                      // 000000007584: 8012822A
	s_cmp_ge_u32 s18, s96                                      // 000000007588: BF096012
	s_cbranch_scc1 14                                          // 00000000758C: BF85000E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5ac8>
	s_xor_b32 s19, s17, 2                                      // 000000007590: 88138211
	s_lshl_b32 s19, s19, 14                                    // 000000007594: 8E138E13
	s_or_b32 s19, s19, s88                                     // 000000007598: 87135813
	s_mul_i32 s18, s18, s8                                     // 00000000759C: 92120812
	s_or_b32 m0, s19, 0x10000                                  // 0000000075A0: 877CFF13 00010000
	s_lshl_b32 s18, s18, 7                                     // 0000000075A8: 8E128712
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 0000000075AC: E05D1000 121400EB
	s_or_b32 m0, s19, 0x12000                                  // 0000000075B4: 877CFF13 00012000
	s_nop 0                                                    // 0000000075BC: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 0000000075C0: E05D1000 121400EC
	s_waitcnt lgkmcnt(4)                                       // 0000000075C8: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[66:73], v[200:207], v[176:191]// 0000000075CC: D3AE00B0 06C39142
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[74:81], v[200:207], v[160:175]// 0000000075D4: D3AE00A0 0683914A
	s_nop 15                                                   // 0000000075DC: BF80000F
	s_nop 3                                                    // 0000000075E0: BF800003
	v_mov_b64_e32 v[96:97], v[160:161]                         // 0000000075E4: 7EC071A0
	v_mov_b64_e32 v[98:99], v[162:163]                         // 0000000075E8: 7EC471A2
	v_mov_b64_e32 v[100:101], v[164:165]                       // 0000000075EC: 7EC871A4
	v_mov_b64_e32 v[102:103], v[166:167]                       // 0000000075F0: 7ECC71A6
	v_mov_b64_e32 v[104:105], v[168:169]                       // 0000000075F4: 7ED071A8
	v_mov_b64_e32 v[106:107], v[170:171]                       // 0000000075F8: 7ED471AA
	v_mov_b64_e32 v[108:109], v[172:173]                       // 0000000075FC: 7ED871AC
	v_mov_b64_e32 v[110:111], v[174:175]                       // 000000007600: 7EDC71AE
	s_waitcnt lgkmcnt(0)                                       // 000000007604: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[82:89], v[200:207], v[144:159]// 000000007608: D3AE0090 06439152
	s_nop 15                                                   // 000000007610: BF80000F
	s_nop 3                                                    // 000000007614: BF800003
	v_mov_b64_e32 v[80:81], v[144:145]                         // 000000007618: 7EA07190
	v_mov_b64_e32 v[82:83], v[146:147]                         // 00000000761C: 7EA47192
	v_mov_b64_e32 v[84:85], v[148:149]                         // 000000007620: 7EA87194
	v_mov_b64_e32 v[86:87], v[150:151]                         // 000000007624: 7EAC7196
	v_mov_b64_e32 v[88:89], v[152:153]                         // 000000007628: 7EB07198
	v_mov_b64_e32 v[90:91], v[154:155]                         // 00000000762C: 7EB4719A
	v_mov_b64_e32 v[92:93], v[156:157]                         // 000000007630: 7EB8719C
	v_mov_b64_e32 v[94:95], v[158:159]                         // 000000007634: 7EBC719E
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[112:119], v[200:207], v[128:143]// 000000007638: D3AE0080 06039170
	s_nop 15                                                   // 000000007640: BF80000F
	s_nop 3                                                    // 000000007644: BF800003
	v_mov_b64_e32 v[64:65], v[128:129]                         // 000000007648: 7E807180
	v_mov_b64_e32 v[66:67], v[130:131]                         // 00000000764C: 7E847182
	v_mov_b64_e32 v[68:69], v[132:133]                         // 000000007650: 7E887184
	v_mov_b64_e32 v[70:71], v[134:135]                         // 000000007654: 7E8C7186
	v_mov_b64_e32 v[72:73], v[136:137]                         // 000000007658: 7E907188
	v_mov_b64_e32 v[74:75], v[138:139]                         // 00000000765C: 7E94718A
	v_mov_b64_e32 v[76:77], v[140:141]                         // 000000007660: 7E98718C
	v_mov_b64_e32 v[78:79], v[142:143]                         // 000000007664: 7E9C718E
	s_lshl_b32 s18, s42, 7                                     // 000000007668: 8E12872A
	s_add_u32 s20, s18, 0x80                                   // 00000000766C: 8014FF12 00000080
	s_sub_u32 s18, s3, s20                                     // 000000007674: 80921403
	s_sub_i32 s18, s18, 0                                      // 000000007678: 81928012
	s_cmp_ge_i32 s18, 32                                       // 00000000767C: BF03A012
	v_mov_b64_e32 v[112:113], v[176:177]                       // 000000007680: 7EE071B0
	v_mov_b64_e32 v[114:115], v[178:179]                       // 000000007684: 7EE471B2
	v_mov_b64_e32 v[116:117], v[180:181]                       // 000000007688: 7EE871B4
	v_mov_b64_e32 v[118:119], v[182:183]                       // 00000000768C: 7EEC71B6
	v_mov_b64_e32 v[120:121], v[184:185]                       // 000000007690: 7EF071B8
	v_mov_b64_e32 v[122:123], v[186:187]                       // 000000007694: 7EF471BA
	v_mov_b64_e32 v[124:125], v[188:189]                       // 000000007698: 7EF871BC
	v_mov_b64_e32 v[126:127], v[190:191]                       // 00000000769C: 7EFC71BE
	s_cbranch_scc1 90                                          // 0000000076A0: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5d0c>
	s_mov_b32 s53, s52                                         // 0000000076A4: BEB50034
	s_mov_b32 s54, s52                                         // 0000000076A8: BEB60034
	s_mov_b32 s55, s52                                         // 0000000076AC: BEB70034
	s_mov_b32 s56, s52                                         // 0000000076B0: BEB80034
	s_mov_b32 s57, s52                                         // 0000000076B4: BEB90034
	s_mov_b32 s58, s52                                         // 0000000076B8: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000076BC: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000076C0: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000076C4: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000076C8: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000076CC: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000076D0: BEC00034
	s_mov_b32 s65, s52                                         // 0000000076D4: BEC10034
	s_mov_b32 s66, s52                                         // 0000000076D8: BEC20034
	s_mov_b32 s67, s52                                         // 0000000076DC: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 0000000076E0: BF048012
	v_mov_b64_e32 v[126:127], s[66:67]                         // 0000000076E4: 7EFC7042
	v_mov_b64_e32 v[124:125], s[64:65]                         // 0000000076E8: 7EF87040
	v_mov_b64_e32 v[122:123], s[62:63]                         // 0000000076EC: 7EF4703E
	v_mov_b64_e32 v[120:121], s[60:61]                         // 0000000076F0: 7EF0703C
	v_mov_b64_e32 v[118:119], s[58:59]                         // 0000000076F4: 7EEC703A
	v_mov_b64_e32 v[116:117], s[56:57]                         // 0000000076F8: 7EE87038
	v_mov_b64_e32 v[114:115], s[54:55]                         // 0000000076FC: 7EE47036
	v_mov_b64_e32 v[112:113], s[52:53]                         // 000000007700: 7EE07034
	s_cbranch_scc1 65                                          // 000000007704: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5d0c>
	v_add_u32_e32 v127, s18, v243                              // 000000007708: 68FFE612
	v_cmp_gt_i32_e32 vcc, 0, v127                              // 00000000770C: 7D88FE80
	s_nop 1                                                    // 000000007710: BF800001
	v_cndmask_b32_e64 v112, v176, v240, vcc                    // 000000007714: D1000070 01ABE1B0
	v_cmp_gt_i32_e32 vcc, 1, v127                              // 00000000771C: 7D88FE81
	s_nop 1                                                    // 000000007720: BF800001
	v_cndmask_b32_e64 v113, v177, v240, vcc                    // 000000007724: D1000071 01ABE1B1
	v_cmp_gt_i32_e32 vcc, 2, v127                              // 00000000772C: 7D88FE82
	s_nop 1                                                    // 000000007730: BF800001
	v_cndmask_b32_e64 v114, v178, v240, vcc                    // 000000007734: D1000072 01ABE1B2
	v_cmp_gt_i32_e32 vcc, 3, v127                              // 00000000773C: 7D88FE83
	s_nop 1                                                    // 000000007740: BF800001
	v_cndmask_b32_e64 v115, v179, v240, vcc                    // 000000007744: D1000073 01ABE1B3
	v_cmp_gt_i32_e32 vcc, 8, v127                              // 00000000774C: 7D88FE88
	s_nop 1                                                    // 000000007750: BF800001
	v_cndmask_b32_e64 v116, v180, v240, vcc                    // 000000007754: D1000074 01ABE1B4
	v_cmp_gt_i32_e32 vcc, 9, v127                              // 00000000775C: 7D88FE89
	s_nop 1                                                    // 000000007760: BF800001
	v_cndmask_b32_e64 v117, v181, v240, vcc                    // 000000007764: D1000075 01ABE1B5
	v_cmp_gt_i32_e32 vcc, 10, v127                             // 00000000776C: 7D88FE8A
	s_nop 1                                                    // 000000007770: BF800001
	v_cndmask_b32_e64 v118, v182, v240, vcc                    // 000000007774: D1000076 01ABE1B6
	v_cmp_gt_i32_e32 vcc, 11, v127                             // 00000000777C: 7D88FE8B
	s_nop 1                                                    // 000000007780: BF800001
	v_cndmask_b32_e64 v119, v183, v240, vcc                    // 000000007784: D1000077 01ABE1B7
	v_cmp_gt_i32_e32 vcc, 16, v127                             // 00000000778C: 7D88FE90
	s_nop 1                                                    // 000000007790: BF800001
	v_cndmask_b32_e64 v120, v184, v240, vcc                    // 000000007794: D1000078 01ABE1B8
	v_cmp_gt_i32_e32 vcc, 17, v127                             // 00000000779C: 7D88FE91
	s_nop 1                                                    // 0000000077A0: BF800001
	v_cndmask_b32_e64 v121, v185, v240, vcc                    // 0000000077A4: D1000079 01ABE1B9
	v_cmp_gt_i32_e32 vcc, 18, v127                             // 0000000077AC: 7D88FE92
	s_nop 1                                                    // 0000000077B0: BF800001
	v_cndmask_b32_e64 v122, v186, v240, vcc                    // 0000000077B4: D100007A 01ABE1BA
	v_cmp_gt_i32_e32 vcc, 19, v127                             // 0000000077BC: 7D88FE93
	s_nop 1                                                    // 0000000077C0: BF800001
	v_cndmask_b32_e64 v123, v187, v240, vcc                    // 0000000077C4: D100007B 01ABE1BB
	v_cmp_gt_i32_e32 vcc, 24, v127                             // 0000000077CC: 7D88FE98
	s_nop 1                                                    // 0000000077D0: BF800001
	v_cndmask_b32_e64 v124, v188, v240, vcc                    // 0000000077D4: D100007C 01ABE1BC
	v_cmp_gt_i32_e32 vcc, 25, v127                             // 0000000077DC: 7D88FE99
	s_nop 1                                                    // 0000000077E0: BF800001
	v_cndmask_b32_e64 v125, v189, v240, vcc                    // 0000000077E4: D100007D 01ABE1BD
	v_cmp_gt_i32_e32 vcc, 26, v127                             // 0000000077EC: 7D88FE9A
	s_nop 1                                                    // 0000000077F0: BF800001
	v_cndmask_b32_e64 v126, v190, v240, vcc                    // 0000000077F4: D100007E 01ABE1BE
	v_cmp_gt_i32_e32 vcc, 27, v127                             // 0000000077FC: 7D88FE9B
	s_nop 1                                                    // 000000007800: BF800001
	v_cndmask_b32_e64 v127, v191, v240, vcc                    // 000000007804: D100007F 01ABE1BF
	s_sub_u32 s18, s3, s20                                     // 00000000780C: 80921403
	s_sub_i32 s18, s18, 32                                     // 000000007810: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 000000007814: BF03A012
	s_cbranch_scc1 90                                          // 000000007818: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5e84>
	s_mov_b32 s53, s52                                         // 00000000781C: BEB50034
	s_mov_b32 s54, s52                                         // 000000007820: BEB60034
	s_mov_b32 s55, s52                                         // 000000007824: BEB70034
	s_mov_b32 s56, s52                                         // 000000007828: BEB80034
	s_mov_b32 s57, s52                                         // 00000000782C: BEB90034
	s_mov_b32 s58, s52                                         // 000000007830: BEBA0034
	s_mov_b32 s59, s52                                         // 000000007834: BEBB0034
	s_mov_b32 s60, s52                                         // 000000007838: BEBC0034
	s_mov_b32 s61, s52                                         // 00000000783C: BEBD0034
	s_mov_b32 s62, s52                                         // 000000007840: BEBE0034
	s_mov_b32 s63, s52                                         // 000000007844: BEBF0034
	s_mov_b32 s64, s52                                         // 000000007848: BEC00034
	s_mov_b32 s65, s52                                         // 00000000784C: BEC10034
	s_mov_b32 s66, s52                                         // 000000007850: BEC20034
	s_mov_b32 s67, s52                                         // 000000007854: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000007858: BF048012
	v_mov_b64_e32 v[110:111], s[66:67]                         // 00000000785C: 7EDC7042
	v_mov_b64_e32 v[108:109], s[64:65]                         // 000000007860: 7ED87040
	v_mov_b64_e32 v[106:107], s[62:63]                         // 000000007864: 7ED4703E
	v_mov_b64_e32 v[104:105], s[60:61]                         // 000000007868: 7ED0703C
	v_mov_b64_e32 v[102:103], s[58:59]                         // 00000000786C: 7ECC703A
	v_mov_b64_e32 v[100:101], s[56:57]                         // 000000007870: 7EC87038
	v_mov_b64_e32 v[98:99], s[54:55]                           // 000000007874: 7EC47036
	v_mov_b64_e32 v[96:97], s[52:53]                           // 000000007878: 7EC07034
	s_cbranch_scc1 65                                          // 00000000787C: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5e84>
	v_add_u32_e32 v111, s18, v243                              // 000000007880: 68DFE612
	v_cmp_gt_i32_e32 vcc, 0, v111                              // 000000007884: 7D88DE80
	s_nop 1                                                    // 000000007888: BF800001
	v_cndmask_b32_e64 v96, v160, v240, vcc                     // 00000000788C: D1000060 01ABE1A0
	v_cmp_gt_i32_e32 vcc, 1, v111                              // 000000007894: 7D88DE81
	s_nop 1                                                    // 000000007898: BF800001
	v_cndmask_b32_e64 v97, v161, v240, vcc                     // 00000000789C: D1000061 01ABE1A1
	v_cmp_gt_i32_e32 vcc, 2, v111                              // 0000000078A4: 7D88DE82
	s_nop 1                                                    // 0000000078A8: BF800001
	v_cndmask_b32_e64 v98, v162, v240, vcc                     // 0000000078AC: D1000062 01ABE1A2
	v_cmp_gt_i32_e32 vcc, 3, v111                              // 0000000078B4: 7D88DE83
	s_nop 1                                                    // 0000000078B8: BF800001
	v_cndmask_b32_e64 v99, v163, v240, vcc                     // 0000000078BC: D1000063 01ABE1A3
	v_cmp_gt_i32_e32 vcc, 8, v111                              // 0000000078C4: 7D88DE88
	s_nop 1                                                    // 0000000078C8: BF800001
	v_cndmask_b32_e64 v100, v164, v240, vcc                    // 0000000078CC: D1000064 01ABE1A4
	v_cmp_gt_i32_e32 vcc, 9, v111                              // 0000000078D4: 7D88DE89
	s_nop 1                                                    // 0000000078D8: BF800001
	v_cndmask_b32_e64 v101, v165, v240, vcc                    // 0000000078DC: D1000065 01ABE1A5
	v_cmp_gt_i32_e32 vcc, 10, v111                             // 0000000078E4: 7D88DE8A
	s_nop 1                                                    // 0000000078E8: BF800001
	v_cndmask_b32_e64 v102, v166, v240, vcc                    // 0000000078EC: D1000066 01ABE1A6
	v_cmp_gt_i32_e32 vcc, 11, v111                             // 0000000078F4: 7D88DE8B
	s_nop 1                                                    // 0000000078F8: BF800001
	v_cndmask_b32_e64 v103, v167, v240, vcc                    // 0000000078FC: D1000067 01ABE1A7
	v_cmp_gt_i32_e32 vcc, 16, v111                             // 000000007904: 7D88DE90
	s_nop 1                                                    // 000000007908: BF800001
	v_cndmask_b32_e64 v104, v168, v240, vcc                    // 00000000790C: D1000068 01ABE1A8
	v_cmp_gt_i32_e32 vcc, 17, v111                             // 000000007914: 7D88DE91
	s_nop 1                                                    // 000000007918: BF800001
	v_cndmask_b32_e64 v105, v169, v240, vcc                    // 00000000791C: D1000069 01ABE1A9
	v_cmp_gt_i32_e32 vcc, 18, v111                             // 000000007924: 7D88DE92
	s_nop 1                                                    // 000000007928: BF800001
	v_cndmask_b32_e64 v106, v170, v240, vcc                    // 00000000792C: D100006A 01ABE1AA
	v_cmp_gt_i32_e32 vcc, 19, v111                             // 000000007934: 7D88DE93
	s_nop 1                                                    // 000000007938: BF800001
	v_cndmask_b32_e64 v107, v171, v240, vcc                    // 00000000793C: D100006B 01ABE1AB
	v_cmp_gt_i32_e32 vcc, 24, v111                             // 000000007944: 7D88DE98
	s_nop 1                                                    // 000000007948: BF800001
	v_cndmask_b32_e64 v108, v172, v240, vcc                    // 00000000794C: D100006C 01ABE1AC
	v_cmp_gt_i32_e32 vcc, 25, v111                             // 000000007954: 7D88DE99
	s_nop 1                                                    // 000000007958: BF800001
	v_cndmask_b32_e64 v109, v173, v240, vcc                    // 00000000795C: D100006D 01ABE1AD
	v_cmp_gt_i32_e32 vcc, 26, v111                             // 000000007964: 7D88DE9A
	s_nop 1                                                    // 000000007968: BF800001
	v_cndmask_b32_e64 v110, v174, v240, vcc                    // 00000000796C: D100006E 01ABE1AE
	v_cmp_gt_i32_e32 vcc, 27, v111                             // 000000007974: 7D88DE9B
	s_nop 1                                                    // 000000007978: BF800001
	v_cndmask_b32_e64 v111, v175, v240, vcc                    // 00000000797C: D100006F 01ABE1AF
	s_sub_u32 s18, s3, s20                                     // 000000007984: 80921403
	s_sub_i32 s18, s18, 64                                     // 000000007988: 8192C012
	scratch_load_dwordx4 v[164:167], off, off                  // 00000000798C: DC5C4000 A47F0000
	scratch_load_dwordx4 v[168:171], off, off offset:16        // 000000007994: DC5C4010 A87F0000
	s_cmp_ge_i32 s18, 32                                       // 00000000799C: BF03A012
	s_cbranch_scc1 90                                          // 0000000079A0: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x600c>
	s_mov_b32 s53, s52                                         // 0000000079A4: BEB50034
	s_mov_b32 s54, s52                                         // 0000000079A8: BEB60034
	s_mov_b32 s55, s52                                         // 0000000079AC: BEB70034
	s_mov_b32 s56, s52                                         // 0000000079B0: BEB80034
	s_mov_b32 s57, s52                                         // 0000000079B4: BEB90034
	s_mov_b32 s58, s52                                         // 0000000079B8: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000079BC: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000079C0: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000079C4: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000079C8: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000079CC: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000079D0: BEC00034
	s_mov_b32 s65, s52                                         // 0000000079D4: BEC10034
	s_mov_b32 s66, s52                                         // 0000000079D8: BEC20034
	s_mov_b32 s67, s52                                         // 0000000079DC: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 0000000079E0: BF048012
	v_mov_b64_e32 v[94:95], s[66:67]                           // 0000000079E4: 7EBC7042
	v_mov_b64_e32 v[92:93], s[64:65]                           // 0000000079E8: 7EB87040
	v_mov_b64_e32 v[90:91], s[62:63]                           // 0000000079EC: 7EB4703E
	v_mov_b64_e32 v[88:89], s[60:61]                           // 0000000079F0: 7EB0703C
	v_mov_b64_e32 v[86:87], s[58:59]                           // 0000000079F4: 7EAC703A
	v_mov_b64_e32 v[84:85], s[56:57]                           // 0000000079F8: 7EA87038
	v_mov_b64_e32 v[82:83], s[54:55]                           // 0000000079FC: 7EA47036
	v_mov_b64_e32 v[80:81], s[52:53]                           // 000000007A00: 7EA07034
	s_cbranch_scc1 65                                          // 000000007A04: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x600c>
	v_add_u32_e32 v95, s18, v243                               // 000000007A08: 68BFE612
	v_cmp_gt_i32_e32 vcc, 0, v95                               // 000000007A0C: 7D88BE80
	s_nop 1                                                    // 000000007A10: BF800001
	v_cndmask_b32_e64 v80, v144, v240, vcc                     // 000000007A14: D1000050 01ABE190
	v_cmp_gt_i32_e32 vcc, 1, v95                               // 000000007A1C: 7D88BE81
	s_nop 1                                                    // 000000007A20: BF800001
	v_cndmask_b32_e64 v81, v145, v240, vcc                     // 000000007A24: D1000051 01ABE191
	v_cmp_gt_i32_e32 vcc, 2, v95                               // 000000007A2C: 7D88BE82
	s_nop 1                                                    // 000000007A30: BF800001
	v_cndmask_b32_e64 v82, v146, v240, vcc                     // 000000007A34: D1000052 01ABE192
	v_cmp_gt_i32_e32 vcc, 3, v95                               // 000000007A3C: 7D88BE83
	s_nop 1                                                    // 000000007A40: BF800001
	v_cndmask_b32_e64 v83, v147, v240, vcc                     // 000000007A44: D1000053 01ABE193
	v_cmp_gt_i32_e32 vcc, 8, v95                               // 000000007A4C: 7D88BE88
	s_nop 1                                                    // 000000007A50: BF800001
	v_cndmask_b32_e64 v84, v148, v240, vcc                     // 000000007A54: D1000054 01ABE194
	v_cmp_gt_i32_e32 vcc, 9, v95                               // 000000007A5C: 7D88BE89
	s_nop 1                                                    // 000000007A60: BF800001
	v_cndmask_b32_e64 v85, v149, v240, vcc                     // 000000007A64: D1000055 01ABE195
	v_cmp_gt_i32_e32 vcc, 10, v95                              // 000000007A6C: 7D88BE8A
	s_nop 1                                                    // 000000007A70: BF800001
	v_cndmask_b32_e64 v86, v150, v240, vcc                     // 000000007A74: D1000056 01ABE196
	v_cmp_gt_i32_e32 vcc, 11, v95                              // 000000007A7C: 7D88BE8B
	s_nop 1                                                    // 000000007A80: BF800001
	v_cndmask_b32_e64 v87, v151, v240, vcc                     // 000000007A84: D1000057 01ABE197
	v_cmp_gt_i32_e32 vcc, 16, v95                              // 000000007A8C: 7D88BE90
	s_nop 1                                                    // 000000007A90: BF800001
	v_cndmask_b32_e64 v88, v152, v240, vcc                     // 000000007A94: D1000058 01ABE198
	v_cmp_gt_i32_e32 vcc, 17, v95                              // 000000007A9C: 7D88BE91
	s_nop 1                                                    // 000000007AA0: BF800001
	v_cndmask_b32_e64 v89, v153, v240, vcc                     // 000000007AA4: D1000059 01ABE199
	v_cmp_gt_i32_e32 vcc, 18, v95                              // 000000007AAC: 7D88BE92
	s_nop 1                                                    // 000000007AB0: BF800001
	v_cndmask_b32_e64 v90, v154, v240, vcc                     // 000000007AB4: D100005A 01ABE19A
	v_cmp_gt_i32_e32 vcc, 19, v95                              // 000000007ABC: 7D88BE93
	s_nop 1                                                    // 000000007AC0: BF800001
	v_cndmask_b32_e64 v91, v155, v240, vcc                     // 000000007AC4: D100005B 01ABE19B
	v_cmp_gt_i32_e32 vcc, 24, v95                              // 000000007ACC: 7D88BE98
	s_nop 1                                                    // 000000007AD0: BF800001
	v_cndmask_b32_e64 v92, v156, v240, vcc                     // 000000007AD4: D100005C 01ABE19C
	v_cmp_gt_i32_e32 vcc, 25, v95                              // 000000007ADC: 7D88BE99
	s_nop 1                                                    // 000000007AE0: BF800001
	v_cndmask_b32_e64 v93, v157, v240, vcc                     // 000000007AE4: D100005D 01ABE19D
	v_cmp_gt_i32_e32 vcc, 26, v95                              // 000000007AEC: 7D88BE9A
	s_nop 1                                                    // 000000007AF0: BF800001
	v_cndmask_b32_e64 v94, v158, v240, vcc                     // 000000007AF4: D100005E 01ABE19E
	v_cmp_gt_i32_e32 vcc, 27, v95                              // 000000007AFC: 7D88BE9B
	s_nop 1                                                    // 000000007B00: BF800001
	v_cndmask_b32_e64 v95, v159, v240, vcc                     // 000000007B04: D100005F 01ABE19F
	s_sub_u32 s18, s3, s20                                     // 000000007B0C: 80921403
	s_sub_i32 s18, s18, 0x60                                   // 000000007B10: 8192FF12 00000060
	s_cmp_ge_i32 s18, 32                                       // 000000007B18: BF03A012
	s_cbranch_scc1 90                                          // 000000007B1C: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6188>
	s_mov_b32 s53, s52                                         // 000000007B20: BEB50034
	s_mov_b32 s54, s52                                         // 000000007B24: BEB60034
	s_mov_b32 s55, s52                                         // 000000007B28: BEB70034
	s_mov_b32 s56, s52                                         // 000000007B2C: BEB80034
	s_mov_b32 s57, s52                                         // 000000007B30: BEB90034
	s_mov_b32 s58, s52                                         // 000000007B34: BEBA0034
	s_mov_b32 s59, s52                                         // 000000007B38: BEBB0034
	s_mov_b32 s60, s52                                         // 000000007B3C: BEBC0034
	s_mov_b32 s61, s52                                         // 000000007B40: BEBD0034
	s_mov_b32 s62, s52                                         // 000000007B44: BEBE0034
	s_mov_b32 s63, s52                                         // 000000007B48: BEBF0034
	s_mov_b32 s64, s52                                         // 000000007B4C: BEC00034
	s_mov_b32 s65, s52                                         // 000000007B50: BEC10034
	s_mov_b32 s66, s52                                         // 000000007B54: BEC20034
	s_mov_b32 s67, s52                                         // 000000007B58: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000007B5C: BF048012
	v_mov_b64_e32 v[78:79], s[66:67]                           // 000000007B60: 7E9C7042
	v_mov_b64_e32 v[76:77], s[64:65]                           // 000000007B64: 7E987040
	v_mov_b64_e32 v[74:75], s[62:63]                           // 000000007B68: 7E94703E
	v_mov_b64_e32 v[72:73], s[60:61]                           // 000000007B6C: 7E90703C
	v_mov_b64_e32 v[70:71], s[58:59]                           // 000000007B70: 7E8C703A
	v_mov_b64_e32 v[68:69], s[56:57]                           // 000000007B74: 7E887038
	v_mov_b64_e32 v[66:67], s[54:55]                           // 000000007B78: 7E847036
	v_mov_b64_e32 v[64:65], s[52:53]                           // 000000007B7C: 7E807034
	s_cbranch_scc1 65                                          // 000000007B80: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6188>
	v_add_u32_e32 v79, s18, v243                               // 000000007B84: 689FE612
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 000000007B88: 7D889E80
	s_nop 1                                                    // 000000007B8C: BF800001
	v_cndmask_b32_e64 v64, v128, v240, vcc                     // 000000007B90: D1000040 01ABE180
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 000000007B98: 7D889E81
	s_nop 1                                                    // 000000007B9C: BF800001
	v_cndmask_b32_e64 v65, v129, v240, vcc                     // 000000007BA0: D1000041 01ABE181
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 000000007BA8: 7D889E82
	s_nop 1                                                    // 000000007BAC: BF800001
	v_cndmask_b32_e64 v66, v130, v240, vcc                     // 000000007BB0: D1000042 01ABE182
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 000000007BB8: 7D889E83
	s_nop 1                                                    // 000000007BBC: BF800001
	v_cndmask_b32_e64 v67, v131, v240, vcc                     // 000000007BC0: D1000043 01ABE183
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 000000007BC8: 7D889E88
	s_nop 1                                                    // 000000007BCC: BF800001
	v_cndmask_b32_e64 v68, v132, v240, vcc                     // 000000007BD0: D1000044 01ABE184
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 000000007BD8: 7D889E89
	s_nop 1                                                    // 000000007BDC: BF800001
	v_cndmask_b32_e64 v69, v133, v240, vcc                     // 000000007BE0: D1000045 01ABE185
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 000000007BE8: 7D889E8A
	s_nop 1                                                    // 000000007BEC: BF800001
	v_cndmask_b32_e64 v70, v134, v240, vcc                     // 000000007BF0: D1000046 01ABE186
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 000000007BF8: 7D889E8B
	s_nop 1                                                    // 000000007BFC: BF800001
	v_cndmask_b32_e64 v71, v135, v240, vcc                     // 000000007C00: D1000047 01ABE187
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 000000007C08: 7D889E90
	s_nop 1                                                    // 000000007C0C: BF800001
	v_cndmask_b32_e64 v72, v136, v240, vcc                     // 000000007C10: D1000048 01ABE188
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 000000007C18: 7D889E91
	s_nop 1                                                    // 000000007C1C: BF800001
	v_cndmask_b32_e64 v73, v137, v240, vcc                     // 000000007C20: D1000049 01ABE189
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 000000007C28: 7D889E92
	s_nop 1                                                    // 000000007C2C: BF800001
	v_cndmask_b32_e64 v74, v138, v240, vcc                     // 000000007C30: D100004A 01ABE18A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 000000007C38: 7D889E93
	s_nop 1                                                    // 000000007C3C: BF800001
	v_cndmask_b32_e64 v75, v139, v240, vcc                     // 000000007C40: D100004B 01ABE18B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 000000007C48: 7D889E98
	s_nop 1                                                    // 000000007C4C: BF800001
	v_cndmask_b32_e64 v76, v140, v240, vcc                     // 000000007C50: D100004C 01ABE18C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 000000007C58: 7D889E99
	s_nop 1                                                    // 000000007C5C: BF800001
	v_cndmask_b32_e64 v77, v141, v240, vcc                     // 000000007C60: D100004D 01ABE18D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 000000007C68: 7D889E9A
	s_nop 1                                                    // 000000007C6C: BF800001
	v_cndmask_b32_e64 v78, v142, v240, vcc                     // 000000007C70: D100004E 01ABE18E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 000000007C78: 7D889E9B
	s_nop 1                                                    // 000000007C7C: BF800001
	v_cndmask_b32_e64 v79, v143, v240, vcc                     // 000000007C80: D100004F 01ABE18F
	v_max_f32_e32 v128, v112, v113                             // 000000007C88: 1700E370
	v_max3_f32 v128, v114, v115, v128                          // 000000007C8C: D1D30080 0602E772
	v_max3_f32 v128, v116, v117, v128                          // 000000007C94: D1D30080 0602EB74
	v_max3_f32 v128, v118, v119, v128                          // 000000007C9C: D1D30080 0602EF76
	v_max3_f32 v128, v120, v121, v128                          // 000000007CA4: D1D30080 0602F378
	v_max3_f32 v128, v122, v123, v128                          // 000000007CAC: D1D30080 0602F77A
	v_max3_f32 v128, v124, v125, v128                          // 000000007CB4: D1D30080 0602FB7C
	v_max3_f32 v129, v126, v127, v128                          // 000000007CBC: D1D30081 0602FF7E
	v_max_f32_e32 v128, v96, v97                               // 000000007CC4: 1700C360
	v_max3_f32 v128, v98, v99, v128                            // 000000007CC8: D1D30080 0602C762
	v_max3_f32 v128, v100, v101, v128                          // 000000007CD0: D1D30080 0602CB64
	v_max3_f32 v128, v102, v103, v128                          // 000000007CD8: D1D30080 0602CF66
	v_max3_f32 v128, v104, v105, v128                          // 000000007CE0: D1D30080 0602D368
	v_max3_f32 v128, v106, v107, v128                          // 000000007CE8: D1D30080 0602D76A
	v_max3_f32 v128, v108, v109, v128                          // 000000007CF0: D1D30080 0602DB6C
	v_max3_f32 v130, v110, v111, v128                          // 000000007CF8: D1D30082 0602DF6E
	v_max_f32_e32 v128, v80, v81                               // 000000007D00: 1700A350
	v_max3_f32 v128, v82, v83, v128                            // 000000007D04: D1D30080 0602A752
	v_max3_f32 v128, v84, v85, v128                            // 000000007D0C: D1D30080 0602AB54
	v_max3_f32 v128, v86, v87, v128                            // 000000007D14: D1D30080 0602AF56
	v_max3_f32 v128, v88, v89, v128                            // 000000007D1C: D1D30080 0602B358
	v_max3_f32 v128, v90, v91, v128                            // 000000007D24: D1D30080 0602B75A
	v_max3_f32 v128, v92, v93, v128                            // 000000007D2C: D1D30080 0602BB5C
	v_max3_f32 v128, v94, v95, v128                            // 000000007D34: D1D30080 0602BF5E
	v_max_f32_e32 v131, v64, v65                               // 000000007D3C: 17068340
	v_max3_f32 v131, v66, v67, v131                            // 000000007D40: D1D30083 060E8742
	v_max3_f32 v131, v68, v69, v131                            // 000000007D48: D1D30083 060E8B44
	v_max3_f32 v131, v70, v71, v131                            // 000000007D50: D1D30083 060E8F46
	v_max3_f32 v131, v72, v73, v131                            // 000000007D58: D1D30083 060E9348
	v_max3_f32 v131, v74, v75, v131                            // 000000007D60: D1D30083 060E974A
	v_max3_f32 v131, v76, v77, v131                            // 000000007D68: D1D30083 060E9B4C
	v_max3_f32 v131, v78, v79, v131                            // 000000007D70: D1D30083 060E9F4E
	v_max_f32_e32 v128, v128, v131                             // 000000007D78: 17010780
	v_max_f32_e32 v130, v129, v130                             // 000000007D7C: 17050581
	v_mov_b32_e32 v131, v130                                   // 000000007D80: 7F060382
	s_nop 1                                                    // 000000007D84: BF800001
	v_permlane32_swap_b32_e32 v130, v131                       // 000000007D88: 7F04B583
	v_mov_b32_e32 v129, v128                                   // 000000007D8C: 7F020380
	s_nop 1                                                    // 000000007D90: BF800001
	v_permlane32_swap_b32_e32 v128, v129                       // 000000007D94: 7F00B581
	v_max_f32_e32 v128, v128, v129                             // 000000007D98: 17010380
	v_max_f32_e32 v130, v130, v131                             // 000000007D9C: 17050782
	v_max_f32_e32 v129, v130, v128                             // 000000007DA0: 17030182
	v_mul_f32_e32 v129, v238, v129                             // 000000007DA4: 0B0303EE
	v_max_f32_e32 v129, v252, v129                             // 000000007DA8: 170303FC
	v_sub_f32_e32 v131, v129, v252                             // 000000007DAC: 0507F981
	v_cmp_lt_f32_e32 vcc, s89, v131                            // 000000007DB0: 7C830659
	s_cmp_lg_u64 vcc, 0                                        // 000000007DB4: BF13806A
	s_cselect_b32 s18, 1, 0                                    // 000000007DB8: 85128081
	s_cselect_b64 s[18:19], -1, 0                              // 000000007DBC: 859280C1
	v_cndmask_b32_e64 v129, v252, v129, s[18:19]               // 000000007DC0: D1000081 004B03FC
	v_fma_f32 v130, v130, v238, -v129                          // 000000007DC8: D1CB0082 8607DD82
	v_floor_f32_e32 v130, v130                                 // 000000007DD0: 7F043F82
	v_med3_f32 v132, v130, s98, 0                              // 000000007DD4: D1D60084 0200C582
	v_cvt_i32_f32_e32 v130, v132                               // 000000007DDC: 7F041184
	v_add_u32_e32 v130, 0x7f, v130                             // 000000007DE0: 690504FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v130                           // 000000007DE8: 25350497
	v_fma_f32 v128, v128, v238, -v129                          // 000000007DEC: D1CB0080 8607DD80
	v_floor_f32_e32 v128, v128                                 // 000000007DF4: 7F003F80
	v_med3_f32 v128, v128, s98, 0                              // 000000007DF8: D1D60080 0200C580
	v_cvt_i32_f32_e32 v131, v128                               // 000000007E00: 7F061180
	v_add_u32_e32 v131, 0x7f, v131                             // 000000007E04: 690706FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v131                           // 000000007E0C: 25370697
	v_mov_b32_e32 v133, s50                                    // 000000007E10: 7F0A0232
	v_fma_f32 v133, v129, s99, v133                            // 000000007E14: D1CB0085 0614C781
	v_fma_f32 v152, v132, s99, v133                            // 000000007E1C: D1CB0098 0614C784
	v_fma_f32 v150, v128, s99, v133                            // 000000007E24: D1CB0096 0614C780
	v_lshl_or_b32 v128, s17, 14, v245                          // 000000007E2C: D2000080 07D51C11
	v_add3_u32 v128, v244, v128, s92                           // 000000007E34: D1FF0080 017301F4
	s_waitcnt vmcnt(2)                                         // 000000007E3C: BF8C0F72
	ds_read_b64_tr_b8 v[132:133], v128                         // 000000007E40: D9C40000 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:1024             // 000000007E48: D9C40400 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:2048             // 000000007E50: D9C40800 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:3072             // 000000007E58: D9C40C00 8A000080
	ds_read_b64_tr_b8 v[140:141], v128 offset:256              // 000000007E60: D9C40100 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:1280             // 000000007E68: D9C40500 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:2304             // 000000007E70: D9C40900 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:3328             // 000000007E78: D9C40D00 92000080
	ds_read_b64_tr_b8 v[156:157], v128 offset:512              // 000000007E80: D9C40200 9C000080
	ds_read_b64_tr_b8 v[158:159], v128 offset:1536             // 000000007E88: D9C40600 9E000080
	ds_read_b64_tr_b8 v[160:161], v128 offset:2560             // 000000007E90: D9C40A00 A0000080
	ds_read_b64_tr_b8 v[162:163], v128 offset:3584             // 000000007E98: D9C40E00 A2000080
	s_waitcnt lgkmcnt(4)                                       // 000000007EA0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[132:139], v[208:215], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000007EA4: D3AC0000 0003F7F2 D3AE0830 04C3A184
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[140:147], v[208:215], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000007EB4: D3AC0000 0003F7F2 D3AE0820 0483A18C
	ds_read_b64_tr_b8 v[132:133], v128 offset:768              // 000000007EC4: D9C40300 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:1792             // 000000007ECC: D9C40700 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:2816             // 000000007ED4: D9C40B00 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:3840             // 000000007EDC: D9C40F00 8A000080
	ds_read_b64_tr_b8 v[140:141], v128 offset:4096             // 000000007EE4: D9C41000 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:5120             // 000000007EEC: D9C41400 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:6144             // 000000007EF4: D9C41800 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:7168             // 000000007EFC: D9C41C00 92000080
	s_waitcnt lgkmcnt(4)                                       // 000000007F04: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[156:163], v[208:215], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000007F08: D3AC0000 0003F7F2 D3AE0810 0443A19C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[132:139], v[208:215], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000007F18: D3AC0000 0003F7F2 D3AE0800 0403A184
	ds_read_b64_tr_b8 v[156:157], v128 offset:4352             // 000000007F28: D9C41100 9C000080
	ds_read_b64_tr_b8 v[158:159], v128 offset:5376             // 000000007F30: D9C41500 9E000080
	ds_read_b64_tr_b8 v[160:161], v128 offset:6400             // 000000007F38: D9C41900 A0000080
	ds_read_b64_tr_b8 v[162:163], v128 offset:7424             // 000000007F40: D9C41D00 A2000080
	ds_read_b64_tr_b8 v[132:133], v128 offset:4608             // 000000007F48: D9C41200 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:5632             // 000000007F50: D9C41600 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:6656             // 000000007F58: D9C41A00 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:7680             // 000000007F60: D9C41E00 8A000080
	s_waitcnt vmcnt(0) lgkmcnt(4)                              // 000000007F68: BF8C0470
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[140:147], v[164:171], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000007F6C: D3AC0000 0003FBF2 D3AE0830 04C3498C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[156:163], v[164:171], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000007F7C: D3AC0000 0003FBF2 D3AE0820 0483499C
	ds_read_b64_tr_b8 v[140:141], v128 offset:4864             // 000000007F8C: D9C41300 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:5888             // 000000007F94: D9C41700 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:6912             // 000000007F9C: D9C41B00 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:7936             // 000000007FA4: D9C41F00 92000080
	s_waitcnt lgkmcnt(0)                                       // 000000007FAC: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[132:139], v[164:171], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000007FB0: D3AC0000 0003FBF2 D3AE0810 04434984
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[140:147], v[164:171], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000007FC0: D3AC0000 0003FBF2 D3AE0800 0403498C
	s_cbranch_vccz 68                                          // 000000007FD0: BF860044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x65e4>
	v_sub_f32_e32 v128, v252, v129                             // 000000007FD4: 050103FC
	v_exp_f32_e32 v128, v128                                   // 000000007FD8: 7F004180
	s_nop 3                                                    // 000000007FDC: BF800003
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 000000007FE0: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 000000007FE8: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000007FF0: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000007FF8: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000008000: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000008008: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000008010: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000008018: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000008020: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000008028: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000008030: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000008038: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000008040: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000008048: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000008050: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000008058: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000008060: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000008068: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000008070: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000008078: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000008080: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000008088: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000008090: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 000000008098: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 0000000080A0: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 0000000080A8: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 0000000080B0: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 0000000080B8: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 0000000080C0: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 0000000080C8: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 0000000080D0: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 0000000080D8: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 0000000080E0: 0BF501FA
	s_waitcnt vmcnt(0)                                         // 0000000080E4: BF8C0F70
	s_barrier                                                  // 0000000080E8: BF8A0000
	s_add_u32 s42, s42, 1                                      // 0000000080EC: 802A812A
	v_mov_b32_e32 v253, v131                                   // 0000000080F0: 7FFA0383
	v_mov_b32_e32 v251, v130                                   // 0000000080F4: 7FF60382
	v_mov_b32_e32 v252, v129                                   // 0000000080F8: 7FF80381
	s_branch 62924                                             // 0000000080FC: BF82F5CC <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d30>
	s_cmp_eq_u32 s42, s79                                      // 000000008100: BF064F2A
	s_cbranch_scc0 411                                         // 000000008104: BF84019B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6c74>
	s_setprio 0                                                // 000000008108: BF8F0000
	v_fma_f32 v128, v112, v239, v152                           // 00000000810C: D1CB0080 0663DF70
	v_fma_f32 v129, v113, v239, v152                           // 000000008114: D1CB0081 0663DF71
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 00000000811C: D1DD0080 02010180
	v_fma_f32 v130, v114, v239, v152                           // 000000008124: D1CB0082 0663DF72
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 00000000812C: D1DD0080 06010381
	v_fma_f32 v131, v115, v239, v152                           // 000000008134: D1CB0083 0663DF73
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 00000000813C: D1DD0080 06010582
	v_cvt_pk_u8_f32 v136, v131, 3, v128                        // 000000008144: D1DD0088 06010783
	v_fma_f32 v128, v96, v239, v152                            // 00000000814C: D1CB0080 0663DF60
	v_fma_f32 v129, v97, v239, v152                            // 000000008154: D1CB0081 0663DF61
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 00000000815C: D1DD0080 02010180
	v_fma_f32 v130, v98, v239, v152                            // 000000008164: D1CB0082 0663DF62
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 00000000816C: D1DD0080 06010381
	v_fma_f32 v131, v99, v239, v152                            // 000000008174: D1CB0083 0663DF63
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 00000000817C: D1DD0080 06010582
	v_cvt_pk_u8_f32 v140, v131, 3, v128                        // 000000008184: D1DD008C 06010783
	v_fma_f32 v128, v116, v239, v152                           // 00000000818C: D1CB0080 0663DF74
	v_fma_f32 v129, v117, v239, v152                           // 000000008194: D1CB0081 0663DF75
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 00000000819C: D1DD0080 02010180
	v_fma_f32 v130, v118, v239, v152                           // 0000000081A4: D1CB0082 0663DF76
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 0000000081AC: D1DD0080 06010381
	v_fma_f32 v131, v119, v239, v152                           // 0000000081B4: D1CB0083 0663DF77
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 0000000081BC: D1DD0080 06010582
	v_cvt_pk_u8_f32 v137, v131, 3, v128                        // 0000000081C4: D1DD0089 06010783
	v_fma_f32 v128, v100, v239, v152                           // 0000000081CC: D1CB0080 0663DF64
	v_fma_f32 v129, v101, v239, v152                           // 0000000081D4: D1CB0081 0663DF65
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000081DC: D1DD0080 02010180
	v_fma_f32 v130, v102, v239, v152                           // 0000000081E4: D1CB0082 0663DF66
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 0000000081EC: D1DD0080 06010381
	v_fma_f32 v131, v103, v239, v152                           // 0000000081F4: D1CB0083 0663DF67
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 0000000081FC: D1DD0080 06010582
	v_cvt_pk_u8_f32 v141, v131, 3, v128                        // 000000008204: D1DD008D 06010783
	v_fma_f32 v128, v120, v239, v152                           // 00000000820C: D1CB0080 0663DF78
	v_fma_f32 v129, v121, v239, v152                           // 000000008214: D1CB0081 0663DF79
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 00000000821C: D1DD0080 02010180
	v_fma_f32 v130, v122, v239, v152                           // 000000008224: D1CB0082 0663DF7A
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 00000000822C: D1DD0080 06010381
	v_fma_f32 v131, v123, v239, v152                           // 000000008234: D1CB0083 0663DF7B
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 00000000823C: D1DD0080 06010582
	v_cvt_pk_u8_f32 v138, v131, 3, v128                        // 000000008244: D1DD008A 06010783
	v_fma_f32 v128, v104, v239, v152                           // 00000000824C: D1CB0080 0663DF68
	v_fma_f32 v129, v105, v239, v152                           // 000000008254: D1CB0081 0663DF69
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 00000000825C: D1DD0080 02010180
	v_fma_f32 v130, v106, v239, v152                           // 000000008264: D1CB0082 0663DF6A
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 00000000826C: D1DD0080 06010381
	v_fma_f32 v131, v107, v239, v152                           // 000000008274: D1CB0083 0663DF6B
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 00000000827C: D1DD0080 06010582
	v_cvt_pk_u8_f32 v142, v131, 3, v128                        // 000000008284: D1DD008E 06010783
	v_fma_f32 v128, v124, v239, v152                           // 00000000828C: D1CB0080 0663DF7C
	v_fma_f32 v129, v125, v239, v152                           // 000000008294: D1CB0081 0663DF7D
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 00000000829C: D1DD0080 02010180
	v_fma_f32 v130, v126, v239, v152                           // 0000000082A4: D1CB0082 0663DF7E
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 0000000082AC: D1DD0080 06010381
	v_fma_f32 v131, v127, v239, v152                           // 0000000082B4: D1CB0083 0663DF7F
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 0000000082BC: D1DD0080 06010582
	v_cvt_pk_u8_f32 v139, v131, 3, v128                        // 0000000082C4: D1DD008B 06010783
	v_fma_f32 v128, v108, v239, v152                           // 0000000082CC: D1CB0080 0663DF6C
	v_fma_f32 v129, v109, v239, v152                           // 0000000082D4: D1CB0081 0663DF6D
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000082DC: D1DD0080 02010180
	v_fma_f32 v130, v110, v239, v152                           // 0000000082E4: D1CB0082 0663DF6E
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 0000000082EC: D1DD0080 06010381
	v_fma_f32 v131, v111, v239, v152                           // 0000000082F4: D1CB0083 0663DF6F
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 0000000082FC: D1DD0080 06010582
	v_cvt_pk_u8_f32 v143, v131, 3, v128                        // 000000008304: D1DD008F 06010783
	v_fma_f32 v128, v80, v239, v150                            // 00000000830C: D1CB0080 065BDF50
	v_fma_f32 v129, v81, v239, v150                            // 000000008314: D1CB0081 065BDF51
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 00000000831C: D1DD0080 02010180
	v_fma_f32 v130, v82, v239, v150                            // 000000008324: D1CB0082 065BDF52
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 00000000832C: D1DD0080 06010381
	v_fma_f32 v129, v64, v239, v150                            // 000000008334: D1CB0081 065BDF40
	v_fma_f32 v131, v83, v239, v150                            // 00000000833C: D1CB0083 065BDF53
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000008344: D1DD0080 06010582
	v_fma_f32 v130, v65, v239, v150                            // 00000000834C: D1CB0082 065BDF41
	v_cvt_pk_u8_f32 v129, v129, 0, 0                           // 000000008354: D1DD0081 02010181
	v_cvt_pk_u8_f32 v128, v131, 3, v128                        // 00000000835C: D1DD0080 06010783
	v_fma_f32 v131, v66, v239, v150                            // 000000008364: D1CB0083 065BDF42
	v_cvt_pk_u8_f32 v129, v130, 1, v129                        // 00000000836C: D1DD0081 06050382
	v_fma_f32 v132, v67, v239, v150                            // 000000008374: D1CB0084 065BDF43
	v_cvt_pk_u8_f32 v129, v131, 2, v129                        // 00000000837C: D1DD0081 06050583
	v_cvt_pk_u8_f32 v132, v132, 3, v129                        // 000000008384: D1DD0084 06050784
	v_fma_f32 v129, v84, v239, v150                            // 00000000838C: D1CB0081 065BDF54
	v_fma_f32 v130, v85, v239, v150                            // 000000008394: D1CB0082 065BDF55
	v_cvt_pk_u8_f32 v129, v129, 0, 0                           // 00000000839C: D1DD0081 02010181
	v_fma_f32 v131, v86, v239, v150                            // 0000000083A4: D1CB0083 065BDF56
	v_cvt_pk_u8_f32 v129, v130, 1, v129                        // 0000000083AC: D1DD0081 06050382
	v_fma_f32 v130, v68, v239, v150                            // 0000000083B4: D1CB0082 065BDF44
	v_fma_f32 v133, v87, v239, v150                            // 0000000083BC: D1CB0085 065BDF57
	v_cvt_pk_u8_f32 v129, v131, 2, v129                        // 0000000083C4: D1DD0081 06050583
	v_fma_f32 v131, v69, v239, v150                            // 0000000083CC: D1CB0083 065BDF45
	v_cvt_pk_u8_f32 v130, v130, 0, 0                           // 0000000083D4: D1DD0082 02010182
	v_cvt_pk_u8_f32 v129, v133, 3, v129                        // 0000000083DC: D1DD0081 06050785
	v_fma_f32 v133, v70, v239, v150                            // 0000000083E4: D1CB0085 065BDF46
	v_cvt_pk_u8_f32 v130, v131, 1, v130                        // 0000000083EC: D1DD0082 06090383
	v_fma_f32 v134, v71, v239, v150                            // 0000000083F4: D1CB0086 065BDF47
	v_cvt_pk_u8_f32 v130, v133, 2, v130                        // 0000000083FC: D1DD0082 06090585
	v_cvt_pk_u8_f32 v133, v134, 3, v130                        // 000000008404: D1DD0085 06090786
	v_fma_f32 v130, v88, v239, v150                            // 00000000840C: D1CB0082 065BDF58
	v_fma_f32 v131, v89, v239, v150                            // 000000008414: D1CB0083 065BDF59
	v_cvt_pk_u8_f32 v130, v130, 0, 0                           // 00000000841C: D1DD0082 02010182
	v_fma_f32 v134, v90, v239, v150                            // 000000008424: D1CB0086 065BDF5A
	v_cvt_pk_u8_f32 v130, v131, 1, v130                        // 00000000842C: D1DD0082 06090383
	v_fma_f32 v131, v72, v239, v150                            // 000000008434: D1CB0083 065BDF48
	v_fma_f32 v135, v91, v239, v150                            // 00000000843C: D1CB0087 065BDF5B
	v_cvt_pk_u8_f32 v130, v134, 2, v130                        // 000000008444: D1DD0082 06090586
	v_fma_f32 v134, v73, v239, v150                            // 00000000844C: D1CB0086 065BDF49
	v_cvt_pk_u8_f32 v131, v131, 0, 0                           // 000000008454: D1DD0083 02010183
	v_cvt_pk_u8_f32 v130, v135, 3, v130                        // 00000000845C: D1DD0082 06090787
	v_fma_f32 v135, v74, v239, v150                            // 000000008464: D1CB0087 065BDF4A
	v_cvt_pk_u8_f32 v131, v134, 1, v131                        // 00000000846C: D1DD0083 060D0386
	v_fma_f32 v144, v75, v239, v150                            // 000000008474: D1CB0090 065BDF4B
	v_cvt_pk_u8_f32 v131, v135, 2, v131                        // 00000000847C: D1DD0083 060D0587
	v_cvt_pk_u8_f32 v134, v144, 3, v131                        // 000000008484: D1DD0086 060D0790
	v_fma_f32 v131, v92, v239, v150                            // 00000000848C: D1CB0083 065BDF5C
	v_fma_f32 v135, v93, v239, v150                            // 000000008494: D1CB0087 065BDF5D
	v_cvt_pk_u8_f32 v131, v131, 0, 0                           // 00000000849C: D1DD0083 02010183
	v_fma_f32 v144, v94, v239, v150                            // 0000000084A4: D1CB0090 065BDF5E
	v_cvt_pk_u8_f32 v131, v135, 1, v131                        // 0000000084AC: D1DD0083 060D0387
	v_fma_f32 v135, v76, v239, v150                            // 0000000084B4: D1CB0087 065BDF4C
	v_fma_f32 v145, v95, v239, v150                            // 0000000084BC: D1CB0091 065BDF5F
	v_cvt_pk_u8_f32 v131, v144, 2, v131                        // 0000000084C4: D1DD0083 060D0590
	v_fma_f32 v144, v77, v239, v150                            // 0000000084CC: D1CB0090 065BDF4D
	v_cvt_pk_u8_f32 v135, v135, 0, 0                           // 0000000084D4: D1DD0087 02010187
	v_cvt_pk_u8_f32 v131, v145, 3, v131                        // 0000000084DC: D1DD0083 060D0791
	v_fma_f32 v145, v78, v239, v150                            // 0000000084E4: D1CB0091 065BDF4E
	v_cvt_pk_u8_f32 v135, v144, 1, v135                        // 0000000084EC: D1DD0087 061D0390
	v_fma_f32 v146, v79, v239, v150                            // 0000000084F4: D1CB0092 065BDF4F
	v_cvt_pk_u8_f32 v135, v145, 2, v135                        // 0000000084FC: D1DD0087 061D0591
	v_cvt_pk_u8_f32 v135, v146, 3, v135                        // 000000008504: D1DD0087 061D0792
	s_barrier                                                  // 00000000850C: BF8A0000
	s_setprio 1                                                // 000000008510: BF8F0001
	s_waitcnt vmcnt(0)                                         // 000000008514: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[144:147], v[192:199], v[136:143], 0// 000000008518: D3AD0090 020311C0
	v_mfma_f32_16x16x128_f8f6f4 v[146:149], v[192:199], v[128:135], 0// 000000008520: D3AD0092 020301C0
	s_add_u32 s17, s79, s78                                    // 000000008528: 80114E4F
	s_and_b32 s17, s17, 3                                      // 00000000852C: 86118311
	s_lshl_b32 s18, s17, 14                                    // 000000008530: 8E128E11
	s_nop 0                                                    // 000000008534: BF800000
	v_or_b32_e32 v145, s18, v245                               // 000000008538: 2923EA12
	v_add3_u32 v145, v244, v145, s92                           // 00000000853C: D1FF0091 017323F4
	ds_read_b64_tr_b8 v[156:157], v145                         // 000000008544: D9C40000 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:1024             // 00000000854C: D9C40400 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:2048             // 000000008554: D9C40800 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:3072             // 00000000855C: D9C40C00 A2000091
	ds_read_b64_tr_b8 v[164:165], v145 offset:256              // 000000008564: D9C40100 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:1280             // 00000000856C: D9C40500 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:2304             // 000000008574: D9C40900 A8000091
	ds_read_b64_tr_b8 v[170:171], v145 offset:3328             // 00000000857C: D9C40D00 AA000091
	ds_read_b64_tr_b8 v[172:173], v145 offset:512              // 000000008584: D9C40200 AC000091
	ds_read_b64_tr_b8 v[174:175], v145 offset:1536             // 00000000858C: D9C40600 AE000091
	ds_read_b64_tr_b8 v[176:177], v145 offset:2560             // 000000008594: D9C40A00 B0000091
	ds_read_b64_tr_b8 v[178:179], v145 offset:3584             // 00000000859C: D9C40E00 B2000091
	s_waitcnt lgkmcnt(4)                                       // 0000000085A4: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 0000000085A8: D3AC0000 0003F7F2 D3AE0830 04C3119C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 0000000085B8: D3AC0000 0003F7F2 D3AE0820 048311A4
	ds_read_b64_tr_b8 v[156:157], v145 offset:768              // 0000000085C8: D9C40300 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:1792             // 0000000085D0: D9C40700 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:2816             // 0000000085D8: D9C40B00 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:3840             // 0000000085E0: D9C40F00 A2000091
	ds_read_b64_tr_b8 v[164:165], v145 offset:4096             // 0000000085E8: D9C41000 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:5120             // 0000000085F0: D9C41400 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:6144             // 0000000085F8: D9C41800 A8000091
	ds_read_b64_tr_b8 v[170:171], v145 offset:7168             // 000000008600: D9C41C00 AA000091
	s_waitcnt lgkmcnt(4)                                       // 000000008608: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 00000000860C: D3AC0000 0003F7F2 D3AE0810 044311AC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 00000000861C: D3AC0000 0003F7F2 D3AE0800 0403119C
	ds_read_b64_tr_b8 v[172:173], v145 offset:4352             // 00000000862C: D9C41100 AC000091
	ds_read_b64_tr_b8 v[174:175], v145 offset:5376             // 000000008634: D9C41500 AE000091
	ds_read_b64_tr_b8 v[176:177], v145 offset:6400             // 00000000863C: D9C41900 B0000091
	ds_read_b64_tr_b8 v[178:179], v145 offset:7424             // 000000008644: D9C41D00 B2000091
	ds_read_b64_tr_b8 v[156:157], v145 offset:4608             // 00000000864C: D9C41200 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:5632             // 000000008654: D9C41600 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:6656             // 00000000865C: D9C41A00 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:7680             // 000000008664: D9C41E00 A2000091
	s_waitcnt lgkmcnt(4)                                       // 00000000866C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[164:171], v[128:135], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000008670: D3AC0000 0003FBF2 D3AE0830 04C301A4
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[172:179], v[128:135], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000008680: D3AC0000 0003FBF2 D3AE0820 048301AC
	ds_read_b64_tr_b8 v[164:165], v145 offset:4864             // 000000008690: D9C41300 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:5888             // 000000008698: D9C41700 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:6912             // 0000000086A0: D9C41B00 A8000091
	ds_read_b64_tr_b8 v[170:171], v145 offset:7936             // 0000000086A8: D9C41F00 AA000091
	s_add_u32 s19, s79, 4                                      // 0000000086B0: 8013844F
	s_cmp_ge_u32 s19, s96                                      // 0000000086B4: BF096013
	s_cbranch_scc1 12                                          // 0000000086B8: BF85000C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6bec>
	s_add_u32 s18, s18, s88                                    // 0000000086BC: 80125812
	s_mul_i32 s19, s19, s8                                     // 0000000086C0: 92130813
	s_lshl_b32 s19, s19, 7                                     // 0000000086C4: 8E138713
	s_mov_b32 m0, s18                                          // 0000000086C8: BEFC0012
	s_nop 0                                                    // 0000000086CC: BF800000
	buffer_load_dwordx4 v233, s[84:87], s19 offen lds          // 0000000086D0: E05D1000 131500E9
	s_add_u32 m0, s18, 0x2000                                  // 0000000086D8: 807CFF12 00002000
	s_nop 0                                                    // 0000000086E0: BF800000
	buffer_load_dwordx4 v234, s[84:87], s19 offen lds          // 0000000086E4: E05D1000 131500EA
	s_add_u32 s18, s79, 2                                      // 0000000086EC: 8012824F
	s_cmp_ge_u32 s18, s96                                      // 0000000086F0: BF096012
	s_cbranch_scc1 15                                          // 0000000086F4: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6c34>
	s_xor_b32 s17, s17, 2                                      // 0000000086F8: 88118211
	s_lshl_b32 s17, s17, 14                                    // 0000000086FC: 8E118E11
	s_mul_i32 s18, s18, s8                                     // 000000008700: 92120812
	s_or_b32 s17, s17, s88                                     // 000000008704: 87115811
	s_lshl_b32 s18, s18, 7                                     // 000000008708: 8E128712
	s_or_b32 m0, s17, 0x10000                                  // 00000000870C: 877CFF11 00010000
	s_nop 0                                                    // 000000008714: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000008718: E05D1000 121400EB
	s_or_b32 m0, s17, 0x12000                                  // 000000008720: 877CFF11 00012000
	s_nop 0                                                    // 000000008728: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 00000000872C: E05D1000 121400EC
	v_mul_f32_e32 v136, v154, v144                             // 000000008734: 0B11219A
	v_mul_f32_e32 v137, v155, v146                             // 000000008738: 0B13259B
	v_add_f32_e32 v136, v250, v136                             // 00000000873C: 031111FA
	v_add_f32_e32 v250, v136, v137                             // 000000008740: 03F51388
	s_waitcnt lgkmcnt(0)                                       // 000000008744: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[156:163], v[128:135], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000008748: D3AC0000 0003FBF2 D3AE0810 0443019C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[164:171], v[128:135], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000008758: D3AC0000 0003FBF2 D3AE0800 040301A4
	s_barrier                                                  // 000000008768: BF8A0000
	s_add_u32 s42, s79, 1                                      // 00000000876C: 802A814F
	s_branch 62511                                             // 000000008770: BF82F42F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d30>
	s_barrier                                                  // 000000008774: BF8A0000
	s_waitcnt vmcnt(0)                                         // 000000008778: BF8C0F70
	s_add_u32 s17, s42, 4                                      // 00000000877C: 8011842A
	s_cmp_ge_u32 s17, s96                                      // 000000008780: BF096011
	s_cbranch_scc1 15                                          // 000000008784: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6cc4>
	s_add_u32 s18, s42, s78                                    // 000000008788: 80124E2A
	s_and_b32 s18, s18, 3                                      // 00000000878C: 86128312
	s_lshl_b32 s18, s18, 14                                    // 000000008790: 8E128E12
	s_or_b32 s18, s18, s88                                     // 000000008794: 87125812
	s_mul_i32 s17, s17, s8                                     // 000000008798: 92110811
	s_lshl_b32 s17, s17, 7                                     // 00000000879C: 8E118711
	s_mov_b32 m0, s18                                          // 0000000087A0: BEFC0012
	s_nop 0                                                    // 0000000087A4: BF800000
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 0000000087A8: E05D1000 111500E9
	s_or_b32 m0, s18, 0x2000                                   // 0000000087B0: 877CFF12 00002000
	s_nop 0                                                    // 0000000087B8: BF800000
	buffer_load_dwordx4 v234, s[84:87], s17 offen lds          // 0000000087BC: E05D1000 111500EA
	s_add_u32 s17, s42, 2                                      // 0000000087C4: 8011822A
	s_cmp_ge_u32 s17, s96                                      // 0000000087C8: BF096011
	s_cbranch_scc1 16                                          // 0000000087CC: BF850010 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6d10>
	s_add_u32 s18, s42, s78                                    // 0000000087D0: 80124E2A
	s_and_b32 s18, s18, 3                                      // 0000000087D4: 86128312
	s_xor_b32 s18, s18, 2                                      // 0000000087D8: 88128212
	s_lshl_b32 s18, s18, 14                                    // 0000000087DC: 8E128E12
	s_or_b32 s18, s18, s88                                     // 0000000087E0: 87125812
	s_mul_i32 s17, s17, s8                                     // 0000000087E4: 92110811
	s_or_b32 m0, s18, 0x10000                                  // 0000000087E8: 877CFF12 00010000
	s_lshl_b32 s17, s17, 7                                     // 0000000087F0: 8E118711
	buffer_load_dwordx4 v235, s[80:83], s17 offen lds          // 0000000087F4: E05D1000 111400EB
	s_or_b32 m0, s18, 0x12000                                  // 0000000087FC: 877CFF12 00012000
	s_nop 0                                                    // 000000008804: BF800000
	buffer_load_dwordx4 v236, s[80:83], s17 offen lds          // 000000008808: E05D1000 111400EC
	s_barrier                                                  // 000000008810: BF8A0000
	s_add_u32 s42, s42, 1                                      // 000000008814: 802A812A
	s_branch 62469                                             // 000000008818: BF82F405 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d30>
	s_cmp_ge_u32 s79, s42                                      // 00000000881C: BF092A4F
	s_cbranch_scc1 340                                         // 000000008820: BF850154 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7274>
	s_waitcnt vmcnt(0)                                         // 000000008824: BF8C0F70
	s_barrier                                                  // 000000008828: BF8A0000
	s_add_u32 s17, s96, s78                                    // 00000000882C: 80114E60
	s_and_b32 s24, s17, 3                                      // 000000008830: 86188311
	s_cmp_lg_u32 s77, 0                                        // 000000008834: BF07804D
	s_cselect_b64 s[18:19], -1, 0                              // 000000008838: 859280C1
	s_not_b32 s17, s68                                         // 00000000883C: BE910444
	s_add_u32 s17, s4, s17                                     // 000000008840: 80111104
	s_cmp_eq_u32 s68, s17                                      // 000000008844: BF061144
	s_cselect_b64 s[20:21], -1, 0                              // 000000008848: 859480C1
	s_or_b64 s[18:19], s[18:19], s[20:21]                      // 00000000884C: 87921412
	s_and_b64 s[20:21], s[18:19], exec                         // 000000008850: 86947E12
	s_mov_b32 s77, 1                                           // 000000008854: BECD0081
	s_cbranch_scc0 7                                           // 000000008858: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6d78>
	s_add_u32 s2, s2, s14                                      // 00000000885C: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000008860: BF093302
	s_cbranch_scc1 1175                                        // 000000008864: BF850497 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7fc4>
	s_lshl_b32 s17, s2, 5                                      // 000000008868: 8E118502
	s_load_dwordx8 s[68:75], s[46:47], s17 offset:0x0          // 00000000886C: C00E5117 22000000
	s_mov_b32 s77, 0                                           // 000000008874: BECD0080
	s_waitcnt lgkmcnt(0)                                       // 000000008878: BF8CC07F
	s_add_u32 s28, s38, s72                                    // 00000000887C: 801C4826
	s_addc_u32 s29, s39, s73                                   // 000000008880: 821D4927
	s_add_u32 s80, s40, s72                                    // 000000008884: 80504828
	s_addc_u32 s81, s41, s73                                   // 000000008888: 82514929
	s_not_b32 s17, s68                                         // 00000000888C: BE910444
	s_add_u32 s17, s4, s17                                     // 000000008890: 80111104
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008894: 86927E12
	s_cselect_b32 s17, s17, s68                                // 000000008898: 85114411
	s_lshl_b32 s18, s17, 5                                     // 00000000889C: 8E128511
	s_add_u32 s18, s18, 32                                     // 0000000088A0: 8012A012
	s_mul_i32 s18, s18, s5                                     // 0000000088A4: 92120512
	s_addk_i32 s18, 0x60                                       // 0000000088A8: B7120060
	s_lshr_b32 s18, s18, 7                                     // 0000000088AC: 8F128712
	v_readlane_b32 s19, v255, 1                                // 0000000088B0: D2890013 000103FF
	s_min_u32 s96, s19, s18                                    // 0000000088B8: 83E01213
	s_and_b64 s[18:19], s[10:11], exec                         // 0000000088BC: 86927E0A
	s_cbranch_scc0 76                                          // 0000000088C0: BF84004C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6ef4>
	s_lshl_b32 s18, s24, 14                                    // 0000000088C4: 8E128E18
	s_or_b32 s18, s18, s88                                     // 0000000088C8: 87125812
	s_mov_b32 m0, s18                                          // 0000000088CC: BEFC0012
	v_readlane_b32 s19, v255, 11                               // 0000000088D0: D2890013 000117FF
	buffer_load_dwordx4 v233, s[28:31], 0 offen lds            // 0000000088D8: E05D1000 800700E9
	s_add_u32 m0, s18, 0x1000                                  // 0000000088E0: 807CFF12 00001000
	v_readlane_b32 s20, v255, 12                               // 0000000088E8: D2890014 000119FF
	s_mov_b32 s82, s30                                         // 0000000088F0: BED2001E
	s_mov_b32 s83, s31                                         // 0000000088F4: BED3001F
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 0000000088F8: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 000000008900: 877CFF12 00002000
	s_mul_i32 s19, s8, 0x60                                    // 000000008908: 9213FF08 00000060
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000008910: E05D1000 140700E9
	s_add_u32 m0, s18, 0x3000                                  // 000000008918: 807CFF12 00003000
	s_nop 0                                                    // 000000008920: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008924: E05D1000 130700E9
	s_or_b32 m0, s18, 0x10000                                  // 00000000892C: 877CFF12 00010000
	v_readlane_b32 s19, v255, 13                               // 000000008934: D2890013 00011BFF
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 00000000893C: E05D1000 801400EB
	s_add_u32 m0, s18, 0x11000                                 // 000000008944: 807CFF12 00011000
	s_nop 0                                                    // 00000000894C: BF800000
	buffer_load_dwordx4 v235, s[80:83], s20 offen lds          // 000000008950: E05D1000 141400EB
	s_or_b32 m0, s18, 0x12000                                  // 000000008958: 877CFF12 00012000
	s_nop 0                                                    // 000000008960: BF800000
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000008964: E05D1000 131400EB
	s_add_u32 m0, s18, 0x13000                                 // 00000000896C: 807CFF12 00013000
	s_mul_i32 s18, s8, 0x44                                    // 000000008974: 9212FF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 00000000897C: E05D1000 121400EB
	s_cmp_lt_u32 s96, 2                                        // 000000008984: BF0A8260
	s_cbranch_scc1 26                                          // 000000008988: BF85001A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6ef4>
	s_add_u32 s18, s24, 1                                      // 00000000898C: 80128118
	s_and_b32 s18, s18, 3                                      // 000000008990: 86128312
	s_lshl_b32 s18, s18, 14                                    // 000000008994: 8E128E12
	s_or_b32 s18, s18, s88                                     // 000000008998: 87125812
	s_mov_b32 m0, s18                                          // 00000000899C: BEFC0012
	s_mul_i32 s19, s8, 0xa0                                    // 0000000089A0: 9213FF08 000000A0
	buffer_load_dwordx4 v233, s[28:31], s33 offen lds          // 0000000089A8: E05D1000 210700E9
	s_add_u32 m0, s18, 0x1000                                  // 0000000089B0: 807CFF12 00001000
	s_nop 0                                                    // 0000000089B8: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 0000000089BC: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 0000000089C4: 877CFF12 00002000
	s_mul_i32 s19, s8, 0xc0                                    // 0000000089CC: 9213FF08 000000C0
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 0000000089D4: E05D1000 130700E9
	s_add_u32 m0, s18, 0x3000                                  // 0000000089DC: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xe0                                    // 0000000089E4: 9212FF08 000000E0
	buffer_load_dwordx4 v233, s[28:31], s18 offen lds          // 0000000089EC: E05D1000 120700E9
	v_readlane_b32 s18, v255, 7                                // 0000000089F4: D2890012 00010FFF
	s_add_u32 s22, s18, s70                                    // 0000000089FC: 80164612
	v_readlane_b32 s18, v255, 8                                // 000000008A00: D2890012 000111FF
	s_addc_u32 s23, s18, s71                                   // 000000008A08: 82174712
	v_readlane_b32 s18, v255, 9                                // 000000008A0C: D2890012 000113FF
	s_add_u32 s20, s18, s74                                    // 000000008A14: 80144A12
	v_readlane_b32 s18, v255, 10                               // 000000008A18: D2890012 000115FF
	s_addc_u32 s21, s18, s75                                   // 000000008A20: 82154B12
	v_readlane_b32 s18, v255, 2                                // 000000008A24: D2890012 000105FF
	s_add_u32 s18, s69, s18                                    // 000000008A2C: 80121245
	s_lshl_b32 s18, s18, 2                                     // 000000008A30: 8E128212
	s_add_u32 s25, s44, s18                                    // 000000008A34: 8019122C
	v_readlane_b32 s18, v255, 3                                // 000000008A38: D2890012 000107FF
	s_addc_u32 s26, s45, 0                                     // 000000008A40: 821A802D
	v_readlane_b32 s19, v255, 4                                // 000000008A44: D2890013 000109FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008A4C: 86927E12
	s_mul_i32 s17, s17, s5                                     // 000000008A50: 92110511
	s_cselect_b32 s18, 0, s25                                  // 000000008A54: 85121980
	v_readlane_b32 s25, v255, 0                                // 000000008A58: D2890019 000101FF
	s_cselect_b32 s19, 0, s26                                  // 000000008A60: 85131A80
	s_add_u32 s25, s17, s25                                    // 000000008A64: 80191911
	s_lshl_b32 s17, s25, 5                                     // 000000008A68: 8E118519
	v_or_b32_e32 v64, s17, v216                                // 000000008A6C: 2881B011
	s_bfe_u32 s79, s25, 0x190002                               // 000000008A70: 92CFFF19 00190002
	v_mul_lo_u32 v64, v64, s7                                  // 000000008A78: D2850040 00000F40
	scratch_load_dword v65, off, off offset:36                 // 000000008A80: DC504024 417F0000
	s_waitcnt vmcnt(0)                                         // 000000008A88: BF8C0F70
	v_add_u32_e32 v64, v65, v64                                // 000000008A8C: 68808141
	global_load_dwordx4 v[220:223], v64, s[22:23]              // 000000008A90: DC5C8000 DC160040
	global_load_dwordx4 v[224:227], v64, s[22:23] offset:16    // 000000008A98: DC5C8010 E0160040
	global_load_dwordx4 v[200:203], v64, s[22:23] offset:64    // 000000008AA0: DC5C8040 C8160040
	global_load_dwordx4 v[204:207], v64, s[22:23] offset:80    // 000000008AA8: DC5C8050 CC160040
	s_mov_b32 s83, 0x110000                                    // 000000008AB0: BED300FF 00110000
	s_mov_b32 s22, 1                                           // 000000008AB8: BE960081
	s_mov_b32 s43, 0x110000                                    // 000000008ABC: BEAB00FF 00110000
	s_branch 1157                                              // 000000008AC4: BF820485 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x81dc>
	s_cmp_ge_u32 s79, s42                                      // 000000008AC8: BF092A4F
	s_cbranch_scc1 595                                         // 000000008ACC: BF850253 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x791c>
	s_waitcnt vmcnt(0)                                         // 000000008AD0: BF8C0F70
	s_barrier                                                  // 000000008AD4: BF8A0000
	s_add_u32 s17, s96, s78                                    // 000000008AD8: 80114E60
	s_and_b32 s24, s17, 3                                      // 000000008ADC: 86188311
	s_cmp_lg_u32 s77, 0                                        // 000000008AE0: BF07804D
	s_cselect_b64 s[18:19], -1, 0                              // 000000008AE4: 859280C1
	s_not_b32 s17, s68                                         // 000000008AE8: BE910444
	s_add_u32 s17, s4, s17                                     // 000000008AEC: 80111104
	s_cmp_eq_u32 s68, s17                                      // 000000008AF0: BF061144
	s_cselect_b64 s[20:21], -1, 0                              // 000000008AF4: 859480C1
	s_or_b64 s[18:19], s[18:19], s[20:21]                      // 000000008AF8: 87921412
	s_and_b64 s[20:21], s[18:19], exec                         // 000000008AFC: 86947E12
	s_mov_b32 s77, 1                                           // 000000008B00: BECD0081
	s_cbranch_scc0 7                                           // 000000008B04: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7024>
	s_add_u32 s2, s2, s14                                      // 000000008B08: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000008B0C: BF093302
	s_cbranch_scc1 1010                                        // 000000008B10: BF8503F2 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7fdc>
	s_lshl_b32 s17, s2, 5                                      // 000000008B14: 8E118502
	s_load_dwordx8 s[68:75], s[46:47], s17 offset:0x0          // 000000008B18: C00E5117 22000000
	s_mov_b32 s77, 0                                           // 000000008B20: BECD0080
	s_waitcnt lgkmcnt(0)                                       // 000000008B24: BF8CC07F
	s_add_u32 s28, s38, s72                                    // 000000008B28: 801C4826
	s_addc_u32 s29, s39, s73                                   // 000000008B2C: 821D4927
	s_add_u32 s80, s40, s72                                    // 000000008B30: 80504828
	s_addc_u32 s81, s41, s73                                   // 000000008B34: 82514929
	s_not_b32 s17, s68                                         // 000000008B38: BE910444
	s_add_u32 s17, s4, s17                                     // 000000008B3C: 80111104
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008B40: 86927E12
	s_cselect_b32 s17, s17, s68                                // 000000008B44: 85114411
	s_lshl_b32 s18, s17, 5                                     // 000000008B48: 8E128511
	s_add_u32 s18, s18, 32                                     // 000000008B4C: 8012A012
	s_mul_i32 s18, s18, s5                                     // 000000008B50: 92120512
	s_addk_i32 s18, 0x60                                       // 000000008B54: B7120060
	s_lshr_b32 s18, s18, 7                                     // 000000008B58: 8F128712
	v_readlane_b32 s19, v255, 1                                // 000000008B5C: D2890013 000103FF
	s_min_u32 s96, s19, s18                                    // 000000008B64: 83E01213
	s_and_b64 s[18:19], s[10:11], exec                         // 000000008B68: 86927E0A
	s_cbranch_scc0 76                                          // 000000008B6C: BF84004C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x71a0>
	s_lshl_b32 s18, s24, 14                                    // 000000008B70: 8E128E18
	s_or_b32 s18, s18, s88                                     // 000000008B74: 87125812
	s_mov_b32 m0, s18                                          // 000000008B78: BEFC0012
	v_readlane_b32 s19, v255, 11                               // 000000008B7C: D2890013 000117FF
	buffer_load_dwordx4 v233, s[28:31], 0 offen lds            // 000000008B84: E05D1000 800700E9
	s_add_u32 m0, s18, 0x1000                                  // 000000008B8C: 807CFF12 00001000
	v_readlane_b32 s20, v255, 12                               // 000000008B94: D2890014 000119FF
	s_mov_b32 s82, s30                                         // 000000008B9C: BED2001E
	s_mov_b32 s83, s31                                         // 000000008BA0: BED3001F
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008BA4: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 000000008BAC: 877CFF12 00002000
	s_mul_i32 s19, s8, 0x60                                    // 000000008BB4: 9213FF08 00000060
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000008BBC: E05D1000 140700E9
	s_add_u32 m0, s18, 0x3000                                  // 000000008BC4: 807CFF12 00003000
	s_nop 0                                                    // 000000008BCC: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008BD0: E05D1000 130700E9
	s_or_b32 m0, s18, 0x10000                                  // 000000008BD8: 877CFF12 00010000
	v_readlane_b32 s19, v255, 13                               // 000000008BE0: D2890013 00011BFF
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 000000008BE8: E05D1000 801400EB
	s_add_u32 m0, s18, 0x11000                                 // 000000008BF0: 807CFF12 00011000
	s_nop 0                                                    // 000000008BF8: BF800000
	buffer_load_dwordx4 v235, s[80:83], s20 offen lds          // 000000008BFC: E05D1000 141400EB
	s_or_b32 m0, s18, 0x12000                                  // 000000008C04: 877CFF12 00012000
	s_nop 0                                                    // 000000008C0C: BF800000
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000008C10: E05D1000 131400EB
	s_add_u32 m0, s18, 0x13000                                 // 000000008C18: 807CFF12 00013000
	s_mul_i32 s18, s8, 0x44                                    // 000000008C20: 9212FF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000008C28: E05D1000 121400EB
	s_cmp_lt_u32 s96, 2                                        // 000000008C30: BF0A8260
	s_cbranch_scc1 26                                          // 000000008C34: BF85001A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x71a0>
	s_add_u32 s18, s24, 1                                      // 000000008C38: 80128118
	s_and_b32 s18, s18, 3                                      // 000000008C3C: 86128312
	s_lshl_b32 s18, s18, 14                                    // 000000008C40: 8E128E12
	s_or_b32 s18, s18, s88                                     // 000000008C44: 87125812
	s_mov_b32 m0, s18                                          // 000000008C48: BEFC0012
	s_mul_i32 s19, s8, 0xa0                                    // 000000008C4C: 9213FF08 000000A0
	buffer_load_dwordx4 v233, s[28:31], s33 offen lds          // 000000008C54: E05D1000 210700E9
	s_add_u32 m0, s18, 0x1000                                  // 000000008C5C: 807CFF12 00001000
	s_nop 0                                                    // 000000008C64: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008C68: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 000000008C70: 877CFF12 00002000
	s_mul_i32 s19, s8, 0xc0                                    // 000000008C78: 9213FF08 000000C0
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008C80: E05D1000 130700E9
	s_add_u32 m0, s18, 0x3000                                  // 000000008C88: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xe0                                    // 000000008C90: 9212FF08 000000E0
	buffer_load_dwordx4 v233, s[28:31], s18 offen lds          // 000000008C98: E05D1000 120700E9
	v_readlane_b32 s18, v255, 7                                // 000000008CA0: D2890012 00010FFF
	s_add_u32 s22, s18, s70                                    // 000000008CA8: 80164612
	v_readlane_b32 s18, v255, 8                                // 000000008CAC: D2890012 000111FF
	s_addc_u32 s23, s18, s71                                   // 000000008CB4: 82174712
	v_readlane_b32 s18, v255, 9                                // 000000008CB8: D2890012 000113FF
	s_add_u32 s20, s18, s74                                    // 000000008CC0: 80144A12
	v_readlane_b32 s18, v255, 10                               // 000000008CC4: D2890012 000115FF
	s_addc_u32 s21, s18, s75                                   // 000000008CCC: 82154B12
	v_readlane_b32 s18, v255, 2                                // 000000008CD0: D2890012 000105FF
	s_add_u32 s18, s69, s18                                    // 000000008CD8: 80121245
	s_lshl_b32 s18, s18, 2                                     // 000000008CDC: 8E128212
	s_add_u32 s25, s44, s18                                    // 000000008CE0: 8019122C
	v_readlane_b32 s18, v255, 3                                // 000000008CE4: D2890012 000107FF
	s_addc_u32 s26, s45, 0                                     // 000000008CEC: 821A802D
	v_readlane_b32 s19, v255, 4                                // 000000008CF0: D2890013 000109FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008CF8: 86927E12
	s_mul_i32 s17, s17, s5                                     // 000000008CFC: 92110511
	s_cselect_b32 s18, 0, s25                                  // 000000008D00: 85121980
	v_readlane_b32 s25, v255, 0                                // 000000008D04: D2890019 000101FF
	s_cselect_b32 s19, 0, s26                                  // 000000008D0C: 85131A80
	s_add_u32 s25, s17, s25                                    // 000000008D10: 80191911
	s_lshl_b32 s17, s25, 5                                     // 000000008D14: 8E118519
	v_or_b32_e32 v64, s17, v216                                // 000000008D18: 2881B011
	s_bfe_u32 s79, s25, 0x190002                               // 000000008D1C: 92CFFF19 00190002
	v_mul_lo_u32 v64, v64, s7                                  // 000000008D24: D2850040 00000F40
	scratch_load_dword v65, off, off offset:36                 // 000000008D2C: DC504024 417F0000
	s_waitcnt vmcnt(0)                                         // 000000008D34: BF8C0F70
	v_add_u32_e32 v64, v65, v64                                // 000000008D38: 68808141
	global_load_dwordx4 v[220:223], v64, s[22:23]              // 000000008D3C: DC5C8000 DC160040
	global_load_dwordx4 v[224:227], v64, s[22:23] offset:16    // 000000008D44: DC5C8010 E0160040
	global_load_dwordx4 v[200:203], v64, s[22:23] offset:64    // 000000008D4C: DC5C8040 C8160040
	global_load_dwordx4 v[204:207], v64, s[22:23] offset:80    // 000000008D54: DC5C8050 CC160040
	s_mov_b32 s83, 0x110000                                    // 000000008D5C: BED300FF 00110000
	s_mov_b32 s22, 1                                           // 000000008D64: BE960081
	s_mov_b32 s43, 0x110000                                    // 000000008D68: BEAB00FF 00110000
	s_branch 1114                                              // 000000008D70: BF82045A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x83dc>
	s_setprio 0                                                // 000000008D74: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000008D78: D1CB0070 0663DF70
	v_fma_f32 v96, v96, v239, v152                             // 000000008D80: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 000000008D88: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 000000008D90: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 000000008D98: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 000000008DA0: D1CB0068 0663DF68
	v_fma_f32 v124, v124, v239, v152                           // 000000008DA8: D1CB007C 0663DF7C
	v_fma_f32 v108, v108, v239, v152                           // 000000008DB0: D1CB006C 0663DF6C
	v_fma_f32 v80, v80, v239, v150                             // 000000008DB8: D1CB0050 065BDF50
	v_fma_f32 v64, v64, v239, v150                             // 000000008DC0: D1CB0040 065BDF40
	v_fma_f32 v84, v84, v239, v150                             // 000000008DC8: D1CB0054 065BDF54
	v_fma_f32 v68, v68, v239, v150                             // 000000008DD0: D1CB0044 065BDF44
	v_fma_f32 v88, v88, v239, v150                             // 000000008DD8: D1CB0058 065BDF58
	v_fma_f32 v72, v72, v239, v150                             // 000000008DE0: D1CB0048 065BDF48
	v_fma_f32 v128, v75, v239, v150                            // 000000008DE8: D1CB0080 065BDF4B
	v_fma_f32 v75, v92, v239, v150                             // 000000008DF0: D1CB004B 065BDF5C
	v_fma_f32 v76, v76, v239, v150                             // 000000008DF8: D1CB004C 065BDF4C
	v_fma_f32 v113, v113, v239, v152                           // 000000008E00: D1CB0071 0663DF71
	v_fma_f32 v97, v97, v239, v152                             // 000000008E08: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 000000008E10: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 000000008E18: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 000000008E20: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 000000008E28: D1CB0069 0663DF69
	v_fma_f32 v125, v125, v239, v152                           // 000000008E30: D1CB007D 0663DF7D
	v_fma_f32 v109, v109, v239, v152                           // 000000008E38: D1CB006D 0663DF6D
	v_fma_f32 v81, v81, v239, v150                             // 000000008E40: D1CB0051 065BDF51
	v_fma_f32 v65, v65, v239, v150                             // 000000008E48: D1CB0041 065BDF41
	v_fma_f32 v85, v85, v239, v150                             // 000000008E50: D1CB0055 065BDF55
	v_fma_f32 v69, v69, v239, v150                             // 000000008E58: D1CB0045 065BDF45
	v_fma_f32 v89, v89, v239, v150                             // 000000008E60: D1CB0059 065BDF59
	v_fma_f32 v73, v73, v239, v150                             // 000000008E68: D1CB0049 065BDF49
	v_fma_f32 v92, v93, v239, v150                             // 000000008E70: D1CB005C 065BDF5D
	v_fma_f32 v93, v94, v239, v150                             // 000000008E78: D1CB005D 065BDF5E
	v_fma_f32 v94, v95, v239, v150                             // 000000008E80: D1CB005E 065BDF5F
	v_fma_f32 v77, v77, v239, v150                             // 000000008E88: D1CB004D 065BDF4D
	v_fma_f32 v95, v79, v239, v150                             // 000000008E90: D1CB005F 065BDF4F
	v_cvt_pk_u8_f32 v79, v112, 0, 0                            // 000000008E98: D1DD004F 02010170
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000008EA0: D1DD0060 02010160
	v_cvt_pk_u8_f32 v112, v116, 0, 0                           // 000000008EA8: D1DD0070 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000008EB0: D1DD0064 02010164
	v_cvt_pk_u8_f32 v116, v120, 0, 0                           // 000000008EB8: D1DD0074 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000008EC0: D1DD0068 02010168
	v_cvt_pk_u8_f32 v120, v124, 0, 0                           // 000000008EC8: D1DD0078 0201017C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000008ED0: D1DD006C 0201016C
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000008ED8: D1DD0050 02010150
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000008EE0: D1DD0040 02010140
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000008EE8: D1DD0054 02010154
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000008EF0: D1DD0044 02010144
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000008EF8: D1DD0058 02010158
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000008F00: D1DD0048 02010148
	v_cvt_pk_u8_f32 v75, v75, 0, 0                             // 000000008F08: D1DD004B 0201014B
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000008F10: D1DD004C 0201014C
	v_fma_f32 v114, v114, v239, v152                           // 000000008F18: D1CB0072 0663DF72
	v_fma_f32 v98, v98, v239, v152                             // 000000008F20: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 000000008F28: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 000000008F30: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 000000008F38: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 000000008F40: D1CB006A 0663DF6A
	v_fma_f32 v126, v126, v239, v152                           // 000000008F48: D1CB007E 0663DF7E
	v_fma_f32 v110, v110, v239, v152                           // 000000008F50: D1CB006E 0663DF6E
	v_fma_f32 v82, v82, v239, v150                             // 000000008F58: D1CB0052 065BDF52
	v_fma_f32 v66, v66, v239, v150                             // 000000008F60: D1CB0042 065BDF42
	v_fma_f32 v86, v86, v239, v150                             // 000000008F68: D1CB0056 065BDF56
	v_fma_f32 v70, v70, v239, v150                             // 000000008F70: D1CB0046 065BDF46
	v_fma_f32 v90, v90, v239, v150                             // 000000008F78: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 000000008F80: D1CB004A 065BDF4A
	v_fma_f32 v78, v78, v239, v150                             // 000000008F88: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v79, v113, 1, v79                          // 000000008F90: D1DD004F 053D0371
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000008F98: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v112                         // 000000008FA0: D1DD0061 05C10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 000000008FA8: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v116                        // 000000008FB0: D1DD0065 05D10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 000000008FB8: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v105, v125, 1, v120                        // 000000008FC0: D1DD0069 05E1037D
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 000000008FC8: D1DD006C 05B1036D
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000008FD0: D1DD0050 05410351
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000008FD8: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 000000008FE0: D1DD0041 05510355
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 000000008FE8: D1DD0044 05110345
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 000000008FF0: D1DD0045 05610359
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 000000008FF8: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v92, 1, v75                           // 000000009000: D1DD0049 052D035C
	v_cvt_pk_u8_f32 v75, v77, 1, v76                           // 000000009008: D1DD004B 0531034D
	v_fma_f32 v115, v115, v239, v152                           // 000000009010: D1CB0073 0663DF73
	v_fma_f32 v99, v99, v239, v152                             // 000000009018: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 000000009020: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 000000009028: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 000000009030: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 000000009038: D1CB006B 0663DF6B
	v_fma_f32 v127, v127, v239, v152                           // 000000009040: D1CB007F 0663DF7F
	v_fma_f32 v111, v111, v239, v152                           // 000000009048: D1CB006F 0663DF6F
	v_fma_f32 v83, v83, v239, v150                             // 000000009050: D1CB0053 065BDF53
	v_fma_f32 v67, v67, v239, v150                             // 000000009058: D1CB0043 065BDF43
	v_fma_f32 v87, v87, v239, v150                             // 000000009060: D1CB0057 065BDF57
	v_fma_f32 v71, v71, v239, v150                             // 000000009068: D1CB0047 065BDF47
	v_fma_f32 v91, v91, v239, v150                             // 000000009070: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v76, v114, 2, v79                          // 000000009078: D1DD004C 053D0572
	v_cvt_pk_u8_f32 v77, v98, 2, v96                           // 000000009080: D1DD004D 05810562
	v_cvt_pk_u8_f32 v79, v118, 2, v97                          // 000000009088: D1DD004F 05850576
	v_cvt_pk_u8_f32 v81, v102, 2, v100                         // 000000009090: D1DD0051 05910566
	v_cvt_pk_u8_f32 v84, v122, 2, v101                         // 000000009098: D1DD0054 0595057A
	v_cvt_pk_u8_f32 v85, v106, 2, v104                         // 0000000090A0: D1DD0055 05A1056A
	v_cvt_pk_u8_f32 v88, v126, 2, v105                         // 0000000090A8: D1DD0058 05A5057E
	v_cvt_pk_u8_f32 v89, v110, 2, v108                         // 0000000090B0: D1DD0059 05B1056E
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 0000000090B8: D1DD0050 05410552
	v_cvt_pk_u8_f32 v66, v66, 2, v64                           // 0000000090C0: D1DD0042 05010542
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 0000000090C8: D1DD0041 05050556
	v_cvt_pk_u8_f32 v70, v70, 2, v68                           // 0000000090D0: D1DD0046 05110546
	v_cvt_pk_u8_f32 v82, v90, 2, v69                           // 0000000090D8: D1DD0052 0515055A
	v_cvt_pk_u8_f32 v86, v74, 2, v72                           // 0000000090E0: D1DD0056 0521054A
	v_cvt_pk_u8_f32 v90, v93, 2, v73                           // 0000000090E8: D1DD005A 0525055D
	v_cvt_pk_u8_f32 v92, v78, 2, v75                           // 0000000090F0: D1DD005C 052D054E
	s_mov_b32 s25, 1                                           // 0000000090F8: BE990081
	v_cvt_pk_u8_f32 v72, v115, 3, v76                          // 0000000090FC: D1DD0048 05310773
	v_cvt_pk_u8_f32 v76, v99, 3, v77                           // 000000009104: D1DD004C 05350763
	v_cvt_pk_u8_f32 v73, v119, 3, v79                          // 00000000910C: D1DD0049 053D0777
	v_cvt_pk_u8_f32 v77, v103, 3, v81                          // 000000009114: D1DD004D 05450767
	v_cvt_pk_u8_f32 v74, v123, 3, v84                          // 00000000911C: D1DD004A 0551077B
	v_cvt_pk_u8_f32 v78, v107, 3, v85                          // 000000009124: D1DD004E 0555076B
	v_cvt_pk_u8_f32 v75, v127, 3, v88                          // 00000000912C: D1DD004B 0561077F
	v_cvt_pk_u8_f32 v79, v111, 3, v89                          // 000000009134: D1DD004F 0565076F
	v_cvt_pk_u8_f32 v64, v83, 3, v80                           // 00000000913C: D1DD0040 05410753
	v_cvt_pk_u8_f32 v68, v67, 3, v66                           // 000000009144: D1DD0044 05090743
	v_cvt_pk_u8_f32 v65, v87, 3, v65                           // 00000000914C: D1DD0041 05050757
	v_cvt_pk_u8_f32 v69, v71, 3, v70                           // 000000009154: D1DD0045 05190747
	v_cvt_pk_u8_f32 v66, v91, 3, v82                           // 00000000915C: D1DD0042 0549075B
	v_cvt_pk_u8_f32 v70, v128, 3, v86                          // 000000009164: D1DD0046 05590780
	v_cvt_pk_u8_f32 v67, v94, 3, v90                           // 00000000916C: D1DD0043 0569075E
	v_cvt_pk_u8_f32 v71, v95, 3, v92                           // 000000009174: D1DD0047 0571075F
	s_waitcnt vmcnt(0)                                         // 00000000917C: BF8C0F70
	s_barrier                                                  // 000000009180: BF8A0000
	s_add_u32 s17, s96, s78                                    // 000000009184: 80114E60
	s_and_b32 s24, s17, 3                                      // 000000009188: 86188311
	s_cmp_lg_u32 s77, 0                                        // 00000000918C: BF07804D
	s_cselect_b64 s[18:19], -1, 0                              // 000000009190: 859280C1
	s_not_b32 s17, s68                                         // 000000009194: BE910444
	s_add_u32 s17, s4, s17                                     // 000000009198: 80111104
	s_cmp_eq_u32 s68, s17                                      // 00000000919C: BF061144
	s_cselect_b64 s[20:21], -1, 0                              // 0000000091A0: 859480C1
	s_or_b64 s[18:19], s[18:19], s[20:21]                      // 0000000091A4: 87921412
	s_and_b64 s[20:21], s[18:19], exec                         // 0000000091A8: 86947E12
	s_cbranch_scc0 7                                           // 0000000091AC: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x76cc>
	s_add_u32 s2, s2, s14                                      // 0000000091B0: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 0000000091B4: BF093302
	s_mov_b32 s25, 0                                           // 0000000091B8: BE990080
	s_cbranch_scc1 589                                         // 0000000091BC: BF85024D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7ff4>
	s_lshl_b32 s17, s2, 5                                      // 0000000091C0: 8E118502
	s_load_dwordx8 s[68:75], s[46:47], s17 offset:0x0          // 0000000091C4: C00E5117 22000000
	s_waitcnt lgkmcnt(0)                                       // 0000000091CC: BF8CC07F
	s_add_u32 s28, s38, s72                                    // 0000000091D0: 801C4826
	s_addc_u32 s29, s39, s73                                   // 0000000091D4: 821D4927
	s_add_u32 s80, s40, s72                                    // 0000000091D8: 80504828
	s_addc_u32 s81, s41, s73                                   // 0000000091DC: 82514929
	s_not_b32 s17, s68                                         // 0000000091E0: BE910444
	s_add_u32 s17, s4, s17                                     // 0000000091E4: 80111104
	s_and_b64 s[18:19], s[18:19], exec                         // 0000000091E8: 86927E12
	s_cselect_b32 s17, s17, s68                                // 0000000091EC: 85114411
	s_lshl_b32 s18, s17, 5                                     // 0000000091F0: 8E128511
	s_add_u32 s18, s18, 32                                     // 0000000091F4: 8012A012
	s_mul_i32 s18, s18, s5                                     // 0000000091F8: 92120512
	s_addk_i32 s18, 0x60                                       // 0000000091FC: B7120060
	s_lshr_b32 s18, s18, 7                                     // 000000009200: 8F128712
	v_readlane_b32 s19, v255, 1                                // 000000009204: D2890013 000103FF
	s_min_u32 s96, s19, s18                                    // 00000000920C: 83E01213
	s_and_b64 s[18:19], s[10:11], exec                         // 000000009210: 86927E0A
	s_cbranch_scc0 76                                          // 000000009214: BF84004C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7848>
	s_lshl_b32 s18, s24, 14                                    // 000000009218: 8E128E18
	s_or_b32 s18, s18, s88                                     // 00000000921C: 87125812
	s_mov_b32 m0, s18                                          // 000000009220: BEFC0012
	v_readlane_b32 s19, v255, 11                               // 000000009224: D2890013 000117FF
	buffer_load_dwordx4 v233, s[28:31], 0 offen lds            // 00000000922C: E05D1000 800700E9
	s_add_u32 m0, s18, 0x1000                                  // 000000009234: 807CFF12 00001000
	v_readlane_b32 s20, v255, 12                               // 00000000923C: D2890014 000119FF
	s_mov_b32 s82, s30                                         // 000000009244: BED2001E
	s_mov_b32 s83, s31                                         // 000000009248: BED3001F
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 00000000924C: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 000000009254: 877CFF12 00002000
	s_mul_i32 s19, s8, 0x60                                    // 00000000925C: 9213FF08 00000060
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000009264: E05D1000 140700E9
	s_add_u32 m0, s18, 0x3000                                  // 00000000926C: 807CFF12 00003000
	s_nop 0                                                    // 000000009274: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000009278: E05D1000 130700E9
	s_or_b32 m0, s18, 0x10000                                  // 000000009280: 877CFF12 00010000
	v_readlane_b32 s19, v255, 13                               // 000000009288: D2890013 00011BFF
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 000000009290: E05D1000 801400EB
	s_add_u32 m0, s18, 0x11000                                 // 000000009298: 807CFF12 00011000
	s_nop 0                                                    // 0000000092A0: BF800000
	buffer_load_dwordx4 v235, s[80:83], s20 offen lds          // 0000000092A4: E05D1000 141400EB
	s_or_b32 m0, s18, 0x12000                                  // 0000000092AC: 877CFF12 00012000
	s_nop 0                                                    // 0000000092B4: BF800000
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 0000000092B8: E05D1000 131400EB
	s_add_u32 m0, s18, 0x13000                                 // 0000000092C0: 807CFF12 00013000
	s_mul_i32 s18, s8, 0x44                                    // 0000000092C8: 9212FF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 0000000092D0: E05D1000 121400EB
	s_cmp_lt_u32 s96, 2                                        // 0000000092D8: BF0A8260
	s_cbranch_scc1 26                                          // 0000000092DC: BF85001A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7848>
	s_add_u32 s18, s24, 1                                      // 0000000092E0: 80128118
	s_and_b32 s18, s18, 3                                      // 0000000092E4: 86128312
	s_lshl_b32 s18, s18, 14                                    // 0000000092E8: 8E128E12
	s_or_b32 s18, s18, s88                                     // 0000000092EC: 87125812
	s_mov_b32 m0, s18                                          // 0000000092F0: BEFC0012
	s_mul_i32 s19, s8, 0xa0                                    // 0000000092F4: 9213FF08 000000A0
	buffer_load_dwordx4 v233, s[28:31], s33 offen lds          // 0000000092FC: E05D1000 210700E9
	s_add_u32 m0, s18, 0x1000                                  // 000000009304: 807CFF12 00001000
	s_nop 0                                                    // 00000000930C: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000009310: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 000000009318: 877CFF12 00002000
	s_mul_i32 s19, s8, 0xc0                                    // 000000009320: 9213FF08 000000C0
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000009328: E05D1000 130700E9
	s_add_u32 m0, s18, 0x3000                                  // 000000009330: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xe0                                    // 000000009338: 9212FF08 000000E0
	buffer_load_dwordx4 v233, s[28:31], s18 offen lds          // 000000009340: E05D1000 120700E9
	v_readlane_b32 s18, v255, 7                                // 000000009348: D2890012 00010FFF
	s_add_u32 s22, s18, s70                                    // 000000009350: 80164612
	v_readlane_b32 s18, v255, 8                                // 000000009354: D2890012 000111FF
	s_addc_u32 s23, s18, s71                                   // 00000000935C: 82174712
	v_readlane_b32 s18, v255, 9                                // 000000009360: D2890012 000113FF
	s_add_u32 s20, s18, s74                                    // 000000009368: 80144A12
	v_readlane_b32 s18, v255, 10                               // 00000000936C: D2890012 000115FF
	s_addc_u32 s21, s18, s75                                   // 000000009374: 82154B12
	v_readlane_b32 s18, v255, 2                                // 000000009378: D2890012 000105FF
	s_add_u32 s18, s69, s18                                    // 000000009380: 80121245
	s_lshl_b32 s18, s18, 2                                     // 000000009384: 8E128212
	s_add_u32 s26, s44, s18                                    // 000000009388: 801A122C
	v_readlane_b32 s18, v255, 3                                // 00000000938C: D2890012 000107FF
	s_addc_u32 s27, s45, 0                                     // 000000009394: 821B802D
	v_readlane_b32 s19, v255, 4                                // 000000009398: D2890013 000109FF
	s_and_b64 s[18:19], s[18:19], exec                         // 0000000093A0: 86927E12
	s_cselect_b32 s18, 0, s26                                  // 0000000093A4: 85121A80
	s_mul_i32 s17, s17, s5                                     // 0000000093A8: 92110511
	v_readlane_b32 s26, v255, 0                                // 0000000093AC: D289001A 000101FF
	s_cselect_b32 s19, 0, s27                                  // 0000000093B4: 85131B80
	s_add_u32 s26, s17, s26                                    // 0000000093B8: 801A1A11
	s_lshl_b32 s17, s26, 5                                     // 0000000093BC: 8E11851A
	s_bfe_u32 s79, s26, 0x190002                               // 0000000093C0: 92CFFF1A 00190002
	v_or_b32_e32 v80, s17, v216                                // 0000000093C8: 28A1B011
	v_mul_lo_u32 v80, v80, s7                                  // 0000000093CC: D2850050 00000F50
	scratch_load_dword v81, off, off offset:36                 // 0000000093D4: DC504024 517F0000
	s_waitcnt vmcnt(0)                                         // 0000000093DC: BF8C0F70
	v_add_u32_e32 v80, v81, v80                                // 0000000093E0: 68A0A151
	global_load_dwordx4 v[220:223], v80, s[22:23]              // 0000000093E4: DC5C8000 DC160050
	global_load_dwordx4 v[224:227], v80, s[22:23] offset:16    // 0000000093EC: DC5C8010 E0160050
	global_load_dwordx4 v[200:203], v80, s[22:23] offset:64    // 0000000093F4: DC5C8040 C8160050
	global_load_dwordx4 v[204:207], v80, s[22:23] offset:80    // 0000000093FC: DC5C8050 CC160050
	s_mov_b32 s83, 0x110000                                    // 000000009404: BED300FF 00110000
	s_mov_b32 s22, 1                                           // 00000000940C: BE960081
	s_mov_b32 s43, 0x110000                                    // 000000009410: BEAB00FF 00110000
	s_branch 442                                               // 000000009418: BF8201BA <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8004>
	s_setprio 0                                                // 00000000941C: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000009420: D1CB0070 0663DF70
	v_fma_f32 v96, v96, v239, v152                             // 000000009428: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 000000009430: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 000000009438: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 000000009440: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 000000009448: D1CB0068 0663DF68
	v_fma_f32 v124, v124, v239, v152                           // 000000009450: D1CB007C 0663DF7C
	v_fma_f32 v108, v108, v239, v152                           // 000000009458: D1CB006C 0663DF6C
	v_fma_f32 v80, v80, v239, v150                             // 000000009460: D1CB0050 065BDF50
	v_fma_f32 v64, v64, v239, v150                             // 000000009468: D1CB0040 065BDF40
	v_fma_f32 v84, v84, v239, v150                             // 000000009470: D1CB0054 065BDF54
	v_fma_f32 v68, v68, v239, v150                             // 000000009478: D1CB0044 065BDF44
	v_fma_f32 v88, v88, v239, v150                             // 000000009480: D1CB0058 065BDF58
	v_fma_f32 v72, v72, v239, v150                             // 000000009488: D1CB0048 065BDF48
	v_fma_f32 v128, v75, v239, v150                            // 000000009490: D1CB0080 065BDF4B
	v_fma_f32 v75, v92, v239, v150                             // 000000009498: D1CB004B 065BDF5C
	v_fma_f32 v76, v76, v239, v150                             // 0000000094A0: D1CB004C 065BDF4C
	v_fma_f32 v113, v113, v239, v152                           // 0000000094A8: D1CB0071 0663DF71
	v_fma_f32 v97, v97, v239, v152                             // 0000000094B0: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 0000000094B8: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 0000000094C0: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 0000000094C8: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 0000000094D0: D1CB0069 0663DF69
	v_fma_f32 v125, v125, v239, v152                           // 0000000094D8: D1CB007D 0663DF7D
	v_fma_f32 v109, v109, v239, v152                           // 0000000094E0: D1CB006D 0663DF6D
	v_fma_f32 v81, v81, v239, v150                             // 0000000094E8: D1CB0051 065BDF51
	v_fma_f32 v65, v65, v239, v150                             // 0000000094F0: D1CB0041 065BDF41
	v_fma_f32 v85, v85, v239, v150                             // 0000000094F8: D1CB0055 065BDF55
	v_fma_f32 v69, v69, v239, v150                             // 000000009500: D1CB0045 065BDF45
	v_fma_f32 v89, v89, v239, v150                             // 000000009508: D1CB0059 065BDF59
	v_fma_f32 v73, v73, v239, v150                             // 000000009510: D1CB0049 065BDF49
	v_fma_f32 v92, v93, v239, v150                             // 000000009518: D1CB005C 065BDF5D
	v_fma_f32 v93, v94, v239, v150                             // 000000009520: D1CB005D 065BDF5E
	v_fma_f32 v94, v95, v239, v150                             // 000000009528: D1CB005E 065BDF5F
	v_fma_f32 v77, v77, v239, v150                             // 000000009530: D1CB004D 065BDF4D
	v_fma_f32 v95, v79, v239, v150                             // 000000009538: D1CB005F 065BDF4F
	v_cvt_pk_u8_f32 v79, v112, 0, 0                            // 000000009540: D1DD004F 02010170
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000009548: D1DD0060 02010160
	v_cvt_pk_u8_f32 v112, v116, 0, 0                           // 000000009550: D1DD0070 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000009558: D1DD0064 02010164
	v_cvt_pk_u8_f32 v116, v120, 0, 0                           // 000000009560: D1DD0074 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000009568: D1DD0068 02010168
	v_cvt_pk_u8_f32 v120, v124, 0, 0                           // 000000009570: D1DD0078 0201017C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000009578: D1DD006C 0201016C
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000009580: D1DD0050 02010150
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000009588: D1DD0040 02010140
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000009590: D1DD0054 02010154
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000009598: D1DD0044 02010144
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 0000000095A0: D1DD0058 02010158
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 0000000095A8: D1DD0048 02010148
	v_cvt_pk_u8_f32 v75, v75, 0, 0                             // 0000000095B0: D1DD004B 0201014B
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 0000000095B8: D1DD004C 0201014C
	v_fma_f32 v114, v114, v239, v152                           // 0000000095C0: D1CB0072 0663DF72
	v_fma_f32 v98, v98, v239, v152                             // 0000000095C8: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 0000000095D0: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 0000000095D8: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 0000000095E0: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 0000000095E8: D1CB006A 0663DF6A
	v_fma_f32 v126, v126, v239, v152                           // 0000000095F0: D1CB007E 0663DF7E
	v_fma_f32 v110, v110, v239, v152                           // 0000000095F8: D1CB006E 0663DF6E
	v_fma_f32 v82, v82, v239, v150                             // 000000009600: D1CB0052 065BDF52
	v_fma_f32 v66, v66, v239, v150                             // 000000009608: D1CB0042 065BDF42
	v_fma_f32 v86, v86, v239, v150                             // 000000009610: D1CB0056 065BDF56
	v_fma_f32 v70, v70, v239, v150                             // 000000009618: D1CB0046 065BDF46
	v_fma_f32 v90, v90, v239, v150                             // 000000009620: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 000000009628: D1CB004A 065BDF4A
	v_fma_f32 v78, v78, v239, v150                             // 000000009630: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v79, v113, 1, v79                          // 000000009638: D1DD004F 053D0371
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000009640: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v112                         // 000000009648: D1DD0061 05C10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 000000009650: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v116                        // 000000009658: D1DD0065 05D10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 000000009660: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v105, v125, 1, v120                        // 000000009668: D1DD0069 05E1037D
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 000000009670: D1DD006C 05B1036D
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000009678: D1DD0050 05410351
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000009680: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 000000009688: D1DD0041 05510355
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 000000009690: D1DD0044 05110345
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 000000009698: D1DD0045 05610359
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 0000000096A0: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v92, 1, v75                           // 0000000096A8: D1DD0049 052D035C
	v_cvt_pk_u8_f32 v75, v77, 1, v76                           // 0000000096B0: D1DD004B 0531034D
	v_fma_f32 v115, v115, v239, v152                           // 0000000096B8: D1CB0073 0663DF73
	v_fma_f32 v99, v99, v239, v152                             // 0000000096C0: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 0000000096C8: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 0000000096D0: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 0000000096D8: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 0000000096E0: D1CB006B 0663DF6B
	v_fma_f32 v127, v127, v239, v152                           // 0000000096E8: D1CB007F 0663DF7F
	v_fma_f32 v111, v111, v239, v152                           // 0000000096F0: D1CB006F 0663DF6F
	v_fma_f32 v83, v83, v239, v150                             // 0000000096F8: D1CB0053 065BDF53
	v_fma_f32 v67, v67, v239, v150                             // 000000009700: D1CB0043 065BDF43
	v_fma_f32 v87, v87, v239, v150                             // 000000009708: D1CB0057 065BDF57
	v_fma_f32 v71, v71, v239, v150                             // 000000009710: D1CB0047 065BDF47
	v_fma_f32 v91, v91, v239, v150                             // 000000009718: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v76, v114, 2, v79                          // 000000009720: D1DD004C 053D0572
	v_cvt_pk_u8_f32 v77, v98, 2, v96                           // 000000009728: D1DD004D 05810562
	v_cvt_pk_u8_f32 v79, v118, 2, v97                          // 000000009730: D1DD004F 05850576
	v_cvt_pk_u8_f32 v81, v102, 2, v100                         // 000000009738: D1DD0051 05910566
	v_cvt_pk_u8_f32 v84, v122, 2, v101                         // 000000009740: D1DD0054 0595057A
	v_cvt_pk_u8_f32 v85, v106, 2, v104                         // 000000009748: D1DD0055 05A1056A
	v_cvt_pk_u8_f32 v88, v126, 2, v105                         // 000000009750: D1DD0058 05A5057E
	v_cvt_pk_u8_f32 v89, v110, 2, v108                         // 000000009758: D1DD0059 05B1056E
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000009760: D1DD0050 05410552
	v_cvt_pk_u8_f32 v66, v66, 2, v64                           // 000000009768: D1DD0042 05010542
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 000000009770: D1DD0041 05050556
	v_cvt_pk_u8_f32 v70, v70, 2, v68                           // 000000009778: D1DD0046 05110546
	v_cvt_pk_u8_f32 v82, v90, 2, v69                           // 000000009780: D1DD0052 0515055A
	v_cvt_pk_u8_f32 v86, v74, 2, v72                           // 000000009788: D1DD0056 0521054A
	v_cvt_pk_u8_f32 v90, v93, 2, v73                           // 000000009790: D1DD005A 0525055D
	v_cvt_pk_u8_f32 v92, v78, 2, v75                           // 000000009798: D1DD005C 052D054E
	s_mov_b32 s25, 1                                           // 0000000097A0: BE990081
	v_cvt_pk_u8_f32 v72, v115, 3, v76                          // 0000000097A4: D1DD0048 05310773
	v_cvt_pk_u8_f32 v76, v99, 3, v77                           // 0000000097AC: D1DD004C 05350763
	v_cvt_pk_u8_f32 v73, v119, 3, v79                          // 0000000097B4: D1DD0049 053D0777
	v_cvt_pk_u8_f32 v77, v103, 3, v81                          // 0000000097BC: D1DD004D 05450767
	v_cvt_pk_u8_f32 v74, v123, 3, v84                          // 0000000097C4: D1DD004A 0551077B
	v_cvt_pk_u8_f32 v78, v107, 3, v85                          // 0000000097CC: D1DD004E 0555076B
	v_cvt_pk_u8_f32 v75, v127, 3, v88                          // 0000000097D4: D1DD004B 0561077F
	v_cvt_pk_u8_f32 v79, v111, 3, v89                          // 0000000097DC: D1DD004F 0565076F
	v_cvt_pk_u8_f32 v64, v83, 3, v80                           // 0000000097E4: D1DD0040 05410753
	v_cvt_pk_u8_f32 v68, v67, 3, v66                           // 0000000097EC: D1DD0044 05090743
	v_cvt_pk_u8_f32 v65, v87, 3, v65                           // 0000000097F4: D1DD0041 05050757
	v_cvt_pk_u8_f32 v69, v71, 3, v70                           // 0000000097FC: D1DD0045 05190747
	v_cvt_pk_u8_f32 v66, v91, 3, v82                           // 000000009804: D1DD0042 0549075B
	v_cvt_pk_u8_f32 v70, v128, 3, v86                          // 00000000980C: D1DD0046 05590780
	v_cvt_pk_u8_f32 v67, v94, 3, v90                           // 000000009814: D1DD0043 0569075E
	v_cvt_pk_u8_f32 v71, v95, 3, v92                           // 00000000981C: D1DD0047 0571075F
	s_waitcnt vmcnt(0)                                         // 000000009824: BF8C0F70
	s_barrier                                                  // 000000009828: BF8A0000
	s_add_u32 s17, s96, s78                                    // 00000000982C: 80114E60
	s_and_b32 s24, s17, 3                                      // 000000009830: 86188311
	s_cmp_lg_u32 s77, 0                                        // 000000009834: BF07804D
	s_cselect_b64 s[18:19], -1, 0                              // 000000009838: 859280C1
	s_not_b32 s17, s68                                         // 00000000983C: BE910444
	s_add_u32 s17, s4, s17                                     // 000000009840: 80111104
	s_cmp_eq_u32 s68, s17                                      // 000000009844: BF061144
	s_cselect_b64 s[20:21], -1, 0                              // 000000009848: 859480C1
	s_or_b64 s[18:19], s[18:19], s[20:21]                      // 00000000984C: 87921412
	s_and_b64 s[20:21], s[18:19], exec                         // 000000009850: 86947E12
	s_cbranch_scc0 7                                           // 000000009854: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7d74>
	s_add_u32 s2, s2, s14                                      // 000000009858: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 00000000985C: BF093302
	s_mov_b32 s25, 0                                           // 000000009860: BE990080
	s_cbranch_scc1 291                                         // 000000009864: BF850123 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x81f4>
	s_lshl_b32 s17, s2, 5                                      // 000000009868: 8E118502
	s_load_dwordx8 s[68:75], s[46:47], s17 offset:0x0          // 00000000986C: C00E5117 22000000
	s_waitcnt lgkmcnt(0)                                       // 000000009874: BF8CC07F
	s_add_u32 s28, s38, s72                                    // 000000009878: 801C4826
	s_addc_u32 s29, s39, s73                                   // 00000000987C: 821D4927
	s_add_u32 s80, s40, s72                                    // 000000009880: 80504828
	s_addc_u32 s81, s41, s73                                   // 000000009884: 82514929
	s_not_b32 s17, s68                                         // 000000009888: BE910444
	s_add_u32 s17, s4, s17                                     // 00000000988C: 80111104
	s_and_b64 s[18:19], s[18:19], exec                         // 000000009890: 86927E12
	s_cselect_b32 s17, s17, s68                                // 000000009894: 85114411
	s_lshl_b32 s18, s17, 5                                     // 000000009898: 8E128511
	s_add_u32 s18, s18, 32                                     // 00000000989C: 8012A012
	s_mul_i32 s18, s18, s5                                     // 0000000098A0: 92120512
	s_addk_i32 s18, 0x60                                       // 0000000098A4: B7120060
	s_lshr_b32 s18, s18, 7                                     // 0000000098A8: 8F128712
	v_readlane_b32 s19, v255, 1                                // 0000000098AC: D2890013 000103FF
	s_min_u32 s96, s19, s18                                    // 0000000098B4: 83E01213
	s_and_b64 s[18:19], s[10:11], exec                         // 0000000098B8: 86927E0A
	s_cbranch_scc0 76                                          // 0000000098BC: BF84004C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7ef0>
	s_lshl_b32 s18, s24, 14                                    // 0000000098C0: 8E128E18
	s_or_b32 s18, s18, s88                                     // 0000000098C4: 87125812
	s_mov_b32 m0, s18                                          // 0000000098C8: BEFC0012
	v_readlane_b32 s19, v255, 11                               // 0000000098CC: D2890013 000117FF
	buffer_load_dwordx4 v233, s[28:31], 0 offen lds            // 0000000098D4: E05D1000 800700E9
	s_add_u32 m0, s18, 0x1000                                  // 0000000098DC: 807CFF12 00001000
	v_readlane_b32 s20, v255, 12                               // 0000000098E4: D2890014 000119FF
	s_mov_b32 s82, s30                                         // 0000000098EC: BED2001E
	s_mov_b32 s83, s31                                         // 0000000098F0: BED3001F
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 0000000098F4: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 0000000098FC: 877CFF12 00002000
	s_mul_i32 s19, s8, 0x60                                    // 000000009904: 9213FF08 00000060
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 00000000990C: E05D1000 140700E9
	s_add_u32 m0, s18, 0x3000                                  // 000000009914: 807CFF12 00003000
	s_nop 0                                                    // 00000000991C: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000009920: E05D1000 130700E9
	s_or_b32 m0, s18, 0x10000                                  // 000000009928: 877CFF12 00010000
	v_readlane_b32 s19, v255, 13                               // 000000009930: D2890013 00011BFF
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 000000009938: E05D1000 801400EB
	s_add_u32 m0, s18, 0x11000                                 // 000000009940: 807CFF12 00011000
	s_nop 0                                                    // 000000009948: BF800000
	buffer_load_dwordx4 v235, s[80:83], s20 offen lds          // 00000000994C: E05D1000 141400EB
	s_or_b32 m0, s18, 0x12000                                  // 000000009954: 877CFF12 00012000
	s_nop 0                                                    // 00000000995C: BF800000
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000009960: E05D1000 131400EB
	s_add_u32 m0, s18, 0x13000                                 // 000000009968: 807CFF12 00013000
	s_mul_i32 s18, s8, 0x44                                    // 000000009970: 9212FF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000009978: E05D1000 121400EB
	s_cmp_lt_u32 s96, 2                                        // 000000009980: BF0A8260
	s_cbranch_scc1 26                                          // 000000009984: BF85001A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7ef0>
	s_add_u32 s18, s24, 1                                      // 000000009988: 80128118
	s_and_b32 s18, s18, 3                                      // 00000000998C: 86128312
	s_lshl_b32 s18, s18, 14                                    // 000000009990: 8E128E12
	s_or_b32 s18, s18, s88                                     // 000000009994: 87125812
	s_mov_b32 m0, s18                                          // 000000009998: BEFC0012
	s_mul_i32 s19, s8, 0xa0                                    // 00000000999C: 9213FF08 000000A0
	buffer_load_dwordx4 v233, s[28:31], s33 offen lds          // 0000000099A4: E05D1000 210700E9
	s_add_u32 m0, s18, 0x1000                                  // 0000000099AC: 807CFF12 00001000
	s_nop 0                                                    // 0000000099B4: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 0000000099B8: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 0000000099C0: 877CFF12 00002000
	s_mul_i32 s19, s8, 0xc0                                    // 0000000099C8: 9213FF08 000000C0
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 0000000099D0: E05D1000 130700E9
	s_add_u32 m0, s18, 0x3000                                  // 0000000099D8: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xe0                                    // 0000000099E0: 9212FF08 000000E0
	buffer_load_dwordx4 v233, s[28:31], s18 offen lds          // 0000000099E8: E05D1000 120700E9
	v_readlane_b32 s18, v255, 7                                // 0000000099F0: D2890012 00010FFF
	s_add_u32 s22, s18, s70                                    // 0000000099F8: 80164612
	v_readlane_b32 s18, v255, 8                                // 0000000099FC: D2890012 000111FF
	s_addc_u32 s23, s18, s71                                   // 000000009A04: 82174712
	v_readlane_b32 s18, v255, 9                                // 000000009A08: D2890012 000113FF
	s_add_u32 s20, s18, s74                                    // 000000009A10: 80144A12
	v_readlane_b32 s18, v255, 10                               // 000000009A14: D2890012 000115FF
	s_addc_u32 s21, s18, s75                                   // 000000009A1C: 82154B12
	v_readlane_b32 s18, v255, 2                                // 000000009A20: D2890012 000105FF
	s_add_u32 s18, s69, s18                                    // 000000009A28: 80121245
	s_lshl_b32 s18, s18, 2                                     // 000000009A2C: 8E128212
	s_add_u32 s26, s44, s18                                    // 000000009A30: 801A122C
	v_readlane_b32 s18, v255, 3                                // 000000009A34: D2890012 000107FF
	s_addc_u32 s27, s45, 0                                     // 000000009A3C: 821B802D
	v_readlane_b32 s19, v255, 4                                // 000000009A40: D2890013 000109FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000009A48: 86927E12
	s_cselect_b32 s18, 0, s26                                  // 000000009A4C: 85121A80
	s_mul_i32 s17, s17, s5                                     // 000000009A50: 92110511
	v_readlane_b32 s26, v255, 0                                // 000000009A54: D289001A 000101FF
	s_cselect_b32 s19, 0, s27                                  // 000000009A5C: 85131B80
	s_add_u32 s26, s17, s26                                    // 000000009A60: 801A1A11
	s_lshl_b32 s17, s26, 5                                     // 000000009A64: 8E11851A
	s_bfe_u32 s79, s26, 0x190002                               // 000000009A68: 92CFFF1A 00190002
	v_or_b32_e32 v80, s17, v216                                // 000000009A70: 28A1B011
	v_mul_lo_u32 v80, v80, s7                                  // 000000009A74: D2850050 00000F50
	scratch_load_dword v81, off, off offset:36                 // 000000009A7C: DC504024 517F0000
	s_waitcnt vmcnt(0)                                         // 000000009A84: BF8C0F70
	v_add_u32_e32 v80, v81, v80                                // 000000009A88: 68A0A151
	global_load_dwordx4 v[220:223], v80, s[22:23]              // 000000009A8C: DC5C8000 DC160050
	global_load_dwordx4 v[224:227], v80, s[22:23] offset:16    // 000000009A94: DC5C8010 E0160050
	global_load_dwordx4 v[200:203], v80, s[22:23] offset:64    // 000000009A9C: DC5C8040 C8160050
	global_load_dwordx4 v[204:207], v80, s[22:23] offset:80    // 000000009AA4: DC5C8050 CC160050
	s_mov_b32 s83, 0x110000                                    // 000000009AAC: BED300FF 00110000
	s_mov_b32 s22, 1                                           // 000000009AB4: BE960081
	s_mov_b32 s43, 0x110000                                    // 000000009AB8: BEAB00FF 00110000
	s_branch 144                                               // 000000009AC0: BF820090 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8204>
	s_mov_b32 s77, 0                                           // 000000009AC4: BECD0080
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009AC8: BE940100
	s_mov_b64 s[18:19], s[36:37]                               // 000000009ACC: BE920124
	s_mov_b32 s17, s3                                          // 000000009AD0: BE910003
	s_mov_b32 s22, 0                                           // 000000009AD4: BE960080
	s_branch 128                                               // 000000009AD8: BF820080 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x81dc>
	s_mov_b32 s77, 0                                           // 000000009ADC: BECD0080
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009AE0: BE940100
	s_mov_b64 s[18:19], s[36:37]                               // 000000009AE4: BE920124
	s_mov_b32 s17, s3                                          // 000000009AE8: BE910003
	s_mov_b32 s22, 0                                           // 000000009AEC: BE960080
	s_branch 250                                               // 000000009AF0: BF8200FA <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x83dc>
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009AF4: BE940100
	s_mov_b64 s[18:19], s[36:37]                               // 000000009AF8: BE920124
	s_mov_b32 s17, s3                                          // 000000009AFC: BE910003
	s_mov_b32 s22, 0                                           // 000000009B00: BE960080
	s_setprio 1                                                // 000000009B04: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[72:79], 0// 000000009B08: D3AD0050 020291C0
	s_nop 11                                                   // 000000009B10: BF80000B
	v_mul_f32_e32 v80, v154, v80                               // 000000009B14: 0AA0A19A
	v_add_f32_e32 v84, v250, v80                               // 000000009B18: 02A8A1FA
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[64:71], 0// 000000009B1C: D3AD0050 020281C0
	s_add_u32 s23, s42, s78                                    // 000000009B24: 80174E2A
	s_nop 10                                                   // 000000009B28: BF80000A
	v_mul_f32_e32 v80, v155, v80                               // 000000009B2C: 0AA0A19B
	s_and_b32 s23, s23, 3                                      // 000000009B30: 86178317
	v_add_f32_e32 v250, v84, v80                               // 000000009B34: 03F4A154
	v_lshl_or_b32 v80, s23, 14, v245                           // 000000009B38: D2000050 07D51C17
	v_add3_u32 v80, v244, v80, s92                             // 000000009B40: D1FF0050 0172A1F4
	ds_read_b64_tr_b8 v[82:83], v80                            // 000000009B48: D9C40000 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1024                // 000000009B50: D9C40400 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2048                // 000000009B58: D9C40800 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3072                // 000000009B60: D9C40C00 58000050
	ds_read_b64_tr_b8 v[90:91], v80 offset:256                 // 000000009B68: D9C40100 5A000050
	ds_read_b64_tr_b8 v[92:93], v80 offset:1280                // 000000009B70: D9C40500 5C000050
	ds_read_b64_tr_b8 v[94:95], v80 offset:2304                // 000000009B78: D9C40900 5E000050
	ds_read_b64_tr_b8 v[96:97], v80 offset:3328                // 000000009B80: D9C40D00 60000050
	ds_read_b64_tr_b8 v[98:99], v80 offset:512                 // 000000009B88: D9C40200 62000050
	ds_read_b64_tr_b8 v[100:101], v80 offset:1536              // 000000009B90: D9C40600 64000050
	ds_read_b64_tr_b8 v[102:103], v80 offset:2560              // 000000009B98: D9C40A00 66000050
	ds_read_b64_tr_b8 v[104:105], v80 offset:3584              // 000000009BA0: D9C40E00 68000050
	s_waitcnt lgkmcnt(4)                                       // 000000009BA8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[82:89], v[72:79], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000009BAC: D3AC0000 0003F7F2 D3AE0830 04C29152
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[90:97], v[72:79], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000009BBC: D3AC0000 0003F7F2 D3AE0820 0482915A
	ds_read_b64_tr_b8 v[82:83], v80 offset:768                 // 000000009BCC: D9C40300 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1792                // 000000009BD4: D9C40700 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2816                // 000000009BDC: D9C40B00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3840                // 000000009BE4: D9C40F00 58000050
	ds_read_b64_tr_b8 v[90:91], v80 offset:4096                // 000000009BEC: D9C41000 5A000050
	ds_read_b64_tr_b8 v[92:93], v80 offset:5120                // 000000009BF4: D9C41400 5C000050
	ds_read_b64_tr_b8 v[94:95], v80 offset:6144                // 000000009BFC: D9C41800 5E000050
	ds_read_b64_tr_b8 v[96:97], v80 offset:7168                // 000000009C04: D9C41C00 60000050
	s_waitcnt lgkmcnt(4)                                       // 000000009C0C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[98:105], v[72:79], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000009C10: D3AC0000 0003F7F2 D3AE0810 04429162
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[82:89], v[72:79], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000009C20: D3AC0000 0003F7F2 D3AE0800 04029152
	ds_read_b64_tr_b8 v[98:99], v80 offset:4352                // 000000009C30: D9C41100 62000050
	ds_read_b64_tr_b8 v[100:101], v80 offset:5376              // 000000009C38: D9C41500 64000050
	ds_read_b64_tr_b8 v[102:103], v80 offset:6400              // 000000009C40: D9C41900 66000050
	ds_read_b64_tr_b8 v[104:105], v80 offset:7424              // 000000009C48: D9C41D00 68000050
	ds_read_b64_tr_b8 v[72:73], v80 offset:4608                // 000000009C50: D9C41200 48000050
	ds_read_b64_tr_b8 v[74:75], v80 offset:5632                // 000000009C58: D9C41600 4A000050
	ds_read_b64_tr_b8 v[76:77], v80 offset:6656                // 000000009C60: D9C41A00 4C000050
	ds_read_b64_tr_b8 v[78:79], v80 offset:7680                // 000000009C68: D9C41E00 4E000050
	s_waitcnt lgkmcnt(4)                                       // 000000009C70: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[90:97], v[64:71], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000009C74: D3AC0000 0003FBF2 D3AE0830 04C2815A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[98:105], v[64:71], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000009C84: D3AC0000 0003FBF2 D3AE0820 04828162
	ds_read_b64_tr_b8 v[82:83], v80 offset:4864                // 000000009C94: D9C41300 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:5888                // 000000009C9C: D9C41700 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:6912                // 000000009CA4: D9C41B00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:7936                // 000000009CAC: D9C41F00 58000050
	s_waitcnt lgkmcnt(0)                                       // 000000009CB4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[72:79], v[64:71], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000009CB8: D3AC0000 0003FBF2 D3AE0810 04428148
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[82:89], v[64:71], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000009CC8: D3AC0000 0003FBF2 D3AE0800 04028152
	s_mov_b32 s77, s25                                         // 000000009CD8: BECD0019
	s_waitcnt vmcnt(4)                                         // 000000009CDC: BF8C0F74
	s_barrier                                                  // 000000009CE0: BF8A0000
	s_mov_b32 s78, s24                                         // 000000009CE4: BECE0018
	s_cmp_eq_u32 s22, 0                                        // 000000009CE8: BF068016
	s_cbranch_scc0 128                                         // 000000009CEC: BF840080 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x83f0>
	s_branch 393                                               // 000000009CF0: BF820189 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8818>
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009CF4: BE940100
	s_mov_b64 s[18:19], s[36:37]                               // 000000009CF8: BE920124
	s_mov_b32 s17, s3                                          // 000000009CFC: BE910003
	s_mov_b32 s22, 0                                           // 000000009D00: BE960080
	s_setprio 1                                                // 000000009D04: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[72:79], 0// 000000009D08: D3AD0050 020291C0
	s_nop 11                                                   // 000000009D10: BF80000B
	v_mul_f32_e32 v80, v154, v80                               // 000000009D14: 0AA0A19A
	v_add_f32_e32 v84, v250, v80                               // 000000009D18: 02A8A1FA
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[64:71], 0// 000000009D1C: D3AD0050 020281C0
	s_add_u32 s23, s42, s78                                    // 000000009D24: 80174E2A
	s_nop 10                                                   // 000000009D28: BF80000A
	v_mul_f32_e32 v80, v155, v80                               // 000000009D2C: 0AA0A19B
	s_and_b32 s23, s23, 3                                      // 000000009D30: 86178317
	v_add_f32_e32 v250, v84, v80                               // 000000009D34: 03F4A154
	v_lshl_or_b32 v80, s23, 14, v245                           // 000000009D38: D2000050 07D51C17
	v_add3_u32 v80, v244, v80, s92                             // 000000009D40: D1FF0050 0172A1F4
	ds_read_b64_tr_b8 v[82:83], v80                            // 000000009D48: D9C40000 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1024                // 000000009D50: D9C40400 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2048                // 000000009D58: D9C40800 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3072                // 000000009D60: D9C40C00 58000050
	ds_read_b64_tr_b8 v[90:91], v80 offset:256                 // 000000009D68: D9C40100 5A000050
	ds_read_b64_tr_b8 v[92:93], v80 offset:1280                // 000000009D70: D9C40500 5C000050
	ds_read_b64_tr_b8 v[94:95], v80 offset:2304                // 000000009D78: D9C40900 5E000050
	ds_read_b64_tr_b8 v[96:97], v80 offset:3328                // 000000009D80: D9C40D00 60000050
	ds_read_b64_tr_b8 v[98:99], v80 offset:512                 // 000000009D88: D9C40200 62000050
	ds_read_b64_tr_b8 v[100:101], v80 offset:1536              // 000000009D90: D9C40600 64000050
	ds_read_b64_tr_b8 v[102:103], v80 offset:2560              // 000000009D98: D9C40A00 66000050
	ds_read_b64_tr_b8 v[104:105], v80 offset:3584              // 000000009DA0: D9C40E00 68000050
	s_waitcnt lgkmcnt(4)                                       // 000000009DA8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[82:89], v[72:79], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000009DAC: D3AC0000 0003F7F2 D3AE0830 04C29152
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[90:97], v[72:79], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000009DBC: D3AC0000 0003F7F2 D3AE0820 0482915A
	ds_read_b64_tr_b8 v[82:83], v80 offset:768                 // 000000009DCC: D9C40300 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1792                // 000000009DD4: D9C40700 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2816                // 000000009DDC: D9C40B00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3840                // 000000009DE4: D9C40F00 58000050
	ds_read_b64_tr_b8 v[90:91], v80 offset:4096                // 000000009DEC: D9C41000 5A000050
	ds_read_b64_tr_b8 v[92:93], v80 offset:5120                // 000000009DF4: D9C41400 5C000050
	ds_read_b64_tr_b8 v[94:95], v80 offset:6144                // 000000009DFC: D9C41800 5E000050
	ds_read_b64_tr_b8 v[96:97], v80 offset:7168                // 000000009E04: D9C41C00 60000050
	s_waitcnt lgkmcnt(4)                                       // 000000009E0C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[98:105], v[72:79], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000009E10: D3AC0000 0003F7F2 D3AE0810 04429162
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[82:89], v[72:79], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000009E20: D3AC0000 0003F7F2 D3AE0800 04029152
	ds_read_b64_tr_b8 v[98:99], v80 offset:4352                // 000000009E30: D9C41100 62000050
	ds_read_b64_tr_b8 v[100:101], v80 offset:5376              // 000000009E38: D9C41500 64000050
	ds_read_b64_tr_b8 v[102:103], v80 offset:6400              // 000000009E40: D9C41900 66000050
	ds_read_b64_tr_b8 v[104:105], v80 offset:7424              // 000000009E48: D9C41D00 68000050
	ds_read_b64_tr_b8 v[72:73], v80 offset:4608                // 000000009E50: D9C41200 48000050
	ds_read_b64_tr_b8 v[74:75], v80 offset:5632                // 000000009E58: D9C41600 4A000050
	ds_read_b64_tr_b8 v[76:77], v80 offset:6656                // 000000009E60: D9C41A00 4C000050
	ds_read_b64_tr_b8 v[78:79], v80 offset:7680                // 000000009E68: D9C41E00 4E000050
	s_waitcnt lgkmcnt(4)                                       // 000000009E70: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[90:97], v[64:71], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000009E74: D3AC0000 0003FBF2 D3AE0830 04C2815A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[98:105], v[64:71], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000009E84: D3AC0000 0003FBF2 D3AE0820 04828162
	ds_read_b64_tr_b8 v[82:83], v80 offset:4864                // 000000009E94: D9C41300 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:5888                // 000000009E9C: D9C41700 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:6912                // 000000009EA4: D9C41B00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:7936                // 000000009EAC: D9C41F00 58000050
	s_waitcnt lgkmcnt(0)                                       // 000000009EB4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[72:79], v[64:71], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000009EB8: D3AC0000 0003FBF2 D3AE0810 04428148
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[82:89], v[64:71], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000009EC8: D3AC0000 0003FBF2 D3AE0800 04028152
	s_mov_b32 s77, s25                                         // 000000009ED8: BECD0019
	s_waitcnt vmcnt(4)                                         // 000000009EDC: BF8C0F74
	s_barrier                                                  // 000000009EE0: BF8A0000
	s_mov_b32 s78, s24                                         // 000000009EE4: BECE0018
	s_cmp_eq_u32 s22, 0                                        // 000000009EE8: BF068016
	s_cbranch_scc1 266                                         // 000000009EEC: BF85010A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8818>
	s_nop 15                                                   // 000000009EF0: BF80000F
	s_nop 3                                                    // 000000009EF4: BF800003
	v_rcp_f32_e32 v64, v250                                    // 000000009EF8: 7E8045FA
	v_log_f32_e32 v65, v250                                    // 000000009EFC: 7E8243FA
	s_nop 1                                                    // 000000009F00: BF800001
	v_mul_f32_e32 v64, v241, v64                               // 000000009F04: 0A8081F1
	v_mul_f32_e32 v48, v48, v64                                // 000000009F08: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 000000009F0C: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 000000009F10: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 000000009F14: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 000000009F18: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 000000009F1C: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 000000009F20: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 000000009F24: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 000000009F28: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 000000009F2C: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 000000009F30: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 000000009F34: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 000000009F38: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 000000009F3C: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 000000009F40: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 000000009F44: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 000000009F48: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 000000009F4C: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 000000009F50: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 000000009F54: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 000000009F58: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 000000009F5C: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 000000009F60: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 000000009F64: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 000000009F68: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 000000009F6C: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 000000009F70: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 000000009F74: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 000000009F78: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 000000009F7C: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 000000009F80: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 000000009F84: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 000000009F88: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 000000009F8C: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 000000009F90: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 000000009F94: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 000000009F98: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 000000009F9C: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 000000009FA0: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 000000009FA4: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 000000009FA8: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 000000009FAC: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 000000009FB0: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 000000009FB4: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 000000009FB8: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 000000009FBC: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 000000009FC0: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 000000009FC4: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 000000009FC8: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 000000009FCC: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 000000009FD0: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 000000009FD4: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 000000009FD8: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 000000009FDC: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 000000009FE0: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 000000009FE4: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 000000009FE8: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 000000009FEC: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 000000009FF0: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 000000009FF4: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 000000009FF8: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 000000009FFC: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000A000: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000A004: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000A008: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000A010: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000A018: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000A020: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000A028: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000A030: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000A038: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000A040: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000A048: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000A050: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000A058: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000A060: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000A068: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000A070: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000A078: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000A080: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000A088: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000A090: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000A098: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000A0A0: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000A0A8: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000A0B0: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000A0B8: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000A0C0: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000A0C8: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000A0D0: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000A0D8: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000A0E0: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000A0E8: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000A0F0: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000A0F8: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000A100: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000A108: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000A10C: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000A110: 7E000304
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000A114: 7E10B509
	v_mov_b32_e32 v1, v2                                       // 00000000A118: 7E020302
	v_mov_b32_e32 v2, v5                                       // 00000000A11C: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000A120: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000A124: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000A128: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000A12C: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000A130: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000A134: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000A138: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000A13C: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000A140: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000A144: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000A148: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000A14C: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000A150: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000A154: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000A158: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000A15C: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000A160: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000A164: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000A168: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000A16C: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000A170: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000A174: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000A178: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000A17C: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000A180: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000A184: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000A188: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000A18C: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000A190: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000A194: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000A198: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000A19C: 7E380320
	v_add_f32_e32 v32, v252, v65                               // 00000000A1A0: 024083FC
	v_mov_b32_e32 v29, v30                                     // 00000000A1A4: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000A1A8: 7E3C0321
	v_add_f32_e32 v32, -4.0, v32                               // 00000000A1AC: 024040F7
	v_add_f32_e32 v32, -2.0, v32                               // 00000000A1B0: 024040F5
	v_mul_f32_e32 v32, 0x3f317218, v32                         // 00000000A1B4: 0A4040FF 3F317218
	ds_write_b128 v228, v[0:3]                                 // 00000000A1BC: D9BE0000 000000E4
	ds_write_b128 v230, v[4:7]                                 // 00000000A1C4: D9BE0000 000004E6
	ds_write_b128 v229, v[8:11]                                // 00000000A1CC: D9BE0000 000008E5
	v_xor_b32_e32 v0, 0x60, v228                               // 00000000A1D4: 2A01C8FF 00000060
	ds_write_b128 v0, v[12:15]                                 // 00000000A1DC: D9BE0000 00000C00
	v_xor_b32_e32 v0, 0x80, v228                               // 00000000A1E4: 2A01C8FF 00000080
	ds_write_b128 v0, v[16:19]                                 // 00000000A1EC: D9BE0000 00001000
	v_xor_b32_e32 v0, 0xa0, v228                               // 00000000A1F4: 2A01C8FF 000000A0
	ds_write_b128 v0, v[20:23]                                 // 00000000A1FC: D9BE0000 00001400
	v_xor_b32_e32 v0, 0xc0, v228                               // 00000000A204: 2A01C8FF 000000C0
	ds_write_b128 v0, v[24:27]                                 // 00000000A20C: D9BE0000 00001800
	v_xor_b32_e32 v0, 0xe0, v228                               // 00000000A214: 2A01C8FF 000000E0
	ds_write_b128 v0, v[28:31]                                 // 00000000A21C: D9BE0000 00001C00
	ds_read_b128 v[8:11], v219                                 // 00000000A224: D9FE0000 080000DB
	ds_read_b128 v[12:15], v218 offset:1024                    // 00000000A22C: D9FE0400 0C0000DA
	ds_read_b128 v[16:19], v237 offset:2048                    // 00000000A234: D9FE0800 100000ED
	ds_read_b128 v[20:23], v254 offset:3072                    // 00000000A23C: D9FE0C00 140000FE
	ds_read_b128 v[24:27], v219 offset:4096                    // 00000000A244: D9FE1000 180000DB
	ds_read_b128 v[28:31], v218 offset:5120                    // 00000000A24C: D9FE1400 1C0000DA
	ds_read_b128 v[34:37], v237 offset:6144                    // 00000000A254: D9FE1800 220000ED
	ds_read_b128 v[38:41], v254 offset:7168                    // 00000000A25C: D9FE1C00 260000FE
	v_add_u32_e32 v0, s3, v217                                 // 00000000A264: 6801B203
	v_mul_lo_u32 v0, v0, s9                                    // 00000000A268: D2850000 00001300
	scratch_load_dword v1, off, off offset:32                  // 00000000A270: DC504020 017F0000
	s_waitcnt vmcnt(0)                                         // 00000000A278: BF8C0F70
	v_add_u32_e32 v0, v0, v1                                   // 00000000A27C: 68000300
	v_add_u32_e32 v1, s15, v0                                  // 00000000A280: 6802000F
	v_add_u32_e32 v2, s15, v1                                  // 00000000A284: 6804020F
	v_add_u32_e32 v3, s15, v2                                  // 00000000A288: 6806040F
	v_add_u32_e32 v4, s15, v3                                  // 00000000A28C: 6808060F
	v_add_u32_e32 v5, s15, v4                                  // 00000000A290: 680A080F
	v_add_u32_e32 v6, s15, v5                                  // 00000000A294: 680C0A0F
	v_add_u32_e32 v7, s15, v6                                  // 00000000A298: 680E0C0F
	s_waitcnt lgkmcnt(7)                                       // 00000000A29C: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[0:1]                   // 00000000A2A0: DC7C8000 00000800
	s_waitcnt lgkmcnt(6)                                       // 00000000A2A8: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[0:1]                  // 00000000A2AC: DC7C8000 00000C01
	s_waitcnt lgkmcnt(5)                                       // 00000000A2B4: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[0:1]                  // 00000000A2B8: DC7C8000 00001002
	s_waitcnt lgkmcnt(4)                                       // 00000000A2C0: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[0:1]                  // 00000000A2C4: DC7C8000 00001403
	s_waitcnt lgkmcnt(3)                                       // 00000000A2CC: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[0:1]                  // 00000000A2D0: DC7C8000 00001804
	s_waitcnt lgkmcnt(2)                                       // 00000000A2D8: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[0:1]                  // 00000000A2DC: DC7C8000 00001C05
	s_waitcnt lgkmcnt(1)                                       // 00000000A2E4: BF8CC17F
	global_store_dwordx4 v6, v[34:37], s[0:1]                  // 00000000A2E8: DC7C8000 00002206
	s_waitcnt lgkmcnt(0)                                       // 00000000A2F0: BF8CC07F
	global_store_dwordx4 v7, v[38:41], s[0:1]                  // 00000000A2F4: DC7C8000 00002607
	v_add_u32_e32 v0, s3, v216                                 // 00000000A2FC: 6801B003
	v_lshlrev_b32_e32 v0, 2, v0                                // 00000000A300: 24000082
	s_cmp_eq_u64 s[36:37], 0                                   // 00000000A304: BF128024
	s_mov_b64 s[0:1], s[20:21]                                 // 00000000A308: BE800114
	s_mov_b32 s3, s17                                          // 00000000A30C: BE830011
	s_cbranch_scc0 58238                                       // 00000000A310: BF84E37E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x160c>
	s_branch 57200                                             // 00000000A314: BF82DF70 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5d8>
	s_nop 15                                                   // 00000000A318: BF80000F
	s_nop 3                                                    // 00000000A31C: BF800003
	v_rcp_f32_e32 v64, v250                                    // 00000000A320: 7E8045FA
	v_log_f32_e32 v65, v250                                    // 00000000A324: 7E8243FA
	s_nop 1                                                    // 00000000A328: BF800001
	v_mul_f32_e32 v64, v241, v64                               // 00000000A32C: 0A8081F1
	v_mul_f32_e32 v48, v48, v64                                // 00000000A330: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 00000000A334: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 00000000A338: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 00000000A33C: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 00000000A340: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 00000000A344: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 00000000A348: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 00000000A34C: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 00000000A350: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 00000000A354: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 00000000A358: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 00000000A35C: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 00000000A360: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 00000000A364: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 00000000A368: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 00000000A36C: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 00000000A370: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 00000000A374: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 00000000A378: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 00000000A37C: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 00000000A380: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 00000000A384: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 00000000A388: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 00000000A38C: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 00000000A390: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 00000000A394: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 00000000A398: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 00000000A39C: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 00000000A3A0: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 00000000A3A4: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 00000000A3A8: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 00000000A3AC: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 00000000A3B0: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 00000000A3B4: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 00000000A3B8: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 00000000A3BC: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 00000000A3C0: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 00000000A3C4: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 00000000A3C8: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 00000000A3CC: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 00000000A3D0: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 00000000A3D4: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 00000000A3D8: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 00000000A3DC: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 00000000A3E0: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 00000000A3E4: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 00000000A3E8: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 00000000A3EC: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 00000000A3F0: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 00000000A3F4: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 00000000A3F8: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 00000000A3FC: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 00000000A400: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 00000000A404: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 00000000A408: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 00000000A40C: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 00000000A410: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 00000000A414: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 00000000A418: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 00000000A41C: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 00000000A420: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 00000000A424: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000A428: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000A42C: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000A430: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000A438: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000A440: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000A448: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000A450: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000A458: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000A460: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000A468: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000A470: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000A478: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000A480: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000A488: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000A490: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000A498: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000A4A0: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000A4A8: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000A4B0: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000A4B8: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000A4C0: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000A4C8: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000A4D0: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000A4D8: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000A4E0: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000A4E8: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000A4F0: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000A4F8: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000A500: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000A508: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000A510: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000A518: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000A520: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000A528: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000A530: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000A534: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000A538: 7E000304
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000A53C: 7E10B509
	v_mov_b32_e32 v1, v2                                       // 00000000A540: 7E020302
	v_mov_b32_e32 v2, v5                                       // 00000000A544: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000A548: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000A54C: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000A550: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000A554: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000A558: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000A55C: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000A560: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000A564: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000A568: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000A56C: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000A570: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000A574: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000A578: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000A57C: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000A580: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000A584: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000A588: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000A58C: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000A590: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000A594: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000A598: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000A59C: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000A5A0: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000A5A4: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000A5A8: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000A5AC: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000A5B0: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000A5B4: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000A5B8: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000A5BC: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000A5C0: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000A5C4: 7E380320
	v_add_f32_e32 v32, v252, v65                               // 00000000A5C8: 024083FC
	v_mov_b32_e32 v29, v30                                     // 00000000A5CC: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000A5D0: 7E3C0321
	v_add_f32_e32 v32, -4.0, v32                               // 00000000A5D4: 024040F7
	v_add_f32_e32 v32, -2.0, v32                               // 00000000A5D8: 024040F5
	v_mul_f32_e32 v32, 0x3f317218, v32                         // 00000000A5DC: 0A4040FF 3F317218
	ds_write_b128 v228, v[0:3]                                 // 00000000A5E4: D9BE0000 000000E4
	ds_write_b128 v230, v[4:7]                                 // 00000000A5EC: D9BE0000 000004E6
	ds_write_b128 v229, v[8:11]                                // 00000000A5F4: D9BE0000 000008E5
	scratch_load_dword v0, off, off offset:56                  // 00000000A5FC: DC504038 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A604: BF8C0F70
	ds_write_b128 v0, v[12:15]                                 // 00000000A608: D9BE0000 00000C00
	scratch_load_dword v0, off, off offset:52                  // 00000000A610: DC504034 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A618: BF8C0F70
	ds_write_b128 v0, v[16:19]                                 // 00000000A61C: D9BE0000 00001000
	scratch_load_dword v0, off, off offset:48                  // 00000000A624: DC504030 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A62C: BF8C0F70
	ds_write_b128 v0, v[20:23]                                 // 00000000A630: D9BE0000 00001400
	scratch_load_dword v0, off, off offset:44                  // 00000000A638: DC50402C 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A640: BF8C0F70
	ds_write_b128 v0, v[24:27]                                 // 00000000A644: D9BE0000 00001800
	scratch_load_dword v0, off, off offset:40                  // 00000000A64C: DC504028 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A654: BF8C0F70
	ds_write_b128 v0, v[28:31]                                 // 00000000A658: D9BE0000 00001C00
	ds_read_b128 v[8:11], v219                                 // 00000000A660: D9FE0000 080000DB
	ds_read_b128 v[12:15], v218 offset:1024                    // 00000000A668: D9FE0400 0C0000DA
	ds_read_b128 v[16:19], v237 offset:2048                    // 00000000A670: D9FE0800 100000ED
	ds_read_b128 v[20:23], v254 offset:3072                    // 00000000A678: D9FE0C00 140000FE
	ds_read_b128 v[24:27], v219 offset:4096                    // 00000000A680: D9FE1000 180000DB
	ds_read_b128 v[28:31], v218 offset:5120                    // 00000000A688: D9FE1400 1C0000DA
	ds_read_b128 v[34:37], v237 offset:6144                    // 00000000A690: D9FE1800 220000ED
	ds_read_b128 v[38:41], v254 offset:7168                    // 00000000A698: D9FE1C00 260000FE
	v_add_u32_e32 v0, s3, v217                                 // 00000000A6A0: 6801B203
	v_mul_lo_u32 v0, v0, s9                                    // 00000000A6A4: D2850000 00001300
	scratch_load_dword v1, off, off offset:32                  // 00000000A6AC: DC504020 017F0000
	s_waitcnt vmcnt(0)                                         // 00000000A6B4: BF8C0F70
	v_add_u32_e32 v0, v0, v1                                   // 00000000A6B8: 68000300
	v_add_u32_e32 v1, s15, v0                                  // 00000000A6BC: 6802000F
	v_add_u32_e32 v2, s15, v1                                  // 00000000A6C0: 6804020F
	v_add_u32_e32 v3, s15, v2                                  // 00000000A6C4: 6806040F
	v_add_u32_e32 v4, s15, v3                                  // 00000000A6C8: 6808060F
	v_add_u32_e32 v5, s15, v4                                  // 00000000A6CC: 680A080F
	v_add_u32_e32 v6, s15, v5                                  // 00000000A6D0: 680C0A0F
	v_add_u32_e32 v7, s15, v6                                  // 00000000A6D4: 680E0C0F
	s_waitcnt lgkmcnt(7)                                       // 00000000A6D8: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[0:1]                   // 00000000A6DC: DC7C8000 00000800
	s_waitcnt lgkmcnt(6)                                       // 00000000A6E4: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[0:1]                  // 00000000A6E8: DC7C8000 00000C01
	s_waitcnt lgkmcnt(5)                                       // 00000000A6F0: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[0:1]                  // 00000000A6F4: DC7C8000 00001002
	s_waitcnt lgkmcnt(4)                                       // 00000000A6FC: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[0:1]                  // 00000000A700: DC7C8000 00001403
	s_waitcnt lgkmcnt(3)                                       // 00000000A708: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[0:1]                  // 00000000A70C: DC7C8000 00001804
	s_waitcnt lgkmcnt(2)                                       // 00000000A714: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[0:1]                  // 00000000A718: DC7C8000 00001C05
	s_waitcnt lgkmcnt(1)                                       // 00000000A720: BF8CC17F
	global_store_dwordx4 v6, v[34:37], s[0:1]                  // 00000000A724: DC7C8000 00002206
	s_waitcnt lgkmcnt(0)                                       // 00000000A72C: BF8CC07F
	global_store_dwordx4 v7, v[38:41], s[0:1]                  // 00000000A730: DC7C8000 00002607
	v_add_u32_e32 v0, s3, v216                                 // 00000000A738: 6801B003
	v_lshlrev_b32_e32 v0, 2, v0                                // 00000000A73C: 24000082
	s_cmp_eq_u64 s[36:37], 0                                   // 00000000A740: BF128024
	s_cbranch_scc1 2                                           // 00000000A744: BF850002 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8c50>
	global_store_dword v0, v32, s[36:37]                       // 00000000A748: DC708000 00242000
	s_and_b64 s[0:1], s[10:11], exec                           // 00000000A750: 86807E0A
	s_cbranch_scc0 1                                           // 00000000A754: BF840001 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8c5c>
	s_barrier                                                  // 00000000A758: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000A75C: BF8C0F70
	s_endpgm                                                   // 00000000A760: BF810000
		...

000000000000a800 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE>:
	s_load_dwordx16 s[36:51], s[0:1], 0x0                      // 00000000A800: C0120900 00000000
	s_load_dwordx16 s[4:19], s[0:1], 0x40                      // 00000000A808: C0120100 00000040
	s_load_dwordx4 s[20:23], s[0:1], 0x80                      // 00000000A810: C00A0500 00000080
	s_load_dwordx2 s[24:25], s[0:1], 0x90                      // 00000000A818: C0060600 00000090
	v_and_b32_e32 v2, 63, v0                                   // 00000000A820: 260400BF
	v_bfe_u32 v1, v0, 5, 1                                     // 00000000A824: D1C80001 02050B00
	v_lshlrev_b32_e32 v3, 8, v0                                // 00000000A82C: 24060088
	s_movk_i32 s0, 0xe0                                        // 00000000A830: B00000E0
	v_and_b32_e32 v3, 0x1f00, v3                               // 00000000A834: 260606FF 00001F00
	v_add_lshl_u32 v4, v1, v2, 5                               // 00000000A83C: D1FE0004 02160501
	v_and_or_b32 v161, v4, s0, v3                              // 00000000A844: D20100A1 040C0104
	v_add_u32_e32 v5, 64, v4                                   // 00000000A84C: 680A08C0
	v_add_u32_e32 v4, 0x80, v4                                 // 00000000A850: 680808FF 00000080
	v_readfirstlane_b32 s3, v0                                 // 00000000A858: 7E060500
	v_and_or_b32 v162, v5, s0, v3                              // 00000000A85C: D20100A2 040C0105
	v_and_or_b32 v163, v4, s0, v3                              // 00000000A864: D20100A3 040C0104
	s_waitcnt lgkmcnt(0)                                       // 00000000A86C: BF8CC07F
	s_cmp_eq_u64 s[20:21], 0                                   // 00000000A870: BF128014
	s_cbranch_scc1 14                                          // 00000000A874: BF85000E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb0>
	s_load_dword s0, s[20:21], 0x0                             // 00000000A878: C002000A 00000000
	s_cmp_eq_u64 s[22:23], 0                                   // 00000000A880: BF128016
	s_cbranch_scc1 13                                          // 00000000A884: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xbc>
	s_load_dword s1, s[22:23], 0x0                             // 00000000A888: C002004B 00000000
	s_waitcnt lgkmcnt(0)                                       // 00000000A890: BF8CC07F
	v_mov_b32_e32 v3, s1                                       // 00000000A894: 7E060201
	v_mul_f32_e32 v3, s0, v3                                   // 00000000A898: 0A060600
	s_cmp_eq_u64 s[24:25], 0                                   // 00000000A89C: BF128018
	s_cbranch_scc1 10                                          // 00000000A8A0: BF85000A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xcc>
	s_load_dword s15, s[24:25], 0x0                            // 00000000A8A4: C00203CC 00000000
	s_branch 8                                                 // 00000000A8AC: BF820008 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd0>
	s_mov_b32 s0, 1.0                                          // 00000000A8B0: BE8000F2
	s_cmp_eq_u64 s[22:23], 0                                   // 00000000A8B4: BF128016
	s_cbranch_scc0 65523                                       // 00000000A8B8: BF84FFF3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x88>
	s_waitcnt lgkmcnt(0)                                       // 00000000A8BC: BF8CC07F
	v_mov_b32_e32 v3, s0                                       // 00000000A8C0: 7E060200
	s_cmp_eq_u64 s[24:25], 0                                   // 00000000A8C4: BF128018
	s_cbranch_scc0 65526                                       // 00000000A8C8: BF84FFF6 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa4>
	s_mov_b32 s15, 1.0                                         // 00000000A8CC: BE8F00F2
	v_and_b32_e32 v5, 1, v0                                    // 00000000A8D0: 260A0081
	v_bfe_u32 v4, v0, 1, 3                                     // 00000000A8D4: D1C80004 020D0300
	v_lshlrev_b32_e32 v6, 4, v5                                // 00000000A8DC: 240C0A84
	v_lshrrev_b32_e32 v7, 4, v0                                // 00000000A8E0: 200E0084
	v_sub_u32_e32 v8, v4, v7                                   // 00000000A8E4: 6A100F04
	v_and_b32_e32 v8, 7, v8                                    // 00000000A8E8: 26101087
	v_cmp_gt_u32_e32 vcc, 6, v8                                // 00000000A8EC: 7D981086
	s_nop 1                                                    // 00000000A8F0: BF800001
	v_cndmask_b32_e32 v8, 0, v8, vcc                           // 00000000A8F4: 00101080
	v_lshlrev_b32_e32 v8, 5, v8                                // 00000000A8F8: 24101085
	v_or_b32_e32 v8, v8, v6                                    // 00000000A8FC: 28100D08
	v_mul_lo_u32 v7, s6, v7                                    // 00000000A900: D2850007 00020E06
	v_add_u32_e32 v164, v7, v8                                 // 00000000A908: 69481107
	v_or_b32_e32 v7, 0x200, v0                                 // 00000000A90C: 280E00FF 00000200
	v_lshrrev_b32_e32 v7, 4, v7                                // 00000000A914: 200E0E84
	v_sub_u32_e32 v4, v4, v7                                   // 00000000A918: 6A080F04
	v_and_b32_e32 v4, 7, v4                                    // 00000000A91C: 26080887
	v_cmp_gt_u32_e32 vcc, 6, v4                                // 00000000A920: 7D980886
	s_nop 1                                                    // 00000000A924: BF800001
	v_cndmask_b32_e32 v4, 0, v4, vcc                           // 00000000A928: 00080880
	v_lshlrev_b32_e32 v4, 5, v4                                // 00000000A92C: 24080885
	v_or_b32_e32 v4, v4, v6                                    // 00000000A930: 28080D04
	v_mul_lo_u32 v5, s6, v7                                    // 00000000A934: D2850005 00020E06
	v_add_u32_e32 v165, v5, v4                                 // 00000000A93C: 694A0905
	v_bfe_u32 v4, v0, 7, 1                                     // 00000000A940: D1C80004 02050F00
	v_lshrrev_b32_e32 v5, 8, v0                                // 00000000A948: 200A0088
	v_lshlrev_b32_e32 v10, 5, v4                               // 00000000A94C: 24140885
	v_bfe_u32 v6, v0, 6, 1                                     // 00000000A950: D1C80006 02050D00
	v_lshl_or_b32 v12, v5, 2, v10                              // 00000000A958: D200000C 04290505
	v_bfe_u32 v7, v0, 2, 1                                     // 00000000A960: D1C80007 02050500
	v_lshl_or_b32 v13, v6, 4, v12                              // 00000000A968: D200000D 04310906
	v_and_b32_e32 v8, 3, v0                                    // 00000000A970: 26100083
	v_lshl_or_b32 v14, v7, 3, v13                              // 00000000A974: D200000E 04350707
	v_bfe_u32 v9, v0, 3, 3                                     // 00000000A97C: D1C80009 020D0700
	v_or_b32_e32 v15, v14, v8                                  // 00000000A984: 281E110E
	v_lshlrev_b32_e32 v11, 4, v9                               // 00000000A988: 24161284
	v_mul_lo_u32 v16, s7, v15                                  // 00000000A98C: D2850010 00021E07
	v_add_u32_e32 v166, v16, v11                               // 00000000A994: 694C1710
	s_cmp_ge_u32 s2, s49                                       // 00000000A998: BF093102
	s_cbranch_scc1 5424                                        // 00000000A99C: BF851530 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5660>
	s_lshr_b32 s22, s3, 8                                      // 00000000A9A0: 8F168803
	s_cmp_eq_u32 s4, 0                                         // 00000000A9A4: BF068004
	s_cselect_b64 s[0:1], -1, 0                                // 00000000A9A8: 858080C1
	s_and_b64 s[16:17], s[0:1], exec                           // 00000000A9AC: 86907E00
	s_cselect_b32 s23, 0, s22                                  // 00000000A9B0: 85171680
	s_lshl_b32 s4, s2, 5                                       // 00000000A9B4: 8E048502
	s_load_dwordx8 s[52:59], s[46:47], s4 offset:0x0           // 00000000A9B8: C00E4D17 08000000
	s_cmp_eq_u64 s[44:45], 0                                   // 00000000A9C0: BF12802C
	s_cselect_b64 s[34:35], -1, 0                              // 00000000A9C4: 85A280C1
	s_mov_b64 s[18:19], 0                                      // 00000000A9C8: BE920180
	s_mul_i32 s33, s11, s23                                    // 00000000A9CC: 9221170B
	s_and_b64 vcc, exec, s[34:35]                              // 00000000A9D0: 86EA227E
	s_cbranch_vccnz 5                                          // 00000000A9D4: BF870005 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1ec>
	s_waitcnt lgkmcnt(0)                                       // 00000000A9D8: BF8CC07F
	s_add_u32 s4, s33, s53                                     // 00000000A9DC: 80043521
	s_lshl_b32 s4, s4, 2                                       // 00000000A9E0: 8E048204
	s_add_u32 s18, s44, s4                                     // 00000000A9E4: 8012042C
	s_addc_u32 s19, s45, 0                                     // 00000000A9E8: 8213802D
	s_mov_b32 s17, 0                                           // 00000000A9EC: BE910080
	s_waitcnt lgkmcnt(0)                                       // 00000000A9F0: BF8CC07F
	s_mov_b32 s16, s58                                         // 00000000A9F4: BE90003A
	s_lshl_b64 s[16:17], s[16:17], 7                           // 00000000A9F8: 8E908710
	s_mul_i32 s4, s9, s23                                      // 00000000A9FC: 92041709
	s_add_u32 s9, s36, s54                                     // 00000000AA00: 80093624
	s_addc_u32 s11, s37, s55                                   // 00000000AA04: 820B3725
	s_add_u32 s20, s9, s4                                      // 00000000AA08: 80140409
	s_addc_u32 s21, s11, 0                                     // 00000000AA0C: 8215800B
	s_add_u32 s60, s38, s56                                    // 00000000AA10: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000AA14: 823D3927
	s_add_u32 s64, s40, s16                                    // 00000000AA18: 80401028
	s_addc_u32 s65, s41, s17                                   // 00000000AA1C: 82411129
	s_lshr_b32 s11, s3, 6                                      // 00000000AA20: 8F0B8603
	s_lshl_b32 s9, s6, 6                                       // 00000000AA24: 8E098606
	s_bfe_u32 s17, s3, 0x20006                                 // 00000000AA28: 9291FF03 00020006
	s_lshl_b32 s72, s11, 10                                    // 00000000AA30: 8E488A0B
	s_and_b64 s[0:1], s[0:1], exec                             // 00000000AA34: 86807E00
	s_cselect_b32 s73, s11, s17                                // 00000000AA38: 8549110B
	s_not_b32 s0, s52                                          // 00000000AA3C: BE800434
	s_add_u32 s0, s50, s0                                      // 00000000AA40: 80000032
	s_mul_i32 s1, s51, s0                                      // 00000000AA44: 92010033
	s_lshl_b32 s0, s0, 5                                       // 00000000AA48: 8E008500
	s_add_u32 s0, s0, 32                                       // 00000000AA4C: 8000A000
	s_mul_i32 s0, s0, s51                                      // 00000000AA50: 92003300
	s_add_u32 s1, s1, s73                                      // 00000000AA54: 80014901
	s_add_u32 s0, s0, 32                                       // 00000000AA58: 8000A000
	s_mul_i32 s62, s6, s12                                     // 00000000AA5C: 923E0C06
	s_mul_i32 s66, s7, s12                                     // 00000000AA60: 92420C07
	v_and_b32_e32 v146, 31, v0                                 // 00000000AA64: 2724009F
	s_lshr_b32 s12, s12, 6                                     // 00000000AA68: 8F0C860C
	s_lshl_b32 s3, s1, 5                                       // 00000000AA6C: 8E038501
	s_lshr_b32 s0, s0, 6                                       // 00000000AA70: 8F008600
	s_mov_b32 s63, 0x110000                                    // 00000000AA74: BEBF00FF 00110000
	v_or_b32_e32 v4, s3, v146                                  // 00000000AA7C: 28092403
	s_min_u32 s98, s12, s0                                     // 00000000AA80: 83E2000C
	s_mov_b32 s67, s63                                         // 00000000AA84: BEC3003F
	v_mul_lo_u32 v4, s5, v4                                    // 00000000AA88: D2850004 00020805
	v_lshlrev_b32_e32 v167, 5, v1                              // 00000000AA90: 254E0285
	v_add_u32_e32 v4, v167, v4                                 // 00000000AA94: 680809A7
	global_load_dwordx4 v[182:185], v4, s[20:21]               // 00000000AA98: DC5C8000 B6140004
	global_load_dwordx4 v[186:189], v4, s[20:21] offset:16     // 00000000AAA0: DC5C8010 BA140004
	global_load_dwordx4 v[190:193], v4, s[20:21] offset:64     // 00000000AAA8: DC5C8040 BE140004
	global_load_dwordx4 v[194:197], v4, s[20:21] offset:80     // 00000000AAB0: DC5C8050 C2140004
	global_load_dwordx4 v[198:201], v4, s[20:21] offset:128    // 00000000AAB8: DC5C8080 C6140004
	global_load_dwordx4 v[202:205], v4, s[20:21] offset:144    // 00000000AAC0: DC5C8090 CA140004
	s_mov_b32 m0, s72                                          // 00000000AAC8: BEFC0048
	s_or_b32 s0, s72, 0x10000                                  // 00000000AACC: 8700FF48 00010000
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000AAD4: E05D1000 800F00A4
	s_or_b32 m0, s72, 0x2000                                   // 00000000AADC: 877CFF48 00002000
	s_cmp_lt_u32 s98, 2                                        // 00000000AAE4: BF0A8262
	buffer_load_dwordx4 v165, s[60:63], 0 offen lds            // 00000000AAE8: E05D1000 800F00A5
	s_mov_b32 m0, s0                                           // 00000000AAF0: BEFC0000
	s_nop 0                                                    // 00000000AAF4: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000AAF8: E05D1000 801000A6
	s_cbranch_scc1 10                                          // 00000000AB00: BF85000A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x32c>
	s_add_u32 m0, s0, 0xffff4000                               // 00000000AB04: 807CFF00 FFFF4000
	s_nop 0                                                    // 00000000AB0C: BF800000
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000AB10: E05D1000 090F00A4
	s_add_u32 m0, s0, 0xffff6000                               // 00000000AB18: 807CFF00 FFFF6000
	s_nop 0                                                    // 00000000AB20: BF800000
	buffer_load_dwordx4 v165, s[60:63], s9 offen lds           // 00000000AB24: E05D1000 090F00A5
	v_lshrrev_b32_e32 v4, 2, v0                                // 00000000AB2C: 20080082
	v_lshrrev_b32_e32 v5, 3, v0                                // 00000000AB30: 200A0083
	s_waitcnt vmcnt(0)                                         // 00000000AB34: BF8C0F70
	s_barrier                                                  // 00000000AB38: BF8A0000
	s_cmp_eq_u32 s22, 0                                        // 00000000AB3C: BF068016
	s_cbranch_scc1 1                                           // 00000000AB40: BF850001 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x348>
	s_barrier                                                  // 00000000AB44: BF8A0000
	s_mov_b32 s16, 0                                           // 00000000AB48: BE900080
	s_mov_b32 s0, s59                                          // 00000000AB4C: BE80003B
	s_mov_b32 s1, s16                                          // 00000000AB50: BE810010
	s_lshr_b32 s77, s3, 6                                      // 00000000AB54: 8F4D8603
	s_lshl_b64 s[0:1], s[0:1], 8                               // 00000000AB58: 8E808800
	s_add_u32 s0, s42, s0                                      // 00000000AB5C: 8000002A
	s_mul_i32 s20, s10, s23                                    // 00000000AB60: 9214170A
	s_addc_u32 s1, s43, s1                                     // 00000000AB64: 8201012B
	s_add_u32 s10, s0, s20                                     // 00000000AB68: 800A1400
	v_mul_f32_e32 v142, s48, v3                                // 00000000AB6C: 0B1C0630
	v_mov_b32_e32 v3, s14                                      // 00000000AB70: 7E06020E
	v_lshrrev_b32_e32 v147, 4, v2                              // 00000000AB74: 21260484
	v_and_b32_e32 v6, 32, v0                                   // 00000000AB78: 260C00A0
	s_addc_u32 s11, s1, 0                                      // 00000000AB7C: 820B8001
	s_lshl_b32 s99, s7, 6                                      // 00000000AB80: 8E638607
	s_lshl_b32 s85, s6, 8                                      // 00000000AB84: 8E558806
	s_lshl_b32 s86, s7, 7                                      // 00000000AB88: 8E568707
	v_and_b32_e32 v5, 4, v5                                    // 00000000AB8C: 260A0A84
	v_lshlrev_b32_e32 v7, 3, v0                                // 00000000AB90: 240E0083
	v_and_b32_e32 v0, 15, v0                                   // 00000000AB94: 2600008F
	v_mul_f32_e32 v168, s15, v3                                // 00000000AB98: 0B50060F
	v_xor_b32_e32 v3, v147, v4                                 // 00000000AB9C: 2A060993
	v_and_or_b32 v4, v147, 1, v6                               // 00000000ABA0: D2010004 04190393
	s_cmp_eq_u32 s22, 0                                        // 00000000ABA8: BF068016
	v_sub_u32_e32 v171, v146, v5                               // 00000000ABAC: 6B560B92
	v_xor_b32_e32 v5, v1, v0                                   // 00000000ABB0: 2A0A0101
	v_xor_b32_e32 v6, v147, v0                                 // 00000000ABB4: 2A0C0193
	v_lshlrev_b32_e32 v148, 4, v0                              // 00000000ABB8: 25280084
	v_and_b32_e32 v0, 1, v3                                    // 00000000ABBC: 26000681
	v_lshlrev_b32_e32 v173, 7, v4                              // 00000000ABC0: 255A0887
	s_cselect_b64 s[0:1], -1, 0                                // 00000000ABC4: 858080C1
	s_lshl_b32 s15, s17, 13                                    // 00000000ABC8: 8E0F8D11
	s_lshl_b32 s17, s6, 7                                      // 00000000ABCC: 8E118706
	v_mov_b32_e32 v2, 0x38383838                               // 00000000ABD0: 7E0402FF 38383838
	v_and_b32_e32 v172, 0x78, v7                               // 00000000ABD8: 27580EFF 00000078
	v_cmp_eq_u32_e32 vcc, 0, v0                                // 00000000ABE0: 7D940080
	v_or_b32_e32 v0, 0x16000, v173                             // 00000000ABE4: 28015AFF 00016000
	s_add_u32 s36, s36, s4                                     // 00000000ABEC: 80240424
	s_mov_b32 s14, 0x18000                                     // 00000000ABF0: BE8E00FF 00018000
	v_lshlrev_b32_e32 v3, 4, v5                                // 00000000ABF8: 24060A84
	v_lshlrev_b32_e32 v4, 4, v6                                // 00000000ABFC: 24080C84
	v_cndmask_b32_e32 v126, 0, v2, vcc                         // 00000000AC00: 00FC0480
	v_add_u32_e32 v177, v0, v172                               // 00000000AC04: 69635900
	v_lshl_or_b32 v0, v146, 8, s15                             // 00000000AC08: D2000000 003D1192
	v_lshl_or_b32 v2, v147, 8, s15                             // 00000000AC10: D2000002 003D1193
	s_addc_u32 s37, s37, 0                                     // 00000000AC18: 82258025
	v_or_b32_e32 v5, 0x10000, v173                             // 00000000AC1C: 280B5AFF 00010000
	v_or_b32_e32 v6, 0x12000, v173                             // 00000000AC24: 280D5AFF 00012000
	v_or_b32_e32 v7, 0x14000, v173                             // 00000000AC2C: 280F5AFF 00014000
	v_or3_b32 v158, v0, v3, s14                                // 00000000AC34: D202009E 003A0700
	v_or3_b32 v149, v2, v4, s14                                // 00000000AC3C: D2020095 003A0902
	s_add_u32 s42, s42, s20                                    // 00000000AC44: 802A142A
	s_mov_b32 s81, 0x16000                                     // 00000000AC48: BED100FF 00016000
	s_mov_b32 s82, 0x10000                                     // 00000000AC50: BED200FF 00010000
	s_mov_b32 s83, 0x12000                                     // 00000000AC58: BED300FF 00012000
	s_mov_b32 s88, 0x14000                                     // 00000000AC60: BED800FF 00014000
	s_mov_b32 s89, 0xc2fe0000                                  // 00000000AC68: BED900FF C2FE0000
	v_mov_b32_e32 v169, 0xff800000                             // 00000000AC70: 7F5202FF FF800000
	s_movk_i32 s90, 0x2000                                     // 00000000AC78: B05A2000
	v_mov_b32_e32 v170, 0x7f                                   // 00000000AC7C: 7F5402FF 0000007F
	s_mov_b32 s91, 0x3e000000                                  // 00000000AC84: BEDB00FF 3E000000
	s_movk_i32 s92, 0x4000                                     // 00000000AC8C: B05C4000
	s_movk_i32 s93, 0x6000                                     // 00000000AC90: B05D6000
	s_mov_b32 s94, 0x8000                                      // 00000000AC94: BEDE00FF 00008000
	s_mov_b32 s95, 0xa000                                      // 00000000AC9C: BEDF00FF 0000A000
	s_mov_b32 s96, 0xc000                                      // 00000000ACA4: BEE000FF 0000C000
	s_mov_b32 s97, 0xe000                                      // 00000000ACAC: BEE100FF 0000E000
	v_mov_b32_e32 v144, v142                                   // 00000000ACB4: 7F20038E
	v_mov_b32_e32 v145, v142                                   // 00000000ACB8: 7F22038E
	v_add_u32_e32 v174, v5, v172                               // 00000000ACBC: 695D5905
	v_add_u32_e32 v175, v6, v172                               // 00000000ACC0: 695F5906
	v_add_u32_e32 v176, v7, v172                               // 00000000ACC4: 69615907
	v_mov_b32_e32 v127, v126                                   // 00000000ACC8: 7EFE037E
	v_mov_b32_e32 v128, v126                                   // 00000000ACCC: 7F00037E
	v_mov_b32_e32 v129, v126                                   // 00000000ACD0: 7F02037E
	v_mov_b32_e32 v130, v126                                   // 00000000ACD4: 7F04037E
	v_mov_b32_e32 v131, v126                                   // 00000000ACD8: 7F06037E
	v_mov_b32_e32 v132, v126                                   // 00000000ACDC: 7F08037E
	v_mov_b32_e32 v133, v126                                   // 00000000ACE0: 7F0A037E
	v_xor_b32_e32 v160, 32, v158                               // 00000000ACE4: 2B413CA0
	v_xor_b32_e32 v159, 64, v158                               // 00000000ACE8: 2B3F3CC0
	v_xor_b32_e32 v157, 0x60, v158                             // 00000000ACEC: 2B3B3CFF 00000060
	v_xor_b32_e32 v156, 0x80, v158                             // 00000000ACF4: 2B393CFF 00000080
	v_xor_b32_e32 v155, 0xa0, v158                             // 00000000ACFC: 2B373CFF 000000A0
	v_xor_b32_e32 v154, 0xc0, v158                             // 00000000AD04: 2B353CFF 000000C0
	v_xor_b32_e32 v153, 0xe0, v158                             // 00000000AD0C: 2B333CFF 000000E0
	v_xor_b32_e32 v152, 64, v149                               // 00000000AD14: 2B312AC0
	v_xor_b32_e32 v151, 0x80, v149                             // 00000000AD18: 2B2F2AFF 00000080
	v_xor_b32_e32 v150, 0xc0, v149                             // 00000000AD20: 2B2D2AFF 000000C0
	s_addc_u32 s43, s43, 0                                     // 00000000AD28: 822B802B
	s_lshl_b32 s48, s6, 4                                      // 00000000AD2C: 8E308406
	s_lshl_b32 s74, s6, 5                                      // 00000000AD30: 8E4A8506
	s_lshl_b32 s75, s7, 2                                      // 00000000AD34: 8E4B8207
	s_lshl_b32 s4, s8, 2                                       // 00000000AD38: 8E048208
	v_writelane_b32 v230, s17, 0                               // 00000000AD3C: D28A00E6 00010011
	s_mov_b32 s80, 0                                           // 00000000AD44: BED00080
	s_mov_b32 s76, 0                                           // 00000000AD48: BECC0080
	s_mov_b32 s67, s63                                         // 00000000AD4C: BEC3003F
	s_mov_b32 s79, s63                                         // 00000000AD50: BECF003F
	s_and_b32 s17, s80, 3                                      // 00000000AD54: 86118350
	s_lshl_b32 s20, s17, 14                                    // 00000000AD58: 8E148E11
	v_or_b32_e32 v0, s20, v161                                 // 00000000AD5C: 28014214
	s_waitcnt vmcnt(8)                                         // 00000000AD60: BF8C0F78
	v_or_b32_e32 v1, s20, v162                                 // 00000000AD64: 28034414
	ds_read_b128 v[2:5], v0                                    // 00000000AD68: D9FE0000 02000000
	ds_read_b128 v[6:9], v0 offset:16                          // 00000000AD70: D9FE0010 06000000
	ds_read_b128 v[50:53], v0 offset:8192                      // 00000000AD78: D9FE2000 32000000
	ds_read_b128 v[54:57], v0 offset:8208                      // 00000000AD80: D9FE2010 36000000
	ds_read_b128 v[42:45], v1                                  // 00000000AD88: D9FE0000 2A000001
	ds_read_b128 v[46:49], v1 offset:16                        // 00000000AD90: D9FE0010 2E000001
	ds_read_b128 v[34:37], v1 offset:8192                      // 00000000AD98: D9FE2000 22000001
	ds_read_b128 v[38:41], v1 offset:8208                      // 00000000ADA0: D9FE2010 26000001
	s_mov_b64 s[14:15], s[18:19]                               // 00000000ADA8: BE8E0112
	s_cmp_eq_u32 s77, 0                                        // 00000000ADAC: BF06804D
	s_cbranch_scc1 108                                         // 00000000ADB0: BF85006C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x764>
	s_setprio 1                                                // 00000000ADB4: BF8F0001
	s_waitcnt lgkmcnt(0)                                       // 00000000ADB8: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[2:9], v[182:189], 0 // 00000000ADBC: D3AE0010 02036D02
	v_add_u32_e32 v32, s20, v163                               // 00000000ADC4: 68414614
	ds_read_b128 v[58:61], v32                                 // 00000000ADC8: D9FE0000 3A000020
	ds_read_b128 v[62:65], v32 offset:16                       // 00000000ADD0: D9FE0010 3E000020
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[182:189], 0// 00000000ADD8: D3AE0000 02036D32
	ds_read_b128 v[50:53], v32 offset:8192                     // 00000000ADE0: D9FE2000 32000020
	ds_read_b128 v[54:57], v32 offset:8208                     // 00000000ADE8: D9FE2010 36000020
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[42:49], v[190:197], v[16:31]// 00000000ADF0: D3AE0010 04437D2A
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[34:41], v[190:197], v[0:15]// 00000000ADF8: D3AE0000 04037D22
	s_waitcnt lgkmcnt(0)                                       // 00000000AE00: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[58:65], v[198:205], v[16:31]// 00000000AE04: D3AE0010 04438D3A
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[198:205], v[0:15]// 00000000AE0C: D3AE0000 04038D32
	s_nop 3                                                    // 00000000AE14: BF800003
	v_max_f32_e32 v32, v16, v17                                // 00000000AE18: 16402310
	v_max3_f32 v32, v18, v19, v32                              // 00000000AE1C: D1D30020 04822712
	v_max3_f32 v32, v20, v21, v32                              // 00000000AE24: D1D30020 04822B14
	v_max3_f32 v32, v22, v23, v32                              // 00000000AE2C: D1D30020 04822F16
	v_max3_f32 v32, v24, v25, v32                              // 00000000AE34: D1D30020 04823318
	v_max3_f32 v32, v26, v27, v32                              // 00000000AE3C: D1D30020 0482371A
	v_max3_f32 v32, v28, v29, v32                              // 00000000AE44: D1D30020 04823B1C
	v_max3_f32 v32, v30, v31, v32                              // 00000000AE4C: D1D30020 04823F1E
	s_nop 7                                                    // 00000000AE54: BF800007
	v_max_f32_e32 v33, v0, v1                                  // 00000000AE58: 16420300
	v_max3_f32 v33, v2, v3, v33                                // 00000000AE5C: D1D30021 04860702
	v_max3_f32 v33, v4, v5, v33                                // 00000000AE64: D1D30021 04860B04
	v_max3_f32 v33, v6, v7, v33                                // 00000000AE6C: D1D30021 04860F06
	v_max3_f32 v33, v8, v9, v33                                // 00000000AE74: D1D30021 04861308
	v_max3_f32 v33, v10, v11, v33                              // 00000000AE7C: D1D30021 0486170A
	v_max3_f32 v33, v12, v13, v33                              // 00000000AE84: D1D30021 04861B0C
	v_max3_f32 v33, v14, v15, v33                              // 00000000AE8C: D1D30021 04861F0E
	v_max_f32_e32 v32, v32, v33                                // 00000000AE94: 16404320
	v_mov_b32_e32 v33, v32                                     // 00000000AE98: 7E420320
	s_nop 1                                                    // 00000000AE9C: BF800001
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000AEA0: 7E40B521
	v_max_f32_e32 v32, v32, v33                                // 00000000AEA4: 16404320
	v_mul_f32_e32 v111, v142, v32                              // 00000000AEA8: 0ADE418E
	v_fma_f32 v32, v32, v142, -v111                            // 00000000AEAC: D1CB0020 85BF1D20
	v_floor_f32_e32 v32, v32                                   // 00000000AEB4: 7E403F20
	v_med3_f32 v32, v32, s89, 0                                // 00000000AEB8: D1D60020 0200B320
	v_cvt_i32_f32_e32 v33, v32                                 // 00000000AEC0: 7E421120
	v_add_u32_e32 v180, 0x7f, v33                              // 00000000AEC4: 696842FF 0000007F
	v_lshlrev_b32_e32 v33, 23, v180                            // 00000000AECC: 24436897
	v_add_f32_e32 v32, v111, v32                               // 00000000AED0: 0240416F
	v_sub_f32_e32 v32, 0x40c00000, v32                         // 00000000AED4: 044040FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000AEDC: 7F1E038E
	v_pk_fma_f32 v[80:81], v[16:17], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000AEE0: D3B00050 1C832110
	v_pk_fma_f32 v[64:65], v[0:1], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000AEE8: D3B00040 1C832100
	v_pk_fma_f32 v[94:95], v[30:31], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AEF0: D3B0005E 1C831D1E
	v_pk_fma_f32 v[92:93], v[28:29], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AEF8: D3B0005C 1C831D1C
	v_pk_fma_f32 v[90:91], v[26:27], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF00: D3B0005A 1C831D1A
	v_pk_fma_f32 v[88:89], v[24:25], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF08: D3B00058 1C831D18
	v_pk_fma_f32 v[86:87], v[22:23], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF10: D3B00056 1C831D16
	v_pk_fma_f32 v[84:85], v[20:21], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF18: D3B00054 1C831D14
	v_pk_fma_f32 v[82:83], v[18:19], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF20: D3B00052 1C831D12
	v_pk_fma_f32 v[78:79], v[14:15], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF28: D3B0004E 1C831D0E
	v_pk_fma_f32 v[76:77], v[12:13], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF30: D3B0004C 1C831D0C
	v_pk_fma_f32 v[74:75], v[10:11], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF38: D3B0004A 1C831D0A
	v_pk_fma_f32 v[72:73], v[8:9], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF40: D3B00048 1C831D08
	v_pk_fma_f32 v[70:71], v[6:7], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF48: D3B00046 1C831D06
	v_pk_fma_f32 v[68:69], v[4:5], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF50: D3B00044 1C831D04
	v_pk_fma_f32 v[66:67], v[2:3], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF58: D3B00042 1C831D02
	s_branch 286                                               // 00000000AF60: BF82011E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xbdc>
	s_setprio 1                                                // 00000000AF64: BF8F0001
	s_waitcnt lgkmcnt(0)                                       // 00000000AF68: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[2:9], v[182:189], 0 // 00000000AF6C: D3AE0010 02036D02
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[182:189], 0// 00000000AF74: D3AE0000 02036D32
	v_add_u32_e32 v32, s20, v163                               // 00000000AF7C: 68414614
	ds_read_b128 v[58:61], v32                                 // 00000000AF80: D9FE0000 3A000020
	ds_read_b128 v[62:65], v32 offset:16                       // 00000000AF88: D9FE0010 3E000020
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[42:49], v[190:197], v[16:31]// 00000000AF90: D3AE0010 04437D2A
	ds_read_b128 v[50:53], v32 offset:8192                     // 00000000AF98: D9FE2000 32000020
	ds_read_b128 v[54:57], v32 offset:8208                     // 00000000AFA0: D9FE2010 36000020
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[34:41], v[190:197], v[0:15]// 00000000AFA8: D3AE0000 04037D22
	s_waitcnt lgkmcnt(0)                                       // 00000000AFB0: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[58:65], v[198:205], v[16:31]// 00000000AFB4: D3AE0010 04438D3A
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[198:205], v[0:15]// 00000000AFBC: D3AE0000 04038D32
	s_sub_u32 s18, s3, s16                                     // 00000000AFC4: 80921003
	s_sub_i32 s18, s18, 0                                      // 00000000AFC8: 81928012
	s_cmp_ge_i32 s18, 32                                       // 00000000AFCC: BF03A012
	s_cbranch_scc1 86                                          // 00000000AFD0: BF850056 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x92c>
	s_cmp_lt_i32 s18, 0                                        // 00000000AFD4: BF048012
	s_cbranch_scc1 66                                          // 00000000AFD8: BF850042 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8e4>
	v_add_u32_e32 v32, s18, v171                               // 00000000AFDC: 68415612
	v_cmp_gt_i32_e32 vcc, 0, v32                               // 00000000AFE0: 7D884080
	s_nop 7                                                    // 00000000AFE4: BF800007
	v_cndmask_b32_e64 v16, v16, v169, vcc                      // 00000000AFE8: D1000010 01AB5310
	v_cmp_gt_i32_e32 vcc, 1, v32                               // 00000000AFF0: 7D884081
	s_nop 1                                                    // 00000000AFF4: BF800001
	v_cndmask_b32_e64 v17, v17, v169, vcc                      // 00000000AFF8: D1000011 01AB5311
	v_cmp_gt_i32_e32 vcc, 2, v32                               // 00000000B000: 7D884082
	s_nop 1                                                    // 00000000B004: BF800001
	v_cndmask_b32_e64 v18, v18, v169, vcc                      // 00000000B008: D1000012 01AB5312
	v_cmp_gt_i32_e32 vcc, 3, v32                               // 00000000B010: 7D884083
	s_nop 1                                                    // 00000000B014: BF800001
	v_cndmask_b32_e64 v19, v19, v169, vcc                      // 00000000B018: D1000013 01AB5313
	v_cmp_gt_i32_e32 vcc, 8, v32                               // 00000000B020: 7D884088
	s_nop 1                                                    // 00000000B024: BF800001
	v_cndmask_b32_e64 v20, v20, v169, vcc                      // 00000000B028: D1000014 01AB5314
	v_cmp_gt_i32_e32 vcc, 9, v32                               // 00000000B030: 7D884089
	s_nop 1                                                    // 00000000B034: BF800001
	v_cndmask_b32_e64 v21, v21, v169, vcc                      // 00000000B038: D1000015 01AB5315
	v_cmp_gt_i32_e32 vcc, 10, v32                              // 00000000B040: 7D88408A
	s_nop 1                                                    // 00000000B044: BF800001
	v_cndmask_b32_e64 v22, v22, v169, vcc                      // 00000000B048: D1000016 01AB5316
	v_cmp_gt_i32_e32 vcc, 11, v32                              // 00000000B050: 7D88408B
	s_nop 1                                                    // 00000000B054: BF800001
	v_cndmask_b32_e64 v23, v23, v169, vcc                      // 00000000B058: D1000017 01AB5317
	v_cmp_gt_i32_e32 vcc, 16, v32                              // 00000000B060: 7D884090
	s_nop 1                                                    // 00000000B064: BF800001
	v_cndmask_b32_e64 v24, v24, v169, vcc                      // 00000000B068: D1000018 01AB5318
	v_cmp_gt_i32_e32 vcc, 17, v32                              // 00000000B070: 7D884091
	s_nop 1                                                    // 00000000B074: BF800001
	v_cndmask_b32_e64 v25, v25, v169, vcc                      // 00000000B078: D1000019 01AB5319
	v_cmp_gt_i32_e32 vcc, 18, v32                              // 00000000B080: 7D884092
	s_nop 1                                                    // 00000000B084: BF800001
	v_cndmask_b32_e64 v26, v26, v169, vcc                      // 00000000B088: D100001A 01AB531A
	v_cmp_gt_i32_e32 vcc, 19, v32                              // 00000000B090: 7D884093
	s_nop 1                                                    // 00000000B094: BF800001
	v_cndmask_b32_e64 v27, v27, v169, vcc                      // 00000000B098: D100001B 01AB531B
	v_cmp_gt_i32_e32 vcc, 24, v32                              // 00000000B0A0: 7D884098
	s_nop 1                                                    // 00000000B0A4: BF800001
	v_cndmask_b32_e64 v28, v28, v169, vcc                      // 00000000B0A8: D100001C 01AB531C
	v_cmp_gt_i32_e32 vcc, 25, v32                              // 00000000B0B0: 7D884099
	s_nop 1                                                    // 00000000B0B4: BF800001
	v_cndmask_b32_e64 v29, v29, v169, vcc                      // 00000000B0B8: D100001D 01AB531D
	v_cmp_gt_i32_e32 vcc, 26, v32                              // 00000000B0C0: 7D88409A
	s_nop 1                                                    // 00000000B0C4: BF800001
	v_cndmask_b32_e64 v30, v30, v169, vcc                      // 00000000B0C8: D100001E 01AB531E
	v_cmp_gt_i32_e32 vcc, 27, v32                              // 00000000B0D0: 7D88409B
	s_nop 1                                                    // 00000000B0D4: BF800001
	v_cndmask_b32_e64 v31, v31, v169, vcc                      // 00000000B0D8: D100001F 01AB531F
	s_branch 18                                                // 00000000B0E0: BF820012 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x92c>
	s_nop 9                                                    // 00000000B0E4: BF800009
	v_mov_b32_e32 v16, 0xff800000                              // 00000000B0E8: 7E2002FF FF800000
	v_mov_b32_e32 v17, v16                                     // 00000000B0F0: 7E220310
	v_mov_b32_e32 v18, v16                                     // 00000000B0F4: 7E240310
	v_mov_b32_e32 v19, v16                                     // 00000000B0F8: 7E260310
	v_mov_b32_e32 v20, v16                                     // 00000000B0FC: 7E280310
	v_mov_b32_e32 v21, v16                                     // 00000000B100: 7E2A0310
	v_mov_b32_e32 v22, v16                                     // 00000000B104: 7E2C0310
	v_mov_b32_e32 v23, v16                                     // 00000000B108: 7E2E0310
	v_mov_b32_e32 v24, v16                                     // 00000000B10C: 7E300310
	v_mov_b32_e32 v25, v16                                     // 00000000B110: 7E320310
	v_mov_b32_e32 v26, v16                                     // 00000000B114: 7E340310
	v_mov_b32_e32 v27, v16                                     // 00000000B118: 7E360310
	v_mov_b32_e32 v28, v16                                     // 00000000B11C: 7E380310
	v_mov_b32_e32 v29, v16                                     // 00000000B120: 7E3A0310
	v_mov_b32_e32 v30, v16                                     // 00000000B124: 7E3C0310
	v_mov_b32_e32 v31, v16                                     // 00000000B128: 7E3E0310
	s_sub_u32 s18, s3, s16                                     // 00000000B12C: 80921003
	s_sub_i32 s18, s18, 32                                     // 00000000B130: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 00000000B134: BF03A012
	s_cbranch_scc1 86                                          // 00000000B138: BF850056 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa94>
	s_cmp_lt_i32 s18, 0                                        // 00000000B13C: BF048012
	s_cbranch_scc1 66                                          // 00000000B140: BF850042 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa4c>
	v_add_u32_e32 v32, s18, v171                               // 00000000B144: 68415612
	v_cmp_gt_i32_e32 vcc, 0, v32                               // 00000000B148: 7D884080
	s_nop 11                                                   // 00000000B14C: BF80000B
	v_cndmask_b32_e64 v0, v0, v169, vcc                        // 00000000B150: D1000000 01AB5300
	v_cmp_gt_i32_e32 vcc, 1, v32                               // 00000000B158: 7D884081
	s_nop 1                                                    // 00000000B15C: BF800001
	v_cndmask_b32_e64 v1, v1, v169, vcc                        // 00000000B160: D1000001 01AB5301
	v_cmp_gt_i32_e32 vcc, 2, v32                               // 00000000B168: 7D884082
	s_nop 1                                                    // 00000000B16C: BF800001
	v_cndmask_b32_e64 v2, v2, v169, vcc                        // 00000000B170: D1000002 01AB5302
	v_cmp_gt_i32_e32 vcc, 3, v32                               // 00000000B178: 7D884083
	s_nop 1                                                    // 00000000B17C: BF800001
	v_cndmask_b32_e64 v3, v3, v169, vcc                        // 00000000B180: D1000003 01AB5303
	v_cmp_gt_i32_e32 vcc, 8, v32                               // 00000000B188: 7D884088
	s_nop 1                                                    // 00000000B18C: BF800001
	v_cndmask_b32_e64 v4, v4, v169, vcc                        // 00000000B190: D1000004 01AB5304
	v_cmp_gt_i32_e32 vcc, 9, v32                               // 00000000B198: 7D884089
	s_nop 1                                                    // 00000000B19C: BF800001
	v_cndmask_b32_e64 v5, v5, v169, vcc                        // 00000000B1A0: D1000005 01AB5305
	v_cmp_gt_i32_e32 vcc, 10, v32                              // 00000000B1A8: 7D88408A
	s_nop 1                                                    // 00000000B1AC: BF800001
	v_cndmask_b32_e64 v6, v6, v169, vcc                        // 00000000B1B0: D1000006 01AB5306
	v_cmp_gt_i32_e32 vcc, 11, v32                              // 00000000B1B8: 7D88408B
	s_nop 1                                                    // 00000000B1BC: BF800001
	v_cndmask_b32_e64 v7, v7, v169, vcc                        // 00000000B1C0: D1000007 01AB5307
	v_cmp_gt_i32_e32 vcc, 16, v32                              // 00000000B1C8: 7D884090
	s_nop 1                                                    // 00000000B1CC: BF800001
	v_cndmask_b32_e64 v8, v8, v169, vcc                        // 00000000B1D0: D1000008 01AB5308
	v_cmp_gt_i32_e32 vcc, 17, v32                              // 00000000B1D8: 7D884091
	s_nop 1                                                    // 00000000B1DC: BF800001
	v_cndmask_b32_e64 v9, v9, v169, vcc                        // 00000000B1E0: D1000009 01AB5309
	v_cmp_gt_i32_e32 vcc, 18, v32                              // 00000000B1E8: 7D884092
	s_nop 1                                                    // 00000000B1EC: BF800001
	v_cndmask_b32_e64 v10, v10, v169, vcc                      // 00000000B1F0: D100000A 01AB530A
	v_cmp_gt_i32_e32 vcc, 19, v32                              // 00000000B1F8: 7D884093
	s_nop 1                                                    // 00000000B1FC: BF800001
	v_cndmask_b32_e64 v11, v11, v169, vcc                      // 00000000B200: D100000B 01AB530B
	v_cmp_gt_i32_e32 vcc, 24, v32                              // 00000000B208: 7D884098
	s_nop 1                                                    // 00000000B20C: BF800001
	v_cndmask_b32_e64 v12, v12, v169, vcc                      // 00000000B210: D100000C 01AB530C
	v_cmp_gt_i32_e32 vcc, 25, v32                              // 00000000B218: 7D884099
	s_nop 1                                                    // 00000000B21C: BF800001
	v_cndmask_b32_e64 v13, v13, v169, vcc                      // 00000000B220: D100000D 01AB530D
	v_cmp_gt_i32_e32 vcc, 26, v32                              // 00000000B228: 7D88409A
	s_nop 1                                                    // 00000000B22C: BF800001
	v_cndmask_b32_e64 v14, v14, v169, vcc                      // 00000000B230: D100000E 01AB530E
	v_cmp_gt_i32_e32 vcc, 27, v32                              // 00000000B238: 7D88409B
	s_nop 1                                                    // 00000000B23C: BF800001
	v_cndmask_b32_e64 v15, v15, v169, vcc                      // 00000000B240: D100000F 01AB530F
	s_branch 18                                                // 00000000B248: BF820012 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa94>
	s_nop 13                                                   // 00000000B24C: BF80000D
	v_mov_b32_e32 v0, 0xff800000                               // 00000000B250: 7E0002FF FF800000
	v_mov_b32_e32 v1, v0                                       // 00000000B258: 7E020300
	v_mov_b32_e32 v2, v0                                       // 00000000B25C: 7E040300
	v_mov_b32_e32 v3, v0                                       // 00000000B260: 7E060300
	v_mov_b32_e32 v4, v0                                       // 00000000B264: 7E080300
	v_mov_b32_e32 v5, v0                                       // 00000000B268: 7E0A0300
	v_mov_b32_e32 v6, v0                                       // 00000000B26C: 7E0C0300
	v_mov_b32_e32 v7, v0                                       // 00000000B270: 7E0E0300
	v_mov_b32_e32 v8, v0                                       // 00000000B274: 7E100300
	v_mov_b32_e32 v9, v0                                       // 00000000B278: 7E120300
	v_mov_b32_e32 v10, v0                                      // 00000000B27C: 7E140300
	v_mov_b32_e32 v11, v0                                      // 00000000B280: 7E160300
	v_mov_b32_e32 v12, v0                                      // 00000000B284: 7E180300
	v_mov_b32_e32 v13, v0                                      // 00000000B288: 7E1A0300
	v_mov_b32_e32 v14, v0                                      // 00000000B28C: 7E1C0300
	v_mov_b32_e32 v15, v0                                      // 00000000B290: 7E1E0300
	v_max_f32_e32 v32, v16, v17                                // 00000000B294: 16402310
	v_max3_f32 v32, v18, v19, v32                              // 00000000B298: D1D30020 04822712
	v_max3_f32 v32, v20, v21, v32                              // 00000000B2A0: D1D30020 04822B14
	v_max3_f32 v32, v22, v23, v32                              // 00000000B2A8: D1D30020 04822F16
	v_max3_f32 v32, v24, v25, v32                              // 00000000B2B0: D1D30020 04823318
	v_max3_f32 v32, v26, v27, v32                              // 00000000B2B8: D1D30020 0482371A
	v_max3_f32 v32, v28, v29, v32                              // 00000000B2C0: D1D30020 04823B1C
	v_max3_f32 v32, v30, v31, v32                              // 00000000B2C8: D1D30020 04823F1E
	s_nop 7                                                    // 00000000B2D0: BF800007
	v_max_f32_e32 v33, v0, v1                                  // 00000000B2D4: 16420300
	v_max3_f32 v33, v2, v3, v33                                // 00000000B2D8: D1D30021 04860702
	v_max3_f32 v33, v4, v5, v33                                // 00000000B2E0: D1D30021 04860B04
	v_max3_f32 v33, v6, v7, v33                                // 00000000B2E8: D1D30021 04860F06
	v_max3_f32 v33, v8, v9, v33                                // 00000000B2F0: D1D30021 04861308
	v_max3_f32 v33, v10, v11, v33                              // 00000000B2F8: D1D30021 0486170A
	v_max3_f32 v33, v12, v13, v33                              // 00000000B300: D1D30021 04861B0C
	v_max3_f32 v33, v14, v15, v33                              // 00000000B308: D1D30021 04861F0E
	v_max_f32_e32 v32, v32, v33                                // 00000000B310: 16404320
	v_mov_b32_e32 v33, v32                                     // 00000000B314: 7E420320
	s_nop 1                                                    // 00000000B318: BF800001
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000B31C: 7E40B521
	v_max_f32_e32 v32, v32, v33                                // 00000000B320: 16404320
	v_mul_f32_e32 v111, v142, v32                              // 00000000B324: 0ADE418E
	v_fma_f32 v32, v32, v142, -v111                            // 00000000B328: D1CB0020 85BF1D20
	v_floor_f32_e32 v32, v32                                   // 00000000B330: 7E403F20
	v_med3_f32 v32, v32, s89, 0                                // 00000000B334: D1D60020 0200B320
	v_cvt_i32_f32_e32 v33, v32                                 // 00000000B33C: 7E421120
	v_add_u32_e32 v180, 0x7f, v33                              // 00000000B340: 696842FF 0000007F
	v_lshlrev_b32_e32 v33, 23, v180                            // 00000000B348: 24436897
	v_add_f32_e32 v32, v111, v32                               // 00000000B34C: 0240416F
	v_sub_f32_e32 v32, 0x40c00000, v32                         // 00000000B350: 044040FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000B358: 7F1E038E
	v_pk_fma_f32 v[80:81], v[16:17], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000B35C: D3B00050 1C832110
	v_pk_fma_f32 v[64:65], v[0:1], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000B364: D3B00040 1C832100
	v_pk_fma_f32 v[94:95], v[30:31], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B36C: D3B0005E 1C831D1E
	v_pk_fma_f32 v[92:93], v[28:29], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B374: D3B0005C 1C831D1C
	v_pk_fma_f32 v[90:91], v[26:27], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B37C: D3B0005A 1C831D1A
	v_pk_fma_f32 v[88:89], v[24:25], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B384: D3B00058 1C831D18
	v_pk_fma_f32 v[86:87], v[22:23], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B38C: D3B00056 1C831D16
	v_pk_fma_f32 v[84:85], v[20:21], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B394: D3B00054 1C831D14
	v_pk_fma_f32 v[82:83], v[18:19], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B39C: D3B00052 1C831D12
	v_pk_fma_f32 v[78:79], v[14:15], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3A4: D3B0004E 1C831D0E
	v_pk_fma_f32 v[76:77], v[12:13], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3AC: D3B0004C 1C831D0C
	v_pk_fma_f32 v[74:75], v[10:11], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3B4: D3B0004A 1C831D0A
	v_pk_fma_f32 v[72:73], v[8:9], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3BC: D3B00048 1C831D08
	v_pk_fma_f32 v[70:71], v[6:7], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3C4: D3B00046 1C831D06
	v_pk_fma_f32 v[68:69], v[4:5], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3CC: D3B00044 1C831D04
	v_pk_fma_f32 v[66:67], v[2:3], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3D4: D3B00042 1C831D02
	s_waitcnt vmcnt(0)                                         // 00000000B3DC: BF8C0F70
	s_mov_b64 s[70:71], s[62:63]                               // 00000000B3E0: BEC6013E
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000B3E4: 86927E00
	s_mov_b64 s[68:69], s[60:61]                               // 00000000B3E8: BEC4013C
	s_mov_b32 s71, s79                                         // 00000000B3EC: BEC7004F
	s_cbranch_scc0 34                                          // 00000000B3F0: BF840022 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc7c>
	s_cmp_ge_u32 s98, 2                                        // 00000000B3F4: BF098262
	s_cbranch_scc1 186                                         // 00000000B3F8: BF8500BA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xee4>
	s_cmp_ge_u32 s98, 3                                        // 00000000B3FC: BF098362
	s_cbranch_scc1 204                                         // 00000000B400: BF8500CC <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf34>
	s_cmp_lt_u32 s98, 4                                        // 00000000B404: BF0A8462
	s_cbranch_scc1 27                                          // 00000000B408: BF85001B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc78>
	s_add_u32 s17, s80, -1                                     // 00000000B40C: 8011C150
	s_and_b32 s17, s17, 3                                      // 00000000B410: 86118311
	s_lshl_b32 s17, s17, 14                                    // 00000000B414: 8E118E11
	s_or_b32 s17, s17, s72                                     // 00000000B418: 87114811
	s_mov_b32 m0, s17                                          // 00000000B41C: BEFC0011
	s_mul_i32 s18, s6, 0xc0                                    // 00000000B420: 9212FF06 000000C0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B428: E05D1000 121100A4
	s_add_u32 m0, s17, 0x1000                                  // 00000000B430: 807CFF11 00001000
	s_mul_i32 s18, s6, 0xd0                                    // 00000000B438: 9212FF06 000000D0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B440: E05D1000 121100A4
	s_or_b32 m0, s17, 0x2000                                   // 00000000B448: 877CFF11 00002000
	s_mul_i32 s18, s6, 0xe0                                    // 00000000B450: 9212FF06 000000E0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B458: E05D1000 121100A4
	s_add_u32 m0, s17, 0x3000                                  // 00000000B460: 807CFF11 00003000
	s_mul_i32 s17, s6, 0xf0                                    // 00000000B468: 9211FF06 000000F0
	buffer_load_dwordx4 v164, s[68:71], s17 offen lds          // 00000000B470: E05D1000 111100A4
	s_waitcnt vmcnt(0)                                         // 00000000B478: BF8C0F70
	s_barrier                                                  // 00000000B47C: BF8A0000
	s_add_u32 s87, s98, -1                                     // 00000000B480: 8057C162
	s_mul_i32 s84, s87, s9                                     // 00000000B484: 92540957
	s_cmp_lt_i32 s80, 1                                        // 00000000B488: BF048150
	s_mul_i32 s87, s87, s99                                    // 00000000B48C: 92576357
	s_cbranch_scc1 54                                          // 00000000B490: BF850036 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd6c>
	s_mov_b32 s17, s16                                         // 00000000B494: BE910010
	s_mov_b32 s18, s16                                         // 00000000B498: BE920010
	s_mov_b32 s19, s16                                         // 00000000B49C: BE930010
	s_mov_b32 s20, s16                                         // 00000000B4A0: BE940010
	s_mov_b32 s21, s16                                         // 00000000B4A4: BE950010
	s_mov_b32 s22, s16                                         // 00000000B4A8: BE960010
	s_mov_b32 s23, s16                                         // 00000000B4AC: BE970010
	s_mov_b32 s24, s16                                         // 00000000B4B0: BE980010
	s_mov_b32 s25, s16                                         // 00000000B4B4: BE990010
	s_mov_b32 s26, s16                                         // 00000000B4B8: BE9A0010
	s_mov_b32 s27, s16                                         // 00000000B4BC: BE9B0010
	s_mov_b32 s28, s16                                         // 00000000B4C0: BE9C0010
	s_mov_b32 s29, s16                                         // 00000000B4C4: BE9D0010
	s_mov_b32 s30, s16                                         // 00000000B4C8: BE9E0010
	s_mov_b32 s31, s16                                         // 00000000B4CC: BE9F0010
	s_cmp_lt_i32 s80, 2                                        // 00000000B4D0: BF048250
	s_cbranch_scc0 91                                          // 00000000B4D4: BF84005B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xe44>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B4D8: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B4DC: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B4E0: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B4E4: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B4E8: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B4EC: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B4F0: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B4F4: 7E1C701E
	s_mov_b32 s78, 0                                           // 00000000B4F8: BECE0080
	v_mov_b32_e32 v179, 0                                      // 00000000B4FC: 7F660280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B500: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B504: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B508: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B50C: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B510: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B514: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B518: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B51C: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B520: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B524: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B528: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B52C: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B530: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B534: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B538: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B53C: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B540: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B544: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B548: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B54C: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B550: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B554: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B558: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B55C: 7E607100
	s_mov_b32 s17, s86                                         // 00000000B560: BE910056
	s_mov_b32 s20, s85                                         // 00000000B564: BE940055
	s_branch 573                                               // 00000000B568: BF82023D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1660>
	s_mov_b32 s17, s16                                         // 00000000B56C: BE910010
	s_mov_b32 s18, s16                                         // 00000000B570: BE920010
	s_mov_b32 s19, s16                                         // 00000000B574: BE930010
	s_mov_b32 s20, s16                                         // 00000000B578: BE940010
	s_mov_b32 s21, s16                                         // 00000000B57C: BE950010
	s_mov_b32 s22, s16                                         // 00000000B580: BE960010
	s_mov_b32 s23, s16                                         // 00000000B584: BE970010
	s_mov_b32 s24, s16                                         // 00000000B588: BE980010
	s_mov_b32 s25, s16                                         // 00000000B58C: BE990010
	s_mov_b32 s26, s16                                         // 00000000B590: BE9A0010
	s_mov_b32 s27, s16                                         // 00000000B594: BE9B0010
	s_mov_b32 s28, s16                                         // 00000000B598: BE9C0010
	s_mov_b32 s29, s16                                         // 00000000B59C: BE9D0010
	s_mov_b32 s30, s16                                         // 00000000B5A0: BE9E0010
	s_mov_b32 s31, s16                                         // 00000000B5A4: BE9F0010
	s_mov_b32 s78, 0                                           // 00000000B5A8: BECE0080
	s_cmp_lg_u32 s80, 0                                        // 00000000B5AC: BF078050
	s_cbranch_scc0 162                                         // 00000000B5B0: BF8400A2 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x103c>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B5B4: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B5B8: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B5BC: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B5C0: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B5C4: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B5C8: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B5CC: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B5D0: 7E1C701E
	v_mov_b32_e32 v179, 0                                      // 00000000B5D4: 7F660280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B5D8: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B5DC: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B5E0: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B5E4: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B5E8: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B5EC: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B5F0: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B5F4: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B5F8: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B5FC: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B600: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B604: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B608: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B60C: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B610: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B614: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B618: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B61C: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B620: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B624: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B628: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B62C: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B630: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B634: 7E607100
	s_mov_b32 s17, s86                                         // 00000000B638: BE910056
	s_mov_b32 s20, s85                                         // 00000000B63C: BE940055
	s_branch 1219                                              // 00000000B640: BF8204C3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2150>
	s_mov_b32 s78, 0                                           // 00000000B644: BECE0080
	s_cmp_eq_u32 s80, 2                                        // 00000000B648: BF068250
	s_cbranch_scc0 87                                          // 00000000B64C: BF840057 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xfac>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B650: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B654: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B658: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B65C: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B660: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B664: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B668: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B66C: 7E1C701E
	v_mov_b32_e32 v179, 0                                      // 00000000B670: 7F660280
	v_mov_b32_e32 v178, v111                                   // 00000000B674: 7F64036F
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B678: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B67C: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B680: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B684: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B688: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B68C: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B690: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B694: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B698: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B69C: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B6A0: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B6A4: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B6A8: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B6AC: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B6B0: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B6B4: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B6B8: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B6BC: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B6C0: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B6C4: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B6C8: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B6CC: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B6D0: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B6D4: 7E607100
	s_mov_b32 s17, s86                                         // 00000000B6D8: BE910056
	s_mov_b32 s20, s85                                         // 00000000B6DC: BE940055
	s_branch 829                                               // 00000000B6E0: BF82033D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1bd8>
	s_add_u32 s18, s80, 1                                      // 00000000B6E4: 80128150
	s_and_b32 s19, s18, 2                                      // 00000000B6E8: 86138212
	s_lshl_b32 s19, s19, 13                                    // 00000000B6EC: 8E138D13
	s_bitcmp1_b32 s18, 0                                       // 00000000B6F0: BF0D8012
	s_cselect_b32 s18, s83, 0x10000                            // 00000000B6F4: 8512FF53 00010000
	s_or_b32 s18, s19, s18                                     // 00000000B6FC: 87121213
	s_or_b32 s18, s18, s72                                     // 00000000B700: 87124812
	s_mov_b32 m0, s18                                          // 00000000B704: BEFC0012
	s_nop 0                                                    // 00000000B708: BF800000
	buffer_load_dwordx4 v166, s[64:67], s99 offen lds          // 00000000B70C: E05D1000 631000A6
	s_add_u32 m0, s18, 0x1000                                  // 00000000B714: 807CFF12 00001000
	s_mul_i32 s18, s7, 0x44                                    // 00000000B71C: 9212FF07 00000044
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000B724: E05D1000 121000A6
	s_cmp_lt_u32 s98, 3                                        // 00000000B72C: BF0A8362
	s_cbranch_scc1 65332                                       // 00000000B730: BF85FF34 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc04>
	s_xor_b32 s17, s17, 2                                      // 00000000B734: 88118211
	s_lshl_b32 s17, s17, 14                                    // 00000000B738: 8E118E11
	s_or_b32 s17, s17, s72                                     // 00000000B73C: 87114811
	s_mov_b32 m0, s17                                          // 00000000B740: BEFC0011
	v_readlane_b32 s18, v230, 0                                // 00000000B744: D2890012 000101E6
	s_nop 4                                                    // 00000000B74C: BF800004
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B750: E05D1000 121100A4
	s_add_u32 m0, s17, 0x1000                                  // 00000000B758: 807CFF11 00001000
	s_mul_i32 s18, s6, 0x90                                    // 00000000B760: 9212FF06 00000090
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B768: E05D1000 121100A4
	s_or_b32 m0, s17, 0x2000                                   // 00000000B770: 877CFF11 00002000
	s_mul_i32 s18, s6, 0xa0                                    // 00000000B778: 9212FF06 000000A0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B780: E05D1000 121100A4
	s_add_u32 m0, s17, 0x3000                                  // 00000000B788: 807CFF11 00003000
	s_mul_i32 s17, s6, 0xb0                                    // 00000000B790: 9211FF06 000000B0
	buffer_load_dwordx4 v164, s[68:71], s17 offen lds          // 00000000B798: E05D1000 111100A4
	s_cmp_lt_u32 s98, 4                                        // 00000000B7A0: BF0A8462
	s_cbranch_scc1 65332                                       // 00000000B7A4: BF85FF34 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc78>
	s_branch 65304                                             // 00000000B7A8: BF82FF18 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc0c>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B7AC: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B7B0: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B7B4: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B7B8: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B7BC: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B7C0: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B7C4: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B7C8: 7E1C701E
	v_mov_b32_e32 v179, 0                                      // 00000000B7CC: 7F660280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B7D0: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B7D4: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B7D8: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B7DC: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B7E0: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B7E4: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B7E8: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B7EC: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B7F0: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B7F4: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B7F8: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B7FC: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B800: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B804: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B808: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B80C: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B810: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B814: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B818: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B81C: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B820: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B824: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B828: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B82C: 7E607100
	s_mov_b32 s17, s86                                         // 00000000B830: BE910056
	s_mov_b32 s20, s85                                         // 00000000B834: BE940055
	s_branch 1093                                              // 00000000B838: BF820445 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2150>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B83C: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B840: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B844: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B848: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B84C: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B850: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B854: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B858: 7E1C701E
	v_mov_b32_e32 v179, 0                                      // 00000000B85C: 7F660280
	s_mov_b32 s78, s80                                         // 00000000B860: BECE0050
	v_mov_b32_e32 v178, v111                                   // 00000000B864: 7F64036F
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B868: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B86C: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B870: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B874: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B878: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B87C: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B880: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B884: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B888: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B88C: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B890: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B894: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B898: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B89C: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B8A0: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B8A4: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B8A8: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B8AC: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B8B0: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B8B4: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B8B8: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B8BC: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B8C0: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B8C4: 7E607100
	s_mov_b32 s17, s86                                         // 00000000B8C8: BE910056
	s_mov_b32 s20, s85                                         // 00000000B8CC: BE940055
	s_branch 5                                                 // 00000000B8D0: BF820005 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10e8>
	s_mov_b64 s[10:11], s[20:21]                               // 00000000B8D4: BE8A0114
	s_mov_b32 s3, s17                                          // 00000000B8D8: BE830011
	global_store_dword v1, v0, s[14:15]                        // 00000000B8DC: DC708000 000E0001
	s_branch 64795                                             // 00000000B8E4: BF82FD1B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x554>
	s_add_u32 s18, s78, 1                                      // 00000000B8E8: 8012814E
	s_cmp_ge_u32 s18, s77                                      // 00000000B8EC: BF094D12
	s_cbranch_scc1 1399                                        // 00000000B8F0: BF850577 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26d0>
	s_setprio 0                                                // 00000000B8F4: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000B8F8: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000B8FC: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000B900: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000B904: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000B908: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000B90C: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000B910: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000B914: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000B918: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000B91C: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000B920: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000B924: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000B928: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000B92C: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000B930: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000B934: 7EBE415F
	v_mov_b32_e32 v80, v180                                    // 00000000B938: 7EA003B4
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000B93C: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000B944: D2A24050 0002A752
	v_mov_b32_e32 v81, v180                                    // 00000000B94C: 7EA203B4
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000B950: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000B958: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000B960: 7E804140
	v_mov_b32_e32 v82, v180                                    // 00000000B964: 7EA403B4
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000B968: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000B970: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000B974: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000B97C: 7E844142
	v_mov_b32_e32 v83, v180                                    // 00000000B980: 7EA603B4
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000B984: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000B98C: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000B990: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000B998: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000B99C: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000B9A0: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000B9A4: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000B9A8: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000B9AC: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000B9B0: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000B9B4: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000B9B8: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000B9BC: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000B9C0: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000B9C4: 7E9E414F
	v_mov_b32_e32 v84, v180                                    // 00000000B9C8: 7EA803B4
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000B9CC: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000B9D4: D2A24054 00028742
	v_mov_b32_e32 v85, v180                                    // 00000000B9DC: 7EAA03B4
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000B9E0: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000B9E8: D2A24055 00028F46
	v_mov_b32_e32 v86, v180                                    // 00000000B9F0: 7EAC03B4
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000B9F4: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000B9FC: D2A24056 0002974A
	v_mov_b32_e32 v87, v180                                    // 00000000BA04: 7EAE03B4
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000BA08: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000BA10: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161 offset:16384                   // 00000000BA18: D9FE4000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:16400                   // 00000000BA20: D9FE4010 600000A1
	ds_read_b128 v[110:113], v161 offset:24576                 // 00000000BA28: D9FE6000 6E0000A1
	ds_read_b128 v[114:117], v161 offset:24592                 // 00000000BA30: D9FE6010 720000A1
	ds_read_b128 v[118:121], v162 offset:16384                 // 00000000BA38: D9FE4000 760000A2
	ds_read_b128 v[122:125], v162 offset:16400                 // 00000000BA40: D9FE4010 7A0000A2
	ds_read_b128 v[134:137], v162 offset:24576                 // 00000000BA48: D9FE6000 860000A2
	ds_read_b128 v[138:141], v162 offset:24592                 // 00000000BA50: D9FE6010 8A0000A2
	s_barrier                                                  // 00000000BA58: BF8A0000
	s_setprio 1                                                // 00000000BA5C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000BA60: D3AD0058 0202A17E
	ds_read_b128 v[206:209], v163 offset:16384                 // 00000000BA68: D9FE4000 CE0000A3
	ds_read_b128 v[210:213], v163 offset:16400                 // 00000000BA70: D9FE4010 D20000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000BA78: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000BA7C: D3AE0040 02036D5C
	ds_read_b128 v[214:217], v163 offset:24576                 // 00000000BA84: D9FE6000 D60000A3
	ds_read_b128 v[218:221], v163 offset:24592                 // 00000000BA8C: D9FE6010 DA0000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[110:117], v[182:189], 0// 00000000BA94: D3AE005E 02036D6E
	ds_read_b64_tr_b8 v[110:111], v174                         // 00000000BA9C: D9C40000 6E0000AE
	ds_read_b64_tr_b8 v[112:113], v174 offset:1024             // 00000000BAA4: D9C40400 700000AE
	ds_read_b64_tr_b8 v[114:115], v174 offset:2048             // 00000000BAAC: D9C40800 720000AE
	ds_read_b64_tr_b8 v[116:117], v174 offset:3072             // 00000000BAB4: D9C40C00 740000AE
	s_min_u32 s18, s20, s84                                    // 00000000BABC: 83925414
	s_add_u32 m0, s72, s16                                     // 00000000BAC0: 807C1048
	s_nop 0                                                    // 00000000BAC4: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000BAC8: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v180                            // 00000000BAD0: 24B96897
	v_fma_f32 v179, v88, v92, v179                             // 00000000BAD4: D1CB00B3 06CEB958
	s_waitcnt lgkmcnt(8)                                       // 00000000BADC: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[118:125], v[190:197], v[64:79]// 00000000BAE0: D3AE0040 05037D76
	ds_read_b64_tr_b8 v[118:119], v174 offset:256              // 00000000BAE8: D9C40100 760000AE
	ds_read_b64_tr_b8 v[120:121], v174 offset:1280             // 00000000BAF0: D9C40500 780000AE
	ds_read_b64_tr_b8 v[122:123], v174 offset:2304             // 00000000BAF8: D9C40900 7A0000AE
	ds_read_b64_tr_b8 v[124:125], v174 offset:3328             // 00000000BB00: D9C40D00 7C0000AE
	s_add_u32 m0, s72, s90                                     // 00000000BB08: 807C5A48
	s_nop 0                                                    // 00000000BB0C: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000BB10: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[134:141], v[190:197], v[94:109]// 00000000BB18: D3AE005E 057B7D86
	s_min_u32 s18, s17, s87                                    // 00000000BB20: 83925711
	s_add_u32 m0, s72, s88                                     // 00000000BB24: 807C5848
	s_nop 0                                                    // 00000000BB28: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000BB2C: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000BB34: 80140914
	s_add_u32 s17, s17, s99                                    // 00000000BB38: 80116311
	s_waitcnt lgkmcnt(8)                                       // 00000000BB3C: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[206:213], v[198:205], v[64:79]// 00000000BB40: D3AE0040 05038DCE
	ds_read_b64_tr_b8 v[134:135], v174 offset:512              // 00000000BB48: D9C40200 860000AE
	ds_read_b64_tr_b8 v[136:137], v174 offset:1536             // 00000000BB50: D9C40600 880000AE
	ds_read_b64_tr_b8 v[138:139], v174 offset:2560             // 00000000BB58: D9C40A00 8A0000AE
	ds_read_b64_tr_b8 v[140:141], v174 offset:3584             // 00000000BB60: D9C40E00 8C0000AE
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[214:221], v[198:205], v[94:109]// 00000000BB68: D3AE005E 057B8DD6
	s_nop 3                                                    // 00000000BB70: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000BB74: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000BB78: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000BB80: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000BB88: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000BB90: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000BB98: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000BBA0: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000BBA8: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000BBB0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[110:117], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000BBB4: D3AC0000 000369AA D3AE0830 04C2A16E
	ds_read_b64_tr_b8 v[206:207], v174 offset:768              // 00000000BBC4: D9C40300 CE0000AE
	ds_read_b64_tr_b8 v[208:209], v174 offset:1792             // 00000000BBCC: D9C40700 D00000AE
	ds_read_b64_tr_b8 v[210:211], v174 offset:2816             // 00000000BBD4: D9C40B00 D20000AE
	ds_read_b64_tr_b8 v[212:213], v174 offset:3840             // 00000000BBDC: D9C40F00 D40000AE
	v_max_f32_e32 v89, v94, v95                                // 00000000BBE4: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000BBE8: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000BBF0: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000BBF8: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000BC00: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000BC08: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000BC10: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000BC18: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[118:125], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000BC20: D3AC0000 000369AA D3AE0820 0482A176
	v_max_f32_e32 v88, v88, v89                                // 00000000BC30: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000BC34: 7EB20358
	s_nop 1                                                    // 00000000BC38: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000BC3C: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000BC40: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000BC44: 0AB2B18E
	v_max_f32_e32 v89, v178, v89                               // 00000000BC48: 16B2B3B2
	v_sub_f32_e32 v90, v89, v178                               // 00000000BC4C: 04B56559
	v_cmp_lt_f32_e32 vcc, s91, v90                             // 00000000BC50: 7C82B45B
	s_waitcnt lgkmcnt(0)                                       // 00000000BC54: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[134:141], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000BC58: D3AC0000 000369AA D3AE0810 0442A186
	s_cmp_lg_u64 vcc, 0                                        // 00000000BC68: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000BC6C: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000BC70: 85158081
	v_cndmask_b32_e64 v111, v178, v89, s[18:19]                // 00000000BC74: D100006F 004AB3B2
	v_fma_f32 v88, v88, v142, -v111                            // 00000000BC7C: D1CB0058 85BF1D58
	v_floor_f32_e32 v88, v88                                   // 00000000BC84: 7EB03F58
	v_med3_f32 v88, v88, s89, 0                                // 00000000BC88: D1D60058 0200B358
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000BC90: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[206:213], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000BC94: D3AC0000 000369AA D3AE0800 0402A1CE
	v_add_u32_e32 v180, 0x7f, v89                              // 00000000BCA4: 6968B2FF 0000007F
	v_add_f32_e32 v80, v111, v88                               // 00000000BCAC: 02A0B16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000BCB0: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000BCB8: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000BCBC: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000BCC4: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCCC: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCD4: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCDC: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCE4: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCEC: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCF4: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BCFC: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BD04: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BD0C: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BD14: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BD1C: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BD24: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BD2C: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000BD34: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000BD3C: BF068015
	s_cbranch_scc1 68                                          // 00000000BD40: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1654>
	v_sub_f32_e32 v96, v178, v111                              // 00000000BD44: 04C0DFB2
	v_exp_f32_e32 v96, v96                                     // 00000000BD48: 7EC04160
	s_nop 0                                                    // 00000000BD4C: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000BD50: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000BD58: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000BD60: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000BD68: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000BD70: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000BD78: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000BD80: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000BD88: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000BD90: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000BD98: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000BDA0: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000BDA8: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000BDB0: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000BDB8: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000BDC0: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000BDC8: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000BDD0: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000BDD8: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000BDE0: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000BDE8: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000BDF0: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000BDF8: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000BE00: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000BE08: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000BE10: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000BE18: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000BE20: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000BE28: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000BE30: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000BE38: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000BE40: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000BE48: D3B14000 0802C100
	v_mul_f32_e32 v179, v179, v96                              // 00000000BE50: 0B66C1B3
	s_waitcnt vmcnt(3)                                         // 00000000BE54: BF8C0F73
	s_barrier                                                  // 00000000BE58: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000BE5C: 804E814E
	s_add_u32 s18, s78, 1                                      // 00000000BE60: 8012814E
	s_cmp_ge_u32 s18, s77                                      // 00000000BE64: BF094D12
	s_cbranch_scc1 1053                                        // 00000000BE68: BF85041D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26e0>
	s_setprio 0                                                // 00000000BE6C: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000BE70: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000BE74: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000BE78: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000BE7C: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000BE80: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000BE84: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000BE88: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000BE8C: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000BE90: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000BE94: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000BE98: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000BE9C: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000BEA0: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000BEA4: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000BEA8: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000BEAC: 7EBE415F
	v_mov_b32_e32 v80, v180                                    // 00000000BEB0: 7EA003B4
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000BEB4: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000BEBC: D2A24050 0002A752
	v_mov_b32_e32 v81, v180                                    // 00000000BEC4: 7EA203B4
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000BEC8: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000BED0: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000BED8: 7E804140
	v_mov_b32_e32 v82, v180                                    // 00000000BEDC: 7EA403B4
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000BEE0: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000BEE8: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000BEEC: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000BEF4: 7E844142
	v_mov_b32_e32 v83, v180                                    // 00000000BEF8: 7EA603B4
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000BEFC: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000BF04: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000BF08: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000BF10: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000BF14: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000BF18: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000BF1C: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000BF20: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000BF24: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000BF28: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000BF2C: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000BF30: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000BF34: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000BF38: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000BF3C: 7E9E414F
	v_mov_b32_e32 v84, v180                                    // 00000000BF40: 7EA803B4
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000BF44: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000BF4C: D2A24054 00028742
	v_mov_b32_e32 v85, v180                                    // 00000000BF54: 7EAA03B4
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000BF58: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000BF60: D2A24055 00028F46
	v_mov_b32_e32 v86, v180                                    // 00000000BF68: 7EAC03B4
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000BF6C: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000BF74: D2A24056 0002974A
	v_mov_b32_e32 v87, v180                                    // 00000000BF7C: 7EAE03B4
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000BF80: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000BF88: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161 offset:32768                   // 00000000BF90: D9FE8000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:32784                   // 00000000BF98: D9FE8010 600000A1
	ds_read_b128 v[112:115], v161 offset:40960                 // 00000000BFA0: D9FEA000 700000A1
	ds_read_b128 v[116:119], v161 offset:40976                 // 00000000BFA8: D9FEA010 740000A1
	ds_read_b128 v[134:137], v162 offset:32768                 // 00000000BFB0: D9FE8000 860000A2
	ds_read_b128 v[138:141], v162 offset:32784                 // 00000000BFB8: D9FE8010 8A0000A2
	ds_read_b128 v[206:209], v162 offset:40960                 // 00000000BFC0: D9FEA000 CE0000A2
	ds_read_b128 v[210:213], v162 offset:40976                 // 00000000BFC8: D9FEA010 D20000A2
	s_barrier                                                  // 00000000BFD0: BF8A0000
	s_setprio 1                                                // 00000000BFD4: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000BFD8: D3AD0058 0202A17E
	ds_read_b128 v[214:217], v163 offset:32768                 // 00000000BFE0: D9FE8000 D60000A3
	ds_read_b128 v[218:221], v163 offset:32784                 // 00000000BFE8: D9FE8010 DA0000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000BFF0: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000BFF4: D3AE0040 02036D5C
	ds_read_b128 v[222:225], v163 offset:40960                 // 00000000BFFC: D9FEA000 DE0000A3
	ds_read_b128 v[226:229], v163 offset:40976                 // 00000000C004: D9FEA010 E20000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[112:119], v[182:189], 0// 00000000C00C: D3AE005E 02036D70
	ds_read_b64_tr_b8 v[112:113], v175                         // 00000000C014: D9C40000 700000AF
	ds_read_b64_tr_b8 v[114:115], v175 offset:1024             // 00000000C01C: D9C40400 720000AF
	ds_read_b64_tr_b8 v[116:117], v175 offset:2048             // 00000000C024: D9C40800 740000AF
	ds_read_b64_tr_b8 v[118:119], v175 offset:3072             // 00000000C02C: D9C40C00 760000AF
	s_min_u32 s18, s20, s84                                    // 00000000C034: 83925414
	s_add_u32 m0, s72, s92                                     // 00000000C038: 807C5C48
	s_nop 0                                                    // 00000000C03C: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000C040: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v180                            // 00000000C048: 24B96897
	v_fma_f32 v179, v88, v92, v179                             // 00000000C04C: D1CB00B3 06CEB958
	s_waitcnt lgkmcnt(8)                                       // 00000000C054: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[134:141], v[190:197], v[64:79]// 00000000C058: D3AE0040 05037D86
	ds_read_b64_tr_b8 v[134:135], v175 offset:256              // 00000000C060: D9C40100 860000AF
	ds_read_b64_tr_b8 v[136:137], v175 offset:1280             // 00000000C068: D9C40500 880000AF
	ds_read_b64_tr_b8 v[138:139], v175 offset:2304             // 00000000C070: D9C40900 8A0000AF
	ds_read_b64_tr_b8 v[140:141], v175 offset:3328             // 00000000C078: D9C40D00 8C0000AF
	s_add_u32 m0, s72, s93                                     // 00000000C080: 807C5D48
	s_nop 0                                                    // 00000000C084: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000C088: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[206:213], v[190:197], v[94:109]// 00000000C090: D3AE005E 057B7DCE
	s_min_u32 s18, s17, s87                                    // 00000000C098: 83925711
	s_add_u32 m0, s72, s81                                     // 00000000C09C: 807C5148
	s_nop 0                                                    // 00000000C0A0: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000C0A4: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000C0AC: 80140914
	s_add_u32 s17, s17, s99                                    // 00000000C0B0: 80116311
	s_waitcnt lgkmcnt(8)                                       // 00000000C0B4: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[214:221], v[198:205], v[64:79]// 00000000C0B8: D3AE0040 05038DD6
	ds_read_b64_tr_b8 v[206:207], v175 offset:512              // 00000000C0C0: D9C40200 CE0000AF
	ds_read_b64_tr_b8 v[208:209], v175 offset:1536             // 00000000C0C8: D9C40600 D00000AF
	ds_read_b64_tr_b8 v[210:211], v175 offset:2560             // 00000000C0D0: D9C40A00 D20000AF
	ds_read_b64_tr_b8 v[212:213], v175 offset:3584             // 00000000C0D8: D9C40E00 D40000AF
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[222:229], v[198:205], v[94:109]// 00000000C0E0: D3AE005E 057B8DDE
	s_nop 3                                                    // 00000000C0E8: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000C0EC: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000C0F0: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000C0F8: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000C100: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000C108: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000C110: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000C118: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000C120: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000C128: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[112:119], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000C12C: D3AC0000 000369AA D3AE0830 04C2A170
	ds_read_b64_tr_b8 v[112:113], v175 offset:768              // 00000000C13C: D9C40300 700000AF
	ds_read_b64_tr_b8 v[114:115], v175 offset:1792             // 00000000C144: D9C40700 720000AF
	ds_read_b64_tr_b8 v[116:117], v175 offset:2816             // 00000000C14C: D9C40B00 740000AF
	ds_read_b64_tr_b8 v[118:119], v175 offset:3840             // 00000000C154: D9C40F00 760000AF
	v_max_f32_e32 v89, v94, v95                                // 00000000C15C: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000C160: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000C168: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000C170: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000C178: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000C180: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000C188: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000C190: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000C198: D3AC0000 000369AA D3AE0820 0482A186
	v_max_f32_e32 v88, v88, v89                                // 00000000C1A8: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000C1AC: 7EB20358
	s_nop 1                                                    // 00000000C1B0: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000C1B4: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000C1B8: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000C1BC: 0AB2B18E
	v_max_f32_e32 v89, v111, v89                               // 00000000C1C0: 16B2B36F
	v_sub_f32_e32 v90, v89, v111                               // 00000000C1C4: 04B4DF59
	v_cmp_lt_f32_e32 vcc, s91, v90                             // 00000000C1C8: 7C82B45B
	s_waitcnt lgkmcnt(0)                                       // 00000000C1CC: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[206:213], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000C1D0: D3AC0000 000369AA D3AE0810 0442A1CE
	s_cmp_lg_u64 vcc, 0                                        // 00000000C1E0: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000C1E4: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000C1E8: 85158081
	v_cndmask_b32_e64 v178, v111, v89, s[18:19]                // 00000000C1EC: D10000B2 004AB36F
	v_fma_f32 v88, v88, v142, -v178                            // 00000000C1F4: D1CB0058 86CB1D58
	v_floor_f32_e32 v88, v88                                   // 00000000C1FC: 7EB03F58
	v_med3_f32 v88, v88, s89, 0                                // 00000000C200: D1D60058 0200B358
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000C208: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[112:119], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000C20C: D3AC0000 000369AA D3AE0800 0402A170
	v_add_u32_e32 v180, 0x7f, v89                              // 00000000C21C: 6968B2FF 0000007F
	v_add_f32_e32 v80, v178, v88                               // 00000000C224: 02A0B1B2
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000C228: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000C230: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C234: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C23C: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C244: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C24C: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C254: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C25C: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C264: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C26C: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C274: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C27C: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C284: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C28C: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C294: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C29C: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C2A4: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C2AC: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000C2B4: BF068015
	s_cbranch_scc1 68                                          // 00000000C2B8: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1bcc>
	v_sub_f32_e32 v96, v111, v178                              // 00000000C2BC: 04C1656F
	v_exp_f32_e32 v96, v96                                     // 00000000C2C0: 7EC04160
	s_nop 0                                                    // 00000000C2C4: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000C2C8: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000C2D0: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000C2D8: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000C2E0: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000C2E8: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000C2F0: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000C2F8: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000C300: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000C308: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000C310: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000C318: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000C320: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000C328: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000C330: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000C338: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000C340: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000C348: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000C350: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000C358: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000C360: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000C368: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000C370: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000C378: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000C380: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000C388: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000C390: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000C398: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000C3A0: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000C3A8: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000C3B0: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000C3B8: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000C3C0: D3B14000 0802C100
	v_mul_f32_e32 v179, v179, v96                              // 00000000C3C8: 0B66C1B3
	s_waitcnt vmcnt(3)                                         // 00000000C3CC: BF8C0F73
	s_barrier                                                  // 00000000C3D0: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000C3D4: 804E814E
	s_add_u32 s18, s78, 1                                      // 00000000C3D8: 8012814E
	s_cmp_ge_u32 s18, s77                                      // 00000000C3DC: BF094D12
	s_cbranch_scc1 699                                         // 00000000C3E0: BF8502BB <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26d0>
	s_setprio 0                                                // 00000000C3E4: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000C3E8: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000C3EC: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000C3F0: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000C3F4: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000C3F8: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000C3FC: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000C400: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000C404: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000C408: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000C40C: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000C410: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000C414: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000C418: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000C41C: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000C420: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000C424: 7EBE415F
	v_mov_b32_e32 v80, v180                                    // 00000000C428: 7EA003B4
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000C42C: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000C434: D2A24050 0002A752
	v_mov_b32_e32 v81, v180                                    // 00000000C43C: 7EA203B4
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000C440: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000C448: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000C450: 7E804140
	v_mov_b32_e32 v82, v180                                    // 00000000C454: 7EA403B4
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000C458: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000C460: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000C464: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000C46C: 7E844142
	v_mov_b32_e32 v83, v180                                    // 00000000C470: 7EA603B4
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000C474: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000C47C: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000C480: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000C488: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000C48C: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000C490: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000C494: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000C498: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000C49C: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000C4A0: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000C4A4: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000C4A8: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000C4AC: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000C4B0: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000C4B4: 7E9E414F
	v_mov_b32_e32 v84, v180                                    // 00000000C4B8: 7EA803B4
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000C4BC: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000C4C4: D2A24054 00028742
	v_mov_b32_e32 v85, v180                                    // 00000000C4CC: 7EAA03B4
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000C4D0: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000C4D8: D2A24055 00028F46
	v_mov_b32_e32 v86, v180                                    // 00000000C4E0: 7EAC03B4
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000C4E4: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000C4EC: D2A24056 0002974A
	v_mov_b32_e32 v87, v180                                    // 00000000C4F4: 7EAE03B4
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000C4F8: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000C500: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161 offset:49152                   // 00000000C508: D9FEC000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:49168                   // 00000000C510: D9FEC010 600000A1
	ds_read_b128 v[110:113], v161 offset:57344                 // 00000000C518: D9FEE000 6E0000A1
	ds_read_b128 v[114:117], v161 offset:57360                 // 00000000C520: D9FEE010 720000A1
	ds_read_b128 v[118:121], v162 offset:49152                 // 00000000C528: D9FEC000 760000A2
	ds_read_b128 v[122:125], v162 offset:49168                 // 00000000C530: D9FEC010 7A0000A2
	ds_read_b128 v[134:137], v162 offset:57344                 // 00000000C538: D9FEE000 860000A2
	ds_read_b128 v[138:141], v162 offset:57360                 // 00000000C540: D9FEE010 8A0000A2
	s_barrier                                                  // 00000000C548: BF8A0000
	s_setprio 1                                                // 00000000C54C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000C550: D3AD0058 0202A17E
	ds_read_b128 v[206:209], v163 offset:49152                 // 00000000C558: D9FEC000 CE0000A3
	ds_read_b128 v[210:213], v163 offset:49168                 // 00000000C560: D9FEC010 D20000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000C568: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000C56C: D3AE0040 02036D5C
	ds_read_b128 v[214:217], v163 offset:57344                 // 00000000C574: D9FEE000 D60000A3
	ds_read_b128 v[218:221], v163 offset:57360                 // 00000000C57C: D9FEE010 DA0000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[110:117], v[182:189], 0// 00000000C584: D3AE005E 02036D6E
	ds_read_b64_tr_b8 v[110:111], v176                         // 00000000C58C: D9C40000 6E0000B0
	ds_read_b64_tr_b8 v[112:113], v176 offset:1024             // 00000000C594: D9C40400 700000B0
	ds_read_b64_tr_b8 v[114:115], v176 offset:2048             // 00000000C59C: D9C40800 720000B0
	ds_read_b64_tr_b8 v[116:117], v176 offset:3072             // 00000000C5A4: D9C40C00 740000B0
	s_min_u32 s18, s20, s84                                    // 00000000C5AC: 83925414
	s_add_u32 m0, s72, s94                                     // 00000000C5B0: 807C5E48
	s_nop 0                                                    // 00000000C5B4: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000C5B8: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v180                            // 00000000C5C0: 24B96897
	v_fma_f32 v179, v88, v92, v179                             // 00000000C5C4: D1CB00B3 06CEB958
	s_waitcnt lgkmcnt(8)                                       // 00000000C5CC: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[118:125], v[190:197], v[64:79]// 00000000C5D0: D3AE0040 05037D76
	ds_read_b64_tr_b8 v[118:119], v176 offset:256              // 00000000C5D8: D9C40100 760000B0
	ds_read_b64_tr_b8 v[120:121], v176 offset:1280             // 00000000C5E0: D9C40500 780000B0
	ds_read_b64_tr_b8 v[122:123], v176 offset:2304             // 00000000C5E8: D9C40900 7A0000B0
	ds_read_b64_tr_b8 v[124:125], v176 offset:3328             // 00000000C5F0: D9C40D00 7C0000B0
	s_add_u32 m0, s72, s95                                     // 00000000C5F8: 807C5F48
	s_nop 0                                                    // 00000000C5FC: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000C600: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[134:141], v[190:197], v[94:109]// 00000000C608: D3AE005E 057B7D86
	s_min_u32 s18, s17, s87                                    // 00000000C610: 83925711
	s_add_u32 m0, s72, s82                                     // 00000000C614: 807C5248
	s_nop 0                                                    // 00000000C618: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000C61C: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000C624: 80140914
	s_add_u32 s17, s17, s99                                    // 00000000C628: 80116311
	s_waitcnt lgkmcnt(8)                                       // 00000000C62C: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[206:213], v[198:205], v[64:79]// 00000000C630: D3AE0040 05038DCE
	ds_read_b64_tr_b8 v[134:135], v176 offset:512              // 00000000C638: D9C40200 860000B0
	ds_read_b64_tr_b8 v[136:137], v176 offset:1536             // 00000000C640: D9C40600 880000B0
	ds_read_b64_tr_b8 v[138:139], v176 offset:2560             // 00000000C648: D9C40A00 8A0000B0
	ds_read_b64_tr_b8 v[140:141], v176 offset:3584             // 00000000C650: D9C40E00 8C0000B0
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[214:221], v[198:205], v[94:109]// 00000000C658: D3AE005E 057B8DD6
	s_nop 3                                                    // 00000000C660: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000C664: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000C668: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000C670: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000C678: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000C680: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000C688: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000C690: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000C698: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000C6A0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[110:117], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000C6A4: D3AC0000 000369AA D3AE0830 04C2A16E
	ds_read_b64_tr_b8 v[206:207], v176 offset:768              // 00000000C6B4: D9C40300 CE0000B0
	ds_read_b64_tr_b8 v[208:209], v176 offset:1792             // 00000000C6BC: D9C40700 D00000B0
	ds_read_b64_tr_b8 v[210:211], v176 offset:2816             // 00000000C6C4: D9C40B00 D20000B0
	ds_read_b64_tr_b8 v[212:213], v176 offset:3840             // 00000000C6CC: D9C40F00 D40000B0
	v_max_f32_e32 v89, v94, v95                                // 00000000C6D4: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000C6D8: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000C6E0: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000C6E8: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000C6F0: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000C6F8: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000C700: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000C708: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[118:125], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000C710: D3AC0000 000369AA D3AE0820 0482A176
	v_max_f32_e32 v88, v88, v89                                // 00000000C720: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000C724: 7EB20358
	s_nop 1                                                    // 00000000C728: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000C72C: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000C730: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000C734: 0AB2B18E
	v_max_f32_e32 v89, v178, v89                               // 00000000C738: 16B2B3B2
	v_sub_f32_e32 v90, v89, v178                               // 00000000C73C: 04B56559
	v_cmp_lt_f32_e32 vcc, s91, v90                             // 00000000C740: 7C82B45B
	s_waitcnt lgkmcnt(0)                                       // 00000000C744: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[134:141], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000C748: D3AC0000 000369AA D3AE0810 0442A186
	s_cmp_lg_u64 vcc, 0                                        // 00000000C758: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000C75C: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000C760: 85158081
	v_cndmask_b32_e64 v111, v178, v89, s[18:19]                // 00000000C764: D100006F 004AB3B2
	v_fma_f32 v88, v88, v142, -v111                            // 00000000C76C: D1CB0058 85BF1D58
	v_floor_f32_e32 v88, v88                                   // 00000000C774: 7EB03F58
	v_med3_f32 v88, v88, s89, 0                                // 00000000C778: D1D60058 0200B358
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000C780: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[206:213], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000C784: D3AC0000 000369AA D3AE0800 0402A1CE
	v_add_u32_e32 v180, 0x7f, v89                              // 00000000C794: 6968B2FF 0000007F
	v_add_f32_e32 v80, v111, v88                               // 00000000C79C: 02A0B16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000C7A0: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000C7A8: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C7AC: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C7B4: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7BC: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7C4: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7CC: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7D4: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7DC: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7E4: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7EC: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7F4: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C7FC: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C804: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C80C: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C814: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C81C: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C824: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000C82C: BF068015
	s_cbranch_scc1 68                                          // 00000000C830: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2144>
	v_sub_f32_e32 v96, v178, v111                              // 00000000C834: 04C0DFB2
	v_exp_f32_e32 v96, v96                                     // 00000000C838: 7EC04160
	s_nop 0                                                    // 00000000C83C: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000C840: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000C848: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000C850: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000C858: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000C860: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000C868: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000C870: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000C878: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000C880: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000C888: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000C890: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000C898: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000C8A0: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000C8A8: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000C8B0: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000C8B8: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000C8C0: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000C8C8: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000C8D0: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000C8D8: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000C8E0: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000C8E8: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000C8F0: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000C8F8: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000C900: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000C908: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000C910: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000C918: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000C920: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000C928: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000C930: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000C938: D3B14000 0802C100
	v_mul_f32_e32 v179, v179, v96                              // 00000000C940: 0B66C1B3
	s_waitcnt vmcnt(3)                                         // 00000000C944: BF8C0F73
	s_barrier                                                  // 00000000C948: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000C94C: 804E814E
	s_add_u32 s18, s78, 1                                      // 00000000C950: 8012814E
	s_cmp_ge_u32 s18, s77                                      // 00000000C954: BF094D12
	s_cbranch_scc1 348                                         // 00000000C958: BF85015C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26cc>
	s_setprio 0                                                // 00000000C95C: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000C960: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000C964: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000C968: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000C96C: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000C970: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000C974: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000C978: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000C97C: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000C980: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000C984: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000C988: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000C98C: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000C990: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000C994: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000C998: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000C99C: 7EBE415F
	v_mov_b32_e32 v80, v180                                    // 00000000C9A0: 7EA003B4
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000C9A4: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000C9AC: D2A24050 0002A752
	v_mov_b32_e32 v81, v180                                    // 00000000C9B4: 7EA203B4
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000C9B8: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000C9C0: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000C9C8: 7E804140
	v_mov_b32_e32 v82, v180                                    // 00000000C9CC: 7EA403B4
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000C9D0: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000C9D8: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000C9DC: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000C9E4: 7E844142
	v_mov_b32_e32 v83, v180                                    // 00000000C9E8: 7EA603B4
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000C9EC: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000C9F4: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000C9F8: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000CA00: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000CA04: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000CA08: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000CA0C: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000CA10: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000CA14: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000CA18: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000CA1C: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000CA20: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000CA24: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000CA28: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000CA2C: 7E9E414F
	v_mov_b32_e32 v84, v180                                    // 00000000CA30: 7EA803B4
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000CA34: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000CA3C: D2A24054 00028742
	v_mov_b32_e32 v85, v180                                    // 00000000CA44: 7EAA03B4
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000CA48: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000CA50: D2A24055 00028F46
	v_mov_b32_e32 v86, v180                                    // 00000000CA58: 7EAC03B4
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000CA5C: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000CA64: D2A24056 0002974A
	v_mov_b32_e32 v87, v180                                    // 00000000CA6C: 7EAE03B4
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000CA70: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000CA78: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161                                // 00000000CA80: D9FE0000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:16                      // 00000000CA88: D9FE0010 600000A1
	ds_read_b128 v[112:115], v161 offset:8192                  // 00000000CA90: D9FE2000 700000A1
	ds_read_b128 v[116:119], v161 offset:8208                  // 00000000CA98: D9FE2010 740000A1
	ds_read_b128 v[134:137], v162                              // 00000000CAA0: D9FE0000 860000A2
	ds_read_b128 v[138:141], v162 offset:16                    // 00000000CAA8: D9FE0010 8A0000A2
	ds_read_b128 v[206:209], v162 offset:8192                  // 00000000CAB0: D9FE2000 CE0000A2
	ds_read_b128 v[210:213], v162 offset:8208                  // 00000000CAB8: D9FE2010 D20000A2
	s_barrier                                                  // 00000000CAC0: BF8A0000
	s_setprio 1                                                // 00000000CAC4: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000CAC8: D3AD0058 0202A17E
	ds_read_b128 v[214:217], v163                              // 00000000CAD0: D9FE0000 D60000A3
	ds_read_b128 v[218:221], v163 offset:16                    // 00000000CAD8: D9FE0010 DA0000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000CAE0: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000CAE4: D3AE0040 02036D5C
	ds_read_b128 v[222:225], v163 offset:8192                  // 00000000CAEC: D9FE2000 DE0000A3
	ds_read_b128 v[226:229], v163 offset:8208                  // 00000000CAF4: D9FE2010 E20000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[112:119], v[182:189], 0// 00000000CAFC: D3AE005E 02036D70
	ds_read_b64_tr_b8 v[112:113], v177                         // 00000000CB04: D9C40000 700000B1
	ds_read_b64_tr_b8 v[114:115], v177 offset:1024             // 00000000CB0C: D9C40400 720000B1
	ds_read_b64_tr_b8 v[116:117], v177 offset:2048             // 00000000CB14: D9C40800 740000B1
	ds_read_b64_tr_b8 v[118:119], v177 offset:3072             // 00000000CB1C: D9C40C00 760000B1
	s_min_u32 s18, s20, s84                                    // 00000000CB24: 83925414
	s_add_u32 m0, s72, s96                                     // 00000000CB28: 807C6048
	s_nop 0                                                    // 00000000CB2C: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000CB30: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v180                            // 00000000CB38: 24B96897
	v_fma_f32 v179, v88, v92, v179                             // 00000000CB3C: D1CB00B3 06CEB958
	s_waitcnt lgkmcnt(8)                                       // 00000000CB44: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[134:141], v[190:197], v[64:79]// 00000000CB48: D3AE0040 05037D86
	ds_read_b64_tr_b8 v[134:135], v177 offset:256              // 00000000CB50: D9C40100 860000B1
	ds_read_b64_tr_b8 v[136:137], v177 offset:1280             // 00000000CB58: D9C40500 880000B1
	ds_read_b64_tr_b8 v[138:139], v177 offset:2304             // 00000000CB60: D9C40900 8A0000B1
	ds_read_b64_tr_b8 v[140:141], v177 offset:3328             // 00000000CB68: D9C40D00 8C0000B1
	s_add_u32 m0, s72, s97                                     // 00000000CB70: 807C6148
	s_nop 0                                                    // 00000000CB74: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000CB78: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[206:213], v[190:197], v[94:109]// 00000000CB80: D3AE005E 057B7DCE
	s_min_u32 s18, s17, s87                                    // 00000000CB88: 83925711
	s_add_u32 m0, s72, s83                                     // 00000000CB8C: 807C5348
	s_nop 0                                                    // 00000000CB90: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000CB94: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000CB9C: 80140914
	s_add_u32 s17, s17, s99                                    // 00000000CBA0: 80116311
	s_waitcnt lgkmcnt(8)                                       // 00000000CBA4: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[214:221], v[198:205], v[64:79]// 00000000CBA8: D3AE0040 05038DD6
	ds_read_b64_tr_b8 v[206:207], v177 offset:512              // 00000000CBB0: D9C40200 CE0000B1
	ds_read_b64_tr_b8 v[208:209], v177 offset:1536             // 00000000CBB8: D9C40600 D00000B1
	ds_read_b64_tr_b8 v[210:211], v177 offset:2560             // 00000000CBC0: D9C40A00 D20000B1
	ds_read_b64_tr_b8 v[212:213], v177 offset:3584             // 00000000CBC8: D9C40E00 D40000B1
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[222:229], v[198:205], v[94:109]// 00000000CBD0: D3AE005E 057B8DDE
	s_nop 3                                                    // 00000000CBD8: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000CBDC: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000CBE0: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000CBE8: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000CBF0: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000CBF8: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000CC00: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000CC08: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000CC10: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000CC18: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[112:119], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000CC1C: D3AC0000 000369AA D3AE0830 04C2A170
	ds_read_b64_tr_b8 v[112:113], v177 offset:768              // 00000000CC2C: D9C40300 700000B1
	ds_read_b64_tr_b8 v[114:115], v177 offset:1792             // 00000000CC34: D9C40700 720000B1
	ds_read_b64_tr_b8 v[116:117], v177 offset:2816             // 00000000CC3C: D9C40B00 740000B1
	ds_read_b64_tr_b8 v[118:119], v177 offset:3840             // 00000000CC44: D9C40F00 760000B1
	v_max_f32_e32 v89, v94, v95                                // 00000000CC4C: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000CC50: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000CC58: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000CC60: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000CC68: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000CC70: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000CC78: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000CC80: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000CC88: D3AC0000 000369AA D3AE0820 0482A186
	v_max_f32_e32 v88, v88, v89                                // 00000000CC98: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000CC9C: 7EB20358
	s_nop 1                                                    // 00000000CCA0: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000CCA4: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000CCA8: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000CCAC: 0AB2B18E
	v_max_f32_e32 v89, v111, v89                               // 00000000CCB0: 16B2B36F
	v_sub_f32_e32 v90, v89, v111                               // 00000000CCB4: 04B4DF59
	v_cmp_lt_f32_e32 vcc, s91, v90                             // 00000000CCB8: 7C82B45B
	s_waitcnt lgkmcnt(0)                                       // 00000000CCBC: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[206:213], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000CCC0: D3AC0000 000369AA D3AE0810 0442A1CE
	s_cmp_lg_u64 vcc, 0                                        // 00000000CCD0: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000CCD4: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000CCD8: 85158081
	v_cndmask_b32_e64 v178, v111, v89, s[18:19]                // 00000000CCDC: D10000B2 004AB36F
	v_fma_f32 v88, v88, v142, -v178                            // 00000000CCE4: D1CB0058 86CB1D58
	v_floor_f32_e32 v88, v88                                   // 00000000CCEC: 7EB03F58
	v_med3_f32 v88, v88, s89, 0                                // 00000000CCF0: D1D60058 0200B358
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000CCF8: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[112:119], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000CCFC: D3AC0000 000369AA D3AE0800 0402A170
	v_add_u32_e32 v180, 0x7f, v89                              // 00000000CD0C: 6968B2FF 0000007F
	v_add_f32_e32 v80, v178, v88                               // 00000000CD14: 02A0B1B2
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000CD18: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000CD20: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000CD24: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000CD2C: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD34: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD3C: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD44: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD4C: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD54: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD5C: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD64: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD6C: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD74: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD7C: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD84: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD8C: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD94: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CD9C: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000CDA4: BF068015
	s_cbranch_scc1 68                                          // 00000000CDA8: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26bc>
	v_sub_f32_e32 v96, v111, v178                              // 00000000CDAC: 04C1656F
	v_exp_f32_e32 v96, v96                                     // 00000000CDB0: 7EC04160
	s_nop 0                                                    // 00000000CDB4: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000CDB8: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000CDC0: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000CDC8: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000CDD0: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000CDD8: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000CDE0: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000CDE8: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000CDF0: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000CDF8: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000CE00: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000CE08: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000CE10: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000CE18: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000CE20: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000CE28: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000CE30: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000CE38: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000CE40: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000CE48: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000CE50: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000CE58: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000CE60: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000CE68: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000CE70: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000CE78: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000CE80: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000CE88: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000CE90: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000CE98: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000CEA0: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000CEA8: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000CEB0: D3B14000 0802C100
	v_mul_f32_e32 v179, v179, v96                              // 00000000CEB8: 0B66C1B3
	s_waitcnt vmcnt(3)                                         // 00000000CEBC: BF8C0F73
	s_barrier                                                  // 00000000CEC0: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000CEC4: 804E814E
	s_branch 64135                                             // 00000000CEC8: BF82FA87 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10e8>
	v_mov_b32_e32 v178, v111                                   // 00000000CECC: 7F64036F
	s_add_u32 s17, s78, s80                                    // 00000000CED0: 8011504E
	s_bitcmp1_b32 s17, 0                                       // 00000000CED4: BF0D8011
	s_cbranch_scc1 821                                         // 00000000CED8: BF850335 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x33b0>
	s_branch 4                                                 // 00000000CEDC: BF820004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26f0>
	v_mov_b32_e32 v178, v111                                   // 00000000CEE0: 7F64036F
	s_add_u32 s17, s78, s80                                    // 00000000CEE4: 8011504E
	s_bitcmp1_b32 s17, 0                                       // 00000000CEE8: BF0D8011
	s_cbranch_scc1 816                                         // 00000000CEEC: BF850330 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x33b0>
	s_add_u32 s17, s78, 1                                      // 00000000CEF0: 8011814E
	s_cmp_ge_u32 s17, s98                                      // 00000000CEF4: BF096211
	s_cbranch_scc1 1630                                        // 00000000CEF8: BF85065E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4074>
	s_cmp_ge_u32 s78, s77                                      // 00000000CEFC: BF094D4E
	s_cbranch_scc1 595                                         // 00000000CF00: BF850253 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3050>
	s_setprio 0                                                // 00000000CF04: BF8F0000
	v_exp_f32_e32 v64, v64                                     // 00000000CF08: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000CF0C: 7E824141
	s_add_u32 s17, s78, s80                                    // 00000000CF10: 8011504E
	s_add_u32 s18, s17, 1                                      // 00000000CF14: 80128111
	s_and_b32 s18, s18, 3                                      // 00000000CF18: 86128312
	v_mov_b32_e32 v138, 0                                      // 00000000CF1C: 7F140280
	s_lshl_b32 s18, s18, 14                                    // 00000000CF20: 8E128E12
	v_exp_f32_e32 v80, v80                                     // 00000000CF24: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000CF28: 7EA24151
	v_exp_f32_e32 v84, v84                                     // 00000000CF2C: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000CF30: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000CF34: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000CF38: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000CF3C: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000CF40: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000CF44: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000CF48: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000CF4C: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000CF50: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000CF54: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000CF58: 7E9A414D
	v_cvt_pk_fp8_f32 v138, v64, v65                            // 00000000CF5C: D2A2008A 00028340
	v_or_b32_e32 v64, s18, v161                                // 00000000CF64: 28814212
	v_or_b32_e32 v65, s18, v162                                // 00000000CF68: 28834412
	ds_read_b128 v[96:99], v64                                 // 00000000CF6C: D9FE0000 60000040
	ds_read_b128 v[100:103], v64 offset:16                     // 00000000CF74: D9FE0010 64000040
	ds_read_b128 v[206:209], v64 offset:8192                   // 00000000CF7C: D9FE2000 CE000040
	ds_read_b128 v[210:213], v64 offset:8208                   // 00000000CF84: D9FE2010 D2000040
	ds_read_b128 v[214:217], v65                               // 00000000CF8C: D9FE0000 D6000041
	ds_read_b128 v[218:221], v65 offset:16                     // 00000000CF94: D9FE0010 DA000041
	ds_read_b128 v[222:225], v65 offset:8192                   // 00000000CF9C: D9FE2000 DE000041
	ds_read_b128 v[226:229], v65 offset:8208                   // 00000000CFA4: D9FE2010 E2000041
	v_mov_b32_e32 v134, 0                                      // 00000000CFAC: 7F0C0280
	v_mov_b32_e32 v135, 0                                      // 00000000CFB0: 7F0E0280
	v_mov_b32_e32 v139, 0                                      // 00000000CFB4: 7F160280
	v_mov_b32_e32 v136, 0                                      // 00000000CFB8: 7F100280
	v_mov_b32_e32 v140, 0                                      // 00000000CFBC: 7F180280
	v_mov_b32_e32 v137, 0                                      // 00000000CFC0: 7F120280
	v_mov_b32_e32 v141, 0                                      // 00000000CFC4: 7F1A0280
	v_exp_f32_e32 v82, v82                                     // 00000000CFC8: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000CFCC: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000CFD0: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000CFD4: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000CFD8: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000CFDC: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000CFE0: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000CFE4: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000CFE8: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000CFEC: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000CFF0: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000CFF4: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000CFF8: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000CFFC: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000D000: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000D004: 7E9E414F
	v_cvt_pk_fp8_f32 v134, v80, v81                            // 00000000D008: D2A20086 0002A350
	v_cvt_pk_fp8_f32 v135, v84, v85                            // 00000000D010: D2A20087 0002AB54
	v_cvt_pk_fp8_f32 v139, v68, v69                            // 00000000D018: D2A2008B 00028B44
	v_cvt_pk_fp8_f32 v136, v88, v89                            // 00000000D020: D2A20088 0002B358
	v_cvt_pk_fp8_f32 v140, v72, v73                            // 00000000D028: D2A2008C 00029348
	v_cvt_pk_fp8_f32 v137, v92, v93                            // 00000000D030: D2A20089 0002BB5C
	v_cvt_pk_fp8_f32 v141, v76, v77                            // 00000000D038: D2A2008D 00029B4C
	v_cvt_pk_fp8_f32 v134, v82, v83 op_sel:[0,0,1]             // 00000000D040: D2A24086 0002A752
	v_cvt_pk_fp8_f32 v138, v66, v67 op_sel:[0,0,1]             // 00000000D048: D2A2408A 00028742
	v_cvt_pk_fp8_f32 v135, v86, v87 op_sel:[0,0,1]             // 00000000D050: D2A24087 0002AF56
	v_cvt_pk_fp8_f32 v139, v70, v71 op_sel:[0,0,1]             // 00000000D058: D2A2408B 00028F46
	v_cvt_pk_fp8_f32 v136, v90, v91 op_sel:[0,0,1]             // 00000000D060: D2A24088 0002B75A
	v_cvt_pk_fp8_f32 v140, v74, v75 op_sel:[0,0,1]             // 00000000D068: D2A2408C 0002974A
	v_cvt_pk_fp8_f32 v137, v94, v95 op_sel:[0,0,1]             // 00000000D070: D2A24089 0002BF5E
	v_cvt_pk_fp8_f32 v141, v78, v79 op_sel:[0,0,1]             // 00000000D078: D2A2408D 00029F4E
	s_barrier                                                  // 00000000D080: BF8A0000
	s_setprio 1                                                // 00000000D084: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[134:141], 0// 00000000D088: D3AD0040 02030D7E
	s_nop 11                                                   // 00000000D090: BF80000B
	v_lshlrev_b32_e32 v65, 23, v180                            // 00000000D094: 24836897
	v_fma_f32 v179, v64, v65, v179                             // 00000000D098: D1CB00B3 06CE8340
	s_waitcnt lgkmcnt(0)                                       // 00000000D0A0: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[96:103], v[182:189], 0// 00000000D0A4: D3AE0050 02036D60
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[206:213], v[182:189], 0// 00000000D0AC: D3AE006E 02036DCE
	v_or_b32_e32 v64, s18, v163                                // 00000000D0B4: 28814612
	ds_read_b128 v[66:69], v64                                 // 00000000D0B8: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 00000000D0C0: D9FE0010 46000040
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[214:221], v[190:197], v[80:95]// 00000000D0C8: D3AE0050 05437DD6
	ds_read_b128 v[96:99], v64 offset:8192                     // 00000000D0D0: D9FE2000 60000040
	ds_read_b128 v[100:103], v64 offset:8208                   // 00000000D0D8: D9FE2010 64000040
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[222:229], v[190:197], v[110:125]// 00000000D0E0: D3AE006E 05BB7DDE
	s_waitcnt lgkmcnt(0)                                       // 00000000D0E8: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[66:73], v[198:205], v[80:95]// 00000000D0EC: D3AE0050 05438D42
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[96:103], v[198:205], v[110:125]// 00000000D0F4: D3AE006E 05BB8D60
	s_lshl_b32 s18, s78, 6                                     // 00000000D0FC: 8E12864E
	s_add_u32 s20, s18, 64                                     // 00000000D100: 8014C012
	s_sub_u32 s18, s3, s20                                     // 00000000D104: 80921403
	s_sub_i32 s18, s18, 0                                      // 00000000D108: 81928012
	s_nop 1                                                    // 00000000D10C: BF800001
	v_mov_b32_e32 v64, v80                                     // 00000000D110: 7E800350
	v_mov_b32_e32 v65, v81                                     // 00000000D114: 7E820351
	v_mov_b32_e32 v66, v82                                     // 00000000D118: 7E840352
	v_mov_b32_e32 v67, v83                                     // 00000000D11C: 7E860353
	v_mov_b32_e32 v68, v84                                     // 00000000D120: 7E880354
	v_mov_b32_e32 v69, v85                                     // 00000000D124: 7E8A0355
	v_mov_b32_e32 v70, v86                                     // 00000000D128: 7E8C0356
	v_mov_b32_e32 v71, v87                                     // 00000000D12C: 7E8E0357
	v_mov_b32_e32 v72, v88                                     // 00000000D130: 7E900358
	v_mov_b32_e32 v73, v89                                     // 00000000D134: 7E920359
	v_mov_b32_e32 v74, v90                                     // 00000000D138: 7E94035A
	v_mov_b32_e32 v75, v91                                     // 00000000D13C: 7E96035B
	v_mov_b32_e32 v76, v92                                     // 00000000D140: 7E98035C
	v_mov_b32_e32 v77, v93                                     // 00000000D144: 7E9A035D
	v_mov_b32_e32 v78, v94                                     // 00000000D148: 7E9C035E
	s_cmp_ge_i32 s18, 32                                       // 00000000D14C: BF03A012
	v_mov_b32_e32 v79, v95                                     // 00000000D150: 7E9E035F
	s_cbranch_scc1 84                                          // 00000000D154: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2aa8>
	v_mov_b32_e32 v64, 0xff800000                              // 00000000D158: 7E8002FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000D160: BF048012
	v_mov_b32_e32 v65, v64                                     // 00000000D164: 7E820340
	v_mov_b32_e32 v66, v64                                     // 00000000D168: 7E840340
	v_mov_b32_e32 v67, v64                                     // 00000000D16C: 7E860340
	v_mov_b32_e32 v68, v64                                     // 00000000D170: 7E880340
	v_mov_b32_e32 v69, v64                                     // 00000000D174: 7E8A0340
	v_mov_b32_e32 v70, v64                                     // 00000000D178: 7E8C0340
	v_mov_b32_e32 v71, v64                                     // 00000000D17C: 7E8E0340
	v_mov_b32_e32 v72, v64                                     // 00000000D180: 7E900340
	v_mov_b32_e32 v73, v64                                     // 00000000D184: 7E920340
	v_mov_b32_e32 v74, v64                                     // 00000000D188: 7E940340
	v_mov_b32_e32 v75, v64                                     // 00000000D18C: 7E960340
	v_mov_b32_e32 v76, v64                                     // 00000000D190: 7E980340
	v_mov_b32_e32 v77, v64                                     // 00000000D194: 7E9A0340
	v_mov_b32_e32 v78, v64                                     // 00000000D198: 7E9C0340
	v_mov_b32_e32 v79, v64                                     // 00000000D19C: 7E9E0340
	s_cbranch_scc1 65                                          // 00000000D1A0: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2aa8>
	v_add_u32_e32 v79, s18, v171                               // 00000000D1A4: 689F5612
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 00000000D1A8: 7D889E80
	s_nop 1                                                    // 00000000D1AC: BF800001
	v_cndmask_b32_e64 v64, v80, v169, vcc                      // 00000000D1B0: D1000040 01AB5350
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 00000000D1B8: 7D889E81
	s_nop 1                                                    // 00000000D1BC: BF800001
	v_cndmask_b32_e64 v65, v81, v169, vcc                      // 00000000D1C0: D1000041 01AB5351
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 00000000D1C8: 7D889E82
	s_nop 1                                                    // 00000000D1CC: BF800001
	v_cndmask_b32_e64 v66, v82, v169, vcc                      // 00000000D1D0: D1000042 01AB5352
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 00000000D1D8: 7D889E83
	s_nop 1                                                    // 00000000D1DC: BF800001
	v_cndmask_b32_e64 v67, v83, v169, vcc                      // 00000000D1E0: D1000043 01AB5353
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 00000000D1E8: 7D889E88
	s_nop 1                                                    // 00000000D1EC: BF800001
	v_cndmask_b32_e64 v68, v84, v169, vcc                      // 00000000D1F0: D1000044 01AB5354
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 00000000D1F8: 7D889E89
	s_nop 1                                                    // 00000000D1FC: BF800001
	v_cndmask_b32_e64 v69, v85, v169, vcc                      // 00000000D200: D1000045 01AB5355
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 00000000D208: 7D889E8A
	s_nop 1                                                    // 00000000D20C: BF800001
	v_cndmask_b32_e64 v70, v86, v169, vcc                      // 00000000D210: D1000046 01AB5356
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 00000000D218: 7D889E8B
	s_nop 1                                                    // 00000000D21C: BF800001
	v_cndmask_b32_e64 v71, v87, v169, vcc                      // 00000000D220: D1000047 01AB5357
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 00000000D228: 7D889E90
	s_nop 1                                                    // 00000000D22C: BF800001
	v_cndmask_b32_e64 v72, v88, v169, vcc                      // 00000000D230: D1000048 01AB5358
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 00000000D238: 7D889E91
	s_nop 1                                                    // 00000000D23C: BF800001
	v_cndmask_b32_e64 v73, v89, v169, vcc                      // 00000000D240: D1000049 01AB5359
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 00000000D248: 7D889E92
	s_nop 1                                                    // 00000000D24C: BF800001
	v_cndmask_b32_e64 v74, v90, v169, vcc                      // 00000000D250: D100004A 01AB535A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 00000000D258: 7D889E93
	s_nop 1                                                    // 00000000D25C: BF800001
	v_cndmask_b32_e64 v75, v91, v169, vcc                      // 00000000D260: D100004B 01AB535B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 00000000D268: 7D889E98
	s_nop 1                                                    // 00000000D26C: BF800001
	v_cndmask_b32_e64 v76, v92, v169, vcc                      // 00000000D270: D100004C 01AB535C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 00000000D278: 7D889E99
	s_nop 1                                                    // 00000000D27C: BF800001
	v_cndmask_b32_e64 v77, v93, v169, vcc                      // 00000000D280: D100004D 01AB535D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 00000000D288: 7D889E9A
	s_nop 1                                                    // 00000000D28C: BF800001
	v_cndmask_b32_e64 v78, v94, v169, vcc                      // 00000000D290: D100004E 01AB535E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 00000000D298: 7D889E9B
	s_nop 1                                                    // 00000000D29C: BF800001
	v_cndmask_b32_e64 v79, v95, v169, vcc                      // 00000000D2A0: D100004F 01AB535F
	s_sub_u32 s18, s3, s20                                     // 00000000D2A8: 80921403
	s_sub_i32 s18, s18, 32                                     // 00000000D2AC: 8192A012
	v_mov_b32_e32 v94, v110                                    // 00000000D2B0: 7EBC036E
	v_mov_b32_e32 v95, v111                                    // 00000000D2B4: 7EBE036F
	v_mov_b32_e32 v96, v112                                    // 00000000D2B8: 7EC00370
	v_mov_b32_e32 v97, v113                                    // 00000000D2BC: 7EC20371
	v_mov_b32_e32 v98, v114                                    // 00000000D2C0: 7EC40372
	v_mov_b32_e32 v99, v115                                    // 00000000D2C4: 7EC60373
	v_mov_b32_e32 v100, v116                                   // 00000000D2C8: 7EC80374
	v_mov_b32_e32 v101, v117                                   // 00000000D2CC: 7ECA0375
	v_mov_b32_e32 v102, v118                                   // 00000000D2D0: 7ECC0376
	v_mov_b32_e32 v103, v119                                   // 00000000D2D4: 7ECE0377
	v_mov_b32_e32 v104, v120                                   // 00000000D2D8: 7ED00378
	v_mov_b32_e32 v105, v121                                   // 00000000D2DC: 7ED20379
	v_mov_b32_e32 v106, v122                                   // 00000000D2E0: 7ED4037A
	v_mov_b32_e32 v107, v123                                   // 00000000D2E4: 7ED6037B
	v_mov_b32_e32 v108, v124                                   // 00000000D2E8: 7ED8037C
	s_cmp_ge_i32 s18, 32                                       // 00000000D2EC: BF03A012
	v_mov_b32_e32 v109, v125                                   // 00000000D2F0: 7EDA037D
	s_cbranch_scc1 84                                          // 00000000D2F4: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2c48>
	v_mov_b32_e32 v94, 0xff800000                              // 00000000D2F8: 7EBC02FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000D300: BF048012
	v_mov_b32_e32 v95, v94                                     // 00000000D304: 7EBE035E
	v_mov_b32_e32 v96, v94                                     // 00000000D308: 7EC0035E
	v_mov_b32_e32 v97, v94                                     // 00000000D30C: 7EC2035E
	v_mov_b32_e32 v98, v94                                     // 00000000D310: 7EC4035E
	v_mov_b32_e32 v99, v94                                     // 00000000D314: 7EC6035E
	v_mov_b32_e32 v100, v94                                    // 00000000D318: 7EC8035E
	v_mov_b32_e32 v101, v94                                    // 00000000D31C: 7ECA035E
	v_mov_b32_e32 v102, v94                                    // 00000000D320: 7ECC035E
	v_mov_b32_e32 v103, v94                                    // 00000000D324: 7ECE035E
	v_mov_b32_e32 v104, v94                                    // 00000000D328: 7ED0035E
	v_mov_b32_e32 v105, v94                                    // 00000000D32C: 7ED2035E
	v_mov_b32_e32 v106, v94                                    // 00000000D330: 7ED4035E
	v_mov_b32_e32 v107, v94                                    // 00000000D334: 7ED6035E
	v_mov_b32_e32 v108, v94                                    // 00000000D338: 7ED8035E
	v_mov_b32_e32 v109, v94                                    // 00000000D33C: 7EDA035E
	s_cbranch_scc1 65                                          // 00000000D340: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2c48>
	v_add_u32_e32 v80, s18, v171                               // 00000000D344: 68A15612
	v_cmp_gt_i32_e32 vcc, 0, v80                               // 00000000D348: 7D88A080
	s_nop 1                                                    // 00000000D34C: BF800001
	v_cndmask_b32_e64 v94, v110, v169, vcc                     // 00000000D350: D100005E 01AB536E
	v_cmp_gt_i32_e32 vcc, 1, v80                               // 00000000D358: 7D88A081
	s_nop 1                                                    // 00000000D35C: BF800001
	v_cndmask_b32_e64 v95, v111, v169, vcc                     // 00000000D360: D100005F 01AB536F
	v_cmp_gt_i32_e32 vcc, 2, v80                               // 00000000D368: 7D88A082
	s_nop 1                                                    // 00000000D36C: BF800001
	v_cndmask_b32_e64 v96, v112, v169, vcc                     // 00000000D370: D1000060 01AB5370
	v_cmp_gt_i32_e32 vcc, 3, v80                               // 00000000D378: 7D88A083
	s_nop 1                                                    // 00000000D37C: BF800001
	v_cndmask_b32_e64 v97, v113, v169, vcc                     // 00000000D380: D1000061 01AB5371
	v_cmp_gt_i32_e32 vcc, 8, v80                               // 00000000D388: 7D88A088
	s_nop 1                                                    // 00000000D38C: BF800001
	v_cndmask_b32_e64 v98, v114, v169, vcc                     // 00000000D390: D1000062 01AB5372
	v_cmp_gt_i32_e32 vcc, 9, v80                               // 00000000D398: 7D88A089
	s_nop 1                                                    // 00000000D39C: BF800001
	v_cndmask_b32_e64 v99, v115, v169, vcc                     // 00000000D3A0: D1000063 01AB5373
	v_cmp_gt_i32_e32 vcc, 10, v80                              // 00000000D3A8: 7D88A08A
	s_nop 1                                                    // 00000000D3AC: BF800001
	v_cndmask_b32_e64 v100, v116, v169, vcc                    // 00000000D3B0: D1000064 01AB5374
	v_cmp_gt_i32_e32 vcc, 11, v80                              // 00000000D3B8: 7D88A08B
	s_nop 1                                                    // 00000000D3BC: BF800001
	v_cndmask_b32_e64 v101, v117, v169, vcc                    // 00000000D3C0: D1000065 01AB5375
	v_cmp_gt_i32_e32 vcc, 16, v80                              // 00000000D3C8: 7D88A090
	s_nop 1                                                    // 00000000D3CC: BF800001
	v_cndmask_b32_e64 v102, v118, v169, vcc                    // 00000000D3D0: D1000066 01AB5376
	v_cmp_gt_i32_e32 vcc, 17, v80                              // 00000000D3D8: 7D88A091
	s_nop 1                                                    // 00000000D3DC: BF800001
	v_cndmask_b32_e64 v103, v119, v169, vcc                    // 00000000D3E0: D1000067 01AB5377
	v_cmp_gt_i32_e32 vcc, 18, v80                              // 00000000D3E8: 7D88A092
	s_nop 1                                                    // 00000000D3EC: BF800001
	v_cndmask_b32_e64 v104, v120, v169, vcc                    // 00000000D3F0: D1000068 01AB5378
	v_cmp_gt_i32_e32 vcc, 19, v80                              // 00000000D3F8: 7D88A093
	s_nop 1                                                    // 00000000D3FC: BF800001
	v_cndmask_b32_e64 v105, v121, v169, vcc                    // 00000000D400: D1000069 01AB5379
	v_cmp_gt_i32_e32 vcc, 24, v80                              // 00000000D408: 7D88A098
	s_nop 1                                                    // 00000000D40C: BF800001
	v_cndmask_b32_e64 v106, v122, v169, vcc                    // 00000000D410: D100006A 01AB537A
	v_cmp_gt_i32_e32 vcc, 25, v80                              // 00000000D418: 7D88A099
	s_nop 1                                                    // 00000000D41C: BF800001
	v_cndmask_b32_e64 v107, v123, v169, vcc                    // 00000000D420: D100006B 01AB537B
	v_cmp_gt_i32_e32 vcc, 26, v80                              // 00000000D428: 7D88A09A
	s_nop 1                                                    // 00000000D42C: BF800001
	v_cndmask_b32_e64 v108, v124, v169, vcc                    // 00000000D430: D100006C 01AB537C
	v_cmp_gt_i32_e32 vcc, 27, v80                              // 00000000D438: 7D88A09B
	s_nop 1                                                    // 00000000D43C: BF800001
	v_cndmask_b32_e64 v109, v125, v169, vcc                    // 00000000D440: D100006D 01AB537D
	s_and_b32 s22, s17, 3                                      // 00000000D448: 86168311
	v_max_f32_e32 v80, v64, v65                                // 00000000D44C: 16A08340
	v_max3_f32 v80, v66, v67, v80                              // 00000000D450: D1D30050 05428742
	v_max3_f32 v80, v68, v69, v80                              // 00000000D458: D1D30050 05428B44
	v_max3_f32 v80, v70, v71, v80                              // 00000000D460: D1D30050 05428F46
	v_max3_f32 v80, v72, v73, v80                              // 00000000D468: D1D30050 05429348
	v_max3_f32 v80, v74, v75, v80                              // 00000000D470: D1D30050 0542974A
	v_max3_f32 v80, v76, v77, v80                              // 00000000D478: D1D30050 05429B4C
	v_max3_f32 v80, v78, v79, v80                              // 00000000D480: D1D30050 05429F4E
	v_max_f32_e32 v81, v94, v95                                // 00000000D488: 16A2BF5E
	v_max3_f32 v81, v96, v97, v81                              // 00000000D48C: D1D30051 0546C360
	v_max3_f32 v81, v98, v99, v81                              // 00000000D494: D1D30051 0546C762
	v_max3_f32 v81, v100, v101, v81                            // 00000000D49C: D1D30051 0546CB64
	v_max3_f32 v81, v102, v103, v81                            // 00000000D4A4: D1D30051 0546CF66
	v_max3_f32 v81, v104, v105, v81                            // 00000000D4AC: D1D30051 0546D368
	v_max3_f32 v81, v106, v107, v81                            // 00000000D4B4: D1D30051 0546D76A
	v_max3_f32 v81, v108, v109, v81                            // 00000000D4BC: D1D30051 0546DB6C
	v_max_f32_e32 v80, v80, v81                                // 00000000D4C4: 16A0A350
	v_mov_b32_e32 v81, v80                                     // 00000000D4C8: 7EA20350
	s_nop 1                                                    // 00000000D4CC: BF800001
	v_permlane32_swap_b32_e32 v80, v81                         // 00000000D4D0: 7EA0B551
	v_max_f32_e32 v80, v80, v81                                // 00000000D4D4: 16A0A350
	v_mul_f32_e32 v81, v142, v80                               // 00000000D4D8: 0AA2A18E
	v_max_f32_e32 v81, v178, v81                               // 00000000D4DC: 16A2A3B2
	v_sub_f32_e32 v82, v81, v178                               // 00000000D4E0: 04A56551
	v_cmp_lt_f32_e32 vcc, s91, v82                             // 00000000D4E4: 7C82A45B
	s_cmp_lg_u64 vcc, 0                                        // 00000000D4E8: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000D4EC: 859280C1
	s_and_b64 s[20:21], s[18:19], exec                         // 00000000D4F0: 86947E12
	s_cselect_b32 s20, 1, 0                                    // 00000000D4F4: 85148081
	s_cselect_b64 s[20:21], -1, 0                              // 00000000D4F8: 859480C1
	v_cndmask_b32_e64 v111, v178, v81, s[20:21]                // 00000000D4FC: D100006F 0052A3B2
	v_fma_f32 v80, v80, v142, -v111                            // 00000000D504: D1CB0050 85BF1D50
	v_floor_f32_e32 v80, v80                                   // 00000000D50C: 7EA03F50
	v_med3_f32 v80, v80, s89, 0                                // 00000000D510: D1D60050 0200B350
	v_cvt_i32_f32_e32 v81, v80                                 // 00000000D518: 7EA21150
	v_add_u32_e32 v112, 0x7f, v81                              // 00000000D51C: 68E0A2FF 0000007F
	v_lshlrev_b32_e32 v81, 23, v112                            // 00000000D524: 24A2E097
	v_add_f32_e32 v80, v111, v80                               // 00000000D528: 02A0A16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000D52C: 04DCA0FF 40C00000
	s_lshl_b32 s20, s17, 13                                    // 00000000D534: 8E148D11
	s_and_b32 s20, s20, 0x4000                                 // 00000000D538: 8614FF14 00004000
	s_bitcmp1_b32 s17, 0                                       // 00000000D540: BF0D8011
	s_cselect_b32 s17, s83, 0x10000                            // 00000000D544: 8511FF53 00010000
	s_or_b32 s20, s20, s17                                     // 00000000D54C: 87141114
	v_or_b32_e32 v80, s20, v173                                // 00000000D550: 28A15A14
	v_add_u32_e32 v80, v80, v172                               // 00000000D554: 68A15950
	s_waitcnt vmcnt(0)                                         // 00000000D558: BF8C0F70
	ds_read_b64_tr_b8 v[114:115], v80                          // 00000000D55C: D9C40000 72000050
	ds_read_b64_tr_b8 v[116:117], v80 offset:1024              // 00000000D564: D9C40400 74000050
	ds_read_b64_tr_b8 v[118:119], v80 offset:2048              // 00000000D56C: D9C40800 76000050
	ds_read_b64_tr_b8 v[120:121], v80 offset:3072              // 00000000D574: D9C40C00 78000050
	ds_read_b64_tr_b8 v[206:207], v80 offset:256               // 00000000D57C: D9C40100 CE000050
	ds_read_b64_tr_b8 v[208:209], v80 offset:1280              // 00000000D584: D9C40500 D0000050
	ds_read_b64_tr_b8 v[210:211], v80 offset:2304              // 00000000D58C: D9C40900 D2000050
	ds_read_b64_tr_b8 v[212:213], v80 offset:3328              // 00000000D594: D9C40D00 D4000050
	ds_read_b64_tr_b8 v[82:83], v80 offset:512                 // 00000000D59C: D9C40200 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1536                // 00000000D5A4: D9C40600 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2560                // 00000000D5AC: D9C40A00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3584                // 00000000D5B4: D9C40E00 58000050
	s_waitcnt lgkmcnt(4)                                       // 00000000D5BC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[114:121], v[134:141], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000D5C0: D3AC0000 000369AA D3AE0830 04C30D72
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[206:213], v[134:141], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000D5D0: D3AC0000 000369AA D3AE0820 04830DCE
	ds_read_b64_tr_b8 v[114:115], v80 offset:768               // 00000000D5E0: D9C40300 72000050
	ds_read_b64_tr_b8 v[116:117], v80 offset:1792              // 00000000D5E8: D9C40700 74000050
	ds_read_b64_tr_b8 v[118:119], v80 offset:2816              // 00000000D5F0: D9C40B00 76000050
	ds_read_b64_tr_b8 v[120:121], v80 offset:3840              // 00000000D5F8: D9C40F00 78000050
	s_add_u32 s20, s78, 4                                      // 00000000D600: 8014844E
	s_cmp_ge_u32 s20, s98                                      // 00000000D604: BF096214
	s_cbranch_scc1 13                                          // 00000000D608: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2e40>
	s_lshl_b32 s21, s22, 14                                    // 00000000D60C: 8E158E16
	s_mul_i32 s20, s20, s6                                     // 00000000D610: 92140614
	s_or_b32 s21, s21, s72                                     // 00000000D614: 87154815
	s_lshl_b32 s20, s20, 6                                     // 00000000D618: 8E148614
	s_mov_b32 m0, s21                                          // 00000000D61C: BEFC0015
	s_nop 0                                                    // 00000000D620: BF800000
	buffer_load_dwordx4 v164, s[68:71], s20 offen lds          // 00000000D624: E05D1000 141100A4
	s_or_b32 m0, s21, 0x2000                                   // 00000000D62C: 877CFF15 00002000
	s_nop 0                                                    // 00000000D634: BF800000
	buffer_load_dwordx4 v165, s[68:71], s20 offen lds          // 00000000D638: E05D1000 141100A5
	s_add_u32 s20, s78, 2                                      // 00000000D640: 8014824E
	s_cmp_ge_u32 s20, s98                                      // 00000000D644: BF096214
	s_cbranch_scc1 11                                          // 00000000D648: BF85000B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2e78>
	s_not_b32 s21, s22                                         // 00000000D64C: BE950416
	s_lshl_b32 s21, s21, 13                                    // 00000000D650: 8E158D15
	s_and_b32 s21, s21, 0x4000                                 // 00000000D654: 8615FF15 00004000
	s_mul_i32 s20, s20, s7                                     // 00000000D65C: 92140714
	s_add_u32 s17, s21, s17                                    // 00000000D660: 80111115
	s_lshl_b32 s20, s20, 6                                     // 00000000D664: 8E148614
	s_add_u32 m0, s17, s72                                     // 00000000D668: 807C4811
	s_nop 0                                                    // 00000000D66C: BF800000
	buffer_load_dwordx4 v166, s[64:67], s20 offen lds          // 00000000D670: E05D1000 141000A6
	s_waitcnt lgkmcnt(0)                                       // 00000000D678: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[134:141], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000D67C: D3AC0000 000369AA D3AE0810 04430D52
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[134:141], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000D68C: D3AC0000 000369AA D3AE0800 04030D72
	v_mov_b32_e32 v143, v142                                   // 00000000D69C: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000D6A0: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000D6A8: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6B0: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6B8: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6C0: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6C8: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6D0: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6D8: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6E0: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6E8: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6F0: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6F8: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D700: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D708: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D710: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D718: D3B00042 1DBB1D60
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000D720: 86927E12
	s_cbranch_scc0 68                                          // 00000000D724: BF840044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3038>
	v_sub_f32_e32 v96, v178, v111                              // 00000000D728: 04C0DFB2
	v_exp_f32_e32 v96, v96                                     // 00000000D72C: 7EC04160
	s_nop 0                                                    // 00000000D730: BF800000
	v_pk_mul_f32 v[62:63], v[96:97], v[62:63] op_sel_hi:[0,1]  // 00000000D734: D3B1403E 10027D60
	v_pk_mul_f32 v[60:61], v[96:97], v[60:61] op_sel_hi:[0,1]  // 00000000D73C: D3B1403C 10027960
	v_pk_mul_f32 v[58:59], v[96:97], v[58:59] op_sel_hi:[0,1]  // 00000000D744: D3B1403A 10027560
	v_pk_mul_f32 v[56:57], v[96:97], v[56:57] op_sel_hi:[0,1]  // 00000000D74C: D3B14038 10027160
	v_pk_mul_f32 v[54:55], v[96:97], v[54:55] op_sel_hi:[0,1]  // 00000000D754: D3B14036 10026D60
	v_pk_mul_f32 v[52:53], v[96:97], v[52:53] op_sel_hi:[0,1]  // 00000000D75C: D3B14034 10026960
	v_pk_mul_f32 v[50:51], v[96:97], v[50:51] op_sel_hi:[0,1]  // 00000000D764: D3B14032 10026560
	v_pk_mul_f32 v[48:49], v[96:97], v[48:49] op_sel_hi:[0,1]  // 00000000D76C: D3B14030 10026160
	v_pk_mul_f32 v[46:47], v[96:97], v[46:47] op_sel_hi:[0,1]  // 00000000D774: D3B1402E 10025D60
	v_pk_mul_f32 v[44:45], v[96:97], v[44:45] op_sel_hi:[0,1]  // 00000000D77C: D3B1402C 10025960
	v_pk_mul_f32 v[42:43], v[96:97], v[42:43] op_sel_hi:[0,1]  // 00000000D784: D3B1402A 10025560
	v_pk_mul_f32 v[40:41], v[96:97], v[40:41] op_sel_hi:[0,1]  // 00000000D78C: D3B14028 10025160
	v_pk_mul_f32 v[38:39], v[96:97], v[38:39] op_sel_hi:[0,1]  // 00000000D794: D3B14026 10024D60
	v_pk_mul_f32 v[36:37], v[96:97], v[36:37] op_sel_hi:[0,1]  // 00000000D79C: D3B14024 10024960
	v_pk_mul_f32 v[34:35], v[96:97], v[34:35] op_sel_hi:[0,1]  // 00000000D7A4: D3B14022 10024560
	v_pk_mul_f32 v[32:33], v[96:97], v[32:33] op_sel_hi:[0,1]  // 00000000D7AC: D3B14020 10024160
	v_pk_mul_f32 v[30:31], v[96:97], v[30:31] op_sel_hi:[0,1]  // 00000000D7B4: D3B1401E 10023D60
	v_pk_mul_f32 v[28:29], v[96:97], v[28:29] op_sel_hi:[0,1]  // 00000000D7BC: D3B1401C 10023960
	v_pk_mul_f32 v[26:27], v[96:97], v[26:27] op_sel_hi:[0,1]  // 00000000D7C4: D3B1401A 10023560
	v_pk_mul_f32 v[24:25], v[96:97], v[24:25] op_sel_hi:[0,1]  // 00000000D7CC: D3B14018 10023160
	v_pk_mul_f32 v[22:23], v[96:97], v[22:23] op_sel_hi:[0,1]  // 00000000D7D4: D3B14016 10022D60
	v_pk_mul_f32 v[20:21], v[96:97], v[20:21] op_sel_hi:[0,1]  // 00000000D7DC: D3B14014 10022960
	v_pk_mul_f32 v[18:19], v[96:97], v[18:19] op_sel_hi:[0,1]  // 00000000D7E4: D3B14012 10022560
	v_pk_mul_f32 v[16:17], v[96:97], v[16:17] op_sel_hi:[0,1]  // 00000000D7EC: D3B14010 10022160
	v_pk_mul_f32 v[14:15], v[96:97], v[14:15] op_sel_hi:[0,1]  // 00000000D7F4: D3B1400E 10021D60
	v_pk_mul_f32 v[12:13], v[96:97], v[12:13] op_sel_hi:[0,1]  // 00000000D7FC: D3B1400C 10021960
	v_pk_mul_f32 v[10:11], v[96:97], v[10:11] op_sel_hi:[0,1]  // 00000000D804: D3B1400A 10021560
	v_pk_mul_f32 v[8:9], v[96:97], v[8:9] op_sel_hi:[0,1]      // 00000000D80C: D3B14008 10021160
	v_pk_mul_f32 v[6:7], v[96:97], v[6:7] op_sel_hi:[0,1]      // 00000000D814: D3B14006 10020D60
	v_pk_mul_f32 v[4:5], v[96:97], v[4:5] op_sel_hi:[0,1]      // 00000000D81C: D3B14004 10020960
	v_pk_mul_f32 v[2:3], v[96:97], v[2:3] op_sel_hi:[0,1]      // 00000000D824: D3B14002 10020560
	v_pk_mul_f32 v[0:1], v[96:97], v[0:1] op_sel_hi:[0,1]      // 00000000D82C: D3B14000 10020160
	v_mul_f32_e32 v179, v179, v96                              // 00000000D834: 0B66C1B3
	s_waitcnt vmcnt(0)                                         // 00000000D838: BF8C0F70
	s_barrier                                                  // 00000000D83C: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000D840: 804E814E
	v_mov_b32_e32 v180, v112                                   // 00000000D844: 7F680370
	v_mov_b32_e32 v178, v111                                   // 00000000D848: 7F64036F
	s_branch 216                                               // 00000000D84C: BF8200D8 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x33b0>
	s_cmp_eq_u32 s78, s77                                      // 00000000D850: BF064D4E
	s_cbranch_scc0 174                                         // 00000000D854: BF8400AE <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3310>
	s_setprio 0                                                // 00000000D858: BF8F0000
	v_exp_f32_e32 v104, v80                                    // 00000000D85C: 7ED04150
	v_exp_f32_e32 v105, v81                                    // 00000000D860: 7ED24151
	v_exp_f32_e32 v108, v64                                    // 00000000D864: 7ED84140
	v_exp_f32_e32 v109, v65                                    // 00000000D868: 7EDA4141
	v_exp_f32_e32 v112, v84                                    // 00000000D86C: 7EE04154
	v_exp_f32_e32 v113, v85                                    // 00000000D870: 7EE24155
	v_exp_f32_e32 v116, v68                                    // 00000000D874: 7EE84144
	v_exp_f32_e32 v117, v69                                    // 00000000D878: 7EEA4145
	v_exp_f32_e32 v120, v88                                    // 00000000D87C: 7EF04158
	v_exp_f32_e32 v121, v89                                    // 00000000D880: 7EF24159
	v_exp_f32_e32 v124, v72                                    // 00000000D884: 7EF84148
	v_exp_f32_e32 v125, v73                                    // 00000000D888: 7EFA4149
	v_exp_f32_e32 v136, v92                                    // 00000000D88C: 7F10415C
	v_exp_f32_e32 v137, v93                                    // 00000000D890: 7F12415D
	v_exp_f32_e32 v140, v76                                    // 00000000D894: 7F18414C
	v_exp_f32_e32 v141, v77                                    // 00000000D898: 7F1A414D
	v_mov_b32_e32 v96, 0                                       // 00000000D89C: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000D8A0: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000D8A4: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000D8A8: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000D8AC: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000D8B0: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000D8B4: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000D8B8: 7ECE0280
	v_exp_f32_e32 v106, v82                                    // 00000000D8BC: 7ED44152
	v_exp_f32_e32 v107, v83                                    // 00000000D8C0: 7ED64153
	v_exp_f32_e32 v110, v66                                    // 00000000D8C4: 7EDC4142
	v_exp_f32_e32 v111, v67                                    // 00000000D8C8: 7EDE4143
	v_exp_f32_e32 v114, v86                                    // 00000000D8CC: 7EE44156
	v_exp_f32_e32 v115, v87                                    // 00000000D8D0: 7EE64157
	v_exp_f32_e32 v118, v70                                    // 00000000D8D4: 7EEC4146
	v_exp_f32_e32 v119, v71                                    // 00000000D8D8: 7EEE4147
	v_exp_f32_e32 v122, v90                                    // 00000000D8DC: 7EF4415A
	v_exp_f32_e32 v123, v91                                    // 00000000D8E0: 7EF6415B
	v_exp_f32_e32 v134, v74                                    // 00000000D8E4: 7F0C414A
	v_exp_f32_e32 v135, v75                                    // 00000000D8E8: 7F0E414B
	v_exp_f32_e32 v138, v94                                    // 00000000D8EC: 7F14415E
	v_exp_f32_e32 v139, v95                                    // 00000000D8F0: 7F16415F
	v_exp_f32_e32 v143, v78                                    // 00000000D8F4: 7F1E414E
	v_exp_f32_e32 v181, v79                                    // 00000000D8F8: 7F6A414F
	v_cvt_pk_fp8_f32 v96, v104, v105                           // 00000000D8FC: D2A20060 0002D368
	v_cvt_pk_fp8_f32 v100, v108, v109                          // 00000000D904: D2A20064 0002DB6C
	v_cvt_pk_fp8_f32 v97, v112, v113                           // 00000000D90C: D2A20061 0002E370
	v_cvt_pk_fp8_f32 v101, v116, v117                          // 00000000D914: D2A20065 0002EB74
	v_cvt_pk_fp8_f32 v98, v120, v121                           // 00000000D91C: D2A20062 0002F378
	v_cvt_pk_fp8_f32 v102, v124, v125                          // 00000000D924: D2A20066 0002FB7C
	v_cvt_pk_fp8_f32 v99, v136, v137                           // 00000000D92C: D2A20063 00031388
	v_cvt_pk_fp8_f32 v103, v140, v141                          // 00000000D934: D2A20067 00031B8C
	v_cvt_pk_fp8_f32 v96, v106, v107 op_sel:[0,0,1]            // 00000000D93C: D2A24060 0002D76A
	v_cvt_pk_fp8_f32 v100, v110, v111 op_sel:[0,0,1]           // 00000000D944: D2A24064 0002DF6E
	v_cvt_pk_fp8_f32 v97, v114, v115 op_sel:[0,0,1]            // 00000000D94C: D2A24061 0002E772
	v_cvt_pk_fp8_f32 v101, v118, v119 op_sel:[0,0,1]           // 00000000D954: D2A24065 0002EF76
	v_cvt_pk_fp8_f32 v98, v122, v123 op_sel:[0,0,1]            // 00000000D95C: D2A24062 0002F77A
	v_cvt_pk_fp8_f32 v102, v134, v135 op_sel:[0,0,1]           // 00000000D964: D2A24066 00030F86
	v_cvt_pk_fp8_f32 v99, v138, v139 op_sel:[0,0,1]            // 00000000D96C: D2A24063 0003178A
	v_cvt_pk_fp8_f32 v103, v143, v181 op_sel:[0,0,1]           // 00000000D974: D2A24067 00036B8F
	s_barrier                                                  // 00000000D97C: BF8A0000
	s_setprio 1                                                // 00000000D980: BF8F0001
	s_waitcnt vmcnt(0)                                         // 00000000D984: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[104:107], v[126:133], v[96:103], 0// 00000000D988: D3AD0068 0202C17E
	s_add_u32 s19, s77, s80                                    // 00000000D990: 8013504D
	s_bfe_u32 s18, s19, 0x10001                                // 00000000D994: 9292FF13 00010001
	s_lshl_b32 s20, s18, 14                                    // 00000000D99C: 8E148E12
	s_bitcmp1_b32 s19, 0                                       // 00000000D9A0: BF0D8013
	s_cselect_b32 s17, s83, 0x10000                            // 00000000D9A4: 8511FF53 00010000
	s_or_b32 s20, s20, s17                                     // 00000000D9AC: 87141114
	s_nop 5                                                    // 00000000D9B0: BF800005
	v_or_b32_e32 v105, s20, v173                               // 00000000D9B4: 28D35A14
	v_add_u32_e32 v105, v105, v172                             // 00000000D9B8: 68D35969
	ds_read_b64_tr_b8 v[114:115], v105                         // 00000000D9BC: D9C40000 72000069
	ds_read_b64_tr_b8 v[116:117], v105 offset:1024             // 00000000D9C4: D9C40400 74000069
	ds_read_b64_tr_b8 v[118:119], v105 offset:2048             // 00000000D9CC: D9C40800 76000069
	ds_read_b64_tr_b8 v[120:121], v105 offset:3072             // 00000000D9D4: D9C40C00 78000069
	ds_read_b64_tr_b8 v[134:135], v105 offset:256              // 00000000D9DC: D9C40100 86000069
	ds_read_b64_tr_b8 v[136:137], v105 offset:1280             // 00000000D9E4: D9C40500 88000069
	ds_read_b64_tr_b8 v[138:139], v105 offset:2304             // 00000000D9EC: D9C40900 8A000069
	ds_read_b64_tr_b8 v[140:141], v105 offset:3328             // 00000000D9F4: D9C40D00 8C000069
	ds_read_b64_tr_b8 v[106:107], v105 offset:512              // 00000000D9FC: D9C40200 6A000069
	ds_read_b64_tr_b8 v[108:109], v105 offset:1536             // 00000000DA04: D9C40600 6C000069
	ds_read_b64_tr_b8 v[110:111], v105 offset:2560             // 00000000DA0C: D9C40A00 6E000069
	ds_read_b64_tr_b8 v[112:113], v105 offset:3584             // 00000000DA14: D9C40E00 70000069
	s_waitcnt lgkmcnt(4)                                       // 00000000DA1C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[114:121], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000DA20: D3AC0000 000369AA D3AE0830 04C2C172
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000DA30: D3AC0000 000369AA D3AE0820 0482C186
	ds_read_b64_tr_b8 v[114:115], v105 offset:768              // 00000000DA40: D9C40300 72000069
	ds_read_b64_tr_b8 v[116:117], v105 offset:1792             // 00000000DA48: D9C40700 74000069
	ds_read_b64_tr_b8 v[118:119], v105 offset:2816             // 00000000DA50: D9C40B00 76000069
	ds_read_b64_tr_b8 v[120:121], v105 offset:3840             // 00000000DA58: D9C40F00 78000069
	s_add_u32 s20, s77, 4                                      // 00000000DA60: 8014844D
	s_cmp_ge_u32 s20, s98                                      // 00000000DA64: BF096214
	s_cbranch_scc1 14                                          // 00000000DA68: BF85000E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x32a4>
	s_and_b32 s19, s19, 3                                      // 00000000DA6C: 86138313
	s_lshl_b32 s19, s19, 14                                    // 00000000DA70: 8E138E13
	s_mul_i32 s20, s20, s6                                     // 00000000DA74: 92140614
	s_or_b32 s19, s19, s72                                     // 00000000DA78: 87134813
	s_lshl_b32 s20, s20, 6                                     // 00000000DA7C: 8E148614
	s_mov_b32 m0, s19                                          // 00000000DA80: BEFC0013
	s_nop 0                                                    // 00000000DA84: BF800000
	buffer_load_dwordx4 v164, s[68:71], s20 offen lds          // 00000000DA88: E05D1000 141100A4
	s_or_b32 m0, s19, 0x2000                                   // 00000000DA90: 877CFF13 00002000
	s_nop 0                                                    // 00000000DA98: BF800000
	buffer_load_dwordx4 v165, s[68:71], s20 offen lds          // 00000000DA9C: E05D1000 141100A5
	s_add_u32 s19, s77, 2                                      // 00000000DAA4: 8013824D
	s_cmp_ge_u32 s19, s98                                      // 00000000DAA8: BF096213
	s_cbranch_scc1 9                                           // 00000000DAAC: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x32d4>
	s_xor_b32 s18, s18, 1                                      // 00000000DAB0: 88128112
	s_lshl_b32 s18, s18, 14                                    // 00000000DAB4: 8E128E12
	s_mul_i32 s19, s19, s7                                     // 00000000DAB8: 92130713
	s_add_u32 s17, s18, s17                                    // 00000000DABC: 80111112
	s_lshl_b32 s19, s19, 6                                     // 00000000DAC0: 8E138613
	s_add_u32 m0, s17, s72                                     // 00000000DAC4: 807C4811
	s_nop 0                                                    // 00000000DAC8: BF800000
	buffer_load_dwordx4 v166, s[64:67], s19 offen lds          // 00000000DACC: E05D1000 131000A6
	v_lshlrev_b32_e32 v105, 23, v180                           // 00000000DAD4: 24D36897
	v_fma_f32 v179, v104, v105, v179                           // 00000000DAD8: D1CB00B3 06CED368
	s_waitcnt lgkmcnt(0)                                       // 00000000DAE0: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[106:113], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000DAE4: D3AC0000 000369AA D3AE0810 0442C16A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000DAF4: D3AC0000 000369AA D3AE0800 0402C172
	s_barrier                                                  // 00000000DB04: BF8A0000
	s_add_u32 s78, s77, 1                                      // 00000000DB08: 804E814D
	s_branch 40                                                // 00000000DB0C: BF820028 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x33b0>
	s_barrier                                                  // 00000000DB10: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000DB14: BF8C0F70
	s_add_u32 s17, s78, 4                                      // 00000000DB18: 8011844E
	s_cmp_ge_u32 s17, s98                                      // 00000000DB1C: BF096211
	s_cbranch_scc1 15                                          // 00000000DB20: BF85000F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3360>
	s_add_u32 s18, s78, s80                                    // 00000000DB24: 8012504E
	s_and_b32 s18, s18, 3                                      // 00000000DB28: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000DB2C: 8E128E12
	s_mul_i32 s17, s17, s6                                     // 00000000DB30: 92110611
	s_or_b32 s18, s18, s72                                     // 00000000DB34: 87124812
	s_lshl_b32 s17, s17, 6                                     // 00000000DB38: 8E118611
	s_mov_b32 m0, s18                                          // 00000000DB3C: BEFC0012
	s_nop 0                                                    // 00000000DB40: BF800000
	buffer_load_dwordx4 v164, s[68:71], s17 offen lds          // 00000000DB44: E05D1000 111100A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000DB4C: 877CFF12 00002000
	s_nop 0                                                    // 00000000DB54: BF800000
	buffer_load_dwordx4 v165, s[68:71], s17 offen lds          // 00000000DB58: E05D1000 111100A5
	s_add_u32 s17, s78, 2                                      // 00000000DB60: 8011824E
	s_cmp_ge_u32 s17, s98                                      // 00000000DB64: BF096211
	s_cbranch_scc1 15                                          // 00000000DB68: BF85000F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x33a8>
	s_add_u32 s18, s78, s80                                    // 00000000DB6C: 8012504E
	s_not_b32 s19, s18                                         // 00000000DB70: BE930412
	s_lshl_b32 s19, s19, 13                                    // 00000000DB74: 8E138D13
	s_and_b32 s19, s19, 0x4000                                 // 00000000DB78: 8613FF13 00004000
	s_bitcmp1_b32 s18, 0                                       // 00000000DB80: BF0D8012
	s_cselect_b32 s18, s83, 0x10000                            // 00000000DB84: 8512FF53 00010000
	s_mul_i32 s17, s17, s7                                     // 00000000DB8C: 92110711
	s_or_b32 s18, s19, s18                                     // 00000000DB90: 87121213
	s_lshl_b32 s17, s17, 6                                     // 00000000DB94: 8E118611
	s_or_b32 m0, s18, s72                                      // 00000000DB98: 877C4812
	s_nop 0                                                    // 00000000DB9C: BF800000
	buffer_load_dwordx4 v166, s[64:67], s17 offen lds          // 00000000DBA0: E05D1000 111000A6
	s_barrier                                                  // 00000000DBA8: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000DBAC: 804E814E
	s_add_u32 s17, s78, 1                                      // 00000000DBB0: 8011814E
	s_cmp_ge_u32 s17, s98                                      // 00000000DBB4: BF096211
	s_cbranch_scc1 835                                         // 00000000DBB8: BF850343 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x40c8>
	s_cmp_ge_u32 s78, s77                                      // 00000000DBBC: BF094D4E
	s_cbranch_scc1 595                                         // 00000000DBC0: BF850253 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d10>
	s_setprio 0                                                // 00000000DBC4: BF8F0000
	v_exp_f32_e32 v64, v64                                     // 00000000DBC8: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000DBCC: 7E824141
	s_add_u32 s17, s78, s80                                    // 00000000DBD0: 8011504E
	s_add_u32 s18, s17, 1                                      // 00000000DBD4: 80128111
	s_and_b32 s18, s18, 3                                      // 00000000DBD8: 86128312
	v_mov_b32_e32 v138, 0                                      // 00000000DBDC: 7F140280
	s_lshl_b32 s18, s18, 14                                    // 00000000DBE0: 8E128E12
	v_exp_f32_e32 v80, v80                                     // 00000000DBE4: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000DBE8: 7EA24151
	v_exp_f32_e32 v84, v84                                     // 00000000DBEC: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000DBF0: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000DBF4: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000DBF8: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000DBFC: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000DC00: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000DC04: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000DC08: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000DC0C: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000DC10: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000DC14: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000DC18: 7E9A414D
	v_cvt_pk_fp8_f32 v138, v64, v65                            // 00000000DC1C: D2A2008A 00028340
	v_or_b32_e32 v64, s18, v161                                // 00000000DC24: 28814212
	v_or_b32_e32 v65, s18, v162                                // 00000000DC28: 28834412
	ds_read_b128 v[96:99], v64                                 // 00000000DC2C: D9FE0000 60000040
	ds_read_b128 v[100:103], v64 offset:16                     // 00000000DC34: D9FE0010 64000040
	ds_read_b128 v[206:209], v64 offset:8192                   // 00000000DC3C: D9FE2000 CE000040
	ds_read_b128 v[210:213], v64 offset:8208                   // 00000000DC44: D9FE2010 D2000040
	ds_read_b128 v[214:217], v65                               // 00000000DC4C: D9FE0000 D6000041
	ds_read_b128 v[218:221], v65 offset:16                     // 00000000DC54: D9FE0010 DA000041
	ds_read_b128 v[222:225], v65 offset:8192                   // 00000000DC5C: D9FE2000 DE000041
	ds_read_b128 v[226:229], v65 offset:8208                   // 00000000DC64: D9FE2010 E2000041
	v_mov_b32_e32 v134, 0                                      // 00000000DC6C: 7F0C0280
	v_mov_b32_e32 v135, 0                                      // 00000000DC70: 7F0E0280
	v_mov_b32_e32 v139, 0                                      // 00000000DC74: 7F160280
	v_mov_b32_e32 v136, 0                                      // 00000000DC78: 7F100280
	v_mov_b32_e32 v140, 0                                      // 00000000DC7C: 7F180280
	v_mov_b32_e32 v137, 0                                      // 00000000DC80: 7F120280
	v_mov_b32_e32 v141, 0                                      // 00000000DC84: 7F1A0280
	v_exp_f32_e32 v82, v82                                     // 00000000DC88: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000DC8C: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000DC90: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000DC94: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000DC98: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000DC9C: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000DCA0: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000DCA4: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000DCA8: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000DCAC: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000DCB0: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000DCB4: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000DCB8: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000DCBC: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000DCC0: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000DCC4: 7E9E414F
	v_cvt_pk_fp8_f32 v134, v80, v81                            // 00000000DCC8: D2A20086 0002A350
	v_cvt_pk_fp8_f32 v135, v84, v85                            // 00000000DCD0: D2A20087 0002AB54
	v_cvt_pk_fp8_f32 v139, v68, v69                            // 00000000DCD8: D2A2008B 00028B44
	v_cvt_pk_fp8_f32 v136, v88, v89                            // 00000000DCE0: D2A20088 0002B358
	v_cvt_pk_fp8_f32 v140, v72, v73                            // 00000000DCE8: D2A2008C 00029348
	v_cvt_pk_fp8_f32 v137, v92, v93                            // 00000000DCF0: D2A20089 0002BB5C
	v_cvt_pk_fp8_f32 v141, v76, v77                            // 00000000DCF8: D2A2008D 00029B4C
	v_cvt_pk_fp8_f32 v134, v82, v83 op_sel:[0,0,1]             // 00000000DD00: D2A24086 0002A752
	v_cvt_pk_fp8_f32 v138, v66, v67 op_sel:[0,0,1]             // 00000000DD08: D2A2408A 00028742
	v_cvt_pk_fp8_f32 v135, v86, v87 op_sel:[0,0,1]             // 00000000DD10: D2A24087 0002AF56
	v_cvt_pk_fp8_f32 v139, v70, v71 op_sel:[0,0,1]             // 00000000DD18: D2A2408B 00028F46
	v_cvt_pk_fp8_f32 v136, v90, v91 op_sel:[0,0,1]             // 00000000DD20: D2A24088 0002B75A
	v_cvt_pk_fp8_f32 v140, v74, v75 op_sel:[0,0,1]             // 00000000DD28: D2A2408C 0002974A
	v_cvt_pk_fp8_f32 v137, v94, v95 op_sel:[0,0,1]             // 00000000DD30: D2A24089 0002BF5E
	v_cvt_pk_fp8_f32 v141, v78, v79 op_sel:[0,0,1]             // 00000000DD38: D2A2408D 00029F4E
	s_barrier                                                  // 00000000DD40: BF8A0000
	s_setprio 1                                                // 00000000DD44: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[134:141], 0// 00000000DD48: D3AD0040 02030D7E
	s_nop 11                                                   // 00000000DD50: BF80000B
	v_lshlrev_b32_e32 v65, 23, v180                            // 00000000DD54: 24836897
	v_fma_f32 v179, v64, v65, v179                             // 00000000DD58: D1CB00B3 06CE8340
	s_waitcnt lgkmcnt(0)                                       // 00000000DD60: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[96:103], v[182:189], 0// 00000000DD64: D3AE0050 02036D60
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[206:213], v[182:189], 0// 00000000DD6C: D3AE006E 02036DCE
	v_or_b32_e32 v64, s18, v163                                // 00000000DD74: 28814612
	ds_read_b128 v[66:69], v64                                 // 00000000DD78: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 00000000DD80: D9FE0010 46000040
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[214:221], v[190:197], v[80:95]// 00000000DD88: D3AE0050 05437DD6
	ds_read_b128 v[96:99], v64 offset:8192                     // 00000000DD90: D9FE2000 60000040
	ds_read_b128 v[100:103], v64 offset:8208                   // 00000000DD98: D9FE2010 64000040
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[222:229], v[190:197], v[110:125]// 00000000DDA0: D3AE006E 05BB7DDE
	s_waitcnt lgkmcnt(0)                                       // 00000000DDA8: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[66:73], v[198:205], v[80:95]// 00000000DDAC: D3AE0050 05438D42
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[96:103], v[198:205], v[110:125]// 00000000DDB4: D3AE006E 05BB8D60
	s_lshl_b32 s18, s78, 6                                     // 00000000DDBC: 8E12864E
	s_add_u32 s20, s18, 64                                     // 00000000DDC0: 8014C012
	s_sub_u32 s18, s3, s20                                     // 00000000DDC4: 80921403
	s_sub_i32 s18, s18, 0                                      // 00000000DDC8: 81928012
	s_nop 1                                                    // 00000000DDCC: BF800001
	v_mov_b32_e32 v64, v80                                     // 00000000DDD0: 7E800350
	v_mov_b32_e32 v65, v81                                     // 00000000DDD4: 7E820351
	v_mov_b32_e32 v66, v82                                     // 00000000DDD8: 7E840352
	v_mov_b32_e32 v67, v83                                     // 00000000DDDC: 7E860353
	v_mov_b32_e32 v68, v84                                     // 00000000DDE0: 7E880354
	v_mov_b32_e32 v69, v85                                     // 00000000DDE4: 7E8A0355
	v_mov_b32_e32 v70, v86                                     // 00000000DDE8: 7E8C0356
	v_mov_b32_e32 v71, v87                                     // 00000000DDEC: 7E8E0357
	v_mov_b32_e32 v72, v88                                     // 00000000DDF0: 7E900358
	v_mov_b32_e32 v73, v89                                     // 00000000DDF4: 7E920359
	v_mov_b32_e32 v74, v90                                     // 00000000DDF8: 7E94035A
	v_mov_b32_e32 v75, v91                                     // 00000000DDFC: 7E96035B
	v_mov_b32_e32 v76, v92                                     // 00000000DE00: 7E98035C
	v_mov_b32_e32 v77, v93                                     // 00000000DE04: 7E9A035D
	v_mov_b32_e32 v78, v94                                     // 00000000DE08: 7E9C035E
	s_cmp_ge_i32 s18, 32                                       // 00000000DE0C: BF03A012
	v_mov_b32_e32 v79, v95                                     // 00000000DE10: 7E9E035F
	s_cbranch_scc1 84                                          // 00000000DE14: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3768>
	v_mov_b32_e32 v64, 0xff800000                              // 00000000DE18: 7E8002FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000DE20: BF048012
	v_mov_b32_e32 v65, v64                                     // 00000000DE24: 7E820340
	v_mov_b32_e32 v66, v64                                     // 00000000DE28: 7E840340
	v_mov_b32_e32 v67, v64                                     // 00000000DE2C: 7E860340
	v_mov_b32_e32 v68, v64                                     // 00000000DE30: 7E880340
	v_mov_b32_e32 v69, v64                                     // 00000000DE34: 7E8A0340
	v_mov_b32_e32 v70, v64                                     // 00000000DE38: 7E8C0340
	v_mov_b32_e32 v71, v64                                     // 00000000DE3C: 7E8E0340
	v_mov_b32_e32 v72, v64                                     // 00000000DE40: 7E900340
	v_mov_b32_e32 v73, v64                                     // 00000000DE44: 7E920340
	v_mov_b32_e32 v74, v64                                     // 00000000DE48: 7E940340
	v_mov_b32_e32 v75, v64                                     // 00000000DE4C: 7E960340
	v_mov_b32_e32 v76, v64                                     // 00000000DE50: 7E980340
	v_mov_b32_e32 v77, v64                                     // 00000000DE54: 7E9A0340
	v_mov_b32_e32 v78, v64                                     // 00000000DE58: 7E9C0340
	v_mov_b32_e32 v79, v64                                     // 00000000DE5C: 7E9E0340
	s_cbranch_scc1 65                                          // 00000000DE60: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3768>
	v_add_u32_e32 v79, s18, v171                               // 00000000DE64: 689F5612
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 00000000DE68: 7D889E80
	s_nop 1                                                    // 00000000DE6C: BF800001
	v_cndmask_b32_e64 v64, v80, v169, vcc                      // 00000000DE70: D1000040 01AB5350
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 00000000DE78: 7D889E81
	s_nop 1                                                    // 00000000DE7C: BF800001
	v_cndmask_b32_e64 v65, v81, v169, vcc                      // 00000000DE80: D1000041 01AB5351
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 00000000DE88: 7D889E82
	s_nop 1                                                    // 00000000DE8C: BF800001
	v_cndmask_b32_e64 v66, v82, v169, vcc                      // 00000000DE90: D1000042 01AB5352
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 00000000DE98: 7D889E83
	s_nop 1                                                    // 00000000DE9C: BF800001
	v_cndmask_b32_e64 v67, v83, v169, vcc                      // 00000000DEA0: D1000043 01AB5353
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 00000000DEA8: 7D889E88
	s_nop 1                                                    // 00000000DEAC: BF800001
	v_cndmask_b32_e64 v68, v84, v169, vcc                      // 00000000DEB0: D1000044 01AB5354
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 00000000DEB8: 7D889E89
	s_nop 1                                                    // 00000000DEBC: BF800001
	v_cndmask_b32_e64 v69, v85, v169, vcc                      // 00000000DEC0: D1000045 01AB5355
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 00000000DEC8: 7D889E8A
	s_nop 1                                                    // 00000000DECC: BF800001
	v_cndmask_b32_e64 v70, v86, v169, vcc                      // 00000000DED0: D1000046 01AB5356
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 00000000DED8: 7D889E8B
	s_nop 1                                                    // 00000000DEDC: BF800001
	v_cndmask_b32_e64 v71, v87, v169, vcc                      // 00000000DEE0: D1000047 01AB5357
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 00000000DEE8: 7D889E90
	s_nop 1                                                    // 00000000DEEC: BF800001
	v_cndmask_b32_e64 v72, v88, v169, vcc                      // 00000000DEF0: D1000048 01AB5358
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 00000000DEF8: 7D889E91
	s_nop 1                                                    // 00000000DEFC: BF800001
	v_cndmask_b32_e64 v73, v89, v169, vcc                      // 00000000DF00: D1000049 01AB5359
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 00000000DF08: 7D889E92
	s_nop 1                                                    // 00000000DF0C: BF800001
	v_cndmask_b32_e64 v74, v90, v169, vcc                      // 00000000DF10: D100004A 01AB535A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 00000000DF18: 7D889E93
	s_nop 1                                                    // 00000000DF1C: BF800001
	v_cndmask_b32_e64 v75, v91, v169, vcc                      // 00000000DF20: D100004B 01AB535B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 00000000DF28: 7D889E98
	s_nop 1                                                    // 00000000DF2C: BF800001
	v_cndmask_b32_e64 v76, v92, v169, vcc                      // 00000000DF30: D100004C 01AB535C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 00000000DF38: 7D889E99
	s_nop 1                                                    // 00000000DF3C: BF800001
	v_cndmask_b32_e64 v77, v93, v169, vcc                      // 00000000DF40: D100004D 01AB535D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 00000000DF48: 7D889E9A
	s_nop 1                                                    // 00000000DF4C: BF800001
	v_cndmask_b32_e64 v78, v94, v169, vcc                      // 00000000DF50: D100004E 01AB535E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 00000000DF58: 7D889E9B
	s_nop 1                                                    // 00000000DF5C: BF800001
	v_cndmask_b32_e64 v79, v95, v169, vcc                      // 00000000DF60: D100004F 01AB535F
	s_sub_u32 s18, s3, s20                                     // 00000000DF68: 80921403
	s_sub_i32 s18, s18, 32                                     // 00000000DF6C: 8192A012
	v_mov_b32_e32 v94, v110                                    // 00000000DF70: 7EBC036E
	v_mov_b32_e32 v95, v111                                    // 00000000DF74: 7EBE036F
	v_mov_b32_e32 v96, v112                                    // 00000000DF78: 7EC00370
	v_mov_b32_e32 v97, v113                                    // 00000000DF7C: 7EC20371
	v_mov_b32_e32 v98, v114                                    // 00000000DF80: 7EC40372
	v_mov_b32_e32 v99, v115                                    // 00000000DF84: 7EC60373
	v_mov_b32_e32 v100, v116                                   // 00000000DF88: 7EC80374
	v_mov_b32_e32 v101, v117                                   // 00000000DF8C: 7ECA0375
	v_mov_b32_e32 v102, v118                                   // 00000000DF90: 7ECC0376
	v_mov_b32_e32 v103, v119                                   // 00000000DF94: 7ECE0377
	v_mov_b32_e32 v104, v120                                   // 00000000DF98: 7ED00378
	v_mov_b32_e32 v105, v121                                   // 00000000DF9C: 7ED20379
	v_mov_b32_e32 v106, v122                                   // 00000000DFA0: 7ED4037A
	v_mov_b32_e32 v107, v123                                   // 00000000DFA4: 7ED6037B
	v_mov_b32_e32 v108, v124                                   // 00000000DFA8: 7ED8037C
	s_cmp_ge_i32 s18, 32                                       // 00000000DFAC: BF03A012
	v_mov_b32_e32 v109, v125                                   // 00000000DFB0: 7EDA037D
	s_cbranch_scc1 84                                          // 00000000DFB4: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3908>
	v_mov_b32_e32 v94, 0xff800000                              // 00000000DFB8: 7EBC02FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000DFC0: BF048012
	v_mov_b32_e32 v95, v94                                     // 00000000DFC4: 7EBE035E
	v_mov_b32_e32 v96, v94                                     // 00000000DFC8: 7EC0035E
	v_mov_b32_e32 v97, v94                                     // 00000000DFCC: 7EC2035E
	v_mov_b32_e32 v98, v94                                     // 00000000DFD0: 7EC4035E
	v_mov_b32_e32 v99, v94                                     // 00000000DFD4: 7EC6035E
	v_mov_b32_e32 v100, v94                                    // 00000000DFD8: 7EC8035E
	v_mov_b32_e32 v101, v94                                    // 00000000DFDC: 7ECA035E
	v_mov_b32_e32 v102, v94                                    // 00000000DFE0: 7ECC035E
	v_mov_b32_e32 v103, v94                                    // 00000000DFE4: 7ECE035E
	v_mov_b32_e32 v104, v94                                    // 00000000DFE8: 7ED0035E
	v_mov_b32_e32 v105, v94                                    // 00000000DFEC: 7ED2035E
	v_mov_b32_e32 v106, v94                                    // 00000000DFF0: 7ED4035E
	v_mov_b32_e32 v107, v94                                    // 00000000DFF4: 7ED6035E
	v_mov_b32_e32 v108, v94                                    // 00000000DFF8: 7ED8035E
	v_mov_b32_e32 v109, v94                                    // 00000000DFFC: 7EDA035E
	s_cbranch_scc1 65                                          // 00000000E000: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3908>
	v_add_u32_e32 v80, s18, v171                               // 00000000E004: 68A15612
	v_cmp_gt_i32_e32 vcc, 0, v80                               // 00000000E008: 7D88A080
	s_nop 1                                                    // 00000000E00C: BF800001
	v_cndmask_b32_e64 v94, v110, v169, vcc                     // 00000000E010: D100005E 01AB536E
	v_cmp_gt_i32_e32 vcc, 1, v80                               // 00000000E018: 7D88A081
	s_nop 1                                                    // 00000000E01C: BF800001
	v_cndmask_b32_e64 v95, v111, v169, vcc                     // 00000000E020: D100005F 01AB536F
	v_cmp_gt_i32_e32 vcc, 2, v80                               // 00000000E028: 7D88A082
	s_nop 1                                                    // 00000000E02C: BF800001
	v_cndmask_b32_e64 v96, v112, v169, vcc                     // 00000000E030: D1000060 01AB5370
	v_cmp_gt_i32_e32 vcc, 3, v80                               // 00000000E038: 7D88A083
	s_nop 1                                                    // 00000000E03C: BF800001
	v_cndmask_b32_e64 v97, v113, v169, vcc                     // 00000000E040: D1000061 01AB5371
	v_cmp_gt_i32_e32 vcc, 8, v80                               // 00000000E048: 7D88A088
	s_nop 1                                                    // 00000000E04C: BF800001
	v_cndmask_b32_e64 v98, v114, v169, vcc                     // 00000000E050: D1000062 01AB5372
	v_cmp_gt_i32_e32 vcc, 9, v80                               // 00000000E058: 7D88A089
	s_nop 1                                                    // 00000000E05C: BF800001
	v_cndmask_b32_e64 v99, v115, v169, vcc                     // 00000000E060: D1000063 01AB5373
	v_cmp_gt_i32_e32 vcc, 10, v80                              // 00000000E068: 7D88A08A
	s_nop 1                                                    // 00000000E06C: BF800001
	v_cndmask_b32_e64 v100, v116, v169, vcc                    // 00000000E070: D1000064 01AB5374
	v_cmp_gt_i32_e32 vcc, 11, v80                              // 00000000E078: 7D88A08B
	s_nop 1                                                    // 00000000E07C: BF800001
	v_cndmask_b32_e64 v101, v117, v169, vcc                    // 00000000E080: D1000065 01AB5375
	v_cmp_gt_i32_e32 vcc, 16, v80                              // 00000000E088: 7D88A090
	s_nop 1                                                    // 00000000E08C: BF800001
	v_cndmask_b32_e64 v102, v118, v169, vcc                    // 00000000E090: D1000066 01AB5376
	v_cmp_gt_i32_e32 vcc, 17, v80                              // 00000000E098: 7D88A091
	s_nop 1                                                    // 00000000E09C: BF800001
	v_cndmask_b32_e64 v103, v119, v169, vcc                    // 00000000E0A0: D1000067 01AB5377
	v_cmp_gt_i32_e32 vcc, 18, v80                              // 00000000E0A8: 7D88A092
	s_nop 1                                                    // 00000000E0AC: BF800001
	v_cndmask_b32_e64 v104, v120, v169, vcc                    // 00000000E0B0: D1000068 01AB5378
	v_cmp_gt_i32_e32 vcc, 19, v80                              // 00000000E0B8: 7D88A093
	s_nop 1                                                    // 00000000E0BC: BF800001
	v_cndmask_b32_e64 v105, v121, v169, vcc                    // 00000000E0C0: D1000069 01AB5379
	v_cmp_gt_i32_e32 vcc, 24, v80                              // 00000000E0C8: 7D88A098
	s_nop 1                                                    // 00000000E0CC: BF800001
	v_cndmask_b32_e64 v106, v122, v169, vcc                    // 00000000E0D0: D100006A 01AB537A
	v_cmp_gt_i32_e32 vcc, 25, v80                              // 00000000E0D8: 7D88A099
	s_nop 1                                                    // 00000000E0DC: BF800001
	v_cndmask_b32_e64 v107, v123, v169, vcc                    // 00000000E0E0: D100006B 01AB537B
	v_cmp_gt_i32_e32 vcc, 26, v80                              // 00000000E0E8: 7D88A09A
	s_nop 1                                                    // 00000000E0EC: BF800001
	v_cndmask_b32_e64 v108, v124, v169, vcc                    // 00000000E0F0: D100006C 01AB537C
	v_cmp_gt_i32_e32 vcc, 27, v80                              // 00000000E0F8: 7D88A09B
	s_nop 1                                                    // 00000000E0FC: BF800001
	v_cndmask_b32_e64 v109, v125, v169, vcc                    // 00000000E100: D100006D 01AB537D
	s_and_b32 s22, s17, 3                                      // 00000000E108: 86168311
	v_max_f32_e32 v80, v64, v65                                // 00000000E10C: 16A08340
	v_max3_f32 v80, v66, v67, v80                              // 00000000E110: D1D30050 05428742
	v_max3_f32 v80, v68, v69, v80                              // 00000000E118: D1D30050 05428B44
	v_max3_f32 v80, v70, v71, v80                              // 00000000E120: D1D30050 05428F46
	v_max3_f32 v80, v72, v73, v80                              // 00000000E128: D1D30050 05429348
	v_max3_f32 v80, v74, v75, v80                              // 00000000E130: D1D30050 0542974A
	v_max3_f32 v80, v76, v77, v80                              // 00000000E138: D1D30050 05429B4C
	v_max3_f32 v80, v78, v79, v80                              // 00000000E140: D1D30050 05429F4E
	v_max_f32_e32 v81, v94, v95                                // 00000000E148: 16A2BF5E
	v_max3_f32 v81, v96, v97, v81                              // 00000000E14C: D1D30051 0546C360
	v_max3_f32 v81, v98, v99, v81                              // 00000000E154: D1D30051 0546C762
	v_max3_f32 v81, v100, v101, v81                            // 00000000E15C: D1D30051 0546CB64
	v_max3_f32 v81, v102, v103, v81                            // 00000000E164: D1D30051 0546CF66
	v_max3_f32 v81, v104, v105, v81                            // 00000000E16C: D1D30051 0546D368
	v_max3_f32 v81, v106, v107, v81                            // 00000000E174: D1D30051 0546D76A
	v_max3_f32 v81, v108, v109, v81                            // 00000000E17C: D1D30051 0546DB6C
	v_max_f32_e32 v80, v80, v81                                // 00000000E184: 16A0A350
	v_mov_b32_e32 v81, v80                                     // 00000000E188: 7EA20350
	s_nop 1                                                    // 00000000E18C: BF800001
	v_permlane32_swap_b32_e32 v80, v81                         // 00000000E190: 7EA0B551
	v_max_f32_e32 v80, v80, v81                                // 00000000E194: 16A0A350
	v_mul_f32_e32 v81, v142, v80                               // 00000000E198: 0AA2A18E
	v_max_f32_e32 v81, v178, v81                               // 00000000E19C: 16A2A3B2
	v_sub_f32_e32 v82, v81, v178                               // 00000000E1A0: 04A56551
	v_cmp_lt_f32_e32 vcc, s91, v82                             // 00000000E1A4: 7C82A45B
	s_cmp_lg_u64 vcc, 0                                        // 00000000E1A8: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000E1AC: 859280C1
	s_and_b64 s[20:21], s[18:19], exec                         // 00000000E1B0: 86947E12
	s_cselect_b32 s20, 1, 0                                    // 00000000E1B4: 85148081
	s_cselect_b64 s[20:21], -1, 0                              // 00000000E1B8: 859480C1
	v_cndmask_b32_e64 v111, v178, v81, s[20:21]                // 00000000E1BC: D100006F 0052A3B2
	v_fma_f32 v80, v80, v142, -v111                            // 00000000E1C4: D1CB0050 85BF1D50
	v_floor_f32_e32 v80, v80                                   // 00000000E1CC: 7EA03F50
	v_med3_f32 v80, v80, s89, 0                                // 00000000E1D0: D1D60050 0200B350
	v_cvt_i32_f32_e32 v81, v80                                 // 00000000E1D8: 7EA21150
	v_add_u32_e32 v112, 0x7f, v81                              // 00000000E1DC: 68E0A2FF 0000007F
	v_lshlrev_b32_e32 v81, 23, v112                            // 00000000E1E4: 24A2E097
	v_add_f32_e32 v80, v111, v80                               // 00000000E1E8: 02A0A16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000E1EC: 04DCA0FF 40C00000
	s_lshl_b32 s20, s17, 13                                    // 00000000E1F4: 8E148D11
	s_and_b32 s20, s20, 0x4000                                 // 00000000E1F8: 8614FF14 00004000
	s_bitcmp1_b32 s17, 0                                       // 00000000E200: BF0D8011
	s_cselect_b32 s17, s83, 0x10000                            // 00000000E204: 8511FF53 00010000
	s_or_b32 s20, s20, s17                                     // 00000000E20C: 87141114
	v_or_b32_e32 v80, s20, v173                                // 00000000E210: 28A15A14
	v_add_u32_e32 v80, v80, v172                               // 00000000E214: 68A15950
	s_waitcnt vmcnt(0)                                         // 00000000E218: BF8C0F70
	ds_read_b64_tr_b8 v[114:115], v80                          // 00000000E21C: D9C40000 72000050
	ds_read_b64_tr_b8 v[116:117], v80 offset:1024              // 00000000E224: D9C40400 74000050
	ds_read_b64_tr_b8 v[118:119], v80 offset:2048              // 00000000E22C: D9C40800 76000050
	ds_read_b64_tr_b8 v[120:121], v80 offset:3072              // 00000000E234: D9C40C00 78000050
	ds_read_b64_tr_b8 v[206:207], v80 offset:256               // 00000000E23C: D9C40100 CE000050
	ds_read_b64_tr_b8 v[208:209], v80 offset:1280              // 00000000E244: D9C40500 D0000050
	ds_read_b64_tr_b8 v[210:211], v80 offset:2304              // 00000000E24C: D9C40900 D2000050
	ds_read_b64_tr_b8 v[212:213], v80 offset:3328              // 00000000E254: D9C40D00 D4000050
	ds_read_b64_tr_b8 v[82:83], v80 offset:512                 // 00000000E25C: D9C40200 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1536                // 00000000E264: D9C40600 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2560                // 00000000E26C: D9C40A00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3584                // 00000000E274: D9C40E00 58000050
	s_waitcnt lgkmcnt(4)                                       // 00000000E27C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[114:121], v[134:141], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000E280: D3AC0000 000369AA D3AE0830 04C30D72
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[206:213], v[134:141], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000E290: D3AC0000 000369AA D3AE0820 04830DCE
	ds_read_b64_tr_b8 v[114:115], v80 offset:768               // 00000000E2A0: D9C40300 72000050
	ds_read_b64_tr_b8 v[116:117], v80 offset:1792              // 00000000E2A8: D9C40700 74000050
	ds_read_b64_tr_b8 v[118:119], v80 offset:2816              // 00000000E2B0: D9C40B00 76000050
	ds_read_b64_tr_b8 v[120:121], v80 offset:3840              // 00000000E2B8: D9C40F00 78000050
	s_add_u32 s20, s78, 4                                      // 00000000E2C0: 8014844E
	s_cmp_ge_u32 s20, s98                                      // 00000000E2C4: BF096214
	s_cbranch_scc1 13                                          // 00000000E2C8: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3b00>
	s_lshl_b32 s21, s22, 14                                    // 00000000E2CC: 8E158E16
	s_mul_i32 s20, s20, s6                                     // 00000000E2D0: 92140614
	s_or_b32 s21, s21, s72                                     // 00000000E2D4: 87154815
	s_lshl_b32 s20, s20, 6                                     // 00000000E2D8: 8E148614
	s_mov_b32 m0, s21                                          // 00000000E2DC: BEFC0015
	s_nop 0                                                    // 00000000E2E0: BF800000
	buffer_load_dwordx4 v164, s[68:71], s20 offen lds          // 00000000E2E4: E05D1000 141100A4
	s_or_b32 m0, s21, 0x2000                                   // 00000000E2EC: 877CFF15 00002000
	s_nop 0                                                    // 00000000E2F4: BF800000
	buffer_load_dwordx4 v165, s[68:71], s20 offen lds          // 00000000E2F8: E05D1000 141100A5
	s_add_u32 s20, s78, 2                                      // 00000000E300: 8014824E
	s_cmp_ge_u32 s20, s98                                      // 00000000E304: BF096214
	s_cbranch_scc1 11                                          // 00000000E308: BF85000B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3b38>
	s_not_b32 s21, s22                                         // 00000000E30C: BE950416
	s_lshl_b32 s21, s21, 13                                    // 00000000E310: 8E158D15
	s_and_b32 s21, s21, 0x4000                                 // 00000000E314: 8615FF15 00004000
	s_mul_i32 s20, s20, s7                                     // 00000000E31C: 92140714
	s_add_u32 s17, s21, s17                                    // 00000000E320: 80111115
	s_lshl_b32 s20, s20, 6                                     // 00000000E324: 8E148614
	s_add_u32 m0, s17, s72                                     // 00000000E328: 807C4811
	s_nop 0                                                    // 00000000E32C: BF800000
	buffer_load_dwordx4 v166, s[64:67], s20 offen lds          // 00000000E330: E05D1000 141000A6
	s_waitcnt lgkmcnt(0)                                       // 00000000E338: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[134:141], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000E33C: D3AC0000 000369AA D3AE0810 04430D52
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[134:141], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000E34C: D3AC0000 000369AA D3AE0800 04030D72
	v_mov_b32_e32 v143, v142                                   // 00000000E35C: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000E360: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000E368: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E370: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E378: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E380: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E388: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E390: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E398: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E3A0: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E3A8: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E3B0: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E3B8: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E3C0: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E3C8: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E3D0: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E3D8: D3B00042 1DBB1D60
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000E3E0: 86927E12
	s_cbranch_scc0 68                                          // 00000000E3E4: BF840044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3cf8>
	v_sub_f32_e32 v96, v178, v111                              // 00000000E3E8: 04C0DFB2
	v_exp_f32_e32 v96, v96                                     // 00000000E3EC: 7EC04160
	s_nop 0                                                    // 00000000E3F0: BF800000
	v_pk_mul_f32 v[62:63], v[96:97], v[62:63] op_sel_hi:[0,1]  // 00000000E3F4: D3B1403E 10027D60
	v_pk_mul_f32 v[60:61], v[96:97], v[60:61] op_sel_hi:[0,1]  // 00000000E3FC: D3B1403C 10027960
	v_pk_mul_f32 v[58:59], v[96:97], v[58:59] op_sel_hi:[0,1]  // 00000000E404: D3B1403A 10027560
	v_pk_mul_f32 v[56:57], v[96:97], v[56:57] op_sel_hi:[0,1]  // 00000000E40C: D3B14038 10027160
	v_pk_mul_f32 v[54:55], v[96:97], v[54:55] op_sel_hi:[0,1]  // 00000000E414: D3B14036 10026D60
	v_pk_mul_f32 v[52:53], v[96:97], v[52:53] op_sel_hi:[0,1]  // 00000000E41C: D3B14034 10026960
	v_pk_mul_f32 v[50:51], v[96:97], v[50:51] op_sel_hi:[0,1]  // 00000000E424: D3B14032 10026560
	v_pk_mul_f32 v[48:49], v[96:97], v[48:49] op_sel_hi:[0,1]  // 00000000E42C: D3B14030 10026160
	v_pk_mul_f32 v[46:47], v[96:97], v[46:47] op_sel_hi:[0,1]  // 00000000E434: D3B1402E 10025D60
	v_pk_mul_f32 v[44:45], v[96:97], v[44:45] op_sel_hi:[0,1]  // 00000000E43C: D3B1402C 10025960
	v_pk_mul_f32 v[42:43], v[96:97], v[42:43] op_sel_hi:[0,1]  // 00000000E444: D3B1402A 10025560
	v_pk_mul_f32 v[40:41], v[96:97], v[40:41] op_sel_hi:[0,1]  // 00000000E44C: D3B14028 10025160
	v_pk_mul_f32 v[38:39], v[96:97], v[38:39] op_sel_hi:[0,1]  // 00000000E454: D3B14026 10024D60
	v_pk_mul_f32 v[36:37], v[96:97], v[36:37] op_sel_hi:[0,1]  // 00000000E45C: D3B14024 10024960
	v_pk_mul_f32 v[34:35], v[96:97], v[34:35] op_sel_hi:[0,1]  // 00000000E464: D3B14022 10024560
	v_pk_mul_f32 v[32:33], v[96:97], v[32:33] op_sel_hi:[0,1]  // 00000000E46C: D3B14020 10024160
	v_pk_mul_f32 v[30:31], v[96:97], v[30:31] op_sel_hi:[0,1]  // 00000000E474: D3B1401E 10023D60
	v_pk_mul_f32 v[28:29], v[96:97], v[28:29] op_sel_hi:[0,1]  // 00000000E47C: D3B1401C 10023960
	v_pk_mul_f32 v[26:27], v[96:97], v[26:27] op_sel_hi:[0,1]  // 00000000E484: D3B1401A 10023560
	v_pk_mul_f32 v[24:25], v[96:97], v[24:25] op_sel_hi:[0,1]  // 00000000E48C: D3B14018 10023160
	v_pk_mul_f32 v[22:23], v[96:97], v[22:23] op_sel_hi:[0,1]  // 00000000E494: D3B14016 10022D60
	v_pk_mul_f32 v[20:21], v[96:97], v[20:21] op_sel_hi:[0,1]  // 00000000E49C: D3B14014 10022960
	v_pk_mul_f32 v[18:19], v[96:97], v[18:19] op_sel_hi:[0,1]  // 00000000E4A4: D3B14012 10022560
	v_pk_mul_f32 v[16:17], v[96:97], v[16:17] op_sel_hi:[0,1]  // 00000000E4AC: D3B14010 10022160
	v_pk_mul_f32 v[14:15], v[96:97], v[14:15] op_sel_hi:[0,1]  // 00000000E4B4: D3B1400E 10021D60
	v_pk_mul_f32 v[12:13], v[96:97], v[12:13] op_sel_hi:[0,1]  // 00000000E4BC: D3B1400C 10021960
	v_pk_mul_f32 v[10:11], v[96:97], v[10:11] op_sel_hi:[0,1]  // 00000000E4C4: D3B1400A 10021560
	v_pk_mul_f32 v[8:9], v[96:97], v[8:9] op_sel_hi:[0,1]      // 00000000E4CC: D3B14008 10021160
	v_pk_mul_f32 v[6:7], v[96:97], v[6:7] op_sel_hi:[0,1]      // 00000000E4D4: D3B14006 10020D60
	v_pk_mul_f32 v[4:5], v[96:97], v[4:5] op_sel_hi:[0,1]      // 00000000E4DC: D3B14004 10020960
	v_pk_mul_f32 v[2:3], v[96:97], v[2:3] op_sel_hi:[0,1]      // 00000000E4E4: D3B14002 10020560
	v_pk_mul_f32 v[0:1], v[96:97], v[0:1] op_sel_hi:[0,1]      // 00000000E4EC: D3B14000 10020160
	v_mul_f32_e32 v179, v179, v96                              // 00000000E4F4: 0B66C1B3
	s_waitcnt vmcnt(0)                                         // 00000000E4F8: BF8C0F70
	s_barrier                                                  // 00000000E4FC: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000E500: 804E814E
	v_mov_b32_e32 v180, v112                                   // 00000000E504: 7F680370
	v_mov_b32_e32 v178, v111                                   // 00000000E508: 7F64036F
	s_branch 64120                                             // 00000000E50C: BF82FA78 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26f0>
	s_cmp_eq_u32 s78, s77                                      // 00000000E510: BF064D4E
	s_cbranch_scc0 174                                         // 00000000E514: BF8400AE <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3fd0>
	s_setprio 0                                                // 00000000E518: BF8F0000
	v_exp_f32_e32 v104, v80                                    // 00000000E51C: 7ED04150
	v_exp_f32_e32 v105, v81                                    // 00000000E520: 7ED24151
	v_exp_f32_e32 v108, v64                                    // 00000000E524: 7ED84140
	v_exp_f32_e32 v109, v65                                    // 00000000E528: 7EDA4141
	v_exp_f32_e32 v112, v84                                    // 00000000E52C: 7EE04154
	v_exp_f32_e32 v113, v85                                    // 00000000E530: 7EE24155
	v_exp_f32_e32 v116, v68                                    // 00000000E534: 7EE84144
	v_exp_f32_e32 v117, v69                                    // 00000000E538: 7EEA4145
	v_exp_f32_e32 v120, v88                                    // 00000000E53C: 7EF04158
	v_exp_f32_e32 v121, v89                                    // 00000000E540: 7EF24159
	v_exp_f32_e32 v124, v72                                    // 00000000E544: 7EF84148
	v_exp_f32_e32 v125, v73                                    // 00000000E548: 7EFA4149
	v_exp_f32_e32 v136, v92                                    // 00000000E54C: 7F10415C
	v_exp_f32_e32 v137, v93                                    // 00000000E550: 7F12415D
	v_exp_f32_e32 v140, v76                                    // 00000000E554: 7F18414C
	v_exp_f32_e32 v141, v77                                    // 00000000E558: 7F1A414D
	v_mov_b32_e32 v96, 0                                       // 00000000E55C: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000E560: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000E564: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000E568: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000E56C: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000E570: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000E574: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000E578: 7ECE0280
	v_exp_f32_e32 v106, v82                                    // 00000000E57C: 7ED44152
	v_exp_f32_e32 v107, v83                                    // 00000000E580: 7ED64153
	v_exp_f32_e32 v110, v66                                    // 00000000E584: 7EDC4142
	v_exp_f32_e32 v111, v67                                    // 00000000E588: 7EDE4143
	v_exp_f32_e32 v114, v86                                    // 00000000E58C: 7EE44156
	v_exp_f32_e32 v115, v87                                    // 00000000E590: 7EE64157
	v_exp_f32_e32 v118, v70                                    // 00000000E594: 7EEC4146
	v_exp_f32_e32 v119, v71                                    // 00000000E598: 7EEE4147
	v_exp_f32_e32 v122, v90                                    // 00000000E59C: 7EF4415A
	v_exp_f32_e32 v123, v91                                    // 00000000E5A0: 7EF6415B
	v_exp_f32_e32 v134, v74                                    // 00000000E5A4: 7F0C414A
	v_exp_f32_e32 v135, v75                                    // 00000000E5A8: 7F0E414B
	v_exp_f32_e32 v138, v94                                    // 00000000E5AC: 7F14415E
	v_exp_f32_e32 v139, v95                                    // 00000000E5B0: 7F16415F
	v_exp_f32_e32 v143, v78                                    // 00000000E5B4: 7F1E414E
	v_exp_f32_e32 v181, v79                                    // 00000000E5B8: 7F6A414F
	v_cvt_pk_fp8_f32 v96, v104, v105                           // 00000000E5BC: D2A20060 0002D368
	v_cvt_pk_fp8_f32 v100, v108, v109                          // 00000000E5C4: D2A20064 0002DB6C
	v_cvt_pk_fp8_f32 v97, v112, v113                           // 00000000E5CC: D2A20061 0002E370
	v_cvt_pk_fp8_f32 v101, v116, v117                          // 00000000E5D4: D2A20065 0002EB74
	v_cvt_pk_fp8_f32 v98, v120, v121                           // 00000000E5DC: D2A20062 0002F378
	v_cvt_pk_fp8_f32 v102, v124, v125                          // 00000000E5E4: D2A20066 0002FB7C
	v_cvt_pk_fp8_f32 v99, v136, v137                           // 00000000E5EC: D2A20063 00031388
	v_cvt_pk_fp8_f32 v103, v140, v141                          // 00000000E5F4: D2A20067 00031B8C
	v_cvt_pk_fp8_f32 v96, v106, v107 op_sel:[0,0,1]            // 00000000E5FC: D2A24060 0002D76A
	v_cvt_pk_fp8_f32 v100, v110, v111 op_sel:[0,0,1]           // 00000000E604: D2A24064 0002DF6E
	v_cvt_pk_fp8_f32 v97, v114, v115 op_sel:[0,0,1]            // 00000000E60C: D2A24061 0002E772
	v_cvt_pk_fp8_f32 v101, v118, v119 op_sel:[0,0,1]           // 00000000E614: D2A24065 0002EF76
	v_cvt_pk_fp8_f32 v98, v122, v123 op_sel:[0,0,1]            // 00000000E61C: D2A24062 0002F77A
	v_cvt_pk_fp8_f32 v102, v134, v135 op_sel:[0,0,1]           // 00000000E624: D2A24066 00030F86
	v_cvt_pk_fp8_f32 v99, v138, v139 op_sel:[0,0,1]            // 00000000E62C: D2A24063 0003178A
	v_cvt_pk_fp8_f32 v103, v143, v181 op_sel:[0,0,1]           // 00000000E634: D2A24067 00036B8F
	s_barrier                                                  // 00000000E63C: BF8A0000
	s_setprio 1                                                // 00000000E640: BF8F0001
	s_waitcnt vmcnt(0)                                         // 00000000E644: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[104:107], v[126:133], v[96:103], 0// 00000000E648: D3AD0068 0202C17E
	s_add_u32 s19, s77, s80                                    // 00000000E650: 8013504D
	s_bfe_u32 s18, s19, 0x10001                                // 00000000E654: 9292FF13 00010001
	s_lshl_b32 s20, s18, 14                                    // 00000000E65C: 8E148E12
	s_bitcmp1_b32 s19, 0                                       // 00000000E660: BF0D8013
	s_cselect_b32 s17, s83, 0x10000                            // 00000000E664: 8511FF53 00010000
	s_or_b32 s20, s20, s17                                     // 00000000E66C: 87141114
	s_nop 5                                                    // 00000000E670: BF800005
	v_or_b32_e32 v105, s20, v173                               // 00000000E674: 28D35A14
	v_add_u32_e32 v105, v105, v172                             // 00000000E678: 68D35969
	ds_read_b64_tr_b8 v[114:115], v105                         // 00000000E67C: D9C40000 72000069
	ds_read_b64_tr_b8 v[116:117], v105 offset:1024             // 00000000E684: D9C40400 74000069
	ds_read_b64_tr_b8 v[118:119], v105 offset:2048             // 00000000E68C: D9C40800 76000069
	ds_read_b64_tr_b8 v[120:121], v105 offset:3072             // 00000000E694: D9C40C00 78000069
	ds_read_b64_tr_b8 v[134:135], v105 offset:256              // 00000000E69C: D9C40100 86000069
	ds_read_b64_tr_b8 v[136:137], v105 offset:1280             // 00000000E6A4: D9C40500 88000069
	ds_read_b64_tr_b8 v[138:139], v105 offset:2304             // 00000000E6AC: D9C40900 8A000069
	ds_read_b64_tr_b8 v[140:141], v105 offset:3328             // 00000000E6B4: D9C40D00 8C000069
	ds_read_b64_tr_b8 v[106:107], v105 offset:512              // 00000000E6BC: D9C40200 6A000069
	ds_read_b64_tr_b8 v[108:109], v105 offset:1536             // 00000000E6C4: D9C40600 6C000069
	ds_read_b64_tr_b8 v[110:111], v105 offset:2560             // 00000000E6CC: D9C40A00 6E000069
	ds_read_b64_tr_b8 v[112:113], v105 offset:3584             // 00000000E6D4: D9C40E00 70000069
	s_waitcnt lgkmcnt(4)                                       // 00000000E6DC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[114:121], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000E6E0: D3AC0000 000369AA D3AE0830 04C2C172
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000E6F0: D3AC0000 000369AA D3AE0820 0482C186
	ds_read_b64_tr_b8 v[114:115], v105 offset:768              // 00000000E700: D9C40300 72000069
	ds_read_b64_tr_b8 v[116:117], v105 offset:1792             // 00000000E708: D9C40700 74000069
	ds_read_b64_tr_b8 v[118:119], v105 offset:2816             // 00000000E710: D9C40B00 76000069
	ds_read_b64_tr_b8 v[120:121], v105 offset:3840             // 00000000E718: D9C40F00 78000069
	s_add_u32 s20, s77, 4                                      // 00000000E720: 8014844D
	s_cmp_ge_u32 s20, s98                                      // 00000000E724: BF096214
	s_cbranch_scc1 14                                          // 00000000E728: BF85000E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3f64>
	s_and_b32 s19, s19, 3                                      // 00000000E72C: 86138313
	s_lshl_b32 s19, s19, 14                                    // 00000000E730: 8E138E13
	s_mul_i32 s20, s20, s6                                     // 00000000E734: 92140614
	s_or_b32 s19, s19, s72                                     // 00000000E738: 87134813
	s_lshl_b32 s20, s20, 6                                     // 00000000E73C: 8E148614
	s_mov_b32 m0, s19                                          // 00000000E740: BEFC0013
	s_nop 0                                                    // 00000000E744: BF800000
	buffer_load_dwordx4 v164, s[68:71], s20 offen lds          // 00000000E748: E05D1000 141100A4
	s_or_b32 m0, s19, 0x2000                                   // 00000000E750: 877CFF13 00002000
	s_nop 0                                                    // 00000000E758: BF800000
	buffer_load_dwordx4 v165, s[68:71], s20 offen lds          // 00000000E75C: E05D1000 141100A5
	s_add_u32 s19, s77, 2                                      // 00000000E764: 8013824D
	s_cmp_ge_u32 s19, s98                                      // 00000000E768: BF096213
	s_cbranch_scc1 9                                           // 00000000E76C: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3f94>
	s_xor_b32 s18, s18, 1                                      // 00000000E770: 88128112
	s_lshl_b32 s18, s18, 14                                    // 00000000E774: 8E128E12
	s_mul_i32 s19, s19, s7                                     // 00000000E778: 92130713
	s_add_u32 s17, s18, s17                                    // 00000000E77C: 80111112
	s_lshl_b32 s19, s19, 6                                     // 00000000E780: 8E138613
	s_add_u32 m0, s17, s72                                     // 00000000E784: 807C4811
	s_nop 0                                                    // 00000000E788: BF800000
	buffer_load_dwordx4 v166, s[64:67], s19 offen lds          // 00000000E78C: E05D1000 131000A6
	v_lshlrev_b32_e32 v105, 23, v180                           // 00000000E794: 24D36897
	v_fma_f32 v179, v104, v105, v179                           // 00000000E798: D1CB00B3 06CED368
	s_waitcnt lgkmcnt(0)                                       // 00000000E7A0: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[106:113], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000E7A4: D3AC0000 000369AA D3AE0810 0442C16A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000E7B4: D3AC0000 000369AA D3AE0800 0402C172
	s_barrier                                                  // 00000000E7C4: BF8A0000
	s_add_u32 s78, s77, 1                                      // 00000000E7C8: 804E814D
	s_branch 63944                                             // 00000000E7CC: BF82F9C8 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26f0>
	s_barrier                                                  // 00000000E7D0: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000E7D4: BF8C0F70
	s_add_u32 s17, s78, 4                                      // 00000000E7D8: 8011844E
	s_cmp_ge_u32 s17, s98                                      // 00000000E7DC: BF096211
	s_cbranch_scc1 15                                          // 00000000E7E0: BF85000F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4020>
	s_add_u32 s18, s78, s80                                    // 00000000E7E4: 8012504E
	s_and_b32 s18, s18, 3                                      // 00000000E7E8: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000E7EC: 8E128E12
	s_mul_i32 s17, s17, s6                                     // 00000000E7F0: 92110611
	s_or_b32 s18, s18, s72                                     // 00000000E7F4: 87124812
	s_lshl_b32 s17, s17, 6                                     // 00000000E7F8: 8E118611
	s_mov_b32 m0, s18                                          // 00000000E7FC: BEFC0012
	s_nop 0                                                    // 00000000E800: BF800000
	buffer_load_dwordx4 v164, s[68:71], s17 offen lds          // 00000000E804: E05D1000 111100A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000E80C: 877CFF12 00002000
	s_nop 0                                                    // 00000000E814: BF800000
	buffer_load_dwordx4 v165, s[68:71], s17 offen lds          // 00000000E818: E05D1000 111100A5
	s_add_u32 s17, s78, 2                                      // 00000000E820: 8011824E
	s_cmp_ge_u32 s17, s98                                      // 00000000E824: BF096211
	s_cbranch_scc1 15                                          // 00000000E828: BF85000F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4068>
	s_add_u32 s18, s78, s80                                    // 00000000E82C: 8012504E
	s_not_b32 s19, s18                                         // 00000000E830: BE930412
	s_lshl_b32 s19, s19, 13                                    // 00000000E834: 8E138D13
	s_and_b32 s19, s19, 0x4000                                 // 00000000E838: 8613FF13 00004000
	s_bitcmp1_b32 s18, 0                                       // 00000000E840: BF0D8012
	s_cselect_b32 s18, s83, 0x10000                            // 00000000E844: 8512FF53 00010000
	s_mul_i32 s17, s17, s7                                     // 00000000E84C: 92110711
	s_or_b32 s18, s19, s18                                     // 00000000E850: 87121213
	s_lshl_b32 s17, s17, 6                                     // 00000000E854: 8E118611
	s_or_b32 m0, s18, s72                                      // 00000000E858: 877C4812
	s_nop 0                                                    // 00000000E85C: BF800000
	buffer_load_dwordx4 v166, s[64:67], s17 offen lds          // 00000000E860: E05D1000 111000A6
	s_barrier                                                  // 00000000E868: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000E86C: 804E814E
	s_branch 63903                                             // 00000000E870: BF82F99F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26f0>
	s_cmp_ge_u32 s77, s78                                      // 00000000E874: BF094E4D
	s_cbranch_scc1 40                                          // 00000000E878: BF850028 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x411c>
	s_waitcnt vmcnt(0)                                         // 00000000E87C: BF8C0F70
	s_barrier                                                  // 00000000E880: BF8A0000
	s_add_u32 s17, s98, s80                                    // 00000000E884: 80115062
	s_and_b32 s24, s17, 3                                      // 00000000E888: 86188311
	s_cmp_lg_u32 s76, 0                                        // 00000000E88C: BF07804C
	s_cbranch_scc1 4                                           // 00000000E890: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x40a4>
	s_not_b32 s18, s52                                         // 00000000E894: BE920434
	s_add_u32 s18, s50, s18                                    // 00000000E898: 80121232
	s_cmp_lg_u32 s52, s18                                      // 00000000E89C: BF071234
	s_cbranch_scc1 236                                         // 00000000E8A0: BF8500EC <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4454>
	s_add_u32 s2, s2, s13                                      // 00000000E8A4: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000E8A8: BF093102
	s_cbranch_scc1 211                                         // 00000000E8AC: BF8500D3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x43fc>
	s_lshl_b32 s18, s2, 5                                      // 00000000E8B0: 8E128502
	s_load_dwordx8 s[52:59], s[46:47], s18 offset:0x0          // 00000000E8B4: C00E4D17 24000000
	s_mov_b32 s76, 0                                           // 00000000E8BC: BECC0080
	s_mov_b64 s[18:19], -1                                     // 00000000E8C0: BE9201C1
	s_branch 229                                               // 00000000E8C4: BF8200E5 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x445c>
	s_cmp_ge_u32 s77, s78                                      // 00000000E8C8: BF094E4D
	s_cbranch_scc1 111                                         // 00000000E8CC: BF85006F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x428c>
	s_waitcnt vmcnt(0)                                         // 00000000E8D0: BF8C0F70
	s_barrier                                                  // 00000000E8D4: BF8A0000
	s_add_u32 s17, s98, s80                                    // 00000000E8D8: 80115062
	s_and_b32 s24, s17, 3                                      // 00000000E8DC: 86188311
	s_cmp_lg_u32 s76, 0                                        // 00000000E8E0: BF07804C
	s_cbranch_scc1 4                                           // 00000000E8E4: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x40f8>
	s_not_b32 s18, s52                                         // 00000000E8E8: BE920434
	s_add_u32 s18, s50, s18                                    // 00000000E8EC: 80121232
	s_cmp_lg_u32 s52, s18                                      // 00000000E8F0: BF071234
	s_cbranch_scc1 341                                         // 00000000E8F4: BF850155 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x464c>
	s_add_u32 s2, s2, s13                                      // 00000000E8F8: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000E8FC: BF093102
	s_cbranch_scc1 196                                         // 00000000E900: BF8500C4 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4414>
	s_lshl_b32 s18, s2, 5                                      // 00000000E904: 8E128502
	s_load_dwordx8 s[52:59], s[46:47], s18 offset:0x0          // 00000000E908: C00E4D17 24000000
	s_mov_b32 s76, 0                                           // 00000000E910: BECC0080
	s_mov_b64 s[18:19], -1                                     // 00000000E914: BE9201C1
	s_branch 334                                               // 00000000E918: BF82014E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4654>
	s_setprio 0                                                // 00000000E91C: BF8F0000
	v_exp_f32_e32 v80, v80                                     // 00000000E920: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000E924: 7EA24151
	v_exp_f32_e32 v64, v64                                     // 00000000E928: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000E92C: 7E824141
	v_exp_f32_e32 v84, v84                                     // 00000000E930: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000E934: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000E938: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000E93C: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000E940: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000E944: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000E948: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000E94C: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000E950: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000E954: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000E958: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000E95C: 7E9A414D
	v_mov_b32_e32 v96, 0                                       // 00000000E960: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000E964: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000E968: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000E96C: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000E970: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000E974: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000E978: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000E97C: 7ECE0280
	v_exp_f32_e32 v82, v82                                     // 00000000E980: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000E984: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000E988: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000E98C: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000E990: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000E994: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000E998: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000E99C: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000E9A0: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000E9A4: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000E9A8: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000E9AC: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000E9B0: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000E9B4: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000E9B8: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000E9BC: 7E9E414F
	v_cvt_pk_fp8_f32 v96, v80, v81                             // 00000000E9C0: D2A20060 0002A350
	v_cvt_pk_fp8_f32 v100, v64, v65                            // 00000000E9C8: D2A20064 00028340
	v_cvt_pk_fp8_f32 v97, v84, v85                             // 00000000E9D0: D2A20061 0002AB54
	v_cvt_pk_fp8_f32 v101, v68, v69                            // 00000000E9D8: D2A20065 00028B44
	v_cvt_pk_fp8_f32 v98, v88, v89                             // 00000000E9E0: D2A20062 0002B358
	v_cvt_pk_fp8_f32 v102, v72, v73                            // 00000000E9E8: D2A20066 00029348
	v_cvt_pk_fp8_f32 v99, v92, v93                             // 00000000E9F0: D2A20063 0002BB5C
	v_cvt_pk_fp8_f32 v103, v76, v77                            // 00000000E9F8: D2A20067 00029B4C
	v_cvt_pk_fp8_f32 v96, v82, v83 op_sel:[0,0,1]              // 00000000EA00: D2A24060 0002A752
	v_cvt_pk_fp8_f32 v100, v66, v67 op_sel:[0,0,1]             // 00000000EA08: D2A24064 00028742
	v_cvt_pk_fp8_f32 v97, v86, v87 op_sel:[0,0,1]              // 00000000EA10: D2A24061 0002AF56
	v_cvt_pk_fp8_f32 v101, v70, v71 op_sel:[0,0,1]             // 00000000EA18: D2A24065 00028F46
	v_cvt_pk_fp8_f32 v98, v90, v91 op_sel:[0,0,1]              // 00000000EA20: D2A24062 0002B75A
	v_cvt_pk_fp8_f32 v102, v74, v75 op_sel:[0,0,1]             // 00000000EA28: D2A24066 0002974A
	v_cvt_pk_fp8_f32 v99, v94, v95 op_sel:[0,0,1]              // 00000000EA30: D2A24063 0002BF5E
	v_cvt_pk_fp8_f32 v103, v78, v79 op_sel:[0,0,1]             // 00000000EA38: D2A24067 00029F4E
	s_waitcnt vmcnt(0)                                         // 00000000EA40: BF8C0F70
	s_barrier                                                  // 00000000EA44: BF8A0000
	s_add_u32 s17, s98, s80                                    // 00000000EA48: 80115062
	s_and_b32 s24, s17, 3                                      // 00000000EA4C: 86188311
	s_cmp_lg_u32 s76, 0                                        // 00000000EA50: BF07804C
	s_cbranch_scc1 4                                           // 00000000EA54: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4268>
	s_not_b32 s18, s52                                         // 00000000EA58: BE920434
	s_add_u32 s18, s50, s18                                    // 00000000EA5C: 80121232
	s_cmp_lg_u32 s52, s18                                      // 00000000EA60: BF071234
	s_cbranch_scc1 375                                         // 00000000EA64: BF850177 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4844>
	s_add_u32 s2, s2, s13                                      // 00000000EA68: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000EA6C: BF093102
	s_mov_b32 s76, 0                                           // 00000000EA70: BECC0080
	s_cbranch_scc1 109                                         // 00000000EA74: BF85006D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x442c>
	s_lshl_b32 s18, s2, 5                                      // 00000000EA78: 8E128502
	s_load_dwordx8 s[52:59], s[46:47], s18 offset:0x0          // 00000000EA7C: C00E4D17 24000000
	s_mov_b64 s[18:19], -1                                     // 00000000EA84: BE9201C1
	s_branch 368                                               // 00000000EA88: BF820170 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x484c>
	s_setprio 0                                                // 00000000EA8C: BF8F0000
	v_exp_f32_e32 v80, v80                                     // 00000000EA90: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000EA94: 7EA24151
	v_exp_f32_e32 v64, v64                                     // 00000000EA98: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000EA9C: 7E824141
	v_exp_f32_e32 v84, v84                                     // 00000000EAA0: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000EAA4: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000EAA8: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000EAAC: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000EAB0: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000EAB4: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000EAB8: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000EABC: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000EAC0: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000EAC4: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000EAC8: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000EACC: 7E9A414D
	v_mov_b32_e32 v96, 0                                       // 00000000EAD0: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000EAD4: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000EAD8: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000EADC: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000EAE0: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000EAE4: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000EAE8: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000EAEC: 7ECE0280
	v_exp_f32_e32 v82, v82                                     // 00000000EAF0: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000EAF4: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000EAF8: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000EAFC: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000EB00: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000EB04: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000EB08: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000EB0C: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000EB10: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000EB14: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000EB18: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000EB1C: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000EB20: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000EB24: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000EB28: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000EB2C: 7E9E414F
	v_cvt_pk_fp8_f32 v96, v80, v81                             // 00000000EB30: D2A20060 0002A350
	v_cvt_pk_fp8_f32 v100, v64, v65                            // 00000000EB38: D2A20064 00028340
	v_cvt_pk_fp8_f32 v97, v84, v85                             // 00000000EB40: D2A20061 0002AB54
	v_cvt_pk_fp8_f32 v101, v68, v69                            // 00000000EB48: D2A20065 00028B44
	v_cvt_pk_fp8_f32 v98, v88, v89                             // 00000000EB50: D2A20062 0002B358
	v_cvt_pk_fp8_f32 v102, v72, v73                            // 00000000EB58: D2A20066 00029348
	v_cvt_pk_fp8_f32 v99, v92, v93                             // 00000000EB60: D2A20063 0002BB5C
	v_cvt_pk_fp8_f32 v103, v76, v77                            // 00000000EB68: D2A20067 00029B4C
	v_cvt_pk_fp8_f32 v96, v82, v83 op_sel:[0,0,1]              // 00000000EB70: D2A24060 0002A752
	v_cvt_pk_fp8_f32 v100, v66, v67 op_sel:[0,0,1]             // 00000000EB78: D2A24064 00028742
	v_cvt_pk_fp8_f32 v97, v86, v87 op_sel:[0,0,1]              // 00000000EB80: D2A24061 0002AF56
	v_cvt_pk_fp8_f32 v101, v70, v71 op_sel:[0,0,1]             // 00000000EB88: D2A24065 00028F46
	v_cvt_pk_fp8_f32 v98, v90, v91 op_sel:[0,0,1]              // 00000000EB90: D2A24062 0002B75A
	v_cvt_pk_fp8_f32 v102, v74, v75 op_sel:[0,0,1]             // 00000000EB98: D2A24066 0002974A
	v_cvt_pk_fp8_f32 v99, v94, v95 op_sel:[0,0,1]              // 00000000EBA0: D2A24063 0002BF5E
	v_cvt_pk_fp8_f32 v103, v78, v79 op_sel:[0,0,1]             // 00000000EBA8: D2A24067 00029F4E
	s_waitcnt vmcnt(0)                                         // 00000000EBB0: BF8C0F70
	s_barrier                                                  // 00000000EBB4: BF8A0000
	s_add_u32 s17, s98, s80                                    // 00000000EBB8: 80115062
	s_and_b32 s24, s17, 3                                      // 00000000EBBC: 86188311
	s_cmp_lg_u32 s76, 0                                        // 00000000EBC0: BF07804C
	s_cbranch_scc1 4                                           // 00000000EBC4: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x43d8>
	s_not_b32 s18, s52                                         // 00000000EBC8: BE920434
	s_add_u32 s18, s50, s18                                    // 00000000EBCC: 80121232
	s_cmp_lg_u32 s52, s18                                      // 00000000EBD0: BF071234
	s_cbranch_scc1 481                                         // 00000000EBD4: BF8501E1 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4b5c>
	s_add_u32 s2, s2, s13                                      // 00000000EBD8: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000EBDC: BF093102
	s_mov_b32 s76, 0                                           // 00000000EBE0: BECC0080
	s_cbranch_scc1 22                                          // 00000000EBE4: BF850016 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4440>
	s_lshl_b32 s18, s2, 5                                      // 00000000EBE8: 8E128502
	s_load_dwordx8 s[52:59], s[46:47], s18 offset:0x0          // 00000000EBEC: C00E4D17 24000000
	s_mov_b64 s[18:19], -1                                     // 00000000EBF4: BE9201C1
	s_branch 474                                               // 00000000EBF8: BF8201DA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4b64>
	s_mov_b32 s76, 0                                           // 00000000EBFC: BECC0080
	s_mov_b64 s[20:21], s[10:11]                               // 00000000EC00: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000EC04: BE92010E
	s_mov_b32 s17, s3                                          // 00000000EC08: BE910003
	s_mov_b32 s22, 0                                           // 00000000EC0C: BE960080
	s_branch 460                                               // 00000000EC10: BF8201CC <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4b44>
	s_mov_b32 s76, 0                                           // 00000000EC14: BECC0080
	s_mov_b64 s[20:21], s[10:11]                               // 00000000EC18: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000EC1C: BE92010E
	s_mov_b32 s17, s3                                          // 00000000EC20: BE910003
	s_mov_b32 s22, 0                                           // 00000000EC24: BE960080
	s_branch 652                                               // 00000000EC28: BF82028C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4e5c>
	s_mov_b64 s[20:21], s[10:11]                               // 00000000EC2C: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000EC30: BE92010E
	s_mov_b32 s17, s3                                          // 00000000EC34: BE910003
	s_mov_b32 s22, 0                                           // 00000000EC38: BE960080
	s_branch 382                                               // 00000000EC3C: BF82017E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4a38>
	s_mov_b64 s[20:21], s[10:11]                               // 00000000EC40: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000EC44: BE92010E
	s_mov_b32 s17, s3                                          // 00000000EC48: BE910003
	s_mov_b32 s22, 0                                           // 00000000EC4C: BE960080
	s_branch 575                                               // 00000000EC50: BF82023F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4d50>
	s_mov_b32 s76, 1                                           // 00000000EC54: BECC0081
	s_mov_b64 s[18:19], 0                                      // 00000000EC58: BE920180
	s_waitcnt lgkmcnt(0)                                       // 00000000EC5C: BF8CC07F
	s_mov_b32 s20, s58                                         // 00000000EC60: BE94003A
	s_mov_b32 s21, s16                                         // 00000000EC64: BE950010
	s_lshl_b64 s[20:21], s[20:21], 7                           // 00000000EC68: 8E948714
	s_add_u32 s60, s38, s56                                    // 00000000EC6C: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000EC70: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000EC74: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000EC78: 82411529
	s_not_b32 s20, s52                                         // 00000000EC7C: BE940434
	s_add_u32 s20, s50, s20                                    // 00000000EC80: 80141432
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000EC84: 86927E12
	s_cselect_b32 s20, s20, s52                                // 00000000EC88: 85143414
	s_lshl_b32 s18, s20, 5                                     // 00000000EC8C: 8E128514
	s_add_u32 s18, s18, 32                                     // 00000000EC90: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000EC94: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000EC98: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000EC9C: 8F128612
	s_min_u32 s98, s12, s18                                    // 00000000ECA0: 83E2120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000ECA4: 86927E00
	s_cbranch_scc0 63                                          // 00000000ECA8: BF84003F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x45a8>
	s_lshl_b32 s18, s24, 14                                    // 00000000ECAC: 8E128E18
	s_or_b32 s18, s18, s72                                     // 00000000ECB0: 87124812
	s_mov_b32 m0, s18                                          // 00000000ECB4: BEFC0012
	s_lshl_b32 s19, s24, 13                                    // 00000000ECB8: 8E138D18
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000ECBC: E05D1000 800F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000ECC4: 807CFF12 00001000
	s_and_b32 s19, s19, 0x4000                                 // 00000000ECCC: 8613FF13 00004000
	buffer_load_dwordx4 v164, s[60:63], s48 offen lds          // 00000000ECD4: E05D1000 300F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000ECDC: 877CFF12 00002000
	s_mov_b32 s67, s63                                         // 00000000ECE4: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], s74 offen lds          // 00000000ECE8: E05D1000 4A0F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000ECF0: 807CFF12 00003000
	s_bitcmp1_b32 s17, 0                                       // 00000000ECF8: BF0D8011
	s_cselect_b32 s17, s83, 0x10000                            // 00000000ECFC: 8511FF53 00010000
	s_or_b32 s17, s19, s17                                     // 00000000ED04: 87111113
	s_mul_i32 s18, s6, 48                                      // 00000000ED08: 9212B006
	s_or_b32 s17, s17, s72                                     // 00000000ED0C: 87114811
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000ED10: E05D1000 120F00A4
	s_mov_b32 m0, s17                                          // 00000000ED18: BEFC0011
	s_nop 0                                                    // 00000000ED1C: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000ED20: E05D1000 801000A6
	s_add_u32 m0, s17, 0x1000                                  // 00000000ED28: 807CFF11 00001000
	s_cmp_lt_u32 s98, 2                                        // 00000000ED30: BF0A8262
	buffer_load_dwordx4 v166, s[64:67], s75 offen lds          // 00000000ED34: E05D1000 4B1000A6
	s_cbranch_scc1 26                                          // 00000000ED3C: BF85001A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x45a8>
	s_add_u32 s17, s24, 1                                      // 00000000ED40: 80118118
	s_and_b32 s17, s17, 3                                      // 00000000ED44: 86118311
	s_lshl_b32 s17, s17, 14                                    // 00000000ED48: 8E118E11
	s_or_b32 s17, s17, s72                                     // 00000000ED4C: 87114811
	s_mov_b32 m0, s17                                          // 00000000ED50: BEFC0011
	s_mul_i32 s18, s6, 0x50                                    // 00000000ED54: 9212FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000ED5C: E05D1000 090F00A4
	s_add_u32 m0, s17, 0x1000                                  // 00000000ED64: 807CFF11 00001000
	s_nop 0                                                    // 00000000ED6C: BF800000
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000ED70: E05D1000 120F00A4
	s_or_b32 m0, s17, 0x2000                                   // 00000000ED78: 877CFF11 00002000
	s_mul_i32 s18, s6, 0x60                                    // 00000000ED80: 9212FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000ED88: E05D1000 120F00A4
	s_add_u32 m0, s17, 0x3000                                  // 00000000ED90: 807CFF11 00003000
	s_mul_i32 s17, s6, 0x70                                    // 00000000ED98: 9211FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s17 offen lds          // 00000000EDA0: E05D1000 110F00A4
	s_mov_b32 s18, s59                                         // 00000000EDA8: BE92003B
	s_mov_b32 s19, s16                                         // 00000000EDAC: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000EDB0: 8E928812
	s_add_u32 s22, s36, s54                                    // 00000000EDB4: 80163624
	s_addc_u32 s23, s37, s55                                   // 00000000EDB8: 82173725
	s_mul_i32 s17, s20, s51                                    // 00000000EDBC: 92113314
	s_add_u32 s20, s42, s18                                    // 00000000EDC0: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000EDC4: 8215132B
	s_add_u32 s18, s33, s53                                    // 00000000EDC8: 80123521
	s_lshl_b32 s18, s18, 2                                     // 00000000EDCC: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000EDD0: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000EDD4: 821A802D
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000EDD8: 8692227E
	s_cselect_b32 s19, 0, s26                                  // 00000000EDDC: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000EDE0: 85121980
	s_add_u32 s25, s17, s73                                    // 00000000EDE4: 80194911
	s_lshl_b32 s17, s25, 5                                     // 00000000EDE8: 8E118519
	v_or_b32_e32 v64, s17, v146                                // 00000000EDEC: 28812411
	s_bfe_u32 s77, s25, 0x1a0001                               // 00000000EDF0: 92CDFF19 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000EDF8: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000EE00: 688081A7
	global_load_dwordx4 v[182:185], v64, s[22:23]              // 00000000EE04: DC5C8000 B6160040
	global_load_dwordx4 v[186:189], v64, s[22:23] offset:16    // 00000000EE0C: DC5C8010 BA160040
	global_load_dwordx4 v[190:193], v64, s[22:23] offset:64    // 00000000EE14: DC5C8040 BE160040
	global_load_dwordx4 v[194:197], v64, s[22:23] offset:80    // 00000000EE1C: DC5C8050 C2160040
	global_load_dwordx4 v[198:201], v64, s[22:23] offset:128   // 00000000EE24: DC5C8080 C6160040
	global_load_dwordx4 v[202:205], v64, s[22:23] offset:144   // 00000000EE2C: DC5C8090 CA160040
	s_mov_b32 s67, 0x110000                                    // 00000000EE34: BEC300FF 00110000
	s_mov_b32 s22, 1                                           // 00000000EE3C: BE960081
	s_mov_b32 s79, 0x110000                                    // 00000000EE40: BECF00FF 00110000
	s_branch 318                                               // 00000000EE48: BF82013E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4b44>
	s_mov_b32 s76, 1                                           // 00000000EE4C: BECC0081
	s_mov_b64 s[18:19], 0                                      // 00000000EE50: BE920180
	s_waitcnt lgkmcnt(0)                                       // 00000000EE54: BF8CC07F
	s_mov_b32 s20, s58                                         // 00000000EE58: BE94003A
	s_mov_b32 s21, s16                                         // 00000000EE5C: BE950010
	s_lshl_b64 s[20:21], s[20:21], 7                           // 00000000EE60: 8E948714
	s_add_u32 s60, s38, s56                                    // 00000000EE64: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000EE68: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000EE6C: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000EE70: 82411529
	s_not_b32 s20, s52                                         // 00000000EE74: BE940434
	s_add_u32 s20, s50, s20                                    // 00000000EE78: 80141432
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000EE7C: 86927E12
	s_cselect_b32 s20, s20, s52                                // 00000000EE80: 85143414
	s_lshl_b32 s18, s20, 5                                     // 00000000EE84: 8E128514
	s_add_u32 s18, s18, 32                                     // 00000000EE88: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000EE8C: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000EE90: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000EE94: 8F128612
	s_min_u32 s98, s12, s18                                    // 00000000EE98: 83E2120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000EE9C: 86927E00
	s_cbranch_scc0 63                                          // 00000000EEA0: BF84003F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x47a0>
	s_lshl_b32 s18, s24, 14                                    // 00000000EEA4: 8E128E18
	s_or_b32 s18, s18, s72                                     // 00000000EEA8: 87124812
	s_mov_b32 m0, s18                                          // 00000000EEAC: BEFC0012
	s_lshl_b32 s19, s24, 13                                    // 00000000EEB0: 8E138D18
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000EEB4: E05D1000 800F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000EEBC: 807CFF12 00001000
	s_and_b32 s19, s19, 0x4000                                 // 00000000EEC4: 8613FF13 00004000
	buffer_load_dwordx4 v164, s[60:63], s48 offen lds          // 00000000EECC: E05D1000 300F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000EED4: 877CFF12 00002000
	s_mov_b32 s67, s63                                         // 00000000EEDC: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], s74 offen lds          // 00000000EEE0: E05D1000 4A0F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000EEE8: 807CFF12 00003000
	s_bitcmp1_b32 s17, 0                                       // 00000000EEF0: BF0D8011
	s_cselect_b32 s17, s83, 0x10000                            // 00000000EEF4: 8511FF53 00010000
	s_or_b32 s17, s19, s17                                     // 00000000EEFC: 87111113
	s_mul_i32 s18, s6, 48                                      // 00000000EF00: 9212B006
	s_or_b32 s17, s17, s72                                     // 00000000EF04: 87114811
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000EF08: E05D1000 120F00A4
	s_mov_b32 m0, s17                                          // 00000000EF10: BEFC0011
	s_nop 0                                                    // 00000000EF14: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000EF18: E05D1000 801000A6
	s_add_u32 m0, s17, 0x1000                                  // 00000000EF20: 807CFF11 00001000
	s_cmp_lt_u32 s98, 2                                        // 00000000EF28: BF0A8262
	buffer_load_dwordx4 v166, s[64:67], s75 offen lds          // 00000000EF2C: E05D1000 4B1000A6
	s_cbranch_scc1 26                                          // 00000000EF34: BF85001A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x47a0>
	s_add_u32 s17, s24, 1                                      // 00000000EF38: 80118118
	s_and_b32 s17, s17, 3                                      // 00000000EF3C: 86118311
	s_lshl_b32 s17, s17, 14                                    // 00000000EF40: 8E118E11
	s_or_b32 s17, s17, s72                                     // 00000000EF44: 87114811
	s_mov_b32 m0, s17                                          // 00000000EF48: BEFC0011
	s_mul_i32 s18, s6, 0x50                                    // 00000000EF4C: 9212FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000EF54: E05D1000 090F00A4
	s_add_u32 m0, s17, 0x1000                                  // 00000000EF5C: 807CFF11 00001000
	s_nop 0                                                    // 00000000EF64: BF800000
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000EF68: E05D1000 120F00A4
	s_or_b32 m0, s17, 0x2000                                   // 00000000EF70: 877CFF11 00002000
	s_mul_i32 s18, s6, 0x60                                    // 00000000EF78: 9212FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000EF80: E05D1000 120F00A4
	s_add_u32 m0, s17, 0x3000                                  // 00000000EF88: 807CFF11 00003000
	s_mul_i32 s17, s6, 0x70                                    // 00000000EF90: 9211FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s17 offen lds          // 00000000EF98: E05D1000 110F00A4
	s_mov_b32 s18, s59                                         // 00000000EFA0: BE92003B
	s_mov_b32 s19, s16                                         // 00000000EFA4: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000EFA8: 8E928812
	s_add_u32 s22, s36, s54                                    // 00000000EFAC: 80163624
	s_addc_u32 s23, s37, s55                                   // 00000000EFB0: 82173725
	s_mul_i32 s17, s20, s51                                    // 00000000EFB4: 92113314
	s_add_u32 s20, s42, s18                                    // 00000000EFB8: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000EFBC: 8215132B
	s_add_u32 s18, s33, s53                                    // 00000000EFC0: 80123521
	s_lshl_b32 s18, s18, 2                                     // 00000000EFC4: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000EFC8: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000EFCC: 821A802D
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000EFD0: 8692227E
	s_cselect_b32 s19, 0, s26                                  // 00000000EFD4: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000EFD8: 85121980
	s_add_u32 s25, s17, s73                                    // 00000000EFDC: 80194911
	s_lshl_b32 s17, s25, 5                                     // 00000000EFE0: 8E118519
	v_or_b32_e32 v64, s17, v146                                // 00000000EFE4: 28812411
	s_bfe_u32 s77, s25, 0x1a0001                               // 00000000EFE8: 92CDFF19 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000EFF0: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000EFF8: 688081A7
	global_load_dwordx4 v[182:185], v64, s[22:23]              // 00000000EFFC: DC5C8000 B6160040
	global_load_dwordx4 v[186:189], v64, s[22:23] offset:16    // 00000000F004: DC5C8010 BA160040
	global_load_dwordx4 v[190:193], v64, s[22:23] offset:64    // 00000000F00C: DC5C8040 BE160040
	global_load_dwordx4 v[194:197], v64, s[22:23] offset:80    // 00000000F014: DC5C8050 C2160040
	global_load_dwordx4 v[198:201], v64, s[22:23] offset:128   // 00000000F01C: DC5C8080 C6160040
	global_load_dwordx4 v[202:205], v64, s[22:23] offset:144   // 00000000F024: DC5C8090 CA160040
	s_mov_b32 s67, 0x110000                                    // 00000000F02C: BEC300FF 00110000
	s_mov_b32 s22, 1                                           // 00000000F034: BE960081
	s_mov_b32 s79, 0x110000                                    // 00000000F038: BECF00FF 00110000
	s_branch 390                                               // 00000000F040: BF820186 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4e5c>
	s_mov_b32 s76, 1                                           // 00000000F044: BECC0081
	s_mov_b64 s[18:19], 0                                      // 00000000F048: BE920180
	s_waitcnt lgkmcnt(0)                                       // 00000000F04C: BF8CC07F
	s_mov_b32 s20, s58                                         // 00000000F050: BE94003A
	s_mov_b32 s21, s16                                         // 00000000F054: BE950010
	s_lshl_b64 s[20:21], s[20:21], 7                           // 00000000F058: 8E948714
	s_add_u32 s60, s38, s56                                    // 00000000F05C: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000F060: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000F064: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000F068: 82411529
	s_not_b32 s20, s52                                         // 00000000F06C: BE940434
	s_add_u32 s20, s50, s20                                    // 00000000F070: 80141432
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000F074: 86927E12
	s_cselect_b32 s20, s20, s52                                // 00000000F078: 85143414
	s_lshl_b32 s18, s20, 5                                     // 00000000F07C: 8E128514
	s_add_u32 s18, s18, 32                                     // 00000000F080: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000F084: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000F088: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000F08C: 8F128612
	s_min_u32 s98, s12, s18                                    // 00000000F090: 83E2120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000F094: 86927E00
	s_cbranch_scc0 63                                          // 00000000F098: BF84003F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4998>
	s_lshl_b32 s18, s24, 14                                    // 00000000F09C: 8E128E18
	s_or_b32 s18, s18, s72                                     // 00000000F0A0: 87124812
	s_mov_b32 m0, s18                                          // 00000000F0A4: BEFC0012
	s_lshl_b32 s19, s24, 13                                    // 00000000F0A8: 8E138D18
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000F0AC: E05D1000 800F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000F0B4: 807CFF12 00001000
	s_and_b32 s19, s19, 0x4000                                 // 00000000F0BC: 8613FF13 00004000
	buffer_load_dwordx4 v164, s[60:63], s48 offen lds          // 00000000F0C4: E05D1000 300F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000F0CC: 877CFF12 00002000
	s_mov_b32 s67, s63                                         // 00000000F0D4: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], s74 offen lds          // 00000000F0D8: E05D1000 4A0F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000F0E0: 807CFF12 00003000
	s_bitcmp1_b32 s17, 0                                       // 00000000F0E8: BF0D8011
	s_cselect_b32 s17, s83, 0x10000                            // 00000000F0EC: 8511FF53 00010000
	s_or_b32 s17, s19, s17                                     // 00000000F0F4: 87111113
	s_mul_i32 s18, s6, 48                                      // 00000000F0F8: 9212B006
	s_or_b32 s17, s17, s72                                     // 00000000F0FC: 87114811
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F100: E05D1000 120F00A4
	s_mov_b32 m0, s17                                          // 00000000F108: BEFC0011
	s_nop 0                                                    // 00000000F10C: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000F110: E05D1000 801000A6
	s_add_u32 m0, s17, 0x1000                                  // 00000000F118: 807CFF11 00001000
	s_cmp_lt_u32 s98, 2                                        // 00000000F120: BF0A8262
	buffer_load_dwordx4 v166, s[64:67], s75 offen lds          // 00000000F124: E05D1000 4B1000A6
	s_cbranch_scc1 26                                          // 00000000F12C: BF85001A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4998>
	s_add_u32 s17, s24, 1                                      // 00000000F130: 80118118
	s_and_b32 s17, s17, 3                                      // 00000000F134: 86118311
	s_lshl_b32 s17, s17, 14                                    // 00000000F138: 8E118E11
	s_or_b32 s17, s17, s72                                     // 00000000F13C: 87114811
	s_mov_b32 m0, s17                                          // 00000000F140: BEFC0011
	s_mul_i32 s18, s6, 0x50                                    // 00000000F144: 9212FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000F14C: E05D1000 090F00A4
	s_add_u32 m0, s17, 0x1000                                  // 00000000F154: 807CFF11 00001000
	s_nop 0                                                    // 00000000F15C: BF800000
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F160: E05D1000 120F00A4
	s_or_b32 m0, s17, 0x2000                                   // 00000000F168: 877CFF11 00002000
	s_mul_i32 s18, s6, 0x60                                    // 00000000F170: 9212FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F178: E05D1000 120F00A4
	s_add_u32 m0, s17, 0x3000                                  // 00000000F180: 807CFF11 00003000
	s_mul_i32 s17, s6, 0x70                                    // 00000000F188: 9211FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s17 offen lds          // 00000000F190: E05D1000 110F00A4
	s_mov_b32 s18, s59                                         // 00000000F198: BE92003B
	s_mov_b32 s19, s16                                         // 00000000F19C: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000F1A0: 8E928812
	s_add_u32 s22, s36, s54                                    // 00000000F1A4: 80163624
	s_addc_u32 s23, s37, s55                                   // 00000000F1A8: 82173725
	s_mul_i32 s17, s20, s51                                    // 00000000F1AC: 92113314
	s_add_u32 s20, s42, s18                                    // 00000000F1B0: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000F1B4: 8215132B
	s_add_u32 s18, s33, s53                                    // 00000000F1B8: 80123521
	s_lshl_b32 s18, s18, 2                                     // 00000000F1BC: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000F1C0: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000F1C4: 821A802D
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000F1C8: 8692227E
	s_cselect_b32 s19, 0, s26                                  // 00000000F1CC: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000F1D0: 85121980
	s_add_u32 s25, s17, s73                                    // 00000000F1D4: 80194911
	s_lshl_b32 s17, s25, 5                                     // 00000000F1D8: 8E118519
	v_or_b32_e32 v64, s17, v146                                // 00000000F1DC: 28812411
	s_bfe_u32 s77, s25, 0x1a0001                               // 00000000F1E0: 92CDFF19 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000F1E8: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000F1F0: 688081A7
	global_load_dwordx4 v[182:185], v64, s[22:23]              // 00000000F1F4: DC5C8000 B6160040
	global_load_dwordx4 v[186:189], v64, s[22:23] offset:16    // 00000000F1FC: DC5C8010 BA160040
	global_load_dwordx4 v[190:193], v64, s[22:23] offset:64    // 00000000F204: DC5C8040 BE160040
	global_load_dwordx4 v[194:197], v64, s[22:23] offset:80    // 00000000F20C: DC5C8050 C2160040
	global_load_dwordx4 v[198:201], v64, s[22:23] offset:128   // 00000000F214: DC5C8080 C6160040
	global_load_dwordx4 v[202:205], v64, s[22:23] offset:144   // 00000000F21C: DC5C8090 CA160040
	s_mov_b32 s67, 0x110000                                    // 00000000F224: BEC300FF 00110000
	s_mov_b32 s22, 1                                           // 00000000F22C: BE960081
	s_mov_b32 s79, 0x110000                                    // 00000000F230: BECF00FF 00110000
	s_setprio 1                                                // 00000000F238: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[96:103], 0// 00000000F23C: D3AD0040 0202C17E
	s_add_u32 s23, s78, s80                                    // 00000000F244: 8017504E
	s_and_b32 s25, s23, 2                                      // 00000000F248: 86198217
	s_lshl_b32 s25, s25, 13                                    // 00000000F24C: 8E198D19
	s_bitcmp1_b32 s23, 0                                       // 00000000F250: BF0D8017
	s_cselect_b32 s23, s83, 0x10000                            // 00000000F254: 8517FF53 00010000
	s_or_b32 s25, s25, s23                                     // 00000000F25C: 87191719
	s_nop 5                                                    // 00000000F260: BF800005
	v_or_b32_e32 v65, s25, v173                                // 00000000F264: 28835A19
	v_add_u32_e32 v65, v65, v172                               // 00000000F268: 68835941
	s_waitcnt vmcnt(6)                                         // 00000000F26C: BF8C0F76
	ds_read_b64_tr_b8 v[68:69], v65                            // 00000000F270: D9C40000 44000041
	ds_read_b64_tr_b8 v[70:71], v65 offset:1024                // 00000000F278: D9C40400 46000041
	ds_read_b64_tr_b8 v[72:73], v65 offset:2048                // 00000000F280: D9C40800 48000041
	ds_read_b64_tr_b8 v[74:75], v65 offset:3072                // 00000000F288: D9C40C00 4A000041
	ds_read_b64_tr_b8 v[76:77], v65 offset:256                 // 00000000F290: D9C40100 4C000041
	ds_read_b64_tr_b8 v[78:79], v65 offset:1280                // 00000000F298: D9C40500 4E000041
	ds_read_b64_tr_b8 v[80:81], v65 offset:2304                // 00000000F2A0: D9C40900 50000041
	ds_read_b64_tr_b8 v[82:83], v65 offset:3328                // 00000000F2A8: D9C40D00 52000041
	ds_read_b64_tr_b8 v[84:85], v65 offset:512                 // 00000000F2B0: D9C40200 54000041
	ds_read_b64_tr_b8 v[86:87], v65 offset:1536                // 00000000F2B8: D9C40600 56000041
	ds_read_b64_tr_b8 v[88:89], v65 offset:2560                // 00000000F2C0: D9C40A00 58000041
	ds_read_b64_tr_b8 v[90:91], v65 offset:3584                // 00000000F2C8: D9C40E00 5A000041
	v_lshlrev_b32_e32 v66, 23, v180                            // 00000000F2D0: 24856897
	v_fma_f32 v179, v64, v66, v179                             // 00000000F2D4: D1CB00B3 06CE8540
	s_waitcnt lgkmcnt(4)                                       // 00000000F2DC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[68:75], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000F2E0: D3AC0000 000369AA D3AE0830 04C2C144
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[76:83], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000F2F0: D3AC0000 000369AA D3AE0820 0482C14C
	ds_read_b64_tr_b8 v[66:67], v65 offset:768                 // 00000000F300: D9C40300 42000041
	ds_read_b64_tr_b8 v[68:69], v65 offset:1792                // 00000000F308: D9C40700 44000041
	ds_read_b64_tr_b8 v[70:71], v65 offset:2816                // 00000000F310: D9C40B00 46000041
	ds_read_b64_tr_b8 v[72:73], v65 offset:3840                // 00000000F318: D9C40F00 48000041
	s_waitcnt lgkmcnt(0)                                       // 00000000F320: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[84:91], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000F324: D3AC0000 000369AA D3AE0810 0442C154
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[66:73], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000F334: D3AC0000 000369AA D3AE0800 0402C142
	s_waitcnt vmcnt(6)                                         // 00000000F344: BF8C0F76
	s_barrier                                                  // 00000000F348: BF8A0000
	s_mov_b32 s80, s24                                         // 00000000F34C: BED00018
	s_cmp_eq_u32 s22, 0                                        // 00000000F350: BF068016
	s_cbranch_scc0 198                                         // 00000000F354: BF8400C6 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4e70>
	s_branch 450                                               // 00000000F358: BF8201C2 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5264>
	s_mov_b32 s76, 1                                           // 00000000F35C: BECC0081
	s_mov_b64 s[18:19], 0                                      // 00000000F360: BE920180
	s_waitcnt lgkmcnt(0)                                       // 00000000F364: BF8CC07F
	s_mov_b32 s20, s58                                         // 00000000F368: BE94003A
	s_mov_b32 s21, s16                                         // 00000000F36C: BE950010
	s_lshl_b64 s[20:21], s[20:21], 7                           // 00000000F370: 8E948714
	s_add_u32 s60, s38, s56                                    // 00000000F374: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000F378: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000F37C: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000F380: 82411529
	s_not_b32 s20, s52                                         // 00000000F384: BE940434
	s_add_u32 s20, s50, s20                                    // 00000000F388: 80141432
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000F38C: 86927E12
	s_cselect_b32 s20, s20, s52                                // 00000000F390: 85143414
	s_lshl_b32 s18, s20, 5                                     // 00000000F394: 8E128514
	s_add_u32 s18, s18, 32                                     // 00000000F398: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000F39C: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000F3A0: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000F3A4: 8F128612
	s_min_u32 s98, s12, s18                                    // 00000000F3A8: 83E2120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000F3AC: 86927E00
	s_cbranch_scc0 63                                          // 00000000F3B0: BF84003F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4cb0>
	s_lshl_b32 s18, s24, 14                                    // 00000000F3B4: 8E128E18
	s_or_b32 s18, s18, s72                                     // 00000000F3B8: 87124812
	s_mov_b32 m0, s18                                          // 00000000F3BC: BEFC0012
	s_lshl_b32 s19, s24, 13                                    // 00000000F3C0: 8E138D18
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000F3C4: E05D1000 800F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000F3CC: 807CFF12 00001000
	s_and_b32 s19, s19, 0x4000                                 // 00000000F3D4: 8613FF13 00004000
	buffer_load_dwordx4 v164, s[60:63], s48 offen lds          // 00000000F3DC: E05D1000 300F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000F3E4: 877CFF12 00002000
	s_mov_b32 s67, s63                                         // 00000000F3EC: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], s74 offen lds          // 00000000F3F0: E05D1000 4A0F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000F3F8: 807CFF12 00003000
	s_bitcmp1_b32 s17, 0                                       // 00000000F400: BF0D8011
	s_cselect_b32 s17, s83, 0x10000                            // 00000000F404: 8511FF53 00010000
	s_or_b32 s17, s19, s17                                     // 00000000F40C: 87111113
	s_mul_i32 s18, s6, 48                                      // 00000000F410: 9212B006
	s_or_b32 s17, s17, s72                                     // 00000000F414: 87114811
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F418: E05D1000 120F00A4
	s_mov_b32 m0, s17                                          // 00000000F420: BEFC0011
	s_nop 0                                                    // 00000000F424: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000F428: E05D1000 801000A6
	s_add_u32 m0, s17, 0x1000                                  // 00000000F430: 807CFF11 00001000
	s_cmp_lt_u32 s98, 2                                        // 00000000F438: BF0A8262
	buffer_load_dwordx4 v166, s[64:67], s75 offen lds          // 00000000F43C: E05D1000 4B1000A6
	s_cbranch_scc1 26                                          // 00000000F444: BF85001A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4cb0>
	s_add_u32 s17, s24, 1                                      // 00000000F448: 80118118
	s_and_b32 s17, s17, 3                                      // 00000000F44C: 86118311
	s_lshl_b32 s17, s17, 14                                    // 00000000F450: 8E118E11
	s_or_b32 s17, s17, s72                                     // 00000000F454: 87114811
	s_mov_b32 m0, s17                                          // 00000000F458: BEFC0011
	s_mul_i32 s18, s6, 0x50                                    // 00000000F45C: 9212FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000F464: E05D1000 090F00A4
	s_add_u32 m0, s17, 0x1000                                  // 00000000F46C: 807CFF11 00001000
	s_nop 0                                                    // 00000000F474: BF800000
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F478: E05D1000 120F00A4
	s_or_b32 m0, s17, 0x2000                                   // 00000000F480: 877CFF11 00002000
	s_mul_i32 s18, s6, 0x60                                    // 00000000F488: 9212FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F490: E05D1000 120F00A4
	s_add_u32 m0, s17, 0x3000                                  // 00000000F498: 807CFF11 00003000
	s_mul_i32 s17, s6, 0x70                                    // 00000000F4A0: 9211FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s17 offen lds          // 00000000F4A8: E05D1000 110F00A4
	s_mov_b32 s18, s59                                         // 00000000F4B0: BE92003B
	s_mov_b32 s19, s16                                         // 00000000F4B4: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000F4B8: 8E928812
	s_add_u32 s22, s36, s54                                    // 00000000F4BC: 80163624
	s_addc_u32 s23, s37, s55                                   // 00000000F4C0: 82173725
	s_mul_i32 s17, s20, s51                                    // 00000000F4C4: 92113314
	s_add_u32 s20, s42, s18                                    // 00000000F4C8: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000F4CC: 8215132B
	s_add_u32 s18, s33, s53                                    // 00000000F4D0: 80123521
	s_lshl_b32 s18, s18, 2                                     // 00000000F4D4: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000F4D8: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000F4DC: 821A802D
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000F4E0: 8692227E
	s_cselect_b32 s19, 0, s26                                  // 00000000F4E4: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000F4E8: 85121980
	s_add_u32 s25, s17, s73                                    // 00000000F4EC: 80194911
	s_lshl_b32 s17, s25, 5                                     // 00000000F4F0: 8E118519
	v_or_b32_e32 v64, s17, v146                                // 00000000F4F4: 28812411
	s_bfe_u32 s77, s25, 0x1a0001                               // 00000000F4F8: 92CDFF19 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000F500: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000F508: 688081A7
	global_load_dwordx4 v[182:185], v64, s[22:23]              // 00000000F50C: DC5C8000 B6160040
	global_load_dwordx4 v[186:189], v64, s[22:23] offset:16    // 00000000F514: DC5C8010 BA160040
	global_load_dwordx4 v[190:193], v64, s[22:23] offset:64    // 00000000F51C: DC5C8040 BE160040
	global_load_dwordx4 v[194:197], v64, s[22:23] offset:80    // 00000000F524: DC5C8050 C2160040
	global_load_dwordx4 v[198:201], v64, s[22:23] offset:128   // 00000000F52C: DC5C8080 C6160040
	global_load_dwordx4 v[202:205], v64, s[22:23] offset:144   // 00000000F534: DC5C8090 CA160040
	s_mov_b32 s67, 0x110000                                    // 00000000F53C: BEC300FF 00110000
	s_mov_b32 s22, 1                                           // 00000000F544: BE960081
	s_mov_b32 s79, 0x110000                                    // 00000000F548: BECF00FF 00110000
	s_setprio 1                                                // 00000000F550: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[96:103], 0// 00000000F554: D3AD0040 0202C17E
	s_add_u32 s23, s78, s80                                    // 00000000F55C: 8017504E
	s_and_b32 s25, s23, 2                                      // 00000000F560: 86198217
	s_lshl_b32 s25, s25, 13                                    // 00000000F564: 8E198D19
	s_bitcmp1_b32 s23, 0                                       // 00000000F568: BF0D8017
	s_cselect_b32 s23, s83, 0x10000                            // 00000000F56C: 8517FF53 00010000
	s_or_b32 s25, s25, s23                                     // 00000000F574: 87191719
	s_nop 5                                                    // 00000000F578: BF800005
	v_or_b32_e32 v65, s25, v173                                // 00000000F57C: 28835A19
	v_add_u32_e32 v65, v65, v172                               // 00000000F580: 68835941
	s_waitcnt vmcnt(6)                                         // 00000000F584: BF8C0F76
	ds_read_b64_tr_b8 v[68:69], v65                            // 00000000F588: D9C40000 44000041
	ds_read_b64_tr_b8 v[70:71], v65 offset:1024                // 00000000F590: D9C40400 46000041
	ds_read_b64_tr_b8 v[72:73], v65 offset:2048                // 00000000F598: D9C40800 48000041
	ds_read_b64_tr_b8 v[74:75], v65 offset:3072                // 00000000F5A0: D9C40C00 4A000041
	ds_read_b64_tr_b8 v[76:77], v65 offset:256                 // 00000000F5A8: D9C40100 4C000041
	ds_read_b64_tr_b8 v[78:79], v65 offset:1280                // 00000000F5B0: D9C40500 4E000041
	ds_read_b64_tr_b8 v[80:81], v65 offset:2304                // 00000000F5B8: D9C40900 50000041
	ds_read_b64_tr_b8 v[82:83], v65 offset:3328                // 00000000F5C0: D9C40D00 52000041
	ds_read_b64_tr_b8 v[84:85], v65 offset:512                 // 00000000F5C8: D9C40200 54000041
	ds_read_b64_tr_b8 v[86:87], v65 offset:1536                // 00000000F5D0: D9C40600 56000041
	ds_read_b64_tr_b8 v[88:89], v65 offset:2560                // 00000000F5D8: D9C40A00 58000041
	ds_read_b64_tr_b8 v[90:91], v65 offset:3584                // 00000000F5E0: D9C40E00 5A000041
	v_lshlrev_b32_e32 v66, 23, v180                            // 00000000F5E8: 24856897
	v_fma_f32 v179, v64, v66, v179                             // 00000000F5EC: D1CB00B3 06CE8540
	s_waitcnt lgkmcnt(4)                                       // 00000000F5F4: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[68:75], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000F5F8: D3AC0000 000369AA D3AE0830 04C2C144
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[76:83], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000F608: D3AC0000 000369AA D3AE0820 0482C14C
	ds_read_b64_tr_b8 v[66:67], v65 offset:768                 // 00000000F618: D9C40300 42000041
	ds_read_b64_tr_b8 v[68:69], v65 offset:1792                // 00000000F620: D9C40700 44000041
	ds_read_b64_tr_b8 v[70:71], v65 offset:2816                // 00000000F628: D9C40B00 46000041
	ds_read_b64_tr_b8 v[72:73], v65 offset:3840                // 00000000F630: D9C40F00 48000041
	s_waitcnt lgkmcnt(0)                                       // 00000000F638: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[84:91], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000F63C: D3AC0000 000369AA D3AE0810 0442C154
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[66:73], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000F64C: D3AC0000 000369AA D3AE0800 0402C142
	s_waitcnt vmcnt(6)                                         // 00000000F65C: BF8C0F76
	s_barrier                                                  // 00000000F660: BF8A0000
	s_mov_b32 s80, s24                                         // 00000000F664: BED00018
	s_cmp_eq_u32 s22, 0                                        // 00000000F668: BF068016
	s_cbranch_scc1 253                                         // 00000000F66C: BF8500FD <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5264>
	s_nop 15                                                   // 00000000F670: BF80000F
	s_nop 3                                                    // 00000000F674: BF800003
	v_rcp_f32_e32 v64, v179                                    // 00000000F678: 7E8045B3
	v_log_f32_e32 v65, v179                                    // 00000000F67C: 7E8243B3
	s_nop 1                                                    // 00000000F680: BF800001
	v_mul_f32_e32 v64, v168, v64                               // 00000000F684: 0A8081A8
	v_mul_f32_e32 v48, v48, v64                                // 00000000F688: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 00000000F68C: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 00000000F690: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 00000000F694: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 00000000F698: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 00000000F69C: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 00000000F6A0: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 00000000F6A4: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 00000000F6A8: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 00000000F6AC: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 00000000F6B0: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 00000000F6B4: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 00000000F6B8: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 00000000F6BC: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 00000000F6C0: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 00000000F6C4: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 00000000F6C8: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 00000000F6CC: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 00000000F6D0: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 00000000F6D4: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 00000000F6D8: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 00000000F6DC: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 00000000F6E0: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 00000000F6E4: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 00000000F6E8: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 00000000F6EC: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 00000000F6F0: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 00000000F6F4: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 00000000F6F8: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 00000000F6FC: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 00000000F700: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 00000000F704: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 00000000F708: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 00000000F70C: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 00000000F710: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 00000000F714: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 00000000F718: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 00000000F71C: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 00000000F720: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 00000000F724: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 00000000F728: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 00000000F72C: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 00000000F730: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 00000000F734: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 00000000F738: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 00000000F73C: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 00000000F740: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 00000000F744: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 00000000F748: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 00000000F74C: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 00000000F750: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 00000000F754: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 00000000F758: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 00000000F75C: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 00000000F760: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 00000000F764: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 00000000F768: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 00000000F76C: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 00000000F770: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 00000000F774: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 00000000F778: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 00000000F77C: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000F780: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000F784: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000F788: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000F790: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000F798: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000F7A0: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000F7A8: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000F7B0: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000F7B8: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000F7C0: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000F7C8: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000F7D0: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000F7D8: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000F7E0: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000F7E8: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000F7F0: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000F7F8: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000F800: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000F808: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000F810: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000F818: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000F820: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000F828: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000F830: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000F838: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000F840: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000F848: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000F850: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000F858: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000F860: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000F868: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000F870: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000F878: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000F880: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000F888: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000F88C: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000F890: 7E000304
	v_mov_b32_e32 v1, v2                                       // 00000000F894: 7E020302
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000F898: 7E10B509
	v_mov_b32_e32 v2, v5                                       // 00000000F89C: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000F8A0: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000F8A4: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000F8A8: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000F8AC: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000F8B0: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000F8B4: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000F8B8: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000F8BC: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000F8C0: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000F8C4: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000F8C8: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000F8CC: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000F8D0: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000F8D4: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000F8D8: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000F8DC: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000F8E0: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000F8E4: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000F8E8: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000F8EC: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000F8F0: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000F8F4: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000F8F8: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000F8FC: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000F900: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000F904: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000F908: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000F90C: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000F910: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000F914: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000F918: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000F91C: 7E380320
	v_mov_b32_e32 v29, v30                                     // 00000000F920: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000F924: 7E3C0321
	ds_write_b128 v158, v[0:3]                                 // 00000000F928: D9BE0000 0000009E
	ds_write_b128 v160, v[4:7]                                 // 00000000F930: D9BE0000 000004A0
	ds_write_b128 v159, v[8:11]                                // 00000000F938: D9BE0000 0000089F
	ds_write_b128 v157, v[12:15]                               // 00000000F940: D9BE0000 00000C9D
	ds_write_b128 v156, v[16:19]                               // 00000000F948: D9BE0000 0000109C
	ds_write_b128 v155, v[20:23]                               // 00000000F950: D9BE0000 0000149B
	ds_write_b128 v154, v[24:27]                               // 00000000F958: D9BE0000 0000189A
	ds_write_b128 v153, v[28:31]                               // 00000000F960: D9BE0000 00001C99
	ds_read_b128 v[8:11], v149                                 // 00000000F968: D9FE0000 08000095
	ds_read_b128 v[12:15], v152 offset:1024                    // 00000000F970: D9FE0400 0C000098
	ds_read_b128 v[16:19], v151 offset:2048                    // 00000000F978: D9FE0800 10000097
	ds_read_b128 v[20:23], v150 offset:3072                    // 00000000F980: D9FE0C00 14000096
	ds_read_b128 v[24:27], v149 offset:4096                    // 00000000F988: D9FE1000 18000095
	ds_read_b128 v[28:31], v152 offset:5120                    // 00000000F990: D9FE1400 1C000098
	ds_read_b128 v[32:35], v151 offset:6144                    // 00000000F998: D9FE1800 20000097
	ds_read_b128 v[36:39], v150 offset:7168                    // 00000000F9A0: D9FE1C00 24000096
	v_add_u32_e32 v0, s3, v147                                 // 00000000F9A8: 68012603
	v_mul_lo_u32 v0, s8, v0                                    // 00000000F9AC: D2850000 00020008
	v_add_u32_e32 v0, v0, v148                                 // 00000000F9B4: 68012900
	v_add_u32_e32 v1, s4, v0                                   // 00000000F9B8: 68020004
	v_add_u32_e32 v2, s4, v1                                   // 00000000F9BC: 68040204
	v_add_u32_e32 v3, s4, v2                                   // 00000000F9C0: 68060404
	v_add_u32_e32 v4, s4, v3                                   // 00000000F9C4: 68080604
	v_add_u32_e32 v5, s4, v4                                   // 00000000F9C8: 680A0804
	v_add_u32_e32 v6, s4, v5                                   // 00000000F9CC: 680C0A04
	v_add_u32_e32 v7, s4, v6                                   // 00000000F9D0: 680E0C04
	s_waitcnt lgkmcnt(7)                                       // 00000000F9D4: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[10:11]                 // 00000000F9D8: DC7C8000 000A0800
	s_waitcnt lgkmcnt(6)                                       // 00000000F9E0: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[10:11]                // 00000000F9E4: DC7C8000 000A0C01
	s_waitcnt lgkmcnt(5)                                       // 00000000F9EC: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[10:11]                // 00000000F9F0: DC7C8000 000A1002
	s_waitcnt lgkmcnt(4)                                       // 00000000F9F8: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[10:11]                // 00000000F9FC: DC7C8000 000A1403
	s_waitcnt lgkmcnt(3)                                       // 00000000FA04: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[10:11]                // 00000000FA08: DC7C8000 000A1804
	s_waitcnt lgkmcnt(2)                                       // 00000000FA10: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[10:11]                // 00000000FA14: DC7C8000 000A1C05
	s_waitcnt lgkmcnt(1)                                       // 00000000FA1C: BF8CC17F
	global_store_dwordx4 v6, v[32:35], s[10:11]                // 00000000FA20: DC7C8000 000A2006
	s_waitcnt lgkmcnt(0)                                       // 00000000FA28: BF8CC07F
	global_store_dwordx4 v7, v[36:39], s[10:11]                // 00000000FA2C: DC7C8000 000A2407
	v_add_f32_e32 v0, v178, v65                                // 00000000FA34: 020083B2
	v_add_f32_e32 v0, -4.0, v0                                 // 00000000FA38: 020000F7
	v_add_f32_e32 v0, -2.0, v0                                 // 00000000FA3C: 020000F5
	v_mul_f32_e32 v0, 0x3f317218, v0                           // 00000000FA40: 0A0000FF 3F317218
	v_add_u32_e32 v1, s3, v146                                 // 00000000FA48: 68032403
	v_lshlrev_b32_e32 v1, 2, v1                                // 00000000FA4C: 24020282
	s_cmp_eq_u64 s[14:15], 0                                   // 00000000FA50: BF12800E
	s_mov_b64 s[10:11], s[20:21]                               // 00000000FA54: BE8A0114
	s_mov_b32 s3, s17                                          // 00000000FA58: BE830011
	s_cbranch_scc0 61341                                       // 00000000FA5C: BF84EF9D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10d4>
	s_branch 60604                                             // 00000000FA60: BF82ECBC <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x554>
	s_nop 15                                                   // 00000000FA64: BF80000F
	s_nop 3                                                    // 00000000FA68: BF800003
	v_rcp_f32_e32 v64, v179                                    // 00000000FA6C: 7E8045B3
	v_log_f32_e32 v65, v179                                    // 00000000FA70: 7E8243B3
	s_nop 1                                                    // 00000000FA74: BF800001
	v_mul_f32_e32 v64, v168, v64                               // 00000000FA78: 0A8081A8
	v_mul_f32_e32 v48, v48, v64                                // 00000000FA7C: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 00000000FA80: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 00000000FA84: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 00000000FA88: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 00000000FA8C: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 00000000FA90: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 00000000FA94: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 00000000FA98: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 00000000FA9C: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 00000000FAA0: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 00000000FAA4: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 00000000FAA8: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 00000000FAAC: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 00000000FAB0: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 00000000FAB4: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 00000000FAB8: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 00000000FABC: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 00000000FAC0: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 00000000FAC4: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 00000000FAC8: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 00000000FACC: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 00000000FAD0: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 00000000FAD4: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 00000000FAD8: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 00000000FADC: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 00000000FAE0: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 00000000FAE4: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 00000000FAE8: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 00000000FAEC: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 00000000FAF0: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 00000000FAF4: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 00000000FAF8: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 00000000FAFC: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 00000000FB00: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 00000000FB04: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 00000000FB08: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 00000000FB0C: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 00000000FB10: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 00000000FB14: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 00000000FB18: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 00000000FB1C: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 00000000FB20: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 00000000FB24: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 00000000FB28: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 00000000FB2C: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 00000000FB30: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 00000000FB34: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 00000000FB38: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 00000000FB3C: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 00000000FB40: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 00000000FB44: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 00000000FB48: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 00000000FB4C: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 00000000FB50: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 00000000FB54: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 00000000FB58: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 00000000FB5C: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 00000000FB60: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 00000000FB64: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 00000000FB68: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 00000000FB6C: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 00000000FB70: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000FB74: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000FB78: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000FB7C: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000FB84: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000FB8C: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000FB94: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000FB9C: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000FBA4: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000FBAC: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000FBB4: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000FBBC: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000FBC4: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000FBCC: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000FBD4: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000FBDC: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000FBE4: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000FBEC: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000FBF4: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000FBFC: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000FC04: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000FC0C: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000FC14: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000FC1C: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000FC24: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000FC2C: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000FC34: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000FC3C: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000FC44: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000FC4C: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000FC54: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000FC5C: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000FC64: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000FC6C: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000FC74: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000FC7C: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000FC80: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000FC84: 7E000304
	v_mov_b32_e32 v1, v2                                       // 00000000FC88: 7E020302
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000FC8C: 7E10B509
	v_mov_b32_e32 v2, v5                                       // 00000000FC90: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000FC94: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000FC98: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000FC9C: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000FCA0: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000FCA4: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000FCA8: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000FCAC: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000FCB0: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000FCB4: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000FCB8: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000FCBC: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000FCC0: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000FCC4: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000FCC8: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000FCCC: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000FCD0: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000FCD4: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000FCD8: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000FCDC: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000FCE0: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000FCE4: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000FCE8: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000FCEC: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000FCF0: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000FCF4: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000FCF8: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000FCFC: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000FD00: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000FD04: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000FD08: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000FD0C: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000FD10: 7E380320
	v_mov_b32_e32 v29, v30                                     // 00000000FD14: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000FD18: 7E3C0321
	ds_write_b128 v158, v[0:3]                                 // 00000000FD1C: D9BE0000 0000009E
	ds_write_b128 v160, v[4:7]                                 // 00000000FD24: D9BE0000 000004A0
	ds_write_b128 v159, v[8:11]                                // 00000000FD2C: D9BE0000 0000089F
	ds_write_b128 v157, v[12:15]                               // 00000000FD34: D9BE0000 00000C9D
	ds_write_b128 v156, v[16:19]                               // 00000000FD3C: D9BE0000 0000109C
	ds_write_b128 v155, v[20:23]                               // 00000000FD44: D9BE0000 0000149B
	ds_write_b128 v154, v[24:27]                               // 00000000FD4C: D9BE0000 0000189A
	ds_write_b128 v153, v[28:31]                               // 00000000FD54: D9BE0000 00001C99
	ds_read_b128 v[8:11], v149                                 // 00000000FD5C: D9FE0000 08000095
	ds_read_b128 v[12:15], v152 offset:1024                    // 00000000FD64: D9FE0400 0C000098
	ds_read_b128 v[16:19], v151 offset:2048                    // 00000000FD6C: D9FE0800 10000097
	ds_read_b128 v[20:23], v150 offset:3072                    // 00000000FD74: D9FE0C00 14000096
	ds_read_b128 v[24:27], v149 offset:4096                    // 00000000FD7C: D9FE1000 18000095
	ds_read_b128 v[28:31], v152 offset:5120                    // 00000000FD84: D9FE1400 1C000098
	ds_read_b128 v[32:35], v151 offset:6144                    // 00000000FD8C: D9FE1800 20000097
	ds_read_b128 v[36:39], v150 offset:7168                    // 00000000FD94: D9FE1C00 24000096
	v_add_u32_e32 v0, s3, v147                                 // 00000000FD9C: 68012603
	v_mul_lo_u32 v0, s8, v0                                    // 00000000FDA0: D2850000 00020008
	v_add_u32_e32 v0, v0, v148                                 // 00000000FDA8: 68012900
	v_add_u32_e32 v1, s4, v0                                   // 00000000FDAC: 68020004
	v_add_u32_e32 v2, s4, v1                                   // 00000000FDB0: 68040204
	v_add_u32_e32 v3, s4, v2                                   // 00000000FDB4: 68060404
	v_add_u32_e32 v4, s4, v3                                   // 00000000FDB8: 68080604
	v_add_u32_e32 v5, s4, v4                                   // 00000000FDBC: 680A0804
	v_add_u32_e32 v6, s4, v5                                   // 00000000FDC0: 680C0A04
	v_add_u32_e32 v7, s4, v6                                   // 00000000FDC4: 680E0C04
	s_waitcnt lgkmcnt(7)                                       // 00000000FDC8: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[10:11]                 // 00000000FDCC: DC7C8000 000A0800
	s_waitcnt lgkmcnt(6)                                       // 00000000FDD4: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[10:11]                // 00000000FDD8: DC7C8000 000A0C01
	s_waitcnt lgkmcnt(5)                                       // 00000000FDE0: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[10:11]                // 00000000FDE4: DC7C8000 000A1002
	s_waitcnt lgkmcnt(4)                                       // 00000000FDEC: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[10:11]                // 00000000FDF0: DC7C8000 000A1403
	s_waitcnt lgkmcnt(3)                                       // 00000000FDF8: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[10:11]                // 00000000FDFC: DC7C8000 000A1804
	s_waitcnt lgkmcnt(2)                                       // 00000000FE04: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[10:11]                // 00000000FE08: DC7C8000 000A1C05
	s_waitcnt lgkmcnt(1)                                       // 00000000FE10: BF8CC17F
	global_store_dwordx4 v6, v[32:35], s[10:11]                // 00000000FE14: DC7C8000 000A2006
	s_waitcnt lgkmcnt(0)                                       // 00000000FE1C: BF8CC07F
	global_store_dwordx4 v7, v[36:39], s[10:11]                // 00000000FE20: DC7C8000 000A2407
	v_add_f32_e32 v0, v178, v65                                // 00000000FE28: 020083B2
	v_add_f32_e32 v0, -4.0, v0                                 // 00000000FE2C: 020000F7
	v_add_f32_e32 v0, -2.0, v0                                 // 00000000FE30: 020000F5
	v_mul_f32_e32 v0, 0x3f317218, v0                           // 00000000FE34: 0A0000FF 3F317218
	v_add_u32_e32 v1, s3, v146                                 // 00000000FE3C: 68032403
	v_lshlrev_b32_e32 v1, 2, v1                                // 00000000FE40: 24020282
	s_cmp_eq_u64 s[14:15], 0                                   // 00000000FE44: BF12800E
	s_cbranch_scc1 2                                           // 00000000FE48: BF850002 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5654>
	global_store_dword v1, v0, s[14:15]                        // 00000000FE4C: DC708000 000E0001
	s_and_b64 s[0:1], s[0:1], exec                             // 00000000FE54: 86807E00
	s_cbranch_scc0 1                                           // 00000000FE58: BF840001 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5660>
	s_barrier                                                  // 00000000FE5C: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000FE60: BF8C0F70
	s_endpgm                                                   // 00000000FE64: BF810000
