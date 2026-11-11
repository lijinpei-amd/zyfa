
benchmarks/results/hip_native/isa_match/vector_fixes_20261111/owning/native.co:	file format elf64-amdgpu

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
	v_mad_u32_u24 v233, s8, v4, v8                             // 000000001BE0: D1C300E9 04220808
	v_or_b32_e32 v8, 0x200, v0                                 // 000000001BE8: 281000FF 00000200
	v_lshrrev_b32_e32 v9, 3, v8                                // 000000001BF0: 20121083
	v_lshrrev_b32_e32 v10, 5, v8                               // 000000001BF4: 20141085
	v_xor_b32_e32 v5, v5, v10                                  // 000000001BF8: 2A0A1505
	v_and_b32_e32 v5, 3, v5                                    // 000000001BFC: 260A0A83
	v_lshlrev_b32_e32 v5, 5, v5                                // 000000001C00: 240A0A85
	v_or_b32_e32 v5, v5, v7                                    // 000000001C04: 280A0F05
	v_mad_u32_u24 v234, s8, v9, v5                             // 000000001C08: D1C300EA 04161208
	v_lshrrev_b32_e32 v5, 7, v0                                // 000000001C10: 200A0087
	v_bfe_u32 v6, v0, 6, 1                                     // 000000001C14: D1C80006 02050D00
	v_bfe_u32 v7, v0, 2, 1                                     // 000000001C1C: D1C80007 02050500
	v_bfe_u32 v10, v0, 3, 3                                    // 000000001C24: D1C8000A 020D0700
	v_and_b32_e32 v9, 3, v0                                    // 000000001C2C: 26120083
	v_lshlrev_b32_e32 v11, 5, v5                               // 000000001C30: 24160A85
	v_lshlrev_b32_e32 v12, 4, v6                               // 000000001C34: 24180C84
	v_lshlrev_b32_e32 v13, 3, v7                               // 000000001C38: 241A0E83
	v_lshlrev_b32_e32 v14, 4, v10                              // 000000001C3C: 241C1484
	s_mov_b32 s3, 0                                            // 000000001C40: BE830080
	v_or_b32_e32 v15, v11, v12                                 // 000000001C44: 281E190B
	v_or_b32_e32 v15, v15, v13                                 // 000000001C48: 281E1B0F
	v_or_b32_e32 v15, v15, v9                                  // 000000001C4C: 281E130F
	v_mad_u32_u24 v235, s8, v15, v14                           // 000000001C50: D1C300EB 043A1E08
	v_or_b32_e32 v5, 4, v11                                    // 000000001C58: 280A1684
	v_or_b32_e32 v5, v5, v12                                   // 000000001C5C: 280A1905
	v_or_b32_e32 v5, v5, v13                                   // 000000001C60: 280A1B05
	v_or_b32_e32 v5, v5, v9                                    // 000000001C64: 280A1305
	v_mad_u32_u24 v236, s8, v5, v14                            // 000000001C68: D1C300EC 043A0A08
	s_cmp_ge_u32 s2, s51                                       // 000000001C70: BF093302
	s_cbranch_scc1 8925                                        // 000000001C74: BF8522DD <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8cec>
	s_lshr_b32 s1, s0, 6                                       // 000000001C78: 8F018600
	s_lshl_b32 s33, s8, 7                                      // 000000001C7C: 8E218708
	s_lshr_b32 s21, s0, 8                                      // 000000001C80: 8F158800
	s_bfe_u32 s20, s0, 0x20006                                 // 000000001C84: 9294FF00 00020006
	s_lshl_b32 s88, s1, 10                                     // 000000001C8C: 8E588A01
	s_cmp_eq_u32 s6, 0                                         // 000000001C90: BF068006
	s_cselect_b32 s16, s1, s20                                 // 000000001C94: 85101401
	s_cselect_b32 s6, 0, s21                                   // 000000001C98: 85061580
	s_lshl_b32 s0, s2, 5                                       // 000000001C9C: 8E008502
	s_load_dwordx8 s[68:75], s[46:47], s0 offset:0x0           // 000000001CA0: C00E5117 00000000
	s_mul_i32 s22, s6, s10                                     // 000000001CA8: 92160A06
	s_mul_i32 s30, s8, s13                                     // 000000001CAC: 921E0D08
	s_mov_b32 s31, 0x110000                                    // 000000001CB0: BE9F00FF 00110000
	v_writelane_b32 v255, s16, 0                               // 000000001CB8: D28A00FF 00010010
	s_waitcnt lgkmcnt(0)                                       // 000000001CC0: BF8CC07F
	s_add_u32 s0, s36, s70                                     // 000000001CC4: 80004624
	s_addc_u32 s1, s37, s71                                    // 000000001CC8: 82014725
	s_add_u32 s0, s0, s22                                      // 000000001CCC: 80001600
	s_addc_u32 s1, s1, 0                                       // 000000001CD0: 82018001
	s_add_u32 s28, s38, s72                                    // 000000001CD4: 801C4826
	s_addc_u32 s29, s39, s73                                   // 000000001CD8: 821D4927
	s_add_u32 s80, s40, s72                                    // 000000001CDC: 80504828
	s_addc_u32 s81, s41, s73                                   // 000000001CE0: 82514929
	s_not_b32 s3, s68                                          // 000000001CE4: BE830444
	s_add_u32 s3, s4, s3                                       // 000000001CE8: 80030304
	s_mul_i32 s10, s3, s5                                      // 000000001CEC: 920A0503
	s_lshl_b32 s3, s3, 5                                       // 000000001CF0: 8E038503
	s_lshr_b32 s18, s13, 7                                     // 000000001CF4: 8F12870D
	s_add_u32 s10, s10, s16                                    // 000000001CF8: 800A100A
	s_add_u32 s13, s3, 32                                      // 000000001CFC: 800DA003
	s_lshl_b32 s3, s10, 5                                      // 000000001D00: 8E03850A
	s_mul_i32 s10, s13, s5                                     // 000000001D04: 920A050D
	s_addk_i32 s10, 0x60                                       // 000000001D08: B70A0060
	s_lshr_b32 s10, s10, 7                                     // 000000001D0C: 8F0A870A
	v_or_b32_e32 v5, s3, v216                                  // 000000001D10: 280BB003
	v_writelane_b32 v255, s18, 1                               // 000000001D14: D28A00FF 00010212
	s_min_u32 s96, s18, s10                                    // 000000001D1C: 83E00A12
	s_mov_b32 s82, s30                                         // 000000001D20: BED2001E
	s_mov_b32 s83, s31                                         // 000000001D24: BED3001F
	v_mul_lo_u32 v5, v5, s7                                    // 000000001D28: D2850005 00000F05
	v_lshlrev_b32_e32 v6, 5, v1                                // 000000001D30: 240C0285
	v_add_u32_e32 v5, v6, v5                                   // 000000001D34: 680A0B06
	scratch_store_dword off, v6, off offset:36                 // 000000001D38: DC704024 007F0600
	global_load_dwordx4 v[220:223], v5, s[0:1]                 // 000000001D40: DC5C8000 DC000005
	global_load_dwordx4 v[224:227], v5, s[0:1] offset:16       // 000000001D48: DC5C8010 E0000005
	global_load_dwordx4 v[200:203], v5, s[0:1] offset:64       // 000000001D50: DC5C8040 C8000005
	global_load_dwordx4 v[204:207], v5, s[0:1] offset:80       // 000000001D58: DC5C8050 CC000005
	s_mov_b32 m0, s88                                          // 000000001D60: BEFC0058
	s_or_b32 s0, s88, 0x10000                                  // 000000001D64: 8700FF58 00010000
	buffer_load_dwordx4 v233, s[28:31], 0 offen lds            // 000000001D6C: E05D1000 800700E9
	s_or_b32 m0, s88, 0x2000                                   // 000000001D74: 877CFF58 00002000
	s_nop 0                                                    // 000000001D7C: BF800000
	buffer_load_dwordx4 v234, s[28:31], 0 offen lds            // 000000001D80: E05D1000 800700EA
	s_mov_b32 m0, s0                                           // 000000001D88: BEFC0000
	s_nop 0                                                    // 000000001D8C: BF800000
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 000000001D90: E05D1000 801400EB
	s_or_b32 m0, s88, 0x12000                                  // 000000001D98: 877CFF58 00012000
	s_cmp_lt_u32 s96, 2                                        // 000000001DA0: BF0A8260
	buffer_load_dwordx4 v236, s[80:83], 0 offen lds            // 000000001DA4: E05D1000 801400EC
	s_cbranch_scc1 10                                          // 000000001DAC: BF85000A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2d8>
	s_add_u32 m0, s0, 0xffff4000                               // 000000001DB0: 807CFF00 FFFF4000
	s_nop 0                                                    // 000000001DB8: BF800000
	buffer_load_dwordx4 v233, s[28:31], s33 offen lds          // 000000001DBC: E05D1000 210700E9
	s_add_u32 m0, s0, 0xffff6000                               // 000000001DC4: 807CFF00 FFFF6000
	s_nop 0                                                    // 000000001DCC: BF800000
	buffer_load_dwordx4 v234, s[28:31], s33 offen lds          // 000000001DD0: E05D1000 210700EA
	v_and_b32_e32 v5, 63, v0                                   // 000000001DD8: 260A00BF
	s_waitcnt vmcnt(0)                                         // 000000001DDC: BF8C0F70
	s_barrier                                                  // 000000001DE0: BF8A0000
	s_cmp_eq_u32 s21, 0                                        // 000000001DE4: BF068015
	s_mov_b32 s16, 0                                           // 000000001DE8: BE900080
	s_cbranch_scc1 1                                           // 000000001DEC: BF850001 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2f4>
	s_barrier                                                  // 000000001DF0: BF8A0000
	s_add_u32 s0, s42, s74                                     // 000000001DF4: 80004A2A
	s_mul_i32 s23, s6, s11                                     // 000000001DF8: 92170B06
	s_addc_u32 s1, s43, s75                                    // 000000001DFC: 82014B2B
	s_mul_i32 s10, s6, s12                                     // 000000001E00: 920A0C06
	s_add_u32 s0, s0, s23                                      // 000000001E04: 80001700
	s_addc_u32 s1, s1, 0                                       // 000000001E08: 82018001
	v_writelane_b32 v255, s10, 2                               // 000000001E0C: D28A00FF 0001040A
	s_add_u32 s10, s69, s10                                    // 000000001E14: 800A0A45
	v_mul_f32_e32 v238, s49, v3                                // 000000001E18: 0BDC0631
	v_mul_f32_e32 v239, s48, v3                                // 000000001E1C: 0BDE0630
	v_mov_b32_e32 v3, s17                                      // 000000001E20: 7E060211
	s_lshl_b32 s10, s10, 2                                     // 000000001E24: 8E0A820A
	v_mul_f32_e32 v241, s15, v3                                // 000000001E28: 0BE2060F
	s_add_u32 s15, s44, s10                                    // 000000001E2C: 800F0A2C
	s_addc_u32 s18, s45, 0                                     // 000000001E30: 8212802D
	s_cmp_eq_u64 s[44:45], 0                                   // 000000001E34: BF12802C
	s_cselect_b64 s[10:11], -1, 0                              // 000000001E38: 858A80C1
	v_writelane_b32 v255, s10, 3                               // 000000001E3C: D28A00FF 0001060A
	v_lshrrev_b32_e32 v217, 4, v5                              // 000000001E44: 21B20A84
	v_lshlrev_b32_e32 v6, 3, v0                                // 000000001E48: 240C0083
	v_writelane_b32 v255, s11, 4                               // 000000001E4C: D28A00FF 0001080B
	s_and_b64 s[10:11], s[10:11], exec                         // 000000001E54: 868A7E0A
	s_cselect_b32 s19, 0, s18                                  // 000000001E58: 85131280
	s_cselect_b32 s18, 0, s15                                  // 000000001E5C: 85120F80
	s_lshl_b32 s10, s8, 9                                      // 000000001E60: 8E0A8908
	s_lshr_b32 s79, s3, 7                                      // 000000001E64: 8F4F8703
	v_writelane_b32 v255, s10, 5                               // 000000001E68: D28A00FF 00010A0A
	s_lshl_b32 s10, s8, 8                                      // 000000001E70: 8E0A8808
	v_writelane_b32 v255, s10, 6                               // 000000001E74: D28A00FF 00010C0A
	s_add_u32 s10, s36, s22                                    // 000000001E7C: 800A1624
	v_writelane_b32 v255, s10, 7                               // 000000001E80: D28A00FF 00010E0A
	s_addc_u32 s10, s37, 0                                     // 000000001E88: 820A8025
	v_and_b32_e32 v7, 15, v0                                   // 000000001E8C: 260E008F
	v_lshl_or_b32 v0, v0, 1, v217                              // 000000001E90: D2000000 07650300
	v_writelane_b32 v255, s10, 8                               // 000000001E98: D28A00FF 0001100A
	s_add_u32 s10, s42, s23                                    // 000000001EA0: 800A172A
	v_and_b32_e32 v0, 0x41, v0                                 // 000000001EA4: 260000FF 00000041
	v_writelane_b32 v255, s10, 9                               // 000000001EAC: D28A00FF 0001120A
	s_addc_u32 s10, s43, 0                                     // 000000001EB4: 820A802B
	v_lshlrev_b32_e32 v245, 7, v0                              // 000000001EB8: 25EA0087
	s_cmp_eq_u32 s21, 0                                        // 000000001EBC: BF068015
	v_and_b32_e32 v244, 0x78, v6                               // 000000001EC0: 27E80CFF 00000078
	v_xor_b32_e32 v3, v1, v7                                   // 000000001EC8: 2A060F01
	v_or_b32_e32 v0, 0x1c000, v245                             // 000000001ECC: 2801EAFF 0001C000
	v_writelane_b32 v255, s10, 10                              // 000000001ED4: D28A00FF 0001140A
	s_cselect_b64 s[10:11], -1, 0                              // 000000001EDC: 858A80C1
	s_lshl_b32 s20, s20, 13                                    // 000000001EE0: 8E148D14
	s_mov_b32 s17, 0x20000                                     // 000000001EE4: BE9100FF 00020000
	v_lshlrev_b32_e32 v3, 4, v3                                // 000000001EEC: 24060684
	v_add_u32_e32 v249, v0, v244                               // 000000001EF0: 69F3E900
	v_lshl_or_b32 v0, v216, 8, s20                             // 000000001EF4: D2000000 005111D8
	v_xor_b32_e32 v2, v217, v2                                 // 000000001EFC: 2A0405D9
	v_or3_b32 v228, v0, v3, s17                                // 000000001F00: D20200E4 00460700
	v_and_b32_e32 v4, 4, v4                                    // 000000001F08: 26080884
	v_and_b32_e32 v2, 1, v2                                    // 000000001F0C: 26040481
	v_xor_b32_e32 v0, 0x60, v228                               // 000000001F10: 2A01C8FF 00000060
	v_sub_u32_e32 v243, v216, v4                               // 000000001F18: 6BE609D8
	v_xor_b32_e32 v4, v217, v7                                 // 000000001F1C: 2A080FD9
	v_cmp_eq_u32_e32 vcc, 0, v2                                // 000000001F20: 7D940480
	v_or_b32_e32 v2, 0x10000, v245                             // 000000001F24: 2805EAFF 00010000
	s_lshl_b32 s21, s8, 5                                      // 000000001F2C: 8E158508
	scratch_store_dword off, v0, off offset:56                 // 000000001F30: DC704038 007F0000
	v_xor_b32_e32 v0, 0x80, v228                               // 000000001F38: 2A01C8FF 00000080
	v_mov_b32_e32 v5, 0x38383838                               // 000000001F40: 7E0A02FF 38383838
	v_lshlrev_b32_e32 v6, 4, v7                                // 000000001F48: 240C0E84
	v_lshlrev_b32_e32 v4, 4, v4                                // 000000001F4C: 24080884
	v_add_u32_e32 v246, v2, v244                               // 000000001F50: 69EDE902
	v_writelane_b32 v255, s21, 11                              // 000000001F54: D28A00FF 00011615
	s_lshl_b32 s21, s8, 6                                      // 000000001F5C: 8E158608
	v_lshl_or_b32 v2, v217, 8, s20                             // 000000001F60: D2000002 005111D9
	scratch_store_dword off, v0, off offset:52                 // 000000001F68: DC704034 007F0000
	v_xor_b32_e32 v0, 0xa0, v228                               // 000000001F70: 2A01C8FF 000000A0
	scratch_store_dword off, v6, off offset:32                 // 000000001F78: DC704020 007F0600
	v_cndmask_b32_e32 v192, 0, v5, vcc                         // 000000001F80: 01800A80
	v_or_b32_e32 v5, 0x14000, v245                             // 000000001F84: 280BEAFF 00014000
	v_or_b32_e32 v6, 0x18000, v245                             // 000000001F8C: 280DEAFF 00018000
	v_writelane_b32 v255, s21, 12                              // 000000001F94: D28A00FF 00011815
	s_lshl_b32 s20, s8, 2                                      // 000000001F9C: 8E148208
	v_or3_b32 v219, v2, v4, s17                                // 000000001FA0: D20200DB 00460902
	scratch_store_dword off, v0, off offset:48                 // 000000001FA8: DC704030 007F0000
	v_xor_b32_e32 v0, 0xc0, v228                               // 000000001FB0: 2A01C8FF 000000C0
	s_mov_b32 s49, 0x1c000                                     // 000000001FB8: BEB100FF 0001C000
	s_mov_b32 s92, 0x10000                                     // 000000001FC0: BEDC00FF 00010000
	s_mov_b32 s93, 0x14000                                     // 000000001FC8: BEDD00FF 00014000
	s_mov_b32 s97, 0x18000                                     // 000000001FD0: BEE100FF 00018000
	s_mov_b32 s98, 0xc2fe0000                                  // 000000001FD8: BEE200FF C2FE0000
	s_mov_b32 s99, 0xc1000000                                  // 000000001FE0: BEE300FF C1000000
	v_mov_b32_e32 v240, 0xff800000                             // 000000001FE8: 7FE002FF FF800000
	s_movk_i32 s94, 0x2000                                     // 000000001FF0: B05E2000
	s_mov_b32 s95, 0x1a000                                     // 000000001FF4: BEDF00FF 0001A000
	v_mov_b32_e32 v242, 0x7f                                   // 000000001FFC: 7FE402FF 0000007F
	s_mov_b32 s48, 0x3e000000                                  // 000000002004: BEB000FF 3E000000
	s_movk_i32 s89, 0x4000                                     // 00000000200C: B0594000
	s_movk_i32 s90, 0x6000                                     // 000000002010: B05A6000
	s_mov_b32 s91, 0x1e000                                     // 000000002014: BEDB00FF 0001E000
	s_mov_b32 s34, 0x8000                                      // 00000000201C: BEA200FF 00008000
	s_mov_b32 s35, 0xa000                                      // 000000002024: BEA300FF 0000A000
	s_mov_b32 s12, 0x12000                                     // 00000000202C: BE8C00FF 00012000
	s_mov_b32 s13, 0xc000                                      // 000000002034: BE8D00FF 0000C000
	s_mov_b32 s6, 0xe000                                       // 00000000203C: BE8600FF 0000E000
	s_mov_b32 s76, 0x16000                                     // 000000002044: BECC00FF 00016000
	v_mov_b32_e32 v193, v192                                   // 00000000204C: 7F8203C0
	v_mov_b32_e32 v194, v192                                   // 000000002050: 7F8403C0
	v_mov_b32_e32 v195, v192                                   // 000000002054: 7F8603C0
	v_mov_b32_e32 v196, v192                                   // 000000002058: 7F8803C0
	v_mov_b32_e32 v197, v192                                   // 00000000205C: 7F8A03C0
	v_mov_b32_e32 v198, v192                                   // 000000002060: 7F8C03C0
	v_mov_b32_e32 v199, v192                                   // 000000002064: 7F8E03C0
	v_add_u32_e32 v247, v5, v244                               // 000000002068: 69EFE905
	v_add_u32_e32 v248, v6, v244                               // 00000000206C: 69F1E906
	s_lshl_b32 s15, s9, 2                                      // 000000002070: 8E0F8209
	v_writelane_b32 v255, s20, 13                              // 000000002074: D28A00FF 00011A14
	v_xor_b32_e32 v230, 32, v228                               // 00000000207C: 2BCDC8A0
	v_xor_b32_e32 v229, 64, v228                               // 000000002080: 2BCBC8C0
	scratch_store_dword off, v0, off offset:44                 // 000000002084: DC70402C 007F0000
	v_xor_b32_e32 v0, 0xe0, v228                               // 00000000208C: 2A01C8FF 000000E0
	v_xor_b32_e32 v218, 64, v219                               // 000000002094: 2BB5B6C0
	v_xor_b32_e32 v237, 0x80, v219                             // 000000002098: 2BDBB6FF 00000080
	v_xor_b32_e32 v254, 0xc0, v219                             // 0000000020A0: 2BFDB6FF 000000C0
	s_mov_b32 s52, 0xff800000                                  // 0000000020A8: BEB400FF FF800000
	scratch_store_dword off, v0, off offset:40                 // 0000000020B0: DC704028 007F0000
	s_mov_b32 s78, 0                                           // 0000000020B8: BECE0080
	s_mov_b32 s77, 0                                           // 0000000020BC: BECD0080
	s_mov_b32 s83, s31                                         // 0000000020C0: BED3001F
	s_mov_b32 s43, s31                                         // 0000000020C4: BEAB001F
	s_and_b32 s17, s78, 3                                      // 0000000020C8: 8611834E
	s_lshl_b32 s20, s17, 14                                    // 0000000020CC: 8E148E11
	v_or_b32_e32 v0, s20, v231                                 // 0000000020D0: 2801CE14
	s_waitcnt vmcnt(8)                                         // 0000000020D4: BF8C0F78
	ds_read_b128 v[10:13], v0                                  // 0000000020D8: D9FE0000 0A000000
	ds_read_b128 v[14:17], v0 offset:16                        // 0000000020E0: D9FE0010 0E000000
	ds_read_b128 v[2:5], v0 offset:4096                        // 0000000020E8: D9FE1000 02000000
	ds_read_b128 v[6:9], v0 offset:4112                        // 0000000020F0: D9FE1010 06000000
	s_mov_b64 s[36:37], s[18:19]                               // 0000000020F8: BEA40112
	s_cmp_eq_u32 s79, 0                                        // 0000000020FC: BF06804F
	s_cbranch_scc1 146                                         // 000000002100: BF850092 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x84c>
	s_setprio 1                                                // 000000002104: BF8F0001
	v_add_u32_e32 v0, s20, v231                                // 000000002108: 6801CE14
	ds_read_b128 v[18:21], v0 offset:8192                      // 00000000210C: D9FE2000 12000000
	ds_read_b128 v[22:25], v0 offset:8208                      // 000000002114: D9FE2010 16000000
	ds_read_b128 v[26:29], v0 offset:12288                     // 00000000211C: D9FE3000 1A000000
	ds_read_b128 v[30:33], v0 offset:12304                     // 000000002124: D9FE3010 1E000000
	s_waitcnt lgkmcnt(4)                                       // 00000000212C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[220:227], 0// 000000002130: D3AE0070 0203B90A
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[220:227], 0// 000000002138: D3AE0060 0203B902
	v_add_u32_e32 v0, s20, v232                                // 000000002140: 6801D014
	ds_read_b128 v[10:13], v0                                  // 000000002144: D9FE0000 0A000000
	ds_read_b128 v[14:17], v0 offset:16                        // 00000000214C: D9FE0010 0E000000
	ds_read_b128 v[2:5], v0 offset:4096                        // 000000002154: D9FE1000 02000000
	ds_read_b128 v[6:9], v0 offset:4112                        // 00000000215C: D9FE1010 06000000
	s_waitcnt lgkmcnt(4)                                       // 000000002164: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[220:227], 0// 000000002168: D3AE0050 0203B912
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[220:227], 0// 000000002170: D3AE0040 0203B91A
	ds_read_b128 v[18:21], v0 offset:8192                      // 000000002178: D9FE2000 12000000
	ds_read_b128 v[22:25], v0 offset:8208                      // 000000002180: D9FE2010 16000000
	ds_read_b128 v[26:29], v0 offset:12288                     // 000000002188: D9FE3000 1A000000
	ds_read_b128 v[30:33], v0 offset:12304                     // 000000002190: D9FE3010 1E000000
	s_waitcnt lgkmcnt(4)                                       // 000000002198: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[200:207], v[112:127]// 00000000219C: D3AE0070 05C3910A
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[200:207], v[96:111]// 0000000021A4: D3AE0060 05839102
	s_waitcnt lgkmcnt(0)                                       // 0000000021AC: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[200:207], v[80:95]// 0000000021B0: D3AE0050 05439112
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[200:207], v[64:79]// 0000000021B8: D3AE0040 0503911A
	s_nop 0                                                    // 0000000021C0: BF800000
	v_max_f32_e32 v0, v112, v113                               // 0000000021C4: 1600E370
	v_max3_f32 v0, v114, v115, v0                              // 0000000021C8: D1D30000 0402E772
	v_max3_f32 v0, v116, v117, v0                              // 0000000021D0: D1D30000 0402EB74
	v_max3_f32 v0, v118, v119, v0                              // 0000000021D8: D1D30000 0402EF76
	v_max3_f32 v0, v120, v121, v0                              // 0000000021E0: D1D30000 0402F378
	v_max3_f32 v0, v122, v123, v0                              // 0000000021E8: D1D30000 0402F77A
	v_max3_f32 v0, v124, v125, v0                              // 0000000021F0: D1D30000 0402FB7C
	v_max3_f32 v1, v126, v127, v0                              // 0000000021F8: D1D30001 0402FF7E
	v_max_f32_e32 v0, v96, v97                                 // 000000002200: 1600C360
	v_max3_f32 v0, v98, v99, v0                                // 000000002204: D1D30000 0402C762
	v_max3_f32 v0, v100, v101, v0                              // 00000000220C: D1D30000 0402CB64
	v_max3_f32 v0, v102, v103, v0                              // 000000002214: D1D30000 0402CF66
	v_max3_f32 v0, v104, v105, v0                              // 00000000221C: D1D30000 0402D368
	v_max3_f32 v0, v106, v107, v0                              // 000000002224: D1D30000 0402D76A
	v_max3_f32 v0, v108, v109, v0                              // 00000000222C: D1D30000 0402DB6C
	v_max3_f32 v2, v110, v111, v0                              // 000000002234: D1D30002 0402DF6E
	v_max_f32_e32 v0, v80, v81                                 // 00000000223C: 1600A350
	v_max3_f32 v0, v82, v83, v0                                // 000000002240: D1D30000 0402A752
	v_max3_f32 v0, v84, v85, v0                                // 000000002248: D1D30000 0402AB54
	v_max3_f32 v0, v86, v87, v0                                // 000000002250: D1D30000 0402AF56
	v_max3_f32 v0, v88, v89, v0                                // 000000002258: D1D30000 0402B358
	v_max3_f32 v0, v90, v91, v0                                // 000000002260: D1D30000 0402B75A
	v_max3_f32 v0, v92, v93, v0                                // 000000002268: D1D30000 0402BB5C
	v_max3_f32 v0, v94, v95, v0                                // 000000002270: D1D30000 0402BF5E
	v_max_f32_e32 v3, v64, v65                                 // 000000002278: 16068340
	v_max3_f32 v3, v66, v67, v3                                // 00000000227C: D1D30003 040E8742
	v_max3_f32 v3, v68, v69, v3                                // 000000002284: D1D30003 040E8B44
	v_max3_f32 v3, v70, v71, v3                                // 00000000228C: D1D30003 040E8F46
	v_max3_f32 v3, v72, v73, v3                                // 000000002294: D1D30003 040E9348
	v_max3_f32 v3, v74, v75, v3                                // 00000000229C: D1D30003 040E974A
	v_max3_f32 v3, v76, v77, v3                                // 0000000022A4: D1D30003 040E9B4C
	v_max3_f32 v3, v78, v79, v3                                // 0000000022AC: D1D30003 040E9F4E
	v_max_f32_e32 v0, v0, v3                                   // 0000000022B4: 16000700
	v_max_f32_e32 v2, v1, v2                                   // 0000000022B8: 16040501
	v_mov_b32_e32 v3, v2                                       // 0000000022BC: 7E060302
	s_nop 1                                                    // 0000000022C0: BF800001
	v_permlane32_swap_b32_e32 v2, v3                           // 0000000022C4: 7E04B503
	v_mov_b32_e32 v1, v0                                       // 0000000022C8: 7E020300
	s_nop 1                                                    // 0000000022CC: BF800001
	v_permlane32_swap_b32_e32 v0, v1                           // 0000000022D0: 7E00B501
	v_max_f32_e32 v0, v0, v1                                   // 0000000022D4: 16000300
	v_max_f32_e32 v1, v2, v3                                   // 0000000022D8: 16020702
	v_max_f32_e32 v2, v1, v0                                   // 0000000022DC: 16040101
	v_mul_f32_e32 v148, v238, v2                               // 0000000022E0: 0B2805EE
	v_fma_f32 v1, v1, v238, -v148                              // 0000000022E4: D1CB0001 8653DD01
	v_floor_f32_e32 v1, v1                                     // 0000000022EC: 7E023F01
	v_med3_f32 v1, v1, s98, 0                                  // 0000000022F0: D1D60001 0200C501
	v_cvt_i32_f32_e32 v2, v1                                   // 0000000022F8: 7E041101
	v_add_u32_e32 v251, 0x7f, v2                               // 0000000022FC: 69F604FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v251                           // 000000002304: 2535F697
	v_fma_f32 v0, v0, v238, -v148                              // 000000002308: D1CB0000 8653DD00
	v_floor_f32_e32 v0, v0                                     // 000000002310: 7E003F00
	v_med3_f32 v0, v0, s98, 0                                  // 000000002314: D1D60000 0200C500
	v_cvt_i32_f32_e32 v2, v0                                   // 00000000231C: 7E041100
	v_add_u32_e32 v149, 0x7f, v2                               // 000000002320: 692A04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v149                           // 000000002328: 25372A97
	v_mov_b32_e32 v2, s50                                      // 00000000232C: 7E040232
	v_fma_f32 v2, v148, s99, v2                                // 000000002330: D1CB0002 0408C794
	v_fma_f32 v152, v1, s99, v2                                // 000000002338: D1CB0098 0408C701
	v_fma_f32 v150, v0, s99, v2                                // 000000002340: D1CB0096 0408C700
	s_branch 526                                               // 000000002348: BF82020E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1084>
	s_setprio 1                                                // 00000000234C: BF8F0001
	v_add_u32_e32 v0, s20, v231                                // 000000002350: 6801CE14
	ds_read_b128 v[18:21], v0 offset:8192                      // 000000002354: D9FE2000 12000000
	ds_read_b128 v[22:25], v0 offset:8208                      // 00000000235C: D9FE2010 16000000
	ds_read_b128 v[26:29], v0 offset:12288                     // 000000002364: D9FE3000 1A000000
	ds_read_b128 v[30:33], v0 offset:12304                     // 00000000236C: D9FE3010 1E000000
	s_waitcnt lgkmcnt(4)                                       // 000000002374: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[220:227], 0// 000000002378: D3AE0070 0203B90A
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[220:227], 0// 000000002380: D3AE0060 0203B902
	v_add_u32_e32 v0, s20, v232                                // 000000002388: 6801D014
	ds_read_b128 v[10:13], v0                                  // 00000000238C: D9FE0000 0A000000
	ds_read_b128 v[14:17], v0 offset:16                        // 000000002394: D9FE0010 0E000000
	ds_read_b128 v[2:5], v0 offset:4096                        // 00000000239C: D9FE1000 02000000
	ds_read_b128 v[6:9], v0 offset:4112                        // 0000000023A4: D9FE1010 06000000
	s_waitcnt lgkmcnt(4)                                       // 0000000023AC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[220:227], 0// 0000000023B0: D3AE0050 0203B912
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[220:227], 0// 0000000023B8: D3AE0040 0203B91A
	ds_read_b128 v[18:21], v0 offset:8192                      // 0000000023C0: D9FE2000 12000000
	ds_read_b128 v[22:25], v0 offset:8208                      // 0000000023C8: D9FE2010 16000000
	ds_read_b128 v[26:29], v0 offset:12288                     // 0000000023D0: D9FE3000 1A000000
	ds_read_b128 v[30:33], v0 offset:12304                     // 0000000023D8: D9FE3010 1E000000
	s_waitcnt lgkmcnt(4)                                       // 0000000023E0: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[200:207], v[112:127]// 0000000023E4: D3AE0070 05C3910A
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[200:207], v[96:111]// 0000000023EC: D3AE0060 05839102
	s_waitcnt lgkmcnt(0)                                       // 0000000023F4: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[200:207], v[80:95]// 0000000023F8: D3AE0050 05439112
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[200:207], v[64:79]// 000000002400: D3AE0040 0503911A
	s_sub_u32 s18, s3, s16                                     // 000000002408: 80921003
	s_sub_i32 s18, s18, 0                                      // 00000000240C: 81928012
	s_cmp_ge_i32 s18, 32                                       // 000000002410: BF03A012
	s_cbranch_scc1 91                                          // 000000002414: BF85005B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa84>
	s_cmp_lt_i32 s18, 0                                        // 000000002418: BF048012
	s_cbranch_scc1 66                                          // 00000000241C: BF850042 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa28>
	v_add_u32_e32 v0, s18, v243                                // 000000002420: 6801E612
	v_cmp_gt_i32_e32 vcc, 0, v0                                // 000000002424: 7D880080
	s_nop 4                                                    // 000000002428: BF800004
	v_cndmask_b32_e64 v112, v112, v240, vcc                    // 00000000242C: D1000070 01ABE170
	v_cmp_gt_i32_e32 vcc, 1, v0                                // 000000002434: 7D880081
	s_nop 1                                                    // 000000002438: BF800001
	v_cndmask_b32_e64 v113, v113, v240, vcc                    // 00000000243C: D1000071 01ABE171
	v_cmp_gt_i32_e32 vcc, 2, v0                                // 000000002444: 7D880082
	s_nop 1                                                    // 000000002448: BF800001
	v_cndmask_b32_e64 v114, v114, v240, vcc                    // 00000000244C: D1000072 01ABE172
	v_cmp_gt_i32_e32 vcc, 3, v0                                // 000000002454: 7D880083
	s_nop 1                                                    // 000000002458: BF800001
	v_cndmask_b32_e64 v115, v115, v240, vcc                    // 00000000245C: D1000073 01ABE173
	v_cmp_gt_i32_e32 vcc, 8, v0                                // 000000002464: 7D880088
	s_nop 1                                                    // 000000002468: BF800001
	v_cndmask_b32_e64 v116, v116, v240, vcc                    // 00000000246C: D1000074 01ABE174
	v_cmp_gt_i32_e32 vcc, 9, v0                                // 000000002474: 7D880089
	s_nop 1                                                    // 000000002478: BF800001
	v_cndmask_b32_e64 v117, v117, v240, vcc                    // 00000000247C: D1000075 01ABE175
	v_cmp_gt_i32_e32 vcc, 10, v0                               // 000000002484: 7D88008A
	s_nop 1                                                    // 000000002488: BF800001
	v_cndmask_b32_e64 v118, v118, v240, vcc                    // 00000000248C: D1000076 01ABE176
	v_cmp_gt_i32_e32 vcc, 11, v0                               // 000000002494: 7D88008B
	s_nop 1                                                    // 000000002498: BF800001
	v_cndmask_b32_e64 v119, v119, v240, vcc                    // 00000000249C: D1000077 01ABE177
	v_cmp_gt_i32_e32 vcc, 16, v0                               // 0000000024A4: 7D880090
	s_nop 1                                                    // 0000000024A8: BF800001
	v_cndmask_b32_e64 v120, v120, v240, vcc                    // 0000000024AC: D1000078 01ABE178
	v_cmp_gt_i32_e32 vcc, 17, v0                               // 0000000024B4: 7D880091
	s_nop 1                                                    // 0000000024B8: BF800001
	v_cndmask_b32_e64 v121, v121, v240, vcc                    // 0000000024BC: D1000079 01ABE179
	v_cmp_gt_i32_e32 vcc, 18, v0                               // 0000000024C4: 7D880092
	s_nop 1                                                    // 0000000024C8: BF800001
	v_cndmask_b32_e64 v122, v122, v240, vcc                    // 0000000024CC: D100007A 01ABE17A
	v_cmp_gt_i32_e32 vcc, 19, v0                               // 0000000024D4: 7D880093
	s_nop 1                                                    // 0000000024D8: BF800001
	v_cndmask_b32_e64 v123, v123, v240, vcc                    // 0000000024DC: D100007B 01ABE17B
	v_cmp_gt_i32_e32 vcc, 24, v0                               // 0000000024E4: 7D880098
	s_nop 1                                                    // 0000000024E8: BF800001
	v_cndmask_b32_e64 v124, v124, v240, vcc                    // 0000000024EC: D100007C 01ABE17C
	v_cmp_gt_i32_e32 vcc, 25, v0                               // 0000000024F4: 7D880099
	s_nop 1                                                    // 0000000024F8: BF800001
	v_cndmask_b32_e64 v125, v125, v240, vcc                    // 0000000024FC: D100007D 01ABE17D
	v_cmp_gt_i32_e32 vcc, 26, v0                               // 000000002504: 7D88009A
	s_nop 1                                                    // 000000002508: BF800001
	v_cndmask_b32_e64 v126, v126, v240, vcc                    // 00000000250C: D100007E 01ABE17E
	v_cmp_gt_i32_e32 vcc, 27, v0                               // 000000002514: 7D88009B
	s_nop 1                                                    // 000000002518: BF800001
	v_cndmask_b32_e64 v127, v127, v240, vcc                    // 00000000251C: D100007F 01ABE17F
	s_branch 23                                                // 000000002524: BF820017 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa84>
	s_mov_b32 s53, s52                                         // 000000002528: BEB50034
	s_mov_b32 s54, s52                                         // 00000000252C: BEB60034
	s_mov_b32 s55, s52                                         // 000000002530: BEB70034
	s_mov_b32 s56, s52                                         // 000000002534: BEB80034
	s_mov_b32 s57, s52                                         // 000000002538: BEB90034
	s_mov_b32 s58, s52                                         // 00000000253C: BEBA0034
	s_mov_b32 s59, s52                                         // 000000002540: BEBB0034
	s_mov_b32 s60, s52                                         // 000000002544: BEBC0034
	s_mov_b32 s61, s52                                         // 000000002548: BEBD0034
	s_mov_b32 s62, s52                                         // 00000000254C: BEBE0034
	s_mov_b32 s63, s52                                         // 000000002550: BEBF0034
	s_mov_b32 s64, s52                                         // 000000002554: BEC00034
	s_mov_b32 s65, s52                                         // 000000002558: BEC10034
	s_mov_b32 s66, s52                                         // 00000000255C: BEC20034
	s_mov_b32 s67, s52                                         // 000000002560: BEC30034
	v_mov_b64_e32 v[126:127], s[66:67]                         // 000000002564: 7EFC7042
	v_mov_b64_e32 v[124:125], s[64:65]                         // 000000002568: 7EF87040
	v_mov_b64_e32 v[122:123], s[62:63]                         // 00000000256C: 7EF4703E
	v_mov_b64_e32 v[120:121], s[60:61]                         // 000000002570: 7EF0703C
	v_mov_b64_e32 v[118:119], s[58:59]                         // 000000002574: 7EEC703A
	v_mov_b64_e32 v[116:117], s[56:57]                         // 000000002578: 7EE87038
	v_mov_b64_e32 v[114:115], s[54:55]                         // 00000000257C: 7EE47036
	v_mov_b64_e32 v[112:113], s[52:53]                         // 000000002580: 7EE07034
	s_sub_u32 s18, s3, s16                                     // 000000002584: 80921003
	s_sub_i32 s18, s18, 32                                     // 000000002588: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 00000000258C: BF03A012
	s_cbranch_scc1 91                                          // 000000002590: BF85005B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc00>
	s_cmp_lt_i32 s18, 0                                        // 000000002594: BF048012
	s_cbranch_scc1 66                                          // 000000002598: BF850042 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xba4>
	v_add_u32_e32 v0, s18, v243                                // 00000000259C: 6801E612
	v_cmp_gt_i32_e32 vcc, 0, v0                                // 0000000025A0: 7D880080
	s_nop 3                                                    // 0000000025A4: BF800003
	v_cndmask_b32_e64 v96, v96, v240, vcc                      // 0000000025A8: D1000060 01ABE160
	v_cmp_gt_i32_e32 vcc, 1, v0                                // 0000000025B0: 7D880081
	s_nop 1                                                    // 0000000025B4: BF800001
	v_cndmask_b32_e64 v97, v97, v240, vcc                      // 0000000025B8: D1000061 01ABE161
	v_cmp_gt_i32_e32 vcc, 2, v0                                // 0000000025C0: 7D880082
	s_nop 1                                                    // 0000000025C4: BF800001
	v_cndmask_b32_e64 v98, v98, v240, vcc                      // 0000000025C8: D1000062 01ABE162
	v_cmp_gt_i32_e32 vcc, 3, v0                                // 0000000025D0: 7D880083
	s_nop 1                                                    // 0000000025D4: BF800001
	v_cndmask_b32_e64 v99, v99, v240, vcc                      // 0000000025D8: D1000063 01ABE163
	v_cmp_gt_i32_e32 vcc, 8, v0                                // 0000000025E0: 7D880088
	s_nop 1                                                    // 0000000025E4: BF800001
	v_cndmask_b32_e64 v100, v100, v240, vcc                    // 0000000025E8: D1000064 01ABE164
	v_cmp_gt_i32_e32 vcc, 9, v0                                // 0000000025F0: 7D880089
	s_nop 1                                                    // 0000000025F4: BF800001
	v_cndmask_b32_e64 v101, v101, v240, vcc                    // 0000000025F8: D1000065 01ABE165
	v_cmp_gt_i32_e32 vcc, 10, v0                               // 000000002600: 7D88008A
	s_nop 1                                                    // 000000002604: BF800001
	v_cndmask_b32_e64 v102, v102, v240, vcc                    // 000000002608: D1000066 01ABE166
	v_cmp_gt_i32_e32 vcc, 11, v0                               // 000000002610: 7D88008B
	s_nop 1                                                    // 000000002614: BF800001
	v_cndmask_b32_e64 v103, v103, v240, vcc                    // 000000002618: D1000067 01ABE167
	v_cmp_gt_i32_e32 vcc, 16, v0                               // 000000002620: 7D880090
	s_nop 1                                                    // 000000002624: BF800001
	v_cndmask_b32_e64 v104, v104, v240, vcc                    // 000000002628: D1000068 01ABE168
	v_cmp_gt_i32_e32 vcc, 17, v0                               // 000000002630: 7D880091
	s_nop 1                                                    // 000000002634: BF800001
	v_cndmask_b32_e64 v105, v105, v240, vcc                    // 000000002638: D1000069 01ABE169
	v_cmp_gt_i32_e32 vcc, 18, v0                               // 000000002640: 7D880092
	s_nop 1                                                    // 000000002644: BF800001
	v_cndmask_b32_e64 v106, v106, v240, vcc                    // 000000002648: D100006A 01ABE16A
	v_cmp_gt_i32_e32 vcc, 19, v0                               // 000000002650: 7D880093
	s_nop 1                                                    // 000000002654: BF800001
	v_cndmask_b32_e64 v107, v107, v240, vcc                    // 000000002658: D100006B 01ABE16B
	v_cmp_gt_i32_e32 vcc, 24, v0                               // 000000002660: 7D880098
	s_nop 1                                                    // 000000002664: BF800001
	v_cndmask_b32_e64 v108, v108, v240, vcc                    // 000000002668: D100006C 01ABE16C
	v_cmp_gt_i32_e32 vcc, 25, v0                               // 000000002670: 7D880099
	s_nop 1                                                    // 000000002674: BF800001
	v_cndmask_b32_e64 v109, v109, v240, vcc                    // 000000002678: D100006D 01ABE16D
	v_cmp_gt_i32_e32 vcc, 26, v0                               // 000000002680: 7D88009A
	s_nop 1                                                    // 000000002684: BF800001
	v_cndmask_b32_e64 v110, v110, v240, vcc                    // 000000002688: D100006E 01ABE16E
	v_cmp_gt_i32_e32 vcc, 27, v0                               // 000000002690: 7D88009B
	s_nop 1                                                    // 000000002694: BF800001
	v_cndmask_b32_e64 v111, v111, v240, vcc                    // 000000002698: D100006F 01ABE16F
	s_branch 23                                                // 0000000026A0: BF820017 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc00>
	s_mov_b32 s53, s52                                         // 0000000026A4: BEB50034
	s_mov_b32 s54, s52                                         // 0000000026A8: BEB60034
	s_mov_b32 s55, s52                                         // 0000000026AC: BEB70034
	s_mov_b32 s56, s52                                         // 0000000026B0: BEB80034
	s_mov_b32 s57, s52                                         // 0000000026B4: BEB90034
	s_mov_b32 s58, s52                                         // 0000000026B8: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000026BC: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000026C0: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000026C4: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000026C8: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000026CC: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000026D0: BEC00034
	s_mov_b32 s65, s52                                         // 0000000026D4: BEC10034
	s_mov_b32 s66, s52                                         // 0000000026D8: BEC20034
	s_mov_b32 s67, s52                                         // 0000000026DC: BEC30034
	v_mov_b64_e32 v[110:111], s[66:67]                         // 0000000026E0: 7EDC7042
	v_mov_b64_e32 v[108:109], s[64:65]                         // 0000000026E4: 7ED87040
	v_mov_b64_e32 v[106:107], s[62:63]                         // 0000000026E8: 7ED4703E
	v_mov_b64_e32 v[104:105], s[60:61]                         // 0000000026EC: 7ED0703C
	v_mov_b64_e32 v[102:103], s[58:59]                         // 0000000026F0: 7ECC703A
	v_mov_b64_e32 v[100:101], s[56:57]                         // 0000000026F4: 7EC87038
	v_mov_b64_e32 v[98:99], s[54:55]                           // 0000000026F8: 7EC47036
	v_mov_b64_e32 v[96:97], s[52:53]                           // 0000000026FC: 7EC07034
	s_sub_u32 s18, s3, s16                                     // 000000002700: 80921003
	s_sub_i32 s18, s18, 64                                     // 000000002704: 8192C012
	s_cmp_ge_i32 s18, 32                                       // 000000002708: BF03A012
	s_cbranch_scc1 92                                          // 00000000270C: BF85005C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd80>
	s_cmp_lt_i32 s18, 0                                        // 000000002710: BF048012
	s_cbranch_scc1 66                                          // 000000002714: BF850042 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd20>
	v_add_u32_e32 v0, s18, v243                                // 000000002718: 6801E612
	v_cmp_gt_i32_e32 vcc, 0, v0                                // 00000000271C: 7D880080
	s_nop 3                                                    // 000000002720: BF800003
	v_cndmask_b32_e64 v80, v80, v240, vcc                      // 000000002724: D1000050 01ABE150
	v_cmp_gt_i32_e32 vcc, 1, v0                                // 00000000272C: 7D880081
	s_nop 1                                                    // 000000002730: BF800001
	v_cndmask_b32_e64 v81, v81, v240, vcc                      // 000000002734: D1000051 01ABE151
	v_cmp_gt_i32_e32 vcc, 2, v0                                // 00000000273C: 7D880082
	s_nop 1                                                    // 000000002740: BF800001
	v_cndmask_b32_e64 v82, v82, v240, vcc                      // 000000002744: D1000052 01ABE152
	v_cmp_gt_i32_e32 vcc, 3, v0                                // 00000000274C: 7D880083
	s_nop 1                                                    // 000000002750: BF800001
	v_cndmask_b32_e64 v83, v83, v240, vcc                      // 000000002754: D1000053 01ABE153
	v_cmp_gt_i32_e32 vcc, 8, v0                                // 00000000275C: 7D880088
	s_nop 1                                                    // 000000002760: BF800001
	v_cndmask_b32_e64 v84, v84, v240, vcc                      // 000000002764: D1000054 01ABE154
	v_cmp_gt_i32_e32 vcc, 9, v0                                // 00000000276C: 7D880089
	s_nop 1                                                    // 000000002770: BF800001
	v_cndmask_b32_e64 v85, v85, v240, vcc                      // 000000002774: D1000055 01ABE155
	v_cmp_gt_i32_e32 vcc, 10, v0                               // 00000000277C: 7D88008A
	s_nop 1                                                    // 000000002780: BF800001
	v_cndmask_b32_e64 v86, v86, v240, vcc                      // 000000002784: D1000056 01ABE156
	v_cmp_gt_i32_e32 vcc, 11, v0                               // 00000000278C: 7D88008B
	s_nop 1                                                    // 000000002790: BF800001
	v_cndmask_b32_e64 v87, v87, v240, vcc                      // 000000002794: D1000057 01ABE157
	v_cmp_gt_i32_e32 vcc, 16, v0                               // 00000000279C: 7D880090
	s_nop 1                                                    // 0000000027A0: BF800001
	v_cndmask_b32_e64 v88, v88, v240, vcc                      // 0000000027A4: D1000058 01ABE158
	v_cmp_gt_i32_e32 vcc, 17, v0                               // 0000000027AC: 7D880091
	s_nop 1                                                    // 0000000027B0: BF800001
	v_cndmask_b32_e64 v89, v89, v240, vcc                      // 0000000027B4: D1000059 01ABE159
	v_cmp_gt_i32_e32 vcc, 18, v0                               // 0000000027BC: 7D880092
	s_nop 1                                                    // 0000000027C0: BF800001
	v_cndmask_b32_e64 v90, v90, v240, vcc                      // 0000000027C4: D100005A 01ABE15A
	v_cmp_gt_i32_e32 vcc, 19, v0                               // 0000000027CC: 7D880093
	s_nop 1                                                    // 0000000027D0: BF800001
	v_cndmask_b32_e64 v91, v91, v240, vcc                      // 0000000027D4: D100005B 01ABE15B
	v_cmp_gt_i32_e32 vcc, 24, v0                               // 0000000027DC: 7D880098
	s_nop 1                                                    // 0000000027E0: BF800001
	v_cndmask_b32_e64 v92, v92, v240, vcc                      // 0000000027E4: D100005C 01ABE15C
	v_cmp_gt_i32_e32 vcc, 25, v0                               // 0000000027EC: 7D880099
	s_nop 1                                                    // 0000000027F0: BF800001
	v_cndmask_b32_e64 v93, v93, v240, vcc                      // 0000000027F4: D100005D 01ABE15D
	v_cmp_gt_i32_e32 vcc, 26, v0                               // 0000000027FC: 7D88009A
	s_nop 1                                                    // 000000002800: BF800001
	v_cndmask_b32_e64 v94, v94, v240, vcc                      // 000000002804: D100005E 01ABE15E
	v_cmp_gt_i32_e32 vcc, 27, v0                               // 00000000280C: 7D88009B
	s_nop 1                                                    // 000000002810: BF800001
	v_cndmask_b32_e64 v95, v95, v240, vcc                      // 000000002814: D100005F 01ABE15F
	s_branch 24                                                // 00000000281C: BF820018 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd80>
	s_mov_b32 s53, s52                                         // 000000002820: BEB50034
	s_mov_b32 s54, s52                                         // 000000002824: BEB60034
	s_mov_b32 s55, s52                                         // 000000002828: BEB70034
	s_mov_b32 s56, s52                                         // 00000000282C: BEB80034
	s_mov_b32 s57, s52                                         // 000000002830: BEB90034
	s_mov_b32 s58, s52                                         // 000000002834: BEBA0034
	s_mov_b32 s59, s52                                         // 000000002838: BEBB0034
	s_mov_b32 s60, s52                                         // 00000000283C: BEBC0034
	s_mov_b32 s61, s52                                         // 000000002840: BEBD0034
	s_mov_b32 s62, s52                                         // 000000002844: BEBE0034
	s_mov_b32 s63, s52                                         // 000000002848: BEBF0034
	s_mov_b32 s64, s52                                         // 00000000284C: BEC00034
	s_mov_b32 s65, s52                                         // 000000002850: BEC10034
	s_mov_b32 s66, s52                                         // 000000002854: BEC20034
	s_mov_b32 s67, s52                                         // 000000002858: BEC30034
	v_mov_b64_e32 v[94:95], s[66:67]                           // 00000000285C: 7EBC7042
	v_mov_b64_e32 v[92:93], s[64:65]                           // 000000002860: 7EB87040
	v_mov_b64_e32 v[90:91], s[62:63]                           // 000000002864: 7EB4703E
	v_mov_b64_e32 v[88:89], s[60:61]                           // 000000002868: 7EB0703C
	v_mov_b64_e32 v[86:87], s[58:59]                           // 00000000286C: 7EAC703A
	v_mov_b64_e32 v[84:85], s[56:57]                           // 000000002870: 7EA87038
	v_mov_b64_e32 v[82:83], s[54:55]                           // 000000002874: 7EA47036
	v_mov_b64_e32 v[80:81], s[52:53]                           // 000000002878: 7EA07034
	s_nop 0                                                    // 00000000287C: BF800000
	s_sub_u32 s18, s3, s16                                     // 000000002880: 80921003
	s_sub_i32 s18, s18, 0x60                                   // 000000002884: 8192FF12 00000060
	s_cmp_ge_i32 s18, 32                                       // 00000000288C: BF03A012
	s_cbranch_scc1 91                                          // 000000002890: BF85005B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf00>
	s_cmp_lt_i32 s18, 0                                        // 000000002894: BF048012
	s_cbranch_scc1 66                                          // 000000002898: BF850042 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xea4>
	v_add_u32_e32 v0, s18, v243                                // 00000000289C: 6801E612
	v_cmp_gt_i32_e32 vcc, 0, v0                                // 0000000028A0: 7D880080
	s_nop 7                                                    // 0000000028A4: BF800007
	v_cndmask_b32_e64 v64, v64, v240, vcc                      // 0000000028A8: D1000040 01ABE140
	v_cmp_gt_i32_e32 vcc, 1, v0                                // 0000000028B0: 7D880081
	s_nop 1                                                    // 0000000028B4: BF800001
	v_cndmask_b32_e64 v65, v65, v240, vcc                      // 0000000028B8: D1000041 01ABE141
	v_cmp_gt_i32_e32 vcc, 2, v0                                // 0000000028C0: 7D880082
	s_nop 1                                                    // 0000000028C4: BF800001
	v_cndmask_b32_e64 v66, v66, v240, vcc                      // 0000000028C8: D1000042 01ABE142
	v_cmp_gt_i32_e32 vcc, 3, v0                                // 0000000028D0: 7D880083
	s_nop 1                                                    // 0000000028D4: BF800001
	v_cndmask_b32_e64 v67, v67, v240, vcc                      // 0000000028D8: D1000043 01ABE143
	v_cmp_gt_i32_e32 vcc, 8, v0                                // 0000000028E0: 7D880088
	s_nop 1                                                    // 0000000028E4: BF800001
	v_cndmask_b32_e64 v68, v68, v240, vcc                      // 0000000028E8: D1000044 01ABE144
	v_cmp_gt_i32_e32 vcc, 9, v0                                // 0000000028F0: 7D880089
	s_nop 1                                                    // 0000000028F4: BF800001
	v_cndmask_b32_e64 v69, v69, v240, vcc                      // 0000000028F8: D1000045 01ABE145
	v_cmp_gt_i32_e32 vcc, 10, v0                               // 000000002900: 7D88008A
	s_nop 1                                                    // 000000002904: BF800001
	v_cndmask_b32_e64 v70, v70, v240, vcc                      // 000000002908: D1000046 01ABE146
	v_cmp_gt_i32_e32 vcc, 11, v0                               // 000000002910: 7D88008B
	s_nop 1                                                    // 000000002914: BF800001
	v_cndmask_b32_e64 v71, v71, v240, vcc                      // 000000002918: D1000047 01ABE147
	v_cmp_gt_i32_e32 vcc, 16, v0                               // 000000002920: 7D880090
	s_nop 1                                                    // 000000002924: BF800001
	v_cndmask_b32_e64 v72, v72, v240, vcc                      // 000000002928: D1000048 01ABE148
	v_cmp_gt_i32_e32 vcc, 17, v0                               // 000000002930: 7D880091
	s_nop 1                                                    // 000000002934: BF800001
	v_cndmask_b32_e64 v73, v73, v240, vcc                      // 000000002938: D1000049 01ABE149
	v_cmp_gt_i32_e32 vcc, 18, v0                               // 000000002940: 7D880092
	s_nop 1                                                    // 000000002944: BF800001
	v_cndmask_b32_e64 v74, v74, v240, vcc                      // 000000002948: D100004A 01ABE14A
	v_cmp_gt_i32_e32 vcc, 19, v0                               // 000000002950: 7D880093
	s_nop 1                                                    // 000000002954: BF800001
	v_cndmask_b32_e64 v75, v75, v240, vcc                      // 000000002958: D100004B 01ABE14B
	v_cmp_gt_i32_e32 vcc, 24, v0                               // 000000002960: 7D880098
	s_nop 1                                                    // 000000002964: BF800001
	v_cndmask_b32_e64 v76, v76, v240, vcc                      // 000000002968: D100004C 01ABE14C
	v_cmp_gt_i32_e32 vcc, 25, v0                               // 000000002970: 7D880099
	s_nop 1                                                    // 000000002974: BF800001
	v_cndmask_b32_e64 v77, v77, v240, vcc                      // 000000002978: D100004D 01ABE14D
	v_cmp_gt_i32_e32 vcc, 26, v0                               // 000000002980: 7D88009A
	s_nop 1                                                    // 000000002984: BF800001
	v_cndmask_b32_e64 v78, v78, v240, vcc                      // 000000002988: D100004E 01ABE14E
	v_cmp_gt_i32_e32 vcc, 27, v0                               // 000000002990: 7D88009B
	s_nop 1                                                    // 000000002994: BF800001
	v_cndmask_b32_e64 v79, v79, v240, vcc                      // 000000002998: D100004F 01ABE14F
	s_branch 23                                                // 0000000029A0: BF820017 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf00>
	s_mov_b32 s53, s52                                         // 0000000029A4: BEB50034
	s_mov_b32 s54, s52                                         // 0000000029A8: BEB60034
	s_mov_b32 s55, s52                                         // 0000000029AC: BEB70034
	s_mov_b32 s56, s52                                         // 0000000029B0: BEB80034
	s_mov_b32 s57, s52                                         // 0000000029B4: BEB90034
	s_mov_b32 s58, s52                                         // 0000000029B8: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000029BC: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000029C0: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000029C4: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000029C8: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000029CC: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000029D0: BEC00034
	s_mov_b32 s65, s52                                         // 0000000029D4: BEC10034
	s_mov_b32 s66, s52                                         // 0000000029D8: BEC20034
	s_mov_b32 s67, s52                                         // 0000000029DC: BEC30034
	v_mov_b64_e32 v[78:79], s[66:67]                           // 0000000029E0: 7E9C7042
	v_mov_b64_e32 v[76:77], s[64:65]                           // 0000000029E4: 7E987040
	v_mov_b64_e32 v[74:75], s[62:63]                           // 0000000029E8: 7E94703E
	v_mov_b64_e32 v[72:73], s[60:61]                           // 0000000029EC: 7E90703C
	v_mov_b64_e32 v[70:71], s[58:59]                           // 0000000029F0: 7E8C703A
	v_mov_b64_e32 v[68:69], s[56:57]                           // 0000000029F4: 7E887038
	v_mov_b64_e32 v[66:67], s[54:55]                           // 0000000029F8: 7E847036
	v_mov_b64_e32 v[64:65], s[52:53]                           // 0000000029FC: 7E807034
	v_max_f32_e32 v0, v112, v113                               // 000000002A00: 1600E370
	v_max3_f32 v0, v114, v115, v0                              // 000000002A04: D1D30000 0402E772
	v_max3_f32 v0, v116, v117, v0                              // 000000002A0C: D1D30000 0402EB74
	v_max3_f32 v0, v118, v119, v0                              // 000000002A14: D1D30000 0402EF76
	v_max3_f32 v0, v120, v121, v0                              // 000000002A1C: D1D30000 0402F378
	v_max3_f32 v0, v122, v123, v0                              // 000000002A24: D1D30000 0402F77A
	v_max3_f32 v0, v124, v125, v0                              // 000000002A2C: D1D30000 0402FB7C
	v_max3_f32 v1, v126, v127, v0                              // 000000002A34: D1D30001 0402FF7E
	v_max_f32_e32 v0, v96, v97                                 // 000000002A3C: 1600C360
	v_max3_f32 v0, v98, v99, v0                                // 000000002A40: D1D30000 0402C762
	v_max3_f32 v0, v100, v101, v0                              // 000000002A48: D1D30000 0402CB64
	v_max3_f32 v0, v102, v103, v0                              // 000000002A50: D1D30000 0402CF66
	v_max3_f32 v0, v104, v105, v0                              // 000000002A58: D1D30000 0402D368
	v_max3_f32 v0, v106, v107, v0                              // 000000002A60: D1D30000 0402D76A
	v_max3_f32 v0, v108, v109, v0                              // 000000002A68: D1D30000 0402DB6C
	v_max3_f32 v2, v110, v111, v0                              // 000000002A70: D1D30002 0402DF6E
	v_max_f32_e32 v0, v80, v81                                 // 000000002A78: 1600A350
	v_max3_f32 v0, v82, v83, v0                                // 000000002A7C: D1D30000 0402A752
	v_max3_f32 v0, v84, v85, v0                                // 000000002A84: D1D30000 0402AB54
	v_max3_f32 v0, v86, v87, v0                                // 000000002A8C: D1D30000 0402AF56
	v_max3_f32 v0, v88, v89, v0                                // 000000002A94: D1D30000 0402B358
	v_max3_f32 v0, v90, v91, v0                                // 000000002A9C: D1D30000 0402B75A
	v_max3_f32 v0, v92, v93, v0                                // 000000002AA4: D1D30000 0402BB5C
	v_max3_f32 v0, v94, v95, v0                                // 000000002AAC: D1D30000 0402BF5E
	v_max_f32_e32 v3, v64, v65                                 // 000000002AB4: 16068340
	v_max3_f32 v3, v66, v67, v3                                // 000000002AB8: D1D30003 040E8742
	v_max3_f32 v3, v68, v69, v3                                // 000000002AC0: D1D30003 040E8B44
	v_max3_f32 v3, v70, v71, v3                                // 000000002AC8: D1D30003 040E8F46
	v_max3_f32 v3, v72, v73, v3                                // 000000002AD0: D1D30003 040E9348
	v_max3_f32 v3, v74, v75, v3                                // 000000002AD8: D1D30003 040E974A
	v_max3_f32 v3, v76, v77, v3                                // 000000002AE0: D1D30003 040E9B4C
	v_max3_f32 v3, v78, v79, v3                                // 000000002AE8: D1D30003 040E9F4E
	v_max_f32_e32 v0, v0, v3                                   // 000000002AF0: 16000700
	v_max_f32_e32 v2, v1, v2                                   // 000000002AF4: 16040501
	v_mov_b32_e32 v3, v2                                       // 000000002AF8: 7E060302
	s_nop 1                                                    // 000000002AFC: BF800001
	v_permlane32_swap_b32_e32 v2, v3                           // 000000002B00: 7E04B503
	v_mov_b32_e32 v1, v0                                       // 000000002B04: 7E020300
	s_nop 1                                                    // 000000002B08: BF800001
	v_permlane32_swap_b32_e32 v0, v1                           // 000000002B0C: 7E00B501
	v_max_f32_e32 v0, v0, v1                                   // 000000002B10: 16000300
	v_max_f32_e32 v1, v2, v3                                   // 000000002B14: 16020702
	v_max_f32_e32 v2, v1, v0                                   // 000000002B18: 16040101
	v_mul_f32_e32 v148, v238, v2                               // 000000002B1C: 0B2805EE
	v_fma_f32 v1, v1, v238, -v148                              // 000000002B20: D1CB0001 8653DD01
	v_floor_f32_e32 v1, v1                                     // 000000002B28: 7E023F01
	v_med3_f32 v1, v1, s98, 0                                  // 000000002B2C: D1D60001 0200C501
	v_cvt_i32_f32_e32 v2, v1                                   // 000000002B34: 7E041101
	v_add_u32_e32 v251, 0x7f, v2                               // 000000002B38: 69F604FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v251                           // 000000002B40: 2535F697
	v_fma_f32 v0, v0, v238, -v148                              // 000000002B44: D1CB0000 8653DD00
	v_floor_f32_e32 v0, v0                                     // 000000002B4C: 7E003F00
	v_med3_f32 v0, v0, s98, 0                                  // 000000002B50: D1D60000 0200C500
	v_cvt_i32_f32_e32 v2, v0                                   // 000000002B58: 7E041100
	v_add_u32_e32 v149, 0x7f, v2                               // 000000002B5C: 692A04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v149                           // 000000002B64: 25372A97
	v_mov_b32_e32 v2, s50                                      // 000000002B68: 7E040232
	v_fma_f32 v2, v148, s99, v2                                // 000000002B6C: D1CB0002 0408C794
	v_fma_f32 v152, v1, s99, v2                                // 000000002B74: D1CB0098 0408C701
	v_fma_f32 v150, v0, s99, v2                                // 000000002B7C: D1CB0096 0408C700
	s_mov_b32 s82, s30                                         // 000000002B84: BED2001E
	s_waitcnt vmcnt(0)                                         // 000000002B88: BF8C0F70
	s_mov_b64 s[86:87], s[30:31]                               // 000000002B8C: BED6011E
	s_and_b64 s[18:19], s[10:11], exec                         // 000000002B90: 86927E0A
	s_mov_b64 s[84:85], s[28:29]                               // 000000002B94: BED4011C
	s_mov_b32 s87, s43                                         // 000000002B98: BED7002B
	s_cbranch_scc0 34                                          // 000000002B9C: BF840022 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1128>
	s_cmp_ge_u32 s96, 2                                        // 000000002BA0: BF098260
	s_cbranch_scc1 200                                         // 000000002BA4: BF8500C8 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x13c8>
	s_cmp_ge_u32 s96, 3                                        // 000000002BA8: BF098360
	s_cbranch_scc1 232                                         // 000000002BAC: BF8500E8 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1450>
	s_cmp_lt_u32 s96, 4                                        // 000000002BB0: BF0A8460
	s_cbranch_scc1 27                                          // 000000002BB4: BF85001B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1124>
	s_add_u32 s17, s78, -1                                     // 000000002BB8: 8011C14E
	s_and_b32 s17, s17, 3                                      // 000000002BBC: 86118311
	s_lshl_b32 s17, s17, 14                                    // 000000002BC0: 8E118E11
	s_or_b32 s17, s17, s88                                     // 000000002BC4: 87115811
	s_mov_b32 m0, s17                                          // 000000002BC8: BEFC0011
	s_mul_i32 s18, s8, 0x180                                   // 000000002BCC: 9212FF08 00000180
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002BD4: E05D1000 121500E9
	s_add_u32 m0, s17, 0x1000                                  // 000000002BDC: 807CFF11 00001000
	s_mul_i32 s18, s8, 0x1a0                                   // 000000002BE4: 9212FF08 000001A0
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002BEC: E05D1000 121500E9
	s_or_b32 m0, s17, 0x2000                                   // 000000002BF4: 877CFF11 00002000
	s_mul_i32 s18, s8, 0x1c0                                   // 000000002BFC: 9212FF08 000001C0
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002C04: E05D1000 121500E9
	s_add_u32 m0, s17, 0x3000                                  // 000000002C0C: 807CFF11 00003000
	s_mul_i32 s17, s8, 0x1e0                                   // 000000002C14: 9211FF08 000001E0
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 000000002C1C: E05D1000 111500E9
	s_waitcnt vmcnt(0)                                         // 000000002C24: BF8C0F70
	s_barrier                                                  // 000000002C28: BF8A0000
	s_add_u32 s53, s96, -1                                     // 000000002C2C: 8035C160
	s_mov_b64 s[58:59], s[30:31]                               // 000000002C30: BEBA011E
	s_mov_b64 s[56:57], s[28:29]                               // 000000002C34: BEB8011C
	s_cmp_lt_i32 s78, 1                                        // 000000002C38: BF04814E
	s_mul_i32 s53, s53, s33                                    // 000000002C3C: 92352135
	s_cbranch_scc1 58                                          // 000000002C40: BF85003A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x122c>
	s_mov_b32 s17, s16                                         // 000000002C44: BE910010
	s_mov_b32 s18, s16                                         // 000000002C48: BE920010
	s_mov_b32 s19, s16                                         // 000000002C4C: BE930010
	s_mov_b32 s20, s16                                         // 000000002C50: BE940010
	s_mov_b32 s21, s16                                         // 000000002C54: BE950010
	s_mov_b32 s22, s16                                         // 000000002C58: BE960010
	s_mov_b32 s23, s16                                         // 000000002C5C: BE970010
	s_mov_b32 s24, s16                                         // 000000002C60: BE980010
	s_mov_b32 s25, s16                                         // 000000002C64: BE990010
	s_mov_b32 s26, s16                                         // 000000002C68: BE9A0010
	s_mov_b32 s27, s16                                         // 000000002C6C: BE9B0010
	s_mov_b32 s28, s16                                         // 000000002C70: BE9C0010
	s_mov_b32 s29, s16                                         // 000000002C74: BE9D0010
	s_mov_b32 s30, s16                                         // 000000002C78: BE9E0010
	s_mov_b32 s31, s16                                         // 000000002C7C: BE9F0010
	s_cmp_lt_i32 s78, 2                                        // 000000002C80: BF04824E
	s_cbranch_scc0 99                                          // 000000002C84: BF840063 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1314>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000002C88: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000002C8C: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000002C90: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000002C94: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000002C98: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000002C9C: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000002CA0: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000002CA4: 7E1C701E
	s_mov_b32 s42, 0                                           // 000000002CA8: BEAA0080
	v_mov_b32_e32 v250, 0                                      // 000000002CAC: 7FF40280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000002CB0: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000002CB4: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 000000002CB8: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 000000002CBC: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 000000002CC0: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 000000002CC4: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 000000002CC8: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 000000002CCC: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 000000002CD0: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 000000002CD4: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 000000002CD8: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 000000002CDC: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 000000002CE0: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 000000002CE4: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 000000002CE8: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 000000002CEC: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 000000002CF0: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 000000002CF4: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 000000002CF8: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 000000002CFC: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 000000002D00: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 000000002D04: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 000000002D08: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000002D0C: 7E607100
	v_readlane_b32 s17, v255, 6                                // 000000002D10: D2890011 00010DFF
	v_readlane_b32 s20, v255, 5                                // 000000002D18: D2890014 00010BFF
	s_mov_b64 s[28:29], s[56:57]                               // 000000002D20: BE9C0138
	s_mov_b64 s[30:31], s[58:59]                               // 000000002D24: BE9E013A
	s_branch 877                                               // 000000002D28: BF82036D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1fe0>
	s_mov_b32 s17, s16                                         // 000000002D2C: BE910010
	s_mov_b32 s18, s16                                         // 000000002D30: BE920010
	s_mov_b32 s19, s16                                         // 000000002D34: BE930010
	s_mov_b32 s20, s16                                         // 000000002D38: BE940010
	s_mov_b32 s21, s16                                         // 000000002D3C: BE950010
	s_mov_b32 s22, s16                                         // 000000002D40: BE960010
	s_mov_b32 s23, s16                                         // 000000002D44: BE970010
	s_mov_b32 s24, s16                                         // 000000002D48: BE980010
	s_mov_b32 s25, s16                                         // 000000002D4C: BE990010
	s_mov_b32 s26, s16                                         // 000000002D50: BE9A0010
	s_mov_b32 s27, s16                                         // 000000002D54: BE9B0010
	s_mov_b32 s28, s16                                         // 000000002D58: BE9C0010
	s_mov_b32 s29, s16                                         // 000000002D5C: BE9D0010
	s_mov_b32 s30, s16                                         // 000000002D60: BE9E0010
	s_mov_b32 s31, s16                                         // 000000002D64: BE9F0010
	s_mov_b32 s42, 0                                           // 000000002D68: BEAA0080
	s_cmp_lg_u32 s78, 0                                        // 000000002D6C: BF07804E
	s_cbranch_scc0 189                                         // 000000002D70: BF8400BD <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1568>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000002D74: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000002D78: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000002D7C: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000002D80: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000002D84: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000002D88: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000002D8C: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000002D90: 7E1C701E
	v_mov_b32_e32 v250, 0                                      // 000000002D94: 7FF40280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000002D98: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000002D9C: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 000000002DA0: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 000000002DA4: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 000000002DA8: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 000000002DAC: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 000000002DB0: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 000000002DB4: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 000000002DB8: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 000000002DBC: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 000000002DC0: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 000000002DC4: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 000000002DC8: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 000000002DCC: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 000000002DD0: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 000000002DD4: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 000000002DD8: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 000000002DDC: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 000000002DE0: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 000000002DE4: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 000000002DE8: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 000000002DEC: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 000000002DF0: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000002DF4: 7E607100
	v_readlane_b32 s17, v255, 6                                // 000000002DF8: D2890011 00010DFF
	v_readlane_b32 s20, v255, 5                                // 000000002E00: D2890014 00010BFF
	s_mov_b64 s[28:29], s[56:57]                               // 000000002E08: BE9C0138
	s_mov_b64 s[30:31], s[58:59]                               // 000000002E0C: BE9E013A
	s_branch 2063                                              // 000000002E10: BF82080F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3350>
	s_mov_b32 s42, 0                                           // 000000002E14: BEAA0080
	s_cmp_eq_u32 s78, 2                                        // 000000002E18: BF06824E
	s_cbranch_scc0 106                                         // 000000002E1C: BF84006A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x14c8>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000002E20: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000002E24: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000002E28: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000002E2C: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000002E30: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000002E34: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000002E38: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000002E3C: 7E1C701E
	v_mov_b32_e32 v250, 0                                      // 000000002E40: 7FF40280
	v_mov_b32_e32 v253, v149                                   // 000000002E44: 7FFA0395
	v_mov_b32_e32 v252, v148                                   // 000000002E48: 7FF80394
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000002E4C: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000002E50: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 000000002E54: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 000000002E58: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 000000002E5C: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 000000002E60: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 000000002E64: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 000000002E68: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 000000002E6C: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 000000002E70: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 000000002E74: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 000000002E78: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 000000002E7C: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 000000002E80: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 000000002E84: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 000000002E88: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 000000002E8C: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 000000002E90: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 000000002E94: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 000000002E98: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 000000002E9C: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 000000002EA0: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 000000002EA4: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000002EA8: 7E607100
	v_readlane_b32 s17, v255, 6                                // 000000002EAC: D2890011 00010DFF
	v_readlane_b32 s20, v255, 5                                // 000000002EB4: D2890014 00010BFF
	s_mov_b64 s[28:29], s[56:57]                               // 000000002EBC: BE9C0138
	s_mov_b64 s[30:31], s[58:59]                               // 000000002EC0: BE9E013A
	s_branch 1396                                              // 000000002EC4: BF820574 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2998>
	s_add_u32 s18, s78, 1                                      // 000000002EC8: 8012814E
	s_and_b32 s18, s18, 3                                      // 000000002ECC: 86128312
	s_lshl_b32 s18, s18, 14                                    // 000000002ED0: 8E128E12
	s_add_u32 s19, s92, s18                                    // 000000002ED4: 8013125C
	s_add_u32 m0, s19, s88                                     // 000000002ED8: 807C5813
	s_nop 0                                                    // 000000002EDC: BF800000
	buffer_load_dwordx4 v235, s[80:83], s33 offen lds          // 000000002EE0: E05D1000 211400EB
	s_add_u32 s19, s92, s18                                    // 000000002EE8: 8013125C
	s_add_u32 s19, s19, s88                                    // 000000002EEC: 80135813
	s_add_u32 m0, s19, 0x1000                                  // 000000002EF0: 807CFF13 00001000
	s_mul_i32 s19, s8, 0xc0                                    // 000000002EF8: 9213FF08 000000C0
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000002F00: E05D1000 131400EB
	s_add_u32 s19, s92, s18                                    // 000000002F08: 8013125C
	s_add_u32 s19, s19, s88                                    // 000000002F0C: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 000000002F10: 807CFF13 00002000
	s_mul_i32 s19, s8, 0x84                                    // 000000002F18: 9213FF08 00000084
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000002F20: E05D1000 131400EB
	s_add_u32 s18, s92, s18                                    // 000000002F28: 8012125C
	s_add_u32 s18, s18, s88                                    // 000000002F2C: 80125812
	s_add_u32 m0, s18, 0x3000                                  // 000000002F30: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xc4                                    // 000000002F38: 9212FF08 000000C4
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000002F40: E05D1000 121400EB
	s_cmp_lt_u32 s96, 3                                        // 000000002F48: BF0A8360
	s_cbranch_scc1 65304                                       // 000000002F4C: BF85FF18 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10b0>
	s_xor_b32 s17, s17, 2                                      // 000000002F50: 88118211
	s_lshl_b32 s17, s17, 14                                    // 000000002F54: 8E118E11
	s_or_b32 s17, s17, s88                                     // 000000002F58: 87115811
	s_mov_b32 m0, s17                                          // 000000002F5C: BEFC0011
	v_readlane_b32 s18, v255, 6                                // 000000002F60: D2890012 00010DFF
	s_nop 4                                                    // 000000002F68: BF800004
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002F6C: E05D1000 121500E9
	s_add_u32 m0, s17, 0x1000                                  // 000000002F74: 807CFF11 00001000
	s_mul_i32 s18, s8, 0x120                                   // 000000002F7C: 9212FF08 00000120
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002F84: E05D1000 121500E9
	s_or_b32 m0, s17, 0x2000                                   // 000000002F8C: 877CFF11 00002000
	s_mul_i32 s18, s8, 0x140                                   // 000000002F94: 9212FF08 00000140
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002F9C: E05D1000 121500E9
	s_add_u32 m0, s17, 0x3000                                  // 000000002FA4: 807CFF11 00003000
	s_mul_i32 s17, s8, 0x160                                   // 000000002FAC: 9211FF08 00000160
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 000000002FB4: E05D1000 111500E9
	s_cmp_lt_u32 s96, 4                                        // 000000002FBC: BF0A8460
	s_cbranch_scc1 65304                                       // 000000002FC0: BF85FF18 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1124>
	s_branch 65276                                             // 000000002FC4: BF82FEFC <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10b8>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000002FC8: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000002FCC: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000002FD0: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000002FD4: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000002FD8: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000002FDC: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000002FE0: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000002FE4: 7E1C701E
	v_mov_b32_e32 v250, 0                                      // 000000002FE8: 7FF40280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000002FEC: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000002FF0: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 000000002FF4: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 000000002FF8: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 000000002FFC: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 000000003000: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 000000003004: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 000000003008: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000300C: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 000000003010: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 000000003014: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 000000003018: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000301C: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 000000003020: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 000000003024: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 000000003028: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000302C: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 000000003030: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 000000003034: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 000000003038: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000303C: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 000000003040: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 000000003044: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000003048: 7E607100
	v_readlane_b32 s17, v255, 6                                // 00000000304C: D2890011 00010DFF
	v_readlane_b32 s20, v255, 5                                // 000000003054: D2890014 00010BFF
	s_mov_b64 s[28:29], s[56:57]                               // 00000000305C: BE9C0138
	s_mov_b64 s[30:31], s[58:59]                               // 000000003060: BE9E013A
	s_branch 1914                                              // 000000003064: BF82077A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3350>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000003068: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000306C: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000003070: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000003074: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000003078: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000307C: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000003080: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000003084: 7E1C701E
	v_mov_b32_e32 v250, 0                                      // 000000003088: 7FF40280
	s_mov_b32 s42, s78                                         // 00000000308C: BEAA004E
	v_mov_b32_e32 v253, v149                                   // 000000003090: 7FFA0395
	v_mov_b32_e32 v252, v148                                   // 000000003094: 7FF80394
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000003098: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000309C: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 0000000030A0: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 0000000030A4: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 0000000030A8: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 0000000030AC: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 0000000030B0: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 0000000030B4: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 0000000030B8: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 0000000030BC: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 0000000030C0: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 0000000030C4: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 0000000030C8: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 0000000030CC: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 0000000030D0: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 0000000030D4: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 0000000030D8: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 0000000030DC: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 0000000030E0: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 0000000030E4: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 0000000030E8: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 0000000030EC: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 0000000030F0: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 0000000030F4: 7E607100
	v_readlane_b32 s17, v255, 6                                // 0000000030F8: D2890011 00010DFF
	v_readlane_b32 s20, v255, 5                                // 000000003100: D2890014 00010BFF
	s_mov_b64 s[28:29], s[56:57]                               // 000000003108: BE9C0138
	s_mov_b64 s[30:31], s[58:59]                               // 00000000310C: BE9E013A
	s_branch 5                                                 // 000000003110: BF820005 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1628>
	s_mov_b64 s[0:1], s[20:21]                                 // 000000003114: BE800114
	s_mov_b32 s3, s17                                          // 000000003118: BE830011
	global_store_dword v0, v32, s[36:37]                       // 00000000311C: DC708000 00242000
	s_branch 64488                                             // 000000003124: BF82FBE8 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5c8>
	s_add_u32 s18, s42, 1                                      // 000000003128: 8012812A
	s_cmp_ge_u32 s18, s79                                      // 00000000312C: BF094F12
	s_cbranch_scc1 2488                                        // 000000003130: BF8509B8 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d14>
	s_setprio 0                                                // 000000003134: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000003138: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 000000003140: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 000000003148: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 000000003150: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 000000003158: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 000000003160: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 000000003168: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 000000003170: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 000000003178: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 000000003180: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 000000003188: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 000000003190: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 000000003198: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 0000000031A0: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 0000000031A8: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 0000000031B0: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 0000000031B8: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 0000000031C0: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 0000000031C8: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 0000000031D0: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 0000000031D8: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 0000000031E0: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 0000000031E8: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 0000000031F0: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 0000000031F8: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000003200: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000003208: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 000000003210: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000003218: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 000000003220: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 000000003228: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 000000003230: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 000000003238: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 000000003240: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 000000003248: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 000000003250: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 000000003258: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 000000003260: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 000000003268: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 000000003270: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 000000003278: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 000000003280: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 000000003288: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 000000003290: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 000000003298: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 0000000032A0: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 0000000032A8: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 0000000032B0: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 0000000032B8: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 0000000032C0: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 0000000032C8: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 0000000032D0: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 0000000032D8: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 0000000032E0: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 0000000032E8: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 0000000032F0: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 0000000032F8: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000003300: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 000000003308: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 000000003310: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 000000003318: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 000000003320: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 000000003328: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 000000003330: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 000000003338: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 000000003340: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 000000003348: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 000000003350: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 000000003358: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 000000003360: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 000000003368: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 000000003370: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 000000003378: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 000000003380: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 000000003388: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 000000003390: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 000000003398: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 0000000033A0: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 0000000033A8: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 0000000033B0: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 0000000033B8: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 0000000033C0: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 0000000033C8: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 0000000033D0: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 0000000033D8: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 0000000033E0: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 0000000033E8: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 0000000033F0: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 0000000033F8: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000003400: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 000000003408: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 000000003410: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 000000003418: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 000000003420: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 000000003428: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 000000003430: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 000000003438: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000003440: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 000000003448: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 000000003450: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 000000003458: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 000000003460: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 000000003468: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 000000003470: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 000000003478: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 000000003480: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 000000003488: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 000000003490: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 000000003498: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 0000000034A0: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 0000000034A8: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 0000000034B0: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 0000000034B8: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 0000000034C0: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 0000000034C8: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 0000000034D0: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 0000000034D8: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 0000000034E0: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 0000000034E8: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 0000000034F0: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 0000000034F8: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 000000003500: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 000000003508: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 000000003510: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 000000003518: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 000000003520: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 000000003528: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 000000003530: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 000000003538: 7F320398
	v_mov_b32_e32 v151, v150                                   // 00000000353C: 7F2E0396
	ds_read_b128 v[72:75], v231 offset:16384                   // 000000003540: D9FE4000 480000E7
	ds_read_b128 v[76:79], v231 offset:16400                   // 000000003548: D9FE4010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:20480                   // 000000003550: D9FE5000 500000E7
	ds_read_b128 v[84:87], v231 offset:20496                   // 000000003558: D9FE5010 540000E7
	s_barrier                                                  // 000000003560: BF8A0000
	s_setprio 1                                                // 000000003564: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 000000003568: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 000000003570: D3AD0044 020311C0
	ds_read_b128 v[144:147], v231 offset:24576                 // 000000003578: D9FE6000 900000E7
	ds_read_b128 v[148:151], v231 offset:24592                 // 000000003580: D9FE6010 940000E7
	ds_read_b128 v[156:159], v231 offset:28672                 // 000000003588: D9FE7000 9C0000E7
	ds_read_b128 v[160:163], v231 offset:28688                 // 000000003590: D9FE7010 A00000E7
	s_waitcnt lgkmcnt(4)                                       // 000000003598: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 00000000359C: D3AE0070 0203B948
	ds_read_b128 v[164:167], v232 offset:16384                 // 0000000035A4: D9FE4000 A40000E8
	ds_read_b128 v[168:171], v232 offset:16400                 // 0000000035AC: D9FE4010 A80000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 0000000035B4: D3AE0060 0203B950
	ds_read_b128 v[172:175], v232 offset:20480                 // 0000000035BC: D9FE5000 AC0000E8
	ds_read_b128 v[176:179], v232 offset:20496                 // 0000000035C4: D9FE5010 B00000E8
	s_waitcnt lgkmcnt(4)                                       // 0000000035CC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[144:151], v[220:227], 0// 0000000035D0: D3AE0050 0203B990
	ds_read_b128 v[146:149], v232 offset:24576                 // 0000000035D8: D9FE6000 920000E8
	ds_read_b128 v[150:153], v232 offset:24592                 // 0000000035E0: D9FE6010 960000E8
	s_min_u32 s18, s20, s53                                    // 0000000035E8: 83923514
	s_add_u32 m0, s88, s16                                     // 0000000035EC: 807C1058
	s_nop 0                                                    // 0000000035F0: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 0000000035F4: E05D1000 121500E9
	v_mul_f32_e32 v72, v154, v64                               // 0000000035FC: 0A90819A
	v_add_f32_e32 v72, v250, v72                               // 000000003600: 029091FA
	v_mul_f32_e32 v73, v155, v68                               // 000000003604: 0A92899B
	v_add_f32_e32 v250, v72, v73                               // 000000003608: 03F49348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[156:163], v[220:227], 0// 00000000360C: D3AE0040 0203B99C
	ds_read_b128 v[154:157], v232 offset:28672                 // 000000003614: D9FE7000 9A0000E8
	ds_read_b128 v[158:161], v232 offset:28688                 // 00000000361C: D9FE7010 9E0000E8
	s_add_u32 m0, s88, s94                                     // 000000003624: 807C5E58
	s_nop 0                                                    // 000000003628: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 00000000362C: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 000000003634: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[164:171], v[200:207], v[112:127]// 000000003638: D3AE0070 05C391A4
	ds_read_b64_tr_b8 v[162:163], v246                         // 000000003640: D9C40000 A20000F6
	ds_read_b64_tr_b8 v[164:165], v246 offset:1024             // 000000003648: D9C40400 A40000F6
	ds_read_b64_tr_b8 v[166:167], v246 offset:2048             // 000000003650: D9C40800 A60000F6
	ds_read_b64_tr_b8 v[168:169], v246 offset:3072             // 000000003658: D9C40C00 A80000F6
	s_min_u32 s18, s17, s53                                    // 000000003660: 83923511
	s_add_u32 m0, s88, s97                                     // 000000003664: 807C6158
	s_nop 0                                                    // 000000003668: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 00000000366C: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[172:179], v[200:207], v[96:111]// 000000003674: D3AE0060 058391AC
	ds_read_b64_tr_b8 v[170:171], v246 offset:256              // 00000000367C: D9C40100 AA0000F6
	ds_read_b64_tr_b8 v[172:173], v246 offset:1280             // 000000003684: D9C40500 AC0000F6
	ds_read_b64_tr_b8 v[174:175], v246 offset:2304             // 00000000368C: D9C40900 AE0000F6
	ds_read_b64_tr_b8 v[176:177], v246 offset:3328             // 000000003694: D9C40D00 B00000F6
	s_add_u32 m0, s88, s95                                     // 00000000369C: 807C5F58
	s_nop 0                                                    // 0000000036A0: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 0000000036A4: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 0000000036AC: 80142114
	s_add_u32 s17, s17, s33                                    // 0000000036B0: 80112111
	v_max_f32_e32 v144, v112, v113                             // 0000000036B4: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 0000000036B8: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 0000000036C0: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 0000000036C8: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 0000000036D0: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 0000000036D8: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 0000000036E0: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 0000000036E8: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 0000000036F0: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[146:153], v[200:207], v[80:95]// 0000000036F4: D3AE0050 05439192
	ds_read_b64_tr_b8 v[178:179], v246 offset:512              // 0000000036FC: D9C40200 B20000F6
	ds_read_b64_tr_b8 v[180:181], v246 offset:1536             // 000000003704: D9C40600 B40000F6
	ds_read_b64_tr_b8 v[182:183], v246 offset:2560             // 00000000370C: D9C40A00 B60000F6
	ds_read_b64_tr_b8 v[184:185], v246 offset:3584             // 000000003714: D9C40E00 B80000F6
	v_max_f32_e32 v145, v96, v97                               // 00000000371C: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 000000003720: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 000000003728: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 000000003730: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 000000003738: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 000000003740: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 000000003748: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 000000003750: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[154:161], v[200:207], v[64:79]// 000000003758: D3AE0040 0503919A
	s_nop 3                                                    // 000000003760: BF800003
	v_max_f32_e32 v146, v80, v81                               // 000000003764: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 000000003768: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 000000003770: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 000000003778: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 000000003780: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 000000003788: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 000000003790: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 000000003798: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 0000000037A0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[162:169], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 0000000037A4: D3AC0000 0003F7F2 D3AE0830 04C301A2
	ds_read_b64_tr_b8 v[148:149], v246 offset:768              // 0000000037B4: D9C40300 940000F6
	ds_read_b64_tr_b8 v[150:151], v246 offset:1792             // 0000000037BC: D9C40700 960000F6
	ds_read_b64_tr_b8 v[152:153], v246 offset:2816             // 0000000037C4: D9C40B00 980000F6
	ds_read_b64_tr_b8 v[154:155], v246 offset:3840             // 0000000037CC: D9C40F00 9A0000F6
	ds_read_b64_tr_b8 v[156:157], v246 offset:4096             // 0000000037D4: D9C41000 9C0000F6
	ds_read_b64_tr_b8 v[158:159], v246 offset:5120             // 0000000037DC: D9C41400 9E0000F6
	ds_read_b64_tr_b8 v[160:161], v246 offset:6144             // 0000000037E4: D9C41800 A00000F6
	ds_read_b64_tr_b8 v[162:163], v246 offset:7168             // 0000000037EC: D9C41C00 A20000F6
	v_max_f32_e32 v147, v64, v65                               // 0000000037F4: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 0000000037F8: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 000000003800: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 000000003808: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 000000003810: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 000000003818: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 000000003820: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 000000003828: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[170:177], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000003830: D3AC0000 0003F7F2 D3AE0820 048301AA
	v_max_f32_e32 v144, v144, v145                             // 000000003840: 17212390
	v_max_f32_e32 v146, v146, v147                             // 000000003844: 17252792
	v_mov_b32_e32 v145, v144                                   // 000000003848: 7F220390
	v_mov_b32_e32 v147, v146                                   // 00000000384C: 7F260392
	s_nop 0                                                    // 000000003850: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 000000003854: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 000000003858: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 00000000385C: 17212390
	v_max_f32_e32 v145, v146, v147                             // 000000003860: 17232792
	s_waitcnt lgkmcnt(4)                                       // 000000003864: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[178:185], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000003868: D3AC0000 0003F7F2 D3AE0810 044301B2
	ds_read_b64_tr_b8 v[164:165], v246 offset:4352             // 000000003878: D9C41100 A40000F6
	ds_read_b64_tr_b8 v[166:167], v246 offset:5376             // 000000003880: D9C41500 A60000F6
	ds_read_b64_tr_b8 v[168:169], v246 offset:6400             // 000000003888: D9C41900 A80000F6
	ds_read_b64_tr_b8 v[170:171], v246 offset:7424             // 000000003890: D9C41D00 AA0000F6
	ds_read_b64_tr_b8 v[172:173], v246 offset:4608             // 000000003898: D9C41200 AC0000F6
	ds_read_b64_tr_b8 v[174:175], v246 offset:5632             // 0000000038A0: D9C41600 AE0000F6
	ds_read_b64_tr_b8 v[176:177], v246 offset:6656             // 0000000038A8: D9C41A00 B00000F6
	ds_read_b64_tr_b8 v[178:179], v246 offset:7680             // 0000000038B0: D9C41E00 B20000F6
	v_max_f32_e32 v146, v144, v145                             // 0000000038B8: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 0000000038BC: 0B2525EE
	v_max_f32_e32 v146, v252, v146                             // 0000000038C0: 172525FC
	v_sub_f32_e32 v147, v146, v252                             // 0000000038C4: 0527F992
	v_cmp_lt_f32_e32 vcc, s48, v147                            // 0000000038C8: 7C832630
	s_cmp_lg_u64 vcc, 0                                        // 0000000038CC: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 0000000038D0: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 0000000038D4: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[148:155], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 0000000038D8: D3AC0000 0003F7F2 D3AE0800 04030194
	v_cndmask_b32_e64 v148, v252, v146, s[18:19]               // 0000000038E8: D1000094 004B25FC
	v_fma_f32 v128, v144, v238, -v148                          // 0000000038F0: D1CB0080 8653DD90
	v_floor_f32_e32 v128, v128                                 // 0000000038F8: 7F003F80
	v_med3_f32 v128, v128, s98, 0                              // 0000000038FC: D1D60080 0200C580
	v_cvt_i32_f32_e32 v129, v128                               // 000000003904: 7F021180
	v_add_u32_e32 v251, 0x7f, v129                             // 000000003908: 69F702FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v251                           // 000000003910: 2535F697
	v_fma_f32 v129, v145, v238, -v148                          // 000000003914: D1CB0081 8653DD91
	s_waitcnt lgkmcnt(4)                                       // 00000000391C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000003920: D3AC0000 0003FBF2 D3AE0830 04C3119C
	ds_read_b64_tr_b8 v[156:157], v246 offset:4864             // 000000003930: D9C41300 9C0000F6
	ds_read_b64_tr_b8 v[158:159], v246 offset:5888             // 000000003938: D9C41700 9E0000F6
	ds_read_b64_tr_b8 v[160:161], v246 offset:6912             // 000000003940: D9C41B00 A00000F6
	ds_read_b64_tr_b8 v[162:163], v246 offset:7936             // 000000003948: D9C41F00 A20000F6
	v_floor_f32_e32 v129, v129                                 // 000000003950: 7F023F81
	v_med3_f32 v129, v129, s98, 0                              // 000000003954: D1D60081 0200C581
	v_cvt_i32_f32_e32 v130, v129                               // 00000000395C: 7F041181
	v_add_u32_e32 v149, 0x7f, v130                             // 000000003960: 692B04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v149                           // 000000003968: 25372A97
	v_mov_b32_e32 v130, s50                                    // 00000000396C: 7F040232
	v_fma_f32 v130, v148, s99, v130                            // 000000003970: D1CB0082 0608C794
	v_fma_f32 v152, v128, s99, v130                            // 000000003978: D1CB0098 0608C780
	v_fma_f32 v150, v129, s99, v130                            // 000000003980: D1CB0096 0608C781
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000003988: D3AC0000 0003FBF2 D3AE0820 048311A4
	s_waitcnt lgkmcnt(0)                                       // 000000003998: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 00000000399C: D3AC0000 0003FBF2 D3AE0810 044311AC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 0000000039AC: D3AC0000 0003FBF2 D3AE0800 0403119C
	s_cmp_eq_u32 s21, 0                                        // 0000000039BC: BF068015
	s_cbranch_scc1 68                                          // 0000000039C0: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1fd4>
	v_sub_f32_e32 v128, v252, v148                             // 0000000039C4: 050129FC
	v_exp_f32_e32 v128, v128                                   // 0000000039C8: 7F004180
	s_nop 0                                                    // 0000000039CC: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 0000000039D0: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 0000000039D8: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 0000000039E0: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 0000000039E8: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 0000000039F0: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 0000000039F8: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000003A00: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000003A08: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000003A10: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000003A18: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000003A20: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000003A28: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000003A30: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000003A38: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000003A40: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000003A48: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000003A50: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000003A58: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000003A60: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000003A68: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000003A70: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000003A78: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000003A80: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 000000003A88: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 000000003A90: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 000000003A98: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 000000003AA0: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 000000003AA8: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 000000003AB0: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 000000003AB8: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 000000003AC0: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 000000003AC8: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 000000003AD0: 0BF501FA
	s_waitcnt vmcnt(4)                                         // 000000003AD4: BF8C0F74
	s_barrier                                                  // 000000003AD8: BF8A0000
	s_add_u32 s42, s42, 1                                      // 000000003ADC: 802A812A
	s_add_u32 s18, s42, 1                                      // 000000003AE0: 8012812A
	s_cmp_ge_u32 s18, s79                                      // 000000003AE4: BF094F12
	s_cbranch_scc1 1870                                        // 000000003AE8: BF85074E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d24>
	s_setprio 0                                                // 000000003AEC: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000003AF0: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 000000003AF8: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 000000003B00: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 000000003B08: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 000000003B10: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 000000003B18: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 000000003B20: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 000000003B28: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 000000003B30: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 000000003B38: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 000000003B40: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 000000003B48: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 000000003B50: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 000000003B58: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 000000003B60: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 000000003B68: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 000000003B70: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000003B78: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 000000003B80: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000003B88: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 000000003B90: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000003B98: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 000000003BA0: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000003BA8: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 000000003BB0: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000003BB8: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000003BC0: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 000000003BC8: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000003BD0: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 000000003BD8: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 000000003BE0: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 000000003BE8: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 000000003BF0: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 000000003BF8: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 000000003C00: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 000000003C08: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 000000003C10: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 000000003C18: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 000000003C20: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 000000003C28: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 000000003C30: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 000000003C38: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 000000003C40: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 000000003C48: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 000000003C50: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 000000003C58: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 000000003C60: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 000000003C68: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 000000003C70: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000003C78: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 000000003C80: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000003C88: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 000000003C90: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000003C98: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 000000003CA0: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000003CA8: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 000000003CB0: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000003CB8: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 000000003CC0: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 000000003CC8: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 000000003CD0: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 000000003CD8: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 000000003CE0: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 000000003CE8: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 000000003CF0: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 000000003CF8: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 000000003D00: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 000000003D08: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 000000003D10: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 000000003D18: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 000000003D20: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 000000003D28: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 000000003D30: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 000000003D38: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 000000003D40: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 000000003D48: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 000000003D50: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 000000003D58: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 000000003D60: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 000000003D68: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 000000003D70: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000003D78: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 000000003D80: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000003D88: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 000000003D90: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000003D98: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 000000003DA0: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000003DA8: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 000000003DB0: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000003DB8: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 000000003DC0: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 000000003DC8: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 000000003DD0: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 000000003DD8: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 000000003DE0: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 000000003DE8: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 000000003DF0: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000003DF8: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 000000003E00: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 000000003E08: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 000000003E10: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 000000003E18: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 000000003E20: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 000000003E28: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 000000003E30: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 000000003E38: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 000000003E40: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 000000003E48: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 000000003E50: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 000000003E58: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 000000003E60: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 000000003E68: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000003E70: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000003E78: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000003E80: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000003E88: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000003E90: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 000000003E98: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 000000003EA0: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 000000003EA8: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000003EB0: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 000000003EB8: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 000000003EC0: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 000000003EC8: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 000000003ED0: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 000000003ED8: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 000000003EE0: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 000000003EE8: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 000000003EF0: 7F320398
	v_mov_b32_e32 v151, v150                                   // 000000003EF4: 7F2E0396
	ds_read_b128 v[72:75], v231 offset:32768                   // 000000003EF8: D9FE8000 480000E7
	ds_read_b128 v[76:79], v231 offset:32784                   // 000000003F00: D9FE8010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:36864                   // 000000003F08: D9FE9000 500000E7
	ds_read_b128 v[84:87], v231 offset:36880                   // 000000003F10: D9FE9010 540000E7
	s_barrier                                                  // 000000003F18: BF8A0000
	s_setprio 1                                                // 000000003F1C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 000000003F20: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 000000003F28: D3AD0044 020311C0
	ds_read_b128 v[156:159], v231 offset:40960                 // 000000003F30: D9FEA000 9C0000E7
	ds_read_b128 v[160:163], v231 offset:40976                 // 000000003F38: D9FEA010 A00000E7
	ds_read_b128 v[164:167], v231 offset:45056                 // 000000003F40: D9FEB000 A40000E7
	ds_read_b128 v[168:171], v231 offset:45072                 // 000000003F48: D9FEB010 A80000E7
	s_waitcnt lgkmcnt(4)                                       // 000000003F50: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 000000003F54: D3AE0070 0203B948
	ds_read_b128 v[172:175], v232 offset:32768                 // 000000003F5C: D9FE8000 AC0000E8
	ds_read_b128 v[176:179], v232 offset:32784                 // 000000003F64: D9FE8010 B00000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 000000003F6C: D3AE0060 0203B950
	ds_read_b128 v[180:183], v232 offset:36864                 // 000000003F74: D9FE9000 B40000E8
	ds_read_b128 v[184:187], v232 offset:36880                 // 000000003F7C: D9FE9010 B80000E8
	s_waitcnt lgkmcnt(4)                                       // 000000003F84: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[156:163], v[220:227], 0// 000000003F88: D3AE0050 0203B99C
	ds_read_b128 v[156:159], v232 offset:40960                 // 000000003F90: D9FEA000 9C0000E8
	ds_read_b128 v[160:163], v232 offset:40976                 // 000000003F98: D9FEA010 A00000E8
	s_min_u32 s18, s20, s53                                    // 000000003FA0: 83923514
	s_add_u32 m0, s88, s89                                     // 000000003FA4: 807C5958
	s_nop 0                                                    // 000000003FA8: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000003FAC: E05D1000 121500E9
	v_mul_f32_e32 v72, v154, v64                               // 000000003FB4: 0A90819A
	v_add_f32_e32 v72, v250, v72                               // 000000003FB8: 029091FA
	v_mul_f32_e32 v73, v155, v68                               // 000000003FBC: 0A92899B
	v_add_f32_e32 v250, v72, v73                               // 000000003FC0: 03F49348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[164:171], v[220:227], 0// 000000003FC4: D3AE0040 0203B9A4
	ds_read_b128 v[164:167], v232 offset:45056                 // 000000003FCC: D9FEB000 A40000E8
	ds_read_b128 v[168:171], v232 offset:45072                 // 000000003FD4: D9FEB010 A80000E8
	s_add_u32 m0, s88, s90                                     // 000000003FDC: 807C5A58
	s_nop 0                                                    // 000000003FE0: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 000000003FE4: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 000000003FEC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[172:179], v[200:207], v[112:127]// 000000003FF0: D3AE0070 05C391AC
	ds_read_b64_tr_b8 v[172:173], v247                         // 000000003FF8: D9C40000 AC0000F7
	ds_read_b64_tr_b8 v[174:175], v247 offset:1024             // 000000004000: D9C40400 AE0000F7
	ds_read_b64_tr_b8 v[176:177], v247 offset:2048             // 000000004008: D9C40800 B00000F7
	ds_read_b64_tr_b8 v[178:179], v247 offset:3072             // 000000004010: D9C40C00 B20000F7
	s_min_u32 s18, s17, s53                                    // 000000004018: 83923511
	s_add_u32 m0, s88, s49                                     // 00000000401C: 807C3158
	s_nop 0                                                    // 000000004020: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000004024: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[180:187], v[200:207], v[96:111]// 00000000402C: D3AE0060 058391B4
	ds_read_b64_tr_b8 v[180:181], v247 offset:256              // 000000004034: D9C40100 B40000F7
	ds_read_b64_tr_b8 v[182:183], v247 offset:1280             // 00000000403C: D9C40500 B60000F7
	ds_read_b64_tr_b8 v[184:185], v247 offset:2304             // 000000004044: D9C40900 B80000F7
	ds_read_b64_tr_b8 v[186:187], v247 offset:3328             // 00000000404C: D9C40D00 BA0000F7
	s_add_u32 m0, s88, s91                                     // 000000004054: 807C5B58
	s_nop 0                                                    // 000000004058: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 00000000405C: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 000000004064: 80142114
	s_add_u32 s17, s17, s33                                    // 000000004068: 80112111
	v_max_f32_e32 v144, v112, v113                             // 00000000406C: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 000000004070: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 000000004078: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 000000004080: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 000000004088: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 000000004090: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 000000004098: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 0000000040A0: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 0000000040A8: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[156:163], v[200:207], v[80:95]// 0000000040AC: D3AE0050 0543919C
	ds_read_b64_tr_b8 v[150:151], v247 offset:512              // 0000000040B4: D9C40200 960000F7
	ds_read_b64_tr_b8 v[152:153], v247 offset:1536             // 0000000040BC: D9C40600 980000F7
	ds_read_b64_tr_b8 v[154:155], v247 offset:2560             // 0000000040C4: D9C40A00 9A0000F7
	ds_read_b64_tr_b8 v[156:157], v247 offset:3584             // 0000000040CC: D9C40E00 9C0000F7
	v_max_f32_e32 v145, v96, v97                               // 0000000040D4: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 0000000040D8: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 0000000040E0: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 0000000040E8: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 0000000040F0: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 0000000040F8: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 000000004100: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 000000004108: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[164:171], v[200:207], v[64:79]// 000000004110: D3AE0040 050391A4
	s_nop 3                                                    // 000000004118: BF800003
	v_max_f32_e32 v146, v80, v81                               // 00000000411C: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 000000004120: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 000000004128: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 000000004130: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 000000004138: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 000000004140: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 000000004148: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 000000004150: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 000000004158: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[172:179], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 00000000415C: D3AC0000 0003F7F2 D3AE0830 04C301AC
	ds_read_b64_tr_b8 v[158:159], v247 offset:768              // 00000000416C: D9C40300 9E0000F7
	ds_read_b64_tr_b8 v[160:161], v247 offset:1792             // 000000004174: D9C40700 A00000F7
	ds_read_b64_tr_b8 v[162:163], v247 offset:2816             // 00000000417C: D9C40B00 A20000F7
	ds_read_b64_tr_b8 v[164:165], v247 offset:3840             // 000000004184: D9C40F00 A40000F7
	ds_read_b64_tr_b8 v[166:167], v247 offset:4096             // 00000000418C: D9C41000 A60000F7
	ds_read_b64_tr_b8 v[168:169], v247 offset:5120             // 000000004194: D9C41400 A80000F7
	ds_read_b64_tr_b8 v[170:171], v247 offset:6144             // 00000000419C: D9C41800 AA0000F7
	ds_read_b64_tr_b8 v[172:173], v247 offset:7168             // 0000000041A4: D9C41C00 AC0000F7
	v_max_f32_e32 v147, v64, v65                               // 0000000041AC: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 0000000041B0: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 0000000041B8: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 0000000041C0: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 0000000041C8: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 0000000041D0: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 0000000041D8: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 0000000041E0: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[180:187], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 0000000041E8: D3AC0000 0003F7F2 D3AE0820 048301B4
	v_max_f32_e32 v144, v144, v145                             // 0000000041F8: 17212390
	v_max_f32_e32 v146, v146, v147                             // 0000000041FC: 17252792
	v_mov_b32_e32 v145, v144                                   // 000000004200: 7F220390
	v_mov_b32_e32 v147, v146                                   // 000000004204: 7F260392
	s_nop 0                                                    // 000000004208: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 00000000420C: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 000000004210: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 000000004214: 17212390
	v_max_f32_e32 v145, v146, v147                             // 000000004218: 17232792
	s_waitcnt lgkmcnt(4)                                       // 00000000421C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[150:157], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000004220: D3AC0000 0003F7F2 D3AE0810 04430196
	ds_read_b64_tr_b8 v[174:175], v247 offset:4352             // 000000004230: D9C41100 AE0000F7
	ds_read_b64_tr_b8 v[176:177], v247 offset:5376             // 000000004238: D9C41500 B00000F7
	ds_read_b64_tr_b8 v[178:179], v247 offset:6400             // 000000004240: D9C41900 B20000F7
	ds_read_b64_tr_b8 v[180:181], v247 offset:7424             // 000000004248: D9C41D00 B40000F7
	ds_read_b64_tr_b8 v[182:183], v247 offset:4608             // 000000004250: D9C41200 B60000F7
	ds_read_b64_tr_b8 v[184:185], v247 offset:5632             // 000000004258: D9C41600 B80000F7
	ds_read_b64_tr_b8 v[186:187], v247 offset:6656             // 000000004260: D9C41A00 BA0000F7
	ds_read_b64_tr_b8 v[188:189], v247 offset:7680             // 000000004268: D9C41E00 BC0000F7
	v_max_f32_e32 v146, v144, v145                             // 000000004270: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 000000004274: 0B2525EE
	v_max_f32_e32 v146, v148, v146                             // 000000004278: 17252594
	v_sub_f32_e32 v147, v146, v148                             // 00000000427C: 05272992
	v_cmp_lt_f32_e32 vcc, s48, v147                            // 000000004280: 7C832630
	s_cmp_lg_u64 vcc, 0                                        // 000000004284: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 000000004288: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000428C: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[158:165], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000004290: D3AC0000 0003F7F2 D3AE0800 0403019E
	v_cndmask_b32_e64 v252, v148, v146, s[18:19]               // 0000000042A0: D10000FC 004B2594
	v_fma_f32 v128, v144, v238, -v252                          // 0000000042A8: D1CB0080 87F3DD90
	v_floor_f32_e32 v128, v128                                 // 0000000042B0: 7F003F80
	v_med3_f32 v128, v128, s98, 0                              // 0000000042B4: D1D60080 0200C580
	v_cvt_i32_f32_e32 v129, v128                               // 0000000042BC: 7F021180
	v_add_u32_e32 v251, 0x7f, v129                             // 0000000042C0: 69F702FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v251                           // 0000000042C8: 2535F697
	v_fma_f32 v129, v145, v238, -v252                          // 0000000042CC: D1CB0081 87F3DD91
	s_waitcnt lgkmcnt(4)                                       // 0000000042D4: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[166:173], v[136:143], v[48:63], v242, v149 op_sel_hi:[0,0,0]// 0000000042D8: D3AC0000 00032BF2 D3AE0830 04C311A6
	ds_read_b64_tr_b8 v[156:157], v247 offset:4864             // 0000000042E8: D9C41300 9C0000F7
	ds_read_b64_tr_b8 v[158:159], v247 offset:5888             // 0000000042F0: D9C41700 9E0000F7
	ds_read_b64_tr_b8 v[160:161], v247 offset:6912             // 0000000042F8: D9C41B00 A00000F7
	ds_read_b64_tr_b8 v[162:163], v247 offset:7936             // 000000004300: D9C41F00 A20000F7
	v_floor_f32_e32 v129, v129                                 // 000000004308: 7F023F81
	v_med3_f32 v129, v129, s98, 0                              // 00000000430C: D1D60081 0200C581
	v_cvt_i32_f32_e32 v130, v129                               // 000000004314: 7F041181
	v_add_u32_e32 v253, 0x7f, v130                             // 000000004318: 69FB04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v253                           // 000000004320: 2537FA97
	v_mov_b32_e32 v130, s50                                    // 000000004324: 7F040232
	v_fma_f32 v130, v252, s99, v130                            // 000000004328: D1CB0082 0608C7FC
	v_fma_f32 v152, v128, s99, v130                            // 000000004330: D1CB0098 0608C780
	v_fma_f32 v150, v129, s99, v130                            // 000000004338: D1CB0096 0608C781
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[174:181], v[136:143], v[32:47], v242, v149 op_sel_hi:[0,0,0]// 000000004340: D3AC0000 00032BF2 D3AE0820 048311AE
	s_waitcnt lgkmcnt(0)                                       // 000000004350: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[182:189], v[136:143], v[16:31], v242, v149 op_sel_hi:[0,0,0]// 000000004354: D3AC0000 00032BF2 D3AE0810 044311B6
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v149 op_sel_hi:[0,0,0]// 000000004364: D3AC0000 00032BF2 D3AE0800 0403119C
	s_cmp_eq_u32 s21, 0                                        // 000000004374: BF068015
	s_cbranch_scc1 68                                          // 000000004378: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x298c>
	v_sub_f32_e32 v128, v148, v252                             // 00000000437C: 0501F994
	v_exp_f32_e32 v128, v128                                   // 000000004380: 7F004180
	s_nop 0                                                    // 000000004384: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 000000004388: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 000000004390: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000004398: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 0000000043A0: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 0000000043A8: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 0000000043B0: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 0000000043B8: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 0000000043C0: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 0000000043C8: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 0000000043D0: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 0000000043D8: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 0000000043E0: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 0000000043E8: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 0000000043F0: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 0000000043F8: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000004400: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000004408: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000004410: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000004418: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000004420: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000004428: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000004430: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000004438: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 000000004440: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 000000004448: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 000000004450: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 000000004458: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 000000004460: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 000000004468: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 000000004470: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 000000004478: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 000000004480: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 000000004488: 0BF501FA
	s_waitcnt vmcnt(4)                                         // 00000000448C: BF8C0F74
	s_barrier                                                  // 000000004490: BF8A0000
	s_add_u32 s42, s42, 1                                      // 000000004494: 802A812A
	s_add_u32 s18, s42, 1                                      // 000000004498: 8012812A
	s_cmp_ge_u32 s18, s79                                      // 00000000449C: BF094F12
	s_cbranch_scc1 1244                                        // 0000000044A0: BF8504DC <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d14>
	s_setprio 0                                                // 0000000044A4: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 0000000044A8: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 0000000044B0: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 0000000044B8: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 0000000044C0: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 0000000044C8: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 0000000044D0: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 0000000044D8: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 0000000044E0: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 0000000044E8: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 0000000044F0: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 0000000044F8: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 000000004500: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 000000004508: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 000000004510: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 000000004518: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 000000004520: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 000000004528: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000004530: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 000000004538: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000004540: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 000000004548: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000004550: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 000000004558: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000004560: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 000000004568: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000004570: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000004578: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 000000004580: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000004588: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 000000004590: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 000000004598: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 0000000045A0: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 0000000045A8: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 0000000045B0: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 0000000045B8: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 0000000045C0: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 0000000045C8: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 0000000045D0: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 0000000045D8: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 0000000045E0: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 0000000045E8: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 0000000045F0: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 0000000045F8: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 000000004600: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 000000004608: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 000000004610: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 000000004618: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 000000004620: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 000000004628: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000004630: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 000000004638: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000004640: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 000000004648: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000004650: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 000000004658: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000004660: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 000000004668: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000004670: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 000000004678: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 000000004680: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 000000004688: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 000000004690: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 000000004698: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 0000000046A0: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 0000000046A8: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 0000000046B0: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 0000000046B8: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 0000000046C0: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 0000000046C8: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 0000000046D0: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 0000000046D8: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 0000000046E0: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 0000000046E8: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 0000000046F0: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 0000000046F8: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 000000004700: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 000000004708: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 000000004710: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 000000004718: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 000000004720: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 000000004728: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000004730: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 000000004738: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000004740: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 000000004748: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000004750: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 000000004758: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000004760: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 000000004768: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000004770: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 000000004778: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 000000004780: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 000000004788: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 000000004790: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 000000004798: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 0000000047A0: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 0000000047A8: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 0000000047B0: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 0000000047B8: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 0000000047C0: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 0000000047C8: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 0000000047D0: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 0000000047D8: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 0000000047E0: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 0000000047E8: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 0000000047F0: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 0000000047F8: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 000000004800: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 000000004808: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 000000004810: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 000000004818: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 000000004820: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000004828: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000004830: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000004838: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000004840: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000004848: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 000000004850: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 000000004858: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 000000004860: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000004868: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 000000004870: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 000000004878: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 000000004880: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 000000004888: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 000000004890: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 000000004898: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 0000000048A0: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 0000000048A8: 7F320398
	v_mov_b32_e32 v151, v150                                   // 0000000048AC: 7F2E0396
	ds_read_b128 v[72:75], v231 offset:49152                   // 0000000048B0: D9FEC000 480000E7
	ds_read_b128 v[76:79], v231 offset:49168                   // 0000000048B8: D9FEC010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:53248                   // 0000000048C0: D9FED000 500000E7
	ds_read_b128 v[84:87], v231 offset:53264                   // 0000000048C8: D9FED010 540000E7
	s_barrier                                                  // 0000000048D0: BF8A0000
	s_setprio 1                                                // 0000000048D4: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 0000000048D8: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 0000000048E0: D3AD0044 020311C0
	ds_read_b128 v[144:147], v231 offset:57344                 // 0000000048E8: D9FEE000 900000E7
	ds_read_b128 v[148:151], v231 offset:57360                 // 0000000048F0: D9FEE010 940000E7
	ds_read_b128 v[156:159], v231 offset:61440                 // 0000000048F8: D9FEF000 9C0000E7
	ds_read_b128 v[160:163], v231 offset:61456                 // 000000004900: D9FEF010 A00000E7
	s_waitcnt lgkmcnt(4)                                       // 000000004908: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 00000000490C: D3AE0070 0203B948
	ds_read_b128 v[164:167], v232 offset:49152                 // 000000004914: D9FEC000 A40000E8
	ds_read_b128 v[168:171], v232 offset:49168                 // 00000000491C: D9FEC010 A80000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 000000004924: D3AE0060 0203B950
	ds_read_b128 v[172:175], v232 offset:53248                 // 00000000492C: D9FED000 AC0000E8
	ds_read_b128 v[176:179], v232 offset:53264                 // 000000004934: D9FED010 B00000E8
	s_waitcnt lgkmcnt(4)                                       // 00000000493C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[144:151], v[220:227], 0// 000000004940: D3AE0050 0203B990
	ds_read_b128 v[146:149], v232 offset:57344                 // 000000004948: D9FEE000 920000E8
	ds_read_b128 v[150:153], v232 offset:57360                 // 000000004950: D9FEE010 960000E8
	s_min_u32 s18, s20, s53                                    // 000000004958: 83923514
	s_add_u32 m0, s88, s34                                     // 00000000495C: 807C2258
	s_nop 0                                                    // 000000004960: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000004964: E05D1000 121500E9
	v_mul_f32_e32 v72, v154, v64                               // 00000000496C: 0A90819A
	v_add_f32_e32 v72, v250, v72                               // 000000004970: 029091FA
	v_mul_f32_e32 v73, v155, v68                               // 000000004974: 0A92899B
	v_add_f32_e32 v250, v72, v73                               // 000000004978: 03F49348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[156:163], v[220:227], 0// 00000000497C: D3AE0040 0203B99C
	ds_read_b128 v[154:157], v232 offset:61440                 // 000000004984: D9FEF000 9A0000E8
	ds_read_b128 v[158:161], v232 offset:61456                 // 00000000498C: D9FEF010 9E0000E8
	s_add_u32 m0, s88, s35                                     // 000000004994: 807C2358
	s_nop 0                                                    // 000000004998: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 00000000499C: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 0000000049A4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[164:171], v[200:207], v[112:127]// 0000000049A8: D3AE0070 05C391A4
	ds_read_b64_tr_b8 v[162:163], v248                         // 0000000049B0: D9C40000 A20000F8
	ds_read_b64_tr_b8 v[164:165], v248 offset:1024             // 0000000049B8: D9C40400 A40000F8
	ds_read_b64_tr_b8 v[166:167], v248 offset:2048             // 0000000049C0: D9C40800 A60000F8
	ds_read_b64_tr_b8 v[168:169], v248 offset:3072             // 0000000049C8: D9C40C00 A80000F8
	s_min_u32 s18, s17, s53                                    // 0000000049D0: 83923511
	s_add_u32 m0, s88, s92                                     // 0000000049D4: 807C5C58
	s_nop 0                                                    // 0000000049D8: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 0000000049DC: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[172:179], v[200:207], v[96:111]// 0000000049E4: D3AE0060 058391AC
	ds_read_b64_tr_b8 v[170:171], v248 offset:256              // 0000000049EC: D9C40100 AA0000F8
	ds_read_b64_tr_b8 v[172:173], v248 offset:1280             // 0000000049F4: D9C40500 AC0000F8
	ds_read_b64_tr_b8 v[174:175], v248 offset:2304             // 0000000049FC: D9C40900 AE0000F8
	ds_read_b64_tr_b8 v[176:177], v248 offset:3328             // 000000004A04: D9C40D00 B00000F8
	s_add_u32 m0, s88, s12                                     // 000000004A0C: 807C0C58
	s_nop 0                                                    // 000000004A10: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000004A14: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 000000004A1C: 80142114
	s_add_u32 s17, s17, s33                                    // 000000004A20: 80112111
	v_max_f32_e32 v144, v112, v113                             // 000000004A24: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 000000004A28: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 000000004A30: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 000000004A38: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 000000004A40: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 000000004A48: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 000000004A50: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 000000004A58: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 000000004A60: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[146:153], v[200:207], v[80:95]// 000000004A64: D3AE0050 05439192
	ds_read_b64_tr_b8 v[178:179], v248 offset:512              // 000000004A6C: D9C40200 B20000F8
	ds_read_b64_tr_b8 v[180:181], v248 offset:1536             // 000000004A74: D9C40600 B40000F8
	ds_read_b64_tr_b8 v[182:183], v248 offset:2560             // 000000004A7C: D9C40A00 B60000F8
	ds_read_b64_tr_b8 v[184:185], v248 offset:3584             // 000000004A84: D9C40E00 B80000F8
	v_max_f32_e32 v145, v96, v97                               // 000000004A8C: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 000000004A90: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 000000004A98: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 000000004AA0: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 000000004AA8: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 000000004AB0: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 000000004AB8: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 000000004AC0: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[154:161], v[200:207], v[64:79]// 000000004AC8: D3AE0040 0503919A
	s_nop 3                                                    // 000000004AD0: BF800003
	v_max_f32_e32 v146, v80, v81                               // 000000004AD4: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 000000004AD8: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 000000004AE0: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 000000004AE8: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 000000004AF0: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 000000004AF8: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 000000004B00: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 000000004B08: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 000000004B10: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[162:169], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000004B14: D3AC0000 0003F7F2 D3AE0830 04C301A2
	ds_read_b64_tr_b8 v[148:149], v248 offset:768              // 000000004B24: D9C40300 940000F8
	ds_read_b64_tr_b8 v[150:151], v248 offset:1792             // 000000004B2C: D9C40700 960000F8
	ds_read_b64_tr_b8 v[152:153], v248 offset:2816             // 000000004B34: D9C40B00 980000F8
	ds_read_b64_tr_b8 v[154:155], v248 offset:3840             // 000000004B3C: D9C40F00 9A0000F8
	ds_read_b64_tr_b8 v[156:157], v248 offset:4096             // 000000004B44: D9C41000 9C0000F8
	ds_read_b64_tr_b8 v[158:159], v248 offset:5120             // 000000004B4C: D9C41400 9E0000F8
	ds_read_b64_tr_b8 v[160:161], v248 offset:6144             // 000000004B54: D9C41800 A00000F8
	ds_read_b64_tr_b8 v[162:163], v248 offset:7168             // 000000004B5C: D9C41C00 A20000F8
	v_max_f32_e32 v147, v64, v65                               // 000000004B64: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 000000004B68: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 000000004B70: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 000000004B78: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 000000004B80: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 000000004B88: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 000000004B90: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 000000004B98: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[170:177], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000004BA0: D3AC0000 0003F7F2 D3AE0820 048301AA
	v_max_f32_e32 v144, v144, v145                             // 000000004BB0: 17212390
	v_max_f32_e32 v146, v146, v147                             // 000000004BB4: 17252792
	v_mov_b32_e32 v145, v144                                   // 000000004BB8: 7F220390
	v_mov_b32_e32 v147, v146                                   // 000000004BBC: 7F260392
	s_nop 0                                                    // 000000004BC0: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 000000004BC4: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 000000004BC8: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 000000004BCC: 17212390
	v_max_f32_e32 v145, v146, v147                             // 000000004BD0: 17232792
	s_waitcnt lgkmcnt(4)                                       // 000000004BD4: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[178:185], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000004BD8: D3AC0000 0003F7F2 D3AE0810 044301B2
	ds_read_b64_tr_b8 v[164:165], v248 offset:4352             // 000000004BE8: D9C41100 A40000F8
	ds_read_b64_tr_b8 v[166:167], v248 offset:5376             // 000000004BF0: D9C41500 A60000F8
	ds_read_b64_tr_b8 v[168:169], v248 offset:6400             // 000000004BF8: D9C41900 A80000F8
	ds_read_b64_tr_b8 v[170:171], v248 offset:7424             // 000000004C00: D9C41D00 AA0000F8
	ds_read_b64_tr_b8 v[172:173], v248 offset:4608             // 000000004C08: D9C41200 AC0000F8
	ds_read_b64_tr_b8 v[174:175], v248 offset:5632             // 000000004C10: D9C41600 AE0000F8
	ds_read_b64_tr_b8 v[176:177], v248 offset:6656             // 000000004C18: D9C41A00 B00000F8
	ds_read_b64_tr_b8 v[178:179], v248 offset:7680             // 000000004C20: D9C41E00 B20000F8
	v_max_f32_e32 v146, v144, v145                             // 000000004C28: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 000000004C2C: 0B2525EE
	v_max_f32_e32 v146, v252, v146                             // 000000004C30: 172525FC
	v_sub_f32_e32 v147, v146, v252                             // 000000004C34: 0527F992
	v_cmp_lt_f32_e32 vcc, s48, v147                            // 000000004C38: 7C832630
	s_cmp_lg_u64 vcc, 0                                        // 000000004C3C: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 000000004C40: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 000000004C44: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[148:155], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000004C48: D3AC0000 0003F7F2 D3AE0800 04030194
	v_cndmask_b32_e64 v148, v252, v146, s[18:19]               // 000000004C58: D1000094 004B25FC
	v_fma_f32 v128, v144, v238, -v148                          // 000000004C60: D1CB0080 8653DD90
	v_floor_f32_e32 v128, v128                                 // 000000004C68: 7F003F80
	v_med3_f32 v128, v128, s98, 0                              // 000000004C6C: D1D60080 0200C580
	v_cvt_i32_f32_e32 v129, v128                               // 000000004C74: 7F021180
	v_add_u32_e32 v251, 0x7f, v129                             // 000000004C78: 69F702FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v251                           // 000000004C80: 2535F697
	v_fma_f32 v129, v145, v238, -v148                          // 000000004C84: D1CB0081 8653DD91
	s_waitcnt lgkmcnt(4)                                       // 000000004C8C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000004C90: D3AC0000 0003FBF2 D3AE0830 04C3119C
	ds_read_b64_tr_b8 v[156:157], v248 offset:4864             // 000000004CA0: D9C41300 9C0000F8
	ds_read_b64_tr_b8 v[158:159], v248 offset:5888             // 000000004CA8: D9C41700 9E0000F8
	ds_read_b64_tr_b8 v[160:161], v248 offset:6912             // 000000004CB0: D9C41B00 A00000F8
	ds_read_b64_tr_b8 v[162:163], v248 offset:7936             // 000000004CB8: D9C41F00 A20000F8
	v_floor_f32_e32 v129, v129                                 // 000000004CC0: 7F023F81
	v_med3_f32 v129, v129, s98, 0                              // 000000004CC4: D1D60081 0200C581
	v_cvt_i32_f32_e32 v130, v129                               // 000000004CCC: 7F041181
	v_add_u32_e32 v149, 0x7f, v130                             // 000000004CD0: 692B04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v149                           // 000000004CD8: 25372A97
	v_mov_b32_e32 v130, s50                                    // 000000004CDC: 7F040232
	v_fma_f32 v130, v148, s99, v130                            // 000000004CE0: D1CB0082 0608C794
	v_fma_f32 v152, v128, s99, v130                            // 000000004CE8: D1CB0098 0608C780
	v_fma_f32 v150, v129, s99, v130                            // 000000004CF0: D1CB0096 0608C781
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000004CF8: D3AC0000 0003FBF2 D3AE0820 048311A4
	s_waitcnt lgkmcnt(0)                                       // 000000004D08: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000004D0C: D3AC0000 0003FBF2 D3AE0810 044311AC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000004D1C: D3AC0000 0003FBF2 D3AE0800 0403119C
	s_cmp_eq_u32 s21, 0                                        // 000000004D2C: BF068015
	s_cbranch_scc1 68                                          // 000000004D30: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3344>
	v_sub_f32_e32 v128, v252, v148                             // 000000004D34: 050129FC
	v_exp_f32_e32 v128, v128                                   // 000000004D38: 7F004180
	s_nop 0                                                    // 000000004D3C: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 000000004D40: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 000000004D48: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000004D50: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000004D58: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000004D60: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000004D68: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000004D70: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000004D78: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000004D80: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000004D88: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000004D90: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000004D98: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000004DA0: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000004DA8: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000004DB0: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000004DB8: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000004DC0: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000004DC8: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000004DD0: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000004DD8: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000004DE0: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000004DE8: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000004DF0: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 000000004DF8: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 000000004E00: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 000000004E08: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 000000004E10: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 000000004E18: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 000000004E20: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 000000004E28: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 000000004E30: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 000000004E38: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 000000004E40: 0BF501FA
	s_waitcnt vmcnt(4)                                         // 000000004E44: BF8C0F74
	s_barrier                                                  // 000000004E48: BF8A0000
	s_add_u32 s42, s42, 1                                      // 000000004E4C: 802A812A
	s_add_u32 s18, s42, 1                                      // 000000004E50: 8012812A
	s_cmp_ge_u32 s18, s79                                      // 000000004E54: BF094F12
	s_cbranch_scc1 620                                         // 000000004E58: BF85026C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d0c>
	s_setprio 0                                                // 000000004E5C: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000004E60: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 000000004E68: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 000000004E70: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 000000004E78: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 000000004E80: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 000000004E88: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 000000004E90: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 000000004E98: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 000000004EA0: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 000000004EA8: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 000000004EB0: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 000000004EB8: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 000000004EC0: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 000000004EC8: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 000000004ED0: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 000000004ED8: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 000000004EE0: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000004EE8: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 000000004EF0: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000004EF8: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 000000004F00: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000004F08: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 000000004F10: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000004F18: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 000000004F20: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000004F28: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000004F30: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 000000004F38: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000004F40: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 000000004F48: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 000000004F50: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 000000004F58: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 000000004F60: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 000000004F68: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 000000004F70: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 000000004F78: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 000000004F80: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 000000004F88: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 000000004F90: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 000000004F98: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 000000004FA0: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 000000004FA8: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 000000004FB0: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 000000004FB8: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 000000004FC0: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 000000004FC8: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 000000004FD0: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 000000004FD8: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 000000004FE0: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000004FE8: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 000000004FF0: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000004FF8: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 000000005000: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000005008: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 000000005010: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000005018: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 000000005020: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000005028: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 000000005030: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 000000005038: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 000000005040: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 000000005048: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 000000005050: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 000000005058: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 000000005060: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 000000005068: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 000000005070: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 000000005078: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 000000005080: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 000000005088: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 000000005090: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 000000005098: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 0000000050A0: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 0000000050A8: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 0000000050B0: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 0000000050B8: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 0000000050C0: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 0000000050C8: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 0000000050D0: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 0000000050D8: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 0000000050E0: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 0000000050E8: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 0000000050F0: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 0000000050F8: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 000000005100: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000005108: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 000000005110: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000005118: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 000000005120: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000005128: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 000000005130: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 000000005138: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 000000005140: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 000000005148: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 000000005150: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 000000005158: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 000000005160: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000005168: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 000000005170: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 000000005178: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 000000005180: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 000000005188: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 000000005190: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 000000005198: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 0000000051A0: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 0000000051A8: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 0000000051B0: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 0000000051B8: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 0000000051C0: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 0000000051C8: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 0000000051D0: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 0000000051D8: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 0000000051E0: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 0000000051E8: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 0000000051F0: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 0000000051F8: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000005200: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 000000005208: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 000000005210: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 000000005218: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000005220: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 000000005228: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 000000005230: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 000000005238: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 000000005240: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 000000005248: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 000000005250: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 000000005258: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 000000005260: 7F320398
	v_mov_b32_e32 v151, v150                                   // 000000005264: 7F2E0396
	ds_read_b128 v[72:75], v231                                // 000000005268: D9FE0000 480000E7
	ds_read_b128 v[76:79], v231 offset:16                      // 000000005270: D9FE0010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:4096                    // 000000005278: D9FE1000 500000E7
	ds_read_b128 v[84:87], v231 offset:4112                    // 000000005280: D9FE1010 540000E7
	s_barrier                                                  // 000000005288: BF8A0000
	s_setprio 1                                                // 00000000528C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 000000005290: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 000000005298: D3AD0044 020311C0
	ds_read_b128 v[156:159], v231 offset:8192                  // 0000000052A0: D9FE2000 9C0000E7
	ds_read_b128 v[160:163], v231 offset:8208                  // 0000000052A8: D9FE2010 A00000E7
	ds_read_b128 v[164:167], v231 offset:12288                 // 0000000052B0: D9FE3000 A40000E7
	ds_read_b128 v[168:171], v231 offset:12304                 // 0000000052B8: D9FE3010 A80000E7
	s_waitcnt lgkmcnt(4)                                       // 0000000052C0: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 0000000052C4: D3AE0070 0203B948
	ds_read_b128 v[172:175], v232                              // 0000000052CC: D9FE0000 AC0000E8
	ds_read_b128 v[176:179], v232 offset:16                    // 0000000052D4: D9FE0010 B00000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 0000000052DC: D3AE0060 0203B950
	ds_read_b128 v[180:183], v232 offset:4096                  // 0000000052E4: D9FE1000 B40000E8
	ds_read_b128 v[184:187], v232 offset:4112                  // 0000000052EC: D9FE1010 B80000E8
	s_waitcnt lgkmcnt(4)                                       // 0000000052F4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[156:163], v[220:227], 0// 0000000052F8: D3AE0050 0203B99C
	ds_read_b128 v[156:159], v232 offset:8192                  // 000000005300: D9FE2000 9C0000E8
	ds_read_b128 v[160:163], v232 offset:8208                  // 000000005308: D9FE2010 A00000E8
	s_min_u32 s18, s20, s53                                    // 000000005310: 83923514
	s_add_u32 m0, s88, s13                                     // 000000005314: 807C0D58
	s_nop 0                                                    // 000000005318: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 00000000531C: E05D1000 121500E9
	v_mul_f32_e32 v72, v154, v64                               // 000000005324: 0A90819A
	v_add_f32_e32 v72, v250, v72                               // 000000005328: 029091FA
	v_mul_f32_e32 v73, v155, v68                               // 00000000532C: 0A92899B
	v_add_f32_e32 v250, v72, v73                               // 000000005330: 03F49348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[164:171], v[220:227], 0// 000000005334: D3AE0040 0203B9A4
	ds_read_b128 v[164:167], v232 offset:12288                 // 00000000533C: D9FE3000 A40000E8
	ds_read_b128 v[168:171], v232 offset:12304                 // 000000005344: D9FE3010 A80000E8
	s_add_u32 m0, s88, s6                                      // 00000000534C: 807C0658
	s_nop 0                                                    // 000000005350: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 000000005354: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 00000000535C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[172:179], v[200:207], v[112:127]// 000000005360: D3AE0070 05C391AC
	ds_read_b64_tr_b8 v[172:173], v249                         // 000000005368: D9C40000 AC0000F9
	ds_read_b64_tr_b8 v[174:175], v249 offset:1024             // 000000005370: D9C40400 AE0000F9
	ds_read_b64_tr_b8 v[176:177], v249 offset:2048             // 000000005378: D9C40800 B00000F9
	ds_read_b64_tr_b8 v[178:179], v249 offset:3072             // 000000005380: D9C40C00 B20000F9
	s_min_u32 s18, s17, s53                                    // 000000005388: 83923511
	s_add_u32 m0, s88, s93                                     // 00000000538C: 807C5D58
	s_nop 0                                                    // 000000005390: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000005394: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[180:187], v[200:207], v[96:111]// 00000000539C: D3AE0060 058391B4
	ds_read_b64_tr_b8 v[180:181], v249 offset:256              // 0000000053A4: D9C40100 B40000F9
	ds_read_b64_tr_b8 v[182:183], v249 offset:1280             // 0000000053AC: D9C40500 B60000F9
	ds_read_b64_tr_b8 v[184:185], v249 offset:2304             // 0000000053B4: D9C40900 B80000F9
	ds_read_b64_tr_b8 v[186:187], v249 offset:3328             // 0000000053BC: D9C40D00 BA0000F9
	s_add_u32 m0, s88, s76                                     // 0000000053C4: 807C4C58
	s_nop 0                                                    // 0000000053C8: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 0000000053CC: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 0000000053D4: 80142114
	s_add_u32 s17, s17, s33                                    // 0000000053D8: 80112111
	v_max_f32_e32 v144, v112, v113                             // 0000000053DC: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 0000000053E0: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 0000000053E8: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 0000000053F0: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 0000000053F8: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 000000005400: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 000000005408: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 000000005410: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 000000005418: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[156:163], v[200:207], v[80:95]// 00000000541C: D3AE0050 0543919C
	ds_read_b64_tr_b8 v[150:151], v249 offset:512              // 000000005424: D9C40200 960000F9
	ds_read_b64_tr_b8 v[152:153], v249 offset:1536             // 00000000542C: D9C40600 980000F9
	ds_read_b64_tr_b8 v[154:155], v249 offset:2560             // 000000005434: D9C40A00 9A0000F9
	ds_read_b64_tr_b8 v[156:157], v249 offset:3584             // 00000000543C: D9C40E00 9C0000F9
	v_max_f32_e32 v145, v96, v97                               // 000000005444: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 000000005448: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 000000005450: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 000000005458: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 000000005460: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 000000005468: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 000000005470: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 000000005478: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[164:171], v[200:207], v[64:79]// 000000005480: D3AE0040 050391A4
	s_nop 3                                                    // 000000005488: BF800003
	v_max_f32_e32 v146, v80, v81                               // 00000000548C: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 000000005490: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 000000005498: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 0000000054A0: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 0000000054A8: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 0000000054B0: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 0000000054B8: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 0000000054C0: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 0000000054C8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[172:179], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 0000000054CC: D3AC0000 0003F7F2 D3AE0830 04C301AC
	ds_read_b64_tr_b8 v[158:159], v249 offset:768              // 0000000054DC: D9C40300 9E0000F9
	ds_read_b64_tr_b8 v[160:161], v249 offset:1792             // 0000000054E4: D9C40700 A00000F9
	ds_read_b64_tr_b8 v[162:163], v249 offset:2816             // 0000000054EC: D9C40B00 A20000F9
	ds_read_b64_tr_b8 v[164:165], v249 offset:3840             // 0000000054F4: D9C40F00 A40000F9
	ds_read_b64_tr_b8 v[166:167], v249 offset:4096             // 0000000054FC: D9C41000 A60000F9
	ds_read_b64_tr_b8 v[168:169], v249 offset:5120             // 000000005504: D9C41400 A80000F9
	ds_read_b64_tr_b8 v[170:171], v249 offset:6144             // 00000000550C: D9C41800 AA0000F9
	ds_read_b64_tr_b8 v[172:173], v249 offset:7168             // 000000005514: D9C41C00 AC0000F9
	v_max_f32_e32 v147, v64, v65                               // 00000000551C: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 000000005520: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 000000005528: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 000000005530: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 000000005538: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 000000005540: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 000000005548: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 000000005550: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[180:187], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000005558: D3AC0000 0003F7F2 D3AE0820 048301B4
	v_max_f32_e32 v144, v144, v145                             // 000000005568: 17212390
	v_max_f32_e32 v146, v146, v147                             // 00000000556C: 17252792
	v_mov_b32_e32 v145, v144                                   // 000000005570: 7F220390
	v_mov_b32_e32 v147, v146                                   // 000000005574: 7F260392
	s_nop 0                                                    // 000000005578: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 00000000557C: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 000000005580: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 000000005584: 17212390
	v_max_f32_e32 v145, v146, v147                             // 000000005588: 17232792
	s_waitcnt lgkmcnt(4)                                       // 00000000558C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[150:157], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000005590: D3AC0000 0003F7F2 D3AE0810 04430196
	ds_read_b64_tr_b8 v[174:175], v249 offset:4352             // 0000000055A0: D9C41100 AE0000F9
	ds_read_b64_tr_b8 v[176:177], v249 offset:5376             // 0000000055A8: D9C41500 B00000F9
	ds_read_b64_tr_b8 v[178:179], v249 offset:6400             // 0000000055B0: D9C41900 B20000F9
	ds_read_b64_tr_b8 v[180:181], v249 offset:7424             // 0000000055B8: D9C41D00 B40000F9
	ds_read_b64_tr_b8 v[182:183], v249 offset:4608             // 0000000055C0: D9C41200 B60000F9
	ds_read_b64_tr_b8 v[184:185], v249 offset:5632             // 0000000055C8: D9C41600 B80000F9
	ds_read_b64_tr_b8 v[186:187], v249 offset:6656             // 0000000055D0: D9C41A00 BA0000F9
	ds_read_b64_tr_b8 v[188:189], v249 offset:7680             // 0000000055D8: D9C41E00 BC0000F9
	v_max_f32_e32 v146, v144, v145                             // 0000000055E0: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 0000000055E4: 0B2525EE
	v_max_f32_e32 v146, v148, v146                             // 0000000055E8: 17252594
	v_sub_f32_e32 v147, v146, v148                             // 0000000055EC: 05272992
	v_cmp_lt_f32_e32 vcc, s48, v147                            // 0000000055F0: 7C832630
	s_cmp_lg_u64 vcc, 0                                        // 0000000055F4: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 0000000055F8: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 0000000055FC: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[158:165], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000005600: D3AC0000 0003F7F2 D3AE0800 0403019E
	v_cndmask_b32_e64 v252, v148, v146, s[18:19]               // 000000005610: D10000FC 004B2594
	v_fma_f32 v128, v144, v238, -v252                          // 000000005618: D1CB0080 87F3DD90
	v_floor_f32_e32 v128, v128                                 // 000000005620: 7F003F80
	v_med3_f32 v128, v128, s98, 0                              // 000000005624: D1D60080 0200C580
	v_cvt_i32_f32_e32 v129, v128                               // 00000000562C: 7F021180
	v_add_u32_e32 v251, 0x7f, v129                             // 000000005630: 69F702FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v251                           // 000000005638: 2535F697
	v_fma_f32 v129, v145, v238, -v252                          // 00000000563C: D1CB0081 87F3DD91
	s_waitcnt lgkmcnt(4)                                       // 000000005644: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[166:173], v[136:143], v[48:63], v242, v149 op_sel_hi:[0,0,0]// 000000005648: D3AC0000 00032BF2 D3AE0830 04C311A6
	ds_read_b64_tr_b8 v[156:157], v249 offset:4864             // 000000005658: D9C41300 9C0000F9
	ds_read_b64_tr_b8 v[158:159], v249 offset:5888             // 000000005660: D9C41700 9E0000F9
	ds_read_b64_tr_b8 v[160:161], v249 offset:6912             // 000000005668: D9C41B00 A00000F9
	ds_read_b64_tr_b8 v[162:163], v249 offset:7936             // 000000005670: D9C41F00 A20000F9
	v_floor_f32_e32 v129, v129                                 // 000000005678: 7F023F81
	v_med3_f32 v129, v129, s98, 0                              // 00000000567C: D1D60081 0200C581
	v_cvt_i32_f32_e32 v130, v129                               // 000000005684: 7F041181
	v_add_u32_e32 v253, 0x7f, v130                             // 000000005688: 69FB04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v253                           // 000000005690: 2537FA97
	v_mov_b32_e32 v130, s50                                    // 000000005694: 7F040232
	v_fma_f32 v130, v252, s99, v130                            // 000000005698: D1CB0082 0608C7FC
	v_fma_f32 v152, v128, s99, v130                            // 0000000056A0: D1CB0098 0608C780
	v_fma_f32 v150, v129, s99, v130                            // 0000000056A8: D1CB0096 0608C781
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[174:181], v[136:143], v[32:47], v242, v149 op_sel_hi:[0,0,0]// 0000000056B0: D3AC0000 00032BF2 D3AE0820 048311AE
	s_waitcnt lgkmcnt(0)                                       // 0000000056C0: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[182:189], v[136:143], v[16:31], v242, v149 op_sel_hi:[0,0,0]// 0000000056C4: D3AC0000 00032BF2 D3AE0810 044311B6
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v149 op_sel_hi:[0,0,0]// 0000000056D4: D3AC0000 00032BF2 D3AE0800 0403119C
	s_cmp_eq_u32 s21, 0                                        // 0000000056E4: BF068015
	s_cbranch_scc1 68                                          // 0000000056E8: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3cfc>
	v_sub_f32_e32 v128, v148, v252                             // 0000000056EC: 0501F994
	v_exp_f32_e32 v128, v128                                   // 0000000056F0: 7F004180
	s_nop 0                                                    // 0000000056F4: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 0000000056F8: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 000000005700: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000005708: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000005710: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000005718: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000005720: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000005728: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000005730: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000005738: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000005740: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000005748: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000005750: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000005758: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000005760: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000005768: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000005770: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000005778: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000005780: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000005788: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000005790: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000005798: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 0000000057A0: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 0000000057A8: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 0000000057B0: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 0000000057B8: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 0000000057C0: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 0000000057C8: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 0000000057D0: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 0000000057D8: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 0000000057E0: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 0000000057E8: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 0000000057F0: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 0000000057F8: 0BF501FA
	s_waitcnt vmcnt(4)                                         // 0000000057FC: BF8C0F74
	s_barrier                                                  // 000000005800: BF8A0000
	s_add_u32 s42, s42, 1                                      // 000000005804: 802A812A
	s_branch 63047                                             // 000000005808: BF82F647 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1628>
	v_mov_b32_e32 v253, v149                                   // 00000000580C: 7FFA0395
	v_mov_b32_e32 v252, v148                                   // 000000005810: 7FF80394
	s_add_u32 s17, s42, s78                                    // 000000005814: 80114E2A
	s_bitcmp1_b32 s17, 0                                       // 000000005818: BF0D8011
	s_cbranch_scc1 1540                                        // 00000000581C: BF850604 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5530>
	s_branch 5                                                 // 000000005820: BF820005 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d38>
	v_mov_b32_e32 v253, v149                                   // 000000005824: 7FFA0395
	v_mov_b32_e32 v252, v148                                   // 000000005828: 7FF80394
	s_add_u32 s17, s42, s78                                    // 00000000582C: 80114E2A
	s_bitcmp1_b32 s17, 0                                       // 000000005830: BF0D8011
	s_cbranch_scc1 1534                                        // 000000005834: BF8505FE <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5530>
	s_add_u32 s17, s42, 1                                      // 000000005838: 8011812A
	s_cmp_ge_u32 s17, s96                                      // 00000000583C: BF096011
	s_cbranch_scc1 3066                                        // 000000005840: BF850BFA <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6d2c>
	s_cmp_ge_u32 s42, s79                                      // 000000005844: BF094F2A
	s_cbranch_scc1 1075                                        // 000000005848: BF850433 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4e18>
	s_setprio 0                                                // 00000000584C: BF8F0000
	v_fma_f32 v108, v108, v239, v152                           // 000000005850: D1CB006C 0663DF6C
	v_fma_f32 v64, v64, v239, v150                             // 000000005858: D1CB0040 065BDF40
	v_fma_f32 v68, v68, v239, v150                             // 000000005860: D1CB0044 065BDF44
	s_add_u32 s17, s42, s78                                    // 000000005868: 80114E2A
	v_fma_f32 v96, v96, v239, v152                             // 00000000586C: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 000000005874: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 00000000587C: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 000000005884: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 00000000588C: D1CB0068 0663DF68
	v_fma_f32 v109, v109, v239, v152                           // 000000005894: D1CB006D 0663DF6D
	v_fma_f32 v80, v80, v239, v150                             // 00000000589C: D1CB0050 065BDF50
	v_fma_f32 v65, v65, v239, v150                             // 0000000058A4: D1CB0041 065BDF41
	v_fma_f32 v84, v84, v239, v150                             // 0000000058AC: D1CB0054 065BDF54
	v_fma_f32 v69, v69, v239, v150                             // 0000000058B4: D1CB0045 065BDF45
	v_fma_f32 v72, v72, v239, v150                             // 0000000058BC: D1CB0048 065BDF48
	v_fma_f32 v92, v92, v239, v150                             // 0000000058C4: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 0000000058CC: D1DD006C 0201016C
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 0000000058D4: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 0000000058DC: D1DD0044 02010144
	s_add_u32 s18, s17, 1                                      // 0000000058E4: 80128111
	v_fma_f32 v97, v97, v239, v152                             // 0000000058E8: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 0000000058F0: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 0000000058F8: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 000000005900: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 000000005908: D1CB0069 0663DF69
	v_fma_f32 v110, v110, v239, v152                           // 000000005910: D1CB006E 0663DF6E
	v_fma_f32 v81, v81, v239, v150                             // 000000005918: D1CB0051 065BDF51
	v_fma_f32 v66, v66, v239, v150                             // 000000005920: D1CB0042 065BDF42
	v_fma_f32 v85, v85, v239, v150                             // 000000005928: D1CB0055 065BDF55
	v_fma_f32 v70, v70, v239, v150                             // 000000005930: D1CB0046 065BDF46
	v_fma_f32 v88, v88, v239, v150                             // 000000005938: D1CB0058 065BDF58
	v_fma_f32 v73, v73, v239, v150                             // 000000005940: D1CB0049 065BDF49
	v_fma_f32 v93, v93, v239, v150                             // 000000005948: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000005950: D1DD0060 02010160
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000005958: D1DD0074 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000005960: D1DD0064 02010164
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000005968: D1DD0078 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000005970: D1DD0068 02010168
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000005978: D1DD0050 02010150
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000005980: D1DD0054 02010154
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000005988: D1DD0048 02010148
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000005990: D1DD005C 0201015C
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 000000005998: D1DD006C 05B1036D
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 0000000059A0: D1DD0040 05010341
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 0000000059A8: D1DD0044 05110345
	s_and_b32 s18, s18, 3                                      // 0000000059B0: 86128312
	v_fma_f32 v98, v98, v239, v152                             // 0000000059B4: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 0000000059BC: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 0000000059C4: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 0000000059CC: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 0000000059D4: D1CB006A 0663DF6A
	v_fma_f32 v111, v111, v239, v152                           // 0000000059DC: D1CB006F 0663DF6F
	v_fma_f32 v82, v82, v239, v150                             // 0000000059E4: D1CB0052 065BDF52
	v_fma_f32 v86, v86, v239, v150                             // 0000000059EC: D1CB0056 065BDF56
	v_fma_f32 v71, v71, v239, v150                             // 0000000059F4: D1CB0047 065BDF47
	v_fma_f32 v89, v89, v239, v150                             // 0000000059FC: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000005A04: D1DD0058 02010158
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000005A0C: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v116                         // 000000005A14: D1DD0061 05D10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 000000005A1C: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v120                        // 000000005A24: D1DD0065 05E10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 000000005A2C: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000005A34: D1DD0050 05410351
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 000000005A3C: D1DD0041 05510355
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 000000005A44: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v93, 1, v92                           // 000000005A4C: D1DD0049 0571035D
	v_cvt_pk_u8_f32 v93, v110, 2, v108                         // 000000005A54: D1DD005D 05B1056E
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000005A5C: D1DD0040 05010542
	v_cvt_pk_u8_f32 v66, v70, 2, v68                           // 000000005A64: D1DD0042 05110546
	s_lshl_b32 s18, s18, 14                                    // 000000005A6C: 8E128E12
	v_fma_f32 v99, v99, v239, v152                             // 000000005A70: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 000000005A78: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 000000005A80: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 000000005A88: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 000000005A90: D1CB006B 0663DF6B
	v_fma_f32 v83, v83, v239, v150                             // 000000005A98: D1CB0053 065BDF53
	v_fma_f32 v87, v87, v239, v150                             // 000000005AA0: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 000000005AA8: D1DD0045 05610359
	v_cvt_pk_u8_f32 v81, v98, 2, v96                           // 000000005AB0: D1DD0051 05810562
	v_cvt_pk_u8_f32 v84, v118, 2, v97                          // 000000005AB8: D1DD0054 05850576
	v_cvt_pk_u8_f32 v85, v102, 2, v100                         // 000000005AC0: D1DD0055 05910566
	v_cvt_pk_u8_f32 v88, v122, 2, v101                         // 000000005AC8: D1DD0058 0595057A
	v_cvt_pk_u8_f32 v89, v106, 2, v104                         // 000000005AD0: D1DD0059 05A1056A
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000005AD8: D1DD0050 05410552
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 000000005AE0: D1DD0041 05050556
	v_cvt_pk_u8_f32 v215, v111, 3, v93                         // 000000005AE8: D1DD00D7 0575076F
	v_cvt_pk_u8_f32 v93, v71, 3, v66                           // 000000005AF0: D1DD005D 05090747
	v_or_b32_e32 v71, s18, v231                                // 000000005AF8: 288FCE12
	v_cvt_pk_u8_f32 v212, v99, 3, v81                          // 000000005AFC: D1DD00D4 05450763
	v_cvt_pk_u8_f32 v209, v119, 3, v84                         // 000000005B04: D1DD00D1 05510777
	v_cvt_pk_u8_f32 v213, v103, 3, v85                         // 000000005B0C: D1DD00D5 05550767
	v_cvt_pk_u8_f32 v210, v123, 3, v88                         // 000000005B14: D1DD00D2 0561077B
	v_cvt_pk_u8_f32 v214, v107, 3, v89                         // 000000005B1C: D1DD00D6 0565076B
	v_cvt_pk_u8_f32 v88, v83, 3, v80                           // 000000005B24: D1DD0058 05410753
	v_cvt_pk_u8_f32 v89, v87, 3, v65                           // 000000005B2C: D1DD0059 05050757
	ds_read_b128 v[80:83], v71                                 // 000000005B34: D9FE0000 50000047
	ds_read_b128 v[84:87], v71 offset:16                       // 000000005B3C: D9FE0010 54000047
	ds_read_b128 v[96:99], v71 offset:4096                     // 000000005B44: D9FE1000 60000047
	ds_read_b128 v[100:103], v71 offset:4112                   // 000000005B4C: D9FE1010 64000047
	v_fma_f32 v112, v112, v239, v152                           // 000000005B54: D1CB0070 0663DF70
	v_fma_f32 v124, v124, v239, v152                           // 000000005B5C: D1CB007C 0663DF7C
	v_fma_f32 v113, v113, v239, v152                           // 000000005B64: D1CB0071 0663DF71
	v_fma_f32 v125, v125, v239, v152                           // 000000005B6C: D1CB007D 0663DF7D
	v_fma_f32 v76, v76, v239, v150                             // 000000005B74: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000005B7C: D1DD0070 02010170
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000005B84: D1DD007C 0201017C
	v_fma_f32 v114, v114, v239, v152                           // 000000005B8C: D1CB0072 0663DF72
	v_fma_f32 v126, v126, v239, v152                           // 000000005B94: D1CB007E 0663DF7E
	v_fma_f32 v77, v77, v239, v150                             // 000000005B9C: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000005BA4: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000005BAC: D1DD0070 05C10371
	v_cvt_pk_u8_f32 v105, v125, 1, v124                        // 000000005BB4: D1DD0069 05F1037D
	v_fma_f32 v115, v115, v239, v152                           // 000000005BBC: D1CB0073 0663DF73
	v_fma_f32 v127, v127, v239, v152                           // 000000005BC4: D1CB007F 0663DF7F
	v_fma_f32 v90, v90, v239, v150                             // 000000005BCC: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 000000005BD4: D1CB004A 065BDF4A
	v_fma_f32 v94, v94, v239, v150                             // 000000005BDC: D1CB005E 065BDF5E
	v_fma_f32 v78, v78, v239, v150                             // 000000005BE4: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v76, v77, 1, v76                           // 000000005BEC: D1DD004C 0531034D
	v_cvt_pk_u8_f32 v77, v114, 2, v112                         // 000000005BF4: D1DD004D 05C10572
	v_cvt_pk_u8_f32 v92, v126, 2, v105                         // 000000005BFC: D1DD005C 05A5057E
	v_fma_f32 v67, v67, v239, v150                             // 000000005C04: D1CB0043 065BDF43
	v_fma_f32 v91, v91, v239, v150                             // 000000005C0C: D1CB005B 065BDF5B
	v_fma_f32 v75, v75, v239, v150                             // 000000005C14: D1CB004B 065BDF4B
	v_fma_f32 v95, v95, v239, v150                             // 000000005C1C: D1CB005F 065BDF5F
	v_fma_f32 v79, v79, v239, v150                             // 000000005C24: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v68, v90, 2, v69                           // 000000005C2C: D1DD0044 0515055A
	v_cvt_pk_u8_f32 v69, v74, 2, v72                           // 000000005C34: D1DD0045 0521054A
	v_cvt_pk_u8_f32 v70, v94, 2, v73                           // 000000005C3C: D1DD0046 0525055E
	v_cvt_pk_u8_f32 v72, v78, 2, v76                           // 000000005C44: D1DD0048 0531054E
	v_cvt_pk_u8_f32 v208, v115, 3, v77                         // 000000005C4C: D1DD00D0 05350773
	v_cvt_pk_u8_f32 v211, v127, 3, v92                         // 000000005C54: D1DD00D3 0571077F
	v_cvt_pk_u8_f32 v92, v67, 3, v64                           // 000000005C5C: D1DD005C 05010743
	v_cvt_pk_u8_f32 v90, v91, 3, v68                           // 000000005C64: D1DD005A 0511075B
	v_cvt_pk_u8_f32 v94, v75, 3, v69                           // 000000005C6C: D1DD005E 0515074B
	v_cvt_pk_u8_f32 v91, v95, 3, v70                           // 000000005C74: D1DD005B 0519075F
	v_cvt_pk_u8_f32 v95, v79, 3, v72                           // 000000005C7C: D1DD005F 0521074F
	s_barrier                                                  // 000000005C84: BF8A0000
	s_and_b32 s17, s17, 3                                      // 000000005C88: 86118311
	s_setprio 1                                                // 000000005C8C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[208:215], 0// 000000005C90: D3AD0040 0203A1C0
	scratch_store_dwordx4 off, v[88:91], off                   // 000000005C98: DC7C4000 007F5800
	s_nop 0                                                    // 000000005CA0: BF800000
	scratch_store_dwordx4 off, v[92:95], off offset:16         // 000000005CA4: DC7C4010 007F5C00
	v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[192:199], v[88:95], 0// 000000005CAC: D3AD0042 0202B1C0
	s_nop 3                                                    // 000000005CB4: BF800003
	v_mul_f32_e32 v64, v154, v64                               // 000000005CB8: 0A80819A
	v_add_f32_e32 v64, v250, v64                               // 000000005CBC: 028081FA
	s_nop 5                                                    // 000000005CC0: BF800005
	v_mul_f32_e32 v65, v155, v66                               // 000000005CC4: 0A82859B
	v_add_f32_e32 v250, v64, v65                               // 000000005CC8: 03F48340
	ds_read_b128 v[88:91], v71 offset:8192                     // 000000005CCC: D9FE2000 58000047
	ds_read_b128 v[92:95], v71 offset:8208                     // 000000005CD4: D9FE2010 5C000047
	ds_read_b128 v[104:107], v71 offset:12288                  // 000000005CDC: D9FE3000 68000047
	ds_read_b128 v[108:111], v71 offset:12304                  // 000000005CE4: D9FE3010 6C000047
	s_waitcnt lgkmcnt(4)                                       // 000000005CEC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[80:87], v[220:227], 0// 000000005CF0: D3AE00B0 0203B950
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[96:103], v[220:227], 0// 000000005CF8: D3AE00A0 0203B960
	v_or_b32_e32 v64, s18, v232                                // 000000005D00: 2881D012
	ds_read_b128 v[66:69], v64                                 // 000000005D04: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 000000005D0C: D9FE0010 46000040
	ds_read_b128 v[74:77], v64 offset:4096                     // 000000005D14: D9FE1000 4A000040
	ds_read_b128 v[78:81], v64 offset:4112                     // 000000005D1C: D9FE1010 4E000040
	s_waitcnt lgkmcnt(4)                                       // 000000005D24: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[88:95], v[220:227], 0// 000000005D28: D3AE0090 0203B958
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[104:111], v[220:227], 0// 000000005D30: D3AE0080 0203B968
	ds_read_b128 v[82:85], v64 offset:8192                     // 000000005D38: D9FE2000 52000040
	ds_read_b128 v[86:89], v64 offset:8208                     // 000000005D40: D9FE2010 56000040
	ds_read_b128 v[112:115], v64 offset:12288                  // 000000005D48: D9FE3000 70000040
	ds_read_b128 v[116:119], v64 offset:12304                  // 000000005D50: D9FE3010 74000040
	s_add_u32 s18, s42, 4                                      // 000000005D58: 8012842A
	s_cmp_ge_u32 s18, s96                                      // 000000005D5C: BF096012
	s_cbranch_scc1 13                                          // 000000005D60: BF85000D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4298>
	s_lshl_b32 s19, s17, 14                                    // 000000005D64: 8E138E11
	s_or_b32 s19, s19, s88                                     // 000000005D68: 87135813
	s_mul_i32 s18, s18, s8                                     // 000000005D6C: 92120812
	s_lshl_b32 s18, s18, 7                                     // 000000005D70: 8E128712
	s_mov_b32 m0, s19                                          // 000000005D74: BEFC0013
	s_nop 0                                                    // 000000005D78: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000005D7C: E05D1000 121500E9
	s_or_b32 m0, s19, 0x2000                                   // 000000005D84: 877CFF13 00002000
	s_nop 0                                                    // 000000005D8C: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 000000005D90: E05D1000 121500EA
	s_add_u32 s18, s42, 2                                      // 000000005D98: 8012822A
	s_cmp_ge_u32 s18, s96                                      // 000000005D9C: BF096012
	s_cbranch_scc1 15                                          // 000000005DA0: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x42e0>
	s_xor_b32 s19, s17, 2                                      // 000000005DA4: 88138211
	s_mul_i32 s18, s18, s8                                     // 000000005DA8: 92120812
	s_lshl_b32 s19, s19, 14                                    // 000000005DAC: 8E138E13
	s_add_u32 s20, s92, s19                                    // 000000005DB0: 8014135C
	s_add_u32 m0, s20, s88                                     // 000000005DB4: 807C5814
	s_lshl_b32 s18, s18, 7                                     // 000000005DB8: 8E128712
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000005DBC: E05D1000 121400EB
	s_add_u32 s19, s92, s19                                    // 000000005DC4: 8013135C
	s_add_u32 s19, s19, s88                                    // 000000005DC8: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 000000005DCC: 807CFF13 00002000
	s_nop 0                                                    // 000000005DD4: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000005DD8: E05D1000 121400EC
	s_waitcnt lgkmcnt(4)                                       // 000000005DE0: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[66:73], v[200:207], v[176:191]// 000000005DE4: D3AE00B0 06C39142
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[74:81], v[200:207], v[160:175]// 000000005DEC: D3AE00A0 0683914A
	s_nop 15                                                   // 000000005DF4: BF80000F
	s_nop 3                                                    // 000000005DF8: BF800003
	v_mov_b64_e32 v[96:97], v[160:161]                         // 000000005DFC: 7EC071A0
	v_mov_b64_e32 v[98:99], v[162:163]                         // 000000005E00: 7EC471A2
	v_mov_b64_e32 v[100:101], v[164:165]                       // 000000005E04: 7EC871A4
	v_mov_b64_e32 v[102:103], v[166:167]                       // 000000005E08: 7ECC71A6
	v_mov_b64_e32 v[104:105], v[168:169]                       // 000000005E0C: 7ED071A8
	v_mov_b64_e32 v[106:107], v[170:171]                       // 000000005E10: 7ED471AA
	v_mov_b64_e32 v[108:109], v[172:173]                       // 000000005E14: 7ED871AC
	v_mov_b64_e32 v[110:111], v[174:175]                       // 000000005E18: 7EDC71AE
	s_waitcnt lgkmcnt(0)                                       // 000000005E1C: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[82:89], v[200:207], v[144:159]// 000000005E20: D3AE0090 06439152
	s_nop 15                                                   // 000000005E28: BF80000F
	s_nop 3                                                    // 000000005E2C: BF800003
	v_mov_b64_e32 v[80:81], v[144:145]                         // 000000005E30: 7EA07190
	v_mov_b64_e32 v[82:83], v[146:147]                         // 000000005E34: 7EA47192
	v_mov_b64_e32 v[84:85], v[148:149]                         // 000000005E38: 7EA87194
	v_mov_b64_e32 v[86:87], v[150:151]                         // 000000005E3C: 7EAC7196
	v_mov_b64_e32 v[88:89], v[152:153]                         // 000000005E40: 7EB07198
	v_mov_b64_e32 v[90:91], v[154:155]                         // 000000005E44: 7EB4719A
	v_mov_b64_e32 v[92:93], v[156:157]                         // 000000005E48: 7EB8719C
	v_mov_b64_e32 v[94:95], v[158:159]                         // 000000005E4C: 7EBC719E
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[112:119], v[200:207], v[128:143]// 000000005E50: D3AE0080 06039170
	s_nop 15                                                   // 000000005E58: BF80000F
	s_nop 3                                                    // 000000005E5C: BF800003
	v_mov_b64_e32 v[64:65], v[128:129]                         // 000000005E60: 7E807180
	v_mov_b64_e32 v[66:67], v[130:131]                         // 000000005E64: 7E847182
	v_mov_b64_e32 v[68:69], v[132:133]                         // 000000005E68: 7E887184
	v_mov_b64_e32 v[70:71], v[134:135]                         // 000000005E6C: 7E8C7186
	v_mov_b64_e32 v[72:73], v[136:137]                         // 000000005E70: 7E907188
	v_mov_b64_e32 v[74:75], v[138:139]                         // 000000005E74: 7E94718A
	v_mov_b64_e32 v[76:77], v[140:141]                         // 000000005E78: 7E98718C
	v_mov_b64_e32 v[78:79], v[142:143]                         // 000000005E7C: 7E9C718E
	s_lshl_b32 s18, s42, 7                                     // 000000005E80: 8E12872A
	s_add_u32 s20, s18, 0x80                                   // 000000005E84: 8014FF12 00000080
	s_sub_u32 s18, s3, s20                                     // 000000005E8C: 80921403
	s_sub_i32 s18, s18, 0                                      // 000000005E90: 81928012
	s_cmp_ge_i32 s18, 32                                       // 000000005E94: BF03A012
	v_mov_b64_e32 v[112:113], v[176:177]                       // 000000005E98: 7EE071B0
	v_mov_b64_e32 v[114:115], v[178:179]                       // 000000005E9C: 7EE471B2
	v_mov_b64_e32 v[116:117], v[180:181]                       // 000000005EA0: 7EE871B4
	v_mov_b64_e32 v[118:119], v[182:183]                       // 000000005EA4: 7EEC71B6
	v_mov_b64_e32 v[120:121], v[184:185]                       // 000000005EA8: 7EF071B8
	v_mov_b64_e32 v[122:123], v[186:187]                       // 000000005EAC: 7EF471BA
	v_mov_b64_e32 v[124:125], v[188:189]                       // 000000005EB0: 7EF871BC
	v_mov_b64_e32 v[126:127], v[190:191]                       // 000000005EB4: 7EFC71BE
	s_cbranch_scc1 90                                          // 000000005EB8: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4524>
	s_mov_b32 s53, s52                                         // 000000005EBC: BEB50034
	s_mov_b32 s54, s52                                         // 000000005EC0: BEB60034
	s_mov_b32 s55, s52                                         // 000000005EC4: BEB70034
	s_mov_b32 s56, s52                                         // 000000005EC8: BEB80034
	s_mov_b32 s57, s52                                         // 000000005ECC: BEB90034
	s_mov_b32 s58, s52                                         // 000000005ED0: BEBA0034
	s_mov_b32 s59, s52                                         // 000000005ED4: BEBB0034
	s_mov_b32 s60, s52                                         // 000000005ED8: BEBC0034
	s_mov_b32 s61, s52                                         // 000000005EDC: BEBD0034
	s_mov_b32 s62, s52                                         // 000000005EE0: BEBE0034
	s_mov_b32 s63, s52                                         // 000000005EE4: BEBF0034
	s_mov_b32 s64, s52                                         // 000000005EE8: BEC00034
	s_mov_b32 s65, s52                                         // 000000005EEC: BEC10034
	s_mov_b32 s66, s52                                         // 000000005EF0: BEC20034
	s_mov_b32 s67, s52                                         // 000000005EF4: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000005EF8: BF048012
	v_mov_b64_e32 v[126:127], s[66:67]                         // 000000005EFC: 7EFC7042
	v_mov_b64_e32 v[124:125], s[64:65]                         // 000000005F00: 7EF87040
	v_mov_b64_e32 v[122:123], s[62:63]                         // 000000005F04: 7EF4703E
	v_mov_b64_e32 v[120:121], s[60:61]                         // 000000005F08: 7EF0703C
	v_mov_b64_e32 v[118:119], s[58:59]                         // 000000005F0C: 7EEC703A
	v_mov_b64_e32 v[116:117], s[56:57]                         // 000000005F10: 7EE87038
	v_mov_b64_e32 v[114:115], s[54:55]                         // 000000005F14: 7EE47036
	v_mov_b64_e32 v[112:113], s[52:53]                         // 000000005F18: 7EE07034
	s_cbranch_scc1 65                                          // 000000005F1C: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4524>
	v_add_u32_e32 v127, s18, v243                              // 000000005F20: 68FFE612
	v_cmp_gt_i32_e32 vcc, 0, v127                              // 000000005F24: 7D88FE80
	s_nop 1                                                    // 000000005F28: BF800001
	v_cndmask_b32_e64 v112, v176, v240, vcc                    // 000000005F2C: D1000070 01ABE1B0
	v_cmp_gt_i32_e32 vcc, 1, v127                              // 000000005F34: 7D88FE81
	s_nop 1                                                    // 000000005F38: BF800001
	v_cndmask_b32_e64 v113, v177, v240, vcc                    // 000000005F3C: D1000071 01ABE1B1
	v_cmp_gt_i32_e32 vcc, 2, v127                              // 000000005F44: 7D88FE82
	s_nop 1                                                    // 000000005F48: BF800001
	v_cndmask_b32_e64 v114, v178, v240, vcc                    // 000000005F4C: D1000072 01ABE1B2
	v_cmp_gt_i32_e32 vcc, 3, v127                              // 000000005F54: 7D88FE83
	s_nop 1                                                    // 000000005F58: BF800001
	v_cndmask_b32_e64 v115, v179, v240, vcc                    // 000000005F5C: D1000073 01ABE1B3
	v_cmp_gt_i32_e32 vcc, 8, v127                              // 000000005F64: 7D88FE88
	s_nop 1                                                    // 000000005F68: BF800001
	v_cndmask_b32_e64 v116, v180, v240, vcc                    // 000000005F6C: D1000074 01ABE1B4
	v_cmp_gt_i32_e32 vcc, 9, v127                              // 000000005F74: 7D88FE89
	s_nop 1                                                    // 000000005F78: BF800001
	v_cndmask_b32_e64 v117, v181, v240, vcc                    // 000000005F7C: D1000075 01ABE1B5
	v_cmp_gt_i32_e32 vcc, 10, v127                             // 000000005F84: 7D88FE8A
	s_nop 1                                                    // 000000005F88: BF800001
	v_cndmask_b32_e64 v118, v182, v240, vcc                    // 000000005F8C: D1000076 01ABE1B6
	v_cmp_gt_i32_e32 vcc, 11, v127                             // 000000005F94: 7D88FE8B
	s_nop 1                                                    // 000000005F98: BF800001
	v_cndmask_b32_e64 v119, v183, v240, vcc                    // 000000005F9C: D1000077 01ABE1B7
	v_cmp_gt_i32_e32 vcc, 16, v127                             // 000000005FA4: 7D88FE90
	s_nop 1                                                    // 000000005FA8: BF800001
	v_cndmask_b32_e64 v120, v184, v240, vcc                    // 000000005FAC: D1000078 01ABE1B8
	v_cmp_gt_i32_e32 vcc, 17, v127                             // 000000005FB4: 7D88FE91
	s_nop 1                                                    // 000000005FB8: BF800001
	v_cndmask_b32_e64 v121, v185, v240, vcc                    // 000000005FBC: D1000079 01ABE1B9
	v_cmp_gt_i32_e32 vcc, 18, v127                             // 000000005FC4: 7D88FE92
	s_nop 1                                                    // 000000005FC8: BF800001
	v_cndmask_b32_e64 v122, v186, v240, vcc                    // 000000005FCC: D100007A 01ABE1BA
	v_cmp_gt_i32_e32 vcc, 19, v127                             // 000000005FD4: 7D88FE93
	s_nop 1                                                    // 000000005FD8: BF800001
	v_cndmask_b32_e64 v123, v187, v240, vcc                    // 000000005FDC: D100007B 01ABE1BB
	v_cmp_gt_i32_e32 vcc, 24, v127                             // 000000005FE4: 7D88FE98
	s_nop 1                                                    // 000000005FE8: BF800001
	v_cndmask_b32_e64 v124, v188, v240, vcc                    // 000000005FEC: D100007C 01ABE1BC
	v_cmp_gt_i32_e32 vcc, 25, v127                             // 000000005FF4: 7D88FE99
	s_nop 1                                                    // 000000005FF8: BF800001
	v_cndmask_b32_e64 v125, v189, v240, vcc                    // 000000005FFC: D100007D 01ABE1BD
	v_cmp_gt_i32_e32 vcc, 26, v127                             // 000000006004: 7D88FE9A
	s_nop 1                                                    // 000000006008: BF800001
	v_cndmask_b32_e64 v126, v190, v240, vcc                    // 00000000600C: D100007E 01ABE1BE
	v_cmp_gt_i32_e32 vcc, 27, v127                             // 000000006014: 7D88FE9B
	s_nop 1                                                    // 000000006018: BF800001
	v_cndmask_b32_e64 v127, v191, v240, vcc                    // 00000000601C: D100007F 01ABE1BF
	s_sub_u32 s18, s3, s20                                     // 000000006024: 80921403
	s_sub_i32 s18, s18, 32                                     // 000000006028: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 00000000602C: BF03A012
	s_cbranch_scc1 90                                          // 000000006030: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x469c>
	s_mov_b32 s53, s52                                         // 000000006034: BEB50034
	s_mov_b32 s54, s52                                         // 000000006038: BEB60034
	s_mov_b32 s55, s52                                         // 00000000603C: BEB70034
	s_mov_b32 s56, s52                                         // 000000006040: BEB80034
	s_mov_b32 s57, s52                                         // 000000006044: BEB90034
	s_mov_b32 s58, s52                                         // 000000006048: BEBA0034
	s_mov_b32 s59, s52                                         // 00000000604C: BEBB0034
	s_mov_b32 s60, s52                                         // 000000006050: BEBC0034
	s_mov_b32 s61, s52                                         // 000000006054: BEBD0034
	s_mov_b32 s62, s52                                         // 000000006058: BEBE0034
	s_mov_b32 s63, s52                                         // 00000000605C: BEBF0034
	s_mov_b32 s64, s52                                         // 000000006060: BEC00034
	s_mov_b32 s65, s52                                         // 000000006064: BEC10034
	s_mov_b32 s66, s52                                         // 000000006068: BEC20034
	s_mov_b32 s67, s52                                         // 00000000606C: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000006070: BF048012
	v_mov_b64_e32 v[110:111], s[66:67]                         // 000000006074: 7EDC7042
	v_mov_b64_e32 v[108:109], s[64:65]                         // 000000006078: 7ED87040
	v_mov_b64_e32 v[106:107], s[62:63]                         // 00000000607C: 7ED4703E
	v_mov_b64_e32 v[104:105], s[60:61]                         // 000000006080: 7ED0703C
	v_mov_b64_e32 v[102:103], s[58:59]                         // 000000006084: 7ECC703A
	v_mov_b64_e32 v[100:101], s[56:57]                         // 000000006088: 7EC87038
	v_mov_b64_e32 v[98:99], s[54:55]                           // 00000000608C: 7EC47036
	v_mov_b64_e32 v[96:97], s[52:53]                           // 000000006090: 7EC07034
	s_cbranch_scc1 65                                          // 000000006094: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x469c>
	v_add_u32_e32 v111, s18, v243                              // 000000006098: 68DFE612
	v_cmp_gt_i32_e32 vcc, 0, v111                              // 00000000609C: 7D88DE80
	s_nop 1                                                    // 0000000060A0: BF800001
	v_cndmask_b32_e64 v96, v160, v240, vcc                     // 0000000060A4: D1000060 01ABE1A0
	v_cmp_gt_i32_e32 vcc, 1, v111                              // 0000000060AC: 7D88DE81
	s_nop 1                                                    // 0000000060B0: BF800001
	v_cndmask_b32_e64 v97, v161, v240, vcc                     // 0000000060B4: D1000061 01ABE1A1
	v_cmp_gt_i32_e32 vcc, 2, v111                              // 0000000060BC: 7D88DE82
	s_nop 1                                                    // 0000000060C0: BF800001
	v_cndmask_b32_e64 v98, v162, v240, vcc                     // 0000000060C4: D1000062 01ABE1A2
	v_cmp_gt_i32_e32 vcc, 3, v111                              // 0000000060CC: 7D88DE83
	s_nop 1                                                    // 0000000060D0: BF800001
	v_cndmask_b32_e64 v99, v163, v240, vcc                     // 0000000060D4: D1000063 01ABE1A3
	v_cmp_gt_i32_e32 vcc, 8, v111                              // 0000000060DC: 7D88DE88
	s_nop 1                                                    // 0000000060E0: BF800001
	v_cndmask_b32_e64 v100, v164, v240, vcc                    // 0000000060E4: D1000064 01ABE1A4
	v_cmp_gt_i32_e32 vcc, 9, v111                              // 0000000060EC: 7D88DE89
	s_nop 1                                                    // 0000000060F0: BF800001
	v_cndmask_b32_e64 v101, v165, v240, vcc                    // 0000000060F4: D1000065 01ABE1A5
	v_cmp_gt_i32_e32 vcc, 10, v111                             // 0000000060FC: 7D88DE8A
	s_nop 1                                                    // 000000006100: BF800001
	v_cndmask_b32_e64 v102, v166, v240, vcc                    // 000000006104: D1000066 01ABE1A6
	v_cmp_gt_i32_e32 vcc, 11, v111                             // 00000000610C: 7D88DE8B
	s_nop 1                                                    // 000000006110: BF800001
	v_cndmask_b32_e64 v103, v167, v240, vcc                    // 000000006114: D1000067 01ABE1A7
	v_cmp_gt_i32_e32 vcc, 16, v111                             // 00000000611C: 7D88DE90
	s_nop 1                                                    // 000000006120: BF800001
	v_cndmask_b32_e64 v104, v168, v240, vcc                    // 000000006124: D1000068 01ABE1A8
	v_cmp_gt_i32_e32 vcc, 17, v111                             // 00000000612C: 7D88DE91
	s_nop 1                                                    // 000000006130: BF800001
	v_cndmask_b32_e64 v105, v169, v240, vcc                    // 000000006134: D1000069 01ABE1A9
	v_cmp_gt_i32_e32 vcc, 18, v111                             // 00000000613C: 7D88DE92
	s_nop 1                                                    // 000000006140: BF800001
	v_cndmask_b32_e64 v106, v170, v240, vcc                    // 000000006144: D100006A 01ABE1AA
	v_cmp_gt_i32_e32 vcc, 19, v111                             // 00000000614C: 7D88DE93
	s_nop 1                                                    // 000000006150: BF800001
	v_cndmask_b32_e64 v107, v171, v240, vcc                    // 000000006154: D100006B 01ABE1AB
	v_cmp_gt_i32_e32 vcc, 24, v111                             // 00000000615C: 7D88DE98
	s_nop 1                                                    // 000000006160: BF800001
	v_cndmask_b32_e64 v108, v172, v240, vcc                    // 000000006164: D100006C 01ABE1AC
	v_cmp_gt_i32_e32 vcc, 25, v111                             // 00000000616C: 7D88DE99
	s_nop 1                                                    // 000000006170: BF800001
	v_cndmask_b32_e64 v109, v173, v240, vcc                    // 000000006174: D100006D 01ABE1AD
	v_cmp_gt_i32_e32 vcc, 26, v111                             // 00000000617C: 7D88DE9A
	s_nop 1                                                    // 000000006180: BF800001
	v_cndmask_b32_e64 v110, v174, v240, vcc                    // 000000006184: D100006E 01ABE1AE
	v_cmp_gt_i32_e32 vcc, 27, v111                             // 00000000618C: 7D88DE9B
	s_nop 1                                                    // 000000006190: BF800001
	v_cndmask_b32_e64 v111, v175, v240, vcc                    // 000000006194: D100006F 01ABE1AF
	s_sub_u32 s18, s3, s20                                     // 00000000619C: 80921403
	s_sub_i32 s18, s18, 64                                     // 0000000061A0: 8192C012
	scratch_load_dwordx4 v[164:167], off, off                  // 0000000061A4: DC5C4000 A47F0000
	scratch_load_dwordx4 v[168:171], off, off offset:16        // 0000000061AC: DC5C4010 A87F0000
	s_cmp_ge_i32 s18, 32                                       // 0000000061B4: BF03A012
	s_cbranch_scc1 90                                          // 0000000061B8: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4824>
	s_mov_b32 s53, s52                                         // 0000000061BC: BEB50034
	s_mov_b32 s54, s52                                         // 0000000061C0: BEB60034
	s_mov_b32 s55, s52                                         // 0000000061C4: BEB70034
	s_mov_b32 s56, s52                                         // 0000000061C8: BEB80034
	s_mov_b32 s57, s52                                         // 0000000061CC: BEB90034
	s_mov_b32 s58, s52                                         // 0000000061D0: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000061D4: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000061D8: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000061DC: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000061E0: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000061E4: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000061E8: BEC00034
	s_mov_b32 s65, s52                                         // 0000000061EC: BEC10034
	s_mov_b32 s66, s52                                         // 0000000061F0: BEC20034
	s_mov_b32 s67, s52                                         // 0000000061F4: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 0000000061F8: BF048012
	v_mov_b64_e32 v[94:95], s[66:67]                           // 0000000061FC: 7EBC7042
	v_mov_b64_e32 v[92:93], s[64:65]                           // 000000006200: 7EB87040
	v_mov_b64_e32 v[90:91], s[62:63]                           // 000000006204: 7EB4703E
	v_mov_b64_e32 v[88:89], s[60:61]                           // 000000006208: 7EB0703C
	v_mov_b64_e32 v[86:87], s[58:59]                           // 00000000620C: 7EAC703A
	v_mov_b64_e32 v[84:85], s[56:57]                           // 000000006210: 7EA87038
	v_mov_b64_e32 v[82:83], s[54:55]                           // 000000006214: 7EA47036
	v_mov_b64_e32 v[80:81], s[52:53]                           // 000000006218: 7EA07034
	s_cbranch_scc1 65                                          // 00000000621C: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4824>
	v_add_u32_e32 v95, s18, v243                               // 000000006220: 68BFE612
	v_cmp_gt_i32_e32 vcc, 0, v95                               // 000000006224: 7D88BE80
	s_nop 1                                                    // 000000006228: BF800001
	v_cndmask_b32_e64 v80, v144, v240, vcc                     // 00000000622C: D1000050 01ABE190
	v_cmp_gt_i32_e32 vcc, 1, v95                               // 000000006234: 7D88BE81
	s_nop 1                                                    // 000000006238: BF800001
	v_cndmask_b32_e64 v81, v145, v240, vcc                     // 00000000623C: D1000051 01ABE191
	v_cmp_gt_i32_e32 vcc, 2, v95                               // 000000006244: 7D88BE82
	s_nop 1                                                    // 000000006248: BF800001
	v_cndmask_b32_e64 v82, v146, v240, vcc                     // 00000000624C: D1000052 01ABE192
	v_cmp_gt_i32_e32 vcc, 3, v95                               // 000000006254: 7D88BE83
	s_nop 1                                                    // 000000006258: BF800001
	v_cndmask_b32_e64 v83, v147, v240, vcc                     // 00000000625C: D1000053 01ABE193
	v_cmp_gt_i32_e32 vcc, 8, v95                               // 000000006264: 7D88BE88
	s_nop 1                                                    // 000000006268: BF800001
	v_cndmask_b32_e64 v84, v148, v240, vcc                     // 00000000626C: D1000054 01ABE194
	v_cmp_gt_i32_e32 vcc, 9, v95                               // 000000006274: 7D88BE89
	s_nop 1                                                    // 000000006278: BF800001
	v_cndmask_b32_e64 v85, v149, v240, vcc                     // 00000000627C: D1000055 01ABE195
	v_cmp_gt_i32_e32 vcc, 10, v95                              // 000000006284: 7D88BE8A
	s_nop 1                                                    // 000000006288: BF800001
	v_cndmask_b32_e64 v86, v150, v240, vcc                     // 00000000628C: D1000056 01ABE196
	v_cmp_gt_i32_e32 vcc, 11, v95                              // 000000006294: 7D88BE8B
	s_nop 1                                                    // 000000006298: BF800001
	v_cndmask_b32_e64 v87, v151, v240, vcc                     // 00000000629C: D1000057 01ABE197
	v_cmp_gt_i32_e32 vcc, 16, v95                              // 0000000062A4: 7D88BE90
	s_nop 1                                                    // 0000000062A8: BF800001
	v_cndmask_b32_e64 v88, v152, v240, vcc                     // 0000000062AC: D1000058 01ABE198
	v_cmp_gt_i32_e32 vcc, 17, v95                              // 0000000062B4: 7D88BE91
	s_nop 1                                                    // 0000000062B8: BF800001
	v_cndmask_b32_e64 v89, v153, v240, vcc                     // 0000000062BC: D1000059 01ABE199
	v_cmp_gt_i32_e32 vcc, 18, v95                              // 0000000062C4: 7D88BE92
	s_nop 1                                                    // 0000000062C8: BF800001
	v_cndmask_b32_e64 v90, v154, v240, vcc                     // 0000000062CC: D100005A 01ABE19A
	v_cmp_gt_i32_e32 vcc, 19, v95                              // 0000000062D4: 7D88BE93
	s_nop 1                                                    // 0000000062D8: BF800001
	v_cndmask_b32_e64 v91, v155, v240, vcc                     // 0000000062DC: D100005B 01ABE19B
	v_cmp_gt_i32_e32 vcc, 24, v95                              // 0000000062E4: 7D88BE98
	s_nop 1                                                    // 0000000062E8: BF800001
	v_cndmask_b32_e64 v92, v156, v240, vcc                     // 0000000062EC: D100005C 01ABE19C
	v_cmp_gt_i32_e32 vcc, 25, v95                              // 0000000062F4: 7D88BE99
	s_nop 1                                                    // 0000000062F8: BF800001
	v_cndmask_b32_e64 v93, v157, v240, vcc                     // 0000000062FC: D100005D 01ABE19D
	v_cmp_gt_i32_e32 vcc, 26, v95                              // 000000006304: 7D88BE9A
	s_nop 1                                                    // 000000006308: BF800001
	v_cndmask_b32_e64 v94, v158, v240, vcc                     // 00000000630C: D100005E 01ABE19E
	v_cmp_gt_i32_e32 vcc, 27, v95                              // 000000006314: 7D88BE9B
	s_nop 1                                                    // 000000006318: BF800001
	v_cndmask_b32_e64 v95, v159, v240, vcc                     // 00000000631C: D100005F 01ABE19F
	s_sub_u32 s18, s3, s20                                     // 000000006324: 80921403
	s_sub_i32 s18, s18, 0x60                                   // 000000006328: 8192FF12 00000060
	s_cmp_ge_i32 s18, 32                                       // 000000006330: BF03A012
	s_cbranch_scc1 90                                          // 000000006334: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x49a0>
	s_mov_b32 s53, s52                                         // 000000006338: BEB50034
	s_mov_b32 s54, s52                                         // 00000000633C: BEB60034
	s_mov_b32 s55, s52                                         // 000000006340: BEB70034
	s_mov_b32 s56, s52                                         // 000000006344: BEB80034
	s_mov_b32 s57, s52                                         // 000000006348: BEB90034
	s_mov_b32 s58, s52                                         // 00000000634C: BEBA0034
	s_mov_b32 s59, s52                                         // 000000006350: BEBB0034
	s_mov_b32 s60, s52                                         // 000000006354: BEBC0034
	s_mov_b32 s61, s52                                         // 000000006358: BEBD0034
	s_mov_b32 s62, s52                                         // 00000000635C: BEBE0034
	s_mov_b32 s63, s52                                         // 000000006360: BEBF0034
	s_mov_b32 s64, s52                                         // 000000006364: BEC00034
	s_mov_b32 s65, s52                                         // 000000006368: BEC10034
	s_mov_b32 s66, s52                                         // 00000000636C: BEC20034
	s_mov_b32 s67, s52                                         // 000000006370: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000006374: BF048012
	v_mov_b64_e32 v[78:79], s[66:67]                           // 000000006378: 7E9C7042
	v_mov_b64_e32 v[76:77], s[64:65]                           // 00000000637C: 7E987040
	v_mov_b64_e32 v[74:75], s[62:63]                           // 000000006380: 7E94703E
	v_mov_b64_e32 v[72:73], s[60:61]                           // 000000006384: 7E90703C
	v_mov_b64_e32 v[70:71], s[58:59]                           // 000000006388: 7E8C703A
	v_mov_b64_e32 v[68:69], s[56:57]                           // 00000000638C: 7E887038
	v_mov_b64_e32 v[66:67], s[54:55]                           // 000000006390: 7E847036
	v_mov_b64_e32 v[64:65], s[52:53]                           // 000000006394: 7E807034
	s_cbranch_scc1 65                                          // 000000006398: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x49a0>
	v_add_u32_e32 v79, s18, v243                               // 00000000639C: 689FE612
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 0000000063A0: 7D889E80
	s_nop 1                                                    // 0000000063A4: BF800001
	v_cndmask_b32_e64 v64, v128, v240, vcc                     // 0000000063A8: D1000040 01ABE180
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 0000000063B0: 7D889E81
	s_nop 1                                                    // 0000000063B4: BF800001
	v_cndmask_b32_e64 v65, v129, v240, vcc                     // 0000000063B8: D1000041 01ABE181
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 0000000063C0: 7D889E82
	s_nop 1                                                    // 0000000063C4: BF800001
	v_cndmask_b32_e64 v66, v130, v240, vcc                     // 0000000063C8: D1000042 01ABE182
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 0000000063D0: 7D889E83
	s_nop 1                                                    // 0000000063D4: BF800001
	v_cndmask_b32_e64 v67, v131, v240, vcc                     // 0000000063D8: D1000043 01ABE183
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 0000000063E0: 7D889E88
	s_nop 1                                                    // 0000000063E4: BF800001
	v_cndmask_b32_e64 v68, v132, v240, vcc                     // 0000000063E8: D1000044 01ABE184
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 0000000063F0: 7D889E89
	s_nop 1                                                    // 0000000063F4: BF800001
	v_cndmask_b32_e64 v69, v133, v240, vcc                     // 0000000063F8: D1000045 01ABE185
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 000000006400: 7D889E8A
	s_nop 1                                                    // 000000006404: BF800001
	v_cndmask_b32_e64 v70, v134, v240, vcc                     // 000000006408: D1000046 01ABE186
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 000000006410: 7D889E8B
	s_nop 1                                                    // 000000006414: BF800001
	v_cndmask_b32_e64 v71, v135, v240, vcc                     // 000000006418: D1000047 01ABE187
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 000000006420: 7D889E90
	s_nop 1                                                    // 000000006424: BF800001
	v_cndmask_b32_e64 v72, v136, v240, vcc                     // 000000006428: D1000048 01ABE188
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 000000006430: 7D889E91
	s_nop 1                                                    // 000000006434: BF800001
	v_cndmask_b32_e64 v73, v137, v240, vcc                     // 000000006438: D1000049 01ABE189
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 000000006440: 7D889E92
	s_nop 1                                                    // 000000006444: BF800001
	v_cndmask_b32_e64 v74, v138, v240, vcc                     // 000000006448: D100004A 01ABE18A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 000000006450: 7D889E93
	s_nop 1                                                    // 000000006454: BF800001
	v_cndmask_b32_e64 v75, v139, v240, vcc                     // 000000006458: D100004B 01ABE18B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 000000006460: 7D889E98
	s_nop 1                                                    // 000000006464: BF800001
	v_cndmask_b32_e64 v76, v140, v240, vcc                     // 000000006468: D100004C 01ABE18C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 000000006470: 7D889E99
	s_nop 1                                                    // 000000006474: BF800001
	v_cndmask_b32_e64 v77, v141, v240, vcc                     // 000000006478: D100004D 01ABE18D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 000000006480: 7D889E9A
	s_nop 1                                                    // 000000006484: BF800001
	v_cndmask_b32_e64 v78, v142, v240, vcc                     // 000000006488: D100004E 01ABE18E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 000000006490: 7D889E9B
	s_nop 1                                                    // 000000006494: BF800001
	v_cndmask_b32_e64 v79, v143, v240, vcc                     // 000000006498: D100004F 01ABE18F
	v_max_f32_e32 v128, v112, v113                             // 0000000064A0: 1700E370
	v_max3_f32 v128, v114, v115, v128                          // 0000000064A4: D1D30080 0602E772
	v_max3_f32 v128, v116, v117, v128                          // 0000000064AC: D1D30080 0602EB74
	v_max3_f32 v128, v118, v119, v128                          // 0000000064B4: D1D30080 0602EF76
	v_max3_f32 v128, v120, v121, v128                          // 0000000064BC: D1D30080 0602F378
	v_max3_f32 v128, v122, v123, v128                          // 0000000064C4: D1D30080 0602F77A
	v_max3_f32 v128, v124, v125, v128                          // 0000000064CC: D1D30080 0602FB7C
	v_max3_f32 v129, v126, v127, v128                          // 0000000064D4: D1D30081 0602FF7E
	v_max_f32_e32 v128, v96, v97                               // 0000000064DC: 1700C360
	v_max3_f32 v128, v98, v99, v128                            // 0000000064E0: D1D30080 0602C762
	v_max3_f32 v128, v100, v101, v128                          // 0000000064E8: D1D30080 0602CB64
	v_max3_f32 v128, v102, v103, v128                          // 0000000064F0: D1D30080 0602CF66
	v_max3_f32 v128, v104, v105, v128                          // 0000000064F8: D1D30080 0602D368
	v_max3_f32 v128, v106, v107, v128                          // 000000006500: D1D30080 0602D76A
	v_max3_f32 v128, v108, v109, v128                          // 000000006508: D1D30080 0602DB6C
	v_max3_f32 v130, v110, v111, v128                          // 000000006510: D1D30082 0602DF6E
	v_max_f32_e32 v128, v80, v81                               // 000000006518: 1700A350
	v_max3_f32 v128, v82, v83, v128                            // 00000000651C: D1D30080 0602A752
	v_max3_f32 v128, v84, v85, v128                            // 000000006524: D1D30080 0602AB54
	v_max3_f32 v128, v86, v87, v128                            // 00000000652C: D1D30080 0602AF56
	v_max3_f32 v128, v88, v89, v128                            // 000000006534: D1D30080 0602B358
	v_max3_f32 v128, v90, v91, v128                            // 00000000653C: D1D30080 0602B75A
	v_max3_f32 v128, v92, v93, v128                            // 000000006544: D1D30080 0602BB5C
	v_max3_f32 v128, v94, v95, v128                            // 00000000654C: D1D30080 0602BF5E
	v_max_f32_e32 v131, v64, v65                               // 000000006554: 17068340
	v_max3_f32 v131, v66, v67, v131                            // 000000006558: D1D30083 060E8742
	v_max3_f32 v131, v68, v69, v131                            // 000000006560: D1D30083 060E8B44
	v_max3_f32 v131, v70, v71, v131                            // 000000006568: D1D30083 060E8F46
	v_max3_f32 v131, v72, v73, v131                            // 000000006570: D1D30083 060E9348
	v_max3_f32 v131, v74, v75, v131                            // 000000006578: D1D30083 060E974A
	v_max3_f32 v131, v76, v77, v131                            // 000000006580: D1D30083 060E9B4C
	v_max3_f32 v131, v78, v79, v131                            // 000000006588: D1D30083 060E9F4E
	v_max_f32_e32 v128, v128, v131                             // 000000006590: 17010780
	v_max_f32_e32 v130, v129, v130                             // 000000006594: 17050581
	v_mov_b32_e32 v131, v130                                   // 000000006598: 7F060382
	s_nop 1                                                    // 00000000659C: BF800001
	v_permlane32_swap_b32_e32 v130, v131                       // 0000000065A0: 7F04B583
	v_mov_b32_e32 v129, v128                                   // 0000000065A4: 7F020380
	s_nop 1                                                    // 0000000065A8: BF800001
	v_permlane32_swap_b32_e32 v128, v129                       // 0000000065AC: 7F00B581
	v_max_f32_e32 v128, v128, v129                             // 0000000065B0: 17010380
	v_max_f32_e32 v130, v130, v131                             // 0000000065B4: 17050782
	v_max_f32_e32 v129, v130, v128                             // 0000000065B8: 17030182
	v_mul_f32_e32 v129, v238, v129                             // 0000000065BC: 0B0303EE
	v_max_f32_e32 v129, v252, v129                             // 0000000065C0: 170303FC
	v_sub_f32_e32 v131, v129, v252                             // 0000000065C4: 0507F981
	v_cmp_lt_f32_e32 vcc, s48, v131                            // 0000000065C8: 7C830630
	s_cmp_lg_u64 vcc, 0                                        // 0000000065CC: BF13806A
	s_cselect_b32 s18, 1, 0                                    // 0000000065D0: 85128081
	s_cselect_b64 s[18:19], -1, 0                              // 0000000065D4: 859280C1
	v_cndmask_b32_e64 v129, v252, v129, s[18:19]               // 0000000065D8: D1000081 004B03FC
	v_fma_f32 v130, v130, v238, -v129                          // 0000000065E0: D1CB0082 8607DD82
	v_floor_f32_e32 v130, v130                                 // 0000000065E8: 7F043F82
	v_med3_f32 v132, v130, s98, 0                              // 0000000065EC: D1D60084 0200C582
	v_cvt_i32_f32_e32 v130, v132                               // 0000000065F4: 7F041184
	v_add_u32_e32 v130, 0x7f, v130                             // 0000000065F8: 690504FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v130                           // 000000006600: 25350497
	v_fma_f32 v128, v128, v238, -v129                          // 000000006604: D1CB0080 8607DD80
	v_floor_f32_e32 v128, v128                                 // 00000000660C: 7F003F80
	v_med3_f32 v128, v128, s98, 0                              // 000000006610: D1D60080 0200C580
	v_cvt_i32_f32_e32 v131, v128                               // 000000006618: 7F061180
	v_add_u32_e32 v131, 0x7f, v131                             // 00000000661C: 690706FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v131                           // 000000006624: 25370697
	v_mov_b32_e32 v133, s50                                    // 000000006628: 7F0A0232
	v_fma_f32 v133, v129, s99, v133                            // 00000000662C: D1CB0085 0614C781
	v_fma_f32 v152, v132, s99, v133                            // 000000006634: D1CB0098 0614C784
	v_fma_f32 v150, v128, s99, v133                            // 00000000663C: D1CB0096 0614C780
	s_lshl_b32 s17, s17, 14                                    // 000000006644: 8E118E11
	s_add_u32 s17, s92, s17                                    // 000000006648: 8011115C
	v_add3_u32 v128, s17, v245, v244                           // 00000000664C: D1FF0080 07D3EA11
	s_waitcnt vmcnt(2)                                         // 000000006654: BF8C0F72
	ds_read_b64_tr_b8 v[132:133], v128                         // 000000006658: D9C40000 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:1024             // 000000006660: D9C40400 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:2048             // 000000006668: D9C40800 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:3072             // 000000006670: D9C40C00 8A000080
	ds_read_b64_tr_b8 v[140:141], v128 offset:256              // 000000006678: D9C40100 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:1280             // 000000006680: D9C40500 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:2304             // 000000006688: D9C40900 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:3328             // 000000006690: D9C40D00 92000080
	ds_read_b64_tr_b8 v[156:157], v128 offset:512              // 000000006698: D9C40200 9C000080
	ds_read_b64_tr_b8 v[158:159], v128 offset:1536             // 0000000066A0: D9C40600 9E000080
	ds_read_b64_tr_b8 v[160:161], v128 offset:2560             // 0000000066A8: D9C40A00 A0000080
	ds_read_b64_tr_b8 v[162:163], v128 offset:3584             // 0000000066B0: D9C40E00 A2000080
	s_waitcnt lgkmcnt(4)                                       // 0000000066B8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[132:139], v[208:215], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 0000000066BC: D3AC0000 0003F7F2 D3AE0830 04C3A184
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[140:147], v[208:215], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 0000000066CC: D3AC0000 0003F7F2 D3AE0820 0483A18C
	ds_read_b64_tr_b8 v[132:133], v128 offset:768              // 0000000066DC: D9C40300 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:1792             // 0000000066E4: D9C40700 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:2816             // 0000000066EC: D9C40B00 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:3840             // 0000000066F4: D9C40F00 8A000080
	ds_read_b64_tr_b8 v[140:141], v128 offset:4096             // 0000000066FC: D9C41000 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:5120             // 000000006704: D9C41400 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:6144             // 00000000670C: D9C41800 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:7168             // 000000006714: D9C41C00 92000080
	s_waitcnt lgkmcnt(4)                                       // 00000000671C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[156:163], v[208:215], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000006720: D3AC0000 0003F7F2 D3AE0810 0443A19C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[132:139], v[208:215], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000006730: D3AC0000 0003F7F2 D3AE0800 0403A184
	ds_read_b64_tr_b8 v[156:157], v128 offset:4352             // 000000006740: D9C41100 9C000080
	ds_read_b64_tr_b8 v[158:159], v128 offset:5376             // 000000006748: D9C41500 9E000080
	ds_read_b64_tr_b8 v[160:161], v128 offset:6400             // 000000006750: D9C41900 A0000080
	ds_read_b64_tr_b8 v[162:163], v128 offset:7424             // 000000006758: D9C41D00 A2000080
	ds_read_b64_tr_b8 v[132:133], v128 offset:4608             // 000000006760: D9C41200 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:5632             // 000000006768: D9C41600 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:6656             // 000000006770: D9C41A00 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:7680             // 000000006778: D9C41E00 8A000080
	s_waitcnt vmcnt(0) lgkmcnt(4)                              // 000000006780: BF8C0470
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[140:147], v[164:171], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000006784: D3AC0000 0003FBF2 D3AE0830 04C3498C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[156:163], v[164:171], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000006794: D3AC0000 0003FBF2 D3AE0820 0483499C
	ds_read_b64_tr_b8 v[140:141], v128 offset:4864             // 0000000067A4: D9C41300 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:5888             // 0000000067AC: D9C41700 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:6912             // 0000000067B4: D9C41B00 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:7936             // 0000000067BC: D9C41F00 92000080
	s_waitcnt lgkmcnt(0)                                       // 0000000067C4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[132:139], v[164:171], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 0000000067C8: D3AC0000 0003FBF2 D3AE0810 04434984
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[140:147], v[164:171], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 0000000067D8: D3AC0000 0003FBF2 D3AE0800 0403498C
	s_cbranch_vccz 68                                          // 0000000067E8: BF860044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4dfc>
	v_sub_f32_e32 v128, v252, v129                             // 0000000067EC: 050103FC
	v_exp_f32_e32 v128, v128                                   // 0000000067F0: 7F004180
	s_nop 3                                                    // 0000000067F4: BF800003
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 0000000067F8: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 000000006800: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000006808: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000006810: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000006818: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000006820: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000006828: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000006830: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000006838: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000006840: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000006848: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000006850: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000006858: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000006860: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000006868: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000006870: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000006878: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000006880: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000006888: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000006890: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000006898: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 0000000068A0: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 0000000068A8: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 0000000068B0: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 0000000068B8: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 0000000068C0: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 0000000068C8: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 0000000068D0: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 0000000068D8: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 0000000068E0: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 0000000068E8: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 0000000068F0: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 0000000068F8: 0BF501FA
	s_waitcnt vmcnt(0)                                         // 0000000068FC: BF8C0F70
	s_barrier                                                  // 000000006900: BF8A0000
	s_add_u32 s42, s42, 1                                      // 000000006904: 802A812A
	v_mov_b32_e32 v253, v131                                   // 000000006908: 7FFA0383
	v_mov_b32_e32 v251, v130                                   // 00000000690C: 7FF60382
	v_mov_b32_e32 v252, v129                                   // 000000006910: 7FF80381
	s_branch 454                                               // 000000006914: BF8201C6 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5530>
	s_cmp_eq_u32 s42, s79                                      // 000000006918: BF064F2A
	s_cbranch_scc0 410                                         // 00000000691C: BF84019A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5488>
	s_setprio 0                                                // 000000006920: BF8F0000
	v_fma_f32 v128, v112, v239, v152                           // 000000006924: D1CB0080 0663DF70
	v_fma_f32 v129, v113, v239, v152                           // 00000000692C: D1CB0081 0663DF71
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006934: D1DD0080 02010180
	v_fma_f32 v130, v114, v239, v152                           // 00000000693C: D1CB0082 0663DF72
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006944: D1DD0080 06010381
	v_fma_f32 v131, v115, v239, v152                           // 00000000694C: D1CB0083 0663DF73
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006954: D1DD0080 06010582
	v_cvt_pk_u8_f32 v136, v131, 3, v128                        // 00000000695C: D1DD0088 06010783
	v_fma_f32 v128, v96, v239, v152                            // 000000006964: D1CB0080 0663DF60
	v_fma_f32 v129, v97, v239, v152                            // 00000000696C: D1CB0081 0663DF61
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006974: D1DD0080 02010180
	v_fma_f32 v130, v98, v239, v152                            // 00000000697C: D1CB0082 0663DF62
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006984: D1DD0080 06010381
	v_fma_f32 v131, v99, v239, v152                            // 00000000698C: D1CB0083 0663DF63
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006994: D1DD0080 06010582
	v_cvt_pk_u8_f32 v140, v131, 3, v128                        // 00000000699C: D1DD008C 06010783
	v_fma_f32 v128, v116, v239, v152                           // 0000000069A4: D1CB0080 0663DF74
	v_fma_f32 v129, v117, v239, v152                           // 0000000069AC: D1CB0081 0663DF75
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000069B4: D1DD0080 02010180
	v_fma_f32 v130, v118, v239, v152                           // 0000000069BC: D1CB0082 0663DF76
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 0000000069C4: D1DD0080 06010381
	v_fma_f32 v131, v119, v239, v152                           // 0000000069CC: D1CB0083 0663DF77
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 0000000069D4: D1DD0080 06010582
	v_cvt_pk_u8_f32 v137, v131, 3, v128                        // 0000000069DC: D1DD0089 06010783
	v_fma_f32 v128, v100, v239, v152                           // 0000000069E4: D1CB0080 0663DF64
	v_fma_f32 v129, v101, v239, v152                           // 0000000069EC: D1CB0081 0663DF65
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000069F4: D1DD0080 02010180
	v_fma_f32 v130, v102, v239, v152                           // 0000000069FC: D1CB0082 0663DF66
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006A04: D1DD0080 06010381
	v_fma_f32 v131, v103, v239, v152                           // 000000006A0C: D1CB0083 0663DF67
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006A14: D1DD0080 06010582
	v_cvt_pk_u8_f32 v141, v131, 3, v128                        // 000000006A1C: D1DD008D 06010783
	v_fma_f32 v128, v120, v239, v152                           // 000000006A24: D1CB0080 0663DF78
	v_fma_f32 v129, v121, v239, v152                           // 000000006A2C: D1CB0081 0663DF79
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006A34: D1DD0080 02010180
	v_fma_f32 v130, v122, v239, v152                           // 000000006A3C: D1CB0082 0663DF7A
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006A44: D1DD0080 06010381
	v_fma_f32 v131, v123, v239, v152                           // 000000006A4C: D1CB0083 0663DF7B
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006A54: D1DD0080 06010582
	v_cvt_pk_u8_f32 v138, v131, 3, v128                        // 000000006A5C: D1DD008A 06010783
	v_fma_f32 v128, v104, v239, v152                           // 000000006A64: D1CB0080 0663DF68
	v_fma_f32 v129, v105, v239, v152                           // 000000006A6C: D1CB0081 0663DF69
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006A74: D1DD0080 02010180
	v_fma_f32 v130, v106, v239, v152                           // 000000006A7C: D1CB0082 0663DF6A
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006A84: D1DD0080 06010381
	v_fma_f32 v131, v107, v239, v152                           // 000000006A8C: D1CB0083 0663DF6B
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006A94: D1DD0080 06010582
	v_cvt_pk_u8_f32 v142, v131, 3, v128                        // 000000006A9C: D1DD008E 06010783
	v_fma_f32 v128, v124, v239, v152                           // 000000006AA4: D1CB0080 0663DF7C
	v_fma_f32 v129, v125, v239, v152                           // 000000006AAC: D1CB0081 0663DF7D
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006AB4: D1DD0080 02010180
	v_fma_f32 v130, v126, v239, v152                           // 000000006ABC: D1CB0082 0663DF7E
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006AC4: D1DD0080 06010381
	v_fma_f32 v131, v127, v239, v152                           // 000000006ACC: D1CB0083 0663DF7F
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006AD4: D1DD0080 06010582
	v_cvt_pk_u8_f32 v139, v131, 3, v128                        // 000000006ADC: D1DD008B 06010783
	v_fma_f32 v128, v108, v239, v152                           // 000000006AE4: D1CB0080 0663DF6C
	v_fma_f32 v129, v109, v239, v152                           // 000000006AEC: D1CB0081 0663DF6D
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006AF4: D1DD0080 02010180
	v_fma_f32 v130, v110, v239, v152                           // 000000006AFC: D1CB0082 0663DF6E
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006B04: D1DD0080 06010381
	v_fma_f32 v131, v111, v239, v152                           // 000000006B0C: D1CB0083 0663DF6F
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006B14: D1DD0080 06010582
	v_cvt_pk_u8_f32 v143, v131, 3, v128                        // 000000006B1C: D1DD008F 06010783
	v_fma_f32 v128, v80, v239, v150                            // 000000006B24: D1CB0080 065BDF50
	v_fma_f32 v129, v81, v239, v150                            // 000000006B2C: D1CB0081 065BDF51
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006B34: D1DD0080 02010180
	v_fma_f32 v130, v82, v239, v150                            // 000000006B3C: D1CB0082 065BDF52
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006B44: D1DD0080 06010381
	v_fma_f32 v129, v64, v239, v150                            // 000000006B4C: D1CB0081 065BDF40
	v_fma_f32 v131, v83, v239, v150                            // 000000006B54: D1CB0083 065BDF53
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006B5C: D1DD0080 06010582
	v_fma_f32 v130, v65, v239, v150                            // 000000006B64: D1CB0082 065BDF41
	v_cvt_pk_u8_f32 v129, v129, 0, 0                           // 000000006B6C: D1DD0081 02010181
	v_cvt_pk_u8_f32 v128, v131, 3, v128                        // 000000006B74: D1DD0080 06010783
	v_fma_f32 v131, v66, v239, v150                            // 000000006B7C: D1CB0083 065BDF42
	v_cvt_pk_u8_f32 v129, v130, 1, v129                        // 000000006B84: D1DD0081 06050382
	v_fma_f32 v132, v67, v239, v150                            // 000000006B8C: D1CB0084 065BDF43
	v_cvt_pk_u8_f32 v129, v131, 2, v129                        // 000000006B94: D1DD0081 06050583
	v_cvt_pk_u8_f32 v132, v132, 3, v129                        // 000000006B9C: D1DD0084 06050784
	v_fma_f32 v129, v84, v239, v150                            // 000000006BA4: D1CB0081 065BDF54
	v_fma_f32 v130, v85, v239, v150                            // 000000006BAC: D1CB0082 065BDF55
	v_cvt_pk_u8_f32 v129, v129, 0, 0                           // 000000006BB4: D1DD0081 02010181
	v_fma_f32 v131, v86, v239, v150                            // 000000006BBC: D1CB0083 065BDF56
	v_cvt_pk_u8_f32 v129, v130, 1, v129                        // 000000006BC4: D1DD0081 06050382
	v_fma_f32 v130, v68, v239, v150                            // 000000006BCC: D1CB0082 065BDF44
	v_fma_f32 v133, v87, v239, v150                            // 000000006BD4: D1CB0085 065BDF57
	v_cvt_pk_u8_f32 v129, v131, 2, v129                        // 000000006BDC: D1DD0081 06050583
	v_fma_f32 v131, v69, v239, v150                            // 000000006BE4: D1CB0083 065BDF45
	v_cvt_pk_u8_f32 v130, v130, 0, 0                           // 000000006BEC: D1DD0082 02010182
	v_cvt_pk_u8_f32 v129, v133, 3, v129                        // 000000006BF4: D1DD0081 06050785
	v_fma_f32 v133, v70, v239, v150                            // 000000006BFC: D1CB0085 065BDF46
	v_cvt_pk_u8_f32 v130, v131, 1, v130                        // 000000006C04: D1DD0082 06090383
	v_fma_f32 v134, v71, v239, v150                            // 000000006C0C: D1CB0086 065BDF47
	v_cvt_pk_u8_f32 v130, v133, 2, v130                        // 000000006C14: D1DD0082 06090585
	v_cvt_pk_u8_f32 v133, v134, 3, v130                        // 000000006C1C: D1DD0085 06090786
	v_fma_f32 v130, v88, v239, v150                            // 000000006C24: D1CB0082 065BDF58
	v_fma_f32 v131, v89, v239, v150                            // 000000006C2C: D1CB0083 065BDF59
	v_cvt_pk_u8_f32 v130, v130, 0, 0                           // 000000006C34: D1DD0082 02010182
	v_fma_f32 v134, v90, v239, v150                            // 000000006C3C: D1CB0086 065BDF5A
	v_cvt_pk_u8_f32 v130, v131, 1, v130                        // 000000006C44: D1DD0082 06090383
	v_fma_f32 v131, v72, v239, v150                            // 000000006C4C: D1CB0083 065BDF48
	v_fma_f32 v135, v91, v239, v150                            // 000000006C54: D1CB0087 065BDF5B
	v_cvt_pk_u8_f32 v130, v134, 2, v130                        // 000000006C5C: D1DD0082 06090586
	v_fma_f32 v134, v73, v239, v150                            // 000000006C64: D1CB0086 065BDF49
	v_cvt_pk_u8_f32 v131, v131, 0, 0                           // 000000006C6C: D1DD0083 02010183
	v_cvt_pk_u8_f32 v130, v135, 3, v130                        // 000000006C74: D1DD0082 06090787
	v_fma_f32 v135, v74, v239, v150                            // 000000006C7C: D1CB0087 065BDF4A
	v_cvt_pk_u8_f32 v131, v134, 1, v131                        // 000000006C84: D1DD0083 060D0386
	v_fma_f32 v144, v75, v239, v150                            // 000000006C8C: D1CB0090 065BDF4B
	v_cvt_pk_u8_f32 v131, v135, 2, v131                        // 000000006C94: D1DD0083 060D0587
	v_cvt_pk_u8_f32 v134, v144, 3, v131                        // 000000006C9C: D1DD0086 060D0790
	v_fma_f32 v131, v92, v239, v150                            // 000000006CA4: D1CB0083 065BDF5C
	v_fma_f32 v135, v93, v239, v150                            // 000000006CAC: D1CB0087 065BDF5D
	v_cvt_pk_u8_f32 v131, v131, 0, 0                           // 000000006CB4: D1DD0083 02010183
	v_fma_f32 v144, v94, v239, v150                            // 000000006CBC: D1CB0090 065BDF5E
	v_cvt_pk_u8_f32 v131, v135, 1, v131                        // 000000006CC4: D1DD0083 060D0387
	v_fma_f32 v135, v76, v239, v150                            // 000000006CCC: D1CB0087 065BDF4C
	v_fma_f32 v145, v95, v239, v150                            // 000000006CD4: D1CB0091 065BDF5F
	v_cvt_pk_u8_f32 v131, v144, 2, v131                        // 000000006CDC: D1DD0083 060D0590
	v_fma_f32 v144, v77, v239, v150                            // 000000006CE4: D1CB0090 065BDF4D
	v_cvt_pk_u8_f32 v135, v135, 0, 0                           // 000000006CEC: D1DD0087 02010187
	v_cvt_pk_u8_f32 v131, v145, 3, v131                        // 000000006CF4: D1DD0083 060D0791
	v_fma_f32 v145, v78, v239, v150                            // 000000006CFC: D1CB0091 065BDF4E
	v_cvt_pk_u8_f32 v135, v144, 1, v135                        // 000000006D04: D1DD0087 061D0390
	v_fma_f32 v146, v79, v239, v150                            // 000000006D0C: D1CB0092 065BDF4F
	v_cvt_pk_u8_f32 v135, v145, 2, v135                        // 000000006D14: D1DD0087 061D0591
	v_cvt_pk_u8_f32 v135, v146, 3, v135                        // 000000006D1C: D1DD0087 061D0792
	s_barrier                                                  // 000000006D24: BF8A0000
	s_setprio 1                                                // 000000006D28: BF8F0001
	s_waitcnt vmcnt(0)                                         // 000000006D2C: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[144:147], v[192:199], v[136:143], 0// 000000006D30: D3AD0090 020311C0
	v_mfma_f32_16x16x128_f8f6f4 v[146:149], v[192:199], v[128:135], 0// 000000006D38: D3AD0092 020301C0
	s_add_u32 s17, s79, s78                                    // 000000006D40: 80114E4F
	s_and_b32 s17, s17, 3                                      // 000000006D44: 86118311
	s_lshl_b32 s18, s17, 14                                    // 000000006D48: 8E128E11
	s_add_u32 s19, s92, s18                                    // 000000006D4C: 8013125C
	v_add3_u32 v145, s19, v245, v244                           // 000000006D50: D1FF0091 07D3EA13
	ds_read_b64_tr_b8 v[156:157], v145                         // 000000006D58: D9C40000 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:1024             // 000000006D60: D9C40400 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:2048             // 000000006D68: D9C40800 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:3072             // 000000006D70: D9C40C00 A2000091
	ds_read_b64_tr_b8 v[164:165], v145 offset:256              // 000000006D78: D9C40100 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:1280             // 000000006D80: D9C40500 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:2304             // 000000006D88: D9C40900 A8000091
	ds_read_b64_tr_b8 v[170:171], v145 offset:3328             // 000000006D90: D9C40D00 AA000091
	ds_read_b64_tr_b8 v[172:173], v145 offset:512              // 000000006D98: D9C40200 AC000091
	ds_read_b64_tr_b8 v[174:175], v145 offset:1536             // 000000006DA0: D9C40600 AE000091
	ds_read_b64_tr_b8 v[176:177], v145 offset:2560             // 000000006DA8: D9C40A00 B0000091
	ds_read_b64_tr_b8 v[178:179], v145 offset:3584             // 000000006DB0: D9C40E00 B2000091
	s_waitcnt lgkmcnt(4)                                       // 000000006DB8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000006DBC: D3AC0000 0003F7F2 D3AE0830 04C3119C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000006DCC: D3AC0000 0003F7F2 D3AE0820 048311A4
	ds_read_b64_tr_b8 v[156:157], v145 offset:768              // 000000006DDC: D9C40300 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:1792             // 000000006DE4: D9C40700 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:2816             // 000000006DEC: D9C40B00 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:3840             // 000000006DF4: D9C40F00 A2000091
	ds_read_b64_tr_b8 v[164:165], v145 offset:4096             // 000000006DFC: D9C41000 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:5120             // 000000006E04: D9C41400 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:6144             // 000000006E0C: D9C41800 A8000091
	ds_read_b64_tr_b8 v[170:171], v145 offset:7168             // 000000006E14: D9C41C00 AA000091
	s_waitcnt lgkmcnt(4)                                       // 000000006E1C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000006E20: D3AC0000 0003F7F2 D3AE0810 044311AC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000006E30: D3AC0000 0003F7F2 D3AE0800 0403119C
	ds_read_b64_tr_b8 v[172:173], v145 offset:4352             // 000000006E40: D9C41100 AC000091
	ds_read_b64_tr_b8 v[174:175], v145 offset:5376             // 000000006E48: D9C41500 AE000091
	ds_read_b64_tr_b8 v[176:177], v145 offset:6400             // 000000006E50: D9C41900 B0000091
	ds_read_b64_tr_b8 v[178:179], v145 offset:7424             // 000000006E58: D9C41D00 B2000091
	ds_read_b64_tr_b8 v[156:157], v145 offset:4608             // 000000006E60: D9C41200 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:5632             // 000000006E68: D9C41600 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:6656             // 000000006E70: D9C41A00 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:7680             // 000000006E78: D9C41E00 A2000091
	s_waitcnt lgkmcnt(4)                                       // 000000006E80: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[164:171], v[128:135], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000006E84: D3AC0000 0003FBF2 D3AE0830 04C301A4
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[172:179], v[128:135], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000006E94: D3AC0000 0003FBF2 D3AE0820 048301AC
	ds_read_b64_tr_b8 v[164:165], v145 offset:4864             // 000000006EA4: D9C41300 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:5888             // 000000006EAC: D9C41700 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:6912             // 000000006EB4: D9C41B00 A8000091
	ds_read_b64_tr_b8 v[170:171], v145 offset:7936             // 000000006EBC: D9C41F00 AA000091
	s_add_u32 s19, s79, 4                                      // 000000006EC4: 8013844F
	s_cmp_ge_u32 s19, s96                                      // 000000006EC8: BF096013
	s_cbranch_scc1 12                                          // 000000006ECC: BF85000C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5400>
	s_add_u32 s18, s18, s88                                    // 000000006ED0: 80125812
	s_mul_i32 s19, s19, s8                                     // 000000006ED4: 92130813
	s_lshl_b32 s19, s19, 7                                     // 000000006ED8: 8E138713
	s_mov_b32 m0, s18                                          // 000000006EDC: BEFC0012
	s_nop 0                                                    // 000000006EE0: BF800000
	buffer_load_dwordx4 v233, s[84:87], s19 offen lds          // 000000006EE4: E05D1000 131500E9
	s_add_u32 m0, s18, 0x2000                                  // 000000006EEC: 807CFF12 00002000
	s_nop 0                                                    // 000000006EF4: BF800000
	buffer_load_dwordx4 v234, s[84:87], s19 offen lds          // 000000006EF8: E05D1000 131500EA
	s_add_u32 s18, s79, 2                                      // 000000006F00: 8012824F
	s_cmp_ge_u32 s18, s96                                      // 000000006F04: BF096012
	s_cbranch_scc1 15                                          // 000000006F08: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5448>
	s_xor_b32 s17, s17, 2                                      // 000000006F0C: 88118211
	s_mul_i32 s18, s18, s8                                     // 000000006F10: 92120812
	s_lshl_b32 s17, s17, 14                                    // 000000006F14: 8E118E11
	s_add_u32 s19, s92, s17                                    // 000000006F18: 8013115C
	s_add_u32 m0, s19, s88                                     // 000000006F1C: 807C5813
	s_lshl_b32 s18, s18, 7                                     // 000000006F20: 8E128712
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000006F24: E05D1000 121400EB
	s_add_u32 s17, s92, s17                                    // 000000006F2C: 8011115C
	s_add_u32 s17, s17, s88                                    // 000000006F30: 80115811
	s_add_u32 m0, s17, 0x2000                                  // 000000006F34: 807CFF11 00002000
	s_nop 0                                                    // 000000006F3C: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000006F40: E05D1000 121400EC
	v_mul_f32_e32 v136, v154, v144                             // 000000006F48: 0B11219A
	v_mul_f32_e32 v137, v155, v146                             // 000000006F4C: 0B13259B
	v_add_f32_e32 v136, v250, v136                             // 000000006F50: 031111FA
	v_add_f32_e32 v250, v136, v137                             // 000000006F54: 03F51388
	s_waitcnt lgkmcnt(0)                                       // 000000006F58: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[156:163], v[128:135], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000006F5C: D3AC0000 0003FBF2 D3AE0810 0443019C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[164:171], v[128:135], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000006F6C: D3AC0000 0003FBF2 D3AE0800 040301A4
	s_barrier                                                  // 000000006F7C: BF8A0000
	s_add_u32 s42, s79, 1                                      // 000000006F80: 802A814F
	s_branch 42                                                // 000000006F84: BF82002A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5530>
	s_barrier                                                  // 000000006F88: BF8A0000
	s_waitcnt vmcnt(0)                                         // 000000006F8C: BF8C0F70
	s_add_u32 s17, s42, 4                                      // 000000006F90: 8011842A
	s_cmp_ge_u32 s17, s96                                      // 000000006F94: BF096011
	s_cbranch_scc1 15                                          // 000000006F98: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x54d8>
	s_add_u32 s18, s42, s78                                    // 000000006F9C: 80124E2A
	s_and_b32 s18, s18, 3                                      // 000000006FA0: 86128312
	s_lshl_b32 s18, s18, 14                                    // 000000006FA4: 8E128E12
	s_or_b32 s18, s18, s88                                     // 000000006FA8: 87125812
	s_mul_i32 s17, s17, s8                                     // 000000006FAC: 92110811
	s_lshl_b32 s17, s17, 7                                     // 000000006FB0: 8E118711
	s_mov_b32 m0, s18                                          // 000000006FB4: BEFC0012
	s_nop 0                                                    // 000000006FB8: BF800000
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 000000006FBC: E05D1000 111500E9
	s_or_b32 m0, s18, 0x2000                                   // 000000006FC4: 877CFF12 00002000
	s_nop 0                                                    // 000000006FCC: BF800000
	buffer_load_dwordx4 v234, s[84:87], s17 offen lds          // 000000006FD0: E05D1000 111500EA
	s_add_u32 s17, s42, 2                                      // 000000006FD8: 8011822A
	s_cmp_ge_u32 s17, s96                                      // 000000006FDC: BF096011
	s_cbranch_scc1 17                                          // 000000006FE0: BF850011 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5528>
	s_add_u32 s18, s42, s78                                    // 000000006FE4: 80124E2A
	s_and_b32 s18, s18, 3                                      // 000000006FE8: 86128312
	s_xor_b32 s18, s18, 2                                      // 000000006FEC: 88128212
	s_mul_i32 s17, s17, s8                                     // 000000006FF0: 92110811
	s_lshl_b32 s18, s18, 14                                    // 000000006FF4: 8E128E12
	s_add_u32 s19, s92, s18                                    // 000000006FF8: 8013125C
	s_add_u32 m0, s19, s88                                     // 000000006FFC: 807C5813
	s_lshl_b32 s17, s17, 7                                     // 000000007000: 8E118711
	buffer_load_dwordx4 v235, s[80:83], s17 offen lds          // 000000007004: E05D1000 111400EB
	s_add_u32 s18, s92, s18                                    // 00000000700C: 8012125C
	s_add_u32 s18, s18, s88                                    // 000000007010: 80125812
	s_add_u32 m0, s18, 0x2000                                  // 000000007014: 807CFF12 00002000
	s_nop 0                                                    // 00000000701C: BF800000
	buffer_load_dwordx4 v236, s[80:83], s17 offen lds          // 000000007020: E05D1000 111400EC
	s_barrier                                                  // 000000007028: BF8A0000
	s_add_u32 s42, s42, 1                                      // 00000000702C: 802A812A
	s_add_u32 s17, s42, 1                                      // 000000007030: 8011812A
	s_cmp_ge_u32 s17, s96                                      // 000000007034: BF096011
	s_cbranch_scc1 1711                                        // 000000007038: BF8506AF <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6ff8>
	s_cmp_ge_u32 s42, s79                                      // 00000000703C: BF094F2A
	s_cbranch_scc1 1075                                        // 000000007040: BF850433 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6610>
	s_setprio 0                                                // 000000007044: BF8F0000
	v_fma_f32 v108, v108, v239, v152                           // 000000007048: D1CB006C 0663DF6C
	v_fma_f32 v64, v64, v239, v150                             // 000000007050: D1CB0040 065BDF40
	v_fma_f32 v68, v68, v239, v150                             // 000000007058: D1CB0044 065BDF44
	s_add_u32 s17, s42, s78                                    // 000000007060: 80114E2A
	v_fma_f32 v96, v96, v239, v152                             // 000000007064: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 00000000706C: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 000000007074: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 00000000707C: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 000000007084: D1CB0068 0663DF68
	v_fma_f32 v109, v109, v239, v152                           // 00000000708C: D1CB006D 0663DF6D
	v_fma_f32 v80, v80, v239, v150                             // 000000007094: D1CB0050 065BDF50
	v_fma_f32 v65, v65, v239, v150                             // 00000000709C: D1CB0041 065BDF41
	v_fma_f32 v84, v84, v239, v150                             // 0000000070A4: D1CB0054 065BDF54
	v_fma_f32 v69, v69, v239, v150                             // 0000000070AC: D1CB0045 065BDF45
	v_fma_f32 v72, v72, v239, v150                             // 0000000070B4: D1CB0048 065BDF48
	v_fma_f32 v92, v92, v239, v150                             // 0000000070BC: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 0000000070C4: D1DD006C 0201016C
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 0000000070CC: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 0000000070D4: D1DD0044 02010144
	s_add_u32 s18, s17, 1                                      // 0000000070DC: 80128111
	v_fma_f32 v97, v97, v239, v152                             // 0000000070E0: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 0000000070E8: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 0000000070F0: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 0000000070F8: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 000000007100: D1CB0069 0663DF69
	v_fma_f32 v110, v110, v239, v152                           // 000000007108: D1CB006E 0663DF6E
	v_fma_f32 v81, v81, v239, v150                             // 000000007110: D1CB0051 065BDF51
	v_fma_f32 v66, v66, v239, v150                             // 000000007118: D1CB0042 065BDF42
	v_fma_f32 v85, v85, v239, v150                             // 000000007120: D1CB0055 065BDF55
	v_fma_f32 v70, v70, v239, v150                             // 000000007128: D1CB0046 065BDF46
	v_fma_f32 v88, v88, v239, v150                             // 000000007130: D1CB0058 065BDF58
	v_fma_f32 v73, v73, v239, v150                             // 000000007138: D1CB0049 065BDF49
	v_fma_f32 v93, v93, v239, v150                             // 000000007140: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000007148: D1DD0060 02010160
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000007150: D1DD0074 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000007158: D1DD0064 02010164
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000007160: D1DD0078 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000007168: D1DD0068 02010168
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000007170: D1DD0050 02010150
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000007178: D1DD0054 02010154
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000007180: D1DD0048 02010148
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000007188: D1DD005C 0201015C
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 000000007190: D1DD006C 05B1036D
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000007198: D1DD0040 05010341
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 0000000071A0: D1DD0044 05110345
	s_and_b32 s18, s18, 3                                      // 0000000071A8: 86128312
	v_fma_f32 v98, v98, v239, v152                             // 0000000071AC: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 0000000071B4: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 0000000071BC: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 0000000071C4: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 0000000071CC: D1CB006A 0663DF6A
	v_fma_f32 v111, v111, v239, v152                           // 0000000071D4: D1CB006F 0663DF6F
	v_fma_f32 v82, v82, v239, v150                             // 0000000071DC: D1CB0052 065BDF52
	v_fma_f32 v86, v86, v239, v150                             // 0000000071E4: D1CB0056 065BDF56
	v_fma_f32 v71, v71, v239, v150                             // 0000000071EC: D1CB0047 065BDF47
	v_fma_f32 v89, v89, v239, v150                             // 0000000071F4: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 0000000071FC: D1DD0058 02010158
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000007204: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v116                         // 00000000720C: D1DD0061 05D10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 000000007214: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v120                        // 00000000721C: D1DD0065 05E10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 000000007224: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 00000000722C: D1DD0050 05410351
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 000000007234: D1DD0041 05510355
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 00000000723C: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v93, 1, v92                           // 000000007244: D1DD0049 0571035D
	v_cvt_pk_u8_f32 v93, v110, 2, v108                         // 00000000724C: D1DD005D 05B1056E
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000007254: D1DD0040 05010542
	v_cvt_pk_u8_f32 v66, v70, 2, v68                           // 00000000725C: D1DD0042 05110546
	s_lshl_b32 s18, s18, 14                                    // 000000007264: 8E128E12
	v_fma_f32 v99, v99, v239, v152                             // 000000007268: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 000000007270: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 000000007278: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 000000007280: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 000000007288: D1CB006B 0663DF6B
	v_fma_f32 v83, v83, v239, v150                             // 000000007290: D1CB0053 065BDF53
	v_fma_f32 v87, v87, v239, v150                             // 000000007298: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 0000000072A0: D1DD0045 05610359
	v_cvt_pk_u8_f32 v81, v98, 2, v96                           // 0000000072A8: D1DD0051 05810562
	v_cvt_pk_u8_f32 v84, v118, 2, v97                          // 0000000072B0: D1DD0054 05850576
	v_cvt_pk_u8_f32 v85, v102, 2, v100                         // 0000000072B8: D1DD0055 05910566
	v_cvt_pk_u8_f32 v88, v122, 2, v101                         // 0000000072C0: D1DD0058 0595057A
	v_cvt_pk_u8_f32 v89, v106, 2, v104                         // 0000000072C8: D1DD0059 05A1056A
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 0000000072D0: D1DD0050 05410552
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 0000000072D8: D1DD0041 05050556
	v_cvt_pk_u8_f32 v215, v111, 3, v93                         // 0000000072E0: D1DD00D7 0575076F
	v_cvt_pk_u8_f32 v93, v71, 3, v66                           // 0000000072E8: D1DD005D 05090747
	v_or_b32_e32 v71, s18, v231                                // 0000000072F0: 288FCE12
	v_cvt_pk_u8_f32 v212, v99, 3, v81                          // 0000000072F4: D1DD00D4 05450763
	v_cvt_pk_u8_f32 v209, v119, 3, v84                         // 0000000072FC: D1DD00D1 05510777
	v_cvt_pk_u8_f32 v213, v103, 3, v85                         // 000000007304: D1DD00D5 05550767
	v_cvt_pk_u8_f32 v210, v123, 3, v88                         // 00000000730C: D1DD00D2 0561077B
	v_cvt_pk_u8_f32 v214, v107, 3, v89                         // 000000007314: D1DD00D6 0565076B
	v_cvt_pk_u8_f32 v88, v83, 3, v80                           // 00000000731C: D1DD0058 05410753
	v_cvt_pk_u8_f32 v89, v87, 3, v65                           // 000000007324: D1DD0059 05050757
	ds_read_b128 v[80:83], v71                                 // 00000000732C: D9FE0000 50000047
	ds_read_b128 v[84:87], v71 offset:16                       // 000000007334: D9FE0010 54000047
	ds_read_b128 v[96:99], v71 offset:4096                     // 00000000733C: D9FE1000 60000047
	ds_read_b128 v[100:103], v71 offset:4112                   // 000000007344: D9FE1010 64000047
	v_fma_f32 v112, v112, v239, v152                           // 00000000734C: D1CB0070 0663DF70
	v_fma_f32 v124, v124, v239, v152                           // 000000007354: D1CB007C 0663DF7C
	v_fma_f32 v113, v113, v239, v152                           // 00000000735C: D1CB0071 0663DF71
	v_fma_f32 v125, v125, v239, v152                           // 000000007364: D1CB007D 0663DF7D
	v_fma_f32 v76, v76, v239, v150                             // 00000000736C: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000007374: D1DD0070 02010170
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 00000000737C: D1DD007C 0201017C
	v_fma_f32 v114, v114, v239, v152                           // 000000007384: D1CB0072 0663DF72
	v_fma_f32 v126, v126, v239, v152                           // 00000000738C: D1CB007E 0663DF7E
	v_fma_f32 v77, v77, v239, v150                             // 000000007394: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 00000000739C: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 0000000073A4: D1DD0070 05C10371
	v_cvt_pk_u8_f32 v105, v125, 1, v124                        // 0000000073AC: D1DD0069 05F1037D
	v_fma_f32 v115, v115, v239, v152                           // 0000000073B4: D1CB0073 0663DF73
	v_fma_f32 v127, v127, v239, v152                           // 0000000073BC: D1CB007F 0663DF7F
	v_fma_f32 v90, v90, v239, v150                             // 0000000073C4: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 0000000073CC: D1CB004A 065BDF4A
	v_fma_f32 v94, v94, v239, v150                             // 0000000073D4: D1CB005E 065BDF5E
	v_fma_f32 v78, v78, v239, v150                             // 0000000073DC: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v76, v77, 1, v76                           // 0000000073E4: D1DD004C 0531034D
	v_cvt_pk_u8_f32 v77, v114, 2, v112                         // 0000000073EC: D1DD004D 05C10572
	v_cvt_pk_u8_f32 v92, v126, 2, v105                         // 0000000073F4: D1DD005C 05A5057E
	v_fma_f32 v67, v67, v239, v150                             // 0000000073FC: D1CB0043 065BDF43
	v_fma_f32 v91, v91, v239, v150                             // 000000007404: D1CB005B 065BDF5B
	v_fma_f32 v75, v75, v239, v150                             // 00000000740C: D1CB004B 065BDF4B
	v_fma_f32 v95, v95, v239, v150                             // 000000007414: D1CB005F 065BDF5F
	v_fma_f32 v79, v79, v239, v150                             // 00000000741C: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v68, v90, 2, v69                           // 000000007424: D1DD0044 0515055A
	v_cvt_pk_u8_f32 v69, v74, 2, v72                           // 00000000742C: D1DD0045 0521054A
	v_cvt_pk_u8_f32 v70, v94, 2, v73                           // 000000007434: D1DD0046 0525055E
	v_cvt_pk_u8_f32 v72, v78, 2, v76                           // 00000000743C: D1DD0048 0531054E
	v_cvt_pk_u8_f32 v208, v115, 3, v77                         // 000000007444: D1DD00D0 05350773
	v_cvt_pk_u8_f32 v211, v127, 3, v92                         // 00000000744C: D1DD00D3 0571077F
	v_cvt_pk_u8_f32 v92, v67, 3, v64                           // 000000007454: D1DD005C 05010743
	v_cvt_pk_u8_f32 v90, v91, 3, v68                           // 00000000745C: D1DD005A 0511075B
	v_cvt_pk_u8_f32 v94, v75, 3, v69                           // 000000007464: D1DD005E 0515074B
	v_cvt_pk_u8_f32 v91, v95, 3, v70                           // 00000000746C: D1DD005B 0519075F
	v_cvt_pk_u8_f32 v95, v79, 3, v72                           // 000000007474: D1DD005F 0521074F
	s_barrier                                                  // 00000000747C: BF8A0000
	s_and_b32 s17, s17, 3                                      // 000000007480: 86118311
	s_setprio 1                                                // 000000007484: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[208:215], 0// 000000007488: D3AD0040 0203A1C0
	scratch_store_dwordx4 off, v[88:91], off                   // 000000007490: DC7C4000 007F5800
	s_nop 0                                                    // 000000007498: BF800000
	scratch_store_dwordx4 off, v[92:95], off offset:16         // 00000000749C: DC7C4010 007F5C00
	v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[192:199], v[88:95], 0// 0000000074A4: D3AD0042 0202B1C0
	s_nop 3                                                    // 0000000074AC: BF800003
	v_mul_f32_e32 v64, v154, v64                               // 0000000074B0: 0A80819A
	v_add_f32_e32 v64, v250, v64                               // 0000000074B4: 028081FA
	s_nop 5                                                    // 0000000074B8: BF800005
	v_mul_f32_e32 v65, v155, v66                               // 0000000074BC: 0A82859B
	v_add_f32_e32 v250, v64, v65                               // 0000000074C0: 03F48340
	ds_read_b128 v[88:91], v71 offset:8192                     // 0000000074C4: D9FE2000 58000047
	ds_read_b128 v[92:95], v71 offset:8208                     // 0000000074CC: D9FE2010 5C000047
	ds_read_b128 v[104:107], v71 offset:12288                  // 0000000074D4: D9FE3000 68000047
	ds_read_b128 v[108:111], v71 offset:12304                  // 0000000074DC: D9FE3010 6C000047
	s_waitcnt lgkmcnt(4)                                       // 0000000074E4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[80:87], v[220:227], 0// 0000000074E8: D3AE00B0 0203B950
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[96:103], v[220:227], 0// 0000000074F0: D3AE00A0 0203B960
	v_or_b32_e32 v64, s18, v232                                // 0000000074F8: 2881D012
	ds_read_b128 v[66:69], v64                                 // 0000000074FC: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 000000007504: D9FE0010 46000040
	ds_read_b128 v[74:77], v64 offset:4096                     // 00000000750C: D9FE1000 4A000040
	ds_read_b128 v[78:81], v64 offset:4112                     // 000000007514: D9FE1010 4E000040
	s_waitcnt lgkmcnt(4)                                       // 00000000751C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[88:95], v[220:227], 0// 000000007520: D3AE0090 0203B958
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[104:111], v[220:227], 0// 000000007528: D3AE0080 0203B968
	ds_read_b128 v[82:85], v64 offset:8192                     // 000000007530: D9FE2000 52000040
	ds_read_b128 v[86:89], v64 offset:8208                     // 000000007538: D9FE2010 56000040
	ds_read_b128 v[112:115], v64 offset:12288                  // 000000007540: D9FE3000 70000040
	ds_read_b128 v[116:119], v64 offset:12304                  // 000000007548: D9FE3010 74000040
	s_add_u32 s18, s42, 4                                      // 000000007550: 8012842A
	s_cmp_ge_u32 s18, s96                                      // 000000007554: BF096012
	s_cbranch_scc1 13                                          // 000000007558: BF85000D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5a90>
	s_lshl_b32 s19, s17, 14                                    // 00000000755C: 8E138E11
	s_or_b32 s19, s19, s88                                     // 000000007560: 87135813
	s_mul_i32 s18, s18, s8                                     // 000000007564: 92120812
	s_lshl_b32 s18, s18, 7                                     // 000000007568: 8E128712
	s_mov_b32 m0, s19                                          // 00000000756C: BEFC0013
	s_nop 0                                                    // 000000007570: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000007574: E05D1000 121500E9
	s_or_b32 m0, s19, 0x2000                                   // 00000000757C: 877CFF13 00002000
	s_nop 0                                                    // 000000007584: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 000000007588: E05D1000 121500EA
	s_add_u32 s18, s42, 2                                      // 000000007590: 8012822A
	s_cmp_ge_u32 s18, s96                                      // 000000007594: BF096012
	s_cbranch_scc1 15                                          // 000000007598: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5ad8>
	s_xor_b32 s19, s17, 2                                      // 00000000759C: 88138211
	s_mul_i32 s18, s18, s8                                     // 0000000075A0: 92120812
	s_lshl_b32 s19, s19, 14                                    // 0000000075A4: 8E138E13
	s_add_u32 s20, s92, s19                                    // 0000000075A8: 8014135C
	s_add_u32 m0, s20, s88                                     // 0000000075AC: 807C5814
	s_lshl_b32 s18, s18, 7                                     // 0000000075B0: 8E128712
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 0000000075B4: E05D1000 121400EB
	s_add_u32 s19, s92, s19                                    // 0000000075BC: 8013135C
	s_add_u32 s19, s19, s88                                    // 0000000075C0: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 0000000075C4: 807CFF13 00002000
	s_nop 0                                                    // 0000000075CC: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 0000000075D0: E05D1000 121400EC
	s_waitcnt lgkmcnt(4)                                       // 0000000075D8: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[66:73], v[200:207], v[176:191]// 0000000075DC: D3AE00B0 06C39142
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[74:81], v[200:207], v[160:175]// 0000000075E4: D3AE00A0 0683914A
	s_nop 15                                                   // 0000000075EC: BF80000F
	s_nop 3                                                    // 0000000075F0: BF800003
	v_mov_b64_e32 v[96:97], v[160:161]                         // 0000000075F4: 7EC071A0
	v_mov_b64_e32 v[98:99], v[162:163]                         // 0000000075F8: 7EC471A2
	v_mov_b64_e32 v[100:101], v[164:165]                       // 0000000075FC: 7EC871A4
	v_mov_b64_e32 v[102:103], v[166:167]                       // 000000007600: 7ECC71A6
	v_mov_b64_e32 v[104:105], v[168:169]                       // 000000007604: 7ED071A8
	v_mov_b64_e32 v[106:107], v[170:171]                       // 000000007608: 7ED471AA
	v_mov_b64_e32 v[108:109], v[172:173]                       // 00000000760C: 7ED871AC
	v_mov_b64_e32 v[110:111], v[174:175]                       // 000000007610: 7EDC71AE
	s_waitcnt lgkmcnt(0)                                       // 000000007614: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[82:89], v[200:207], v[144:159]// 000000007618: D3AE0090 06439152
	s_nop 15                                                   // 000000007620: BF80000F
	s_nop 3                                                    // 000000007624: BF800003
	v_mov_b64_e32 v[80:81], v[144:145]                         // 000000007628: 7EA07190
	v_mov_b64_e32 v[82:83], v[146:147]                         // 00000000762C: 7EA47192
	v_mov_b64_e32 v[84:85], v[148:149]                         // 000000007630: 7EA87194
	v_mov_b64_e32 v[86:87], v[150:151]                         // 000000007634: 7EAC7196
	v_mov_b64_e32 v[88:89], v[152:153]                         // 000000007638: 7EB07198
	v_mov_b64_e32 v[90:91], v[154:155]                         // 00000000763C: 7EB4719A
	v_mov_b64_e32 v[92:93], v[156:157]                         // 000000007640: 7EB8719C
	v_mov_b64_e32 v[94:95], v[158:159]                         // 000000007644: 7EBC719E
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[112:119], v[200:207], v[128:143]// 000000007648: D3AE0080 06039170
	s_nop 15                                                   // 000000007650: BF80000F
	s_nop 3                                                    // 000000007654: BF800003
	v_mov_b64_e32 v[64:65], v[128:129]                         // 000000007658: 7E807180
	v_mov_b64_e32 v[66:67], v[130:131]                         // 00000000765C: 7E847182
	v_mov_b64_e32 v[68:69], v[132:133]                         // 000000007660: 7E887184
	v_mov_b64_e32 v[70:71], v[134:135]                         // 000000007664: 7E8C7186
	v_mov_b64_e32 v[72:73], v[136:137]                         // 000000007668: 7E907188
	v_mov_b64_e32 v[74:75], v[138:139]                         // 00000000766C: 7E94718A
	v_mov_b64_e32 v[76:77], v[140:141]                         // 000000007670: 7E98718C
	v_mov_b64_e32 v[78:79], v[142:143]                         // 000000007674: 7E9C718E
	s_lshl_b32 s18, s42, 7                                     // 000000007678: 8E12872A
	s_add_u32 s20, s18, 0x80                                   // 00000000767C: 8014FF12 00000080
	s_sub_u32 s18, s3, s20                                     // 000000007684: 80921403
	s_sub_i32 s18, s18, 0                                      // 000000007688: 81928012
	s_cmp_ge_i32 s18, 32                                       // 00000000768C: BF03A012
	v_mov_b64_e32 v[112:113], v[176:177]                       // 000000007690: 7EE071B0
	v_mov_b64_e32 v[114:115], v[178:179]                       // 000000007694: 7EE471B2
	v_mov_b64_e32 v[116:117], v[180:181]                       // 000000007698: 7EE871B4
	v_mov_b64_e32 v[118:119], v[182:183]                       // 00000000769C: 7EEC71B6
	v_mov_b64_e32 v[120:121], v[184:185]                       // 0000000076A0: 7EF071B8
	v_mov_b64_e32 v[122:123], v[186:187]                       // 0000000076A4: 7EF471BA
	v_mov_b64_e32 v[124:125], v[188:189]                       // 0000000076A8: 7EF871BC
	v_mov_b64_e32 v[126:127], v[190:191]                       // 0000000076AC: 7EFC71BE
	s_cbranch_scc1 90                                          // 0000000076B0: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5d1c>
	s_mov_b32 s53, s52                                         // 0000000076B4: BEB50034
	s_mov_b32 s54, s52                                         // 0000000076B8: BEB60034
	s_mov_b32 s55, s52                                         // 0000000076BC: BEB70034
	s_mov_b32 s56, s52                                         // 0000000076C0: BEB80034
	s_mov_b32 s57, s52                                         // 0000000076C4: BEB90034
	s_mov_b32 s58, s52                                         // 0000000076C8: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000076CC: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000076D0: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000076D4: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000076D8: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000076DC: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000076E0: BEC00034
	s_mov_b32 s65, s52                                         // 0000000076E4: BEC10034
	s_mov_b32 s66, s52                                         // 0000000076E8: BEC20034
	s_mov_b32 s67, s52                                         // 0000000076EC: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 0000000076F0: BF048012
	v_mov_b64_e32 v[126:127], s[66:67]                         // 0000000076F4: 7EFC7042
	v_mov_b64_e32 v[124:125], s[64:65]                         // 0000000076F8: 7EF87040
	v_mov_b64_e32 v[122:123], s[62:63]                         // 0000000076FC: 7EF4703E
	v_mov_b64_e32 v[120:121], s[60:61]                         // 000000007700: 7EF0703C
	v_mov_b64_e32 v[118:119], s[58:59]                         // 000000007704: 7EEC703A
	v_mov_b64_e32 v[116:117], s[56:57]                         // 000000007708: 7EE87038
	v_mov_b64_e32 v[114:115], s[54:55]                         // 00000000770C: 7EE47036
	v_mov_b64_e32 v[112:113], s[52:53]                         // 000000007710: 7EE07034
	s_cbranch_scc1 65                                          // 000000007714: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5d1c>
	v_add_u32_e32 v127, s18, v243                              // 000000007718: 68FFE612
	v_cmp_gt_i32_e32 vcc, 0, v127                              // 00000000771C: 7D88FE80
	s_nop 1                                                    // 000000007720: BF800001
	v_cndmask_b32_e64 v112, v176, v240, vcc                    // 000000007724: D1000070 01ABE1B0
	v_cmp_gt_i32_e32 vcc, 1, v127                              // 00000000772C: 7D88FE81
	s_nop 1                                                    // 000000007730: BF800001
	v_cndmask_b32_e64 v113, v177, v240, vcc                    // 000000007734: D1000071 01ABE1B1
	v_cmp_gt_i32_e32 vcc, 2, v127                              // 00000000773C: 7D88FE82
	s_nop 1                                                    // 000000007740: BF800001
	v_cndmask_b32_e64 v114, v178, v240, vcc                    // 000000007744: D1000072 01ABE1B2
	v_cmp_gt_i32_e32 vcc, 3, v127                              // 00000000774C: 7D88FE83
	s_nop 1                                                    // 000000007750: BF800001
	v_cndmask_b32_e64 v115, v179, v240, vcc                    // 000000007754: D1000073 01ABE1B3
	v_cmp_gt_i32_e32 vcc, 8, v127                              // 00000000775C: 7D88FE88
	s_nop 1                                                    // 000000007760: BF800001
	v_cndmask_b32_e64 v116, v180, v240, vcc                    // 000000007764: D1000074 01ABE1B4
	v_cmp_gt_i32_e32 vcc, 9, v127                              // 00000000776C: 7D88FE89
	s_nop 1                                                    // 000000007770: BF800001
	v_cndmask_b32_e64 v117, v181, v240, vcc                    // 000000007774: D1000075 01ABE1B5
	v_cmp_gt_i32_e32 vcc, 10, v127                             // 00000000777C: 7D88FE8A
	s_nop 1                                                    // 000000007780: BF800001
	v_cndmask_b32_e64 v118, v182, v240, vcc                    // 000000007784: D1000076 01ABE1B6
	v_cmp_gt_i32_e32 vcc, 11, v127                             // 00000000778C: 7D88FE8B
	s_nop 1                                                    // 000000007790: BF800001
	v_cndmask_b32_e64 v119, v183, v240, vcc                    // 000000007794: D1000077 01ABE1B7
	v_cmp_gt_i32_e32 vcc, 16, v127                             // 00000000779C: 7D88FE90
	s_nop 1                                                    // 0000000077A0: BF800001
	v_cndmask_b32_e64 v120, v184, v240, vcc                    // 0000000077A4: D1000078 01ABE1B8
	v_cmp_gt_i32_e32 vcc, 17, v127                             // 0000000077AC: 7D88FE91
	s_nop 1                                                    // 0000000077B0: BF800001
	v_cndmask_b32_e64 v121, v185, v240, vcc                    // 0000000077B4: D1000079 01ABE1B9
	v_cmp_gt_i32_e32 vcc, 18, v127                             // 0000000077BC: 7D88FE92
	s_nop 1                                                    // 0000000077C0: BF800001
	v_cndmask_b32_e64 v122, v186, v240, vcc                    // 0000000077C4: D100007A 01ABE1BA
	v_cmp_gt_i32_e32 vcc, 19, v127                             // 0000000077CC: 7D88FE93
	s_nop 1                                                    // 0000000077D0: BF800001
	v_cndmask_b32_e64 v123, v187, v240, vcc                    // 0000000077D4: D100007B 01ABE1BB
	v_cmp_gt_i32_e32 vcc, 24, v127                             // 0000000077DC: 7D88FE98
	s_nop 1                                                    // 0000000077E0: BF800001
	v_cndmask_b32_e64 v124, v188, v240, vcc                    // 0000000077E4: D100007C 01ABE1BC
	v_cmp_gt_i32_e32 vcc, 25, v127                             // 0000000077EC: 7D88FE99
	s_nop 1                                                    // 0000000077F0: BF800001
	v_cndmask_b32_e64 v125, v189, v240, vcc                    // 0000000077F4: D100007D 01ABE1BD
	v_cmp_gt_i32_e32 vcc, 26, v127                             // 0000000077FC: 7D88FE9A
	s_nop 1                                                    // 000000007800: BF800001
	v_cndmask_b32_e64 v126, v190, v240, vcc                    // 000000007804: D100007E 01ABE1BE
	v_cmp_gt_i32_e32 vcc, 27, v127                             // 00000000780C: 7D88FE9B
	s_nop 1                                                    // 000000007810: BF800001
	v_cndmask_b32_e64 v127, v191, v240, vcc                    // 000000007814: D100007F 01ABE1BF
	s_sub_u32 s18, s3, s20                                     // 00000000781C: 80921403
	s_sub_i32 s18, s18, 32                                     // 000000007820: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 000000007824: BF03A012
	s_cbranch_scc1 90                                          // 000000007828: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5e94>
	s_mov_b32 s53, s52                                         // 00000000782C: BEB50034
	s_mov_b32 s54, s52                                         // 000000007830: BEB60034
	s_mov_b32 s55, s52                                         // 000000007834: BEB70034
	s_mov_b32 s56, s52                                         // 000000007838: BEB80034
	s_mov_b32 s57, s52                                         // 00000000783C: BEB90034
	s_mov_b32 s58, s52                                         // 000000007840: BEBA0034
	s_mov_b32 s59, s52                                         // 000000007844: BEBB0034
	s_mov_b32 s60, s52                                         // 000000007848: BEBC0034
	s_mov_b32 s61, s52                                         // 00000000784C: BEBD0034
	s_mov_b32 s62, s52                                         // 000000007850: BEBE0034
	s_mov_b32 s63, s52                                         // 000000007854: BEBF0034
	s_mov_b32 s64, s52                                         // 000000007858: BEC00034
	s_mov_b32 s65, s52                                         // 00000000785C: BEC10034
	s_mov_b32 s66, s52                                         // 000000007860: BEC20034
	s_mov_b32 s67, s52                                         // 000000007864: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000007868: BF048012
	v_mov_b64_e32 v[110:111], s[66:67]                         // 00000000786C: 7EDC7042
	v_mov_b64_e32 v[108:109], s[64:65]                         // 000000007870: 7ED87040
	v_mov_b64_e32 v[106:107], s[62:63]                         // 000000007874: 7ED4703E
	v_mov_b64_e32 v[104:105], s[60:61]                         // 000000007878: 7ED0703C
	v_mov_b64_e32 v[102:103], s[58:59]                         // 00000000787C: 7ECC703A
	v_mov_b64_e32 v[100:101], s[56:57]                         // 000000007880: 7EC87038
	v_mov_b64_e32 v[98:99], s[54:55]                           // 000000007884: 7EC47036
	v_mov_b64_e32 v[96:97], s[52:53]                           // 000000007888: 7EC07034
	s_cbranch_scc1 65                                          // 00000000788C: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5e94>
	v_add_u32_e32 v111, s18, v243                              // 000000007890: 68DFE612
	v_cmp_gt_i32_e32 vcc, 0, v111                              // 000000007894: 7D88DE80
	s_nop 1                                                    // 000000007898: BF800001
	v_cndmask_b32_e64 v96, v160, v240, vcc                     // 00000000789C: D1000060 01ABE1A0
	v_cmp_gt_i32_e32 vcc, 1, v111                              // 0000000078A4: 7D88DE81
	s_nop 1                                                    // 0000000078A8: BF800001
	v_cndmask_b32_e64 v97, v161, v240, vcc                     // 0000000078AC: D1000061 01ABE1A1
	v_cmp_gt_i32_e32 vcc, 2, v111                              // 0000000078B4: 7D88DE82
	s_nop 1                                                    // 0000000078B8: BF800001
	v_cndmask_b32_e64 v98, v162, v240, vcc                     // 0000000078BC: D1000062 01ABE1A2
	v_cmp_gt_i32_e32 vcc, 3, v111                              // 0000000078C4: 7D88DE83
	s_nop 1                                                    // 0000000078C8: BF800001
	v_cndmask_b32_e64 v99, v163, v240, vcc                     // 0000000078CC: D1000063 01ABE1A3
	v_cmp_gt_i32_e32 vcc, 8, v111                              // 0000000078D4: 7D88DE88
	s_nop 1                                                    // 0000000078D8: BF800001
	v_cndmask_b32_e64 v100, v164, v240, vcc                    // 0000000078DC: D1000064 01ABE1A4
	v_cmp_gt_i32_e32 vcc, 9, v111                              // 0000000078E4: 7D88DE89
	s_nop 1                                                    // 0000000078E8: BF800001
	v_cndmask_b32_e64 v101, v165, v240, vcc                    // 0000000078EC: D1000065 01ABE1A5
	v_cmp_gt_i32_e32 vcc, 10, v111                             // 0000000078F4: 7D88DE8A
	s_nop 1                                                    // 0000000078F8: BF800001
	v_cndmask_b32_e64 v102, v166, v240, vcc                    // 0000000078FC: D1000066 01ABE1A6
	v_cmp_gt_i32_e32 vcc, 11, v111                             // 000000007904: 7D88DE8B
	s_nop 1                                                    // 000000007908: BF800001
	v_cndmask_b32_e64 v103, v167, v240, vcc                    // 00000000790C: D1000067 01ABE1A7
	v_cmp_gt_i32_e32 vcc, 16, v111                             // 000000007914: 7D88DE90
	s_nop 1                                                    // 000000007918: BF800001
	v_cndmask_b32_e64 v104, v168, v240, vcc                    // 00000000791C: D1000068 01ABE1A8
	v_cmp_gt_i32_e32 vcc, 17, v111                             // 000000007924: 7D88DE91
	s_nop 1                                                    // 000000007928: BF800001
	v_cndmask_b32_e64 v105, v169, v240, vcc                    // 00000000792C: D1000069 01ABE1A9
	v_cmp_gt_i32_e32 vcc, 18, v111                             // 000000007934: 7D88DE92
	s_nop 1                                                    // 000000007938: BF800001
	v_cndmask_b32_e64 v106, v170, v240, vcc                    // 00000000793C: D100006A 01ABE1AA
	v_cmp_gt_i32_e32 vcc, 19, v111                             // 000000007944: 7D88DE93
	s_nop 1                                                    // 000000007948: BF800001
	v_cndmask_b32_e64 v107, v171, v240, vcc                    // 00000000794C: D100006B 01ABE1AB
	v_cmp_gt_i32_e32 vcc, 24, v111                             // 000000007954: 7D88DE98
	s_nop 1                                                    // 000000007958: BF800001
	v_cndmask_b32_e64 v108, v172, v240, vcc                    // 00000000795C: D100006C 01ABE1AC
	v_cmp_gt_i32_e32 vcc, 25, v111                             // 000000007964: 7D88DE99
	s_nop 1                                                    // 000000007968: BF800001
	v_cndmask_b32_e64 v109, v173, v240, vcc                    // 00000000796C: D100006D 01ABE1AD
	v_cmp_gt_i32_e32 vcc, 26, v111                             // 000000007974: 7D88DE9A
	s_nop 1                                                    // 000000007978: BF800001
	v_cndmask_b32_e64 v110, v174, v240, vcc                    // 00000000797C: D100006E 01ABE1AE
	v_cmp_gt_i32_e32 vcc, 27, v111                             // 000000007984: 7D88DE9B
	s_nop 1                                                    // 000000007988: BF800001
	v_cndmask_b32_e64 v111, v175, v240, vcc                    // 00000000798C: D100006F 01ABE1AF
	s_sub_u32 s18, s3, s20                                     // 000000007994: 80921403
	s_sub_i32 s18, s18, 64                                     // 000000007998: 8192C012
	scratch_load_dwordx4 v[164:167], off, off                  // 00000000799C: DC5C4000 A47F0000
	scratch_load_dwordx4 v[168:171], off, off offset:16        // 0000000079A4: DC5C4010 A87F0000
	s_cmp_ge_i32 s18, 32                                       // 0000000079AC: BF03A012
	s_cbranch_scc1 90                                          // 0000000079B0: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x601c>
	s_mov_b32 s53, s52                                         // 0000000079B4: BEB50034
	s_mov_b32 s54, s52                                         // 0000000079B8: BEB60034
	s_mov_b32 s55, s52                                         // 0000000079BC: BEB70034
	s_mov_b32 s56, s52                                         // 0000000079C0: BEB80034
	s_mov_b32 s57, s52                                         // 0000000079C4: BEB90034
	s_mov_b32 s58, s52                                         // 0000000079C8: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000079CC: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000079D0: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000079D4: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000079D8: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000079DC: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000079E0: BEC00034
	s_mov_b32 s65, s52                                         // 0000000079E4: BEC10034
	s_mov_b32 s66, s52                                         // 0000000079E8: BEC20034
	s_mov_b32 s67, s52                                         // 0000000079EC: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 0000000079F0: BF048012
	v_mov_b64_e32 v[94:95], s[66:67]                           // 0000000079F4: 7EBC7042
	v_mov_b64_e32 v[92:93], s[64:65]                           // 0000000079F8: 7EB87040
	v_mov_b64_e32 v[90:91], s[62:63]                           // 0000000079FC: 7EB4703E
	v_mov_b64_e32 v[88:89], s[60:61]                           // 000000007A00: 7EB0703C
	v_mov_b64_e32 v[86:87], s[58:59]                           // 000000007A04: 7EAC703A
	v_mov_b64_e32 v[84:85], s[56:57]                           // 000000007A08: 7EA87038
	v_mov_b64_e32 v[82:83], s[54:55]                           // 000000007A0C: 7EA47036
	v_mov_b64_e32 v[80:81], s[52:53]                           // 000000007A10: 7EA07034
	s_cbranch_scc1 65                                          // 000000007A14: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x601c>
	v_add_u32_e32 v95, s18, v243                               // 000000007A18: 68BFE612
	v_cmp_gt_i32_e32 vcc, 0, v95                               // 000000007A1C: 7D88BE80
	s_nop 1                                                    // 000000007A20: BF800001
	v_cndmask_b32_e64 v80, v144, v240, vcc                     // 000000007A24: D1000050 01ABE190
	v_cmp_gt_i32_e32 vcc, 1, v95                               // 000000007A2C: 7D88BE81
	s_nop 1                                                    // 000000007A30: BF800001
	v_cndmask_b32_e64 v81, v145, v240, vcc                     // 000000007A34: D1000051 01ABE191
	v_cmp_gt_i32_e32 vcc, 2, v95                               // 000000007A3C: 7D88BE82
	s_nop 1                                                    // 000000007A40: BF800001
	v_cndmask_b32_e64 v82, v146, v240, vcc                     // 000000007A44: D1000052 01ABE192
	v_cmp_gt_i32_e32 vcc, 3, v95                               // 000000007A4C: 7D88BE83
	s_nop 1                                                    // 000000007A50: BF800001
	v_cndmask_b32_e64 v83, v147, v240, vcc                     // 000000007A54: D1000053 01ABE193
	v_cmp_gt_i32_e32 vcc, 8, v95                               // 000000007A5C: 7D88BE88
	s_nop 1                                                    // 000000007A60: BF800001
	v_cndmask_b32_e64 v84, v148, v240, vcc                     // 000000007A64: D1000054 01ABE194
	v_cmp_gt_i32_e32 vcc, 9, v95                               // 000000007A6C: 7D88BE89
	s_nop 1                                                    // 000000007A70: BF800001
	v_cndmask_b32_e64 v85, v149, v240, vcc                     // 000000007A74: D1000055 01ABE195
	v_cmp_gt_i32_e32 vcc, 10, v95                              // 000000007A7C: 7D88BE8A
	s_nop 1                                                    // 000000007A80: BF800001
	v_cndmask_b32_e64 v86, v150, v240, vcc                     // 000000007A84: D1000056 01ABE196
	v_cmp_gt_i32_e32 vcc, 11, v95                              // 000000007A8C: 7D88BE8B
	s_nop 1                                                    // 000000007A90: BF800001
	v_cndmask_b32_e64 v87, v151, v240, vcc                     // 000000007A94: D1000057 01ABE197
	v_cmp_gt_i32_e32 vcc, 16, v95                              // 000000007A9C: 7D88BE90
	s_nop 1                                                    // 000000007AA0: BF800001
	v_cndmask_b32_e64 v88, v152, v240, vcc                     // 000000007AA4: D1000058 01ABE198
	v_cmp_gt_i32_e32 vcc, 17, v95                              // 000000007AAC: 7D88BE91
	s_nop 1                                                    // 000000007AB0: BF800001
	v_cndmask_b32_e64 v89, v153, v240, vcc                     // 000000007AB4: D1000059 01ABE199
	v_cmp_gt_i32_e32 vcc, 18, v95                              // 000000007ABC: 7D88BE92
	s_nop 1                                                    // 000000007AC0: BF800001
	v_cndmask_b32_e64 v90, v154, v240, vcc                     // 000000007AC4: D100005A 01ABE19A
	v_cmp_gt_i32_e32 vcc, 19, v95                              // 000000007ACC: 7D88BE93
	s_nop 1                                                    // 000000007AD0: BF800001
	v_cndmask_b32_e64 v91, v155, v240, vcc                     // 000000007AD4: D100005B 01ABE19B
	v_cmp_gt_i32_e32 vcc, 24, v95                              // 000000007ADC: 7D88BE98
	s_nop 1                                                    // 000000007AE0: BF800001
	v_cndmask_b32_e64 v92, v156, v240, vcc                     // 000000007AE4: D100005C 01ABE19C
	v_cmp_gt_i32_e32 vcc, 25, v95                              // 000000007AEC: 7D88BE99
	s_nop 1                                                    // 000000007AF0: BF800001
	v_cndmask_b32_e64 v93, v157, v240, vcc                     // 000000007AF4: D100005D 01ABE19D
	v_cmp_gt_i32_e32 vcc, 26, v95                              // 000000007AFC: 7D88BE9A
	s_nop 1                                                    // 000000007B00: BF800001
	v_cndmask_b32_e64 v94, v158, v240, vcc                     // 000000007B04: D100005E 01ABE19E
	v_cmp_gt_i32_e32 vcc, 27, v95                              // 000000007B0C: 7D88BE9B
	s_nop 1                                                    // 000000007B10: BF800001
	v_cndmask_b32_e64 v95, v159, v240, vcc                     // 000000007B14: D100005F 01ABE19F
	s_sub_u32 s18, s3, s20                                     // 000000007B1C: 80921403
	s_sub_i32 s18, s18, 0x60                                   // 000000007B20: 8192FF12 00000060
	s_cmp_ge_i32 s18, 32                                       // 000000007B28: BF03A012
	s_cbranch_scc1 90                                          // 000000007B2C: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6198>
	s_mov_b32 s53, s52                                         // 000000007B30: BEB50034
	s_mov_b32 s54, s52                                         // 000000007B34: BEB60034
	s_mov_b32 s55, s52                                         // 000000007B38: BEB70034
	s_mov_b32 s56, s52                                         // 000000007B3C: BEB80034
	s_mov_b32 s57, s52                                         // 000000007B40: BEB90034
	s_mov_b32 s58, s52                                         // 000000007B44: BEBA0034
	s_mov_b32 s59, s52                                         // 000000007B48: BEBB0034
	s_mov_b32 s60, s52                                         // 000000007B4C: BEBC0034
	s_mov_b32 s61, s52                                         // 000000007B50: BEBD0034
	s_mov_b32 s62, s52                                         // 000000007B54: BEBE0034
	s_mov_b32 s63, s52                                         // 000000007B58: BEBF0034
	s_mov_b32 s64, s52                                         // 000000007B5C: BEC00034
	s_mov_b32 s65, s52                                         // 000000007B60: BEC10034
	s_mov_b32 s66, s52                                         // 000000007B64: BEC20034
	s_mov_b32 s67, s52                                         // 000000007B68: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000007B6C: BF048012
	v_mov_b64_e32 v[78:79], s[66:67]                           // 000000007B70: 7E9C7042
	v_mov_b64_e32 v[76:77], s[64:65]                           // 000000007B74: 7E987040
	v_mov_b64_e32 v[74:75], s[62:63]                           // 000000007B78: 7E94703E
	v_mov_b64_e32 v[72:73], s[60:61]                           // 000000007B7C: 7E90703C
	v_mov_b64_e32 v[70:71], s[58:59]                           // 000000007B80: 7E8C703A
	v_mov_b64_e32 v[68:69], s[56:57]                           // 000000007B84: 7E887038
	v_mov_b64_e32 v[66:67], s[54:55]                           // 000000007B88: 7E847036
	v_mov_b64_e32 v[64:65], s[52:53]                           // 000000007B8C: 7E807034
	s_cbranch_scc1 65                                          // 000000007B90: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6198>
	v_add_u32_e32 v79, s18, v243                               // 000000007B94: 689FE612
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 000000007B98: 7D889E80
	s_nop 1                                                    // 000000007B9C: BF800001
	v_cndmask_b32_e64 v64, v128, v240, vcc                     // 000000007BA0: D1000040 01ABE180
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 000000007BA8: 7D889E81
	s_nop 1                                                    // 000000007BAC: BF800001
	v_cndmask_b32_e64 v65, v129, v240, vcc                     // 000000007BB0: D1000041 01ABE181
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 000000007BB8: 7D889E82
	s_nop 1                                                    // 000000007BBC: BF800001
	v_cndmask_b32_e64 v66, v130, v240, vcc                     // 000000007BC0: D1000042 01ABE182
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 000000007BC8: 7D889E83
	s_nop 1                                                    // 000000007BCC: BF800001
	v_cndmask_b32_e64 v67, v131, v240, vcc                     // 000000007BD0: D1000043 01ABE183
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 000000007BD8: 7D889E88
	s_nop 1                                                    // 000000007BDC: BF800001
	v_cndmask_b32_e64 v68, v132, v240, vcc                     // 000000007BE0: D1000044 01ABE184
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 000000007BE8: 7D889E89
	s_nop 1                                                    // 000000007BEC: BF800001
	v_cndmask_b32_e64 v69, v133, v240, vcc                     // 000000007BF0: D1000045 01ABE185
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 000000007BF8: 7D889E8A
	s_nop 1                                                    // 000000007BFC: BF800001
	v_cndmask_b32_e64 v70, v134, v240, vcc                     // 000000007C00: D1000046 01ABE186
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 000000007C08: 7D889E8B
	s_nop 1                                                    // 000000007C0C: BF800001
	v_cndmask_b32_e64 v71, v135, v240, vcc                     // 000000007C10: D1000047 01ABE187
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 000000007C18: 7D889E90
	s_nop 1                                                    // 000000007C1C: BF800001
	v_cndmask_b32_e64 v72, v136, v240, vcc                     // 000000007C20: D1000048 01ABE188
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 000000007C28: 7D889E91
	s_nop 1                                                    // 000000007C2C: BF800001
	v_cndmask_b32_e64 v73, v137, v240, vcc                     // 000000007C30: D1000049 01ABE189
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 000000007C38: 7D889E92
	s_nop 1                                                    // 000000007C3C: BF800001
	v_cndmask_b32_e64 v74, v138, v240, vcc                     // 000000007C40: D100004A 01ABE18A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 000000007C48: 7D889E93
	s_nop 1                                                    // 000000007C4C: BF800001
	v_cndmask_b32_e64 v75, v139, v240, vcc                     // 000000007C50: D100004B 01ABE18B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 000000007C58: 7D889E98
	s_nop 1                                                    // 000000007C5C: BF800001
	v_cndmask_b32_e64 v76, v140, v240, vcc                     // 000000007C60: D100004C 01ABE18C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 000000007C68: 7D889E99
	s_nop 1                                                    // 000000007C6C: BF800001
	v_cndmask_b32_e64 v77, v141, v240, vcc                     // 000000007C70: D100004D 01ABE18D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 000000007C78: 7D889E9A
	s_nop 1                                                    // 000000007C7C: BF800001
	v_cndmask_b32_e64 v78, v142, v240, vcc                     // 000000007C80: D100004E 01ABE18E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 000000007C88: 7D889E9B
	s_nop 1                                                    // 000000007C8C: BF800001
	v_cndmask_b32_e64 v79, v143, v240, vcc                     // 000000007C90: D100004F 01ABE18F
	v_max_f32_e32 v128, v112, v113                             // 000000007C98: 1700E370
	v_max3_f32 v128, v114, v115, v128                          // 000000007C9C: D1D30080 0602E772
	v_max3_f32 v128, v116, v117, v128                          // 000000007CA4: D1D30080 0602EB74
	v_max3_f32 v128, v118, v119, v128                          // 000000007CAC: D1D30080 0602EF76
	v_max3_f32 v128, v120, v121, v128                          // 000000007CB4: D1D30080 0602F378
	v_max3_f32 v128, v122, v123, v128                          // 000000007CBC: D1D30080 0602F77A
	v_max3_f32 v128, v124, v125, v128                          // 000000007CC4: D1D30080 0602FB7C
	v_max3_f32 v129, v126, v127, v128                          // 000000007CCC: D1D30081 0602FF7E
	v_max_f32_e32 v128, v96, v97                               // 000000007CD4: 1700C360
	v_max3_f32 v128, v98, v99, v128                            // 000000007CD8: D1D30080 0602C762
	v_max3_f32 v128, v100, v101, v128                          // 000000007CE0: D1D30080 0602CB64
	v_max3_f32 v128, v102, v103, v128                          // 000000007CE8: D1D30080 0602CF66
	v_max3_f32 v128, v104, v105, v128                          // 000000007CF0: D1D30080 0602D368
	v_max3_f32 v128, v106, v107, v128                          // 000000007CF8: D1D30080 0602D76A
	v_max3_f32 v128, v108, v109, v128                          // 000000007D00: D1D30080 0602DB6C
	v_max3_f32 v130, v110, v111, v128                          // 000000007D08: D1D30082 0602DF6E
	v_max_f32_e32 v128, v80, v81                               // 000000007D10: 1700A350
	v_max3_f32 v128, v82, v83, v128                            // 000000007D14: D1D30080 0602A752
	v_max3_f32 v128, v84, v85, v128                            // 000000007D1C: D1D30080 0602AB54
	v_max3_f32 v128, v86, v87, v128                            // 000000007D24: D1D30080 0602AF56
	v_max3_f32 v128, v88, v89, v128                            // 000000007D2C: D1D30080 0602B358
	v_max3_f32 v128, v90, v91, v128                            // 000000007D34: D1D30080 0602B75A
	v_max3_f32 v128, v92, v93, v128                            // 000000007D3C: D1D30080 0602BB5C
	v_max3_f32 v128, v94, v95, v128                            // 000000007D44: D1D30080 0602BF5E
	v_max_f32_e32 v131, v64, v65                               // 000000007D4C: 17068340
	v_max3_f32 v131, v66, v67, v131                            // 000000007D50: D1D30083 060E8742
	v_max3_f32 v131, v68, v69, v131                            // 000000007D58: D1D30083 060E8B44
	v_max3_f32 v131, v70, v71, v131                            // 000000007D60: D1D30083 060E8F46
	v_max3_f32 v131, v72, v73, v131                            // 000000007D68: D1D30083 060E9348
	v_max3_f32 v131, v74, v75, v131                            // 000000007D70: D1D30083 060E974A
	v_max3_f32 v131, v76, v77, v131                            // 000000007D78: D1D30083 060E9B4C
	v_max3_f32 v131, v78, v79, v131                            // 000000007D80: D1D30083 060E9F4E
	v_max_f32_e32 v128, v128, v131                             // 000000007D88: 17010780
	v_max_f32_e32 v130, v129, v130                             // 000000007D8C: 17050581
	v_mov_b32_e32 v131, v130                                   // 000000007D90: 7F060382
	s_nop 1                                                    // 000000007D94: BF800001
	v_permlane32_swap_b32_e32 v130, v131                       // 000000007D98: 7F04B583
	v_mov_b32_e32 v129, v128                                   // 000000007D9C: 7F020380
	s_nop 1                                                    // 000000007DA0: BF800001
	v_permlane32_swap_b32_e32 v128, v129                       // 000000007DA4: 7F00B581
	v_max_f32_e32 v128, v128, v129                             // 000000007DA8: 17010380
	v_max_f32_e32 v130, v130, v131                             // 000000007DAC: 17050782
	v_max_f32_e32 v129, v130, v128                             // 000000007DB0: 17030182
	v_mul_f32_e32 v129, v238, v129                             // 000000007DB4: 0B0303EE
	v_max_f32_e32 v129, v252, v129                             // 000000007DB8: 170303FC
	v_sub_f32_e32 v131, v129, v252                             // 000000007DBC: 0507F981
	v_cmp_lt_f32_e32 vcc, s48, v131                            // 000000007DC0: 7C830630
	s_cmp_lg_u64 vcc, 0                                        // 000000007DC4: BF13806A
	s_cselect_b32 s18, 1, 0                                    // 000000007DC8: 85128081
	s_cselect_b64 s[18:19], -1, 0                              // 000000007DCC: 859280C1
	v_cndmask_b32_e64 v129, v252, v129, s[18:19]               // 000000007DD0: D1000081 004B03FC
	v_fma_f32 v130, v130, v238, -v129                          // 000000007DD8: D1CB0082 8607DD82
	v_floor_f32_e32 v130, v130                                 // 000000007DE0: 7F043F82
	v_med3_f32 v132, v130, s98, 0                              // 000000007DE4: D1D60084 0200C582
	v_cvt_i32_f32_e32 v130, v132                               // 000000007DEC: 7F041184
	v_add_u32_e32 v130, 0x7f, v130                             // 000000007DF0: 690504FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v130                           // 000000007DF8: 25350497
	v_fma_f32 v128, v128, v238, -v129                          // 000000007DFC: D1CB0080 8607DD80
	v_floor_f32_e32 v128, v128                                 // 000000007E04: 7F003F80
	v_med3_f32 v128, v128, s98, 0                              // 000000007E08: D1D60080 0200C580
	v_cvt_i32_f32_e32 v131, v128                               // 000000007E10: 7F061180
	v_add_u32_e32 v131, 0x7f, v131                             // 000000007E14: 690706FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v131                           // 000000007E1C: 25370697
	v_mov_b32_e32 v133, s50                                    // 000000007E20: 7F0A0232
	v_fma_f32 v133, v129, s99, v133                            // 000000007E24: D1CB0085 0614C781
	v_fma_f32 v152, v132, s99, v133                            // 000000007E2C: D1CB0098 0614C784
	v_fma_f32 v150, v128, s99, v133                            // 000000007E34: D1CB0096 0614C780
	s_lshl_b32 s17, s17, 14                                    // 000000007E3C: 8E118E11
	s_add_u32 s17, s92, s17                                    // 000000007E40: 8011115C
	v_add3_u32 v128, s17, v245, v244                           // 000000007E44: D1FF0080 07D3EA11
	s_waitcnt vmcnt(2)                                         // 000000007E4C: BF8C0F72
	ds_read_b64_tr_b8 v[132:133], v128                         // 000000007E50: D9C40000 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:1024             // 000000007E58: D9C40400 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:2048             // 000000007E60: D9C40800 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:3072             // 000000007E68: D9C40C00 8A000080
	ds_read_b64_tr_b8 v[140:141], v128 offset:256              // 000000007E70: D9C40100 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:1280             // 000000007E78: D9C40500 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:2304             // 000000007E80: D9C40900 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:3328             // 000000007E88: D9C40D00 92000080
	ds_read_b64_tr_b8 v[156:157], v128 offset:512              // 000000007E90: D9C40200 9C000080
	ds_read_b64_tr_b8 v[158:159], v128 offset:1536             // 000000007E98: D9C40600 9E000080
	ds_read_b64_tr_b8 v[160:161], v128 offset:2560             // 000000007EA0: D9C40A00 A0000080
	ds_read_b64_tr_b8 v[162:163], v128 offset:3584             // 000000007EA8: D9C40E00 A2000080
	s_waitcnt lgkmcnt(4)                                       // 000000007EB0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[132:139], v[208:215], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000007EB4: D3AC0000 0003F7F2 D3AE0830 04C3A184
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[140:147], v[208:215], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000007EC4: D3AC0000 0003F7F2 D3AE0820 0483A18C
	ds_read_b64_tr_b8 v[132:133], v128 offset:768              // 000000007ED4: D9C40300 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:1792             // 000000007EDC: D9C40700 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:2816             // 000000007EE4: D9C40B00 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:3840             // 000000007EEC: D9C40F00 8A000080
	ds_read_b64_tr_b8 v[140:141], v128 offset:4096             // 000000007EF4: D9C41000 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:5120             // 000000007EFC: D9C41400 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:6144             // 000000007F04: D9C41800 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:7168             // 000000007F0C: D9C41C00 92000080
	s_waitcnt lgkmcnt(4)                                       // 000000007F14: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[156:163], v[208:215], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000007F18: D3AC0000 0003F7F2 D3AE0810 0443A19C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[132:139], v[208:215], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000007F28: D3AC0000 0003F7F2 D3AE0800 0403A184
	ds_read_b64_tr_b8 v[156:157], v128 offset:4352             // 000000007F38: D9C41100 9C000080
	ds_read_b64_tr_b8 v[158:159], v128 offset:5376             // 000000007F40: D9C41500 9E000080
	ds_read_b64_tr_b8 v[160:161], v128 offset:6400             // 000000007F48: D9C41900 A0000080
	ds_read_b64_tr_b8 v[162:163], v128 offset:7424             // 000000007F50: D9C41D00 A2000080
	ds_read_b64_tr_b8 v[132:133], v128 offset:4608             // 000000007F58: D9C41200 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:5632             // 000000007F60: D9C41600 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:6656             // 000000007F68: D9C41A00 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:7680             // 000000007F70: D9C41E00 8A000080
	s_waitcnt vmcnt(0) lgkmcnt(4)                              // 000000007F78: BF8C0470
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[140:147], v[164:171], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000007F7C: D3AC0000 0003FBF2 D3AE0830 04C3498C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[156:163], v[164:171], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000007F8C: D3AC0000 0003FBF2 D3AE0820 0483499C
	ds_read_b64_tr_b8 v[140:141], v128 offset:4864             // 000000007F9C: D9C41300 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:5888             // 000000007FA4: D9C41700 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:6912             // 000000007FAC: D9C41B00 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:7936             // 000000007FB4: D9C41F00 92000080
	s_waitcnt lgkmcnt(0)                                       // 000000007FBC: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[132:139], v[164:171], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000007FC0: D3AC0000 0003FBF2 D3AE0810 04434984
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[140:147], v[164:171], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000007FD0: D3AC0000 0003FBF2 D3AE0800 0403498C
	s_cbranch_vccz 68                                          // 000000007FE0: BF860044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x65f4>
	v_sub_f32_e32 v128, v252, v129                             // 000000007FE4: 050103FC
	v_exp_f32_e32 v128, v128                                   // 000000007FE8: 7F004180
	s_nop 3                                                    // 000000007FEC: BF800003
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 000000007FF0: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 000000007FF8: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000008000: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000008008: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000008010: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000008018: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000008020: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000008028: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000008030: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000008038: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000008040: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000008048: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000008050: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000008058: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000008060: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000008068: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000008070: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000008078: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000008080: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000008088: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000008090: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000008098: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 0000000080A0: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 0000000080A8: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 0000000080B0: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 0000000080B8: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 0000000080C0: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 0000000080C8: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 0000000080D0: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 0000000080D8: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 0000000080E0: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 0000000080E8: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 0000000080F0: 0BF501FA
	s_waitcnt vmcnt(0)                                         // 0000000080F4: BF8C0F70
	s_barrier                                                  // 0000000080F8: BF8A0000
	s_add_u32 s42, s42, 1                                      // 0000000080FC: 802A812A
	v_mov_b32_e32 v253, v131                                   // 000000008100: 7FFA0383
	v_mov_b32_e32 v251, v130                                   // 000000008104: 7FF60382
	v_mov_b32_e32 v252, v129                                   // 000000008108: 7FF80381
	s_branch 62922                                             // 00000000810C: BF82F5CA <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d38>
	s_cmp_eq_u32 s42, s79                                      // 000000008110: BF064F2A
	s_cbranch_scc0 410                                         // 000000008114: BF84019A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6c80>
	s_setprio 0                                                // 000000008118: BF8F0000
	v_fma_f32 v128, v112, v239, v152                           // 00000000811C: D1CB0080 0663DF70
	v_fma_f32 v129, v113, v239, v152                           // 000000008124: D1CB0081 0663DF71
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 00000000812C: D1DD0080 02010180
	v_fma_f32 v130, v114, v239, v152                           // 000000008134: D1CB0082 0663DF72
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 00000000813C: D1DD0080 06010381
	v_fma_f32 v131, v115, v239, v152                           // 000000008144: D1CB0083 0663DF73
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 00000000814C: D1DD0080 06010582
	v_cvt_pk_u8_f32 v136, v131, 3, v128                        // 000000008154: D1DD0088 06010783
	v_fma_f32 v128, v96, v239, v152                            // 00000000815C: D1CB0080 0663DF60
	v_fma_f32 v129, v97, v239, v152                            // 000000008164: D1CB0081 0663DF61
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 00000000816C: D1DD0080 02010180
	v_fma_f32 v130, v98, v239, v152                            // 000000008174: D1CB0082 0663DF62
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 00000000817C: D1DD0080 06010381
	v_fma_f32 v131, v99, v239, v152                            // 000000008184: D1CB0083 0663DF63
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 00000000818C: D1DD0080 06010582
	v_cvt_pk_u8_f32 v140, v131, 3, v128                        // 000000008194: D1DD008C 06010783
	v_fma_f32 v128, v116, v239, v152                           // 00000000819C: D1CB0080 0663DF74
	v_fma_f32 v129, v117, v239, v152                           // 0000000081A4: D1CB0081 0663DF75
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000081AC: D1DD0080 02010180
	v_fma_f32 v130, v118, v239, v152                           // 0000000081B4: D1CB0082 0663DF76
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 0000000081BC: D1DD0080 06010381
	v_fma_f32 v131, v119, v239, v152                           // 0000000081C4: D1CB0083 0663DF77
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 0000000081CC: D1DD0080 06010582
	v_cvt_pk_u8_f32 v137, v131, 3, v128                        // 0000000081D4: D1DD0089 06010783
	v_fma_f32 v128, v100, v239, v152                           // 0000000081DC: D1CB0080 0663DF64
	v_fma_f32 v129, v101, v239, v152                           // 0000000081E4: D1CB0081 0663DF65
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000081EC: D1DD0080 02010180
	v_fma_f32 v130, v102, v239, v152                           // 0000000081F4: D1CB0082 0663DF66
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 0000000081FC: D1DD0080 06010381
	v_fma_f32 v131, v103, v239, v152                           // 000000008204: D1CB0083 0663DF67
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 00000000820C: D1DD0080 06010582
	v_cvt_pk_u8_f32 v141, v131, 3, v128                        // 000000008214: D1DD008D 06010783
	v_fma_f32 v128, v120, v239, v152                           // 00000000821C: D1CB0080 0663DF78
	v_fma_f32 v129, v121, v239, v152                           // 000000008224: D1CB0081 0663DF79
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 00000000822C: D1DD0080 02010180
	v_fma_f32 v130, v122, v239, v152                           // 000000008234: D1CB0082 0663DF7A
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 00000000823C: D1DD0080 06010381
	v_fma_f32 v131, v123, v239, v152                           // 000000008244: D1CB0083 0663DF7B
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 00000000824C: D1DD0080 06010582
	v_cvt_pk_u8_f32 v138, v131, 3, v128                        // 000000008254: D1DD008A 06010783
	v_fma_f32 v128, v104, v239, v152                           // 00000000825C: D1CB0080 0663DF68
	v_fma_f32 v129, v105, v239, v152                           // 000000008264: D1CB0081 0663DF69
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 00000000826C: D1DD0080 02010180
	v_fma_f32 v130, v106, v239, v152                           // 000000008274: D1CB0082 0663DF6A
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 00000000827C: D1DD0080 06010381
	v_fma_f32 v131, v107, v239, v152                           // 000000008284: D1CB0083 0663DF6B
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 00000000828C: D1DD0080 06010582
	v_cvt_pk_u8_f32 v142, v131, 3, v128                        // 000000008294: D1DD008E 06010783
	v_fma_f32 v128, v124, v239, v152                           // 00000000829C: D1CB0080 0663DF7C
	v_fma_f32 v129, v125, v239, v152                           // 0000000082A4: D1CB0081 0663DF7D
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000082AC: D1DD0080 02010180
	v_fma_f32 v130, v126, v239, v152                           // 0000000082B4: D1CB0082 0663DF7E
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 0000000082BC: D1DD0080 06010381
	v_fma_f32 v131, v127, v239, v152                           // 0000000082C4: D1CB0083 0663DF7F
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 0000000082CC: D1DD0080 06010582
	v_cvt_pk_u8_f32 v139, v131, 3, v128                        // 0000000082D4: D1DD008B 06010783
	v_fma_f32 v128, v108, v239, v152                           // 0000000082DC: D1CB0080 0663DF6C
	v_fma_f32 v129, v109, v239, v152                           // 0000000082E4: D1CB0081 0663DF6D
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000082EC: D1DD0080 02010180
	v_fma_f32 v130, v110, v239, v152                           // 0000000082F4: D1CB0082 0663DF6E
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 0000000082FC: D1DD0080 06010381
	v_fma_f32 v131, v111, v239, v152                           // 000000008304: D1CB0083 0663DF6F
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 00000000830C: D1DD0080 06010582
	v_cvt_pk_u8_f32 v143, v131, 3, v128                        // 000000008314: D1DD008F 06010783
	v_fma_f32 v128, v80, v239, v150                            // 00000000831C: D1CB0080 065BDF50
	v_fma_f32 v129, v81, v239, v150                            // 000000008324: D1CB0081 065BDF51
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 00000000832C: D1DD0080 02010180
	v_fma_f32 v130, v82, v239, v150                            // 000000008334: D1CB0082 065BDF52
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 00000000833C: D1DD0080 06010381
	v_fma_f32 v129, v64, v239, v150                            // 000000008344: D1CB0081 065BDF40
	v_fma_f32 v131, v83, v239, v150                            // 00000000834C: D1CB0083 065BDF53
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000008354: D1DD0080 06010582
	v_fma_f32 v130, v65, v239, v150                            // 00000000835C: D1CB0082 065BDF41
	v_cvt_pk_u8_f32 v129, v129, 0, 0                           // 000000008364: D1DD0081 02010181
	v_cvt_pk_u8_f32 v128, v131, 3, v128                        // 00000000836C: D1DD0080 06010783
	v_fma_f32 v131, v66, v239, v150                            // 000000008374: D1CB0083 065BDF42
	v_cvt_pk_u8_f32 v129, v130, 1, v129                        // 00000000837C: D1DD0081 06050382
	v_fma_f32 v132, v67, v239, v150                            // 000000008384: D1CB0084 065BDF43
	v_cvt_pk_u8_f32 v129, v131, 2, v129                        // 00000000838C: D1DD0081 06050583
	v_cvt_pk_u8_f32 v132, v132, 3, v129                        // 000000008394: D1DD0084 06050784
	v_fma_f32 v129, v84, v239, v150                            // 00000000839C: D1CB0081 065BDF54
	v_fma_f32 v130, v85, v239, v150                            // 0000000083A4: D1CB0082 065BDF55
	v_cvt_pk_u8_f32 v129, v129, 0, 0                           // 0000000083AC: D1DD0081 02010181
	v_fma_f32 v131, v86, v239, v150                            // 0000000083B4: D1CB0083 065BDF56
	v_cvt_pk_u8_f32 v129, v130, 1, v129                        // 0000000083BC: D1DD0081 06050382
	v_fma_f32 v130, v68, v239, v150                            // 0000000083C4: D1CB0082 065BDF44
	v_fma_f32 v133, v87, v239, v150                            // 0000000083CC: D1CB0085 065BDF57
	v_cvt_pk_u8_f32 v129, v131, 2, v129                        // 0000000083D4: D1DD0081 06050583
	v_fma_f32 v131, v69, v239, v150                            // 0000000083DC: D1CB0083 065BDF45
	v_cvt_pk_u8_f32 v130, v130, 0, 0                           // 0000000083E4: D1DD0082 02010182
	v_cvt_pk_u8_f32 v129, v133, 3, v129                        // 0000000083EC: D1DD0081 06050785
	v_fma_f32 v133, v70, v239, v150                            // 0000000083F4: D1CB0085 065BDF46
	v_cvt_pk_u8_f32 v130, v131, 1, v130                        // 0000000083FC: D1DD0082 06090383
	v_fma_f32 v134, v71, v239, v150                            // 000000008404: D1CB0086 065BDF47
	v_cvt_pk_u8_f32 v130, v133, 2, v130                        // 00000000840C: D1DD0082 06090585
	v_cvt_pk_u8_f32 v133, v134, 3, v130                        // 000000008414: D1DD0085 06090786
	v_fma_f32 v130, v88, v239, v150                            // 00000000841C: D1CB0082 065BDF58
	v_fma_f32 v131, v89, v239, v150                            // 000000008424: D1CB0083 065BDF59
	v_cvt_pk_u8_f32 v130, v130, 0, 0                           // 00000000842C: D1DD0082 02010182
	v_fma_f32 v134, v90, v239, v150                            // 000000008434: D1CB0086 065BDF5A
	v_cvt_pk_u8_f32 v130, v131, 1, v130                        // 00000000843C: D1DD0082 06090383
	v_fma_f32 v131, v72, v239, v150                            // 000000008444: D1CB0083 065BDF48
	v_fma_f32 v135, v91, v239, v150                            // 00000000844C: D1CB0087 065BDF5B
	v_cvt_pk_u8_f32 v130, v134, 2, v130                        // 000000008454: D1DD0082 06090586
	v_fma_f32 v134, v73, v239, v150                            // 00000000845C: D1CB0086 065BDF49
	v_cvt_pk_u8_f32 v131, v131, 0, 0                           // 000000008464: D1DD0083 02010183
	v_cvt_pk_u8_f32 v130, v135, 3, v130                        // 00000000846C: D1DD0082 06090787
	v_fma_f32 v135, v74, v239, v150                            // 000000008474: D1CB0087 065BDF4A
	v_cvt_pk_u8_f32 v131, v134, 1, v131                        // 00000000847C: D1DD0083 060D0386
	v_fma_f32 v144, v75, v239, v150                            // 000000008484: D1CB0090 065BDF4B
	v_cvt_pk_u8_f32 v131, v135, 2, v131                        // 00000000848C: D1DD0083 060D0587
	v_cvt_pk_u8_f32 v134, v144, 3, v131                        // 000000008494: D1DD0086 060D0790
	v_fma_f32 v131, v92, v239, v150                            // 00000000849C: D1CB0083 065BDF5C
	v_fma_f32 v135, v93, v239, v150                            // 0000000084A4: D1CB0087 065BDF5D
	v_cvt_pk_u8_f32 v131, v131, 0, 0                           // 0000000084AC: D1DD0083 02010183
	v_fma_f32 v144, v94, v239, v150                            // 0000000084B4: D1CB0090 065BDF5E
	v_cvt_pk_u8_f32 v131, v135, 1, v131                        // 0000000084BC: D1DD0083 060D0387
	v_fma_f32 v135, v76, v239, v150                            // 0000000084C4: D1CB0087 065BDF4C
	v_fma_f32 v145, v95, v239, v150                            // 0000000084CC: D1CB0091 065BDF5F
	v_cvt_pk_u8_f32 v131, v144, 2, v131                        // 0000000084D4: D1DD0083 060D0590
	v_fma_f32 v144, v77, v239, v150                            // 0000000084DC: D1CB0090 065BDF4D
	v_cvt_pk_u8_f32 v135, v135, 0, 0                           // 0000000084E4: D1DD0087 02010187
	v_cvt_pk_u8_f32 v131, v145, 3, v131                        // 0000000084EC: D1DD0083 060D0791
	v_fma_f32 v145, v78, v239, v150                            // 0000000084F4: D1CB0091 065BDF4E
	v_cvt_pk_u8_f32 v135, v144, 1, v135                        // 0000000084FC: D1DD0087 061D0390
	v_fma_f32 v146, v79, v239, v150                            // 000000008504: D1CB0092 065BDF4F
	v_cvt_pk_u8_f32 v135, v145, 2, v135                        // 00000000850C: D1DD0087 061D0591
	v_cvt_pk_u8_f32 v135, v146, 3, v135                        // 000000008514: D1DD0087 061D0792
	s_barrier                                                  // 00000000851C: BF8A0000
	s_setprio 1                                                // 000000008520: BF8F0001
	s_waitcnt vmcnt(0)                                         // 000000008524: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[144:147], v[192:199], v[136:143], 0// 000000008528: D3AD0090 020311C0
	v_mfma_f32_16x16x128_f8f6f4 v[146:149], v[192:199], v[128:135], 0// 000000008530: D3AD0092 020301C0
	s_add_u32 s17, s79, s78                                    // 000000008538: 80114E4F
	s_and_b32 s17, s17, 3                                      // 00000000853C: 86118311
	s_lshl_b32 s18, s17, 14                                    // 000000008540: 8E128E11
	s_add_u32 s19, s92, s18                                    // 000000008544: 8013125C
	v_add3_u32 v145, s19, v245, v244                           // 000000008548: D1FF0091 07D3EA13
	ds_read_b64_tr_b8 v[156:157], v145                         // 000000008550: D9C40000 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:1024             // 000000008558: D9C40400 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:2048             // 000000008560: D9C40800 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:3072             // 000000008568: D9C40C00 A2000091
	ds_read_b64_tr_b8 v[164:165], v145 offset:256              // 000000008570: D9C40100 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:1280             // 000000008578: D9C40500 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:2304             // 000000008580: D9C40900 A8000091
	ds_read_b64_tr_b8 v[170:171], v145 offset:3328             // 000000008588: D9C40D00 AA000091
	ds_read_b64_tr_b8 v[172:173], v145 offset:512              // 000000008590: D9C40200 AC000091
	ds_read_b64_tr_b8 v[174:175], v145 offset:1536             // 000000008598: D9C40600 AE000091
	ds_read_b64_tr_b8 v[176:177], v145 offset:2560             // 0000000085A0: D9C40A00 B0000091
	ds_read_b64_tr_b8 v[178:179], v145 offset:3584             // 0000000085A8: D9C40E00 B2000091
	s_waitcnt lgkmcnt(4)                                       // 0000000085B0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 0000000085B4: D3AC0000 0003F7F2 D3AE0830 04C3119C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 0000000085C4: D3AC0000 0003F7F2 D3AE0820 048311A4
	ds_read_b64_tr_b8 v[156:157], v145 offset:768              // 0000000085D4: D9C40300 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:1792             // 0000000085DC: D9C40700 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:2816             // 0000000085E4: D9C40B00 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:3840             // 0000000085EC: D9C40F00 A2000091
	ds_read_b64_tr_b8 v[164:165], v145 offset:4096             // 0000000085F4: D9C41000 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:5120             // 0000000085FC: D9C41400 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:6144             // 000000008604: D9C41800 A8000091
	ds_read_b64_tr_b8 v[170:171], v145 offset:7168             // 00000000860C: D9C41C00 AA000091
	s_waitcnt lgkmcnt(4)                                       // 000000008614: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000008618: D3AC0000 0003F7F2 D3AE0810 044311AC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000008628: D3AC0000 0003F7F2 D3AE0800 0403119C
	ds_read_b64_tr_b8 v[172:173], v145 offset:4352             // 000000008638: D9C41100 AC000091
	ds_read_b64_tr_b8 v[174:175], v145 offset:5376             // 000000008640: D9C41500 AE000091
	ds_read_b64_tr_b8 v[176:177], v145 offset:6400             // 000000008648: D9C41900 B0000091
	ds_read_b64_tr_b8 v[178:179], v145 offset:7424             // 000000008650: D9C41D00 B2000091
	ds_read_b64_tr_b8 v[156:157], v145 offset:4608             // 000000008658: D9C41200 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:5632             // 000000008660: D9C41600 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:6656             // 000000008668: D9C41A00 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:7680             // 000000008670: D9C41E00 A2000091
	s_waitcnt lgkmcnt(4)                                       // 000000008678: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[164:171], v[128:135], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 00000000867C: D3AC0000 0003FBF2 D3AE0830 04C301A4
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[172:179], v[128:135], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 00000000868C: D3AC0000 0003FBF2 D3AE0820 048301AC
	ds_read_b64_tr_b8 v[164:165], v145 offset:4864             // 00000000869C: D9C41300 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:5888             // 0000000086A4: D9C41700 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:6912             // 0000000086AC: D9C41B00 A8000091
	ds_read_b64_tr_b8 v[170:171], v145 offset:7936             // 0000000086B4: D9C41F00 AA000091
	s_add_u32 s19, s79, 4                                      // 0000000086BC: 8013844F
	s_cmp_ge_u32 s19, s96                                      // 0000000086C0: BF096013
	s_cbranch_scc1 12                                          // 0000000086C4: BF85000C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6bf8>
	s_add_u32 s18, s18, s88                                    // 0000000086C8: 80125812
	s_mul_i32 s19, s19, s8                                     // 0000000086CC: 92130813
	s_lshl_b32 s19, s19, 7                                     // 0000000086D0: 8E138713
	s_mov_b32 m0, s18                                          // 0000000086D4: BEFC0012
	s_nop 0                                                    // 0000000086D8: BF800000
	buffer_load_dwordx4 v233, s[84:87], s19 offen lds          // 0000000086DC: E05D1000 131500E9
	s_add_u32 m0, s18, 0x2000                                  // 0000000086E4: 807CFF12 00002000
	s_nop 0                                                    // 0000000086EC: BF800000
	buffer_load_dwordx4 v234, s[84:87], s19 offen lds          // 0000000086F0: E05D1000 131500EA
	s_add_u32 s18, s79, 2                                      // 0000000086F8: 8012824F
	s_cmp_ge_u32 s18, s96                                      // 0000000086FC: BF096012
	s_cbranch_scc1 15                                          // 000000008700: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6c40>
	s_xor_b32 s17, s17, 2                                      // 000000008704: 88118211
	s_mul_i32 s18, s18, s8                                     // 000000008708: 92120812
	s_lshl_b32 s17, s17, 14                                    // 00000000870C: 8E118E11
	s_add_u32 s19, s92, s17                                    // 000000008710: 8013115C
	s_add_u32 m0, s19, s88                                     // 000000008714: 807C5813
	s_lshl_b32 s18, s18, 7                                     // 000000008718: 8E128712
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 00000000871C: E05D1000 121400EB
	s_add_u32 s17, s92, s17                                    // 000000008724: 8011115C
	s_add_u32 s17, s17, s88                                    // 000000008728: 80115811
	s_add_u32 m0, s17, 0x2000                                  // 00000000872C: 807CFF11 00002000
	s_nop 0                                                    // 000000008734: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000008738: E05D1000 121400EC
	v_mul_f32_e32 v136, v154, v144                             // 000000008740: 0B11219A
	v_mul_f32_e32 v137, v155, v146                             // 000000008744: 0B13259B
	v_add_f32_e32 v136, v250, v136                             // 000000008748: 031111FA
	v_add_f32_e32 v250, v136, v137                             // 00000000874C: 03F51388
	s_waitcnt lgkmcnt(0)                                       // 000000008750: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[156:163], v[128:135], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000008754: D3AC0000 0003FBF2 D3AE0810 0443019C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[164:171], v[128:135], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000008764: D3AC0000 0003FBF2 D3AE0800 040301A4
	s_barrier                                                  // 000000008774: BF8A0000
	s_add_u32 s42, s79, 1                                      // 000000008778: 802A814F
	s_branch 62510                                             // 00000000877C: BF82F42E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d38>
	s_barrier                                                  // 000000008780: BF8A0000
	s_waitcnt vmcnt(0)                                         // 000000008784: BF8C0F70
	s_add_u32 s17, s42, 4                                      // 000000008788: 8011842A
	s_cmp_ge_u32 s17, s96                                      // 00000000878C: BF096011
	s_cbranch_scc1 15                                          // 000000008790: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6cd0>
	s_add_u32 s18, s42, s78                                    // 000000008794: 80124E2A
	s_and_b32 s18, s18, 3                                      // 000000008798: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000879C: 8E128E12
	s_or_b32 s18, s18, s88                                     // 0000000087A0: 87125812
	s_mul_i32 s17, s17, s8                                     // 0000000087A4: 92110811
	s_lshl_b32 s17, s17, 7                                     // 0000000087A8: 8E118711
	s_mov_b32 m0, s18                                          // 0000000087AC: BEFC0012
	s_nop 0                                                    // 0000000087B0: BF800000
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 0000000087B4: E05D1000 111500E9
	s_or_b32 m0, s18, 0x2000                                   // 0000000087BC: 877CFF12 00002000
	s_nop 0                                                    // 0000000087C4: BF800000
	buffer_load_dwordx4 v234, s[84:87], s17 offen lds          // 0000000087C8: E05D1000 111500EA
	s_add_u32 s17, s42, 2                                      // 0000000087D0: 8011822A
	s_cmp_ge_u32 s17, s96                                      // 0000000087D4: BF096011
	s_cbranch_scc1 17                                          // 0000000087D8: BF850011 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6d20>
	s_add_u32 s18, s42, s78                                    // 0000000087DC: 80124E2A
	s_and_b32 s18, s18, 3                                      // 0000000087E0: 86128312
	s_xor_b32 s18, s18, 2                                      // 0000000087E4: 88128212
	s_mul_i32 s17, s17, s8                                     // 0000000087E8: 92110811
	s_lshl_b32 s18, s18, 14                                    // 0000000087EC: 8E128E12
	s_add_u32 s19, s92, s18                                    // 0000000087F0: 8013125C
	s_add_u32 m0, s19, s88                                     // 0000000087F4: 807C5813
	s_lshl_b32 s17, s17, 7                                     // 0000000087F8: 8E118711
	buffer_load_dwordx4 v235, s[80:83], s17 offen lds          // 0000000087FC: E05D1000 111400EB
	s_add_u32 s18, s92, s18                                    // 000000008804: 8012125C
	s_add_u32 s18, s18, s88                                    // 000000008808: 80125812
	s_add_u32 m0, s18, 0x2000                                  // 00000000880C: 807CFF12 00002000
	s_nop 0                                                    // 000000008814: BF800000
	buffer_load_dwordx4 v236, s[80:83], s17 offen lds          // 000000008818: E05D1000 111400EC
	s_barrier                                                  // 000000008820: BF8A0000
	s_add_u32 s42, s42, 1                                      // 000000008824: 802A812A
	s_branch 62467                                             // 000000008828: BF82F403 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d38>
	s_cmp_ge_u32 s79, s42                                      // 00000000882C: BF092A4F
	s_cbranch_scc1 356                                         // 000000008830: BF850164 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x72c4>
	s_waitcnt vmcnt(0)                                         // 000000008834: BF8C0F70
	s_barrier                                                  // 000000008838: BF8A0000
	s_add_u32 s17, s96, s78                                    // 00000000883C: 80114E60
	s_and_b32 s24, s17, 3                                      // 000000008840: 86188311
	s_cmp_lg_u32 s77, 0                                        // 000000008844: BF07804D
	s_cselect_b64 s[18:19], -1, 0                              // 000000008848: 859280C1
	s_not_b32 s17, s68                                         // 00000000884C: BE910444
	s_add_u32 s17, s4, s17                                     // 000000008850: 80111104
	s_cmp_eq_u32 s68, s17                                      // 000000008854: BF061144
	s_cselect_b64 s[20:21], -1, 0                              // 000000008858: 859480C1
	s_or_b64 s[18:19], s[18:19], s[20:21]                      // 00000000885C: 87921412
	s_and_b64 s[20:21], s[18:19], exec                         // 000000008860: 86947E12
	s_mov_b32 s77, 1                                           // 000000008864: BECD0081
	s_cbranch_scc0 7                                           // 000000008868: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6d88>
	s_add_u32 s2, s2, s14                                      // 00000000886C: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000008870: BF093302
	s_cbranch_scc1 1207                                        // 000000008874: BF8504B7 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8054>
	s_lshl_b32 s17, s2, 5                                      // 000000008878: 8E118502
	s_load_dwordx8 s[68:75], s[46:47], s17 offset:0x0          // 00000000887C: C00E5117 22000000
	s_mov_b32 s77, 0                                           // 000000008884: BECD0080
	s_waitcnt lgkmcnt(0)                                       // 000000008888: BF8CC07F
	s_add_u32 s28, s38, s72                                    // 00000000888C: 801C4826
	s_addc_u32 s29, s39, s73                                   // 000000008890: 821D4927
	s_add_u32 s80, s40, s72                                    // 000000008894: 80504828
	s_addc_u32 s81, s41, s73                                   // 000000008898: 82514929
	s_not_b32 s17, s68                                         // 00000000889C: BE910444
	s_add_u32 s17, s4, s17                                     // 0000000088A0: 80111104
	s_and_b64 s[18:19], s[18:19], exec                         // 0000000088A4: 86927E12
	s_cselect_b32 s17, s17, s68                                // 0000000088A8: 85114411
	s_lshl_b32 s18, s17, 5                                     // 0000000088AC: 8E128511
	s_add_u32 s18, s18, 32                                     // 0000000088B0: 8012A012
	s_mul_i32 s18, s18, s5                                     // 0000000088B4: 92120512
	s_addk_i32 s18, 0x60                                       // 0000000088B8: B7120060
	s_lshr_b32 s18, s18, 7                                     // 0000000088BC: 8F128712
	v_readlane_b32 s19, v255, 1                                // 0000000088C0: D2890013 000103FF
	s_min_u32 s96, s19, s18                                    // 0000000088C8: 83E01213
	s_and_b64 s[18:19], s[10:11], exec                         // 0000000088CC: 86927E0A
	s_cbranch_scc0 84                                          // 0000000088D0: BF840054 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6f24>
	s_lshl_b32 s18, s24, 14                                    // 0000000088D4: 8E128E18
	s_or_b32 s19, s18, s88                                     // 0000000088D8: 87135812
	s_mov_b32 m0, s19                                          // 0000000088DC: BEFC0013
	v_readlane_b32 s20, v255, 11                               // 0000000088E0: D2890014 000117FF
	buffer_load_dwordx4 v233, s[28:31], 0 offen lds            // 0000000088E8: E05D1000 800700E9
	s_add_u32 m0, s19, 0x1000                                  // 0000000088F0: 807CFF13 00001000
	s_mov_b32 s82, s30                                         // 0000000088F8: BED2001E
	s_mov_b32 s83, s31                                         // 0000000088FC: BED3001F
	s_nop 0                                                    // 000000008900: BF800000
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000008904: E05D1000 140700E9
	s_or_b32 m0, s19, 0x2000                                   // 00000000890C: 877CFF13 00002000
	v_readlane_b32 s20, v255, 12                               // 000000008914: D2890014 000119FF
	s_nop 4                                                    // 00000000891C: BF800004
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000008920: E05D1000 140700E9
	s_add_u32 m0, s19, 0x3000                                  // 000000008928: 807CFF13 00003000
	s_mul_i32 s19, s8, 0x60                                    // 000000008930: 9213FF08 00000060
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008938: E05D1000 130700E9
	s_add_u32 s19, s92, s18                                    // 000000008940: 8013125C
	s_add_u32 m0, s19, s88                                     // 000000008944: 807C5813
	s_nop 0                                                    // 000000008948: BF800000
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 00000000894C: E05D1000 801400EB
	s_add_u32 s19, s92, s18                                    // 000000008954: 8013125C
	s_add_u32 s19, s19, s88                                    // 000000008958: 80135813
	s_add_u32 m0, s19, 0x1000                                  // 00000000895C: 807CFF13 00001000
	s_nop 0                                                    // 000000008964: BF800000
	buffer_load_dwordx4 v235, s[80:83], s20 offen lds          // 000000008968: E05D1000 141400EB
	s_add_u32 s19, s92, s18                                    // 000000008970: 8013125C
	s_add_u32 s19, s19, s88                                    // 000000008974: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 000000008978: 807CFF13 00002000
	v_readlane_b32 s19, v255, 13                               // 000000008980: D2890013 00011BFF
	s_nop 4                                                    // 000000008988: BF800004
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 00000000898C: E05D1000 131400EB
	s_add_u32 s18, s92, s18                                    // 000000008994: 8012125C
	s_add_u32 s18, s18, s88                                    // 000000008998: 80125812
	s_add_u32 m0, s18, 0x3000                                  // 00000000899C: 807CFF12 00003000
	s_mul_i32 s18, s8, 0x44                                    // 0000000089A4: 9212FF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 0000000089AC: E05D1000 121400EB
	s_cmp_lt_u32 s96, 2                                        // 0000000089B4: BF0A8260
	s_cbranch_scc1 26                                          // 0000000089B8: BF85001A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6f24>
	s_add_u32 s18, s24, 1                                      // 0000000089BC: 80128118
	s_and_b32 s18, s18, 3                                      // 0000000089C0: 86128312
	s_lshl_b32 s18, s18, 14                                    // 0000000089C4: 8E128E12
	s_or_b32 s18, s18, s88                                     // 0000000089C8: 87125812
	s_mov_b32 m0, s18                                          // 0000000089CC: BEFC0012
	s_mul_i32 s19, s8, 0xa0                                    // 0000000089D0: 9213FF08 000000A0
	buffer_load_dwordx4 v233, s[28:31], s33 offen lds          // 0000000089D8: E05D1000 210700E9
	s_add_u32 m0, s18, 0x1000                                  // 0000000089E0: 807CFF12 00001000
	s_nop 0                                                    // 0000000089E8: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 0000000089EC: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 0000000089F4: 877CFF12 00002000
	s_mul_i32 s19, s8, 0xc0                                    // 0000000089FC: 9213FF08 000000C0
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008A04: E05D1000 130700E9
	s_add_u32 m0, s18, 0x3000                                  // 000000008A0C: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xe0                                    // 000000008A14: 9212FF08 000000E0
	buffer_load_dwordx4 v233, s[28:31], s18 offen lds          // 000000008A1C: E05D1000 120700E9
	v_readlane_b32 s18, v255, 7                                // 000000008A24: D2890012 00010FFF
	s_add_u32 s22, s18, s70                                    // 000000008A2C: 80164612
	v_readlane_b32 s18, v255, 8                                // 000000008A30: D2890012 000111FF
	s_addc_u32 s23, s18, s71                                   // 000000008A38: 82174712
	v_readlane_b32 s18, v255, 9                                // 000000008A3C: D2890012 000113FF
	s_add_u32 s20, s18, s74                                    // 000000008A44: 80144A12
	v_readlane_b32 s18, v255, 10                               // 000000008A48: D2890012 000115FF
	s_addc_u32 s21, s18, s75                                   // 000000008A50: 82154B12
	v_readlane_b32 s18, v255, 2                                // 000000008A54: D2890012 000105FF
	s_add_u32 s18, s69, s18                                    // 000000008A5C: 80121245
	s_lshl_b32 s18, s18, 2                                     // 000000008A60: 8E128212
	s_add_u32 s25, s44, s18                                    // 000000008A64: 8019122C
	v_readlane_b32 s18, v255, 3                                // 000000008A68: D2890012 000107FF
	s_addc_u32 s26, s45, 0                                     // 000000008A70: 821A802D
	v_readlane_b32 s19, v255, 4                                // 000000008A74: D2890013 000109FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008A7C: 86927E12
	s_mul_i32 s17, s17, s5                                     // 000000008A80: 92110511
	s_cselect_b32 s18, 0, s25                                  // 000000008A84: 85121980
	v_readlane_b32 s25, v255, 0                                // 000000008A88: D2890019 000101FF
	s_cselect_b32 s19, 0, s26                                  // 000000008A90: 85131A80
	s_add_u32 s25, s17, s25                                    // 000000008A94: 80191911
	s_lshl_b32 s17, s25, 5                                     // 000000008A98: 8E118519
	v_or_b32_e32 v64, s17, v216                                // 000000008A9C: 2881B011
	s_bfe_u32 s79, s25, 0x190002                               // 000000008AA0: 92CFFF19 00190002
	v_mul_lo_u32 v64, v64, s7                                  // 000000008AA8: D2850040 00000F40
	scratch_load_dword v65, off, off offset:36                 // 000000008AB0: DC504024 417F0000
	s_waitcnt vmcnt(0)                                         // 000000008AB8: BF8C0F70
	v_add_u32_e32 v64, v65, v64                                // 000000008ABC: 68808141
	global_load_dwordx4 v[220:223], v64, s[22:23]              // 000000008AC0: DC5C8000 DC160040
	global_load_dwordx4 v[224:227], v64, s[22:23] offset:16    // 000000008AC8: DC5C8010 E0160040
	global_load_dwordx4 v[200:203], v64, s[22:23] offset:64    // 000000008AD0: DC5C8040 C8160040
	global_load_dwordx4 v[204:207], v64, s[22:23] offset:80    // 000000008AD8: DC5C8050 CC160040
	s_mov_b32 s83, 0x110000                                    // 000000008AE0: BED300FF 00110000
	s_mov_b32 s22, 1                                           // 000000008AE8: BE960081
	s_mov_b32 s43, 0x110000                                    // 000000008AEC: BEAB00FF 00110000
	s_branch 1181                                              // 000000008AF4: BF82049D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x826c>
	s_cmp_ge_u32 s79, s42                                      // 000000008AF8: BF092A4F
	s_cbranch_scc1 611                                         // 000000008AFC: BF850263 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x798c>
	s_waitcnt vmcnt(0)                                         // 000000008B00: BF8C0F70
	s_barrier                                                  // 000000008B04: BF8A0000
	s_add_u32 s17, s96, s78                                    // 000000008B08: 80114E60
	s_and_b32 s24, s17, 3                                      // 000000008B0C: 86188311
	s_cmp_lg_u32 s77, 0                                        // 000000008B10: BF07804D
	s_cselect_b64 s[18:19], -1, 0                              // 000000008B14: 859280C1
	s_not_b32 s17, s68                                         // 000000008B18: BE910444
	s_add_u32 s17, s4, s17                                     // 000000008B1C: 80111104
	s_cmp_eq_u32 s68, s17                                      // 000000008B20: BF061144
	s_cselect_b64 s[20:21], -1, 0                              // 000000008B24: 859480C1
	s_or_b64 s[18:19], s[18:19], s[20:21]                      // 000000008B28: 87921412
	s_and_b64 s[20:21], s[18:19], exec                         // 000000008B2C: 86947E12
	s_mov_b32 s77, 1                                           // 000000008B30: BECD0081
	s_cbranch_scc0 7                                           // 000000008B34: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7054>
	s_add_u32 s2, s2, s14                                      // 000000008B38: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000008B3C: BF093302
	s_cbranch_scc1 1034                                        // 000000008B40: BF85040A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x806c>
	s_lshl_b32 s17, s2, 5                                      // 000000008B44: 8E118502
	s_load_dwordx8 s[68:75], s[46:47], s17 offset:0x0          // 000000008B48: C00E5117 22000000
	s_mov_b32 s77, 0                                           // 000000008B50: BECD0080
	s_waitcnt lgkmcnt(0)                                       // 000000008B54: BF8CC07F
	s_add_u32 s28, s38, s72                                    // 000000008B58: 801C4826
	s_addc_u32 s29, s39, s73                                   // 000000008B5C: 821D4927
	s_add_u32 s80, s40, s72                                    // 000000008B60: 80504828
	s_addc_u32 s81, s41, s73                                   // 000000008B64: 82514929
	s_not_b32 s17, s68                                         // 000000008B68: BE910444
	s_add_u32 s17, s4, s17                                     // 000000008B6C: 80111104
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008B70: 86927E12
	s_cselect_b32 s17, s17, s68                                // 000000008B74: 85114411
	s_lshl_b32 s18, s17, 5                                     // 000000008B78: 8E128511
	s_add_u32 s18, s18, 32                                     // 000000008B7C: 8012A012
	s_mul_i32 s18, s18, s5                                     // 000000008B80: 92120512
	s_addk_i32 s18, 0x60                                       // 000000008B84: B7120060
	s_lshr_b32 s18, s18, 7                                     // 000000008B88: 8F128712
	v_readlane_b32 s19, v255, 1                                // 000000008B8C: D2890013 000103FF
	s_min_u32 s96, s19, s18                                    // 000000008B94: 83E01213
	s_and_b64 s[18:19], s[10:11], exec                         // 000000008B98: 86927E0A
	s_cbranch_scc0 84                                          // 000000008B9C: BF840054 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x71f0>
	s_lshl_b32 s18, s24, 14                                    // 000000008BA0: 8E128E18
	s_or_b32 s19, s18, s88                                     // 000000008BA4: 87135812
	s_mov_b32 m0, s19                                          // 000000008BA8: BEFC0013
	v_readlane_b32 s20, v255, 11                               // 000000008BAC: D2890014 000117FF
	buffer_load_dwordx4 v233, s[28:31], 0 offen lds            // 000000008BB4: E05D1000 800700E9
	s_add_u32 m0, s19, 0x1000                                  // 000000008BBC: 807CFF13 00001000
	s_mov_b32 s82, s30                                         // 000000008BC4: BED2001E
	s_mov_b32 s83, s31                                         // 000000008BC8: BED3001F
	s_nop 0                                                    // 000000008BCC: BF800000
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000008BD0: E05D1000 140700E9
	s_or_b32 m0, s19, 0x2000                                   // 000000008BD8: 877CFF13 00002000
	v_readlane_b32 s20, v255, 12                               // 000000008BE0: D2890014 000119FF
	s_nop 4                                                    // 000000008BE8: BF800004
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000008BEC: E05D1000 140700E9
	s_add_u32 m0, s19, 0x3000                                  // 000000008BF4: 807CFF13 00003000
	s_mul_i32 s19, s8, 0x60                                    // 000000008BFC: 9213FF08 00000060
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008C04: E05D1000 130700E9
	s_add_u32 s19, s92, s18                                    // 000000008C0C: 8013125C
	s_add_u32 m0, s19, s88                                     // 000000008C10: 807C5813
	s_nop 0                                                    // 000000008C14: BF800000
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 000000008C18: E05D1000 801400EB
	s_add_u32 s19, s92, s18                                    // 000000008C20: 8013125C
	s_add_u32 s19, s19, s88                                    // 000000008C24: 80135813
	s_add_u32 m0, s19, 0x1000                                  // 000000008C28: 807CFF13 00001000
	s_nop 0                                                    // 000000008C30: BF800000
	buffer_load_dwordx4 v235, s[80:83], s20 offen lds          // 000000008C34: E05D1000 141400EB
	s_add_u32 s19, s92, s18                                    // 000000008C3C: 8013125C
	s_add_u32 s19, s19, s88                                    // 000000008C40: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 000000008C44: 807CFF13 00002000
	v_readlane_b32 s19, v255, 13                               // 000000008C4C: D2890013 00011BFF
	s_nop 4                                                    // 000000008C54: BF800004
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000008C58: E05D1000 131400EB
	s_add_u32 s18, s92, s18                                    // 000000008C60: 8012125C
	s_add_u32 s18, s18, s88                                    // 000000008C64: 80125812
	s_add_u32 m0, s18, 0x3000                                  // 000000008C68: 807CFF12 00003000
	s_mul_i32 s18, s8, 0x44                                    // 000000008C70: 9212FF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000008C78: E05D1000 121400EB
	s_cmp_lt_u32 s96, 2                                        // 000000008C80: BF0A8260
	s_cbranch_scc1 26                                          // 000000008C84: BF85001A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x71f0>
	s_add_u32 s18, s24, 1                                      // 000000008C88: 80128118
	s_and_b32 s18, s18, 3                                      // 000000008C8C: 86128312
	s_lshl_b32 s18, s18, 14                                    // 000000008C90: 8E128E12
	s_or_b32 s18, s18, s88                                     // 000000008C94: 87125812
	s_mov_b32 m0, s18                                          // 000000008C98: BEFC0012
	s_mul_i32 s19, s8, 0xa0                                    // 000000008C9C: 9213FF08 000000A0
	buffer_load_dwordx4 v233, s[28:31], s33 offen lds          // 000000008CA4: E05D1000 210700E9
	s_add_u32 m0, s18, 0x1000                                  // 000000008CAC: 807CFF12 00001000
	s_nop 0                                                    // 000000008CB4: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008CB8: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 000000008CC0: 877CFF12 00002000
	s_mul_i32 s19, s8, 0xc0                                    // 000000008CC8: 9213FF08 000000C0
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008CD0: E05D1000 130700E9
	s_add_u32 m0, s18, 0x3000                                  // 000000008CD8: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xe0                                    // 000000008CE0: 9212FF08 000000E0
	buffer_load_dwordx4 v233, s[28:31], s18 offen lds          // 000000008CE8: E05D1000 120700E9
	v_readlane_b32 s18, v255, 7                                // 000000008CF0: D2890012 00010FFF
	s_add_u32 s22, s18, s70                                    // 000000008CF8: 80164612
	v_readlane_b32 s18, v255, 8                                // 000000008CFC: D2890012 000111FF
	s_addc_u32 s23, s18, s71                                   // 000000008D04: 82174712
	v_readlane_b32 s18, v255, 9                                // 000000008D08: D2890012 000113FF
	s_add_u32 s20, s18, s74                                    // 000000008D10: 80144A12
	v_readlane_b32 s18, v255, 10                               // 000000008D14: D2890012 000115FF
	s_addc_u32 s21, s18, s75                                   // 000000008D1C: 82154B12
	v_readlane_b32 s18, v255, 2                                // 000000008D20: D2890012 000105FF
	s_add_u32 s18, s69, s18                                    // 000000008D28: 80121245
	s_lshl_b32 s18, s18, 2                                     // 000000008D2C: 8E128212
	s_add_u32 s25, s44, s18                                    // 000000008D30: 8019122C
	v_readlane_b32 s18, v255, 3                                // 000000008D34: D2890012 000107FF
	s_addc_u32 s26, s45, 0                                     // 000000008D3C: 821A802D
	v_readlane_b32 s19, v255, 4                                // 000000008D40: D2890013 000109FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008D48: 86927E12
	s_mul_i32 s17, s17, s5                                     // 000000008D4C: 92110511
	s_cselect_b32 s18, 0, s25                                  // 000000008D50: 85121980
	v_readlane_b32 s25, v255, 0                                // 000000008D54: D2890019 000101FF
	s_cselect_b32 s19, 0, s26                                  // 000000008D5C: 85131A80
	s_add_u32 s25, s17, s25                                    // 000000008D60: 80191911
	s_lshl_b32 s17, s25, 5                                     // 000000008D64: 8E118519
	v_or_b32_e32 v64, s17, v216                                // 000000008D68: 2881B011
	s_bfe_u32 s79, s25, 0x190002                               // 000000008D6C: 92CFFF19 00190002
	v_mul_lo_u32 v64, v64, s7                                  // 000000008D74: D2850040 00000F40
	scratch_load_dword v65, off, off offset:36                 // 000000008D7C: DC504024 417F0000
	s_waitcnt vmcnt(0)                                         // 000000008D84: BF8C0F70
	v_add_u32_e32 v64, v65, v64                                // 000000008D88: 68808141
	global_load_dwordx4 v[220:223], v64, s[22:23]              // 000000008D8C: DC5C8000 DC160040
	global_load_dwordx4 v[224:227], v64, s[22:23] offset:16    // 000000008D94: DC5C8010 E0160040
	global_load_dwordx4 v[200:203], v64, s[22:23] offset:64    // 000000008D9C: DC5C8040 C8160040
	global_load_dwordx4 v[204:207], v64, s[22:23] offset:80    // 000000008DA4: DC5C8050 CC160040
	s_mov_b32 s83, 0x110000                                    // 000000008DAC: BED300FF 00110000
	s_mov_b32 s22, 1                                           // 000000008DB4: BE960081
	s_mov_b32 s43, 0x110000                                    // 000000008DB8: BEAB00FF 00110000
	s_branch 1130                                              // 000000008DC0: BF82046A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x846c>
	s_setprio 0                                                // 000000008DC4: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000008DC8: D1CB0070 0663DF70
	v_fma_f32 v96, v96, v239, v152                             // 000000008DD0: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 000000008DD8: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 000000008DE0: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 000000008DE8: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 000000008DF0: D1CB0068 0663DF68
	v_fma_f32 v124, v124, v239, v152                           // 000000008DF8: D1CB007C 0663DF7C
	v_fma_f32 v108, v108, v239, v152                           // 000000008E00: D1CB006C 0663DF6C
	v_fma_f32 v80, v80, v239, v150                             // 000000008E08: D1CB0050 065BDF50
	v_fma_f32 v64, v64, v239, v150                             // 000000008E10: D1CB0040 065BDF40
	v_fma_f32 v84, v84, v239, v150                             // 000000008E18: D1CB0054 065BDF54
	v_fma_f32 v68, v68, v239, v150                             // 000000008E20: D1CB0044 065BDF44
	v_fma_f32 v88, v88, v239, v150                             // 000000008E28: D1CB0058 065BDF58
	v_fma_f32 v72, v72, v239, v150                             // 000000008E30: D1CB0048 065BDF48
	v_fma_f32 v128, v75, v239, v150                            // 000000008E38: D1CB0080 065BDF4B
	v_fma_f32 v75, v92, v239, v150                             // 000000008E40: D1CB004B 065BDF5C
	v_fma_f32 v76, v76, v239, v150                             // 000000008E48: D1CB004C 065BDF4C
	v_fma_f32 v113, v113, v239, v152                           // 000000008E50: D1CB0071 0663DF71
	v_fma_f32 v97, v97, v239, v152                             // 000000008E58: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 000000008E60: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 000000008E68: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 000000008E70: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 000000008E78: D1CB0069 0663DF69
	v_fma_f32 v125, v125, v239, v152                           // 000000008E80: D1CB007D 0663DF7D
	v_fma_f32 v109, v109, v239, v152                           // 000000008E88: D1CB006D 0663DF6D
	v_fma_f32 v81, v81, v239, v150                             // 000000008E90: D1CB0051 065BDF51
	v_fma_f32 v65, v65, v239, v150                             // 000000008E98: D1CB0041 065BDF41
	v_fma_f32 v85, v85, v239, v150                             // 000000008EA0: D1CB0055 065BDF55
	v_fma_f32 v69, v69, v239, v150                             // 000000008EA8: D1CB0045 065BDF45
	v_fma_f32 v89, v89, v239, v150                             // 000000008EB0: D1CB0059 065BDF59
	v_fma_f32 v73, v73, v239, v150                             // 000000008EB8: D1CB0049 065BDF49
	v_fma_f32 v92, v93, v239, v150                             // 000000008EC0: D1CB005C 065BDF5D
	v_fma_f32 v93, v94, v239, v150                             // 000000008EC8: D1CB005D 065BDF5E
	v_fma_f32 v94, v95, v239, v150                             // 000000008ED0: D1CB005E 065BDF5F
	v_fma_f32 v77, v77, v239, v150                             // 000000008ED8: D1CB004D 065BDF4D
	v_fma_f32 v95, v79, v239, v150                             // 000000008EE0: D1CB005F 065BDF4F
	v_cvt_pk_u8_f32 v79, v112, 0, 0                            // 000000008EE8: D1DD004F 02010170
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000008EF0: D1DD0060 02010160
	v_cvt_pk_u8_f32 v112, v116, 0, 0                           // 000000008EF8: D1DD0070 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000008F00: D1DD0064 02010164
	v_cvt_pk_u8_f32 v116, v120, 0, 0                           // 000000008F08: D1DD0074 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000008F10: D1DD0068 02010168
	v_cvt_pk_u8_f32 v120, v124, 0, 0                           // 000000008F18: D1DD0078 0201017C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000008F20: D1DD006C 0201016C
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000008F28: D1DD0050 02010150
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000008F30: D1DD0040 02010140
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000008F38: D1DD0054 02010154
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000008F40: D1DD0044 02010144
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000008F48: D1DD0058 02010158
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000008F50: D1DD0048 02010148
	v_cvt_pk_u8_f32 v75, v75, 0, 0                             // 000000008F58: D1DD004B 0201014B
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000008F60: D1DD004C 0201014C
	v_fma_f32 v114, v114, v239, v152                           // 000000008F68: D1CB0072 0663DF72
	v_fma_f32 v98, v98, v239, v152                             // 000000008F70: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 000000008F78: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 000000008F80: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 000000008F88: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 000000008F90: D1CB006A 0663DF6A
	v_fma_f32 v126, v126, v239, v152                           // 000000008F98: D1CB007E 0663DF7E
	v_fma_f32 v110, v110, v239, v152                           // 000000008FA0: D1CB006E 0663DF6E
	v_fma_f32 v82, v82, v239, v150                             // 000000008FA8: D1CB0052 065BDF52
	v_fma_f32 v66, v66, v239, v150                             // 000000008FB0: D1CB0042 065BDF42
	v_fma_f32 v86, v86, v239, v150                             // 000000008FB8: D1CB0056 065BDF56
	v_fma_f32 v70, v70, v239, v150                             // 000000008FC0: D1CB0046 065BDF46
	v_fma_f32 v90, v90, v239, v150                             // 000000008FC8: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 000000008FD0: D1CB004A 065BDF4A
	v_fma_f32 v78, v78, v239, v150                             // 000000008FD8: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v79, v113, 1, v79                          // 000000008FE0: D1DD004F 053D0371
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000008FE8: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v112                         // 000000008FF0: D1DD0061 05C10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 000000008FF8: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v116                        // 000000009000: D1DD0065 05D10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 000000009008: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v105, v125, 1, v120                        // 000000009010: D1DD0069 05E1037D
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 000000009018: D1DD006C 05B1036D
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000009020: D1DD0050 05410351
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000009028: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 000000009030: D1DD0041 05510355
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 000000009038: D1DD0044 05110345
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 000000009040: D1DD0045 05610359
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 000000009048: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v92, 1, v75                           // 000000009050: D1DD0049 052D035C
	v_cvt_pk_u8_f32 v75, v77, 1, v76                           // 000000009058: D1DD004B 0531034D
	v_fma_f32 v115, v115, v239, v152                           // 000000009060: D1CB0073 0663DF73
	v_fma_f32 v99, v99, v239, v152                             // 000000009068: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 000000009070: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 000000009078: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 000000009080: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 000000009088: D1CB006B 0663DF6B
	v_fma_f32 v127, v127, v239, v152                           // 000000009090: D1CB007F 0663DF7F
	v_fma_f32 v111, v111, v239, v152                           // 000000009098: D1CB006F 0663DF6F
	v_fma_f32 v83, v83, v239, v150                             // 0000000090A0: D1CB0053 065BDF53
	v_fma_f32 v67, v67, v239, v150                             // 0000000090A8: D1CB0043 065BDF43
	v_fma_f32 v87, v87, v239, v150                             // 0000000090B0: D1CB0057 065BDF57
	v_fma_f32 v71, v71, v239, v150                             // 0000000090B8: D1CB0047 065BDF47
	v_fma_f32 v91, v91, v239, v150                             // 0000000090C0: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v76, v114, 2, v79                          // 0000000090C8: D1DD004C 053D0572
	v_cvt_pk_u8_f32 v77, v98, 2, v96                           // 0000000090D0: D1DD004D 05810562
	v_cvt_pk_u8_f32 v79, v118, 2, v97                          // 0000000090D8: D1DD004F 05850576
	v_cvt_pk_u8_f32 v81, v102, 2, v100                         // 0000000090E0: D1DD0051 05910566
	v_cvt_pk_u8_f32 v84, v122, 2, v101                         // 0000000090E8: D1DD0054 0595057A
	v_cvt_pk_u8_f32 v85, v106, 2, v104                         // 0000000090F0: D1DD0055 05A1056A
	v_cvt_pk_u8_f32 v88, v126, 2, v105                         // 0000000090F8: D1DD0058 05A5057E
	v_cvt_pk_u8_f32 v89, v110, 2, v108                         // 000000009100: D1DD0059 05B1056E
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000009108: D1DD0050 05410552
	v_cvt_pk_u8_f32 v66, v66, 2, v64                           // 000000009110: D1DD0042 05010542
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 000000009118: D1DD0041 05050556
	v_cvt_pk_u8_f32 v70, v70, 2, v68                           // 000000009120: D1DD0046 05110546
	v_cvt_pk_u8_f32 v82, v90, 2, v69                           // 000000009128: D1DD0052 0515055A
	v_cvt_pk_u8_f32 v86, v74, 2, v72                           // 000000009130: D1DD0056 0521054A
	v_cvt_pk_u8_f32 v90, v93, 2, v73                           // 000000009138: D1DD005A 0525055D
	v_cvt_pk_u8_f32 v92, v78, 2, v75                           // 000000009140: D1DD005C 052D054E
	s_mov_b32 s25, 1                                           // 000000009148: BE990081
	v_cvt_pk_u8_f32 v72, v115, 3, v76                          // 00000000914C: D1DD0048 05310773
	v_cvt_pk_u8_f32 v76, v99, 3, v77                           // 000000009154: D1DD004C 05350763
	v_cvt_pk_u8_f32 v73, v119, 3, v79                          // 00000000915C: D1DD0049 053D0777
	v_cvt_pk_u8_f32 v77, v103, 3, v81                          // 000000009164: D1DD004D 05450767
	v_cvt_pk_u8_f32 v74, v123, 3, v84                          // 00000000916C: D1DD004A 0551077B
	v_cvt_pk_u8_f32 v78, v107, 3, v85                          // 000000009174: D1DD004E 0555076B
	v_cvt_pk_u8_f32 v75, v127, 3, v88                          // 00000000917C: D1DD004B 0561077F
	v_cvt_pk_u8_f32 v79, v111, 3, v89                          // 000000009184: D1DD004F 0565076F
	v_cvt_pk_u8_f32 v64, v83, 3, v80                           // 00000000918C: D1DD0040 05410753
	v_cvt_pk_u8_f32 v68, v67, 3, v66                           // 000000009194: D1DD0044 05090743
	v_cvt_pk_u8_f32 v65, v87, 3, v65                           // 00000000919C: D1DD0041 05050757
	v_cvt_pk_u8_f32 v69, v71, 3, v70                           // 0000000091A4: D1DD0045 05190747
	v_cvt_pk_u8_f32 v66, v91, 3, v82                           // 0000000091AC: D1DD0042 0549075B
	v_cvt_pk_u8_f32 v70, v128, 3, v86                          // 0000000091B4: D1DD0046 05590780
	v_cvt_pk_u8_f32 v67, v94, 3, v90                           // 0000000091BC: D1DD0043 0569075E
	v_cvt_pk_u8_f32 v71, v95, 3, v92                           // 0000000091C4: D1DD0047 0571075F
	s_waitcnt vmcnt(0)                                         // 0000000091CC: BF8C0F70
	s_barrier                                                  // 0000000091D0: BF8A0000
	s_add_u32 s17, s96, s78                                    // 0000000091D4: 80114E60
	s_and_b32 s24, s17, 3                                      // 0000000091D8: 86188311
	s_cmp_lg_u32 s77, 0                                        // 0000000091DC: BF07804D
	s_cselect_b64 s[18:19], -1, 0                              // 0000000091E0: 859280C1
	s_not_b32 s17, s68                                         // 0000000091E4: BE910444
	s_add_u32 s17, s4, s17                                     // 0000000091E8: 80111104
	s_cmp_eq_u32 s68, s17                                      // 0000000091EC: BF061144
	s_cselect_b64 s[20:21], -1, 0                              // 0000000091F0: 859480C1
	s_or_b64 s[18:19], s[18:19], s[20:21]                      // 0000000091F4: 87921412
	s_and_b64 s[20:21], s[18:19], exec                         // 0000000091F8: 86947E12
	s_cbranch_scc0 7                                           // 0000000091FC: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x771c>
	s_add_u32 s2, s2, s14                                      // 000000009200: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000009204: BF093302
	s_mov_b32 s25, 0                                           // 000000009208: BE990080
	s_cbranch_scc1 605                                         // 00000000920C: BF85025D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8084>
	s_lshl_b32 s17, s2, 5                                      // 000000009210: 8E118502
	s_load_dwordx8 s[68:75], s[46:47], s17 offset:0x0          // 000000009214: C00E5117 22000000
	s_waitcnt lgkmcnt(0)                                       // 00000000921C: BF8CC07F
	s_add_u32 s28, s38, s72                                    // 000000009220: 801C4826
	s_addc_u32 s29, s39, s73                                   // 000000009224: 821D4927
	s_add_u32 s80, s40, s72                                    // 000000009228: 80504828
	s_addc_u32 s81, s41, s73                                   // 00000000922C: 82514929
	s_not_b32 s17, s68                                         // 000000009230: BE910444
	s_add_u32 s17, s4, s17                                     // 000000009234: 80111104
	s_and_b64 s[18:19], s[18:19], exec                         // 000000009238: 86927E12
	s_cselect_b32 s17, s17, s68                                // 00000000923C: 85114411
	s_lshl_b32 s18, s17, 5                                     // 000000009240: 8E128511
	s_add_u32 s18, s18, 32                                     // 000000009244: 8012A012
	s_mul_i32 s18, s18, s5                                     // 000000009248: 92120512
	s_addk_i32 s18, 0x60                                       // 00000000924C: B7120060
	s_lshr_b32 s18, s18, 7                                     // 000000009250: 8F128712
	v_readlane_b32 s19, v255, 1                                // 000000009254: D2890013 000103FF
	s_min_u32 s96, s19, s18                                    // 00000000925C: 83E01213
	s_and_b64 s[18:19], s[10:11], exec                         // 000000009260: 86927E0A
	s_cbranch_scc0 84                                          // 000000009264: BF840054 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x78b8>
	s_lshl_b32 s18, s24, 14                                    // 000000009268: 8E128E18
	s_or_b32 s19, s18, s88                                     // 00000000926C: 87135812
	s_mov_b32 m0, s19                                          // 000000009270: BEFC0013
	v_readlane_b32 s20, v255, 11                               // 000000009274: D2890014 000117FF
	buffer_load_dwordx4 v233, s[28:31], 0 offen lds            // 00000000927C: E05D1000 800700E9
	s_add_u32 m0, s19, 0x1000                                  // 000000009284: 807CFF13 00001000
	s_mov_b32 s82, s30                                         // 00000000928C: BED2001E
	s_mov_b32 s83, s31                                         // 000000009290: BED3001F
	s_nop 0                                                    // 000000009294: BF800000
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000009298: E05D1000 140700E9
	s_or_b32 m0, s19, 0x2000                                   // 0000000092A0: 877CFF13 00002000
	v_readlane_b32 s20, v255, 12                               // 0000000092A8: D2890014 000119FF
	s_nop 4                                                    // 0000000092B0: BF800004
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 0000000092B4: E05D1000 140700E9
	s_add_u32 m0, s19, 0x3000                                  // 0000000092BC: 807CFF13 00003000
	s_mul_i32 s19, s8, 0x60                                    // 0000000092C4: 9213FF08 00000060
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 0000000092CC: E05D1000 130700E9
	s_add_u32 s19, s92, s18                                    // 0000000092D4: 8013125C
	s_add_u32 m0, s19, s88                                     // 0000000092D8: 807C5813
	s_nop 0                                                    // 0000000092DC: BF800000
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 0000000092E0: E05D1000 801400EB
	s_add_u32 s19, s92, s18                                    // 0000000092E8: 8013125C
	s_add_u32 s19, s19, s88                                    // 0000000092EC: 80135813
	s_add_u32 m0, s19, 0x1000                                  // 0000000092F0: 807CFF13 00001000
	s_nop 0                                                    // 0000000092F8: BF800000
	buffer_load_dwordx4 v235, s[80:83], s20 offen lds          // 0000000092FC: E05D1000 141400EB
	s_add_u32 s19, s92, s18                                    // 000000009304: 8013125C
	s_add_u32 s19, s19, s88                                    // 000000009308: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 00000000930C: 807CFF13 00002000
	v_readlane_b32 s19, v255, 13                               // 000000009314: D2890013 00011BFF
	s_nop 4                                                    // 00000000931C: BF800004
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000009320: E05D1000 131400EB
	s_add_u32 s18, s92, s18                                    // 000000009328: 8012125C
	s_add_u32 s18, s18, s88                                    // 00000000932C: 80125812
	s_add_u32 m0, s18, 0x3000                                  // 000000009330: 807CFF12 00003000
	s_mul_i32 s18, s8, 0x44                                    // 000000009338: 9212FF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000009340: E05D1000 121400EB
	s_cmp_lt_u32 s96, 2                                        // 000000009348: BF0A8260
	s_cbranch_scc1 26                                          // 00000000934C: BF85001A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x78b8>
	s_add_u32 s18, s24, 1                                      // 000000009350: 80128118
	s_and_b32 s18, s18, 3                                      // 000000009354: 86128312
	s_lshl_b32 s18, s18, 14                                    // 000000009358: 8E128E12
	s_or_b32 s18, s18, s88                                     // 00000000935C: 87125812
	s_mov_b32 m0, s18                                          // 000000009360: BEFC0012
	s_mul_i32 s19, s8, 0xa0                                    // 000000009364: 9213FF08 000000A0
	buffer_load_dwordx4 v233, s[28:31], s33 offen lds          // 00000000936C: E05D1000 210700E9
	s_add_u32 m0, s18, 0x1000                                  // 000000009374: 807CFF12 00001000
	s_nop 0                                                    // 00000000937C: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000009380: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 000000009388: 877CFF12 00002000
	s_mul_i32 s19, s8, 0xc0                                    // 000000009390: 9213FF08 000000C0
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000009398: E05D1000 130700E9
	s_add_u32 m0, s18, 0x3000                                  // 0000000093A0: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xe0                                    // 0000000093A8: 9212FF08 000000E0
	buffer_load_dwordx4 v233, s[28:31], s18 offen lds          // 0000000093B0: E05D1000 120700E9
	v_readlane_b32 s18, v255, 7                                // 0000000093B8: D2890012 00010FFF
	s_add_u32 s22, s18, s70                                    // 0000000093C0: 80164612
	v_readlane_b32 s18, v255, 8                                // 0000000093C4: D2890012 000111FF
	s_addc_u32 s23, s18, s71                                   // 0000000093CC: 82174712
	v_readlane_b32 s18, v255, 9                                // 0000000093D0: D2890012 000113FF
	s_add_u32 s20, s18, s74                                    // 0000000093D8: 80144A12
	v_readlane_b32 s18, v255, 10                               // 0000000093DC: D2890012 000115FF
	s_addc_u32 s21, s18, s75                                   // 0000000093E4: 82154B12
	v_readlane_b32 s18, v255, 2                                // 0000000093E8: D2890012 000105FF
	s_add_u32 s18, s69, s18                                    // 0000000093F0: 80121245
	s_lshl_b32 s18, s18, 2                                     // 0000000093F4: 8E128212
	s_add_u32 s26, s44, s18                                    // 0000000093F8: 801A122C
	v_readlane_b32 s18, v255, 3                                // 0000000093FC: D2890012 000107FF
	s_addc_u32 s27, s45, 0                                     // 000000009404: 821B802D
	v_readlane_b32 s19, v255, 4                                // 000000009408: D2890013 000109FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000009410: 86927E12
	s_cselect_b32 s18, 0, s26                                  // 000000009414: 85121A80
	s_mul_i32 s17, s17, s5                                     // 000000009418: 92110511
	v_readlane_b32 s26, v255, 0                                // 00000000941C: D289001A 000101FF
	s_cselect_b32 s19, 0, s27                                  // 000000009424: 85131B80
	s_add_u32 s26, s17, s26                                    // 000000009428: 801A1A11
	s_lshl_b32 s17, s26, 5                                     // 00000000942C: 8E11851A
	s_bfe_u32 s79, s26, 0x190002                               // 000000009430: 92CFFF1A 00190002
	v_or_b32_e32 v80, s17, v216                                // 000000009438: 28A1B011
	v_mul_lo_u32 v80, v80, s7                                  // 00000000943C: D2850050 00000F50
	scratch_load_dword v81, off, off offset:36                 // 000000009444: DC504024 517F0000
	s_waitcnt vmcnt(0)                                         // 00000000944C: BF8C0F70
	v_add_u32_e32 v80, v81, v80                                // 000000009450: 68A0A151
	global_load_dwordx4 v[220:223], v80, s[22:23]              // 000000009454: DC5C8000 DC160050
	global_load_dwordx4 v[224:227], v80, s[22:23] offset:16    // 00000000945C: DC5C8010 E0160050
	global_load_dwordx4 v[200:203], v80, s[22:23] offset:64    // 000000009464: DC5C8040 C8160050
	global_load_dwordx4 v[204:207], v80, s[22:23] offset:80    // 00000000946C: DC5C8050 CC160050
	s_mov_b32 s83, 0x110000                                    // 000000009474: BED300FF 00110000
	s_mov_b32 s22, 1                                           // 00000000947C: BE960081
	s_mov_b32 s43, 0x110000                                    // 000000009480: BEAB00FF 00110000
	s_branch 450                                               // 000000009488: BF8201C2 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8094>
	s_setprio 0                                                // 00000000948C: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000009490: D1CB0070 0663DF70
	v_fma_f32 v96, v96, v239, v152                             // 000000009498: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 0000000094A0: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 0000000094A8: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 0000000094B0: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 0000000094B8: D1CB0068 0663DF68
	v_fma_f32 v124, v124, v239, v152                           // 0000000094C0: D1CB007C 0663DF7C
	v_fma_f32 v108, v108, v239, v152                           // 0000000094C8: D1CB006C 0663DF6C
	v_fma_f32 v80, v80, v239, v150                             // 0000000094D0: D1CB0050 065BDF50
	v_fma_f32 v64, v64, v239, v150                             // 0000000094D8: D1CB0040 065BDF40
	v_fma_f32 v84, v84, v239, v150                             // 0000000094E0: D1CB0054 065BDF54
	v_fma_f32 v68, v68, v239, v150                             // 0000000094E8: D1CB0044 065BDF44
	v_fma_f32 v88, v88, v239, v150                             // 0000000094F0: D1CB0058 065BDF58
	v_fma_f32 v72, v72, v239, v150                             // 0000000094F8: D1CB0048 065BDF48
	v_fma_f32 v128, v75, v239, v150                            // 000000009500: D1CB0080 065BDF4B
	v_fma_f32 v75, v92, v239, v150                             // 000000009508: D1CB004B 065BDF5C
	v_fma_f32 v76, v76, v239, v150                             // 000000009510: D1CB004C 065BDF4C
	v_fma_f32 v113, v113, v239, v152                           // 000000009518: D1CB0071 0663DF71
	v_fma_f32 v97, v97, v239, v152                             // 000000009520: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 000000009528: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 000000009530: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 000000009538: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 000000009540: D1CB0069 0663DF69
	v_fma_f32 v125, v125, v239, v152                           // 000000009548: D1CB007D 0663DF7D
	v_fma_f32 v109, v109, v239, v152                           // 000000009550: D1CB006D 0663DF6D
	v_fma_f32 v81, v81, v239, v150                             // 000000009558: D1CB0051 065BDF51
	v_fma_f32 v65, v65, v239, v150                             // 000000009560: D1CB0041 065BDF41
	v_fma_f32 v85, v85, v239, v150                             // 000000009568: D1CB0055 065BDF55
	v_fma_f32 v69, v69, v239, v150                             // 000000009570: D1CB0045 065BDF45
	v_fma_f32 v89, v89, v239, v150                             // 000000009578: D1CB0059 065BDF59
	v_fma_f32 v73, v73, v239, v150                             // 000000009580: D1CB0049 065BDF49
	v_fma_f32 v92, v93, v239, v150                             // 000000009588: D1CB005C 065BDF5D
	v_fma_f32 v93, v94, v239, v150                             // 000000009590: D1CB005D 065BDF5E
	v_fma_f32 v94, v95, v239, v150                             // 000000009598: D1CB005E 065BDF5F
	v_fma_f32 v77, v77, v239, v150                             // 0000000095A0: D1CB004D 065BDF4D
	v_fma_f32 v95, v79, v239, v150                             // 0000000095A8: D1CB005F 065BDF4F
	v_cvt_pk_u8_f32 v79, v112, 0, 0                            // 0000000095B0: D1DD004F 02010170
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 0000000095B8: D1DD0060 02010160
	v_cvt_pk_u8_f32 v112, v116, 0, 0                           // 0000000095C0: D1DD0070 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 0000000095C8: D1DD0064 02010164
	v_cvt_pk_u8_f32 v116, v120, 0, 0                           // 0000000095D0: D1DD0074 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 0000000095D8: D1DD0068 02010168
	v_cvt_pk_u8_f32 v120, v124, 0, 0                           // 0000000095E0: D1DD0078 0201017C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 0000000095E8: D1DD006C 0201016C
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 0000000095F0: D1DD0050 02010150
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 0000000095F8: D1DD0040 02010140
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000009600: D1DD0054 02010154
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000009608: D1DD0044 02010144
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000009610: D1DD0058 02010158
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000009618: D1DD0048 02010148
	v_cvt_pk_u8_f32 v75, v75, 0, 0                             // 000000009620: D1DD004B 0201014B
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000009628: D1DD004C 0201014C
	v_fma_f32 v114, v114, v239, v152                           // 000000009630: D1CB0072 0663DF72
	v_fma_f32 v98, v98, v239, v152                             // 000000009638: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 000000009640: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 000000009648: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 000000009650: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 000000009658: D1CB006A 0663DF6A
	v_fma_f32 v126, v126, v239, v152                           // 000000009660: D1CB007E 0663DF7E
	v_fma_f32 v110, v110, v239, v152                           // 000000009668: D1CB006E 0663DF6E
	v_fma_f32 v82, v82, v239, v150                             // 000000009670: D1CB0052 065BDF52
	v_fma_f32 v66, v66, v239, v150                             // 000000009678: D1CB0042 065BDF42
	v_fma_f32 v86, v86, v239, v150                             // 000000009680: D1CB0056 065BDF56
	v_fma_f32 v70, v70, v239, v150                             // 000000009688: D1CB0046 065BDF46
	v_fma_f32 v90, v90, v239, v150                             // 000000009690: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 000000009698: D1CB004A 065BDF4A
	v_fma_f32 v78, v78, v239, v150                             // 0000000096A0: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v79, v113, 1, v79                          // 0000000096A8: D1DD004F 053D0371
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 0000000096B0: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v112                         // 0000000096B8: D1DD0061 05C10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 0000000096C0: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v116                        // 0000000096C8: D1DD0065 05D10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 0000000096D0: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v105, v125, 1, v120                        // 0000000096D8: D1DD0069 05E1037D
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 0000000096E0: D1DD006C 05B1036D
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 0000000096E8: D1DD0050 05410351
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 0000000096F0: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 0000000096F8: D1DD0041 05510355
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 000000009700: D1DD0044 05110345
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 000000009708: D1DD0045 05610359
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 000000009710: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v92, 1, v75                           // 000000009718: D1DD0049 052D035C
	v_cvt_pk_u8_f32 v75, v77, 1, v76                           // 000000009720: D1DD004B 0531034D
	v_fma_f32 v115, v115, v239, v152                           // 000000009728: D1CB0073 0663DF73
	v_fma_f32 v99, v99, v239, v152                             // 000000009730: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 000000009738: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 000000009740: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 000000009748: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 000000009750: D1CB006B 0663DF6B
	v_fma_f32 v127, v127, v239, v152                           // 000000009758: D1CB007F 0663DF7F
	v_fma_f32 v111, v111, v239, v152                           // 000000009760: D1CB006F 0663DF6F
	v_fma_f32 v83, v83, v239, v150                             // 000000009768: D1CB0053 065BDF53
	v_fma_f32 v67, v67, v239, v150                             // 000000009770: D1CB0043 065BDF43
	v_fma_f32 v87, v87, v239, v150                             // 000000009778: D1CB0057 065BDF57
	v_fma_f32 v71, v71, v239, v150                             // 000000009780: D1CB0047 065BDF47
	v_fma_f32 v91, v91, v239, v150                             // 000000009788: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v76, v114, 2, v79                          // 000000009790: D1DD004C 053D0572
	v_cvt_pk_u8_f32 v77, v98, 2, v96                           // 000000009798: D1DD004D 05810562
	v_cvt_pk_u8_f32 v79, v118, 2, v97                          // 0000000097A0: D1DD004F 05850576
	v_cvt_pk_u8_f32 v81, v102, 2, v100                         // 0000000097A8: D1DD0051 05910566
	v_cvt_pk_u8_f32 v84, v122, 2, v101                         // 0000000097B0: D1DD0054 0595057A
	v_cvt_pk_u8_f32 v85, v106, 2, v104                         // 0000000097B8: D1DD0055 05A1056A
	v_cvt_pk_u8_f32 v88, v126, 2, v105                         // 0000000097C0: D1DD0058 05A5057E
	v_cvt_pk_u8_f32 v89, v110, 2, v108                         // 0000000097C8: D1DD0059 05B1056E
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 0000000097D0: D1DD0050 05410552
	v_cvt_pk_u8_f32 v66, v66, 2, v64                           // 0000000097D8: D1DD0042 05010542
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 0000000097E0: D1DD0041 05050556
	v_cvt_pk_u8_f32 v70, v70, 2, v68                           // 0000000097E8: D1DD0046 05110546
	v_cvt_pk_u8_f32 v82, v90, 2, v69                           // 0000000097F0: D1DD0052 0515055A
	v_cvt_pk_u8_f32 v86, v74, 2, v72                           // 0000000097F8: D1DD0056 0521054A
	v_cvt_pk_u8_f32 v90, v93, 2, v73                           // 000000009800: D1DD005A 0525055D
	v_cvt_pk_u8_f32 v92, v78, 2, v75                           // 000000009808: D1DD005C 052D054E
	s_mov_b32 s25, 1                                           // 000000009810: BE990081
	v_cvt_pk_u8_f32 v72, v115, 3, v76                          // 000000009814: D1DD0048 05310773
	v_cvt_pk_u8_f32 v76, v99, 3, v77                           // 00000000981C: D1DD004C 05350763
	v_cvt_pk_u8_f32 v73, v119, 3, v79                          // 000000009824: D1DD0049 053D0777
	v_cvt_pk_u8_f32 v77, v103, 3, v81                          // 00000000982C: D1DD004D 05450767
	v_cvt_pk_u8_f32 v74, v123, 3, v84                          // 000000009834: D1DD004A 0551077B
	v_cvt_pk_u8_f32 v78, v107, 3, v85                          // 00000000983C: D1DD004E 0555076B
	v_cvt_pk_u8_f32 v75, v127, 3, v88                          // 000000009844: D1DD004B 0561077F
	v_cvt_pk_u8_f32 v79, v111, 3, v89                          // 00000000984C: D1DD004F 0565076F
	v_cvt_pk_u8_f32 v64, v83, 3, v80                           // 000000009854: D1DD0040 05410753
	v_cvt_pk_u8_f32 v68, v67, 3, v66                           // 00000000985C: D1DD0044 05090743
	v_cvt_pk_u8_f32 v65, v87, 3, v65                           // 000000009864: D1DD0041 05050757
	v_cvt_pk_u8_f32 v69, v71, 3, v70                           // 00000000986C: D1DD0045 05190747
	v_cvt_pk_u8_f32 v66, v91, 3, v82                           // 000000009874: D1DD0042 0549075B
	v_cvt_pk_u8_f32 v70, v128, 3, v86                          // 00000000987C: D1DD0046 05590780
	v_cvt_pk_u8_f32 v67, v94, 3, v90                           // 000000009884: D1DD0043 0569075E
	v_cvt_pk_u8_f32 v71, v95, 3, v92                           // 00000000988C: D1DD0047 0571075F
	s_waitcnt vmcnt(0)                                         // 000000009894: BF8C0F70
	s_barrier                                                  // 000000009898: BF8A0000
	s_add_u32 s17, s96, s78                                    // 00000000989C: 80114E60
	s_and_b32 s24, s17, 3                                      // 0000000098A0: 86188311
	s_cmp_lg_u32 s77, 0                                        // 0000000098A4: BF07804D
	s_cselect_b64 s[18:19], -1, 0                              // 0000000098A8: 859280C1
	s_not_b32 s17, s68                                         // 0000000098AC: BE910444
	s_add_u32 s17, s4, s17                                     // 0000000098B0: 80111104
	s_cmp_eq_u32 s68, s17                                      // 0000000098B4: BF061144
	s_cselect_b64 s[20:21], -1, 0                              // 0000000098B8: 859480C1
	s_or_b64 s[18:19], s[18:19], s[20:21]                      // 0000000098BC: 87921412
	s_and_b64 s[20:21], s[18:19], exec                         // 0000000098C0: 86947E12
	s_cbranch_scc0 7                                           // 0000000098C4: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7de4>
	s_add_u32 s2, s2, s14                                      // 0000000098C8: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 0000000098CC: BF093302
	s_mov_b32 s25, 0                                           // 0000000098D0: BE990080
	s_cbranch_scc1 299                                         // 0000000098D4: BF85012B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8284>
	s_lshl_b32 s17, s2, 5                                      // 0000000098D8: 8E118502
	s_load_dwordx8 s[68:75], s[46:47], s17 offset:0x0          // 0000000098DC: C00E5117 22000000
	s_waitcnt lgkmcnt(0)                                       // 0000000098E4: BF8CC07F
	s_add_u32 s28, s38, s72                                    // 0000000098E8: 801C4826
	s_addc_u32 s29, s39, s73                                   // 0000000098EC: 821D4927
	s_add_u32 s80, s40, s72                                    // 0000000098F0: 80504828
	s_addc_u32 s81, s41, s73                                   // 0000000098F4: 82514929
	s_not_b32 s17, s68                                         // 0000000098F8: BE910444
	s_add_u32 s17, s4, s17                                     // 0000000098FC: 80111104
	s_and_b64 s[18:19], s[18:19], exec                         // 000000009900: 86927E12
	s_cselect_b32 s17, s17, s68                                // 000000009904: 85114411
	s_lshl_b32 s18, s17, 5                                     // 000000009908: 8E128511
	s_add_u32 s18, s18, 32                                     // 00000000990C: 8012A012
	s_mul_i32 s18, s18, s5                                     // 000000009910: 92120512
	s_addk_i32 s18, 0x60                                       // 000000009914: B7120060
	s_lshr_b32 s18, s18, 7                                     // 000000009918: 8F128712
	v_readlane_b32 s19, v255, 1                                // 00000000991C: D2890013 000103FF
	s_min_u32 s96, s19, s18                                    // 000000009924: 83E01213
	s_and_b64 s[18:19], s[10:11], exec                         // 000000009928: 86927E0A
	s_cbranch_scc0 84                                          // 00000000992C: BF840054 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7f80>
	s_lshl_b32 s18, s24, 14                                    // 000000009930: 8E128E18
	s_or_b32 s19, s18, s88                                     // 000000009934: 87135812
	s_mov_b32 m0, s19                                          // 000000009938: BEFC0013
	v_readlane_b32 s20, v255, 11                               // 00000000993C: D2890014 000117FF
	buffer_load_dwordx4 v233, s[28:31], 0 offen lds            // 000000009944: E05D1000 800700E9
	s_add_u32 m0, s19, 0x1000                                  // 00000000994C: 807CFF13 00001000
	s_mov_b32 s82, s30                                         // 000000009954: BED2001E
	s_mov_b32 s83, s31                                         // 000000009958: BED3001F
	s_nop 0                                                    // 00000000995C: BF800000
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000009960: E05D1000 140700E9
	s_or_b32 m0, s19, 0x2000                                   // 000000009968: 877CFF13 00002000
	v_readlane_b32 s20, v255, 12                               // 000000009970: D2890014 000119FF
	s_nop 4                                                    // 000000009978: BF800004
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 00000000997C: E05D1000 140700E9
	s_add_u32 m0, s19, 0x3000                                  // 000000009984: 807CFF13 00003000
	s_mul_i32 s19, s8, 0x60                                    // 00000000998C: 9213FF08 00000060
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000009994: E05D1000 130700E9
	s_add_u32 s19, s92, s18                                    // 00000000999C: 8013125C
	s_add_u32 m0, s19, s88                                     // 0000000099A0: 807C5813
	s_nop 0                                                    // 0000000099A4: BF800000
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 0000000099A8: E05D1000 801400EB
	s_add_u32 s19, s92, s18                                    // 0000000099B0: 8013125C
	s_add_u32 s19, s19, s88                                    // 0000000099B4: 80135813
	s_add_u32 m0, s19, 0x1000                                  // 0000000099B8: 807CFF13 00001000
	s_nop 0                                                    // 0000000099C0: BF800000
	buffer_load_dwordx4 v235, s[80:83], s20 offen lds          // 0000000099C4: E05D1000 141400EB
	s_add_u32 s19, s92, s18                                    // 0000000099CC: 8013125C
	s_add_u32 s19, s19, s88                                    // 0000000099D0: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 0000000099D4: 807CFF13 00002000
	v_readlane_b32 s19, v255, 13                               // 0000000099DC: D2890013 00011BFF
	s_nop 4                                                    // 0000000099E4: BF800004
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 0000000099E8: E05D1000 131400EB
	s_add_u32 s18, s92, s18                                    // 0000000099F0: 8012125C
	s_add_u32 s18, s18, s88                                    // 0000000099F4: 80125812
	s_add_u32 m0, s18, 0x3000                                  // 0000000099F8: 807CFF12 00003000
	s_mul_i32 s18, s8, 0x44                                    // 000000009A00: 9212FF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000009A08: E05D1000 121400EB
	s_cmp_lt_u32 s96, 2                                        // 000000009A10: BF0A8260
	s_cbranch_scc1 26                                          // 000000009A14: BF85001A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7f80>
	s_add_u32 s18, s24, 1                                      // 000000009A18: 80128118
	s_and_b32 s18, s18, 3                                      // 000000009A1C: 86128312
	s_lshl_b32 s18, s18, 14                                    // 000000009A20: 8E128E12
	s_or_b32 s18, s18, s88                                     // 000000009A24: 87125812
	s_mov_b32 m0, s18                                          // 000000009A28: BEFC0012
	s_mul_i32 s19, s8, 0xa0                                    // 000000009A2C: 9213FF08 000000A0
	buffer_load_dwordx4 v233, s[28:31], s33 offen lds          // 000000009A34: E05D1000 210700E9
	s_add_u32 m0, s18, 0x1000                                  // 000000009A3C: 807CFF12 00001000
	s_nop 0                                                    // 000000009A44: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000009A48: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 000000009A50: 877CFF12 00002000
	s_mul_i32 s19, s8, 0xc0                                    // 000000009A58: 9213FF08 000000C0
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000009A60: E05D1000 130700E9
	s_add_u32 m0, s18, 0x3000                                  // 000000009A68: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xe0                                    // 000000009A70: 9212FF08 000000E0
	buffer_load_dwordx4 v233, s[28:31], s18 offen lds          // 000000009A78: E05D1000 120700E9
	v_readlane_b32 s18, v255, 7                                // 000000009A80: D2890012 00010FFF
	s_add_u32 s22, s18, s70                                    // 000000009A88: 80164612
	v_readlane_b32 s18, v255, 8                                // 000000009A8C: D2890012 000111FF
	s_addc_u32 s23, s18, s71                                   // 000000009A94: 82174712
	v_readlane_b32 s18, v255, 9                                // 000000009A98: D2890012 000113FF
	s_add_u32 s20, s18, s74                                    // 000000009AA0: 80144A12
	v_readlane_b32 s18, v255, 10                               // 000000009AA4: D2890012 000115FF
	s_addc_u32 s21, s18, s75                                   // 000000009AAC: 82154B12
	v_readlane_b32 s18, v255, 2                                // 000000009AB0: D2890012 000105FF
	s_add_u32 s18, s69, s18                                    // 000000009AB8: 80121245
	s_lshl_b32 s18, s18, 2                                     // 000000009ABC: 8E128212
	s_add_u32 s26, s44, s18                                    // 000000009AC0: 801A122C
	v_readlane_b32 s18, v255, 3                                // 000000009AC4: D2890012 000107FF
	s_addc_u32 s27, s45, 0                                     // 000000009ACC: 821B802D
	v_readlane_b32 s19, v255, 4                                // 000000009AD0: D2890013 000109FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000009AD8: 86927E12
	s_cselect_b32 s18, 0, s26                                  // 000000009ADC: 85121A80
	s_mul_i32 s17, s17, s5                                     // 000000009AE0: 92110511
	v_readlane_b32 s26, v255, 0                                // 000000009AE4: D289001A 000101FF
	s_cselect_b32 s19, 0, s27                                  // 000000009AEC: 85131B80
	s_add_u32 s26, s17, s26                                    // 000000009AF0: 801A1A11
	s_lshl_b32 s17, s26, 5                                     // 000000009AF4: 8E11851A
	s_bfe_u32 s79, s26, 0x190002                               // 000000009AF8: 92CFFF1A 00190002
	v_or_b32_e32 v80, s17, v216                                // 000000009B00: 28A1B011
	v_mul_lo_u32 v80, v80, s7                                  // 000000009B04: D2850050 00000F50
	scratch_load_dword v81, off, off offset:36                 // 000000009B0C: DC504024 517F0000
	s_waitcnt vmcnt(0)                                         // 000000009B14: BF8C0F70
	v_add_u32_e32 v80, v81, v80                                // 000000009B18: 68A0A151
	global_load_dwordx4 v[220:223], v80, s[22:23]              // 000000009B1C: DC5C8000 DC160050
	global_load_dwordx4 v[224:227], v80, s[22:23] offset:16    // 000000009B24: DC5C8010 E0160050
	global_load_dwordx4 v[200:203], v80, s[22:23] offset:64    // 000000009B2C: DC5C8040 C8160050
	global_load_dwordx4 v[204:207], v80, s[22:23] offset:80    // 000000009B34: DC5C8050 CC160050
	s_mov_b32 s83, 0x110000                                    // 000000009B3C: BED300FF 00110000
	s_mov_b32 s22, 1                                           // 000000009B44: BE960081
	s_mov_b32 s43, 0x110000                                    // 000000009B48: BEAB00FF 00110000
	s_branch 144                                               // 000000009B50: BF820090 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8294>
	s_mov_b32 s77, 0                                           // 000000009B54: BECD0080
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009B58: BE940100
	s_mov_b64 s[18:19], s[36:37]                               // 000000009B5C: BE920124
	s_mov_b32 s17, s3                                          // 000000009B60: BE910003
	s_mov_b32 s22, 0                                           // 000000009B64: BE960080
	s_branch 128                                               // 000000009B68: BF820080 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x826c>
	s_mov_b32 s77, 0                                           // 000000009B6C: BECD0080
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009B70: BE940100
	s_mov_b64 s[18:19], s[36:37]                               // 000000009B74: BE920124
	s_mov_b32 s17, s3                                          // 000000009B78: BE910003
	s_mov_b32 s22, 0                                           // 000000009B7C: BE960080
	s_branch 250                                               // 000000009B80: BF8200FA <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x846c>
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009B84: BE940100
	s_mov_b64 s[18:19], s[36:37]                               // 000000009B88: BE920124
	s_mov_b32 s17, s3                                          // 000000009B8C: BE910003
	s_mov_b32 s22, 0                                           // 000000009B90: BE960080
	s_setprio 1                                                // 000000009B94: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[72:79], 0// 000000009B98: D3AD0050 020291C0
	s_nop 11                                                   // 000000009BA0: BF80000B
	v_mul_f32_e32 v80, v154, v80                               // 000000009BA4: 0AA0A19A
	v_add_f32_e32 v84, v250, v80                               // 000000009BA8: 02A8A1FA
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[64:71], 0// 000000009BAC: D3AD0050 020281C0
	s_add_u32 s23, s42, s78                                    // 000000009BB4: 80174E2A
	s_and_b32 s23, s23, 3                                      // 000000009BB8: 86178317
	s_nop 9                                                    // 000000009BBC: BF800009
	v_mul_f32_e32 v80, v155, v80                               // 000000009BC0: 0AA0A19B
	s_lshl_b32 s23, s23, 14                                    // 000000009BC4: 8E178E17
	v_add_f32_e32 v250, v84, v80                               // 000000009BC8: 03F4A154
	s_add_u32 s23, s92, s23                                    // 000000009BCC: 8017175C
	v_add3_u32 v80, s23, v245, v244                            // 000000009BD0: D1FF0050 07D3EA17
	ds_read_b64_tr_b8 v[82:83], v80                            // 000000009BD8: D9C40000 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1024                // 000000009BE0: D9C40400 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2048                // 000000009BE8: D9C40800 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3072                // 000000009BF0: D9C40C00 58000050
	ds_read_b64_tr_b8 v[90:91], v80 offset:256                 // 000000009BF8: D9C40100 5A000050
	ds_read_b64_tr_b8 v[92:93], v80 offset:1280                // 000000009C00: D9C40500 5C000050
	ds_read_b64_tr_b8 v[94:95], v80 offset:2304                // 000000009C08: D9C40900 5E000050
	ds_read_b64_tr_b8 v[96:97], v80 offset:3328                // 000000009C10: D9C40D00 60000050
	ds_read_b64_tr_b8 v[98:99], v80 offset:512                 // 000000009C18: D9C40200 62000050
	ds_read_b64_tr_b8 v[100:101], v80 offset:1536              // 000000009C20: D9C40600 64000050
	ds_read_b64_tr_b8 v[102:103], v80 offset:2560              // 000000009C28: D9C40A00 66000050
	ds_read_b64_tr_b8 v[104:105], v80 offset:3584              // 000000009C30: D9C40E00 68000050
	s_waitcnt lgkmcnt(4)                                       // 000000009C38: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[82:89], v[72:79], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000009C3C: D3AC0000 0003F7F2 D3AE0830 04C29152
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[90:97], v[72:79], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000009C4C: D3AC0000 0003F7F2 D3AE0820 0482915A
	ds_read_b64_tr_b8 v[82:83], v80 offset:768                 // 000000009C5C: D9C40300 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1792                // 000000009C64: D9C40700 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2816                // 000000009C6C: D9C40B00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3840                // 000000009C74: D9C40F00 58000050
	ds_read_b64_tr_b8 v[90:91], v80 offset:4096                // 000000009C7C: D9C41000 5A000050
	ds_read_b64_tr_b8 v[92:93], v80 offset:5120                // 000000009C84: D9C41400 5C000050
	ds_read_b64_tr_b8 v[94:95], v80 offset:6144                // 000000009C8C: D9C41800 5E000050
	ds_read_b64_tr_b8 v[96:97], v80 offset:7168                // 000000009C94: D9C41C00 60000050
	s_waitcnt lgkmcnt(4)                                       // 000000009C9C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[98:105], v[72:79], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000009CA0: D3AC0000 0003F7F2 D3AE0810 04429162
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[82:89], v[72:79], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000009CB0: D3AC0000 0003F7F2 D3AE0800 04029152
	ds_read_b64_tr_b8 v[98:99], v80 offset:4352                // 000000009CC0: D9C41100 62000050
	ds_read_b64_tr_b8 v[100:101], v80 offset:5376              // 000000009CC8: D9C41500 64000050
	ds_read_b64_tr_b8 v[102:103], v80 offset:6400              // 000000009CD0: D9C41900 66000050
	ds_read_b64_tr_b8 v[104:105], v80 offset:7424              // 000000009CD8: D9C41D00 68000050
	ds_read_b64_tr_b8 v[72:73], v80 offset:4608                // 000000009CE0: D9C41200 48000050
	ds_read_b64_tr_b8 v[74:75], v80 offset:5632                // 000000009CE8: D9C41600 4A000050
	ds_read_b64_tr_b8 v[76:77], v80 offset:6656                // 000000009CF0: D9C41A00 4C000050
	ds_read_b64_tr_b8 v[78:79], v80 offset:7680                // 000000009CF8: D9C41E00 4E000050
	s_waitcnt lgkmcnt(4)                                       // 000000009D00: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[90:97], v[64:71], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000009D04: D3AC0000 0003FBF2 D3AE0830 04C2815A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[98:105], v[64:71], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000009D14: D3AC0000 0003FBF2 D3AE0820 04828162
	ds_read_b64_tr_b8 v[82:83], v80 offset:4864                // 000000009D24: D9C41300 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:5888                // 000000009D2C: D9C41700 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:6912                // 000000009D34: D9C41B00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:7936                // 000000009D3C: D9C41F00 58000050
	s_waitcnt lgkmcnt(0)                                       // 000000009D44: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[72:79], v[64:71], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000009D48: D3AC0000 0003FBF2 D3AE0810 04428148
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[82:89], v[64:71], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000009D58: D3AC0000 0003FBF2 D3AE0800 04028152
	s_mov_b32 s77, s25                                         // 000000009D68: BECD0019
	s_waitcnt vmcnt(4)                                         // 000000009D6C: BF8C0F74
	s_barrier                                                  // 000000009D70: BF8A0000
	s_mov_b32 s78, s24                                         // 000000009D74: BECE0018
	s_cmp_eq_u32 s22, 0                                        // 000000009D78: BF068016
	s_cbranch_scc0 128                                         // 000000009D7C: BF840080 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8480>
	s_branch 393                                               // 000000009D80: BF820189 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x88a8>
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009D84: BE940100
	s_mov_b64 s[18:19], s[36:37]                               // 000000009D88: BE920124
	s_mov_b32 s17, s3                                          // 000000009D8C: BE910003
	s_mov_b32 s22, 0                                           // 000000009D90: BE960080
	s_setprio 1                                                // 000000009D94: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[72:79], 0// 000000009D98: D3AD0050 020291C0
	s_nop 11                                                   // 000000009DA0: BF80000B
	v_mul_f32_e32 v80, v154, v80                               // 000000009DA4: 0AA0A19A
	v_add_f32_e32 v84, v250, v80                               // 000000009DA8: 02A8A1FA
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[64:71], 0// 000000009DAC: D3AD0050 020281C0
	s_add_u32 s23, s42, s78                                    // 000000009DB4: 80174E2A
	s_and_b32 s23, s23, 3                                      // 000000009DB8: 86178317
	s_nop 9                                                    // 000000009DBC: BF800009
	v_mul_f32_e32 v80, v155, v80                               // 000000009DC0: 0AA0A19B
	s_lshl_b32 s23, s23, 14                                    // 000000009DC4: 8E178E17
	v_add_f32_e32 v250, v84, v80                               // 000000009DC8: 03F4A154
	s_add_u32 s23, s92, s23                                    // 000000009DCC: 8017175C
	v_add3_u32 v80, s23, v245, v244                            // 000000009DD0: D1FF0050 07D3EA17
	ds_read_b64_tr_b8 v[82:83], v80                            // 000000009DD8: D9C40000 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1024                // 000000009DE0: D9C40400 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2048                // 000000009DE8: D9C40800 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3072                // 000000009DF0: D9C40C00 58000050
	ds_read_b64_tr_b8 v[90:91], v80 offset:256                 // 000000009DF8: D9C40100 5A000050
	ds_read_b64_tr_b8 v[92:93], v80 offset:1280                // 000000009E00: D9C40500 5C000050
	ds_read_b64_tr_b8 v[94:95], v80 offset:2304                // 000000009E08: D9C40900 5E000050
	ds_read_b64_tr_b8 v[96:97], v80 offset:3328                // 000000009E10: D9C40D00 60000050
	ds_read_b64_tr_b8 v[98:99], v80 offset:512                 // 000000009E18: D9C40200 62000050
	ds_read_b64_tr_b8 v[100:101], v80 offset:1536              // 000000009E20: D9C40600 64000050
	ds_read_b64_tr_b8 v[102:103], v80 offset:2560              // 000000009E28: D9C40A00 66000050
	ds_read_b64_tr_b8 v[104:105], v80 offset:3584              // 000000009E30: D9C40E00 68000050
	s_waitcnt lgkmcnt(4)                                       // 000000009E38: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[82:89], v[72:79], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000009E3C: D3AC0000 0003F7F2 D3AE0830 04C29152
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[90:97], v[72:79], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000009E4C: D3AC0000 0003F7F2 D3AE0820 0482915A
	ds_read_b64_tr_b8 v[82:83], v80 offset:768                 // 000000009E5C: D9C40300 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1792                // 000000009E64: D9C40700 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2816                // 000000009E6C: D9C40B00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3840                // 000000009E74: D9C40F00 58000050
	ds_read_b64_tr_b8 v[90:91], v80 offset:4096                // 000000009E7C: D9C41000 5A000050
	ds_read_b64_tr_b8 v[92:93], v80 offset:5120                // 000000009E84: D9C41400 5C000050
	ds_read_b64_tr_b8 v[94:95], v80 offset:6144                // 000000009E8C: D9C41800 5E000050
	ds_read_b64_tr_b8 v[96:97], v80 offset:7168                // 000000009E94: D9C41C00 60000050
	s_waitcnt lgkmcnt(4)                                       // 000000009E9C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[98:105], v[72:79], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000009EA0: D3AC0000 0003F7F2 D3AE0810 04429162
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[82:89], v[72:79], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000009EB0: D3AC0000 0003F7F2 D3AE0800 04029152
	ds_read_b64_tr_b8 v[98:99], v80 offset:4352                // 000000009EC0: D9C41100 62000050
	ds_read_b64_tr_b8 v[100:101], v80 offset:5376              // 000000009EC8: D9C41500 64000050
	ds_read_b64_tr_b8 v[102:103], v80 offset:6400              // 000000009ED0: D9C41900 66000050
	ds_read_b64_tr_b8 v[104:105], v80 offset:7424              // 000000009ED8: D9C41D00 68000050
	ds_read_b64_tr_b8 v[72:73], v80 offset:4608                // 000000009EE0: D9C41200 48000050
	ds_read_b64_tr_b8 v[74:75], v80 offset:5632                // 000000009EE8: D9C41600 4A000050
	ds_read_b64_tr_b8 v[76:77], v80 offset:6656                // 000000009EF0: D9C41A00 4C000050
	ds_read_b64_tr_b8 v[78:79], v80 offset:7680                // 000000009EF8: D9C41E00 4E000050
	s_waitcnt lgkmcnt(4)                                       // 000000009F00: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[90:97], v[64:71], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000009F04: D3AC0000 0003FBF2 D3AE0830 04C2815A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[98:105], v[64:71], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000009F14: D3AC0000 0003FBF2 D3AE0820 04828162
	ds_read_b64_tr_b8 v[82:83], v80 offset:4864                // 000000009F24: D9C41300 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:5888                // 000000009F2C: D9C41700 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:6912                // 000000009F34: D9C41B00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:7936                // 000000009F3C: D9C41F00 58000050
	s_waitcnt lgkmcnt(0)                                       // 000000009F44: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[72:79], v[64:71], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000009F48: D3AC0000 0003FBF2 D3AE0810 04428148
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[82:89], v[64:71], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000009F58: D3AC0000 0003FBF2 D3AE0800 04028152
	s_mov_b32 s77, s25                                         // 000000009F68: BECD0019
	s_waitcnt vmcnt(4)                                         // 000000009F6C: BF8C0F74
	s_barrier                                                  // 000000009F70: BF8A0000
	s_mov_b32 s78, s24                                         // 000000009F74: BECE0018
	s_cmp_eq_u32 s22, 0                                        // 000000009F78: BF068016
	s_cbranch_scc1 266                                         // 000000009F7C: BF85010A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x88a8>
	s_nop 15                                                   // 000000009F80: BF80000F
	s_nop 3                                                    // 000000009F84: BF800003
	v_rcp_f32_e32 v64, v250                                    // 000000009F88: 7E8045FA
	v_log_f32_e32 v65, v250                                    // 000000009F8C: 7E8243FA
	s_nop 1                                                    // 000000009F90: BF800001
	v_mul_f32_e32 v64, v241, v64                               // 000000009F94: 0A8081F1
	v_mul_f32_e32 v48, v48, v64                                // 000000009F98: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 000000009F9C: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 000000009FA0: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 000000009FA4: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 000000009FA8: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 000000009FAC: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 000000009FB0: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 000000009FB4: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 000000009FB8: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 000000009FBC: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 000000009FC0: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 000000009FC4: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 000000009FC8: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 000000009FCC: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 000000009FD0: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 000000009FD4: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 000000009FD8: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 000000009FDC: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 000000009FE0: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 000000009FE4: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 000000009FE8: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 000000009FEC: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 000000009FF0: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 000000009FF4: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 000000009FF8: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 000000009FFC: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 00000000A000: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 00000000A004: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 00000000A008: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 00000000A00C: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 00000000A010: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 00000000A014: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 00000000A018: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 00000000A01C: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 00000000A020: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 00000000A024: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 00000000A028: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 00000000A02C: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 00000000A030: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 00000000A034: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 00000000A038: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 00000000A03C: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 00000000A040: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 00000000A044: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 00000000A048: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 00000000A04C: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 00000000A050: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 00000000A054: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 00000000A058: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 00000000A05C: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 00000000A060: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 00000000A064: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 00000000A068: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 00000000A06C: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 00000000A070: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 00000000A074: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 00000000A078: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 00000000A07C: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 00000000A080: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 00000000A084: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 00000000A088: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 00000000A08C: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000A090: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000A094: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000A098: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000A0A0: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000A0A8: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000A0B0: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000A0B8: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000A0C0: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000A0C8: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000A0D0: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000A0D8: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000A0E0: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000A0E8: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000A0F0: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000A0F8: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000A100: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000A108: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000A110: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000A118: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000A120: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000A128: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000A130: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000A138: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000A140: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000A148: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000A150: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000A158: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000A160: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000A168: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000A170: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000A178: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000A180: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000A188: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000A190: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000A198: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000A19C: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000A1A0: 7E000304
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000A1A4: 7E10B509
	v_mov_b32_e32 v1, v2                                       // 00000000A1A8: 7E020302
	v_mov_b32_e32 v2, v5                                       // 00000000A1AC: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000A1B0: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000A1B4: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000A1B8: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000A1BC: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000A1C0: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000A1C4: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000A1C8: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000A1CC: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000A1D0: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000A1D4: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000A1D8: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000A1DC: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000A1E0: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000A1E4: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000A1E8: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000A1EC: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000A1F0: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000A1F4: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000A1F8: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000A1FC: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000A200: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000A204: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000A208: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000A20C: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000A210: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000A214: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000A218: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000A21C: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000A220: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000A224: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000A228: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000A22C: 7E380320
	v_add_f32_e32 v32, v252, v65                               // 00000000A230: 024083FC
	v_mov_b32_e32 v29, v30                                     // 00000000A234: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000A238: 7E3C0321
	v_add_f32_e32 v32, -4.0, v32                               // 00000000A23C: 024040F7
	v_add_f32_e32 v32, -2.0, v32                               // 00000000A240: 024040F5
	v_mul_f32_e32 v32, 0x3f317218, v32                         // 00000000A244: 0A4040FF 3F317218
	ds_write_b128 v228, v[0:3]                                 // 00000000A24C: D9BE0000 000000E4
	ds_write_b128 v230, v[4:7]                                 // 00000000A254: D9BE0000 000004E6
	ds_write_b128 v229, v[8:11]                                // 00000000A25C: D9BE0000 000008E5
	v_xor_b32_e32 v0, 0x60, v228                               // 00000000A264: 2A01C8FF 00000060
	ds_write_b128 v0, v[12:15]                                 // 00000000A26C: D9BE0000 00000C00
	v_xor_b32_e32 v0, 0x80, v228                               // 00000000A274: 2A01C8FF 00000080
	ds_write_b128 v0, v[16:19]                                 // 00000000A27C: D9BE0000 00001000
	v_xor_b32_e32 v0, 0xa0, v228                               // 00000000A284: 2A01C8FF 000000A0
	ds_write_b128 v0, v[20:23]                                 // 00000000A28C: D9BE0000 00001400
	v_xor_b32_e32 v0, 0xc0, v228                               // 00000000A294: 2A01C8FF 000000C0
	ds_write_b128 v0, v[24:27]                                 // 00000000A29C: D9BE0000 00001800
	v_xor_b32_e32 v0, 0xe0, v228                               // 00000000A2A4: 2A01C8FF 000000E0
	ds_write_b128 v0, v[28:31]                                 // 00000000A2AC: D9BE0000 00001C00
	ds_read_b128 v[8:11], v219                                 // 00000000A2B4: D9FE0000 080000DB
	ds_read_b128 v[12:15], v218 offset:1024                    // 00000000A2BC: D9FE0400 0C0000DA
	ds_read_b128 v[16:19], v237 offset:2048                    // 00000000A2C4: D9FE0800 100000ED
	ds_read_b128 v[20:23], v254 offset:3072                    // 00000000A2CC: D9FE0C00 140000FE
	ds_read_b128 v[24:27], v219 offset:4096                    // 00000000A2D4: D9FE1000 180000DB
	ds_read_b128 v[28:31], v218 offset:5120                    // 00000000A2DC: D9FE1400 1C0000DA
	ds_read_b128 v[34:37], v237 offset:6144                    // 00000000A2E4: D9FE1800 220000ED
	ds_read_b128 v[38:41], v254 offset:7168                    // 00000000A2EC: D9FE1C00 260000FE
	v_add_u32_e32 v0, s3, v217                                 // 00000000A2F4: 6801B203
	v_mul_lo_u32 v0, v0, s9                                    // 00000000A2F8: D2850000 00001300
	scratch_load_dword v1, off, off offset:32                  // 00000000A300: DC504020 017F0000
	s_waitcnt vmcnt(0)                                         // 00000000A308: BF8C0F70
	v_add_u32_e32 v0, v0, v1                                   // 00000000A30C: 68000300
	v_add_u32_e32 v1, s15, v0                                  // 00000000A310: 6802000F
	v_add_u32_e32 v2, s15, v1                                  // 00000000A314: 6804020F
	v_add_u32_e32 v3, s15, v2                                  // 00000000A318: 6806040F
	v_add_u32_e32 v4, s15, v3                                  // 00000000A31C: 6808060F
	v_add_u32_e32 v5, s15, v4                                  // 00000000A320: 680A080F
	v_add_u32_e32 v6, s15, v5                                  // 00000000A324: 680C0A0F
	v_add_u32_e32 v7, s15, v6                                  // 00000000A328: 680E0C0F
	s_waitcnt lgkmcnt(7)                                       // 00000000A32C: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[0:1]                   // 00000000A330: DC7C8000 00000800
	s_waitcnt lgkmcnt(6)                                       // 00000000A338: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[0:1]                  // 00000000A33C: DC7C8000 00000C01
	s_waitcnt lgkmcnt(5)                                       // 00000000A344: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[0:1]                  // 00000000A348: DC7C8000 00001002
	s_waitcnt lgkmcnt(4)                                       // 00000000A350: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[0:1]                  // 00000000A354: DC7C8000 00001403
	s_waitcnt lgkmcnt(3)                                       // 00000000A35C: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[0:1]                  // 00000000A360: DC7C8000 00001804
	s_waitcnt lgkmcnt(2)                                       // 00000000A368: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[0:1]                  // 00000000A36C: DC7C8000 00001C05
	s_waitcnt lgkmcnt(1)                                       // 00000000A374: BF8CC17F
	global_store_dwordx4 v6, v[34:37], s[0:1]                  // 00000000A378: DC7C8000 00002206
	s_waitcnt lgkmcnt(0)                                       // 00000000A380: BF8CC07F
	global_store_dwordx4 v7, v[38:41], s[0:1]                  // 00000000A384: DC7C8000 00002607
	v_add_u32_e32 v0, s3, v216                                 // 00000000A38C: 6801B003
	v_lshlrev_b32_e32 v0, 2, v0                                // 00000000A390: 24000082
	s_cmp_eq_u64 s[36:37], 0                                   // 00000000A394: BF128024
	s_mov_b64 s[0:1], s[20:21]                                 // 00000000A398: BE800114
	s_mov_b32 s3, s17                                          // 00000000A39C: BE830011
	s_cbranch_scc0 58204                                       // 00000000A3A0: BF84E35C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1614>
	s_branch 57160                                             // 00000000A3A4: BF82DF48 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5c8>
	s_nop 15                                                   // 00000000A3A8: BF80000F
	s_nop 3                                                    // 00000000A3AC: BF800003
	v_rcp_f32_e32 v64, v250                                    // 00000000A3B0: 7E8045FA
	v_log_f32_e32 v65, v250                                    // 00000000A3B4: 7E8243FA
	s_nop 1                                                    // 00000000A3B8: BF800001
	v_mul_f32_e32 v64, v241, v64                               // 00000000A3BC: 0A8081F1
	v_mul_f32_e32 v48, v48, v64                                // 00000000A3C0: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 00000000A3C4: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 00000000A3C8: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 00000000A3CC: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 00000000A3D0: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 00000000A3D4: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 00000000A3D8: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 00000000A3DC: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 00000000A3E0: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 00000000A3E4: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 00000000A3E8: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 00000000A3EC: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 00000000A3F0: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 00000000A3F4: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 00000000A3F8: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 00000000A3FC: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 00000000A400: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 00000000A404: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 00000000A408: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 00000000A40C: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 00000000A410: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 00000000A414: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 00000000A418: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 00000000A41C: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 00000000A420: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 00000000A424: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 00000000A428: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 00000000A42C: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 00000000A430: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 00000000A434: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 00000000A438: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 00000000A43C: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 00000000A440: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 00000000A444: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 00000000A448: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 00000000A44C: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 00000000A450: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 00000000A454: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 00000000A458: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 00000000A45C: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 00000000A460: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 00000000A464: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 00000000A468: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 00000000A46C: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 00000000A470: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 00000000A474: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 00000000A478: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 00000000A47C: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 00000000A480: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 00000000A484: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 00000000A488: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 00000000A48C: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 00000000A490: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 00000000A494: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 00000000A498: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 00000000A49C: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 00000000A4A0: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 00000000A4A4: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 00000000A4A8: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 00000000A4AC: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 00000000A4B0: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 00000000A4B4: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000A4B8: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000A4BC: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000A4C0: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000A4C8: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000A4D0: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000A4D8: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000A4E0: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000A4E8: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000A4F0: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000A4F8: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000A500: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000A508: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000A510: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000A518: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000A520: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000A528: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000A530: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000A538: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000A540: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000A548: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000A550: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000A558: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000A560: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000A568: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000A570: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000A578: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000A580: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000A588: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000A590: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000A598: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000A5A0: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000A5A8: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000A5B0: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000A5B8: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000A5C0: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000A5C4: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000A5C8: 7E000304
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000A5CC: 7E10B509
	v_mov_b32_e32 v1, v2                                       // 00000000A5D0: 7E020302
	v_mov_b32_e32 v2, v5                                       // 00000000A5D4: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000A5D8: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000A5DC: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000A5E0: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000A5E4: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000A5E8: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000A5EC: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000A5F0: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000A5F4: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000A5F8: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000A5FC: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000A600: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000A604: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000A608: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000A60C: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000A610: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000A614: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000A618: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000A61C: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000A620: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000A624: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000A628: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000A62C: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000A630: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000A634: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000A638: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000A63C: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000A640: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000A644: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000A648: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000A64C: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000A650: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000A654: 7E380320
	v_add_f32_e32 v32, v252, v65                               // 00000000A658: 024083FC
	v_mov_b32_e32 v29, v30                                     // 00000000A65C: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000A660: 7E3C0321
	v_add_f32_e32 v32, -4.0, v32                               // 00000000A664: 024040F7
	v_add_f32_e32 v32, -2.0, v32                               // 00000000A668: 024040F5
	v_mul_f32_e32 v32, 0x3f317218, v32                         // 00000000A66C: 0A4040FF 3F317218
	ds_write_b128 v228, v[0:3]                                 // 00000000A674: D9BE0000 000000E4
	ds_write_b128 v230, v[4:7]                                 // 00000000A67C: D9BE0000 000004E6
	ds_write_b128 v229, v[8:11]                                // 00000000A684: D9BE0000 000008E5
	scratch_load_dword v0, off, off offset:56                  // 00000000A68C: DC504038 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A694: BF8C0F70
	ds_write_b128 v0, v[12:15]                                 // 00000000A698: D9BE0000 00000C00
	scratch_load_dword v0, off, off offset:52                  // 00000000A6A0: DC504034 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A6A8: BF8C0F70
	ds_write_b128 v0, v[16:19]                                 // 00000000A6AC: D9BE0000 00001000
	scratch_load_dword v0, off, off offset:48                  // 00000000A6B4: DC504030 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A6BC: BF8C0F70
	ds_write_b128 v0, v[20:23]                                 // 00000000A6C0: D9BE0000 00001400
	scratch_load_dword v0, off, off offset:44                  // 00000000A6C8: DC50402C 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A6D0: BF8C0F70
	ds_write_b128 v0, v[24:27]                                 // 00000000A6D4: D9BE0000 00001800
	scratch_load_dword v0, off, off offset:40                  // 00000000A6DC: DC504028 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A6E4: BF8C0F70
	ds_write_b128 v0, v[28:31]                                 // 00000000A6E8: D9BE0000 00001C00
	ds_read_b128 v[8:11], v219                                 // 00000000A6F0: D9FE0000 080000DB
	ds_read_b128 v[12:15], v218 offset:1024                    // 00000000A6F8: D9FE0400 0C0000DA
	ds_read_b128 v[16:19], v237 offset:2048                    // 00000000A700: D9FE0800 100000ED
	ds_read_b128 v[20:23], v254 offset:3072                    // 00000000A708: D9FE0C00 140000FE
	ds_read_b128 v[24:27], v219 offset:4096                    // 00000000A710: D9FE1000 180000DB
	ds_read_b128 v[28:31], v218 offset:5120                    // 00000000A718: D9FE1400 1C0000DA
	ds_read_b128 v[34:37], v237 offset:6144                    // 00000000A720: D9FE1800 220000ED
	ds_read_b128 v[38:41], v254 offset:7168                    // 00000000A728: D9FE1C00 260000FE
	v_add_u32_e32 v0, s3, v217                                 // 00000000A730: 6801B203
	v_mul_lo_u32 v0, v0, s9                                    // 00000000A734: D2850000 00001300
	scratch_load_dword v1, off, off offset:32                  // 00000000A73C: DC504020 017F0000
	s_waitcnt vmcnt(0)                                         // 00000000A744: BF8C0F70
	v_add_u32_e32 v0, v0, v1                                   // 00000000A748: 68000300
	v_add_u32_e32 v1, s15, v0                                  // 00000000A74C: 6802000F
	v_add_u32_e32 v2, s15, v1                                  // 00000000A750: 6804020F
	v_add_u32_e32 v3, s15, v2                                  // 00000000A754: 6806040F
	v_add_u32_e32 v4, s15, v3                                  // 00000000A758: 6808060F
	v_add_u32_e32 v5, s15, v4                                  // 00000000A75C: 680A080F
	v_add_u32_e32 v6, s15, v5                                  // 00000000A760: 680C0A0F
	v_add_u32_e32 v7, s15, v6                                  // 00000000A764: 680E0C0F
	s_waitcnt lgkmcnt(7)                                       // 00000000A768: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[0:1]                   // 00000000A76C: DC7C8000 00000800
	s_waitcnt lgkmcnt(6)                                       // 00000000A774: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[0:1]                  // 00000000A778: DC7C8000 00000C01
	s_waitcnt lgkmcnt(5)                                       // 00000000A780: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[0:1]                  // 00000000A784: DC7C8000 00001002
	s_waitcnt lgkmcnt(4)                                       // 00000000A78C: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[0:1]                  // 00000000A790: DC7C8000 00001403
	s_waitcnt lgkmcnt(3)                                       // 00000000A798: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[0:1]                  // 00000000A79C: DC7C8000 00001804
	s_waitcnt lgkmcnt(2)                                       // 00000000A7A4: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[0:1]                  // 00000000A7A8: DC7C8000 00001C05
	s_waitcnt lgkmcnt(1)                                       // 00000000A7B0: BF8CC17F
	global_store_dwordx4 v6, v[34:37], s[0:1]                  // 00000000A7B4: DC7C8000 00002206
	s_waitcnt lgkmcnt(0)                                       // 00000000A7BC: BF8CC07F
	global_store_dwordx4 v7, v[38:41], s[0:1]                  // 00000000A7C0: DC7C8000 00002607
	v_add_u32_e32 v0, s3, v216                                 // 00000000A7C8: 6801B003
	v_lshlrev_b32_e32 v0, 2, v0                                // 00000000A7CC: 24000082
	s_cmp_eq_u64 s[36:37], 0                                   // 00000000A7D0: BF128024
	s_cbranch_scc1 2                                           // 00000000A7D4: BF850002 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8ce0>
	global_store_dword v0, v32, s[36:37]                       // 00000000A7D8: DC708000 00242000
	s_and_b64 s[0:1], s[10:11], exec                           // 00000000A7E0: 86807E0A
	s_cbranch_scc0 1                                           // 00000000A7E4: BF840001 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8cec>
	s_barrier                                                  // 00000000A7E8: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000A7EC: BF8C0F70
	s_endpgm                                                   // 00000000A7F0: BF810000
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
	v_mad_u32_u24 v164, s6, v7, v8                             // 00000000A900: D1C300A4 04220E06
	v_or_b32_e32 v7, 0x200, v0                                 // 00000000A908: 280E00FF 00000200
	v_lshrrev_b32_e32 v7, 4, v7                                // 00000000A910: 200E0E84
	v_sub_u32_e32 v4, v4, v7                                   // 00000000A914: 6A080F04
	v_and_b32_e32 v4, 7, v4                                    // 00000000A918: 26080887
	v_cmp_gt_u32_e32 vcc, 6, v4                                // 00000000A91C: 7D980886
	s_nop 1                                                    // 00000000A920: BF800001
	v_cndmask_b32_e32 v4, 0, v4, vcc                           // 00000000A924: 00080880
	v_lshlrev_b32_e32 v4, 5, v4                                // 00000000A928: 24080885
	v_or_b32_e32 v4, v4, v6                                    // 00000000A92C: 28080D04
	v_mad_u32_u24 v165, s6, v7, v4                             // 00000000A930: D1C300A5 04120E06
	v_bfe_u32 v4, v0, 7, 1                                     // 00000000A938: D1C80004 02050F00
	v_lshrrev_b32_e32 v5, 8, v0                                // 00000000A940: 200A0088
	v_lshlrev_b32_e32 v10, 5, v4                               // 00000000A944: 24140885
	v_bfe_u32 v6, v0, 6, 1                                     // 00000000A948: D1C80006 02050D00
	v_lshl_or_b32 v12, v5, 2, v10                              // 00000000A950: D200000C 04290505
	v_bfe_u32 v7, v0, 2, 1                                     // 00000000A958: D1C80007 02050500
	v_lshl_or_b32 v13, v6, 4, v12                              // 00000000A960: D200000D 04310906
	v_and_b32_e32 v8, 3, v0                                    // 00000000A968: 26100083
	v_bfe_u32 v9, v0, 3, 3                                     // 00000000A96C: D1C80009 020D0700
	v_lshl_or_b32 v14, v7, 3, v13                              // 00000000A974: D200000E 04350707
	v_lshlrev_b32_e32 v11, 4, v9                               // 00000000A97C: 24161284
	v_or_b32_e32 v15, v14, v8                                  // 00000000A980: 281E110E
	v_mad_u32_u24 v166, s7, v15, v11                           // 00000000A984: D1C300A6 042E1E07
	s_cmp_ge_u32 s2, s49                                       // 00000000A98C: BF093102
	s_cbranch_scc1 5373                                        // 00000000A990: BF8514FD <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5588>
	s_lshr_b32 s22, s3, 8                                      // 00000000A994: 8F168803
	s_cmp_eq_u32 s4, 0                                         // 00000000A998: BF068004
	s_cselect_b64 s[0:1], -1, 0                                // 00000000A99C: 858080C1
	s_and_b64 s[16:17], s[0:1], exec                           // 00000000A9A0: 86907E00
	s_cselect_b32 s23, 0, s22                                  // 00000000A9A4: 85171680
	s_lshl_b32 s4, s2, 5                                       // 00000000A9A8: 8E048502
	s_load_dwordx8 s[52:59], s[46:47], s4 offset:0x0           // 00000000A9AC: C00E4D17 08000000
	s_cmp_eq_u64 s[44:45], 0                                   // 00000000A9B4: BF12802C
	s_cselect_b64 s[34:35], -1, 0                              // 00000000A9B8: 85A280C1
	s_mov_b64 s[18:19], 0                                      // 00000000A9BC: BE920180
	s_mul_i32 s33, s11, s23                                    // 00000000A9C0: 9221170B
	s_and_b64 vcc, exec, s[34:35]                              // 00000000A9C4: 86EA227E
	s_cbranch_vccnz 5                                          // 00000000A9C8: BF870005 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1e0>
	s_waitcnt lgkmcnt(0)                                       // 00000000A9CC: BF8CC07F
	s_add_u32 s4, s33, s53                                     // 00000000A9D0: 80043521
	s_lshl_b32 s4, s4, 2                                       // 00000000A9D4: 8E048204
	s_add_u32 s18, s44, s4                                     // 00000000A9D8: 8012042C
	s_addc_u32 s19, s45, 0                                     // 00000000A9DC: 8213802D
	s_mov_b32 s17, 0                                           // 00000000A9E0: BE910080
	s_waitcnt lgkmcnt(0)                                       // 00000000A9E4: BF8CC07F
	s_mov_b32 s16, s58                                         // 00000000A9E8: BE90003A
	s_lshl_b64 s[16:17], s[16:17], 7                           // 00000000A9EC: 8E908710
	s_mul_i32 s4, s9, s23                                      // 00000000A9F0: 92041709
	s_add_u32 s9, s36, s54                                     // 00000000A9F4: 80093624
	s_addc_u32 s11, s37, s55                                   // 00000000A9F8: 820B3725
	s_add_u32 s20, s9, s4                                      // 00000000A9FC: 80140409
	s_addc_u32 s21, s11, 0                                     // 00000000AA00: 8215800B
	s_add_u32 s60, s38, s56                                    // 00000000AA04: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000AA08: 823D3927
	s_add_u32 s64, s40, s16                                    // 00000000AA0C: 80401028
	s_addc_u32 s65, s41, s17                                   // 00000000AA10: 82411129
	s_lshr_b32 s11, s3, 6                                      // 00000000AA14: 8F0B8603
	s_lshl_b32 s9, s6, 6                                       // 00000000AA18: 8E098606
	s_bfe_u32 s17, s3, 0x20006                                 // 00000000AA1C: 9291FF03 00020006
	s_lshl_b32 s72, s11, 10                                    // 00000000AA24: 8E488A0B
	s_and_b64 s[0:1], s[0:1], exec                             // 00000000AA28: 86807E00
	s_cselect_b32 s73, s11, s17                                // 00000000AA2C: 8549110B
	s_not_b32 s0, s52                                          // 00000000AA30: BE800434
	s_add_u32 s0, s50, s0                                      // 00000000AA34: 80000032
	s_mul_i32 s1, s51, s0                                      // 00000000AA38: 92010033
	s_lshl_b32 s0, s0, 5                                       // 00000000AA3C: 8E008500
	s_add_u32 s0, s0, 32                                       // 00000000AA40: 8000A000
	s_mul_i32 s0, s0, s51                                      // 00000000AA44: 92003300
	s_add_u32 s1, s1, s73                                      // 00000000AA48: 80014901
	s_add_u32 s0, s0, 32                                       // 00000000AA4C: 8000A000
	s_mul_i32 s62, s6, s12                                     // 00000000AA50: 923E0C06
	s_mul_i32 s66, s7, s12                                     // 00000000AA54: 92420C07
	v_and_b32_e32 v146, 31, v0                                 // 00000000AA58: 2724009F
	s_lshr_b32 s12, s12, 6                                     // 00000000AA5C: 8F0C860C
	s_lshl_b32 s3, s1, 5                                       // 00000000AA60: 8E038501
	s_lshr_b32 s0, s0, 6                                       // 00000000AA64: 8F008600
	s_mov_b32 s63, 0x110000                                    // 00000000AA68: BEBF00FF 00110000
	v_or_b32_e32 v4, s3, v146                                  // 00000000AA70: 28092403
	s_min_u32 s98, s12, s0                                     // 00000000AA74: 83E2000C
	s_mov_b32 s67, s63                                         // 00000000AA78: BEC3003F
	v_mul_lo_u32 v4, s5, v4                                    // 00000000AA7C: D2850004 00020805
	v_lshlrev_b32_e32 v167, 5, v1                              // 00000000AA84: 254E0285
	v_add_u32_e32 v4, v167, v4                                 // 00000000AA88: 680809A7
	global_load_dwordx4 v[182:185], v4, s[20:21]               // 00000000AA8C: DC5C8000 B6140004
	global_load_dwordx4 v[186:189], v4, s[20:21] offset:16     // 00000000AA94: DC5C8010 BA140004
	global_load_dwordx4 v[190:193], v4, s[20:21] offset:64     // 00000000AA9C: DC5C8040 BE140004
	global_load_dwordx4 v[194:197], v4, s[20:21] offset:80     // 00000000AAA4: DC5C8050 C2140004
	global_load_dwordx4 v[198:201], v4, s[20:21] offset:128    // 00000000AAAC: DC5C8080 C6140004
	global_load_dwordx4 v[202:205], v4, s[20:21] offset:144    // 00000000AAB4: DC5C8090 CA140004
	s_mov_b32 m0, s72                                          // 00000000AABC: BEFC0048
	s_or_b32 s0, s72, 0x10000                                  // 00000000AAC0: 8700FF48 00010000
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000AAC8: E05D1000 800F00A4
	s_or_b32 m0, s72, 0x2000                                   // 00000000AAD0: 877CFF48 00002000
	s_cmp_lt_u32 s98, 2                                        // 00000000AAD8: BF0A8262
	buffer_load_dwordx4 v165, s[60:63], 0 offen lds            // 00000000AADC: E05D1000 800F00A5
	s_mov_b32 m0, s0                                           // 00000000AAE4: BEFC0000
	s_nop 0                                                    // 00000000AAE8: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000AAEC: E05D1000 801000A6
	s_cbranch_scc1 10                                          // 00000000AAF4: BF85000A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x320>
	s_add_u32 m0, s0, 0xffff4000                               // 00000000AAF8: 807CFF00 FFFF4000
	s_nop 0                                                    // 00000000AB00: BF800000
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000AB04: E05D1000 090F00A4
	s_add_u32 m0, s0, 0xffff6000                               // 00000000AB0C: 807CFF00 FFFF6000
	s_nop 0                                                    // 00000000AB14: BF800000
	buffer_load_dwordx4 v165, s[60:63], s9 offen lds           // 00000000AB18: E05D1000 090F00A5
	v_lshrrev_b32_e32 v4, 2, v0                                // 00000000AB20: 20080082
	v_lshrrev_b32_e32 v5, 3, v0                                // 00000000AB24: 200A0083
	s_waitcnt vmcnt(0)                                         // 00000000AB28: BF8C0F70
	s_barrier                                                  // 00000000AB2C: BF8A0000
	s_cmp_eq_u32 s22, 0                                        // 00000000AB30: BF068016
	s_cbranch_scc1 1                                           // 00000000AB34: BF850001 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x33c>
	s_barrier                                                  // 00000000AB38: BF8A0000
	s_mov_b32 s16, 0                                           // 00000000AB3C: BE900080
	s_mov_b32 s0, s59                                          // 00000000AB40: BE80003B
	s_mov_b32 s1, s16                                          // 00000000AB44: BE810010
	s_lshr_b32 s77, s3, 6                                      // 00000000AB48: 8F4D8603
	s_lshl_b64 s[0:1], s[0:1], 8                               // 00000000AB4C: 8E808800
	s_add_u32 s0, s42, s0                                      // 00000000AB50: 8000002A
	s_mul_i32 s20, s10, s23                                    // 00000000AB54: 9214170A
	s_addc_u32 s1, s43, s1                                     // 00000000AB58: 8201012B
	s_add_u32 s10, s0, s20                                     // 00000000AB5C: 800A1400
	v_mul_f32_e32 v142, s48, v3                                // 00000000AB60: 0B1C0630
	v_mov_b32_e32 v3, s14                                      // 00000000AB64: 7E06020E
	v_lshrrev_b32_e32 v147, 4, v2                              // 00000000AB68: 21260484
	v_and_b32_e32 v6, 32, v0                                   // 00000000AB6C: 260C00A0
	s_addc_u32 s11, s1, 0                                      // 00000000AB70: 820B8001
	s_lshl_b32 s99, s7, 6                                      // 00000000AB74: 8E638607
	s_lshl_b32 s85, s6, 8                                      // 00000000AB78: 8E558806
	s_lshl_b32 s86, s7, 7                                      // 00000000AB7C: 8E568707
	v_and_b32_e32 v5, 4, v5                                    // 00000000AB80: 260A0A84
	v_lshlrev_b32_e32 v7, 3, v0                                // 00000000AB84: 240E0083
	v_and_b32_e32 v0, 15, v0                                   // 00000000AB88: 2600008F
	v_mul_f32_e32 v168, s15, v3                                // 00000000AB8C: 0B50060F
	v_xor_b32_e32 v3, v147, v4                                 // 00000000AB90: 2A060993
	v_and_or_b32 v4, v147, 1, v6                               // 00000000AB94: D2010004 04190393
	s_cmp_eq_u32 s22, 0                                        // 00000000AB9C: BF068016
	v_sub_u32_e32 v171, v146, v5                               // 00000000ABA0: 6B560B92
	v_xor_b32_e32 v5, v1, v0                                   // 00000000ABA4: 2A0A0101
	v_xor_b32_e32 v6, v147, v0                                 // 00000000ABA8: 2A0C0193
	v_lshlrev_b32_e32 v148, 4, v0                              // 00000000ABAC: 25280084
	v_and_b32_e32 v0, 1, v3                                    // 00000000ABB0: 26000681
	v_lshlrev_b32_e32 v173, 7, v4                              // 00000000ABB4: 255A0887
	s_cselect_b64 s[0:1], -1, 0                                // 00000000ABB8: 858080C1
	s_lshl_b32 s15, s17, 13                                    // 00000000ABBC: 8E0F8D11
	s_lshl_b32 s17, s6, 7                                      // 00000000ABC0: 8E118706
	v_mov_b32_e32 v2, 0x38383838                               // 00000000ABC4: 7E0402FF 38383838
	v_and_b32_e32 v172, 0x78, v7                               // 00000000ABCC: 27580EFF 00000078
	v_cmp_eq_u32_e32 vcc, 0, v0                                // 00000000ABD4: 7D940080
	v_or_b32_e32 v0, 0x16000, v173                             // 00000000ABD8: 28015AFF 00016000
	s_add_u32 s36, s36, s4                                     // 00000000ABE0: 80240424
	s_mov_b32 s14, 0x18000                                     // 00000000ABE4: BE8E00FF 00018000
	v_lshlrev_b32_e32 v3, 4, v5                                // 00000000ABEC: 24060A84
	v_lshlrev_b32_e32 v4, 4, v6                                // 00000000ABF0: 24080C84
	v_cndmask_b32_e32 v126, 0, v2, vcc                         // 00000000ABF4: 00FC0480
	v_add_u32_e32 v177, v0, v172                               // 00000000ABF8: 69635900
	v_lshl_or_b32 v0, v146, 8, s15                             // 00000000ABFC: D2000000 003D1192
	v_lshl_or_b32 v2, v147, 8, s15                             // 00000000AC04: D2000002 003D1193
	s_addc_u32 s37, s37, 0                                     // 00000000AC0C: 82258025
	v_or_b32_e32 v5, 0x10000, v173                             // 00000000AC10: 280B5AFF 00010000
	v_or_b32_e32 v6, 0x12000, v173                             // 00000000AC18: 280D5AFF 00012000
	v_or_b32_e32 v7, 0x14000, v173                             // 00000000AC20: 280F5AFF 00014000
	v_or3_b32 v158, v0, v3, s14                                // 00000000AC28: D202009E 003A0700
	v_or3_b32 v149, v2, v4, s14                                // 00000000AC30: D2020095 003A0902
	s_add_u32 s42, s42, s20                                    // 00000000AC38: 802A142A
	s_mov_b32 s81, 0x16000                                     // 00000000AC3C: BED100FF 00016000
	s_mov_b32 s82, 0x10000                                     // 00000000AC44: BED200FF 00010000
	s_mov_b32 s83, 0x12000                                     // 00000000AC4C: BED300FF 00012000
	s_mov_b32 s88, 0x14000                                     // 00000000AC54: BED800FF 00014000
	s_mov_b32 s89, 0xc2fe0000                                  // 00000000AC5C: BED900FF C2FE0000
	v_mov_b32_e32 v169, 0xff800000                             // 00000000AC64: 7F5202FF FF800000
	s_movk_i32 s90, 0x2000                                     // 00000000AC6C: B05A2000
	v_mov_b32_e32 v170, 0x7f                                   // 00000000AC70: 7F5402FF 0000007F
	s_mov_b32 s91, 0x3e000000                                  // 00000000AC78: BEDB00FF 3E000000
	s_movk_i32 s92, 0x4000                                     // 00000000AC80: B05C4000
	s_movk_i32 s93, 0x6000                                     // 00000000AC84: B05D6000
	s_mov_b32 s94, 0x8000                                      // 00000000AC88: BEDE00FF 00008000
	s_mov_b32 s95, 0xa000                                      // 00000000AC90: BEDF00FF 0000A000
	s_mov_b32 s96, 0xc000                                      // 00000000AC98: BEE000FF 0000C000
	s_mov_b32 s97, 0xe000                                      // 00000000ACA0: BEE100FF 0000E000
	v_mov_b32_e32 v144, v142                                   // 00000000ACA8: 7F20038E
	v_mov_b32_e32 v145, v142                                   // 00000000ACAC: 7F22038E
	v_add_u32_e32 v174, v5, v172                               // 00000000ACB0: 695D5905
	v_add_u32_e32 v175, v6, v172                               // 00000000ACB4: 695F5906
	v_add_u32_e32 v176, v7, v172                               // 00000000ACB8: 69615907
	v_mov_b32_e32 v127, v126                                   // 00000000ACBC: 7EFE037E
	v_mov_b32_e32 v128, v126                                   // 00000000ACC0: 7F00037E
	v_mov_b32_e32 v129, v126                                   // 00000000ACC4: 7F02037E
	v_mov_b32_e32 v130, v126                                   // 00000000ACC8: 7F04037E
	v_mov_b32_e32 v131, v126                                   // 00000000ACCC: 7F06037E
	v_mov_b32_e32 v132, v126                                   // 00000000ACD0: 7F08037E
	v_mov_b32_e32 v133, v126                                   // 00000000ACD4: 7F0A037E
	v_xor_b32_e32 v160, 32, v158                               // 00000000ACD8: 2B413CA0
	v_xor_b32_e32 v159, 64, v158                               // 00000000ACDC: 2B3F3CC0
	v_xor_b32_e32 v157, 0x60, v158                             // 00000000ACE0: 2B3B3CFF 00000060
	v_xor_b32_e32 v156, 0x80, v158                             // 00000000ACE8: 2B393CFF 00000080
	v_xor_b32_e32 v155, 0xa0, v158                             // 00000000ACF0: 2B373CFF 000000A0
	v_xor_b32_e32 v154, 0xc0, v158                             // 00000000ACF8: 2B353CFF 000000C0
	v_xor_b32_e32 v153, 0xe0, v158                             // 00000000AD00: 2B333CFF 000000E0
	v_xor_b32_e32 v152, 64, v149                               // 00000000AD08: 2B312AC0
	v_xor_b32_e32 v151, 0x80, v149                             // 00000000AD0C: 2B2F2AFF 00000080
	v_xor_b32_e32 v150, 0xc0, v149                             // 00000000AD14: 2B2D2AFF 000000C0
	s_addc_u32 s43, s43, 0                                     // 00000000AD1C: 822B802B
	s_lshl_b32 s48, s6, 4                                      // 00000000AD20: 8E308406
	s_lshl_b32 s74, s6, 5                                      // 00000000AD24: 8E4A8506
	s_lshl_b32 s75, s7, 2                                      // 00000000AD28: 8E4B8207
	s_lshl_b32 s4, s8, 2                                       // 00000000AD2C: 8E048208
	v_writelane_b32 v230, s17, 0                               // 00000000AD30: D28A00E6 00010011
	s_mov_b32 s80, 0                                           // 00000000AD38: BED00080
	s_mov_b32 s76, 0                                           // 00000000AD3C: BECC0080
	s_mov_b32 s67, s63                                         // 00000000AD40: BEC3003F
	s_mov_b32 s79, s63                                         // 00000000AD44: BECF003F
	s_and_b32 s17, s80, 3                                      // 00000000AD48: 86118350
	s_lshl_b32 s20, s17, 14                                    // 00000000AD4C: 8E148E11
	v_or_b32_e32 v0, s20, v161                                 // 00000000AD50: 28014214
	s_waitcnt vmcnt(8)                                         // 00000000AD54: BF8C0F78
	v_or_b32_e32 v1, s20, v162                                 // 00000000AD58: 28034414
	ds_read_b128 v[2:5], v0                                    // 00000000AD5C: D9FE0000 02000000
	ds_read_b128 v[6:9], v0 offset:16                          // 00000000AD64: D9FE0010 06000000
	ds_read_b128 v[50:53], v0 offset:8192                      // 00000000AD6C: D9FE2000 32000000
	ds_read_b128 v[54:57], v0 offset:8208                      // 00000000AD74: D9FE2010 36000000
	ds_read_b128 v[42:45], v1                                  // 00000000AD7C: D9FE0000 2A000001
	ds_read_b128 v[46:49], v1 offset:16                        // 00000000AD84: D9FE0010 2E000001
	ds_read_b128 v[34:37], v1 offset:8192                      // 00000000AD8C: D9FE2000 22000001
	ds_read_b128 v[38:41], v1 offset:8208                      // 00000000AD94: D9FE2010 26000001
	s_mov_b64 s[14:15], s[18:19]                               // 00000000AD9C: BE8E0112
	s_cmp_eq_u32 s77, 0                                        // 00000000ADA0: BF06804D
	s_cbranch_scc1 108                                         // 00000000ADA4: BF85006C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x758>
	s_setprio 1                                                // 00000000ADA8: BF8F0001
	s_waitcnt lgkmcnt(0)                                       // 00000000ADAC: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[2:9], v[182:189], 0 // 00000000ADB0: D3AE0010 02036D02
	v_add_u32_e32 v32, s20, v163                               // 00000000ADB8: 68414614
	ds_read_b128 v[58:61], v32                                 // 00000000ADBC: D9FE0000 3A000020
	ds_read_b128 v[62:65], v32 offset:16                       // 00000000ADC4: D9FE0010 3E000020
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[182:189], 0// 00000000ADCC: D3AE0000 02036D32
	ds_read_b128 v[50:53], v32 offset:8192                     // 00000000ADD4: D9FE2000 32000020
	ds_read_b128 v[54:57], v32 offset:8208                     // 00000000ADDC: D9FE2010 36000020
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[42:49], v[190:197], v[16:31]// 00000000ADE4: D3AE0010 04437D2A
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[34:41], v[190:197], v[0:15]// 00000000ADEC: D3AE0000 04037D22
	s_waitcnt lgkmcnt(0)                                       // 00000000ADF4: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[58:65], v[198:205], v[16:31]// 00000000ADF8: D3AE0010 04438D3A
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[198:205], v[0:15]// 00000000AE00: D3AE0000 04038D32
	s_nop 3                                                    // 00000000AE08: BF800003
	v_max_f32_e32 v32, v16, v17                                // 00000000AE0C: 16402310
	v_max3_f32 v32, v18, v19, v32                              // 00000000AE10: D1D30020 04822712
	v_max3_f32 v32, v20, v21, v32                              // 00000000AE18: D1D30020 04822B14
	v_max3_f32 v32, v22, v23, v32                              // 00000000AE20: D1D30020 04822F16
	v_max3_f32 v32, v24, v25, v32                              // 00000000AE28: D1D30020 04823318
	v_max3_f32 v32, v26, v27, v32                              // 00000000AE30: D1D30020 0482371A
	v_max3_f32 v32, v28, v29, v32                              // 00000000AE38: D1D30020 04823B1C
	v_max3_f32 v32, v30, v31, v32                              // 00000000AE40: D1D30020 04823F1E
	s_nop 7                                                    // 00000000AE48: BF800007
	v_max_f32_e32 v33, v0, v1                                  // 00000000AE4C: 16420300
	v_max3_f32 v33, v2, v3, v33                                // 00000000AE50: D1D30021 04860702
	v_max3_f32 v33, v4, v5, v33                                // 00000000AE58: D1D30021 04860B04
	v_max3_f32 v33, v6, v7, v33                                // 00000000AE60: D1D30021 04860F06
	v_max3_f32 v33, v8, v9, v33                                // 00000000AE68: D1D30021 04861308
	v_max3_f32 v33, v10, v11, v33                              // 00000000AE70: D1D30021 0486170A
	v_max3_f32 v33, v12, v13, v33                              // 00000000AE78: D1D30021 04861B0C
	v_max3_f32 v33, v14, v15, v33                              // 00000000AE80: D1D30021 04861F0E
	v_max_f32_e32 v32, v32, v33                                // 00000000AE88: 16404320
	v_mov_b32_e32 v33, v32                                     // 00000000AE8C: 7E420320
	s_nop 1                                                    // 00000000AE90: BF800001
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000AE94: 7E40B521
	v_max_f32_e32 v32, v32, v33                                // 00000000AE98: 16404320
	v_mul_f32_e32 v111, v142, v32                              // 00000000AE9C: 0ADE418E
	v_fma_f32 v32, v32, v142, -v111                            // 00000000AEA0: D1CB0020 85BF1D20
	v_floor_f32_e32 v32, v32                                   // 00000000AEA8: 7E403F20
	v_med3_f32 v32, v32, s89, 0                                // 00000000AEAC: D1D60020 0200B320
	v_cvt_i32_f32_e32 v33, v32                                 // 00000000AEB4: 7E421120
	v_add_u32_e32 v180, 0x7f, v33                              // 00000000AEB8: 696842FF 0000007F
	v_lshlrev_b32_e32 v33, 23, v180                            // 00000000AEC0: 24436897
	v_add_f32_e32 v32, v111, v32                               // 00000000AEC4: 0240416F
	v_sub_f32_e32 v32, 0x40c00000, v32                         // 00000000AEC8: 044040FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000AED0: 7F1E038E
	v_pk_fma_f32 v[80:81], v[16:17], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000AED4: D3B00050 1C832110
	v_pk_fma_f32 v[64:65], v[0:1], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000AEDC: D3B00040 1C832100
	v_pk_fma_f32 v[94:95], v[30:31], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AEE4: D3B0005E 1C831D1E
	v_pk_fma_f32 v[92:93], v[28:29], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AEEC: D3B0005C 1C831D1C
	v_pk_fma_f32 v[90:91], v[26:27], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AEF4: D3B0005A 1C831D1A
	v_pk_fma_f32 v[88:89], v[24:25], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AEFC: D3B00058 1C831D18
	v_pk_fma_f32 v[86:87], v[22:23], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF04: D3B00056 1C831D16
	v_pk_fma_f32 v[84:85], v[20:21], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF0C: D3B00054 1C831D14
	v_pk_fma_f32 v[82:83], v[18:19], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF14: D3B00052 1C831D12
	v_pk_fma_f32 v[78:79], v[14:15], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF1C: D3B0004E 1C831D0E
	v_pk_fma_f32 v[76:77], v[12:13], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF24: D3B0004C 1C831D0C
	v_pk_fma_f32 v[74:75], v[10:11], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF2C: D3B0004A 1C831D0A
	v_pk_fma_f32 v[72:73], v[8:9], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF34: D3B00048 1C831D08
	v_pk_fma_f32 v[70:71], v[6:7], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF3C: D3B00046 1C831D06
	v_pk_fma_f32 v[68:69], v[4:5], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF44: D3B00044 1C831D04
	v_pk_fma_f32 v[66:67], v[2:3], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF4C: D3B00042 1C831D02
	s_branch 286                                               // 00000000AF54: BF82011E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xbd0>
	s_setprio 1                                                // 00000000AF58: BF8F0001
	s_waitcnt lgkmcnt(0)                                       // 00000000AF5C: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[2:9], v[182:189], 0 // 00000000AF60: D3AE0010 02036D02
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[182:189], 0// 00000000AF68: D3AE0000 02036D32
	v_add_u32_e32 v32, s20, v163                               // 00000000AF70: 68414614
	ds_read_b128 v[58:61], v32                                 // 00000000AF74: D9FE0000 3A000020
	ds_read_b128 v[62:65], v32 offset:16                       // 00000000AF7C: D9FE0010 3E000020
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[42:49], v[190:197], v[16:31]// 00000000AF84: D3AE0010 04437D2A
	ds_read_b128 v[50:53], v32 offset:8192                     // 00000000AF8C: D9FE2000 32000020
	ds_read_b128 v[54:57], v32 offset:8208                     // 00000000AF94: D9FE2010 36000020
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[34:41], v[190:197], v[0:15]// 00000000AF9C: D3AE0000 04037D22
	s_waitcnt lgkmcnt(0)                                       // 00000000AFA4: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[58:65], v[198:205], v[16:31]// 00000000AFA8: D3AE0010 04438D3A
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[198:205], v[0:15]// 00000000AFB0: D3AE0000 04038D32
	s_sub_u32 s18, s3, s16                                     // 00000000AFB8: 80921003
	s_sub_i32 s18, s18, 0                                      // 00000000AFBC: 81928012
	s_cmp_ge_i32 s18, 32                                       // 00000000AFC0: BF03A012
	s_cbranch_scc1 86                                          // 00000000AFC4: BF850056 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x920>
	s_cmp_lt_i32 s18, 0                                        // 00000000AFC8: BF048012
	s_cbranch_scc1 66                                          // 00000000AFCC: BF850042 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8d8>
	v_add_u32_e32 v32, s18, v171                               // 00000000AFD0: 68415612
	v_cmp_gt_i32_e32 vcc, 0, v32                               // 00000000AFD4: 7D884080
	s_nop 7                                                    // 00000000AFD8: BF800007
	v_cndmask_b32_e64 v16, v16, v169, vcc                      // 00000000AFDC: D1000010 01AB5310
	v_cmp_gt_i32_e32 vcc, 1, v32                               // 00000000AFE4: 7D884081
	s_nop 1                                                    // 00000000AFE8: BF800001
	v_cndmask_b32_e64 v17, v17, v169, vcc                      // 00000000AFEC: D1000011 01AB5311
	v_cmp_gt_i32_e32 vcc, 2, v32                               // 00000000AFF4: 7D884082
	s_nop 1                                                    // 00000000AFF8: BF800001
	v_cndmask_b32_e64 v18, v18, v169, vcc                      // 00000000AFFC: D1000012 01AB5312
	v_cmp_gt_i32_e32 vcc, 3, v32                               // 00000000B004: 7D884083
	s_nop 1                                                    // 00000000B008: BF800001
	v_cndmask_b32_e64 v19, v19, v169, vcc                      // 00000000B00C: D1000013 01AB5313
	v_cmp_gt_i32_e32 vcc, 8, v32                               // 00000000B014: 7D884088
	s_nop 1                                                    // 00000000B018: BF800001
	v_cndmask_b32_e64 v20, v20, v169, vcc                      // 00000000B01C: D1000014 01AB5314
	v_cmp_gt_i32_e32 vcc, 9, v32                               // 00000000B024: 7D884089
	s_nop 1                                                    // 00000000B028: BF800001
	v_cndmask_b32_e64 v21, v21, v169, vcc                      // 00000000B02C: D1000015 01AB5315
	v_cmp_gt_i32_e32 vcc, 10, v32                              // 00000000B034: 7D88408A
	s_nop 1                                                    // 00000000B038: BF800001
	v_cndmask_b32_e64 v22, v22, v169, vcc                      // 00000000B03C: D1000016 01AB5316
	v_cmp_gt_i32_e32 vcc, 11, v32                              // 00000000B044: 7D88408B
	s_nop 1                                                    // 00000000B048: BF800001
	v_cndmask_b32_e64 v23, v23, v169, vcc                      // 00000000B04C: D1000017 01AB5317
	v_cmp_gt_i32_e32 vcc, 16, v32                              // 00000000B054: 7D884090
	s_nop 1                                                    // 00000000B058: BF800001
	v_cndmask_b32_e64 v24, v24, v169, vcc                      // 00000000B05C: D1000018 01AB5318
	v_cmp_gt_i32_e32 vcc, 17, v32                              // 00000000B064: 7D884091
	s_nop 1                                                    // 00000000B068: BF800001
	v_cndmask_b32_e64 v25, v25, v169, vcc                      // 00000000B06C: D1000019 01AB5319
	v_cmp_gt_i32_e32 vcc, 18, v32                              // 00000000B074: 7D884092
	s_nop 1                                                    // 00000000B078: BF800001
	v_cndmask_b32_e64 v26, v26, v169, vcc                      // 00000000B07C: D100001A 01AB531A
	v_cmp_gt_i32_e32 vcc, 19, v32                              // 00000000B084: 7D884093
	s_nop 1                                                    // 00000000B088: BF800001
	v_cndmask_b32_e64 v27, v27, v169, vcc                      // 00000000B08C: D100001B 01AB531B
	v_cmp_gt_i32_e32 vcc, 24, v32                              // 00000000B094: 7D884098
	s_nop 1                                                    // 00000000B098: BF800001
	v_cndmask_b32_e64 v28, v28, v169, vcc                      // 00000000B09C: D100001C 01AB531C
	v_cmp_gt_i32_e32 vcc, 25, v32                              // 00000000B0A4: 7D884099
	s_nop 1                                                    // 00000000B0A8: BF800001
	v_cndmask_b32_e64 v29, v29, v169, vcc                      // 00000000B0AC: D100001D 01AB531D
	v_cmp_gt_i32_e32 vcc, 26, v32                              // 00000000B0B4: 7D88409A
	s_nop 1                                                    // 00000000B0B8: BF800001
	v_cndmask_b32_e64 v30, v30, v169, vcc                      // 00000000B0BC: D100001E 01AB531E
	v_cmp_gt_i32_e32 vcc, 27, v32                              // 00000000B0C4: 7D88409B
	s_nop 1                                                    // 00000000B0C8: BF800001
	v_cndmask_b32_e64 v31, v31, v169, vcc                      // 00000000B0CC: D100001F 01AB531F
	s_branch 18                                                // 00000000B0D4: BF820012 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x920>
	s_nop 9                                                    // 00000000B0D8: BF800009
	v_mov_b32_e32 v16, 0xff800000                              // 00000000B0DC: 7E2002FF FF800000
	v_mov_b32_e32 v17, v16                                     // 00000000B0E4: 7E220310
	v_mov_b32_e32 v18, v16                                     // 00000000B0E8: 7E240310
	v_mov_b32_e32 v19, v16                                     // 00000000B0EC: 7E260310
	v_mov_b32_e32 v20, v16                                     // 00000000B0F0: 7E280310
	v_mov_b32_e32 v21, v16                                     // 00000000B0F4: 7E2A0310
	v_mov_b32_e32 v22, v16                                     // 00000000B0F8: 7E2C0310
	v_mov_b32_e32 v23, v16                                     // 00000000B0FC: 7E2E0310
	v_mov_b32_e32 v24, v16                                     // 00000000B100: 7E300310
	v_mov_b32_e32 v25, v16                                     // 00000000B104: 7E320310
	v_mov_b32_e32 v26, v16                                     // 00000000B108: 7E340310
	v_mov_b32_e32 v27, v16                                     // 00000000B10C: 7E360310
	v_mov_b32_e32 v28, v16                                     // 00000000B110: 7E380310
	v_mov_b32_e32 v29, v16                                     // 00000000B114: 7E3A0310
	v_mov_b32_e32 v30, v16                                     // 00000000B118: 7E3C0310
	v_mov_b32_e32 v31, v16                                     // 00000000B11C: 7E3E0310
	s_sub_u32 s18, s3, s16                                     // 00000000B120: 80921003
	s_sub_i32 s18, s18, 32                                     // 00000000B124: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 00000000B128: BF03A012
	s_cbranch_scc1 86                                          // 00000000B12C: BF850056 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa88>
	s_cmp_lt_i32 s18, 0                                        // 00000000B130: BF048012
	s_cbranch_scc1 66                                          // 00000000B134: BF850042 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa40>
	v_add_u32_e32 v32, s18, v171                               // 00000000B138: 68415612
	v_cmp_gt_i32_e32 vcc, 0, v32                               // 00000000B13C: 7D884080
	s_nop 11                                                   // 00000000B140: BF80000B
	v_cndmask_b32_e64 v0, v0, v169, vcc                        // 00000000B144: D1000000 01AB5300
	v_cmp_gt_i32_e32 vcc, 1, v32                               // 00000000B14C: 7D884081
	s_nop 1                                                    // 00000000B150: BF800001
	v_cndmask_b32_e64 v1, v1, v169, vcc                        // 00000000B154: D1000001 01AB5301
	v_cmp_gt_i32_e32 vcc, 2, v32                               // 00000000B15C: 7D884082
	s_nop 1                                                    // 00000000B160: BF800001
	v_cndmask_b32_e64 v2, v2, v169, vcc                        // 00000000B164: D1000002 01AB5302
	v_cmp_gt_i32_e32 vcc, 3, v32                               // 00000000B16C: 7D884083
	s_nop 1                                                    // 00000000B170: BF800001
	v_cndmask_b32_e64 v3, v3, v169, vcc                        // 00000000B174: D1000003 01AB5303
	v_cmp_gt_i32_e32 vcc, 8, v32                               // 00000000B17C: 7D884088
	s_nop 1                                                    // 00000000B180: BF800001
	v_cndmask_b32_e64 v4, v4, v169, vcc                        // 00000000B184: D1000004 01AB5304
	v_cmp_gt_i32_e32 vcc, 9, v32                               // 00000000B18C: 7D884089
	s_nop 1                                                    // 00000000B190: BF800001
	v_cndmask_b32_e64 v5, v5, v169, vcc                        // 00000000B194: D1000005 01AB5305
	v_cmp_gt_i32_e32 vcc, 10, v32                              // 00000000B19C: 7D88408A
	s_nop 1                                                    // 00000000B1A0: BF800001
	v_cndmask_b32_e64 v6, v6, v169, vcc                        // 00000000B1A4: D1000006 01AB5306
	v_cmp_gt_i32_e32 vcc, 11, v32                              // 00000000B1AC: 7D88408B
	s_nop 1                                                    // 00000000B1B0: BF800001
	v_cndmask_b32_e64 v7, v7, v169, vcc                        // 00000000B1B4: D1000007 01AB5307
	v_cmp_gt_i32_e32 vcc, 16, v32                              // 00000000B1BC: 7D884090
	s_nop 1                                                    // 00000000B1C0: BF800001
	v_cndmask_b32_e64 v8, v8, v169, vcc                        // 00000000B1C4: D1000008 01AB5308
	v_cmp_gt_i32_e32 vcc, 17, v32                              // 00000000B1CC: 7D884091
	s_nop 1                                                    // 00000000B1D0: BF800001
	v_cndmask_b32_e64 v9, v9, v169, vcc                        // 00000000B1D4: D1000009 01AB5309
	v_cmp_gt_i32_e32 vcc, 18, v32                              // 00000000B1DC: 7D884092
	s_nop 1                                                    // 00000000B1E0: BF800001
	v_cndmask_b32_e64 v10, v10, v169, vcc                      // 00000000B1E4: D100000A 01AB530A
	v_cmp_gt_i32_e32 vcc, 19, v32                              // 00000000B1EC: 7D884093
	s_nop 1                                                    // 00000000B1F0: BF800001
	v_cndmask_b32_e64 v11, v11, v169, vcc                      // 00000000B1F4: D100000B 01AB530B
	v_cmp_gt_i32_e32 vcc, 24, v32                              // 00000000B1FC: 7D884098
	s_nop 1                                                    // 00000000B200: BF800001
	v_cndmask_b32_e64 v12, v12, v169, vcc                      // 00000000B204: D100000C 01AB530C
	v_cmp_gt_i32_e32 vcc, 25, v32                              // 00000000B20C: 7D884099
	s_nop 1                                                    // 00000000B210: BF800001
	v_cndmask_b32_e64 v13, v13, v169, vcc                      // 00000000B214: D100000D 01AB530D
	v_cmp_gt_i32_e32 vcc, 26, v32                              // 00000000B21C: 7D88409A
	s_nop 1                                                    // 00000000B220: BF800001
	v_cndmask_b32_e64 v14, v14, v169, vcc                      // 00000000B224: D100000E 01AB530E
	v_cmp_gt_i32_e32 vcc, 27, v32                              // 00000000B22C: 7D88409B
	s_nop 1                                                    // 00000000B230: BF800001
	v_cndmask_b32_e64 v15, v15, v169, vcc                      // 00000000B234: D100000F 01AB530F
	s_branch 18                                                // 00000000B23C: BF820012 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa88>
	s_nop 13                                                   // 00000000B240: BF80000D
	v_mov_b32_e32 v0, 0xff800000                               // 00000000B244: 7E0002FF FF800000
	v_mov_b32_e32 v1, v0                                       // 00000000B24C: 7E020300
	v_mov_b32_e32 v2, v0                                       // 00000000B250: 7E040300
	v_mov_b32_e32 v3, v0                                       // 00000000B254: 7E060300
	v_mov_b32_e32 v4, v0                                       // 00000000B258: 7E080300
	v_mov_b32_e32 v5, v0                                       // 00000000B25C: 7E0A0300
	v_mov_b32_e32 v6, v0                                       // 00000000B260: 7E0C0300
	v_mov_b32_e32 v7, v0                                       // 00000000B264: 7E0E0300
	v_mov_b32_e32 v8, v0                                       // 00000000B268: 7E100300
	v_mov_b32_e32 v9, v0                                       // 00000000B26C: 7E120300
	v_mov_b32_e32 v10, v0                                      // 00000000B270: 7E140300
	v_mov_b32_e32 v11, v0                                      // 00000000B274: 7E160300
	v_mov_b32_e32 v12, v0                                      // 00000000B278: 7E180300
	v_mov_b32_e32 v13, v0                                      // 00000000B27C: 7E1A0300
	v_mov_b32_e32 v14, v0                                      // 00000000B280: 7E1C0300
	v_mov_b32_e32 v15, v0                                      // 00000000B284: 7E1E0300
	v_max_f32_e32 v32, v16, v17                                // 00000000B288: 16402310
	v_max3_f32 v32, v18, v19, v32                              // 00000000B28C: D1D30020 04822712
	v_max3_f32 v32, v20, v21, v32                              // 00000000B294: D1D30020 04822B14
	v_max3_f32 v32, v22, v23, v32                              // 00000000B29C: D1D30020 04822F16
	v_max3_f32 v32, v24, v25, v32                              // 00000000B2A4: D1D30020 04823318
	v_max3_f32 v32, v26, v27, v32                              // 00000000B2AC: D1D30020 0482371A
	v_max3_f32 v32, v28, v29, v32                              // 00000000B2B4: D1D30020 04823B1C
	v_max3_f32 v32, v30, v31, v32                              // 00000000B2BC: D1D30020 04823F1E
	s_nop 7                                                    // 00000000B2C4: BF800007
	v_max_f32_e32 v33, v0, v1                                  // 00000000B2C8: 16420300
	v_max3_f32 v33, v2, v3, v33                                // 00000000B2CC: D1D30021 04860702
	v_max3_f32 v33, v4, v5, v33                                // 00000000B2D4: D1D30021 04860B04
	v_max3_f32 v33, v6, v7, v33                                // 00000000B2DC: D1D30021 04860F06
	v_max3_f32 v33, v8, v9, v33                                // 00000000B2E4: D1D30021 04861308
	v_max3_f32 v33, v10, v11, v33                              // 00000000B2EC: D1D30021 0486170A
	v_max3_f32 v33, v12, v13, v33                              // 00000000B2F4: D1D30021 04861B0C
	v_max3_f32 v33, v14, v15, v33                              // 00000000B2FC: D1D30021 04861F0E
	v_max_f32_e32 v32, v32, v33                                // 00000000B304: 16404320
	v_mov_b32_e32 v33, v32                                     // 00000000B308: 7E420320
	s_nop 1                                                    // 00000000B30C: BF800001
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000B310: 7E40B521
	v_max_f32_e32 v32, v32, v33                                // 00000000B314: 16404320
	v_mul_f32_e32 v111, v142, v32                              // 00000000B318: 0ADE418E
	v_fma_f32 v32, v32, v142, -v111                            // 00000000B31C: D1CB0020 85BF1D20
	v_floor_f32_e32 v32, v32                                   // 00000000B324: 7E403F20
	v_med3_f32 v32, v32, s89, 0                                // 00000000B328: D1D60020 0200B320
	v_cvt_i32_f32_e32 v33, v32                                 // 00000000B330: 7E421120
	v_add_u32_e32 v180, 0x7f, v33                              // 00000000B334: 696842FF 0000007F
	v_lshlrev_b32_e32 v33, 23, v180                            // 00000000B33C: 24436897
	v_add_f32_e32 v32, v111, v32                               // 00000000B340: 0240416F
	v_sub_f32_e32 v32, 0x40c00000, v32                         // 00000000B344: 044040FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000B34C: 7F1E038E
	v_pk_fma_f32 v[80:81], v[16:17], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000B350: D3B00050 1C832110
	v_pk_fma_f32 v[64:65], v[0:1], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000B358: D3B00040 1C832100
	v_pk_fma_f32 v[94:95], v[30:31], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B360: D3B0005E 1C831D1E
	v_pk_fma_f32 v[92:93], v[28:29], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B368: D3B0005C 1C831D1C
	v_pk_fma_f32 v[90:91], v[26:27], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B370: D3B0005A 1C831D1A
	v_pk_fma_f32 v[88:89], v[24:25], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B378: D3B00058 1C831D18
	v_pk_fma_f32 v[86:87], v[22:23], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B380: D3B00056 1C831D16
	v_pk_fma_f32 v[84:85], v[20:21], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B388: D3B00054 1C831D14
	v_pk_fma_f32 v[82:83], v[18:19], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B390: D3B00052 1C831D12
	v_pk_fma_f32 v[78:79], v[14:15], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B398: D3B0004E 1C831D0E
	v_pk_fma_f32 v[76:77], v[12:13], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3A0: D3B0004C 1C831D0C
	v_pk_fma_f32 v[74:75], v[10:11], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3A8: D3B0004A 1C831D0A
	v_pk_fma_f32 v[72:73], v[8:9], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3B0: D3B00048 1C831D08
	v_pk_fma_f32 v[70:71], v[6:7], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3B8: D3B00046 1C831D06
	v_pk_fma_f32 v[68:69], v[4:5], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3C0: D3B00044 1C831D04
	v_pk_fma_f32 v[66:67], v[2:3], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3C8: D3B00042 1C831D02
	s_waitcnt vmcnt(0)                                         // 00000000B3D0: BF8C0F70
	s_mov_b64 s[70:71], s[62:63]                               // 00000000B3D4: BEC6013E
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000B3D8: 86927E00
	s_mov_b64 s[68:69], s[60:61]                               // 00000000B3DC: BEC4013C
	s_mov_b32 s71, s79                                         // 00000000B3E0: BEC7004F
	s_cbranch_scc0 34                                          // 00000000B3E4: BF840022 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc70>
	s_cmp_ge_u32 s98, 2                                        // 00000000B3E8: BF098262
	s_cbranch_scc1 186                                         // 00000000B3EC: BF8500BA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xed8>
	s_cmp_ge_u32 s98, 3                                        // 00000000B3F0: BF098362
	s_cbranch_scc1 202                                         // 00000000B3F4: BF8500CA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf20>
	s_cmp_lt_u32 s98, 4                                        // 00000000B3F8: BF0A8462
	s_cbranch_scc1 27                                          // 00000000B3FC: BF85001B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc6c>
	s_add_u32 s17, s80, -1                                     // 00000000B400: 8011C150
	s_and_b32 s17, s17, 3                                      // 00000000B404: 86118311
	s_lshl_b32 s17, s17, 14                                    // 00000000B408: 8E118E11
	s_or_b32 s17, s17, s72                                     // 00000000B40C: 87114811
	s_mov_b32 m0, s17                                          // 00000000B410: BEFC0011
	s_mul_i32 s18, s6, 0xc0                                    // 00000000B414: 9212FF06 000000C0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B41C: E05D1000 121100A4
	s_add_u32 m0, s17, 0x1000                                  // 00000000B424: 807CFF11 00001000
	s_mul_i32 s18, s6, 0xd0                                    // 00000000B42C: 9212FF06 000000D0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B434: E05D1000 121100A4
	s_or_b32 m0, s17, 0x2000                                   // 00000000B43C: 877CFF11 00002000
	s_mul_i32 s18, s6, 0xe0                                    // 00000000B444: 9212FF06 000000E0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B44C: E05D1000 121100A4
	s_add_u32 m0, s17, 0x3000                                  // 00000000B454: 807CFF11 00003000
	s_mul_i32 s17, s6, 0xf0                                    // 00000000B45C: 9211FF06 000000F0
	buffer_load_dwordx4 v164, s[68:71], s17 offen lds          // 00000000B464: E05D1000 111100A4
	s_waitcnt vmcnt(0)                                         // 00000000B46C: BF8C0F70
	s_barrier                                                  // 00000000B470: BF8A0000
	s_add_u32 s87, s98, -1                                     // 00000000B474: 8057C162
	s_mul_i32 s84, s87, s9                                     // 00000000B478: 92540957
	s_cmp_lt_i32 s80, 1                                        // 00000000B47C: BF048150
	s_mul_i32 s87, s87, s99                                    // 00000000B480: 92576357
	s_cbranch_scc1 54                                          // 00000000B484: BF850036 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd60>
	s_mov_b32 s17, s16                                         // 00000000B488: BE910010
	s_mov_b32 s18, s16                                         // 00000000B48C: BE920010
	s_mov_b32 s19, s16                                         // 00000000B490: BE930010
	s_mov_b32 s20, s16                                         // 00000000B494: BE940010
	s_mov_b32 s21, s16                                         // 00000000B498: BE950010
	s_mov_b32 s22, s16                                         // 00000000B49C: BE960010
	s_mov_b32 s23, s16                                         // 00000000B4A0: BE970010
	s_mov_b32 s24, s16                                         // 00000000B4A4: BE980010
	s_mov_b32 s25, s16                                         // 00000000B4A8: BE990010
	s_mov_b32 s26, s16                                         // 00000000B4AC: BE9A0010
	s_mov_b32 s27, s16                                         // 00000000B4B0: BE9B0010
	s_mov_b32 s28, s16                                         // 00000000B4B4: BE9C0010
	s_mov_b32 s29, s16                                         // 00000000B4B8: BE9D0010
	s_mov_b32 s30, s16                                         // 00000000B4BC: BE9E0010
	s_mov_b32 s31, s16                                         // 00000000B4C0: BE9F0010
	s_cmp_lt_i32 s80, 2                                        // 00000000B4C4: BF048250
	s_cbranch_scc0 91                                          // 00000000B4C8: BF84005B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xe38>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B4CC: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B4D0: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B4D4: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B4D8: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B4DC: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B4E0: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B4E4: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B4E8: 7E1C701E
	s_mov_b32 s78, 0                                           // 00000000B4EC: BECE0080
	v_mov_b32_e32 v179, 0                                      // 00000000B4F0: 7F660280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B4F4: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B4F8: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B4FC: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B500: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B504: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B508: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B50C: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B510: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B514: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B518: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B51C: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B520: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B524: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B528: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B52C: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B530: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B534: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B538: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B53C: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B540: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B544: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B548: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B54C: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B550: 7E607100
	s_mov_b32 s17, s86                                         // 00000000B554: BE910056
	s_mov_b32 s20, s85                                         // 00000000B558: BE940055
	s_branch 571                                               // 00000000B55C: BF82023B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x164c>
	s_mov_b32 s17, s16                                         // 00000000B560: BE910010
	s_mov_b32 s18, s16                                         // 00000000B564: BE920010
	s_mov_b32 s19, s16                                         // 00000000B568: BE930010
	s_mov_b32 s20, s16                                         // 00000000B56C: BE940010
	s_mov_b32 s21, s16                                         // 00000000B570: BE950010
	s_mov_b32 s22, s16                                         // 00000000B574: BE960010
	s_mov_b32 s23, s16                                         // 00000000B578: BE970010
	s_mov_b32 s24, s16                                         // 00000000B57C: BE980010
	s_mov_b32 s25, s16                                         // 00000000B580: BE990010
	s_mov_b32 s26, s16                                         // 00000000B584: BE9A0010
	s_mov_b32 s27, s16                                         // 00000000B588: BE9B0010
	s_mov_b32 s28, s16                                         // 00000000B58C: BE9C0010
	s_mov_b32 s29, s16                                         // 00000000B590: BE9D0010
	s_mov_b32 s30, s16                                         // 00000000B594: BE9E0010
	s_mov_b32 s31, s16                                         // 00000000B598: BE9F0010
	s_mov_b32 s78, 0                                           // 00000000B59C: BECE0080
	s_cmp_lg_u32 s80, 0                                        // 00000000B5A0: BF078050
	s_cbranch_scc0 160                                         // 00000000B5A4: BF8400A0 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1028>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B5A8: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B5AC: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B5B0: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B5B4: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B5B8: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B5BC: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B5C0: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B5C4: 7E1C701E
	v_mov_b32_e32 v179, 0                                      // 00000000B5C8: 7F660280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B5CC: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B5D0: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B5D4: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B5D8: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B5DC: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B5E0: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B5E4: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B5E8: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B5EC: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B5F0: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B5F4: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B5F8: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B5FC: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B600: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B604: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B608: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B60C: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B610: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B614: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B618: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B61C: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B620: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B624: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B628: 7E607100
	s_mov_b32 s17, s86                                         // 00000000B62C: BE910056
	s_mov_b32 s20, s85                                         // 00000000B630: BE940055
	s_branch 1217                                              // 00000000B634: BF8204C1 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x213c>
	s_mov_b32 s78, 0                                           // 00000000B638: BECE0080
	s_cmp_eq_u32 s80, 2                                        // 00000000B63C: BF068250
	s_cbranch_scc0 85                                          // 00000000B640: BF840055 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf98>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B644: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B648: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B64C: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B650: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B654: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B658: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B65C: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B660: 7E1C701E
	v_mov_b32_e32 v179, 0                                      // 00000000B664: 7F660280
	v_mov_b32_e32 v178, v111                                   // 00000000B668: 7F64036F
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B66C: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B670: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B674: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B678: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B67C: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B680: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B684: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B688: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B68C: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B690: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B694: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B698: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B69C: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B6A0: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B6A4: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B6A8: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B6AC: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B6B0: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B6B4: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B6B8: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B6BC: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B6C0: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B6C4: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B6C8: 7E607100
	s_mov_b32 s17, s86                                         // 00000000B6CC: BE910056
	s_mov_b32 s20, s85                                         // 00000000B6D0: BE940055
	s_branch 827                                               // 00000000B6D4: BF82033B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1bc4>
	s_add_u32 s18, s80, 1                                      // 00000000B6D8: 80128150
	s_and_b32 s18, s18, 3                                      // 00000000B6DC: 86128312
	s_lshl_b32 s18, s18, 13                                    // 00000000B6E0: 8E128D12
	s_add_u32 s19, s82, s18                                    // 00000000B6E4: 80131252
	s_add_u32 m0, s19, s72                                     // 00000000B6E8: 807C4813
	s_nop 0                                                    // 00000000B6EC: BF800000
	buffer_load_dwordx4 v166, s[64:67], s99 offen lds          // 00000000B6F0: E05D1000 631000A6
	s_add_u32 s18, s82, s18                                    // 00000000B6F8: 80121252
	s_add_u32 s18, s18, s72                                    // 00000000B6FC: 80124812
	s_add_u32 m0, s18, 0x1000                                  // 00000000B700: 807CFF12 00001000
	s_mul_i32 s18, s7, 0x44                                    // 00000000B708: 9212FF07 00000044
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000B710: E05D1000 121000A6
	s_cmp_lt_u32 s98, 3                                        // 00000000B718: BF0A8362
	s_cbranch_scc1 65334                                       // 00000000B71C: BF85FF36 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xbf8>
	s_xor_b32 s17, s17, 2                                      // 00000000B720: 88118211
	s_lshl_b32 s17, s17, 14                                    // 00000000B724: 8E118E11
	s_or_b32 s17, s17, s72                                     // 00000000B728: 87114811
	s_mov_b32 m0, s17                                          // 00000000B72C: BEFC0011
	v_readlane_b32 s18, v230, 0                                // 00000000B730: D2890012 000101E6
	s_nop 4                                                    // 00000000B738: BF800004
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B73C: E05D1000 121100A4
	s_add_u32 m0, s17, 0x1000                                  // 00000000B744: 807CFF11 00001000
	s_mul_i32 s18, s6, 0x90                                    // 00000000B74C: 9212FF06 00000090
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B754: E05D1000 121100A4
	s_or_b32 m0, s17, 0x2000                                   // 00000000B75C: 877CFF11 00002000
	s_mul_i32 s18, s6, 0xa0                                    // 00000000B764: 9212FF06 000000A0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B76C: E05D1000 121100A4
	s_add_u32 m0, s17, 0x3000                                  // 00000000B774: 807CFF11 00003000
	s_mul_i32 s17, s6, 0xb0                                    // 00000000B77C: 9211FF06 000000B0
	buffer_load_dwordx4 v164, s[68:71], s17 offen lds          // 00000000B784: E05D1000 111100A4
	s_cmp_lt_u32 s98, 4                                        // 00000000B78C: BF0A8462
	s_cbranch_scc1 65334                                       // 00000000B790: BF85FF36 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc6c>
	s_branch 65306                                             // 00000000B794: BF82FF1A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc00>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B798: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B79C: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B7A0: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B7A4: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B7A8: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B7AC: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B7B0: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B7B4: 7E1C701E
	v_mov_b32_e32 v179, 0                                      // 00000000B7B8: 7F660280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B7BC: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B7C0: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B7C4: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B7C8: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B7CC: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B7D0: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B7D4: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B7D8: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B7DC: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B7E0: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B7E4: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B7E8: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B7EC: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B7F0: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B7F4: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B7F8: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B7FC: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B800: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B804: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B808: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B80C: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B810: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B814: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B818: 7E607100
	s_mov_b32 s17, s86                                         // 00000000B81C: BE910056
	s_mov_b32 s20, s85                                         // 00000000B820: BE940055
	s_branch 1093                                              // 00000000B824: BF820445 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x213c>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B828: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B82C: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B830: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B834: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B838: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B83C: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B840: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B844: 7E1C701E
	v_mov_b32_e32 v179, 0                                      // 00000000B848: 7F660280
	s_mov_b32 s78, s80                                         // 00000000B84C: BECE0050
	v_mov_b32_e32 v178, v111                                   // 00000000B850: 7F64036F
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B854: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B858: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B85C: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B860: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B864: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B868: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B86C: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B870: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B874: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B878: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B87C: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B880: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B884: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B888: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B88C: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B890: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B894: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B898: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B89C: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B8A0: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B8A4: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B8A8: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B8AC: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B8B0: 7E607100
	s_mov_b32 s17, s86                                         // 00000000B8B4: BE910056
	s_mov_b32 s20, s85                                         // 00000000B8B8: BE940055
	s_branch 5                                                 // 00000000B8BC: BF820005 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10d4>
	s_mov_b64 s[10:11], s[20:21]                               // 00000000B8C0: BE8A0114
	s_mov_b32 s3, s17                                          // 00000000B8C4: BE830011
	global_store_dword v1, v0, s[14:15]                        // 00000000B8C8: DC708000 000E0001
	s_branch 64797                                             // 00000000B8D0: BF82FD1D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x548>
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
	v_mov_b32_e32 v178, v111                                   // 00000000CEB8: 7F64036F
	s_add_u32 s17, s78, s80                                    // 00000000CEBC: 8011504E
	s_bitcmp1_b32 s17, 0                                       // 00000000CEC0: BF0D8011
	s_cbranch_scc1 806                                         // 00000000CEC4: BF850326 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3360>
	s_branch 5                                                 // 00000000CEC8: BF820005 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26e0>
	v_mov_b32_e32 v178, v111                                   // 00000000CECC: 7F64036F
	s_add_u32 s17, s78, s80                                    // 00000000CED0: 8011504E
	s_bitcmp1_b32 s17, 0                                       // 00000000CED4: BF0D8011
	s_cbranch_scc1 801                                         // 00000000CED8: BF850321 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3360>
	s_nop 0                                                    // 00000000CEDC: BF800000
	s_add_u32 s17, s78, 1                                      // 00000000CEE0: 8011814E
	s_cmp_ge_u32 s17, s98                                      // 00000000CEE4: BF096211
	s_cbranch_scc1 1598                                        // 00000000CEE8: BF85063E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3fe4>
	s_cmp_ge_u32 s78, s77                                      // 00000000CEEC: BF094D4E
	s_cbranch_scc1 588                                         // 00000000CEF0: BF85024C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3024>
	s_setprio 0                                                // 00000000CEF4: BF8F0000
	v_exp_f32_e32 v64, v64                                     // 00000000CEF8: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000CEFC: 7E824141
	s_add_u32 s17, s78, s80                                    // 00000000CF00: 8011504E
	s_add_u32 s18, s17, 1                                      // 00000000CF04: 80128111
	s_and_b32 s18, s18, 3                                      // 00000000CF08: 86128312
	v_mov_b32_e32 v138, 0                                      // 00000000CF0C: 7F140280
	s_lshl_b32 s18, s18, 14                                    // 00000000CF10: 8E128E12
	v_exp_f32_e32 v80, v80                                     // 00000000CF14: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000CF18: 7EA24151
	v_exp_f32_e32 v84, v84                                     // 00000000CF1C: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000CF20: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000CF24: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000CF28: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000CF2C: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000CF30: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000CF34: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000CF38: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000CF3C: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000CF40: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000CF44: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000CF48: 7E9A414D
	v_cvt_pk_fp8_f32 v138, v64, v65                            // 00000000CF4C: D2A2008A 00028340
	v_or_b32_e32 v64, s18, v161                                // 00000000CF54: 28814212
	v_or_b32_e32 v65, s18, v162                                // 00000000CF58: 28834412
	ds_read_b128 v[96:99], v64                                 // 00000000CF5C: D9FE0000 60000040
	ds_read_b128 v[100:103], v64 offset:16                     // 00000000CF64: D9FE0010 64000040
	ds_read_b128 v[206:209], v64 offset:8192                   // 00000000CF6C: D9FE2000 CE000040
	ds_read_b128 v[210:213], v64 offset:8208                   // 00000000CF74: D9FE2010 D2000040
	ds_read_b128 v[214:217], v65                               // 00000000CF7C: D9FE0000 D6000041
	ds_read_b128 v[218:221], v65 offset:16                     // 00000000CF84: D9FE0010 DA000041
	ds_read_b128 v[222:225], v65 offset:8192                   // 00000000CF8C: D9FE2000 DE000041
	ds_read_b128 v[226:229], v65 offset:8208                   // 00000000CF94: D9FE2010 E2000041
	v_mov_b32_e32 v134, 0                                      // 00000000CF9C: 7F0C0280
	v_mov_b32_e32 v135, 0                                      // 00000000CFA0: 7F0E0280
	v_mov_b32_e32 v139, 0                                      // 00000000CFA4: 7F160280
	v_mov_b32_e32 v136, 0                                      // 00000000CFA8: 7F100280
	v_mov_b32_e32 v140, 0                                      // 00000000CFAC: 7F180280
	v_mov_b32_e32 v137, 0                                      // 00000000CFB0: 7F120280
	v_mov_b32_e32 v141, 0                                      // 00000000CFB4: 7F1A0280
	v_exp_f32_e32 v82, v82                                     // 00000000CFB8: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000CFBC: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000CFC0: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000CFC4: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000CFC8: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000CFCC: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000CFD0: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000CFD4: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000CFD8: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000CFDC: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000CFE0: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000CFE4: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000CFE8: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000CFEC: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000CFF0: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000CFF4: 7E9E414F
	v_cvt_pk_fp8_f32 v134, v80, v81                            // 00000000CFF8: D2A20086 0002A350
	v_cvt_pk_fp8_f32 v135, v84, v85                            // 00000000D000: D2A20087 0002AB54
	v_cvt_pk_fp8_f32 v139, v68, v69                            // 00000000D008: D2A2008B 00028B44
	v_cvt_pk_fp8_f32 v136, v88, v89                            // 00000000D010: D2A20088 0002B358
	v_cvt_pk_fp8_f32 v140, v72, v73                            // 00000000D018: D2A2008C 00029348
	v_cvt_pk_fp8_f32 v137, v92, v93                            // 00000000D020: D2A20089 0002BB5C
	v_cvt_pk_fp8_f32 v141, v76, v77                            // 00000000D028: D2A2008D 00029B4C
	v_cvt_pk_fp8_f32 v134, v82, v83 op_sel:[0,0,1]             // 00000000D030: D2A24086 0002A752
	v_cvt_pk_fp8_f32 v138, v66, v67 op_sel:[0,0,1]             // 00000000D038: D2A2408A 00028742
	v_cvt_pk_fp8_f32 v135, v86, v87 op_sel:[0,0,1]             // 00000000D040: D2A24087 0002AF56
	v_cvt_pk_fp8_f32 v139, v70, v71 op_sel:[0,0,1]             // 00000000D048: D2A2408B 00028F46
	v_cvt_pk_fp8_f32 v136, v90, v91 op_sel:[0,0,1]             // 00000000D050: D2A24088 0002B75A
	v_cvt_pk_fp8_f32 v140, v74, v75 op_sel:[0,0,1]             // 00000000D058: D2A2408C 0002974A
	v_cvt_pk_fp8_f32 v137, v94, v95 op_sel:[0,0,1]             // 00000000D060: D2A24089 0002BF5E
	v_cvt_pk_fp8_f32 v141, v78, v79 op_sel:[0,0,1]             // 00000000D068: D2A2408D 00029F4E
	s_barrier                                                  // 00000000D070: BF8A0000
	s_setprio 1                                                // 00000000D074: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[134:141], 0// 00000000D078: D3AD0040 02030D7E
	s_nop 11                                                   // 00000000D080: BF80000B
	v_lshlrev_b32_e32 v65, 23, v180                            // 00000000D084: 24836897
	v_fma_f32 v179, v64, v65, v179                             // 00000000D088: D1CB00B3 06CE8340
	s_waitcnt lgkmcnt(0)                                       // 00000000D090: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[96:103], v[182:189], 0// 00000000D094: D3AE0050 02036D60
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[206:213], v[182:189], 0// 00000000D09C: D3AE006E 02036DCE
	v_or_b32_e32 v64, s18, v163                                // 00000000D0A4: 28814612
	ds_read_b128 v[66:69], v64                                 // 00000000D0A8: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 00000000D0B0: D9FE0010 46000040
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[214:221], v[190:197], v[80:95]// 00000000D0B8: D3AE0050 05437DD6
	ds_read_b128 v[96:99], v64 offset:8192                     // 00000000D0C0: D9FE2000 60000040
	ds_read_b128 v[100:103], v64 offset:8208                   // 00000000D0C8: D9FE2010 64000040
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[222:229], v[190:197], v[110:125]// 00000000D0D0: D3AE006E 05BB7DDE
	s_waitcnt lgkmcnt(0)                                       // 00000000D0D8: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[66:73], v[198:205], v[80:95]// 00000000D0DC: D3AE0050 05438D42
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[96:103], v[198:205], v[110:125]// 00000000D0E4: D3AE006E 05BB8D60
	s_lshl_b32 s18, s78, 6                                     // 00000000D0EC: 8E12864E
	s_add_u32 s20, s18, 64                                     // 00000000D0F0: 8014C012
	s_sub_u32 s18, s3, s20                                     // 00000000D0F4: 80921403
	s_sub_i32 s18, s18, 0                                      // 00000000D0F8: 81928012
	s_nop 1                                                    // 00000000D0FC: BF800001
	v_mov_b32_e32 v64, v80                                     // 00000000D100: 7E800350
	v_mov_b32_e32 v65, v81                                     // 00000000D104: 7E820351
	v_mov_b32_e32 v66, v82                                     // 00000000D108: 7E840352
	v_mov_b32_e32 v67, v83                                     // 00000000D10C: 7E860353
	v_mov_b32_e32 v68, v84                                     // 00000000D110: 7E880354
	v_mov_b32_e32 v69, v85                                     // 00000000D114: 7E8A0355
	v_mov_b32_e32 v70, v86                                     // 00000000D118: 7E8C0356
	v_mov_b32_e32 v71, v87                                     // 00000000D11C: 7E8E0357
	v_mov_b32_e32 v72, v88                                     // 00000000D120: 7E900358
	v_mov_b32_e32 v73, v89                                     // 00000000D124: 7E920359
	v_mov_b32_e32 v74, v90                                     // 00000000D128: 7E94035A
	v_mov_b32_e32 v75, v91                                     // 00000000D12C: 7E96035B
	v_mov_b32_e32 v76, v92                                     // 00000000D130: 7E98035C
	v_mov_b32_e32 v77, v93                                     // 00000000D134: 7E9A035D
	v_mov_b32_e32 v78, v94                                     // 00000000D138: 7E9C035E
	s_cmp_ge_i32 s18, 32                                       // 00000000D13C: BF03A012
	v_mov_b32_e32 v79, v95                                     // 00000000D140: 7E9E035F
	s_cbranch_scc1 84                                          // 00000000D144: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2a98>
	v_mov_b32_e32 v64, 0xff800000                              // 00000000D148: 7E8002FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000D150: BF048012
	v_mov_b32_e32 v65, v64                                     // 00000000D154: 7E820340
	v_mov_b32_e32 v66, v64                                     // 00000000D158: 7E840340
	v_mov_b32_e32 v67, v64                                     // 00000000D15C: 7E860340
	v_mov_b32_e32 v68, v64                                     // 00000000D160: 7E880340
	v_mov_b32_e32 v69, v64                                     // 00000000D164: 7E8A0340
	v_mov_b32_e32 v70, v64                                     // 00000000D168: 7E8C0340
	v_mov_b32_e32 v71, v64                                     // 00000000D16C: 7E8E0340
	v_mov_b32_e32 v72, v64                                     // 00000000D170: 7E900340
	v_mov_b32_e32 v73, v64                                     // 00000000D174: 7E920340
	v_mov_b32_e32 v74, v64                                     // 00000000D178: 7E940340
	v_mov_b32_e32 v75, v64                                     // 00000000D17C: 7E960340
	v_mov_b32_e32 v76, v64                                     // 00000000D180: 7E980340
	v_mov_b32_e32 v77, v64                                     // 00000000D184: 7E9A0340
	v_mov_b32_e32 v78, v64                                     // 00000000D188: 7E9C0340
	v_mov_b32_e32 v79, v64                                     // 00000000D18C: 7E9E0340
	s_cbranch_scc1 65                                          // 00000000D190: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2a98>
	v_add_u32_e32 v79, s18, v171                               // 00000000D194: 689F5612
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 00000000D198: 7D889E80
	s_nop 1                                                    // 00000000D19C: BF800001
	v_cndmask_b32_e64 v64, v80, v169, vcc                      // 00000000D1A0: D1000040 01AB5350
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 00000000D1A8: 7D889E81
	s_nop 1                                                    // 00000000D1AC: BF800001
	v_cndmask_b32_e64 v65, v81, v169, vcc                      // 00000000D1B0: D1000041 01AB5351
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 00000000D1B8: 7D889E82
	s_nop 1                                                    // 00000000D1BC: BF800001
	v_cndmask_b32_e64 v66, v82, v169, vcc                      // 00000000D1C0: D1000042 01AB5352
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 00000000D1C8: 7D889E83
	s_nop 1                                                    // 00000000D1CC: BF800001
	v_cndmask_b32_e64 v67, v83, v169, vcc                      // 00000000D1D0: D1000043 01AB5353
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 00000000D1D8: 7D889E88
	s_nop 1                                                    // 00000000D1DC: BF800001
	v_cndmask_b32_e64 v68, v84, v169, vcc                      // 00000000D1E0: D1000044 01AB5354
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 00000000D1E8: 7D889E89
	s_nop 1                                                    // 00000000D1EC: BF800001
	v_cndmask_b32_e64 v69, v85, v169, vcc                      // 00000000D1F0: D1000045 01AB5355
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 00000000D1F8: 7D889E8A
	s_nop 1                                                    // 00000000D1FC: BF800001
	v_cndmask_b32_e64 v70, v86, v169, vcc                      // 00000000D200: D1000046 01AB5356
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 00000000D208: 7D889E8B
	s_nop 1                                                    // 00000000D20C: BF800001
	v_cndmask_b32_e64 v71, v87, v169, vcc                      // 00000000D210: D1000047 01AB5357
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 00000000D218: 7D889E90
	s_nop 1                                                    // 00000000D21C: BF800001
	v_cndmask_b32_e64 v72, v88, v169, vcc                      // 00000000D220: D1000048 01AB5358
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 00000000D228: 7D889E91
	s_nop 1                                                    // 00000000D22C: BF800001
	v_cndmask_b32_e64 v73, v89, v169, vcc                      // 00000000D230: D1000049 01AB5359
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 00000000D238: 7D889E92
	s_nop 1                                                    // 00000000D23C: BF800001
	v_cndmask_b32_e64 v74, v90, v169, vcc                      // 00000000D240: D100004A 01AB535A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 00000000D248: 7D889E93
	s_nop 1                                                    // 00000000D24C: BF800001
	v_cndmask_b32_e64 v75, v91, v169, vcc                      // 00000000D250: D100004B 01AB535B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 00000000D258: 7D889E98
	s_nop 1                                                    // 00000000D25C: BF800001
	v_cndmask_b32_e64 v76, v92, v169, vcc                      // 00000000D260: D100004C 01AB535C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 00000000D268: 7D889E99
	s_nop 1                                                    // 00000000D26C: BF800001
	v_cndmask_b32_e64 v77, v93, v169, vcc                      // 00000000D270: D100004D 01AB535D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 00000000D278: 7D889E9A
	s_nop 1                                                    // 00000000D27C: BF800001
	v_cndmask_b32_e64 v78, v94, v169, vcc                      // 00000000D280: D100004E 01AB535E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 00000000D288: 7D889E9B
	s_nop 1                                                    // 00000000D28C: BF800001
	v_cndmask_b32_e64 v79, v95, v169, vcc                      // 00000000D290: D100004F 01AB535F
	s_sub_u32 s18, s3, s20                                     // 00000000D298: 80921403
	s_sub_i32 s18, s18, 32                                     // 00000000D29C: 8192A012
	v_mov_b32_e32 v94, v110                                    // 00000000D2A0: 7EBC036E
	v_mov_b32_e32 v95, v111                                    // 00000000D2A4: 7EBE036F
	v_mov_b32_e32 v96, v112                                    // 00000000D2A8: 7EC00370
	v_mov_b32_e32 v97, v113                                    // 00000000D2AC: 7EC20371
	v_mov_b32_e32 v98, v114                                    // 00000000D2B0: 7EC40372
	v_mov_b32_e32 v99, v115                                    // 00000000D2B4: 7EC60373
	v_mov_b32_e32 v100, v116                                   // 00000000D2B8: 7EC80374
	v_mov_b32_e32 v101, v117                                   // 00000000D2BC: 7ECA0375
	v_mov_b32_e32 v102, v118                                   // 00000000D2C0: 7ECC0376
	v_mov_b32_e32 v103, v119                                   // 00000000D2C4: 7ECE0377
	v_mov_b32_e32 v104, v120                                   // 00000000D2C8: 7ED00378
	v_mov_b32_e32 v105, v121                                   // 00000000D2CC: 7ED20379
	v_mov_b32_e32 v106, v122                                   // 00000000D2D0: 7ED4037A
	v_mov_b32_e32 v107, v123                                   // 00000000D2D4: 7ED6037B
	v_mov_b32_e32 v108, v124                                   // 00000000D2D8: 7ED8037C
	s_cmp_ge_i32 s18, 32                                       // 00000000D2DC: BF03A012
	v_mov_b32_e32 v109, v125                                   // 00000000D2E0: 7EDA037D
	s_cbranch_scc1 84                                          // 00000000D2E4: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2c38>
	v_mov_b32_e32 v94, 0xff800000                              // 00000000D2E8: 7EBC02FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000D2F0: BF048012
	v_mov_b32_e32 v95, v94                                     // 00000000D2F4: 7EBE035E
	v_mov_b32_e32 v96, v94                                     // 00000000D2F8: 7EC0035E
	v_mov_b32_e32 v97, v94                                     // 00000000D2FC: 7EC2035E
	v_mov_b32_e32 v98, v94                                     // 00000000D300: 7EC4035E
	v_mov_b32_e32 v99, v94                                     // 00000000D304: 7EC6035E
	v_mov_b32_e32 v100, v94                                    // 00000000D308: 7EC8035E
	v_mov_b32_e32 v101, v94                                    // 00000000D30C: 7ECA035E
	v_mov_b32_e32 v102, v94                                    // 00000000D310: 7ECC035E
	v_mov_b32_e32 v103, v94                                    // 00000000D314: 7ECE035E
	v_mov_b32_e32 v104, v94                                    // 00000000D318: 7ED0035E
	v_mov_b32_e32 v105, v94                                    // 00000000D31C: 7ED2035E
	v_mov_b32_e32 v106, v94                                    // 00000000D320: 7ED4035E
	v_mov_b32_e32 v107, v94                                    // 00000000D324: 7ED6035E
	v_mov_b32_e32 v108, v94                                    // 00000000D328: 7ED8035E
	v_mov_b32_e32 v109, v94                                    // 00000000D32C: 7EDA035E
	s_cbranch_scc1 65                                          // 00000000D330: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2c38>
	v_add_u32_e32 v80, s18, v171                               // 00000000D334: 68A15612
	v_cmp_gt_i32_e32 vcc, 0, v80                               // 00000000D338: 7D88A080
	s_nop 1                                                    // 00000000D33C: BF800001
	v_cndmask_b32_e64 v94, v110, v169, vcc                     // 00000000D340: D100005E 01AB536E
	v_cmp_gt_i32_e32 vcc, 1, v80                               // 00000000D348: 7D88A081
	s_nop 1                                                    // 00000000D34C: BF800001
	v_cndmask_b32_e64 v95, v111, v169, vcc                     // 00000000D350: D100005F 01AB536F
	v_cmp_gt_i32_e32 vcc, 2, v80                               // 00000000D358: 7D88A082
	s_nop 1                                                    // 00000000D35C: BF800001
	v_cndmask_b32_e64 v96, v112, v169, vcc                     // 00000000D360: D1000060 01AB5370
	v_cmp_gt_i32_e32 vcc, 3, v80                               // 00000000D368: 7D88A083
	s_nop 1                                                    // 00000000D36C: BF800001
	v_cndmask_b32_e64 v97, v113, v169, vcc                     // 00000000D370: D1000061 01AB5371
	v_cmp_gt_i32_e32 vcc, 8, v80                               // 00000000D378: 7D88A088
	s_nop 1                                                    // 00000000D37C: BF800001
	v_cndmask_b32_e64 v98, v114, v169, vcc                     // 00000000D380: D1000062 01AB5372
	v_cmp_gt_i32_e32 vcc, 9, v80                               // 00000000D388: 7D88A089
	s_nop 1                                                    // 00000000D38C: BF800001
	v_cndmask_b32_e64 v99, v115, v169, vcc                     // 00000000D390: D1000063 01AB5373
	v_cmp_gt_i32_e32 vcc, 10, v80                              // 00000000D398: 7D88A08A
	s_nop 1                                                    // 00000000D39C: BF800001
	v_cndmask_b32_e64 v100, v116, v169, vcc                    // 00000000D3A0: D1000064 01AB5374
	v_cmp_gt_i32_e32 vcc, 11, v80                              // 00000000D3A8: 7D88A08B
	s_nop 1                                                    // 00000000D3AC: BF800001
	v_cndmask_b32_e64 v101, v117, v169, vcc                    // 00000000D3B0: D1000065 01AB5375
	v_cmp_gt_i32_e32 vcc, 16, v80                              // 00000000D3B8: 7D88A090
	s_nop 1                                                    // 00000000D3BC: BF800001
	v_cndmask_b32_e64 v102, v118, v169, vcc                    // 00000000D3C0: D1000066 01AB5376
	v_cmp_gt_i32_e32 vcc, 17, v80                              // 00000000D3C8: 7D88A091
	s_nop 1                                                    // 00000000D3CC: BF800001
	v_cndmask_b32_e64 v103, v119, v169, vcc                    // 00000000D3D0: D1000067 01AB5377
	v_cmp_gt_i32_e32 vcc, 18, v80                              // 00000000D3D8: 7D88A092
	s_nop 1                                                    // 00000000D3DC: BF800001
	v_cndmask_b32_e64 v104, v120, v169, vcc                    // 00000000D3E0: D1000068 01AB5378
	v_cmp_gt_i32_e32 vcc, 19, v80                              // 00000000D3E8: 7D88A093
	s_nop 1                                                    // 00000000D3EC: BF800001
	v_cndmask_b32_e64 v105, v121, v169, vcc                    // 00000000D3F0: D1000069 01AB5379
	v_cmp_gt_i32_e32 vcc, 24, v80                              // 00000000D3F8: 7D88A098
	s_nop 1                                                    // 00000000D3FC: BF800001
	v_cndmask_b32_e64 v106, v122, v169, vcc                    // 00000000D400: D100006A 01AB537A
	v_cmp_gt_i32_e32 vcc, 25, v80                              // 00000000D408: 7D88A099
	s_nop 1                                                    // 00000000D40C: BF800001
	v_cndmask_b32_e64 v107, v123, v169, vcc                    // 00000000D410: D100006B 01AB537B
	v_cmp_gt_i32_e32 vcc, 26, v80                              // 00000000D418: 7D88A09A
	s_nop 1                                                    // 00000000D41C: BF800001
	v_cndmask_b32_e64 v108, v124, v169, vcc                    // 00000000D420: D100006C 01AB537C
	v_cmp_gt_i32_e32 vcc, 27, v80                              // 00000000D428: 7D88A09B
	s_nop 1                                                    // 00000000D42C: BF800001
	v_cndmask_b32_e64 v109, v125, v169, vcc                    // 00000000D430: D100006D 01AB537D
	s_and_b32 s17, s17, 3                                      // 00000000D438: 86118311
	v_max_f32_e32 v80, v64, v65                                // 00000000D43C: 16A08340
	v_max3_f32 v80, v66, v67, v80                              // 00000000D440: D1D30050 05428742
	v_max3_f32 v80, v68, v69, v80                              // 00000000D448: D1D30050 05428B44
	v_max3_f32 v80, v70, v71, v80                              // 00000000D450: D1D30050 05428F46
	v_max3_f32 v80, v72, v73, v80                              // 00000000D458: D1D30050 05429348
	v_max3_f32 v80, v74, v75, v80                              // 00000000D460: D1D30050 0542974A
	v_max3_f32 v80, v76, v77, v80                              // 00000000D468: D1D30050 05429B4C
	v_max3_f32 v80, v78, v79, v80                              // 00000000D470: D1D30050 05429F4E
	v_max_f32_e32 v81, v94, v95                                // 00000000D478: 16A2BF5E
	v_max3_f32 v81, v96, v97, v81                              // 00000000D47C: D1D30051 0546C360
	v_max3_f32 v81, v98, v99, v81                              // 00000000D484: D1D30051 0546C762
	v_max3_f32 v81, v100, v101, v81                            // 00000000D48C: D1D30051 0546CB64
	v_max3_f32 v81, v102, v103, v81                            // 00000000D494: D1D30051 0546CF66
	v_max3_f32 v81, v104, v105, v81                            // 00000000D49C: D1D30051 0546D368
	v_max3_f32 v81, v106, v107, v81                            // 00000000D4A4: D1D30051 0546D76A
	v_max3_f32 v81, v108, v109, v81                            // 00000000D4AC: D1D30051 0546DB6C
	v_max_f32_e32 v80, v80, v81                                // 00000000D4B4: 16A0A350
	v_mov_b32_e32 v81, v80                                     // 00000000D4B8: 7EA20350
	s_nop 1                                                    // 00000000D4BC: BF800001
	v_permlane32_swap_b32_e32 v80, v81                         // 00000000D4C0: 7EA0B551
	v_max_f32_e32 v80, v80, v81                                // 00000000D4C4: 16A0A350
	v_mul_f32_e32 v81, v142, v80                               // 00000000D4C8: 0AA2A18E
	v_max_f32_e32 v81, v178, v81                               // 00000000D4CC: 16A2A3B2
	v_sub_f32_e32 v82, v81, v178                               // 00000000D4D0: 04A56551
	v_cmp_lt_f32_e32 vcc, s91, v82                             // 00000000D4D4: 7C82A45B
	s_cmp_lg_u64 vcc, 0                                        // 00000000D4D8: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000D4DC: 859280C1
	s_and_b64 s[20:21], s[18:19], exec                         // 00000000D4E0: 86947E12
	s_cselect_b32 s20, 1, 0                                    // 00000000D4E4: 85148081
	s_cselect_b64 s[20:21], -1, 0                              // 00000000D4E8: 859480C1
	v_cndmask_b32_e64 v111, v178, v81, s[20:21]                // 00000000D4EC: D100006F 0052A3B2
	v_fma_f32 v80, v80, v142, -v111                            // 00000000D4F4: D1CB0050 85BF1D50
	v_floor_f32_e32 v80, v80                                   // 00000000D4FC: 7EA03F50
	v_med3_f32 v80, v80, s89, 0                                // 00000000D500: D1D60050 0200B350
	v_cvt_i32_f32_e32 v81, v80                                 // 00000000D508: 7EA21150
	v_add_u32_e32 v112, 0x7f, v81                              // 00000000D50C: 68E0A2FF 0000007F
	v_lshlrev_b32_e32 v81, 23, v112                            // 00000000D514: 24A2E097
	v_add_f32_e32 v80, v111, v80                               // 00000000D518: 02A0A16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000D51C: 04DCA0FF 40C00000
	s_lshl_b32 s20, s17, 13                                    // 00000000D524: 8E148D11
	s_add_u32 s20, s82, s20                                    // 00000000D528: 80141452
	v_add3_u32 v80, s20, v173, v172                            // 00000000D52C: D1FF0050 06B35A14
	s_waitcnt vmcnt(0)                                         // 00000000D534: BF8C0F70
	ds_read_b64_tr_b8 v[114:115], v80                          // 00000000D538: D9C40000 72000050
	ds_read_b64_tr_b8 v[116:117], v80 offset:1024              // 00000000D540: D9C40400 74000050
	ds_read_b64_tr_b8 v[118:119], v80 offset:2048              // 00000000D548: D9C40800 76000050
	ds_read_b64_tr_b8 v[120:121], v80 offset:3072              // 00000000D550: D9C40C00 78000050
	ds_read_b64_tr_b8 v[206:207], v80 offset:256               // 00000000D558: D9C40100 CE000050
	ds_read_b64_tr_b8 v[208:209], v80 offset:1280              // 00000000D560: D9C40500 D0000050
	ds_read_b64_tr_b8 v[210:211], v80 offset:2304              // 00000000D568: D9C40900 D2000050
	ds_read_b64_tr_b8 v[212:213], v80 offset:3328              // 00000000D570: D9C40D00 D4000050
	ds_read_b64_tr_b8 v[82:83], v80 offset:512                 // 00000000D578: D9C40200 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1536                // 00000000D580: D9C40600 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2560                // 00000000D588: D9C40A00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3584                // 00000000D590: D9C40E00 58000050
	s_waitcnt lgkmcnt(4)                                       // 00000000D598: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[114:121], v[134:141], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000D59C: D3AC0000 000369AA D3AE0830 04C30D72
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[206:213], v[134:141], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000D5AC: D3AC0000 000369AA D3AE0820 04830DCE
	ds_read_b64_tr_b8 v[114:115], v80 offset:768               // 00000000D5BC: D9C40300 72000050
	ds_read_b64_tr_b8 v[116:117], v80 offset:1792              // 00000000D5C4: D9C40700 74000050
	ds_read_b64_tr_b8 v[118:119], v80 offset:2816              // 00000000D5CC: D9C40B00 76000050
	ds_read_b64_tr_b8 v[120:121], v80 offset:3840              // 00000000D5D4: D9C40F00 78000050
	s_add_u32 s20, s78, 4                                      // 00000000D5DC: 8014844E
	s_cmp_ge_u32 s20, s98                                      // 00000000D5E0: BF096214
	s_cbranch_scc1 13                                          // 00000000D5E4: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2e1c>
	s_lshl_b32 s21, s17, 14                                    // 00000000D5E8: 8E158E11
	s_mul_i32 s20, s20, s6                                     // 00000000D5EC: 92140614
	s_or_b32 s21, s21, s72                                     // 00000000D5F0: 87154815
	s_lshl_b32 s20, s20, 6                                     // 00000000D5F4: 8E148614
	s_mov_b32 m0, s21                                          // 00000000D5F8: BEFC0015
	s_nop 0                                                    // 00000000D5FC: BF800000
	buffer_load_dwordx4 v164, s[68:71], s20 offen lds          // 00000000D600: E05D1000 141100A4
	s_or_b32 m0, s21, 0x2000                                   // 00000000D608: 877CFF15 00002000
	s_nop 0                                                    // 00000000D610: BF800000
	buffer_load_dwordx4 v165, s[68:71], s20 offen lds          // 00000000D614: E05D1000 141100A5
	s_add_u32 s20, s78, 2                                      // 00000000D61C: 8014824E
	s_cmp_ge_u32 s20, s98                                      // 00000000D620: BF096214
	s_cbranch_scc1 9                                           // 00000000D624: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2e4c>
	s_xor_b32 s17, s17, 2                                      // 00000000D628: 88118211
	s_mul_i32 s20, s20, s7                                     // 00000000D62C: 92140714
	s_lshl_b32 s17, s17, 13                                    // 00000000D630: 8E118D11
	s_lshl_b32 s20, s20, 6                                     // 00000000D634: 8E148614
	s_add_u32 s17, s82, s17                                    // 00000000D638: 80111152
	s_add_u32 m0, s17, s72                                     // 00000000D63C: 807C4811
	s_nop 0                                                    // 00000000D640: BF800000
	buffer_load_dwordx4 v166, s[64:67], s20 offen lds          // 00000000D644: E05D1000 141000A6
	s_waitcnt lgkmcnt(0)                                       // 00000000D64C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[134:141], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000D650: D3AC0000 000369AA D3AE0810 04430D52
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[134:141], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000D660: D3AC0000 000369AA D3AE0800 04030D72
	v_mov_b32_e32 v143, v142                                   // 00000000D670: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000D674: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000D67C: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D684: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D68C: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D694: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D69C: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6A4: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6AC: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6B4: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6BC: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6C4: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6CC: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6D4: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6DC: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6E4: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D6EC: D3B00042 1DBB1D60
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000D6F4: 86927E12
	s_cbranch_scc0 68                                          // 00000000D6F8: BF840044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x300c>
	v_sub_f32_e32 v96, v178, v111                              // 00000000D6FC: 04C0DFB2
	v_exp_f32_e32 v96, v96                                     // 00000000D700: 7EC04160
	s_nop 0                                                    // 00000000D704: BF800000
	v_pk_mul_f32 v[62:63], v[96:97], v[62:63] op_sel_hi:[0,1]  // 00000000D708: D3B1403E 10027D60
	v_pk_mul_f32 v[60:61], v[96:97], v[60:61] op_sel_hi:[0,1]  // 00000000D710: D3B1403C 10027960
	v_pk_mul_f32 v[58:59], v[96:97], v[58:59] op_sel_hi:[0,1]  // 00000000D718: D3B1403A 10027560
	v_pk_mul_f32 v[56:57], v[96:97], v[56:57] op_sel_hi:[0,1]  // 00000000D720: D3B14038 10027160
	v_pk_mul_f32 v[54:55], v[96:97], v[54:55] op_sel_hi:[0,1]  // 00000000D728: D3B14036 10026D60
	v_pk_mul_f32 v[52:53], v[96:97], v[52:53] op_sel_hi:[0,1]  // 00000000D730: D3B14034 10026960
	v_pk_mul_f32 v[50:51], v[96:97], v[50:51] op_sel_hi:[0,1]  // 00000000D738: D3B14032 10026560
	v_pk_mul_f32 v[48:49], v[96:97], v[48:49] op_sel_hi:[0,1]  // 00000000D740: D3B14030 10026160
	v_pk_mul_f32 v[46:47], v[96:97], v[46:47] op_sel_hi:[0,1]  // 00000000D748: D3B1402E 10025D60
	v_pk_mul_f32 v[44:45], v[96:97], v[44:45] op_sel_hi:[0,1]  // 00000000D750: D3B1402C 10025960
	v_pk_mul_f32 v[42:43], v[96:97], v[42:43] op_sel_hi:[0,1]  // 00000000D758: D3B1402A 10025560
	v_pk_mul_f32 v[40:41], v[96:97], v[40:41] op_sel_hi:[0,1]  // 00000000D760: D3B14028 10025160
	v_pk_mul_f32 v[38:39], v[96:97], v[38:39] op_sel_hi:[0,1]  // 00000000D768: D3B14026 10024D60
	v_pk_mul_f32 v[36:37], v[96:97], v[36:37] op_sel_hi:[0,1]  // 00000000D770: D3B14024 10024960
	v_pk_mul_f32 v[34:35], v[96:97], v[34:35] op_sel_hi:[0,1]  // 00000000D778: D3B14022 10024560
	v_pk_mul_f32 v[32:33], v[96:97], v[32:33] op_sel_hi:[0,1]  // 00000000D780: D3B14020 10024160
	v_pk_mul_f32 v[30:31], v[96:97], v[30:31] op_sel_hi:[0,1]  // 00000000D788: D3B1401E 10023D60
	v_pk_mul_f32 v[28:29], v[96:97], v[28:29] op_sel_hi:[0,1]  // 00000000D790: D3B1401C 10023960
	v_pk_mul_f32 v[26:27], v[96:97], v[26:27] op_sel_hi:[0,1]  // 00000000D798: D3B1401A 10023560
	v_pk_mul_f32 v[24:25], v[96:97], v[24:25] op_sel_hi:[0,1]  // 00000000D7A0: D3B14018 10023160
	v_pk_mul_f32 v[22:23], v[96:97], v[22:23] op_sel_hi:[0,1]  // 00000000D7A8: D3B14016 10022D60
	v_pk_mul_f32 v[20:21], v[96:97], v[20:21] op_sel_hi:[0,1]  // 00000000D7B0: D3B14014 10022960
	v_pk_mul_f32 v[18:19], v[96:97], v[18:19] op_sel_hi:[0,1]  // 00000000D7B8: D3B14012 10022560
	v_pk_mul_f32 v[16:17], v[96:97], v[16:17] op_sel_hi:[0,1]  // 00000000D7C0: D3B14010 10022160
	v_pk_mul_f32 v[14:15], v[96:97], v[14:15] op_sel_hi:[0,1]  // 00000000D7C8: D3B1400E 10021D60
	v_pk_mul_f32 v[12:13], v[96:97], v[12:13] op_sel_hi:[0,1]  // 00000000D7D0: D3B1400C 10021960
	v_pk_mul_f32 v[10:11], v[96:97], v[10:11] op_sel_hi:[0,1]  // 00000000D7D8: D3B1400A 10021560
	v_pk_mul_f32 v[8:9], v[96:97], v[8:9] op_sel_hi:[0,1]      // 00000000D7E0: D3B14008 10021160
	v_pk_mul_f32 v[6:7], v[96:97], v[6:7] op_sel_hi:[0,1]      // 00000000D7E8: D3B14006 10020D60
	v_pk_mul_f32 v[4:5], v[96:97], v[4:5] op_sel_hi:[0,1]      // 00000000D7F0: D3B14004 10020960
	v_pk_mul_f32 v[2:3], v[96:97], v[2:3] op_sel_hi:[0,1]      // 00000000D7F8: D3B14002 10020560
	v_pk_mul_f32 v[0:1], v[96:97], v[0:1] op_sel_hi:[0,1]      // 00000000D800: D3B14000 10020160
	v_mul_f32_e32 v179, v179, v96                              // 00000000D808: 0B66C1B3
	s_waitcnt vmcnt(0)                                         // 00000000D80C: BF8C0F70
	s_barrier                                                  // 00000000D810: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000D814: 804E814E
	v_mov_b32_e32 v180, v112                                   // 00000000D818: 7F680370
	v_mov_b32_e32 v178, v111                                   // 00000000D81C: 7F64036F
	s_branch 207                                               // 00000000D820: BF8200CF <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3360>
	s_cmp_eq_u32 s78, s77                                      // 00000000D824: BF064D4E
	s_cbranch_scc0 169                                         // 00000000D828: BF8400A9 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x32d0>
	s_setprio 0                                                // 00000000D82C: BF8F0000
	v_exp_f32_e32 v104, v80                                    // 00000000D830: 7ED04150
	v_exp_f32_e32 v105, v81                                    // 00000000D834: 7ED24151
	v_exp_f32_e32 v108, v64                                    // 00000000D838: 7ED84140
	v_exp_f32_e32 v109, v65                                    // 00000000D83C: 7EDA4141
	v_exp_f32_e32 v112, v84                                    // 00000000D840: 7EE04154
	v_exp_f32_e32 v113, v85                                    // 00000000D844: 7EE24155
	v_exp_f32_e32 v116, v68                                    // 00000000D848: 7EE84144
	v_exp_f32_e32 v117, v69                                    // 00000000D84C: 7EEA4145
	v_exp_f32_e32 v120, v88                                    // 00000000D850: 7EF04158
	v_exp_f32_e32 v121, v89                                    // 00000000D854: 7EF24159
	v_exp_f32_e32 v124, v72                                    // 00000000D858: 7EF84148
	v_exp_f32_e32 v125, v73                                    // 00000000D85C: 7EFA4149
	v_exp_f32_e32 v136, v92                                    // 00000000D860: 7F10415C
	v_exp_f32_e32 v137, v93                                    // 00000000D864: 7F12415D
	v_exp_f32_e32 v140, v76                                    // 00000000D868: 7F18414C
	v_exp_f32_e32 v141, v77                                    // 00000000D86C: 7F1A414D
	v_mov_b32_e32 v96, 0                                       // 00000000D870: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000D874: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000D878: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000D87C: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000D880: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000D884: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000D888: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000D88C: 7ECE0280
	v_exp_f32_e32 v106, v82                                    // 00000000D890: 7ED44152
	v_exp_f32_e32 v107, v83                                    // 00000000D894: 7ED64153
	v_exp_f32_e32 v110, v66                                    // 00000000D898: 7EDC4142
	v_exp_f32_e32 v111, v67                                    // 00000000D89C: 7EDE4143
	v_exp_f32_e32 v114, v86                                    // 00000000D8A0: 7EE44156
	v_exp_f32_e32 v115, v87                                    // 00000000D8A4: 7EE64157
	v_exp_f32_e32 v118, v70                                    // 00000000D8A8: 7EEC4146
	v_exp_f32_e32 v119, v71                                    // 00000000D8AC: 7EEE4147
	v_exp_f32_e32 v122, v90                                    // 00000000D8B0: 7EF4415A
	v_exp_f32_e32 v123, v91                                    // 00000000D8B4: 7EF6415B
	v_exp_f32_e32 v134, v74                                    // 00000000D8B8: 7F0C414A
	v_exp_f32_e32 v135, v75                                    // 00000000D8BC: 7F0E414B
	v_exp_f32_e32 v138, v94                                    // 00000000D8C0: 7F14415E
	v_exp_f32_e32 v139, v95                                    // 00000000D8C4: 7F16415F
	v_exp_f32_e32 v143, v78                                    // 00000000D8C8: 7F1E414E
	v_exp_f32_e32 v181, v79                                    // 00000000D8CC: 7F6A414F
	v_cvt_pk_fp8_f32 v96, v104, v105                           // 00000000D8D0: D2A20060 0002D368
	v_cvt_pk_fp8_f32 v100, v108, v109                          // 00000000D8D8: D2A20064 0002DB6C
	v_cvt_pk_fp8_f32 v97, v112, v113                           // 00000000D8E0: D2A20061 0002E370
	v_cvt_pk_fp8_f32 v101, v116, v117                          // 00000000D8E8: D2A20065 0002EB74
	v_cvt_pk_fp8_f32 v98, v120, v121                           // 00000000D8F0: D2A20062 0002F378
	v_cvt_pk_fp8_f32 v102, v124, v125                          // 00000000D8F8: D2A20066 0002FB7C
	v_cvt_pk_fp8_f32 v99, v136, v137                           // 00000000D900: D2A20063 00031388
	v_cvt_pk_fp8_f32 v103, v140, v141                          // 00000000D908: D2A20067 00031B8C
	v_cvt_pk_fp8_f32 v96, v106, v107 op_sel:[0,0,1]            // 00000000D910: D2A24060 0002D76A
	v_cvt_pk_fp8_f32 v100, v110, v111 op_sel:[0,0,1]           // 00000000D918: D2A24064 0002DF6E
	v_cvt_pk_fp8_f32 v97, v114, v115 op_sel:[0,0,1]            // 00000000D920: D2A24061 0002E772
	v_cvt_pk_fp8_f32 v101, v118, v119 op_sel:[0,0,1]           // 00000000D928: D2A24065 0002EF76
	v_cvt_pk_fp8_f32 v98, v122, v123 op_sel:[0,0,1]            // 00000000D930: D2A24062 0002F77A
	v_cvt_pk_fp8_f32 v102, v134, v135 op_sel:[0,0,1]           // 00000000D938: D2A24066 00030F86
	v_cvt_pk_fp8_f32 v99, v138, v139 op_sel:[0,0,1]            // 00000000D940: D2A24063 0003178A
	v_cvt_pk_fp8_f32 v103, v143, v181 op_sel:[0,0,1]           // 00000000D948: D2A24067 00036B8F
	s_barrier                                                  // 00000000D950: BF8A0000
	s_setprio 1                                                // 00000000D954: BF8F0001
	s_waitcnt vmcnt(0)                                         // 00000000D958: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[104:107], v[126:133], v[96:103], 0// 00000000D95C: D3AD0068 0202C17E
	s_add_u32 s17, s77, s80                                    // 00000000D964: 8011504D
	s_and_b32 s17, s17, 3                                      // 00000000D968: 86118311
	s_lshl_b32 s18, s17, 13                                    // 00000000D96C: 8E128D11
	s_add_u32 s18, s82, s18                                    // 00000000D970: 80121252
	s_nop 7                                                    // 00000000D974: BF800007
	v_add3_u32 v105, s18, v173, v172                           // 00000000D978: D1FF0069 06B35A12
	ds_read_b64_tr_b8 v[114:115], v105                         // 00000000D980: D9C40000 72000069
	ds_read_b64_tr_b8 v[116:117], v105 offset:1024             // 00000000D988: D9C40400 74000069
	ds_read_b64_tr_b8 v[118:119], v105 offset:2048             // 00000000D990: D9C40800 76000069
	ds_read_b64_tr_b8 v[120:121], v105 offset:3072             // 00000000D998: D9C40C00 78000069
	ds_read_b64_tr_b8 v[134:135], v105 offset:256              // 00000000D9A0: D9C40100 86000069
	ds_read_b64_tr_b8 v[136:137], v105 offset:1280             // 00000000D9A8: D9C40500 88000069
	ds_read_b64_tr_b8 v[138:139], v105 offset:2304             // 00000000D9B0: D9C40900 8A000069
	ds_read_b64_tr_b8 v[140:141], v105 offset:3328             // 00000000D9B8: D9C40D00 8C000069
	ds_read_b64_tr_b8 v[106:107], v105 offset:512              // 00000000D9C0: D9C40200 6A000069
	ds_read_b64_tr_b8 v[108:109], v105 offset:1536             // 00000000D9C8: D9C40600 6C000069
	ds_read_b64_tr_b8 v[110:111], v105 offset:2560             // 00000000D9D0: D9C40A00 6E000069
	ds_read_b64_tr_b8 v[112:113], v105 offset:3584             // 00000000D9D8: D9C40E00 70000069
	s_waitcnt lgkmcnt(4)                                       // 00000000D9E0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[114:121], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000D9E4: D3AC0000 000369AA D3AE0830 04C2C172
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000D9F4: D3AC0000 000369AA D3AE0820 0482C186
	ds_read_b64_tr_b8 v[114:115], v105 offset:768              // 00000000DA04: D9C40300 72000069
	ds_read_b64_tr_b8 v[116:117], v105 offset:1792             // 00000000DA0C: D9C40700 74000069
	ds_read_b64_tr_b8 v[118:119], v105 offset:2816             // 00000000DA14: D9C40B00 76000069
	ds_read_b64_tr_b8 v[120:121], v105 offset:3840             // 00000000DA1C: D9C40F00 78000069
	s_add_u32 s18, s77, 4                                      // 00000000DA24: 8012844D
	s_cmp_ge_u32 s18, s98                                      // 00000000DA28: BF096212
	s_cbranch_scc1 13                                          // 00000000DA2C: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3264>
	s_lshl_b32 s19, s17, 14                                    // 00000000DA30: 8E138E11
	s_mul_i32 s18, s18, s6                                     // 00000000DA34: 92120612
	s_or_b32 s19, s19, s72                                     // 00000000DA38: 87134813
	s_lshl_b32 s18, s18, 6                                     // 00000000DA3C: 8E128612
	s_mov_b32 m0, s19                                          // 00000000DA40: BEFC0013
	s_nop 0                                                    // 00000000DA44: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000DA48: E05D1000 121100A4
	s_or_b32 m0, s19, 0x2000                                   // 00000000DA50: 877CFF13 00002000
	s_nop 0                                                    // 00000000DA58: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000DA5C: E05D1000 121100A5
	s_add_u32 s18, s77, 2                                      // 00000000DA64: 8012824D
	s_cmp_ge_u32 s18, s98                                      // 00000000DA68: BF096212
	s_cbranch_scc1 9                                           // 00000000DA6C: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3294>
	s_xor_b32 s17, s17, 2                                      // 00000000DA70: 88118211
	s_mul_i32 s18, s18, s7                                     // 00000000DA74: 92120712
	s_lshl_b32 s17, s17, 13                                    // 00000000DA78: 8E118D11
	s_lshl_b32 s18, s18, 6                                     // 00000000DA7C: 8E128612
	s_add_u32 s17, s82, s17                                    // 00000000DA80: 80111152
	s_add_u32 m0, s17, s72                                     // 00000000DA84: 807C4811
	s_nop 0                                                    // 00000000DA88: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000DA8C: E05D1000 121000A6
	v_lshlrev_b32_e32 v105, 23, v180                           // 00000000DA94: 24D36897
	v_fma_f32 v179, v104, v105, v179                           // 00000000DA98: D1CB00B3 06CED368
	s_waitcnt lgkmcnt(0)                                       // 00000000DAA0: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[106:113], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000DAA4: D3AC0000 000369AA D3AE0810 0442C16A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000DAB4: D3AC0000 000369AA D3AE0800 0402C172
	s_barrier                                                  // 00000000DAC4: BF8A0000
	s_add_u32 s78, s77, 1                                      // 00000000DAC8: 804E814D
	s_branch 36                                                // 00000000DACC: BF820024 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3360>
	s_barrier                                                  // 00000000DAD0: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000DAD4: BF8C0F70
	s_add_u32 s17, s78, 4                                      // 00000000DAD8: 8011844E
	s_cmp_ge_u32 s17, s98                                      // 00000000DADC: BF096211
	s_cbranch_scc1 15                                          // 00000000DAE0: BF85000F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3320>
	s_add_u32 s18, s78, s80                                    // 00000000DAE4: 8012504E
	s_and_b32 s18, s18, 3                                      // 00000000DAE8: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000DAEC: 8E128E12
	s_mul_i32 s17, s17, s6                                     // 00000000DAF0: 92110611
	s_or_b32 s18, s18, s72                                     // 00000000DAF4: 87124812
	s_lshl_b32 s17, s17, 6                                     // 00000000DAF8: 8E118611
	s_mov_b32 m0, s18                                          // 00000000DAFC: BEFC0012
	s_nop 0                                                    // 00000000DB00: BF800000
	buffer_load_dwordx4 v164, s[68:71], s17 offen lds          // 00000000DB04: E05D1000 111100A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000DB0C: 877CFF12 00002000
	s_nop 0                                                    // 00000000DB14: BF800000
	buffer_load_dwordx4 v165, s[68:71], s17 offen lds          // 00000000DB18: E05D1000 111100A5
	s_add_u32 s17, s78, 2                                      // 00000000DB20: 8011824E
	s_cmp_ge_u32 s17, s98                                      // 00000000DB24: BF096211
	s_cbranch_scc1 11                                          // 00000000DB28: BF85000B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3358>
	s_add_u32 s18, s78, s80                                    // 00000000DB2C: 8012504E
	s_and_b32 s18, s18, 3                                      // 00000000DB30: 86128312
	s_xor_b32 s18, s18, 2                                      // 00000000DB34: 88128212
	s_mul_i32 s17, s17, s7                                     // 00000000DB38: 92110711
	s_lshl_b32 s18, s18, 13                                    // 00000000DB3C: 8E128D12
	s_lshl_b32 s17, s17, 6                                     // 00000000DB40: 8E118611
	s_add_u32 s18, s82, s18                                    // 00000000DB44: 80121252
	s_add_u32 m0, s18, s72                                     // 00000000DB48: 807C4812
	s_nop 0                                                    // 00000000DB4C: BF800000
	buffer_load_dwordx4 v166, s[64:67], s17 offen lds          // 00000000DB50: E05D1000 111000A6
	s_barrier                                                  // 00000000DB58: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000DB5C: 804E814E
	s_add_u32 s17, s78, 1                                      // 00000000DB60: 8011814E
	s_cmp_ge_u32 s17, s98                                      // 00000000DB64: BF096211
	s_cbranch_scc1 819                                         // 00000000DB68: BF850333 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4038>
	s_cmp_ge_u32 s78, s77                                      // 00000000DB6C: BF094D4E
	s_cbranch_scc1 588                                         // 00000000DB70: BF85024C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3ca4>
	s_setprio 0                                                // 00000000DB74: BF8F0000
	v_exp_f32_e32 v64, v64                                     // 00000000DB78: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000DB7C: 7E824141
	s_add_u32 s17, s78, s80                                    // 00000000DB80: 8011504E
	s_add_u32 s18, s17, 1                                      // 00000000DB84: 80128111
	s_and_b32 s18, s18, 3                                      // 00000000DB88: 86128312
	v_mov_b32_e32 v138, 0                                      // 00000000DB8C: 7F140280
	s_lshl_b32 s18, s18, 14                                    // 00000000DB90: 8E128E12
	v_exp_f32_e32 v80, v80                                     // 00000000DB94: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000DB98: 7EA24151
	v_exp_f32_e32 v84, v84                                     // 00000000DB9C: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000DBA0: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000DBA4: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000DBA8: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000DBAC: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000DBB0: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000DBB4: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000DBB8: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000DBBC: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000DBC0: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000DBC4: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000DBC8: 7E9A414D
	v_cvt_pk_fp8_f32 v138, v64, v65                            // 00000000DBCC: D2A2008A 00028340
	v_or_b32_e32 v64, s18, v161                                // 00000000DBD4: 28814212
	v_or_b32_e32 v65, s18, v162                                // 00000000DBD8: 28834412
	ds_read_b128 v[96:99], v64                                 // 00000000DBDC: D9FE0000 60000040
	ds_read_b128 v[100:103], v64 offset:16                     // 00000000DBE4: D9FE0010 64000040
	ds_read_b128 v[206:209], v64 offset:8192                   // 00000000DBEC: D9FE2000 CE000040
	ds_read_b128 v[210:213], v64 offset:8208                   // 00000000DBF4: D9FE2010 D2000040
	ds_read_b128 v[214:217], v65                               // 00000000DBFC: D9FE0000 D6000041
	ds_read_b128 v[218:221], v65 offset:16                     // 00000000DC04: D9FE0010 DA000041
	ds_read_b128 v[222:225], v65 offset:8192                   // 00000000DC0C: D9FE2000 DE000041
	ds_read_b128 v[226:229], v65 offset:8208                   // 00000000DC14: D9FE2010 E2000041
	v_mov_b32_e32 v134, 0                                      // 00000000DC1C: 7F0C0280
	v_mov_b32_e32 v135, 0                                      // 00000000DC20: 7F0E0280
	v_mov_b32_e32 v139, 0                                      // 00000000DC24: 7F160280
	v_mov_b32_e32 v136, 0                                      // 00000000DC28: 7F100280
	v_mov_b32_e32 v140, 0                                      // 00000000DC2C: 7F180280
	v_mov_b32_e32 v137, 0                                      // 00000000DC30: 7F120280
	v_mov_b32_e32 v141, 0                                      // 00000000DC34: 7F1A0280
	v_exp_f32_e32 v82, v82                                     // 00000000DC38: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000DC3C: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000DC40: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000DC44: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000DC48: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000DC4C: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000DC50: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000DC54: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000DC58: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000DC5C: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000DC60: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000DC64: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000DC68: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000DC6C: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000DC70: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000DC74: 7E9E414F
	v_cvt_pk_fp8_f32 v134, v80, v81                            // 00000000DC78: D2A20086 0002A350
	v_cvt_pk_fp8_f32 v135, v84, v85                            // 00000000DC80: D2A20087 0002AB54
	v_cvt_pk_fp8_f32 v139, v68, v69                            // 00000000DC88: D2A2008B 00028B44
	v_cvt_pk_fp8_f32 v136, v88, v89                            // 00000000DC90: D2A20088 0002B358
	v_cvt_pk_fp8_f32 v140, v72, v73                            // 00000000DC98: D2A2008C 00029348
	v_cvt_pk_fp8_f32 v137, v92, v93                            // 00000000DCA0: D2A20089 0002BB5C
	v_cvt_pk_fp8_f32 v141, v76, v77                            // 00000000DCA8: D2A2008D 00029B4C
	v_cvt_pk_fp8_f32 v134, v82, v83 op_sel:[0,0,1]             // 00000000DCB0: D2A24086 0002A752
	v_cvt_pk_fp8_f32 v138, v66, v67 op_sel:[0,0,1]             // 00000000DCB8: D2A2408A 00028742
	v_cvt_pk_fp8_f32 v135, v86, v87 op_sel:[0,0,1]             // 00000000DCC0: D2A24087 0002AF56
	v_cvt_pk_fp8_f32 v139, v70, v71 op_sel:[0,0,1]             // 00000000DCC8: D2A2408B 00028F46
	v_cvt_pk_fp8_f32 v136, v90, v91 op_sel:[0,0,1]             // 00000000DCD0: D2A24088 0002B75A
	v_cvt_pk_fp8_f32 v140, v74, v75 op_sel:[0,0,1]             // 00000000DCD8: D2A2408C 0002974A
	v_cvt_pk_fp8_f32 v137, v94, v95 op_sel:[0,0,1]             // 00000000DCE0: D2A24089 0002BF5E
	v_cvt_pk_fp8_f32 v141, v78, v79 op_sel:[0,0,1]             // 00000000DCE8: D2A2408D 00029F4E
	s_barrier                                                  // 00000000DCF0: BF8A0000
	s_setprio 1                                                // 00000000DCF4: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[134:141], 0// 00000000DCF8: D3AD0040 02030D7E
	s_nop 11                                                   // 00000000DD00: BF80000B
	v_lshlrev_b32_e32 v65, 23, v180                            // 00000000DD04: 24836897
	v_fma_f32 v179, v64, v65, v179                             // 00000000DD08: D1CB00B3 06CE8340
	s_waitcnt lgkmcnt(0)                                       // 00000000DD10: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[96:103], v[182:189], 0// 00000000DD14: D3AE0050 02036D60
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[206:213], v[182:189], 0// 00000000DD1C: D3AE006E 02036DCE
	v_or_b32_e32 v64, s18, v163                                // 00000000DD24: 28814612
	ds_read_b128 v[66:69], v64                                 // 00000000DD28: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 00000000DD30: D9FE0010 46000040
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[214:221], v[190:197], v[80:95]// 00000000DD38: D3AE0050 05437DD6
	ds_read_b128 v[96:99], v64 offset:8192                     // 00000000DD40: D9FE2000 60000040
	ds_read_b128 v[100:103], v64 offset:8208                   // 00000000DD48: D9FE2010 64000040
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[222:229], v[190:197], v[110:125]// 00000000DD50: D3AE006E 05BB7DDE
	s_waitcnt lgkmcnt(0)                                       // 00000000DD58: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[66:73], v[198:205], v[80:95]// 00000000DD5C: D3AE0050 05438D42
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[96:103], v[198:205], v[110:125]// 00000000DD64: D3AE006E 05BB8D60
	s_lshl_b32 s18, s78, 6                                     // 00000000DD6C: 8E12864E
	s_add_u32 s20, s18, 64                                     // 00000000DD70: 8014C012
	s_sub_u32 s18, s3, s20                                     // 00000000DD74: 80921403
	s_sub_i32 s18, s18, 0                                      // 00000000DD78: 81928012
	s_nop 1                                                    // 00000000DD7C: BF800001
	v_mov_b32_e32 v64, v80                                     // 00000000DD80: 7E800350
	v_mov_b32_e32 v65, v81                                     // 00000000DD84: 7E820351
	v_mov_b32_e32 v66, v82                                     // 00000000DD88: 7E840352
	v_mov_b32_e32 v67, v83                                     // 00000000DD8C: 7E860353
	v_mov_b32_e32 v68, v84                                     // 00000000DD90: 7E880354
	v_mov_b32_e32 v69, v85                                     // 00000000DD94: 7E8A0355
	v_mov_b32_e32 v70, v86                                     // 00000000DD98: 7E8C0356
	v_mov_b32_e32 v71, v87                                     // 00000000DD9C: 7E8E0357
	v_mov_b32_e32 v72, v88                                     // 00000000DDA0: 7E900358
	v_mov_b32_e32 v73, v89                                     // 00000000DDA4: 7E920359
	v_mov_b32_e32 v74, v90                                     // 00000000DDA8: 7E94035A
	v_mov_b32_e32 v75, v91                                     // 00000000DDAC: 7E96035B
	v_mov_b32_e32 v76, v92                                     // 00000000DDB0: 7E98035C
	v_mov_b32_e32 v77, v93                                     // 00000000DDB4: 7E9A035D
	v_mov_b32_e32 v78, v94                                     // 00000000DDB8: 7E9C035E
	s_cmp_ge_i32 s18, 32                                       // 00000000DDBC: BF03A012
	v_mov_b32_e32 v79, v95                                     // 00000000DDC0: 7E9E035F
	s_cbranch_scc1 84                                          // 00000000DDC4: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3718>
	v_mov_b32_e32 v64, 0xff800000                              // 00000000DDC8: 7E8002FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000DDD0: BF048012
	v_mov_b32_e32 v65, v64                                     // 00000000DDD4: 7E820340
	v_mov_b32_e32 v66, v64                                     // 00000000DDD8: 7E840340
	v_mov_b32_e32 v67, v64                                     // 00000000DDDC: 7E860340
	v_mov_b32_e32 v68, v64                                     // 00000000DDE0: 7E880340
	v_mov_b32_e32 v69, v64                                     // 00000000DDE4: 7E8A0340
	v_mov_b32_e32 v70, v64                                     // 00000000DDE8: 7E8C0340
	v_mov_b32_e32 v71, v64                                     // 00000000DDEC: 7E8E0340
	v_mov_b32_e32 v72, v64                                     // 00000000DDF0: 7E900340
	v_mov_b32_e32 v73, v64                                     // 00000000DDF4: 7E920340
	v_mov_b32_e32 v74, v64                                     // 00000000DDF8: 7E940340
	v_mov_b32_e32 v75, v64                                     // 00000000DDFC: 7E960340
	v_mov_b32_e32 v76, v64                                     // 00000000DE00: 7E980340
	v_mov_b32_e32 v77, v64                                     // 00000000DE04: 7E9A0340
	v_mov_b32_e32 v78, v64                                     // 00000000DE08: 7E9C0340
	v_mov_b32_e32 v79, v64                                     // 00000000DE0C: 7E9E0340
	s_cbranch_scc1 65                                          // 00000000DE10: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3718>
	v_add_u32_e32 v79, s18, v171                               // 00000000DE14: 689F5612
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 00000000DE18: 7D889E80
	s_nop 1                                                    // 00000000DE1C: BF800001
	v_cndmask_b32_e64 v64, v80, v169, vcc                      // 00000000DE20: D1000040 01AB5350
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 00000000DE28: 7D889E81
	s_nop 1                                                    // 00000000DE2C: BF800001
	v_cndmask_b32_e64 v65, v81, v169, vcc                      // 00000000DE30: D1000041 01AB5351
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 00000000DE38: 7D889E82
	s_nop 1                                                    // 00000000DE3C: BF800001
	v_cndmask_b32_e64 v66, v82, v169, vcc                      // 00000000DE40: D1000042 01AB5352
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 00000000DE48: 7D889E83
	s_nop 1                                                    // 00000000DE4C: BF800001
	v_cndmask_b32_e64 v67, v83, v169, vcc                      // 00000000DE50: D1000043 01AB5353
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 00000000DE58: 7D889E88
	s_nop 1                                                    // 00000000DE5C: BF800001
	v_cndmask_b32_e64 v68, v84, v169, vcc                      // 00000000DE60: D1000044 01AB5354
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 00000000DE68: 7D889E89
	s_nop 1                                                    // 00000000DE6C: BF800001
	v_cndmask_b32_e64 v69, v85, v169, vcc                      // 00000000DE70: D1000045 01AB5355
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 00000000DE78: 7D889E8A
	s_nop 1                                                    // 00000000DE7C: BF800001
	v_cndmask_b32_e64 v70, v86, v169, vcc                      // 00000000DE80: D1000046 01AB5356
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 00000000DE88: 7D889E8B
	s_nop 1                                                    // 00000000DE8C: BF800001
	v_cndmask_b32_e64 v71, v87, v169, vcc                      // 00000000DE90: D1000047 01AB5357
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 00000000DE98: 7D889E90
	s_nop 1                                                    // 00000000DE9C: BF800001
	v_cndmask_b32_e64 v72, v88, v169, vcc                      // 00000000DEA0: D1000048 01AB5358
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 00000000DEA8: 7D889E91
	s_nop 1                                                    // 00000000DEAC: BF800001
	v_cndmask_b32_e64 v73, v89, v169, vcc                      // 00000000DEB0: D1000049 01AB5359
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 00000000DEB8: 7D889E92
	s_nop 1                                                    // 00000000DEBC: BF800001
	v_cndmask_b32_e64 v74, v90, v169, vcc                      // 00000000DEC0: D100004A 01AB535A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 00000000DEC8: 7D889E93
	s_nop 1                                                    // 00000000DECC: BF800001
	v_cndmask_b32_e64 v75, v91, v169, vcc                      // 00000000DED0: D100004B 01AB535B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 00000000DED8: 7D889E98
	s_nop 1                                                    // 00000000DEDC: BF800001
	v_cndmask_b32_e64 v76, v92, v169, vcc                      // 00000000DEE0: D100004C 01AB535C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 00000000DEE8: 7D889E99
	s_nop 1                                                    // 00000000DEEC: BF800001
	v_cndmask_b32_e64 v77, v93, v169, vcc                      // 00000000DEF0: D100004D 01AB535D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 00000000DEF8: 7D889E9A
	s_nop 1                                                    // 00000000DEFC: BF800001
	v_cndmask_b32_e64 v78, v94, v169, vcc                      // 00000000DF00: D100004E 01AB535E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 00000000DF08: 7D889E9B
	s_nop 1                                                    // 00000000DF0C: BF800001
	v_cndmask_b32_e64 v79, v95, v169, vcc                      // 00000000DF10: D100004F 01AB535F
	s_sub_u32 s18, s3, s20                                     // 00000000DF18: 80921403
	s_sub_i32 s18, s18, 32                                     // 00000000DF1C: 8192A012
	v_mov_b32_e32 v94, v110                                    // 00000000DF20: 7EBC036E
	v_mov_b32_e32 v95, v111                                    // 00000000DF24: 7EBE036F
	v_mov_b32_e32 v96, v112                                    // 00000000DF28: 7EC00370
	v_mov_b32_e32 v97, v113                                    // 00000000DF2C: 7EC20371
	v_mov_b32_e32 v98, v114                                    // 00000000DF30: 7EC40372
	v_mov_b32_e32 v99, v115                                    // 00000000DF34: 7EC60373
	v_mov_b32_e32 v100, v116                                   // 00000000DF38: 7EC80374
	v_mov_b32_e32 v101, v117                                   // 00000000DF3C: 7ECA0375
	v_mov_b32_e32 v102, v118                                   // 00000000DF40: 7ECC0376
	v_mov_b32_e32 v103, v119                                   // 00000000DF44: 7ECE0377
	v_mov_b32_e32 v104, v120                                   // 00000000DF48: 7ED00378
	v_mov_b32_e32 v105, v121                                   // 00000000DF4C: 7ED20379
	v_mov_b32_e32 v106, v122                                   // 00000000DF50: 7ED4037A
	v_mov_b32_e32 v107, v123                                   // 00000000DF54: 7ED6037B
	v_mov_b32_e32 v108, v124                                   // 00000000DF58: 7ED8037C
	s_cmp_ge_i32 s18, 32                                       // 00000000DF5C: BF03A012
	v_mov_b32_e32 v109, v125                                   // 00000000DF60: 7EDA037D
	s_cbranch_scc1 84                                          // 00000000DF64: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x38b8>
	v_mov_b32_e32 v94, 0xff800000                              // 00000000DF68: 7EBC02FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000DF70: BF048012
	v_mov_b32_e32 v95, v94                                     // 00000000DF74: 7EBE035E
	v_mov_b32_e32 v96, v94                                     // 00000000DF78: 7EC0035E
	v_mov_b32_e32 v97, v94                                     // 00000000DF7C: 7EC2035E
	v_mov_b32_e32 v98, v94                                     // 00000000DF80: 7EC4035E
	v_mov_b32_e32 v99, v94                                     // 00000000DF84: 7EC6035E
	v_mov_b32_e32 v100, v94                                    // 00000000DF88: 7EC8035E
	v_mov_b32_e32 v101, v94                                    // 00000000DF8C: 7ECA035E
	v_mov_b32_e32 v102, v94                                    // 00000000DF90: 7ECC035E
	v_mov_b32_e32 v103, v94                                    // 00000000DF94: 7ECE035E
	v_mov_b32_e32 v104, v94                                    // 00000000DF98: 7ED0035E
	v_mov_b32_e32 v105, v94                                    // 00000000DF9C: 7ED2035E
	v_mov_b32_e32 v106, v94                                    // 00000000DFA0: 7ED4035E
	v_mov_b32_e32 v107, v94                                    // 00000000DFA4: 7ED6035E
	v_mov_b32_e32 v108, v94                                    // 00000000DFA8: 7ED8035E
	v_mov_b32_e32 v109, v94                                    // 00000000DFAC: 7EDA035E
	s_cbranch_scc1 65                                          // 00000000DFB0: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x38b8>
	v_add_u32_e32 v80, s18, v171                               // 00000000DFB4: 68A15612
	v_cmp_gt_i32_e32 vcc, 0, v80                               // 00000000DFB8: 7D88A080
	s_nop 1                                                    // 00000000DFBC: BF800001
	v_cndmask_b32_e64 v94, v110, v169, vcc                     // 00000000DFC0: D100005E 01AB536E
	v_cmp_gt_i32_e32 vcc, 1, v80                               // 00000000DFC8: 7D88A081
	s_nop 1                                                    // 00000000DFCC: BF800001
	v_cndmask_b32_e64 v95, v111, v169, vcc                     // 00000000DFD0: D100005F 01AB536F
	v_cmp_gt_i32_e32 vcc, 2, v80                               // 00000000DFD8: 7D88A082
	s_nop 1                                                    // 00000000DFDC: BF800001
	v_cndmask_b32_e64 v96, v112, v169, vcc                     // 00000000DFE0: D1000060 01AB5370
	v_cmp_gt_i32_e32 vcc, 3, v80                               // 00000000DFE8: 7D88A083
	s_nop 1                                                    // 00000000DFEC: BF800001
	v_cndmask_b32_e64 v97, v113, v169, vcc                     // 00000000DFF0: D1000061 01AB5371
	v_cmp_gt_i32_e32 vcc, 8, v80                               // 00000000DFF8: 7D88A088
	s_nop 1                                                    // 00000000DFFC: BF800001
	v_cndmask_b32_e64 v98, v114, v169, vcc                     // 00000000E000: D1000062 01AB5372
	v_cmp_gt_i32_e32 vcc, 9, v80                               // 00000000E008: 7D88A089
	s_nop 1                                                    // 00000000E00C: BF800001
	v_cndmask_b32_e64 v99, v115, v169, vcc                     // 00000000E010: D1000063 01AB5373
	v_cmp_gt_i32_e32 vcc, 10, v80                              // 00000000E018: 7D88A08A
	s_nop 1                                                    // 00000000E01C: BF800001
	v_cndmask_b32_e64 v100, v116, v169, vcc                    // 00000000E020: D1000064 01AB5374
	v_cmp_gt_i32_e32 vcc, 11, v80                              // 00000000E028: 7D88A08B
	s_nop 1                                                    // 00000000E02C: BF800001
	v_cndmask_b32_e64 v101, v117, v169, vcc                    // 00000000E030: D1000065 01AB5375
	v_cmp_gt_i32_e32 vcc, 16, v80                              // 00000000E038: 7D88A090
	s_nop 1                                                    // 00000000E03C: BF800001
	v_cndmask_b32_e64 v102, v118, v169, vcc                    // 00000000E040: D1000066 01AB5376
	v_cmp_gt_i32_e32 vcc, 17, v80                              // 00000000E048: 7D88A091
	s_nop 1                                                    // 00000000E04C: BF800001
	v_cndmask_b32_e64 v103, v119, v169, vcc                    // 00000000E050: D1000067 01AB5377
	v_cmp_gt_i32_e32 vcc, 18, v80                              // 00000000E058: 7D88A092
	s_nop 1                                                    // 00000000E05C: BF800001
	v_cndmask_b32_e64 v104, v120, v169, vcc                    // 00000000E060: D1000068 01AB5378
	v_cmp_gt_i32_e32 vcc, 19, v80                              // 00000000E068: 7D88A093
	s_nop 1                                                    // 00000000E06C: BF800001
	v_cndmask_b32_e64 v105, v121, v169, vcc                    // 00000000E070: D1000069 01AB5379
	v_cmp_gt_i32_e32 vcc, 24, v80                              // 00000000E078: 7D88A098
	s_nop 1                                                    // 00000000E07C: BF800001
	v_cndmask_b32_e64 v106, v122, v169, vcc                    // 00000000E080: D100006A 01AB537A
	v_cmp_gt_i32_e32 vcc, 25, v80                              // 00000000E088: 7D88A099
	s_nop 1                                                    // 00000000E08C: BF800001
	v_cndmask_b32_e64 v107, v123, v169, vcc                    // 00000000E090: D100006B 01AB537B
	v_cmp_gt_i32_e32 vcc, 26, v80                              // 00000000E098: 7D88A09A
	s_nop 1                                                    // 00000000E09C: BF800001
	v_cndmask_b32_e64 v108, v124, v169, vcc                    // 00000000E0A0: D100006C 01AB537C
	v_cmp_gt_i32_e32 vcc, 27, v80                              // 00000000E0A8: 7D88A09B
	s_nop 1                                                    // 00000000E0AC: BF800001
	v_cndmask_b32_e64 v109, v125, v169, vcc                    // 00000000E0B0: D100006D 01AB537D
	s_and_b32 s17, s17, 3                                      // 00000000E0B8: 86118311
	v_max_f32_e32 v80, v64, v65                                // 00000000E0BC: 16A08340
	v_max3_f32 v80, v66, v67, v80                              // 00000000E0C0: D1D30050 05428742
	v_max3_f32 v80, v68, v69, v80                              // 00000000E0C8: D1D30050 05428B44
	v_max3_f32 v80, v70, v71, v80                              // 00000000E0D0: D1D30050 05428F46
	v_max3_f32 v80, v72, v73, v80                              // 00000000E0D8: D1D30050 05429348
	v_max3_f32 v80, v74, v75, v80                              // 00000000E0E0: D1D30050 0542974A
	v_max3_f32 v80, v76, v77, v80                              // 00000000E0E8: D1D30050 05429B4C
	v_max3_f32 v80, v78, v79, v80                              // 00000000E0F0: D1D30050 05429F4E
	v_max_f32_e32 v81, v94, v95                                // 00000000E0F8: 16A2BF5E
	v_max3_f32 v81, v96, v97, v81                              // 00000000E0FC: D1D30051 0546C360
	v_max3_f32 v81, v98, v99, v81                              // 00000000E104: D1D30051 0546C762
	v_max3_f32 v81, v100, v101, v81                            // 00000000E10C: D1D30051 0546CB64
	v_max3_f32 v81, v102, v103, v81                            // 00000000E114: D1D30051 0546CF66
	v_max3_f32 v81, v104, v105, v81                            // 00000000E11C: D1D30051 0546D368
	v_max3_f32 v81, v106, v107, v81                            // 00000000E124: D1D30051 0546D76A
	v_max3_f32 v81, v108, v109, v81                            // 00000000E12C: D1D30051 0546DB6C
	v_max_f32_e32 v80, v80, v81                                // 00000000E134: 16A0A350
	v_mov_b32_e32 v81, v80                                     // 00000000E138: 7EA20350
	s_nop 1                                                    // 00000000E13C: BF800001
	v_permlane32_swap_b32_e32 v80, v81                         // 00000000E140: 7EA0B551
	v_max_f32_e32 v80, v80, v81                                // 00000000E144: 16A0A350
	v_mul_f32_e32 v81, v142, v80                               // 00000000E148: 0AA2A18E
	v_max_f32_e32 v81, v178, v81                               // 00000000E14C: 16A2A3B2
	v_sub_f32_e32 v82, v81, v178                               // 00000000E150: 04A56551
	v_cmp_lt_f32_e32 vcc, s91, v82                             // 00000000E154: 7C82A45B
	s_cmp_lg_u64 vcc, 0                                        // 00000000E158: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000E15C: 859280C1
	s_and_b64 s[20:21], s[18:19], exec                         // 00000000E160: 86947E12
	s_cselect_b32 s20, 1, 0                                    // 00000000E164: 85148081
	s_cselect_b64 s[20:21], -1, 0                              // 00000000E168: 859480C1
	v_cndmask_b32_e64 v111, v178, v81, s[20:21]                // 00000000E16C: D100006F 0052A3B2
	v_fma_f32 v80, v80, v142, -v111                            // 00000000E174: D1CB0050 85BF1D50
	v_floor_f32_e32 v80, v80                                   // 00000000E17C: 7EA03F50
	v_med3_f32 v80, v80, s89, 0                                // 00000000E180: D1D60050 0200B350
	v_cvt_i32_f32_e32 v81, v80                                 // 00000000E188: 7EA21150
	v_add_u32_e32 v112, 0x7f, v81                              // 00000000E18C: 68E0A2FF 0000007F
	v_lshlrev_b32_e32 v81, 23, v112                            // 00000000E194: 24A2E097
	v_add_f32_e32 v80, v111, v80                               // 00000000E198: 02A0A16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000E19C: 04DCA0FF 40C00000
	s_lshl_b32 s20, s17, 13                                    // 00000000E1A4: 8E148D11
	s_add_u32 s20, s82, s20                                    // 00000000E1A8: 80141452
	v_add3_u32 v80, s20, v173, v172                            // 00000000E1AC: D1FF0050 06B35A14
	s_waitcnt vmcnt(0)                                         // 00000000E1B4: BF8C0F70
	ds_read_b64_tr_b8 v[114:115], v80                          // 00000000E1B8: D9C40000 72000050
	ds_read_b64_tr_b8 v[116:117], v80 offset:1024              // 00000000E1C0: D9C40400 74000050
	ds_read_b64_tr_b8 v[118:119], v80 offset:2048              // 00000000E1C8: D9C40800 76000050
	ds_read_b64_tr_b8 v[120:121], v80 offset:3072              // 00000000E1D0: D9C40C00 78000050
	ds_read_b64_tr_b8 v[206:207], v80 offset:256               // 00000000E1D8: D9C40100 CE000050
	ds_read_b64_tr_b8 v[208:209], v80 offset:1280              // 00000000E1E0: D9C40500 D0000050
	ds_read_b64_tr_b8 v[210:211], v80 offset:2304              // 00000000E1E8: D9C40900 D2000050
	ds_read_b64_tr_b8 v[212:213], v80 offset:3328              // 00000000E1F0: D9C40D00 D4000050
	ds_read_b64_tr_b8 v[82:83], v80 offset:512                 // 00000000E1F8: D9C40200 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1536                // 00000000E200: D9C40600 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2560                // 00000000E208: D9C40A00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3584                // 00000000E210: D9C40E00 58000050
	s_waitcnt lgkmcnt(4)                                       // 00000000E218: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[114:121], v[134:141], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000E21C: D3AC0000 000369AA D3AE0830 04C30D72
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[206:213], v[134:141], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000E22C: D3AC0000 000369AA D3AE0820 04830DCE
	ds_read_b64_tr_b8 v[114:115], v80 offset:768               // 00000000E23C: D9C40300 72000050
	ds_read_b64_tr_b8 v[116:117], v80 offset:1792              // 00000000E244: D9C40700 74000050
	ds_read_b64_tr_b8 v[118:119], v80 offset:2816              // 00000000E24C: D9C40B00 76000050
	ds_read_b64_tr_b8 v[120:121], v80 offset:3840              // 00000000E254: D9C40F00 78000050
	s_add_u32 s20, s78, 4                                      // 00000000E25C: 8014844E
	s_cmp_ge_u32 s20, s98                                      // 00000000E260: BF096214
	s_cbranch_scc1 13                                          // 00000000E264: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3a9c>
	s_lshl_b32 s21, s17, 14                                    // 00000000E268: 8E158E11
	s_mul_i32 s20, s20, s6                                     // 00000000E26C: 92140614
	s_or_b32 s21, s21, s72                                     // 00000000E270: 87154815
	s_lshl_b32 s20, s20, 6                                     // 00000000E274: 8E148614
	s_mov_b32 m0, s21                                          // 00000000E278: BEFC0015
	s_nop 0                                                    // 00000000E27C: BF800000
	buffer_load_dwordx4 v164, s[68:71], s20 offen lds          // 00000000E280: E05D1000 141100A4
	s_or_b32 m0, s21, 0x2000                                   // 00000000E288: 877CFF15 00002000
	s_nop 0                                                    // 00000000E290: BF800000
	buffer_load_dwordx4 v165, s[68:71], s20 offen lds          // 00000000E294: E05D1000 141100A5
	s_add_u32 s20, s78, 2                                      // 00000000E29C: 8014824E
	s_cmp_ge_u32 s20, s98                                      // 00000000E2A0: BF096214
	s_cbranch_scc1 9                                           // 00000000E2A4: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3acc>
	s_xor_b32 s17, s17, 2                                      // 00000000E2A8: 88118211
	s_mul_i32 s20, s20, s7                                     // 00000000E2AC: 92140714
	s_lshl_b32 s17, s17, 13                                    // 00000000E2B0: 8E118D11
	s_lshl_b32 s20, s20, 6                                     // 00000000E2B4: 8E148614
	s_add_u32 s17, s82, s17                                    // 00000000E2B8: 80111152
	s_add_u32 m0, s17, s72                                     // 00000000E2BC: 807C4811
	s_nop 0                                                    // 00000000E2C0: BF800000
	buffer_load_dwordx4 v166, s[64:67], s20 offen lds          // 00000000E2C4: E05D1000 141000A6
	s_waitcnt lgkmcnt(0)                                       // 00000000E2CC: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[134:141], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000E2D0: D3AC0000 000369AA D3AE0810 04430D52
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[134:141], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000E2E0: D3AC0000 000369AA D3AE0800 04030D72
	v_mov_b32_e32 v143, v142                                   // 00000000E2F0: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000E2F4: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000E2FC: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E304: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E30C: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E314: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E31C: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E324: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E32C: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E334: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E33C: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E344: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E34C: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E354: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E35C: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E364: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E36C: D3B00042 1DBB1D60
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000E374: 86927E12
	s_cbranch_scc0 68                                          // 00000000E378: BF840044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3c8c>
	v_sub_f32_e32 v96, v178, v111                              // 00000000E37C: 04C0DFB2
	v_exp_f32_e32 v96, v96                                     // 00000000E380: 7EC04160
	s_nop 0                                                    // 00000000E384: BF800000
	v_pk_mul_f32 v[62:63], v[96:97], v[62:63] op_sel_hi:[0,1]  // 00000000E388: D3B1403E 10027D60
	v_pk_mul_f32 v[60:61], v[96:97], v[60:61] op_sel_hi:[0,1]  // 00000000E390: D3B1403C 10027960
	v_pk_mul_f32 v[58:59], v[96:97], v[58:59] op_sel_hi:[0,1]  // 00000000E398: D3B1403A 10027560
	v_pk_mul_f32 v[56:57], v[96:97], v[56:57] op_sel_hi:[0,1]  // 00000000E3A0: D3B14038 10027160
	v_pk_mul_f32 v[54:55], v[96:97], v[54:55] op_sel_hi:[0,1]  // 00000000E3A8: D3B14036 10026D60
	v_pk_mul_f32 v[52:53], v[96:97], v[52:53] op_sel_hi:[0,1]  // 00000000E3B0: D3B14034 10026960
	v_pk_mul_f32 v[50:51], v[96:97], v[50:51] op_sel_hi:[0,1]  // 00000000E3B8: D3B14032 10026560
	v_pk_mul_f32 v[48:49], v[96:97], v[48:49] op_sel_hi:[0,1]  // 00000000E3C0: D3B14030 10026160
	v_pk_mul_f32 v[46:47], v[96:97], v[46:47] op_sel_hi:[0,1]  // 00000000E3C8: D3B1402E 10025D60
	v_pk_mul_f32 v[44:45], v[96:97], v[44:45] op_sel_hi:[0,1]  // 00000000E3D0: D3B1402C 10025960
	v_pk_mul_f32 v[42:43], v[96:97], v[42:43] op_sel_hi:[0,1]  // 00000000E3D8: D3B1402A 10025560
	v_pk_mul_f32 v[40:41], v[96:97], v[40:41] op_sel_hi:[0,1]  // 00000000E3E0: D3B14028 10025160
	v_pk_mul_f32 v[38:39], v[96:97], v[38:39] op_sel_hi:[0,1]  // 00000000E3E8: D3B14026 10024D60
	v_pk_mul_f32 v[36:37], v[96:97], v[36:37] op_sel_hi:[0,1]  // 00000000E3F0: D3B14024 10024960
	v_pk_mul_f32 v[34:35], v[96:97], v[34:35] op_sel_hi:[0,1]  // 00000000E3F8: D3B14022 10024560
	v_pk_mul_f32 v[32:33], v[96:97], v[32:33] op_sel_hi:[0,1]  // 00000000E400: D3B14020 10024160
	v_pk_mul_f32 v[30:31], v[96:97], v[30:31] op_sel_hi:[0,1]  // 00000000E408: D3B1401E 10023D60
	v_pk_mul_f32 v[28:29], v[96:97], v[28:29] op_sel_hi:[0,1]  // 00000000E410: D3B1401C 10023960
	v_pk_mul_f32 v[26:27], v[96:97], v[26:27] op_sel_hi:[0,1]  // 00000000E418: D3B1401A 10023560
	v_pk_mul_f32 v[24:25], v[96:97], v[24:25] op_sel_hi:[0,1]  // 00000000E420: D3B14018 10023160
	v_pk_mul_f32 v[22:23], v[96:97], v[22:23] op_sel_hi:[0,1]  // 00000000E428: D3B14016 10022D60
	v_pk_mul_f32 v[20:21], v[96:97], v[20:21] op_sel_hi:[0,1]  // 00000000E430: D3B14014 10022960
	v_pk_mul_f32 v[18:19], v[96:97], v[18:19] op_sel_hi:[0,1]  // 00000000E438: D3B14012 10022560
	v_pk_mul_f32 v[16:17], v[96:97], v[16:17] op_sel_hi:[0,1]  // 00000000E440: D3B14010 10022160
	v_pk_mul_f32 v[14:15], v[96:97], v[14:15] op_sel_hi:[0,1]  // 00000000E448: D3B1400E 10021D60
	v_pk_mul_f32 v[12:13], v[96:97], v[12:13] op_sel_hi:[0,1]  // 00000000E450: D3B1400C 10021960
	v_pk_mul_f32 v[10:11], v[96:97], v[10:11] op_sel_hi:[0,1]  // 00000000E458: D3B1400A 10021560
	v_pk_mul_f32 v[8:9], v[96:97], v[8:9] op_sel_hi:[0,1]      // 00000000E460: D3B14008 10021160
	v_pk_mul_f32 v[6:7], v[96:97], v[6:7] op_sel_hi:[0,1]      // 00000000E468: D3B14006 10020D60
	v_pk_mul_f32 v[4:5], v[96:97], v[4:5] op_sel_hi:[0,1]      // 00000000E470: D3B14004 10020960
	v_pk_mul_f32 v[2:3], v[96:97], v[2:3] op_sel_hi:[0,1]      // 00000000E478: D3B14002 10020560
	v_pk_mul_f32 v[0:1], v[96:97], v[0:1] op_sel_hi:[0,1]      // 00000000E480: D3B14000 10020160
	v_mul_f32_e32 v179, v179, v96                              // 00000000E488: 0B66C1B3
	s_waitcnt vmcnt(0)                                         // 00000000E48C: BF8C0F70
	s_barrier                                                  // 00000000E490: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000E494: 804E814E
	v_mov_b32_e32 v180, v112                                   // 00000000E498: 7F680370
	v_mov_b32_e32 v178, v111                                   // 00000000E49C: 7F64036F
	s_branch 64143                                             // 00000000E4A0: BF82FA8F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26e0>
	s_cmp_eq_u32 s78, s77                                      // 00000000E4A4: BF064D4E
	s_cbranch_scc0 169                                         // 00000000E4A8: BF8400A9 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3f50>
	s_setprio 0                                                // 00000000E4AC: BF8F0000
	v_exp_f32_e32 v104, v80                                    // 00000000E4B0: 7ED04150
	v_exp_f32_e32 v105, v81                                    // 00000000E4B4: 7ED24151
	v_exp_f32_e32 v108, v64                                    // 00000000E4B8: 7ED84140
	v_exp_f32_e32 v109, v65                                    // 00000000E4BC: 7EDA4141
	v_exp_f32_e32 v112, v84                                    // 00000000E4C0: 7EE04154
	v_exp_f32_e32 v113, v85                                    // 00000000E4C4: 7EE24155
	v_exp_f32_e32 v116, v68                                    // 00000000E4C8: 7EE84144
	v_exp_f32_e32 v117, v69                                    // 00000000E4CC: 7EEA4145
	v_exp_f32_e32 v120, v88                                    // 00000000E4D0: 7EF04158
	v_exp_f32_e32 v121, v89                                    // 00000000E4D4: 7EF24159
	v_exp_f32_e32 v124, v72                                    // 00000000E4D8: 7EF84148
	v_exp_f32_e32 v125, v73                                    // 00000000E4DC: 7EFA4149
	v_exp_f32_e32 v136, v92                                    // 00000000E4E0: 7F10415C
	v_exp_f32_e32 v137, v93                                    // 00000000E4E4: 7F12415D
	v_exp_f32_e32 v140, v76                                    // 00000000E4E8: 7F18414C
	v_exp_f32_e32 v141, v77                                    // 00000000E4EC: 7F1A414D
	v_mov_b32_e32 v96, 0                                       // 00000000E4F0: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000E4F4: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000E4F8: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000E4FC: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000E500: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000E504: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000E508: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000E50C: 7ECE0280
	v_exp_f32_e32 v106, v82                                    // 00000000E510: 7ED44152
	v_exp_f32_e32 v107, v83                                    // 00000000E514: 7ED64153
	v_exp_f32_e32 v110, v66                                    // 00000000E518: 7EDC4142
	v_exp_f32_e32 v111, v67                                    // 00000000E51C: 7EDE4143
	v_exp_f32_e32 v114, v86                                    // 00000000E520: 7EE44156
	v_exp_f32_e32 v115, v87                                    // 00000000E524: 7EE64157
	v_exp_f32_e32 v118, v70                                    // 00000000E528: 7EEC4146
	v_exp_f32_e32 v119, v71                                    // 00000000E52C: 7EEE4147
	v_exp_f32_e32 v122, v90                                    // 00000000E530: 7EF4415A
	v_exp_f32_e32 v123, v91                                    // 00000000E534: 7EF6415B
	v_exp_f32_e32 v134, v74                                    // 00000000E538: 7F0C414A
	v_exp_f32_e32 v135, v75                                    // 00000000E53C: 7F0E414B
	v_exp_f32_e32 v138, v94                                    // 00000000E540: 7F14415E
	v_exp_f32_e32 v139, v95                                    // 00000000E544: 7F16415F
	v_exp_f32_e32 v143, v78                                    // 00000000E548: 7F1E414E
	v_exp_f32_e32 v181, v79                                    // 00000000E54C: 7F6A414F
	v_cvt_pk_fp8_f32 v96, v104, v105                           // 00000000E550: D2A20060 0002D368
	v_cvt_pk_fp8_f32 v100, v108, v109                          // 00000000E558: D2A20064 0002DB6C
	v_cvt_pk_fp8_f32 v97, v112, v113                           // 00000000E560: D2A20061 0002E370
	v_cvt_pk_fp8_f32 v101, v116, v117                          // 00000000E568: D2A20065 0002EB74
	v_cvt_pk_fp8_f32 v98, v120, v121                           // 00000000E570: D2A20062 0002F378
	v_cvt_pk_fp8_f32 v102, v124, v125                          // 00000000E578: D2A20066 0002FB7C
	v_cvt_pk_fp8_f32 v99, v136, v137                           // 00000000E580: D2A20063 00031388
	v_cvt_pk_fp8_f32 v103, v140, v141                          // 00000000E588: D2A20067 00031B8C
	v_cvt_pk_fp8_f32 v96, v106, v107 op_sel:[0,0,1]            // 00000000E590: D2A24060 0002D76A
	v_cvt_pk_fp8_f32 v100, v110, v111 op_sel:[0,0,1]           // 00000000E598: D2A24064 0002DF6E
	v_cvt_pk_fp8_f32 v97, v114, v115 op_sel:[0,0,1]            // 00000000E5A0: D2A24061 0002E772
	v_cvt_pk_fp8_f32 v101, v118, v119 op_sel:[0,0,1]           // 00000000E5A8: D2A24065 0002EF76
	v_cvt_pk_fp8_f32 v98, v122, v123 op_sel:[0,0,1]            // 00000000E5B0: D2A24062 0002F77A
	v_cvt_pk_fp8_f32 v102, v134, v135 op_sel:[0,0,1]           // 00000000E5B8: D2A24066 00030F86
	v_cvt_pk_fp8_f32 v99, v138, v139 op_sel:[0,0,1]            // 00000000E5C0: D2A24063 0003178A
	v_cvt_pk_fp8_f32 v103, v143, v181 op_sel:[0,0,1]           // 00000000E5C8: D2A24067 00036B8F
	s_barrier                                                  // 00000000E5D0: BF8A0000
	s_setprio 1                                                // 00000000E5D4: BF8F0001
	s_waitcnt vmcnt(0)                                         // 00000000E5D8: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[104:107], v[126:133], v[96:103], 0// 00000000E5DC: D3AD0068 0202C17E
	s_add_u32 s17, s77, s80                                    // 00000000E5E4: 8011504D
	s_and_b32 s17, s17, 3                                      // 00000000E5E8: 86118311
	s_lshl_b32 s18, s17, 13                                    // 00000000E5EC: 8E128D11
	s_add_u32 s18, s82, s18                                    // 00000000E5F0: 80121252
	s_nop 7                                                    // 00000000E5F4: BF800007
	v_add3_u32 v105, s18, v173, v172                           // 00000000E5F8: D1FF0069 06B35A12
	ds_read_b64_tr_b8 v[114:115], v105                         // 00000000E600: D9C40000 72000069
	ds_read_b64_tr_b8 v[116:117], v105 offset:1024             // 00000000E608: D9C40400 74000069
	ds_read_b64_tr_b8 v[118:119], v105 offset:2048             // 00000000E610: D9C40800 76000069
	ds_read_b64_tr_b8 v[120:121], v105 offset:3072             // 00000000E618: D9C40C00 78000069
	ds_read_b64_tr_b8 v[134:135], v105 offset:256              // 00000000E620: D9C40100 86000069
	ds_read_b64_tr_b8 v[136:137], v105 offset:1280             // 00000000E628: D9C40500 88000069
	ds_read_b64_tr_b8 v[138:139], v105 offset:2304             // 00000000E630: D9C40900 8A000069
	ds_read_b64_tr_b8 v[140:141], v105 offset:3328             // 00000000E638: D9C40D00 8C000069
	ds_read_b64_tr_b8 v[106:107], v105 offset:512              // 00000000E640: D9C40200 6A000069
	ds_read_b64_tr_b8 v[108:109], v105 offset:1536             // 00000000E648: D9C40600 6C000069
	ds_read_b64_tr_b8 v[110:111], v105 offset:2560             // 00000000E650: D9C40A00 6E000069
	ds_read_b64_tr_b8 v[112:113], v105 offset:3584             // 00000000E658: D9C40E00 70000069
	s_waitcnt lgkmcnt(4)                                       // 00000000E660: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[114:121], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000E664: D3AC0000 000369AA D3AE0830 04C2C172
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000E674: D3AC0000 000369AA D3AE0820 0482C186
	ds_read_b64_tr_b8 v[114:115], v105 offset:768              // 00000000E684: D9C40300 72000069
	ds_read_b64_tr_b8 v[116:117], v105 offset:1792             // 00000000E68C: D9C40700 74000069
	ds_read_b64_tr_b8 v[118:119], v105 offset:2816             // 00000000E694: D9C40B00 76000069
	ds_read_b64_tr_b8 v[120:121], v105 offset:3840             // 00000000E69C: D9C40F00 78000069
	s_add_u32 s18, s77, 4                                      // 00000000E6A4: 8012844D
	s_cmp_ge_u32 s18, s98                                      // 00000000E6A8: BF096212
	s_cbranch_scc1 13                                          // 00000000E6AC: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3ee4>
	s_lshl_b32 s19, s17, 14                                    // 00000000E6B0: 8E138E11
	s_mul_i32 s18, s18, s6                                     // 00000000E6B4: 92120612
	s_or_b32 s19, s19, s72                                     // 00000000E6B8: 87134813
	s_lshl_b32 s18, s18, 6                                     // 00000000E6BC: 8E128612
	s_mov_b32 m0, s19                                          // 00000000E6C0: BEFC0013
	s_nop 0                                                    // 00000000E6C4: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000E6C8: E05D1000 121100A4
	s_or_b32 m0, s19, 0x2000                                   // 00000000E6D0: 877CFF13 00002000
	s_nop 0                                                    // 00000000E6D8: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000E6DC: E05D1000 121100A5
	s_add_u32 s18, s77, 2                                      // 00000000E6E4: 8012824D
	s_cmp_ge_u32 s18, s98                                      // 00000000E6E8: BF096212
	s_cbranch_scc1 9                                           // 00000000E6EC: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3f14>
	s_xor_b32 s17, s17, 2                                      // 00000000E6F0: 88118211
	s_mul_i32 s18, s18, s7                                     // 00000000E6F4: 92120712
	s_lshl_b32 s17, s17, 13                                    // 00000000E6F8: 8E118D11
	s_lshl_b32 s18, s18, 6                                     // 00000000E6FC: 8E128612
	s_add_u32 s17, s82, s17                                    // 00000000E700: 80111152
	s_add_u32 m0, s17, s72                                     // 00000000E704: 807C4811
	s_nop 0                                                    // 00000000E708: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000E70C: E05D1000 121000A6
	v_lshlrev_b32_e32 v105, 23, v180                           // 00000000E714: 24D36897
	v_fma_f32 v179, v104, v105, v179                           // 00000000E718: D1CB00B3 06CED368
	s_waitcnt lgkmcnt(0)                                       // 00000000E720: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[106:113], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000E724: D3AC0000 000369AA D3AE0810 0442C16A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000E734: D3AC0000 000369AA D3AE0800 0402C172
	s_barrier                                                  // 00000000E744: BF8A0000
	s_add_u32 s78, s77, 1                                      // 00000000E748: 804E814D
	s_branch 63972                                             // 00000000E74C: BF82F9E4 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26e0>
	s_barrier                                                  // 00000000E750: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000E754: BF8C0F70
	s_add_u32 s17, s78, 4                                      // 00000000E758: 8011844E
	s_cmp_ge_u32 s17, s98                                      // 00000000E75C: BF096211
	s_cbranch_scc1 15                                          // 00000000E760: BF85000F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3fa0>
	s_add_u32 s18, s78, s80                                    // 00000000E764: 8012504E
	s_and_b32 s18, s18, 3                                      // 00000000E768: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000E76C: 8E128E12
	s_mul_i32 s17, s17, s6                                     // 00000000E770: 92110611
	s_or_b32 s18, s18, s72                                     // 00000000E774: 87124812
	s_lshl_b32 s17, s17, 6                                     // 00000000E778: 8E118611
	s_mov_b32 m0, s18                                          // 00000000E77C: BEFC0012
	s_nop 0                                                    // 00000000E780: BF800000
	buffer_load_dwordx4 v164, s[68:71], s17 offen lds          // 00000000E784: E05D1000 111100A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000E78C: 877CFF12 00002000
	s_nop 0                                                    // 00000000E794: BF800000
	buffer_load_dwordx4 v165, s[68:71], s17 offen lds          // 00000000E798: E05D1000 111100A5
	s_add_u32 s17, s78, 2                                      // 00000000E7A0: 8011824E
	s_cmp_ge_u32 s17, s98                                      // 00000000E7A4: BF096211
	s_cbranch_scc1 11                                          // 00000000E7A8: BF85000B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3fd8>
	s_add_u32 s18, s78, s80                                    // 00000000E7AC: 8012504E
	s_and_b32 s18, s18, 3                                      // 00000000E7B0: 86128312
	s_xor_b32 s18, s18, 2                                      // 00000000E7B4: 88128212
	s_mul_i32 s17, s17, s7                                     // 00000000E7B8: 92110711
	s_lshl_b32 s18, s18, 13                                    // 00000000E7BC: 8E128D12
	s_lshl_b32 s17, s17, 6                                     // 00000000E7C0: 8E118611
	s_add_u32 s18, s82, s18                                    // 00000000E7C4: 80121252
	s_add_u32 m0, s18, s72                                     // 00000000E7C8: 807C4812
	s_nop 0                                                    // 00000000E7CC: BF800000
	buffer_load_dwordx4 v166, s[64:67], s17 offen lds          // 00000000E7D0: E05D1000 111000A6
	s_barrier                                                  // 00000000E7D8: BF8A0000
	s_add_u32 s78, s78, 1                                      // 00000000E7DC: 804E814E
	s_branch 63935                                             // 00000000E7E0: BF82F9BF <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26e0>
	s_cmp_ge_u32 s77, s78                                      // 00000000E7E4: BF094E4D
	s_cbranch_scc1 40                                          // 00000000E7E8: BF850028 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x408c>
	s_waitcnt vmcnt(0)                                         // 00000000E7EC: BF8C0F70
	s_barrier                                                  // 00000000E7F0: BF8A0000
	s_add_u32 s17, s98, s80                                    // 00000000E7F4: 80115062
	s_and_b32 s24, s17, 3                                      // 00000000E7F8: 86188311
	s_cmp_lg_u32 s76, 0                                        // 00000000E7FC: BF07804C
	s_cbranch_scc1 4                                           // 00000000E800: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4014>
	s_not_b32 s17, s52                                         // 00000000E804: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000E808: 80111132
	s_cmp_lg_u32 s52, s17                                      // 00000000E80C: BF071134
	s_cbranch_scc1 236                                         // 00000000E810: BF8500EC <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x43c4>
	s_add_u32 s2, s2, s13                                      // 00000000E814: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000E818: BF093102
	s_cbranch_scc1 211                                         // 00000000E81C: BF8500D3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x436c>
	s_lshl_b32 s17, s2, 5                                      // 00000000E820: 8E118502
	s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0          // 00000000E824: C00E4D17 22000000
	s_mov_b32 s76, 0                                           // 00000000E82C: BECC0080
	s_mov_b64 s[18:19], -1                                     // 00000000E830: BE9201C1
	s_branch 229                                               // 00000000E834: BF8200E5 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x43cc>
	s_cmp_ge_u32 s77, s78                                      // 00000000E838: BF094E4D
	s_cbranch_scc1 111                                         // 00000000E83C: BF85006F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x41fc>
	s_waitcnt vmcnt(0)                                         // 00000000E840: BF8C0F70
	s_barrier                                                  // 00000000E844: BF8A0000
	s_add_u32 s17, s98, s80                                    // 00000000E848: 80115062
	s_and_b32 s24, s17, 3                                      // 00000000E84C: 86188311
	s_cmp_lg_u32 s76, 0                                        // 00000000E850: BF07804C
	s_cbranch_scc1 4                                           // 00000000E854: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4068>
	s_not_b32 s17, s52                                         // 00000000E858: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000E85C: 80111132
	s_cmp_lg_u32 s52, s17                                      // 00000000E860: BF071134
	s_cbranch_scc1 338                                         // 00000000E864: BF850152 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x45b0>
	s_add_u32 s2, s2, s13                                      // 00000000E868: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000E86C: BF093102
	s_cbranch_scc1 196                                         // 00000000E870: BF8500C4 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4384>
	s_lshl_b32 s17, s2, 5                                      // 00000000E874: 8E118502
	s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0          // 00000000E878: C00E4D17 22000000
	s_mov_b32 s76, 0                                           // 00000000E880: BECC0080
	s_mov_b64 s[18:19], -1                                     // 00000000E884: BE9201C1
	s_branch 331                                               // 00000000E888: BF82014B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x45b8>
	s_setprio 0                                                // 00000000E88C: BF8F0000
	v_exp_f32_e32 v80, v80                                     // 00000000E890: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000E894: 7EA24151
	v_exp_f32_e32 v64, v64                                     // 00000000E898: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000E89C: 7E824141
	v_exp_f32_e32 v84, v84                                     // 00000000E8A0: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000E8A4: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000E8A8: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000E8AC: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000E8B0: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000E8B4: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000E8B8: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000E8BC: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000E8C0: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000E8C4: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000E8C8: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000E8CC: 7E9A414D
	v_mov_b32_e32 v96, 0                                       // 00000000E8D0: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000E8D4: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000E8D8: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000E8DC: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000E8E0: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000E8E4: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000E8E8: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000E8EC: 7ECE0280
	v_exp_f32_e32 v82, v82                                     // 00000000E8F0: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000E8F4: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000E8F8: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000E8FC: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000E900: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000E904: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000E908: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000E90C: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000E910: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000E914: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000E918: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000E91C: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000E920: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000E924: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000E928: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000E92C: 7E9E414F
	v_cvt_pk_fp8_f32 v96, v80, v81                             // 00000000E930: D2A20060 0002A350
	v_cvt_pk_fp8_f32 v100, v64, v65                            // 00000000E938: D2A20064 00028340
	v_cvt_pk_fp8_f32 v97, v84, v85                             // 00000000E940: D2A20061 0002AB54
	v_cvt_pk_fp8_f32 v101, v68, v69                            // 00000000E948: D2A20065 00028B44
	v_cvt_pk_fp8_f32 v98, v88, v89                             // 00000000E950: D2A20062 0002B358
	v_cvt_pk_fp8_f32 v102, v72, v73                            // 00000000E958: D2A20066 00029348
	v_cvt_pk_fp8_f32 v99, v92, v93                             // 00000000E960: D2A20063 0002BB5C
	v_cvt_pk_fp8_f32 v103, v76, v77                            // 00000000E968: D2A20067 00029B4C
	v_cvt_pk_fp8_f32 v96, v82, v83 op_sel:[0,0,1]              // 00000000E970: D2A24060 0002A752
	v_cvt_pk_fp8_f32 v100, v66, v67 op_sel:[0,0,1]             // 00000000E978: D2A24064 00028742
	v_cvt_pk_fp8_f32 v97, v86, v87 op_sel:[0,0,1]              // 00000000E980: D2A24061 0002AF56
	v_cvt_pk_fp8_f32 v101, v70, v71 op_sel:[0,0,1]             // 00000000E988: D2A24065 00028F46
	v_cvt_pk_fp8_f32 v98, v90, v91 op_sel:[0,0,1]              // 00000000E990: D2A24062 0002B75A
	v_cvt_pk_fp8_f32 v102, v74, v75 op_sel:[0,0,1]             // 00000000E998: D2A24066 0002974A
	v_cvt_pk_fp8_f32 v99, v94, v95 op_sel:[0,0,1]              // 00000000E9A0: D2A24063 0002BF5E
	v_cvt_pk_fp8_f32 v103, v78, v79 op_sel:[0,0,1]             // 00000000E9A8: D2A24067 00029F4E
	s_waitcnt vmcnt(0)                                         // 00000000E9B0: BF8C0F70
	s_barrier                                                  // 00000000E9B4: BF8A0000
	s_add_u32 s17, s98, s80                                    // 00000000E9B8: 80115062
	s_and_b32 s24, s17, 3                                      // 00000000E9BC: 86188311
	s_cmp_lg_u32 s76, 0                                        // 00000000E9C0: BF07804C
	s_cbranch_scc1 4                                           // 00000000E9C4: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x41d8>
	s_not_b32 s17, s52                                         // 00000000E9C8: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000E9CC: 80111132
	s_cmp_lg_u32 s52, s17                                      // 00000000E9D0: BF071134
	s_cbranch_scc1 369                                         // 00000000E9D4: BF850171 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x479c>
	s_add_u32 s2, s2, s13                                      // 00000000E9D8: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000E9DC: BF093102
	s_mov_b32 s76, 0                                           // 00000000E9E0: BECC0080
	s_cbranch_scc1 109                                         // 00000000E9E4: BF85006D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x439c>
	s_lshl_b32 s17, s2, 5                                      // 00000000E9E8: 8E118502
	s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0          // 00000000E9EC: C00E4D17 22000000
	s_mov_b64 s[18:19], -1                                     // 00000000E9F4: BE9201C1
	s_branch 362                                               // 00000000E9F8: BF82016A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x47a4>
	s_setprio 0                                                // 00000000E9FC: BF8F0000
	v_exp_f32_e32 v80, v80                                     // 00000000EA00: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000EA04: 7EA24151
	v_exp_f32_e32 v64, v64                                     // 00000000EA08: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000EA0C: 7E824141
	v_exp_f32_e32 v84, v84                                     // 00000000EA10: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000EA14: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000EA18: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000EA1C: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000EA20: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000EA24: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000EA28: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000EA2C: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000EA30: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000EA34: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000EA38: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000EA3C: 7E9A414D
	v_mov_b32_e32 v96, 0                                       // 00000000EA40: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000EA44: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000EA48: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000EA4C: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000EA50: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000EA54: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000EA58: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000EA5C: 7ECE0280
	v_exp_f32_e32 v82, v82                                     // 00000000EA60: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000EA64: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000EA68: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000EA6C: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000EA70: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000EA74: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000EA78: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000EA7C: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000EA80: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000EA84: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000EA88: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000EA8C: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000EA90: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000EA94: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000EA98: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000EA9C: 7E9E414F
	v_cvt_pk_fp8_f32 v96, v80, v81                             // 00000000EAA0: D2A20060 0002A350
	v_cvt_pk_fp8_f32 v100, v64, v65                            // 00000000EAA8: D2A20064 00028340
	v_cvt_pk_fp8_f32 v97, v84, v85                             // 00000000EAB0: D2A20061 0002AB54
	v_cvt_pk_fp8_f32 v101, v68, v69                            // 00000000EAB8: D2A20065 00028B44
	v_cvt_pk_fp8_f32 v98, v88, v89                             // 00000000EAC0: D2A20062 0002B358
	v_cvt_pk_fp8_f32 v102, v72, v73                            // 00000000EAC8: D2A20066 00029348
	v_cvt_pk_fp8_f32 v99, v92, v93                             // 00000000EAD0: D2A20063 0002BB5C
	v_cvt_pk_fp8_f32 v103, v76, v77                            // 00000000EAD8: D2A20067 00029B4C
	v_cvt_pk_fp8_f32 v96, v82, v83 op_sel:[0,0,1]              // 00000000EAE0: D2A24060 0002A752
	v_cvt_pk_fp8_f32 v100, v66, v67 op_sel:[0,0,1]             // 00000000EAE8: D2A24064 00028742
	v_cvt_pk_fp8_f32 v97, v86, v87 op_sel:[0,0,1]              // 00000000EAF0: D2A24061 0002AF56
	v_cvt_pk_fp8_f32 v101, v70, v71 op_sel:[0,0,1]             // 00000000EAF8: D2A24065 00028F46
	v_cvt_pk_fp8_f32 v98, v90, v91 op_sel:[0,0,1]              // 00000000EB00: D2A24062 0002B75A
	v_cvt_pk_fp8_f32 v102, v74, v75 op_sel:[0,0,1]             // 00000000EB08: D2A24066 0002974A
	v_cvt_pk_fp8_f32 v99, v94, v95 op_sel:[0,0,1]              // 00000000EB10: D2A24063 0002BF5E
	v_cvt_pk_fp8_f32 v103, v78, v79 op_sel:[0,0,1]             // 00000000EB18: D2A24067 00029F4E
	s_waitcnt vmcnt(0)                                         // 00000000EB20: BF8C0F70
	s_barrier                                                  // 00000000EB24: BF8A0000
	s_add_u32 s17, s98, s80                                    // 00000000EB28: 80115062
	s_and_b32 s24, s17, 3                                      // 00000000EB2C: 86188311
	s_cmp_lg_u32 s76, 0                                        // 00000000EB30: BF07804C
	s_cbranch_scc1 4                                           // 00000000EB34: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4348>
	s_not_b32 s17, s52                                         // 00000000EB38: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000EB3C: 80111132
	s_cmp_lg_u32 s52, s17                                      // 00000000EB40: BF071134
	s_cbranch_scc1 469                                         // 00000000EB44: BF8501D5 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4a9c>
	s_add_u32 s2, s2, s13                                      // 00000000EB48: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000EB4C: BF093102
	s_mov_b32 s76, 0                                           // 00000000EB50: BECC0080
	s_cbranch_scc1 22                                          // 00000000EB54: BF850016 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x43b0>
	s_lshl_b32 s17, s2, 5                                      // 00000000EB58: 8E118502
	s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0          // 00000000EB5C: C00E4D17 22000000
	s_mov_b64 s[18:19], -1                                     // 00000000EB64: BE9201C1
	s_branch 462                                               // 00000000EB68: BF8201CE <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4aa4>
	s_mov_b32 s76, 0                                           // 00000000EB6C: BECC0080
	s_mov_b64 s[20:21], s[10:11]                               // 00000000EB70: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000EB74: BE92010E
	s_mov_b32 s17, s3                                          // 00000000EB78: BE910003
	s_mov_b32 s22, 0                                           // 00000000EB7C: BE960080
	s_branch 448                                               // 00000000EB80: BF8201C0 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4a84>
	s_mov_b32 s76, 0                                           // 00000000EB84: BECC0080
	s_mov_b64 s[20:21], s[10:11]                               // 00000000EB88: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000EB8C: BE92010E
	s_mov_b32 s17, s3                                          // 00000000EB90: BE910003
	s_mov_b32 s22, 0                                           // 00000000EB94: BE960080
	s_branch 634                                               // 00000000EB98: BF82027A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4d84>
	s_mov_b64 s[20:21], s[10:11]                               // 00000000EB9C: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000EBA0: BE92010E
	s_mov_b32 s17, s3                                          // 00000000EBA4: BE910003
	s_mov_b32 s22, 0                                           // 00000000EBA8: BE960080
	s_branch 373                                               // 00000000EBAC: BF820175 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4984>
	s_mov_b64 s[20:21], s[10:11]                               // 00000000EBB0: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000EBB4: BE92010E
	s_mov_b32 s17, s3                                          // 00000000EBB8: BE910003
	s_mov_b32 s22, 0                                           // 00000000EBBC: BE960080
	s_branch 560                                               // 00000000EBC0: BF820230 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4c84>
	s_mov_b32 s76, 1                                           // 00000000EBC4: BECC0081
	s_mov_b64 s[18:19], 0                                      // 00000000EBC8: BE920180
	s_waitcnt lgkmcnt(0)                                       // 00000000EBCC: BF8CC07F
	s_mov_b32 s20, s58                                         // 00000000EBD0: BE94003A
	s_mov_b32 s21, s16                                         // 00000000EBD4: BE950010
	s_lshl_b64 s[20:21], s[20:21], 7                           // 00000000EBD8: 8E948714
	s_add_u32 s60, s38, s56                                    // 00000000EBDC: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000EBE0: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000EBE4: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000EBE8: 82411529
	s_not_b32 s17, s52                                         // 00000000EBEC: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000EBF0: 80111132
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000EBF4: 86927E12
	s_cselect_b32 s17, s17, s52                                // 00000000EBF8: 85113411
	s_lshl_b32 s18, s17, 5                                     // 00000000EBFC: 8E128511
	s_add_u32 s18, s18, 32                                     // 00000000EC00: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000EC04: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000EC08: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000EC0C: 8F128612
	s_min_u32 s98, s12, s18                                    // 00000000EC10: 83E2120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000EC14: 86927E00
	s_cbranch_scc0 60                                          // 00000000EC18: BF84003C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x450c>
	s_lshl_b32 s18, s24, 14                                    // 00000000EC1C: 8E128E18
	s_or_b32 s18, s18, s72                                     // 00000000EC20: 87124812
	s_mov_b32 m0, s18                                          // 00000000EC24: BEFC0012
	s_mov_b32 s67, s63                                         // 00000000EC28: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000EC2C: E05D1000 800F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000EC34: 807CFF12 00001000
	s_lshl_b32 s19, s24, 13                                    // 00000000EC3C: 8E138D18
	buffer_load_dwordx4 v164, s[60:63], s48 offen lds          // 00000000EC40: E05D1000 300F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000EC48: 877CFF12 00002000
	s_nop 0                                                    // 00000000EC50: BF800000
	buffer_load_dwordx4 v164, s[60:63], s74 offen lds          // 00000000EC54: E05D1000 4A0F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000EC5C: 807CFF12 00003000
	s_mul_i32 s18, s6, 48                                      // 00000000EC64: 9212B006
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000EC68: E05D1000 120F00A4
	s_add_u32 s18, s82, s19                                    // 00000000EC70: 80121352
	s_add_u32 m0, s18, s72                                     // 00000000EC74: 807C4812
	s_nop 0                                                    // 00000000EC78: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000EC7C: E05D1000 801000A6
	s_add_u32 s18, s82, s19                                    // 00000000EC84: 80121352
	s_add_u32 s18, s18, s72                                    // 00000000EC88: 80124812
	s_add_u32 m0, s18, 0x1000                                  // 00000000EC8C: 807CFF12 00001000
	s_cmp_lt_u32 s98, 2                                        // 00000000EC94: BF0A8262
	buffer_load_dwordx4 v166, s[64:67], s75 offen lds          // 00000000EC98: E05D1000 4B1000A6
	s_cbranch_scc1 26                                          // 00000000ECA0: BF85001A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x450c>
	s_add_u32 s18, s24, 1                                      // 00000000ECA4: 80128118
	s_and_b32 s18, s18, 3                                      // 00000000ECA8: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000ECAC: 8E128E12
	s_or_b32 s18, s18, s72                                     // 00000000ECB0: 87124812
	s_mov_b32 m0, s18                                          // 00000000ECB4: BEFC0012
	s_mul_i32 s19, s6, 0x50                                    // 00000000ECB8: 9213FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000ECC0: E05D1000 090F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000ECC8: 807CFF12 00001000
	s_nop 0                                                    // 00000000ECD0: BF800000
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000ECD4: E05D1000 130F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000ECDC: 877CFF12 00002000
	s_mul_i32 s19, s6, 0x60                                    // 00000000ECE4: 9213FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000ECEC: E05D1000 130F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000ECF4: 807CFF12 00003000
	s_mul_i32 s18, s6, 0x70                                    // 00000000ECFC: 9212FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000ED04: E05D1000 120F00A4
	s_mov_b32 s18, s59                                         // 00000000ED0C: BE92003B
	s_mov_b32 s19, s16                                         // 00000000ED10: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000ED14: 8E928812
	s_add_u32 s22, s36, s54                                    // 00000000ED18: 80163624
	s_addc_u32 s23, s37, s55                                   // 00000000ED1C: 82173725
	s_add_u32 s20, s42, s18                                    // 00000000ED20: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000ED24: 8215132B
	s_add_u32 s18, s33, s53                                    // 00000000ED28: 80123521
	s_lshl_b32 s18, s18, 2                                     // 00000000ED2C: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000ED30: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000ED34: 821A802D
	s_mul_i32 s17, s17, s51                                    // 00000000ED38: 92113311
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000ED3C: 8692227E
	s_cselect_b32 s19, 0, s26                                  // 00000000ED40: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000ED44: 85121980
	s_add_u32 s25, s17, s73                                    // 00000000ED48: 80194911
	s_lshl_b32 s17, s25, 5                                     // 00000000ED4C: 8E118519
	v_or_b32_e32 v64, s17, v146                                // 00000000ED50: 28812411
	s_bfe_u32 s77, s25, 0x1a0001                               // 00000000ED54: 92CDFF19 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000ED5C: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000ED64: 688081A7
	global_load_dwordx4 v[182:185], v64, s[22:23]              // 00000000ED68: DC5C8000 B6160040
	global_load_dwordx4 v[186:189], v64, s[22:23] offset:16    // 00000000ED70: DC5C8010 BA160040
	global_load_dwordx4 v[190:193], v64, s[22:23] offset:64    // 00000000ED78: DC5C8040 BE160040
	global_load_dwordx4 v[194:197], v64, s[22:23] offset:80    // 00000000ED80: DC5C8050 C2160040
	global_load_dwordx4 v[198:201], v64, s[22:23] offset:128   // 00000000ED88: DC5C8080 C6160040
	global_load_dwordx4 v[202:205], v64, s[22:23] offset:144   // 00000000ED90: DC5C8090 CA160040
	s_mov_b32 s67, 0x110000                                    // 00000000ED98: BEC300FF 00110000
	s_mov_b32 s22, 1                                           // 00000000EDA0: BE960081
	s_mov_b32 s79, 0x110000                                    // 00000000EDA4: BECF00FF 00110000
	s_branch 309                                               // 00000000EDAC: BF820135 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4a84>
	s_mov_b32 s76, 1                                           // 00000000EDB0: BECC0081
	s_mov_b64 s[18:19], 0                                      // 00000000EDB4: BE920180
	s_waitcnt lgkmcnt(0)                                       // 00000000EDB8: BF8CC07F
	s_mov_b32 s20, s58                                         // 00000000EDBC: BE94003A
	s_mov_b32 s21, s16                                         // 00000000EDC0: BE950010
	s_lshl_b64 s[20:21], s[20:21], 7                           // 00000000EDC4: 8E948714
	s_add_u32 s60, s38, s56                                    // 00000000EDC8: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000EDCC: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000EDD0: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000EDD4: 82411529
	s_not_b32 s17, s52                                         // 00000000EDD8: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000EDDC: 80111132
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000EDE0: 86927E12
	s_cselect_b32 s17, s17, s52                                // 00000000EDE4: 85113411
	s_lshl_b32 s18, s17, 5                                     // 00000000EDE8: 8E128511
	s_add_u32 s18, s18, 32                                     // 00000000EDEC: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000EDF0: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000EDF4: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000EDF8: 8F128612
	s_min_u32 s98, s12, s18                                    // 00000000EDFC: 83E2120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000EE00: 86927E00
	s_cbranch_scc0 60                                          // 00000000EE04: BF84003C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x46f8>
	s_lshl_b32 s18, s24, 14                                    // 00000000EE08: 8E128E18
	s_or_b32 s18, s18, s72                                     // 00000000EE0C: 87124812
	s_mov_b32 m0, s18                                          // 00000000EE10: BEFC0012
	s_mov_b32 s67, s63                                         // 00000000EE14: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000EE18: E05D1000 800F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000EE20: 807CFF12 00001000
	s_lshl_b32 s19, s24, 13                                    // 00000000EE28: 8E138D18
	buffer_load_dwordx4 v164, s[60:63], s48 offen lds          // 00000000EE2C: E05D1000 300F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000EE34: 877CFF12 00002000
	s_nop 0                                                    // 00000000EE3C: BF800000
	buffer_load_dwordx4 v164, s[60:63], s74 offen lds          // 00000000EE40: E05D1000 4A0F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000EE48: 807CFF12 00003000
	s_mul_i32 s18, s6, 48                                      // 00000000EE50: 9212B006
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000EE54: E05D1000 120F00A4
	s_add_u32 s18, s82, s19                                    // 00000000EE5C: 80121352
	s_add_u32 m0, s18, s72                                     // 00000000EE60: 807C4812
	s_nop 0                                                    // 00000000EE64: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000EE68: E05D1000 801000A6
	s_add_u32 s18, s82, s19                                    // 00000000EE70: 80121352
	s_add_u32 s18, s18, s72                                    // 00000000EE74: 80124812
	s_add_u32 m0, s18, 0x1000                                  // 00000000EE78: 807CFF12 00001000
	s_cmp_lt_u32 s98, 2                                        // 00000000EE80: BF0A8262
	buffer_load_dwordx4 v166, s[64:67], s75 offen lds          // 00000000EE84: E05D1000 4B1000A6
	s_cbranch_scc1 26                                          // 00000000EE8C: BF85001A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x46f8>
	s_add_u32 s18, s24, 1                                      // 00000000EE90: 80128118
	s_and_b32 s18, s18, 3                                      // 00000000EE94: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000EE98: 8E128E12
	s_or_b32 s18, s18, s72                                     // 00000000EE9C: 87124812
	s_mov_b32 m0, s18                                          // 00000000EEA0: BEFC0012
	s_mul_i32 s19, s6, 0x50                                    // 00000000EEA4: 9213FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000EEAC: E05D1000 090F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000EEB4: 807CFF12 00001000
	s_nop 0                                                    // 00000000EEBC: BF800000
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000EEC0: E05D1000 130F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000EEC8: 877CFF12 00002000
	s_mul_i32 s19, s6, 0x60                                    // 00000000EED0: 9213FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000EED8: E05D1000 130F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000EEE0: 807CFF12 00003000
	s_mul_i32 s18, s6, 0x70                                    // 00000000EEE8: 9212FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000EEF0: E05D1000 120F00A4
	s_mov_b32 s18, s59                                         // 00000000EEF8: BE92003B
	s_mov_b32 s19, s16                                         // 00000000EEFC: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000EF00: 8E928812
	s_add_u32 s22, s36, s54                                    // 00000000EF04: 80163624
	s_addc_u32 s23, s37, s55                                   // 00000000EF08: 82173725
	s_add_u32 s20, s42, s18                                    // 00000000EF0C: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000EF10: 8215132B
	s_add_u32 s18, s33, s53                                    // 00000000EF14: 80123521
	s_lshl_b32 s18, s18, 2                                     // 00000000EF18: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000EF1C: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000EF20: 821A802D
	s_mul_i32 s17, s17, s51                                    // 00000000EF24: 92113311
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000EF28: 8692227E
	s_cselect_b32 s19, 0, s26                                  // 00000000EF2C: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000EF30: 85121980
	s_add_u32 s25, s17, s73                                    // 00000000EF34: 80194911
	s_lshl_b32 s17, s25, 5                                     // 00000000EF38: 8E118519
	v_or_b32_e32 v64, s17, v146                                // 00000000EF3C: 28812411
	s_bfe_u32 s77, s25, 0x1a0001                               // 00000000EF40: 92CDFF19 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000EF48: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000EF50: 688081A7
	global_load_dwordx4 v[182:185], v64, s[22:23]              // 00000000EF54: DC5C8000 B6160040
	global_load_dwordx4 v[186:189], v64, s[22:23] offset:16    // 00000000EF5C: DC5C8010 BA160040
	global_load_dwordx4 v[190:193], v64, s[22:23] offset:64    // 00000000EF64: DC5C8040 BE160040
	global_load_dwordx4 v[194:197], v64, s[22:23] offset:80    // 00000000EF6C: DC5C8050 C2160040
	global_load_dwordx4 v[198:201], v64, s[22:23] offset:128   // 00000000EF74: DC5C8080 C6160040
	global_load_dwordx4 v[202:205], v64, s[22:23] offset:144   // 00000000EF7C: DC5C8090 CA160040
	s_mov_b32 s67, 0x110000                                    // 00000000EF84: BEC300FF 00110000
	s_mov_b32 s22, 1                                           // 00000000EF8C: BE960081
	s_mov_b32 s79, 0x110000                                    // 00000000EF90: BECF00FF 00110000
	s_branch 378                                               // 00000000EF98: BF82017A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4d84>
	s_mov_b32 s76, 1                                           // 00000000EF9C: BECC0081
	s_mov_b64 s[18:19], 0                                      // 00000000EFA0: BE920180
	s_waitcnt lgkmcnt(0)                                       // 00000000EFA4: BF8CC07F
	s_mov_b32 s20, s58                                         // 00000000EFA8: BE94003A
	s_mov_b32 s21, s16                                         // 00000000EFAC: BE950010
	s_lshl_b64 s[20:21], s[20:21], 7                           // 00000000EFB0: 8E948714
	s_add_u32 s60, s38, s56                                    // 00000000EFB4: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000EFB8: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000EFBC: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000EFC0: 82411529
	s_not_b32 s17, s52                                         // 00000000EFC4: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000EFC8: 80111132
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000EFCC: 86927E12
	s_cselect_b32 s17, s17, s52                                // 00000000EFD0: 85113411
	s_lshl_b32 s18, s17, 5                                     // 00000000EFD4: 8E128511
	s_add_u32 s18, s18, 32                                     // 00000000EFD8: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000EFDC: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000EFE0: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000EFE4: 8F128612
	s_min_u32 s98, s12, s18                                    // 00000000EFE8: 83E2120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000EFEC: 86927E00
	s_cbranch_scc0 60                                          // 00000000EFF0: BF84003C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x48e4>
	s_lshl_b32 s18, s24, 14                                    // 00000000EFF4: 8E128E18
	s_or_b32 s18, s18, s72                                     // 00000000EFF8: 87124812
	s_mov_b32 m0, s18                                          // 00000000EFFC: BEFC0012
	s_mov_b32 s67, s63                                         // 00000000F000: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000F004: E05D1000 800F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000F00C: 807CFF12 00001000
	s_lshl_b32 s19, s24, 13                                    // 00000000F014: 8E138D18
	buffer_load_dwordx4 v164, s[60:63], s48 offen lds          // 00000000F018: E05D1000 300F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000F020: 877CFF12 00002000
	s_nop 0                                                    // 00000000F028: BF800000
	buffer_load_dwordx4 v164, s[60:63], s74 offen lds          // 00000000F02C: E05D1000 4A0F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000F034: 807CFF12 00003000
	s_mul_i32 s18, s6, 48                                      // 00000000F03C: 9212B006
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F040: E05D1000 120F00A4
	s_add_u32 s18, s82, s19                                    // 00000000F048: 80121352
	s_add_u32 m0, s18, s72                                     // 00000000F04C: 807C4812
	s_nop 0                                                    // 00000000F050: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000F054: E05D1000 801000A6
	s_add_u32 s18, s82, s19                                    // 00000000F05C: 80121352
	s_add_u32 s18, s18, s72                                    // 00000000F060: 80124812
	s_add_u32 m0, s18, 0x1000                                  // 00000000F064: 807CFF12 00001000
	s_cmp_lt_u32 s98, 2                                        // 00000000F06C: BF0A8262
	buffer_load_dwordx4 v166, s[64:67], s75 offen lds          // 00000000F070: E05D1000 4B1000A6
	s_cbranch_scc1 26                                          // 00000000F078: BF85001A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x48e4>
	s_add_u32 s18, s24, 1                                      // 00000000F07C: 80128118
	s_and_b32 s18, s18, 3                                      // 00000000F080: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000F084: 8E128E12
	s_or_b32 s18, s18, s72                                     // 00000000F088: 87124812
	s_mov_b32 m0, s18                                          // 00000000F08C: BEFC0012
	s_mul_i32 s19, s6, 0x50                                    // 00000000F090: 9213FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000F098: E05D1000 090F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000F0A0: 807CFF12 00001000
	s_nop 0                                                    // 00000000F0A8: BF800000
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F0AC: E05D1000 130F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000F0B4: 877CFF12 00002000
	s_mul_i32 s19, s6, 0x60                                    // 00000000F0BC: 9213FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F0C4: E05D1000 130F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000F0CC: 807CFF12 00003000
	s_mul_i32 s18, s6, 0x70                                    // 00000000F0D4: 9212FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F0DC: E05D1000 120F00A4
	s_mov_b32 s18, s59                                         // 00000000F0E4: BE92003B
	s_mov_b32 s19, s16                                         // 00000000F0E8: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000F0EC: 8E928812
	s_add_u32 s22, s36, s54                                    // 00000000F0F0: 80163624
	s_addc_u32 s23, s37, s55                                   // 00000000F0F4: 82173725
	s_add_u32 s20, s42, s18                                    // 00000000F0F8: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000F0FC: 8215132B
	s_add_u32 s18, s33, s53                                    // 00000000F100: 80123521
	s_lshl_b32 s18, s18, 2                                     // 00000000F104: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000F108: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000F10C: 821A802D
	s_mul_i32 s17, s17, s51                                    // 00000000F110: 92113311
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000F114: 8692227E
	s_cselect_b32 s19, 0, s26                                  // 00000000F118: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000F11C: 85121980
	s_add_u32 s25, s17, s73                                    // 00000000F120: 80194911
	s_lshl_b32 s17, s25, 5                                     // 00000000F124: 8E118519
	v_or_b32_e32 v64, s17, v146                                // 00000000F128: 28812411
	s_bfe_u32 s77, s25, 0x1a0001                               // 00000000F12C: 92CDFF19 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000F134: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000F13C: 688081A7
	global_load_dwordx4 v[182:185], v64, s[22:23]              // 00000000F140: DC5C8000 B6160040
	global_load_dwordx4 v[186:189], v64, s[22:23] offset:16    // 00000000F148: DC5C8010 BA160040
	global_load_dwordx4 v[190:193], v64, s[22:23] offset:64    // 00000000F150: DC5C8040 BE160040
	global_load_dwordx4 v[194:197], v64, s[22:23] offset:80    // 00000000F158: DC5C8050 C2160040
	global_load_dwordx4 v[198:201], v64, s[22:23] offset:128   // 00000000F160: DC5C8080 C6160040
	global_load_dwordx4 v[202:205], v64, s[22:23] offset:144   // 00000000F168: DC5C8090 CA160040
	s_mov_b32 s67, 0x110000                                    // 00000000F170: BEC300FF 00110000
	s_mov_b32 s22, 1                                           // 00000000F178: BE960081
	s_mov_b32 s79, 0x110000                                    // 00000000F17C: BECF00FF 00110000
	s_setprio 1                                                // 00000000F184: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[96:103], 0// 00000000F188: D3AD0040 0202C17E
	s_add_u32 s23, s78, s80                                    // 00000000F190: 8017504E
	s_and_b32 s23, s23, 3                                      // 00000000F194: 86178317
	s_lshl_b32 s23, s23, 13                                    // 00000000F198: 8E178D17
	s_add_u32 s23, s82, s23                                    // 00000000F19C: 80171752
	s_nop 7                                                    // 00000000F1A0: BF800007
	v_add3_u32 v65, s23, v173, v172                            // 00000000F1A4: D1FF0041 06B35A17
	s_waitcnt vmcnt(6)                                         // 00000000F1AC: BF8C0F76
	ds_read_b64_tr_b8 v[68:69], v65                            // 00000000F1B0: D9C40000 44000041
	ds_read_b64_tr_b8 v[70:71], v65 offset:1024                // 00000000F1B8: D9C40400 46000041
	ds_read_b64_tr_b8 v[72:73], v65 offset:2048                // 00000000F1C0: D9C40800 48000041
	ds_read_b64_tr_b8 v[74:75], v65 offset:3072                // 00000000F1C8: D9C40C00 4A000041
	ds_read_b64_tr_b8 v[76:77], v65 offset:256                 // 00000000F1D0: D9C40100 4C000041
	ds_read_b64_tr_b8 v[78:79], v65 offset:1280                // 00000000F1D8: D9C40500 4E000041
	ds_read_b64_tr_b8 v[80:81], v65 offset:2304                // 00000000F1E0: D9C40900 50000041
	ds_read_b64_tr_b8 v[82:83], v65 offset:3328                // 00000000F1E8: D9C40D00 52000041
	ds_read_b64_tr_b8 v[84:85], v65 offset:512                 // 00000000F1F0: D9C40200 54000041
	ds_read_b64_tr_b8 v[86:87], v65 offset:1536                // 00000000F1F8: D9C40600 56000041
	ds_read_b64_tr_b8 v[88:89], v65 offset:2560                // 00000000F200: D9C40A00 58000041
	ds_read_b64_tr_b8 v[90:91], v65 offset:3584                // 00000000F208: D9C40E00 5A000041
	v_lshlrev_b32_e32 v66, 23, v180                            // 00000000F210: 24856897
	v_fma_f32 v179, v64, v66, v179                             // 00000000F214: D1CB00B3 06CE8540
	s_waitcnt lgkmcnt(4)                                       // 00000000F21C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[68:75], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000F220: D3AC0000 000369AA D3AE0830 04C2C144
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[76:83], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000F230: D3AC0000 000369AA D3AE0820 0482C14C
	ds_read_b64_tr_b8 v[66:67], v65 offset:768                 // 00000000F240: D9C40300 42000041
	ds_read_b64_tr_b8 v[68:69], v65 offset:1792                // 00000000F248: D9C40700 44000041
	ds_read_b64_tr_b8 v[70:71], v65 offset:2816                // 00000000F250: D9C40B00 46000041
	ds_read_b64_tr_b8 v[72:73], v65 offset:3840                // 00000000F258: D9C40F00 48000041
	s_waitcnt lgkmcnt(0)                                       // 00000000F260: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[84:91], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000F264: D3AC0000 000369AA D3AE0810 0442C154
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[66:73], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000F274: D3AC0000 000369AA D3AE0800 0402C142
	s_waitcnt vmcnt(6)                                         // 00000000F284: BF8C0F76
	s_barrier                                                  // 00000000F288: BF8A0000
	s_mov_b32 s80, s24                                         // 00000000F28C: BED00018
	s_cmp_eq_u32 s22, 0                                        // 00000000F290: BF068016
	s_cbranch_scc0 192                                         // 00000000F294: BF8400C0 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4d98>
	s_branch 444                                               // 00000000F298: BF8201BC <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x518c>
	s_mov_b32 s76, 1                                           // 00000000F29C: BECC0081
	s_mov_b64 s[18:19], 0                                      // 00000000F2A0: BE920180
	s_waitcnt lgkmcnt(0)                                       // 00000000F2A4: BF8CC07F
	s_mov_b32 s20, s58                                         // 00000000F2A8: BE94003A
	s_mov_b32 s21, s16                                         // 00000000F2AC: BE950010
	s_lshl_b64 s[20:21], s[20:21], 7                           // 00000000F2B0: 8E948714
	s_add_u32 s60, s38, s56                                    // 00000000F2B4: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000F2B8: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000F2BC: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000F2C0: 82411529
	s_not_b32 s17, s52                                         // 00000000F2C4: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000F2C8: 80111132
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000F2CC: 86927E12
	s_cselect_b32 s17, s17, s52                                // 00000000F2D0: 85113411
	s_lshl_b32 s18, s17, 5                                     // 00000000F2D4: 8E128511
	s_add_u32 s18, s18, 32                                     // 00000000F2D8: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000F2DC: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000F2E0: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000F2E4: 8F128612
	s_min_u32 s98, s12, s18                                    // 00000000F2E8: 83E2120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000F2EC: 86927E00
	s_cbranch_scc0 60                                          // 00000000F2F0: BF84003C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4be4>
	s_lshl_b32 s18, s24, 14                                    // 00000000F2F4: 8E128E18
	s_or_b32 s18, s18, s72                                     // 00000000F2F8: 87124812
	s_mov_b32 m0, s18                                          // 00000000F2FC: BEFC0012
	s_mov_b32 s67, s63                                         // 00000000F300: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000F304: E05D1000 800F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000F30C: 807CFF12 00001000
	s_lshl_b32 s19, s24, 13                                    // 00000000F314: 8E138D18
	buffer_load_dwordx4 v164, s[60:63], s48 offen lds          // 00000000F318: E05D1000 300F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000F320: 877CFF12 00002000
	s_nop 0                                                    // 00000000F328: BF800000
	buffer_load_dwordx4 v164, s[60:63], s74 offen lds          // 00000000F32C: E05D1000 4A0F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000F334: 807CFF12 00003000
	s_mul_i32 s18, s6, 48                                      // 00000000F33C: 9212B006
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F340: E05D1000 120F00A4
	s_add_u32 s18, s82, s19                                    // 00000000F348: 80121352
	s_add_u32 m0, s18, s72                                     // 00000000F34C: 807C4812
	s_nop 0                                                    // 00000000F350: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000F354: E05D1000 801000A6
	s_add_u32 s18, s82, s19                                    // 00000000F35C: 80121352
	s_add_u32 s18, s18, s72                                    // 00000000F360: 80124812
	s_add_u32 m0, s18, 0x1000                                  // 00000000F364: 807CFF12 00001000
	s_cmp_lt_u32 s98, 2                                        // 00000000F36C: BF0A8262
	buffer_load_dwordx4 v166, s[64:67], s75 offen lds          // 00000000F370: E05D1000 4B1000A6
	s_cbranch_scc1 26                                          // 00000000F378: BF85001A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4be4>
	s_add_u32 s18, s24, 1                                      // 00000000F37C: 80128118
	s_and_b32 s18, s18, 3                                      // 00000000F380: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000F384: 8E128E12
	s_or_b32 s18, s18, s72                                     // 00000000F388: 87124812
	s_mov_b32 m0, s18                                          // 00000000F38C: BEFC0012
	s_mul_i32 s19, s6, 0x50                                    // 00000000F390: 9213FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000F398: E05D1000 090F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000F3A0: 807CFF12 00001000
	s_nop 0                                                    // 00000000F3A8: BF800000
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F3AC: E05D1000 130F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000F3B4: 877CFF12 00002000
	s_mul_i32 s19, s6, 0x60                                    // 00000000F3BC: 9213FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F3C4: E05D1000 130F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000F3CC: 807CFF12 00003000
	s_mul_i32 s18, s6, 0x70                                    // 00000000F3D4: 9212FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F3DC: E05D1000 120F00A4
	s_mov_b32 s18, s59                                         // 00000000F3E4: BE92003B
	s_mov_b32 s19, s16                                         // 00000000F3E8: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000F3EC: 8E928812
	s_add_u32 s22, s36, s54                                    // 00000000F3F0: 80163624
	s_addc_u32 s23, s37, s55                                   // 00000000F3F4: 82173725
	s_add_u32 s20, s42, s18                                    // 00000000F3F8: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000F3FC: 8215132B
	s_add_u32 s18, s33, s53                                    // 00000000F400: 80123521
	s_lshl_b32 s18, s18, 2                                     // 00000000F404: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000F408: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000F40C: 821A802D
	s_mul_i32 s17, s17, s51                                    // 00000000F410: 92113311
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000F414: 8692227E
	s_cselect_b32 s19, 0, s26                                  // 00000000F418: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000F41C: 85121980
	s_add_u32 s25, s17, s73                                    // 00000000F420: 80194911
	s_lshl_b32 s17, s25, 5                                     // 00000000F424: 8E118519
	v_or_b32_e32 v64, s17, v146                                // 00000000F428: 28812411
	s_bfe_u32 s77, s25, 0x1a0001                               // 00000000F42C: 92CDFF19 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000F434: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000F43C: 688081A7
	global_load_dwordx4 v[182:185], v64, s[22:23]              // 00000000F440: DC5C8000 B6160040
	global_load_dwordx4 v[186:189], v64, s[22:23] offset:16    // 00000000F448: DC5C8010 BA160040
	global_load_dwordx4 v[190:193], v64, s[22:23] offset:64    // 00000000F450: DC5C8040 BE160040
	global_load_dwordx4 v[194:197], v64, s[22:23] offset:80    // 00000000F458: DC5C8050 C2160040
	global_load_dwordx4 v[198:201], v64, s[22:23] offset:128   // 00000000F460: DC5C8080 C6160040
	global_load_dwordx4 v[202:205], v64, s[22:23] offset:144   // 00000000F468: DC5C8090 CA160040
	s_mov_b32 s67, 0x110000                                    // 00000000F470: BEC300FF 00110000
	s_mov_b32 s22, 1                                           // 00000000F478: BE960081
	s_mov_b32 s79, 0x110000                                    // 00000000F47C: BECF00FF 00110000
	s_setprio 1                                                // 00000000F484: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[96:103], 0// 00000000F488: D3AD0040 0202C17E
	s_add_u32 s23, s78, s80                                    // 00000000F490: 8017504E
	s_and_b32 s23, s23, 3                                      // 00000000F494: 86178317
	s_lshl_b32 s23, s23, 13                                    // 00000000F498: 8E178D17
	s_add_u32 s23, s82, s23                                    // 00000000F49C: 80171752
	s_nop 7                                                    // 00000000F4A0: BF800007
	v_add3_u32 v65, s23, v173, v172                            // 00000000F4A4: D1FF0041 06B35A17
	s_waitcnt vmcnt(6)                                         // 00000000F4AC: BF8C0F76
	ds_read_b64_tr_b8 v[68:69], v65                            // 00000000F4B0: D9C40000 44000041
	ds_read_b64_tr_b8 v[70:71], v65 offset:1024                // 00000000F4B8: D9C40400 46000041
	ds_read_b64_tr_b8 v[72:73], v65 offset:2048                // 00000000F4C0: D9C40800 48000041
	ds_read_b64_tr_b8 v[74:75], v65 offset:3072                // 00000000F4C8: D9C40C00 4A000041
	ds_read_b64_tr_b8 v[76:77], v65 offset:256                 // 00000000F4D0: D9C40100 4C000041
	ds_read_b64_tr_b8 v[78:79], v65 offset:1280                // 00000000F4D8: D9C40500 4E000041
	ds_read_b64_tr_b8 v[80:81], v65 offset:2304                // 00000000F4E0: D9C40900 50000041
	ds_read_b64_tr_b8 v[82:83], v65 offset:3328                // 00000000F4E8: D9C40D00 52000041
	ds_read_b64_tr_b8 v[84:85], v65 offset:512                 // 00000000F4F0: D9C40200 54000041
	ds_read_b64_tr_b8 v[86:87], v65 offset:1536                // 00000000F4F8: D9C40600 56000041
	ds_read_b64_tr_b8 v[88:89], v65 offset:2560                // 00000000F500: D9C40A00 58000041
	ds_read_b64_tr_b8 v[90:91], v65 offset:3584                // 00000000F508: D9C40E00 5A000041
	v_lshlrev_b32_e32 v66, 23, v180                            // 00000000F510: 24856897
	v_fma_f32 v179, v64, v66, v179                             // 00000000F514: D1CB00B3 06CE8540
	s_waitcnt lgkmcnt(4)                                       // 00000000F51C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[68:75], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000F520: D3AC0000 000369AA D3AE0830 04C2C144
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[76:83], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000F530: D3AC0000 000369AA D3AE0820 0482C14C
	ds_read_b64_tr_b8 v[66:67], v65 offset:768                 // 00000000F540: D9C40300 42000041
	ds_read_b64_tr_b8 v[68:69], v65 offset:1792                // 00000000F548: D9C40700 44000041
	ds_read_b64_tr_b8 v[70:71], v65 offset:2816                // 00000000F550: D9C40B00 46000041
	ds_read_b64_tr_b8 v[72:73], v65 offset:3840                // 00000000F558: D9C40F00 48000041
	s_waitcnt lgkmcnt(0)                                       // 00000000F560: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[84:91], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000F564: D3AC0000 000369AA D3AE0810 0442C154
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[66:73], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000F574: D3AC0000 000369AA D3AE0800 0402C142
	s_waitcnt vmcnt(6)                                         // 00000000F584: BF8C0F76
	s_barrier                                                  // 00000000F588: BF8A0000
	s_mov_b32 s80, s24                                         // 00000000F58C: BED00018
	s_cmp_eq_u32 s22, 0                                        // 00000000F590: BF068016
	s_cbranch_scc1 253                                         // 00000000F594: BF8500FD <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x518c>
	s_nop 15                                                   // 00000000F598: BF80000F
	s_nop 3                                                    // 00000000F59C: BF800003
	v_rcp_f32_e32 v64, v179                                    // 00000000F5A0: 7E8045B3
	v_log_f32_e32 v65, v179                                    // 00000000F5A4: 7E8243B3
	s_nop 1                                                    // 00000000F5A8: BF800001
	v_mul_f32_e32 v64, v168, v64                               // 00000000F5AC: 0A8081A8
	v_mul_f32_e32 v48, v48, v64                                // 00000000F5B0: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 00000000F5B4: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 00000000F5B8: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 00000000F5BC: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 00000000F5C0: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 00000000F5C4: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 00000000F5C8: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 00000000F5CC: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 00000000F5D0: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 00000000F5D4: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 00000000F5D8: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 00000000F5DC: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 00000000F5E0: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 00000000F5E4: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 00000000F5E8: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 00000000F5EC: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 00000000F5F0: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 00000000F5F4: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 00000000F5F8: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 00000000F5FC: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 00000000F600: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 00000000F604: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 00000000F608: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 00000000F60C: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 00000000F610: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 00000000F614: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 00000000F618: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 00000000F61C: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 00000000F620: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 00000000F624: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 00000000F628: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 00000000F62C: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 00000000F630: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 00000000F634: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 00000000F638: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 00000000F63C: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 00000000F640: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 00000000F644: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 00000000F648: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 00000000F64C: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 00000000F650: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 00000000F654: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 00000000F658: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 00000000F65C: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 00000000F660: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 00000000F664: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 00000000F668: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 00000000F66C: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 00000000F670: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 00000000F674: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 00000000F678: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 00000000F67C: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 00000000F680: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 00000000F684: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 00000000F688: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 00000000F68C: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 00000000F690: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 00000000F694: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 00000000F698: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 00000000F69C: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 00000000F6A0: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 00000000F6A4: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000F6A8: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000F6AC: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000F6B0: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000F6B8: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000F6C0: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000F6C8: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000F6D0: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000F6D8: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000F6E0: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000F6E8: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000F6F0: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000F6F8: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000F700: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000F708: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000F710: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000F718: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000F720: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000F728: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000F730: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000F738: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000F740: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000F748: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000F750: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000F758: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000F760: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000F768: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000F770: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000F778: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000F780: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000F788: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000F790: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000F798: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000F7A0: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000F7A8: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000F7B0: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000F7B4: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000F7B8: 7E000304
	v_mov_b32_e32 v1, v2                                       // 00000000F7BC: 7E020302
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000F7C0: 7E10B509
	v_mov_b32_e32 v2, v5                                       // 00000000F7C4: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000F7C8: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000F7CC: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000F7D0: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000F7D4: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000F7D8: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000F7DC: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000F7E0: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000F7E4: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000F7E8: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000F7EC: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000F7F0: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000F7F4: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000F7F8: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000F7FC: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000F800: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000F804: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000F808: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000F80C: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000F810: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000F814: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000F818: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000F81C: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000F820: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000F824: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000F828: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000F82C: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000F830: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000F834: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000F838: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000F83C: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000F840: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000F844: 7E380320
	v_mov_b32_e32 v29, v30                                     // 00000000F848: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000F84C: 7E3C0321
	ds_write_b128 v158, v[0:3]                                 // 00000000F850: D9BE0000 0000009E
	ds_write_b128 v160, v[4:7]                                 // 00000000F858: D9BE0000 000004A0
	ds_write_b128 v159, v[8:11]                                // 00000000F860: D9BE0000 0000089F
	ds_write_b128 v157, v[12:15]                               // 00000000F868: D9BE0000 00000C9D
	ds_write_b128 v156, v[16:19]                               // 00000000F870: D9BE0000 0000109C
	ds_write_b128 v155, v[20:23]                               // 00000000F878: D9BE0000 0000149B
	ds_write_b128 v154, v[24:27]                               // 00000000F880: D9BE0000 0000189A
	ds_write_b128 v153, v[28:31]                               // 00000000F888: D9BE0000 00001C99
	ds_read_b128 v[8:11], v149                                 // 00000000F890: D9FE0000 08000095
	ds_read_b128 v[12:15], v152 offset:1024                    // 00000000F898: D9FE0400 0C000098
	ds_read_b128 v[16:19], v151 offset:2048                    // 00000000F8A0: D9FE0800 10000097
	ds_read_b128 v[20:23], v150 offset:3072                    // 00000000F8A8: D9FE0C00 14000096
	ds_read_b128 v[24:27], v149 offset:4096                    // 00000000F8B0: D9FE1000 18000095
	ds_read_b128 v[28:31], v152 offset:5120                    // 00000000F8B8: D9FE1400 1C000098
	ds_read_b128 v[32:35], v151 offset:6144                    // 00000000F8C0: D9FE1800 20000097
	ds_read_b128 v[36:39], v150 offset:7168                    // 00000000F8C8: D9FE1C00 24000096
	v_add_u32_e32 v0, s3, v147                                 // 00000000F8D0: 68012603
	v_mul_lo_u32 v0, s8, v0                                    // 00000000F8D4: D2850000 00020008
	v_add_u32_e32 v0, v0, v148                                 // 00000000F8DC: 68012900
	v_add_u32_e32 v1, s4, v0                                   // 00000000F8E0: 68020004
	v_add_u32_e32 v2, s4, v1                                   // 00000000F8E4: 68040204
	v_add_u32_e32 v3, s4, v2                                   // 00000000F8E8: 68060404
	v_add_u32_e32 v4, s4, v3                                   // 00000000F8EC: 68080604
	v_add_u32_e32 v5, s4, v4                                   // 00000000F8F0: 680A0804
	v_add_u32_e32 v6, s4, v5                                   // 00000000F8F4: 680C0A04
	v_add_u32_e32 v7, s4, v6                                   // 00000000F8F8: 680E0C04
	s_waitcnt lgkmcnt(7)                                       // 00000000F8FC: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[10:11]                 // 00000000F900: DC7C8000 000A0800
	s_waitcnt lgkmcnt(6)                                       // 00000000F908: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[10:11]                // 00000000F90C: DC7C8000 000A0C01
	s_waitcnt lgkmcnt(5)                                       // 00000000F914: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[10:11]                // 00000000F918: DC7C8000 000A1002
	s_waitcnt lgkmcnt(4)                                       // 00000000F920: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[10:11]                // 00000000F924: DC7C8000 000A1403
	s_waitcnt lgkmcnt(3)                                       // 00000000F92C: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[10:11]                // 00000000F930: DC7C8000 000A1804
	s_waitcnt lgkmcnt(2)                                       // 00000000F938: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[10:11]                // 00000000F93C: DC7C8000 000A1C05
	s_waitcnt lgkmcnt(1)                                       // 00000000F944: BF8CC17F
	global_store_dwordx4 v6, v[32:35], s[10:11]                // 00000000F948: DC7C8000 000A2006
	s_waitcnt lgkmcnt(0)                                       // 00000000F950: BF8CC07F
	global_store_dwordx4 v7, v[36:39], s[10:11]                // 00000000F954: DC7C8000 000A2407
	v_add_f32_e32 v0, v178, v65                                // 00000000F95C: 020083B2
	v_add_f32_e32 v0, -4.0, v0                                 // 00000000F960: 020000F7
	v_add_f32_e32 v0, -2.0, v0                                 // 00000000F964: 020000F5
	v_mul_f32_e32 v0, 0x3f317218, v0                           // 00000000F968: 0A0000FF 3F317218
	v_add_u32_e32 v1, s3, v146                                 // 00000000F970: 68032403
	v_lshlrev_b32_e32 v1, 2, v1                                // 00000000F974: 24020282
	s_cmp_eq_u64 s[14:15], 0                                   // 00000000F978: BF12800E
	s_mov_b64 s[10:11], s[20:21]                               // 00000000F97C: BE8A0114
	s_mov_b32 s3, s17                                          // 00000000F980: BE830011
	s_cbranch_scc0 61390                                       // 00000000F984: BF84EFCE <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10c0>
	s_branch 60655                                             // 00000000F988: BF82ECEF <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x548>
	s_nop 15                                                   // 00000000F98C: BF80000F
	s_nop 3                                                    // 00000000F990: BF800003
	v_rcp_f32_e32 v64, v179                                    // 00000000F994: 7E8045B3
	v_log_f32_e32 v65, v179                                    // 00000000F998: 7E8243B3
	s_nop 1                                                    // 00000000F99C: BF800001
	v_mul_f32_e32 v64, v168, v64                               // 00000000F9A0: 0A8081A8
	v_mul_f32_e32 v48, v48, v64                                // 00000000F9A4: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 00000000F9A8: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 00000000F9AC: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 00000000F9B0: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 00000000F9B4: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 00000000F9B8: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 00000000F9BC: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 00000000F9C0: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 00000000F9C4: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 00000000F9C8: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 00000000F9CC: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 00000000F9D0: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 00000000F9D4: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 00000000F9D8: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 00000000F9DC: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 00000000F9E0: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 00000000F9E4: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 00000000F9E8: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 00000000F9EC: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 00000000F9F0: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 00000000F9F4: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 00000000F9F8: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 00000000F9FC: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 00000000FA00: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 00000000FA04: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 00000000FA08: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 00000000FA0C: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 00000000FA10: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 00000000FA14: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 00000000FA18: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 00000000FA1C: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 00000000FA20: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 00000000FA24: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 00000000FA28: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 00000000FA2C: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 00000000FA30: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 00000000FA34: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 00000000FA38: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 00000000FA3C: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 00000000FA40: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 00000000FA44: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 00000000FA48: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 00000000FA4C: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 00000000FA50: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 00000000FA54: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 00000000FA58: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 00000000FA5C: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 00000000FA60: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 00000000FA64: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 00000000FA68: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 00000000FA6C: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 00000000FA70: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 00000000FA74: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 00000000FA78: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 00000000FA7C: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 00000000FA80: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 00000000FA84: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 00000000FA88: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 00000000FA8C: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 00000000FA90: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 00000000FA94: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 00000000FA98: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000FA9C: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000FAA0: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000FAA4: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000FAAC: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000FAB4: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000FABC: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000FAC4: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000FACC: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000FAD4: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000FADC: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000FAE4: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000FAEC: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000FAF4: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000FAFC: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000FB04: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000FB0C: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000FB14: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000FB1C: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000FB24: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000FB2C: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000FB34: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000FB3C: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000FB44: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000FB4C: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000FB54: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000FB5C: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000FB64: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000FB6C: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000FB74: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000FB7C: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000FB84: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000FB8C: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000FB94: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000FB9C: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000FBA4: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000FBA8: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000FBAC: 7E000304
	v_mov_b32_e32 v1, v2                                       // 00000000FBB0: 7E020302
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000FBB4: 7E10B509
	v_mov_b32_e32 v2, v5                                       // 00000000FBB8: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000FBBC: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000FBC0: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000FBC4: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000FBC8: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000FBCC: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000FBD0: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000FBD4: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000FBD8: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000FBDC: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000FBE0: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000FBE4: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000FBE8: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000FBEC: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000FBF0: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000FBF4: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000FBF8: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000FBFC: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000FC00: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000FC04: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000FC08: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000FC0C: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000FC10: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000FC14: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000FC18: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000FC1C: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000FC20: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000FC24: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000FC28: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000FC2C: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000FC30: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000FC34: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000FC38: 7E380320
	v_mov_b32_e32 v29, v30                                     // 00000000FC3C: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000FC40: 7E3C0321
	ds_write_b128 v158, v[0:3]                                 // 00000000FC44: D9BE0000 0000009E
	ds_write_b128 v160, v[4:7]                                 // 00000000FC4C: D9BE0000 000004A0
	ds_write_b128 v159, v[8:11]                                // 00000000FC54: D9BE0000 0000089F
	ds_write_b128 v157, v[12:15]                               // 00000000FC5C: D9BE0000 00000C9D
	ds_write_b128 v156, v[16:19]                               // 00000000FC64: D9BE0000 0000109C
	ds_write_b128 v155, v[20:23]                               // 00000000FC6C: D9BE0000 0000149B
	ds_write_b128 v154, v[24:27]                               // 00000000FC74: D9BE0000 0000189A
	ds_write_b128 v153, v[28:31]                               // 00000000FC7C: D9BE0000 00001C99
	ds_read_b128 v[8:11], v149                                 // 00000000FC84: D9FE0000 08000095
	ds_read_b128 v[12:15], v152 offset:1024                    // 00000000FC8C: D9FE0400 0C000098
	ds_read_b128 v[16:19], v151 offset:2048                    // 00000000FC94: D9FE0800 10000097
	ds_read_b128 v[20:23], v150 offset:3072                    // 00000000FC9C: D9FE0C00 14000096
	ds_read_b128 v[24:27], v149 offset:4096                    // 00000000FCA4: D9FE1000 18000095
	ds_read_b128 v[28:31], v152 offset:5120                    // 00000000FCAC: D9FE1400 1C000098
	ds_read_b128 v[32:35], v151 offset:6144                    // 00000000FCB4: D9FE1800 20000097
	ds_read_b128 v[36:39], v150 offset:7168                    // 00000000FCBC: D9FE1C00 24000096
	v_add_u32_e32 v0, s3, v147                                 // 00000000FCC4: 68012603
	v_mul_lo_u32 v0, s8, v0                                    // 00000000FCC8: D2850000 00020008
	v_add_u32_e32 v0, v0, v148                                 // 00000000FCD0: 68012900
	v_add_u32_e32 v1, s4, v0                                   // 00000000FCD4: 68020004
	v_add_u32_e32 v2, s4, v1                                   // 00000000FCD8: 68040204
	v_add_u32_e32 v3, s4, v2                                   // 00000000FCDC: 68060404
	v_add_u32_e32 v4, s4, v3                                   // 00000000FCE0: 68080604
	v_add_u32_e32 v5, s4, v4                                   // 00000000FCE4: 680A0804
	v_add_u32_e32 v6, s4, v5                                   // 00000000FCE8: 680C0A04
	v_add_u32_e32 v7, s4, v6                                   // 00000000FCEC: 680E0C04
	s_waitcnt lgkmcnt(7)                                       // 00000000FCF0: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[10:11]                 // 00000000FCF4: DC7C8000 000A0800
	s_waitcnt lgkmcnt(6)                                       // 00000000FCFC: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[10:11]                // 00000000FD00: DC7C8000 000A0C01
	s_waitcnt lgkmcnt(5)                                       // 00000000FD08: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[10:11]                // 00000000FD0C: DC7C8000 000A1002
	s_waitcnt lgkmcnt(4)                                       // 00000000FD14: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[10:11]                // 00000000FD18: DC7C8000 000A1403
	s_waitcnt lgkmcnt(3)                                       // 00000000FD20: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[10:11]                // 00000000FD24: DC7C8000 000A1804
	s_waitcnt lgkmcnt(2)                                       // 00000000FD2C: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[10:11]                // 00000000FD30: DC7C8000 000A1C05
	s_waitcnt lgkmcnt(1)                                       // 00000000FD38: BF8CC17F
	global_store_dwordx4 v6, v[32:35], s[10:11]                // 00000000FD3C: DC7C8000 000A2006
	s_waitcnt lgkmcnt(0)                                       // 00000000FD44: BF8CC07F
	global_store_dwordx4 v7, v[36:39], s[10:11]                // 00000000FD48: DC7C8000 000A2407
	v_add_f32_e32 v0, v178, v65                                // 00000000FD50: 020083B2
	v_add_f32_e32 v0, -4.0, v0                                 // 00000000FD54: 020000F7
	v_add_f32_e32 v0, -2.0, v0                                 // 00000000FD58: 020000F5
	v_mul_f32_e32 v0, 0x3f317218, v0                           // 00000000FD5C: 0A0000FF 3F317218
	v_add_u32_e32 v1, s3, v146                                 // 00000000FD64: 68032403
	v_lshlrev_b32_e32 v1, 2, v1                                // 00000000FD68: 24020282
	s_cmp_eq_u64 s[14:15], 0                                   // 00000000FD6C: BF12800E
	s_cbranch_scc1 2                                           // 00000000FD70: BF850002 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x557c>
	global_store_dword v1, v0, s[14:15]                        // 00000000FD74: DC708000 000E0001
	s_and_b64 s[0:1], s[0:1], exec                             // 00000000FD7C: 86807E00
	s_cbranch_scc0 1                                           // 00000000FD80: BF840001 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5588>
	s_barrier                                                  // 00000000FD84: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000FD88: BF8C0F70
	s_endpgm                                                   // 00000000FD8C: BF810000
