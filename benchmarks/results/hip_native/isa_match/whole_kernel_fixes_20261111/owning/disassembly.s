
benchmarks/results/hip_native/isa_match/whole_kernel_fixes_20261111/owning/native.co:	file format elf64-amdgpu

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
	s_cbranch_scc1 9050                                        // 000000001C84: BF85235A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8ef0>
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
	s_movk_i32 s94, 0x2000                                     // 000000002000: B05E2000
	s_mov_b32 s95, 0x1a000                                     // 000000002004: BEDF00FF 0001A000
	v_mov_b32_e32 v242, 0x7f                                   // 00000000200C: 7FE402FF 0000007F
	s_mov_b32 s48, 0x3e000000                                  // 000000002014: BEB000FF 3E000000
	s_movk_i32 s89, 0x4000                                     // 00000000201C: B0594000
	s_movk_i32 s90, 0x6000                                     // 000000002020: B05A6000
	s_mov_b32 s91, 0x1e000                                     // 000000002024: BEDB00FF 0001E000
	s_mov_b32 s34, 0x8000                                      // 00000000202C: BEA200FF 00008000
	s_mov_b32 s35, 0xa000                                      // 000000002034: BEA300FF 0000A000
	s_mov_b32 s12, 0x12000                                     // 00000000203C: BE8C00FF 00012000
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
	s_mov_b32 s42, s31                                         // 0000000020D4: BEAA001F
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
	s_mov_b32 s87, s42                                         // 000000002BA4: BED7002A
	s_cbranch_scc0 34                                          // 000000002BA8: BF840022 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1134>
	s_cmp_ge_u32 s96, 2                                        // 000000002BAC: BF098260
	s_cbranch_scc1 200                                         // 000000002BB0: BF8500C8 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x13d4>
	s_cmp_ge_u32 s96, 3                                        // 000000002BB4: BF098360
	s_cbranch_scc1 232                                         // 000000002BB8: BF8500E8 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x145c>
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
	s_mov_b32 s43, 0                                           // 000000002CB4: BEAB0080
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
	s_branch 877                                               // 000000002D34: BF82036D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1fec>
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
	s_mov_b32 s43, 0                                           // 000000002D74: BEAB0080
	s_cmp_lg_u32 s78, 0                                        // 000000002D78: BF07804E
	s_cbranch_scc0 189                                         // 000000002D7C: BF8400BD <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1574>
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
	s_branch 2063                                              // 000000002E1C: BF82080F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x335c>
	s_mov_b32 s43, 0                                           // 000000002E20: BEAB0080
	s_cmp_eq_u32 s78, 2                                        // 000000002E24: BF06824E
	s_cbranch_scc0 106                                         // 000000002E28: BF84006A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x14d4>
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
	s_branch 1396                                              // 000000002ED0: BF820574 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x29a4>
	s_add_u32 s18, s78, 1                                      // 000000002ED4: 8012814E
	s_and_b32 s18, s18, 3                                      // 000000002ED8: 86128312
	s_lshl_b32 s18, s18, 14                                    // 000000002EDC: 8E128E12
	s_add_u32 s19, s92, s18                                    // 000000002EE0: 8013125C
	s_add_u32 m0, s19, s88                                     // 000000002EE4: 807C5813
	s_nop 0                                                    // 000000002EE8: BF800000
	buffer_load_dwordx4 v235, s[80:83], s33 offen lds          // 000000002EEC: E05D1000 211400EB
	s_add_u32 s19, s92, s18                                    // 000000002EF4: 8013125C
	s_add_u32 s19, s19, s88                                    // 000000002EF8: 80135813
	s_add_u32 m0, s19, 0x1000                                  // 000000002EFC: 807CFF13 00001000
	s_mul_i32 s19, s8, 0xc0                                    // 000000002F04: 9213FF08 000000C0
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000002F0C: E05D1000 131400EB
	s_add_u32 s19, s92, s18                                    // 000000002F14: 8013125C
	s_add_u32 s19, s19, s88                                    // 000000002F18: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 000000002F1C: 807CFF13 00002000
	s_mul_i32 s19, s8, 0x84                                    // 000000002F24: 9213FF08 00000084
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000002F2C: E05D1000 131400EB
	s_add_u32 s18, s92, s18                                    // 000000002F34: 8012125C
	s_add_u32 s18, s18, s88                                    // 000000002F38: 80125812
	s_add_u32 m0, s18, 0x3000                                  // 000000002F3C: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xc4                                    // 000000002F44: 9212FF08 000000C4
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000002F4C: E05D1000 121400EB
	s_cmp_lt_u32 s96, 3                                        // 000000002F54: BF0A8360
	s_cbranch_scc1 65304                                       // 000000002F58: BF85FF18 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10bc>
	s_xor_b32 s17, s17, 2                                      // 000000002F5C: 88118211
	s_lshl_b32 s17, s17, 14                                    // 000000002F60: 8E118E11
	s_or_b32 s17, s17, s88                                     // 000000002F64: 87115811
	s_mov_b32 m0, s17                                          // 000000002F68: BEFC0011
	v_readlane_b32 s18, v255, 6                                // 000000002F6C: D2890012 00010DFF
	s_nop 4                                                    // 000000002F74: BF800004
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002F78: E05D1000 121500E9
	s_add_u32 m0, s17, 0x1000                                  // 000000002F80: 807CFF11 00001000
	s_mul_i32 s18, s8, 0x120                                   // 000000002F88: 9212FF08 00000120
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002F90: E05D1000 121500E9
	s_or_b32 m0, s17, 0x2000                                   // 000000002F98: 877CFF11 00002000
	s_mul_i32 s18, s8, 0x140                                   // 000000002FA0: 9212FF08 00000140
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002FA8: E05D1000 121500E9
	s_add_u32 m0, s17, 0x3000                                  // 000000002FB0: 807CFF11 00003000
	s_mul_i32 s17, s8, 0x160                                   // 000000002FB8: 9211FF08 00000160
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 000000002FC0: E05D1000 111500E9
	s_cmp_lt_u32 s96, 4                                        // 000000002FC8: BF0A8460
	s_cbranch_scc1 65304                                       // 000000002FCC: BF85FF18 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1130>
	s_branch 65276                                             // 000000002FD0: BF82FEFC <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10c4>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000002FD4: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000002FD8: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000002FDC: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000002FE0: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000002FE4: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000002FE8: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000002FEC: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000002FF0: 7E1C701E
	v_mov_b32_e32 v250, 0                                      // 000000002FF4: 7FF40280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000002FF8: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000002FFC: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 000000003000: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 000000003004: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 000000003008: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000300C: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 000000003010: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 000000003014: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 000000003018: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000301C: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 000000003020: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 000000003024: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 000000003028: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000302C: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 000000003030: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 000000003034: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 000000003038: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000303C: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 000000003040: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 000000003044: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 000000003048: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000304C: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 000000003050: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000003054: 7E607100
	v_readlane_b32 s17, v255, 6                                // 000000003058: D2890011 00010DFF
	v_readlane_b32 s20, v255, 5                                // 000000003060: D2890014 00010BFF
	s_mov_b64 s[28:29], s[56:57]                               // 000000003068: BE9C0138
	s_mov_b64 s[30:31], s[58:59]                               // 00000000306C: BE9E013A
	s_branch 1914                                              // 000000003070: BF82077A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x335c>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000003074: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000003078: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000307C: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000003080: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000003084: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000003088: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000308C: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000003090: 7E1C701E
	v_mov_b32_e32 v250, 0                                      // 000000003094: 7FF40280
	s_mov_b32 s43, s78                                         // 000000003098: BEAB004E
	v_mov_b32_e32 v253, v149                                   // 00000000309C: 7FFA0395
	v_mov_b32_e32 v252, v148                                   // 0000000030A0: 7FF80394
	v_mov_b64_e32 v[30:31], v[14:15]                           // 0000000030A4: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 0000000030A8: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 0000000030AC: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 0000000030B0: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 0000000030B4: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 0000000030B8: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 0000000030BC: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 0000000030C0: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 0000000030C4: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 0000000030C8: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 0000000030CC: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 0000000030D0: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 0000000030D4: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 0000000030D8: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 0000000030DC: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 0000000030E0: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 0000000030E4: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 0000000030E8: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 0000000030EC: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 0000000030F0: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 0000000030F4: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 0000000030F8: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 0000000030FC: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000003100: 7E607100
	v_readlane_b32 s17, v255, 6                                // 000000003104: D2890011 00010DFF
	v_readlane_b32 s20, v255, 5                                // 00000000310C: D2890014 00010BFF
	s_mov_b64 s[28:29], s[56:57]                               // 000000003114: BE9C0138
	s_mov_b64 s[30:31], s[58:59]                               // 000000003118: BE9E013A
	s_branch 5                                                 // 00000000311C: BF820005 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1634>
	s_mov_b64 s[0:1], s[20:21]                                 // 000000003120: BE800114
	s_mov_b32 s3, s17                                          // 000000003124: BE830011
	global_store_dword v0, v32, s[36:37]                       // 000000003128: DC708000 00242000
	s_branch 64489                                             // 000000003130: BF82FBE9 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5d8>
	s_add_u32 s18, s43, 1                                      // 000000003134: 8012812B
	s_cmp_ge_u32 s18, s79                                      // 000000003138: BF094F12
	s_cbranch_scc1 2488                                        // 00000000313C: BF8509B8 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d20>
	s_setprio 0                                                // 000000003140: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000003144: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 00000000314C: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 000000003154: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 00000000315C: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 000000003164: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 00000000316C: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 000000003174: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 00000000317C: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 000000003184: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 00000000318C: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 000000003194: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 00000000319C: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 0000000031A4: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 0000000031AC: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 0000000031B4: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 0000000031BC: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 0000000031C4: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 0000000031CC: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 0000000031D4: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 0000000031DC: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 0000000031E4: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 0000000031EC: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 0000000031F4: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 0000000031FC: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 000000003204: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 00000000320C: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000003214: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 00000000321C: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000003224: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 00000000322C: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 000000003234: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 00000000323C: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 000000003244: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 00000000324C: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 000000003254: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 00000000325C: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 000000003264: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 00000000326C: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 000000003274: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 00000000327C: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 000000003284: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 00000000328C: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 000000003294: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 00000000329C: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 0000000032A4: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 0000000032AC: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 0000000032B4: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 0000000032BC: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 0000000032C4: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 0000000032CC: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 0000000032D4: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 0000000032DC: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 0000000032E4: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 0000000032EC: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 0000000032F4: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 0000000032FC: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 000000003304: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 00000000330C: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 000000003314: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 00000000331C: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 000000003324: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 00000000332C: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 000000003334: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 00000000333C: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 000000003344: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 00000000334C: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 000000003354: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 00000000335C: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 000000003364: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 00000000336C: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 000000003374: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 00000000337C: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 000000003384: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 00000000338C: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 000000003394: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 00000000339C: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 0000000033A4: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 0000000033AC: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 0000000033B4: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 0000000033BC: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 0000000033C4: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 0000000033CC: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 0000000033D4: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 0000000033DC: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 0000000033E4: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 0000000033EC: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 0000000033F4: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 0000000033FC: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 000000003404: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 00000000340C: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 000000003414: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 00000000341C: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 000000003424: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 00000000342C: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 000000003434: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 00000000343C: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 000000003444: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 00000000344C: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 000000003454: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 00000000345C: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 000000003464: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 00000000346C: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 000000003474: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 00000000347C: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 000000003484: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 00000000348C: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 000000003494: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 00000000349C: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 0000000034A4: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 0000000034AC: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 0000000034B4: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 0000000034BC: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 0000000034C4: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 0000000034CC: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 0000000034D4: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 0000000034DC: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 0000000034E4: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 0000000034EC: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 0000000034F4: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 0000000034FC: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000003504: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 00000000350C: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 000000003514: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 00000000351C: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 000000003524: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 00000000352C: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 000000003534: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 00000000353C: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 000000003544: 7F320398
	v_mov_b32_e32 v151, v150                                   // 000000003548: 7F2E0396
	ds_read_b128 v[72:75], v231 offset:16384                   // 00000000354C: D9FE4000 480000E7
	ds_read_b128 v[76:79], v231 offset:16400                   // 000000003554: D9FE4010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:20480                   // 00000000355C: D9FE5000 500000E7
	ds_read_b128 v[84:87], v231 offset:20496                   // 000000003564: D9FE5010 540000E7
	s_barrier                                                  // 00000000356C: BF8A0000
	s_setprio 1                                                // 000000003570: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 000000003574: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 00000000357C: D3AD0044 020311C0
	ds_read_b128 v[144:147], v231 offset:24576                 // 000000003584: D9FE6000 900000E7
	ds_read_b128 v[148:151], v231 offset:24592                 // 00000000358C: D9FE6010 940000E7
	ds_read_b128 v[156:159], v231 offset:28672                 // 000000003594: D9FE7000 9C0000E7
	ds_read_b128 v[160:163], v231 offset:28688                 // 00000000359C: D9FE7010 A00000E7
	s_waitcnt lgkmcnt(4)                                       // 0000000035A4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 0000000035A8: D3AE0070 0203B948
	ds_read_b128 v[164:167], v232 offset:16384                 // 0000000035B0: D9FE4000 A40000E8
	ds_read_b128 v[168:171], v232 offset:16400                 // 0000000035B8: D9FE4010 A80000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 0000000035C0: D3AE0060 0203B950
	ds_read_b128 v[172:175], v232 offset:20480                 // 0000000035C8: D9FE5000 AC0000E8
	ds_read_b128 v[176:179], v232 offset:20496                 // 0000000035D0: D9FE5010 B00000E8
	s_waitcnt lgkmcnt(4)                                       // 0000000035D8: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[144:151], v[220:227], 0// 0000000035DC: D3AE0050 0203B990
	ds_read_b128 v[146:149], v232 offset:24576                 // 0000000035E4: D9FE6000 920000E8
	ds_read_b128 v[150:153], v232 offset:24592                 // 0000000035EC: D9FE6010 960000E8
	s_min_u32 s18, s20, s53                                    // 0000000035F4: 83923514
	s_add_u32 m0, s88, s16                                     // 0000000035F8: 807C1058
	s_nop 0                                                    // 0000000035FC: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000003600: E05D1000 121500E9
	v_mul_f32_e32 v72, v154, v64                               // 000000003608: 0A90819A
	v_add_f32_e32 v72, v250, v72                               // 00000000360C: 029091FA
	v_mul_f32_e32 v73, v155, v68                               // 000000003610: 0A92899B
	v_add_f32_e32 v250, v72, v73                               // 000000003614: 03F49348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[156:163], v[220:227], 0// 000000003618: D3AE0040 0203B99C
	ds_read_b128 v[154:157], v232 offset:28672                 // 000000003620: D9FE7000 9A0000E8
	ds_read_b128 v[158:161], v232 offset:28688                 // 000000003628: D9FE7010 9E0000E8
	s_add_u32 m0, s88, s94                                     // 000000003630: 807C5E58
	s_nop 0                                                    // 000000003634: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 000000003638: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 000000003640: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[164:171], v[200:207], v[112:127]// 000000003644: D3AE0070 05C391A4
	ds_read_b64_tr_b8 v[162:163], v246                         // 00000000364C: D9C40000 A20000F6
	ds_read_b64_tr_b8 v[164:165], v246 offset:1024             // 000000003654: D9C40400 A40000F6
	ds_read_b64_tr_b8 v[166:167], v246 offset:2048             // 00000000365C: D9C40800 A60000F6
	ds_read_b64_tr_b8 v[168:169], v246 offset:3072             // 000000003664: D9C40C00 A80000F6
	s_min_u32 s18, s17, s53                                    // 00000000366C: 83923511
	s_add_u32 m0, s88, s97                                     // 000000003670: 807C6158
	s_nop 0                                                    // 000000003674: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000003678: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[172:179], v[200:207], v[96:111]// 000000003680: D3AE0060 058391AC
	ds_read_b64_tr_b8 v[170:171], v246 offset:256              // 000000003688: D9C40100 AA0000F6
	ds_read_b64_tr_b8 v[172:173], v246 offset:1280             // 000000003690: D9C40500 AC0000F6
	ds_read_b64_tr_b8 v[174:175], v246 offset:2304             // 000000003698: D9C40900 AE0000F6
	ds_read_b64_tr_b8 v[176:177], v246 offset:3328             // 0000000036A0: D9C40D00 B00000F6
	s_add_u32 m0, s88, s95                                     // 0000000036A8: 807C5F58
	s_nop 0                                                    // 0000000036AC: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 0000000036B0: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 0000000036B8: 80142114
	s_add_u32 s17, s17, s33                                    // 0000000036BC: 80112111
	v_max_f32_e32 v144, v112, v113                             // 0000000036C0: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 0000000036C4: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 0000000036CC: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 0000000036D4: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 0000000036DC: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 0000000036E4: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 0000000036EC: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 0000000036F4: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 0000000036FC: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[146:153], v[200:207], v[80:95]// 000000003700: D3AE0050 05439192
	ds_read_b64_tr_b8 v[178:179], v246 offset:512              // 000000003708: D9C40200 B20000F6
	ds_read_b64_tr_b8 v[180:181], v246 offset:1536             // 000000003710: D9C40600 B40000F6
	ds_read_b64_tr_b8 v[182:183], v246 offset:2560             // 000000003718: D9C40A00 B60000F6
	ds_read_b64_tr_b8 v[184:185], v246 offset:3584             // 000000003720: D9C40E00 B80000F6
	v_max_f32_e32 v145, v96, v97                               // 000000003728: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 00000000372C: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 000000003734: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 00000000373C: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 000000003744: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 00000000374C: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 000000003754: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 00000000375C: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[154:161], v[200:207], v[64:79]// 000000003764: D3AE0040 0503919A
	s_nop 3                                                    // 00000000376C: BF800003
	v_max_f32_e32 v146, v80, v81                               // 000000003770: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 000000003774: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 00000000377C: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 000000003784: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 00000000378C: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 000000003794: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 00000000379C: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 0000000037A4: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 0000000037AC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[162:169], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 0000000037B0: D3AC0000 0003F7F2 D3AE0830 04C301A2
	ds_read_b64_tr_b8 v[148:149], v246 offset:768              // 0000000037C0: D9C40300 940000F6
	ds_read_b64_tr_b8 v[150:151], v246 offset:1792             // 0000000037C8: D9C40700 960000F6
	ds_read_b64_tr_b8 v[152:153], v246 offset:2816             // 0000000037D0: D9C40B00 980000F6
	ds_read_b64_tr_b8 v[154:155], v246 offset:3840             // 0000000037D8: D9C40F00 9A0000F6
	ds_read_b64_tr_b8 v[156:157], v246 offset:4096             // 0000000037E0: D9C41000 9C0000F6
	ds_read_b64_tr_b8 v[158:159], v246 offset:5120             // 0000000037E8: D9C41400 9E0000F6
	ds_read_b64_tr_b8 v[160:161], v246 offset:6144             // 0000000037F0: D9C41800 A00000F6
	ds_read_b64_tr_b8 v[162:163], v246 offset:7168             // 0000000037F8: D9C41C00 A20000F6
	v_max_f32_e32 v147, v64, v65                               // 000000003800: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 000000003804: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 00000000380C: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 000000003814: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 00000000381C: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 000000003824: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 00000000382C: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 000000003834: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[170:177], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 00000000383C: D3AC0000 0003F7F2 D3AE0820 048301AA
	v_max_f32_e32 v144, v144, v145                             // 00000000384C: 17212390
	v_max_f32_e32 v146, v146, v147                             // 000000003850: 17252792
	v_mov_b32_e32 v145, v144                                   // 000000003854: 7F220390
	v_mov_b32_e32 v147, v146                                   // 000000003858: 7F260392
	s_nop 0                                                    // 00000000385C: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 000000003860: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 000000003864: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 000000003868: 17212390
	v_max_f32_e32 v145, v146, v147                             // 00000000386C: 17232792
	s_waitcnt lgkmcnt(4)                                       // 000000003870: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[178:185], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000003874: D3AC0000 0003F7F2 D3AE0810 044301B2
	ds_read_b64_tr_b8 v[164:165], v246 offset:4352             // 000000003884: D9C41100 A40000F6
	ds_read_b64_tr_b8 v[166:167], v246 offset:5376             // 00000000388C: D9C41500 A60000F6
	ds_read_b64_tr_b8 v[168:169], v246 offset:6400             // 000000003894: D9C41900 A80000F6
	ds_read_b64_tr_b8 v[170:171], v246 offset:7424             // 00000000389C: D9C41D00 AA0000F6
	ds_read_b64_tr_b8 v[172:173], v246 offset:4608             // 0000000038A4: D9C41200 AC0000F6
	ds_read_b64_tr_b8 v[174:175], v246 offset:5632             // 0000000038AC: D9C41600 AE0000F6
	ds_read_b64_tr_b8 v[176:177], v246 offset:6656             // 0000000038B4: D9C41A00 B00000F6
	ds_read_b64_tr_b8 v[178:179], v246 offset:7680             // 0000000038BC: D9C41E00 B20000F6
	v_max_f32_e32 v146, v144, v145                             // 0000000038C4: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 0000000038C8: 0B2525EE
	v_max_f32_e32 v146, v252, v146                             // 0000000038CC: 172525FC
	v_sub_f32_e32 v147, v146, v252                             // 0000000038D0: 0527F992
	v_cmp_lt_f32_e32 vcc, s48, v147                            // 0000000038D4: 7C832630
	s_cmp_lg_u64 vcc, 0                                        // 0000000038D8: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 0000000038DC: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 0000000038E0: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[148:155], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 0000000038E4: D3AC0000 0003F7F2 D3AE0800 04030194
	v_cndmask_b32_e64 v148, v252, v146, s[18:19]               // 0000000038F4: D1000094 004B25FC
	v_fma_f32 v128, v144, v238, -v148                          // 0000000038FC: D1CB0080 8653DD90
	v_floor_f32_e32 v128, v128                                 // 000000003904: 7F003F80
	v_med3_f32 v128, v128, s98, 0                              // 000000003908: D1D60080 0200C580
	v_cvt_i32_f32_e32 v129, v128                               // 000000003910: 7F021180
	v_add_u32_e32 v251, 0x7f, v129                             // 000000003914: 69F702FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v251                           // 00000000391C: 2535F697
	v_fma_f32 v129, v145, v238, -v148                          // 000000003920: D1CB0081 8653DD91
	s_waitcnt lgkmcnt(4)                                       // 000000003928: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 00000000392C: D3AC0000 0003FBF2 D3AE0830 04C3119C
	ds_read_b64_tr_b8 v[156:157], v246 offset:4864             // 00000000393C: D9C41300 9C0000F6
	ds_read_b64_tr_b8 v[158:159], v246 offset:5888             // 000000003944: D9C41700 9E0000F6
	ds_read_b64_tr_b8 v[160:161], v246 offset:6912             // 00000000394C: D9C41B00 A00000F6
	ds_read_b64_tr_b8 v[162:163], v246 offset:7936             // 000000003954: D9C41F00 A20000F6
	v_floor_f32_e32 v129, v129                                 // 00000000395C: 7F023F81
	v_med3_f32 v129, v129, s98, 0                              // 000000003960: D1D60081 0200C581
	v_cvt_i32_f32_e32 v130, v129                               // 000000003968: 7F041181
	v_add_u32_e32 v149, 0x7f, v130                             // 00000000396C: 692B04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v149                           // 000000003974: 25372A97
	v_mov_b32_e32 v130, s50                                    // 000000003978: 7F040232
	v_fma_f32 v130, v148, s99, v130                            // 00000000397C: D1CB0082 0608C794
	v_fma_f32 v152, v128, s99, v130                            // 000000003984: D1CB0098 0608C780
	v_fma_f32 v150, v129, s99, v130                            // 00000000398C: D1CB0096 0608C781
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000003994: D3AC0000 0003FBF2 D3AE0820 048311A4
	s_waitcnt lgkmcnt(0)                                       // 0000000039A4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 0000000039A8: D3AC0000 0003FBF2 D3AE0810 044311AC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 0000000039B8: D3AC0000 0003FBF2 D3AE0800 0403119C
	s_cmp_eq_u32 s21, 0                                        // 0000000039C8: BF068015
	s_cbranch_scc1 68                                          // 0000000039CC: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1fe0>
	v_sub_f32_e32 v128, v252, v148                             // 0000000039D0: 050129FC
	v_exp_f32_e32 v128, v128                                   // 0000000039D4: 7F004180
	s_nop 0                                                    // 0000000039D8: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 0000000039DC: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 0000000039E4: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 0000000039EC: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 0000000039F4: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 0000000039FC: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000003A04: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000003A0C: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000003A14: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000003A1C: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000003A24: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000003A2C: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000003A34: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000003A3C: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000003A44: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000003A4C: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000003A54: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000003A5C: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000003A64: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000003A6C: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000003A74: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000003A7C: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000003A84: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000003A8C: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 000000003A94: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 000000003A9C: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 000000003AA4: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 000000003AAC: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 000000003AB4: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 000000003ABC: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 000000003AC4: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 000000003ACC: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 000000003AD4: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 000000003ADC: 0BF501FA
	s_waitcnt vmcnt(4)                                         // 000000003AE0: BF8C0F74
	s_barrier                                                  // 000000003AE4: BF8A0000
	s_add_u32 s43, s43, 1                                      // 000000003AE8: 802B812B
	s_add_u32 s18, s43, 1                                      // 000000003AEC: 8012812B
	s_cmp_ge_u32 s18, s79                                      // 000000003AF0: BF094F12
	s_cbranch_scc1 1870                                        // 000000003AF4: BF85074E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d30>
	s_setprio 0                                                // 000000003AF8: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000003AFC: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 000000003B04: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 000000003B0C: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 000000003B14: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 000000003B1C: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 000000003B24: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 000000003B2C: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 000000003B34: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 000000003B3C: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 000000003B44: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 000000003B4C: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 000000003B54: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 000000003B5C: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 000000003B64: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 000000003B6C: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 000000003B74: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 000000003B7C: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000003B84: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 000000003B8C: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000003B94: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 000000003B9C: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000003BA4: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 000000003BAC: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000003BB4: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 000000003BBC: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000003BC4: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000003BCC: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 000000003BD4: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000003BDC: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 000000003BE4: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 000000003BEC: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 000000003BF4: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 000000003BFC: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 000000003C04: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 000000003C0C: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 000000003C14: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 000000003C1C: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 000000003C24: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 000000003C2C: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 000000003C34: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 000000003C3C: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 000000003C44: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 000000003C4C: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 000000003C54: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 000000003C5C: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 000000003C64: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 000000003C6C: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 000000003C74: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 000000003C7C: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000003C84: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 000000003C8C: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000003C94: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 000000003C9C: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000003CA4: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 000000003CAC: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000003CB4: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 000000003CBC: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000003CC4: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 000000003CCC: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 000000003CD4: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 000000003CDC: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 000000003CE4: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 000000003CEC: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 000000003CF4: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 000000003CFC: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 000000003D04: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 000000003D0C: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 000000003D14: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 000000003D1C: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 000000003D24: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 000000003D2C: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 000000003D34: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 000000003D3C: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 000000003D44: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 000000003D4C: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 000000003D54: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 000000003D5C: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 000000003D64: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 000000003D6C: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 000000003D74: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 000000003D7C: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000003D84: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 000000003D8C: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000003D94: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 000000003D9C: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000003DA4: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 000000003DAC: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000003DB4: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 000000003DBC: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000003DC4: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 000000003DCC: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 000000003DD4: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 000000003DDC: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 000000003DE4: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 000000003DEC: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 000000003DF4: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 000000003DFC: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000003E04: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 000000003E0C: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 000000003E14: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 000000003E1C: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 000000003E24: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 000000003E2C: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 000000003E34: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 000000003E3C: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 000000003E44: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 000000003E4C: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 000000003E54: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 000000003E5C: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 000000003E64: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 000000003E6C: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 000000003E74: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000003E7C: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000003E84: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000003E8C: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000003E94: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000003E9C: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 000000003EA4: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 000000003EAC: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 000000003EB4: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000003EBC: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 000000003EC4: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 000000003ECC: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 000000003ED4: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 000000003EDC: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 000000003EE4: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 000000003EEC: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 000000003EF4: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 000000003EFC: 7F320398
	v_mov_b32_e32 v151, v150                                   // 000000003F00: 7F2E0396
	ds_read_b128 v[72:75], v231 offset:32768                   // 000000003F04: D9FE8000 480000E7
	ds_read_b128 v[76:79], v231 offset:32784                   // 000000003F0C: D9FE8010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:36864                   // 000000003F14: D9FE9000 500000E7
	ds_read_b128 v[84:87], v231 offset:36880                   // 000000003F1C: D9FE9010 540000E7
	s_barrier                                                  // 000000003F24: BF8A0000
	s_setprio 1                                                // 000000003F28: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 000000003F2C: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 000000003F34: D3AD0044 020311C0
	ds_read_b128 v[156:159], v231 offset:40960                 // 000000003F3C: D9FEA000 9C0000E7
	ds_read_b128 v[160:163], v231 offset:40976                 // 000000003F44: D9FEA010 A00000E7
	ds_read_b128 v[164:167], v231 offset:45056                 // 000000003F4C: D9FEB000 A40000E7
	ds_read_b128 v[168:171], v231 offset:45072                 // 000000003F54: D9FEB010 A80000E7
	s_waitcnt lgkmcnt(4)                                       // 000000003F5C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 000000003F60: D3AE0070 0203B948
	ds_read_b128 v[172:175], v232 offset:32768                 // 000000003F68: D9FE8000 AC0000E8
	ds_read_b128 v[176:179], v232 offset:32784                 // 000000003F70: D9FE8010 B00000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 000000003F78: D3AE0060 0203B950
	ds_read_b128 v[180:183], v232 offset:36864                 // 000000003F80: D9FE9000 B40000E8
	ds_read_b128 v[184:187], v232 offset:36880                 // 000000003F88: D9FE9010 B80000E8
	s_waitcnt lgkmcnt(4)                                       // 000000003F90: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[156:163], v[220:227], 0// 000000003F94: D3AE0050 0203B99C
	ds_read_b128 v[156:159], v232 offset:40960                 // 000000003F9C: D9FEA000 9C0000E8
	ds_read_b128 v[160:163], v232 offset:40976                 // 000000003FA4: D9FEA010 A00000E8
	s_min_u32 s18, s20, s53                                    // 000000003FAC: 83923514
	s_add_u32 m0, s88, s89                                     // 000000003FB0: 807C5958
	s_nop 0                                                    // 000000003FB4: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000003FB8: E05D1000 121500E9
	v_mul_f32_e32 v72, v154, v64                               // 000000003FC0: 0A90819A
	v_add_f32_e32 v72, v250, v72                               // 000000003FC4: 029091FA
	v_mul_f32_e32 v73, v155, v68                               // 000000003FC8: 0A92899B
	v_add_f32_e32 v250, v72, v73                               // 000000003FCC: 03F49348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[164:171], v[220:227], 0// 000000003FD0: D3AE0040 0203B9A4
	ds_read_b128 v[164:167], v232 offset:45056                 // 000000003FD8: D9FEB000 A40000E8
	ds_read_b128 v[168:171], v232 offset:45072                 // 000000003FE0: D9FEB010 A80000E8
	s_add_u32 m0, s88, s90                                     // 000000003FE8: 807C5A58
	s_nop 0                                                    // 000000003FEC: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 000000003FF0: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 000000003FF8: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[172:179], v[200:207], v[112:127]// 000000003FFC: D3AE0070 05C391AC
	ds_read_b64_tr_b8 v[172:173], v247                         // 000000004004: D9C40000 AC0000F7
	ds_read_b64_tr_b8 v[174:175], v247 offset:1024             // 00000000400C: D9C40400 AE0000F7
	ds_read_b64_tr_b8 v[176:177], v247 offset:2048             // 000000004014: D9C40800 B00000F7
	ds_read_b64_tr_b8 v[178:179], v247 offset:3072             // 00000000401C: D9C40C00 B20000F7
	s_min_u32 s18, s17, s53                                    // 000000004024: 83923511
	s_add_u32 m0, s88, s49                                     // 000000004028: 807C3158
	s_nop 0                                                    // 00000000402C: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000004030: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[180:187], v[200:207], v[96:111]// 000000004038: D3AE0060 058391B4
	ds_read_b64_tr_b8 v[180:181], v247 offset:256              // 000000004040: D9C40100 B40000F7
	ds_read_b64_tr_b8 v[182:183], v247 offset:1280             // 000000004048: D9C40500 B60000F7
	ds_read_b64_tr_b8 v[184:185], v247 offset:2304             // 000000004050: D9C40900 B80000F7
	ds_read_b64_tr_b8 v[186:187], v247 offset:3328             // 000000004058: D9C40D00 BA0000F7
	s_add_u32 m0, s88, s91                                     // 000000004060: 807C5B58
	s_nop 0                                                    // 000000004064: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000004068: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 000000004070: 80142114
	s_add_u32 s17, s17, s33                                    // 000000004074: 80112111
	v_max_f32_e32 v144, v112, v113                             // 000000004078: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 00000000407C: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 000000004084: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 00000000408C: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 000000004094: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 00000000409C: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 0000000040A4: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 0000000040AC: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 0000000040B4: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[156:163], v[200:207], v[80:95]// 0000000040B8: D3AE0050 0543919C
	ds_read_b64_tr_b8 v[150:151], v247 offset:512              // 0000000040C0: D9C40200 960000F7
	ds_read_b64_tr_b8 v[152:153], v247 offset:1536             // 0000000040C8: D9C40600 980000F7
	ds_read_b64_tr_b8 v[154:155], v247 offset:2560             // 0000000040D0: D9C40A00 9A0000F7
	ds_read_b64_tr_b8 v[156:157], v247 offset:3584             // 0000000040D8: D9C40E00 9C0000F7
	v_max_f32_e32 v145, v96, v97                               // 0000000040E0: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 0000000040E4: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 0000000040EC: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 0000000040F4: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 0000000040FC: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 000000004104: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 00000000410C: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 000000004114: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[164:171], v[200:207], v[64:79]// 00000000411C: D3AE0040 050391A4
	s_nop 3                                                    // 000000004124: BF800003
	v_max_f32_e32 v146, v80, v81                               // 000000004128: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 00000000412C: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 000000004134: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 00000000413C: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 000000004144: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 00000000414C: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 000000004154: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 00000000415C: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 000000004164: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[172:179], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000004168: D3AC0000 0003F7F2 D3AE0830 04C301AC
	ds_read_b64_tr_b8 v[158:159], v247 offset:768              // 000000004178: D9C40300 9E0000F7
	ds_read_b64_tr_b8 v[160:161], v247 offset:1792             // 000000004180: D9C40700 A00000F7
	ds_read_b64_tr_b8 v[162:163], v247 offset:2816             // 000000004188: D9C40B00 A20000F7
	ds_read_b64_tr_b8 v[164:165], v247 offset:3840             // 000000004190: D9C40F00 A40000F7
	ds_read_b64_tr_b8 v[166:167], v247 offset:4096             // 000000004198: D9C41000 A60000F7
	ds_read_b64_tr_b8 v[168:169], v247 offset:5120             // 0000000041A0: D9C41400 A80000F7
	ds_read_b64_tr_b8 v[170:171], v247 offset:6144             // 0000000041A8: D9C41800 AA0000F7
	ds_read_b64_tr_b8 v[172:173], v247 offset:7168             // 0000000041B0: D9C41C00 AC0000F7
	v_max_f32_e32 v147, v64, v65                               // 0000000041B8: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 0000000041BC: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 0000000041C4: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 0000000041CC: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 0000000041D4: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 0000000041DC: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 0000000041E4: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 0000000041EC: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[180:187], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 0000000041F4: D3AC0000 0003F7F2 D3AE0820 048301B4
	v_max_f32_e32 v144, v144, v145                             // 000000004204: 17212390
	v_max_f32_e32 v146, v146, v147                             // 000000004208: 17252792
	v_mov_b32_e32 v145, v144                                   // 00000000420C: 7F220390
	v_mov_b32_e32 v147, v146                                   // 000000004210: 7F260392
	s_nop 0                                                    // 000000004214: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 000000004218: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 00000000421C: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 000000004220: 17212390
	v_max_f32_e32 v145, v146, v147                             // 000000004224: 17232792
	s_waitcnt lgkmcnt(4)                                       // 000000004228: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[150:157], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 00000000422C: D3AC0000 0003F7F2 D3AE0810 04430196
	ds_read_b64_tr_b8 v[174:175], v247 offset:4352             // 00000000423C: D9C41100 AE0000F7
	ds_read_b64_tr_b8 v[176:177], v247 offset:5376             // 000000004244: D9C41500 B00000F7
	ds_read_b64_tr_b8 v[178:179], v247 offset:6400             // 00000000424C: D9C41900 B20000F7
	ds_read_b64_tr_b8 v[180:181], v247 offset:7424             // 000000004254: D9C41D00 B40000F7
	ds_read_b64_tr_b8 v[182:183], v247 offset:4608             // 00000000425C: D9C41200 B60000F7
	ds_read_b64_tr_b8 v[184:185], v247 offset:5632             // 000000004264: D9C41600 B80000F7
	ds_read_b64_tr_b8 v[186:187], v247 offset:6656             // 00000000426C: D9C41A00 BA0000F7
	ds_read_b64_tr_b8 v[188:189], v247 offset:7680             // 000000004274: D9C41E00 BC0000F7
	v_max_f32_e32 v146, v144, v145                             // 00000000427C: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 000000004280: 0B2525EE
	v_max_f32_e32 v146, v148, v146                             // 000000004284: 17252594
	v_sub_f32_e32 v147, v146, v148                             // 000000004288: 05272992
	v_cmp_lt_f32_e32 vcc, s48, v147                            // 00000000428C: 7C832630
	s_cmp_lg_u64 vcc, 0                                        // 000000004290: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 000000004294: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 000000004298: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[158:165], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 00000000429C: D3AC0000 0003F7F2 D3AE0800 0403019E
	v_cndmask_b32_e64 v252, v148, v146, s[18:19]               // 0000000042AC: D10000FC 004B2594
	v_fma_f32 v128, v144, v238, -v252                          // 0000000042B4: D1CB0080 87F3DD90
	v_floor_f32_e32 v128, v128                                 // 0000000042BC: 7F003F80
	v_med3_f32 v128, v128, s98, 0                              // 0000000042C0: D1D60080 0200C580
	v_cvt_i32_f32_e32 v129, v128                               // 0000000042C8: 7F021180
	v_add_u32_e32 v251, 0x7f, v129                             // 0000000042CC: 69F702FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v251                           // 0000000042D4: 2535F697
	v_fma_f32 v129, v145, v238, -v252                          // 0000000042D8: D1CB0081 87F3DD91
	s_waitcnt lgkmcnt(4)                                       // 0000000042E0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[166:173], v[136:143], v[48:63], v242, v149 op_sel_hi:[0,0,0]// 0000000042E4: D3AC0000 00032BF2 D3AE0830 04C311A6
	ds_read_b64_tr_b8 v[156:157], v247 offset:4864             // 0000000042F4: D9C41300 9C0000F7
	ds_read_b64_tr_b8 v[158:159], v247 offset:5888             // 0000000042FC: D9C41700 9E0000F7
	ds_read_b64_tr_b8 v[160:161], v247 offset:6912             // 000000004304: D9C41B00 A00000F7
	ds_read_b64_tr_b8 v[162:163], v247 offset:7936             // 00000000430C: D9C41F00 A20000F7
	v_floor_f32_e32 v129, v129                                 // 000000004314: 7F023F81
	v_med3_f32 v129, v129, s98, 0                              // 000000004318: D1D60081 0200C581
	v_cvt_i32_f32_e32 v130, v129                               // 000000004320: 7F041181
	v_add_u32_e32 v253, 0x7f, v130                             // 000000004324: 69FB04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v253                           // 00000000432C: 2537FA97
	v_mov_b32_e32 v130, s50                                    // 000000004330: 7F040232
	v_fma_f32 v130, v252, s99, v130                            // 000000004334: D1CB0082 0608C7FC
	v_fma_f32 v152, v128, s99, v130                            // 00000000433C: D1CB0098 0608C780
	v_fma_f32 v150, v129, s99, v130                            // 000000004344: D1CB0096 0608C781
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[174:181], v[136:143], v[32:47], v242, v149 op_sel_hi:[0,0,0]// 00000000434C: D3AC0000 00032BF2 D3AE0820 048311AE
	s_waitcnt lgkmcnt(0)                                       // 00000000435C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[182:189], v[136:143], v[16:31], v242, v149 op_sel_hi:[0,0,0]// 000000004360: D3AC0000 00032BF2 D3AE0810 044311B6
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v149 op_sel_hi:[0,0,0]// 000000004370: D3AC0000 00032BF2 D3AE0800 0403119C
	s_cmp_eq_u32 s21, 0                                        // 000000004380: BF068015
	s_cbranch_scc1 68                                          // 000000004384: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2998>
	v_sub_f32_e32 v128, v148, v252                             // 000000004388: 0501F994
	v_exp_f32_e32 v128, v128                                   // 00000000438C: 7F004180
	s_nop 0                                                    // 000000004390: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 000000004394: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 00000000439C: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 0000000043A4: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 0000000043AC: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 0000000043B4: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 0000000043BC: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 0000000043C4: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 0000000043CC: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 0000000043D4: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 0000000043DC: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 0000000043E4: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 0000000043EC: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 0000000043F4: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 0000000043FC: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000004404: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 00000000440C: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000004414: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 00000000441C: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000004424: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 00000000442C: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000004434: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 00000000443C: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000004444: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 00000000444C: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 000000004454: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 00000000445C: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 000000004464: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 00000000446C: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 000000004474: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 00000000447C: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 000000004484: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 00000000448C: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 000000004494: 0BF501FA
	s_waitcnt vmcnt(4)                                         // 000000004498: BF8C0F74
	s_barrier                                                  // 00000000449C: BF8A0000
	s_add_u32 s43, s43, 1                                      // 0000000044A0: 802B812B
	s_add_u32 s18, s43, 1                                      // 0000000044A4: 8012812B
	s_cmp_ge_u32 s18, s79                                      // 0000000044A8: BF094F12
	s_cbranch_scc1 1244                                        // 0000000044AC: BF8504DC <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d20>
	s_setprio 0                                                // 0000000044B0: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 0000000044B4: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 0000000044BC: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 0000000044C4: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 0000000044CC: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 0000000044D4: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 0000000044DC: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 0000000044E4: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 0000000044EC: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 0000000044F4: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 0000000044FC: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 000000004504: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 00000000450C: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 000000004514: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 00000000451C: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 000000004524: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 00000000452C: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 000000004534: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 00000000453C: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 000000004544: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 00000000454C: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 000000004554: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 00000000455C: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 000000004564: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 00000000456C: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 000000004574: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 00000000457C: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000004584: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 00000000458C: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000004594: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 00000000459C: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 0000000045A4: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 0000000045AC: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 0000000045B4: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 0000000045BC: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 0000000045C4: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 0000000045CC: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 0000000045D4: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 0000000045DC: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 0000000045E4: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 0000000045EC: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 0000000045F4: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 0000000045FC: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 000000004604: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 00000000460C: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 000000004614: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 00000000461C: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 000000004624: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 00000000462C: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 000000004634: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 00000000463C: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 000000004644: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 00000000464C: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 000000004654: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 00000000465C: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 000000004664: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 00000000466C: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 000000004674: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 00000000467C: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 000000004684: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 00000000468C: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 000000004694: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 00000000469C: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 0000000046A4: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 0000000046AC: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 0000000046B4: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 0000000046BC: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 0000000046C4: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 0000000046CC: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 0000000046D4: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 0000000046DC: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 0000000046E4: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 0000000046EC: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 0000000046F4: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 0000000046FC: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 000000004704: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 00000000470C: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 000000004714: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 00000000471C: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 000000004724: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 00000000472C: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 000000004734: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 00000000473C: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 000000004744: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 00000000474C: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 000000004754: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 00000000475C: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 000000004764: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 00000000476C: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 000000004774: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 00000000477C: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 000000004784: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 00000000478C: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 000000004794: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 00000000479C: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 0000000047A4: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 0000000047AC: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 0000000047B4: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 0000000047BC: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 0000000047C4: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 0000000047CC: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 0000000047D4: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 0000000047DC: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 0000000047E4: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 0000000047EC: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 0000000047F4: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 0000000047FC: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 000000004804: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 00000000480C: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 000000004814: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 00000000481C: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 000000004824: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 00000000482C: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000004834: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 00000000483C: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000004844: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 00000000484C: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000004854: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 00000000485C: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 000000004864: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 00000000486C: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000004874: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 00000000487C: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 000000004884: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 00000000488C: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 000000004894: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 00000000489C: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 0000000048A4: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 0000000048AC: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 0000000048B4: 7F320398
	v_mov_b32_e32 v151, v150                                   // 0000000048B8: 7F2E0396
	ds_read_b128 v[72:75], v231 offset:49152                   // 0000000048BC: D9FEC000 480000E7
	ds_read_b128 v[76:79], v231 offset:49168                   // 0000000048C4: D9FEC010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:53248                   // 0000000048CC: D9FED000 500000E7
	ds_read_b128 v[84:87], v231 offset:53264                   // 0000000048D4: D9FED010 540000E7
	s_barrier                                                  // 0000000048DC: BF8A0000
	s_setprio 1                                                // 0000000048E0: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 0000000048E4: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 0000000048EC: D3AD0044 020311C0
	ds_read_b128 v[144:147], v231 offset:57344                 // 0000000048F4: D9FEE000 900000E7
	ds_read_b128 v[148:151], v231 offset:57360                 // 0000000048FC: D9FEE010 940000E7
	ds_read_b128 v[156:159], v231 offset:61440                 // 000000004904: D9FEF000 9C0000E7
	ds_read_b128 v[160:163], v231 offset:61456                 // 00000000490C: D9FEF010 A00000E7
	s_waitcnt lgkmcnt(4)                                       // 000000004914: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 000000004918: D3AE0070 0203B948
	ds_read_b128 v[164:167], v232 offset:49152                 // 000000004920: D9FEC000 A40000E8
	ds_read_b128 v[168:171], v232 offset:49168                 // 000000004928: D9FEC010 A80000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 000000004930: D3AE0060 0203B950
	ds_read_b128 v[172:175], v232 offset:53248                 // 000000004938: D9FED000 AC0000E8
	ds_read_b128 v[176:179], v232 offset:53264                 // 000000004940: D9FED010 B00000E8
	s_waitcnt lgkmcnt(4)                                       // 000000004948: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[144:151], v[220:227], 0// 00000000494C: D3AE0050 0203B990
	ds_read_b128 v[146:149], v232 offset:57344                 // 000000004954: D9FEE000 920000E8
	ds_read_b128 v[150:153], v232 offset:57360                 // 00000000495C: D9FEE010 960000E8
	s_min_u32 s18, s20, s53                                    // 000000004964: 83923514
	s_add_u32 m0, s88, s34                                     // 000000004968: 807C2258
	s_nop 0                                                    // 00000000496C: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000004970: E05D1000 121500E9
	v_mul_f32_e32 v72, v154, v64                               // 000000004978: 0A90819A
	v_add_f32_e32 v72, v250, v72                               // 00000000497C: 029091FA
	v_mul_f32_e32 v73, v155, v68                               // 000000004980: 0A92899B
	v_add_f32_e32 v250, v72, v73                               // 000000004984: 03F49348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[156:163], v[220:227], 0// 000000004988: D3AE0040 0203B99C
	ds_read_b128 v[154:157], v232 offset:61440                 // 000000004990: D9FEF000 9A0000E8
	ds_read_b128 v[158:161], v232 offset:61456                 // 000000004998: D9FEF010 9E0000E8
	s_add_u32 m0, s88, s35                                     // 0000000049A0: 807C2358
	s_nop 0                                                    // 0000000049A4: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 0000000049A8: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 0000000049B0: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[164:171], v[200:207], v[112:127]// 0000000049B4: D3AE0070 05C391A4
	ds_read_b64_tr_b8 v[162:163], v248                         // 0000000049BC: D9C40000 A20000F8
	ds_read_b64_tr_b8 v[164:165], v248 offset:1024             // 0000000049C4: D9C40400 A40000F8
	ds_read_b64_tr_b8 v[166:167], v248 offset:2048             // 0000000049CC: D9C40800 A60000F8
	ds_read_b64_tr_b8 v[168:169], v248 offset:3072             // 0000000049D4: D9C40C00 A80000F8
	s_min_u32 s18, s17, s53                                    // 0000000049DC: 83923511
	s_add_u32 m0, s88, s92                                     // 0000000049E0: 807C5C58
	s_nop 0                                                    // 0000000049E4: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 0000000049E8: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[172:179], v[200:207], v[96:111]// 0000000049F0: D3AE0060 058391AC
	ds_read_b64_tr_b8 v[170:171], v248 offset:256              // 0000000049F8: D9C40100 AA0000F8
	ds_read_b64_tr_b8 v[172:173], v248 offset:1280             // 000000004A00: D9C40500 AC0000F8
	ds_read_b64_tr_b8 v[174:175], v248 offset:2304             // 000000004A08: D9C40900 AE0000F8
	ds_read_b64_tr_b8 v[176:177], v248 offset:3328             // 000000004A10: D9C40D00 B00000F8
	s_add_u32 m0, s88, s12                                     // 000000004A18: 807C0C58
	s_nop 0                                                    // 000000004A1C: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000004A20: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 000000004A28: 80142114
	s_add_u32 s17, s17, s33                                    // 000000004A2C: 80112111
	v_max_f32_e32 v144, v112, v113                             // 000000004A30: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 000000004A34: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 000000004A3C: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 000000004A44: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 000000004A4C: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 000000004A54: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 000000004A5C: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 000000004A64: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 000000004A6C: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[146:153], v[200:207], v[80:95]// 000000004A70: D3AE0050 05439192
	ds_read_b64_tr_b8 v[178:179], v248 offset:512              // 000000004A78: D9C40200 B20000F8
	ds_read_b64_tr_b8 v[180:181], v248 offset:1536             // 000000004A80: D9C40600 B40000F8
	ds_read_b64_tr_b8 v[182:183], v248 offset:2560             // 000000004A88: D9C40A00 B60000F8
	ds_read_b64_tr_b8 v[184:185], v248 offset:3584             // 000000004A90: D9C40E00 B80000F8
	v_max_f32_e32 v145, v96, v97                               // 000000004A98: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 000000004A9C: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 000000004AA4: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 000000004AAC: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 000000004AB4: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 000000004ABC: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 000000004AC4: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 000000004ACC: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[154:161], v[200:207], v[64:79]// 000000004AD4: D3AE0040 0503919A
	s_nop 3                                                    // 000000004ADC: BF800003
	v_max_f32_e32 v146, v80, v81                               // 000000004AE0: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 000000004AE4: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 000000004AEC: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 000000004AF4: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 000000004AFC: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 000000004B04: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 000000004B0C: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 000000004B14: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 000000004B1C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[162:169], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000004B20: D3AC0000 0003F7F2 D3AE0830 04C301A2
	ds_read_b64_tr_b8 v[148:149], v248 offset:768              // 000000004B30: D9C40300 940000F8
	ds_read_b64_tr_b8 v[150:151], v248 offset:1792             // 000000004B38: D9C40700 960000F8
	ds_read_b64_tr_b8 v[152:153], v248 offset:2816             // 000000004B40: D9C40B00 980000F8
	ds_read_b64_tr_b8 v[154:155], v248 offset:3840             // 000000004B48: D9C40F00 9A0000F8
	ds_read_b64_tr_b8 v[156:157], v248 offset:4096             // 000000004B50: D9C41000 9C0000F8
	ds_read_b64_tr_b8 v[158:159], v248 offset:5120             // 000000004B58: D9C41400 9E0000F8
	ds_read_b64_tr_b8 v[160:161], v248 offset:6144             // 000000004B60: D9C41800 A00000F8
	ds_read_b64_tr_b8 v[162:163], v248 offset:7168             // 000000004B68: D9C41C00 A20000F8
	v_max_f32_e32 v147, v64, v65                               // 000000004B70: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 000000004B74: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 000000004B7C: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 000000004B84: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 000000004B8C: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 000000004B94: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 000000004B9C: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 000000004BA4: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[170:177], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000004BAC: D3AC0000 0003F7F2 D3AE0820 048301AA
	v_max_f32_e32 v144, v144, v145                             // 000000004BBC: 17212390
	v_max_f32_e32 v146, v146, v147                             // 000000004BC0: 17252792
	v_mov_b32_e32 v145, v144                                   // 000000004BC4: 7F220390
	v_mov_b32_e32 v147, v146                                   // 000000004BC8: 7F260392
	s_nop 0                                                    // 000000004BCC: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 000000004BD0: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 000000004BD4: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 000000004BD8: 17212390
	v_max_f32_e32 v145, v146, v147                             // 000000004BDC: 17232792
	s_waitcnt lgkmcnt(4)                                       // 000000004BE0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[178:185], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000004BE4: D3AC0000 0003F7F2 D3AE0810 044301B2
	ds_read_b64_tr_b8 v[164:165], v248 offset:4352             // 000000004BF4: D9C41100 A40000F8
	ds_read_b64_tr_b8 v[166:167], v248 offset:5376             // 000000004BFC: D9C41500 A60000F8
	ds_read_b64_tr_b8 v[168:169], v248 offset:6400             // 000000004C04: D9C41900 A80000F8
	ds_read_b64_tr_b8 v[170:171], v248 offset:7424             // 000000004C0C: D9C41D00 AA0000F8
	ds_read_b64_tr_b8 v[172:173], v248 offset:4608             // 000000004C14: D9C41200 AC0000F8
	ds_read_b64_tr_b8 v[174:175], v248 offset:5632             // 000000004C1C: D9C41600 AE0000F8
	ds_read_b64_tr_b8 v[176:177], v248 offset:6656             // 000000004C24: D9C41A00 B00000F8
	ds_read_b64_tr_b8 v[178:179], v248 offset:7680             // 000000004C2C: D9C41E00 B20000F8
	v_max_f32_e32 v146, v144, v145                             // 000000004C34: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 000000004C38: 0B2525EE
	v_max_f32_e32 v146, v252, v146                             // 000000004C3C: 172525FC
	v_sub_f32_e32 v147, v146, v252                             // 000000004C40: 0527F992
	v_cmp_lt_f32_e32 vcc, s48, v147                            // 000000004C44: 7C832630
	s_cmp_lg_u64 vcc, 0                                        // 000000004C48: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 000000004C4C: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 000000004C50: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[148:155], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000004C54: D3AC0000 0003F7F2 D3AE0800 04030194
	v_cndmask_b32_e64 v148, v252, v146, s[18:19]               // 000000004C64: D1000094 004B25FC
	v_fma_f32 v128, v144, v238, -v148                          // 000000004C6C: D1CB0080 8653DD90
	v_floor_f32_e32 v128, v128                                 // 000000004C74: 7F003F80
	v_med3_f32 v128, v128, s98, 0                              // 000000004C78: D1D60080 0200C580
	v_cvt_i32_f32_e32 v129, v128                               // 000000004C80: 7F021180
	v_add_u32_e32 v251, 0x7f, v129                             // 000000004C84: 69F702FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v251                           // 000000004C8C: 2535F697
	v_fma_f32 v129, v145, v238, -v148                          // 000000004C90: D1CB0081 8653DD91
	s_waitcnt lgkmcnt(4)                                       // 000000004C98: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000004C9C: D3AC0000 0003FBF2 D3AE0830 04C3119C
	ds_read_b64_tr_b8 v[156:157], v248 offset:4864             // 000000004CAC: D9C41300 9C0000F8
	ds_read_b64_tr_b8 v[158:159], v248 offset:5888             // 000000004CB4: D9C41700 9E0000F8
	ds_read_b64_tr_b8 v[160:161], v248 offset:6912             // 000000004CBC: D9C41B00 A00000F8
	ds_read_b64_tr_b8 v[162:163], v248 offset:7936             // 000000004CC4: D9C41F00 A20000F8
	v_floor_f32_e32 v129, v129                                 // 000000004CCC: 7F023F81
	v_med3_f32 v129, v129, s98, 0                              // 000000004CD0: D1D60081 0200C581
	v_cvt_i32_f32_e32 v130, v129                               // 000000004CD8: 7F041181
	v_add_u32_e32 v149, 0x7f, v130                             // 000000004CDC: 692B04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v149                           // 000000004CE4: 25372A97
	v_mov_b32_e32 v130, s50                                    // 000000004CE8: 7F040232
	v_fma_f32 v130, v148, s99, v130                            // 000000004CEC: D1CB0082 0608C794
	v_fma_f32 v152, v128, s99, v130                            // 000000004CF4: D1CB0098 0608C780
	v_fma_f32 v150, v129, s99, v130                            // 000000004CFC: D1CB0096 0608C781
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000004D04: D3AC0000 0003FBF2 D3AE0820 048311A4
	s_waitcnt lgkmcnt(0)                                       // 000000004D14: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000004D18: D3AC0000 0003FBF2 D3AE0810 044311AC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000004D28: D3AC0000 0003FBF2 D3AE0800 0403119C
	s_cmp_eq_u32 s21, 0                                        // 000000004D38: BF068015
	s_cbranch_scc1 68                                          // 000000004D3C: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3350>
	v_sub_f32_e32 v128, v252, v148                             // 000000004D40: 050129FC
	v_exp_f32_e32 v128, v128                                   // 000000004D44: 7F004180
	s_nop 0                                                    // 000000004D48: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 000000004D4C: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 000000004D54: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000004D5C: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000004D64: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000004D6C: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000004D74: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000004D7C: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000004D84: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000004D8C: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000004D94: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000004D9C: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000004DA4: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000004DAC: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000004DB4: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000004DBC: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000004DC4: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000004DCC: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000004DD4: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000004DDC: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000004DE4: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000004DEC: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000004DF4: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000004DFC: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 000000004E04: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 000000004E0C: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 000000004E14: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 000000004E1C: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 000000004E24: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 000000004E2C: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 000000004E34: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 000000004E3C: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 000000004E44: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 000000004E4C: 0BF501FA
	s_waitcnt vmcnt(4)                                         // 000000004E50: BF8C0F74
	s_barrier                                                  // 000000004E54: BF8A0000
	s_add_u32 s43, s43, 1                                      // 000000004E58: 802B812B
	s_add_u32 s18, s43, 1                                      // 000000004E5C: 8012812B
	s_cmp_ge_u32 s18, s79                                      // 000000004E60: BF094F12
	s_cbranch_scc1 620                                         // 000000004E64: BF85026C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d18>
	s_setprio 0                                                // 000000004E68: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000004E6C: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 000000004E74: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 000000004E7C: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 000000004E84: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 000000004E8C: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 000000004E94: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 000000004E9C: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 000000004EA4: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 000000004EAC: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 000000004EB4: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 000000004EBC: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 000000004EC4: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 000000004ECC: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 000000004ED4: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 000000004EDC: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 000000004EE4: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 000000004EEC: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000004EF4: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 000000004EFC: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000004F04: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 000000004F0C: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000004F14: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 000000004F1C: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000004F24: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 000000004F2C: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000004F34: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000004F3C: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 000000004F44: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000004F4C: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 000000004F54: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 000000004F5C: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 000000004F64: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 000000004F6C: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 000000004F74: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 000000004F7C: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 000000004F84: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 000000004F8C: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 000000004F94: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 000000004F9C: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 000000004FA4: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 000000004FAC: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 000000004FB4: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 000000004FBC: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 000000004FC4: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 000000004FCC: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 000000004FD4: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 000000004FDC: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 000000004FE4: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 000000004FEC: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000004FF4: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 000000004FFC: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000005004: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 00000000500C: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000005014: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 00000000501C: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000005024: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 00000000502C: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000005034: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 00000000503C: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 000000005044: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 00000000504C: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 000000005054: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 00000000505C: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 000000005064: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 00000000506C: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 000000005074: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 00000000507C: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 000000005084: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 00000000508C: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 000000005094: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 00000000509C: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 0000000050A4: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 0000000050AC: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 0000000050B4: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 0000000050BC: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 0000000050C4: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 0000000050CC: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 0000000050D4: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 0000000050DC: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 0000000050E4: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 0000000050EC: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 0000000050F4: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 0000000050FC: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000005104: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 00000000510C: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000005114: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 00000000511C: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000005124: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 00000000512C: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000005134: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 00000000513C: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 000000005144: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 00000000514C: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 000000005154: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 00000000515C: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 000000005164: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 00000000516C: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000005174: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 00000000517C: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 000000005184: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 00000000518C: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 000000005194: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 00000000519C: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 0000000051A4: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 0000000051AC: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 0000000051B4: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 0000000051BC: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 0000000051C4: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 0000000051CC: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 0000000051D4: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 0000000051DC: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 0000000051E4: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 0000000051EC: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 0000000051F4: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 0000000051FC: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000005204: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 00000000520C: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 000000005214: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 00000000521C: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 000000005224: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 00000000522C: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 000000005234: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 00000000523C: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 000000005244: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 00000000524C: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 000000005254: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 00000000525C: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 000000005264: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 00000000526C: 7F320398
	v_mov_b32_e32 v151, v150                                   // 000000005270: 7F2E0396
	ds_read_b128 v[72:75], v231                                // 000000005274: D9FE0000 480000E7
	ds_read_b128 v[76:79], v231 offset:16                      // 00000000527C: D9FE0010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:4096                    // 000000005284: D9FE1000 500000E7
	ds_read_b128 v[84:87], v231 offset:4112                    // 00000000528C: D9FE1010 540000E7
	s_barrier                                                  // 000000005294: BF8A0000
	s_setprio 1                                                // 000000005298: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 00000000529C: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 0000000052A4: D3AD0044 020311C0
	ds_read_b128 v[156:159], v231 offset:8192                  // 0000000052AC: D9FE2000 9C0000E7
	ds_read_b128 v[160:163], v231 offset:8208                  // 0000000052B4: D9FE2010 A00000E7
	ds_read_b128 v[164:167], v231 offset:12288                 // 0000000052BC: D9FE3000 A40000E7
	ds_read_b128 v[168:171], v231 offset:12304                 // 0000000052C4: D9FE3010 A80000E7
	s_waitcnt lgkmcnt(4)                                       // 0000000052CC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 0000000052D0: D3AE0070 0203B948
	ds_read_b128 v[172:175], v232                              // 0000000052D8: D9FE0000 AC0000E8
	ds_read_b128 v[176:179], v232 offset:16                    // 0000000052E0: D9FE0010 B00000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 0000000052E8: D3AE0060 0203B950
	ds_read_b128 v[180:183], v232 offset:4096                  // 0000000052F0: D9FE1000 B40000E8
	ds_read_b128 v[184:187], v232 offset:4112                  // 0000000052F8: D9FE1010 B80000E8
	s_waitcnt lgkmcnt(4)                                       // 000000005300: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[156:163], v[220:227], 0// 000000005304: D3AE0050 0203B99C
	ds_read_b128 v[156:159], v232 offset:8192                  // 00000000530C: D9FE2000 9C0000E8
	ds_read_b128 v[160:163], v232 offset:8208                  // 000000005314: D9FE2010 A00000E8
	s_min_u32 s18, s20, s53                                    // 00000000531C: 83923514
	s_add_u32 m0, s88, s13                                     // 000000005320: 807C0D58
	s_nop 0                                                    // 000000005324: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000005328: E05D1000 121500E9
	v_mul_f32_e32 v72, v154, v64                               // 000000005330: 0A90819A
	v_add_f32_e32 v72, v250, v72                               // 000000005334: 029091FA
	v_mul_f32_e32 v73, v155, v68                               // 000000005338: 0A92899B
	v_add_f32_e32 v250, v72, v73                               // 00000000533C: 03F49348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[164:171], v[220:227], 0// 000000005340: D3AE0040 0203B9A4
	ds_read_b128 v[164:167], v232 offset:12288                 // 000000005348: D9FE3000 A40000E8
	ds_read_b128 v[168:171], v232 offset:12304                 // 000000005350: D9FE3010 A80000E8
	s_add_u32 m0, s88, s6                                      // 000000005358: 807C0658
	s_nop 0                                                    // 00000000535C: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 000000005360: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 000000005368: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[172:179], v[200:207], v[112:127]// 00000000536C: D3AE0070 05C391AC
	ds_read_b64_tr_b8 v[172:173], v249                         // 000000005374: D9C40000 AC0000F9
	ds_read_b64_tr_b8 v[174:175], v249 offset:1024             // 00000000537C: D9C40400 AE0000F9
	ds_read_b64_tr_b8 v[176:177], v249 offset:2048             // 000000005384: D9C40800 B00000F9
	ds_read_b64_tr_b8 v[178:179], v249 offset:3072             // 00000000538C: D9C40C00 B20000F9
	s_min_u32 s18, s17, s53                                    // 000000005394: 83923511
	s_add_u32 m0, s88, s93                                     // 000000005398: 807C5D58
	s_nop 0                                                    // 00000000539C: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 0000000053A0: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[180:187], v[200:207], v[96:111]// 0000000053A8: D3AE0060 058391B4
	ds_read_b64_tr_b8 v[180:181], v249 offset:256              // 0000000053B0: D9C40100 B40000F9
	ds_read_b64_tr_b8 v[182:183], v249 offset:1280             // 0000000053B8: D9C40500 B60000F9
	ds_read_b64_tr_b8 v[184:185], v249 offset:2304             // 0000000053C0: D9C40900 B80000F9
	ds_read_b64_tr_b8 v[186:187], v249 offset:3328             // 0000000053C8: D9C40D00 BA0000F9
	s_add_u32 m0, s88, s76                                     // 0000000053D0: 807C4C58
	s_nop 0                                                    // 0000000053D4: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 0000000053D8: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 0000000053E0: 80142114
	s_add_u32 s17, s17, s33                                    // 0000000053E4: 80112111
	v_max_f32_e32 v144, v112, v113                             // 0000000053E8: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 0000000053EC: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 0000000053F4: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 0000000053FC: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 000000005404: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 00000000540C: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 000000005414: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 00000000541C: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 000000005424: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[156:163], v[200:207], v[80:95]// 000000005428: D3AE0050 0543919C
	ds_read_b64_tr_b8 v[150:151], v249 offset:512              // 000000005430: D9C40200 960000F9
	ds_read_b64_tr_b8 v[152:153], v249 offset:1536             // 000000005438: D9C40600 980000F9
	ds_read_b64_tr_b8 v[154:155], v249 offset:2560             // 000000005440: D9C40A00 9A0000F9
	ds_read_b64_tr_b8 v[156:157], v249 offset:3584             // 000000005448: D9C40E00 9C0000F9
	v_max_f32_e32 v145, v96, v97                               // 000000005450: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 000000005454: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 00000000545C: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 000000005464: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 00000000546C: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 000000005474: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 00000000547C: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 000000005484: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[164:171], v[200:207], v[64:79]// 00000000548C: D3AE0040 050391A4
	s_nop 3                                                    // 000000005494: BF800003
	v_max_f32_e32 v146, v80, v81                               // 000000005498: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 00000000549C: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 0000000054A4: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 0000000054AC: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 0000000054B4: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 0000000054BC: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 0000000054C4: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 0000000054CC: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 0000000054D4: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[172:179], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 0000000054D8: D3AC0000 0003F7F2 D3AE0830 04C301AC
	ds_read_b64_tr_b8 v[158:159], v249 offset:768              // 0000000054E8: D9C40300 9E0000F9
	ds_read_b64_tr_b8 v[160:161], v249 offset:1792             // 0000000054F0: D9C40700 A00000F9
	ds_read_b64_tr_b8 v[162:163], v249 offset:2816             // 0000000054F8: D9C40B00 A20000F9
	ds_read_b64_tr_b8 v[164:165], v249 offset:3840             // 000000005500: D9C40F00 A40000F9
	ds_read_b64_tr_b8 v[166:167], v249 offset:4096             // 000000005508: D9C41000 A60000F9
	ds_read_b64_tr_b8 v[168:169], v249 offset:5120             // 000000005510: D9C41400 A80000F9
	ds_read_b64_tr_b8 v[170:171], v249 offset:6144             // 000000005518: D9C41800 AA0000F9
	ds_read_b64_tr_b8 v[172:173], v249 offset:7168             // 000000005520: D9C41C00 AC0000F9
	v_max_f32_e32 v147, v64, v65                               // 000000005528: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 00000000552C: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 000000005534: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 00000000553C: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 000000005544: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 00000000554C: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 000000005554: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 00000000555C: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[180:187], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000005564: D3AC0000 0003F7F2 D3AE0820 048301B4
	v_max_f32_e32 v144, v144, v145                             // 000000005574: 17212390
	v_max_f32_e32 v146, v146, v147                             // 000000005578: 17252792
	v_mov_b32_e32 v145, v144                                   // 00000000557C: 7F220390
	v_mov_b32_e32 v147, v146                                   // 000000005580: 7F260392
	s_nop 0                                                    // 000000005584: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 000000005588: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 00000000558C: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 000000005590: 17212390
	v_max_f32_e32 v145, v146, v147                             // 000000005594: 17232792
	s_waitcnt lgkmcnt(4)                                       // 000000005598: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[150:157], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 00000000559C: D3AC0000 0003F7F2 D3AE0810 04430196
	ds_read_b64_tr_b8 v[174:175], v249 offset:4352             // 0000000055AC: D9C41100 AE0000F9
	ds_read_b64_tr_b8 v[176:177], v249 offset:5376             // 0000000055B4: D9C41500 B00000F9
	ds_read_b64_tr_b8 v[178:179], v249 offset:6400             // 0000000055BC: D9C41900 B20000F9
	ds_read_b64_tr_b8 v[180:181], v249 offset:7424             // 0000000055C4: D9C41D00 B40000F9
	ds_read_b64_tr_b8 v[182:183], v249 offset:4608             // 0000000055CC: D9C41200 B60000F9
	ds_read_b64_tr_b8 v[184:185], v249 offset:5632             // 0000000055D4: D9C41600 B80000F9
	ds_read_b64_tr_b8 v[186:187], v249 offset:6656             // 0000000055DC: D9C41A00 BA0000F9
	ds_read_b64_tr_b8 v[188:189], v249 offset:7680             // 0000000055E4: D9C41E00 BC0000F9
	v_max_f32_e32 v146, v144, v145                             // 0000000055EC: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 0000000055F0: 0B2525EE
	v_max_f32_e32 v146, v148, v146                             // 0000000055F4: 17252594
	v_sub_f32_e32 v147, v146, v148                             // 0000000055F8: 05272992
	v_cmp_lt_f32_e32 vcc, s48, v147                            // 0000000055FC: 7C832630
	s_cmp_lg_u64 vcc, 0                                        // 000000005600: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 000000005604: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 000000005608: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[158:165], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 00000000560C: D3AC0000 0003F7F2 D3AE0800 0403019E
	v_cndmask_b32_e64 v252, v148, v146, s[18:19]               // 00000000561C: D10000FC 004B2594
	v_fma_f32 v128, v144, v238, -v252                          // 000000005624: D1CB0080 87F3DD90
	v_floor_f32_e32 v128, v128                                 // 00000000562C: 7F003F80
	v_med3_f32 v128, v128, s98, 0                              // 000000005630: D1D60080 0200C580
	v_cvt_i32_f32_e32 v129, v128                               // 000000005638: 7F021180
	v_add_u32_e32 v251, 0x7f, v129                             // 00000000563C: 69F702FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v251                           // 000000005644: 2535F697
	v_fma_f32 v129, v145, v238, -v252                          // 000000005648: D1CB0081 87F3DD91
	s_waitcnt lgkmcnt(4)                                       // 000000005650: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[166:173], v[136:143], v[48:63], v242, v149 op_sel_hi:[0,0,0]// 000000005654: D3AC0000 00032BF2 D3AE0830 04C311A6
	ds_read_b64_tr_b8 v[156:157], v249 offset:4864             // 000000005664: D9C41300 9C0000F9
	ds_read_b64_tr_b8 v[158:159], v249 offset:5888             // 00000000566C: D9C41700 9E0000F9
	ds_read_b64_tr_b8 v[160:161], v249 offset:6912             // 000000005674: D9C41B00 A00000F9
	ds_read_b64_tr_b8 v[162:163], v249 offset:7936             // 00000000567C: D9C41F00 A20000F9
	v_floor_f32_e32 v129, v129                                 // 000000005684: 7F023F81
	v_med3_f32 v129, v129, s98, 0                              // 000000005688: D1D60081 0200C581
	v_cvt_i32_f32_e32 v130, v129                               // 000000005690: 7F041181
	v_add_u32_e32 v253, 0x7f, v130                             // 000000005694: 69FB04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v253                           // 00000000569C: 2537FA97
	v_mov_b32_e32 v130, s50                                    // 0000000056A0: 7F040232
	v_fma_f32 v130, v252, s99, v130                            // 0000000056A4: D1CB0082 0608C7FC
	v_fma_f32 v152, v128, s99, v130                            // 0000000056AC: D1CB0098 0608C780
	v_fma_f32 v150, v129, s99, v130                            // 0000000056B4: D1CB0096 0608C781
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[174:181], v[136:143], v[32:47], v242, v149 op_sel_hi:[0,0,0]// 0000000056BC: D3AC0000 00032BF2 D3AE0820 048311AE
	s_waitcnt lgkmcnt(0)                                       // 0000000056CC: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[182:189], v[136:143], v[16:31], v242, v149 op_sel_hi:[0,0,0]// 0000000056D0: D3AC0000 00032BF2 D3AE0810 044311B6
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v149 op_sel_hi:[0,0,0]// 0000000056E0: D3AC0000 00032BF2 D3AE0800 0403119C
	s_cmp_eq_u32 s21, 0                                        // 0000000056F0: BF068015
	s_cbranch_scc1 68                                          // 0000000056F4: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d08>
	v_sub_f32_e32 v128, v148, v252                             // 0000000056F8: 0501F994
	v_exp_f32_e32 v128, v128                                   // 0000000056FC: 7F004180
	s_nop 0                                                    // 000000005700: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 000000005704: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 00000000570C: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000005714: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 00000000571C: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000005724: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 00000000572C: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000005734: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 00000000573C: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000005744: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 00000000574C: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000005754: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 00000000575C: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000005764: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 00000000576C: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000005774: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 00000000577C: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000005784: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 00000000578C: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000005794: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 00000000579C: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 0000000057A4: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 0000000057AC: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 0000000057B4: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 0000000057BC: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 0000000057C4: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 0000000057CC: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 0000000057D4: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 0000000057DC: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 0000000057E4: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 0000000057EC: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 0000000057F4: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 0000000057FC: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 000000005804: 0BF501FA
	s_waitcnt vmcnt(4)                                         // 000000005808: BF8C0F74
	s_barrier                                                  // 00000000580C: BF8A0000
	s_add_u32 s43, s43, 1                                      // 000000005810: 802B812B
	s_branch 63047                                             // 000000005814: BF82F647 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1634>
	v_mov_b32_e32 v253, v149                                   // 000000005818: 7FFA0395
	v_mov_b32_e32 v252, v148                                   // 00000000581C: 7FF80394
	s_add_u32 s17, s43, s78                                    // 000000005820: 80114E2B
	s_bitcmp1_b32 s17, 0                                       // 000000005824: BF0D8011
	s_cbranch_scc1 1582                                        // 000000005828: BF85062E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x55e4>
	s_branch 5                                                 // 00000000582C: BF820005 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d44>
	v_mov_b32_e32 v253, v149                                   // 000000005830: 7FFA0395
	v_mov_b32_e32 v252, v148                                   // 000000005834: 7FF80394
	s_add_u32 s17, s43, s78                                    // 000000005838: 80114E2B
	s_bitcmp1_b32 s17, 0                                       // 00000000583C: BF0D8011
	s_cbranch_scc1 1576                                        // 000000005840: BF850628 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x55e4>
	s_add_u32 s17, s43, 1                                      // 000000005844: 8011812B
	s_cmp_ge_u32 s17, s96                                      // 000000005848: BF096011
	s_cbranch_scc1 3150                                        // 00000000584C: BF850C4E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6e88>
	s_cmp_ge_u32 s43, s79                                      // 000000005850: BF094F2B
	s_cbranch_scc1 1096                                        // 000000005854: BF850448 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4e78>
	s_setprio 0                                                // 000000005858: BF8F0000
	v_fma_f32 v108, v108, v239, v152                           // 00000000585C: D1CB006C 0663DF6C
	v_fma_f32 v64, v64, v239, v150                             // 000000005864: D1CB0040 065BDF40
	v_fma_f32 v68, v68, v239, v150                             // 00000000586C: D1CB0044 065BDF44
	s_add_u32 s17, s43, s78                                    // 000000005874: 80114E2B
	v_fma_f32 v96, v96, v239, v152                             // 000000005878: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 000000005880: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 000000005888: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 000000005890: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 000000005898: D1CB0068 0663DF68
	v_fma_f32 v109, v109, v239, v152                           // 0000000058A0: D1CB006D 0663DF6D
	v_fma_f32 v80, v80, v239, v150                             // 0000000058A8: D1CB0050 065BDF50
	v_fma_f32 v65, v65, v239, v150                             // 0000000058B0: D1CB0041 065BDF41
	v_fma_f32 v84, v84, v239, v150                             // 0000000058B8: D1CB0054 065BDF54
	v_fma_f32 v69, v69, v239, v150                             // 0000000058C0: D1CB0045 065BDF45
	v_fma_f32 v72, v72, v239, v150                             // 0000000058C8: D1CB0048 065BDF48
	v_fma_f32 v92, v92, v239, v150                             // 0000000058D0: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 0000000058D8: D1DD006C 0201016C
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 0000000058E0: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 0000000058E8: D1DD0044 02010144
	s_add_u32 s18, s17, 1                                      // 0000000058F0: 80128111
	v_fma_f32 v97, v97, v239, v152                             // 0000000058F4: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 0000000058FC: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 000000005904: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 00000000590C: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 000000005914: D1CB0069 0663DF69
	v_fma_f32 v110, v110, v239, v152                           // 00000000591C: D1CB006E 0663DF6E
	v_fma_f32 v81, v81, v239, v150                             // 000000005924: D1CB0051 065BDF51
	v_fma_f32 v66, v66, v239, v150                             // 00000000592C: D1CB0042 065BDF42
	v_fma_f32 v85, v85, v239, v150                             // 000000005934: D1CB0055 065BDF55
	v_fma_f32 v70, v70, v239, v150                             // 00000000593C: D1CB0046 065BDF46
	v_fma_f32 v88, v88, v239, v150                             // 000000005944: D1CB0058 065BDF58
	v_fma_f32 v73, v73, v239, v150                             // 00000000594C: D1CB0049 065BDF49
	v_fma_f32 v93, v93, v239, v150                             // 000000005954: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 00000000595C: D1DD0060 02010160
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000005964: D1DD0074 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 00000000596C: D1DD0064 02010164
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000005974: D1DD0078 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 00000000597C: D1DD0068 02010168
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000005984: D1DD0050 02010150
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 00000000598C: D1DD0054 02010154
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000005994: D1DD0048 02010148
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 00000000599C: D1DD005C 0201015C
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 0000000059A4: D1DD006C 05B1036D
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 0000000059AC: D1DD0040 05010341
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 0000000059B4: D1DD0044 05110345
	s_and_b32 s18, s18, 3                                      // 0000000059BC: 86128312
	v_fma_f32 v98, v98, v239, v152                             // 0000000059C0: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 0000000059C8: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 0000000059D0: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 0000000059D8: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 0000000059E0: D1CB006A 0663DF6A
	v_fma_f32 v111, v111, v239, v152                           // 0000000059E8: D1CB006F 0663DF6F
	v_fma_f32 v82, v82, v239, v150                             // 0000000059F0: D1CB0052 065BDF52
	v_fma_f32 v86, v86, v239, v150                             // 0000000059F8: D1CB0056 065BDF56
	v_fma_f32 v71, v71, v239, v150                             // 000000005A00: D1CB0047 065BDF47
	v_fma_f32 v89, v89, v239, v150                             // 000000005A08: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000005A10: D1DD0058 02010158
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000005A18: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v116                         // 000000005A20: D1DD0061 05D10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 000000005A28: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v120                        // 000000005A30: D1DD0065 05E10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 000000005A38: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000005A40: D1DD0050 05410351
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 000000005A48: D1DD0041 05510355
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 000000005A50: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v93, 1, v92                           // 000000005A58: D1DD0049 0571035D
	v_cvt_pk_u8_f32 v93, v110, 2, v108                         // 000000005A60: D1DD005D 05B1056E
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000005A68: D1DD0040 05010542
	v_cvt_pk_u8_f32 v66, v70, 2, v68                           // 000000005A70: D1DD0042 05110546
	s_lshl_b32 s18, s18, 14                                    // 000000005A78: 8E128E12
	v_fma_f32 v99, v99, v239, v152                             // 000000005A7C: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 000000005A84: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 000000005A8C: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 000000005A94: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 000000005A9C: D1CB006B 0663DF6B
	v_fma_f32 v83, v83, v239, v150                             // 000000005AA4: D1CB0053 065BDF53
	v_fma_f32 v87, v87, v239, v150                             // 000000005AAC: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 000000005AB4: D1DD0045 05610359
	v_cvt_pk_u8_f32 v81, v98, 2, v96                           // 000000005ABC: D1DD0051 05810562
	v_cvt_pk_u8_f32 v84, v118, 2, v97                          // 000000005AC4: D1DD0054 05850576
	v_cvt_pk_u8_f32 v85, v102, 2, v100                         // 000000005ACC: D1DD0055 05910566
	v_cvt_pk_u8_f32 v88, v122, 2, v101                         // 000000005AD4: D1DD0058 0595057A
	v_cvt_pk_u8_f32 v89, v106, 2, v104                         // 000000005ADC: D1DD0059 05A1056A
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000005AE4: D1DD0050 05410552
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 000000005AEC: D1DD0041 05050556
	v_cvt_pk_u8_f32 v215, v111, 3, v93                         // 000000005AF4: D1DD00D7 0575076F
	v_cvt_pk_u8_f32 v93, v71, 3, v66                           // 000000005AFC: D1DD005D 05090747
	v_or_b32_e32 v71, s18, v231                                // 000000005B04: 288FCE12
	v_cvt_pk_u8_f32 v212, v99, 3, v81                          // 000000005B08: D1DD00D4 05450763
	v_cvt_pk_u8_f32 v209, v119, 3, v84                         // 000000005B10: D1DD00D1 05510777
	v_cvt_pk_u8_f32 v213, v103, 3, v85                         // 000000005B18: D1DD00D5 05550767
	v_cvt_pk_u8_f32 v210, v123, 3, v88                         // 000000005B20: D1DD00D2 0561077B
	v_cvt_pk_u8_f32 v214, v107, 3, v89                         // 000000005B28: D1DD00D6 0565076B
	v_cvt_pk_u8_f32 v88, v83, 3, v80                           // 000000005B30: D1DD0058 05410753
	v_cvt_pk_u8_f32 v89, v87, 3, v65                           // 000000005B38: D1DD0059 05050757
	ds_read_b128 v[80:83], v71                                 // 000000005B40: D9FE0000 50000047
	ds_read_b128 v[84:87], v71 offset:16                       // 000000005B48: D9FE0010 54000047
	ds_read_b128 v[96:99], v71 offset:4096                     // 000000005B50: D9FE1000 60000047
	ds_read_b128 v[100:103], v71 offset:4112                   // 000000005B58: D9FE1010 64000047
	v_fma_f32 v112, v112, v239, v152                           // 000000005B60: D1CB0070 0663DF70
	v_fma_f32 v124, v124, v239, v152                           // 000000005B68: D1CB007C 0663DF7C
	v_fma_f32 v113, v113, v239, v152                           // 000000005B70: D1CB0071 0663DF71
	v_fma_f32 v125, v125, v239, v152                           // 000000005B78: D1CB007D 0663DF7D
	v_fma_f32 v76, v76, v239, v150                             // 000000005B80: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000005B88: D1DD0070 02010170
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000005B90: D1DD007C 0201017C
	v_fma_f32 v114, v114, v239, v152                           // 000000005B98: D1CB0072 0663DF72
	v_fma_f32 v126, v126, v239, v152                           // 000000005BA0: D1CB007E 0663DF7E
	v_fma_f32 v77, v77, v239, v150                             // 000000005BA8: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000005BB0: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000005BB8: D1DD0070 05C10371
	v_cvt_pk_u8_f32 v105, v125, 1, v124                        // 000000005BC0: D1DD0069 05F1037D
	v_fma_f32 v115, v115, v239, v152                           // 000000005BC8: D1CB0073 0663DF73
	v_fma_f32 v127, v127, v239, v152                           // 000000005BD0: D1CB007F 0663DF7F
	v_fma_f32 v90, v90, v239, v150                             // 000000005BD8: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 000000005BE0: D1CB004A 065BDF4A
	v_fma_f32 v94, v94, v239, v150                             // 000000005BE8: D1CB005E 065BDF5E
	v_fma_f32 v78, v78, v239, v150                             // 000000005BF0: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v76, v77, 1, v76                           // 000000005BF8: D1DD004C 0531034D
	v_cvt_pk_u8_f32 v77, v114, 2, v112                         // 000000005C00: D1DD004D 05C10572
	v_cvt_pk_u8_f32 v92, v126, 2, v105                         // 000000005C08: D1DD005C 05A5057E
	v_fma_f32 v67, v67, v239, v150                             // 000000005C10: D1CB0043 065BDF43
	v_fma_f32 v91, v91, v239, v150                             // 000000005C18: D1CB005B 065BDF5B
	v_fma_f32 v75, v75, v239, v150                             // 000000005C20: D1CB004B 065BDF4B
	v_fma_f32 v95, v95, v239, v150                             // 000000005C28: D1CB005F 065BDF5F
	v_fma_f32 v79, v79, v239, v150                             // 000000005C30: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v68, v90, 2, v69                           // 000000005C38: D1DD0044 0515055A
	v_cvt_pk_u8_f32 v69, v74, 2, v72                           // 000000005C40: D1DD0045 0521054A
	v_cvt_pk_u8_f32 v70, v94, 2, v73                           // 000000005C48: D1DD0046 0525055E
	v_cvt_pk_u8_f32 v72, v78, 2, v76                           // 000000005C50: D1DD0048 0531054E
	v_cvt_pk_u8_f32 v208, v115, 3, v77                         // 000000005C58: D1DD00D0 05350773
	v_cvt_pk_u8_f32 v211, v127, 3, v92                         // 000000005C60: D1DD00D3 0571077F
	v_cvt_pk_u8_f32 v92, v67, 3, v64                           // 000000005C68: D1DD005C 05010743
	v_cvt_pk_u8_f32 v90, v91, 3, v68                           // 000000005C70: D1DD005A 0511075B
	v_cvt_pk_u8_f32 v94, v75, 3, v69                           // 000000005C78: D1DD005E 0515074B
	v_cvt_pk_u8_f32 v91, v95, 3, v70                           // 000000005C80: D1DD005B 0519075F
	v_cvt_pk_u8_f32 v95, v79, 3, v72                           // 000000005C88: D1DD005F 0521074F
	s_barrier                                                  // 000000005C90: BF8A0000
	s_and_b32 s17, s17, 3                                      // 000000005C94: 86118311
	s_setprio 1                                                // 000000005C98: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[208:215], 0// 000000005C9C: D3AD0040 0203A1C0
	scratch_store_dwordx4 off, v[88:91], off                   // 000000005CA4: DC7C4000 007F5800
	s_nop 0                                                    // 000000005CAC: BF800000
	scratch_store_dwordx4 off, v[92:95], off offset:16         // 000000005CB0: DC7C4010 007F5C00
	v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[192:199], v[88:95], 0// 000000005CB8: D3AD0042 0202B1C0
	s_nop 3                                                    // 000000005CC0: BF800003
	v_mul_f32_e32 v64, v154, v64                               // 000000005CC4: 0A80819A
	v_add_f32_e32 v64, v250, v64                               // 000000005CC8: 028081FA
	s_nop 5                                                    // 000000005CCC: BF800005
	v_mul_f32_e32 v65, v155, v66                               // 000000005CD0: 0A82859B
	v_add_f32_e32 v250, v64, v65                               // 000000005CD4: 03F48340
	ds_read_b128 v[88:91], v71 offset:8192                     // 000000005CD8: D9FE2000 58000047
	ds_read_b128 v[92:95], v71 offset:8208                     // 000000005CE0: D9FE2010 5C000047
	ds_read_b128 v[104:107], v71 offset:12288                  // 000000005CE8: D9FE3000 68000047
	ds_read_b128 v[108:111], v71 offset:12304                  // 000000005CF0: D9FE3010 6C000047
	s_waitcnt lgkmcnt(4)                                       // 000000005CF8: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[80:87], v[220:227], 0// 000000005CFC: D3AE00B0 0203B950
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[96:103], v[220:227], 0// 000000005D04: D3AE00A0 0203B960
	v_or_b32_e32 v64, s18, v232                                // 000000005D0C: 2881D012
	ds_read_b128 v[66:69], v64                                 // 000000005D10: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 000000005D18: D9FE0010 46000040
	ds_read_b128 v[74:77], v64 offset:4096                     // 000000005D20: D9FE1000 4A000040
	ds_read_b128 v[78:81], v64 offset:4112                     // 000000005D28: D9FE1010 4E000040
	s_waitcnt lgkmcnt(4)                                       // 000000005D30: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[88:95], v[220:227], 0// 000000005D34: D3AE0090 0203B958
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[104:111], v[220:227], 0// 000000005D3C: D3AE0080 0203B968
	ds_read_b128 v[82:85], v64 offset:8192                     // 000000005D44: D9FE2000 52000040
	ds_read_b128 v[86:89], v64 offset:8208                     // 000000005D4C: D9FE2010 56000040
	ds_read_b128 v[112:115], v64 offset:12288                  // 000000005D54: D9FE3000 70000040
	ds_read_b128 v[116:119], v64 offset:12304                  // 000000005D5C: D9FE3010 74000040
	s_add_u32 s18, s43, 4                                      // 000000005D64: 8012842B
	s_cmp_ge_u32 s18, s96                                      // 000000005D68: BF096012
	s_cbranch_scc1 13                                          // 000000005D6C: BF85000D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x42a4>
	s_lshl_b32 s19, s17, 14                                    // 000000005D70: 8E138E11
	s_or_b32 s19, s19, s88                                     // 000000005D74: 87135813
	s_mul_i32 s18, s18, s8                                     // 000000005D78: 92120812
	s_lshl_b32 s18, s18, 7                                     // 000000005D7C: 8E128712
	s_mov_b32 m0, s19                                          // 000000005D80: BEFC0013
	s_nop 0                                                    // 000000005D84: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000005D88: E05D1000 121500E9
	s_or_b32 m0, s19, 0x2000                                   // 000000005D90: 877CFF13 00002000
	s_nop 0                                                    // 000000005D98: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 000000005D9C: E05D1000 121500EA
	s_add_u32 s18, s43, 2                                      // 000000005DA4: 8012822B
	s_cmp_ge_u32 s18, s96                                      // 000000005DA8: BF096012
	s_cbranch_scc1 15                                          // 000000005DAC: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x42ec>
	s_xor_b32 s19, s17, 2                                      // 000000005DB0: 88138211
	s_mul_i32 s18, s18, s8                                     // 000000005DB4: 92120812
	s_lshl_b32 s19, s19, 14                                    // 000000005DB8: 8E138E13
	s_add_u32 s20, s92, s19                                    // 000000005DBC: 8014135C
	s_add_u32 m0, s20, s88                                     // 000000005DC0: 807C5814
	s_lshl_b32 s18, s18, 7                                     // 000000005DC4: 8E128712
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000005DC8: E05D1000 121400EB
	s_add_u32 s19, s92, s19                                    // 000000005DD0: 8013135C
	s_add_u32 s19, s19, s88                                    // 000000005DD4: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 000000005DD8: 807CFF13 00002000
	s_nop 0                                                    // 000000005DE0: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000005DE4: E05D1000 121400EC
	s_waitcnt lgkmcnt(4)                                       // 000000005DEC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[66:73], v[200:207], v[176:191]// 000000005DF0: D3AE00B0 06C39142
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[74:81], v[200:207], v[160:175]// 000000005DF8: D3AE00A0 0683914A
	s_nop 15                                                   // 000000005E00: BF80000F
	s_nop 3                                                    // 000000005E04: BF800003
	v_mov_b64_e32 v[96:97], v[160:161]                         // 000000005E08: 7EC071A0
	v_mov_b64_e32 v[98:99], v[162:163]                         // 000000005E0C: 7EC471A2
	v_mov_b64_e32 v[100:101], v[164:165]                       // 000000005E10: 7EC871A4
	v_mov_b64_e32 v[102:103], v[166:167]                       // 000000005E14: 7ECC71A6
	v_mov_b64_e32 v[104:105], v[168:169]                       // 000000005E18: 7ED071A8
	v_mov_b64_e32 v[106:107], v[170:171]                       // 000000005E1C: 7ED471AA
	v_mov_b64_e32 v[108:109], v[172:173]                       // 000000005E20: 7ED871AC
	v_mov_b64_e32 v[110:111], v[174:175]                       // 000000005E24: 7EDC71AE
	s_waitcnt lgkmcnt(0)                                       // 000000005E28: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[82:89], v[200:207], v[144:159]// 000000005E2C: D3AE0090 06439152
	s_nop 15                                                   // 000000005E34: BF80000F
	s_nop 3                                                    // 000000005E38: BF800003
	v_mov_b64_e32 v[80:81], v[144:145]                         // 000000005E3C: 7EA07190
	v_mov_b64_e32 v[82:83], v[146:147]                         // 000000005E40: 7EA47192
	v_mov_b64_e32 v[84:85], v[148:149]                         // 000000005E44: 7EA87194
	v_mov_b64_e32 v[86:87], v[150:151]                         // 000000005E48: 7EAC7196
	v_mov_b64_e32 v[88:89], v[152:153]                         // 000000005E4C: 7EB07198
	v_mov_b64_e32 v[90:91], v[154:155]                         // 000000005E50: 7EB4719A
	v_mov_b64_e32 v[92:93], v[156:157]                         // 000000005E54: 7EB8719C
	v_mov_b64_e32 v[94:95], v[158:159]                         // 000000005E58: 7EBC719E
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[112:119], v[200:207], v[128:143]// 000000005E5C: D3AE0080 06039170
	s_nop 15                                                   // 000000005E64: BF80000F
	s_nop 3                                                    // 000000005E68: BF800003
	v_mov_b64_e32 v[64:65], v[128:129]                         // 000000005E6C: 7E807180
	v_mov_b64_e32 v[66:67], v[130:131]                         // 000000005E70: 7E847182
	v_mov_b64_e32 v[68:69], v[132:133]                         // 000000005E74: 7E887184
	v_mov_b64_e32 v[70:71], v[134:135]                         // 000000005E78: 7E8C7186
	v_mov_b64_e32 v[72:73], v[136:137]                         // 000000005E7C: 7E907188
	v_mov_b64_e32 v[74:75], v[138:139]                         // 000000005E80: 7E94718A
	v_mov_b64_e32 v[76:77], v[140:141]                         // 000000005E84: 7E98718C
	v_mov_b64_e32 v[78:79], v[142:143]                         // 000000005E88: 7E9C718E
	s_lshl_b32 s18, s43, 7                                     // 000000005E8C: 8E12872B
	s_add_u32 s20, s18, 0x80                                   // 000000005E90: 8014FF12 00000080
	s_sub_u32 s18, s3, s20                                     // 000000005E98: 80921403
	s_sub_i32 s18, s18, 0                                      // 000000005E9C: 81928012
	s_cmp_ge_i32 s18, 32                                       // 000000005EA0: BF03A012
	v_mov_b64_e32 v[112:113], v[176:177]                       // 000000005EA4: 7EE071B0
	v_mov_b64_e32 v[114:115], v[178:179]                       // 000000005EA8: 7EE471B2
	v_mov_b64_e32 v[116:117], v[180:181]                       // 000000005EAC: 7EE871B4
	v_mov_b64_e32 v[118:119], v[182:183]                       // 000000005EB0: 7EEC71B6
	v_mov_b64_e32 v[120:121], v[184:185]                       // 000000005EB4: 7EF071B8
	v_mov_b64_e32 v[122:123], v[186:187]                       // 000000005EB8: 7EF471BA
	v_mov_b64_e32 v[124:125], v[188:189]                       // 000000005EBC: 7EF871BC
	v_mov_b64_e32 v[126:127], v[190:191]                       // 000000005EC0: 7EFC71BE
	s_cbranch_scc1 90                                          // 000000005EC4: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4530>
	s_mov_b32 s53, s52                                         // 000000005EC8: BEB50034
	s_mov_b32 s54, s52                                         // 000000005ECC: BEB60034
	s_mov_b32 s55, s52                                         // 000000005ED0: BEB70034
	s_mov_b32 s56, s52                                         // 000000005ED4: BEB80034
	s_mov_b32 s57, s52                                         // 000000005ED8: BEB90034
	s_mov_b32 s58, s52                                         // 000000005EDC: BEBA0034
	s_mov_b32 s59, s52                                         // 000000005EE0: BEBB0034
	s_mov_b32 s60, s52                                         // 000000005EE4: BEBC0034
	s_mov_b32 s61, s52                                         // 000000005EE8: BEBD0034
	s_mov_b32 s62, s52                                         // 000000005EEC: BEBE0034
	s_mov_b32 s63, s52                                         // 000000005EF0: BEBF0034
	s_mov_b32 s64, s52                                         // 000000005EF4: BEC00034
	s_mov_b32 s65, s52                                         // 000000005EF8: BEC10034
	s_mov_b32 s66, s52                                         // 000000005EFC: BEC20034
	s_mov_b32 s67, s52                                         // 000000005F00: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000005F04: BF048012
	v_mov_b64_e32 v[126:127], s[66:67]                         // 000000005F08: 7EFC7042
	v_mov_b64_e32 v[124:125], s[64:65]                         // 000000005F0C: 7EF87040
	v_mov_b64_e32 v[122:123], s[62:63]                         // 000000005F10: 7EF4703E
	v_mov_b64_e32 v[120:121], s[60:61]                         // 000000005F14: 7EF0703C
	v_mov_b64_e32 v[118:119], s[58:59]                         // 000000005F18: 7EEC703A
	v_mov_b64_e32 v[116:117], s[56:57]                         // 000000005F1C: 7EE87038
	v_mov_b64_e32 v[114:115], s[54:55]                         // 000000005F20: 7EE47036
	v_mov_b64_e32 v[112:113], s[52:53]                         // 000000005F24: 7EE07034
	s_cbranch_scc1 65                                          // 000000005F28: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4530>
	v_add_u32_e32 v127, s18, v243                              // 000000005F2C: 68FFE612
	v_cmp_gt_i32_e32 vcc, 0, v127                              // 000000005F30: 7D88FE80
	s_nop 1                                                    // 000000005F34: BF800001
	v_cndmask_b32_e64 v112, v176, v240, vcc                    // 000000005F38: D1000070 01ABE1B0
	v_cmp_gt_i32_e32 vcc, 1, v127                              // 000000005F40: 7D88FE81
	s_nop 1                                                    // 000000005F44: BF800001
	v_cndmask_b32_e64 v113, v177, v240, vcc                    // 000000005F48: D1000071 01ABE1B1
	v_cmp_gt_i32_e32 vcc, 2, v127                              // 000000005F50: 7D88FE82
	s_nop 1                                                    // 000000005F54: BF800001
	v_cndmask_b32_e64 v114, v178, v240, vcc                    // 000000005F58: D1000072 01ABE1B2
	v_cmp_gt_i32_e32 vcc, 3, v127                              // 000000005F60: 7D88FE83
	s_nop 1                                                    // 000000005F64: BF800001
	v_cndmask_b32_e64 v115, v179, v240, vcc                    // 000000005F68: D1000073 01ABE1B3
	v_cmp_gt_i32_e32 vcc, 8, v127                              // 000000005F70: 7D88FE88
	s_nop 1                                                    // 000000005F74: BF800001
	v_cndmask_b32_e64 v116, v180, v240, vcc                    // 000000005F78: D1000074 01ABE1B4
	v_cmp_gt_i32_e32 vcc, 9, v127                              // 000000005F80: 7D88FE89
	s_nop 1                                                    // 000000005F84: BF800001
	v_cndmask_b32_e64 v117, v181, v240, vcc                    // 000000005F88: D1000075 01ABE1B5
	v_cmp_gt_i32_e32 vcc, 10, v127                             // 000000005F90: 7D88FE8A
	s_nop 1                                                    // 000000005F94: BF800001
	v_cndmask_b32_e64 v118, v182, v240, vcc                    // 000000005F98: D1000076 01ABE1B6
	v_cmp_gt_i32_e32 vcc, 11, v127                             // 000000005FA0: 7D88FE8B
	s_nop 1                                                    // 000000005FA4: BF800001
	v_cndmask_b32_e64 v119, v183, v240, vcc                    // 000000005FA8: D1000077 01ABE1B7
	v_cmp_gt_i32_e32 vcc, 16, v127                             // 000000005FB0: 7D88FE90
	s_nop 1                                                    // 000000005FB4: BF800001
	v_cndmask_b32_e64 v120, v184, v240, vcc                    // 000000005FB8: D1000078 01ABE1B8
	v_cmp_gt_i32_e32 vcc, 17, v127                             // 000000005FC0: 7D88FE91
	s_nop 1                                                    // 000000005FC4: BF800001
	v_cndmask_b32_e64 v121, v185, v240, vcc                    // 000000005FC8: D1000079 01ABE1B9
	v_cmp_gt_i32_e32 vcc, 18, v127                             // 000000005FD0: 7D88FE92
	s_nop 1                                                    // 000000005FD4: BF800001
	v_cndmask_b32_e64 v122, v186, v240, vcc                    // 000000005FD8: D100007A 01ABE1BA
	v_cmp_gt_i32_e32 vcc, 19, v127                             // 000000005FE0: 7D88FE93
	s_nop 1                                                    // 000000005FE4: BF800001
	v_cndmask_b32_e64 v123, v187, v240, vcc                    // 000000005FE8: D100007B 01ABE1BB
	v_cmp_gt_i32_e32 vcc, 24, v127                             // 000000005FF0: 7D88FE98
	s_nop 1                                                    // 000000005FF4: BF800001
	v_cndmask_b32_e64 v124, v188, v240, vcc                    // 000000005FF8: D100007C 01ABE1BC
	v_cmp_gt_i32_e32 vcc, 25, v127                             // 000000006000: 7D88FE99
	s_nop 1                                                    // 000000006004: BF800001
	v_cndmask_b32_e64 v125, v189, v240, vcc                    // 000000006008: D100007D 01ABE1BD
	v_cmp_gt_i32_e32 vcc, 26, v127                             // 000000006010: 7D88FE9A
	s_nop 1                                                    // 000000006014: BF800001
	v_cndmask_b32_e64 v126, v190, v240, vcc                    // 000000006018: D100007E 01ABE1BE
	v_cmp_gt_i32_e32 vcc, 27, v127                             // 000000006020: 7D88FE9B
	s_nop 1                                                    // 000000006024: BF800001
	v_cndmask_b32_e64 v127, v191, v240, vcc                    // 000000006028: D100007F 01ABE1BF
	s_sub_u32 s18, s3, s20                                     // 000000006030: 80921403
	s_sub_i32 s18, s18, 32                                     // 000000006034: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 000000006038: BF03A012
	s_cbranch_scc1 90                                          // 00000000603C: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x46a8>
	s_mov_b32 s53, s52                                         // 000000006040: BEB50034
	s_mov_b32 s54, s52                                         // 000000006044: BEB60034
	s_mov_b32 s55, s52                                         // 000000006048: BEB70034
	s_mov_b32 s56, s52                                         // 00000000604C: BEB80034
	s_mov_b32 s57, s52                                         // 000000006050: BEB90034
	s_mov_b32 s58, s52                                         // 000000006054: BEBA0034
	s_mov_b32 s59, s52                                         // 000000006058: BEBB0034
	s_mov_b32 s60, s52                                         // 00000000605C: BEBC0034
	s_mov_b32 s61, s52                                         // 000000006060: BEBD0034
	s_mov_b32 s62, s52                                         // 000000006064: BEBE0034
	s_mov_b32 s63, s52                                         // 000000006068: BEBF0034
	s_mov_b32 s64, s52                                         // 00000000606C: BEC00034
	s_mov_b32 s65, s52                                         // 000000006070: BEC10034
	s_mov_b32 s66, s52                                         // 000000006074: BEC20034
	s_mov_b32 s67, s52                                         // 000000006078: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 00000000607C: BF048012
	v_mov_b64_e32 v[110:111], s[66:67]                         // 000000006080: 7EDC7042
	v_mov_b64_e32 v[108:109], s[64:65]                         // 000000006084: 7ED87040
	v_mov_b64_e32 v[106:107], s[62:63]                         // 000000006088: 7ED4703E
	v_mov_b64_e32 v[104:105], s[60:61]                         // 00000000608C: 7ED0703C
	v_mov_b64_e32 v[102:103], s[58:59]                         // 000000006090: 7ECC703A
	v_mov_b64_e32 v[100:101], s[56:57]                         // 000000006094: 7EC87038
	v_mov_b64_e32 v[98:99], s[54:55]                           // 000000006098: 7EC47036
	v_mov_b64_e32 v[96:97], s[52:53]                           // 00000000609C: 7EC07034
	s_cbranch_scc1 65                                          // 0000000060A0: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x46a8>
	v_add_u32_e32 v111, s18, v243                              // 0000000060A4: 68DFE612
	v_cmp_gt_i32_e32 vcc, 0, v111                              // 0000000060A8: 7D88DE80
	s_nop 1                                                    // 0000000060AC: BF800001
	v_cndmask_b32_e64 v96, v160, v240, vcc                     // 0000000060B0: D1000060 01ABE1A0
	v_cmp_gt_i32_e32 vcc, 1, v111                              // 0000000060B8: 7D88DE81
	s_nop 1                                                    // 0000000060BC: BF800001
	v_cndmask_b32_e64 v97, v161, v240, vcc                     // 0000000060C0: D1000061 01ABE1A1
	v_cmp_gt_i32_e32 vcc, 2, v111                              // 0000000060C8: 7D88DE82
	s_nop 1                                                    // 0000000060CC: BF800001
	v_cndmask_b32_e64 v98, v162, v240, vcc                     // 0000000060D0: D1000062 01ABE1A2
	v_cmp_gt_i32_e32 vcc, 3, v111                              // 0000000060D8: 7D88DE83
	s_nop 1                                                    // 0000000060DC: BF800001
	v_cndmask_b32_e64 v99, v163, v240, vcc                     // 0000000060E0: D1000063 01ABE1A3
	v_cmp_gt_i32_e32 vcc, 8, v111                              // 0000000060E8: 7D88DE88
	s_nop 1                                                    // 0000000060EC: BF800001
	v_cndmask_b32_e64 v100, v164, v240, vcc                    // 0000000060F0: D1000064 01ABE1A4
	v_cmp_gt_i32_e32 vcc, 9, v111                              // 0000000060F8: 7D88DE89
	s_nop 1                                                    // 0000000060FC: BF800001
	v_cndmask_b32_e64 v101, v165, v240, vcc                    // 000000006100: D1000065 01ABE1A5
	v_cmp_gt_i32_e32 vcc, 10, v111                             // 000000006108: 7D88DE8A
	s_nop 1                                                    // 00000000610C: BF800001
	v_cndmask_b32_e64 v102, v166, v240, vcc                    // 000000006110: D1000066 01ABE1A6
	v_cmp_gt_i32_e32 vcc, 11, v111                             // 000000006118: 7D88DE8B
	s_nop 1                                                    // 00000000611C: BF800001
	v_cndmask_b32_e64 v103, v167, v240, vcc                    // 000000006120: D1000067 01ABE1A7
	v_cmp_gt_i32_e32 vcc, 16, v111                             // 000000006128: 7D88DE90
	s_nop 1                                                    // 00000000612C: BF800001
	v_cndmask_b32_e64 v104, v168, v240, vcc                    // 000000006130: D1000068 01ABE1A8
	v_cmp_gt_i32_e32 vcc, 17, v111                             // 000000006138: 7D88DE91
	s_nop 1                                                    // 00000000613C: BF800001
	v_cndmask_b32_e64 v105, v169, v240, vcc                    // 000000006140: D1000069 01ABE1A9
	v_cmp_gt_i32_e32 vcc, 18, v111                             // 000000006148: 7D88DE92
	s_nop 1                                                    // 00000000614C: BF800001
	v_cndmask_b32_e64 v106, v170, v240, vcc                    // 000000006150: D100006A 01ABE1AA
	v_cmp_gt_i32_e32 vcc, 19, v111                             // 000000006158: 7D88DE93
	s_nop 1                                                    // 00000000615C: BF800001
	v_cndmask_b32_e64 v107, v171, v240, vcc                    // 000000006160: D100006B 01ABE1AB
	v_cmp_gt_i32_e32 vcc, 24, v111                             // 000000006168: 7D88DE98
	s_nop 1                                                    // 00000000616C: BF800001
	v_cndmask_b32_e64 v108, v172, v240, vcc                    // 000000006170: D100006C 01ABE1AC
	v_cmp_gt_i32_e32 vcc, 25, v111                             // 000000006178: 7D88DE99
	s_nop 1                                                    // 00000000617C: BF800001
	v_cndmask_b32_e64 v109, v173, v240, vcc                    // 000000006180: D100006D 01ABE1AD
	v_cmp_gt_i32_e32 vcc, 26, v111                             // 000000006188: 7D88DE9A
	s_nop 1                                                    // 00000000618C: BF800001
	v_cndmask_b32_e64 v110, v174, v240, vcc                    // 000000006190: D100006E 01ABE1AE
	v_cmp_gt_i32_e32 vcc, 27, v111                             // 000000006198: 7D88DE9B
	s_nop 1                                                    // 00000000619C: BF800001
	v_cndmask_b32_e64 v111, v175, v240, vcc                    // 0000000061A0: D100006F 01ABE1AF
	s_sub_u32 s18, s3, s20                                     // 0000000061A8: 80921403
	s_sub_i32 s18, s18, 64                                     // 0000000061AC: 8192C012
	scratch_load_dwordx4 v[164:167], off, off                  // 0000000061B0: DC5C4000 A47F0000
	scratch_load_dwordx4 v[168:171], off, off offset:16        // 0000000061B8: DC5C4010 A87F0000
	s_cmp_ge_i32 s18, 32                                       // 0000000061C0: BF03A012
	s_cbranch_scc1 90                                          // 0000000061C4: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4830>
	s_mov_b32 s53, s52                                         // 0000000061C8: BEB50034
	s_mov_b32 s54, s52                                         // 0000000061CC: BEB60034
	s_mov_b32 s55, s52                                         // 0000000061D0: BEB70034
	s_mov_b32 s56, s52                                         // 0000000061D4: BEB80034
	s_mov_b32 s57, s52                                         // 0000000061D8: BEB90034
	s_mov_b32 s58, s52                                         // 0000000061DC: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000061E0: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000061E4: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000061E8: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000061EC: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000061F0: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000061F4: BEC00034
	s_mov_b32 s65, s52                                         // 0000000061F8: BEC10034
	s_mov_b32 s66, s52                                         // 0000000061FC: BEC20034
	s_mov_b32 s67, s52                                         // 000000006200: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000006204: BF048012
	v_mov_b64_e32 v[94:95], s[66:67]                           // 000000006208: 7EBC7042
	v_mov_b64_e32 v[92:93], s[64:65]                           // 00000000620C: 7EB87040
	v_mov_b64_e32 v[90:91], s[62:63]                           // 000000006210: 7EB4703E
	v_mov_b64_e32 v[88:89], s[60:61]                           // 000000006214: 7EB0703C
	v_mov_b64_e32 v[86:87], s[58:59]                           // 000000006218: 7EAC703A
	v_mov_b64_e32 v[84:85], s[56:57]                           // 00000000621C: 7EA87038
	v_mov_b64_e32 v[82:83], s[54:55]                           // 000000006220: 7EA47036
	v_mov_b64_e32 v[80:81], s[52:53]                           // 000000006224: 7EA07034
	s_cbranch_scc1 65                                          // 000000006228: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4830>
	v_add_u32_e32 v95, s18, v243                               // 00000000622C: 68BFE612
	v_cmp_gt_i32_e32 vcc, 0, v95                               // 000000006230: 7D88BE80
	s_nop 1                                                    // 000000006234: BF800001
	v_cndmask_b32_e64 v80, v144, v240, vcc                     // 000000006238: D1000050 01ABE190
	v_cmp_gt_i32_e32 vcc, 1, v95                               // 000000006240: 7D88BE81
	s_nop 1                                                    // 000000006244: BF800001
	v_cndmask_b32_e64 v81, v145, v240, vcc                     // 000000006248: D1000051 01ABE191
	v_cmp_gt_i32_e32 vcc, 2, v95                               // 000000006250: 7D88BE82
	s_nop 1                                                    // 000000006254: BF800001
	v_cndmask_b32_e64 v82, v146, v240, vcc                     // 000000006258: D1000052 01ABE192
	v_cmp_gt_i32_e32 vcc, 3, v95                               // 000000006260: 7D88BE83
	s_nop 1                                                    // 000000006264: BF800001
	v_cndmask_b32_e64 v83, v147, v240, vcc                     // 000000006268: D1000053 01ABE193
	v_cmp_gt_i32_e32 vcc, 8, v95                               // 000000006270: 7D88BE88
	s_nop 1                                                    // 000000006274: BF800001
	v_cndmask_b32_e64 v84, v148, v240, vcc                     // 000000006278: D1000054 01ABE194
	v_cmp_gt_i32_e32 vcc, 9, v95                               // 000000006280: 7D88BE89
	s_nop 1                                                    // 000000006284: BF800001
	v_cndmask_b32_e64 v85, v149, v240, vcc                     // 000000006288: D1000055 01ABE195
	v_cmp_gt_i32_e32 vcc, 10, v95                              // 000000006290: 7D88BE8A
	s_nop 1                                                    // 000000006294: BF800001
	v_cndmask_b32_e64 v86, v150, v240, vcc                     // 000000006298: D1000056 01ABE196
	v_cmp_gt_i32_e32 vcc, 11, v95                              // 0000000062A0: 7D88BE8B
	s_nop 1                                                    // 0000000062A4: BF800001
	v_cndmask_b32_e64 v87, v151, v240, vcc                     // 0000000062A8: D1000057 01ABE197
	v_cmp_gt_i32_e32 vcc, 16, v95                              // 0000000062B0: 7D88BE90
	s_nop 1                                                    // 0000000062B4: BF800001
	v_cndmask_b32_e64 v88, v152, v240, vcc                     // 0000000062B8: D1000058 01ABE198
	v_cmp_gt_i32_e32 vcc, 17, v95                              // 0000000062C0: 7D88BE91
	s_nop 1                                                    // 0000000062C4: BF800001
	v_cndmask_b32_e64 v89, v153, v240, vcc                     // 0000000062C8: D1000059 01ABE199
	v_cmp_gt_i32_e32 vcc, 18, v95                              // 0000000062D0: 7D88BE92
	s_nop 1                                                    // 0000000062D4: BF800001
	v_cndmask_b32_e64 v90, v154, v240, vcc                     // 0000000062D8: D100005A 01ABE19A
	v_cmp_gt_i32_e32 vcc, 19, v95                              // 0000000062E0: 7D88BE93
	s_nop 1                                                    // 0000000062E4: BF800001
	v_cndmask_b32_e64 v91, v155, v240, vcc                     // 0000000062E8: D100005B 01ABE19B
	v_cmp_gt_i32_e32 vcc, 24, v95                              // 0000000062F0: 7D88BE98
	s_nop 1                                                    // 0000000062F4: BF800001
	v_cndmask_b32_e64 v92, v156, v240, vcc                     // 0000000062F8: D100005C 01ABE19C
	v_cmp_gt_i32_e32 vcc, 25, v95                              // 000000006300: 7D88BE99
	s_nop 1                                                    // 000000006304: BF800001
	v_cndmask_b32_e64 v93, v157, v240, vcc                     // 000000006308: D100005D 01ABE19D
	v_cmp_gt_i32_e32 vcc, 26, v95                              // 000000006310: 7D88BE9A
	s_nop 1                                                    // 000000006314: BF800001
	v_cndmask_b32_e64 v94, v158, v240, vcc                     // 000000006318: D100005E 01ABE19E
	v_cmp_gt_i32_e32 vcc, 27, v95                              // 000000006320: 7D88BE9B
	s_nop 1                                                    // 000000006324: BF800001
	v_cndmask_b32_e64 v95, v159, v240, vcc                     // 000000006328: D100005F 01ABE19F
	s_sub_u32 s18, s3, s20                                     // 000000006330: 80921403
	s_sub_i32 s18, s18, 0x60                                   // 000000006334: 8192FF12 00000060
	s_cmp_ge_i32 s18, 32                                       // 00000000633C: BF03A012
	s_cbranch_scc1 90                                          // 000000006340: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x49ac>
	s_mov_b32 s53, s52                                         // 000000006344: BEB50034
	s_mov_b32 s54, s52                                         // 000000006348: BEB60034
	s_mov_b32 s55, s52                                         // 00000000634C: BEB70034
	s_mov_b32 s56, s52                                         // 000000006350: BEB80034
	s_mov_b32 s57, s52                                         // 000000006354: BEB90034
	s_mov_b32 s58, s52                                         // 000000006358: BEBA0034
	s_mov_b32 s59, s52                                         // 00000000635C: BEBB0034
	s_mov_b32 s60, s52                                         // 000000006360: BEBC0034
	s_mov_b32 s61, s52                                         // 000000006364: BEBD0034
	s_mov_b32 s62, s52                                         // 000000006368: BEBE0034
	s_mov_b32 s63, s52                                         // 00000000636C: BEBF0034
	s_mov_b32 s64, s52                                         // 000000006370: BEC00034
	s_mov_b32 s65, s52                                         // 000000006374: BEC10034
	s_mov_b32 s66, s52                                         // 000000006378: BEC20034
	s_mov_b32 s67, s52                                         // 00000000637C: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000006380: BF048012
	v_mov_b64_e32 v[78:79], s[66:67]                           // 000000006384: 7E9C7042
	v_mov_b64_e32 v[76:77], s[64:65]                           // 000000006388: 7E987040
	v_mov_b64_e32 v[74:75], s[62:63]                           // 00000000638C: 7E94703E
	v_mov_b64_e32 v[72:73], s[60:61]                           // 000000006390: 7E90703C
	v_mov_b64_e32 v[70:71], s[58:59]                           // 000000006394: 7E8C703A
	v_mov_b64_e32 v[68:69], s[56:57]                           // 000000006398: 7E887038
	v_mov_b64_e32 v[66:67], s[54:55]                           // 00000000639C: 7E847036
	v_mov_b64_e32 v[64:65], s[52:53]                           // 0000000063A0: 7E807034
	s_cbranch_scc1 65                                          // 0000000063A4: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x49ac>
	v_add_u32_e32 v79, s18, v243                               // 0000000063A8: 689FE612
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 0000000063AC: 7D889E80
	s_nop 1                                                    // 0000000063B0: BF800001
	v_cndmask_b32_e64 v64, v128, v240, vcc                     // 0000000063B4: D1000040 01ABE180
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 0000000063BC: 7D889E81
	s_nop 1                                                    // 0000000063C0: BF800001
	v_cndmask_b32_e64 v65, v129, v240, vcc                     // 0000000063C4: D1000041 01ABE181
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 0000000063CC: 7D889E82
	s_nop 1                                                    // 0000000063D0: BF800001
	v_cndmask_b32_e64 v66, v130, v240, vcc                     // 0000000063D4: D1000042 01ABE182
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 0000000063DC: 7D889E83
	s_nop 1                                                    // 0000000063E0: BF800001
	v_cndmask_b32_e64 v67, v131, v240, vcc                     // 0000000063E4: D1000043 01ABE183
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 0000000063EC: 7D889E88
	s_nop 1                                                    // 0000000063F0: BF800001
	v_cndmask_b32_e64 v68, v132, v240, vcc                     // 0000000063F4: D1000044 01ABE184
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 0000000063FC: 7D889E89
	s_nop 1                                                    // 000000006400: BF800001
	v_cndmask_b32_e64 v69, v133, v240, vcc                     // 000000006404: D1000045 01ABE185
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 00000000640C: 7D889E8A
	s_nop 1                                                    // 000000006410: BF800001
	v_cndmask_b32_e64 v70, v134, v240, vcc                     // 000000006414: D1000046 01ABE186
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 00000000641C: 7D889E8B
	s_nop 1                                                    // 000000006420: BF800001
	v_cndmask_b32_e64 v71, v135, v240, vcc                     // 000000006424: D1000047 01ABE187
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 00000000642C: 7D889E90
	s_nop 1                                                    // 000000006430: BF800001
	v_cndmask_b32_e64 v72, v136, v240, vcc                     // 000000006434: D1000048 01ABE188
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 00000000643C: 7D889E91
	s_nop 1                                                    // 000000006440: BF800001
	v_cndmask_b32_e64 v73, v137, v240, vcc                     // 000000006444: D1000049 01ABE189
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 00000000644C: 7D889E92
	s_nop 1                                                    // 000000006450: BF800001
	v_cndmask_b32_e64 v74, v138, v240, vcc                     // 000000006454: D100004A 01ABE18A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 00000000645C: 7D889E93
	s_nop 1                                                    // 000000006460: BF800001
	v_cndmask_b32_e64 v75, v139, v240, vcc                     // 000000006464: D100004B 01ABE18B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 00000000646C: 7D889E98
	s_nop 1                                                    // 000000006470: BF800001
	v_cndmask_b32_e64 v76, v140, v240, vcc                     // 000000006474: D100004C 01ABE18C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 00000000647C: 7D889E99
	s_nop 1                                                    // 000000006480: BF800001
	v_cndmask_b32_e64 v77, v141, v240, vcc                     // 000000006484: D100004D 01ABE18D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 00000000648C: 7D889E9A
	s_nop 1                                                    // 000000006490: BF800001
	v_cndmask_b32_e64 v78, v142, v240, vcc                     // 000000006494: D100004E 01ABE18E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 00000000649C: 7D889E9B
	s_nop 1                                                    // 0000000064A0: BF800001
	v_cndmask_b32_e64 v79, v143, v240, vcc                     // 0000000064A4: D100004F 01ABE18F
	v_max_f32_e32 v128, v112, v113                             // 0000000064AC: 1700E370
	v_max3_f32 v128, v114, v115, v128                          // 0000000064B0: D1D30080 0602E772
	v_max3_f32 v128, v116, v117, v128                          // 0000000064B8: D1D30080 0602EB74
	v_max3_f32 v128, v118, v119, v128                          // 0000000064C0: D1D30080 0602EF76
	v_max3_f32 v128, v120, v121, v128                          // 0000000064C8: D1D30080 0602F378
	v_max3_f32 v128, v122, v123, v128                          // 0000000064D0: D1D30080 0602F77A
	v_max3_f32 v128, v124, v125, v128                          // 0000000064D8: D1D30080 0602FB7C
	v_max3_f32 v129, v126, v127, v128                          // 0000000064E0: D1D30081 0602FF7E
	v_max_f32_e32 v128, v96, v97                               // 0000000064E8: 1700C360
	v_max3_f32 v128, v98, v99, v128                            // 0000000064EC: D1D30080 0602C762
	v_max3_f32 v128, v100, v101, v128                          // 0000000064F4: D1D30080 0602CB64
	v_max3_f32 v128, v102, v103, v128                          // 0000000064FC: D1D30080 0602CF66
	v_max3_f32 v128, v104, v105, v128                          // 000000006504: D1D30080 0602D368
	v_max3_f32 v128, v106, v107, v128                          // 00000000650C: D1D30080 0602D76A
	v_max3_f32 v128, v108, v109, v128                          // 000000006514: D1D30080 0602DB6C
	v_max3_f32 v130, v110, v111, v128                          // 00000000651C: D1D30082 0602DF6E
	v_max_f32_e32 v128, v80, v81                               // 000000006524: 1700A350
	v_max3_f32 v128, v82, v83, v128                            // 000000006528: D1D30080 0602A752
	v_max3_f32 v128, v84, v85, v128                            // 000000006530: D1D30080 0602AB54
	v_max3_f32 v128, v86, v87, v128                            // 000000006538: D1D30080 0602AF56
	v_max3_f32 v128, v88, v89, v128                            // 000000006540: D1D30080 0602B358
	v_max3_f32 v128, v90, v91, v128                            // 000000006548: D1D30080 0602B75A
	v_max3_f32 v128, v92, v93, v128                            // 000000006550: D1D30080 0602BB5C
	v_max3_f32 v128, v94, v95, v128                            // 000000006558: D1D30080 0602BF5E
	v_max_f32_e32 v131, v64, v65                               // 000000006560: 17068340
	v_max3_f32 v131, v66, v67, v131                            // 000000006564: D1D30083 060E8742
	v_max3_f32 v131, v68, v69, v131                            // 00000000656C: D1D30083 060E8B44
	v_max3_f32 v131, v70, v71, v131                            // 000000006574: D1D30083 060E8F46
	v_max3_f32 v131, v72, v73, v131                            // 00000000657C: D1D30083 060E9348
	v_max3_f32 v131, v74, v75, v131                            // 000000006584: D1D30083 060E974A
	v_max3_f32 v131, v76, v77, v131                            // 00000000658C: D1D30083 060E9B4C
	v_max3_f32 v131, v78, v79, v131                            // 000000006594: D1D30083 060E9F4E
	v_max_f32_e32 v128, v128, v131                             // 00000000659C: 17010780
	v_max_f32_e32 v130, v129, v130                             // 0000000065A0: 17050581
	v_mov_b32_e32 v131, v130                                   // 0000000065A4: 7F060382
	s_nop 1                                                    // 0000000065A8: BF800001
	v_permlane32_swap_b32_e32 v130, v131                       // 0000000065AC: 7F04B583
	v_mov_b32_e32 v129, v128                                   // 0000000065B0: 7F020380
	s_nop 1                                                    // 0000000065B4: BF800001
	v_permlane32_swap_b32_e32 v128, v129                       // 0000000065B8: 7F00B581
	v_max_f32_e32 v128, v128, v129                             // 0000000065BC: 17010380
	v_max_f32_e32 v130, v130, v131                             // 0000000065C0: 17050782
	v_max_f32_e32 v129, v130, v128                             // 0000000065C4: 17030182
	v_mul_f32_e32 v129, v238, v129                             // 0000000065C8: 0B0303EE
	v_max_f32_e32 v129, v252, v129                             // 0000000065CC: 170303FC
	v_sub_f32_e32 v131, v129, v252                             // 0000000065D0: 0507F981
	v_cmp_lt_f32_e32 vcc, s48, v131                            // 0000000065D4: 7C830630
	s_cmp_lg_u64 vcc, 0                                        // 0000000065D8: BF13806A
	s_cselect_b32 s18, 1, 0                                    // 0000000065DC: 85128081
	s_cselect_b64 s[18:19], -1, 0                              // 0000000065E0: 859280C1
	v_cndmask_b32_e64 v129, v252, v129, s[18:19]               // 0000000065E4: D1000081 004B03FC
	v_fma_f32 v130, v130, v238, -v129                          // 0000000065EC: D1CB0082 8607DD82
	v_floor_f32_e32 v130, v130                                 // 0000000065F4: 7F043F82
	v_med3_f32 v132, v130, s98, 0                              // 0000000065F8: D1D60084 0200C582
	v_cvt_i32_f32_e32 v130, v132                               // 000000006600: 7F041184
	v_add_u32_e32 v130, 0x7f, v130                             // 000000006604: 690504FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v130                           // 00000000660C: 25350497
	v_fma_f32 v128, v128, v238, -v129                          // 000000006610: D1CB0080 8607DD80
	v_floor_f32_e32 v128, v128                                 // 000000006618: 7F003F80
	v_med3_f32 v128, v128, s98, 0                              // 00000000661C: D1D60080 0200C580
	v_cvt_i32_f32_e32 v131, v128                               // 000000006624: 7F061180
	v_add_u32_e32 v131, 0x7f, v131                             // 000000006628: 690706FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v131                           // 000000006630: 25370697
	v_mov_b32_e32 v133, s50                                    // 000000006634: 7F0A0232
	v_fma_f32 v133, v129, s99, v133                            // 000000006638: D1CB0085 0614C781
	v_fma_f32 v152, v132, s99, v133                            // 000000006640: D1CB0098 0614C784
	v_fma_f32 v150, v128, s99, v133                            // 000000006648: D1CB0096 0614C780
	s_lshl_b32 s17, s17, 14                                    // 000000006650: 8E118E11
	s_add_u32 s18, s92, s17                                    // 000000006654: 8012115C
	v_add3_u32 v128, s18, v245, v244                           // 000000006658: D1FF0080 07D3EA12
	s_waitcnt vmcnt(2)                                         // 000000006660: BF8C0F72
	ds_read_b64_tr_b8 v[132:133], v128                         // 000000006664: D9C40000 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:1024             // 00000000666C: D9C40400 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:2048             // 000000006674: D9C40800 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:3072             // 00000000667C: D9C40C00 8A000080
	s_add_u32 s18, s92, s17                                    // 000000006684: 8012115C
	v_add3_u32 v128, s18, v245, v244                           // 000000006688: D1FF0080 07D3EA12
	ds_read_b64_tr_b8 v[140:141], v128 offset:256              // 000000006690: D9C40100 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:1280             // 000000006698: D9C40500 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:2304             // 0000000066A0: D9C40900 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:3328             // 0000000066A8: D9C40D00 92000080
	s_add_u32 s18, s92, s17                                    // 0000000066B0: 8012115C
	v_add3_u32 v128, s18, v245, v244                           // 0000000066B4: D1FF0080 07D3EA12
	ds_read_b64_tr_b8 v[156:157], v128 offset:512              // 0000000066BC: D9C40200 9C000080
	ds_read_b64_tr_b8 v[158:159], v128 offset:1536             // 0000000066C4: D9C40600 9E000080
	ds_read_b64_tr_b8 v[160:161], v128 offset:2560             // 0000000066CC: D9C40A00 A0000080
	ds_read_b64_tr_b8 v[162:163], v128 offset:3584             // 0000000066D4: D9C40E00 A2000080
	s_waitcnt lgkmcnt(4)                                       // 0000000066DC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[132:139], v[208:215], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 0000000066E0: D3AC0000 0003F7F2 D3AE0830 04C3A184
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[140:147], v[208:215], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 0000000066F0: D3AC0000 0003F7F2 D3AE0820 0483A18C
	s_add_u32 s18, s92, s17                                    // 000000006700: 8012115C
	v_add3_u32 v128, s18, v245, v244                           // 000000006704: D1FF0080 07D3EA12
	ds_read_b64_tr_b8 v[132:133], v128 offset:768              // 00000000670C: D9C40300 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:1792             // 000000006714: D9C40700 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:2816             // 00000000671C: D9C40B00 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:3840             // 000000006724: D9C40F00 8A000080
	s_add_u32 s18, s92, s17                                    // 00000000672C: 8012115C
	v_add3_u32 v128, s18, v245, v244                           // 000000006730: D1FF0080 07D3EA12
	ds_read_b64_tr_b8 v[140:141], v128 offset:4096             // 000000006738: D9C41000 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:5120             // 000000006740: D9C41400 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:6144             // 000000006748: D9C41800 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:7168             // 000000006750: D9C41C00 92000080
	s_waitcnt lgkmcnt(4)                                       // 000000006758: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[156:163], v[208:215], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 00000000675C: D3AC0000 0003F7F2 D3AE0810 0443A19C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[132:139], v[208:215], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 00000000676C: D3AC0000 0003F7F2 D3AE0800 0403A184
	s_add_u32 s18, s92, s17                                    // 00000000677C: 8012115C
	v_add3_u32 v128, s18, v245, v244                           // 000000006780: D1FF0080 07D3EA12
	ds_read_b64_tr_b8 v[156:157], v128 offset:4352             // 000000006788: D9C41100 9C000080
	ds_read_b64_tr_b8 v[158:159], v128 offset:5376             // 000000006790: D9C41500 9E000080
	ds_read_b64_tr_b8 v[160:161], v128 offset:6400             // 000000006798: D9C41900 A0000080
	ds_read_b64_tr_b8 v[162:163], v128 offset:7424             // 0000000067A0: D9C41D00 A2000080
	s_add_u32 s18, s92, s17                                    // 0000000067A8: 8012115C
	v_add3_u32 v128, s18, v245, v244                           // 0000000067AC: D1FF0080 07D3EA12
	ds_read_b64_tr_b8 v[132:133], v128 offset:4608             // 0000000067B4: D9C41200 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:5632             // 0000000067BC: D9C41600 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:6656             // 0000000067C4: D9C41A00 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:7680             // 0000000067CC: D9C41E00 8A000080
	s_waitcnt vmcnt(0) lgkmcnt(4)                              // 0000000067D4: BF8C0470
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[140:147], v[164:171], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 0000000067D8: D3AC0000 0003FBF2 D3AE0830 04C3498C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[156:163], v[164:171], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 0000000067E8: D3AC0000 0003FBF2 D3AE0820 0483499C
	s_add_u32 s17, s92, s17                                    // 0000000067F8: 8011115C
	v_add3_u32 v128, s17, v245, v244                           // 0000000067FC: D1FF0080 07D3EA11
	ds_read_b64_tr_b8 v[140:141], v128 offset:4864             // 000000006804: D9C41300 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:5888             // 00000000680C: D9C41700 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:6912             // 000000006814: D9C41B00 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:7936             // 00000000681C: D9C41F00 92000080
	s_waitcnt lgkmcnt(0)                                       // 000000006824: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[132:139], v[164:171], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000006828: D3AC0000 0003FBF2 D3AE0810 04434984
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[140:147], v[164:171], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000006838: D3AC0000 0003FBF2 D3AE0800 0403498C
	s_cbranch_vccz 68                                          // 000000006848: BF860044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4e5c>
	v_sub_f32_e32 v128, v252, v129                             // 00000000684C: 050103FC
	v_exp_f32_e32 v128, v128                                   // 000000006850: 7F004180
	s_nop 1                                                    // 000000006854: BF800001
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 000000006858: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 000000006860: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000006868: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000006870: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000006878: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000006880: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000006888: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000006890: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000006898: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 0000000068A0: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 0000000068A8: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 0000000068B0: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 0000000068B8: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 0000000068C0: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 0000000068C8: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 0000000068D0: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 0000000068D8: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 0000000068E0: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 0000000068E8: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 0000000068F0: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 0000000068F8: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000006900: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000006908: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 000000006910: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 000000006918: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 000000006920: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 000000006928: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 000000006930: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 000000006938: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 000000006940: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 000000006948: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 000000006950: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 000000006958: 0BF501FA
	s_waitcnt vmcnt(0)                                         // 00000000695C: BF8C0F70
	s_barrier                                                  // 000000006960: BF8A0000
	s_add_u32 s43, s43, 1                                      // 000000006964: 802B812B
	v_mov_b32_e32 v253, v131                                   // 000000006968: 7FFA0383
	v_mov_b32_e32 v251, v130                                   // 00000000696C: 7FF60382
	v_mov_b32_e32 v252, v129                                   // 000000006970: 7FF80381
	s_branch 475                                               // 000000006974: BF8201DB <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x55e4>
	s_cmp_eq_u32 s43, s79                                      // 000000006978: BF064F2B
	s_cbranch_scc0 431                                         // 00000000697C: BF8401AF <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x553c>
	s_setprio 0                                                // 000000006980: BF8F0000
	v_fma_f32 v128, v112, v239, v152                           // 000000006984: D1CB0080 0663DF70
	v_fma_f32 v129, v113, v239, v152                           // 00000000698C: D1CB0081 0663DF71
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006994: D1DD0080 02010180
	v_fma_f32 v130, v114, v239, v152                           // 00000000699C: D1CB0082 0663DF72
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 0000000069A4: D1DD0080 06010381
	v_fma_f32 v131, v115, v239, v152                           // 0000000069AC: D1CB0083 0663DF73
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 0000000069B4: D1DD0080 06010582
	v_cvt_pk_u8_f32 v136, v131, 3, v128                        // 0000000069BC: D1DD0088 06010783
	v_fma_f32 v128, v96, v239, v152                            // 0000000069C4: D1CB0080 0663DF60
	v_fma_f32 v129, v97, v239, v152                            // 0000000069CC: D1CB0081 0663DF61
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000069D4: D1DD0080 02010180
	v_fma_f32 v130, v98, v239, v152                            // 0000000069DC: D1CB0082 0663DF62
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 0000000069E4: D1DD0080 06010381
	v_fma_f32 v131, v99, v239, v152                            // 0000000069EC: D1CB0083 0663DF63
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 0000000069F4: D1DD0080 06010582
	v_cvt_pk_u8_f32 v140, v131, 3, v128                        // 0000000069FC: D1DD008C 06010783
	v_fma_f32 v128, v116, v239, v152                           // 000000006A04: D1CB0080 0663DF74
	v_fma_f32 v129, v117, v239, v152                           // 000000006A0C: D1CB0081 0663DF75
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006A14: D1DD0080 02010180
	v_fma_f32 v130, v118, v239, v152                           // 000000006A1C: D1CB0082 0663DF76
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006A24: D1DD0080 06010381
	v_fma_f32 v131, v119, v239, v152                           // 000000006A2C: D1CB0083 0663DF77
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006A34: D1DD0080 06010582
	v_cvt_pk_u8_f32 v137, v131, 3, v128                        // 000000006A3C: D1DD0089 06010783
	v_fma_f32 v128, v100, v239, v152                           // 000000006A44: D1CB0080 0663DF64
	v_fma_f32 v129, v101, v239, v152                           // 000000006A4C: D1CB0081 0663DF65
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006A54: D1DD0080 02010180
	v_fma_f32 v130, v102, v239, v152                           // 000000006A5C: D1CB0082 0663DF66
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006A64: D1DD0080 06010381
	v_fma_f32 v131, v103, v239, v152                           // 000000006A6C: D1CB0083 0663DF67
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006A74: D1DD0080 06010582
	v_cvt_pk_u8_f32 v141, v131, 3, v128                        // 000000006A7C: D1DD008D 06010783
	v_fma_f32 v128, v120, v239, v152                           // 000000006A84: D1CB0080 0663DF78
	v_fma_f32 v129, v121, v239, v152                           // 000000006A8C: D1CB0081 0663DF79
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006A94: D1DD0080 02010180
	v_fma_f32 v130, v122, v239, v152                           // 000000006A9C: D1CB0082 0663DF7A
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006AA4: D1DD0080 06010381
	v_fma_f32 v131, v123, v239, v152                           // 000000006AAC: D1CB0083 0663DF7B
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006AB4: D1DD0080 06010582
	v_cvt_pk_u8_f32 v138, v131, 3, v128                        // 000000006ABC: D1DD008A 06010783
	v_fma_f32 v128, v104, v239, v152                           // 000000006AC4: D1CB0080 0663DF68
	v_fma_f32 v129, v105, v239, v152                           // 000000006ACC: D1CB0081 0663DF69
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006AD4: D1DD0080 02010180
	v_fma_f32 v130, v106, v239, v152                           // 000000006ADC: D1CB0082 0663DF6A
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006AE4: D1DD0080 06010381
	v_fma_f32 v131, v107, v239, v152                           // 000000006AEC: D1CB0083 0663DF6B
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006AF4: D1DD0080 06010582
	v_cvt_pk_u8_f32 v142, v131, 3, v128                        // 000000006AFC: D1DD008E 06010783
	v_fma_f32 v128, v124, v239, v152                           // 000000006B04: D1CB0080 0663DF7C
	v_fma_f32 v129, v125, v239, v152                           // 000000006B0C: D1CB0081 0663DF7D
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006B14: D1DD0080 02010180
	v_fma_f32 v130, v126, v239, v152                           // 000000006B1C: D1CB0082 0663DF7E
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006B24: D1DD0080 06010381
	v_fma_f32 v131, v127, v239, v152                           // 000000006B2C: D1CB0083 0663DF7F
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006B34: D1DD0080 06010582
	v_cvt_pk_u8_f32 v139, v131, 3, v128                        // 000000006B3C: D1DD008B 06010783
	v_fma_f32 v128, v108, v239, v152                           // 000000006B44: D1CB0080 0663DF6C
	v_fma_f32 v129, v109, v239, v152                           // 000000006B4C: D1CB0081 0663DF6D
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006B54: D1DD0080 02010180
	v_fma_f32 v130, v110, v239, v152                           // 000000006B5C: D1CB0082 0663DF6E
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006B64: D1DD0080 06010381
	v_fma_f32 v131, v111, v239, v152                           // 000000006B6C: D1CB0083 0663DF6F
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006B74: D1DD0080 06010582
	v_cvt_pk_u8_f32 v143, v131, 3, v128                        // 000000006B7C: D1DD008F 06010783
	v_fma_f32 v128, v80, v239, v150                            // 000000006B84: D1CB0080 065BDF50
	v_fma_f32 v129, v81, v239, v150                            // 000000006B8C: D1CB0081 065BDF51
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006B94: D1DD0080 02010180
	v_fma_f32 v130, v82, v239, v150                            // 000000006B9C: D1CB0082 065BDF52
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006BA4: D1DD0080 06010381
	v_fma_f32 v129, v64, v239, v150                            // 000000006BAC: D1CB0081 065BDF40
	v_fma_f32 v131, v83, v239, v150                            // 000000006BB4: D1CB0083 065BDF53
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006BBC: D1DD0080 06010582
	v_fma_f32 v130, v65, v239, v150                            // 000000006BC4: D1CB0082 065BDF41
	v_cvt_pk_u8_f32 v129, v129, 0, 0                           // 000000006BCC: D1DD0081 02010181
	v_cvt_pk_u8_f32 v128, v131, 3, v128                        // 000000006BD4: D1DD0080 06010783
	v_fma_f32 v131, v66, v239, v150                            // 000000006BDC: D1CB0083 065BDF42
	v_cvt_pk_u8_f32 v129, v130, 1, v129                        // 000000006BE4: D1DD0081 06050382
	v_fma_f32 v132, v67, v239, v150                            // 000000006BEC: D1CB0084 065BDF43
	v_cvt_pk_u8_f32 v129, v131, 2, v129                        // 000000006BF4: D1DD0081 06050583
	v_cvt_pk_u8_f32 v132, v132, 3, v129                        // 000000006BFC: D1DD0084 06050784
	v_fma_f32 v129, v84, v239, v150                            // 000000006C04: D1CB0081 065BDF54
	v_fma_f32 v130, v85, v239, v150                            // 000000006C0C: D1CB0082 065BDF55
	v_cvt_pk_u8_f32 v129, v129, 0, 0                           // 000000006C14: D1DD0081 02010181
	v_fma_f32 v131, v86, v239, v150                            // 000000006C1C: D1CB0083 065BDF56
	v_cvt_pk_u8_f32 v129, v130, 1, v129                        // 000000006C24: D1DD0081 06050382
	v_fma_f32 v130, v68, v239, v150                            // 000000006C2C: D1CB0082 065BDF44
	v_fma_f32 v133, v87, v239, v150                            // 000000006C34: D1CB0085 065BDF57
	v_cvt_pk_u8_f32 v129, v131, 2, v129                        // 000000006C3C: D1DD0081 06050583
	v_fma_f32 v131, v69, v239, v150                            // 000000006C44: D1CB0083 065BDF45
	v_cvt_pk_u8_f32 v130, v130, 0, 0                           // 000000006C4C: D1DD0082 02010182
	v_cvt_pk_u8_f32 v129, v133, 3, v129                        // 000000006C54: D1DD0081 06050785
	v_fma_f32 v133, v70, v239, v150                            // 000000006C5C: D1CB0085 065BDF46
	v_cvt_pk_u8_f32 v130, v131, 1, v130                        // 000000006C64: D1DD0082 06090383
	v_fma_f32 v134, v71, v239, v150                            // 000000006C6C: D1CB0086 065BDF47
	v_cvt_pk_u8_f32 v130, v133, 2, v130                        // 000000006C74: D1DD0082 06090585
	v_cvt_pk_u8_f32 v133, v134, 3, v130                        // 000000006C7C: D1DD0085 06090786
	v_fma_f32 v130, v88, v239, v150                            // 000000006C84: D1CB0082 065BDF58
	v_fma_f32 v131, v89, v239, v150                            // 000000006C8C: D1CB0083 065BDF59
	v_cvt_pk_u8_f32 v130, v130, 0, 0                           // 000000006C94: D1DD0082 02010182
	v_fma_f32 v134, v90, v239, v150                            // 000000006C9C: D1CB0086 065BDF5A
	v_cvt_pk_u8_f32 v130, v131, 1, v130                        // 000000006CA4: D1DD0082 06090383
	v_fma_f32 v131, v72, v239, v150                            // 000000006CAC: D1CB0083 065BDF48
	v_fma_f32 v135, v91, v239, v150                            // 000000006CB4: D1CB0087 065BDF5B
	v_cvt_pk_u8_f32 v130, v134, 2, v130                        // 000000006CBC: D1DD0082 06090586
	v_fma_f32 v134, v73, v239, v150                            // 000000006CC4: D1CB0086 065BDF49
	v_cvt_pk_u8_f32 v131, v131, 0, 0                           // 000000006CCC: D1DD0083 02010183
	v_cvt_pk_u8_f32 v130, v135, 3, v130                        // 000000006CD4: D1DD0082 06090787
	v_fma_f32 v135, v74, v239, v150                            // 000000006CDC: D1CB0087 065BDF4A
	v_cvt_pk_u8_f32 v131, v134, 1, v131                        // 000000006CE4: D1DD0083 060D0386
	v_fma_f32 v144, v75, v239, v150                            // 000000006CEC: D1CB0090 065BDF4B
	v_cvt_pk_u8_f32 v131, v135, 2, v131                        // 000000006CF4: D1DD0083 060D0587
	v_cvt_pk_u8_f32 v134, v144, 3, v131                        // 000000006CFC: D1DD0086 060D0790
	v_fma_f32 v131, v92, v239, v150                            // 000000006D04: D1CB0083 065BDF5C
	v_fma_f32 v135, v93, v239, v150                            // 000000006D0C: D1CB0087 065BDF5D
	v_cvt_pk_u8_f32 v131, v131, 0, 0                           // 000000006D14: D1DD0083 02010183
	v_fma_f32 v144, v94, v239, v150                            // 000000006D1C: D1CB0090 065BDF5E
	v_cvt_pk_u8_f32 v131, v135, 1, v131                        // 000000006D24: D1DD0083 060D0387
	v_fma_f32 v135, v76, v239, v150                            // 000000006D2C: D1CB0087 065BDF4C
	v_fma_f32 v145, v95, v239, v150                            // 000000006D34: D1CB0091 065BDF5F
	v_cvt_pk_u8_f32 v131, v144, 2, v131                        // 000000006D3C: D1DD0083 060D0590
	v_fma_f32 v144, v77, v239, v150                            // 000000006D44: D1CB0090 065BDF4D
	v_cvt_pk_u8_f32 v135, v135, 0, 0                           // 000000006D4C: D1DD0087 02010187
	v_cvt_pk_u8_f32 v131, v145, 3, v131                        // 000000006D54: D1DD0083 060D0791
	v_fma_f32 v145, v78, v239, v150                            // 000000006D5C: D1CB0091 065BDF4E
	v_cvt_pk_u8_f32 v135, v144, 1, v135                        // 000000006D64: D1DD0087 061D0390
	v_fma_f32 v146, v79, v239, v150                            // 000000006D6C: D1CB0092 065BDF4F
	v_cvt_pk_u8_f32 v135, v145, 2, v135                        // 000000006D74: D1DD0087 061D0591
	v_cvt_pk_u8_f32 v135, v146, 3, v135                        // 000000006D7C: D1DD0087 061D0792
	s_barrier                                                  // 000000006D84: BF8A0000
	s_setprio 1                                                // 000000006D88: BF8F0001
	s_waitcnt vmcnt(0)                                         // 000000006D8C: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[144:147], v[192:199], v[136:143], 0// 000000006D90: D3AD0090 020311C0
	v_mfma_f32_16x16x128_f8f6f4 v[146:149], v[192:199], v[128:135], 0// 000000006D98: D3AD0092 020301C0
	s_add_u32 s17, s79, s78                                    // 000000006DA0: 80114E4F
	s_and_b32 s17, s17, 3                                      // 000000006DA4: 86118311
	s_lshl_b32 s18, s17, 14                                    // 000000006DA8: 8E128E11
	s_add_u32 s19, s92, s18                                    // 000000006DAC: 8013125C
	v_add3_u32 v145, s19, v245, v244                           // 000000006DB0: D1FF0091 07D3EA13
	ds_read_b64_tr_b8 v[156:157], v145                         // 000000006DB8: D9C40000 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:1024             // 000000006DC0: D9C40400 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:2048             // 000000006DC8: D9C40800 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:3072             // 000000006DD0: D9C40C00 A2000091
	s_add_u32 s19, s92, s18                                    // 000000006DD8: 8013125C
	v_add3_u32 v145, s19, v245, v244                           // 000000006DDC: D1FF0091 07D3EA13
	ds_read_b64_tr_b8 v[164:165], v145 offset:256              // 000000006DE4: D9C40100 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:1280             // 000000006DEC: D9C40500 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:2304             // 000000006DF4: D9C40900 A8000091
	ds_read_b64_tr_b8 v[170:171], v145 offset:3328             // 000000006DFC: D9C40D00 AA000091
	s_add_u32 s19, s92, s18                                    // 000000006E04: 8013125C
	v_add3_u32 v145, s19, v245, v244                           // 000000006E08: D1FF0091 07D3EA13
	ds_read_b64_tr_b8 v[172:173], v145 offset:512              // 000000006E10: D9C40200 AC000091
	ds_read_b64_tr_b8 v[174:175], v145 offset:1536             // 000000006E18: D9C40600 AE000091
	ds_read_b64_tr_b8 v[176:177], v145 offset:2560             // 000000006E20: D9C40A00 B0000091
	ds_read_b64_tr_b8 v[178:179], v145 offset:3584             // 000000006E28: D9C40E00 B2000091
	s_waitcnt lgkmcnt(4)                                       // 000000006E30: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000006E34: D3AC0000 0003F7F2 D3AE0830 04C3119C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000006E44: D3AC0000 0003F7F2 D3AE0820 048311A4
	s_add_u32 s19, s92, s18                                    // 000000006E54: 8013125C
	v_add3_u32 v145, s19, v245, v244                           // 000000006E58: D1FF0091 07D3EA13
	ds_read_b64_tr_b8 v[156:157], v145 offset:768              // 000000006E60: D9C40300 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:1792             // 000000006E68: D9C40700 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:2816             // 000000006E70: D9C40B00 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:3840             // 000000006E78: D9C40F00 A2000091
	s_add_u32 s19, s92, s18                                    // 000000006E80: 8013125C
	v_add3_u32 v145, s19, v245, v244                           // 000000006E84: D1FF0091 07D3EA13
	ds_read_b64_tr_b8 v[164:165], v145 offset:4096             // 000000006E8C: D9C41000 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:5120             // 000000006E94: D9C41400 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:6144             // 000000006E9C: D9C41800 A8000091
	ds_read_b64_tr_b8 v[170:171], v145 offset:7168             // 000000006EA4: D9C41C00 AA000091
	s_waitcnt lgkmcnt(4)                                       // 000000006EAC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000006EB0: D3AC0000 0003F7F2 D3AE0810 044311AC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000006EC0: D3AC0000 0003F7F2 D3AE0800 0403119C
	s_add_u32 s19, s92, s18                                    // 000000006ED0: 8013125C
	v_add3_u32 v145, s19, v245, v244                           // 000000006ED4: D1FF0091 07D3EA13
	ds_read_b64_tr_b8 v[172:173], v145 offset:4352             // 000000006EDC: D9C41100 AC000091
	ds_read_b64_tr_b8 v[174:175], v145 offset:5376             // 000000006EE4: D9C41500 AE000091
	ds_read_b64_tr_b8 v[176:177], v145 offset:6400             // 000000006EEC: D9C41900 B0000091
	ds_read_b64_tr_b8 v[178:179], v145 offset:7424             // 000000006EF4: D9C41D00 B2000091
	s_add_u32 s19, s92, s18                                    // 000000006EFC: 8013125C
	v_add3_u32 v136, s19, v245, v244                           // 000000006F00: D1FF0088 07D3EA13
	ds_read_b64_tr_b8 v[156:157], v136 offset:4608             // 000000006F08: D9C41200 9C000088
	ds_read_b64_tr_b8 v[158:159], v136 offset:5632             // 000000006F10: D9C41600 9E000088
	ds_read_b64_tr_b8 v[160:161], v136 offset:6656             // 000000006F18: D9C41A00 A0000088
	ds_read_b64_tr_b8 v[162:163], v136 offset:7680             // 000000006F20: D9C41E00 A2000088
	s_waitcnt lgkmcnt(4)                                       // 000000006F28: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[164:171], v[128:135], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000006F2C: D3AC0000 0003FBF2 D3AE0830 04C301A4
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[172:179], v[128:135], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000006F3C: D3AC0000 0003FBF2 D3AE0820 048301AC
	s_add_u32 s19, s92, s18                                    // 000000006F4C: 8013125C
	v_add3_u32 v136, s19, v245, v244                           // 000000006F50: D1FF0088 07D3EA13
	ds_read_b64_tr_b8 v[164:165], v136 offset:4864             // 000000006F58: D9C41300 A4000088
	ds_read_b64_tr_b8 v[166:167], v136 offset:5888             // 000000006F60: D9C41700 A6000088
	ds_read_b64_tr_b8 v[168:169], v136 offset:6912             // 000000006F68: D9C41B00 A8000088
	ds_read_b64_tr_b8 v[170:171], v136 offset:7936             // 000000006F70: D9C41F00 AA000088
	s_add_u32 s19, s79, 4                                      // 000000006F78: 8013844F
	s_cmp_ge_u32 s19, s96                                      // 000000006F7C: BF096013
	s_cbranch_scc1 12                                          // 000000006F80: BF85000C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x54b4>
	s_add_u32 s18, s18, s88                                    // 000000006F84: 80125812
	s_mul_i32 s19, s19, s8                                     // 000000006F88: 92130813
	s_lshl_b32 s19, s19, 7                                     // 000000006F8C: 8E138713
	s_mov_b32 m0, s18                                          // 000000006F90: BEFC0012
	s_nop 0                                                    // 000000006F94: BF800000
	buffer_load_dwordx4 v233, s[84:87], s19 offen lds          // 000000006F98: E05D1000 131500E9
	s_add_u32 m0, s18, 0x2000                                  // 000000006FA0: 807CFF12 00002000
	s_nop 0                                                    // 000000006FA8: BF800000
	buffer_load_dwordx4 v234, s[84:87], s19 offen lds          // 000000006FAC: E05D1000 131500EA
	s_add_u32 s18, s79, 2                                      // 000000006FB4: 8012824F
	s_cmp_ge_u32 s18, s96                                      // 000000006FB8: BF096012
	s_cbranch_scc1 15                                          // 000000006FBC: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x54fc>
	s_xor_b32 s17, s17, 2                                      // 000000006FC0: 88118211
	s_mul_i32 s18, s18, s8                                     // 000000006FC4: 92120812
	s_lshl_b32 s17, s17, 14                                    // 000000006FC8: 8E118E11
	s_add_u32 s19, s92, s17                                    // 000000006FCC: 8013115C
	s_add_u32 m0, s19, s88                                     // 000000006FD0: 807C5813
	s_lshl_b32 s18, s18, 7                                     // 000000006FD4: 8E128712
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000006FD8: E05D1000 121400EB
	s_add_u32 s17, s92, s17                                    // 000000006FE0: 8011115C
	s_add_u32 s17, s17, s88                                    // 000000006FE4: 80115811
	s_add_u32 m0, s17, 0x2000                                  // 000000006FE8: 807CFF11 00002000
	s_nop 0                                                    // 000000006FF0: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000006FF4: E05D1000 121400EC
	v_mul_f32_e32 v136, v154, v144                             // 000000006FFC: 0B11219A
	v_mul_f32_e32 v137, v155, v146                             // 000000007000: 0B13259B
	v_add_f32_e32 v136, v250, v136                             // 000000007004: 031111FA
	v_add_f32_e32 v250, v136, v137                             // 000000007008: 03F51388
	s_waitcnt lgkmcnt(0)                                       // 00000000700C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[156:163], v[128:135], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000007010: D3AC0000 0003FBF2 D3AE0810 0443019C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[164:171], v[128:135], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000007020: D3AC0000 0003FBF2 D3AE0800 040301A4
	s_barrier                                                  // 000000007030: BF8A0000
	s_add_u32 s43, s79, 1                                      // 000000007034: 802B814F
	s_branch 42                                                // 000000007038: BF82002A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x55e4>
	s_barrier                                                  // 00000000703C: BF8A0000
	s_waitcnt vmcnt(0)                                         // 000000007040: BF8C0F70
	s_add_u32 s17, s43, 4                                      // 000000007044: 8011842B
	s_cmp_ge_u32 s17, s96                                      // 000000007048: BF096011
	s_cbranch_scc1 15                                          // 00000000704C: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x558c>
	s_add_u32 s18, s43, s78                                    // 000000007050: 80124E2B
	s_and_b32 s18, s18, 3                                      // 000000007054: 86128312
	s_lshl_b32 s18, s18, 14                                    // 000000007058: 8E128E12
	s_or_b32 s18, s18, s88                                     // 00000000705C: 87125812
	s_mul_i32 s17, s17, s8                                     // 000000007060: 92110811
	s_lshl_b32 s17, s17, 7                                     // 000000007064: 8E118711
	s_mov_b32 m0, s18                                          // 000000007068: BEFC0012
	s_nop 0                                                    // 00000000706C: BF800000
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 000000007070: E05D1000 111500E9
	s_or_b32 m0, s18, 0x2000                                   // 000000007078: 877CFF12 00002000
	s_nop 0                                                    // 000000007080: BF800000
	buffer_load_dwordx4 v234, s[84:87], s17 offen lds          // 000000007084: E05D1000 111500EA
	s_add_u32 s17, s43, 2                                      // 00000000708C: 8011822B
	s_cmp_ge_u32 s17, s96                                      // 000000007090: BF096011
	s_cbranch_scc1 17                                          // 000000007094: BF850011 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x55dc>
	s_add_u32 s18, s43, s78                                    // 000000007098: 80124E2B
	s_and_b32 s18, s18, 3                                      // 00000000709C: 86128312
	s_xor_b32 s18, s18, 2                                      // 0000000070A0: 88128212
	s_mul_i32 s17, s17, s8                                     // 0000000070A4: 92110811
	s_lshl_b32 s18, s18, 14                                    // 0000000070A8: 8E128E12
	s_add_u32 s19, s92, s18                                    // 0000000070AC: 8013125C
	s_add_u32 m0, s19, s88                                     // 0000000070B0: 807C5813
	s_lshl_b32 s17, s17, 7                                     // 0000000070B4: 8E118711
	buffer_load_dwordx4 v235, s[80:83], s17 offen lds          // 0000000070B8: E05D1000 111400EB
	s_add_u32 s18, s92, s18                                    // 0000000070C0: 8012125C
	s_add_u32 s18, s18, s88                                    // 0000000070C4: 80125812
	s_add_u32 m0, s18, 0x2000                                  // 0000000070C8: 807CFF12 00002000
	s_nop 0                                                    // 0000000070D0: BF800000
	buffer_load_dwordx4 v236, s[80:83], s17 offen lds          // 0000000070D4: E05D1000 111400EC
	s_barrier                                                  // 0000000070DC: BF8A0000
	s_add_u32 s43, s43, 1                                      // 0000000070E0: 802B812B
	s_add_u32 s17, s43, 1                                      // 0000000070E4: 8011812B
	s_cmp_ge_u32 s17, s96                                      // 0000000070E8: BF096011
	s_cbranch_scc1 1753                                        // 0000000070EC: BF8506D9 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7154>
	s_cmp_ge_u32 s43, s79                                      // 0000000070F0: BF094F2B
	s_cbranch_scc1 1096                                        // 0000000070F4: BF850448 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6718>
	s_setprio 0                                                // 0000000070F8: BF8F0000
	v_fma_f32 v108, v108, v239, v152                           // 0000000070FC: D1CB006C 0663DF6C
	v_fma_f32 v64, v64, v239, v150                             // 000000007104: D1CB0040 065BDF40
	v_fma_f32 v68, v68, v239, v150                             // 00000000710C: D1CB0044 065BDF44
	s_add_u32 s17, s43, s78                                    // 000000007114: 80114E2B
	v_fma_f32 v96, v96, v239, v152                             // 000000007118: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 000000007120: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 000000007128: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 000000007130: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 000000007138: D1CB0068 0663DF68
	v_fma_f32 v109, v109, v239, v152                           // 000000007140: D1CB006D 0663DF6D
	v_fma_f32 v80, v80, v239, v150                             // 000000007148: D1CB0050 065BDF50
	v_fma_f32 v65, v65, v239, v150                             // 000000007150: D1CB0041 065BDF41
	v_fma_f32 v84, v84, v239, v150                             // 000000007158: D1CB0054 065BDF54
	v_fma_f32 v69, v69, v239, v150                             // 000000007160: D1CB0045 065BDF45
	v_fma_f32 v72, v72, v239, v150                             // 000000007168: D1CB0048 065BDF48
	v_fma_f32 v92, v92, v239, v150                             // 000000007170: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000007178: D1DD006C 0201016C
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000007180: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000007188: D1DD0044 02010144
	s_add_u32 s18, s17, 1                                      // 000000007190: 80128111
	v_fma_f32 v97, v97, v239, v152                             // 000000007194: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 00000000719C: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 0000000071A4: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 0000000071AC: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 0000000071B4: D1CB0069 0663DF69
	v_fma_f32 v110, v110, v239, v152                           // 0000000071BC: D1CB006E 0663DF6E
	v_fma_f32 v81, v81, v239, v150                             // 0000000071C4: D1CB0051 065BDF51
	v_fma_f32 v66, v66, v239, v150                             // 0000000071CC: D1CB0042 065BDF42
	v_fma_f32 v85, v85, v239, v150                             // 0000000071D4: D1CB0055 065BDF55
	v_fma_f32 v70, v70, v239, v150                             // 0000000071DC: D1CB0046 065BDF46
	v_fma_f32 v88, v88, v239, v150                             // 0000000071E4: D1CB0058 065BDF58
	v_fma_f32 v73, v73, v239, v150                             // 0000000071EC: D1CB0049 065BDF49
	v_fma_f32 v93, v93, v239, v150                             // 0000000071F4: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 0000000071FC: D1DD0060 02010160
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000007204: D1DD0074 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 00000000720C: D1DD0064 02010164
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000007214: D1DD0078 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 00000000721C: D1DD0068 02010168
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000007224: D1DD0050 02010150
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 00000000722C: D1DD0054 02010154
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000007234: D1DD0048 02010148
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 00000000723C: D1DD005C 0201015C
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 000000007244: D1DD006C 05B1036D
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 00000000724C: D1DD0040 05010341
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 000000007254: D1DD0044 05110345
	s_and_b32 s18, s18, 3                                      // 00000000725C: 86128312
	v_fma_f32 v98, v98, v239, v152                             // 000000007260: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 000000007268: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 000000007270: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 000000007278: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 000000007280: D1CB006A 0663DF6A
	v_fma_f32 v111, v111, v239, v152                           // 000000007288: D1CB006F 0663DF6F
	v_fma_f32 v82, v82, v239, v150                             // 000000007290: D1CB0052 065BDF52
	v_fma_f32 v86, v86, v239, v150                             // 000000007298: D1CB0056 065BDF56
	v_fma_f32 v71, v71, v239, v150                             // 0000000072A0: D1CB0047 065BDF47
	v_fma_f32 v89, v89, v239, v150                             // 0000000072A8: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 0000000072B0: D1DD0058 02010158
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 0000000072B8: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v116                         // 0000000072C0: D1DD0061 05D10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 0000000072C8: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v120                        // 0000000072D0: D1DD0065 05E10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 0000000072D8: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 0000000072E0: D1DD0050 05410351
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 0000000072E8: D1DD0041 05510355
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 0000000072F0: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v93, 1, v92                           // 0000000072F8: D1DD0049 0571035D
	v_cvt_pk_u8_f32 v93, v110, 2, v108                         // 000000007300: D1DD005D 05B1056E
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000007308: D1DD0040 05010542
	v_cvt_pk_u8_f32 v66, v70, 2, v68                           // 000000007310: D1DD0042 05110546
	s_lshl_b32 s18, s18, 14                                    // 000000007318: 8E128E12
	v_fma_f32 v99, v99, v239, v152                             // 00000000731C: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 000000007324: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 00000000732C: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 000000007334: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 00000000733C: D1CB006B 0663DF6B
	v_fma_f32 v83, v83, v239, v150                             // 000000007344: D1CB0053 065BDF53
	v_fma_f32 v87, v87, v239, v150                             // 00000000734C: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 000000007354: D1DD0045 05610359
	v_cvt_pk_u8_f32 v81, v98, 2, v96                           // 00000000735C: D1DD0051 05810562
	v_cvt_pk_u8_f32 v84, v118, 2, v97                          // 000000007364: D1DD0054 05850576
	v_cvt_pk_u8_f32 v85, v102, 2, v100                         // 00000000736C: D1DD0055 05910566
	v_cvt_pk_u8_f32 v88, v122, 2, v101                         // 000000007374: D1DD0058 0595057A
	v_cvt_pk_u8_f32 v89, v106, 2, v104                         // 00000000737C: D1DD0059 05A1056A
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000007384: D1DD0050 05410552
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 00000000738C: D1DD0041 05050556
	v_cvt_pk_u8_f32 v215, v111, 3, v93                         // 000000007394: D1DD00D7 0575076F
	v_cvt_pk_u8_f32 v93, v71, 3, v66                           // 00000000739C: D1DD005D 05090747
	v_or_b32_e32 v71, s18, v231                                // 0000000073A4: 288FCE12
	v_cvt_pk_u8_f32 v212, v99, 3, v81                          // 0000000073A8: D1DD00D4 05450763
	v_cvt_pk_u8_f32 v209, v119, 3, v84                         // 0000000073B0: D1DD00D1 05510777
	v_cvt_pk_u8_f32 v213, v103, 3, v85                         // 0000000073B8: D1DD00D5 05550767
	v_cvt_pk_u8_f32 v210, v123, 3, v88                         // 0000000073C0: D1DD00D2 0561077B
	v_cvt_pk_u8_f32 v214, v107, 3, v89                         // 0000000073C8: D1DD00D6 0565076B
	v_cvt_pk_u8_f32 v88, v83, 3, v80                           // 0000000073D0: D1DD0058 05410753
	v_cvt_pk_u8_f32 v89, v87, 3, v65                           // 0000000073D8: D1DD0059 05050757
	ds_read_b128 v[80:83], v71                                 // 0000000073E0: D9FE0000 50000047
	ds_read_b128 v[84:87], v71 offset:16                       // 0000000073E8: D9FE0010 54000047
	ds_read_b128 v[96:99], v71 offset:4096                     // 0000000073F0: D9FE1000 60000047
	ds_read_b128 v[100:103], v71 offset:4112                   // 0000000073F8: D9FE1010 64000047
	v_fma_f32 v112, v112, v239, v152                           // 000000007400: D1CB0070 0663DF70
	v_fma_f32 v124, v124, v239, v152                           // 000000007408: D1CB007C 0663DF7C
	v_fma_f32 v113, v113, v239, v152                           // 000000007410: D1CB0071 0663DF71
	v_fma_f32 v125, v125, v239, v152                           // 000000007418: D1CB007D 0663DF7D
	v_fma_f32 v76, v76, v239, v150                             // 000000007420: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000007428: D1DD0070 02010170
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000007430: D1DD007C 0201017C
	v_fma_f32 v114, v114, v239, v152                           // 000000007438: D1CB0072 0663DF72
	v_fma_f32 v126, v126, v239, v152                           // 000000007440: D1CB007E 0663DF7E
	v_fma_f32 v77, v77, v239, v150                             // 000000007448: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000007450: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000007458: D1DD0070 05C10371
	v_cvt_pk_u8_f32 v105, v125, 1, v124                        // 000000007460: D1DD0069 05F1037D
	v_fma_f32 v115, v115, v239, v152                           // 000000007468: D1CB0073 0663DF73
	v_fma_f32 v127, v127, v239, v152                           // 000000007470: D1CB007F 0663DF7F
	v_fma_f32 v90, v90, v239, v150                             // 000000007478: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 000000007480: D1CB004A 065BDF4A
	v_fma_f32 v94, v94, v239, v150                             // 000000007488: D1CB005E 065BDF5E
	v_fma_f32 v78, v78, v239, v150                             // 000000007490: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v76, v77, 1, v76                           // 000000007498: D1DD004C 0531034D
	v_cvt_pk_u8_f32 v77, v114, 2, v112                         // 0000000074A0: D1DD004D 05C10572
	v_cvt_pk_u8_f32 v92, v126, 2, v105                         // 0000000074A8: D1DD005C 05A5057E
	v_fma_f32 v67, v67, v239, v150                             // 0000000074B0: D1CB0043 065BDF43
	v_fma_f32 v91, v91, v239, v150                             // 0000000074B8: D1CB005B 065BDF5B
	v_fma_f32 v75, v75, v239, v150                             // 0000000074C0: D1CB004B 065BDF4B
	v_fma_f32 v95, v95, v239, v150                             // 0000000074C8: D1CB005F 065BDF5F
	v_fma_f32 v79, v79, v239, v150                             // 0000000074D0: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v68, v90, 2, v69                           // 0000000074D8: D1DD0044 0515055A
	v_cvt_pk_u8_f32 v69, v74, 2, v72                           // 0000000074E0: D1DD0045 0521054A
	v_cvt_pk_u8_f32 v70, v94, 2, v73                           // 0000000074E8: D1DD0046 0525055E
	v_cvt_pk_u8_f32 v72, v78, 2, v76                           // 0000000074F0: D1DD0048 0531054E
	v_cvt_pk_u8_f32 v208, v115, 3, v77                         // 0000000074F8: D1DD00D0 05350773
	v_cvt_pk_u8_f32 v211, v127, 3, v92                         // 000000007500: D1DD00D3 0571077F
	v_cvt_pk_u8_f32 v92, v67, 3, v64                           // 000000007508: D1DD005C 05010743
	v_cvt_pk_u8_f32 v90, v91, 3, v68                           // 000000007510: D1DD005A 0511075B
	v_cvt_pk_u8_f32 v94, v75, 3, v69                           // 000000007518: D1DD005E 0515074B
	v_cvt_pk_u8_f32 v91, v95, 3, v70                           // 000000007520: D1DD005B 0519075F
	v_cvt_pk_u8_f32 v95, v79, 3, v72                           // 000000007528: D1DD005F 0521074F
	s_barrier                                                  // 000000007530: BF8A0000
	s_and_b32 s17, s17, 3                                      // 000000007534: 86118311
	s_setprio 1                                                // 000000007538: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[208:215], 0// 00000000753C: D3AD0040 0203A1C0
	scratch_store_dwordx4 off, v[88:91], off                   // 000000007544: DC7C4000 007F5800
	s_nop 0                                                    // 00000000754C: BF800000
	scratch_store_dwordx4 off, v[92:95], off offset:16         // 000000007550: DC7C4010 007F5C00
	v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[192:199], v[88:95], 0// 000000007558: D3AD0042 0202B1C0
	s_nop 3                                                    // 000000007560: BF800003
	v_mul_f32_e32 v64, v154, v64                               // 000000007564: 0A80819A
	v_add_f32_e32 v64, v250, v64                               // 000000007568: 028081FA
	s_nop 5                                                    // 00000000756C: BF800005
	v_mul_f32_e32 v65, v155, v66                               // 000000007570: 0A82859B
	v_add_f32_e32 v250, v64, v65                               // 000000007574: 03F48340
	ds_read_b128 v[88:91], v71 offset:8192                     // 000000007578: D9FE2000 58000047
	ds_read_b128 v[92:95], v71 offset:8208                     // 000000007580: D9FE2010 5C000047
	ds_read_b128 v[104:107], v71 offset:12288                  // 000000007588: D9FE3000 68000047
	ds_read_b128 v[108:111], v71 offset:12304                  // 000000007590: D9FE3010 6C000047
	s_waitcnt lgkmcnt(4)                                       // 000000007598: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[80:87], v[220:227], 0// 00000000759C: D3AE00B0 0203B950
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[96:103], v[220:227], 0// 0000000075A4: D3AE00A0 0203B960
	v_or_b32_e32 v64, s18, v232                                // 0000000075AC: 2881D012
	ds_read_b128 v[66:69], v64                                 // 0000000075B0: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 0000000075B8: D9FE0010 46000040
	ds_read_b128 v[74:77], v64 offset:4096                     // 0000000075C0: D9FE1000 4A000040
	ds_read_b128 v[78:81], v64 offset:4112                     // 0000000075C8: D9FE1010 4E000040
	s_waitcnt lgkmcnt(4)                                       // 0000000075D0: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[88:95], v[220:227], 0// 0000000075D4: D3AE0090 0203B958
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[104:111], v[220:227], 0// 0000000075DC: D3AE0080 0203B968
	ds_read_b128 v[82:85], v64 offset:8192                     // 0000000075E4: D9FE2000 52000040
	ds_read_b128 v[86:89], v64 offset:8208                     // 0000000075EC: D9FE2010 56000040
	ds_read_b128 v[112:115], v64 offset:12288                  // 0000000075F4: D9FE3000 70000040
	ds_read_b128 v[116:119], v64 offset:12304                  // 0000000075FC: D9FE3010 74000040
	s_add_u32 s18, s43, 4                                      // 000000007604: 8012842B
	s_cmp_ge_u32 s18, s96                                      // 000000007608: BF096012
	s_cbranch_scc1 13                                          // 00000000760C: BF85000D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5b44>
	s_lshl_b32 s19, s17, 14                                    // 000000007610: 8E138E11
	s_or_b32 s19, s19, s88                                     // 000000007614: 87135813
	s_mul_i32 s18, s18, s8                                     // 000000007618: 92120812
	s_lshl_b32 s18, s18, 7                                     // 00000000761C: 8E128712
	s_mov_b32 m0, s19                                          // 000000007620: BEFC0013
	s_nop 0                                                    // 000000007624: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000007628: E05D1000 121500E9
	s_or_b32 m0, s19, 0x2000                                   // 000000007630: 877CFF13 00002000
	s_nop 0                                                    // 000000007638: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 00000000763C: E05D1000 121500EA
	s_add_u32 s18, s43, 2                                      // 000000007644: 8012822B
	s_cmp_ge_u32 s18, s96                                      // 000000007648: BF096012
	s_cbranch_scc1 15                                          // 00000000764C: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5b8c>
	s_xor_b32 s19, s17, 2                                      // 000000007650: 88138211
	s_mul_i32 s18, s18, s8                                     // 000000007654: 92120812
	s_lshl_b32 s19, s19, 14                                    // 000000007658: 8E138E13
	s_add_u32 s20, s92, s19                                    // 00000000765C: 8014135C
	s_add_u32 m0, s20, s88                                     // 000000007660: 807C5814
	s_lshl_b32 s18, s18, 7                                     // 000000007664: 8E128712
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000007668: E05D1000 121400EB
	s_add_u32 s19, s92, s19                                    // 000000007670: 8013135C
	s_add_u32 s19, s19, s88                                    // 000000007674: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 000000007678: 807CFF13 00002000
	s_nop 0                                                    // 000000007680: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000007684: E05D1000 121400EC
	s_waitcnt lgkmcnt(4)                                       // 00000000768C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[66:73], v[200:207], v[176:191]// 000000007690: D3AE00B0 06C39142
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[74:81], v[200:207], v[160:175]// 000000007698: D3AE00A0 0683914A
	s_nop 15                                                   // 0000000076A0: BF80000F
	s_nop 3                                                    // 0000000076A4: BF800003
	v_mov_b64_e32 v[96:97], v[160:161]                         // 0000000076A8: 7EC071A0
	v_mov_b64_e32 v[98:99], v[162:163]                         // 0000000076AC: 7EC471A2
	v_mov_b64_e32 v[100:101], v[164:165]                       // 0000000076B0: 7EC871A4
	v_mov_b64_e32 v[102:103], v[166:167]                       // 0000000076B4: 7ECC71A6
	v_mov_b64_e32 v[104:105], v[168:169]                       // 0000000076B8: 7ED071A8
	v_mov_b64_e32 v[106:107], v[170:171]                       // 0000000076BC: 7ED471AA
	v_mov_b64_e32 v[108:109], v[172:173]                       // 0000000076C0: 7ED871AC
	v_mov_b64_e32 v[110:111], v[174:175]                       // 0000000076C4: 7EDC71AE
	s_waitcnt lgkmcnt(0)                                       // 0000000076C8: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[82:89], v[200:207], v[144:159]// 0000000076CC: D3AE0090 06439152
	s_nop 15                                                   // 0000000076D4: BF80000F
	s_nop 3                                                    // 0000000076D8: BF800003
	v_mov_b64_e32 v[80:81], v[144:145]                         // 0000000076DC: 7EA07190
	v_mov_b64_e32 v[82:83], v[146:147]                         // 0000000076E0: 7EA47192
	v_mov_b64_e32 v[84:85], v[148:149]                         // 0000000076E4: 7EA87194
	v_mov_b64_e32 v[86:87], v[150:151]                         // 0000000076E8: 7EAC7196
	v_mov_b64_e32 v[88:89], v[152:153]                         // 0000000076EC: 7EB07198
	v_mov_b64_e32 v[90:91], v[154:155]                         // 0000000076F0: 7EB4719A
	v_mov_b64_e32 v[92:93], v[156:157]                         // 0000000076F4: 7EB8719C
	v_mov_b64_e32 v[94:95], v[158:159]                         // 0000000076F8: 7EBC719E
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[112:119], v[200:207], v[128:143]// 0000000076FC: D3AE0080 06039170
	s_nop 15                                                   // 000000007704: BF80000F
	s_nop 3                                                    // 000000007708: BF800003
	v_mov_b64_e32 v[64:65], v[128:129]                         // 00000000770C: 7E807180
	v_mov_b64_e32 v[66:67], v[130:131]                         // 000000007710: 7E847182
	v_mov_b64_e32 v[68:69], v[132:133]                         // 000000007714: 7E887184
	v_mov_b64_e32 v[70:71], v[134:135]                         // 000000007718: 7E8C7186
	v_mov_b64_e32 v[72:73], v[136:137]                         // 00000000771C: 7E907188
	v_mov_b64_e32 v[74:75], v[138:139]                         // 000000007720: 7E94718A
	v_mov_b64_e32 v[76:77], v[140:141]                         // 000000007724: 7E98718C
	v_mov_b64_e32 v[78:79], v[142:143]                         // 000000007728: 7E9C718E
	s_lshl_b32 s18, s43, 7                                     // 00000000772C: 8E12872B
	s_add_u32 s20, s18, 0x80                                   // 000000007730: 8014FF12 00000080
	s_sub_u32 s18, s3, s20                                     // 000000007738: 80921403
	s_sub_i32 s18, s18, 0                                      // 00000000773C: 81928012
	s_cmp_ge_i32 s18, 32                                       // 000000007740: BF03A012
	v_mov_b64_e32 v[112:113], v[176:177]                       // 000000007744: 7EE071B0
	v_mov_b64_e32 v[114:115], v[178:179]                       // 000000007748: 7EE471B2
	v_mov_b64_e32 v[116:117], v[180:181]                       // 00000000774C: 7EE871B4
	v_mov_b64_e32 v[118:119], v[182:183]                       // 000000007750: 7EEC71B6
	v_mov_b64_e32 v[120:121], v[184:185]                       // 000000007754: 7EF071B8
	v_mov_b64_e32 v[122:123], v[186:187]                       // 000000007758: 7EF471BA
	v_mov_b64_e32 v[124:125], v[188:189]                       // 00000000775C: 7EF871BC
	v_mov_b64_e32 v[126:127], v[190:191]                       // 000000007760: 7EFC71BE
	s_cbranch_scc1 90                                          // 000000007764: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5dd0>
	s_mov_b32 s53, s52                                         // 000000007768: BEB50034
	s_mov_b32 s54, s52                                         // 00000000776C: BEB60034
	s_mov_b32 s55, s52                                         // 000000007770: BEB70034
	s_mov_b32 s56, s52                                         // 000000007774: BEB80034
	s_mov_b32 s57, s52                                         // 000000007778: BEB90034
	s_mov_b32 s58, s52                                         // 00000000777C: BEBA0034
	s_mov_b32 s59, s52                                         // 000000007780: BEBB0034
	s_mov_b32 s60, s52                                         // 000000007784: BEBC0034
	s_mov_b32 s61, s52                                         // 000000007788: BEBD0034
	s_mov_b32 s62, s52                                         // 00000000778C: BEBE0034
	s_mov_b32 s63, s52                                         // 000000007790: BEBF0034
	s_mov_b32 s64, s52                                         // 000000007794: BEC00034
	s_mov_b32 s65, s52                                         // 000000007798: BEC10034
	s_mov_b32 s66, s52                                         // 00000000779C: BEC20034
	s_mov_b32 s67, s52                                         // 0000000077A0: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 0000000077A4: BF048012
	v_mov_b64_e32 v[126:127], s[66:67]                         // 0000000077A8: 7EFC7042
	v_mov_b64_e32 v[124:125], s[64:65]                         // 0000000077AC: 7EF87040
	v_mov_b64_e32 v[122:123], s[62:63]                         // 0000000077B0: 7EF4703E
	v_mov_b64_e32 v[120:121], s[60:61]                         // 0000000077B4: 7EF0703C
	v_mov_b64_e32 v[118:119], s[58:59]                         // 0000000077B8: 7EEC703A
	v_mov_b64_e32 v[116:117], s[56:57]                         // 0000000077BC: 7EE87038
	v_mov_b64_e32 v[114:115], s[54:55]                         // 0000000077C0: 7EE47036
	v_mov_b64_e32 v[112:113], s[52:53]                         // 0000000077C4: 7EE07034
	s_cbranch_scc1 65                                          // 0000000077C8: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5dd0>
	v_add_u32_e32 v127, s18, v243                              // 0000000077CC: 68FFE612
	v_cmp_gt_i32_e32 vcc, 0, v127                              // 0000000077D0: 7D88FE80
	s_nop 1                                                    // 0000000077D4: BF800001
	v_cndmask_b32_e64 v112, v176, v240, vcc                    // 0000000077D8: D1000070 01ABE1B0
	v_cmp_gt_i32_e32 vcc, 1, v127                              // 0000000077E0: 7D88FE81
	s_nop 1                                                    // 0000000077E4: BF800001
	v_cndmask_b32_e64 v113, v177, v240, vcc                    // 0000000077E8: D1000071 01ABE1B1
	v_cmp_gt_i32_e32 vcc, 2, v127                              // 0000000077F0: 7D88FE82
	s_nop 1                                                    // 0000000077F4: BF800001
	v_cndmask_b32_e64 v114, v178, v240, vcc                    // 0000000077F8: D1000072 01ABE1B2
	v_cmp_gt_i32_e32 vcc, 3, v127                              // 000000007800: 7D88FE83
	s_nop 1                                                    // 000000007804: BF800001
	v_cndmask_b32_e64 v115, v179, v240, vcc                    // 000000007808: D1000073 01ABE1B3
	v_cmp_gt_i32_e32 vcc, 8, v127                              // 000000007810: 7D88FE88
	s_nop 1                                                    // 000000007814: BF800001
	v_cndmask_b32_e64 v116, v180, v240, vcc                    // 000000007818: D1000074 01ABE1B4
	v_cmp_gt_i32_e32 vcc, 9, v127                              // 000000007820: 7D88FE89
	s_nop 1                                                    // 000000007824: BF800001
	v_cndmask_b32_e64 v117, v181, v240, vcc                    // 000000007828: D1000075 01ABE1B5
	v_cmp_gt_i32_e32 vcc, 10, v127                             // 000000007830: 7D88FE8A
	s_nop 1                                                    // 000000007834: BF800001
	v_cndmask_b32_e64 v118, v182, v240, vcc                    // 000000007838: D1000076 01ABE1B6
	v_cmp_gt_i32_e32 vcc, 11, v127                             // 000000007840: 7D88FE8B
	s_nop 1                                                    // 000000007844: BF800001
	v_cndmask_b32_e64 v119, v183, v240, vcc                    // 000000007848: D1000077 01ABE1B7
	v_cmp_gt_i32_e32 vcc, 16, v127                             // 000000007850: 7D88FE90
	s_nop 1                                                    // 000000007854: BF800001
	v_cndmask_b32_e64 v120, v184, v240, vcc                    // 000000007858: D1000078 01ABE1B8
	v_cmp_gt_i32_e32 vcc, 17, v127                             // 000000007860: 7D88FE91
	s_nop 1                                                    // 000000007864: BF800001
	v_cndmask_b32_e64 v121, v185, v240, vcc                    // 000000007868: D1000079 01ABE1B9
	v_cmp_gt_i32_e32 vcc, 18, v127                             // 000000007870: 7D88FE92
	s_nop 1                                                    // 000000007874: BF800001
	v_cndmask_b32_e64 v122, v186, v240, vcc                    // 000000007878: D100007A 01ABE1BA
	v_cmp_gt_i32_e32 vcc, 19, v127                             // 000000007880: 7D88FE93
	s_nop 1                                                    // 000000007884: BF800001
	v_cndmask_b32_e64 v123, v187, v240, vcc                    // 000000007888: D100007B 01ABE1BB
	v_cmp_gt_i32_e32 vcc, 24, v127                             // 000000007890: 7D88FE98
	s_nop 1                                                    // 000000007894: BF800001
	v_cndmask_b32_e64 v124, v188, v240, vcc                    // 000000007898: D100007C 01ABE1BC
	v_cmp_gt_i32_e32 vcc, 25, v127                             // 0000000078A0: 7D88FE99
	s_nop 1                                                    // 0000000078A4: BF800001
	v_cndmask_b32_e64 v125, v189, v240, vcc                    // 0000000078A8: D100007D 01ABE1BD
	v_cmp_gt_i32_e32 vcc, 26, v127                             // 0000000078B0: 7D88FE9A
	s_nop 1                                                    // 0000000078B4: BF800001
	v_cndmask_b32_e64 v126, v190, v240, vcc                    // 0000000078B8: D100007E 01ABE1BE
	v_cmp_gt_i32_e32 vcc, 27, v127                             // 0000000078C0: 7D88FE9B
	s_nop 1                                                    // 0000000078C4: BF800001
	v_cndmask_b32_e64 v127, v191, v240, vcc                    // 0000000078C8: D100007F 01ABE1BF
	s_sub_u32 s18, s3, s20                                     // 0000000078D0: 80921403
	s_sub_i32 s18, s18, 32                                     // 0000000078D4: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 0000000078D8: BF03A012
	s_cbranch_scc1 90                                          // 0000000078DC: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5f48>
	s_mov_b32 s53, s52                                         // 0000000078E0: BEB50034
	s_mov_b32 s54, s52                                         // 0000000078E4: BEB60034
	s_mov_b32 s55, s52                                         // 0000000078E8: BEB70034
	s_mov_b32 s56, s52                                         // 0000000078EC: BEB80034
	s_mov_b32 s57, s52                                         // 0000000078F0: BEB90034
	s_mov_b32 s58, s52                                         // 0000000078F4: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000078F8: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000078FC: BEBC0034
	s_mov_b32 s61, s52                                         // 000000007900: BEBD0034
	s_mov_b32 s62, s52                                         // 000000007904: BEBE0034
	s_mov_b32 s63, s52                                         // 000000007908: BEBF0034
	s_mov_b32 s64, s52                                         // 00000000790C: BEC00034
	s_mov_b32 s65, s52                                         // 000000007910: BEC10034
	s_mov_b32 s66, s52                                         // 000000007914: BEC20034
	s_mov_b32 s67, s52                                         // 000000007918: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 00000000791C: BF048012
	v_mov_b64_e32 v[110:111], s[66:67]                         // 000000007920: 7EDC7042
	v_mov_b64_e32 v[108:109], s[64:65]                         // 000000007924: 7ED87040
	v_mov_b64_e32 v[106:107], s[62:63]                         // 000000007928: 7ED4703E
	v_mov_b64_e32 v[104:105], s[60:61]                         // 00000000792C: 7ED0703C
	v_mov_b64_e32 v[102:103], s[58:59]                         // 000000007930: 7ECC703A
	v_mov_b64_e32 v[100:101], s[56:57]                         // 000000007934: 7EC87038
	v_mov_b64_e32 v[98:99], s[54:55]                           // 000000007938: 7EC47036
	v_mov_b64_e32 v[96:97], s[52:53]                           // 00000000793C: 7EC07034
	s_cbranch_scc1 65                                          // 000000007940: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5f48>
	v_add_u32_e32 v111, s18, v243                              // 000000007944: 68DFE612
	v_cmp_gt_i32_e32 vcc, 0, v111                              // 000000007948: 7D88DE80
	s_nop 1                                                    // 00000000794C: BF800001
	v_cndmask_b32_e64 v96, v160, v240, vcc                     // 000000007950: D1000060 01ABE1A0
	v_cmp_gt_i32_e32 vcc, 1, v111                              // 000000007958: 7D88DE81
	s_nop 1                                                    // 00000000795C: BF800001
	v_cndmask_b32_e64 v97, v161, v240, vcc                     // 000000007960: D1000061 01ABE1A1
	v_cmp_gt_i32_e32 vcc, 2, v111                              // 000000007968: 7D88DE82
	s_nop 1                                                    // 00000000796C: BF800001
	v_cndmask_b32_e64 v98, v162, v240, vcc                     // 000000007970: D1000062 01ABE1A2
	v_cmp_gt_i32_e32 vcc, 3, v111                              // 000000007978: 7D88DE83
	s_nop 1                                                    // 00000000797C: BF800001
	v_cndmask_b32_e64 v99, v163, v240, vcc                     // 000000007980: D1000063 01ABE1A3
	v_cmp_gt_i32_e32 vcc, 8, v111                              // 000000007988: 7D88DE88
	s_nop 1                                                    // 00000000798C: BF800001
	v_cndmask_b32_e64 v100, v164, v240, vcc                    // 000000007990: D1000064 01ABE1A4
	v_cmp_gt_i32_e32 vcc, 9, v111                              // 000000007998: 7D88DE89
	s_nop 1                                                    // 00000000799C: BF800001
	v_cndmask_b32_e64 v101, v165, v240, vcc                    // 0000000079A0: D1000065 01ABE1A5
	v_cmp_gt_i32_e32 vcc, 10, v111                             // 0000000079A8: 7D88DE8A
	s_nop 1                                                    // 0000000079AC: BF800001
	v_cndmask_b32_e64 v102, v166, v240, vcc                    // 0000000079B0: D1000066 01ABE1A6
	v_cmp_gt_i32_e32 vcc, 11, v111                             // 0000000079B8: 7D88DE8B
	s_nop 1                                                    // 0000000079BC: BF800001
	v_cndmask_b32_e64 v103, v167, v240, vcc                    // 0000000079C0: D1000067 01ABE1A7
	v_cmp_gt_i32_e32 vcc, 16, v111                             // 0000000079C8: 7D88DE90
	s_nop 1                                                    // 0000000079CC: BF800001
	v_cndmask_b32_e64 v104, v168, v240, vcc                    // 0000000079D0: D1000068 01ABE1A8
	v_cmp_gt_i32_e32 vcc, 17, v111                             // 0000000079D8: 7D88DE91
	s_nop 1                                                    // 0000000079DC: BF800001
	v_cndmask_b32_e64 v105, v169, v240, vcc                    // 0000000079E0: D1000069 01ABE1A9
	v_cmp_gt_i32_e32 vcc, 18, v111                             // 0000000079E8: 7D88DE92
	s_nop 1                                                    // 0000000079EC: BF800001
	v_cndmask_b32_e64 v106, v170, v240, vcc                    // 0000000079F0: D100006A 01ABE1AA
	v_cmp_gt_i32_e32 vcc, 19, v111                             // 0000000079F8: 7D88DE93
	s_nop 1                                                    // 0000000079FC: BF800001
	v_cndmask_b32_e64 v107, v171, v240, vcc                    // 000000007A00: D100006B 01ABE1AB
	v_cmp_gt_i32_e32 vcc, 24, v111                             // 000000007A08: 7D88DE98
	s_nop 1                                                    // 000000007A0C: BF800001
	v_cndmask_b32_e64 v108, v172, v240, vcc                    // 000000007A10: D100006C 01ABE1AC
	v_cmp_gt_i32_e32 vcc, 25, v111                             // 000000007A18: 7D88DE99
	s_nop 1                                                    // 000000007A1C: BF800001
	v_cndmask_b32_e64 v109, v173, v240, vcc                    // 000000007A20: D100006D 01ABE1AD
	v_cmp_gt_i32_e32 vcc, 26, v111                             // 000000007A28: 7D88DE9A
	s_nop 1                                                    // 000000007A2C: BF800001
	v_cndmask_b32_e64 v110, v174, v240, vcc                    // 000000007A30: D100006E 01ABE1AE
	v_cmp_gt_i32_e32 vcc, 27, v111                             // 000000007A38: 7D88DE9B
	s_nop 1                                                    // 000000007A3C: BF800001
	v_cndmask_b32_e64 v111, v175, v240, vcc                    // 000000007A40: D100006F 01ABE1AF
	s_sub_u32 s18, s3, s20                                     // 000000007A48: 80921403
	s_sub_i32 s18, s18, 64                                     // 000000007A4C: 8192C012
	scratch_load_dwordx4 v[164:167], off, off                  // 000000007A50: DC5C4000 A47F0000
	scratch_load_dwordx4 v[168:171], off, off offset:16        // 000000007A58: DC5C4010 A87F0000
	s_cmp_ge_i32 s18, 32                                       // 000000007A60: BF03A012
	s_cbranch_scc1 90                                          // 000000007A64: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x60d0>
	s_mov_b32 s53, s52                                         // 000000007A68: BEB50034
	s_mov_b32 s54, s52                                         // 000000007A6C: BEB60034
	s_mov_b32 s55, s52                                         // 000000007A70: BEB70034
	s_mov_b32 s56, s52                                         // 000000007A74: BEB80034
	s_mov_b32 s57, s52                                         // 000000007A78: BEB90034
	s_mov_b32 s58, s52                                         // 000000007A7C: BEBA0034
	s_mov_b32 s59, s52                                         // 000000007A80: BEBB0034
	s_mov_b32 s60, s52                                         // 000000007A84: BEBC0034
	s_mov_b32 s61, s52                                         // 000000007A88: BEBD0034
	s_mov_b32 s62, s52                                         // 000000007A8C: BEBE0034
	s_mov_b32 s63, s52                                         // 000000007A90: BEBF0034
	s_mov_b32 s64, s52                                         // 000000007A94: BEC00034
	s_mov_b32 s65, s52                                         // 000000007A98: BEC10034
	s_mov_b32 s66, s52                                         // 000000007A9C: BEC20034
	s_mov_b32 s67, s52                                         // 000000007AA0: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000007AA4: BF048012
	v_mov_b64_e32 v[94:95], s[66:67]                           // 000000007AA8: 7EBC7042
	v_mov_b64_e32 v[92:93], s[64:65]                           // 000000007AAC: 7EB87040
	v_mov_b64_e32 v[90:91], s[62:63]                           // 000000007AB0: 7EB4703E
	v_mov_b64_e32 v[88:89], s[60:61]                           // 000000007AB4: 7EB0703C
	v_mov_b64_e32 v[86:87], s[58:59]                           // 000000007AB8: 7EAC703A
	v_mov_b64_e32 v[84:85], s[56:57]                           // 000000007ABC: 7EA87038
	v_mov_b64_e32 v[82:83], s[54:55]                           // 000000007AC0: 7EA47036
	v_mov_b64_e32 v[80:81], s[52:53]                           // 000000007AC4: 7EA07034
	s_cbranch_scc1 65                                          // 000000007AC8: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x60d0>
	v_add_u32_e32 v95, s18, v243                               // 000000007ACC: 68BFE612
	v_cmp_gt_i32_e32 vcc, 0, v95                               // 000000007AD0: 7D88BE80
	s_nop 1                                                    // 000000007AD4: BF800001
	v_cndmask_b32_e64 v80, v144, v240, vcc                     // 000000007AD8: D1000050 01ABE190
	v_cmp_gt_i32_e32 vcc, 1, v95                               // 000000007AE0: 7D88BE81
	s_nop 1                                                    // 000000007AE4: BF800001
	v_cndmask_b32_e64 v81, v145, v240, vcc                     // 000000007AE8: D1000051 01ABE191
	v_cmp_gt_i32_e32 vcc, 2, v95                               // 000000007AF0: 7D88BE82
	s_nop 1                                                    // 000000007AF4: BF800001
	v_cndmask_b32_e64 v82, v146, v240, vcc                     // 000000007AF8: D1000052 01ABE192
	v_cmp_gt_i32_e32 vcc, 3, v95                               // 000000007B00: 7D88BE83
	s_nop 1                                                    // 000000007B04: BF800001
	v_cndmask_b32_e64 v83, v147, v240, vcc                     // 000000007B08: D1000053 01ABE193
	v_cmp_gt_i32_e32 vcc, 8, v95                               // 000000007B10: 7D88BE88
	s_nop 1                                                    // 000000007B14: BF800001
	v_cndmask_b32_e64 v84, v148, v240, vcc                     // 000000007B18: D1000054 01ABE194
	v_cmp_gt_i32_e32 vcc, 9, v95                               // 000000007B20: 7D88BE89
	s_nop 1                                                    // 000000007B24: BF800001
	v_cndmask_b32_e64 v85, v149, v240, vcc                     // 000000007B28: D1000055 01ABE195
	v_cmp_gt_i32_e32 vcc, 10, v95                              // 000000007B30: 7D88BE8A
	s_nop 1                                                    // 000000007B34: BF800001
	v_cndmask_b32_e64 v86, v150, v240, vcc                     // 000000007B38: D1000056 01ABE196
	v_cmp_gt_i32_e32 vcc, 11, v95                              // 000000007B40: 7D88BE8B
	s_nop 1                                                    // 000000007B44: BF800001
	v_cndmask_b32_e64 v87, v151, v240, vcc                     // 000000007B48: D1000057 01ABE197
	v_cmp_gt_i32_e32 vcc, 16, v95                              // 000000007B50: 7D88BE90
	s_nop 1                                                    // 000000007B54: BF800001
	v_cndmask_b32_e64 v88, v152, v240, vcc                     // 000000007B58: D1000058 01ABE198
	v_cmp_gt_i32_e32 vcc, 17, v95                              // 000000007B60: 7D88BE91
	s_nop 1                                                    // 000000007B64: BF800001
	v_cndmask_b32_e64 v89, v153, v240, vcc                     // 000000007B68: D1000059 01ABE199
	v_cmp_gt_i32_e32 vcc, 18, v95                              // 000000007B70: 7D88BE92
	s_nop 1                                                    // 000000007B74: BF800001
	v_cndmask_b32_e64 v90, v154, v240, vcc                     // 000000007B78: D100005A 01ABE19A
	v_cmp_gt_i32_e32 vcc, 19, v95                              // 000000007B80: 7D88BE93
	s_nop 1                                                    // 000000007B84: BF800001
	v_cndmask_b32_e64 v91, v155, v240, vcc                     // 000000007B88: D100005B 01ABE19B
	v_cmp_gt_i32_e32 vcc, 24, v95                              // 000000007B90: 7D88BE98
	s_nop 1                                                    // 000000007B94: BF800001
	v_cndmask_b32_e64 v92, v156, v240, vcc                     // 000000007B98: D100005C 01ABE19C
	v_cmp_gt_i32_e32 vcc, 25, v95                              // 000000007BA0: 7D88BE99
	s_nop 1                                                    // 000000007BA4: BF800001
	v_cndmask_b32_e64 v93, v157, v240, vcc                     // 000000007BA8: D100005D 01ABE19D
	v_cmp_gt_i32_e32 vcc, 26, v95                              // 000000007BB0: 7D88BE9A
	s_nop 1                                                    // 000000007BB4: BF800001
	v_cndmask_b32_e64 v94, v158, v240, vcc                     // 000000007BB8: D100005E 01ABE19E
	v_cmp_gt_i32_e32 vcc, 27, v95                              // 000000007BC0: 7D88BE9B
	s_nop 1                                                    // 000000007BC4: BF800001
	v_cndmask_b32_e64 v95, v159, v240, vcc                     // 000000007BC8: D100005F 01ABE19F
	s_sub_u32 s18, s3, s20                                     // 000000007BD0: 80921403
	s_sub_i32 s18, s18, 0x60                                   // 000000007BD4: 8192FF12 00000060
	s_cmp_ge_i32 s18, 32                                       // 000000007BDC: BF03A012
	s_cbranch_scc1 90                                          // 000000007BE0: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x624c>
	s_mov_b32 s53, s52                                         // 000000007BE4: BEB50034
	s_mov_b32 s54, s52                                         // 000000007BE8: BEB60034
	s_mov_b32 s55, s52                                         // 000000007BEC: BEB70034
	s_mov_b32 s56, s52                                         // 000000007BF0: BEB80034
	s_mov_b32 s57, s52                                         // 000000007BF4: BEB90034
	s_mov_b32 s58, s52                                         // 000000007BF8: BEBA0034
	s_mov_b32 s59, s52                                         // 000000007BFC: BEBB0034
	s_mov_b32 s60, s52                                         // 000000007C00: BEBC0034
	s_mov_b32 s61, s52                                         // 000000007C04: BEBD0034
	s_mov_b32 s62, s52                                         // 000000007C08: BEBE0034
	s_mov_b32 s63, s52                                         // 000000007C0C: BEBF0034
	s_mov_b32 s64, s52                                         // 000000007C10: BEC00034
	s_mov_b32 s65, s52                                         // 000000007C14: BEC10034
	s_mov_b32 s66, s52                                         // 000000007C18: BEC20034
	s_mov_b32 s67, s52                                         // 000000007C1C: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000007C20: BF048012
	v_mov_b64_e32 v[78:79], s[66:67]                           // 000000007C24: 7E9C7042
	v_mov_b64_e32 v[76:77], s[64:65]                           // 000000007C28: 7E987040
	v_mov_b64_e32 v[74:75], s[62:63]                           // 000000007C2C: 7E94703E
	v_mov_b64_e32 v[72:73], s[60:61]                           // 000000007C30: 7E90703C
	v_mov_b64_e32 v[70:71], s[58:59]                           // 000000007C34: 7E8C703A
	v_mov_b64_e32 v[68:69], s[56:57]                           // 000000007C38: 7E887038
	v_mov_b64_e32 v[66:67], s[54:55]                           // 000000007C3C: 7E847036
	v_mov_b64_e32 v[64:65], s[52:53]                           // 000000007C40: 7E807034
	s_cbranch_scc1 65                                          // 000000007C44: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x624c>
	v_add_u32_e32 v79, s18, v243                               // 000000007C48: 689FE612
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 000000007C4C: 7D889E80
	s_nop 1                                                    // 000000007C50: BF800001
	v_cndmask_b32_e64 v64, v128, v240, vcc                     // 000000007C54: D1000040 01ABE180
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 000000007C5C: 7D889E81
	s_nop 1                                                    // 000000007C60: BF800001
	v_cndmask_b32_e64 v65, v129, v240, vcc                     // 000000007C64: D1000041 01ABE181
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 000000007C6C: 7D889E82
	s_nop 1                                                    // 000000007C70: BF800001
	v_cndmask_b32_e64 v66, v130, v240, vcc                     // 000000007C74: D1000042 01ABE182
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 000000007C7C: 7D889E83
	s_nop 1                                                    // 000000007C80: BF800001
	v_cndmask_b32_e64 v67, v131, v240, vcc                     // 000000007C84: D1000043 01ABE183
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 000000007C8C: 7D889E88
	s_nop 1                                                    // 000000007C90: BF800001
	v_cndmask_b32_e64 v68, v132, v240, vcc                     // 000000007C94: D1000044 01ABE184
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 000000007C9C: 7D889E89
	s_nop 1                                                    // 000000007CA0: BF800001
	v_cndmask_b32_e64 v69, v133, v240, vcc                     // 000000007CA4: D1000045 01ABE185
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 000000007CAC: 7D889E8A
	s_nop 1                                                    // 000000007CB0: BF800001
	v_cndmask_b32_e64 v70, v134, v240, vcc                     // 000000007CB4: D1000046 01ABE186
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 000000007CBC: 7D889E8B
	s_nop 1                                                    // 000000007CC0: BF800001
	v_cndmask_b32_e64 v71, v135, v240, vcc                     // 000000007CC4: D1000047 01ABE187
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 000000007CCC: 7D889E90
	s_nop 1                                                    // 000000007CD0: BF800001
	v_cndmask_b32_e64 v72, v136, v240, vcc                     // 000000007CD4: D1000048 01ABE188
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 000000007CDC: 7D889E91
	s_nop 1                                                    // 000000007CE0: BF800001
	v_cndmask_b32_e64 v73, v137, v240, vcc                     // 000000007CE4: D1000049 01ABE189
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 000000007CEC: 7D889E92
	s_nop 1                                                    // 000000007CF0: BF800001
	v_cndmask_b32_e64 v74, v138, v240, vcc                     // 000000007CF4: D100004A 01ABE18A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 000000007CFC: 7D889E93
	s_nop 1                                                    // 000000007D00: BF800001
	v_cndmask_b32_e64 v75, v139, v240, vcc                     // 000000007D04: D100004B 01ABE18B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 000000007D0C: 7D889E98
	s_nop 1                                                    // 000000007D10: BF800001
	v_cndmask_b32_e64 v76, v140, v240, vcc                     // 000000007D14: D100004C 01ABE18C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 000000007D1C: 7D889E99
	s_nop 1                                                    // 000000007D20: BF800001
	v_cndmask_b32_e64 v77, v141, v240, vcc                     // 000000007D24: D100004D 01ABE18D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 000000007D2C: 7D889E9A
	s_nop 1                                                    // 000000007D30: BF800001
	v_cndmask_b32_e64 v78, v142, v240, vcc                     // 000000007D34: D100004E 01ABE18E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 000000007D3C: 7D889E9B
	s_nop 1                                                    // 000000007D40: BF800001
	v_cndmask_b32_e64 v79, v143, v240, vcc                     // 000000007D44: D100004F 01ABE18F
	v_max_f32_e32 v128, v112, v113                             // 000000007D4C: 1700E370
	v_max3_f32 v128, v114, v115, v128                          // 000000007D50: D1D30080 0602E772
	v_max3_f32 v128, v116, v117, v128                          // 000000007D58: D1D30080 0602EB74
	v_max3_f32 v128, v118, v119, v128                          // 000000007D60: D1D30080 0602EF76
	v_max3_f32 v128, v120, v121, v128                          // 000000007D68: D1D30080 0602F378
	v_max3_f32 v128, v122, v123, v128                          // 000000007D70: D1D30080 0602F77A
	v_max3_f32 v128, v124, v125, v128                          // 000000007D78: D1D30080 0602FB7C
	v_max3_f32 v129, v126, v127, v128                          // 000000007D80: D1D30081 0602FF7E
	v_max_f32_e32 v128, v96, v97                               // 000000007D88: 1700C360
	v_max3_f32 v128, v98, v99, v128                            // 000000007D8C: D1D30080 0602C762
	v_max3_f32 v128, v100, v101, v128                          // 000000007D94: D1D30080 0602CB64
	v_max3_f32 v128, v102, v103, v128                          // 000000007D9C: D1D30080 0602CF66
	v_max3_f32 v128, v104, v105, v128                          // 000000007DA4: D1D30080 0602D368
	v_max3_f32 v128, v106, v107, v128                          // 000000007DAC: D1D30080 0602D76A
	v_max3_f32 v128, v108, v109, v128                          // 000000007DB4: D1D30080 0602DB6C
	v_max3_f32 v130, v110, v111, v128                          // 000000007DBC: D1D30082 0602DF6E
	v_max_f32_e32 v128, v80, v81                               // 000000007DC4: 1700A350
	v_max3_f32 v128, v82, v83, v128                            // 000000007DC8: D1D30080 0602A752
	v_max3_f32 v128, v84, v85, v128                            // 000000007DD0: D1D30080 0602AB54
	v_max3_f32 v128, v86, v87, v128                            // 000000007DD8: D1D30080 0602AF56
	v_max3_f32 v128, v88, v89, v128                            // 000000007DE0: D1D30080 0602B358
	v_max3_f32 v128, v90, v91, v128                            // 000000007DE8: D1D30080 0602B75A
	v_max3_f32 v128, v92, v93, v128                            // 000000007DF0: D1D30080 0602BB5C
	v_max3_f32 v128, v94, v95, v128                            // 000000007DF8: D1D30080 0602BF5E
	v_max_f32_e32 v131, v64, v65                               // 000000007E00: 17068340
	v_max3_f32 v131, v66, v67, v131                            // 000000007E04: D1D30083 060E8742
	v_max3_f32 v131, v68, v69, v131                            // 000000007E0C: D1D30083 060E8B44
	v_max3_f32 v131, v70, v71, v131                            // 000000007E14: D1D30083 060E8F46
	v_max3_f32 v131, v72, v73, v131                            // 000000007E1C: D1D30083 060E9348
	v_max3_f32 v131, v74, v75, v131                            // 000000007E24: D1D30083 060E974A
	v_max3_f32 v131, v76, v77, v131                            // 000000007E2C: D1D30083 060E9B4C
	v_max3_f32 v131, v78, v79, v131                            // 000000007E34: D1D30083 060E9F4E
	v_max_f32_e32 v128, v128, v131                             // 000000007E3C: 17010780
	v_max_f32_e32 v130, v129, v130                             // 000000007E40: 17050581
	v_mov_b32_e32 v131, v130                                   // 000000007E44: 7F060382
	s_nop 1                                                    // 000000007E48: BF800001
	v_permlane32_swap_b32_e32 v130, v131                       // 000000007E4C: 7F04B583
	v_mov_b32_e32 v129, v128                                   // 000000007E50: 7F020380
	s_nop 1                                                    // 000000007E54: BF800001
	v_permlane32_swap_b32_e32 v128, v129                       // 000000007E58: 7F00B581
	v_max_f32_e32 v128, v128, v129                             // 000000007E5C: 17010380
	v_max_f32_e32 v130, v130, v131                             // 000000007E60: 17050782
	v_max_f32_e32 v129, v130, v128                             // 000000007E64: 17030182
	v_mul_f32_e32 v129, v238, v129                             // 000000007E68: 0B0303EE
	v_max_f32_e32 v129, v252, v129                             // 000000007E6C: 170303FC
	v_sub_f32_e32 v131, v129, v252                             // 000000007E70: 0507F981
	v_cmp_lt_f32_e32 vcc, s48, v131                            // 000000007E74: 7C830630
	s_cmp_lg_u64 vcc, 0                                        // 000000007E78: BF13806A
	s_cselect_b32 s18, 1, 0                                    // 000000007E7C: 85128081
	s_cselect_b64 s[18:19], -1, 0                              // 000000007E80: 859280C1
	v_cndmask_b32_e64 v129, v252, v129, s[18:19]               // 000000007E84: D1000081 004B03FC
	v_fma_f32 v130, v130, v238, -v129                          // 000000007E8C: D1CB0082 8607DD82
	v_floor_f32_e32 v130, v130                                 // 000000007E94: 7F043F82
	v_med3_f32 v132, v130, s98, 0                              // 000000007E98: D1D60084 0200C582
	v_cvt_i32_f32_e32 v130, v132                               // 000000007EA0: 7F041184
	v_add_u32_e32 v130, 0x7f, v130                             // 000000007EA4: 690504FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v130                           // 000000007EAC: 25350497
	v_fma_f32 v128, v128, v238, -v129                          // 000000007EB0: D1CB0080 8607DD80
	v_floor_f32_e32 v128, v128                                 // 000000007EB8: 7F003F80
	v_med3_f32 v128, v128, s98, 0                              // 000000007EBC: D1D60080 0200C580
	v_cvt_i32_f32_e32 v131, v128                               // 000000007EC4: 7F061180
	v_add_u32_e32 v131, 0x7f, v131                             // 000000007EC8: 690706FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v131                           // 000000007ED0: 25370697
	v_mov_b32_e32 v133, s50                                    // 000000007ED4: 7F0A0232
	v_fma_f32 v133, v129, s99, v133                            // 000000007ED8: D1CB0085 0614C781
	v_fma_f32 v152, v132, s99, v133                            // 000000007EE0: D1CB0098 0614C784
	v_fma_f32 v150, v128, s99, v133                            // 000000007EE8: D1CB0096 0614C780
	s_lshl_b32 s17, s17, 14                                    // 000000007EF0: 8E118E11
	s_add_u32 s18, s92, s17                                    // 000000007EF4: 8012115C
	v_add3_u32 v128, s18, v245, v244                           // 000000007EF8: D1FF0080 07D3EA12
	s_waitcnt vmcnt(2)                                         // 000000007F00: BF8C0F72
	ds_read_b64_tr_b8 v[132:133], v128                         // 000000007F04: D9C40000 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:1024             // 000000007F0C: D9C40400 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:2048             // 000000007F14: D9C40800 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:3072             // 000000007F1C: D9C40C00 8A000080
	s_add_u32 s18, s92, s17                                    // 000000007F24: 8012115C
	v_add3_u32 v128, s18, v245, v244                           // 000000007F28: D1FF0080 07D3EA12
	ds_read_b64_tr_b8 v[140:141], v128 offset:256              // 000000007F30: D9C40100 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:1280             // 000000007F38: D9C40500 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:2304             // 000000007F40: D9C40900 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:3328             // 000000007F48: D9C40D00 92000080
	s_add_u32 s18, s92, s17                                    // 000000007F50: 8012115C
	v_add3_u32 v128, s18, v245, v244                           // 000000007F54: D1FF0080 07D3EA12
	ds_read_b64_tr_b8 v[156:157], v128 offset:512              // 000000007F5C: D9C40200 9C000080
	ds_read_b64_tr_b8 v[158:159], v128 offset:1536             // 000000007F64: D9C40600 9E000080
	ds_read_b64_tr_b8 v[160:161], v128 offset:2560             // 000000007F6C: D9C40A00 A0000080
	ds_read_b64_tr_b8 v[162:163], v128 offset:3584             // 000000007F74: D9C40E00 A2000080
	s_waitcnt lgkmcnt(4)                                       // 000000007F7C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[132:139], v[208:215], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000007F80: D3AC0000 0003F7F2 D3AE0830 04C3A184
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[140:147], v[208:215], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000007F90: D3AC0000 0003F7F2 D3AE0820 0483A18C
	s_add_u32 s18, s92, s17                                    // 000000007FA0: 8012115C
	v_add3_u32 v128, s18, v245, v244                           // 000000007FA4: D1FF0080 07D3EA12
	ds_read_b64_tr_b8 v[132:133], v128 offset:768              // 000000007FAC: D9C40300 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:1792             // 000000007FB4: D9C40700 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:2816             // 000000007FBC: D9C40B00 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:3840             // 000000007FC4: D9C40F00 8A000080
	s_add_u32 s18, s92, s17                                    // 000000007FCC: 8012115C
	v_add3_u32 v128, s18, v245, v244                           // 000000007FD0: D1FF0080 07D3EA12
	ds_read_b64_tr_b8 v[140:141], v128 offset:4096             // 000000007FD8: D9C41000 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:5120             // 000000007FE0: D9C41400 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:6144             // 000000007FE8: D9C41800 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:7168             // 000000007FF0: D9C41C00 92000080
	s_waitcnt lgkmcnt(4)                                       // 000000007FF8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[156:163], v[208:215], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000007FFC: D3AC0000 0003F7F2 D3AE0810 0443A19C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[132:139], v[208:215], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 00000000800C: D3AC0000 0003F7F2 D3AE0800 0403A184
	s_add_u32 s18, s92, s17                                    // 00000000801C: 8012115C
	v_add3_u32 v128, s18, v245, v244                           // 000000008020: D1FF0080 07D3EA12
	ds_read_b64_tr_b8 v[156:157], v128 offset:4352             // 000000008028: D9C41100 9C000080
	ds_read_b64_tr_b8 v[158:159], v128 offset:5376             // 000000008030: D9C41500 9E000080
	ds_read_b64_tr_b8 v[160:161], v128 offset:6400             // 000000008038: D9C41900 A0000080
	ds_read_b64_tr_b8 v[162:163], v128 offset:7424             // 000000008040: D9C41D00 A2000080
	s_add_u32 s18, s92, s17                                    // 000000008048: 8012115C
	v_add3_u32 v128, s18, v245, v244                           // 00000000804C: D1FF0080 07D3EA12
	ds_read_b64_tr_b8 v[132:133], v128 offset:4608             // 000000008054: D9C41200 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:5632             // 00000000805C: D9C41600 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:6656             // 000000008064: D9C41A00 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:7680             // 00000000806C: D9C41E00 8A000080
	s_waitcnt vmcnt(0) lgkmcnt(4)                              // 000000008074: BF8C0470
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[140:147], v[164:171], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000008078: D3AC0000 0003FBF2 D3AE0830 04C3498C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[156:163], v[164:171], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000008088: D3AC0000 0003FBF2 D3AE0820 0483499C
	s_add_u32 s17, s92, s17                                    // 000000008098: 8011115C
	v_add3_u32 v128, s17, v245, v244                           // 00000000809C: D1FF0080 07D3EA11
	ds_read_b64_tr_b8 v[140:141], v128 offset:4864             // 0000000080A4: D9C41300 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:5888             // 0000000080AC: D9C41700 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:6912             // 0000000080B4: D9C41B00 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:7936             // 0000000080BC: D9C41F00 92000080
	s_waitcnt lgkmcnt(0)                                       // 0000000080C4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[132:139], v[164:171], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 0000000080C8: D3AC0000 0003FBF2 D3AE0810 04434984
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[140:147], v[164:171], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 0000000080D8: D3AC0000 0003FBF2 D3AE0800 0403498C
	s_cbranch_vccz 68                                          // 0000000080E8: BF860044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x66fc>
	v_sub_f32_e32 v128, v252, v129                             // 0000000080EC: 050103FC
	v_exp_f32_e32 v128, v128                                   // 0000000080F0: 7F004180
	s_nop 1                                                    // 0000000080F4: BF800001
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 0000000080F8: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 000000008100: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000008108: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000008110: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000008118: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000008120: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000008128: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000008130: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000008138: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000008140: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000008148: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000008150: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000008158: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000008160: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000008168: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000008170: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000008178: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000008180: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000008188: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000008190: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000008198: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 0000000081A0: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 0000000081A8: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 0000000081B0: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 0000000081B8: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 0000000081C0: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 0000000081C8: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 0000000081D0: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 0000000081D8: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 0000000081E0: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 0000000081E8: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 0000000081F0: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 0000000081F8: 0BF501FA
	s_waitcnt vmcnt(0)                                         // 0000000081FC: BF8C0F70
	s_barrier                                                  // 000000008200: BF8A0000
	s_add_u32 s43, s43, 1                                      // 000000008204: 802B812B
	v_mov_b32_e32 v253, v131                                   // 000000008208: 7FFA0383
	v_mov_b32_e32 v251, v130                                   // 00000000820C: 7FF60382
	v_mov_b32_e32 v252, v129                                   // 000000008210: 7FF80381
	s_branch 62859                                             // 000000008214: BF82F58B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d44>
	s_cmp_eq_u32 s43, s79                                      // 000000008218: BF064F2B
	s_cbranch_scc0 431                                         // 00000000821C: BF8401AF <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6ddc>
	s_setprio 0                                                // 000000008220: BF8F0000
	v_fma_f32 v128, v112, v239, v152                           // 000000008224: D1CB0080 0663DF70
	v_fma_f32 v129, v113, v239, v152                           // 00000000822C: D1CB0081 0663DF71
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000008234: D1DD0080 02010180
	v_fma_f32 v130, v114, v239, v152                           // 00000000823C: D1CB0082 0663DF72
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000008244: D1DD0080 06010381
	v_fma_f32 v131, v115, v239, v152                           // 00000000824C: D1CB0083 0663DF73
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000008254: D1DD0080 06010582
	v_cvt_pk_u8_f32 v136, v131, 3, v128                        // 00000000825C: D1DD0088 06010783
	v_fma_f32 v128, v96, v239, v152                            // 000000008264: D1CB0080 0663DF60
	v_fma_f32 v129, v97, v239, v152                            // 00000000826C: D1CB0081 0663DF61
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000008274: D1DD0080 02010180
	v_fma_f32 v130, v98, v239, v152                            // 00000000827C: D1CB0082 0663DF62
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000008284: D1DD0080 06010381
	v_fma_f32 v131, v99, v239, v152                            // 00000000828C: D1CB0083 0663DF63
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000008294: D1DD0080 06010582
	v_cvt_pk_u8_f32 v140, v131, 3, v128                        // 00000000829C: D1DD008C 06010783
	v_fma_f32 v128, v116, v239, v152                           // 0000000082A4: D1CB0080 0663DF74
	v_fma_f32 v129, v117, v239, v152                           // 0000000082AC: D1CB0081 0663DF75
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000082B4: D1DD0080 02010180
	v_fma_f32 v130, v118, v239, v152                           // 0000000082BC: D1CB0082 0663DF76
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 0000000082C4: D1DD0080 06010381
	v_fma_f32 v131, v119, v239, v152                           // 0000000082CC: D1CB0083 0663DF77
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 0000000082D4: D1DD0080 06010582
	v_cvt_pk_u8_f32 v137, v131, 3, v128                        // 0000000082DC: D1DD0089 06010783
	v_fma_f32 v128, v100, v239, v152                           // 0000000082E4: D1CB0080 0663DF64
	v_fma_f32 v129, v101, v239, v152                           // 0000000082EC: D1CB0081 0663DF65
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000082F4: D1DD0080 02010180
	v_fma_f32 v130, v102, v239, v152                           // 0000000082FC: D1CB0082 0663DF66
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000008304: D1DD0080 06010381
	v_fma_f32 v131, v103, v239, v152                           // 00000000830C: D1CB0083 0663DF67
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000008314: D1DD0080 06010582
	v_cvt_pk_u8_f32 v141, v131, 3, v128                        // 00000000831C: D1DD008D 06010783
	v_fma_f32 v128, v120, v239, v152                           // 000000008324: D1CB0080 0663DF78
	v_fma_f32 v129, v121, v239, v152                           // 00000000832C: D1CB0081 0663DF79
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000008334: D1DD0080 02010180
	v_fma_f32 v130, v122, v239, v152                           // 00000000833C: D1CB0082 0663DF7A
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000008344: D1DD0080 06010381
	v_fma_f32 v131, v123, v239, v152                           // 00000000834C: D1CB0083 0663DF7B
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000008354: D1DD0080 06010582
	v_cvt_pk_u8_f32 v138, v131, 3, v128                        // 00000000835C: D1DD008A 06010783
	v_fma_f32 v128, v104, v239, v152                           // 000000008364: D1CB0080 0663DF68
	v_fma_f32 v129, v105, v239, v152                           // 00000000836C: D1CB0081 0663DF69
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000008374: D1DD0080 02010180
	v_fma_f32 v130, v106, v239, v152                           // 00000000837C: D1CB0082 0663DF6A
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000008384: D1DD0080 06010381
	v_fma_f32 v131, v107, v239, v152                           // 00000000838C: D1CB0083 0663DF6B
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000008394: D1DD0080 06010582
	v_cvt_pk_u8_f32 v142, v131, 3, v128                        // 00000000839C: D1DD008E 06010783
	v_fma_f32 v128, v124, v239, v152                           // 0000000083A4: D1CB0080 0663DF7C
	v_fma_f32 v129, v125, v239, v152                           // 0000000083AC: D1CB0081 0663DF7D
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000083B4: D1DD0080 02010180
	v_fma_f32 v130, v126, v239, v152                           // 0000000083BC: D1CB0082 0663DF7E
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 0000000083C4: D1DD0080 06010381
	v_fma_f32 v131, v127, v239, v152                           // 0000000083CC: D1CB0083 0663DF7F
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 0000000083D4: D1DD0080 06010582
	v_cvt_pk_u8_f32 v139, v131, 3, v128                        // 0000000083DC: D1DD008B 06010783
	v_fma_f32 v128, v108, v239, v152                           // 0000000083E4: D1CB0080 0663DF6C
	v_fma_f32 v129, v109, v239, v152                           // 0000000083EC: D1CB0081 0663DF6D
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000083F4: D1DD0080 02010180
	v_fma_f32 v130, v110, v239, v152                           // 0000000083FC: D1CB0082 0663DF6E
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000008404: D1DD0080 06010381
	v_fma_f32 v131, v111, v239, v152                           // 00000000840C: D1CB0083 0663DF6F
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000008414: D1DD0080 06010582
	v_cvt_pk_u8_f32 v143, v131, 3, v128                        // 00000000841C: D1DD008F 06010783
	v_fma_f32 v128, v80, v239, v150                            // 000000008424: D1CB0080 065BDF50
	v_fma_f32 v129, v81, v239, v150                            // 00000000842C: D1CB0081 065BDF51
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000008434: D1DD0080 02010180
	v_fma_f32 v130, v82, v239, v150                            // 00000000843C: D1CB0082 065BDF52
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000008444: D1DD0080 06010381
	v_fma_f32 v129, v64, v239, v150                            // 00000000844C: D1CB0081 065BDF40
	v_fma_f32 v131, v83, v239, v150                            // 000000008454: D1CB0083 065BDF53
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 00000000845C: D1DD0080 06010582
	v_fma_f32 v130, v65, v239, v150                            // 000000008464: D1CB0082 065BDF41
	v_cvt_pk_u8_f32 v129, v129, 0, 0                           // 00000000846C: D1DD0081 02010181
	v_cvt_pk_u8_f32 v128, v131, 3, v128                        // 000000008474: D1DD0080 06010783
	v_fma_f32 v131, v66, v239, v150                            // 00000000847C: D1CB0083 065BDF42
	v_cvt_pk_u8_f32 v129, v130, 1, v129                        // 000000008484: D1DD0081 06050382
	v_fma_f32 v132, v67, v239, v150                            // 00000000848C: D1CB0084 065BDF43
	v_cvt_pk_u8_f32 v129, v131, 2, v129                        // 000000008494: D1DD0081 06050583
	v_cvt_pk_u8_f32 v132, v132, 3, v129                        // 00000000849C: D1DD0084 06050784
	v_fma_f32 v129, v84, v239, v150                            // 0000000084A4: D1CB0081 065BDF54
	v_fma_f32 v130, v85, v239, v150                            // 0000000084AC: D1CB0082 065BDF55
	v_cvt_pk_u8_f32 v129, v129, 0, 0                           // 0000000084B4: D1DD0081 02010181
	v_fma_f32 v131, v86, v239, v150                            // 0000000084BC: D1CB0083 065BDF56
	v_cvt_pk_u8_f32 v129, v130, 1, v129                        // 0000000084C4: D1DD0081 06050382
	v_fma_f32 v130, v68, v239, v150                            // 0000000084CC: D1CB0082 065BDF44
	v_fma_f32 v133, v87, v239, v150                            // 0000000084D4: D1CB0085 065BDF57
	v_cvt_pk_u8_f32 v129, v131, 2, v129                        // 0000000084DC: D1DD0081 06050583
	v_fma_f32 v131, v69, v239, v150                            // 0000000084E4: D1CB0083 065BDF45
	v_cvt_pk_u8_f32 v130, v130, 0, 0                           // 0000000084EC: D1DD0082 02010182
	v_cvt_pk_u8_f32 v129, v133, 3, v129                        // 0000000084F4: D1DD0081 06050785
	v_fma_f32 v133, v70, v239, v150                            // 0000000084FC: D1CB0085 065BDF46
	v_cvt_pk_u8_f32 v130, v131, 1, v130                        // 000000008504: D1DD0082 06090383
	v_fma_f32 v134, v71, v239, v150                            // 00000000850C: D1CB0086 065BDF47
	v_cvt_pk_u8_f32 v130, v133, 2, v130                        // 000000008514: D1DD0082 06090585
	v_cvt_pk_u8_f32 v133, v134, 3, v130                        // 00000000851C: D1DD0085 06090786
	v_fma_f32 v130, v88, v239, v150                            // 000000008524: D1CB0082 065BDF58
	v_fma_f32 v131, v89, v239, v150                            // 00000000852C: D1CB0083 065BDF59
	v_cvt_pk_u8_f32 v130, v130, 0, 0                           // 000000008534: D1DD0082 02010182
	v_fma_f32 v134, v90, v239, v150                            // 00000000853C: D1CB0086 065BDF5A
	v_cvt_pk_u8_f32 v130, v131, 1, v130                        // 000000008544: D1DD0082 06090383
	v_fma_f32 v131, v72, v239, v150                            // 00000000854C: D1CB0083 065BDF48
	v_fma_f32 v135, v91, v239, v150                            // 000000008554: D1CB0087 065BDF5B
	v_cvt_pk_u8_f32 v130, v134, 2, v130                        // 00000000855C: D1DD0082 06090586
	v_fma_f32 v134, v73, v239, v150                            // 000000008564: D1CB0086 065BDF49
	v_cvt_pk_u8_f32 v131, v131, 0, 0                           // 00000000856C: D1DD0083 02010183
	v_cvt_pk_u8_f32 v130, v135, 3, v130                        // 000000008574: D1DD0082 06090787
	v_fma_f32 v135, v74, v239, v150                            // 00000000857C: D1CB0087 065BDF4A
	v_cvt_pk_u8_f32 v131, v134, 1, v131                        // 000000008584: D1DD0083 060D0386
	v_fma_f32 v144, v75, v239, v150                            // 00000000858C: D1CB0090 065BDF4B
	v_cvt_pk_u8_f32 v131, v135, 2, v131                        // 000000008594: D1DD0083 060D0587
	v_cvt_pk_u8_f32 v134, v144, 3, v131                        // 00000000859C: D1DD0086 060D0790
	v_fma_f32 v131, v92, v239, v150                            // 0000000085A4: D1CB0083 065BDF5C
	v_fma_f32 v135, v93, v239, v150                            // 0000000085AC: D1CB0087 065BDF5D
	v_cvt_pk_u8_f32 v131, v131, 0, 0                           // 0000000085B4: D1DD0083 02010183
	v_fma_f32 v144, v94, v239, v150                            // 0000000085BC: D1CB0090 065BDF5E
	v_cvt_pk_u8_f32 v131, v135, 1, v131                        // 0000000085C4: D1DD0083 060D0387
	v_fma_f32 v135, v76, v239, v150                            // 0000000085CC: D1CB0087 065BDF4C
	v_fma_f32 v145, v95, v239, v150                            // 0000000085D4: D1CB0091 065BDF5F
	v_cvt_pk_u8_f32 v131, v144, 2, v131                        // 0000000085DC: D1DD0083 060D0590
	v_fma_f32 v144, v77, v239, v150                            // 0000000085E4: D1CB0090 065BDF4D
	v_cvt_pk_u8_f32 v135, v135, 0, 0                           // 0000000085EC: D1DD0087 02010187
	v_cvt_pk_u8_f32 v131, v145, 3, v131                        // 0000000085F4: D1DD0083 060D0791
	v_fma_f32 v145, v78, v239, v150                            // 0000000085FC: D1CB0091 065BDF4E
	v_cvt_pk_u8_f32 v135, v144, 1, v135                        // 000000008604: D1DD0087 061D0390
	v_fma_f32 v146, v79, v239, v150                            // 00000000860C: D1CB0092 065BDF4F
	v_cvt_pk_u8_f32 v135, v145, 2, v135                        // 000000008614: D1DD0087 061D0591
	v_cvt_pk_u8_f32 v135, v146, 3, v135                        // 00000000861C: D1DD0087 061D0792
	s_barrier                                                  // 000000008624: BF8A0000
	s_setprio 1                                                // 000000008628: BF8F0001
	s_waitcnt vmcnt(0)                                         // 00000000862C: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[144:147], v[192:199], v[136:143], 0// 000000008630: D3AD0090 020311C0
	v_mfma_f32_16x16x128_f8f6f4 v[146:149], v[192:199], v[128:135], 0// 000000008638: D3AD0092 020301C0
	s_add_u32 s17, s79, s78                                    // 000000008640: 80114E4F
	s_and_b32 s17, s17, 3                                      // 000000008644: 86118311
	s_lshl_b32 s18, s17, 14                                    // 000000008648: 8E128E11
	s_add_u32 s19, s92, s18                                    // 00000000864C: 8013125C
	v_add3_u32 v145, s19, v245, v244                           // 000000008650: D1FF0091 07D3EA13
	ds_read_b64_tr_b8 v[156:157], v145                         // 000000008658: D9C40000 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:1024             // 000000008660: D9C40400 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:2048             // 000000008668: D9C40800 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:3072             // 000000008670: D9C40C00 A2000091
	s_add_u32 s19, s92, s18                                    // 000000008678: 8013125C
	v_add3_u32 v145, s19, v245, v244                           // 00000000867C: D1FF0091 07D3EA13
	ds_read_b64_tr_b8 v[164:165], v145 offset:256              // 000000008684: D9C40100 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:1280             // 00000000868C: D9C40500 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:2304             // 000000008694: D9C40900 A8000091
	ds_read_b64_tr_b8 v[170:171], v145 offset:3328             // 00000000869C: D9C40D00 AA000091
	s_add_u32 s19, s92, s18                                    // 0000000086A4: 8013125C
	v_add3_u32 v145, s19, v245, v244                           // 0000000086A8: D1FF0091 07D3EA13
	ds_read_b64_tr_b8 v[172:173], v145 offset:512              // 0000000086B0: D9C40200 AC000091
	ds_read_b64_tr_b8 v[174:175], v145 offset:1536             // 0000000086B8: D9C40600 AE000091
	ds_read_b64_tr_b8 v[176:177], v145 offset:2560             // 0000000086C0: D9C40A00 B0000091
	ds_read_b64_tr_b8 v[178:179], v145 offset:3584             // 0000000086C8: D9C40E00 B2000091
	s_waitcnt lgkmcnt(4)                                       // 0000000086D0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 0000000086D4: D3AC0000 0003F7F2 D3AE0830 04C3119C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 0000000086E4: D3AC0000 0003F7F2 D3AE0820 048311A4
	s_add_u32 s19, s92, s18                                    // 0000000086F4: 8013125C
	v_add3_u32 v145, s19, v245, v244                           // 0000000086F8: D1FF0091 07D3EA13
	ds_read_b64_tr_b8 v[156:157], v145 offset:768              // 000000008700: D9C40300 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:1792             // 000000008708: D9C40700 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:2816             // 000000008710: D9C40B00 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:3840             // 000000008718: D9C40F00 A2000091
	s_add_u32 s19, s92, s18                                    // 000000008720: 8013125C
	v_add3_u32 v145, s19, v245, v244                           // 000000008724: D1FF0091 07D3EA13
	ds_read_b64_tr_b8 v[164:165], v145 offset:4096             // 00000000872C: D9C41000 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:5120             // 000000008734: D9C41400 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:6144             // 00000000873C: D9C41800 A8000091
	ds_read_b64_tr_b8 v[170:171], v145 offset:7168             // 000000008744: D9C41C00 AA000091
	s_waitcnt lgkmcnt(4)                                       // 00000000874C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000008750: D3AC0000 0003F7F2 D3AE0810 044311AC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000008760: D3AC0000 0003F7F2 D3AE0800 0403119C
	s_add_u32 s19, s92, s18                                    // 000000008770: 8013125C
	v_add3_u32 v145, s19, v245, v244                           // 000000008774: D1FF0091 07D3EA13
	ds_read_b64_tr_b8 v[172:173], v145 offset:4352             // 00000000877C: D9C41100 AC000091
	ds_read_b64_tr_b8 v[174:175], v145 offset:5376             // 000000008784: D9C41500 AE000091
	ds_read_b64_tr_b8 v[176:177], v145 offset:6400             // 00000000878C: D9C41900 B0000091
	ds_read_b64_tr_b8 v[178:179], v145 offset:7424             // 000000008794: D9C41D00 B2000091
	s_add_u32 s19, s92, s18                                    // 00000000879C: 8013125C
	v_add3_u32 v136, s19, v245, v244                           // 0000000087A0: D1FF0088 07D3EA13
	ds_read_b64_tr_b8 v[156:157], v136 offset:4608             // 0000000087A8: D9C41200 9C000088
	ds_read_b64_tr_b8 v[158:159], v136 offset:5632             // 0000000087B0: D9C41600 9E000088
	ds_read_b64_tr_b8 v[160:161], v136 offset:6656             // 0000000087B8: D9C41A00 A0000088
	ds_read_b64_tr_b8 v[162:163], v136 offset:7680             // 0000000087C0: D9C41E00 A2000088
	s_waitcnt lgkmcnt(4)                                       // 0000000087C8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[164:171], v[128:135], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 0000000087CC: D3AC0000 0003FBF2 D3AE0830 04C301A4
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[172:179], v[128:135], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 0000000087DC: D3AC0000 0003FBF2 D3AE0820 048301AC
	s_add_u32 s19, s92, s18                                    // 0000000087EC: 8013125C
	v_add3_u32 v136, s19, v245, v244                           // 0000000087F0: D1FF0088 07D3EA13
	ds_read_b64_tr_b8 v[164:165], v136 offset:4864             // 0000000087F8: D9C41300 A4000088
	ds_read_b64_tr_b8 v[166:167], v136 offset:5888             // 000000008800: D9C41700 A6000088
	ds_read_b64_tr_b8 v[168:169], v136 offset:6912             // 000000008808: D9C41B00 A8000088
	ds_read_b64_tr_b8 v[170:171], v136 offset:7936             // 000000008810: D9C41F00 AA000088
	s_add_u32 s19, s79, 4                                      // 000000008818: 8013844F
	s_cmp_ge_u32 s19, s96                                      // 00000000881C: BF096013
	s_cbranch_scc1 12                                          // 000000008820: BF85000C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6d54>
	s_add_u32 s18, s18, s88                                    // 000000008824: 80125812
	s_mul_i32 s19, s19, s8                                     // 000000008828: 92130813
	s_lshl_b32 s19, s19, 7                                     // 00000000882C: 8E138713
	s_mov_b32 m0, s18                                          // 000000008830: BEFC0012
	s_nop 0                                                    // 000000008834: BF800000
	buffer_load_dwordx4 v233, s[84:87], s19 offen lds          // 000000008838: E05D1000 131500E9
	s_add_u32 m0, s18, 0x2000                                  // 000000008840: 807CFF12 00002000
	s_nop 0                                                    // 000000008848: BF800000
	buffer_load_dwordx4 v234, s[84:87], s19 offen lds          // 00000000884C: E05D1000 131500EA
	s_add_u32 s18, s79, 2                                      // 000000008854: 8012824F
	s_cmp_ge_u32 s18, s96                                      // 000000008858: BF096012
	s_cbranch_scc1 15                                          // 00000000885C: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6d9c>
	s_xor_b32 s17, s17, 2                                      // 000000008860: 88118211
	s_mul_i32 s18, s18, s8                                     // 000000008864: 92120812
	s_lshl_b32 s17, s17, 14                                    // 000000008868: 8E118E11
	s_add_u32 s19, s92, s17                                    // 00000000886C: 8013115C
	s_add_u32 m0, s19, s88                                     // 000000008870: 807C5813
	s_lshl_b32 s18, s18, 7                                     // 000000008874: 8E128712
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000008878: E05D1000 121400EB
	s_add_u32 s17, s92, s17                                    // 000000008880: 8011115C
	s_add_u32 s17, s17, s88                                    // 000000008884: 80115811
	s_add_u32 m0, s17, 0x2000                                  // 000000008888: 807CFF11 00002000
	s_nop 0                                                    // 000000008890: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000008894: E05D1000 121400EC
	v_mul_f32_e32 v136, v154, v144                             // 00000000889C: 0B11219A
	v_mul_f32_e32 v137, v155, v146                             // 0000000088A0: 0B13259B
	v_add_f32_e32 v136, v250, v136                             // 0000000088A4: 031111FA
	v_add_f32_e32 v250, v136, v137                             // 0000000088A8: 03F51388
	s_waitcnt lgkmcnt(0)                                       // 0000000088AC: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[156:163], v[128:135], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 0000000088B0: D3AC0000 0003FBF2 D3AE0810 0443019C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[164:171], v[128:135], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 0000000088C0: D3AC0000 0003FBF2 D3AE0800 040301A4
	s_barrier                                                  // 0000000088D0: BF8A0000
	s_add_u32 s43, s79, 1                                      // 0000000088D4: 802B814F
	s_branch 62426                                             // 0000000088D8: BF82F3DA <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d44>
	s_barrier                                                  // 0000000088DC: BF8A0000
	s_waitcnt vmcnt(0)                                         // 0000000088E0: BF8C0F70
	s_add_u32 s17, s43, 4                                      // 0000000088E4: 8011842B
	s_cmp_ge_u32 s17, s96                                      // 0000000088E8: BF096011
	s_cbranch_scc1 15                                          // 0000000088EC: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6e2c>
	s_add_u32 s18, s43, s78                                    // 0000000088F0: 80124E2B
	s_and_b32 s18, s18, 3                                      // 0000000088F4: 86128312
	s_lshl_b32 s18, s18, 14                                    // 0000000088F8: 8E128E12
	s_or_b32 s18, s18, s88                                     // 0000000088FC: 87125812
	s_mul_i32 s17, s17, s8                                     // 000000008900: 92110811
	s_lshl_b32 s17, s17, 7                                     // 000000008904: 8E118711
	s_mov_b32 m0, s18                                          // 000000008908: BEFC0012
	s_nop 0                                                    // 00000000890C: BF800000
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 000000008910: E05D1000 111500E9
	s_or_b32 m0, s18, 0x2000                                   // 000000008918: 877CFF12 00002000
	s_nop 0                                                    // 000000008920: BF800000
	buffer_load_dwordx4 v234, s[84:87], s17 offen lds          // 000000008924: E05D1000 111500EA
	s_add_u32 s17, s43, 2                                      // 00000000892C: 8011822B
	s_cmp_ge_u32 s17, s96                                      // 000000008930: BF096011
	s_cbranch_scc1 17                                          // 000000008934: BF850011 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6e7c>
	s_add_u32 s18, s43, s78                                    // 000000008938: 80124E2B
	s_and_b32 s18, s18, 3                                      // 00000000893C: 86128312
	s_xor_b32 s18, s18, 2                                      // 000000008940: 88128212
	s_mul_i32 s17, s17, s8                                     // 000000008944: 92110811
	s_lshl_b32 s18, s18, 14                                    // 000000008948: 8E128E12
	s_add_u32 s19, s92, s18                                    // 00000000894C: 8013125C
	s_add_u32 m0, s19, s88                                     // 000000008950: 807C5813
	s_lshl_b32 s17, s17, 7                                     // 000000008954: 8E118711
	buffer_load_dwordx4 v235, s[80:83], s17 offen lds          // 000000008958: E05D1000 111400EB
	s_add_u32 s18, s92, s18                                    // 000000008960: 8012125C
	s_add_u32 s18, s18, s88                                    // 000000008964: 80125812
	s_add_u32 m0, s18, 0x2000                                  // 000000008968: 807CFF12 00002000
	s_nop 0                                                    // 000000008970: BF800000
	buffer_load_dwordx4 v236, s[80:83], s17 offen lds          // 000000008974: E05D1000 111400EC
	s_barrier                                                  // 00000000897C: BF8A0000
	s_add_u32 s43, s43, 1                                      // 000000008980: 802B812B
	s_branch 62383                                             // 000000008984: BF82F3AF <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d44>
	s_cmp_ge_u32 s79, s43                                      // 000000008988: BF092B4F
	s_cbranch_scc1 356                                         // 00000000898C: BF850164 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7420>
	s_waitcnt vmcnt(0)                                         // 000000008990: BF8C0F70
	s_barrier                                                  // 000000008994: BF8A0000
	s_add_u32 s17, s96, s78                                    // 000000008998: 80114E60
	s_and_b32 s24, s17, 3                                      // 00000000899C: 86188311
	s_cmp_lg_u32 s77, 0                                        // 0000000089A0: BF07804D
	s_cselect_b64 s[18:19], -1, 0                              // 0000000089A4: 859280C1
	s_not_b32 s17, s68                                         // 0000000089A8: BE910444
	s_add_u32 s17, s4, s17                                     // 0000000089AC: 80111104
	s_cmp_eq_u32 s68, s17                                      // 0000000089B0: BF061144
	s_cselect_b64 s[20:21], -1, 0                              // 0000000089B4: 859480C1
	s_or_b64 s[18:19], s[18:19], s[20:21]                      // 0000000089B8: 87921412
	s_and_b64 s[20:21], s[18:19], exec                         // 0000000089BC: 86947E12
	s_mov_b32 s77, 1                                           // 0000000089C0: BECD0081
	s_cbranch_scc0 7                                           // 0000000089C4: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6ee4>
	s_add_u32 s2, s2, s14                                      // 0000000089C8: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 0000000089CC: BF093302
	s_cbranch_scc1 1207                                        // 0000000089D0: BF8504B7 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x81b0>
	s_lshl_b32 s17, s2, 5                                      // 0000000089D4: 8E118502
	s_load_dwordx8 s[68:75], s[46:47], s17 offset:0x0          // 0000000089D8: C00E5117 22000000
	s_mov_b32 s77, 0                                           // 0000000089E0: BECD0080
	s_waitcnt lgkmcnt(0)                                       // 0000000089E4: BF8CC07F
	s_add_u32 s28, s38, s72                                    // 0000000089E8: 801C4826
	s_addc_u32 s29, s39, s73                                   // 0000000089EC: 821D4927
	s_add_u32 s80, s40, s72                                    // 0000000089F0: 80504828
	s_addc_u32 s81, s41, s73                                   // 0000000089F4: 82514929
	s_not_b32 s17, s68                                         // 0000000089F8: BE910444
	s_add_u32 s17, s4, s17                                     // 0000000089FC: 80111104
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008A00: 86927E12
	s_cselect_b32 s17, s17, s68                                // 000000008A04: 85114411
	s_lshl_b32 s18, s17, 5                                     // 000000008A08: 8E128511
	s_add_u32 s18, s18, 32                                     // 000000008A0C: 8012A012
	s_mul_i32 s18, s18, s5                                     // 000000008A10: 92120512
	s_addk_i32 s18, 0x60                                       // 000000008A14: B7120060
	s_lshr_b32 s18, s18, 7                                     // 000000008A18: 8F128712
	v_readlane_b32 s19, v255, 1                                // 000000008A1C: D2890013 000103FF
	s_min_u32 s96, s19, s18                                    // 000000008A24: 83E01213
	s_and_b64 s[18:19], s[10:11], exec                         // 000000008A28: 86927E0A
	s_cbranch_scc0 84                                          // 000000008A2C: BF840054 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7080>
	s_lshl_b32 s18, s24, 14                                    // 000000008A30: 8E128E18
	s_or_b32 s19, s18, s88                                     // 000000008A34: 87135812
	s_mov_b32 m0, s19                                          // 000000008A38: BEFC0013
	v_readlane_b32 s20, v255, 11                               // 000000008A3C: D2890014 000117FF
	buffer_load_dwordx4 v233, s[28:31], 0 offen lds            // 000000008A44: E05D1000 800700E9
	s_add_u32 m0, s19, 0x1000                                  // 000000008A4C: 807CFF13 00001000
	s_mov_b32 s82, s30                                         // 000000008A54: BED2001E
	s_mov_b32 s83, s31                                         // 000000008A58: BED3001F
	s_nop 0                                                    // 000000008A5C: BF800000
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000008A60: E05D1000 140700E9
	s_or_b32 m0, s19, 0x2000                                   // 000000008A68: 877CFF13 00002000
	v_readlane_b32 s20, v255, 12                               // 000000008A70: D2890014 000119FF
	s_nop 4                                                    // 000000008A78: BF800004
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000008A7C: E05D1000 140700E9
	s_add_u32 m0, s19, 0x3000                                  // 000000008A84: 807CFF13 00003000
	s_mul_i32 s19, s8, 0x60                                    // 000000008A8C: 9213FF08 00000060
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008A94: E05D1000 130700E9
	s_add_u32 s19, s92, s18                                    // 000000008A9C: 8013125C
	s_add_u32 m0, s19, s88                                     // 000000008AA0: 807C5813
	s_nop 0                                                    // 000000008AA4: BF800000
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 000000008AA8: E05D1000 801400EB
	s_add_u32 s19, s92, s18                                    // 000000008AB0: 8013125C
	s_add_u32 s19, s19, s88                                    // 000000008AB4: 80135813
	s_add_u32 m0, s19, 0x1000                                  // 000000008AB8: 807CFF13 00001000
	s_nop 0                                                    // 000000008AC0: BF800000
	buffer_load_dwordx4 v235, s[80:83], s20 offen lds          // 000000008AC4: E05D1000 141400EB
	s_add_u32 s19, s92, s18                                    // 000000008ACC: 8013125C
	s_add_u32 s19, s19, s88                                    // 000000008AD0: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 000000008AD4: 807CFF13 00002000
	v_readlane_b32 s19, v255, 13                               // 000000008ADC: D2890013 00011BFF
	s_nop 4                                                    // 000000008AE4: BF800004
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000008AE8: E05D1000 131400EB
	s_add_u32 s18, s92, s18                                    // 000000008AF0: 8012125C
	s_add_u32 s18, s18, s88                                    // 000000008AF4: 80125812
	s_add_u32 m0, s18, 0x3000                                  // 000000008AF8: 807CFF12 00003000
	s_mul_i32 s18, s8, 0x44                                    // 000000008B00: 9212FF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000008B08: E05D1000 121400EB
	s_cmp_lt_u32 s96, 2                                        // 000000008B10: BF0A8260
	s_cbranch_scc1 26                                          // 000000008B14: BF85001A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7080>
	s_add_u32 s18, s24, 1                                      // 000000008B18: 80128118
	s_and_b32 s18, s18, 3                                      // 000000008B1C: 86128312
	s_lshl_b32 s18, s18, 14                                    // 000000008B20: 8E128E12
	s_or_b32 s18, s18, s88                                     // 000000008B24: 87125812
	s_mov_b32 m0, s18                                          // 000000008B28: BEFC0012
	s_mul_i32 s19, s8, 0xa0                                    // 000000008B2C: 9213FF08 000000A0
	buffer_load_dwordx4 v233, s[28:31], s33 offen lds          // 000000008B34: E05D1000 210700E9
	s_add_u32 m0, s18, 0x1000                                  // 000000008B3C: 807CFF12 00001000
	s_nop 0                                                    // 000000008B44: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008B48: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 000000008B50: 877CFF12 00002000
	s_mul_i32 s19, s8, 0xc0                                    // 000000008B58: 9213FF08 000000C0
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008B60: E05D1000 130700E9
	s_add_u32 m0, s18, 0x3000                                  // 000000008B68: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xe0                                    // 000000008B70: 9212FF08 000000E0
	buffer_load_dwordx4 v233, s[28:31], s18 offen lds          // 000000008B78: E05D1000 120700E9
	v_readlane_b32 s18, v255, 7                                // 000000008B80: D2890012 00010FFF
	s_add_u32 s22, s18, s70                                    // 000000008B88: 80164612
	v_readlane_b32 s18, v255, 8                                // 000000008B8C: D2890012 000111FF
	s_addc_u32 s23, s18, s71                                   // 000000008B94: 82174712
	v_readlane_b32 s18, v255, 9                                // 000000008B98: D2890012 000113FF
	s_add_u32 s20, s18, s74                                    // 000000008BA0: 80144A12
	v_readlane_b32 s18, v255, 10                               // 000000008BA4: D2890012 000115FF
	s_addc_u32 s21, s18, s75                                   // 000000008BAC: 82154B12
	v_readlane_b32 s18, v255, 2                                // 000000008BB0: D2890012 000105FF
	s_add_u32 s18, s69, s18                                    // 000000008BB8: 80121245
	s_lshl_b32 s18, s18, 2                                     // 000000008BBC: 8E128212
	s_add_u32 s25, s44, s18                                    // 000000008BC0: 8019122C
	v_readlane_b32 s18, v255, 3                                // 000000008BC4: D2890012 000107FF
	s_addc_u32 s26, s45, 0                                     // 000000008BCC: 821A802D
	v_readlane_b32 s19, v255, 4                                // 000000008BD0: D2890013 000109FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008BD8: 86927E12
	s_mul_i32 s17, s17, s5                                     // 000000008BDC: 92110511
	s_cselect_b32 s18, 0, s25                                  // 000000008BE0: 85121980
	v_readlane_b32 s25, v255, 0                                // 000000008BE4: D2890019 000101FF
	s_cselect_b32 s19, 0, s26                                  // 000000008BEC: 85131A80
	s_add_u32 s25, s17, s25                                    // 000000008BF0: 80191911
	s_lshl_b32 s17, s25, 5                                     // 000000008BF4: 8E118519
	v_or_b32_e32 v64, s17, v216                                // 000000008BF8: 2881B011
	s_bfe_u32 s79, s25, 0x190002                               // 000000008BFC: 92CFFF19 00190002
	v_mul_lo_u32 v64, v64, s7                                  // 000000008C04: D2850040 00000F40
	scratch_load_dword v65, off, off offset:36                 // 000000008C0C: DC504024 417F0000
	s_waitcnt vmcnt(0)                                         // 000000008C14: BF8C0F70
	v_add_u32_e32 v64, v65, v64                                // 000000008C18: 68808141
	global_load_dwordx4 v[220:223], v64, s[22:23]              // 000000008C1C: DC5C8000 DC160040
	global_load_dwordx4 v[224:227], v64, s[22:23] offset:16    // 000000008C24: DC5C8010 E0160040
	global_load_dwordx4 v[200:203], v64, s[22:23] offset:64    // 000000008C2C: DC5C8040 C8160040
	global_load_dwordx4 v[204:207], v64, s[22:23] offset:80    // 000000008C34: DC5C8050 CC160040
	s_mov_b32 s83, 0x110000                                    // 000000008C3C: BED300FF 00110000
	s_mov_b32 s22, 1                                           // 000000008C44: BE960081
	s_mov_b32 s42, 0x110000                                    // 000000008C48: BEAA00FF 00110000
	s_branch 1202                                              // 000000008C50: BF8204B2 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x841c>
	s_cmp_ge_u32 s79, s43                                      // 000000008C54: BF092B4F
	s_cbranch_scc1 611                                         // 000000008C58: BF850263 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7ae8>
	s_waitcnt vmcnt(0)                                         // 000000008C5C: BF8C0F70
	s_barrier                                                  // 000000008C60: BF8A0000
	s_add_u32 s17, s96, s78                                    // 000000008C64: 80114E60
	s_and_b32 s24, s17, 3                                      // 000000008C68: 86188311
	s_cmp_lg_u32 s77, 0                                        // 000000008C6C: BF07804D
	s_cselect_b64 s[18:19], -1, 0                              // 000000008C70: 859280C1
	s_not_b32 s17, s68                                         // 000000008C74: BE910444
	s_add_u32 s17, s4, s17                                     // 000000008C78: 80111104
	s_cmp_eq_u32 s68, s17                                      // 000000008C7C: BF061144
	s_cselect_b64 s[20:21], -1, 0                              // 000000008C80: 859480C1
	s_or_b64 s[18:19], s[18:19], s[20:21]                      // 000000008C84: 87921412
	s_and_b64 s[20:21], s[18:19], exec                         // 000000008C88: 86947E12
	s_mov_b32 s77, 1                                           // 000000008C8C: BECD0081
	s_cbranch_scc0 7                                           // 000000008C90: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x71b0>
	s_add_u32 s2, s2, s14                                      // 000000008C94: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000008C98: BF093302
	s_cbranch_scc1 1034                                        // 000000008C9C: BF85040A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x81c8>
	s_lshl_b32 s17, s2, 5                                      // 000000008CA0: 8E118502
	s_load_dwordx8 s[68:75], s[46:47], s17 offset:0x0          // 000000008CA4: C00E5117 22000000
	s_mov_b32 s77, 0                                           // 000000008CAC: BECD0080
	s_waitcnt lgkmcnt(0)                                       // 000000008CB0: BF8CC07F
	s_add_u32 s28, s38, s72                                    // 000000008CB4: 801C4826
	s_addc_u32 s29, s39, s73                                   // 000000008CB8: 821D4927
	s_add_u32 s80, s40, s72                                    // 000000008CBC: 80504828
	s_addc_u32 s81, s41, s73                                   // 000000008CC0: 82514929
	s_not_b32 s17, s68                                         // 000000008CC4: BE910444
	s_add_u32 s17, s4, s17                                     // 000000008CC8: 80111104
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008CCC: 86927E12
	s_cselect_b32 s17, s17, s68                                // 000000008CD0: 85114411
	s_lshl_b32 s18, s17, 5                                     // 000000008CD4: 8E128511
	s_add_u32 s18, s18, 32                                     // 000000008CD8: 8012A012
	s_mul_i32 s18, s18, s5                                     // 000000008CDC: 92120512
	s_addk_i32 s18, 0x60                                       // 000000008CE0: B7120060
	s_lshr_b32 s18, s18, 7                                     // 000000008CE4: 8F128712
	v_readlane_b32 s19, v255, 1                                // 000000008CE8: D2890013 000103FF
	s_min_u32 s96, s19, s18                                    // 000000008CF0: 83E01213
	s_and_b64 s[18:19], s[10:11], exec                         // 000000008CF4: 86927E0A
	s_cbranch_scc0 84                                          // 000000008CF8: BF840054 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x734c>
	s_lshl_b32 s18, s24, 14                                    // 000000008CFC: 8E128E18
	s_or_b32 s19, s18, s88                                     // 000000008D00: 87135812
	s_mov_b32 m0, s19                                          // 000000008D04: BEFC0013
	v_readlane_b32 s20, v255, 11                               // 000000008D08: D2890014 000117FF
	buffer_load_dwordx4 v233, s[28:31], 0 offen lds            // 000000008D10: E05D1000 800700E9
	s_add_u32 m0, s19, 0x1000                                  // 000000008D18: 807CFF13 00001000
	s_mov_b32 s82, s30                                         // 000000008D20: BED2001E
	s_mov_b32 s83, s31                                         // 000000008D24: BED3001F
	s_nop 0                                                    // 000000008D28: BF800000
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000008D2C: E05D1000 140700E9
	s_or_b32 m0, s19, 0x2000                                   // 000000008D34: 877CFF13 00002000
	v_readlane_b32 s20, v255, 12                               // 000000008D3C: D2890014 000119FF
	s_nop 4                                                    // 000000008D44: BF800004
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000008D48: E05D1000 140700E9
	s_add_u32 m0, s19, 0x3000                                  // 000000008D50: 807CFF13 00003000
	s_mul_i32 s19, s8, 0x60                                    // 000000008D58: 9213FF08 00000060
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008D60: E05D1000 130700E9
	s_add_u32 s19, s92, s18                                    // 000000008D68: 8013125C
	s_add_u32 m0, s19, s88                                     // 000000008D6C: 807C5813
	s_nop 0                                                    // 000000008D70: BF800000
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 000000008D74: E05D1000 801400EB
	s_add_u32 s19, s92, s18                                    // 000000008D7C: 8013125C
	s_add_u32 s19, s19, s88                                    // 000000008D80: 80135813
	s_add_u32 m0, s19, 0x1000                                  // 000000008D84: 807CFF13 00001000
	s_nop 0                                                    // 000000008D8C: BF800000
	buffer_load_dwordx4 v235, s[80:83], s20 offen lds          // 000000008D90: E05D1000 141400EB
	s_add_u32 s19, s92, s18                                    // 000000008D98: 8013125C
	s_add_u32 s19, s19, s88                                    // 000000008D9C: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 000000008DA0: 807CFF13 00002000
	v_readlane_b32 s19, v255, 13                               // 000000008DA8: D2890013 00011BFF
	s_nop 4                                                    // 000000008DB0: BF800004
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000008DB4: E05D1000 131400EB
	s_add_u32 s18, s92, s18                                    // 000000008DBC: 8012125C
	s_add_u32 s18, s18, s88                                    // 000000008DC0: 80125812
	s_add_u32 m0, s18, 0x3000                                  // 000000008DC4: 807CFF12 00003000
	s_mul_i32 s18, s8, 0x44                                    // 000000008DCC: 9212FF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000008DD4: E05D1000 121400EB
	s_cmp_lt_u32 s96, 2                                        // 000000008DDC: BF0A8260
	s_cbranch_scc1 26                                          // 000000008DE0: BF85001A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x734c>
	s_add_u32 s18, s24, 1                                      // 000000008DE4: 80128118
	s_and_b32 s18, s18, 3                                      // 000000008DE8: 86128312
	s_lshl_b32 s18, s18, 14                                    // 000000008DEC: 8E128E12
	s_or_b32 s18, s18, s88                                     // 000000008DF0: 87125812
	s_mov_b32 m0, s18                                          // 000000008DF4: BEFC0012
	s_mul_i32 s19, s8, 0xa0                                    // 000000008DF8: 9213FF08 000000A0
	buffer_load_dwordx4 v233, s[28:31], s33 offen lds          // 000000008E00: E05D1000 210700E9
	s_add_u32 m0, s18, 0x1000                                  // 000000008E08: 807CFF12 00001000
	s_nop 0                                                    // 000000008E10: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008E14: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 000000008E1C: 877CFF12 00002000
	s_mul_i32 s19, s8, 0xc0                                    // 000000008E24: 9213FF08 000000C0
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008E2C: E05D1000 130700E9
	s_add_u32 m0, s18, 0x3000                                  // 000000008E34: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xe0                                    // 000000008E3C: 9212FF08 000000E0
	buffer_load_dwordx4 v233, s[28:31], s18 offen lds          // 000000008E44: E05D1000 120700E9
	v_readlane_b32 s18, v255, 7                                // 000000008E4C: D2890012 00010FFF
	s_add_u32 s22, s18, s70                                    // 000000008E54: 80164612
	v_readlane_b32 s18, v255, 8                                // 000000008E58: D2890012 000111FF
	s_addc_u32 s23, s18, s71                                   // 000000008E60: 82174712
	v_readlane_b32 s18, v255, 9                                // 000000008E64: D2890012 000113FF
	s_add_u32 s20, s18, s74                                    // 000000008E6C: 80144A12
	v_readlane_b32 s18, v255, 10                               // 000000008E70: D2890012 000115FF
	s_addc_u32 s21, s18, s75                                   // 000000008E78: 82154B12
	v_readlane_b32 s18, v255, 2                                // 000000008E7C: D2890012 000105FF
	s_add_u32 s18, s69, s18                                    // 000000008E84: 80121245
	s_lshl_b32 s18, s18, 2                                     // 000000008E88: 8E128212
	s_add_u32 s25, s44, s18                                    // 000000008E8C: 8019122C
	v_readlane_b32 s18, v255, 3                                // 000000008E90: D2890012 000107FF
	s_addc_u32 s26, s45, 0                                     // 000000008E98: 821A802D
	v_readlane_b32 s19, v255, 4                                // 000000008E9C: D2890013 000109FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008EA4: 86927E12
	s_mul_i32 s17, s17, s5                                     // 000000008EA8: 92110511
	s_cselect_b32 s18, 0, s25                                  // 000000008EAC: 85121980
	v_readlane_b32 s25, v255, 0                                // 000000008EB0: D2890019 000101FF
	s_cselect_b32 s19, 0, s26                                  // 000000008EB8: 85131A80
	s_add_u32 s25, s17, s25                                    // 000000008EBC: 80191911
	s_lshl_b32 s17, s25, 5                                     // 000000008EC0: 8E118519
	v_or_b32_e32 v64, s17, v216                                // 000000008EC4: 2881B011
	s_bfe_u32 s79, s25, 0x190002                               // 000000008EC8: 92CFFF19 00190002
	v_mul_lo_u32 v64, v64, s7                                  // 000000008ED0: D2850040 00000F40
	scratch_load_dword v65, off, off offset:36                 // 000000008ED8: DC504024 417F0000
	s_waitcnt vmcnt(0)                                         // 000000008EE0: BF8C0F70
	v_add_u32_e32 v64, v65, v64                                // 000000008EE4: 68808141
	global_load_dwordx4 v[220:223], v64, s[22:23]              // 000000008EE8: DC5C8000 DC160040
	global_load_dwordx4 v[224:227], v64, s[22:23] offset:16    // 000000008EF0: DC5C8010 E0160040
	global_load_dwordx4 v[200:203], v64, s[22:23] offset:64    // 000000008EF8: DC5C8040 C8160040
	global_load_dwordx4 v[204:207], v64, s[22:23] offset:80    // 000000008F00: DC5C8050 CC160040
	s_mov_b32 s83, 0x110000                                    // 000000008F08: BED300FF 00110000
	s_mov_b32 s22, 1                                           // 000000008F10: BE960081
	s_mov_b32 s42, 0x110000                                    // 000000008F14: BEAA00FF 00110000
	s_branch 1172                                              // 000000008F1C: BF820494 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8670>
	s_setprio 0                                                // 000000008F20: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000008F24: D1CB0070 0663DF70
	v_fma_f32 v96, v96, v239, v152                             // 000000008F2C: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 000000008F34: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 000000008F3C: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 000000008F44: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 000000008F4C: D1CB0068 0663DF68
	v_fma_f32 v124, v124, v239, v152                           // 000000008F54: D1CB007C 0663DF7C
	v_fma_f32 v108, v108, v239, v152                           // 000000008F5C: D1CB006C 0663DF6C
	v_fma_f32 v80, v80, v239, v150                             // 000000008F64: D1CB0050 065BDF50
	v_fma_f32 v64, v64, v239, v150                             // 000000008F6C: D1CB0040 065BDF40
	v_fma_f32 v84, v84, v239, v150                             // 000000008F74: D1CB0054 065BDF54
	v_fma_f32 v68, v68, v239, v150                             // 000000008F7C: D1CB0044 065BDF44
	v_fma_f32 v88, v88, v239, v150                             // 000000008F84: D1CB0058 065BDF58
	v_fma_f32 v72, v72, v239, v150                             // 000000008F8C: D1CB0048 065BDF48
	v_fma_f32 v128, v75, v239, v150                            // 000000008F94: D1CB0080 065BDF4B
	v_fma_f32 v75, v92, v239, v150                             // 000000008F9C: D1CB004B 065BDF5C
	v_fma_f32 v76, v76, v239, v150                             // 000000008FA4: D1CB004C 065BDF4C
	v_fma_f32 v113, v113, v239, v152                           // 000000008FAC: D1CB0071 0663DF71
	v_fma_f32 v97, v97, v239, v152                             // 000000008FB4: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 000000008FBC: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 000000008FC4: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 000000008FCC: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 000000008FD4: D1CB0069 0663DF69
	v_fma_f32 v125, v125, v239, v152                           // 000000008FDC: D1CB007D 0663DF7D
	v_fma_f32 v109, v109, v239, v152                           // 000000008FE4: D1CB006D 0663DF6D
	v_fma_f32 v81, v81, v239, v150                             // 000000008FEC: D1CB0051 065BDF51
	v_fma_f32 v65, v65, v239, v150                             // 000000008FF4: D1CB0041 065BDF41
	v_fma_f32 v85, v85, v239, v150                             // 000000008FFC: D1CB0055 065BDF55
	v_fma_f32 v69, v69, v239, v150                             // 000000009004: D1CB0045 065BDF45
	v_fma_f32 v89, v89, v239, v150                             // 00000000900C: D1CB0059 065BDF59
	v_fma_f32 v73, v73, v239, v150                             // 000000009014: D1CB0049 065BDF49
	v_fma_f32 v92, v93, v239, v150                             // 00000000901C: D1CB005C 065BDF5D
	v_fma_f32 v93, v94, v239, v150                             // 000000009024: D1CB005D 065BDF5E
	v_fma_f32 v94, v95, v239, v150                             // 00000000902C: D1CB005E 065BDF5F
	v_fma_f32 v77, v77, v239, v150                             // 000000009034: D1CB004D 065BDF4D
	v_fma_f32 v95, v79, v239, v150                             // 00000000903C: D1CB005F 065BDF4F
	v_cvt_pk_u8_f32 v79, v112, 0, 0                            // 000000009044: D1DD004F 02010170
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 00000000904C: D1DD0060 02010160
	v_cvt_pk_u8_f32 v112, v116, 0, 0                           // 000000009054: D1DD0070 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 00000000905C: D1DD0064 02010164
	v_cvt_pk_u8_f32 v116, v120, 0, 0                           // 000000009064: D1DD0074 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 00000000906C: D1DD0068 02010168
	v_cvt_pk_u8_f32 v120, v124, 0, 0                           // 000000009074: D1DD0078 0201017C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 00000000907C: D1DD006C 0201016C
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000009084: D1DD0050 02010150
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 00000000908C: D1DD0040 02010140
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000009094: D1DD0054 02010154
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 00000000909C: D1DD0044 02010144
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 0000000090A4: D1DD0058 02010158
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 0000000090AC: D1DD0048 02010148
	v_cvt_pk_u8_f32 v75, v75, 0, 0                             // 0000000090B4: D1DD004B 0201014B
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 0000000090BC: D1DD004C 0201014C
	v_fma_f32 v114, v114, v239, v152                           // 0000000090C4: D1CB0072 0663DF72
	v_fma_f32 v98, v98, v239, v152                             // 0000000090CC: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 0000000090D4: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 0000000090DC: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 0000000090E4: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 0000000090EC: D1CB006A 0663DF6A
	v_fma_f32 v126, v126, v239, v152                           // 0000000090F4: D1CB007E 0663DF7E
	v_fma_f32 v110, v110, v239, v152                           // 0000000090FC: D1CB006E 0663DF6E
	v_fma_f32 v82, v82, v239, v150                             // 000000009104: D1CB0052 065BDF52
	v_fma_f32 v66, v66, v239, v150                             // 00000000910C: D1CB0042 065BDF42
	v_fma_f32 v86, v86, v239, v150                             // 000000009114: D1CB0056 065BDF56
	v_fma_f32 v70, v70, v239, v150                             // 00000000911C: D1CB0046 065BDF46
	v_fma_f32 v90, v90, v239, v150                             // 000000009124: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 00000000912C: D1CB004A 065BDF4A
	v_fma_f32 v78, v78, v239, v150                             // 000000009134: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v79, v113, 1, v79                          // 00000000913C: D1DD004F 053D0371
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000009144: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v112                         // 00000000914C: D1DD0061 05C10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 000000009154: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v116                        // 00000000915C: D1DD0065 05D10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 000000009164: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v105, v125, 1, v120                        // 00000000916C: D1DD0069 05E1037D
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 000000009174: D1DD006C 05B1036D
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 00000000917C: D1DD0050 05410351
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000009184: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 00000000918C: D1DD0041 05510355
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 000000009194: D1DD0044 05110345
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 00000000919C: D1DD0045 05610359
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 0000000091A4: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v92, 1, v75                           // 0000000091AC: D1DD0049 052D035C
	v_cvt_pk_u8_f32 v75, v77, 1, v76                           // 0000000091B4: D1DD004B 0531034D
	v_fma_f32 v115, v115, v239, v152                           // 0000000091BC: D1CB0073 0663DF73
	v_fma_f32 v99, v99, v239, v152                             // 0000000091C4: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 0000000091CC: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 0000000091D4: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 0000000091DC: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 0000000091E4: D1CB006B 0663DF6B
	v_fma_f32 v127, v127, v239, v152                           // 0000000091EC: D1CB007F 0663DF7F
	v_fma_f32 v111, v111, v239, v152                           // 0000000091F4: D1CB006F 0663DF6F
	v_fma_f32 v83, v83, v239, v150                             // 0000000091FC: D1CB0053 065BDF53
	v_fma_f32 v67, v67, v239, v150                             // 000000009204: D1CB0043 065BDF43
	v_fma_f32 v87, v87, v239, v150                             // 00000000920C: D1CB0057 065BDF57
	v_fma_f32 v71, v71, v239, v150                             // 000000009214: D1CB0047 065BDF47
	v_fma_f32 v91, v91, v239, v150                             // 00000000921C: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v76, v114, 2, v79                          // 000000009224: D1DD004C 053D0572
	v_cvt_pk_u8_f32 v77, v98, 2, v96                           // 00000000922C: D1DD004D 05810562
	v_cvt_pk_u8_f32 v79, v118, 2, v97                          // 000000009234: D1DD004F 05850576
	v_cvt_pk_u8_f32 v81, v102, 2, v100                         // 00000000923C: D1DD0051 05910566
	v_cvt_pk_u8_f32 v84, v122, 2, v101                         // 000000009244: D1DD0054 0595057A
	v_cvt_pk_u8_f32 v85, v106, 2, v104                         // 00000000924C: D1DD0055 05A1056A
	v_cvt_pk_u8_f32 v88, v126, 2, v105                         // 000000009254: D1DD0058 05A5057E
	v_cvt_pk_u8_f32 v89, v110, 2, v108                         // 00000000925C: D1DD0059 05B1056E
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000009264: D1DD0050 05410552
	v_cvt_pk_u8_f32 v66, v66, 2, v64                           // 00000000926C: D1DD0042 05010542
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 000000009274: D1DD0041 05050556
	v_cvt_pk_u8_f32 v70, v70, 2, v68                           // 00000000927C: D1DD0046 05110546
	v_cvt_pk_u8_f32 v82, v90, 2, v69                           // 000000009284: D1DD0052 0515055A
	v_cvt_pk_u8_f32 v86, v74, 2, v72                           // 00000000928C: D1DD0056 0521054A
	v_cvt_pk_u8_f32 v90, v93, 2, v73                           // 000000009294: D1DD005A 0525055D
	v_cvt_pk_u8_f32 v92, v78, 2, v75                           // 00000000929C: D1DD005C 052D054E
	s_mov_b32 s25, 1                                           // 0000000092A4: BE990081
	v_cvt_pk_u8_f32 v72, v115, 3, v76                          // 0000000092A8: D1DD0048 05310773
	v_cvt_pk_u8_f32 v76, v99, 3, v77                           // 0000000092B0: D1DD004C 05350763
	v_cvt_pk_u8_f32 v73, v119, 3, v79                          // 0000000092B8: D1DD0049 053D0777
	v_cvt_pk_u8_f32 v77, v103, 3, v81                          // 0000000092C0: D1DD004D 05450767
	v_cvt_pk_u8_f32 v74, v123, 3, v84                          // 0000000092C8: D1DD004A 0551077B
	v_cvt_pk_u8_f32 v78, v107, 3, v85                          // 0000000092D0: D1DD004E 0555076B
	v_cvt_pk_u8_f32 v75, v127, 3, v88                          // 0000000092D8: D1DD004B 0561077F
	v_cvt_pk_u8_f32 v79, v111, 3, v89                          // 0000000092E0: D1DD004F 0565076F
	v_cvt_pk_u8_f32 v64, v83, 3, v80                           // 0000000092E8: D1DD0040 05410753
	v_cvt_pk_u8_f32 v68, v67, 3, v66                           // 0000000092F0: D1DD0044 05090743
	v_cvt_pk_u8_f32 v65, v87, 3, v65                           // 0000000092F8: D1DD0041 05050757
	v_cvt_pk_u8_f32 v69, v71, 3, v70                           // 000000009300: D1DD0045 05190747
	v_cvt_pk_u8_f32 v66, v91, 3, v82                           // 000000009308: D1DD0042 0549075B
	v_cvt_pk_u8_f32 v70, v128, 3, v86                          // 000000009310: D1DD0046 05590780
	v_cvt_pk_u8_f32 v67, v94, 3, v90                           // 000000009318: D1DD0043 0569075E
	v_cvt_pk_u8_f32 v71, v95, 3, v92                           // 000000009320: D1DD0047 0571075F
	s_waitcnt vmcnt(0)                                         // 000000009328: BF8C0F70
	s_barrier                                                  // 00000000932C: BF8A0000
	s_add_u32 s17, s96, s78                                    // 000000009330: 80114E60
	s_and_b32 s24, s17, 3                                      // 000000009334: 86188311
	s_cmp_lg_u32 s77, 0                                        // 000000009338: BF07804D
	s_cselect_b64 s[18:19], -1, 0                              // 00000000933C: 859280C1
	s_not_b32 s17, s68                                         // 000000009340: BE910444
	s_add_u32 s17, s4, s17                                     // 000000009344: 80111104
	s_cmp_eq_u32 s68, s17                                      // 000000009348: BF061144
	s_cselect_b64 s[20:21], -1, 0                              // 00000000934C: 859480C1
	s_or_b64 s[18:19], s[18:19], s[20:21]                      // 000000009350: 87921412
	s_and_b64 s[20:21], s[18:19], exec                         // 000000009354: 86947E12
	s_cbranch_scc0 7                                           // 000000009358: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7878>
	s_add_u32 s2, s2, s14                                      // 00000000935C: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000009360: BF093302
	s_mov_b32 s25, 0                                           // 000000009364: BE990080
	s_cbranch_scc1 605                                         // 000000009368: BF85025D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x81e0>
	s_lshl_b32 s17, s2, 5                                      // 00000000936C: 8E118502
	s_load_dwordx8 s[68:75], s[46:47], s17 offset:0x0          // 000000009370: C00E5117 22000000
	s_waitcnt lgkmcnt(0)                                       // 000000009378: BF8CC07F
	s_add_u32 s28, s38, s72                                    // 00000000937C: 801C4826
	s_addc_u32 s29, s39, s73                                   // 000000009380: 821D4927
	s_add_u32 s80, s40, s72                                    // 000000009384: 80504828
	s_addc_u32 s81, s41, s73                                   // 000000009388: 82514929
	s_not_b32 s17, s68                                         // 00000000938C: BE910444
	s_add_u32 s17, s4, s17                                     // 000000009390: 80111104
	s_and_b64 s[18:19], s[18:19], exec                         // 000000009394: 86927E12
	s_cselect_b32 s17, s17, s68                                // 000000009398: 85114411
	s_lshl_b32 s18, s17, 5                                     // 00000000939C: 8E128511
	s_add_u32 s18, s18, 32                                     // 0000000093A0: 8012A012
	s_mul_i32 s18, s18, s5                                     // 0000000093A4: 92120512
	s_addk_i32 s18, 0x60                                       // 0000000093A8: B7120060
	s_lshr_b32 s18, s18, 7                                     // 0000000093AC: 8F128712
	v_readlane_b32 s19, v255, 1                                // 0000000093B0: D2890013 000103FF
	s_min_u32 s96, s19, s18                                    // 0000000093B8: 83E01213
	s_and_b64 s[18:19], s[10:11], exec                         // 0000000093BC: 86927E0A
	s_cbranch_scc0 84                                          // 0000000093C0: BF840054 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7a14>
	s_lshl_b32 s18, s24, 14                                    // 0000000093C4: 8E128E18
	s_or_b32 s19, s18, s88                                     // 0000000093C8: 87135812
	s_mov_b32 m0, s19                                          // 0000000093CC: BEFC0013
	v_readlane_b32 s20, v255, 11                               // 0000000093D0: D2890014 000117FF
	buffer_load_dwordx4 v233, s[28:31], 0 offen lds            // 0000000093D8: E05D1000 800700E9
	s_add_u32 m0, s19, 0x1000                                  // 0000000093E0: 807CFF13 00001000
	s_mov_b32 s82, s30                                         // 0000000093E8: BED2001E
	s_mov_b32 s83, s31                                         // 0000000093EC: BED3001F
	s_nop 0                                                    // 0000000093F0: BF800000
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 0000000093F4: E05D1000 140700E9
	s_or_b32 m0, s19, 0x2000                                   // 0000000093FC: 877CFF13 00002000
	v_readlane_b32 s20, v255, 12                               // 000000009404: D2890014 000119FF
	s_nop 4                                                    // 00000000940C: BF800004
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000009410: E05D1000 140700E9
	s_add_u32 m0, s19, 0x3000                                  // 000000009418: 807CFF13 00003000
	s_mul_i32 s19, s8, 0x60                                    // 000000009420: 9213FF08 00000060
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000009428: E05D1000 130700E9
	s_add_u32 s19, s92, s18                                    // 000000009430: 8013125C
	s_add_u32 m0, s19, s88                                     // 000000009434: 807C5813
	s_nop 0                                                    // 000000009438: BF800000
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 00000000943C: E05D1000 801400EB
	s_add_u32 s19, s92, s18                                    // 000000009444: 8013125C
	s_add_u32 s19, s19, s88                                    // 000000009448: 80135813
	s_add_u32 m0, s19, 0x1000                                  // 00000000944C: 807CFF13 00001000
	s_nop 0                                                    // 000000009454: BF800000
	buffer_load_dwordx4 v235, s[80:83], s20 offen lds          // 000000009458: E05D1000 141400EB
	s_add_u32 s19, s92, s18                                    // 000000009460: 8013125C
	s_add_u32 s19, s19, s88                                    // 000000009464: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 000000009468: 807CFF13 00002000
	v_readlane_b32 s19, v255, 13                               // 000000009470: D2890013 00011BFF
	s_nop 4                                                    // 000000009478: BF800004
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 00000000947C: E05D1000 131400EB
	s_add_u32 s18, s92, s18                                    // 000000009484: 8012125C
	s_add_u32 s18, s18, s88                                    // 000000009488: 80125812
	s_add_u32 m0, s18, 0x3000                                  // 00000000948C: 807CFF12 00003000
	s_mul_i32 s18, s8, 0x44                                    // 000000009494: 9212FF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 00000000949C: E05D1000 121400EB
	s_cmp_lt_u32 s96, 2                                        // 0000000094A4: BF0A8260
	s_cbranch_scc1 26                                          // 0000000094A8: BF85001A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7a14>
	s_add_u32 s18, s24, 1                                      // 0000000094AC: 80128118
	s_and_b32 s18, s18, 3                                      // 0000000094B0: 86128312
	s_lshl_b32 s18, s18, 14                                    // 0000000094B4: 8E128E12
	s_or_b32 s18, s18, s88                                     // 0000000094B8: 87125812
	s_mov_b32 m0, s18                                          // 0000000094BC: BEFC0012
	s_mul_i32 s19, s8, 0xa0                                    // 0000000094C0: 9213FF08 000000A0
	buffer_load_dwordx4 v233, s[28:31], s33 offen lds          // 0000000094C8: E05D1000 210700E9
	s_add_u32 m0, s18, 0x1000                                  // 0000000094D0: 807CFF12 00001000
	s_nop 0                                                    // 0000000094D8: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 0000000094DC: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 0000000094E4: 877CFF12 00002000
	s_mul_i32 s19, s8, 0xc0                                    // 0000000094EC: 9213FF08 000000C0
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 0000000094F4: E05D1000 130700E9
	s_add_u32 m0, s18, 0x3000                                  // 0000000094FC: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xe0                                    // 000000009504: 9212FF08 000000E0
	buffer_load_dwordx4 v233, s[28:31], s18 offen lds          // 00000000950C: E05D1000 120700E9
	v_readlane_b32 s18, v255, 7                                // 000000009514: D2890012 00010FFF
	s_add_u32 s22, s18, s70                                    // 00000000951C: 80164612
	v_readlane_b32 s18, v255, 8                                // 000000009520: D2890012 000111FF
	s_addc_u32 s23, s18, s71                                   // 000000009528: 82174712
	v_readlane_b32 s18, v255, 9                                // 00000000952C: D2890012 000113FF
	s_add_u32 s20, s18, s74                                    // 000000009534: 80144A12
	v_readlane_b32 s18, v255, 10                               // 000000009538: D2890012 000115FF
	s_addc_u32 s21, s18, s75                                   // 000000009540: 82154B12
	v_readlane_b32 s18, v255, 2                                // 000000009544: D2890012 000105FF
	s_add_u32 s18, s69, s18                                    // 00000000954C: 80121245
	s_lshl_b32 s18, s18, 2                                     // 000000009550: 8E128212
	s_add_u32 s26, s44, s18                                    // 000000009554: 801A122C
	v_readlane_b32 s18, v255, 3                                // 000000009558: D2890012 000107FF
	s_addc_u32 s27, s45, 0                                     // 000000009560: 821B802D
	v_readlane_b32 s19, v255, 4                                // 000000009564: D2890013 000109FF
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000956C: 86927E12
	s_cselect_b32 s18, 0, s26                                  // 000000009570: 85121A80
	s_mul_i32 s17, s17, s5                                     // 000000009574: 92110511
	v_readlane_b32 s26, v255, 0                                // 000000009578: D289001A 000101FF
	s_cselect_b32 s19, 0, s27                                  // 000000009580: 85131B80
	s_add_u32 s26, s17, s26                                    // 000000009584: 801A1A11
	s_lshl_b32 s17, s26, 5                                     // 000000009588: 8E11851A
	s_bfe_u32 s79, s26, 0x190002                               // 00000000958C: 92CFFF1A 00190002
	v_or_b32_e32 v80, s17, v216                                // 000000009594: 28A1B011
	v_mul_lo_u32 v80, v80, s7                                  // 000000009598: D2850050 00000F50
	scratch_load_dword v81, off, off offset:36                 // 0000000095A0: DC504024 517F0000
	s_waitcnt vmcnt(0)                                         // 0000000095A8: BF8C0F70
	v_add_u32_e32 v80, v81, v80                                // 0000000095AC: 68A0A151
	global_load_dwordx4 v[220:223], v80, s[22:23]              // 0000000095B0: DC5C8000 DC160050
	global_load_dwordx4 v[224:227], v80, s[22:23] offset:16    // 0000000095B8: DC5C8010 E0160050
	global_load_dwordx4 v[200:203], v80, s[22:23] offset:64    // 0000000095C0: DC5C8040 C8160050
	global_load_dwordx4 v[204:207], v80, s[22:23] offset:80    // 0000000095C8: DC5C8050 CC160050
	s_mov_b32 s83, 0x110000                                    // 0000000095D0: BED300FF 00110000
	s_mov_b32 s22, 1                                           // 0000000095D8: BE960081
	s_mov_b32 s42, 0x110000                                    // 0000000095DC: BEAA00FF 00110000
	s_branch 450                                               // 0000000095E4: BF8201C2 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x81f0>
	s_setprio 0                                                // 0000000095E8: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 0000000095EC: D1CB0070 0663DF70
	v_fma_f32 v96, v96, v239, v152                             // 0000000095F4: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 0000000095FC: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 000000009604: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 00000000960C: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 000000009614: D1CB0068 0663DF68
	v_fma_f32 v124, v124, v239, v152                           // 00000000961C: D1CB007C 0663DF7C
	v_fma_f32 v108, v108, v239, v152                           // 000000009624: D1CB006C 0663DF6C
	v_fma_f32 v80, v80, v239, v150                             // 00000000962C: D1CB0050 065BDF50
	v_fma_f32 v64, v64, v239, v150                             // 000000009634: D1CB0040 065BDF40
	v_fma_f32 v84, v84, v239, v150                             // 00000000963C: D1CB0054 065BDF54
	v_fma_f32 v68, v68, v239, v150                             // 000000009644: D1CB0044 065BDF44
	v_fma_f32 v88, v88, v239, v150                             // 00000000964C: D1CB0058 065BDF58
	v_fma_f32 v72, v72, v239, v150                             // 000000009654: D1CB0048 065BDF48
	v_fma_f32 v128, v75, v239, v150                            // 00000000965C: D1CB0080 065BDF4B
	v_fma_f32 v75, v92, v239, v150                             // 000000009664: D1CB004B 065BDF5C
	v_fma_f32 v76, v76, v239, v150                             // 00000000966C: D1CB004C 065BDF4C
	v_fma_f32 v113, v113, v239, v152                           // 000000009674: D1CB0071 0663DF71
	v_fma_f32 v97, v97, v239, v152                             // 00000000967C: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 000000009684: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 00000000968C: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 000000009694: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 00000000969C: D1CB0069 0663DF69
	v_fma_f32 v125, v125, v239, v152                           // 0000000096A4: D1CB007D 0663DF7D
	v_fma_f32 v109, v109, v239, v152                           // 0000000096AC: D1CB006D 0663DF6D
	v_fma_f32 v81, v81, v239, v150                             // 0000000096B4: D1CB0051 065BDF51
	v_fma_f32 v65, v65, v239, v150                             // 0000000096BC: D1CB0041 065BDF41
	v_fma_f32 v85, v85, v239, v150                             // 0000000096C4: D1CB0055 065BDF55
	v_fma_f32 v69, v69, v239, v150                             // 0000000096CC: D1CB0045 065BDF45
	v_fma_f32 v89, v89, v239, v150                             // 0000000096D4: D1CB0059 065BDF59
	v_fma_f32 v73, v73, v239, v150                             // 0000000096DC: D1CB0049 065BDF49
	v_fma_f32 v92, v93, v239, v150                             // 0000000096E4: D1CB005C 065BDF5D
	v_fma_f32 v93, v94, v239, v150                             // 0000000096EC: D1CB005D 065BDF5E
	v_fma_f32 v94, v95, v239, v150                             // 0000000096F4: D1CB005E 065BDF5F
	v_fma_f32 v77, v77, v239, v150                             // 0000000096FC: D1CB004D 065BDF4D
	v_fma_f32 v95, v79, v239, v150                             // 000000009704: D1CB005F 065BDF4F
	v_cvt_pk_u8_f32 v79, v112, 0, 0                            // 00000000970C: D1DD004F 02010170
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000009714: D1DD0060 02010160
	v_cvt_pk_u8_f32 v112, v116, 0, 0                           // 00000000971C: D1DD0070 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000009724: D1DD0064 02010164
	v_cvt_pk_u8_f32 v116, v120, 0, 0                           // 00000000972C: D1DD0074 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000009734: D1DD0068 02010168
	v_cvt_pk_u8_f32 v120, v124, 0, 0                           // 00000000973C: D1DD0078 0201017C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000009744: D1DD006C 0201016C
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 00000000974C: D1DD0050 02010150
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000009754: D1DD0040 02010140
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 00000000975C: D1DD0054 02010154
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000009764: D1DD0044 02010144
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 00000000976C: D1DD0058 02010158
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000009774: D1DD0048 02010148
	v_cvt_pk_u8_f32 v75, v75, 0, 0                             // 00000000977C: D1DD004B 0201014B
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000009784: D1DD004C 0201014C
	v_fma_f32 v114, v114, v239, v152                           // 00000000978C: D1CB0072 0663DF72
	v_fma_f32 v98, v98, v239, v152                             // 000000009794: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 00000000979C: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 0000000097A4: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 0000000097AC: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 0000000097B4: D1CB006A 0663DF6A
	v_fma_f32 v126, v126, v239, v152                           // 0000000097BC: D1CB007E 0663DF7E
	v_fma_f32 v110, v110, v239, v152                           // 0000000097C4: D1CB006E 0663DF6E
	v_fma_f32 v82, v82, v239, v150                             // 0000000097CC: D1CB0052 065BDF52
	v_fma_f32 v66, v66, v239, v150                             // 0000000097D4: D1CB0042 065BDF42
	v_fma_f32 v86, v86, v239, v150                             // 0000000097DC: D1CB0056 065BDF56
	v_fma_f32 v70, v70, v239, v150                             // 0000000097E4: D1CB0046 065BDF46
	v_fma_f32 v90, v90, v239, v150                             // 0000000097EC: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 0000000097F4: D1CB004A 065BDF4A
	v_fma_f32 v78, v78, v239, v150                             // 0000000097FC: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v79, v113, 1, v79                          // 000000009804: D1DD004F 053D0371
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 00000000980C: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v112                         // 000000009814: D1DD0061 05C10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 00000000981C: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v116                        // 000000009824: D1DD0065 05D10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 00000000982C: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v105, v125, 1, v120                        // 000000009834: D1DD0069 05E1037D
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 00000000983C: D1DD006C 05B1036D
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000009844: D1DD0050 05410351
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 00000000984C: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 000000009854: D1DD0041 05510355
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 00000000985C: D1DD0044 05110345
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 000000009864: D1DD0045 05610359
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 00000000986C: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v92, 1, v75                           // 000000009874: D1DD0049 052D035C
	v_cvt_pk_u8_f32 v75, v77, 1, v76                           // 00000000987C: D1DD004B 0531034D
	v_fma_f32 v115, v115, v239, v152                           // 000000009884: D1CB0073 0663DF73
	v_fma_f32 v99, v99, v239, v152                             // 00000000988C: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 000000009894: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 00000000989C: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 0000000098A4: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 0000000098AC: D1CB006B 0663DF6B
	v_fma_f32 v127, v127, v239, v152                           // 0000000098B4: D1CB007F 0663DF7F
	v_fma_f32 v111, v111, v239, v152                           // 0000000098BC: D1CB006F 0663DF6F
	v_fma_f32 v83, v83, v239, v150                             // 0000000098C4: D1CB0053 065BDF53
	v_fma_f32 v67, v67, v239, v150                             // 0000000098CC: D1CB0043 065BDF43
	v_fma_f32 v87, v87, v239, v150                             // 0000000098D4: D1CB0057 065BDF57
	v_fma_f32 v71, v71, v239, v150                             // 0000000098DC: D1CB0047 065BDF47
	v_fma_f32 v91, v91, v239, v150                             // 0000000098E4: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v76, v114, 2, v79                          // 0000000098EC: D1DD004C 053D0572
	v_cvt_pk_u8_f32 v77, v98, 2, v96                           // 0000000098F4: D1DD004D 05810562
	v_cvt_pk_u8_f32 v79, v118, 2, v97                          // 0000000098FC: D1DD004F 05850576
	v_cvt_pk_u8_f32 v81, v102, 2, v100                         // 000000009904: D1DD0051 05910566
	v_cvt_pk_u8_f32 v84, v122, 2, v101                         // 00000000990C: D1DD0054 0595057A
	v_cvt_pk_u8_f32 v85, v106, 2, v104                         // 000000009914: D1DD0055 05A1056A
	v_cvt_pk_u8_f32 v88, v126, 2, v105                         // 00000000991C: D1DD0058 05A5057E
	v_cvt_pk_u8_f32 v89, v110, 2, v108                         // 000000009924: D1DD0059 05B1056E
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 00000000992C: D1DD0050 05410552
	v_cvt_pk_u8_f32 v66, v66, 2, v64                           // 000000009934: D1DD0042 05010542
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 00000000993C: D1DD0041 05050556
	v_cvt_pk_u8_f32 v70, v70, 2, v68                           // 000000009944: D1DD0046 05110546
	v_cvt_pk_u8_f32 v82, v90, 2, v69                           // 00000000994C: D1DD0052 0515055A
	v_cvt_pk_u8_f32 v86, v74, 2, v72                           // 000000009954: D1DD0056 0521054A
	v_cvt_pk_u8_f32 v90, v93, 2, v73                           // 00000000995C: D1DD005A 0525055D
	v_cvt_pk_u8_f32 v92, v78, 2, v75                           // 000000009964: D1DD005C 052D054E
	s_mov_b32 s25, 1                                           // 00000000996C: BE990081
	v_cvt_pk_u8_f32 v72, v115, 3, v76                          // 000000009970: D1DD0048 05310773
	v_cvt_pk_u8_f32 v76, v99, 3, v77                           // 000000009978: D1DD004C 05350763
	v_cvt_pk_u8_f32 v73, v119, 3, v79                          // 000000009980: D1DD0049 053D0777
	v_cvt_pk_u8_f32 v77, v103, 3, v81                          // 000000009988: D1DD004D 05450767
	v_cvt_pk_u8_f32 v74, v123, 3, v84                          // 000000009990: D1DD004A 0551077B
	v_cvt_pk_u8_f32 v78, v107, 3, v85                          // 000000009998: D1DD004E 0555076B
	v_cvt_pk_u8_f32 v75, v127, 3, v88                          // 0000000099A0: D1DD004B 0561077F
	v_cvt_pk_u8_f32 v79, v111, 3, v89                          // 0000000099A8: D1DD004F 0565076F
	v_cvt_pk_u8_f32 v64, v83, 3, v80                           // 0000000099B0: D1DD0040 05410753
	v_cvt_pk_u8_f32 v68, v67, 3, v66                           // 0000000099B8: D1DD0044 05090743
	v_cvt_pk_u8_f32 v65, v87, 3, v65                           // 0000000099C0: D1DD0041 05050757
	v_cvt_pk_u8_f32 v69, v71, 3, v70                           // 0000000099C8: D1DD0045 05190747
	v_cvt_pk_u8_f32 v66, v91, 3, v82                           // 0000000099D0: D1DD0042 0549075B
	v_cvt_pk_u8_f32 v70, v128, 3, v86                          // 0000000099D8: D1DD0046 05590780
	v_cvt_pk_u8_f32 v67, v94, 3, v90                           // 0000000099E0: D1DD0043 0569075E
	v_cvt_pk_u8_f32 v71, v95, 3, v92                           // 0000000099E8: D1DD0047 0571075F
	s_waitcnt vmcnt(0)                                         // 0000000099F0: BF8C0F70
	s_barrier                                                  // 0000000099F4: BF8A0000
	s_add_u32 s17, s96, s78                                    // 0000000099F8: 80114E60
	s_and_b32 s24, s17, 3                                      // 0000000099FC: 86188311
	s_cmp_lg_u32 s77, 0                                        // 000000009A00: BF07804D
	s_cselect_b64 s[18:19], -1, 0                              // 000000009A04: 859280C1
	s_not_b32 s17, s68                                         // 000000009A08: BE910444
	s_add_u32 s17, s4, s17                                     // 000000009A0C: 80111104
	s_cmp_eq_u32 s68, s17                                      // 000000009A10: BF061144
	s_cselect_b64 s[20:21], -1, 0                              // 000000009A14: 859480C1
	s_or_b64 s[18:19], s[18:19], s[20:21]                      // 000000009A18: 87921412
	s_and_b64 s[20:21], s[18:19], exec                         // 000000009A1C: 86947E12
	s_cbranch_scc0 7                                           // 000000009A20: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7f40>
	s_add_u32 s2, s2, s14                                      // 000000009A24: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000009A28: BF093302
	s_mov_b32 s25, 0                                           // 000000009A2C: BE990080
	s_cbranch_scc1 320                                         // 000000009A30: BF850140 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8434>
	s_lshl_b32 s17, s2, 5                                      // 000000009A34: 8E118502
	s_load_dwordx8 s[68:75], s[46:47], s17 offset:0x0          // 000000009A38: C00E5117 22000000
	s_waitcnt lgkmcnt(0)                                       // 000000009A40: BF8CC07F
	s_add_u32 s28, s38, s72                                    // 000000009A44: 801C4826
	s_addc_u32 s29, s39, s73                                   // 000000009A48: 821D4927
	s_add_u32 s80, s40, s72                                    // 000000009A4C: 80504828
	s_addc_u32 s81, s41, s73                                   // 000000009A50: 82514929
	s_not_b32 s17, s68                                         // 000000009A54: BE910444
	s_add_u32 s17, s4, s17                                     // 000000009A58: 80111104
	s_and_b64 s[18:19], s[18:19], exec                         // 000000009A5C: 86927E12
	s_cselect_b32 s17, s17, s68                                // 000000009A60: 85114411
	s_lshl_b32 s18, s17, 5                                     // 000000009A64: 8E128511
	s_add_u32 s18, s18, 32                                     // 000000009A68: 8012A012
	s_mul_i32 s18, s18, s5                                     // 000000009A6C: 92120512
	s_addk_i32 s18, 0x60                                       // 000000009A70: B7120060
	s_lshr_b32 s18, s18, 7                                     // 000000009A74: 8F128712
	v_readlane_b32 s19, v255, 1                                // 000000009A78: D2890013 000103FF
	s_min_u32 s96, s19, s18                                    // 000000009A80: 83E01213
	s_and_b64 s[18:19], s[10:11], exec                         // 000000009A84: 86927E0A
	s_cbranch_scc0 84                                          // 000000009A88: BF840054 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x80dc>
	s_lshl_b32 s18, s24, 14                                    // 000000009A8C: 8E128E18
	s_or_b32 s19, s18, s88                                     // 000000009A90: 87135812
	s_mov_b32 m0, s19                                          // 000000009A94: BEFC0013
	v_readlane_b32 s20, v255, 11                               // 000000009A98: D2890014 000117FF
	buffer_load_dwordx4 v233, s[28:31], 0 offen lds            // 000000009AA0: E05D1000 800700E9
	s_add_u32 m0, s19, 0x1000                                  // 000000009AA8: 807CFF13 00001000
	s_mov_b32 s82, s30                                         // 000000009AB0: BED2001E
	s_mov_b32 s83, s31                                         // 000000009AB4: BED3001F
	s_nop 0                                                    // 000000009AB8: BF800000
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000009ABC: E05D1000 140700E9
	s_or_b32 m0, s19, 0x2000                                   // 000000009AC4: 877CFF13 00002000
	v_readlane_b32 s20, v255, 12                               // 000000009ACC: D2890014 000119FF
	s_nop 4                                                    // 000000009AD4: BF800004
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000009AD8: E05D1000 140700E9
	s_add_u32 m0, s19, 0x3000                                  // 000000009AE0: 807CFF13 00003000
	s_mul_i32 s19, s8, 0x60                                    // 000000009AE8: 9213FF08 00000060
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000009AF0: E05D1000 130700E9
	s_add_u32 s19, s92, s18                                    // 000000009AF8: 8013125C
	s_add_u32 m0, s19, s88                                     // 000000009AFC: 807C5813
	s_nop 0                                                    // 000000009B00: BF800000
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 000000009B04: E05D1000 801400EB
	s_add_u32 s19, s92, s18                                    // 000000009B0C: 8013125C
	s_add_u32 s19, s19, s88                                    // 000000009B10: 80135813
	s_add_u32 m0, s19, 0x1000                                  // 000000009B14: 807CFF13 00001000
	s_nop 0                                                    // 000000009B1C: BF800000
	buffer_load_dwordx4 v235, s[80:83], s20 offen lds          // 000000009B20: E05D1000 141400EB
	s_add_u32 s19, s92, s18                                    // 000000009B28: 8013125C
	s_add_u32 s19, s19, s88                                    // 000000009B2C: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 000000009B30: 807CFF13 00002000
	v_readlane_b32 s19, v255, 13                               // 000000009B38: D2890013 00011BFF
	s_nop 4                                                    // 000000009B40: BF800004
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000009B44: E05D1000 131400EB
	s_add_u32 s18, s92, s18                                    // 000000009B4C: 8012125C
	s_add_u32 s18, s18, s88                                    // 000000009B50: 80125812
	s_add_u32 m0, s18, 0x3000                                  // 000000009B54: 807CFF12 00003000
	s_mul_i32 s18, s8, 0x44                                    // 000000009B5C: 9212FF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000009B64: E05D1000 121400EB
	s_cmp_lt_u32 s96, 2                                        // 000000009B6C: BF0A8260
	s_cbranch_scc1 26                                          // 000000009B70: BF85001A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x80dc>
	s_add_u32 s18, s24, 1                                      // 000000009B74: 80128118
	s_and_b32 s18, s18, 3                                      // 000000009B78: 86128312
	s_lshl_b32 s18, s18, 14                                    // 000000009B7C: 8E128E12
	s_or_b32 s18, s18, s88                                     // 000000009B80: 87125812
	s_mov_b32 m0, s18                                          // 000000009B84: BEFC0012
	s_mul_i32 s19, s8, 0xa0                                    // 000000009B88: 9213FF08 000000A0
	buffer_load_dwordx4 v233, s[28:31], s33 offen lds          // 000000009B90: E05D1000 210700E9
	s_add_u32 m0, s18, 0x1000                                  // 000000009B98: 807CFF12 00001000
	s_nop 0                                                    // 000000009BA0: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000009BA4: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 000000009BAC: 877CFF12 00002000
	s_mul_i32 s19, s8, 0xc0                                    // 000000009BB4: 9213FF08 000000C0
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000009BBC: E05D1000 130700E9
	s_add_u32 m0, s18, 0x3000                                  // 000000009BC4: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xe0                                    // 000000009BCC: 9212FF08 000000E0
	buffer_load_dwordx4 v233, s[28:31], s18 offen lds          // 000000009BD4: E05D1000 120700E9
	v_readlane_b32 s18, v255, 7                                // 000000009BDC: D2890012 00010FFF
	s_add_u32 s22, s18, s70                                    // 000000009BE4: 80164612
	v_readlane_b32 s18, v255, 8                                // 000000009BE8: D2890012 000111FF
	s_addc_u32 s23, s18, s71                                   // 000000009BF0: 82174712
	v_readlane_b32 s18, v255, 9                                // 000000009BF4: D2890012 000113FF
	s_add_u32 s20, s18, s74                                    // 000000009BFC: 80144A12
	v_readlane_b32 s18, v255, 10                               // 000000009C00: D2890012 000115FF
	s_addc_u32 s21, s18, s75                                   // 000000009C08: 82154B12
	v_readlane_b32 s18, v255, 2                                // 000000009C0C: D2890012 000105FF
	s_add_u32 s18, s69, s18                                    // 000000009C14: 80121245
	s_lshl_b32 s18, s18, 2                                     // 000000009C18: 8E128212
	s_add_u32 s26, s44, s18                                    // 000000009C1C: 801A122C
	v_readlane_b32 s18, v255, 3                                // 000000009C20: D2890012 000107FF
	s_addc_u32 s27, s45, 0                                     // 000000009C28: 821B802D
	v_readlane_b32 s19, v255, 4                                // 000000009C2C: D2890013 000109FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000009C34: 86927E12
	s_cselect_b32 s18, 0, s26                                  // 000000009C38: 85121A80
	s_mul_i32 s17, s17, s5                                     // 000000009C3C: 92110511
	v_readlane_b32 s26, v255, 0                                // 000000009C40: D289001A 000101FF
	s_cselect_b32 s19, 0, s27                                  // 000000009C48: 85131B80
	s_add_u32 s26, s17, s26                                    // 000000009C4C: 801A1A11
	s_lshl_b32 s17, s26, 5                                     // 000000009C50: 8E11851A
	s_bfe_u32 s79, s26, 0x190002                               // 000000009C54: 92CFFF1A 00190002
	v_or_b32_e32 v80, s17, v216                                // 000000009C5C: 28A1B011
	v_mul_lo_u32 v80, v80, s7                                  // 000000009C60: D2850050 00000F50
	scratch_load_dword v81, off, off offset:36                 // 000000009C68: DC504024 517F0000
	s_waitcnt vmcnt(0)                                         // 000000009C70: BF8C0F70
	v_add_u32_e32 v80, v81, v80                                // 000000009C74: 68A0A151
	global_load_dwordx4 v[220:223], v80, s[22:23]              // 000000009C78: DC5C8000 DC160050
	global_load_dwordx4 v[224:227], v80, s[22:23] offset:16    // 000000009C80: DC5C8010 E0160050
	global_load_dwordx4 v[200:203], v80, s[22:23] offset:64    // 000000009C88: DC5C8040 C8160050
	global_load_dwordx4 v[204:207], v80, s[22:23] offset:80    // 000000009C90: DC5C8050 CC160050
	s_mov_b32 s83, 0x110000                                    // 000000009C98: BED300FF 00110000
	s_mov_b32 s22, 1                                           // 000000009CA0: BE960081
	s_mov_b32 s42, 0x110000                                    // 000000009CA4: BEAA00FF 00110000
	s_branch 165                                               // 000000009CAC: BF8200A5 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8444>
	s_mov_b32 s77, 0                                           // 000000009CB0: BECD0080
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009CB4: BE940100
	s_mov_b64 s[18:19], s[36:37]                               // 000000009CB8: BE920124
	s_mov_b32 s17, s3                                          // 000000009CBC: BE910003
	s_mov_b32 s22, 0                                           // 000000009CC0: BE960080
	s_branch 149                                               // 000000009CC4: BF820095 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x841c>
	s_mov_b32 s77, 0                                           // 000000009CC8: BECD0080
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009CCC: BE940100
	s_mov_b64 s[18:19], s[36:37]                               // 000000009CD0: BE920124
	s_mov_b32 s17, s3                                          // 000000009CD4: BE910003
	s_mov_b32 s22, 0                                           // 000000009CD8: BE960080
	s_branch 292                                               // 000000009CDC: BF820124 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8670>
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009CE0: BE940100
	s_mov_b64 s[18:19], s[36:37]                               // 000000009CE4: BE920124
	s_mov_b32 s17, s3                                          // 000000009CE8: BE910003
	s_mov_b32 s22, 0                                           // 000000009CEC: BE960080
	s_setprio 1                                                // 000000009CF0: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[72:79], 0// 000000009CF4: D3AD0050 020291C0
	s_nop 11                                                   // 000000009CFC: BF80000B
	v_mul_f32_e32 v80, v154, v80                               // 000000009D00: 0AA0A19A
	v_add_f32_e32 v84, v250, v80                               // 000000009D04: 02A8A1FA
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[64:71], 0// 000000009D08: D3AD0050 020281C0
	s_add_u32 s23, s43, s78                                    // 000000009D10: 80174E2B
	s_nop 10                                                   // 000000009D14: BF80000A
	v_mul_f32_e32 v80, v155, v80                               // 000000009D18: 0AA0A19B
	s_and_b32 s23, s23, 3                                      // 000000009D1C: 86178317
	v_add_f32_e32 v250, v84, v80                               // 000000009D20: 03F4A154
	s_lshl_b32 s23, s23, 14                                    // 000000009D24: 8E178E17
	s_add_u32 s26, s92, s23                                    // 000000009D28: 801A175C
	v_add3_u32 v80, s26, v245, v244                            // 000000009D2C: D1FF0050 07D3EA1A
	ds_read_b64_tr_b8 v[82:83], v80                            // 000000009D34: D9C40000 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1024                // 000000009D3C: D9C40400 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2048                // 000000009D44: D9C40800 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3072                // 000000009D4C: D9C40C00 58000050
	s_add_u32 s26, s92, s23                                    // 000000009D54: 801A175C
	v_add3_u32 v80, s26, v245, v244                            // 000000009D58: D1FF0050 07D3EA1A
	ds_read_b64_tr_b8 v[90:91], v80 offset:256                 // 000000009D60: D9C40100 5A000050
	ds_read_b64_tr_b8 v[92:93], v80 offset:1280                // 000000009D68: D9C40500 5C000050
	ds_read_b64_tr_b8 v[94:95], v80 offset:2304                // 000000009D70: D9C40900 5E000050
	ds_read_b64_tr_b8 v[96:97], v80 offset:3328                // 000000009D78: D9C40D00 60000050
	s_add_u32 s26, s92, s23                                    // 000000009D80: 801A175C
	v_add3_u32 v80, s26, v245, v244                            // 000000009D84: D1FF0050 07D3EA1A
	ds_read_b64_tr_b8 v[98:99], v80 offset:512                 // 000000009D8C: D9C40200 62000050
	ds_read_b64_tr_b8 v[100:101], v80 offset:1536              // 000000009D94: D9C40600 64000050
	ds_read_b64_tr_b8 v[102:103], v80 offset:2560              // 000000009D9C: D9C40A00 66000050
	ds_read_b64_tr_b8 v[104:105], v80 offset:3584              // 000000009DA4: D9C40E00 68000050
	s_waitcnt lgkmcnt(4)                                       // 000000009DAC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[82:89], v[72:79], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000009DB0: D3AC0000 0003F7F2 D3AE0830 04C29152
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[90:97], v[72:79], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000009DC0: D3AC0000 0003F7F2 D3AE0820 0482915A
	s_add_u32 s26, s92, s23                                    // 000000009DD0: 801A175C
	v_add3_u32 v80, s26, v245, v244                            // 000000009DD4: D1FF0050 07D3EA1A
	ds_read_b64_tr_b8 v[82:83], v80 offset:768                 // 000000009DDC: D9C40300 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1792                // 000000009DE4: D9C40700 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2816                // 000000009DEC: D9C40B00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3840                // 000000009DF4: D9C40F00 58000050
	s_add_u32 s26, s92, s23                                    // 000000009DFC: 801A175C
	v_add3_u32 v80, s26, v245, v244                            // 000000009E00: D1FF0050 07D3EA1A
	ds_read_b64_tr_b8 v[90:91], v80 offset:4096                // 000000009E08: D9C41000 5A000050
	ds_read_b64_tr_b8 v[92:93], v80 offset:5120                // 000000009E10: D9C41400 5C000050
	ds_read_b64_tr_b8 v[94:95], v80 offset:6144                // 000000009E18: D9C41800 5E000050
	ds_read_b64_tr_b8 v[96:97], v80 offset:7168                // 000000009E20: D9C41C00 60000050
	s_waitcnt lgkmcnt(4)                                       // 000000009E28: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[98:105], v[72:79], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000009E2C: D3AC0000 0003F7F2 D3AE0810 04429162
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[82:89], v[72:79], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000009E3C: D3AC0000 0003F7F2 D3AE0800 04029152
	s_add_u32 s26, s92, s23                                    // 000000009E4C: 801A175C
	v_add3_u32 v80, s26, v245, v244                            // 000000009E50: D1FF0050 07D3EA1A
	ds_read_b64_tr_b8 v[98:99], v80 offset:4352                // 000000009E58: D9C41100 62000050
	ds_read_b64_tr_b8 v[100:101], v80 offset:5376              // 000000009E60: D9C41500 64000050
	ds_read_b64_tr_b8 v[102:103], v80 offset:6400              // 000000009E68: D9C41900 66000050
	ds_read_b64_tr_b8 v[104:105], v80 offset:7424              // 000000009E70: D9C41D00 68000050
	s_add_u32 s26, s92, s23                                    // 000000009E78: 801A175C
	v_add3_u32 v72, s26, v245, v244                            // 000000009E7C: D1FF0048 07D3EA1A
	ds_read_b64_tr_b8 v[74:75], v72 offset:4608                // 000000009E84: D9C41200 4A000048
	ds_read_b64_tr_b8 v[76:77], v72 offset:5632                // 000000009E8C: D9C41600 4C000048
	ds_read_b64_tr_b8 v[78:79], v72 offset:6656                // 000000009E94: D9C41A00 4E000048
	ds_read_b64_tr_b8 v[80:81], v72 offset:7680                // 000000009E9C: D9C41E00 50000048
	s_waitcnt lgkmcnt(4)                                       // 000000009EA4: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[90:97], v[64:71], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000009EA8: D3AC0000 0003FBF2 D3AE0830 04C2815A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[98:105], v[64:71], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000009EB8: D3AC0000 0003FBF2 D3AE0820 04828162
	s_add_u32 s23, s92, s23                                    // 000000009EC8: 8017175C
	v_add3_u32 v72, s23, v245, v244                            // 000000009ECC: D1FF0048 07D3EA17
	ds_read_b64_tr_b8 v[82:83], v72 offset:4864                // 000000009ED4: D9C41300 52000048
	ds_read_b64_tr_b8 v[84:85], v72 offset:5888                // 000000009EDC: D9C41700 54000048
	ds_read_b64_tr_b8 v[86:87], v72 offset:6912                // 000000009EE4: D9C41B00 56000048
	ds_read_b64_tr_b8 v[88:89], v72 offset:7936                // 000000009EEC: D9C41F00 58000048
	s_waitcnt lgkmcnt(0)                                       // 000000009EF4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[74:81], v[64:71], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000009EF8: D3AC0000 0003FBF2 D3AE0810 0442814A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[82:89], v[64:71], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000009F08: D3AC0000 0003FBF2 D3AE0800 04028152
	s_mov_b32 s77, s25                                         // 000000009F18: BECD0019
	s_waitcnt vmcnt(4)                                         // 000000009F1C: BF8C0F74
	s_barrier                                                  // 000000009F20: BF8A0000
	s_mov_b32 s78, s24                                         // 000000009F24: BECE0018
	s_cmp_eq_u32 s22, 0                                        // 000000009F28: BF068016
	s_cbranch_scc0 149                                         // 000000009F2C: BF840095 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8684>
	s_branch 414                                               // 000000009F30: BF82019E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8aac>
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009F34: BE940100
	s_mov_b64 s[18:19], s[36:37]                               // 000000009F38: BE920124
	s_mov_b32 s17, s3                                          // 000000009F3C: BE910003
	s_mov_b32 s22, 0                                           // 000000009F40: BE960080
	s_setprio 1                                                // 000000009F44: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[72:79], 0// 000000009F48: D3AD0050 020291C0
	s_nop 11                                                   // 000000009F50: BF80000B
	v_mul_f32_e32 v80, v154, v80                               // 000000009F54: 0AA0A19A
	v_add_f32_e32 v84, v250, v80                               // 000000009F58: 02A8A1FA
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[64:71], 0// 000000009F5C: D3AD0050 020281C0
	s_add_u32 s23, s43, s78                                    // 000000009F64: 80174E2B
	s_nop 10                                                   // 000000009F68: BF80000A
	v_mul_f32_e32 v80, v155, v80                               // 000000009F6C: 0AA0A19B
	s_and_b32 s23, s23, 3                                      // 000000009F70: 86178317
	v_add_f32_e32 v250, v84, v80                               // 000000009F74: 03F4A154
	s_lshl_b32 s23, s23, 14                                    // 000000009F78: 8E178E17
	s_add_u32 s26, s92, s23                                    // 000000009F7C: 801A175C
	v_add3_u32 v80, s26, v245, v244                            // 000000009F80: D1FF0050 07D3EA1A
	ds_read_b64_tr_b8 v[82:83], v80                            // 000000009F88: D9C40000 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1024                // 000000009F90: D9C40400 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2048                // 000000009F98: D9C40800 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3072                // 000000009FA0: D9C40C00 58000050
	s_add_u32 s26, s92, s23                                    // 000000009FA8: 801A175C
	v_add3_u32 v80, s26, v245, v244                            // 000000009FAC: D1FF0050 07D3EA1A
	ds_read_b64_tr_b8 v[90:91], v80 offset:256                 // 000000009FB4: D9C40100 5A000050
	ds_read_b64_tr_b8 v[92:93], v80 offset:1280                // 000000009FBC: D9C40500 5C000050
	ds_read_b64_tr_b8 v[94:95], v80 offset:2304                // 000000009FC4: D9C40900 5E000050
	ds_read_b64_tr_b8 v[96:97], v80 offset:3328                // 000000009FCC: D9C40D00 60000050
	s_add_u32 s26, s92, s23                                    // 000000009FD4: 801A175C
	v_add3_u32 v80, s26, v245, v244                            // 000000009FD8: D1FF0050 07D3EA1A
	ds_read_b64_tr_b8 v[98:99], v80 offset:512                 // 000000009FE0: D9C40200 62000050
	ds_read_b64_tr_b8 v[100:101], v80 offset:1536              // 000000009FE8: D9C40600 64000050
	ds_read_b64_tr_b8 v[102:103], v80 offset:2560              // 000000009FF0: D9C40A00 66000050
	ds_read_b64_tr_b8 v[104:105], v80 offset:3584              // 000000009FF8: D9C40E00 68000050
	s_waitcnt lgkmcnt(4)                                       // 00000000A000: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[82:89], v[72:79], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 00000000A004: D3AC0000 0003F7F2 D3AE0830 04C29152
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[90:97], v[72:79], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 00000000A014: D3AC0000 0003F7F2 D3AE0820 0482915A
	s_add_u32 s26, s92, s23                                    // 00000000A024: 801A175C
	v_add3_u32 v80, s26, v245, v244                            // 00000000A028: D1FF0050 07D3EA1A
	ds_read_b64_tr_b8 v[82:83], v80 offset:768                 // 00000000A030: D9C40300 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1792                // 00000000A038: D9C40700 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2816                // 00000000A040: D9C40B00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3840                // 00000000A048: D9C40F00 58000050
	s_add_u32 s26, s92, s23                                    // 00000000A050: 801A175C
	v_add3_u32 v80, s26, v245, v244                            // 00000000A054: D1FF0050 07D3EA1A
	ds_read_b64_tr_b8 v[90:91], v80 offset:4096                // 00000000A05C: D9C41000 5A000050
	ds_read_b64_tr_b8 v[92:93], v80 offset:5120                // 00000000A064: D9C41400 5C000050
	ds_read_b64_tr_b8 v[94:95], v80 offset:6144                // 00000000A06C: D9C41800 5E000050
	ds_read_b64_tr_b8 v[96:97], v80 offset:7168                // 00000000A074: D9C41C00 60000050
	s_waitcnt lgkmcnt(4)                                       // 00000000A07C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[98:105], v[72:79], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 00000000A080: D3AC0000 0003F7F2 D3AE0810 04429162
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[82:89], v[72:79], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 00000000A090: D3AC0000 0003F7F2 D3AE0800 04029152
	s_add_u32 s26, s92, s23                                    // 00000000A0A0: 801A175C
	v_add3_u32 v80, s26, v245, v244                            // 00000000A0A4: D1FF0050 07D3EA1A
	ds_read_b64_tr_b8 v[98:99], v80 offset:4352                // 00000000A0AC: D9C41100 62000050
	ds_read_b64_tr_b8 v[100:101], v80 offset:5376              // 00000000A0B4: D9C41500 64000050
	ds_read_b64_tr_b8 v[102:103], v80 offset:6400              // 00000000A0BC: D9C41900 66000050
	ds_read_b64_tr_b8 v[104:105], v80 offset:7424              // 00000000A0C4: D9C41D00 68000050
	s_add_u32 s26, s92, s23                                    // 00000000A0CC: 801A175C
	v_add3_u32 v72, s26, v245, v244                            // 00000000A0D0: D1FF0048 07D3EA1A
	ds_read_b64_tr_b8 v[74:75], v72 offset:4608                // 00000000A0D8: D9C41200 4A000048
	ds_read_b64_tr_b8 v[76:77], v72 offset:5632                // 00000000A0E0: D9C41600 4C000048
	ds_read_b64_tr_b8 v[78:79], v72 offset:6656                // 00000000A0E8: D9C41A00 4E000048
	ds_read_b64_tr_b8 v[80:81], v72 offset:7680                // 00000000A0F0: D9C41E00 50000048
	s_waitcnt lgkmcnt(4)                                       // 00000000A0F8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[90:97], v[64:71], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 00000000A0FC: D3AC0000 0003FBF2 D3AE0830 04C2815A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[98:105], v[64:71], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 00000000A10C: D3AC0000 0003FBF2 D3AE0820 04828162
	s_add_u32 s23, s92, s23                                    // 00000000A11C: 8017175C
	v_add3_u32 v72, s23, v245, v244                            // 00000000A120: D1FF0048 07D3EA17
	ds_read_b64_tr_b8 v[82:83], v72 offset:4864                // 00000000A128: D9C41300 52000048
	ds_read_b64_tr_b8 v[84:85], v72 offset:5888                // 00000000A130: D9C41700 54000048
	ds_read_b64_tr_b8 v[86:87], v72 offset:6912                // 00000000A138: D9C41B00 56000048
	ds_read_b64_tr_b8 v[88:89], v72 offset:7936                // 00000000A140: D9C41F00 58000048
	s_waitcnt lgkmcnt(0)                                       // 00000000A148: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[74:81], v[64:71], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 00000000A14C: D3AC0000 0003FBF2 D3AE0810 0442814A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[82:89], v[64:71], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 00000000A15C: D3AC0000 0003FBF2 D3AE0800 04028152
	s_mov_b32 s77, s25                                         // 00000000A16C: BECD0019
	s_waitcnt vmcnt(4)                                         // 00000000A170: BF8C0F74
	s_barrier                                                  // 00000000A174: BF8A0000
	s_mov_b32 s78, s24                                         // 00000000A178: BECE0018
	s_cmp_eq_u32 s22, 0                                        // 00000000A17C: BF068016
	s_cbranch_scc1 266                                         // 00000000A180: BF85010A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8aac>
	s_nop 15                                                   // 00000000A184: BF80000F
	s_nop 3                                                    // 00000000A188: BF800003
	v_rcp_f32_e32 v64, v250                                    // 00000000A18C: 7E8045FA
	v_log_f32_e32 v65, v250                                    // 00000000A190: 7E8243FA
	s_nop 1                                                    // 00000000A194: BF800001
	v_mul_f32_e32 v64, v241, v64                               // 00000000A198: 0A8081F1
	v_mul_f32_e32 v48, v48, v64                                // 00000000A19C: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 00000000A1A0: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 00000000A1A4: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 00000000A1A8: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 00000000A1AC: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 00000000A1B0: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 00000000A1B4: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 00000000A1B8: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 00000000A1BC: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 00000000A1C0: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 00000000A1C4: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 00000000A1C8: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 00000000A1CC: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 00000000A1D0: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 00000000A1D4: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 00000000A1D8: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 00000000A1DC: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 00000000A1E0: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 00000000A1E4: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 00000000A1E8: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 00000000A1EC: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 00000000A1F0: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 00000000A1F4: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 00000000A1F8: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 00000000A1FC: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 00000000A200: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 00000000A204: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 00000000A208: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 00000000A20C: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 00000000A210: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 00000000A214: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 00000000A218: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 00000000A21C: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 00000000A220: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 00000000A224: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 00000000A228: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 00000000A22C: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 00000000A230: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 00000000A234: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 00000000A238: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 00000000A23C: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 00000000A240: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 00000000A244: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 00000000A248: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 00000000A24C: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 00000000A250: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 00000000A254: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 00000000A258: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 00000000A25C: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 00000000A260: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 00000000A264: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 00000000A268: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 00000000A26C: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 00000000A270: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 00000000A274: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 00000000A278: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 00000000A27C: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 00000000A280: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 00000000A284: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 00000000A288: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 00000000A28C: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 00000000A290: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000A294: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000A298: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000A29C: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000A2A4: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000A2AC: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000A2B4: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000A2BC: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000A2C4: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000A2CC: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000A2D4: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000A2DC: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000A2E4: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000A2EC: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000A2F4: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000A2FC: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000A304: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000A30C: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000A314: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000A31C: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000A324: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000A32C: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000A334: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000A33C: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000A344: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000A34C: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000A354: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000A35C: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000A364: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000A36C: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000A374: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000A37C: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000A384: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000A38C: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000A394: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000A39C: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000A3A0: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000A3A4: 7E000304
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000A3A8: 7E10B509
	v_mov_b32_e32 v1, v2                                       // 00000000A3AC: 7E020302
	v_mov_b32_e32 v2, v5                                       // 00000000A3B0: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000A3B4: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000A3B8: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000A3BC: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000A3C0: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000A3C4: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000A3C8: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000A3CC: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000A3D0: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000A3D4: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000A3D8: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000A3DC: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000A3E0: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000A3E4: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000A3E8: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000A3EC: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000A3F0: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000A3F4: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000A3F8: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000A3FC: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000A400: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000A404: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000A408: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000A40C: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000A410: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000A414: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000A418: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000A41C: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000A420: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000A424: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000A428: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000A42C: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000A430: 7E380320
	v_add_f32_e32 v32, v252, v65                               // 00000000A434: 024083FC
	v_mov_b32_e32 v29, v30                                     // 00000000A438: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000A43C: 7E3C0321
	v_add_f32_e32 v32, -4.0, v32                               // 00000000A440: 024040F7
	v_add_f32_e32 v32, -2.0, v32                               // 00000000A444: 024040F5
	v_mul_f32_e32 v32, 0x3f317218, v32                         // 00000000A448: 0A4040FF 3F317218
	ds_write_b128 v228, v[0:3]                                 // 00000000A450: D9BE0000 000000E4
	ds_write_b128 v230, v[4:7]                                 // 00000000A458: D9BE0000 000004E6
	ds_write_b128 v229, v[8:11]                                // 00000000A460: D9BE0000 000008E5
	v_xor_b32_e32 v0, 0x60, v228                               // 00000000A468: 2A01C8FF 00000060
	ds_write_b128 v0, v[12:15]                                 // 00000000A470: D9BE0000 00000C00
	v_xor_b32_e32 v0, 0x80, v228                               // 00000000A478: 2A01C8FF 00000080
	ds_write_b128 v0, v[16:19]                                 // 00000000A480: D9BE0000 00001000
	v_xor_b32_e32 v0, 0xa0, v228                               // 00000000A488: 2A01C8FF 000000A0
	ds_write_b128 v0, v[20:23]                                 // 00000000A490: D9BE0000 00001400
	v_xor_b32_e32 v0, 0xc0, v228                               // 00000000A498: 2A01C8FF 000000C0
	ds_write_b128 v0, v[24:27]                                 // 00000000A4A0: D9BE0000 00001800
	v_xor_b32_e32 v0, 0xe0, v228                               // 00000000A4A8: 2A01C8FF 000000E0
	ds_write_b128 v0, v[28:31]                                 // 00000000A4B0: D9BE0000 00001C00
	ds_read_b128 v[8:11], v219                                 // 00000000A4B8: D9FE0000 080000DB
	ds_read_b128 v[12:15], v218 offset:1024                    // 00000000A4C0: D9FE0400 0C0000DA
	ds_read_b128 v[16:19], v237 offset:2048                    // 00000000A4C8: D9FE0800 100000ED
	ds_read_b128 v[20:23], v254 offset:3072                    // 00000000A4D0: D9FE0C00 140000FE
	ds_read_b128 v[24:27], v219 offset:4096                    // 00000000A4D8: D9FE1000 180000DB
	ds_read_b128 v[28:31], v218 offset:5120                    // 00000000A4E0: D9FE1400 1C0000DA
	ds_read_b128 v[34:37], v237 offset:6144                    // 00000000A4E8: D9FE1800 220000ED
	ds_read_b128 v[38:41], v254 offset:7168                    // 00000000A4F0: D9FE1C00 260000FE
	v_add_u32_e32 v0, s3, v217                                 // 00000000A4F8: 6801B203
	v_mul_lo_u32 v0, v0, s9                                    // 00000000A4FC: D2850000 00001300
	scratch_load_dword v1, off, off offset:32                  // 00000000A504: DC504020 017F0000
	s_waitcnt vmcnt(0)                                         // 00000000A50C: BF8C0F70
	v_add_u32_e32 v0, v0, v1                                   // 00000000A510: 68000300
	v_add_u32_e32 v1, s15, v0                                  // 00000000A514: 6802000F
	v_add_u32_e32 v2, s15, v1                                  // 00000000A518: 6804020F
	v_add_u32_e32 v3, s15, v2                                  // 00000000A51C: 6806040F
	v_add_u32_e32 v4, s15, v3                                  // 00000000A520: 6808060F
	v_add_u32_e32 v5, s15, v4                                  // 00000000A524: 680A080F
	v_add_u32_e32 v6, s15, v5                                  // 00000000A528: 680C0A0F
	v_add_u32_e32 v7, s15, v6                                  // 00000000A52C: 680E0C0F
	s_waitcnt lgkmcnt(7)                                       // 00000000A530: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[0:1]                   // 00000000A534: DC7C8000 00000800
	s_waitcnt lgkmcnt(6)                                       // 00000000A53C: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[0:1]                  // 00000000A540: DC7C8000 00000C01
	s_waitcnt lgkmcnt(5)                                       // 00000000A548: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[0:1]                  // 00000000A54C: DC7C8000 00001002
	s_waitcnt lgkmcnt(4)                                       // 00000000A554: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[0:1]                  // 00000000A558: DC7C8000 00001403
	s_waitcnt lgkmcnt(3)                                       // 00000000A560: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[0:1]                  // 00000000A564: DC7C8000 00001804
	s_waitcnt lgkmcnt(2)                                       // 00000000A56C: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[0:1]                  // 00000000A570: DC7C8000 00001C05
	s_waitcnt lgkmcnt(1)                                       // 00000000A578: BF8CC17F
	global_store_dwordx4 v6, v[34:37], s[0:1]                  // 00000000A57C: DC7C8000 00002206
	s_waitcnt lgkmcnt(0)                                       // 00000000A584: BF8CC07F
	global_store_dwordx4 v7, v[38:41], s[0:1]                  // 00000000A588: DC7C8000 00002607
	v_add_u32_e32 v0, s3, v216                                 // 00000000A590: 6801B003
	v_lshlrev_b32_e32 v0, 2, v0                                // 00000000A594: 24000082
	s_cmp_eq_u64 s[36:37], 0                                   // 00000000A598: BF128024
	s_mov_b64 s[0:1], s[20:21]                                 // 00000000A59C: BE800114
	s_mov_b32 s3, s17                                          // 00000000A5A0: BE830011
	s_cbranch_scc0 58078                                       // 00000000A5A4: BF84E2DE <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1620>
	s_branch 57035                                             // 00000000A5A8: BF82DECB <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5d8>
	s_nop 15                                                   // 00000000A5AC: BF80000F
	s_nop 3                                                    // 00000000A5B0: BF800003
	v_rcp_f32_e32 v64, v250                                    // 00000000A5B4: 7E8045FA
	v_log_f32_e32 v65, v250                                    // 00000000A5B8: 7E8243FA
	s_nop 1                                                    // 00000000A5BC: BF800001
	v_mul_f32_e32 v64, v241, v64                               // 00000000A5C0: 0A8081F1
	v_mul_f32_e32 v48, v48, v64                                // 00000000A5C4: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 00000000A5C8: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 00000000A5CC: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 00000000A5D0: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 00000000A5D4: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 00000000A5D8: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 00000000A5DC: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 00000000A5E0: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 00000000A5E4: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 00000000A5E8: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 00000000A5EC: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 00000000A5F0: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 00000000A5F4: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 00000000A5F8: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 00000000A5FC: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 00000000A600: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 00000000A604: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 00000000A608: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 00000000A60C: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 00000000A610: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 00000000A614: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 00000000A618: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 00000000A61C: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 00000000A620: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 00000000A624: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 00000000A628: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 00000000A62C: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 00000000A630: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 00000000A634: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 00000000A638: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 00000000A63C: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 00000000A640: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 00000000A644: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 00000000A648: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 00000000A64C: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 00000000A650: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 00000000A654: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 00000000A658: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 00000000A65C: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 00000000A660: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 00000000A664: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 00000000A668: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 00000000A66C: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 00000000A670: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 00000000A674: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 00000000A678: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 00000000A67C: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 00000000A680: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 00000000A684: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 00000000A688: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 00000000A68C: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 00000000A690: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 00000000A694: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 00000000A698: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 00000000A69C: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 00000000A6A0: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 00000000A6A4: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 00000000A6A8: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 00000000A6AC: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 00000000A6B0: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 00000000A6B4: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 00000000A6B8: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000A6BC: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000A6C0: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000A6C4: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000A6CC: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000A6D4: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000A6DC: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000A6E4: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000A6EC: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000A6F4: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000A6FC: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000A704: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000A70C: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000A714: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000A71C: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000A724: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000A72C: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000A734: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000A73C: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000A744: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000A74C: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000A754: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000A75C: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000A764: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000A76C: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000A774: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000A77C: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000A784: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000A78C: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000A794: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000A79C: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000A7A4: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000A7AC: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000A7B4: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000A7BC: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000A7C4: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000A7C8: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000A7CC: 7E000304
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000A7D0: 7E10B509
	v_mov_b32_e32 v1, v2                                       // 00000000A7D4: 7E020302
	v_mov_b32_e32 v2, v5                                       // 00000000A7D8: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000A7DC: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000A7E0: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000A7E4: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000A7E8: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000A7EC: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000A7F0: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000A7F4: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000A7F8: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000A7FC: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000A800: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000A804: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000A808: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000A80C: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000A810: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000A814: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000A818: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000A81C: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000A820: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000A824: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000A828: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000A82C: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000A830: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000A834: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000A838: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000A83C: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000A840: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000A844: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000A848: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000A84C: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000A850: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000A854: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000A858: 7E380320
	v_add_f32_e32 v32, v252, v65                               // 00000000A85C: 024083FC
	v_mov_b32_e32 v29, v30                                     // 00000000A860: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000A864: 7E3C0321
	v_add_f32_e32 v32, -4.0, v32                               // 00000000A868: 024040F7
	v_add_f32_e32 v32, -2.0, v32                               // 00000000A86C: 024040F5
	v_mul_f32_e32 v32, 0x3f317218, v32                         // 00000000A870: 0A4040FF 3F317218
	ds_write_b128 v228, v[0:3]                                 // 00000000A878: D9BE0000 000000E4
	ds_write_b128 v230, v[4:7]                                 // 00000000A880: D9BE0000 000004E6
	ds_write_b128 v229, v[8:11]                                // 00000000A888: D9BE0000 000008E5
	scratch_load_dword v0, off, off offset:56                  // 00000000A890: DC504038 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A898: BF8C0F70
	ds_write_b128 v0, v[12:15]                                 // 00000000A89C: D9BE0000 00000C00
	scratch_load_dword v0, off, off offset:52                  // 00000000A8A4: DC504034 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A8AC: BF8C0F70
	ds_write_b128 v0, v[16:19]                                 // 00000000A8B0: D9BE0000 00001000
	scratch_load_dword v0, off, off offset:48                  // 00000000A8B8: DC504030 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A8C0: BF8C0F70
	ds_write_b128 v0, v[20:23]                                 // 00000000A8C4: D9BE0000 00001400
	scratch_load_dword v0, off, off offset:44                  // 00000000A8CC: DC50402C 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A8D4: BF8C0F70
	ds_write_b128 v0, v[24:27]                                 // 00000000A8D8: D9BE0000 00001800
	scratch_load_dword v0, off, off offset:40                  // 00000000A8E0: DC504028 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A8E8: BF8C0F70
	ds_write_b128 v0, v[28:31]                                 // 00000000A8EC: D9BE0000 00001C00
	ds_read_b128 v[8:11], v219                                 // 00000000A8F4: D9FE0000 080000DB
	ds_read_b128 v[12:15], v218 offset:1024                    // 00000000A8FC: D9FE0400 0C0000DA
	ds_read_b128 v[16:19], v237 offset:2048                    // 00000000A904: D9FE0800 100000ED
	ds_read_b128 v[20:23], v254 offset:3072                    // 00000000A90C: D9FE0C00 140000FE
	ds_read_b128 v[24:27], v219 offset:4096                    // 00000000A914: D9FE1000 180000DB
	ds_read_b128 v[28:31], v218 offset:5120                    // 00000000A91C: D9FE1400 1C0000DA
	ds_read_b128 v[34:37], v237 offset:6144                    // 00000000A924: D9FE1800 220000ED
	ds_read_b128 v[38:41], v254 offset:7168                    // 00000000A92C: D9FE1C00 260000FE
	v_add_u32_e32 v0, s3, v217                                 // 00000000A934: 6801B203
	v_mul_lo_u32 v0, v0, s9                                    // 00000000A938: D2850000 00001300
	scratch_load_dword v1, off, off offset:32                  // 00000000A940: DC504020 017F0000
	s_waitcnt vmcnt(0)                                         // 00000000A948: BF8C0F70
	v_add_u32_e32 v0, v0, v1                                   // 00000000A94C: 68000300
	v_add_u32_e32 v1, s15, v0                                  // 00000000A950: 6802000F
	v_add_u32_e32 v2, s15, v1                                  // 00000000A954: 6804020F
	v_add_u32_e32 v3, s15, v2                                  // 00000000A958: 6806040F
	v_add_u32_e32 v4, s15, v3                                  // 00000000A95C: 6808060F
	v_add_u32_e32 v5, s15, v4                                  // 00000000A960: 680A080F
	v_add_u32_e32 v6, s15, v5                                  // 00000000A964: 680C0A0F
	v_add_u32_e32 v7, s15, v6                                  // 00000000A968: 680E0C0F
	s_waitcnt lgkmcnt(7)                                       // 00000000A96C: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[0:1]                   // 00000000A970: DC7C8000 00000800
	s_waitcnt lgkmcnt(6)                                       // 00000000A978: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[0:1]                  // 00000000A97C: DC7C8000 00000C01
	s_waitcnt lgkmcnt(5)                                       // 00000000A984: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[0:1]                  // 00000000A988: DC7C8000 00001002
	s_waitcnt lgkmcnt(4)                                       // 00000000A990: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[0:1]                  // 00000000A994: DC7C8000 00001403
	s_waitcnt lgkmcnt(3)                                       // 00000000A99C: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[0:1]                  // 00000000A9A0: DC7C8000 00001804
	s_waitcnt lgkmcnt(2)                                       // 00000000A9A8: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[0:1]                  // 00000000A9AC: DC7C8000 00001C05
	s_waitcnt lgkmcnt(1)                                       // 00000000A9B4: BF8CC17F
	global_store_dwordx4 v6, v[34:37], s[0:1]                  // 00000000A9B8: DC7C8000 00002206
	s_waitcnt lgkmcnt(0)                                       // 00000000A9C0: BF8CC07F
	global_store_dwordx4 v7, v[38:41], s[0:1]                  // 00000000A9C4: DC7C8000 00002607
	v_add_u32_e32 v0, s3, v216                                 // 00000000A9CC: 6801B003
	v_lshlrev_b32_e32 v0, 2, v0                                // 00000000A9D0: 24000082
	s_cmp_eq_u64 s[36:37], 0                                   // 00000000A9D4: BF128024
	s_cbranch_scc1 2                                           // 00000000A9D8: BF850002 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8ee4>
	global_store_dword v0, v32, s[36:37]                       // 00000000A9DC: DC708000 00242000
	s_and_b64 s[0:1], s[10:11], exec                           // 00000000A9E4: 86807E0A
	s_cbranch_scc0 1                                           // 00000000A9E8: BF840001 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8ef0>
	s_barrier                                                  // 00000000A9EC: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000A9F0: BF8C0F70
	s_endpgm                                                   // 00000000A9F4: BF810000
		...

000000000000aa00 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE>:
	s_load_dwordx16 s[36:51], s[0:1], 0x0                      // 00000000AA00: C0120900 00000000
	s_load_dwordx16 s[4:19], s[0:1], 0x40                      // 00000000AA08: C0120100 00000040
	s_load_dwordx4 s[20:23], s[0:1], 0x80                      // 00000000AA10: C00A0500 00000080
	s_load_dwordx2 s[24:25], s[0:1], 0x90                      // 00000000AA18: C0060600 00000090
	v_and_b32_e32 v2, 63, v0                                   // 00000000AA20: 260400BF
	v_bfe_u32 v1, v0, 5, 1                                     // 00000000AA24: D1C80001 02050B00
	v_lshlrev_b32_e32 v3, 8, v0                                // 00000000AA2C: 24060088
	s_movk_i32 s0, 0xe0                                        // 00000000AA30: B00000E0
	v_and_b32_e32 v3, 0x1f00, v3                               // 00000000AA34: 260606FF 00001F00
	v_add_lshl_u32 v4, v1, v2, 5                               // 00000000AA3C: D1FE0004 02160501
	v_and_or_b32 v161, v4, s0, v3                              // 00000000AA44: D20100A1 040C0104
	v_add_u32_e32 v5, 64, v4                                   // 00000000AA4C: 680A08C0
	v_add_u32_e32 v4, 0x80, v4                                 // 00000000AA50: 680808FF 00000080
	v_readfirstlane_b32 s3, v0                                 // 00000000AA58: 7E060500
	v_and_or_b32 v162, v5, s0, v3                              // 00000000AA5C: D20100A2 040C0105
	v_and_or_b32 v163, v4, s0, v3                              // 00000000AA64: D20100A3 040C0104
	s_waitcnt lgkmcnt(0)                                       // 00000000AA6C: BF8CC07F
	s_cmp_eq_u64 s[20:21], 0                                   // 00000000AA70: BF128014
	s_cbranch_scc1 14                                          // 00000000AA74: BF85000E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb0>
	s_load_dword s0, s[20:21], 0x0                             // 00000000AA78: C002000A 00000000
	s_cmp_eq_u64 s[22:23], 0                                   // 00000000AA80: BF128016
	s_cbranch_scc1 13                                          // 00000000AA84: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xbc>
	s_load_dword s1, s[22:23], 0x0                             // 00000000AA88: C002004B 00000000
	s_waitcnt lgkmcnt(0)                                       // 00000000AA90: BF8CC07F
	v_mov_b32_e32 v3, s1                                       // 00000000AA94: 7E060201
	v_mul_f32_e32 v3, s0, v3                                   // 00000000AA98: 0A060600
	s_cmp_eq_u64 s[24:25], 0                                   // 00000000AA9C: BF128018
	s_cbranch_scc1 10                                          // 00000000AAA0: BF85000A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xcc>
	s_load_dword s15, s[24:25], 0x0                            // 00000000AAA4: C00203CC 00000000
	s_branch 8                                                 // 00000000AAAC: BF820008 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd0>
	s_mov_b32 s0, 1.0                                          // 00000000AAB0: BE8000F2
	s_cmp_eq_u64 s[22:23], 0                                   // 00000000AAB4: BF128016
	s_cbranch_scc0 65523                                       // 00000000AAB8: BF84FFF3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x88>
	s_waitcnt lgkmcnt(0)                                       // 00000000AABC: BF8CC07F
	v_mov_b32_e32 v3, s0                                       // 00000000AAC0: 7E060200
	s_cmp_eq_u64 s[24:25], 0                                   // 00000000AAC4: BF128018
	s_cbranch_scc0 65526                                       // 00000000AAC8: BF84FFF6 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa4>
	s_mov_b32 s15, 1.0                                         // 00000000AACC: BE8F00F2
	v_and_b32_e32 v5, 1, v0                                    // 00000000AAD0: 260A0081
	v_bfe_u32 v4, v0, 1, 3                                     // 00000000AAD4: D1C80004 020D0300
	v_lshlrev_b32_e32 v6, 4, v5                                // 00000000AADC: 240C0A84
	v_lshrrev_b32_e32 v7, 4, v0                                // 00000000AAE0: 200E0084
	v_sub_u32_e32 v8, v4, v7                                   // 00000000AAE4: 6A100F04
	v_and_b32_e32 v8, 7, v8                                    // 00000000AAE8: 26101087
	v_cmp_gt_u32_e32 vcc, 6, v8                                // 00000000AAEC: 7D981086
	s_nop 1                                                    // 00000000AAF0: BF800001
	v_cndmask_b32_e32 v8, 0, v8, vcc                           // 00000000AAF4: 00101080
	v_lshlrev_b32_e32 v8, 5, v8                                // 00000000AAF8: 24101085
	v_or_b32_e32 v8, v8, v6                                    // 00000000AAFC: 28100D08
	v_mul_lo_u32 v7, s6, v7                                    // 00000000AB00: D2850007 00020E06
	v_add_u32_e32 v164, v7, v8                                 // 00000000AB08: 69481107
	v_or_b32_e32 v7, 0x200, v0                                 // 00000000AB0C: 280E00FF 00000200
	v_lshrrev_b32_e32 v7, 4, v7                                // 00000000AB14: 200E0E84
	v_sub_u32_e32 v4, v4, v7                                   // 00000000AB18: 6A080F04
	v_and_b32_e32 v4, 7, v4                                    // 00000000AB1C: 26080887
	v_cmp_gt_u32_e32 vcc, 6, v4                                // 00000000AB20: 7D980886
	s_nop 1                                                    // 00000000AB24: BF800001
	v_cndmask_b32_e32 v4, 0, v4, vcc                           // 00000000AB28: 00080880
	v_lshlrev_b32_e32 v4, 5, v4                                // 00000000AB2C: 24080885
	v_or_b32_e32 v4, v4, v6                                    // 00000000AB30: 28080D04
	v_mul_lo_u32 v5, s6, v7                                    // 00000000AB34: D2850005 00020E06
	v_add_u32_e32 v165, v5, v4                                 // 00000000AB3C: 694A0905
	v_bfe_u32 v4, v0, 7, 1                                     // 00000000AB40: D1C80004 02050F00
	v_lshrrev_b32_e32 v5, 8, v0                                // 00000000AB48: 200A0088
	v_lshlrev_b32_e32 v10, 5, v4                               // 00000000AB4C: 24140885
	v_bfe_u32 v6, v0, 6, 1                                     // 00000000AB50: D1C80006 02050D00
	v_lshl_or_b32 v12, v5, 2, v10                              // 00000000AB58: D200000C 04290505
	v_bfe_u32 v7, v0, 2, 1                                     // 00000000AB60: D1C80007 02050500
	v_lshl_or_b32 v13, v6, 4, v12                              // 00000000AB68: D200000D 04310906
	v_and_b32_e32 v8, 3, v0                                    // 00000000AB70: 26100083
	v_lshl_or_b32 v14, v7, 3, v13                              // 00000000AB74: D200000E 04350707
	v_bfe_u32 v9, v0, 3, 3                                     // 00000000AB7C: D1C80009 020D0700
	v_or_b32_e32 v15, v14, v8                                  // 00000000AB84: 281E110E
	v_lshlrev_b32_e32 v11, 4, v9                               // 00000000AB88: 24161284
	v_mul_lo_u32 v16, s7, v15                                  // 00000000AB8C: D2850010 00021E07
	v_add_u32_e32 v166, v16, v11                               // 00000000AB94: 694C1710
	s_cmp_ge_u32 s2, s49                                       // 00000000AB98: BF093102
	s_cbranch_scc1 5426                                        // 00000000AB9C: BF851532 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5668>
	s_lshr_b32 s22, s3, 8                                      // 00000000ABA0: 8F168803
	s_cmp_eq_u32 s4, 0                                         // 00000000ABA4: BF068004
	s_cselect_b64 s[0:1], -1, 0                                // 00000000ABA8: 858080C1
	s_and_b64 s[16:17], s[0:1], exec                           // 00000000ABAC: 86907E00
	s_cselect_b32 s23, 0, s22                                  // 00000000ABB0: 85171680
	s_lshl_b32 s4, s2, 5                                       // 00000000ABB4: 8E048502
	s_load_dwordx8 s[52:59], s[46:47], s4 offset:0x0           // 00000000ABB8: C00E4D17 08000000
	s_cmp_eq_u64 s[44:45], 0                                   // 00000000ABC0: BF12802C
	s_cselect_b64 s[34:35], -1, 0                              // 00000000ABC4: 85A280C1
	s_mov_b64 s[18:19], 0                                      // 00000000ABC8: BE920180
	s_mul_i32 s33, s11, s23                                    // 00000000ABCC: 9221170B
	s_and_b64 vcc, exec, s[34:35]                              // 00000000ABD0: 86EA227E
	s_cbranch_vccnz 5                                          // 00000000ABD4: BF870005 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1ec>
	s_waitcnt lgkmcnt(0)                                       // 00000000ABD8: BF8CC07F
	s_add_u32 s4, s33, s53                                     // 00000000ABDC: 80043521
	s_lshl_b32 s4, s4, 2                                       // 00000000ABE0: 8E048204
	s_add_u32 s18, s44, s4                                     // 00000000ABE4: 8012042C
	s_addc_u32 s19, s45, 0                                     // 00000000ABE8: 8213802D
	s_mov_b32 s17, 0                                           // 00000000ABEC: BE910080
	s_waitcnt lgkmcnt(0)                                       // 00000000ABF0: BF8CC07F
	s_mov_b32 s16, s58                                         // 00000000ABF4: BE90003A
	s_lshl_b64 s[16:17], s[16:17], 7                           // 00000000ABF8: 8E908710
	s_mul_i32 s4, s9, s23                                      // 00000000ABFC: 92041709
	s_add_u32 s9, s36, s54                                     // 00000000AC00: 80093624
	s_addc_u32 s11, s37, s55                                   // 00000000AC04: 820B3725
	s_add_u32 s20, s9, s4                                      // 00000000AC08: 80140409
	s_addc_u32 s21, s11, 0                                     // 00000000AC0C: 8215800B
	s_add_u32 s60, s38, s56                                    // 00000000AC10: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000AC14: 823D3927
	s_add_u32 s64, s40, s16                                    // 00000000AC18: 80401028
	s_addc_u32 s65, s41, s17                                   // 00000000AC1C: 82411129
	s_lshr_b32 s11, s3, 6                                      // 00000000AC20: 8F0B8603
	s_lshl_b32 s9, s6, 6                                       // 00000000AC24: 8E098606
	s_bfe_u32 s17, s3, 0x20006                                 // 00000000AC28: 9291FF03 00020006
	s_lshl_b32 s72, s11, 10                                    // 00000000AC30: 8E488A0B
	s_and_b64 s[0:1], s[0:1], exec                             // 00000000AC34: 86807E00
	s_cselect_b32 s73, s11, s17                                // 00000000AC38: 8549110B
	s_not_b32 s0, s52                                          // 00000000AC3C: BE800434
	s_add_u32 s0, s50, s0                                      // 00000000AC40: 80000032
	s_mul_i32 s1, s51, s0                                      // 00000000AC44: 92010033
	s_lshl_b32 s0, s0, 5                                       // 00000000AC48: 8E008500
	s_add_u32 s0, s0, 32                                       // 00000000AC4C: 8000A000
	s_mul_i32 s0, s0, s51                                      // 00000000AC50: 92003300
	s_add_u32 s1, s1, s73                                      // 00000000AC54: 80014901
	s_add_u32 s0, s0, 32                                       // 00000000AC58: 8000A000
	s_mul_i32 s62, s6, s12                                     // 00000000AC5C: 923E0C06
	s_mul_i32 s66, s7, s12                                     // 00000000AC60: 92420C07
	v_and_b32_e32 v146, 31, v0                                 // 00000000AC64: 2724009F
	s_lshr_b32 s12, s12, 6                                     // 00000000AC68: 8F0C860C
	s_lshl_b32 s3, s1, 5                                       // 00000000AC6C: 8E038501
	s_lshr_b32 s0, s0, 6                                       // 00000000AC70: 8F008600
	s_mov_b32 s63, 0x110000                                    // 00000000AC74: BEBF00FF 00110000
	v_or_b32_e32 v4, s3, v146                                  // 00000000AC7C: 28092403
	s_min_u32 s98, s12, s0                                     // 00000000AC80: 83E2000C
	s_mov_b32 s67, s63                                         // 00000000AC84: BEC3003F
	v_mul_lo_u32 v4, s5, v4                                    // 00000000AC88: D2850004 00020805
	v_lshlrev_b32_e32 v167, 5, v1                              // 00000000AC90: 254E0285
	v_add_u32_e32 v4, v167, v4                                 // 00000000AC94: 680809A7
	global_load_dwordx4 v[182:185], v4, s[20:21]               // 00000000AC98: DC5C8000 B6140004
	global_load_dwordx4 v[186:189], v4, s[20:21] offset:16     // 00000000ACA0: DC5C8010 BA140004
	global_load_dwordx4 v[190:193], v4, s[20:21] offset:64     // 00000000ACA8: DC5C8040 BE140004
	global_load_dwordx4 v[194:197], v4, s[20:21] offset:80     // 00000000ACB0: DC5C8050 C2140004
	global_load_dwordx4 v[198:201], v4, s[20:21] offset:128    // 00000000ACB8: DC5C8080 C6140004
	global_load_dwordx4 v[202:205], v4, s[20:21] offset:144    // 00000000ACC0: DC5C8090 CA140004
	s_mov_b32 m0, s72                                          // 00000000ACC8: BEFC0048
	s_or_b32 s0, s72, 0x10000                                  // 00000000ACCC: 8700FF48 00010000
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000ACD4: E05D1000 800F00A4
	s_or_b32 m0, s72, 0x2000                                   // 00000000ACDC: 877CFF48 00002000
	s_cmp_lt_u32 s98, 2                                        // 00000000ACE4: BF0A8262
	buffer_load_dwordx4 v165, s[60:63], 0 offen lds            // 00000000ACE8: E05D1000 800F00A5
	s_mov_b32 m0, s0                                           // 00000000ACF0: BEFC0000
	s_nop 0                                                    // 00000000ACF4: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000ACF8: E05D1000 801000A6
	s_cbranch_scc1 10                                          // 00000000AD00: BF85000A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x32c>
	s_add_u32 m0, s0, 0xffff4000                               // 00000000AD04: 807CFF00 FFFF4000
	s_nop 0                                                    // 00000000AD0C: BF800000
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000AD10: E05D1000 090F00A4
	s_add_u32 m0, s0, 0xffff6000                               // 00000000AD18: 807CFF00 FFFF6000
	s_nop 0                                                    // 00000000AD20: BF800000
	buffer_load_dwordx4 v165, s[60:63], s9 offen lds           // 00000000AD24: E05D1000 090F00A5
	v_lshrrev_b32_e32 v4, 2, v0                                // 00000000AD2C: 20080082
	v_lshrrev_b32_e32 v5, 3, v0                                // 00000000AD30: 200A0083
	s_waitcnt vmcnt(0)                                         // 00000000AD34: BF8C0F70
	s_barrier                                                  // 00000000AD38: BF8A0000
	s_cmp_eq_u32 s22, 0                                        // 00000000AD3C: BF068016
	s_cbranch_scc1 1                                           // 00000000AD40: BF850001 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x348>
	s_barrier                                                  // 00000000AD44: BF8A0000
	s_mov_b32 s16, 0                                           // 00000000AD48: BE900080
	s_mov_b32 s0, s59                                          // 00000000AD4C: BE80003B
	s_mov_b32 s1, s16                                          // 00000000AD50: BE810010
	s_lshr_b32 s77, s3, 6                                      // 00000000AD54: 8F4D8603
	s_lshl_b64 s[0:1], s[0:1], 8                               // 00000000AD58: 8E808800
	s_add_u32 s0, s42, s0                                      // 00000000AD5C: 8000002A
	s_mul_i32 s20, s10, s23                                    // 00000000AD60: 9214170A
	s_addc_u32 s1, s43, s1                                     // 00000000AD64: 8201012B
	s_add_u32 s10, s0, s20                                     // 00000000AD68: 800A1400
	v_mul_f32_e32 v142, s48, v3                                // 00000000AD6C: 0B1C0630
	v_mov_b32_e32 v3, s14                                      // 00000000AD70: 7E06020E
	v_lshrrev_b32_e32 v147, 4, v2                              // 00000000AD74: 21260484
	v_and_b32_e32 v6, 32, v0                                   // 00000000AD78: 260C00A0
	s_addc_u32 s11, s1, 0                                      // 00000000AD7C: 820B8001
	s_lshl_b32 s99, s7, 6                                      // 00000000AD80: 8E638607
	s_lshl_b32 s85, s6, 8                                      // 00000000AD84: 8E558806
	s_lshl_b32 s86, s7, 7                                      // 00000000AD88: 8E568707
	v_and_b32_e32 v5, 4, v5                                    // 00000000AD8C: 260A0A84
	v_lshlrev_b32_e32 v7, 3, v0                                // 00000000AD90: 240E0083
	v_and_b32_e32 v0, 15, v0                                   // 00000000AD94: 2600008F
	v_mul_f32_e32 v168, s15, v3                                // 00000000AD98: 0B50060F
	v_xor_b32_e32 v3, v147, v4                                 // 00000000AD9C: 2A060993
	v_and_or_b32 v4, v147, 1, v6                               // 00000000ADA0: D2010004 04190393
	s_cmp_eq_u32 s22, 0                                        // 00000000ADA8: BF068016
	v_sub_u32_e32 v171, v146, v5                               // 00000000ADAC: 6B560B92
	v_xor_b32_e32 v5, v1, v0                                   // 00000000ADB0: 2A0A0101
	v_xor_b32_e32 v6, v147, v0                                 // 00000000ADB4: 2A0C0193
	v_lshlrev_b32_e32 v148, 4, v0                              // 00000000ADB8: 25280084
	v_and_b32_e32 v0, 1, v3                                    // 00000000ADBC: 26000681
	v_lshlrev_b32_e32 v173, 7, v4                              // 00000000ADC0: 255A0887
	s_cselect_b64 s[0:1], -1, 0                                // 00000000ADC4: 858080C1
	s_lshl_b32 s15, s17, 13                                    // 00000000ADC8: 8E0F8D11
	s_lshl_b32 s17, s6, 7                                      // 00000000ADCC: 8E118706
	v_mov_b32_e32 v2, 0x38383838                               // 00000000ADD0: 7E0402FF 38383838
	v_and_b32_e32 v172, 0x78, v7                               // 00000000ADD8: 27580EFF 00000078
	v_cmp_eq_u32_e32 vcc, 0, v0                                // 00000000ADE0: 7D940080
	v_or_b32_e32 v0, 0x16000, v173                             // 00000000ADE4: 28015AFF 00016000
	s_add_u32 s36, s36, s4                                     // 00000000ADEC: 80240424
	s_mov_b32 s14, 0x18000                                     // 00000000ADF0: BE8E00FF 00018000
	v_lshlrev_b32_e32 v3, 4, v5                                // 00000000ADF8: 24060A84
	v_lshlrev_b32_e32 v4, 4, v6                                // 00000000ADFC: 24080C84
	v_cndmask_b32_e32 v126, 0, v2, vcc                         // 00000000AE00: 00FC0480
	v_add_u32_e32 v177, v0, v172                               // 00000000AE04: 69635900
	v_lshl_or_b32 v0, v146, 8, s15                             // 00000000AE08: D2000000 003D1192
	v_lshl_or_b32 v2, v147, 8, s15                             // 00000000AE10: D2000002 003D1193
	s_addc_u32 s37, s37, 0                                     // 00000000AE18: 82258025
	v_or_b32_e32 v5, 0x10000, v173                             // 00000000AE1C: 280B5AFF 00010000
	v_or_b32_e32 v6, 0x12000, v173                             // 00000000AE24: 280D5AFF 00012000
	v_or_b32_e32 v7, 0x14000, v173                             // 00000000AE2C: 280F5AFF 00014000
	v_or3_b32 v158, v0, v3, s14                                // 00000000AE34: D202009E 003A0700
	v_or3_b32 v149, v2, v4, s14                                // 00000000AE3C: D2020095 003A0902
	s_add_u32 s42, s42, s20                                    // 00000000AE44: 802A142A
	s_mov_b32 s81, 0x16000                                     // 00000000AE48: BED100FF 00016000
	s_mov_b32 s82, 0x10000                                     // 00000000AE50: BED200FF 00010000
	s_mov_b32 s83, 0x12000                                     // 00000000AE58: BED300FF 00012000
	s_mov_b32 s88, 0x14000                                     // 00000000AE60: BED800FF 00014000
	s_mov_b32 s89, 0xc2fe0000                                  // 00000000AE68: BED900FF C2FE0000
	v_mov_b32_e32 v169, 0xff800000                             // 00000000AE70: 7F5202FF FF800000
	s_movk_i32 s90, 0x2000                                     // 00000000AE78: B05A2000
	v_mov_b32_e32 v170, 0x7f                                   // 00000000AE7C: 7F5402FF 0000007F
	s_mov_b32 s91, 0x3e000000                                  // 00000000AE84: BEDB00FF 3E000000
	s_movk_i32 s92, 0x4000                                     // 00000000AE8C: B05C4000
	s_movk_i32 s93, 0x6000                                     // 00000000AE90: B05D6000
	s_mov_b32 s94, 0x8000                                      // 00000000AE94: BEDE00FF 00008000
	s_mov_b32 s95, 0xa000                                      // 00000000AE9C: BEDF00FF 0000A000
	s_mov_b32 s96, 0xc000                                      // 00000000AEA4: BEE000FF 0000C000
	s_mov_b32 s97, 0xe000                                      // 00000000AEAC: BEE100FF 0000E000
	v_mov_b32_e32 v144, v142                                   // 00000000AEB4: 7F20038E
	v_mov_b32_e32 v145, v142                                   // 00000000AEB8: 7F22038E
	v_add_u32_e32 v174, v5, v172                               // 00000000AEBC: 695D5905
	v_add_u32_e32 v175, v6, v172                               // 00000000AEC0: 695F5906
	v_add_u32_e32 v176, v7, v172                               // 00000000AEC4: 69615907
	v_mov_b32_e32 v127, v126                                   // 00000000AEC8: 7EFE037E
	v_mov_b32_e32 v128, v126                                   // 00000000AECC: 7F00037E
	v_mov_b32_e32 v129, v126                                   // 00000000AED0: 7F02037E
	v_mov_b32_e32 v130, v126                                   // 00000000AED4: 7F04037E
	v_mov_b32_e32 v131, v126                                   // 00000000AED8: 7F06037E
	v_mov_b32_e32 v132, v126                                   // 00000000AEDC: 7F08037E
	v_mov_b32_e32 v133, v126                                   // 00000000AEE0: 7F0A037E
	v_xor_b32_e32 v160, 32, v158                               // 00000000AEE4: 2B413CA0
	v_xor_b32_e32 v159, 64, v158                               // 00000000AEE8: 2B3F3CC0
	v_xor_b32_e32 v157, 0x60, v158                             // 00000000AEEC: 2B3B3CFF 00000060
	v_xor_b32_e32 v156, 0x80, v158                             // 00000000AEF4: 2B393CFF 00000080
	v_xor_b32_e32 v155, 0xa0, v158                             // 00000000AEFC: 2B373CFF 000000A0
	v_xor_b32_e32 v154, 0xc0, v158                             // 00000000AF04: 2B353CFF 000000C0
	v_xor_b32_e32 v153, 0xe0, v158                             // 00000000AF0C: 2B333CFF 000000E0
	v_xor_b32_e32 v152, 64, v149                               // 00000000AF14: 2B312AC0
	v_xor_b32_e32 v151, 0x80, v149                             // 00000000AF18: 2B2F2AFF 00000080
	v_xor_b32_e32 v150, 0xc0, v149                             // 00000000AF20: 2B2D2AFF 000000C0
	s_addc_u32 s43, s43, 0                                     // 00000000AF28: 822B802B
	s_lshl_b32 s48, s6, 4                                      // 00000000AF2C: 8E308406
	s_lshl_b32 s74, s6, 5                                      // 00000000AF30: 8E4A8506
	s_lshl_b32 s75, s7, 2                                      // 00000000AF34: 8E4B8207
	s_lshl_b32 s4, s8, 2                                       // 00000000AF38: 8E048208
	v_writelane_b32 v230, s17, 0                               // 00000000AF3C: D28A00E6 00010011
	s_mov_b32 s80, 0                                           // 00000000AF44: BED00080
	s_mov_b32 s76, 0                                           // 00000000AF48: BECC0080
	s_mov_b32 s67, s63                                         // 00000000AF4C: BEC3003F
	s_mov_b32 s79, s63                                         // 00000000AF50: BECF003F
	s_and_b32 s17, s80, 3                                      // 00000000AF54: 86118350
	s_lshl_b32 s20, s17, 14                                    // 00000000AF58: 8E148E11
	v_or_b32_e32 v0, s20, v161                                 // 00000000AF5C: 28014214
	s_waitcnt vmcnt(8)                                         // 00000000AF60: BF8C0F78
	v_or_b32_e32 v1, s20, v162                                 // 00000000AF64: 28034414
	ds_read_b128 v[2:5], v0                                    // 00000000AF68: D9FE0000 02000000
	ds_read_b128 v[6:9], v0 offset:16                          // 00000000AF70: D9FE0010 06000000
	ds_read_b128 v[50:53], v0 offset:8192                      // 00000000AF78: D9FE2000 32000000
	ds_read_b128 v[54:57], v0 offset:8208                      // 00000000AF80: D9FE2010 36000000
	ds_read_b128 v[42:45], v1                                  // 00000000AF88: D9FE0000 2A000001
	ds_read_b128 v[46:49], v1 offset:16                        // 00000000AF90: D9FE0010 2E000001
	ds_read_b128 v[34:37], v1 offset:8192                      // 00000000AF98: D9FE2000 22000001
	ds_read_b128 v[38:41], v1 offset:8208                      // 00000000AFA0: D9FE2010 26000001
	s_mov_b64 s[14:15], s[18:19]                               // 00000000AFA8: BE8E0112
	s_cmp_eq_u32 s77, 0                                        // 00000000AFAC: BF06804D
	s_cbranch_scc1 108                                         // 00000000AFB0: BF85006C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x764>
	s_setprio 1                                                // 00000000AFB4: BF8F0001
	s_waitcnt lgkmcnt(0)                                       // 00000000AFB8: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[2:9], v[182:189], 0 // 00000000AFBC: D3AE0010 02036D02
	v_add_u32_e32 v32, s20, v163                               // 00000000AFC4: 68414614
	ds_read_b128 v[58:61], v32                                 // 00000000AFC8: D9FE0000 3A000020
	ds_read_b128 v[62:65], v32 offset:16                       // 00000000AFD0: D9FE0010 3E000020
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[182:189], 0// 00000000AFD8: D3AE0000 02036D32
	ds_read_b128 v[50:53], v32 offset:8192                     // 00000000AFE0: D9FE2000 32000020
	ds_read_b128 v[54:57], v32 offset:8208                     // 00000000AFE8: D9FE2010 36000020
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[42:49], v[190:197], v[16:31]// 00000000AFF0: D3AE0010 04437D2A
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[34:41], v[190:197], v[0:15]// 00000000AFF8: D3AE0000 04037D22
	s_waitcnt lgkmcnt(0)                                       // 00000000B000: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[58:65], v[198:205], v[16:31]// 00000000B004: D3AE0010 04438D3A
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[198:205], v[0:15]// 00000000B00C: D3AE0000 04038D32
	s_nop 3                                                    // 00000000B014: BF800003
	v_max_f32_e32 v32, v16, v17                                // 00000000B018: 16402310
	v_max3_f32 v32, v18, v19, v32                              // 00000000B01C: D1D30020 04822712
	v_max3_f32 v32, v20, v21, v32                              // 00000000B024: D1D30020 04822B14
	v_max3_f32 v32, v22, v23, v32                              // 00000000B02C: D1D30020 04822F16
	v_max3_f32 v32, v24, v25, v32                              // 00000000B034: D1D30020 04823318
	v_max3_f32 v32, v26, v27, v32                              // 00000000B03C: D1D30020 0482371A
	v_max3_f32 v32, v28, v29, v32                              // 00000000B044: D1D30020 04823B1C
	v_max3_f32 v32, v30, v31, v32                              // 00000000B04C: D1D30020 04823F1E
	s_nop 7                                                    // 00000000B054: BF800007
	v_max_f32_e32 v33, v0, v1                                  // 00000000B058: 16420300
	v_max3_f32 v33, v2, v3, v33                                // 00000000B05C: D1D30021 04860702
	v_max3_f32 v33, v4, v5, v33                                // 00000000B064: D1D30021 04860B04
	v_max3_f32 v33, v6, v7, v33                                // 00000000B06C: D1D30021 04860F06
	v_max3_f32 v33, v8, v9, v33                                // 00000000B074: D1D30021 04861308
	v_max3_f32 v33, v10, v11, v33                              // 00000000B07C: D1D30021 0486170A
	v_max3_f32 v33, v12, v13, v33                              // 00000000B084: D1D30021 04861B0C
	v_max3_f32 v33, v14, v15, v33                              // 00000000B08C: D1D30021 04861F0E
	v_max_f32_e32 v32, v32, v33                                // 00000000B094: 16404320
	v_mov_b32_e32 v33, v32                                     // 00000000B098: 7E420320
	s_nop 1                                                    // 00000000B09C: BF800001
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000B0A0: 7E40B521
	v_max_f32_e32 v32, v32, v33                                // 00000000B0A4: 16404320
	v_mul_f32_e32 v111, v142, v32                              // 00000000B0A8: 0ADE418E
	v_fma_f32 v32, v32, v142, -v111                            // 00000000B0AC: D1CB0020 85BF1D20
	v_floor_f32_e32 v32, v32                                   // 00000000B0B4: 7E403F20
	v_med3_f32 v32, v32, s89, 0                                // 00000000B0B8: D1D60020 0200B320
	v_cvt_i32_f32_e32 v33, v32                                 // 00000000B0C0: 7E421120
	v_add_u32_e32 v180, 0x7f, v33                              // 00000000B0C4: 696842FF 0000007F
	v_lshlrev_b32_e32 v33, 23, v180                            // 00000000B0CC: 24436897
	v_add_f32_e32 v32, v111, v32                               // 00000000B0D0: 0240416F
	v_sub_f32_e32 v32, 0x40c00000, v32                         // 00000000B0D4: 044040FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000B0DC: 7F1E038E
	v_pk_fma_f32 v[80:81], v[16:17], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000B0E0: D3B00050 1C832110
	v_pk_fma_f32 v[64:65], v[0:1], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000B0E8: D3B00040 1C832100
	v_pk_fma_f32 v[94:95], v[30:31], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B0F0: D3B0005E 1C831D1E
	v_pk_fma_f32 v[92:93], v[28:29], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B0F8: D3B0005C 1C831D1C
	v_pk_fma_f32 v[90:91], v[26:27], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B100: D3B0005A 1C831D1A
	v_pk_fma_f32 v[88:89], v[24:25], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B108: D3B00058 1C831D18
	v_pk_fma_f32 v[86:87], v[22:23], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B110: D3B00056 1C831D16
	v_pk_fma_f32 v[84:85], v[20:21], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B118: D3B00054 1C831D14
	v_pk_fma_f32 v[82:83], v[18:19], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B120: D3B00052 1C831D12
	v_pk_fma_f32 v[78:79], v[14:15], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B128: D3B0004E 1C831D0E
	v_pk_fma_f32 v[76:77], v[12:13], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B130: D3B0004C 1C831D0C
	v_pk_fma_f32 v[74:75], v[10:11], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B138: D3B0004A 1C831D0A
	v_pk_fma_f32 v[72:73], v[8:9], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B140: D3B00048 1C831D08
	v_pk_fma_f32 v[70:71], v[6:7], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B148: D3B00046 1C831D06
	v_pk_fma_f32 v[68:69], v[4:5], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B150: D3B00044 1C831D04
	v_pk_fma_f32 v[66:67], v[2:3], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B158: D3B00042 1C831D02
	s_branch 286                                               // 00000000B160: BF82011E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xbdc>
	s_setprio 1                                                // 00000000B164: BF8F0001
	s_waitcnt lgkmcnt(0)                                       // 00000000B168: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[2:9], v[182:189], 0 // 00000000B16C: D3AE0010 02036D02
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[182:189], 0// 00000000B174: D3AE0000 02036D32
	v_add_u32_e32 v32, s20, v163                               // 00000000B17C: 68414614
	ds_read_b128 v[58:61], v32                                 // 00000000B180: D9FE0000 3A000020
	ds_read_b128 v[62:65], v32 offset:16                       // 00000000B188: D9FE0010 3E000020
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[42:49], v[190:197], v[16:31]// 00000000B190: D3AE0010 04437D2A
	ds_read_b128 v[50:53], v32 offset:8192                     // 00000000B198: D9FE2000 32000020
	ds_read_b128 v[54:57], v32 offset:8208                     // 00000000B1A0: D9FE2010 36000020
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[34:41], v[190:197], v[0:15]// 00000000B1A8: D3AE0000 04037D22
	s_waitcnt lgkmcnt(0)                                       // 00000000B1B0: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[58:65], v[198:205], v[16:31]// 00000000B1B4: D3AE0010 04438D3A
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[198:205], v[0:15]// 00000000B1BC: D3AE0000 04038D32
	s_sub_u32 s18, s3, s16                                     // 00000000B1C4: 80921003
	s_sub_i32 s18, s18, 0                                      // 00000000B1C8: 81928012
	s_cmp_ge_i32 s18, 32                                       // 00000000B1CC: BF03A012
	s_cbranch_scc1 86                                          // 00000000B1D0: BF850056 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x92c>
	s_cmp_lt_i32 s18, 0                                        // 00000000B1D4: BF048012
	s_cbranch_scc1 66                                          // 00000000B1D8: BF850042 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8e4>
	v_add_u32_e32 v32, s18, v171                               // 00000000B1DC: 68415612
	v_cmp_gt_i32_e32 vcc, 0, v32                               // 00000000B1E0: 7D884080
	s_nop 7                                                    // 00000000B1E4: BF800007
	v_cndmask_b32_e64 v16, v16, v169, vcc                      // 00000000B1E8: D1000010 01AB5310
	v_cmp_gt_i32_e32 vcc, 1, v32                               // 00000000B1F0: 7D884081
	s_nop 1                                                    // 00000000B1F4: BF800001
	v_cndmask_b32_e64 v17, v17, v169, vcc                      // 00000000B1F8: D1000011 01AB5311
	v_cmp_gt_i32_e32 vcc, 2, v32                               // 00000000B200: 7D884082
	s_nop 1                                                    // 00000000B204: BF800001
	v_cndmask_b32_e64 v18, v18, v169, vcc                      // 00000000B208: D1000012 01AB5312
	v_cmp_gt_i32_e32 vcc, 3, v32                               // 00000000B210: 7D884083
	s_nop 1                                                    // 00000000B214: BF800001
	v_cndmask_b32_e64 v19, v19, v169, vcc                      // 00000000B218: D1000013 01AB5313
	v_cmp_gt_i32_e32 vcc, 8, v32                               // 00000000B220: 7D884088
	s_nop 1                                                    // 00000000B224: BF800001
	v_cndmask_b32_e64 v20, v20, v169, vcc                      // 00000000B228: D1000014 01AB5314
	v_cmp_gt_i32_e32 vcc, 9, v32                               // 00000000B230: 7D884089
	s_nop 1                                                    // 00000000B234: BF800001
	v_cndmask_b32_e64 v21, v21, v169, vcc                      // 00000000B238: D1000015 01AB5315
	v_cmp_gt_i32_e32 vcc, 10, v32                              // 00000000B240: 7D88408A
	s_nop 1                                                    // 00000000B244: BF800001
	v_cndmask_b32_e64 v22, v22, v169, vcc                      // 00000000B248: D1000016 01AB5316
	v_cmp_gt_i32_e32 vcc, 11, v32                              // 00000000B250: 7D88408B
	s_nop 1                                                    // 00000000B254: BF800001
	v_cndmask_b32_e64 v23, v23, v169, vcc                      // 00000000B258: D1000017 01AB5317
	v_cmp_gt_i32_e32 vcc, 16, v32                              // 00000000B260: 7D884090
	s_nop 1                                                    // 00000000B264: BF800001
	v_cndmask_b32_e64 v24, v24, v169, vcc                      // 00000000B268: D1000018 01AB5318
	v_cmp_gt_i32_e32 vcc, 17, v32                              // 00000000B270: 7D884091
	s_nop 1                                                    // 00000000B274: BF800001
	v_cndmask_b32_e64 v25, v25, v169, vcc                      // 00000000B278: D1000019 01AB5319
	v_cmp_gt_i32_e32 vcc, 18, v32                              // 00000000B280: 7D884092
	s_nop 1                                                    // 00000000B284: BF800001
	v_cndmask_b32_e64 v26, v26, v169, vcc                      // 00000000B288: D100001A 01AB531A
	v_cmp_gt_i32_e32 vcc, 19, v32                              // 00000000B290: 7D884093
	s_nop 1                                                    // 00000000B294: BF800001
	v_cndmask_b32_e64 v27, v27, v169, vcc                      // 00000000B298: D100001B 01AB531B
	v_cmp_gt_i32_e32 vcc, 24, v32                              // 00000000B2A0: 7D884098
	s_nop 1                                                    // 00000000B2A4: BF800001
	v_cndmask_b32_e64 v28, v28, v169, vcc                      // 00000000B2A8: D100001C 01AB531C
	v_cmp_gt_i32_e32 vcc, 25, v32                              // 00000000B2B0: 7D884099
	s_nop 1                                                    // 00000000B2B4: BF800001
	v_cndmask_b32_e64 v29, v29, v169, vcc                      // 00000000B2B8: D100001D 01AB531D
	v_cmp_gt_i32_e32 vcc, 26, v32                              // 00000000B2C0: 7D88409A
	s_nop 1                                                    // 00000000B2C4: BF800001
	v_cndmask_b32_e64 v30, v30, v169, vcc                      // 00000000B2C8: D100001E 01AB531E
	v_cmp_gt_i32_e32 vcc, 27, v32                              // 00000000B2D0: 7D88409B
	s_nop 1                                                    // 00000000B2D4: BF800001
	v_cndmask_b32_e64 v31, v31, v169, vcc                      // 00000000B2D8: D100001F 01AB531F
	s_branch 18                                                // 00000000B2E0: BF820012 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x92c>
	s_nop 9                                                    // 00000000B2E4: BF800009
	v_mov_b32_e32 v16, 0xff800000                              // 00000000B2E8: 7E2002FF FF800000
	v_mov_b32_e32 v17, v16                                     // 00000000B2F0: 7E220310
	v_mov_b32_e32 v18, v16                                     // 00000000B2F4: 7E240310
	v_mov_b32_e32 v19, v16                                     // 00000000B2F8: 7E260310
	v_mov_b32_e32 v20, v16                                     // 00000000B2FC: 7E280310
	v_mov_b32_e32 v21, v16                                     // 00000000B300: 7E2A0310
	v_mov_b32_e32 v22, v16                                     // 00000000B304: 7E2C0310
	v_mov_b32_e32 v23, v16                                     // 00000000B308: 7E2E0310
	v_mov_b32_e32 v24, v16                                     // 00000000B30C: 7E300310
	v_mov_b32_e32 v25, v16                                     // 00000000B310: 7E320310
	v_mov_b32_e32 v26, v16                                     // 00000000B314: 7E340310
	v_mov_b32_e32 v27, v16                                     // 00000000B318: 7E360310
	v_mov_b32_e32 v28, v16                                     // 00000000B31C: 7E380310
	v_mov_b32_e32 v29, v16                                     // 00000000B320: 7E3A0310
	v_mov_b32_e32 v30, v16                                     // 00000000B324: 7E3C0310
	v_mov_b32_e32 v31, v16                                     // 00000000B328: 7E3E0310
	s_sub_u32 s18, s3, s16                                     // 00000000B32C: 80921003
	s_sub_i32 s18, s18, 32                                     // 00000000B330: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 00000000B334: BF03A012
	s_cbranch_scc1 86                                          // 00000000B338: BF850056 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa94>
	s_cmp_lt_i32 s18, 0                                        // 00000000B33C: BF048012
	s_cbranch_scc1 66                                          // 00000000B340: BF850042 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa4c>
	v_add_u32_e32 v32, s18, v171                               // 00000000B344: 68415612
	v_cmp_gt_i32_e32 vcc, 0, v32                               // 00000000B348: 7D884080
	s_nop 11                                                   // 00000000B34C: BF80000B
	v_cndmask_b32_e64 v0, v0, v169, vcc                        // 00000000B350: D1000000 01AB5300
	v_cmp_gt_i32_e32 vcc, 1, v32                               // 00000000B358: 7D884081
	s_nop 1                                                    // 00000000B35C: BF800001
	v_cndmask_b32_e64 v1, v1, v169, vcc                        // 00000000B360: D1000001 01AB5301
	v_cmp_gt_i32_e32 vcc, 2, v32                               // 00000000B368: 7D884082
	s_nop 1                                                    // 00000000B36C: BF800001
	v_cndmask_b32_e64 v2, v2, v169, vcc                        // 00000000B370: D1000002 01AB5302
	v_cmp_gt_i32_e32 vcc, 3, v32                               // 00000000B378: 7D884083
	s_nop 1                                                    // 00000000B37C: BF800001
	v_cndmask_b32_e64 v3, v3, v169, vcc                        // 00000000B380: D1000003 01AB5303
	v_cmp_gt_i32_e32 vcc, 8, v32                               // 00000000B388: 7D884088
	s_nop 1                                                    // 00000000B38C: BF800001
	v_cndmask_b32_e64 v4, v4, v169, vcc                        // 00000000B390: D1000004 01AB5304
	v_cmp_gt_i32_e32 vcc, 9, v32                               // 00000000B398: 7D884089
	s_nop 1                                                    // 00000000B39C: BF800001
	v_cndmask_b32_e64 v5, v5, v169, vcc                        // 00000000B3A0: D1000005 01AB5305
	v_cmp_gt_i32_e32 vcc, 10, v32                              // 00000000B3A8: 7D88408A
	s_nop 1                                                    // 00000000B3AC: BF800001
	v_cndmask_b32_e64 v6, v6, v169, vcc                        // 00000000B3B0: D1000006 01AB5306
	v_cmp_gt_i32_e32 vcc, 11, v32                              // 00000000B3B8: 7D88408B
	s_nop 1                                                    // 00000000B3BC: BF800001
	v_cndmask_b32_e64 v7, v7, v169, vcc                        // 00000000B3C0: D1000007 01AB5307
	v_cmp_gt_i32_e32 vcc, 16, v32                              // 00000000B3C8: 7D884090
	s_nop 1                                                    // 00000000B3CC: BF800001
	v_cndmask_b32_e64 v8, v8, v169, vcc                        // 00000000B3D0: D1000008 01AB5308
	v_cmp_gt_i32_e32 vcc, 17, v32                              // 00000000B3D8: 7D884091
	s_nop 1                                                    // 00000000B3DC: BF800001
	v_cndmask_b32_e64 v9, v9, v169, vcc                        // 00000000B3E0: D1000009 01AB5309
	v_cmp_gt_i32_e32 vcc, 18, v32                              // 00000000B3E8: 7D884092
	s_nop 1                                                    // 00000000B3EC: BF800001
	v_cndmask_b32_e64 v10, v10, v169, vcc                      // 00000000B3F0: D100000A 01AB530A
	v_cmp_gt_i32_e32 vcc, 19, v32                              // 00000000B3F8: 7D884093
	s_nop 1                                                    // 00000000B3FC: BF800001
	v_cndmask_b32_e64 v11, v11, v169, vcc                      // 00000000B400: D100000B 01AB530B
	v_cmp_gt_i32_e32 vcc, 24, v32                              // 00000000B408: 7D884098
	s_nop 1                                                    // 00000000B40C: BF800001
	v_cndmask_b32_e64 v12, v12, v169, vcc                      // 00000000B410: D100000C 01AB530C
	v_cmp_gt_i32_e32 vcc, 25, v32                              // 00000000B418: 7D884099
	s_nop 1                                                    // 00000000B41C: BF800001
	v_cndmask_b32_e64 v13, v13, v169, vcc                      // 00000000B420: D100000D 01AB530D
	v_cmp_gt_i32_e32 vcc, 26, v32                              // 00000000B428: 7D88409A
	s_nop 1                                                    // 00000000B42C: BF800001
	v_cndmask_b32_e64 v14, v14, v169, vcc                      // 00000000B430: D100000E 01AB530E
	v_cmp_gt_i32_e32 vcc, 27, v32                              // 00000000B438: 7D88409B
	s_nop 1                                                    // 00000000B43C: BF800001
	v_cndmask_b32_e64 v15, v15, v169, vcc                      // 00000000B440: D100000F 01AB530F
	s_branch 18                                                // 00000000B448: BF820012 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa94>
	s_nop 13                                                   // 00000000B44C: BF80000D
	v_mov_b32_e32 v0, 0xff800000                               // 00000000B450: 7E0002FF FF800000
	v_mov_b32_e32 v1, v0                                       // 00000000B458: 7E020300
	v_mov_b32_e32 v2, v0                                       // 00000000B45C: 7E040300
	v_mov_b32_e32 v3, v0                                       // 00000000B460: 7E060300
	v_mov_b32_e32 v4, v0                                       // 00000000B464: 7E080300
	v_mov_b32_e32 v5, v0                                       // 00000000B468: 7E0A0300
	v_mov_b32_e32 v6, v0                                       // 00000000B46C: 7E0C0300
	v_mov_b32_e32 v7, v0                                       // 00000000B470: 7E0E0300
	v_mov_b32_e32 v8, v0                                       // 00000000B474: 7E100300
	v_mov_b32_e32 v9, v0                                       // 00000000B478: 7E120300
	v_mov_b32_e32 v10, v0                                      // 00000000B47C: 7E140300
	v_mov_b32_e32 v11, v0                                      // 00000000B480: 7E160300
	v_mov_b32_e32 v12, v0                                      // 00000000B484: 7E180300
	v_mov_b32_e32 v13, v0                                      // 00000000B488: 7E1A0300
	v_mov_b32_e32 v14, v0                                      // 00000000B48C: 7E1C0300
	v_mov_b32_e32 v15, v0                                      // 00000000B490: 7E1E0300
	v_max_f32_e32 v32, v16, v17                                // 00000000B494: 16402310
	v_max3_f32 v32, v18, v19, v32                              // 00000000B498: D1D30020 04822712
	v_max3_f32 v32, v20, v21, v32                              // 00000000B4A0: D1D30020 04822B14
	v_max3_f32 v32, v22, v23, v32                              // 00000000B4A8: D1D30020 04822F16
	v_max3_f32 v32, v24, v25, v32                              // 00000000B4B0: D1D30020 04823318
	v_max3_f32 v32, v26, v27, v32                              // 00000000B4B8: D1D30020 0482371A
	v_max3_f32 v32, v28, v29, v32                              // 00000000B4C0: D1D30020 04823B1C
	v_max3_f32 v32, v30, v31, v32                              // 00000000B4C8: D1D30020 04823F1E
	s_nop 7                                                    // 00000000B4D0: BF800007
	v_max_f32_e32 v33, v0, v1                                  // 00000000B4D4: 16420300
	v_max3_f32 v33, v2, v3, v33                                // 00000000B4D8: D1D30021 04860702
	v_max3_f32 v33, v4, v5, v33                                // 00000000B4E0: D1D30021 04860B04
	v_max3_f32 v33, v6, v7, v33                                // 00000000B4E8: D1D30021 04860F06
	v_max3_f32 v33, v8, v9, v33                                // 00000000B4F0: D1D30021 04861308
	v_max3_f32 v33, v10, v11, v33                              // 00000000B4F8: D1D30021 0486170A
	v_max3_f32 v33, v12, v13, v33                              // 00000000B500: D1D30021 04861B0C
	v_max3_f32 v33, v14, v15, v33                              // 00000000B508: D1D30021 04861F0E
	v_max_f32_e32 v32, v32, v33                                // 00000000B510: 16404320
	v_mov_b32_e32 v33, v32                                     // 00000000B514: 7E420320
	s_nop 1                                                    // 00000000B518: BF800001
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000B51C: 7E40B521
	v_max_f32_e32 v32, v32, v33                                // 00000000B520: 16404320
	v_mul_f32_e32 v111, v142, v32                              // 00000000B524: 0ADE418E
	v_fma_f32 v32, v32, v142, -v111                            // 00000000B528: D1CB0020 85BF1D20
	v_floor_f32_e32 v32, v32                                   // 00000000B530: 7E403F20
	v_med3_f32 v32, v32, s89, 0                                // 00000000B534: D1D60020 0200B320
	v_cvt_i32_f32_e32 v33, v32                                 // 00000000B53C: 7E421120
	v_add_u32_e32 v180, 0x7f, v33                              // 00000000B540: 696842FF 0000007F
	v_lshlrev_b32_e32 v33, 23, v180                            // 00000000B548: 24436897
	v_add_f32_e32 v32, v111, v32                               // 00000000B54C: 0240416F
	v_sub_f32_e32 v32, 0x40c00000, v32                         // 00000000B550: 044040FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000B558: 7F1E038E
	v_pk_fma_f32 v[80:81], v[16:17], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000B55C: D3B00050 1C832110
	v_pk_fma_f32 v[64:65], v[0:1], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000B564: D3B00040 1C832100
	v_pk_fma_f32 v[94:95], v[30:31], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B56C: D3B0005E 1C831D1E
	v_pk_fma_f32 v[92:93], v[28:29], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B574: D3B0005C 1C831D1C
	v_pk_fma_f32 v[90:91], v[26:27], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B57C: D3B0005A 1C831D1A
	v_pk_fma_f32 v[88:89], v[24:25], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B584: D3B00058 1C831D18
	v_pk_fma_f32 v[86:87], v[22:23], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B58C: D3B00056 1C831D16
	v_pk_fma_f32 v[84:85], v[20:21], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B594: D3B00054 1C831D14
	v_pk_fma_f32 v[82:83], v[18:19], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B59C: D3B00052 1C831D12
	v_pk_fma_f32 v[78:79], v[14:15], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B5A4: D3B0004E 1C831D0E
	v_pk_fma_f32 v[76:77], v[12:13], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B5AC: D3B0004C 1C831D0C
	v_pk_fma_f32 v[74:75], v[10:11], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B5B4: D3B0004A 1C831D0A
	v_pk_fma_f32 v[72:73], v[8:9], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B5BC: D3B00048 1C831D08
	v_pk_fma_f32 v[70:71], v[6:7], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B5C4: D3B00046 1C831D06
	v_pk_fma_f32 v[68:69], v[4:5], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B5CC: D3B00044 1C831D04
	v_pk_fma_f32 v[66:67], v[2:3], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B5D4: D3B00042 1C831D02
	s_waitcnt vmcnt(0)                                         // 00000000B5DC: BF8C0F70
	s_mov_b64 s[70:71], s[62:63]                               // 00000000B5E0: BEC6013E
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000B5E4: 86927E00
	s_mov_b64 s[68:69], s[60:61]                               // 00000000B5E8: BEC4013C
	s_mov_b32 s71, s79                                         // 00000000B5EC: BEC7004F
	s_cbranch_scc0 34                                          // 00000000B5F0: BF840022 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc7c>
	s_cmp_ge_u32 s98, 2                                        // 00000000B5F4: BF098262
	s_cbranch_scc1 186                                         // 00000000B5F8: BF8500BA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xee4>
	s_cmp_ge_u32 s98, 3                                        // 00000000B5FC: BF098362
	s_cbranch_scc1 202                                         // 00000000B600: BF8500CA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf2c>
	s_cmp_lt_u32 s98, 4                                        // 00000000B604: BF0A8462
	s_cbranch_scc1 27                                          // 00000000B608: BF85001B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc78>
	s_add_u32 s17, s80, -1                                     // 00000000B60C: 8011C150
	s_and_b32 s17, s17, 3                                      // 00000000B610: 86118311
	s_lshl_b32 s17, s17, 14                                    // 00000000B614: 8E118E11
	s_or_b32 s17, s17, s72                                     // 00000000B618: 87114811
	s_mov_b32 m0, s17                                          // 00000000B61C: BEFC0011
	s_mul_i32 s18, s6, 0xc0                                    // 00000000B620: 9212FF06 000000C0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B628: E05D1000 121100A4
	s_add_u32 m0, s17, 0x1000                                  // 00000000B630: 807CFF11 00001000
	s_mul_i32 s18, s6, 0xd0                                    // 00000000B638: 9212FF06 000000D0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B640: E05D1000 121100A4
	s_or_b32 m0, s17, 0x2000                                   // 00000000B648: 877CFF11 00002000
	s_mul_i32 s18, s6, 0xe0                                    // 00000000B650: 9212FF06 000000E0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B658: E05D1000 121100A4
	s_add_u32 m0, s17, 0x3000                                  // 00000000B660: 807CFF11 00003000
	s_mul_i32 s17, s6, 0xf0                                    // 00000000B668: 9211FF06 000000F0
	buffer_load_dwordx4 v164, s[68:71], s17 offen lds          // 00000000B670: E05D1000 111100A4
	s_waitcnt vmcnt(0)                                         // 00000000B678: BF8C0F70
	s_barrier                                                  // 00000000B67C: BF8A0000
	s_add_u32 s87, s98, -1                                     // 00000000B680: 8057C162
	s_mul_i32 s84, s87, s9                                     // 00000000B684: 92540957
	s_cmp_lt_i32 s80, 1                                        // 00000000B688: BF048150
	s_mul_i32 s87, s87, s99                                    // 00000000B68C: 92576357
	s_cbranch_scc1 54                                          // 00000000B690: BF850036 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd6c>
	s_mov_b32 s17, s16                                         // 00000000B694: BE910010
	s_mov_b32 s18, s16                                         // 00000000B698: BE920010
	s_mov_b32 s19, s16                                         // 00000000B69C: BE930010
	s_mov_b32 s20, s16                                         // 00000000B6A0: BE940010
	s_mov_b32 s21, s16                                         // 00000000B6A4: BE950010
	s_mov_b32 s22, s16                                         // 00000000B6A8: BE960010
	s_mov_b32 s23, s16                                         // 00000000B6AC: BE970010
	s_mov_b32 s24, s16                                         // 00000000B6B0: BE980010
	s_mov_b32 s25, s16                                         // 00000000B6B4: BE990010
	s_mov_b32 s26, s16                                         // 00000000B6B8: BE9A0010
	s_mov_b32 s27, s16                                         // 00000000B6BC: BE9B0010
	s_mov_b32 s28, s16                                         // 00000000B6C0: BE9C0010
	s_mov_b32 s29, s16                                         // 00000000B6C4: BE9D0010
	s_mov_b32 s30, s16                                         // 00000000B6C8: BE9E0010
	s_mov_b32 s31, s16                                         // 00000000B6CC: BE9F0010
	s_cmp_lt_i32 s80, 2                                        // 00000000B6D0: BF048250
	s_cbranch_scc0 91                                          // 00000000B6D4: BF84005B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xe44>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B6D8: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B6DC: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B6E0: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B6E4: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B6E8: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B6EC: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B6F0: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B6F4: 7E1C701E
	s_mov_b32 s78, 0                                           // 00000000B6F8: BECE0080
	v_mov_b32_e32 v179, 0                                      // 00000000B6FC: 7F660280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B700: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B704: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B708: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B70C: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B710: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B714: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B718: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B71C: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B720: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B724: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B728: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B72C: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B730: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B734: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B738: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B73C: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B740: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B744: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B748: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B74C: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B750: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B754: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B758: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B75C: 7E607100
	s_mov_b32 s17, s86                                         // 00000000B760: BE910056
	s_mov_b32 s20, s85                                         // 00000000B764: BE940055
	s_branch 571                                               // 00000000B768: BF82023B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1658>
	s_mov_b32 s17, s16                                         // 00000000B76C: BE910010
	s_mov_b32 s18, s16                                         // 00000000B770: BE920010
	s_mov_b32 s19, s16                                         // 00000000B774: BE930010
	s_mov_b32 s20, s16                                         // 00000000B778: BE940010
	s_mov_b32 s21, s16                                         // 00000000B77C: BE950010
	s_mov_b32 s22, s16                                         // 00000000B780: BE960010
	s_mov_b32 s23, s16                                         // 00000000B784: BE970010
	s_mov_b32 s24, s16                                         // 00000000B788: BE980010
	s_mov_b32 s25, s16                                         // 00000000B78C: BE990010
	s_mov_b32 s26, s16                                         // 00000000B790: BE9A0010
	s_mov_b32 s27, s16                                         // 00000000B794: BE9B0010
	s_mov_b32 s28, s16                                         // 00000000B798: BE9C0010
	s_mov_b32 s29, s16                                         // 00000000B79C: BE9D0010
	s_mov_b32 s30, s16                                         // 00000000B7A0: BE9E0010
	s_mov_b32 s31, s16                                         // 00000000B7A4: BE9F0010
	s_mov_b32 s78, 0                                           // 00000000B7A8: BECE0080
	s_cmp_lg_u32 s80, 0                                        // 00000000B7AC: BF078050
	s_cbranch_scc0 160                                         // 00000000B7B0: BF8400A0 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1034>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B7B4: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B7B8: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B7BC: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B7C0: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B7C4: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B7C8: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B7CC: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B7D0: 7E1C701E
	v_mov_b32_e32 v179, 0                                      // 00000000B7D4: 7F660280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B7D8: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B7DC: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B7E0: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B7E4: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B7E8: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B7EC: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B7F0: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B7F4: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B7F8: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B7FC: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B800: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B804: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B808: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B80C: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B810: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B814: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B818: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B81C: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B820: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B824: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B828: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B82C: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B830: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B834: 7E607100
	s_mov_b32 s17, s86                                         // 00000000B838: BE910056
	s_mov_b32 s20, s85                                         // 00000000B83C: BE940055
	s_branch 1217                                              // 00000000B840: BF8204C1 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2148>
	s_mov_b32 s78, 0                                           // 00000000B844: BECE0080
	s_cmp_eq_u32 s80, 2                                        // 00000000B848: BF068250
	s_cbranch_scc0 85                                          // 00000000B84C: BF840055 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xfa4>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B850: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B854: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B858: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B85C: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B860: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B864: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B868: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B86C: 7E1C701E
	v_mov_b32_e32 v179, 0                                      // 00000000B870: 7F660280
	v_mov_b32_e32 v178, v111                                   // 00000000B874: 7F64036F
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B878: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B87C: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B880: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B884: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B888: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B88C: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B890: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B894: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B898: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B89C: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B8A0: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B8A4: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B8A8: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B8AC: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B8B0: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B8B4: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B8B8: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B8BC: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B8C0: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B8C4: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B8C8: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B8CC: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B8D0: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B8D4: 7E607100
	s_mov_b32 s17, s86                                         // 00000000B8D8: BE910056
	s_mov_b32 s20, s85                                         // 00000000B8DC: BE940055
	s_branch 827                                               // 00000000B8E0: BF82033B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1bd0>
	s_add_u32 s18, s80, 1                                      // 00000000B8E4: 80128150
	s_and_b32 s18, s18, 3                                      // 00000000B8E8: 86128312
	s_lshl_b32 s18, s18, 13                                    // 00000000B8EC: 8E128D12
	s_add_u32 s19, s82, s18                                    // 00000000B8F0: 80131252
	s_add_u32 m0, s19, s72                                     // 00000000B8F4: 807C4813
	s_nop 0                                                    // 00000000B8F8: BF800000
	buffer_load_dwordx4 v166, s[64:67], s99 offen lds          // 00000000B8FC: E05D1000 631000A6
	s_add_u32 s18, s82, s18                                    // 00000000B904: 80121252
	s_add_u32 s18, s18, s72                                    // 00000000B908: 80124812
	s_add_u32 m0, s18, 0x1000                                  // 00000000B90C: 807CFF12 00001000
	s_mul_i32 s18, s7, 0x44                                    // 00000000B914: 9212FF07 00000044
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000B91C: E05D1000 121000A6
	s_cmp_lt_u32 s98, 3                                        // 00000000B924: BF0A8362
	s_cbranch_scc1 65334                                       // 00000000B928: BF85FF36 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc04>
	s_xor_b32 s17, s17, 2                                      // 00000000B92C: 88118211
	s_lshl_b32 s17, s17, 14                                    // 00000000B930: 8E118E11
	s_or_b32 s17, s17, s72                                     // 00000000B934: 87114811
	s_mov_b32 m0, s17                                          // 00000000B938: BEFC0011
	v_readlane_b32 s18, v230, 0                                // 00000000B93C: D2890012 000101E6
	s_nop 4                                                    // 00000000B944: BF800004
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B948: E05D1000 121100A4
	s_add_u32 m0, s17, 0x1000                                  // 00000000B950: 807CFF11 00001000
	s_mul_i32 s18, s6, 0x90                                    // 00000000B958: 9212FF06 00000090
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B960: E05D1000 121100A4
	s_or_b32 m0, s17, 0x2000                                   // 00000000B968: 877CFF11 00002000
	s_mul_i32 s18, s6, 0xa0                                    // 00000000B970: 9212FF06 000000A0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B978: E05D1000 121100A4
	s_add_u32 m0, s17, 0x3000                                  // 00000000B980: 807CFF11 00003000
	s_mul_i32 s17, s6, 0xb0                                    // 00000000B988: 9211FF06 000000B0
	buffer_load_dwordx4 v164, s[68:71], s17 offen lds          // 00000000B990: E05D1000 111100A4
	s_cmp_lt_u32 s98, 4                                        // 00000000B998: BF0A8462
	s_cbranch_scc1 65334                                       // 00000000B99C: BF85FF36 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc78>
	s_branch 65306                                             // 00000000B9A0: BF82FF1A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc0c>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B9A4: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B9A8: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B9AC: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B9B0: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B9B4: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B9B8: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B9BC: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B9C0: 7E1C701E
	v_mov_b32_e32 v179, 0                                      // 00000000B9C4: 7F660280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B9C8: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B9CC: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B9D0: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B9D4: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B9D8: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B9DC: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B9E0: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B9E4: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B9E8: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B9EC: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B9F0: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B9F4: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B9F8: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B9FC: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000BA00: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000BA04: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000BA08: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000BA0C: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000BA10: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000BA14: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000BA18: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000BA1C: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000BA20: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000BA24: 7E607100
	s_mov_b32 s17, s86                                         // 00000000BA28: BE910056
	s_mov_b32 s20, s85                                         // 00000000BA2C: BE940055
	s_branch 1093                                              // 00000000BA30: BF820445 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2148>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000BA34: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000BA38: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000BA3C: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000BA40: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000BA44: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000BA48: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000BA4C: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000BA50: 7E1C701E
	v_mov_b32_e32 v179, 0                                      // 00000000BA54: 7F660280
	s_mov_b32 s78, s80                                         // 00000000BA58: BECE0050
	v_mov_b32_e32 v178, v111                                   // 00000000BA5C: 7F64036F
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000BA60: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000BA64: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000BA68: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000BA6C: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000BA70: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000BA74: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000BA78: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000BA7C: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000BA80: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000BA84: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000BA88: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000BA8C: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000BA90: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000BA94: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000BA98: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000BA9C: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000BAA0: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000BAA4: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000BAA8: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000BAAC: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000BAB0: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000BAB4: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000BAB8: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000BABC: 7E607100
	s_mov_b32 s17, s86                                         // 00000000BAC0: BE910056
	s_mov_b32 s20, s85                                         // 00000000BAC4: BE940055
	s_branch 5                                                 // 00000000BAC8: BF820005 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10e0>
	s_mov_b64 s[10:11], s[20:21]                               // 00000000BACC: BE8A0114
	s_mov_b32 s3, s17                                          // 00000000BAD0: BE830011
	global_store_dword v1, v0, s[14:15]                        // 00000000BAD4: DC708000 000E0001
	s_branch 64797                                             // 00000000BADC: BF82FD1D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x554>
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
	v_mov_b32_e32 v178, v111                                   // 00000000D0C4: 7F64036F
	s_add_u32 s17, s78, s80                                    // 00000000D0C8: 8011504E
	s_bitcmp1_b32 s17, 0                                       // 00000000D0CC: BF0D8011
	s_cbranch_scc1 823                                         // 00000000D0D0: BF850337 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x33b0>
	s_branch 4                                                 // 00000000D0D4: BF820004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26e8>
	v_mov_b32_e32 v178, v111                                   // 00000000D0D8: 7F64036F
	s_add_u32 s17, s78, s80                                    // 00000000D0DC: 8011504E
	s_bitcmp1_b32 s17, 0                                       // 00000000D0E0: BF0D8011
	s_cbranch_scc1 818                                         // 00000000D0E4: BF850332 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x33b0>
	s_add_u32 s17, s78, 1                                      // 00000000D0E8: 8011814E
	s_cmp_ge_u32 s17, s98                                      // 00000000D0EC: BF096211
	s_cbranch_scc1 1634                                        // 00000000D0F0: BF850662 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x407c>
	s_cmp_ge_u32 s78, s77                                      // 00000000D0F4: BF094D4E
	s_cbranch_scc1 597                                         // 00000000D0F8: BF850255 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3050>
	s_setprio 0                                                // 00000000D0FC: BF8F0000
	v_exp_f32_e32 v64, v64                                     // 00000000D100: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000D104: 7E824141
	s_add_u32 s17, s78, s80                                    // 00000000D108: 8011504E
	s_add_u32 s18, s17, 1                                      // 00000000D10C: 80128111
	s_and_b32 s18, s18, 3                                      // 00000000D110: 86128312
	v_mov_b32_e32 v138, 0                                      // 00000000D114: 7F140280
	s_lshl_b32 s18, s18, 14                                    // 00000000D118: 8E128E12
	v_exp_f32_e32 v80, v80                                     // 00000000D11C: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000D120: 7EA24151
	v_exp_f32_e32 v84, v84                                     // 00000000D124: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000D128: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000D12C: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000D130: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000D134: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000D138: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000D13C: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000D140: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000D144: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000D148: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000D14C: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000D150: 7E9A414D
	v_cvt_pk_fp8_f32 v138, v64, v65                            // 00000000D154: D2A2008A 00028340
	v_or_b32_e32 v64, s18, v161                                // 00000000D15C: 28814212
	v_or_b32_e32 v65, s18, v162                                // 00000000D160: 28834412
	ds_read_b128 v[96:99], v64                                 // 00000000D164: D9FE0000 60000040
	ds_read_b128 v[100:103], v64 offset:16                     // 00000000D16C: D9FE0010 64000040
	ds_read_b128 v[206:209], v64 offset:8192                   // 00000000D174: D9FE2000 CE000040
	ds_read_b128 v[210:213], v64 offset:8208                   // 00000000D17C: D9FE2010 D2000040
	ds_read_b128 v[214:217], v65                               // 00000000D184: D9FE0000 D6000041
	ds_read_b128 v[218:221], v65 offset:16                     // 00000000D18C: D9FE0010 DA000041
	ds_read_b128 v[222:225], v65 offset:8192                   // 00000000D194: D9FE2000 DE000041
	ds_read_b128 v[226:229], v65 offset:8208                   // 00000000D19C: D9FE2010 E2000041
	v_mov_b32_e32 v134, 0                                      // 00000000D1A4: 7F0C0280
	v_mov_b32_e32 v135, 0                                      // 00000000D1A8: 7F0E0280
	v_mov_b32_e32 v139, 0                                      // 00000000D1AC: 7F160280
	v_mov_b32_e32 v136, 0                                      // 00000000D1B0: 7F100280
	v_mov_b32_e32 v140, 0                                      // 00000000D1B4: 7F180280
	v_mov_b32_e32 v137, 0                                      // 00000000D1B8: 7F120280
	v_mov_b32_e32 v141, 0                                      // 00000000D1BC: 7F1A0280
	v_exp_f32_e32 v82, v82                                     // 00000000D1C0: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000D1C4: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000D1C8: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000D1CC: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000D1D0: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000D1D4: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000D1D8: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000D1DC: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000D1E0: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000D1E4: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000D1E8: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000D1EC: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000D1F0: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000D1F4: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000D1F8: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000D1FC: 7E9E414F
	v_cvt_pk_fp8_f32 v134, v80, v81                            // 00000000D200: D2A20086 0002A350
	v_cvt_pk_fp8_f32 v135, v84, v85                            // 00000000D208: D2A20087 0002AB54
	v_cvt_pk_fp8_f32 v139, v68, v69                            // 00000000D210: D2A2008B 00028B44
	v_cvt_pk_fp8_f32 v136, v88, v89                            // 00000000D218: D2A20088 0002B358
	v_cvt_pk_fp8_f32 v140, v72, v73                            // 00000000D220: D2A2008C 00029348
	v_cvt_pk_fp8_f32 v137, v92, v93                            // 00000000D228: D2A20089 0002BB5C
	v_cvt_pk_fp8_f32 v141, v76, v77                            // 00000000D230: D2A2008D 00029B4C
	v_cvt_pk_fp8_f32 v134, v82, v83 op_sel:[0,0,1]             // 00000000D238: D2A24086 0002A752
	v_cvt_pk_fp8_f32 v138, v66, v67 op_sel:[0,0,1]             // 00000000D240: D2A2408A 00028742
	v_cvt_pk_fp8_f32 v135, v86, v87 op_sel:[0,0,1]             // 00000000D248: D2A24087 0002AF56
	v_cvt_pk_fp8_f32 v139, v70, v71 op_sel:[0,0,1]             // 00000000D250: D2A2408B 00028F46
	v_cvt_pk_fp8_f32 v136, v90, v91 op_sel:[0,0,1]             // 00000000D258: D2A24088 0002B75A
	v_cvt_pk_fp8_f32 v140, v74, v75 op_sel:[0,0,1]             // 00000000D260: D2A2408C 0002974A
	v_cvt_pk_fp8_f32 v137, v94, v95 op_sel:[0,0,1]             // 00000000D268: D2A24089 0002BF5E
	v_cvt_pk_fp8_f32 v141, v78, v79 op_sel:[0,0,1]             // 00000000D270: D2A2408D 00029F4E
	s_barrier                                                  // 00000000D278: BF8A0000
	s_setprio 1                                                // 00000000D27C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[134:141], 0// 00000000D280: D3AD0040 02030D7E
	s_nop 11                                                   // 00000000D288: BF80000B
	v_lshlrev_b32_e32 v65, 23, v180                            // 00000000D28C: 24836897
	v_fma_f32 v179, v64, v65, v179                             // 00000000D290: D1CB00B3 06CE8340
	s_waitcnt lgkmcnt(0)                                       // 00000000D298: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[96:103], v[182:189], 0// 00000000D29C: D3AE0050 02036D60
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[206:213], v[182:189], 0// 00000000D2A4: D3AE006E 02036DCE
	v_or_b32_e32 v64, s18, v163                                // 00000000D2AC: 28814612
	ds_read_b128 v[66:69], v64                                 // 00000000D2B0: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 00000000D2B8: D9FE0010 46000040
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[214:221], v[190:197], v[80:95]// 00000000D2C0: D3AE0050 05437DD6
	ds_read_b128 v[96:99], v64 offset:8192                     // 00000000D2C8: D9FE2000 60000040
	ds_read_b128 v[100:103], v64 offset:8208                   // 00000000D2D0: D9FE2010 64000040
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[222:229], v[190:197], v[110:125]// 00000000D2D8: D3AE006E 05BB7DDE
	s_waitcnt lgkmcnt(0)                                       // 00000000D2E0: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[66:73], v[198:205], v[80:95]// 00000000D2E4: D3AE0050 05438D42
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[96:103], v[198:205], v[110:125]// 00000000D2EC: D3AE006E 05BB8D60
	s_lshl_b32 s18, s78, 6                                     // 00000000D2F4: 8E12864E
	s_add_u32 s20, s18, 64                                     // 00000000D2F8: 8014C012
	s_sub_u32 s18, s3, s20                                     // 00000000D2FC: 80921403
	s_sub_i32 s18, s18, 0                                      // 00000000D300: 81928012
	s_nop 1                                                    // 00000000D304: BF800001
	v_mov_b32_e32 v64, v80                                     // 00000000D308: 7E800350
	v_mov_b32_e32 v65, v81                                     // 00000000D30C: 7E820351
	v_mov_b32_e32 v66, v82                                     // 00000000D310: 7E840352
	v_mov_b32_e32 v67, v83                                     // 00000000D314: 7E860353
	v_mov_b32_e32 v68, v84                                     // 00000000D318: 7E880354
	v_mov_b32_e32 v69, v85                                     // 00000000D31C: 7E8A0355
	v_mov_b32_e32 v70, v86                                     // 00000000D320: 7E8C0356
	v_mov_b32_e32 v71, v87                                     // 00000000D324: 7E8E0357
	v_mov_b32_e32 v72, v88                                     // 00000000D328: 7E900358
	v_mov_b32_e32 v73, v89                                     // 00000000D32C: 7E920359
	v_mov_b32_e32 v74, v90                                     // 00000000D330: 7E94035A
	v_mov_b32_e32 v75, v91                                     // 00000000D334: 7E96035B
	v_mov_b32_e32 v76, v92                                     // 00000000D338: 7E98035C
	v_mov_b32_e32 v77, v93                                     // 00000000D33C: 7E9A035D
	v_mov_b32_e32 v78, v94                                     // 00000000D340: 7E9C035E
	s_cmp_ge_i32 s18, 32                                       // 00000000D344: BF03A012
	v_mov_b32_e32 v79, v95                                     // 00000000D348: 7E9E035F
	s_cbranch_scc1 84                                          // 00000000D34C: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2aa0>
	v_mov_b32_e32 v64, 0xff800000                              // 00000000D350: 7E8002FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000D358: BF048012
	v_mov_b32_e32 v65, v64                                     // 00000000D35C: 7E820340
	v_mov_b32_e32 v66, v64                                     // 00000000D360: 7E840340
	v_mov_b32_e32 v67, v64                                     // 00000000D364: 7E860340
	v_mov_b32_e32 v68, v64                                     // 00000000D368: 7E880340
	v_mov_b32_e32 v69, v64                                     // 00000000D36C: 7E8A0340
	v_mov_b32_e32 v70, v64                                     // 00000000D370: 7E8C0340
	v_mov_b32_e32 v71, v64                                     // 00000000D374: 7E8E0340
	v_mov_b32_e32 v72, v64                                     // 00000000D378: 7E900340
	v_mov_b32_e32 v73, v64                                     // 00000000D37C: 7E920340
	v_mov_b32_e32 v74, v64                                     // 00000000D380: 7E940340
	v_mov_b32_e32 v75, v64                                     // 00000000D384: 7E960340
	v_mov_b32_e32 v76, v64                                     // 00000000D388: 7E980340
	v_mov_b32_e32 v77, v64                                     // 00000000D38C: 7E9A0340
	v_mov_b32_e32 v78, v64                                     // 00000000D390: 7E9C0340
	v_mov_b32_e32 v79, v64                                     // 00000000D394: 7E9E0340
	s_cbranch_scc1 65                                          // 00000000D398: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2aa0>
	v_add_u32_e32 v79, s18, v171                               // 00000000D39C: 689F5612
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 00000000D3A0: 7D889E80
	s_nop 1                                                    // 00000000D3A4: BF800001
	v_cndmask_b32_e64 v64, v80, v169, vcc                      // 00000000D3A8: D1000040 01AB5350
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 00000000D3B0: 7D889E81
	s_nop 1                                                    // 00000000D3B4: BF800001
	v_cndmask_b32_e64 v65, v81, v169, vcc                      // 00000000D3B8: D1000041 01AB5351
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 00000000D3C0: 7D889E82
	s_nop 1                                                    // 00000000D3C4: BF800001
	v_cndmask_b32_e64 v66, v82, v169, vcc                      // 00000000D3C8: D1000042 01AB5352
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 00000000D3D0: 7D889E83
	s_nop 1                                                    // 00000000D3D4: BF800001
	v_cndmask_b32_e64 v67, v83, v169, vcc                      // 00000000D3D8: D1000043 01AB5353
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 00000000D3E0: 7D889E88
	s_nop 1                                                    // 00000000D3E4: BF800001
	v_cndmask_b32_e64 v68, v84, v169, vcc                      // 00000000D3E8: D1000044 01AB5354
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 00000000D3F0: 7D889E89
	s_nop 1                                                    // 00000000D3F4: BF800001
	v_cndmask_b32_e64 v69, v85, v169, vcc                      // 00000000D3F8: D1000045 01AB5355
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 00000000D400: 7D889E8A
	s_nop 1                                                    // 00000000D404: BF800001
	v_cndmask_b32_e64 v70, v86, v169, vcc                      // 00000000D408: D1000046 01AB5356
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 00000000D410: 7D889E8B
	s_nop 1                                                    // 00000000D414: BF800001
	v_cndmask_b32_e64 v71, v87, v169, vcc                      // 00000000D418: D1000047 01AB5357
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 00000000D420: 7D889E90
	s_nop 1                                                    // 00000000D424: BF800001
	v_cndmask_b32_e64 v72, v88, v169, vcc                      // 00000000D428: D1000048 01AB5358
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 00000000D430: 7D889E91
	s_nop 1                                                    // 00000000D434: BF800001
	v_cndmask_b32_e64 v73, v89, v169, vcc                      // 00000000D438: D1000049 01AB5359
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 00000000D440: 7D889E92
	s_nop 1                                                    // 00000000D444: BF800001
	v_cndmask_b32_e64 v74, v90, v169, vcc                      // 00000000D448: D100004A 01AB535A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 00000000D450: 7D889E93
	s_nop 1                                                    // 00000000D454: BF800001
	v_cndmask_b32_e64 v75, v91, v169, vcc                      // 00000000D458: D100004B 01AB535B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 00000000D460: 7D889E98
	s_nop 1                                                    // 00000000D464: BF800001
	v_cndmask_b32_e64 v76, v92, v169, vcc                      // 00000000D468: D100004C 01AB535C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 00000000D470: 7D889E99
	s_nop 1                                                    // 00000000D474: BF800001
	v_cndmask_b32_e64 v77, v93, v169, vcc                      // 00000000D478: D100004D 01AB535D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 00000000D480: 7D889E9A
	s_nop 1                                                    // 00000000D484: BF800001
	v_cndmask_b32_e64 v78, v94, v169, vcc                      // 00000000D488: D100004E 01AB535E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 00000000D490: 7D889E9B
	s_nop 1                                                    // 00000000D494: BF800001
	v_cndmask_b32_e64 v79, v95, v169, vcc                      // 00000000D498: D100004F 01AB535F
	s_sub_u32 s18, s3, s20                                     // 00000000D4A0: 80921403
	s_sub_i32 s18, s18, 32                                     // 00000000D4A4: 8192A012
	v_mov_b32_e32 v94, v110                                    // 00000000D4A8: 7EBC036E
	v_mov_b32_e32 v95, v111                                    // 00000000D4AC: 7EBE036F
	v_mov_b32_e32 v96, v112                                    // 00000000D4B0: 7EC00370
	v_mov_b32_e32 v97, v113                                    // 00000000D4B4: 7EC20371
	v_mov_b32_e32 v98, v114                                    // 00000000D4B8: 7EC40372
	v_mov_b32_e32 v99, v115                                    // 00000000D4BC: 7EC60373
	v_mov_b32_e32 v100, v116                                   // 00000000D4C0: 7EC80374
	v_mov_b32_e32 v101, v117                                   // 00000000D4C4: 7ECA0375
	v_mov_b32_e32 v102, v118                                   // 00000000D4C8: 7ECC0376
	v_mov_b32_e32 v103, v119                                   // 00000000D4CC: 7ECE0377
	v_mov_b32_e32 v104, v120                                   // 00000000D4D0: 7ED00378
	v_mov_b32_e32 v105, v121                                   // 00000000D4D4: 7ED20379
	v_mov_b32_e32 v106, v122                                   // 00000000D4D8: 7ED4037A
	v_mov_b32_e32 v107, v123                                   // 00000000D4DC: 7ED6037B
	v_mov_b32_e32 v108, v124                                   // 00000000D4E0: 7ED8037C
	s_cmp_ge_i32 s18, 32                                       // 00000000D4E4: BF03A012
	v_mov_b32_e32 v109, v125                                   // 00000000D4E8: 7EDA037D
	s_cbranch_scc1 84                                          // 00000000D4EC: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2c40>
	v_mov_b32_e32 v94, 0xff800000                              // 00000000D4F0: 7EBC02FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000D4F8: BF048012
	v_mov_b32_e32 v95, v94                                     // 00000000D4FC: 7EBE035E
	v_mov_b32_e32 v96, v94                                     // 00000000D500: 7EC0035E
	v_mov_b32_e32 v97, v94                                     // 00000000D504: 7EC2035E
	v_mov_b32_e32 v98, v94                                     // 00000000D508: 7EC4035E
	v_mov_b32_e32 v99, v94                                     // 00000000D50C: 7EC6035E
	v_mov_b32_e32 v100, v94                                    // 00000000D510: 7EC8035E
	v_mov_b32_e32 v101, v94                                    // 00000000D514: 7ECA035E
	v_mov_b32_e32 v102, v94                                    // 00000000D518: 7ECC035E
	v_mov_b32_e32 v103, v94                                    // 00000000D51C: 7ECE035E
	v_mov_b32_e32 v104, v94                                    // 00000000D520: 7ED0035E
	v_mov_b32_e32 v105, v94                                    // 00000000D524: 7ED2035E
	v_mov_b32_e32 v106, v94                                    // 00000000D528: 7ED4035E
	v_mov_b32_e32 v107, v94                                    // 00000000D52C: 7ED6035E
	v_mov_b32_e32 v108, v94                                    // 00000000D530: 7ED8035E
	v_mov_b32_e32 v109, v94                                    // 00000000D534: 7EDA035E
	s_cbranch_scc1 65                                          // 00000000D538: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2c40>
	v_add_u32_e32 v80, s18, v171                               // 00000000D53C: 68A15612
	v_cmp_gt_i32_e32 vcc, 0, v80                               // 00000000D540: 7D88A080
	s_nop 1                                                    // 00000000D544: BF800001
	v_cndmask_b32_e64 v94, v110, v169, vcc                     // 00000000D548: D100005E 01AB536E
	v_cmp_gt_i32_e32 vcc, 1, v80                               // 00000000D550: 7D88A081
	s_nop 1                                                    // 00000000D554: BF800001
	v_cndmask_b32_e64 v95, v111, v169, vcc                     // 00000000D558: D100005F 01AB536F
	v_cmp_gt_i32_e32 vcc, 2, v80                               // 00000000D560: 7D88A082
	s_nop 1                                                    // 00000000D564: BF800001
	v_cndmask_b32_e64 v96, v112, v169, vcc                     // 00000000D568: D1000060 01AB5370
	v_cmp_gt_i32_e32 vcc, 3, v80                               // 00000000D570: 7D88A083
	s_nop 1                                                    // 00000000D574: BF800001
	v_cndmask_b32_e64 v97, v113, v169, vcc                     // 00000000D578: D1000061 01AB5371
	v_cmp_gt_i32_e32 vcc, 8, v80                               // 00000000D580: 7D88A088
	s_nop 1                                                    // 00000000D584: BF800001
	v_cndmask_b32_e64 v98, v114, v169, vcc                     // 00000000D588: D1000062 01AB5372
	v_cmp_gt_i32_e32 vcc, 9, v80                               // 00000000D590: 7D88A089
	s_nop 1                                                    // 00000000D594: BF800001
	v_cndmask_b32_e64 v99, v115, v169, vcc                     // 00000000D598: D1000063 01AB5373
	v_cmp_gt_i32_e32 vcc, 10, v80                              // 00000000D5A0: 7D88A08A
	s_nop 1                                                    // 00000000D5A4: BF800001
	v_cndmask_b32_e64 v100, v116, v169, vcc                    // 00000000D5A8: D1000064 01AB5374
	v_cmp_gt_i32_e32 vcc, 11, v80                              // 00000000D5B0: 7D88A08B
	s_nop 1                                                    // 00000000D5B4: BF800001
	v_cndmask_b32_e64 v101, v117, v169, vcc                    // 00000000D5B8: D1000065 01AB5375
	v_cmp_gt_i32_e32 vcc, 16, v80                              // 00000000D5C0: 7D88A090
	s_nop 1                                                    // 00000000D5C4: BF800001
	v_cndmask_b32_e64 v102, v118, v169, vcc                    // 00000000D5C8: D1000066 01AB5376
	v_cmp_gt_i32_e32 vcc, 17, v80                              // 00000000D5D0: 7D88A091
	s_nop 1                                                    // 00000000D5D4: BF800001
	v_cndmask_b32_e64 v103, v119, v169, vcc                    // 00000000D5D8: D1000067 01AB5377
	v_cmp_gt_i32_e32 vcc, 18, v80                              // 00000000D5E0: 7D88A092
	s_nop 1                                                    // 00000000D5E4: BF800001
	v_cndmask_b32_e64 v104, v120, v169, vcc                    // 00000000D5E8: D1000068 01AB5378
	v_cmp_gt_i32_e32 vcc, 19, v80                              // 00000000D5F0: 7D88A093
	s_nop 1                                                    // 00000000D5F4: BF800001
	v_cndmask_b32_e64 v105, v121, v169, vcc                    // 00000000D5F8: D1000069 01AB5379
	v_cmp_gt_i32_e32 vcc, 24, v80                              // 00000000D600: 7D88A098
	s_nop 1                                                    // 00000000D604: BF800001
	v_cndmask_b32_e64 v106, v122, v169, vcc                    // 00000000D608: D100006A 01AB537A
	v_cmp_gt_i32_e32 vcc, 25, v80                              // 00000000D610: 7D88A099
	s_nop 1                                                    // 00000000D614: BF800001
	v_cndmask_b32_e64 v107, v123, v169, vcc                    // 00000000D618: D100006B 01AB537B
	v_cmp_gt_i32_e32 vcc, 26, v80                              // 00000000D620: 7D88A09A
	s_nop 1                                                    // 00000000D624: BF800001
	v_cndmask_b32_e64 v108, v124, v169, vcc                    // 00000000D628: D100006C 01AB537C
	v_cmp_gt_i32_e32 vcc, 27, v80                              // 00000000D630: 7D88A09B
	s_nop 1                                                    // 00000000D634: BF800001
	v_cndmask_b32_e64 v109, v125, v169, vcc                    // 00000000D638: D100006D 01AB537D
	s_and_b32 s17, s17, 3                                      // 00000000D640: 86118311
	v_max_f32_e32 v80, v64, v65                                // 00000000D644: 16A08340
	v_max3_f32 v80, v66, v67, v80                              // 00000000D648: D1D30050 05428742
	v_max3_f32 v80, v68, v69, v80                              // 00000000D650: D1D30050 05428B44
	v_max3_f32 v80, v70, v71, v80                              // 00000000D658: D1D30050 05428F46
	v_max3_f32 v80, v72, v73, v80                              // 00000000D660: D1D30050 05429348
	v_max3_f32 v80, v74, v75, v80                              // 00000000D668: D1D30050 0542974A
	v_max3_f32 v80, v76, v77, v80                              // 00000000D670: D1D30050 05429B4C
	v_max3_f32 v80, v78, v79, v80                              // 00000000D678: D1D30050 05429F4E
	v_max_f32_e32 v81, v94, v95                                // 00000000D680: 16A2BF5E
	v_max3_f32 v81, v96, v97, v81                              // 00000000D684: D1D30051 0546C360
	v_max3_f32 v81, v98, v99, v81                              // 00000000D68C: D1D30051 0546C762
	v_max3_f32 v81, v100, v101, v81                            // 00000000D694: D1D30051 0546CB64
	v_max3_f32 v81, v102, v103, v81                            // 00000000D69C: D1D30051 0546CF66
	v_max3_f32 v81, v104, v105, v81                            // 00000000D6A4: D1D30051 0546D368
	v_max3_f32 v81, v106, v107, v81                            // 00000000D6AC: D1D30051 0546D76A
	v_max3_f32 v81, v108, v109, v81                            // 00000000D6B4: D1D30051 0546DB6C
	v_max_f32_e32 v80, v80, v81                                // 00000000D6BC: 16A0A350
	v_mov_b32_e32 v81, v80                                     // 00000000D6C0: 7EA20350
	s_nop 1                                                    // 00000000D6C4: BF800001
	v_permlane32_swap_b32_e32 v80, v81                         // 00000000D6C8: 7EA0B551
	v_max_f32_e32 v80, v80, v81                                // 00000000D6CC: 16A0A350
	v_mul_f32_e32 v81, v142, v80                               // 00000000D6D0: 0AA2A18E
	v_max_f32_e32 v81, v178, v81                               // 00000000D6D4: 16A2A3B2
	v_sub_f32_e32 v82, v81, v178                               // 00000000D6D8: 04A56551
	v_cmp_lt_f32_e32 vcc, s91, v82                             // 00000000D6DC: 7C82A45B
	s_cmp_lg_u64 vcc, 0                                        // 00000000D6E0: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000D6E4: 859280C1
	s_and_b64 s[20:21], s[18:19], exec                         // 00000000D6E8: 86947E12
	s_cselect_b32 s20, 1, 0                                    // 00000000D6EC: 85148081
	s_cselect_b64 s[20:21], -1, 0                              // 00000000D6F0: 859480C1
	v_cndmask_b32_e64 v111, v178, v81, s[20:21]                // 00000000D6F4: D100006F 0052A3B2
	v_fma_f32 v80, v80, v142, -v111                            // 00000000D6FC: D1CB0050 85BF1D50
	v_floor_f32_e32 v80, v80                                   // 00000000D704: 7EA03F50
	v_med3_f32 v80, v80, s89, 0                                // 00000000D708: D1D60050 0200B350
	v_cvt_i32_f32_e32 v81, v80                                 // 00000000D710: 7EA21150
	v_add_u32_e32 v112, 0x7f, v81                              // 00000000D714: 68E0A2FF 0000007F
	v_lshlrev_b32_e32 v81, 23, v112                            // 00000000D71C: 24A2E097
	v_add_f32_e32 v80, v111, v80                               // 00000000D720: 02A0A16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000D724: 04DCA0FF 40C00000
	s_lshl_b32 s20, s17, 13                                    // 00000000D72C: 8E148D11
	s_add_u32 s21, s82, s20                                    // 00000000D730: 80151452
	v_add3_u32 v80, s21, v173, v172                            // 00000000D734: D1FF0050 06B35A15
	s_waitcnt vmcnt(0)                                         // 00000000D73C: BF8C0F70
	ds_read_b64_tr_b8 v[114:115], v80                          // 00000000D740: D9C40000 72000050
	ds_read_b64_tr_b8 v[116:117], v80 offset:1024              // 00000000D748: D9C40400 74000050
	ds_read_b64_tr_b8 v[118:119], v80 offset:2048              // 00000000D750: D9C40800 76000050
	ds_read_b64_tr_b8 v[120:121], v80 offset:3072              // 00000000D758: D9C40C00 78000050
	s_add_u32 s21, s82, s20                                    // 00000000D760: 80151452
	v_add3_u32 v80, s21, v173, v172                            // 00000000D764: D1FF0050 06B35A15
	ds_read_b64_tr_b8 v[206:207], v80 offset:256               // 00000000D76C: D9C40100 CE000050
	ds_read_b64_tr_b8 v[208:209], v80 offset:1280              // 00000000D774: D9C40500 D0000050
	ds_read_b64_tr_b8 v[210:211], v80 offset:2304              // 00000000D77C: D9C40900 D2000050
	ds_read_b64_tr_b8 v[212:213], v80 offset:3328              // 00000000D784: D9C40D00 D4000050
	s_add_u32 s21, s82, s20                                    // 00000000D78C: 80151452
	v_add3_u32 v80, s21, v173, v172                            // 00000000D790: D1FF0050 06B35A15
	ds_read_b64_tr_b8 v[82:83], v80 offset:512                 // 00000000D798: D9C40200 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1536                // 00000000D7A0: D9C40600 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2560                // 00000000D7A8: D9C40A00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3584                // 00000000D7B0: D9C40E00 58000050
	s_waitcnt lgkmcnt(4)                                       // 00000000D7B8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[114:121], v[134:141], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000D7BC: D3AC0000 000369AA D3AE0830 04C30D72
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[206:213], v[134:141], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000D7CC: D3AC0000 000369AA D3AE0820 04830DCE
	s_add_u32 s20, s82, s20                                    // 00000000D7DC: 80141452
	v_add3_u32 v80, s20, v173, v172                            // 00000000D7E0: D1FF0050 06B35A14
	ds_read_b64_tr_b8 v[114:115], v80 offset:768               // 00000000D7E8: D9C40300 72000050
	ds_read_b64_tr_b8 v[116:117], v80 offset:1792              // 00000000D7F0: D9C40700 74000050
	ds_read_b64_tr_b8 v[118:119], v80 offset:2816              // 00000000D7F8: D9C40B00 76000050
	ds_read_b64_tr_b8 v[120:121], v80 offset:3840              // 00000000D800: D9C40F00 78000050
	s_add_u32 s20, s78, 4                                      // 00000000D808: 8014844E
	s_cmp_ge_u32 s20, s98                                      // 00000000D80C: BF096214
	s_cbranch_scc1 13                                          // 00000000D810: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2e48>
	s_lshl_b32 s21, s17, 14                                    // 00000000D814: 8E158E11
	s_mul_i32 s20, s20, s6                                     // 00000000D818: 92140614
	s_or_b32 s21, s21, s72                                     // 00000000D81C: 87154815
	s_lshl_b32 s20, s20, 6                                     // 00000000D820: 8E148614
	s_mov_b32 m0, s21                                          // 00000000D824: BEFC0015
	s_nop 0                                                    // 00000000D828: BF800000
	buffer_load_dwordx4 v164, s[68:71], s20 offen lds          // 00000000D82C: E05D1000 141100A4
	s_or_b32 m0, s21, 0x2000                                   // 00000000D834: 877CFF15 00002000
	s_nop 0                                                    // 00000000D83C: BF800000
	buffer_load_dwordx4 v165, s[68:71], s20 offen lds          // 00000000D840: E05D1000 141100A5
	s_add_u32 s20, s78, 2                                      // 00000000D848: 8014824E
	s_cmp_ge_u32 s20, s98                                      // 00000000D84C: BF096214
	s_cbranch_scc1 9                                           // 00000000D850: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2e78>
	s_xor_b32 s17, s17, 2                                      // 00000000D854: 88118211
	s_mul_i32 s20, s20, s7                                     // 00000000D858: 92140714
	s_lshl_b32 s17, s17, 13                                    // 00000000D85C: 8E118D11
	s_lshl_b32 s20, s20, 6                                     // 00000000D860: 8E148614
	s_add_u32 s17, s82, s17                                    // 00000000D864: 80111152
	s_add_u32 m0, s17, s72                                     // 00000000D868: 807C4811
	s_nop 0                                                    // 00000000D86C: BF800000
	buffer_load_dwordx4 v166, s[64:67], s20 offen lds          // 00000000D870: E05D1000 141000A6
	s_waitcnt lgkmcnt(0)                                       // 00000000D878: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[134:141], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000D87C: D3AC0000 000369AA D3AE0810 04430D52
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[134:141], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000D88C: D3AC0000 000369AA D3AE0800 04030D72
	v_mov_b32_e32 v143, v142                                   // 00000000D89C: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000D8A0: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000D8A8: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D8B0: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D8B8: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D8C0: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D8C8: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D8D0: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D8D8: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D8E0: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D8E8: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D8F0: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D8F8: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D900: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D908: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D910: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D918: D3B00042 1DBB1D60
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000D920: 86927E12
	s_cbranch_scc0 68                                          // 00000000D924: BF840044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3038>
	v_sub_f32_e32 v96, v178, v111                              // 00000000D928: 04C0DFB2
	v_exp_f32_e32 v96, v96                                     // 00000000D92C: 7EC04160
	s_nop 0                                                    // 00000000D930: BF800000
	v_pk_mul_f32 v[62:63], v[96:97], v[62:63] op_sel_hi:[0,1]  // 00000000D934: D3B1403E 10027D60
	v_pk_mul_f32 v[60:61], v[96:97], v[60:61] op_sel_hi:[0,1]  // 00000000D93C: D3B1403C 10027960
	v_pk_mul_f32 v[58:59], v[96:97], v[58:59] op_sel_hi:[0,1]  // 00000000D944: D3B1403A 10027560
	v_pk_mul_f32 v[56:57], v[96:97], v[56:57] op_sel_hi:[0,1]  // 00000000D94C: D3B14038 10027160
	v_pk_mul_f32 v[54:55], v[96:97], v[54:55] op_sel_hi:[0,1]  // 00000000D954: D3B14036 10026D60
	v_pk_mul_f32 v[52:53], v[96:97], v[52:53] op_sel_hi:[0,1]  // 00000000D95C: D3B14034 10026960
	v_pk_mul_f32 v[50:51], v[96:97], v[50:51] op_sel_hi:[0,1]  // 00000000D964: D3B14032 10026560
	v_pk_mul_f32 v[48:49], v[96:97], v[48:49] op_sel_hi:[0,1]  // 00000000D96C: D3B14030 10026160
	v_pk_mul_f32 v[46:47], v[96:97], v[46:47] op_sel_hi:[0,1]  // 00000000D974: D3B1402E 10025D60
	v_pk_mul_f32 v[44:45], v[96:97], v[44:45] op_sel_hi:[0,1]  // 00000000D97C: D3B1402C 10025960
	v_pk_mul_f32 v[42:43], v[96:97], v[42:43] op_sel_hi:[0,1]  // 00000000D984: D3B1402A 10025560
	v_pk_mul_f32 v[40:41], v[96:97], v[40:41] op_sel_hi:[0,1]  // 00000000D98C: D3B14028 10025160
	v_pk_mul_f32 v[38:39], v[96:97], v[38:39] op_sel_hi:[0,1]  // 00000000D994: D3B14026 10024D60
	v_pk_mul_f32 v[36:37], v[96:97], v[36:37] op_sel_hi:[0,1]  // 00000000D99C: D3B14024 10024960
	v_pk_mul_f32 v[34:35], v[96:97], v[34:35] op_sel_hi:[0,1]  // 00000000D9A4: D3B14022 10024560
	v_pk_mul_f32 v[32:33], v[96:97], v[32:33] op_sel_hi:[0,1]  // 00000000D9AC: D3B14020 10024160
	v_pk_mul_f32 v[30:31], v[96:97], v[30:31] op_sel_hi:[0,1]  // 00000000D9B4: D3B1401E 10023D60
	v_pk_mul_f32 v[28:29], v[96:97], v[28:29] op_sel_hi:[0,1]  // 00000000D9BC: D3B1401C 10023960
	v_pk_mul_f32 v[26:27], v[96:97], v[26:27] op_sel_hi:[0,1]  // 00000000D9C4: D3B1401A 10023560
	v_pk_mul_f32 v[24:25], v[96:97], v[24:25] op_sel_hi:[0,1]  // 00000000D9CC: D3B14018 10023160
	v_pk_mul_f32 v[22:23], v[96:97], v[22:23] op_sel_hi:[0,1]  // 00000000D9D4: D3B14016 10022D60
	v_pk_mul_f32 v[20:21], v[96:97], v[20:21] op_sel_hi:[0,1]  // 00000000D9DC: D3B14014 10022960
	v_pk_mul_f32 v[18:19], v[96:97], v[18:19] op_sel_hi:[0,1]  // 00000000D9E4: D3B14012 10022560
	v_pk_mul_f32 v[16:17], v[96:97], v[16:17] op_sel_hi:[0,1]  // 00000000D9EC: D3B14010 10022160
	v_pk_mul_f32 v[14:15], v[96:97], v[14:15] op_sel_hi:[0,1]  // 00000000D9F4: D3B1400E 10021D60
	v_pk_mul_f32 v[12:13], v[96:97], v[12:13] op_sel_hi:[0,1]  // 00000000D9FC: D3B1400C 10021960
	v_pk_mul_f32 v[10:11], v[96:97], v[10:11] op_sel_hi:[0,1]  // 00000000DA04: D3B1400A 10021560
	v_pk_mul_f32 v[8:9], v[96:97], v[8:9] op_sel_hi:[0,1]      // 00000000DA0C: D3B14008 10021160
	v_pk_mul_f32 v[6:7], v[96:97], v[6:7] op_sel_hi:[0,1]      // 00000000DA14: D3B14006 10020D60
	v_pk_mul_f32 v[4:5], v[96:97], v[4:5] op_sel_hi:[0,1]      // 00000000DA1C: D3B14004 10020960
	v_pk_mul_f32 v[2:3], v[96:97], v[2:3] op_sel_hi:[0,1]      // 00000000DA24: D3B14002 10020560
	v_pk_mul_f32 v[0:1], v[96:97], v[0:1] op_sel_hi:[0,1]      // 00000000DA2C: D3B14000 10020160
	v_mul_f32_e32 v179, v179, v96                              // 00000000DA34: 0B66C1B3
	s_waitcnt vmcnt(0)                                         // 00000000DA38: BF8C0F70
	s_barrier                                                  // 00000000DA3C: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000DA40: 804E814E
	v_mov_b32_e32 v180, v112                                   // 00000000DA44: 7F680370
	v_mov_b32_e32 v178, v111                                   // 00000000DA48: 7F64036F
	s_branch 216                                               // 00000000DA4C: BF8200D8 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x33b0>
	s_cmp_eq_u32 s78, s77                                      // 00000000DA50: BF064D4E
	s_cbranch_scc0 178                                         // 00000000DA54: BF8400B2 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3320>
	s_setprio 0                                                // 00000000DA58: BF8F0000
	v_exp_f32_e32 v104, v80                                    // 00000000DA5C: 7ED04150
	v_exp_f32_e32 v105, v81                                    // 00000000DA60: 7ED24151
	v_exp_f32_e32 v108, v64                                    // 00000000DA64: 7ED84140
	v_exp_f32_e32 v109, v65                                    // 00000000DA68: 7EDA4141
	v_exp_f32_e32 v112, v84                                    // 00000000DA6C: 7EE04154
	v_exp_f32_e32 v113, v85                                    // 00000000DA70: 7EE24155
	v_exp_f32_e32 v116, v68                                    // 00000000DA74: 7EE84144
	v_exp_f32_e32 v117, v69                                    // 00000000DA78: 7EEA4145
	v_exp_f32_e32 v120, v88                                    // 00000000DA7C: 7EF04158
	v_exp_f32_e32 v121, v89                                    // 00000000DA80: 7EF24159
	v_exp_f32_e32 v124, v72                                    // 00000000DA84: 7EF84148
	v_exp_f32_e32 v125, v73                                    // 00000000DA88: 7EFA4149
	v_exp_f32_e32 v136, v92                                    // 00000000DA8C: 7F10415C
	v_exp_f32_e32 v137, v93                                    // 00000000DA90: 7F12415D
	v_exp_f32_e32 v140, v76                                    // 00000000DA94: 7F18414C
	v_exp_f32_e32 v141, v77                                    // 00000000DA98: 7F1A414D
	v_mov_b32_e32 v96, 0                                       // 00000000DA9C: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000DAA0: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000DAA4: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000DAA8: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000DAAC: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000DAB0: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000DAB4: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000DAB8: 7ECE0280
	v_exp_f32_e32 v106, v82                                    // 00000000DABC: 7ED44152
	v_exp_f32_e32 v107, v83                                    // 00000000DAC0: 7ED64153
	v_exp_f32_e32 v110, v66                                    // 00000000DAC4: 7EDC4142
	v_exp_f32_e32 v111, v67                                    // 00000000DAC8: 7EDE4143
	v_exp_f32_e32 v114, v86                                    // 00000000DACC: 7EE44156
	v_exp_f32_e32 v115, v87                                    // 00000000DAD0: 7EE64157
	v_exp_f32_e32 v118, v70                                    // 00000000DAD4: 7EEC4146
	v_exp_f32_e32 v119, v71                                    // 00000000DAD8: 7EEE4147
	v_exp_f32_e32 v122, v90                                    // 00000000DADC: 7EF4415A
	v_exp_f32_e32 v123, v91                                    // 00000000DAE0: 7EF6415B
	v_exp_f32_e32 v134, v74                                    // 00000000DAE4: 7F0C414A
	v_exp_f32_e32 v135, v75                                    // 00000000DAE8: 7F0E414B
	v_exp_f32_e32 v138, v94                                    // 00000000DAEC: 7F14415E
	v_exp_f32_e32 v139, v95                                    // 00000000DAF0: 7F16415F
	v_exp_f32_e32 v143, v78                                    // 00000000DAF4: 7F1E414E
	v_exp_f32_e32 v181, v79                                    // 00000000DAF8: 7F6A414F
	v_cvt_pk_fp8_f32 v96, v104, v105                           // 00000000DAFC: D2A20060 0002D368
	v_cvt_pk_fp8_f32 v100, v108, v109                          // 00000000DB04: D2A20064 0002DB6C
	v_cvt_pk_fp8_f32 v97, v112, v113                           // 00000000DB0C: D2A20061 0002E370
	v_cvt_pk_fp8_f32 v101, v116, v117                          // 00000000DB14: D2A20065 0002EB74
	v_cvt_pk_fp8_f32 v98, v120, v121                           // 00000000DB1C: D2A20062 0002F378
	v_cvt_pk_fp8_f32 v102, v124, v125                          // 00000000DB24: D2A20066 0002FB7C
	v_cvt_pk_fp8_f32 v99, v136, v137                           // 00000000DB2C: D2A20063 00031388
	v_cvt_pk_fp8_f32 v103, v140, v141                          // 00000000DB34: D2A20067 00031B8C
	v_cvt_pk_fp8_f32 v96, v106, v107 op_sel:[0,0,1]            // 00000000DB3C: D2A24060 0002D76A
	v_cvt_pk_fp8_f32 v100, v110, v111 op_sel:[0,0,1]           // 00000000DB44: D2A24064 0002DF6E
	v_cvt_pk_fp8_f32 v97, v114, v115 op_sel:[0,0,1]            // 00000000DB4C: D2A24061 0002E772
	v_cvt_pk_fp8_f32 v101, v118, v119 op_sel:[0,0,1]           // 00000000DB54: D2A24065 0002EF76
	v_cvt_pk_fp8_f32 v98, v122, v123 op_sel:[0,0,1]            // 00000000DB5C: D2A24062 0002F77A
	v_cvt_pk_fp8_f32 v102, v134, v135 op_sel:[0,0,1]           // 00000000DB64: D2A24066 00030F86
	v_cvt_pk_fp8_f32 v99, v138, v139 op_sel:[0,0,1]            // 00000000DB6C: D2A24063 0003178A
	v_cvt_pk_fp8_f32 v103, v143, v181 op_sel:[0,0,1]           // 00000000DB74: D2A24067 00036B8F
	s_barrier                                                  // 00000000DB7C: BF8A0000
	s_setprio 1                                                // 00000000DB80: BF8F0001
	s_waitcnt vmcnt(0)                                         // 00000000DB84: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[104:107], v[126:133], v[96:103], 0// 00000000DB88: D3AD0068 0202C17E
	s_add_u32 s17, s77, s80                                    // 00000000DB90: 8011504D
	s_and_b32 s17, s17, 3                                      // 00000000DB94: 86118311
	s_lshl_b32 s18, s17, 13                                    // 00000000DB98: 8E128D11
	s_add_u32 s19, s82, s18                                    // 00000000DB9C: 80131252
	s_nop 7                                                    // 00000000DBA0: BF800007
	v_add3_u32 v105, s19, v173, v172                           // 00000000DBA4: D1FF0069 06B35A13
	ds_read_b64_tr_b8 v[114:115], v105                         // 00000000DBAC: D9C40000 72000069
	ds_read_b64_tr_b8 v[116:117], v105 offset:1024             // 00000000DBB4: D9C40400 74000069
	ds_read_b64_tr_b8 v[118:119], v105 offset:2048             // 00000000DBBC: D9C40800 76000069
	ds_read_b64_tr_b8 v[120:121], v105 offset:3072             // 00000000DBC4: D9C40C00 78000069
	s_add_u32 s19, s82, s18                                    // 00000000DBCC: 80131252
	v_add3_u32 v105, s19, v173, v172                           // 00000000DBD0: D1FF0069 06B35A13
	ds_read_b64_tr_b8 v[134:135], v105 offset:256              // 00000000DBD8: D9C40100 86000069
	ds_read_b64_tr_b8 v[136:137], v105 offset:1280             // 00000000DBE0: D9C40500 88000069
	ds_read_b64_tr_b8 v[138:139], v105 offset:2304             // 00000000DBE8: D9C40900 8A000069
	ds_read_b64_tr_b8 v[140:141], v105 offset:3328             // 00000000DBF0: D9C40D00 8C000069
	s_add_u32 s19, s82, s18                                    // 00000000DBF8: 80131252
	v_add3_u32 v105, s19, v173, v172                           // 00000000DBFC: D1FF0069 06B35A13
	ds_read_b64_tr_b8 v[106:107], v105 offset:512              // 00000000DC04: D9C40200 6A000069
	ds_read_b64_tr_b8 v[108:109], v105 offset:1536             // 00000000DC0C: D9C40600 6C000069
	ds_read_b64_tr_b8 v[110:111], v105 offset:2560             // 00000000DC14: D9C40A00 6E000069
	ds_read_b64_tr_b8 v[112:113], v105 offset:3584             // 00000000DC1C: D9C40E00 70000069
	s_waitcnt lgkmcnt(4)                                       // 00000000DC24: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[114:121], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000DC28: D3AC0000 000369AA D3AE0830 04C2C172
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000DC38: D3AC0000 000369AA D3AE0820 0482C186
	s_add_u32 s18, s82, s18                                    // 00000000DC48: 80121252
	v_add3_u32 v105, s18, v173, v172                           // 00000000DC4C: D1FF0069 06B35A12
	ds_read_b64_tr_b8 v[114:115], v105 offset:768              // 00000000DC54: D9C40300 72000069
	ds_read_b64_tr_b8 v[116:117], v105 offset:1792             // 00000000DC5C: D9C40700 74000069
	ds_read_b64_tr_b8 v[118:119], v105 offset:2816             // 00000000DC64: D9C40B00 76000069
	ds_read_b64_tr_b8 v[120:121], v105 offset:3840             // 00000000DC6C: D9C40F00 78000069
	s_add_u32 s18, s77, 4                                      // 00000000DC74: 8012844D
	s_cmp_ge_u32 s18, s98                                      // 00000000DC78: BF096212
	s_cbranch_scc1 13                                          // 00000000DC7C: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x32b4>
	s_lshl_b32 s19, s17, 14                                    // 00000000DC80: 8E138E11
	s_mul_i32 s18, s18, s6                                     // 00000000DC84: 92120612
	s_or_b32 s19, s19, s72                                     // 00000000DC88: 87134813
	s_lshl_b32 s18, s18, 6                                     // 00000000DC8C: 8E128612
	s_mov_b32 m0, s19                                          // 00000000DC90: BEFC0013
	s_nop 0                                                    // 00000000DC94: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000DC98: E05D1000 121100A4
	s_or_b32 m0, s19, 0x2000                                   // 00000000DCA0: 877CFF13 00002000
	s_nop 0                                                    // 00000000DCA8: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000DCAC: E05D1000 121100A5
	s_add_u32 s18, s77, 2                                      // 00000000DCB4: 8012824D
	s_cmp_ge_u32 s18, s98                                      // 00000000DCB8: BF096212
	s_cbranch_scc1 9                                           // 00000000DCBC: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x32e4>
	s_xor_b32 s17, s17, 2                                      // 00000000DCC0: 88118211
	s_mul_i32 s18, s18, s7                                     // 00000000DCC4: 92120712
	s_lshl_b32 s17, s17, 13                                    // 00000000DCC8: 8E118D11
	s_lshl_b32 s18, s18, 6                                     // 00000000DCCC: 8E128612
	s_add_u32 s17, s82, s17                                    // 00000000DCD0: 80111152
	s_add_u32 m0, s17, s72                                     // 00000000DCD4: 807C4811
	s_nop 0                                                    // 00000000DCD8: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000DCDC: E05D1000 121000A6
	v_lshlrev_b32_e32 v105, 23, v180                           // 00000000DCE4: 24D36897
	v_fma_f32 v179, v104, v105, v179                           // 00000000DCE8: D1CB00B3 06CED368
	s_waitcnt lgkmcnt(0)                                       // 00000000DCF0: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[106:113], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000DCF4: D3AC0000 000369AA D3AE0810 0442C16A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000DD04: D3AC0000 000369AA D3AE0800 0402C172
	s_barrier                                                  // 00000000DD14: BF8A0000
	s_add_u32 s78, s77, 1                                      // 00000000DD18: 804E814D
	s_branch 36                                                // 00000000DD1C: BF820024 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x33b0>
	s_barrier                                                  // 00000000DD20: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000DD24: BF8C0F70
	s_add_u32 s17, s78, 4                                      // 00000000DD28: 8011844E
	s_cmp_ge_u32 s17, s98                                      // 00000000DD2C: BF096211
	s_cbranch_scc1 15                                          // 00000000DD30: BF85000F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3370>
	s_add_u32 s18, s78, s80                                    // 00000000DD34: 8012504E
	s_and_b32 s18, s18, 3                                      // 00000000DD38: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000DD3C: 8E128E12
	s_mul_i32 s17, s17, s6                                     // 00000000DD40: 92110611
	s_or_b32 s18, s18, s72                                     // 00000000DD44: 87124812
	s_lshl_b32 s17, s17, 6                                     // 00000000DD48: 8E118611
	s_mov_b32 m0, s18                                          // 00000000DD4C: BEFC0012
	s_nop 0                                                    // 00000000DD50: BF800000
	buffer_load_dwordx4 v164, s[68:71], s17 offen lds          // 00000000DD54: E05D1000 111100A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000DD5C: 877CFF12 00002000
	s_nop 0                                                    // 00000000DD64: BF800000
	buffer_load_dwordx4 v165, s[68:71], s17 offen lds          // 00000000DD68: E05D1000 111100A5
	s_add_u32 s17, s78, 2                                      // 00000000DD70: 8011824E
	s_cmp_ge_u32 s17, s98                                      // 00000000DD74: BF096211
	s_cbranch_scc1 11                                          // 00000000DD78: BF85000B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x33a8>
	s_add_u32 s18, s78, s80                                    // 00000000DD7C: 8012504E
	s_and_b32 s18, s18, 3                                      // 00000000DD80: 86128312
	s_xor_b32 s18, s18, 2                                      // 00000000DD84: 88128212
	s_mul_i32 s17, s17, s7                                     // 00000000DD88: 92110711
	s_lshl_b32 s18, s18, 13                                    // 00000000DD8C: 8E128D12
	s_lshl_b32 s17, s17, 6                                     // 00000000DD90: 8E118611
	s_add_u32 s18, s82, s18                                    // 00000000DD94: 80121252
	s_add_u32 m0, s18, s72                                     // 00000000DD98: 807C4812
	s_nop 0                                                    // 00000000DD9C: BF800000
	buffer_load_dwordx4 v166, s[64:67], s17 offen lds          // 00000000DDA0: E05D1000 111000A6
	s_barrier                                                  // 00000000DDA8: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000DDAC: 804E814E
	s_add_u32 s17, s78, 1                                      // 00000000DDB0: 8011814E
	s_cmp_ge_u32 s17, s98                                      // 00000000DDB4: BF096211
	s_cbranch_scc1 837                                         // 00000000DDB8: BF850345 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x40d0>
	s_cmp_ge_u32 s78, s77                                      // 00000000DDBC: BF094D4E
	s_cbranch_scc1 597                                         // 00000000DDC0: BF850255 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d18>
	s_setprio 0                                                // 00000000DDC4: BF8F0000
	v_exp_f32_e32 v64, v64                                     // 00000000DDC8: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000DDCC: 7E824141
	s_add_u32 s17, s78, s80                                    // 00000000DDD0: 8011504E
	s_add_u32 s18, s17, 1                                      // 00000000DDD4: 80128111
	s_and_b32 s18, s18, 3                                      // 00000000DDD8: 86128312
	v_mov_b32_e32 v138, 0                                      // 00000000DDDC: 7F140280
	s_lshl_b32 s18, s18, 14                                    // 00000000DDE0: 8E128E12
	v_exp_f32_e32 v80, v80                                     // 00000000DDE4: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000DDE8: 7EA24151
	v_exp_f32_e32 v84, v84                                     // 00000000DDEC: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000DDF0: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000DDF4: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000DDF8: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000DDFC: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000DE00: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000DE04: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000DE08: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000DE0C: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000DE10: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000DE14: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000DE18: 7E9A414D
	v_cvt_pk_fp8_f32 v138, v64, v65                            // 00000000DE1C: D2A2008A 00028340
	v_or_b32_e32 v64, s18, v161                                // 00000000DE24: 28814212
	v_or_b32_e32 v65, s18, v162                                // 00000000DE28: 28834412
	ds_read_b128 v[96:99], v64                                 // 00000000DE2C: D9FE0000 60000040
	ds_read_b128 v[100:103], v64 offset:16                     // 00000000DE34: D9FE0010 64000040
	ds_read_b128 v[206:209], v64 offset:8192                   // 00000000DE3C: D9FE2000 CE000040
	ds_read_b128 v[210:213], v64 offset:8208                   // 00000000DE44: D9FE2010 D2000040
	ds_read_b128 v[214:217], v65                               // 00000000DE4C: D9FE0000 D6000041
	ds_read_b128 v[218:221], v65 offset:16                     // 00000000DE54: D9FE0010 DA000041
	ds_read_b128 v[222:225], v65 offset:8192                   // 00000000DE5C: D9FE2000 DE000041
	ds_read_b128 v[226:229], v65 offset:8208                   // 00000000DE64: D9FE2010 E2000041
	v_mov_b32_e32 v134, 0                                      // 00000000DE6C: 7F0C0280
	v_mov_b32_e32 v135, 0                                      // 00000000DE70: 7F0E0280
	v_mov_b32_e32 v139, 0                                      // 00000000DE74: 7F160280
	v_mov_b32_e32 v136, 0                                      // 00000000DE78: 7F100280
	v_mov_b32_e32 v140, 0                                      // 00000000DE7C: 7F180280
	v_mov_b32_e32 v137, 0                                      // 00000000DE80: 7F120280
	v_mov_b32_e32 v141, 0                                      // 00000000DE84: 7F1A0280
	v_exp_f32_e32 v82, v82                                     // 00000000DE88: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000DE8C: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000DE90: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000DE94: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000DE98: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000DE9C: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000DEA0: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000DEA4: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000DEA8: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000DEAC: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000DEB0: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000DEB4: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000DEB8: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000DEBC: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000DEC0: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000DEC4: 7E9E414F
	v_cvt_pk_fp8_f32 v134, v80, v81                            // 00000000DEC8: D2A20086 0002A350
	v_cvt_pk_fp8_f32 v135, v84, v85                            // 00000000DED0: D2A20087 0002AB54
	v_cvt_pk_fp8_f32 v139, v68, v69                            // 00000000DED8: D2A2008B 00028B44
	v_cvt_pk_fp8_f32 v136, v88, v89                            // 00000000DEE0: D2A20088 0002B358
	v_cvt_pk_fp8_f32 v140, v72, v73                            // 00000000DEE8: D2A2008C 00029348
	v_cvt_pk_fp8_f32 v137, v92, v93                            // 00000000DEF0: D2A20089 0002BB5C
	v_cvt_pk_fp8_f32 v141, v76, v77                            // 00000000DEF8: D2A2008D 00029B4C
	v_cvt_pk_fp8_f32 v134, v82, v83 op_sel:[0,0,1]             // 00000000DF00: D2A24086 0002A752
	v_cvt_pk_fp8_f32 v138, v66, v67 op_sel:[0,0,1]             // 00000000DF08: D2A2408A 00028742
	v_cvt_pk_fp8_f32 v135, v86, v87 op_sel:[0,0,1]             // 00000000DF10: D2A24087 0002AF56
	v_cvt_pk_fp8_f32 v139, v70, v71 op_sel:[0,0,1]             // 00000000DF18: D2A2408B 00028F46
	v_cvt_pk_fp8_f32 v136, v90, v91 op_sel:[0,0,1]             // 00000000DF20: D2A24088 0002B75A
	v_cvt_pk_fp8_f32 v140, v74, v75 op_sel:[0,0,1]             // 00000000DF28: D2A2408C 0002974A
	v_cvt_pk_fp8_f32 v137, v94, v95 op_sel:[0,0,1]             // 00000000DF30: D2A24089 0002BF5E
	v_cvt_pk_fp8_f32 v141, v78, v79 op_sel:[0,0,1]             // 00000000DF38: D2A2408D 00029F4E
	s_barrier                                                  // 00000000DF40: BF8A0000
	s_setprio 1                                                // 00000000DF44: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[134:141], 0// 00000000DF48: D3AD0040 02030D7E
	s_nop 11                                                   // 00000000DF50: BF80000B
	v_lshlrev_b32_e32 v65, 23, v180                            // 00000000DF54: 24836897
	v_fma_f32 v179, v64, v65, v179                             // 00000000DF58: D1CB00B3 06CE8340
	s_waitcnt lgkmcnt(0)                                       // 00000000DF60: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[96:103], v[182:189], 0// 00000000DF64: D3AE0050 02036D60
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[206:213], v[182:189], 0// 00000000DF6C: D3AE006E 02036DCE
	v_or_b32_e32 v64, s18, v163                                // 00000000DF74: 28814612
	ds_read_b128 v[66:69], v64                                 // 00000000DF78: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 00000000DF80: D9FE0010 46000040
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[214:221], v[190:197], v[80:95]// 00000000DF88: D3AE0050 05437DD6
	ds_read_b128 v[96:99], v64 offset:8192                     // 00000000DF90: D9FE2000 60000040
	ds_read_b128 v[100:103], v64 offset:8208                   // 00000000DF98: D9FE2010 64000040
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[222:229], v[190:197], v[110:125]// 00000000DFA0: D3AE006E 05BB7DDE
	s_waitcnt lgkmcnt(0)                                       // 00000000DFA8: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[66:73], v[198:205], v[80:95]// 00000000DFAC: D3AE0050 05438D42
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[96:103], v[198:205], v[110:125]// 00000000DFB4: D3AE006E 05BB8D60
	s_lshl_b32 s18, s78, 6                                     // 00000000DFBC: 8E12864E
	s_add_u32 s20, s18, 64                                     // 00000000DFC0: 8014C012
	s_sub_u32 s18, s3, s20                                     // 00000000DFC4: 80921403
	s_sub_i32 s18, s18, 0                                      // 00000000DFC8: 81928012
	s_nop 1                                                    // 00000000DFCC: BF800001
	v_mov_b32_e32 v64, v80                                     // 00000000DFD0: 7E800350
	v_mov_b32_e32 v65, v81                                     // 00000000DFD4: 7E820351
	v_mov_b32_e32 v66, v82                                     // 00000000DFD8: 7E840352
	v_mov_b32_e32 v67, v83                                     // 00000000DFDC: 7E860353
	v_mov_b32_e32 v68, v84                                     // 00000000DFE0: 7E880354
	v_mov_b32_e32 v69, v85                                     // 00000000DFE4: 7E8A0355
	v_mov_b32_e32 v70, v86                                     // 00000000DFE8: 7E8C0356
	v_mov_b32_e32 v71, v87                                     // 00000000DFEC: 7E8E0357
	v_mov_b32_e32 v72, v88                                     // 00000000DFF0: 7E900358
	v_mov_b32_e32 v73, v89                                     // 00000000DFF4: 7E920359
	v_mov_b32_e32 v74, v90                                     // 00000000DFF8: 7E94035A
	v_mov_b32_e32 v75, v91                                     // 00000000DFFC: 7E96035B
	v_mov_b32_e32 v76, v92                                     // 00000000E000: 7E98035C
	v_mov_b32_e32 v77, v93                                     // 00000000E004: 7E9A035D
	v_mov_b32_e32 v78, v94                                     // 00000000E008: 7E9C035E
	s_cmp_ge_i32 s18, 32                                       // 00000000E00C: BF03A012
	v_mov_b32_e32 v79, v95                                     // 00000000E010: 7E9E035F
	s_cbranch_scc1 84                                          // 00000000E014: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3768>
	v_mov_b32_e32 v64, 0xff800000                              // 00000000E018: 7E8002FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000E020: BF048012
	v_mov_b32_e32 v65, v64                                     // 00000000E024: 7E820340
	v_mov_b32_e32 v66, v64                                     // 00000000E028: 7E840340
	v_mov_b32_e32 v67, v64                                     // 00000000E02C: 7E860340
	v_mov_b32_e32 v68, v64                                     // 00000000E030: 7E880340
	v_mov_b32_e32 v69, v64                                     // 00000000E034: 7E8A0340
	v_mov_b32_e32 v70, v64                                     // 00000000E038: 7E8C0340
	v_mov_b32_e32 v71, v64                                     // 00000000E03C: 7E8E0340
	v_mov_b32_e32 v72, v64                                     // 00000000E040: 7E900340
	v_mov_b32_e32 v73, v64                                     // 00000000E044: 7E920340
	v_mov_b32_e32 v74, v64                                     // 00000000E048: 7E940340
	v_mov_b32_e32 v75, v64                                     // 00000000E04C: 7E960340
	v_mov_b32_e32 v76, v64                                     // 00000000E050: 7E980340
	v_mov_b32_e32 v77, v64                                     // 00000000E054: 7E9A0340
	v_mov_b32_e32 v78, v64                                     // 00000000E058: 7E9C0340
	v_mov_b32_e32 v79, v64                                     // 00000000E05C: 7E9E0340
	s_cbranch_scc1 65                                          // 00000000E060: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3768>
	v_add_u32_e32 v79, s18, v171                               // 00000000E064: 689F5612
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 00000000E068: 7D889E80
	s_nop 1                                                    // 00000000E06C: BF800001
	v_cndmask_b32_e64 v64, v80, v169, vcc                      // 00000000E070: D1000040 01AB5350
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 00000000E078: 7D889E81
	s_nop 1                                                    // 00000000E07C: BF800001
	v_cndmask_b32_e64 v65, v81, v169, vcc                      // 00000000E080: D1000041 01AB5351
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 00000000E088: 7D889E82
	s_nop 1                                                    // 00000000E08C: BF800001
	v_cndmask_b32_e64 v66, v82, v169, vcc                      // 00000000E090: D1000042 01AB5352
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 00000000E098: 7D889E83
	s_nop 1                                                    // 00000000E09C: BF800001
	v_cndmask_b32_e64 v67, v83, v169, vcc                      // 00000000E0A0: D1000043 01AB5353
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 00000000E0A8: 7D889E88
	s_nop 1                                                    // 00000000E0AC: BF800001
	v_cndmask_b32_e64 v68, v84, v169, vcc                      // 00000000E0B0: D1000044 01AB5354
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 00000000E0B8: 7D889E89
	s_nop 1                                                    // 00000000E0BC: BF800001
	v_cndmask_b32_e64 v69, v85, v169, vcc                      // 00000000E0C0: D1000045 01AB5355
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 00000000E0C8: 7D889E8A
	s_nop 1                                                    // 00000000E0CC: BF800001
	v_cndmask_b32_e64 v70, v86, v169, vcc                      // 00000000E0D0: D1000046 01AB5356
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 00000000E0D8: 7D889E8B
	s_nop 1                                                    // 00000000E0DC: BF800001
	v_cndmask_b32_e64 v71, v87, v169, vcc                      // 00000000E0E0: D1000047 01AB5357
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 00000000E0E8: 7D889E90
	s_nop 1                                                    // 00000000E0EC: BF800001
	v_cndmask_b32_e64 v72, v88, v169, vcc                      // 00000000E0F0: D1000048 01AB5358
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 00000000E0F8: 7D889E91
	s_nop 1                                                    // 00000000E0FC: BF800001
	v_cndmask_b32_e64 v73, v89, v169, vcc                      // 00000000E100: D1000049 01AB5359
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 00000000E108: 7D889E92
	s_nop 1                                                    // 00000000E10C: BF800001
	v_cndmask_b32_e64 v74, v90, v169, vcc                      // 00000000E110: D100004A 01AB535A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 00000000E118: 7D889E93
	s_nop 1                                                    // 00000000E11C: BF800001
	v_cndmask_b32_e64 v75, v91, v169, vcc                      // 00000000E120: D100004B 01AB535B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 00000000E128: 7D889E98
	s_nop 1                                                    // 00000000E12C: BF800001
	v_cndmask_b32_e64 v76, v92, v169, vcc                      // 00000000E130: D100004C 01AB535C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 00000000E138: 7D889E99
	s_nop 1                                                    // 00000000E13C: BF800001
	v_cndmask_b32_e64 v77, v93, v169, vcc                      // 00000000E140: D100004D 01AB535D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 00000000E148: 7D889E9A
	s_nop 1                                                    // 00000000E14C: BF800001
	v_cndmask_b32_e64 v78, v94, v169, vcc                      // 00000000E150: D100004E 01AB535E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 00000000E158: 7D889E9B
	s_nop 1                                                    // 00000000E15C: BF800001
	v_cndmask_b32_e64 v79, v95, v169, vcc                      // 00000000E160: D100004F 01AB535F
	s_sub_u32 s18, s3, s20                                     // 00000000E168: 80921403
	s_sub_i32 s18, s18, 32                                     // 00000000E16C: 8192A012
	v_mov_b32_e32 v94, v110                                    // 00000000E170: 7EBC036E
	v_mov_b32_e32 v95, v111                                    // 00000000E174: 7EBE036F
	v_mov_b32_e32 v96, v112                                    // 00000000E178: 7EC00370
	v_mov_b32_e32 v97, v113                                    // 00000000E17C: 7EC20371
	v_mov_b32_e32 v98, v114                                    // 00000000E180: 7EC40372
	v_mov_b32_e32 v99, v115                                    // 00000000E184: 7EC60373
	v_mov_b32_e32 v100, v116                                   // 00000000E188: 7EC80374
	v_mov_b32_e32 v101, v117                                   // 00000000E18C: 7ECA0375
	v_mov_b32_e32 v102, v118                                   // 00000000E190: 7ECC0376
	v_mov_b32_e32 v103, v119                                   // 00000000E194: 7ECE0377
	v_mov_b32_e32 v104, v120                                   // 00000000E198: 7ED00378
	v_mov_b32_e32 v105, v121                                   // 00000000E19C: 7ED20379
	v_mov_b32_e32 v106, v122                                   // 00000000E1A0: 7ED4037A
	v_mov_b32_e32 v107, v123                                   // 00000000E1A4: 7ED6037B
	v_mov_b32_e32 v108, v124                                   // 00000000E1A8: 7ED8037C
	s_cmp_ge_i32 s18, 32                                       // 00000000E1AC: BF03A012
	v_mov_b32_e32 v109, v125                                   // 00000000E1B0: 7EDA037D
	s_cbranch_scc1 84                                          // 00000000E1B4: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3908>
	v_mov_b32_e32 v94, 0xff800000                              // 00000000E1B8: 7EBC02FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000E1C0: BF048012
	v_mov_b32_e32 v95, v94                                     // 00000000E1C4: 7EBE035E
	v_mov_b32_e32 v96, v94                                     // 00000000E1C8: 7EC0035E
	v_mov_b32_e32 v97, v94                                     // 00000000E1CC: 7EC2035E
	v_mov_b32_e32 v98, v94                                     // 00000000E1D0: 7EC4035E
	v_mov_b32_e32 v99, v94                                     // 00000000E1D4: 7EC6035E
	v_mov_b32_e32 v100, v94                                    // 00000000E1D8: 7EC8035E
	v_mov_b32_e32 v101, v94                                    // 00000000E1DC: 7ECA035E
	v_mov_b32_e32 v102, v94                                    // 00000000E1E0: 7ECC035E
	v_mov_b32_e32 v103, v94                                    // 00000000E1E4: 7ECE035E
	v_mov_b32_e32 v104, v94                                    // 00000000E1E8: 7ED0035E
	v_mov_b32_e32 v105, v94                                    // 00000000E1EC: 7ED2035E
	v_mov_b32_e32 v106, v94                                    // 00000000E1F0: 7ED4035E
	v_mov_b32_e32 v107, v94                                    // 00000000E1F4: 7ED6035E
	v_mov_b32_e32 v108, v94                                    // 00000000E1F8: 7ED8035E
	v_mov_b32_e32 v109, v94                                    // 00000000E1FC: 7EDA035E
	s_cbranch_scc1 65                                          // 00000000E200: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3908>
	v_add_u32_e32 v80, s18, v171                               // 00000000E204: 68A15612
	v_cmp_gt_i32_e32 vcc, 0, v80                               // 00000000E208: 7D88A080
	s_nop 1                                                    // 00000000E20C: BF800001
	v_cndmask_b32_e64 v94, v110, v169, vcc                     // 00000000E210: D100005E 01AB536E
	v_cmp_gt_i32_e32 vcc, 1, v80                               // 00000000E218: 7D88A081
	s_nop 1                                                    // 00000000E21C: BF800001
	v_cndmask_b32_e64 v95, v111, v169, vcc                     // 00000000E220: D100005F 01AB536F
	v_cmp_gt_i32_e32 vcc, 2, v80                               // 00000000E228: 7D88A082
	s_nop 1                                                    // 00000000E22C: BF800001
	v_cndmask_b32_e64 v96, v112, v169, vcc                     // 00000000E230: D1000060 01AB5370
	v_cmp_gt_i32_e32 vcc, 3, v80                               // 00000000E238: 7D88A083
	s_nop 1                                                    // 00000000E23C: BF800001
	v_cndmask_b32_e64 v97, v113, v169, vcc                     // 00000000E240: D1000061 01AB5371
	v_cmp_gt_i32_e32 vcc, 8, v80                               // 00000000E248: 7D88A088
	s_nop 1                                                    // 00000000E24C: BF800001
	v_cndmask_b32_e64 v98, v114, v169, vcc                     // 00000000E250: D1000062 01AB5372
	v_cmp_gt_i32_e32 vcc, 9, v80                               // 00000000E258: 7D88A089
	s_nop 1                                                    // 00000000E25C: BF800001
	v_cndmask_b32_e64 v99, v115, v169, vcc                     // 00000000E260: D1000063 01AB5373
	v_cmp_gt_i32_e32 vcc, 10, v80                              // 00000000E268: 7D88A08A
	s_nop 1                                                    // 00000000E26C: BF800001
	v_cndmask_b32_e64 v100, v116, v169, vcc                    // 00000000E270: D1000064 01AB5374
	v_cmp_gt_i32_e32 vcc, 11, v80                              // 00000000E278: 7D88A08B
	s_nop 1                                                    // 00000000E27C: BF800001
	v_cndmask_b32_e64 v101, v117, v169, vcc                    // 00000000E280: D1000065 01AB5375
	v_cmp_gt_i32_e32 vcc, 16, v80                              // 00000000E288: 7D88A090
	s_nop 1                                                    // 00000000E28C: BF800001
	v_cndmask_b32_e64 v102, v118, v169, vcc                    // 00000000E290: D1000066 01AB5376
	v_cmp_gt_i32_e32 vcc, 17, v80                              // 00000000E298: 7D88A091
	s_nop 1                                                    // 00000000E29C: BF800001
	v_cndmask_b32_e64 v103, v119, v169, vcc                    // 00000000E2A0: D1000067 01AB5377
	v_cmp_gt_i32_e32 vcc, 18, v80                              // 00000000E2A8: 7D88A092
	s_nop 1                                                    // 00000000E2AC: BF800001
	v_cndmask_b32_e64 v104, v120, v169, vcc                    // 00000000E2B0: D1000068 01AB5378
	v_cmp_gt_i32_e32 vcc, 19, v80                              // 00000000E2B8: 7D88A093
	s_nop 1                                                    // 00000000E2BC: BF800001
	v_cndmask_b32_e64 v105, v121, v169, vcc                    // 00000000E2C0: D1000069 01AB5379
	v_cmp_gt_i32_e32 vcc, 24, v80                              // 00000000E2C8: 7D88A098
	s_nop 1                                                    // 00000000E2CC: BF800001
	v_cndmask_b32_e64 v106, v122, v169, vcc                    // 00000000E2D0: D100006A 01AB537A
	v_cmp_gt_i32_e32 vcc, 25, v80                              // 00000000E2D8: 7D88A099
	s_nop 1                                                    // 00000000E2DC: BF800001
	v_cndmask_b32_e64 v107, v123, v169, vcc                    // 00000000E2E0: D100006B 01AB537B
	v_cmp_gt_i32_e32 vcc, 26, v80                              // 00000000E2E8: 7D88A09A
	s_nop 1                                                    // 00000000E2EC: BF800001
	v_cndmask_b32_e64 v108, v124, v169, vcc                    // 00000000E2F0: D100006C 01AB537C
	v_cmp_gt_i32_e32 vcc, 27, v80                              // 00000000E2F8: 7D88A09B
	s_nop 1                                                    // 00000000E2FC: BF800001
	v_cndmask_b32_e64 v109, v125, v169, vcc                    // 00000000E300: D100006D 01AB537D
	s_and_b32 s17, s17, 3                                      // 00000000E308: 86118311
	v_max_f32_e32 v80, v64, v65                                // 00000000E30C: 16A08340
	v_max3_f32 v80, v66, v67, v80                              // 00000000E310: D1D30050 05428742
	v_max3_f32 v80, v68, v69, v80                              // 00000000E318: D1D30050 05428B44
	v_max3_f32 v80, v70, v71, v80                              // 00000000E320: D1D30050 05428F46
	v_max3_f32 v80, v72, v73, v80                              // 00000000E328: D1D30050 05429348
	v_max3_f32 v80, v74, v75, v80                              // 00000000E330: D1D30050 0542974A
	v_max3_f32 v80, v76, v77, v80                              // 00000000E338: D1D30050 05429B4C
	v_max3_f32 v80, v78, v79, v80                              // 00000000E340: D1D30050 05429F4E
	v_max_f32_e32 v81, v94, v95                                // 00000000E348: 16A2BF5E
	v_max3_f32 v81, v96, v97, v81                              // 00000000E34C: D1D30051 0546C360
	v_max3_f32 v81, v98, v99, v81                              // 00000000E354: D1D30051 0546C762
	v_max3_f32 v81, v100, v101, v81                            // 00000000E35C: D1D30051 0546CB64
	v_max3_f32 v81, v102, v103, v81                            // 00000000E364: D1D30051 0546CF66
	v_max3_f32 v81, v104, v105, v81                            // 00000000E36C: D1D30051 0546D368
	v_max3_f32 v81, v106, v107, v81                            // 00000000E374: D1D30051 0546D76A
	v_max3_f32 v81, v108, v109, v81                            // 00000000E37C: D1D30051 0546DB6C
	v_max_f32_e32 v80, v80, v81                                // 00000000E384: 16A0A350
	v_mov_b32_e32 v81, v80                                     // 00000000E388: 7EA20350
	s_nop 1                                                    // 00000000E38C: BF800001
	v_permlane32_swap_b32_e32 v80, v81                         // 00000000E390: 7EA0B551
	v_max_f32_e32 v80, v80, v81                                // 00000000E394: 16A0A350
	v_mul_f32_e32 v81, v142, v80                               // 00000000E398: 0AA2A18E
	v_max_f32_e32 v81, v178, v81                               // 00000000E39C: 16A2A3B2
	v_sub_f32_e32 v82, v81, v178                               // 00000000E3A0: 04A56551
	v_cmp_lt_f32_e32 vcc, s91, v82                             // 00000000E3A4: 7C82A45B
	s_cmp_lg_u64 vcc, 0                                        // 00000000E3A8: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000E3AC: 859280C1
	s_and_b64 s[20:21], s[18:19], exec                         // 00000000E3B0: 86947E12
	s_cselect_b32 s20, 1, 0                                    // 00000000E3B4: 85148081
	s_cselect_b64 s[20:21], -1, 0                              // 00000000E3B8: 859480C1
	v_cndmask_b32_e64 v111, v178, v81, s[20:21]                // 00000000E3BC: D100006F 0052A3B2
	v_fma_f32 v80, v80, v142, -v111                            // 00000000E3C4: D1CB0050 85BF1D50
	v_floor_f32_e32 v80, v80                                   // 00000000E3CC: 7EA03F50
	v_med3_f32 v80, v80, s89, 0                                // 00000000E3D0: D1D60050 0200B350
	v_cvt_i32_f32_e32 v81, v80                                 // 00000000E3D8: 7EA21150
	v_add_u32_e32 v112, 0x7f, v81                              // 00000000E3DC: 68E0A2FF 0000007F
	v_lshlrev_b32_e32 v81, 23, v112                            // 00000000E3E4: 24A2E097
	v_add_f32_e32 v80, v111, v80                               // 00000000E3E8: 02A0A16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000E3EC: 04DCA0FF 40C00000
	s_lshl_b32 s20, s17, 13                                    // 00000000E3F4: 8E148D11
	s_add_u32 s21, s82, s20                                    // 00000000E3F8: 80151452
	v_add3_u32 v80, s21, v173, v172                            // 00000000E3FC: D1FF0050 06B35A15
	s_waitcnt vmcnt(0)                                         // 00000000E404: BF8C0F70
	ds_read_b64_tr_b8 v[114:115], v80                          // 00000000E408: D9C40000 72000050
	ds_read_b64_tr_b8 v[116:117], v80 offset:1024              // 00000000E410: D9C40400 74000050
	ds_read_b64_tr_b8 v[118:119], v80 offset:2048              // 00000000E418: D9C40800 76000050
	ds_read_b64_tr_b8 v[120:121], v80 offset:3072              // 00000000E420: D9C40C00 78000050
	s_add_u32 s21, s82, s20                                    // 00000000E428: 80151452
	v_add3_u32 v80, s21, v173, v172                            // 00000000E42C: D1FF0050 06B35A15
	ds_read_b64_tr_b8 v[206:207], v80 offset:256               // 00000000E434: D9C40100 CE000050
	ds_read_b64_tr_b8 v[208:209], v80 offset:1280              // 00000000E43C: D9C40500 D0000050
	ds_read_b64_tr_b8 v[210:211], v80 offset:2304              // 00000000E444: D9C40900 D2000050
	ds_read_b64_tr_b8 v[212:213], v80 offset:3328              // 00000000E44C: D9C40D00 D4000050
	s_add_u32 s21, s82, s20                                    // 00000000E454: 80151452
	v_add3_u32 v80, s21, v173, v172                            // 00000000E458: D1FF0050 06B35A15
	ds_read_b64_tr_b8 v[82:83], v80 offset:512                 // 00000000E460: D9C40200 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1536                // 00000000E468: D9C40600 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2560                // 00000000E470: D9C40A00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3584                // 00000000E478: D9C40E00 58000050
	s_waitcnt lgkmcnt(4)                                       // 00000000E480: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[114:121], v[134:141], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000E484: D3AC0000 000369AA D3AE0830 04C30D72
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[206:213], v[134:141], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000E494: D3AC0000 000369AA D3AE0820 04830DCE
	s_add_u32 s20, s82, s20                                    // 00000000E4A4: 80141452
	v_add3_u32 v80, s20, v173, v172                            // 00000000E4A8: D1FF0050 06B35A14
	ds_read_b64_tr_b8 v[114:115], v80 offset:768               // 00000000E4B0: D9C40300 72000050
	ds_read_b64_tr_b8 v[116:117], v80 offset:1792              // 00000000E4B8: D9C40700 74000050
	ds_read_b64_tr_b8 v[118:119], v80 offset:2816              // 00000000E4C0: D9C40B00 76000050
	ds_read_b64_tr_b8 v[120:121], v80 offset:3840              // 00000000E4C8: D9C40F00 78000050
	s_add_u32 s20, s78, 4                                      // 00000000E4D0: 8014844E
	s_cmp_ge_u32 s20, s98                                      // 00000000E4D4: BF096214
	s_cbranch_scc1 13                                          // 00000000E4D8: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3b10>
	s_lshl_b32 s21, s17, 14                                    // 00000000E4DC: 8E158E11
	s_mul_i32 s20, s20, s6                                     // 00000000E4E0: 92140614
	s_or_b32 s21, s21, s72                                     // 00000000E4E4: 87154815
	s_lshl_b32 s20, s20, 6                                     // 00000000E4E8: 8E148614
	s_mov_b32 m0, s21                                          // 00000000E4EC: BEFC0015
	s_nop 0                                                    // 00000000E4F0: BF800000
	buffer_load_dwordx4 v164, s[68:71], s20 offen lds          // 00000000E4F4: E05D1000 141100A4
	s_or_b32 m0, s21, 0x2000                                   // 00000000E4FC: 877CFF15 00002000
	s_nop 0                                                    // 00000000E504: BF800000
	buffer_load_dwordx4 v165, s[68:71], s20 offen lds          // 00000000E508: E05D1000 141100A5
	s_add_u32 s20, s78, 2                                      // 00000000E510: 8014824E
	s_cmp_ge_u32 s20, s98                                      // 00000000E514: BF096214
	s_cbranch_scc1 9                                           // 00000000E518: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3b40>
	s_xor_b32 s17, s17, 2                                      // 00000000E51C: 88118211
	s_mul_i32 s20, s20, s7                                     // 00000000E520: 92140714
	s_lshl_b32 s17, s17, 13                                    // 00000000E524: 8E118D11
	s_lshl_b32 s20, s20, 6                                     // 00000000E528: 8E148614
	s_add_u32 s17, s82, s17                                    // 00000000E52C: 80111152
	s_add_u32 m0, s17, s72                                     // 00000000E530: 807C4811
	s_nop 0                                                    // 00000000E534: BF800000
	buffer_load_dwordx4 v166, s[64:67], s20 offen lds          // 00000000E538: E05D1000 141000A6
	s_waitcnt lgkmcnt(0)                                       // 00000000E540: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[134:141], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000E544: D3AC0000 000369AA D3AE0810 04430D52
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[134:141], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000E554: D3AC0000 000369AA D3AE0800 04030D72
	v_mov_b32_e32 v143, v142                                   // 00000000E564: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000E568: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000E570: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E578: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E580: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E588: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E590: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E598: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E5A0: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E5A8: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E5B0: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E5B8: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E5C0: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E5C8: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E5D0: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E5D8: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E5E0: D3B00042 1DBB1D60
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000E5E8: 86927E12
	s_cbranch_scc0 68                                          // 00000000E5EC: BF840044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d00>
	v_sub_f32_e32 v96, v178, v111                              // 00000000E5F0: 04C0DFB2
	v_exp_f32_e32 v96, v96                                     // 00000000E5F4: 7EC04160
	s_nop 0                                                    // 00000000E5F8: BF800000
	v_pk_mul_f32 v[62:63], v[96:97], v[62:63] op_sel_hi:[0,1]  // 00000000E5FC: D3B1403E 10027D60
	v_pk_mul_f32 v[60:61], v[96:97], v[60:61] op_sel_hi:[0,1]  // 00000000E604: D3B1403C 10027960
	v_pk_mul_f32 v[58:59], v[96:97], v[58:59] op_sel_hi:[0,1]  // 00000000E60C: D3B1403A 10027560
	v_pk_mul_f32 v[56:57], v[96:97], v[56:57] op_sel_hi:[0,1]  // 00000000E614: D3B14038 10027160
	v_pk_mul_f32 v[54:55], v[96:97], v[54:55] op_sel_hi:[0,1]  // 00000000E61C: D3B14036 10026D60
	v_pk_mul_f32 v[52:53], v[96:97], v[52:53] op_sel_hi:[0,1]  // 00000000E624: D3B14034 10026960
	v_pk_mul_f32 v[50:51], v[96:97], v[50:51] op_sel_hi:[0,1]  // 00000000E62C: D3B14032 10026560
	v_pk_mul_f32 v[48:49], v[96:97], v[48:49] op_sel_hi:[0,1]  // 00000000E634: D3B14030 10026160
	v_pk_mul_f32 v[46:47], v[96:97], v[46:47] op_sel_hi:[0,1]  // 00000000E63C: D3B1402E 10025D60
	v_pk_mul_f32 v[44:45], v[96:97], v[44:45] op_sel_hi:[0,1]  // 00000000E644: D3B1402C 10025960
	v_pk_mul_f32 v[42:43], v[96:97], v[42:43] op_sel_hi:[0,1]  // 00000000E64C: D3B1402A 10025560
	v_pk_mul_f32 v[40:41], v[96:97], v[40:41] op_sel_hi:[0,1]  // 00000000E654: D3B14028 10025160
	v_pk_mul_f32 v[38:39], v[96:97], v[38:39] op_sel_hi:[0,1]  // 00000000E65C: D3B14026 10024D60
	v_pk_mul_f32 v[36:37], v[96:97], v[36:37] op_sel_hi:[0,1]  // 00000000E664: D3B14024 10024960
	v_pk_mul_f32 v[34:35], v[96:97], v[34:35] op_sel_hi:[0,1]  // 00000000E66C: D3B14022 10024560
	v_pk_mul_f32 v[32:33], v[96:97], v[32:33] op_sel_hi:[0,1]  // 00000000E674: D3B14020 10024160
	v_pk_mul_f32 v[30:31], v[96:97], v[30:31] op_sel_hi:[0,1]  // 00000000E67C: D3B1401E 10023D60
	v_pk_mul_f32 v[28:29], v[96:97], v[28:29] op_sel_hi:[0,1]  // 00000000E684: D3B1401C 10023960
	v_pk_mul_f32 v[26:27], v[96:97], v[26:27] op_sel_hi:[0,1]  // 00000000E68C: D3B1401A 10023560
	v_pk_mul_f32 v[24:25], v[96:97], v[24:25] op_sel_hi:[0,1]  // 00000000E694: D3B14018 10023160
	v_pk_mul_f32 v[22:23], v[96:97], v[22:23] op_sel_hi:[0,1]  // 00000000E69C: D3B14016 10022D60
	v_pk_mul_f32 v[20:21], v[96:97], v[20:21] op_sel_hi:[0,1]  // 00000000E6A4: D3B14014 10022960
	v_pk_mul_f32 v[18:19], v[96:97], v[18:19] op_sel_hi:[0,1]  // 00000000E6AC: D3B14012 10022560
	v_pk_mul_f32 v[16:17], v[96:97], v[16:17] op_sel_hi:[0,1]  // 00000000E6B4: D3B14010 10022160
	v_pk_mul_f32 v[14:15], v[96:97], v[14:15] op_sel_hi:[0,1]  // 00000000E6BC: D3B1400E 10021D60
	v_pk_mul_f32 v[12:13], v[96:97], v[12:13] op_sel_hi:[0,1]  // 00000000E6C4: D3B1400C 10021960
	v_pk_mul_f32 v[10:11], v[96:97], v[10:11] op_sel_hi:[0,1]  // 00000000E6CC: D3B1400A 10021560
	v_pk_mul_f32 v[8:9], v[96:97], v[8:9] op_sel_hi:[0,1]      // 00000000E6D4: D3B14008 10021160
	v_pk_mul_f32 v[6:7], v[96:97], v[6:7] op_sel_hi:[0,1]      // 00000000E6DC: D3B14006 10020D60
	v_pk_mul_f32 v[4:5], v[96:97], v[4:5] op_sel_hi:[0,1]      // 00000000E6E4: D3B14004 10020960
	v_pk_mul_f32 v[2:3], v[96:97], v[2:3] op_sel_hi:[0,1]      // 00000000E6EC: D3B14002 10020560
	v_pk_mul_f32 v[0:1], v[96:97], v[0:1] op_sel_hi:[0,1]      // 00000000E6F4: D3B14000 10020160
	v_mul_f32_e32 v179, v179, v96                              // 00000000E6FC: 0B66C1B3
	s_waitcnt vmcnt(0)                                         // 00000000E700: BF8C0F70
	s_barrier                                                  // 00000000E704: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000E708: 804E814E
	v_mov_b32_e32 v180, v112                                   // 00000000E70C: 7F680370
	v_mov_b32_e32 v178, v111                                   // 00000000E710: 7F64036F
	s_branch 64116                                             // 00000000E714: BF82FA74 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26e8>
	s_cmp_eq_u32 s78, s77                                      // 00000000E718: BF064D4E
	s_cbranch_scc0 178                                         // 00000000E71C: BF8400B2 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3fe8>
	s_setprio 0                                                // 00000000E720: BF8F0000
	v_exp_f32_e32 v104, v80                                    // 00000000E724: 7ED04150
	v_exp_f32_e32 v105, v81                                    // 00000000E728: 7ED24151
	v_exp_f32_e32 v108, v64                                    // 00000000E72C: 7ED84140
	v_exp_f32_e32 v109, v65                                    // 00000000E730: 7EDA4141
	v_exp_f32_e32 v112, v84                                    // 00000000E734: 7EE04154
	v_exp_f32_e32 v113, v85                                    // 00000000E738: 7EE24155
	v_exp_f32_e32 v116, v68                                    // 00000000E73C: 7EE84144
	v_exp_f32_e32 v117, v69                                    // 00000000E740: 7EEA4145
	v_exp_f32_e32 v120, v88                                    // 00000000E744: 7EF04158
	v_exp_f32_e32 v121, v89                                    // 00000000E748: 7EF24159
	v_exp_f32_e32 v124, v72                                    // 00000000E74C: 7EF84148
	v_exp_f32_e32 v125, v73                                    // 00000000E750: 7EFA4149
	v_exp_f32_e32 v136, v92                                    // 00000000E754: 7F10415C
	v_exp_f32_e32 v137, v93                                    // 00000000E758: 7F12415D
	v_exp_f32_e32 v140, v76                                    // 00000000E75C: 7F18414C
	v_exp_f32_e32 v141, v77                                    // 00000000E760: 7F1A414D
	v_mov_b32_e32 v96, 0                                       // 00000000E764: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000E768: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000E76C: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000E770: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000E774: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000E778: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000E77C: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000E780: 7ECE0280
	v_exp_f32_e32 v106, v82                                    // 00000000E784: 7ED44152
	v_exp_f32_e32 v107, v83                                    // 00000000E788: 7ED64153
	v_exp_f32_e32 v110, v66                                    // 00000000E78C: 7EDC4142
	v_exp_f32_e32 v111, v67                                    // 00000000E790: 7EDE4143
	v_exp_f32_e32 v114, v86                                    // 00000000E794: 7EE44156
	v_exp_f32_e32 v115, v87                                    // 00000000E798: 7EE64157
	v_exp_f32_e32 v118, v70                                    // 00000000E79C: 7EEC4146
	v_exp_f32_e32 v119, v71                                    // 00000000E7A0: 7EEE4147
	v_exp_f32_e32 v122, v90                                    // 00000000E7A4: 7EF4415A
	v_exp_f32_e32 v123, v91                                    // 00000000E7A8: 7EF6415B
	v_exp_f32_e32 v134, v74                                    // 00000000E7AC: 7F0C414A
	v_exp_f32_e32 v135, v75                                    // 00000000E7B0: 7F0E414B
	v_exp_f32_e32 v138, v94                                    // 00000000E7B4: 7F14415E
	v_exp_f32_e32 v139, v95                                    // 00000000E7B8: 7F16415F
	v_exp_f32_e32 v143, v78                                    // 00000000E7BC: 7F1E414E
	v_exp_f32_e32 v181, v79                                    // 00000000E7C0: 7F6A414F
	v_cvt_pk_fp8_f32 v96, v104, v105                           // 00000000E7C4: D2A20060 0002D368
	v_cvt_pk_fp8_f32 v100, v108, v109                          // 00000000E7CC: D2A20064 0002DB6C
	v_cvt_pk_fp8_f32 v97, v112, v113                           // 00000000E7D4: D2A20061 0002E370
	v_cvt_pk_fp8_f32 v101, v116, v117                          // 00000000E7DC: D2A20065 0002EB74
	v_cvt_pk_fp8_f32 v98, v120, v121                           // 00000000E7E4: D2A20062 0002F378
	v_cvt_pk_fp8_f32 v102, v124, v125                          // 00000000E7EC: D2A20066 0002FB7C
	v_cvt_pk_fp8_f32 v99, v136, v137                           // 00000000E7F4: D2A20063 00031388
	v_cvt_pk_fp8_f32 v103, v140, v141                          // 00000000E7FC: D2A20067 00031B8C
	v_cvt_pk_fp8_f32 v96, v106, v107 op_sel:[0,0,1]            // 00000000E804: D2A24060 0002D76A
	v_cvt_pk_fp8_f32 v100, v110, v111 op_sel:[0,0,1]           // 00000000E80C: D2A24064 0002DF6E
	v_cvt_pk_fp8_f32 v97, v114, v115 op_sel:[0,0,1]            // 00000000E814: D2A24061 0002E772
	v_cvt_pk_fp8_f32 v101, v118, v119 op_sel:[0,0,1]           // 00000000E81C: D2A24065 0002EF76
	v_cvt_pk_fp8_f32 v98, v122, v123 op_sel:[0,0,1]            // 00000000E824: D2A24062 0002F77A
	v_cvt_pk_fp8_f32 v102, v134, v135 op_sel:[0,0,1]           // 00000000E82C: D2A24066 00030F86
	v_cvt_pk_fp8_f32 v99, v138, v139 op_sel:[0,0,1]            // 00000000E834: D2A24063 0003178A
	v_cvt_pk_fp8_f32 v103, v143, v181 op_sel:[0,0,1]           // 00000000E83C: D2A24067 00036B8F
	s_barrier                                                  // 00000000E844: BF8A0000
	s_setprio 1                                                // 00000000E848: BF8F0001
	s_waitcnt vmcnt(0)                                         // 00000000E84C: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[104:107], v[126:133], v[96:103], 0// 00000000E850: D3AD0068 0202C17E
	s_add_u32 s17, s77, s80                                    // 00000000E858: 8011504D
	s_and_b32 s17, s17, 3                                      // 00000000E85C: 86118311
	s_lshl_b32 s18, s17, 13                                    // 00000000E860: 8E128D11
	s_add_u32 s19, s82, s18                                    // 00000000E864: 80131252
	s_nop 7                                                    // 00000000E868: BF800007
	v_add3_u32 v105, s19, v173, v172                           // 00000000E86C: D1FF0069 06B35A13
	ds_read_b64_tr_b8 v[114:115], v105                         // 00000000E874: D9C40000 72000069
	ds_read_b64_tr_b8 v[116:117], v105 offset:1024             // 00000000E87C: D9C40400 74000069
	ds_read_b64_tr_b8 v[118:119], v105 offset:2048             // 00000000E884: D9C40800 76000069
	ds_read_b64_tr_b8 v[120:121], v105 offset:3072             // 00000000E88C: D9C40C00 78000069
	s_add_u32 s19, s82, s18                                    // 00000000E894: 80131252
	v_add3_u32 v105, s19, v173, v172                           // 00000000E898: D1FF0069 06B35A13
	ds_read_b64_tr_b8 v[134:135], v105 offset:256              // 00000000E8A0: D9C40100 86000069
	ds_read_b64_tr_b8 v[136:137], v105 offset:1280             // 00000000E8A8: D9C40500 88000069
	ds_read_b64_tr_b8 v[138:139], v105 offset:2304             // 00000000E8B0: D9C40900 8A000069
	ds_read_b64_tr_b8 v[140:141], v105 offset:3328             // 00000000E8B8: D9C40D00 8C000069
	s_add_u32 s19, s82, s18                                    // 00000000E8C0: 80131252
	v_add3_u32 v105, s19, v173, v172                           // 00000000E8C4: D1FF0069 06B35A13
	ds_read_b64_tr_b8 v[106:107], v105 offset:512              // 00000000E8CC: D9C40200 6A000069
	ds_read_b64_tr_b8 v[108:109], v105 offset:1536             // 00000000E8D4: D9C40600 6C000069
	ds_read_b64_tr_b8 v[110:111], v105 offset:2560             // 00000000E8DC: D9C40A00 6E000069
	ds_read_b64_tr_b8 v[112:113], v105 offset:3584             // 00000000E8E4: D9C40E00 70000069
	s_waitcnt lgkmcnt(4)                                       // 00000000E8EC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[114:121], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000E8F0: D3AC0000 000369AA D3AE0830 04C2C172
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000E900: D3AC0000 000369AA D3AE0820 0482C186
	s_add_u32 s18, s82, s18                                    // 00000000E910: 80121252
	v_add3_u32 v105, s18, v173, v172                           // 00000000E914: D1FF0069 06B35A12
	ds_read_b64_tr_b8 v[114:115], v105 offset:768              // 00000000E91C: D9C40300 72000069
	ds_read_b64_tr_b8 v[116:117], v105 offset:1792             // 00000000E924: D9C40700 74000069
	ds_read_b64_tr_b8 v[118:119], v105 offset:2816             // 00000000E92C: D9C40B00 76000069
	ds_read_b64_tr_b8 v[120:121], v105 offset:3840             // 00000000E934: D9C40F00 78000069
	s_add_u32 s18, s77, 4                                      // 00000000E93C: 8012844D
	s_cmp_ge_u32 s18, s98                                      // 00000000E940: BF096212
	s_cbranch_scc1 13                                          // 00000000E944: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3f7c>
	s_lshl_b32 s19, s17, 14                                    // 00000000E948: 8E138E11
	s_mul_i32 s18, s18, s6                                     // 00000000E94C: 92120612
	s_or_b32 s19, s19, s72                                     // 00000000E950: 87134813
	s_lshl_b32 s18, s18, 6                                     // 00000000E954: 8E128612
	s_mov_b32 m0, s19                                          // 00000000E958: BEFC0013
	s_nop 0                                                    // 00000000E95C: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000E960: E05D1000 121100A4
	s_or_b32 m0, s19, 0x2000                                   // 00000000E968: 877CFF13 00002000
	s_nop 0                                                    // 00000000E970: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000E974: E05D1000 121100A5
	s_add_u32 s18, s77, 2                                      // 00000000E97C: 8012824D
	s_cmp_ge_u32 s18, s98                                      // 00000000E980: BF096212
	s_cbranch_scc1 9                                           // 00000000E984: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3fac>
	s_xor_b32 s17, s17, 2                                      // 00000000E988: 88118211
	s_mul_i32 s18, s18, s7                                     // 00000000E98C: 92120712
	s_lshl_b32 s17, s17, 13                                    // 00000000E990: 8E118D11
	s_lshl_b32 s18, s18, 6                                     // 00000000E994: 8E128612
	s_add_u32 s17, s82, s17                                    // 00000000E998: 80111152
	s_add_u32 m0, s17, s72                                     // 00000000E99C: 807C4811
	s_nop 0                                                    // 00000000E9A0: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000E9A4: E05D1000 121000A6
	v_lshlrev_b32_e32 v105, 23, v180                           // 00000000E9AC: 24D36897
	v_fma_f32 v179, v104, v105, v179                           // 00000000E9B0: D1CB00B3 06CED368
	s_waitcnt lgkmcnt(0)                                       // 00000000E9B8: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[106:113], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000E9BC: D3AC0000 000369AA D3AE0810 0442C16A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000E9CC: D3AC0000 000369AA D3AE0800 0402C172
	s_barrier                                                  // 00000000E9DC: BF8A0000
	s_add_u32 s78, s77, 1                                      // 00000000E9E0: 804E814D
	s_branch 63936                                             // 00000000E9E4: BF82F9C0 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26e8>
	s_barrier                                                  // 00000000E9E8: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000E9EC: BF8C0F70
	s_add_u32 s17, s78, 4                                      // 00000000E9F0: 8011844E
	s_cmp_ge_u32 s17, s98                                      // 00000000E9F4: BF096211
	s_cbranch_scc1 15                                          // 00000000E9F8: BF85000F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4038>
	s_add_u32 s18, s78, s80                                    // 00000000E9FC: 8012504E
	s_and_b32 s18, s18, 3                                      // 00000000EA00: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000EA04: 8E128E12
	s_mul_i32 s17, s17, s6                                     // 00000000EA08: 92110611
	s_or_b32 s18, s18, s72                                     // 00000000EA0C: 87124812
	s_lshl_b32 s17, s17, 6                                     // 00000000EA10: 8E118611
	s_mov_b32 m0, s18                                          // 00000000EA14: BEFC0012
	s_nop 0                                                    // 00000000EA18: BF800000
	buffer_load_dwordx4 v164, s[68:71], s17 offen lds          // 00000000EA1C: E05D1000 111100A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000EA24: 877CFF12 00002000
	s_nop 0                                                    // 00000000EA2C: BF800000
	buffer_load_dwordx4 v165, s[68:71], s17 offen lds          // 00000000EA30: E05D1000 111100A5
	s_add_u32 s17, s78, 2                                      // 00000000EA38: 8011824E
	s_cmp_ge_u32 s17, s98                                      // 00000000EA3C: BF096211
	s_cbranch_scc1 11                                          // 00000000EA40: BF85000B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4070>
	s_add_u32 s18, s78, s80                                    // 00000000EA44: 8012504E
	s_and_b32 s18, s18, 3                                      // 00000000EA48: 86128312
	s_xor_b32 s18, s18, 2                                      // 00000000EA4C: 88128212
	s_mul_i32 s17, s17, s7                                     // 00000000EA50: 92110711
	s_lshl_b32 s18, s18, 13                                    // 00000000EA54: 8E128D12
	s_lshl_b32 s17, s17, 6                                     // 00000000EA58: 8E118611
	s_add_u32 s18, s82, s18                                    // 00000000EA5C: 80121252
	s_add_u32 m0, s18, s72                                     // 00000000EA60: 807C4812
	s_nop 0                                                    // 00000000EA64: BF800000
	buffer_load_dwordx4 v166, s[64:67], s17 offen lds          // 00000000EA68: E05D1000 111000A6
	s_barrier                                                  // 00000000EA70: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000EA74: 804E814E
	s_branch 63899                                             // 00000000EA78: BF82F99B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26e8>
	s_cmp_ge_u32 s77, s78                                      // 00000000EA7C: BF094E4D
	s_cbranch_scc1 40                                          // 00000000EA80: BF850028 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4124>
	s_waitcnt vmcnt(0)                                         // 00000000EA84: BF8C0F70
	s_barrier                                                  // 00000000EA88: BF8A0000
	s_add_u32 s17, s98, s80                                    // 00000000EA8C: 80115062
	s_and_b32 s24, s17, 3                                      // 00000000EA90: 86188311
	s_cmp_lg_u32 s76, 0                                        // 00000000EA94: BF07804C
	s_cbranch_scc1 4                                           // 00000000EA98: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x40ac>
	s_not_b32 s17, s52                                         // 00000000EA9C: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000EAA0: 80111132
	s_cmp_lg_u32 s52, s17                                      // 00000000EAA4: BF071134
	s_cbranch_scc1 236                                         // 00000000EAA8: BF8500EC <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x445c>
	s_add_u32 s2, s2, s13                                      // 00000000EAAC: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000EAB0: BF093102
	s_cbranch_scc1 211                                         // 00000000EAB4: BF8500D3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4404>
	s_lshl_b32 s17, s2, 5                                      // 00000000EAB8: 8E118502
	s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0          // 00000000EABC: C00E4D17 22000000
	s_mov_b32 s76, 0                                           // 00000000EAC4: BECC0080
	s_mov_b64 s[18:19], -1                                     // 00000000EAC8: BE9201C1
	s_branch 229                                               // 00000000EACC: BF8200E5 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4464>
	s_cmp_ge_u32 s77, s78                                      // 00000000EAD0: BF094E4D
	s_cbranch_scc1 111                                         // 00000000EAD4: BF85006F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4294>
	s_waitcnt vmcnt(0)                                         // 00000000EAD8: BF8C0F70
	s_barrier                                                  // 00000000EADC: BF8A0000
	s_add_u32 s17, s98, s80                                    // 00000000EAE0: 80115062
	s_and_b32 s24, s17, 3                                      // 00000000EAE4: 86188311
	s_cmp_lg_u32 s76, 0                                        // 00000000EAE8: BF07804C
	s_cbranch_scc1 4                                           // 00000000EAEC: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4100>
	s_not_b32 s17, s52                                         // 00000000EAF0: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000EAF4: 80111132
	s_cmp_lg_u32 s52, s17                                      // 00000000EAF8: BF071134
	s_cbranch_scc1 338                                         // 00000000EAFC: BF850152 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4648>
	s_add_u32 s2, s2, s13                                      // 00000000EB00: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000EB04: BF093102
	s_cbranch_scc1 196                                         // 00000000EB08: BF8500C4 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x441c>
	s_lshl_b32 s17, s2, 5                                      // 00000000EB0C: 8E118502
	s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0          // 00000000EB10: C00E4D17 22000000
	s_mov_b32 s76, 0                                           // 00000000EB18: BECC0080
	s_mov_b64 s[18:19], -1                                     // 00000000EB1C: BE9201C1
	s_branch 331                                               // 00000000EB20: BF82014B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4650>
	s_setprio 0                                                // 00000000EB24: BF8F0000
	v_exp_f32_e32 v80, v80                                     // 00000000EB28: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000EB2C: 7EA24151
	v_exp_f32_e32 v64, v64                                     // 00000000EB30: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000EB34: 7E824141
	v_exp_f32_e32 v84, v84                                     // 00000000EB38: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000EB3C: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000EB40: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000EB44: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000EB48: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000EB4C: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000EB50: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000EB54: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000EB58: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000EB5C: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000EB60: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000EB64: 7E9A414D
	v_mov_b32_e32 v96, 0                                       // 00000000EB68: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000EB6C: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000EB70: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000EB74: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000EB78: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000EB7C: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000EB80: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000EB84: 7ECE0280
	v_exp_f32_e32 v82, v82                                     // 00000000EB88: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000EB8C: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000EB90: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000EB94: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000EB98: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000EB9C: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000EBA0: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000EBA4: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000EBA8: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000EBAC: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000EBB0: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000EBB4: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000EBB8: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000EBBC: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000EBC0: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000EBC4: 7E9E414F
	v_cvt_pk_fp8_f32 v96, v80, v81                             // 00000000EBC8: D2A20060 0002A350
	v_cvt_pk_fp8_f32 v100, v64, v65                            // 00000000EBD0: D2A20064 00028340
	v_cvt_pk_fp8_f32 v97, v84, v85                             // 00000000EBD8: D2A20061 0002AB54
	v_cvt_pk_fp8_f32 v101, v68, v69                            // 00000000EBE0: D2A20065 00028B44
	v_cvt_pk_fp8_f32 v98, v88, v89                             // 00000000EBE8: D2A20062 0002B358
	v_cvt_pk_fp8_f32 v102, v72, v73                            // 00000000EBF0: D2A20066 00029348
	v_cvt_pk_fp8_f32 v99, v92, v93                             // 00000000EBF8: D2A20063 0002BB5C
	v_cvt_pk_fp8_f32 v103, v76, v77                            // 00000000EC00: D2A20067 00029B4C
	v_cvt_pk_fp8_f32 v96, v82, v83 op_sel:[0,0,1]              // 00000000EC08: D2A24060 0002A752
	v_cvt_pk_fp8_f32 v100, v66, v67 op_sel:[0,0,1]             // 00000000EC10: D2A24064 00028742
	v_cvt_pk_fp8_f32 v97, v86, v87 op_sel:[0,0,1]              // 00000000EC18: D2A24061 0002AF56
	v_cvt_pk_fp8_f32 v101, v70, v71 op_sel:[0,0,1]             // 00000000EC20: D2A24065 00028F46
	v_cvt_pk_fp8_f32 v98, v90, v91 op_sel:[0,0,1]              // 00000000EC28: D2A24062 0002B75A
	v_cvt_pk_fp8_f32 v102, v74, v75 op_sel:[0,0,1]             // 00000000EC30: D2A24066 0002974A
	v_cvt_pk_fp8_f32 v99, v94, v95 op_sel:[0,0,1]              // 00000000EC38: D2A24063 0002BF5E
	v_cvt_pk_fp8_f32 v103, v78, v79 op_sel:[0,0,1]             // 00000000EC40: D2A24067 00029F4E
	s_waitcnt vmcnt(0)                                         // 00000000EC48: BF8C0F70
	s_barrier                                                  // 00000000EC4C: BF8A0000
	s_add_u32 s17, s98, s80                                    // 00000000EC50: 80115062
	s_and_b32 s24, s17, 3                                      // 00000000EC54: 86188311
	s_cmp_lg_u32 s76, 0                                        // 00000000EC58: BF07804C
	s_cbranch_scc1 4                                           // 00000000EC5C: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4270>
	s_not_b32 s17, s52                                         // 00000000EC60: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000EC64: 80111132
	s_cmp_lg_u32 s52, s17                                      // 00000000EC68: BF071134
	s_cbranch_scc1 369                                         // 00000000EC6C: BF850171 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4834>
	s_add_u32 s2, s2, s13                                      // 00000000EC70: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000EC74: BF093102
	s_mov_b32 s76, 0                                           // 00000000EC78: BECC0080
	s_cbranch_scc1 109                                         // 00000000EC7C: BF85006D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4434>
	s_lshl_b32 s17, s2, 5                                      // 00000000EC80: 8E118502
	s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0          // 00000000EC84: C00E4D17 22000000
	s_mov_b64 s[18:19], -1                                     // 00000000EC8C: BE9201C1
	s_branch 362                                               // 00000000EC90: BF82016A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x483c>
	s_setprio 0                                                // 00000000EC94: BF8F0000
	v_exp_f32_e32 v80, v80                                     // 00000000EC98: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000EC9C: 7EA24151
	v_exp_f32_e32 v64, v64                                     // 00000000ECA0: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000ECA4: 7E824141
	v_exp_f32_e32 v84, v84                                     // 00000000ECA8: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000ECAC: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000ECB0: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000ECB4: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000ECB8: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000ECBC: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000ECC0: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000ECC4: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000ECC8: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000ECCC: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000ECD0: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000ECD4: 7E9A414D
	v_mov_b32_e32 v96, 0                                       // 00000000ECD8: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000ECDC: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000ECE0: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000ECE4: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000ECE8: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000ECEC: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000ECF0: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000ECF4: 7ECE0280
	v_exp_f32_e32 v82, v82                                     // 00000000ECF8: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000ECFC: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000ED00: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000ED04: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000ED08: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000ED0C: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000ED10: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000ED14: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000ED18: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000ED1C: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000ED20: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000ED24: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000ED28: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000ED2C: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000ED30: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000ED34: 7E9E414F
	v_cvt_pk_fp8_f32 v96, v80, v81                             // 00000000ED38: D2A20060 0002A350
	v_cvt_pk_fp8_f32 v100, v64, v65                            // 00000000ED40: D2A20064 00028340
	v_cvt_pk_fp8_f32 v97, v84, v85                             // 00000000ED48: D2A20061 0002AB54
	v_cvt_pk_fp8_f32 v101, v68, v69                            // 00000000ED50: D2A20065 00028B44
	v_cvt_pk_fp8_f32 v98, v88, v89                             // 00000000ED58: D2A20062 0002B358
	v_cvt_pk_fp8_f32 v102, v72, v73                            // 00000000ED60: D2A20066 00029348
	v_cvt_pk_fp8_f32 v99, v92, v93                             // 00000000ED68: D2A20063 0002BB5C
	v_cvt_pk_fp8_f32 v103, v76, v77                            // 00000000ED70: D2A20067 00029B4C
	v_cvt_pk_fp8_f32 v96, v82, v83 op_sel:[0,0,1]              // 00000000ED78: D2A24060 0002A752
	v_cvt_pk_fp8_f32 v100, v66, v67 op_sel:[0,0,1]             // 00000000ED80: D2A24064 00028742
	v_cvt_pk_fp8_f32 v97, v86, v87 op_sel:[0,0,1]              // 00000000ED88: D2A24061 0002AF56
	v_cvt_pk_fp8_f32 v101, v70, v71 op_sel:[0,0,1]             // 00000000ED90: D2A24065 00028F46
	v_cvt_pk_fp8_f32 v98, v90, v91 op_sel:[0,0,1]              // 00000000ED98: D2A24062 0002B75A
	v_cvt_pk_fp8_f32 v102, v74, v75 op_sel:[0,0,1]             // 00000000EDA0: D2A24066 0002974A
	v_cvt_pk_fp8_f32 v99, v94, v95 op_sel:[0,0,1]              // 00000000EDA8: D2A24063 0002BF5E
	v_cvt_pk_fp8_f32 v103, v78, v79 op_sel:[0,0,1]             // 00000000EDB0: D2A24067 00029F4E
	s_waitcnt vmcnt(0)                                         // 00000000EDB8: BF8C0F70
	s_barrier                                                  // 00000000EDBC: BF8A0000
	s_add_u32 s17, s98, s80                                    // 00000000EDC0: 80115062
	s_and_b32 s24, s17, 3                                      // 00000000EDC4: 86188311
	s_cmp_lg_u32 s76, 0                                        // 00000000EDC8: BF07804C
	s_cbranch_scc1 4                                           // 00000000EDCC: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x43e0>
	s_not_b32 s17, s52                                         // 00000000EDD0: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000EDD4: 80111132
	s_cmp_lg_u32 s52, s17                                      // 00000000EDD8: BF071134
	s_cbranch_scc1 478                                         // 00000000EDDC: BF8501DE <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4b58>
	s_add_u32 s2, s2, s13                                      // 00000000EDE0: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000EDE4: BF093102
	s_mov_b32 s76, 0                                           // 00000000EDE8: BECC0080
	s_cbranch_scc1 22                                          // 00000000EDEC: BF850016 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4448>
	s_lshl_b32 s17, s2, 5                                      // 00000000EDF0: 8E118502
	s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0          // 00000000EDF4: C00E4D17 22000000
	s_mov_b64 s[18:19], -1                                     // 00000000EDFC: BE9201C1
	s_branch 471                                               // 00000000EE00: BF8201D7 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4b60>
	s_mov_b32 s76, 0                                           // 00000000EE04: BECC0080
	s_mov_b64 s[20:21], s[10:11]                               // 00000000EE08: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000EE0C: BE92010E
	s_mov_b32 s17, s3                                          // 00000000EE10: BE910003
	s_mov_b32 s22, 0                                           // 00000000EE14: BE960080
	s_branch 457                                               // 00000000EE18: BF8201C9 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4b40>
	s_mov_b32 s76, 0                                           // 00000000EE1C: BECC0080
	s_mov_b64 s[20:21], s[10:11]                               // 00000000EE20: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000EE24: BE92010E
	s_mov_b32 s17, s3                                          // 00000000EE28: BE910003
	s_mov_b32 s22, 0                                           // 00000000EE2C: BE960080
	s_branch 652                                               // 00000000EE30: BF82028C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4e64>
	s_mov_b64 s[20:21], s[10:11]                               // 00000000EE34: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000EE38: BE92010E
	s_mov_b32 s17, s3                                          // 00000000EE3C: BE910003
	s_mov_b32 s22, 0                                           // 00000000EE40: BE960080
	s_branch 373                                               // 00000000EE44: BF820175 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4a1c>
	s_mov_b64 s[20:21], s[10:11]                               // 00000000EE48: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000EE4C: BE92010E
	s_mov_b32 s17, s3                                          // 00000000EE50: BE910003
	s_mov_b32 s22, 0                                           // 00000000EE54: BE960080
	s_branch 569                                               // 00000000EE58: BF820239 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4d40>
	s_mov_b32 s76, 1                                           // 00000000EE5C: BECC0081
	s_mov_b64 s[18:19], 0                                      // 00000000EE60: BE920180
	s_waitcnt lgkmcnt(0)                                       // 00000000EE64: BF8CC07F
	s_mov_b32 s20, s58                                         // 00000000EE68: BE94003A
	s_mov_b32 s21, s16                                         // 00000000EE6C: BE950010
	s_lshl_b64 s[20:21], s[20:21], 7                           // 00000000EE70: 8E948714
	s_add_u32 s60, s38, s56                                    // 00000000EE74: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000EE78: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000EE7C: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000EE80: 82411529
	s_not_b32 s17, s52                                         // 00000000EE84: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000EE88: 80111132
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000EE8C: 86927E12
	s_cselect_b32 s17, s17, s52                                // 00000000EE90: 85113411
	s_lshl_b32 s18, s17, 5                                     // 00000000EE94: 8E128511
	s_add_u32 s18, s18, 32                                     // 00000000EE98: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000EE9C: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000EEA0: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000EEA4: 8F128612
	s_min_u32 s98, s12, s18                                    // 00000000EEA8: 83E2120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000EEAC: 86927E00
	s_cbranch_scc0 60                                          // 00000000EEB0: BF84003C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x45a4>
	s_lshl_b32 s18, s24, 14                                    // 00000000EEB4: 8E128E18
	s_or_b32 s18, s18, s72                                     // 00000000EEB8: 87124812
	s_mov_b32 m0, s18                                          // 00000000EEBC: BEFC0012
	s_mov_b32 s67, s63                                         // 00000000EEC0: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000EEC4: E05D1000 800F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000EECC: 807CFF12 00001000
	s_lshl_b32 s19, s24, 13                                    // 00000000EED4: 8E138D18
	buffer_load_dwordx4 v164, s[60:63], s48 offen lds          // 00000000EED8: E05D1000 300F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000EEE0: 877CFF12 00002000
	s_nop 0                                                    // 00000000EEE8: BF800000
	buffer_load_dwordx4 v164, s[60:63], s74 offen lds          // 00000000EEEC: E05D1000 4A0F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000EEF4: 807CFF12 00003000
	s_mul_i32 s18, s6, 48                                      // 00000000EEFC: 9212B006
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000EF00: E05D1000 120F00A4
	s_add_u32 s18, s82, s19                                    // 00000000EF08: 80121352
	s_add_u32 m0, s18, s72                                     // 00000000EF0C: 807C4812
	s_nop 0                                                    // 00000000EF10: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000EF14: E05D1000 801000A6
	s_add_u32 s18, s82, s19                                    // 00000000EF1C: 80121352
	s_add_u32 s18, s18, s72                                    // 00000000EF20: 80124812
	s_add_u32 m0, s18, 0x1000                                  // 00000000EF24: 807CFF12 00001000
	s_cmp_lt_u32 s98, 2                                        // 00000000EF2C: BF0A8262
	buffer_load_dwordx4 v166, s[64:67], s75 offen lds          // 00000000EF30: E05D1000 4B1000A6
	s_cbranch_scc1 26                                          // 00000000EF38: BF85001A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x45a4>
	s_add_u32 s18, s24, 1                                      // 00000000EF3C: 80128118
	s_and_b32 s18, s18, 3                                      // 00000000EF40: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000EF44: 8E128E12
	s_or_b32 s18, s18, s72                                     // 00000000EF48: 87124812
	s_mov_b32 m0, s18                                          // 00000000EF4C: BEFC0012
	s_mul_i32 s19, s6, 0x50                                    // 00000000EF50: 9213FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000EF58: E05D1000 090F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000EF60: 807CFF12 00001000
	s_nop 0                                                    // 00000000EF68: BF800000
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000EF6C: E05D1000 130F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000EF74: 877CFF12 00002000
	s_mul_i32 s19, s6, 0x60                                    // 00000000EF7C: 9213FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000EF84: E05D1000 130F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000EF8C: 807CFF12 00003000
	s_mul_i32 s18, s6, 0x70                                    // 00000000EF94: 9212FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000EF9C: E05D1000 120F00A4
	s_mov_b32 s18, s59                                         // 00000000EFA4: BE92003B
	s_mov_b32 s19, s16                                         // 00000000EFA8: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000EFAC: 8E928812
	s_add_u32 s22, s36, s54                                    // 00000000EFB0: 80163624
	s_addc_u32 s23, s37, s55                                   // 00000000EFB4: 82173725
	s_add_u32 s20, s42, s18                                    // 00000000EFB8: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000EFBC: 8215132B
	s_add_u32 s18, s33, s53                                    // 00000000EFC0: 80123521
	s_lshl_b32 s18, s18, 2                                     // 00000000EFC4: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000EFC8: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000EFCC: 821A802D
	s_mul_i32 s17, s17, s51                                    // 00000000EFD0: 92113311
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000EFD4: 8692227E
	s_cselect_b32 s19, 0, s26                                  // 00000000EFD8: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000EFDC: 85121980
	s_add_u32 s25, s17, s73                                    // 00000000EFE0: 80194911
	s_lshl_b32 s17, s25, 5                                     // 00000000EFE4: 8E118519
	v_or_b32_e32 v64, s17, v146                                // 00000000EFE8: 28812411
	s_bfe_u32 s77, s25, 0x1a0001                               // 00000000EFEC: 92CDFF19 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000EFF4: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000EFFC: 688081A7
	global_load_dwordx4 v[182:185], v64, s[22:23]              // 00000000F000: DC5C8000 B6160040
	global_load_dwordx4 v[186:189], v64, s[22:23] offset:16    // 00000000F008: DC5C8010 BA160040
	global_load_dwordx4 v[190:193], v64, s[22:23] offset:64    // 00000000F010: DC5C8040 BE160040
	global_load_dwordx4 v[194:197], v64, s[22:23] offset:80    // 00000000F018: DC5C8050 C2160040
	global_load_dwordx4 v[198:201], v64, s[22:23] offset:128   // 00000000F020: DC5C8080 C6160040
	global_load_dwordx4 v[202:205], v64, s[22:23] offset:144   // 00000000F028: DC5C8090 CA160040
	s_mov_b32 s67, 0x110000                                    // 00000000F030: BEC300FF 00110000
	s_mov_b32 s22, 1                                           // 00000000F038: BE960081
	s_mov_b32 s79, 0x110000                                    // 00000000F03C: BECF00FF 00110000
	s_branch 318                                               // 00000000F044: BF82013E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4b40>
	s_mov_b32 s76, 1                                           // 00000000F048: BECC0081
	s_mov_b64 s[18:19], 0                                      // 00000000F04C: BE920180
	s_waitcnt lgkmcnt(0)                                       // 00000000F050: BF8CC07F
	s_mov_b32 s20, s58                                         // 00000000F054: BE94003A
	s_mov_b32 s21, s16                                         // 00000000F058: BE950010
	s_lshl_b64 s[20:21], s[20:21], 7                           // 00000000F05C: 8E948714
	s_add_u32 s60, s38, s56                                    // 00000000F060: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000F064: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000F068: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000F06C: 82411529
	s_not_b32 s17, s52                                         // 00000000F070: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000F074: 80111132
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000F078: 86927E12
	s_cselect_b32 s17, s17, s52                                // 00000000F07C: 85113411
	s_lshl_b32 s18, s17, 5                                     // 00000000F080: 8E128511
	s_add_u32 s18, s18, 32                                     // 00000000F084: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000F088: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000F08C: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000F090: 8F128612
	s_min_u32 s98, s12, s18                                    // 00000000F094: 83E2120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000F098: 86927E00
	s_cbranch_scc0 60                                          // 00000000F09C: BF84003C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4790>
	s_lshl_b32 s18, s24, 14                                    // 00000000F0A0: 8E128E18
	s_or_b32 s18, s18, s72                                     // 00000000F0A4: 87124812
	s_mov_b32 m0, s18                                          // 00000000F0A8: BEFC0012
	s_mov_b32 s67, s63                                         // 00000000F0AC: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000F0B0: E05D1000 800F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000F0B8: 807CFF12 00001000
	s_lshl_b32 s19, s24, 13                                    // 00000000F0C0: 8E138D18
	buffer_load_dwordx4 v164, s[60:63], s48 offen lds          // 00000000F0C4: E05D1000 300F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000F0CC: 877CFF12 00002000
	s_nop 0                                                    // 00000000F0D4: BF800000
	buffer_load_dwordx4 v164, s[60:63], s74 offen lds          // 00000000F0D8: E05D1000 4A0F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000F0E0: 807CFF12 00003000
	s_mul_i32 s18, s6, 48                                      // 00000000F0E8: 9212B006
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F0EC: E05D1000 120F00A4
	s_add_u32 s18, s82, s19                                    // 00000000F0F4: 80121352
	s_add_u32 m0, s18, s72                                     // 00000000F0F8: 807C4812
	s_nop 0                                                    // 00000000F0FC: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000F100: E05D1000 801000A6
	s_add_u32 s18, s82, s19                                    // 00000000F108: 80121352
	s_add_u32 s18, s18, s72                                    // 00000000F10C: 80124812
	s_add_u32 m0, s18, 0x1000                                  // 00000000F110: 807CFF12 00001000
	s_cmp_lt_u32 s98, 2                                        // 00000000F118: BF0A8262
	buffer_load_dwordx4 v166, s[64:67], s75 offen lds          // 00000000F11C: E05D1000 4B1000A6
	s_cbranch_scc1 26                                          // 00000000F124: BF85001A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4790>
	s_add_u32 s18, s24, 1                                      // 00000000F128: 80128118
	s_and_b32 s18, s18, 3                                      // 00000000F12C: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000F130: 8E128E12
	s_or_b32 s18, s18, s72                                     // 00000000F134: 87124812
	s_mov_b32 m0, s18                                          // 00000000F138: BEFC0012
	s_mul_i32 s19, s6, 0x50                                    // 00000000F13C: 9213FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000F144: E05D1000 090F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000F14C: 807CFF12 00001000
	s_nop 0                                                    // 00000000F154: BF800000
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F158: E05D1000 130F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000F160: 877CFF12 00002000
	s_mul_i32 s19, s6, 0x60                                    // 00000000F168: 9213FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F170: E05D1000 130F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000F178: 807CFF12 00003000
	s_mul_i32 s18, s6, 0x70                                    // 00000000F180: 9212FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F188: E05D1000 120F00A4
	s_mov_b32 s18, s59                                         // 00000000F190: BE92003B
	s_mov_b32 s19, s16                                         // 00000000F194: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000F198: 8E928812
	s_add_u32 s22, s36, s54                                    // 00000000F19C: 80163624
	s_addc_u32 s23, s37, s55                                   // 00000000F1A0: 82173725
	s_add_u32 s20, s42, s18                                    // 00000000F1A4: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000F1A8: 8215132B
	s_add_u32 s18, s33, s53                                    // 00000000F1AC: 80123521
	s_lshl_b32 s18, s18, 2                                     // 00000000F1B0: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000F1B4: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000F1B8: 821A802D
	s_mul_i32 s17, s17, s51                                    // 00000000F1BC: 92113311
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000F1C0: 8692227E
	s_cselect_b32 s19, 0, s26                                  // 00000000F1C4: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000F1C8: 85121980
	s_add_u32 s25, s17, s73                                    // 00000000F1CC: 80194911
	s_lshl_b32 s17, s25, 5                                     // 00000000F1D0: 8E118519
	v_or_b32_e32 v64, s17, v146                                // 00000000F1D4: 28812411
	s_bfe_u32 s77, s25, 0x1a0001                               // 00000000F1D8: 92CDFF19 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000F1E0: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000F1E8: 688081A7
	global_load_dwordx4 v[182:185], v64, s[22:23]              // 00000000F1EC: DC5C8000 B6160040
	global_load_dwordx4 v[186:189], v64, s[22:23] offset:16    // 00000000F1F4: DC5C8010 BA160040
	global_load_dwordx4 v[190:193], v64, s[22:23] offset:64    // 00000000F1FC: DC5C8040 BE160040
	global_load_dwordx4 v[194:197], v64, s[22:23] offset:80    // 00000000F204: DC5C8050 C2160040
	global_load_dwordx4 v[198:201], v64, s[22:23] offset:128   // 00000000F20C: DC5C8080 C6160040
	global_load_dwordx4 v[202:205], v64, s[22:23] offset:144   // 00000000F214: DC5C8090 CA160040
	s_mov_b32 s67, 0x110000                                    // 00000000F21C: BEC300FF 00110000
	s_mov_b32 s22, 1                                           // 00000000F224: BE960081
	s_mov_b32 s79, 0x110000                                    // 00000000F228: BECF00FF 00110000
	s_branch 396                                               // 00000000F230: BF82018C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4e64>
	s_mov_b32 s76, 1                                           // 00000000F234: BECC0081
	s_mov_b64 s[18:19], 0                                      // 00000000F238: BE920180
	s_waitcnt lgkmcnt(0)                                       // 00000000F23C: BF8CC07F
	s_mov_b32 s20, s58                                         // 00000000F240: BE94003A
	s_mov_b32 s21, s16                                         // 00000000F244: BE950010
	s_lshl_b64 s[20:21], s[20:21], 7                           // 00000000F248: 8E948714
	s_add_u32 s60, s38, s56                                    // 00000000F24C: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000F250: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000F254: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000F258: 82411529
	s_not_b32 s17, s52                                         // 00000000F25C: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000F260: 80111132
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000F264: 86927E12
	s_cselect_b32 s17, s17, s52                                // 00000000F268: 85113411
	s_lshl_b32 s18, s17, 5                                     // 00000000F26C: 8E128511
	s_add_u32 s18, s18, 32                                     // 00000000F270: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000F274: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000F278: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000F27C: 8F128612
	s_min_u32 s98, s12, s18                                    // 00000000F280: 83E2120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000F284: 86927E00
	s_cbranch_scc0 60                                          // 00000000F288: BF84003C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x497c>
	s_lshl_b32 s18, s24, 14                                    // 00000000F28C: 8E128E18
	s_or_b32 s18, s18, s72                                     // 00000000F290: 87124812
	s_mov_b32 m0, s18                                          // 00000000F294: BEFC0012
	s_mov_b32 s67, s63                                         // 00000000F298: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000F29C: E05D1000 800F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000F2A4: 807CFF12 00001000
	s_lshl_b32 s19, s24, 13                                    // 00000000F2AC: 8E138D18
	buffer_load_dwordx4 v164, s[60:63], s48 offen lds          // 00000000F2B0: E05D1000 300F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000F2B8: 877CFF12 00002000
	s_nop 0                                                    // 00000000F2C0: BF800000
	buffer_load_dwordx4 v164, s[60:63], s74 offen lds          // 00000000F2C4: E05D1000 4A0F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000F2CC: 807CFF12 00003000
	s_mul_i32 s18, s6, 48                                      // 00000000F2D4: 9212B006
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F2D8: E05D1000 120F00A4
	s_add_u32 s18, s82, s19                                    // 00000000F2E0: 80121352
	s_add_u32 m0, s18, s72                                     // 00000000F2E4: 807C4812
	s_nop 0                                                    // 00000000F2E8: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000F2EC: E05D1000 801000A6
	s_add_u32 s18, s82, s19                                    // 00000000F2F4: 80121352
	s_add_u32 s18, s18, s72                                    // 00000000F2F8: 80124812
	s_add_u32 m0, s18, 0x1000                                  // 00000000F2FC: 807CFF12 00001000
	s_cmp_lt_u32 s98, 2                                        // 00000000F304: BF0A8262
	buffer_load_dwordx4 v166, s[64:67], s75 offen lds          // 00000000F308: E05D1000 4B1000A6
	s_cbranch_scc1 26                                          // 00000000F310: BF85001A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x497c>
	s_add_u32 s18, s24, 1                                      // 00000000F314: 80128118
	s_and_b32 s18, s18, 3                                      // 00000000F318: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000F31C: 8E128E12
	s_or_b32 s18, s18, s72                                     // 00000000F320: 87124812
	s_mov_b32 m0, s18                                          // 00000000F324: BEFC0012
	s_mul_i32 s19, s6, 0x50                                    // 00000000F328: 9213FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000F330: E05D1000 090F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000F338: 807CFF12 00001000
	s_nop 0                                                    // 00000000F340: BF800000
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F344: E05D1000 130F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000F34C: 877CFF12 00002000
	s_mul_i32 s19, s6, 0x60                                    // 00000000F354: 9213FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F35C: E05D1000 130F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000F364: 807CFF12 00003000
	s_mul_i32 s18, s6, 0x70                                    // 00000000F36C: 9212FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F374: E05D1000 120F00A4
	s_mov_b32 s18, s59                                         // 00000000F37C: BE92003B
	s_mov_b32 s19, s16                                         // 00000000F380: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000F384: 8E928812
	s_add_u32 s22, s36, s54                                    // 00000000F388: 80163624
	s_addc_u32 s23, s37, s55                                   // 00000000F38C: 82173725
	s_add_u32 s20, s42, s18                                    // 00000000F390: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000F394: 8215132B
	s_add_u32 s18, s33, s53                                    // 00000000F398: 80123521
	s_lshl_b32 s18, s18, 2                                     // 00000000F39C: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000F3A0: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000F3A4: 821A802D
	s_mul_i32 s17, s17, s51                                    // 00000000F3A8: 92113311
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000F3AC: 8692227E
	s_cselect_b32 s19, 0, s26                                  // 00000000F3B0: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000F3B4: 85121980
	s_add_u32 s25, s17, s73                                    // 00000000F3B8: 80194911
	s_lshl_b32 s17, s25, 5                                     // 00000000F3BC: 8E118519
	v_or_b32_e32 v64, s17, v146                                // 00000000F3C0: 28812411
	s_bfe_u32 s77, s25, 0x1a0001                               // 00000000F3C4: 92CDFF19 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000F3CC: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000F3D4: 688081A7
	global_load_dwordx4 v[182:185], v64, s[22:23]              // 00000000F3D8: DC5C8000 B6160040
	global_load_dwordx4 v[186:189], v64, s[22:23] offset:16    // 00000000F3E0: DC5C8010 BA160040
	global_load_dwordx4 v[190:193], v64, s[22:23] offset:64    // 00000000F3E8: DC5C8040 BE160040
	global_load_dwordx4 v[194:197], v64, s[22:23] offset:80    // 00000000F3F0: DC5C8050 C2160040
	global_load_dwordx4 v[198:201], v64, s[22:23] offset:128   // 00000000F3F8: DC5C8080 C6160040
	global_load_dwordx4 v[202:205], v64, s[22:23] offset:144   // 00000000F400: DC5C8090 CA160040
	s_mov_b32 s67, 0x110000                                    // 00000000F408: BEC300FF 00110000
	s_mov_b32 s22, 1                                           // 00000000F410: BE960081
	s_mov_b32 s79, 0x110000                                    // 00000000F414: BECF00FF 00110000
	s_setprio 1                                                // 00000000F41C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[96:103], 0// 00000000F420: D3AD0040 0202C17E
	s_add_u32 s23, s78, s80                                    // 00000000F428: 8017504E
	s_and_b32 s23, s23, 3                                      // 00000000F42C: 86178317
	s_lshl_b32 s23, s23, 13                                    // 00000000F430: 8E178D17
	s_add_u32 s25, s82, s23                                    // 00000000F434: 80191752
	s_nop 7                                                    // 00000000F438: BF800007
	v_add3_u32 v65, s25, v173, v172                            // 00000000F43C: D1FF0041 06B35A19
	s_waitcnt vmcnt(6)                                         // 00000000F444: BF8C0F76
	ds_read_b64_tr_b8 v[66:67], v65                            // 00000000F448: D9C40000 42000041
	ds_read_b64_tr_b8 v[68:69], v65 offset:1024                // 00000000F450: D9C40400 44000041
	ds_read_b64_tr_b8 v[70:71], v65 offset:2048                // 00000000F458: D9C40800 46000041
	ds_read_b64_tr_b8 v[72:73], v65 offset:3072                // 00000000F460: D9C40C00 48000041
	s_add_u32 s25, s82, s23                                    // 00000000F468: 80191752
	v_add3_u32 v65, s25, v173, v172                            // 00000000F46C: D1FF0041 06B35A19
	ds_read_b64_tr_b8 v[74:75], v65 offset:256                 // 00000000F474: D9C40100 4A000041
	ds_read_b64_tr_b8 v[76:77], v65 offset:1280                // 00000000F47C: D9C40500 4C000041
	ds_read_b64_tr_b8 v[78:79], v65 offset:2304                // 00000000F484: D9C40900 4E000041
	ds_read_b64_tr_b8 v[80:81], v65 offset:3328                // 00000000F48C: D9C40D00 50000041
	s_add_u32 s25, s82, s23                                    // 00000000F494: 80191752
	v_add3_u32 v65, s25, v173, v172                            // 00000000F498: D1FF0041 06B35A19
	ds_read_b64_tr_b8 v[82:83], v65 offset:512                 // 00000000F4A0: D9C40200 52000041
	ds_read_b64_tr_b8 v[84:85], v65 offset:1536                // 00000000F4A8: D9C40600 54000041
	ds_read_b64_tr_b8 v[86:87], v65 offset:2560                // 00000000F4B0: D9C40A00 56000041
	ds_read_b64_tr_b8 v[88:89], v65 offset:3584                // 00000000F4B8: D9C40E00 58000041
	v_lshlrev_b32_e32 v65, 23, v180                            // 00000000F4C0: 24836897
	v_fma_f32 v179, v64, v65, v179                             // 00000000F4C4: D1CB00B3 06CE8340
	s_waitcnt lgkmcnt(4)                                       // 00000000F4CC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[66:73], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000F4D0: D3AC0000 000369AA D3AE0830 04C2C142
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[74:81], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000F4E0: D3AC0000 000369AA D3AE0820 0482C14A
	s_add_u32 s23, s82, s23                                    // 00000000F4F0: 80171752
	v_add3_u32 v64, s23, v173, v172                            // 00000000F4F4: D1FF0040 06B35A17
	ds_read_b64_tr_b8 v[66:67], v64 offset:768                 // 00000000F4FC: D9C40300 42000040
	ds_read_b64_tr_b8 v[68:69], v64 offset:1792                // 00000000F504: D9C40700 44000040
	ds_read_b64_tr_b8 v[70:71], v64 offset:2816                // 00000000F50C: D9C40B00 46000040
	ds_read_b64_tr_b8 v[72:73], v64 offset:3840                // 00000000F514: D9C40F00 48000040
	s_waitcnt lgkmcnt(0)                                       // 00000000F51C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000F520: D3AC0000 000369AA D3AE0810 0442C152
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[66:73], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000F530: D3AC0000 000369AA D3AE0800 0402C142
	s_waitcnt vmcnt(6)                                         // 00000000F540: BF8C0F76
	s_barrier                                                  // 00000000F544: BF8A0000
	s_mov_b32 s80, s24                                         // 00000000F548: BED00018
	s_cmp_eq_u32 s22, 0                                        // 00000000F54C: BF068016
	s_cbranch_scc0 201                                         // 00000000F550: BF8400C9 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4e78>
	s_branch 453                                               // 00000000F554: BF8201C5 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x526c>
	s_mov_b32 s76, 1                                           // 00000000F558: BECC0081
	s_mov_b64 s[18:19], 0                                      // 00000000F55C: BE920180
	s_waitcnt lgkmcnt(0)                                       // 00000000F560: BF8CC07F
	s_mov_b32 s20, s58                                         // 00000000F564: BE94003A
	s_mov_b32 s21, s16                                         // 00000000F568: BE950010
	s_lshl_b64 s[20:21], s[20:21], 7                           // 00000000F56C: 8E948714
	s_add_u32 s60, s38, s56                                    // 00000000F570: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000F574: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000F578: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000F57C: 82411529
	s_not_b32 s17, s52                                         // 00000000F580: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000F584: 80111132
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000F588: 86927E12
	s_cselect_b32 s17, s17, s52                                // 00000000F58C: 85113411
	s_lshl_b32 s18, s17, 5                                     // 00000000F590: 8E128511
	s_add_u32 s18, s18, 32                                     // 00000000F594: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000F598: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000F59C: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000F5A0: 8F128612
	s_min_u32 s98, s12, s18                                    // 00000000F5A4: 83E2120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000F5A8: 86927E00
	s_cbranch_scc0 60                                          // 00000000F5AC: BF84003C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4ca0>
	s_lshl_b32 s18, s24, 14                                    // 00000000F5B0: 8E128E18
	s_or_b32 s18, s18, s72                                     // 00000000F5B4: 87124812
	s_mov_b32 m0, s18                                          // 00000000F5B8: BEFC0012
	s_mov_b32 s67, s63                                         // 00000000F5BC: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000F5C0: E05D1000 800F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000F5C8: 807CFF12 00001000
	s_lshl_b32 s19, s24, 13                                    // 00000000F5D0: 8E138D18
	buffer_load_dwordx4 v164, s[60:63], s48 offen lds          // 00000000F5D4: E05D1000 300F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000F5DC: 877CFF12 00002000
	s_nop 0                                                    // 00000000F5E4: BF800000
	buffer_load_dwordx4 v164, s[60:63], s74 offen lds          // 00000000F5E8: E05D1000 4A0F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000F5F0: 807CFF12 00003000
	s_mul_i32 s18, s6, 48                                      // 00000000F5F8: 9212B006
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F5FC: E05D1000 120F00A4
	s_add_u32 s18, s82, s19                                    // 00000000F604: 80121352
	s_add_u32 m0, s18, s72                                     // 00000000F608: 807C4812
	s_nop 0                                                    // 00000000F60C: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000F610: E05D1000 801000A6
	s_add_u32 s18, s82, s19                                    // 00000000F618: 80121352
	s_add_u32 s18, s18, s72                                    // 00000000F61C: 80124812
	s_add_u32 m0, s18, 0x1000                                  // 00000000F620: 807CFF12 00001000
	s_cmp_lt_u32 s98, 2                                        // 00000000F628: BF0A8262
	buffer_load_dwordx4 v166, s[64:67], s75 offen lds          // 00000000F62C: E05D1000 4B1000A6
	s_cbranch_scc1 26                                          // 00000000F634: BF85001A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4ca0>
	s_add_u32 s18, s24, 1                                      // 00000000F638: 80128118
	s_and_b32 s18, s18, 3                                      // 00000000F63C: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000F640: 8E128E12
	s_or_b32 s18, s18, s72                                     // 00000000F644: 87124812
	s_mov_b32 m0, s18                                          // 00000000F648: BEFC0012
	s_mul_i32 s19, s6, 0x50                                    // 00000000F64C: 9213FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000F654: E05D1000 090F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000F65C: 807CFF12 00001000
	s_nop 0                                                    // 00000000F664: BF800000
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F668: E05D1000 130F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000F670: 877CFF12 00002000
	s_mul_i32 s19, s6, 0x60                                    // 00000000F678: 9213FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F680: E05D1000 130F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000F688: 807CFF12 00003000
	s_mul_i32 s18, s6, 0x70                                    // 00000000F690: 9212FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F698: E05D1000 120F00A4
	s_mov_b32 s18, s59                                         // 00000000F6A0: BE92003B
	s_mov_b32 s19, s16                                         // 00000000F6A4: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000F6A8: 8E928812
	s_add_u32 s22, s36, s54                                    // 00000000F6AC: 80163624
	s_addc_u32 s23, s37, s55                                   // 00000000F6B0: 82173725
	s_add_u32 s20, s42, s18                                    // 00000000F6B4: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000F6B8: 8215132B
	s_add_u32 s18, s33, s53                                    // 00000000F6BC: 80123521
	s_lshl_b32 s18, s18, 2                                     // 00000000F6C0: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000F6C4: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000F6C8: 821A802D
	s_mul_i32 s17, s17, s51                                    // 00000000F6CC: 92113311
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000F6D0: 8692227E
	s_cselect_b32 s19, 0, s26                                  // 00000000F6D4: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000F6D8: 85121980
	s_add_u32 s25, s17, s73                                    // 00000000F6DC: 80194911
	s_lshl_b32 s17, s25, 5                                     // 00000000F6E0: 8E118519
	v_or_b32_e32 v64, s17, v146                                // 00000000F6E4: 28812411
	s_bfe_u32 s77, s25, 0x1a0001                               // 00000000F6E8: 92CDFF19 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000F6F0: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000F6F8: 688081A7
	global_load_dwordx4 v[182:185], v64, s[22:23]              // 00000000F6FC: DC5C8000 B6160040
	global_load_dwordx4 v[186:189], v64, s[22:23] offset:16    // 00000000F704: DC5C8010 BA160040
	global_load_dwordx4 v[190:193], v64, s[22:23] offset:64    // 00000000F70C: DC5C8040 BE160040
	global_load_dwordx4 v[194:197], v64, s[22:23] offset:80    // 00000000F714: DC5C8050 C2160040
	global_load_dwordx4 v[198:201], v64, s[22:23] offset:128   // 00000000F71C: DC5C8080 C6160040
	global_load_dwordx4 v[202:205], v64, s[22:23] offset:144   // 00000000F724: DC5C8090 CA160040
	s_mov_b32 s67, 0x110000                                    // 00000000F72C: BEC300FF 00110000
	s_mov_b32 s22, 1                                           // 00000000F734: BE960081
	s_mov_b32 s79, 0x110000                                    // 00000000F738: BECF00FF 00110000
	s_setprio 1                                                // 00000000F740: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[96:103], 0// 00000000F744: D3AD0040 0202C17E
	s_add_u32 s23, s78, s80                                    // 00000000F74C: 8017504E
	s_and_b32 s23, s23, 3                                      // 00000000F750: 86178317
	s_lshl_b32 s23, s23, 13                                    // 00000000F754: 8E178D17
	s_add_u32 s25, s82, s23                                    // 00000000F758: 80191752
	s_nop 7                                                    // 00000000F75C: BF800007
	v_add3_u32 v65, s25, v173, v172                            // 00000000F760: D1FF0041 06B35A19
	s_waitcnt vmcnt(6)                                         // 00000000F768: BF8C0F76
	ds_read_b64_tr_b8 v[66:67], v65                            // 00000000F76C: D9C40000 42000041
	ds_read_b64_tr_b8 v[68:69], v65 offset:1024                // 00000000F774: D9C40400 44000041
	ds_read_b64_tr_b8 v[70:71], v65 offset:2048                // 00000000F77C: D9C40800 46000041
	ds_read_b64_tr_b8 v[72:73], v65 offset:3072                // 00000000F784: D9C40C00 48000041
	s_add_u32 s25, s82, s23                                    // 00000000F78C: 80191752
	v_add3_u32 v65, s25, v173, v172                            // 00000000F790: D1FF0041 06B35A19
	ds_read_b64_tr_b8 v[74:75], v65 offset:256                 // 00000000F798: D9C40100 4A000041
	ds_read_b64_tr_b8 v[76:77], v65 offset:1280                // 00000000F7A0: D9C40500 4C000041
	ds_read_b64_tr_b8 v[78:79], v65 offset:2304                // 00000000F7A8: D9C40900 4E000041
	ds_read_b64_tr_b8 v[80:81], v65 offset:3328                // 00000000F7B0: D9C40D00 50000041
	s_add_u32 s25, s82, s23                                    // 00000000F7B8: 80191752
	v_add3_u32 v65, s25, v173, v172                            // 00000000F7BC: D1FF0041 06B35A19
	ds_read_b64_tr_b8 v[82:83], v65 offset:512                 // 00000000F7C4: D9C40200 52000041
	ds_read_b64_tr_b8 v[84:85], v65 offset:1536                // 00000000F7CC: D9C40600 54000041
	ds_read_b64_tr_b8 v[86:87], v65 offset:2560                // 00000000F7D4: D9C40A00 56000041
	ds_read_b64_tr_b8 v[88:89], v65 offset:3584                // 00000000F7DC: D9C40E00 58000041
	v_lshlrev_b32_e32 v65, 23, v180                            // 00000000F7E4: 24836897
	v_fma_f32 v179, v64, v65, v179                             // 00000000F7E8: D1CB00B3 06CE8340
	s_waitcnt lgkmcnt(4)                                       // 00000000F7F0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[66:73], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000F7F4: D3AC0000 000369AA D3AE0830 04C2C142
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[74:81], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000F804: D3AC0000 000369AA D3AE0820 0482C14A
	s_add_u32 s23, s82, s23                                    // 00000000F814: 80171752
	v_add3_u32 v64, s23, v173, v172                            // 00000000F818: D1FF0040 06B35A17
	ds_read_b64_tr_b8 v[66:67], v64 offset:768                 // 00000000F820: D9C40300 42000040
	ds_read_b64_tr_b8 v[68:69], v64 offset:1792                // 00000000F828: D9C40700 44000040
	ds_read_b64_tr_b8 v[70:71], v64 offset:2816                // 00000000F830: D9C40B00 46000040
	ds_read_b64_tr_b8 v[72:73], v64 offset:3840                // 00000000F838: D9C40F00 48000040
	s_waitcnt lgkmcnt(0)                                       // 00000000F840: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000F844: D3AC0000 000369AA D3AE0810 0442C152
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[66:73], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000F854: D3AC0000 000369AA D3AE0800 0402C142
	s_waitcnt vmcnt(6)                                         // 00000000F864: BF8C0F76
	s_barrier                                                  // 00000000F868: BF8A0000
	s_mov_b32 s80, s24                                         // 00000000F86C: BED00018
	s_cmp_eq_u32 s22, 0                                        // 00000000F870: BF068016
	s_cbranch_scc1 253                                         // 00000000F874: BF8500FD <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x526c>
	s_nop 15                                                   // 00000000F878: BF80000F
	s_nop 3                                                    // 00000000F87C: BF800003
	v_rcp_f32_e32 v64, v179                                    // 00000000F880: 7E8045B3
	v_log_f32_e32 v65, v179                                    // 00000000F884: 7E8243B3
	s_nop 1                                                    // 00000000F888: BF800001
	v_mul_f32_e32 v64, v168, v64                               // 00000000F88C: 0A8081A8
	v_mul_f32_e32 v48, v48, v64                                // 00000000F890: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 00000000F894: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 00000000F898: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 00000000F89C: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 00000000F8A0: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 00000000F8A4: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 00000000F8A8: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 00000000F8AC: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 00000000F8B0: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 00000000F8B4: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 00000000F8B8: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 00000000F8BC: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 00000000F8C0: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 00000000F8C4: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 00000000F8C8: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 00000000F8CC: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 00000000F8D0: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 00000000F8D4: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 00000000F8D8: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 00000000F8DC: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 00000000F8E0: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 00000000F8E4: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 00000000F8E8: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 00000000F8EC: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 00000000F8F0: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 00000000F8F4: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 00000000F8F8: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 00000000F8FC: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 00000000F900: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 00000000F904: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 00000000F908: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 00000000F90C: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 00000000F910: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 00000000F914: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 00000000F918: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 00000000F91C: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 00000000F920: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 00000000F924: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 00000000F928: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 00000000F92C: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 00000000F930: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 00000000F934: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 00000000F938: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 00000000F93C: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 00000000F940: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 00000000F944: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 00000000F948: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 00000000F94C: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 00000000F950: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 00000000F954: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 00000000F958: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 00000000F95C: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 00000000F960: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 00000000F964: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 00000000F968: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 00000000F96C: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 00000000F970: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 00000000F974: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 00000000F978: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 00000000F97C: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 00000000F980: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 00000000F984: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000F988: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000F98C: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000F990: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000F998: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000F9A0: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000F9A8: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000F9B0: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000F9B8: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000F9C0: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000F9C8: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000F9D0: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000F9D8: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000F9E0: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000F9E8: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000F9F0: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000F9F8: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000FA00: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000FA08: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000FA10: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000FA18: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000FA20: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000FA28: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000FA30: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000FA38: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000FA40: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000FA48: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000FA50: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000FA58: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000FA60: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000FA68: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000FA70: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000FA78: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000FA80: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000FA88: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000FA90: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000FA94: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000FA98: 7E000304
	v_mov_b32_e32 v1, v2                                       // 00000000FA9C: 7E020302
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000FAA0: 7E10B509
	v_mov_b32_e32 v2, v5                                       // 00000000FAA4: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000FAA8: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000FAAC: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000FAB0: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000FAB4: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000FAB8: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000FABC: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000FAC0: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000FAC4: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000FAC8: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000FACC: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000FAD0: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000FAD4: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000FAD8: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000FADC: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000FAE0: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000FAE4: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000FAE8: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000FAEC: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000FAF0: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000FAF4: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000FAF8: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000FAFC: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000FB00: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000FB04: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000FB08: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000FB0C: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000FB10: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000FB14: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000FB18: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000FB1C: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000FB20: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000FB24: 7E380320
	v_mov_b32_e32 v29, v30                                     // 00000000FB28: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000FB2C: 7E3C0321
	ds_write_b128 v158, v[0:3]                                 // 00000000FB30: D9BE0000 0000009E
	ds_write_b128 v160, v[4:7]                                 // 00000000FB38: D9BE0000 000004A0
	ds_write_b128 v159, v[8:11]                                // 00000000FB40: D9BE0000 0000089F
	ds_write_b128 v157, v[12:15]                               // 00000000FB48: D9BE0000 00000C9D
	ds_write_b128 v156, v[16:19]                               // 00000000FB50: D9BE0000 0000109C
	ds_write_b128 v155, v[20:23]                               // 00000000FB58: D9BE0000 0000149B
	ds_write_b128 v154, v[24:27]                               // 00000000FB60: D9BE0000 0000189A
	ds_write_b128 v153, v[28:31]                               // 00000000FB68: D9BE0000 00001C99
	ds_read_b128 v[8:11], v149                                 // 00000000FB70: D9FE0000 08000095
	ds_read_b128 v[12:15], v152 offset:1024                    // 00000000FB78: D9FE0400 0C000098
	ds_read_b128 v[16:19], v151 offset:2048                    // 00000000FB80: D9FE0800 10000097
	ds_read_b128 v[20:23], v150 offset:3072                    // 00000000FB88: D9FE0C00 14000096
	ds_read_b128 v[24:27], v149 offset:4096                    // 00000000FB90: D9FE1000 18000095
	ds_read_b128 v[28:31], v152 offset:5120                    // 00000000FB98: D9FE1400 1C000098
	ds_read_b128 v[32:35], v151 offset:6144                    // 00000000FBA0: D9FE1800 20000097
	ds_read_b128 v[36:39], v150 offset:7168                    // 00000000FBA8: D9FE1C00 24000096
	v_add_u32_e32 v0, s3, v147                                 // 00000000FBB0: 68012603
	v_mul_lo_u32 v0, s8, v0                                    // 00000000FBB4: D2850000 00020008
	v_add_u32_e32 v0, v0, v148                                 // 00000000FBBC: 68012900
	v_add_u32_e32 v1, s4, v0                                   // 00000000FBC0: 68020004
	v_add_u32_e32 v2, s4, v1                                   // 00000000FBC4: 68040204
	v_add_u32_e32 v3, s4, v2                                   // 00000000FBC8: 68060404
	v_add_u32_e32 v4, s4, v3                                   // 00000000FBCC: 68080604
	v_add_u32_e32 v5, s4, v4                                   // 00000000FBD0: 680A0804
	v_add_u32_e32 v6, s4, v5                                   // 00000000FBD4: 680C0A04
	v_add_u32_e32 v7, s4, v6                                   // 00000000FBD8: 680E0C04
	s_waitcnt lgkmcnt(7)                                       // 00000000FBDC: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[10:11]                 // 00000000FBE0: DC7C8000 000A0800
	s_waitcnt lgkmcnt(6)                                       // 00000000FBE8: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[10:11]                // 00000000FBEC: DC7C8000 000A0C01
	s_waitcnt lgkmcnt(5)                                       // 00000000FBF4: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[10:11]                // 00000000FBF8: DC7C8000 000A1002
	s_waitcnt lgkmcnt(4)                                       // 00000000FC00: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[10:11]                // 00000000FC04: DC7C8000 000A1403
	s_waitcnt lgkmcnt(3)                                       // 00000000FC0C: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[10:11]                // 00000000FC10: DC7C8000 000A1804
	s_waitcnt lgkmcnt(2)                                       // 00000000FC18: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[10:11]                // 00000000FC1C: DC7C8000 000A1C05
	s_waitcnt lgkmcnt(1)                                       // 00000000FC24: BF8CC17F
	global_store_dwordx4 v6, v[32:35], s[10:11]                // 00000000FC28: DC7C8000 000A2006
	s_waitcnt lgkmcnt(0)                                       // 00000000FC30: BF8CC07F
	global_store_dwordx4 v7, v[36:39], s[10:11]                // 00000000FC34: DC7C8000 000A2407
	v_add_f32_e32 v0, v178, v65                                // 00000000FC3C: 020083B2
	v_add_f32_e32 v0, -4.0, v0                                 // 00000000FC40: 020000F7
	v_add_f32_e32 v0, -2.0, v0                                 // 00000000FC44: 020000F5
	v_mul_f32_e32 v0, 0x3f317218, v0                           // 00000000FC48: 0A0000FF 3F317218
	v_add_u32_e32 v1, s3, v146                                 // 00000000FC50: 68032403
	v_lshlrev_b32_e32 v1, 2, v1                                // 00000000FC54: 24020282
	s_cmp_eq_u64 s[14:15], 0                                   // 00000000FC58: BF12800E
	s_mov_b64 s[10:11], s[20:21]                               // 00000000FC5C: BE8A0114
	s_mov_b32 s3, s17                                          // 00000000FC60: BE830011
	s_cbranch_scc0 61337                                       // 00000000FC64: BF84EF99 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10cc>
	s_branch 60602                                             // 00000000FC68: BF82ECBA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x554>
	s_nop 15                                                   // 00000000FC6C: BF80000F
	s_nop 3                                                    // 00000000FC70: BF800003
	v_rcp_f32_e32 v64, v179                                    // 00000000FC74: 7E8045B3
	v_log_f32_e32 v65, v179                                    // 00000000FC78: 7E8243B3
	s_nop 1                                                    // 00000000FC7C: BF800001
	v_mul_f32_e32 v64, v168, v64                               // 00000000FC80: 0A8081A8
	v_mul_f32_e32 v48, v48, v64                                // 00000000FC84: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 00000000FC88: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 00000000FC8C: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 00000000FC90: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 00000000FC94: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 00000000FC98: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 00000000FC9C: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 00000000FCA0: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 00000000FCA4: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 00000000FCA8: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 00000000FCAC: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 00000000FCB0: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 00000000FCB4: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 00000000FCB8: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 00000000FCBC: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 00000000FCC0: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 00000000FCC4: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 00000000FCC8: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 00000000FCCC: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 00000000FCD0: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 00000000FCD4: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 00000000FCD8: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 00000000FCDC: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 00000000FCE0: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 00000000FCE4: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 00000000FCE8: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 00000000FCEC: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 00000000FCF0: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 00000000FCF4: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 00000000FCF8: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 00000000FCFC: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 00000000FD00: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 00000000FD04: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 00000000FD08: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 00000000FD0C: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 00000000FD10: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 00000000FD14: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 00000000FD18: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 00000000FD1C: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 00000000FD20: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 00000000FD24: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 00000000FD28: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 00000000FD2C: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 00000000FD30: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 00000000FD34: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 00000000FD38: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 00000000FD3C: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 00000000FD40: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 00000000FD44: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 00000000FD48: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 00000000FD4C: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 00000000FD50: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 00000000FD54: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 00000000FD58: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 00000000FD5C: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 00000000FD60: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 00000000FD64: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 00000000FD68: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 00000000FD6C: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 00000000FD70: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 00000000FD74: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 00000000FD78: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000FD7C: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000FD80: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000FD84: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000FD8C: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000FD94: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000FD9C: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000FDA4: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000FDAC: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000FDB4: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000FDBC: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000FDC4: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000FDCC: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000FDD4: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000FDDC: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000FDE4: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000FDEC: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000FDF4: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000FDFC: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000FE04: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000FE0C: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000FE14: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000FE1C: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000FE24: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000FE2C: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000FE34: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000FE3C: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000FE44: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000FE4C: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000FE54: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000FE5C: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000FE64: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000FE6C: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000FE74: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000FE7C: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000FE84: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000FE88: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000FE8C: 7E000304
	v_mov_b32_e32 v1, v2                                       // 00000000FE90: 7E020302
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000FE94: 7E10B509
	v_mov_b32_e32 v2, v5                                       // 00000000FE98: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000FE9C: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000FEA0: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000FEA4: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000FEA8: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000FEAC: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000FEB0: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000FEB4: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000FEB8: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000FEBC: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000FEC0: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000FEC4: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000FEC8: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000FECC: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000FED0: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000FED4: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000FED8: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000FEDC: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000FEE0: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000FEE4: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000FEE8: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000FEEC: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000FEF0: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000FEF4: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000FEF8: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000FEFC: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000FF00: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000FF04: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000FF08: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000FF0C: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000FF10: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000FF14: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000FF18: 7E380320
	v_mov_b32_e32 v29, v30                                     // 00000000FF1C: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000FF20: 7E3C0321
	ds_write_b128 v158, v[0:3]                                 // 00000000FF24: D9BE0000 0000009E
	ds_write_b128 v160, v[4:7]                                 // 00000000FF2C: D9BE0000 000004A0
	ds_write_b128 v159, v[8:11]                                // 00000000FF34: D9BE0000 0000089F
	ds_write_b128 v157, v[12:15]                               // 00000000FF3C: D9BE0000 00000C9D
	ds_write_b128 v156, v[16:19]                               // 00000000FF44: D9BE0000 0000109C
	ds_write_b128 v155, v[20:23]                               // 00000000FF4C: D9BE0000 0000149B
	ds_write_b128 v154, v[24:27]                               // 00000000FF54: D9BE0000 0000189A
	ds_write_b128 v153, v[28:31]                               // 00000000FF5C: D9BE0000 00001C99
	ds_read_b128 v[8:11], v149                                 // 00000000FF64: D9FE0000 08000095
	ds_read_b128 v[12:15], v152 offset:1024                    // 00000000FF6C: D9FE0400 0C000098
	ds_read_b128 v[16:19], v151 offset:2048                    // 00000000FF74: D9FE0800 10000097
	ds_read_b128 v[20:23], v150 offset:3072                    // 00000000FF7C: D9FE0C00 14000096
	ds_read_b128 v[24:27], v149 offset:4096                    // 00000000FF84: D9FE1000 18000095
	ds_read_b128 v[28:31], v152 offset:5120                    // 00000000FF8C: D9FE1400 1C000098
	ds_read_b128 v[32:35], v151 offset:6144                    // 00000000FF94: D9FE1800 20000097
	ds_read_b128 v[36:39], v150 offset:7168                    // 00000000FF9C: D9FE1C00 24000096
	v_add_u32_e32 v0, s3, v147                                 // 00000000FFA4: 68012603
	v_mul_lo_u32 v0, s8, v0                                    // 00000000FFA8: D2850000 00020008
	v_add_u32_e32 v0, v0, v148                                 // 00000000FFB0: 68012900
	v_add_u32_e32 v1, s4, v0                                   // 00000000FFB4: 68020004
	v_add_u32_e32 v2, s4, v1                                   // 00000000FFB8: 68040204
	v_add_u32_e32 v3, s4, v2                                   // 00000000FFBC: 68060404
	v_add_u32_e32 v4, s4, v3                                   // 00000000FFC0: 68080604
	v_add_u32_e32 v5, s4, v4                                   // 00000000FFC4: 680A0804
	v_add_u32_e32 v6, s4, v5                                   // 00000000FFC8: 680C0A04
	v_add_u32_e32 v7, s4, v6                                   // 00000000FFCC: 680E0C04
	s_waitcnt lgkmcnt(7)                                       // 00000000FFD0: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[10:11]                 // 00000000FFD4: DC7C8000 000A0800
	s_waitcnt lgkmcnt(6)                                       // 00000000FFDC: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[10:11]                // 00000000FFE0: DC7C8000 000A0C01
	s_waitcnt lgkmcnt(5)                                       // 00000000FFE8: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[10:11]                // 00000000FFEC: DC7C8000 000A1002
	s_waitcnt lgkmcnt(4)                                       // 00000000FFF4: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[10:11]                // 00000000FFF8: DC7C8000 000A1403
	s_waitcnt lgkmcnt(3)                                       // 000000010000: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[10:11]                // 000000010004: DC7C8000 000A1804
	s_waitcnt lgkmcnt(2)                                       // 00000001000C: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[10:11]                // 000000010010: DC7C8000 000A1C05
	s_waitcnt lgkmcnt(1)                                       // 000000010018: BF8CC17F
	global_store_dwordx4 v6, v[32:35], s[10:11]                // 00000001001C: DC7C8000 000A2006
	s_waitcnt lgkmcnt(0)                                       // 000000010024: BF8CC07F
	global_store_dwordx4 v7, v[36:39], s[10:11]                // 000000010028: DC7C8000 000A2407
	v_add_f32_e32 v0, v178, v65                                // 000000010030: 020083B2
	v_add_f32_e32 v0, -4.0, v0                                 // 000000010034: 020000F7
	v_add_f32_e32 v0, -2.0, v0                                 // 000000010038: 020000F5
	v_mul_f32_e32 v0, 0x3f317218, v0                           // 00000001003C: 0A0000FF 3F317218
	v_add_u32_e32 v1, s3, v146                                 // 000000010044: 68032403
	v_lshlrev_b32_e32 v1, 2, v1                                // 000000010048: 24020282
	s_cmp_eq_u64 s[14:15], 0                                   // 00000001004C: BF12800E
	s_cbranch_scc1 2                                           // 000000010050: BF850002 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x565c>
	global_store_dword v1, v0, s[14:15]                        // 000000010054: DC708000 000E0001
	s_and_b64 s[0:1], s[0:1], exec                             // 00000001005C: 86807E00
	s_cbranch_scc0 1                                           // 000000010060: BF840001 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5668>
	s_barrier                                                  // 000000010064: BF8A0000
	s_waitcnt vmcnt(0)                                         // 000000010068: BF8C0F70
	s_endpgm                                                   // 00000001006C: BF810000
