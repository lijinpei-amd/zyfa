
benchmarks/results/hip_native/isa_match/runtime_add3_20261111/owning/native.co:	file format elf64-amdgpu

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
	s_cbranch_scc1 8895                                        // 000000001C74: BF8522BF <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8c74>
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
	s_min_u32 s97, s18, s10                                    // 000000001D1C: 83E10A12
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
	s_cmp_lt_u32 s97, 2                                        // 000000001DA0: BF0A8261
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
	v_lshlrev_b32_e32 v7, 3, v0                                // 000000001E48: 240E0083
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
	v_and_b32_e32 v8, 15, v0                                   // 000000001E8C: 2610008F
	v_xor_b32_e32 v2, v217, v2                                 // 000000001E90: 2A0405D9
	v_lshl_or_b32 v0, v0, 1, v217                              // 000000001E94: D2000000 07650300
	v_writelane_b32 v255, s10, 8                               // 000000001E9C: D28A00FF 0001100A
	s_add_u32 s10, s42, s23                                    // 000000001EA4: 800A172A
	v_and_b32_e32 v2, 1, v2                                    // 000000001EA8: 26040481
	v_and_b32_e32 v0, 0x41, v0                                 // 000000001EAC: 260000FF 00000041
	v_writelane_b32 v255, s10, 9                               // 000000001EB4: D28A00FF 0001120A
	s_addc_u32 s10, s43, 0                                     // 000000001EBC: 820A802B
	v_lshlrev_b32_e32 v6, 13, v1                               // 000000001EC0: 240C028D
	s_mov_b32 s48, 0x10000                                     // 000000001EC4: BEB000FF 00010000
	v_mov_b32_e32 v5, 0x38383838                               // 000000001ECC: 7E0A02FF 38383838
	v_and_b32_e32 v4, 4, v4                                    // 000000001ED4: 26080884
	v_and_b32_e32 v3, 0x78, v7                                 // 000000001ED8: 26060EFF 00000078
	v_and_b32_e32 v7, 0xf8, v7                                 // 000000001EE0: 260E0EFF 000000F8
	v_cmp_eq_u32_e32 vcc, 0, v2                                // 000000001EE8: 7D940480
	v_lshlrev_b32_e32 v0, 7, v0                                // 000000001EEC: 24000087
	s_cmp_eq_u32 s21, 0                                        // 000000001EF0: BF068015
	v_sub_u32_e32 v243, v216, v4                               // 000000001EF4: 6BE609D8
	v_xor_b32_e32 v4, v1, v8                                   // 000000001EF8: 2A081101
	v_or3_b32 v244, v7, v6, s48                                // 000000001EFC: D20200F4 00C20D07
	v_cndmask_b32_e32 v192, 0, v5, vcc                         // 000000001F04: 01800A80
	v_or_b32_e32 v2, 0x1c000, v0                               // 000000001F08: 280400FF 0001C000
	v_or_b32_e32 v5, 0x10000, v0                               // 000000001F10: 280A00FF 00010000
	v_or_b32_e32 v7, 0x14000, v0                               // 000000001F18: 280E00FF 00014000
	v_or_b32_e32 v0, 0x18000, v0                               // 000000001F20: 280000FF 00018000
	v_writelane_b32 v255, s10, 10                              // 000000001F28: D28A00FF 0001140A
	s_cselect_b64 s[10:11], -1, 0                              // 000000001F30: 858A80C1
	s_lshl_b32 s20, s20, 13                                    // 000000001F34: 8E148D14
	s_mov_b32 s17, 0x20000                                     // 000000001F38: BE9100FF 00020000
	v_lshlrev_b32_e32 v4, 4, v4                                // 000000001F40: 24080884
	v_add_u32_e32 v247, v0, v3                                 // 000000001F44: 69EE0700
	v_lshl_or_b32 v0, v216, 8, s20                             // 000000001F48: D2000000 005111D8
	v_or3_b32 v228, v0, v4, s17                                // 000000001F50: D20200E4 00460900
	v_xor_b32_e32 v0, 0x60, v228                               // 000000001F58: 2A01C8FF 00000060
	v_xor_b32_e32 v9, v217, v8                                 // 000000001F60: 2A1211D9
	s_lshl_b32 s21, s8, 5                                      // 000000001F64: 8E158508
	scratch_store_dword off, v0, off offset:56                 // 000000001F68: DC704038 007F0000
	v_xor_b32_e32 v0, 0x80, v228                               // 000000001F70: 2A01C8FF 00000080
	v_lshlrev_b32_e32 v6, 4, v9                                // 000000001F78: 240C1284
	v_add_u32_e32 v248, v2, v3                                 // 000000001F7C: 69F00702
	v_writelane_b32 v255, s21, 11                              // 000000001F80: D28A00FF 00011615
	s_lshl_b32 s21, s8, 6                                      // 000000001F88: 8E158608
	v_lshl_or_b32 v2, v217, 8, s20                             // 000000001F8C: D2000002 005111D9
	scratch_store_dword off, v0, off offset:52                 // 000000001F94: DC704034 007F0000
	v_xor_b32_e32 v0, 0xa0, v228                               // 000000001F9C: 2A01C8FF 000000A0
	v_writelane_b32 v255, s21, 12                              // 000000001FA4: D28A00FF 00011815
	s_lshl_b32 s20, s8, 2                                      // 000000001FAC: 8E148208
	v_or3_b32 v219, v2, v6, s17                                // 000000001FB0: D20200DB 00460D02
	scratch_store_dword off, v0, off offset:48                 // 000000001FB8: DC704030 007F0000
	v_xor_b32_e32 v0, 0xc0, v228                               // 000000001FC0: 2A01C8FF 000000C0
	s_mov_b32 s93, 0x1c000                                     // 000000001FC8: BEDD00FF 0001C000
	s_mov_b32 s94, 0x14000                                     // 000000001FD0: BEDE00FF 00014000
	s_mov_b32 s98, 0x18000                                     // 000000001FD8: BEE200FF 00018000
	s_mov_b32 s99, 0xc2fe0000                                  // 000000001FE0: BEE300FF C2FE0000
	s_mov_b32 s92, 0xc1000000                                  // 000000001FE8: BEDC00FF C1000000
	v_mov_b32_e32 v240, 0xff800000                             // 000000001FF0: 7FE002FF FF800000
	s_movk_i32 s95, 0x2000                                     // 000000001FF8: B05F2000
	s_mov_b32 s96, 0x1a000                                     // 000000001FFC: BEE000FF 0001A000
	v_mov_b32_e32 v242, 0x7f                                   // 000000002004: 7FE402FF 0000007F
	s_mov_b32 s49, 0x3e000000                                  // 00000000200C: BEB100FF 3E000000
	s_movk_i32 s89, 0x4000                                     // 000000002014: B0594000
	s_movk_i32 s90, 0x6000                                     // 000000002018: B05A6000
	s_mov_b32 s91, 0x1e000                                     // 00000000201C: BEDB00FF 0001E000
	s_mov_b32 s34, 0x8000                                      // 000000002024: BEA200FF 00008000
	s_mov_b32 s35, 0xa000                                      // 00000000202C: BEA300FF 0000A000
	s_mov_b32 s12, 0x12000                                     // 000000002034: BE8C00FF 00012000
	s_mov_b32 s13, 0xc000                                      // 00000000203C: BE8D00FF 0000C000
	s_mov_b32 s6, 0xe000                                       // 000000002044: BE8600FF 0000E000
	s_mov_b32 s76, 0x16000                                     // 00000000204C: BECC00FF 00016000
	v_lshlrev_b32_e32 v8, 4, v8                                // 000000002054: 24101084
	v_mov_b32_e32 v193, v192                                   // 000000002058: 7F8203C0
	v_mov_b32_e32 v194, v192                                   // 00000000205C: 7F8403C0
	v_mov_b32_e32 v195, v192                                   // 000000002060: 7F8603C0
	v_mov_b32_e32 v196, v192                                   // 000000002064: 7F8803C0
	v_mov_b32_e32 v197, v192                                   // 000000002068: 7F8A03C0
	v_mov_b32_e32 v198, v192                                   // 00000000206C: 7F8C03C0
	v_mov_b32_e32 v199, v192                                   // 000000002070: 7F8E03C0
	v_add_u32_e32 v245, v5, v3                                 // 000000002074: 69EA0705
	v_add_u32_e32 v246, v7, v3                                 // 000000002078: 69EC0707
	s_lshl_b32 s15, s9, 2                                      // 00000000207C: 8E0F8209
	v_writelane_b32 v255, s20, 13                              // 000000002080: D28A00FF 00011A14
	v_xor_b32_e32 v230, 32, v228                               // 000000002088: 2BCDC8A0
	v_xor_b32_e32 v229, 64, v228                               // 00000000208C: 2BCBC8C0
	scratch_store_dword off, v0, off offset:44                 // 000000002090: DC70402C 007F0000
	v_xor_b32_e32 v0, 0xe0, v228                               // 000000002098: 2A01C8FF 000000E0
	v_xor_b32_e32 v218, 64, v219                               // 0000000020A0: 2BB5B6C0
	v_xor_b32_e32 v237, 0x80, v219                             // 0000000020A4: 2BDBB6FF 00000080
	v_xor_b32_e32 v254, 0xc0, v219                             // 0000000020AC: 2BFDB6FF 000000C0
	s_mov_b32 s52, 0xff800000                                  // 0000000020B4: BEB400FF FF800000
	scratch_store_dword off, v8, off offset:32                 // 0000000020BC: DC704020 007F0800
	scratch_store_dword off, v0, off offset:40                 // 0000000020C4: DC704028 007F0000
	s_mov_b32 s78, 0                                           // 0000000020CC: BECE0080
	s_mov_b32 s77, 0                                           // 0000000020D0: BECD0080
	s_mov_b32 s83, s31                                         // 0000000020D4: BED3001F
	s_mov_b32 s43, s31                                         // 0000000020D8: BEAB001F
	s_and_b32 s17, s78, 3                                      // 0000000020DC: 8611834E
	s_lshl_b32 s20, s17, 14                                    // 0000000020E0: 8E148E11
	v_or_b32_e32 v0, s20, v231                                 // 0000000020E4: 2801CE14
	s_waitcnt vmcnt(8)                                         // 0000000020E8: BF8C0F78
	ds_read_b128 v[10:13], v0                                  // 0000000020EC: D9FE0000 0A000000
	ds_read_b128 v[14:17], v0 offset:16                        // 0000000020F4: D9FE0010 0E000000
	ds_read_b128 v[2:5], v0 offset:4096                        // 0000000020FC: D9FE1000 02000000
	ds_read_b128 v[6:9], v0 offset:4112                        // 000000002104: D9FE1010 06000000
	s_mov_b64 s[36:37], s[18:19]                               // 00000000210C: BEA40112
	s_cmp_eq_u32 s79, 0                                        // 000000002110: BF06804F
	s_cbranch_scc1 146                                         // 000000002114: BF850092 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x860>
	s_setprio 1                                                // 000000002118: BF8F0001
	v_add_u32_e32 v0, s20, v231                                // 00000000211C: 6801CE14
	ds_read_b128 v[18:21], v0 offset:8192                      // 000000002120: D9FE2000 12000000
	ds_read_b128 v[22:25], v0 offset:8208                      // 000000002128: D9FE2010 16000000
	ds_read_b128 v[26:29], v0 offset:12288                     // 000000002130: D9FE3000 1A000000
	ds_read_b128 v[30:33], v0 offset:12304                     // 000000002138: D9FE3010 1E000000
	s_waitcnt lgkmcnt(4)                                       // 000000002140: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[220:227], 0// 000000002144: D3AE0070 0203B90A
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[220:227], 0// 00000000214C: D3AE0060 0203B902
	v_add_u32_e32 v0, s20, v232                                // 000000002154: 6801D014
	ds_read_b128 v[10:13], v0                                  // 000000002158: D9FE0000 0A000000
	ds_read_b128 v[14:17], v0 offset:16                        // 000000002160: D9FE0010 0E000000
	ds_read_b128 v[2:5], v0 offset:4096                        // 000000002168: D9FE1000 02000000
	ds_read_b128 v[6:9], v0 offset:4112                        // 000000002170: D9FE1010 06000000
	s_waitcnt lgkmcnt(4)                                       // 000000002178: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[220:227], 0// 00000000217C: D3AE0050 0203B912
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[220:227], 0// 000000002184: D3AE0040 0203B91A
	ds_read_b128 v[18:21], v0 offset:8192                      // 00000000218C: D9FE2000 12000000
	ds_read_b128 v[22:25], v0 offset:8208                      // 000000002194: D9FE2010 16000000
	ds_read_b128 v[26:29], v0 offset:12288                     // 00000000219C: D9FE3000 1A000000
	ds_read_b128 v[30:33], v0 offset:12304                     // 0000000021A4: D9FE3010 1E000000
	s_waitcnt lgkmcnt(4)                                       // 0000000021AC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[200:207], v[112:127]// 0000000021B0: D3AE0070 05C3910A
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[200:207], v[96:111]// 0000000021B8: D3AE0060 05839102
	s_waitcnt lgkmcnt(0)                                       // 0000000021C0: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[200:207], v[80:95]// 0000000021C4: D3AE0050 05439112
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[200:207], v[64:79]// 0000000021CC: D3AE0040 0503911A
	s_nop 0                                                    // 0000000021D4: BF800000
	v_max_f32_e32 v0, v112, v113                               // 0000000021D8: 1600E370
	v_max3_f32 v0, v114, v115, v0                              // 0000000021DC: D1D30000 0402E772
	v_max3_f32 v0, v116, v117, v0                              // 0000000021E4: D1D30000 0402EB74
	v_max3_f32 v0, v118, v119, v0                              // 0000000021EC: D1D30000 0402EF76
	v_max3_f32 v0, v120, v121, v0                              // 0000000021F4: D1D30000 0402F378
	v_max3_f32 v0, v122, v123, v0                              // 0000000021FC: D1D30000 0402F77A
	v_max3_f32 v0, v124, v125, v0                              // 000000002204: D1D30000 0402FB7C
	v_max3_f32 v1, v126, v127, v0                              // 00000000220C: D1D30001 0402FF7E
	v_max_f32_e32 v0, v96, v97                                 // 000000002214: 1600C360
	v_max3_f32 v0, v98, v99, v0                                // 000000002218: D1D30000 0402C762
	v_max3_f32 v0, v100, v101, v0                              // 000000002220: D1D30000 0402CB64
	v_max3_f32 v0, v102, v103, v0                              // 000000002228: D1D30000 0402CF66
	v_max3_f32 v0, v104, v105, v0                              // 000000002230: D1D30000 0402D368
	v_max3_f32 v0, v106, v107, v0                              // 000000002238: D1D30000 0402D76A
	v_max3_f32 v0, v108, v109, v0                              // 000000002240: D1D30000 0402DB6C
	v_max3_f32 v2, v110, v111, v0                              // 000000002248: D1D30002 0402DF6E
	v_max_f32_e32 v0, v80, v81                                 // 000000002250: 1600A350
	v_max3_f32 v0, v82, v83, v0                                // 000000002254: D1D30000 0402A752
	v_max3_f32 v0, v84, v85, v0                                // 00000000225C: D1D30000 0402AB54
	v_max3_f32 v0, v86, v87, v0                                // 000000002264: D1D30000 0402AF56
	v_max3_f32 v0, v88, v89, v0                                // 00000000226C: D1D30000 0402B358
	v_max3_f32 v0, v90, v91, v0                                // 000000002274: D1D30000 0402B75A
	v_max3_f32 v0, v92, v93, v0                                // 00000000227C: D1D30000 0402BB5C
	v_max3_f32 v0, v94, v95, v0                                // 000000002284: D1D30000 0402BF5E
	v_max_f32_e32 v3, v64, v65                                 // 00000000228C: 16068340
	v_max3_f32 v3, v66, v67, v3                                // 000000002290: D1D30003 040E8742
	v_max3_f32 v3, v68, v69, v3                                // 000000002298: D1D30003 040E8B44
	v_max3_f32 v3, v70, v71, v3                                // 0000000022A0: D1D30003 040E8F46
	v_max3_f32 v3, v72, v73, v3                                // 0000000022A8: D1D30003 040E9348
	v_max3_f32 v3, v74, v75, v3                                // 0000000022B0: D1D30003 040E974A
	v_max3_f32 v3, v76, v77, v3                                // 0000000022B8: D1D30003 040E9B4C
	v_max3_f32 v3, v78, v79, v3                                // 0000000022C0: D1D30003 040E9F4E
	v_max_f32_e32 v0, v0, v3                                   // 0000000022C8: 16000700
	v_max_f32_e32 v2, v1, v2                                   // 0000000022CC: 16040501
	v_mov_b32_e32 v3, v2                                       // 0000000022D0: 7E060302
	s_nop 1                                                    // 0000000022D4: BF800001
	v_permlane32_swap_b32_e32 v2, v3                           // 0000000022D8: 7E04B503
	v_mov_b32_e32 v1, v0                                       // 0000000022DC: 7E020300
	s_nop 1                                                    // 0000000022E0: BF800001
	v_permlane32_swap_b32_e32 v0, v1                           // 0000000022E4: 7E00B501
	v_max_f32_e32 v0, v0, v1                                   // 0000000022E8: 16000300
	v_max_f32_e32 v1, v2, v3                                   // 0000000022EC: 16020702
	v_max_f32_e32 v2, v1, v0                                   // 0000000022F0: 16040101
	v_mul_f32_e32 v148, v238, v2                               // 0000000022F4: 0B2805EE
	v_fma_f32 v1, v1, v238, -v148                              // 0000000022F8: D1CB0001 8653DD01
	v_floor_f32_e32 v1, v1                                     // 000000002300: 7E023F01
	v_med3_f32 v1, v1, s99, 0                                  // 000000002304: D1D60001 0200C701
	v_cvt_i32_f32_e32 v2, v1                                   // 00000000230C: 7E041101
	v_add_u32_e32 v250, 0x7f, v2                               // 000000002310: 69F404FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v250                           // 000000002318: 2535F497
	v_fma_f32 v0, v0, v238, -v148                              // 00000000231C: D1CB0000 8653DD00
	v_floor_f32_e32 v0, v0                                     // 000000002324: 7E003F00
	v_med3_f32 v0, v0, s99, 0                                  // 000000002328: D1D60000 0200C700
	v_cvt_i32_f32_e32 v2, v0                                   // 000000002330: 7E041100
	v_add_u32_e32 v149, 0x7f, v2                               // 000000002334: 692A04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v149                           // 00000000233C: 25372A97
	v_mov_b32_e32 v2, s50                                      // 000000002340: 7E040232
	v_fma_f32 v2, v148, s92, v2                                // 000000002344: D1CB0002 0408B994
	v_fma_f32 v152, v1, s92, v2                                // 00000000234C: D1CB0098 0408B901
	v_fma_f32 v150, v0, s92, v2                                // 000000002354: D1CB0096 0408B900
	s_branch 525                                               // 00000000235C: BF82020D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1094>
	s_setprio 1                                                // 000000002360: BF8F0001
	v_add_u32_e32 v0, s20, v231                                // 000000002364: 6801CE14
	ds_read_b128 v[18:21], v0 offset:8192                      // 000000002368: D9FE2000 12000000
	ds_read_b128 v[22:25], v0 offset:8208                      // 000000002370: D9FE2010 16000000
	ds_read_b128 v[26:29], v0 offset:12288                     // 000000002378: D9FE3000 1A000000
	ds_read_b128 v[30:33], v0 offset:12304                     // 000000002380: D9FE3010 1E000000
	s_waitcnt lgkmcnt(4)                                       // 000000002388: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[220:227], 0// 00000000238C: D3AE0070 0203B90A
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[220:227], 0// 000000002394: D3AE0060 0203B902
	v_add_u32_e32 v0, s20, v232                                // 00000000239C: 6801D014
	ds_read_b128 v[10:13], v0                                  // 0000000023A0: D9FE0000 0A000000
	ds_read_b128 v[14:17], v0 offset:16                        // 0000000023A8: D9FE0010 0E000000
	ds_read_b128 v[2:5], v0 offset:4096                        // 0000000023B0: D9FE1000 02000000
	ds_read_b128 v[6:9], v0 offset:4112                        // 0000000023B8: D9FE1010 06000000
	s_waitcnt lgkmcnt(4)                                       // 0000000023C0: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[220:227], 0// 0000000023C4: D3AE0050 0203B912
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[220:227], 0// 0000000023CC: D3AE0040 0203B91A
	ds_read_b128 v[18:21], v0 offset:8192                      // 0000000023D4: D9FE2000 12000000
	ds_read_b128 v[22:25], v0 offset:8208                      // 0000000023DC: D9FE2010 16000000
	ds_read_b128 v[26:29], v0 offset:12288                     // 0000000023E4: D9FE3000 1A000000
	ds_read_b128 v[30:33], v0 offset:12304                     // 0000000023EC: D9FE3010 1E000000
	s_waitcnt lgkmcnt(4)                                       // 0000000023F4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[200:207], v[112:127]// 0000000023F8: D3AE0070 05C3910A
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[200:207], v[96:111]// 000000002400: D3AE0060 05839102
	s_waitcnt lgkmcnt(0)                                       // 000000002408: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[200:207], v[80:95]// 00000000240C: D3AE0050 05439112
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[200:207], v[64:79]// 000000002414: D3AE0040 0503911A
	s_sub_u32 s18, s3, s16                                     // 00000000241C: 80921003
	s_sub_i32 s18, s18, 0                                      // 000000002420: 81928012
	s_cmp_ge_i32 s18, 32                                       // 000000002424: BF03A012
	s_cbranch_scc1 91                                          // 000000002428: BF85005B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa98>
	s_cmp_lt_i32 s18, 0                                        // 00000000242C: BF048012
	s_cbranch_scc1 66                                          // 000000002430: BF850042 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa3c>
	v_add_u32_e32 v0, s18, v243                                // 000000002434: 6801E612
	v_cmp_gt_i32_e32 vcc, 0, v0                                // 000000002438: 7D880080
	s_nop 4                                                    // 00000000243C: BF800004
	v_cndmask_b32_e64 v112, v112, v240, vcc                    // 000000002440: D1000070 01ABE170
	v_cmp_gt_i32_e32 vcc, 1, v0                                // 000000002448: 7D880081
	s_nop 1                                                    // 00000000244C: BF800001
	v_cndmask_b32_e64 v113, v113, v240, vcc                    // 000000002450: D1000071 01ABE171
	v_cmp_gt_i32_e32 vcc, 2, v0                                // 000000002458: 7D880082
	s_nop 1                                                    // 00000000245C: BF800001
	v_cndmask_b32_e64 v114, v114, v240, vcc                    // 000000002460: D1000072 01ABE172
	v_cmp_gt_i32_e32 vcc, 3, v0                                // 000000002468: 7D880083
	s_nop 1                                                    // 00000000246C: BF800001
	v_cndmask_b32_e64 v115, v115, v240, vcc                    // 000000002470: D1000073 01ABE173
	v_cmp_gt_i32_e32 vcc, 8, v0                                // 000000002478: 7D880088
	s_nop 1                                                    // 00000000247C: BF800001
	v_cndmask_b32_e64 v116, v116, v240, vcc                    // 000000002480: D1000074 01ABE174
	v_cmp_gt_i32_e32 vcc, 9, v0                                // 000000002488: 7D880089
	s_nop 1                                                    // 00000000248C: BF800001
	v_cndmask_b32_e64 v117, v117, v240, vcc                    // 000000002490: D1000075 01ABE175
	v_cmp_gt_i32_e32 vcc, 10, v0                               // 000000002498: 7D88008A
	s_nop 1                                                    // 00000000249C: BF800001
	v_cndmask_b32_e64 v118, v118, v240, vcc                    // 0000000024A0: D1000076 01ABE176
	v_cmp_gt_i32_e32 vcc, 11, v0                               // 0000000024A8: 7D88008B
	s_nop 1                                                    // 0000000024AC: BF800001
	v_cndmask_b32_e64 v119, v119, v240, vcc                    // 0000000024B0: D1000077 01ABE177
	v_cmp_gt_i32_e32 vcc, 16, v0                               // 0000000024B8: 7D880090
	s_nop 1                                                    // 0000000024BC: BF800001
	v_cndmask_b32_e64 v120, v120, v240, vcc                    // 0000000024C0: D1000078 01ABE178
	v_cmp_gt_i32_e32 vcc, 17, v0                               // 0000000024C8: 7D880091
	s_nop 1                                                    // 0000000024CC: BF800001
	v_cndmask_b32_e64 v121, v121, v240, vcc                    // 0000000024D0: D1000079 01ABE179
	v_cmp_gt_i32_e32 vcc, 18, v0                               // 0000000024D8: 7D880092
	s_nop 1                                                    // 0000000024DC: BF800001
	v_cndmask_b32_e64 v122, v122, v240, vcc                    // 0000000024E0: D100007A 01ABE17A
	v_cmp_gt_i32_e32 vcc, 19, v0                               // 0000000024E8: 7D880093
	s_nop 1                                                    // 0000000024EC: BF800001
	v_cndmask_b32_e64 v123, v123, v240, vcc                    // 0000000024F0: D100007B 01ABE17B
	v_cmp_gt_i32_e32 vcc, 24, v0                               // 0000000024F8: 7D880098
	s_nop 1                                                    // 0000000024FC: BF800001
	v_cndmask_b32_e64 v124, v124, v240, vcc                    // 000000002500: D100007C 01ABE17C
	v_cmp_gt_i32_e32 vcc, 25, v0                               // 000000002508: 7D880099
	s_nop 1                                                    // 00000000250C: BF800001
	v_cndmask_b32_e64 v125, v125, v240, vcc                    // 000000002510: D100007D 01ABE17D
	v_cmp_gt_i32_e32 vcc, 26, v0                               // 000000002518: 7D88009A
	s_nop 1                                                    // 00000000251C: BF800001
	v_cndmask_b32_e64 v126, v126, v240, vcc                    // 000000002520: D100007E 01ABE17E
	v_cmp_gt_i32_e32 vcc, 27, v0                               // 000000002528: 7D88009B
	s_nop 1                                                    // 00000000252C: BF800001
	v_cndmask_b32_e64 v127, v127, v240, vcc                    // 000000002530: D100007F 01ABE17F
	s_branch 23                                                // 000000002538: BF820017 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa98>
	s_mov_b32 s53, s52                                         // 00000000253C: BEB50034
	s_mov_b32 s54, s52                                         // 000000002540: BEB60034
	s_mov_b32 s55, s52                                         // 000000002544: BEB70034
	s_mov_b32 s56, s52                                         // 000000002548: BEB80034
	s_mov_b32 s57, s52                                         // 00000000254C: BEB90034
	s_mov_b32 s58, s52                                         // 000000002550: BEBA0034
	s_mov_b32 s59, s52                                         // 000000002554: BEBB0034
	s_mov_b32 s60, s52                                         // 000000002558: BEBC0034
	s_mov_b32 s61, s52                                         // 00000000255C: BEBD0034
	s_mov_b32 s62, s52                                         // 000000002560: BEBE0034
	s_mov_b32 s63, s52                                         // 000000002564: BEBF0034
	s_mov_b32 s64, s52                                         // 000000002568: BEC00034
	s_mov_b32 s65, s52                                         // 00000000256C: BEC10034
	s_mov_b32 s66, s52                                         // 000000002570: BEC20034
	s_mov_b32 s67, s52                                         // 000000002574: BEC30034
	v_mov_b64_e32 v[126:127], s[66:67]                         // 000000002578: 7EFC7042
	v_mov_b64_e32 v[124:125], s[64:65]                         // 00000000257C: 7EF87040
	v_mov_b64_e32 v[122:123], s[62:63]                         // 000000002580: 7EF4703E
	v_mov_b64_e32 v[120:121], s[60:61]                         // 000000002584: 7EF0703C
	v_mov_b64_e32 v[118:119], s[58:59]                         // 000000002588: 7EEC703A
	v_mov_b64_e32 v[116:117], s[56:57]                         // 00000000258C: 7EE87038
	v_mov_b64_e32 v[114:115], s[54:55]                         // 000000002590: 7EE47036
	v_mov_b64_e32 v[112:113], s[52:53]                         // 000000002594: 7EE07034
	s_sub_u32 s18, s3, s16                                     // 000000002598: 80921003
	s_sub_i32 s18, s18, 32                                     // 00000000259C: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 0000000025A0: BF03A012
	s_cbranch_scc1 91                                          // 0000000025A4: BF85005B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc14>
	s_cmp_lt_i32 s18, 0                                        // 0000000025A8: BF048012
	s_cbranch_scc1 66                                          // 0000000025AC: BF850042 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xbb8>
	v_add_u32_e32 v0, s18, v243                                // 0000000025B0: 6801E612
	v_cmp_gt_i32_e32 vcc, 0, v0                                // 0000000025B4: 7D880080
	s_nop 3                                                    // 0000000025B8: BF800003
	v_cndmask_b32_e64 v96, v96, v240, vcc                      // 0000000025BC: D1000060 01ABE160
	v_cmp_gt_i32_e32 vcc, 1, v0                                // 0000000025C4: 7D880081
	s_nop 1                                                    // 0000000025C8: BF800001
	v_cndmask_b32_e64 v97, v97, v240, vcc                      // 0000000025CC: D1000061 01ABE161
	v_cmp_gt_i32_e32 vcc, 2, v0                                // 0000000025D4: 7D880082
	s_nop 1                                                    // 0000000025D8: BF800001
	v_cndmask_b32_e64 v98, v98, v240, vcc                      // 0000000025DC: D1000062 01ABE162
	v_cmp_gt_i32_e32 vcc, 3, v0                                // 0000000025E4: 7D880083
	s_nop 1                                                    // 0000000025E8: BF800001
	v_cndmask_b32_e64 v99, v99, v240, vcc                      // 0000000025EC: D1000063 01ABE163
	v_cmp_gt_i32_e32 vcc, 8, v0                                // 0000000025F4: 7D880088
	s_nop 1                                                    // 0000000025F8: BF800001
	v_cndmask_b32_e64 v100, v100, v240, vcc                    // 0000000025FC: D1000064 01ABE164
	v_cmp_gt_i32_e32 vcc, 9, v0                                // 000000002604: 7D880089
	s_nop 1                                                    // 000000002608: BF800001
	v_cndmask_b32_e64 v101, v101, v240, vcc                    // 00000000260C: D1000065 01ABE165
	v_cmp_gt_i32_e32 vcc, 10, v0                               // 000000002614: 7D88008A
	s_nop 1                                                    // 000000002618: BF800001
	v_cndmask_b32_e64 v102, v102, v240, vcc                    // 00000000261C: D1000066 01ABE166
	v_cmp_gt_i32_e32 vcc, 11, v0                               // 000000002624: 7D88008B
	s_nop 1                                                    // 000000002628: BF800001
	v_cndmask_b32_e64 v103, v103, v240, vcc                    // 00000000262C: D1000067 01ABE167
	v_cmp_gt_i32_e32 vcc, 16, v0                               // 000000002634: 7D880090
	s_nop 1                                                    // 000000002638: BF800001
	v_cndmask_b32_e64 v104, v104, v240, vcc                    // 00000000263C: D1000068 01ABE168
	v_cmp_gt_i32_e32 vcc, 17, v0                               // 000000002644: 7D880091
	s_nop 1                                                    // 000000002648: BF800001
	v_cndmask_b32_e64 v105, v105, v240, vcc                    // 00000000264C: D1000069 01ABE169
	v_cmp_gt_i32_e32 vcc, 18, v0                               // 000000002654: 7D880092
	s_nop 1                                                    // 000000002658: BF800001
	v_cndmask_b32_e64 v106, v106, v240, vcc                    // 00000000265C: D100006A 01ABE16A
	v_cmp_gt_i32_e32 vcc, 19, v0                               // 000000002664: 7D880093
	s_nop 1                                                    // 000000002668: BF800001
	v_cndmask_b32_e64 v107, v107, v240, vcc                    // 00000000266C: D100006B 01ABE16B
	v_cmp_gt_i32_e32 vcc, 24, v0                               // 000000002674: 7D880098
	s_nop 1                                                    // 000000002678: BF800001
	v_cndmask_b32_e64 v108, v108, v240, vcc                    // 00000000267C: D100006C 01ABE16C
	v_cmp_gt_i32_e32 vcc, 25, v0                               // 000000002684: 7D880099
	s_nop 1                                                    // 000000002688: BF800001
	v_cndmask_b32_e64 v109, v109, v240, vcc                    // 00000000268C: D100006D 01ABE16D
	v_cmp_gt_i32_e32 vcc, 26, v0                               // 000000002694: 7D88009A
	s_nop 1                                                    // 000000002698: BF800001
	v_cndmask_b32_e64 v110, v110, v240, vcc                    // 00000000269C: D100006E 01ABE16E
	v_cmp_gt_i32_e32 vcc, 27, v0                               // 0000000026A4: 7D88009B
	s_nop 1                                                    // 0000000026A8: BF800001
	v_cndmask_b32_e64 v111, v111, v240, vcc                    // 0000000026AC: D100006F 01ABE16F
	s_branch 23                                                // 0000000026B4: BF820017 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc14>
	s_mov_b32 s53, s52                                         // 0000000026B8: BEB50034
	s_mov_b32 s54, s52                                         // 0000000026BC: BEB60034
	s_mov_b32 s55, s52                                         // 0000000026C0: BEB70034
	s_mov_b32 s56, s52                                         // 0000000026C4: BEB80034
	s_mov_b32 s57, s52                                         // 0000000026C8: BEB90034
	s_mov_b32 s58, s52                                         // 0000000026CC: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000026D0: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000026D4: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000026D8: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000026DC: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000026E0: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000026E4: BEC00034
	s_mov_b32 s65, s52                                         // 0000000026E8: BEC10034
	s_mov_b32 s66, s52                                         // 0000000026EC: BEC20034
	s_mov_b32 s67, s52                                         // 0000000026F0: BEC30034
	v_mov_b64_e32 v[110:111], s[66:67]                         // 0000000026F4: 7EDC7042
	v_mov_b64_e32 v[108:109], s[64:65]                         // 0000000026F8: 7ED87040
	v_mov_b64_e32 v[106:107], s[62:63]                         // 0000000026FC: 7ED4703E
	v_mov_b64_e32 v[104:105], s[60:61]                         // 000000002700: 7ED0703C
	v_mov_b64_e32 v[102:103], s[58:59]                         // 000000002704: 7ECC703A
	v_mov_b64_e32 v[100:101], s[56:57]                         // 000000002708: 7EC87038
	v_mov_b64_e32 v[98:99], s[54:55]                           // 00000000270C: 7EC47036
	v_mov_b64_e32 v[96:97], s[52:53]                           // 000000002710: 7EC07034
	s_sub_u32 s18, s3, s16                                     // 000000002714: 80921003
	s_sub_i32 s18, s18, 64                                     // 000000002718: 8192C012
	s_cmp_ge_i32 s18, 32                                       // 00000000271C: BF03A012
	s_cbranch_scc1 91                                          // 000000002720: BF85005B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd90>
	s_cmp_lt_i32 s18, 0                                        // 000000002724: BF048012
	s_cbranch_scc1 66                                          // 000000002728: BF850042 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd34>
	v_add_u32_e32 v0, s18, v243                                // 00000000272C: 6801E612
	v_cmp_gt_i32_e32 vcc, 0, v0                                // 000000002730: 7D880080
	s_nop 3                                                    // 000000002734: BF800003
	v_cndmask_b32_e64 v80, v80, v240, vcc                      // 000000002738: D1000050 01ABE150
	v_cmp_gt_i32_e32 vcc, 1, v0                                // 000000002740: 7D880081
	s_nop 1                                                    // 000000002744: BF800001
	v_cndmask_b32_e64 v81, v81, v240, vcc                      // 000000002748: D1000051 01ABE151
	v_cmp_gt_i32_e32 vcc, 2, v0                                // 000000002750: 7D880082
	s_nop 1                                                    // 000000002754: BF800001
	v_cndmask_b32_e64 v82, v82, v240, vcc                      // 000000002758: D1000052 01ABE152
	v_cmp_gt_i32_e32 vcc, 3, v0                                // 000000002760: 7D880083
	s_nop 1                                                    // 000000002764: BF800001
	v_cndmask_b32_e64 v83, v83, v240, vcc                      // 000000002768: D1000053 01ABE153
	v_cmp_gt_i32_e32 vcc, 8, v0                                // 000000002770: 7D880088
	s_nop 1                                                    // 000000002774: BF800001
	v_cndmask_b32_e64 v84, v84, v240, vcc                      // 000000002778: D1000054 01ABE154
	v_cmp_gt_i32_e32 vcc, 9, v0                                // 000000002780: 7D880089
	s_nop 1                                                    // 000000002784: BF800001
	v_cndmask_b32_e64 v85, v85, v240, vcc                      // 000000002788: D1000055 01ABE155
	v_cmp_gt_i32_e32 vcc, 10, v0                               // 000000002790: 7D88008A
	s_nop 1                                                    // 000000002794: BF800001
	v_cndmask_b32_e64 v86, v86, v240, vcc                      // 000000002798: D1000056 01ABE156
	v_cmp_gt_i32_e32 vcc, 11, v0                               // 0000000027A0: 7D88008B
	s_nop 1                                                    // 0000000027A4: BF800001
	v_cndmask_b32_e64 v87, v87, v240, vcc                      // 0000000027A8: D1000057 01ABE157
	v_cmp_gt_i32_e32 vcc, 16, v0                               // 0000000027B0: 7D880090
	s_nop 1                                                    // 0000000027B4: BF800001
	v_cndmask_b32_e64 v88, v88, v240, vcc                      // 0000000027B8: D1000058 01ABE158
	v_cmp_gt_i32_e32 vcc, 17, v0                               // 0000000027C0: 7D880091
	s_nop 1                                                    // 0000000027C4: BF800001
	v_cndmask_b32_e64 v89, v89, v240, vcc                      // 0000000027C8: D1000059 01ABE159
	v_cmp_gt_i32_e32 vcc, 18, v0                               // 0000000027D0: 7D880092
	s_nop 1                                                    // 0000000027D4: BF800001
	v_cndmask_b32_e64 v90, v90, v240, vcc                      // 0000000027D8: D100005A 01ABE15A
	v_cmp_gt_i32_e32 vcc, 19, v0                               // 0000000027E0: 7D880093
	s_nop 1                                                    // 0000000027E4: BF800001
	v_cndmask_b32_e64 v91, v91, v240, vcc                      // 0000000027E8: D100005B 01ABE15B
	v_cmp_gt_i32_e32 vcc, 24, v0                               // 0000000027F0: 7D880098
	s_nop 1                                                    // 0000000027F4: BF800001
	v_cndmask_b32_e64 v92, v92, v240, vcc                      // 0000000027F8: D100005C 01ABE15C
	v_cmp_gt_i32_e32 vcc, 25, v0                               // 000000002800: 7D880099
	s_nop 1                                                    // 000000002804: BF800001
	v_cndmask_b32_e64 v93, v93, v240, vcc                      // 000000002808: D100005D 01ABE15D
	v_cmp_gt_i32_e32 vcc, 26, v0                               // 000000002810: 7D88009A
	s_nop 1                                                    // 000000002814: BF800001
	v_cndmask_b32_e64 v94, v94, v240, vcc                      // 000000002818: D100005E 01ABE15E
	v_cmp_gt_i32_e32 vcc, 27, v0                               // 000000002820: 7D88009B
	s_nop 1                                                    // 000000002824: BF800001
	v_cndmask_b32_e64 v95, v95, v240, vcc                      // 000000002828: D100005F 01ABE15F
	s_branch 23                                                // 000000002830: BF820017 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd90>
	s_mov_b32 s53, s52                                         // 000000002834: BEB50034
	s_mov_b32 s54, s52                                         // 000000002838: BEB60034
	s_mov_b32 s55, s52                                         // 00000000283C: BEB70034
	s_mov_b32 s56, s52                                         // 000000002840: BEB80034
	s_mov_b32 s57, s52                                         // 000000002844: BEB90034
	s_mov_b32 s58, s52                                         // 000000002848: BEBA0034
	s_mov_b32 s59, s52                                         // 00000000284C: BEBB0034
	s_mov_b32 s60, s52                                         // 000000002850: BEBC0034
	s_mov_b32 s61, s52                                         // 000000002854: BEBD0034
	s_mov_b32 s62, s52                                         // 000000002858: BEBE0034
	s_mov_b32 s63, s52                                         // 00000000285C: BEBF0034
	s_mov_b32 s64, s52                                         // 000000002860: BEC00034
	s_mov_b32 s65, s52                                         // 000000002864: BEC10034
	s_mov_b32 s66, s52                                         // 000000002868: BEC20034
	s_mov_b32 s67, s52                                         // 00000000286C: BEC30034
	v_mov_b64_e32 v[94:95], s[66:67]                           // 000000002870: 7EBC7042
	v_mov_b64_e32 v[92:93], s[64:65]                           // 000000002874: 7EB87040
	v_mov_b64_e32 v[90:91], s[62:63]                           // 000000002878: 7EB4703E
	v_mov_b64_e32 v[88:89], s[60:61]                           // 00000000287C: 7EB0703C
	v_mov_b64_e32 v[86:87], s[58:59]                           // 000000002880: 7EAC703A
	v_mov_b64_e32 v[84:85], s[56:57]                           // 000000002884: 7EA87038
	v_mov_b64_e32 v[82:83], s[54:55]                           // 000000002888: 7EA47036
	v_mov_b64_e32 v[80:81], s[52:53]                           // 00000000288C: 7EA07034
	s_sub_u32 s18, s3, s16                                     // 000000002890: 80921003
	s_sub_i32 s18, s18, 0x60                                   // 000000002894: 8192FF12 00000060
	s_cmp_ge_i32 s18, 32                                       // 00000000289C: BF03A012
	s_cbranch_scc1 91                                          // 0000000028A0: BF85005B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf10>
	s_cmp_lt_i32 s18, 0                                        // 0000000028A4: BF048012
	s_cbranch_scc1 66                                          // 0000000028A8: BF850042 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xeb4>
	v_add_u32_e32 v0, s18, v243                                // 0000000028AC: 6801E612
	v_cmp_gt_i32_e32 vcc, 0, v0                                // 0000000028B0: 7D880080
	s_nop 7                                                    // 0000000028B4: BF800007
	v_cndmask_b32_e64 v64, v64, v240, vcc                      // 0000000028B8: D1000040 01ABE140
	v_cmp_gt_i32_e32 vcc, 1, v0                                // 0000000028C0: 7D880081
	s_nop 1                                                    // 0000000028C4: BF800001
	v_cndmask_b32_e64 v65, v65, v240, vcc                      // 0000000028C8: D1000041 01ABE141
	v_cmp_gt_i32_e32 vcc, 2, v0                                // 0000000028D0: 7D880082
	s_nop 1                                                    // 0000000028D4: BF800001
	v_cndmask_b32_e64 v66, v66, v240, vcc                      // 0000000028D8: D1000042 01ABE142
	v_cmp_gt_i32_e32 vcc, 3, v0                                // 0000000028E0: 7D880083
	s_nop 1                                                    // 0000000028E4: BF800001
	v_cndmask_b32_e64 v67, v67, v240, vcc                      // 0000000028E8: D1000043 01ABE143
	v_cmp_gt_i32_e32 vcc, 8, v0                                // 0000000028F0: 7D880088
	s_nop 1                                                    // 0000000028F4: BF800001
	v_cndmask_b32_e64 v68, v68, v240, vcc                      // 0000000028F8: D1000044 01ABE144
	v_cmp_gt_i32_e32 vcc, 9, v0                                // 000000002900: 7D880089
	s_nop 1                                                    // 000000002904: BF800001
	v_cndmask_b32_e64 v69, v69, v240, vcc                      // 000000002908: D1000045 01ABE145
	v_cmp_gt_i32_e32 vcc, 10, v0                               // 000000002910: 7D88008A
	s_nop 1                                                    // 000000002914: BF800001
	v_cndmask_b32_e64 v70, v70, v240, vcc                      // 000000002918: D1000046 01ABE146
	v_cmp_gt_i32_e32 vcc, 11, v0                               // 000000002920: 7D88008B
	s_nop 1                                                    // 000000002924: BF800001
	v_cndmask_b32_e64 v71, v71, v240, vcc                      // 000000002928: D1000047 01ABE147
	v_cmp_gt_i32_e32 vcc, 16, v0                               // 000000002930: 7D880090
	s_nop 1                                                    // 000000002934: BF800001
	v_cndmask_b32_e64 v72, v72, v240, vcc                      // 000000002938: D1000048 01ABE148
	v_cmp_gt_i32_e32 vcc, 17, v0                               // 000000002940: 7D880091
	s_nop 1                                                    // 000000002944: BF800001
	v_cndmask_b32_e64 v73, v73, v240, vcc                      // 000000002948: D1000049 01ABE149
	v_cmp_gt_i32_e32 vcc, 18, v0                               // 000000002950: 7D880092
	s_nop 1                                                    // 000000002954: BF800001
	v_cndmask_b32_e64 v74, v74, v240, vcc                      // 000000002958: D100004A 01ABE14A
	v_cmp_gt_i32_e32 vcc, 19, v0                               // 000000002960: 7D880093
	s_nop 1                                                    // 000000002964: BF800001
	v_cndmask_b32_e64 v75, v75, v240, vcc                      // 000000002968: D100004B 01ABE14B
	v_cmp_gt_i32_e32 vcc, 24, v0                               // 000000002970: 7D880098
	s_nop 1                                                    // 000000002974: BF800001
	v_cndmask_b32_e64 v76, v76, v240, vcc                      // 000000002978: D100004C 01ABE14C
	v_cmp_gt_i32_e32 vcc, 25, v0                               // 000000002980: 7D880099
	s_nop 1                                                    // 000000002984: BF800001
	v_cndmask_b32_e64 v77, v77, v240, vcc                      // 000000002988: D100004D 01ABE14D
	v_cmp_gt_i32_e32 vcc, 26, v0                               // 000000002990: 7D88009A
	s_nop 1                                                    // 000000002994: BF800001
	v_cndmask_b32_e64 v78, v78, v240, vcc                      // 000000002998: D100004E 01ABE14E
	v_cmp_gt_i32_e32 vcc, 27, v0                               // 0000000029A0: 7D88009B
	s_nop 1                                                    // 0000000029A4: BF800001
	v_cndmask_b32_e64 v79, v79, v240, vcc                      // 0000000029A8: D100004F 01ABE14F
	s_branch 23                                                // 0000000029B0: BF820017 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf10>
	s_mov_b32 s53, s52                                         // 0000000029B4: BEB50034
	s_mov_b32 s54, s52                                         // 0000000029B8: BEB60034
	s_mov_b32 s55, s52                                         // 0000000029BC: BEB70034
	s_mov_b32 s56, s52                                         // 0000000029C0: BEB80034
	s_mov_b32 s57, s52                                         // 0000000029C4: BEB90034
	s_mov_b32 s58, s52                                         // 0000000029C8: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000029CC: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000029D0: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000029D4: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000029D8: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000029DC: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000029E0: BEC00034
	s_mov_b32 s65, s52                                         // 0000000029E4: BEC10034
	s_mov_b32 s66, s52                                         // 0000000029E8: BEC20034
	s_mov_b32 s67, s52                                         // 0000000029EC: BEC30034
	v_mov_b64_e32 v[78:79], s[66:67]                           // 0000000029F0: 7E9C7042
	v_mov_b64_e32 v[76:77], s[64:65]                           // 0000000029F4: 7E987040
	v_mov_b64_e32 v[74:75], s[62:63]                           // 0000000029F8: 7E94703E
	v_mov_b64_e32 v[72:73], s[60:61]                           // 0000000029FC: 7E90703C
	v_mov_b64_e32 v[70:71], s[58:59]                           // 000000002A00: 7E8C703A
	v_mov_b64_e32 v[68:69], s[56:57]                           // 000000002A04: 7E887038
	v_mov_b64_e32 v[66:67], s[54:55]                           // 000000002A08: 7E847036
	v_mov_b64_e32 v[64:65], s[52:53]                           // 000000002A0C: 7E807034
	v_max_f32_e32 v0, v112, v113                               // 000000002A10: 1600E370
	v_max3_f32 v0, v114, v115, v0                              // 000000002A14: D1D30000 0402E772
	v_max3_f32 v0, v116, v117, v0                              // 000000002A1C: D1D30000 0402EB74
	v_max3_f32 v0, v118, v119, v0                              // 000000002A24: D1D30000 0402EF76
	v_max3_f32 v0, v120, v121, v0                              // 000000002A2C: D1D30000 0402F378
	v_max3_f32 v0, v122, v123, v0                              // 000000002A34: D1D30000 0402F77A
	v_max3_f32 v0, v124, v125, v0                              // 000000002A3C: D1D30000 0402FB7C
	v_max3_f32 v1, v126, v127, v0                              // 000000002A44: D1D30001 0402FF7E
	v_max_f32_e32 v0, v96, v97                                 // 000000002A4C: 1600C360
	v_max3_f32 v0, v98, v99, v0                                // 000000002A50: D1D30000 0402C762
	v_max3_f32 v0, v100, v101, v0                              // 000000002A58: D1D30000 0402CB64
	v_max3_f32 v0, v102, v103, v0                              // 000000002A60: D1D30000 0402CF66
	v_max3_f32 v0, v104, v105, v0                              // 000000002A68: D1D30000 0402D368
	v_max3_f32 v0, v106, v107, v0                              // 000000002A70: D1D30000 0402D76A
	v_max3_f32 v0, v108, v109, v0                              // 000000002A78: D1D30000 0402DB6C
	v_max3_f32 v2, v110, v111, v0                              // 000000002A80: D1D30002 0402DF6E
	v_max_f32_e32 v0, v80, v81                                 // 000000002A88: 1600A350
	v_max3_f32 v0, v82, v83, v0                                // 000000002A8C: D1D30000 0402A752
	v_max3_f32 v0, v84, v85, v0                                // 000000002A94: D1D30000 0402AB54
	v_max3_f32 v0, v86, v87, v0                                // 000000002A9C: D1D30000 0402AF56
	v_max3_f32 v0, v88, v89, v0                                // 000000002AA4: D1D30000 0402B358
	v_max3_f32 v0, v90, v91, v0                                // 000000002AAC: D1D30000 0402B75A
	v_max3_f32 v0, v92, v93, v0                                // 000000002AB4: D1D30000 0402BB5C
	v_max3_f32 v0, v94, v95, v0                                // 000000002ABC: D1D30000 0402BF5E
	v_max_f32_e32 v3, v64, v65                                 // 000000002AC4: 16068340
	v_max3_f32 v3, v66, v67, v3                                // 000000002AC8: D1D30003 040E8742
	v_max3_f32 v3, v68, v69, v3                                // 000000002AD0: D1D30003 040E8B44
	v_max3_f32 v3, v70, v71, v3                                // 000000002AD8: D1D30003 040E8F46
	v_max3_f32 v3, v72, v73, v3                                // 000000002AE0: D1D30003 040E9348
	v_max3_f32 v3, v74, v75, v3                                // 000000002AE8: D1D30003 040E974A
	v_max3_f32 v3, v76, v77, v3                                // 000000002AF0: D1D30003 040E9B4C
	v_max3_f32 v3, v78, v79, v3                                // 000000002AF8: D1D30003 040E9F4E
	v_max_f32_e32 v0, v0, v3                                   // 000000002B00: 16000700
	v_max_f32_e32 v2, v1, v2                                   // 000000002B04: 16040501
	v_mov_b32_e32 v3, v2                                       // 000000002B08: 7E060302
	s_nop 1                                                    // 000000002B0C: BF800001
	v_permlane32_swap_b32_e32 v2, v3                           // 000000002B10: 7E04B503
	v_mov_b32_e32 v1, v0                                       // 000000002B14: 7E020300
	s_nop 1                                                    // 000000002B18: BF800001
	v_permlane32_swap_b32_e32 v0, v1                           // 000000002B1C: 7E00B501
	v_max_f32_e32 v0, v0, v1                                   // 000000002B20: 16000300
	v_max_f32_e32 v1, v2, v3                                   // 000000002B24: 16020702
	v_max_f32_e32 v2, v1, v0                                   // 000000002B28: 16040101
	v_mul_f32_e32 v148, v238, v2                               // 000000002B2C: 0B2805EE
	v_fma_f32 v1, v1, v238, -v148                              // 000000002B30: D1CB0001 8653DD01
	v_floor_f32_e32 v1, v1                                     // 000000002B38: 7E023F01
	v_med3_f32 v1, v1, s99, 0                                  // 000000002B3C: D1D60001 0200C701
	v_cvt_i32_f32_e32 v2, v1                                   // 000000002B44: 7E041101
	v_add_u32_e32 v250, 0x7f, v2                               // 000000002B48: 69F404FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v250                           // 000000002B50: 2535F497
	v_fma_f32 v0, v0, v238, -v148                              // 000000002B54: D1CB0000 8653DD00
	v_floor_f32_e32 v0, v0                                     // 000000002B5C: 7E003F00
	v_med3_f32 v0, v0, s99, 0                                  // 000000002B60: D1D60000 0200C700
	v_cvt_i32_f32_e32 v2, v0                                   // 000000002B68: 7E041100
	v_add_u32_e32 v149, 0x7f, v2                               // 000000002B6C: 692A04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v149                           // 000000002B74: 25372A97
	v_mov_b32_e32 v2, s50                                      // 000000002B78: 7E040232
	v_fma_f32 v2, v148, s92, v2                                // 000000002B7C: D1CB0002 0408B994
	v_fma_f32 v152, v1, s92, v2                                // 000000002B84: D1CB0098 0408B901
	v_fma_f32 v150, v0, s92, v2                                // 000000002B8C: D1CB0096 0408B900
	s_mov_b32 s82, s30                                         // 000000002B94: BED2001E
	s_waitcnt vmcnt(0)                                         // 000000002B98: BF8C0F70
	s_mov_b64 s[86:87], s[30:31]                               // 000000002B9C: BED6011E
	s_and_b64 s[18:19], s[10:11], exec                         // 000000002BA0: 86927E0A
	s_mov_b64 s[84:85], s[28:29]                               // 000000002BA4: BED4011C
	s_mov_b32 s87, s43                                         // 000000002BA8: BED7002B
	s_cbranch_scc0 34                                          // 000000002BAC: BF840022 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1138>
	s_cmp_ge_u32 s97, 2                                        // 000000002BB0: BF098261
	s_cbranch_scc1 200                                         // 000000002BB4: BF8500C8 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x13d8>
	s_cmp_ge_u32 s97, 3                                        // 000000002BB8: BF098361
	s_cbranch_scc1 232                                         // 000000002BBC: BF8500E8 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1460>
	s_cmp_lt_u32 s97, 4                                        // 000000002BC0: BF0A8461
	s_cbranch_scc1 27                                          // 000000002BC4: BF85001B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1134>
	s_add_u32 s17, s78, -1                                     // 000000002BC8: 8011C14E
	s_and_b32 s17, s17, 3                                      // 000000002BCC: 86118311
	s_lshl_b32 s17, s17, 14                                    // 000000002BD0: 8E118E11
	s_or_b32 s17, s17, s88                                     // 000000002BD4: 87115811
	s_mov_b32 m0, s17                                          // 000000002BD8: BEFC0011
	s_mul_i32 s18, s8, 0x180                                   // 000000002BDC: 9212FF08 00000180
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002BE4: E05D1000 121500E9
	s_add_u32 m0, s17, 0x1000                                  // 000000002BEC: 807CFF11 00001000
	s_mul_i32 s18, s8, 0x1a0                                   // 000000002BF4: 9212FF08 000001A0
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002BFC: E05D1000 121500E9
	s_or_b32 m0, s17, 0x2000                                   // 000000002C04: 877CFF11 00002000
	s_mul_i32 s18, s8, 0x1c0                                   // 000000002C0C: 9212FF08 000001C0
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002C14: E05D1000 121500E9
	s_add_u32 m0, s17, 0x3000                                  // 000000002C1C: 807CFF11 00003000
	s_mul_i32 s17, s8, 0x1e0                                   // 000000002C24: 9211FF08 000001E0
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 000000002C2C: E05D1000 111500E9
	s_waitcnt vmcnt(0)                                         // 000000002C34: BF8C0F70
	s_barrier                                                  // 000000002C38: BF8A0000
	s_add_u32 s53, s97, -1                                     // 000000002C3C: 8035C161
	s_mov_b64 s[58:59], s[30:31]                               // 000000002C40: BEBA011E
	s_mov_b64 s[56:57], s[28:29]                               // 000000002C44: BEB8011C
	s_cmp_lt_i32 s78, 1                                        // 000000002C48: BF04814E
	s_mul_i32 s53, s53, s33                                    // 000000002C4C: 92352135
	s_cbranch_scc1 58                                          // 000000002C50: BF85003A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x123c>
	s_mov_b32 s17, s16                                         // 000000002C54: BE910010
	s_mov_b32 s18, s16                                         // 000000002C58: BE920010
	s_mov_b32 s19, s16                                         // 000000002C5C: BE930010
	s_mov_b32 s20, s16                                         // 000000002C60: BE940010
	s_mov_b32 s21, s16                                         // 000000002C64: BE950010
	s_mov_b32 s22, s16                                         // 000000002C68: BE960010
	s_mov_b32 s23, s16                                         // 000000002C6C: BE970010
	s_mov_b32 s24, s16                                         // 000000002C70: BE980010
	s_mov_b32 s25, s16                                         // 000000002C74: BE990010
	s_mov_b32 s26, s16                                         // 000000002C78: BE9A0010
	s_mov_b32 s27, s16                                         // 000000002C7C: BE9B0010
	s_mov_b32 s28, s16                                         // 000000002C80: BE9C0010
	s_mov_b32 s29, s16                                         // 000000002C84: BE9D0010
	s_mov_b32 s30, s16                                         // 000000002C88: BE9E0010
	s_mov_b32 s31, s16                                         // 000000002C8C: BE9F0010
	s_cmp_lt_i32 s78, 2                                        // 000000002C90: BF04824E
	s_cbranch_scc0 99                                          // 000000002C94: BF840063 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1324>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000002C98: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000002C9C: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000002CA0: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000002CA4: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000002CA8: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000002CAC: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000002CB0: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000002CB4: 7E1C701E
	s_mov_b32 s42, 0                                           // 000000002CB8: BEAA0080
	v_mov_b32_e32 v249, 0                                      // 000000002CBC: 7FF20280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000002CC0: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000002CC4: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 000000002CC8: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 000000002CCC: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 000000002CD0: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 000000002CD4: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 000000002CD8: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 000000002CDC: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 000000002CE0: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 000000002CE4: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 000000002CE8: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 000000002CEC: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 000000002CF0: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 000000002CF4: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 000000002CF8: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 000000002CFC: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 000000002D00: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 000000002D04: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 000000002D08: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 000000002D0C: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 000000002D10: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 000000002D14: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 000000002D18: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000002D1C: 7E607100
	v_readlane_b32 s17, v255, 6                                // 000000002D20: D2890011 00010DFF
	v_readlane_b32 s20, v255, 5                                // 000000002D28: D2890014 00010BFF
	s_mov_b64 s[28:29], s[56:57]                               // 000000002D30: BE9C0138
	s_mov_b64 s[30:31], s[58:59]                               // 000000002D34: BE9E013A
	s_branch 877                                               // 000000002D38: BF82036D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1ff0>
	s_mov_b32 s17, s16                                         // 000000002D3C: BE910010
	s_mov_b32 s18, s16                                         // 000000002D40: BE920010
	s_mov_b32 s19, s16                                         // 000000002D44: BE930010
	s_mov_b32 s20, s16                                         // 000000002D48: BE940010
	s_mov_b32 s21, s16                                         // 000000002D4C: BE950010
	s_mov_b32 s22, s16                                         // 000000002D50: BE960010
	s_mov_b32 s23, s16                                         // 000000002D54: BE970010
	s_mov_b32 s24, s16                                         // 000000002D58: BE980010
	s_mov_b32 s25, s16                                         // 000000002D5C: BE990010
	s_mov_b32 s26, s16                                         // 000000002D60: BE9A0010
	s_mov_b32 s27, s16                                         // 000000002D64: BE9B0010
	s_mov_b32 s28, s16                                         // 000000002D68: BE9C0010
	s_mov_b32 s29, s16                                         // 000000002D6C: BE9D0010
	s_mov_b32 s30, s16                                         // 000000002D70: BE9E0010
	s_mov_b32 s31, s16                                         // 000000002D74: BE9F0010
	s_mov_b32 s42, 0                                           // 000000002D78: BEAA0080
	s_cmp_lg_u32 s78, 0                                        // 000000002D7C: BF07804E
	s_cbranch_scc0 189                                         // 000000002D80: BF8400BD <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1578>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000002D84: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000002D88: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000002D8C: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000002D90: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000002D94: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000002D98: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000002D9C: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000002DA0: 7E1C701E
	v_mov_b32_e32 v249, 0                                      // 000000002DA4: 7FF20280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000002DA8: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000002DAC: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 000000002DB0: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 000000002DB4: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 000000002DB8: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 000000002DBC: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 000000002DC0: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 000000002DC4: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 000000002DC8: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 000000002DCC: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 000000002DD0: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 000000002DD4: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 000000002DD8: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 000000002DDC: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 000000002DE0: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 000000002DE4: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 000000002DE8: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 000000002DEC: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 000000002DF0: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 000000002DF4: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 000000002DF8: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 000000002DFC: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 000000002E00: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000002E04: 7E607100
	v_readlane_b32 s17, v255, 6                                // 000000002E08: D2890011 00010DFF
	v_readlane_b32 s20, v255, 5                                // 000000002E10: D2890014 00010BFF
	s_mov_b64 s[28:29], s[56:57]                               // 000000002E18: BE9C0138
	s_mov_b64 s[30:31], s[58:59]                               // 000000002E1C: BE9E013A
	s_branch 2063                                              // 000000002E20: BF82080F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3360>
	s_mov_b32 s42, 0                                           // 000000002E24: BEAA0080
	s_cmp_eq_u32 s78, 2                                        // 000000002E28: BF06824E
	s_cbranch_scc0 106                                         // 000000002E2C: BF84006A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x14d8>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000002E30: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000002E34: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000002E38: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000002E3C: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000002E40: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000002E44: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000002E48: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000002E4C: 7E1C701E
	v_mov_b32_e32 v249, 0                                      // 000000002E50: 7FF20280
	v_mov_b32_e32 v252, v149                                   // 000000002E54: 7FF80395
	v_mov_b32_e32 v251, v148                                   // 000000002E58: 7FF60394
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000002E5C: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000002E60: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 000000002E64: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 000000002E68: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 000000002E6C: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 000000002E70: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 000000002E74: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 000000002E78: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 000000002E7C: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 000000002E80: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 000000002E84: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 000000002E88: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 000000002E8C: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 000000002E90: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 000000002E94: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 000000002E98: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 000000002E9C: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 000000002EA0: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 000000002EA4: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 000000002EA8: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 000000002EAC: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 000000002EB0: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 000000002EB4: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000002EB8: 7E607100
	v_readlane_b32 s17, v255, 6                                // 000000002EBC: D2890011 00010DFF
	v_readlane_b32 s20, v255, 5                                // 000000002EC4: D2890014 00010BFF
	s_mov_b64 s[28:29], s[56:57]                               // 000000002ECC: BE9C0138
	s_mov_b64 s[30:31], s[58:59]                               // 000000002ED0: BE9E013A
	s_branch 1396                                              // 000000002ED4: BF820574 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x29a8>
	s_add_u32 s18, s78, 1                                      // 000000002ED8: 8012814E
	s_and_b32 s18, s18, 3                                      // 000000002EDC: 86128312
	s_lshl_b32 s18, s18, 14                                    // 000000002EE0: 8E128E12
	s_add_u32 s19, s48, s18                                    // 000000002EE4: 80131230
	s_add_u32 m0, s19, s88                                     // 000000002EE8: 807C5813
	s_nop 0                                                    // 000000002EEC: BF800000
	buffer_load_dwordx4 v235, s[80:83], s33 offen lds          // 000000002EF0: E05D1000 211400EB
	s_add_u32 s19, s48, s18                                    // 000000002EF8: 80131230
	s_add_u32 s19, s19, s88                                    // 000000002EFC: 80135813
	s_add_u32 m0, s19, 0x1000                                  // 000000002F00: 807CFF13 00001000
	s_mul_i32 s19, s8, 0xc0                                    // 000000002F08: 9213FF08 000000C0
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000002F10: E05D1000 131400EB
	s_add_u32 s19, s48, s18                                    // 000000002F18: 80131230
	s_add_u32 s19, s19, s88                                    // 000000002F1C: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 000000002F20: 807CFF13 00002000
	s_mul_i32 s19, s8, 0x84                                    // 000000002F28: 9213FF08 00000084
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000002F30: E05D1000 131400EB
	s_add_u32 s18, s48, s18                                    // 000000002F38: 80121230
	s_add_u32 s18, s18, s88                                    // 000000002F3C: 80125812
	s_add_u32 m0, s18, 0x3000                                  // 000000002F40: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xc4                                    // 000000002F48: 9212FF08 000000C4
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000002F50: E05D1000 121400EB
	s_cmp_lt_u32 s97, 3                                        // 000000002F58: BF0A8361
	s_cbranch_scc1 65304                                       // 000000002F5C: BF85FF18 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10c0>
	s_xor_b32 s17, s17, 2                                      // 000000002F60: 88118211
	s_lshl_b32 s17, s17, 14                                    // 000000002F64: 8E118E11
	s_or_b32 s17, s17, s88                                     // 000000002F68: 87115811
	s_mov_b32 m0, s17                                          // 000000002F6C: BEFC0011
	v_readlane_b32 s18, v255, 6                                // 000000002F70: D2890012 00010DFF
	s_nop 4                                                    // 000000002F78: BF800004
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002F7C: E05D1000 121500E9
	s_add_u32 m0, s17, 0x1000                                  // 000000002F84: 807CFF11 00001000
	s_mul_i32 s18, s8, 0x120                                   // 000000002F8C: 9212FF08 00000120
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002F94: E05D1000 121500E9
	s_or_b32 m0, s17, 0x2000                                   // 000000002F9C: 877CFF11 00002000
	s_mul_i32 s18, s8, 0x140                                   // 000000002FA4: 9212FF08 00000140
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000002FAC: E05D1000 121500E9
	s_add_u32 m0, s17, 0x3000                                  // 000000002FB4: 807CFF11 00003000
	s_mul_i32 s17, s8, 0x160                                   // 000000002FBC: 9211FF08 00000160
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 000000002FC4: E05D1000 111500E9
	s_cmp_lt_u32 s97, 4                                        // 000000002FCC: BF0A8461
	s_cbranch_scc1 65304                                       // 000000002FD0: BF85FF18 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1134>
	s_branch 65276                                             // 000000002FD4: BF82FEFC <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10c8>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000002FD8: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000002FDC: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000002FE0: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000002FE4: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000002FE8: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000002FEC: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000002FF0: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000002FF4: 7E1C701E
	v_mov_b32_e32 v249, 0                                      // 000000002FF8: 7FF20280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000002FFC: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000003000: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 000000003004: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 000000003008: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000300C: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 000000003010: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 000000003014: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 000000003018: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000301C: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 000000003020: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 000000003024: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 000000003028: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000302C: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 000000003030: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 000000003034: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 000000003038: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000303C: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 000000003040: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 000000003044: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 000000003048: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000304C: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 000000003050: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 000000003054: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000003058: 7E607100
	v_readlane_b32 s17, v255, 6                                // 00000000305C: D2890011 00010DFF
	v_readlane_b32 s20, v255, 5                                // 000000003064: D2890014 00010BFF
	s_mov_b64 s[28:29], s[56:57]                               // 00000000306C: BE9C0138
	s_mov_b64 s[30:31], s[58:59]                               // 000000003070: BE9E013A
	s_branch 1914                                              // 000000003074: BF82077A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3360>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000003078: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000307C: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000003080: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000003084: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000003088: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000308C: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000003090: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000003094: 7E1C701E
	v_mov_b32_e32 v249, 0                                      // 000000003098: 7FF20280
	s_mov_b32 s42, s78                                         // 00000000309C: BEAA004E
	v_mov_b32_e32 v252, v149                                   // 0000000030A0: 7FF80395
	v_mov_b32_e32 v251, v148                                   // 0000000030A4: 7FF60394
	v_mov_b64_e32 v[30:31], v[14:15]                           // 0000000030A8: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 0000000030AC: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 0000000030B0: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 0000000030B4: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 0000000030B8: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 0000000030BC: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 0000000030C0: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 0000000030C4: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 0000000030C8: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 0000000030CC: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 0000000030D0: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 0000000030D4: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 0000000030D8: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 0000000030DC: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 0000000030E0: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 0000000030E4: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 0000000030E8: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 0000000030EC: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 0000000030F0: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 0000000030F4: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 0000000030F8: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 0000000030FC: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 000000003100: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000003104: 7E607100
	v_readlane_b32 s17, v255, 6                                // 000000003108: D2890011 00010DFF
	v_readlane_b32 s20, v255, 5                                // 000000003110: D2890014 00010BFF
	s_mov_b64 s[28:29], s[56:57]                               // 000000003118: BE9C0138
	s_mov_b64 s[30:31], s[58:59]                               // 00000000311C: BE9E013A
	s_branch 5                                                 // 000000003120: BF820005 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1638>
	s_mov_b64 s[0:1], s[20:21]                                 // 000000003124: BE800114
	s_mov_b32 s3, s17                                          // 000000003128: BE830011
	global_store_dword v0, v32, s[36:37]                       // 00000000312C: DC708000 00242000
	s_branch 64489                                             // 000000003134: BF82FBE9 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5dc>
	s_add_u32 s18, s42, 1                                      // 000000003138: 8012812A
	s_cmp_ge_u32 s18, s79                                      // 00000000313C: BF094F12
	s_cbranch_scc1 2488                                        // 000000003140: BF8509B8 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d24>
	s_setprio 0                                                // 000000003144: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000003148: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 000000003150: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 000000003158: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 000000003160: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 000000003168: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 000000003170: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 000000003178: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 000000003180: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 000000003188: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 000000003190: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 000000003198: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 0000000031A0: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 0000000031A8: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 0000000031B0: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 0000000031B8: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 0000000031C0: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 0000000031C8: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 0000000031D0: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 0000000031D8: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 0000000031E0: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 0000000031E8: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 0000000031F0: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 0000000031F8: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000003200: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 000000003208: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000003210: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000003218: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 000000003220: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000003228: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 000000003230: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 000000003238: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 000000003240: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 000000003248: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 000000003250: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 000000003258: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 000000003260: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 000000003268: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 000000003270: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 000000003278: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 000000003280: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 000000003288: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 000000003290: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 000000003298: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 0000000032A0: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 0000000032A8: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 0000000032B0: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 0000000032B8: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 0000000032C0: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 0000000032C8: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 0000000032D0: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 0000000032D8: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 0000000032E0: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 0000000032E8: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 0000000032F0: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 0000000032F8: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000003300: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 000000003308: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000003310: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 000000003318: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 000000003320: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 000000003328: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 000000003330: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 000000003338: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 000000003340: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 000000003348: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 000000003350: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 000000003358: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 000000003360: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 000000003368: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 000000003370: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 000000003378: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 000000003380: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 000000003388: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 000000003390: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 000000003398: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 0000000033A0: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 0000000033A8: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 0000000033B0: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 0000000033B8: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 0000000033C0: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 0000000033C8: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 0000000033D0: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 0000000033D8: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 0000000033E0: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 0000000033E8: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 0000000033F0: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 0000000033F8: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000003400: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 000000003408: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000003410: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 000000003418: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 000000003420: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 000000003428: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 000000003430: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 000000003438: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 000000003440: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 000000003448: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000003450: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 000000003458: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 000000003460: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 000000003468: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 000000003470: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 000000003478: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 000000003480: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 000000003488: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 000000003490: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 000000003498: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 0000000034A0: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 0000000034A8: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 0000000034B0: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 0000000034B8: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 0000000034C0: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 0000000034C8: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 0000000034D0: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 0000000034D8: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 0000000034E0: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 0000000034E8: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 0000000034F0: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 0000000034F8: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 000000003500: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000003508: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 000000003510: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 000000003518: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 000000003520: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 000000003528: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 000000003530: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 000000003538: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 000000003540: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 000000003548: 7F320398
	v_mov_b32_e32 v151, v150                                   // 00000000354C: 7F2E0396
	ds_read_b128 v[72:75], v231 offset:16384                   // 000000003550: D9FE4000 480000E7
	ds_read_b128 v[76:79], v231 offset:16400                   // 000000003558: D9FE4010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:20480                   // 000000003560: D9FE5000 500000E7
	ds_read_b128 v[84:87], v231 offset:20496                   // 000000003568: D9FE5010 540000E7
	s_barrier                                                  // 000000003570: BF8A0000
	s_setprio 1                                                // 000000003574: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 000000003578: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 000000003580: D3AD0044 020311C0
	ds_read_b128 v[144:147], v231 offset:24576                 // 000000003588: D9FE6000 900000E7
	ds_read_b128 v[148:151], v231 offset:24592                 // 000000003590: D9FE6010 940000E7
	ds_read_b128 v[156:159], v231 offset:28672                 // 000000003598: D9FE7000 9C0000E7
	ds_read_b128 v[160:163], v231 offset:28688                 // 0000000035A0: D9FE7010 A00000E7
	s_waitcnt lgkmcnt(4)                                       // 0000000035A8: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 0000000035AC: D3AE0070 0203B948
	ds_read_b128 v[164:167], v232 offset:16384                 // 0000000035B4: D9FE4000 A40000E8
	ds_read_b128 v[168:171], v232 offset:16400                 // 0000000035BC: D9FE4010 A80000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 0000000035C4: D3AE0060 0203B950
	ds_read_b128 v[172:175], v232 offset:20480                 // 0000000035CC: D9FE5000 AC0000E8
	ds_read_b128 v[176:179], v232 offset:20496                 // 0000000035D4: D9FE5010 B00000E8
	s_waitcnt lgkmcnt(4)                                       // 0000000035DC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[144:151], v[220:227], 0// 0000000035E0: D3AE0050 0203B990
	ds_read_b128 v[146:149], v232 offset:24576                 // 0000000035E8: D9FE6000 920000E8
	ds_read_b128 v[150:153], v232 offset:24592                 // 0000000035F0: D9FE6010 960000E8
	s_min_u32 s18, s20, s53                                    // 0000000035F8: 83923514
	s_add_u32 m0, s88, s16                                     // 0000000035FC: 807C1058
	s_nop 0                                                    // 000000003600: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000003604: E05D1000 121500E9
	v_mul_f32_e32 v72, v154, v64                               // 00000000360C: 0A90819A
	v_add_f32_e32 v72, v249, v72                               // 000000003610: 029091F9
	v_mul_f32_e32 v73, v155, v68                               // 000000003614: 0A92899B
	v_add_f32_e32 v249, v72, v73                               // 000000003618: 03F29348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[156:163], v[220:227], 0// 00000000361C: D3AE0040 0203B99C
	ds_read_b128 v[154:157], v232 offset:28672                 // 000000003624: D9FE7000 9A0000E8
	ds_read_b128 v[158:161], v232 offset:28688                 // 00000000362C: D9FE7010 9E0000E8
	s_add_u32 m0, s88, s95                                     // 000000003634: 807C5F58
	s_nop 0                                                    // 000000003638: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 00000000363C: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 000000003644: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[164:171], v[200:207], v[112:127]// 000000003648: D3AE0070 05C391A4
	ds_read_b64_tr_b8 v[162:163], v245                         // 000000003650: D9C40000 A20000F5
	ds_read_b64_tr_b8 v[164:165], v245 offset:1024             // 000000003658: D9C40400 A40000F5
	ds_read_b64_tr_b8 v[166:167], v245 offset:2048             // 000000003660: D9C40800 A60000F5
	ds_read_b64_tr_b8 v[168:169], v245 offset:3072             // 000000003668: D9C40C00 A80000F5
	s_min_u32 s18, s17, s53                                    // 000000003670: 83923511
	s_add_u32 m0, s88, s98                                     // 000000003674: 807C6258
	s_nop 0                                                    // 000000003678: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 00000000367C: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[172:179], v[200:207], v[96:111]// 000000003684: D3AE0060 058391AC
	ds_read_b64_tr_b8 v[170:171], v245 offset:256              // 00000000368C: D9C40100 AA0000F5
	ds_read_b64_tr_b8 v[172:173], v245 offset:1280             // 000000003694: D9C40500 AC0000F5
	ds_read_b64_tr_b8 v[174:175], v245 offset:2304             // 00000000369C: D9C40900 AE0000F5
	ds_read_b64_tr_b8 v[176:177], v245 offset:3328             // 0000000036A4: D9C40D00 B00000F5
	s_add_u32 m0, s88, s96                                     // 0000000036AC: 807C6058
	s_nop 0                                                    // 0000000036B0: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 0000000036B4: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 0000000036BC: 80142114
	s_add_u32 s17, s17, s33                                    // 0000000036C0: 80112111
	v_max_f32_e32 v144, v112, v113                             // 0000000036C4: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 0000000036C8: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 0000000036D0: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 0000000036D8: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 0000000036E0: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 0000000036E8: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 0000000036F0: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 0000000036F8: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 000000003700: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[146:153], v[200:207], v[80:95]// 000000003704: D3AE0050 05439192
	ds_read_b64_tr_b8 v[178:179], v245 offset:512              // 00000000370C: D9C40200 B20000F5
	ds_read_b64_tr_b8 v[180:181], v245 offset:1536             // 000000003714: D9C40600 B40000F5
	ds_read_b64_tr_b8 v[182:183], v245 offset:2560             // 00000000371C: D9C40A00 B60000F5
	ds_read_b64_tr_b8 v[184:185], v245 offset:3584             // 000000003724: D9C40E00 B80000F5
	v_max_f32_e32 v145, v96, v97                               // 00000000372C: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 000000003730: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 000000003738: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 000000003740: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 000000003748: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 000000003750: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 000000003758: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 000000003760: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[154:161], v[200:207], v[64:79]// 000000003768: D3AE0040 0503919A
	s_nop 3                                                    // 000000003770: BF800003
	v_max_f32_e32 v146, v80, v81                               // 000000003774: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 000000003778: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 000000003780: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 000000003788: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 000000003790: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 000000003798: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 0000000037A0: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 0000000037A8: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 0000000037B0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[162:169], v[128:135], v[48:63], v242, v250 op_sel_hi:[0,0,0]// 0000000037B4: D3AC0000 0003F5F2 D3AE0830 04C301A2
	ds_read_b64_tr_b8 v[148:149], v245 offset:768              // 0000000037C4: D9C40300 940000F5
	ds_read_b64_tr_b8 v[150:151], v245 offset:1792             // 0000000037CC: D9C40700 960000F5
	ds_read_b64_tr_b8 v[152:153], v245 offset:2816             // 0000000037D4: D9C40B00 980000F5
	ds_read_b64_tr_b8 v[154:155], v245 offset:3840             // 0000000037DC: D9C40F00 9A0000F5
	ds_read_b64_tr_b8 v[156:157], v245 offset:4096             // 0000000037E4: D9C41000 9C0000F5
	ds_read_b64_tr_b8 v[158:159], v245 offset:5120             // 0000000037EC: D9C41400 9E0000F5
	ds_read_b64_tr_b8 v[160:161], v245 offset:6144             // 0000000037F4: D9C41800 A00000F5
	ds_read_b64_tr_b8 v[162:163], v245 offset:7168             // 0000000037FC: D9C41C00 A20000F5
	v_max_f32_e32 v147, v64, v65                               // 000000003804: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 000000003808: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 000000003810: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 000000003818: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 000000003820: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 000000003828: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 000000003830: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 000000003838: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[170:177], v[128:135], v[32:47], v242, v250 op_sel_hi:[0,0,0]// 000000003840: D3AC0000 0003F5F2 D3AE0820 048301AA
	v_max_f32_e32 v144, v144, v145                             // 000000003850: 17212390
	v_max_f32_e32 v146, v146, v147                             // 000000003854: 17252792
	v_mov_b32_e32 v145, v144                                   // 000000003858: 7F220390
	v_mov_b32_e32 v147, v146                                   // 00000000385C: 7F260392
	s_nop 0                                                    // 000000003860: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 000000003864: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 000000003868: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 00000000386C: 17212390
	v_max_f32_e32 v145, v146, v147                             // 000000003870: 17232792
	s_waitcnt lgkmcnt(4)                                       // 000000003874: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[178:185], v[128:135], v[16:31], v242, v250 op_sel_hi:[0,0,0]// 000000003878: D3AC0000 0003F5F2 D3AE0810 044301B2
	ds_read_b64_tr_b8 v[164:165], v245 offset:4352             // 000000003888: D9C41100 A40000F5
	ds_read_b64_tr_b8 v[166:167], v245 offset:5376             // 000000003890: D9C41500 A60000F5
	ds_read_b64_tr_b8 v[168:169], v245 offset:6400             // 000000003898: D9C41900 A80000F5
	ds_read_b64_tr_b8 v[170:171], v245 offset:7424             // 0000000038A0: D9C41D00 AA0000F5
	ds_read_b64_tr_b8 v[172:173], v245 offset:4608             // 0000000038A8: D9C41200 AC0000F5
	ds_read_b64_tr_b8 v[174:175], v245 offset:5632             // 0000000038B0: D9C41600 AE0000F5
	ds_read_b64_tr_b8 v[176:177], v245 offset:6656             // 0000000038B8: D9C41A00 B00000F5
	ds_read_b64_tr_b8 v[178:179], v245 offset:7680             // 0000000038C0: D9C41E00 B20000F5
	v_max_f32_e32 v146, v144, v145                             // 0000000038C8: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 0000000038CC: 0B2525EE
	v_max_f32_e32 v146, v251, v146                             // 0000000038D0: 172525FB
	v_sub_f32_e32 v147, v146, v251                             // 0000000038D4: 0527F792
	v_cmp_lt_f32_e32 vcc, s49, v147                            // 0000000038D8: 7C832631
	s_cmp_lg_u64 vcc, 0                                        // 0000000038DC: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 0000000038E0: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 0000000038E4: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[148:155], v[128:135], v[0:15], v242, v250 op_sel_hi:[0,0,0]// 0000000038E8: D3AC0000 0003F5F2 D3AE0800 04030194
	v_cndmask_b32_e64 v148, v251, v146, s[18:19]               // 0000000038F8: D1000094 004B25FB
	v_fma_f32 v128, v144, v238, -v148                          // 000000003900: D1CB0080 8653DD90
	v_floor_f32_e32 v128, v128                                 // 000000003908: 7F003F80
	v_med3_f32 v128, v128, s99, 0                              // 00000000390C: D1D60080 0200C780
	v_cvt_i32_f32_e32 v129, v128                               // 000000003914: 7F021180
	v_add_u32_e32 v250, 0x7f, v129                             // 000000003918: 69F502FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v250                           // 000000003920: 2535F497
	v_fma_f32 v129, v145, v238, -v148                          // 000000003924: D1CB0081 8653DD91
	s_waitcnt lgkmcnt(4)                                       // 00000000392C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v252 op_sel_hi:[0,0,0]// 000000003930: D3AC0000 0003F9F2 D3AE0830 04C3119C
	ds_read_b64_tr_b8 v[156:157], v245 offset:4864             // 000000003940: D9C41300 9C0000F5
	ds_read_b64_tr_b8 v[158:159], v245 offset:5888             // 000000003948: D9C41700 9E0000F5
	ds_read_b64_tr_b8 v[160:161], v245 offset:6912             // 000000003950: D9C41B00 A00000F5
	ds_read_b64_tr_b8 v[162:163], v245 offset:7936             // 000000003958: D9C41F00 A20000F5
	v_floor_f32_e32 v129, v129                                 // 000000003960: 7F023F81
	v_med3_f32 v129, v129, s99, 0                              // 000000003964: D1D60081 0200C781
	v_cvt_i32_f32_e32 v130, v129                               // 00000000396C: 7F041181
	v_add_u32_e32 v149, 0x7f, v130                             // 000000003970: 692B04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v149                           // 000000003978: 25372A97
	v_mov_b32_e32 v130, s50                                    // 00000000397C: 7F040232
	v_fma_f32 v130, v148, s92, v130                            // 000000003980: D1CB0082 0608B994
	v_fma_f32 v152, v128, s92, v130                            // 000000003988: D1CB0098 0608B980
	v_fma_f32 v150, v129, s92, v130                            // 000000003990: D1CB0096 0608B981
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v252 op_sel_hi:[0,0,0]// 000000003998: D3AC0000 0003F9F2 D3AE0820 048311A4
	s_waitcnt lgkmcnt(0)                                       // 0000000039A8: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v252 op_sel_hi:[0,0,0]// 0000000039AC: D3AC0000 0003F9F2 D3AE0810 044311AC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v252 op_sel_hi:[0,0,0]// 0000000039BC: D3AC0000 0003F9F2 D3AE0800 0403119C
	s_cmp_eq_u32 s21, 0                                        // 0000000039CC: BF068015
	s_cbranch_scc1 68                                          // 0000000039D0: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1fe4>
	v_sub_f32_e32 v128, v251, v148                             // 0000000039D4: 050129FB
	v_exp_f32_e32 v128, v128                                   // 0000000039D8: 7F004180
	s_nop 0                                                    // 0000000039DC: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 0000000039E0: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 0000000039E8: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 0000000039F0: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 0000000039F8: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000003A00: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000003A08: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000003A10: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000003A18: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000003A20: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000003A28: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000003A30: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000003A38: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000003A40: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000003A48: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000003A50: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000003A58: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000003A60: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000003A68: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000003A70: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000003A78: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000003A80: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000003A88: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000003A90: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 000000003A98: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 000000003AA0: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 000000003AA8: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 000000003AB0: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 000000003AB8: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 000000003AC0: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 000000003AC8: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 000000003AD0: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 000000003AD8: D3B14000 10020180
	v_mul_f32_e32 v249, v249, v128                             // 000000003AE0: 0BF301F9
	s_waitcnt vmcnt(4)                                         // 000000003AE4: BF8C0F74
	s_barrier                                                  // 000000003AE8: BF8A0000
	s_add_u32 s42, s42, 1                                      // 000000003AEC: 802A812A
	s_add_u32 s18, s42, 1                                      // 000000003AF0: 8012812A
	s_cmp_ge_u32 s18, s79                                      // 000000003AF4: BF094F12
	s_cbranch_scc1 1870                                        // 000000003AF8: BF85074E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d34>
	s_setprio 0                                                // 000000003AFC: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000003B00: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 000000003B08: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 000000003B10: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 000000003B18: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 000000003B20: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 000000003B28: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 000000003B30: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 000000003B38: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 000000003B40: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 000000003B48: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 000000003B50: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 000000003B58: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 000000003B60: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 000000003B68: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 000000003B70: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 000000003B78: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 000000003B80: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000003B88: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 000000003B90: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000003B98: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 000000003BA0: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000003BA8: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 000000003BB0: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000003BB8: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 000000003BC0: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000003BC8: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000003BD0: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 000000003BD8: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000003BE0: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 000000003BE8: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 000000003BF0: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 000000003BF8: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 000000003C00: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 000000003C08: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 000000003C10: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 000000003C18: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 000000003C20: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 000000003C28: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 000000003C30: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 000000003C38: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 000000003C40: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 000000003C48: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 000000003C50: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 000000003C58: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 000000003C60: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 000000003C68: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 000000003C70: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 000000003C78: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 000000003C80: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000003C88: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 000000003C90: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000003C98: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 000000003CA0: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000003CA8: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 000000003CB0: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000003CB8: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 000000003CC0: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000003CC8: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 000000003CD0: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 000000003CD8: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 000000003CE0: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 000000003CE8: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 000000003CF0: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 000000003CF8: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 000000003D00: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 000000003D08: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 000000003D10: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 000000003D18: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 000000003D20: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 000000003D28: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 000000003D30: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 000000003D38: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 000000003D40: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 000000003D48: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 000000003D50: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 000000003D58: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 000000003D60: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 000000003D68: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 000000003D70: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 000000003D78: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 000000003D80: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000003D88: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 000000003D90: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000003D98: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 000000003DA0: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000003DA8: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 000000003DB0: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000003DB8: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 000000003DC0: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000003DC8: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 000000003DD0: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 000000003DD8: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 000000003DE0: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 000000003DE8: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 000000003DF0: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 000000003DF8: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 000000003E00: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000003E08: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 000000003E10: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 000000003E18: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 000000003E20: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 000000003E28: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 000000003E30: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 000000003E38: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 000000003E40: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 000000003E48: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 000000003E50: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 000000003E58: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 000000003E60: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 000000003E68: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 000000003E70: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 000000003E78: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000003E80: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000003E88: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000003E90: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000003E98: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000003EA0: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 000000003EA8: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 000000003EB0: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 000000003EB8: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000003EC0: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 000000003EC8: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 000000003ED0: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 000000003ED8: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 000000003EE0: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 000000003EE8: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 000000003EF0: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 000000003EF8: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 000000003F00: 7F320398
	v_mov_b32_e32 v151, v150                                   // 000000003F04: 7F2E0396
	ds_read_b128 v[72:75], v231 offset:32768                   // 000000003F08: D9FE8000 480000E7
	ds_read_b128 v[76:79], v231 offset:32784                   // 000000003F10: D9FE8010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:36864                   // 000000003F18: D9FE9000 500000E7
	ds_read_b128 v[84:87], v231 offset:36880                   // 000000003F20: D9FE9010 540000E7
	s_barrier                                                  // 000000003F28: BF8A0000
	s_setprio 1                                                // 000000003F2C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 000000003F30: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 000000003F38: D3AD0044 020311C0
	ds_read_b128 v[156:159], v231 offset:40960                 // 000000003F40: D9FEA000 9C0000E7
	ds_read_b128 v[160:163], v231 offset:40976                 // 000000003F48: D9FEA010 A00000E7
	ds_read_b128 v[164:167], v231 offset:45056                 // 000000003F50: D9FEB000 A40000E7
	ds_read_b128 v[168:171], v231 offset:45072                 // 000000003F58: D9FEB010 A80000E7
	s_waitcnt lgkmcnt(4)                                       // 000000003F60: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 000000003F64: D3AE0070 0203B948
	ds_read_b128 v[172:175], v232 offset:32768                 // 000000003F6C: D9FE8000 AC0000E8
	ds_read_b128 v[176:179], v232 offset:32784                 // 000000003F74: D9FE8010 B00000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 000000003F7C: D3AE0060 0203B950
	ds_read_b128 v[180:183], v232 offset:36864                 // 000000003F84: D9FE9000 B40000E8
	ds_read_b128 v[184:187], v232 offset:36880                 // 000000003F8C: D9FE9010 B80000E8
	s_waitcnt lgkmcnt(4)                                       // 000000003F94: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[156:163], v[220:227], 0// 000000003F98: D3AE0050 0203B99C
	ds_read_b128 v[156:159], v232 offset:40960                 // 000000003FA0: D9FEA000 9C0000E8
	ds_read_b128 v[160:163], v232 offset:40976                 // 000000003FA8: D9FEA010 A00000E8
	s_min_u32 s18, s20, s53                                    // 000000003FB0: 83923514
	s_add_u32 m0, s88, s89                                     // 000000003FB4: 807C5958
	s_nop 0                                                    // 000000003FB8: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000003FBC: E05D1000 121500E9
	v_mul_f32_e32 v72, v154, v64                               // 000000003FC4: 0A90819A
	v_add_f32_e32 v72, v249, v72                               // 000000003FC8: 029091F9
	v_mul_f32_e32 v73, v155, v68                               // 000000003FCC: 0A92899B
	v_add_f32_e32 v249, v72, v73                               // 000000003FD0: 03F29348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[164:171], v[220:227], 0// 000000003FD4: D3AE0040 0203B9A4
	ds_read_b128 v[164:167], v232 offset:45056                 // 000000003FDC: D9FEB000 A40000E8
	ds_read_b128 v[168:171], v232 offset:45072                 // 000000003FE4: D9FEB010 A80000E8
	s_add_u32 m0, s88, s90                                     // 000000003FEC: 807C5A58
	s_nop 0                                                    // 000000003FF0: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 000000003FF4: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 000000003FFC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[172:179], v[200:207], v[112:127]// 000000004000: D3AE0070 05C391AC
	ds_read_b64_tr_b8 v[172:173], v246                         // 000000004008: D9C40000 AC0000F6
	ds_read_b64_tr_b8 v[174:175], v246 offset:1024             // 000000004010: D9C40400 AE0000F6
	ds_read_b64_tr_b8 v[176:177], v246 offset:2048             // 000000004018: D9C40800 B00000F6
	ds_read_b64_tr_b8 v[178:179], v246 offset:3072             // 000000004020: D9C40C00 B20000F6
	s_min_u32 s18, s17, s53                                    // 000000004028: 83923511
	s_add_u32 m0, s88, s93                                     // 00000000402C: 807C5D58
	s_nop 0                                                    // 000000004030: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000004034: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[180:187], v[200:207], v[96:111]// 00000000403C: D3AE0060 058391B4
	ds_read_b64_tr_b8 v[180:181], v246 offset:256              // 000000004044: D9C40100 B40000F6
	ds_read_b64_tr_b8 v[182:183], v246 offset:1280             // 00000000404C: D9C40500 B60000F6
	ds_read_b64_tr_b8 v[184:185], v246 offset:2304             // 000000004054: D9C40900 B80000F6
	ds_read_b64_tr_b8 v[186:187], v246 offset:3328             // 00000000405C: D9C40D00 BA0000F6
	s_add_u32 m0, s88, s91                                     // 000000004064: 807C5B58
	s_nop 0                                                    // 000000004068: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 00000000406C: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 000000004074: 80142114
	s_add_u32 s17, s17, s33                                    // 000000004078: 80112111
	v_max_f32_e32 v144, v112, v113                             // 00000000407C: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 000000004080: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 000000004088: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 000000004090: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 000000004098: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 0000000040A0: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 0000000040A8: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 0000000040B0: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 0000000040B8: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[156:163], v[200:207], v[80:95]// 0000000040BC: D3AE0050 0543919C
	ds_read_b64_tr_b8 v[150:151], v246 offset:512              // 0000000040C4: D9C40200 960000F6
	ds_read_b64_tr_b8 v[152:153], v246 offset:1536             // 0000000040CC: D9C40600 980000F6
	ds_read_b64_tr_b8 v[154:155], v246 offset:2560             // 0000000040D4: D9C40A00 9A0000F6
	ds_read_b64_tr_b8 v[156:157], v246 offset:3584             // 0000000040DC: D9C40E00 9C0000F6
	v_max_f32_e32 v145, v96, v97                               // 0000000040E4: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 0000000040E8: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 0000000040F0: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 0000000040F8: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 000000004100: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 000000004108: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 000000004110: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 000000004118: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[164:171], v[200:207], v[64:79]// 000000004120: D3AE0040 050391A4
	s_nop 3                                                    // 000000004128: BF800003
	v_max_f32_e32 v146, v80, v81                               // 00000000412C: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 000000004130: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 000000004138: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 000000004140: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 000000004148: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 000000004150: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 000000004158: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 000000004160: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 000000004168: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[172:179], v[128:135], v[48:63], v242, v250 op_sel_hi:[0,0,0]// 00000000416C: D3AC0000 0003F5F2 D3AE0830 04C301AC
	ds_read_b64_tr_b8 v[158:159], v246 offset:768              // 00000000417C: D9C40300 9E0000F6
	ds_read_b64_tr_b8 v[160:161], v246 offset:1792             // 000000004184: D9C40700 A00000F6
	ds_read_b64_tr_b8 v[162:163], v246 offset:2816             // 00000000418C: D9C40B00 A20000F6
	ds_read_b64_tr_b8 v[164:165], v246 offset:3840             // 000000004194: D9C40F00 A40000F6
	ds_read_b64_tr_b8 v[166:167], v246 offset:4096             // 00000000419C: D9C41000 A60000F6
	ds_read_b64_tr_b8 v[168:169], v246 offset:5120             // 0000000041A4: D9C41400 A80000F6
	ds_read_b64_tr_b8 v[170:171], v246 offset:6144             // 0000000041AC: D9C41800 AA0000F6
	ds_read_b64_tr_b8 v[172:173], v246 offset:7168             // 0000000041B4: D9C41C00 AC0000F6
	v_max_f32_e32 v147, v64, v65                               // 0000000041BC: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 0000000041C0: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 0000000041C8: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 0000000041D0: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 0000000041D8: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 0000000041E0: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 0000000041E8: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 0000000041F0: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[180:187], v[128:135], v[32:47], v242, v250 op_sel_hi:[0,0,0]// 0000000041F8: D3AC0000 0003F5F2 D3AE0820 048301B4
	v_max_f32_e32 v144, v144, v145                             // 000000004208: 17212390
	v_max_f32_e32 v146, v146, v147                             // 00000000420C: 17252792
	v_mov_b32_e32 v145, v144                                   // 000000004210: 7F220390
	v_mov_b32_e32 v147, v146                                   // 000000004214: 7F260392
	s_nop 0                                                    // 000000004218: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 00000000421C: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 000000004220: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 000000004224: 17212390
	v_max_f32_e32 v145, v146, v147                             // 000000004228: 17232792
	s_waitcnt lgkmcnt(4)                                       // 00000000422C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[150:157], v[128:135], v[16:31], v242, v250 op_sel_hi:[0,0,0]// 000000004230: D3AC0000 0003F5F2 D3AE0810 04430196
	ds_read_b64_tr_b8 v[174:175], v246 offset:4352             // 000000004240: D9C41100 AE0000F6
	ds_read_b64_tr_b8 v[176:177], v246 offset:5376             // 000000004248: D9C41500 B00000F6
	ds_read_b64_tr_b8 v[178:179], v246 offset:6400             // 000000004250: D9C41900 B20000F6
	ds_read_b64_tr_b8 v[180:181], v246 offset:7424             // 000000004258: D9C41D00 B40000F6
	ds_read_b64_tr_b8 v[182:183], v246 offset:4608             // 000000004260: D9C41200 B60000F6
	ds_read_b64_tr_b8 v[184:185], v246 offset:5632             // 000000004268: D9C41600 B80000F6
	ds_read_b64_tr_b8 v[186:187], v246 offset:6656             // 000000004270: D9C41A00 BA0000F6
	ds_read_b64_tr_b8 v[188:189], v246 offset:7680             // 000000004278: D9C41E00 BC0000F6
	v_max_f32_e32 v146, v144, v145                             // 000000004280: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 000000004284: 0B2525EE
	v_max_f32_e32 v146, v148, v146                             // 000000004288: 17252594
	v_sub_f32_e32 v147, v146, v148                             // 00000000428C: 05272992
	v_cmp_lt_f32_e32 vcc, s49, v147                            // 000000004290: 7C832631
	s_cmp_lg_u64 vcc, 0                                        // 000000004294: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 000000004298: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000429C: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[158:165], v[128:135], v[0:15], v242, v250 op_sel_hi:[0,0,0]// 0000000042A0: D3AC0000 0003F5F2 D3AE0800 0403019E
	v_cndmask_b32_e64 v251, v148, v146, s[18:19]               // 0000000042B0: D10000FB 004B2594
	v_fma_f32 v128, v144, v238, -v251                          // 0000000042B8: D1CB0080 87EFDD90
	v_floor_f32_e32 v128, v128                                 // 0000000042C0: 7F003F80
	v_med3_f32 v128, v128, s99, 0                              // 0000000042C4: D1D60080 0200C780
	v_cvt_i32_f32_e32 v129, v128                               // 0000000042CC: 7F021180
	v_add_u32_e32 v250, 0x7f, v129                             // 0000000042D0: 69F502FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v250                           // 0000000042D8: 2535F497
	v_fma_f32 v129, v145, v238, -v251                          // 0000000042DC: D1CB0081 87EFDD91
	s_waitcnt lgkmcnt(4)                                       // 0000000042E4: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[166:173], v[136:143], v[48:63], v242, v149 op_sel_hi:[0,0,0]// 0000000042E8: D3AC0000 00032BF2 D3AE0830 04C311A6
	ds_read_b64_tr_b8 v[156:157], v246 offset:4864             // 0000000042F8: D9C41300 9C0000F6
	ds_read_b64_tr_b8 v[158:159], v246 offset:5888             // 000000004300: D9C41700 9E0000F6
	ds_read_b64_tr_b8 v[160:161], v246 offset:6912             // 000000004308: D9C41B00 A00000F6
	ds_read_b64_tr_b8 v[162:163], v246 offset:7936             // 000000004310: D9C41F00 A20000F6
	v_floor_f32_e32 v129, v129                                 // 000000004318: 7F023F81
	v_med3_f32 v129, v129, s99, 0                              // 00000000431C: D1D60081 0200C781
	v_cvt_i32_f32_e32 v130, v129                               // 000000004324: 7F041181
	v_add_u32_e32 v252, 0x7f, v130                             // 000000004328: 69F904FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v252                           // 000000004330: 2537F897
	v_mov_b32_e32 v130, s50                                    // 000000004334: 7F040232
	v_fma_f32 v130, v251, s92, v130                            // 000000004338: D1CB0082 0608B9FB
	v_fma_f32 v152, v128, s92, v130                            // 000000004340: D1CB0098 0608B980
	v_fma_f32 v150, v129, s92, v130                            // 000000004348: D1CB0096 0608B981
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[174:181], v[136:143], v[32:47], v242, v149 op_sel_hi:[0,0,0]// 000000004350: D3AC0000 00032BF2 D3AE0820 048311AE
	s_waitcnt lgkmcnt(0)                                       // 000000004360: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[182:189], v[136:143], v[16:31], v242, v149 op_sel_hi:[0,0,0]// 000000004364: D3AC0000 00032BF2 D3AE0810 044311B6
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v149 op_sel_hi:[0,0,0]// 000000004374: D3AC0000 00032BF2 D3AE0800 0403119C
	s_cmp_eq_u32 s21, 0                                        // 000000004384: BF068015
	s_cbranch_scc1 68                                          // 000000004388: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x299c>
	v_sub_f32_e32 v128, v148, v251                             // 00000000438C: 0501F794
	v_exp_f32_e32 v128, v128                                   // 000000004390: 7F004180
	s_nop 0                                                    // 000000004394: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 000000004398: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 0000000043A0: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 0000000043A8: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 0000000043B0: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 0000000043B8: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 0000000043C0: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 0000000043C8: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 0000000043D0: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 0000000043D8: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 0000000043E0: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 0000000043E8: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 0000000043F0: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 0000000043F8: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000004400: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000004408: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000004410: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000004418: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000004420: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000004428: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000004430: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000004438: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000004440: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000004448: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 000000004450: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 000000004458: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 000000004460: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 000000004468: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 000000004470: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 000000004478: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 000000004480: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 000000004488: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 000000004490: D3B14000 10020180
	v_mul_f32_e32 v249, v249, v128                             // 000000004498: 0BF301F9
	s_waitcnt vmcnt(4)                                         // 00000000449C: BF8C0F74
	s_barrier                                                  // 0000000044A0: BF8A0000
	s_add_u32 s42, s42, 1                                      // 0000000044A4: 802A812A
	s_add_u32 s18, s42, 1                                      // 0000000044A8: 8012812A
	s_cmp_ge_u32 s18, s79                                      // 0000000044AC: BF094F12
	s_cbranch_scc1 1244                                        // 0000000044B0: BF8504DC <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d24>
	s_setprio 0                                                // 0000000044B4: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 0000000044B8: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 0000000044C0: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 0000000044C8: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 0000000044D0: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 0000000044D8: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 0000000044E0: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 0000000044E8: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 0000000044F0: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 0000000044F8: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 000000004500: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 000000004508: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 000000004510: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 000000004518: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 000000004520: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 000000004528: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 000000004530: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 000000004538: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000004540: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 000000004548: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000004550: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 000000004558: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000004560: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 000000004568: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000004570: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 000000004578: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000004580: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000004588: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 000000004590: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000004598: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 0000000045A0: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 0000000045A8: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 0000000045B0: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 0000000045B8: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 0000000045C0: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 0000000045C8: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 0000000045D0: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 0000000045D8: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 0000000045E0: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 0000000045E8: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 0000000045F0: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 0000000045F8: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 000000004600: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 000000004608: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 000000004610: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 000000004618: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 000000004620: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 000000004628: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 000000004630: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 000000004638: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000004640: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 000000004648: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000004650: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 000000004658: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000004660: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 000000004668: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000004670: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 000000004678: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000004680: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 000000004688: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 000000004690: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 000000004698: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 0000000046A0: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 0000000046A8: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 0000000046B0: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 0000000046B8: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 0000000046C0: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 0000000046C8: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 0000000046D0: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 0000000046D8: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 0000000046E0: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 0000000046E8: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 0000000046F0: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 0000000046F8: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 000000004700: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 000000004708: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 000000004710: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 000000004718: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 000000004720: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 000000004728: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 000000004730: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 000000004738: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000004740: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 000000004748: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000004750: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 000000004758: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000004760: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 000000004768: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000004770: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 000000004778: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000004780: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 000000004788: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 000000004790: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 000000004798: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 0000000047A0: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 0000000047A8: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 0000000047B0: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 0000000047B8: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 0000000047C0: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 0000000047C8: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 0000000047D0: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 0000000047D8: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 0000000047E0: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 0000000047E8: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 0000000047F0: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 0000000047F8: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 000000004800: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 000000004808: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 000000004810: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 000000004818: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 000000004820: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 000000004828: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 000000004830: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000004838: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000004840: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000004848: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000004850: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000004858: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 000000004860: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 000000004868: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 000000004870: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000004878: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 000000004880: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 000000004888: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 000000004890: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 000000004898: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 0000000048A0: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 0000000048A8: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 0000000048B0: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 0000000048B8: 7F320398
	v_mov_b32_e32 v151, v150                                   // 0000000048BC: 7F2E0396
	ds_read_b128 v[72:75], v231 offset:49152                   // 0000000048C0: D9FEC000 480000E7
	ds_read_b128 v[76:79], v231 offset:49168                   // 0000000048C8: D9FEC010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:53248                   // 0000000048D0: D9FED000 500000E7
	ds_read_b128 v[84:87], v231 offset:53264                   // 0000000048D8: D9FED010 540000E7
	s_barrier                                                  // 0000000048E0: BF8A0000
	s_setprio 1                                                // 0000000048E4: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 0000000048E8: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 0000000048F0: D3AD0044 020311C0
	ds_read_b128 v[144:147], v231 offset:57344                 // 0000000048F8: D9FEE000 900000E7
	ds_read_b128 v[148:151], v231 offset:57360                 // 000000004900: D9FEE010 940000E7
	ds_read_b128 v[156:159], v231 offset:61440                 // 000000004908: D9FEF000 9C0000E7
	ds_read_b128 v[160:163], v231 offset:61456                 // 000000004910: D9FEF010 A00000E7
	s_waitcnt lgkmcnt(4)                                       // 000000004918: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 00000000491C: D3AE0070 0203B948
	ds_read_b128 v[164:167], v232 offset:49152                 // 000000004924: D9FEC000 A40000E8
	ds_read_b128 v[168:171], v232 offset:49168                 // 00000000492C: D9FEC010 A80000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 000000004934: D3AE0060 0203B950
	ds_read_b128 v[172:175], v232 offset:53248                 // 00000000493C: D9FED000 AC0000E8
	ds_read_b128 v[176:179], v232 offset:53264                 // 000000004944: D9FED010 B00000E8
	s_waitcnt lgkmcnt(4)                                       // 00000000494C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[144:151], v[220:227], 0// 000000004950: D3AE0050 0203B990
	ds_read_b128 v[146:149], v232 offset:57344                 // 000000004958: D9FEE000 920000E8
	ds_read_b128 v[150:153], v232 offset:57360                 // 000000004960: D9FEE010 960000E8
	s_min_u32 s18, s20, s53                                    // 000000004968: 83923514
	s_add_u32 m0, s88, s34                                     // 00000000496C: 807C2258
	s_nop 0                                                    // 000000004970: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000004974: E05D1000 121500E9
	v_mul_f32_e32 v72, v154, v64                               // 00000000497C: 0A90819A
	v_add_f32_e32 v72, v249, v72                               // 000000004980: 029091F9
	v_mul_f32_e32 v73, v155, v68                               // 000000004984: 0A92899B
	v_add_f32_e32 v249, v72, v73                               // 000000004988: 03F29348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[156:163], v[220:227], 0// 00000000498C: D3AE0040 0203B99C
	ds_read_b128 v[154:157], v232 offset:61440                 // 000000004994: D9FEF000 9A0000E8
	ds_read_b128 v[158:161], v232 offset:61456                 // 00000000499C: D9FEF010 9E0000E8
	s_add_u32 m0, s88, s35                                     // 0000000049A4: 807C2358
	s_nop 0                                                    // 0000000049A8: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 0000000049AC: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 0000000049B4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[164:171], v[200:207], v[112:127]// 0000000049B8: D3AE0070 05C391A4
	ds_read_b64_tr_b8 v[162:163], v247                         // 0000000049C0: D9C40000 A20000F7
	ds_read_b64_tr_b8 v[164:165], v247 offset:1024             // 0000000049C8: D9C40400 A40000F7
	ds_read_b64_tr_b8 v[166:167], v247 offset:2048             // 0000000049D0: D9C40800 A60000F7
	ds_read_b64_tr_b8 v[168:169], v247 offset:3072             // 0000000049D8: D9C40C00 A80000F7
	s_min_u32 s18, s17, s53                                    // 0000000049E0: 83923511
	s_add_u32 m0, s88, s48                                     // 0000000049E4: 807C3058
	s_nop 0                                                    // 0000000049E8: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 0000000049EC: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[172:179], v[200:207], v[96:111]// 0000000049F4: D3AE0060 058391AC
	ds_read_b64_tr_b8 v[170:171], v247 offset:256              // 0000000049FC: D9C40100 AA0000F7
	ds_read_b64_tr_b8 v[172:173], v247 offset:1280             // 000000004A04: D9C40500 AC0000F7
	ds_read_b64_tr_b8 v[174:175], v247 offset:2304             // 000000004A0C: D9C40900 AE0000F7
	ds_read_b64_tr_b8 v[176:177], v247 offset:3328             // 000000004A14: D9C40D00 B00000F7
	s_add_u32 m0, s88, s12                                     // 000000004A1C: 807C0C58
	s_nop 0                                                    // 000000004A20: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000004A24: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 000000004A2C: 80142114
	s_add_u32 s17, s17, s33                                    // 000000004A30: 80112111
	v_max_f32_e32 v144, v112, v113                             // 000000004A34: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 000000004A38: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 000000004A40: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 000000004A48: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 000000004A50: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 000000004A58: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 000000004A60: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 000000004A68: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 000000004A70: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[146:153], v[200:207], v[80:95]// 000000004A74: D3AE0050 05439192
	ds_read_b64_tr_b8 v[178:179], v247 offset:512              // 000000004A7C: D9C40200 B20000F7
	ds_read_b64_tr_b8 v[180:181], v247 offset:1536             // 000000004A84: D9C40600 B40000F7
	ds_read_b64_tr_b8 v[182:183], v247 offset:2560             // 000000004A8C: D9C40A00 B60000F7
	ds_read_b64_tr_b8 v[184:185], v247 offset:3584             // 000000004A94: D9C40E00 B80000F7
	v_max_f32_e32 v145, v96, v97                               // 000000004A9C: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 000000004AA0: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 000000004AA8: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 000000004AB0: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 000000004AB8: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 000000004AC0: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 000000004AC8: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 000000004AD0: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[154:161], v[200:207], v[64:79]// 000000004AD8: D3AE0040 0503919A
	s_nop 3                                                    // 000000004AE0: BF800003
	v_max_f32_e32 v146, v80, v81                               // 000000004AE4: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 000000004AE8: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 000000004AF0: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 000000004AF8: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 000000004B00: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 000000004B08: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 000000004B10: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 000000004B18: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 000000004B20: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[162:169], v[128:135], v[48:63], v242, v250 op_sel_hi:[0,0,0]// 000000004B24: D3AC0000 0003F5F2 D3AE0830 04C301A2
	ds_read_b64_tr_b8 v[148:149], v247 offset:768              // 000000004B34: D9C40300 940000F7
	ds_read_b64_tr_b8 v[150:151], v247 offset:1792             // 000000004B3C: D9C40700 960000F7
	ds_read_b64_tr_b8 v[152:153], v247 offset:2816             // 000000004B44: D9C40B00 980000F7
	ds_read_b64_tr_b8 v[154:155], v247 offset:3840             // 000000004B4C: D9C40F00 9A0000F7
	ds_read_b64_tr_b8 v[156:157], v247 offset:4096             // 000000004B54: D9C41000 9C0000F7
	ds_read_b64_tr_b8 v[158:159], v247 offset:5120             // 000000004B5C: D9C41400 9E0000F7
	ds_read_b64_tr_b8 v[160:161], v247 offset:6144             // 000000004B64: D9C41800 A00000F7
	ds_read_b64_tr_b8 v[162:163], v247 offset:7168             // 000000004B6C: D9C41C00 A20000F7
	v_max_f32_e32 v147, v64, v65                               // 000000004B74: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 000000004B78: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 000000004B80: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 000000004B88: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 000000004B90: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 000000004B98: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 000000004BA0: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 000000004BA8: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[170:177], v[128:135], v[32:47], v242, v250 op_sel_hi:[0,0,0]// 000000004BB0: D3AC0000 0003F5F2 D3AE0820 048301AA
	v_max_f32_e32 v144, v144, v145                             // 000000004BC0: 17212390
	v_max_f32_e32 v146, v146, v147                             // 000000004BC4: 17252792
	v_mov_b32_e32 v145, v144                                   // 000000004BC8: 7F220390
	v_mov_b32_e32 v147, v146                                   // 000000004BCC: 7F260392
	s_nop 0                                                    // 000000004BD0: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 000000004BD4: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 000000004BD8: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 000000004BDC: 17212390
	v_max_f32_e32 v145, v146, v147                             // 000000004BE0: 17232792
	s_waitcnt lgkmcnt(4)                                       // 000000004BE4: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[178:185], v[128:135], v[16:31], v242, v250 op_sel_hi:[0,0,0]// 000000004BE8: D3AC0000 0003F5F2 D3AE0810 044301B2
	ds_read_b64_tr_b8 v[164:165], v247 offset:4352             // 000000004BF8: D9C41100 A40000F7
	ds_read_b64_tr_b8 v[166:167], v247 offset:5376             // 000000004C00: D9C41500 A60000F7
	ds_read_b64_tr_b8 v[168:169], v247 offset:6400             // 000000004C08: D9C41900 A80000F7
	ds_read_b64_tr_b8 v[170:171], v247 offset:7424             // 000000004C10: D9C41D00 AA0000F7
	ds_read_b64_tr_b8 v[172:173], v247 offset:4608             // 000000004C18: D9C41200 AC0000F7
	ds_read_b64_tr_b8 v[174:175], v247 offset:5632             // 000000004C20: D9C41600 AE0000F7
	ds_read_b64_tr_b8 v[176:177], v247 offset:6656             // 000000004C28: D9C41A00 B00000F7
	ds_read_b64_tr_b8 v[178:179], v247 offset:7680             // 000000004C30: D9C41E00 B20000F7
	v_max_f32_e32 v146, v144, v145                             // 000000004C38: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 000000004C3C: 0B2525EE
	v_max_f32_e32 v146, v251, v146                             // 000000004C40: 172525FB
	v_sub_f32_e32 v147, v146, v251                             // 000000004C44: 0527F792
	v_cmp_lt_f32_e32 vcc, s49, v147                            // 000000004C48: 7C832631
	s_cmp_lg_u64 vcc, 0                                        // 000000004C4C: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 000000004C50: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 000000004C54: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[148:155], v[128:135], v[0:15], v242, v250 op_sel_hi:[0,0,0]// 000000004C58: D3AC0000 0003F5F2 D3AE0800 04030194
	v_cndmask_b32_e64 v148, v251, v146, s[18:19]               // 000000004C68: D1000094 004B25FB
	v_fma_f32 v128, v144, v238, -v148                          // 000000004C70: D1CB0080 8653DD90
	v_floor_f32_e32 v128, v128                                 // 000000004C78: 7F003F80
	v_med3_f32 v128, v128, s99, 0                              // 000000004C7C: D1D60080 0200C780
	v_cvt_i32_f32_e32 v129, v128                               // 000000004C84: 7F021180
	v_add_u32_e32 v250, 0x7f, v129                             // 000000004C88: 69F502FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v250                           // 000000004C90: 2535F497
	v_fma_f32 v129, v145, v238, -v148                          // 000000004C94: D1CB0081 8653DD91
	s_waitcnt lgkmcnt(4)                                       // 000000004C9C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v252 op_sel_hi:[0,0,0]// 000000004CA0: D3AC0000 0003F9F2 D3AE0830 04C3119C
	ds_read_b64_tr_b8 v[156:157], v247 offset:4864             // 000000004CB0: D9C41300 9C0000F7
	ds_read_b64_tr_b8 v[158:159], v247 offset:5888             // 000000004CB8: D9C41700 9E0000F7
	ds_read_b64_tr_b8 v[160:161], v247 offset:6912             // 000000004CC0: D9C41B00 A00000F7
	ds_read_b64_tr_b8 v[162:163], v247 offset:7936             // 000000004CC8: D9C41F00 A20000F7
	v_floor_f32_e32 v129, v129                                 // 000000004CD0: 7F023F81
	v_med3_f32 v129, v129, s99, 0                              // 000000004CD4: D1D60081 0200C781
	v_cvt_i32_f32_e32 v130, v129                               // 000000004CDC: 7F041181
	v_add_u32_e32 v149, 0x7f, v130                             // 000000004CE0: 692B04FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v149                           // 000000004CE8: 25372A97
	v_mov_b32_e32 v130, s50                                    // 000000004CEC: 7F040232
	v_fma_f32 v130, v148, s92, v130                            // 000000004CF0: D1CB0082 0608B994
	v_fma_f32 v152, v128, s92, v130                            // 000000004CF8: D1CB0098 0608B980
	v_fma_f32 v150, v129, s92, v130                            // 000000004D00: D1CB0096 0608B981
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v252 op_sel_hi:[0,0,0]// 000000004D08: D3AC0000 0003F9F2 D3AE0820 048311A4
	s_waitcnt lgkmcnt(0)                                       // 000000004D18: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v252 op_sel_hi:[0,0,0]// 000000004D1C: D3AC0000 0003F9F2 D3AE0810 044311AC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v252 op_sel_hi:[0,0,0]// 000000004D2C: D3AC0000 0003F9F2 D3AE0800 0403119C
	s_cmp_eq_u32 s21, 0                                        // 000000004D3C: BF068015
	s_cbranch_scc1 68                                          // 000000004D40: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3354>
	v_sub_f32_e32 v128, v251, v148                             // 000000004D44: 050129FB
	v_exp_f32_e32 v128, v128                                   // 000000004D48: 7F004180
	s_nop 0                                                    // 000000004D4C: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 000000004D50: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 000000004D58: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000004D60: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000004D68: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000004D70: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000004D78: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000004D80: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000004D88: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000004D90: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000004D98: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000004DA0: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000004DA8: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000004DB0: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000004DB8: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000004DC0: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000004DC8: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000004DD0: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000004DD8: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000004DE0: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000004DE8: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000004DF0: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000004DF8: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000004E00: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 000000004E08: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 000000004E10: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 000000004E18: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 000000004E20: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 000000004E28: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 000000004E30: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 000000004E38: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 000000004E40: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 000000004E48: D3B14000 10020180
	v_mul_f32_e32 v249, v249, v128                             // 000000004E50: 0BF301F9
	s_waitcnt vmcnt(4)                                         // 000000004E54: BF8C0F74
	s_barrier                                                  // 000000004E58: BF8A0000
	s_add_u32 s42, s42, 1                                      // 000000004E5C: 802A812A
	s_add_u32 s18, s42, 1                                      // 000000004E60: 8012812A
	s_cmp_ge_u32 s18, s79                                      // 000000004E64: BF094F12
	s_cbranch_scc1 620                                         // 000000004E68: BF85026C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d1c>
	s_setprio 0                                                // 000000004E6C: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000004E70: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 000000004E78: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 000000004E80: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 000000004E88: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 000000004E90: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 000000004E98: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 000000004EA0: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 000000004EA8: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 000000004EB0: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 000000004EB8: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 000000004EC0: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 000000004EC8: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 000000004ED0: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 000000004ED8: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 000000004EE0: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 000000004EE8: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 000000004EF0: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000004EF8: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 000000004F00: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000004F08: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 000000004F10: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000004F18: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 000000004F20: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000004F28: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 000000004F30: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000004F38: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000004F40: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 000000004F48: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000004F50: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 000000004F58: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 000000004F60: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 000000004F68: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 000000004F70: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 000000004F78: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 000000004F80: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 000000004F88: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 000000004F90: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 000000004F98: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 000000004FA0: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 000000004FA8: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 000000004FB0: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 000000004FB8: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 000000004FC0: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 000000004FC8: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 000000004FD0: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 000000004FD8: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 000000004FE0: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 000000004FE8: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 000000004FF0: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000004FF8: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 000000005000: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000005008: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 000000005010: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000005018: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 000000005020: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000005028: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 000000005030: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000005038: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 000000005040: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 000000005048: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 000000005050: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 000000005058: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 000000005060: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 000000005068: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 000000005070: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 000000005078: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 000000005080: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 000000005088: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 000000005090: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 000000005098: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 0000000050A0: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 0000000050A8: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 0000000050B0: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 0000000050B8: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 0000000050C0: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 0000000050C8: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 0000000050D0: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 0000000050D8: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 0000000050E0: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 0000000050E8: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 0000000050F0: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 0000000050F8: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 000000005100: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000005108: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 000000005110: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000005118: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 000000005120: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000005128: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 000000005130: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000005138: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 000000005140: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 000000005148: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 000000005150: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 000000005158: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 000000005160: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 000000005168: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 000000005170: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000005178: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 000000005180: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 000000005188: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 000000005190: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 000000005198: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 0000000051A0: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 0000000051A8: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 0000000051B0: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 0000000051B8: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 0000000051C0: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 0000000051C8: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 0000000051D0: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 0000000051D8: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 0000000051E0: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 0000000051E8: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 0000000051F0: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 0000000051F8: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000005200: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000005208: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000005210: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 000000005218: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 000000005220: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 000000005228: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000005230: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 000000005238: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 000000005240: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 000000005248: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 000000005250: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 000000005258: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 000000005260: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 000000005268: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 000000005270: 7F320398
	v_mov_b32_e32 v151, v150                                   // 000000005274: 7F2E0396
	ds_read_b128 v[72:75], v231                                // 000000005278: D9FE0000 480000E7
	ds_read_b128 v[76:79], v231 offset:16                      // 000000005280: D9FE0010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:4096                    // 000000005288: D9FE1000 500000E7
	ds_read_b128 v[84:87], v231 offset:4112                    // 000000005290: D9FE1010 540000E7
	s_barrier                                                  // 000000005298: BF8A0000
	s_setprio 1                                                // 00000000529C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 0000000052A0: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 0000000052A8: D3AD0044 020311C0
	ds_read_b128 v[156:159], v231 offset:8192                  // 0000000052B0: D9FE2000 9C0000E7
	ds_read_b128 v[160:163], v231 offset:8208                  // 0000000052B8: D9FE2010 A00000E7
	ds_read_b128 v[164:167], v231 offset:12288                 // 0000000052C0: D9FE3000 A40000E7
	ds_read_b128 v[168:171], v231 offset:12304                 // 0000000052C8: D9FE3010 A80000E7
	s_waitcnt lgkmcnt(4)                                       // 0000000052D0: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 0000000052D4: D3AE0070 0203B948
	ds_read_b128 v[172:175], v232                              // 0000000052DC: D9FE0000 AC0000E8
	ds_read_b128 v[176:179], v232 offset:16                    // 0000000052E4: D9FE0010 B00000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 0000000052EC: D3AE0060 0203B950
	ds_read_b128 v[180:183], v232 offset:4096                  // 0000000052F4: D9FE1000 B40000E8
	ds_read_b128 v[184:187], v232 offset:4112                  // 0000000052FC: D9FE1010 B80000E8
	s_waitcnt lgkmcnt(4)                                       // 000000005304: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[156:163], v[220:227], 0// 000000005308: D3AE0050 0203B99C
	ds_read_b128 v[156:159], v232 offset:8192                  // 000000005310: D9FE2000 9C0000E8
	ds_read_b128 v[160:163], v232 offset:8208                  // 000000005318: D9FE2010 A00000E8
	s_min_u32 s18, s20, s53                                    // 000000005320: 83923514
	s_add_u32 m0, s88, s13                                     // 000000005324: 807C0D58
	s_nop 0                                                    // 000000005328: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 00000000532C: E05D1000 121500E9
	v_mul_f32_e32 v72, v154, v64                               // 000000005334: 0A90819A
	v_add_f32_e32 v72, v249, v72                               // 000000005338: 029091F9
	v_mul_f32_e32 v73, v155, v68                               // 00000000533C: 0A92899B
	v_add_f32_e32 v249, v72, v73                               // 000000005340: 03F29348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[164:171], v[220:227], 0// 000000005344: D3AE0040 0203B9A4
	ds_read_b128 v[164:167], v232 offset:12288                 // 00000000534C: D9FE3000 A40000E8
	ds_read_b128 v[168:171], v232 offset:12304                 // 000000005354: D9FE3010 A80000E8
	s_add_u32 m0, s88, s6                                      // 00000000535C: 807C0658
	s_nop 0                                                    // 000000005360: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 000000005364: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 00000000536C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[172:179], v[200:207], v[112:127]// 000000005370: D3AE0070 05C391AC
	ds_read_b64_tr_b8 v[172:173], v248                         // 000000005378: D9C40000 AC0000F8
	ds_read_b64_tr_b8 v[174:175], v248 offset:1024             // 000000005380: D9C40400 AE0000F8
	ds_read_b64_tr_b8 v[176:177], v248 offset:2048             // 000000005388: D9C40800 B00000F8
	ds_read_b64_tr_b8 v[178:179], v248 offset:3072             // 000000005390: D9C40C00 B20000F8
	s_min_u32 s18, s17, s53                                    // 000000005398: 83923511
	s_add_u32 m0, s88, s94                                     // 00000000539C: 807C5E58
	s_nop 0                                                    // 0000000053A0: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 0000000053A4: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[180:187], v[200:207], v[96:111]// 0000000053AC: D3AE0060 058391B4
	ds_read_b64_tr_b8 v[180:181], v248 offset:256              // 0000000053B4: D9C40100 B40000F8
	ds_read_b64_tr_b8 v[182:183], v248 offset:1280             // 0000000053BC: D9C40500 B60000F8
	ds_read_b64_tr_b8 v[184:185], v248 offset:2304             // 0000000053C4: D9C40900 B80000F8
	ds_read_b64_tr_b8 v[186:187], v248 offset:3328             // 0000000053CC: D9C40D00 BA0000F8
	s_add_u32 m0, s88, s76                                     // 0000000053D4: 807C4C58
	s_nop 0                                                    // 0000000053D8: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 0000000053DC: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 0000000053E4: 80142114
	s_add_u32 s17, s17, s33                                    // 0000000053E8: 80112111
	v_max_f32_e32 v144, v112, v113                             // 0000000053EC: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 0000000053F0: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 0000000053F8: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 000000005400: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 000000005408: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 000000005410: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 000000005418: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 000000005420: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 000000005428: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[156:163], v[200:207], v[80:95]// 00000000542C: D3AE0050 0543919C
	ds_read_b64_tr_b8 v[150:151], v248 offset:512              // 000000005434: D9C40200 960000F8
	ds_read_b64_tr_b8 v[152:153], v248 offset:1536             // 00000000543C: D9C40600 980000F8
	ds_read_b64_tr_b8 v[154:155], v248 offset:2560             // 000000005444: D9C40A00 9A0000F8
	ds_read_b64_tr_b8 v[156:157], v248 offset:3584             // 00000000544C: D9C40E00 9C0000F8
	v_max_f32_e32 v145, v96, v97                               // 000000005454: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 000000005458: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 000000005460: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 000000005468: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 000000005470: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 000000005478: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 000000005480: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 000000005488: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[164:171], v[200:207], v[64:79]// 000000005490: D3AE0040 050391A4
	s_nop 3                                                    // 000000005498: BF800003
	v_max_f32_e32 v146, v80, v81                               // 00000000549C: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 0000000054A0: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 0000000054A8: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 0000000054B0: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 0000000054B8: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 0000000054C0: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 0000000054C8: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 0000000054D0: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 0000000054D8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[172:179], v[128:135], v[48:63], v242, v250 op_sel_hi:[0,0,0]// 0000000054DC: D3AC0000 0003F5F2 D3AE0830 04C301AC
	ds_read_b64_tr_b8 v[158:159], v248 offset:768              // 0000000054EC: D9C40300 9E0000F8
	ds_read_b64_tr_b8 v[160:161], v248 offset:1792             // 0000000054F4: D9C40700 A00000F8
	ds_read_b64_tr_b8 v[162:163], v248 offset:2816             // 0000000054FC: D9C40B00 A20000F8
	ds_read_b64_tr_b8 v[164:165], v248 offset:3840             // 000000005504: D9C40F00 A40000F8
	ds_read_b64_tr_b8 v[166:167], v248 offset:4096             // 00000000550C: D9C41000 A60000F8
	ds_read_b64_tr_b8 v[168:169], v248 offset:5120             // 000000005514: D9C41400 A80000F8
	ds_read_b64_tr_b8 v[170:171], v248 offset:6144             // 00000000551C: D9C41800 AA0000F8
	ds_read_b64_tr_b8 v[172:173], v248 offset:7168             // 000000005524: D9C41C00 AC0000F8
	v_max_f32_e32 v147, v64, v65                               // 00000000552C: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 000000005530: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 000000005538: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 000000005540: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 000000005548: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 000000005550: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 000000005558: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 000000005560: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[180:187], v[128:135], v[32:47], v242, v250 op_sel_hi:[0,0,0]// 000000005568: D3AC0000 0003F5F2 D3AE0820 048301B4
	v_max_f32_e32 v144, v144, v145                             // 000000005578: 17212390
	v_max_f32_e32 v146, v146, v147                             // 00000000557C: 17252792
	v_mov_b32_e32 v145, v144                                   // 000000005580: 7F220390
	v_mov_b32_e32 v147, v146                                   // 000000005584: 7F260392
	s_nop 0                                                    // 000000005588: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 00000000558C: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 000000005590: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 000000005594: 17212390
	v_max_f32_e32 v145, v146, v147                             // 000000005598: 17232792
	s_waitcnt lgkmcnt(4)                                       // 00000000559C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[150:157], v[128:135], v[16:31], v242, v250 op_sel_hi:[0,0,0]// 0000000055A0: D3AC0000 0003F5F2 D3AE0810 04430196
	ds_read_b64_tr_b8 v[174:175], v248 offset:4352             // 0000000055B0: D9C41100 AE0000F8
	ds_read_b64_tr_b8 v[176:177], v248 offset:5376             // 0000000055B8: D9C41500 B00000F8
	ds_read_b64_tr_b8 v[178:179], v248 offset:6400             // 0000000055C0: D9C41900 B20000F8
	ds_read_b64_tr_b8 v[180:181], v248 offset:7424             // 0000000055C8: D9C41D00 B40000F8
	ds_read_b64_tr_b8 v[182:183], v248 offset:4608             // 0000000055D0: D9C41200 B60000F8
	ds_read_b64_tr_b8 v[184:185], v248 offset:5632             // 0000000055D8: D9C41600 B80000F8
	ds_read_b64_tr_b8 v[186:187], v248 offset:6656             // 0000000055E0: D9C41A00 BA0000F8
	ds_read_b64_tr_b8 v[188:189], v248 offset:7680             // 0000000055E8: D9C41E00 BC0000F8
	v_max_f32_e32 v146, v144, v145                             // 0000000055F0: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 0000000055F4: 0B2525EE
	v_max_f32_e32 v146, v148, v146                             // 0000000055F8: 17252594
	v_sub_f32_e32 v147, v146, v148                             // 0000000055FC: 05272992
	v_cmp_lt_f32_e32 vcc, s49, v147                            // 000000005600: 7C832631
	s_cmp_lg_u64 vcc, 0                                        // 000000005604: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 000000005608: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000560C: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[158:165], v[128:135], v[0:15], v242, v250 op_sel_hi:[0,0,0]// 000000005610: D3AC0000 0003F5F2 D3AE0800 0403019E
	v_cndmask_b32_e64 v251, v148, v146, s[18:19]               // 000000005620: D10000FB 004B2594
	v_fma_f32 v128, v144, v238, -v251                          // 000000005628: D1CB0080 87EFDD90
	v_floor_f32_e32 v128, v128                                 // 000000005630: 7F003F80
	v_med3_f32 v128, v128, s99, 0                              // 000000005634: D1D60080 0200C780
	v_cvt_i32_f32_e32 v129, v128                               // 00000000563C: 7F021180
	v_add_u32_e32 v250, 0x7f, v129                             // 000000005640: 69F502FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v250                           // 000000005648: 2535F497
	v_fma_f32 v129, v145, v238, -v251                          // 00000000564C: D1CB0081 87EFDD91
	s_waitcnt lgkmcnt(4)                                       // 000000005654: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[166:173], v[136:143], v[48:63], v242, v149 op_sel_hi:[0,0,0]// 000000005658: D3AC0000 00032BF2 D3AE0830 04C311A6
	ds_read_b64_tr_b8 v[156:157], v248 offset:4864             // 000000005668: D9C41300 9C0000F8
	ds_read_b64_tr_b8 v[158:159], v248 offset:5888             // 000000005670: D9C41700 9E0000F8
	ds_read_b64_tr_b8 v[160:161], v248 offset:6912             // 000000005678: D9C41B00 A00000F8
	ds_read_b64_tr_b8 v[162:163], v248 offset:7936             // 000000005680: D9C41F00 A20000F8
	v_floor_f32_e32 v129, v129                                 // 000000005688: 7F023F81
	v_med3_f32 v129, v129, s99, 0                              // 00000000568C: D1D60081 0200C781
	v_cvt_i32_f32_e32 v130, v129                               // 000000005694: 7F041181
	v_add_u32_e32 v252, 0x7f, v130                             // 000000005698: 69F904FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v252                           // 0000000056A0: 2537F897
	v_mov_b32_e32 v130, s50                                    // 0000000056A4: 7F040232
	v_fma_f32 v130, v251, s92, v130                            // 0000000056A8: D1CB0082 0608B9FB
	v_fma_f32 v152, v128, s92, v130                            // 0000000056B0: D1CB0098 0608B980
	v_fma_f32 v150, v129, s92, v130                            // 0000000056B8: D1CB0096 0608B981
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[174:181], v[136:143], v[32:47], v242, v149 op_sel_hi:[0,0,0]// 0000000056C0: D3AC0000 00032BF2 D3AE0820 048311AE
	s_waitcnt lgkmcnt(0)                                       // 0000000056D0: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[182:189], v[136:143], v[16:31], v242, v149 op_sel_hi:[0,0,0]// 0000000056D4: D3AC0000 00032BF2 D3AE0810 044311B6
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v149 op_sel_hi:[0,0,0]// 0000000056E4: D3AC0000 00032BF2 D3AE0800 0403119C
	s_cmp_eq_u32 s21, 0                                        // 0000000056F4: BF068015
	s_cbranch_scc1 68                                          // 0000000056F8: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d0c>
	v_sub_f32_e32 v128, v148, v251                             // 0000000056FC: 0501F794
	v_exp_f32_e32 v128, v128                                   // 000000005700: 7F004180
	s_nop 0                                                    // 000000005704: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 000000005708: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 000000005710: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000005718: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000005720: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000005728: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000005730: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000005738: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000005740: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000005748: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000005750: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000005758: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000005760: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000005768: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000005770: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000005778: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000005780: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000005788: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000005790: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000005798: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 0000000057A0: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 0000000057A8: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 0000000057B0: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 0000000057B8: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 0000000057C0: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 0000000057C8: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 0000000057D0: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 0000000057D8: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 0000000057E0: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 0000000057E8: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 0000000057F0: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 0000000057F8: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 000000005800: D3B14000 10020180
	v_mul_f32_e32 v249, v249, v128                             // 000000005808: 0BF301F9
	s_waitcnt vmcnt(4)                                         // 00000000580C: BF8C0F74
	s_barrier                                                  // 000000005810: BF8A0000
	s_add_u32 s42, s42, 1                                      // 000000005814: 802A812A
	s_branch 63047                                             // 000000005818: BF82F647 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1638>
	v_mov_b32_e32 v252, v149                                   // 00000000581C: 7FF80395
	v_mov_b32_e32 v251, v148                                   // 000000005820: 7FF60394
	s_add_u32 s17, s42, s78                                    // 000000005824: 80114E2A
	s_bitcmp1_b32 s17, 0                                       // 000000005828: BF0D8011
	s_cbranch_scc1 1525                                        // 00000000582C: BF8505F5 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5504>
	s_branch 5                                                 // 000000005830: BF820005 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d48>
	v_mov_b32_e32 v252, v149                                   // 000000005834: 7FF80395
	v_mov_b32_e32 v251, v148                                   // 000000005838: 7FF60394
	s_add_u32 s17, s42, s78                                    // 00000000583C: 80114E2A
	s_bitcmp1_b32 s17, 0                                       // 000000005840: BF0D8011
	s_cbranch_scc1 1519                                        // 000000005844: BF8505EF <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5504>
	s_add_u32 s17, s42, 1                                      // 000000005848: 8011812A
	s_cmp_ge_u32 s17, s97                                      // 00000000584C: BF096111
	s_cbranch_scc1 3036                                        // 000000005850: BF850BDC <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6cc4>
	s_add_u32 s19, s42, s78                                    // 000000005854: 80134E2A
	s_and_b32 s17, s19, 3                                      // 000000005858: 86118313
	s_lshl_b32 s18, s17, 14                                    // 00000000585C: 8E128E11
	v_add_u32_e32 v253, s18, v244                              // 000000005860: 69FBE812
	s_cmp_ge_u32 s42, s79                                      // 000000005864: BF094F2A
	s_cbranch_scc1 1067                                        // 000000005868: BF85042B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4e18>
	s_setprio 0                                                // 00000000586C: BF8F0000
	v_fma_f32 v96, v96, v239, v152                             // 000000005870: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 000000005878: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 000000005880: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 000000005888: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 000000005890: D1CB0068 0663DF68
	v_fma_f32 v80, v80, v239, v150                             // 000000005898: D1CB0050 065BDF50
	v_fma_f32 v64, v64, v239, v150                             // 0000000058A0: D1CB0040 065BDF40
	v_fma_f32 v84, v84, v239, v150                             // 0000000058A8: D1CB0054 065BDF54
	v_fma_f32 v68, v68, v239, v150                             // 0000000058B0: D1CB0044 065BDF44
	v_fma_f32 v72, v72, v239, v150                             // 0000000058B8: D1CB0048 065BDF48
	v_fma_f32 v92, v92, v239, v150                             // 0000000058C0: D1CB005C 065BDF5C
	s_add_u32 s19, s19, 1                                      // 0000000058C8: 80138113
	v_fma_f32 v97, v97, v239, v152                             // 0000000058CC: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 0000000058D4: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 0000000058DC: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 0000000058E4: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 0000000058EC: D1CB0069 0663DF69
	v_fma_f32 v81, v81, v239, v150                             // 0000000058F4: D1CB0051 065BDF51
	v_fma_f32 v65, v65, v239, v150                             // 0000000058FC: D1CB0041 065BDF41
	v_fma_f32 v85, v85, v239, v150                             // 000000005904: D1CB0055 065BDF55
	v_fma_f32 v69, v69, v239, v150                             // 00000000590C: D1CB0045 065BDF45
	v_fma_f32 v88, v88, v239, v150                             // 000000005914: D1CB0058 065BDF58
	v_fma_f32 v73, v73, v239, v150                             // 00000000591C: D1CB0049 065BDF49
	v_fma_f32 v93, v93, v239, v150                             // 000000005924: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 00000000592C: D1DD0060 02010160
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000005934: D1DD0074 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 00000000593C: D1DD0064 02010164
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000005944: D1DD0078 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 00000000594C: D1DD0068 02010168
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000005954: D1DD0050 02010150
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 00000000595C: D1DD0040 02010140
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000005964: D1DD0054 02010154
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 00000000596C: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000005974: D1DD0048 02010148
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 00000000597C: D1DD005C 0201015C
	s_and_b32 s19, s19, 3                                      // 000000005984: 86138313
	v_fma_f32 v98, v98, v239, v152                             // 000000005988: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 000000005990: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 000000005998: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 0000000059A0: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 0000000059A8: D1CB006A 0663DF6A
	v_fma_f32 v82, v82, v239, v150                             // 0000000059B0: D1CB0052 065BDF52
	v_fma_f32 v66, v66, v239, v150                             // 0000000059B8: D1CB0042 065BDF42
	v_fma_f32 v86, v86, v239, v150                             // 0000000059C0: D1CB0056 065BDF56
	v_fma_f32 v70, v70, v239, v150                             // 0000000059C8: D1CB0046 065BDF46
	v_fma_f32 v89, v89, v239, v150                             // 0000000059D0: D1CB0059 065BDF59
	v_fma_f32 v94, v94, v239, v150                             // 0000000059D8: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 0000000059E0: D1DD0058 02010158
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 0000000059E8: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v116                         // 0000000059F0: D1DD0061 05D10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 0000000059F8: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v120                        // 000000005A00: D1DD0065 05E10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 000000005A08: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000005A10: D1DD0050 05410351
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000005A18: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 000000005A20: D1DD0041 05510355
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 000000005A28: D1DD0044 05110345
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 000000005A30: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v93, 1, v92                           // 000000005A38: D1DD0049 0571035D
	s_lshl_b32 s19, s19, 14                                    // 000000005A40: 8E138E13
	v_fma_f32 v99, v99, v239, v152                             // 000000005A44: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 000000005A4C: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 000000005A54: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 000000005A5C: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 000000005A64: D1CB006B 0663DF6B
	v_fma_f32 v83, v83, v239, v150                             // 000000005A6C: D1CB0053 065BDF53
	v_fma_f32 v87, v87, v239, v150                             // 000000005A74: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 000000005A7C: D1DD0045 05610359
	v_cvt_pk_u8_f32 v81, v98, 2, v96                           // 000000005A84: D1DD0051 05810562
	v_cvt_pk_u8_f32 v84, v118, 2, v97                          // 000000005A8C: D1DD0054 05850576
	v_cvt_pk_u8_f32 v85, v102, 2, v100                         // 000000005A94: D1DD0055 05910566
	v_cvt_pk_u8_f32 v88, v122, 2, v101                         // 000000005A9C: D1DD0058 0595057A
	v_cvt_pk_u8_f32 v89, v106, 2, v104                         // 000000005AA4: D1DD0059 05A1056A
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000005AAC: D1DD0050 05410552
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000005AB4: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 000000005ABC: D1DD0041 05050556
	v_cvt_pk_u8_f32 v66, v70, 2, v68                           // 000000005AC4: D1DD0042 05110546
	v_cvt_pk_u8_f32 v70, v94, 2, v73                           // 000000005ACC: D1DD0046 0525055E
	v_or_b32_e32 v73, s19, v231                                // 000000005AD4: 2893CE13
	v_cvt_pk_u8_f32 v212, v99, 3, v81                          // 000000005AD8: D1DD00D4 05450763
	v_cvt_pk_u8_f32 v209, v119, 3, v84                         // 000000005AE0: D1DD00D1 05510777
	v_cvt_pk_u8_f32 v213, v103, 3, v85                         // 000000005AE8: D1DD00D5 05550767
	v_cvt_pk_u8_f32 v210, v123, 3, v88                         // 000000005AF0: D1DD00D2 0561077B
	v_cvt_pk_u8_f32 v214, v107, 3, v89                         // 000000005AF8: D1DD00D6 0565076B
	v_cvt_pk_u8_f32 v88, v83, 3, v80                           // 000000005B00: D1DD0058 05410753
	v_cvt_pk_u8_f32 v89, v87, 3, v65                           // 000000005B08: D1DD0059 05050757
	ds_read_b128 v[80:83], v73                                 // 000000005B10: D9FE0000 50000049
	ds_read_b128 v[84:87], v73 offset:16                       // 000000005B18: D9FE0010 54000049
	ds_read_b128 v[96:99], v73 offset:4096                     // 000000005B20: D9FE1000 60000049
	ds_read_b128 v[100:103], v73 offset:4112                   // 000000005B28: D9FE1010 64000049
	v_fma_f32 v112, v112, v239, v152                           // 000000005B30: D1CB0070 0663DF70
	v_fma_f32 v124, v124, v239, v152                           // 000000005B38: D1CB007C 0663DF7C
	v_fma_f32 v108, v108, v239, v152                           // 000000005B40: D1CB006C 0663DF6C
	v_fma_f32 v113, v113, v239, v152                           // 000000005B48: D1CB0071 0663DF71
	v_fma_f32 v125, v125, v239, v152                           // 000000005B50: D1CB007D 0663DF7D
	v_fma_f32 v109, v109, v239, v152                           // 000000005B58: D1CB006D 0663DF6D
	v_fma_f32 v76, v76, v239, v150                             // 000000005B60: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000005B68: D1DD0070 02010170
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000005B70: D1DD007C 0201017C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000005B78: D1DD006C 0201016C
	v_fma_f32 v114, v114, v239, v152                           // 000000005B80: D1CB0072 0663DF72
	v_fma_f32 v126, v126, v239, v152                           // 000000005B88: D1CB007E 0663DF7E
	v_fma_f32 v110, v110, v239, v152                           // 000000005B90: D1CB006E 0663DF6E
	v_fma_f32 v77, v77, v239, v150                             // 000000005B98: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000005BA0: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000005BA8: D1DD0070 05C10371
	v_cvt_pk_u8_f32 v105, v125, 1, v124                        // 000000005BB0: D1DD0069 05F1037D
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 000000005BB8: D1DD006C 05B1036D
	v_fma_f32 v115, v115, v239, v152                           // 000000005BC0: D1CB0073 0663DF73
	v_fma_f32 v127, v127, v239, v152                           // 000000005BC8: D1CB007F 0663DF7F
	v_fma_f32 v111, v111, v239, v152                           // 000000005BD0: D1CB006F 0663DF6F
	v_fma_f32 v90, v90, v239, v150                             // 000000005BD8: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 000000005BE0: D1CB004A 065BDF4A
	v_fma_f32 v78, v78, v239, v150                             // 000000005BE8: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v76, v77, 1, v76                           // 000000005BF0: D1DD004C 0531034D
	v_cvt_pk_u8_f32 v77, v114, 2, v112                         // 000000005BF8: D1DD004D 05C10572
	v_cvt_pk_u8_f32 v92, v126, 2, v105                         // 000000005C00: D1DD005C 05A5057E
	v_cvt_pk_u8_f32 v93, v110, 2, v108                         // 000000005C08: D1DD005D 05B1056E
	v_fma_f32 v67, v67, v239, v150                             // 000000005C10: D1CB0043 065BDF43
	v_fma_f32 v71, v71, v239, v150                             // 000000005C18: D1CB0047 065BDF47
	v_fma_f32 v91, v91, v239, v150                             // 000000005C20: D1CB005B 065BDF5B
	v_fma_f32 v75, v75, v239, v150                             // 000000005C28: D1CB004B 065BDF4B
	v_fma_f32 v95, v95, v239, v150                             // 000000005C30: D1CB005F 065BDF5F
	v_fma_f32 v79, v79, v239, v150                             // 000000005C38: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v68, v90, 2, v69                           // 000000005C40: D1DD0044 0515055A
	v_cvt_pk_u8_f32 v69, v74, 2, v72                           // 000000005C48: D1DD0045 0521054A
	v_cvt_pk_u8_f32 v72, v78, 2, v76                           // 000000005C50: D1DD0048 0531054E
	v_cvt_pk_u8_f32 v208, v115, 3, v77                         // 000000005C58: D1DD00D0 05350773
	v_cvt_pk_u8_f32 v211, v127, 3, v92                         // 000000005C60: D1DD00D3 0571077F
	v_cvt_pk_u8_f32 v215, v111, 3, v93                         // 000000005C68: D1DD00D7 0575076F
	v_cvt_pk_u8_f32 v92, v67, 3, v64                           // 000000005C70: D1DD005C 05010743
	v_cvt_pk_u8_f32 v93, v71, 3, v66                           // 000000005C78: D1DD005D 05090747
	v_cvt_pk_u8_f32 v90, v91, 3, v68                           // 000000005C80: D1DD005A 0511075B
	v_cvt_pk_u8_f32 v94, v75, 3, v69                           // 000000005C88: D1DD005E 0515074B
	v_cvt_pk_u8_f32 v91, v95, 3, v70                           // 000000005C90: D1DD005B 0519075F
	v_cvt_pk_u8_f32 v95, v79, 3, v72                           // 000000005C98: D1DD005F 0521074F
	s_barrier                                                  // 000000005CA0: BF8A0000
	s_setprio 1                                                // 000000005CA4: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[208:215], 0// 000000005CA8: D3AD0040 0203A1C0
	scratch_store_dwordx4 off, v[88:91], off                   // 000000005CB0: DC7C4000 007F5800
	s_nop 0                                                    // 000000005CB8: BF800000
	scratch_store_dwordx4 off, v[92:95], off offset:16         // 000000005CBC: DC7C4010 007F5C00
	v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[192:199], v[88:95], 0// 000000005CC4: D3AD0042 0202B1C0
	s_nop 3                                                    // 000000005CCC: BF800003
	v_mul_f32_e32 v64, v154, v64                               // 000000005CD0: 0A80819A
	v_add_f32_e32 v64, v249, v64                               // 000000005CD4: 028081F9
	s_nop 5                                                    // 000000005CD8: BF800005
	v_mul_f32_e32 v65, v155, v66                               // 000000005CDC: 0A82859B
	v_add_f32_e32 v249, v64, v65                               // 000000005CE0: 03F28340
	ds_read_b128 v[88:91], v73 offset:8192                     // 000000005CE4: D9FE2000 58000049
	ds_read_b128 v[92:95], v73 offset:8208                     // 000000005CEC: D9FE2010 5C000049
	ds_read_b128 v[104:107], v73 offset:12288                  // 000000005CF4: D9FE3000 68000049
	ds_read_b128 v[108:111], v73 offset:12304                  // 000000005CFC: D9FE3010 6C000049
	s_waitcnt lgkmcnt(4)                                       // 000000005D04: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[80:87], v[220:227], 0// 000000005D08: D3AE00B0 0203B950
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[96:103], v[220:227], 0// 000000005D10: D3AE00A0 0203B960
	v_or_b32_e32 v64, s19, v232                                // 000000005D18: 2881D013
	ds_read_b128 v[66:69], v64                                 // 000000005D1C: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 000000005D24: D9FE0010 46000040
	ds_read_b128 v[74:77], v64 offset:4096                     // 000000005D2C: D9FE1000 4A000040
	ds_read_b128 v[78:81], v64 offset:4112                     // 000000005D34: D9FE1010 4E000040
	s_waitcnt lgkmcnt(4)                                       // 000000005D3C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[88:95], v[220:227], 0// 000000005D40: D3AE0090 0203B958
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[104:111], v[220:227], 0// 000000005D48: D3AE0080 0203B968
	ds_read_b128 v[82:85], v64 offset:8192                     // 000000005D50: D9FE2000 52000040
	ds_read_b128 v[86:89], v64 offset:8208                     // 000000005D58: D9FE2010 56000040
	ds_read_b128 v[112:115], v64 offset:12288                  // 000000005D60: D9FE3000 70000040
	ds_read_b128 v[116:119], v64 offset:12304                  // 000000005D68: D9FE3010 74000040
	s_add_u32 s19, s42, 4                                      // 000000005D70: 8013842A
	s_cmp_ge_u32 s19, s97                                      // 000000005D74: BF096113
	s_cbranch_scc1 12                                          // 000000005D78: BF85000C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x42ac>
	s_add_u32 s18, s18, s88                                    // 000000005D7C: 80125812
	s_mul_i32 s19, s19, s8                                     // 000000005D80: 92130813
	s_lshl_b32 s19, s19, 7                                     // 000000005D84: 8E138713
	s_mov_b32 m0, s18                                          // 000000005D88: BEFC0012
	s_nop 0                                                    // 000000005D8C: BF800000
	buffer_load_dwordx4 v233, s[84:87], s19 offen lds          // 000000005D90: E05D1000 131500E9
	s_add_u32 m0, s18, 0x2000                                  // 000000005D98: 807CFF12 00002000
	s_nop 0                                                    // 000000005DA0: BF800000
	buffer_load_dwordx4 v234, s[84:87], s19 offen lds          // 000000005DA4: E05D1000 131500EA
	s_add_u32 s18, s42, 2                                      // 000000005DAC: 8012822A
	s_cmp_ge_u32 s18, s97                                      // 000000005DB0: BF096112
	s_cbranch_scc1 15                                          // 000000005DB4: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x42f4>
	s_xor_b32 s17, s17, 2                                      // 000000005DB8: 88118211
	s_mul_i32 s18, s18, s8                                     // 000000005DBC: 92120812
	s_lshl_b32 s17, s17, 14                                    // 000000005DC0: 8E118E11
	s_add_u32 s19, s48, s17                                    // 000000005DC4: 80131130
	s_add_u32 m0, s19, s88                                     // 000000005DC8: 807C5813
	s_lshl_b32 s18, s18, 7                                     // 000000005DCC: 8E128712
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000005DD0: E05D1000 121400EB
	s_add_u32 s17, s48, s17                                    // 000000005DD8: 80111130
	s_add_u32 s17, s17, s88                                    // 000000005DDC: 80115811
	s_add_u32 m0, s17, 0x2000                                  // 000000005DE0: 807CFF11 00002000
	s_nop 0                                                    // 000000005DE8: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000005DEC: E05D1000 121400EC
	s_waitcnt lgkmcnt(4)                                       // 000000005DF4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[66:73], v[200:207], v[176:191]// 000000005DF8: D3AE00B0 06C39142
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[74:81], v[200:207], v[160:175]// 000000005E00: D3AE00A0 0683914A
	s_nop 15                                                   // 000000005E08: BF80000F
	s_nop 3                                                    // 000000005E0C: BF800003
	v_mov_b64_e32 v[96:97], v[160:161]                         // 000000005E10: 7EC071A0
	v_mov_b64_e32 v[98:99], v[162:163]                         // 000000005E14: 7EC471A2
	v_mov_b64_e32 v[100:101], v[164:165]                       // 000000005E18: 7EC871A4
	v_mov_b64_e32 v[102:103], v[166:167]                       // 000000005E1C: 7ECC71A6
	v_mov_b64_e32 v[104:105], v[168:169]                       // 000000005E20: 7ED071A8
	v_mov_b64_e32 v[106:107], v[170:171]                       // 000000005E24: 7ED471AA
	v_mov_b64_e32 v[108:109], v[172:173]                       // 000000005E28: 7ED871AC
	v_mov_b64_e32 v[110:111], v[174:175]                       // 000000005E2C: 7EDC71AE
	s_waitcnt lgkmcnt(0)                                       // 000000005E30: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[82:89], v[200:207], v[144:159]// 000000005E34: D3AE0090 06439152
	s_nop 15                                                   // 000000005E3C: BF80000F
	s_nop 3                                                    // 000000005E40: BF800003
	v_mov_b64_e32 v[80:81], v[144:145]                         // 000000005E44: 7EA07190
	v_mov_b64_e32 v[82:83], v[146:147]                         // 000000005E48: 7EA47192
	v_mov_b64_e32 v[84:85], v[148:149]                         // 000000005E4C: 7EA87194
	v_mov_b64_e32 v[86:87], v[150:151]                         // 000000005E50: 7EAC7196
	v_mov_b64_e32 v[88:89], v[152:153]                         // 000000005E54: 7EB07198
	v_mov_b64_e32 v[90:91], v[154:155]                         // 000000005E58: 7EB4719A
	v_mov_b64_e32 v[92:93], v[156:157]                         // 000000005E5C: 7EB8719C
	v_mov_b64_e32 v[94:95], v[158:159]                         // 000000005E60: 7EBC719E
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[112:119], v[200:207], v[128:143]// 000000005E64: D3AE0080 06039170
	s_nop 15                                                   // 000000005E6C: BF80000F
	s_nop 3                                                    // 000000005E70: BF800003
	v_mov_b64_e32 v[64:65], v[128:129]                         // 000000005E74: 7E807180
	v_mov_b64_e32 v[66:67], v[130:131]                         // 000000005E78: 7E847182
	v_mov_b64_e32 v[68:69], v[132:133]                         // 000000005E7C: 7E887184
	v_mov_b64_e32 v[70:71], v[134:135]                         // 000000005E80: 7E8C7186
	v_mov_b64_e32 v[72:73], v[136:137]                         // 000000005E84: 7E907188
	v_mov_b64_e32 v[74:75], v[138:139]                         // 000000005E88: 7E94718A
	v_mov_b64_e32 v[76:77], v[140:141]                         // 000000005E8C: 7E98718C
	v_mov_b64_e32 v[78:79], v[142:143]                         // 000000005E90: 7E9C718E
	s_lshl_b32 s17, s42, 7                                     // 000000005E94: 8E11872A
	s_addk_i32 s17, 0x80                                       // 000000005E98: B7110080
	s_sub_u32 s18, s3, s17                                     // 000000005E9C: 80921103
	s_sub_i32 s18, s18, 0                                      // 000000005EA0: 81928012
	s_cmp_ge_i32 s18, 32                                       // 000000005EA4: BF03A012
	v_mov_b64_e32 v[112:113], v[176:177]                       // 000000005EA8: 7EE071B0
	v_mov_b64_e32 v[114:115], v[178:179]                       // 000000005EAC: 7EE471B2
	v_mov_b64_e32 v[116:117], v[180:181]                       // 000000005EB0: 7EE871B4
	v_mov_b64_e32 v[118:119], v[182:183]                       // 000000005EB4: 7EEC71B6
	v_mov_b64_e32 v[120:121], v[184:185]                       // 000000005EB8: 7EF071B8
	v_mov_b64_e32 v[122:123], v[186:187]                       // 000000005EBC: 7EF471BA
	v_mov_b64_e32 v[124:125], v[188:189]                       // 000000005EC0: 7EF871BC
	v_mov_b64_e32 v[126:127], v[190:191]                       // 000000005EC4: 7EFC71BE
	s_cbranch_scc1 90                                          // 000000005EC8: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4534>
	s_mov_b32 s53, s52                                         // 000000005ECC: BEB50034
	s_mov_b32 s54, s52                                         // 000000005ED0: BEB60034
	s_mov_b32 s55, s52                                         // 000000005ED4: BEB70034
	s_mov_b32 s56, s52                                         // 000000005ED8: BEB80034
	s_mov_b32 s57, s52                                         // 000000005EDC: BEB90034
	s_mov_b32 s58, s52                                         // 000000005EE0: BEBA0034
	s_mov_b32 s59, s52                                         // 000000005EE4: BEBB0034
	s_mov_b32 s60, s52                                         // 000000005EE8: BEBC0034
	s_mov_b32 s61, s52                                         // 000000005EEC: BEBD0034
	s_mov_b32 s62, s52                                         // 000000005EF0: BEBE0034
	s_mov_b32 s63, s52                                         // 000000005EF4: BEBF0034
	s_mov_b32 s64, s52                                         // 000000005EF8: BEC00034
	s_mov_b32 s65, s52                                         // 000000005EFC: BEC10034
	s_mov_b32 s66, s52                                         // 000000005F00: BEC20034
	s_mov_b32 s67, s52                                         // 000000005F04: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000005F08: BF048012
	v_mov_b64_e32 v[126:127], s[66:67]                         // 000000005F0C: 7EFC7042
	v_mov_b64_e32 v[124:125], s[64:65]                         // 000000005F10: 7EF87040
	v_mov_b64_e32 v[122:123], s[62:63]                         // 000000005F14: 7EF4703E
	v_mov_b64_e32 v[120:121], s[60:61]                         // 000000005F18: 7EF0703C
	v_mov_b64_e32 v[118:119], s[58:59]                         // 000000005F1C: 7EEC703A
	v_mov_b64_e32 v[116:117], s[56:57]                         // 000000005F20: 7EE87038
	v_mov_b64_e32 v[114:115], s[54:55]                         // 000000005F24: 7EE47036
	v_mov_b64_e32 v[112:113], s[52:53]                         // 000000005F28: 7EE07034
	s_cbranch_scc1 65                                          // 000000005F2C: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4534>
	v_add_u32_e32 v127, s18, v243                              // 000000005F30: 68FFE612
	v_cmp_gt_i32_e32 vcc, 0, v127                              // 000000005F34: 7D88FE80
	s_nop 1                                                    // 000000005F38: BF800001
	v_cndmask_b32_e64 v112, v176, v240, vcc                    // 000000005F3C: D1000070 01ABE1B0
	v_cmp_gt_i32_e32 vcc, 1, v127                              // 000000005F44: 7D88FE81
	s_nop 1                                                    // 000000005F48: BF800001
	v_cndmask_b32_e64 v113, v177, v240, vcc                    // 000000005F4C: D1000071 01ABE1B1
	v_cmp_gt_i32_e32 vcc, 2, v127                              // 000000005F54: 7D88FE82
	s_nop 1                                                    // 000000005F58: BF800001
	v_cndmask_b32_e64 v114, v178, v240, vcc                    // 000000005F5C: D1000072 01ABE1B2
	v_cmp_gt_i32_e32 vcc, 3, v127                              // 000000005F64: 7D88FE83
	s_nop 1                                                    // 000000005F68: BF800001
	v_cndmask_b32_e64 v115, v179, v240, vcc                    // 000000005F6C: D1000073 01ABE1B3
	v_cmp_gt_i32_e32 vcc, 8, v127                              // 000000005F74: 7D88FE88
	s_nop 1                                                    // 000000005F78: BF800001
	v_cndmask_b32_e64 v116, v180, v240, vcc                    // 000000005F7C: D1000074 01ABE1B4
	v_cmp_gt_i32_e32 vcc, 9, v127                              // 000000005F84: 7D88FE89
	s_nop 1                                                    // 000000005F88: BF800001
	v_cndmask_b32_e64 v117, v181, v240, vcc                    // 000000005F8C: D1000075 01ABE1B5
	v_cmp_gt_i32_e32 vcc, 10, v127                             // 000000005F94: 7D88FE8A
	s_nop 1                                                    // 000000005F98: BF800001
	v_cndmask_b32_e64 v118, v182, v240, vcc                    // 000000005F9C: D1000076 01ABE1B6
	v_cmp_gt_i32_e32 vcc, 11, v127                             // 000000005FA4: 7D88FE8B
	s_nop 1                                                    // 000000005FA8: BF800001
	v_cndmask_b32_e64 v119, v183, v240, vcc                    // 000000005FAC: D1000077 01ABE1B7
	v_cmp_gt_i32_e32 vcc, 16, v127                             // 000000005FB4: 7D88FE90
	s_nop 1                                                    // 000000005FB8: BF800001
	v_cndmask_b32_e64 v120, v184, v240, vcc                    // 000000005FBC: D1000078 01ABE1B8
	v_cmp_gt_i32_e32 vcc, 17, v127                             // 000000005FC4: 7D88FE91
	s_nop 1                                                    // 000000005FC8: BF800001
	v_cndmask_b32_e64 v121, v185, v240, vcc                    // 000000005FCC: D1000079 01ABE1B9
	v_cmp_gt_i32_e32 vcc, 18, v127                             // 000000005FD4: 7D88FE92
	s_nop 1                                                    // 000000005FD8: BF800001
	v_cndmask_b32_e64 v122, v186, v240, vcc                    // 000000005FDC: D100007A 01ABE1BA
	v_cmp_gt_i32_e32 vcc, 19, v127                             // 000000005FE4: 7D88FE93
	s_nop 1                                                    // 000000005FE8: BF800001
	v_cndmask_b32_e64 v123, v187, v240, vcc                    // 000000005FEC: D100007B 01ABE1BB
	v_cmp_gt_i32_e32 vcc, 24, v127                             // 000000005FF4: 7D88FE98
	s_nop 1                                                    // 000000005FF8: BF800001
	v_cndmask_b32_e64 v124, v188, v240, vcc                    // 000000005FFC: D100007C 01ABE1BC
	v_cmp_gt_i32_e32 vcc, 25, v127                             // 000000006004: 7D88FE99
	s_nop 1                                                    // 000000006008: BF800001
	v_cndmask_b32_e64 v125, v189, v240, vcc                    // 00000000600C: D100007D 01ABE1BD
	v_cmp_gt_i32_e32 vcc, 26, v127                             // 000000006014: 7D88FE9A
	s_nop 1                                                    // 000000006018: BF800001
	v_cndmask_b32_e64 v126, v190, v240, vcc                    // 00000000601C: D100007E 01ABE1BE
	v_cmp_gt_i32_e32 vcc, 27, v127                             // 000000006024: 7D88FE9B
	s_nop 1                                                    // 000000006028: BF800001
	v_cndmask_b32_e64 v127, v191, v240, vcc                    // 00000000602C: D100007F 01ABE1BF
	s_sub_u32 s18, s3, s17                                     // 000000006034: 80921103
	s_sub_i32 s18, s18, 32                                     // 000000006038: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 00000000603C: BF03A012
	s_cbranch_scc1 90                                          // 000000006040: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x46ac>
	s_mov_b32 s53, s52                                         // 000000006044: BEB50034
	s_mov_b32 s54, s52                                         // 000000006048: BEB60034
	s_mov_b32 s55, s52                                         // 00000000604C: BEB70034
	s_mov_b32 s56, s52                                         // 000000006050: BEB80034
	s_mov_b32 s57, s52                                         // 000000006054: BEB90034
	s_mov_b32 s58, s52                                         // 000000006058: BEBA0034
	s_mov_b32 s59, s52                                         // 00000000605C: BEBB0034
	s_mov_b32 s60, s52                                         // 000000006060: BEBC0034
	s_mov_b32 s61, s52                                         // 000000006064: BEBD0034
	s_mov_b32 s62, s52                                         // 000000006068: BEBE0034
	s_mov_b32 s63, s52                                         // 00000000606C: BEBF0034
	s_mov_b32 s64, s52                                         // 000000006070: BEC00034
	s_mov_b32 s65, s52                                         // 000000006074: BEC10034
	s_mov_b32 s66, s52                                         // 000000006078: BEC20034
	s_mov_b32 s67, s52                                         // 00000000607C: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000006080: BF048012
	v_mov_b64_e32 v[110:111], s[66:67]                         // 000000006084: 7EDC7042
	v_mov_b64_e32 v[108:109], s[64:65]                         // 000000006088: 7ED87040
	v_mov_b64_e32 v[106:107], s[62:63]                         // 00000000608C: 7ED4703E
	v_mov_b64_e32 v[104:105], s[60:61]                         // 000000006090: 7ED0703C
	v_mov_b64_e32 v[102:103], s[58:59]                         // 000000006094: 7ECC703A
	v_mov_b64_e32 v[100:101], s[56:57]                         // 000000006098: 7EC87038
	v_mov_b64_e32 v[98:99], s[54:55]                           // 00000000609C: 7EC47036
	v_mov_b64_e32 v[96:97], s[52:53]                           // 0000000060A0: 7EC07034
	s_cbranch_scc1 65                                          // 0000000060A4: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x46ac>
	v_add_u32_e32 v111, s18, v243                              // 0000000060A8: 68DFE612
	v_cmp_gt_i32_e32 vcc, 0, v111                              // 0000000060AC: 7D88DE80
	s_nop 1                                                    // 0000000060B0: BF800001
	v_cndmask_b32_e64 v96, v160, v240, vcc                     // 0000000060B4: D1000060 01ABE1A0
	v_cmp_gt_i32_e32 vcc, 1, v111                              // 0000000060BC: 7D88DE81
	s_nop 1                                                    // 0000000060C0: BF800001
	v_cndmask_b32_e64 v97, v161, v240, vcc                     // 0000000060C4: D1000061 01ABE1A1
	v_cmp_gt_i32_e32 vcc, 2, v111                              // 0000000060CC: 7D88DE82
	s_nop 1                                                    // 0000000060D0: BF800001
	v_cndmask_b32_e64 v98, v162, v240, vcc                     // 0000000060D4: D1000062 01ABE1A2
	v_cmp_gt_i32_e32 vcc, 3, v111                              // 0000000060DC: 7D88DE83
	s_nop 1                                                    // 0000000060E0: BF800001
	v_cndmask_b32_e64 v99, v163, v240, vcc                     // 0000000060E4: D1000063 01ABE1A3
	v_cmp_gt_i32_e32 vcc, 8, v111                              // 0000000060EC: 7D88DE88
	s_nop 1                                                    // 0000000060F0: BF800001
	v_cndmask_b32_e64 v100, v164, v240, vcc                    // 0000000060F4: D1000064 01ABE1A4
	v_cmp_gt_i32_e32 vcc, 9, v111                              // 0000000060FC: 7D88DE89
	s_nop 1                                                    // 000000006100: BF800001
	v_cndmask_b32_e64 v101, v165, v240, vcc                    // 000000006104: D1000065 01ABE1A5
	v_cmp_gt_i32_e32 vcc, 10, v111                             // 00000000610C: 7D88DE8A
	s_nop 1                                                    // 000000006110: BF800001
	v_cndmask_b32_e64 v102, v166, v240, vcc                    // 000000006114: D1000066 01ABE1A6
	v_cmp_gt_i32_e32 vcc, 11, v111                             // 00000000611C: 7D88DE8B
	s_nop 1                                                    // 000000006120: BF800001
	v_cndmask_b32_e64 v103, v167, v240, vcc                    // 000000006124: D1000067 01ABE1A7
	v_cmp_gt_i32_e32 vcc, 16, v111                             // 00000000612C: 7D88DE90
	s_nop 1                                                    // 000000006130: BF800001
	v_cndmask_b32_e64 v104, v168, v240, vcc                    // 000000006134: D1000068 01ABE1A8
	v_cmp_gt_i32_e32 vcc, 17, v111                             // 00000000613C: 7D88DE91
	s_nop 1                                                    // 000000006140: BF800001
	v_cndmask_b32_e64 v105, v169, v240, vcc                    // 000000006144: D1000069 01ABE1A9
	v_cmp_gt_i32_e32 vcc, 18, v111                             // 00000000614C: 7D88DE92
	s_nop 1                                                    // 000000006150: BF800001
	v_cndmask_b32_e64 v106, v170, v240, vcc                    // 000000006154: D100006A 01ABE1AA
	v_cmp_gt_i32_e32 vcc, 19, v111                             // 00000000615C: 7D88DE93
	s_nop 1                                                    // 000000006160: BF800001
	v_cndmask_b32_e64 v107, v171, v240, vcc                    // 000000006164: D100006B 01ABE1AB
	v_cmp_gt_i32_e32 vcc, 24, v111                             // 00000000616C: 7D88DE98
	s_nop 1                                                    // 000000006170: BF800001
	v_cndmask_b32_e64 v108, v172, v240, vcc                    // 000000006174: D100006C 01ABE1AC
	v_cmp_gt_i32_e32 vcc, 25, v111                             // 00000000617C: 7D88DE99
	s_nop 1                                                    // 000000006180: BF800001
	v_cndmask_b32_e64 v109, v173, v240, vcc                    // 000000006184: D100006D 01ABE1AD
	v_cmp_gt_i32_e32 vcc, 26, v111                             // 00000000618C: 7D88DE9A
	s_nop 1                                                    // 000000006190: BF800001
	v_cndmask_b32_e64 v110, v174, v240, vcc                    // 000000006194: D100006E 01ABE1AE
	v_cmp_gt_i32_e32 vcc, 27, v111                             // 00000000619C: 7D88DE9B
	s_nop 1                                                    // 0000000061A0: BF800001
	v_cndmask_b32_e64 v111, v175, v240, vcc                    // 0000000061A4: D100006F 01ABE1AF
	s_sub_u32 s18, s3, s17                                     // 0000000061AC: 80921103
	s_sub_i32 s18, s18, 64                                     // 0000000061B0: 8192C012
	scratch_load_dwordx4 v[164:167], off, off                  // 0000000061B4: DC5C4000 A47F0000
	scratch_load_dwordx4 v[168:171], off, off offset:16        // 0000000061BC: DC5C4010 A87F0000
	s_cmp_ge_i32 s18, 32                                       // 0000000061C4: BF03A012
	s_cbranch_scc1 90                                          // 0000000061C8: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4834>
	s_mov_b32 s53, s52                                         // 0000000061CC: BEB50034
	s_mov_b32 s54, s52                                         // 0000000061D0: BEB60034
	s_mov_b32 s55, s52                                         // 0000000061D4: BEB70034
	s_mov_b32 s56, s52                                         // 0000000061D8: BEB80034
	s_mov_b32 s57, s52                                         // 0000000061DC: BEB90034
	s_mov_b32 s58, s52                                         // 0000000061E0: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000061E4: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000061E8: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000061EC: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000061F0: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000061F4: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000061F8: BEC00034
	s_mov_b32 s65, s52                                         // 0000000061FC: BEC10034
	s_mov_b32 s66, s52                                         // 000000006200: BEC20034
	s_mov_b32 s67, s52                                         // 000000006204: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000006208: BF048012
	v_mov_b64_e32 v[94:95], s[66:67]                           // 00000000620C: 7EBC7042
	v_mov_b64_e32 v[92:93], s[64:65]                           // 000000006210: 7EB87040
	v_mov_b64_e32 v[90:91], s[62:63]                           // 000000006214: 7EB4703E
	v_mov_b64_e32 v[88:89], s[60:61]                           // 000000006218: 7EB0703C
	v_mov_b64_e32 v[86:87], s[58:59]                           // 00000000621C: 7EAC703A
	v_mov_b64_e32 v[84:85], s[56:57]                           // 000000006220: 7EA87038
	v_mov_b64_e32 v[82:83], s[54:55]                           // 000000006224: 7EA47036
	v_mov_b64_e32 v[80:81], s[52:53]                           // 000000006228: 7EA07034
	s_cbranch_scc1 65                                          // 00000000622C: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4834>
	v_add_u32_e32 v95, s18, v243                               // 000000006230: 68BFE612
	v_cmp_gt_i32_e32 vcc, 0, v95                               // 000000006234: 7D88BE80
	s_nop 1                                                    // 000000006238: BF800001
	v_cndmask_b32_e64 v80, v144, v240, vcc                     // 00000000623C: D1000050 01ABE190
	v_cmp_gt_i32_e32 vcc, 1, v95                               // 000000006244: 7D88BE81
	s_nop 1                                                    // 000000006248: BF800001
	v_cndmask_b32_e64 v81, v145, v240, vcc                     // 00000000624C: D1000051 01ABE191
	v_cmp_gt_i32_e32 vcc, 2, v95                               // 000000006254: 7D88BE82
	s_nop 1                                                    // 000000006258: BF800001
	v_cndmask_b32_e64 v82, v146, v240, vcc                     // 00000000625C: D1000052 01ABE192
	v_cmp_gt_i32_e32 vcc, 3, v95                               // 000000006264: 7D88BE83
	s_nop 1                                                    // 000000006268: BF800001
	v_cndmask_b32_e64 v83, v147, v240, vcc                     // 00000000626C: D1000053 01ABE193
	v_cmp_gt_i32_e32 vcc, 8, v95                               // 000000006274: 7D88BE88
	s_nop 1                                                    // 000000006278: BF800001
	v_cndmask_b32_e64 v84, v148, v240, vcc                     // 00000000627C: D1000054 01ABE194
	v_cmp_gt_i32_e32 vcc, 9, v95                               // 000000006284: 7D88BE89
	s_nop 1                                                    // 000000006288: BF800001
	v_cndmask_b32_e64 v85, v149, v240, vcc                     // 00000000628C: D1000055 01ABE195
	v_cmp_gt_i32_e32 vcc, 10, v95                              // 000000006294: 7D88BE8A
	s_nop 1                                                    // 000000006298: BF800001
	v_cndmask_b32_e64 v86, v150, v240, vcc                     // 00000000629C: D1000056 01ABE196
	v_cmp_gt_i32_e32 vcc, 11, v95                              // 0000000062A4: 7D88BE8B
	s_nop 1                                                    // 0000000062A8: BF800001
	v_cndmask_b32_e64 v87, v151, v240, vcc                     // 0000000062AC: D1000057 01ABE197
	v_cmp_gt_i32_e32 vcc, 16, v95                              // 0000000062B4: 7D88BE90
	s_nop 1                                                    // 0000000062B8: BF800001
	v_cndmask_b32_e64 v88, v152, v240, vcc                     // 0000000062BC: D1000058 01ABE198
	v_cmp_gt_i32_e32 vcc, 17, v95                              // 0000000062C4: 7D88BE91
	s_nop 1                                                    // 0000000062C8: BF800001
	v_cndmask_b32_e64 v89, v153, v240, vcc                     // 0000000062CC: D1000059 01ABE199
	v_cmp_gt_i32_e32 vcc, 18, v95                              // 0000000062D4: 7D88BE92
	s_nop 1                                                    // 0000000062D8: BF800001
	v_cndmask_b32_e64 v90, v154, v240, vcc                     // 0000000062DC: D100005A 01ABE19A
	v_cmp_gt_i32_e32 vcc, 19, v95                              // 0000000062E4: 7D88BE93
	s_nop 1                                                    // 0000000062E8: BF800001
	v_cndmask_b32_e64 v91, v155, v240, vcc                     // 0000000062EC: D100005B 01ABE19B
	v_cmp_gt_i32_e32 vcc, 24, v95                              // 0000000062F4: 7D88BE98
	s_nop 1                                                    // 0000000062F8: BF800001
	v_cndmask_b32_e64 v92, v156, v240, vcc                     // 0000000062FC: D100005C 01ABE19C
	v_cmp_gt_i32_e32 vcc, 25, v95                              // 000000006304: 7D88BE99
	s_nop 1                                                    // 000000006308: BF800001
	v_cndmask_b32_e64 v93, v157, v240, vcc                     // 00000000630C: D100005D 01ABE19D
	v_cmp_gt_i32_e32 vcc, 26, v95                              // 000000006314: 7D88BE9A
	s_nop 1                                                    // 000000006318: BF800001
	v_cndmask_b32_e64 v94, v158, v240, vcc                     // 00000000631C: D100005E 01ABE19E
	v_cmp_gt_i32_e32 vcc, 27, v95                              // 000000006324: 7D88BE9B
	s_nop 1                                                    // 000000006328: BF800001
	v_cndmask_b32_e64 v95, v159, v240, vcc                     // 00000000632C: D100005F 01ABE19F
	s_sub_u32 s17, s3, s17                                     // 000000006334: 80911103
	s_sub_i32 s17, s17, 0x60                                   // 000000006338: 8191FF11 00000060
	s_cmp_ge_i32 s17, 32                                       // 000000006340: BF03A011
	s_cbranch_scc1 90                                          // 000000006344: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x49b0>
	s_mov_b32 s53, s52                                         // 000000006348: BEB50034
	s_mov_b32 s54, s52                                         // 00000000634C: BEB60034
	s_mov_b32 s55, s52                                         // 000000006350: BEB70034
	s_mov_b32 s56, s52                                         // 000000006354: BEB80034
	s_mov_b32 s57, s52                                         // 000000006358: BEB90034
	s_mov_b32 s58, s52                                         // 00000000635C: BEBA0034
	s_mov_b32 s59, s52                                         // 000000006360: BEBB0034
	s_mov_b32 s60, s52                                         // 000000006364: BEBC0034
	s_mov_b32 s61, s52                                         // 000000006368: BEBD0034
	s_mov_b32 s62, s52                                         // 00000000636C: BEBE0034
	s_mov_b32 s63, s52                                         // 000000006370: BEBF0034
	s_mov_b32 s64, s52                                         // 000000006374: BEC00034
	s_mov_b32 s65, s52                                         // 000000006378: BEC10034
	s_mov_b32 s66, s52                                         // 00000000637C: BEC20034
	s_mov_b32 s67, s52                                         // 000000006380: BEC30034
	s_cmp_lt_i32 s17, 0                                        // 000000006384: BF048011
	v_mov_b64_e32 v[78:79], s[66:67]                           // 000000006388: 7E9C7042
	v_mov_b64_e32 v[76:77], s[64:65]                           // 00000000638C: 7E987040
	v_mov_b64_e32 v[74:75], s[62:63]                           // 000000006390: 7E94703E
	v_mov_b64_e32 v[72:73], s[60:61]                           // 000000006394: 7E90703C
	v_mov_b64_e32 v[70:71], s[58:59]                           // 000000006398: 7E8C703A
	v_mov_b64_e32 v[68:69], s[56:57]                           // 00000000639C: 7E887038
	v_mov_b64_e32 v[66:67], s[54:55]                           // 0000000063A0: 7E847036
	v_mov_b64_e32 v[64:65], s[52:53]                           // 0000000063A4: 7E807034
	s_cbranch_scc1 65                                          // 0000000063A8: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x49b0>
	v_add_u32_e32 v79, s17, v243                               // 0000000063AC: 689FE611
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 0000000063B0: 7D889E80
	s_nop 1                                                    // 0000000063B4: BF800001
	v_cndmask_b32_e64 v64, v128, v240, vcc                     // 0000000063B8: D1000040 01ABE180
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 0000000063C0: 7D889E81
	s_nop 1                                                    // 0000000063C4: BF800001
	v_cndmask_b32_e64 v65, v129, v240, vcc                     // 0000000063C8: D1000041 01ABE181
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 0000000063D0: 7D889E82
	s_nop 1                                                    // 0000000063D4: BF800001
	v_cndmask_b32_e64 v66, v130, v240, vcc                     // 0000000063D8: D1000042 01ABE182
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 0000000063E0: 7D889E83
	s_nop 1                                                    // 0000000063E4: BF800001
	v_cndmask_b32_e64 v67, v131, v240, vcc                     // 0000000063E8: D1000043 01ABE183
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 0000000063F0: 7D889E88
	s_nop 1                                                    // 0000000063F4: BF800001
	v_cndmask_b32_e64 v68, v132, v240, vcc                     // 0000000063F8: D1000044 01ABE184
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 000000006400: 7D889E89
	s_nop 1                                                    // 000000006404: BF800001
	v_cndmask_b32_e64 v69, v133, v240, vcc                     // 000000006408: D1000045 01ABE185
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 000000006410: 7D889E8A
	s_nop 1                                                    // 000000006414: BF800001
	v_cndmask_b32_e64 v70, v134, v240, vcc                     // 000000006418: D1000046 01ABE186
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 000000006420: 7D889E8B
	s_nop 1                                                    // 000000006424: BF800001
	v_cndmask_b32_e64 v71, v135, v240, vcc                     // 000000006428: D1000047 01ABE187
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 000000006430: 7D889E90
	s_nop 1                                                    // 000000006434: BF800001
	v_cndmask_b32_e64 v72, v136, v240, vcc                     // 000000006438: D1000048 01ABE188
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 000000006440: 7D889E91
	s_nop 1                                                    // 000000006444: BF800001
	v_cndmask_b32_e64 v73, v137, v240, vcc                     // 000000006448: D1000049 01ABE189
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 000000006450: 7D889E92
	s_nop 1                                                    // 000000006454: BF800001
	v_cndmask_b32_e64 v74, v138, v240, vcc                     // 000000006458: D100004A 01ABE18A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 000000006460: 7D889E93
	s_nop 1                                                    // 000000006464: BF800001
	v_cndmask_b32_e64 v75, v139, v240, vcc                     // 000000006468: D100004B 01ABE18B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 000000006470: 7D889E98
	s_nop 1                                                    // 000000006474: BF800001
	v_cndmask_b32_e64 v76, v140, v240, vcc                     // 000000006478: D100004C 01ABE18C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 000000006480: 7D889E99
	s_nop 1                                                    // 000000006484: BF800001
	v_cndmask_b32_e64 v77, v141, v240, vcc                     // 000000006488: D100004D 01ABE18D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 000000006490: 7D889E9A
	s_nop 1                                                    // 000000006494: BF800001
	v_cndmask_b32_e64 v78, v142, v240, vcc                     // 000000006498: D100004E 01ABE18E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 0000000064A0: 7D889E9B
	s_nop 1                                                    // 0000000064A4: BF800001
	v_cndmask_b32_e64 v79, v143, v240, vcc                     // 0000000064A8: D100004F 01ABE18F
	v_max_f32_e32 v128, v112, v113                             // 0000000064B0: 1700E370
	v_max3_f32 v128, v114, v115, v128                          // 0000000064B4: D1D30080 0602E772
	v_max3_f32 v128, v116, v117, v128                          // 0000000064BC: D1D30080 0602EB74
	v_max3_f32 v128, v118, v119, v128                          // 0000000064C4: D1D30080 0602EF76
	v_max3_f32 v128, v120, v121, v128                          // 0000000064CC: D1D30080 0602F378
	v_max3_f32 v128, v122, v123, v128                          // 0000000064D4: D1D30080 0602F77A
	v_max3_f32 v128, v124, v125, v128                          // 0000000064DC: D1D30080 0602FB7C
	v_max3_f32 v129, v126, v127, v128                          // 0000000064E4: D1D30081 0602FF7E
	v_max_f32_e32 v128, v96, v97                               // 0000000064EC: 1700C360
	v_max3_f32 v128, v98, v99, v128                            // 0000000064F0: D1D30080 0602C762
	v_max3_f32 v128, v100, v101, v128                          // 0000000064F8: D1D30080 0602CB64
	v_max3_f32 v128, v102, v103, v128                          // 000000006500: D1D30080 0602CF66
	v_max3_f32 v128, v104, v105, v128                          // 000000006508: D1D30080 0602D368
	v_max3_f32 v128, v106, v107, v128                          // 000000006510: D1D30080 0602D76A
	v_max3_f32 v128, v108, v109, v128                          // 000000006518: D1D30080 0602DB6C
	v_max3_f32 v130, v110, v111, v128                          // 000000006520: D1D30082 0602DF6E
	v_max_f32_e32 v128, v80, v81                               // 000000006528: 1700A350
	v_max3_f32 v128, v82, v83, v128                            // 00000000652C: D1D30080 0602A752
	v_max3_f32 v128, v84, v85, v128                            // 000000006534: D1D30080 0602AB54
	v_max3_f32 v128, v86, v87, v128                            // 00000000653C: D1D30080 0602AF56
	v_max3_f32 v128, v88, v89, v128                            // 000000006544: D1D30080 0602B358
	v_max3_f32 v128, v90, v91, v128                            // 00000000654C: D1D30080 0602B75A
	v_max3_f32 v128, v92, v93, v128                            // 000000006554: D1D30080 0602BB5C
	v_max3_f32 v128, v94, v95, v128                            // 00000000655C: D1D30080 0602BF5E
	v_max_f32_e32 v131, v64, v65                               // 000000006564: 17068340
	v_max3_f32 v131, v66, v67, v131                            // 000000006568: D1D30083 060E8742
	v_max3_f32 v131, v68, v69, v131                            // 000000006570: D1D30083 060E8B44
	v_max3_f32 v131, v70, v71, v131                            // 000000006578: D1D30083 060E8F46
	v_max3_f32 v131, v72, v73, v131                            // 000000006580: D1D30083 060E9348
	v_max3_f32 v131, v74, v75, v131                            // 000000006588: D1D30083 060E974A
	v_max3_f32 v131, v76, v77, v131                            // 000000006590: D1D30083 060E9B4C
	v_max3_f32 v131, v78, v79, v131                            // 000000006598: D1D30083 060E9F4E
	v_max_f32_e32 v128, v128, v131                             // 0000000065A0: 17010780
	v_max_f32_e32 v130, v129, v130                             // 0000000065A4: 17050581
	v_mov_b32_e32 v131, v130                                   // 0000000065A8: 7F060382
	s_nop 1                                                    // 0000000065AC: BF800001
	v_permlane32_swap_b32_e32 v130, v131                       // 0000000065B0: 7F04B583
	v_mov_b32_e32 v129, v128                                   // 0000000065B4: 7F020380
	s_nop 1                                                    // 0000000065B8: BF800001
	v_permlane32_swap_b32_e32 v128, v129                       // 0000000065BC: 7F00B581
	v_max_f32_e32 v128, v128, v129                             // 0000000065C0: 17010380
	v_max_f32_e32 v130, v130, v131                             // 0000000065C4: 17050782
	v_max_f32_e32 v129, v130, v128                             // 0000000065C8: 17030182
	v_mul_f32_e32 v129, v238, v129                             // 0000000065CC: 0B0303EE
	v_max_f32_e32 v129, v251, v129                             // 0000000065D0: 170303FB
	v_sub_f32_e32 v131, v129, v251                             // 0000000065D4: 0507F781
	v_cmp_lt_f32_e32 vcc, s49, v131                            // 0000000065D8: 7C830631
	s_cmp_lg_u64 vcc, 0                                        // 0000000065DC: BF13806A
	s_cselect_b32 s17, 1, 0                                    // 0000000065E0: 85118081
	s_cselect_b64 s[18:19], -1, 0                              // 0000000065E4: 859280C1
	v_cndmask_b32_e64 v129, v251, v129, s[18:19]               // 0000000065E8: D1000081 004B03FB
	v_fma_f32 v130, v130, v238, -v129                          // 0000000065F0: D1CB0082 8607DD82
	v_floor_f32_e32 v130, v130                                 // 0000000065F8: 7F043F82
	v_med3_f32 v132, v130, s99, 0                              // 0000000065FC: D1D60084 0200C782
	v_cvt_i32_f32_e32 v130, v132                               // 000000006604: 7F041184
	v_add_u32_e32 v130, 0x7f, v130                             // 000000006608: 690504FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v130                           // 000000006610: 25350497
	v_fma_f32 v128, v128, v238, -v129                          // 000000006614: D1CB0080 8607DD80
	v_floor_f32_e32 v128, v128                                 // 00000000661C: 7F003F80
	v_med3_f32 v128, v128, s99, 0                              // 000000006620: D1D60080 0200C780
	v_cvt_i32_f32_e32 v131, v128                               // 000000006628: 7F061180
	v_add_u32_e32 v131, 0x7f, v131                             // 00000000662C: 690706FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v131                           // 000000006634: 25370697
	v_mov_b32_e32 v133, s50                                    // 000000006638: 7F0A0232
	v_fma_f32 v133, v129, s92, v133                            // 00000000663C: D1CB0085 0614B981
	v_fma_f32 v152, v132, s92, v133                            // 000000006644: D1CB0098 0614B984
	v_fma_f32 v150, v128, s92, v133                            // 00000000664C: D1CB0096 0614B980
	s_waitcnt vmcnt(2)                                         // 000000006654: BF8C0F72
	ds_read_b64_tr_b8 v[132:133], v253                         // 000000006658: D9C40000 840000FD
	ds_read_b64_tr_b8 v[134:135], v253 offset:1024             // 000000006660: D9C40400 860000FD
	ds_read_b64_tr_b8 v[136:137], v253 offset:2048             // 000000006668: D9C40800 880000FD
	ds_read_b64_tr_b8 v[138:139], v253 offset:3072             // 000000006670: D9C40C00 8A0000FD
	ds_read_b64_tr_b8 v[140:141], v253 offset:256              // 000000006678: D9C40100 8C0000FD
	ds_read_b64_tr_b8 v[142:143], v253 offset:1280             // 000000006680: D9C40500 8E0000FD
	ds_read_b64_tr_b8 v[144:145], v253 offset:2304             // 000000006688: D9C40900 900000FD
	ds_read_b64_tr_b8 v[146:147], v253 offset:3328             // 000000006690: D9C40D00 920000FD
	ds_read_b64_tr_b8 v[156:157], v253 offset:512              // 000000006698: D9C40200 9C0000FD
	ds_read_b64_tr_b8 v[158:159], v253 offset:1536             // 0000000066A0: D9C40600 9E0000FD
	ds_read_b64_tr_b8 v[160:161], v253 offset:2560             // 0000000066A8: D9C40A00 A00000FD
	ds_read_b64_tr_b8 v[162:163], v253 offset:3584             // 0000000066B0: D9C40E00 A20000FD
	s_waitcnt lgkmcnt(4)                                       // 0000000066B8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[132:139], v[208:215], v[48:63], v242, v250 op_sel_hi:[0,0,0]// 0000000066BC: D3AC0000 0003F5F2 D3AE0830 04C3A184
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[140:147], v[208:215], v[32:47], v242, v250 op_sel_hi:[0,0,0]// 0000000066CC: D3AC0000 0003F5F2 D3AE0820 0483A18C
	ds_read_b64_tr_b8 v[132:133], v253 offset:768              // 0000000066DC: D9C40300 840000FD
	ds_read_b64_tr_b8 v[134:135], v253 offset:1792             // 0000000066E4: D9C40700 860000FD
	ds_read_b64_tr_b8 v[136:137], v253 offset:2816             // 0000000066EC: D9C40B00 880000FD
	ds_read_b64_tr_b8 v[138:139], v253 offset:3840             // 0000000066F4: D9C40F00 8A0000FD
	ds_read_b64_tr_b8 v[140:141], v253 offset:4096             // 0000000066FC: D9C41000 8C0000FD
	ds_read_b64_tr_b8 v[142:143], v253 offset:5120             // 000000006704: D9C41400 8E0000FD
	ds_read_b64_tr_b8 v[144:145], v253 offset:6144             // 00000000670C: D9C41800 900000FD
	ds_read_b64_tr_b8 v[146:147], v253 offset:7168             // 000000006714: D9C41C00 920000FD
	s_waitcnt lgkmcnt(4)                                       // 00000000671C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[156:163], v[208:215], v[16:31], v242, v250 op_sel_hi:[0,0,0]// 000000006720: D3AC0000 0003F5F2 D3AE0810 0443A19C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[132:139], v[208:215], v[0:15], v242, v250 op_sel_hi:[0,0,0]// 000000006730: D3AC0000 0003F5F2 D3AE0800 0403A184
	ds_read_b64_tr_b8 v[156:157], v253 offset:4352             // 000000006740: D9C41100 9C0000FD
	ds_read_b64_tr_b8 v[158:159], v253 offset:5376             // 000000006748: D9C41500 9E0000FD
	ds_read_b64_tr_b8 v[160:161], v253 offset:6400             // 000000006750: D9C41900 A00000FD
	ds_read_b64_tr_b8 v[162:163], v253 offset:7424             // 000000006758: D9C41D00 A20000FD
	ds_read_b64_tr_b8 v[132:133], v253 offset:4608             // 000000006760: D9C41200 840000FD
	ds_read_b64_tr_b8 v[134:135], v253 offset:5632             // 000000006768: D9C41600 860000FD
	ds_read_b64_tr_b8 v[136:137], v253 offset:6656             // 000000006770: D9C41A00 880000FD
	ds_read_b64_tr_b8 v[138:139], v253 offset:7680             // 000000006778: D9C41E00 8A0000FD
	s_waitcnt vmcnt(0) lgkmcnt(4)                              // 000000006780: BF8C0470
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[140:147], v[164:171], v[48:63], v242, v252 op_sel_hi:[0,0,0]// 000000006784: D3AC0000 0003F9F2 D3AE0830 04C3498C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[156:163], v[164:171], v[32:47], v242, v252 op_sel_hi:[0,0,0]// 000000006794: D3AC0000 0003F9F2 D3AE0820 0483499C
	ds_read_b64_tr_b8 v[140:141], v253 offset:4864             // 0000000067A4: D9C41300 8C0000FD
	ds_read_b64_tr_b8 v[142:143], v253 offset:5888             // 0000000067AC: D9C41700 8E0000FD
	ds_read_b64_tr_b8 v[144:145], v253 offset:6912             // 0000000067B4: D9C41B00 900000FD
	ds_read_b64_tr_b8 v[146:147], v253 offset:7936             // 0000000067BC: D9C41F00 920000FD
	s_waitcnt lgkmcnt(0)                                       // 0000000067C4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[132:139], v[164:171], v[16:31], v242, v252 op_sel_hi:[0,0,0]// 0000000067C8: D3AC0000 0003F9F2 D3AE0810 04434984
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[140:147], v[164:171], v[0:15], v242, v252 op_sel_hi:[0,0,0]// 0000000067D8: D3AC0000 0003F9F2 D3AE0800 0403498C
	s_cbranch_vccz 68                                          // 0000000067E8: BF860044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4dfc>
	v_sub_f32_e32 v128, v251, v129                             // 0000000067EC: 050103FB
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
	v_mul_f32_e32 v249, v249, v128                             // 0000000068F8: 0BF301F9
	s_waitcnt vmcnt(0)                                         // 0000000068FC: BF8C0F70
	s_barrier                                                  // 000000006900: BF8A0000
	s_add_u32 s42, s42, 1                                      // 000000006904: 802A812A
	v_mov_b32_e32 v252, v131                                   // 000000006908: 7FF80383
	v_mov_b32_e32 v250, v130                                   // 00000000690C: 7FF40382
	v_mov_b32_e32 v251, v129                                   // 000000006910: 7FF60381
	s_branch 443                                               // 000000006914: BF8201BB <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5504>
	s_cmp_eq_u32 s42, s79                                      // 000000006918: BF064F2A
	s_cbranch_scc0 404                                         // 00000000691C: BF840194 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5470>
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
	ds_read_b64_tr_b8 v[156:157], v253                         // 000000006D40: D9C40000 9C0000FD
	ds_read_b64_tr_b8 v[158:159], v253 offset:1024             // 000000006D48: D9C40400 9E0000FD
	ds_read_b64_tr_b8 v[160:161], v253 offset:2048             // 000000006D50: D9C40800 A00000FD
	ds_read_b64_tr_b8 v[162:163], v253 offset:3072             // 000000006D58: D9C40C00 A20000FD
	ds_read_b64_tr_b8 v[164:165], v253 offset:256              // 000000006D60: D9C40100 A40000FD
	ds_read_b64_tr_b8 v[166:167], v253 offset:1280             // 000000006D68: D9C40500 A60000FD
	ds_read_b64_tr_b8 v[168:169], v253 offset:2304             // 000000006D70: D9C40900 A80000FD
	ds_read_b64_tr_b8 v[170:171], v253 offset:3328             // 000000006D78: D9C40D00 AA0000FD
	ds_read_b64_tr_b8 v[172:173], v253 offset:512              // 000000006D80: D9C40200 AC0000FD
	ds_read_b64_tr_b8 v[174:175], v253 offset:1536             // 000000006D88: D9C40600 AE0000FD
	ds_read_b64_tr_b8 v[176:177], v253 offset:2560             // 000000006D90: D9C40A00 B00000FD
	ds_read_b64_tr_b8 v[178:179], v253 offset:3584             // 000000006D98: D9C40E00 B20000FD
	s_waitcnt lgkmcnt(4)                                       // 000000006DA0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v250 op_sel_hi:[0,0,0]// 000000006DA4: D3AC0000 0003F5F2 D3AE0830 04C3119C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v250 op_sel_hi:[0,0,0]// 000000006DB4: D3AC0000 0003F5F2 D3AE0820 048311A4
	ds_read_b64_tr_b8 v[156:157], v253 offset:768              // 000000006DC4: D9C40300 9C0000FD
	ds_read_b64_tr_b8 v[158:159], v253 offset:1792             // 000000006DCC: D9C40700 9E0000FD
	ds_read_b64_tr_b8 v[160:161], v253 offset:2816             // 000000006DD4: D9C40B00 A00000FD
	ds_read_b64_tr_b8 v[162:163], v253 offset:3840             // 000000006DDC: D9C40F00 A20000FD
	ds_read_b64_tr_b8 v[164:165], v253 offset:4096             // 000000006DE4: D9C41000 A40000FD
	ds_read_b64_tr_b8 v[166:167], v253 offset:5120             // 000000006DEC: D9C41400 A60000FD
	ds_read_b64_tr_b8 v[168:169], v253 offset:6144             // 000000006DF4: D9C41800 A80000FD
	ds_read_b64_tr_b8 v[170:171], v253 offset:7168             // 000000006DFC: D9C41C00 AA0000FD
	s_waitcnt lgkmcnt(4)                                       // 000000006E04: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v250 op_sel_hi:[0,0,0]// 000000006E08: D3AC0000 0003F5F2 D3AE0810 044311AC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v250 op_sel_hi:[0,0,0]// 000000006E18: D3AC0000 0003F5F2 D3AE0800 0403119C
	ds_read_b64_tr_b8 v[172:173], v253 offset:4352             // 000000006E28: D9C41100 AC0000FD
	ds_read_b64_tr_b8 v[174:175], v253 offset:5376             // 000000006E30: D9C41500 AE0000FD
	ds_read_b64_tr_b8 v[176:177], v253 offset:6400             // 000000006E38: D9C41900 B00000FD
	ds_read_b64_tr_b8 v[178:179], v253 offset:7424             // 000000006E40: D9C41D00 B20000FD
	ds_read_b64_tr_b8 v[156:157], v253 offset:4608             // 000000006E48: D9C41200 9C0000FD
	ds_read_b64_tr_b8 v[158:159], v253 offset:5632             // 000000006E50: D9C41600 9E0000FD
	ds_read_b64_tr_b8 v[160:161], v253 offset:6656             // 000000006E58: D9C41A00 A00000FD
	ds_read_b64_tr_b8 v[162:163], v253 offset:7680             // 000000006E60: D9C41E00 A20000FD
	s_waitcnt lgkmcnt(4)                                       // 000000006E68: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[164:171], v[128:135], v[48:63], v242, v252 op_sel_hi:[0,0,0]// 000000006E6C: D3AC0000 0003F9F2 D3AE0830 04C301A4
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[172:179], v[128:135], v[32:47], v242, v252 op_sel_hi:[0,0,0]// 000000006E7C: D3AC0000 0003F9F2 D3AE0820 048301AC
	ds_read_b64_tr_b8 v[164:165], v253 offset:4864             // 000000006E8C: D9C41300 A40000FD
	ds_read_b64_tr_b8 v[166:167], v253 offset:5888             // 000000006E94: D9C41700 A60000FD
	ds_read_b64_tr_b8 v[168:169], v253 offset:6912             // 000000006E9C: D9C41B00 A80000FD
	ds_read_b64_tr_b8 v[170:171], v253 offset:7936             // 000000006EA4: D9C41F00 AA0000FD
	s_add_u32 s19, s79, 4                                      // 000000006EAC: 8013844F
	s_cmp_ge_u32 s19, s97                                      // 000000006EB0: BF096113
	s_cbranch_scc1 12                                          // 000000006EB4: BF85000C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x53e8>
	s_add_u32 s18, s18, s88                                    // 000000006EB8: 80125812
	s_mul_i32 s19, s19, s8                                     // 000000006EBC: 92130813
	s_lshl_b32 s19, s19, 7                                     // 000000006EC0: 8E138713
	s_mov_b32 m0, s18                                          // 000000006EC4: BEFC0012
	s_nop 0                                                    // 000000006EC8: BF800000
	buffer_load_dwordx4 v233, s[84:87], s19 offen lds          // 000000006ECC: E05D1000 131500E9
	s_add_u32 m0, s18, 0x2000                                  // 000000006ED4: 807CFF12 00002000
	s_nop 0                                                    // 000000006EDC: BF800000
	buffer_load_dwordx4 v234, s[84:87], s19 offen lds          // 000000006EE0: E05D1000 131500EA
	s_add_u32 s18, s79, 2                                      // 000000006EE8: 8012824F
	s_cmp_ge_u32 s18, s97                                      // 000000006EEC: BF096112
	s_cbranch_scc1 15                                          // 000000006EF0: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5430>
	s_xor_b32 s17, s17, 2                                      // 000000006EF4: 88118211
	s_mul_i32 s18, s18, s8                                     // 000000006EF8: 92120812
	s_lshl_b32 s17, s17, 14                                    // 000000006EFC: 8E118E11
	s_add_u32 s19, s48, s17                                    // 000000006F00: 80131130
	s_add_u32 m0, s19, s88                                     // 000000006F04: 807C5813
	s_lshl_b32 s18, s18, 7                                     // 000000006F08: 8E128712
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000006F0C: E05D1000 121400EB
	s_add_u32 s17, s48, s17                                    // 000000006F14: 80111130
	s_add_u32 s17, s17, s88                                    // 000000006F18: 80115811
	s_add_u32 m0, s17, 0x2000                                  // 000000006F1C: 807CFF11 00002000
	s_nop 0                                                    // 000000006F24: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000006F28: E05D1000 121400EC
	v_mul_f32_e32 v136, v154, v144                             // 000000006F30: 0B11219A
	v_mul_f32_e32 v137, v155, v146                             // 000000006F34: 0B13259B
	v_add_f32_e32 v136, v249, v136                             // 000000006F38: 031111F9
	v_add_f32_e32 v249, v136, v137                             // 000000006F3C: 03F31388
	s_waitcnt lgkmcnt(0)                                       // 000000006F40: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[156:163], v[128:135], v[16:31], v242, v252 op_sel_hi:[0,0,0]// 000000006F44: D3AC0000 0003F9F2 D3AE0810 0443019C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[164:171], v[128:135], v[0:15], v242, v252 op_sel_hi:[0,0,0]// 000000006F54: D3AC0000 0003F9F2 D3AE0800 040301A4
	s_barrier                                                  // 000000006F64: BF8A0000
	s_add_u32 s42, s79, 1                                      // 000000006F68: 802A814F
	s_branch 37                                                // 000000006F6C: BF820025 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5504>
	s_barrier                                                  // 000000006F70: BF8A0000
	s_waitcnt vmcnt(0)                                         // 000000006F74: BF8C0F70
	s_add_u32 s19, s42, 4                                      // 000000006F78: 8013842A
	s_cmp_ge_u32 s19, s97                                      // 000000006F7C: BF096113
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
	s_add_u32 s18, s42, 2                                      // 000000006FB4: 8012822A
	s_cmp_ge_u32 s18, s97                                      // 000000006FB8: BF096112
	s_cbranch_scc1 15                                          // 000000006FBC: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x54fc>
	s_xor_b32 s17, s17, 2                                      // 000000006FC0: 88118211
	s_mul_i32 s18, s18, s8                                     // 000000006FC4: 92120812
	s_lshl_b32 s17, s17, 14                                    // 000000006FC8: 8E118E11
	s_add_u32 s19, s48, s17                                    // 000000006FCC: 80131130
	s_add_u32 m0, s19, s88                                     // 000000006FD0: 807C5813
	s_lshl_b32 s18, s18, 7                                     // 000000006FD4: 8E128712
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000006FD8: E05D1000 121400EB
	s_add_u32 s17, s48, s17                                    // 000000006FE0: 80111130
	s_add_u32 s17, s17, s88                                    // 000000006FE4: 80115811
	s_add_u32 m0, s17, 0x2000                                  // 000000006FE8: 807CFF11 00002000
	s_nop 0                                                    // 000000006FF0: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000006FF4: E05D1000 121400EC
	s_barrier                                                  // 000000006FFC: BF8A0000
	s_add_u32 s42, s42, 1                                      // 000000007000: 802A812A
	s_add_u32 s17, s42, 1                                      // 000000007004: 8011812A
	s_cmp_ge_u32 s17, s97                                      // 000000007008: BF096111
	s_cbranch_scc1 1696                                        // 00000000700C: BF8506A0 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6f90>
	s_add_u32 s19, s42, s78                                    // 000000007010: 80134E2A
	s_and_b32 s17, s19, 3                                      // 000000007014: 86118313
	s_lshl_b32 s18, s17, 14                                    // 000000007018: 8E128E11
	v_add_u32_e32 v253, s18, v244                              // 00000000701C: 69FBE812
	s_cmp_ge_u32 s42, s79                                      // 000000007020: BF094F2A
	s_cbranch_scc1 1067                                        // 000000007024: BF85042B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x65d4>
	s_setprio 0                                                // 000000007028: BF8F0000
	v_fma_f32 v96, v96, v239, v152                             // 00000000702C: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 000000007034: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 00000000703C: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 000000007044: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 00000000704C: D1CB0068 0663DF68
	v_fma_f32 v80, v80, v239, v150                             // 000000007054: D1CB0050 065BDF50
	v_fma_f32 v64, v64, v239, v150                             // 00000000705C: D1CB0040 065BDF40
	v_fma_f32 v84, v84, v239, v150                             // 000000007064: D1CB0054 065BDF54
	v_fma_f32 v68, v68, v239, v150                             // 00000000706C: D1CB0044 065BDF44
	v_fma_f32 v72, v72, v239, v150                             // 000000007074: D1CB0048 065BDF48
	v_fma_f32 v92, v92, v239, v150                             // 00000000707C: D1CB005C 065BDF5C
	s_add_u32 s19, s19, 1                                      // 000000007084: 80138113
	v_fma_f32 v97, v97, v239, v152                             // 000000007088: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 000000007090: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 000000007098: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 0000000070A0: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 0000000070A8: D1CB0069 0663DF69
	v_fma_f32 v81, v81, v239, v150                             // 0000000070B0: D1CB0051 065BDF51
	v_fma_f32 v65, v65, v239, v150                             // 0000000070B8: D1CB0041 065BDF41
	v_fma_f32 v85, v85, v239, v150                             // 0000000070C0: D1CB0055 065BDF55
	v_fma_f32 v69, v69, v239, v150                             // 0000000070C8: D1CB0045 065BDF45
	v_fma_f32 v88, v88, v239, v150                             // 0000000070D0: D1CB0058 065BDF58
	v_fma_f32 v73, v73, v239, v150                             // 0000000070D8: D1CB0049 065BDF49
	v_fma_f32 v93, v93, v239, v150                             // 0000000070E0: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 0000000070E8: D1DD0060 02010160
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 0000000070F0: D1DD0074 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 0000000070F8: D1DD0064 02010164
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000007100: D1DD0078 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000007108: D1DD0068 02010168
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000007110: D1DD0050 02010150
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000007118: D1DD0040 02010140
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000007120: D1DD0054 02010154
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000007128: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000007130: D1DD0048 02010148
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000007138: D1DD005C 0201015C
	s_and_b32 s19, s19, 3                                      // 000000007140: 86138313
	v_fma_f32 v98, v98, v239, v152                             // 000000007144: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 00000000714C: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 000000007154: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 00000000715C: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 000000007164: D1CB006A 0663DF6A
	v_fma_f32 v82, v82, v239, v150                             // 00000000716C: D1CB0052 065BDF52
	v_fma_f32 v66, v66, v239, v150                             // 000000007174: D1CB0042 065BDF42
	v_fma_f32 v86, v86, v239, v150                             // 00000000717C: D1CB0056 065BDF56
	v_fma_f32 v70, v70, v239, v150                             // 000000007184: D1CB0046 065BDF46
	v_fma_f32 v89, v89, v239, v150                             // 00000000718C: D1CB0059 065BDF59
	v_fma_f32 v94, v94, v239, v150                             // 000000007194: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 00000000719C: D1DD0058 02010158
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 0000000071A4: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v116                         // 0000000071AC: D1DD0061 05D10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 0000000071B4: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v120                        // 0000000071BC: D1DD0065 05E10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 0000000071C4: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 0000000071CC: D1DD0050 05410351
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 0000000071D4: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 0000000071DC: D1DD0041 05510355
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 0000000071E4: D1DD0044 05110345
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 0000000071EC: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v93, 1, v92                           // 0000000071F4: D1DD0049 0571035D
	s_lshl_b32 s19, s19, 14                                    // 0000000071FC: 8E138E13
	v_fma_f32 v99, v99, v239, v152                             // 000000007200: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 000000007208: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 000000007210: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 000000007218: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 000000007220: D1CB006B 0663DF6B
	v_fma_f32 v83, v83, v239, v150                             // 000000007228: D1CB0053 065BDF53
	v_fma_f32 v87, v87, v239, v150                             // 000000007230: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 000000007238: D1DD0045 05610359
	v_cvt_pk_u8_f32 v81, v98, 2, v96                           // 000000007240: D1DD0051 05810562
	v_cvt_pk_u8_f32 v84, v118, 2, v97                          // 000000007248: D1DD0054 05850576
	v_cvt_pk_u8_f32 v85, v102, 2, v100                         // 000000007250: D1DD0055 05910566
	v_cvt_pk_u8_f32 v88, v122, 2, v101                         // 000000007258: D1DD0058 0595057A
	v_cvt_pk_u8_f32 v89, v106, 2, v104                         // 000000007260: D1DD0059 05A1056A
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000007268: D1DD0050 05410552
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000007270: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 000000007278: D1DD0041 05050556
	v_cvt_pk_u8_f32 v66, v70, 2, v68                           // 000000007280: D1DD0042 05110546
	v_cvt_pk_u8_f32 v70, v94, 2, v73                           // 000000007288: D1DD0046 0525055E
	v_or_b32_e32 v73, s19, v231                                // 000000007290: 2893CE13
	v_cvt_pk_u8_f32 v212, v99, 3, v81                          // 000000007294: D1DD00D4 05450763
	v_cvt_pk_u8_f32 v209, v119, 3, v84                         // 00000000729C: D1DD00D1 05510777
	v_cvt_pk_u8_f32 v213, v103, 3, v85                         // 0000000072A4: D1DD00D5 05550767
	v_cvt_pk_u8_f32 v210, v123, 3, v88                         // 0000000072AC: D1DD00D2 0561077B
	v_cvt_pk_u8_f32 v214, v107, 3, v89                         // 0000000072B4: D1DD00D6 0565076B
	v_cvt_pk_u8_f32 v88, v83, 3, v80                           // 0000000072BC: D1DD0058 05410753
	v_cvt_pk_u8_f32 v89, v87, 3, v65                           // 0000000072C4: D1DD0059 05050757
	ds_read_b128 v[80:83], v73                                 // 0000000072CC: D9FE0000 50000049
	ds_read_b128 v[84:87], v73 offset:16                       // 0000000072D4: D9FE0010 54000049
	ds_read_b128 v[96:99], v73 offset:4096                     // 0000000072DC: D9FE1000 60000049
	ds_read_b128 v[100:103], v73 offset:4112                   // 0000000072E4: D9FE1010 64000049
	v_fma_f32 v112, v112, v239, v152                           // 0000000072EC: D1CB0070 0663DF70
	v_fma_f32 v124, v124, v239, v152                           // 0000000072F4: D1CB007C 0663DF7C
	v_fma_f32 v108, v108, v239, v152                           // 0000000072FC: D1CB006C 0663DF6C
	v_fma_f32 v113, v113, v239, v152                           // 000000007304: D1CB0071 0663DF71
	v_fma_f32 v125, v125, v239, v152                           // 00000000730C: D1CB007D 0663DF7D
	v_fma_f32 v109, v109, v239, v152                           // 000000007314: D1CB006D 0663DF6D
	v_fma_f32 v76, v76, v239, v150                             // 00000000731C: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000007324: D1DD0070 02010170
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 00000000732C: D1DD007C 0201017C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000007334: D1DD006C 0201016C
	v_fma_f32 v114, v114, v239, v152                           // 00000000733C: D1CB0072 0663DF72
	v_fma_f32 v126, v126, v239, v152                           // 000000007344: D1CB007E 0663DF7E
	v_fma_f32 v110, v110, v239, v152                           // 00000000734C: D1CB006E 0663DF6E
	v_fma_f32 v77, v77, v239, v150                             // 000000007354: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 00000000735C: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000007364: D1DD0070 05C10371
	v_cvt_pk_u8_f32 v105, v125, 1, v124                        // 00000000736C: D1DD0069 05F1037D
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 000000007374: D1DD006C 05B1036D
	v_fma_f32 v115, v115, v239, v152                           // 00000000737C: D1CB0073 0663DF73
	v_fma_f32 v127, v127, v239, v152                           // 000000007384: D1CB007F 0663DF7F
	v_fma_f32 v111, v111, v239, v152                           // 00000000738C: D1CB006F 0663DF6F
	v_fma_f32 v90, v90, v239, v150                             // 000000007394: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 00000000739C: D1CB004A 065BDF4A
	v_fma_f32 v78, v78, v239, v150                             // 0000000073A4: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v76, v77, 1, v76                           // 0000000073AC: D1DD004C 0531034D
	v_cvt_pk_u8_f32 v77, v114, 2, v112                         // 0000000073B4: D1DD004D 05C10572
	v_cvt_pk_u8_f32 v92, v126, 2, v105                         // 0000000073BC: D1DD005C 05A5057E
	v_cvt_pk_u8_f32 v93, v110, 2, v108                         // 0000000073C4: D1DD005D 05B1056E
	v_fma_f32 v67, v67, v239, v150                             // 0000000073CC: D1CB0043 065BDF43
	v_fma_f32 v71, v71, v239, v150                             // 0000000073D4: D1CB0047 065BDF47
	v_fma_f32 v91, v91, v239, v150                             // 0000000073DC: D1CB005B 065BDF5B
	v_fma_f32 v75, v75, v239, v150                             // 0000000073E4: D1CB004B 065BDF4B
	v_fma_f32 v95, v95, v239, v150                             // 0000000073EC: D1CB005F 065BDF5F
	v_fma_f32 v79, v79, v239, v150                             // 0000000073F4: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v68, v90, 2, v69                           // 0000000073FC: D1DD0044 0515055A
	v_cvt_pk_u8_f32 v69, v74, 2, v72                           // 000000007404: D1DD0045 0521054A
	v_cvt_pk_u8_f32 v72, v78, 2, v76                           // 00000000740C: D1DD0048 0531054E
	v_cvt_pk_u8_f32 v208, v115, 3, v77                         // 000000007414: D1DD00D0 05350773
	v_cvt_pk_u8_f32 v211, v127, 3, v92                         // 00000000741C: D1DD00D3 0571077F
	v_cvt_pk_u8_f32 v215, v111, 3, v93                         // 000000007424: D1DD00D7 0575076F
	v_cvt_pk_u8_f32 v92, v67, 3, v64                           // 00000000742C: D1DD005C 05010743
	v_cvt_pk_u8_f32 v93, v71, 3, v66                           // 000000007434: D1DD005D 05090747
	v_cvt_pk_u8_f32 v90, v91, 3, v68                           // 00000000743C: D1DD005A 0511075B
	v_cvt_pk_u8_f32 v94, v75, 3, v69                           // 000000007444: D1DD005E 0515074B
	v_cvt_pk_u8_f32 v91, v95, 3, v70                           // 00000000744C: D1DD005B 0519075F
	v_cvt_pk_u8_f32 v95, v79, 3, v72                           // 000000007454: D1DD005F 0521074F
	s_barrier                                                  // 00000000745C: BF8A0000
	s_setprio 1                                                // 000000007460: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[208:215], 0// 000000007464: D3AD0040 0203A1C0
	scratch_store_dwordx4 off, v[88:91], off                   // 00000000746C: DC7C4000 007F5800
	s_nop 0                                                    // 000000007474: BF800000
	scratch_store_dwordx4 off, v[92:95], off offset:16         // 000000007478: DC7C4010 007F5C00
	v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[192:199], v[88:95], 0// 000000007480: D3AD0042 0202B1C0
	s_nop 3                                                    // 000000007488: BF800003
	v_mul_f32_e32 v64, v154, v64                               // 00000000748C: 0A80819A
	v_add_f32_e32 v64, v249, v64                               // 000000007490: 028081F9
	s_nop 5                                                    // 000000007494: BF800005
	v_mul_f32_e32 v65, v155, v66                               // 000000007498: 0A82859B
	v_add_f32_e32 v249, v64, v65                               // 00000000749C: 03F28340
	ds_read_b128 v[88:91], v73 offset:8192                     // 0000000074A0: D9FE2000 58000049
	ds_read_b128 v[92:95], v73 offset:8208                     // 0000000074A8: D9FE2010 5C000049
	ds_read_b128 v[104:107], v73 offset:12288                  // 0000000074B0: D9FE3000 68000049
	ds_read_b128 v[108:111], v73 offset:12304                  // 0000000074B8: D9FE3010 6C000049
	s_waitcnt lgkmcnt(4)                                       // 0000000074C0: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[80:87], v[220:227], 0// 0000000074C4: D3AE00B0 0203B950
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[96:103], v[220:227], 0// 0000000074CC: D3AE00A0 0203B960
	v_or_b32_e32 v64, s19, v232                                // 0000000074D4: 2881D013
	ds_read_b128 v[66:69], v64                                 // 0000000074D8: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 0000000074E0: D9FE0010 46000040
	ds_read_b128 v[74:77], v64 offset:4096                     // 0000000074E8: D9FE1000 4A000040
	ds_read_b128 v[78:81], v64 offset:4112                     // 0000000074F0: D9FE1010 4E000040
	s_waitcnt lgkmcnt(4)                                       // 0000000074F8: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[88:95], v[220:227], 0// 0000000074FC: D3AE0090 0203B958
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[104:111], v[220:227], 0// 000000007504: D3AE0080 0203B968
	ds_read_b128 v[82:85], v64 offset:8192                     // 00000000750C: D9FE2000 52000040
	ds_read_b128 v[86:89], v64 offset:8208                     // 000000007514: D9FE2010 56000040
	ds_read_b128 v[112:115], v64 offset:12288                  // 00000000751C: D9FE3000 70000040
	ds_read_b128 v[116:119], v64 offset:12304                  // 000000007524: D9FE3010 74000040
	s_add_u32 s19, s42, 4                                      // 00000000752C: 8013842A
	s_cmp_ge_u32 s19, s97                                      // 000000007530: BF096113
	s_cbranch_scc1 12                                          // 000000007534: BF85000C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5a68>
	s_add_u32 s18, s18, s88                                    // 000000007538: 80125812
	s_mul_i32 s19, s19, s8                                     // 00000000753C: 92130813
	s_lshl_b32 s19, s19, 7                                     // 000000007540: 8E138713
	s_mov_b32 m0, s18                                          // 000000007544: BEFC0012
	s_nop 0                                                    // 000000007548: BF800000
	buffer_load_dwordx4 v233, s[84:87], s19 offen lds          // 00000000754C: E05D1000 131500E9
	s_add_u32 m0, s18, 0x2000                                  // 000000007554: 807CFF12 00002000
	s_nop 0                                                    // 00000000755C: BF800000
	buffer_load_dwordx4 v234, s[84:87], s19 offen lds          // 000000007560: E05D1000 131500EA
	s_add_u32 s18, s42, 2                                      // 000000007568: 8012822A
	s_cmp_ge_u32 s18, s97                                      // 00000000756C: BF096112
	s_cbranch_scc1 15                                          // 000000007570: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5ab0>
	s_xor_b32 s17, s17, 2                                      // 000000007574: 88118211
	s_mul_i32 s18, s18, s8                                     // 000000007578: 92120812
	s_lshl_b32 s17, s17, 14                                    // 00000000757C: 8E118E11
	s_add_u32 s19, s48, s17                                    // 000000007580: 80131130
	s_add_u32 m0, s19, s88                                     // 000000007584: 807C5813
	s_lshl_b32 s18, s18, 7                                     // 000000007588: 8E128712
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 00000000758C: E05D1000 121400EB
	s_add_u32 s17, s48, s17                                    // 000000007594: 80111130
	s_add_u32 s17, s17, s88                                    // 000000007598: 80115811
	s_add_u32 m0, s17, 0x2000                                  // 00000000759C: 807CFF11 00002000
	s_nop 0                                                    // 0000000075A4: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 0000000075A8: E05D1000 121400EC
	s_waitcnt lgkmcnt(4)                                       // 0000000075B0: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[66:73], v[200:207], v[176:191]// 0000000075B4: D3AE00B0 06C39142
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[74:81], v[200:207], v[160:175]// 0000000075BC: D3AE00A0 0683914A
	s_nop 15                                                   // 0000000075C4: BF80000F
	s_nop 3                                                    // 0000000075C8: BF800003
	v_mov_b64_e32 v[96:97], v[160:161]                         // 0000000075CC: 7EC071A0
	v_mov_b64_e32 v[98:99], v[162:163]                         // 0000000075D0: 7EC471A2
	v_mov_b64_e32 v[100:101], v[164:165]                       // 0000000075D4: 7EC871A4
	v_mov_b64_e32 v[102:103], v[166:167]                       // 0000000075D8: 7ECC71A6
	v_mov_b64_e32 v[104:105], v[168:169]                       // 0000000075DC: 7ED071A8
	v_mov_b64_e32 v[106:107], v[170:171]                       // 0000000075E0: 7ED471AA
	v_mov_b64_e32 v[108:109], v[172:173]                       // 0000000075E4: 7ED871AC
	v_mov_b64_e32 v[110:111], v[174:175]                       // 0000000075E8: 7EDC71AE
	s_waitcnt lgkmcnt(0)                                       // 0000000075EC: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[82:89], v[200:207], v[144:159]// 0000000075F0: D3AE0090 06439152
	s_nop 15                                                   // 0000000075F8: BF80000F
	s_nop 3                                                    // 0000000075FC: BF800003
	v_mov_b64_e32 v[80:81], v[144:145]                         // 000000007600: 7EA07190
	v_mov_b64_e32 v[82:83], v[146:147]                         // 000000007604: 7EA47192
	v_mov_b64_e32 v[84:85], v[148:149]                         // 000000007608: 7EA87194
	v_mov_b64_e32 v[86:87], v[150:151]                         // 00000000760C: 7EAC7196
	v_mov_b64_e32 v[88:89], v[152:153]                         // 000000007610: 7EB07198
	v_mov_b64_e32 v[90:91], v[154:155]                         // 000000007614: 7EB4719A
	v_mov_b64_e32 v[92:93], v[156:157]                         // 000000007618: 7EB8719C
	v_mov_b64_e32 v[94:95], v[158:159]                         // 00000000761C: 7EBC719E
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[112:119], v[200:207], v[128:143]// 000000007620: D3AE0080 06039170
	s_nop 15                                                   // 000000007628: BF80000F
	s_nop 3                                                    // 00000000762C: BF800003
	v_mov_b64_e32 v[64:65], v[128:129]                         // 000000007630: 7E807180
	v_mov_b64_e32 v[66:67], v[130:131]                         // 000000007634: 7E847182
	v_mov_b64_e32 v[68:69], v[132:133]                         // 000000007638: 7E887184
	v_mov_b64_e32 v[70:71], v[134:135]                         // 00000000763C: 7E8C7186
	v_mov_b64_e32 v[72:73], v[136:137]                         // 000000007640: 7E907188
	v_mov_b64_e32 v[74:75], v[138:139]                         // 000000007644: 7E94718A
	v_mov_b64_e32 v[76:77], v[140:141]                         // 000000007648: 7E98718C
	v_mov_b64_e32 v[78:79], v[142:143]                         // 00000000764C: 7E9C718E
	s_lshl_b32 s17, s42, 7                                     // 000000007650: 8E11872A
	s_addk_i32 s17, 0x80                                       // 000000007654: B7110080
	s_sub_u32 s18, s3, s17                                     // 000000007658: 80921103
	s_sub_i32 s18, s18, 0                                      // 00000000765C: 81928012
	s_cmp_ge_i32 s18, 32                                       // 000000007660: BF03A012
	v_mov_b64_e32 v[112:113], v[176:177]                       // 000000007664: 7EE071B0
	v_mov_b64_e32 v[114:115], v[178:179]                       // 000000007668: 7EE471B2
	v_mov_b64_e32 v[116:117], v[180:181]                       // 00000000766C: 7EE871B4
	v_mov_b64_e32 v[118:119], v[182:183]                       // 000000007670: 7EEC71B6
	v_mov_b64_e32 v[120:121], v[184:185]                       // 000000007674: 7EF071B8
	v_mov_b64_e32 v[122:123], v[186:187]                       // 000000007678: 7EF471BA
	v_mov_b64_e32 v[124:125], v[188:189]                       // 00000000767C: 7EF871BC
	v_mov_b64_e32 v[126:127], v[190:191]                       // 000000007680: 7EFC71BE
	s_cbranch_scc1 90                                          // 000000007684: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5cf0>
	s_mov_b32 s53, s52                                         // 000000007688: BEB50034
	s_mov_b32 s54, s52                                         // 00000000768C: BEB60034
	s_mov_b32 s55, s52                                         // 000000007690: BEB70034
	s_mov_b32 s56, s52                                         // 000000007694: BEB80034
	s_mov_b32 s57, s52                                         // 000000007698: BEB90034
	s_mov_b32 s58, s52                                         // 00000000769C: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000076A0: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000076A4: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000076A8: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000076AC: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000076B0: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000076B4: BEC00034
	s_mov_b32 s65, s52                                         // 0000000076B8: BEC10034
	s_mov_b32 s66, s52                                         // 0000000076BC: BEC20034
	s_mov_b32 s67, s52                                         // 0000000076C0: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 0000000076C4: BF048012
	v_mov_b64_e32 v[126:127], s[66:67]                         // 0000000076C8: 7EFC7042
	v_mov_b64_e32 v[124:125], s[64:65]                         // 0000000076CC: 7EF87040
	v_mov_b64_e32 v[122:123], s[62:63]                         // 0000000076D0: 7EF4703E
	v_mov_b64_e32 v[120:121], s[60:61]                         // 0000000076D4: 7EF0703C
	v_mov_b64_e32 v[118:119], s[58:59]                         // 0000000076D8: 7EEC703A
	v_mov_b64_e32 v[116:117], s[56:57]                         // 0000000076DC: 7EE87038
	v_mov_b64_e32 v[114:115], s[54:55]                         // 0000000076E0: 7EE47036
	v_mov_b64_e32 v[112:113], s[52:53]                         // 0000000076E4: 7EE07034
	s_cbranch_scc1 65                                          // 0000000076E8: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5cf0>
	v_add_u32_e32 v127, s18, v243                              // 0000000076EC: 68FFE612
	v_cmp_gt_i32_e32 vcc, 0, v127                              // 0000000076F0: 7D88FE80
	s_nop 1                                                    // 0000000076F4: BF800001
	v_cndmask_b32_e64 v112, v176, v240, vcc                    // 0000000076F8: D1000070 01ABE1B0
	v_cmp_gt_i32_e32 vcc, 1, v127                              // 000000007700: 7D88FE81
	s_nop 1                                                    // 000000007704: BF800001
	v_cndmask_b32_e64 v113, v177, v240, vcc                    // 000000007708: D1000071 01ABE1B1
	v_cmp_gt_i32_e32 vcc, 2, v127                              // 000000007710: 7D88FE82
	s_nop 1                                                    // 000000007714: BF800001
	v_cndmask_b32_e64 v114, v178, v240, vcc                    // 000000007718: D1000072 01ABE1B2
	v_cmp_gt_i32_e32 vcc, 3, v127                              // 000000007720: 7D88FE83
	s_nop 1                                                    // 000000007724: BF800001
	v_cndmask_b32_e64 v115, v179, v240, vcc                    // 000000007728: D1000073 01ABE1B3
	v_cmp_gt_i32_e32 vcc, 8, v127                              // 000000007730: 7D88FE88
	s_nop 1                                                    // 000000007734: BF800001
	v_cndmask_b32_e64 v116, v180, v240, vcc                    // 000000007738: D1000074 01ABE1B4
	v_cmp_gt_i32_e32 vcc, 9, v127                              // 000000007740: 7D88FE89
	s_nop 1                                                    // 000000007744: BF800001
	v_cndmask_b32_e64 v117, v181, v240, vcc                    // 000000007748: D1000075 01ABE1B5
	v_cmp_gt_i32_e32 vcc, 10, v127                             // 000000007750: 7D88FE8A
	s_nop 1                                                    // 000000007754: BF800001
	v_cndmask_b32_e64 v118, v182, v240, vcc                    // 000000007758: D1000076 01ABE1B6
	v_cmp_gt_i32_e32 vcc, 11, v127                             // 000000007760: 7D88FE8B
	s_nop 1                                                    // 000000007764: BF800001
	v_cndmask_b32_e64 v119, v183, v240, vcc                    // 000000007768: D1000077 01ABE1B7
	v_cmp_gt_i32_e32 vcc, 16, v127                             // 000000007770: 7D88FE90
	s_nop 1                                                    // 000000007774: BF800001
	v_cndmask_b32_e64 v120, v184, v240, vcc                    // 000000007778: D1000078 01ABE1B8
	v_cmp_gt_i32_e32 vcc, 17, v127                             // 000000007780: 7D88FE91
	s_nop 1                                                    // 000000007784: BF800001
	v_cndmask_b32_e64 v121, v185, v240, vcc                    // 000000007788: D1000079 01ABE1B9
	v_cmp_gt_i32_e32 vcc, 18, v127                             // 000000007790: 7D88FE92
	s_nop 1                                                    // 000000007794: BF800001
	v_cndmask_b32_e64 v122, v186, v240, vcc                    // 000000007798: D100007A 01ABE1BA
	v_cmp_gt_i32_e32 vcc, 19, v127                             // 0000000077A0: 7D88FE93
	s_nop 1                                                    // 0000000077A4: BF800001
	v_cndmask_b32_e64 v123, v187, v240, vcc                    // 0000000077A8: D100007B 01ABE1BB
	v_cmp_gt_i32_e32 vcc, 24, v127                             // 0000000077B0: 7D88FE98
	s_nop 1                                                    // 0000000077B4: BF800001
	v_cndmask_b32_e64 v124, v188, v240, vcc                    // 0000000077B8: D100007C 01ABE1BC
	v_cmp_gt_i32_e32 vcc, 25, v127                             // 0000000077C0: 7D88FE99
	s_nop 1                                                    // 0000000077C4: BF800001
	v_cndmask_b32_e64 v125, v189, v240, vcc                    // 0000000077C8: D100007D 01ABE1BD
	v_cmp_gt_i32_e32 vcc, 26, v127                             // 0000000077D0: 7D88FE9A
	s_nop 1                                                    // 0000000077D4: BF800001
	v_cndmask_b32_e64 v126, v190, v240, vcc                    // 0000000077D8: D100007E 01ABE1BE
	v_cmp_gt_i32_e32 vcc, 27, v127                             // 0000000077E0: 7D88FE9B
	s_nop 1                                                    // 0000000077E4: BF800001
	v_cndmask_b32_e64 v127, v191, v240, vcc                    // 0000000077E8: D100007F 01ABE1BF
	s_sub_u32 s18, s3, s17                                     // 0000000077F0: 80921103
	s_sub_i32 s18, s18, 32                                     // 0000000077F4: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 0000000077F8: BF03A012
	s_cbranch_scc1 90                                          // 0000000077FC: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5e68>
	s_mov_b32 s53, s52                                         // 000000007800: BEB50034
	s_mov_b32 s54, s52                                         // 000000007804: BEB60034
	s_mov_b32 s55, s52                                         // 000000007808: BEB70034
	s_mov_b32 s56, s52                                         // 00000000780C: BEB80034
	s_mov_b32 s57, s52                                         // 000000007810: BEB90034
	s_mov_b32 s58, s52                                         // 000000007814: BEBA0034
	s_mov_b32 s59, s52                                         // 000000007818: BEBB0034
	s_mov_b32 s60, s52                                         // 00000000781C: BEBC0034
	s_mov_b32 s61, s52                                         // 000000007820: BEBD0034
	s_mov_b32 s62, s52                                         // 000000007824: BEBE0034
	s_mov_b32 s63, s52                                         // 000000007828: BEBF0034
	s_mov_b32 s64, s52                                         // 00000000782C: BEC00034
	s_mov_b32 s65, s52                                         // 000000007830: BEC10034
	s_mov_b32 s66, s52                                         // 000000007834: BEC20034
	s_mov_b32 s67, s52                                         // 000000007838: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 00000000783C: BF048012
	v_mov_b64_e32 v[110:111], s[66:67]                         // 000000007840: 7EDC7042
	v_mov_b64_e32 v[108:109], s[64:65]                         // 000000007844: 7ED87040
	v_mov_b64_e32 v[106:107], s[62:63]                         // 000000007848: 7ED4703E
	v_mov_b64_e32 v[104:105], s[60:61]                         // 00000000784C: 7ED0703C
	v_mov_b64_e32 v[102:103], s[58:59]                         // 000000007850: 7ECC703A
	v_mov_b64_e32 v[100:101], s[56:57]                         // 000000007854: 7EC87038
	v_mov_b64_e32 v[98:99], s[54:55]                           // 000000007858: 7EC47036
	v_mov_b64_e32 v[96:97], s[52:53]                           // 00000000785C: 7EC07034
	s_cbranch_scc1 65                                          // 000000007860: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5e68>
	v_add_u32_e32 v111, s18, v243                              // 000000007864: 68DFE612
	v_cmp_gt_i32_e32 vcc, 0, v111                              // 000000007868: 7D88DE80
	s_nop 1                                                    // 00000000786C: BF800001
	v_cndmask_b32_e64 v96, v160, v240, vcc                     // 000000007870: D1000060 01ABE1A0
	v_cmp_gt_i32_e32 vcc, 1, v111                              // 000000007878: 7D88DE81
	s_nop 1                                                    // 00000000787C: BF800001
	v_cndmask_b32_e64 v97, v161, v240, vcc                     // 000000007880: D1000061 01ABE1A1
	v_cmp_gt_i32_e32 vcc, 2, v111                              // 000000007888: 7D88DE82
	s_nop 1                                                    // 00000000788C: BF800001
	v_cndmask_b32_e64 v98, v162, v240, vcc                     // 000000007890: D1000062 01ABE1A2
	v_cmp_gt_i32_e32 vcc, 3, v111                              // 000000007898: 7D88DE83
	s_nop 1                                                    // 00000000789C: BF800001
	v_cndmask_b32_e64 v99, v163, v240, vcc                     // 0000000078A0: D1000063 01ABE1A3
	v_cmp_gt_i32_e32 vcc, 8, v111                              // 0000000078A8: 7D88DE88
	s_nop 1                                                    // 0000000078AC: BF800001
	v_cndmask_b32_e64 v100, v164, v240, vcc                    // 0000000078B0: D1000064 01ABE1A4
	v_cmp_gt_i32_e32 vcc, 9, v111                              // 0000000078B8: 7D88DE89
	s_nop 1                                                    // 0000000078BC: BF800001
	v_cndmask_b32_e64 v101, v165, v240, vcc                    // 0000000078C0: D1000065 01ABE1A5
	v_cmp_gt_i32_e32 vcc, 10, v111                             // 0000000078C8: 7D88DE8A
	s_nop 1                                                    // 0000000078CC: BF800001
	v_cndmask_b32_e64 v102, v166, v240, vcc                    // 0000000078D0: D1000066 01ABE1A6
	v_cmp_gt_i32_e32 vcc, 11, v111                             // 0000000078D8: 7D88DE8B
	s_nop 1                                                    // 0000000078DC: BF800001
	v_cndmask_b32_e64 v103, v167, v240, vcc                    // 0000000078E0: D1000067 01ABE1A7
	v_cmp_gt_i32_e32 vcc, 16, v111                             // 0000000078E8: 7D88DE90
	s_nop 1                                                    // 0000000078EC: BF800001
	v_cndmask_b32_e64 v104, v168, v240, vcc                    // 0000000078F0: D1000068 01ABE1A8
	v_cmp_gt_i32_e32 vcc, 17, v111                             // 0000000078F8: 7D88DE91
	s_nop 1                                                    // 0000000078FC: BF800001
	v_cndmask_b32_e64 v105, v169, v240, vcc                    // 000000007900: D1000069 01ABE1A9
	v_cmp_gt_i32_e32 vcc, 18, v111                             // 000000007908: 7D88DE92
	s_nop 1                                                    // 00000000790C: BF800001
	v_cndmask_b32_e64 v106, v170, v240, vcc                    // 000000007910: D100006A 01ABE1AA
	v_cmp_gt_i32_e32 vcc, 19, v111                             // 000000007918: 7D88DE93
	s_nop 1                                                    // 00000000791C: BF800001
	v_cndmask_b32_e64 v107, v171, v240, vcc                    // 000000007920: D100006B 01ABE1AB
	v_cmp_gt_i32_e32 vcc, 24, v111                             // 000000007928: 7D88DE98
	s_nop 1                                                    // 00000000792C: BF800001
	v_cndmask_b32_e64 v108, v172, v240, vcc                    // 000000007930: D100006C 01ABE1AC
	v_cmp_gt_i32_e32 vcc, 25, v111                             // 000000007938: 7D88DE99
	s_nop 1                                                    // 00000000793C: BF800001
	v_cndmask_b32_e64 v109, v173, v240, vcc                    // 000000007940: D100006D 01ABE1AD
	v_cmp_gt_i32_e32 vcc, 26, v111                             // 000000007948: 7D88DE9A
	s_nop 1                                                    // 00000000794C: BF800001
	v_cndmask_b32_e64 v110, v174, v240, vcc                    // 000000007950: D100006E 01ABE1AE
	v_cmp_gt_i32_e32 vcc, 27, v111                             // 000000007958: 7D88DE9B
	s_nop 1                                                    // 00000000795C: BF800001
	v_cndmask_b32_e64 v111, v175, v240, vcc                    // 000000007960: D100006F 01ABE1AF
	s_sub_u32 s18, s3, s17                                     // 000000007968: 80921103
	s_sub_i32 s18, s18, 64                                     // 00000000796C: 8192C012
	scratch_load_dwordx4 v[164:167], off, off                  // 000000007970: DC5C4000 A47F0000
	scratch_load_dwordx4 v[168:171], off, off offset:16        // 000000007978: DC5C4010 A87F0000
	s_cmp_ge_i32 s18, 32                                       // 000000007980: BF03A012
	s_cbranch_scc1 90                                          // 000000007984: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5ff0>
	s_mov_b32 s53, s52                                         // 000000007988: BEB50034
	s_mov_b32 s54, s52                                         // 00000000798C: BEB60034
	s_mov_b32 s55, s52                                         // 000000007990: BEB70034
	s_mov_b32 s56, s52                                         // 000000007994: BEB80034
	s_mov_b32 s57, s52                                         // 000000007998: BEB90034
	s_mov_b32 s58, s52                                         // 00000000799C: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000079A0: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000079A4: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000079A8: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000079AC: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000079B0: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000079B4: BEC00034
	s_mov_b32 s65, s52                                         // 0000000079B8: BEC10034
	s_mov_b32 s66, s52                                         // 0000000079BC: BEC20034
	s_mov_b32 s67, s52                                         // 0000000079C0: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 0000000079C4: BF048012
	v_mov_b64_e32 v[94:95], s[66:67]                           // 0000000079C8: 7EBC7042
	v_mov_b64_e32 v[92:93], s[64:65]                           // 0000000079CC: 7EB87040
	v_mov_b64_e32 v[90:91], s[62:63]                           // 0000000079D0: 7EB4703E
	v_mov_b64_e32 v[88:89], s[60:61]                           // 0000000079D4: 7EB0703C
	v_mov_b64_e32 v[86:87], s[58:59]                           // 0000000079D8: 7EAC703A
	v_mov_b64_e32 v[84:85], s[56:57]                           // 0000000079DC: 7EA87038
	v_mov_b64_e32 v[82:83], s[54:55]                           // 0000000079E0: 7EA47036
	v_mov_b64_e32 v[80:81], s[52:53]                           // 0000000079E4: 7EA07034
	s_cbranch_scc1 65                                          // 0000000079E8: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5ff0>
	v_add_u32_e32 v95, s18, v243                               // 0000000079EC: 68BFE612
	v_cmp_gt_i32_e32 vcc, 0, v95                               // 0000000079F0: 7D88BE80
	s_nop 1                                                    // 0000000079F4: BF800001
	v_cndmask_b32_e64 v80, v144, v240, vcc                     // 0000000079F8: D1000050 01ABE190
	v_cmp_gt_i32_e32 vcc, 1, v95                               // 000000007A00: 7D88BE81
	s_nop 1                                                    // 000000007A04: BF800001
	v_cndmask_b32_e64 v81, v145, v240, vcc                     // 000000007A08: D1000051 01ABE191
	v_cmp_gt_i32_e32 vcc, 2, v95                               // 000000007A10: 7D88BE82
	s_nop 1                                                    // 000000007A14: BF800001
	v_cndmask_b32_e64 v82, v146, v240, vcc                     // 000000007A18: D1000052 01ABE192
	v_cmp_gt_i32_e32 vcc, 3, v95                               // 000000007A20: 7D88BE83
	s_nop 1                                                    // 000000007A24: BF800001
	v_cndmask_b32_e64 v83, v147, v240, vcc                     // 000000007A28: D1000053 01ABE193
	v_cmp_gt_i32_e32 vcc, 8, v95                               // 000000007A30: 7D88BE88
	s_nop 1                                                    // 000000007A34: BF800001
	v_cndmask_b32_e64 v84, v148, v240, vcc                     // 000000007A38: D1000054 01ABE194
	v_cmp_gt_i32_e32 vcc, 9, v95                               // 000000007A40: 7D88BE89
	s_nop 1                                                    // 000000007A44: BF800001
	v_cndmask_b32_e64 v85, v149, v240, vcc                     // 000000007A48: D1000055 01ABE195
	v_cmp_gt_i32_e32 vcc, 10, v95                              // 000000007A50: 7D88BE8A
	s_nop 1                                                    // 000000007A54: BF800001
	v_cndmask_b32_e64 v86, v150, v240, vcc                     // 000000007A58: D1000056 01ABE196
	v_cmp_gt_i32_e32 vcc, 11, v95                              // 000000007A60: 7D88BE8B
	s_nop 1                                                    // 000000007A64: BF800001
	v_cndmask_b32_e64 v87, v151, v240, vcc                     // 000000007A68: D1000057 01ABE197
	v_cmp_gt_i32_e32 vcc, 16, v95                              // 000000007A70: 7D88BE90
	s_nop 1                                                    // 000000007A74: BF800001
	v_cndmask_b32_e64 v88, v152, v240, vcc                     // 000000007A78: D1000058 01ABE198
	v_cmp_gt_i32_e32 vcc, 17, v95                              // 000000007A80: 7D88BE91
	s_nop 1                                                    // 000000007A84: BF800001
	v_cndmask_b32_e64 v89, v153, v240, vcc                     // 000000007A88: D1000059 01ABE199
	v_cmp_gt_i32_e32 vcc, 18, v95                              // 000000007A90: 7D88BE92
	s_nop 1                                                    // 000000007A94: BF800001
	v_cndmask_b32_e64 v90, v154, v240, vcc                     // 000000007A98: D100005A 01ABE19A
	v_cmp_gt_i32_e32 vcc, 19, v95                              // 000000007AA0: 7D88BE93
	s_nop 1                                                    // 000000007AA4: BF800001
	v_cndmask_b32_e64 v91, v155, v240, vcc                     // 000000007AA8: D100005B 01ABE19B
	v_cmp_gt_i32_e32 vcc, 24, v95                              // 000000007AB0: 7D88BE98
	s_nop 1                                                    // 000000007AB4: BF800001
	v_cndmask_b32_e64 v92, v156, v240, vcc                     // 000000007AB8: D100005C 01ABE19C
	v_cmp_gt_i32_e32 vcc, 25, v95                              // 000000007AC0: 7D88BE99
	s_nop 1                                                    // 000000007AC4: BF800001
	v_cndmask_b32_e64 v93, v157, v240, vcc                     // 000000007AC8: D100005D 01ABE19D
	v_cmp_gt_i32_e32 vcc, 26, v95                              // 000000007AD0: 7D88BE9A
	s_nop 1                                                    // 000000007AD4: BF800001
	v_cndmask_b32_e64 v94, v158, v240, vcc                     // 000000007AD8: D100005E 01ABE19E
	v_cmp_gt_i32_e32 vcc, 27, v95                              // 000000007AE0: 7D88BE9B
	s_nop 1                                                    // 000000007AE4: BF800001
	v_cndmask_b32_e64 v95, v159, v240, vcc                     // 000000007AE8: D100005F 01ABE19F
	s_sub_u32 s17, s3, s17                                     // 000000007AF0: 80911103
	s_sub_i32 s17, s17, 0x60                                   // 000000007AF4: 8191FF11 00000060
	s_cmp_ge_i32 s17, 32                                       // 000000007AFC: BF03A011
	s_cbranch_scc1 90                                          // 000000007B00: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x616c>
	s_mov_b32 s53, s52                                         // 000000007B04: BEB50034
	s_mov_b32 s54, s52                                         // 000000007B08: BEB60034
	s_mov_b32 s55, s52                                         // 000000007B0C: BEB70034
	s_mov_b32 s56, s52                                         // 000000007B10: BEB80034
	s_mov_b32 s57, s52                                         // 000000007B14: BEB90034
	s_mov_b32 s58, s52                                         // 000000007B18: BEBA0034
	s_mov_b32 s59, s52                                         // 000000007B1C: BEBB0034
	s_mov_b32 s60, s52                                         // 000000007B20: BEBC0034
	s_mov_b32 s61, s52                                         // 000000007B24: BEBD0034
	s_mov_b32 s62, s52                                         // 000000007B28: BEBE0034
	s_mov_b32 s63, s52                                         // 000000007B2C: BEBF0034
	s_mov_b32 s64, s52                                         // 000000007B30: BEC00034
	s_mov_b32 s65, s52                                         // 000000007B34: BEC10034
	s_mov_b32 s66, s52                                         // 000000007B38: BEC20034
	s_mov_b32 s67, s52                                         // 000000007B3C: BEC30034
	s_cmp_lt_i32 s17, 0                                        // 000000007B40: BF048011
	v_mov_b64_e32 v[78:79], s[66:67]                           // 000000007B44: 7E9C7042
	v_mov_b64_e32 v[76:77], s[64:65]                           // 000000007B48: 7E987040
	v_mov_b64_e32 v[74:75], s[62:63]                           // 000000007B4C: 7E94703E
	v_mov_b64_e32 v[72:73], s[60:61]                           // 000000007B50: 7E90703C
	v_mov_b64_e32 v[70:71], s[58:59]                           // 000000007B54: 7E8C703A
	v_mov_b64_e32 v[68:69], s[56:57]                           // 000000007B58: 7E887038
	v_mov_b64_e32 v[66:67], s[54:55]                           // 000000007B5C: 7E847036
	v_mov_b64_e32 v[64:65], s[52:53]                           // 000000007B60: 7E807034
	s_cbranch_scc1 65                                          // 000000007B64: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x616c>
	v_add_u32_e32 v79, s17, v243                               // 000000007B68: 689FE611
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 000000007B6C: 7D889E80
	s_nop 1                                                    // 000000007B70: BF800001
	v_cndmask_b32_e64 v64, v128, v240, vcc                     // 000000007B74: D1000040 01ABE180
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 000000007B7C: 7D889E81
	s_nop 1                                                    // 000000007B80: BF800001
	v_cndmask_b32_e64 v65, v129, v240, vcc                     // 000000007B84: D1000041 01ABE181
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 000000007B8C: 7D889E82
	s_nop 1                                                    // 000000007B90: BF800001
	v_cndmask_b32_e64 v66, v130, v240, vcc                     // 000000007B94: D1000042 01ABE182
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 000000007B9C: 7D889E83
	s_nop 1                                                    // 000000007BA0: BF800001
	v_cndmask_b32_e64 v67, v131, v240, vcc                     // 000000007BA4: D1000043 01ABE183
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 000000007BAC: 7D889E88
	s_nop 1                                                    // 000000007BB0: BF800001
	v_cndmask_b32_e64 v68, v132, v240, vcc                     // 000000007BB4: D1000044 01ABE184
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 000000007BBC: 7D889E89
	s_nop 1                                                    // 000000007BC0: BF800001
	v_cndmask_b32_e64 v69, v133, v240, vcc                     // 000000007BC4: D1000045 01ABE185
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 000000007BCC: 7D889E8A
	s_nop 1                                                    // 000000007BD0: BF800001
	v_cndmask_b32_e64 v70, v134, v240, vcc                     // 000000007BD4: D1000046 01ABE186
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 000000007BDC: 7D889E8B
	s_nop 1                                                    // 000000007BE0: BF800001
	v_cndmask_b32_e64 v71, v135, v240, vcc                     // 000000007BE4: D1000047 01ABE187
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 000000007BEC: 7D889E90
	s_nop 1                                                    // 000000007BF0: BF800001
	v_cndmask_b32_e64 v72, v136, v240, vcc                     // 000000007BF4: D1000048 01ABE188
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 000000007BFC: 7D889E91
	s_nop 1                                                    // 000000007C00: BF800001
	v_cndmask_b32_e64 v73, v137, v240, vcc                     // 000000007C04: D1000049 01ABE189
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 000000007C0C: 7D889E92
	s_nop 1                                                    // 000000007C10: BF800001
	v_cndmask_b32_e64 v74, v138, v240, vcc                     // 000000007C14: D100004A 01ABE18A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 000000007C1C: 7D889E93
	s_nop 1                                                    // 000000007C20: BF800001
	v_cndmask_b32_e64 v75, v139, v240, vcc                     // 000000007C24: D100004B 01ABE18B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 000000007C2C: 7D889E98
	s_nop 1                                                    // 000000007C30: BF800001
	v_cndmask_b32_e64 v76, v140, v240, vcc                     // 000000007C34: D100004C 01ABE18C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 000000007C3C: 7D889E99
	s_nop 1                                                    // 000000007C40: BF800001
	v_cndmask_b32_e64 v77, v141, v240, vcc                     // 000000007C44: D100004D 01ABE18D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 000000007C4C: 7D889E9A
	s_nop 1                                                    // 000000007C50: BF800001
	v_cndmask_b32_e64 v78, v142, v240, vcc                     // 000000007C54: D100004E 01ABE18E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 000000007C5C: 7D889E9B
	s_nop 1                                                    // 000000007C60: BF800001
	v_cndmask_b32_e64 v79, v143, v240, vcc                     // 000000007C64: D100004F 01ABE18F
	v_max_f32_e32 v128, v112, v113                             // 000000007C6C: 1700E370
	v_max3_f32 v128, v114, v115, v128                          // 000000007C70: D1D30080 0602E772
	v_max3_f32 v128, v116, v117, v128                          // 000000007C78: D1D30080 0602EB74
	v_max3_f32 v128, v118, v119, v128                          // 000000007C80: D1D30080 0602EF76
	v_max3_f32 v128, v120, v121, v128                          // 000000007C88: D1D30080 0602F378
	v_max3_f32 v128, v122, v123, v128                          // 000000007C90: D1D30080 0602F77A
	v_max3_f32 v128, v124, v125, v128                          // 000000007C98: D1D30080 0602FB7C
	v_max3_f32 v129, v126, v127, v128                          // 000000007CA0: D1D30081 0602FF7E
	v_max_f32_e32 v128, v96, v97                               // 000000007CA8: 1700C360
	v_max3_f32 v128, v98, v99, v128                            // 000000007CAC: D1D30080 0602C762
	v_max3_f32 v128, v100, v101, v128                          // 000000007CB4: D1D30080 0602CB64
	v_max3_f32 v128, v102, v103, v128                          // 000000007CBC: D1D30080 0602CF66
	v_max3_f32 v128, v104, v105, v128                          // 000000007CC4: D1D30080 0602D368
	v_max3_f32 v128, v106, v107, v128                          // 000000007CCC: D1D30080 0602D76A
	v_max3_f32 v128, v108, v109, v128                          // 000000007CD4: D1D30080 0602DB6C
	v_max3_f32 v130, v110, v111, v128                          // 000000007CDC: D1D30082 0602DF6E
	v_max_f32_e32 v128, v80, v81                               // 000000007CE4: 1700A350
	v_max3_f32 v128, v82, v83, v128                            // 000000007CE8: D1D30080 0602A752
	v_max3_f32 v128, v84, v85, v128                            // 000000007CF0: D1D30080 0602AB54
	v_max3_f32 v128, v86, v87, v128                            // 000000007CF8: D1D30080 0602AF56
	v_max3_f32 v128, v88, v89, v128                            // 000000007D00: D1D30080 0602B358
	v_max3_f32 v128, v90, v91, v128                            // 000000007D08: D1D30080 0602B75A
	v_max3_f32 v128, v92, v93, v128                            // 000000007D10: D1D30080 0602BB5C
	v_max3_f32 v128, v94, v95, v128                            // 000000007D18: D1D30080 0602BF5E
	v_max_f32_e32 v131, v64, v65                               // 000000007D20: 17068340
	v_max3_f32 v131, v66, v67, v131                            // 000000007D24: D1D30083 060E8742
	v_max3_f32 v131, v68, v69, v131                            // 000000007D2C: D1D30083 060E8B44
	v_max3_f32 v131, v70, v71, v131                            // 000000007D34: D1D30083 060E8F46
	v_max3_f32 v131, v72, v73, v131                            // 000000007D3C: D1D30083 060E9348
	v_max3_f32 v131, v74, v75, v131                            // 000000007D44: D1D30083 060E974A
	v_max3_f32 v131, v76, v77, v131                            // 000000007D4C: D1D30083 060E9B4C
	v_max3_f32 v131, v78, v79, v131                            // 000000007D54: D1D30083 060E9F4E
	v_max_f32_e32 v128, v128, v131                             // 000000007D5C: 17010780
	v_max_f32_e32 v130, v129, v130                             // 000000007D60: 17050581
	v_mov_b32_e32 v131, v130                                   // 000000007D64: 7F060382
	s_nop 1                                                    // 000000007D68: BF800001
	v_permlane32_swap_b32_e32 v130, v131                       // 000000007D6C: 7F04B583
	v_mov_b32_e32 v129, v128                                   // 000000007D70: 7F020380
	s_nop 1                                                    // 000000007D74: BF800001
	v_permlane32_swap_b32_e32 v128, v129                       // 000000007D78: 7F00B581
	v_max_f32_e32 v128, v128, v129                             // 000000007D7C: 17010380
	v_max_f32_e32 v130, v130, v131                             // 000000007D80: 17050782
	v_max_f32_e32 v129, v130, v128                             // 000000007D84: 17030182
	v_mul_f32_e32 v129, v238, v129                             // 000000007D88: 0B0303EE
	v_max_f32_e32 v129, v251, v129                             // 000000007D8C: 170303FB
	v_sub_f32_e32 v131, v129, v251                             // 000000007D90: 0507F781
	v_cmp_lt_f32_e32 vcc, s49, v131                            // 000000007D94: 7C830631
	s_cmp_lg_u64 vcc, 0                                        // 000000007D98: BF13806A
	s_cselect_b32 s17, 1, 0                                    // 000000007D9C: 85118081
	s_cselect_b64 s[18:19], -1, 0                              // 000000007DA0: 859280C1
	v_cndmask_b32_e64 v129, v251, v129, s[18:19]               // 000000007DA4: D1000081 004B03FB
	v_fma_f32 v130, v130, v238, -v129                          // 000000007DAC: D1CB0082 8607DD82
	v_floor_f32_e32 v130, v130                                 // 000000007DB4: 7F043F82
	v_med3_f32 v132, v130, s99, 0                              // 000000007DB8: D1D60084 0200C782
	v_cvt_i32_f32_e32 v130, v132                               // 000000007DC0: 7F041184
	v_add_u32_e32 v130, 0x7f, v130                             // 000000007DC4: 690504FF 0000007F
	v_lshlrev_b32_e32 v154, 23, v130                           // 000000007DCC: 25350497
	v_fma_f32 v128, v128, v238, -v129                          // 000000007DD0: D1CB0080 8607DD80
	v_floor_f32_e32 v128, v128                                 // 000000007DD8: 7F003F80
	v_med3_f32 v128, v128, s99, 0                              // 000000007DDC: D1D60080 0200C780
	v_cvt_i32_f32_e32 v131, v128                               // 000000007DE4: 7F061180
	v_add_u32_e32 v131, 0x7f, v131                             // 000000007DE8: 690706FF 0000007F
	v_lshlrev_b32_e32 v155, 23, v131                           // 000000007DF0: 25370697
	v_mov_b32_e32 v133, s50                                    // 000000007DF4: 7F0A0232
	v_fma_f32 v133, v129, s92, v133                            // 000000007DF8: D1CB0085 0614B981
	v_fma_f32 v152, v132, s92, v133                            // 000000007E00: D1CB0098 0614B984
	v_fma_f32 v150, v128, s92, v133                            // 000000007E08: D1CB0096 0614B980
	s_waitcnt vmcnt(2)                                         // 000000007E10: BF8C0F72
	ds_read_b64_tr_b8 v[132:133], v253                         // 000000007E14: D9C40000 840000FD
	ds_read_b64_tr_b8 v[134:135], v253 offset:1024             // 000000007E1C: D9C40400 860000FD
	ds_read_b64_tr_b8 v[136:137], v253 offset:2048             // 000000007E24: D9C40800 880000FD
	ds_read_b64_tr_b8 v[138:139], v253 offset:3072             // 000000007E2C: D9C40C00 8A0000FD
	ds_read_b64_tr_b8 v[140:141], v253 offset:256              // 000000007E34: D9C40100 8C0000FD
	ds_read_b64_tr_b8 v[142:143], v253 offset:1280             // 000000007E3C: D9C40500 8E0000FD
	ds_read_b64_tr_b8 v[144:145], v253 offset:2304             // 000000007E44: D9C40900 900000FD
	ds_read_b64_tr_b8 v[146:147], v253 offset:3328             // 000000007E4C: D9C40D00 920000FD
	ds_read_b64_tr_b8 v[156:157], v253 offset:512              // 000000007E54: D9C40200 9C0000FD
	ds_read_b64_tr_b8 v[158:159], v253 offset:1536             // 000000007E5C: D9C40600 9E0000FD
	ds_read_b64_tr_b8 v[160:161], v253 offset:2560             // 000000007E64: D9C40A00 A00000FD
	ds_read_b64_tr_b8 v[162:163], v253 offset:3584             // 000000007E6C: D9C40E00 A20000FD
	s_waitcnt lgkmcnt(4)                                       // 000000007E74: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[132:139], v[208:215], v[48:63], v242, v250 op_sel_hi:[0,0,0]// 000000007E78: D3AC0000 0003F5F2 D3AE0830 04C3A184
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[140:147], v[208:215], v[32:47], v242, v250 op_sel_hi:[0,0,0]// 000000007E88: D3AC0000 0003F5F2 D3AE0820 0483A18C
	ds_read_b64_tr_b8 v[132:133], v253 offset:768              // 000000007E98: D9C40300 840000FD
	ds_read_b64_tr_b8 v[134:135], v253 offset:1792             // 000000007EA0: D9C40700 860000FD
	ds_read_b64_tr_b8 v[136:137], v253 offset:2816             // 000000007EA8: D9C40B00 880000FD
	ds_read_b64_tr_b8 v[138:139], v253 offset:3840             // 000000007EB0: D9C40F00 8A0000FD
	ds_read_b64_tr_b8 v[140:141], v253 offset:4096             // 000000007EB8: D9C41000 8C0000FD
	ds_read_b64_tr_b8 v[142:143], v253 offset:5120             // 000000007EC0: D9C41400 8E0000FD
	ds_read_b64_tr_b8 v[144:145], v253 offset:6144             // 000000007EC8: D9C41800 900000FD
	ds_read_b64_tr_b8 v[146:147], v253 offset:7168             // 000000007ED0: D9C41C00 920000FD
	s_waitcnt lgkmcnt(4)                                       // 000000007ED8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[156:163], v[208:215], v[16:31], v242, v250 op_sel_hi:[0,0,0]// 000000007EDC: D3AC0000 0003F5F2 D3AE0810 0443A19C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[132:139], v[208:215], v[0:15], v242, v250 op_sel_hi:[0,0,0]// 000000007EEC: D3AC0000 0003F5F2 D3AE0800 0403A184
	ds_read_b64_tr_b8 v[156:157], v253 offset:4352             // 000000007EFC: D9C41100 9C0000FD
	ds_read_b64_tr_b8 v[158:159], v253 offset:5376             // 000000007F04: D9C41500 9E0000FD
	ds_read_b64_tr_b8 v[160:161], v253 offset:6400             // 000000007F0C: D9C41900 A00000FD
	ds_read_b64_tr_b8 v[162:163], v253 offset:7424             // 000000007F14: D9C41D00 A20000FD
	ds_read_b64_tr_b8 v[132:133], v253 offset:4608             // 000000007F1C: D9C41200 840000FD
	ds_read_b64_tr_b8 v[134:135], v253 offset:5632             // 000000007F24: D9C41600 860000FD
	ds_read_b64_tr_b8 v[136:137], v253 offset:6656             // 000000007F2C: D9C41A00 880000FD
	ds_read_b64_tr_b8 v[138:139], v253 offset:7680             // 000000007F34: D9C41E00 8A0000FD
	s_waitcnt vmcnt(0) lgkmcnt(4)                              // 000000007F3C: BF8C0470
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[140:147], v[164:171], v[48:63], v242, v252 op_sel_hi:[0,0,0]// 000000007F40: D3AC0000 0003F9F2 D3AE0830 04C3498C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[156:163], v[164:171], v[32:47], v242, v252 op_sel_hi:[0,0,0]// 000000007F50: D3AC0000 0003F9F2 D3AE0820 0483499C
	ds_read_b64_tr_b8 v[140:141], v253 offset:4864             // 000000007F60: D9C41300 8C0000FD
	ds_read_b64_tr_b8 v[142:143], v253 offset:5888             // 000000007F68: D9C41700 8E0000FD
	ds_read_b64_tr_b8 v[144:145], v253 offset:6912             // 000000007F70: D9C41B00 900000FD
	ds_read_b64_tr_b8 v[146:147], v253 offset:7936             // 000000007F78: D9C41F00 920000FD
	s_waitcnt lgkmcnt(0)                                       // 000000007F80: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[132:139], v[164:171], v[16:31], v242, v252 op_sel_hi:[0,0,0]// 000000007F84: D3AC0000 0003F9F2 D3AE0810 04434984
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[140:147], v[164:171], v[0:15], v242, v252 op_sel_hi:[0,0,0]// 000000007F94: D3AC0000 0003F9F2 D3AE0800 0403498C
	s_cbranch_vccz 68                                          // 000000007FA4: BF860044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x65b8>
	v_sub_f32_e32 v128, v251, v129                             // 000000007FA8: 050103FB
	v_exp_f32_e32 v128, v128                                   // 000000007FAC: 7F004180
	s_nop 3                                                    // 000000007FB0: BF800003
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 000000007FB4: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 000000007FBC: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000007FC4: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000007FCC: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000007FD4: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000007FDC: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000007FE4: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000007FEC: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000007FF4: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000007FFC: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000008004: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 00000000800C: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000008014: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 00000000801C: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000008024: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 00000000802C: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000008034: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 00000000803C: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000008044: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 00000000804C: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000008054: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 00000000805C: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000008064: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 00000000806C: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 000000008074: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 00000000807C: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 000000008084: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 00000000808C: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 000000008094: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 00000000809C: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 0000000080A4: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 0000000080AC: D3B14000 10020180
	v_mul_f32_e32 v249, v249, v128                             // 0000000080B4: 0BF301F9
	s_waitcnt vmcnt(0)                                         // 0000000080B8: BF8C0F70
	s_barrier                                                  // 0000000080BC: BF8A0000
	s_add_u32 s42, s42, 1                                      // 0000000080C0: 802A812A
	v_mov_b32_e32 v252, v131                                   // 0000000080C4: 7FF80383
	v_mov_b32_e32 v250, v130                                   // 0000000080C8: 7FF40382
	v_mov_b32_e32 v251, v129                                   // 0000000080CC: 7FF60381
	s_branch 62941                                             // 0000000080D0: BF82F5DD <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d48>
	s_cmp_eq_u32 s42, s79                                      // 0000000080D4: BF064F2A
	s_cbranch_scc0 404                                         // 0000000080D8: BF840194 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6c2c>
	s_setprio 0                                                // 0000000080DC: BF8F0000
	v_fma_f32 v128, v112, v239, v152                           // 0000000080E0: D1CB0080 0663DF70
	v_fma_f32 v129, v113, v239, v152                           // 0000000080E8: D1CB0081 0663DF71
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000080F0: D1DD0080 02010180
	v_fma_f32 v130, v114, v239, v152                           // 0000000080F8: D1CB0082 0663DF72
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000008100: D1DD0080 06010381
	v_fma_f32 v131, v115, v239, v152                           // 000000008108: D1CB0083 0663DF73
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000008110: D1DD0080 06010582
	v_cvt_pk_u8_f32 v136, v131, 3, v128                        // 000000008118: D1DD0088 06010783
	v_fma_f32 v128, v96, v239, v152                            // 000000008120: D1CB0080 0663DF60
	v_fma_f32 v129, v97, v239, v152                            // 000000008128: D1CB0081 0663DF61
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000008130: D1DD0080 02010180
	v_fma_f32 v130, v98, v239, v152                            // 000000008138: D1CB0082 0663DF62
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000008140: D1DD0080 06010381
	v_fma_f32 v131, v99, v239, v152                            // 000000008148: D1CB0083 0663DF63
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000008150: D1DD0080 06010582
	v_cvt_pk_u8_f32 v140, v131, 3, v128                        // 000000008158: D1DD008C 06010783
	v_fma_f32 v128, v116, v239, v152                           // 000000008160: D1CB0080 0663DF74
	v_fma_f32 v129, v117, v239, v152                           // 000000008168: D1CB0081 0663DF75
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000008170: D1DD0080 02010180
	v_fma_f32 v130, v118, v239, v152                           // 000000008178: D1CB0082 0663DF76
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000008180: D1DD0080 06010381
	v_fma_f32 v131, v119, v239, v152                           // 000000008188: D1CB0083 0663DF77
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000008190: D1DD0080 06010582
	v_cvt_pk_u8_f32 v137, v131, 3, v128                        // 000000008198: D1DD0089 06010783
	v_fma_f32 v128, v100, v239, v152                           // 0000000081A0: D1CB0080 0663DF64
	v_fma_f32 v129, v101, v239, v152                           // 0000000081A8: D1CB0081 0663DF65
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000081B0: D1DD0080 02010180
	v_fma_f32 v130, v102, v239, v152                           // 0000000081B8: D1CB0082 0663DF66
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 0000000081C0: D1DD0080 06010381
	v_fma_f32 v131, v103, v239, v152                           // 0000000081C8: D1CB0083 0663DF67
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 0000000081D0: D1DD0080 06010582
	v_cvt_pk_u8_f32 v141, v131, 3, v128                        // 0000000081D8: D1DD008D 06010783
	v_fma_f32 v128, v120, v239, v152                           // 0000000081E0: D1CB0080 0663DF78
	v_fma_f32 v129, v121, v239, v152                           // 0000000081E8: D1CB0081 0663DF79
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000081F0: D1DD0080 02010180
	v_fma_f32 v130, v122, v239, v152                           // 0000000081F8: D1CB0082 0663DF7A
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000008200: D1DD0080 06010381
	v_fma_f32 v131, v123, v239, v152                           // 000000008208: D1CB0083 0663DF7B
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000008210: D1DD0080 06010582
	v_cvt_pk_u8_f32 v138, v131, 3, v128                        // 000000008218: D1DD008A 06010783
	v_fma_f32 v128, v104, v239, v152                           // 000000008220: D1CB0080 0663DF68
	v_fma_f32 v129, v105, v239, v152                           // 000000008228: D1CB0081 0663DF69
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000008230: D1DD0080 02010180
	v_fma_f32 v130, v106, v239, v152                           // 000000008238: D1CB0082 0663DF6A
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000008240: D1DD0080 06010381
	v_fma_f32 v131, v107, v239, v152                           // 000000008248: D1CB0083 0663DF6B
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000008250: D1DD0080 06010582
	v_cvt_pk_u8_f32 v142, v131, 3, v128                        // 000000008258: D1DD008E 06010783
	v_fma_f32 v128, v124, v239, v152                           // 000000008260: D1CB0080 0663DF7C
	v_fma_f32 v129, v125, v239, v152                           // 000000008268: D1CB0081 0663DF7D
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000008270: D1DD0080 02010180
	v_fma_f32 v130, v126, v239, v152                           // 000000008278: D1CB0082 0663DF7E
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000008280: D1DD0080 06010381
	v_fma_f32 v131, v127, v239, v152                           // 000000008288: D1CB0083 0663DF7F
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000008290: D1DD0080 06010582
	v_cvt_pk_u8_f32 v139, v131, 3, v128                        // 000000008298: D1DD008B 06010783
	v_fma_f32 v128, v108, v239, v152                           // 0000000082A0: D1CB0080 0663DF6C
	v_fma_f32 v129, v109, v239, v152                           // 0000000082A8: D1CB0081 0663DF6D
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000082B0: D1DD0080 02010180
	v_fma_f32 v130, v110, v239, v152                           // 0000000082B8: D1CB0082 0663DF6E
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 0000000082C0: D1DD0080 06010381
	v_fma_f32 v131, v111, v239, v152                           // 0000000082C8: D1CB0083 0663DF6F
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 0000000082D0: D1DD0080 06010582
	v_cvt_pk_u8_f32 v143, v131, 3, v128                        // 0000000082D8: D1DD008F 06010783
	v_fma_f32 v128, v80, v239, v150                            // 0000000082E0: D1CB0080 065BDF50
	v_fma_f32 v129, v81, v239, v150                            // 0000000082E8: D1CB0081 065BDF51
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000082F0: D1DD0080 02010180
	v_fma_f32 v130, v82, v239, v150                            // 0000000082F8: D1CB0082 065BDF52
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000008300: D1DD0080 06010381
	v_fma_f32 v129, v64, v239, v150                            // 000000008308: D1CB0081 065BDF40
	v_fma_f32 v131, v83, v239, v150                            // 000000008310: D1CB0083 065BDF53
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000008318: D1DD0080 06010582
	v_fma_f32 v130, v65, v239, v150                            // 000000008320: D1CB0082 065BDF41
	v_cvt_pk_u8_f32 v129, v129, 0, 0                           // 000000008328: D1DD0081 02010181
	v_cvt_pk_u8_f32 v128, v131, 3, v128                        // 000000008330: D1DD0080 06010783
	v_fma_f32 v131, v66, v239, v150                            // 000000008338: D1CB0083 065BDF42
	v_cvt_pk_u8_f32 v129, v130, 1, v129                        // 000000008340: D1DD0081 06050382
	v_fma_f32 v132, v67, v239, v150                            // 000000008348: D1CB0084 065BDF43
	v_cvt_pk_u8_f32 v129, v131, 2, v129                        // 000000008350: D1DD0081 06050583
	v_cvt_pk_u8_f32 v132, v132, 3, v129                        // 000000008358: D1DD0084 06050784
	v_fma_f32 v129, v84, v239, v150                            // 000000008360: D1CB0081 065BDF54
	v_fma_f32 v130, v85, v239, v150                            // 000000008368: D1CB0082 065BDF55
	v_cvt_pk_u8_f32 v129, v129, 0, 0                           // 000000008370: D1DD0081 02010181
	v_fma_f32 v131, v86, v239, v150                            // 000000008378: D1CB0083 065BDF56
	v_cvt_pk_u8_f32 v129, v130, 1, v129                        // 000000008380: D1DD0081 06050382
	v_fma_f32 v130, v68, v239, v150                            // 000000008388: D1CB0082 065BDF44
	v_fma_f32 v133, v87, v239, v150                            // 000000008390: D1CB0085 065BDF57
	v_cvt_pk_u8_f32 v129, v131, 2, v129                        // 000000008398: D1DD0081 06050583
	v_fma_f32 v131, v69, v239, v150                            // 0000000083A0: D1CB0083 065BDF45
	v_cvt_pk_u8_f32 v130, v130, 0, 0                           // 0000000083A8: D1DD0082 02010182
	v_cvt_pk_u8_f32 v129, v133, 3, v129                        // 0000000083B0: D1DD0081 06050785
	v_fma_f32 v133, v70, v239, v150                            // 0000000083B8: D1CB0085 065BDF46
	v_cvt_pk_u8_f32 v130, v131, 1, v130                        // 0000000083C0: D1DD0082 06090383
	v_fma_f32 v134, v71, v239, v150                            // 0000000083C8: D1CB0086 065BDF47
	v_cvt_pk_u8_f32 v130, v133, 2, v130                        // 0000000083D0: D1DD0082 06090585
	v_cvt_pk_u8_f32 v133, v134, 3, v130                        // 0000000083D8: D1DD0085 06090786
	v_fma_f32 v130, v88, v239, v150                            // 0000000083E0: D1CB0082 065BDF58
	v_fma_f32 v131, v89, v239, v150                            // 0000000083E8: D1CB0083 065BDF59
	v_cvt_pk_u8_f32 v130, v130, 0, 0                           // 0000000083F0: D1DD0082 02010182
	v_fma_f32 v134, v90, v239, v150                            // 0000000083F8: D1CB0086 065BDF5A
	v_cvt_pk_u8_f32 v130, v131, 1, v130                        // 000000008400: D1DD0082 06090383
	v_fma_f32 v131, v72, v239, v150                            // 000000008408: D1CB0083 065BDF48
	v_fma_f32 v135, v91, v239, v150                            // 000000008410: D1CB0087 065BDF5B
	v_cvt_pk_u8_f32 v130, v134, 2, v130                        // 000000008418: D1DD0082 06090586
	v_fma_f32 v134, v73, v239, v150                            // 000000008420: D1CB0086 065BDF49
	v_cvt_pk_u8_f32 v131, v131, 0, 0                           // 000000008428: D1DD0083 02010183
	v_cvt_pk_u8_f32 v130, v135, 3, v130                        // 000000008430: D1DD0082 06090787
	v_fma_f32 v135, v74, v239, v150                            // 000000008438: D1CB0087 065BDF4A
	v_cvt_pk_u8_f32 v131, v134, 1, v131                        // 000000008440: D1DD0083 060D0386
	v_fma_f32 v144, v75, v239, v150                            // 000000008448: D1CB0090 065BDF4B
	v_cvt_pk_u8_f32 v131, v135, 2, v131                        // 000000008450: D1DD0083 060D0587
	v_cvt_pk_u8_f32 v134, v144, 3, v131                        // 000000008458: D1DD0086 060D0790
	v_fma_f32 v131, v92, v239, v150                            // 000000008460: D1CB0083 065BDF5C
	v_fma_f32 v135, v93, v239, v150                            // 000000008468: D1CB0087 065BDF5D
	v_cvt_pk_u8_f32 v131, v131, 0, 0                           // 000000008470: D1DD0083 02010183
	v_fma_f32 v144, v94, v239, v150                            // 000000008478: D1CB0090 065BDF5E
	v_cvt_pk_u8_f32 v131, v135, 1, v131                        // 000000008480: D1DD0083 060D0387
	v_fma_f32 v135, v76, v239, v150                            // 000000008488: D1CB0087 065BDF4C
	v_fma_f32 v145, v95, v239, v150                            // 000000008490: D1CB0091 065BDF5F
	v_cvt_pk_u8_f32 v131, v144, 2, v131                        // 000000008498: D1DD0083 060D0590
	v_fma_f32 v144, v77, v239, v150                            // 0000000084A0: D1CB0090 065BDF4D
	v_cvt_pk_u8_f32 v135, v135, 0, 0                           // 0000000084A8: D1DD0087 02010187
	v_cvt_pk_u8_f32 v131, v145, 3, v131                        // 0000000084B0: D1DD0083 060D0791
	v_fma_f32 v145, v78, v239, v150                            // 0000000084B8: D1CB0091 065BDF4E
	v_cvt_pk_u8_f32 v135, v144, 1, v135                        // 0000000084C0: D1DD0087 061D0390
	v_fma_f32 v146, v79, v239, v150                            // 0000000084C8: D1CB0092 065BDF4F
	v_cvt_pk_u8_f32 v135, v145, 2, v135                        // 0000000084D0: D1DD0087 061D0591
	v_cvt_pk_u8_f32 v135, v146, 3, v135                        // 0000000084D8: D1DD0087 061D0792
	s_barrier                                                  // 0000000084E0: BF8A0000
	s_setprio 1                                                // 0000000084E4: BF8F0001
	s_waitcnt vmcnt(0)                                         // 0000000084E8: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[144:147], v[192:199], v[136:143], 0// 0000000084EC: D3AD0090 020311C0
	v_mfma_f32_16x16x128_f8f6f4 v[146:149], v[192:199], v[128:135], 0// 0000000084F4: D3AD0092 020301C0
	ds_read_b64_tr_b8 v[156:157], v253                         // 0000000084FC: D9C40000 9C0000FD
	ds_read_b64_tr_b8 v[158:159], v253 offset:1024             // 000000008504: D9C40400 9E0000FD
	ds_read_b64_tr_b8 v[160:161], v253 offset:2048             // 00000000850C: D9C40800 A00000FD
	ds_read_b64_tr_b8 v[162:163], v253 offset:3072             // 000000008514: D9C40C00 A20000FD
	ds_read_b64_tr_b8 v[164:165], v253 offset:256              // 00000000851C: D9C40100 A40000FD
	ds_read_b64_tr_b8 v[166:167], v253 offset:1280             // 000000008524: D9C40500 A60000FD
	ds_read_b64_tr_b8 v[168:169], v253 offset:2304             // 00000000852C: D9C40900 A80000FD
	ds_read_b64_tr_b8 v[170:171], v253 offset:3328             // 000000008534: D9C40D00 AA0000FD
	ds_read_b64_tr_b8 v[172:173], v253 offset:512              // 00000000853C: D9C40200 AC0000FD
	ds_read_b64_tr_b8 v[174:175], v253 offset:1536             // 000000008544: D9C40600 AE0000FD
	ds_read_b64_tr_b8 v[176:177], v253 offset:2560             // 00000000854C: D9C40A00 B00000FD
	ds_read_b64_tr_b8 v[178:179], v253 offset:3584             // 000000008554: D9C40E00 B20000FD
	s_waitcnt lgkmcnt(4)                                       // 00000000855C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v250 op_sel_hi:[0,0,0]// 000000008560: D3AC0000 0003F5F2 D3AE0830 04C3119C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v250 op_sel_hi:[0,0,0]// 000000008570: D3AC0000 0003F5F2 D3AE0820 048311A4
	ds_read_b64_tr_b8 v[156:157], v253 offset:768              // 000000008580: D9C40300 9C0000FD
	ds_read_b64_tr_b8 v[158:159], v253 offset:1792             // 000000008588: D9C40700 9E0000FD
	ds_read_b64_tr_b8 v[160:161], v253 offset:2816             // 000000008590: D9C40B00 A00000FD
	ds_read_b64_tr_b8 v[162:163], v253 offset:3840             // 000000008598: D9C40F00 A20000FD
	ds_read_b64_tr_b8 v[164:165], v253 offset:4096             // 0000000085A0: D9C41000 A40000FD
	ds_read_b64_tr_b8 v[166:167], v253 offset:5120             // 0000000085A8: D9C41400 A60000FD
	ds_read_b64_tr_b8 v[168:169], v253 offset:6144             // 0000000085B0: D9C41800 A80000FD
	ds_read_b64_tr_b8 v[170:171], v253 offset:7168             // 0000000085B8: D9C41C00 AA0000FD
	s_waitcnt lgkmcnt(4)                                       // 0000000085C0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v250 op_sel_hi:[0,0,0]// 0000000085C4: D3AC0000 0003F5F2 D3AE0810 044311AC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[156:163], v[136:143], v[0:15], v242, v250 op_sel_hi:[0,0,0]// 0000000085D4: D3AC0000 0003F5F2 D3AE0800 0403119C
	ds_read_b64_tr_b8 v[172:173], v253 offset:4352             // 0000000085E4: D9C41100 AC0000FD
	ds_read_b64_tr_b8 v[174:175], v253 offset:5376             // 0000000085EC: D9C41500 AE0000FD
	ds_read_b64_tr_b8 v[176:177], v253 offset:6400             // 0000000085F4: D9C41900 B00000FD
	ds_read_b64_tr_b8 v[178:179], v253 offset:7424             // 0000000085FC: D9C41D00 B20000FD
	ds_read_b64_tr_b8 v[156:157], v253 offset:4608             // 000000008604: D9C41200 9C0000FD
	ds_read_b64_tr_b8 v[158:159], v253 offset:5632             // 00000000860C: D9C41600 9E0000FD
	ds_read_b64_tr_b8 v[160:161], v253 offset:6656             // 000000008614: D9C41A00 A00000FD
	ds_read_b64_tr_b8 v[162:163], v253 offset:7680             // 00000000861C: D9C41E00 A20000FD
	s_waitcnt lgkmcnt(4)                                       // 000000008624: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[164:171], v[128:135], v[48:63], v242, v252 op_sel_hi:[0,0,0]// 000000008628: D3AC0000 0003F9F2 D3AE0830 04C301A4
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[172:179], v[128:135], v[32:47], v242, v252 op_sel_hi:[0,0,0]// 000000008638: D3AC0000 0003F9F2 D3AE0820 048301AC
	ds_read_b64_tr_b8 v[164:165], v253 offset:4864             // 000000008648: D9C41300 A40000FD
	ds_read_b64_tr_b8 v[166:167], v253 offset:5888             // 000000008650: D9C41700 A60000FD
	ds_read_b64_tr_b8 v[168:169], v253 offset:6912             // 000000008658: D9C41B00 A80000FD
	ds_read_b64_tr_b8 v[170:171], v253 offset:7936             // 000000008660: D9C41F00 AA0000FD
	s_add_u32 s19, s79, 4                                      // 000000008668: 8013844F
	s_cmp_ge_u32 s19, s97                                      // 00000000866C: BF096113
	s_cbranch_scc1 12                                          // 000000008670: BF85000C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6ba4>
	s_add_u32 s18, s18, s88                                    // 000000008674: 80125812
	s_mul_i32 s19, s19, s8                                     // 000000008678: 92130813
	s_lshl_b32 s19, s19, 7                                     // 00000000867C: 8E138713
	s_mov_b32 m0, s18                                          // 000000008680: BEFC0012
	s_nop 0                                                    // 000000008684: BF800000
	buffer_load_dwordx4 v233, s[84:87], s19 offen lds          // 000000008688: E05D1000 131500E9
	s_add_u32 m0, s18, 0x2000                                  // 000000008690: 807CFF12 00002000
	s_nop 0                                                    // 000000008698: BF800000
	buffer_load_dwordx4 v234, s[84:87], s19 offen lds          // 00000000869C: E05D1000 131500EA
	s_add_u32 s18, s79, 2                                      // 0000000086A4: 8012824F
	s_cmp_ge_u32 s18, s97                                      // 0000000086A8: BF096112
	s_cbranch_scc1 15                                          // 0000000086AC: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6bec>
	s_xor_b32 s17, s17, 2                                      // 0000000086B0: 88118211
	s_mul_i32 s18, s18, s8                                     // 0000000086B4: 92120812
	s_lshl_b32 s17, s17, 14                                    // 0000000086B8: 8E118E11
	s_add_u32 s19, s48, s17                                    // 0000000086BC: 80131130
	s_add_u32 m0, s19, s88                                     // 0000000086C0: 807C5813
	s_lshl_b32 s18, s18, 7                                     // 0000000086C4: 8E128712
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 0000000086C8: E05D1000 121400EB
	s_add_u32 s17, s48, s17                                    // 0000000086D0: 80111130
	s_add_u32 s17, s17, s88                                    // 0000000086D4: 80115811
	s_add_u32 m0, s17, 0x2000                                  // 0000000086D8: 807CFF11 00002000
	s_nop 0                                                    // 0000000086E0: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 0000000086E4: E05D1000 121400EC
	v_mul_f32_e32 v136, v154, v144                             // 0000000086EC: 0B11219A
	v_mul_f32_e32 v137, v155, v146                             // 0000000086F0: 0B13259B
	v_add_f32_e32 v136, v249, v136                             // 0000000086F4: 031111F9
	v_add_f32_e32 v249, v136, v137                             // 0000000086F8: 03F31388
	s_waitcnt lgkmcnt(0)                                       // 0000000086FC: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[156:163], v[128:135], v[16:31], v242, v252 op_sel_hi:[0,0,0]// 000000008700: D3AC0000 0003F9F2 D3AE0810 0443019C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[164:171], v[128:135], v[0:15], v242, v252 op_sel_hi:[0,0,0]// 000000008710: D3AC0000 0003F9F2 D3AE0800 040301A4
	s_barrier                                                  // 000000008720: BF8A0000
	s_add_u32 s42, s79, 1                                      // 000000008724: 802A814F
	s_branch 62535                                             // 000000008728: BF82F447 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d48>
	s_barrier                                                  // 00000000872C: BF8A0000
	s_waitcnt vmcnt(0)                                         // 000000008730: BF8C0F70
	s_add_u32 s19, s42, 4                                      // 000000008734: 8013842A
	s_cmp_ge_u32 s19, s97                                      // 000000008738: BF096113
	s_cbranch_scc1 12                                          // 00000000873C: BF85000C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6c70>
	s_add_u32 s18, s18, s88                                    // 000000008740: 80125812
	s_mul_i32 s19, s19, s8                                     // 000000008744: 92130813
	s_lshl_b32 s19, s19, 7                                     // 000000008748: 8E138713
	s_mov_b32 m0, s18                                          // 00000000874C: BEFC0012
	s_nop 0                                                    // 000000008750: BF800000
	buffer_load_dwordx4 v233, s[84:87], s19 offen lds          // 000000008754: E05D1000 131500E9
	s_add_u32 m0, s18, 0x2000                                  // 00000000875C: 807CFF12 00002000
	s_nop 0                                                    // 000000008764: BF800000
	buffer_load_dwordx4 v234, s[84:87], s19 offen lds          // 000000008768: E05D1000 131500EA
	s_add_u32 s18, s42, 2                                      // 000000008770: 8012822A
	s_cmp_ge_u32 s18, s97                                      // 000000008774: BF096112
	s_cbranch_scc1 15                                          // 000000008778: BF85000F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6cb8>
	s_xor_b32 s17, s17, 2                                      // 00000000877C: 88118211
	s_mul_i32 s18, s18, s8                                     // 000000008780: 92120812
	s_lshl_b32 s17, s17, 14                                    // 000000008784: 8E118E11
	s_add_u32 s19, s48, s17                                    // 000000008788: 80131130
	s_add_u32 m0, s19, s88                                     // 00000000878C: 807C5813
	s_lshl_b32 s18, s18, 7                                     // 000000008790: 8E128712
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000008794: E05D1000 121400EB
	s_add_u32 s17, s48, s17                                    // 00000000879C: 80111130
	s_add_u32 s17, s17, s88                                    // 0000000087A0: 80115811
	s_add_u32 m0, s17, 0x2000                                  // 0000000087A4: 807CFF11 00002000
	s_nop 0                                                    // 0000000087AC: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 0000000087B0: E05D1000 121400EC
	s_barrier                                                  // 0000000087B8: BF8A0000
	s_add_u32 s42, s42, 1                                      // 0000000087BC: 802A812A
	s_branch 62497                                             // 0000000087C0: BF82F421 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d48>
	s_cmp_ge_u32 s79, s42                                      // 0000000087C4: BF092A4F
	s_cbranch_scc1 356                                         // 0000000087C8: BF850164 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x725c>
	s_waitcnt vmcnt(0)                                         // 0000000087CC: BF8C0F70
	s_barrier                                                  // 0000000087D0: BF8A0000
	s_add_u32 s17, s97, s78                                    // 0000000087D4: 80114E61
	s_and_b32 s24, s17, 3                                      // 0000000087D8: 86188311
	s_cmp_lg_u32 s77, 0                                        // 0000000087DC: BF07804D
	s_cselect_b64 s[18:19], -1, 0                              // 0000000087E0: 859280C1
	s_not_b32 s17, s68                                         // 0000000087E4: BE910444
	s_add_u32 s17, s4, s17                                     // 0000000087E8: 80111104
	s_cmp_eq_u32 s68, s17                                      // 0000000087EC: BF061144
	s_cselect_b64 s[20:21], -1, 0                              // 0000000087F0: 859480C1
	s_or_b64 s[18:19], s[18:19], s[20:21]                      // 0000000087F4: 87921412
	s_and_b64 s[20:21], s[18:19], exec                         // 0000000087F8: 86947E12
	s_mov_b32 s77, 1                                           // 0000000087FC: BECD0081
	s_cbranch_scc0 7                                           // 000000008800: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6d20>
	s_add_u32 s2, s2, s14                                      // 000000008804: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000008808: BF093302
	s_cbranch_scc1 1207                                        // 00000000880C: BF8504B7 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7fec>
	s_lshl_b32 s17, s2, 5                                      // 000000008810: 8E118502
	s_load_dwordx8 s[68:75], s[46:47], s17 offset:0x0          // 000000008814: C00E5117 22000000
	s_mov_b32 s77, 0                                           // 00000000881C: BECD0080
	s_waitcnt lgkmcnt(0)                                       // 000000008820: BF8CC07F
	s_add_u32 s28, s38, s72                                    // 000000008824: 801C4826
	s_addc_u32 s29, s39, s73                                   // 000000008828: 821D4927
	s_add_u32 s80, s40, s72                                    // 00000000882C: 80504828
	s_addc_u32 s81, s41, s73                                   // 000000008830: 82514929
	s_not_b32 s17, s68                                         // 000000008834: BE910444
	s_add_u32 s17, s4, s17                                     // 000000008838: 80111104
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000883C: 86927E12
	s_cselect_b32 s17, s17, s68                                // 000000008840: 85114411
	s_lshl_b32 s18, s17, 5                                     // 000000008844: 8E128511
	s_add_u32 s18, s18, 32                                     // 000000008848: 8012A012
	s_mul_i32 s18, s18, s5                                     // 00000000884C: 92120512
	s_addk_i32 s18, 0x60                                       // 000000008850: B7120060
	s_lshr_b32 s18, s18, 7                                     // 000000008854: 8F128712
	v_readlane_b32 s19, v255, 1                                // 000000008858: D2890013 000103FF
	s_min_u32 s97, s19, s18                                    // 000000008860: 83E11213
	s_and_b64 s[18:19], s[10:11], exec                         // 000000008864: 86927E0A
	s_cbranch_scc0 84                                          // 000000008868: BF840054 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6ebc>
	s_lshl_b32 s18, s24, 14                                    // 00000000886C: 8E128E18
	s_or_b32 s19, s18, s88                                     // 000000008870: 87135812
	s_mov_b32 m0, s19                                          // 000000008874: BEFC0013
	v_readlane_b32 s20, v255, 11                               // 000000008878: D2890014 000117FF
	buffer_load_dwordx4 v233, s[28:31], 0 offen lds            // 000000008880: E05D1000 800700E9
	s_add_u32 m0, s19, 0x1000                                  // 000000008888: 807CFF13 00001000
	s_mov_b32 s82, s30                                         // 000000008890: BED2001E
	s_mov_b32 s83, s31                                         // 000000008894: BED3001F
	s_nop 0                                                    // 000000008898: BF800000
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 00000000889C: E05D1000 140700E9
	s_or_b32 m0, s19, 0x2000                                   // 0000000088A4: 877CFF13 00002000
	v_readlane_b32 s20, v255, 12                               // 0000000088AC: D2890014 000119FF
	s_nop 4                                                    // 0000000088B4: BF800004
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 0000000088B8: E05D1000 140700E9
	s_add_u32 m0, s19, 0x3000                                  // 0000000088C0: 807CFF13 00003000
	s_mul_i32 s19, s8, 0x60                                    // 0000000088C8: 9213FF08 00000060
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 0000000088D0: E05D1000 130700E9
	s_add_u32 s19, s48, s18                                    // 0000000088D8: 80131230
	s_add_u32 m0, s19, s88                                     // 0000000088DC: 807C5813
	s_nop 0                                                    // 0000000088E0: BF800000
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 0000000088E4: E05D1000 801400EB
	s_add_u32 s19, s48, s18                                    // 0000000088EC: 80131230
	s_add_u32 s19, s19, s88                                    // 0000000088F0: 80135813
	s_add_u32 m0, s19, 0x1000                                  // 0000000088F4: 807CFF13 00001000
	s_nop 0                                                    // 0000000088FC: BF800000
	buffer_load_dwordx4 v235, s[80:83], s20 offen lds          // 000000008900: E05D1000 141400EB
	s_add_u32 s19, s48, s18                                    // 000000008908: 80131230
	s_add_u32 s19, s19, s88                                    // 00000000890C: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 000000008910: 807CFF13 00002000
	v_readlane_b32 s19, v255, 13                               // 000000008918: D2890013 00011BFF
	s_nop 4                                                    // 000000008920: BF800004
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000008924: E05D1000 131400EB
	s_add_u32 s18, s48, s18                                    // 00000000892C: 80121230
	s_add_u32 s18, s18, s88                                    // 000000008930: 80125812
	s_add_u32 m0, s18, 0x3000                                  // 000000008934: 807CFF12 00003000
	s_mul_i32 s18, s8, 0x44                                    // 00000000893C: 9212FF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000008944: E05D1000 121400EB
	s_cmp_lt_u32 s97, 2                                        // 00000000894C: BF0A8261
	s_cbranch_scc1 26                                          // 000000008950: BF85001A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6ebc>
	s_add_u32 s18, s24, 1                                      // 000000008954: 80128118
	s_and_b32 s18, s18, 3                                      // 000000008958: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000895C: 8E128E12
	s_or_b32 s18, s18, s88                                     // 000000008960: 87125812
	s_mov_b32 m0, s18                                          // 000000008964: BEFC0012
	s_mul_i32 s19, s8, 0xa0                                    // 000000008968: 9213FF08 000000A0
	buffer_load_dwordx4 v233, s[28:31], s33 offen lds          // 000000008970: E05D1000 210700E9
	s_add_u32 m0, s18, 0x1000                                  // 000000008978: 807CFF12 00001000
	s_nop 0                                                    // 000000008980: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008984: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 00000000898C: 877CFF12 00002000
	s_mul_i32 s19, s8, 0xc0                                    // 000000008994: 9213FF08 000000C0
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 00000000899C: E05D1000 130700E9
	s_add_u32 m0, s18, 0x3000                                  // 0000000089A4: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xe0                                    // 0000000089AC: 9212FF08 000000E0
	buffer_load_dwordx4 v233, s[28:31], s18 offen lds          // 0000000089B4: E05D1000 120700E9
	v_readlane_b32 s18, v255, 7                                // 0000000089BC: D2890012 00010FFF
	s_add_u32 s22, s18, s70                                    // 0000000089C4: 80164612
	v_readlane_b32 s18, v255, 8                                // 0000000089C8: D2890012 000111FF
	s_addc_u32 s23, s18, s71                                   // 0000000089D0: 82174712
	v_readlane_b32 s18, v255, 9                                // 0000000089D4: D2890012 000113FF
	s_add_u32 s20, s18, s74                                    // 0000000089DC: 80144A12
	v_readlane_b32 s18, v255, 10                               // 0000000089E0: D2890012 000115FF
	s_addc_u32 s21, s18, s75                                   // 0000000089E8: 82154B12
	v_readlane_b32 s18, v255, 2                                // 0000000089EC: D2890012 000105FF
	s_add_u32 s18, s69, s18                                    // 0000000089F4: 80121245
	s_lshl_b32 s18, s18, 2                                     // 0000000089F8: 8E128212
	s_add_u32 s25, s44, s18                                    // 0000000089FC: 8019122C
	v_readlane_b32 s18, v255, 3                                // 000000008A00: D2890012 000107FF
	s_addc_u32 s26, s45, 0                                     // 000000008A08: 821A802D
	v_readlane_b32 s19, v255, 4                                // 000000008A0C: D2890013 000109FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008A14: 86927E12
	s_mul_i32 s17, s17, s5                                     // 000000008A18: 92110511
	s_cselect_b32 s18, 0, s25                                  // 000000008A1C: 85121980
	v_readlane_b32 s25, v255, 0                                // 000000008A20: D2890019 000101FF
	s_cselect_b32 s19, 0, s26                                  // 000000008A28: 85131A80
	s_add_u32 s25, s17, s25                                    // 000000008A2C: 80191911
	s_lshl_b32 s17, s25, 5                                     // 000000008A30: 8E118519
	v_or_b32_e32 v64, s17, v216                                // 000000008A34: 2881B011
	s_bfe_u32 s79, s25, 0x190002                               // 000000008A38: 92CFFF19 00190002
	v_mul_lo_u32 v64, v64, s7                                  // 000000008A40: D2850040 00000F40
	scratch_load_dword v65, off, off offset:36                 // 000000008A48: DC504024 417F0000
	s_waitcnt vmcnt(0)                                         // 000000008A50: BF8C0F70
	v_add_u32_e32 v64, v65, v64                                // 000000008A54: 68808141
	global_load_dwordx4 v[220:223], v64, s[22:23]              // 000000008A58: DC5C8000 DC160040
	global_load_dwordx4 v[224:227], v64, s[22:23] offset:16    // 000000008A60: DC5C8010 E0160040
	global_load_dwordx4 v[200:203], v64, s[22:23] offset:64    // 000000008A68: DC5C8040 C8160040
	global_load_dwordx4 v[204:207], v64, s[22:23] offset:80    // 000000008A70: DC5C8050 CC160040
	s_mov_b32 s83, 0x110000                                    // 000000008A78: BED300FF 00110000
	s_mov_b32 s22, 1                                           // 000000008A80: BE960081
	s_mov_b32 s43, 0x110000                                    // 000000008A84: BEAB00FF 00110000
	s_branch 1179                                              // 000000008A8C: BF82049B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x81fc>
	s_cmp_ge_u32 s79, s42                                      // 000000008A90: BF092A4F
	s_cbranch_scc1 611                                         // 000000008A94: BF850263 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7924>
	s_waitcnt vmcnt(0)                                         // 000000008A98: BF8C0F70
	s_barrier                                                  // 000000008A9C: BF8A0000
	s_add_u32 s17, s97, s78                                    // 000000008AA0: 80114E61
	s_and_b32 s24, s17, 3                                      // 000000008AA4: 86188311
	s_cmp_lg_u32 s77, 0                                        // 000000008AA8: BF07804D
	s_cselect_b64 s[18:19], -1, 0                              // 000000008AAC: 859280C1
	s_not_b32 s17, s68                                         // 000000008AB0: BE910444
	s_add_u32 s17, s4, s17                                     // 000000008AB4: 80111104
	s_cmp_eq_u32 s68, s17                                      // 000000008AB8: BF061144
	s_cselect_b64 s[20:21], -1, 0                              // 000000008ABC: 859480C1
	s_or_b64 s[18:19], s[18:19], s[20:21]                      // 000000008AC0: 87921412
	s_and_b64 s[20:21], s[18:19], exec                         // 000000008AC4: 86947E12
	s_mov_b32 s77, 1                                           // 000000008AC8: BECD0081
	s_cbranch_scc0 7                                           // 000000008ACC: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6fec>
	s_add_u32 s2, s2, s14                                      // 000000008AD0: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000008AD4: BF093302
	s_cbranch_scc1 1034                                        // 000000008AD8: BF85040A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8004>
	s_lshl_b32 s17, s2, 5                                      // 000000008ADC: 8E118502
	s_load_dwordx8 s[68:75], s[46:47], s17 offset:0x0          // 000000008AE0: C00E5117 22000000
	s_mov_b32 s77, 0                                           // 000000008AE8: BECD0080
	s_waitcnt lgkmcnt(0)                                       // 000000008AEC: BF8CC07F
	s_add_u32 s28, s38, s72                                    // 000000008AF0: 801C4826
	s_addc_u32 s29, s39, s73                                   // 000000008AF4: 821D4927
	s_add_u32 s80, s40, s72                                    // 000000008AF8: 80504828
	s_addc_u32 s81, s41, s73                                   // 000000008AFC: 82514929
	s_not_b32 s17, s68                                         // 000000008B00: BE910444
	s_add_u32 s17, s4, s17                                     // 000000008B04: 80111104
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008B08: 86927E12
	s_cselect_b32 s17, s17, s68                                // 000000008B0C: 85114411
	s_lshl_b32 s18, s17, 5                                     // 000000008B10: 8E128511
	s_add_u32 s18, s18, 32                                     // 000000008B14: 8012A012
	s_mul_i32 s18, s18, s5                                     // 000000008B18: 92120512
	s_addk_i32 s18, 0x60                                       // 000000008B1C: B7120060
	s_lshr_b32 s18, s18, 7                                     // 000000008B20: 8F128712
	v_readlane_b32 s19, v255, 1                                // 000000008B24: D2890013 000103FF
	s_min_u32 s97, s19, s18                                    // 000000008B2C: 83E11213
	s_and_b64 s[18:19], s[10:11], exec                         // 000000008B30: 86927E0A
	s_cbranch_scc0 84                                          // 000000008B34: BF840054 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7188>
	s_lshl_b32 s18, s24, 14                                    // 000000008B38: 8E128E18
	s_or_b32 s19, s18, s88                                     // 000000008B3C: 87135812
	s_mov_b32 m0, s19                                          // 000000008B40: BEFC0013
	v_readlane_b32 s20, v255, 11                               // 000000008B44: D2890014 000117FF
	buffer_load_dwordx4 v233, s[28:31], 0 offen lds            // 000000008B4C: E05D1000 800700E9
	s_add_u32 m0, s19, 0x1000                                  // 000000008B54: 807CFF13 00001000
	s_mov_b32 s82, s30                                         // 000000008B5C: BED2001E
	s_mov_b32 s83, s31                                         // 000000008B60: BED3001F
	s_nop 0                                                    // 000000008B64: BF800000
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000008B68: E05D1000 140700E9
	s_or_b32 m0, s19, 0x2000                                   // 000000008B70: 877CFF13 00002000
	v_readlane_b32 s20, v255, 12                               // 000000008B78: D2890014 000119FF
	s_nop 4                                                    // 000000008B80: BF800004
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000008B84: E05D1000 140700E9
	s_add_u32 m0, s19, 0x3000                                  // 000000008B8C: 807CFF13 00003000
	s_mul_i32 s19, s8, 0x60                                    // 000000008B94: 9213FF08 00000060
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008B9C: E05D1000 130700E9
	s_add_u32 s19, s48, s18                                    // 000000008BA4: 80131230
	s_add_u32 m0, s19, s88                                     // 000000008BA8: 807C5813
	s_nop 0                                                    // 000000008BAC: BF800000
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 000000008BB0: E05D1000 801400EB
	s_add_u32 s19, s48, s18                                    // 000000008BB8: 80131230
	s_add_u32 s19, s19, s88                                    // 000000008BBC: 80135813
	s_add_u32 m0, s19, 0x1000                                  // 000000008BC0: 807CFF13 00001000
	s_nop 0                                                    // 000000008BC8: BF800000
	buffer_load_dwordx4 v235, s[80:83], s20 offen lds          // 000000008BCC: E05D1000 141400EB
	s_add_u32 s19, s48, s18                                    // 000000008BD4: 80131230
	s_add_u32 s19, s19, s88                                    // 000000008BD8: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 000000008BDC: 807CFF13 00002000
	v_readlane_b32 s19, v255, 13                               // 000000008BE4: D2890013 00011BFF
	s_nop 4                                                    // 000000008BEC: BF800004
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000008BF0: E05D1000 131400EB
	s_add_u32 s18, s48, s18                                    // 000000008BF8: 80121230
	s_add_u32 s18, s18, s88                                    // 000000008BFC: 80125812
	s_add_u32 m0, s18, 0x3000                                  // 000000008C00: 807CFF12 00003000
	s_mul_i32 s18, s8, 0x44                                    // 000000008C08: 9212FF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000008C10: E05D1000 121400EB
	s_cmp_lt_u32 s97, 2                                        // 000000008C18: BF0A8261
	s_cbranch_scc1 26                                          // 000000008C1C: BF85001A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7188>
	s_add_u32 s18, s24, 1                                      // 000000008C20: 80128118
	s_and_b32 s18, s18, 3                                      // 000000008C24: 86128312
	s_lshl_b32 s18, s18, 14                                    // 000000008C28: 8E128E12
	s_or_b32 s18, s18, s88                                     // 000000008C2C: 87125812
	s_mov_b32 m0, s18                                          // 000000008C30: BEFC0012
	s_mul_i32 s19, s8, 0xa0                                    // 000000008C34: 9213FF08 000000A0
	buffer_load_dwordx4 v233, s[28:31], s33 offen lds          // 000000008C3C: E05D1000 210700E9
	s_add_u32 m0, s18, 0x1000                                  // 000000008C44: 807CFF12 00001000
	s_nop 0                                                    // 000000008C4C: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008C50: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 000000008C58: 877CFF12 00002000
	s_mul_i32 s19, s8, 0xc0                                    // 000000008C60: 9213FF08 000000C0
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000008C68: E05D1000 130700E9
	s_add_u32 m0, s18, 0x3000                                  // 000000008C70: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xe0                                    // 000000008C78: 9212FF08 000000E0
	buffer_load_dwordx4 v233, s[28:31], s18 offen lds          // 000000008C80: E05D1000 120700E9
	v_readlane_b32 s18, v255, 7                                // 000000008C88: D2890012 00010FFF
	s_add_u32 s22, s18, s70                                    // 000000008C90: 80164612
	v_readlane_b32 s18, v255, 8                                // 000000008C94: D2890012 000111FF
	s_addc_u32 s23, s18, s71                                   // 000000008C9C: 82174712
	v_readlane_b32 s18, v255, 9                                // 000000008CA0: D2890012 000113FF
	s_add_u32 s20, s18, s74                                    // 000000008CA8: 80144A12
	v_readlane_b32 s18, v255, 10                               // 000000008CAC: D2890012 000115FF
	s_addc_u32 s21, s18, s75                                   // 000000008CB4: 82154B12
	v_readlane_b32 s18, v255, 2                                // 000000008CB8: D2890012 000105FF
	s_add_u32 s18, s69, s18                                    // 000000008CC0: 80121245
	s_lshl_b32 s18, s18, 2                                     // 000000008CC4: 8E128212
	s_add_u32 s25, s44, s18                                    // 000000008CC8: 8019122C
	v_readlane_b32 s18, v255, 3                                // 000000008CCC: D2890012 000107FF
	s_addc_u32 s26, s45, 0                                     // 000000008CD4: 821A802D
	v_readlane_b32 s19, v255, 4                                // 000000008CD8: D2890013 000109FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008CE0: 86927E12
	s_mul_i32 s17, s17, s5                                     // 000000008CE4: 92110511
	s_cselect_b32 s18, 0, s25                                  // 000000008CE8: 85121980
	v_readlane_b32 s25, v255, 0                                // 000000008CEC: D2890019 000101FF
	s_cselect_b32 s19, 0, s26                                  // 000000008CF4: 85131A80
	s_add_u32 s25, s17, s25                                    // 000000008CF8: 80191911
	s_lshl_b32 s17, s25, 5                                     // 000000008CFC: 8E118519
	v_or_b32_e32 v64, s17, v216                                // 000000008D00: 2881B011
	s_bfe_u32 s79, s25, 0x190002                               // 000000008D04: 92CFFF19 00190002
	v_mul_lo_u32 v64, v64, s7                                  // 000000008D0C: D2850040 00000F40
	scratch_load_dword v65, off, off offset:36                 // 000000008D14: DC504024 417F0000
	s_waitcnt vmcnt(0)                                         // 000000008D1C: BF8C0F70
	v_add_u32_e32 v64, v65, v64                                // 000000008D20: 68808141
	global_load_dwordx4 v[220:223], v64, s[22:23]              // 000000008D24: DC5C8000 DC160040
	global_load_dwordx4 v[224:227], v64, s[22:23] offset:16    // 000000008D2C: DC5C8010 E0160040
	global_load_dwordx4 v[200:203], v64, s[22:23] offset:64    // 000000008D34: DC5C8040 C8160040
	global_load_dwordx4 v[204:207], v64, s[22:23] offset:80    // 000000008D3C: DC5C8050 CC160040
	s_mov_b32 s83, 0x110000                                    // 000000008D44: BED300FF 00110000
	s_mov_b32 s22, 1                                           // 000000008D4C: BE960081
	s_mov_b32 s43, 0x110000                                    // 000000008D50: BEAB00FF 00110000
	s_branch 1126                                              // 000000008D58: BF820466 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x83f4>
	s_setprio 0                                                // 000000008D5C: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000008D60: D1CB0070 0663DF70
	v_fma_f32 v96, v96, v239, v152                             // 000000008D68: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 000000008D70: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 000000008D78: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 000000008D80: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 000000008D88: D1CB0068 0663DF68
	v_fma_f32 v124, v124, v239, v152                           // 000000008D90: D1CB007C 0663DF7C
	v_fma_f32 v108, v108, v239, v152                           // 000000008D98: D1CB006C 0663DF6C
	v_fma_f32 v80, v80, v239, v150                             // 000000008DA0: D1CB0050 065BDF50
	v_fma_f32 v64, v64, v239, v150                             // 000000008DA8: D1CB0040 065BDF40
	v_fma_f32 v84, v84, v239, v150                             // 000000008DB0: D1CB0054 065BDF54
	v_fma_f32 v68, v68, v239, v150                             // 000000008DB8: D1CB0044 065BDF44
	v_fma_f32 v88, v88, v239, v150                             // 000000008DC0: D1CB0058 065BDF58
	v_fma_f32 v72, v72, v239, v150                             // 000000008DC8: D1CB0048 065BDF48
	v_fma_f32 v128, v75, v239, v150                            // 000000008DD0: D1CB0080 065BDF4B
	v_fma_f32 v75, v92, v239, v150                             // 000000008DD8: D1CB004B 065BDF5C
	v_fma_f32 v76, v76, v239, v150                             // 000000008DE0: D1CB004C 065BDF4C
	v_fma_f32 v113, v113, v239, v152                           // 000000008DE8: D1CB0071 0663DF71
	v_fma_f32 v97, v97, v239, v152                             // 000000008DF0: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 000000008DF8: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 000000008E00: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 000000008E08: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 000000008E10: D1CB0069 0663DF69
	v_fma_f32 v125, v125, v239, v152                           // 000000008E18: D1CB007D 0663DF7D
	v_fma_f32 v109, v109, v239, v152                           // 000000008E20: D1CB006D 0663DF6D
	v_fma_f32 v81, v81, v239, v150                             // 000000008E28: D1CB0051 065BDF51
	v_fma_f32 v65, v65, v239, v150                             // 000000008E30: D1CB0041 065BDF41
	v_fma_f32 v85, v85, v239, v150                             // 000000008E38: D1CB0055 065BDF55
	v_fma_f32 v69, v69, v239, v150                             // 000000008E40: D1CB0045 065BDF45
	v_fma_f32 v89, v89, v239, v150                             // 000000008E48: D1CB0059 065BDF59
	v_fma_f32 v73, v73, v239, v150                             // 000000008E50: D1CB0049 065BDF49
	v_fma_f32 v92, v93, v239, v150                             // 000000008E58: D1CB005C 065BDF5D
	v_fma_f32 v93, v94, v239, v150                             // 000000008E60: D1CB005D 065BDF5E
	v_fma_f32 v94, v95, v239, v150                             // 000000008E68: D1CB005E 065BDF5F
	v_fma_f32 v77, v77, v239, v150                             // 000000008E70: D1CB004D 065BDF4D
	v_fma_f32 v95, v79, v239, v150                             // 000000008E78: D1CB005F 065BDF4F
	v_cvt_pk_u8_f32 v79, v112, 0, 0                            // 000000008E80: D1DD004F 02010170
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000008E88: D1DD0060 02010160
	v_cvt_pk_u8_f32 v112, v116, 0, 0                           // 000000008E90: D1DD0070 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000008E98: D1DD0064 02010164
	v_cvt_pk_u8_f32 v116, v120, 0, 0                           // 000000008EA0: D1DD0074 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000008EA8: D1DD0068 02010168
	v_cvt_pk_u8_f32 v120, v124, 0, 0                           // 000000008EB0: D1DD0078 0201017C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000008EB8: D1DD006C 0201016C
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000008EC0: D1DD0050 02010150
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000008EC8: D1DD0040 02010140
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000008ED0: D1DD0054 02010154
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000008ED8: D1DD0044 02010144
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000008EE0: D1DD0058 02010158
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000008EE8: D1DD0048 02010148
	v_cvt_pk_u8_f32 v75, v75, 0, 0                             // 000000008EF0: D1DD004B 0201014B
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000008EF8: D1DD004C 0201014C
	v_fma_f32 v114, v114, v239, v152                           // 000000008F00: D1CB0072 0663DF72
	v_fma_f32 v98, v98, v239, v152                             // 000000008F08: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 000000008F10: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 000000008F18: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 000000008F20: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 000000008F28: D1CB006A 0663DF6A
	v_fma_f32 v126, v126, v239, v152                           // 000000008F30: D1CB007E 0663DF7E
	v_fma_f32 v110, v110, v239, v152                           // 000000008F38: D1CB006E 0663DF6E
	v_fma_f32 v82, v82, v239, v150                             // 000000008F40: D1CB0052 065BDF52
	v_fma_f32 v66, v66, v239, v150                             // 000000008F48: D1CB0042 065BDF42
	v_fma_f32 v86, v86, v239, v150                             // 000000008F50: D1CB0056 065BDF56
	v_fma_f32 v70, v70, v239, v150                             // 000000008F58: D1CB0046 065BDF46
	v_fma_f32 v90, v90, v239, v150                             // 000000008F60: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 000000008F68: D1CB004A 065BDF4A
	v_fma_f32 v78, v78, v239, v150                             // 000000008F70: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v79, v113, 1, v79                          // 000000008F78: D1DD004F 053D0371
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000008F80: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v112                         // 000000008F88: D1DD0061 05C10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 000000008F90: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v116                        // 000000008F98: D1DD0065 05D10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 000000008FA0: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v105, v125, 1, v120                        // 000000008FA8: D1DD0069 05E1037D
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 000000008FB0: D1DD006C 05B1036D
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000008FB8: D1DD0050 05410351
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000008FC0: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 000000008FC8: D1DD0041 05510355
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 000000008FD0: D1DD0044 05110345
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 000000008FD8: D1DD0045 05610359
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 000000008FE0: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v92, 1, v75                           // 000000008FE8: D1DD0049 052D035C
	v_cvt_pk_u8_f32 v75, v77, 1, v76                           // 000000008FF0: D1DD004B 0531034D
	v_fma_f32 v115, v115, v239, v152                           // 000000008FF8: D1CB0073 0663DF73
	v_fma_f32 v99, v99, v239, v152                             // 000000009000: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 000000009008: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 000000009010: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 000000009018: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 000000009020: D1CB006B 0663DF6B
	v_fma_f32 v127, v127, v239, v152                           // 000000009028: D1CB007F 0663DF7F
	v_fma_f32 v111, v111, v239, v152                           // 000000009030: D1CB006F 0663DF6F
	v_fma_f32 v83, v83, v239, v150                             // 000000009038: D1CB0053 065BDF53
	v_fma_f32 v67, v67, v239, v150                             // 000000009040: D1CB0043 065BDF43
	v_fma_f32 v87, v87, v239, v150                             // 000000009048: D1CB0057 065BDF57
	v_fma_f32 v71, v71, v239, v150                             // 000000009050: D1CB0047 065BDF47
	v_fma_f32 v91, v91, v239, v150                             // 000000009058: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v76, v114, 2, v79                          // 000000009060: D1DD004C 053D0572
	v_cvt_pk_u8_f32 v77, v98, 2, v96                           // 000000009068: D1DD004D 05810562
	v_cvt_pk_u8_f32 v79, v118, 2, v97                          // 000000009070: D1DD004F 05850576
	v_cvt_pk_u8_f32 v81, v102, 2, v100                         // 000000009078: D1DD0051 05910566
	v_cvt_pk_u8_f32 v84, v122, 2, v101                         // 000000009080: D1DD0054 0595057A
	v_cvt_pk_u8_f32 v85, v106, 2, v104                         // 000000009088: D1DD0055 05A1056A
	v_cvt_pk_u8_f32 v88, v126, 2, v105                         // 000000009090: D1DD0058 05A5057E
	v_cvt_pk_u8_f32 v89, v110, 2, v108                         // 000000009098: D1DD0059 05B1056E
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 0000000090A0: D1DD0050 05410552
	v_cvt_pk_u8_f32 v66, v66, 2, v64                           // 0000000090A8: D1DD0042 05010542
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 0000000090B0: D1DD0041 05050556
	v_cvt_pk_u8_f32 v70, v70, 2, v68                           // 0000000090B8: D1DD0046 05110546
	v_cvt_pk_u8_f32 v82, v90, 2, v69                           // 0000000090C0: D1DD0052 0515055A
	v_cvt_pk_u8_f32 v86, v74, 2, v72                           // 0000000090C8: D1DD0056 0521054A
	v_cvt_pk_u8_f32 v90, v93, 2, v73                           // 0000000090D0: D1DD005A 0525055D
	v_cvt_pk_u8_f32 v92, v78, 2, v75                           // 0000000090D8: D1DD005C 052D054E
	s_mov_b32 s25, 1                                           // 0000000090E0: BE990081
	v_cvt_pk_u8_f32 v72, v115, 3, v76                          // 0000000090E4: D1DD0048 05310773
	v_cvt_pk_u8_f32 v76, v99, 3, v77                           // 0000000090EC: D1DD004C 05350763
	v_cvt_pk_u8_f32 v73, v119, 3, v79                          // 0000000090F4: D1DD0049 053D0777
	v_cvt_pk_u8_f32 v77, v103, 3, v81                          // 0000000090FC: D1DD004D 05450767
	v_cvt_pk_u8_f32 v74, v123, 3, v84                          // 000000009104: D1DD004A 0551077B
	v_cvt_pk_u8_f32 v78, v107, 3, v85                          // 00000000910C: D1DD004E 0555076B
	v_cvt_pk_u8_f32 v75, v127, 3, v88                          // 000000009114: D1DD004B 0561077F
	v_cvt_pk_u8_f32 v79, v111, 3, v89                          // 00000000911C: D1DD004F 0565076F
	v_cvt_pk_u8_f32 v64, v83, 3, v80                           // 000000009124: D1DD0040 05410753
	v_cvt_pk_u8_f32 v68, v67, 3, v66                           // 00000000912C: D1DD0044 05090743
	v_cvt_pk_u8_f32 v65, v87, 3, v65                           // 000000009134: D1DD0041 05050757
	v_cvt_pk_u8_f32 v69, v71, 3, v70                           // 00000000913C: D1DD0045 05190747
	v_cvt_pk_u8_f32 v66, v91, 3, v82                           // 000000009144: D1DD0042 0549075B
	v_cvt_pk_u8_f32 v70, v128, 3, v86                          // 00000000914C: D1DD0046 05590780
	v_cvt_pk_u8_f32 v67, v94, 3, v90                           // 000000009154: D1DD0043 0569075E
	v_cvt_pk_u8_f32 v71, v95, 3, v92                           // 00000000915C: D1DD0047 0571075F
	s_waitcnt vmcnt(0)                                         // 000000009164: BF8C0F70
	s_barrier                                                  // 000000009168: BF8A0000
	s_add_u32 s17, s97, s78                                    // 00000000916C: 80114E61
	s_and_b32 s24, s17, 3                                      // 000000009170: 86188311
	s_cmp_lg_u32 s77, 0                                        // 000000009174: BF07804D
	s_cselect_b64 s[18:19], -1, 0                              // 000000009178: 859280C1
	s_not_b32 s17, s68                                         // 00000000917C: BE910444
	s_add_u32 s17, s4, s17                                     // 000000009180: 80111104
	s_cmp_eq_u32 s68, s17                                      // 000000009184: BF061144
	s_cselect_b64 s[20:21], -1, 0                              // 000000009188: 859480C1
	s_or_b64 s[18:19], s[18:19], s[20:21]                      // 00000000918C: 87921412
	s_and_b64 s[20:21], s[18:19], exec                         // 000000009190: 86947E12
	s_cbranch_scc0 7                                           // 000000009194: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x76b4>
	s_add_u32 s2, s2, s14                                      // 000000009198: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 00000000919C: BF093302
	s_mov_b32 s25, 0                                           // 0000000091A0: BE990080
	s_cbranch_scc1 605                                         // 0000000091A4: BF85025D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x801c>
	s_lshl_b32 s17, s2, 5                                      // 0000000091A8: 8E118502
	s_load_dwordx8 s[68:75], s[46:47], s17 offset:0x0          // 0000000091AC: C00E5117 22000000
	s_waitcnt lgkmcnt(0)                                       // 0000000091B4: BF8CC07F
	s_add_u32 s28, s38, s72                                    // 0000000091B8: 801C4826
	s_addc_u32 s29, s39, s73                                   // 0000000091BC: 821D4927
	s_add_u32 s80, s40, s72                                    // 0000000091C0: 80504828
	s_addc_u32 s81, s41, s73                                   // 0000000091C4: 82514929
	s_not_b32 s17, s68                                         // 0000000091C8: BE910444
	s_add_u32 s17, s4, s17                                     // 0000000091CC: 80111104
	s_and_b64 s[18:19], s[18:19], exec                         // 0000000091D0: 86927E12
	s_cselect_b32 s17, s17, s68                                // 0000000091D4: 85114411
	s_lshl_b32 s18, s17, 5                                     // 0000000091D8: 8E128511
	s_add_u32 s18, s18, 32                                     // 0000000091DC: 8012A012
	s_mul_i32 s18, s18, s5                                     // 0000000091E0: 92120512
	s_addk_i32 s18, 0x60                                       // 0000000091E4: B7120060
	s_lshr_b32 s18, s18, 7                                     // 0000000091E8: 8F128712
	v_readlane_b32 s19, v255, 1                                // 0000000091EC: D2890013 000103FF
	s_min_u32 s97, s19, s18                                    // 0000000091F4: 83E11213
	s_and_b64 s[18:19], s[10:11], exec                         // 0000000091F8: 86927E0A
	s_cbranch_scc0 84                                          // 0000000091FC: BF840054 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7850>
	s_lshl_b32 s18, s24, 14                                    // 000000009200: 8E128E18
	s_or_b32 s19, s18, s88                                     // 000000009204: 87135812
	s_mov_b32 m0, s19                                          // 000000009208: BEFC0013
	v_readlane_b32 s20, v255, 11                               // 00000000920C: D2890014 000117FF
	buffer_load_dwordx4 v233, s[28:31], 0 offen lds            // 000000009214: E05D1000 800700E9
	s_add_u32 m0, s19, 0x1000                                  // 00000000921C: 807CFF13 00001000
	s_mov_b32 s82, s30                                         // 000000009224: BED2001E
	s_mov_b32 s83, s31                                         // 000000009228: BED3001F
	s_nop 0                                                    // 00000000922C: BF800000
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000009230: E05D1000 140700E9
	s_or_b32 m0, s19, 0x2000                                   // 000000009238: 877CFF13 00002000
	v_readlane_b32 s20, v255, 12                               // 000000009240: D2890014 000119FF
	s_nop 4                                                    // 000000009248: BF800004
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 00000000924C: E05D1000 140700E9
	s_add_u32 m0, s19, 0x3000                                  // 000000009254: 807CFF13 00003000
	s_mul_i32 s19, s8, 0x60                                    // 00000000925C: 9213FF08 00000060
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000009264: E05D1000 130700E9
	s_add_u32 s19, s48, s18                                    // 00000000926C: 80131230
	s_add_u32 m0, s19, s88                                     // 000000009270: 807C5813
	s_nop 0                                                    // 000000009274: BF800000
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 000000009278: E05D1000 801400EB
	s_add_u32 s19, s48, s18                                    // 000000009280: 80131230
	s_add_u32 s19, s19, s88                                    // 000000009284: 80135813
	s_add_u32 m0, s19, 0x1000                                  // 000000009288: 807CFF13 00001000
	s_nop 0                                                    // 000000009290: BF800000
	buffer_load_dwordx4 v235, s[80:83], s20 offen lds          // 000000009294: E05D1000 141400EB
	s_add_u32 s19, s48, s18                                    // 00000000929C: 80131230
	s_add_u32 s19, s19, s88                                    // 0000000092A0: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 0000000092A4: 807CFF13 00002000
	v_readlane_b32 s19, v255, 13                               // 0000000092AC: D2890013 00011BFF
	s_nop 4                                                    // 0000000092B4: BF800004
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 0000000092B8: E05D1000 131400EB
	s_add_u32 s18, s48, s18                                    // 0000000092C0: 80121230
	s_add_u32 s18, s18, s88                                    // 0000000092C4: 80125812
	s_add_u32 m0, s18, 0x3000                                  // 0000000092C8: 807CFF12 00003000
	s_mul_i32 s18, s8, 0x44                                    // 0000000092D0: 9212FF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 0000000092D8: E05D1000 121400EB
	s_cmp_lt_u32 s97, 2                                        // 0000000092E0: BF0A8261
	s_cbranch_scc1 26                                          // 0000000092E4: BF85001A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7850>
	s_add_u32 s18, s24, 1                                      // 0000000092E8: 80128118
	s_and_b32 s18, s18, 3                                      // 0000000092EC: 86128312
	s_lshl_b32 s18, s18, 14                                    // 0000000092F0: 8E128E12
	s_or_b32 s18, s18, s88                                     // 0000000092F4: 87125812
	s_mov_b32 m0, s18                                          // 0000000092F8: BEFC0012
	s_mul_i32 s19, s8, 0xa0                                    // 0000000092FC: 9213FF08 000000A0
	buffer_load_dwordx4 v233, s[28:31], s33 offen lds          // 000000009304: E05D1000 210700E9
	s_add_u32 m0, s18, 0x1000                                  // 00000000930C: 807CFF12 00001000
	s_nop 0                                                    // 000000009314: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000009318: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 000000009320: 877CFF12 00002000
	s_mul_i32 s19, s8, 0xc0                                    // 000000009328: 9213FF08 000000C0
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 000000009330: E05D1000 130700E9
	s_add_u32 m0, s18, 0x3000                                  // 000000009338: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xe0                                    // 000000009340: 9212FF08 000000E0
	buffer_load_dwordx4 v233, s[28:31], s18 offen lds          // 000000009348: E05D1000 120700E9
	v_readlane_b32 s18, v255, 7                                // 000000009350: D2890012 00010FFF
	s_add_u32 s22, s18, s70                                    // 000000009358: 80164612
	v_readlane_b32 s18, v255, 8                                // 00000000935C: D2890012 000111FF
	s_addc_u32 s23, s18, s71                                   // 000000009364: 82174712
	v_readlane_b32 s18, v255, 9                                // 000000009368: D2890012 000113FF
	s_add_u32 s20, s18, s74                                    // 000000009370: 80144A12
	v_readlane_b32 s18, v255, 10                               // 000000009374: D2890012 000115FF
	s_addc_u32 s21, s18, s75                                   // 00000000937C: 82154B12
	v_readlane_b32 s18, v255, 2                                // 000000009380: D2890012 000105FF
	s_add_u32 s18, s69, s18                                    // 000000009388: 80121245
	s_lshl_b32 s18, s18, 2                                     // 00000000938C: 8E128212
	s_add_u32 s26, s44, s18                                    // 000000009390: 801A122C
	v_readlane_b32 s18, v255, 3                                // 000000009394: D2890012 000107FF
	s_addc_u32 s27, s45, 0                                     // 00000000939C: 821B802D
	v_readlane_b32 s19, v255, 4                                // 0000000093A0: D2890013 000109FF
	s_and_b64 s[18:19], s[18:19], exec                         // 0000000093A8: 86927E12
	s_cselect_b32 s18, 0, s26                                  // 0000000093AC: 85121A80
	s_mul_i32 s17, s17, s5                                     // 0000000093B0: 92110511
	v_readlane_b32 s26, v255, 0                                // 0000000093B4: D289001A 000101FF
	s_cselect_b32 s19, 0, s27                                  // 0000000093BC: 85131B80
	s_add_u32 s26, s17, s26                                    // 0000000093C0: 801A1A11
	s_lshl_b32 s17, s26, 5                                     // 0000000093C4: 8E11851A
	s_bfe_u32 s79, s26, 0x190002                               // 0000000093C8: 92CFFF1A 00190002
	v_or_b32_e32 v80, s17, v216                                // 0000000093D0: 28A1B011
	v_mul_lo_u32 v80, v80, s7                                  // 0000000093D4: D2850050 00000F50
	scratch_load_dword v81, off, off offset:36                 // 0000000093DC: DC504024 517F0000
	s_waitcnt vmcnt(0)                                         // 0000000093E4: BF8C0F70
	v_add_u32_e32 v80, v81, v80                                // 0000000093E8: 68A0A151
	global_load_dwordx4 v[220:223], v80, s[22:23]              // 0000000093EC: DC5C8000 DC160050
	global_load_dwordx4 v[224:227], v80, s[22:23] offset:16    // 0000000093F4: DC5C8010 E0160050
	global_load_dwordx4 v[200:203], v80, s[22:23] offset:64    // 0000000093FC: DC5C8040 C8160050
	global_load_dwordx4 v[204:207], v80, s[22:23] offset:80    // 000000009404: DC5C8050 CC160050
	s_mov_b32 s83, 0x110000                                    // 00000000940C: BED300FF 00110000
	s_mov_b32 s22, 1                                           // 000000009414: BE960081
	s_mov_b32 s43, 0x110000                                    // 000000009418: BEAB00FF 00110000
	s_branch 450                                               // 000000009420: BF8201C2 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x802c>
	s_setprio 0                                                // 000000009424: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000009428: D1CB0070 0663DF70
	v_fma_f32 v96, v96, v239, v152                             // 000000009430: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 000000009438: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 000000009440: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 000000009448: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 000000009450: D1CB0068 0663DF68
	v_fma_f32 v124, v124, v239, v152                           // 000000009458: D1CB007C 0663DF7C
	v_fma_f32 v108, v108, v239, v152                           // 000000009460: D1CB006C 0663DF6C
	v_fma_f32 v80, v80, v239, v150                             // 000000009468: D1CB0050 065BDF50
	v_fma_f32 v64, v64, v239, v150                             // 000000009470: D1CB0040 065BDF40
	v_fma_f32 v84, v84, v239, v150                             // 000000009478: D1CB0054 065BDF54
	v_fma_f32 v68, v68, v239, v150                             // 000000009480: D1CB0044 065BDF44
	v_fma_f32 v88, v88, v239, v150                             // 000000009488: D1CB0058 065BDF58
	v_fma_f32 v72, v72, v239, v150                             // 000000009490: D1CB0048 065BDF48
	v_fma_f32 v128, v75, v239, v150                            // 000000009498: D1CB0080 065BDF4B
	v_fma_f32 v75, v92, v239, v150                             // 0000000094A0: D1CB004B 065BDF5C
	v_fma_f32 v76, v76, v239, v150                             // 0000000094A8: D1CB004C 065BDF4C
	v_fma_f32 v113, v113, v239, v152                           // 0000000094B0: D1CB0071 0663DF71
	v_fma_f32 v97, v97, v239, v152                             // 0000000094B8: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 0000000094C0: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 0000000094C8: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 0000000094D0: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 0000000094D8: D1CB0069 0663DF69
	v_fma_f32 v125, v125, v239, v152                           // 0000000094E0: D1CB007D 0663DF7D
	v_fma_f32 v109, v109, v239, v152                           // 0000000094E8: D1CB006D 0663DF6D
	v_fma_f32 v81, v81, v239, v150                             // 0000000094F0: D1CB0051 065BDF51
	v_fma_f32 v65, v65, v239, v150                             // 0000000094F8: D1CB0041 065BDF41
	v_fma_f32 v85, v85, v239, v150                             // 000000009500: D1CB0055 065BDF55
	v_fma_f32 v69, v69, v239, v150                             // 000000009508: D1CB0045 065BDF45
	v_fma_f32 v89, v89, v239, v150                             // 000000009510: D1CB0059 065BDF59
	v_fma_f32 v73, v73, v239, v150                             // 000000009518: D1CB0049 065BDF49
	v_fma_f32 v92, v93, v239, v150                             // 000000009520: D1CB005C 065BDF5D
	v_fma_f32 v93, v94, v239, v150                             // 000000009528: D1CB005D 065BDF5E
	v_fma_f32 v94, v95, v239, v150                             // 000000009530: D1CB005E 065BDF5F
	v_fma_f32 v77, v77, v239, v150                             // 000000009538: D1CB004D 065BDF4D
	v_fma_f32 v95, v79, v239, v150                             // 000000009540: D1CB005F 065BDF4F
	v_cvt_pk_u8_f32 v79, v112, 0, 0                            // 000000009548: D1DD004F 02010170
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000009550: D1DD0060 02010160
	v_cvt_pk_u8_f32 v112, v116, 0, 0                           // 000000009558: D1DD0070 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000009560: D1DD0064 02010164
	v_cvt_pk_u8_f32 v116, v120, 0, 0                           // 000000009568: D1DD0074 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000009570: D1DD0068 02010168
	v_cvt_pk_u8_f32 v120, v124, 0, 0                           // 000000009578: D1DD0078 0201017C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000009580: D1DD006C 0201016C
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000009588: D1DD0050 02010150
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000009590: D1DD0040 02010140
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000009598: D1DD0054 02010154
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 0000000095A0: D1DD0044 02010144
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 0000000095A8: D1DD0058 02010158
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 0000000095B0: D1DD0048 02010148
	v_cvt_pk_u8_f32 v75, v75, 0, 0                             // 0000000095B8: D1DD004B 0201014B
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 0000000095C0: D1DD004C 0201014C
	v_fma_f32 v114, v114, v239, v152                           // 0000000095C8: D1CB0072 0663DF72
	v_fma_f32 v98, v98, v239, v152                             // 0000000095D0: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 0000000095D8: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 0000000095E0: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 0000000095E8: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 0000000095F0: D1CB006A 0663DF6A
	v_fma_f32 v126, v126, v239, v152                           // 0000000095F8: D1CB007E 0663DF7E
	v_fma_f32 v110, v110, v239, v152                           // 000000009600: D1CB006E 0663DF6E
	v_fma_f32 v82, v82, v239, v150                             // 000000009608: D1CB0052 065BDF52
	v_fma_f32 v66, v66, v239, v150                             // 000000009610: D1CB0042 065BDF42
	v_fma_f32 v86, v86, v239, v150                             // 000000009618: D1CB0056 065BDF56
	v_fma_f32 v70, v70, v239, v150                             // 000000009620: D1CB0046 065BDF46
	v_fma_f32 v90, v90, v239, v150                             // 000000009628: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 000000009630: D1CB004A 065BDF4A
	v_fma_f32 v78, v78, v239, v150                             // 000000009638: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v79, v113, 1, v79                          // 000000009640: D1DD004F 053D0371
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000009648: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v112                         // 000000009650: D1DD0061 05C10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 000000009658: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v116                        // 000000009660: D1DD0065 05D10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 000000009668: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v105, v125, 1, v120                        // 000000009670: D1DD0069 05E1037D
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 000000009678: D1DD006C 05B1036D
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000009680: D1DD0050 05410351
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000009688: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 000000009690: D1DD0041 05510355
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 000000009698: D1DD0044 05110345
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 0000000096A0: D1DD0045 05610359
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 0000000096A8: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v92, 1, v75                           // 0000000096B0: D1DD0049 052D035C
	v_cvt_pk_u8_f32 v75, v77, 1, v76                           // 0000000096B8: D1DD004B 0531034D
	v_fma_f32 v115, v115, v239, v152                           // 0000000096C0: D1CB0073 0663DF73
	v_fma_f32 v99, v99, v239, v152                             // 0000000096C8: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 0000000096D0: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 0000000096D8: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 0000000096E0: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 0000000096E8: D1CB006B 0663DF6B
	v_fma_f32 v127, v127, v239, v152                           // 0000000096F0: D1CB007F 0663DF7F
	v_fma_f32 v111, v111, v239, v152                           // 0000000096F8: D1CB006F 0663DF6F
	v_fma_f32 v83, v83, v239, v150                             // 000000009700: D1CB0053 065BDF53
	v_fma_f32 v67, v67, v239, v150                             // 000000009708: D1CB0043 065BDF43
	v_fma_f32 v87, v87, v239, v150                             // 000000009710: D1CB0057 065BDF57
	v_fma_f32 v71, v71, v239, v150                             // 000000009718: D1CB0047 065BDF47
	v_fma_f32 v91, v91, v239, v150                             // 000000009720: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v76, v114, 2, v79                          // 000000009728: D1DD004C 053D0572
	v_cvt_pk_u8_f32 v77, v98, 2, v96                           // 000000009730: D1DD004D 05810562
	v_cvt_pk_u8_f32 v79, v118, 2, v97                          // 000000009738: D1DD004F 05850576
	v_cvt_pk_u8_f32 v81, v102, 2, v100                         // 000000009740: D1DD0051 05910566
	v_cvt_pk_u8_f32 v84, v122, 2, v101                         // 000000009748: D1DD0054 0595057A
	v_cvt_pk_u8_f32 v85, v106, 2, v104                         // 000000009750: D1DD0055 05A1056A
	v_cvt_pk_u8_f32 v88, v126, 2, v105                         // 000000009758: D1DD0058 05A5057E
	v_cvt_pk_u8_f32 v89, v110, 2, v108                         // 000000009760: D1DD0059 05B1056E
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000009768: D1DD0050 05410552
	v_cvt_pk_u8_f32 v66, v66, 2, v64                           // 000000009770: D1DD0042 05010542
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 000000009778: D1DD0041 05050556
	v_cvt_pk_u8_f32 v70, v70, 2, v68                           // 000000009780: D1DD0046 05110546
	v_cvt_pk_u8_f32 v82, v90, 2, v69                           // 000000009788: D1DD0052 0515055A
	v_cvt_pk_u8_f32 v86, v74, 2, v72                           // 000000009790: D1DD0056 0521054A
	v_cvt_pk_u8_f32 v90, v93, 2, v73                           // 000000009798: D1DD005A 0525055D
	v_cvt_pk_u8_f32 v92, v78, 2, v75                           // 0000000097A0: D1DD005C 052D054E
	s_mov_b32 s25, 1                                           // 0000000097A8: BE990081
	v_cvt_pk_u8_f32 v72, v115, 3, v76                          // 0000000097AC: D1DD0048 05310773
	v_cvt_pk_u8_f32 v76, v99, 3, v77                           // 0000000097B4: D1DD004C 05350763
	v_cvt_pk_u8_f32 v73, v119, 3, v79                          // 0000000097BC: D1DD0049 053D0777
	v_cvt_pk_u8_f32 v77, v103, 3, v81                          // 0000000097C4: D1DD004D 05450767
	v_cvt_pk_u8_f32 v74, v123, 3, v84                          // 0000000097CC: D1DD004A 0551077B
	v_cvt_pk_u8_f32 v78, v107, 3, v85                          // 0000000097D4: D1DD004E 0555076B
	v_cvt_pk_u8_f32 v75, v127, 3, v88                          // 0000000097DC: D1DD004B 0561077F
	v_cvt_pk_u8_f32 v79, v111, 3, v89                          // 0000000097E4: D1DD004F 0565076F
	v_cvt_pk_u8_f32 v64, v83, 3, v80                           // 0000000097EC: D1DD0040 05410753
	v_cvt_pk_u8_f32 v68, v67, 3, v66                           // 0000000097F4: D1DD0044 05090743
	v_cvt_pk_u8_f32 v65, v87, 3, v65                           // 0000000097FC: D1DD0041 05050757
	v_cvt_pk_u8_f32 v69, v71, 3, v70                           // 000000009804: D1DD0045 05190747
	v_cvt_pk_u8_f32 v66, v91, 3, v82                           // 00000000980C: D1DD0042 0549075B
	v_cvt_pk_u8_f32 v70, v128, 3, v86                          // 000000009814: D1DD0046 05590780
	v_cvt_pk_u8_f32 v67, v94, 3, v90                           // 00000000981C: D1DD0043 0569075E
	v_cvt_pk_u8_f32 v71, v95, 3, v92                           // 000000009824: D1DD0047 0571075F
	s_waitcnt vmcnt(0)                                         // 00000000982C: BF8C0F70
	s_barrier                                                  // 000000009830: BF8A0000
	s_add_u32 s17, s97, s78                                    // 000000009834: 80114E61
	s_and_b32 s24, s17, 3                                      // 000000009838: 86188311
	s_cmp_lg_u32 s77, 0                                        // 00000000983C: BF07804D
	s_cselect_b64 s[18:19], -1, 0                              // 000000009840: 859280C1
	s_not_b32 s17, s68                                         // 000000009844: BE910444
	s_add_u32 s17, s4, s17                                     // 000000009848: 80111104
	s_cmp_eq_u32 s68, s17                                      // 00000000984C: BF061144
	s_cselect_b64 s[20:21], -1, 0                              // 000000009850: 859480C1
	s_or_b64 s[18:19], s[18:19], s[20:21]                      // 000000009854: 87921412
	s_and_b64 s[20:21], s[18:19], exec                         // 000000009858: 86947E12
	s_cbranch_scc0 7                                           // 00000000985C: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7d7c>
	s_add_u32 s2, s2, s14                                      // 000000009860: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000009864: BF093302
	s_mov_b32 s25, 0                                           // 000000009868: BE990080
	s_cbranch_scc1 297                                         // 00000000986C: BF850129 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8214>
	s_lshl_b32 s17, s2, 5                                      // 000000009870: 8E118502
	s_load_dwordx8 s[68:75], s[46:47], s17 offset:0x0          // 000000009874: C00E5117 22000000
	s_waitcnt lgkmcnt(0)                                       // 00000000987C: BF8CC07F
	s_add_u32 s28, s38, s72                                    // 000000009880: 801C4826
	s_addc_u32 s29, s39, s73                                   // 000000009884: 821D4927
	s_add_u32 s80, s40, s72                                    // 000000009888: 80504828
	s_addc_u32 s81, s41, s73                                   // 00000000988C: 82514929
	s_not_b32 s17, s68                                         // 000000009890: BE910444
	s_add_u32 s17, s4, s17                                     // 000000009894: 80111104
	s_and_b64 s[18:19], s[18:19], exec                         // 000000009898: 86927E12
	s_cselect_b32 s17, s17, s68                                // 00000000989C: 85114411
	s_lshl_b32 s18, s17, 5                                     // 0000000098A0: 8E128511
	s_add_u32 s18, s18, 32                                     // 0000000098A4: 8012A012
	s_mul_i32 s18, s18, s5                                     // 0000000098A8: 92120512
	s_addk_i32 s18, 0x60                                       // 0000000098AC: B7120060
	s_lshr_b32 s18, s18, 7                                     // 0000000098B0: 8F128712
	v_readlane_b32 s19, v255, 1                                // 0000000098B4: D2890013 000103FF
	s_min_u32 s97, s19, s18                                    // 0000000098BC: 83E11213
	s_and_b64 s[18:19], s[10:11], exec                         // 0000000098C0: 86927E0A
	s_cbranch_scc0 84                                          // 0000000098C4: BF840054 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7f18>
	s_lshl_b32 s18, s24, 14                                    // 0000000098C8: 8E128E18
	s_or_b32 s19, s18, s88                                     // 0000000098CC: 87135812
	s_mov_b32 m0, s19                                          // 0000000098D0: BEFC0013
	v_readlane_b32 s20, v255, 11                               // 0000000098D4: D2890014 000117FF
	buffer_load_dwordx4 v233, s[28:31], 0 offen lds            // 0000000098DC: E05D1000 800700E9
	s_add_u32 m0, s19, 0x1000                                  // 0000000098E4: 807CFF13 00001000
	s_mov_b32 s82, s30                                         // 0000000098EC: BED2001E
	s_mov_b32 s83, s31                                         // 0000000098F0: BED3001F
	s_nop 0                                                    // 0000000098F4: BF800000
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 0000000098F8: E05D1000 140700E9
	s_or_b32 m0, s19, 0x2000                                   // 000000009900: 877CFF13 00002000
	v_readlane_b32 s20, v255, 12                               // 000000009908: D2890014 000119FF
	s_nop 4                                                    // 000000009910: BF800004
	buffer_load_dwordx4 v233, s[28:31], s20 offen lds          // 000000009914: E05D1000 140700E9
	s_add_u32 m0, s19, 0x3000                                  // 00000000991C: 807CFF13 00003000
	s_mul_i32 s19, s8, 0x60                                    // 000000009924: 9213FF08 00000060
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 00000000992C: E05D1000 130700E9
	s_add_u32 s19, s48, s18                                    // 000000009934: 80131230
	s_add_u32 m0, s19, s88                                     // 000000009938: 807C5813
	s_nop 0                                                    // 00000000993C: BF800000
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 000000009940: E05D1000 801400EB
	s_add_u32 s19, s48, s18                                    // 000000009948: 80131230
	s_add_u32 s19, s19, s88                                    // 00000000994C: 80135813
	s_add_u32 m0, s19, 0x1000                                  // 000000009950: 807CFF13 00001000
	s_nop 0                                                    // 000000009958: BF800000
	buffer_load_dwordx4 v235, s[80:83], s20 offen lds          // 00000000995C: E05D1000 141400EB
	s_add_u32 s19, s48, s18                                    // 000000009964: 80131230
	s_add_u32 s19, s19, s88                                    // 000000009968: 80135813
	s_add_u32 m0, s19, 0x2000                                  // 00000000996C: 807CFF13 00002000
	v_readlane_b32 s19, v255, 13                               // 000000009974: D2890013 00011BFF
	s_nop 4                                                    // 00000000997C: BF800004
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000009980: E05D1000 131400EB
	s_add_u32 s18, s48, s18                                    // 000000009988: 80121230
	s_add_u32 s18, s18, s88                                    // 00000000998C: 80125812
	s_add_u32 m0, s18, 0x3000                                  // 000000009990: 807CFF12 00003000
	s_mul_i32 s18, s8, 0x44                                    // 000000009998: 9212FF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 0000000099A0: E05D1000 121400EB
	s_cmp_lt_u32 s97, 2                                        // 0000000099A8: BF0A8261
	s_cbranch_scc1 26                                          // 0000000099AC: BF85001A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7f18>
	s_add_u32 s18, s24, 1                                      // 0000000099B0: 80128118
	s_and_b32 s18, s18, 3                                      // 0000000099B4: 86128312
	s_lshl_b32 s18, s18, 14                                    // 0000000099B8: 8E128E12
	s_or_b32 s18, s18, s88                                     // 0000000099BC: 87125812
	s_mov_b32 m0, s18                                          // 0000000099C0: BEFC0012
	s_mul_i32 s19, s8, 0xa0                                    // 0000000099C4: 9213FF08 000000A0
	buffer_load_dwordx4 v233, s[28:31], s33 offen lds          // 0000000099CC: E05D1000 210700E9
	s_add_u32 m0, s18, 0x1000                                  // 0000000099D4: 807CFF12 00001000
	s_nop 0                                                    // 0000000099DC: BF800000
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 0000000099E0: E05D1000 130700E9
	s_or_b32 m0, s18, 0x2000                                   // 0000000099E8: 877CFF12 00002000
	s_mul_i32 s19, s8, 0xc0                                    // 0000000099F0: 9213FF08 000000C0
	buffer_load_dwordx4 v233, s[28:31], s19 offen lds          // 0000000099F8: E05D1000 130700E9
	s_add_u32 m0, s18, 0x3000                                  // 000000009A00: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xe0                                    // 000000009A08: 9212FF08 000000E0
	buffer_load_dwordx4 v233, s[28:31], s18 offen lds          // 000000009A10: E05D1000 120700E9
	v_readlane_b32 s18, v255, 7                                // 000000009A18: D2890012 00010FFF
	s_add_u32 s22, s18, s70                                    // 000000009A20: 80164612
	v_readlane_b32 s18, v255, 8                                // 000000009A24: D2890012 000111FF
	s_addc_u32 s23, s18, s71                                   // 000000009A2C: 82174712
	v_readlane_b32 s18, v255, 9                                // 000000009A30: D2890012 000113FF
	s_add_u32 s20, s18, s74                                    // 000000009A38: 80144A12
	v_readlane_b32 s18, v255, 10                               // 000000009A3C: D2890012 000115FF
	s_addc_u32 s21, s18, s75                                   // 000000009A44: 82154B12
	v_readlane_b32 s18, v255, 2                                // 000000009A48: D2890012 000105FF
	s_add_u32 s18, s69, s18                                    // 000000009A50: 80121245
	s_lshl_b32 s18, s18, 2                                     // 000000009A54: 8E128212
	s_add_u32 s26, s44, s18                                    // 000000009A58: 801A122C
	v_readlane_b32 s18, v255, 3                                // 000000009A5C: D2890012 000107FF
	s_addc_u32 s27, s45, 0                                     // 000000009A64: 821B802D
	v_readlane_b32 s19, v255, 4                                // 000000009A68: D2890013 000109FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000009A70: 86927E12
	s_cselect_b32 s18, 0, s26                                  // 000000009A74: 85121A80
	s_mul_i32 s17, s17, s5                                     // 000000009A78: 92110511
	v_readlane_b32 s26, v255, 0                                // 000000009A7C: D289001A 000101FF
	s_cselect_b32 s19, 0, s27                                  // 000000009A84: 85131B80
	s_add_u32 s26, s17, s26                                    // 000000009A88: 801A1A11
	s_lshl_b32 s17, s26, 5                                     // 000000009A8C: 8E11851A
	s_bfe_u32 s79, s26, 0x190002                               // 000000009A90: 92CFFF1A 00190002
	v_or_b32_e32 v80, s17, v216                                // 000000009A98: 28A1B011
	v_mul_lo_u32 v80, v80, s7                                  // 000000009A9C: D2850050 00000F50
	scratch_load_dword v81, off, off offset:36                 // 000000009AA4: DC504024 517F0000
	s_waitcnt vmcnt(0)                                         // 000000009AAC: BF8C0F70
	v_add_u32_e32 v80, v81, v80                                // 000000009AB0: 68A0A151
	global_load_dwordx4 v[220:223], v80, s[22:23]              // 000000009AB4: DC5C8000 DC160050
	global_load_dwordx4 v[224:227], v80, s[22:23] offset:16    // 000000009ABC: DC5C8010 E0160050
	global_load_dwordx4 v[200:203], v80, s[22:23] offset:64    // 000000009AC4: DC5C8040 C8160050
	global_load_dwordx4 v[204:207], v80, s[22:23] offset:80    // 000000009ACC: DC5C8050 CC160050
	s_mov_b32 s83, 0x110000                                    // 000000009AD4: BED300FF 00110000
	s_mov_b32 s22, 1                                           // 000000009ADC: BE960081
	s_mov_b32 s43, 0x110000                                    // 000000009AE0: BEAB00FF 00110000
	s_branch 142                                               // 000000009AE8: BF82008E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8224>
	s_mov_b32 s77, 0                                           // 000000009AEC: BECD0080
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009AF0: BE940100
	s_mov_b64 s[18:19], s[36:37]                               // 000000009AF4: BE920124
	s_mov_b32 s17, s3                                          // 000000009AF8: BE910003
	s_mov_b32 s22, 0                                           // 000000009AFC: BE960080
	s_branch 126                                               // 000000009B00: BF82007E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x81fc>
	s_mov_b32 s77, 0                                           // 000000009B04: BECD0080
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009B08: BE940100
	s_mov_b64 s[18:19], s[36:37]                               // 000000009B0C: BE920124
	s_mov_b32 s17, s3                                          // 000000009B10: BE910003
	s_mov_b32 s22, 0                                           // 000000009B14: BE960080
	s_branch 246                                               // 000000009B18: BF8200F6 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x83f4>
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009B1C: BE940100
	s_mov_b64 s[18:19], s[36:37]                               // 000000009B20: BE920124
	s_mov_b32 s17, s3                                          // 000000009B24: BE910003
	s_mov_b32 s22, 0                                           // 000000009B28: BE960080
	s_add_u32 s23, s42, s78                                    // 000000009B2C: 80174E2A
	s_and_b32 s23, s23, 3                                      // 000000009B30: 86178317
	s_setprio 1                                                // 000000009B34: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[72:79], 0// 000000009B38: D3AD0050 020291C0
	s_nop 11                                                   // 000000009B40: BF80000B
	v_mul_f32_e32 v80, v154, v80                               // 000000009B44: 0AA0A19A
	v_add_f32_e32 v84, v249, v80                               // 000000009B48: 02A8A1F9
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[64:71], 0// 000000009B4C: D3AD0050 020281C0
	s_nop 11                                                   // 000000009B54: BF80000B
	v_lshl_add_u32 v81, s23, 14, v244                          // 000000009B58: D1FD0051 07D11C17
	ds_read_b64_tr_b8 v[86:87], v81                            // 000000009B60: D9C40000 56000051
	ds_read_b64_tr_b8 v[88:89], v81 offset:1024                // 000000009B68: D9C40400 58000051
	ds_read_b64_tr_b8 v[90:91], v81 offset:2048                // 000000009B70: D9C40800 5A000051
	ds_read_b64_tr_b8 v[92:93], v81 offset:3072                // 000000009B78: D9C40C00 5C000051
	ds_read_b64_tr_b8 v[94:95], v81 offset:256                 // 000000009B80: D9C40100 5E000051
	ds_read_b64_tr_b8 v[96:97], v81 offset:1280                // 000000009B88: D9C40500 60000051
	ds_read_b64_tr_b8 v[98:99], v81 offset:2304                // 000000009B90: D9C40900 62000051
	ds_read_b64_tr_b8 v[100:101], v81 offset:3328              // 000000009B98: D9C40D00 64000051
	ds_read_b64_tr_b8 v[102:103], v81 offset:512               // 000000009BA0: D9C40200 66000051
	ds_read_b64_tr_b8 v[104:105], v81 offset:1536              // 000000009BA8: D9C40600 68000051
	ds_read_b64_tr_b8 v[106:107], v81 offset:2560              // 000000009BB0: D9C40A00 6A000051
	ds_read_b64_tr_b8 v[108:109], v81 offset:3584              // 000000009BB8: D9C40E00 6C000051
	v_mul_f32_e32 v80, v155, v80                               // 000000009BC0: 0AA0A19B
	v_add_f32_e32 v249, v84, v80                               // 000000009BC4: 03F2A154
	s_waitcnt lgkmcnt(4)                                       // 000000009BC8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[86:93], v[72:79], v[48:63], v242, v250 op_sel_hi:[0,0,0]// 000000009BCC: D3AC0000 0003F5F2 D3AE0830 04C29156
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[94:101], v[72:79], v[32:47], v242, v250 op_sel_hi:[0,0,0]// 000000009BDC: D3AC0000 0003F5F2 D3AE0820 0482915E
	ds_read_b64_tr_b8 v[82:83], v81 offset:768                 // 000000009BEC: D9C40300 52000051
	ds_read_b64_tr_b8 v[84:85], v81 offset:1792                // 000000009BF4: D9C40700 54000051
	ds_read_b64_tr_b8 v[86:87], v81 offset:2816                // 000000009BFC: D9C40B00 56000051
	ds_read_b64_tr_b8 v[88:89], v81 offset:3840                // 000000009C04: D9C40F00 58000051
	ds_read_b64_tr_b8 v[90:91], v81 offset:4096                // 000000009C0C: D9C41000 5A000051
	ds_read_b64_tr_b8 v[92:93], v81 offset:5120                // 000000009C14: D9C41400 5C000051
	ds_read_b64_tr_b8 v[94:95], v81 offset:6144                // 000000009C1C: D9C41800 5E000051
	ds_read_b64_tr_b8 v[96:97], v81 offset:7168                // 000000009C24: D9C41C00 60000051
	s_waitcnt lgkmcnt(4)                                       // 000000009C2C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[102:109], v[72:79], v[16:31], v242, v250 op_sel_hi:[0,0,0]// 000000009C30: D3AC0000 0003F5F2 D3AE0810 04429166
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[82:89], v[72:79], v[0:15], v242, v250 op_sel_hi:[0,0,0]// 000000009C40: D3AC0000 0003F5F2 D3AE0800 04029152
	ds_read_b64_tr_b8 v[98:99], v81 offset:4352                // 000000009C50: D9C41100 62000051
	ds_read_b64_tr_b8 v[100:101], v81 offset:5376              // 000000009C58: D9C41500 64000051
	ds_read_b64_tr_b8 v[102:103], v81 offset:6400              // 000000009C60: D9C41900 66000051
	ds_read_b64_tr_b8 v[104:105], v81 offset:7424              // 000000009C68: D9C41D00 68000051
	ds_read_b64_tr_b8 v[72:73], v81 offset:4608                // 000000009C70: D9C41200 48000051
	ds_read_b64_tr_b8 v[74:75], v81 offset:5632                // 000000009C78: D9C41600 4A000051
	ds_read_b64_tr_b8 v[76:77], v81 offset:6656                // 000000009C80: D9C41A00 4C000051
	ds_read_b64_tr_b8 v[78:79], v81 offset:7680                // 000000009C88: D9C41E00 4E000051
	s_waitcnt lgkmcnt(4)                                       // 000000009C90: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[90:97], v[64:71], v[48:63], v242, v252 op_sel_hi:[0,0,0]// 000000009C94: D3AC0000 0003F9F2 D3AE0830 04C2815A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[98:105], v[64:71], v[32:47], v242, v252 op_sel_hi:[0,0,0]// 000000009CA4: D3AC0000 0003F9F2 D3AE0820 04828162
	ds_read_b64_tr_b8 v[82:83], v81 offset:4864                // 000000009CB4: D9C41300 52000051
	ds_read_b64_tr_b8 v[84:85], v81 offset:5888                // 000000009CBC: D9C41700 54000051
	ds_read_b64_tr_b8 v[86:87], v81 offset:6912                // 000000009CC4: D9C41B00 56000051
	ds_read_b64_tr_b8 v[88:89], v81 offset:7936                // 000000009CCC: D9C41F00 58000051
	s_waitcnt lgkmcnt(0)                                       // 000000009CD4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[72:79], v[64:71], v[16:31], v242, v252 op_sel_hi:[0,0,0]// 000000009CD8: D3AC0000 0003F9F2 D3AE0810 04428148
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[82:89], v[64:71], v[0:15], v242, v252 op_sel_hi:[0,0,0]// 000000009CE8: D3AC0000 0003F9F2 D3AE0800 04028152
	s_mov_b32 s77, s25                                         // 000000009CF8: BECD0019
	s_waitcnt vmcnt(4)                                         // 000000009CFC: BF8C0F74
	s_barrier                                                  // 000000009D00: BF8A0000
	s_mov_b32 s78, s24                                         // 000000009D04: BECE0018
	s_cmp_eq_u32 s22, 0                                        // 000000009D08: BF068016
	s_cbranch_scc0 126                                         // 000000009D0C: BF84007E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8408>
	s_branch 391                                               // 000000009D10: BF820187 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8830>
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009D14: BE940100
	s_mov_b64 s[18:19], s[36:37]                               // 000000009D18: BE920124
	s_mov_b32 s17, s3                                          // 000000009D1C: BE910003
	s_mov_b32 s22, 0                                           // 000000009D20: BE960080
	s_add_u32 s23, s42, s78                                    // 000000009D24: 80174E2A
	s_and_b32 s23, s23, 3                                      // 000000009D28: 86178317
	s_setprio 1                                                // 000000009D2C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[72:79], 0// 000000009D30: D3AD0050 020291C0
	s_nop 11                                                   // 000000009D38: BF80000B
	v_mul_f32_e32 v80, v154, v80                               // 000000009D3C: 0AA0A19A
	v_add_f32_e32 v84, v249, v80                               // 000000009D40: 02A8A1F9
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[64:71], 0// 000000009D44: D3AD0050 020281C0
	s_nop 11                                                   // 000000009D4C: BF80000B
	v_lshl_add_u32 v81, s23, 14, v244                          // 000000009D50: D1FD0051 07D11C17
	ds_read_b64_tr_b8 v[86:87], v81                            // 000000009D58: D9C40000 56000051
	ds_read_b64_tr_b8 v[88:89], v81 offset:1024                // 000000009D60: D9C40400 58000051
	ds_read_b64_tr_b8 v[90:91], v81 offset:2048                // 000000009D68: D9C40800 5A000051
	ds_read_b64_tr_b8 v[92:93], v81 offset:3072                // 000000009D70: D9C40C00 5C000051
	ds_read_b64_tr_b8 v[94:95], v81 offset:256                 // 000000009D78: D9C40100 5E000051
	ds_read_b64_tr_b8 v[96:97], v81 offset:1280                // 000000009D80: D9C40500 60000051
	ds_read_b64_tr_b8 v[98:99], v81 offset:2304                // 000000009D88: D9C40900 62000051
	ds_read_b64_tr_b8 v[100:101], v81 offset:3328              // 000000009D90: D9C40D00 64000051
	ds_read_b64_tr_b8 v[102:103], v81 offset:512               // 000000009D98: D9C40200 66000051
	ds_read_b64_tr_b8 v[104:105], v81 offset:1536              // 000000009DA0: D9C40600 68000051
	ds_read_b64_tr_b8 v[106:107], v81 offset:2560              // 000000009DA8: D9C40A00 6A000051
	ds_read_b64_tr_b8 v[108:109], v81 offset:3584              // 000000009DB0: D9C40E00 6C000051
	v_mul_f32_e32 v80, v155, v80                               // 000000009DB8: 0AA0A19B
	v_add_f32_e32 v249, v84, v80                               // 000000009DBC: 03F2A154
	s_waitcnt lgkmcnt(4)                                       // 000000009DC0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[86:93], v[72:79], v[48:63], v242, v250 op_sel_hi:[0,0,0]// 000000009DC4: D3AC0000 0003F5F2 D3AE0830 04C29156
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[94:101], v[72:79], v[32:47], v242, v250 op_sel_hi:[0,0,0]// 000000009DD4: D3AC0000 0003F5F2 D3AE0820 0482915E
	ds_read_b64_tr_b8 v[82:83], v81 offset:768                 // 000000009DE4: D9C40300 52000051
	ds_read_b64_tr_b8 v[84:85], v81 offset:1792                // 000000009DEC: D9C40700 54000051
	ds_read_b64_tr_b8 v[86:87], v81 offset:2816                // 000000009DF4: D9C40B00 56000051
	ds_read_b64_tr_b8 v[88:89], v81 offset:3840                // 000000009DFC: D9C40F00 58000051
	ds_read_b64_tr_b8 v[90:91], v81 offset:4096                // 000000009E04: D9C41000 5A000051
	ds_read_b64_tr_b8 v[92:93], v81 offset:5120                // 000000009E0C: D9C41400 5C000051
	ds_read_b64_tr_b8 v[94:95], v81 offset:6144                // 000000009E14: D9C41800 5E000051
	ds_read_b64_tr_b8 v[96:97], v81 offset:7168                // 000000009E1C: D9C41C00 60000051
	s_waitcnt lgkmcnt(4)                                       // 000000009E24: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[102:109], v[72:79], v[16:31], v242, v250 op_sel_hi:[0,0,0]// 000000009E28: D3AC0000 0003F5F2 D3AE0810 04429166
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[82:89], v[72:79], v[0:15], v242, v250 op_sel_hi:[0,0,0]// 000000009E38: D3AC0000 0003F5F2 D3AE0800 04029152
	ds_read_b64_tr_b8 v[98:99], v81 offset:4352                // 000000009E48: D9C41100 62000051
	ds_read_b64_tr_b8 v[100:101], v81 offset:5376              // 000000009E50: D9C41500 64000051
	ds_read_b64_tr_b8 v[102:103], v81 offset:6400              // 000000009E58: D9C41900 66000051
	ds_read_b64_tr_b8 v[104:105], v81 offset:7424              // 000000009E60: D9C41D00 68000051
	ds_read_b64_tr_b8 v[72:73], v81 offset:4608                // 000000009E68: D9C41200 48000051
	ds_read_b64_tr_b8 v[74:75], v81 offset:5632                // 000000009E70: D9C41600 4A000051
	ds_read_b64_tr_b8 v[76:77], v81 offset:6656                // 000000009E78: D9C41A00 4C000051
	ds_read_b64_tr_b8 v[78:79], v81 offset:7680                // 000000009E80: D9C41E00 4E000051
	s_waitcnt lgkmcnt(4)                                       // 000000009E88: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[90:97], v[64:71], v[48:63], v242, v252 op_sel_hi:[0,0,0]// 000000009E8C: D3AC0000 0003F9F2 D3AE0830 04C2815A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[98:105], v[64:71], v[32:47], v242, v252 op_sel_hi:[0,0,0]// 000000009E9C: D3AC0000 0003F9F2 D3AE0820 04828162
	ds_read_b64_tr_b8 v[82:83], v81 offset:4864                // 000000009EAC: D9C41300 52000051
	ds_read_b64_tr_b8 v[84:85], v81 offset:5888                // 000000009EB4: D9C41700 54000051
	ds_read_b64_tr_b8 v[86:87], v81 offset:6912                // 000000009EBC: D9C41B00 56000051
	ds_read_b64_tr_b8 v[88:89], v81 offset:7936                // 000000009EC4: D9C41F00 58000051
	s_waitcnt lgkmcnt(0)                                       // 000000009ECC: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[72:79], v[64:71], v[16:31], v242, v252 op_sel_hi:[0,0,0]// 000000009ED0: D3AC0000 0003F9F2 D3AE0810 04428148
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[82:89], v[64:71], v[0:15], v242, v252 op_sel_hi:[0,0,0]// 000000009EE0: D3AC0000 0003F9F2 D3AE0800 04028152
	s_mov_b32 s77, s25                                         // 000000009EF0: BECD0019
	s_waitcnt vmcnt(4)                                         // 000000009EF4: BF8C0F74
	s_barrier                                                  // 000000009EF8: BF8A0000
	s_mov_b32 s78, s24                                         // 000000009EFC: BECE0018
	s_cmp_eq_u32 s22, 0                                        // 000000009F00: BF068016
	s_cbranch_scc1 266                                         // 000000009F04: BF85010A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8830>
	s_nop 15                                                   // 000000009F08: BF80000F
	s_nop 3                                                    // 000000009F0C: BF800003
	v_rcp_f32_e32 v64, v249                                    // 000000009F10: 7E8045F9
	v_log_f32_e32 v65, v249                                    // 000000009F14: 7E8243F9
	s_nop 1                                                    // 000000009F18: BF800001
	v_mul_f32_e32 v64, v241, v64                               // 000000009F1C: 0A8081F1
	v_mul_f32_e32 v48, v48, v64                                // 000000009F20: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 000000009F24: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 000000009F28: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 000000009F2C: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 000000009F30: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 000000009F34: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 000000009F38: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 000000009F3C: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 000000009F40: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 000000009F44: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 000000009F48: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 000000009F4C: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 000000009F50: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 000000009F54: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 000000009F58: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 000000009F5C: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 000000009F60: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 000000009F64: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 000000009F68: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 000000009F6C: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 000000009F70: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 000000009F74: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 000000009F78: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 000000009F7C: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 000000009F80: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 000000009F84: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 000000009F88: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 000000009F8C: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 000000009F90: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 000000009F94: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 000000009F98: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 000000009F9C: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 000000009FA0: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 000000009FA4: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 000000009FA8: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 000000009FAC: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 000000009FB0: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 000000009FB4: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 000000009FB8: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 000000009FBC: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 000000009FC0: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 000000009FC4: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 000000009FC8: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 000000009FCC: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 000000009FD0: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 000000009FD4: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 000000009FD8: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 000000009FDC: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 000000009FE0: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 000000009FE4: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 000000009FE8: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 000000009FEC: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 000000009FF0: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 000000009FF4: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 000000009FF8: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 000000009FFC: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 00000000A000: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 00000000A004: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 00000000A008: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 00000000A00C: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 00000000A010: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 00000000A014: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000A018: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000A01C: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000A020: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000A028: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000A030: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000A038: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000A040: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000A048: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000A050: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000A058: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000A060: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000A068: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000A070: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000A078: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000A080: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000A088: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000A090: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000A098: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000A0A0: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000A0A8: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000A0B0: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000A0B8: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000A0C0: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000A0C8: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000A0D0: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000A0D8: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000A0E0: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000A0E8: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000A0F0: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000A0F8: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000A100: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000A108: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000A110: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000A118: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000A120: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000A124: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000A128: 7E000304
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000A12C: 7E10B509
	v_mov_b32_e32 v1, v2                                       // 00000000A130: 7E020302
	v_mov_b32_e32 v2, v5                                       // 00000000A134: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000A138: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000A13C: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000A140: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000A144: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000A148: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000A14C: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000A150: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000A154: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000A158: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000A15C: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000A160: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000A164: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000A168: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000A16C: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000A170: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000A174: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000A178: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000A17C: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000A180: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000A184: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000A188: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000A18C: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000A190: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000A194: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000A198: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000A19C: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000A1A0: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000A1A4: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000A1A8: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000A1AC: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000A1B0: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000A1B4: 7E380320
	v_add_f32_e32 v32, v251, v65                               // 00000000A1B8: 024083FB
	v_mov_b32_e32 v29, v30                                     // 00000000A1BC: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000A1C0: 7E3C0321
	v_add_f32_e32 v32, -4.0, v32                               // 00000000A1C4: 024040F7
	v_add_f32_e32 v32, -2.0, v32                               // 00000000A1C8: 024040F5
	v_mul_f32_e32 v32, 0x3f317218, v32                         // 00000000A1CC: 0A4040FF 3F317218
	ds_write_b128 v228, v[0:3]                                 // 00000000A1D4: D9BE0000 000000E4
	ds_write_b128 v230, v[4:7]                                 // 00000000A1DC: D9BE0000 000004E6
	ds_write_b128 v229, v[8:11]                                // 00000000A1E4: D9BE0000 000008E5
	v_xor_b32_e32 v0, 0x60, v228                               // 00000000A1EC: 2A01C8FF 00000060
	ds_write_b128 v0, v[12:15]                                 // 00000000A1F4: D9BE0000 00000C00
	v_xor_b32_e32 v0, 0x80, v228                               // 00000000A1FC: 2A01C8FF 00000080
	ds_write_b128 v0, v[16:19]                                 // 00000000A204: D9BE0000 00001000
	v_xor_b32_e32 v0, 0xa0, v228                               // 00000000A20C: 2A01C8FF 000000A0
	ds_write_b128 v0, v[20:23]                                 // 00000000A214: D9BE0000 00001400
	v_xor_b32_e32 v0, 0xc0, v228                               // 00000000A21C: 2A01C8FF 000000C0
	ds_write_b128 v0, v[24:27]                                 // 00000000A224: D9BE0000 00001800
	v_xor_b32_e32 v0, 0xe0, v228                               // 00000000A22C: 2A01C8FF 000000E0
	ds_write_b128 v0, v[28:31]                                 // 00000000A234: D9BE0000 00001C00
	ds_read_b128 v[8:11], v219                                 // 00000000A23C: D9FE0000 080000DB
	ds_read_b128 v[12:15], v218 offset:1024                    // 00000000A244: D9FE0400 0C0000DA
	ds_read_b128 v[16:19], v237 offset:2048                    // 00000000A24C: D9FE0800 100000ED
	ds_read_b128 v[20:23], v254 offset:3072                    // 00000000A254: D9FE0C00 140000FE
	ds_read_b128 v[24:27], v219 offset:4096                    // 00000000A25C: D9FE1000 180000DB
	ds_read_b128 v[28:31], v218 offset:5120                    // 00000000A264: D9FE1400 1C0000DA
	ds_read_b128 v[34:37], v237 offset:6144                    // 00000000A26C: D9FE1800 220000ED
	ds_read_b128 v[38:41], v254 offset:7168                    // 00000000A274: D9FE1C00 260000FE
	v_add_u32_e32 v0, s3, v217                                 // 00000000A27C: 6801B203
	v_mul_lo_u32 v0, v0, s9                                    // 00000000A280: D2850000 00001300
	scratch_load_dword v1, off, off offset:32                  // 00000000A288: DC504020 017F0000
	s_waitcnt vmcnt(0)                                         // 00000000A290: BF8C0F70
	v_add_u32_e32 v0, v0, v1                                   // 00000000A294: 68000300
	v_add_u32_e32 v1, s15, v0                                  // 00000000A298: 6802000F
	v_add_u32_e32 v2, s15, v1                                  // 00000000A29C: 6804020F
	v_add_u32_e32 v3, s15, v2                                  // 00000000A2A0: 6806040F
	v_add_u32_e32 v4, s15, v3                                  // 00000000A2A4: 6808060F
	v_add_u32_e32 v5, s15, v4                                  // 00000000A2A8: 680A080F
	v_add_u32_e32 v6, s15, v5                                  // 00000000A2AC: 680C0A0F
	v_add_u32_e32 v7, s15, v6                                  // 00000000A2B0: 680E0C0F
	s_waitcnt lgkmcnt(7)                                       // 00000000A2B4: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[0:1]                   // 00000000A2B8: DC7C8000 00000800
	s_waitcnt lgkmcnt(6)                                       // 00000000A2C0: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[0:1]                  // 00000000A2C4: DC7C8000 00000C01
	s_waitcnt lgkmcnt(5)                                       // 00000000A2CC: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[0:1]                  // 00000000A2D0: DC7C8000 00001002
	s_waitcnt lgkmcnt(4)                                       // 00000000A2D8: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[0:1]                  // 00000000A2DC: DC7C8000 00001403
	s_waitcnt lgkmcnt(3)                                       // 00000000A2E4: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[0:1]                  // 00000000A2E8: DC7C8000 00001804
	s_waitcnt lgkmcnt(2)                                       // 00000000A2F0: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[0:1]                  // 00000000A2F4: DC7C8000 00001C05
	s_waitcnt lgkmcnt(1)                                       // 00000000A2FC: BF8CC17F
	global_store_dwordx4 v6, v[34:37], s[0:1]                  // 00000000A300: DC7C8000 00002206
	s_waitcnt lgkmcnt(0)                                       // 00000000A308: BF8CC07F
	global_store_dwordx4 v7, v[38:41], s[0:1]                  // 00000000A30C: DC7C8000 00002607
	v_add_u32_e32 v0, s3, v216                                 // 00000000A314: 6801B003
	v_lshlrev_b32_e32 v0, 2, v0                                // 00000000A318: 24000082
	s_cmp_eq_u64 s[36:37], 0                                   // 00000000A31C: BF128024
	s_mov_b64 s[0:1], s[20:21]                                 // 00000000A320: BE800114
	s_mov_b32 s3, s17                                          // 00000000A324: BE830011
	s_cbranch_scc0 58238                                       // 00000000A328: BF84E37E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1624>
	s_branch 57195                                             // 00000000A32C: BF82DF6B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5dc>
	s_nop 15                                                   // 00000000A330: BF80000F
	s_nop 3                                                    // 00000000A334: BF800003
	v_rcp_f32_e32 v64, v249                                    // 00000000A338: 7E8045F9
	v_log_f32_e32 v65, v249                                    // 00000000A33C: 7E8243F9
	s_nop 1                                                    // 00000000A340: BF800001
	v_mul_f32_e32 v64, v241, v64                               // 00000000A344: 0A8081F1
	v_mul_f32_e32 v48, v48, v64                                // 00000000A348: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 00000000A34C: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 00000000A350: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 00000000A354: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 00000000A358: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 00000000A35C: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 00000000A360: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 00000000A364: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 00000000A368: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 00000000A36C: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 00000000A370: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 00000000A374: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 00000000A378: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 00000000A37C: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 00000000A380: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 00000000A384: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 00000000A388: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 00000000A38C: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 00000000A390: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 00000000A394: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 00000000A398: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 00000000A39C: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 00000000A3A0: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 00000000A3A4: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 00000000A3A8: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 00000000A3AC: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 00000000A3B0: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 00000000A3B4: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 00000000A3B8: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 00000000A3BC: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 00000000A3C0: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 00000000A3C4: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 00000000A3C8: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 00000000A3CC: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 00000000A3D0: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 00000000A3D4: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 00000000A3D8: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 00000000A3DC: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 00000000A3E0: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 00000000A3E4: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 00000000A3E8: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 00000000A3EC: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 00000000A3F0: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 00000000A3F4: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 00000000A3F8: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 00000000A3FC: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 00000000A400: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 00000000A404: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 00000000A408: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 00000000A40C: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 00000000A410: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 00000000A414: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 00000000A418: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 00000000A41C: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 00000000A420: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 00000000A424: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 00000000A428: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 00000000A42C: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 00000000A430: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 00000000A434: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 00000000A438: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 00000000A43C: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000A440: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000A444: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000A448: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000A450: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000A458: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000A460: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000A468: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000A470: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000A478: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000A480: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000A488: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000A490: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000A498: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000A4A0: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000A4A8: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000A4B0: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000A4B8: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000A4C0: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000A4C8: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000A4D0: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000A4D8: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000A4E0: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000A4E8: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000A4F0: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000A4F8: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000A500: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000A508: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000A510: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000A518: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000A520: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000A528: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000A530: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000A538: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000A540: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000A548: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000A54C: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000A550: 7E000304
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000A554: 7E10B509
	v_mov_b32_e32 v1, v2                                       // 00000000A558: 7E020302
	v_mov_b32_e32 v2, v5                                       // 00000000A55C: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000A560: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000A564: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000A568: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000A56C: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000A570: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000A574: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000A578: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000A57C: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000A580: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000A584: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000A588: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000A58C: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000A590: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000A594: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000A598: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000A59C: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000A5A0: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000A5A4: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000A5A8: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000A5AC: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000A5B0: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000A5B4: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000A5B8: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000A5BC: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000A5C0: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000A5C4: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000A5C8: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000A5CC: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000A5D0: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000A5D4: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000A5D8: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000A5DC: 7E380320
	v_add_f32_e32 v32, v251, v65                               // 00000000A5E0: 024083FB
	v_mov_b32_e32 v29, v30                                     // 00000000A5E4: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000A5E8: 7E3C0321
	v_add_f32_e32 v32, -4.0, v32                               // 00000000A5EC: 024040F7
	v_add_f32_e32 v32, -2.0, v32                               // 00000000A5F0: 024040F5
	v_mul_f32_e32 v32, 0x3f317218, v32                         // 00000000A5F4: 0A4040FF 3F317218
	ds_write_b128 v228, v[0:3]                                 // 00000000A5FC: D9BE0000 000000E4
	ds_write_b128 v230, v[4:7]                                 // 00000000A604: D9BE0000 000004E6
	ds_write_b128 v229, v[8:11]                                // 00000000A60C: D9BE0000 000008E5
	scratch_load_dword v0, off, off offset:56                  // 00000000A614: DC504038 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A61C: BF8C0F70
	ds_write_b128 v0, v[12:15]                                 // 00000000A620: D9BE0000 00000C00
	scratch_load_dword v0, off, off offset:52                  // 00000000A628: DC504034 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A630: BF8C0F70
	ds_write_b128 v0, v[16:19]                                 // 00000000A634: D9BE0000 00001000
	scratch_load_dword v0, off, off offset:48                  // 00000000A63C: DC504030 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A644: BF8C0F70
	ds_write_b128 v0, v[20:23]                                 // 00000000A648: D9BE0000 00001400
	scratch_load_dword v0, off, off offset:44                  // 00000000A650: DC50402C 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A658: BF8C0F70
	ds_write_b128 v0, v[24:27]                                 // 00000000A65C: D9BE0000 00001800
	scratch_load_dword v0, off, off offset:40                  // 00000000A664: DC504028 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000A66C: BF8C0F70
	ds_write_b128 v0, v[28:31]                                 // 00000000A670: D9BE0000 00001C00
	ds_read_b128 v[8:11], v219                                 // 00000000A678: D9FE0000 080000DB
	ds_read_b128 v[12:15], v218 offset:1024                    // 00000000A680: D9FE0400 0C0000DA
	ds_read_b128 v[16:19], v237 offset:2048                    // 00000000A688: D9FE0800 100000ED
	ds_read_b128 v[20:23], v254 offset:3072                    // 00000000A690: D9FE0C00 140000FE
	ds_read_b128 v[24:27], v219 offset:4096                    // 00000000A698: D9FE1000 180000DB
	ds_read_b128 v[28:31], v218 offset:5120                    // 00000000A6A0: D9FE1400 1C0000DA
	ds_read_b128 v[34:37], v237 offset:6144                    // 00000000A6A8: D9FE1800 220000ED
	ds_read_b128 v[38:41], v254 offset:7168                    // 00000000A6B0: D9FE1C00 260000FE
	v_add_u32_e32 v0, s3, v217                                 // 00000000A6B8: 6801B203
	v_mul_lo_u32 v0, v0, s9                                    // 00000000A6BC: D2850000 00001300
	scratch_load_dword v1, off, off offset:32                  // 00000000A6C4: DC504020 017F0000
	s_waitcnt vmcnt(0)                                         // 00000000A6CC: BF8C0F70
	v_add_u32_e32 v0, v0, v1                                   // 00000000A6D0: 68000300
	v_add_u32_e32 v1, s15, v0                                  // 00000000A6D4: 6802000F
	v_add_u32_e32 v2, s15, v1                                  // 00000000A6D8: 6804020F
	v_add_u32_e32 v3, s15, v2                                  // 00000000A6DC: 6806040F
	v_add_u32_e32 v4, s15, v3                                  // 00000000A6E0: 6808060F
	v_add_u32_e32 v5, s15, v4                                  // 00000000A6E4: 680A080F
	v_add_u32_e32 v6, s15, v5                                  // 00000000A6E8: 680C0A0F
	v_add_u32_e32 v7, s15, v6                                  // 00000000A6EC: 680E0C0F
	s_waitcnt lgkmcnt(7)                                       // 00000000A6F0: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[0:1]                   // 00000000A6F4: DC7C8000 00000800
	s_waitcnt lgkmcnt(6)                                       // 00000000A6FC: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[0:1]                  // 00000000A700: DC7C8000 00000C01
	s_waitcnt lgkmcnt(5)                                       // 00000000A708: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[0:1]                  // 00000000A70C: DC7C8000 00001002
	s_waitcnt lgkmcnt(4)                                       // 00000000A714: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[0:1]                  // 00000000A718: DC7C8000 00001403
	s_waitcnt lgkmcnt(3)                                       // 00000000A720: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[0:1]                  // 00000000A724: DC7C8000 00001804
	s_waitcnt lgkmcnt(2)                                       // 00000000A72C: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[0:1]                  // 00000000A730: DC7C8000 00001C05
	s_waitcnt lgkmcnt(1)                                       // 00000000A738: BF8CC17F
	global_store_dwordx4 v6, v[34:37], s[0:1]                  // 00000000A73C: DC7C8000 00002206
	s_waitcnt lgkmcnt(0)                                       // 00000000A744: BF8CC07F
	global_store_dwordx4 v7, v[38:41], s[0:1]                  // 00000000A748: DC7C8000 00002607
	v_add_u32_e32 v0, s3, v216                                 // 00000000A750: 6801B003
	v_lshlrev_b32_e32 v0, 2, v0                                // 00000000A754: 24000082
	s_cmp_eq_u64 s[36:37], 0                                   // 00000000A758: BF128024
	s_cbranch_scc1 2                                           // 00000000A75C: BF850002 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8c68>
	global_store_dword v0, v32, s[36:37]                       // 00000000A760: DC708000 00242000
	s_and_b64 s[0:1], s[10:11], exec                           // 00000000A768: 86807E0A
	s_cbranch_scc0 1                                           // 00000000A76C: BF840001 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8c74>
	s_barrier                                                  // 00000000A770: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000A774: BF8C0F70
	s_endpgm                                                   // 00000000A778: BF810000
		...

000000000000a800 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE>:
	s_load_dwordx16 s[36:51], s[0:1], 0x0                      // 00000000A800: C0120900 00000000
	s_load_dwordx16 s[4:19], s[0:1], 0x40                      // 00000000A808: C0120100 00000040
	s_load_dwordx4 s[20:23], s[0:1], 0x80                      // 00000000A810: C00A0500 00000080
	s_load_dwordx2 s[24:25], s[0:1], 0x90                      // 00000000A818: C0060600 00000090
	v_and_b32_e32 v3, 63, v0                                   // 00000000A820: 260600BF
	v_and_b32_e32 v146, 31, v0                                 // 00000000A824: 2724009F
	v_bfe_u32 v1, v0, 5, 1                                     // 00000000A828: D1C80001 02050B00
	s_movk_i32 s0, 0xe0                                        // 00000000A830: B00000E0
	v_lshlrev_b32_e32 v2, 8, v146                              // 00000000A834: 24052488
	v_add_lshl_u32 v4, v1, v3, 5                               // 00000000A838: D1FE0004 02160701
	v_and_or_b32 v161, v4, s0, v2                              // 00000000A840: D20100A1 04080104
	v_add_u32_e32 v5, 64, v4                                   // 00000000A848: 680A08C0
	v_add_u32_e32 v4, 0x80, v4                                 // 00000000A84C: 680808FF 00000080
	v_readfirstlane_b32 s3, v0                                 // 00000000A854: 7E060500
	v_and_or_b32 v162, v5, s0, v2                              // 00000000A858: D20100A2 04080105
	v_and_or_b32 v163, v4, s0, v2                              // 00000000A860: D20100A3 04080104
	s_waitcnt lgkmcnt(0)                                       // 00000000A868: BF8CC07F
	s_cmp_eq_u64 s[20:21], 0                                   // 00000000A86C: BF128014
	s_cbranch_scc1 14                                          // 00000000A870: BF85000E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xac>
	s_load_dword s0, s[20:21], 0x0                             // 00000000A874: C002000A 00000000
	s_cmp_eq_u64 s[22:23], 0                                   // 00000000A87C: BF128016
	s_cbranch_scc1 13                                          // 00000000A880: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb8>
	s_load_dword s1, s[22:23], 0x0                             // 00000000A884: C002004B 00000000
	s_waitcnt lgkmcnt(0)                                       // 00000000A88C: BF8CC07F
	v_mov_b32_e32 v4, s1                                       // 00000000A890: 7E080201
	v_mul_f32_e32 v4, s0, v4                                   // 00000000A894: 0A080800
	s_cmp_eq_u64 s[24:25], 0                                   // 00000000A898: BF128018
	s_cbranch_scc1 10                                          // 00000000A89C: BF85000A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc8>
	s_load_dword s15, s[24:25], 0x0                            // 00000000A8A0: C00203CC 00000000
	s_branch 8                                                 // 00000000A8A8: BF820008 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xcc>
	s_mov_b32 s0, 1.0                                          // 00000000A8AC: BE8000F2
	s_cmp_eq_u64 s[22:23], 0                                   // 00000000A8B0: BF128016
	s_cbranch_scc0 65523                                       // 00000000A8B4: BF84FFF3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x84>
	s_waitcnt lgkmcnt(0)                                       // 00000000A8B8: BF8CC07F
	v_mov_b32_e32 v4, s0                                       // 00000000A8BC: 7E080200
	s_cmp_eq_u64 s[24:25], 0                                   // 00000000A8C0: BF128018
	s_cbranch_scc0 65526                                       // 00000000A8C4: BF84FFF6 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa0>
	s_mov_b32 s15, 1.0                                         // 00000000A8C8: BE8F00F2
	v_and_b32_e32 v6, 1, v0                                    // 00000000A8CC: 260C0081
	v_bfe_u32 v5, v0, 1, 3                                     // 00000000A8D0: D1C80005 020D0300
	v_lshlrev_b32_e32 v7, 4, v6                                // 00000000A8D8: 240E0C84
	v_lshrrev_b32_e32 v8, 4, v0                                // 00000000A8DC: 20100084
	v_sub_u32_e32 v9, v5, v8                                   // 00000000A8E0: 6A121105
	v_and_b32_e32 v9, 7, v9                                    // 00000000A8E4: 26121287
	v_cmp_gt_u32_e32 vcc, 6, v9                                // 00000000A8E8: 7D981286
	s_nop 1                                                    // 00000000A8EC: BF800001
	v_cndmask_b32_e32 v9, 0, v9, vcc                           // 00000000A8F0: 00121280
	v_lshlrev_b32_e32 v9, 5, v9                                // 00000000A8F4: 24121285
	v_or_b32_e32 v9, v9, v7                                    // 00000000A8F8: 28120F09
	v_mad_u32_u24 v164, s6, v8, v9                             // 00000000A8FC: D1C300A4 04261006
	v_or_b32_e32 v8, 0x200, v0                                 // 00000000A904: 281000FF 00000200
	v_lshrrev_b32_e32 v8, 4, v8                                // 00000000A90C: 20101084
	v_sub_u32_e32 v5, v5, v8                                   // 00000000A910: 6A0A1105
	v_and_b32_e32 v5, 7, v5                                    // 00000000A914: 260A0A87
	v_cmp_gt_u32_e32 vcc, 6, v5                                // 00000000A918: 7D980A86
	s_nop 1                                                    // 00000000A91C: BF800001
	v_cndmask_b32_e32 v5, 0, v5, vcc                           // 00000000A920: 000A0A80
	v_lshlrev_b32_e32 v5, 5, v5                                // 00000000A924: 240A0A85
	v_or_b32_e32 v5, v5, v7                                    // 00000000A928: 280A0F05
	v_mad_u32_u24 v165, s6, v8, v5                             // 00000000A92C: D1C300A5 04161006
	v_bfe_u32 v5, v0, 7, 1                                     // 00000000A934: D1C80005 02050F00
	v_lshrrev_b32_e32 v6, 8, v0                                // 00000000A93C: 200C0088
	v_lshlrev_b32_e32 v11, 5, v5                               // 00000000A940: 24160A85
	v_bfe_u32 v7, v0, 6, 1                                     // 00000000A944: D1C80007 02050D00
	v_lshl_or_b32 v13, v6, 2, v11                              // 00000000A94C: D200000D 042D0506
	v_bfe_u32 v8, v0, 2, 1                                     // 00000000A954: D1C80008 02050500
	v_lshl_or_b32 v14, v7, 4, v13                              // 00000000A95C: D200000E 04350907
	v_and_b32_e32 v9, 3, v0                                    // 00000000A964: 26120083
	v_bfe_u32 v10, v0, 3, 3                                    // 00000000A968: D1C8000A 020D0700
	v_lshl_or_b32 v15, v8, 3, v14                              // 00000000A970: D200000F 04390708
	v_lshlrev_b32_e32 v12, 4, v10                              // 00000000A978: 24181484
	v_or_b32_e32 v16, v15, v9                                  // 00000000A97C: 2820130F
	v_mad_u32_u24 v166, s7, v16, v12                           // 00000000A980: D1C300A6 04322007
	s_cmp_ge_u32 s2, s49                                       // 00000000A988: BF093102
	s_cbranch_scc1 5348                                        // 00000000A98C: BF8514E4 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5520>
	s_lshr_b32 s22, s3, 8                                      // 00000000A990: 8F168803
	s_cmp_eq_u32 s4, 0                                         // 00000000A994: BF068004
	s_cselect_b64 s[0:1], -1, 0                                // 00000000A998: 858080C1
	s_and_b64 s[16:17], s[0:1], exec                           // 00000000A99C: 86907E00
	s_cselect_b32 s23, 0, s22                                  // 00000000A9A0: 85171680
	s_lshl_b32 s4, s2, 5                                       // 00000000A9A4: 8E048502
	s_load_dwordx8 s[52:59], s[46:47], s4 offset:0x0           // 00000000A9A8: C00E4D17 08000000
	s_cmp_eq_u64 s[44:45], 0                                   // 00000000A9B0: BF12802C
	s_cselect_b64 s[34:35], -1, 0                              // 00000000A9B4: 85A280C1
	s_mov_b64 s[18:19], 0                                      // 00000000A9B8: BE920180
	s_mul_i32 s33, s11, s23                                    // 00000000A9BC: 9221170B
	s_and_b64 vcc, exec, s[34:35]                              // 00000000A9C0: 86EA227E
	s_cbranch_vccnz 5                                          // 00000000A9C4: BF870005 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1dc>
	s_waitcnt lgkmcnt(0)                                       // 00000000A9C8: BF8CC07F
	s_add_u32 s4, s33, s53                                     // 00000000A9CC: 80043521
	s_lshl_b32 s4, s4, 2                                       // 00000000A9D0: 8E048204
	s_add_u32 s18, s44, s4                                     // 00000000A9D4: 8012042C
	s_addc_u32 s19, s45, 0                                     // 00000000A9D8: 8213802D
	s_mov_b32 s17, 0                                           // 00000000A9DC: BE910080
	s_waitcnt lgkmcnt(0)                                       // 00000000A9E0: BF8CC07F
	s_mov_b32 s16, s58                                         // 00000000A9E4: BE90003A
	s_lshl_b64 s[16:17], s[16:17], 7                           // 00000000A9E8: 8E908710
	s_mul_i32 s4, s9, s23                                      // 00000000A9EC: 92041709
	s_add_u32 s9, s36, s54                                     // 00000000A9F0: 80093624
	s_addc_u32 s11, s37, s55                                   // 00000000A9F4: 820B3725
	s_add_u32 s20, s9, s4                                      // 00000000A9F8: 80140409
	s_addc_u32 s21, s11, 0                                     // 00000000A9FC: 8215800B
	s_add_u32 s60, s38, s56                                    // 00000000AA00: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000AA04: 823D3927
	s_add_u32 s64, s40, s16                                    // 00000000AA08: 80401028
	s_addc_u32 s65, s41, s17                                   // 00000000AA0C: 82411129
	s_lshr_b32 s11, s3, 6                                      // 00000000AA10: 8F0B8603
	s_lshl_b32 s9, s6, 6                                       // 00000000AA14: 8E098606
	s_bfe_u32 s17, s3, 0x20006                                 // 00000000AA18: 9291FF03 00020006
	s_lshl_b32 s72, s11, 10                                    // 00000000AA20: 8E488A0B
	s_and_b64 s[0:1], s[0:1], exec                             // 00000000AA24: 86807E00
	s_cselect_b32 s73, s11, s17                                // 00000000AA28: 8549110B
	s_not_b32 s0, s52                                          // 00000000AA2C: BE800434
	s_add_u32 s0, s50, s0                                      // 00000000AA30: 80000032
	s_mul_i32 s1, s51, s0                                      // 00000000AA34: 92010033
	s_lshl_b32 s0, s0, 5                                       // 00000000AA38: 8E008500
	s_add_u32 s0, s0, 32                                       // 00000000AA3C: 8000A000
	s_mul_i32 s0, s0, s51                                      // 00000000AA40: 92003300
	s_add_u32 s1, s1, s73                                      // 00000000AA44: 80014901
	s_add_u32 s0, s0, 32                                       // 00000000AA48: 8000A000
	s_mul_i32 s62, s6, s12                                     // 00000000AA4C: 923E0C06
	s_mul_i32 s66, s7, s12                                     // 00000000AA50: 92420C07
	s_lshr_b32 s12, s12, 6                                     // 00000000AA54: 8F0C860C
	s_lshl_b32 s3, s1, 5                                       // 00000000AA58: 8E038501
	s_lshr_b32 s0, s0, 6                                       // 00000000AA5C: 8F008600
	s_mov_b32 s63, 0x110000                                    // 00000000AA60: BEBF00FF 00110000
	v_or_b32_e32 v5, s3, v146                                  // 00000000AA68: 280B2403
	s_min_u32 s98, s12, s0                                     // 00000000AA6C: 83E2000C
	s_mov_b32 s67, s63                                         // 00000000AA70: BEC3003F
	v_mul_lo_u32 v5, s5, v5                                    // 00000000AA74: D2850005 00020A05
	v_lshlrev_b32_e32 v167, 5, v1                              // 00000000AA7C: 254E0285
	v_add_u32_e32 v5, v167, v5                                 // 00000000AA80: 680A0BA7
	global_load_dwordx4 v[182:185], v5, s[20:21]               // 00000000AA84: DC5C8000 B6140005
	global_load_dwordx4 v[186:189], v5, s[20:21] offset:16     // 00000000AA8C: DC5C8010 BA140005
	global_load_dwordx4 v[190:193], v5, s[20:21] offset:64     // 00000000AA94: DC5C8040 BE140005
	global_load_dwordx4 v[194:197], v5, s[20:21] offset:80     // 00000000AA9C: DC5C8050 C2140005
	global_load_dwordx4 v[198:201], v5, s[20:21] offset:128    // 00000000AAA4: DC5C8080 C6140005
	global_load_dwordx4 v[202:205], v5, s[20:21] offset:144    // 00000000AAAC: DC5C8090 CA140005
	s_mov_b32 m0, s72                                          // 00000000AAB4: BEFC0048
	s_or_b32 s0, s72, 0x10000                                  // 00000000AAB8: 8700FF48 00010000
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000AAC0: E05D1000 800F00A4
	s_or_b32 m0, s72, 0x2000                                   // 00000000AAC8: 877CFF48 00002000
	s_cmp_lt_u32 s98, 2                                        // 00000000AAD0: BF0A8262
	buffer_load_dwordx4 v165, s[60:63], 0 offen lds            // 00000000AAD4: E05D1000 800F00A5
	s_mov_b32 m0, s0                                           // 00000000AADC: BEFC0000
	s_nop 0                                                    // 00000000AAE0: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000AAE4: E05D1000 801000A6
	s_cbranch_scc1 10                                          // 00000000AAEC: BF85000A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x318>
	s_add_u32 m0, s0, 0xffff4000                               // 00000000AAF0: 807CFF00 FFFF4000
	s_nop 0                                                    // 00000000AAF8: BF800000
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000AAFC: E05D1000 090F00A4
	s_add_u32 m0, s0, 0xffff6000                               // 00000000AB04: 807CFF00 FFFF6000
	s_nop 0                                                    // 00000000AB0C: BF800000
	buffer_load_dwordx4 v165, s[60:63], s9 offen lds           // 00000000AB10: E05D1000 090F00A5
	v_lshrrev_b32_e32 v5, 2, v0                                // 00000000AB18: 200A0082
	v_lshrrev_b32_e32 v6, 3, v0                                // 00000000AB1C: 200C0083
	s_waitcnt vmcnt(0)                                         // 00000000AB20: BF8C0F70
	s_barrier                                                  // 00000000AB24: BF8A0000
	s_cmp_eq_u32 s22, 0                                        // 00000000AB28: BF068016
	s_cbranch_scc1 1                                           // 00000000AB2C: BF850001 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x334>
	s_barrier                                                  // 00000000AB30: BF8A0000
	s_mov_b32 s16, 0                                           // 00000000AB34: BE900080
	s_mov_b32 s0, s59                                          // 00000000AB38: BE80003B
	s_mov_b32 s1, s16                                          // 00000000AB3C: BE810010
	s_lshr_b32 s78, s3, 6                                      // 00000000AB40: 8F4E8603
	s_lshl_b64 s[0:1], s[0:1], 8                               // 00000000AB44: 8E808800
	s_add_u32 s0, s42, s0                                      // 00000000AB48: 8000002A
	s_mul_i32 s20, s10, s23                                    // 00000000AB4C: 9214170A
	s_addc_u32 s1, s43, s1                                     // 00000000AB50: 8201012B
	s_add_u32 s10, s0, s20                                     // 00000000AB54: 800A1400
	v_mul_f32_e32 v142, s48, v4                                // 00000000AB58: 0B1C0830
	v_mov_b32_e32 v4, s14                                      // 00000000AB5C: 7E08020E
	v_and_b32_e32 v7, 32, v0                                   // 00000000AB60: 260E00A0
	v_lshrrev_b32_e32 v8, 4, v146                              // 00000000AB64: 20112484
	v_lshrrev_b32_e32 v147, 4, v3                              // 00000000AB68: 21260684
	v_and_b32_e32 v6, 4, v6                                    // 00000000AB6C: 260C0C84
	s_addc_u32 s11, s1, 0                                      // 00000000AB70: 820B8001
	s_lshl_b32 s99, s7, 6                                      // 00000000AB74: 8E638607
	s_lshl_b32 s85, s6, 8                                      // 00000000AB78: 8E558806
	s_lshl_b32 s86, s7, 7                                      // 00000000AB7C: 8E568707
	v_lshlrev_b32_e32 v9, 3, v0                                // 00000000AB80: 24120083
	v_and_b32_e32 v0, 15, v0                                   // 00000000AB84: 2600008F
	v_mul_f32_e32 v168, s15, v4                                // 00000000AB88: 0B50080F
	v_or_b32_e32 v4, v8, v7                                    // 00000000AB8C: 28080F08
	v_xor_b32_e32 v5, v147, v5                                 // 00000000AB90: 2A0A0B93
	v_sub_u32_e32 v171, v146, v6                               // 00000000AB94: 6B560D92
	v_and_or_b32 v6, v147, 1, v7                               // 00000000AB98: D2010006 041D0393
	s_cmp_eq_u32 s22, 0                                        // 00000000ABA0: BF068016
	s_mov_b32 s48, 0x10000                                     // 00000000ABA4: BEB000FF 00010000
	v_and_b32_e32 v8, 0x78, v9                                 // 00000000ABAC: 261012FF 00000078
	v_xor_b32_e32 v7, v1, v0                                   // 00000000ABB4: 2A0E0101
	v_xor_b32_e32 v9, v147, v0                                 // 00000000ABB8: 2A120193
	v_lshlrev_b32_e32 v148, 4, v0                              // 00000000ABBC: 25280084
	v_lshlrev_b32_e32 v0, 7, v4                                // 00000000ABC0: 24000887
	v_and_b32_e32 v4, 1, v5                                    // 00000000ABC4: 26080A81
	v_lshlrev_b32_e32 v5, 7, v6                                // 00000000ABC8: 240A0C87
	s_cselect_b64 s[0:1], -1, 0                                // 00000000ABCC: 858080C1
	s_lshl_b32 s15, s17, 13                                    // 00000000ABD0: 8E0F8D11
	s_lshl_b32 s17, s6, 7                                      // 00000000ABD4: 8E118706
	v_or3_b32 v172, v0, v8, s48                                // 00000000ABD8: D20200AC 00C21100
	v_or_b32_e32 v0, 0x16000, v5                               // 00000000ABE0: 28000AFF 00016000
	s_add_u32 s36, s36, s4                                     // 00000000ABE8: 80240424
	v_mov_b32_e32 v3, 0x38383838                               // 00000000ABEC: 7E0602FF 38383838
	s_mov_b32 s14, 0x18000                                     // 00000000ABF4: BE8E00FF 00018000
	v_lshlrev_b32_e32 v6, 4, v7                                // 00000000ABFC: 240C0E84
	v_lshlrev_b32_e32 v7, 4, v9                                // 00000000AC00: 240E1284
	v_cmp_eq_u32_e32 vcc, 0, v4                                // 00000000AC04: 7D940880
	v_add_u32_e32 v176, v0, v8                                 // 00000000AC08: 69601100
	v_or_b32_e32 v0, s15, v2                                   // 00000000AC0C: 2800040F
	v_lshl_or_b32 v2, v147, 8, s15                             // 00000000AC10: D2000002 003D1193
	s_addc_u32 s37, s37, 0                                     // 00000000AC18: 82258025
	v_or_b32_e32 v4, 0x10000, v5                               // 00000000AC1C: 28080AFF 00010000
	v_or_b32_e32 v9, 0x12000, v5                               // 00000000AC24: 28120AFF 00012000
	v_or_b32_e32 v5, 0x14000, v5                               // 00000000AC2C: 280A0AFF 00014000
	v_cndmask_b32_e32 v126, 0, v3, vcc                         // 00000000AC34: 00FC0680
	v_or3_b32 v158, v0, v6, s14                                // 00000000AC38: D202009E 003A0D00
	v_or3_b32 v149, v2, v7, s14                                // 00000000AC40: D2020095 003A0F02
	s_add_u32 s42, s42, s20                                    // 00000000AC48: 802A142A
	s_mov_b32 s82, 0x16000                                     // 00000000AC4C: BED200FF 00016000
	s_mov_b32 s83, 0x12000                                     // 00000000AC54: BED300FF 00012000
	s_mov_b32 s88, 0x14000                                     // 00000000AC5C: BED800FF 00014000
	s_mov_b32 s89, 0xc2fe0000                                  // 00000000AC64: BED900FF C2FE0000
	v_mov_b32_e32 v169, 0xff800000                             // 00000000AC6C: 7F5202FF FF800000
	s_movk_i32 s90, 0x2000                                     // 00000000AC74: B05A2000
	v_mov_b32_e32 v170, 0x7f                                   // 00000000AC78: 7F5402FF 0000007F
	s_mov_b32 s91, 0x3e000000                                  // 00000000AC80: BEDB00FF 3E000000
	s_movk_i32 s92, 0x4000                                     // 00000000AC88: B05C4000
	s_movk_i32 s93, 0x6000                                     // 00000000AC8C: B05D6000
	s_mov_b32 s94, 0x8000                                      // 00000000AC90: BEDE00FF 00008000
	s_mov_b32 s95, 0xa000                                      // 00000000AC98: BEDF00FF 0000A000
	s_mov_b32 s96, 0xc000                                      // 00000000ACA0: BEE000FF 0000C000
	s_mov_b32 s97, 0xe000                                      // 00000000ACA8: BEE100FF 0000E000
	v_mov_b32_e32 v144, v142                                   // 00000000ACB0: 7F20038E
	v_mov_b32_e32 v145, v142                                   // 00000000ACB4: 7F22038E
	v_add_u32_e32 v173, v4, v8                                 // 00000000ACB8: 695A1104
	v_add_u32_e32 v174, v9, v8                                 // 00000000ACBC: 695C1109
	v_add_u32_e32 v175, v5, v8                                 // 00000000ACC0: 695E1105
	v_mov_b32_e32 v127, v126                                   // 00000000ACC4: 7EFE037E
	v_mov_b32_e32 v128, v126                                   // 00000000ACC8: 7F00037E
	v_mov_b32_e32 v129, v126                                   // 00000000ACCC: 7F02037E
	v_mov_b32_e32 v130, v126                                   // 00000000ACD0: 7F04037E
	v_mov_b32_e32 v131, v126                                   // 00000000ACD4: 7F06037E
	v_mov_b32_e32 v132, v126                                   // 00000000ACD8: 7F08037E
	v_mov_b32_e32 v133, v126                                   // 00000000ACDC: 7F0A037E
	v_xor_b32_e32 v160, 32, v158                               // 00000000ACE0: 2B413CA0
	v_xor_b32_e32 v159, 64, v158                               // 00000000ACE4: 2B3F3CC0
	v_xor_b32_e32 v157, 0x60, v158                             // 00000000ACE8: 2B3B3CFF 00000060
	v_xor_b32_e32 v156, 0x80, v158                             // 00000000ACF0: 2B393CFF 00000080
	v_xor_b32_e32 v155, 0xa0, v158                             // 00000000ACF8: 2B373CFF 000000A0
	v_xor_b32_e32 v154, 0xc0, v158                             // 00000000AD00: 2B353CFF 000000C0
	v_xor_b32_e32 v153, 0xe0, v158                             // 00000000AD08: 2B333CFF 000000E0
	v_xor_b32_e32 v152, 64, v149                               // 00000000AD10: 2B312AC0
	v_xor_b32_e32 v151, 0x80, v149                             // 00000000AD14: 2B2F2AFF 00000080
	v_xor_b32_e32 v150, 0xc0, v149                             // 00000000AD1C: 2B2D2AFF 000000C0
	s_addc_u32 s43, s43, 0                                     // 00000000AD24: 822B802B
	s_lshl_b32 s74, s6, 4                                      // 00000000AD28: 8E4A8406
	s_lshl_b32 s75, s6, 5                                      // 00000000AD2C: 8E4B8506
	s_lshl_b32 s76, s7, 2                                      // 00000000AD30: 8E4C8207
	s_lshl_b32 s4, s8, 2                                       // 00000000AD34: 8E048208
	v_writelane_b32 v230, s17, 0                               // 00000000AD38: D28A00E6 00010011
	s_mov_b32 s81, 0                                           // 00000000AD40: BED10080
	s_mov_b32 s77, 0                                           // 00000000AD44: BECD0080
	s_mov_b32 s67, s63                                         // 00000000AD48: BEC3003F
	s_mov_b32 s80, s63                                         // 00000000AD4C: BED0003F
	s_and_b32 s17, s81, 3                                      // 00000000AD50: 86118351
	s_lshl_b32 s20, s17, 14                                    // 00000000AD54: 8E148E11
	v_or_b32_e32 v0, s20, v161                                 // 00000000AD58: 28014214
	s_waitcnt vmcnt(8)                                         // 00000000AD5C: BF8C0F78
	v_or_b32_e32 v1, s20, v162                                 // 00000000AD60: 28034414
	ds_read_b128 v[2:5], v0                                    // 00000000AD64: D9FE0000 02000000
	ds_read_b128 v[6:9], v0 offset:16                          // 00000000AD6C: D9FE0010 06000000
	ds_read_b128 v[50:53], v0 offset:8192                      // 00000000AD74: D9FE2000 32000000
	ds_read_b128 v[54:57], v0 offset:8208                      // 00000000AD7C: D9FE2010 36000000
	ds_read_b128 v[42:45], v1                                  // 00000000AD84: D9FE0000 2A000001
	ds_read_b128 v[46:49], v1 offset:16                        // 00000000AD8C: D9FE0010 2E000001
	ds_read_b128 v[34:37], v1 offset:8192                      // 00000000AD94: D9FE2000 22000001
	ds_read_b128 v[38:41], v1 offset:8208                      // 00000000AD9C: D9FE2010 26000001
	s_mov_b64 s[14:15], s[18:19]                               // 00000000ADA4: BE8E0112
	s_cmp_eq_u32 s78, 0                                        // 00000000ADA8: BF06804E
	s_cbranch_scc1 108                                         // 00000000ADAC: BF85006C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x760>
	s_setprio 1                                                // 00000000ADB0: BF8F0001
	s_waitcnt lgkmcnt(0)                                       // 00000000ADB4: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[2:9], v[182:189], 0 // 00000000ADB8: D3AE0010 02036D02
	v_add_u32_e32 v32, s20, v163                               // 00000000ADC0: 68414614
	ds_read_b128 v[58:61], v32                                 // 00000000ADC4: D9FE0000 3A000020
	ds_read_b128 v[62:65], v32 offset:16                       // 00000000ADCC: D9FE0010 3E000020
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[182:189], 0// 00000000ADD4: D3AE0000 02036D32
	ds_read_b128 v[50:53], v32 offset:8192                     // 00000000ADDC: D9FE2000 32000020
	ds_read_b128 v[54:57], v32 offset:8208                     // 00000000ADE4: D9FE2010 36000020
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[42:49], v[190:197], v[16:31]// 00000000ADEC: D3AE0010 04437D2A
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[34:41], v[190:197], v[0:15]// 00000000ADF4: D3AE0000 04037D22
	s_waitcnt lgkmcnt(0)                                       // 00000000ADFC: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[58:65], v[198:205], v[16:31]// 00000000AE00: D3AE0010 04438D3A
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[198:205], v[0:15]// 00000000AE08: D3AE0000 04038D32
	s_nop 3                                                    // 00000000AE10: BF800003
	v_max_f32_e32 v32, v16, v17                                // 00000000AE14: 16402310
	v_max3_f32 v32, v18, v19, v32                              // 00000000AE18: D1D30020 04822712
	v_max3_f32 v32, v20, v21, v32                              // 00000000AE20: D1D30020 04822B14
	v_max3_f32 v32, v22, v23, v32                              // 00000000AE28: D1D30020 04822F16
	v_max3_f32 v32, v24, v25, v32                              // 00000000AE30: D1D30020 04823318
	v_max3_f32 v32, v26, v27, v32                              // 00000000AE38: D1D30020 0482371A
	v_max3_f32 v32, v28, v29, v32                              // 00000000AE40: D1D30020 04823B1C
	v_max3_f32 v32, v30, v31, v32                              // 00000000AE48: D1D30020 04823F1E
	s_nop 7                                                    // 00000000AE50: BF800007
	v_max_f32_e32 v33, v0, v1                                  // 00000000AE54: 16420300
	v_max3_f32 v33, v2, v3, v33                                // 00000000AE58: D1D30021 04860702
	v_max3_f32 v33, v4, v5, v33                                // 00000000AE60: D1D30021 04860B04
	v_max3_f32 v33, v6, v7, v33                                // 00000000AE68: D1D30021 04860F06
	v_max3_f32 v33, v8, v9, v33                                // 00000000AE70: D1D30021 04861308
	v_max3_f32 v33, v10, v11, v33                              // 00000000AE78: D1D30021 0486170A
	v_max3_f32 v33, v12, v13, v33                              // 00000000AE80: D1D30021 04861B0C
	v_max3_f32 v33, v14, v15, v33                              // 00000000AE88: D1D30021 04861F0E
	v_max_f32_e32 v32, v32, v33                                // 00000000AE90: 16404320
	v_mov_b32_e32 v33, v32                                     // 00000000AE94: 7E420320
	s_nop 1                                                    // 00000000AE98: BF800001
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000AE9C: 7E40B521
	v_max_f32_e32 v32, v32, v33                                // 00000000AEA0: 16404320
	v_mul_f32_e32 v111, v142, v32                              // 00000000AEA4: 0ADE418E
	v_fma_f32 v32, v32, v142, -v111                            // 00000000AEA8: D1CB0020 85BF1D20
	v_floor_f32_e32 v32, v32                                   // 00000000AEB0: 7E403F20
	v_med3_f32 v32, v32, s89, 0                                // 00000000AEB4: D1D60020 0200B320
	v_cvt_i32_f32_e32 v33, v32                                 // 00000000AEBC: 7E421120
	v_add_u32_e32 v179, 0x7f, v33                              // 00000000AEC0: 696642FF 0000007F
	v_lshlrev_b32_e32 v33, 23, v179                            // 00000000AEC8: 24436697
	v_add_f32_e32 v32, v111, v32                               // 00000000AECC: 0240416F
	v_sub_f32_e32 v32, 0x40c00000, v32                         // 00000000AED0: 044040FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000AED8: 7F1E038E
	v_pk_fma_f32 v[80:81], v[16:17], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000AEDC: D3B00050 1C832110
	v_pk_fma_f32 v[64:65], v[0:1], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000AEE4: D3B00040 1C832100
	v_pk_fma_f32 v[94:95], v[30:31], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AEEC: D3B0005E 1C831D1E
	v_pk_fma_f32 v[92:93], v[28:29], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AEF4: D3B0005C 1C831D1C
	v_pk_fma_f32 v[90:91], v[26:27], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AEFC: D3B0005A 1C831D1A
	v_pk_fma_f32 v[88:89], v[24:25], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF04: D3B00058 1C831D18
	v_pk_fma_f32 v[86:87], v[22:23], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF0C: D3B00056 1C831D16
	v_pk_fma_f32 v[84:85], v[20:21], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF14: D3B00054 1C831D14
	v_pk_fma_f32 v[82:83], v[18:19], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF1C: D3B00052 1C831D12
	v_pk_fma_f32 v[78:79], v[14:15], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF24: D3B0004E 1C831D0E
	v_pk_fma_f32 v[76:77], v[12:13], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF2C: D3B0004C 1C831D0C
	v_pk_fma_f32 v[74:75], v[10:11], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF34: D3B0004A 1C831D0A
	v_pk_fma_f32 v[72:73], v[8:9], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF3C: D3B00048 1C831D08
	v_pk_fma_f32 v[70:71], v[6:7], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF44: D3B00046 1C831D06
	v_pk_fma_f32 v[68:69], v[4:5], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF4C: D3B00044 1C831D04
	v_pk_fma_f32 v[66:67], v[2:3], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000AF54: D3B00042 1C831D02
	s_branch 286                                               // 00000000AF5C: BF82011E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xbd8>
	s_setprio 1                                                // 00000000AF60: BF8F0001
	s_waitcnt lgkmcnt(0)                                       // 00000000AF64: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[2:9], v[182:189], 0 // 00000000AF68: D3AE0010 02036D02
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[182:189], 0// 00000000AF70: D3AE0000 02036D32
	v_add_u32_e32 v32, s20, v163                               // 00000000AF78: 68414614
	ds_read_b128 v[58:61], v32                                 // 00000000AF7C: D9FE0000 3A000020
	ds_read_b128 v[62:65], v32 offset:16                       // 00000000AF84: D9FE0010 3E000020
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[42:49], v[190:197], v[16:31]// 00000000AF8C: D3AE0010 04437D2A
	ds_read_b128 v[50:53], v32 offset:8192                     // 00000000AF94: D9FE2000 32000020
	ds_read_b128 v[54:57], v32 offset:8208                     // 00000000AF9C: D9FE2010 36000020
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[34:41], v[190:197], v[0:15]// 00000000AFA4: D3AE0000 04037D22
	s_waitcnt lgkmcnt(0)                                       // 00000000AFAC: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[58:65], v[198:205], v[16:31]// 00000000AFB0: D3AE0010 04438D3A
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[198:205], v[0:15]// 00000000AFB8: D3AE0000 04038D32
	s_sub_u32 s18, s3, s16                                     // 00000000AFC0: 80921003
	s_sub_i32 s18, s18, 0                                      // 00000000AFC4: 81928012
	s_cmp_ge_i32 s18, 32                                       // 00000000AFC8: BF03A012
	s_cbranch_scc1 86                                          // 00000000AFCC: BF850056 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x928>
	s_cmp_lt_i32 s18, 0                                        // 00000000AFD0: BF048012
	s_cbranch_scc1 66                                          // 00000000AFD4: BF850042 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8e0>
	v_add_u32_e32 v32, s18, v171                               // 00000000AFD8: 68415612
	v_cmp_gt_i32_e32 vcc, 0, v32                               // 00000000AFDC: 7D884080
	s_nop 7                                                    // 00000000AFE0: BF800007
	v_cndmask_b32_e64 v16, v16, v169, vcc                      // 00000000AFE4: D1000010 01AB5310
	v_cmp_gt_i32_e32 vcc, 1, v32                               // 00000000AFEC: 7D884081
	s_nop 1                                                    // 00000000AFF0: BF800001
	v_cndmask_b32_e64 v17, v17, v169, vcc                      // 00000000AFF4: D1000011 01AB5311
	v_cmp_gt_i32_e32 vcc, 2, v32                               // 00000000AFFC: 7D884082
	s_nop 1                                                    // 00000000B000: BF800001
	v_cndmask_b32_e64 v18, v18, v169, vcc                      // 00000000B004: D1000012 01AB5312
	v_cmp_gt_i32_e32 vcc, 3, v32                               // 00000000B00C: 7D884083
	s_nop 1                                                    // 00000000B010: BF800001
	v_cndmask_b32_e64 v19, v19, v169, vcc                      // 00000000B014: D1000013 01AB5313
	v_cmp_gt_i32_e32 vcc, 8, v32                               // 00000000B01C: 7D884088
	s_nop 1                                                    // 00000000B020: BF800001
	v_cndmask_b32_e64 v20, v20, v169, vcc                      // 00000000B024: D1000014 01AB5314
	v_cmp_gt_i32_e32 vcc, 9, v32                               // 00000000B02C: 7D884089
	s_nop 1                                                    // 00000000B030: BF800001
	v_cndmask_b32_e64 v21, v21, v169, vcc                      // 00000000B034: D1000015 01AB5315
	v_cmp_gt_i32_e32 vcc, 10, v32                              // 00000000B03C: 7D88408A
	s_nop 1                                                    // 00000000B040: BF800001
	v_cndmask_b32_e64 v22, v22, v169, vcc                      // 00000000B044: D1000016 01AB5316
	v_cmp_gt_i32_e32 vcc, 11, v32                              // 00000000B04C: 7D88408B
	s_nop 1                                                    // 00000000B050: BF800001
	v_cndmask_b32_e64 v23, v23, v169, vcc                      // 00000000B054: D1000017 01AB5317
	v_cmp_gt_i32_e32 vcc, 16, v32                              // 00000000B05C: 7D884090
	s_nop 1                                                    // 00000000B060: BF800001
	v_cndmask_b32_e64 v24, v24, v169, vcc                      // 00000000B064: D1000018 01AB5318
	v_cmp_gt_i32_e32 vcc, 17, v32                              // 00000000B06C: 7D884091
	s_nop 1                                                    // 00000000B070: BF800001
	v_cndmask_b32_e64 v25, v25, v169, vcc                      // 00000000B074: D1000019 01AB5319
	v_cmp_gt_i32_e32 vcc, 18, v32                              // 00000000B07C: 7D884092
	s_nop 1                                                    // 00000000B080: BF800001
	v_cndmask_b32_e64 v26, v26, v169, vcc                      // 00000000B084: D100001A 01AB531A
	v_cmp_gt_i32_e32 vcc, 19, v32                              // 00000000B08C: 7D884093
	s_nop 1                                                    // 00000000B090: BF800001
	v_cndmask_b32_e64 v27, v27, v169, vcc                      // 00000000B094: D100001B 01AB531B
	v_cmp_gt_i32_e32 vcc, 24, v32                              // 00000000B09C: 7D884098
	s_nop 1                                                    // 00000000B0A0: BF800001
	v_cndmask_b32_e64 v28, v28, v169, vcc                      // 00000000B0A4: D100001C 01AB531C
	v_cmp_gt_i32_e32 vcc, 25, v32                              // 00000000B0AC: 7D884099
	s_nop 1                                                    // 00000000B0B0: BF800001
	v_cndmask_b32_e64 v29, v29, v169, vcc                      // 00000000B0B4: D100001D 01AB531D
	v_cmp_gt_i32_e32 vcc, 26, v32                              // 00000000B0BC: 7D88409A
	s_nop 1                                                    // 00000000B0C0: BF800001
	v_cndmask_b32_e64 v30, v30, v169, vcc                      // 00000000B0C4: D100001E 01AB531E
	v_cmp_gt_i32_e32 vcc, 27, v32                              // 00000000B0CC: 7D88409B
	s_nop 1                                                    // 00000000B0D0: BF800001
	v_cndmask_b32_e64 v31, v31, v169, vcc                      // 00000000B0D4: D100001F 01AB531F
	s_branch 18                                                // 00000000B0DC: BF820012 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x928>
	s_nop 9                                                    // 00000000B0E0: BF800009
	v_mov_b32_e32 v16, 0xff800000                              // 00000000B0E4: 7E2002FF FF800000
	v_mov_b32_e32 v17, v16                                     // 00000000B0EC: 7E220310
	v_mov_b32_e32 v18, v16                                     // 00000000B0F0: 7E240310
	v_mov_b32_e32 v19, v16                                     // 00000000B0F4: 7E260310
	v_mov_b32_e32 v20, v16                                     // 00000000B0F8: 7E280310
	v_mov_b32_e32 v21, v16                                     // 00000000B0FC: 7E2A0310
	v_mov_b32_e32 v22, v16                                     // 00000000B100: 7E2C0310
	v_mov_b32_e32 v23, v16                                     // 00000000B104: 7E2E0310
	v_mov_b32_e32 v24, v16                                     // 00000000B108: 7E300310
	v_mov_b32_e32 v25, v16                                     // 00000000B10C: 7E320310
	v_mov_b32_e32 v26, v16                                     // 00000000B110: 7E340310
	v_mov_b32_e32 v27, v16                                     // 00000000B114: 7E360310
	v_mov_b32_e32 v28, v16                                     // 00000000B118: 7E380310
	v_mov_b32_e32 v29, v16                                     // 00000000B11C: 7E3A0310
	v_mov_b32_e32 v30, v16                                     // 00000000B120: 7E3C0310
	v_mov_b32_e32 v31, v16                                     // 00000000B124: 7E3E0310
	s_sub_u32 s18, s3, s16                                     // 00000000B128: 80921003
	s_sub_i32 s18, s18, 32                                     // 00000000B12C: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 00000000B130: BF03A012
	s_cbranch_scc1 86                                          // 00000000B134: BF850056 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa90>
	s_cmp_lt_i32 s18, 0                                        // 00000000B138: BF048012
	s_cbranch_scc1 66                                          // 00000000B13C: BF850042 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa48>
	v_add_u32_e32 v32, s18, v171                               // 00000000B140: 68415612
	v_cmp_gt_i32_e32 vcc, 0, v32                               // 00000000B144: 7D884080
	s_nop 11                                                   // 00000000B148: BF80000B
	v_cndmask_b32_e64 v0, v0, v169, vcc                        // 00000000B14C: D1000000 01AB5300
	v_cmp_gt_i32_e32 vcc, 1, v32                               // 00000000B154: 7D884081
	s_nop 1                                                    // 00000000B158: BF800001
	v_cndmask_b32_e64 v1, v1, v169, vcc                        // 00000000B15C: D1000001 01AB5301
	v_cmp_gt_i32_e32 vcc, 2, v32                               // 00000000B164: 7D884082
	s_nop 1                                                    // 00000000B168: BF800001
	v_cndmask_b32_e64 v2, v2, v169, vcc                        // 00000000B16C: D1000002 01AB5302
	v_cmp_gt_i32_e32 vcc, 3, v32                               // 00000000B174: 7D884083
	s_nop 1                                                    // 00000000B178: BF800001
	v_cndmask_b32_e64 v3, v3, v169, vcc                        // 00000000B17C: D1000003 01AB5303
	v_cmp_gt_i32_e32 vcc, 8, v32                               // 00000000B184: 7D884088
	s_nop 1                                                    // 00000000B188: BF800001
	v_cndmask_b32_e64 v4, v4, v169, vcc                        // 00000000B18C: D1000004 01AB5304
	v_cmp_gt_i32_e32 vcc, 9, v32                               // 00000000B194: 7D884089
	s_nop 1                                                    // 00000000B198: BF800001
	v_cndmask_b32_e64 v5, v5, v169, vcc                        // 00000000B19C: D1000005 01AB5305
	v_cmp_gt_i32_e32 vcc, 10, v32                              // 00000000B1A4: 7D88408A
	s_nop 1                                                    // 00000000B1A8: BF800001
	v_cndmask_b32_e64 v6, v6, v169, vcc                        // 00000000B1AC: D1000006 01AB5306
	v_cmp_gt_i32_e32 vcc, 11, v32                              // 00000000B1B4: 7D88408B
	s_nop 1                                                    // 00000000B1B8: BF800001
	v_cndmask_b32_e64 v7, v7, v169, vcc                        // 00000000B1BC: D1000007 01AB5307
	v_cmp_gt_i32_e32 vcc, 16, v32                              // 00000000B1C4: 7D884090
	s_nop 1                                                    // 00000000B1C8: BF800001
	v_cndmask_b32_e64 v8, v8, v169, vcc                        // 00000000B1CC: D1000008 01AB5308
	v_cmp_gt_i32_e32 vcc, 17, v32                              // 00000000B1D4: 7D884091
	s_nop 1                                                    // 00000000B1D8: BF800001
	v_cndmask_b32_e64 v9, v9, v169, vcc                        // 00000000B1DC: D1000009 01AB5309
	v_cmp_gt_i32_e32 vcc, 18, v32                              // 00000000B1E4: 7D884092
	s_nop 1                                                    // 00000000B1E8: BF800001
	v_cndmask_b32_e64 v10, v10, v169, vcc                      // 00000000B1EC: D100000A 01AB530A
	v_cmp_gt_i32_e32 vcc, 19, v32                              // 00000000B1F4: 7D884093
	s_nop 1                                                    // 00000000B1F8: BF800001
	v_cndmask_b32_e64 v11, v11, v169, vcc                      // 00000000B1FC: D100000B 01AB530B
	v_cmp_gt_i32_e32 vcc, 24, v32                              // 00000000B204: 7D884098
	s_nop 1                                                    // 00000000B208: BF800001
	v_cndmask_b32_e64 v12, v12, v169, vcc                      // 00000000B20C: D100000C 01AB530C
	v_cmp_gt_i32_e32 vcc, 25, v32                              // 00000000B214: 7D884099
	s_nop 1                                                    // 00000000B218: BF800001
	v_cndmask_b32_e64 v13, v13, v169, vcc                      // 00000000B21C: D100000D 01AB530D
	v_cmp_gt_i32_e32 vcc, 26, v32                              // 00000000B224: 7D88409A
	s_nop 1                                                    // 00000000B228: BF800001
	v_cndmask_b32_e64 v14, v14, v169, vcc                      // 00000000B22C: D100000E 01AB530E
	v_cmp_gt_i32_e32 vcc, 27, v32                              // 00000000B234: 7D88409B
	s_nop 1                                                    // 00000000B238: BF800001
	v_cndmask_b32_e64 v15, v15, v169, vcc                      // 00000000B23C: D100000F 01AB530F
	s_branch 18                                                // 00000000B244: BF820012 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa90>
	s_nop 13                                                   // 00000000B248: BF80000D
	v_mov_b32_e32 v0, 0xff800000                               // 00000000B24C: 7E0002FF FF800000
	v_mov_b32_e32 v1, v0                                       // 00000000B254: 7E020300
	v_mov_b32_e32 v2, v0                                       // 00000000B258: 7E040300
	v_mov_b32_e32 v3, v0                                       // 00000000B25C: 7E060300
	v_mov_b32_e32 v4, v0                                       // 00000000B260: 7E080300
	v_mov_b32_e32 v5, v0                                       // 00000000B264: 7E0A0300
	v_mov_b32_e32 v6, v0                                       // 00000000B268: 7E0C0300
	v_mov_b32_e32 v7, v0                                       // 00000000B26C: 7E0E0300
	v_mov_b32_e32 v8, v0                                       // 00000000B270: 7E100300
	v_mov_b32_e32 v9, v0                                       // 00000000B274: 7E120300
	v_mov_b32_e32 v10, v0                                      // 00000000B278: 7E140300
	v_mov_b32_e32 v11, v0                                      // 00000000B27C: 7E160300
	v_mov_b32_e32 v12, v0                                      // 00000000B280: 7E180300
	v_mov_b32_e32 v13, v0                                      // 00000000B284: 7E1A0300
	v_mov_b32_e32 v14, v0                                      // 00000000B288: 7E1C0300
	v_mov_b32_e32 v15, v0                                      // 00000000B28C: 7E1E0300
	v_max_f32_e32 v32, v16, v17                                // 00000000B290: 16402310
	v_max3_f32 v32, v18, v19, v32                              // 00000000B294: D1D30020 04822712
	v_max3_f32 v32, v20, v21, v32                              // 00000000B29C: D1D30020 04822B14
	v_max3_f32 v32, v22, v23, v32                              // 00000000B2A4: D1D30020 04822F16
	v_max3_f32 v32, v24, v25, v32                              // 00000000B2AC: D1D30020 04823318
	v_max3_f32 v32, v26, v27, v32                              // 00000000B2B4: D1D30020 0482371A
	v_max3_f32 v32, v28, v29, v32                              // 00000000B2BC: D1D30020 04823B1C
	v_max3_f32 v32, v30, v31, v32                              // 00000000B2C4: D1D30020 04823F1E
	s_nop 7                                                    // 00000000B2CC: BF800007
	v_max_f32_e32 v33, v0, v1                                  // 00000000B2D0: 16420300
	v_max3_f32 v33, v2, v3, v33                                // 00000000B2D4: D1D30021 04860702
	v_max3_f32 v33, v4, v5, v33                                // 00000000B2DC: D1D30021 04860B04
	v_max3_f32 v33, v6, v7, v33                                // 00000000B2E4: D1D30021 04860F06
	v_max3_f32 v33, v8, v9, v33                                // 00000000B2EC: D1D30021 04861308
	v_max3_f32 v33, v10, v11, v33                              // 00000000B2F4: D1D30021 0486170A
	v_max3_f32 v33, v12, v13, v33                              // 00000000B2FC: D1D30021 04861B0C
	v_max3_f32 v33, v14, v15, v33                              // 00000000B304: D1D30021 04861F0E
	v_max_f32_e32 v32, v32, v33                                // 00000000B30C: 16404320
	v_mov_b32_e32 v33, v32                                     // 00000000B310: 7E420320
	s_nop 1                                                    // 00000000B314: BF800001
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000B318: 7E40B521
	v_max_f32_e32 v32, v32, v33                                // 00000000B31C: 16404320
	v_mul_f32_e32 v111, v142, v32                              // 00000000B320: 0ADE418E
	v_fma_f32 v32, v32, v142, -v111                            // 00000000B324: D1CB0020 85BF1D20
	v_floor_f32_e32 v32, v32                                   // 00000000B32C: 7E403F20
	v_med3_f32 v32, v32, s89, 0                                // 00000000B330: D1D60020 0200B320
	v_cvt_i32_f32_e32 v33, v32                                 // 00000000B338: 7E421120
	v_add_u32_e32 v179, 0x7f, v33                              // 00000000B33C: 696642FF 0000007F
	v_lshlrev_b32_e32 v33, 23, v179                            // 00000000B344: 24436697
	v_add_f32_e32 v32, v111, v32                               // 00000000B348: 0240416F
	v_sub_f32_e32 v32, 0x40c00000, v32                         // 00000000B34C: 044040FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000B354: 7F1E038E
	v_pk_fma_f32 v[80:81], v[16:17], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000B358: D3B00050 1C832110
	v_pk_fma_f32 v[64:65], v[0:1], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000B360: D3B00040 1C832100
	v_pk_fma_f32 v[94:95], v[30:31], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B368: D3B0005E 1C831D1E
	v_pk_fma_f32 v[92:93], v[28:29], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B370: D3B0005C 1C831D1C
	v_pk_fma_f32 v[90:91], v[26:27], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B378: D3B0005A 1C831D1A
	v_pk_fma_f32 v[88:89], v[24:25], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B380: D3B00058 1C831D18
	v_pk_fma_f32 v[86:87], v[22:23], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B388: D3B00056 1C831D16
	v_pk_fma_f32 v[84:85], v[20:21], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B390: D3B00054 1C831D14
	v_pk_fma_f32 v[82:83], v[18:19], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B398: D3B00052 1C831D12
	v_pk_fma_f32 v[78:79], v[14:15], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3A0: D3B0004E 1C831D0E
	v_pk_fma_f32 v[76:77], v[12:13], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3A8: D3B0004C 1C831D0C
	v_pk_fma_f32 v[74:75], v[10:11], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3B0: D3B0004A 1C831D0A
	v_pk_fma_f32 v[72:73], v[8:9], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3B8: D3B00048 1C831D08
	v_pk_fma_f32 v[70:71], v[6:7], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3C0: D3B00046 1C831D06
	v_pk_fma_f32 v[68:69], v[4:5], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3C8: D3B00044 1C831D04
	v_pk_fma_f32 v[66:67], v[2:3], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3D0: D3B00042 1C831D02
	s_waitcnt vmcnt(0)                                         // 00000000B3D8: BF8C0F70
	s_mov_b64 s[70:71], s[62:63]                               // 00000000B3DC: BEC6013E
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000B3E0: 86927E00
	s_mov_b64 s[68:69], s[60:61]                               // 00000000B3E4: BEC4013C
	s_mov_b32 s71, s80                                         // 00000000B3E8: BEC70050
	s_cbranch_scc0 34                                          // 00000000B3EC: BF840022 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc78>
	s_cmp_ge_u32 s98, 2                                        // 00000000B3F0: BF098262
	s_cbranch_scc1 186                                         // 00000000B3F4: BF8500BA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xee0>
	s_cmp_ge_u32 s98, 3                                        // 00000000B3F8: BF098362
	s_cbranch_scc1 202                                         // 00000000B3FC: BF8500CA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf28>
	s_cmp_lt_u32 s98, 4                                        // 00000000B400: BF0A8462
	s_cbranch_scc1 27                                          // 00000000B404: BF85001B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc74>
	s_add_u32 s17, s81, -1                                     // 00000000B408: 8011C151
	s_and_b32 s17, s17, 3                                      // 00000000B40C: 86118311
	s_lshl_b32 s17, s17, 14                                    // 00000000B410: 8E118E11
	s_or_b32 s17, s17, s72                                     // 00000000B414: 87114811
	s_mov_b32 m0, s17                                          // 00000000B418: BEFC0011
	s_mul_i32 s18, s6, 0xc0                                    // 00000000B41C: 9212FF06 000000C0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B424: E05D1000 121100A4
	s_add_u32 m0, s17, 0x1000                                  // 00000000B42C: 807CFF11 00001000
	s_mul_i32 s18, s6, 0xd0                                    // 00000000B434: 9212FF06 000000D0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B43C: E05D1000 121100A4
	s_or_b32 m0, s17, 0x2000                                   // 00000000B444: 877CFF11 00002000
	s_mul_i32 s18, s6, 0xe0                                    // 00000000B44C: 9212FF06 000000E0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B454: E05D1000 121100A4
	s_add_u32 m0, s17, 0x3000                                  // 00000000B45C: 807CFF11 00003000
	s_mul_i32 s17, s6, 0xf0                                    // 00000000B464: 9211FF06 000000F0
	buffer_load_dwordx4 v164, s[68:71], s17 offen lds          // 00000000B46C: E05D1000 111100A4
	s_waitcnt vmcnt(0)                                         // 00000000B474: BF8C0F70
	s_barrier                                                  // 00000000B478: BF8A0000
	s_add_u32 s87, s98, -1                                     // 00000000B47C: 8057C162
	s_mul_i32 s84, s87, s9                                     // 00000000B480: 92540957
	s_cmp_lt_i32 s81, 1                                        // 00000000B484: BF048151
	s_mul_i32 s87, s87, s99                                    // 00000000B488: 92576357
	s_cbranch_scc1 54                                          // 00000000B48C: BF850036 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd68>
	s_mov_b32 s17, s16                                         // 00000000B490: BE910010
	s_mov_b32 s18, s16                                         // 00000000B494: BE920010
	s_mov_b32 s19, s16                                         // 00000000B498: BE930010
	s_mov_b32 s20, s16                                         // 00000000B49C: BE940010
	s_mov_b32 s21, s16                                         // 00000000B4A0: BE950010
	s_mov_b32 s22, s16                                         // 00000000B4A4: BE960010
	s_mov_b32 s23, s16                                         // 00000000B4A8: BE970010
	s_mov_b32 s24, s16                                         // 00000000B4AC: BE980010
	s_mov_b32 s25, s16                                         // 00000000B4B0: BE990010
	s_mov_b32 s26, s16                                         // 00000000B4B4: BE9A0010
	s_mov_b32 s27, s16                                         // 00000000B4B8: BE9B0010
	s_mov_b32 s28, s16                                         // 00000000B4BC: BE9C0010
	s_mov_b32 s29, s16                                         // 00000000B4C0: BE9D0010
	s_mov_b32 s30, s16                                         // 00000000B4C4: BE9E0010
	s_mov_b32 s31, s16                                         // 00000000B4C8: BE9F0010
	s_cmp_lt_i32 s81, 2                                        // 00000000B4CC: BF048251
	s_cbranch_scc0 91                                          // 00000000B4D0: BF84005B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xe40>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B4D4: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B4D8: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B4DC: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B4E0: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B4E4: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B4E8: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B4EC: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B4F0: 7E1C701E
	s_mov_b32 s79, 0                                           // 00000000B4F4: BECF0080
	v_mov_b32_e32 v178, 0                                      // 00000000B4F8: 7F640280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B4FC: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B500: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B504: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B508: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B50C: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B510: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B514: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B518: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B51C: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B520: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B524: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B528: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B52C: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B530: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B534: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B538: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B53C: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B540: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B544: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B548: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B54C: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B550: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B554: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B558: 7E607100
	s_mov_b32 s17, s86                                         // 00000000B55C: BE910056
	s_mov_b32 s20, s85                                         // 00000000B560: BE940055
	s_branch 572                                               // 00000000B564: BF82023C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1658>
	s_mov_b32 s17, s16                                         // 00000000B568: BE910010
	s_mov_b32 s18, s16                                         // 00000000B56C: BE920010
	s_mov_b32 s19, s16                                         // 00000000B570: BE930010
	s_mov_b32 s20, s16                                         // 00000000B574: BE940010
	s_mov_b32 s21, s16                                         // 00000000B578: BE950010
	s_mov_b32 s22, s16                                         // 00000000B57C: BE960010
	s_mov_b32 s23, s16                                         // 00000000B580: BE970010
	s_mov_b32 s24, s16                                         // 00000000B584: BE980010
	s_mov_b32 s25, s16                                         // 00000000B588: BE990010
	s_mov_b32 s26, s16                                         // 00000000B58C: BE9A0010
	s_mov_b32 s27, s16                                         // 00000000B590: BE9B0010
	s_mov_b32 s28, s16                                         // 00000000B594: BE9C0010
	s_mov_b32 s29, s16                                         // 00000000B598: BE9D0010
	s_mov_b32 s30, s16                                         // 00000000B59C: BE9E0010
	s_mov_b32 s31, s16                                         // 00000000B5A0: BE9F0010
	s_mov_b32 s79, 0                                           // 00000000B5A4: BECF0080
	s_cmp_lg_u32 s81, 0                                        // 00000000B5A8: BF078051
	s_cbranch_scc0 160                                         // 00000000B5AC: BF8400A0 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1030>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B5B0: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B5B4: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B5B8: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B5BC: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B5C0: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B5C4: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B5C8: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B5CC: 7E1C701E
	v_mov_b32_e32 v178, 0                                      // 00000000B5D0: 7F640280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B5D4: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B5D8: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B5DC: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B5E0: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B5E4: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B5E8: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B5EC: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B5F0: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B5F4: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B5F8: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B5FC: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B600: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B604: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B608: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B60C: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B610: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B614: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B618: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B61C: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B620: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B624: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B628: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B62C: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B630: 7E607100
	s_mov_b32 s17, s86                                         // 00000000B634: BE910056
	s_mov_b32 s20, s85                                         // 00000000B638: BE940055
	s_branch 1218                                              // 00000000B63C: BF8204C2 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2148>
	s_mov_b32 s79, 0                                           // 00000000B640: BECF0080
	s_cmp_eq_u32 s81, 2                                        // 00000000B644: BF068251
	s_cbranch_scc0 85                                          // 00000000B648: BF840055 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xfa0>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B64C: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B650: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B654: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B658: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B65C: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B660: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B664: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B668: 7E1C701E
	v_mov_b32_e32 v178, 0                                      // 00000000B66C: 7F640280
	v_mov_b32_e32 v177, v111                                   // 00000000B670: 7F62036F
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B674: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B678: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B67C: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B680: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B684: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B688: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B68C: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B690: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B694: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B698: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B69C: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B6A0: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B6A4: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B6A8: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B6AC: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B6B0: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B6B4: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B6B8: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B6BC: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B6C0: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B6C4: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B6C8: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B6CC: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B6D0: 7E607100
	s_mov_b32 s17, s86                                         // 00000000B6D4: BE910056
	s_mov_b32 s20, s85                                         // 00000000B6D8: BE940055
	s_branch 828                                               // 00000000B6DC: BF82033C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1bd0>
	s_add_u32 s18, s81, 1                                      // 00000000B6E0: 80128151
	s_and_b32 s18, s18, 3                                      // 00000000B6E4: 86128312
	s_lshl_b32 s18, s18, 13                                    // 00000000B6E8: 8E128D12
	s_add_u32 s19, s48, s18                                    // 00000000B6EC: 80131230
	s_add_u32 m0, s19, s72                                     // 00000000B6F0: 807C4813
	s_nop 0                                                    // 00000000B6F4: BF800000
	buffer_load_dwordx4 v166, s[64:67], s99 offen lds          // 00000000B6F8: E05D1000 631000A6
	s_add_u32 s18, s48, s18                                    // 00000000B700: 80121230
	s_add_u32 s18, s18, s72                                    // 00000000B704: 80124812
	s_add_u32 m0, s18, 0x1000                                  // 00000000B708: 807CFF12 00001000
	s_mul_i32 s18, s7, 0x44                                    // 00000000B710: 9212FF07 00000044
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000B718: E05D1000 121000A6
	s_cmp_lt_u32 s98, 3                                        // 00000000B720: BF0A8362
	s_cbranch_scc1 65334                                       // 00000000B724: BF85FF36 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc00>
	s_xor_b32 s17, s17, 2                                      // 00000000B728: 88118211
	s_lshl_b32 s17, s17, 14                                    // 00000000B72C: 8E118E11
	s_or_b32 s17, s17, s72                                     // 00000000B730: 87114811
	s_mov_b32 m0, s17                                          // 00000000B734: BEFC0011
	v_readlane_b32 s18, v230, 0                                // 00000000B738: D2890012 000101E6
	s_nop 4                                                    // 00000000B740: BF800004
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B744: E05D1000 121100A4
	s_add_u32 m0, s17, 0x1000                                  // 00000000B74C: 807CFF11 00001000
	s_mul_i32 s18, s6, 0x90                                    // 00000000B754: 9212FF06 00000090
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B75C: E05D1000 121100A4
	s_or_b32 m0, s17, 0x2000                                   // 00000000B764: 877CFF11 00002000
	s_mul_i32 s18, s6, 0xa0                                    // 00000000B76C: 9212FF06 000000A0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B774: E05D1000 121100A4
	s_add_u32 m0, s17, 0x3000                                  // 00000000B77C: 807CFF11 00003000
	s_mul_i32 s17, s6, 0xb0                                    // 00000000B784: 9211FF06 000000B0
	buffer_load_dwordx4 v164, s[68:71], s17 offen lds          // 00000000B78C: E05D1000 111100A4
	s_cmp_lt_u32 s98, 4                                        // 00000000B794: BF0A8462
	s_cbranch_scc1 65334                                       // 00000000B798: BF85FF36 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc74>
	s_branch 65306                                             // 00000000B79C: BF82FF1A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc08>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B7A0: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B7A4: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B7A8: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B7AC: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B7B0: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B7B4: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B7B8: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B7BC: 7E1C701E
	v_mov_b32_e32 v178, 0                                      // 00000000B7C0: 7F640280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B7C4: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B7C8: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B7CC: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B7D0: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B7D4: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B7D8: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B7DC: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B7E0: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B7E4: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B7E8: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B7EC: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B7F0: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B7F4: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B7F8: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B7FC: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B800: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B804: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B808: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B80C: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B810: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B814: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B818: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B81C: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B820: 7E607100
	s_mov_b32 s17, s86                                         // 00000000B824: BE910056
	s_mov_b32 s20, s85                                         // 00000000B828: BE940055
	s_branch 1094                                              // 00000000B82C: BF820446 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2148>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B830: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B834: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B838: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B83C: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B840: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B844: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B848: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B84C: 7E1C701E
	v_mov_b32_e32 v178, 0                                      // 00000000B850: 7F640280
	s_mov_b32 s79, s81                                         // 00000000B854: BECF0051
	v_mov_b32_e32 v177, v111                                   // 00000000B858: 7F62036F
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B85C: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B860: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B864: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B868: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B86C: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B870: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B874: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B878: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B87C: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B880: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B884: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B888: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B88C: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B890: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B894: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B898: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B89C: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B8A0: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B8A4: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B8A8: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B8AC: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B8B0: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B8B4: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B8B8: 7E607100
	s_mov_b32 s17, s86                                         // 00000000B8BC: BE910056
	s_mov_b32 s20, s85                                         // 00000000B8C0: BE940055
	s_branch 6                                                 // 00000000B8C4: BF820006 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10e0>
	s_mov_b64 s[10:11], s[20:21]                               // 00000000B8C8: BE8A0114
	s_mov_b32 s3, s17                                          // 00000000B8CC: BE830011
	global_store_dword v1, v0, s[14:15]                        // 00000000B8D0: DC708000 000E0001
	s_branch 64797                                             // 00000000B8D8: BF82FD1D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x550>
	s_nop 0                                                    // 00000000B8DC: BF800000
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
	v_mov_b32_e32 v177, v111                                   // 00000000CEC4: 7F62036F
	s_add_u32 s17, s79, s81                                    // 00000000CEC8: 8011514F
	s_bitcmp1_b32 s17, 0                                       // 00000000CECC: BF0D8011
	s_cbranch_scc1 793                                         // 00000000CED0: BF850319 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3338>
	s_branch 4                                                 // 00000000CED4: BF820004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26e8>
	v_mov_b32_e32 v177, v111                                   // 00000000CED8: 7F62036F
	s_add_u32 s17, s79, s81                                    // 00000000CEDC: 8011514F
	s_bitcmp1_b32 s17, 0                                       // 00000000CEE0: BF0D8011
	s_cbranch_scc1 788                                         // 00000000CEE4: BF850314 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3338>
	s_add_u32 s17, s79, 1                                      // 00000000CEE8: 8011814F
	s_cmp_ge_u32 s17, s98                                      // 00000000CEEC: BF096211
	s_cbranch_scc1 1574                                        // 00000000CEF0: BF850626 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3f8c>
	s_add_u32 s18, s79, s81                                    // 00000000CEF4: 8012514F
	s_and_b32 s17, s18, 3                                      // 00000000CEF8: 86118312
	s_cmp_lt_u32 s79, s78                                      // 00000000CEFC: BF0A4E4F
	v_lshl_add_u32 v143, s17, 13, v172                         // 00000000CF00: D1FD008F 06B11A11
	s_cbranch_scc0 582                                         // 00000000CF08: BF840246 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3024>
	s_setprio 0                                                // 00000000CF0C: BF8F0000
	s_add_u32 s18, s18, 1                                      // 00000000CF10: 80128112
	s_and_b32 s18, s18, 3                                      // 00000000CF14: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000CF18: 8E128E12
	v_exp_f32_e32 v80, v80                                     // 00000000CF1C: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000CF20: 7EA24151
	v_exp_f32_e32 v64, v64                                     // 00000000CF24: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000CF28: 7E824141
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
	v_or_b32_e32 v96, s18, v161                                // 00000000CF5C: 28C14212
	v_or_b32_e32 v97, s18, v162                                // 00000000CF60: 28C34412
	ds_read_b128 v[98:101], v96                                // 00000000CF64: D9FE0000 62000060
	ds_read_b128 v[102:105], v96 offset:16                     // 00000000CF6C: D9FE0010 66000060
	ds_read_b128 v[206:209], v96 offset:8192                   // 00000000CF74: D9FE2000 CE000060
	ds_read_b128 v[210:213], v96 offset:8208                   // 00000000CF7C: D9FE2010 D2000060
	ds_read_b128 v[214:217], v97                               // 00000000CF84: D9FE0000 D6000061
	ds_read_b128 v[218:221], v97 offset:16                     // 00000000CF8C: D9FE0010 DA000061
	ds_read_b128 v[222:225], v97 offset:8192                   // 00000000CF94: D9FE2000 DE000061
	ds_read_b128 v[226:229], v97 offset:8208                   // 00000000CF9C: D9FE2010 E2000061
	v_mov_b32_e32 v134, 0                                      // 00000000CFA4: 7F0C0280
	v_mov_b32_e32 v138, 0                                      // 00000000CFA8: 7F140280
	v_mov_b32_e32 v135, 0                                      // 00000000CFAC: 7F0E0280
	v_mov_b32_e32 v139, 0                                      // 00000000CFB0: 7F160280
	v_mov_b32_e32 v136, 0                                      // 00000000CFB4: 7F100280
	v_mov_b32_e32 v140, 0                                      // 00000000CFB8: 7F180280
	v_mov_b32_e32 v137, 0                                      // 00000000CFBC: 7F120280
	v_mov_b32_e32 v141, 0                                      // 00000000CFC0: 7F1A0280
	v_exp_f32_e32 v82, v82                                     // 00000000CFC4: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000CFC8: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000CFCC: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000CFD0: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000CFD4: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000CFD8: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000CFDC: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000CFE0: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000CFE4: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000CFE8: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000CFEC: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000CFF0: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000CFF4: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000CFF8: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000CFFC: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000D000: 7E9E414F
	v_cvt_pk_fp8_f32 v134, v80, v81                            // 00000000D004: D2A20086 0002A350
	v_cvt_pk_fp8_f32 v138, v64, v65                            // 00000000D00C: D2A2008A 00028340
	v_cvt_pk_fp8_f32 v135, v84, v85                            // 00000000D014: D2A20087 0002AB54
	v_cvt_pk_fp8_f32 v139, v68, v69                            // 00000000D01C: D2A2008B 00028B44
	v_cvt_pk_fp8_f32 v136, v88, v89                            // 00000000D024: D2A20088 0002B358
	v_cvt_pk_fp8_f32 v140, v72, v73                            // 00000000D02C: D2A2008C 00029348
	v_cvt_pk_fp8_f32 v137, v92, v93                            // 00000000D034: D2A20089 0002BB5C
	v_cvt_pk_fp8_f32 v141, v76, v77                            // 00000000D03C: D2A2008D 00029B4C
	v_cvt_pk_fp8_f32 v134, v82, v83 op_sel:[0,0,1]             // 00000000D044: D2A24086 0002A752
	v_cvt_pk_fp8_f32 v138, v66, v67 op_sel:[0,0,1]             // 00000000D04C: D2A2408A 00028742
	v_cvt_pk_fp8_f32 v135, v86, v87 op_sel:[0,0,1]             // 00000000D054: D2A24087 0002AF56
	v_cvt_pk_fp8_f32 v139, v70, v71 op_sel:[0,0,1]             // 00000000D05C: D2A2408B 00028F46
	v_cvt_pk_fp8_f32 v136, v90, v91 op_sel:[0,0,1]             // 00000000D064: D2A24088 0002B75A
	v_cvt_pk_fp8_f32 v140, v74, v75 op_sel:[0,0,1]             // 00000000D06C: D2A2408C 0002974A
	v_cvt_pk_fp8_f32 v137, v94, v95 op_sel:[0,0,1]             // 00000000D074: D2A24089 0002BF5E
	v_cvt_pk_fp8_f32 v141, v78, v79 op_sel:[0,0,1]             // 00000000D07C: D2A2408D 00029F4E
	s_barrier                                                  // 00000000D084: BF8A0000
	s_setprio 1                                                // 00000000D088: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[134:141], 0// 00000000D08C: D3AD0040 02030D7E
	s_nop 11                                                   // 00000000D094: BF80000B
	v_lshlrev_b32_e32 v65, 23, v179                            // 00000000D098: 24836697
	v_fma_f32 v178, v64, v65, v178                             // 00000000D09C: D1CB00B2 06CA8340
	s_waitcnt lgkmcnt(0)                                       // 00000000D0A4: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[98:105], v[182:189], 0// 00000000D0A8: D3AE0050 02036D62
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[206:213], v[182:189], 0// 00000000D0B0: D3AE006E 02036DCE
	v_or_b32_e32 v64, s18, v163                                // 00000000D0B8: 28814612
	ds_read_b128 v[66:69], v64                                 // 00000000D0BC: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 00000000D0C4: D9FE0010 46000040
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[214:221], v[190:197], v[80:95]// 00000000D0CC: D3AE0050 05437DD6
	ds_read_b128 v[96:99], v64 offset:8192                     // 00000000D0D4: D9FE2000 60000040
	ds_read_b128 v[100:103], v64 offset:8208                   // 00000000D0DC: D9FE2010 64000040
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[222:229], v[190:197], v[110:125]// 00000000D0E4: D3AE006E 05BB7DDE
	s_waitcnt lgkmcnt(0)                                       // 00000000D0EC: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[66:73], v[198:205], v[80:95]// 00000000D0F0: D3AE0050 05438D42
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[96:103], v[198:205], v[110:125]// 00000000D0F8: D3AE006E 05BB8D60
	s_lshl_b32 s18, s79, 6                                     // 00000000D100: 8E12864F
	s_add_u32 s20, s18, 64                                     // 00000000D104: 8014C012
	s_sub_u32 s18, s3, s20                                     // 00000000D108: 80921403
	s_sub_i32 s18, s18, 0                                      // 00000000D10C: 81928012
	s_nop 1                                                    // 00000000D110: BF800001
	v_mov_b32_e32 v64, v80                                     // 00000000D114: 7E800350
	v_mov_b32_e32 v65, v81                                     // 00000000D118: 7E820351
	v_mov_b32_e32 v66, v82                                     // 00000000D11C: 7E840352
	v_mov_b32_e32 v67, v83                                     // 00000000D120: 7E860353
	v_mov_b32_e32 v68, v84                                     // 00000000D124: 7E880354
	v_mov_b32_e32 v69, v85                                     // 00000000D128: 7E8A0355
	v_mov_b32_e32 v70, v86                                     // 00000000D12C: 7E8C0356
	v_mov_b32_e32 v71, v87                                     // 00000000D130: 7E8E0357
	v_mov_b32_e32 v72, v88                                     // 00000000D134: 7E900358
	v_mov_b32_e32 v73, v89                                     // 00000000D138: 7E920359
	v_mov_b32_e32 v74, v90                                     // 00000000D13C: 7E94035A
	v_mov_b32_e32 v75, v91                                     // 00000000D140: 7E96035B
	v_mov_b32_e32 v76, v92                                     // 00000000D144: 7E98035C
	v_mov_b32_e32 v77, v93                                     // 00000000D148: 7E9A035D
	v_mov_b32_e32 v78, v94                                     // 00000000D14C: 7E9C035E
	s_cmp_ge_i32 s18, 32                                       // 00000000D150: BF03A012
	v_mov_b32_e32 v79, v95                                     // 00000000D154: 7E9E035F
	s_cbranch_scc1 84                                          // 00000000D158: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2aac>
	v_mov_b32_e32 v64, 0xff800000                              // 00000000D15C: 7E8002FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000D164: BF048012
	v_mov_b32_e32 v65, v64                                     // 00000000D168: 7E820340
	v_mov_b32_e32 v66, v64                                     // 00000000D16C: 7E840340
	v_mov_b32_e32 v67, v64                                     // 00000000D170: 7E860340
	v_mov_b32_e32 v68, v64                                     // 00000000D174: 7E880340
	v_mov_b32_e32 v69, v64                                     // 00000000D178: 7E8A0340
	v_mov_b32_e32 v70, v64                                     // 00000000D17C: 7E8C0340
	v_mov_b32_e32 v71, v64                                     // 00000000D180: 7E8E0340
	v_mov_b32_e32 v72, v64                                     // 00000000D184: 7E900340
	v_mov_b32_e32 v73, v64                                     // 00000000D188: 7E920340
	v_mov_b32_e32 v74, v64                                     // 00000000D18C: 7E940340
	v_mov_b32_e32 v75, v64                                     // 00000000D190: 7E960340
	v_mov_b32_e32 v76, v64                                     // 00000000D194: 7E980340
	v_mov_b32_e32 v77, v64                                     // 00000000D198: 7E9A0340
	v_mov_b32_e32 v78, v64                                     // 00000000D19C: 7E9C0340
	v_mov_b32_e32 v79, v64                                     // 00000000D1A0: 7E9E0340
	s_cbranch_scc1 65                                          // 00000000D1A4: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2aac>
	v_add_u32_e32 v79, s18, v171                               // 00000000D1A8: 689F5612
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 00000000D1AC: 7D889E80
	s_nop 1                                                    // 00000000D1B0: BF800001
	v_cndmask_b32_e64 v64, v80, v169, vcc                      // 00000000D1B4: D1000040 01AB5350
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 00000000D1BC: 7D889E81
	s_nop 1                                                    // 00000000D1C0: BF800001
	v_cndmask_b32_e64 v65, v81, v169, vcc                      // 00000000D1C4: D1000041 01AB5351
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 00000000D1CC: 7D889E82
	s_nop 1                                                    // 00000000D1D0: BF800001
	v_cndmask_b32_e64 v66, v82, v169, vcc                      // 00000000D1D4: D1000042 01AB5352
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 00000000D1DC: 7D889E83
	s_nop 1                                                    // 00000000D1E0: BF800001
	v_cndmask_b32_e64 v67, v83, v169, vcc                      // 00000000D1E4: D1000043 01AB5353
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 00000000D1EC: 7D889E88
	s_nop 1                                                    // 00000000D1F0: BF800001
	v_cndmask_b32_e64 v68, v84, v169, vcc                      // 00000000D1F4: D1000044 01AB5354
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 00000000D1FC: 7D889E89
	s_nop 1                                                    // 00000000D200: BF800001
	v_cndmask_b32_e64 v69, v85, v169, vcc                      // 00000000D204: D1000045 01AB5355
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 00000000D20C: 7D889E8A
	s_nop 1                                                    // 00000000D210: BF800001
	v_cndmask_b32_e64 v70, v86, v169, vcc                      // 00000000D214: D1000046 01AB5356
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 00000000D21C: 7D889E8B
	s_nop 1                                                    // 00000000D220: BF800001
	v_cndmask_b32_e64 v71, v87, v169, vcc                      // 00000000D224: D1000047 01AB5357
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 00000000D22C: 7D889E90
	s_nop 1                                                    // 00000000D230: BF800001
	v_cndmask_b32_e64 v72, v88, v169, vcc                      // 00000000D234: D1000048 01AB5358
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 00000000D23C: 7D889E91
	s_nop 1                                                    // 00000000D240: BF800001
	v_cndmask_b32_e64 v73, v89, v169, vcc                      // 00000000D244: D1000049 01AB5359
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 00000000D24C: 7D889E92
	s_nop 1                                                    // 00000000D250: BF800001
	v_cndmask_b32_e64 v74, v90, v169, vcc                      // 00000000D254: D100004A 01AB535A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 00000000D25C: 7D889E93
	s_nop 1                                                    // 00000000D260: BF800001
	v_cndmask_b32_e64 v75, v91, v169, vcc                      // 00000000D264: D100004B 01AB535B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 00000000D26C: 7D889E98
	s_nop 1                                                    // 00000000D270: BF800001
	v_cndmask_b32_e64 v76, v92, v169, vcc                      // 00000000D274: D100004C 01AB535C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 00000000D27C: 7D889E99
	s_nop 1                                                    // 00000000D280: BF800001
	v_cndmask_b32_e64 v77, v93, v169, vcc                      // 00000000D284: D100004D 01AB535D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 00000000D28C: 7D889E9A
	s_nop 1                                                    // 00000000D290: BF800001
	v_cndmask_b32_e64 v78, v94, v169, vcc                      // 00000000D294: D100004E 01AB535E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 00000000D29C: 7D889E9B
	s_nop 1                                                    // 00000000D2A0: BF800001
	v_cndmask_b32_e64 v79, v95, v169, vcc                      // 00000000D2A4: D100004F 01AB535F
	s_sub_u32 s18, s3, s20                                     // 00000000D2AC: 80921403
	s_sub_i32 s18, s18, 32                                     // 00000000D2B0: 8192A012
	v_mov_b32_e32 v94, v110                                    // 00000000D2B4: 7EBC036E
	v_mov_b32_e32 v95, v111                                    // 00000000D2B8: 7EBE036F
	v_mov_b32_e32 v96, v112                                    // 00000000D2BC: 7EC00370
	v_mov_b32_e32 v97, v113                                    // 00000000D2C0: 7EC20371
	v_mov_b32_e32 v98, v114                                    // 00000000D2C4: 7EC40372
	v_mov_b32_e32 v99, v115                                    // 00000000D2C8: 7EC60373
	v_mov_b32_e32 v100, v116                                   // 00000000D2CC: 7EC80374
	v_mov_b32_e32 v101, v117                                   // 00000000D2D0: 7ECA0375
	v_mov_b32_e32 v102, v118                                   // 00000000D2D4: 7ECC0376
	v_mov_b32_e32 v103, v119                                   // 00000000D2D8: 7ECE0377
	v_mov_b32_e32 v104, v120                                   // 00000000D2DC: 7ED00378
	v_mov_b32_e32 v105, v121                                   // 00000000D2E0: 7ED20379
	v_mov_b32_e32 v106, v122                                   // 00000000D2E4: 7ED4037A
	v_mov_b32_e32 v107, v123                                   // 00000000D2E8: 7ED6037B
	v_mov_b32_e32 v108, v124                                   // 00000000D2EC: 7ED8037C
	s_cmp_ge_i32 s18, 32                                       // 00000000D2F0: BF03A012
	v_mov_b32_e32 v109, v125                                   // 00000000D2F4: 7EDA037D
	s_cbranch_scc1 84                                          // 00000000D2F8: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2c4c>
	v_mov_b32_e32 v94, 0xff800000                              // 00000000D2FC: 7EBC02FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000D304: BF048012
	v_mov_b32_e32 v95, v94                                     // 00000000D308: 7EBE035E
	v_mov_b32_e32 v96, v94                                     // 00000000D30C: 7EC0035E
	v_mov_b32_e32 v97, v94                                     // 00000000D310: 7EC2035E
	v_mov_b32_e32 v98, v94                                     // 00000000D314: 7EC4035E
	v_mov_b32_e32 v99, v94                                     // 00000000D318: 7EC6035E
	v_mov_b32_e32 v100, v94                                    // 00000000D31C: 7EC8035E
	v_mov_b32_e32 v101, v94                                    // 00000000D320: 7ECA035E
	v_mov_b32_e32 v102, v94                                    // 00000000D324: 7ECC035E
	v_mov_b32_e32 v103, v94                                    // 00000000D328: 7ECE035E
	v_mov_b32_e32 v104, v94                                    // 00000000D32C: 7ED0035E
	v_mov_b32_e32 v105, v94                                    // 00000000D330: 7ED2035E
	v_mov_b32_e32 v106, v94                                    // 00000000D334: 7ED4035E
	v_mov_b32_e32 v107, v94                                    // 00000000D338: 7ED6035E
	v_mov_b32_e32 v108, v94                                    // 00000000D33C: 7ED8035E
	v_mov_b32_e32 v109, v94                                    // 00000000D340: 7EDA035E
	s_cbranch_scc1 65                                          // 00000000D344: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2c4c>
	v_add_u32_e32 v80, s18, v171                               // 00000000D348: 68A15612
	v_cmp_gt_i32_e32 vcc, 0, v80                               // 00000000D34C: 7D88A080
	s_nop 1                                                    // 00000000D350: BF800001
	v_cndmask_b32_e64 v94, v110, v169, vcc                     // 00000000D354: D100005E 01AB536E
	v_cmp_gt_i32_e32 vcc, 1, v80                               // 00000000D35C: 7D88A081
	s_nop 1                                                    // 00000000D360: BF800001
	v_cndmask_b32_e64 v95, v111, v169, vcc                     // 00000000D364: D100005F 01AB536F
	v_cmp_gt_i32_e32 vcc, 2, v80                               // 00000000D36C: 7D88A082
	s_nop 1                                                    // 00000000D370: BF800001
	v_cndmask_b32_e64 v96, v112, v169, vcc                     // 00000000D374: D1000060 01AB5370
	v_cmp_gt_i32_e32 vcc, 3, v80                               // 00000000D37C: 7D88A083
	s_nop 1                                                    // 00000000D380: BF800001
	v_cndmask_b32_e64 v97, v113, v169, vcc                     // 00000000D384: D1000061 01AB5371
	v_cmp_gt_i32_e32 vcc, 8, v80                               // 00000000D38C: 7D88A088
	s_nop 1                                                    // 00000000D390: BF800001
	v_cndmask_b32_e64 v98, v114, v169, vcc                     // 00000000D394: D1000062 01AB5372
	v_cmp_gt_i32_e32 vcc, 9, v80                               // 00000000D39C: 7D88A089
	s_nop 1                                                    // 00000000D3A0: BF800001
	v_cndmask_b32_e64 v99, v115, v169, vcc                     // 00000000D3A4: D1000063 01AB5373
	v_cmp_gt_i32_e32 vcc, 10, v80                              // 00000000D3AC: 7D88A08A
	s_nop 1                                                    // 00000000D3B0: BF800001
	v_cndmask_b32_e64 v100, v116, v169, vcc                    // 00000000D3B4: D1000064 01AB5374
	v_cmp_gt_i32_e32 vcc, 11, v80                              // 00000000D3BC: 7D88A08B
	s_nop 1                                                    // 00000000D3C0: BF800001
	v_cndmask_b32_e64 v101, v117, v169, vcc                    // 00000000D3C4: D1000065 01AB5375
	v_cmp_gt_i32_e32 vcc, 16, v80                              // 00000000D3CC: 7D88A090
	s_nop 1                                                    // 00000000D3D0: BF800001
	v_cndmask_b32_e64 v102, v118, v169, vcc                    // 00000000D3D4: D1000066 01AB5376
	v_cmp_gt_i32_e32 vcc, 17, v80                              // 00000000D3DC: 7D88A091
	s_nop 1                                                    // 00000000D3E0: BF800001
	v_cndmask_b32_e64 v103, v119, v169, vcc                    // 00000000D3E4: D1000067 01AB5377
	v_cmp_gt_i32_e32 vcc, 18, v80                              // 00000000D3EC: 7D88A092
	s_nop 1                                                    // 00000000D3F0: BF800001
	v_cndmask_b32_e64 v104, v120, v169, vcc                    // 00000000D3F4: D1000068 01AB5378
	v_cmp_gt_i32_e32 vcc, 19, v80                              // 00000000D3FC: 7D88A093
	s_nop 1                                                    // 00000000D400: BF800001
	v_cndmask_b32_e64 v105, v121, v169, vcc                    // 00000000D404: D1000069 01AB5379
	v_cmp_gt_i32_e32 vcc, 24, v80                              // 00000000D40C: 7D88A098
	s_nop 1                                                    // 00000000D410: BF800001
	v_cndmask_b32_e64 v106, v122, v169, vcc                    // 00000000D414: D100006A 01AB537A
	v_cmp_gt_i32_e32 vcc, 25, v80                              // 00000000D41C: 7D88A099
	s_nop 1                                                    // 00000000D420: BF800001
	v_cndmask_b32_e64 v107, v123, v169, vcc                    // 00000000D424: D100006B 01AB537B
	v_cmp_gt_i32_e32 vcc, 26, v80                              // 00000000D42C: 7D88A09A
	s_nop 1                                                    // 00000000D430: BF800001
	v_cndmask_b32_e64 v108, v124, v169, vcc                    // 00000000D434: D100006C 01AB537C
	v_cmp_gt_i32_e32 vcc, 27, v80                              // 00000000D43C: 7D88A09B
	s_nop 1                                                    // 00000000D440: BF800001
	v_cndmask_b32_e64 v109, v125, v169, vcc                    // 00000000D444: D100006D 01AB537D
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
	v_max_f32_e32 v81, v177, v81                               // 00000000D4DC: 16A2A3B1
	v_sub_f32_e32 v82, v81, v177                               // 00000000D4E0: 04A56351
	v_cmp_lt_f32_e32 vcc, s91, v82                             // 00000000D4E4: 7C82A45B
	s_cmp_lg_u64 vcc, 0                                        // 00000000D4E8: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000D4EC: 859280C1
	s_and_b64 s[20:21], s[18:19], exec                         // 00000000D4F0: 86947E12
	s_cselect_b32 s20, 1, 0                                    // 00000000D4F4: 85148081
	s_cselect_b64 s[20:21], -1, 0                              // 00000000D4F8: 859480C1
	v_cndmask_b32_e64 v111, v177, v81, s[20:21]                // 00000000D4FC: D100006F 0052A3B1
	v_fma_f32 v80, v80, v142, -v111                            // 00000000D504: D1CB0050 85BF1D50
	v_floor_f32_e32 v80, v80                                   // 00000000D50C: 7EA03F50
	v_med3_f32 v80, v80, s89, 0                                // 00000000D510: D1D60050 0200B350
	v_cvt_i32_f32_e32 v81, v80                                 // 00000000D518: 7EA21150
	v_add_u32_e32 v112, 0x7f, v81                              // 00000000D51C: 68E0A2FF 0000007F
	v_lshlrev_b32_e32 v81, 23, v112                            // 00000000D524: 24A2E097
	v_add_f32_e32 v80, v111, v80                               // 00000000D528: 02A0A16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000D52C: 04DCA0FF 40C00000
	s_waitcnt vmcnt(0)                                         // 00000000D534: BF8C0F70
	ds_read_b64_tr_b8 v[114:115], v143                         // 00000000D538: D9C40000 7200008F
	ds_read_b64_tr_b8 v[116:117], v143 offset:1024             // 00000000D540: D9C40400 7400008F
	ds_read_b64_tr_b8 v[118:119], v143 offset:2048             // 00000000D548: D9C40800 7600008F
	ds_read_b64_tr_b8 v[120:121], v143 offset:3072             // 00000000D550: D9C40C00 7800008F
	ds_read_b64_tr_b8 v[206:207], v143 offset:256              // 00000000D558: D9C40100 CE00008F
	ds_read_b64_tr_b8 v[208:209], v143 offset:1280             // 00000000D560: D9C40500 D000008F
	ds_read_b64_tr_b8 v[210:211], v143 offset:2304             // 00000000D568: D9C40900 D200008F
	ds_read_b64_tr_b8 v[212:213], v143 offset:3328             // 00000000D570: D9C40D00 D400008F
	ds_read_b64_tr_b8 v[80:81], v143 offset:512                // 00000000D578: D9C40200 5000008F
	ds_read_b64_tr_b8 v[82:83], v143 offset:1536               // 00000000D580: D9C40600 5200008F
	ds_read_b64_tr_b8 v[84:85], v143 offset:2560               // 00000000D588: D9C40A00 5400008F
	ds_read_b64_tr_b8 v[86:87], v143 offset:3584               // 00000000D590: D9C40E00 5600008F
	s_waitcnt lgkmcnt(4)                                       // 00000000D598: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[114:121], v[134:141], v[48:63], v170, v179 op_sel_hi:[0,0,0]// 00000000D59C: D3AC0000 000367AA D3AE0830 04C30D72
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[206:213], v[134:141], v[32:47], v170, v179 op_sel_hi:[0,0,0]// 00000000D5AC: D3AC0000 000367AA D3AE0820 04830DCE
	ds_read_b64_tr_b8 v[114:115], v143 offset:768              // 00000000D5BC: D9C40300 7200008F
	ds_read_b64_tr_b8 v[116:117], v143 offset:1792             // 00000000D5C4: D9C40700 7400008F
	ds_read_b64_tr_b8 v[118:119], v143 offset:2816             // 00000000D5CC: D9C40B00 7600008F
	ds_read_b64_tr_b8 v[120:121], v143 offset:3840             // 00000000D5D4: D9C40F00 7800008F
	s_add_u32 s20, s79, 4                                      // 00000000D5DC: 8014844F
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
	s_add_u32 s20, s79, 2                                      // 00000000D61C: 8014824F
	s_cmp_ge_u32 s20, s98                                      // 00000000D620: BF096214
	s_cbranch_scc1 9                                           // 00000000D624: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2e4c>
	s_xor_b32 s17, s17, 2                                      // 00000000D628: 88118211
	s_mul_i32 s20, s20, s7                                     // 00000000D62C: 92140714
	s_lshl_b32 s17, s17, 13                                    // 00000000D630: 8E118D11
	s_lshl_b32 s20, s20, 6                                     // 00000000D634: 8E148614
	s_add_u32 s17, s48, s17                                    // 00000000D638: 80111130
	s_add_u32 m0, s17, s72                                     // 00000000D63C: 807C4811
	s_nop 0                                                    // 00000000D640: BF800000
	buffer_load_dwordx4 v166, s[64:67], s20 offen lds          // 00000000D644: E05D1000 141000A6
	s_waitcnt lgkmcnt(0)                                       // 00000000D64C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[80:87], v[134:141], v[16:31], v170, v179 op_sel_hi:[0,0,0]// 00000000D650: D3AC0000 000367AA D3AE0810 04430D50
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[134:141], v[0:15], v170, v179 op_sel_hi:[0,0,0]// 00000000D660: D3AC0000 000367AA D3AE0800 04030D72
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
	v_sub_f32_e32 v96, v177, v111                              // 00000000D6FC: 04C0DFB1
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
	v_mul_f32_e32 v178, v178, v96                              // 00000000D808: 0B64C1B2
	s_waitcnt vmcnt(0)                                         // 00000000D80C: BF8C0F70
	s_barrier                                                  // 00000000D810: BF8A0000
	s_add_u32 s79, s79, 1                                      // 00000000D814: 804F814F
	v_mov_b32_e32 v179, v112                                   // 00000000D818: 7F660370
	v_mov_b32_e32 v177, v111                                   // 00000000D81C: 7F62036F
	s_branch 197                                               // 00000000D820: BF8200C5 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3338>
	s_cmp_eq_u32 s79, s78                                      // 00000000D824: BF064E4F
	s_cbranch_scc0 163                                         // 00000000D828: BF8400A3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x32b8>
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
	v_exp_f32_e32 v180, v78                                    // 00000000D8C8: 7F68414E
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
	v_cvt_pk_fp8_f32 v103, v180, v181 op_sel:[0,0,1]           // 00000000D948: D2A24067 00036BB4
	s_barrier                                                  // 00000000D950: BF8A0000
	s_setprio 1                                                // 00000000D954: BF8F0001
	s_waitcnt vmcnt(0)                                         // 00000000D958: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[104:107], v[126:133], v[96:103], 0// 00000000D95C: D3AD0068 0202C17E
	ds_read_b64_tr_b8 v[114:115], v143                         // 00000000D964: D9C40000 7200008F
	ds_read_b64_tr_b8 v[116:117], v143 offset:1024             // 00000000D96C: D9C40400 7400008F
	ds_read_b64_tr_b8 v[118:119], v143 offset:2048             // 00000000D974: D9C40800 7600008F
	ds_read_b64_tr_b8 v[120:121], v143 offset:3072             // 00000000D97C: D9C40C00 7800008F
	ds_read_b64_tr_b8 v[134:135], v143 offset:256              // 00000000D984: D9C40100 8600008F
	ds_read_b64_tr_b8 v[136:137], v143 offset:1280             // 00000000D98C: D9C40500 8800008F
	ds_read_b64_tr_b8 v[138:139], v143 offset:2304             // 00000000D994: D9C40900 8A00008F
	ds_read_b64_tr_b8 v[140:141], v143 offset:3328             // 00000000D99C: D9C40D00 8C00008F
	s_nop 3                                                    // 00000000D9A4: BF800003
	ds_read_b64_tr_b8 v[106:107], v143 offset:512              // 00000000D9A8: D9C40200 6A00008F
	ds_read_b64_tr_b8 v[108:109], v143 offset:1536             // 00000000D9B0: D9C40600 6C00008F
	ds_read_b64_tr_b8 v[110:111], v143 offset:2560             // 00000000D9B8: D9C40A00 6E00008F
	ds_read_b64_tr_b8 v[112:113], v143 offset:3584             // 00000000D9C0: D9C40E00 7000008F
	s_waitcnt lgkmcnt(4)                                       // 00000000D9C8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[114:121], v[96:103], v[48:63], v170, v179 op_sel_hi:[0,0,0]// 00000000D9CC: D3AC0000 000367AA D3AE0830 04C2C172
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[96:103], v[32:47], v170, v179 op_sel_hi:[0,0,0]// 00000000D9DC: D3AC0000 000367AA D3AE0820 0482C186
	ds_read_b64_tr_b8 v[114:115], v143 offset:768              // 00000000D9EC: D9C40300 7200008F
	ds_read_b64_tr_b8 v[116:117], v143 offset:1792             // 00000000D9F4: D9C40700 7400008F
	ds_read_b64_tr_b8 v[118:119], v143 offset:2816             // 00000000D9FC: D9C40B00 7600008F
	ds_read_b64_tr_b8 v[120:121], v143 offset:3840             // 00000000DA04: D9C40F00 7800008F
	s_add_u32 s18, s78, 4                                      // 00000000DA0C: 8012844E
	s_cmp_ge_u32 s18, s98                                      // 00000000DA10: BF096212
	s_cbranch_scc1 13                                          // 00000000DA14: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x324c>
	s_lshl_b32 s19, s17, 14                                    // 00000000DA18: 8E138E11
	s_mul_i32 s18, s18, s6                                     // 00000000DA1C: 92120612
	s_or_b32 s19, s19, s72                                     // 00000000DA20: 87134813
	s_lshl_b32 s18, s18, 6                                     // 00000000DA24: 8E128612
	s_mov_b32 m0, s19                                          // 00000000DA28: BEFC0013
	s_nop 0                                                    // 00000000DA2C: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000DA30: E05D1000 121100A4
	s_or_b32 m0, s19, 0x2000                                   // 00000000DA38: 877CFF13 00002000
	s_nop 0                                                    // 00000000DA40: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000DA44: E05D1000 121100A5
	s_add_u32 s18, s78, 2                                      // 00000000DA4C: 8012824E
	s_cmp_ge_u32 s18, s98                                      // 00000000DA50: BF096212
	s_cbranch_scc1 9                                           // 00000000DA54: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x327c>
	s_xor_b32 s17, s17, 2                                      // 00000000DA58: 88118211
	s_mul_i32 s18, s18, s7                                     // 00000000DA5C: 92120712
	s_lshl_b32 s17, s17, 13                                    // 00000000DA60: 8E118D11
	s_lshl_b32 s18, s18, 6                                     // 00000000DA64: 8E128612
	s_add_u32 s17, s48, s17                                    // 00000000DA68: 80111130
	s_add_u32 m0, s17, s72                                     // 00000000DA6C: 807C4811
	s_nop 0                                                    // 00000000DA70: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000DA74: E05D1000 121000A6
	v_lshlrev_b32_e32 v105, 23, v179                           // 00000000DA7C: 24D36697
	v_fma_f32 v178, v104, v105, v178                           // 00000000DA80: D1CB00B2 06CAD368
	s_waitcnt lgkmcnt(0)                                       // 00000000DA88: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[106:113], v[96:103], v[16:31], v170, v179 op_sel_hi:[0,0,0]// 00000000DA8C: D3AC0000 000367AA D3AE0810 0442C16A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[96:103], v[0:15], v170, v179 op_sel_hi:[0,0,0]// 00000000DA9C: D3AC0000 000367AA D3AE0800 0402C172
	s_barrier                                                  // 00000000DAAC: BF8A0000
	s_add_u32 s79, s78, 1                                      // 00000000DAB0: 804F814E
	s_branch 32                                                // 00000000DAB4: BF820020 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3338>
	s_barrier                                                  // 00000000DAB8: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000DABC: BF8C0F70
	s_add_u32 s18, s79, 4                                      // 00000000DAC0: 8012844F
	s_cmp_ge_u32 s18, s98                                      // 00000000DAC4: BF096212
	s_cbranch_scc1 13                                          // 00000000DAC8: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3300>
	s_lshl_b32 s19, s17, 14                                    // 00000000DACC: 8E138E11
	s_mul_i32 s18, s18, s6                                     // 00000000DAD0: 92120612
	s_or_b32 s19, s19, s72                                     // 00000000DAD4: 87134813
	s_lshl_b32 s18, s18, 6                                     // 00000000DAD8: 8E128612
	s_mov_b32 m0, s19                                          // 00000000DADC: BEFC0013
	s_nop 0                                                    // 00000000DAE0: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000DAE4: E05D1000 121100A4
	s_or_b32 m0, s19, 0x2000                                   // 00000000DAEC: 877CFF13 00002000
	s_nop 0                                                    // 00000000DAF4: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000DAF8: E05D1000 121100A5
	s_add_u32 s18, s79, 2                                      // 00000000DB00: 8012824F
	s_cmp_ge_u32 s18, s98                                      // 00000000DB04: BF096212
	s_cbranch_scc1 9                                           // 00000000DB08: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3330>
	s_xor_b32 s17, s17, 2                                      // 00000000DB0C: 88118211
	s_mul_i32 s18, s18, s7                                     // 00000000DB10: 92120712
	s_lshl_b32 s17, s17, 13                                    // 00000000DB14: 8E118D11
	s_lshl_b32 s18, s18, 6                                     // 00000000DB18: 8E128612
	s_add_u32 s17, s48, s17                                    // 00000000DB1C: 80111130
	s_add_u32 m0, s17, s72                                     // 00000000DB20: 807C4811
	s_nop 0                                                    // 00000000DB24: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000DB28: E05D1000 121000A6
	s_barrier                                                  // 00000000DB30: BF8A0000
	s_add_u32 s79, s79, 1                                      // 00000000DB34: 804F814F
	s_add_u32 s17, s79, 1                                      // 00000000DB38: 8011814F
	s_cmp_ge_u32 s17, s98                                      // 00000000DB3C: BF096211
	s_cbranch_scc1 807                                         // 00000000DB40: BF850327 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3fe0>
	s_add_u32 s18, s79, s81                                    // 00000000DB44: 8012514F
	s_and_b32 s17, s18, 3                                      // 00000000DB48: 86118312
	s_cmp_lt_u32 s79, s78                                      // 00000000DB4C: BF0A4E4F
	v_lshl_add_u32 v143, s17, 13, v172                         // 00000000DB50: D1FD008F 06B11A11
	s_cbranch_scc0 582                                         // 00000000DB58: BF840246 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3c74>
	s_setprio 0                                                // 00000000DB5C: BF8F0000
	s_add_u32 s18, s18, 1                                      // 00000000DB60: 80128112
	s_and_b32 s18, s18, 3                                      // 00000000DB64: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000DB68: 8E128E12
	v_exp_f32_e32 v80, v80                                     // 00000000DB6C: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000DB70: 7EA24151
	v_exp_f32_e32 v64, v64                                     // 00000000DB74: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000DB78: 7E824141
	v_exp_f32_e32 v84, v84                                     // 00000000DB7C: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000DB80: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000DB84: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000DB88: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000DB8C: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000DB90: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000DB94: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000DB98: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000DB9C: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000DBA0: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000DBA4: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000DBA8: 7E9A414D
	v_or_b32_e32 v96, s18, v161                                // 00000000DBAC: 28C14212
	v_or_b32_e32 v97, s18, v162                                // 00000000DBB0: 28C34412
	ds_read_b128 v[98:101], v96                                // 00000000DBB4: D9FE0000 62000060
	ds_read_b128 v[102:105], v96 offset:16                     // 00000000DBBC: D9FE0010 66000060
	ds_read_b128 v[206:209], v96 offset:8192                   // 00000000DBC4: D9FE2000 CE000060
	ds_read_b128 v[210:213], v96 offset:8208                   // 00000000DBCC: D9FE2010 D2000060
	ds_read_b128 v[214:217], v97                               // 00000000DBD4: D9FE0000 D6000061
	ds_read_b128 v[218:221], v97 offset:16                     // 00000000DBDC: D9FE0010 DA000061
	ds_read_b128 v[222:225], v97 offset:8192                   // 00000000DBE4: D9FE2000 DE000061
	ds_read_b128 v[226:229], v97 offset:8208                   // 00000000DBEC: D9FE2010 E2000061
	v_mov_b32_e32 v134, 0                                      // 00000000DBF4: 7F0C0280
	v_mov_b32_e32 v138, 0                                      // 00000000DBF8: 7F140280
	v_mov_b32_e32 v135, 0                                      // 00000000DBFC: 7F0E0280
	v_mov_b32_e32 v139, 0                                      // 00000000DC00: 7F160280
	v_mov_b32_e32 v136, 0                                      // 00000000DC04: 7F100280
	v_mov_b32_e32 v140, 0                                      // 00000000DC08: 7F180280
	v_mov_b32_e32 v137, 0                                      // 00000000DC0C: 7F120280
	v_mov_b32_e32 v141, 0                                      // 00000000DC10: 7F1A0280
	v_exp_f32_e32 v82, v82                                     // 00000000DC14: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000DC18: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000DC1C: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000DC20: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000DC24: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000DC28: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000DC2C: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000DC30: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000DC34: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000DC38: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000DC3C: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000DC40: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000DC44: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000DC48: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000DC4C: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000DC50: 7E9E414F
	v_cvt_pk_fp8_f32 v134, v80, v81                            // 00000000DC54: D2A20086 0002A350
	v_cvt_pk_fp8_f32 v138, v64, v65                            // 00000000DC5C: D2A2008A 00028340
	v_cvt_pk_fp8_f32 v135, v84, v85                            // 00000000DC64: D2A20087 0002AB54
	v_cvt_pk_fp8_f32 v139, v68, v69                            // 00000000DC6C: D2A2008B 00028B44
	v_cvt_pk_fp8_f32 v136, v88, v89                            // 00000000DC74: D2A20088 0002B358
	v_cvt_pk_fp8_f32 v140, v72, v73                            // 00000000DC7C: D2A2008C 00029348
	v_cvt_pk_fp8_f32 v137, v92, v93                            // 00000000DC84: D2A20089 0002BB5C
	v_cvt_pk_fp8_f32 v141, v76, v77                            // 00000000DC8C: D2A2008D 00029B4C
	v_cvt_pk_fp8_f32 v134, v82, v83 op_sel:[0,0,1]             // 00000000DC94: D2A24086 0002A752
	v_cvt_pk_fp8_f32 v138, v66, v67 op_sel:[0,0,1]             // 00000000DC9C: D2A2408A 00028742
	v_cvt_pk_fp8_f32 v135, v86, v87 op_sel:[0,0,1]             // 00000000DCA4: D2A24087 0002AF56
	v_cvt_pk_fp8_f32 v139, v70, v71 op_sel:[0,0,1]             // 00000000DCAC: D2A2408B 00028F46
	v_cvt_pk_fp8_f32 v136, v90, v91 op_sel:[0,0,1]             // 00000000DCB4: D2A24088 0002B75A
	v_cvt_pk_fp8_f32 v140, v74, v75 op_sel:[0,0,1]             // 00000000DCBC: D2A2408C 0002974A
	v_cvt_pk_fp8_f32 v137, v94, v95 op_sel:[0,0,1]             // 00000000DCC4: D2A24089 0002BF5E
	v_cvt_pk_fp8_f32 v141, v78, v79 op_sel:[0,0,1]             // 00000000DCCC: D2A2408D 00029F4E
	s_barrier                                                  // 00000000DCD4: BF8A0000
	s_setprio 1                                                // 00000000DCD8: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[134:141], 0// 00000000DCDC: D3AD0040 02030D7E
	s_nop 11                                                   // 00000000DCE4: BF80000B
	v_lshlrev_b32_e32 v65, 23, v179                            // 00000000DCE8: 24836697
	v_fma_f32 v178, v64, v65, v178                             // 00000000DCEC: D1CB00B2 06CA8340
	s_waitcnt lgkmcnt(0)                                       // 00000000DCF4: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[98:105], v[182:189], 0// 00000000DCF8: D3AE0050 02036D62
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[206:213], v[182:189], 0// 00000000DD00: D3AE006E 02036DCE
	v_or_b32_e32 v64, s18, v163                                // 00000000DD08: 28814612
	ds_read_b128 v[66:69], v64                                 // 00000000DD0C: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 00000000DD14: D9FE0010 46000040
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[214:221], v[190:197], v[80:95]// 00000000DD1C: D3AE0050 05437DD6
	ds_read_b128 v[96:99], v64 offset:8192                     // 00000000DD24: D9FE2000 60000040
	ds_read_b128 v[100:103], v64 offset:8208                   // 00000000DD2C: D9FE2010 64000040
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[222:229], v[190:197], v[110:125]// 00000000DD34: D3AE006E 05BB7DDE
	s_waitcnt lgkmcnt(0)                                       // 00000000DD3C: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[66:73], v[198:205], v[80:95]// 00000000DD40: D3AE0050 05438D42
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[96:103], v[198:205], v[110:125]// 00000000DD48: D3AE006E 05BB8D60
	s_lshl_b32 s18, s79, 6                                     // 00000000DD50: 8E12864F
	s_add_u32 s20, s18, 64                                     // 00000000DD54: 8014C012
	s_sub_u32 s18, s3, s20                                     // 00000000DD58: 80921403
	s_sub_i32 s18, s18, 0                                      // 00000000DD5C: 81928012
	s_nop 1                                                    // 00000000DD60: BF800001
	v_mov_b32_e32 v64, v80                                     // 00000000DD64: 7E800350
	v_mov_b32_e32 v65, v81                                     // 00000000DD68: 7E820351
	v_mov_b32_e32 v66, v82                                     // 00000000DD6C: 7E840352
	v_mov_b32_e32 v67, v83                                     // 00000000DD70: 7E860353
	v_mov_b32_e32 v68, v84                                     // 00000000DD74: 7E880354
	v_mov_b32_e32 v69, v85                                     // 00000000DD78: 7E8A0355
	v_mov_b32_e32 v70, v86                                     // 00000000DD7C: 7E8C0356
	v_mov_b32_e32 v71, v87                                     // 00000000DD80: 7E8E0357
	v_mov_b32_e32 v72, v88                                     // 00000000DD84: 7E900358
	v_mov_b32_e32 v73, v89                                     // 00000000DD88: 7E920359
	v_mov_b32_e32 v74, v90                                     // 00000000DD8C: 7E94035A
	v_mov_b32_e32 v75, v91                                     // 00000000DD90: 7E96035B
	v_mov_b32_e32 v76, v92                                     // 00000000DD94: 7E98035C
	v_mov_b32_e32 v77, v93                                     // 00000000DD98: 7E9A035D
	v_mov_b32_e32 v78, v94                                     // 00000000DD9C: 7E9C035E
	s_cmp_ge_i32 s18, 32                                       // 00000000DDA0: BF03A012
	v_mov_b32_e32 v79, v95                                     // 00000000DDA4: 7E9E035F
	s_cbranch_scc1 84                                          // 00000000DDA8: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x36fc>
	v_mov_b32_e32 v64, 0xff800000                              // 00000000DDAC: 7E8002FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000DDB4: BF048012
	v_mov_b32_e32 v65, v64                                     // 00000000DDB8: 7E820340
	v_mov_b32_e32 v66, v64                                     // 00000000DDBC: 7E840340
	v_mov_b32_e32 v67, v64                                     // 00000000DDC0: 7E860340
	v_mov_b32_e32 v68, v64                                     // 00000000DDC4: 7E880340
	v_mov_b32_e32 v69, v64                                     // 00000000DDC8: 7E8A0340
	v_mov_b32_e32 v70, v64                                     // 00000000DDCC: 7E8C0340
	v_mov_b32_e32 v71, v64                                     // 00000000DDD0: 7E8E0340
	v_mov_b32_e32 v72, v64                                     // 00000000DDD4: 7E900340
	v_mov_b32_e32 v73, v64                                     // 00000000DDD8: 7E920340
	v_mov_b32_e32 v74, v64                                     // 00000000DDDC: 7E940340
	v_mov_b32_e32 v75, v64                                     // 00000000DDE0: 7E960340
	v_mov_b32_e32 v76, v64                                     // 00000000DDE4: 7E980340
	v_mov_b32_e32 v77, v64                                     // 00000000DDE8: 7E9A0340
	v_mov_b32_e32 v78, v64                                     // 00000000DDEC: 7E9C0340
	v_mov_b32_e32 v79, v64                                     // 00000000DDF0: 7E9E0340
	s_cbranch_scc1 65                                          // 00000000DDF4: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x36fc>
	v_add_u32_e32 v79, s18, v171                               // 00000000DDF8: 689F5612
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 00000000DDFC: 7D889E80
	s_nop 1                                                    // 00000000DE00: BF800001
	v_cndmask_b32_e64 v64, v80, v169, vcc                      // 00000000DE04: D1000040 01AB5350
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 00000000DE0C: 7D889E81
	s_nop 1                                                    // 00000000DE10: BF800001
	v_cndmask_b32_e64 v65, v81, v169, vcc                      // 00000000DE14: D1000041 01AB5351
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 00000000DE1C: 7D889E82
	s_nop 1                                                    // 00000000DE20: BF800001
	v_cndmask_b32_e64 v66, v82, v169, vcc                      // 00000000DE24: D1000042 01AB5352
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 00000000DE2C: 7D889E83
	s_nop 1                                                    // 00000000DE30: BF800001
	v_cndmask_b32_e64 v67, v83, v169, vcc                      // 00000000DE34: D1000043 01AB5353
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 00000000DE3C: 7D889E88
	s_nop 1                                                    // 00000000DE40: BF800001
	v_cndmask_b32_e64 v68, v84, v169, vcc                      // 00000000DE44: D1000044 01AB5354
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 00000000DE4C: 7D889E89
	s_nop 1                                                    // 00000000DE50: BF800001
	v_cndmask_b32_e64 v69, v85, v169, vcc                      // 00000000DE54: D1000045 01AB5355
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 00000000DE5C: 7D889E8A
	s_nop 1                                                    // 00000000DE60: BF800001
	v_cndmask_b32_e64 v70, v86, v169, vcc                      // 00000000DE64: D1000046 01AB5356
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 00000000DE6C: 7D889E8B
	s_nop 1                                                    // 00000000DE70: BF800001
	v_cndmask_b32_e64 v71, v87, v169, vcc                      // 00000000DE74: D1000047 01AB5357
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 00000000DE7C: 7D889E90
	s_nop 1                                                    // 00000000DE80: BF800001
	v_cndmask_b32_e64 v72, v88, v169, vcc                      // 00000000DE84: D1000048 01AB5358
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 00000000DE8C: 7D889E91
	s_nop 1                                                    // 00000000DE90: BF800001
	v_cndmask_b32_e64 v73, v89, v169, vcc                      // 00000000DE94: D1000049 01AB5359
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 00000000DE9C: 7D889E92
	s_nop 1                                                    // 00000000DEA0: BF800001
	v_cndmask_b32_e64 v74, v90, v169, vcc                      // 00000000DEA4: D100004A 01AB535A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 00000000DEAC: 7D889E93
	s_nop 1                                                    // 00000000DEB0: BF800001
	v_cndmask_b32_e64 v75, v91, v169, vcc                      // 00000000DEB4: D100004B 01AB535B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 00000000DEBC: 7D889E98
	s_nop 1                                                    // 00000000DEC0: BF800001
	v_cndmask_b32_e64 v76, v92, v169, vcc                      // 00000000DEC4: D100004C 01AB535C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 00000000DECC: 7D889E99
	s_nop 1                                                    // 00000000DED0: BF800001
	v_cndmask_b32_e64 v77, v93, v169, vcc                      // 00000000DED4: D100004D 01AB535D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 00000000DEDC: 7D889E9A
	s_nop 1                                                    // 00000000DEE0: BF800001
	v_cndmask_b32_e64 v78, v94, v169, vcc                      // 00000000DEE4: D100004E 01AB535E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 00000000DEEC: 7D889E9B
	s_nop 1                                                    // 00000000DEF0: BF800001
	v_cndmask_b32_e64 v79, v95, v169, vcc                      // 00000000DEF4: D100004F 01AB535F
	s_sub_u32 s18, s3, s20                                     // 00000000DEFC: 80921403
	s_sub_i32 s18, s18, 32                                     // 00000000DF00: 8192A012
	v_mov_b32_e32 v94, v110                                    // 00000000DF04: 7EBC036E
	v_mov_b32_e32 v95, v111                                    // 00000000DF08: 7EBE036F
	v_mov_b32_e32 v96, v112                                    // 00000000DF0C: 7EC00370
	v_mov_b32_e32 v97, v113                                    // 00000000DF10: 7EC20371
	v_mov_b32_e32 v98, v114                                    // 00000000DF14: 7EC40372
	v_mov_b32_e32 v99, v115                                    // 00000000DF18: 7EC60373
	v_mov_b32_e32 v100, v116                                   // 00000000DF1C: 7EC80374
	v_mov_b32_e32 v101, v117                                   // 00000000DF20: 7ECA0375
	v_mov_b32_e32 v102, v118                                   // 00000000DF24: 7ECC0376
	v_mov_b32_e32 v103, v119                                   // 00000000DF28: 7ECE0377
	v_mov_b32_e32 v104, v120                                   // 00000000DF2C: 7ED00378
	v_mov_b32_e32 v105, v121                                   // 00000000DF30: 7ED20379
	v_mov_b32_e32 v106, v122                                   // 00000000DF34: 7ED4037A
	v_mov_b32_e32 v107, v123                                   // 00000000DF38: 7ED6037B
	v_mov_b32_e32 v108, v124                                   // 00000000DF3C: 7ED8037C
	s_cmp_ge_i32 s18, 32                                       // 00000000DF40: BF03A012
	v_mov_b32_e32 v109, v125                                   // 00000000DF44: 7EDA037D
	s_cbranch_scc1 84                                          // 00000000DF48: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x389c>
	v_mov_b32_e32 v94, 0xff800000                              // 00000000DF4C: 7EBC02FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000DF54: BF048012
	v_mov_b32_e32 v95, v94                                     // 00000000DF58: 7EBE035E
	v_mov_b32_e32 v96, v94                                     // 00000000DF5C: 7EC0035E
	v_mov_b32_e32 v97, v94                                     // 00000000DF60: 7EC2035E
	v_mov_b32_e32 v98, v94                                     // 00000000DF64: 7EC4035E
	v_mov_b32_e32 v99, v94                                     // 00000000DF68: 7EC6035E
	v_mov_b32_e32 v100, v94                                    // 00000000DF6C: 7EC8035E
	v_mov_b32_e32 v101, v94                                    // 00000000DF70: 7ECA035E
	v_mov_b32_e32 v102, v94                                    // 00000000DF74: 7ECC035E
	v_mov_b32_e32 v103, v94                                    // 00000000DF78: 7ECE035E
	v_mov_b32_e32 v104, v94                                    // 00000000DF7C: 7ED0035E
	v_mov_b32_e32 v105, v94                                    // 00000000DF80: 7ED2035E
	v_mov_b32_e32 v106, v94                                    // 00000000DF84: 7ED4035E
	v_mov_b32_e32 v107, v94                                    // 00000000DF88: 7ED6035E
	v_mov_b32_e32 v108, v94                                    // 00000000DF8C: 7ED8035E
	v_mov_b32_e32 v109, v94                                    // 00000000DF90: 7EDA035E
	s_cbranch_scc1 65                                          // 00000000DF94: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x389c>
	v_add_u32_e32 v80, s18, v171                               // 00000000DF98: 68A15612
	v_cmp_gt_i32_e32 vcc, 0, v80                               // 00000000DF9C: 7D88A080
	s_nop 1                                                    // 00000000DFA0: BF800001
	v_cndmask_b32_e64 v94, v110, v169, vcc                     // 00000000DFA4: D100005E 01AB536E
	v_cmp_gt_i32_e32 vcc, 1, v80                               // 00000000DFAC: 7D88A081
	s_nop 1                                                    // 00000000DFB0: BF800001
	v_cndmask_b32_e64 v95, v111, v169, vcc                     // 00000000DFB4: D100005F 01AB536F
	v_cmp_gt_i32_e32 vcc, 2, v80                               // 00000000DFBC: 7D88A082
	s_nop 1                                                    // 00000000DFC0: BF800001
	v_cndmask_b32_e64 v96, v112, v169, vcc                     // 00000000DFC4: D1000060 01AB5370
	v_cmp_gt_i32_e32 vcc, 3, v80                               // 00000000DFCC: 7D88A083
	s_nop 1                                                    // 00000000DFD0: BF800001
	v_cndmask_b32_e64 v97, v113, v169, vcc                     // 00000000DFD4: D1000061 01AB5371
	v_cmp_gt_i32_e32 vcc, 8, v80                               // 00000000DFDC: 7D88A088
	s_nop 1                                                    // 00000000DFE0: BF800001
	v_cndmask_b32_e64 v98, v114, v169, vcc                     // 00000000DFE4: D1000062 01AB5372
	v_cmp_gt_i32_e32 vcc, 9, v80                               // 00000000DFEC: 7D88A089
	s_nop 1                                                    // 00000000DFF0: BF800001
	v_cndmask_b32_e64 v99, v115, v169, vcc                     // 00000000DFF4: D1000063 01AB5373
	v_cmp_gt_i32_e32 vcc, 10, v80                              // 00000000DFFC: 7D88A08A
	s_nop 1                                                    // 00000000E000: BF800001
	v_cndmask_b32_e64 v100, v116, v169, vcc                    // 00000000E004: D1000064 01AB5374
	v_cmp_gt_i32_e32 vcc, 11, v80                              // 00000000E00C: 7D88A08B
	s_nop 1                                                    // 00000000E010: BF800001
	v_cndmask_b32_e64 v101, v117, v169, vcc                    // 00000000E014: D1000065 01AB5375
	v_cmp_gt_i32_e32 vcc, 16, v80                              // 00000000E01C: 7D88A090
	s_nop 1                                                    // 00000000E020: BF800001
	v_cndmask_b32_e64 v102, v118, v169, vcc                    // 00000000E024: D1000066 01AB5376
	v_cmp_gt_i32_e32 vcc, 17, v80                              // 00000000E02C: 7D88A091
	s_nop 1                                                    // 00000000E030: BF800001
	v_cndmask_b32_e64 v103, v119, v169, vcc                    // 00000000E034: D1000067 01AB5377
	v_cmp_gt_i32_e32 vcc, 18, v80                              // 00000000E03C: 7D88A092
	s_nop 1                                                    // 00000000E040: BF800001
	v_cndmask_b32_e64 v104, v120, v169, vcc                    // 00000000E044: D1000068 01AB5378
	v_cmp_gt_i32_e32 vcc, 19, v80                              // 00000000E04C: 7D88A093
	s_nop 1                                                    // 00000000E050: BF800001
	v_cndmask_b32_e64 v105, v121, v169, vcc                    // 00000000E054: D1000069 01AB5379
	v_cmp_gt_i32_e32 vcc, 24, v80                              // 00000000E05C: 7D88A098
	s_nop 1                                                    // 00000000E060: BF800001
	v_cndmask_b32_e64 v106, v122, v169, vcc                    // 00000000E064: D100006A 01AB537A
	v_cmp_gt_i32_e32 vcc, 25, v80                              // 00000000E06C: 7D88A099
	s_nop 1                                                    // 00000000E070: BF800001
	v_cndmask_b32_e64 v107, v123, v169, vcc                    // 00000000E074: D100006B 01AB537B
	v_cmp_gt_i32_e32 vcc, 26, v80                              // 00000000E07C: 7D88A09A
	s_nop 1                                                    // 00000000E080: BF800001
	v_cndmask_b32_e64 v108, v124, v169, vcc                    // 00000000E084: D100006C 01AB537C
	v_cmp_gt_i32_e32 vcc, 27, v80                              // 00000000E08C: 7D88A09B
	s_nop 1                                                    // 00000000E090: BF800001
	v_cndmask_b32_e64 v109, v125, v169, vcc                    // 00000000E094: D100006D 01AB537D
	v_max_f32_e32 v80, v64, v65                                // 00000000E09C: 16A08340
	v_max3_f32 v80, v66, v67, v80                              // 00000000E0A0: D1D30050 05428742
	v_max3_f32 v80, v68, v69, v80                              // 00000000E0A8: D1D30050 05428B44
	v_max3_f32 v80, v70, v71, v80                              // 00000000E0B0: D1D30050 05428F46
	v_max3_f32 v80, v72, v73, v80                              // 00000000E0B8: D1D30050 05429348
	v_max3_f32 v80, v74, v75, v80                              // 00000000E0C0: D1D30050 0542974A
	v_max3_f32 v80, v76, v77, v80                              // 00000000E0C8: D1D30050 05429B4C
	v_max3_f32 v80, v78, v79, v80                              // 00000000E0D0: D1D30050 05429F4E
	v_max_f32_e32 v81, v94, v95                                // 00000000E0D8: 16A2BF5E
	v_max3_f32 v81, v96, v97, v81                              // 00000000E0DC: D1D30051 0546C360
	v_max3_f32 v81, v98, v99, v81                              // 00000000E0E4: D1D30051 0546C762
	v_max3_f32 v81, v100, v101, v81                            // 00000000E0EC: D1D30051 0546CB64
	v_max3_f32 v81, v102, v103, v81                            // 00000000E0F4: D1D30051 0546CF66
	v_max3_f32 v81, v104, v105, v81                            // 00000000E0FC: D1D30051 0546D368
	v_max3_f32 v81, v106, v107, v81                            // 00000000E104: D1D30051 0546D76A
	v_max3_f32 v81, v108, v109, v81                            // 00000000E10C: D1D30051 0546DB6C
	v_max_f32_e32 v80, v80, v81                                // 00000000E114: 16A0A350
	v_mov_b32_e32 v81, v80                                     // 00000000E118: 7EA20350
	s_nop 1                                                    // 00000000E11C: BF800001
	v_permlane32_swap_b32_e32 v80, v81                         // 00000000E120: 7EA0B551
	v_max_f32_e32 v80, v80, v81                                // 00000000E124: 16A0A350
	v_mul_f32_e32 v81, v142, v80                               // 00000000E128: 0AA2A18E
	v_max_f32_e32 v81, v177, v81                               // 00000000E12C: 16A2A3B1
	v_sub_f32_e32 v82, v81, v177                               // 00000000E130: 04A56351
	v_cmp_lt_f32_e32 vcc, s91, v82                             // 00000000E134: 7C82A45B
	s_cmp_lg_u64 vcc, 0                                        // 00000000E138: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000E13C: 859280C1
	s_and_b64 s[20:21], s[18:19], exec                         // 00000000E140: 86947E12
	s_cselect_b32 s20, 1, 0                                    // 00000000E144: 85148081
	s_cselect_b64 s[20:21], -1, 0                              // 00000000E148: 859480C1
	v_cndmask_b32_e64 v111, v177, v81, s[20:21]                // 00000000E14C: D100006F 0052A3B1
	v_fma_f32 v80, v80, v142, -v111                            // 00000000E154: D1CB0050 85BF1D50
	v_floor_f32_e32 v80, v80                                   // 00000000E15C: 7EA03F50
	v_med3_f32 v80, v80, s89, 0                                // 00000000E160: D1D60050 0200B350
	v_cvt_i32_f32_e32 v81, v80                                 // 00000000E168: 7EA21150
	v_add_u32_e32 v112, 0x7f, v81                              // 00000000E16C: 68E0A2FF 0000007F
	v_lshlrev_b32_e32 v81, 23, v112                            // 00000000E174: 24A2E097
	v_add_f32_e32 v80, v111, v80                               // 00000000E178: 02A0A16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000E17C: 04DCA0FF 40C00000
	s_waitcnt vmcnt(0)                                         // 00000000E184: BF8C0F70
	ds_read_b64_tr_b8 v[114:115], v143                         // 00000000E188: D9C40000 7200008F
	ds_read_b64_tr_b8 v[116:117], v143 offset:1024             // 00000000E190: D9C40400 7400008F
	ds_read_b64_tr_b8 v[118:119], v143 offset:2048             // 00000000E198: D9C40800 7600008F
	ds_read_b64_tr_b8 v[120:121], v143 offset:3072             // 00000000E1A0: D9C40C00 7800008F
	ds_read_b64_tr_b8 v[206:207], v143 offset:256              // 00000000E1A8: D9C40100 CE00008F
	ds_read_b64_tr_b8 v[208:209], v143 offset:1280             // 00000000E1B0: D9C40500 D000008F
	ds_read_b64_tr_b8 v[210:211], v143 offset:2304             // 00000000E1B8: D9C40900 D200008F
	ds_read_b64_tr_b8 v[212:213], v143 offset:3328             // 00000000E1C0: D9C40D00 D400008F
	ds_read_b64_tr_b8 v[80:81], v143 offset:512                // 00000000E1C8: D9C40200 5000008F
	ds_read_b64_tr_b8 v[82:83], v143 offset:1536               // 00000000E1D0: D9C40600 5200008F
	ds_read_b64_tr_b8 v[84:85], v143 offset:2560               // 00000000E1D8: D9C40A00 5400008F
	ds_read_b64_tr_b8 v[86:87], v143 offset:3584               // 00000000E1E0: D9C40E00 5600008F
	s_waitcnt lgkmcnt(4)                                       // 00000000E1E8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[114:121], v[134:141], v[48:63], v170, v179 op_sel_hi:[0,0,0]// 00000000E1EC: D3AC0000 000367AA D3AE0830 04C30D72
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[206:213], v[134:141], v[32:47], v170, v179 op_sel_hi:[0,0,0]// 00000000E1FC: D3AC0000 000367AA D3AE0820 04830DCE
	ds_read_b64_tr_b8 v[114:115], v143 offset:768              // 00000000E20C: D9C40300 7200008F
	ds_read_b64_tr_b8 v[116:117], v143 offset:1792             // 00000000E214: D9C40700 7400008F
	ds_read_b64_tr_b8 v[118:119], v143 offset:2816             // 00000000E21C: D9C40B00 7600008F
	ds_read_b64_tr_b8 v[120:121], v143 offset:3840             // 00000000E224: D9C40F00 7800008F
	s_add_u32 s20, s79, 4                                      // 00000000E22C: 8014844F
	s_cmp_ge_u32 s20, s98                                      // 00000000E230: BF096214
	s_cbranch_scc1 13                                          // 00000000E234: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3a6c>
	s_lshl_b32 s21, s17, 14                                    // 00000000E238: 8E158E11
	s_mul_i32 s20, s20, s6                                     // 00000000E23C: 92140614
	s_or_b32 s21, s21, s72                                     // 00000000E240: 87154815
	s_lshl_b32 s20, s20, 6                                     // 00000000E244: 8E148614
	s_mov_b32 m0, s21                                          // 00000000E248: BEFC0015
	s_nop 0                                                    // 00000000E24C: BF800000
	buffer_load_dwordx4 v164, s[68:71], s20 offen lds          // 00000000E250: E05D1000 141100A4
	s_or_b32 m0, s21, 0x2000                                   // 00000000E258: 877CFF15 00002000
	s_nop 0                                                    // 00000000E260: BF800000
	buffer_load_dwordx4 v165, s[68:71], s20 offen lds          // 00000000E264: E05D1000 141100A5
	s_add_u32 s20, s79, 2                                      // 00000000E26C: 8014824F
	s_cmp_ge_u32 s20, s98                                      // 00000000E270: BF096214
	s_cbranch_scc1 9                                           // 00000000E274: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3a9c>
	s_xor_b32 s17, s17, 2                                      // 00000000E278: 88118211
	s_mul_i32 s20, s20, s7                                     // 00000000E27C: 92140714
	s_lshl_b32 s17, s17, 13                                    // 00000000E280: 8E118D11
	s_lshl_b32 s20, s20, 6                                     // 00000000E284: 8E148614
	s_add_u32 s17, s48, s17                                    // 00000000E288: 80111130
	s_add_u32 m0, s17, s72                                     // 00000000E28C: 807C4811
	s_nop 0                                                    // 00000000E290: BF800000
	buffer_load_dwordx4 v166, s[64:67], s20 offen lds          // 00000000E294: E05D1000 141000A6
	s_waitcnt lgkmcnt(0)                                       // 00000000E29C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[80:87], v[134:141], v[16:31], v170, v179 op_sel_hi:[0,0,0]// 00000000E2A0: D3AC0000 000367AA D3AE0810 04430D50
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[134:141], v[0:15], v170, v179 op_sel_hi:[0,0,0]// 00000000E2B0: D3AC0000 000367AA D3AE0800 04030D72
	v_mov_b32_e32 v143, v142                                   // 00000000E2C0: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000E2C4: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000E2CC: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E2D4: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E2DC: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E2E4: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E2EC: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E2F4: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E2FC: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E304: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E30C: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E314: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E31C: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E324: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E32C: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E334: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E33C: D3B00042 1DBB1D60
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000E344: 86927E12
	s_cbranch_scc0 68                                          // 00000000E348: BF840044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3c5c>
	v_sub_f32_e32 v96, v177, v111                              // 00000000E34C: 04C0DFB1
	v_exp_f32_e32 v96, v96                                     // 00000000E350: 7EC04160
	s_nop 0                                                    // 00000000E354: BF800000
	v_pk_mul_f32 v[62:63], v[96:97], v[62:63] op_sel_hi:[0,1]  // 00000000E358: D3B1403E 10027D60
	v_pk_mul_f32 v[60:61], v[96:97], v[60:61] op_sel_hi:[0,1]  // 00000000E360: D3B1403C 10027960
	v_pk_mul_f32 v[58:59], v[96:97], v[58:59] op_sel_hi:[0,1]  // 00000000E368: D3B1403A 10027560
	v_pk_mul_f32 v[56:57], v[96:97], v[56:57] op_sel_hi:[0,1]  // 00000000E370: D3B14038 10027160
	v_pk_mul_f32 v[54:55], v[96:97], v[54:55] op_sel_hi:[0,1]  // 00000000E378: D3B14036 10026D60
	v_pk_mul_f32 v[52:53], v[96:97], v[52:53] op_sel_hi:[0,1]  // 00000000E380: D3B14034 10026960
	v_pk_mul_f32 v[50:51], v[96:97], v[50:51] op_sel_hi:[0,1]  // 00000000E388: D3B14032 10026560
	v_pk_mul_f32 v[48:49], v[96:97], v[48:49] op_sel_hi:[0,1]  // 00000000E390: D3B14030 10026160
	v_pk_mul_f32 v[46:47], v[96:97], v[46:47] op_sel_hi:[0,1]  // 00000000E398: D3B1402E 10025D60
	v_pk_mul_f32 v[44:45], v[96:97], v[44:45] op_sel_hi:[0,1]  // 00000000E3A0: D3B1402C 10025960
	v_pk_mul_f32 v[42:43], v[96:97], v[42:43] op_sel_hi:[0,1]  // 00000000E3A8: D3B1402A 10025560
	v_pk_mul_f32 v[40:41], v[96:97], v[40:41] op_sel_hi:[0,1]  // 00000000E3B0: D3B14028 10025160
	v_pk_mul_f32 v[38:39], v[96:97], v[38:39] op_sel_hi:[0,1]  // 00000000E3B8: D3B14026 10024D60
	v_pk_mul_f32 v[36:37], v[96:97], v[36:37] op_sel_hi:[0,1]  // 00000000E3C0: D3B14024 10024960
	v_pk_mul_f32 v[34:35], v[96:97], v[34:35] op_sel_hi:[0,1]  // 00000000E3C8: D3B14022 10024560
	v_pk_mul_f32 v[32:33], v[96:97], v[32:33] op_sel_hi:[0,1]  // 00000000E3D0: D3B14020 10024160
	v_pk_mul_f32 v[30:31], v[96:97], v[30:31] op_sel_hi:[0,1]  // 00000000E3D8: D3B1401E 10023D60
	v_pk_mul_f32 v[28:29], v[96:97], v[28:29] op_sel_hi:[0,1]  // 00000000E3E0: D3B1401C 10023960
	v_pk_mul_f32 v[26:27], v[96:97], v[26:27] op_sel_hi:[0,1]  // 00000000E3E8: D3B1401A 10023560
	v_pk_mul_f32 v[24:25], v[96:97], v[24:25] op_sel_hi:[0,1]  // 00000000E3F0: D3B14018 10023160
	v_pk_mul_f32 v[22:23], v[96:97], v[22:23] op_sel_hi:[0,1]  // 00000000E3F8: D3B14016 10022D60
	v_pk_mul_f32 v[20:21], v[96:97], v[20:21] op_sel_hi:[0,1]  // 00000000E400: D3B14014 10022960
	v_pk_mul_f32 v[18:19], v[96:97], v[18:19] op_sel_hi:[0,1]  // 00000000E408: D3B14012 10022560
	v_pk_mul_f32 v[16:17], v[96:97], v[16:17] op_sel_hi:[0,1]  // 00000000E410: D3B14010 10022160
	v_pk_mul_f32 v[14:15], v[96:97], v[14:15] op_sel_hi:[0,1]  // 00000000E418: D3B1400E 10021D60
	v_pk_mul_f32 v[12:13], v[96:97], v[12:13] op_sel_hi:[0,1]  // 00000000E420: D3B1400C 10021960
	v_pk_mul_f32 v[10:11], v[96:97], v[10:11] op_sel_hi:[0,1]  // 00000000E428: D3B1400A 10021560
	v_pk_mul_f32 v[8:9], v[96:97], v[8:9] op_sel_hi:[0,1]      // 00000000E430: D3B14008 10021160
	v_pk_mul_f32 v[6:7], v[96:97], v[6:7] op_sel_hi:[0,1]      // 00000000E438: D3B14006 10020D60
	v_pk_mul_f32 v[4:5], v[96:97], v[4:5] op_sel_hi:[0,1]      // 00000000E440: D3B14004 10020960
	v_pk_mul_f32 v[2:3], v[96:97], v[2:3] op_sel_hi:[0,1]      // 00000000E448: D3B14002 10020560
	v_pk_mul_f32 v[0:1], v[96:97], v[0:1] op_sel_hi:[0,1]      // 00000000E450: D3B14000 10020160
	v_mul_f32_e32 v178, v178, v96                              // 00000000E458: 0B64C1B2
	s_waitcnt vmcnt(0)                                         // 00000000E45C: BF8C0F70
	s_barrier                                                  // 00000000E460: BF8A0000
	s_add_u32 s79, s79, 1                                      // 00000000E464: 804F814F
	v_mov_b32_e32 v179, v112                                   // 00000000E468: 7F660370
	v_mov_b32_e32 v177, v111                                   // 00000000E46C: 7F62036F
	s_branch 64157                                             // 00000000E470: BF82FA9D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26e8>
	s_cmp_eq_u32 s79, s78                                      // 00000000E474: BF064E4F
	s_cbranch_scc0 163                                         // 00000000E478: BF8400A3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3f08>
	s_setprio 0                                                // 00000000E47C: BF8F0000
	v_exp_f32_e32 v104, v80                                    // 00000000E480: 7ED04150
	v_exp_f32_e32 v105, v81                                    // 00000000E484: 7ED24151
	v_exp_f32_e32 v108, v64                                    // 00000000E488: 7ED84140
	v_exp_f32_e32 v109, v65                                    // 00000000E48C: 7EDA4141
	v_exp_f32_e32 v112, v84                                    // 00000000E490: 7EE04154
	v_exp_f32_e32 v113, v85                                    // 00000000E494: 7EE24155
	v_exp_f32_e32 v116, v68                                    // 00000000E498: 7EE84144
	v_exp_f32_e32 v117, v69                                    // 00000000E49C: 7EEA4145
	v_exp_f32_e32 v120, v88                                    // 00000000E4A0: 7EF04158
	v_exp_f32_e32 v121, v89                                    // 00000000E4A4: 7EF24159
	v_exp_f32_e32 v124, v72                                    // 00000000E4A8: 7EF84148
	v_exp_f32_e32 v125, v73                                    // 00000000E4AC: 7EFA4149
	v_exp_f32_e32 v136, v92                                    // 00000000E4B0: 7F10415C
	v_exp_f32_e32 v137, v93                                    // 00000000E4B4: 7F12415D
	v_exp_f32_e32 v140, v76                                    // 00000000E4B8: 7F18414C
	v_exp_f32_e32 v141, v77                                    // 00000000E4BC: 7F1A414D
	v_mov_b32_e32 v96, 0                                       // 00000000E4C0: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000E4C4: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000E4C8: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000E4CC: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000E4D0: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000E4D4: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000E4D8: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000E4DC: 7ECE0280
	v_exp_f32_e32 v106, v82                                    // 00000000E4E0: 7ED44152
	v_exp_f32_e32 v107, v83                                    // 00000000E4E4: 7ED64153
	v_exp_f32_e32 v110, v66                                    // 00000000E4E8: 7EDC4142
	v_exp_f32_e32 v111, v67                                    // 00000000E4EC: 7EDE4143
	v_exp_f32_e32 v114, v86                                    // 00000000E4F0: 7EE44156
	v_exp_f32_e32 v115, v87                                    // 00000000E4F4: 7EE64157
	v_exp_f32_e32 v118, v70                                    // 00000000E4F8: 7EEC4146
	v_exp_f32_e32 v119, v71                                    // 00000000E4FC: 7EEE4147
	v_exp_f32_e32 v122, v90                                    // 00000000E500: 7EF4415A
	v_exp_f32_e32 v123, v91                                    // 00000000E504: 7EF6415B
	v_exp_f32_e32 v134, v74                                    // 00000000E508: 7F0C414A
	v_exp_f32_e32 v135, v75                                    // 00000000E50C: 7F0E414B
	v_exp_f32_e32 v138, v94                                    // 00000000E510: 7F14415E
	v_exp_f32_e32 v139, v95                                    // 00000000E514: 7F16415F
	v_exp_f32_e32 v180, v78                                    // 00000000E518: 7F68414E
	v_exp_f32_e32 v181, v79                                    // 00000000E51C: 7F6A414F
	v_cvt_pk_fp8_f32 v96, v104, v105                           // 00000000E520: D2A20060 0002D368
	v_cvt_pk_fp8_f32 v100, v108, v109                          // 00000000E528: D2A20064 0002DB6C
	v_cvt_pk_fp8_f32 v97, v112, v113                           // 00000000E530: D2A20061 0002E370
	v_cvt_pk_fp8_f32 v101, v116, v117                          // 00000000E538: D2A20065 0002EB74
	v_cvt_pk_fp8_f32 v98, v120, v121                           // 00000000E540: D2A20062 0002F378
	v_cvt_pk_fp8_f32 v102, v124, v125                          // 00000000E548: D2A20066 0002FB7C
	v_cvt_pk_fp8_f32 v99, v136, v137                           // 00000000E550: D2A20063 00031388
	v_cvt_pk_fp8_f32 v103, v140, v141                          // 00000000E558: D2A20067 00031B8C
	v_cvt_pk_fp8_f32 v96, v106, v107 op_sel:[0,0,1]            // 00000000E560: D2A24060 0002D76A
	v_cvt_pk_fp8_f32 v100, v110, v111 op_sel:[0,0,1]           // 00000000E568: D2A24064 0002DF6E
	v_cvt_pk_fp8_f32 v97, v114, v115 op_sel:[0,0,1]            // 00000000E570: D2A24061 0002E772
	v_cvt_pk_fp8_f32 v101, v118, v119 op_sel:[0,0,1]           // 00000000E578: D2A24065 0002EF76
	v_cvt_pk_fp8_f32 v98, v122, v123 op_sel:[0,0,1]            // 00000000E580: D2A24062 0002F77A
	v_cvt_pk_fp8_f32 v102, v134, v135 op_sel:[0,0,1]           // 00000000E588: D2A24066 00030F86
	v_cvt_pk_fp8_f32 v99, v138, v139 op_sel:[0,0,1]            // 00000000E590: D2A24063 0003178A
	v_cvt_pk_fp8_f32 v103, v180, v181 op_sel:[0,0,1]           // 00000000E598: D2A24067 00036BB4
	s_barrier                                                  // 00000000E5A0: BF8A0000
	s_setprio 1                                                // 00000000E5A4: BF8F0001
	s_waitcnt vmcnt(0)                                         // 00000000E5A8: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[104:107], v[126:133], v[96:103], 0// 00000000E5AC: D3AD0068 0202C17E
	ds_read_b64_tr_b8 v[114:115], v143                         // 00000000E5B4: D9C40000 7200008F
	ds_read_b64_tr_b8 v[116:117], v143 offset:1024             // 00000000E5BC: D9C40400 7400008F
	ds_read_b64_tr_b8 v[118:119], v143 offset:2048             // 00000000E5C4: D9C40800 7600008F
	ds_read_b64_tr_b8 v[120:121], v143 offset:3072             // 00000000E5CC: D9C40C00 7800008F
	ds_read_b64_tr_b8 v[134:135], v143 offset:256              // 00000000E5D4: D9C40100 8600008F
	ds_read_b64_tr_b8 v[136:137], v143 offset:1280             // 00000000E5DC: D9C40500 8800008F
	ds_read_b64_tr_b8 v[138:139], v143 offset:2304             // 00000000E5E4: D9C40900 8A00008F
	ds_read_b64_tr_b8 v[140:141], v143 offset:3328             // 00000000E5EC: D9C40D00 8C00008F
	s_nop 3                                                    // 00000000E5F4: BF800003
	ds_read_b64_tr_b8 v[106:107], v143 offset:512              // 00000000E5F8: D9C40200 6A00008F
	ds_read_b64_tr_b8 v[108:109], v143 offset:1536             // 00000000E600: D9C40600 6C00008F
	ds_read_b64_tr_b8 v[110:111], v143 offset:2560             // 00000000E608: D9C40A00 6E00008F
	ds_read_b64_tr_b8 v[112:113], v143 offset:3584             // 00000000E610: D9C40E00 7000008F
	s_waitcnt lgkmcnt(4)                                       // 00000000E618: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[114:121], v[96:103], v[48:63], v170, v179 op_sel_hi:[0,0,0]// 00000000E61C: D3AC0000 000367AA D3AE0830 04C2C172
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[96:103], v[32:47], v170, v179 op_sel_hi:[0,0,0]// 00000000E62C: D3AC0000 000367AA D3AE0820 0482C186
	ds_read_b64_tr_b8 v[114:115], v143 offset:768              // 00000000E63C: D9C40300 7200008F
	ds_read_b64_tr_b8 v[116:117], v143 offset:1792             // 00000000E644: D9C40700 7400008F
	ds_read_b64_tr_b8 v[118:119], v143 offset:2816             // 00000000E64C: D9C40B00 7600008F
	ds_read_b64_tr_b8 v[120:121], v143 offset:3840             // 00000000E654: D9C40F00 7800008F
	s_add_u32 s18, s78, 4                                      // 00000000E65C: 8012844E
	s_cmp_ge_u32 s18, s98                                      // 00000000E660: BF096212
	s_cbranch_scc1 13                                          // 00000000E664: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3e9c>
	s_lshl_b32 s19, s17, 14                                    // 00000000E668: 8E138E11
	s_mul_i32 s18, s18, s6                                     // 00000000E66C: 92120612
	s_or_b32 s19, s19, s72                                     // 00000000E670: 87134813
	s_lshl_b32 s18, s18, 6                                     // 00000000E674: 8E128612
	s_mov_b32 m0, s19                                          // 00000000E678: BEFC0013
	s_nop 0                                                    // 00000000E67C: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000E680: E05D1000 121100A4
	s_or_b32 m0, s19, 0x2000                                   // 00000000E688: 877CFF13 00002000
	s_nop 0                                                    // 00000000E690: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000E694: E05D1000 121100A5
	s_add_u32 s18, s78, 2                                      // 00000000E69C: 8012824E
	s_cmp_ge_u32 s18, s98                                      // 00000000E6A0: BF096212
	s_cbranch_scc1 9                                           // 00000000E6A4: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3ecc>
	s_xor_b32 s17, s17, 2                                      // 00000000E6A8: 88118211
	s_mul_i32 s18, s18, s7                                     // 00000000E6AC: 92120712
	s_lshl_b32 s17, s17, 13                                    // 00000000E6B0: 8E118D11
	s_lshl_b32 s18, s18, 6                                     // 00000000E6B4: 8E128612
	s_add_u32 s17, s48, s17                                    // 00000000E6B8: 80111130
	s_add_u32 m0, s17, s72                                     // 00000000E6BC: 807C4811
	s_nop 0                                                    // 00000000E6C0: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000E6C4: E05D1000 121000A6
	v_lshlrev_b32_e32 v105, 23, v179                           // 00000000E6CC: 24D36697
	v_fma_f32 v178, v104, v105, v178                           // 00000000E6D0: D1CB00B2 06CAD368
	s_waitcnt lgkmcnt(0)                                       // 00000000E6D8: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[106:113], v[96:103], v[16:31], v170, v179 op_sel_hi:[0,0,0]// 00000000E6DC: D3AC0000 000367AA D3AE0810 0442C16A
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[96:103], v[0:15], v170, v179 op_sel_hi:[0,0,0]// 00000000E6EC: D3AC0000 000367AA D3AE0800 0402C172
	s_barrier                                                  // 00000000E6FC: BF8A0000
	s_add_u32 s79, s78, 1                                      // 00000000E700: 804F814E
	s_branch 63992                                             // 00000000E704: BF82F9F8 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26e8>
	s_barrier                                                  // 00000000E708: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000E70C: BF8C0F70
	s_add_u32 s18, s79, 4                                      // 00000000E710: 8012844F
	s_cmp_ge_u32 s18, s98                                      // 00000000E714: BF096212
	s_cbranch_scc1 13                                          // 00000000E718: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3f50>
	s_lshl_b32 s19, s17, 14                                    // 00000000E71C: 8E138E11
	s_mul_i32 s18, s18, s6                                     // 00000000E720: 92120612
	s_or_b32 s19, s19, s72                                     // 00000000E724: 87134813
	s_lshl_b32 s18, s18, 6                                     // 00000000E728: 8E128612
	s_mov_b32 m0, s19                                          // 00000000E72C: BEFC0013
	s_nop 0                                                    // 00000000E730: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000E734: E05D1000 121100A4
	s_or_b32 m0, s19, 0x2000                                   // 00000000E73C: 877CFF13 00002000
	s_nop 0                                                    // 00000000E744: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000E748: E05D1000 121100A5
	s_add_u32 s18, s79, 2                                      // 00000000E750: 8012824F
	s_cmp_ge_u32 s18, s98                                      // 00000000E754: BF096212
	s_cbranch_scc1 9                                           // 00000000E758: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3f80>
	s_xor_b32 s17, s17, 2                                      // 00000000E75C: 88118211
	s_mul_i32 s18, s18, s7                                     // 00000000E760: 92120712
	s_lshl_b32 s17, s17, 13                                    // 00000000E764: 8E118D11
	s_lshl_b32 s18, s18, 6                                     // 00000000E768: 8E128612
	s_add_u32 s17, s48, s17                                    // 00000000E76C: 80111130
	s_add_u32 m0, s17, s72                                     // 00000000E770: 807C4811
	s_nop 0                                                    // 00000000E774: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000E778: E05D1000 121000A6
	s_barrier                                                  // 00000000E780: BF8A0000
	s_add_u32 s79, s79, 1                                      // 00000000E784: 804F814F
	s_branch 63959                                             // 00000000E788: BF82F9D7 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x26e8>
	s_cmp_ge_u32 s78, s79                                      // 00000000E78C: BF094F4E
	s_cbranch_scc1 40                                          // 00000000E790: BF850028 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4034>
	s_waitcnt vmcnt(0)                                         // 00000000E794: BF8C0F70
	s_barrier                                                  // 00000000E798: BF8A0000
	s_add_u32 s17, s98, s81                                    // 00000000E79C: 80115162
	s_and_b32 s24, s17, 3                                      // 00000000E7A0: 86188311
	s_cmp_lg_u32 s77, 0                                        // 00000000E7A4: BF07804D
	s_cbranch_scc1 4                                           // 00000000E7A8: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3fbc>
	s_not_b32 s17, s52                                         // 00000000E7AC: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000E7B0: 80111132
	s_cmp_lg_u32 s52, s17                                      // 00000000E7B4: BF071134
	s_cbranch_scc1 236                                         // 00000000E7B8: BF8500EC <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x436c>
	s_add_u32 s2, s2, s13                                      // 00000000E7BC: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000E7C0: BF093102
	s_cbranch_scc1 211                                         // 00000000E7C4: BF8500D3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4314>
	s_lshl_b32 s17, s2, 5                                      // 00000000E7C8: 8E118502
	s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0          // 00000000E7CC: C00E4D17 22000000
	s_mov_b32 s77, 0                                           // 00000000E7D4: BECD0080
	s_mov_b64 s[18:19], -1                                     // 00000000E7D8: BE9201C1
	s_branch 229                                               // 00000000E7DC: BF8200E5 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4374>
	s_cmp_ge_u32 s78, s79                                      // 00000000E7E0: BF094F4E
	s_cbranch_scc1 111                                         // 00000000E7E4: BF85006F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x41a4>
	s_waitcnt vmcnt(0)                                         // 00000000E7E8: BF8C0F70
	s_barrier                                                  // 00000000E7EC: BF8A0000
	s_add_u32 s17, s98, s81                                    // 00000000E7F0: 80115162
	s_and_b32 s24, s17, 3                                      // 00000000E7F4: 86188311
	s_cmp_lg_u32 s77, 0                                        // 00000000E7F8: BF07804D
	s_cbranch_scc1 4                                           // 00000000E7FC: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4010>
	s_not_b32 s17, s52                                         // 00000000E800: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000E804: 80111132
	s_cmp_lg_u32 s52, s17                                      // 00000000E808: BF071134
	s_cbranch_scc1 338                                         // 00000000E80C: BF850152 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4558>
	s_add_u32 s2, s2, s13                                      // 00000000E810: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000E814: BF093102
	s_cbranch_scc1 196                                         // 00000000E818: BF8500C4 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x432c>
	s_lshl_b32 s17, s2, 5                                      // 00000000E81C: 8E118502
	s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0          // 00000000E820: C00E4D17 22000000
	s_mov_b32 s77, 0                                           // 00000000E828: BECD0080
	s_mov_b64 s[18:19], -1                                     // 00000000E82C: BE9201C1
	s_branch 331                                               // 00000000E830: BF82014B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4560>
	s_setprio 0                                                // 00000000E834: BF8F0000
	v_exp_f32_e32 v80, v80                                     // 00000000E838: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000E83C: 7EA24151
	v_exp_f32_e32 v64, v64                                     // 00000000E840: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000E844: 7E824141
	v_exp_f32_e32 v84, v84                                     // 00000000E848: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000E84C: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000E850: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000E854: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000E858: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000E85C: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000E860: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000E864: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000E868: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000E86C: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000E870: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000E874: 7E9A414D
	v_mov_b32_e32 v96, 0                                       // 00000000E878: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000E87C: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000E880: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000E884: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000E888: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000E88C: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000E890: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000E894: 7ECE0280
	v_exp_f32_e32 v82, v82                                     // 00000000E898: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000E89C: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000E8A0: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000E8A4: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000E8A8: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000E8AC: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000E8B0: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000E8B4: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000E8B8: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000E8BC: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000E8C0: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000E8C4: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000E8C8: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000E8CC: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000E8D0: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000E8D4: 7E9E414F
	v_cvt_pk_fp8_f32 v96, v80, v81                             // 00000000E8D8: D2A20060 0002A350
	v_cvt_pk_fp8_f32 v100, v64, v65                            // 00000000E8E0: D2A20064 00028340
	v_cvt_pk_fp8_f32 v97, v84, v85                             // 00000000E8E8: D2A20061 0002AB54
	v_cvt_pk_fp8_f32 v101, v68, v69                            // 00000000E8F0: D2A20065 00028B44
	v_cvt_pk_fp8_f32 v98, v88, v89                             // 00000000E8F8: D2A20062 0002B358
	v_cvt_pk_fp8_f32 v102, v72, v73                            // 00000000E900: D2A20066 00029348
	v_cvt_pk_fp8_f32 v99, v92, v93                             // 00000000E908: D2A20063 0002BB5C
	v_cvt_pk_fp8_f32 v103, v76, v77                            // 00000000E910: D2A20067 00029B4C
	v_cvt_pk_fp8_f32 v96, v82, v83 op_sel:[0,0,1]              // 00000000E918: D2A24060 0002A752
	v_cvt_pk_fp8_f32 v100, v66, v67 op_sel:[0,0,1]             // 00000000E920: D2A24064 00028742
	v_cvt_pk_fp8_f32 v97, v86, v87 op_sel:[0,0,1]              // 00000000E928: D2A24061 0002AF56
	v_cvt_pk_fp8_f32 v101, v70, v71 op_sel:[0,0,1]             // 00000000E930: D2A24065 00028F46
	v_cvt_pk_fp8_f32 v98, v90, v91 op_sel:[0,0,1]              // 00000000E938: D2A24062 0002B75A
	v_cvt_pk_fp8_f32 v102, v74, v75 op_sel:[0,0,1]             // 00000000E940: D2A24066 0002974A
	v_cvt_pk_fp8_f32 v99, v94, v95 op_sel:[0,0,1]              // 00000000E948: D2A24063 0002BF5E
	v_cvt_pk_fp8_f32 v103, v78, v79 op_sel:[0,0,1]             // 00000000E950: D2A24067 00029F4E
	s_waitcnt vmcnt(0)                                         // 00000000E958: BF8C0F70
	s_barrier                                                  // 00000000E95C: BF8A0000
	s_add_u32 s17, s98, s81                                    // 00000000E960: 80115162
	s_and_b32 s24, s17, 3                                      // 00000000E964: 86188311
	s_cmp_lg_u32 s77, 0                                        // 00000000E968: BF07804D
	s_cbranch_scc1 4                                           // 00000000E96C: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4180>
	s_not_b32 s17, s52                                         // 00000000E970: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000E974: 80111132
	s_cmp_lg_u32 s52, s17                                      // 00000000E978: BF071134
	s_cbranch_scc1 369                                         // 00000000E97C: BF850171 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4744>
	s_add_u32 s2, s2, s13                                      // 00000000E980: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000E984: BF093102
	s_mov_b32 s77, 0                                           // 00000000E988: BECD0080
	s_cbranch_scc1 109                                         // 00000000E98C: BF85006D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4344>
	s_lshl_b32 s17, s2, 5                                      // 00000000E990: 8E118502
	s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0          // 00000000E994: C00E4D17 22000000
	s_mov_b64 s[18:19], -1                                     // 00000000E99C: BE9201C1
	s_branch 362                                               // 00000000E9A0: BF82016A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x474c>
	s_setprio 0                                                // 00000000E9A4: BF8F0000
	v_exp_f32_e32 v80, v80                                     // 00000000E9A8: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000E9AC: 7EA24151
	v_exp_f32_e32 v64, v64                                     // 00000000E9B0: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000E9B4: 7E824141
	v_exp_f32_e32 v84, v84                                     // 00000000E9B8: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000E9BC: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000E9C0: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000E9C4: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000E9C8: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000E9CC: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000E9D0: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000E9D4: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000E9D8: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000E9DC: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000E9E0: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000E9E4: 7E9A414D
	v_mov_b32_e32 v96, 0                                       // 00000000E9E8: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000E9EC: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000E9F0: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000E9F4: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000E9F8: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000E9FC: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000EA00: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000EA04: 7ECE0280
	v_exp_f32_e32 v82, v82                                     // 00000000EA08: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000EA0C: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000EA10: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000EA14: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000EA18: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000EA1C: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000EA20: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000EA24: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000EA28: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000EA2C: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000EA30: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000EA34: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000EA38: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000EA3C: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000EA40: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000EA44: 7E9E414F
	v_cvt_pk_fp8_f32 v96, v80, v81                             // 00000000EA48: D2A20060 0002A350
	v_cvt_pk_fp8_f32 v100, v64, v65                            // 00000000EA50: D2A20064 00028340
	v_cvt_pk_fp8_f32 v97, v84, v85                             // 00000000EA58: D2A20061 0002AB54
	v_cvt_pk_fp8_f32 v101, v68, v69                            // 00000000EA60: D2A20065 00028B44
	v_cvt_pk_fp8_f32 v98, v88, v89                             // 00000000EA68: D2A20062 0002B358
	v_cvt_pk_fp8_f32 v102, v72, v73                            // 00000000EA70: D2A20066 00029348
	v_cvt_pk_fp8_f32 v99, v92, v93                             // 00000000EA78: D2A20063 0002BB5C
	v_cvt_pk_fp8_f32 v103, v76, v77                            // 00000000EA80: D2A20067 00029B4C
	v_cvt_pk_fp8_f32 v96, v82, v83 op_sel:[0,0,1]              // 00000000EA88: D2A24060 0002A752
	v_cvt_pk_fp8_f32 v100, v66, v67 op_sel:[0,0,1]             // 00000000EA90: D2A24064 00028742
	v_cvt_pk_fp8_f32 v97, v86, v87 op_sel:[0,0,1]              // 00000000EA98: D2A24061 0002AF56
	v_cvt_pk_fp8_f32 v101, v70, v71 op_sel:[0,0,1]             // 00000000EAA0: D2A24065 00028F46
	v_cvt_pk_fp8_f32 v98, v90, v91 op_sel:[0,0,1]              // 00000000EAA8: D2A24062 0002B75A
	v_cvt_pk_fp8_f32 v102, v74, v75 op_sel:[0,0,1]             // 00000000EAB0: D2A24066 0002974A
	v_cvt_pk_fp8_f32 v99, v94, v95 op_sel:[0,0,1]              // 00000000EAB8: D2A24063 0002BF5E
	v_cvt_pk_fp8_f32 v103, v78, v79 op_sel:[0,0,1]             // 00000000EAC0: D2A24067 00029F4E
	s_waitcnt vmcnt(0)                                         // 00000000EAC8: BF8C0F70
	s_barrier                                                  // 00000000EACC: BF8A0000
	s_add_u32 s17, s98, s81                                    // 00000000EAD0: 80115162
	s_and_b32 s24, s17, 3                                      // 00000000EAD4: 86188311
	s_cmp_lg_u32 s77, 0                                        // 00000000EAD8: BF07804D
	s_cbranch_scc1 4                                           // 00000000EADC: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x42f0>
	s_not_b32 s17, s52                                         // 00000000EAE0: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000EAE4: 80111132
	s_cmp_lg_u32 s52, s17                                      // 00000000EAE8: BF071134
	s_cbranch_scc1 467                                         // 00000000EAEC: BF8501D3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4a3c>
	s_add_u32 s2, s2, s13                                      // 00000000EAF0: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000EAF4: BF093102
	s_mov_b32 s77, 0                                           // 00000000EAF8: BECD0080
	s_cbranch_scc1 22                                          // 00000000EAFC: BF850016 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4358>
	s_lshl_b32 s17, s2, 5                                      // 00000000EB00: 8E118502
	s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0          // 00000000EB04: C00E4D17 22000000
	s_mov_b64 s[18:19], -1                                     // 00000000EB0C: BE9201C1
	s_branch 460                                               // 00000000EB10: BF8201CC <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4a44>
	s_mov_b32 s77, 0                                           // 00000000EB14: BECD0080
	s_mov_b64 s[20:21], s[10:11]                               // 00000000EB18: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000EB1C: BE92010E
	s_mov_b32 s17, s3                                          // 00000000EB20: BE910003
	s_mov_b32 s22, 0                                           // 00000000EB24: BE960080
	s_branch 446                                               // 00000000EB28: BF8201BE <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4a24>
	s_mov_b32 s77, 0                                           // 00000000EB2C: BECD0080
	s_mov_b64 s[20:21], s[10:11]                               // 00000000EB30: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000EB34: BE92010E
	s_mov_b32 s17, s3                                          // 00000000EB38: BE910003
	s_mov_b32 s22, 0                                           // 00000000EB3C: BE960080
	s_branch 630                                               // 00000000EB40: BF820276 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4d1c>
	s_mov_b64 s[20:21], s[10:11]                               // 00000000EB44: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000EB48: BE92010E
	s_mov_b32 s17, s3                                          // 00000000EB4C: BE910003
	s_mov_b32 s22, 0                                           // 00000000EB50: BE960080
	s_branch 373                                               // 00000000EB54: BF820175 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x492c>
	s_mov_b64 s[20:21], s[10:11]                               // 00000000EB58: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000EB5C: BE92010E
	s_mov_b32 s17, s3                                          // 00000000EB60: BE910003
	s_mov_b32 s22, 0                                           // 00000000EB64: BE960080
	s_branch 558                                               // 00000000EB68: BF82022E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4c24>
	s_mov_b32 s77, 1                                           // 00000000EB6C: BECD0081
	s_mov_b64 s[18:19], 0                                      // 00000000EB70: BE920180
	s_waitcnt lgkmcnt(0)                                       // 00000000EB74: BF8CC07F
	s_mov_b32 s20, s58                                         // 00000000EB78: BE94003A
	s_mov_b32 s21, s16                                         // 00000000EB7C: BE950010
	s_lshl_b64 s[20:21], s[20:21], 7                           // 00000000EB80: 8E948714
	s_add_u32 s60, s38, s56                                    // 00000000EB84: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000EB88: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000EB8C: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000EB90: 82411529
	s_not_b32 s17, s52                                         // 00000000EB94: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000EB98: 80111132
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000EB9C: 86927E12
	s_cselect_b32 s17, s17, s52                                // 00000000EBA0: 85113411
	s_lshl_b32 s18, s17, 5                                     // 00000000EBA4: 8E128511
	s_add_u32 s18, s18, 32                                     // 00000000EBA8: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000EBAC: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000EBB0: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000EBB4: 8F128612
	s_min_u32 s98, s12, s18                                    // 00000000EBB8: 83E2120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000EBBC: 86927E00
	s_cbranch_scc0 60                                          // 00000000EBC0: BF84003C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x44b4>
	s_lshl_b32 s18, s24, 14                                    // 00000000EBC4: 8E128E18
	s_or_b32 s18, s18, s72                                     // 00000000EBC8: 87124812
	s_mov_b32 m0, s18                                          // 00000000EBCC: BEFC0012
	s_mov_b32 s67, s63                                         // 00000000EBD0: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000EBD4: E05D1000 800F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000EBDC: 807CFF12 00001000
	s_lshl_b32 s19, s24, 13                                    // 00000000EBE4: 8E138D18
	buffer_load_dwordx4 v164, s[60:63], s74 offen lds          // 00000000EBE8: E05D1000 4A0F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000EBF0: 877CFF12 00002000
	s_nop 0                                                    // 00000000EBF8: BF800000
	buffer_load_dwordx4 v164, s[60:63], s75 offen lds          // 00000000EBFC: E05D1000 4B0F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000EC04: 807CFF12 00003000
	s_mul_i32 s18, s6, 48                                      // 00000000EC0C: 9212B006
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000EC10: E05D1000 120F00A4
	s_add_u32 s18, s48, s19                                    // 00000000EC18: 80121330
	s_add_u32 m0, s18, s72                                     // 00000000EC1C: 807C4812
	s_nop 0                                                    // 00000000EC20: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000EC24: E05D1000 801000A6
	s_add_u32 s18, s48, s19                                    // 00000000EC2C: 80121330
	s_add_u32 s18, s18, s72                                    // 00000000EC30: 80124812
	s_add_u32 m0, s18, 0x1000                                  // 00000000EC34: 807CFF12 00001000
	s_cmp_lt_u32 s98, 2                                        // 00000000EC3C: BF0A8262
	buffer_load_dwordx4 v166, s[64:67], s76 offen lds          // 00000000EC40: E05D1000 4C1000A6
	s_cbranch_scc1 26                                          // 00000000EC48: BF85001A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x44b4>
	s_add_u32 s18, s24, 1                                      // 00000000EC4C: 80128118
	s_and_b32 s18, s18, 3                                      // 00000000EC50: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000EC54: 8E128E12
	s_or_b32 s18, s18, s72                                     // 00000000EC58: 87124812
	s_mov_b32 m0, s18                                          // 00000000EC5C: BEFC0012
	s_mul_i32 s19, s6, 0x50                                    // 00000000EC60: 9213FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000EC68: E05D1000 090F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000EC70: 807CFF12 00001000
	s_nop 0                                                    // 00000000EC78: BF800000
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000EC7C: E05D1000 130F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000EC84: 877CFF12 00002000
	s_mul_i32 s19, s6, 0x60                                    // 00000000EC8C: 9213FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000EC94: E05D1000 130F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000EC9C: 807CFF12 00003000
	s_mul_i32 s18, s6, 0x70                                    // 00000000ECA4: 9212FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000ECAC: E05D1000 120F00A4
	s_mov_b32 s18, s59                                         // 00000000ECB4: BE92003B
	s_mov_b32 s19, s16                                         // 00000000ECB8: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000ECBC: 8E928812
	s_add_u32 s22, s36, s54                                    // 00000000ECC0: 80163624
	s_addc_u32 s23, s37, s55                                   // 00000000ECC4: 82173725
	s_add_u32 s20, s42, s18                                    // 00000000ECC8: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000ECCC: 8215132B
	s_add_u32 s18, s33, s53                                    // 00000000ECD0: 80123521
	s_lshl_b32 s18, s18, 2                                     // 00000000ECD4: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000ECD8: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000ECDC: 821A802D
	s_mul_i32 s17, s17, s51                                    // 00000000ECE0: 92113311
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000ECE4: 8692227E
	s_cselect_b32 s19, 0, s26                                  // 00000000ECE8: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000ECEC: 85121980
	s_add_u32 s25, s17, s73                                    // 00000000ECF0: 80194911
	s_lshl_b32 s17, s25, 5                                     // 00000000ECF4: 8E118519
	v_or_b32_e32 v64, s17, v146                                // 00000000ECF8: 28812411
	s_bfe_u32 s78, s25, 0x1a0001                               // 00000000ECFC: 92CEFF19 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000ED04: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000ED0C: 688081A7
	global_load_dwordx4 v[182:185], v64, s[22:23]              // 00000000ED10: DC5C8000 B6160040
	global_load_dwordx4 v[186:189], v64, s[22:23] offset:16    // 00000000ED18: DC5C8010 BA160040
	global_load_dwordx4 v[190:193], v64, s[22:23] offset:64    // 00000000ED20: DC5C8040 BE160040
	global_load_dwordx4 v[194:197], v64, s[22:23] offset:80    // 00000000ED28: DC5C8050 C2160040
	global_load_dwordx4 v[198:201], v64, s[22:23] offset:128   // 00000000ED30: DC5C8080 C6160040
	global_load_dwordx4 v[202:205], v64, s[22:23] offset:144   // 00000000ED38: DC5C8090 CA160040
	s_mov_b32 s67, 0x110000                                    // 00000000ED40: BEC300FF 00110000
	s_mov_b32 s22, 1                                           // 00000000ED48: BE960081
	s_mov_b32 s80, 0x110000                                    // 00000000ED4C: BED000FF 00110000
	s_branch 307                                               // 00000000ED54: BF820133 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4a24>
	s_mov_b32 s77, 1                                           // 00000000ED58: BECD0081
	s_mov_b64 s[18:19], 0                                      // 00000000ED5C: BE920180
	s_waitcnt lgkmcnt(0)                                       // 00000000ED60: BF8CC07F
	s_mov_b32 s20, s58                                         // 00000000ED64: BE94003A
	s_mov_b32 s21, s16                                         // 00000000ED68: BE950010
	s_lshl_b64 s[20:21], s[20:21], 7                           // 00000000ED6C: 8E948714
	s_add_u32 s60, s38, s56                                    // 00000000ED70: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000ED74: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000ED78: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000ED7C: 82411529
	s_not_b32 s17, s52                                         // 00000000ED80: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000ED84: 80111132
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000ED88: 86927E12
	s_cselect_b32 s17, s17, s52                                // 00000000ED8C: 85113411
	s_lshl_b32 s18, s17, 5                                     // 00000000ED90: 8E128511
	s_add_u32 s18, s18, 32                                     // 00000000ED94: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000ED98: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000ED9C: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000EDA0: 8F128612
	s_min_u32 s98, s12, s18                                    // 00000000EDA4: 83E2120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000EDA8: 86927E00
	s_cbranch_scc0 60                                          // 00000000EDAC: BF84003C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x46a0>
	s_lshl_b32 s18, s24, 14                                    // 00000000EDB0: 8E128E18
	s_or_b32 s18, s18, s72                                     // 00000000EDB4: 87124812
	s_mov_b32 m0, s18                                          // 00000000EDB8: BEFC0012
	s_mov_b32 s67, s63                                         // 00000000EDBC: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000EDC0: E05D1000 800F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000EDC8: 807CFF12 00001000
	s_lshl_b32 s19, s24, 13                                    // 00000000EDD0: 8E138D18
	buffer_load_dwordx4 v164, s[60:63], s74 offen lds          // 00000000EDD4: E05D1000 4A0F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000EDDC: 877CFF12 00002000
	s_nop 0                                                    // 00000000EDE4: BF800000
	buffer_load_dwordx4 v164, s[60:63], s75 offen lds          // 00000000EDE8: E05D1000 4B0F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000EDF0: 807CFF12 00003000
	s_mul_i32 s18, s6, 48                                      // 00000000EDF8: 9212B006
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000EDFC: E05D1000 120F00A4
	s_add_u32 s18, s48, s19                                    // 00000000EE04: 80121330
	s_add_u32 m0, s18, s72                                     // 00000000EE08: 807C4812
	s_nop 0                                                    // 00000000EE0C: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000EE10: E05D1000 801000A6
	s_add_u32 s18, s48, s19                                    // 00000000EE18: 80121330
	s_add_u32 s18, s18, s72                                    // 00000000EE1C: 80124812
	s_add_u32 m0, s18, 0x1000                                  // 00000000EE20: 807CFF12 00001000
	s_cmp_lt_u32 s98, 2                                        // 00000000EE28: BF0A8262
	buffer_load_dwordx4 v166, s[64:67], s76 offen lds          // 00000000EE2C: E05D1000 4C1000A6
	s_cbranch_scc1 26                                          // 00000000EE34: BF85001A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x46a0>
	s_add_u32 s18, s24, 1                                      // 00000000EE38: 80128118
	s_and_b32 s18, s18, 3                                      // 00000000EE3C: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000EE40: 8E128E12
	s_or_b32 s18, s18, s72                                     // 00000000EE44: 87124812
	s_mov_b32 m0, s18                                          // 00000000EE48: BEFC0012
	s_mul_i32 s19, s6, 0x50                                    // 00000000EE4C: 9213FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000EE54: E05D1000 090F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000EE5C: 807CFF12 00001000
	s_nop 0                                                    // 00000000EE64: BF800000
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000EE68: E05D1000 130F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000EE70: 877CFF12 00002000
	s_mul_i32 s19, s6, 0x60                                    // 00000000EE78: 9213FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000EE80: E05D1000 130F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000EE88: 807CFF12 00003000
	s_mul_i32 s18, s6, 0x70                                    // 00000000EE90: 9212FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000EE98: E05D1000 120F00A4
	s_mov_b32 s18, s59                                         // 00000000EEA0: BE92003B
	s_mov_b32 s19, s16                                         // 00000000EEA4: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000EEA8: 8E928812
	s_add_u32 s22, s36, s54                                    // 00000000EEAC: 80163624
	s_addc_u32 s23, s37, s55                                   // 00000000EEB0: 82173725
	s_add_u32 s20, s42, s18                                    // 00000000EEB4: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000EEB8: 8215132B
	s_add_u32 s18, s33, s53                                    // 00000000EEBC: 80123521
	s_lshl_b32 s18, s18, 2                                     // 00000000EEC0: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000EEC4: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000EEC8: 821A802D
	s_mul_i32 s17, s17, s51                                    // 00000000EECC: 92113311
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000EED0: 8692227E
	s_cselect_b32 s19, 0, s26                                  // 00000000EED4: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000EED8: 85121980
	s_add_u32 s25, s17, s73                                    // 00000000EEDC: 80194911
	s_lshl_b32 s17, s25, 5                                     // 00000000EEE0: 8E118519
	v_or_b32_e32 v64, s17, v146                                // 00000000EEE4: 28812411
	s_bfe_u32 s78, s25, 0x1a0001                               // 00000000EEE8: 92CEFF19 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000EEF0: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000EEF8: 688081A7
	global_load_dwordx4 v[182:185], v64, s[22:23]              // 00000000EEFC: DC5C8000 B6160040
	global_load_dwordx4 v[186:189], v64, s[22:23] offset:16    // 00000000EF04: DC5C8010 BA160040
	global_load_dwordx4 v[190:193], v64, s[22:23] offset:64    // 00000000EF0C: DC5C8040 BE160040
	global_load_dwordx4 v[194:197], v64, s[22:23] offset:80    // 00000000EF14: DC5C8050 C2160040
	global_load_dwordx4 v[198:201], v64, s[22:23] offset:128   // 00000000EF1C: DC5C8080 C6160040
	global_load_dwordx4 v[202:205], v64, s[22:23] offset:144   // 00000000EF24: DC5C8090 CA160040
	s_mov_b32 s67, 0x110000                                    // 00000000EF2C: BEC300FF 00110000
	s_mov_b32 s22, 1                                           // 00000000EF34: BE960081
	s_mov_b32 s80, 0x110000                                    // 00000000EF38: BED000FF 00110000
	s_branch 374                                               // 00000000EF40: BF820176 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4d1c>
	s_mov_b32 s77, 1                                           // 00000000EF44: BECD0081
	s_mov_b64 s[18:19], 0                                      // 00000000EF48: BE920180
	s_waitcnt lgkmcnt(0)                                       // 00000000EF4C: BF8CC07F
	s_mov_b32 s20, s58                                         // 00000000EF50: BE94003A
	s_mov_b32 s21, s16                                         // 00000000EF54: BE950010
	s_lshl_b64 s[20:21], s[20:21], 7                           // 00000000EF58: 8E948714
	s_add_u32 s60, s38, s56                                    // 00000000EF5C: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000EF60: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000EF64: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000EF68: 82411529
	s_not_b32 s17, s52                                         // 00000000EF6C: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000EF70: 80111132
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000EF74: 86927E12
	s_cselect_b32 s17, s17, s52                                // 00000000EF78: 85113411
	s_lshl_b32 s18, s17, 5                                     // 00000000EF7C: 8E128511
	s_add_u32 s18, s18, 32                                     // 00000000EF80: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000EF84: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000EF88: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000EF8C: 8F128612
	s_min_u32 s98, s12, s18                                    // 00000000EF90: 83E2120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000EF94: 86927E00
	s_cbranch_scc0 60                                          // 00000000EF98: BF84003C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x488c>
	s_lshl_b32 s18, s24, 14                                    // 00000000EF9C: 8E128E18
	s_or_b32 s18, s18, s72                                     // 00000000EFA0: 87124812
	s_mov_b32 m0, s18                                          // 00000000EFA4: BEFC0012
	s_mov_b32 s67, s63                                         // 00000000EFA8: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000EFAC: E05D1000 800F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000EFB4: 807CFF12 00001000
	s_lshl_b32 s19, s24, 13                                    // 00000000EFBC: 8E138D18
	buffer_load_dwordx4 v164, s[60:63], s74 offen lds          // 00000000EFC0: E05D1000 4A0F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000EFC8: 877CFF12 00002000
	s_nop 0                                                    // 00000000EFD0: BF800000
	buffer_load_dwordx4 v164, s[60:63], s75 offen lds          // 00000000EFD4: E05D1000 4B0F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000EFDC: 807CFF12 00003000
	s_mul_i32 s18, s6, 48                                      // 00000000EFE4: 9212B006
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000EFE8: E05D1000 120F00A4
	s_add_u32 s18, s48, s19                                    // 00000000EFF0: 80121330
	s_add_u32 m0, s18, s72                                     // 00000000EFF4: 807C4812
	s_nop 0                                                    // 00000000EFF8: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000EFFC: E05D1000 801000A6
	s_add_u32 s18, s48, s19                                    // 00000000F004: 80121330
	s_add_u32 s18, s18, s72                                    // 00000000F008: 80124812
	s_add_u32 m0, s18, 0x1000                                  // 00000000F00C: 807CFF12 00001000
	s_cmp_lt_u32 s98, 2                                        // 00000000F014: BF0A8262
	buffer_load_dwordx4 v166, s[64:67], s76 offen lds          // 00000000F018: E05D1000 4C1000A6
	s_cbranch_scc1 26                                          // 00000000F020: BF85001A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x488c>
	s_add_u32 s18, s24, 1                                      // 00000000F024: 80128118
	s_and_b32 s18, s18, 3                                      // 00000000F028: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000F02C: 8E128E12
	s_or_b32 s18, s18, s72                                     // 00000000F030: 87124812
	s_mov_b32 m0, s18                                          // 00000000F034: BEFC0012
	s_mul_i32 s19, s6, 0x50                                    // 00000000F038: 9213FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000F040: E05D1000 090F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000F048: 807CFF12 00001000
	s_nop 0                                                    // 00000000F050: BF800000
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F054: E05D1000 130F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000F05C: 877CFF12 00002000
	s_mul_i32 s19, s6, 0x60                                    // 00000000F064: 9213FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F06C: E05D1000 130F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000F074: 807CFF12 00003000
	s_mul_i32 s18, s6, 0x70                                    // 00000000F07C: 9212FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F084: E05D1000 120F00A4
	s_mov_b32 s18, s59                                         // 00000000F08C: BE92003B
	s_mov_b32 s19, s16                                         // 00000000F090: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000F094: 8E928812
	s_add_u32 s22, s36, s54                                    // 00000000F098: 80163624
	s_addc_u32 s23, s37, s55                                   // 00000000F09C: 82173725
	s_add_u32 s20, s42, s18                                    // 00000000F0A0: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000F0A4: 8215132B
	s_add_u32 s18, s33, s53                                    // 00000000F0A8: 80123521
	s_lshl_b32 s18, s18, 2                                     // 00000000F0AC: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000F0B0: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000F0B4: 821A802D
	s_mul_i32 s17, s17, s51                                    // 00000000F0B8: 92113311
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000F0BC: 8692227E
	s_cselect_b32 s19, 0, s26                                  // 00000000F0C0: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000F0C4: 85121980
	s_add_u32 s25, s17, s73                                    // 00000000F0C8: 80194911
	s_lshl_b32 s17, s25, 5                                     // 00000000F0CC: 8E118519
	v_or_b32_e32 v64, s17, v146                                // 00000000F0D0: 28812411
	s_bfe_u32 s78, s25, 0x1a0001                               // 00000000F0D4: 92CEFF19 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000F0DC: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000F0E4: 688081A7
	global_load_dwordx4 v[182:185], v64, s[22:23]              // 00000000F0E8: DC5C8000 B6160040
	global_load_dwordx4 v[186:189], v64, s[22:23] offset:16    // 00000000F0F0: DC5C8010 BA160040
	global_load_dwordx4 v[190:193], v64, s[22:23] offset:64    // 00000000F0F8: DC5C8040 BE160040
	global_load_dwordx4 v[194:197], v64, s[22:23] offset:80    // 00000000F100: DC5C8050 C2160040
	global_load_dwordx4 v[198:201], v64, s[22:23] offset:128   // 00000000F108: DC5C8080 C6160040
	global_load_dwordx4 v[202:205], v64, s[22:23] offset:144   // 00000000F110: DC5C8090 CA160040
	s_mov_b32 s67, 0x110000                                    // 00000000F118: BEC300FF 00110000
	s_mov_b32 s22, 1                                           // 00000000F120: BE960081
	s_mov_b32 s80, 0x110000                                    // 00000000F124: BED000FF 00110000
	s_add_u32 s23, s79, s81                                    // 00000000F12C: 8017514F
	s_and_b32 s23, s23, 3                                      // 00000000F130: 86178317
	s_setprio 1                                                // 00000000F134: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[96:103], 0// 00000000F138: D3AD0040 0202C17E
	s_nop 11                                                   // 00000000F140: BF80000B
	v_lshl_add_u32 v65, s23, 13, v172                          // 00000000F144: D1FD0041 06B11A17
	s_waitcnt vmcnt(6)                                         // 00000000F14C: BF8C0F76
	ds_read_b64_tr_b8 v[68:69], v65                            // 00000000F150: D9C40000 44000041
	ds_read_b64_tr_b8 v[70:71], v65 offset:1024                // 00000000F158: D9C40400 46000041
	ds_read_b64_tr_b8 v[72:73], v65 offset:2048                // 00000000F160: D9C40800 48000041
	ds_read_b64_tr_b8 v[74:75], v65 offset:3072                // 00000000F168: D9C40C00 4A000041
	ds_read_b64_tr_b8 v[76:77], v65 offset:256                 // 00000000F170: D9C40100 4C000041
	ds_read_b64_tr_b8 v[78:79], v65 offset:1280                // 00000000F178: D9C40500 4E000041
	ds_read_b64_tr_b8 v[80:81], v65 offset:2304                // 00000000F180: D9C40900 50000041
	ds_read_b64_tr_b8 v[82:83], v65 offset:3328                // 00000000F188: D9C40D00 52000041
	ds_read_b64_tr_b8 v[84:85], v65 offset:512                 // 00000000F190: D9C40200 54000041
	ds_read_b64_tr_b8 v[86:87], v65 offset:1536                // 00000000F198: D9C40600 56000041
	ds_read_b64_tr_b8 v[88:89], v65 offset:2560                // 00000000F1A0: D9C40A00 58000041
	ds_read_b64_tr_b8 v[90:91], v65 offset:3584                // 00000000F1A8: D9C40E00 5A000041
	v_lshlrev_b32_e32 v66, 23, v179                            // 00000000F1B0: 24856697
	v_fma_f32 v178, v64, v66, v178                             // 00000000F1B4: D1CB00B2 06CA8540
	s_waitcnt lgkmcnt(4)                                       // 00000000F1BC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[68:75], v[96:103], v[48:63], v170, v179 op_sel_hi:[0,0,0]// 00000000F1C0: D3AC0000 000367AA D3AE0830 04C2C144
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[76:83], v[96:103], v[32:47], v170, v179 op_sel_hi:[0,0,0]// 00000000F1D0: D3AC0000 000367AA D3AE0820 0482C14C
	ds_read_b64_tr_b8 v[66:67], v65 offset:768                 // 00000000F1E0: D9C40300 42000041
	ds_read_b64_tr_b8 v[68:69], v65 offset:1792                // 00000000F1E8: D9C40700 44000041
	ds_read_b64_tr_b8 v[70:71], v65 offset:2816                // 00000000F1F0: D9C40B00 46000041
	ds_read_b64_tr_b8 v[72:73], v65 offset:3840                // 00000000F1F8: D9C40F00 48000041
	s_waitcnt lgkmcnt(0)                                       // 00000000F200: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[84:91], v[96:103], v[16:31], v170, v179 op_sel_hi:[0,0,0]// 00000000F204: D3AC0000 000367AA D3AE0810 0442C154
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[66:73], v[96:103], v[0:15], v170, v179 op_sel_hi:[0,0,0]// 00000000F214: D3AC0000 000367AA D3AE0800 0402C142
	s_waitcnt vmcnt(6)                                         // 00000000F224: BF8C0F76
	s_barrier                                                  // 00000000F228: BF8A0000
	s_mov_b32 s81, s24                                         // 00000000F22C: BED10018
	s_cmp_eq_u32 s22, 0                                        // 00000000F230: BF068016
	s_cbranch_scc0 190                                         // 00000000F234: BF8400BE <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4d30>
	s_branch 442                                               // 00000000F238: BF8201BA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5124>
	s_mov_b32 s77, 1                                           // 00000000F23C: BECD0081
	s_mov_b64 s[18:19], 0                                      // 00000000F240: BE920180
	s_waitcnt lgkmcnt(0)                                       // 00000000F244: BF8CC07F
	s_mov_b32 s20, s58                                         // 00000000F248: BE94003A
	s_mov_b32 s21, s16                                         // 00000000F24C: BE950010
	s_lshl_b64 s[20:21], s[20:21], 7                           // 00000000F250: 8E948714
	s_add_u32 s60, s38, s56                                    // 00000000F254: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000F258: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000F25C: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000F260: 82411529
	s_not_b32 s17, s52                                         // 00000000F264: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000F268: 80111132
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000F26C: 86927E12
	s_cselect_b32 s17, s17, s52                                // 00000000F270: 85113411
	s_lshl_b32 s18, s17, 5                                     // 00000000F274: 8E128511
	s_add_u32 s18, s18, 32                                     // 00000000F278: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000F27C: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000F280: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000F284: 8F128612
	s_min_u32 s98, s12, s18                                    // 00000000F288: 83E2120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000F28C: 86927E00
	s_cbranch_scc0 60                                          // 00000000F290: BF84003C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4b84>
	s_lshl_b32 s18, s24, 14                                    // 00000000F294: 8E128E18
	s_or_b32 s18, s18, s72                                     // 00000000F298: 87124812
	s_mov_b32 m0, s18                                          // 00000000F29C: BEFC0012
	s_mov_b32 s67, s63                                         // 00000000F2A0: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000F2A4: E05D1000 800F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000F2AC: 807CFF12 00001000
	s_lshl_b32 s19, s24, 13                                    // 00000000F2B4: 8E138D18
	buffer_load_dwordx4 v164, s[60:63], s74 offen lds          // 00000000F2B8: E05D1000 4A0F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000F2C0: 877CFF12 00002000
	s_nop 0                                                    // 00000000F2C8: BF800000
	buffer_load_dwordx4 v164, s[60:63], s75 offen lds          // 00000000F2CC: E05D1000 4B0F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000F2D4: 807CFF12 00003000
	s_mul_i32 s18, s6, 48                                      // 00000000F2DC: 9212B006
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F2E0: E05D1000 120F00A4
	s_add_u32 s18, s48, s19                                    // 00000000F2E8: 80121330
	s_add_u32 m0, s18, s72                                     // 00000000F2EC: 807C4812
	s_nop 0                                                    // 00000000F2F0: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000F2F4: E05D1000 801000A6
	s_add_u32 s18, s48, s19                                    // 00000000F2FC: 80121330
	s_add_u32 s18, s18, s72                                    // 00000000F300: 80124812
	s_add_u32 m0, s18, 0x1000                                  // 00000000F304: 807CFF12 00001000
	s_cmp_lt_u32 s98, 2                                        // 00000000F30C: BF0A8262
	buffer_load_dwordx4 v166, s[64:67], s76 offen lds          // 00000000F310: E05D1000 4C1000A6
	s_cbranch_scc1 26                                          // 00000000F318: BF85001A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4b84>
	s_add_u32 s18, s24, 1                                      // 00000000F31C: 80128118
	s_and_b32 s18, s18, 3                                      // 00000000F320: 86128312
	s_lshl_b32 s18, s18, 14                                    // 00000000F324: 8E128E12
	s_or_b32 s18, s18, s72                                     // 00000000F328: 87124812
	s_mov_b32 m0, s18                                          // 00000000F32C: BEFC0012
	s_mul_i32 s19, s6, 0x50                                    // 00000000F330: 9213FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000F338: E05D1000 090F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000F340: 807CFF12 00001000
	s_nop 0                                                    // 00000000F348: BF800000
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F34C: E05D1000 130F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000F354: 877CFF12 00002000
	s_mul_i32 s19, s6, 0x60                                    // 00000000F35C: 9213FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F364: E05D1000 130F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000F36C: 807CFF12 00003000
	s_mul_i32 s18, s6, 0x70                                    // 00000000F374: 9212FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F37C: E05D1000 120F00A4
	s_mov_b32 s18, s59                                         // 00000000F384: BE92003B
	s_mov_b32 s19, s16                                         // 00000000F388: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000F38C: 8E928812
	s_add_u32 s22, s36, s54                                    // 00000000F390: 80163624
	s_addc_u32 s23, s37, s55                                   // 00000000F394: 82173725
	s_add_u32 s20, s42, s18                                    // 00000000F398: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000F39C: 8215132B
	s_add_u32 s18, s33, s53                                    // 00000000F3A0: 80123521
	s_lshl_b32 s18, s18, 2                                     // 00000000F3A4: 8E128212
	s_add_u32 s25, s44, s18                                    // 00000000F3A8: 8019122C
	s_addc_u32 s26, s45, 0                                     // 00000000F3AC: 821A802D
	s_mul_i32 s17, s17, s51                                    // 00000000F3B0: 92113311
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000F3B4: 8692227E
	s_cselect_b32 s19, 0, s26                                  // 00000000F3B8: 85131A80
	s_cselect_b32 s18, 0, s25                                  // 00000000F3BC: 85121980
	s_add_u32 s25, s17, s73                                    // 00000000F3C0: 80194911
	s_lshl_b32 s17, s25, 5                                     // 00000000F3C4: 8E118519
	v_or_b32_e32 v64, s17, v146                                // 00000000F3C8: 28812411
	s_bfe_u32 s78, s25, 0x1a0001                               // 00000000F3CC: 92CEFF19 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000F3D4: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000F3DC: 688081A7
	global_load_dwordx4 v[182:185], v64, s[22:23]              // 00000000F3E0: DC5C8000 B6160040
	global_load_dwordx4 v[186:189], v64, s[22:23] offset:16    // 00000000F3E8: DC5C8010 BA160040
	global_load_dwordx4 v[190:193], v64, s[22:23] offset:64    // 00000000F3F0: DC5C8040 BE160040
	global_load_dwordx4 v[194:197], v64, s[22:23] offset:80    // 00000000F3F8: DC5C8050 C2160040
	global_load_dwordx4 v[198:201], v64, s[22:23] offset:128   // 00000000F400: DC5C8080 C6160040
	global_load_dwordx4 v[202:205], v64, s[22:23] offset:144   // 00000000F408: DC5C8090 CA160040
	s_mov_b32 s67, 0x110000                                    // 00000000F410: BEC300FF 00110000
	s_mov_b32 s22, 1                                           // 00000000F418: BE960081
	s_mov_b32 s80, 0x110000                                    // 00000000F41C: BED000FF 00110000
	s_add_u32 s23, s79, s81                                    // 00000000F424: 8017514F
	s_and_b32 s23, s23, 3                                      // 00000000F428: 86178317
	s_setprio 1                                                // 00000000F42C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[96:103], 0// 00000000F430: D3AD0040 0202C17E
	s_nop 11                                                   // 00000000F438: BF80000B
	v_lshl_add_u32 v65, s23, 13, v172                          // 00000000F43C: D1FD0041 06B11A17
	s_waitcnt vmcnt(6)                                         // 00000000F444: BF8C0F76
	ds_read_b64_tr_b8 v[68:69], v65                            // 00000000F448: D9C40000 44000041
	ds_read_b64_tr_b8 v[70:71], v65 offset:1024                // 00000000F450: D9C40400 46000041
	ds_read_b64_tr_b8 v[72:73], v65 offset:2048                // 00000000F458: D9C40800 48000041
	ds_read_b64_tr_b8 v[74:75], v65 offset:3072                // 00000000F460: D9C40C00 4A000041
	ds_read_b64_tr_b8 v[76:77], v65 offset:256                 // 00000000F468: D9C40100 4C000041
	ds_read_b64_tr_b8 v[78:79], v65 offset:1280                // 00000000F470: D9C40500 4E000041
	ds_read_b64_tr_b8 v[80:81], v65 offset:2304                // 00000000F478: D9C40900 50000041
	ds_read_b64_tr_b8 v[82:83], v65 offset:3328                // 00000000F480: D9C40D00 52000041
	ds_read_b64_tr_b8 v[84:85], v65 offset:512                 // 00000000F488: D9C40200 54000041
	ds_read_b64_tr_b8 v[86:87], v65 offset:1536                // 00000000F490: D9C40600 56000041
	ds_read_b64_tr_b8 v[88:89], v65 offset:2560                // 00000000F498: D9C40A00 58000041
	ds_read_b64_tr_b8 v[90:91], v65 offset:3584                // 00000000F4A0: D9C40E00 5A000041
	v_lshlrev_b32_e32 v66, 23, v179                            // 00000000F4A8: 24856697
	v_fma_f32 v178, v64, v66, v178                             // 00000000F4AC: D1CB00B2 06CA8540
	s_waitcnt lgkmcnt(4)                                       // 00000000F4B4: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[68:75], v[96:103], v[48:63], v170, v179 op_sel_hi:[0,0,0]// 00000000F4B8: D3AC0000 000367AA D3AE0830 04C2C144
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[76:83], v[96:103], v[32:47], v170, v179 op_sel_hi:[0,0,0]// 00000000F4C8: D3AC0000 000367AA D3AE0820 0482C14C
	ds_read_b64_tr_b8 v[66:67], v65 offset:768                 // 00000000F4D8: D9C40300 42000041
	ds_read_b64_tr_b8 v[68:69], v65 offset:1792                // 00000000F4E0: D9C40700 44000041
	ds_read_b64_tr_b8 v[70:71], v65 offset:2816                // 00000000F4E8: D9C40B00 46000041
	ds_read_b64_tr_b8 v[72:73], v65 offset:3840                // 00000000F4F0: D9C40F00 48000041
	s_waitcnt lgkmcnt(0)                                       // 00000000F4F8: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[84:91], v[96:103], v[16:31], v170, v179 op_sel_hi:[0,0,0]// 00000000F4FC: D3AC0000 000367AA D3AE0810 0442C154
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[66:73], v[96:103], v[0:15], v170, v179 op_sel_hi:[0,0,0]// 00000000F50C: D3AC0000 000367AA D3AE0800 0402C142
	s_waitcnt vmcnt(6)                                         // 00000000F51C: BF8C0F76
	s_barrier                                                  // 00000000F520: BF8A0000
	s_mov_b32 s81, s24                                         // 00000000F524: BED10018
	s_cmp_eq_u32 s22, 0                                        // 00000000F528: BF068016
	s_cbranch_scc1 253                                         // 00000000F52C: BF8500FD <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5124>
	s_nop 15                                                   // 00000000F530: BF80000F
	s_nop 3                                                    // 00000000F534: BF800003
	v_rcp_f32_e32 v64, v178                                    // 00000000F538: 7E8045B2
	v_log_f32_e32 v65, v178                                    // 00000000F53C: 7E8243B2
	s_nop 1                                                    // 00000000F540: BF800001
	v_mul_f32_e32 v64, v168, v64                               // 00000000F544: 0A8081A8
	v_mul_f32_e32 v48, v48, v64                                // 00000000F548: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 00000000F54C: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 00000000F550: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 00000000F554: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 00000000F558: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 00000000F55C: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 00000000F560: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 00000000F564: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 00000000F568: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 00000000F56C: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 00000000F570: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 00000000F574: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 00000000F578: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 00000000F57C: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 00000000F580: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 00000000F584: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 00000000F588: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 00000000F58C: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 00000000F590: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 00000000F594: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 00000000F598: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 00000000F59C: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 00000000F5A0: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 00000000F5A4: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 00000000F5A8: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 00000000F5AC: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 00000000F5B0: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 00000000F5B4: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 00000000F5B8: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 00000000F5BC: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 00000000F5C0: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 00000000F5C4: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 00000000F5C8: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 00000000F5CC: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 00000000F5D0: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 00000000F5D4: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 00000000F5D8: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 00000000F5DC: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 00000000F5E0: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 00000000F5E4: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 00000000F5E8: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 00000000F5EC: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 00000000F5F0: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 00000000F5F4: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 00000000F5F8: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 00000000F5FC: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 00000000F600: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 00000000F604: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 00000000F608: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 00000000F60C: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 00000000F610: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 00000000F614: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 00000000F618: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 00000000F61C: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 00000000F620: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 00000000F624: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 00000000F628: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 00000000F62C: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 00000000F630: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 00000000F634: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 00000000F638: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 00000000F63C: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000F640: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000F644: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000F648: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000F650: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000F658: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000F660: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000F668: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000F670: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000F678: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000F680: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000F688: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000F690: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000F698: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000F6A0: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000F6A8: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000F6B0: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000F6B8: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000F6C0: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000F6C8: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000F6D0: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000F6D8: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000F6E0: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000F6E8: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000F6F0: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000F6F8: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000F700: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000F708: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000F710: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000F718: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000F720: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000F728: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000F730: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000F738: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000F740: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000F748: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000F74C: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000F750: 7E000304
	v_mov_b32_e32 v1, v2                                       // 00000000F754: 7E020302
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000F758: 7E10B509
	v_mov_b32_e32 v2, v5                                       // 00000000F75C: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000F760: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000F764: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000F768: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000F76C: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000F770: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000F774: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000F778: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000F77C: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000F780: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000F784: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000F788: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000F78C: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000F790: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000F794: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000F798: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000F79C: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000F7A0: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000F7A4: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000F7A8: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000F7AC: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000F7B0: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000F7B4: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000F7B8: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000F7BC: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000F7C0: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000F7C4: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000F7C8: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000F7CC: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000F7D0: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000F7D4: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000F7D8: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000F7DC: 7E380320
	v_mov_b32_e32 v29, v30                                     // 00000000F7E0: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000F7E4: 7E3C0321
	ds_write_b128 v158, v[0:3]                                 // 00000000F7E8: D9BE0000 0000009E
	ds_write_b128 v160, v[4:7]                                 // 00000000F7F0: D9BE0000 000004A0
	ds_write_b128 v159, v[8:11]                                // 00000000F7F8: D9BE0000 0000089F
	ds_write_b128 v157, v[12:15]                               // 00000000F800: D9BE0000 00000C9D
	ds_write_b128 v156, v[16:19]                               // 00000000F808: D9BE0000 0000109C
	ds_write_b128 v155, v[20:23]                               // 00000000F810: D9BE0000 0000149B
	ds_write_b128 v154, v[24:27]                               // 00000000F818: D9BE0000 0000189A
	ds_write_b128 v153, v[28:31]                               // 00000000F820: D9BE0000 00001C99
	ds_read_b128 v[8:11], v149                                 // 00000000F828: D9FE0000 08000095
	ds_read_b128 v[12:15], v152 offset:1024                    // 00000000F830: D9FE0400 0C000098
	ds_read_b128 v[16:19], v151 offset:2048                    // 00000000F838: D9FE0800 10000097
	ds_read_b128 v[20:23], v150 offset:3072                    // 00000000F840: D9FE0C00 14000096
	ds_read_b128 v[24:27], v149 offset:4096                    // 00000000F848: D9FE1000 18000095
	ds_read_b128 v[28:31], v152 offset:5120                    // 00000000F850: D9FE1400 1C000098
	ds_read_b128 v[32:35], v151 offset:6144                    // 00000000F858: D9FE1800 20000097
	ds_read_b128 v[36:39], v150 offset:7168                    // 00000000F860: D9FE1C00 24000096
	v_add_u32_e32 v0, s3, v147                                 // 00000000F868: 68012603
	v_mul_lo_u32 v0, s8, v0                                    // 00000000F86C: D2850000 00020008
	v_add_u32_e32 v0, v0, v148                                 // 00000000F874: 68012900
	v_add_u32_e32 v1, s4, v0                                   // 00000000F878: 68020004
	v_add_u32_e32 v2, s4, v1                                   // 00000000F87C: 68040204
	v_add_u32_e32 v3, s4, v2                                   // 00000000F880: 68060404
	v_add_u32_e32 v4, s4, v3                                   // 00000000F884: 68080604
	v_add_u32_e32 v5, s4, v4                                   // 00000000F888: 680A0804
	v_add_u32_e32 v6, s4, v5                                   // 00000000F88C: 680C0A04
	v_add_u32_e32 v7, s4, v6                                   // 00000000F890: 680E0C04
	s_waitcnt lgkmcnt(7)                                       // 00000000F894: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[10:11]                 // 00000000F898: DC7C8000 000A0800
	s_waitcnt lgkmcnt(6)                                       // 00000000F8A0: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[10:11]                // 00000000F8A4: DC7C8000 000A0C01
	s_waitcnt lgkmcnt(5)                                       // 00000000F8AC: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[10:11]                // 00000000F8B0: DC7C8000 000A1002
	s_waitcnt lgkmcnt(4)                                       // 00000000F8B8: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[10:11]                // 00000000F8BC: DC7C8000 000A1403
	s_waitcnt lgkmcnt(3)                                       // 00000000F8C4: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[10:11]                // 00000000F8C8: DC7C8000 000A1804
	s_waitcnt lgkmcnt(2)                                       // 00000000F8D0: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[10:11]                // 00000000F8D4: DC7C8000 000A1C05
	s_waitcnt lgkmcnt(1)                                       // 00000000F8DC: BF8CC17F
	global_store_dwordx4 v6, v[32:35], s[10:11]                // 00000000F8E0: DC7C8000 000A2006
	s_waitcnt lgkmcnt(0)                                       // 00000000F8E8: BF8CC07F
	global_store_dwordx4 v7, v[36:39], s[10:11]                // 00000000F8EC: DC7C8000 000A2407
	v_add_f32_e32 v0, v177, v65                                // 00000000F8F4: 020083B1
	v_add_f32_e32 v0, -4.0, v0                                 // 00000000F8F8: 020000F7
	v_add_f32_e32 v0, -2.0, v0                                 // 00000000F8FC: 020000F5
	v_mul_f32_e32 v0, 0x3f317218, v0                           // 00000000F900: 0A0000FF 3F317218
	v_add_u32_e32 v1, s3, v146                                 // 00000000F908: 68032403
	v_lshlrev_b32_e32 v1, 2, v1                                // 00000000F90C: 24020282
	s_cmp_eq_u64 s[14:15], 0                                   // 00000000F910: BF12800E
	s_mov_b64 s[10:11], s[20:21]                               // 00000000F914: BE8A0114
	s_mov_b32 s3, s17                                          // 00000000F918: BE830011
	s_cbranch_scc0 61418                                       // 00000000F91C: BF84EFEA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10c8>
	s_branch 60683                                             // 00000000F920: BF82ED0B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x550>
	s_nop 15                                                   // 00000000F924: BF80000F
	s_nop 3                                                    // 00000000F928: BF800003
	v_rcp_f32_e32 v64, v178                                    // 00000000F92C: 7E8045B2
	v_log_f32_e32 v65, v178                                    // 00000000F930: 7E8243B2
	s_nop 1                                                    // 00000000F934: BF800001
	v_mul_f32_e32 v64, v168, v64                               // 00000000F938: 0A8081A8
	v_mul_f32_e32 v48, v48, v64                                // 00000000F93C: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 00000000F940: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 00000000F944: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 00000000F948: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 00000000F94C: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 00000000F950: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 00000000F954: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 00000000F958: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 00000000F95C: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 00000000F960: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 00000000F964: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 00000000F968: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 00000000F96C: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 00000000F970: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 00000000F974: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 00000000F978: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 00000000F97C: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 00000000F980: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 00000000F984: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 00000000F988: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 00000000F98C: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 00000000F990: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 00000000F994: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 00000000F998: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 00000000F99C: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 00000000F9A0: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 00000000F9A4: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 00000000F9A8: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 00000000F9AC: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 00000000F9B0: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 00000000F9B4: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 00000000F9B8: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 00000000F9BC: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 00000000F9C0: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 00000000F9C4: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 00000000F9C8: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 00000000F9CC: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 00000000F9D0: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 00000000F9D4: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 00000000F9D8: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 00000000F9DC: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 00000000F9E0: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 00000000F9E4: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 00000000F9E8: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 00000000F9EC: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 00000000F9F0: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 00000000F9F4: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 00000000F9F8: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 00000000F9FC: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 00000000FA00: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 00000000FA04: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 00000000FA08: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 00000000FA0C: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 00000000FA10: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 00000000FA14: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 00000000FA18: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 00000000FA1C: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 00000000FA20: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 00000000FA24: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 00000000FA28: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 00000000FA2C: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 00000000FA30: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000FA34: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000FA38: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000FA3C: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000FA44: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000FA4C: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000FA54: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000FA5C: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000FA64: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000FA6C: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000FA74: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000FA7C: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000FA84: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000FA8C: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000FA94: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000FA9C: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000FAA4: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000FAAC: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000FAB4: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000FABC: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000FAC4: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000FACC: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000FAD4: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000FADC: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000FAE4: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000FAEC: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000FAF4: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000FAFC: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000FB04: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000FB0C: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000FB14: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000FB1C: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000FB24: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000FB2C: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000FB34: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000FB3C: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000FB40: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000FB44: 7E000304
	v_mov_b32_e32 v1, v2                                       // 00000000FB48: 7E020302
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000FB4C: 7E10B509
	v_mov_b32_e32 v2, v5                                       // 00000000FB50: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000FB54: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000FB58: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000FB5C: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000FB60: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000FB64: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000FB68: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000FB6C: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000FB70: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000FB74: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000FB78: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000FB7C: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000FB80: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000FB84: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000FB88: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000FB8C: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000FB90: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000FB94: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000FB98: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000FB9C: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000FBA0: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000FBA4: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000FBA8: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000FBAC: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000FBB0: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000FBB4: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000FBB8: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000FBBC: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000FBC0: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000FBC4: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000FBC8: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000FBCC: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000FBD0: 7E380320
	v_mov_b32_e32 v29, v30                                     // 00000000FBD4: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000FBD8: 7E3C0321
	ds_write_b128 v158, v[0:3]                                 // 00000000FBDC: D9BE0000 0000009E
	ds_write_b128 v160, v[4:7]                                 // 00000000FBE4: D9BE0000 000004A0
	ds_write_b128 v159, v[8:11]                                // 00000000FBEC: D9BE0000 0000089F
	ds_write_b128 v157, v[12:15]                               // 00000000FBF4: D9BE0000 00000C9D
	ds_write_b128 v156, v[16:19]                               // 00000000FBFC: D9BE0000 0000109C
	ds_write_b128 v155, v[20:23]                               // 00000000FC04: D9BE0000 0000149B
	ds_write_b128 v154, v[24:27]                               // 00000000FC0C: D9BE0000 0000189A
	ds_write_b128 v153, v[28:31]                               // 00000000FC14: D9BE0000 00001C99
	ds_read_b128 v[8:11], v149                                 // 00000000FC1C: D9FE0000 08000095
	ds_read_b128 v[12:15], v152 offset:1024                    // 00000000FC24: D9FE0400 0C000098
	ds_read_b128 v[16:19], v151 offset:2048                    // 00000000FC2C: D9FE0800 10000097
	ds_read_b128 v[20:23], v150 offset:3072                    // 00000000FC34: D9FE0C00 14000096
	ds_read_b128 v[24:27], v149 offset:4096                    // 00000000FC3C: D9FE1000 18000095
	ds_read_b128 v[28:31], v152 offset:5120                    // 00000000FC44: D9FE1400 1C000098
	ds_read_b128 v[32:35], v151 offset:6144                    // 00000000FC4C: D9FE1800 20000097
	ds_read_b128 v[36:39], v150 offset:7168                    // 00000000FC54: D9FE1C00 24000096
	v_add_u32_e32 v0, s3, v147                                 // 00000000FC5C: 68012603
	v_mul_lo_u32 v0, s8, v0                                    // 00000000FC60: D2850000 00020008
	v_add_u32_e32 v0, v0, v148                                 // 00000000FC68: 68012900
	v_add_u32_e32 v1, s4, v0                                   // 00000000FC6C: 68020004
	v_add_u32_e32 v2, s4, v1                                   // 00000000FC70: 68040204
	v_add_u32_e32 v3, s4, v2                                   // 00000000FC74: 68060404
	v_add_u32_e32 v4, s4, v3                                   // 00000000FC78: 68080604
	v_add_u32_e32 v5, s4, v4                                   // 00000000FC7C: 680A0804
	v_add_u32_e32 v6, s4, v5                                   // 00000000FC80: 680C0A04
	v_add_u32_e32 v7, s4, v6                                   // 00000000FC84: 680E0C04
	s_waitcnt lgkmcnt(7)                                       // 00000000FC88: BF8CC77F
	global_store_dwordx4 v0, v[8:11], s[10:11]                 // 00000000FC8C: DC7C8000 000A0800
	s_waitcnt lgkmcnt(6)                                       // 00000000FC94: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[10:11]                // 00000000FC98: DC7C8000 000A0C01
	s_waitcnt lgkmcnt(5)                                       // 00000000FCA0: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[10:11]                // 00000000FCA4: DC7C8000 000A1002
	s_waitcnt lgkmcnt(4)                                       // 00000000FCAC: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[10:11]                // 00000000FCB0: DC7C8000 000A1403
	s_waitcnt lgkmcnt(3)                                       // 00000000FCB8: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[10:11]                // 00000000FCBC: DC7C8000 000A1804
	s_waitcnt lgkmcnt(2)                                       // 00000000FCC4: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[10:11]                // 00000000FCC8: DC7C8000 000A1C05
	s_waitcnt lgkmcnt(1)                                       // 00000000FCD0: BF8CC17F
	global_store_dwordx4 v6, v[32:35], s[10:11]                // 00000000FCD4: DC7C8000 000A2006
	s_waitcnt lgkmcnt(0)                                       // 00000000FCDC: BF8CC07F
	global_store_dwordx4 v7, v[36:39], s[10:11]                // 00000000FCE0: DC7C8000 000A2407
	v_add_f32_e32 v0, v177, v65                                // 00000000FCE8: 020083B1
	v_add_f32_e32 v0, -4.0, v0                                 // 00000000FCEC: 020000F7
	v_add_f32_e32 v0, -2.0, v0                                 // 00000000FCF0: 020000F5
	v_mul_f32_e32 v0, 0x3f317218, v0                           // 00000000FCF4: 0A0000FF 3F317218
	v_add_u32_e32 v1, s3, v146                                 // 00000000FCFC: 68032403
	v_lshlrev_b32_e32 v1, 2, v1                                // 00000000FD00: 24020282
	s_cmp_eq_u64 s[14:15], 0                                   // 00000000FD04: BF12800E
	s_cbranch_scc1 2                                           // 00000000FD08: BF850002 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5514>
	global_store_dword v1, v0, s[14:15]                        // 00000000FD0C: DC708000 000E0001
	s_and_b64 s[0:1], s[0:1], exec                             // 00000000FD14: 86807E00
	s_cbranch_scc0 1                                           // 00000000FD18: BF840001 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5520>
	s_barrier                                                  // 00000000FD1C: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000FD20: BF8C0F70
	s_endpgm                                                   // 00000000FD24: BF810000
