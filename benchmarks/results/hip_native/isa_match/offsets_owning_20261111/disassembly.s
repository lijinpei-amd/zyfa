
/home/jinpli/workspace/home/jinpli/development/zyfa/benchmarks/results/hip_native/isa_match/offsets_owning_20261111/native.co:	file format elf64-amdgpu
	.amdgcn_target "amdgpu-amd-amdhsa-unknown-gfx950"

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
	s_cbranch_scc1 9164                                        // 000000001C84: BF8523CC <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x90b8>
	s_lshr_b32 s1, s0, 6                                       // 000000001C88: 8F018600
	s_lshl_b32 s33, s8, 7                                      // 000000001C8C: 8E218708
	s_lshr_b32 s21, s0, 8                                      // 000000001C90: 8F158800
	s_bfe_u32 s20, s0, 0x20006                                 // 000000001C94: 9294FF00 00020006
	s_lshl_b32 s88, s1, 10                                     // 000000001C9C: 8E588A01
	s_cmp_eq_u32 s6, 0                                         // 000000001CA0: BF068006
	s_cselect_b32 s16, s1, s20                                 // 000000001CA4: 85101401
	s_cselect_b32 s18, 0, s21                                  // 000000001CA8: 85121580
	s_lshl_b32 s0, s2, 5                                       // 000000001CAC: 8E008502
	s_load_dwordx8 s[68:75], s[46:47], s0 offset:0x0           // 000000001CB0: C00E5117 00000000
	s_mul_i32 s6, s18, s10                                     // 000000001CB8: 92060A12
	s_mul_i32 s78, s8, s13                                     // 000000001CBC: 924E0D08
	s_mov_b32 s79, 0x110000                                    // 000000001CC0: BECF00FF 00110000
	v_writelane_b32 v255, s16, 0                               // 000000001CC8: D28A00FF 00010010
	s_waitcnt lgkmcnt(0)                                       // 000000001CD0: BF8CC07F
	s_add_u32 s0, s36, s70                                     // 000000001CD4: 80004624
	s_addc_u32 s1, s37, s71                                    // 000000001CD8: 82014725
	s_add_u32 s0, s0, s6                                       // 000000001CDC: 80000600
	s_addc_u32 s1, s1, 0                                       // 000000001CE0: 82018001
	s_add_u32 s76, s38, s72                                    // 000000001CE4: 804C4826
	s_addc_u32 s77, s39, s73                                   // 000000001CE8: 824D4927
	s_add_u32 s80, s40, s72                                    // 000000001CEC: 80504828
	s_addc_u32 s81, s41, s73                                   // 000000001CF0: 82514929
	s_not_b32 s3, s68                                          // 000000001CF4: BE830444
	s_add_u32 s3, s4, s3                                       // 000000001CF8: 80030304
	s_mul_i32 s10, s3, s5                                      // 000000001CFC: 920A0503
	s_lshl_b32 s3, s3, 5                                       // 000000001D00: 8E038503
	s_lshr_b32 s19, s13, 7                                     // 000000001D04: 8F13870D
	s_add_u32 s10, s10, s16                                    // 000000001D08: 800A100A
	s_add_u32 s13, s3, 32                                      // 000000001D0C: 800DA003
	s_lshl_b32 s3, s10, 5                                      // 000000001D10: 8E03850A
	s_mul_i32 s10, s13, s5                                     // 000000001D14: 920A050D
	s_addk_i32 s10, 0x60                                       // 000000001D18: B70A0060
	s_lshr_b32 s10, s10, 7                                     // 000000001D1C: 8F0A870A
	v_or_b32_e32 v5, s3, v216                                  // 000000001D20: 280BB003
	v_writelane_b32 v255, s19, 1                               // 000000001D24: D28A00FF 00010213
	s_min_u32 s91, s19, s10                                    // 000000001D2C: 83DB0A13
	s_mov_b32 s82, s78                                         // 000000001D30: BED2004E
	s_mov_b32 s83, s79                                         // 000000001D34: BED3004F
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
	buffer_load_dwordx4 v233, s[76:79], 0 offen lds            // 000000001D7C: E05D1000 801300E9
	s_or_b32 m0, s88, 0x2000                                   // 000000001D84: 877CFF58 00002000
	s_nop 0                                                    // 000000001D8C: BF800000
	buffer_load_dwordx4 v234, s[76:79], 0 offen lds            // 000000001D90: E05D1000 801300EA
	s_mov_b32 m0, s0                                           // 000000001D98: BEFC0000
	s_nop 0                                                    // 000000001D9C: BF800000
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 000000001DA0: E05D1000 801400EB
	s_or_b32 m0, s88, 0x12000                                  // 000000001DA8: 877CFF58 00012000
	s_cmp_lt_u32 s91, 2                                        // 000000001DB0: BF0A825B
	buffer_load_dwordx4 v236, s[80:83], 0 offen lds            // 000000001DB4: E05D1000 801400EC
	s_cbranch_scc1 10                                          // 000000001DBC: BF85000A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2e8>
	s_add_u32 m0, s0, 0xffff4000                               // 000000001DC0: 807CFF00 FFFF4000
	s_nop 0                                                    // 000000001DC8: BF800000
	buffer_load_dwordx4 v233, s[76:79], s33 offen lds          // 000000001DCC: E05D1000 211300E9
	s_add_u32 m0, s0, 0xffff6000                               // 000000001DD4: 807CFF00 FFFF6000
	s_nop 0                                                    // 000000001DDC: BF800000
	buffer_load_dwordx4 v234, s[76:79], s33 offen lds          // 000000001DE0: E05D1000 211300EA
	v_and_b32_e32 v5, 63, v0                                   // 000000001DE8: 260A00BF
	s_waitcnt vmcnt(0)                                         // 000000001DEC: BF8C0F70
	s_barrier                                                  // 000000001DF0: BF8A0000
	s_cmp_eq_u32 s21, 0                                        // 000000001DF4: BF068015
	s_mov_b32 s16, 0                                           // 000000001DF8: BE900080
	s_cbranch_scc1 1                                           // 000000001DFC: BF850001 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x304>
	s_barrier                                                  // 000000001E00: BF8A0000
	s_add_u32 s0, s42, s74                                     // 000000001E04: 80004A2A
	s_mul_i32 s22, s18, s11                                    // 000000001E08: 92160B12
	s_addc_u32 s1, s43, s75                                    // 000000001E0C: 82014B2B
	s_mov_b32 s10, s69                                         // 000000001E10: BE8A0045
	s_mov_b32 s11, s16                                         // 000000001E14: BE8B0010
	s_add_u32 s0, s0, s22                                      // 000000001E18: 80001600
	s_addc_u32 s1, s1, 0                                       // 000000001E1C: 82018001
	s_lshl_b64 s[10:11], s[10:11], 2                           // 000000001E20: 8E8A820A
	s_mul_i32 s12, s18, s12                                    // 000000001E24: 920C0C12
	s_mov_b32 s13, s16                                         // 000000001E28: BE8D0010
	s_add_u32 s10, s44, s10                                    // 000000001E2C: 800A0A2C
	v_mul_f32_e32 v238, s49, v3                                // 000000001E30: 0BDC0631
	v_mul_f32_e32 v239, s48, v3                                // 000000001E34: 0BDE0630
	v_mov_b32_e32 v3, s17                                      // 000000001E38: 7E060211
	s_addc_u32 s11, s45, s11                                   // 000000001E3C: 820B0B2D
	s_lshl_b64 s[12:13], s[12:13], 2                           // 000000001E40: 8E8C820C
	v_mul_f32_e32 v240, s15, v3                                // 000000001E44: 0BE0060F
	s_add_u32 s15, s10, s12                                    // 000000001E48: 800F0C0A
	s_addc_u32 s18, s11, s13                                   // 000000001E4C: 82120D0B
	s_cmp_eq_u64 s[44:45], 0                                   // 000000001E50: BF12802C
	s_cselect_b64 s[10:11], -1, 0                              // 000000001E54: 858A80C1
	v_writelane_b32 v255, s10, 2                               // 000000001E58: D28A00FF 0001040A
	v_lshrrev_b32_e32 v217, 4, v5                              // 000000001E60: 21B20A84
	v_lshlrev_b32_e32 v6, 3, v0                                // 000000001E64: 240C0083
	v_writelane_b32 v255, s11, 3                               // 000000001E68: D28A00FF 0001060B
	s_and_b64 s[10:11], s[10:11], exec                         // 000000001E70: 868A7E0A
	s_cselect_b32 s19, 0, s18                                  // 000000001E74: 85131280
	s_cselect_b32 s18, 0, s15                                  // 000000001E78: 85120F80
	s_lshl_b32 s10, s8, 9                                      // 000000001E7C: 8E0A8908
	s_lshr_b32 s35, s3, 7                                      // 000000001E80: 8F238703
	v_writelane_b32 v255, s10, 4                               // 000000001E84: D28A00FF 0001080A
	s_lshl_b32 s10, s8, 8                                      // 000000001E8C: 8E0A8808
	v_writelane_b32 v255, s10, 5                               // 000000001E90: D28A00FF 00010A0A
	s_add_u32 s6, s36, s6                                      // 000000001E98: 80060624
	v_writelane_b32 v255, s6, 6                                // 000000001E9C: D28A00FF 00010C06
	s_addc_u32 s6, s37, 0                                      // 000000001EA4: 82068025
	v_writelane_b32 v255, s6, 7                                // 000000001EA8: D28A00FF 00010E06
	s_add_u32 s6, s42, s22                                     // 000000001EB0: 8006162A
	v_writelane_b32 v255, s6, 8                                // 000000001EB4: D28A00FF 00011006
	s_addc_u32 s6, s43, 0                                      // 000000001EBC: 8206802B
	s_cmp_eq_u32 s21, 0                                        // 000000001EC0: BF068015
	v_writelane_b32 v255, s6, 9                                // 000000001EC4: D28A00FF 00011206
	s_cselect_b64 s[10:11], -1, 0                              // 000000001ECC: 858A80C1
	v_and_b32_e32 v7, 15, v0                                   // 000000001ED0: 260E008F
	v_lshl_or_b32 v0, v0, 1, v217                              // 000000001ED4: D2000000 07650300
	v_writelane_b32 v255, s10, 10                              // 000000001EDC: D28A00FF 0001140A
	v_and_b32_e32 v0, 0x41, v0                                 // 000000001EE4: 260000FF 00000041
	s_add_u32 s6, s44, s12                                     // 000000001EEC: 80060C2C
	v_writelane_b32 v255, s11, 11                              // 000000001EF0: D28A00FF 0001160B
	v_lshlrev_b32_e32 v245, 7, v0                              // 000000001EF8: 25EA0087
	v_writelane_b32 v255, s6, 12                               // 000000001EFC: D28A00FF 00011806
	s_addc_u32 s6, s45, s13                                    // 000000001F04: 82060D2D
	v_and_b32_e32 v244, 0x78, v6                               // 000000001F08: 27E80CFF 00000078
	v_xor_b32_e32 v3, v1, v7                                   // 000000001F10: 2A060F01
	v_or_b32_e32 v0, 0x1c000, v245                             // 000000001F14: 2801EAFF 0001C000
	v_writelane_b32 v255, s6, 13                               // 000000001F1C: D28A00FF 00011A06
	s_lshl_b32 s6, s20, 13                                     // 000000001F24: 8E068D14
	s_mov_b32 s17, 0x20000                                     // 000000001F28: BE9100FF 00020000
	v_lshlrev_b32_e32 v3, 4, v3                                // 000000001F30: 24060684
	v_add_u32_e32 v249, v0, v244                               // 000000001F34: 69F3E900
	v_lshl_or_b32 v0, v216, 8, s6                              // 000000001F38: D2000000 001911D8
	v_xor_b32_e32 v2, v217, v2                                 // 000000001F40: 2A0405D9
	v_or3_b32 v228, v0, v3, s17                                // 000000001F44: D20200E4 00460700
	v_and_b32_e32 v4, 4, v4                                    // 000000001F4C: 26080884
	v_and_b32_e32 v2, 1, v2                                    // 000000001F50: 26040481
	v_xor_b32_e32 v0, 0x60, v228                               // 000000001F54: 2A01C8FF 00000060
	v_sub_u32_e32 v243, v216, v4                               // 000000001F5C: 6BE609D8
	v_xor_b32_e32 v4, v217, v7                                 // 000000001F60: 2A080FD9
	v_cmp_eq_u32_e32 vcc, 0, v2                                // 000000001F64: 7D940480
	v_or_b32_e32 v2, 0x10000, v245                             // 000000001F68: 2805EAFF 00010000
	scratch_store_dword off, v0, off offset:56                 // 000000001F70: DC704038 007F0000
	v_xor_b32_e32 v0, 0x80, v228                               // 000000001F78: 2A01C8FF 00000080
	s_lshl_b32 s10, s8, 5                                      // 000000001F80: 8E0A8508
	v_mov_b32_e32 v5, 0x38383838                               // 000000001F84: 7E0A02FF 38383838
	v_lshlrev_b32_e32 v6, 4, v7                                // 000000001F8C: 240C0E84
	v_lshlrev_b32_e32 v4, 4, v4                                // 000000001F90: 24080884
	v_add_u32_e32 v246, v2, v244                               // 000000001F94: 69EDE902
	v_lshl_or_b32 v2, v217, 8, s6                              // 000000001F98: D2000002 001911D9
	scratch_store_dword off, v0, off offset:52                 // 000000001FA0: DC704034 007F0000
	v_xor_b32_e32 v0, 0xa0, v228                               // 000000001FA8: 2A01C8FF 000000A0
	v_writelane_b32 v255, s10, 14                              // 000000001FB0: D28A00FF 00011C0A
	s_lshl_b32 s10, s8, 6                                      // 000000001FB8: 8E0A8608
	scratch_store_dword off, v6, off offset:32                 // 000000001FBC: DC704020 007F0600
	v_cndmask_b32_e32 v192, 0, v5, vcc                         // 000000001FC4: 01800A80
	v_or_b32_e32 v5, 0x14000, v245                             // 000000001FC8: 280BEAFF 00014000
	v_or_b32_e32 v6, 0x18000, v245                             // 000000001FD0: 280DEAFF 00018000
	v_or3_b32 v219, v2, v4, s17                                // 000000001FD8: D20200DB 00460902
	scratch_store_dword off, v0, off offset:48                 // 000000001FE0: DC704030 007F0000
	v_xor_b32_e32 v0, 0xc0, v228                               // 000000001FE8: 2A01C8FF 000000C0
	v_writelane_b32 v255, s10, 15                              // 000000001FF0: D28A00FF 00011E0A
	s_lshl_b32 s10, s8, 2                                      // 000000001FF8: 8E0A8208
	s_mov_b32 s49, 0x1c000                                     // 000000001FFC: BEB100FF 0001C000
	s_mov_b32 s92, 0x10000                                     // 000000002004: BEDC00FF 00010000
	s_mov_b32 s93, 0x14000                                     // 00000000200C: BEDD00FF 00014000
	s_mov_b32 s96, 0x18000                                     // 000000002014: BEE000FF 00018000
	s_mov_b32 s97, 0x8000                                      // 00000000201C: BEE100FF 00008000
	s_movk_i32 s98, 0x4000                                     // 000000002024: B0624000
	s_mov_b32 s99, 0xc2fe0000                                  // 000000002028: BEE300FF C2FE0000
	v_mov_b32_e32 v241, 0xff800000                             // 000000002030: 7FE202FF FF800000
	v_mov_b32_e32 v242, 0x7f                                   // 000000002038: 7FE402FF 0000007F
	v_mov_b32_e32 v193, v192                                   // 000000002040: 7F8203C0
	v_mov_b32_e32 v194, v192                                   // 000000002044: 7F8403C0
	v_mov_b32_e32 v195, v192                                   // 000000002048: 7F8603C0
	v_mov_b32_e32 v196, v192                                   // 00000000204C: 7F8803C0
	v_mov_b32_e32 v197, v192                                   // 000000002050: 7F8A03C0
	v_mov_b32_e32 v198, v192                                   // 000000002054: 7F8C03C0
	v_mov_b32_e32 v199, v192                                   // 000000002058: 7F8E03C0
	v_add_u32_e32 v247, v5, v244                               // 00000000205C: 69EFE905
	v_add_u32_e32 v248, v6, v244                               // 000000002060: 69F1E906
	s_mov_b32 s95, 0xc1000000                                  // 000000002064: BEDF00FF C1000000
	s_movk_i32 s48, 0x2000                                     // 00000000206C: B0302000
	v_xor_b32_e32 v230, 32, v228                               // 000000002070: 2BCDC8A0
	v_xor_b32_e32 v229, 64, v228                               // 000000002074: 2BCBC8C0
	scratch_store_dword off, v0, off offset:44                 // 000000002078: DC70402C 007F0000
	v_xor_b32_e32 v0, 0xe0, v228                               // 000000002080: 2A01C8FF 000000E0
	v_xor_b32_e32 v218, 64, v219                               // 000000002088: 2BB5B6C0
	v_xor_b32_e32 v237, 0x80, v219                             // 00000000208C: 2BDBB6FF 00000080
	v_xor_b32_e32 v254, 0xc0, v219                             // 000000002094: 2BFDB6FF 000000C0
	s_mov_b32 s36, 0x1a000                                     // 00000000209C: BEA400FF 0001A000
	s_mov_b32 s37, 0x3e000000                                  // 0000000020A4: BEA500FF 3E000000
	s_movk_i32 s42, 0x6000                                     // 0000000020AC: B02A6000
	s_mov_b32 s43, 0x1e000                                     // 0000000020B0: BEAB00FF 0001E000
	s_mov_b32 s44, 0xa000                                      // 0000000020B8: BEAC00FF 0000A000
	s_mov_b32 s45, 0x12000                                     // 0000000020C0: BEAD00FF 00012000
	s_mov_b32 s89, 0xc000                                      // 0000000020C8: BED900FF 0000C000
	s_mov_b32 s90, 0xe000                                      // 0000000020D0: BEDA00FF 0000E000
	s_mov_b32 s34, 0x16000                                     // 0000000020D8: BEA200FF 00016000
	s_lshl_b32 s6, s9, 2                                       // 0000000020E0: 8E068209
	v_writelane_b32 v255, s10, 16                              // 0000000020E4: D28A00FF 0001200A
	s_mov_b32 s52, 0xff800000                                  // 0000000020EC: BEB400FF FF800000
	scratch_store_dword off, v0, off offset:40                 // 0000000020F4: DC704028 007F0000
	s_mov_b32 s12, s79                                         // 0000000020FC: BE8C004F
	s_mov_b32 s10, 0                                           // 000000002100: BE8A0080
	s_mov_b32 s11, 0                                           // 000000002104: BE8B0080
	s_mov_b32 s94, s68                                         // 000000002108: BEDE0044
	s_mov_b32 s83, s79                                         // 00000000210C: BED3004F
	v_writelane_b32 v255, s12, 17                              // 000000002110: D28A00FF 0001220C
	s_lshl_b32 s12, s10, 14                                    // 000000002118: 8E0C8E0A
	s_and_b32 s17, s12, 0x8000                                 // 00000000211C: 8611FF0C 00008000
	s_bitcmp1_b32 s10, 0                                       // 000000002124: BF0D800A
	s_cselect_b32 s15, 0x4000, 0                               // 000000002128: 850F80FF 00004000
	s_or_b32 s17, s17, s15                                     // 000000002130: 87110F11
	v_or_b32_e32 v0, s17, v231                                 // 000000002134: 2801CE11
	s_waitcnt vmcnt(8)                                         // 000000002138: BF8C0F78
	ds_read_b128 v[10:13], v0                                  // 00000000213C: D9FE0000 0A000000
	ds_read_b128 v[14:17], v0 offset:16                        // 000000002144: D9FE0010 0E000000
	ds_read_b128 v[2:5], v0 offset:4096                        // 00000000214C: D9FE1000 02000000
	ds_read_b128 v[6:9], v0 offset:4112                        // 000000002154: D9FE1010 06000000
	s_mov_b64 s[12:13], s[18:19]                               // 00000000215C: BE8C0112
	s_cmp_eq_u32 s35, 0                                        // 000000002160: BF068023
	s_cbranch_scc1 149                                         // 000000002164: BF850095 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8bc>
	s_setprio 1                                                // 000000002168: BF8F0001
	s_waitcnt lgkmcnt(2)                                       // 00000000216C: BF8CC27F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[220:227], 0// 000000002170: D3AE0070 0203B90A
	v_add_u32_e32 v0, s17, v231                                // 000000002178: 6801CE11
	ds_read_b128 v[18:21], v0 offset:8192                      // 00000000217C: D9FE2000 12000000
	ds_read_b128 v[22:25], v0 offset:8208                      // 000000002184: D9FE2010 16000000
	ds_read_b128 v[26:29], v0 offset:12288                     // 00000000218C: D9FE3000 1A000000
	ds_read_b128 v[30:33], v0 offset:12304                     // 000000002194: D9FE3010 1E000000
	s_waitcnt lgkmcnt(4)                                       // 00000000219C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[220:227], 0// 0000000021A0: D3AE0060 0203B902
	v_add_u32_e32 v0, s17, v232                                // 0000000021A8: 6801D011
	ds_read_b128 v[10:13], v0                                  // 0000000021AC: D9FE0000 0A000000
	ds_read_b128 v[14:17], v0 offset:16                        // 0000000021B4: D9FE0010 0E000000
	s_waitcnt lgkmcnt(4)                                       // 0000000021BC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[220:227], 0// 0000000021C0: D3AE0050 0203B912
	ds_read_b128 v[2:5], v0 offset:4096                        // 0000000021C8: D9FE1000 02000000
	ds_read_b128 v[6:9], v0 offset:4112                        // 0000000021D0: D9FE1010 06000000
	s_waitcnt lgkmcnt(4)                                       // 0000000021D8: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[220:227], 0// 0000000021DC: D3AE0040 0203B91A
	ds_read_b128 v[18:21], v0 offset:8192                      // 0000000021E4: D9FE2000 12000000
	ds_read_b128 v[22:25], v0 offset:8208                      // 0000000021EC: D9FE2010 16000000
	s_waitcnt lgkmcnt(4)                                       // 0000000021F4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[200:207], v[112:127]// 0000000021F8: D3AE0070 05C3910A
	ds_read_b128 v[26:29], v0 offset:12288                     // 000000002200: D9FE3000 1A000000
	ds_read_b128 v[30:33], v0 offset:12304                     // 000000002208: D9FE3010 1E000000
	s_waitcnt lgkmcnt(4)                                       // 000000002210: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[200:207], v[96:111]// 000000002214: D3AE0060 05839102
	s_waitcnt lgkmcnt(2)                                       // 00000000221C: BF8CC27F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[200:207], v[80:95]// 000000002220: D3AE0050 05439112
	s_waitcnt lgkmcnt(0)                                       // 000000002228: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[200:207], v[64:79]// 00000000222C: D3AE0040 0503911A
	v_max_f32_e32 v0, v112, v113                               // 000000002234: 1600E370
	v_max3_f32 v0, v114, v115, v0                              // 000000002238: D1D30000 0402E772
	v_max3_f32 v0, v116, v117, v0                              // 000000002240: D1D30000 0402EB74
	v_max3_f32 v0, v118, v119, v0                              // 000000002248: D1D30000 0402EF76
	v_max3_f32 v0, v120, v121, v0                              // 000000002250: D1D30000 0402F378
	v_max3_f32 v0, v122, v123, v0                              // 000000002258: D1D30000 0402F77A
	v_max3_f32 v0, v124, v125, v0                              // 000000002260: D1D30000 0402FB7C
	v_max3_f32 v1, v126, v127, v0                              // 000000002268: D1D30001 0402FF7E
	v_max_f32_e32 v0, v96, v97                                 // 000000002270: 1600C360
	v_max3_f32 v0, v98, v99, v0                                // 000000002274: D1D30000 0402C762
	v_max3_f32 v0, v100, v101, v0                              // 00000000227C: D1D30000 0402CB64
	v_max3_f32 v0, v102, v103, v0                              // 000000002284: D1D30000 0402CF66
	v_max3_f32 v0, v104, v105, v0                              // 00000000228C: D1D30000 0402D368
	v_max3_f32 v0, v106, v107, v0                              // 000000002294: D1D30000 0402D76A
	v_max3_f32 v0, v108, v109, v0                              // 00000000229C: D1D30000 0402DB6C
	v_max3_f32 v2, v110, v111, v0                              // 0000000022A4: D1D30002 0402DF6E
	v_max_f32_e32 v0, v80, v81                                 // 0000000022AC: 1600A350
	v_max3_f32 v0, v82, v83, v0                                // 0000000022B0: D1D30000 0402A752
	v_max3_f32 v0, v84, v85, v0                                // 0000000022B8: D1D30000 0402AB54
	v_max3_f32 v0, v86, v87, v0                                // 0000000022C0: D1D30000 0402AF56
	v_max3_f32 v0, v88, v89, v0                                // 0000000022C8: D1D30000 0402B358
	v_max3_f32 v0, v90, v91, v0                                // 0000000022D0: D1D30000 0402B75A
	v_max3_f32 v0, v92, v93, v0                                // 0000000022D8: D1D30000 0402BB5C
	v_max3_f32 v0, v94, v95, v0                                // 0000000022E0: D1D30000 0402BF5E
	v_max_f32_e32 v3, v64, v65                                 // 0000000022E8: 16068340
	v_max3_f32 v3, v66, v67, v3                                // 0000000022EC: D1D30003 040E8742
	v_max3_f32 v3, v68, v69, v3                                // 0000000022F4: D1D30003 040E8B44
	v_max3_f32 v3, v70, v71, v3                                // 0000000022FC: D1D30003 040E8F46
	v_max3_f32 v3, v72, v73, v3                                // 000000002304: D1D30003 040E9348
	v_max3_f32 v3, v74, v75, v3                                // 00000000230C: D1D30003 040E974A
	v_max3_f32 v3, v76, v77, v3                                // 000000002314: D1D30003 040E9B4C
	v_max3_f32 v3, v78, v79, v3                                // 00000000231C: D1D30003 040E9F4E
	v_max_f32_e32 v0, v0, v3                                   // 000000002324: 16000700
	v_max_f32_e32 v2, v1, v2                                   // 000000002328: 16040501
	v_mov_b32_e32 v3, v2                                       // 00000000232C: 7E060302
	s_nop 1                                                    // 000000002330: BF800001
	v_permlane32_swap_b32_e32 v2, v3                           // 000000002334: 7E04B503
	v_mov_b32_e32 v1, v0                                       // 000000002338: 7E020300
	s_nop 1                                                    // 00000000233C: BF800001
	v_permlane32_swap_b32_e32 v0, v1                           // 000000002340: 7E00B501
	v_max_f32_e32 v0, v0, v1                                   // 000000002344: 16000300
	v_max_f32_e32 v1, v2, v3                                   // 000000002348: 16020702
	v_max_f32_e32 v2, v1, v0                                   // 00000000234C: 16040101
	v_mul_f32_e32 v148, v238, v2                               // 000000002350: 0B2805EE
	v_fma_f32 v1, v1, v238, -v148                              // 000000002354: D1CB0001 8653DD01
	v_floor_f32_e32 v1, v1                                     // 00000000235C: 7E023F01
	v_med3_f32 v1, v1, s99, 0                                  // 000000002360: D1D60001 0200C701
	v_cvt_i32_f32_e32 v2, v1                                   // 000000002368: 7E041101
	v_add_u32_e32 v251, 0x7f, v2                               // 00000000236C: 69F604FF 0000007F
	v_lshlrev_b32_e32 v144, 23, v251                           // 000000002374: 2521F697
	v_fma_f32 v0, v0, v238, -v148                              // 000000002378: D1CB0000 8653DD00
	v_floor_f32_e32 v0, v0                                     // 000000002380: 7E003F00
	v_med3_f32 v0, v0, s99, 0                                  // 000000002384: D1D60000 0200C700
	v_cvt_i32_f32_e32 v2, v0                                   // 00000000238C: 7E041100
	v_add_u32_e32 v149, 0x7f, v2                               // 000000002390: 692A04FF 0000007F
	v_lshlrev_b32_e32 v145, 23, v149                           // 000000002398: 25232A97
	v_mov_b32_e32 v2, s50                                      // 00000000239C: 7E040232
	v_fma_f32 v2, v148, s95, v2                                // 0000000023A0: D1CB0002 0408BF94
	v_fma_f32 v152, v1, s95, v2                                // 0000000023A8: D1CB0098 0408BF01
	v_fma_f32 v150, v0, s95, v2                                // 0000000023B0: D1CB0096 0408BF00
	s_branch 530                                               // 0000000023B8: BF820212 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1104>
	s_setprio 1                                                // 0000000023BC: BF8F0001
	s_waitcnt lgkmcnt(2)                                       // 0000000023C0: BF8CC27F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[220:227], 0// 0000000023C4: D3AE0070 0203B90A
	v_add_u32_e32 v0, s17, v231                                // 0000000023CC: 6801CE11
	ds_read_b128 v[18:21], v0 offset:8192                      // 0000000023D0: D9FE2000 12000000
	ds_read_b128 v[22:25], v0 offset:8208                      // 0000000023D8: D9FE2010 16000000
	ds_read_b128 v[26:29], v0 offset:12288                     // 0000000023E0: D9FE3000 1A000000
	ds_read_b128 v[30:33], v0 offset:12304                     // 0000000023E8: D9FE3010 1E000000
	s_waitcnt lgkmcnt(4)                                       // 0000000023F0: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[220:227], 0// 0000000023F4: D3AE0060 0203B902
	v_add_u32_e32 v0, s17, v232                                // 0000000023FC: 6801D011
	ds_read_b128 v[10:13], v0                                  // 000000002400: D9FE0000 0A000000
	ds_read_b128 v[14:17], v0 offset:16                        // 000000002408: D9FE0010 0E000000
	s_waitcnt lgkmcnt(4)                                       // 000000002410: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[220:227], 0// 000000002414: D3AE0050 0203B912
	ds_read_b128 v[2:5], v0 offset:4096                        // 00000000241C: D9FE1000 02000000
	ds_read_b128 v[6:9], v0 offset:4112                        // 000000002424: D9FE1010 06000000
	s_waitcnt lgkmcnt(4)                                       // 00000000242C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[220:227], 0// 000000002430: D3AE0040 0203B91A
	ds_read_b128 v[18:21], v0 offset:8192                      // 000000002438: D9FE2000 12000000
	ds_read_b128 v[22:25], v0 offset:8208                      // 000000002440: D9FE2010 16000000
	s_waitcnt lgkmcnt(4)                                       // 000000002448: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[10:17], v[200:207], v[112:127]// 00000000244C: D3AE0070 05C3910A
	ds_read_b128 v[26:29], v0 offset:12288                     // 000000002454: D9FE3000 1A000000
	ds_read_b128 v[30:33], v0 offset:12304                     // 00000000245C: D9FE3010 1E000000
	s_waitcnt lgkmcnt(4)                                       // 000000002464: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[2:9], v[200:207], v[96:111]// 000000002468: D3AE0060 05839102
	s_waitcnt lgkmcnt(2)                                       // 000000002470: BF8CC27F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[18:25], v[200:207], v[80:95]// 000000002474: D3AE0050 05439112
	s_waitcnt lgkmcnt(0)                                       // 00000000247C: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[26:33], v[200:207], v[64:79]// 000000002480: D3AE0040 0503911A
	s_sub_u32 s17, s3, s16                                     // 000000002488: 80911003
	s_sub_i32 s17, s17, 0                                      // 00000000248C: 81918011
	s_cmp_ge_i32 s17, 32                                       // 000000002490: BF03A011
	s_cbranch_scc1 91                                          // 000000002494: BF85005B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb04>
	s_cmp_lt_i32 s17, 0                                        // 000000002498: BF048011
	s_cbranch_scc1 66                                          // 00000000249C: BF850042 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xaa8>
	v_add_u32_e32 v0, s17, v243                                // 0000000024A0: 6801E611
	v_cmp_gt_i32_e32 vcc, 0, v0                                // 0000000024A4: 7D880080
	s_nop 1                                                    // 0000000024A8: BF800001
	v_cndmask_b32_e64 v112, v112, v241, vcc                    // 0000000024AC: D1000070 01ABE370
	v_cmp_gt_i32_e32 vcc, 1, v0                                // 0000000024B4: 7D880081
	s_nop 1                                                    // 0000000024B8: BF800001
	v_cndmask_b32_e64 v113, v113, v241, vcc                    // 0000000024BC: D1000071 01ABE371
	v_cmp_gt_i32_e32 vcc, 2, v0                                // 0000000024C4: 7D880082
	s_nop 1                                                    // 0000000024C8: BF800001
	v_cndmask_b32_e64 v114, v114, v241, vcc                    // 0000000024CC: D1000072 01ABE372
	v_cmp_gt_i32_e32 vcc, 3, v0                                // 0000000024D4: 7D880083
	s_nop 1                                                    // 0000000024D8: BF800001
	v_cndmask_b32_e64 v115, v115, v241, vcc                    // 0000000024DC: D1000073 01ABE373
	v_cmp_gt_i32_e32 vcc, 8, v0                                // 0000000024E4: 7D880088
	s_nop 1                                                    // 0000000024E8: BF800001
	v_cndmask_b32_e64 v116, v116, v241, vcc                    // 0000000024EC: D1000074 01ABE374
	v_cmp_gt_i32_e32 vcc, 9, v0                                // 0000000024F4: 7D880089
	s_nop 1                                                    // 0000000024F8: BF800001
	v_cndmask_b32_e64 v117, v117, v241, vcc                    // 0000000024FC: D1000075 01ABE375
	v_cmp_gt_i32_e32 vcc, 10, v0                               // 000000002504: 7D88008A
	s_nop 1                                                    // 000000002508: BF800001
	v_cndmask_b32_e64 v118, v118, v241, vcc                    // 00000000250C: D1000076 01ABE376
	v_cmp_gt_i32_e32 vcc, 11, v0                               // 000000002514: 7D88008B
	s_nop 1                                                    // 000000002518: BF800001
	v_cndmask_b32_e64 v119, v119, v241, vcc                    // 00000000251C: D1000077 01ABE377
	v_cmp_gt_i32_e32 vcc, 16, v0                               // 000000002524: 7D880090
	s_nop 1                                                    // 000000002528: BF800001
	v_cndmask_b32_e64 v120, v120, v241, vcc                    // 00000000252C: D1000078 01ABE378
	v_cmp_gt_i32_e32 vcc, 17, v0                               // 000000002534: 7D880091
	s_nop 1                                                    // 000000002538: BF800001
	v_cndmask_b32_e64 v121, v121, v241, vcc                    // 00000000253C: D1000079 01ABE379
	v_cmp_gt_i32_e32 vcc, 18, v0                               // 000000002544: 7D880092
	s_nop 1                                                    // 000000002548: BF800001
	v_cndmask_b32_e64 v122, v122, v241, vcc                    // 00000000254C: D100007A 01ABE37A
	v_cmp_gt_i32_e32 vcc, 19, v0                               // 000000002554: 7D880093
	s_nop 1                                                    // 000000002558: BF800001
	v_cndmask_b32_e64 v123, v123, v241, vcc                    // 00000000255C: D100007B 01ABE37B
	v_cmp_gt_i32_e32 vcc, 24, v0                               // 000000002564: 7D880098
	s_nop 1                                                    // 000000002568: BF800001
	v_cndmask_b32_e64 v124, v124, v241, vcc                    // 00000000256C: D100007C 01ABE37C
	v_cmp_gt_i32_e32 vcc, 25, v0                               // 000000002574: 7D880099
	s_nop 1                                                    // 000000002578: BF800001
	v_cndmask_b32_e64 v125, v125, v241, vcc                    // 00000000257C: D100007D 01ABE37D
	v_cmp_gt_i32_e32 vcc, 26, v0                               // 000000002584: 7D88009A
	s_nop 1                                                    // 000000002588: BF800001
	v_cndmask_b32_e64 v126, v126, v241, vcc                    // 00000000258C: D100007E 01ABE37E
	v_cmp_gt_i32_e32 vcc, 27, v0                               // 000000002594: 7D88009B
	s_nop 1                                                    // 000000002598: BF800001
	v_cndmask_b32_e64 v127, v127, v241, vcc                    // 00000000259C: D100007F 01ABE37F
	s_branch 23                                                // 0000000025A4: BF820017 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb04>
	s_mov_b32 s53, s52                                         // 0000000025A8: BEB50034
	s_mov_b32 s54, s52                                         // 0000000025AC: BEB60034
	s_mov_b32 s55, s52                                         // 0000000025B0: BEB70034
	s_mov_b32 s56, s52                                         // 0000000025B4: BEB80034
	s_mov_b32 s57, s52                                         // 0000000025B8: BEB90034
	s_mov_b32 s58, s52                                         // 0000000025BC: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000025C0: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000025C4: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000025C8: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000025CC: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000025D0: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000025D4: BEC00034
	s_mov_b32 s65, s52                                         // 0000000025D8: BEC10034
	s_mov_b32 s66, s52                                         // 0000000025DC: BEC20034
	s_mov_b32 s67, s52                                         // 0000000025E0: BEC30034
	v_mov_b64_e32 v[126:127], s[66:67]                         // 0000000025E4: 7EFC7042
	v_mov_b64_e32 v[124:125], s[64:65]                         // 0000000025E8: 7EF87040
	v_mov_b64_e32 v[122:123], s[62:63]                         // 0000000025EC: 7EF4703E
	v_mov_b64_e32 v[120:121], s[60:61]                         // 0000000025F0: 7EF0703C
	v_mov_b64_e32 v[118:119], s[58:59]                         // 0000000025F4: 7EEC703A
	v_mov_b64_e32 v[116:117], s[56:57]                         // 0000000025F8: 7EE87038
	v_mov_b64_e32 v[114:115], s[54:55]                         // 0000000025FC: 7EE47036
	v_mov_b64_e32 v[112:113], s[52:53]                         // 000000002600: 7EE07034
	s_sub_u32 s17, s3, s16                                     // 000000002604: 80911003
	s_sub_i32 s17, s17, 32                                     // 000000002608: 8191A011
	s_cmp_ge_i32 s17, 32                                       // 00000000260C: BF03A011
	s_cbranch_scc1 91                                          // 000000002610: BF85005B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc80>
	s_cmp_lt_i32 s17, 0                                        // 000000002614: BF048011
	s_cbranch_scc1 66                                          // 000000002618: BF850042 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc24>
	v_add_u32_e32 v0, s17, v243                                // 00000000261C: 6801E611
	v_cmp_gt_i32_e32 vcc, 0, v0                                // 000000002620: 7D880080
	s_nop 2                                                    // 000000002624: BF800002
	v_cndmask_b32_e64 v96, v96, v241, vcc                      // 000000002628: D1000060 01ABE360
	v_cmp_gt_i32_e32 vcc, 1, v0                                // 000000002630: 7D880081
	s_nop 1                                                    // 000000002634: BF800001
	v_cndmask_b32_e64 v97, v97, v241, vcc                      // 000000002638: D1000061 01ABE361
	v_cmp_gt_i32_e32 vcc, 2, v0                                // 000000002640: 7D880082
	s_nop 1                                                    // 000000002644: BF800001
	v_cndmask_b32_e64 v98, v98, v241, vcc                      // 000000002648: D1000062 01ABE362
	v_cmp_gt_i32_e32 vcc, 3, v0                                // 000000002650: 7D880083
	s_nop 1                                                    // 000000002654: BF800001
	v_cndmask_b32_e64 v99, v99, v241, vcc                      // 000000002658: D1000063 01ABE363
	v_cmp_gt_i32_e32 vcc, 8, v0                                // 000000002660: 7D880088
	s_nop 1                                                    // 000000002664: BF800001
	v_cndmask_b32_e64 v100, v100, v241, vcc                    // 000000002668: D1000064 01ABE364
	v_cmp_gt_i32_e32 vcc, 9, v0                                // 000000002670: 7D880089
	s_nop 1                                                    // 000000002674: BF800001
	v_cndmask_b32_e64 v101, v101, v241, vcc                    // 000000002678: D1000065 01ABE365
	v_cmp_gt_i32_e32 vcc, 10, v0                               // 000000002680: 7D88008A
	s_nop 1                                                    // 000000002684: BF800001
	v_cndmask_b32_e64 v102, v102, v241, vcc                    // 000000002688: D1000066 01ABE366
	v_cmp_gt_i32_e32 vcc, 11, v0                               // 000000002690: 7D88008B
	s_nop 1                                                    // 000000002694: BF800001
	v_cndmask_b32_e64 v103, v103, v241, vcc                    // 000000002698: D1000067 01ABE367
	v_cmp_gt_i32_e32 vcc, 16, v0                               // 0000000026A0: 7D880090
	s_nop 1                                                    // 0000000026A4: BF800001
	v_cndmask_b32_e64 v104, v104, v241, vcc                    // 0000000026A8: D1000068 01ABE368
	v_cmp_gt_i32_e32 vcc, 17, v0                               // 0000000026B0: 7D880091
	s_nop 1                                                    // 0000000026B4: BF800001
	v_cndmask_b32_e64 v105, v105, v241, vcc                    // 0000000026B8: D1000069 01ABE369
	v_cmp_gt_i32_e32 vcc, 18, v0                               // 0000000026C0: 7D880092
	s_nop 1                                                    // 0000000026C4: BF800001
	v_cndmask_b32_e64 v106, v106, v241, vcc                    // 0000000026C8: D100006A 01ABE36A
	v_cmp_gt_i32_e32 vcc, 19, v0                               // 0000000026D0: 7D880093
	s_nop 1                                                    // 0000000026D4: BF800001
	v_cndmask_b32_e64 v107, v107, v241, vcc                    // 0000000026D8: D100006B 01ABE36B
	v_cmp_gt_i32_e32 vcc, 24, v0                               // 0000000026E0: 7D880098
	s_nop 1                                                    // 0000000026E4: BF800001
	v_cndmask_b32_e64 v108, v108, v241, vcc                    // 0000000026E8: D100006C 01ABE36C
	v_cmp_gt_i32_e32 vcc, 25, v0                               // 0000000026F0: 7D880099
	s_nop 1                                                    // 0000000026F4: BF800001
	v_cndmask_b32_e64 v109, v109, v241, vcc                    // 0000000026F8: D100006D 01ABE36D
	v_cmp_gt_i32_e32 vcc, 26, v0                               // 000000002700: 7D88009A
	s_nop 1                                                    // 000000002704: BF800001
	v_cndmask_b32_e64 v110, v110, v241, vcc                    // 000000002708: D100006E 01ABE36E
	v_cmp_gt_i32_e32 vcc, 27, v0                               // 000000002710: 7D88009B
	s_nop 1                                                    // 000000002714: BF800001
	v_cndmask_b32_e64 v111, v111, v241, vcc                    // 000000002718: D100006F 01ABE36F
	s_branch 23                                                // 000000002720: BF820017 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc80>
	s_mov_b32 s53, s52                                         // 000000002724: BEB50034
	s_mov_b32 s54, s52                                         // 000000002728: BEB60034
	s_mov_b32 s55, s52                                         // 00000000272C: BEB70034
	s_mov_b32 s56, s52                                         // 000000002730: BEB80034
	s_mov_b32 s57, s52                                         // 000000002734: BEB90034
	s_mov_b32 s58, s52                                         // 000000002738: BEBA0034
	s_mov_b32 s59, s52                                         // 00000000273C: BEBB0034
	s_mov_b32 s60, s52                                         // 000000002740: BEBC0034
	s_mov_b32 s61, s52                                         // 000000002744: BEBD0034
	s_mov_b32 s62, s52                                         // 000000002748: BEBE0034
	s_mov_b32 s63, s52                                         // 00000000274C: BEBF0034
	s_mov_b32 s64, s52                                         // 000000002750: BEC00034
	s_mov_b32 s65, s52                                         // 000000002754: BEC10034
	s_mov_b32 s66, s52                                         // 000000002758: BEC20034
	s_mov_b32 s67, s52                                         // 00000000275C: BEC30034
	v_mov_b64_e32 v[110:111], s[66:67]                         // 000000002760: 7EDC7042
	v_mov_b64_e32 v[108:109], s[64:65]                         // 000000002764: 7ED87040
	v_mov_b64_e32 v[106:107], s[62:63]                         // 000000002768: 7ED4703E
	v_mov_b64_e32 v[104:105], s[60:61]                         // 00000000276C: 7ED0703C
	v_mov_b64_e32 v[102:103], s[58:59]                         // 000000002770: 7ECC703A
	v_mov_b64_e32 v[100:101], s[56:57]                         // 000000002774: 7EC87038
	v_mov_b64_e32 v[98:99], s[54:55]                           // 000000002778: 7EC47036
	v_mov_b64_e32 v[96:97], s[52:53]                           // 00000000277C: 7EC07034
	s_sub_u32 s17, s3, s16                                     // 000000002780: 80911003
	s_sub_i32 s17, s17, 64                                     // 000000002784: 8191C011
	s_cmp_ge_i32 s17, 32                                       // 000000002788: BF03A011
	s_cbranch_scc1 92                                          // 00000000278C: BF85005C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xe00>
	s_cmp_lt_i32 s17, 0                                        // 000000002790: BF048011
	s_cbranch_scc1 66                                          // 000000002794: BF850042 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xda0>
	v_add_u32_e32 v0, s17, v243                                // 000000002798: 6801E611
	v_cmp_gt_i32_e32 vcc, 0, v0                                // 00000000279C: 7D880080
	s_nop 2                                                    // 0000000027A0: BF800002
	v_cndmask_b32_e64 v80, v80, v241, vcc                      // 0000000027A4: D1000050 01ABE350
	v_cmp_gt_i32_e32 vcc, 1, v0                                // 0000000027AC: 7D880081
	s_nop 1                                                    // 0000000027B0: BF800001
	v_cndmask_b32_e64 v81, v81, v241, vcc                      // 0000000027B4: D1000051 01ABE351
	v_cmp_gt_i32_e32 vcc, 2, v0                                // 0000000027BC: 7D880082
	s_nop 1                                                    // 0000000027C0: BF800001
	v_cndmask_b32_e64 v82, v82, v241, vcc                      // 0000000027C4: D1000052 01ABE352
	v_cmp_gt_i32_e32 vcc, 3, v0                                // 0000000027CC: 7D880083
	s_nop 1                                                    // 0000000027D0: BF800001
	v_cndmask_b32_e64 v83, v83, v241, vcc                      // 0000000027D4: D1000053 01ABE353
	v_cmp_gt_i32_e32 vcc, 8, v0                                // 0000000027DC: 7D880088
	s_nop 1                                                    // 0000000027E0: BF800001
	v_cndmask_b32_e64 v84, v84, v241, vcc                      // 0000000027E4: D1000054 01ABE354
	v_cmp_gt_i32_e32 vcc, 9, v0                                // 0000000027EC: 7D880089
	s_nop 1                                                    // 0000000027F0: BF800001
	v_cndmask_b32_e64 v85, v85, v241, vcc                      // 0000000027F4: D1000055 01ABE355
	v_cmp_gt_i32_e32 vcc, 10, v0                               // 0000000027FC: 7D88008A
	s_nop 1                                                    // 000000002800: BF800001
	v_cndmask_b32_e64 v86, v86, v241, vcc                      // 000000002804: D1000056 01ABE356
	v_cmp_gt_i32_e32 vcc, 11, v0                               // 00000000280C: 7D88008B
	s_nop 1                                                    // 000000002810: BF800001
	v_cndmask_b32_e64 v87, v87, v241, vcc                      // 000000002814: D1000057 01ABE357
	v_cmp_gt_i32_e32 vcc, 16, v0                               // 00000000281C: 7D880090
	s_nop 1                                                    // 000000002820: BF800001
	v_cndmask_b32_e64 v88, v88, v241, vcc                      // 000000002824: D1000058 01ABE358
	v_cmp_gt_i32_e32 vcc, 17, v0                               // 00000000282C: 7D880091
	s_nop 1                                                    // 000000002830: BF800001
	v_cndmask_b32_e64 v89, v89, v241, vcc                      // 000000002834: D1000059 01ABE359
	v_cmp_gt_i32_e32 vcc, 18, v0                               // 00000000283C: 7D880092
	s_nop 1                                                    // 000000002840: BF800001
	v_cndmask_b32_e64 v90, v90, v241, vcc                      // 000000002844: D100005A 01ABE35A
	v_cmp_gt_i32_e32 vcc, 19, v0                               // 00000000284C: 7D880093
	s_nop 1                                                    // 000000002850: BF800001
	v_cndmask_b32_e64 v91, v91, v241, vcc                      // 000000002854: D100005B 01ABE35B
	v_cmp_gt_i32_e32 vcc, 24, v0                               // 00000000285C: 7D880098
	s_nop 1                                                    // 000000002860: BF800001
	v_cndmask_b32_e64 v92, v92, v241, vcc                      // 000000002864: D100005C 01ABE35C
	v_cmp_gt_i32_e32 vcc, 25, v0                               // 00000000286C: 7D880099
	s_nop 1                                                    // 000000002870: BF800001
	v_cndmask_b32_e64 v93, v93, v241, vcc                      // 000000002874: D100005D 01ABE35D
	v_cmp_gt_i32_e32 vcc, 26, v0                               // 00000000287C: 7D88009A
	s_nop 1                                                    // 000000002880: BF800001
	v_cndmask_b32_e64 v94, v94, v241, vcc                      // 000000002884: D100005E 01ABE35E
	v_cmp_gt_i32_e32 vcc, 27, v0                               // 00000000288C: 7D88009B
	s_nop 1                                                    // 000000002890: BF800001
	v_cndmask_b32_e64 v95, v95, v241, vcc                      // 000000002894: D100005F 01ABE35F
	s_branch 24                                                // 00000000289C: BF820018 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xe00>
	s_mov_b32 s53, s52                                         // 0000000028A0: BEB50034
	s_mov_b32 s54, s52                                         // 0000000028A4: BEB60034
	s_mov_b32 s55, s52                                         // 0000000028A8: BEB70034
	s_mov_b32 s56, s52                                         // 0000000028AC: BEB80034
	s_mov_b32 s57, s52                                         // 0000000028B0: BEB90034
	s_mov_b32 s58, s52                                         // 0000000028B4: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000028B8: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000028BC: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000028C0: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000028C4: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000028C8: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000028CC: BEC00034
	s_mov_b32 s65, s52                                         // 0000000028D0: BEC10034
	s_mov_b32 s66, s52                                         // 0000000028D4: BEC20034
	s_mov_b32 s67, s52                                         // 0000000028D8: BEC30034
	v_mov_b64_e32 v[94:95], s[66:67]                           // 0000000028DC: 7EBC7042
	v_mov_b64_e32 v[92:93], s[64:65]                           // 0000000028E0: 7EB87040
	v_mov_b64_e32 v[90:91], s[62:63]                           // 0000000028E4: 7EB4703E
	v_mov_b64_e32 v[88:89], s[60:61]                           // 0000000028E8: 7EB0703C
	v_mov_b64_e32 v[86:87], s[58:59]                           // 0000000028EC: 7EAC703A
	v_mov_b64_e32 v[84:85], s[56:57]                           // 0000000028F0: 7EA87038
	v_mov_b64_e32 v[82:83], s[54:55]                           // 0000000028F4: 7EA47036
	v_mov_b64_e32 v[80:81], s[52:53]                           // 0000000028F8: 7EA07034
	s_nop 0                                                    // 0000000028FC: BF800000
	s_sub_u32 s17, s3, s16                                     // 000000002900: 80911003
	s_sub_i32 s17, s17, 0x60                                   // 000000002904: 8191FF11 00000060
	s_cmp_ge_i32 s17, 32                                       // 00000000290C: BF03A011
	s_cbranch_scc1 91                                          // 000000002910: BF85005B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf80>
	s_cmp_lt_i32 s17, 0                                        // 000000002914: BF048011
	s_cbranch_scc1 66                                          // 000000002918: BF850042 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf24>
	v_add_u32_e32 v0, s17, v243                                // 00000000291C: 6801E611
	v_cmp_gt_i32_e32 vcc, 0, v0                                // 000000002920: 7D880080
	s_nop 7                                                    // 000000002924: BF800007
	v_cndmask_b32_e64 v64, v64, v241, vcc                      // 000000002928: D1000040 01ABE340
	v_cmp_gt_i32_e32 vcc, 1, v0                                // 000000002930: 7D880081
	s_nop 1                                                    // 000000002934: BF800001
	v_cndmask_b32_e64 v65, v65, v241, vcc                      // 000000002938: D1000041 01ABE341
	v_cmp_gt_i32_e32 vcc, 2, v0                                // 000000002940: 7D880082
	s_nop 1                                                    // 000000002944: BF800001
	v_cndmask_b32_e64 v66, v66, v241, vcc                      // 000000002948: D1000042 01ABE342
	v_cmp_gt_i32_e32 vcc, 3, v0                                // 000000002950: 7D880083
	s_nop 1                                                    // 000000002954: BF800001
	v_cndmask_b32_e64 v67, v67, v241, vcc                      // 000000002958: D1000043 01ABE343
	v_cmp_gt_i32_e32 vcc, 8, v0                                // 000000002960: 7D880088
	s_nop 1                                                    // 000000002964: BF800001
	v_cndmask_b32_e64 v68, v68, v241, vcc                      // 000000002968: D1000044 01ABE344
	v_cmp_gt_i32_e32 vcc, 9, v0                                // 000000002970: 7D880089
	s_nop 1                                                    // 000000002974: BF800001
	v_cndmask_b32_e64 v69, v69, v241, vcc                      // 000000002978: D1000045 01ABE345
	v_cmp_gt_i32_e32 vcc, 10, v0                               // 000000002980: 7D88008A
	s_nop 1                                                    // 000000002984: BF800001
	v_cndmask_b32_e64 v70, v70, v241, vcc                      // 000000002988: D1000046 01ABE346
	v_cmp_gt_i32_e32 vcc, 11, v0                               // 000000002990: 7D88008B
	s_nop 1                                                    // 000000002994: BF800001
	v_cndmask_b32_e64 v71, v71, v241, vcc                      // 000000002998: D1000047 01ABE347
	v_cmp_gt_i32_e32 vcc, 16, v0                               // 0000000029A0: 7D880090
	s_nop 1                                                    // 0000000029A4: BF800001
	v_cndmask_b32_e64 v72, v72, v241, vcc                      // 0000000029A8: D1000048 01ABE348
	v_cmp_gt_i32_e32 vcc, 17, v0                               // 0000000029B0: 7D880091
	s_nop 1                                                    // 0000000029B4: BF800001
	v_cndmask_b32_e64 v73, v73, v241, vcc                      // 0000000029B8: D1000049 01ABE349
	v_cmp_gt_i32_e32 vcc, 18, v0                               // 0000000029C0: 7D880092
	s_nop 1                                                    // 0000000029C4: BF800001
	v_cndmask_b32_e64 v74, v74, v241, vcc                      // 0000000029C8: D100004A 01ABE34A
	v_cmp_gt_i32_e32 vcc, 19, v0                               // 0000000029D0: 7D880093
	s_nop 1                                                    // 0000000029D4: BF800001
	v_cndmask_b32_e64 v75, v75, v241, vcc                      // 0000000029D8: D100004B 01ABE34B
	v_cmp_gt_i32_e32 vcc, 24, v0                               // 0000000029E0: 7D880098
	s_nop 1                                                    // 0000000029E4: BF800001
	v_cndmask_b32_e64 v76, v76, v241, vcc                      // 0000000029E8: D100004C 01ABE34C
	v_cmp_gt_i32_e32 vcc, 25, v0                               // 0000000029F0: 7D880099
	s_nop 1                                                    // 0000000029F4: BF800001
	v_cndmask_b32_e64 v77, v77, v241, vcc                      // 0000000029F8: D100004D 01ABE34D
	v_cmp_gt_i32_e32 vcc, 26, v0                               // 000000002A00: 7D88009A
	s_nop 1                                                    // 000000002A04: BF800001
	v_cndmask_b32_e64 v78, v78, v241, vcc                      // 000000002A08: D100004E 01ABE34E
	v_cmp_gt_i32_e32 vcc, 27, v0                               // 000000002A10: 7D88009B
	s_nop 1                                                    // 000000002A14: BF800001
	v_cndmask_b32_e64 v79, v79, v241, vcc                      // 000000002A18: D100004F 01ABE34F
	s_branch 23                                                // 000000002A20: BF820017 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf80>
	s_mov_b32 s53, s52                                         // 000000002A24: BEB50034
	s_mov_b32 s54, s52                                         // 000000002A28: BEB60034
	s_mov_b32 s55, s52                                         // 000000002A2C: BEB70034
	s_mov_b32 s56, s52                                         // 000000002A30: BEB80034
	s_mov_b32 s57, s52                                         // 000000002A34: BEB90034
	s_mov_b32 s58, s52                                         // 000000002A38: BEBA0034
	s_mov_b32 s59, s52                                         // 000000002A3C: BEBB0034
	s_mov_b32 s60, s52                                         // 000000002A40: BEBC0034
	s_mov_b32 s61, s52                                         // 000000002A44: BEBD0034
	s_mov_b32 s62, s52                                         // 000000002A48: BEBE0034
	s_mov_b32 s63, s52                                         // 000000002A4C: BEBF0034
	s_mov_b32 s64, s52                                         // 000000002A50: BEC00034
	s_mov_b32 s65, s52                                         // 000000002A54: BEC10034
	s_mov_b32 s66, s52                                         // 000000002A58: BEC20034
	s_mov_b32 s67, s52                                         // 000000002A5C: BEC30034
	v_mov_b64_e32 v[78:79], s[66:67]                           // 000000002A60: 7E9C7042
	v_mov_b64_e32 v[76:77], s[64:65]                           // 000000002A64: 7E987040
	v_mov_b64_e32 v[74:75], s[62:63]                           // 000000002A68: 7E94703E
	v_mov_b64_e32 v[72:73], s[60:61]                           // 000000002A6C: 7E90703C
	v_mov_b64_e32 v[70:71], s[58:59]                           // 000000002A70: 7E8C703A
	v_mov_b64_e32 v[68:69], s[56:57]                           // 000000002A74: 7E887038
	v_mov_b64_e32 v[66:67], s[54:55]                           // 000000002A78: 7E847036
	v_mov_b64_e32 v[64:65], s[52:53]                           // 000000002A7C: 7E807034
	v_max_f32_e32 v0, v112, v113                               // 000000002A80: 1600E370
	v_max3_f32 v0, v114, v115, v0                              // 000000002A84: D1D30000 0402E772
	v_max3_f32 v0, v116, v117, v0                              // 000000002A8C: D1D30000 0402EB74
	v_max3_f32 v0, v118, v119, v0                              // 000000002A94: D1D30000 0402EF76
	v_max3_f32 v0, v120, v121, v0                              // 000000002A9C: D1D30000 0402F378
	v_max3_f32 v0, v122, v123, v0                              // 000000002AA4: D1D30000 0402F77A
	v_max3_f32 v0, v124, v125, v0                              // 000000002AAC: D1D30000 0402FB7C
	v_max3_f32 v1, v126, v127, v0                              // 000000002AB4: D1D30001 0402FF7E
	v_max_f32_e32 v0, v96, v97                                 // 000000002ABC: 1600C360
	v_max3_f32 v0, v98, v99, v0                                // 000000002AC0: D1D30000 0402C762
	v_max3_f32 v0, v100, v101, v0                              // 000000002AC8: D1D30000 0402CB64
	v_max3_f32 v0, v102, v103, v0                              // 000000002AD0: D1D30000 0402CF66
	v_max3_f32 v0, v104, v105, v0                              // 000000002AD8: D1D30000 0402D368
	v_max3_f32 v0, v106, v107, v0                              // 000000002AE0: D1D30000 0402D76A
	v_max3_f32 v0, v108, v109, v0                              // 000000002AE8: D1D30000 0402DB6C
	v_max3_f32 v2, v110, v111, v0                              // 000000002AF0: D1D30002 0402DF6E
	v_max_f32_e32 v0, v80, v81                                 // 000000002AF8: 1600A350
	v_max3_f32 v0, v82, v83, v0                                // 000000002AFC: D1D30000 0402A752
	v_max3_f32 v0, v84, v85, v0                                // 000000002B04: D1D30000 0402AB54
	v_max3_f32 v0, v86, v87, v0                                // 000000002B0C: D1D30000 0402AF56
	v_max3_f32 v0, v88, v89, v0                                // 000000002B14: D1D30000 0402B358
	v_max3_f32 v0, v90, v91, v0                                // 000000002B1C: D1D30000 0402B75A
	v_max3_f32 v0, v92, v93, v0                                // 000000002B24: D1D30000 0402BB5C
	v_max3_f32 v0, v94, v95, v0                                // 000000002B2C: D1D30000 0402BF5E
	v_max_f32_e32 v3, v64, v65                                 // 000000002B34: 16068340
	v_max3_f32 v3, v66, v67, v3                                // 000000002B38: D1D30003 040E8742
	v_max3_f32 v3, v68, v69, v3                                // 000000002B40: D1D30003 040E8B44
	v_max3_f32 v3, v70, v71, v3                                // 000000002B48: D1D30003 040E8F46
	v_max3_f32 v3, v72, v73, v3                                // 000000002B50: D1D30003 040E9348
	v_max3_f32 v3, v74, v75, v3                                // 000000002B58: D1D30003 040E974A
	v_max3_f32 v3, v76, v77, v3                                // 000000002B60: D1D30003 040E9B4C
	v_max3_f32 v3, v78, v79, v3                                // 000000002B68: D1D30003 040E9F4E
	v_max_f32_e32 v0, v0, v3                                   // 000000002B70: 16000700
	v_max_f32_e32 v2, v1, v2                                   // 000000002B74: 16040501
	v_mov_b32_e32 v3, v2                                       // 000000002B78: 7E060302
	s_nop 1                                                    // 000000002B7C: BF800001
	v_permlane32_swap_b32_e32 v2, v3                           // 000000002B80: 7E04B503
	v_mov_b32_e32 v1, v0                                       // 000000002B84: 7E020300
	s_nop 1                                                    // 000000002B88: BF800001
	v_permlane32_swap_b32_e32 v0, v1                           // 000000002B8C: 7E00B501
	v_max_f32_e32 v0, v0, v1                                   // 000000002B90: 16000300
	v_max_f32_e32 v1, v2, v3                                   // 000000002B94: 16020702
	v_max_f32_e32 v2, v1, v0                                   // 000000002B98: 16040101
	v_mul_f32_e32 v148, v238, v2                               // 000000002B9C: 0B2805EE
	v_fma_f32 v1, v1, v238, -v148                              // 000000002BA0: D1CB0001 8653DD01
	v_floor_f32_e32 v1, v1                                     // 000000002BA8: 7E023F01
	v_med3_f32 v1, v1, s99, 0                                  // 000000002BAC: D1D60001 0200C701
	v_cvt_i32_f32_e32 v2, v1                                   // 000000002BB4: 7E041101
	v_add_u32_e32 v251, 0x7f, v2                               // 000000002BB8: 69F604FF 0000007F
	v_lshlrev_b32_e32 v144, 23, v251                           // 000000002BC0: 2521F697
	v_fma_f32 v0, v0, v238, -v148                              // 000000002BC4: D1CB0000 8653DD00
	v_floor_f32_e32 v0, v0                                     // 000000002BCC: 7E003F00
	v_med3_f32 v0, v0, s99, 0                                  // 000000002BD0: D1D60000 0200C700
	v_cvt_i32_f32_e32 v2, v0                                   // 000000002BD8: 7E041100
	v_add_u32_e32 v149, 0x7f, v2                               // 000000002BDC: 692A04FF 0000007F
	v_lshlrev_b32_e32 v145, 23, v149                           // 000000002BE4: 25232A97
	v_mov_b32_e32 v2, s50                                      // 000000002BE8: 7E040232
	v_fma_f32 v2, v148, s95, v2                                // 000000002BEC: D1CB0002 0408BF94
	v_fma_f32 v152, v1, s95, v2                                // 000000002BF4: D1CB0098 0408BF01
	v_fma_f32 v150, v0, s95, v2                                // 000000002BFC: D1CB0096 0408BF00
	s_mov_b32 s82, s78                                         // 000000002C04: BED2004E
	s_waitcnt vmcnt(0)                                         // 000000002C08: BF8C0F70
	v_readlane_b32 s18, v255, 10                               // 000000002C0C: D2890012 000115FF
	v_readlane_b32 s19, v255, 11                               // 000000002C14: D2890013 000117FF
	s_mov_b64 s[86:87], s[78:79]                               // 000000002C1C: BED6014E
	v_readlane_b32 s17, v255, 17                               // 000000002C20: D2890011 000123FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000002C28: 86927E12
	s_mov_b64 s[84:85], s[76:77]                               // 000000002C2C: BED4014C
	s_mov_b32 s87, s17                                         // 000000002C30: BED70011
	s_cbranch_scc0 38                                          // 000000002C34: BF840026 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x11d0>
	s_cmp_ge_u32 s91, 2                                        // 000000002C38: BF09825B
	s_cbranch_scc1 196                                         // 000000002C3C: BF8500C4 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1450>
	s_cmp_ge_u32 s91, 3                                        // 000000002C40: BF09835B
	s_cbranch_scc1 226                                         // 000000002C44: BF8500E2 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x14d0>
	s_cmp_lt_u32 s91, 4                                        // 000000002C48: BF0A845B
	s_cbranch_scc1 31                                          // 000000002C4C: BF85001F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x11cc>
	s_add_u32 s15, s10, 3                                      // 000000002C50: 800F830A
	s_and_b32 s17, s15, 2                                      // 000000002C54: 8611820F
	s_lshl_b32 s17, s17, 14                                    // 000000002C58: 8E118E11
	s_bitcmp1_b32 s15, 0                                       // 000000002C5C: BF0D800F
	s_cselect_b32 s15, 0x4000, 0                               // 000000002C60: 850F80FF 00004000
	s_or_b32 s15, s17, s15                                     // 000000002C68: 870F0F11
	s_or_b32 s15, s15, s88                                     // 000000002C6C: 870F580F
	s_mov_b32 m0, s15                                          // 000000002C70: BEFC000F
	s_mul_i32 s17, s8, 0x180                                   // 000000002C74: 9211FF08 00000180
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 000000002C7C: E05D1000 111500E9
	s_add_u32 m0, s15, 0x1000                                  // 000000002C84: 807CFF0F 00001000
	s_mul_i32 s17, s8, 0x1a0                                   // 000000002C8C: 9211FF08 000001A0
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 000000002C94: E05D1000 111500E9
	s_or_b32 m0, s15, 0x2000                                   // 000000002C9C: 877CFF0F 00002000
	s_mul_i32 s17, s8, 0x1c0                                   // 000000002CA4: 9211FF08 000001C0
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 000000002CAC: E05D1000 111500E9
	s_add_u32 m0, s15, 0x3000                                  // 000000002CB4: 807CFF0F 00003000
	s_mul_i32 s15, s8, 0x1e0                                   // 000000002CBC: 920FFF08 000001E0
	buffer_load_dwordx4 v233, s[84:87], s15 offen lds          // 000000002CC4: E05D1000 0F1500E9
	s_waitcnt vmcnt(0)                                         // 000000002CCC: BF8C0F70
	s_barrier                                                  // 000000002CD0: BF8A0000
	s_add_u32 s53, s91, -1                                     // 000000002CD4: 8035C15B
	s_cmp_lt_i32 s10, 1                                        // 000000002CD8: BF04810A
	s_mul_i32 s53, s53, s33                                    // 000000002CDC: 92352135
	s_cbranch_scc1 56                                          // 000000002CE0: BF850038 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x12c4>
	s_mov_b32 s17, s16                                         // 000000002CE4: BE910010
	s_mov_b32 s18, s16                                         // 000000002CE8: BE920010
	s_mov_b32 s19, s16                                         // 000000002CEC: BE930010
	s_mov_b32 s20, s16                                         // 000000002CF0: BE940010
	s_mov_b32 s21, s16                                         // 000000002CF4: BE950010
	s_mov_b32 s22, s16                                         // 000000002CF8: BE960010
	s_mov_b32 s23, s16                                         // 000000002CFC: BE970010
	s_mov_b32 s24, s16                                         // 000000002D00: BE980010
	s_mov_b32 s25, s16                                         // 000000002D04: BE990010
	s_mov_b32 s26, s16                                         // 000000002D08: BE9A0010
	s_mov_b32 s27, s16                                         // 000000002D0C: BE9B0010
	s_mov_b32 s28, s16                                         // 000000002D10: BE9C0010
	s_mov_b32 s29, s16                                         // 000000002D14: BE9D0010
	s_mov_b32 s30, s16                                         // 000000002D18: BE9E0010
	s_mov_b32 s31, s16                                         // 000000002D1C: BE9F0010
	s_cmp_lt_i32 s10, 2                                        // 000000002D20: BF04820A
	s_cbranch_scc0 95                                          // 000000002D24: BF84005F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x13a4>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000002D28: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000002D2C: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000002D30: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000002D34: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000002D38: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000002D3C: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000002D40: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000002D44: 7E1C701E
	s_mov_b32 s15, 0                                           // 000000002D48: BE8F0080
	v_mov_b32_e32 v250, 0                                      // 000000002D4C: 7FF40280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000002D50: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000002D54: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 000000002D58: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 000000002D5C: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 000000002D60: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 000000002D64: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 000000002D68: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 000000002D6C: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 000000002D70: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 000000002D74: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 000000002D78: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 000000002D7C: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 000000002D80: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 000000002D84: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 000000002D88: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 000000002D8C: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 000000002D90: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 000000002D94: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 000000002D98: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 000000002D9C: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 000000002DA0: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 000000002DA4: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 000000002DA8: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000002DAC: 7E607100
	v_readlane_b32 s17, v255, 5                                // 000000002DB0: D2890011 00010BFF
	v_readlane_b32 s20, v255, 4                                // 000000002DB8: D2890014 000109FF
	s_branch 869                                               // 000000002DC0: BF820365 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2058>
	s_mov_b32 s17, s16                                         // 000000002DC4: BE910010
	s_mov_b32 s18, s16                                         // 000000002DC8: BE920010
	s_mov_b32 s19, s16                                         // 000000002DCC: BE930010
	s_mov_b32 s20, s16                                         // 000000002DD0: BE940010
	s_mov_b32 s21, s16                                         // 000000002DD4: BE950010
	s_mov_b32 s22, s16                                         // 000000002DD8: BE960010
	s_mov_b32 s23, s16                                         // 000000002DDC: BE970010
	s_mov_b32 s24, s16                                         // 000000002DE0: BE980010
	s_mov_b32 s25, s16                                         // 000000002DE4: BE990010
	s_mov_b32 s26, s16                                         // 000000002DE8: BE9A0010
	s_mov_b32 s27, s16                                         // 000000002DEC: BE9B0010
	s_mov_b32 s28, s16                                         // 000000002DF0: BE9C0010
	s_mov_b32 s29, s16                                         // 000000002DF4: BE9D0010
	s_mov_b32 s30, s16                                         // 000000002DF8: BE9E0010
	s_mov_b32 s31, s16                                         // 000000002DFC: BE9F0010
	s_mov_b32 s15, 0                                           // 000000002E00: BE8F0080
	s_cmp_lg_u32 s10, 0                                        // 000000002E04: BF07800A
	s_cbranch_scc0 182                                         // 000000002E08: BF8400B6 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x15e4>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000002E0C: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000002E10: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000002E14: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000002E18: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000002E1C: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000002E20: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000002E24: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000002E28: 7E1C701E
	v_mov_b32_e32 v250, 0                                      // 000000002E2C: 7FF40280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000002E30: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000002E34: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 000000002E38: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 000000002E3C: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 000000002E40: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 000000002E44: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 000000002E48: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 000000002E4C: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 000000002E50: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 000000002E54: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 000000002E58: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 000000002E5C: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 000000002E60: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 000000002E64: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 000000002E68: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 000000002E6C: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 000000002E70: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 000000002E74: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 000000002E78: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 000000002E7C: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 000000002E80: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 000000002E84: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 000000002E88: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000002E8C: 7E607100
	v_readlane_b32 s17, v255, 5                                // 000000002E90: D2890011 00010BFF
	v_readlane_b32 s20, v255, 4                                // 000000002E98: D2890014 000109FF
	s_branch 2057                                              // 000000002EA0: BF820809 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x33c8>
	s_mov_b32 s15, 0                                           // 000000002EA4: BE8F0080
	s_cmp_eq_u32 s10, 2                                        // 000000002EA8: BF06820A
	s_cbranch_scc0 103                                         // 000000002EAC: BF840067 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x154c>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 000000002EB0: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000002EB4: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000002EB8: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000002EBC: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 000000002EC0: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000002EC4: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000002EC8: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000002ECC: 7E1C701E
	v_mov_b32_e32 v250, 0                                      // 000000002ED0: 7FF40280
	v_mov_b32_e32 v253, v149                                   // 000000002ED4: 7FFA0395
	v_mov_b32_e32 v252, v148                                   // 000000002ED8: 7FF80394
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000002EDC: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000002EE0: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 000000002EE4: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 000000002EE8: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 000000002EEC: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 000000002EF0: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 000000002EF4: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 000000002EF8: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 000000002EFC: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 000000002F00: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 000000002F04: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 000000002F08: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 000000002F0C: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 000000002F10: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 000000002F14: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 000000002F18: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 000000002F1C: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 000000002F20: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 000000002F24: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 000000002F28: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 000000002F2C: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 000000002F30: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 000000002F34: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000002F38: 7E607100
	v_readlane_b32 s17, v255, 5                                // 000000002F3C: D2890011 00010BFF
	v_readlane_b32 s20, v255, 4                                // 000000002F44: D2890014 000109FF
	s_branch 1392                                              // 000000002F4C: BF820570 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2a10>
	s_add_u32 s17, s10, 1                                      // 000000002F50: 8011810A
	s_and_b32 s18, s17, 2                                      // 000000002F54: 86128211
	s_lshl_b32 s18, s18, 14                                    // 000000002F58: 8E128E12
	s_bitcmp1_b32 s17, 0                                       // 000000002F5C: BF0D8011
	s_cselect_b32 s17, s93, 0x10000                            // 000000002F60: 8511FF5D 00010000
	s_or_b32 s17, s18, s17                                     // 000000002F68: 87111112
	s_or_b32 s17, s17, s88                                     // 000000002F6C: 87115811
	s_mov_b32 m0, s17                                          // 000000002F70: BEFC0011
	s_mul_i32 s18, s8, 0xc0                                    // 000000002F74: 9212FF08 000000C0
	buffer_load_dwordx4 v235, s[80:83], s33 offen lds          // 000000002F7C: E05D1000 211400EB
	s_add_u32 m0, s17, 0x1000                                  // 000000002F84: 807CFF11 00001000
	s_nop 0                                                    // 000000002F8C: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000002F90: E05D1000 121400EB
	s_add_u32 m0, s17, 0x2000                                  // 000000002F98: 807CFF11 00002000
	s_mul_i32 s18, s8, 0x84                                    // 000000002FA0: 9212FF08 00000084
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000002FA8: E05D1000 121400EB
	s_add_u32 m0, s17, 0x3000                                  // 000000002FB0: 807CFF11 00003000
	s_mul_i32 s17, s8, 0xc4                                    // 000000002FB8: 9211FF08 000000C4
	buffer_load_dwordx4 v235, s[80:83], s17 offen lds          // 000000002FC0: E05D1000 111400EB
	s_cmp_lt_u32 s91, 3                                        // 000000002FC8: BF0A835B
	s_cbranch_scc1 65310                                       // 000000002FCC: BF85FF1E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1148>
	s_andn2_b32 s17, 2, s10                                    // 000000002FD0: 89110A82
	s_lshl_b32 s17, s17, 14                                    // 000000002FD4: 8E118E11
	s_or_b32 s15, s17, s15                                     // 000000002FD8: 870F0F11
	s_add_u32 s15, s15, s88                                    // 000000002FDC: 800F580F
	s_mov_b32 m0, s15                                          // 000000002FE0: BEFC000F
	v_readlane_b32 s17, v255, 5                                // 000000002FE4: D2890011 00010BFF
	s_nop 4                                                    // 000000002FEC: BF800004
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 000000002FF0: E05D1000 111500E9
	s_add_u32 m0, s15, 0x1000                                  // 000000002FF8: 807CFF0F 00001000
	s_mul_i32 s17, s8, 0x120                                   // 000000003000: 9211FF08 00000120
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 000000003008: E05D1000 111500E9
	s_add_u32 m0, s15, 0x2000                                  // 000000003010: 807CFF0F 00002000
	s_mul_i32 s17, s8, 0x140                                   // 000000003018: 9211FF08 00000140
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 000000003020: E05D1000 111500E9
	s_add_u32 m0, s15, 0x3000                                  // 000000003028: 807CFF0F 00003000
	s_mul_i32 s15, s8, 0x160                                   // 000000003030: 920FFF08 00000160
	buffer_load_dwordx4 v233, s[84:87], s15 offen lds          // 000000003038: E05D1000 0F1500E9
	s_cmp_lt_u32 s91, 4                                        // 000000003040: BF0A845B
	s_cbranch_scc1 65313                                       // 000000003044: BF85FF21 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x11cc>
	s_branch 65281                                             // 000000003048: BF82FF01 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1150>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000304C: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 000000003050: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 000000003054: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 000000003058: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000305C: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 000000003060: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 000000003064: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000003068: 7E1C701E
	v_mov_b32_e32 v250, 0                                      // 00000000306C: 7FF40280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000003070: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000003074: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 000000003078: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000307C: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 000000003080: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 000000003084: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 000000003088: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000308C: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 000000003090: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 000000003094: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 000000003098: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000309C: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 0000000030A0: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 0000000030A4: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 0000000030A8: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 0000000030AC: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 0000000030B0: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 0000000030B4: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 0000000030B8: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 0000000030BC: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 0000000030C0: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 0000000030C4: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 0000000030C8: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 0000000030CC: 7E607100
	v_readlane_b32 s17, v255, 5                                // 0000000030D0: D2890011 00010BFF
	v_readlane_b32 s20, v255, 4                                // 0000000030D8: D2890014 000109FF
	s_branch 1913                                              // 0000000030E0: BF820779 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x33c8>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 0000000030E4: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 0000000030E8: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 0000000030EC: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 0000000030F0: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 0000000030F4: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 0000000030F8: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 0000000030FC: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 000000003100: 7E1C701E
	v_mov_b32_e32 v250, 0                                      // 000000003104: 7FF40280
	s_mov_b32 s15, s10                                         // 000000003108: BE8F000A
	v_mov_b32_e32 v253, v149                                   // 00000000310C: 7FFA0395
	v_mov_b32_e32 v252, v148                                   // 000000003110: 7FF80394
	v_mov_b64_e32 v[30:31], v[14:15]                           // 000000003114: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 000000003118: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000311C: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 000000003120: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 000000003124: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 000000003128: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000312C: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 000000003130: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 000000003134: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 000000003138: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000313C: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 000000003140: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 000000003144: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 000000003148: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000314C: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 000000003150: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 000000003154: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 000000003158: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000315C: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 000000003160: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 000000003164: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 000000003168: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000316C: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 000000003170: 7E607100
	v_readlane_b32 s17, v255, 5                                // 000000003174: D2890011 00010BFF
	v_readlane_b32 s20, v255, 4                                // 00000000317C: D2890014 000109FF
	s_branch 6                                                 // 000000003184: BF820006 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x16a0>
	s_mov_b64 s[0:1], s[20:21]                                 // 000000003188: BE800114
	s_mov_b32 s3, s17                                          // 00000000318C: BE830011
	global_store_dword v0, v32, s[12:13]                       // 000000003190: DC708000 000C2000
	s_branch 64479                                             // 000000003198: BF82FBDF <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x618>
	s_nop 0                                                    // 00000000319C: BF800000
	s_add_u32 s18, s15, 1                                      // 0000000031A0: 8012810F
	s_cmp_ge_u32 s18, s35                                      // 0000000031A4: BF092312
	s_cbranch_scc1 2491                                        // 0000000031A8: BF8509BB <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d98>
	s_setprio 0                                                // 0000000031AC: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 0000000031B0: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 0000000031B8: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 0000000031C0: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 0000000031C8: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 0000000031D0: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 0000000031D8: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 0000000031E0: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 0000000031E8: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 0000000031F0: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 0000000031F8: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 000000003200: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 000000003208: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 000000003210: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 000000003218: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 000000003220: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 000000003228: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 000000003230: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000003238: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 000000003240: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000003248: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 000000003250: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000003258: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 000000003260: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000003268: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 000000003270: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000003278: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000003280: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 000000003288: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000003290: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 000000003298: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 0000000032A0: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 0000000032A8: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 0000000032B0: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 0000000032B8: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 0000000032C0: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 0000000032C8: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 0000000032D0: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 0000000032D8: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 0000000032E0: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 0000000032E8: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 0000000032F0: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 0000000032F8: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 000000003300: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 000000003308: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 000000003310: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 000000003318: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 000000003320: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 000000003328: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 000000003330: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000003338: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 000000003340: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000003348: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 000000003350: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000003358: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 000000003360: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000003368: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 000000003370: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000003378: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 000000003380: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 000000003388: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 000000003390: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 000000003398: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 0000000033A0: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 0000000033A8: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 0000000033B0: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 0000000033B8: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 0000000033C0: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 0000000033C8: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 0000000033D0: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 0000000033D8: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 0000000033E0: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 0000000033E8: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 0000000033F0: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 0000000033F8: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 000000003400: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 000000003408: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 000000003410: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 000000003418: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 000000003420: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 000000003428: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 000000003430: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000003438: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 000000003440: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000003448: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 000000003450: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000003458: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 000000003460: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000003468: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 000000003470: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000003478: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 000000003480: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 000000003488: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 000000003490: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 000000003498: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 0000000034A0: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 0000000034A8: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 0000000034B0: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 0000000034B8: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 0000000034C0: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 0000000034C8: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 0000000034D0: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 0000000034D8: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 0000000034E0: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 0000000034E8: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 0000000034F0: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 0000000034F8: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 000000003500: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 000000003508: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 000000003510: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 000000003518: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 000000003520: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 000000003528: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000003530: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000003538: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000003540: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000003548: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000003550: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 000000003558: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 000000003560: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 000000003568: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000003570: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 000000003578: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 000000003580: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 000000003588: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 000000003590: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 000000003598: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 0000000035A0: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 0000000035A8: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 0000000035B0: 7F320398
	v_mov_b32_e32 v151, v150                                   // 0000000035B4: 7F2E0396
	ds_read_b128 v[72:75], v231 offset:16384                   // 0000000035B8: D9FE4000 480000E7
	ds_read_b128 v[76:79], v231 offset:16400                   // 0000000035C0: D9FE4010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:20480                   // 0000000035C8: D9FE5000 500000E7
	ds_read_b128 v[84:87], v231 offset:20496                   // 0000000035D0: D9FE5010 540000E7
	s_barrier                                                  // 0000000035D8: BF8A0000
	s_setprio 1                                                // 0000000035DC: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 0000000035E0: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 0000000035E8: D3AD0044 020311C0
	ds_read_b128 v[146:149], v231 offset:24576                 // 0000000035F0: D9FE6000 920000E7
	ds_read_b128 v[150:153], v231 offset:24592                 // 0000000035F8: D9FE6010 960000E7
	ds_read_b128 v[154:157], v231 offset:28672                 // 000000003600: D9FE7000 9A0000E7
	ds_read_b128 v[158:161], v231 offset:28688                 // 000000003608: D9FE7010 9E0000E7
	s_waitcnt lgkmcnt(4)                                       // 000000003610: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 000000003614: D3AE0070 0203B948
	ds_read_b128 v[162:165], v232 offset:16384                 // 00000000361C: D9FE4000 A20000E8
	ds_read_b128 v[166:169], v232 offset:16400                 // 000000003624: D9FE4010 A60000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 00000000362C: D3AE0060 0203B950
	ds_read_b128 v[170:173], v232 offset:20480                 // 000000003634: D9FE5000 AA0000E8
	ds_read_b128 v[174:177], v232 offset:20496                 // 00000000363C: D9FE5010 AE0000E8
	s_waitcnt lgkmcnt(4)                                       // 000000003644: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[146:153], v[220:227], 0// 000000003648: D3AE0050 0203B992
	ds_read_b128 v[146:149], v232 offset:24576                 // 000000003650: D9FE6000 920000E8
	ds_read_b128 v[150:153], v232 offset:24592                 // 000000003658: D9FE6010 960000E8
	s_min_u32 s18, s20, s53                                    // 000000003660: 83923514
	s_add_u32 m0, s88, s16                                     // 000000003664: 807C1058
	s_nop 0                                                    // 000000003668: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 00000000366C: E05D1000 121500E9
	v_mul_f32_e32 v72, v144, v64                               // 000000003674: 0A908190
	v_add_f32_e32 v72, v250, v72                               // 000000003678: 029091FA
	v_mul_f32_e32 v73, v145, v68                               // 00000000367C: 0A928991
	v_add_f32_e32 v250, v72, v73                               // 000000003680: 03F49348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[154:161], v[220:227], 0// 000000003684: D3AE0040 0203B99A
	ds_read_b128 v[154:157], v232 offset:28672                 // 00000000368C: D9FE7000 9A0000E8
	ds_read_b128 v[158:161], v232 offset:28688                 // 000000003694: D9FE7010 9E0000E8
	s_add_u32 m0, s88, s48                                     // 00000000369C: 807C3058
	s_nop 0                                                    // 0000000036A0: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 0000000036A4: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 0000000036AC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[162:169], v[200:207], v[112:127]// 0000000036B0: D3AE0070 05C391A2
	ds_read_b64_tr_b8 v[162:163], v246                         // 0000000036B8: D9C40000 A20000F6
	ds_read_b64_tr_b8 v[164:165], v246 offset:1024             // 0000000036C0: D9C40400 A40000F6
	ds_read_b64_tr_b8 v[166:167], v246 offset:2048             // 0000000036C8: D9C40800 A60000F6
	ds_read_b64_tr_b8 v[168:169], v246 offset:3072             // 0000000036D0: D9C40C00 A80000F6
	s_min_u32 s18, s17, s53                                    // 0000000036D8: 83923511
	s_add_u32 m0, s88, s96                                     // 0000000036DC: 807C6058
	s_nop 0                                                    // 0000000036E0: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 0000000036E4: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[170:177], v[200:207], v[96:111]// 0000000036EC: D3AE0060 058391AA
	ds_read_b64_tr_b8 v[170:171], v246 offset:256              // 0000000036F4: D9C40100 AA0000F6
	ds_read_b64_tr_b8 v[172:173], v246 offset:1280             // 0000000036FC: D9C40500 AC0000F6
	ds_read_b64_tr_b8 v[174:175], v246 offset:2304             // 000000003704: D9C40900 AE0000F6
	ds_read_b64_tr_b8 v[176:177], v246 offset:3328             // 00000000370C: D9C40D00 B00000F6
	s_add_u32 m0, s88, s36                                     // 000000003714: 807C2458
	s_nop 0                                                    // 000000003718: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 00000000371C: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 000000003724: 80142114
	s_add_u32 s17, s17, s33                                    // 000000003728: 80112111
	v_max_f32_e32 v144, v112, v113                             // 00000000372C: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 000000003730: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 000000003738: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 000000003740: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 000000003748: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 000000003750: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 000000003758: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 000000003760: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 000000003768: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[146:153], v[200:207], v[80:95]// 00000000376C: D3AE0050 05439192
	ds_read_b64_tr_b8 v[178:179], v246 offset:512              // 000000003774: D9C40200 B20000F6
	ds_read_b64_tr_b8 v[180:181], v246 offset:1536             // 00000000377C: D9C40600 B40000F6
	ds_read_b64_tr_b8 v[182:183], v246 offset:2560             // 000000003784: D9C40A00 B60000F6
	ds_read_b64_tr_b8 v[184:185], v246 offset:3584             // 00000000378C: D9C40E00 B80000F6
	v_max_f32_e32 v145, v96, v97                               // 000000003794: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 000000003798: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 0000000037A0: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 0000000037A8: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 0000000037B0: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 0000000037B8: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 0000000037C0: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 0000000037C8: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[154:161], v[200:207], v[64:79]// 0000000037D0: D3AE0040 0503919A
	s_nop 3                                                    // 0000000037D8: BF800003
	v_max_f32_e32 v146, v80, v81                               // 0000000037DC: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 0000000037E0: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 0000000037E8: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 0000000037F0: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 0000000037F8: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 000000003800: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 000000003808: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 000000003810: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 000000003818: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[162:169], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 00000000381C: D3AC0000 0003F7F2 D3AE0830 04C301A2
	ds_read_b64_tr_b8 v[148:149], v246 offset:768              // 00000000382C: D9C40300 940000F6
	ds_read_b64_tr_b8 v[150:151], v246 offset:1792             // 000000003834: D9C40700 960000F6
	ds_read_b64_tr_b8 v[152:153], v246 offset:2816             // 00000000383C: D9C40B00 980000F6
	ds_read_b64_tr_b8 v[154:155], v246 offset:3840             // 000000003844: D9C40F00 9A0000F6
	ds_read_b64_tr_b8 v[156:157], v246 offset:4096             // 00000000384C: D9C41000 9C0000F6
	ds_read_b64_tr_b8 v[158:159], v246 offset:5120             // 000000003854: D9C41400 9E0000F6
	ds_read_b64_tr_b8 v[160:161], v246 offset:6144             // 00000000385C: D9C41800 A00000F6
	ds_read_b64_tr_b8 v[162:163], v246 offset:7168             // 000000003864: D9C41C00 A20000F6
	v_max_f32_e32 v147, v64, v65                               // 00000000386C: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 000000003870: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 000000003878: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 000000003880: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 000000003888: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 000000003890: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 000000003898: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 0000000038A0: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[170:177], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 0000000038A8: D3AC0000 0003F7F2 D3AE0820 048301AA
	v_max_f32_e32 v144, v144, v145                             // 0000000038B8: 17212390
	v_max_f32_e32 v146, v146, v147                             // 0000000038BC: 17252792
	v_mov_b32_e32 v145, v144                                   // 0000000038C0: 7F220390
	v_mov_b32_e32 v147, v146                                   // 0000000038C4: 7F260392
	s_nop 0                                                    // 0000000038C8: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 0000000038CC: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 0000000038D0: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 0000000038D4: 17212390
	v_max_f32_e32 v145, v146, v147                             // 0000000038D8: 17232792
	s_waitcnt lgkmcnt(4)                                       // 0000000038DC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[178:185], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 0000000038E0: D3AC0000 0003F7F2 D3AE0810 044301B2
	ds_read_b64_tr_b8 v[164:165], v246 offset:4352             // 0000000038F0: D9C41100 A40000F6
	ds_read_b64_tr_b8 v[166:167], v246 offset:5376             // 0000000038F8: D9C41500 A60000F6
	ds_read_b64_tr_b8 v[168:169], v246 offset:6400             // 000000003900: D9C41900 A80000F6
	ds_read_b64_tr_b8 v[170:171], v246 offset:7424             // 000000003908: D9C41D00 AA0000F6
	ds_read_b64_tr_b8 v[172:173], v246 offset:4608             // 000000003910: D9C41200 AC0000F6
	ds_read_b64_tr_b8 v[174:175], v246 offset:5632             // 000000003918: D9C41600 AE0000F6
	ds_read_b64_tr_b8 v[176:177], v246 offset:6656             // 000000003920: D9C41A00 B00000F6
	ds_read_b64_tr_b8 v[178:179], v246 offset:7680             // 000000003928: D9C41E00 B20000F6
	v_max_f32_e32 v146, v144, v145                             // 000000003930: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 000000003934: 0B2525EE
	v_max_f32_e32 v146, v252, v146                             // 000000003938: 172525FC
	v_sub_f32_e32 v147, v146, v252                             // 00000000393C: 0527F992
	v_cmp_lt_f32_e32 vcc, s37, v147                            // 000000003940: 7C832625
	s_cmp_lg_u64 vcc, 0                                        // 000000003944: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 000000003948: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000394C: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[148:155], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000003950: D3AC0000 0003F7F2 D3AE0800 04030194
	v_cndmask_b32_e64 v148, v252, v146, s[18:19]               // 000000003960: D1000094 004B25FC
	v_fma_f32 v128, v144, v238, -v148                          // 000000003968: D1CB0080 8653DD90
	v_floor_f32_e32 v128, v128                                 // 000000003970: 7F003F80
	v_med3_f32 v128, v128, s99, 0                              // 000000003974: D1D60080 0200C780
	v_cvt_i32_f32_e32 v129, v128                               // 00000000397C: 7F021180
	v_add_u32_e32 v251, 0x7f, v129                             // 000000003980: 69F702FF 0000007F
	v_lshlrev_b32_e32 v144, 23, v251                           // 000000003988: 2521F697
	v_fma_f32 v129, v145, v238, -v148                          // 00000000398C: D1CB0081 8653DD91
	s_waitcnt lgkmcnt(4)                                       // 000000003994: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000003998: D3AC0000 0003FBF2 D3AE0830 04C3119C
	ds_read_b64_tr_b8 v[154:155], v246 offset:4864             // 0000000039A8: D9C41300 9A0000F6
	ds_read_b64_tr_b8 v[156:157], v246 offset:5888             // 0000000039B0: D9C41700 9C0000F6
	ds_read_b64_tr_b8 v[158:159], v246 offset:6912             // 0000000039B8: D9C41B00 9E0000F6
	ds_read_b64_tr_b8 v[160:161], v246 offset:7936             // 0000000039C0: D9C41F00 A00000F6
	v_floor_f32_e32 v129, v129                                 // 0000000039C8: 7F023F81
	v_med3_f32 v129, v129, s99, 0                              // 0000000039CC: D1D60081 0200C781
	v_cvt_i32_f32_e32 v130, v129                               // 0000000039D4: 7F041181
	v_add_u32_e32 v149, 0x7f, v130                             // 0000000039D8: 692B04FF 0000007F
	v_lshlrev_b32_e32 v145, 23, v149                           // 0000000039E0: 25232A97
	v_mov_b32_e32 v130, s50                                    // 0000000039E4: 7F040232
	v_fma_f32 v130, v148, s95, v130                            // 0000000039E8: D1CB0082 0608BF94
	v_fma_f32 v152, v128, s95, v130                            // 0000000039F0: D1CB0098 0608BF80
	v_fma_f32 v150, v129, s95, v130                            // 0000000039F8: D1CB0096 0608BF81
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000003A00: D3AC0000 0003FBF2 D3AE0820 048311A4
	s_waitcnt lgkmcnt(0)                                       // 000000003A10: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000003A14: D3AC0000 0003FBF2 D3AE0810 044311AC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[154:161], v[136:143], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000003A24: D3AC0000 0003FBF2 D3AE0800 0403119A
	s_cmp_eq_u32 s21, 0                                        // 000000003A34: BF068015
	s_cbranch_scc1 68                                          // 000000003A38: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x204c>
	v_sub_f32_e32 v128, v252, v148                             // 000000003A3C: 050129FC
	v_exp_f32_e32 v128, v128                                   // 000000003A40: 7F004180
	s_nop 0                                                    // 000000003A44: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 000000003A48: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 000000003A50: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000003A58: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000003A60: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000003A68: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000003A70: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000003A78: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000003A80: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000003A88: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000003A90: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000003A98: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000003AA0: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000003AA8: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000003AB0: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000003AB8: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000003AC0: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000003AC8: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000003AD0: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000003AD8: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000003AE0: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000003AE8: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000003AF0: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000003AF8: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 000000003B00: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 000000003B08: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 000000003B10: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 000000003B18: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 000000003B20: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 000000003B28: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 000000003B30: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 000000003B38: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 000000003B40: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 000000003B48: 0BF501FA
	s_waitcnt vmcnt(4)                                         // 000000003B4C: BF8C0F74
	s_barrier                                                  // 000000003B50: BF8A0000
	s_add_u32 s15, s15, 1                                      // 000000003B54: 800F810F
	s_add_u32 s18, s15, 1                                      // 000000003B58: 8012810F
	s_cmp_ge_u32 s18, s35                                      // 000000003B5C: BF092312
	s_cbranch_scc1 1867                                        // 000000003B60: BF85074B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d90>
	s_setprio 0                                                // 000000003B64: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000003B68: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 000000003B70: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 000000003B78: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 000000003B80: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 000000003B88: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 000000003B90: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 000000003B98: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 000000003BA0: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 000000003BA8: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 000000003BB0: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 000000003BB8: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 000000003BC0: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 000000003BC8: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 000000003BD0: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 000000003BD8: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 000000003BE0: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 000000003BE8: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000003BF0: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 000000003BF8: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000003C00: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 000000003C08: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000003C10: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 000000003C18: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000003C20: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 000000003C28: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000003C30: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000003C38: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 000000003C40: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000003C48: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 000000003C50: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 000000003C58: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 000000003C60: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 000000003C68: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 000000003C70: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 000000003C78: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 000000003C80: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 000000003C88: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 000000003C90: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 000000003C98: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 000000003CA0: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 000000003CA8: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 000000003CB0: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 000000003CB8: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 000000003CC0: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 000000003CC8: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 000000003CD0: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 000000003CD8: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 000000003CE0: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 000000003CE8: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000003CF0: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 000000003CF8: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000003D00: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 000000003D08: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000003D10: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 000000003D18: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000003D20: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 000000003D28: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000003D30: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 000000003D38: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 000000003D40: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 000000003D48: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 000000003D50: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 000000003D58: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 000000003D60: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 000000003D68: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 000000003D70: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 000000003D78: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 000000003D80: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 000000003D88: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 000000003D90: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 000000003D98: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 000000003DA0: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 000000003DA8: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 000000003DB0: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 000000003DB8: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 000000003DC0: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 000000003DC8: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 000000003DD0: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 000000003DD8: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 000000003DE0: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 000000003DE8: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000003DF0: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 000000003DF8: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000003E00: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 000000003E08: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000003E10: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 000000003E18: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000003E20: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 000000003E28: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000003E30: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 000000003E38: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 000000003E40: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 000000003E48: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 000000003E50: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 000000003E58: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 000000003E60: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 000000003E68: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000003E70: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 000000003E78: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 000000003E80: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 000000003E88: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 000000003E90: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 000000003E98: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 000000003EA0: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 000000003EA8: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 000000003EB0: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 000000003EB8: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 000000003EC0: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 000000003EC8: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 000000003ED0: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 000000003ED8: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 000000003EE0: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000003EE8: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000003EF0: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000003EF8: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000003F00: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000003F08: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 000000003F10: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 000000003F18: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 000000003F20: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000003F28: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 000000003F30: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 000000003F38: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 000000003F40: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 000000003F48: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 000000003F50: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 000000003F58: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 000000003F60: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 000000003F68: 7F320398
	v_mov_b32_e32 v151, v150                                   // 000000003F6C: 7F2E0396
	ds_read_b128 v[72:75], v231 offset:32768                   // 000000003F70: D9FE8000 480000E7
	ds_read_b128 v[76:79], v231 offset:32784                   // 000000003F78: D9FE8010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:36864                   // 000000003F80: D9FE9000 500000E7
	ds_read_b128 v[84:87], v231 offset:36880                   // 000000003F88: D9FE9010 540000E7
	s_barrier                                                  // 000000003F90: BF8A0000
	s_setprio 1                                                // 000000003F94: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 000000003F98: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 000000003FA0: D3AD0044 020311C0
	ds_read_b128 v[150:153], v231 offset:40960                 // 000000003FA8: D9FEA000 960000E7
	ds_read_b128 v[154:157], v231 offset:40976                 // 000000003FB0: D9FEA010 9A0000E7
	ds_read_b128 v[158:161], v231 offset:45056                 // 000000003FB8: D9FEB000 9E0000E7
	ds_read_b128 v[162:165], v231 offset:45072                 // 000000003FC0: D9FEB010 A20000E7
	s_waitcnt lgkmcnt(4)                                       // 000000003FC8: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 000000003FCC: D3AE0070 0203B948
	ds_read_b128 v[166:169], v232 offset:32768                 // 000000003FD4: D9FE8000 A60000E8
	ds_read_b128 v[170:173], v232 offset:32784                 // 000000003FDC: D9FE8010 AA0000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 000000003FE4: D3AE0060 0203B950
	ds_read_b128 v[174:177], v232 offset:36864                 // 000000003FEC: D9FE9000 AE0000E8
	ds_read_b128 v[178:181], v232 offset:36880                 // 000000003FF4: D9FE9010 B20000E8
	s_waitcnt lgkmcnt(4)                                       // 000000003FFC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[150:157], v[220:227], 0// 000000004000: D3AE0050 0203B996
	ds_read_b128 v[150:153], v232 offset:40960                 // 000000004008: D9FEA000 960000E8
	ds_read_b128 v[154:157], v232 offset:40976                 // 000000004010: D9FEA010 9A0000E8
	s_min_u32 s18, s20, s53                                    // 000000004018: 83923514
	s_add_u32 m0, s88, s98                                     // 00000000401C: 807C6258
	s_nop 0                                                    // 000000004020: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000004024: E05D1000 121500E9
	v_mul_f32_e32 v72, v144, v64                               // 00000000402C: 0A908190
	v_add_f32_e32 v72, v250, v72                               // 000000004030: 029091FA
	v_mul_f32_e32 v73, v145, v68                               // 000000004034: 0A928991
	v_add_f32_e32 v250, v72, v73                               // 000000004038: 03F49348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[158:165], v[220:227], 0// 00000000403C: D3AE0040 0203B99E
	ds_read_b128 v[158:161], v232 offset:45056                 // 000000004044: D9FEB000 9E0000E8
	ds_read_b128 v[162:165], v232 offset:45072                 // 00000000404C: D9FEB010 A20000E8
	s_add_u32 m0, s88, s42                                     // 000000004054: 807C2A58
	s_nop 0                                                    // 000000004058: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 00000000405C: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 000000004064: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[166:173], v[200:207], v[112:127]// 000000004068: D3AE0070 05C391A6
	ds_read_b64_tr_b8 v[166:167], v247                         // 000000004070: D9C40000 A60000F7
	ds_read_b64_tr_b8 v[168:169], v247 offset:1024             // 000000004078: D9C40400 A80000F7
	ds_read_b64_tr_b8 v[170:171], v247 offset:2048             // 000000004080: D9C40800 AA0000F7
	ds_read_b64_tr_b8 v[172:173], v247 offset:3072             // 000000004088: D9C40C00 AC0000F7
	s_min_u32 s18, s17, s53                                    // 000000004090: 83923511
	s_add_u32 m0, s88, s49                                     // 000000004094: 807C3158
	s_nop 0                                                    // 000000004098: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 00000000409C: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[174:181], v[200:207], v[96:111]// 0000000040A4: D3AE0060 058391AE
	ds_read_b64_tr_b8 v[174:175], v247 offset:256              // 0000000040AC: D9C40100 AE0000F7
	ds_read_b64_tr_b8 v[176:177], v247 offset:1280             // 0000000040B4: D9C40500 B00000F7
	ds_read_b64_tr_b8 v[178:179], v247 offset:2304             // 0000000040BC: D9C40900 B20000F7
	ds_read_b64_tr_b8 v[180:181], v247 offset:3328             // 0000000040C4: D9C40D00 B40000F7
	s_add_u32 m0, s88, s43                                     // 0000000040CC: 807C2B58
	s_nop 0                                                    // 0000000040D0: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 0000000040D4: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 0000000040DC: 80142114
	s_add_u32 s17, s17, s33                                    // 0000000040E0: 80112111
	v_max_f32_e32 v144, v112, v113                             // 0000000040E4: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 0000000040E8: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 0000000040F0: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 0000000040F8: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 000000004100: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 000000004108: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 000000004110: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 000000004118: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 000000004120: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[150:157], v[200:207], v[80:95]// 000000004124: D3AE0050 05439196
	ds_read_b64_tr_b8 v[150:151], v247 offset:512              // 00000000412C: D9C40200 960000F7
	ds_read_b64_tr_b8 v[152:153], v247 offset:1536             // 000000004134: D9C40600 980000F7
	ds_read_b64_tr_b8 v[154:155], v247 offset:2560             // 00000000413C: D9C40A00 9A0000F7
	ds_read_b64_tr_b8 v[156:157], v247 offset:3584             // 000000004144: D9C40E00 9C0000F7
	v_max_f32_e32 v145, v96, v97                               // 00000000414C: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 000000004150: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 000000004158: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 000000004160: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 000000004168: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 000000004170: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 000000004178: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 000000004180: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[158:165], v[200:207], v[64:79]// 000000004188: D3AE0040 0503919E
	s_nop 3                                                    // 000000004190: BF800003
	v_max_f32_e32 v146, v80, v81                               // 000000004194: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 000000004198: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 0000000041A0: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 0000000041A8: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 0000000041B0: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 0000000041B8: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 0000000041C0: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 0000000041C8: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 0000000041D0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[166:173], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 0000000041D4: D3AC0000 0003F7F2 D3AE0830 04C301A6
	ds_read_b64_tr_b8 v[158:159], v247 offset:768              // 0000000041E4: D9C40300 9E0000F7
	ds_read_b64_tr_b8 v[160:161], v247 offset:1792             // 0000000041EC: D9C40700 A00000F7
	ds_read_b64_tr_b8 v[162:163], v247 offset:2816             // 0000000041F4: D9C40B00 A20000F7
	ds_read_b64_tr_b8 v[164:165], v247 offset:3840             // 0000000041FC: D9C40F00 A40000F7
	ds_read_b64_tr_b8 v[166:167], v247 offset:4096             // 000000004204: D9C41000 A60000F7
	ds_read_b64_tr_b8 v[168:169], v247 offset:5120             // 00000000420C: D9C41400 A80000F7
	ds_read_b64_tr_b8 v[170:171], v247 offset:6144             // 000000004214: D9C41800 AA0000F7
	ds_read_b64_tr_b8 v[172:173], v247 offset:7168             // 00000000421C: D9C41C00 AC0000F7
	v_max_f32_e32 v147, v64, v65                               // 000000004224: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 000000004228: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 000000004230: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 000000004238: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 000000004240: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 000000004248: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 000000004250: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 000000004258: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[174:181], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000004260: D3AC0000 0003F7F2 D3AE0820 048301AE
	v_max_f32_e32 v144, v144, v145                             // 000000004270: 17212390
	v_max_f32_e32 v146, v146, v147                             // 000000004274: 17252792
	v_mov_b32_e32 v145, v144                                   // 000000004278: 7F220390
	v_mov_b32_e32 v147, v146                                   // 00000000427C: 7F260392
	s_nop 0                                                    // 000000004280: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 000000004284: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 000000004288: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 00000000428C: 17212390
	v_max_f32_e32 v145, v146, v147                             // 000000004290: 17232792
	s_waitcnt lgkmcnt(4)                                       // 000000004294: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[150:157], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000004298: D3AC0000 0003F7F2 D3AE0810 04430196
	ds_read_b64_tr_b8 v[174:175], v247 offset:4352             // 0000000042A8: D9C41100 AE0000F7
	ds_read_b64_tr_b8 v[176:177], v247 offset:5376             // 0000000042B0: D9C41500 B00000F7
	ds_read_b64_tr_b8 v[178:179], v247 offset:6400             // 0000000042B8: D9C41900 B20000F7
	ds_read_b64_tr_b8 v[180:181], v247 offset:7424             // 0000000042C0: D9C41D00 B40000F7
	ds_read_b64_tr_b8 v[182:183], v247 offset:4608             // 0000000042C8: D9C41200 B60000F7
	ds_read_b64_tr_b8 v[184:185], v247 offset:5632             // 0000000042D0: D9C41600 B80000F7
	ds_read_b64_tr_b8 v[186:187], v247 offset:6656             // 0000000042D8: D9C41A00 BA0000F7
	ds_read_b64_tr_b8 v[188:189], v247 offset:7680             // 0000000042E0: D9C41E00 BC0000F7
	v_max_f32_e32 v146, v144, v145                             // 0000000042E8: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 0000000042EC: 0B2525EE
	v_max_f32_e32 v146, v148, v146                             // 0000000042F0: 17252594
	v_sub_f32_e32 v147, v146, v148                             // 0000000042F4: 05272992
	v_cmp_lt_f32_e32 vcc, s37, v147                            // 0000000042F8: 7C832625
	s_cmp_lg_u64 vcc, 0                                        // 0000000042FC: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 000000004300: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 000000004304: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[158:165], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000004308: D3AC0000 0003F7F2 D3AE0800 0403019E
	v_cndmask_b32_e64 v252, v148, v146, s[18:19]               // 000000004318: D10000FC 004B2594
	v_fma_f32 v128, v144, v238, -v252                          // 000000004320: D1CB0080 87F3DD90
	v_floor_f32_e32 v128, v128                                 // 000000004328: 7F003F80
	v_med3_f32 v128, v128, s99, 0                              // 00000000432C: D1D60080 0200C780
	v_cvt_i32_f32_e32 v129, v128                               // 000000004334: 7F021180
	v_add_u32_e32 v251, 0x7f, v129                             // 000000004338: 69F702FF 0000007F
	v_lshlrev_b32_e32 v144, 23, v251                           // 000000004340: 2521F697
	v_fma_f32 v129, v145, v238, -v252                          // 000000004344: D1CB0081 87F3DD91
	s_waitcnt lgkmcnt(4)                                       // 00000000434C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[166:173], v[136:143], v[48:63], v242, v149 op_sel_hi:[0,0,0]// 000000004350: D3AC0000 00032BF2 D3AE0830 04C311A6
	ds_read_b64_tr_b8 v[154:155], v247 offset:4864             // 000000004360: D9C41300 9A0000F7
	ds_read_b64_tr_b8 v[156:157], v247 offset:5888             // 000000004368: D9C41700 9C0000F7
	ds_read_b64_tr_b8 v[158:159], v247 offset:6912             // 000000004370: D9C41B00 9E0000F7
	ds_read_b64_tr_b8 v[160:161], v247 offset:7936             // 000000004378: D9C41F00 A00000F7
	v_floor_f32_e32 v129, v129                                 // 000000004380: 7F023F81
	v_med3_f32 v129, v129, s99, 0                              // 000000004384: D1D60081 0200C781
	v_cvt_i32_f32_e32 v130, v129                               // 00000000438C: 7F041181
	v_add_u32_e32 v253, 0x7f, v130                             // 000000004390: 69FB04FF 0000007F
	v_lshlrev_b32_e32 v145, 23, v253                           // 000000004398: 2523FA97
	v_mov_b32_e32 v130, s50                                    // 00000000439C: 7F040232
	v_fma_f32 v130, v252, s95, v130                            // 0000000043A0: D1CB0082 0608BFFC
	v_fma_f32 v152, v128, s95, v130                            // 0000000043A8: D1CB0098 0608BF80
	v_fma_f32 v150, v129, s95, v130                            // 0000000043B0: D1CB0096 0608BF81
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[174:181], v[136:143], v[32:47], v242, v149 op_sel_hi:[0,0,0]// 0000000043B8: D3AC0000 00032BF2 D3AE0820 048311AE
	s_waitcnt lgkmcnt(0)                                       // 0000000043C8: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[182:189], v[136:143], v[16:31], v242, v149 op_sel_hi:[0,0,0]// 0000000043CC: D3AC0000 00032BF2 D3AE0810 044311B6
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[154:161], v[136:143], v[0:15], v242, v149 op_sel_hi:[0,0,0]// 0000000043DC: D3AC0000 00032BF2 D3AE0800 0403119A
	s_cmp_eq_u32 s21, 0                                        // 0000000043EC: BF068015
	s_cbranch_scc1 68                                          // 0000000043F0: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2a04>
	v_sub_f32_e32 v128, v148, v252                             // 0000000043F4: 0501F994
	v_exp_f32_e32 v128, v128                                   // 0000000043F8: 7F004180
	s_nop 0                                                    // 0000000043FC: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 000000004400: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 000000004408: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000004410: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000004418: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000004420: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000004428: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000004430: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000004438: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000004440: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000004448: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000004450: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000004458: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000004460: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000004468: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000004470: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000004478: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000004480: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000004488: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000004490: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000004498: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 0000000044A0: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 0000000044A8: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 0000000044B0: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 0000000044B8: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 0000000044C0: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 0000000044C8: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 0000000044D0: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 0000000044D8: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 0000000044E0: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 0000000044E8: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 0000000044F0: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 0000000044F8: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 000000004500: 0BF501FA
	s_waitcnt vmcnt(4)                                         // 000000004504: BF8C0F74
	s_barrier                                                  // 000000004508: BF8A0000
	s_add_u32 s15, s15, 1                                      // 00000000450C: 800F810F
	s_add_u32 s18, s15, 1                                      // 000000004510: 8012810F
	s_cmp_ge_u32 s18, s35                                      // 000000004514: BF092312
	s_cbranch_scc1 1247                                        // 000000004518: BF8504DF <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d98>
	s_setprio 0                                                // 00000000451C: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000004520: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 000000004528: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 000000004530: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 000000004538: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 000000004540: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 000000004548: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 000000004550: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 000000004558: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 000000004560: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 000000004568: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 000000004570: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 000000004578: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 000000004580: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 000000004588: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 000000004590: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 000000004598: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 0000000045A0: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 0000000045A8: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 0000000045B0: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 0000000045B8: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 0000000045C0: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 0000000045C8: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 0000000045D0: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 0000000045D8: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 0000000045E0: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 0000000045E8: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 0000000045F0: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 0000000045F8: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000004600: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 000000004608: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 000000004610: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 000000004618: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 000000004620: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 000000004628: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 000000004630: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 000000004638: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 000000004640: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 000000004648: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 000000004650: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 000000004658: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 000000004660: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 000000004668: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 000000004670: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 000000004678: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 000000004680: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 000000004688: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 000000004690: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 000000004698: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 0000000046A0: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 0000000046A8: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 0000000046B0: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 0000000046B8: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 0000000046C0: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 0000000046C8: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 0000000046D0: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 0000000046D8: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 0000000046E0: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 0000000046E8: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 0000000046F0: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 0000000046F8: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 000000004700: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 000000004708: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 000000004710: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 000000004718: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 000000004720: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 000000004728: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 000000004730: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 000000004738: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 000000004740: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 000000004748: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 000000004750: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 000000004758: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 000000004760: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 000000004768: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 000000004770: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 000000004778: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 000000004780: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 000000004788: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 000000004790: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 000000004798: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 0000000047A0: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 0000000047A8: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 0000000047B0: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 0000000047B8: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 0000000047C0: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 0000000047C8: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 0000000047D0: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 0000000047D8: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 0000000047E0: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 0000000047E8: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 0000000047F0: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 0000000047F8: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 000000004800: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 000000004808: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 000000004810: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 000000004818: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 000000004820: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000004828: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 000000004830: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 000000004838: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 000000004840: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 000000004848: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 000000004850: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 000000004858: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 000000004860: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 000000004868: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 000000004870: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 000000004878: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 000000004880: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 000000004888: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 000000004890: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 000000004898: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 0000000048A0: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 0000000048A8: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 0000000048B0: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 0000000048B8: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 0000000048C0: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 0000000048C8: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 0000000048D0: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 0000000048D8: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 0000000048E0: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 0000000048E8: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 0000000048F0: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 0000000048F8: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 000000004900: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 000000004908: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 000000004910: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 000000004918: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 000000004920: 7F320398
	v_mov_b32_e32 v151, v150                                   // 000000004924: 7F2E0396
	ds_read_b128 v[72:75], v231 offset:49152                   // 000000004928: D9FEC000 480000E7
	ds_read_b128 v[76:79], v231 offset:49168                   // 000000004930: D9FEC010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:53248                   // 000000004938: D9FED000 500000E7
	ds_read_b128 v[84:87], v231 offset:53264                   // 000000004940: D9FED010 540000E7
	s_barrier                                                  // 000000004948: BF8A0000
	s_setprio 1                                                // 00000000494C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 000000004950: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 000000004958: D3AD0044 020311C0
	ds_read_b128 v[146:149], v231 offset:57344                 // 000000004960: D9FEE000 920000E7
	ds_read_b128 v[150:153], v231 offset:57360                 // 000000004968: D9FEE010 960000E7
	ds_read_b128 v[154:157], v231 offset:61440                 // 000000004970: D9FEF000 9A0000E7
	ds_read_b128 v[158:161], v231 offset:61456                 // 000000004978: D9FEF010 9E0000E7
	s_waitcnt lgkmcnt(4)                                       // 000000004980: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 000000004984: D3AE0070 0203B948
	ds_read_b128 v[162:165], v232 offset:49152                 // 00000000498C: D9FEC000 A20000E8
	ds_read_b128 v[166:169], v232 offset:49168                 // 000000004994: D9FEC010 A60000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 00000000499C: D3AE0060 0203B950
	ds_read_b128 v[170:173], v232 offset:53248                 // 0000000049A4: D9FED000 AA0000E8
	ds_read_b128 v[174:177], v232 offset:53264                 // 0000000049AC: D9FED010 AE0000E8
	s_waitcnt lgkmcnt(4)                                       // 0000000049B4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[146:153], v[220:227], 0// 0000000049B8: D3AE0050 0203B992
	ds_read_b128 v[146:149], v232 offset:57344                 // 0000000049C0: D9FEE000 920000E8
	ds_read_b128 v[150:153], v232 offset:57360                 // 0000000049C8: D9FEE010 960000E8
	s_min_u32 s18, s20, s53                                    // 0000000049D0: 83923514
	s_add_u32 m0, s88, s97                                     // 0000000049D4: 807C6158
	s_nop 0                                                    // 0000000049D8: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 0000000049DC: E05D1000 121500E9
	v_mul_f32_e32 v72, v144, v64                               // 0000000049E4: 0A908190
	v_add_f32_e32 v72, v250, v72                               // 0000000049E8: 029091FA
	v_mul_f32_e32 v73, v145, v68                               // 0000000049EC: 0A928991
	v_add_f32_e32 v250, v72, v73                               // 0000000049F0: 03F49348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[154:161], v[220:227], 0// 0000000049F4: D3AE0040 0203B99A
	ds_read_b128 v[154:157], v232 offset:61440                 // 0000000049FC: D9FEF000 9A0000E8
	ds_read_b128 v[158:161], v232 offset:61456                 // 000000004A04: D9FEF010 9E0000E8
	s_add_u32 m0, s88, s44                                     // 000000004A0C: 807C2C58
	s_nop 0                                                    // 000000004A10: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 000000004A14: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 000000004A1C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[162:169], v[200:207], v[112:127]// 000000004A20: D3AE0070 05C391A2
	ds_read_b64_tr_b8 v[162:163], v248                         // 000000004A28: D9C40000 A20000F8
	ds_read_b64_tr_b8 v[164:165], v248 offset:1024             // 000000004A30: D9C40400 A40000F8
	ds_read_b64_tr_b8 v[166:167], v248 offset:2048             // 000000004A38: D9C40800 A60000F8
	ds_read_b64_tr_b8 v[168:169], v248 offset:3072             // 000000004A40: D9C40C00 A80000F8
	s_min_u32 s18, s17, s53                                    // 000000004A48: 83923511
	s_add_u32 m0, s88, s92                                     // 000000004A4C: 807C5C58
	s_nop 0                                                    // 000000004A50: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000004A54: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[170:177], v[200:207], v[96:111]// 000000004A5C: D3AE0060 058391AA
	ds_read_b64_tr_b8 v[170:171], v248 offset:256              // 000000004A64: D9C40100 AA0000F8
	ds_read_b64_tr_b8 v[172:173], v248 offset:1280             // 000000004A6C: D9C40500 AC0000F8
	ds_read_b64_tr_b8 v[174:175], v248 offset:2304             // 000000004A74: D9C40900 AE0000F8
	ds_read_b64_tr_b8 v[176:177], v248 offset:3328             // 000000004A7C: D9C40D00 B00000F8
	s_add_u32 m0, s88, s45                                     // 000000004A84: 807C2D58
	s_nop 0                                                    // 000000004A88: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000004A8C: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 000000004A94: 80142114
	s_add_u32 s17, s17, s33                                    // 000000004A98: 80112111
	v_max_f32_e32 v144, v112, v113                             // 000000004A9C: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 000000004AA0: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 000000004AA8: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 000000004AB0: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 000000004AB8: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 000000004AC0: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 000000004AC8: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 000000004AD0: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 000000004AD8: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[146:153], v[200:207], v[80:95]// 000000004ADC: D3AE0050 05439192
	ds_read_b64_tr_b8 v[178:179], v248 offset:512              // 000000004AE4: D9C40200 B20000F8
	ds_read_b64_tr_b8 v[180:181], v248 offset:1536             // 000000004AEC: D9C40600 B40000F8
	ds_read_b64_tr_b8 v[182:183], v248 offset:2560             // 000000004AF4: D9C40A00 B60000F8
	ds_read_b64_tr_b8 v[184:185], v248 offset:3584             // 000000004AFC: D9C40E00 B80000F8
	v_max_f32_e32 v145, v96, v97                               // 000000004B04: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 000000004B08: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 000000004B10: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 000000004B18: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 000000004B20: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 000000004B28: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 000000004B30: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 000000004B38: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[154:161], v[200:207], v[64:79]// 000000004B40: D3AE0040 0503919A
	s_nop 3                                                    // 000000004B48: BF800003
	v_max_f32_e32 v146, v80, v81                               // 000000004B4C: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 000000004B50: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 000000004B58: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 000000004B60: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 000000004B68: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 000000004B70: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 000000004B78: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 000000004B80: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 000000004B88: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[162:169], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000004B8C: D3AC0000 0003F7F2 D3AE0830 04C301A2
	ds_read_b64_tr_b8 v[148:149], v248 offset:768              // 000000004B9C: D9C40300 940000F8
	ds_read_b64_tr_b8 v[150:151], v248 offset:1792             // 000000004BA4: D9C40700 960000F8
	ds_read_b64_tr_b8 v[152:153], v248 offset:2816             // 000000004BAC: D9C40B00 980000F8
	ds_read_b64_tr_b8 v[154:155], v248 offset:3840             // 000000004BB4: D9C40F00 9A0000F8
	ds_read_b64_tr_b8 v[156:157], v248 offset:4096             // 000000004BBC: D9C41000 9C0000F8
	ds_read_b64_tr_b8 v[158:159], v248 offset:5120             // 000000004BC4: D9C41400 9E0000F8
	ds_read_b64_tr_b8 v[160:161], v248 offset:6144             // 000000004BCC: D9C41800 A00000F8
	ds_read_b64_tr_b8 v[162:163], v248 offset:7168             // 000000004BD4: D9C41C00 A20000F8
	v_max_f32_e32 v147, v64, v65                               // 000000004BDC: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 000000004BE0: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 000000004BE8: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 000000004BF0: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 000000004BF8: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 000000004C00: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 000000004C08: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 000000004C10: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[170:177], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000004C18: D3AC0000 0003F7F2 D3AE0820 048301AA
	v_max_f32_e32 v144, v144, v145                             // 000000004C28: 17212390
	v_max_f32_e32 v146, v146, v147                             // 000000004C2C: 17252792
	v_mov_b32_e32 v145, v144                                   // 000000004C30: 7F220390
	v_mov_b32_e32 v147, v146                                   // 000000004C34: 7F260392
	s_nop 0                                                    // 000000004C38: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 000000004C3C: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 000000004C40: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 000000004C44: 17212390
	v_max_f32_e32 v145, v146, v147                             // 000000004C48: 17232792
	s_waitcnt lgkmcnt(4)                                       // 000000004C4C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[178:185], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000004C50: D3AC0000 0003F7F2 D3AE0810 044301B2
	ds_read_b64_tr_b8 v[164:165], v248 offset:4352             // 000000004C60: D9C41100 A40000F8
	ds_read_b64_tr_b8 v[166:167], v248 offset:5376             // 000000004C68: D9C41500 A60000F8
	ds_read_b64_tr_b8 v[168:169], v248 offset:6400             // 000000004C70: D9C41900 A80000F8
	ds_read_b64_tr_b8 v[170:171], v248 offset:7424             // 000000004C78: D9C41D00 AA0000F8
	ds_read_b64_tr_b8 v[172:173], v248 offset:4608             // 000000004C80: D9C41200 AC0000F8
	ds_read_b64_tr_b8 v[174:175], v248 offset:5632             // 000000004C88: D9C41600 AE0000F8
	ds_read_b64_tr_b8 v[176:177], v248 offset:6656             // 000000004C90: D9C41A00 B00000F8
	ds_read_b64_tr_b8 v[178:179], v248 offset:7680             // 000000004C98: D9C41E00 B20000F8
	v_max_f32_e32 v146, v144, v145                             // 000000004CA0: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 000000004CA4: 0B2525EE
	v_max_f32_e32 v146, v252, v146                             // 000000004CA8: 172525FC
	v_sub_f32_e32 v147, v146, v252                             // 000000004CAC: 0527F992
	v_cmp_lt_f32_e32 vcc, s37, v147                            // 000000004CB0: 7C832625
	s_cmp_lg_u64 vcc, 0                                        // 000000004CB4: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 000000004CB8: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 000000004CBC: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[148:155], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000004CC0: D3AC0000 0003F7F2 D3AE0800 04030194
	v_cndmask_b32_e64 v148, v252, v146, s[18:19]               // 000000004CD0: D1000094 004B25FC
	v_fma_f32 v128, v144, v238, -v148                          // 000000004CD8: D1CB0080 8653DD90
	v_floor_f32_e32 v128, v128                                 // 000000004CE0: 7F003F80
	v_med3_f32 v128, v128, s99, 0                              // 000000004CE4: D1D60080 0200C780
	v_cvt_i32_f32_e32 v129, v128                               // 000000004CEC: 7F021180
	v_add_u32_e32 v251, 0x7f, v129                             // 000000004CF0: 69F702FF 0000007F
	v_lshlrev_b32_e32 v144, 23, v251                           // 000000004CF8: 2521F697
	v_fma_f32 v129, v145, v238, -v148                          // 000000004CFC: D1CB0081 8653DD91
	s_waitcnt lgkmcnt(4)                                       // 000000004D04: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[156:163], v[136:143], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000004D08: D3AC0000 0003FBF2 D3AE0830 04C3119C
	ds_read_b64_tr_b8 v[154:155], v248 offset:4864             // 000000004D18: D9C41300 9A0000F8
	ds_read_b64_tr_b8 v[156:157], v248 offset:5888             // 000000004D20: D9C41700 9C0000F8
	ds_read_b64_tr_b8 v[158:159], v248 offset:6912             // 000000004D28: D9C41B00 9E0000F8
	ds_read_b64_tr_b8 v[160:161], v248 offset:7936             // 000000004D30: D9C41F00 A00000F8
	v_floor_f32_e32 v129, v129                                 // 000000004D38: 7F023F81
	v_med3_f32 v129, v129, s99, 0                              // 000000004D3C: D1D60081 0200C781
	v_cvt_i32_f32_e32 v130, v129                               // 000000004D44: 7F041181
	v_add_u32_e32 v149, 0x7f, v130                             // 000000004D48: 692B04FF 0000007F
	v_lshlrev_b32_e32 v145, 23, v149                           // 000000004D50: 25232A97
	v_mov_b32_e32 v130, s50                                    // 000000004D54: 7F040232
	v_fma_f32 v130, v148, s95, v130                            // 000000004D58: D1CB0082 0608BF94
	v_fma_f32 v152, v128, s95, v130                            // 000000004D60: D1CB0098 0608BF80
	v_fma_f32 v150, v129, s95, v130                            // 000000004D68: D1CB0096 0608BF81
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[164:171], v[136:143], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000004D70: D3AC0000 0003FBF2 D3AE0820 048311A4
	s_waitcnt lgkmcnt(0)                                       // 000000004D80: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[172:179], v[136:143], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000004D84: D3AC0000 0003FBF2 D3AE0810 044311AC
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[154:161], v[136:143], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000004D94: D3AC0000 0003FBF2 D3AE0800 0403119A
	s_cmp_eq_u32 s21, 0                                        // 000000004DA4: BF068015
	s_cbranch_scc1 68                                          // 000000004DA8: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x33bc>
	v_sub_f32_e32 v128, v252, v148                             // 000000004DAC: 050129FC
	v_exp_f32_e32 v128, v128                                   // 000000004DB0: 7F004180
	s_nop 0                                                    // 000000004DB4: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 000000004DB8: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 000000004DC0: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000004DC8: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000004DD0: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000004DD8: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000004DE0: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000004DE8: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000004DF0: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000004DF8: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000004E00: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000004E08: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000004E10: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000004E18: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000004E20: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000004E28: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000004E30: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000004E38: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000004E40: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000004E48: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000004E50: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000004E58: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000004E60: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000004E68: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 000000004E70: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 000000004E78: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 000000004E80: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 000000004E88: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 000000004E90: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 000000004E98: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 000000004EA0: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 000000004EA8: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 000000004EB0: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 000000004EB8: 0BF501FA
	s_waitcnt vmcnt(4)                                         // 000000004EBC: BF8C0F74
	s_barrier                                                  // 000000004EC0: BF8A0000
	s_add_u32 s15, s15, 1                                      // 000000004EC4: 800F810F
	s_add_u32 s18, s15, 1                                      // 000000004EC8: 8012810F
	s_cmp_ge_u32 s18, s35                                      // 000000004ECC: BF092312
	s_cbranch_scc1 620                                         // 000000004ED0: BF85026C <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d84>
	s_setprio 0                                                // 000000004ED4: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000004ED8: D1CB0070 0663DF70
	v_fma_f32 v113, v113, v239, v152                           // 000000004EE0: D1CB0071 0663DF71
	v_fma_f32 v114, v114, v239, v152                           // 000000004EE8: D1CB0072 0663DF72
	v_fma_f32 v115, v115, v239, v152                           // 000000004EF0: D1CB0073 0663DF73
	v_fma_f32 v116, v116, v239, v152                           // 000000004EF8: D1CB0074 0663DF74
	v_fma_f32 v117, v117, v239, v152                           // 000000004F00: D1CB0075 0663DF75
	v_fma_f32 v118, v118, v239, v152                           // 000000004F08: D1CB0076 0663DF76
	v_fma_f32 v119, v119, v239, v152                           // 000000004F10: D1CB0077 0663DF77
	v_fma_f32 v120, v120, v239, v152                           // 000000004F18: D1CB0078 0663DF78
	v_fma_f32 v121, v121, v239, v152                           // 000000004F20: D1CB0079 0663DF79
	v_fma_f32 v122, v122, v239, v152                           // 000000004F28: D1CB007A 0663DF7A
	v_fma_f32 v123, v123, v239, v152                           // 000000004F30: D1CB007B 0663DF7B
	v_fma_f32 v124, v124, v239, v152                           // 000000004F38: D1CB007C 0663DF7C
	v_fma_f32 v125, v125, v239, v152                           // 000000004F40: D1CB007D 0663DF7D
	v_fma_f32 v126, v126, v239, v152                           // 000000004F48: D1CB007E 0663DF7E
	v_fma_f32 v127, v127, v239, v152                           // 000000004F50: D1CB007F 0663DF7F
	v_fma_f32 v96, v96, v239, v152                             // 000000004F58: D1CB0060 0663DF60
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000004F60: D1DD0070 02010170
	v_fma_f32 v97, v97, v239, v152                             // 000000004F68: D1CB0061 0663DF61
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 000000004F70: D1DD0074 02010174
	v_fma_f32 v98, v98, v239, v152                             // 000000004F78: D1CB0062 0663DF62
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 000000004F80: D1DD0078 02010178
	v_fma_f32 v99, v99, v239, v152                             // 000000004F88: D1CB0063 0663DF63
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000004F90: D1DD007C 0201017C
	v_fma_f32 v100, v100, v239, v152                           // 000000004F98: D1CB0064 0663DF64
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000004FA0: D1DD0070 05C10371
	v_fma_f32 v101, v101, v239, v152                           // 000000004FA8: D1CB0065 0663DF65
	v_cvt_pk_u8_f32 v113, v117, 1, v116                        // 000000004FB0: D1DD0071 05D10375
	v_fma_f32 v102, v102, v239, v152                           // 000000004FB8: D1CB0066 0663DF66
	v_cvt_pk_u8_f32 v116, v121, 1, v120                        // 000000004FC0: D1DD0074 05E10379
	v_fma_f32 v103, v103, v239, v152                           // 000000004FC8: D1CB0067 0663DF67
	v_cvt_pk_u8_f32 v117, v125, 1, v124                        // 000000004FD0: D1DD0075 05F1037D
	v_fma_f32 v104, v104, v239, v152                           // 000000004FD8: D1CB0068 0663DF68
	v_cvt_pk_u8_f32 v112, v114, 2, v112                        // 000000004FE0: D1DD0070 05C10572
	v_fma_f32 v105, v105, v239, v152                           // 000000004FE8: D1CB0069 0663DF69
	v_cvt_pk_u8_f32 v113, v118, 2, v113                        // 000000004FF0: D1DD0071 05C50576
	v_fma_f32 v106, v106, v239, v152                           // 000000004FF8: D1CB006A 0663DF6A
	v_cvt_pk_u8_f32 v114, v122, 2, v116                        // 000000005000: D1DD0072 05D1057A
	v_fma_f32 v107, v107, v239, v152                           // 000000005008: D1CB006B 0663DF6B
	v_cvt_pk_u8_f32 v116, v126, 2, v117                        // 000000005010: D1DD0074 05D5057E
	v_fma_f32 v108, v108, v239, v152                           // 000000005018: D1CB006C 0663DF6C
	v_cvt_pk_u8_f32 v128, v115, 3, v112                        // 000000005020: D1DD0080 05C10773
	v_fma_f32 v109, v109, v239, v152                           // 000000005028: D1CB006D 0663DF6D
	v_cvt_pk_u8_f32 v129, v119, 3, v113                        // 000000005030: D1DD0081 05C50777
	v_fma_f32 v110, v110, v239, v152                           // 000000005038: D1CB006E 0663DF6E
	v_cvt_pk_u8_f32 v130, v123, 3, v114                        // 000000005040: D1DD0082 05C9077B
	v_fma_f32 v111, v111, v239, v152                           // 000000005048: D1CB006F 0663DF6F
	v_cvt_pk_u8_f32 v131, v127, 3, v116                        // 000000005050: D1DD0083 05D1077F
	v_fma_f32 v80, v80, v239, v150                             // 000000005058: D1CB0050 065BDF50
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000005060: D1DD0060 02010160
	v_fma_f32 v81, v81, v239, v150                             // 000000005068: D1CB0051 065BDF51
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000005070: D1DD0064 02010164
	v_fma_f32 v82, v82, v239, v150                             // 000000005078: D1CB0052 065BDF52
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000005080: D1DD0068 02010168
	v_fma_f32 v83, v83, v239, v150                             // 000000005088: D1CB0053 065BDF53
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000005090: D1DD006C 0201016C
	v_fma_f32 v84, v84, v239, v150                             // 000000005098: D1CB0054 065BDF54
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 0000000050A0: D1DD0060 05810361
	v_fma_f32 v85, v85, v239, v150                             // 0000000050A8: D1CB0055 065BDF55
	v_cvt_pk_u8_f32 v97, v101, 1, v100                         // 0000000050B0: D1DD0061 05910365
	v_fma_f32 v86, v86, v239, v150                             // 0000000050B8: D1CB0056 065BDF56
	v_cvt_pk_u8_f32 v100, v105, 1, v104                        // 0000000050C0: D1DD0064 05A10369
	v_fma_f32 v87, v87, v239, v150                             // 0000000050C8: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v101, v109, 1, v108                        // 0000000050D0: D1DD0065 05B1036D
	v_fma_f32 v88, v88, v239, v150                             // 0000000050D8: D1CB0058 065BDF58
	v_cvt_pk_u8_f32 v96, v98, 2, v96                           // 0000000050E0: D1DD0060 05810562
	v_fma_f32 v89, v89, v239, v150                             // 0000000050E8: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v97, v102, 2, v97                          // 0000000050F0: D1DD0061 05850566
	v_fma_f32 v90, v90, v239, v150                             // 0000000050F8: D1CB005A 065BDF5A
	v_cvt_pk_u8_f32 v98, v106, 2, v100                         // 000000005100: D1DD0062 0591056A
	v_fma_f32 v91, v91, v239, v150                             // 000000005108: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v100, v110, 2, v101                        // 000000005110: D1DD0064 0595056E
	v_fma_f32 v92, v92, v239, v150                             // 000000005118: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v132, v99, 3, v96                          // 000000005120: D1DD0084 05810763
	v_fma_f32 v93, v93, v239, v150                             // 000000005128: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v133, v103, 3, v97                         // 000000005130: D1DD0085 05850767
	v_fma_f32 v94, v94, v239, v150                             // 000000005138: D1CB005E 065BDF5E
	v_cvt_pk_u8_f32 v134, v107, 3, v98                         // 000000005140: D1DD0086 0589076B
	v_fma_f32 v95, v95, v239, v150                             // 000000005148: D1CB005F 065BDF5F
	v_cvt_pk_u8_f32 v135, v111, 3, v100                        // 000000005150: D1DD0087 0591076F
	v_fma_f32 v64, v64, v239, v150                             // 000000005158: D1CB0040 065BDF40
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 000000005160: D1DD0050 02010150
	v_fma_f32 v65, v65, v239, v150                             // 000000005168: D1CB0041 065BDF41
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000005170: D1DD0054 02010154
	v_fma_f32 v66, v66, v239, v150                             // 000000005178: D1CB0042 065BDF42
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000005180: D1DD0058 02010158
	v_fma_f32 v67, v67, v239, v150                             // 000000005188: D1CB0043 065BDF43
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000005190: D1DD005C 0201015C
	v_fma_f32 v68, v68, v239, v150                             // 000000005198: D1CB0044 065BDF44
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 0000000051A0: D1DD0050 05410351
	v_fma_f32 v69, v69, v239, v150                             // 0000000051A8: D1CB0045 065BDF45
	v_cvt_pk_u8_f32 v81, v85, 1, v84                           // 0000000051B0: D1DD0051 05510355
	v_fma_f32 v70, v70, v239, v150                             // 0000000051B8: D1CB0046 065BDF46
	v_cvt_pk_u8_f32 v84, v89, 1, v88                           // 0000000051C0: D1DD0054 05610359
	v_fma_f32 v71, v71, v239, v150                             // 0000000051C8: D1CB0047 065BDF47
	v_cvt_pk_u8_f32 v85, v93, 1, v92                           // 0000000051D0: D1DD0055 0571035D
	v_fma_f32 v72, v72, v239, v150                             // 0000000051D8: D1CB0048 065BDF48
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 0000000051E0: D1DD0050 05410552
	v_fma_f32 v73, v73, v239, v150                             // 0000000051E8: D1CB0049 065BDF49
	v_cvt_pk_u8_f32 v81, v86, 2, v81                           // 0000000051F0: D1DD0051 05450556
	v_fma_f32 v74, v74, v239, v150                             // 0000000051F8: D1CB004A 065BDF4A
	v_cvt_pk_u8_f32 v82, v90, 2, v84                           // 000000005200: D1DD0052 0551055A
	v_fma_f32 v75, v75, v239, v150                             // 000000005208: D1CB004B 065BDF4B
	v_cvt_pk_u8_f32 v84, v94, 2, v85                           // 000000005210: D1DD0054 0555055E
	v_fma_f32 v76, v76, v239, v150                             // 000000005218: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v136, v83, 3, v80                          // 000000005220: D1DD0088 05410753
	v_fma_f32 v77, v77, v239, v150                             // 000000005228: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v137, v87, 3, v81                          // 000000005230: D1DD0089 05450757
	v_fma_f32 v78, v78, v239, v150                             // 000000005238: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v138, v91, 3, v82                          // 000000005240: D1DD008A 0549075B
	v_fma_f32 v79, v79, v239, v150                             // 000000005248: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v139, v95, 3, v84                          // 000000005250: D1DD008B 0551075F
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000005258: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000005260: D1DD0044 02010144
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000005268: D1DD0048 02010148
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000005270: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000005278: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v69, 1, v68                           // 000000005280: D1DD0041 05110345
	v_cvt_pk_u8_f32 v68, v73, 1, v72                           // 000000005288: D1DD0044 05210349
	v_cvt_pk_u8_f32 v69, v77, 1, v76                           // 000000005290: D1DD0045 0531034D
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000005298: D1DD0040 05010542
	v_cvt_pk_u8_f32 v65, v70, 2, v65                           // 0000000052A0: D1DD0041 05050546
	v_cvt_pk_u8_f32 v66, v74, 2, v68                           // 0000000052A8: D1DD0042 0511054A
	v_cvt_pk_u8_f32 v68, v78, 2, v69                           // 0000000052B0: D1DD0044 0515054E
	v_cvt_pk_u8_f32 v140, v67, 3, v64                          // 0000000052B8: D1DD008C 05010743
	v_cvt_pk_u8_f32 v141, v71, 3, v65                          // 0000000052C0: D1DD008D 05050747
	v_cvt_pk_u8_f32 v142, v75, 3, v66                          // 0000000052C8: D1DD008E 0509074B
	v_cvt_pk_u8_f32 v143, v79, 3, v68                          // 0000000052D0: D1DD008F 0511074F
	v_mov_b32_e32 v153, v152                                   // 0000000052D8: 7F320398
	v_mov_b32_e32 v151, v150                                   // 0000000052DC: 7F2E0396
	ds_read_b128 v[72:75], v231                                // 0000000052E0: D9FE0000 480000E7
	ds_read_b128 v[76:79], v231 offset:16                      // 0000000052E8: D9FE0010 4C0000E7
	ds_read_b128 v[80:83], v231 offset:4096                    // 0000000052F0: D9FE1000 500000E7
	ds_read_b128 v[84:87], v231 offset:4112                    // 0000000052F8: D9FE1010 540000E7
	s_barrier                                                  // 000000005300: BF8A0000
	s_setprio 1                                                // 000000005304: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[128:135], 0// 000000005308: D3AD0040 020301C0
	v_mfma_f32_16x16x128_f8f6f4 v[68:71], v[192:199], v[136:143], 0// 000000005310: D3AD0044 020311C0
	ds_read_b128 v[150:153], v231 offset:8192                  // 000000005318: D9FE2000 960000E7
	ds_read_b128 v[154:157], v231 offset:8208                  // 000000005320: D9FE2010 9A0000E7
	ds_read_b128 v[158:161], v231 offset:12288                 // 000000005328: D9FE3000 9E0000E7
	ds_read_b128 v[162:165], v231 offset:12304                 // 000000005330: D9FE3010 A20000E7
	s_waitcnt lgkmcnt(4)                                       // 000000005338: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[72:79], v[220:227], 0// 00000000533C: D3AE0070 0203B948
	ds_read_b128 v[166:169], v232                              // 000000005344: D9FE0000 A60000E8
	ds_read_b128 v[170:173], v232 offset:16                    // 00000000534C: D9FE0010 AA0000E8
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[80:87], v[220:227], 0// 000000005354: D3AE0060 0203B950
	ds_read_b128 v[174:177], v232 offset:4096                  // 00000000535C: D9FE1000 AE0000E8
	ds_read_b128 v[178:181], v232 offset:4112                  // 000000005364: D9FE1010 B20000E8
	s_waitcnt lgkmcnt(4)                                       // 00000000536C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[150:157], v[220:227], 0// 000000005370: D3AE0050 0203B996
	ds_read_b128 v[150:153], v232 offset:8192                  // 000000005378: D9FE2000 960000E8
	ds_read_b128 v[154:157], v232 offset:8208                  // 000000005380: D9FE2010 9A0000E8
	s_min_u32 s18, s20, s53                                    // 000000005388: 83923514
	s_add_u32 m0, s88, s89                                     // 00000000538C: 807C5958
	s_nop 0                                                    // 000000005390: BF800000
	buffer_load_dwordx4 v233, s[84:87], s18 offen lds          // 000000005394: E05D1000 121500E9
	v_mul_f32_e32 v72, v144, v64                               // 00000000539C: 0A908190
	v_add_f32_e32 v72, v250, v72                               // 0000000053A0: 029091FA
	v_mul_f32_e32 v73, v145, v68                               // 0000000053A4: 0A928991
	v_add_f32_e32 v250, v72, v73                               // 0000000053A8: 03F49348
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[158:165], v[220:227], 0// 0000000053AC: D3AE0040 0203B99E
	ds_read_b128 v[158:161], v232 offset:12288                 // 0000000053B4: D9FE3000 9E0000E8
	ds_read_b128 v[162:165], v232 offset:12304                 // 0000000053BC: D9FE3010 A20000E8
	s_add_u32 m0, s88, s90                                     // 0000000053C4: 807C5A58
	s_nop 0                                                    // 0000000053C8: BF800000
	buffer_load_dwordx4 v234, s[84:87], s18 offen lds          // 0000000053CC: E05D1000 121500EA
	s_waitcnt lgkmcnt(4)                                       // 0000000053D4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[112:127], v[166:173], v[200:207], v[112:127]// 0000000053D8: D3AE0070 05C391A6
	ds_read_b64_tr_b8 v[166:167], v249                         // 0000000053E0: D9C40000 A60000F9
	ds_read_b64_tr_b8 v[168:169], v249 offset:1024             // 0000000053E8: D9C40400 A80000F9
	ds_read_b64_tr_b8 v[170:171], v249 offset:2048             // 0000000053F0: D9C40800 AA0000F9
	ds_read_b64_tr_b8 v[172:173], v249 offset:3072             // 0000000053F8: D9C40C00 AC0000F9
	s_min_u32 s18, s17, s53                                    // 000000005400: 83923511
	s_add_u32 m0, s88, s93                                     // 000000005404: 807C5D58
	s_nop 0                                                    // 000000005408: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 00000000540C: E05D1000 121400EB
	v_mfma_f32_32x32x64_f8f6f4 v[96:111], v[174:181], v[200:207], v[96:111]// 000000005414: D3AE0060 058391AE
	ds_read_b64_tr_b8 v[174:175], v249 offset:256              // 00000000541C: D9C40100 AE0000F9
	ds_read_b64_tr_b8 v[176:177], v249 offset:1280             // 000000005424: D9C40500 B00000F9
	ds_read_b64_tr_b8 v[178:179], v249 offset:2304             // 00000000542C: D9C40900 B20000F9
	ds_read_b64_tr_b8 v[180:181], v249 offset:3328             // 000000005434: D9C40D00 B40000F9
	s_add_u32 m0, s88, s34                                     // 00000000543C: 807C2258
	s_nop 0                                                    // 000000005440: BF800000
	buffer_load_dwordx4 v236, s[80:83], s18 offen lds          // 000000005444: E05D1000 121400EC
	s_add_u32 s20, s20, s33                                    // 00000000544C: 80142114
	s_add_u32 s17, s17, s33                                    // 000000005450: 80112111
	v_max_f32_e32 v144, v112, v113                             // 000000005454: 1720E370
	v_max3_f32 v144, v114, v115, v144                          // 000000005458: D1D30090 0642E772
	v_max3_f32 v144, v116, v117, v144                          // 000000005460: D1D30090 0642EB74
	v_max3_f32 v144, v118, v119, v144                          // 000000005468: D1D30090 0642EF76
	v_max3_f32 v144, v120, v121, v144                          // 000000005470: D1D30090 0642F378
	v_max3_f32 v144, v122, v123, v144                          // 000000005478: D1D30090 0642F77A
	v_max3_f32 v144, v124, v125, v144                          // 000000005480: D1D30090 0642FB7C
	v_max3_f32 v144, v126, v127, v144                          // 000000005488: D1D30090 0642FF7E
	s_waitcnt lgkmcnt(8)                                       // 000000005490: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[150:157], v[200:207], v[80:95]// 000000005494: D3AE0050 05439196
	ds_read_b64_tr_b8 v[150:151], v249 offset:512              // 00000000549C: D9C40200 960000F9
	ds_read_b64_tr_b8 v[152:153], v249 offset:1536             // 0000000054A4: D9C40600 980000F9
	ds_read_b64_tr_b8 v[154:155], v249 offset:2560             // 0000000054AC: D9C40A00 9A0000F9
	ds_read_b64_tr_b8 v[156:157], v249 offset:3584             // 0000000054B4: D9C40E00 9C0000F9
	v_max_f32_e32 v145, v96, v97                               // 0000000054BC: 1722C360
	v_max3_f32 v145, v98, v99, v145                            // 0000000054C0: D1D30091 0646C762
	v_max3_f32 v145, v100, v101, v145                          // 0000000054C8: D1D30091 0646CB64
	v_max3_f32 v145, v102, v103, v145                          // 0000000054D0: D1D30091 0646CF66
	v_max3_f32 v145, v104, v105, v145                          // 0000000054D8: D1D30091 0646D368
	v_max3_f32 v145, v106, v107, v145                          // 0000000054E0: D1D30091 0646D76A
	v_max3_f32 v145, v108, v109, v145                          // 0000000054E8: D1D30091 0646DB6C
	v_max3_f32 v145, v110, v111, v145                          // 0000000054F0: D1D30091 0646DF6E
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[158:165], v[200:207], v[64:79]// 0000000054F8: D3AE0040 0503919E
	s_nop 3                                                    // 000000005500: BF800003
	v_max_f32_e32 v146, v80, v81                               // 000000005504: 1724A350
	v_max3_f32 v146, v82, v83, v146                            // 000000005508: D1D30092 064AA752
	v_max3_f32 v146, v84, v85, v146                            // 000000005510: D1D30092 064AAB54
	v_max3_f32 v146, v86, v87, v146                            // 000000005518: D1D30092 064AAF56
	v_max3_f32 v146, v88, v89, v146                            // 000000005520: D1D30092 064AB358
	v_max3_f32 v146, v90, v91, v146                            // 000000005528: D1D30092 064AB75A
	v_max3_f32 v146, v92, v93, v146                            // 000000005530: D1D30092 064ABB5C
	v_max3_f32 v146, v94, v95, v146                            // 000000005538: D1D30092 064ABF5E
	s_waitcnt lgkmcnt(4)                                       // 000000005540: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[166:173], v[128:135], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000005544: D3AC0000 0003F7F2 D3AE0830 04C301A6
	ds_read_b64_tr_b8 v[158:159], v249 offset:768              // 000000005554: D9C40300 9E0000F9
	ds_read_b64_tr_b8 v[160:161], v249 offset:1792             // 00000000555C: D9C40700 A00000F9
	ds_read_b64_tr_b8 v[162:163], v249 offset:2816             // 000000005564: D9C40B00 A20000F9
	ds_read_b64_tr_b8 v[164:165], v249 offset:3840             // 00000000556C: D9C40F00 A40000F9
	ds_read_b64_tr_b8 v[166:167], v249 offset:4096             // 000000005574: D9C41000 A60000F9
	ds_read_b64_tr_b8 v[168:169], v249 offset:5120             // 00000000557C: D9C41400 A80000F9
	ds_read_b64_tr_b8 v[170:171], v249 offset:6144             // 000000005584: D9C41800 AA0000F9
	ds_read_b64_tr_b8 v[172:173], v249 offset:7168             // 00000000558C: D9C41C00 AC0000F9
	v_max_f32_e32 v147, v64, v65                               // 000000005594: 17268340
	v_max3_f32 v147, v66, v67, v147                            // 000000005598: D1D30093 064E8742
	v_max3_f32 v147, v68, v69, v147                            // 0000000055A0: D1D30093 064E8B44
	v_max3_f32 v147, v70, v71, v147                            // 0000000055A8: D1D30093 064E8F46
	v_max3_f32 v147, v72, v73, v147                            // 0000000055B0: D1D30093 064E9348
	v_max3_f32 v147, v74, v75, v147                            // 0000000055B8: D1D30093 064E974A
	v_max3_f32 v147, v76, v77, v147                            // 0000000055C0: D1D30093 064E9B4C
	v_max3_f32 v147, v78, v79, v147                            // 0000000055C8: D1D30093 064E9F4E
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[174:181], v[128:135], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 0000000055D0: D3AC0000 0003F7F2 D3AE0820 048301AE
	v_max_f32_e32 v144, v144, v145                             // 0000000055E0: 17212390
	v_max_f32_e32 v146, v146, v147                             // 0000000055E4: 17252792
	v_mov_b32_e32 v145, v144                                   // 0000000055E8: 7F220390
	v_mov_b32_e32 v147, v146                                   // 0000000055EC: 7F260392
	s_nop 0                                                    // 0000000055F0: BF800000
	v_permlane32_swap_b32_e32 v144, v145                       // 0000000055F4: 7F20B591
	v_permlane32_swap_b32_e32 v146, v147                       // 0000000055F8: 7F24B593
	v_max_f32_e32 v144, v144, v145                             // 0000000055FC: 17212390
	v_max_f32_e32 v145, v146, v147                             // 000000005600: 17232792
	s_waitcnt lgkmcnt(4)                                       // 000000005604: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[150:157], v[128:135], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000005608: D3AC0000 0003F7F2 D3AE0810 04430196
	ds_read_b64_tr_b8 v[174:175], v249 offset:4352             // 000000005618: D9C41100 AE0000F9
	ds_read_b64_tr_b8 v[176:177], v249 offset:5376             // 000000005620: D9C41500 B00000F9
	ds_read_b64_tr_b8 v[178:179], v249 offset:6400             // 000000005628: D9C41900 B20000F9
	ds_read_b64_tr_b8 v[180:181], v249 offset:7424             // 000000005630: D9C41D00 B40000F9
	ds_read_b64_tr_b8 v[182:183], v249 offset:4608             // 000000005638: D9C41200 B60000F9
	ds_read_b64_tr_b8 v[184:185], v249 offset:5632             // 000000005640: D9C41600 B80000F9
	ds_read_b64_tr_b8 v[186:187], v249 offset:6656             // 000000005648: D9C41A00 BA0000F9
	ds_read_b64_tr_b8 v[188:189], v249 offset:7680             // 000000005650: D9C41E00 BC0000F9
	v_max_f32_e32 v146, v144, v145                             // 000000005658: 17252390
	v_mul_f32_e32 v146, v238, v146                             // 00000000565C: 0B2525EE
	v_max_f32_e32 v146, v148, v146                             // 000000005660: 17252594
	v_sub_f32_e32 v147, v146, v148                             // 000000005664: 05272992
	v_cmp_lt_f32_e32 vcc, s37, v147                            // 000000005668: 7C832625
	s_cmp_lg_u64 vcc, 0                                        // 00000000566C: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 000000005670: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 000000005674: 85158081
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[158:165], v[128:135], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000005678: D3AC0000 0003F7F2 D3AE0800 0403019E
	v_cndmask_b32_e64 v252, v148, v146, s[18:19]               // 000000005688: D10000FC 004B2594
	v_fma_f32 v128, v144, v238, -v252                          // 000000005690: D1CB0080 87F3DD90
	v_floor_f32_e32 v128, v128                                 // 000000005698: 7F003F80
	v_med3_f32 v128, v128, s99, 0                              // 00000000569C: D1D60080 0200C780
	v_cvt_i32_f32_e32 v129, v128                               // 0000000056A4: 7F021180
	v_add_u32_e32 v251, 0x7f, v129                             // 0000000056A8: 69F702FF 0000007F
	v_lshlrev_b32_e32 v144, 23, v251                           // 0000000056B0: 2521F697
	v_fma_f32 v129, v145, v238, -v252                          // 0000000056B4: D1CB0081 87F3DD91
	s_waitcnt lgkmcnt(4)                                       // 0000000056BC: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[166:173], v[136:143], v[48:63], v242, v149 op_sel_hi:[0,0,0]// 0000000056C0: D3AC0000 00032BF2 D3AE0830 04C311A6
	ds_read_b64_tr_b8 v[154:155], v249 offset:4864             // 0000000056D0: D9C41300 9A0000F9
	ds_read_b64_tr_b8 v[156:157], v249 offset:5888             // 0000000056D8: D9C41700 9C0000F9
	ds_read_b64_tr_b8 v[158:159], v249 offset:6912             // 0000000056E0: D9C41B00 9E0000F9
	ds_read_b64_tr_b8 v[160:161], v249 offset:7936             // 0000000056E8: D9C41F00 A00000F9
	v_floor_f32_e32 v129, v129                                 // 0000000056F0: 7F023F81
	v_med3_f32 v129, v129, s99, 0                              // 0000000056F4: D1D60081 0200C781
	v_cvt_i32_f32_e32 v130, v129                               // 0000000056FC: 7F041181
	v_add_u32_e32 v253, 0x7f, v130                             // 000000005700: 69FB04FF 0000007F
	v_lshlrev_b32_e32 v145, 23, v253                           // 000000005708: 2523FA97
	v_mov_b32_e32 v130, s50                                    // 00000000570C: 7F040232
	v_fma_f32 v130, v252, s95, v130                            // 000000005710: D1CB0082 0608BFFC
	v_fma_f32 v152, v128, s95, v130                            // 000000005718: D1CB0098 0608BF80
	v_fma_f32 v150, v129, s95, v130                            // 000000005720: D1CB0096 0608BF81
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[174:181], v[136:143], v[32:47], v242, v149 op_sel_hi:[0,0,0]// 000000005728: D3AC0000 00032BF2 D3AE0820 048311AE
	s_waitcnt lgkmcnt(0)                                       // 000000005738: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[182:189], v[136:143], v[16:31], v242, v149 op_sel_hi:[0,0,0]// 00000000573C: D3AC0000 00032BF2 D3AE0810 044311B6
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[154:161], v[136:143], v[0:15], v242, v149 op_sel_hi:[0,0,0]// 00000000574C: D3AC0000 00032BF2 D3AE0800 0403119A
	s_cmp_eq_u32 s21, 0                                        // 00000000575C: BF068015
	s_cbranch_scc1 68                                          // 000000005760: BF850044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d74>
	v_sub_f32_e32 v128, v148, v252                             // 000000005764: 0501F994
	v_exp_f32_e32 v128, v128                                   // 000000005768: 7F004180
	s_nop 0                                                    // 00000000576C: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 000000005770: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 000000005778: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 000000005780: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000005788: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000005790: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000005798: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 0000000057A0: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 0000000057A8: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 0000000057B0: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 0000000057B8: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 0000000057C0: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 0000000057C8: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 0000000057D0: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 0000000057D8: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 0000000057E0: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 0000000057E8: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 0000000057F0: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 0000000057F8: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000005800: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000005808: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000005810: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000005818: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000005820: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 000000005828: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 000000005830: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 000000005838: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 000000005840: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 000000005848: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 000000005850: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 000000005858: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 000000005860: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 000000005868: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 000000005870: 0BF501FA
	s_waitcnt vmcnt(4)                                         // 000000005874: BF8C0F74
	s_barrier                                                  // 000000005878: BF8A0000
	s_add_u32 s15, s15, 1                                      // 00000000587C: 800F810F
	s_branch 63047                                             // 000000005880: BF82F647 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x16a0>
	v_mov_b32_e32 v253, v149                                   // 000000005884: 7FFA0395
	v_mov_b32_e32 v252, v148                                   // 000000005888: 7FF80394
	s_branch 2                                                 // 00000000588C: BF820002 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3d98>
	v_mov_b32_e32 v253, v149                                   // 000000005890: 7FFA0395
	v_mov_b32_e32 v252, v148                                   // 000000005894: 7FF80394
	s_add_u32 s17, s15, s10                                    // 000000005898: 80110A0F
	s_bitcmp1_b32 s17, 0                                       // 00000000589C: BF0D8011
	s_cselect_b64 s[18:19], -1, 0                              // 0000000058A0: 859280C1
	s_and_b64 vcc, exec, s[18:19]                              // 0000000058A4: 86EA127E
	s_cbranch_vccnz 1590                                       // 0000000058A8: BF870636 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5684>
	s_add_u32 s17, s15, 1                                      // 0000000058AC: 8011810F
	s_cmp_ge_u32 s17, s91                                      // 0000000058B0: BF095B11
	s_cbranch_scc1 3178                                        // 0000000058B4: BF850C6A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6f60>
	s_cmp_ge_u32 s15, s35                                      // 0000000058B8: BF09230F
	s_cbranch_scc1 1106                                        // 0000000058BC: BF850452 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4f08>
	s_setprio 0                                                // 0000000058C0: BF8F0000
	s_add_u32 s17, s15, s10                                    // 0000000058C4: 80110A0F
	s_add_u32 s18, s17, 1                                      // 0000000058C8: 80128111
	s_lshl_b32 s19, s18, 14                                    // 0000000058CC: 8E138E12
	v_fma_f32 v108, v108, v239, v152                           // 0000000058D0: D1CB006C 0663DF6C
	v_fma_f32 v64, v64, v239, v150                             // 0000000058D8: D1CB0040 065BDF40
	v_fma_f32 v68, v68, v239, v150                             // 0000000058E0: D1CB0044 065BDF44
	s_and_b32 s19, s19, 0x8000                                 // 0000000058E8: 8613FF13 00008000
	v_fma_f32 v96, v96, v239, v152                             // 0000000058F0: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 0000000058F8: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 000000005900: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 000000005908: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 000000005910: D1CB0068 0663DF68
	v_fma_f32 v109, v109, v239, v152                           // 000000005918: D1CB006D 0663DF6D
	v_fma_f32 v80, v80, v239, v150                             // 000000005920: D1CB0050 065BDF50
	v_fma_f32 v65, v65, v239, v150                             // 000000005928: D1CB0041 065BDF41
	v_fma_f32 v84, v84, v239, v150                             // 000000005930: D1CB0054 065BDF54
	v_fma_f32 v69, v69, v239, v150                             // 000000005938: D1CB0045 065BDF45
	v_fma_f32 v72, v72, v239, v150                             // 000000005940: D1CB0048 065BDF48
	v_fma_f32 v92, v92, v239, v150                             // 000000005948: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000005950: D1DD006C 0201016C
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000005958: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000005960: D1DD0044 02010144
	s_bitcmp1_b32 s18, 0                                       // 000000005968: BF0D8012
	v_fma_f32 v97, v97, v239, v152                             // 00000000596C: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 000000005974: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 00000000597C: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 000000005984: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 00000000598C: D1CB0069 0663DF69
	v_fma_f32 v110, v110, v239, v152                           // 000000005994: D1CB006E 0663DF6E
	v_fma_f32 v81, v81, v239, v150                             // 00000000599C: D1CB0051 065BDF51
	v_fma_f32 v66, v66, v239, v150                             // 0000000059A4: D1CB0042 065BDF42
	v_fma_f32 v85, v85, v239, v150                             // 0000000059AC: D1CB0055 065BDF55
	v_fma_f32 v70, v70, v239, v150                             // 0000000059B4: D1CB0046 065BDF46
	v_fma_f32 v88, v88, v239, v150                             // 0000000059BC: D1CB0058 065BDF58
	v_fma_f32 v73, v73, v239, v150                             // 0000000059C4: D1CB0049 065BDF49
	v_fma_f32 v93, v93, v239, v150                             // 0000000059CC: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 0000000059D4: D1DD0060 02010160
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 0000000059DC: D1DD0074 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 0000000059E4: D1DD0064 02010164
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 0000000059EC: D1DD0078 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 0000000059F4: D1DD0068 02010168
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 0000000059FC: D1DD0050 02010150
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000005A04: D1DD0054 02010154
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000005A0C: D1DD0048 02010148
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 000000005A14: D1DD005C 0201015C
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 000000005A1C: D1DD006C 05B1036D
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 000000005A24: D1DD0040 05010341
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 000000005A2C: D1DD0044 05110345
	s_cselect_b32 s18, 0x4000, 0                               // 000000005A34: 851280FF 00004000
	v_fma_f32 v98, v98, v239, v152                             // 000000005A3C: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 000000005A44: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 000000005A4C: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 000000005A54: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 000000005A5C: D1CB006A 0663DF6A
	v_fma_f32 v111, v111, v239, v152                           // 000000005A64: D1CB006F 0663DF6F
	v_fma_f32 v82, v82, v239, v150                             // 000000005A6C: D1CB0052 065BDF52
	v_fma_f32 v86, v86, v239, v150                             // 000000005A74: D1CB0056 065BDF56
	v_fma_f32 v71, v71, v239, v150                             // 000000005A7C: D1CB0047 065BDF47
	v_fma_f32 v89, v89, v239, v150                             // 000000005A84: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000005A8C: D1DD0058 02010158
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 000000005A94: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v116                         // 000000005A9C: D1DD0061 05D10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 000000005AA4: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v120                        // 000000005AAC: D1DD0065 05E10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 000000005AB4: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000005ABC: D1DD0050 05410351
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 000000005AC4: D1DD0041 05510355
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 000000005ACC: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v93, 1, v92                           // 000000005AD4: D1DD0049 0571035D
	v_cvt_pk_u8_f32 v93, v110, 2, v108                         // 000000005ADC: D1DD005D 05B1056E
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 000000005AE4: D1DD0040 05010542
	v_cvt_pk_u8_f32 v66, v70, 2, v68                           // 000000005AEC: D1DD0042 05110546
	s_or_b32 s19, s19, s18                                     // 000000005AF4: 87131213
	v_fma_f32 v99, v99, v239, v152                             // 000000005AF8: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 000000005B00: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 000000005B08: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 000000005B10: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 000000005B18: D1CB006B 0663DF6B
	v_fma_f32 v83, v83, v239, v150                             // 000000005B20: D1CB0053 065BDF53
	v_fma_f32 v87, v87, v239, v150                             // 000000005B28: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 000000005B30: D1DD0045 05610359
	v_cvt_pk_u8_f32 v81, v98, 2, v96                           // 000000005B38: D1DD0051 05810562
	v_cvt_pk_u8_f32 v84, v118, 2, v97                          // 000000005B40: D1DD0054 05850576
	v_cvt_pk_u8_f32 v85, v102, 2, v100                         // 000000005B48: D1DD0055 05910566
	v_cvt_pk_u8_f32 v88, v122, 2, v101                         // 000000005B50: D1DD0058 0595057A
	v_cvt_pk_u8_f32 v89, v106, 2, v104                         // 000000005B58: D1DD0059 05A1056A
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000005B60: D1DD0050 05410552
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 000000005B68: D1DD0041 05050556
	v_cvt_pk_u8_f32 v215, v111, 3, v93                         // 000000005B70: D1DD00D7 0575076F
	v_cvt_pk_u8_f32 v93, v71, 3, v66                           // 000000005B78: D1DD005D 05090747
	v_or_b32_e32 v71, s19, v231                                // 000000005B80: 288FCE13
	v_cvt_pk_u8_f32 v212, v99, 3, v81                          // 000000005B84: D1DD00D4 05450763
	v_cvt_pk_u8_f32 v209, v119, 3, v84                         // 000000005B8C: D1DD00D1 05510777
	v_cvt_pk_u8_f32 v213, v103, 3, v85                         // 000000005B94: D1DD00D5 05550767
	v_cvt_pk_u8_f32 v210, v123, 3, v88                         // 000000005B9C: D1DD00D2 0561077B
	v_cvt_pk_u8_f32 v214, v107, 3, v89                         // 000000005BA4: D1DD00D6 0565076B
	v_cvt_pk_u8_f32 v88, v83, 3, v80                           // 000000005BAC: D1DD0058 05410753
	v_cvt_pk_u8_f32 v89, v87, 3, v65                           // 000000005BB4: D1DD0059 05050757
	ds_read_b128 v[80:83], v71                                 // 000000005BBC: D9FE0000 50000047
	ds_read_b128 v[84:87], v71 offset:16                       // 000000005BC4: D9FE0010 54000047
	ds_read_b128 v[96:99], v71 offset:4096                     // 000000005BCC: D9FE1000 60000047
	ds_read_b128 v[100:103], v71 offset:4112                   // 000000005BD4: D9FE1010 64000047
	v_fma_f32 v112, v112, v239, v152                           // 000000005BDC: D1CB0070 0663DF70
	v_fma_f32 v124, v124, v239, v152                           // 000000005BE4: D1CB007C 0663DF7C
	v_fma_f32 v113, v113, v239, v152                           // 000000005BEC: D1CB0071 0663DF71
	v_fma_f32 v125, v125, v239, v152                           // 000000005BF4: D1CB007D 0663DF7D
	v_fma_f32 v76, v76, v239, v150                             // 000000005BFC: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 000000005C04: D1DD0070 02010170
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 000000005C0C: D1DD007C 0201017C
	v_fma_f32 v114, v114, v239, v152                           // 000000005C14: D1CB0072 0663DF72
	v_fma_f32 v126, v126, v239, v152                           // 000000005C1C: D1CB007E 0663DF7E
	v_fma_f32 v77, v77, v239, v150                             // 000000005C24: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000005C2C: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 000000005C34: D1DD0070 05C10371
	v_cvt_pk_u8_f32 v105, v125, 1, v124                        // 000000005C3C: D1DD0069 05F1037D
	v_fma_f32 v115, v115, v239, v152                           // 000000005C44: D1CB0073 0663DF73
	v_fma_f32 v127, v127, v239, v152                           // 000000005C4C: D1CB007F 0663DF7F
	v_fma_f32 v90, v90, v239, v150                             // 000000005C54: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 000000005C5C: D1CB004A 065BDF4A
	v_fma_f32 v94, v94, v239, v150                             // 000000005C64: D1CB005E 065BDF5E
	v_fma_f32 v78, v78, v239, v150                             // 000000005C6C: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v76, v77, 1, v76                           // 000000005C74: D1DD004C 0531034D
	v_cvt_pk_u8_f32 v77, v114, 2, v112                         // 000000005C7C: D1DD004D 05C10572
	v_cvt_pk_u8_f32 v92, v126, 2, v105                         // 000000005C84: D1DD005C 05A5057E
	v_fma_f32 v67, v67, v239, v150                             // 000000005C8C: D1CB0043 065BDF43
	v_fma_f32 v91, v91, v239, v150                             // 000000005C94: D1CB005B 065BDF5B
	v_fma_f32 v75, v75, v239, v150                             // 000000005C9C: D1CB004B 065BDF4B
	v_fma_f32 v95, v95, v239, v150                             // 000000005CA4: D1CB005F 065BDF5F
	v_fma_f32 v79, v79, v239, v150                             // 000000005CAC: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v68, v90, 2, v69                           // 000000005CB4: D1DD0044 0515055A
	v_cvt_pk_u8_f32 v69, v74, 2, v72                           // 000000005CBC: D1DD0045 0521054A
	v_cvt_pk_u8_f32 v70, v94, 2, v73                           // 000000005CC4: D1DD0046 0525055E
	v_cvt_pk_u8_f32 v72, v78, 2, v76                           // 000000005CCC: D1DD0048 0531054E
	v_cvt_pk_u8_f32 v208, v115, 3, v77                         // 000000005CD4: D1DD00D0 05350773
	v_cvt_pk_u8_f32 v211, v127, 3, v92                         // 000000005CDC: D1DD00D3 0571077F
	v_cvt_pk_u8_f32 v92, v67, 3, v64                           // 000000005CE4: D1DD005C 05010743
	v_cvt_pk_u8_f32 v90, v91, 3, v68                           // 000000005CEC: D1DD005A 0511075B
	v_cvt_pk_u8_f32 v94, v75, 3, v69                           // 000000005CF4: D1DD005E 0515074B
	v_cvt_pk_u8_f32 v91, v95, 3, v70                           // 000000005CFC: D1DD005B 0519075F
	v_cvt_pk_u8_f32 v95, v79, 3, v72                           // 000000005D04: D1DD005F 0521074F
	s_barrier                                                  // 000000005D0C: BF8A0000
	s_and_b32 s18, s17, 3                                      // 000000005D10: 86128311
	s_setprio 1                                                // 000000005D14: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[208:215], 0// 000000005D18: D3AD0040 0203A1C0
	scratch_store_dwordx4 off, v[88:91], off                   // 000000005D20: DC7C4000 007F5800
	s_nop 0                                                    // 000000005D28: BF800000
	scratch_store_dwordx4 off, v[92:95], off offset:16         // 000000005D2C: DC7C4010 007F5C00
	v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[192:199], v[88:95], 0// 000000005D34: D3AD0042 0202B1C0
	s_nop 3                                                    // 000000005D3C: BF800003
	v_lshlrev_b32_e32 v65, 23, v251                            // 000000005D40: 2483F697
	v_mul_f32_e32 v64, v64, v65                                // 000000005D44: 0A808340
	v_add_f32_e32 v64, v250, v64                               // 000000005D48: 028081FA
	v_lshlrev_b32_e32 v65, 23, v253                            // 000000005D4C: 2483FA97
	s_nop 3                                                    // 000000005D50: BF800003
	v_mul_f32_e32 v65, v66, v65                                // 000000005D54: 0A828342
	v_add_f32_e32 v250, v64, v65                               // 000000005D58: 03F48340
	s_waitcnt lgkmcnt(2)                                       // 000000005D5C: BF8CC27F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[80:87], v[220:227], 0// 000000005D60: D3AE00B0 0203B950
	ds_read_b128 v[88:91], v71 offset:8192                     // 000000005D68: D9FE2000 58000047
	ds_read_b128 v[92:95], v71 offset:8208                     // 000000005D70: D9FE2010 5C000047
	ds_read_b128 v[104:107], v71 offset:12288                  // 000000005D78: D9FE3000 68000047
	ds_read_b128 v[108:111], v71 offset:12304                  // 000000005D80: D9FE3010 6C000047
	s_waitcnt lgkmcnt(4)                                       // 000000005D88: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[96:103], v[220:227], 0// 000000005D8C: D3AE00A0 0203B960
	v_or_b32_e32 v64, s19, v232                                // 000000005D94: 2881D013
	ds_read_b128 v[66:69], v64                                 // 000000005D98: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 000000005DA0: D9FE0010 46000040
	s_waitcnt lgkmcnt(4)                                       // 000000005DA8: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[88:95], v[220:227], 0// 000000005DAC: D3AE0090 0203B958
	ds_read_b128 v[74:77], v64 offset:4096                     // 000000005DB4: D9FE1000 4A000040
	ds_read_b128 v[78:81], v64 offset:4112                     // 000000005DBC: D9FE1010 4E000040
	s_waitcnt lgkmcnt(4)                                       // 000000005DC4: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[104:111], v[220:227], 0// 000000005DC8: D3AE0080 0203B968
	ds_read_b128 v[82:85], v64 offset:8192                     // 000000005DD0: D9FE2000 52000040
	ds_read_b128 v[86:89], v64 offset:8208                     // 000000005DD8: D9FE2010 56000040
	ds_read_b128 v[112:115], v64 offset:12288                  // 000000005DE0: D9FE3000 70000040
	ds_read_b128 v[116:119], v64 offset:12304                  // 000000005DE8: D9FE3010 74000040
	s_add_u32 s19, s15, 4                                      // 000000005DF0: 8013840F
	s_cmp_ge_u32 s19, s91                                      // 000000005DF4: BF095B13
	s_cbranch_scc1 19                                          // 000000005DF8: BF850013 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4348>
	s_lshl_b32 s20, s18, 14                                    // 000000005DFC: 8E148E12
	s_and_b32 s20, s20, 0x8000                                 // 000000005E00: 8614FF14 00008000
	s_bitcmp1_b32 s17, 0                                       // 000000005E08: BF0D8011
	s_cselect_b32 s21, 0x4000, 0                               // 000000005E0C: 851580FF 00004000
	s_or_b32 s20, s20, s21                                     // 000000005E14: 87141514
	s_or_b32 s20, s20, s88                                     // 000000005E18: 87145814
	s_mul_i32 s19, s19, s8                                     // 000000005E1C: 92130813
	s_lshl_b32 s19, s19, 7                                     // 000000005E20: 8E138713
	s_mov_b32 m0, s20                                          // 000000005E24: BEFC0014
	s_nop 0                                                    // 000000005E28: BF800000
	buffer_load_dwordx4 v233, s[84:87], s19 offen lds          // 000000005E2C: E05D1000 131500E9
	s_or_b32 m0, s20, 0x2000                                   // 000000005E34: 877CFF14 00002000
	s_nop 0                                                    // 000000005E3C: BF800000
	buffer_load_dwordx4 v234, s[84:87], s19 offen lds          // 000000005E40: E05D1000 131500EA
	s_add_u32 s19, s15, 2                                      // 000000005E48: 8013820F
	s_cmp_ge_u32 s19, s91                                      // 000000005E4C: BF095B13
	s_cbranch_scc1 20                                          // 000000005E50: BF850014 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x43a4>
	s_not_b32 s18, s18                                         // 000000005E54: BE920412
	s_lshl_b32 s18, s18, 14                                    // 000000005E58: 8E128E12
	s_and_b32 s18, s18, 0x8000                                 // 000000005E5C: 8612FF12 00008000
	s_bitcmp1_b32 s17, 0                                       // 000000005E64: BF0D8011
	s_cselect_b32 s20, s93, 0x10000                            // 000000005E68: 8514FF5D 00010000
	s_or_b32 s18, s18, s20                                     // 000000005E70: 87121412
	s_or_b32 s18, s18, s88                                     // 000000005E74: 87125812
	s_mul_i32 s19, s19, s8                                     // 000000005E78: 92130813
	s_lshl_b32 s19, s19, 7                                     // 000000005E7C: 8E138713
	s_mov_b32 m0, s18                                          // 000000005E80: BEFC0012
	s_nop 0                                                    // 000000005E84: BF800000
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000005E88: E05D1000 131400EB
	s_add_u32 m0, s18, 0x2000                                  // 000000005E90: 807CFF12 00002000
	s_nop 0                                                    // 000000005E98: BF800000
	buffer_load_dwordx4 v236, s[80:83], s19 offen lds          // 000000005E9C: E05D1000 131400EC
	s_waitcnt lgkmcnt(6)                                       // 000000005EA4: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[66:73], v[200:207], v[176:191]// 000000005EA8: D3AE00B0 06C39142
	s_waitcnt lgkmcnt(4)                                       // 000000005EB0: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[74:81], v[200:207], v[160:175]// 000000005EB4: D3AE00A0 0683914A
	s_nop 15                                                   // 000000005EBC: BF80000F
	s_nop 3                                                    // 000000005EC0: BF800003
	v_mov_b64_e32 v[96:97], v[160:161]                         // 000000005EC4: 7EC071A0
	v_mov_b64_e32 v[98:99], v[162:163]                         // 000000005EC8: 7EC471A2
	v_mov_b64_e32 v[100:101], v[164:165]                       // 000000005ECC: 7EC871A4
	v_mov_b64_e32 v[102:103], v[166:167]                       // 000000005ED0: 7ECC71A6
	v_mov_b64_e32 v[104:105], v[168:169]                       // 000000005ED4: 7ED071A8
	v_mov_b64_e32 v[106:107], v[170:171]                       // 000000005ED8: 7ED471AA
	v_mov_b64_e32 v[108:109], v[172:173]                       // 000000005EDC: 7ED871AC
	v_mov_b64_e32 v[110:111], v[174:175]                       // 000000005EE0: 7EDC71AE
	s_waitcnt lgkmcnt(2)                                       // 000000005EE4: BF8CC27F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[82:89], v[200:207], v[144:159]// 000000005EE8: D3AE0090 06439152
	s_nop 15                                                   // 000000005EF0: BF80000F
	s_nop 3                                                    // 000000005EF4: BF800003
	v_mov_b64_e32 v[80:81], v[144:145]                         // 000000005EF8: 7EA07190
	v_mov_b64_e32 v[82:83], v[146:147]                         // 000000005EFC: 7EA47192
	v_mov_b64_e32 v[84:85], v[148:149]                         // 000000005F00: 7EA87194
	v_mov_b64_e32 v[86:87], v[150:151]                         // 000000005F04: 7EAC7196
	v_mov_b64_e32 v[88:89], v[152:153]                         // 000000005F08: 7EB07198
	v_mov_b64_e32 v[90:91], v[154:155]                         // 000000005F0C: 7EB4719A
	v_mov_b64_e32 v[92:93], v[156:157]                         // 000000005F10: 7EB8719C
	v_mov_b64_e32 v[94:95], v[158:159]                         // 000000005F14: 7EBC719E
	s_waitcnt lgkmcnt(0)                                       // 000000005F18: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[112:119], v[200:207], v[128:143]// 000000005F1C: D3AE0080 06039170
	s_nop 15                                                   // 000000005F24: BF80000F
	s_nop 3                                                    // 000000005F28: BF800003
	v_mov_b64_e32 v[64:65], v[128:129]                         // 000000005F2C: 7E807180
	v_mov_b64_e32 v[66:67], v[130:131]                         // 000000005F30: 7E847182
	v_mov_b64_e32 v[68:69], v[132:133]                         // 000000005F34: 7E887184
	v_mov_b64_e32 v[70:71], v[134:135]                         // 000000005F38: 7E8C7186
	v_mov_b64_e32 v[72:73], v[136:137]                         // 000000005F3C: 7E907188
	v_mov_b64_e32 v[74:75], v[138:139]                         // 000000005F40: 7E94718A
	v_mov_b64_e32 v[76:77], v[140:141]                         // 000000005F44: 7E98718C
	v_mov_b64_e32 v[78:79], v[142:143]                         // 000000005F48: 7E9C718E
	s_lshl_b32 s18, s15, 7                                     // 000000005F4C: 8E12870F
	s_add_u32 s20, s18, 0x80                                   // 000000005F50: 8014FF12 00000080
	s_sub_u32 s18, s3, s20                                     // 000000005F58: 80921403
	s_sub_i32 s18, s18, 0                                      // 000000005F5C: 81928012
	s_cmp_ge_i32 s18, 32                                       // 000000005F60: BF03A012
	v_mov_b64_e32 v[112:113], v[176:177]                       // 000000005F64: 7EE071B0
	v_mov_b64_e32 v[114:115], v[178:179]                       // 000000005F68: 7EE471B2
	v_mov_b64_e32 v[116:117], v[180:181]                       // 000000005F6C: 7EE871B4
	v_mov_b64_e32 v[118:119], v[182:183]                       // 000000005F70: 7EEC71B6
	v_mov_b64_e32 v[120:121], v[184:185]                       // 000000005F74: 7EF071B8
	v_mov_b64_e32 v[122:123], v[186:187]                       // 000000005F78: 7EF471BA
	v_mov_b64_e32 v[124:125], v[188:189]                       // 000000005F7C: 7EF871BC
	v_mov_b64_e32 v[126:127], v[190:191]                       // 000000005F80: 7EFC71BE
	s_cbranch_scc1 90                                          // 000000005F84: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x45f0>
	s_mov_b32 s53, s52                                         // 000000005F88: BEB50034
	s_mov_b32 s54, s52                                         // 000000005F8C: BEB60034
	s_mov_b32 s55, s52                                         // 000000005F90: BEB70034
	s_mov_b32 s56, s52                                         // 000000005F94: BEB80034
	s_mov_b32 s57, s52                                         // 000000005F98: BEB90034
	s_mov_b32 s58, s52                                         // 000000005F9C: BEBA0034
	s_mov_b32 s59, s52                                         // 000000005FA0: BEBB0034
	s_mov_b32 s60, s52                                         // 000000005FA4: BEBC0034
	s_mov_b32 s61, s52                                         // 000000005FA8: BEBD0034
	s_mov_b32 s62, s52                                         // 000000005FAC: BEBE0034
	s_mov_b32 s63, s52                                         // 000000005FB0: BEBF0034
	s_mov_b32 s64, s52                                         // 000000005FB4: BEC00034
	s_mov_b32 s65, s52                                         // 000000005FB8: BEC10034
	s_mov_b32 s66, s52                                         // 000000005FBC: BEC20034
	s_mov_b32 s67, s52                                         // 000000005FC0: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000005FC4: BF048012
	v_mov_b64_e32 v[126:127], s[66:67]                         // 000000005FC8: 7EFC7042
	v_mov_b64_e32 v[124:125], s[64:65]                         // 000000005FCC: 7EF87040
	v_mov_b64_e32 v[122:123], s[62:63]                         // 000000005FD0: 7EF4703E
	v_mov_b64_e32 v[120:121], s[60:61]                         // 000000005FD4: 7EF0703C
	v_mov_b64_e32 v[118:119], s[58:59]                         // 000000005FD8: 7EEC703A
	v_mov_b64_e32 v[116:117], s[56:57]                         // 000000005FDC: 7EE87038
	v_mov_b64_e32 v[114:115], s[54:55]                         // 000000005FE0: 7EE47036
	v_mov_b64_e32 v[112:113], s[52:53]                         // 000000005FE4: 7EE07034
	s_cbranch_scc1 65                                          // 000000005FE8: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x45f0>
	v_add_u32_e32 v127, s18, v243                              // 000000005FEC: 68FFE612
	v_cmp_gt_i32_e32 vcc, 0, v127                              // 000000005FF0: 7D88FE80
	s_nop 1                                                    // 000000005FF4: BF800001
	v_cndmask_b32_e64 v112, v176, v241, vcc                    // 000000005FF8: D1000070 01ABE3B0
	v_cmp_gt_i32_e32 vcc, 1, v127                              // 000000006000: 7D88FE81
	s_nop 1                                                    // 000000006004: BF800001
	v_cndmask_b32_e64 v113, v177, v241, vcc                    // 000000006008: D1000071 01ABE3B1
	v_cmp_gt_i32_e32 vcc, 2, v127                              // 000000006010: 7D88FE82
	s_nop 1                                                    // 000000006014: BF800001
	v_cndmask_b32_e64 v114, v178, v241, vcc                    // 000000006018: D1000072 01ABE3B2
	v_cmp_gt_i32_e32 vcc, 3, v127                              // 000000006020: 7D88FE83
	s_nop 1                                                    // 000000006024: BF800001
	v_cndmask_b32_e64 v115, v179, v241, vcc                    // 000000006028: D1000073 01ABE3B3
	v_cmp_gt_i32_e32 vcc, 8, v127                              // 000000006030: 7D88FE88
	s_nop 1                                                    // 000000006034: BF800001
	v_cndmask_b32_e64 v116, v180, v241, vcc                    // 000000006038: D1000074 01ABE3B4
	v_cmp_gt_i32_e32 vcc, 9, v127                              // 000000006040: 7D88FE89
	s_nop 1                                                    // 000000006044: BF800001
	v_cndmask_b32_e64 v117, v181, v241, vcc                    // 000000006048: D1000075 01ABE3B5
	v_cmp_gt_i32_e32 vcc, 10, v127                             // 000000006050: 7D88FE8A
	s_nop 1                                                    // 000000006054: BF800001
	v_cndmask_b32_e64 v118, v182, v241, vcc                    // 000000006058: D1000076 01ABE3B6
	v_cmp_gt_i32_e32 vcc, 11, v127                             // 000000006060: 7D88FE8B
	s_nop 1                                                    // 000000006064: BF800001
	v_cndmask_b32_e64 v119, v183, v241, vcc                    // 000000006068: D1000077 01ABE3B7
	v_cmp_gt_i32_e32 vcc, 16, v127                             // 000000006070: 7D88FE90
	s_nop 1                                                    // 000000006074: BF800001
	v_cndmask_b32_e64 v120, v184, v241, vcc                    // 000000006078: D1000078 01ABE3B8
	v_cmp_gt_i32_e32 vcc, 17, v127                             // 000000006080: 7D88FE91
	s_nop 1                                                    // 000000006084: BF800001
	v_cndmask_b32_e64 v121, v185, v241, vcc                    // 000000006088: D1000079 01ABE3B9
	v_cmp_gt_i32_e32 vcc, 18, v127                             // 000000006090: 7D88FE92
	s_nop 1                                                    // 000000006094: BF800001
	v_cndmask_b32_e64 v122, v186, v241, vcc                    // 000000006098: D100007A 01ABE3BA
	v_cmp_gt_i32_e32 vcc, 19, v127                             // 0000000060A0: 7D88FE93
	s_nop 1                                                    // 0000000060A4: BF800001
	v_cndmask_b32_e64 v123, v187, v241, vcc                    // 0000000060A8: D100007B 01ABE3BB
	v_cmp_gt_i32_e32 vcc, 24, v127                             // 0000000060B0: 7D88FE98
	s_nop 1                                                    // 0000000060B4: BF800001
	v_cndmask_b32_e64 v124, v188, v241, vcc                    // 0000000060B8: D100007C 01ABE3BC
	v_cmp_gt_i32_e32 vcc, 25, v127                             // 0000000060C0: 7D88FE99
	s_nop 1                                                    // 0000000060C4: BF800001
	v_cndmask_b32_e64 v125, v189, v241, vcc                    // 0000000060C8: D100007D 01ABE3BD
	v_cmp_gt_i32_e32 vcc, 26, v127                             // 0000000060D0: 7D88FE9A
	s_nop 1                                                    // 0000000060D4: BF800001
	v_cndmask_b32_e64 v126, v190, v241, vcc                    // 0000000060D8: D100007E 01ABE3BE
	v_cmp_gt_i32_e32 vcc, 27, v127                             // 0000000060E0: 7D88FE9B
	s_nop 1                                                    // 0000000060E4: BF800001
	v_cndmask_b32_e64 v127, v191, v241, vcc                    // 0000000060E8: D100007F 01ABE3BF
	s_sub_u32 s18, s3, s20                                     // 0000000060F0: 80921403
	s_sub_i32 s18, s18, 32                                     // 0000000060F4: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 0000000060F8: BF03A012
	s_cbranch_scc1 90                                          // 0000000060FC: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4768>
	s_mov_b32 s53, s52                                         // 000000006100: BEB50034
	s_mov_b32 s54, s52                                         // 000000006104: BEB60034
	s_mov_b32 s55, s52                                         // 000000006108: BEB70034
	s_mov_b32 s56, s52                                         // 00000000610C: BEB80034
	s_mov_b32 s57, s52                                         // 000000006110: BEB90034
	s_mov_b32 s58, s52                                         // 000000006114: BEBA0034
	s_mov_b32 s59, s52                                         // 000000006118: BEBB0034
	s_mov_b32 s60, s52                                         // 00000000611C: BEBC0034
	s_mov_b32 s61, s52                                         // 000000006120: BEBD0034
	s_mov_b32 s62, s52                                         // 000000006124: BEBE0034
	s_mov_b32 s63, s52                                         // 000000006128: BEBF0034
	s_mov_b32 s64, s52                                         // 00000000612C: BEC00034
	s_mov_b32 s65, s52                                         // 000000006130: BEC10034
	s_mov_b32 s66, s52                                         // 000000006134: BEC20034
	s_mov_b32 s67, s52                                         // 000000006138: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 00000000613C: BF048012
	v_mov_b64_e32 v[110:111], s[66:67]                         // 000000006140: 7EDC7042
	v_mov_b64_e32 v[108:109], s[64:65]                         // 000000006144: 7ED87040
	v_mov_b64_e32 v[106:107], s[62:63]                         // 000000006148: 7ED4703E
	v_mov_b64_e32 v[104:105], s[60:61]                         // 00000000614C: 7ED0703C
	v_mov_b64_e32 v[102:103], s[58:59]                         // 000000006150: 7ECC703A
	v_mov_b64_e32 v[100:101], s[56:57]                         // 000000006154: 7EC87038
	v_mov_b64_e32 v[98:99], s[54:55]                           // 000000006158: 7EC47036
	v_mov_b64_e32 v[96:97], s[52:53]                           // 00000000615C: 7EC07034
	s_cbranch_scc1 65                                          // 000000006160: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4768>
	v_add_u32_e32 v111, s18, v243                              // 000000006164: 68DFE612
	v_cmp_gt_i32_e32 vcc, 0, v111                              // 000000006168: 7D88DE80
	s_nop 1                                                    // 00000000616C: BF800001
	v_cndmask_b32_e64 v96, v160, v241, vcc                     // 000000006170: D1000060 01ABE3A0
	v_cmp_gt_i32_e32 vcc, 1, v111                              // 000000006178: 7D88DE81
	s_nop 1                                                    // 00000000617C: BF800001
	v_cndmask_b32_e64 v97, v161, v241, vcc                     // 000000006180: D1000061 01ABE3A1
	v_cmp_gt_i32_e32 vcc, 2, v111                              // 000000006188: 7D88DE82
	s_nop 1                                                    // 00000000618C: BF800001
	v_cndmask_b32_e64 v98, v162, v241, vcc                     // 000000006190: D1000062 01ABE3A2
	v_cmp_gt_i32_e32 vcc, 3, v111                              // 000000006198: 7D88DE83
	s_nop 1                                                    // 00000000619C: BF800001
	v_cndmask_b32_e64 v99, v163, v241, vcc                     // 0000000061A0: D1000063 01ABE3A3
	v_cmp_gt_i32_e32 vcc, 8, v111                              // 0000000061A8: 7D88DE88
	s_nop 1                                                    // 0000000061AC: BF800001
	v_cndmask_b32_e64 v100, v164, v241, vcc                    // 0000000061B0: D1000064 01ABE3A4
	v_cmp_gt_i32_e32 vcc, 9, v111                              // 0000000061B8: 7D88DE89
	s_nop 1                                                    // 0000000061BC: BF800001
	v_cndmask_b32_e64 v101, v165, v241, vcc                    // 0000000061C0: D1000065 01ABE3A5
	v_cmp_gt_i32_e32 vcc, 10, v111                             // 0000000061C8: 7D88DE8A
	s_nop 1                                                    // 0000000061CC: BF800001
	v_cndmask_b32_e64 v102, v166, v241, vcc                    // 0000000061D0: D1000066 01ABE3A6
	v_cmp_gt_i32_e32 vcc, 11, v111                             // 0000000061D8: 7D88DE8B
	s_nop 1                                                    // 0000000061DC: BF800001
	v_cndmask_b32_e64 v103, v167, v241, vcc                    // 0000000061E0: D1000067 01ABE3A7
	v_cmp_gt_i32_e32 vcc, 16, v111                             // 0000000061E8: 7D88DE90
	s_nop 1                                                    // 0000000061EC: BF800001
	v_cndmask_b32_e64 v104, v168, v241, vcc                    // 0000000061F0: D1000068 01ABE3A8
	v_cmp_gt_i32_e32 vcc, 17, v111                             // 0000000061F8: 7D88DE91
	s_nop 1                                                    // 0000000061FC: BF800001
	v_cndmask_b32_e64 v105, v169, v241, vcc                    // 000000006200: D1000069 01ABE3A9
	v_cmp_gt_i32_e32 vcc, 18, v111                             // 000000006208: 7D88DE92
	s_nop 1                                                    // 00000000620C: BF800001
	v_cndmask_b32_e64 v106, v170, v241, vcc                    // 000000006210: D100006A 01ABE3AA
	v_cmp_gt_i32_e32 vcc, 19, v111                             // 000000006218: 7D88DE93
	s_nop 1                                                    // 00000000621C: BF800001
	v_cndmask_b32_e64 v107, v171, v241, vcc                    // 000000006220: D100006B 01ABE3AB
	v_cmp_gt_i32_e32 vcc, 24, v111                             // 000000006228: 7D88DE98
	s_nop 1                                                    // 00000000622C: BF800001
	v_cndmask_b32_e64 v108, v172, v241, vcc                    // 000000006230: D100006C 01ABE3AC
	v_cmp_gt_i32_e32 vcc, 25, v111                             // 000000006238: 7D88DE99
	s_nop 1                                                    // 00000000623C: BF800001
	v_cndmask_b32_e64 v109, v173, v241, vcc                    // 000000006240: D100006D 01ABE3AD
	v_cmp_gt_i32_e32 vcc, 26, v111                             // 000000006248: 7D88DE9A
	s_nop 1                                                    // 00000000624C: BF800001
	v_cndmask_b32_e64 v110, v174, v241, vcc                    // 000000006250: D100006E 01ABE3AE
	v_cmp_gt_i32_e32 vcc, 27, v111                             // 000000006258: 7D88DE9B
	s_nop 1                                                    // 00000000625C: BF800001
	v_cndmask_b32_e64 v111, v175, v241, vcc                    // 000000006260: D100006F 01ABE3AF
	s_sub_u32 s18, s3, s20                                     // 000000006268: 80921403
	s_sub_i32 s18, s18, 64                                     // 00000000626C: 8192C012
	scratch_load_dwordx4 v[160:163], off, off                  // 000000006270: DC5C4000 A07F0000
	scratch_load_dwordx4 v[164:167], off, off offset:16        // 000000006278: DC5C4010 A47F0000
	s_cmp_ge_i32 s18, 32                                       // 000000006280: BF03A012
	s_cbranch_scc1 90                                          // 000000006284: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x48f0>
	s_mov_b32 s53, s52                                         // 000000006288: BEB50034
	s_mov_b32 s54, s52                                         // 00000000628C: BEB60034
	s_mov_b32 s55, s52                                         // 000000006290: BEB70034
	s_mov_b32 s56, s52                                         // 000000006294: BEB80034
	s_mov_b32 s57, s52                                         // 000000006298: BEB90034
	s_mov_b32 s58, s52                                         // 00000000629C: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000062A0: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000062A4: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000062A8: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000062AC: BEBE0034
	s_mov_b32 s63, s52                                         // 0000000062B0: BEBF0034
	s_mov_b32 s64, s52                                         // 0000000062B4: BEC00034
	s_mov_b32 s65, s52                                         // 0000000062B8: BEC10034
	s_mov_b32 s66, s52                                         // 0000000062BC: BEC20034
	s_mov_b32 s67, s52                                         // 0000000062C0: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 0000000062C4: BF048012
	v_mov_b64_e32 v[94:95], s[66:67]                           // 0000000062C8: 7EBC7042
	v_mov_b64_e32 v[92:93], s[64:65]                           // 0000000062CC: 7EB87040
	v_mov_b64_e32 v[90:91], s[62:63]                           // 0000000062D0: 7EB4703E
	v_mov_b64_e32 v[88:89], s[60:61]                           // 0000000062D4: 7EB0703C
	v_mov_b64_e32 v[86:87], s[58:59]                           // 0000000062D8: 7EAC703A
	v_mov_b64_e32 v[84:85], s[56:57]                           // 0000000062DC: 7EA87038
	v_mov_b64_e32 v[82:83], s[54:55]                           // 0000000062E0: 7EA47036
	v_mov_b64_e32 v[80:81], s[52:53]                           // 0000000062E4: 7EA07034
	s_cbranch_scc1 65                                          // 0000000062E8: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x48f0>
	v_add_u32_e32 v95, s18, v243                               // 0000000062EC: 68BFE612
	v_cmp_gt_i32_e32 vcc, 0, v95                               // 0000000062F0: 7D88BE80
	s_nop 1                                                    // 0000000062F4: BF800001
	v_cndmask_b32_e64 v80, v144, v241, vcc                     // 0000000062F8: D1000050 01ABE390
	v_cmp_gt_i32_e32 vcc, 1, v95                               // 000000006300: 7D88BE81
	s_nop 1                                                    // 000000006304: BF800001
	v_cndmask_b32_e64 v81, v145, v241, vcc                     // 000000006308: D1000051 01ABE391
	v_cmp_gt_i32_e32 vcc, 2, v95                               // 000000006310: 7D88BE82
	s_nop 1                                                    // 000000006314: BF800001
	v_cndmask_b32_e64 v82, v146, v241, vcc                     // 000000006318: D1000052 01ABE392
	v_cmp_gt_i32_e32 vcc, 3, v95                               // 000000006320: 7D88BE83
	s_nop 1                                                    // 000000006324: BF800001
	v_cndmask_b32_e64 v83, v147, v241, vcc                     // 000000006328: D1000053 01ABE393
	v_cmp_gt_i32_e32 vcc, 8, v95                               // 000000006330: 7D88BE88
	s_nop 1                                                    // 000000006334: BF800001
	v_cndmask_b32_e64 v84, v148, v241, vcc                     // 000000006338: D1000054 01ABE394
	v_cmp_gt_i32_e32 vcc, 9, v95                               // 000000006340: 7D88BE89
	s_nop 1                                                    // 000000006344: BF800001
	v_cndmask_b32_e64 v85, v149, v241, vcc                     // 000000006348: D1000055 01ABE395
	v_cmp_gt_i32_e32 vcc, 10, v95                              // 000000006350: 7D88BE8A
	s_nop 1                                                    // 000000006354: BF800001
	v_cndmask_b32_e64 v86, v150, v241, vcc                     // 000000006358: D1000056 01ABE396
	v_cmp_gt_i32_e32 vcc, 11, v95                              // 000000006360: 7D88BE8B
	s_nop 1                                                    // 000000006364: BF800001
	v_cndmask_b32_e64 v87, v151, v241, vcc                     // 000000006368: D1000057 01ABE397
	v_cmp_gt_i32_e32 vcc, 16, v95                              // 000000006370: 7D88BE90
	s_nop 1                                                    // 000000006374: BF800001
	v_cndmask_b32_e64 v88, v152, v241, vcc                     // 000000006378: D1000058 01ABE398
	v_cmp_gt_i32_e32 vcc, 17, v95                              // 000000006380: 7D88BE91
	s_nop 1                                                    // 000000006384: BF800001
	v_cndmask_b32_e64 v89, v153, v241, vcc                     // 000000006388: D1000059 01ABE399
	v_cmp_gt_i32_e32 vcc, 18, v95                              // 000000006390: 7D88BE92
	s_nop 1                                                    // 000000006394: BF800001
	v_cndmask_b32_e64 v90, v154, v241, vcc                     // 000000006398: D100005A 01ABE39A
	v_cmp_gt_i32_e32 vcc, 19, v95                              // 0000000063A0: 7D88BE93
	s_nop 1                                                    // 0000000063A4: BF800001
	v_cndmask_b32_e64 v91, v155, v241, vcc                     // 0000000063A8: D100005B 01ABE39B
	v_cmp_gt_i32_e32 vcc, 24, v95                              // 0000000063B0: 7D88BE98
	s_nop 1                                                    // 0000000063B4: BF800001
	v_cndmask_b32_e64 v92, v156, v241, vcc                     // 0000000063B8: D100005C 01ABE39C
	v_cmp_gt_i32_e32 vcc, 25, v95                              // 0000000063C0: 7D88BE99
	s_nop 1                                                    // 0000000063C4: BF800001
	v_cndmask_b32_e64 v93, v157, v241, vcc                     // 0000000063C8: D100005D 01ABE39D
	v_cmp_gt_i32_e32 vcc, 26, v95                              // 0000000063D0: 7D88BE9A
	s_nop 1                                                    // 0000000063D4: BF800001
	v_cndmask_b32_e64 v94, v158, v241, vcc                     // 0000000063D8: D100005E 01ABE39E
	v_cmp_gt_i32_e32 vcc, 27, v95                              // 0000000063E0: 7D88BE9B
	s_nop 1                                                    // 0000000063E4: BF800001
	v_cndmask_b32_e64 v95, v159, v241, vcc                     // 0000000063E8: D100005F 01ABE39F
	s_sub_u32 s18, s3, s20                                     // 0000000063F0: 80921403
	s_sub_i32 s18, s18, 0x60                                   // 0000000063F4: 8192FF12 00000060
	s_cmp_ge_i32 s18, 32                                       // 0000000063FC: BF03A012
	s_cbranch_scc1 90                                          // 000000006400: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4a6c>
	s_mov_b32 s53, s52                                         // 000000006404: BEB50034
	s_mov_b32 s54, s52                                         // 000000006408: BEB60034
	s_mov_b32 s55, s52                                         // 00000000640C: BEB70034
	s_mov_b32 s56, s52                                         // 000000006410: BEB80034
	s_mov_b32 s57, s52                                         // 000000006414: BEB90034
	s_mov_b32 s58, s52                                         // 000000006418: BEBA0034
	s_mov_b32 s59, s52                                         // 00000000641C: BEBB0034
	s_mov_b32 s60, s52                                         // 000000006420: BEBC0034
	s_mov_b32 s61, s52                                         // 000000006424: BEBD0034
	s_mov_b32 s62, s52                                         // 000000006428: BEBE0034
	s_mov_b32 s63, s52                                         // 00000000642C: BEBF0034
	s_mov_b32 s64, s52                                         // 000000006430: BEC00034
	s_mov_b32 s65, s52                                         // 000000006434: BEC10034
	s_mov_b32 s66, s52                                         // 000000006438: BEC20034
	s_mov_b32 s67, s52                                         // 00000000643C: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000006440: BF048012
	v_mov_b64_e32 v[78:79], s[66:67]                           // 000000006444: 7E9C7042
	v_mov_b64_e32 v[76:77], s[64:65]                           // 000000006448: 7E987040
	v_mov_b64_e32 v[74:75], s[62:63]                           // 00000000644C: 7E94703E
	v_mov_b64_e32 v[72:73], s[60:61]                           // 000000006450: 7E90703C
	v_mov_b64_e32 v[70:71], s[58:59]                           // 000000006454: 7E8C703A
	v_mov_b64_e32 v[68:69], s[56:57]                           // 000000006458: 7E887038
	v_mov_b64_e32 v[66:67], s[54:55]                           // 00000000645C: 7E847036
	v_mov_b64_e32 v[64:65], s[52:53]                           // 000000006460: 7E807034
	s_cbranch_scc1 65                                          // 000000006464: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4a6c>
	v_add_u32_e32 v79, s18, v243                               // 000000006468: 689FE612
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 00000000646C: 7D889E80
	s_nop 1                                                    // 000000006470: BF800001
	v_cndmask_b32_e64 v64, v128, v241, vcc                     // 000000006474: D1000040 01ABE380
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 00000000647C: 7D889E81
	s_nop 1                                                    // 000000006480: BF800001
	v_cndmask_b32_e64 v65, v129, v241, vcc                     // 000000006484: D1000041 01ABE381
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 00000000648C: 7D889E82
	s_nop 1                                                    // 000000006490: BF800001
	v_cndmask_b32_e64 v66, v130, v241, vcc                     // 000000006494: D1000042 01ABE382
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 00000000649C: 7D889E83
	s_nop 1                                                    // 0000000064A0: BF800001
	v_cndmask_b32_e64 v67, v131, v241, vcc                     // 0000000064A4: D1000043 01ABE383
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 0000000064AC: 7D889E88
	s_nop 1                                                    // 0000000064B0: BF800001
	v_cndmask_b32_e64 v68, v132, v241, vcc                     // 0000000064B4: D1000044 01ABE384
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 0000000064BC: 7D889E89
	s_nop 1                                                    // 0000000064C0: BF800001
	v_cndmask_b32_e64 v69, v133, v241, vcc                     // 0000000064C4: D1000045 01ABE385
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 0000000064CC: 7D889E8A
	s_nop 1                                                    // 0000000064D0: BF800001
	v_cndmask_b32_e64 v70, v134, v241, vcc                     // 0000000064D4: D1000046 01ABE386
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 0000000064DC: 7D889E8B
	s_nop 1                                                    // 0000000064E0: BF800001
	v_cndmask_b32_e64 v71, v135, v241, vcc                     // 0000000064E4: D1000047 01ABE387
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 0000000064EC: 7D889E90
	s_nop 1                                                    // 0000000064F0: BF800001
	v_cndmask_b32_e64 v72, v136, v241, vcc                     // 0000000064F4: D1000048 01ABE388
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 0000000064FC: 7D889E91
	s_nop 1                                                    // 000000006500: BF800001
	v_cndmask_b32_e64 v73, v137, v241, vcc                     // 000000006504: D1000049 01ABE389
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 00000000650C: 7D889E92
	s_nop 1                                                    // 000000006510: BF800001
	v_cndmask_b32_e64 v74, v138, v241, vcc                     // 000000006514: D100004A 01ABE38A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 00000000651C: 7D889E93
	s_nop 1                                                    // 000000006520: BF800001
	v_cndmask_b32_e64 v75, v139, v241, vcc                     // 000000006524: D100004B 01ABE38B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 00000000652C: 7D889E98
	s_nop 1                                                    // 000000006530: BF800001
	v_cndmask_b32_e64 v76, v140, v241, vcc                     // 000000006534: D100004C 01ABE38C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 00000000653C: 7D889E99
	s_nop 1                                                    // 000000006540: BF800001
	v_cndmask_b32_e64 v77, v141, v241, vcc                     // 000000006544: D100004D 01ABE38D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 00000000654C: 7D889E9A
	s_nop 1                                                    // 000000006550: BF800001
	v_cndmask_b32_e64 v78, v142, v241, vcc                     // 000000006554: D100004E 01ABE38E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 00000000655C: 7D889E9B
	s_nop 1                                                    // 000000006560: BF800001
	v_cndmask_b32_e64 v79, v143, v241, vcc                     // 000000006564: D100004F 01ABE38F
	v_max_f32_e32 v128, v112, v113                             // 00000000656C: 1700E370
	v_max3_f32 v128, v114, v115, v128                          // 000000006570: D1D30080 0602E772
	v_max3_f32 v128, v116, v117, v128                          // 000000006578: D1D30080 0602EB74
	v_max3_f32 v128, v118, v119, v128                          // 000000006580: D1D30080 0602EF76
	v_max3_f32 v128, v120, v121, v128                          // 000000006588: D1D30080 0602F378
	v_max3_f32 v128, v122, v123, v128                          // 000000006590: D1D30080 0602F77A
	v_max3_f32 v128, v124, v125, v128                          // 000000006598: D1D30080 0602FB7C
	v_max3_f32 v129, v126, v127, v128                          // 0000000065A0: D1D30081 0602FF7E
	v_max_f32_e32 v128, v96, v97                               // 0000000065A8: 1700C360
	v_max3_f32 v128, v98, v99, v128                            // 0000000065AC: D1D30080 0602C762
	v_max3_f32 v128, v100, v101, v128                          // 0000000065B4: D1D30080 0602CB64
	v_max3_f32 v128, v102, v103, v128                          // 0000000065BC: D1D30080 0602CF66
	v_max3_f32 v128, v104, v105, v128                          // 0000000065C4: D1D30080 0602D368
	v_max3_f32 v128, v106, v107, v128                          // 0000000065CC: D1D30080 0602D76A
	v_max3_f32 v128, v108, v109, v128                          // 0000000065D4: D1D30080 0602DB6C
	v_max3_f32 v130, v110, v111, v128                          // 0000000065DC: D1D30082 0602DF6E
	v_max_f32_e32 v128, v80, v81                               // 0000000065E4: 1700A350
	v_max3_f32 v128, v82, v83, v128                            // 0000000065E8: D1D30080 0602A752
	v_max3_f32 v128, v84, v85, v128                            // 0000000065F0: D1D30080 0602AB54
	v_max3_f32 v128, v86, v87, v128                            // 0000000065F8: D1D30080 0602AF56
	v_max3_f32 v128, v88, v89, v128                            // 000000006600: D1D30080 0602B358
	v_max3_f32 v128, v90, v91, v128                            // 000000006608: D1D30080 0602B75A
	v_max3_f32 v128, v92, v93, v128                            // 000000006610: D1D30080 0602BB5C
	v_max3_f32 v128, v94, v95, v128                            // 000000006618: D1D30080 0602BF5E
	v_max_f32_e32 v131, v64, v65                               // 000000006620: 17068340
	v_max3_f32 v131, v66, v67, v131                            // 000000006624: D1D30083 060E8742
	v_max3_f32 v131, v68, v69, v131                            // 00000000662C: D1D30083 060E8B44
	v_max3_f32 v131, v70, v71, v131                            // 000000006634: D1D30083 060E8F46
	v_max3_f32 v131, v72, v73, v131                            // 00000000663C: D1D30083 060E9348
	v_max3_f32 v131, v74, v75, v131                            // 000000006644: D1D30083 060E974A
	v_max3_f32 v131, v76, v77, v131                            // 00000000664C: D1D30083 060E9B4C
	v_max3_f32 v131, v78, v79, v131                            // 000000006654: D1D30083 060E9F4E
	v_max_f32_e32 v128, v128, v131                             // 00000000665C: 17010780
	v_max_f32_e32 v130, v129, v130                             // 000000006660: 17050581
	v_mov_b32_e32 v131, v130                                   // 000000006664: 7F060382
	s_nop 1                                                    // 000000006668: BF800001
	v_permlane32_swap_b32_e32 v130, v131                       // 00000000666C: 7F04B583
	v_mov_b32_e32 v129, v128                                   // 000000006670: 7F020380
	s_nop 1                                                    // 000000006674: BF800001
	v_permlane32_swap_b32_e32 v128, v129                       // 000000006678: 7F00B581
	v_max_f32_e32 v128, v128, v129                             // 00000000667C: 17010380
	v_max_f32_e32 v130, v130, v131                             // 000000006680: 17050782
	v_max_f32_e32 v129, v130, v128                             // 000000006684: 17030182
	v_mul_f32_e32 v129, v238, v129                             // 000000006688: 0B0303EE
	v_max_f32_e32 v129, v252, v129                             // 00000000668C: 170303FC
	v_sub_f32_e32 v131, v129, v252                             // 000000006690: 0507F981
	v_cmp_lt_f32_e32 vcc, s37, v131                            // 000000006694: 7C830625
	s_cmp_lg_u64 vcc, 0                                        // 000000006698: BF13806A
	s_cselect_b32 s18, 1, 0                                    // 00000000669C: 85128081
	s_cselect_b64 s[18:19], -1, 0                              // 0000000066A0: 859280C1
	v_cndmask_b32_e64 v129, v252, v129, s[18:19]               // 0000000066A4: D1000081 004B03FC
	v_fma_f32 v130, v130, v238, -v129                          // 0000000066AC: D1CB0082 8607DD82
	v_floor_f32_e32 v130, v130                                 // 0000000066B4: 7F043F82
	v_med3_f32 v132, v130, s99, 0                              // 0000000066B8: D1D60084 0200C782
	v_cvt_i32_f32_e32 v130, v132                               // 0000000066C0: 7F041184
	v_add_u32_e32 v130, 0x7f, v130                             // 0000000066C4: 690504FF 0000007F
	v_lshlrev_b32_e32 v131, 23, v130                           // 0000000066CC: 25070497
	v_fma_f32 v128, v128, v238, -v129                          // 0000000066D0: D1CB0080 8607DD80
	v_floor_f32_e32 v128, v128                                 // 0000000066D8: 7F003F80
	v_med3_f32 v128, v128, s99, 0                              // 0000000066DC: D1D60080 0200C780
	v_cvt_i32_f32_e32 v131, v128                               // 0000000066E4: 7F061180
	v_add_u32_e32 v131, 0x7f, v131                             // 0000000066E8: 690706FF 0000007F
	v_lshlrev_b32_e32 v133, 23, v131                           // 0000000066F0: 250B0697
	v_mov_b32_e32 v133, s50                                    // 0000000066F4: 7F0A0232
	v_fma_f32 v133, v129, s95, v133                            // 0000000066F8: D1CB0085 0614BF81
	v_fma_f32 v152, v132, s95, v133                            // 000000006700: D1CB0098 0614BF84
	v_fma_f32 v150, v128, s95, v133                            // 000000006708: D1CB0096 0614BF80
	s_lshl_b32 s18, s17, 14                                    // 000000006710: 8E128E11
	s_and_b32 s18, s18, 0x8000                                 // 000000006714: 8612FF12 00008000
	s_bitcmp1_b32 s17, 0                                       // 00000000671C: BF0D8011
	s_cselect_b32 s17, s93, 0x10000                            // 000000006720: 8511FF5D 00010000
	s_or_b32 s18, s18, s17                                     // 000000006728: 87121112
	v_or_b32_e32 v128, s18, v245                               // 00000000672C: 2901EA12
	v_add_u32_e32 v128, v128, v244                             // 000000006730: 6901E980
	s_waitcnt vmcnt(2)                                         // 000000006734: BF8C0F72
	ds_read_b64_tr_b8 v[132:133], v128                         // 000000006738: D9C40000 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:1024             // 000000006740: D9C40400 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:2048             // 000000006748: D9C40800 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:3072             // 000000006750: D9C40C00 8A000080
	ds_read_b64_tr_b8 v[140:141], v128 offset:256              // 000000006758: D9C40100 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:1280             // 000000006760: D9C40500 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:2304             // 000000006768: D9C40900 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:3328             // 000000006770: D9C40D00 92000080
	s_waitcnt lgkmcnt(4)                                       // 000000006778: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[132:139], v[208:215], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 00000000677C: D3AC0000 0003F7F2 D3AE0830 04C3A184
	s_waitcnt lgkmcnt(0)                                       // 00000000678C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[140:147], v[208:215], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000006790: D3AC0000 0003F7F2 D3AE0820 0483A18C
	ds_read_b64_tr_b8 v[132:133], v128 offset:512              // 0000000067A0: D9C40200 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:1536             // 0000000067A8: D9C40600 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:2560             // 0000000067B0: D9C40A00 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:3584             // 0000000067B8: D9C40E00 8A000080
	s_waitcnt lgkmcnt(0)                                       // 0000000067C0: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[132:139], v[208:215], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 0000000067C4: D3AC0000 0003F7F2 D3AE0810 0443A184
	ds_read_b64_tr_b8 v[140:141], v128 offset:768              // 0000000067D4: D9C40300 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:1792             // 0000000067DC: D9C40700 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:2816             // 0000000067E4: D9C40B00 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:3840             // 0000000067EC: D9C40F00 92000080
	s_waitcnt lgkmcnt(0)                                       // 0000000067F4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[140:147], v[208:215], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 0000000067F8: D3AC0000 0003F7F2 D3AE0800 0403A18C
	ds_read_b64_tr_b8 v[132:133], v128 offset:4096             // 000000006808: D9C41000 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:5120             // 000000006810: D9C41400 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:6144             // 000000006818: D9C41800 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:7168             // 000000006820: D9C41C00 8A000080
	s_waitcnt vmcnt(0) lgkmcnt(0)                              // 000000006828: BF8C0070
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[132:139], v[160:167], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 00000000682C: D3AC0000 0003FBF2 D3AE0830 04C34184
	ds_read_b64_tr_b8 v[140:141], v128 offset:4352             // 00000000683C: D9C41100 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:5376             // 000000006844: D9C41500 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:6400             // 00000000684C: D9C41900 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:7424             // 000000006854: D9C41D00 92000080
	s_waitcnt lgkmcnt(0)                                       // 00000000685C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[140:147], v[160:167], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000006860: D3AC0000 0003FBF2 D3AE0820 0483418C
	ds_read_b64_tr_b8 v[132:133], v128 offset:4608             // 000000006870: D9C41200 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:5632             // 000000006878: D9C41600 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:6656             // 000000006880: D9C41A00 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:7680             // 000000006888: D9C41E00 8A000080
	s_waitcnt lgkmcnt(0)                                       // 000000006890: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[132:139], v[160:167], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000006894: D3AC0000 0003FBF2 D3AE0810 04434184
	ds_read_b64_tr_b8 v[140:141], v128 offset:4864             // 0000000068A4: D9C41300 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:5888             // 0000000068AC: D9C41700 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:6912             // 0000000068B4: D9C41B00 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:7936             // 0000000068BC: D9C41F00 92000080
	s_waitcnt lgkmcnt(0)                                       // 0000000068C4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[140:147], v[160:167], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 0000000068C8: D3AC0000 0003FBF2 D3AE0800 0403418C
	s_cbranch_vccz 68                                          // 0000000068D8: BF860044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4eec>
	v_sub_f32_e32 v128, v252, v129                             // 0000000068DC: 050103FC
	v_exp_f32_e32 v128, v128                                   // 0000000068E0: 7F004180
	s_nop 0                                                    // 0000000068E4: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 0000000068E8: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 0000000068F0: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 0000000068F8: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 000000006900: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 000000006908: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 000000006910: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 000000006918: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 000000006920: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000006928: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000006930: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000006938: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000006940: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000006948: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000006950: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000006958: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000006960: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000006968: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000006970: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000006978: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000006980: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000006988: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000006990: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000006998: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 0000000069A0: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 0000000069A8: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 0000000069B0: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 0000000069B8: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 0000000069C0: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 0000000069C8: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 0000000069D0: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 0000000069D8: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 0000000069E0: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 0000000069E8: 0BF501FA
	s_waitcnt vmcnt(0)                                         // 0000000069EC: BF8C0F70
	s_barrier                                                  // 0000000069F0: BF8A0000
	s_add_u32 s15, s15, 1                                      // 0000000069F4: 800F810F
	v_mov_b32_e32 v253, v131                                   // 0000000069F8: 7FFA0383
	v_mov_b32_e32 v251, v130                                   // 0000000069FC: 7FF60382
	v_mov_b32_e32 v252, v129                                   // 000000006A00: 7FF80381
	s_branch 479                                               // 000000006A04: BF8201DF <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5684>
	s_cmp_eq_u32 s15, s35                                      // 000000006A08: BF06230F
	s_cbranch_scc0 429                                         // 000000006A0C: BF8401AD <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x55c4>
	s_setprio 0                                                // 000000006A10: BF8F0000
	v_fma_f32 v128, v112, v239, v152                           // 000000006A14: D1CB0080 0663DF70
	v_fma_f32 v132, v96, v239, v152                            // 000000006A1C: D1CB0084 0663DF60
	v_fma_f32 v136, v116, v239, v152                           // 000000006A24: D1CB0088 0663DF74
	v_fma_f32 v140, v100, v239, v152                           // 000000006A2C: D1CB008C 0663DF64
	v_fma_f32 v144, v120, v239, v152                           // 000000006A34: D1CB0090 0663DF78
	v_fma_f32 v148, v104, v239, v152                           // 000000006A3C: D1CB0094 0663DF68
	v_fma_f32 v154, v124, v239, v152                           // 000000006A44: D1CB009A 0663DF7C
	v_fma_f32 v158, v108, v239, v152                           // 000000006A4C: D1CB009E 0663DF6C
	v_fma_f32 v162, v80, v239, v150                            // 000000006A54: D1CB00A2 065BDF50
	v_fma_f32 v166, v64, v239, v150                            // 000000006A5C: D1CB00A6 065BDF40
	v_fma_f32 v170, v84, v239, v150                            // 000000006A64: D1CB00AA 065BDF54
	v_fma_f32 v174, v68, v239, v150                            // 000000006A6C: D1CB00AE 065BDF44
	v_fma_f32 v178, v88, v239, v150                            // 000000006A74: D1CB00B2 065BDF58
	v_fma_f32 v182, v72, v239, v150                            // 000000006A7C: D1CB00B6 065BDF48
	v_fma_f32 v186, v92, v239, v150                            // 000000006A84: D1CB00BA 065BDF5C
	v_fma_f32 v190, v76, v239, v150                            // 000000006A8C: D1CB00BE 065BDF4C
	v_fma_f32 v129, v113, v239, v152                           // 000000006A94: D1CB0081 0663DF71
	v_fma_f32 v133, v97, v239, v152                            // 000000006A9C: D1CB0085 0663DF61
	v_fma_f32 v137, v117, v239, v152                           // 000000006AA4: D1CB0089 0663DF75
	v_fma_f32 v141, v101, v239, v152                           // 000000006AAC: D1CB008D 0663DF65
	v_fma_f32 v145, v121, v239, v152                           // 000000006AB4: D1CB0091 0663DF79
	v_fma_f32 v149, v105, v239, v152                           // 000000006ABC: D1CB0095 0663DF69
	v_fma_f32 v155, v125, v239, v152                           // 000000006AC4: D1CB009B 0663DF7D
	v_fma_f32 v159, v109, v239, v152                           // 000000006ACC: D1CB009F 0663DF6D
	v_fma_f32 v163, v81, v239, v150                            // 000000006AD4: D1CB00A3 065BDF51
	v_fma_f32 v167, v65, v239, v150                            // 000000006ADC: D1CB00A7 065BDF41
	v_fma_f32 v171, v85, v239, v150                            // 000000006AE4: D1CB00AB 065BDF55
	v_fma_f32 v175, v69, v239, v150                            // 000000006AEC: D1CB00AF 065BDF45
	v_fma_f32 v179, v89, v239, v150                            // 000000006AF4: D1CB00B3 065BDF59
	v_fma_f32 v183, v73, v239, v150                            // 000000006AFC: D1CB00B7 065BDF49
	v_fma_f32 v187, v93, v239, v150                            // 000000006B04: D1CB00BB 065BDF5D
	v_fma_f32 v191, v77, v239, v150                            // 000000006B0C: D1CB00BF 065BDF4D
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 000000006B14: D1DD0080 02010180
	v_cvt_pk_u8_f32 v132, v132, 0, 0                           // 000000006B1C: D1DD0084 02010184
	v_cvt_pk_u8_f32 v136, v136, 0, 0                           // 000000006B24: D1DD0088 02010188
	v_cvt_pk_u8_f32 v140, v140, 0, 0                           // 000000006B2C: D1DD008C 0201018C
	v_cvt_pk_u8_f32 v144, v144, 0, 0                           // 000000006B34: D1DD0090 02010190
	v_cvt_pk_u8_f32 v148, v148, 0, 0                           // 000000006B3C: D1DD0094 02010194
	v_cvt_pk_u8_f32 v154, v154, 0, 0                           // 000000006B44: D1DD009A 0201019A
	v_cvt_pk_u8_f32 v158, v158, 0, 0                           // 000000006B4C: D1DD009E 0201019E
	v_cvt_pk_u8_f32 v162, v162, 0, 0                           // 000000006B54: D1DD00A2 020101A2
	v_cvt_pk_u8_f32 v166, v166, 0, 0                           // 000000006B5C: D1DD00A6 020101A6
	v_cvt_pk_u8_f32 v170, v170, 0, 0                           // 000000006B64: D1DD00AA 020101AA
	v_cvt_pk_u8_f32 v174, v174, 0, 0                           // 000000006B6C: D1DD00AE 020101AE
	v_cvt_pk_u8_f32 v178, v178, 0, 0                           // 000000006B74: D1DD00B2 020101B2
	v_cvt_pk_u8_f32 v182, v182, 0, 0                           // 000000006B7C: D1DD00B6 020101B6
	v_cvt_pk_u8_f32 v186, v186, 0, 0                           // 000000006B84: D1DD00BA 020101BA
	v_cvt_pk_u8_f32 v190, v190, 0, 0                           // 000000006B8C: D1DD00BE 020101BE
	v_fma_f32 v130, v114, v239, v152                           // 000000006B94: D1CB0082 0663DF72
	v_fma_f32 v134, v98, v239, v152                            // 000000006B9C: D1CB0086 0663DF62
	v_fma_f32 v138, v118, v239, v152                           // 000000006BA4: D1CB008A 0663DF76
	v_fma_f32 v142, v102, v239, v152                           // 000000006BAC: D1CB008E 0663DF66
	v_fma_f32 v146, v122, v239, v152                           // 000000006BB4: D1CB0092 0663DF7A
	v_fma_f32 v151, v106, v239, v152                           // 000000006BBC: D1CB0097 0663DF6A
	v_fma_f32 v156, v126, v239, v152                           // 000000006BC4: D1CB009C 0663DF7E
	v_fma_f32 v160, v110, v239, v152                           // 000000006BCC: D1CB00A0 0663DF6E
	v_fma_f32 v164, v82, v239, v150                            // 000000006BD4: D1CB00A4 065BDF52
	v_fma_f32 v168, v66, v239, v150                            // 000000006BDC: D1CB00A8 065BDF42
	v_fma_f32 v172, v86, v239, v150                            // 000000006BE4: D1CB00AC 065BDF56
	v_fma_f32 v176, v70, v239, v150                            // 000000006BEC: D1CB00B0 065BDF46
	v_fma_f32 v180, v90, v239, v150                            // 000000006BF4: D1CB00B4 065BDF5A
	v_fma_f32 v184, v74, v239, v150                            // 000000006BFC: D1CB00B8 065BDF4A
	v_fma_f32 v188, v94, v239, v150                            // 000000006C04: D1CB00BC 065BDF5E
	v_fma_f32 v208, v78, v239, v150                            // 000000006C0C: D1CB00D0 065BDF4E
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 000000006C14: D1DD0080 06010381
	v_cvt_pk_u8_f32 v129, v133, 1, v132                        // 000000006C1C: D1DD0081 06110385
	v_cvt_pk_u8_f32 v132, v137, 1, v136                        // 000000006C24: D1DD0084 06210389
	v_cvt_pk_u8_f32 v133, v141, 1, v140                        // 000000006C2C: D1DD0085 0631038D
	v_cvt_pk_u8_f32 v136, v145, 1, v144                        // 000000006C34: D1DD0088 06410391
	v_cvt_pk_u8_f32 v137, v149, 1, v148                        // 000000006C3C: D1DD0089 06510395
	v_cvt_pk_u8_f32 v140, v155, 1, v154                        // 000000006C44: D1DD008C 0669039B
	v_cvt_pk_u8_f32 v141, v159, 1, v158                        // 000000006C4C: D1DD008D 0679039F
	v_cvt_pk_u8_f32 v144, v163, 1, v162                        // 000000006C54: D1DD0090 068903A3
	v_cvt_pk_u8_f32 v145, v167, 1, v166                        // 000000006C5C: D1DD0091 069903A7
	v_cvt_pk_u8_f32 v148, v171, 1, v170                        // 000000006C64: D1DD0094 06A903AB
	v_cvt_pk_u8_f32 v149, v175, 1, v174                        // 000000006C6C: D1DD0095 06B903AF
	v_cvt_pk_u8_f32 v154, v179, 1, v178                        // 000000006C74: D1DD009A 06C903B3
	v_cvt_pk_u8_f32 v155, v183, 1, v182                        // 000000006C7C: D1DD009B 06D903B7
	v_cvt_pk_u8_f32 v158, v187, 1, v186                        // 000000006C84: D1DD009E 06E903BB
	v_cvt_pk_u8_f32 v159, v191, 1, v190                        // 000000006C8C: D1DD009F 06F903BF
	v_fma_f32 v131, v115, v239, v152                           // 000000006C94: D1CB0083 0663DF73
	v_fma_f32 v135, v99, v239, v152                            // 000000006C9C: D1CB0087 0663DF63
	v_fma_f32 v139, v119, v239, v152                           // 000000006CA4: D1CB008B 0663DF77
	v_fma_f32 v143, v103, v239, v152                           // 000000006CAC: D1CB008F 0663DF67
	v_fma_f32 v147, v123, v239, v152                           // 000000006CB4: D1CB0093 0663DF7B
	v_fma_f32 v153, v107, v239, v152                           // 000000006CBC: D1CB0099 0663DF6B
	v_fma_f32 v157, v127, v239, v152                           // 000000006CC4: D1CB009D 0663DF7F
	v_fma_f32 v161, v111, v239, v152                           // 000000006CCC: D1CB00A1 0663DF6F
	v_fma_f32 v165, v83, v239, v150                            // 000000006CD4: D1CB00A5 065BDF53
	v_fma_f32 v169, v67, v239, v150                            // 000000006CDC: D1CB00A9 065BDF43
	v_fma_f32 v173, v87, v239, v150                            // 000000006CE4: D1CB00AD 065BDF57
	v_fma_f32 v177, v71, v239, v150                            // 000000006CEC: D1CB00B1 065BDF47
	v_fma_f32 v181, v91, v239, v150                            // 000000006CF4: D1CB00B5 065BDF5B
	v_fma_f32 v185, v75, v239, v150                            // 000000006CFC: D1CB00B9 065BDF4B
	v_fma_f32 v189, v95, v239, v150                            // 000000006D04: D1CB00BD 065BDF5F
	v_fma_f32 v209, v79, v239, v150                            // 000000006D0C: D1CB00D1 065BDF4F
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 000000006D14: D1DD0080 06010582
	v_cvt_pk_u8_f32 v129, v134, 2, v129                        // 000000006D1C: D1DD0081 06050586
	v_cvt_pk_u8_f32 v130, v138, 2, v132                        // 000000006D24: D1DD0082 0611058A
	v_cvt_pk_u8_f32 v132, v142, 2, v133                        // 000000006D2C: D1DD0084 0615058E
	v_cvt_pk_u8_f32 v133, v146, 2, v136                        // 000000006D34: D1DD0085 06210592
	v_cvt_pk_u8_f32 v134, v151, 2, v137                        // 000000006D3C: D1DD0086 06250597
	v_cvt_pk_u8_f32 v146, v156, 2, v140                        // 000000006D44: D1DD0092 0631059C
	v_cvt_pk_u8_f32 v151, v160, 2, v141                        // 000000006D4C: D1DD0097 063505A0
	v_cvt_pk_u8_f32 v144, v164, 2, v144                        // 000000006D54: D1DD0090 064105A4
	v_cvt_pk_u8_f32 v145, v168, 2, v145                        // 000000006D5C: D1DD0091 064505A8
	v_cvt_pk_u8_f32 v148, v172, 2, v148                        // 000000006D64: D1DD0094 065105AC
	v_cvt_pk_u8_f32 v149, v176, 2, v149                        // 000000006D6C: D1DD0095 065505B0
	v_cvt_pk_u8_f32 v154, v180, 2, v154                        // 000000006D74: D1DD009A 066905B4
	v_cvt_pk_u8_f32 v155, v184, 2, v155                        // 000000006D7C: D1DD009B 066D05B8
	v_cvt_pk_u8_f32 v156, v188, 2, v158                        // 000000006D84: D1DD009C 067905BC
	v_cvt_pk_u8_f32 v158, v208, 2, v159                        // 000000006D8C: D1DD009E 067D05D0
	v_cvt_pk_u8_f32 v136, v131, 3, v128                        // 000000006D94: D1DD0088 06010783
	v_cvt_pk_u8_f32 v140, v135, 3, v129                        // 000000006D9C: D1DD008C 06050787
	v_cvt_pk_u8_f32 v137, v139, 3, v130                        // 000000006DA4: D1DD0089 0609078B
	v_cvt_pk_u8_f32 v141, v143, 3, v132                        // 000000006DAC: D1DD008D 0611078F
	v_cvt_pk_u8_f32 v138, v147, 3, v133                        // 000000006DB4: D1DD008A 06150793
	v_cvt_pk_u8_f32 v142, v153, 3, v134                        // 000000006DBC: D1DD008E 06190799
	v_cvt_pk_u8_f32 v139, v157, 3, v146                        // 000000006DC4: D1DD008B 0649079D
	v_cvt_pk_u8_f32 v143, v161, 3, v151                        // 000000006DCC: D1DD008F 065D07A1
	v_cvt_pk_u8_f32 v128, v165, 3, v144                        // 000000006DD4: D1DD0080 064107A5
	v_cvt_pk_u8_f32 v132, v169, 3, v145                        // 000000006DDC: D1DD0084 064507A9
	v_cvt_pk_u8_f32 v129, v173, 3, v148                        // 000000006DE4: D1DD0081 065107AD
	v_cvt_pk_u8_f32 v133, v177, 3, v149                        // 000000006DEC: D1DD0085 065507B1
	v_cvt_pk_u8_f32 v130, v181, 3, v154                        // 000000006DF4: D1DD0082 066907B5
	v_cvt_pk_u8_f32 v134, v185, 3, v155                        // 000000006DFC: D1DD0086 066D07B9
	v_cvt_pk_u8_f32 v131, v189, 3, v156                        // 000000006E04: D1DD0083 067107BD
	v_cvt_pk_u8_f32 v135, v209, 3, v158                        // 000000006E0C: D1DD0087 067907D1
	s_barrier                                                  // 000000006E14: BF8A0000
	s_setprio 1                                                // 000000006E18: BF8F0001
	s_waitcnt vmcnt(0)                                         // 000000006E1C: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[144:147], v[192:199], v[136:143], 0// 000000006E20: D3AD0090 020311C0
	v_mfma_f32_16x16x128_f8f6f4 v[146:149], v[192:199], v[128:135], 0// 000000006E28: D3AD0092 020301C0
	s_add_u32 s17, s35, s10                                    // 000000006E30: 80110A23
	s_bfe_u32 s18, s17, 0x10001                                // 000000006E34: 9292FF11 00010001
	s_and_b32 s15, s17, 3                                      // 000000006E3C: 860F8311
	s_lshl_b32 s22, s18, 15                                    // 000000006E40: 8E168F12
	s_bitcmp1_b32 s17, 0                                       // 000000006E44: BF0D8011
	s_cselect_b64 s[18:19], -1, 0                              // 000000006E48: 859280C1
	s_and_b64 s[20:21], s[18:19], exec                         // 000000006E4C: 86947E12
	s_cselect_b32 s17, s93, 0x10000                            // 000000006E50: 8511FF5D 00010000
	s_or_b32 s20, s22, s17                                     // 000000006E58: 87141116
	v_or_b32_e32 v145, s20, v245                               // 000000006E5C: 2923EA14
	v_add_u32_e32 v145, v145, v244                             // 000000006E60: 6923E991
	ds_read_b64_tr_b8 v[154:155], v145                         // 000000006E64: D9C40000 9A000091
	ds_read_b64_tr_b8 v[156:157], v145 offset:1024             // 000000006E6C: D9C40400 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:2048             // 000000006E74: D9C40800 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:3072             // 000000006E7C: D9C40C00 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:256              // 000000006E84: D9C40100 A2000091
	ds_read_b64_tr_b8 v[164:165], v145 offset:1280             // 000000006E8C: D9C40500 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:2304             // 000000006E94: D9C40900 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:3328             // 000000006E9C: D9C40D00 A8000091
	s_waitcnt lgkmcnt(4)                                       // 000000006EA4: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[154:161], v[136:143], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000006EA8: D3AC0000 0003F7F2 D3AE0830 04C3119A
	s_waitcnt lgkmcnt(0)                                       // 000000006EB8: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[162:169], v[136:143], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000006EBC: D3AC0000 0003F7F2 D3AE0820 048311A2
	ds_read_b64_tr_b8 v[154:155], v145 offset:512              // 000000006ECC: D9C40200 9A000091
	ds_read_b64_tr_b8 v[156:157], v145 offset:1536             // 000000006ED4: D9C40600 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:2560             // 000000006EDC: D9C40A00 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:3584             // 000000006EE4: D9C40E00 A0000091
	s_waitcnt lgkmcnt(0)                                       // 000000006EEC: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[154:161], v[136:143], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000006EF0: D3AC0000 0003F7F2 D3AE0810 0443119A
	ds_read_b64_tr_b8 v[162:163], v145 offset:768              // 000000006F00: D9C40300 A2000091
	ds_read_b64_tr_b8 v[164:165], v145 offset:1792             // 000000006F08: D9C40700 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:2816             // 000000006F10: D9C40B00 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:3840             // 000000006F18: D9C40F00 A8000091
	s_waitcnt lgkmcnt(0)                                       // 000000006F20: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[162:169], v[136:143], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000006F24: D3AC0000 0003F7F2 D3AE0800 040311A2
	ds_read_b64_tr_b8 v[154:155], v145 offset:4096             // 000000006F34: D9C41000 9A000091
	ds_read_b64_tr_b8 v[156:157], v145 offset:5120             // 000000006F3C: D9C41400 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:6144             // 000000006F44: D9C41800 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:7168             // 000000006F4C: D9C41C00 A0000091
	s_waitcnt lgkmcnt(0)                                       // 000000006F54: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[154:161], v[128:135], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000006F58: D3AC0000 0003FBF2 D3AE0830 04C3019A
	ds_read_b64_tr_b8 v[136:137], v145 offset:4352             // 000000006F68: D9C41100 88000091
	ds_read_b64_tr_b8 v[138:139], v145 offset:5376             // 000000006F70: D9C41500 8A000091
	ds_read_b64_tr_b8 v[140:141], v145 offset:6400             // 000000006F78: D9C41900 8C000091
	ds_read_b64_tr_b8 v[142:143], v145 offset:7424             // 000000006F80: D9C41D00 8E000091
	s_waitcnt lgkmcnt(0)                                       // 000000006F88: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[136:143], v[128:135], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000006F8C: D3AC0000 0003FBF2 D3AE0820 04830188
	ds_read_b64_tr_b8 v[154:155], v145 offset:4608             // 000000006F9C: D9C41200 9A000091
	ds_read_b64_tr_b8 v[156:157], v145 offset:5632             // 000000006FA4: D9C41600 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:6656             // 000000006FAC: D9C41A00 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:7680             // 000000006FB4: D9C41E00 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:4864             // 000000006FBC: D9C41300 A2000091
	ds_read_b64_tr_b8 v[164:165], v145 offset:5888             // 000000006FC4: D9C41700 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:6912             // 000000006FCC: D9C41B00 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:7936             // 000000006FD4: D9C41F00 A8000091
	s_add_u32 s20, s35, 4                                      // 000000006FDC: 80148423
	s_cmp_ge_u32 s20, s91                                      // 000000006FE0: BF095B14
	s_cbranch_scc1 16                                          // 000000006FE4: BF850010 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5528>
	s_and_b64 s[18:19], s[18:19], exec                         // 000000006FE8: 86927E12
	s_cselect_b32 s18, 0x4000, 0                               // 000000006FEC: 851280FF 00004000
	s_add_u32 s18, s22, s18                                    // 000000006FF4: 80121216
	s_add_u32 s18, s18, s88                                    // 000000006FF8: 80125812
	s_mul_i32 s20, s20, s8                                     // 000000006FFC: 92140814
	s_lshl_b32 s19, s20, 7                                     // 000000007000: 8E138714
	s_mov_b32 m0, s18                                          // 000000007004: BEFC0012
	s_nop 0                                                    // 000000007008: BF800000
	buffer_load_dwordx4 v233, s[84:87], s19 offen lds          // 00000000700C: E05D1000 131500E9
	s_add_u32 m0, s18, 0x2000                                  // 000000007014: 807CFF12 00002000
	s_nop 0                                                    // 00000000701C: BF800000
	buffer_load_dwordx4 v234, s[84:87], s19 offen lds          // 000000007020: E05D1000 131500EA
	s_add_u32 s18, s35, 2                                      // 000000007028: 80128223
	s_cmp_ge_u32 s18, s91                                      // 00000000702C: BF095B12
	s_cbranch_scc1 17                                          // 000000007030: BF850011 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5578>
	s_not_b32 s15, s15                                         // 000000007034: BE8F040F
	s_lshl_b32 s15, s15, 14                                    // 000000007038: 8E0F8E0F
	s_and_b32 s15, s15, 0x8000                                 // 00000000703C: 860FFF0F 00008000
	s_add_u32 s15, s15, s17                                    // 000000007044: 800F110F
	s_add_u32 s15, s15, s88                                    // 000000007048: 800F580F
	s_mul_i32 s18, s18, s8                                     // 00000000704C: 92120812
	s_lshl_b32 s17, s18, 7                                     // 000000007050: 8E118712
	s_mov_b32 m0, s15                                          // 000000007054: BEFC000F
	s_nop 0                                                    // 000000007058: BF800000
	buffer_load_dwordx4 v235, s[80:83], s17 offen lds          // 00000000705C: E05D1000 111400EB
	s_add_u32 m0, s15, 0x2000                                  // 000000007064: 807CFF0F 00002000
	s_nop 0                                                    // 00000000706C: BF800000
	buffer_load_dwordx4 v236, s[80:83], s17 offen lds          // 000000007070: E05D1000 111400EC
	s_waitcnt lgkmcnt(4)                                       // 000000007078: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[154:161], v[128:135], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 00000000707C: D3AC0000 0003FBF2 D3AE0810 0443019A
	v_lshlrev_b32_e32 v136, 23, v251                           // 00000000708C: 2511F697
	v_lshlrev_b32_e32 v137, 23, v253                           // 000000007090: 2513FA97
	v_mul_f32_e32 v136, v144, v136                             // 000000007094: 0B111190
	v_mul_f32_e32 v137, v146, v137                             // 000000007098: 0B131392
	v_add_f32_e32 v136, v250, v136                             // 00000000709C: 031111FA
	v_add_f32_e32 v250, v136, v137                             // 0000000070A0: 03F51388
	s_waitcnt lgkmcnt(0)                                       // 0000000070A4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[162:169], v[128:135], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 0000000070A8: D3AC0000 0003FBF2 D3AE0800 040301A2
	s_barrier                                                  // 0000000070B8: BF8A0000
	s_add_u32 s15, s35, 1                                      // 0000000070BC: 800F8123
	s_branch 48                                                // 0000000070C0: BF820030 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5684>
	s_barrier                                                  // 0000000070C4: BF8A0000
	s_waitcnt vmcnt(0)                                         // 0000000070C8: BF8C0F70
	s_add_u32 s17, s15, 4                                      // 0000000070CC: 8011840F
	s_cmp_ge_u32 s17, s91                                      // 0000000070D0: BF095B11
	s_cbranch_scc1 19                                          // 0000000070D4: BF850013 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5624>
	s_add_u32 s18, s15, s10                                    // 0000000070D8: 80120A0F
	s_and_b32 s19, s18, 2                                      // 0000000070DC: 86138212
	s_lshl_b32 s19, s19, 14                                    // 0000000070E0: 8E138E13
	s_bitcmp1_b32 s18, 0                                       // 0000000070E4: BF0D8012
	s_cselect_b32 s18, 0x4000, 0                               // 0000000070E8: 851280FF 00004000
	s_or_b32 s18, s19, s18                                     // 0000000070F0: 87121213
	s_or_b32 s18, s18, s88                                     // 0000000070F4: 87125812
	s_mul_i32 s17, s17, s8                                     // 0000000070F8: 92110811
	s_lshl_b32 s17, s17, 7                                     // 0000000070FC: 8E118711
	s_mov_b32 m0, s18                                          // 000000007100: BEFC0012
	s_nop 0                                                    // 000000007104: BF800000
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 000000007108: E05D1000 111500E9
	s_or_b32 m0, s18, 0x2000                                   // 000000007110: 877CFF12 00002000
	s_nop 0                                                    // 000000007118: BF800000
	buffer_load_dwordx4 v234, s[84:87], s17 offen lds          // 00000000711C: E05D1000 111500EA
	s_add_u32 s17, s15, 2                                      // 000000007124: 8011820F
	s_cmp_ge_u32 s17, s91                                      // 000000007128: BF095B11
	s_cbranch_scc1 19                                          // 00000000712C: BF850013 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x567c>
	s_add_u32 s18, s15, s10                                    // 000000007130: 80120A0F
	s_andn2_b32 s19, 2, s18                                    // 000000007134: 89131282
	s_lshl_b32 s19, s19, 14                                    // 000000007138: 8E138E13
	s_bitcmp1_b32 s18, 0                                       // 00000000713C: BF0D8012
	s_cselect_b32 s18, s93, 0x10000                            // 000000007140: 8512FF5D 00010000
	s_or_b32 s18, s19, s18                                     // 000000007148: 87121213
	s_or_b32 s18, s18, s88                                     // 00000000714C: 87125812
	s_mul_i32 s17, s17, s8                                     // 000000007150: 92110811
	s_lshl_b32 s17, s17, 7                                     // 000000007154: 8E118711
	s_mov_b32 m0, s18                                          // 000000007158: BEFC0012
	s_nop 0                                                    // 00000000715C: BF800000
	buffer_load_dwordx4 v235, s[80:83], s17 offen lds          // 000000007160: E05D1000 111400EB
	s_add_u32 m0, s18, 0x2000                                  // 000000007168: 807CFF12 00002000
	s_nop 0                                                    // 000000007170: BF800000
	buffer_load_dwordx4 v236, s[80:83], s17 offen lds          // 000000007174: E05D1000 111400EC
	s_barrier                                                  // 00000000717C: BF8A0000
	s_add_u32 s15, s15, 1                                      // 000000007180: 800F810F
	s_add_u32 s17, s15, 1                                      // 000000007184: 8011810F
	s_cmp_ge_u32 s17, s91                                      // 000000007188: BF095B11
	s_cbranch_scc1 1786                                        // 00000000718C: BF8506FA <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7278>
	s_cmp_ge_u32 s15, s35                                      // 000000007190: BF09230F
	s_cbranch_scc1 1106                                        // 000000007194: BF850452 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x67e0>
	s_setprio 0                                                // 000000007198: BF8F0000
	s_add_u32 s17, s15, s10                                    // 00000000719C: 80110A0F
	s_add_u32 s18, s17, 1                                      // 0000000071A0: 80128111
	s_lshl_b32 s19, s18, 14                                    // 0000000071A4: 8E138E12
	v_fma_f32 v108, v108, v239, v152                           // 0000000071A8: D1CB006C 0663DF6C
	v_fma_f32 v64, v64, v239, v150                             // 0000000071B0: D1CB0040 065BDF40
	v_fma_f32 v68, v68, v239, v150                             // 0000000071B8: D1CB0044 065BDF44
	s_and_b32 s19, s19, 0x8000                                 // 0000000071C0: 8613FF13 00008000
	v_fma_f32 v96, v96, v239, v152                             // 0000000071C8: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 0000000071D0: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 0000000071D8: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 0000000071E0: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 0000000071E8: D1CB0068 0663DF68
	v_fma_f32 v109, v109, v239, v152                           // 0000000071F0: D1CB006D 0663DF6D
	v_fma_f32 v80, v80, v239, v150                             // 0000000071F8: D1CB0050 065BDF50
	v_fma_f32 v65, v65, v239, v150                             // 000000007200: D1CB0041 065BDF41
	v_fma_f32 v84, v84, v239, v150                             // 000000007208: D1CB0054 065BDF54
	v_fma_f32 v69, v69, v239, v150                             // 000000007210: D1CB0045 065BDF45
	v_fma_f32 v72, v72, v239, v150                             // 000000007218: D1CB0048 065BDF48
	v_fma_f32 v92, v92, v239, v150                             // 000000007220: D1CB005C 065BDF5C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000007228: D1DD006C 0201016C
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000007230: D1DD0040 02010140
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000007238: D1DD0044 02010144
	s_bitcmp1_b32 s18, 0                                       // 000000007240: BF0D8012
	v_fma_f32 v97, v97, v239, v152                             // 000000007244: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 00000000724C: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 000000007254: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 00000000725C: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 000000007264: D1CB0069 0663DF69
	v_fma_f32 v110, v110, v239, v152                           // 00000000726C: D1CB006E 0663DF6E
	v_fma_f32 v81, v81, v239, v150                             // 000000007274: D1CB0051 065BDF51
	v_fma_f32 v66, v66, v239, v150                             // 00000000727C: D1CB0042 065BDF42
	v_fma_f32 v85, v85, v239, v150                             // 000000007284: D1CB0055 065BDF55
	v_fma_f32 v70, v70, v239, v150                             // 00000000728C: D1CB0046 065BDF46
	v_fma_f32 v88, v88, v239, v150                             // 000000007294: D1CB0058 065BDF58
	v_fma_f32 v73, v73, v239, v150                             // 00000000729C: D1CB0049 065BDF49
	v_fma_f32 v93, v93, v239, v150                             // 0000000072A4: D1CB005D 065BDF5D
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 0000000072AC: D1DD0060 02010160
	v_cvt_pk_u8_f32 v116, v116, 0, 0                           // 0000000072B4: D1DD0074 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 0000000072BC: D1DD0064 02010164
	v_cvt_pk_u8_f32 v120, v120, 0, 0                           // 0000000072C4: D1DD0078 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 0000000072CC: D1DD0068 02010168
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 0000000072D4: D1DD0050 02010150
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 0000000072DC: D1DD0054 02010154
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 0000000072E4: D1DD0048 02010148
	v_cvt_pk_u8_f32 v92, v92, 0, 0                             // 0000000072EC: D1DD005C 0201015C
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 0000000072F4: D1DD006C 05B1036D
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 0000000072FC: D1DD0040 05010341
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 000000007304: D1DD0044 05110345
	s_cselect_b32 s18, 0x4000, 0                               // 00000000730C: 851280FF 00004000
	v_fma_f32 v98, v98, v239, v152                             // 000000007314: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 00000000731C: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 000000007324: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 00000000732C: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 000000007334: D1CB006A 0663DF6A
	v_fma_f32 v111, v111, v239, v152                           // 00000000733C: D1CB006F 0663DF6F
	v_fma_f32 v82, v82, v239, v150                             // 000000007344: D1CB0052 065BDF52
	v_fma_f32 v86, v86, v239, v150                             // 00000000734C: D1CB0056 065BDF56
	v_fma_f32 v71, v71, v239, v150                             // 000000007354: D1CB0047 065BDF47
	v_fma_f32 v89, v89, v239, v150                             // 00000000735C: D1CB0059 065BDF59
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000007364: D1DD0058 02010158
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 00000000736C: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v116                         // 000000007374: D1DD0061 05D10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 00000000737C: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v120                        // 000000007384: D1DD0065 05E10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 00000000738C: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000007394: D1DD0050 05410351
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 00000000739C: D1DD0041 05510355
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 0000000073A4: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v93, 1, v92                           // 0000000073AC: D1DD0049 0571035D
	v_cvt_pk_u8_f32 v93, v110, 2, v108                         // 0000000073B4: D1DD005D 05B1056E
	v_cvt_pk_u8_f32 v64, v66, 2, v64                           // 0000000073BC: D1DD0040 05010542
	v_cvt_pk_u8_f32 v66, v70, 2, v68                           // 0000000073C4: D1DD0042 05110546
	s_or_b32 s19, s19, s18                                     // 0000000073CC: 87131213
	v_fma_f32 v99, v99, v239, v152                             // 0000000073D0: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 0000000073D8: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 0000000073E0: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 0000000073E8: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 0000000073F0: D1CB006B 0663DF6B
	v_fma_f32 v83, v83, v239, v150                             // 0000000073F8: D1CB0053 065BDF53
	v_fma_f32 v87, v87, v239, v150                             // 000000007400: D1CB0057 065BDF57
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 000000007408: D1DD0045 05610359
	v_cvt_pk_u8_f32 v81, v98, 2, v96                           // 000000007410: D1DD0051 05810562
	v_cvt_pk_u8_f32 v84, v118, 2, v97                          // 000000007418: D1DD0054 05850576
	v_cvt_pk_u8_f32 v85, v102, 2, v100                         // 000000007420: D1DD0055 05910566
	v_cvt_pk_u8_f32 v88, v122, 2, v101                         // 000000007428: D1DD0058 0595057A
	v_cvt_pk_u8_f32 v89, v106, 2, v104                         // 000000007430: D1DD0059 05A1056A
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 000000007438: D1DD0050 05410552
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 000000007440: D1DD0041 05050556
	v_cvt_pk_u8_f32 v215, v111, 3, v93                         // 000000007448: D1DD00D7 0575076F
	v_cvt_pk_u8_f32 v93, v71, 3, v66                           // 000000007450: D1DD005D 05090747
	v_or_b32_e32 v71, s19, v231                                // 000000007458: 288FCE13
	v_cvt_pk_u8_f32 v212, v99, 3, v81                          // 00000000745C: D1DD00D4 05450763
	v_cvt_pk_u8_f32 v209, v119, 3, v84                         // 000000007464: D1DD00D1 05510777
	v_cvt_pk_u8_f32 v213, v103, 3, v85                         // 00000000746C: D1DD00D5 05550767
	v_cvt_pk_u8_f32 v210, v123, 3, v88                         // 000000007474: D1DD00D2 0561077B
	v_cvt_pk_u8_f32 v214, v107, 3, v89                         // 00000000747C: D1DD00D6 0565076B
	v_cvt_pk_u8_f32 v88, v83, 3, v80                           // 000000007484: D1DD0058 05410753
	v_cvt_pk_u8_f32 v89, v87, 3, v65                           // 00000000748C: D1DD0059 05050757
	ds_read_b128 v[80:83], v71                                 // 000000007494: D9FE0000 50000047
	ds_read_b128 v[84:87], v71 offset:16                       // 00000000749C: D9FE0010 54000047
	ds_read_b128 v[96:99], v71 offset:4096                     // 0000000074A4: D9FE1000 60000047
	ds_read_b128 v[100:103], v71 offset:4112                   // 0000000074AC: D9FE1010 64000047
	v_fma_f32 v112, v112, v239, v152                           // 0000000074B4: D1CB0070 0663DF70
	v_fma_f32 v124, v124, v239, v152                           // 0000000074BC: D1CB007C 0663DF7C
	v_fma_f32 v113, v113, v239, v152                           // 0000000074C4: D1CB0071 0663DF71
	v_fma_f32 v125, v125, v239, v152                           // 0000000074CC: D1CB007D 0663DF7D
	v_fma_f32 v76, v76, v239, v150                             // 0000000074D4: D1CB004C 065BDF4C
	v_cvt_pk_u8_f32 v112, v112, 0, 0                           // 0000000074DC: D1DD0070 02010170
	v_cvt_pk_u8_f32 v124, v124, 0, 0                           // 0000000074E4: D1DD007C 0201017C
	v_fma_f32 v114, v114, v239, v152                           // 0000000074EC: D1CB0072 0663DF72
	v_fma_f32 v126, v126, v239, v152                           // 0000000074F4: D1CB007E 0663DF7E
	v_fma_f32 v77, v77, v239, v150                             // 0000000074FC: D1CB004D 065BDF4D
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000007504: D1DD004C 0201014C
	v_cvt_pk_u8_f32 v112, v113, 1, v112                        // 00000000750C: D1DD0070 05C10371
	v_cvt_pk_u8_f32 v105, v125, 1, v124                        // 000000007514: D1DD0069 05F1037D
	v_fma_f32 v115, v115, v239, v152                           // 00000000751C: D1CB0073 0663DF73
	v_fma_f32 v127, v127, v239, v152                           // 000000007524: D1CB007F 0663DF7F
	v_fma_f32 v90, v90, v239, v150                             // 00000000752C: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 000000007534: D1CB004A 065BDF4A
	v_fma_f32 v94, v94, v239, v150                             // 00000000753C: D1CB005E 065BDF5E
	v_fma_f32 v78, v78, v239, v150                             // 000000007544: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v76, v77, 1, v76                           // 00000000754C: D1DD004C 0531034D
	v_cvt_pk_u8_f32 v77, v114, 2, v112                         // 000000007554: D1DD004D 05C10572
	v_cvt_pk_u8_f32 v92, v126, 2, v105                         // 00000000755C: D1DD005C 05A5057E
	v_fma_f32 v67, v67, v239, v150                             // 000000007564: D1CB0043 065BDF43
	v_fma_f32 v91, v91, v239, v150                             // 00000000756C: D1CB005B 065BDF5B
	v_fma_f32 v75, v75, v239, v150                             // 000000007574: D1CB004B 065BDF4B
	v_fma_f32 v95, v95, v239, v150                             // 00000000757C: D1CB005F 065BDF5F
	v_fma_f32 v79, v79, v239, v150                             // 000000007584: D1CB004F 065BDF4F
	v_cvt_pk_u8_f32 v68, v90, 2, v69                           // 00000000758C: D1DD0044 0515055A
	v_cvt_pk_u8_f32 v69, v74, 2, v72                           // 000000007594: D1DD0045 0521054A
	v_cvt_pk_u8_f32 v70, v94, 2, v73                           // 00000000759C: D1DD0046 0525055E
	v_cvt_pk_u8_f32 v72, v78, 2, v76                           // 0000000075A4: D1DD0048 0531054E
	v_cvt_pk_u8_f32 v208, v115, 3, v77                         // 0000000075AC: D1DD00D0 05350773
	v_cvt_pk_u8_f32 v211, v127, 3, v92                         // 0000000075B4: D1DD00D3 0571077F
	v_cvt_pk_u8_f32 v92, v67, 3, v64                           // 0000000075BC: D1DD005C 05010743
	v_cvt_pk_u8_f32 v90, v91, 3, v68                           // 0000000075C4: D1DD005A 0511075B
	v_cvt_pk_u8_f32 v94, v75, 3, v69                           // 0000000075CC: D1DD005E 0515074B
	v_cvt_pk_u8_f32 v91, v95, 3, v70                           // 0000000075D4: D1DD005B 0519075F
	v_cvt_pk_u8_f32 v95, v79, 3, v72                           // 0000000075DC: D1DD005F 0521074F
	s_barrier                                                  // 0000000075E4: BF8A0000
	s_and_b32 s18, s17, 3                                      // 0000000075E8: 86128311
	s_setprio 1                                                // 0000000075EC: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[192:199], v[208:215], 0// 0000000075F0: D3AD0040 0203A1C0
	scratch_store_dwordx4 off, v[88:91], off                   // 0000000075F8: DC7C4000 007F5800
	s_nop 0                                                    // 000000007600: BF800000
	scratch_store_dwordx4 off, v[92:95], off offset:16         // 000000007604: DC7C4010 007F5C00
	v_mfma_f32_16x16x128_f8f6f4 v[66:69], v[192:199], v[88:95], 0// 00000000760C: D3AD0042 0202B1C0
	s_nop 3                                                    // 000000007614: BF800003
	v_lshlrev_b32_e32 v65, 23, v251                            // 000000007618: 2483F697
	v_mul_f32_e32 v64, v64, v65                                // 00000000761C: 0A808340
	v_add_f32_e32 v64, v250, v64                               // 000000007620: 028081FA
	v_lshlrev_b32_e32 v65, 23, v253                            // 000000007624: 2483FA97
	s_nop 3                                                    // 000000007628: BF800003
	v_mul_f32_e32 v65, v66, v65                                // 00000000762C: 0A828342
	v_add_f32_e32 v250, v64, v65                               // 000000007630: 03F48340
	s_waitcnt lgkmcnt(2)                                       // 000000007634: BF8CC27F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[80:87], v[220:227], 0// 000000007638: D3AE00B0 0203B950
	ds_read_b128 v[88:91], v71 offset:8192                     // 000000007640: D9FE2000 58000047
	ds_read_b128 v[92:95], v71 offset:8208                     // 000000007648: D9FE2010 5C000047
	ds_read_b128 v[104:107], v71 offset:12288                  // 000000007650: D9FE3000 68000047
	ds_read_b128 v[108:111], v71 offset:12304                  // 000000007658: D9FE3010 6C000047
	s_waitcnt lgkmcnt(4)                                       // 000000007660: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[96:103], v[220:227], 0// 000000007664: D3AE00A0 0203B960
	v_or_b32_e32 v64, s19, v232                                // 00000000766C: 2881D013
	ds_read_b128 v[66:69], v64                                 // 000000007670: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 000000007678: D9FE0010 46000040
	s_waitcnt lgkmcnt(4)                                       // 000000007680: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[88:95], v[220:227], 0// 000000007684: D3AE0090 0203B958
	ds_read_b128 v[74:77], v64 offset:4096                     // 00000000768C: D9FE1000 4A000040
	ds_read_b128 v[78:81], v64 offset:4112                     // 000000007694: D9FE1010 4E000040
	s_waitcnt lgkmcnt(4)                                       // 00000000769C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[104:111], v[220:227], 0// 0000000076A0: D3AE0080 0203B968
	ds_read_b128 v[82:85], v64 offset:8192                     // 0000000076A8: D9FE2000 52000040
	ds_read_b128 v[86:89], v64 offset:8208                     // 0000000076B0: D9FE2010 56000040
	ds_read_b128 v[112:115], v64 offset:12288                  // 0000000076B8: D9FE3000 70000040
	ds_read_b128 v[116:119], v64 offset:12304                  // 0000000076C0: D9FE3010 74000040
	s_add_u32 s19, s15, 4                                      // 0000000076C8: 8013840F
	s_cmp_ge_u32 s19, s91                                      // 0000000076CC: BF095B13
	s_cbranch_scc1 19                                          // 0000000076D0: BF850013 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5c20>
	s_lshl_b32 s20, s18, 14                                    // 0000000076D4: 8E148E12
	s_and_b32 s20, s20, 0x8000                                 // 0000000076D8: 8614FF14 00008000
	s_bitcmp1_b32 s17, 0                                       // 0000000076E0: BF0D8011
	s_cselect_b32 s21, 0x4000, 0                               // 0000000076E4: 851580FF 00004000
	s_or_b32 s20, s20, s21                                     // 0000000076EC: 87141514
	s_or_b32 s20, s20, s88                                     // 0000000076F0: 87145814
	s_mul_i32 s19, s19, s8                                     // 0000000076F4: 92130813
	s_lshl_b32 s19, s19, 7                                     // 0000000076F8: 8E138713
	s_mov_b32 m0, s20                                          // 0000000076FC: BEFC0014
	s_nop 0                                                    // 000000007700: BF800000
	buffer_load_dwordx4 v233, s[84:87], s19 offen lds          // 000000007704: E05D1000 131500E9
	s_or_b32 m0, s20, 0x2000                                   // 00000000770C: 877CFF14 00002000
	s_nop 0                                                    // 000000007714: BF800000
	buffer_load_dwordx4 v234, s[84:87], s19 offen lds          // 000000007718: E05D1000 131500EA
	s_add_u32 s19, s15, 2                                      // 000000007720: 8013820F
	s_cmp_ge_u32 s19, s91                                      // 000000007724: BF095B13
	s_cbranch_scc1 20                                          // 000000007728: BF850014 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5c7c>
	s_not_b32 s18, s18                                         // 00000000772C: BE920412
	s_lshl_b32 s18, s18, 14                                    // 000000007730: 8E128E12
	s_and_b32 s18, s18, 0x8000                                 // 000000007734: 8612FF12 00008000
	s_bitcmp1_b32 s17, 0                                       // 00000000773C: BF0D8011
	s_cselect_b32 s20, s93, 0x10000                            // 000000007740: 8514FF5D 00010000
	s_or_b32 s18, s18, s20                                     // 000000007748: 87121412
	s_or_b32 s18, s18, s88                                     // 00000000774C: 87125812
	s_mul_i32 s19, s19, s8                                     // 000000007750: 92130813
	s_lshl_b32 s19, s19, 7                                     // 000000007754: 8E138713
	s_mov_b32 m0, s18                                          // 000000007758: BEFC0012
	s_nop 0                                                    // 00000000775C: BF800000
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000007760: E05D1000 131400EB
	s_add_u32 m0, s18, 0x2000                                  // 000000007768: 807CFF12 00002000
	s_nop 0                                                    // 000000007770: BF800000
	buffer_load_dwordx4 v236, s[80:83], s19 offen lds          // 000000007774: E05D1000 131400EC
	s_waitcnt lgkmcnt(6)                                       // 00000000777C: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[176:191], v[66:73], v[200:207], v[176:191]// 000000007780: D3AE00B0 06C39142
	s_waitcnt lgkmcnt(4)                                       // 000000007788: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[160:175], v[74:81], v[200:207], v[160:175]// 00000000778C: D3AE00A0 0683914A
	s_nop 15                                                   // 000000007794: BF80000F
	s_nop 3                                                    // 000000007798: BF800003
	v_mov_b64_e32 v[96:97], v[160:161]                         // 00000000779C: 7EC071A0
	v_mov_b64_e32 v[98:99], v[162:163]                         // 0000000077A0: 7EC471A2
	v_mov_b64_e32 v[100:101], v[164:165]                       // 0000000077A4: 7EC871A4
	v_mov_b64_e32 v[102:103], v[166:167]                       // 0000000077A8: 7ECC71A6
	v_mov_b64_e32 v[104:105], v[168:169]                       // 0000000077AC: 7ED071A8
	v_mov_b64_e32 v[106:107], v[170:171]                       // 0000000077B0: 7ED471AA
	v_mov_b64_e32 v[108:109], v[172:173]                       // 0000000077B4: 7ED871AC
	v_mov_b64_e32 v[110:111], v[174:175]                       // 0000000077B8: 7EDC71AE
	s_waitcnt lgkmcnt(2)                                       // 0000000077BC: BF8CC27F
	v_mfma_f32_32x32x64_f8f6f4 v[144:159], v[82:89], v[200:207], v[144:159]// 0000000077C0: D3AE0090 06439152
	s_nop 15                                                   // 0000000077C8: BF80000F
	s_nop 3                                                    // 0000000077CC: BF800003
	v_mov_b64_e32 v[80:81], v[144:145]                         // 0000000077D0: 7EA07190
	v_mov_b64_e32 v[82:83], v[146:147]                         // 0000000077D4: 7EA47192
	v_mov_b64_e32 v[84:85], v[148:149]                         // 0000000077D8: 7EA87194
	v_mov_b64_e32 v[86:87], v[150:151]                         // 0000000077DC: 7EAC7196
	v_mov_b64_e32 v[88:89], v[152:153]                         // 0000000077E0: 7EB07198
	v_mov_b64_e32 v[90:91], v[154:155]                         // 0000000077E4: 7EB4719A
	v_mov_b64_e32 v[92:93], v[156:157]                         // 0000000077E8: 7EB8719C
	v_mov_b64_e32 v[94:95], v[158:159]                         // 0000000077EC: 7EBC719E
	s_waitcnt lgkmcnt(0)                                       // 0000000077F0: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[128:143], v[112:119], v[200:207], v[128:143]// 0000000077F4: D3AE0080 06039170
	s_nop 15                                                   // 0000000077FC: BF80000F
	s_nop 3                                                    // 000000007800: BF800003
	v_mov_b64_e32 v[64:65], v[128:129]                         // 000000007804: 7E807180
	v_mov_b64_e32 v[66:67], v[130:131]                         // 000000007808: 7E847182
	v_mov_b64_e32 v[68:69], v[132:133]                         // 00000000780C: 7E887184
	v_mov_b64_e32 v[70:71], v[134:135]                         // 000000007810: 7E8C7186
	v_mov_b64_e32 v[72:73], v[136:137]                         // 000000007814: 7E907188
	v_mov_b64_e32 v[74:75], v[138:139]                         // 000000007818: 7E94718A
	v_mov_b64_e32 v[76:77], v[140:141]                         // 00000000781C: 7E98718C
	v_mov_b64_e32 v[78:79], v[142:143]                         // 000000007820: 7E9C718E
	s_lshl_b32 s18, s15, 7                                     // 000000007824: 8E12870F
	s_add_u32 s20, s18, 0x80                                   // 000000007828: 8014FF12 00000080
	s_sub_u32 s18, s3, s20                                     // 000000007830: 80921403
	s_sub_i32 s18, s18, 0                                      // 000000007834: 81928012
	s_cmp_ge_i32 s18, 32                                       // 000000007838: BF03A012
	v_mov_b64_e32 v[112:113], v[176:177]                       // 00000000783C: 7EE071B0
	v_mov_b64_e32 v[114:115], v[178:179]                       // 000000007840: 7EE471B2
	v_mov_b64_e32 v[116:117], v[180:181]                       // 000000007844: 7EE871B4
	v_mov_b64_e32 v[118:119], v[182:183]                       // 000000007848: 7EEC71B6
	v_mov_b64_e32 v[120:121], v[184:185]                       // 00000000784C: 7EF071B8
	v_mov_b64_e32 v[122:123], v[186:187]                       // 000000007850: 7EF471BA
	v_mov_b64_e32 v[124:125], v[188:189]                       // 000000007854: 7EF871BC
	v_mov_b64_e32 v[126:127], v[190:191]                       // 000000007858: 7EFC71BE
	s_cbranch_scc1 90                                          // 00000000785C: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5ec8>
	s_mov_b32 s53, s52                                         // 000000007860: BEB50034
	s_mov_b32 s54, s52                                         // 000000007864: BEB60034
	s_mov_b32 s55, s52                                         // 000000007868: BEB70034
	s_mov_b32 s56, s52                                         // 00000000786C: BEB80034
	s_mov_b32 s57, s52                                         // 000000007870: BEB90034
	s_mov_b32 s58, s52                                         // 000000007874: BEBA0034
	s_mov_b32 s59, s52                                         // 000000007878: BEBB0034
	s_mov_b32 s60, s52                                         // 00000000787C: BEBC0034
	s_mov_b32 s61, s52                                         // 000000007880: BEBD0034
	s_mov_b32 s62, s52                                         // 000000007884: BEBE0034
	s_mov_b32 s63, s52                                         // 000000007888: BEBF0034
	s_mov_b32 s64, s52                                         // 00000000788C: BEC00034
	s_mov_b32 s65, s52                                         // 000000007890: BEC10034
	s_mov_b32 s66, s52                                         // 000000007894: BEC20034
	s_mov_b32 s67, s52                                         // 000000007898: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 00000000789C: BF048012
	v_mov_b64_e32 v[126:127], s[66:67]                         // 0000000078A0: 7EFC7042
	v_mov_b64_e32 v[124:125], s[64:65]                         // 0000000078A4: 7EF87040
	v_mov_b64_e32 v[122:123], s[62:63]                         // 0000000078A8: 7EF4703E
	v_mov_b64_e32 v[120:121], s[60:61]                         // 0000000078AC: 7EF0703C
	v_mov_b64_e32 v[118:119], s[58:59]                         // 0000000078B0: 7EEC703A
	v_mov_b64_e32 v[116:117], s[56:57]                         // 0000000078B4: 7EE87038
	v_mov_b64_e32 v[114:115], s[54:55]                         // 0000000078B8: 7EE47036
	v_mov_b64_e32 v[112:113], s[52:53]                         // 0000000078BC: 7EE07034
	s_cbranch_scc1 65                                          // 0000000078C0: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x5ec8>
	v_add_u32_e32 v127, s18, v243                              // 0000000078C4: 68FFE612
	v_cmp_gt_i32_e32 vcc, 0, v127                              // 0000000078C8: 7D88FE80
	s_nop 1                                                    // 0000000078CC: BF800001
	v_cndmask_b32_e64 v112, v176, v241, vcc                    // 0000000078D0: D1000070 01ABE3B0
	v_cmp_gt_i32_e32 vcc, 1, v127                              // 0000000078D8: 7D88FE81
	s_nop 1                                                    // 0000000078DC: BF800001
	v_cndmask_b32_e64 v113, v177, v241, vcc                    // 0000000078E0: D1000071 01ABE3B1
	v_cmp_gt_i32_e32 vcc, 2, v127                              // 0000000078E8: 7D88FE82
	s_nop 1                                                    // 0000000078EC: BF800001
	v_cndmask_b32_e64 v114, v178, v241, vcc                    // 0000000078F0: D1000072 01ABE3B2
	v_cmp_gt_i32_e32 vcc, 3, v127                              // 0000000078F8: 7D88FE83
	s_nop 1                                                    // 0000000078FC: BF800001
	v_cndmask_b32_e64 v115, v179, v241, vcc                    // 000000007900: D1000073 01ABE3B3
	v_cmp_gt_i32_e32 vcc, 8, v127                              // 000000007908: 7D88FE88
	s_nop 1                                                    // 00000000790C: BF800001
	v_cndmask_b32_e64 v116, v180, v241, vcc                    // 000000007910: D1000074 01ABE3B4
	v_cmp_gt_i32_e32 vcc, 9, v127                              // 000000007918: 7D88FE89
	s_nop 1                                                    // 00000000791C: BF800001
	v_cndmask_b32_e64 v117, v181, v241, vcc                    // 000000007920: D1000075 01ABE3B5
	v_cmp_gt_i32_e32 vcc, 10, v127                             // 000000007928: 7D88FE8A
	s_nop 1                                                    // 00000000792C: BF800001
	v_cndmask_b32_e64 v118, v182, v241, vcc                    // 000000007930: D1000076 01ABE3B6
	v_cmp_gt_i32_e32 vcc, 11, v127                             // 000000007938: 7D88FE8B
	s_nop 1                                                    // 00000000793C: BF800001
	v_cndmask_b32_e64 v119, v183, v241, vcc                    // 000000007940: D1000077 01ABE3B7
	v_cmp_gt_i32_e32 vcc, 16, v127                             // 000000007948: 7D88FE90
	s_nop 1                                                    // 00000000794C: BF800001
	v_cndmask_b32_e64 v120, v184, v241, vcc                    // 000000007950: D1000078 01ABE3B8
	v_cmp_gt_i32_e32 vcc, 17, v127                             // 000000007958: 7D88FE91
	s_nop 1                                                    // 00000000795C: BF800001
	v_cndmask_b32_e64 v121, v185, v241, vcc                    // 000000007960: D1000079 01ABE3B9
	v_cmp_gt_i32_e32 vcc, 18, v127                             // 000000007968: 7D88FE92
	s_nop 1                                                    // 00000000796C: BF800001
	v_cndmask_b32_e64 v122, v186, v241, vcc                    // 000000007970: D100007A 01ABE3BA
	v_cmp_gt_i32_e32 vcc, 19, v127                             // 000000007978: 7D88FE93
	s_nop 1                                                    // 00000000797C: BF800001
	v_cndmask_b32_e64 v123, v187, v241, vcc                    // 000000007980: D100007B 01ABE3BB
	v_cmp_gt_i32_e32 vcc, 24, v127                             // 000000007988: 7D88FE98
	s_nop 1                                                    // 00000000798C: BF800001
	v_cndmask_b32_e64 v124, v188, v241, vcc                    // 000000007990: D100007C 01ABE3BC
	v_cmp_gt_i32_e32 vcc, 25, v127                             // 000000007998: 7D88FE99
	s_nop 1                                                    // 00000000799C: BF800001
	v_cndmask_b32_e64 v125, v189, v241, vcc                    // 0000000079A0: D100007D 01ABE3BD
	v_cmp_gt_i32_e32 vcc, 26, v127                             // 0000000079A8: 7D88FE9A
	s_nop 1                                                    // 0000000079AC: BF800001
	v_cndmask_b32_e64 v126, v190, v241, vcc                    // 0000000079B0: D100007E 01ABE3BE
	v_cmp_gt_i32_e32 vcc, 27, v127                             // 0000000079B8: 7D88FE9B
	s_nop 1                                                    // 0000000079BC: BF800001
	v_cndmask_b32_e64 v127, v191, v241, vcc                    // 0000000079C0: D100007F 01ABE3BF
	s_sub_u32 s18, s3, s20                                     // 0000000079C8: 80921403
	s_sub_i32 s18, s18, 32                                     // 0000000079CC: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 0000000079D0: BF03A012
	s_cbranch_scc1 90                                          // 0000000079D4: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6040>
	s_mov_b32 s53, s52                                         // 0000000079D8: BEB50034
	s_mov_b32 s54, s52                                         // 0000000079DC: BEB60034
	s_mov_b32 s55, s52                                         // 0000000079E0: BEB70034
	s_mov_b32 s56, s52                                         // 0000000079E4: BEB80034
	s_mov_b32 s57, s52                                         // 0000000079E8: BEB90034
	s_mov_b32 s58, s52                                         // 0000000079EC: BEBA0034
	s_mov_b32 s59, s52                                         // 0000000079F0: BEBB0034
	s_mov_b32 s60, s52                                         // 0000000079F4: BEBC0034
	s_mov_b32 s61, s52                                         // 0000000079F8: BEBD0034
	s_mov_b32 s62, s52                                         // 0000000079FC: BEBE0034
	s_mov_b32 s63, s52                                         // 000000007A00: BEBF0034
	s_mov_b32 s64, s52                                         // 000000007A04: BEC00034
	s_mov_b32 s65, s52                                         // 000000007A08: BEC10034
	s_mov_b32 s66, s52                                         // 000000007A0C: BEC20034
	s_mov_b32 s67, s52                                         // 000000007A10: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000007A14: BF048012
	v_mov_b64_e32 v[110:111], s[66:67]                         // 000000007A18: 7EDC7042
	v_mov_b64_e32 v[108:109], s[64:65]                         // 000000007A1C: 7ED87040
	v_mov_b64_e32 v[106:107], s[62:63]                         // 000000007A20: 7ED4703E
	v_mov_b64_e32 v[104:105], s[60:61]                         // 000000007A24: 7ED0703C
	v_mov_b64_e32 v[102:103], s[58:59]                         // 000000007A28: 7ECC703A
	v_mov_b64_e32 v[100:101], s[56:57]                         // 000000007A2C: 7EC87038
	v_mov_b64_e32 v[98:99], s[54:55]                           // 000000007A30: 7EC47036
	v_mov_b64_e32 v[96:97], s[52:53]                           // 000000007A34: 7EC07034
	s_cbranch_scc1 65                                          // 000000007A38: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6040>
	v_add_u32_e32 v111, s18, v243                              // 000000007A3C: 68DFE612
	v_cmp_gt_i32_e32 vcc, 0, v111                              // 000000007A40: 7D88DE80
	s_nop 1                                                    // 000000007A44: BF800001
	v_cndmask_b32_e64 v96, v160, v241, vcc                     // 000000007A48: D1000060 01ABE3A0
	v_cmp_gt_i32_e32 vcc, 1, v111                              // 000000007A50: 7D88DE81
	s_nop 1                                                    // 000000007A54: BF800001
	v_cndmask_b32_e64 v97, v161, v241, vcc                     // 000000007A58: D1000061 01ABE3A1
	v_cmp_gt_i32_e32 vcc, 2, v111                              // 000000007A60: 7D88DE82
	s_nop 1                                                    // 000000007A64: BF800001
	v_cndmask_b32_e64 v98, v162, v241, vcc                     // 000000007A68: D1000062 01ABE3A2
	v_cmp_gt_i32_e32 vcc, 3, v111                              // 000000007A70: 7D88DE83
	s_nop 1                                                    // 000000007A74: BF800001
	v_cndmask_b32_e64 v99, v163, v241, vcc                     // 000000007A78: D1000063 01ABE3A3
	v_cmp_gt_i32_e32 vcc, 8, v111                              // 000000007A80: 7D88DE88
	s_nop 1                                                    // 000000007A84: BF800001
	v_cndmask_b32_e64 v100, v164, v241, vcc                    // 000000007A88: D1000064 01ABE3A4
	v_cmp_gt_i32_e32 vcc, 9, v111                              // 000000007A90: 7D88DE89
	s_nop 1                                                    // 000000007A94: BF800001
	v_cndmask_b32_e64 v101, v165, v241, vcc                    // 000000007A98: D1000065 01ABE3A5
	v_cmp_gt_i32_e32 vcc, 10, v111                             // 000000007AA0: 7D88DE8A
	s_nop 1                                                    // 000000007AA4: BF800001
	v_cndmask_b32_e64 v102, v166, v241, vcc                    // 000000007AA8: D1000066 01ABE3A6
	v_cmp_gt_i32_e32 vcc, 11, v111                             // 000000007AB0: 7D88DE8B
	s_nop 1                                                    // 000000007AB4: BF800001
	v_cndmask_b32_e64 v103, v167, v241, vcc                    // 000000007AB8: D1000067 01ABE3A7
	v_cmp_gt_i32_e32 vcc, 16, v111                             // 000000007AC0: 7D88DE90
	s_nop 1                                                    // 000000007AC4: BF800001
	v_cndmask_b32_e64 v104, v168, v241, vcc                    // 000000007AC8: D1000068 01ABE3A8
	v_cmp_gt_i32_e32 vcc, 17, v111                             // 000000007AD0: 7D88DE91
	s_nop 1                                                    // 000000007AD4: BF800001
	v_cndmask_b32_e64 v105, v169, v241, vcc                    // 000000007AD8: D1000069 01ABE3A9
	v_cmp_gt_i32_e32 vcc, 18, v111                             // 000000007AE0: 7D88DE92
	s_nop 1                                                    // 000000007AE4: BF800001
	v_cndmask_b32_e64 v106, v170, v241, vcc                    // 000000007AE8: D100006A 01ABE3AA
	v_cmp_gt_i32_e32 vcc, 19, v111                             // 000000007AF0: 7D88DE93
	s_nop 1                                                    // 000000007AF4: BF800001
	v_cndmask_b32_e64 v107, v171, v241, vcc                    // 000000007AF8: D100006B 01ABE3AB
	v_cmp_gt_i32_e32 vcc, 24, v111                             // 000000007B00: 7D88DE98
	s_nop 1                                                    // 000000007B04: BF800001
	v_cndmask_b32_e64 v108, v172, v241, vcc                    // 000000007B08: D100006C 01ABE3AC
	v_cmp_gt_i32_e32 vcc, 25, v111                             // 000000007B10: 7D88DE99
	s_nop 1                                                    // 000000007B14: BF800001
	v_cndmask_b32_e64 v109, v173, v241, vcc                    // 000000007B18: D100006D 01ABE3AD
	v_cmp_gt_i32_e32 vcc, 26, v111                             // 000000007B20: 7D88DE9A
	s_nop 1                                                    // 000000007B24: BF800001
	v_cndmask_b32_e64 v110, v174, v241, vcc                    // 000000007B28: D100006E 01ABE3AE
	v_cmp_gt_i32_e32 vcc, 27, v111                             // 000000007B30: 7D88DE9B
	s_nop 1                                                    // 000000007B34: BF800001
	v_cndmask_b32_e64 v111, v175, v241, vcc                    // 000000007B38: D100006F 01ABE3AF
	s_sub_u32 s18, s3, s20                                     // 000000007B40: 80921403
	s_sub_i32 s18, s18, 64                                     // 000000007B44: 8192C012
	scratch_load_dwordx4 v[160:163], off, off                  // 000000007B48: DC5C4000 A07F0000
	scratch_load_dwordx4 v[164:167], off, off offset:16        // 000000007B50: DC5C4010 A47F0000
	s_cmp_ge_i32 s18, 32                                       // 000000007B58: BF03A012
	s_cbranch_scc1 90                                          // 000000007B5C: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x61c8>
	s_mov_b32 s53, s52                                         // 000000007B60: BEB50034
	s_mov_b32 s54, s52                                         // 000000007B64: BEB60034
	s_mov_b32 s55, s52                                         // 000000007B68: BEB70034
	s_mov_b32 s56, s52                                         // 000000007B6C: BEB80034
	s_mov_b32 s57, s52                                         // 000000007B70: BEB90034
	s_mov_b32 s58, s52                                         // 000000007B74: BEBA0034
	s_mov_b32 s59, s52                                         // 000000007B78: BEBB0034
	s_mov_b32 s60, s52                                         // 000000007B7C: BEBC0034
	s_mov_b32 s61, s52                                         // 000000007B80: BEBD0034
	s_mov_b32 s62, s52                                         // 000000007B84: BEBE0034
	s_mov_b32 s63, s52                                         // 000000007B88: BEBF0034
	s_mov_b32 s64, s52                                         // 000000007B8C: BEC00034
	s_mov_b32 s65, s52                                         // 000000007B90: BEC10034
	s_mov_b32 s66, s52                                         // 000000007B94: BEC20034
	s_mov_b32 s67, s52                                         // 000000007B98: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000007B9C: BF048012
	v_mov_b64_e32 v[94:95], s[66:67]                           // 000000007BA0: 7EBC7042
	v_mov_b64_e32 v[92:93], s[64:65]                           // 000000007BA4: 7EB87040
	v_mov_b64_e32 v[90:91], s[62:63]                           // 000000007BA8: 7EB4703E
	v_mov_b64_e32 v[88:89], s[60:61]                           // 000000007BAC: 7EB0703C
	v_mov_b64_e32 v[86:87], s[58:59]                           // 000000007BB0: 7EAC703A
	v_mov_b64_e32 v[84:85], s[56:57]                           // 000000007BB4: 7EA87038
	v_mov_b64_e32 v[82:83], s[54:55]                           // 000000007BB8: 7EA47036
	v_mov_b64_e32 v[80:81], s[52:53]                           // 000000007BBC: 7EA07034
	s_cbranch_scc1 65                                          // 000000007BC0: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x61c8>
	v_add_u32_e32 v95, s18, v243                               // 000000007BC4: 68BFE612
	v_cmp_gt_i32_e32 vcc, 0, v95                               // 000000007BC8: 7D88BE80
	s_nop 1                                                    // 000000007BCC: BF800001
	v_cndmask_b32_e64 v80, v144, v241, vcc                     // 000000007BD0: D1000050 01ABE390
	v_cmp_gt_i32_e32 vcc, 1, v95                               // 000000007BD8: 7D88BE81
	s_nop 1                                                    // 000000007BDC: BF800001
	v_cndmask_b32_e64 v81, v145, v241, vcc                     // 000000007BE0: D1000051 01ABE391
	v_cmp_gt_i32_e32 vcc, 2, v95                               // 000000007BE8: 7D88BE82
	s_nop 1                                                    // 000000007BEC: BF800001
	v_cndmask_b32_e64 v82, v146, v241, vcc                     // 000000007BF0: D1000052 01ABE392
	v_cmp_gt_i32_e32 vcc, 3, v95                               // 000000007BF8: 7D88BE83
	s_nop 1                                                    // 000000007BFC: BF800001
	v_cndmask_b32_e64 v83, v147, v241, vcc                     // 000000007C00: D1000053 01ABE393
	v_cmp_gt_i32_e32 vcc, 8, v95                               // 000000007C08: 7D88BE88
	s_nop 1                                                    // 000000007C0C: BF800001
	v_cndmask_b32_e64 v84, v148, v241, vcc                     // 000000007C10: D1000054 01ABE394
	v_cmp_gt_i32_e32 vcc, 9, v95                               // 000000007C18: 7D88BE89
	s_nop 1                                                    // 000000007C1C: BF800001
	v_cndmask_b32_e64 v85, v149, v241, vcc                     // 000000007C20: D1000055 01ABE395
	v_cmp_gt_i32_e32 vcc, 10, v95                              // 000000007C28: 7D88BE8A
	s_nop 1                                                    // 000000007C2C: BF800001
	v_cndmask_b32_e64 v86, v150, v241, vcc                     // 000000007C30: D1000056 01ABE396
	v_cmp_gt_i32_e32 vcc, 11, v95                              // 000000007C38: 7D88BE8B
	s_nop 1                                                    // 000000007C3C: BF800001
	v_cndmask_b32_e64 v87, v151, v241, vcc                     // 000000007C40: D1000057 01ABE397
	v_cmp_gt_i32_e32 vcc, 16, v95                              // 000000007C48: 7D88BE90
	s_nop 1                                                    // 000000007C4C: BF800001
	v_cndmask_b32_e64 v88, v152, v241, vcc                     // 000000007C50: D1000058 01ABE398
	v_cmp_gt_i32_e32 vcc, 17, v95                              // 000000007C58: 7D88BE91
	s_nop 1                                                    // 000000007C5C: BF800001
	v_cndmask_b32_e64 v89, v153, v241, vcc                     // 000000007C60: D1000059 01ABE399
	v_cmp_gt_i32_e32 vcc, 18, v95                              // 000000007C68: 7D88BE92
	s_nop 1                                                    // 000000007C6C: BF800001
	v_cndmask_b32_e64 v90, v154, v241, vcc                     // 000000007C70: D100005A 01ABE39A
	v_cmp_gt_i32_e32 vcc, 19, v95                              // 000000007C78: 7D88BE93
	s_nop 1                                                    // 000000007C7C: BF800001
	v_cndmask_b32_e64 v91, v155, v241, vcc                     // 000000007C80: D100005B 01ABE39B
	v_cmp_gt_i32_e32 vcc, 24, v95                              // 000000007C88: 7D88BE98
	s_nop 1                                                    // 000000007C8C: BF800001
	v_cndmask_b32_e64 v92, v156, v241, vcc                     // 000000007C90: D100005C 01ABE39C
	v_cmp_gt_i32_e32 vcc, 25, v95                              // 000000007C98: 7D88BE99
	s_nop 1                                                    // 000000007C9C: BF800001
	v_cndmask_b32_e64 v93, v157, v241, vcc                     // 000000007CA0: D100005D 01ABE39D
	v_cmp_gt_i32_e32 vcc, 26, v95                              // 000000007CA8: 7D88BE9A
	s_nop 1                                                    // 000000007CAC: BF800001
	v_cndmask_b32_e64 v94, v158, v241, vcc                     // 000000007CB0: D100005E 01ABE39E
	v_cmp_gt_i32_e32 vcc, 27, v95                              // 000000007CB8: 7D88BE9B
	s_nop 1                                                    // 000000007CBC: BF800001
	v_cndmask_b32_e64 v95, v159, v241, vcc                     // 000000007CC0: D100005F 01ABE39F
	s_sub_u32 s18, s3, s20                                     // 000000007CC8: 80921403
	s_sub_i32 s18, s18, 0x60                                   // 000000007CCC: 8192FF12 00000060
	s_cmp_ge_i32 s18, 32                                       // 000000007CD4: BF03A012
	s_cbranch_scc1 90                                          // 000000007CD8: BF85005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6344>
	s_mov_b32 s53, s52                                         // 000000007CDC: BEB50034
	s_mov_b32 s54, s52                                         // 000000007CE0: BEB60034
	s_mov_b32 s55, s52                                         // 000000007CE4: BEB70034
	s_mov_b32 s56, s52                                         // 000000007CE8: BEB80034
	s_mov_b32 s57, s52                                         // 000000007CEC: BEB90034
	s_mov_b32 s58, s52                                         // 000000007CF0: BEBA0034
	s_mov_b32 s59, s52                                         // 000000007CF4: BEBB0034
	s_mov_b32 s60, s52                                         // 000000007CF8: BEBC0034
	s_mov_b32 s61, s52                                         // 000000007CFC: BEBD0034
	s_mov_b32 s62, s52                                         // 000000007D00: BEBE0034
	s_mov_b32 s63, s52                                         // 000000007D04: BEBF0034
	s_mov_b32 s64, s52                                         // 000000007D08: BEC00034
	s_mov_b32 s65, s52                                         // 000000007D0C: BEC10034
	s_mov_b32 s66, s52                                         // 000000007D10: BEC20034
	s_mov_b32 s67, s52                                         // 000000007D14: BEC30034
	s_cmp_lt_i32 s18, 0                                        // 000000007D18: BF048012
	v_mov_b64_e32 v[78:79], s[66:67]                           // 000000007D1C: 7E9C7042
	v_mov_b64_e32 v[76:77], s[64:65]                           // 000000007D20: 7E987040
	v_mov_b64_e32 v[74:75], s[62:63]                           // 000000007D24: 7E94703E
	v_mov_b64_e32 v[72:73], s[60:61]                           // 000000007D28: 7E90703C
	v_mov_b64_e32 v[70:71], s[58:59]                           // 000000007D2C: 7E8C703A
	v_mov_b64_e32 v[68:69], s[56:57]                           // 000000007D30: 7E887038
	v_mov_b64_e32 v[66:67], s[54:55]                           // 000000007D34: 7E847036
	v_mov_b64_e32 v[64:65], s[52:53]                           // 000000007D38: 7E807034
	s_cbranch_scc1 65                                          // 000000007D3C: BF850041 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6344>
	v_add_u32_e32 v79, s18, v243                               // 000000007D40: 689FE612
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 000000007D44: 7D889E80
	s_nop 1                                                    // 000000007D48: BF800001
	v_cndmask_b32_e64 v64, v128, v241, vcc                     // 000000007D4C: D1000040 01ABE380
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 000000007D54: 7D889E81
	s_nop 1                                                    // 000000007D58: BF800001
	v_cndmask_b32_e64 v65, v129, v241, vcc                     // 000000007D5C: D1000041 01ABE381
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 000000007D64: 7D889E82
	s_nop 1                                                    // 000000007D68: BF800001
	v_cndmask_b32_e64 v66, v130, v241, vcc                     // 000000007D6C: D1000042 01ABE382
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 000000007D74: 7D889E83
	s_nop 1                                                    // 000000007D78: BF800001
	v_cndmask_b32_e64 v67, v131, v241, vcc                     // 000000007D7C: D1000043 01ABE383
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 000000007D84: 7D889E88
	s_nop 1                                                    // 000000007D88: BF800001
	v_cndmask_b32_e64 v68, v132, v241, vcc                     // 000000007D8C: D1000044 01ABE384
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 000000007D94: 7D889E89
	s_nop 1                                                    // 000000007D98: BF800001
	v_cndmask_b32_e64 v69, v133, v241, vcc                     // 000000007D9C: D1000045 01ABE385
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 000000007DA4: 7D889E8A
	s_nop 1                                                    // 000000007DA8: BF800001
	v_cndmask_b32_e64 v70, v134, v241, vcc                     // 000000007DAC: D1000046 01ABE386
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 000000007DB4: 7D889E8B
	s_nop 1                                                    // 000000007DB8: BF800001
	v_cndmask_b32_e64 v71, v135, v241, vcc                     // 000000007DBC: D1000047 01ABE387
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 000000007DC4: 7D889E90
	s_nop 1                                                    // 000000007DC8: BF800001
	v_cndmask_b32_e64 v72, v136, v241, vcc                     // 000000007DCC: D1000048 01ABE388
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 000000007DD4: 7D889E91
	s_nop 1                                                    // 000000007DD8: BF800001
	v_cndmask_b32_e64 v73, v137, v241, vcc                     // 000000007DDC: D1000049 01ABE389
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 000000007DE4: 7D889E92
	s_nop 1                                                    // 000000007DE8: BF800001
	v_cndmask_b32_e64 v74, v138, v241, vcc                     // 000000007DEC: D100004A 01ABE38A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 000000007DF4: 7D889E93
	s_nop 1                                                    // 000000007DF8: BF800001
	v_cndmask_b32_e64 v75, v139, v241, vcc                     // 000000007DFC: D100004B 01ABE38B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 000000007E04: 7D889E98
	s_nop 1                                                    // 000000007E08: BF800001
	v_cndmask_b32_e64 v76, v140, v241, vcc                     // 000000007E0C: D100004C 01ABE38C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 000000007E14: 7D889E99
	s_nop 1                                                    // 000000007E18: BF800001
	v_cndmask_b32_e64 v77, v141, v241, vcc                     // 000000007E1C: D100004D 01ABE38D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 000000007E24: 7D889E9A
	s_nop 1                                                    // 000000007E28: BF800001
	v_cndmask_b32_e64 v78, v142, v241, vcc                     // 000000007E2C: D100004E 01ABE38E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 000000007E34: 7D889E9B
	s_nop 1                                                    // 000000007E38: BF800001
	v_cndmask_b32_e64 v79, v143, v241, vcc                     // 000000007E3C: D100004F 01ABE38F
	v_max_f32_e32 v128, v112, v113                             // 000000007E44: 1700E370
	v_max3_f32 v128, v114, v115, v128                          // 000000007E48: D1D30080 0602E772
	v_max3_f32 v128, v116, v117, v128                          // 000000007E50: D1D30080 0602EB74
	v_max3_f32 v128, v118, v119, v128                          // 000000007E58: D1D30080 0602EF76
	v_max3_f32 v128, v120, v121, v128                          // 000000007E60: D1D30080 0602F378
	v_max3_f32 v128, v122, v123, v128                          // 000000007E68: D1D30080 0602F77A
	v_max3_f32 v128, v124, v125, v128                          // 000000007E70: D1D30080 0602FB7C
	v_max3_f32 v129, v126, v127, v128                          // 000000007E78: D1D30081 0602FF7E
	v_max_f32_e32 v128, v96, v97                               // 000000007E80: 1700C360
	v_max3_f32 v128, v98, v99, v128                            // 000000007E84: D1D30080 0602C762
	v_max3_f32 v128, v100, v101, v128                          // 000000007E8C: D1D30080 0602CB64
	v_max3_f32 v128, v102, v103, v128                          // 000000007E94: D1D30080 0602CF66
	v_max3_f32 v128, v104, v105, v128                          // 000000007E9C: D1D30080 0602D368
	v_max3_f32 v128, v106, v107, v128                          // 000000007EA4: D1D30080 0602D76A
	v_max3_f32 v128, v108, v109, v128                          // 000000007EAC: D1D30080 0602DB6C
	v_max3_f32 v130, v110, v111, v128                          // 000000007EB4: D1D30082 0602DF6E
	v_max_f32_e32 v128, v80, v81                               // 000000007EBC: 1700A350
	v_max3_f32 v128, v82, v83, v128                            // 000000007EC0: D1D30080 0602A752
	v_max3_f32 v128, v84, v85, v128                            // 000000007EC8: D1D30080 0602AB54
	v_max3_f32 v128, v86, v87, v128                            // 000000007ED0: D1D30080 0602AF56
	v_max3_f32 v128, v88, v89, v128                            // 000000007ED8: D1D30080 0602B358
	v_max3_f32 v128, v90, v91, v128                            // 000000007EE0: D1D30080 0602B75A
	v_max3_f32 v128, v92, v93, v128                            // 000000007EE8: D1D30080 0602BB5C
	v_max3_f32 v128, v94, v95, v128                            // 000000007EF0: D1D30080 0602BF5E
	v_max_f32_e32 v131, v64, v65                               // 000000007EF8: 17068340
	v_max3_f32 v131, v66, v67, v131                            // 000000007EFC: D1D30083 060E8742
	v_max3_f32 v131, v68, v69, v131                            // 000000007F04: D1D30083 060E8B44
	v_max3_f32 v131, v70, v71, v131                            // 000000007F0C: D1D30083 060E8F46
	v_max3_f32 v131, v72, v73, v131                            // 000000007F14: D1D30083 060E9348
	v_max3_f32 v131, v74, v75, v131                            // 000000007F1C: D1D30083 060E974A
	v_max3_f32 v131, v76, v77, v131                            // 000000007F24: D1D30083 060E9B4C
	v_max3_f32 v131, v78, v79, v131                            // 000000007F2C: D1D30083 060E9F4E
	v_max_f32_e32 v128, v128, v131                             // 000000007F34: 17010780
	v_max_f32_e32 v130, v129, v130                             // 000000007F38: 17050581
	v_mov_b32_e32 v131, v130                                   // 000000007F3C: 7F060382
	s_nop 1                                                    // 000000007F40: BF800001
	v_permlane32_swap_b32_e32 v130, v131                       // 000000007F44: 7F04B583
	v_mov_b32_e32 v129, v128                                   // 000000007F48: 7F020380
	s_nop 1                                                    // 000000007F4C: BF800001
	v_permlane32_swap_b32_e32 v128, v129                       // 000000007F50: 7F00B581
	v_max_f32_e32 v128, v128, v129                             // 000000007F54: 17010380
	v_max_f32_e32 v130, v130, v131                             // 000000007F58: 17050782
	v_max_f32_e32 v129, v130, v128                             // 000000007F5C: 17030182
	v_mul_f32_e32 v129, v238, v129                             // 000000007F60: 0B0303EE
	v_max_f32_e32 v129, v252, v129                             // 000000007F64: 170303FC
	v_sub_f32_e32 v131, v129, v252                             // 000000007F68: 0507F981
	v_cmp_lt_f32_e32 vcc, s37, v131                            // 000000007F6C: 7C830625
	s_cmp_lg_u64 vcc, 0                                        // 000000007F70: BF13806A
	s_cselect_b32 s18, 1, 0                                    // 000000007F74: 85128081
	s_cselect_b64 s[18:19], -1, 0                              // 000000007F78: 859280C1
	v_cndmask_b32_e64 v129, v252, v129, s[18:19]               // 000000007F7C: D1000081 004B03FC
	v_fma_f32 v130, v130, v238, -v129                          // 000000007F84: D1CB0082 8607DD82
	v_floor_f32_e32 v130, v130                                 // 000000007F8C: 7F043F82
	v_med3_f32 v132, v130, s99, 0                              // 000000007F90: D1D60084 0200C782
	v_cvt_i32_f32_e32 v130, v132                               // 000000007F98: 7F041184
	v_add_u32_e32 v130, 0x7f, v130                             // 000000007F9C: 690504FF 0000007F
	v_lshlrev_b32_e32 v131, 23, v130                           // 000000007FA4: 25070497
	v_fma_f32 v128, v128, v238, -v129                          // 000000007FA8: D1CB0080 8607DD80
	v_floor_f32_e32 v128, v128                                 // 000000007FB0: 7F003F80
	v_med3_f32 v128, v128, s99, 0                              // 000000007FB4: D1D60080 0200C780
	v_cvt_i32_f32_e32 v131, v128                               // 000000007FBC: 7F061180
	v_add_u32_e32 v131, 0x7f, v131                             // 000000007FC0: 690706FF 0000007F
	v_lshlrev_b32_e32 v133, 23, v131                           // 000000007FC8: 250B0697
	v_mov_b32_e32 v133, s50                                    // 000000007FCC: 7F0A0232
	v_fma_f32 v133, v129, s95, v133                            // 000000007FD0: D1CB0085 0614BF81
	v_fma_f32 v152, v132, s95, v133                            // 000000007FD8: D1CB0098 0614BF84
	v_fma_f32 v150, v128, s95, v133                            // 000000007FE0: D1CB0096 0614BF80
	s_lshl_b32 s18, s17, 14                                    // 000000007FE8: 8E128E11
	s_and_b32 s18, s18, 0x8000                                 // 000000007FEC: 8612FF12 00008000
	s_bitcmp1_b32 s17, 0                                       // 000000007FF4: BF0D8011
	s_cselect_b32 s17, s93, 0x10000                            // 000000007FF8: 8511FF5D 00010000
	s_or_b32 s18, s18, s17                                     // 000000008000: 87121112
	v_or_b32_e32 v128, s18, v245                               // 000000008004: 2901EA12
	v_add_u32_e32 v128, v128, v244                             // 000000008008: 6901E980
	s_waitcnt vmcnt(2)                                         // 00000000800C: BF8C0F72
	ds_read_b64_tr_b8 v[132:133], v128                         // 000000008010: D9C40000 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:1024             // 000000008018: D9C40400 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:2048             // 000000008020: D9C40800 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:3072             // 000000008028: D9C40C00 8A000080
	ds_read_b64_tr_b8 v[140:141], v128 offset:256              // 000000008030: D9C40100 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:1280             // 000000008038: D9C40500 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:2304             // 000000008040: D9C40900 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:3328             // 000000008048: D9C40D00 92000080
	s_waitcnt lgkmcnt(4)                                       // 000000008050: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[132:139], v[208:215], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000008054: D3AC0000 0003F7F2 D3AE0830 04C3A184
	s_waitcnt lgkmcnt(0)                                       // 000000008064: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[140:147], v[208:215], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000008068: D3AC0000 0003F7F2 D3AE0820 0483A18C
	ds_read_b64_tr_b8 v[132:133], v128 offset:512              // 000000008078: D9C40200 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:1536             // 000000008080: D9C40600 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:2560             // 000000008088: D9C40A00 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:3584             // 000000008090: D9C40E00 8A000080
	s_waitcnt lgkmcnt(0)                                       // 000000008098: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[132:139], v[208:215], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 00000000809C: D3AC0000 0003F7F2 D3AE0810 0443A184
	ds_read_b64_tr_b8 v[140:141], v128 offset:768              // 0000000080AC: D9C40300 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:1792             // 0000000080B4: D9C40700 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:2816             // 0000000080BC: D9C40B00 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:3840             // 0000000080C4: D9C40F00 92000080
	s_waitcnt lgkmcnt(0)                                       // 0000000080CC: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[140:147], v[208:215], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 0000000080D0: D3AC0000 0003F7F2 D3AE0800 0403A18C
	ds_read_b64_tr_b8 v[132:133], v128 offset:4096             // 0000000080E0: D9C41000 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:5120             // 0000000080E8: D9C41400 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:6144             // 0000000080F0: D9C41800 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:7168             // 0000000080F8: D9C41C00 8A000080
	s_waitcnt vmcnt(0) lgkmcnt(0)                              // 000000008100: BF8C0070
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[132:139], v[160:167], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000008104: D3AC0000 0003FBF2 D3AE0830 04C34184
	ds_read_b64_tr_b8 v[140:141], v128 offset:4352             // 000000008114: D9C41100 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:5376             // 00000000811C: D9C41500 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:6400             // 000000008124: D9C41900 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:7424             // 00000000812C: D9C41D00 92000080
	s_waitcnt lgkmcnt(0)                                       // 000000008134: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[140:147], v[160:167], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000008138: D3AC0000 0003FBF2 D3AE0820 0483418C
	ds_read_b64_tr_b8 v[132:133], v128 offset:4608             // 000000008148: D9C41200 84000080
	ds_read_b64_tr_b8 v[134:135], v128 offset:5632             // 000000008150: D9C41600 86000080
	ds_read_b64_tr_b8 v[136:137], v128 offset:6656             // 000000008158: D9C41A00 88000080
	ds_read_b64_tr_b8 v[138:139], v128 offset:7680             // 000000008160: D9C41E00 8A000080
	s_waitcnt lgkmcnt(0)                                       // 000000008168: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[132:139], v[160:167], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 00000000816C: D3AC0000 0003FBF2 D3AE0810 04434184
	ds_read_b64_tr_b8 v[140:141], v128 offset:4864             // 00000000817C: D9C41300 8C000080
	ds_read_b64_tr_b8 v[142:143], v128 offset:5888             // 000000008184: D9C41700 8E000080
	ds_read_b64_tr_b8 v[144:145], v128 offset:6912             // 00000000818C: D9C41B00 90000080
	ds_read_b64_tr_b8 v[146:147], v128 offset:7936             // 000000008194: D9C41F00 92000080
	s_waitcnt lgkmcnt(0)                                       // 00000000819C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[140:147], v[160:167], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 0000000081A0: D3AC0000 0003FBF2 D3AE0800 0403418C
	s_cbranch_vccz 68                                          // 0000000081B0: BF860044 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x67c4>
	v_sub_f32_e32 v128, v252, v129                             // 0000000081B4: 050103FC
	v_exp_f32_e32 v128, v128                                   // 0000000081B8: 7F004180
	s_nop 0                                                    // 0000000081BC: BF800000
	v_pk_mul_f32 v[62:63], v[128:129], v[62:63] op_sel_hi:[0,1]// 0000000081C0: D3B1403E 10027D80
	v_pk_mul_f32 v[60:61], v[128:129], v[60:61] op_sel_hi:[0,1]// 0000000081C8: D3B1403C 10027980
	v_pk_mul_f32 v[58:59], v[128:129], v[58:59] op_sel_hi:[0,1]// 0000000081D0: D3B1403A 10027580
	v_pk_mul_f32 v[56:57], v[128:129], v[56:57] op_sel_hi:[0,1]// 0000000081D8: D3B14038 10027180
	v_pk_mul_f32 v[54:55], v[128:129], v[54:55] op_sel_hi:[0,1]// 0000000081E0: D3B14036 10026D80
	v_pk_mul_f32 v[52:53], v[128:129], v[52:53] op_sel_hi:[0,1]// 0000000081E8: D3B14034 10026980
	v_pk_mul_f32 v[50:51], v[128:129], v[50:51] op_sel_hi:[0,1]// 0000000081F0: D3B14032 10026580
	v_pk_mul_f32 v[48:49], v[128:129], v[48:49] op_sel_hi:[0,1]// 0000000081F8: D3B14030 10026180
	v_pk_mul_f32 v[46:47], v[128:129], v[46:47] op_sel_hi:[0,1]// 000000008200: D3B1402E 10025D80
	v_pk_mul_f32 v[44:45], v[128:129], v[44:45] op_sel_hi:[0,1]// 000000008208: D3B1402C 10025980
	v_pk_mul_f32 v[42:43], v[128:129], v[42:43] op_sel_hi:[0,1]// 000000008210: D3B1402A 10025580
	v_pk_mul_f32 v[40:41], v[128:129], v[40:41] op_sel_hi:[0,1]// 000000008218: D3B14028 10025180
	v_pk_mul_f32 v[38:39], v[128:129], v[38:39] op_sel_hi:[0,1]// 000000008220: D3B14026 10024D80
	v_pk_mul_f32 v[36:37], v[128:129], v[36:37] op_sel_hi:[0,1]// 000000008228: D3B14024 10024980
	v_pk_mul_f32 v[34:35], v[128:129], v[34:35] op_sel_hi:[0,1]// 000000008230: D3B14022 10024580
	v_pk_mul_f32 v[32:33], v[128:129], v[32:33] op_sel_hi:[0,1]// 000000008238: D3B14020 10024180
	v_pk_mul_f32 v[30:31], v[128:129], v[30:31] op_sel_hi:[0,1]// 000000008240: D3B1401E 10023D80
	v_pk_mul_f32 v[28:29], v[128:129], v[28:29] op_sel_hi:[0,1]// 000000008248: D3B1401C 10023980
	v_pk_mul_f32 v[26:27], v[128:129], v[26:27] op_sel_hi:[0,1]// 000000008250: D3B1401A 10023580
	v_pk_mul_f32 v[24:25], v[128:129], v[24:25] op_sel_hi:[0,1]// 000000008258: D3B14018 10023180
	v_pk_mul_f32 v[22:23], v[128:129], v[22:23] op_sel_hi:[0,1]// 000000008260: D3B14016 10022D80
	v_pk_mul_f32 v[20:21], v[128:129], v[20:21] op_sel_hi:[0,1]// 000000008268: D3B14014 10022980
	v_pk_mul_f32 v[18:19], v[128:129], v[18:19] op_sel_hi:[0,1]// 000000008270: D3B14012 10022580
	v_pk_mul_f32 v[16:17], v[128:129], v[16:17] op_sel_hi:[0,1]// 000000008278: D3B14010 10022180
	v_pk_mul_f32 v[14:15], v[128:129], v[14:15] op_sel_hi:[0,1]// 000000008280: D3B1400E 10021D80
	v_pk_mul_f32 v[12:13], v[128:129], v[12:13] op_sel_hi:[0,1]// 000000008288: D3B1400C 10021980
	v_pk_mul_f32 v[10:11], v[128:129], v[10:11] op_sel_hi:[0,1]// 000000008290: D3B1400A 10021580
	v_pk_mul_f32 v[8:9], v[128:129], v[8:9] op_sel_hi:[0,1]    // 000000008298: D3B14008 10021180
	v_pk_mul_f32 v[6:7], v[128:129], v[6:7] op_sel_hi:[0,1]    // 0000000082A0: D3B14006 10020D80
	v_pk_mul_f32 v[4:5], v[128:129], v[4:5] op_sel_hi:[0,1]    // 0000000082A8: D3B14004 10020980
	v_pk_mul_f32 v[2:3], v[128:129], v[2:3] op_sel_hi:[0,1]    // 0000000082B0: D3B14002 10020580
	v_pk_mul_f32 v[0:1], v[128:129], v[0:1] op_sel_hi:[0,1]    // 0000000082B8: D3B14000 10020180
	v_mul_f32_e32 v250, v250, v128                             // 0000000082C0: 0BF501FA
	s_waitcnt vmcnt(0)                                         // 0000000082C4: BF8C0F70
	s_barrier                                                  // 0000000082C8: BF8A0000
	s_add_u32 s15, s15, 1                                      // 0000000082CC: 800F810F
	v_mov_b32_e32 v253, v131                                   // 0000000082D0: 7FFA0383
	v_mov_b32_e32 v251, v130                                   // 0000000082D4: 7FF60382
	v_mov_b32_e32 v252, v129                                   // 0000000082D8: 7FF80381
	s_branch 62835                                             // 0000000082DC: BF82F573 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3dac>
	s_cmp_eq_u32 s15, s35                                      // 0000000082E0: BF06230F
	s_cbranch_scc0 429                                         // 0000000082E4: BF8401AD <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6e9c>
	s_setprio 0                                                // 0000000082E8: BF8F0000
	v_fma_f32 v128, v112, v239, v152                           // 0000000082EC: D1CB0080 0663DF70
	v_fma_f32 v132, v96, v239, v152                            // 0000000082F4: D1CB0084 0663DF60
	v_fma_f32 v136, v116, v239, v152                           // 0000000082FC: D1CB0088 0663DF74
	v_fma_f32 v140, v100, v239, v152                           // 000000008304: D1CB008C 0663DF64
	v_fma_f32 v144, v120, v239, v152                           // 00000000830C: D1CB0090 0663DF78
	v_fma_f32 v148, v104, v239, v152                           // 000000008314: D1CB0094 0663DF68
	v_fma_f32 v154, v124, v239, v152                           // 00000000831C: D1CB009A 0663DF7C
	v_fma_f32 v158, v108, v239, v152                           // 000000008324: D1CB009E 0663DF6C
	v_fma_f32 v162, v80, v239, v150                            // 00000000832C: D1CB00A2 065BDF50
	v_fma_f32 v166, v64, v239, v150                            // 000000008334: D1CB00A6 065BDF40
	v_fma_f32 v170, v84, v239, v150                            // 00000000833C: D1CB00AA 065BDF54
	v_fma_f32 v174, v68, v239, v150                            // 000000008344: D1CB00AE 065BDF44
	v_fma_f32 v178, v88, v239, v150                            // 00000000834C: D1CB00B2 065BDF58
	v_fma_f32 v182, v72, v239, v150                            // 000000008354: D1CB00B6 065BDF48
	v_fma_f32 v186, v92, v239, v150                            // 00000000835C: D1CB00BA 065BDF5C
	v_fma_f32 v190, v76, v239, v150                            // 000000008364: D1CB00BE 065BDF4C
	v_fma_f32 v129, v113, v239, v152                           // 00000000836C: D1CB0081 0663DF71
	v_fma_f32 v133, v97, v239, v152                            // 000000008374: D1CB0085 0663DF61
	v_fma_f32 v137, v117, v239, v152                           // 00000000837C: D1CB0089 0663DF75
	v_fma_f32 v141, v101, v239, v152                           // 000000008384: D1CB008D 0663DF65
	v_fma_f32 v145, v121, v239, v152                           // 00000000838C: D1CB0091 0663DF79
	v_fma_f32 v149, v105, v239, v152                           // 000000008394: D1CB0095 0663DF69
	v_fma_f32 v155, v125, v239, v152                           // 00000000839C: D1CB009B 0663DF7D
	v_fma_f32 v159, v109, v239, v152                           // 0000000083A4: D1CB009F 0663DF6D
	v_fma_f32 v163, v81, v239, v150                            // 0000000083AC: D1CB00A3 065BDF51
	v_fma_f32 v167, v65, v239, v150                            // 0000000083B4: D1CB00A7 065BDF41
	v_fma_f32 v171, v85, v239, v150                            // 0000000083BC: D1CB00AB 065BDF55
	v_fma_f32 v175, v69, v239, v150                            // 0000000083C4: D1CB00AF 065BDF45
	v_fma_f32 v179, v89, v239, v150                            // 0000000083CC: D1CB00B3 065BDF59
	v_fma_f32 v183, v73, v239, v150                            // 0000000083D4: D1CB00B7 065BDF49
	v_fma_f32 v187, v93, v239, v150                            // 0000000083DC: D1CB00BB 065BDF5D
	v_fma_f32 v191, v77, v239, v150                            // 0000000083E4: D1CB00BF 065BDF4D
	v_cvt_pk_u8_f32 v128, v128, 0, 0                           // 0000000083EC: D1DD0080 02010180
	v_cvt_pk_u8_f32 v132, v132, 0, 0                           // 0000000083F4: D1DD0084 02010184
	v_cvt_pk_u8_f32 v136, v136, 0, 0                           // 0000000083FC: D1DD0088 02010188
	v_cvt_pk_u8_f32 v140, v140, 0, 0                           // 000000008404: D1DD008C 0201018C
	v_cvt_pk_u8_f32 v144, v144, 0, 0                           // 00000000840C: D1DD0090 02010190
	v_cvt_pk_u8_f32 v148, v148, 0, 0                           // 000000008414: D1DD0094 02010194
	v_cvt_pk_u8_f32 v154, v154, 0, 0                           // 00000000841C: D1DD009A 0201019A
	v_cvt_pk_u8_f32 v158, v158, 0, 0                           // 000000008424: D1DD009E 0201019E
	v_cvt_pk_u8_f32 v162, v162, 0, 0                           // 00000000842C: D1DD00A2 020101A2
	v_cvt_pk_u8_f32 v166, v166, 0, 0                           // 000000008434: D1DD00A6 020101A6
	v_cvt_pk_u8_f32 v170, v170, 0, 0                           // 00000000843C: D1DD00AA 020101AA
	v_cvt_pk_u8_f32 v174, v174, 0, 0                           // 000000008444: D1DD00AE 020101AE
	v_cvt_pk_u8_f32 v178, v178, 0, 0                           // 00000000844C: D1DD00B2 020101B2
	v_cvt_pk_u8_f32 v182, v182, 0, 0                           // 000000008454: D1DD00B6 020101B6
	v_cvt_pk_u8_f32 v186, v186, 0, 0                           // 00000000845C: D1DD00BA 020101BA
	v_cvt_pk_u8_f32 v190, v190, 0, 0                           // 000000008464: D1DD00BE 020101BE
	v_fma_f32 v130, v114, v239, v152                           // 00000000846C: D1CB0082 0663DF72
	v_fma_f32 v134, v98, v239, v152                            // 000000008474: D1CB0086 0663DF62
	v_fma_f32 v138, v118, v239, v152                           // 00000000847C: D1CB008A 0663DF76
	v_fma_f32 v142, v102, v239, v152                           // 000000008484: D1CB008E 0663DF66
	v_fma_f32 v146, v122, v239, v152                           // 00000000848C: D1CB0092 0663DF7A
	v_fma_f32 v151, v106, v239, v152                           // 000000008494: D1CB0097 0663DF6A
	v_fma_f32 v156, v126, v239, v152                           // 00000000849C: D1CB009C 0663DF7E
	v_fma_f32 v160, v110, v239, v152                           // 0000000084A4: D1CB00A0 0663DF6E
	v_fma_f32 v164, v82, v239, v150                            // 0000000084AC: D1CB00A4 065BDF52
	v_fma_f32 v168, v66, v239, v150                            // 0000000084B4: D1CB00A8 065BDF42
	v_fma_f32 v172, v86, v239, v150                            // 0000000084BC: D1CB00AC 065BDF56
	v_fma_f32 v176, v70, v239, v150                            // 0000000084C4: D1CB00B0 065BDF46
	v_fma_f32 v180, v90, v239, v150                            // 0000000084CC: D1CB00B4 065BDF5A
	v_fma_f32 v184, v74, v239, v150                            // 0000000084D4: D1CB00B8 065BDF4A
	v_fma_f32 v188, v94, v239, v150                            // 0000000084DC: D1CB00BC 065BDF5E
	v_fma_f32 v208, v78, v239, v150                            // 0000000084E4: D1CB00D0 065BDF4E
	v_cvt_pk_u8_f32 v128, v129, 1, v128                        // 0000000084EC: D1DD0080 06010381
	v_cvt_pk_u8_f32 v129, v133, 1, v132                        // 0000000084F4: D1DD0081 06110385
	v_cvt_pk_u8_f32 v132, v137, 1, v136                        // 0000000084FC: D1DD0084 06210389
	v_cvt_pk_u8_f32 v133, v141, 1, v140                        // 000000008504: D1DD0085 0631038D
	v_cvt_pk_u8_f32 v136, v145, 1, v144                        // 00000000850C: D1DD0088 06410391
	v_cvt_pk_u8_f32 v137, v149, 1, v148                        // 000000008514: D1DD0089 06510395
	v_cvt_pk_u8_f32 v140, v155, 1, v154                        // 00000000851C: D1DD008C 0669039B
	v_cvt_pk_u8_f32 v141, v159, 1, v158                        // 000000008524: D1DD008D 0679039F
	v_cvt_pk_u8_f32 v144, v163, 1, v162                        // 00000000852C: D1DD0090 068903A3
	v_cvt_pk_u8_f32 v145, v167, 1, v166                        // 000000008534: D1DD0091 069903A7
	v_cvt_pk_u8_f32 v148, v171, 1, v170                        // 00000000853C: D1DD0094 06A903AB
	v_cvt_pk_u8_f32 v149, v175, 1, v174                        // 000000008544: D1DD0095 06B903AF
	v_cvt_pk_u8_f32 v154, v179, 1, v178                        // 00000000854C: D1DD009A 06C903B3
	v_cvt_pk_u8_f32 v155, v183, 1, v182                        // 000000008554: D1DD009B 06D903B7
	v_cvt_pk_u8_f32 v158, v187, 1, v186                        // 00000000855C: D1DD009E 06E903BB
	v_cvt_pk_u8_f32 v159, v191, 1, v190                        // 000000008564: D1DD009F 06F903BF
	v_fma_f32 v131, v115, v239, v152                           // 00000000856C: D1CB0083 0663DF73
	v_fma_f32 v135, v99, v239, v152                            // 000000008574: D1CB0087 0663DF63
	v_fma_f32 v139, v119, v239, v152                           // 00000000857C: D1CB008B 0663DF77
	v_fma_f32 v143, v103, v239, v152                           // 000000008584: D1CB008F 0663DF67
	v_fma_f32 v147, v123, v239, v152                           // 00000000858C: D1CB0093 0663DF7B
	v_fma_f32 v153, v107, v239, v152                           // 000000008594: D1CB0099 0663DF6B
	v_fma_f32 v157, v127, v239, v152                           // 00000000859C: D1CB009D 0663DF7F
	v_fma_f32 v161, v111, v239, v152                           // 0000000085A4: D1CB00A1 0663DF6F
	v_fma_f32 v165, v83, v239, v150                            // 0000000085AC: D1CB00A5 065BDF53
	v_fma_f32 v169, v67, v239, v150                            // 0000000085B4: D1CB00A9 065BDF43
	v_fma_f32 v173, v87, v239, v150                            // 0000000085BC: D1CB00AD 065BDF57
	v_fma_f32 v177, v71, v239, v150                            // 0000000085C4: D1CB00B1 065BDF47
	v_fma_f32 v181, v91, v239, v150                            // 0000000085CC: D1CB00B5 065BDF5B
	v_fma_f32 v185, v75, v239, v150                            // 0000000085D4: D1CB00B9 065BDF4B
	v_fma_f32 v189, v95, v239, v150                            // 0000000085DC: D1CB00BD 065BDF5F
	v_fma_f32 v209, v79, v239, v150                            // 0000000085E4: D1CB00D1 065BDF4F
	v_cvt_pk_u8_f32 v128, v130, 2, v128                        // 0000000085EC: D1DD0080 06010582
	v_cvt_pk_u8_f32 v129, v134, 2, v129                        // 0000000085F4: D1DD0081 06050586
	v_cvt_pk_u8_f32 v130, v138, 2, v132                        // 0000000085FC: D1DD0082 0611058A
	v_cvt_pk_u8_f32 v132, v142, 2, v133                        // 000000008604: D1DD0084 0615058E
	v_cvt_pk_u8_f32 v133, v146, 2, v136                        // 00000000860C: D1DD0085 06210592
	v_cvt_pk_u8_f32 v134, v151, 2, v137                        // 000000008614: D1DD0086 06250597
	v_cvt_pk_u8_f32 v146, v156, 2, v140                        // 00000000861C: D1DD0092 0631059C
	v_cvt_pk_u8_f32 v151, v160, 2, v141                        // 000000008624: D1DD0097 063505A0
	v_cvt_pk_u8_f32 v144, v164, 2, v144                        // 00000000862C: D1DD0090 064105A4
	v_cvt_pk_u8_f32 v145, v168, 2, v145                        // 000000008634: D1DD0091 064505A8
	v_cvt_pk_u8_f32 v148, v172, 2, v148                        // 00000000863C: D1DD0094 065105AC
	v_cvt_pk_u8_f32 v149, v176, 2, v149                        // 000000008644: D1DD0095 065505B0
	v_cvt_pk_u8_f32 v154, v180, 2, v154                        // 00000000864C: D1DD009A 066905B4
	v_cvt_pk_u8_f32 v155, v184, 2, v155                        // 000000008654: D1DD009B 066D05B8
	v_cvt_pk_u8_f32 v156, v188, 2, v158                        // 00000000865C: D1DD009C 067905BC
	v_cvt_pk_u8_f32 v158, v208, 2, v159                        // 000000008664: D1DD009E 067D05D0
	v_cvt_pk_u8_f32 v136, v131, 3, v128                        // 00000000866C: D1DD0088 06010783
	v_cvt_pk_u8_f32 v140, v135, 3, v129                        // 000000008674: D1DD008C 06050787
	v_cvt_pk_u8_f32 v137, v139, 3, v130                        // 00000000867C: D1DD0089 0609078B
	v_cvt_pk_u8_f32 v141, v143, 3, v132                        // 000000008684: D1DD008D 0611078F
	v_cvt_pk_u8_f32 v138, v147, 3, v133                        // 00000000868C: D1DD008A 06150793
	v_cvt_pk_u8_f32 v142, v153, 3, v134                        // 000000008694: D1DD008E 06190799
	v_cvt_pk_u8_f32 v139, v157, 3, v146                        // 00000000869C: D1DD008B 0649079D
	v_cvt_pk_u8_f32 v143, v161, 3, v151                        // 0000000086A4: D1DD008F 065D07A1
	v_cvt_pk_u8_f32 v128, v165, 3, v144                        // 0000000086AC: D1DD0080 064107A5
	v_cvt_pk_u8_f32 v132, v169, 3, v145                        // 0000000086B4: D1DD0084 064507A9
	v_cvt_pk_u8_f32 v129, v173, 3, v148                        // 0000000086BC: D1DD0081 065107AD
	v_cvt_pk_u8_f32 v133, v177, 3, v149                        // 0000000086C4: D1DD0085 065507B1
	v_cvt_pk_u8_f32 v130, v181, 3, v154                        // 0000000086CC: D1DD0082 066907B5
	v_cvt_pk_u8_f32 v134, v185, 3, v155                        // 0000000086D4: D1DD0086 066D07B9
	v_cvt_pk_u8_f32 v131, v189, 3, v156                        // 0000000086DC: D1DD0083 067107BD
	v_cvt_pk_u8_f32 v135, v209, 3, v158                        // 0000000086E4: D1DD0087 067907D1
	s_barrier                                                  // 0000000086EC: BF8A0000
	s_setprio 1                                                // 0000000086F0: BF8F0001
	s_waitcnt vmcnt(0)                                         // 0000000086F4: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[144:147], v[192:199], v[136:143], 0// 0000000086F8: D3AD0090 020311C0
	v_mfma_f32_16x16x128_f8f6f4 v[146:149], v[192:199], v[128:135], 0// 000000008700: D3AD0092 020301C0
	s_add_u32 s17, s35, s10                                    // 000000008708: 80110A23
	s_bfe_u32 s18, s17, 0x10001                                // 00000000870C: 9292FF11 00010001
	s_and_b32 s15, s17, 3                                      // 000000008714: 860F8311
	s_lshl_b32 s22, s18, 15                                    // 000000008718: 8E168F12
	s_bitcmp1_b32 s17, 0                                       // 00000000871C: BF0D8011
	s_cselect_b64 s[18:19], -1, 0                              // 000000008720: 859280C1
	s_and_b64 s[20:21], s[18:19], exec                         // 000000008724: 86947E12
	s_cselect_b32 s17, s93, 0x10000                            // 000000008728: 8511FF5D 00010000
	s_or_b32 s20, s22, s17                                     // 000000008730: 87141116
	v_or_b32_e32 v145, s20, v245                               // 000000008734: 2923EA14
	v_add_u32_e32 v145, v145, v244                             // 000000008738: 6923E991
	ds_read_b64_tr_b8 v[154:155], v145                         // 00000000873C: D9C40000 9A000091
	ds_read_b64_tr_b8 v[156:157], v145 offset:1024             // 000000008744: D9C40400 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:2048             // 00000000874C: D9C40800 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:3072             // 000000008754: D9C40C00 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:256              // 00000000875C: D9C40100 A2000091
	ds_read_b64_tr_b8 v[164:165], v145 offset:1280             // 000000008764: D9C40500 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:2304             // 00000000876C: D9C40900 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:3328             // 000000008774: D9C40D00 A8000091
	s_waitcnt lgkmcnt(4)                                       // 00000000877C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[154:161], v[136:143], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000008780: D3AC0000 0003F7F2 D3AE0830 04C3119A
	s_waitcnt lgkmcnt(0)                                       // 000000008790: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[162:169], v[136:143], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000008794: D3AC0000 0003F7F2 D3AE0820 048311A2
	ds_read_b64_tr_b8 v[154:155], v145 offset:512              // 0000000087A4: D9C40200 9A000091
	ds_read_b64_tr_b8 v[156:157], v145 offset:1536             // 0000000087AC: D9C40600 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:2560             // 0000000087B4: D9C40A00 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:3584             // 0000000087BC: D9C40E00 A0000091
	s_waitcnt lgkmcnt(0)                                       // 0000000087C4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[154:161], v[136:143], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 0000000087C8: D3AC0000 0003F7F2 D3AE0810 0443119A
	ds_read_b64_tr_b8 v[162:163], v145 offset:768              // 0000000087D8: D9C40300 A2000091
	ds_read_b64_tr_b8 v[164:165], v145 offset:1792             // 0000000087E0: D9C40700 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:2816             // 0000000087E8: D9C40B00 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:3840             // 0000000087F0: D9C40F00 A8000091
	s_waitcnt lgkmcnt(0)                                       // 0000000087F8: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[162:169], v[136:143], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 0000000087FC: D3AC0000 0003F7F2 D3AE0800 040311A2
	ds_read_b64_tr_b8 v[154:155], v145 offset:4096             // 00000000880C: D9C41000 9A000091
	ds_read_b64_tr_b8 v[156:157], v145 offset:5120             // 000000008814: D9C41400 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:6144             // 00000000881C: D9C41800 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:7168             // 000000008824: D9C41C00 A0000091
	s_waitcnt lgkmcnt(0)                                       // 00000000882C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[154:161], v[128:135], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000008830: D3AC0000 0003FBF2 D3AE0830 04C3019A
	ds_read_b64_tr_b8 v[136:137], v145 offset:4352             // 000000008840: D9C41100 88000091
	ds_read_b64_tr_b8 v[138:139], v145 offset:5376             // 000000008848: D9C41500 8A000091
	ds_read_b64_tr_b8 v[140:141], v145 offset:6400             // 000000008850: D9C41900 8C000091
	ds_read_b64_tr_b8 v[142:143], v145 offset:7424             // 000000008858: D9C41D00 8E000091
	s_waitcnt lgkmcnt(0)                                       // 000000008860: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[136:143], v[128:135], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000008864: D3AC0000 0003FBF2 D3AE0820 04830188
	ds_read_b64_tr_b8 v[154:155], v145 offset:4608             // 000000008874: D9C41200 9A000091
	ds_read_b64_tr_b8 v[156:157], v145 offset:5632             // 00000000887C: D9C41600 9C000091
	ds_read_b64_tr_b8 v[158:159], v145 offset:6656             // 000000008884: D9C41A00 9E000091
	ds_read_b64_tr_b8 v[160:161], v145 offset:7680             // 00000000888C: D9C41E00 A0000091
	ds_read_b64_tr_b8 v[162:163], v145 offset:4864             // 000000008894: D9C41300 A2000091
	ds_read_b64_tr_b8 v[164:165], v145 offset:5888             // 00000000889C: D9C41700 A4000091
	ds_read_b64_tr_b8 v[166:167], v145 offset:6912             // 0000000088A4: D9C41B00 A6000091
	ds_read_b64_tr_b8 v[168:169], v145 offset:7936             // 0000000088AC: D9C41F00 A8000091
	s_add_u32 s20, s35, 4                                      // 0000000088B4: 80148423
	s_cmp_ge_u32 s20, s91                                      // 0000000088B8: BF095B14
	s_cbranch_scc1 16                                          // 0000000088BC: BF850010 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6e00>
	s_and_b64 s[18:19], s[18:19], exec                         // 0000000088C0: 86927E12
	s_cselect_b32 s18, 0x4000, 0                               // 0000000088C4: 851280FF 00004000
	s_add_u32 s18, s22, s18                                    // 0000000088CC: 80121216
	s_add_u32 s18, s18, s88                                    // 0000000088D0: 80125812
	s_mul_i32 s20, s20, s8                                     // 0000000088D4: 92140814
	s_lshl_b32 s19, s20, 7                                     // 0000000088D8: 8E138714
	s_mov_b32 m0, s18                                          // 0000000088DC: BEFC0012
	s_nop 0                                                    // 0000000088E0: BF800000
	buffer_load_dwordx4 v233, s[84:87], s19 offen lds          // 0000000088E4: E05D1000 131500E9
	s_add_u32 m0, s18, 0x2000                                  // 0000000088EC: 807CFF12 00002000
	s_nop 0                                                    // 0000000088F4: BF800000
	buffer_load_dwordx4 v234, s[84:87], s19 offen lds          // 0000000088F8: E05D1000 131500EA
	s_add_u32 s18, s35, 2                                      // 000000008900: 80128223
	s_cmp_ge_u32 s18, s91                                      // 000000008904: BF095B12
	s_cbranch_scc1 17                                          // 000000008908: BF850011 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6e50>
	s_not_b32 s15, s15                                         // 00000000890C: BE8F040F
	s_lshl_b32 s15, s15, 14                                    // 000000008910: 8E0F8E0F
	s_and_b32 s15, s15, 0x8000                                 // 000000008914: 860FFF0F 00008000
	s_add_u32 s15, s15, s17                                    // 00000000891C: 800F110F
	s_add_u32 s15, s15, s88                                    // 000000008920: 800F580F
	s_mul_i32 s18, s18, s8                                     // 000000008924: 92120812
	s_lshl_b32 s17, s18, 7                                     // 000000008928: 8E118712
	s_mov_b32 m0, s15                                          // 00000000892C: BEFC000F
	s_nop 0                                                    // 000000008930: BF800000
	buffer_load_dwordx4 v235, s[80:83], s17 offen lds          // 000000008934: E05D1000 111400EB
	s_add_u32 m0, s15, 0x2000                                  // 00000000893C: 807CFF0F 00002000
	s_nop 0                                                    // 000000008944: BF800000
	buffer_load_dwordx4 v236, s[80:83], s17 offen lds          // 000000008948: E05D1000 111400EC
	s_waitcnt lgkmcnt(4)                                       // 000000008950: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[154:161], v[128:135], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000008954: D3AC0000 0003FBF2 D3AE0810 0443019A
	v_lshlrev_b32_e32 v136, 23, v251                           // 000000008964: 2511F697
	v_lshlrev_b32_e32 v137, 23, v253                           // 000000008968: 2513FA97
	v_mul_f32_e32 v136, v144, v136                             // 00000000896C: 0B111190
	v_mul_f32_e32 v137, v146, v137                             // 000000008970: 0B131392
	v_add_f32_e32 v136, v250, v136                             // 000000008974: 031111FA
	v_add_f32_e32 v250, v136, v137                             // 000000008978: 03F51388
	s_waitcnt lgkmcnt(0)                                       // 00000000897C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[162:169], v[128:135], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000008980: D3AC0000 0003FBF2 D3AE0800 040301A2
	s_barrier                                                  // 000000008990: BF8A0000
	s_add_u32 s15, s35, 1                                      // 000000008994: 800F8123
	s_branch 62404                                             // 000000008998: BF82F3C4 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3dac>
	s_barrier                                                  // 00000000899C: BF8A0000
	s_waitcnt vmcnt(0)                                         // 0000000089A0: BF8C0F70
	s_add_u32 s17, s15, 4                                      // 0000000089A4: 8011840F
	s_cmp_ge_u32 s17, s91                                      // 0000000089A8: BF095B11
	s_cbranch_scc1 19                                          // 0000000089AC: BF850013 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6efc>
	s_add_u32 s18, s15, s10                                    // 0000000089B0: 80120A0F
	s_and_b32 s19, s18, 2                                      // 0000000089B4: 86138212
	s_lshl_b32 s19, s19, 14                                    // 0000000089B8: 8E138E13
	s_bitcmp1_b32 s18, 0                                       // 0000000089BC: BF0D8012
	s_cselect_b32 s18, 0x4000, 0                               // 0000000089C0: 851280FF 00004000
	s_or_b32 s18, s19, s18                                     // 0000000089C8: 87121213
	s_or_b32 s18, s18, s88                                     // 0000000089CC: 87125812
	s_mul_i32 s17, s17, s8                                     // 0000000089D0: 92110811
	s_lshl_b32 s17, s17, 7                                     // 0000000089D4: 8E118711
	s_mov_b32 m0, s18                                          // 0000000089D8: BEFC0012
	s_nop 0                                                    // 0000000089DC: BF800000
	buffer_load_dwordx4 v233, s[84:87], s17 offen lds          // 0000000089E0: E05D1000 111500E9
	s_or_b32 m0, s18, 0x2000                                   // 0000000089E8: 877CFF12 00002000
	s_nop 0                                                    // 0000000089F0: BF800000
	buffer_load_dwordx4 v234, s[84:87], s17 offen lds          // 0000000089F4: E05D1000 111500EA
	s_add_u32 s17, s15, 2                                      // 0000000089FC: 8011820F
	s_cmp_ge_u32 s17, s91                                      // 000000008A00: BF095B11
	s_cbranch_scc1 19                                          // 000000008A04: BF850013 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6f54>
	s_add_u32 s18, s15, s10                                    // 000000008A08: 80120A0F
	s_andn2_b32 s19, 2, s18                                    // 000000008A0C: 89131282
	s_lshl_b32 s19, s19, 14                                    // 000000008A10: 8E138E13
	s_bitcmp1_b32 s18, 0                                       // 000000008A14: BF0D8012
	s_cselect_b32 s18, s93, 0x10000                            // 000000008A18: 8512FF5D 00010000
	s_or_b32 s18, s19, s18                                     // 000000008A20: 87121213
	s_or_b32 s18, s18, s88                                     // 000000008A24: 87125812
	s_mul_i32 s17, s17, s8                                     // 000000008A28: 92110811
	s_lshl_b32 s17, s17, 7                                     // 000000008A2C: 8E118711
	s_mov_b32 m0, s18                                          // 000000008A30: BEFC0012
	s_nop 0                                                    // 000000008A34: BF800000
	buffer_load_dwordx4 v235, s[80:83], s17 offen lds          // 000000008A38: E05D1000 111400EB
	s_add_u32 m0, s18, 0x2000                                  // 000000008A40: 807CFF12 00002000
	s_nop 0                                                    // 000000008A48: BF800000
	buffer_load_dwordx4 v236, s[80:83], s17 offen lds          // 000000008A4C: E05D1000 111400EC
	s_barrier                                                  // 000000008A54: BF8A0000
	s_add_u32 s15, s15, 1                                      // 000000008A58: 800F810F
	s_branch 62355                                             // 000000008A5C: BF82F393 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3dac>
	s_cmp_ge_u32 s35, s15                                      // 000000008A60: BF090F23
	s_cbranch_scc1 394                                         // 000000008A64: BF85018A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7590>
	s_waitcnt vmcnt(0)                                         // 000000008A68: BF8C0F70
	s_barrier                                                  // 000000008A6C: BF8A0000
	s_cmp_lg_u32 s11, 0                                        // 000000008A70: BF07800B
	s_cselect_b64 s[18:19], -1, 0                              // 000000008A74: 859280C1
	s_not_b32 s11, s94                                         // 000000008A78: BE8B045E
	s_add_u32 s11, s4, s11                                     // 000000008A7C: 800B0B04
	s_cmp_eq_u32 s94, s11                                      // 000000008A80: BF060B5E
	s_cselect_b64 s[22:23], -1, 0                              // 000000008A84: 859680C1
	s_or_b64 s[18:19], s[18:19], s[22:23]                      // 000000008A88: 87921612
	s_mov_b64 s[20:21], -1                                     // 000000008A8C: BE9401C1
	s_and_b64 s[22:23], s[18:19], exec                         // 000000008A90: 86967E12
	s_mov_b32 s26, 1                                           // 000000008A94: BE9A0081
	s_cbranch_scc0 7                                           // 000000008A98: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6fb8>
	s_add_u32 s2, s2, s14                                      // 000000008A9C: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000008AA0: BF093302
	s_mov_b32 s26, 0                                           // 000000008AA4: BE9A0080
	s_cbranch_scc1 933                                         // 000000008AA8: BF8503A5 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7e40>
	s_lshl_b32 s11, s2, 5                                      // 000000008AAC: 8E0B8502
	s_load_dwordx8 s[68:75], s[46:47], s11 offset:0x0          // 000000008AB0: C00E5117 16000000
	s_add_u32 s15, s91, s10                                    // 000000008AB8: 800F0A5B
	s_and_b32 s11, s15, 3                                      // 000000008ABC: 860B830F
	s_and_b64 s[20:21], s[20:21], exec                         // 000000008AC0: 86947E14
	s_cbranch_scc0 931                                         // 000000008AC4: BF8403A3 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7e54>
	s_waitcnt lgkmcnt(0)                                       // 000000008AC8: BF8CC07F
	s_add_u32 s76, s38, s72                                    // 000000008ACC: 804C4826
	s_addc_u32 s77, s39, s73                                   // 000000008AD0: 824D4927
	s_add_u32 s80, s40, s72                                    // 000000008AD4: 80504828
	s_addc_u32 s81, s41, s73                                   // 000000008AD8: 82514929
	s_not_b32 s10, s68                                         // 000000008ADC: BE8A0444
	s_add_u32 s10, s4, s10                                     // 000000008AE0: 800A0A04
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008AE4: 86927E12
	s_cselect_b32 s10, s10, s68                                // 000000008AE8: 850A440A
	s_lshl_b32 s17, s10, 5                                     // 000000008AEC: 8E11850A
	s_add_u32 s17, s17, 32                                     // 000000008AF0: 8011A011
	s_mul_i32 s17, s17, s5                                     // 000000008AF4: 92110511
	s_addk_i32 s17, 0x60                                       // 000000008AF8: B7110060
	s_lshr_b32 s17, s17, 7                                     // 000000008AFC: 8F118711
	v_readlane_b32 s18, v255, 1                                // 000000008B00: D2890012 000103FF
	s_min_u32 s91, s18, s17                                    // 000000008B08: 83DB1112
	v_readlane_b32 s18, v255, 10                               // 000000008B0C: D2890012 000115FF
	v_readlane_b32 s19, v255, 11                               // 000000008B14: D2890013 000117FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008B1C: 86927E12
	s_cbranch_scc0 90                                          // 000000008B20: BF84005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x718c>
	s_lshl_b32 s17, s11, 14                                    // 000000008B24: 8E118E0B
	s_and_b32 s17, s17, 0x8000                                 // 000000008B28: 8611FF11 00008000
	s_bitcmp1_b32 s15, 0                                       // 000000008B30: BF0D800F
	s_cselect_b32 s15, 0x4000, 0                               // 000000008B34: 850F80FF 00004000
	s_cselect_b32 s18, s93, 0x10000                            // 000000008B3C: 8512FF5D 00010000
	s_or_b32 s15, s17, s15                                     // 000000008B44: 870F0F11
	s_or_b32 s15, s15, s88                                     // 000000008B48: 870F580F
	s_mov_b32 m0, s15                                          // 000000008B4C: BEFC000F
	s_or_b32 s17, s17, s18                                     // 000000008B50: 87111211
	buffer_load_dwordx4 v233, s[76:79], 0 offen lds            // 000000008B54: E05D1000 801300E9
	s_add_u32 m0, s15, 0x1000                                  // 000000008B5C: 807CFF0F 00001000
	v_readlane_b32 s18, v255, 14                               // 000000008B64: D2890012 00011DFF
	s_or_b32 s17, s17, s88                                     // 000000008B6C: 87115811
	s_mov_b32 s82, s78                                         // 000000008B70: BED2004E
	s_mov_b32 s83, s79                                         // 000000008B74: BED3004F
	s_nop 1                                                    // 000000008B78: BF800001
	buffer_load_dwordx4 v233, s[76:79], s18 offen lds          // 000000008B7C: E05D1000 121300E9
	s_or_b32 m0, s15, 0x2000                                   // 000000008B84: 877CFF0F 00002000
	v_readlane_b32 s18, v255, 15                               // 000000008B8C: D2890012 00011FFF
	s_nop 4                                                    // 000000008B94: BF800004
	buffer_load_dwordx4 v233, s[76:79], s18 offen lds          // 000000008B98: E05D1000 121300E9
	s_add_u32 m0, s15, 0x3000                                  // 000000008BA0: 807CFF0F 00003000
	s_mul_i32 s15, s8, 0x60                                    // 000000008BA8: 920FFF08 00000060
	buffer_load_dwordx4 v233, s[76:79], s15 offen lds          // 000000008BB0: E05D1000 0F1300E9
	s_mov_b32 m0, s17                                          // 000000008BB8: BEFC0011
	v_readlane_b32 s15, v255, 16                               // 000000008BBC: D289000F 000121FF
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 000000008BC4: E05D1000 801400EB
	s_add_u32 m0, s17, 0x1000                                  // 000000008BCC: 807CFF11 00001000
	s_nop 0                                                    // 000000008BD4: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000008BD8: E05D1000 121400EB
	s_or_b32 m0, s17, 0x2000                                   // 000000008BE0: 877CFF11 00002000
	s_nop 0                                                    // 000000008BE8: BF800000
	buffer_load_dwordx4 v235, s[80:83], s15 offen lds          // 000000008BEC: E05D1000 0F1400EB
	s_add_u32 m0, s17, 0x3000                                  // 000000008BF4: 807CFF11 00003000
	s_mul_i32 s15, s8, 0x44                                    // 000000008BFC: 920FFF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s15 offen lds          // 000000008C04: E05D1000 0F1400EB
	s_cmp_lt_u32 s91, 2                                        // 000000008C0C: BF0A825B
	s_cbranch_scc1 30                                          // 000000008C10: BF85001E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x718c>
	s_add_u32 s15, s11, 1                                      // 000000008C14: 800F810B
	s_and_b32 s17, s15, 2                                      // 000000008C18: 8611820F
	s_lshl_b32 s17, s17, 14                                    // 000000008C1C: 8E118E11
	s_bitcmp1_b32 s15, 0                                       // 000000008C20: BF0D800F
	s_cselect_b32 s15, 0x4000, 0                               // 000000008C24: 850F80FF 00004000
	s_or_b32 s15, s17, s15                                     // 000000008C2C: 870F0F11
	s_or_b32 s15, s15, s88                                     // 000000008C30: 870F580F
	s_mov_b32 m0, s15                                          // 000000008C34: BEFC000F
	s_mul_i32 s17, s8, 0xa0                                    // 000000008C38: 9211FF08 000000A0
	buffer_load_dwordx4 v233, s[76:79], s33 offen lds          // 000000008C40: E05D1000 211300E9
	s_add_u32 m0, s15, 0x1000                                  // 000000008C48: 807CFF0F 00001000
	s_nop 0                                                    // 000000008C50: BF800000
	buffer_load_dwordx4 v233, s[76:79], s17 offen lds          // 000000008C54: E05D1000 111300E9
	s_or_b32 m0, s15, 0x2000                                   // 000000008C5C: 877CFF0F 00002000
	s_mul_i32 s17, s8, 0xc0                                    // 000000008C64: 9211FF08 000000C0
	buffer_load_dwordx4 v233, s[76:79], s17 offen lds          // 000000008C6C: E05D1000 111300E9
	s_add_u32 m0, s15, 0x3000                                  // 000000008C74: 807CFF0F 00003000
	s_mul_i32 s15, s8, 0xe0                                    // 000000008C7C: 920FFF08 000000E0
	buffer_load_dwordx4 v233, s[76:79], s15 offen lds          // 000000008C84: E05D1000 0F1300E9
	v_readlane_b32 s15, v255, 6                                // 000000008C8C: D289000F 00010DFF
	s_add_u32 s22, s15, s70                                    // 000000008C94: 8016460F
	v_readlane_b32 s15, v255, 7                                // 000000008C98: D289000F 00010FFF
	s_addc_u32 s23, s15, s71                                   // 000000008CA0: 8217470F
	v_readlane_b32 s15, v255, 8                                // 000000008CA4: D289000F 000111FF
	s_mov_b32 s18, s69                                         // 000000008CAC: BE920045
	s_mov_b32 s19, s16                                         // 000000008CB0: BE930010
	s_add_u32 s20, s15, s74                                    // 000000008CB4: 80144A0F
	v_readlane_b32 s15, v255, 9                                // 000000008CB8: D289000F 000113FF
	s_addc_u32 s21, s15, s75                                   // 000000008CC0: 82154B0F
	s_lshl_b64 s[18:19], s[18:19], 2                           // 000000008CC4: 8E928212
	v_readlane_b32 s15, v255, 12                               // 000000008CC8: D289000F 000119FF
	s_add_u32 s15, s15, s18                                    // 000000008CD0: 800F120F
	v_readlane_b32 s17, v255, 13                               // 000000008CD4: D2890011 00011BFF
	s_addc_u32 s17, s17, s19                                   // 000000008CDC: 82111311
	v_readlane_b32 s18, v255, 2                                // 000000008CE0: D2890012 000105FF
	v_readlane_b32 s19, v255, 3                                // 000000008CE8: D2890013 000107FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008CF0: 86927E12
	s_mul_i32 s10, s10, s5                                     // 000000008CF4: 920A050A
	s_cselect_b32 s18, 0, s15                                  // 000000008CF8: 85120F80
	v_readlane_b32 s15, v255, 0                                // 000000008CFC: D289000F 000101FF
	s_cselect_b32 s19, 0, s17                                  // 000000008D04: 85131180
	s_add_u32 s10, s10, s15                                    // 000000008D08: 800A0F0A
	s_lshl_b32 s17, s10, 5                                     // 000000008D0C: 8E11850A
	v_or_b32_e32 v64, s17, v216                                // 000000008D10: 2881B011
	s_bfe_u32 s35, s10, 0x190002                               // 000000008D14: 92A3FF0A 00190002
	v_mul_lo_u32 v64, v64, s7                                  // 000000008D1C: D2850040 00000F40
	scratch_load_dword v65, off, off offset:36                 // 000000008D24: DC504024 417F0000
	s_waitcnt vmcnt(0)                                         // 000000008D2C: BF8C0F70
	v_add_u32_e32 v64, v65, v64                                // 000000008D30: 68808141
	global_load_dwordx4 v[220:223], v64, s[22:23]              // 000000008D34: DC5C8000 DC160040
	global_load_dwordx4 v[224:227], v64, s[22:23] offset:16    // 000000008D3C: DC5C8010 E0160040
	global_load_dwordx4 v[200:203], v64, s[22:23] offset:64    // 000000008D44: DC5C8040 C8160040
	global_load_dwordx4 v[204:207], v64, s[22:23] offset:80    // 000000008D4C: DC5C8050 CC160040
	s_mov_b32 s10, 0x110000                                    // 000000008D54: BE8A00FF 00110000
	s_mov_b32 s83, 0x110000                                    // 000000008D5C: BED300FF 00110000
	s_mov_b64 s[22:23], -1                                     // 000000008D64: BE9601C1
	s_mov_b32 s94, s68                                         // 000000008D68: BEDE0044
	v_writelane_b32 v255, s10, 17                              // 000000008D6C: D28A00FF 0001220A
	s_branch 1077                                              // 000000008D74: BF820435 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x834c>
	s_cmp_ge_u32 s35, s15                                      // 000000008D78: BF090F23
	s_cbranch_scc1 474                                         // 000000008D7C: BF8501DA <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x79e8>
	s_waitcnt vmcnt(0)                                         // 000000008D80: BF8C0F70
	s_barrier                                                  // 000000008D84: BF8A0000
	s_cmp_lg_u32 s11, 0                                        // 000000008D88: BF07800B
	s_cselect_b64 s[18:19], -1, 0                              // 000000008D8C: 859280C1
	s_not_b32 s11, s94                                         // 000000008D90: BE8B045E
	s_add_u32 s11, s4, s11                                     // 000000008D94: 800B0B04
	s_cmp_eq_u32 s94, s11                                      // 000000008D98: BF060B5E
	s_cselect_b64 s[22:23], -1, 0                              // 000000008D9C: 859680C1
	s_or_b64 s[18:19], s[18:19], s[22:23]                      // 000000008DA0: 87921612
	s_mov_b64 s[20:21], -1                                     // 000000008DA4: BE9401C1
	s_and_b64 s[22:23], s[18:19], exec                         // 000000008DA8: 86967E12
	s_mov_b32 s26, 1                                           // 000000008DAC: BE9A0081
	s_cbranch_scc0 7                                           // 000000008DB0: BF840007 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x72d0>
	s_add_u32 s2, s2, s14                                      // 000000008DB4: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000008DB8: BF093302
	s_mov_b32 s26, 0                                           // 000000008DBC: BE9A0080
	s_cbranch_scc1 745                                         // 000000008DC0: BF8502E9 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7e68>
	s_lshl_b32 s11, s2, 5                                      // 000000008DC4: 8E0B8502
	s_load_dwordx8 s[68:75], s[46:47], s11 offset:0x0          // 000000008DC8: C00E5117 16000000
	s_add_u32 s15, s91, s10                                    // 000000008DD0: 800F0A5B
	s_and_b32 s11, s15, 3                                      // 000000008DD4: 860B830F
	s_and_b64 s[20:21], s[20:21], exec                         // 000000008DD8: 86947E14
	s_cbranch_scc0 743                                         // 000000008DDC: BF8402E7 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7e7c>
	s_waitcnt lgkmcnt(0)                                       // 000000008DE0: BF8CC07F
	s_add_u32 s76, s38, s72                                    // 000000008DE4: 804C4826
	s_addc_u32 s77, s39, s73                                   // 000000008DE8: 824D4927
	s_add_u32 s80, s40, s72                                    // 000000008DEC: 80504828
	s_addc_u32 s81, s41, s73                                   // 000000008DF0: 82514929
	s_not_b32 s10, s68                                         // 000000008DF4: BE8A0444
	s_add_u32 s10, s4, s10                                     // 000000008DF8: 800A0A04
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008DFC: 86927E12
	s_cselect_b32 s10, s10, s68                                // 000000008E00: 850A440A
	s_lshl_b32 s17, s10, 5                                     // 000000008E04: 8E11850A
	s_add_u32 s17, s17, 32                                     // 000000008E08: 8011A011
	s_mul_i32 s17, s17, s5                                     // 000000008E0C: 92110511
	s_addk_i32 s17, 0x60                                       // 000000008E10: B7110060
	s_lshr_b32 s17, s17, 7                                     // 000000008E14: 8F118711
	v_readlane_b32 s18, v255, 1                                // 000000008E18: D2890012 000103FF
	s_min_u32 s91, s18, s17                                    // 000000008E20: 83DB1112
	v_readlane_b32 s18, v255, 10                               // 000000008E24: D2890012 000115FF
	v_readlane_b32 s19, v255, 11                               // 000000008E2C: D2890013 000117FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000008E34: 86927E12
	s_cbranch_scc0 90                                          // 000000008E38: BF84005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x74a4>
	s_lshl_b32 s17, s11, 14                                    // 000000008E3C: 8E118E0B
	s_and_b32 s17, s17, 0x8000                                 // 000000008E40: 8611FF11 00008000
	s_bitcmp1_b32 s15, 0                                       // 000000008E48: BF0D800F
	s_cselect_b32 s15, 0x4000, 0                               // 000000008E4C: 850F80FF 00004000
	s_cselect_b32 s18, s93, 0x10000                            // 000000008E54: 8512FF5D 00010000
	s_or_b32 s15, s17, s15                                     // 000000008E5C: 870F0F11
	s_or_b32 s15, s15, s88                                     // 000000008E60: 870F580F
	s_mov_b32 m0, s15                                          // 000000008E64: BEFC000F
	s_or_b32 s17, s17, s18                                     // 000000008E68: 87111211
	buffer_load_dwordx4 v233, s[76:79], 0 offen lds            // 000000008E6C: E05D1000 801300E9
	s_add_u32 m0, s15, 0x1000                                  // 000000008E74: 807CFF0F 00001000
	v_readlane_b32 s18, v255, 14                               // 000000008E7C: D2890012 00011DFF
	s_or_b32 s17, s17, s88                                     // 000000008E84: 87115811
	s_mov_b32 s82, s78                                         // 000000008E88: BED2004E
	s_mov_b32 s83, s79                                         // 000000008E8C: BED3004F
	s_nop 1                                                    // 000000008E90: BF800001
	buffer_load_dwordx4 v233, s[76:79], s18 offen lds          // 000000008E94: E05D1000 121300E9
	s_or_b32 m0, s15, 0x2000                                   // 000000008E9C: 877CFF0F 00002000
	v_readlane_b32 s18, v255, 15                               // 000000008EA4: D2890012 00011FFF
	s_nop 4                                                    // 000000008EAC: BF800004
	buffer_load_dwordx4 v233, s[76:79], s18 offen lds          // 000000008EB0: E05D1000 121300E9
	s_add_u32 m0, s15, 0x3000                                  // 000000008EB8: 807CFF0F 00003000
	s_mul_i32 s15, s8, 0x60                                    // 000000008EC0: 920FFF08 00000060
	buffer_load_dwordx4 v233, s[76:79], s15 offen lds          // 000000008EC8: E05D1000 0F1300E9
	s_mov_b32 m0, s17                                          // 000000008ED0: BEFC0011
	v_readlane_b32 s15, v255, 16                               // 000000008ED4: D289000F 000121FF
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 000000008EDC: E05D1000 801400EB
	s_add_u32 m0, s17, 0x1000                                  // 000000008EE4: 807CFF11 00001000
	s_nop 0                                                    // 000000008EEC: BF800000
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000008EF0: E05D1000 121400EB
	s_or_b32 m0, s17, 0x2000                                   // 000000008EF8: 877CFF11 00002000
	s_nop 0                                                    // 000000008F00: BF800000
	buffer_load_dwordx4 v235, s[80:83], s15 offen lds          // 000000008F04: E05D1000 0F1400EB
	s_add_u32 m0, s17, 0x3000                                  // 000000008F0C: 807CFF11 00003000
	s_mul_i32 s15, s8, 0x44                                    // 000000008F14: 920FFF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s15 offen lds          // 000000008F1C: E05D1000 0F1400EB
	s_cmp_lt_u32 s91, 2                                        // 000000008F24: BF0A825B
	s_cbranch_scc1 30                                          // 000000008F28: BF85001E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x74a4>
	s_add_u32 s15, s11, 1                                      // 000000008F2C: 800F810B
	s_and_b32 s17, s15, 2                                      // 000000008F30: 8611820F
	s_lshl_b32 s17, s17, 14                                    // 000000008F34: 8E118E11
	s_bitcmp1_b32 s15, 0                                       // 000000008F38: BF0D800F
	s_cselect_b32 s15, 0x4000, 0                               // 000000008F3C: 850F80FF 00004000
	s_or_b32 s15, s17, s15                                     // 000000008F44: 870F0F11
	s_or_b32 s15, s15, s88                                     // 000000008F48: 870F580F
	s_mov_b32 m0, s15                                          // 000000008F4C: BEFC000F
	s_mul_i32 s17, s8, 0xa0                                    // 000000008F50: 9211FF08 000000A0
	buffer_load_dwordx4 v233, s[76:79], s33 offen lds          // 000000008F58: E05D1000 211300E9
	s_add_u32 m0, s15, 0x1000                                  // 000000008F60: 807CFF0F 00001000
	s_nop 0                                                    // 000000008F68: BF800000
	buffer_load_dwordx4 v233, s[76:79], s17 offen lds          // 000000008F6C: E05D1000 111300E9
	s_or_b32 m0, s15, 0x2000                                   // 000000008F74: 877CFF0F 00002000
	s_mul_i32 s17, s8, 0xc0                                    // 000000008F7C: 9211FF08 000000C0
	buffer_load_dwordx4 v233, s[76:79], s17 offen lds          // 000000008F84: E05D1000 111300E9
	s_add_u32 m0, s15, 0x3000                                  // 000000008F8C: 807CFF0F 00003000
	s_mul_i32 s15, s8, 0xe0                                    // 000000008F94: 920FFF08 000000E0
	buffer_load_dwordx4 v233, s[76:79], s15 offen lds          // 000000008F9C: E05D1000 0F1300E9
	v_readlane_b32 s15, v255, 6                                // 000000008FA4: D289000F 00010DFF
	s_add_u32 s22, s15, s70                                    // 000000008FAC: 8016460F
	v_readlane_b32 s15, v255, 7                                // 000000008FB0: D289000F 00010FFF
	s_addc_u32 s23, s15, s71                                   // 000000008FB8: 8217470F
	v_readlane_b32 s15, v255, 8                                // 000000008FBC: D289000F 000111FF
	s_mov_b32 s18, s69                                         // 000000008FC4: BE920045
	s_mov_b32 s19, s16                                         // 000000008FC8: BE930010
	s_add_u32 s20, s15, s74                                    // 000000008FCC: 80144A0F
	v_readlane_b32 s15, v255, 9                                // 000000008FD0: D289000F 000113FF
	s_addc_u32 s21, s15, s75                                   // 000000008FD8: 82154B0F
	s_lshl_b64 s[18:19], s[18:19], 2                           // 000000008FDC: 8E928212
	v_readlane_b32 s15, v255, 12                               // 000000008FE0: D289000F 000119FF
	s_add_u32 s15, s15, s18                                    // 000000008FE8: 800F120F
	v_readlane_b32 s17, v255, 13                               // 000000008FEC: D2890011 00011BFF
	s_addc_u32 s17, s17, s19                                   // 000000008FF4: 82111311
	v_readlane_b32 s18, v255, 2                                // 000000008FF8: D2890012 000105FF
	v_readlane_b32 s19, v255, 3                                // 000000009000: D2890013 000107FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000009008: 86927E12
	s_mul_i32 s10, s10, s5                                     // 00000000900C: 920A050A
	s_cselect_b32 s18, 0, s15                                  // 000000009010: 85120F80
	v_readlane_b32 s15, v255, 0                                // 000000009014: D289000F 000101FF
	s_cselect_b32 s19, 0, s17                                  // 00000000901C: 85131180
	s_add_u32 s10, s10, s15                                    // 000000009020: 800A0F0A
	s_lshl_b32 s17, s10, 5                                     // 000000009024: 8E11850A
	v_or_b32_e32 v64, s17, v216                                // 000000009028: 2881B011
	s_bfe_u32 s35, s10, 0x190002                               // 00000000902C: 92A3FF0A 00190002
	v_mul_lo_u32 v64, v64, s7                                  // 000000009034: D2850040 00000F40
	scratch_load_dword v65, off, off offset:36                 // 00000000903C: DC504024 417F0000
	s_waitcnt vmcnt(0)                                         // 000000009044: BF8C0F70
	v_add_u32_e32 v64, v65, v64                                // 000000009048: 68808141
	global_load_dwordx4 v[220:223], v64, s[22:23]              // 00000000904C: DC5C8000 DC160040
	global_load_dwordx4 v[224:227], v64, s[22:23] offset:16    // 000000009054: DC5C8010 E0160040
	global_load_dwordx4 v[200:203], v64, s[22:23] offset:64    // 00000000905C: DC5C8040 C8160040
	global_load_dwordx4 v[204:207], v64, s[22:23] offset:80    // 000000009064: DC5C8050 CC160040
	s_mov_b32 s10, 0x110000                                    // 00000000906C: BE8A00FF 00110000
	s_mov_b32 s83, 0x110000                                    // 000000009074: BED300FF 00110000
	s_mov_b64 s[22:23], -1                                     // 00000000907C: BE9601C1
	s_mov_b32 s94, s68                                         // 000000009080: BEDE0044
	v_writelane_b32 v255, s10, 17                              // 000000009084: D28A00FF 0001220A
	s_branch 1189                                              // 00000000908C: BF8204A5 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8824>
	s_setprio 0                                                // 000000009090: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 000000009094: D1CB0070 0663DF70
	v_fma_f32 v96, v96, v239, v152                             // 00000000909C: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 0000000090A4: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 0000000090AC: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 0000000090B4: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 0000000090BC: D1CB0068 0663DF68
	v_fma_f32 v124, v124, v239, v152                           // 0000000090C4: D1CB007C 0663DF7C
	v_fma_f32 v108, v108, v239, v152                           // 0000000090CC: D1CB006C 0663DF6C
	v_fma_f32 v80, v80, v239, v150                             // 0000000090D4: D1CB0050 065BDF50
	v_fma_f32 v64, v64, v239, v150                             // 0000000090DC: D1CB0040 065BDF40
	v_fma_f32 v84, v84, v239, v150                             // 0000000090E4: D1CB0054 065BDF54
	v_fma_f32 v68, v68, v239, v150                             // 0000000090EC: D1CB0044 065BDF44
	v_fma_f32 v88, v88, v239, v150                             // 0000000090F4: D1CB0058 065BDF58
	v_fma_f32 v72, v72, v239, v150                             // 0000000090FC: D1CB0048 065BDF48
	v_fma_f32 v128, v75, v239, v150                            // 000000009104: D1CB0080 065BDF4B
	v_fma_f32 v75, v92, v239, v150                             // 00000000910C: D1CB004B 065BDF5C
	v_fma_f32 v76, v76, v239, v150                             // 000000009114: D1CB004C 065BDF4C
	v_fma_f32 v113, v113, v239, v152                           // 00000000911C: D1CB0071 0663DF71
	v_fma_f32 v97, v97, v239, v152                             // 000000009124: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 00000000912C: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 000000009134: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 00000000913C: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 000000009144: D1CB0069 0663DF69
	v_fma_f32 v125, v125, v239, v152                           // 00000000914C: D1CB007D 0663DF7D
	v_fma_f32 v109, v109, v239, v152                           // 000000009154: D1CB006D 0663DF6D
	v_fma_f32 v81, v81, v239, v150                             // 00000000915C: D1CB0051 065BDF51
	v_fma_f32 v65, v65, v239, v150                             // 000000009164: D1CB0041 065BDF41
	v_fma_f32 v85, v85, v239, v150                             // 00000000916C: D1CB0055 065BDF55
	v_fma_f32 v69, v69, v239, v150                             // 000000009174: D1CB0045 065BDF45
	v_fma_f32 v89, v89, v239, v150                             // 00000000917C: D1CB0059 065BDF59
	v_fma_f32 v73, v73, v239, v150                             // 000000009184: D1CB0049 065BDF49
	v_fma_f32 v92, v93, v239, v150                             // 00000000918C: D1CB005C 065BDF5D
	v_fma_f32 v93, v94, v239, v150                             // 000000009194: D1CB005D 065BDF5E
	v_fma_f32 v94, v95, v239, v150                             // 00000000919C: D1CB005E 065BDF5F
	v_fma_f32 v77, v77, v239, v150                             // 0000000091A4: D1CB004D 065BDF4D
	v_fma_f32 v95, v79, v239, v150                             // 0000000091AC: D1CB005F 065BDF4F
	v_cvt_pk_u8_f32 v79, v112, 0, 0                            // 0000000091B4: D1DD004F 02010170
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 0000000091BC: D1DD0060 02010160
	v_cvt_pk_u8_f32 v112, v116, 0, 0                           // 0000000091C4: D1DD0070 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 0000000091CC: D1DD0064 02010164
	v_cvt_pk_u8_f32 v116, v120, 0, 0                           // 0000000091D4: D1DD0074 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 0000000091DC: D1DD0068 02010168
	v_cvt_pk_u8_f32 v120, v124, 0, 0                           // 0000000091E4: D1DD0078 0201017C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 0000000091EC: D1DD006C 0201016C
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 0000000091F4: D1DD0050 02010150
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 0000000091FC: D1DD0040 02010140
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 000000009204: D1DD0054 02010154
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 00000000920C: D1DD0044 02010144
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 000000009214: D1DD0058 02010158
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 00000000921C: D1DD0048 02010148
	v_cvt_pk_u8_f32 v75, v75, 0, 0                             // 000000009224: D1DD004B 0201014B
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 00000000922C: D1DD004C 0201014C
	v_fma_f32 v114, v114, v239, v152                           // 000000009234: D1CB0072 0663DF72
	v_fma_f32 v98, v98, v239, v152                             // 00000000923C: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 000000009244: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 00000000924C: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 000000009254: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 00000000925C: D1CB006A 0663DF6A
	v_fma_f32 v126, v126, v239, v152                           // 000000009264: D1CB007E 0663DF7E
	v_fma_f32 v110, v110, v239, v152                           // 00000000926C: D1CB006E 0663DF6E
	v_fma_f32 v82, v82, v239, v150                             // 000000009274: D1CB0052 065BDF52
	v_fma_f32 v66, v66, v239, v150                             // 00000000927C: D1CB0042 065BDF42
	v_fma_f32 v86, v86, v239, v150                             // 000000009284: D1CB0056 065BDF56
	v_fma_f32 v70, v70, v239, v150                             // 00000000928C: D1CB0046 065BDF46
	v_fma_f32 v90, v90, v239, v150                             // 000000009294: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 00000000929C: D1CB004A 065BDF4A
	v_fma_f32 v78, v78, v239, v150                             // 0000000092A4: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v79, v113, 1, v79                          // 0000000092AC: D1DD004F 053D0371
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 0000000092B4: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v112                         // 0000000092BC: D1DD0061 05C10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 0000000092C4: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v116                        // 0000000092CC: D1DD0065 05D10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 0000000092D4: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v105, v125, 1, v120                        // 0000000092DC: D1DD0069 05E1037D
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 0000000092E4: D1DD006C 05B1036D
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 0000000092EC: D1DD0050 05410351
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 0000000092F4: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 0000000092FC: D1DD0041 05510355
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 000000009304: D1DD0044 05110345
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 00000000930C: D1DD0045 05610359
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 000000009314: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v92, 1, v75                           // 00000000931C: D1DD0049 052D035C
	v_cvt_pk_u8_f32 v75, v77, 1, v76                           // 000000009324: D1DD004B 0531034D
	v_fma_f32 v115, v115, v239, v152                           // 00000000932C: D1CB0073 0663DF73
	v_fma_f32 v99, v99, v239, v152                             // 000000009334: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 00000000933C: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 000000009344: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 00000000934C: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 000000009354: D1CB006B 0663DF6B
	v_fma_f32 v127, v127, v239, v152                           // 00000000935C: D1CB007F 0663DF7F
	v_fma_f32 v111, v111, v239, v152                           // 000000009364: D1CB006F 0663DF6F
	v_fma_f32 v83, v83, v239, v150                             // 00000000936C: D1CB0053 065BDF53
	v_fma_f32 v67, v67, v239, v150                             // 000000009374: D1CB0043 065BDF43
	v_fma_f32 v87, v87, v239, v150                             // 00000000937C: D1CB0057 065BDF57
	v_fma_f32 v71, v71, v239, v150                             // 000000009384: D1CB0047 065BDF47
	v_fma_f32 v91, v91, v239, v150                             // 00000000938C: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v76, v114, 2, v79                          // 000000009394: D1DD004C 053D0572
	v_cvt_pk_u8_f32 v77, v98, 2, v96                           // 00000000939C: D1DD004D 05810562
	v_cvt_pk_u8_f32 v79, v118, 2, v97                          // 0000000093A4: D1DD004F 05850576
	v_cvt_pk_u8_f32 v81, v102, 2, v100                         // 0000000093AC: D1DD0051 05910566
	v_cvt_pk_u8_f32 v84, v122, 2, v101                         // 0000000093B4: D1DD0054 0595057A
	v_cvt_pk_u8_f32 v85, v106, 2, v104                         // 0000000093BC: D1DD0055 05A1056A
	v_cvt_pk_u8_f32 v88, v126, 2, v105                         // 0000000093C4: D1DD0058 05A5057E
	v_cvt_pk_u8_f32 v89, v110, 2, v108                         // 0000000093CC: D1DD0059 05B1056E
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 0000000093D4: D1DD0050 05410552
	v_cvt_pk_u8_f32 v66, v66, 2, v64                           // 0000000093DC: D1DD0042 05010542
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 0000000093E4: D1DD0041 05050556
	v_cvt_pk_u8_f32 v70, v70, 2, v68                           // 0000000093EC: D1DD0046 05110546
	v_cvt_pk_u8_f32 v82, v90, 2, v69                           // 0000000093F4: D1DD0052 0515055A
	v_cvt_pk_u8_f32 v86, v74, 2, v72                           // 0000000093FC: D1DD0056 0521054A
	v_cvt_pk_u8_f32 v90, v93, 2, v73                           // 000000009404: D1DD005A 0525055D
	v_cvt_pk_u8_f32 v92, v78, 2, v75                           // 00000000940C: D1DD005C 052D054E
	s_mov_b32 s26, 1                                           // 000000009414: BE9A0081
	v_cvt_pk_u8_f32 v72, v115, 3, v76                          // 000000009418: D1DD0048 05310773
	v_cvt_pk_u8_f32 v76, v99, 3, v77                           // 000000009420: D1DD004C 05350763
	v_cvt_pk_u8_f32 v73, v119, 3, v79                          // 000000009428: D1DD0049 053D0777
	v_cvt_pk_u8_f32 v77, v103, 3, v81                          // 000000009430: D1DD004D 05450767
	v_cvt_pk_u8_f32 v74, v123, 3, v84                          // 000000009438: D1DD004A 0551077B
	v_cvt_pk_u8_f32 v78, v107, 3, v85                          // 000000009440: D1DD004E 0555076B
	v_cvt_pk_u8_f32 v75, v127, 3, v88                          // 000000009448: D1DD004B 0561077F
	v_cvt_pk_u8_f32 v79, v111, 3, v89                          // 000000009450: D1DD004F 0565076F
	v_cvt_pk_u8_f32 v64, v83, 3, v80                           // 000000009458: D1DD0040 05410753
	v_cvt_pk_u8_f32 v68, v67, 3, v66                           // 000000009460: D1DD0044 05090743
	v_cvt_pk_u8_f32 v65, v87, 3, v65                           // 000000009468: D1DD0041 05050757
	v_cvt_pk_u8_f32 v69, v71, 3, v70                           // 000000009470: D1DD0045 05190747
	v_cvt_pk_u8_f32 v66, v91, 3, v82                           // 000000009478: D1DD0042 0549075B
	v_cvt_pk_u8_f32 v70, v128, 3, v86                          // 000000009480: D1DD0046 05590780
	v_cvt_pk_u8_f32 v67, v94, 3, v90                           // 000000009488: D1DD0043 0569075E
	v_cvt_pk_u8_f32 v71, v95, 3, v92                           // 000000009490: D1DD0047 0571075F
	s_waitcnt vmcnt(0)                                         // 000000009498: BF8C0F70
	s_barrier                                                  // 00000000949C: BF8A0000
	s_cmp_lg_u32 s11, 0                                        // 0000000094A0: BF07800B
	s_cselect_b64 s[18:19], -1, 0                              // 0000000094A4: 859280C1
	s_not_b32 s11, s94                                         // 0000000094A8: BE8B045E
	s_add_u32 s11, s4, s11                                     // 0000000094AC: 800B0B04
	s_cmp_eq_u32 s94, s11                                      // 0000000094B0: BF060B5E
	s_cselect_b64 s[20:21], -1, 0                              // 0000000094B4: 859480C1
	s_or_b64 s[24:25], s[18:19], s[20:21]                      // 0000000094B8: 87981412
	s_and_b64 s[18:19], s[24:25], exec                         // 0000000094BC: 86927E18
	s_mov_b64 s[22:23], -1                                     // 0000000094C0: BE9601C1
	s_cbranch_scc0 307                                         // 0000000094C4: BF840133 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7e94>
	s_add_u32 s2, s2, s14                                      // 0000000094C8: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 0000000094CC: BF093302
	s_mov_b32 s26, 0                                           // 0000000094D0: BE9A0080
	s_cbranch_scc1 302                                         // 0000000094D4: BF85012E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7e90>
	s_lshl_b32 s11, s2, 5                                      // 0000000094D8: 8E0B8502
	s_load_dwordx8 s[68:75], s[46:47], s11 offset:0x0          // 0000000094DC: C00E5117 16000000
	s_branch 299                                               // 0000000094E4: BF82012B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7e94>
	s_setprio 0                                                // 0000000094E8: BF8F0000
	v_fma_f32 v112, v112, v239, v152                           // 0000000094EC: D1CB0070 0663DF70
	v_fma_f32 v96, v96, v239, v152                             // 0000000094F4: D1CB0060 0663DF60
	v_fma_f32 v116, v116, v239, v152                           // 0000000094FC: D1CB0074 0663DF74
	v_fma_f32 v100, v100, v239, v152                           // 000000009504: D1CB0064 0663DF64
	v_fma_f32 v120, v120, v239, v152                           // 00000000950C: D1CB0078 0663DF78
	v_fma_f32 v104, v104, v239, v152                           // 000000009514: D1CB0068 0663DF68
	v_fma_f32 v124, v124, v239, v152                           // 00000000951C: D1CB007C 0663DF7C
	v_fma_f32 v108, v108, v239, v152                           // 000000009524: D1CB006C 0663DF6C
	v_fma_f32 v80, v80, v239, v150                             // 00000000952C: D1CB0050 065BDF50
	v_fma_f32 v64, v64, v239, v150                             // 000000009534: D1CB0040 065BDF40
	v_fma_f32 v84, v84, v239, v150                             // 00000000953C: D1CB0054 065BDF54
	v_fma_f32 v68, v68, v239, v150                             // 000000009544: D1CB0044 065BDF44
	v_fma_f32 v88, v88, v239, v150                             // 00000000954C: D1CB0058 065BDF58
	v_fma_f32 v72, v72, v239, v150                             // 000000009554: D1CB0048 065BDF48
	v_fma_f32 v128, v75, v239, v150                            // 00000000955C: D1CB0080 065BDF4B
	v_fma_f32 v75, v92, v239, v150                             // 000000009564: D1CB004B 065BDF5C
	v_fma_f32 v76, v76, v239, v150                             // 00000000956C: D1CB004C 065BDF4C
	v_fma_f32 v113, v113, v239, v152                           // 000000009574: D1CB0071 0663DF71
	v_fma_f32 v97, v97, v239, v152                             // 00000000957C: D1CB0061 0663DF61
	v_fma_f32 v117, v117, v239, v152                           // 000000009584: D1CB0075 0663DF75
	v_fma_f32 v101, v101, v239, v152                           // 00000000958C: D1CB0065 0663DF65
	v_fma_f32 v121, v121, v239, v152                           // 000000009594: D1CB0079 0663DF79
	v_fma_f32 v105, v105, v239, v152                           // 00000000959C: D1CB0069 0663DF69
	v_fma_f32 v125, v125, v239, v152                           // 0000000095A4: D1CB007D 0663DF7D
	v_fma_f32 v109, v109, v239, v152                           // 0000000095AC: D1CB006D 0663DF6D
	v_fma_f32 v81, v81, v239, v150                             // 0000000095B4: D1CB0051 065BDF51
	v_fma_f32 v65, v65, v239, v150                             // 0000000095BC: D1CB0041 065BDF41
	v_fma_f32 v85, v85, v239, v150                             // 0000000095C4: D1CB0055 065BDF55
	v_fma_f32 v69, v69, v239, v150                             // 0000000095CC: D1CB0045 065BDF45
	v_fma_f32 v89, v89, v239, v150                             // 0000000095D4: D1CB0059 065BDF59
	v_fma_f32 v73, v73, v239, v150                             // 0000000095DC: D1CB0049 065BDF49
	v_fma_f32 v92, v93, v239, v150                             // 0000000095E4: D1CB005C 065BDF5D
	v_fma_f32 v93, v94, v239, v150                             // 0000000095EC: D1CB005D 065BDF5E
	v_fma_f32 v94, v95, v239, v150                             // 0000000095F4: D1CB005E 065BDF5F
	v_fma_f32 v77, v77, v239, v150                             // 0000000095FC: D1CB004D 065BDF4D
	v_fma_f32 v95, v79, v239, v150                             // 000000009604: D1CB005F 065BDF4F
	v_cvt_pk_u8_f32 v79, v112, 0, 0                            // 00000000960C: D1DD004F 02010170
	v_cvt_pk_u8_f32 v96, v96, 0, 0                             // 000000009614: D1DD0060 02010160
	v_cvt_pk_u8_f32 v112, v116, 0, 0                           // 00000000961C: D1DD0070 02010174
	v_cvt_pk_u8_f32 v100, v100, 0, 0                           // 000000009624: D1DD0064 02010164
	v_cvt_pk_u8_f32 v116, v120, 0, 0                           // 00000000962C: D1DD0074 02010178
	v_cvt_pk_u8_f32 v104, v104, 0, 0                           // 000000009634: D1DD0068 02010168
	v_cvt_pk_u8_f32 v120, v124, 0, 0                           // 00000000963C: D1DD0078 0201017C
	v_cvt_pk_u8_f32 v108, v108, 0, 0                           // 000000009644: D1DD006C 0201016C
	v_cvt_pk_u8_f32 v80, v80, 0, 0                             // 00000000964C: D1DD0050 02010150
	v_cvt_pk_u8_f32 v64, v64, 0, 0                             // 000000009654: D1DD0040 02010140
	v_cvt_pk_u8_f32 v84, v84, 0, 0                             // 00000000965C: D1DD0054 02010154
	v_cvt_pk_u8_f32 v68, v68, 0, 0                             // 000000009664: D1DD0044 02010144
	v_cvt_pk_u8_f32 v88, v88, 0, 0                             // 00000000966C: D1DD0058 02010158
	v_cvt_pk_u8_f32 v72, v72, 0, 0                             // 000000009674: D1DD0048 02010148
	v_cvt_pk_u8_f32 v75, v75, 0, 0                             // 00000000967C: D1DD004B 0201014B
	v_cvt_pk_u8_f32 v76, v76, 0, 0                             // 000000009684: D1DD004C 0201014C
	v_fma_f32 v114, v114, v239, v152                           // 00000000968C: D1CB0072 0663DF72
	v_fma_f32 v98, v98, v239, v152                             // 000000009694: D1CB0062 0663DF62
	v_fma_f32 v118, v118, v239, v152                           // 00000000969C: D1CB0076 0663DF76
	v_fma_f32 v102, v102, v239, v152                           // 0000000096A4: D1CB0066 0663DF66
	v_fma_f32 v122, v122, v239, v152                           // 0000000096AC: D1CB007A 0663DF7A
	v_fma_f32 v106, v106, v239, v152                           // 0000000096B4: D1CB006A 0663DF6A
	v_fma_f32 v126, v126, v239, v152                           // 0000000096BC: D1CB007E 0663DF7E
	v_fma_f32 v110, v110, v239, v152                           // 0000000096C4: D1CB006E 0663DF6E
	v_fma_f32 v82, v82, v239, v150                             // 0000000096CC: D1CB0052 065BDF52
	v_fma_f32 v66, v66, v239, v150                             // 0000000096D4: D1CB0042 065BDF42
	v_fma_f32 v86, v86, v239, v150                             // 0000000096DC: D1CB0056 065BDF56
	v_fma_f32 v70, v70, v239, v150                             // 0000000096E4: D1CB0046 065BDF46
	v_fma_f32 v90, v90, v239, v150                             // 0000000096EC: D1CB005A 065BDF5A
	v_fma_f32 v74, v74, v239, v150                             // 0000000096F4: D1CB004A 065BDF4A
	v_fma_f32 v78, v78, v239, v150                             // 0000000096FC: D1CB004E 065BDF4E
	v_cvt_pk_u8_f32 v79, v113, 1, v79                          // 000000009704: D1DD004F 053D0371
	v_cvt_pk_u8_f32 v96, v97, 1, v96                           // 00000000970C: D1DD0060 05810361
	v_cvt_pk_u8_f32 v97, v117, 1, v112                         // 000000009714: D1DD0061 05C10375
	v_cvt_pk_u8_f32 v100, v101, 1, v100                        // 00000000971C: D1DD0064 05910365
	v_cvt_pk_u8_f32 v101, v121, 1, v116                        // 000000009724: D1DD0065 05D10379
	v_cvt_pk_u8_f32 v104, v105, 1, v104                        // 00000000972C: D1DD0068 05A10369
	v_cvt_pk_u8_f32 v105, v125, 1, v120                        // 000000009734: D1DD0069 05E1037D
	v_cvt_pk_u8_f32 v108, v109, 1, v108                        // 00000000973C: D1DD006C 05B1036D
	v_cvt_pk_u8_f32 v80, v81, 1, v80                           // 000000009744: D1DD0050 05410351
	v_cvt_pk_u8_f32 v64, v65, 1, v64                           // 00000000974C: D1DD0040 05010341
	v_cvt_pk_u8_f32 v65, v85, 1, v84                           // 000000009754: D1DD0041 05510355
	v_cvt_pk_u8_f32 v68, v69, 1, v68                           // 00000000975C: D1DD0044 05110345
	v_cvt_pk_u8_f32 v69, v89, 1, v88                           // 000000009764: D1DD0045 05610359
	v_cvt_pk_u8_f32 v72, v73, 1, v72                           // 00000000976C: D1DD0048 05210349
	v_cvt_pk_u8_f32 v73, v92, 1, v75                           // 000000009774: D1DD0049 052D035C
	v_cvt_pk_u8_f32 v75, v77, 1, v76                           // 00000000977C: D1DD004B 0531034D
	v_fma_f32 v115, v115, v239, v152                           // 000000009784: D1CB0073 0663DF73
	v_fma_f32 v99, v99, v239, v152                             // 00000000978C: D1CB0063 0663DF63
	v_fma_f32 v119, v119, v239, v152                           // 000000009794: D1CB0077 0663DF77
	v_fma_f32 v103, v103, v239, v152                           // 00000000979C: D1CB0067 0663DF67
	v_fma_f32 v123, v123, v239, v152                           // 0000000097A4: D1CB007B 0663DF7B
	v_fma_f32 v107, v107, v239, v152                           // 0000000097AC: D1CB006B 0663DF6B
	v_fma_f32 v127, v127, v239, v152                           // 0000000097B4: D1CB007F 0663DF7F
	v_fma_f32 v111, v111, v239, v152                           // 0000000097BC: D1CB006F 0663DF6F
	v_fma_f32 v83, v83, v239, v150                             // 0000000097C4: D1CB0053 065BDF53
	v_fma_f32 v67, v67, v239, v150                             // 0000000097CC: D1CB0043 065BDF43
	v_fma_f32 v87, v87, v239, v150                             // 0000000097D4: D1CB0057 065BDF57
	v_fma_f32 v71, v71, v239, v150                             // 0000000097DC: D1CB0047 065BDF47
	v_fma_f32 v91, v91, v239, v150                             // 0000000097E4: D1CB005B 065BDF5B
	v_cvt_pk_u8_f32 v76, v114, 2, v79                          // 0000000097EC: D1DD004C 053D0572
	v_cvt_pk_u8_f32 v77, v98, 2, v96                           // 0000000097F4: D1DD004D 05810562
	v_cvt_pk_u8_f32 v79, v118, 2, v97                          // 0000000097FC: D1DD004F 05850576
	v_cvt_pk_u8_f32 v81, v102, 2, v100                         // 000000009804: D1DD0051 05910566
	v_cvt_pk_u8_f32 v84, v122, 2, v101                         // 00000000980C: D1DD0054 0595057A
	v_cvt_pk_u8_f32 v85, v106, 2, v104                         // 000000009814: D1DD0055 05A1056A
	v_cvt_pk_u8_f32 v88, v126, 2, v105                         // 00000000981C: D1DD0058 05A5057E
	v_cvt_pk_u8_f32 v89, v110, 2, v108                         // 000000009824: D1DD0059 05B1056E
	v_cvt_pk_u8_f32 v80, v82, 2, v80                           // 00000000982C: D1DD0050 05410552
	v_cvt_pk_u8_f32 v66, v66, 2, v64                           // 000000009834: D1DD0042 05010542
	v_cvt_pk_u8_f32 v65, v86, 2, v65                           // 00000000983C: D1DD0041 05050556
	v_cvt_pk_u8_f32 v70, v70, 2, v68                           // 000000009844: D1DD0046 05110546
	v_cvt_pk_u8_f32 v82, v90, 2, v69                           // 00000000984C: D1DD0052 0515055A
	v_cvt_pk_u8_f32 v86, v74, 2, v72                           // 000000009854: D1DD0056 0521054A
	v_cvt_pk_u8_f32 v90, v93, 2, v73                           // 00000000985C: D1DD005A 0525055D
	v_cvt_pk_u8_f32 v92, v78, 2, v75                           // 000000009864: D1DD005C 052D054E
	s_mov_b32 s26, 1                                           // 00000000986C: BE9A0081
	v_cvt_pk_u8_f32 v72, v115, 3, v76                          // 000000009870: D1DD0048 05310773
	v_cvt_pk_u8_f32 v76, v99, 3, v77                           // 000000009878: D1DD004C 05350763
	v_cvt_pk_u8_f32 v73, v119, 3, v79                          // 000000009880: D1DD0049 053D0777
	v_cvt_pk_u8_f32 v77, v103, 3, v81                          // 000000009888: D1DD004D 05450767
	v_cvt_pk_u8_f32 v74, v123, 3, v84                          // 000000009890: D1DD004A 0551077B
	v_cvt_pk_u8_f32 v78, v107, 3, v85                          // 000000009898: D1DD004E 0555076B
	v_cvt_pk_u8_f32 v75, v127, 3, v88                          // 0000000098A0: D1DD004B 0561077F
	v_cvt_pk_u8_f32 v79, v111, 3, v89                          // 0000000098A8: D1DD004F 0565076F
	v_cvt_pk_u8_f32 v64, v83, 3, v80                           // 0000000098B0: D1DD0040 05410753
	v_cvt_pk_u8_f32 v68, v67, 3, v66                           // 0000000098B8: D1DD0044 05090743
	v_cvt_pk_u8_f32 v65, v87, 3, v65                           // 0000000098C0: D1DD0041 05050757
	v_cvt_pk_u8_f32 v69, v71, 3, v70                           // 0000000098C8: D1DD0045 05190747
	v_cvt_pk_u8_f32 v66, v91, 3, v82                           // 0000000098D0: D1DD0042 0549075B
	v_cvt_pk_u8_f32 v70, v128, 3, v86                          // 0000000098D8: D1DD0046 05590780
	v_cvt_pk_u8_f32 v67, v94, 3, v90                           // 0000000098E0: D1DD0043 0569075E
	v_cvt_pk_u8_f32 v71, v95, 3, v92                           // 0000000098E8: D1DD0047 0571075F
	s_waitcnt vmcnt(0)                                         // 0000000098F0: BF8C0F70
	s_barrier                                                  // 0000000098F4: BF8A0000
	s_cmp_lg_u32 s11, 0                                        // 0000000098F8: BF07800B
	s_cselect_b64 s[18:19], -1, 0                              // 0000000098FC: 859280C1
	s_not_b32 s11, s94                                         // 000000009900: BE8B045E
	s_add_u32 s11, s4, s11                                     // 000000009904: 800B0B04
	s_cmp_eq_u32 s94, s11                                      // 000000009908: BF060B5E
	s_cselect_b64 s[20:21], -1, 0                              // 00000000990C: 859480C1
	s_or_b64 s[24:25], s[18:19], s[20:21]                      // 000000009910: 87981412
	s_and_b64 s[18:19], s[24:25], exec                         // 000000009914: 86927E18
	s_mov_b64 s[22:23], -1                                     // 000000009918: BE9601C1
	s_cbranch_scc0 339                                         // 00000000991C: BF840153 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x836c>
	s_add_u32 s2, s2, s14                                      // 000000009920: 80020E02
	s_cmp_ge_u32 s2, s51                                       // 000000009924: BF093302
	s_mov_b32 s26, 0                                           // 000000009928: BE9A0080
	s_cbranch_scc1 334                                         // 00000000992C: BF85014E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8368>
	s_lshl_b32 s11, s2, 5                                      // 000000009930: 8E0B8502
	s_load_dwordx8 s[68:75], s[46:47], s11 offset:0x0          // 000000009934: C00E5117 16000000
	s_branch 331                                               // 00000000993C: BF82014B <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x836c>
	s_mov_b64 s[20:21], 0                                      // 000000009940: BE940180
	s_add_u32 s15, s91, s10                                    // 000000009944: 800F0A5B
	s_and_b32 s11, s15, 3                                      // 000000009948: 860B830F
	s_and_b64 s[20:21], s[20:21], exec                         // 00000000994C: 86947E14
	s_cbranch_scc1 64605                                       // 000000009950: BF85FC5D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x6fc8>
	s_mov_b64 s[22:23], 0                                      // 000000009954: BE960180
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009958: BE940100
	s_mov_b64 s[18:19], s[12:13]                               // 00000000995C: BE92010C
	s_mov_b32 s17, s3                                          // 000000009960: BE910003
	s_branch 313                                               // 000000009964: BF820139 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x834c>
	s_mov_b64 s[20:21], 0                                      // 000000009968: BE940180
	s_add_u32 s15, s91, s10                                    // 00000000996C: 800F0A5B
	s_and_b32 s11, s15, 3                                      // 000000009970: 860B830F
	s_and_b64 s[20:21], s[20:21], exec                         // 000000009974: 86947E14
	s_cbranch_scc1 64793                                       // 000000009978: BF85FD19 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x72e0>
	s_mov_b64 s[22:23], 0                                      // 00000000997C: BE960180
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009980: BE940100
	s_mov_b64 s[18:19], s[12:13]                               // 000000009984: BE92010C
	s_mov_b32 s17, s3                                          // 000000009988: BE910003
	s_branch 613                                               // 00000000998C: BF820265 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8824>
	s_mov_b64 s[22:23], 0                                      // 000000009990: BE960180
	s_add_u32 s27, s91, s10                                    // 000000009994: 801B0A5B
	s_and_b32 s11, s27, 3                                      // 000000009998: 860B831B
	s_and_b64 s[18:19], s[22:23], exec                         // 00000000999C: 86927E16
	s_mov_b64 s[20:21], s[0:1]                                 // 0000000099A0: BE940100
	s_mov_b64 s[18:19], s[12:13]                               // 0000000099A4: BE92010C
	s_mov_b32 s17, s3                                          // 0000000099A8: BE910003
	s_cbranch_scc0 170                                         // 0000000099AC: BF8400AA <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8158>
	s_waitcnt lgkmcnt(0)                                       // 0000000099B0: BF8CC07F
	s_add_u32 s76, s38, s72                                    // 0000000099B4: 804C4826
	s_addc_u32 s77, s39, s73                                   // 0000000099B8: 824D4927
	s_add_u32 s80, s40, s72                                    // 0000000099BC: 80504828
	s_addc_u32 s81, s41, s73                                   // 0000000099C0: 82514929
	s_not_b32 s17, s68                                         // 0000000099C4: BE910444
	s_add_u32 s17, s4, s17                                     // 0000000099C8: 80111104
	s_and_b64 s[18:19], s[24:25], exec                         // 0000000099CC: 86927E18
	s_cselect_b32 s17, s17, s68                                // 0000000099D0: 85114411
	s_lshl_b32 s18, s17, 5                                     // 0000000099D4: 8E128511
	s_add_u32 s18, s18, 32                                     // 0000000099D8: 8012A012
	s_mul_i32 s18, s18, s5                                     // 0000000099DC: 92120512
	s_addk_i32 s18, 0x60                                       // 0000000099E0: B7120060
	s_lshr_b32 s18, s18, 7                                     // 0000000099E4: 8F128712
	v_readlane_b32 s19, v255, 1                                // 0000000099E8: D2890013 000103FF
	s_min_u32 s91, s19, s18                                    // 0000000099F0: 83DB1213
	v_readlane_b32 s18, v255, 10                               // 0000000099F4: D2890012 000115FF
	v_readlane_b32 s19, v255, 11                               // 0000000099FC: D2890013 000117FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000009A04: 86927E12
	s_cbranch_scc0 90                                          // 000000009A08: BF84005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8074>
	s_lshl_b32 s18, s11, 14                                    // 000000009A0C: 8E128E0B
	s_and_b32 s18, s18, 0x8000                                 // 000000009A10: 8612FF12 00008000
	s_bitcmp1_b32 s27, 0                                       // 000000009A18: BF0D801B
	s_cselect_b32 s19, 0x4000, 0                               // 000000009A1C: 851380FF 00004000
	s_cselect_b32 s20, s93, 0x10000                            // 000000009A24: 8514FF5D 00010000
	s_or_b32 s19, s18, s19                                     // 000000009A2C: 87131312
	s_or_b32 s19, s19, s88                                     // 000000009A30: 87135813
	s_mov_b32 m0, s19                                          // 000000009A34: BEFC0013
	s_or_b32 s18, s18, s20                                     // 000000009A38: 87121412
	buffer_load_dwordx4 v233, s[76:79], 0 offen lds            // 000000009A3C: E05D1000 801300E9
	s_add_u32 m0, s19, 0x1000                                  // 000000009A44: 807CFF13 00001000
	v_readlane_b32 s20, v255, 14                               // 000000009A4C: D2890014 00011DFF
	s_or_b32 s18, s18, s88                                     // 000000009A54: 87125812
	s_mov_b32 s82, s78                                         // 000000009A58: BED2004E
	s_mov_b32 s83, s79                                         // 000000009A5C: BED3004F
	s_nop 1                                                    // 000000009A60: BF800001
	buffer_load_dwordx4 v233, s[76:79], s20 offen lds          // 000000009A64: E05D1000 141300E9
	s_or_b32 m0, s19, 0x2000                                   // 000000009A6C: 877CFF13 00002000
	v_readlane_b32 s20, v255, 15                               // 000000009A74: D2890014 00011FFF
	s_nop 4                                                    // 000000009A7C: BF800004
	buffer_load_dwordx4 v233, s[76:79], s20 offen lds          // 000000009A80: E05D1000 141300E9
	s_add_u32 m0, s19, 0x3000                                  // 000000009A88: 807CFF13 00003000
	s_mul_i32 s19, s8, 0x60                                    // 000000009A90: 9213FF08 00000060
	buffer_load_dwordx4 v233, s[76:79], s19 offen lds          // 000000009A98: E05D1000 131300E9
	s_mov_b32 m0, s18                                          // 000000009AA0: BEFC0012
	v_readlane_b32 s19, v255, 16                               // 000000009AA4: D2890013 000121FF
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 000000009AAC: E05D1000 801400EB
	s_add_u32 m0, s18, 0x1000                                  // 000000009AB4: 807CFF12 00001000
	s_nop 0                                                    // 000000009ABC: BF800000
	buffer_load_dwordx4 v235, s[80:83], s20 offen lds          // 000000009AC0: E05D1000 141400EB
	s_or_b32 m0, s18, 0x2000                                   // 000000009AC8: 877CFF12 00002000
	s_nop 0                                                    // 000000009AD0: BF800000
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000009AD4: E05D1000 131400EB
	s_add_u32 m0, s18, 0x3000                                  // 000000009ADC: 807CFF12 00003000
	s_mul_i32 s18, s8, 0x44                                    // 000000009AE4: 9212FF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000009AEC: E05D1000 121400EB
	s_cmp_lt_u32 s91, 2                                        // 000000009AF4: BF0A825B
	s_cbranch_scc1 30                                          // 000000009AF8: BF85001E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8074>
	s_add_u32 s18, s11, 1                                      // 000000009AFC: 8012810B
	s_and_b32 s19, s18, 2                                      // 000000009B00: 86138212
	s_lshl_b32 s19, s19, 14                                    // 000000009B04: 8E138E13
	s_bitcmp1_b32 s18, 0                                       // 000000009B08: BF0D8012
	s_cselect_b32 s18, 0x4000, 0                               // 000000009B0C: 851280FF 00004000
	s_or_b32 s18, s19, s18                                     // 000000009B14: 87121213
	s_or_b32 s18, s18, s88                                     // 000000009B18: 87125812
	s_mov_b32 m0, s18                                          // 000000009B1C: BEFC0012
	s_mul_i32 s19, s8, 0xa0                                    // 000000009B20: 9213FF08 000000A0
	buffer_load_dwordx4 v233, s[76:79], s33 offen lds          // 000000009B28: E05D1000 211300E9
	s_add_u32 m0, s18, 0x1000                                  // 000000009B30: 807CFF12 00001000
	s_nop 0                                                    // 000000009B38: BF800000
	buffer_load_dwordx4 v233, s[76:79], s19 offen lds          // 000000009B3C: E05D1000 131300E9
	s_or_b32 m0, s18, 0x2000                                   // 000000009B44: 877CFF12 00002000
	s_mul_i32 s19, s8, 0xc0                                    // 000000009B4C: 9213FF08 000000C0
	buffer_load_dwordx4 v233, s[76:79], s19 offen lds          // 000000009B54: E05D1000 131300E9
	s_add_u32 m0, s18, 0x3000                                  // 000000009B5C: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xe0                                    // 000000009B64: 9212FF08 000000E0
	buffer_load_dwordx4 v233, s[76:79], s18 offen lds          // 000000009B6C: E05D1000 121300E9
	v_readlane_b32 s18, v255, 6                                // 000000009B74: D2890012 00010DFF
	s_add_u32 s24, s18, s70                                    // 000000009B7C: 80184612
	v_readlane_b32 s18, v255, 7                                // 000000009B80: D2890012 00010FFF
	s_addc_u32 s25, s18, s71                                   // 000000009B88: 82194712
	v_readlane_b32 s18, v255, 8                                // 000000009B8C: D2890012 000111FF
	s_add_u32 s20, s18, s74                                    // 000000009B94: 80144A12
	v_readlane_b32 s18, v255, 9                                // 000000009B98: D2890012 000113FF
	s_addc_u32 s21, s18, s75                                   // 000000009BA0: 82154B12
	s_mov_b32 s18, s69                                         // 000000009BA4: BE920045
	s_mov_b32 s19, s16                                         // 000000009BA8: BE930010
	s_lshl_b64 s[18:19], s[18:19], 2                           // 000000009BAC: 8E928212
	v_readlane_b32 s27, v255, 12                               // 000000009BB0: D289001B 000119FF
	s_add_u32 s27, s27, s18                                    // 000000009BB8: 801B121B
	v_readlane_b32 s18, v255, 13                               // 000000009BBC: D2890012 00011BFF
	s_addc_u32 s28, s18, s19                                   // 000000009BC4: 821C1312
	v_readlane_b32 s18, v255, 2                                // 000000009BC8: D2890012 000105FF
	v_readlane_b32 s19, v255, 3                                // 000000009BD0: D2890013 000107FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000009BD8: 86927E12
	s_cselect_b32 s18, 0, s27                                  // 000000009BDC: 85121B80
	s_mul_i32 s17, s17, s5                                     // 000000009BE0: 92110511
	v_readlane_b32 s27, v255, 0                                // 000000009BE4: D289001B 000101FF
	s_cselect_b32 s19, 0, s28                                  // 000000009BEC: 85131C80
	s_add_u32 s27, s17, s27                                    // 000000009BF0: 801B1B11
	s_lshl_b32 s17, s27, 5                                     // 000000009BF4: 8E11851B
	s_bfe_u32 s35, s27, 0x190002                               // 000000009BF8: 92A3FF1B 00190002
	v_or_b32_e32 v80, s17, v216                                // 000000009C00: 28A1B011
	v_mul_lo_u32 v80, v80, s7                                  // 000000009C04: D2850050 00000F50
	scratch_load_dword v81, off, off offset:36                 // 000000009C0C: DC504024 517F0000
	s_waitcnt vmcnt(0)                                         // 000000009C14: BF8C0F70
	v_add_u32_e32 v80, v81, v80                                // 000000009C18: 68A0A151
	global_load_dwordx4 v[220:223], v80, s[24:25]              // 000000009C1C: DC5C8000 DC180050
	global_load_dwordx4 v[224:227], v80, s[24:25] offset:16    // 000000009C24: DC5C8010 E0180050
	global_load_dwordx4 v[200:203], v80, s[24:25] offset:64    // 000000009C2C: DC5C8040 C8180050
	global_load_dwordx4 v[204:207], v80, s[24:25] offset:80    // 000000009C34: DC5C8050 CC180050
	s_mov_b32 s24, 0x110000                                    // 000000009C3C: BE9800FF 00110000
	s_mov_b32 s83, 0x110000                                    // 000000009C44: BED300FF 00110000
	s_mov_b32 s94, s68                                         // 000000009C4C: BEDE0044
	v_writelane_b32 v255, s24, 17                              // 000000009C50: D28A00FF 00012218
	s_setprio 1                                                // 000000009C58: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[72:79], 0// 000000009C5C: D3AD0050 020291C0
	s_nop 11                                                   // 000000009C64: BF80000B
	v_lshlrev_b32_e32 v81, 23, v251                            // 000000009C68: 24A3F697
	v_mul_f32_e32 v80, v80, v81                                // 000000009C6C: 0AA0A350
	v_add_f32_e32 v84, v250, v80                               // 000000009C70: 02A8A1FA
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[64:71], 0// 000000009C74: D3AD0050 020281C0
	s_add_u32 s10, s15, s10                                    // 000000009C7C: 800A0A0F
	s_and_b32 s15, s10, 2                                      // 000000009C80: 860F820A
	s_lshl_b32 s15, s15, 14                                    // 000000009C84: 8E0F8E0F
	s_bitcmp1_b32 s10, 0                                       // 000000009C88: BF0D800A
	s_nop 7                                                    // 000000009C8C: BF800007
	v_lshlrev_b32_e32 v81, 23, v253                            // 000000009C90: 24A3FA97
	s_cselect_b32 s10, s93, 0x10000                            // 000000009C94: 850AFF5D 00010000
	v_mul_f32_e32 v80, v80, v81                                // 000000009C9C: 0AA0A350
	s_or_b32 s15, s15, s10                                     // 000000009CA0: 870F0A0F
	v_add_f32_e32 v250, v84, v80                               // 000000009CA4: 03F4A154
	v_or_b32_e32 v80, s15, v245                                // 000000009CA8: 28A1EA0F
	v_add_u32_e32 v80, v80, v244                               // 000000009CAC: 68A1E950
	ds_read_b64_tr_b8 v[82:83], v80                            // 000000009CB0: D9C40000 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1024                // 000000009CB8: D9C40400 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2048                // 000000009CC0: D9C40800 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3072                // 000000009CC8: D9C40C00 58000050
	ds_read_b64_tr_b8 v[90:91], v80 offset:256                 // 000000009CD0: D9C40100 5A000050
	ds_read_b64_tr_b8 v[92:93], v80 offset:1280                // 000000009CD8: D9C40500 5C000050
	ds_read_b64_tr_b8 v[94:95], v80 offset:2304                // 000000009CE0: D9C40900 5E000050
	ds_read_b64_tr_b8 v[96:97], v80 offset:3328                // 000000009CE8: D9C40D00 60000050
	s_waitcnt lgkmcnt(0)                                       // 000000009CF0: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[82:89], v[72:79], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 000000009CF4: D3AC0000 0003F7F2 D3AE0830 04C29152
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[90:97], v[72:79], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 000000009D04: D3AC0000 0003F7F2 D3AE0820 0482915A
	ds_read_b64_tr_b8 v[82:83], v80 offset:512                 // 000000009D14: D9C40200 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1536                // 000000009D1C: D9C40600 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2560                // 000000009D24: D9C40A00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3584                // 000000009D2C: D9C40E00 58000050
	s_waitcnt lgkmcnt(0)                                       // 000000009D34: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[72:79], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 000000009D38: D3AC0000 0003F7F2 D3AE0810 04429152
	ds_read_b64_tr_b8 v[90:91], v80 offset:768                 // 000000009D48: D9C40300 5A000050
	ds_read_b64_tr_b8 v[92:93], v80 offset:1792                // 000000009D50: D9C40700 5C000050
	ds_read_b64_tr_b8 v[94:95], v80 offset:2816                // 000000009D58: D9C40B00 5E000050
	ds_read_b64_tr_b8 v[96:97], v80 offset:3840                // 000000009D60: D9C40F00 60000050
	s_waitcnt lgkmcnt(0)                                       // 000000009D68: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[90:97], v[72:79], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 000000009D6C: D3AC0000 0003F7F2 D3AE0800 0402915A
	ds_read_b64_tr_b8 v[82:83], v80 offset:4096                // 000000009D7C: D9C41000 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:5120                // 000000009D84: D9C41400 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:6144                // 000000009D8C: D9C41800 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:7168                // 000000009D94: D9C41C00 58000050
	s_waitcnt lgkmcnt(0)                                       // 000000009D9C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[82:89], v[64:71], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 000000009DA0: D3AC0000 0003FBF2 D3AE0830 04C28152
	ds_read_b64_tr_b8 v[72:73], v80 offset:4352                // 000000009DB0: D9C41100 48000050
	ds_read_b64_tr_b8 v[74:75], v80 offset:5376                // 000000009DB8: D9C41500 4A000050
	ds_read_b64_tr_b8 v[76:77], v80 offset:6400                // 000000009DC0: D9C41900 4C000050
	ds_read_b64_tr_b8 v[78:79], v80 offset:7424                // 000000009DC8: D9C41D00 4E000050
	s_waitcnt lgkmcnt(0)                                       // 000000009DD0: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[72:79], v[64:71], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 000000009DD4: D3AC0000 0003FBF2 D3AE0820 04828148
	ds_read_b64_tr_b8 v[82:83], v80 offset:4608                // 000000009DE4: D9C41200 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:5632                // 000000009DEC: D9C41600 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:6656                // 000000009DF4: D9C41A00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:7680                // 000000009DFC: D9C41E00 58000050
	s_waitcnt lgkmcnt(0)                                       // 000000009E04: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[64:71], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 000000009E08: D3AC0000 0003FBF2 D3AE0810 04428152
	ds_read_b64_tr_b8 v[72:73], v80 offset:4864                // 000000009E18: D9C41300 48000050
	ds_read_b64_tr_b8 v[74:75], v80 offset:5888                // 000000009E20: D9C41700 4A000050
	ds_read_b64_tr_b8 v[76:77], v80 offset:6912                // 000000009E28: D9C41B00 4C000050
	ds_read_b64_tr_b8 v[78:79], v80 offset:7936                // 000000009E30: D9C41F00 4E000050
	s_waitcnt lgkmcnt(0)                                       // 000000009E38: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[72:79], v[64:71], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 000000009E3C: D3AC0000 0003FBF2 D3AE0800 04028148
	s_waitcnt vmcnt(4)                                         // 000000009E4C: BF8C0F74
	s_barrier                                                  // 000000009E50: BF8A0000
	s_mov_b32 s10, s11                                         // 000000009E54: BE8A000B
	s_mov_b32 s11, s26                                         // 000000009E58: BE8B001A
	s_and_b64 s[22:23], s[22:23], exec                         // 000000009E5C: 86967E16
	s_cbranch_scc1 310                                         // 000000009E60: BF850136 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x883c>
	s_branch 575                                               // 000000009E64: BF82023F <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8c64>
	s_mov_b64 s[22:23], 0                                      // 000000009E68: BE960180
	s_add_u32 s27, s91, s10                                    // 000000009E6C: 801B0A5B
	s_and_b32 s11, s27, 3                                      // 000000009E70: 860B831B
	s_and_b64 s[18:19], s[22:23], exec                         // 000000009E74: 86927E16
	s_mov_b64 s[20:21], s[0:1]                                 // 000000009E78: BE940100
	s_mov_b64 s[18:19], s[12:13]                               // 000000009E7C: BE92010C
	s_mov_b32 s17, s3                                          // 000000009E80: BE910003
	s_cbranch_scc0 170                                         // 000000009E84: BF8400AA <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8630>
	s_waitcnt lgkmcnt(0)                                       // 000000009E88: BF8CC07F
	s_add_u32 s76, s38, s72                                    // 000000009E8C: 804C4826
	s_addc_u32 s77, s39, s73                                   // 000000009E90: 824D4927
	s_add_u32 s80, s40, s72                                    // 000000009E94: 80504828
	s_addc_u32 s81, s41, s73                                   // 000000009E98: 82514929
	s_not_b32 s17, s68                                         // 000000009E9C: BE910444
	s_add_u32 s17, s4, s17                                     // 000000009EA0: 80111104
	s_and_b64 s[18:19], s[24:25], exec                         // 000000009EA4: 86927E18
	s_cselect_b32 s17, s17, s68                                // 000000009EA8: 85114411
	s_lshl_b32 s18, s17, 5                                     // 000000009EAC: 8E128511
	s_add_u32 s18, s18, 32                                     // 000000009EB0: 8012A012
	s_mul_i32 s18, s18, s5                                     // 000000009EB4: 92120512
	s_addk_i32 s18, 0x60                                       // 000000009EB8: B7120060
	s_lshr_b32 s18, s18, 7                                     // 000000009EBC: 8F128712
	v_readlane_b32 s19, v255, 1                                // 000000009EC0: D2890013 000103FF
	s_min_u32 s91, s19, s18                                    // 000000009EC8: 83DB1213
	v_readlane_b32 s18, v255, 10                               // 000000009ECC: D2890012 000115FF
	v_readlane_b32 s19, v255, 11                               // 000000009ED4: D2890013 000117FF
	s_and_b64 s[18:19], s[18:19], exec                         // 000000009EDC: 86927E12
	s_cbranch_scc0 90                                          // 000000009EE0: BF84005A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x854c>
	s_lshl_b32 s18, s11, 14                                    // 000000009EE4: 8E128E0B
	s_and_b32 s18, s18, 0x8000                                 // 000000009EE8: 8612FF12 00008000
	s_bitcmp1_b32 s27, 0                                       // 000000009EF0: BF0D801B
	s_cselect_b32 s19, 0x4000, 0                               // 000000009EF4: 851380FF 00004000
	s_cselect_b32 s20, s93, 0x10000                            // 000000009EFC: 8514FF5D 00010000
	s_or_b32 s19, s18, s19                                     // 000000009F04: 87131312
	s_or_b32 s19, s19, s88                                     // 000000009F08: 87135813
	s_mov_b32 m0, s19                                          // 000000009F0C: BEFC0013
	s_or_b32 s18, s18, s20                                     // 000000009F10: 87121412
	buffer_load_dwordx4 v233, s[76:79], 0 offen lds            // 000000009F14: E05D1000 801300E9
	s_add_u32 m0, s19, 0x1000                                  // 000000009F1C: 807CFF13 00001000
	v_readlane_b32 s20, v255, 14                               // 000000009F24: D2890014 00011DFF
	s_or_b32 s18, s18, s88                                     // 000000009F2C: 87125812
	s_mov_b32 s82, s78                                         // 000000009F30: BED2004E
	s_mov_b32 s83, s79                                         // 000000009F34: BED3004F
	s_nop 1                                                    // 000000009F38: BF800001
	buffer_load_dwordx4 v233, s[76:79], s20 offen lds          // 000000009F3C: E05D1000 141300E9
	s_or_b32 m0, s19, 0x2000                                   // 000000009F44: 877CFF13 00002000
	v_readlane_b32 s20, v255, 15                               // 000000009F4C: D2890014 00011FFF
	s_nop 4                                                    // 000000009F54: BF800004
	buffer_load_dwordx4 v233, s[76:79], s20 offen lds          // 000000009F58: E05D1000 141300E9
	s_add_u32 m0, s19, 0x3000                                  // 000000009F60: 807CFF13 00003000
	s_mul_i32 s19, s8, 0x60                                    // 000000009F68: 9213FF08 00000060
	buffer_load_dwordx4 v233, s[76:79], s19 offen lds          // 000000009F70: E05D1000 131300E9
	s_mov_b32 m0, s18                                          // 000000009F78: BEFC0012
	v_readlane_b32 s19, v255, 16                               // 000000009F7C: D2890013 000121FF
	buffer_load_dwordx4 v235, s[80:83], 0 offen lds            // 000000009F84: E05D1000 801400EB
	s_add_u32 m0, s18, 0x1000                                  // 000000009F8C: 807CFF12 00001000
	s_nop 0                                                    // 000000009F94: BF800000
	buffer_load_dwordx4 v235, s[80:83], s20 offen lds          // 000000009F98: E05D1000 141400EB
	s_or_b32 m0, s18, 0x2000                                   // 000000009FA0: 877CFF12 00002000
	s_nop 0                                                    // 000000009FA8: BF800000
	buffer_load_dwordx4 v235, s[80:83], s19 offen lds          // 000000009FAC: E05D1000 131400EB
	s_add_u32 m0, s18, 0x3000                                  // 000000009FB4: 807CFF12 00003000
	s_mul_i32 s18, s8, 0x44                                    // 000000009FBC: 9212FF08 00000044
	buffer_load_dwordx4 v235, s[80:83], s18 offen lds          // 000000009FC4: E05D1000 121400EB
	s_cmp_lt_u32 s91, 2                                        // 000000009FCC: BF0A825B
	s_cbranch_scc1 30                                          // 000000009FD0: BF85001E <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x854c>
	s_add_u32 s18, s11, 1                                      // 000000009FD4: 8012810B
	s_and_b32 s19, s18, 2                                      // 000000009FD8: 86138212
	s_lshl_b32 s19, s19, 14                                    // 000000009FDC: 8E138E13
	s_bitcmp1_b32 s18, 0                                       // 000000009FE0: BF0D8012
	s_cselect_b32 s18, 0x4000, 0                               // 000000009FE4: 851280FF 00004000
	s_or_b32 s18, s19, s18                                     // 000000009FEC: 87121213
	s_or_b32 s18, s18, s88                                     // 000000009FF0: 87125812
	s_mov_b32 m0, s18                                          // 000000009FF4: BEFC0012
	s_mul_i32 s19, s8, 0xa0                                    // 000000009FF8: 9213FF08 000000A0
	buffer_load_dwordx4 v233, s[76:79], s33 offen lds          // 00000000A000: E05D1000 211300E9
	s_add_u32 m0, s18, 0x1000                                  // 00000000A008: 807CFF12 00001000
	s_nop 0                                                    // 00000000A010: BF800000
	buffer_load_dwordx4 v233, s[76:79], s19 offen lds          // 00000000A014: E05D1000 131300E9
	s_or_b32 m0, s18, 0x2000                                   // 00000000A01C: 877CFF12 00002000
	s_mul_i32 s19, s8, 0xc0                                    // 00000000A024: 9213FF08 000000C0
	buffer_load_dwordx4 v233, s[76:79], s19 offen lds          // 00000000A02C: E05D1000 131300E9
	s_add_u32 m0, s18, 0x3000                                  // 00000000A034: 807CFF12 00003000
	s_mul_i32 s18, s8, 0xe0                                    // 00000000A03C: 9212FF08 000000E0
	buffer_load_dwordx4 v233, s[76:79], s18 offen lds          // 00000000A044: E05D1000 121300E9
	v_readlane_b32 s18, v255, 6                                // 00000000A04C: D2890012 00010DFF
	s_add_u32 s24, s18, s70                                    // 00000000A054: 80184612
	v_readlane_b32 s18, v255, 7                                // 00000000A058: D2890012 00010FFF
	s_addc_u32 s25, s18, s71                                   // 00000000A060: 82194712
	v_readlane_b32 s18, v255, 8                                // 00000000A064: D2890012 000111FF
	s_add_u32 s20, s18, s74                                    // 00000000A06C: 80144A12
	v_readlane_b32 s18, v255, 9                                // 00000000A070: D2890012 000113FF
	s_addc_u32 s21, s18, s75                                   // 00000000A078: 82154B12
	s_mov_b32 s18, s69                                         // 00000000A07C: BE920045
	s_mov_b32 s19, s16                                         // 00000000A080: BE930010
	s_lshl_b64 s[18:19], s[18:19], 2                           // 00000000A084: 8E928212
	v_readlane_b32 s27, v255, 12                               // 00000000A088: D289001B 000119FF
	s_add_u32 s27, s27, s18                                    // 00000000A090: 801B121B
	v_readlane_b32 s18, v255, 13                               // 00000000A094: D2890012 00011BFF
	s_addc_u32 s28, s18, s19                                   // 00000000A09C: 821C1312
	v_readlane_b32 s18, v255, 2                                // 00000000A0A0: D2890012 000105FF
	v_readlane_b32 s19, v255, 3                                // 00000000A0A8: D2890013 000107FF
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000A0B0: 86927E12
	s_cselect_b32 s18, 0, s27                                  // 00000000A0B4: 85121B80
	s_mul_i32 s17, s17, s5                                     // 00000000A0B8: 92110511
	v_readlane_b32 s27, v255, 0                                // 00000000A0BC: D289001B 000101FF
	s_cselect_b32 s19, 0, s28                                  // 00000000A0C4: 85131C80
	s_add_u32 s27, s17, s27                                    // 00000000A0C8: 801B1B11
	s_lshl_b32 s17, s27, 5                                     // 00000000A0CC: 8E11851B
	s_bfe_u32 s35, s27, 0x190002                               // 00000000A0D0: 92A3FF1B 00190002
	v_or_b32_e32 v80, s17, v216                                // 00000000A0D8: 28A1B011
	v_mul_lo_u32 v80, v80, s7                                  // 00000000A0DC: D2850050 00000F50
	scratch_load_dword v81, off, off offset:36                 // 00000000A0E4: DC504024 517F0000
	s_waitcnt vmcnt(0)                                         // 00000000A0EC: BF8C0F70
	v_add_u32_e32 v80, v81, v80                                // 00000000A0F0: 68A0A151
	global_load_dwordx4 v[220:223], v80, s[24:25]              // 00000000A0F4: DC5C8000 DC180050
	global_load_dwordx4 v[224:227], v80, s[24:25] offset:16    // 00000000A0FC: DC5C8010 E0180050
	global_load_dwordx4 v[200:203], v80, s[24:25] offset:64    // 00000000A104: DC5C8040 C8180050
	global_load_dwordx4 v[204:207], v80, s[24:25] offset:80    // 00000000A10C: DC5C8050 CC180050
	s_mov_b32 s24, 0x110000                                    // 00000000A114: BE9800FF 00110000
	s_mov_b32 s83, 0x110000                                    // 00000000A11C: BED300FF 00110000
	s_mov_b32 s94, s68                                         // 00000000A124: BEDE0044
	v_writelane_b32 v255, s24, 17                              // 00000000A128: D28A00FF 00012218
	s_setprio 1                                                // 00000000A130: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[72:79], 0// 00000000A134: D3AD0050 020291C0
	s_nop 11                                                   // 00000000A13C: BF80000B
	v_lshlrev_b32_e32 v81, 23, v251                            // 00000000A140: 24A3F697
	v_mul_f32_e32 v80, v80, v81                                // 00000000A144: 0AA0A350
	v_add_f32_e32 v84, v250, v80                               // 00000000A148: 02A8A1FA
	v_mfma_f32_16x16x128_f8f6f4 v[80:83], v[192:199], v[64:71], 0// 00000000A14C: D3AD0050 020281C0
	s_add_u32 s10, s15, s10                                    // 00000000A154: 800A0A0F
	s_and_b32 s15, s10, 2                                      // 00000000A158: 860F820A
	s_lshl_b32 s15, s15, 14                                    // 00000000A15C: 8E0F8E0F
	s_bitcmp1_b32 s10, 0                                       // 00000000A160: BF0D800A
	s_nop 7                                                    // 00000000A164: BF800007
	v_lshlrev_b32_e32 v81, 23, v253                            // 00000000A168: 24A3FA97
	s_cselect_b32 s10, s93, 0x10000                            // 00000000A16C: 850AFF5D 00010000
	v_mul_f32_e32 v80, v80, v81                                // 00000000A174: 0AA0A350
	s_or_b32 s15, s15, s10                                     // 00000000A178: 870F0A0F
	v_add_f32_e32 v250, v84, v80                               // 00000000A17C: 03F4A154
	v_or_b32_e32 v80, s15, v245                                // 00000000A180: 28A1EA0F
	v_add_u32_e32 v80, v80, v244                               // 00000000A184: 68A1E950
	ds_read_b64_tr_b8 v[82:83], v80                            // 00000000A188: D9C40000 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1024                // 00000000A190: D9C40400 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2048                // 00000000A198: D9C40800 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3072                // 00000000A1A0: D9C40C00 58000050
	ds_read_b64_tr_b8 v[90:91], v80 offset:256                 // 00000000A1A8: D9C40100 5A000050
	ds_read_b64_tr_b8 v[92:93], v80 offset:1280                // 00000000A1B0: D9C40500 5C000050
	ds_read_b64_tr_b8 v[94:95], v80 offset:2304                // 00000000A1B8: D9C40900 5E000050
	ds_read_b64_tr_b8 v[96:97], v80 offset:3328                // 00000000A1C0: D9C40D00 60000050
	s_waitcnt lgkmcnt(0)                                       // 00000000A1C8: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[82:89], v[72:79], v[48:63], v242, v251 op_sel_hi:[0,0,0]// 00000000A1CC: D3AC0000 0003F7F2 D3AE0830 04C29152
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[90:97], v[72:79], v[32:47], v242, v251 op_sel_hi:[0,0,0]// 00000000A1DC: D3AC0000 0003F7F2 D3AE0820 0482915A
	ds_read_b64_tr_b8 v[82:83], v80 offset:512                 // 00000000A1EC: D9C40200 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1536                // 00000000A1F4: D9C40600 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2560                // 00000000A1FC: D9C40A00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3584                // 00000000A204: D9C40E00 58000050
	s_waitcnt lgkmcnt(0)                                       // 00000000A20C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[72:79], v[16:31], v242, v251 op_sel_hi:[0,0,0]// 00000000A210: D3AC0000 0003F7F2 D3AE0810 04429152
	ds_read_b64_tr_b8 v[90:91], v80 offset:768                 // 00000000A220: D9C40300 5A000050
	ds_read_b64_tr_b8 v[92:93], v80 offset:1792                // 00000000A228: D9C40700 5C000050
	ds_read_b64_tr_b8 v[94:95], v80 offset:2816                // 00000000A230: D9C40B00 5E000050
	ds_read_b64_tr_b8 v[96:97], v80 offset:3840                // 00000000A238: D9C40F00 60000050
	s_waitcnt lgkmcnt(0)                                       // 00000000A240: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[90:97], v[72:79], v[0:15], v242, v251 op_sel_hi:[0,0,0]// 00000000A244: D3AC0000 0003F7F2 D3AE0800 0402915A
	ds_read_b64_tr_b8 v[82:83], v80 offset:4096                // 00000000A254: D9C41000 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:5120                // 00000000A25C: D9C41400 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:6144                // 00000000A264: D9C41800 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:7168                // 00000000A26C: D9C41C00 58000050
	s_waitcnt lgkmcnt(0)                                       // 00000000A274: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[82:89], v[64:71], v[48:63], v242, v253 op_sel_hi:[0,0,0]// 00000000A278: D3AC0000 0003FBF2 D3AE0830 04C28152
	ds_read_b64_tr_b8 v[72:73], v80 offset:4352                // 00000000A288: D9C41100 48000050
	ds_read_b64_tr_b8 v[74:75], v80 offset:5376                // 00000000A290: D9C41500 4A000050
	ds_read_b64_tr_b8 v[76:77], v80 offset:6400                // 00000000A298: D9C41900 4C000050
	ds_read_b64_tr_b8 v[78:79], v80 offset:7424                // 00000000A2A0: D9C41D00 4E000050
	s_waitcnt lgkmcnt(0)                                       // 00000000A2A8: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[72:79], v[64:71], v[32:47], v242, v253 op_sel_hi:[0,0,0]// 00000000A2AC: D3AC0000 0003FBF2 D3AE0820 04828148
	ds_read_b64_tr_b8 v[82:83], v80 offset:4608                // 00000000A2BC: D9C41200 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:5632                // 00000000A2C4: D9C41600 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:6656                // 00000000A2CC: D9C41A00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:7680                // 00000000A2D4: D9C41E00 58000050
	s_waitcnt lgkmcnt(0)                                       // 00000000A2DC: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[64:71], v[16:31], v242, v253 op_sel_hi:[0,0,0]// 00000000A2E0: D3AC0000 0003FBF2 D3AE0810 04428152
	ds_read_b64_tr_b8 v[72:73], v80 offset:4864                // 00000000A2F0: D9C41300 48000050
	ds_read_b64_tr_b8 v[74:75], v80 offset:5888                // 00000000A2F8: D9C41700 4A000050
	ds_read_b64_tr_b8 v[76:77], v80 offset:6912                // 00000000A300: D9C41B00 4C000050
	ds_read_b64_tr_b8 v[78:79], v80 offset:7936                // 00000000A308: D9C41F00 4E000050
	s_waitcnt lgkmcnt(0)                                       // 00000000A310: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[72:79], v[64:71], v[0:15], v242, v253 op_sel_hi:[0,0,0]// 00000000A314: D3AC0000 0003FBF2 D3AE0800 04028148
	s_waitcnt vmcnt(4)                                         // 00000000A324: BF8C0F74
	s_barrier                                                  // 00000000A328: BF8A0000
	s_mov_b32 s10, s11                                         // 00000000A32C: BE8A000B
	s_mov_b32 s11, s26                                         // 00000000A330: BE8B001A
	s_and_b64 s[22:23], s[22:23], exec                         // 00000000A334: 86967E16
	s_cbranch_scc0 266                                         // 00000000A338: BF84010A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x8c64>
	s_nop 15                                                   // 00000000A33C: BF80000F
	s_nop 3                                                    // 00000000A340: BF800003
	v_rcp_f32_e32 v64, v250                                    // 00000000A344: 7E8045FA
	v_log_f32_e32 v65, v250                                    // 00000000A348: 7E8243FA
	s_nop 1                                                    // 00000000A34C: BF800001
	v_mul_f32_e32 v64, v240, v64                               // 00000000A350: 0A8081F0
	v_mul_f32_e32 v48, v48, v64                                // 00000000A354: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 00000000A358: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 00000000A35C: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 00000000A360: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 00000000A364: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 00000000A368: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 00000000A36C: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 00000000A370: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 00000000A374: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 00000000A378: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 00000000A37C: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 00000000A380: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 00000000A384: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 00000000A388: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 00000000A38C: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 00000000A390: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 00000000A394: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 00000000A398: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 00000000A39C: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 00000000A3A0: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 00000000A3A4: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 00000000A3A8: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 00000000A3AC: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 00000000A3B0: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 00000000A3B4: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 00000000A3B8: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 00000000A3BC: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 00000000A3C0: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 00000000A3C4: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 00000000A3C8: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 00000000A3CC: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 00000000A3D0: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 00000000A3D4: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 00000000A3D8: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 00000000A3DC: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 00000000A3E0: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 00000000A3E4: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 00000000A3E8: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 00000000A3EC: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 00000000A3F0: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 00000000A3F4: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 00000000A3F8: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 00000000A3FC: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 00000000A400: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 00000000A404: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 00000000A408: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 00000000A40C: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 00000000A410: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 00000000A414: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 00000000A418: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 00000000A41C: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 00000000A420: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 00000000A424: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 00000000A428: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 00000000A42C: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 00000000A430: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 00000000A434: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 00000000A438: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 00000000A43C: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 00000000A440: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 00000000A444: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 00000000A448: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000A44C: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000A450: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000A454: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000A45C: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000A464: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000A46C: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000A474: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000A47C: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000A484: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000A48C: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000A494: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000A49C: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000A4A4: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000A4AC: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000A4B4: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000A4BC: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000A4C4: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000A4CC: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000A4D4: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000A4DC: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000A4E4: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000A4EC: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000A4F4: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000A4FC: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000A504: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000A50C: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000A514: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000A51C: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000A524: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000A52C: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000A534: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000A53C: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000A544: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000A54C: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000A554: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000A558: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000A55C: 7E000304
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000A560: 7E10B509
	v_mov_b32_e32 v1, v2                                       // 00000000A564: 7E020302
	v_mov_b32_e32 v2, v5                                       // 00000000A568: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000A56C: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000A570: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000A574: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000A578: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000A57C: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000A580: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000A584: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000A588: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000A58C: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000A590: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000A594: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000A598: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000A59C: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000A5A0: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000A5A4: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000A5A8: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000A5AC: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000A5B0: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000A5B4: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000A5B8: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000A5BC: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000A5C0: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000A5C4: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000A5C8: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000A5CC: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000A5D0: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000A5D4: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000A5D8: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000A5DC: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000A5E0: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000A5E4: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000A5E8: 7E380320
	v_add_f32_e32 v32, v252, v65                               // 00000000A5EC: 024083FC
	v_mov_b32_e32 v29, v30                                     // 00000000A5F0: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000A5F4: 7E3C0321
	v_add_f32_e32 v32, -4.0, v32                               // 00000000A5F8: 024040F7
	v_add_f32_e32 v32, -2.0, v32                               // 00000000A5FC: 024040F5
	v_mul_f32_e32 v32, 0x3f317218, v32                         // 00000000A600: 0A4040FF 3F317218
	ds_write_b128 v228, v[0:3]                                 // 00000000A608: D9BE0000 000000E4
	ds_write_b128 v230, v[4:7]                                 // 00000000A610: D9BE0000 000004E6
	ds_write_b128 v229, v[8:11]                                // 00000000A618: D9BE0000 000008E5
	v_xor_b32_e32 v0, 0x60, v228                               // 00000000A620: 2A01C8FF 00000060
	ds_write_b128 v0, v[12:15]                                 // 00000000A628: D9BE0000 00000C00
	v_xor_b32_e32 v0, 0x80, v228                               // 00000000A630: 2A01C8FF 00000080
	ds_write_b128 v0, v[16:19]                                 // 00000000A638: D9BE0000 00001000
	v_xor_b32_e32 v0, 0xa0, v228                               // 00000000A640: 2A01C8FF 000000A0
	ds_write_b128 v0, v[20:23]                                 // 00000000A648: D9BE0000 00001400
	v_xor_b32_e32 v0, 0xc0, v228                               // 00000000A650: 2A01C8FF 000000C0
	ds_write_b128 v0, v[24:27]                                 // 00000000A658: D9BE0000 00001800
	v_xor_b32_e32 v0, 0xe0, v228                               // 00000000A660: 2A01C8FF 000000E0
	ds_write_b128 v0, v[28:31]                                 // 00000000A668: D9BE0000 00001C00
	ds_read_b128 v[8:11], v219                                 // 00000000A670: D9FE0000 080000DB
	ds_read_b128 v[12:15], v218 offset:1024                    // 00000000A678: D9FE0400 0C0000DA
	ds_read_b128 v[16:19], v237 offset:2048                    // 00000000A680: D9FE0800 100000ED
	ds_read_b128 v[20:23], v254 offset:3072                    // 00000000A688: D9FE0C00 140000FE
	ds_read_b128 v[24:27], v219 offset:4096                    // 00000000A690: D9FE1000 180000DB
	ds_read_b128 v[28:31], v218 offset:5120                    // 00000000A698: D9FE1400 1C0000DA
	ds_read_b128 v[34:37], v237 offset:6144                    // 00000000A6A0: D9FE1800 220000ED
	ds_read_b128 v[38:41], v254 offset:7168                    // 00000000A6A8: D9FE1C00 260000FE
	v_add_u32_e32 v0, s3, v217                                 // 00000000A6B0: 6801B203
	v_mul_lo_u32 v0, v0, s9                                    // 00000000A6B4: D2850000 00001300
	scratch_load_dword v1, off, off offset:32                  // 00000000A6BC: DC504020 017F0000
	s_waitcnt vmcnt(0)                                         // 00000000A6C4: BF8C0F70
	v_add_u32_e32 v0, v0, v1                                   // 00000000A6C8: 68000300
	v_add_u32_e32 v1, s6, v0                                   // 00000000A6CC: 68020006
	v_add_u32_e32 v2, s6, v1                                   // 00000000A6D0: 68040206
	v_add_u32_e32 v3, s6, v2                                   // 00000000A6D4: 68060406
	v_add_u32_e32 v4, s6, v3                                   // 00000000A6D8: 68080606
	v_add_u32_e32 v5, s6, v4                                   // 00000000A6DC: 680A0806
	v_add_u32_e32 v6, s6, v5                                   // 00000000A6E0: 680C0A06
	v_add_u32_e32 v7, s6, v6                                   // 00000000A6E4: 680E0C06
	s_waitcnt lgkmcnt(0)                                       // 00000000A6E8: BF8CC07F
	global_store_dwordx4 v0, v[8:11], s[0:1]                   // 00000000A6EC: DC7C8000 00000800
	s_waitcnt lgkmcnt(6)                                       // 00000000A6F4: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[0:1]                  // 00000000A6F8: DC7C8000 00000C01
	s_waitcnt lgkmcnt(5)                                       // 00000000A700: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[0:1]                  // 00000000A704: DC7C8000 00001002
	s_waitcnt lgkmcnt(4)                                       // 00000000A70C: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[0:1]                  // 00000000A710: DC7C8000 00001403
	s_waitcnt lgkmcnt(3)                                       // 00000000A718: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[0:1]                  // 00000000A71C: DC7C8000 00001804
	s_waitcnt lgkmcnt(2)                                       // 00000000A724: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[0:1]                  // 00000000A728: DC7C8000 00001C05
	s_waitcnt lgkmcnt(1)                                       // 00000000A730: BF8CC17F
	global_store_dwordx4 v6, v[34:37], s[0:1]                  // 00000000A734: DC7C8000 00002206
	s_waitcnt lgkmcnt(0)                                       // 00000000A73C: BF8CC07F
	global_store_dwordx4 v7, v[38:41], s[0:1]                  // 00000000A740: DC7C8000 00002607
	v_add_u32_e32 v0, s3, v216                                 // 00000000A748: 6801B003
	v_lshlrev_b32_e32 v0, 2, v0                                // 00000000A74C: 24000082
	s_cmp_eq_u64 s[12:13], 0                                   // 00000000A750: BF12800C
	s_mov_b64 s[0:1], s[20:21]                                 // 00000000A754: BE800114
	s_mov_b32 s3, s17                                          // 00000000A758: BE830011
	s_cbranch_scc0 57994                                       // 00000000A75C: BF84E28A <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1688>
	s_branch 56941                                             // 00000000A760: BF82DE6D <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x618>
	s_nop 15                                                   // 00000000A764: BF80000F
	s_nop 3                                                    // 00000000A768: BF800003
	v_rcp_f32_e32 v64, v250                                    // 00000000A76C: 7E8045FA
	v_log_f32_e32 v65, v250                                    // 00000000A770: 7E8243FA
	s_nop 1                                                    // 00000000A774: BF800001
	v_mul_f32_e32 v64, v240, v64                               // 00000000A778: 0A8081F0
	v_mul_f32_e32 v48, v48, v64                                // 00000000A77C: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 00000000A780: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 00000000A784: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 00000000A788: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 00000000A78C: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 00000000A790: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 00000000A794: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 00000000A798: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 00000000A79C: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 00000000A7A0: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 00000000A7A4: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 00000000A7A8: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 00000000A7AC: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 00000000A7B0: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 00000000A7B4: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 00000000A7B8: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 00000000A7BC: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 00000000A7C0: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 00000000A7C4: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 00000000A7C8: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 00000000A7CC: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 00000000A7D0: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 00000000A7D4: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 00000000A7D8: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 00000000A7DC: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 00000000A7E0: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 00000000A7E4: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 00000000A7E8: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 00000000A7EC: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 00000000A7F0: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 00000000A7F4: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 00000000A7F8: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 00000000A7FC: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 00000000A800: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 00000000A804: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 00000000A808: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 00000000A80C: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 00000000A810: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 00000000A814: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 00000000A818: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 00000000A81C: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 00000000A820: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 00000000A824: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 00000000A828: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 00000000A82C: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 00000000A830: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 00000000A834: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 00000000A838: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 00000000A83C: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 00000000A840: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 00000000A844: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 00000000A848: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 00000000A84C: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 00000000A850: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 00000000A854: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 00000000A858: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 00000000A85C: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 00000000A860: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 00000000A864: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 00000000A868: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 00000000A86C: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 00000000A870: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000A874: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000A878: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000A87C: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000A884: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000A88C: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000A894: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000A89C: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000A8A4: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000A8AC: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000A8B4: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000A8BC: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000A8C4: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000A8CC: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000A8D4: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000A8DC: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000A8E4: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000A8EC: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000A8F4: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000A8FC: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000A904: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000A90C: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000A914: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000A91C: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000A924: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000A92C: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000A934: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000A93C: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000A944: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000A94C: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000A954: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000A95C: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000A964: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000A96C: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000A974: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000A97C: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000A980: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000A984: 7E000304
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000A988: 7E10B509
	v_mov_b32_e32 v1, v2                                       // 00000000A98C: 7E020302
	v_mov_b32_e32 v2, v5                                       // 00000000A990: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000A994: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000A998: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000A99C: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000A9A0: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000A9A4: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000A9A8: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000A9AC: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000A9B0: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000A9B4: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000A9B8: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000A9BC: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000A9C0: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000A9C4: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000A9C8: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000A9CC: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000A9D0: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000A9D4: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000A9D8: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000A9DC: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000A9E0: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000A9E4: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000A9E8: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000A9EC: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000A9F0: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000A9F4: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000A9F8: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000A9FC: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000AA00: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000AA04: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000AA08: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000AA0C: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000AA10: 7E380320
	v_add_f32_e32 v32, v252, v65                               // 00000000AA14: 024083FC
	v_mov_b32_e32 v29, v30                                     // 00000000AA18: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000AA1C: 7E3C0321
	v_add_f32_e32 v32, -4.0, v32                               // 00000000AA20: 024040F7
	v_add_f32_e32 v32, -2.0, v32                               // 00000000AA24: 024040F5
	v_mul_f32_e32 v32, 0x3f317218, v32                         // 00000000AA28: 0A4040FF 3F317218
	ds_write_b128 v228, v[0:3]                                 // 00000000AA30: D9BE0000 000000E4
	ds_write_b128 v230, v[4:7]                                 // 00000000AA38: D9BE0000 000004E6
	ds_write_b128 v229, v[8:11]                                // 00000000AA40: D9BE0000 000008E5
	scratch_load_dword v0, off, off offset:56                  // 00000000AA48: DC504038 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000AA50: BF8C0F70
	ds_write_b128 v0, v[12:15]                                 // 00000000AA54: D9BE0000 00000C00
	scratch_load_dword v0, off, off offset:52                  // 00000000AA5C: DC504034 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000AA64: BF8C0F70
	ds_write_b128 v0, v[16:19]                                 // 00000000AA68: D9BE0000 00001000
	scratch_load_dword v0, off, off offset:48                  // 00000000AA70: DC504030 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000AA78: BF8C0F70
	ds_write_b128 v0, v[20:23]                                 // 00000000AA7C: D9BE0000 00001400
	scratch_load_dword v0, off, off offset:44                  // 00000000AA84: DC50402C 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000AA8C: BF8C0F70
	ds_write_b128 v0, v[24:27]                                 // 00000000AA90: D9BE0000 00001800
	scratch_load_dword v0, off, off offset:40                  // 00000000AA98: DC504028 007F0000
	s_waitcnt vmcnt(0)                                         // 00000000AAA0: BF8C0F70
	ds_write_b128 v0, v[28:31]                                 // 00000000AAA4: D9BE0000 00001C00
	ds_read_b128 v[8:11], v219                                 // 00000000AAAC: D9FE0000 080000DB
	ds_read_b128 v[12:15], v218 offset:1024                    // 00000000AAB4: D9FE0400 0C0000DA
	ds_read_b128 v[16:19], v237 offset:2048                    // 00000000AABC: D9FE0800 100000ED
	ds_read_b128 v[20:23], v254 offset:3072                    // 00000000AAC4: D9FE0C00 140000FE
	ds_read_b128 v[24:27], v219 offset:4096                    // 00000000AACC: D9FE1000 180000DB
	ds_read_b128 v[28:31], v218 offset:5120                    // 00000000AAD4: D9FE1400 1C0000DA
	ds_read_b128 v[34:37], v237 offset:6144                    // 00000000AADC: D9FE1800 220000ED
	ds_read_b128 v[38:41], v254 offset:7168                    // 00000000AAE4: D9FE1C00 260000FE
	v_add_u32_e32 v0, s3, v217                                 // 00000000AAEC: 6801B203
	v_mul_lo_u32 v0, v0, s9                                    // 00000000AAF0: D2850000 00001300
	scratch_load_dword v1, off, off offset:32                  // 00000000AAF8: DC504020 017F0000
	s_waitcnt vmcnt(0)                                         // 00000000AB00: BF8C0F70
	v_add_u32_e32 v0, v0, v1                                   // 00000000AB04: 68000300
	v_add_u32_e32 v1, s6, v0                                   // 00000000AB08: 68020006
	v_add_u32_e32 v2, s6, v1                                   // 00000000AB0C: 68040206
	v_add_u32_e32 v3, s6, v2                                   // 00000000AB10: 68060406
	v_add_u32_e32 v4, s6, v3                                   // 00000000AB14: 68080606
	v_add_u32_e32 v5, s6, v4                                   // 00000000AB18: 680A0806
	v_add_u32_e32 v6, s6, v5                                   // 00000000AB1C: 680C0A06
	v_add_u32_e32 v7, s6, v6                                   // 00000000AB20: 680E0C06
	s_waitcnt lgkmcnt(0)                                       // 00000000AB24: BF8CC07F
	global_store_dwordx4 v0, v[8:11], s[0:1]                   // 00000000AB28: DC7C8000 00000800
	s_waitcnt lgkmcnt(6)                                       // 00000000AB30: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[0:1]                  // 00000000AB34: DC7C8000 00000C01
	s_waitcnt lgkmcnt(5)                                       // 00000000AB3C: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[0:1]                  // 00000000AB40: DC7C8000 00001002
	s_waitcnt lgkmcnt(4)                                       // 00000000AB48: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[0:1]                  // 00000000AB4C: DC7C8000 00001403
	s_waitcnt lgkmcnt(3)                                       // 00000000AB54: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[0:1]                  // 00000000AB58: DC7C8000 00001804
	s_waitcnt lgkmcnt(2)                                       // 00000000AB60: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[0:1]                  // 00000000AB64: DC7C8000 00001C05
	s_waitcnt lgkmcnt(1)                                       // 00000000AB6C: BF8CC17F
	global_store_dwordx4 v6, v[34:37], s[0:1]                  // 00000000AB70: DC7C8000 00002206
	s_waitcnt lgkmcnt(0)                                       // 00000000AB78: BF8CC07F
	global_store_dwordx4 v7, v[38:41], s[0:1]                  // 00000000AB7C: DC7C8000 00002607
	v_add_u32_e32 v0, s3, v216                                 // 00000000AB84: 6801B003
	v_lshlrev_b32_e32 v0, 2, v0                                // 00000000AB88: 24000082
	s_cmp_eq_u64 s[12:13], 0                                   // 00000000AB8C: BF12800C
	s_cbranch_scc1 2                                           // 00000000AB90: BF850002 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x909c>
	global_store_dword v0, v32, s[12:13]                       // 00000000AB94: DC708000 000C2000
	v_readlane_b32 s0, v255, 10                                // 00000000AB9C: D2890000 000115FF
	v_readlane_b32 s1, v255, 11                                // 00000000ABA4: D2890001 000117FF
	s_and_b64 s[0:1], s[0:1], exec                             // 00000000ABAC: 86807E00
	s_cbranch_scc0 1                                           // 00000000ABB0: BF840001 <_ZN15fmha_fp8_native6attendILi128EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x90b8>
	s_barrier                                                  // 00000000ABB4: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000ABB8: BF8C0F70
	s_endpgm                                                   // 00000000ABBC: BF810000
		...

000000000000ac00 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE>:
	s_load_dwordx16 s[36:51], s[0:1], 0x0                      // 00000000AC00: C0120900 00000000
	s_load_dwordx16 s[4:19], s[0:1], 0x40                      // 00000000AC08: C0120100 00000040
	s_load_dwordx4 s[20:23], s[0:1], 0x80                      // 00000000AC10: C00A0500 00000080
	s_load_dwordx2 s[24:25], s[0:1], 0x90                      // 00000000AC18: C0060600 00000090
	v_and_b32_e32 v2, 63, v0                                   // 00000000AC20: 260400BF
	v_bfe_u32 v1, v0, 5, 1                                     // 00000000AC24: D1C80001 02050B00
	v_lshlrev_b32_e32 v3, 8, v0                                // 00000000AC2C: 24060088
	s_movk_i32 s0, 0xe0                                        // 00000000AC30: B00000E0
	v_and_b32_e32 v3, 0x1f00, v3                               // 00000000AC34: 260606FF 00001F00
	v_add_lshl_u32 v4, v1, v2, 5                               // 00000000AC3C: D1FE0004 02160501
	v_and_or_b32 v161, v4, s0, v3                              // 00000000AC44: D20100A1 040C0104
	v_add_u32_e32 v5, 64, v4                                   // 00000000AC4C: 680A08C0
	v_add_u32_e32 v4, 0x80, v4                                 // 00000000AC50: 680808FF 00000080
	v_readfirstlane_b32 s3, v0                                 // 00000000AC58: 7E060500
	v_and_or_b32 v162, v5, s0, v3                              // 00000000AC5C: D20100A2 040C0105
	v_and_or_b32 v163, v4, s0, v3                              // 00000000AC64: D20100A3 040C0104
	s_waitcnt lgkmcnt(0)                                       // 00000000AC6C: BF8CC07F
	s_cmp_eq_u64 s[20:21], 0                                   // 00000000AC70: BF128014
	s_cbranch_scc1 14                                          // 00000000AC74: BF85000E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xb0>
	s_load_dword s0, s[20:21], 0x0                             // 00000000AC78: C002000A 00000000
	s_cmp_eq_u64 s[22:23], 0                                   // 00000000AC80: BF128016
	s_cbranch_scc1 13                                          // 00000000AC84: BF85000D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xbc>
	s_load_dword s1, s[22:23], 0x0                             // 00000000AC88: C002004B 00000000
	s_waitcnt lgkmcnt(0)                                       // 00000000AC90: BF8CC07F
	v_mov_b32_e32 v3, s1                                       // 00000000AC94: 7E060201
	v_mul_f32_e32 v3, s0, v3                                   // 00000000AC98: 0A060600
	s_cmp_eq_u64 s[24:25], 0                                   // 00000000AC9C: BF128018
	s_cbranch_scc1 10                                          // 00000000ACA0: BF85000A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xcc>
	s_load_dword s15, s[24:25], 0x0                            // 00000000ACA4: C00203CC 00000000
	s_branch 8                                                 // 00000000ACAC: BF820008 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xd0>
	s_mov_b32 s0, 1.0                                          // 00000000ACB0: BE8000F2
	s_cmp_eq_u64 s[22:23], 0                                   // 00000000ACB4: BF128016
	s_cbranch_scc0 65523                                       // 00000000ACB8: BF84FFF3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x88>
	s_waitcnt lgkmcnt(0)                                       // 00000000ACBC: BF8CC07F
	v_mov_b32_e32 v3, s0                                       // 00000000ACC0: 7E060200
	s_cmp_eq_u64 s[24:25], 0                                   // 00000000ACC4: BF128018
	s_cbranch_scc0 65526                                       // 00000000ACC8: BF84FFF6 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xa4>
	s_mov_b32 s15, 1.0                                         // 00000000ACCC: BE8F00F2
	v_and_b32_e32 v5, 1, v0                                    // 00000000ACD0: 260A0081
	v_bfe_u32 v4, v0, 1, 3                                     // 00000000ACD4: D1C80004 020D0300
	v_lshlrev_b32_e32 v6, 4, v5                                // 00000000ACDC: 240C0A84
	v_lshrrev_b32_e32 v7, 4, v0                                // 00000000ACE0: 200E0084
	v_sub_u32_e32 v8, v4, v7                                   // 00000000ACE4: 6A100F04
	v_and_b32_e32 v8, 7, v8                                    // 00000000ACE8: 26101087
	v_cmp_gt_u32_e32 vcc, 6, v8                                // 00000000ACEC: 7D981086
	s_nop 1                                                    // 00000000ACF0: BF800001
	v_cndmask_b32_e32 v8, 0, v8, vcc                           // 00000000ACF4: 00101080
	v_lshlrev_b32_e32 v8, 5, v8                                // 00000000ACF8: 24101085
	v_or_b32_e32 v8, v8, v6                                    // 00000000ACFC: 28100D08
	v_mul_lo_u32 v7, s6, v7                                    // 00000000AD00: D2850007 00020E06
	v_add_u32_e32 v164, v7, v8                                 // 00000000AD08: 69481107
	v_or_b32_e32 v7, 0x200, v0                                 // 00000000AD0C: 280E00FF 00000200
	v_lshrrev_b32_e32 v7, 4, v7                                // 00000000AD14: 200E0E84
	v_sub_u32_e32 v4, v4, v7                                   // 00000000AD18: 6A080F04
	v_and_b32_e32 v4, 7, v4                                    // 00000000AD1C: 26080887
	v_cmp_gt_u32_e32 vcc, 6, v4                                // 00000000AD20: 7D980886
	s_nop 1                                                    // 00000000AD24: BF800001
	v_cndmask_b32_e32 v4, 0, v4, vcc                           // 00000000AD28: 00080880
	v_lshlrev_b32_e32 v4, 5, v4                                // 00000000AD2C: 24080885
	v_or_b32_e32 v4, v4, v6                                    // 00000000AD30: 28080D04
	v_mul_lo_u32 v5, s6, v7                                    // 00000000AD34: D2850005 00020E06
	v_add_u32_e32 v165, v5, v4                                 // 00000000AD3C: 694A0905
	v_bfe_u32 v4, v0, 7, 1                                     // 00000000AD40: D1C80004 02050F00
	v_lshrrev_b32_e32 v5, 8, v0                                // 00000000AD48: 200A0088
	v_lshlrev_b32_e32 v10, 5, v4                               // 00000000AD4C: 24140885
	v_bfe_u32 v6, v0, 6, 1                                     // 00000000AD50: D1C80006 02050D00
	v_lshl_or_b32 v12, v5, 2, v10                              // 00000000AD58: D200000C 04290505
	v_bfe_u32 v7, v0, 2, 1                                     // 00000000AD60: D1C80007 02050500
	v_lshl_or_b32 v13, v6, 4, v12                              // 00000000AD68: D200000D 04310906
	v_and_b32_e32 v8, 3, v0                                    // 00000000AD70: 26100083
	v_lshl_or_b32 v14, v7, 3, v13                              // 00000000AD74: D200000E 04350707
	v_bfe_u32 v9, v0, 3, 3                                     // 00000000AD7C: D1C80009 020D0700
	v_or_b32_e32 v15, v14, v8                                  // 00000000AD84: 281E110E
	v_lshlrev_b32_e32 v11, 4, v9                               // 00000000AD88: 24161284
	v_mul_lo_u32 v16, s7, v15                                  // 00000000AD8C: D2850010 00021E07
	v_add_u32_e32 v166, v16, v11                               // 00000000AD94: 694C1710
	s_cmp_ge_u32 s2, s49                                       // 00000000AD98: BF093102
	s_cbranch_scc1 5574                                        // 00000000AD9C: BF8515C6 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x58b8>
	s_lshr_b32 s24, s3, 8                                      // 00000000ADA0: 8F188803
	s_cmp_eq_u32 s4, 0                                         // 00000000ADA4: BF068004
	s_cselect_b64 s[0:1], -1, 0                                // 00000000ADA8: 858080C1
	s_and_b64 s[16:17], s[0:1], exec                           // 00000000ADAC: 86907E00
	s_cselect_b32 s25, 0, s24                                  // 00000000ADB0: 85191880
	s_lshl_b32 s4, s2, 5                                       // 00000000ADB4: 8E048502
	s_load_dwordx8 s[52:59], s[46:47], s4 offset:0x0           // 00000000ADB8: C00E4D17 08000000
	s_cmp_eq_u64 s[44:45], 0                                   // 00000000ADC0: BF12802C
	s_cselect_b64 s[34:35], -1, 0                              // 00000000ADC4: 85A280C1
	s_mov_b64 s[18:19], 0                                      // 00000000ADC8: BE920180
	s_mul_i32 s20, s11, s25                                    // 00000000ADCC: 9214190B
	s_and_b64 vcc, exec, s[34:35]                              // 00000000ADD0: 86EA227E
	s_cbranch_vccnz 10                                         // 00000000ADD4: BF87000A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x200>
	s_mov_b32 s17, 0                                           // 00000000ADD8: BE910080
	s_waitcnt lgkmcnt(0)                                       // 00000000ADDC: BF8CC07F
	s_mov_b32 s16, s53                                         // 00000000ADE0: BE900035
	s_lshl_b64 s[18:19], s[16:17], 2                           // 00000000ADE4: 8E928210
	s_mov_b32 s21, s17                                         // 00000000ADE8: BE950011
	s_add_u32 s4, s44, s18                                     // 00000000ADEC: 8004122C
	s_addc_u32 s11, s45, s19                                   // 00000000ADF0: 820B132D
	s_lshl_b64 s[16:17], s[20:21], 2                           // 00000000ADF4: 8E908214
	s_add_u32 s18, s4, s16                                     // 00000000ADF8: 80121004
	s_addc_u32 s19, s11, s17                                   // 00000000ADFC: 8213110B
	s_mov_b32 s17, 0                                           // 00000000AE00: BE910080
	s_waitcnt lgkmcnt(0)                                       // 00000000AE04: BF8CC07F
	s_mov_b32 s16, s58                                         // 00000000AE08: BE90003A
	s_lshl_b64 s[16:17], s[16:17], 7                           // 00000000AE0C: 8E908710
	s_mul_i32 s4, s9, s25                                      // 00000000AE10: 92041909
	s_add_u32 s9, s36, s54                                     // 00000000AE14: 80093624
	s_addc_u32 s11, s37, s55                                   // 00000000AE18: 820B3725
	s_add_u32 s22, s9, s4                                      // 00000000AE1C: 80160409
	s_addc_u32 s23, s11, 0                                     // 00000000AE20: 8217800B
	s_add_u32 s60, s38, s56                                    // 00000000AE24: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000AE28: 823D3927
	s_add_u32 s64, s40, s16                                    // 00000000AE2C: 80401028
	s_addc_u32 s65, s41, s17                                   // 00000000AE30: 82411129
	s_lshr_b32 s11, s3, 6                                      // 00000000AE34: 8F0B8603
	s_lshl_b32 s9, s6, 6                                       // 00000000AE38: 8E098606
	s_bfe_u32 s17, s3, 0x20006                                 // 00000000AE3C: 9291FF03 00020006
	s_lshl_b32 s33, s11, 10                                    // 00000000AE44: 8E218A0B
	s_and_b64 s[0:1], s[0:1], exec                             // 00000000AE48: 86807E00
	s_cselect_b32 s72, s11, s17                                // 00000000AE4C: 8548110B
	s_not_b32 s0, s52                                          // 00000000AE50: BE800434
	s_add_u32 s0, s50, s0                                      // 00000000AE54: 80000032
	s_mul_i32 s1, s51, s0                                      // 00000000AE58: 92010033
	s_lshl_b32 s0, s0, 5                                       // 00000000AE5C: 8E008500
	s_add_u32 s0, s0, 32                                       // 00000000AE60: 8000A000
	s_mul_i32 s0, s0, s51                                      // 00000000AE64: 92003300
	s_add_u32 s1, s1, s72                                      // 00000000AE68: 80014801
	s_add_u32 s0, s0, 32                                       // 00000000AE6C: 8000A000
	s_mul_i32 s62, s6, s12                                     // 00000000AE70: 923E0C06
	s_mul_i32 s66, s7, s12                                     // 00000000AE74: 92420C07
	v_and_b32_e32 v146, 31, v0                                 // 00000000AE78: 2724009F
	s_lshr_b32 s12, s12, 6                                     // 00000000AE7C: 8F0C860C
	s_lshl_b32 s3, s1, 5                                       // 00000000AE80: 8E038501
	s_lshr_b32 s0, s0, 6                                       // 00000000AE84: 8F008600
	s_mov_b32 s63, 0x110000                                    // 00000000AE88: BEBF00FF 00110000
	v_or_b32_e32 v4, s3, v146                                  // 00000000AE90: 28092403
	s_min_u32 s73, s12, s0                                     // 00000000AE94: 83C9000C
	s_mov_b32 s67, s63                                         // 00000000AE98: BEC3003F
	v_mul_lo_u32 v4, s5, v4                                    // 00000000AE9C: D2850004 00020805
	v_lshlrev_b32_e32 v167, 5, v1                              // 00000000AEA4: 254E0285
	v_add_u32_e32 v4, v167, v4                                 // 00000000AEA8: 680809A7
	global_load_dwordx4 v[182:185], v4, s[22:23]               // 00000000AEAC: DC5C8000 B6160004
	global_load_dwordx4 v[186:189], v4, s[22:23] offset:16     // 00000000AEB4: DC5C8010 BA160004
	global_load_dwordx4 v[190:193], v4, s[22:23] offset:64     // 00000000AEBC: DC5C8040 BE160004
	global_load_dwordx4 v[194:197], v4, s[22:23] offset:80     // 00000000AEC4: DC5C8050 C2160004
	global_load_dwordx4 v[198:201], v4, s[22:23] offset:128    // 00000000AECC: DC5C8080 C6160004
	global_load_dwordx4 v[202:205], v4, s[22:23] offset:144    // 00000000AED4: DC5C8090 CA160004
	s_mov_b32 m0, s33                                          // 00000000AEDC: BEFC0021
	s_or_b32 s0, s33, 0x10000                                  // 00000000AEE0: 8700FF21 00010000
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000AEE8: E05D1000 800F00A4
	s_or_b32 m0, s33, 0x2000                                   // 00000000AEF0: 877CFF21 00002000
	s_cmp_lt_u32 s73, 2                                        // 00000000AEF8: BF0A8249
	buffer_load_dwordx4 v165, s[60:63], 0 offen lds            // 00000000AEFC: E05D1000 800F00A5
	s_mov_b32 m0, s0                                           // 00000000AF04: BEFC0000
	s_nop 0                                                    // 00000000AF08: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000AF0C: E05D1000 801000A6
	s_cbranch_scc1 10                                          // 00000000AF14: BF85000A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x340>
	s_add_u32 m0, s0, 0xffff4000                               // 00000000AF18: 807CFF00 FFFF4000
	s_nop 0                                                    // 00000000AF20: BF800000
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000AF24: E05D1000 090F00A4
	s_add_u32 m0, s0, 0xffff6000                               // 00000000AF2C: 807CFF00 FFFF6000
	s_nop 0                                                    // 00000000AF34: BF800000
	buffer_load_dwordx4 v165, s[60:63], s9 offen lds           // 00000000AF38: E05D1000 090F00A5
	v_lshrrev_b32_e32 v4, 2, v0                                // 00000000AF40: 20080082
	v_lshrrev_b32_e32 v5, 3, v0                                // 00000000AF44: 200A0083
	s_waitcnt vmcnt(0)                                         // 00000000AF48: BF8C0F70
	s_barrier                                                  // 00000000AF4C: BF8A0000
	s_cmp_eq_u32 s24, 0                                        // 00000000AF50: BF068018
	s_cbranch_scc1 1                                           // 00000000AF54: BF850001 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x35c>
	s_barrier                                                  // 00000000AF58: BF8A0000
	s_mov_b32 s16, 0                                           // 00000000AF5C: BE900080
	s_mov_b32 s0, s59                                          // 00000000AF60: BE80003B
	s_mov_b32 s1, s16                                          // 00000000AF64: BE810010
	s_lshr_b32 s76, s3, 6                                      // 00000000AF68: 8F4C8603
	s_lshl_b64 s[0:1], s[0:1], 8                               // 00000000AF6C: 8E808800
	s_add_u32 s0, s42, s0                                      // 00000000AF70: 8000002A
	s_mul_i32 s22, s10, s25                                    // 00000000AF74: 9216190A
	s_addc_u32 s1, s43, s1                                     // 00000000AF78: 8201012B
	s_add_u32 s10, s0, s22                                     // 00000000AF7C: 800A1600
	s_addc_u32 s11, s1, 0                                      // 00000000AF80: 820B8001
	s_lshl_b32 s98, s7, 6                                      // 00000000AF84: 8E628607
	s_lshl_b32 s99, s6, 8                                      // 00000000AF88: 8E638806
	s_lshl_b32 s85, s7, 7                                      // 00000000AF8C: 8E558707
	v_mul_f32_e32 v142, s48, v3                                // 00000000AF90: 0B1C0630
	v_mov_b32_e32 v3, s14                                      // 00000000AF94: 7E06020E
	v_lshrrev_b32_e32 v147, 4, v2                              // 00000000AF98: 21260484
	v_and_b32_e32 v6, 32, v0                                   // 00000000AF9C: 260C00A0
	s_cmp_eq_u32 s24, 0                                        // 00000000AFA0: BF068018
	v_and_b32_e32 v5, 4, v5                                    // 00000000AFA4: 260A0A84
	v_lshlrev_b32_e32 v7, 3, v0                                // 00000000AFA8: 240E0083
	v_and_b32_e32 v0, 15, v0                                   // 00000000AFAC: 2600008F
	v_mul_f32_e32 v168, s15, v3                                // 00000000AFB0: 0B50060F
	v_xor_b32_e32 v3, v147, v4                                 // 00000000AFB4: 2A060993
	v_and_or_b32 v4, v147, 1, v6                               // 00000000AFB8: D2010004 04190393
	s_cselect_b64 s[0:1], -1, 0                                // 00000000AFC0: 858080C1
	s_lshl_b32 s15, s17, 13                                    // 00000000AFC4: 8E0F8D11
	s_lshl_b32 s17, s6, 7                                      // 00000000AFC8: 8E118706
	v_sub_u32_e32 v171, v146, v5                               // 00000000AFCC: 6B560B92
	v_xor_b32_e32 v5, v1, v0                                   // 00000000AFD0: 2A0A0101
	v_xor_b32_e32 v6, v147, v0                                 // 00000000AFD4: 2A0C0193
	v_lshlrev_b32_e32 v148, 4, v0                              // 00000000AFD8: 25280084
	v_and_b32_e32 v0, 1, v3                                    // 00000000AFDC: 26000681
	v_lshlrev_b32_e32 v173, 7, v4                              // 00000000AFE0: 255A0887
	s_add_u32 s36, s36, s4                                     // 00000000AFE4: 80240424
	v_mov_b32_e32 v2, 0x38383838                               // 00000000AFE8: 7E0402FF 38383838
	v_and_b32_e32 v172, 0x78, v7                               // 00000000AFF0: 27580EFF 00000078
	v_cmp_eq_u32_e32 vcc, 0, v0                                // 00000000AFF8: 7D940080
	v_or_b32_e32 v0, 0x16000, v173                             // 00000000AFFC: 28015AFF 00016000
	s_addc_u32 s37, s37, 0                                     // 00000000B004: 82258025
	s_mov_b32 s14, 0x18000                                     // 00000000B008: BE8E00FF 00018000
	s_mov_b32 s21, s16                                         // 00000000B010: BE950010
	v_lshlrev_b32_e32 v3, 4, v5                                // 00000000B014: 24060A84
	v_lshlrev_b32_e32 v4, 4, v6                                // 00000000B018: 24080C84
	v_cndmask_b32_e32 v126, 0, v2, vcc                         // 00000000B01C: 00FC0480
	v_add_u32_e32 v177, v0, v172                               // 00000000B020: 69635900
	v_lshl_or_b32 v0, v146, 8, s15                             // 00000000B024: D2000000 003D1192
	v_lshl_or_b32 v2, v147, 8, s15                             // 00000000B02C: D2000002 003D1193
	s_add_u32 s42, s42, s22                                    // 00000000B034: 802A162A
	v_or3_b32 v158, v0, v3, s14                                // 00000000B038: D202009E 003A0700
	v_or3_b32 v149, v2, v4, s14                                // 00000000B040: D2020095 003A0902
	s_addc_u32 s43, s43, 0                                     // 00000000B048: 822B802B
	s_lshl_b64 s[14:15], s[20:21], 2                           // 00000000B04C: 8E8E8214
	v_or_b32_e32 v5, 0x10000, v173                             // 00000000B050: 280B5AFF 00010000
	v_or_b32_e32 v6, 0x12000, v173                             // 00000000B058: 280D5AFF 00012000
	v_or_b32_e32 v7, 0x14000, v173                             // 00000000B060: 280F5AFF 00014000
	s_add_u32 s44, s44, s14                                    // 00000000B068: 802C0E2C
	s_mov_b32 s81, 0x16000                                     // 00000000B06C: BED100FF 00016000
	s_mov_b32 s82, 0x10000                                     // 00000000B074: BED200FF 00010000
	s_mov_b32 s83, 0x12000                                     // 00000000B07C: BED300FF 00012000
	s_mov_b32 s88, 0x14000                                     // 00000000B084: BED800FF 00014000
	s_mov_b32 s89, 0x8000                                      // 00000000B08C: BED900FF 00008000
	s_movk_i32 s90, 0x4000                                     // 00000000B094: B05A4000
	s_mov_b32 s91, 0xc2fe0000                                  // 00000000B098: BEDB00FF C2FE0000
	v_mov_b32_e32 v169, 0xff800000                             // 00000000B0A0: 7F5202FF FF800000
	s_movk_i32 s92, 0x2000                                     // 00000000B0A8: B05C2000
	v_mov_b32_e32 v170, 0x7f                                   // 00000000B0AC: 7F5402FF 0000007F
	s_mov_b32 s93, 0x3e000000                                  // 00000000B0B4: BEDD00FF 3E000000
	s_movk_i32 s94, 0x6000                                     // 00000000B0BC: B05E6000
	s_mov_b32 s95, 0xa000                                      // 00000000B0C0: BEDF00FF 0000A000
	s_mov_b32 s96, 0xc000                                      // 00000000B0C8: BEE000FF 0000C000
	s_mov_b32 s97, 0xe000                                      // 00000000B0D0: BEE100FF 0000E000
	v_mov_b32_e32 v144, v142                                   // 00000000B0D8: 7F20038E
	v_mov_b32_e32 v145, v142                                   // 00000000B0DC: 7F22038E
	v_add_u32_e32 v174, v5, v172                               // 00000000B0E0: 695D5905
	v_add_u32_e32 v175, v6, v172                               // 00000000B0E4: 695F5906
	v_add_u32_e32 v176, v7, v172                               // 00000000B0E8: 69615907
	v_mov_b32_e32 v127, v126                                   // 00000000B0EC: 7EFE037E
	v_mov_b32_e32 v128, v126                                   // 00000000B0F0: 7F00037E
	v_mov_b32_e32 v129, v126                                   // 00000000B0F4: 7F02037E
	v_mov_b32_e32 v130, v126                                   // 00000000B0F8: 7F04037E
	v_mov_b32_e32 v131, v126                                   // 00000000B0FC: 7F06037E
	v_mov_b32_e32 v132, v126                                   // 00000000B100: 7F08037E
	v_mov_b32_e32 v133, v126                                   // 00000000B104: 7F0A037E
	v_xor_b32_e32 v160, 32, v158                               // 00000000B108: 2B413CA0
	v_xor_b32_e32 v159, 64, v158                               // 00000000B10C: 2B3F3CC0
	v_xor_b32_e32 v157, 0x60, v158                             // 00000000B110: 2B3B3CFF 00000060
	v_xor_b32_e32 v156, 0x80, v158                             // 00000000B118: 2B393CFF 00000080
	v_xor_b32_e32 v155, 0xa0, v158                             // 00000000B120: 2B373CFF 000000A0
	v_xor_b32_e32 v154, 0xc0, v158                             // 00000000B128: 2B353CFF 000000C0
	v_xor_b32_e32 v153, 0xe0, v158                             // 00000000B130: 2B333CFF 000000E0
	v_xor_b32_e32 v152, 64, v149                               // 00000000B138: 2B312AC0
	v_xor_b32_e32 v151, 0x80, v149                             // 00000000B13C: 2B2F2AFF 00000080
	v_xor_b32_e32 v150, 0xc0, v149                             // 00000000B144: 2B2D2AFF 000000C0
	s_addc_u32 s45, s45, s15                                   // 00000000B14C: 822D0F2D
	s_lshl_b32 s87, s6, 4                                      // 00000000B150: 8E578406
	s_lshl_b32 s48, s6, 5                                      // 00000000B154: 8E308506
	s_lshl_b32 s74, s7, 2                                      // 00000000B158: 8E4A8207
	s_lshl_b32 s4, s8, 2                                       // 00000000B15C: 8E048208
	v_writelane_b32 v230, s17, 0                               // 00000000B160: D28A00E6 00010011
	s_mov_b32 s80, 0                                           // 00000000B168: BED00080
	s_mov_b32 s75, 0                                           // 00000000B16C: BECB0080
	s_mov_b32 s78, s52                                         // 00000000B170: BECE0034
	s_mov_b32 s67, s63                                         // 00000000B174: BEC3003F
	s_mov_b32 s79, s63                                         // 00000000B178: BECF003F
	s_lshl_b32 s14, s80, 14                                    // 00000000B17C: 8E0E8E50
	s_and_b32 s20, s14, 0x8000                                 // 00000000B180: 8614FF0E 00008000
	s_bitcmp1_b32 s80, 0                                       // 00000000B188: BF0D8050
	s_cselect_b32 s17, 0x4000, 0                               // 00000000B18C: 851180FF 00004000
	s_or_b32 s20, s20, s17                                     // 00000000B194: 87141114
	v_or_b32_e32 v0, s20, v161                                 // 00000000B198: 28014214
	s_waitcnt vmcnt(8)                                         // 00000000B19C: BF8C0F78
	v_or_b32_e32 v1, s20, v162                                 // 00000000B1A0: 28034414
	ds_read_b128 v[2:5], v0                                    // 00000000B1A4: D9FE0000 02000000
	ds_read_b128 v[6:9], v0 offset:16                          // 00000000B1AC: D9FE0010 06000000
	ds_read_b128 v[50:53], v0 offset:8192                      // 00000000B1B4: D9FE2000 32000000
	ds_read_b128 v[54:57], v0 offset:8208                      // 00000000B1BC: D9FE2010 36000000
	ds_read_b128 v[42:45], v1                                  // 00000000B1C4: D9FE0000 2A000001
	ds_read_b128 v[46:49], v1 offset:16                        // 00000000B1CC: D9FE0010 2E000001
	ds_read_b128 v[34:37], v1 offset:8192                      // 00000000B1D4: D9FE2000 22000001
	ds_read_b128 v[38:41], v1 offset:8208                      // 00000000B1DC: D9FE2010 26000001
	s_mov_b64 s[14:15], s[18:19]                               // 00000000B1E4: BE8E0112
	s_cmp_eq_u32 s76, 0                                        // 00000000B1E8: BF06804C
	s_cbranch_scc1 112                                         // 00000000B1EC: BF850070 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x7b0>
	s_setprio 1                                                // 00000000B1F0: BF8F0001
	s_waitcnt lgkmcnt(6)                                       // 00000000B1F4: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[2:9], v[182:189], 0 // 00000000B1F8: D3AE0010 02036D02
	v_add_u32_e32 v32, s20, v163                               // 00000000B200: 68414614
	ds_read_b128 v[58:61], v32                                 // 00000000B204: D9FE0000 3A000020
	ds_read_b128 v[62:65], v32 offset:16                       // 00000000B20C: D9FE0010 3E000020
	s_waitcnt lgkmcnt(6)                                       // 00000000B214: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[182:189], 0// 00000000B218: D3AE0000 02036D32
	ds_read_b128 v[50:53], v32 offset:8192                     // 00000000B220: D9FE2000 32000020
	ds_read_b128 v[54:57], v32 offset:8208                     // 00000000B228: D9FE2010 36000020
	s_waitcnt lgkmcnt(6)                                       // 00000000B230: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[42:49], v[190:197], v[16:31]// 00000000B234: D3AE0010 04437D2A
	s_waitcnt lgkmcnt(4)                                       // 00000000B23C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[34:41], v[190:197], v[0:15]// 00000000B240: D3AE0000 04037D22
	s_waitcnt lgkmcnt(2)                                       // 00000000B248: BF8CC27F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[58:65], v[198:205], v[16:31]// 00000000B24C: D3AE0010 04438D3A
	s_waitcnt lgkmcnt(0)                                       // 00000000B254: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[198:205], v[0:15]// 00000000B258: D3AE0000 04038D32
	s_nop 3                                                    // 00000000B260: BF800003
	v_max_f32_e32 v32, v16, v17                                // 00000000B264: 16402310
	v_max3_f32 v32, v18, v19, v32                              // 00000000B268: D1D30020 04822712
	v_max3_f32 v32, v20, v21, v32                              // 00000000B270: D1D30020 04822B14
	v_max3_f32 v32, v22, v23, v32                              // 00000000B278: D1D30020 04822F16
	v_max3_f32 v32, v24, v25, v32                              // 00000000B280: D1D30020 04823318
	v_max3_f32 v32, v26, v27, v32                              // 00000000B288: D1D30020 0482371A
	v_max3_f32 v32, v28, v29, v32                              // 00000000B290: D1D30020 04823B1C
	v_max3_f32 v32, v30, v31, v32                              // 00000000B298: D1D30020 04823F1E
	s_nop 7                                                    // 00000000B2A0: BF800007
	v_max_f32_e32 v33, v0, v1                                  // 00000000B2A4: 16420300
	v_max3_f32 v33, v2, v3, v33                                // 00000000B2A8: D1D30021 04860702
	v_max3_f32 v33, v4, v5, v33                                // 00000000B2B0: D1D30021 04860B04
	v_max3_f32 v33, v6, v7, v33                                // 00000000B2B8: D1D30021 04860F06
	v_max3_f32 v33, v8, v9, v33                                // 00000000B2C0: D1D30021 04861308
	v_max3_f32 v33, v10, v11, v33                              // 00000000B2C8: D1D30021 0486170A
	v_max3_f32 v33, v12, v13, v33                              // 00000000B2D0: D1D30021 04861B0C
	v_max3_f32 v33, v14, v15, v33                              // 00000000B2D8: D1D30021 04861F0E
	v_max_f32_e32 v32, v32, v33                                // 00000000B2E0: 16404320
	v_mov_b32_e32 v33, v32                                     // 00000000B2E4: 7E420320
	s_nop 1                                                    // 00000000B2E8: BF800001
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000B2EC: 7E40B521
	v_max_f32_e32 v32, v32, v33                                // 00000000B2F0: 16404320
	v_mul_f32_e32 v111, v142, v32                              // 00000000B2F4: 0ADE418E
	v_fma_f32 v32, v32, v142, -v111                            // 00000000B2F8: D1CB0020 85BF1D20
	v_floor_f32_e32 v32, v32                                   // 00000000B300: 7E403F20
	v_med3_f32 v32, v32, s91, 0                                // 00000000B304: D1D60020 0200B720
	v_cvt_i32_f32_e32 v33, v32                                 // 00000000B30C: 7E421120
	v_add_u32_e32 v180, 0x7f, v33                              // 00000000B310: 696842FF 0000007F
	v_lshlrev_b32_e32 v33, 23, v180                            // 00000000B318: 24436897
	v_add_f32_e32 v32, v111, v32                               // 00000000B31C: 0240416F
	v_sub_f32_e32 v32, 0x40c00000, v32                         // 00000000B320: 044040FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000B328: 7F1E038E
	v_pk_fma_f32 v[80:81], v[16:17], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000B32C: D3B00050 1C832110
	v_pk_fma_f32 v[64:65], v[0:1], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000B334: D3B00040 1C832100
	v_pk_fma_f32 v[94:95], v[30:31], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B33C: D3B0005E 1C831D1E
	v_pk_fma_f32 v[92:93], v[28:29], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B344: D3B0005C 1C831D1C
	v_pk_fma_f32 v[90:91], v[26:27], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B34C: D3B0005A 1C831D1A
	v_pk_fma_f32 v[88:89], v[24:25], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B354: D3B00058 1C831D18
	v_pk_fma_f32 v[86:87], v[22:23], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B35C: D3B00056 1C831D16
	v_pk_fma_f32 v[84:85], v[20:21], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B364: D3B00054 1C831D14
	v_pk_fma_f32 v[82:83], v[18:19], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B36C: D3B00052 1C831D12
	v_pk_fma_f32 v[78:79], v[14:15], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B374: D3B0004E 1C831D0E
	v_pk_fma_f32 v[76:77], v[12:13], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B37C: D3B0004C 1C831D0C
	v_pk_fma_f32 v[74:75], v[10:11], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B384: D3B0004A 1C831D0A
	v_pk_fma_f32 v[72:73], v[8:9], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B38C: D3B00048 1C831D08
	v_pk_fma_f32 v[70:71], v[6:7], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B394: D3B00046 1C831D06
	v_pk_fma_f32 v[68:69], v[4:5], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B39C: D3B00044 1C831D04
	v_pk_fma_f32 v[66:67], v[2:3], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B3A4: D3B00042 1C831D02
	s_branch 290                                               // 00000000B3AC: BF820122 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc38>
	s_setprio 1                                                // 00000000B3B0: BF8F0001
	s_waitcnt lgkmcnt(6)                                       // 00000000B3B4: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[2:9], v[182:189], 0 // 00000000B3B8: D3AE0010 02036D02
	s_waitcnt lgkmcnt(4)                                       // 00000000B3C0: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[182:189], 0// 00000000B3C4: D3AE0000 02036D32
	v_add_u32_e32 v32, s20, v163                               // 00000000B3CC: 68414614
	ds_read_b128 v[58:61], v32                                 // 00000000B3D0: D9FE0000 3A000020
	ds_read_b128 v[62:65], v32 offset:16                       // 00000000B3D8: D9FE0010 3E000020
	s_waitcnt lgkmcnt(4)                                       // 00000000B3E0: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[42:49], v[190:197], v[16:31]// 00000000B3E4: D3AE0010 04437D2A
	ds_read_b128 v[50:53], v32 offset:8192                     // 00000000B3EC: D9FE2000 32000020
	ds_read_b128 v[54:57], v32 offset:8208                     // 00000000B3F4: D9FE2010 36000020
	s_waitcnt lgkmcnt(4)                                       // 00000000B3FC: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[34:41], v[190:197], v[0:15]// 00000000B400: D3AE0000 04037D22
	s_waitcnt lgkmcnt(2)                                       // 00000000B408: BF8CC27F
	v_mfma_f32_32x32x64_f8f6f4 v[16:31], v[58:65], v[198:205], v[16:31]// 00000000B40C: D3AE0010 04438D3A
	s_waitcnt lgkmcnt(0)                                       // 00000000B414: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[0:15], v[50:57], v[198:205], v[0:15]// 00000000B418: D3AE0000 04038D32
	s_sub_u32 s18, s3, s16                                     // 00000000B420: 80921003
	s_sub_i32 s18, s18, 0                                      // 00000000B424: 81928012
	s_cmp_ge_i32 s18, 32                                       // 00000000B428: BF03A012
	s_cbranch_scc1 86                                          // 00000000B42C: BF850056 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x988>
	s_cmp_lt_i32 s18, 0                                        // 00000000B430: BF048012
	s_cbranch_scc1 66                                          // 00000000B434: BF850042 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x940>
	v_add_u32_e32 v32, s18, v171                               // 00000000B438: 68415612
	v_cmp_gt_i32_e32 vcc, 0, v32                               // 00000000B43C: 7D884080
	s_nop 6                                                    // 00000000B440: BF800006
	v_cndmask_b32_e64 v16, v16, v169, vcc                      // 00000000B444: D1000010 01AB5310
	v_cmp_gt_i32_e32 vcc, 1, v32                               // 00000000B44C: 7D884081
	s_nop 1                                                    // 00000000B450: BF800001
	v_cndmask_b32_e64 v17, v17, v169, vcc                      // 00000000B454: D1000011 01AB5311
	v_cmp_gt_i32_e32 vcc, 2, v32                               // 00000000B45C: 7D884082
	s_nop 1                                                    // 00000000B460: BF800001
	v_cndmask_b32_e64 v18, v18, v169, vcc                      // 00000000B464: D1000012 01AB5312
	v_cmp_gt_i32_e32 vcc, 3, v32                               // 00000000B46C: 7D884083
	s_nop 1                                                    // 00000000B470: BF800001
	v_cndmask_b32_e64 v19, v19, v169, vcc                      // 00000000B474: D1000013 01AB5313
	v_cmp_gt_i32_e32 vcc, 8, v32                               // 00000000B47C: 7D884088
	s_nop 1                                                    // 00000000B480: BF800001
	v_cndmask_b32_e64 v20, v20, v169, vcc                      // 00000000B484: D1000014 01AB5314
	v_cmp_gt_i32_e32 vcc, 9, v32                               // 00000000B48C: 7D884089
	s_nop 1                                                    // 00000000B490: BF800001
	v_cndmask_b32_e64 v21, v21, v169, vcc                      // 00000000B494: D1000015 01AB5315
	v_cmp_gt_i32_e32 vcc, 10, v32                              // 00000000B49C: 7D88408A
	s_nop 1                                                    // 00000000B4A0: BF800001
	v_cndmask_b32_e64 v22, v22, v169, vcc                      // 00000000B4A4: D1000016 01AB5316
	v_cmp_gt_i32_e32 vcc, 11, v32                              // 00000000B4AC: 7D88408B
	s_nop 1                                                    // 00000000B4B0: BF800001
	v_cndmask_b32_e64 v23, v23, v169, vcc                      // 00000000B4B4: D1000017 01AB5317
	v_cmp_gt_i32_e32 vcc, 16, v32                              // 00000000B4BC: 7D884090
	s_nop 1                                                    // 00000000B4C0: BF800001
	v_cndmask_b32_e64 v24, v24, v169, vcc                      // 00000000B4C4: D1000018 01AB5318
	v_cmp_gt_i32_e32 vcc, 17, v32                              // 00000000B4CC: 7D884091
	s_nop 1                                                    // 00000000B4D0: BF800001
	v_cndmask_b32_e64 v25, v25, v169, vcc                      // 00000000B4D4: D1000019 01AB5319
	v_cmp_gt_i32_e32 vcc, 18, v32                              // 00000000B4DC: 7D884092
	s_nop 1                                                    // 00000000B4E0: BF800001
	v_cndmask_b32_e64 v26, v26, v169, vcc                      // 00000000B4E4: D100001A 01AB531A
	v_cmp_gt_i32_e32 vcc, 19, v32                              // 00000000B4EC: 7D884093
	s_nop 1                                                    // 00000000B4F0: BF800001
	v_cndmask_b32_e64 v27, v27, v169, vcc                      // 00000000B4F4: D100001B 01AB531B
	v_cmp_gt_i32_e32 vcc, 24, v32                              // 00000000B4FC: 7D884098
	s_nop 1                                                    // 00000000B500: BF800001
	v_cndmask_b32_e64 v28, v28, v169, vcc                      // 00000000B504: D100001C 01AB531C
	v_cmp_gt_i32_e32 vcc, 25, v32                              // 00000000B50C: 7D884099
	s_nop 1                                                    // 00000000B510: BF800001
	v_cndmask_b32_e64 v29, v29, v169, vcc                      // 00000000B514: D100001D 01AB531D
	v_cmp_gt_i32_e32 vcc, 26, v32                              // 00000000B51C: 7D88409A
	s_nop 1                                                    // 00000000B520: BF800001
	v_cndmask_b32_e64 v30, v30, v169, vcc                      // 00000000B524: D100001E 01AB531E
	v_cmp_gt_i32_e32 vcc, 27, v32                              // 00000000B52C: 7D88409B
	s_nop 1                                                    // 00000000B530: BF800001
	v_cndmask_b32_e64 v31, v31, v169, vcc                      // 00000000B534: D100001F 01AB531F
	s_branch 18                                                // 00000000B53C: BF820012 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x988>
	s_nop 8                                                    // 00000000B540: BF800008
	v_mov_b32_e32 v16, 0xff800000                              // 00000000B544: 7E2002FF FF800000
	v_mov_b32_e32 v17, v16                                     // 00000000B54C: 7E220310
	v_mov_b32_e32 v18, v16                                     // 00000000B550: 7E240310
	v_mov_b32_e32 v19, v16                                     // 00000000B554: 7E260310
	v_mov_b32_e32 v20, v16                                     // 00000000B558: 7E280310
	v_mov_b32_e32 v21, v16                                     // 00000000B55C: 7E2A0310
	v_mov_b32_e32 v22, v16                                     // 00000000B560: 7E2C0310
	v_mov_b32_e32 v23, v16                                     // 00000000B564: 7E2E0310
	v_mov_b32_e32 v24, v16                                     // 00000000B568: 7E300310
	v_mov_b32_e32 v25, v16                                     // 00000000B56C: 7E320310
	v_mov_b32_e32 v26, v16                                     // 00000000B570: 7E340310
	v_mov_b32_e32 v27, v16                                     // 00000000B574: 7E360310
	v_mov_b32_e32 v28, v16                                     // 00000000B578: 7E380310
	v_mov_b32_e32 v29, v16                                     // 00000000B57C: 7E3A0310
	v_mov_b32_e32 v30, v16                                     // 00000000B580: 7E3C0310
	v_mov_b32_e32 v31, v16                                     // 00000000B584: 7E3E0310
	s_sub_u32 s18, s3, s16                                     // 00000000B588: 80921003
	s_sub_i32 s18, s18, 32                                     // 00000000B58C: 8192A012
	s_cmp_ge_i32 s18, 32                                       // 00000000B590: BF03A012
	s_cbranch_scc1 86                                          // 00000000B594: BF850056 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xaf0>
	s_cmp_lt_i32 s18, 0                                        // 00000000B598: BF048012
	s_cbranch_scc1 66                                          // 00000000B59C: BF850042 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xaa8>
	v_add_u32_e32 v32, s18, v171                               // 00000000B5A0: 68415612
	v_cmp_gt_i32_e32 vcc, 0, v32                               // 00000000B5A4: 7D884080
	s_nop 11                                                   // 00000000B5A8: BF80000B
	v_cndmask_b32_e64 v0, v0, v169, vcc                        // 00000000B5AC: D1000000 01AB5300
	v_cmp_gt_i32_e32 vcc, 1, v32                               // 00000000B5B4: 7D884081
	s_nop 1                                                    // 00000000B5B8: BF800001
	v_cndmask_b32_e64 v1, v1, v169, vcc                        // 00000000B5BC: D1000001 01AB5301
	v_cmp_gt_i32_e32 vcc, 2, v32                               // 00000000B5C4: 7D884082
	s_nop 1                                                    // 00000000B5C8: BF800001
	v_cndmask_b32_e64 v2, v2, v169, vcc                        // 00000000B5CC: D1000002 01AB5302
	v_cmp_gt_i32_e32 vcc, 3, v32                               // 00000000B5D4: 7D884083
	s_nop 1                                                    // 00000000B5D8: BF800001
	v_cndmask_b32_e64 v3, v3, v169, vcc                        // 00000000B5DC: D1000003 01AB5303
	v_cmp_gt_i32_e32 vcc, 8, v32                               // 00000000B5E4: 7D884088
	s_nop 1                                                    // 00000000B5E8: BF800001
	v_cndmask_b32_e64 v4, v4, v169, vcc                        // 00000000B5EC: D1000004 01AB5304
	v_cmp_gt_i32_e32 vcc, 9, v32                               // 00000000B5F4: 7D884089
	s_nop 1                                                    // 00000000B5F8: BF800001
	v_cndmask_b32_e64 v5, v5, v169, vcc                        // 00000000B5FC: D1000005 01AB5305
	v_cmp_gt_i32_e32 vcc, 10, v32                              // 00000000B604: 7D88408A
	s_nop 1                                                    // 00000000B608: BF800001
	v_cndmask_b32_e64 v6, v6, v169, vcc                        // 00000000B60C: D1000006 01AB5306
	v_cmp_gt_i32_e32 vcc, 11, v32                              // 00000000B614: 7D88408B
	s_nop 1                                                    // 00000000B618: BF800001
	v_cndmask_b32_e64 v7, v7, v169, vcc                        // 00000000B61C: D1000007 01AB5307
	v_cmp_gt_i32_e32 vcc, 16, v32                              // 00000000B624: 7D884090
	s_nop 1                                                    // 00000000B628: BF800001
	v_cndmask_b32_e64 v8, v8, v169, vcc                        // 00000000B62C: D1000008 01AB5308
	v_cmp_gt_i32_e32 vcc, 17, v32                              // 00000000B634: 7D884091
	s_nop 1                                                    // 00000000B638: BF800001
	v_cndmask_b32_e64 v9, v9, v169, vcc                        // 00000000B63C: D1000009 01AB5309
	v_cmp_gt_i32_e32 vcc, 18, v32                              // 00000000B644: 7D884092
	s_nop 1                                                    // 00000000B648: BF800001
	v_cndmask_b32_e64 v10, v10, v169, vcc                      // 00000000B64C: D100000A 01AB530A
	v_cmp_gt_i32_e32 vcc, 19, v32                              // 00000000B654: 7D884093
	s_nop 1                                                    // 00000000B658: BF800001
	v_cndmask_b32_e64 v11, v11, v169, vcc                      // 00000000B65C: D100000B 01AB530B
	v_cmp_gt_i32_e32 vcc, 24, v32                              // 00000000B664: 7D884098
	s_nop 1                                                    // 00000000B668: BF800001
	v_cndmask_b32_e64 v12, v12, v169, vcc                      // 00000000B66C: D100000C 01AB530C
	v_cmp_gt_i32_e32 vcc, 25, v32                              // 00000000B674: 7D884099
	s_nop 1                                                    // 00000000B678: BF800001
	v_cndmask_b32_e64 v13, v13, v169, vcc                      // 00000000B67C: D100000D 01AB530D
	v_cmp_gt_i32_e32 vcc, 26, v32                              // 00000000B684: 7D88409A
	s_nop 1                                                    // 00000000B688: BF800001
	v_cndmask_b32_e64 v14, v14, v169, vcc                      // 00000000B68C: D100000E 01AB530E
	v_cmp_gt_i32_e32 vcc, 27, v32                              // 00000000B694: 7D88409B
	s_nop 1                                                    // 00000000B698: BF800001
	v_cndmask_b32_e64 v15, v15, v169, vcc                      // 00000000B69C: D100000F 01AB530F
	s_branch 18                                                // 00000000B6A4: BF820012 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xaf0>
	s_nop 13                                                   // 00000000B6A8: BF80000D
	v_mov_b32_e32 v0, 0xff800000                               // 00000000B6AC: 7E0002FF FF800000
	v_mov_b32_e32 v1, v0                                       // 00000000B6B4: 7E020300
	v_mov_b32_e32 v2, v0                                       // 00000000B6B8: 7E040300
	v_mov_b32_e32 v3, v0                                       // 00000000B6BC: 7E060300
	v_mov_b32_e32 v4, v0                                       // 00000000B6C0: 7E080300
	v_mov_b32_e32 v5, v0                                       // 00000000B6C4: 7E0A0300
	v_mov_b32_e32 v6, v0                                       // 00000000B6C8: 7E0C0300
	v_mov_b32_e32 v7, v0                                       // 00000000B6CC: 7E0E0300
	v_mov_b32_e32 v8, v0                                       // 00000000B6D0: 7E100300
	v_mov_b32_e32 v9, v0                                       // 00000000B6D4: 7E120300
	v_mov_b32_e32 v10, v0                                      // 00000000B6D8: 7E140300
	v_mov_b32_e32 v11, v0                                      // 00000000B6DC: 7E160300
	v_mov_b32_e32 v12, v0                                      // 00000000B6E0: 7E180300
	v_mov_b32_e32 v13, v0                                      // 00000000B6E4: 7E1A0300
	v_mov_b32_e32 v14, v0                                      // 00000000B6E8: 7E1C0300
	v_mov_b32_e32 v15, v0                                      // 00000000B6EC: 7E1E0300
	v_max_f32_e32 v32, v16, v17                                // 00000000B6F0: 16402310
	v_max3_f32 v32, v18, v19, v32                              // 00000000B6F4: D1D30020 04822712
	v_max3_f32 v32, v20, v21, v32                              // 00000000B6FC: D1D30020 04822B14
	v_max3_f32 v32, v22, v23, v32                              // 00000000B704: D1D30020 04822F16
	v_max3_f32 v32, v24, v25, v32                              // 00000000B70C: D1D30020 04823318
	v_max3_f32 v32, v26, v27, v32                              // 00000000B714: D1D30020 0482371A
	v_max3_f32 v32, v28, v29, v32                              // 00000000B71C: D1D30020 04823B1C
	v_max3_f32 v32, v30, v31, v32                              // 00000000B724: D1D30020 04823F1E
	s_nop 7                                                    // 00000000B72C: BF800007
	v_max_f32_e32 v33, v0, v1                                  // 00000000B730: 16420300
	v_max3_f32 v33, v2, v3, v33                                // 00000000B734: D1D30021 04860702
	v_max3_f32 v33, v4, v5, v33                                // 00000000B73C: D1D30021 04860B04
	v_max3_f32 v33, v6, v7, v33                                // 00000000B744: D1D30021 04860F06
	v_max3_f32 v33, v8, v9, v33                                // 00000000B74C: D1D30021 04861308
	v_max3_f32 v33, v10, v11, v33                              // 00000000B754: D1D30021 0486170A
	v_max3_f32 v33, v12, v13, v33                              // 00000000B75C: D1D30021 04861B0C
	v_max3_f32 v33, v14, v15, v33                              // 00000000B764: D1D30021 04861F0E
	v_max_f32_e32 v32, v32, v33                                // 00000000B76C: 16404320
	v_mov_b32_e32 v33, v32                                     // 00000000B770: 7E420320
	s_nop 1                                                    // 00000000B774: BF800001
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000B778: 7E40B521
	v_max_f32_e32 v32, v32, v33                                // 00000000B77C: 16404320
	v_mul_f32_e32 v111, v142, v32                              // 00000000B780: 0ADE418E
	v_fma_f32 v32, v32, v142, -v111                            // 00000000B784: D1CB0020 85BF1D20
	v_floor_f32_e32 v32, v32                                   // 00000000B78C: 7E403F20
	v_med3_f32 v32, v32, s91, 0                                // 00000000B790: D1D60020 0200B720
	v_cvt_i32_f32_e32 v33, v32                                 // 00000000B798: 7E421120
	v_add_u32_e32 v180, 0x7f, v33                              // 00000000B79C: 696842FF 0000007F
	v_lshlrev_b32_e32 v33, 23, v180                            // 00000000B7A4: 24436897
	v_add_f32_e32 v32, v111, v32                               // 00000000B7A8: 0240416F
	v_sub_f32_e32 v32, 0x40c00000, v32                         // 00000000B7AC: 044040FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000B7B4: 7F1E038E
	v_pk_fma_f32 v[80:81], v[16:17], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000B7B8: D3B00050 1C832110
	v_pk_fma_f32 v[64:65], v[0:1], v[144:145], v[32:33] op_sel_hi:[1,1,0]// 00000000B7C0: D3B00040 1C832100
	v_pk_fma_f32 v[94:95], v[30:31], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B7C8: D3B0005E 1C831D1E
	v_pk_fma_f32 v[92:93], v[28:29], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B7D0: D3B0005C 1C831D1C
	v_pk_fma_f32 v[90:91], v[26:27], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B7D8: D3B0005A 1C831D1A
	v_pk_fma_f32 v[88:89], v[24:25], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B7E0: D3B00058 1C831D18
	v_pk_fma_f32 v[86:87], v[22:23], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B7E8: D3B00056 1C831D16
	v_pk_fma_f32 v[84:85], v[20:21], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B7F0: D3B00054 1C831D14
	v_pk_fma_f32 v[82:83], v[18:19], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B7F8: D3B00052 1C831D12
	v_pk_fma_f32 v[78:79], v[14:15], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B800: D3B0004E 1C831D0E
	v_pk_fma_f32 v[76:77], v[12:13], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B808: D3B0004C 1C831D0C
	v_pk_fma_f32 v[74:75], v[10:11], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B810: D3B0004A 1C831D0A
	v_pk_fma_f32 v[72:73], v[8:9], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B818: D3B00048 1C831D08
	v_pk_fma_f32 v[70:71], v[6:7], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B820: D3B00046 1C831D06
	v_pk_fma_f32 v[68:69], v[4:5], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B828: D3B00044 1C831D04
	v_pk_fma_f32 v[66:67], v[2:3], v[142:143], v[32:33] op_sel_hi:[1,1,0]// 00000000B830: D3B00042 1C831D02
	s_waitcnt vmcnt(0)                                         // 00000000B838: BF8C0F70
	s_mov_b64 s[70:71], s[62:63]                               // 00000000B83C: BEC6013E
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000B840: 86927E00
	s_mov_b64 s[68:69], s[60:61]                               // 00000000B844: BEC4013C
	s_mov_b32 s71, s79                                         // 00000000B848: BEC7004F
	s_cbranch_scc0 38                                          // 00000000B84C: BF840026 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xce8>
	s_cmp_ge_u32 s73, 2                                        // 00000000B850: BF098249
	s_cbranch_scc1 190                                         // 00000000B854: BF8500BE <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xf50>
	s_cmp_ge_u32 s73, 3                                        // 00000000B858: BF098349
	s_cbranch_scc1 208                                         // 00000000B85C: BF8500D0 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xfa0>
	s_cmp_lt_u32 s73, 4                                        // 00000000B860: BF0A8449
	s_cbranch_scc1 31                                          // 00000000B864: BF85001F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xce4>
	s_add_u32 s17, s80, 3                                      // 00000000B868: 80118350
	s_and_b32 s18, s17, 2                                      // 00000000B86C: 86128211
	s_lshl_b32 s18, s18, 14                                    // 00000000B870: 8E128E12
	s_bitcmp1_b32 s17, 0                                       // 00000000B874: BF0D8011
	s_cselect_b32 s17, 0x4000, 0                               // 00000000B878: 851180FF 00004000
	s_or_b32 s17, s18, s17                                     // 00000000B880: 87111112
	s_or_b32 s17, s17, s33                                     // 00000000B884: 87112111
	s_mov_b32 m0, s17                                          // 00000000B888: BEFC0011
	s_mul_i32 s18, s6, 0xc0                                    // 00000000B88C: 9212FF06 000000C0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B894: E05D1000 121100A4
	s_add_u32 m0, s17, 0x1000                                  // 00000000B89C: 807CFF11 00001000
	s_mul_i32 s18, s6, 0xd0                                    // 00000000B8A4: 9212FF06 000000D0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B8AC: E05D1000 121100A4
	s_or_b32 m0, s17, 0x2000                                   // 00000000B8B4: 877CFF11 00002000
	s_mul_i32 s18, s6, 0xe0                                    // 00000000B8BC: 9212FF06 000000E0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000B8C4: E05D1000 121100A4
	s_add_u32 m0, s17, 0x3000                                  // 00000000B8CC: 807CFF11 00003000
	s_mul_i32 s17, s6, 0xf0                                    // 00000000B8D4: 9211FF06 000000F0
	buffer_load_dwordx4 v164, s[68:71], s17 offen lds          // 00000000B8DC: E05D1000 111100A4
	s_waitcnt vmcnt(0)                                         // 00000000B8E4: BF8C0F70
	s_barrier                                                  // 00000000B8E8: BF8A0000
	s_add_u32 s86, s73, -1                                     // 00000000B8EC: 8056C149
	s_mul_i32 s84, s86, s9                                     // 00000000B8F0: 92540956
	s_cmp_lt_i32 s80, 1                                        // 00000000B8F4: BF048150
	s_mul_i32 s86, s86, s98                                    // 00000000B8F8: 92566256
	s_cbranch_scc1 54                                          // 00000000B8FC: BF850036 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xdd8>
	s_mov_b32 s17, s16                                         // 00000000B900: BE910010
	s_mov_b32 s18, s16                                         // 00000000B904: BE920010
	s_mov_b32 s19, s16                                         // 00000000B908: BE930010
	s_mov_b32 s20, s16                                         // 00000000B90C: BE940010
	s_mov_b32 s21, s16                                         // 00000000B910: BE950010
	s_mov_b32 s22, s16                                         // 00000000B914: BE960010
	s_mov_b32 s23, s16                                         // 00000000B918: BE970010
	s_mov_b32 s24, s16                                         // 00000000B91C: BE980010
	s_mov_b32 s25, s16                                         // 00000000B920: BE990010
	s_mov_b32 s26, s16                                         // 00000000B924: BE9A0010
	s_mov_b32 s27, s16                                         // 00000000B928: BE9B0010
	s_mov_b32 s28, s16                                         // 00000000B92C: BE9C0010
	s_mov_b32 s29, s16                                         // 00000000B930: BE9D0010
	s_mov_b32 s30, s16                                         // 00000000B934: BE9E0010
	s_mov_b32 s31, s16                                         // 00000000B938: BE9F0010
	s_cmp_lt_i32 s80, 2                                        // 00000000B93C: BF048250
	s_cbranch_scc0 91                                          // 00000000B940: BF84005B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xeb0>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000B944: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000B948: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000B94C: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000B950: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000B954: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000B958: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000B95C: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000B960: 7E1C701E
	s_mov_b32 s77, 0                                           // 00000000B964: BECD0080
	v_mov_b32_e32 v179, 0                                      // 00000000B968: 7F660280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000B96C: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000B970: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000B974: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000B978: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000B97C: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000B980: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000B984: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000B988: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000B98C: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000B990: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000B994: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000B998: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000B99C: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000B9A0: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000B9A4: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000B9A8: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000B9AC: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000B9B0: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000B9B4: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000B9B8: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000B9BC: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000B9C0: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000B9C4: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000B9C8: 7E607100
	s_mov_b32 s17, s85                                         // 00000000B9CC: BE910055
	s_mov_b32 s20, s99                                         // 00000000B9D0: BE940063
	s_branch 574                                               // 00000000B9D4: BF82023E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x16d0>
	s_mov_b32 s17, s16                                         // 00000000B9D8: BE910010
	s_mov_b32 s18, s16                                         // 00000000B9DC: BE920010
	s_mov_b32 s19, s16                                         // 00000000B9E0: BE930010
	s_mov_b32 s20, s16                                         // 00000000B9E4: BE940010
	s_mov_b32 s21, s16                                         // 00000000B9E8: BE950010
	s_mov_b32 s22, s16                                         // 00000000B9EC: BE960010
	s_mov_b32 s23, s16                                         // 00000000B9F0: BE970010
	s_mov_b32 s24, s16                                         // 00000000B9F4: BE980010
	s_mov_b32 s25, s16                                         // 00000000B9F8: BE990010
	s_mov_b32 s26, s16                                         // 00000000B9FC: BE9A0010
	s_mov_b32 s27, s16                                         // 00000000BA00: BE9B0010
	s_mov_b32 s28, s16                                         // 00000000BA04: BE9C0010
	s_mov_b32 s29, s16                                         // 00000000BA08: BE9D0010
	s_mov_b32 s30, s16                                         // 00000000BA0C: BE9E0010
	s_mov_b32 s31, s16                                         // 00000000BA10: BE9F0010
	s_mov_b32 s77, 0                                           // 00000000BA14: BECD0080
	s_cmp_lg_u32 s80, 0                                        // 00000000BA18: BF078050
	s_cbranch_scc0 163                                         // 00000000BA1C: BF8400A3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x10ac>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000BA20: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000BA24: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000BA28: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000BA2C: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000BA30: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000BA34: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000BA38: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000BA3C: 7E1C701E
	v_mov_b32_e32 v179, 0                                      // 00000000BA40: 7F660280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000BA44: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000BA48: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000BA4C: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000BA50: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000BA54: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000BA58: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000BA5C: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000BA60: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000BA64: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000BA68: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000BA6C: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000BA70: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000BA74: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000BA78: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000BA7C: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000BA80: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000BA84: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000BA88: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000BA8C: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000BA90: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000BA94: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000BA98: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000BA9C: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000BAA0: 7E607100
	s_mov_b32 s17, s85                                         // 00000000BAA4: BE910055
	s_mov_b32 s20, s99                                         // 00000000BAA8: BE940063
	s_branch 1220                                              // 00000000BAAC: BF8204C4 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x21c0>
	s_mov_b32 s77, 0                                           // 00000000BAB0: BECD0080
	s_cmp_eq_u32 s80, 2                                        // 00000000BAB4: BF068250
	s_cbranch_scc0 88                                          // 00000000BAB8: BF840058 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x101c>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000BABC: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000BAC0: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000BAC4: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000BAC8: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000BACC: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000BAD0: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000BAD4: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000BAD8: 7E1C701E
	v_mov_b32_e32 v179, 0                                      // 00000000BADC: 7F660280
	v_mov_b32_e32 v178, v111                                   // 00000000BAE0: 7F64036F
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000BAE4: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000BAE8: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000BAEC: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000BAF0: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000BAF4: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000BAF8: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000BAFC: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000BB00: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000BB04: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000BB08: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000BB0C: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000BB10: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000BB14: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000BB18: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000BB1C: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000BB20: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000BB24: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000BB28: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000BB2C: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000BB30: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000BB34: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000BB38: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000BB3C: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000BB40: 7E607100
	s_mov_b32 s17, s85                                         // 00000000BB44: BE910055
	s_mov_b32 s20, s99                                         // 00000000BB48: BE940063
	s_branch 830                                               // 00000000BB4C: BF82033E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1c48>
	s_add_u32 s18, s80, 1                                      // 00000000BB50: 80128150
	s_and_b32 s19, s18, 2                                      // 00000000BB54: 86138212
	s_lshl_b32 s19, s19, 13                                    // 00000000BB58: 8E138D13
	s_bitcmp1_b32 s18, 0                                       // 00000000BB5C: BF0D8012
	s_cselect_b32 s18, s83, 0x10000                            // 00000000BB60: 8512FF53 00010000
	s_or_b32 s18, s19, s18                                     // 00000000BB68: 87121213
	s_or_b32 s18, s18, s33                                     // 00000000BB6C: 87122112
	s_mov_b32 m0, s18                                          // 00000000BB70: BEFC0012
	s_nop 0                                                    // 00000000BB74: BF800000
	buffer_load_dwordx4 v166, s[64:67], s98 offen lds          // 00000000BB78: E05D1000 621000A6
	s_add_u32 m0, s18, 0x1000                                  // 00000000BB80: 807CFF12 00001000
	s_mul_i32 s18, s7, 0x44                                    // 00000000BB88: 9212FF07 00000044
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000BB90: E05D1000 121000A6
	s_cmp_lt_u32 s73, 3                                        // 00000000BB98: BF0A8349
	s_cbranch_scc1 65328                                       // 00000000BB9C: BF85FF30 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc60>
	s_andn2_b32 s18, 2, s80                                    // 00000000BBA0: 89125082
	s_lshl_b32 s18, s18, 14                                    // 00000000BBA4: 8E128E12
	s_or_b32 s17, s18, s17                                     // 00000000BBA8: 87111112
	s_add_u32 s17, s17, s33                                    // 00000000BBAC: 80112111
	s_mov_b32 m0, s17                                          // 00000000BBB0: BEFC0011
	v_readlane_b32 s18, v230, 0                                // 00000000BBB4: D2890012 000101E6
	s_nop 4                                                    // 00000000BBBC: BF800004
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000BBC0: E05D1000 121100A4
	s_add_u32 m0, s17, 0x1000                                  // 00000000BBC8: 807CFF11 00001000
	s_mul_i32 s18, s6, 0x90                                    // 00000000BBD0: 9212FF06 00000090
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000BBD8: E05D1000 121100A4
	s_add_u32 m0, s17, 0x2000                                  // 00000000BBE0: 807CFF11 00002000
	s_mul_i32 s18, s6, 0xa0                                    // 00000000BBE8: 9212FF06 000000A0
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000BBF0: E05D1000 121100A4
	s_add_u32 m0, s17, 0x3000                                  // 00000000BBF8: 807CFF11 00003000
	s_mul_i32 s17, s6, 0xb0                                    // 00000000BC00: 9211FF06 000000B0
	buffer_load_dwordx4 v164, s[68:71], s17 offen lds          // 00000000BC08: E05D1000 111100A4
	s_cmp_lt_u32 s73, 4                                        // 00000000BC10: BF0A8449
	s_cbranch_scc1 65331                                       // 00000000BC14: BF85FF33 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xce4>
	s_branch 65299                                             // 00000000BC18: BF82FF13 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0xc68>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000BC1C: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000BC20: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000BC24: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000BC28: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000BC2C: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000BC30: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000BC34: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000BC38: 7E1C701E
	v_mov_b32_e32 v179, 0                                      // 00000000BC3C: 7F660280
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000BC40: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000BC44: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000BC48: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000BC4C: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000BC50: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000BC54: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000BC58: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000BC5C: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000BC60: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000BC64: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000BC68: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000BC6C: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000BC70: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000BC74: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000BC78: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000BC7C: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000BC80: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000BC84: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000BC88: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000BC8C: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000BC90: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000BC94: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000BC98: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000BC9C: 7E607100
	s_mov_b32 s17, s85                                         // 00000000BCA0: BE910055
	s_mov_b32 s20, s99                                         // 00000000BCA4: BE940063
	s_branch 1093                                              // 00000000BCA8: BF820445 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x21c0>
	v_mov_b64_e32 v[0:1], s[16:17]                             // 00000000BCAC: 7E007010
	v_mov_b64_e32 v[2:3], s[18:19]                             // 00000000BCB0: 7E047012
	v_mov_b64_e32 v[4:5], s[20:21]                             // 00000000BCB4: 7E087014
	v_mov_b64_e32 v[6:7], s[22:23]                             // 00000000BCB8: 7E0C7016
	v_mov_b64_e32 v[8:9], s[24:25]                             // 00000000BCBC: 7E107018
	v_mov_b64_e32 v[10:11], s[26:27]                           // 00000000BCC0: 7E14701A
	v_mov_b64_e32 v[12:13], s[28:29]                           // 00000000BCC4: 7E18701C
	v_mov_b64_e32 v[14:15], s[30:31]                           // 00000000BCC8: 7E1C701E
	v_mov_b32_e32 v179, 0                                      // 00000000BCCC: 7F660280
	s_mov_b32 s77, s80                                         // 00000000BCD0: BECD0050
	v_mov_b32_e32 v178, v111                                   // 00000000BCD4: 7F64036F
	v_mov_b64_e32 v[30:31], v[14:15]                           // 00000000BCD8: 7E3C710E
	v_mov_b64_e32 v[28:29], v[12:13]                           // 00000000BCDC: 7E38710C
	v_mov_b64_e32 v[26:27], v[10:11]                           // 00000000BCE0: 7E34710A
	v_mov_b64_e32 v[24:25], v[8:9]                             // 00000000BCE4: 7E307108
	v_mov_b64_e32 v[22:23], v[6:7]                             // 00000000BCE8: 7E2C7106
	v_mov_b64_e32 v[20:21], v[4:5]                             // 00000000BCEC: 7E287104
	v_mov_b64_e32 v[18:19], v[2:3]                             // 00000000BCF0: 7E247102
	v_mov_b64_e32 v[16:17], v[0:1]                             // 00000000BCF4: 7E207100
	v_mov_b64_e32 v[46:47], v[14:15]                           // 00000000BCF8: 7E5C710E
	v_mov_b64_e32 v[44:45], v[12:13]                           // 00000000BCFC: 7E58710C
	v_mov_b64_e32 v[42:43], v[10:11]                           // 00000000BD00: 7E54710A
	v_mov_b64_e32 v[40:41], v[8:9]                             // 00000000BD04: 7E507108
	v_mov_b64_e32 v[38:39], v[6:7]                             // 00000000BD08: 7E4C7106
	v_mov_b64_e32 v[36:37], v[4:5]                             // 00000000BD0C: 7E487104
	v_mov_b64_e32 v[34:35], v[2:3]                             // 00000000BD10: 7E447102
	v_mov_b64_e32 v[32:33], v[0:1]                             // 00000000BD14: 7E407100
	v_mov_b64_e32 v[62:63], v[14:15]                           // 00000000BD18: 7E7C710E
	v_mov_b64_e32 v[60:61], v[12:13]                           // 00000000BD1C: 7E78710C
	v_mov_b64_e32 v[58:59], v[10:11]                           // 00000000BD20: 7E74710A
	v_mov_b64_e32 v[56:57], v[8:9]                             // 00000000BD24: 7E707108
	v_mov_b64_e32 v[54:55], v[6:7]                             // 00000000BD28: 7E6C7106
	v_mov_b64_e32 v[52:53], v[4:5]                             // 00000000BD2C: 7E687104
	v_mov_b64_e32 v[50:51], v[2:3]                             // 00000000BD30: 7E647102
	v_mov_b64_e32 v[48:49], v[0:1]                             // 00000000BD34: 7E607100
	s_mov_b32 s17, s85                                         // 00000000BD38: BE910055
	s_mov_b32 s20, s99                                         // 00000000BD3C: BE940063
	s_branch 5                                                 // 00000000BD40: BF820005 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1158>
	s_mov_b64 s[10:11], s[20:21]                               // 00000000BD44: BE8A0114
	s_mov_b32 s3, s17                                          // 00000000BD48: BE830011
	global_store_dword v1, v0, s[14:15]                        // 00000000BD4C: DC708000 000E0001
	s_branch 64777                                             // 00000000BD54: BF82FD09 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x57c>
	s_add_u32 s18, s77, 1                                      // 00000000BD58: 8012814D
	s_cmp_ge_u32 s18, s76                                      // 00000000BD5C: BF094C12
	s_cbranch_scc1 1401                                        // 00000000BD60: BF850579 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2748>
	s_setprio 0                                                // 00000000BD64: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000BD68: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000BD6C: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000BD70: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000BD74: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000BD78: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000BD7C: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000BD80: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000BD84: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000BD88: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000BD8C: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000BD90: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000BD94: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000BD98: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000BD9C: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000BDA0: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000BDA4: 7EBE415F
	v_mov_b32_e32 v80, v180                                    // 00000000BDA8: 7EA003B4
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000BDAC: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000BDB4: D2A24050 0002A752
	v_mov_b32_e32 v81, v180                                    // 00000000BDBC: 7EA203B4
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000BDC0: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000BDC8: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000BDD0: 7E804140
	v_mov_b32_e32 v82, v180                                    // 00000000BDD4: 7EA403B4
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000BDD8: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000BDE0: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000BDE4: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000BDEC: 7E844142
	v_mov_b32_e32 v83, v180                                    // 00000000BDF0: 7EA603B4
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000BDF4: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000BDFC: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000BE00: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000BE08: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000BE0C: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000BE10: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000BE14: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000BE18: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000BE1C: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000BE20: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000BE24: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000BE28: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000BE2C: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000BE30: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000BE34: 7E9E414F
	v_mov_b32_e32 v84, v180                                    // 00000000BE38: 7EA803B4
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000BE3C: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000BE44: D2A24054 00028742
	v_mov_b32_e32 v85, v180                                    // 00000000BE4C: 7EAA03B4
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000BE50: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000BE58: D2A24055 00028F46
	v_mov_b32_e32 v86, v180                                    // 00000000BE60: 7EAC03B4
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000BE64: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000BE6C: D2A24056 0002974A
	v_mov_b32_e32 v87, v180                                    // 00000000BE74: 7EAE03B4
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000BE78: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000BE80: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161 offset:16384                   // 00000000BE88: D9FE4000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:16400                   // 00000000BE90: D9FE4010 600000A1
	ds_read_b128 v[110:113], v161 offset:24576                 // 00000000BE98: D9FE6000 6E0000A1
	ds_read_b128 v[114:117], v161 offset:24592                 // 00000000BEA0: D9FE6010 720000A1
	ds_read_b128 v[118:121], v162 offset:16384                 // 00000000BEA8: D9FE4000 760000A2
	ds_read_b128 v[122:125], v162 offset:16400                 // 00000000BEB0: D9FE4010 7A0000A2
	ds_read_b128 v[134:137], v162 offset:24576                 // 00000000BEB8: D9FE6000 860000A2
	ds_read_b128 v[138:141], v162 offset:24592                 // 00000000BEC0: D9FE6010 8A0000A2
	s_barrier                                                  // 00000000BEC8: BF8A0000
	s_setprio 1                                                // 00000000BECC: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000BED0: D3AD0058 0202A17E
	ds_read_b128 v[206:209], v163 offset:16384                 // 00000000BED8: D9FE4000 CE0000A3
	ds_read_b128 v[210:213], v163 offset:16400                 // 00000000BEE0: D9FE4010 D20000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000BEE8: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000BEEC: D3AE0040 02036D5C
	ds_read_b128 v[214:217], v163 offset:24576                 // 00000000BEF4: D9FE6000 D60000A3
	ds_read_b128 v[218:221], v163 offset:24592                 // 00000000BEFC: D9FE6010 DA0000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[110:117], v[182:189], 0// 00000000BF04: D3AE005E 02036D6E
	ds_read_b64_tr_b8 v[110:111], v174                         // 00000000BF0C: D9C40000 6E0000AE
	ds_read_b64_tr_b8 v[112:113], v174 offset:1024             // 00000000BF14: D9C40400 700000AE
	ds_read_b64_tr_b8 v[114:115], v174 offset:2048             // 00000000BF1C: D9C40800 720000AE
	ds_read_b64_tr_b8 v[116:117], v174 offset:3072             // 00000000BF24: D9C40C00 740000AE
	s_min_u32 s18, s20, s84                                    // 00000000BF2C: 83925414
	s_add_u32 m0, s33, s16                                     // 00000000BF30: 807C1021
	s_nop 0                                                    // 00000000BF34: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000BF38: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v180                            // 00000000BF40: 24B96897
	v_fma_f32 v179, v88, v92, v179                             // 00000000BF44: D1CB00B3 06CEB958
	s_waitcnt lgkmcnt(8)                                       // 00000000BF4C: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[118:125], v[190:197], v[64:79]// 00000000BF50: D3AE0040 05037D76
	ds_read_b64_tr_b8 v[118:119], v174 offset:256              // 00000000BF58: D9C40100 760000AE
	ds_read_b64_tr_b8 v[120:121], v174 offset:1280             // 00000000BF60: D9C40500 780000AE
	ds_read_b64_tr_b8 v[122:123], v174 offset:2304             // 00000000BF68: D9C40900 7A0000AE
	ds_read_b64_tr_b8 v[124:125], v174 offset:3328             // 00000000BF70: D9C40D00 7C0000AE
	s_add_u32 m0, s33, s92                                     // 00000000BF78: 807C5C21
	s_nop 0                                                    // 00000000BF7C: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000BF80: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[134:141], v[190:197], v[94:109]// 00000000BF88: D3AE005E 057B7D86
	s_min_u32 s18, s17, s86                                    // 00000000BF90: 83925611
	s_add_u32 m0, s33, s88                                     // 00000000BF94: 807C5821
	s_nop 0                                                    // 00000000BF98: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000BF9C: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000BFA4: 80140914
	s_add_u32 s17, s17, s98                                    // 00000000BFA8: 80116211
	s_waitcnt lgkmcnt(8)                                       // 00000000BFAC: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[206:213], v[198:205], v[64:79]// 00000000BFB0: D3AE0040 05038DCE
	ds_read_b64_tr_b8 v[134:135], v174 offset:512              // 00000000BFB8: D9C40200 860000AE
	ds_read_b64_tr_b8 v[136:137], v174 offset:1536             // 00000000BFC0: D9C40600 880000AE
	ds_read_b64_tr_b8 v[138:139], v174 offset:2560             // 00000000BFC8: D9C40A00 8A0000AE
	ds_read_b64_tr_b8 v[140:141], v174 offset:3584             // 00000000BFD0: D9C40E00 8C0000AE
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[214:221], v[198:205], v[94:109]// 00000000BFD8: D3AE005E 057B8DD6
	s_nop 3                                                    // 00000000BFE0: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000BFE4: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000BFE8: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000BFF0: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000BFF8: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000C000: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000C008: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000C010: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000C018: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000C020: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[110:117], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000C024: D3AC0000 000369AA D3AE0830 04C2A16E
	ds_read_b64_tr_b8 v[206:207], v174 offset:768              // 00000000C034: D9C40300 CE0000AE
	ds_read_b64_tr_b8 v[208:209], v174 offset:1792             // 00000000C03C: D9C40700 D00000AE
	ds_read_b64_tr_b8 v[210:211], v174 offset:2816             // 00000000C044: D9C40B00 D20000AE
	ds_read_b64_tr_b8 v[212:213], v174 offset:3840             // 00000000C04C: D9C40F00 D40000AE
	v_max_f32_e32 v89, v94, v95                                // 00000000C054: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000C058: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000C060: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000C068: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000C070: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000C078: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000C080: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000C088: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[118:125], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000C090: D3AC0000 000369AA D3AE0820 0482A176
	v_max_f32_e32 v88, v88, v89                                // 00000000C0A0: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000C0A4: 7EB20358
	s_nop 1                                                    // 00000000C0A8: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000C0AC: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000C0B0: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000C0B4: 0AB2B18E
	v_max_f32_e32 v89, v178, v89                               // 00000000C0B8: 16B2B3B2
	v_sub_f32_e32 v90, v89, v178                               // 00000000C0BC: 04B56559
	v_cmp_lt_f32_e32 vcc, s93, v90                             // 00000000C0C0: 7C82B45D
	s_waitcnt lgkmcnt(0)                                       // 00000000C0C4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[134:141], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000C0C8: D3AC0000 000369AA D3AE0810 0442A186
	s_cmp_lg_u64 vcc, 0                                        // 00000000C0D8: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000C0DC: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000C0E0: 85158081
	v_cndmask_b32_e64 v111, v178, v89, s[18:19]                // 00000000C0E4: D100006F 004AB3B2
	v_fma_f32 v88, v88, v142, -v111                            // 00000000C0EC: D1CB0058 85BF1D58
	v_floor_f32_e32 v88, v88                                   // 00000000C0F4: 7EB03F58
	v_med3_f32 v88, v88, s91, 0                                // 00000000C0F8: D1D60058 0200B758
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000C100: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[206:213], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000C104: D3AC0000 000369AA D3AE0800 0402A1CE
	v_add_u32_e32 v180, 0x7f, v89                              // 00000000C114: 6968B2FF 0000007F
	v_add_f32_e32 v80, v111, v88                               // 00000000C11C: 02A0B16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000C120: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000C128: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C12C: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C134: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C13C: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C144: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C14C: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C154: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C15C: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C164: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C16C: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C174: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C17C: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C184: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C18C: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C194: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C19C: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C1A4: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000C1AC: BF068015
	s_cbranch_scc1 68                                          // 00000000C1B0: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x16c4>
	v_sub_f32_e32 v96, v178, v111                              // 00000000C1B4: 04C0DFB2
	v_exp_f32_e32 v96, v96                                     // 00000000C1B8: 7EC04160
	s_nop 0                                                    // 00000000C1BC: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000C1C0: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000C1C8: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000C1D0: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000C1D8: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000C1E0: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000C1E8: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000C1F0: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000C1F8: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000C200: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000C208: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000C210: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000C218: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000C220: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000C228: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000C230: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000C238: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000C240: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000C248: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000C250: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000C258: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000C260: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000C268: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000C270: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000C278: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000C280: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000C288: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000C290: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000C298: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000C2A0: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000C2A8: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000C2B0: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000C2B8: D3B14000 0802C100
	v_mul_f32_e32 v179, v179, v96                              // 00000000C2C0: 0B66C1B3
	s_waitcnt vmcnt(3)                                         // 00000000C2C4: BF8C0F73
	s_barrier                                                  // 00000000C2C8: BF8A0000
	s_add_u32 s77, s77, 1                                      // 00000000C2CC: 804D814D
	s_add_u32 s18, s77, 1                                      // 00000000C2D0: 8012814D
	s_cmp_ge_u32 s18, s76                                      // 00000000C2D4: BF094C12
	s_cbranch_scc1 1050                                        // 00000000C2D8: BF85041A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2744>
	s_setprio 0                                                // 00000000C2DC: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000C2E0: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000C2E4: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000C2E8: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000C2EC: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000C2F0: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000C2F4: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000C2F8: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000C2FC: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000C300: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000C304: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000C308: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000C30C: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000C310: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000C314: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000C318: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000C31C: 7EBE415F
	v_mov_b32_e32 v80, v180                                    // 00000000C320: 7EA003B4
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000C324: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000C32C: D2A24050 0002A752
	v_mov_b32_e32 v81, v180                                    // 00000000C334: 7EA203B4
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000C338: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000C340: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000C348: 7E804140
	v_mov_b32_e32 v82, v180                                    // 00000000C34C: 7EA403B4
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000C350: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000C358: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000C35C: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000C364: 7E844142
	v_mov_b32_e32 v83, v180                                    // 00000000C368: 7EA603B4
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000C36C: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000C374: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000C378: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000C380: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000C384: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000C388: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000C38C: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000C390: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000C394: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000C398: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000C39C: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000C3A0: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000C3A4: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000C3A8: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000C3AC: 7E9E414F
	v_mov_b32_e32 v84, v180                                    // 00000000C3B0: 7EA803B4
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000C3B4: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000C3BC: D2A24054 00028742
	v_mov_b32_e32 v85, v180                                    // 00000000C3C4: 7EAA03B4
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000C3C8: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000C3D0: D2A24055 00028F46
	v_mov_b32_e32 v86, v180                                    // 00000000C3D8: 7EAC03B4
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000C3DC: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000C3E4: D2A24056 0002974A
	v_mov_b32_e32 v87, v180                                    // 00000000C3EC: 7EAE03B4
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000C3F0: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000C3F8: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161 offset:32768                   // 00000000C400: D9FE8000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:32784                   // 00000000C408: D9FE8010 600000A1
	ds_read_b128 v[112:115], v161 offset:40960                 // 00000000C410: D9FEA000 700000A1
	ds_read_b128 v[116:119], v161 offset:40976                 // 00000000C418: D9FEA010 740000A1
	ds_read_b128 v[134:137], v162 offset:32768                 // 00000000C420: D9FE8000 860000A2
	ds_read_b128 v[138:141], v162 offset:32784                 // 00000000C428: D9FE8010 8A0000A2
	ds_read_b128 v[206:209], v162 offset:40960                 // 00000000C430: D9FEA000 CE0000A2
	ds_read_b128 v[210:213], v162 offset:40976                 // 00000000C438: D9FEA010 D20000A2
	s_barrier                                                  // 00000000C440: BF8A0000
	s_setprio 1                                                // 00000000C444: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000C448: D3AD0058 0202A17E
	ds_read_b128 v[214:217], v163 offset:32768                 // 00000000C450: D9FE8000 D60000A3
	ds_read_b128 v[218:221], v163 offset:32784                 // 00000000C458: D9FE8010 DA0000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000C460: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000C464: D3AE0040 02036D5C
	ds_read_b128 v[222:225], v163 offset:40960                 // 00000000C46C: D9FEA000 DE0000A3
	ds_read_b128 v[226:229], v163 offset:40976                 // 00000000C474: D9FEA010 E20000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[112:119], v[182:189], 0// 00000000C47C: D3AE005E 02036D70
	ds_read_b64_tr_b8 v[112:113], v175                         // 00000000C484: D9C40000 700000AF
	ds_read_b64_tr_b8 v[114:115], v175 offset:1024             // 00000000C48C: D9C40400 720000AF
	ds_read_b64_tr_b8 v[116:117], v175 offset:2048             // 00000000C494: D9C40800 740000AF
	ds_read_b64_tr_b8 v[118:119], v175 offset:3072             // 00000000C49C: D9C40C00 760000AF
	s_min_u32 s18, s20, s84                                    // 00000000C4A4: 83925414
	s_add_u32 m0, s33, s90                                     // 00000000C4A8: 807C5A21
	s_nop 0                                                    // 00000000C4AC: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000C4B0: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v180                            // 00000000C4B8: 24B96897
	v_fma_f32 v179, v88, v92, v179                             // 00000000C4BC: D1CB00B3 06CEB958
	s_waitcnt lgkmcnt(8)                                       // 00000000C4C4: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[134:141], v[190:197], v[64:79]// 00000000C4C8: D3AE0040 05037D86
	ds_read_b64_tr_b8 v[134:135], v175 offset:256              // 00000000C4D0: D9C40100 860000AF
	ds_read_b64_tr_b8 v[136:137], v175 offset:1280             // 00000000C4D8: D9C40500 880000AF
	ds_read_b64_tr_b8 v[138:139], v175 offset:2304             // 00000000C4E0: D9C40900 8A0000AF
	ds_read_b64_tr_b8 v[140:141], v175 offset:3328             // 00000000C4E8: D9C40D00 8C0000AF
	s_add_u32 m0, s33, s94                                     // 00000000C4F0: 807C5E21
	s_nop 0                                                    // 00000000C4F4: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000C4F8: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[206:213], v[190:197], v[94:109]// 00000000C500: D3AE005E 057B7DCE
	s_min_u32 s18, s17, s86                                    // 00000000C508: 83925611
	s_add_u32 m0, s33, s81                                     // 00000000C50C: 807C5121
	s_nop 0                                                    // 00000000C510: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000C514: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000C51C: 80140914
	s_add_u32 s17, s17, s98                                    // 00000000C520: 80116211
	s_waitcnt lgkmcnt(8)                                       // 00000000C524: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[214:221], v[198:205], v[64:79]// 00000000C528: D3AE0040 05038DD6
	ds_read_b64_tr_b8 v[206:207], v175 offset:512              // 00000000C530: D9C40200 CE0000AF
	ds_read_b64_tr_b8 v[208:209], v175 offset:1536             // 00000000C538: D9C40600 D00000AF
	ds_read_b64_tr_b8 v[210:211], v175 offset:2560             // 00000000C540: D9C40A00 D20000AF
	ds_read_b64_tr_b8 v[212:213], v175 offset:3584             // 00000000C548: D9C40E00 D40000AF
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[222:229], v[198:205], v[94:109]// 00000000C550: D3AE005E 057B8DDE
	s_nop 3                                                    // 00000000C558: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000C55C: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000C560: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000C568: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000C570: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000C578: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000C580: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000C588: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000C590: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000C598: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[112:119], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000C59C: D3AC0000 000369AA D3AE0830 04C2A170
	ds_read_b64_tr_b8 v[112:113], v175 offset:768              // 00000000C5AC: D9C40300 700000AF
	ds_read_b64_tr_b8 v[114:115], v175 offset:1792             // 00000000C5B4: D9C40700 720000AF
	ds_read_b64_tr_b8 v[116:117], v175 offset:2816             // 00000000C5BC: D9C40B00 740000AF
	ds_read_b64_tr_b8 v[118:119], v175 offset:3840             // 00000000C5C4: D9C40F00 760000AF
	v_max_f32_e32 v89, v94, v95                                // 00000000C5CC: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000C5D0: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000C5D8: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000C5E0: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000C5E8: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000C5F0: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000C5F8: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000C600: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000C608: D3AC0000 000369AA D3AE0820 0482A186
	v_max_f32_e32 v88, v88, v89                                // 00000000C618: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000C61C: 7EB20358
	s_nop 1                                                    // 00000000C620: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000C624: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000C628: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000C62C: 0AB2B18E
	v_max_f32_e32 v89, v111, v89                               // 00000000C630: 16B2B36F
	v_sub_f32_e32 v90, v89, v111                               // 00000000C634: 04B4DF59
	v_cmp_lt_f32_e32 vcc, s93, v90                             // 00000000C638: 7C82B45D
	s_waitcnt lgkmcnt(0)                                       // 00000000C63C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[206:213], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000C640: D3AC0000 000369AA D3AE0810 0442A1CE
	s_cmp_lg_u64 vcc, 0                                        // 00000000C650: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000C654: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000C658: 85158081
	v_cndmask_b32_e64 v178, v111, v89, s[18:19]                // 00000000C65C: D10000B2 004AB36F
	v_fma_f32 v88, v88, v142, -v178                            // 00000000C664: D1CB0058 86CB1D58
	v_floor_f32_e32 v88, v88                                   // 00000000C66C: 7EB03F58
	v_med3_f32 v88, v88, s91, 0                                // 00000000C670: D1D60058 0200B758
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000C678: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[112:119], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000C67C: D3AC0000 000369AA D3AE0800 0402A170
	v_add_u32_e32 v180, 0x7f, v89                              // 00000000C68C: 6968B2FF 0000007F
	v_add_f32_e32 v80, v178, v88                               // 00000000C694: 02A0B1B2
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000C698: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000C6A0: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C6A4: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000C6AC: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C6B4: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C6BC: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C6C4: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C6CC: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C6D4: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C6DC: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C6E4: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C6EC: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C6F4: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C6FC: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C704: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C70C: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C714: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000C71C: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000C724: BF068015
	s_cbranch_scc1 68                                          // 00000000C728: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1c3c>
	v_sub_f32_e32 v96, v111, v178                              // 00000000C72C: 04C1656F
	v_exp_f32_e32 v96, v96                                     // 00000000C730: 7EC04160
	s_nop 0                                                    // 00000000C734: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000C738: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000C740: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000C748: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000C750: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000C758: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000C760: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000C768: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000C770: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000C778: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000C780: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000C788: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000C790: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000C798: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000C7A0: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000C7A8: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000C7B0: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000C7B8: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000C7C0: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000C7C8: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000C7D0: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000C7D8: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000C7E0: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000C7E8: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000C7F0: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000C7F8: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000C800: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000C808: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000C810: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000C818: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000C820: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000C828: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000C830: D3B14000 0802C100
	v_mul_f32_e32 v179, v179, v96                              // 00000000C838: 0B66C1B3
	s_waitcnt vmcnt(3)                                         // 00000000C83C: BF8C0F73
	s_barrier                                                  // 00000000C840: BF8A0000
	s_add_u32 s77, s77, 1                                      // 00000000C844: 804D814D
	s_add_u32 s18, s77, 1                                      // 00000000C848: 8012814D
	s_cmp_ge_u32 s18, s76                                      // 00000000C84C: BF094C12
	s_cbranch_scc1 701                                         // 00000000C850: BF8502BD <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2748>
	s_setprio 0                                                // 00000000C854: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000C858: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000C85C: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000C860: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000C864: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000C868: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000C86C: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000C870: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000C874: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000C878: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000C87C: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000C880: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000C884: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000C888: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000C88C: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000C890: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000C894: 7EBE415F
	v_mov_b32_e32 v80, v180                                    // 00000000C898: 7EA003B4
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000C89C: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000C8A4: D2A24050 0002A752
	v_mov_b32_e32 v81, v180                                    // 00000000C8AC: 7EA203B4
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000C8B0: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000C8B8: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000C8C0: 7E804140
	v_mov_b32_e32 v82, v180                                    // 00000000C8C4: 7EA403B4
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000C8C8: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000C8D0: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000C8D4: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000C8DC: 7E844142
	v_mov_b32_e32 v83, v180                                    // 00000000C8E0: 7EA603B4
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000C8E4: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000C8EC: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000C8F0: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000C8F8: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000C8FC: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000C900: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000C904: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000C908: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000C90C: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000C910: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000C914: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000C918: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000C91C: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000C920: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000C924: 7E9E414F
	v_mov_b32_e32 v84, v180                                    // 00000000C928: 7EA803B4
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000C92C: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000C934: D2A24054 00028742
	v_mov_b32_e32 v85, v180                                    // 00000000C93C: 7EAA03B4
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000C940: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000C948: D2A24055 00028F46
	v_mov_b32_e32 v86, v180                                    // 00000000C950: 7EAC03B4
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000C954: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000C95C: D2A24056 0002974A
	v_mov_b32_e32 v87, v180                                    // 00000000C964: 7EAE03B4
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000C968: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000C970: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161 offset:49152                   // 00000000C978: D9FEC000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:49168                   // 00000000C980: D9FEC010 600000A1
	ds_read_b128 v[110:113], v161 offset:57344                 // 00000000C988: D9FEE000 6E0000A1
	ds_read_b128 v[114:117], v161 offset:57360                 // 00000000C990: D9FEE010 720000A1
	ds_read_b128 v[118:121], v162 offset:49152                 // 00000000C998: D9FEC000 760000A2
	ds_read_b128 v[122:125], v162 offset:49168                 // 00000000C9A0: D9FEC010 7A0000A2
	ds_read_b128 v[134:137], v162 offset:57344                 // 00000000C9A8: D9FEE000 860000A2
	ds_read_b128 v[138:141], v162 offset:57360                 // 00000000C9B0: D9FEE010 8A0000A2
	s_barrier                                                  // 00000000C9B8: BF8A0000
	s_setprio 1                                                // 00000000C9BC: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000C9C0: D3AD0058 0202A17E
	ds_read_b128 v[206:209], v163 offset:49152                 // 00000000C9C8: D9FEC000 CE0000A3
	ds_read_b128 v[210:213], v163 offset:49168                 // 00000000C9D0: D9FEC010 D20000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000C9D8: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000C9DC: D3AE0040 02036D5C
	ds_read_b128 v[214:217], v163 offset:57344                 // 00000000C9E4: D9FEE000 D60000A3
	ds_read_b128 v[218:221], v163 offset:57360                 // 00000000C9EC: D9FEE010 DA0000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[110:117], v[182:189], 0// 00000000C9F4: D3AE005E 02036D6E
	ds_read_b64_tr_b8 v[110:111], v176                         // 00000000C9FC: D9C40000 6E0000B0
	ds_read_b64_tr_b8 v[112:113], v176 offset:1024             // 00000000CA04: D9C40400 700000B0
	ds_read_b64_tr_b8 v[114:115], v176 offset:2048             // 00000000CA0C: D9C40800 720000B0
	ds_read_b64_tr_b8 v[116:117], v176 offset:3072             // 00000000CA14: D9C40C00 740000B0
	s_min_u32 s18, s20, s84                                    // 00000000CA1C: 83925414
	s_add_u32 m0, s33, s89                                     // 00000000CA20: 807C5921
	s_nop 0                                                    // 00000000CA24: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000CA28: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v180                            // 00000000CA30: 24B96897
	v_fma_f32 v179, v88, v92, v179                             // 00000000CA34: D1CB00B3 06CEB958
	s_waitcnt lgkmcnt(8)                                       // 00000000CA3C: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[118:125], v[190:197], v[64:79]// 00000000CA40: D3AE0040 05037D76
	ds_read_b64_tr_b8 v[118:119], v176 offset:256              // 00000000CA48: D9C40100 760000B0
	ds_read_b64_tr_b8 v[120:121], v176 offset:1280             // 00000000CA50: D9C40500 780000B0
	ds_read_b64_tr_b8 v[122:123], v176 offset:2304             // 00000000CA58: D9C40900 7A0000B0
	ds_read_b64_tr_b8 v[124:125], v176 offset:3328             // 00000000CA60: D9C40D00 7C0000B0
	s_add_u32 m0, s33, s95                                     // 00000000CA68: 807C5F21
	s_nop 0                                                    // 00000000CA6C: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000CA70: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[134:141], v[190:197], v[94:109]// 00000000CA78: D3AE005E 057B7D86
	s_min_u32 s18, s17, s86                                    // 00000000CA80: 83925611
	s_add_u32 m0, s33, s82                                     // 00000000CA84: 807C5221
	s_nop 0                                                    // 00000000CA88: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000CA8C: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000CA94: 80140914
	s_add_u32 s17, s17, s98                                    // 00000000CA98: 80116211
	s_waitcnt lgkmcnt(8)                                       // 00000000CA9C: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[206:213], v[198:205], v[64:79]// 00000000CAA0: D3AE0040 05038DCE
	ds_read_b64_tr_b8 v[134:135], v176 offset:512              // 00000000CAA8: D9C40200 860000B0
	ds_read_b64_tr_b8 v[136:137], v176 offset:1536             // 00000000CAB0: D9C40600 880000B0
	ds_read_b64_tr_b8 v[138:139], v176 offset:2560             // 00000000CAB8: D9C40A00 8A0000B0
	ds_read_b64_tr_b8 v[140:141], v176 offset:3584             // 00000000CAC0: D9C40E00 8C0000B0
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[214:221], v[198:205], v[94:109]// 00000000CAC8: D3AE005E 057B8DD6
	s_nop 3                                                    // 00000000CAD0: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000CAD4: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000CAD8: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000CAE0: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000CAE8: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000CAF0: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000CAF8: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000CB00: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000CB08: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000CB10: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[110:117], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000CB14: D3AC0000 000369AA D3AE0830 04C2A16E
	ds_read_b64_tr_b8 v[206:207], v176 offset:768              // 00000000CB24: D9C40300 CE0000B0
	ds_read_b64_tr_b8 v[208:209], v176 offset:1792             // 00000000CB2C: D9C40700 D00000B0
	ds_read_b64_tr_b8 v[210:211], v176 offset:2816             // 00000000CB34: D9C40B00 D20000B0
	ds_read_b64_tr_b8 v[212:213], v176 offset:3840             // 00000000CB3C: D9C40F00 D40000B0
	v_max_f32_e32 v89, v94, v95                                // 00000000CB44: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000CB48: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000CB50: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000CB58: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000CB60: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000CB68: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000CB70: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000CB78: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[118:125], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000CB80: D3AC0000 000369AA D3AE0820 0482A176
	v_max_f32_e32 v88, v88, v89                                // 00000000CB90: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000CB94: 7EB20358
	s_nop 1                                                    // 00000000CB98: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000CB9C: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000CBA0: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000CBA4: 0AB2B18E
	v_max_f32_e32 v89, v178, v89                               // 00000000CBA8: 16B2B3B2
	v_sub_f32_e32 v90, v89, v178                               // 00000000CBAC: 04B56559
	v_cmp_lt_f32_e32 vcc, s93, v90                             // 00000000CBB0: 7C82B45D
	s_waitcnt lgkmcnt(0)                                       // 00000000CBB4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[134:141], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000CBB8: D3AC0000 000369AA D3AE0810 0442A186
	s_cmp_lg_u64 vcc, 0                                        // 00000000CBC8: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000CBCC: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000CBD0: 85158081
	v_cndmask_b32_e64 v111, v178, v89, s[18:19]                // 00000000CBD4: D100006F 004AB3B2
	v_fma_f32 v88, v88, v142, -v111                            // 00000000CBDC: D1CB0058 85BF1D58
	v_floor_f32_e32 v88, v88                                   // 00000000CBE4: 7EB03F58
	v_med3_f32 v88, v88, s91, 0                                // 00000000CBE8: D1D60058 0200B758
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000CBF0: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[206:213], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000CBF4: D3AC0000 000369AA D3AE0800 0402A1CE
	v_add_u32_e32 v180, 0x7f, v89                              // 00000000CC04: 6968B2FF 0000007F
	v_add_f32_e32 v80, v111, v88                               // 00000000CC0C: 02A0B16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000CC10: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000CC18: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000CC1C: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000CC24: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CC2C: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CC34: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CC3C: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CC44: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CC4C: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CC54: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CC5C: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CC64: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CC6C: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CC74: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CC7C: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CC84: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CC8C: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000CC94: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000CC9C: BF068015
	s_cbranch_scc1 68                                          // 00000000CCA0: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x21b4>
	v_sub_f32_e32 v96, v178, v111                              // 00000000CCA4: 04C0DFB2
	v_exp_f32_e32 v96, v96                                     // 00000000CCA8: 7EC04160
	s_nop 0                                                    // 00000000CCAC: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000CCB0: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000CCB8: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000CCC0: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000CCC8: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000CCD0: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000CCD8: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000CCE0: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000CCE8: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000CCF0: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000CCF8: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000CD00: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000CD08: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000CD10: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000CD18: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000CD20: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000CD28: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000CD30: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000CD38: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000CD40: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000CD48: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000CD50: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000CD58: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000CD60: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000CD68: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000CD70: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000CD78: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000CD80: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000CD88: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000CD90: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000CD98: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000CDA0: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000CDA8: D3B14000 0802C100
	v_mul_f32_e32 v179, v179, v96                              // 00000000CDB0: 0B66C1B3
	s_waitcnt vmcnt(3)                                         // 00000000CDB4: BF8C0F73
	s_barrier                                                  // 00000000CDB8: BF8A0000
	s_add_u32 s77, s77, 1                                      // 00000000CDBC: 804D814D
	s_add_u32 s18, s77, 1                                      // 00000000CDC0: 8012814D
	s_cmp_ge_u32 s18, s76                                      // 00000000CDC4: BF094C12
	s_cbranch_scc1 348                                         // 00000000CDC8: BF85015C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x273c>
	s_setprio 0                                                // 00000000CDCC: BF8F0000
	v_exp_f32_e32 v96, v80                                     // 00000000CDD0: 7EC04150
	v_exp_f32_e32 v81, v81                                     // 00000000CDD4: 7EA24151
	v_exp_f32_e32 v82, v82                                     // 00000000CDD8: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000CDDC: 7EA64153
	v_exp_f32_e32 v84, v84                                     // 00000000CDE0: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000CDE4: 7EAA4155
	v_exp_f32_e32 v86, v86                                     // 00000000CDE8: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000CDEC: 7EAE4157
	v_exp_f32_e32 v88, v88                                     // 00000000CDF0: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000CDF4: 7EB24159
	v_exp_f32_e32 v90, v90                                     // 00000000CDF8: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000CDFC: 7EB6415B
	v_exp_f32_e32 v92, v92                                     // 00000000CE00: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000CE04: 7EBA415D
	v_exp_f32_e32 v94, v94                                     // 00000000CE08: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000CE0C: 7EBE415F
	v_mov_b32_e32 v80, v180                                    // 00000000CE10: 7EA003B4
	v_cvt_pk_fp8_f32 v80, v96, v81                             // 00000000CE14: D2A20050 0002A360
	v_cvt_pk_fp8_f32 v80, v82, v83 op_sel:[0,0,1]              // 00000000CE1C: D2A24050 0002A752
	v_mov_b32_e32 v81, v180                                    // 00000000CE24: 7EA203B4
	v_cvt_pk_fp8_f32 v81, v84, v85                             // 00000000CE28: D2A20051 0002AB54
	v_cvt_pk_fp8_f32 v81, v86, v87 op_sel:[0,0,1]              // 00000000CE30: D2A24051 0002AF56
	v_exp_f32_e32 v64, v64                                     // 00000000CE38: 7E804140
	v_mov_b32_e32 v82, v180                                    // 00000000CE3C: 7EA403B4
	v_cvt_pk_fp8_f32 v82, v88, v89                             // 00000000CE40: D2A20052 0002B358
	v_exp_f32_e32 v65, v65                                     // 00000000CE48: 7E824141
	v_cvt_pk_fp8_f32 v82, v90, v91 op_sel:[0,0,1]              // 00000000CE4C: D2A24052 0002B75A
	v_exp_f32_e32 v66, v66                                     // 00000000CE54: 7E844142
	v_mov_b32_e32 v83, v180                                    // 00000000CE58: 7EA603B4
	v_cvt_pk_fp8_f32 v83, v92, v93                             // 00000000CE5C: D2A20053 0002BB5C
	v_exp_f32_e32 v67, v67                                     // 00000000CE64: 7E864143
	v_cvt_pk_fp8_f32 v83, v94, v95 op_sel:[0,0,1]              // 00000000CE68: D2A24053 0002BF5E
	v_exp_f32_e32 v68, v68                                     // 00000000CE70: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000CE74: 7E8A4145
	v_exp_f32_e32 v70, v70                                     // 00000000CE78: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000CE7C: 7E8E4147
	v_exp_f32_e32 v72, v72                                     // 00000000CE80: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000CE84: 7E924149
	v_exp_f32_e32 v74, v74                                     // 00000000CE88: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000CE8C: 7E96414B
	v_exp_f32_e32 v76, v76                                     // 00000000CE90: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000CE94: 7E9A414D
	v_exp_f32_e32 v78, v78                                     // 00000000CE98: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000CE9C: 7E9E414F
	v_mov_b32_e32 v84, v180                                    // 00000000CEA0: 7EA803B4
	v_cvt_pk_fp8_f32 v84, v64, v65                             // 00000000CEA4: D2A20054 00028340
	v_cvt_pk_fp8_f32 v84, v66, v67 op_sel:[0,0,1]              // 00000000CEAC: D2A24054 00028742
	v_mov_b32_e32 v85, v180                                    // 00000000CEB4: 7EAA03B4
	v_cvt_pk_fp8_f32 v85, v68, v69                             // 00000000CEB8: D2A20055 00028B44
	v_cvt_pk_fp8_f32 v85, v70, v71 op_sel:[0,0,1]              // 00000000CEC0: D2A24055 00028F46
	v_mov_b32_e32 v86, v180                                    // 00000000CEC8: 7EAC03B4
	v_cvt_pk_fp8_f32 v86, v72, v73                             // 00000000CECC: D2A20056 00029348
	v_cvt_pk_fp8_f32 v86, v74, v75 op_sel:[0,0,1]              // 00000000CED4: D2A24056 0002974A
	v_mov_b32_e32 v87, v180                                    // 00000000CEDC: 7EAE03B4
	v_cvt_pk_fp8_f32 v87, v76, v77                             // 00000000CEE0: D2A20057 00029B4C
	v_cvt_pk_fp8_f32 v87, v78, v79 op_sel:[0,0,1]              // 00000000CEE8: D2A24057 00029F4E
	ds_read_b128 v[92:95], v161                                // 00000000CEF0: D9FE0000 5C0000A1
	ds_read_b128 v[96:99], v161 offset:16                      // 00000000CEF8: D9FE0010 600000A1
	ds_read_b128 v[112:115], v161 offset:8192                  // 00000000CF00: D9FE2000 700000A1
	ds_read_b128 v[116:119], v161 offset:8208                  // 00000000CF08: D9FE2010 740000A1
	ds_read_b128 v[134:137], v162                              // 00000000CF10: D9FE0000 860000A2
	ds_read_b128 v[138:141], v162 offset:16                    // 00000000CF18: D9FE0010 8A0000A2
	ds_read_b128 v[206:209], v162 offset:8192                  // 00000000CF20: D9FE2000 CE0000A2
	ds_read_b128 v[210:213], v162 offset:8208                  // 00000000CF28: D9FE2010 D20000A2
	s_barrier                                                  // 00000000CF30: BF8A0000
	s_setprio 1                                                // 00000000CF34: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[88:91], v[126:133], v[80:87], 0// 00000000CF38: D3AD0058 0202A17E
	ds_read_b128 v[214:217], v163                              // 00000000CF40: D9FE0000 D60000A3
	ds_read_b128 v[218:221], v163 offset:16                    // 00000000CF48: D9FE0010 DA0000A3
	s_waitcnt lgkmcnt(6)                                       // 00000000CF50: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[92:99], v[182:189], 0// 00000000CF54: D3AE0040 02036D5C
	ds_read_b128 v[222:225], v163 offset:8192                  // 00000000CF5C: D9FE2000 DE0000A3
	ds_read_b128 v[226:229], v163 offset:8208                  // 00000000CF64: D9FE2010 E20000A3
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[112:119], v[182:189], 0// 00000000CF6C: D3AE005E 02036D70
	ds_read_b64_tr_b8 v[112:113], v177                         // 00000000CF74: D9C40000 700000B1
	ds_read_b64_tr_b8 v[114:115], v177 offset:1024             // 00000000CF7C: D9C40400 720000B1
	ds_read_b64_tr_b8 v[116:117], v177 offset:2048             // 00000000CF84: D9C40800 740000B1
	ds_read_b64_tr_b8 v[118:119], v177 offset:3072             // 00000000CF8C: D9C40C00 760000B1
	s_min_u32 s18, s20, s84                                    // 00000000CF94: 83925414
	s_add_u32 m0, s33, s96                                     // 00000000CF98: 807C6021
	s_nop 0                                                    // 00000000CF9C: BF800000
	buffer_load_dwordx4 v164, s[68:71], s18 offen lds          // 00000000CFA0: E05D1000 121100A4
	v_lshlrev_b32_e32 v92, 23, v180                            // 00000000CFA8: 24B96897
	v_fma_f32 v179, v88, v92, v179                             // 00000000CFAC: D1CB00B3 06CEB958
	s_waitcnt lgkmcnt(8)                                       // 00000000CFB4: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[134:141], v[190:197], v[64:79]// 00000000CFB8: D3AE0040 05037D86
	ds_read_b64_tr_b8 v[134:135], v177 offset:256              // 00000000CFC0: D9C40100 860000B1
	ds_read_b64_tr_b8 v[136:137], v177 offset:1280             // 00000000CFC8: D9C40500 880000B1
	ds_read_b64_tr_b8 v[138:139], v177 offset:2304             // 00000000CFD0: D9C40900 8A0000B1
	ds_read_b64_tr_b8 v[140:141], v177 offset:3328             // 00000000CFD8: D9C40D00 8C0000B1
	s_add_u32 m0, s33, s97                                     // 00000000CFE0: 807C6121
	s_nop 0                                                    // 00000000CFE4: BF800000
	buffer_load_dwordx4 v165, s[68:71], s18 offen lds          // 00000000CFE8: E05D1000 121100A5
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[206:213], v[190:197], v[94:109]// 00000000CFF0: D3AE005E 057B7DCE
	s_min_u32 s18, s17, s86                                    // 00000000CFF8: 83925611
	s_add_u32 m0, s33, s83                                     // 00000000CFFC: 807C5321
	s_nop 0                                                    // 00000000D000: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000D004: E05D1000 121000A6
	s_add_u32 s20, s20, s9                                     // 00000000D00C: 80140914
	s_add_u32 s17, s17, s98                                    // 00000000D010: 80116211
	s_waitcnt lgkmcnt(8)                                       // 00000000D014: BF8CC87F
	v_mfma_f32_32x32x64_f8f6f4 v[64:79], v[214:221], v[198:205], v[64:79]// 00000000D018: D3AE0040 05038DD6
	ds_read_b64_tr_b8 v[206:207], v177 offset:512              // 00000000D020: D9C40200 CE0000B1
	ds_read_b64_tr_b8 v[208:209], v177 offset:1536             // 00000000D028: D9C40600 D00000B1
	ds_read_b64_tr_b8 v[210:211], v177 offset:2560             // 00000000D030: D9C40A00 D20000B1
	ds_read_b64_tr_b8 v[212:213], v177 offset:3584             // 00000000D038: D9C40E00 D40000B1
	v_mfma_f32_32x32x64_f8f6f4 v[94:109], v[222:229], v[198:205], v[94:109]// 00000000D040: D3AE005E 057B8DDE
	s_nop 3                                                    // 00000000D048: BF800003
	v_max_f32_e32 v88, v64, v65                                // 00000000D04C: 16B08340
	v_max3_f32 v88, v66, v67, v88                              // 00000000D050: D1D30058 05628742
	v_max3_f32 v88, v68, v69, v88                              // 00000000D058: D1D30058 05628B44
	v_max3_f32 v88, v70, v71, v88                              // 00000000D060: D1D30058 05628F46
	v_max3_f32 v88, v72, v73, v88                              // 00000000D068: D1D30058 05629348
	v_max3_f32 v88, v74, v75, v88                              // 00000000D070: D1D30058 0562974A
	v_max3_f32 v88, v76, v77, v88                              // 00000000D078: D1D30058 05629B4C
	v_max3_f32 v88, v78, v79, v88                              // 00000000D080: D1D30058 05629F4E
	s_waitcnt lgkmcnt(4)                                       // 00000000D088: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[112:119], v[80:87], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000D08C: D3AC0000 000369AA D3AE0830 04C2A170
	ds_read_b64_tr_b8 v[112:113], v177 offset:768              // 00000000D09C: D9C40300 700000B1
	ds_read_b64_tr_b8 v[114:115], v177 offset:1792             // 00000000D0A4: D9C40700 720000B1
	ds_read_b64_tr_b8 v[116:117], v177 offset:2816             // 00000000D0AC: D9C40B00 740000B1
	ds_read_b64_tr_b8 v[118:119], v177 offset:3840             // 00000000D0B4: D9C40F00 760000B1
	v_max_f32_e32 v89, v94, v95                                // 00000000D0BC: 16B2BF5E
	v_max3_f32 v89, v96, v97, v89                              // 00000000D0C0: D1D30059 0566C360
	v_max3_f32 v89, v98, v99, v89                              // 00000000D0C8: D1D30059 0566C762
	v_max3_f32 v89, v100, v101, v89                            // 00000000D0D0: D1D30059 0566CB64
	v_max3_f32 v89, v102, v103, v89                            // 00000000D0D8: D1D30059 0566CF66
	v_max3_f32 v89, v104, v105, v89                            // 00000000D0E0: D1D30059 0566D368
	v_max3_f32 v89, v106, v107, v89                            // 00000000D0E8: D1D30059 0566D76A
	v_max3_f32 v89, v108, v109, v89                            // 00000000D0F0: D1D30059 0566DB6C
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[134:141], v[80:87], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000D0F8: D3AC0000 000369AA D3AE0820 0482A186
	v_max_f32_e32 v88, v88, v89                                // 00000000D108: 16B0B358
	v_mov_b32_e32 v89, v88                                     // 00000000D10C: 7EB20358
	s_nop 1                                                    // 00000000D110: BF800001
	v_permlane32_swap_b32_e32 v88, v89                         // 00000000D114: 7EB0B559
	v_max_f32_e32 v88, v88, v89                                // 00000000D118: 16B0B358
	v_mul_f32_e32 v89, v142, v88                               // 00000000D11C: 0AB2B18E
	v_max_f32_e32 v89, v111, v89                               // 00000000D120: 16B2B36F
	v_sub_f32_e32 v90, v89, v111                               // 00000000D124: 04B4DF59
	v_cmp_lt_f32_e32 vcc, s93, v90                             // 00000000D128: 7C82B45D
	s_waitcnt lgkmcnt(0)                                       // 00000000D12C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[206:213], v[80:87], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000D130: D3AC0000 000369AA D3AE0810 0442A1CE
	s_cmp_lg_u64 vcc, 0                                        // 00000000D140: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000D144: 859280C1
	s_cselect_b32 s21, 1, 0                                    // 00000000D148: 85158081
	v_cndmask_b32_e64 v178, v111, v89, s[18:19]                // 00000000D14C: D10000B2 004AB36F
	v_fma_f32 v88, v88, v142, -v178                            // 00000000D154: D1CB0058 86CB1D58
	v_floor_f32_e32 v88, v88                                   // 00000000D15C: 7EB03F58
	v_med3_f32 v88, v88, s91, 0                                // 00000000D160: D1D60058 0200B758
	v_cvt_i32_f32_e32 v89, v88                                 // 00000000D168: 7EB21158
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[112:119], v[80:87], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000D16C: D3AC0000 000369AA D3AE0800 0402A170
	v_add_u32_e32 v180, 0x7f, v89                              // 00000000D17C: 6968B2FF 0000007F
	v_add_f32_e32 v80, v178, v88                               // 00000000D184: 02A0B1B2
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000D188: 04DCA0FF 40C00000
	v_mov_b32_e32 v143, v142                                   // 00000000D190: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000D194: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000D19C: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D1A4: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D1AC: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D1B4: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D1BC: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D1C4: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D1CC: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D1D4: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D1DC: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D1E4: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D1EC: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D1F4: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D1FC: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D204: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000D20C: D3B00042 1DBB1D60
	s_cmp_eq_u32 s21, 0                                        // 00000000D214: BF068015
	s_cbranch_scc1 68                                          // 00000000D218: BF850044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x272c>
	v_sub_f32_e32 v96, v111, v178                              // 00000000D21C: 04C1656F
	v_exp_f32_e32 v96, v96                                     // 00000000D220: 7EC04160
	s_nop 0                                                    // 00000000D224: BF800000
	v_pk_mul_f32 v[62:63], v[62:63], v[96:97] op_sel_hi:[1,0]  // 00000000D228: D3B1403E 0802C13E
	v_pk_mul_f32 v[60:61], v[60:61], v[96:97] op_sel_hi:[1,0]  // 00000000D230: D3B1403C 0802C13C
	v_pk_mul_f32 v[58:59], v[58:59], v[96:97] op_sel_hi:[1,0]  // 00000000D238: D3B1403A 0802C13A
	v_pk_mul_f32 v[56:57], v[56:57], v[96:97] op_sel_hi:[1,0]  // 00000000D240: D3B14038 0802C138
	v_pk_mul_f32 v[54:55], v[54:55], v[96:97] op_sel_hi:[1,0]  // 00000000D248: D3B14036 0802C136
	v_pk_mul_f32 v[52:53], v[52:53], v[96:97] op_sel_hi:[1,0]  // 00000000D250: D3B14034 0802C134
	v_pk_mul_f32 v[50:51], v[50:51], v[96:97] op_sel_hi:[1,0]  // 00000000D258: D3B14032 0802C132
	v_pk_mul_f32 v[48:49], v[48:49], v[96:97] op_sel_hi:[1,0]  // 00000000D260: D3B14030 0802C130
	v_pk_mul_f32 v[46:47], v[46:47], v[96:97] op_sel_hi:[1,0]  // 00000000D268: D3B1402E 0802C12E
	v_pk_mul_f32 v[44:45], v[44:45], v[96:97] op_sel_hi:[1,0]  // 00000000D270: D3B1402C 0802C12C
	v_pk_mul_f32 v[42:43], v[42:43], v[96:97] op_sel_hi:[1,0]  // 00000000D278: D3B1402A 0802C12A
	v_pk_mul_f32 v[40:41], v[40:41], v[96:97] op_sel_hi:[1,0]  // 00000000D280: D3B14028 0802C128
	v_pk_mul_f32 v[38:39], v[38:39], v[96:97] op_sel_hi:[1,0]  // 00000000D288: D3B14026 0802C126
	v_pk_mul_f32 v[36:37], v[36:37], v[96:97] op_sel_hi:[1,0]  // 00000000D290: D3B14024 0802C124
	v_pk_mul_f32 v[34:35], v[34:35], v[96:97] op_sel_hi:[1,0]  // 00000000D298: D3B14022 0802C122
	v_pk_mul_f32 v[32:33], v[32:33], v[96:97] op_sel_hi:[1,0]  // 00000000D2A0: D3B14020 0802C120
	v_pk_mul_f32 v[30:31], v[30:31], v[96:97] op_sel_hi:[1,0]  // 00000000D2A8: D3B1401E 0802C11E
	v_pk_mul_f32 v[28:29], v[28:29], v[96:97] op_sel_hi:[1,0]  // 00000000D2B0: D3B1401C 0802C11C
	v_pk_mul_f32 v[26:27], v[26:27], v[96:97] op_sel_hi:[1,0]  // 00000000D2B8: D3B1401A 0802C11A
	v_pk_mul_f32 v[24:25], v[24:25], v[96:97] op_sel_hi:[1,0]  // 00000000D2C0: D3B14018 0802C118
	v_pk_mul_f32 v[22:23], v[22:23], v[96:97] op_sel_hi:[1,0]  // 00000000D2C8: D3B14016 0802C116
	v_pk_mul_f32 v[20:21], v[20:21], v[96:97] op_sel_hi:[1,0]  // 00000000D2D0: D3B14014 0802C114
	v_pk_mul_f32 v[18:19], v[18:19], v[96:97] op_sel_hi:[1,0]  // 00000000D2D8: D3B14012 0802C112
	v_pk_mul_f32 v[16:17], v[16:17], v[96:97] op_sel_hi:[1,0]  // 00000000D2E0: D3B14010 0802C110
	v_pk_mul_f32 v[14:15], v[14:15], v[96:97] op_sel_hi:[1,0]  // 00000000D2E8: D3B1400E 0802C10E
	v_pk_mul_f32 v[12:13], v[12:13], v[96:97] op_sel_hi:[1,0]  // 00000000D2F0: D3B1400C 0802C10C
	v_pk_mul_f32 v[10:11], v[10:11], v[96:97] op_sel_hi:[1,0]  // 00000000D2F8: D3B1400A 0802C10A
	v_pk_mul_f32 v[8:9], v[8:9], v[96:97] op_sel_hi:[1,0]      // 00000000D300: D3B14008 0802C108
	v_pk_mul_f32 v[6:7], v[6:7], v[96:97] op_sel_hi:[1,0]      // 00000000D308: D3B14006 0802C106
	v_pk_mul_f32 v[4:5], v[4:5], v[96:97] op_sel_hi:[1,0]      // 00000000D310: D3B14004 0802C104
	v_pk_mul_f32 v[2:3], v[2:3], v[96:97] op_sel_hi:[1,0]      // 00000000D318: D3B14002 0802C102
	v_pk_mul_f32 v[0:1], v[0:1], v[96:97] op_sel_hi:[1,0]      // 00000000D320: D3B14000 0802C100
	v_mul_f32_e32 v179, v179, v96                              // 00000000D328: 0B66C1B3
	s_waitcnt vmcnt(3)                                         // 00000000D32C: BF8C0F73
	s_barrier                                                  // 00000000D330: BF8A0000
	s_add_u32 s77, s77, 1                                      // 00000000D334: 804D814D
	s_branch 64135                                             // 00000000D338: BF82FA87 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1158>
	v_mov_b32_e32 v178, v111                                   // 00000000D33C: 7F64036F
	s_branch 1                                                 // 00000000D340: BF820001 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2748>
	v_mov_b32_e32 v178, v111                                   // 00000000D344: 7F64036F
	s_add_u32 s17, s77, s80                                    // 00000000D348: 8011504D
	s_bitcmp1_b32 s17, 0                                       // 00000000D34C: BF0D8011
	s_cselect_b64 s[18:19], -1, 0                              // 00000000D350: 859280C1
	s_and_b64 vcc, exec, s[18:19]                              // 00000000D354: 86EA127E
	s_cbranch_vccnz 844                                        // 00000000D358: BF87034C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x348c>
	s_nop 0                                                    // 00000000D35C: BF800000
	s_add_u32 s17, s77, 1                                      // 00000000D360: 8011814D
	s_cmp_ge_u32 s17, s73                                      // 00000000D364: BF094911
	s_cbranch_scc1 1684                                        // 00000000D368: BF850694 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x41bc>
	s_cmp_ge_u32 s77, s76                                      // 00000000D36C: BF094C4D
	s_cbranch_scc1 611                                         // 00000000D370: BF850263 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3100>
	s_setprio 0                                                // 00000000D374: BF8F0000
	v_exp_f32_e32 v68, v68                                     // 00000000D378: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000D37C: 7E8A4145
	v_exp_f32_e32 v72, v72                                     // 00000000D380: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000D384: 7E924149
	s_add_u32 s17, s77, s80                                    // 00000000D388: 8011504D
	s_add_u32 s18, s17, 1                                      // 00000000D38C: 80128111
	s_lshl_b32 s19, s18, 14                                    // 00000000D390: 8E138E12
	v_exp_f32_e32 v64, v64                                     // 00000000D394: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000D398: 7E824141
	v_mov_b32_e32 v139, 0                                      // 00000000D39C: 7F160280
	v_mov_b32_e32 v140, 0                                      // 00000000D3A0: 7F180280
	s_and_b32 s19, s19, 0x8000                                 // 00000000D3A4: 8613FF13 00008000
	v_exp_f32_e32 v70, v70                                     // 00000000D3AC: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000D3B0: 7E8E4147
	v_exp_f32_e32 v74, v74                                     // 00000000D3B4: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000D3B8: 7E96414B
	v_cvt_pk_fp8_f32 v139, v68, v69                            // 00000000D3BC: D2A2008B 00028B44
	v_cvt_pk_fp8_f32 v140, v72, v73                            // 00000000D3C4: D2A2008C 00029348
	s_bitcmp1_b32 s18, 0                                       // 00000000D3CC: BF0D8012
	s_cselect_b32 s18, 0x4000, 0                               // 00000000D3D0: 851280FF 00004000
	v_mov_b32_e32 v138, 0                                      // 00000000D3D8: 7F140280
	s_or_b32 s19, s19, s18                                     // 00000000D3DC: 87131213
	v_exp_f32_e32 v80, v80                                     // 00000000D3E0: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000D3E4: 7EA24151
	v_exp_f32_e32 v84, v84                                     // 00000000D3E8: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000D3EC: 7EAA4155
	v_exp_f32_e32 v88, v88                                     // 00000000D3F0: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000D3F4: 7EB24159
	v_exp_f32_e32 v92, v92                                     // 00000000D3F8: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000D3FC: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000D400: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000D404: 7E9A414D
	v_cvt_pk_fp8_f32 v138, v64, v65                            // 00000000D408: D2A2008A 00028340
	v_or_b32_e32 v64, s19, v161                                // 00000000D410: 28814213
	v_or_b32_e32 v65, s19, v162                                // 00000000D414: 28834413
	v_cvt_pk_fp8_f32 v139, v70, v71 op_sel:[0,0,1]             // 00000000D418: D2A2408B 00028F46
	v_cvt_pk_fp8_f32 v140, v74, v75 op_sel:[0,0,1]             // 00000000D420: D2A2408C 0002974A
	ds_read_b128 v[68:71], v64                                 // 00000000D428: D9FE0000 44000040
	ds_read_b128 v[72:75], v64 offset:16                       // 00000000D430: D9FE0010 48000040
	ds_read_b128 v[96:99], v64 offset:8192                     // 00000000D438: D9FE2000 60000040
	ds_read_b128 v[100:103], v64 offset:8208                   // 00000000D440: D9FE2010 64000040
	ds_read_b128 v[206:209], v65                               // 00000000D448: D9FE0000 CE000041
	ds_read_b128 v[210:213], v65 offset:16                     // 00000000D450: D9FE0010 D2000041
	ds_read_b128 v[214:217], v65 offset:8192                   // 00000000D458: D9FE2000 D6000041
	ds_read_b128 v[218:221], v65 offset:8208                   // 00000000D460: D9FE2010 DA000041
	v_mov_b32_e32 v134, 0                                      // 00000000D468: 7F0C0280
	v_mov_b32_e32 v135, 0                                      // 00000000D46C: 7F0E0280
	v_mov_b32_e32 v136, 0                                      // 00000000D470: 7F100280
	v_mov_b32_e32 v137, 0                                      // 00000000D474: 7F120280
	v_mov_b32_e32 v141, 0                                      // 00000000D478: 7F1A0280
	v_exp_f32_e32 v82, v82                                     // 00000000D47C: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000D480: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000D484: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000D488: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000D48C: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000D490: 7EAE4157
	v_exp_f32_e32 v90, v90                                     // 00000000D494: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000D498: 7EB6415B
	v_exp_f32_e32 v94, v94                                     // 00000000D49C: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000D4A0: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000D4A4: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000D4A8: 7E9E414F
	v_cvt_pk_fp8_f32 v134, v80, v81                            // 00000000D4AC: D2A20086 0002A350
	v_cvt_pk_fp8_f32 v135, v84, v85                            // 00000000D4B4: D2A20087 0002AB54
	v_cvt_pk_fp8_f32 v136, v88, v89                            // 00000000D4BC: D2A20088 0002B358
	v_cvt_pk_fp8_f32 v137, v92, v93                            // 00000000D4C4: D2A20089 0002BB5C
	v_cvt_pk_fp8_f32 v141, v76, v77                            // 00000000D4CC: D2A2008D 00029B4C
	v_cvt_pk_fp8_f32 v134, v82, v83 op_sel:[0,0,1]             // 00000000D4D4: D2A24086 0002A752
	v_cvt_pk_fp8_f32 v138, v66, v67 op_sel:[0,0,1]             // 00000000D4DC: D2A2408A 00028742
	v_cvt_pk_fp8_f32 v135, v86, v87 op_sel:[0,0,1]             // 00000000D4E4: D2A24087 0002AF56
	v_cvt_pk_fp8_f32 v136, v90, v91 op_sel:[0,0,1]             // 00000000D4EC: D2A24088 0002B75A
	v_cvt_pk_fp8_f32 v137, v94, v95 op_sel:[0,0,1]             // 00000000D4F4: D2A24089 0002BF5E
	v_cvt_pk_fp8_f32 v141, v78, v79 op_sel:[0,0,1]             // 00000000D4FC: D2A2408D 00029F4E
	s_barrier                                                  // 00000000D504: BF8A0000
	s_setprio 1                                                // 00000000D508: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[134:141], 0// 00000000D50C: D3AD0040 02030D7E
	s_nop 11                                                   // 00000000D514: BF80000B
	v_lshlrev_b32_e32 v65, 23, v180                            // 00000000D518: 24836897
	v_fma_f32 v179, v64, v65, v179                             // 00000000D51C: D1CB00B3 06CE8340
	s_waitcnt lgkmcnt(6)                                       // 00000000D524: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[68:75], v[182:189], 0// 00000000D528: D3AE0050 02036D44
	s_waitcnt lgkmcnt(4)                                       // 00000000D530: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[96:103], v[182:189], 0// 00000000D534: D3AE006E 02036D60
	v_or_b32_e32 v64, s19, v163                                // 00000000D53C: 28814613
	ds_read_b128 v[66:69], v64                                 // 00000000D540: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 00000000D548: D9FE0010 46000040
	s_waitcnt lgkmcnt(4)                                       // 00000000D550: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[206:213], v[190:197], v[80:95]// 00000000D554: D3AE0050 05437DCE
	ds_read_b128 v[96:99], v64 offset:8192                     // 00000000D55C: D9FE2000 60000040
	ds_read_b128 v[100:103], v64 offset:8208                   // 00000000D564: D9FE2010 64000040
	s_waitcnt lgkmcnt(4)                                       // 00000000D56C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[214:221], v[190:197], v[110:125]// 00000000D570: D3AE006E 05BB7DD6
	s_waitcnt lgkmcnt(2)                                       // 00000000D578: BF8CC27F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[66:73], v[198:205], v[80:95]// 00000000D57C: D3AE0050 05438D42
	s_waitcnt lgkmcnt(0)                                       // 00000000D584: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[96:103], v[198:205], v[110:125]// 00000000D588: D3AE006E 05BB8D60
	s_lshl_b32 s18, s77, 6                                     // 00000000D590: 8E12864D
	s_add_u32 s20, s18, 64                                     // 00000000D594: 8014C012
	s_sub_u32 s18, s3, s20                                     // 00000000D598: 80921403
	s_sub_i32 s18, s18, 0                                      // 00000000D59C: 81928012
	s_nop 1                                                    // 00000000D5A0: BF800001
	v_mov_b32_e32 v64, v80                                     // 00000000D5A4: 7E800350
	v_mov_b32_e32 v65, v81                                     // 00000000D5A8: 7E820351
	v_mov_b32_e32 v66, v82                                     // 00000000D5AC: 7E840352
	v_mov_b32_e32 v67, v83                                     // 00000000D5B0: 7E860353
	v_mov_b32_e32 v68, v84                                     // 00000000D5B4: 7E880354
	v_mov_b32_e32 v69, v85                                     // 00000000D5B8: 7E8A0355
	v_mov_b32_e32 v70, v86                                     // 00000000D5BC: 7E8C0356
	v_mov_b32_e32 v71, v87                                     // 00000000D5C0: 7E8E0357
	v_mov_b32_e32 v72, v88                                     // 00000000D5C4: 7E900358
	v_mov_b32_e32 v73, v89                                     // 00000000D5C8: 7E920359
	v_mov_b32_e32 v74, v90                                     // 00000000D5CC: 7E94035A
	v_mov_b32_e32 v75, v91                                     // 00000000D5D0: 7E96035B
	v_mov_b32_e32 v76, v92                                     // 00000000D5D4: 7E98035C
	v_mov_b32_e32 v77, v93                                     // 00000000D5D8: 7E9A035D
	v_mov_b32_e32 v78, v94                                     // 00000000D5DC: 7E9C035E
	s_cmp_ge_i32 s18, 32                                       // 00000000D5E0: BF03A012
	v_mov_b32_e32 v79, v95                                     // 00000000D5E4: 7E9E035F
	s_cbranch_scc1 84                                          // 00000000D5E8: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2b3c>
	v_mov_b32_e32 v64, 0xff800000                              // 00000000D5EC: 7E8002FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000D5F4: BF048012
	v_mov_b32_e32 v65, v64                                     // 00000000D5F8: 7E820340
	v_mov_b32_e32 v66, v64                                     // 00000000D5FC: 7E840340
	v_mov_b32_e32 v67, v64                                     // 00000000D600: 7E860340
	v_mov_b32_e32 v68, v64                                     // 00000000D604: 7E880340
	v_mov_b32_e32 v69, v64                                     // 00000000D608: 7E8A0340
	v_mov_b32_e32 v70, v64                                     // 00000000D60C: 7E8C0340
	v_mov_b32_e32 v71, v64                                     // 00000000D610: 7E8E0340
	v_mov_b32_e32 v72, v64                                     // 00000000D614: 7E900340
	v_mov_b32_e32 v73, v64                                     // 00000000D618: 7E920340
	v_mov_b32_e32 v74, v64                                     // 00000000D61C: 7E940340
	v_mov_b32_e32 v75, v64                                     // 00000000D620: 7E960340
	v_mov_b32_e32 v76, v64                                     // 00000000D624: 7E980340
	v_mov_b32_e32 v77, v64                                     // 00000000D628: 7E9A0340
	v_mov_b32_e32 v78, v64                                     // 00000000D62C: 7E9C0340
	v_mov_b32_e32 v79, v64                                     // 00000000D630: 7E9E0340
	s_cbranch_scc1 65                                          // 00000000D634: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2b3c>
	v_add_u32_e32 v79, s18, v171                               // 00000000D638: 689F5612
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 00000000D63C: 7D889E80
	s_nop 1                                                    // 00000000D640: BF800001
	v_cndmask_b32_e64 v64, v80, v169, vcc                      // 00000000D644: D1000040 01AB5350
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 00000000D64C: 7D889E81
	s_nop 1                                                    // 00000000D650: BF800001
	v_cndmask_b32_e64 v65, v81, v169, vcc                      // 00000000D654: D1000041 01AB5351
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 00000000D65C: 7D889E82
	s_nop 1                                                    // 00000000D660: BF800001
	v_cndmask_b32_e64 v66, v82, v169, vcc                      // 00000000D664: D1000042 01AB5352
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 00000000D66C: 7D889E83
	s_nop 1                                                    // 00000000D670: BF800001
	v_cndmask_b32_e64 v67, v83, v169, vcc                      // 00000000D674: D1000043 01AB5353
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 00000000D67C: 7D889E88
	s_nop 1                                                    // 00000000D680: BF800001
	v_cndmask_b32_e64 v68, v84, v169, vcc                      // 00000000D684: D1000044 01AB5354
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 00000000D68C: 7D889E89
	s_nop 1                                                    // 00000000D690: BF800001
	v_cndmask_b32_e64 v69, v85, v169, vcc                      // 00000000D694: D1000045 01AB5355
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 00000000D69C: 7D889E8A
	s_nop 1                                                    // 00000000D6A0: BF800001
	v_cndmask_b32_e64 v70, v86, v169, vcc                      // 00000000D6A4: D1000046 01AB5356
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 00000000D6AC: 7D889E8B
	s_nop 1                                                    // 00000000D6B0: BF800001
	v_cndmask_b32_e64 v71, v87, v169, vcc                      // 00000000D6B4: D1000047 01AB5357
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 00000000D6BC: 7D889E90
	s_nop 1                                                    // 00000000D6C0: BF800001
	v_cndmask_b32_e64 v72, v88, v169, vcc                      // 00000000D6C4: D1000048 01AB5358
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 00000000D6CC: 7D889E91
	s_nop 1                                                    // 00000000D6D0: BF800001
	v_cndmask_b32_e64 v73, v89, v169, vcc                      // 00000000D6D4: D1000049 01AB5359
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 00000000D6DC: 7D889E92
	s_nop 1                                                    // 00000000D6E0: BF800001
	v_cndmask_b32_e64 v74, v90, v169, vcc                      // 00000000D6E4: D100004A 01AB535A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 00000000D6EC: 7D889E93
	s_nop 1                                                    // 00000000D6F0: BF800001
	v_cndmask_b32_e64 v75, v91, v169, vcc                      // 00000000D6F4: D100004B 01AB535B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 00000000D6FC: 7D889E98
	s_nop 1                                                    // 00000000D700: BF800001
	v_cndmask_b32_e64 v76, v92, v169, vcc                      // 00000000D704: D100004C 01AB535C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 00000000D70C: 7D889E99
	s_nop 1                                                    // 00000000D710: BF800001
	v_cndmask_b32_e64 v77, v93, v169, vcc                      // 00000000D714: D100004D 01AB535D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 00000000D71C: 7D889E9A
	s_nop 1                                                    // 00000000D720: BF800001
	v_cndmask_b32_e64 v78, v94, v169, vcc                      // 00000000D724: D100004E 01AB535E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 00000000D72C: 7D889E9B
	s_nop 1                                                    // 00000000D730: BF800001
	v_cndmask_b32_e64 v79, v95, v169, vcc                      // 00000000D734: D100004F 01AB535F
	s_sub_u32 s18, s3, s20                                     // 00000000D73C: 80921403
	s_sub_i32 s18, s18, 32                                     // 00000000D740: 8192A012
	v_mov_b32_e32 v94, v110                                    // 00000000D744: 7EBC036E
	v_mov_b32_e32 v95, v111                                    // 00000000D748: 7EBE036F
	v_mov_b32_e32 v96, v112                                    // 00000000D74C: 7EC00370
	v_mov_b32_e32 v97, v113                                    // 00000000D750: 7EC20371
	v_mov_b32_e32 v98, v114                                    // 00000000D754: 7EC40372
	v_mov_b32_e32 v99, v115                                    // 00000000D758: 7EC60373
	v_mov_b32_e32 v100, v116                                   // 00000000D75C: 7EC80374
	v_mov_b32_e32 v101, v117                                   // 00000000D760: 7ECA0375
	v_mov_b32_e32 v102, v118                                   // 00000000D764: 7ECC0376
	v_mov_b32_e32 v103, v119                                   // 00000000D768: 7ECE0377
	v_mov_b32_e32 v104, v120                                   // 00000000D76C: 7ED00378
	v_mov_b32_e32 v105, v121                                   // 00000000D770: 7ED20379
	v_mov_b32_e32 v106, v122                                   // 00000000D774: 7ED4037A
	v_mov_b32_e32 v107, v123                                   // 00000000D778: 7ED6037B
	v_mov_b32_e32 v108, v124                                   // 00000000D77C: 7ED8037C
	s_cmp_ge_i32 s18, 32                                       // 00000000D780: BF03A012
	v_mov_b32_e32 v109, v125                                   // 00000000D784: 7EDA037D
	s_cbranch_scc1 84                                          // 00000000D788: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2cdc>
	v_mov_b32_e32 v94, 0xff800000                              // 00000000D78C: 7EBC02FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000D794: BF048012
	v_mov_b32_e32 v95, v94                                     // 00000000D798: 7EBE035E
	v_mov_b32_e32 v96, v94                                     // 00000000D79C: 7EC0035E
	v_mov_b32_e32 v97, v94                                     // 00000000D7A0: 7EC2035E
	v_mov_b32_e32 v98, v94                                     // 00000000D7A4: 7EC4035E
	v_mov_b32_e32 v99, v94                                     // 00000000D7A8: 7EC6035E
	v_mov_b32_e32 v100, v94                                    // 00000000D7AC: 7EC8035E
	v_mov_b32_e32 v101, v94                                    // 00000000D7B0: 7ECA035E
	v_mov_b32_e32 v102, v94                                    // 00000000D7B4: 7ECC035E
	v_mov_b32_e32 v103, v94                                    // 00000000D7B8: 7ECE035E
	v_mov_b32_e32 v104, v94                                    // 00000000D7BC: 7ED0035E
	v_mov_b32_e32 v105, v94                                    // 00000000D7C0: 7ED2035E
	v_mov_b32_e32 v106, v94                                    // 00000000D7C4: 7ED4035E
	v_mov_b32_e32 v107, v94                                    // 00000000D7C8: 7ED6035E
	v_mov_b32_e32 v108, v94                                    // 00000000D7CC: 7ED8035E
	v_mov_b32_e32 v109, v94                                    // 00000000D7D0: 7EDA035E
	s_cbranch_scc1 65                                          // 00000000D7D4: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2cdc>
	v_add_u32_e32 v80, s18, v171                               // 00000000D7D8: 68A15612
	v_cmp_gt_i32_e32 vcc, 0, v80                               // 00000000D7DC: 7D88A080
	s_nop 1                                                    // 00000000D7E0: BF800001
	v_cndmask_b32_e64 v94, v110, v169, vcc                     // 00000000D7E4: D100005E 01AB536E
	v_cmp_gt_i32_e32 vcc, 1, v80                               // 00000000D7EC: 7D88A081
	s_nop 1                                                    // 00000000D7F0: BF800001
	v_cndmask_b32_e64 v95, v111, v169, vcc                     // 00000000D7F4: D100005F 01AB536F
	v_cmp_gt_i32_e32 vcc, 2, v80                               // 00000000D7FC: 7D88A082
	s_nop 1                                                    // 00000000D800: BF800001
	v_cndmask_b32_e64 v96, v112, v169, vcc                     // 00000000D804: D1000060 01AB5370
	v_cmp_gt_i32_e32 vcc, 3, v80                               // 00000000D80C: 7D88A083
	s_nop 1                                                    // 00000000D810: BF800001
	v_cndmask_b32_e64 v97, v113, v169, vcc                     // 00000000D814: D1000061 01AB5371
	v_cmp_gt_i32_e32 vcc, 8, v80                               // 00000000D81C: 7D88A088
	s_nop 1                                                    // 00000000D820: BF800001
	v_cndmask_b32_e64 v98, v114, v169, vcc                     // 00000000D824: D1000062 01AB5372
	v_cmp_gt_i32_e32 vcc, 9, v80                               // 00000000D82C: 7D88A089
	s_nop 1                                                    // 00000000D830: BF800001
	v_cndmask_b32_e64 v99, v115, v169, vcc                     // 00000000D834: D1000063 01AB5373
	v_cmp_gt_i32_e32 vcc, 10, v80                              // 00000000D83C: 7D88A08A
	s_nop 1                                                    // 00000000D840: BF800001
	v_cndmask_b32_e64 v100, v116, v169, vcc                    // 00000000D844: D1000064 01AB5374
	v_cmp_gt_i32_e32 vcc, 11, v80                              // 00000000D84C: 7D88A08B
	s_nop 1                                                    // 00000000D850: BF800001
	v_cndmask_b32_e64 v101, v117, v169, vcc                    // 00000000D854: D1000065 01AB5375
	v_cmp_gt_i32_e32 vcc, 16, v80                              // 00000000D85C: 7D88A090
	s_nop 1                                                    // 00000000D860: BF800001
	v_cndmask_b32_e64 v102, v118, v169, vcc                    // 00000000D864: D1000066 01AB5376
	v_cmp_gt_i32_e32 vcc, 17, v80                              // 00000000D86C: 7D88A091
	s_nop 1                                                    // 00000000D870: BF800001
	v_cndmask_b32_e64 v103, v119, v169, vcc                    // 00000000D874: D1000067 01AB5377
	v_cmp_gt_i32_e32 vcc, 18, v80                              // 00000000D87C: 7D88A092
	s_nop 1                                                    // 00000000D880: BF800001
	v_cndmask_b32_e64 v104, v120, v169, vcc                    // 00000000D884: D1000068 01AB5378
	v_cmp_gt_i32_e32 vcc, 19, v80                              // 00000000D88C: 7D88A093
	s_nop 1                                                    // 00000000D890: BF800001
	v_cndmask_b32_e64 v105, v121, v169, vcc                    // 00000000D894: D1000069 01AB5379
	v_cmp_gt_i32_e32 vcc, 24, v80                              // 00000000D89C: 7D88A098
	s_nop 1                                                    // 00000000D8A0: BF800001
	v_cndmask_b32_e64 v106, v122, v169, vcc                    // 00000000D8A4: D100006A 01AB537A
	v_cmp_gt_i32_e32 vcc, 25, v80                              // 00000000D8AC: 7D88A099
	s_nop 1                                                    // 00000000D8B0: BF800001
	v_cndmask_b32_e64 v107, v123, v169, vcc                    // 00000000D8B4: D100006B 01AB537B
	v_cmp_gt_i32_e32 vcc, 26, v80                              // 00000000D8BC: 7D88A09A
	s_nop 1                                                    // 00000000D8C0: BF800001
	v_cndmask_b32_e64 v108, v124, v169, vcc                    // 00000000D8C4: D100006C 01AB537C
	v_cmp_gt_i32_e32 vcc, 27, v80                              // 00000000D8CC: 7D88A09B
	s_nop 1                                                    // 00000000D8D0: BF800001
	v_cndmask_b32_e64 v109, v125, v169, vcc                    // 00000000D8D4: D100006D 01AB537D
	v_max_f32_e32 v80, v64, v65                                // 00000000D8DC: 16A08340
	v_max3_f32 v80, v66, v67, v80                              // 00000000D8E0: D1D30050 05428742
	v_max3_f32 v80, v68, v69, v80                              // 00000000D8E8: D1D30050 05428B44
	v_max3_f32 v80, v70, v71, v80                              // 00000000D8F0: D1D30050 05428F46
	v_max3_f32 v80, v72, v73, v80                              // 00000000D8F8: D1D30050 05429348
	v_max3_f32 v80, v74, v75, v80                              // 00000000D900: D1D30050 0542974A
	v_max3_f32 v80, v76, v77, v80                              // 00000000D908: D1D30050 05429B4C
	v_max3_f32 v80, v78, v79, v80                              // 00000000D910: D1D30050 05429F4E
	v_max_f32_e32 v81, v94, v95                                // 00000000D918: 16A2BF5E
	v_max3_f32 v81, v96, v97, v81                              // 00000000D91C: D1D30051 0546C360
	v_max3_f32 v81, v98, v99, v81                              // 00000000D924: D1D30051 0546C762
	v_max3_f32 v81, v100, v101, v81                            // 00000000D92C: D1D30051 0546CB64
	v_max3_f32 v81, v102, v103, v81                            // 00000000D934: D1D30051 0546CF66
	v_max3_f32 v81, v104, v105, v81                            // 00000000D93C: D1D30051 0546D368
	v_max3_f32 v81, v106, v107, v81                            // 00000000D944: D1D30051 0546D76A
	v_max3_f32 v81, v108, v109, v81                            // 00000000D94C: D1D30051 0546DB6C
	v_max_f32_e32 v80, v80, v81                                // 00000000D954: 16A0A350
	v_mov_b32_e32 v81, v80                                     // 00000000D958: 7EA20350
	s_nop 1                                                    // 00000000D95C: BF800001
	v_permlane32_swap_b32_e32 v80, v81                         // 00000000D960: 7EA0B551
	v_max_f32_e32 v80, v80, v81                                // 00000000D964: 16A0A350
	v_mul_f32_e32 v81, v142, v80                               // 00000000D968: 0AA2A18E
	v_max_f32_e32 v81, v178, v81                               // 00000000D96C: 16A2A3B2
	v_sub_f32_e32 v82, v81, v178                               // 00000000D970: 04A56551
	v_cmp_lt_f32_e32 vcc, s93, v82                             // 00000000D974: 7C82A45D
	s_cmp_lg_u64 vcc, 0                                        // 00000000D978: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000D97C: 859280C1
	s_and_b64 s[20:21], s[18:19], exec                         // 00000000D980: 86947E12
	s_cselect_b32 s20, 1, 0                                    // 00000000D984: 85148081
	s_cselect_b64 s[20:21], -1, 0                              // 00000000D988: 859480C1
	v_cndmask_b32_e64 v111, v178, v81, s[20:21]                // 00000000D98C: D100006F 0052A3B2
	v_fma_f32 v80, v80, v142, -v111                            // 00000000D994: D1CB0050 85BF1D50
	v_floor_f32_e32 v80, v80                                   // 00000000D99C: 7EA03F50
	v_med3_f32 v80, v80, s91, 0                                // 00000000D9A0: D1D60050 0200B750
	v_cvt_i32_f32_e32 v81, v80                                 // 00000000D9A8: 7EA21150
	v_add_u32_e32 v112, 0x7f, v81                              // 00000000D9AC: 68E0A2FF 0000007F
	v_lshlrev_b32_e32 v81, 23, v112                            // 00000000D9B4: 24A2E097
	v_add_f32_e32 v80, v111, v80                               // 00000000D9B8: 02A0A16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000D9BC: 04DCA0FF 40C00000
	s_bfe_u32 s24, s17, 0x10001                                // 00000000D9C4: 9298FF11 00010001
	s_lshl_b32 s25, s24, 14                                    // 00000000D9CC: 8E198E18
	s_bitcmp1_b32 s17, 0                                       // 00000000D9D0: BF0D8011
	s_cselect_b64 s[20:21], -1, 0                              // 00000000D9D4: 859480C1
	s_and_b64 s[22:23], s[20:21], exec                         // 00000000D9D8: 86967E14
	s_cselect_b32 s22, s83, 0x10000                            // 00000000D9DC: 8516FF53 00010000
	s_or_b32 s25, s25, s22                                     // 00000000D9E4: 87191619
	v_or_b32_e32 v80, s25, v173                                // 00000000D9E8: 28A15A19
	v_add_u32_e32 v80, v80, v172                               // 00000000D9EC: 68A15950
	s_waitcnt vmcnt(0)                                         // 00000000D9F0: BF8C0F70
	ds_read_b64_tr_b8 v[82:83], v80                            // 00000000D9F4: D9C40000 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1024                // 00000000D9FC: D9C40400 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2048                // 00000000DA04: D9C40800 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3072                // 00000000DA0C: D9C40C00 58000050
	ds_read_b64_tr_b8 v[114:115], v80 offset:256               // 00000000DA14: D9C40100 72000050
	ds_read_b64_tr_b8 v[116:117], v80 offset:1280              // 00000000DA1C: D9C40500 74000050
	ds_read_b64_tr_b8 v[118:119], v80 offset:2304              // 00000000DA24: D9C40900 76000050
	ds_read_b64_tr_b8 v[120:121], v80 offset:3328              // 00000000DA2C: D9C40D00 78000050
	s_waitcnt lgkmcnt(4)                                       // 00000000DA34: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[82:89], v[134:141], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000DA38: D3AC0000 000369AA D3AE0830 04C30D52
	s_waitcnt lgkmcnt(0)                                       // 00000000DA48: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[114:121], v[134:141], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000DA4C: D3AC0000 000369AA D3AE0820 04830D72
	ds_read_b64_tr_b8 v[82:83], v80 offset:512                 // 00000000DA5C: D9C40200 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1536                // 00000000DA64: D9C40600 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2560                // 00000000DA6C: D9C40A00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3584                // 00000000DA74: D9C40E00 58000050
	ds_read_b64_tr_b8 v[114:115], v80 offset:768               // 00000000DA7C: D9C40300 72000050
	ds_read_b64_tr_b8 v[116:117], v80 offset:1792              // 00000000DA84: D9C40700 74000050
	ds_read_b64_tr_b8 v[118:119], v80 offset:2816              // 00000000DA8C: D9C40B00 76000050
	ds_read_b64_tr_b8 v[120:121], v80 offset:3840              // 00000000DA94: D9C40F00 78000050
	s_add_u32 s23, s77, 4                                      // 00000000DA9C: 8017844D
	s_cmp_ge_u32 s23, s73                                      // 00000000DAA0: BF094917
	s_cbranch_scc1 17                                          // 00000000DAA4: BF850011 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2eec>
	s_lshl_b32 s24, s24, 15                                    // 00000000DAA8: 8E188F18
	s_and_b64 s[20:21], s[20:21], exec                         // 00000000DAAC: 86947E14
	s_cselect_b32 s20, 0x4000, 0                               // 00000000DAB0: 851480FF 00004000
	s_or_b32 s20, s24, s20                                     // 00000000DAB8: 87141418
	s_or_b32 s20, s20, s33                                     // 00000000DABC: 87142114
	s_mul_i32 s23, s23, s6                                     // 00000000DAC0: 92170617
	s_lshl_b32 s21, s23, 6                                     // 00000000DAC4: 8E158617
	s_mov_b32 m0, s20                                          // 00000000DAC8: BEFC0014
	s_nop 0                                                    // 00000000DACC: BF800000
	buffer_load_dwordx4 v164, s[68:71], s21 offen lds          // 00000000DAD0: E05D1000 151100A4
	s_or_b32 m0, s20, 0x2000                                   // 00000000DAD8: 877CFF14 00002000
	s_nop 0                                                    // 00000000DAE0: BF800000
	buffer_load_dwordx4 v165, s[68:71], s21 offen lds          // 00000000DAE4: E05D1000 151100A5
	s_add_u32 s20, s77, 2                                      // 00000000DAEC: 8014824D
	s_cmp_ge_u32 s20, s73                                      // 00000000DAF0: BF094914
	s_cbranch_scc1 11                                          // 00000000DAF4: BF85000B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2f24>
	s_and_b32 s17, s17, 2                                      // 00000000DAF8: 86118211
	s_lshl_b32 s17, s17, 13                                    // 00000000DAFC: 8E118D11
	s_xor_b32 s17, s17, 0x4000                                 // 00000000DB00: 8811FF11 00004000
	s_mul_i32 s20, s20, s7                                     // 00000000DB08: 92140714
	s_add_u32 s17, s17, s22                                    // 00000000DB0C: 80111611
	s_lshl_b32 s20, s20, 6                                     // 00000000DB10: 8E148614
	s_add_u32 m0, s17, s33                                     // 00000000DB14: 807C2111
	s_nop 0                                                    // 00000000DB18: BF800000
	buffer_load_dwordx4 v166, s[64:67], s20 offen lds          // 00000000DB1C: E05D1000 141000A6
	s_waitcnt lgkmcnt(4)                                       // 00000000DB24: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[134:141], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000DB28: D3AC0000 000369AA D3AE0810 04430D52
	s_waitcnt lgkmcnt(0)                                       // 00000000DB38: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[134:141], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000DB3C: D3AC0000 000369AA D3AE0800 04030D72
	v_mov_b32_e32 v143, v142                                   // 00000000DB4C: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000DB50: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000DB58: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000DB60: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000DB68: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000DB70: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000DB78: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000DB80: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000DB88: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000DB90: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000DB98: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000DBA0: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000DBA8: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000DBB0: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000DBB8: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000DBC0: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000DBC8: D3B00042 1DBB1D60
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000DBD0: 86927E12
	s_cbranch_scc0 68                                          // 00000000DBD4: BF840044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x30e8>
	v_sub_f32_e32 v96, v178, v111                              // 00000000DBD8: 04C0DFB2
	v_exp_f32_e32 v96, v96                                     // 00000000DBDC: 7EC04160
	s_nop 0                                                    // 00000000DBE0: BF800000
	v_pk_mul_f32 v[62:63], v[96:97], v[62:63] op_sel_hi:[0,1]  // 00000000DBE4: D3B1403E 10027D60
	v_pk_mul_f32 v[60:61], v[96:97], v[60:61] op_sel_hi:[0,1]  // 00000000DBEC: D3B1403C 10027960
	v_pk_mul_f32 v[58:59], v[96:97], v[58:59] op_sel_hi:[0,1]  // 00000000DBF4: D3B1403A 10027560
	v_pk_mul_f32 v[56:57], v[96:97], v[56:57] op_sel_hi:[0,1]  // 00000000DBFC: D3B14038 10027160
	v_pk_mul_f32 v[54:55], v[96:97], v[54:55] op_sel_hi:[0,1]  // 00000000DC04: D3B14036 10026D60
	v_pk_mul_f32 v[52:53], v[96:97], v[52:53] op_sel_hi:[0,1]  // 00000000DC0C: D3B14034 10026960
	v_pk_mul_f32 v[50:51], v[96:97], v[50:51] op_sel_hi:[0,1]  // 00000000DC14: D3B14032 10026560
	v_pk_mul_f32 v[48:49], v[96:97], v[48:49] op_sel_hi:[0,1]  // 00000000DC1C: D3B14030 10026160
	v_pk_mul_f32 v[46:47], v[96:97], v[46:47] op_sel_hi:[0,1]  // 00000000DC24: D3B1402E 10025D60
	v_pk_mul_f32 v[44:45], v[96:97], v[44:45] op_sel_hi:[0,1]  // 00000000DC2C: D3B1402C 10025960
	v_pk_mul_f32 v[42:43], v[96:97], v[42:43] op_sel_hi:[0,1]  // 00000000DC34: D3B1402A 10025560
	v_pk_mul_f32 v[40:41], v[96:97], v[40:41] op_sel_hi:[0,1]  // 00000000DC3C: D3B14028 10025160
	v_pk_mul_f32 v[38:39], v[96:97], v[38:39] op_sel_hi:[0,1]  // 00000000DC44: D3B14026 10024D60
	v_pk_mul_f32 v[36:37], v[96:97], v[36:37] op_sel_hi:[0,1]  // 00000000DC4C: D3B14024 10024960
	v_pk_mul_f32 v[34:35], v[96:97], v[34:35] op_sel_hi:[0,1]  // 00000000DC54: D3B14022 10024560
	v_pk_mul_f32 v[32:33], v[96:97], v[32:33] op_sel_hi:[0,1]  // 00000000DC5C: D3B14020 10024160
	v_pk_mul_f32 v[30:31], v[96:97], v[30:31] op_sel_hi:[0,1]  // 00000000DC64: D3B1401E 10023D60
	v_pk_mul_f32 v[28:29], v[96:97], v[28:29] op_sel_hi:[0,1]  // 00000000DC6C: D3B1401C 10023960
	v_pk_mul_f32 v[26:27], v[96:97], v[26:27] op_sel_hi:[0,1]  // 00000000DC74: D3B1401A 10023560
	v_pk_mul_f32 v[24:25], v[96:97], v[24:25] op_sel_hi:[0,1]  // 00000000DC7C: D3B14018 10023160
	v_pk_mul_f32 v[22:23], v[96:97], v[22:23] op_sel_hi:[0,1]  // 00000000DC84: D3B14016 10022D60
	v_pk_mul_f32 v[20:21], v[96:97], v[20:21] op_sel_hi:[0,1]  // 00000000DC8C: D3B14014 10022960
	v_pk_mul_f32 v[18:19], v[96:97], v[18:19] op_sel_hi:[0,1]  // 00000000DC94: D3B14012 10022560
	v_pk_mul_f32 v[16:17], v[96:97], v[16:17] op_sel_hi:[0,1]  // 00000000DC9C: D3B14010 10022160
	v_pk_mul_f32 v[14:15], v[96:97], v[14:15] op_sel_hi:[0,1]  // 00000000DCA4: D3B1400E 10021D60
	v_pk_mul_f32 v[12:13], v[96:97], v[12:13] op_sel_hi:[0,1]  // 00000000DCAC: D3B1400C 10021960
	v_pk_mul_f32 v[10:11], v[96:97], v[10:11] op_sel_hi:[0,1]  // 00000000DCB4: D3B1400A 10021560
	v_pk_mul_f32 v[8:9], v[96:97], v[8:9] op_sel_hi:[0,1]      // 00000000DCBC: D3B14008 10021160
	v_pk_mul_f32 v[6:7], v[96:97], v[6:7] op_sel_hi:[0,1]      // 00000000DCC4: D3B14006 10020D60
	v_pk_mul_f32 v[4:5], v[96:97], v[4:5] op_sel_hi:[0,1]      // 00000000DCCC: D3B14004 10020960
	v_pk_mul_f32 v[2:3], v[96:97], v[2:3] op_sel_hi:[0,1]      // 00000000DCD4: D3B14002 10020560
	v_pk_mul_f32 v[0:1], v[96:97], v[0:1] op_sel_hi:[0,1]      // 00000000DCDC: D3B14000 10020160
	v_mul_f32_e32 v179, v179, v96                              // 00000000DCE4: 0B66C1B3
	s_waitcnt vmcnt(0)                                         // 00000000DCE8: BF8C0F70
	s_barrier                                                  // 00000000DCEC: BF8A0000
	s_add_u32 s77, s77, 1                                      // 00000000DCF0: 804D814D
	v_mov_b32_e32 v180, v112                                   // 00000000DCF4: 7F680370
	v_mov_b32_e32 v178, v111                                   // 00000000DCF8: 7F64036F
	s_branch 227                                               // 00000000DCFC: BF8200E3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x348c>
	s_cmp_eq_u32 s77, s76                                      // 00000000DD00: BF064C4D
	s_cbranch_scc0 181                                         // 00000000DD04: BF8400B5 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x33dc>
	s_setprio 0                                                // 00000000DD08: BF8F0000
	v_exp_f32_e32 v104, v80                                    // 00000000DD0C: 7ED04150
	v_exp_f32_e32 v105, v81                                    // 00000000DD10: 7ED24151
	v_exp_f32_e32 v108, v64                                    // 00000000DD14: 7ED84140
	v_exp_f32_e32 v109, v65                                    // 00000000DD18: 7EDA4141
	v_exp_f32_e32 v112, v84                                    // 00000000DD1C: 7EE04154
	v_exp_f32_e32 v113, v85                                    // 00000000DD20: 7EE24155
	v_exp_f32_e32 v116, v68                                    // 00000000DD24: 7EE84144
	v_exp_f32_e32 v117, v69                                    // 00000000DD28: 7EEA4145
	v_exp_f32_e32 v120, v88                                    // 00000000DD2C: 7EF04158
	v_exp_f32_e32 v121, v89                                    // 00000000DD30: 7EF24159
	v_exp_f32_e32 v124, v72                                    // 00000000DD34: 7EF84148
	v_exp_f32_e32 v125, v73                                    // 00000000DD38: 7EFA4149
	v_exp_f32_e32 v136, v92                                    // 00000000DD3C: 7F10415C
	v_exp_f32_e32 v137, v93                                    // 00000000DD40: 7F12415D
	v_exp_f32_e32 v140, v76                                    // 00000000DD44: 7F18414C
	v_exp_f32_e32 v141, v77                                    // 00000000DD48: 7F1A414D
	v_mov_b32_e32 v96, 0                                       // 00000000DD4C: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000DD50: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000DD54: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000DD58: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000DD5C: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000DD60: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000DD64: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000DD68: 7ECE0280
	v_exp_f32_e32 v106, v82                                    // 00000000DD6C: 7ED44152
	v_exp_f32_e32 v107, v83                                    // 00000000DD70: 7ED64153
	v_exp_f32_e32 v110, v66                                    // 00000000DD74: 7EDC4142
	v_exp_f32_e32 v111, v67                                    // 00000000DD78: 7EDE4143
	v_exp_f32_e32 v114, v86                                    // 00000000DD7C: 7EE44156
	v_exp_f32_e32 v115, v87                                    // 00000000DD80: 7EE64157
	v_exp_f32_e32 v118, v70                                    // 00000000DD84: 7EEC4146
	v_exp_f32_e32 v119, v71                                    // 00000000DD88: 7EEE4147
	v_exp_f32_e32 v122, v90                                    // 00000000DD8C: 7EF4415A
	v_exp_f32_e32 v123, v91                                    // 00000000DD90: 7EF6415B
	v_exp_f32_e32 v134, v74                                    // 00000000DD94: 7F0C414A
	v_exp_f32_e32 v135, v75                                    // 00000000DD98: 7F0E414B
	v_exp_f32_e32 v138, v94                                    // 00000000DD9C: 7F14415E
	v_exp_f32_e32 v139, v95                                    // 00000000DDA0: 7F16415F
	v_exp_f32_e32 v143, v78                                    // 00000000DDA4: 7F1E414E
	v_exp_f32_e32 v181, v79                                    // 00000000DDA8: 7F6A414F
	v_cvt_pk_fp8_f32 v96, v104, v105                           // 00000000DDAC: D2A20060 0002D368
	v_cvt_pk_fp8_f32 v100, v108, v109                          // 00000000DDB4: D2A20064 0002DB6C
	v_cvt_pk_fp8_f32 v97, v112, v113                           // 00000000DDBC: D2A20061 0002E370
	v_cvt_pk_fp8_f32 v101, v116, v117                          // 00000000DDC4: D2A20065 0002EB74
	v_cvt_pk_fp8_f32 v98, v120, v121                           // 00000000DDCC: D2A20062 0002F378
	v_cvt_pk_fp8_f32 v102, v124, v125                          // 00000000DDD4: D2A20066 0002FB7C
	v_cvt_pk_fp8_f32 v99, v136, v137                           // 00000000DDDC: D2A20063 00031388
	v_cvt_pk_fp8_f32 v103, v140, v141                          // 00000000DDE4: D2A20067 00031B8C
	v_cvt_pk_fp8_f32 v96, v106, v107 op_sel:[0,0,1]            // 00000000DDEC: D2A24060 0002D76A
	v_cvt_pk_fp8_f32 v100, v110, v111 op_sel:[0,0,1]           // 00000000DDF4: D2A24064 0002DF6E
	v_cvt_pk_fp8_f32 v97, v114, v115 op_sel:[0,0,1]            // 00000000DDFC: D2A24061 0002E772
	v_cvt_pk_fp8_f32 v101, v118, v119 op_sel:[0,0,1]           // 00000000DE04: D2A24065 0002EF76
	v_cvt_pk_fp8_f32 v98, v122, v123 op_sel:[0,0,1]            // 00000000DE0C: D2A24062 0002F77A
	v_cvt_pk_fp8_f32 v102, v134, v135 op_sel:[0,0,1]           // 00000000DE14: D2A24066 00030F86
	v_cvt_pk_fp8_f32 v99, v138, v139 op_sel:[0,0,1]            // 00000000DE1C: D2A24063 0003178A
	v_cvt_pk_fp8_f32 v103, v143, v181 op_sel:[0,0,1]           // 00000000DE24: D2A24067 00036B8F
	s_barrier                                                  // 00000000DE2C: BF8A0000
	s_setprio 1                                                // 00000000DE30: BF8F0001
	s_waitcnt vmcnt(0)                                         // 00000000DE34: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[104:107], v[126:133], v[96:103], 0// 00000000DE38: D3AD0068 0202C17E
	s_add_u32 s18, s76, s80                                    // 00000000DE40: 8012504C
	s_bfe_u32 s17, s18, 0x10001                                // 00000000DE44: 9291FF12 00010001
	s_lshl_b32 s22, s17, 14                                    // 00000000DE4C: 8E168E11
	s_bitcmp1_b32 s18, 0                                       // 00000000DE50: BF0D8012
	s_cselect_b64 s[18:19], -1, 0                              // 00000000DE54: 859280C1
	s_and_b64 s[20:21], s[18:19], exec                         // 00000000DE58: 86947E12
	s_cselect_b32 s20, s83, 0x10000                            // 00000000DE5C: 8514FF53 00010000
	s_or_b32 s22, s22, s20                                     // 00000000DE64: 87161416
	s_nop 3                                                    // 00000000DE68: BF800003
	v_or_b32_e32 v105, s22, v173                               // 00000000DE6C: 28D35A16
	v_add_u32_e32 v105, v105, v172                             // 00000000DE70: 68D35969
	ds_read_b64_tr_b8 v[106:107], v105                         // 00000000DE74: D9C40000 6A000069
	ds_read_b64_tr_b8 v[108:109], v105 offset:1024             // 00000000DE7C: D9C40400 6C000069
	ds_read_b64_tr_b8 v[110:111], v105 offset:2048             // 00000000DE84: D9C40800 6E000069
	ds_read_b64_tr_b8 v[112:113], v105 offset:3072             // 00000000DE8C: D9C40C00 70000069
	ds_read_b64_tr_b8 v[114:115], v105 offset:256              // 00000000DE94: D9C40100 72000069
	ds_read_b64_tr_b8 v[116:117], v105 offset:1280             // 00000000DE9C: D9C40500 74000069
	ds_read_b64_tr_b8 v[118:119], v105 offset:2304             // 00000000DEA4: D9C40900 76000069
	ds_read_b64_tr_b8 v[120:121], v105 offset:3328             // 00000000DEAC: D9C40D00 78000069
	s_waitcnt lgkmcnt(4)                                       // 00000000DEB4: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[106:113], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000DEB8: D3AC0000 000369AA D3AE0830 04C2C16A
	s_waitcnt lgkmcnt(0)                                       // 00000000DEC8: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[114:121], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000DECC: D3AC0000 000369AA D3AE0820 0482C172
	ds_read_b64_tr_b8 v[106:107], v105 offset:512              // 00000000DEDC: D9C40200 6A000069
	ds_read_b64_tr_b8 v[108:109], v105 offset:1536             // 00000000DEE4: D9C40600 6C000069
	ds_read_b64_tr_b8 v[110:111], v105 offset:2560             // 00000000DEEC: D9C40A00 6E000069
	ds_read_b64_tr_b8 v[112:113], v105 offset:3584             // 00000000DEF4: D9C40E00 70000069
	ds_read_b64_tr_b8 v[114:115], v105 offset:768              // 00000000DEFC: D9C40300 72000069
	ds_read_b64_tr_b8 v[116:117], v105 offset:1792             // 00000000DF04: D9C40700 74000069
	ds_read_b64_tr_b8 v[118:119], v105 offset:2816             // 00000000DF0C: D9C40B00 76000069
	ds_read_b64_tr_b8 v[120:121], v105 offset:3840             // 00000000DF14: D9C40F00 78000069
	s_add_u32 s21, s76, 4                                      // 00000000DF1C: 8015844C
	s_cmp_ge_u32 s21, s73                                      // 00000000DF20: BF094915
	s_cbranch_scc1 17                                          // 00000000DF24: BF850011 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x336c>
	s_lshl_b32 s22, s17, 15                                    // 00000000DF28: 8E168F11
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000DF2C: 86927E12
	s_cselect_b32 s18, 0x4000, 0                               // 00000000DF30: 851280FF 00004000
	s_or_b32 s18, s22, s18                                     // 00000000DF38: 87121216
	s_mul_i32 s21, s21, s6                                     // 00000000DF3C: 92150615
	s_or_b32 s18, s18, s33                                     // 00000000DF40: 87122112
	s_lshl_b32 s19, s21, 6                                     // 00000000DF44: 8E138615
	s_mov_b32 m0, s18                                          // 00000000DF48: BEFC0012
	s_nop 0                                                    // 00000000DF4C: BF800000
	buffer_load_dwordx4 v164, s[68:71], s19 offen lds          // 00000000DF50: E05D1000 131100A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000DF58: 877CFF12 00002000
	s_nop 0                                                    // 00000000DF60: BF800000
	buffer_load_dwordx4 v165, s[68:71], s19 offen lds          // 00000000DF64: E05D1000 131100A5
	s_add_u32 s18, s76, 2                                      // 00000000DF6C: 8012824C
	s_cmp_ge_u32 s18, s73                                      // 00000000DF70: BF094912
	s_cbranch_scc1 9                                           // 00000000DF74: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x339c>
	s_xor_b32 s17, s17, 1                                      // 00000000DF78: 88118111
	s_lshl_b32 s17, s17, 14                                    // 00000000DF7C: 8E118E11
	s_mul_i32 s18, s18, s7                                     // 00000000DF80: 92120712
	s_add_u32 s17, s17, s20                                    // 00000000DF84: 80111411
	s_lshl_b32 s18, s18, 6                                     // 00000000DF88: 8E128612
	s_add_u32 m0, s17, s33                                     // 00000000DF8C: 807C2111
	s_nop 0                                                    // 00000000DF90: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000DF94: E05D1000 121000A6
	s_waitcnt lgkmcnt(4)                                       // 00000000DF9C: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[106:113], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000DFA0: D3AC0000 000369AA D3AE0810 0442C16A
	v_lshlrev_b32_e32 v105, 23, v180                           // 00000000DFB0: 24D36897
	v_fma_f32 v179, v104, v105, v179                           // 00000000DFB4: D1CB00B3 06CED368
	s_waitcnt lgkmcnt(0)                                       // 00000000DFBC: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000DFC0: D3AC0000 000369AA D3AE0800 0402C172
	s_barrier                                                  // 00000000DFD0: BF8A0000
	s_add_u32 s77, s76, 1                                      // 00000000DFD4: 804D814C
	s_branch 44                                                // 00000000DFD8: BF82002C <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x348c>
	s_barrier                                                  // 00000000DFDC: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000DFE0: BF8C0F70
	s_add_u32 s17, s77, 4                                      // 00000000DFE4: 8011844D
	s_cmp_ge_u32 s17, s73                                      // 00000000DFE8: BF094911
	s_cbranch_scc1 19                                          // 00000000DFEC: BF850013 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x343c>
	s_add_u32 s18, s77, s80                                    // 00000000DFF0: 8012504D
	s_and_b32 s19, s18, 2                                      // 00000000DFF4: 86138212
	s_lshl_b32 s19, s19, 14                                    // 00000000DFF8: 8E138E13
	s_bitcmp1_b32 s18, 0                                       // 00000000DFFC: BF0D8012
	s_cselect_b32 s18, 0x4000, 0                               // 00000000E000: 851280FF 00004000
	s_or_b32 s18, s19, s18                                     // 00000000E008: 87121213
	s_mul_i32 s17, s17, s6                                     // 00000000E00C: 92110611
	s_or_b32 s18, s18, s33                                     // 00000000E010: 87122112
	s_lshl_b32 s17, s17, 6                                     // 00000000E014: 8E118611
	s_mov_b32 m0, s18                                          // 00000000E018: BEFC0012
	s_nop 0                                                    // 00000000E01C: BF800000
	buffer_load_dwordx4 v164, s[68:71], s17 offen lds          // 00000000E020: E05D1000 111100A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000E028: 877CFF12 00002000
	s_nop 0                                                    // 00000000E030: BF800000
	buffer_load_dwordx4 v165, s[68:71], s17 offen lds          // 00000000E034: E05D1000 111100A5
	s_add_u32 s17, s77, 2                                      // 00000000E03C: 8011824D
	s_cmp_ge_u32 s17, s73                                      // 00000000E040: BF094911
	s_cbranch_scc1 15                                          // 00000000E044: BF85000F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3484>
	s_add_u32 s18, s77, s80                                    // 00000000E048: 8012504D
	s_not_b32 s19, s18                                         // 00000000E04C: BE930412
	s_lshl_b32 s19, s19, 13                                    // 00000000E050: 8E138D13
	s_and_b32 s19, s19, 0x4000                                 // 00000000E054: 8613FF13 00004000
	s_bitcmp1_b32 s18, 0                                       // 00000000E05C: BF0D8012
	s_cselect_b32 s18, s83, 0x10000                            // 00000000E060: 8512FF53 00010000
	s_mul_i32 s17, s17, s7                                     // 00000000E068: 92110711
	s_or_b32 s18, s19, s18                                     // 00000000E06C: 87121213
	s_lshl_b32 s17, s17, 6                                     // 00000000E070: 8E118611
	s_or_b32 m0, s18, s33                                      // 00000000E074: 877C2112
	s_nop 0                                                    // 00000000E078: BF800000
	buffer_load_dwordx4 v166, s[64:67], s17 offen lds          // 00000000E07C: E05D1000 111000A6
	s_barrier                                                  // 00000000E084: BF8A0000
	s_add_u32 s77, s77, 1                                      // 00000000E088: 804D814D
	s_add_u32 s17, s77, 1                                      // 00000000E08C: 8011814D
	s_cmp_ge_u32 s17, s73                                      // 00000000E090: BF094911
	s_cbranch_scc1 865                                         // 00000000E094: BF850361 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x421c>
	s_cmp_ge_u32 s77, s76                                      // 00000000E098: BF094C4D
	s_cbranch_scc1 611                                         // 00000000E09C: BF850263 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3e2c>
	s_setprio 0                                                // 00000000E0A0: BF8F0000
	v_exp_f32_e32 v68, v68                                     // 00000000E0A4: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000E0A8: 7E8A4145
	v_exp_f32_e32 v72, v72                                     // 00000000E0AC: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000E0B0: 7E924149
	s_add_u32 s17, s77, s80                                    // 00000000E0B4: 8011504D
	s_add_u32 s18, s17, 1                                      // 00000000E0B8: 80128111
	s_lshl_b32 s19, s18, 14                                    // 00000000E0BC: 8E138E12
	v_exp_f32_e32 v64, v64                                     // 00000000E0C0: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000E0C4: 7E824141
	v_mov_b32_e32 v139, 0                                      // 00000000E0C8: 7F160280
	v_mov_b32_e32 v140, 0                                      // 00000000E0CC: 7F180280
	s_and_b32 s19, s19, 0x8000                                 // 00000000E0D0: 8613FF13 00008000
	v_exp_f32_e32 v70, v70                                     // 00000000E0D8: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000E0DC: 7E8E4147
	v_exp_f32_e32 v74, v74                                     // 00000000E0E0: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000E0E4: 7E96414B
	v_cvt_pk_fp8_f32 v139, v68, v69                            // 00000000E0E8: D2A2008B 00028B44
	v_cvt_pk_fp8_f32 v140, v72, v73                            // 00000000E0F0: D2A2008C 00029348
	s_bitcmp1_b32 s18, 0                                       // 00000000E0F8: BF0D8012
	s_cselect_b32 s18, 0x4000, 0                               // 00000000E0FC: 851280FF 00004000
	v_mov_b32_e32 v138, 0                                      // 00000000E104: 7F140280
	s_or_b32 s19, s19, s18                                     // 00000000E108: 87131213
	v_exp_f32_e32 v80, v80                                     // 00000000E10C: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000E110: 7EA24151
	v_exp_f32_e32 v84, v84                                     // 00000000E114: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000E118: 7EAA4155
	v_exp_f32_e32 v88, v88                                     // 00000000E11C: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000E120: 7EB24159
	v_exp_f32_e32 v92, v92                                     // 00000000E124: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000E128: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000E12C: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000E130: 7E9A414D
	v_cvt_pk_fp8_f32 v138, v64, v65                            // 00000000E134: D2A2008A 00028340
	v_or_b32_e32 v64, s19, v161                                // 00000000E13C: 28814213
	v_or_b32_e32 v65, s19, v162                                // 00000000E140: 28834413
	v_cvt_pk_fp8_f32 v139, v70, v71 op_sel:[0,0,1]             // 00000000E144: D2A2408B 00028F46
	v_cvt_pk_fp8_f32 v140, v74, v75 op_sel:[0,0,1]             // 00000000E14C: D2A2408C 0002974A
	ds_read_b128 v[68:71], v64                                 // 00000000E154: D9FE0000 44000040
	ds_read_b128 v[72:75], v64 offset:16                       // 00000000E15C: D9FE0010 48000040
	ds_read_b128 v[96:99], v64 offset:8192                     // 00000000E164: D9FE2000 60000040
	ds_read_b128 v[100:103], v64 offset:8208                   // 00000000E16C: D9FE2010 64000040
	ds_read_b128 v[206:209], v65                               // 00000000E174: D9FE0000 CE000041
	ds_read_b128 v[210:213], v65 offset:16                     // 00000000E17C: D9FE0010 D2000041
	ds_read_b128 v[214:217], v65 offset:8192                   // 00000000E184: D9FE2000 D6000041
	ds_read_b128 v[218:221], v65 offset:8208                   // 00000000E18C: D9FE2010 DA000041
	v_mov_b32_e32 v134, 0                                      // 00000000E194: 7F0C0280
	v_mov_b32_e32 v135, 0                                      // 00000000E198: 7F0E0280
	v_mov_b32_e32 v136, 0                                      // 00000000E19C: 7F100280
	v_mov_b32_e32 v137, 0                                      // 00000000E1A0: 7F120280
	v_mov_b32_e32 v141, 0                                      // 00000000E1A4: 7F1A0280
	v_exp_f32_e32 v82, v82                                     // 00000000E1A8: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000E1AC: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000E1B0: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000E1B4: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000E1B8: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000E1BC: 7EAE4157
	v_exp_f32_e32 v90, v90                                     // 00000000E1C0: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000E1C4: 7EB6415B
	v_exp_f32_e32 v94, v94                                     // 00000000E1C8: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000E1CC: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000E1D0: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000E1D4: 7E9E414F
	v_cvt_pk_fp8_f32 v134, v80, v81                            // 00000000E1D8: D2A20086 0002A350
	v_cvt_pk_fp8_f32 v135, v84, v85                            // 00000000E1E0: D2A20087 0002AB54
	v_cvt_pk_fp8_f32 v136, v88, v89                            // 00000000E1E8: D2A20088 0002B358
	v_cvt_pk_fp8_f32 v137, v92, v93                            // 00000000E1F0: D2A20089 0002BB5C
	v_cvt_pk_fp8_f32 v141, v76, v77                            // 00000000E1F8: D2A2008D 00029B4C
	v_cvt_pk_fp8_f32 v134, v82, v83 op_sel:[0,0,1]             // 00000000E200: D2A24086 0002A752
	v_cvt_pk_fp8_f32 v138, v66, v67 op_sel:[0,0,1]             // 00000000E208: D2A2408A 00028742
	v_cvt_pk_fp8_f32 v135, v86, v87 op_sel:[0,0,1]             // 00000000E210: D2A24087 0002AF56
	v_cvt_pk_fp8_f32 v136, v90, v91 op_sel:[0,0,1]             // 00000000E218: D2A24088 0002B75A
	v_cvt_pk_fp8_f32 v137, v94, v95 op_sel:[0,0,1]             // 00000000E220: D2A24089 0002BF5E
	v_cvt_pk_fp8_f32 v141, v78, v79 op_sel:[0,0,1]             // 00000000E228: D2A2408D 00029F4E
	s_barrier                                                  // 00000000E230: BF8A0000
	s_setprio 1                                                // 00000000E234: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[134:141], 0// 00000000E238: D3AD0040 02030D7E
	s_nop 11                                                   // 00000000E240: BF80000B
	v_lshlrev_b32_e32 v65, 23, v180                            // 00000000E244: 24836897
	v_fma_f32 v179, v64, v65, v179                             // 00000000E248: D1CB00B3 06CE8340
	s_waitcnt lgkmcnt(6)                                       // 00000000E250: BF8CC67F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[68:75], v[182:189], 0// 00000000E254: D3AE0050 02036D44
	s_waitcnt lgkmcnt(4)                                       // 00000000E25C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[96:103], v[182:189], 0// 00000000E260: D3AE006E 02036D60
	v_or_b32_e32 v64, s19, v163                                // 00000000E268: 28814613
	ds_read_b128 v[66:69], v64                                 // 00000000E26C: D9FE0000 42000040
	ds_read_b128 v[70:73], v64 offset:16                       // 00000000E274: D9FE0010 46000040
	s_waitcnt lgkmcnt(4)                                       // 00000000E27C: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[206:213], v[190:197], v[80:95]// 00000000E280: D3AE0050 05437DCE
	ds_read_b128 v[96:99], v64 offset:8192                     // 00000000E288: D9FE2000 60000040
	ds_read_b128 v[100:103], v64 offset:8208                   // 00000000E290: D9FE2010 64000040
	s_waitcnt lgkmcnt(4)                                       // 00000000E298: BF8CC47F
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[214:221], v[190:197], v[110:125]// 00000000E29C: D3AE006E 05BB7DD6
	s_waitcnt lgkmcnt(2)                                       // 00000000E2A4: BF8CC27F
	v_mfma_f32_32x32x64_f8f6f4 v[80:95], v[66:73], v[198:205], v[80:95]// 00000000E2A8: D3AE0050 05438D42
	s_waitcnt lgkmcnt(0)                                       // 00000000E2B0: BF8CC07F
	v_mfma_f32_32x32x64_f8f6f4 v[110:125], v[96:103], v[198:205], v[110:125]// 00000000E2B4: D3AE006E 05BB8D60
	s_lshl_b32 s18, s77, 6                                     // 00000000E2BC: 8E12864D
	s_add_u32 s20, s18, 64                                     // 00000000E2C0: 8014C012
	s_sub_u32 s18, s3, s20                                     // 00000000E2C4: 80921403
	s_sub_i32 s18, s18, 0                                      // 00000000E2C8: 81928012
	s_nop 1                                                    // 00000000E2CC: BF800001
	v_mov_b32_e32 v64, v80                                     // 00000000E2D0: 7E800350
	v_mov_b32_e32 v65, v81                                     // 00000000E2D4: 7E820351
	v_mov_b32_e32 v66, v82                                     // 00000000E2D8: 7E840352
	v_mov_b32_e32 v67, v83                                     // 00000000E2DC: 7E860353
	v_mov_b32_e32 v68, v84                                     // 00000000E2E0: 7E880354
	v_mov_b32_e32 v69, v85                                     // 00000000E2E4: 7E8A0355
	v_mov_b32_e32 v70, v86                                     // 00000000E2E8: 7E8C0356
	v_mov_b32_e32 v71, v87                                     // 00000000E2EC: 7E8E0357
	v_mov_b32_e32 v72, v88                                     // 00000000E2F0: 7E900358
	v_mov_b32_e32 v73, v89                                     // 00000000E2F4: 7E920359
	v_mov_b32_e32 v74, v90                                     // 00000000E2F8: 7E94035A
	v_mov_b32_e32 v75, v91                                     // 00000000E2FC: 7E96035B
	v_mov_b32_e32 v76, v92                                     // 00000000E300: 7E98035C
	v_mov_b32_e32 v77, v93                                     // 00000000E304: 7E9A035D
	v_mov_b32_e32 v78, v94                                     // 00000000E308: 7E9C035E
	s_cmp_ge_i32 s18, 32                                       // 00000000E30C: BF03A012
	v_mov_b32_e32 v79, v95                                     // 00000000E310: 7E9E035F
	s_cbranch_scc1 84                                          // 00000000E314: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3868>
	v_mov_b32_e32 v64, 0xff800000                              // 00000000E318: 7E8002FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000E320: BF048012
	v_mov_b32_e32 v65, v64                                     // 00000000E324: 7E820340
	v_mov_b32_e32 v66, v64                                     // 00000000E328: 7E840340
	v_mov_b32_e32 v67, v64                                     // 00000000E32C: 7E860340
	v_mov_b32_e32 v68, v64                                     // 00000000E330: 7E880340
	v_mov_b32_e32 v69, v64                                     // 00000000E334: 7E8A0340
	v_mov_b32_e32 v70, v64                                     // 00000000E338: 7E8C0340
	v_mov_b32_e32 v71, v64                                     // 00000000E33C: 7E8E0340
	v_mov_b32_e32 v72, v64                                     // 00000000E340: 7E900340
	v_mov_b32_e32 v73, v64                                     // 00000000E344: 7E920340
	v_mov_b32_e32 v74, v64                                     // 00000000E348: 7E940340
	v_mov_b32_e32 v75, v64                                     // 00000000E34C: 7E960340
	v_mov_b32_e32 v76, v64                                     // 00000000E350: 7E980340
	v_mov_b32_e32 v77, v64                                     // 00000000E354: 7E9A0340
	v_mov_b32_e32 v78, v64                                     // 00000000E358: 7E9C0340
	v_mov_b32_e32 v79, v64                                     // 00000000E35C: 7E9E0340
	s_cbranch_scc1 65                                          // 00000000E360: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3868>
	v_add_u32_e32 v79, s18, v171                               // 00000000E364: 689F5612
	v_cmp_gt_i32_e32 vcc, 0, v79                               // 00000000E368: 7D889E80
	s_nop 1                                                    // 00000000E36C: BF800001
	v_cndmask_b32_e64 v64, v80, v169, vcc                      // 00000000E370: D1000040 01AB5350
	v_cmp_gt_i32_e32 vcc, 1, v79                               // 00000000E378: 7D889E81
	s_nop 1                                                    // 00000000E37C: BF800001
	v_cndmask_b32_e64 v65, v81, v169, vcc                      // 00000000E380: D1000041 01AB5351
	v_cmp_gt_i32_e32 vcc, 2, v79                               // 00000000E388: 7D889E82
	s_nop 1                                                    // 00000000E38C: BF800001
	v_cndmask_b32_e64 v66, v82, v169, vcc                      // 00000000E390: D1000042 01AB5352
	v_cmp_gt_i32_e32 vcc, 3, v79                               // 00000000E398: 7D889E83
	s_nop 1                                                    // 00000000E39C: BF800001
	v_cndmask_b32_e64 v67, v83, v169, vcc                      // 00000000E3A0: D1000043 01AB5353
	v_cmp_gt_i32_e32 vcc, 8, v79                               // 00000000E3A8: 7D889E88
	s_nop 1                                                    // 00000000E3AC: BF800001
	v_cndmask_b32_e64 v68, v84, v169, vcc                      // 00000000E3B0: D1000044 01AB5354
	v_cmp_gt_i32_e32 vcc, 9, v79                               // 00000000E3B8: 7D889E89
	s_nop 1                                                    // 00000000E3BC: BF800001
	v_cndmask_b32_e64 v69, v85, v169, vcc                      // 00000000E3C0: D1000045 01AB5355
	v_cmp_gt_i32_e32 vcc, 10, v79                              // 00000000E3C8: 7D889E8A
	s_nop 1                                                    // 00000000E3CC: BF800001
	v_cndmask_b32_e64 v70, v86, v169, vcc                      // 00000000E3D0: D1000046 01AB5356
	v_cmp_gt_i32_e32 vcc, 11, v79                              // 00000000E3D8: 7D889E8B
	s_nop 1                                                    // 00000000E3DC: BF800001
	v_cndmask_b32_e64 v71, v87, v169, vcc                      // 00000000E3E0: D1000047 01AB5357
	v_cmp_gt_i32_e32 vcc, 16, v79                              // 00000000E3E8: 7D889E90
	s_nop 1                                                    // 00000000E3EC: BF800001
	v_cndmask_b32_e64 v72, v88, v169, vcc                      // 00000000E3F0: D1000048 01AB5358
	v_cmp_gt_i32_e32 vcc, 17, v79                              // 00000000E3F8: 7D889E91
	s_nop 1                                                    // 00000000E3FC: BF800001
	v_cndmask_b32_e64 v73, v89, v169, vcc                      // 00000000E400: D1000049 01AB5359
	v_cmp_gt_i32_e32 vcc, 18, v79                              // 00000000E408: 7D889E92
	s_nop 1                                                    // 00000000E40C: BF800001
	v_cndmask_b32_e64 v74, v90, v169, vcc                      // 00000000E410: D100004A 01AB535A
	v_cmp_gt_i32_e32 vcc, 19, v79                              // 00000000E418: 7D889E93
	s_nop 1                                                    // 00000000E41C: BF800001
	v_cndmask_b32_e64 v75, v91, v169, vcc                      // 00000000E420: D100004B 01AB535B
	v_cmp_gt_i32_e32 vcc, 24, v79                              // 00000000E428: 7D889E98
	s_nop 1                                                    // 00000000E42C: BF800001
	v_cndmask_b32_e64 v76, v92, v169, vcc                      // 00000000E430: D100004C 01AB535C
	v_cmp_gt_i32_e32 vcc, 25, v79                              // 00000000E438: 7D889E99
	s_nop 1                                                    // 00000000E43C: BF800001
	v_cndmask_b32_e64 v77, v93, v169, vcc                      // 00000000E440: D100004D 01AB535D
	v_cmp_gt_i32_e32 vcc, 26, v79                              // 00000000E448: 7D889E9A
	s_nop 1                                                    // 00000000E44C: BF800001
	v_cndmask_b32_e64 v78, v94, v169, vcc                      // 00000000E450: D100004E 01AB535E
	v_cmp_gt_i32_e32 vcc, 27, v79                              // 00000000E458: 7D889E9B
	s_nop 1                                                    // 00000000E45C: BF800001
	v_cndmask_b32_e64 v79, v95, v169, vcc                      // 00000000E460: D100004F 01AB535F
	s_sub_u32 s18, s3, s20                                     // 00000000E468: 80921403
	s_sub_i32 s18, s18, 32                                     // 00000000E46C: 8192A012
	v_mov_b32_e32 v94, v110                                    // 00000000E470: 7EBC036E
	v_mov_b32_e32 v95, v111                                    // 00000000E474: 7EBE036F
	v_mov_b32_e32 v96, v112                                    // 00000000E478: 7EC00370
	v_mov_b32_e32 v97, v113                                    // 00000000E47C: 7EC20371
	v_mov_b32_e32 v98, v114                                    // 00000000E480: 7EC40372
	v_mov_b32_e32 v99, v115                                    // 00000000E484: 7EC60373
	v_mov_b32_e32 v100, v116                                   // 00000000E488: 7EC80374
	v_mov_b32_e32 v101, v117                                   // 00000000E48C: 7ECA0375
	v_mov_b32_e32 v102, v118                                   // 00000000E490: 7ECC0376
	v_mov_b32_e32 v103, v119                                   // 00000000E494: 7ECE0377
	v_mov_b32_e32 v104, v120                                   // 00000000E498: 7ED00378
	v_mov_b32_e32 v105, v121                                   // 00000000E49C: 7ED20379
	v_mov_b32_e32 v106, v122                                   // 00000000E4A0: 7ED4037A
	v_mov_b32_e32 v107, v123                                   // 00000000E4A4: 7ED6037B
	v_mov_b32_e32 v108, v124                                   // 00000000E4A8: 7ED8037C
	s_cmp_ge_i32 s18, 32                                       // 00000000E4AC: BF03A012
	v_mov_b32_e32 v109, v125                                   // 00000000E4B0: 7EDA037D
	s_cbranch_scc1 84                                          // 00000000E4B4: BF850054 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3a08>
	v_mov_b32_e32 v94, 0xff800000                              // 00000000E4B8: 7EBC02FF FF800000
	s_cmp_lt_i32 s18, 0                                        // 00000000E4C0: BF048012
	v_mov_b32_e32 v95, v94                                     // 00000000E4C4: 7EBE035E
	v_mov_b32_e32 v96, v94                                     // 00000000E4C8: 7EC0035E
	v_mov_b32_e32 v97, v94                                     // 00000000E4CC: 7EC2035E
	v_mov_b32_e32 v98, v94                                     // 00000000E4D0: 7EC4035E
	v_mov_b32_e32 v99, v94                                     // 00000000E4D4: 7EC6035E
	v_mov_b32_e32 v100, v94                                    // 00000000E4D8: 7EC8035E
	v_mov_b32_e32 v101, v94                                    // 00000000E4DC: 7ECA035E
	v_mov_b32_e32 v102, v94                                    // 00000000E4E0: 7ECC035E
	v_mov_b32_e32 v103, v94                                    // 00000000E4E4: 7ECE035E
	v_mov_b32_e32 v104, v94                                    // 00000000E4E8: 7ED0035E
	v_mov_b32_e32 v105, v94                                    // 00000000E4EC: 7ED2035E
	v_mov_b32_e32 v106, v94                                    // 00000000E4F0: 7ED4035E
	v_mov_b32_e32 v107, v94                                    // 00000000E4F4: 7ED6035E
	v_mov_b32_e32 v108, v94                                    // 00000000E4F8: 7ED8035E
	v_mov_b32_e32 v109, v94                                    // 00000000E4FC: 7EDA035E
	s_cbranch_scc1 65                                          // 00000000E500: BF850041 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3a08>
	v_add_u32_e32 v80, s18, v171                               // 00000000E504: 68A15612
	v_cmp_gt_i32_e32 vcc, 0, v80                               // 00000000E508: 7D88A080
	s_nop 1                                                    // 00000000E50C: BF800001
	v_cndmask_b32_e64 v94, v110, v169, vcc                     // 00000000E510: D100005E 01AB536E
	v_cmp_gt_i32_e32 vcc, 1, v80                               // 00000000E518: 7D88A081
	s_nop 1                                                    // 00000000E51C: BF800001
	v_cndmask_b32_e64 v95, v111, v169, vcc                     // 00000000E520: D100005F 01AB536F
	v_cmp_gt_i32_e32 vcc, 2, v80                               // 00000000E528: 7D88A082
	s_nop 1                                                    // 00000000E52C: BF800001
	v_cndmask_b32_e64 v96, v112, v169, vcc                     // 00000000E530: D1000060 01AB5370
	v_cmp_gt_i32_e32 vcc, 3, v80                               // 00000000E538: 7D88A083
	s_nop 1                                                    // 00000000E53C: BF800001
	v_cndmask_b32_e64 v97, v113, v169, vcc                     // 00000000E540: D1000061 01AB5371
	v_cmp_gt_i32_e32 vcc, 8, v80                               // 00000000E548: 7D88A088
	s_nop 1                                                    // 00000000E54C: BF800001
	v_cndmask_b32_e64 v98, v114, v169, vcc                     // 00000000E550: D1000062 01AB5372
	v_cmp_gt_i32_e32 vcc, 9, v80                               // 00000000E558: 7D88A089
	s_nop 1                                                    // 00000000E55C: BF800001
	v_cndmask_b32_e64 v99, v115, v169, vcc                     // 00000000E560: D1000063 01AB5373
	v_cmp_gt_i32_e32 vcc, 10, v80                              // 00000000E568: 7D88A08A
	s_nop 1                                                    // 00000000E56C: BF800001
	v_cndmask_b32_e64 v100, v116, v169, vcc                    // 00000000E570: D1000064 01AB5374
	v_cmp_gt_i32_e32 vcc, 11, v80                              // 00000000E578: 7D88A08B
	s_nop 1                                                    // 00000000E57C: BF800001
	v_cndmask_b32_e64 v101, v117, v169, vcc                    // 00000000E580: D1000065 01AB5375
	v_cmp_gt_i32_e32 vcc, 16, v80                              // 00000000E588: 7D88A090
	s_nop 1                                                    // 00000000E58C: BF800001
	v_cndmask_b32_e64 v102, v118, v169, vcc                    // 00000000E590: D1000066 01AB5376
	v_cmp_gt_i32_e32 vcc, 17, v80                              // 00000000E598: 7D88A091
	s_nop 1                                                    // 00000000E59C: BF800001
	v_cndmask_b32_e64 v103, v119, v169, vcc                    // 00000000E5A0: D1000067 01AB5377
	v_cmp_gt_i32_e32 vcc, 18, v80                              // 00000000E5A8: 7D88A092
	s_nop 1                                                    // 00000000E5AC: BF800001
	v_cndmask_b32_e64 v104, v120, v169, vcc                    // 00000000E5B0: D1000068 01AB5378
	v_cmp_gt_i32_e32 vcc, 19, v80                              // 00000000E5B8: 7D88A093
	s_nop 1                                                    // 00000000E5BC: BF800001
	v_cndmask_b32_e64 v105, v121, v169, vcc                    // 00000000E5C0: D1000069 01AB5379
	v_cmp_gt_i32_e32 vcc, 24, v80                              // 00000000E5C8: 7D88A098
	s_nop 1                                                    // 00000000E5CC: BF800001
	v_cndmask_b32_e64 v106, v122, v169, vcc                    // 00000000E5D0: D100006A 01AB537A
	v_cmp_gt_i32_e32 vcc, 25, v80                              // 00000000E5D8: 7D88A099
	s_nop 1                                                    // 00000000E5DC: BF800001
	v_cndmask_b32_e64 v107, v123, v169, vcc                    // 00000000E5E0: D100006B 01AB537B
	v_cmp_gt_i32_e32 vcc, 26, v80                              // 00000000E5E8: 7D88A09A
	s_nop 1                                                    // 00000000E5EC: BF800001
	v_cndmask_b32_e64 v108, v124, v169, vcc                    // 00000000E5F0: D100006C 01AB537C
	v_cmp_gt_i32_e32 vcc, 27, v80                              // 00000000E5F8: 7D88A09B
	s_nop 1                                                    // 00000000E5FC: BF800001
	v_cndmask_b32_e64 v109, v125, v169, vcc                    // 00000000E600: D100006D 01AB537D
	v_max_f32_e32 v80, v64, v65                                // 00000000E608: 16A08340
	v_max3_f32 v80, v66, v67, v80                              // 00000000E60C: D1D30050 05428742
	v_max3_f32 v80, v68, v69, v80                              // 00000000E614: D1D30050 05428B44
	v_max3_f32 v80, v70, v71, v80                              // 00000000E61C: D1D30050 05428F46
	v_max3_f32 v80, v72, v73, v80                              // 00000000E624: D1D30050 05429348
	v_max3_f32 v80, v74, v75, v80                              // 00000000E62C: D1D30050 0542974A
	v_max3_f32 v80, v76, v77, v80                              // 00000000E634: D1D30050 05429B4C
	v_max3_f32 v80, v78, v79, v80                              // 00000000E63C: D1D30050 05429F4E
	v_max_f32_e32 v81, v94, v95                                // 00000000E644: 16A2BF5E
	v_max3_f32 v81, v96, v97, v81                              // 00000000E648: D1D30051 0546C360
	v_max3_f32 v81, v98, v99, v81                              // 00000000E650: D1D30051 0546C762
	v_max3_f32 v81, v100, v101, v81                            // 00000000E658: D1D30051 0546CB64
	v_max3_f32 v81, v102, v103, v81                            // 00000000E660: D1D30051 0546CF66
	v_max3_f32 v81, v104, v105, v81                            // 00000000E668: D1D30051 0546D368
	v_max3_f32 v81, v106, v107, v81                            // 00000000E670: D1D30051 0546D76A
	v_max3_f32 v81, v108, v109, v81                            // 00000000E678: D1D30051 0546DB6C
	v_max_f32_e32 v80, v80, v81                                // 00000000E680: 16A0A350
	v_mov_b32_e32 v81, v80                                     // 00000000E684: 7EA20350
	s_nop 1                                                    // 00000000E688: BF800001
	v_permlane32_swap_b32_e32 v80, v81                         // 00000000E68C: 7EA0B551
	v_max_f32_e32 v80, v80, v81                                // 00000000E690: 16A0A350
	v_mul_f32_e32 v81, v142, v80                               // 00000000E694: 0AA2A18E
	v_max_f32_e32 v81, v178, v81                               // 00000000E698: 16A2A3B2
	v_sub_f32_e32 v82, v81, v178                               // 00000000E69C: 04A56551
	v_cmp_lt_f32_e32 vcc, s93, v82                             // 00000000E6A0: 7C82A45D
	s_cmp_lg_u64 vcc, 0                                        // 00000000E6A4: BF13806A
	s_cselect_b64 s[18:19], -1, 0                              // 00000000E6A8: 859280C1
	s_and_b64 s[20:21], s[18:19], exec                         // 00000000E6AC: 86947E12
	s_cselect_b32 s20, 1, 0                                    // 00000000E6B0: 85148081
	s_cselect_b64 s[20:21], -1, 0                              // 00000000E6B4: 859480C1
	v_cndmask_b32_e64 v111, v178, v81, s[20:21]                // 00000000E6B8: D100006F 0052A3B2
	v_fma_f32 v80, v80, v142, -v111                            // 00000000E6C0: D1CB0050 85BF1D50
	v_floor_f32_e32 v80, v80                                   // 00000000E6C8: 7EA03F50
	v_med3_f32 v80, v80, s91, 0                                // 00000000E6CC: D1D60050 0200B750
	v_cvt_i32_f32_e32 v81, v80                                 // 00000000E6D4: 7EA21150
	v_add_u32_e32 v112, 0x7f, v81                              // 00000000E6D8: 68E0A2FF 0000007F
	v_lshlrev_b32_e32 v81, 23, v112                            // 00000000E6E0: 24A2E097
	v_add_f32_e32 v80, v111, v80                               // 00000000E6E4: 02A0A16F
	v_sub_f32_e32 v110, 0x40c00000, v80                        // 00000000E6E8: 04DCA0FF 40C00000
	s_bfe_u32 s24, s17, 0x10001                                // 00000000E6F0: 9298FF11 00010001
	s_lshl_b32 s25, s24, 14                                    // 00000000E6F8: 8E198E18
	s_bitcmp1_b32 s17, 0                                       // 00000000E6FC: BF0D8011
	s_cselect_b64 s[20:21], -1, 0                              // 00000000E700: 859480C1
	s_and_b64 s[22:23], s[20:21], exec                         // 00000000E704: 86967E14
	s_cselect_b32 s22, s83, 0x10000                            // 00000000E708: 8516FF53 00010000
	s_or_b32 s25, s25, s22                                     // 00000000E710: 87191619
	v_or_b32_e32 v80, s25, v173                                // 00000000E714: 28A15A19
	v_add_u32_e32 v80, v80, v172                               // 00000000E718: 68A15950
	s_waitcnt vmcnt(0)                                         // 00000000E71C: BF8C0F70
	ds_read_b64_tr_b8 v[82:83], v80                            // 00000000E720: D9C40000 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1024                // 00000000E728: D9C40400 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2048                // 00000000E730: D9C40800 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3072                // 00000000E738: D9C40C00 58000050
	ds_read_b64_tr_b8 v[114:115], v80 offset:256               // 00000000E740: D9C40100 72000050
	ds_read_b64_tr_b8 v[116:117], v80 offset:1280              // 00000000E748: D9C40500 74000050
	ds_read_b64_tr_b8 v[118:119], v80 offset:2304              // 00000000E750: D9C40900 76000050
	ds_read_b64_tr_b8 v[120:121], v80 offset:3328              // 00000000E758: D9C40D00 78000050
	s_waitcnt lgkmcnt(4)                                       // 00000000E760: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[82:89], v[134:141], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000E764: D3AC0000 000369AA D3AE0830 04C30D52
	s_waitcnt lgkmcnt(0)                                       // 00000000E774: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[114:121], v[134:141], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000E778: D3AC0000 000369AA D3AE0820 04830D72
	ds_read_b64_tr_b8 v[82:83], v80 offset:512                 // 00000000E788: D9C40200 52000050
	ds_read_b64_tr_b8 v[84:85], v80 offset:1536                // 00000000E790: D9C40600 54000050
	ds_read_b64_tr_b8 v[86:87], v80 offset:2560                // 00000000E798: D9C40A00 56000050
	ds_read_b64_tr_b8 v[88:89], v80 offset:3584                // 00000000E7A0: D9C40E00 58000050
	ds_read_b64_tr_b8 v[114:115], v80 offset:768               // 00000000E7A8: D9C40300 72000050
	ds_read_b64_tr_b8 v[116:117], v80 offset:1792              // 00000000E7B0: D9C40700 74000050
	ds_read_b64_tr_b8 v[118:119], v80 offset:2816              // 00000000E7B8: D9C40B00 76000050
	ds_read_b64_tr_b8 v[120:121], v80 offset:3840              // 00000000E7C0: D9C40F00 78000050
	s_add_u32 s23, s77, 4                                      // 00000000E7C8: 8017844D
	s_cmp_ge_u32 s23, s73                                      // 00000000E7CC: BF094917
	s_cbranch_scc1 17                                          // 00000000E7D0: BF850011 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3c18>
	s_lshl_b32 s24, s24, 15                                    // 00000000E7D4: 8E188F18
	s_and_b64 s[20:21], s[20:21], exec                         // 00000000E7D8: 86947E14
	s_cselect_b32 s20, 0x4000, 0                               // 00000000E7DC: 851480FF 00004000
	s_or_b32 s20, s24, s20                                     // 00000000E7E4: 87141418
	s_or_b32 s20, s20, s33                                     // 00000000E7E8: 87142114
	s_mul_i32 s23, s23, s6                                     // 00000000E7EC: 92170617
	s_lshl_b32 s21, s23, 6                                     // 00000000E7F0: 8E158617
	s_mov_b32 m0, s20                                          // 00000000E7F4: BEFC0014
	s_nop 0                                                    // 00000000E7F8: BF800000
	buffer_load_dwordx4 v164, s[68:71], s21 offen lds          // 00000000E7FC: E05D1000 151100A4
	s_or_b32 m0, s20, 0x2000                                   // 00000000E804: 877CFF14 00002000
	s_nop 0                                                    // 00000000E80C: BF800000
	buffer_load_dwordx4 v165, s[68:71], s21 offen lds          // 00000000E810: E05D1000 151100A5
	s_add_u32 s20, s77, 2                                      // 00000000E818: 8014824D
	s_cmp_ge_u32 s20, s73                                      // 00000000E81C: BF094914
	s_cbranch_scc1 11                                          // 00000000E820: BF85000B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3c50>
	s_and_b32 s17, s17, 2                                      // 00000000E824: 86118211
	s_lshl_b32 s17, s17, 13                                    // 00000000E828: 8E118D11
	s_xor_b32 s17, s17, 0x4000                                 // 00000000E82C: 8811FF11 00004000
	s_mul_i32 s20, s20, s7                                     // 00000000E834: 92140714
	s_add_u32 s17, s17, s22                                    // 00000000E838: 80111611
	s_lshl_b32 s20, s20, 6                                     // 00000000E83C: 8E148614
	s_add_u32 m0, s17, s33                                     // 00000000E840: 807C2111
	s_nop 0                                                    // 00000000E844: BF800000
	buffer_load_dwordx4 v166, s[64:67], s20 offen lds          // 00000000E848: E05D1000 141000A6
	s_waitcnt lgkmcnt(4)                                       // 00000000E850: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[82:89], v[134:141], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000E854: D3AC0000 000369AA D3AE0810 04430D52
	s_waitcnt lgkmcnt(0)                                       // 00000000E864: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[134:141], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000E868: D3AC0000 000369AA D3AE0800 04030D72
	v_mov_b32_e32 v143, v142                                   // 00000000E878: 7F1E038E
	v_pk_fma_f32 v[80:81], v[64:65], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000E87C: D3B00050 1DBB2140
	v_pk_fma_f32 v[64:65], v[94:95], v[144:145], v[110:111] op_sel_hi:[1,1,0]// 00000000E884: D3B00040 1DBB215E
	v_pk_fma_f32 v[94:95], v[78:79], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E88C: D3B0005E 1DBB1D4E
	v_pk_fma_f32 v[92:93], v[76:77], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E894: D3B0005C 1DBB1D4C
	v_pk_fma_f32 v[90:91], v[74:75], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E89C: D3B0005A 1DBB1D4A
	v_pk_fma_f32 v[88:89], v[72:73], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E8A4: D3B00058 1DBB1D48
	v_pk_fma_f32 v[86:87], v[70:71], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E8AC: D3B00056 1DBB1D46
	v_pk_fma_f32 v[84:85], v[68:69], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E8B4: D3B00054 1DBB1D44
	v_pk_fma_f32 v[82:83], v[66:67], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E8BC: D3B00052 1DBB1D42
	v_pk_fma_f32 v[78:79], v[108:109], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E8C4: D3B0004E 1DBB1D6C
	v_pk_fma_f32 v[76:77], v[106:107], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E8CC: D3B0004C 1DBB1D6A
	v_pk_fma_f32 v[74:75], v[104:105], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E8D4: D3B0004A 1DBB1D68
	v_pk_fma_f32 v[72:73], v[102:103], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E8DC: D3B00048 1DBB1D66
	v_pk_fma_f32 v[70:71], v[100:101], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E8E4: D3B00046 1DBB1D64
	v_pk_fma_f32 v[68:69], v[98:99], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E8EC: D3B00044 1DBB1D62
	v_pk_fma_f32 v[66:67], v[96:97], v[142:143], v[110:111] op_sel_hi:[1,1,0]// 00000000E8F4: D3B00042 1DBB1D60
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000E8FC: 86927E12
	s_cbranch_scc0 68                                          // 00000000E900: BF840044 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x3e14>
	v_sub_f32_e32 v96, v178, v111                              // 00000000E904: 04C0DFB2
	v_exp_f32_e32 v96, v96                                     // 00000000E908: 7EC04160
	s_nop 0                                                    // 00000000E90C: BF800000
	v_pk_mul_f32 v[62:63], v[96:97], v[62:63] op_sel_hi:[0,1]  // 00000000E910: D3B1403E 10027D60
	v_pk_mul_f32 v[60:61], v[96:97], v[60:61] op_sel_hi:[0,1]  // 00000000E918: D3B1403C 10027960
	v_pk_mul_f32 v[58:59], v[96:97], v[58:59] op_sel_hi:[0,1]  // 00000000E920: D3B1403A 10027560
	v_pk_mul_f32 v[56:57], v[96:97], v[56:57] op_sel_hi:[0,1]  // 00000000E928: D3B14038 10027160
	v_pk_mul_f32 v[54:55], v[96:97], v[54:55] op_sel_hi:[0,1]  // 00000000E930: D3B14036 10026D60
	v_pk_mul_f32 v[52:53], v[96:97], v[52:53] op_sel_hi:[0,1]  // 00000000E938: D3B14034 10026960
	v_pk_mul_f32 v[50:51], v[96:97], v[50:51] op_sel_hi:[0,1]  // 00000000E940: D3B14032 10026560
	v_pk_mul_f32 v[48:49], v[96:97], v[48:49] op_sel_hi:[0,1]  // 00000000E948: D3B14030 10026160
	v_pk_mul_f32 v[46:47], v[96:97], v[46:47] op_sel_hi:[0,1]  // 00000000E950: D3B1402E 10025D60
	v_pk_mul_f32 v[44:45], v[96:97], v[44:45] op_sel_hi:[0,1]  // 00000000E958: D3B1402C 10025960
	v_pk_mul_f32 v[42:43], v[96:97], v[42:43] op_sel_hi:[0,1]  // 00000000E960: D3B1402A 10025560
	v_pk_mul_f32 v[40:41], v[96:97], v[40:41] op_sel_hi:[0,1]  // 00000000E968: D3B14028 10025160
	v_pk_mul_f32 v[38:39], v[96:97], v[38:39] op_sel_hi:[0,1]  // 00000000E970: D3B14026 10024D60
	v_pk_mul_f32 v[36:37], v[96:97], v[36:37] op_sel_hi:[0,1]  // 00000000E978: D3B14024 10024960
	v_pk_mul_f32 v[34:35], v[96:97], v[34:35] op_sel_hi:[0,1]  // 00000000E980: D3B14022 10024560
	v_pk_mul_f32 v[32:33], v[96:97], v[32:33] op_sel_hi:[0,1]  // 00000000E988: D3B14020 10024160
	v_pk_mul_f32 v[30:31], v[96:97], v[30:31] op_sel_hi:[0,1]  // 00000000E990: D3B1401E 10023D60
	v_pk_mul_f32 v[28:29], v[96:97], v[28:29] op_sel_hi:[0,1]  // 00000000E998: D3B1401C 10023960
	v_pk_mul_f32 v[26:27], v[96:97], v[26:27] op_sel_hi:[0,1]  // 00000000E9A0: D3B1401A 10023560
	v_pk_mul_f32 v[24:25], v[96:97], v[24:25] op_sel_hi:[0,1]  // 00000000E9A8: D3B14018 10023160
	v_pk_mul_f32 v[22:23], v[96:97], v[22:23] op_sel_hi:[0,1]  // 00000000E9B0: D3B14016 10022D60
	v_pk_mul_f32 v[20:21], v[96:97], v[20:21] op_sel_hi:[0,1]  // 00000000E9B8: D3B14014 10022960
	v_pk_mul_f32 v[18:19], v[96:97], v[18:19] op_sel_hi:[0,1]  // 00000000E9C0: D3B14012 10022560
	v_pk_mul_f32 v[16:17], v[96:97], v[16:17] op_sel_hi:[0,1]  // 00000000E9C8: D3B14010 10022160
	v_pk_mul_f32 v[14:15], v[96:97], v[14:15] op_sel_hi:[0,1]  // 00000000E9D0: D3B1400E 10021D60
	v_pk_mul_f32 v[12:13], v[96:97], v[12:13] op_sel_hi:[0,1]  // 00000000E9D8: D3B1400C 10021960
	v_pk_mul_f32 v[10:11], v[96:97], v[10:11] op_sel_hi:[0,1]  // 00000000E9E0: D3B1400A 10021560
	v_pk_mul_f32 v[8:9], v[96:97], v[8:9] op_sel_hi:[0,1]      // 00000000E9E8: D3B14008 10021160
	v_pk_mul_f32 v[6:7], v[96:97], v[6:7] op_sel_hi:[0,1]      // 00000000E9F0: D3B14006 10020D60
	v_pk_mul_f32 v[4:5], v[96:97], v[4:5] op_sel_hi:[0,1]      // 00000000E9F8: D3B14004 10020960
	v_pk_mul_f32 v[2:3], v[96:97], v[2:3] op_sel_hi:[0,1]      // 00000000EA00: D3B14002 10020560
	v_pk_mul_f32 v[0:1], v[96:97], v[0:1] op_sel_hi:[0,1]      // 00000000EA08: D3B14000 10020160
	v_mul_f32_e32 v179, v179, v96                              // 00000000EA10: 0B66C1B3
	s_waitcnt vmcnt(0)                                         // 00000000EA14: BF8C0F70
	s_barrier                                                  // 00000000EA18: BF8A0000
	s_add_u32 s77, s77, 1                                      // 00000000EA1C: 804D814D
	v_mov_b32_e32 v180, v112                                   // 00000000EA20: 7F680370
	v_mov_b32_e32 v178, v111                                   // 00000000EA24: 7F64036F
	s_branch 64077                                             // 00000000EA28: BF82FA4D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2760>
	s_cmp_eq_u32 s77, s76                                      // 00000000EA2C: BF064C4D
	s_cbranch_scc0 181                                         // 00000000EA30: BF8400B5 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4108>
	s_setprio 0                                                // 00000000EA34: BF8F0000
	v_exp_f32_e32 v104, v80                                    // 00000000EA38: 7ED04150
	v_exp_f32_e32 v105, v81                                    // 00000000EA3C: 7ED24151
	v_exp_f32_e32 v108, v64                                    // 00000000EA40: 7ED84140
	v_exp_f32_e32 v109, v65                                    // 00000000EA44: 7EDA4141
	v_exp_f32_e32 v112, v84                                    // 00000000EA48: 7EE04154
	v_exp_f32_e32 v113, v85                                    // 00000000EA4C: 7EE24155
	v_exp_f32_e32 v116, v68                                    // 00000000EA50: 7EE84144
	v_exp_f32_e32 v117, v69                                    // 00000000EA54: 7EEA4145
	v_exp_f32_e32 v120, v88                                    // 00000000EA58: 7EF04158
	v_exp_f32_e32 v121, v89                                    // 00000000EA5C: 7EF24159
	v_exp_f32_e32 v124, v72                                    // 00000000EA60: 7EF84148
	v_exp_f32_e32 v125, v73                                    // 00000000EA64: 7EFA4149
	v_exp_f32_e32 v136, v92                                    // 00000000EA68: 7F10415C
	v_exp_f32_e32 v137, v93                                    // 00000000EA6C: 7F12415D
	v_exp_f32_e32 v140, v76                                    // 00000000EA70: 7F18414C
	v_exp_f32_e32 v141, v77                                    // 00000000EA74: 7F1A414D
	v_mov_b32_e32 v96, 0                                       // 00000000EA78: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000EA7C: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000EA80: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000EA84: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000EA88: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000EA8C: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000EA90: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000EA94: 7ECE0280
	v_exp_f32_e32 v106, v82                                    // 00000000EA98: 7ED44152
	v_exp_f32_e32 v107, v83                                    // 00000000EA9C: 7ED64153
	v_exp_f32_e32 v110, v66                                    // 00000000EAA0: 7EDC4142
	v_exp_f32_e32 v111, v67                                    // 00000000EAA4: 7EDE4143
	v_exp_f32_e32 v114, v86                                    // 00000000EAA8: 7EE44156
	v_exp_f32_e32 v115, v87                                    // 00000000EAAC: 7EE64157
	v_exp_f32_e32 v118, v70                                    // 00000000EAB0: 7EEC4146
	v_exp_f32_e32 v119, v71                                    // 00000000EAB4: 7EEE4147
	v_exp_f32_e32 v122, v90                                    // 00000000EAB8: 7EF4415A
	v_exp_f32_e32 v123, v91                                    // 00000000EABC: 7EF6415B
	v_exp_f32_e32 v134, v74                                    // 00000000EAC0: 7F0C414A
	v_exp_f32_e32 v135, v75                                    // 00000000EAC4: 7F0E414B
	v_exp_f32_e32 v138, v94                                    // 00000000EAC8: 7F14415E
	v_exp_f32_e32 v139, v95                                    // 00000000EACC: 7F16415F
	v_exp_f32_e32 v143, v78                                    // 00000000EAD0: 7F1E414E
	v_exp_f32_e32 v181, v79                                    // 00000000EAD4: 7F6A414F
	v_cvt_pk_fp8_f32 v96, v104, v105                           // 00000000EAD8: D2A20060 0002D368
	v_cvt_pk_fp8_f32 v100, v108, v109                          // 00000000EAE0: D2A20064 0002DB6C
	v_cvt_pk_fp8_f32 v97, v112, v113                           // 00000000EAE8: D2A20061 0002E370
	v_cvt_pk_fp8_f32 v101, v116, v117                          // 00000000EAF0: D2A20065 0002EB74
	v_cvt_pk_fp8_f32 v98, v120, v121                           // 00000000EAF8: D2A20062 0002F378
	v_cvt_pk_fp8_f32 v102, v124, v125                          // 00000000EB00: D2A20066 0002FB7C
	v_cvt_pk_fp8_f32 v99, v136, v137                           // 00000000EB08: D2A20063 00031388
	v_cvt_pk_fp8_f32 v103, v140, v141                          // 00000000EB10: D2A20067 00031B8C
	v_cvt_pk_fp8_f32 v96, v106, v107 op_sel:[0,0,1]            // 00000000EB18: D2A24060 0002D76A
	v_cvt_pk_fp8_f32 v100, v110, v111 op_sel:[0,0,1]           // 00000000EB20: D2A24064 0002DF6E
	v_cvt_pk_fp8_f32 v97, v114, v115 op_sel:[0,0,1]            // 00000000EB28: D2A24061 0002E772
	v_cvt_pk_fp8_f32 v101, v118, v119 op_sel:[0,0,1]           // 00000000EB30: D2A24065 0002EF76
	v_cvt_pk_fp8_f32 v98, v122, v123 op_sel:[0,0,1]            // 00000000EB38: D2A24062 0002F77A
	v_cvt_pk_fp8_f32 v102, v134, v135 op_sel:[0,0,1]           // 00000000EB40: D2A24066 00030F86
	v_cvt_pk_fp8_f32 v99, v138, v139 op_sel:[0,0,1]            // 00000000EB48: D2A24063 0003178A
	v_cvt_pk_fp8_f32 v103, v143, v181 op_sel:[0,0,1]           // 00000000EB50: D2A24067 00036B8F
	s_barrier                                                  // 00000000EB58: BF8A0000
	s_setprio 1                                                // 00000000EB5C: BF8F0001
	s_waitcnt vmcnt(0)                                         // 00000000EB60: BF8C0F70
	v_mfma_f32_16x16x128_f8f6f4 v[104:107], v[126:133], v[96:103], 0// 00000000EB64: D3AD0068 0202C17E
	s_add_u32 s18, s76, s80                                    // 00000000EB6C: 8012504C
	s_bfe_u32 s17, s18, 0x10001                                // 00000000EB70: 9291FF12 00010001
	s_lshl_b32 s22, s17, 14                                    // 00000000EB78: 8E168E11
	s_bitcmp1_b32 s18, 0                                       // 00000000EB7C: BF0D8012
	s_cselect_b64 s[18:19], -1, 0                              // 00000000EB80: 859280C1
	s_and_b64 s[20:21], s[18:19], exec                         // 00000000EB84: 86947E12
	s_cselect_b32 s20, s83, 0x10000                            // 00000000EB88: 8514FF53 00010000
	s_or_b32 s22, s22, s20                                     // 00000000EB90: 87161416
	s_nop 3                                                    // 00000000EB94: BF800003
	v_or_b32_e32 v105, s22, v173                               // 00000000EB98: 28D35A16
	v_add_u32_e32 v105, v105, v172                             // 00000000EB9C: 68D35969
	ds_read_b64_tr_b8 v[106:107], v105                         // 00000000EBA0: D9C40000 6A000069
	ds_read_b64_tr_b8 v[108:109], v105 offset:1024             // 00000000EBA8: D9C40400 6C000069
	ds_read_b64_tr_b8 v[110:111], v105 offset:2048             // 00000000EBB0: D9C40800 6E000069
	ds_read_b64_tr_b8 v[112:113], v105 offset:3072             // 00000000EBB8: D9C40C00 70000069
	ds_read_b64_tr_b8 v[114:115], v105 offset:256              // 00000000EBC0: D9C40100 72000069
	ds_read_b64_tr_b8 v[116:117], v105 offset:1280             // 00000000EBC8: D9C40500 74000069
	ds_read_b64_tr_b8 v[118:119], v105 offset:2304             // 00000000EBD0: D9C40900 76000069
	ds_read_b64_tr_b8 v[120:121], v105 offset:3328             // 00000000EBD8: D9C40D00 78000069
	s_waitcnt lgkmcnt(4)                                       // 00000000EBE0: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[106:113], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000EBE4: D3AC0000 000369AA D3AE0830 04C2C16A
	s_waitcnt lgkmcnt(0)                                       // 00000000EBF4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[114:121], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000EBF8: D3AC0000 000369AA D3AE0820 0482C172
	ds_read_b64_tr_b8 v[106:107], v105 offset:512              // 00000000EC08: D9C40200 6A000069
	ds_read_b64_tr_b8 v[108:109], v105 offset:1536             // 00000000EC10: D9C40600 6C000069
	ds_read_b64_tr_b8 v[110:111], v105 offset:2560             // 00000000EC18: D9C40A00 6E000069
	ds_read_b64_tr_b8 v[112:113], v105 offset:3584             // 00000000EC20: D9C40E00 70000069
	ds_read_b64_tr_b8 v[114:115], v105 offset:768              // 00000000EC28: D9C40300 72000069
	ds_read_b64_tr_b8 v[116:117], v105 offset:1792             // 00000000EC30: D9C40700 74000069
	ds_read_b64_tr_b8 v[118:119], v105 offset:2816             // 00000000EC38: D9C40B00 76000069
	ds_read_b64_tr_b8 v[120:121], v105 offset:3840             // 00000000EC40: D9C40F00 78000069
	s_add_u32 s21, s76, 4                                      // 00000000EC48: 8015844C
	s_cmp_ge_u32 s21, s73                                      // 00000000EC4C: BF094915
	s_cbranch_scc1 17                                          // 00000000EC50: BF850011 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4098>
	s_lshl_b32 s22, s17, 15                                    // 00000000EC54: 8E168F11
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000EC58: 86927E12
	s_cselect_b32 s18, 0x4000, 0                               // 00000000EC5C: 851280FF 00004000
	s_or_b32 s18, s22, s18                                     // 00000000EC64: 87121216
	s_mul_i32 s21, s21, s6                                     // 00000000EC68: 92150615
	s_or_b32 s18, s18, s33                                     // 00000000EC6C: 87122112
	s_lshl_b32 s19, s21, 6                                     // 00000000EC70: 8E138615
	s_mov_b32 m0, s18                                          // 00000000EC74: BEFC0012
	s_nop 0                                                    // 00000000EC78: BF800000
	buffer_load_dwordx4 v164, s[68:71], s19 offen lds          // 00000000EC7C: E05D1000 131100A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000EC84: 877CFF12 00002000
	s_nop 0                                                    // 00000000EC8C: BF800000
	buffer_load_dwordx4 v165, s[68:71], s19 offen lds          // 00000000EC90: E05D1000 131100A5
	s_add_u32 s18, s76, 2                                      // 00000000EC98: 8012824C
	s_cmp_ge_u32 s18, s73                                      // 00000000EC9C: BF094912
	s_cbranch_scc1 9                                           // 00000000ECA0: BF850009 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x40c8>
	s_xor_b32 s17, s17, 1                                      // 00000000ECA4: 88118111
	s_lshl_b32 s17, s17, 14                                    // 00000000ECA8: 8E118E11
	s_mul_i32 s18, s18, s7                                     // 00000000ECAC: 92120712
	s_add_u32 s17, s17, s20                                    // 00000000ECB0: 80111411
	s_lshl_b32 s18, s18, 6                                     // 00000000ECB4: 8E128612
	s_add_u32 m0, s17, s33                                     // 00000000ECB8: 807C2111
	s_nop 0                                                    // 00000000ECBC: BF800000
	buffer_load_dwordx4 v166, s[64:67], s18 offen lds          // 00000000ECC0: E05D1000 121000A6
	s_waitcnt lgkmcnt(4)                                       // 00000000ECC8: BF8CC47F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[106:113], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000ECCC: D3AC0000 000369AA D3AE0810 0442C16A
	v_lshlrev_b32_e32 v105, 23, v180                           // 00000000ECDC: 24D36897
	v_fma_f32 v179, v104, v105, v179                           // 00000000ECE0: D1CB00B3 06CED368
	s_waitcnt lgkmcnt(0)                                       // 00000000ECE8: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[114:121], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000ECEC: D3AC0000 000369AA D3AE0800 0402C172
	s_barrier                                                  // 00000000ECFC: BF8A0000
	s_add_u32 s77, s76, 1                                      // 00000000ED00: 804D814C
	s_branch 63894                                             // 00000000ED04: BF82F996 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2760>
	s_barrier                                                  // 00000000ED08: BF8A0000
	s_waitcnt vmcnt(0)                                         // 00000000ED0C: BF8C0F70
	s_add_u32 s17, s77, 4                                      // 00000000ED10: 8011844D
	s_cmp_ge_u32 s17, s73                                      // 00000000ED14: BF094911
	s_cbranch_scc1 19                                          // 00000000ED18: BF850013 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4168>
	s_add_u32 s18, s77, s80                                    // 00000000ED1C: 8012504D
	s_and_b32 s19, s18, 2                                      // 00000000ED20: 86138212
	s_lshl_b32 s19, s19, 14                                    // 00000000ED24: 8E138E13
	s_bitcmp1_b32 s18, 0                                       // 00000000ED28: BF0D8012
	s_cselect_b32 s18, 0x4000, 0                               // 00000000ED2C: 851280FF 00004000
	s_or_b32 s18, s19, s18                                     // 00000000ED34: 87121213
	s_mul_i32 s17, s17, s6                                     // 00000000ED38: 92110611
	s_or_b32 s18, s18, s33                                     // 00000000ED3C: 87122112
	s_lshl_b32 s17, s17, 6                                     // 00000000ED40: 8E118611
	s_mov_b32 m0, s18                                          // 00000000ED44: BEFC0012
	s_nop 0                                                    // 00000000ED48: BF800000
	buffer_load_dwordx4 v164, s[68:71], s17 offen lds          // 00000000ED4C: E05D1000 111100A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000ED54: 877CFF12 00002000
	s_nop 0                                                    // 00000000ED5C: BF800000
	buffer_load_dwordx4 v165, s[68:71], s17 offen lds          // 00000000ED60: E05D1000 111100A5
	s_add_u32 s17, s77, 2                                      // 00000000ED68: 8011824D
	s_cmp_ge_u32 s17, s73                                      // 00000000ED6C: BF094911
	s_cbranch_scc1 15                                          // 00000000ED70: BF85000F <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x41b0>
	s_add_u32 s18, s77, s80                                    // 00000000ED74: 8012504D
	s_not_b32 s19, s18                                         // 00000000ED78: BE930412
	s_lshl_b32 s19, s19, 13                                    // 00000000ED7C: 8E138D13
	s_and_b32 s19, s19, 0x4000                                 // 00000000ED80: 8613FF13 00004000
	s_bitcmp1_b32 s18, 0                                       // 00000000ED88: BF0D8012
	s_cselect_b32 s18, s83, 0x10000                            // 00000000ED8C: 8512FF53 00010000
	s_mul_i32 s17, s17, s7                                     // 00000000ED94: 92110711
	s_or_b32 s18, s19, s18                                     // 00000000ED98: 87121213
	s_lshl_b32 s17, s17, 6                                     // 00000000ED9C: 8E118611
	s_or_b32 m0, s18, s33                                      // 00000000EDA0: 877C2112
	s_nop 0                                                    // 00000000EDA4: BF800000
	buffer_load_dwordx4 v166, s[64:67], s17 offen lds          // 00000000EDA8: E05D1000 111000A6
	s_barrier                                                  // 00000000EDB0: BF8A0000
	s_add_u32 s77, s77, 1                                      // 00000000EDB4: 804D814D
	s_branch 63849                                             // 00000000EDB8: BF82F969 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x2760>
	s_cmp_ge_u32 s76, s77                                      // 00000000EDBC: BF094D4C
	s_cbranch_scc1 46                                          // 00000000EDC0: BF85002E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x427c>
	s_waitcnt vmcnt(0)                                         // 00000000EDC4: BF8C0F70
	s_barrier                                                  // 00000000EDC8: BF8A0000
	s_cmp_lg_u32 s75, 0                                        // 00000000EDCC: BF07804B
	s_cbranch_scc1 4                                           // 00000000EDD0: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x41e4>
	s_not_b32 s17, s78                                         // 00000000EDD4: BE91044E
	s_add_u32 s17, s50, s17                                    // 00000000EDD8: 80111132
	s_cmp_lg_u32 s78, s17                                      // 00000000EDDC: BF07114E
	s_cbranch_scc1 502                                         // 00000000EDE0: BF8501F6 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x49bc>
	s_add_u32 s2, s2, s13                                      // 00000000EDE4: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000EDE8: BF093102
	s_mov_b32 s75, 0                                           // 00000000EDEC: BECB0080
	s_cbranch_scc1 216                                         // 00000000EDF0: BF8500D8 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4554>
	s_lshl_b32 s17, s2, 5                                      // 00000000EDF4: 8E118502
	s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0          // 00000000EDF8: C00E4D17 22000000
	s_mov_b64 s[18:19], -1                                     // 00000000EE00: BE9201C1
	s_mov_b64 s[20:21], -1                                     // 00000000EE04: BE9401C1
	s_add_u32 s22, s73, s80                                    // 00000000EE08: 80165049
	s_and_b32 s28, s22, 3                                      // 00000000EE0C: 861C8316
	s_and_b64 s[20:21], s[20:21], exec                         // 00000000EE10: 86947E14
	s_cbranch_scc1 213                                         // 00000000EE14: BF8500D5 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x456c>
	s_branch 495                                               // 00000000EE18: BF8201EF <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x49d8>
	s_cmp_ge_u32 s76, s77                                      // 00000000EE1C: BF094D4C
	s_cbranch_scc1 113                                         // 00000000EE20: BF850071 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x43e8>
	s_waitcnt vmcnt(0)                                         // 00000000EE24: BF8C0F70
	s_barrier                                                  // 00000000EE28: BF8A0000
	s_cmp_lg_u32 s75, 0                                        // 00000000EE2C: BF07804B
	s_cbranch_scc1 4                                           // 00000000EE30: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4244>
	s_not_b32 s17, s78                                         // 00000000EE34: BE91044E
	s_add_u32 s17, s50, s17                                    // 00000000EE38: 80111132
	s_cmp_lg_u32 s78, s17                                      // 00000000EE3C: BF07114E
	s_cbranch_scc1 490                                         // 00000000EE40: BF8501EA <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x49ec>
	s_add_u32 s2, s2, s13                                      // 00000000EE44: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000EE48: BF093102
	s_mov_b32 s75, 0                                           // 00000000EE4C: BECB0080
	s_cbranch_scc1 330                                         // 00000000EE50: BF85014A <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x477c>
	s_lshl_b32 s17, s2, 5                                      // 00000000EE54: 8E118502
	s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0          // 00000000EE58: C00E4D17 22000000
	s_mov_b64 s[18:19], -1                                     // 00000000EE60: BE9201C1
	s_mov_b64 s[20:21], -1                                     // 00000000EE64: BE9401C1
	s_add_u32 s22, s73, s80                                    // 00000000EE68: 80165049
	s_and_b32 s28, s22, 3                                      // 00000000EE6C: 861C8316
	s_and_b64 s[20:21], s[20:21], exec                         // 00000000EE70: 86947E14
	s_cbranch_scc1 327                                         // 00000000EE74: BF850147 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4794>
	s_branch 483                                               // 00000000EE78: BF8201E3 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4a08>
	s_setprio 0                                                // 00000000EE7C: BF8F0000
	v_exp_f32_e32 v80, v80                                     // 00000000EE80: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000EE84: 7EA24151
	v_exp_f32_e32 v64, v64                                     // 00000000EE88: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000EE8C: 7E824141
	v_exp_f32_e32 v84, v84                                     // 00000000EE90: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000EE94: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000EE98: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000EE9C: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000EEA0: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000EEA4: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000EEA8: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000EEAC: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000EEB0: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000EEB4: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000EEB8: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000EEBC: 7E9A414D
	v_mov_b32_e32 v96, 0                                       // 00000000EEC0: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000EEC4: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000EEC8: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000EECC: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000EED0: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000EED4: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000EED8: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000EEDC: 7ECE0280
	v_exp_f32_e32 v82, v82                                     // 00000000EEE0: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000EEE4: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000EEE8: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000EEEC: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000EEF0: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000EEF4: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000EEF8: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000EEFC: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000EF00: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000EF04: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000EF08: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000EF0C: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000EF10: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000EF14: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000EF18: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000EF1C: 7E9E414F
	v_cvt_pk_fp8_f32 v96, v80, v81                             // 00000000EF20: D2A20060 0002A350
	v_cvt_pk_fp8_f32 v100, v64, v65                            // 00000000EF28: D2A20064 00028340
	v_cvt_pk_fp8_f32 v97, v84, v85                             // 00000000EF30: D2A20061 0002AB54
	v_cvt_pk_fp8_f32 v101, v68, v69                            // 00000000EF38: D2A20065 00028B44
	v_cvt_pk_fp8_f32 v98, v88, v89                             // 00000000EF40: D2A20062 0002B358
	v_cvt_pk_fp8_f32 v102, v72, v73                            // 00000000EF48: D2A20066 00029348
	v_cvt_pk_fp8_f32 v99, v92, v93                             // 00000000EF50: D2A20063 0002BB5C
	v_cvt_pk_fp8_f32 v103, v76, v77                            // 00000000EF58: D2A20067 00029B4C
	v_cvt_pk_fp8_f32 v96, v82, v83 op_sel:[0,0,1]              // 00000000EF60: D2A24060 0002A752
	v_cvt_pk_fp8_f32 v100, v66, v67 op_sel:[0,0,1]             // 00000000EF68: D2A24064 00028742
	v_cvt_pk_fp8_f32 v97, v86, v87 op_sel:[0,0,1]              // 00000000EF70: D2A24061 0002AF56
	v_cvt_pk_fp8_f32 v101, v70, v71 op_sel:[0,0,1]             // 00000000EF78: D2A24065 00028F46
	v_cvt_pk_fp8_f32 v98, v90, v91 op_sel:[0,0,1]              // 00000000EF80: D2A24062 0002B75A
	v_cvt_pk_fp8_f32 v102, v74, v75 op_sel:[0,0,1]             // 00000000EF88: D2A24066 0002974A
	v_cvt_pk_fp8_f32 v99, v94, v95 op_sel:[0,0,1]              // 00000000EF90: D2A24063 0002BF5E
	v_cvt_pk_fp8_f32 v103, v78, v79 op_sel:[0,0,1]             // 00000000EF98: D2A24067 00029F4E
	s_waitcnt vmcnt(0)                                         // 00000000EFA0: BF8C0F70
	s_barrier                                                  // 00000000EFA4: BF8A0000
	s_cmp_lg_u32 s75, 0                                        // 00000000EFA8: BF07804B
	s_cbranch_scc1 4                                           // 00000000EFAC: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x43c0>
	s_not_b32 s17, s78                                         // 00000000EFB0: BE91044E
	s_add_u32 s17, s50, s17                                    // 00000000EFB4: 80111132
	s_cmp_lg_u32 s78, s17                                      // 00000000EFB8: BF07114E
	s_cbranch_scc1 407                                         // 00000000EFBC: BF850197 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4a1c>
	s_add_u32 s2, s2, s13                                      // 00000000EFC0: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000EFC4: BF093102
	s_mov_b32 s75, 0                                           // 00000000EFC8: BECB0080
	s_cbranch_scc1 373                                         // 00000000EFCC: BF850175 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x49a4>
	s_lshl_b32 s17, s2, 5                                      // 00000000EFD0: 8E118502
	s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0          // 00000000EFD4: C00E4D17 22000000
	s_mov_b64 s[24:25], -1                                     // 00000000EFDC: BE9801C1
	s_mov_b64 s[22:23], -1                                     // 00000000EFE0: BE9601C1
	s_branch 400                                               // 00000000EFE4: BF820190 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4a28>
	s_setprio 0                                                // 00000000EFE8: BF8F0000
	v_exp_f32_e32 v80, v80                                     // 00000000EFEC: 7EA04150
	v_exp_f32_e32 v81, v81                                     // 00000000EFF0: 7EA24151
	v_exp_f32_e32 v64, v64                                     // 00000000EFF4: 7E804140
	v_exp_f32_e32 v65, v65                                     // 00000000EFF8: 7E824141
	v_exp_f32_e32 v84, v84                                     // 00000000EFFC: 7EA84154
	v_exp_f32_e32 v85, v85                                     // 00000000F000: 7EAA4155
	v_exp_f32_e32 v68, v68                                     // 00000000F004: 7E884144
	v_exp_f32_e32 v69, v69                                     // 00000000F008: 7E8A4145
	v_exp_f32_e32 v88, v88                                     // 00000000F00C: 7EB04158
	v_exp_f32_e32 v89, v89                                     // 00000000F010: 7EB24159
	v_exp_f32_e32 v72, v72                                     // 00000000F014: 7E904148
	v_exp_f32_e32 v73, v73                                     // 00000000F018: 7E924149
	v_exp_f32_e32 v92, v92                                     // 00000000F01C: 7EB8415C
	v_exp_f32_e32 v93, v93                                     // 00000000F020: 7EBA415D
	v_exp_f32_e32 v76, v76                                     // 00000000F024: 7E98414C
	v_exp_f32_e32 v77, v77                                     // 00000000F028: 7E9A414D
	v_mov_b32_e32 v96, 0                                       // 00000000F02C: 7EC00280
	v_mov_b32_e32 v100, 0                                      // 00000000F030: 7EC80280
	v_mov_b32_e32 v97, 0                                       // 00000000F034: 7EC20280
	v_mov_b32_e32 v101, 0                                      // 00000000F038: 7ECA0280
	v_mov_b32_e32 v98, 0                                       // 00000000F03C: 7EC40280
	v_mov_b32_e32 v102, 0                                      // 00000000F040: 7ECC0280
	v_mov_b32_e32 v99, 0                                       // 00000000F044: 7EC60280
	v_mov_b32_e32 v103, 0                                      // 00000000F048: 7ECE0280
	v_exp_f32_e32 v82, v82                                     // 00000000F04C: 7EA44152
	v_exp_f32_e32 v83, v83                                     // 00000000F050: 7EA64153
	v_exp_f32_e32 v66, v66                                     // 00000000F054: 7E844142
	v_exp_f32_e32 v67, v67                                     // 00000000F058: 7E864143
	v_exp_f32_e32 v86, v86                                     // 00000000F05C: 7EAC4156
	v_exp_f32_e32 v87, v87                                     // 00000000F060: 7EAE4157
	v_exp_f32_e32 v70, v70                                     // 00000000F064: 7E8C4146
	v_exp_f32_e32 v71, v71                                     // 00000000F068: 7E8E4147
	v_exp_f32_e32 v90, v90                                     // 00000000F06C: 7EB4415A
	v_exp_f32_e32 v91, v91                                     // 00000000F070: 7EB6415B
	v_exp_f32_e32 v74, v74                                     // 00000000F074: 7E94414A
	v_exp_f32_e32 v75, v75                                     // 00000000F078: 7E96414B
	v_exp_f32_e32 v94, v94                                     // 00000000F07C: 7EBC415E
	v_exp_f32_e32 v95, v95                                     // 00000000F080: 7EBE415F
	v_exp_f32_e32 v78, v78                                     // 00000000F084: 7E9C414E
	v_exp_f32_e32 v79, v79                                     // 00000000F088: 7E9E414F
	v_cvt_pk_fp8_f32 v96, v80, v81                             // 00000000F08C: D2A20060 0002A350
	v_cvt_pk_fp8_f32 v100, v64, v65                            // 00000000F094: D2A20064 00028340
	v_cvt_pk_fp8_f32 v97, v84, v85                             // 00000000F09C: D2A20061 0002AB54
	v_cvt_pk_fp8_f32 v101, v68, v69                            // 00000000F0A4: D2A20065 00028B44
	v_cvt_pk_fp8_f32 v98, v88, v89                             // 00000000F0AC: D2A20062 0002B358
	v_cvt_pk_fp8_f32 v102, v72, v73                            // 00000000F0B4: D2A20066 00029348
	v_cvt_pk_fp8_f32 v99, v92, v93                             // 00000000F0BC: D2A20063 0002BB5C
	v_cvt_pk_fp8_f32 v103, v76, v77                            // 00000000F0C4: D2A20067 00029B4C
	v_cvt_pk_fp8_f32 v96, v82, v83 op_sel:[0,0,1]              // 00000000F0CC: D2A24060 0002A752
	v_cvt_pk_fp8_f32 v100, v66, v67 op_sel:[0,0,1]             // 00000000F0D4: D2A24064 00028742
	v_cvt_pk_fp8_f32 v97, v86, v87 op_sel:[0,0,1]              // 00000000F0DC: D2A24061 0002AF56
	v_cvt_pk_fp8_f32 v101, v70, v71 op_sel:[0,0,1]             // 00000000F0E4: D2A24065 00028F46
	v_cvt_pk_fp8_f32 v98, v90, v91 op_sel:[0,0,1]              // 00000000F0EC: D2A24062 0002B75A
	v_cvt_pk_fp8_f32 v102, v74, v75 op_sel:[0,0,1]             // 00000000F0F4: D2A24066 0002974A
	v_cvt_pk_fp8_f32 v99, v94, v95 op_sel:[0,0,1]              // 00000000F0FC: D2A24063 0002BF5E
	v_cvt_pk_fp8_f32 v103, v78, v79 op_sel:[0,0,1]             // 00000000F104: D2A24067 00029F4E
	s_waitcnt vmcnt(0)                                         // 00000000F10C: BF8C0F70
	s_barrier                                                  // 00000000F110: BF8A0000
	s_cmp_lg_u32 s75, 0                                        // 00000000F114: BF07804B
	s_cbranch_scc1 4                                           // 00000000F118: BF850004 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x452c>
	s_not_b32 s17, s78                                         // 00000000F11C: BE91044E
	s_add_u32 s17, s50, s17                                    // 00000000F120: 80111132
	s_cmp_lg_u32 s78, s17                                      // 00000000F124: BF07114E
	s_cbranch_scc1 530                                         // 00000000F128: BF850212 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4d74>
	s_add_u32 s2, s2, s13                                      // 00000000F12C: 80020D02
	s_cmp_ge_u32 s2, s49                                       // 00000000F130: BF093102
	s_mov_b32 s75, 0                                           // 00000000F134: BECB0080
	s_cbranch_scc1 285                                         // 00000000F138: BF85011D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x49b0>
	s_lshl_b32 s17, s2, 5                                      // 00000000F13C: 8E118502
	s_load_dwordx8 s[52:59], s[46:47], s17 offset:0x0          // 00000000F140: C00E4D17 22000000
	s_mov_b64 s[24:25], -1                                     // 00000000F148: BE9801C1
	s_mov_b64 s[22:23], -1                                     // 00000000F14C: BE9601C1
	s_branch 523                                               // 00000000F150: BF82020B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4d80>
	s_mov_b64 s[20:21], 0                                      // 00000000F154: BE940180
	s_mov_b64 s[18:19], -1                                     // 00000000F158: BE9201C1
	s_add_u32 s22, s73, s80                                    // 00000000F15C: 80165049
	s_and_b32 s28, s22, 3                                      // 00000000F160: 861C8316
	s_and_b64 s[20:21], s[20:21], exec                         // 00000000F164: 86947E14
	s_cbranch_scc0 283                                         // 00000000F168: BF84011B <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x49d8>
	s_waitcnt lgkmcnt(0)                                       // 00000000F16C: BF8CC07F
	s_mov_b32 s20, s58                                         // 00000000F170: BE94003A
	s_mov_b32 s21, s16                                         // 00000000F174: BE950010
	s_lshl_b64 s[20:21], s[20:21], 7                           // 00000000F178: 8E948714
	s_add_u32 s60, s38, s56                                    // 00000000F17C: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000F180: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000F184: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000F188: 82411529
	s_not_b32 s17, s52                                         // 00000000F18C: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000F190: 80111132
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000F194: 86927E12
	s_cselect_b32 s17, s17, s52                                // 00000000F198: 85113411
	s_lshl_b32 s18, s17, 5                                     // 00000000F19C: 8E128511
	s_add_u32 s18, s18, 32                                     // 00000000F1A0: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000F1A4: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000F1A8: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000F1AC: 8F128612
	s_min_u32 s73, s12, s18                                    // 00000000F1B0: 83C9120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000F1B4: 86927E00
	s_cbranch_scc0 69                                          // 00000000F1B8: BF840045 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x46d0>
	s_lshr_b32 s18, s28, 1                                     // 00000000F1BC: 8F12811C
	s_lshl_b32 s19, s18, 15                                    // 00000000F1C0: 8E138F12
	s_bitcmp1_b32 s22, 0                                       // 00000000F1C4: BF0D8016
	s_cselect_b32 s20, 0x4000, 0                               // 00000000F1C8: 851480FF 00004000
	s_cselect_b32 s21, s83, 0x10000                            // 00000000F1D0: 8515FF53 00010000
	s_or_b32 s19, s19, s20                                     // 00000000F1D8: 87131413
	s_or_b32 s19, s19, s33                                     // 00000000F1DC: 87132113
	s_mov_b32 m0, s19                                          // 00000000F1E0: BEFC0013
	s_lshl_b32 s18, s18, 14                                    // 00000000F1E4: 8E128E12
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000F1E8: E05D1000 800F00A4
	s_add_u32 m0, s19, 0x1000                                  // 00000000F1F0: 807CFF13 00001000
	s_or_b32 s18, s18, s21                                     // 00000000F1F8: 87121512
	buffer_load_dwordx4 v164, s[60:63], s87 offen lds          // 00000000F1FC: E05D1000 570F00A4
	s_or_b32 m0, s19, 0x2000                                   // 00000000F204: 877CFF13 00002000
	s_or_b32 s18, s18, s33                                     // 00000000F20C: 87122112
	buffer_load_dwordx4 v164, s[60:63], s48 offen lds          // 00000000F210: E05D1000 300F00A4
	s_add_u32 m0, s19, 0x3000                                  // 00000000F218: 807CFF13 00003000
	s_mul_i32 s19, s6, 48                                      // 00000000F220: 9213B006
	s_mov_b32 s67, s63                                         // 00000000F224: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F228: E05D1000 130F00A4
	s_mov_b32 m0, s18                                          // 00000000F230: BEFC0012
	s_nop 0                                                    // 00000000F234: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000F238: E05D1000 801000A6
	s_add_u32 m0, s18, 0x1000                                  // 00000000F240: 807CFF12 00001000
	s_cmp_lt_u32 s73, 2                                        // 00000000F248: BF0A8249
	buffer_load_dwordx4 v166, s[64:67], s74 offen lds          // 00000000F24C: E05D1000 4A1000A6
	s_cbranch_scc1 30                                          // 00000000F254: BF85001E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x46d0>
	s_add_u32 s18, s28, 1                                      // 00000000F258: 8012811C
	s_and_b32 s19, s18, 2                                      // 00000000F25C: 86138212
	s_lshl_b32 s19, s19, 14                                    // 00000000F260: 8E138E13
	s_bitcmp1_b32 s18, 0                                       // 00000000F264: BF0D8012
	s_cselect_b32 s18, 0x4000, 0                               // 00000000F268: 851280FF 00004000
	s_or_b32 s18, s19, s18                                     // 00000000F270: 87121213
	s_or_b32 s18, s18, s33                                     // 00000000F274: 87122112
	s_mov_b32 m0, s18                                          // 00000000F278: BEFC0012
	s_mul_i32 s19, s6, 0x50                                    // 00000000F27C: 9213FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000F284: E05D1000 090F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000F28C: 807CFF12 00001000
	s_nop 0                                                    // 00000000F294: BF800000
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F298: E05D1000 130F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000F2A0: 877CFF12 00002000
	s_mul_i32 s19, s6, 0x60                                    // 00000000F2A8: 9213FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F2B0: E05D1000 130F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000F2B8: 807CFF12 00003000
	s_mul_i32 s18, s6, 0x70                                    // 00000000F2C0: 9212FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F2C8: E05D1000 120F00A4
	s_mov_b32 s18, s59                                         // 00000000F2D0: BE92003B
	s_mov_b32 s19, s16                                         // 00000000F2D4: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000F2D8: 8E928812
	s_add_u32 s24, s36, s54                                    // 00000000F2DC: 80183624
	s_addc_u32 s25, s37, s55                                   // 00000000F2E0: 82193725
	s_mov_b32 s22, s53                                         // 00000000F2E4: BE960035
	s_mov_b32 s23, s16                                         // 00000000F2E8: BE970010
	s_add_u32 s20, s42, s18                                    // 00000000F2EC: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000F2F0: 8215132B
	s_lshl_b64 s[18:19], s[22:23], 2                           // 00000000F2F4: 8E928216
	s_add_u32 s22, s44, s18                                    // 00000000F2F8: 8016122C
	s_addc_u32 s23, s45, s19                                   // 00000000F2FC: 8217132D
	s_mul_i32 s17, s17, s51                                    // 00000000F300: 92113311
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000F304: 8692227E
	s_cselect_b32 s19, 0, s23                                  // 00000000F308: 85131780
	s_cselect_b32 s18, 0, s22                                  // 00000000F30C: 85121680
	s_add_u32 s22, s17, s72                                    // 00000000F310: 80164811
	s_lshl_b32 s17, s22, 5                                     // 00000000F314: 8E118516
	v_or_b32_e32 v64, s17, v146                                // 00000000F318: 28812411
	s_bfe_u32 s76, s22, 0x1a0001                               // 00000000F31C: 92CCFF16 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000F324: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000F32C: 688081A7
	global_load_dwordx4 v[182:185], v64, s[24:25]              // 00000000F330: DC5C8000 B6180040
	global_load_dwordx4 v[186:189], v64, s[24:25] offset:16    // 00000000F338: DC5C8010 BA180040
	global_load_dwordx4 v[190:193], v64, s[24:25] offset:64    // 00000000F340: DC5C8040 BE180040
	global_load_dwordx4 v[194:197], v64, s[24:25] offset:80    // 00000000F348: DC5C8050 C2180040
	global_load_dwordx4 v[198:201], v64, s[24:25] offset:128   // 00000000F350: DC5C8080 C6180040
	global_load_dwordx4 v[202:205], v64, s[24:25] offset:144   // 00000000F358: DC5C8090 CA180040
	s_mov_b32 s67, 0x110000                                    // 00000000F360: BEC300FF 00110000
	s_mov_b64 s[22:23], -1                                     // 00000000F368: BE9601C1
	s_mov_b32 s78, s52                                         // 00000000F36C: BECE0034
	s_mov_b32 s79, 0x110000                                    // 00000000F370: BECF00FF 00110000
	s_branch 376                                               // 00000000F378: BF820178 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4d5c>
	s_mov_b64 s[20:21], 0                                      // 00000000F37C: BE940180
	s_mov_b64 s[18:19], -1                                     // 00000000F380: BE9201C1
	s_add_u32 s22, s73, s80                                    // 00000000F384: 80165049
	s_and_b32 s28, s22, 3                                      // 00000000F388: 861C8316
	s_and_b64 s[20:21], s[20:21], exec                         // 00000000F38C: 86947E14
	s_cbranch_scc0 157                                         // 00000000F390: BF84009D <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4a08>
	s_waitcnt lgkmcnt(0)                                       // 00000000F394: BF8CC07F
	s_mov_b32 s20, s58                                         // 00000000F398: BE94003A
	s_mov_b32 s21, s16                                         // 00000000F39C: BE950010
	s_lshl_b64 s[20:21], s[20:21], 7                           // 00000000F3A0: 8E948714
	s_add_u32 s60, s38, s56                                    // 00000000F3A4: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000F3A8: 823D3927
	s_add_u32 s64, s40, s20                                    // 00000000F3AC: 80401428
	s_addc_u32 s65, s41, s21                                   // 00000000F3B0: 82411529
	s_not_b32 s17, s52                                         // 00000000F3B4: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000F3B8: 80111132
	s_and_b64 s[18:19], s[18:19], exec                         // 00000000F3BC: 86927E12
	s_cselect_b32 s17, s17, s52                                // 00000000F3C0: 85113411
	s_lshl_b32 s18, s17, 5                                     // 00000000F3C4: 8E128511
	s_add_u32 s18, s18, 32                                     // 00000000F3C8: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000F3CC: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000F3D0: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000F3D4: 8F128612
	s_min_u32 s73, s12, s18                                    // 00000000F3D8: 83C9120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000F3DC: 86927E00
	s_cbranch_scc0 69                                          // 00000000F3E0: BF840045 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x48f8>
	s_lshr_b32 s18, s28, 1                                     // 00000000F3E4: 8F12811C
	s_lshl_b32 s19, s18, 15                                    // 00000000F3E8: 8E138F12
	s_bitcmp1_b32 s22, 0                                       // 00000000F3EC: BF0D8016
	s_cselect_b32 s20, 0x4000, 0                               // 00000000F3F0: 851480FF 00004000
	s_cselect_b32 s21, s83, 0x10000                            // 00000000F3F8: 8515FF53 00010000
	s_or_b32 s19, s19, s20                                     // 00000000F400: 87131413
	s_or_b32 s19, s19, s33                                     // 00000000F404: 87132113
	s_mov_b32 m0, s19                                          // 00000000F408: BEFC0013
	s_lshl_b32 s18, s18, 14                                    // 00000000F40C: 8E128E12
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000F410: E05D1000 800F00A4
	s_add_u32 m0, s19, 0x1000                                  // 00000000F418: 807CFF13 00001000
	s_or_b32 s18, s18, s21                                     // 00000000F420: 87121512
	buffer_load_dwordx4 v164, s[60:63], s87 offen lds          // 00000000F424: E05D1000 570F00A4
	s_or_b32 m0, s19, 0x2000                                   // 00000000F42C: 877CFF13 00002000
	s_or_b32 s18, s18, s33                                     // 00000000F434: 87122112
	buffer_load_dwordx4 v164, s[60:63], s48 offen lds          // 00000000F438: E05D1000 300F00A4
	s_add_u32 m0, s19, 0x3000                                  // 00000000F440: 807CFF13 00003000
	s_mul_i32 s19, s6, 48                                      // 00000000F448: 9213B006
	s_mov_b32 s67, s63                                         // 00000000F44C: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F450: E05D1000 130F00A4
	s_mov_b32 m0, s18                                          // 00000000F458: BEFC0012
	s_nop 0                                                    // 00000000F45C: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000F460: E05D1000 801000A6
	s_add_u32 m0, s18, 0x1000                                  // 00000000F468: 807CFF12 00001000
	s_cmp_lt_u32 s73, 2                                        // 00000000F470: BF0A8249
	buffer_load_dwordx4 v166, s[64:67], s74 offen lds          // 00000000F474: E05D1000 4A1000A6
	s_cbranch_scc1 30                                          // 00000000F47C: BF85001E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x48f8>
	s_add_u32 s18, s28, 1                                      // 00000000F480: 8012811C
	s_and_b32 s19, s18, 2                                      // 00000000F484: 86138212
	s_lshl_b32 s19, s19, 14                                    // 00000000F488: 8E138E13
	s_bitcmp1_b32 s18, 0                                       // 00000000F48C: BF0D8012
	s_cselect_b32 s18, 0x4000, 0                               // 00000000F490: 851280FF 00004000
	s_or_b32 s18, s19, s18                                     // 00000000F498: 87121213
	s_or_b32 s18, s18, s33                                     // 00000000F49C: 87122112
	s_mov_b32 m0, s18                                          // 00000000F4A0: BEFC0012
	s_mul_i32 s19, s6, 0x50                                    // 00000000F4A4: 9213FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000F4AC: E05D1000 090F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000F4B4: 807CFF12 00001000
	s_nop 0                                                    // 00000000F4BC: BF800000
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F4C0: E05D1000 130F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000F4C8: 877CFF12 00002000
	s_mul_i32 s19, s6, 0x60                                    // 00000000F4D0: 9213FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F4D8: E05D1000 130F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000F4E0: 807CFF12 00003000
	s_mul_i32 s18, s6, 0x70                                    // 00000000F4E8: 9212FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F4F0: E05D1000 120F00A4
	s_mov_b32 s18, s59                                         // 00000000F4F8: BE92003B
	s_mov_b32 s19, s16                                         // 00000000F4FC: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000F500: 8E928812
	s_add_u32 s24, s36, s54                                    // 00000000F504: 80183624
	s_addc_u32 s25, s37, s55                                   // 00000000F508: 82193725
	s_mov_b32 s22, s53                                         // 00000000F50C: BE960035
	s_mov_b32 s23, s16                                         // 00000000F510: BE970010
	s_add_u32 s20, s42, s18                                    // 00000000F514: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000F518: 8215132B
	s_lshl_b64 s[18:19], s[22:23], 2                           // 00000000F51C: 8E928216
	s_add_u32 s22, s44, s18                                    // 00000000F520: 8016122C
	s_addc_u32 s23, s45, s19                                   // 00000000F524: 8217132D
	s_mul_i32 s17, s17, s51                                    // 00000000F528: 92113311
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000F52C: 8692227E
	s_cselect_b32 s19, 0, s23                                  // 00000000F530: 85131780
	s_cselect_b32 s18, 0, s22                                  // 00000000F534: 85121680
	s_add_u32 s22, s17, s72                                    // 00000000F538: 80164811
	s_lshl_b32 s17, s22, 5                                     // 00000000F53C: 8E118516
	v_or_b32_e32 v64, s17, v146                                // 00000000F540: 28812411
	s_bfe_u32 s76, s22, 0x1a0001                               // 00000000F544: 92CCFF16 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000F54C: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000F554: 688081A7
	global_load_dwordx4 v[182:185], v64, s[24:25]              // 00000000F558: DC5C8000 B6180040
	global_load_dwordx4 v[186:189], v64, s[24:25] offset:16    // 00000000F560: DC5C8010 BA180040
	global_load_dwordx4 v[190:193], v64, s[24:25] offset:64    // 00000000F568: DC5C8040 BE180040
	global_load_dwordx4 v[194:197], v64, s[24:25] offset:80    // 00000000F570: DC5C8050 C2180040
	global_load_dwordx4 v[198:201], v64, s[24:25] offset:128   // 00000000F578: DC5C8080 C6180040
	global_load_dwordx4 v[202:205], v64, s[24:25] offset:144   // 00000000F580: DC5C8090 CA180040
	s_mov_b32 s67, 0x110000                                    // 00000000F588: BEC300FF 00110000
	s_mov_b64 s[22:23], -1                                     // 00000000F590: BE9601C1
	s_mov_b32 s78, s52                                         // 00000000F594: BECE0034
	s_mov_b32 s79, 0x110000                                    // 00000000F598: BECF00FF 00110000
	s_branch 452                                               // 00000000F5A0: BF8201C4 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x50b4>
	s_mov_b64 s[22:23], 0                                      // 00000000F5A4: BE960180
	s_mov_b64 s[24:25], -1                                     // 00000000F5A8: BE9801C1
	s_branch 30                                                // 00000000F5AC: BF82001E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4a28>
	s_mov_b64 s[22:23], 0                                      // 00000000F5B0: BE960180
	s_mov_b64 s[24:25], -1                                     // 00000000F5B4: BE9801C1
	s_branch 241                                               // 00000000F5B8: BF8200F1 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4d80>
	s_mov_b64 s[20:21], -1                                     // 00000000F5BC: BE9401C1
	s_mov_b32 s75, 1                                           // 00000000F5C0: BECB0081
	s_mov_b64 s[18:19], 0                                      // 00000000F5C4: BE920180
	s_add_u32 s22, s73, s80                                    // 00000000F5C8: 80165049
	s_and_b32 s28, s22, 3                                      // 00000000F5CC: 861C8316
	s_and_b64 s[20:21], s[20:21], exec                         // 00000000F5D0: 86947E14
	s_cbranch_scc1 65253                                       // 00000000F5D4: BF85FEE5 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x456c>
	s_mov_b64 s[22:23], 0                                      // 00000000F5D8: BE960180
	s_mov_b64 s[20:21], s[10:11]                               // 00000000F5DC: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000F5E0: BE92010E
	s_mov_b32 s17, s3                                          // 00000000F5E4: BE910003
	s_branch 220                                               // 00000000F5E8: BF8200DC <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4d5c>
	s_mov_b64 s[20:21], -1                                     // 00000000F5EC: BE9401C1
	s_mov_b32 s75, 1                                           // 00000000F5F0: BECB0081
	s_mov_b64 s[18:19], 0                                      // 00000000F5F4: BE920180
	s_add_u32 s22, s73, s80                                    // 00000000F5F8: 80165049
	s_and_b32 s28, s22, 3                                      // 00000000F5FC: 861C8316
	s_and_b64 s[20:21], s[20:21], exec                         // 00000000F600: 86947E14
	s_cbranch_scc1 65379                                       // 00000000F604: BF85FF63 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4794>
	s_mov_b64 s[22:23], 0                                      // 00000000F608: BE960180
	s_mov_b64 s[20:21], s[10:11]                               // 00000000F60C: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000F610: BE92010E
	s_mov_b32 s17, s3                                          // 00000000F614: BE910003
	s_branch 422                                               // 00000000F618: BF8201A6 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x50b4>
	s_mov_b64 s[22:23], -1                                     // 00000000F61C: BE9601C1
	s_mov_b32 s75, 1                                           // 00000000F620: BECB0081
	s_mov_b64 s[24:25], 0                                      // 00000000F624: BE980180
	s_add_u32 s26, s73, s80                                    // 00000000F628: 801A5049
	s_and_b32 s28, s26, 3                                      // 00000000F62C: 861C831A
	s_and_b64 s[18:19], s[22:23], exec                         // 00000000F630: 86927E16
	s_mov_b64 s[20:21], s[10:11]                               // 00000000F634: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000F638: BE92010E
	s_mov_b32 s17, s3                                          // 00000000F63C: BE910003
	s_cbranch_scc0 130                                         // 00000000F640: BF840082 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4c4c>
	s_waitcnt lgkmcnt(0)                                       // 00000000F644: BF8CC07F
	s_mov_b32 s18, s58                                         // 00000000F648: BE92003A
	s_mov_b32 s19, s16                                         // 00000000F64C: BE930010
	s_lshl_b64 s[18:19], s[18:19], 7                           // 00000000F650: 8E928712
	s_add_u32 s60, s38, s56                                    // 00000000F654: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000F658: 823D3927
	s_add_u32 s64, s40, s18                                    // 00000000F65C: 80401228
	s_addc_u32 s65, s41, s19                                   // 00000000F660: 82411329
	s_not_b32 s17, s52                                         // 00000000F664: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000F668: 80111132
	s_and_b64 s[18:19], s[24:25], exec                         // 00000000F66C: 86927E18
	s_cselect_b32 s17, s17, s52                                // 00000000F670: 85113411
	s_lshl_b32 s18, s17, 5                                     // 00000000F674: 8E128511
	s_add_u32 s18, s18, 32                                     // 00000000F678: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000F67C: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000F680: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000F684: 8F128612
	s_min_u32 s73, s12, s18                                    // 00000000F688: 83C9120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000F68C: 86927E00
	s_cbranch_scc0 69                                          // 00000000F690: BF840045 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4ba8>
	s_lshr_b32 s18, s28, 1                                     // 00000000F694: 8F12811C
	s_lshl_b32 s19, s18, 15                                    // 00000000F698: 8E138F12
	s_bitcmp1_b32 s26, 0                                       // 00000000F69C: BF0D801A
	s_cselect_b32 s20, 0x4000, 0                               // 00000000F6A0: 851480FF 00004000
	s_cselect_b32 s21, s83, 0x10000                            // 00000000F6A8: 8515FF53 00010000
	s_or_b32 s19, s19, s20                                     // 00000000F6B0: 87131413
	s_or_b32 s19, s19, s33                                     // 00000000F6B4: 87132113
	s_mov_b32 m0, s19                                          // 00000000F6B8: BEFC0013
	s_lshl_b32 s18, s18, 14                                    // 00000000F6BC: 8E128E12
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000F6C0: E05D1000 800F00A4
	s_add_u32 m0, s19, 0x1000                                  // 00000000F6C8: 807CFF13 00001000
	s_or_b32 s18, s18, s21                                     // 00000000F6D0: 87121512
	buffer_load_dwordx4 v164, s[60:63], s87 offen lds          // 00000000F6D4: E05D1000 570F00A4
	s_or_b32 m0, s19, 0x2000                                   // 00000000F6DC: 877CFF13 00002000
	s_or_b32 s18, s18, s33                                     // 00000000F6E4: 87122112
	buffer_load_dwordx4 v164, s[60:63], s48 offen lds          // 00000000F6E8: E05D1000 300F00A4
	s_add_u32 m0, s19, 0x3000                                  // 00000000F6F0: 807CFF13 00003000
	s_mul_i32 s19, s6, 48                                      // 00000000F6F8: 9213B006
	s_mov_b32 s67, s63                                         // 00000000F6FC: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F700: E05D1000 130F00A4
	s_mov_b32 m0, s18                                          // 00000000F708: BEFC0012
	s_nop 0                                                    // 00000000F70C: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000F710: E05D1000 801000A6
	s_add_u32 m0, s18, 0x1000                                  // 00000000F718: 807CFF12 00001000
	s_cmp_lt_u32 s73, 2                                        // 00000000F720: BF0A8249
	buffer_load_dwordx4 v166, s[64:67], s74 offen lds          // 00000000F724: E05D1000 4A1000A6
	s_cbranch_scc1 30                                          // 00000000F72C: BF85001E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4ba8>
	s_add_u32 s18, s28, 1                                      // 00000000F730: 8012811C
	s_and_b32 s19, s18, 2                                      // 00000000F734: 86138212
	s_lshl_b32 s19, s19, 14                                    // 00000000F738: 8E138E13
	s_bitcmp1_b32 s18, 0                                       // 00000000F73C: BF0D8012
	s_cselect_b32 s18, 0x4000, 0                               // 00000000F740: 851280FF 00004000
	s_or_b32 s18, s19, s18                                     // 00000000F748: 87121213
	s_or_b32 s18, s18, s33                                     // 00000000F74C: 87122112
	s_mov_b32 m0, s18                                          // 00000000F750: BEFC0012
	s_mul_i32 s19, s6, 0x50                                    // 00000000F754: 9213FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000F75C: E05D1000 090F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000F764: 807CFF12 00001000
	s_nop 0                                                    // 00000000F76C: BF800000
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F770: E05D1000 130F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000F778: 877CFF12 00002000
	s_mul_i32 s19, s6, 0x60                                    // 00000000F780: 9213FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000F788: E05D1000 130F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000F790: 807CFF12 00003000
	s_mul_i32 s18, s6, 0x70                                    // 00000000F798: 9212FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000F7A0: E05D1000 120F00A4
	s_mov_b32 s18, s59                                         // 00000000F7A8: BE92003B
	s_mov_b32 s19, s16                                         // 00000000F7AC: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000F7B0: 8E928812
	s_add_u32 s26, s36, s54                                    // 00000000F7B4: 801A3624
	s_addc_u32 s27, s37, s55                                   // 00000000F7B8: 821B3725
	s_mov_b32 s24, s53                                         // 00000000F7BC: BE980035
	s_mov_b32 s25, s16                                         // 00000000F7C0: BE990010
	s_add_u32 s20, s42, s18                                    // 00000000F7C4: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000F7C8: 8215132B
	s_lshl_b64 s[18:19], s[24:25], 2                           // 00000000F7CC: 8E928218
	s_add_u32 s24, s44, s18                                    // 00000000F7D0: 8018122C
	s_addc_u32 s25, s45, s19                                   // 00000000F7D4: 8219132D
	s_mul_i32 s17, s17, s51                                    // 00000000F7D8: 92113311
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000F7DC: 8692227E
	s_cselect_b32 s19, 0, s25                                  // 00000000F7E0: 85131980
	s_cselect_b32 s18, 0, s24                                  // 00000000F7E4: 85121880
	s_add_u32 s24, s17, s72                                    // 00000000F7E8: 80184811
	s_lshl_b32 s17, s24, 5                                     // 00000000F7EC: 8E118518
	v_or_b32_e32 v64, s17, v146                                // 00000000F7F0: 28812411
	s_bfe_u32 s76, s24, 0x1a0001                               // 00000000F7F4: 92CCFF18 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000F7FC: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000F804: 688081A7
	global_load_dwordx4 v[182:185], v64, s[26:27]              // 00000000F808: DC5C8000 B61A0040
	global_load_dwordx4 v[186:189], v64, s[26:27] offset:16    // 00000000F810: DC5C8010 BA1A0040
	global_load_dwordx4 v[190:193], v64, s[26:27] offset:64    // 00000000F818: DC5C8040 BE1A0040
	global_load_dwordx4 v[194:197], v64, s[26:27] offset:80    // 00000000F820: DC5C8050 C21A0040
	global_load_dwordx4 v[198:201], v64, s[26:27] offset:128   // 00000000F828: DC5C8080 C61A0040
	global_load_dwordx4 v[202:205], v64, s[26:27] offset:144   // 00000000F830: DC5C8090 CA1A0040
	s_mov_b32 s67, 0x110000                                    // 00000000F838: BEC300FF 00110000
	s_mov_b32 s78, s52                                         // 00000000F840: BECE0034
	s_mov_b32 s79, 0x110000                                    // 00000000F844: BECF00FF 00110000
	s_setprio 1                                                // 00000000F84C: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[96:103], 0// 00000000F850: D3AD0040 0202C17E
	s_add_u32 s24, s77, s80                                    // 00000000F858: 8018504D
	s_and_b32 s25, s24, 2                                      // 00000000F85C: 86198218
	s_lshl_b32 s25, s25, 13                                    // 00000000F860: 8E198D19
	s_bitcmp1_b32 s24, 0                                       // 00000000F864: BF0D8018
	s_cselect_b32 s24, s83, 0x10000                            // 00000000F868: 8518FF53 00010000
	s_or_b32 s25, s25, s24                                     // 00000000F870: 87191819
	s_nop 5                                                    // 00000000F874: BF800005
	v_or_b32_e32 v65, s25, v173                                // 00000000F878: 28835A19
	v_add_u32_e32 v65, v65, v172                               // 00000000F87C: 68835941
	s_waitcnt vmcnt(6)                                         // 00000000F880: BF8C0F76
	ds_read_b64_tr_b8 v[66:67], v65                            // 00000000F884: D9C40000 42000041
	ds_read_b64_tr_b8 v[68:69], v65 offset:1024                // 00000000F88C: D9C40400 44000041
	ds_read_b64_tr_b8 v[70:71], v65 offset:2048                // 00000000F894: D9C40800 46000041
	ds_read_b64_tr_b8 v[72:73], v65 offset:3072                // 00000000F89C: D9C40C00 48000041
	ds_read_b64_tr_b8 v[74:75], v65 offset:256                 // 00000000F8A4: D9C40100 4A000041
	ds_read_b64_tr_b8 v[76:77], v65 offset:1280                // 00000000F8AC: D9C40500 4C000041
	ds_read_b64_tr_b8 v[78:79], v65 offset:2304                // 00000000F8B4: D9C40900 4E000041
	ds_read_b64_tr_b8 v[80:81], v65 offset:3328                // 00000000F8BC: D9C40D00 50000041
	s_waitcnt lgkmcnt(0)                                       // 00000000F8C4: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[66:73], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000F8C8: D3AC0000 000369AA D3AE0830 04C2C142
	v_lshlrev_b32_e32 v66, 23, v180                            // 00000000F8D8: 24856897
	v_fma_f32 v179, v64, v66, v179                             // 00000000F8DC: D1CB00B3 06CE8540
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[74:81], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000F8E4: D3AC0000 000369AA D3AE0820 0482C14A
	ds_read_b64_tr_b8 v[66:67], v65 offset:512                 // 00000000F8F4: D9C40200 42000041
	ds_read_b64_tr_b8 v[68:69], v65 offset:1536                // 00000000F8FC: D9C40600 44000041
	ds_read_b64_tr_b8 v[70:71], v65 offset:2560                // 00000000F904: D9C40A00 46000041
	ds_read_b64_tr_b8 v[72:73], v65 offset:3584                // 00000000F90C: D9C40E00 48000041
	s_waitcnt lgkmcnt(0)                                       // 00000000F914: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[66:73], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000F918: D3AC0000 000369AA D3AE0810 0442C142
	ds_read_b64_tr_b8 v[74:75], v65 offset:768                 // 00000000F928: D9C40300 4A000041
	ds_read_b64_tr_b8 v[76:77], v65 offset:1792                // 00000000F930: D9C40700 4C000041
	ds_read_b64_tr_b8 v[78:79], v65 offset:2816                // 00000000F938: D9C40B00 4E000041
	ds_read_b64_tr_b8 v[80:81], v65 offset:3840                // 00000000F940: D9C40F00 50000041
	s_waitcnt lgkmcnt(0)                                       // 00000000F948: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[74:81], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000F94C: D3AC0000 000369AA D3AE0800 0402C14A
	s_waitcnt vmcnt(6)                                         // 00000000F95C: BF8C0F76
	s_barrier                                                  // 00000000F960: BF8A0000
	s_mov_b32 s80, s28                                         // 00000000F964: BED0001C
	s_and_b64 s[22:23], s[22:23], exec                         // 00000000F968: 86967E16
	s_cbranch_scc1 214                                         // 00000000F96C: BF8500D6 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x50c8>
	s_branch 466                                               // 00000000F970: BF8201D2 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x54bc>
	s_mov_b64 s[22:23], -1                                     // 00000000F974: BE9601C1
	s_mov_b32 s75, 1                                           // 00000000F978: BECB0081
	s_mov_b64 s[24:25], 0                                      // 00000000F97C: BE980180
	s_add_u32 s26, s73, s80                                    // 00000000F980: 801A5049
	s_and_b32 s28, s26, 3                                      // 00000000F984: 861C831A
	s_and_b64 s[18:19], s[22:23], exec                         // 00000000F988: 86927E16
	s_mov_b64 s[20:21], s[10:11]                               // 00000000F98C: BE94010A
	s_mov_b64 s[18:19], s[14:15]                               // 00000000F990: BE92010E
	s_mov_b32 s17, s3                                          // 00000000F994: BE910003
	s_cbranch_scc0 130                                         // 00000000F998: BF840082 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4fa4>
	s_waitcnt lgkmcnt(0)                                       // 00000000F99C: BF8CC07F
	s_mov_b32 s18, s58                                         // 00000000F9A0: BE92003A
	s_mov_b32 s19, s16                                         // 00000000F9A4: BE930010
	s_lshl_b64 s[18:19], s[18:19], 7                           // 00000000F9A8: 8E928712
	s_add_u32 s60, s38, s56                                    // 00000000F9AC: 803C3826
	s_addc_u32 s61, s39, s57                                   // 00000000F9B0: 823D3927
	s_add_u32 s64, s40, s18                                    // 00000000F9B4: 80401228
	s_addc_u32 s65, s41, s19                                   // 00000000F9B8: 82411329
	s_not_b32 s17, s52                                         // 00000000F9BC: BE910434
	s_add_u32 s17, s50, s17                                    // 00000000F9C0: 80111132
	s_and_b64 s[18:19], s[24:25], exec                         // 00000000F9C4: 86927E18
	s_cselect_b32 s17, s17, s52                                // 00000000F9C8: 85113411
	s_lshl_b32 s18, s17, 5                                     // 00000000F9CC: 8E128511
	s_add_u32 s18, s18, 32                                     // 00000000F9D0: 8012A012
	s_mul_i32 s18, s18, s51                                    // 00000000F9D4: 92123312
	s_add_u32 s18, s18, 32                                     // 00000000F9D8: 8012A012
	s_lshr_b32 s18, s18, 6                                     // 00000000F9DC: 8F128612
	s_min_u32 s73, s12, s18                                    // 00000000F9E0: 83C9120C
	s_and_b64 s[18:19], s[0:1], exec                           // 00000000F9E4: 86927E00
	s_cbranch_scc0 69                                          // 00000000F9E8: BF840045 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4f00>
	s_lshr_b32 s18, s28, 1                                     // 00000000F9EC: 8F12811C
	s_lshl_b32 s19, s18, 15                                    // 00000000F9F0: 8E138F12
	s_bitcmp1_b32 s26, 0                                       // 00000000F9F4: BF0D801A
	s_cselect_b32 s20, 0x4000, 0                               // 00000000F9F8: 851480FF 00004000
	s_cselect_b32 s21, s83, 0x10000                            // 00000000FA00: 8515FF53 00010000
	s_or_b32 s19, s19, s20                                     // 00000000FA08: 87131413
	s_or_b32 s19, s19, s33                                     // 00000000FA0C: 87132113
	s_mov_b32 m0, s19                                          // 00000000FA10: BEFC0013
	s_lshl_b32 s18, s18, 14                                    // 00000000FA14: 8E128E12
	buffer_load_dwordx4 v164, s[60:63], 0 offen lds            // 00000000FA18: E05D1000 800F00A4
	s_add_u32 m0, s19, 0x1000                                  // 00000000FA20: 807CFF13 00001000
	s_or_b32 s18, s18, s21                                     // 00000000FA28: 87121512
	buffer_load_dwordx4 v164, s[60:63], s87 offen lds          // 00000000FA2C: E05D1000 570F00A4
	s_or_b32 m0, s19, 0x2000                                   // 00000000FA34: 877CFF13 00002000
	s_or_b32 s18, s18, s33                                     // 00000000FA3C: 87122112
	buffer_load_dwordx4 v164, s[60:63], s48 offen lds          // 00000000FA40: E05D1000 300F00A4
	s_add_u32 m0, s19, 0x3000                                  // 00000000FA48: 807CFF13 00003000
	s_mul_i32 s19, s6, 48                                      // 00000000FA50: 9213B006
	s_mov_b32 s67, s63                                         // 00000000FA54: BEC3003F
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000FA58: E05D1000 130F00A4
	s_mov_b32 m0, s18                                          // 00000000FA60: BEFC0012
	s_nop 0                                                    // 00000000FA64: BF800000
	buffer_load_dwordx4 v166, s[64:67], 0 offen lds            // 00000000FA68: E05D1000 801000A6
	s_add_u32 m0, s18, 0x1000                                  // 00000000FA70: 807CFF12 00001000
	s_cmp_lt_u32 s73, 2                                        // 00000000FA78: BF0A8249
	buffer_load_dwordx4 v166, s[64:67], s74 offen lds          // 00000000FA7C: E05D1000 4A1000A6
	s_cbranch_scc1 30                                          // 00000000FA84: BF85001E <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x4f00>
	s_add_u32 s18, s28, 1                                      // 00000000FA88: 8012811C
	s_and_b32 s19, s18, 2                                      // 00000000FA8C: 86138212
	s_lshl_b32 s19, s19, 14                                    // 00000000FA90: 8E138E13
	s_bitcmp1_b32 s18, 0                                       // 00000000FA94: BF0D8012
	s_cselect_b32 s18, 0x4000, 0                               // 00000000FA98: 851280FF 00004000
	s_or_b32 s18, s19, s18                                     // 00000000FAA0: 87121213
	s_or_b32 s18, s18, s33                                     // 00000000FAA4: 87122112
	s_mov_b32 m0, s18                                          // 00000000FAA8: BEFC0012
	s_mul_i32 s19, s6, 0x50                                    // 00000000FAAC: 9213FF06 00000050
	buffer_load_dwordx4 v164, s[60:63], s9 offen lds           // 00000000FAB4: E05D1000 090F00A4
	s_add_u32 m0, s18, 0x1000                                  // 00000000FABC: 807CFF12 00001000
	s_nop 0                                                    // 00000000FAC4: BF800000
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000FAC8: E05D1000 130F00A4
	s_or_b32 m0, s18, 0x2000                                   // 00000000FAD0: 877CFF12 00002000
	s_mul_i32 s19, s6, 0x60                                    // 00000000FAD8: 9213FF06 00000060
	buffer_load_dwordx4 v164, s[60:63], s19 offen lds          // 00000000FAE0: E05D1000 130F00A4
	s_add_u32 m0, s18, 0x3000                                  // 00000000FAE8: 807CFF12 00003000
	s_mul_i32 s18, s6, 0x70                                    // 00000000FAF0: 9212FF06 00000070
	buffer_load_dwordx4 v164, s[60:63], s18 offen lds          // 00000000FAF8: E05D1000 120F00A4
	s_mov_b32 s18, s59                                         // 00000000FB00: BE92003B
	s_mov_b32 s19, s16                                         // 00000000FB04: BE930010
	s_lshl_b64 s[18:19], s[18:19], 8                           // 00000000FB08: 8E928812
	s_add_u32 s26, s36, s54                                    // 00000000FB0C: 801A3624
	s_addc_u32 s27, s37, s55                                   // 00000000FB10: 821B3725
	s_mov_b32 s24, s53                                         // 00000000FB14: BE980035
	s_mov_b32 s25, s16                                         // 00000000FB18: BE990010
	s_add_u32 s20, s42, s18                                    // 00000000FB1C: 8014122A
	s_addc_u32 s21, s43, s19                                   // 00000000FB20: 8215132B
	s_lshl_b64 s[18:19], s[24:25], 2                           // 00000000FB24: 8E928218
	s_add_u32 s24, s44, s18                                    // 00000000FB28: 8018122C
	s_addc_u32 s25, s45, s19                                   // 00000000FB2C: 8219132D
	s_mul_i32 s17, s17, s51                                    // 00000000FB30: 92113311
	s_and_b64 s[18:19], exec, s[34:35]                         // 00000000FB34: 8692227E
	s_cselect_b32 s19, 0, s25                                  // 00000000FB38: 85131980
	s_cselect_b32 s18, 0, s24                                  // 00000000FB3C: 85121880
	s_add_u32 s24, s17, s72                                    // 00000000FB40: 80184811
	s_lshl_b32 s17, s24, 5                                     // 00000000FB44: 8E118518
	v_or_b32_e32 v64, s17, v146                                // 00000000FB48: 28812411
	s_bfe_u32 s76, s24, 0x1a0001                               // 00000000FB4C: 92CCFF18 001A0001
	v_mul_lo_u32 v64, s5, v64                                  // 00000000FB54: D2850040 00028005
	v_add_u32_e32 v64, v167, v64                               // 00000000FB5C: 688081A7
	global_load_dwordx4 v[182:185], v64, s[26:27]              // 00000000FB60: DC5C8000 B61A0040
	global_load_dwordx4 v[186:189], v64, s[26:27] offset:16    // 00000000FB68: DC5C8010 BA1A0040
	global_load_dwordx4 v[190:193], v64, s[26:27] offset:64    // 00000000FB70: DC5C8040 BE1A0040
	global_load_dwordx4 v[194:197], v64, s[26:27] offset:80    // 00000000FB78: DC5C8050 C21A0040
	global_load_dwordx4 v[198:201], v64, s[26:27] offset:128   // 00000000FB80: DC5C8080 C61A0040
	global_load_dwordx4 v[202:205], v64, s[26:27] offset:144   // 00000000FB88: DC5C8090 CA1A0040
	s_mov_b32 s67, 0x110000                                    // 00000000FB90: BEC300FF 00110000
	s_mov_b32 s78, s52                                         // 00000000FB98: BECE0034
	s_mov_b32 s79, 0x110000                                    // 00000000FB9C: BECF00FF 00110000
	s_setprio 1                                                // 00000000FBA4: BF8F0001
	v_mfma_f32_16x16x128_f8f6f4 v[64:67], v[126:133], v[96:103], 0// 00000000FBA8: D3AD0040 0202C17E
	s_add_u32 s24, s77, s80                                    // 00000000FBB0: 8018504D
	s_and_b32 s25, s24, 2                                      // 00000000FBB4: 86198218
	s_lshl_b32 s25, s25, 13                                    // 00000000FBB8: 8E198D19
	s_bitcmp1_b32 s24, 0                                       // 00000000FBBC: BF0D8018
	s_cselect_b32 s24, s83, 0x10000                            // 00000000FBC0: 8518FF53 00010000
	s_or_b32 s25, s25, s24                                     // 00000000FBC8: 87191819
	s_nop 5                                                    // 00000000FBCC: BF800005
	v_or_b32_e32 v65, s25, v173                                // 00000000FBD0: 28835A19
	v_add_u32_e32 v65, v65, v172                               // 00000000FBD4: 68835941
	s_waitcnt vmcnt(6)                                         // 00000000FBD8: BF8C0F76
	ds_read_b64_tr_b8 v[66:67], v65                            // 00000000FBDC: D9C40000 42000041
	ds_read_b64_tr_b8 v[68:69], v65 offset:1024                // 00000000FBE4: D9C40400 44000041
	ds_read_b64_tr_b8 v[70:71], v65 offset:2048                // 00000000FBEC: D9C40800 46000041
	ds_read_b64_tr_b8 v[72:73], v65 offset:3072                // 00000000FBF4: D9C40C00 48000041
	ds_read_b64_tr_b8 v[74:75], v65 offset:256                 // 00000000FBFC: D9C40100 4A000041
	ds_read_b64_tr_b8 v[76:77], v65 offset:1280                // 00000000FC04: D9C40500 4C000041
	ds_read_b64_tr_b8 v[78:79], v65 offset:2304                // 00000000FC0C: D9C40900 4E000041
	ds_read_b64_tr_b8 v[80:81], v65 offset:3328                // 00000000FC14: D9C40D00 50000041
	s_waitcnt lgkmcnt(0)                                       // 00000000FC1C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[48:63], v[66:73], v[96:103], v[48:63], v170, v180 op_sel_hi:[0,0,0]// 00000000FC20: D3AC0000 000369AA D3AE0830 04C2C142
	v_lshlrev_b32_e32 v66, 23, v180                            // 00000000FC30: 24856897
	v_fma_f32 v179, v64, v66, v179                             // 00000000FC34: D1CB00B3 06CE8540
	v_mfma_scale_f32_32x32x64_f8f6f4 v[32:47], v[74:81], v[96:103], v[32:47], v170, v180 op_sel_hi:[0,0,0]// 00000000FC3C: D3AC0000 000369AA D3AE0820 0482C14A
	ds_read_b64_tr_b8 v[66:67], v65 offset:512                 // 00000000FC4C: D9C40200 42000041
	ds_read_b64_tr_b8 v[68:69], v65 offset:1536                // 00000000FC54: D9C40600 44000041
	ds_read_b64_tr_b8 v[70:71], v65 offset:2560                // 00000000FC5C: D9C40A00 46000041
	ds_read_b64_tr_b8 v[72:73], v65 offset:3584                // 00000000FC64: D9C40E00 48000041
	s_waitcnt lgkmcnt(0)                                       // 00000000FC6C: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[16:31], v[66:73], v[96:103], v[16:31], v170, v180 op_sel_hi:[0,0,0]// 00000000FC70: D3AC0000 000369AA D3AE0810 0442C142
	ds_read_b64_tr_b8 v[74:75], v65 offset:768                 // 00000000FC80: D9C40300 4A000041
	ds_read_b64_tr_b8 v[76:77], v65 offset:1792                // 00000000FC88: D9C40700 4C000041
	ds_read_b64_tr_b8 v[78:79], v65 offset:2816                // 00000000FC90: D9C40B00 4E000041
	ds_read_b64_tr_b8 v[80:81], v65 offset:3840                // 00000000FC98: D9C40F00 50000041
	s_waitcnt lgkmcnt(0)                                       // 00000000FCA0: BF8CC07F
	v_mfma_scale_f32_32x32x64_f8f6f4 v[0:15], v[74:81], v[96:103], v[0:15], v170, v180 op_sel_hi:[0,0,0]// 00000000FCA4: D3AC0000 000369AA D3AE0800 0402C14A
	s_waitcnt vmcnt(6)                                         // 00000000FCB4: BF8C0F76
	s_barrier                                                  // 00000000FCB8: BF8A0000
	s_mov_b32 s80, s28                                         // 00000000FCBC: BED0001C
	s_and_b64 s[22:23], s[22:23], exec                         // 00000000FCC0: 86967E16
	s_cbranch_scc0 253                                         // 00000000FCC4: BF8400FD <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x54bc>
	s_nop 15                                                   // 00000000FCC8: BF80000F
	s_nop 3                                                    // 00000000FCCC: BF800003
	v_rcp_f32_e32 v64, v179                                    // 00000000FCD0: 7E8045B3
	v_log_f32_e32 v65, v179                                    // 00000000FCD4: 7E8243B3
	s_nop 1                                                    // 00000000FCD8: BF800001
	v_mul_f32_e32 v64, v168, v64                               // 00000000FCDC: 0A8081A8
	v_mul_f32_e32 v48, v48, v64                                // 00000000FCE0: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 00000000FCE4: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 00000000FCE8: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 00000000FCEC: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 00000000FCF0: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 00000000FCF4: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 00000000FCF8: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 00000000FCFC: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 00000000FD00: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 00000000FD04: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 00000000FD08: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 00000000FD0C: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 00000000FD10: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 00000000FD14: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 00000000FD18: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 00000000FD1C: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 00000000FD20: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 00000000FD24: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 00000000FD28: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 00000000FD2C: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 00000000FD30: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 00000000FD34: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 00000000FD38: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 00000000FD3C: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 00000000FD40: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 00000000FD44: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 00000000FD48: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 00000000FD4C: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 00000000FD50: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 00000000FD54: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 00000000FD58: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 00000000FD5C: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 00000000FD60: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 00000000FD64: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 00000000FD68: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 00000000FD6C: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 00000000FD70: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 00000000FD74: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 00000000FD78: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 00000000FD7C: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 00000000FD80: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 00000000FD84: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 00000000FD88: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 00000000FD8C: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 00000000FD90: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 00000000FD94: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 00000000FD98: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 00000000FD9C: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 00000000FDA0: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 00000000FDA4: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 00000000FDA8: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 00000000FDAC: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 00000000FDB0: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 00000000FDB4: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 00000000FDB8: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 00000000FDBC: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 00000000FDC0: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 00000000FDC4: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 00000000FDC8: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 00000000FDCC: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 00000000FDD0: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 00000000FDD4: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 00000000FDD8: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 00000000FDDC: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 00000000FDE0: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 00000000FDE8: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 00000000FDF0: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 00000000FDF8: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 00000000FE00: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 00000000FE08: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 00000000FE10: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000000FE18: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 00000000FE20: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000000FE28: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 00000000FE30: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000000FE38: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 00000000FE40: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000000FE48: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 00000000FE50: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000000FE58: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 00000000FE60: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000000FE68: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 00000000FE70: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000000FE78: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 00000000FE80: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000000FE88: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 00000000FE90: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000000FE98: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 00000000FEA0: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000000FEA8: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 00000000FEB0: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 00000000FEB8: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 00000000FEC0: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 00000000FEC8: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 00000000FED0: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 00000000FED8: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 00000000FEE0: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 00000000FEE4: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 00000000FEE8: 7E000304
	v_mov_b32_e32 v1, v2                                       // 00000000FEEC: 7E020302
	v_permlane32_swap_b32_e32 v8, v9                           // 00000000FEF0: 7E10B509
	v_mov_b32_e32 v2, v5                                       // 00000000FEF4: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 00000000FEF8: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 00000000FEFC: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 00000000FF00: 7E080308
	v_mov_b32_e32 v5, v6                                       // 00000000FF04: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 00000000FF08: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 00000000FF0C: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 00000000FF10: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 00000000FF14: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000000FF18: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 00000000FF1C: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 00000000FF20: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 00000000FF24: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000000FF28: 7E180310
	v_mov_b32_e32 v13, v14                                     // 00000000FF2C: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 00000000FF30: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 00000000FF34: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000000FF38: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 00000000FF3C: 7E200314
	v_mov_b32_e32 v17, v18                                     // 00000000FF40: 7E220312
	v_mov_b32_e32 v18, v21                                     // 00000000FF44: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000000FF48: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 00000000FF4C: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 00000000FF50: 7E280318
	v_mov_b32_e32 v21, v22                                     // 00000000FF54: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000000FF58: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 00000000FF5C: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 00000000FF60: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 00000000FF64: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000000FF68: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 00000000FF6C: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 00000000FF70: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 00000000FF74: 7E380320
	v_mov_b32_e32 v29, v30                                     // 00000000FF78: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 00000000FF7C: 7E3C0321
	ds_write_b128 v158, v[0:3]                                 // 00000000FF80: D9BE0000 0000009E
	ds_write_b128 v160, v[4:7]                                 // 00000000FF88: D9BE0000 000004A0
	ds_write_b128 v159, v[8:11]                                // 00000000FF90: D9BE0000 0000089F
	ds_write_b128 v157, v[12:15]                               // 00000000FF98: D9BE0000 00000C9D
	ds_write_b128 v156, v[16:19]                               // 00000000FFA0: D9BE0000 0000109C
	ds_write_b128 v155, v[20:23]                               // 00000000FFA8: D9BE0000 0000149B
	ds_write_b128 v154, v[24:27]                               // 00000000FFB0: D9BE0000 0000189A
	ds_write_b128 v153, v[28:31]                               // 00000000FFB8: D9BE0000 00001C99
	ds_read_b128 v[8:11], v149                                 // 00000000FFC0: D9FE0000 08000095
	ds_read_b128 v[12:15], v152 offset:1024                    // 00000000FFC8: D9FE0400 0C000098
	ds_read_b128 v[16:19], v151 offset:2048                    // 00000000FFD0: D9FE0800 10000097
	ds_read_b128 v[20:23], v150 offset:3072                    // 00000000FFD8: D9FE0C00 14000096
	ds_read_b128 v[24:27], v149 offset:4096                    // 00000000FFE0: D9FE1000 18000095
	ds_read_b128 v[28:31], v152 offset:5120                    // 00000000FFE8: D9FE1400 1C000098
	ds_read_b128 v[32:35], v151 offset:6144                    // 00000000FFF0: D9FE1800 20000097
	ds_read_b128 v[36:39], v150 offset:7168                    // 00000000FFF8: D9FE1C00 24000096
	v_add_u32_e32 v0, s3, v147                                 // 000000010000: 68012603
	v_mul_lo_u32 v0, s8, v0                                    // 000000010004: D2850000 00020008
	v_add_u32_e32 v0, v0, v148                                 // 00000001000C: 68012900
	v_add_u32_e32 v1, s4, v0                                   // 000000010010: 68020004
	v_add_u32_e32 v2, s4, v1                                   // 000000010014: 68040204
	v_add_u32_e32 v3, s4, v2                                   // 000000010018: 68060404
	v_add_u32_e32 v4, s4, v3                                   // 00000001001C: 68080604
	v_add_u32_e32 v5, s4, v4                                   // 000000010020: 680A0804
	v_add_u32_e32 v6, s4, v5                                   // 000000010024: 680C0A04
	v_add_u32_e32 v7, s4, v6                                   // 000000010028: 680E0C04
	s_waitcnt lgkmcnt(0)                                       // 00000001002C: BF8CC07F
	global_store_dwordx4 v0, v[8:11], s[10:11]                 // 000000010030: DC7C8000 000A0800
	s_waitcnt lgkmcnt(6)                                       // 000000010038: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[10:11]                // 00000001003C: DC7C8000 000A0C01
	s_waitcnt lgkmcnt(5)                                       // 000000010044: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[10:11]                // 000000010048: DC7C8000 000A1002
	s_waitcnt lgkmcnt(4)                                       // 000000010050: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[10:11]                // 000000010054: DC7C8000 000A1403
	s_waitcnt lgkmcnt(3)                                       // 00000001005C: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[10:11]                // 000000010060: DC7C8000 000A1804
	s_waitcnt lgkmcnt(2)                                       // 000000010068: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[10:11]                // 00000001006C: DC7C8000 000A1C05
	s_waitcnt lgkmcnt(1)                                       // 000000010074: BF8CC17F
	global_store_dwordx4 v6, v[32:35], s[10:11]                // 000000010078: DC7C8000 000A2006
	s_waitcnt lgkmcnt(0)                                       // 000000010080: BF8CC07F
	global_store_dwordx4 v7, v[36:39], s[10:11]                // 000000010084: DC7C8000 000A2407
	v_add_f32_e32 v0, v178, v65                                // 00000001008C: 020083B2
	v_add_f32_e32 v0, -4.0, v0                                 // 000000010090: 020000F7
	v_add_f32_e32 v0, -2.0, v0                                 // 000000010094: 020000F5
	v_mul_f32_e32 v0, 0x3f317218, v0                           // 000000010098: 0A0000FF 3F317218
	v_add_u32_e32 v1, s3, v146                                 // 0000000100A0: 68032403
	v_lshlrev_b32_e32 v1, 2, v1                                // 0000000100A4: 24020282
	s_cmp_eq_u64 s[14:15], 0                                   // 0000000100A8: BF12800E
	s_mov_b64 s[10:11], s[20:21]                               // 0000000100AC: BE8A0114
	s_mov_b32 s3, s17                                          // 0000000100B0: BE830011
	s_cbranch_scc0 61219                                       // 0000000100B4: BF84EF23 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x1144>
	s_branch 60464                                             // 0000000100B8: BF82EC30 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x57c>
	s_nop 15                                                   // 0000000100BC: BF80000F
	s_nop 3                                                    // 0000000100C0: BF800003
	v_rcp_f32_e32 v64, v179                                    // 0000000100C4: 7E8045B3
	v_log_f32_e32 v65, v179                                    // 0000000100C8: 7E8243B3
	s_nop 1                                                    // 0000000100CC: BF800001
	v_mul_f32_e32 v64, v168, v64                               // 0000000100D0: 0A8081A8
	v_mul_f32_e32 v48, v48, v64                                // 0000000100D4: 0A608130
	v_mul_f32_e32 v49, v49, v64                                // 0000000100D8: 0A628131
	v_mul_f32_e32 v50, v50, v64                                // 0000000100DC: 0A648132
	v_mul_f32_e32 v51, v51, v64                                // 0000000100E0: 0A668133
	v_mul_f32_e32 v52, v52, v64                                // 0000000100E4: 0A688134
	v_mul_f32_e32 v53, v53, v64                                // 0000000100E8: 0A6A8135
	v_mul_f32_e32 v54, v54, v64                                // 0000000100EC: 0A6C8136
	v_mul_f32_e32 v55, v55, v64                                // 0000000100F0: 0A6E8137
	v_mul_f32_e32 v56, v56, v64                                // 0000000100F4: 0A708138
	v_mul_f32_e32 v57, v57, v64                                // 0000000100F8: 0A728139
	v_mul_f32_e32 v58, v58, v64                                // 0000000100FC: 0A74813A
	v_mul_f32_e32 v59, v59, v64                                // 000000010100: 0A76813B
	v_mul_f32_e32 v60, v60, v64                                // 000000010104: 0A78813C
	v_mul_f32_e32 v61, v61, v64                                // 000000010108: 0A7A813D
	v_mul_f32_e32 v62, v62, v64                                // 00000001010C: 0A7C813E
	v_mul_f32_e32 v63, v63, v64                                // 000000010110: 0A7E813F
	v_mul_f32_e32 v32, v32, v64                                // 000000010114: 0A408120
	v_mul_f32_e32 v33, v33, v64                                // 000000010118: 0A428121
	v_mul_f32_e32 v34, v34, v64                                // 00000001011C: 0A448122
	v_mul_f32_e32 v35, v35, v64                                // 000000010120: 0A468123
	v_mul_f32_e32 v36, v36, v64                                // 000000010124: 0A488124
	v_mul_f32_e32 v37, v37, v64                                // 000000010128: 0A4A8125
	v_mul_f32_e32 v38, v38, v64                                // 00000001012C: 0A4C8126
	v_mul_f32_e32 v39, v39, v64                                // 000000010130: 0A4E8127
	v_mul_f32_e32 v40, v40, v64                                // 000000010134: 0A508128
	v_mul_f32_e32 v41, v41, v64                                // 000000010138: 0A528129
	v_mul_f32_e32 v42, v42, v64                                // 00000001013C: 0A54812A
	v_mul_f32_e32 v43, v43, v64                                // 000000010140: 0A56812B
	v_mul_f32_e32 v44, v44, v64                                // 000000010144: 0A58812C
	v_mul_f32_e32 v45, v45, v64                                // 000000010148: 0A5A812D
	v_mul_f32_e32 v46, v46, v64                                // 00000001014C: 0A5C812E
	v_mul_f32_e32 v47, v47, v64                                // 000000010150: 0A5E812F
	v_mul_f32_e32 v66, v16, v64                                // 000000010154: 0A848110
	v_mul_f32_e32 v67, v17, v64                                // 000000010158: 0A868111
	v_mul_f32_e32 v18, v18, v64                                // 00000001015C: 0A248112
	v_mul_f32_e32 v19, v19, v64                                // 000000010160: 0A268113
	v_mul_f32_e32 v68, v20, v64                                // 000000010164: 0A888114
	v_mul_f32_e32 v21, v21, v64                                // 000000010168: 0A2A8115
	v_mul_f32_e32 v22, v22, v64                                // 00000001016C: 0A2C8116
	v_mul_f32_e32 v23, v23, v64                                // 000000010170: 0A2E8117
	v_mul_f32_e32 v24, v24, v64                                // 000000010174: 0A308118
	v_mul_f32_e32 v25, v25, v64                                // 000000010178: 0A328119
	v_mul_f32_e32 v26, v26, v64                                // 00000001017C: 0A34811A
	v_mul_f32_e32 v27, v27, v64                                // 000000010180: 0A36811B
	v_mul_f32_e32 v28, v28, v64                                // 000000010184: 0A38811C
	v_mul_f32_e32 v29, v29, v64                                // 000000010188: 0A3A811D
	v_mul_f32_e32 v30, v30, v64                                // 00000001018C: 0A3C811E
	v_mul_f32_e32 v31, v31, v64                                // 000000010190: 0A3E811F
	v_mul_f32_e32 v0, v0, v64                                  // 000000010194: 0A008100
	v_mul_f32_e32 v1, v1, v64                                  // 000000010198: 0A028101
	v_mul_f32_e32 v69, v2, v64                                 // 00000001019C: 0A8A8102
	v_mul_f32_e32 v70, v3, v64                                 // 0000000101A0: 0A8C8103
	v_mul_f32_e32 v71, v4, v64                                 // 0000000101A4: 0A8E8104
	v_mul_f32_e32 v72, v5, v64                                 // 0000000101A8: 0A908105
	v_mul_f32_e32 v73, v6, v64                                 // 0000000101AC: 0A928106
	v_mul_f32_e32 v74, v7, v64                                 // 0000000101B0: 0A948107
	v_mul_f32_e32 v75, v8, v64                                 // 0000000101B4: 0A968108
	v_mul_f32_e32 v76, v9, v64                                 // 0000000101B8: 0A988109
	v_mul_f32_e32 v77, v10, v64                                // 0000000101BC: 0A9A810A
	v_mul_f32_e32 v78, v11, v64                                // 0000000101C0: 0A9C810B
	v_mul_f32_e32 v79, v12, v64                                // 0000000101C4: 0A9E810C
	v_mul_f32_e32 v80, v13, v64                                // 0000000101C8: 0AA0810D
	v_mul_f32_e32 v81, v14, v64                                // 0000000101CC: 0AA2810E
	v_mul_f32_e32 v64, v15, v64                                // 0000000101D0: 0A80810F
	v_cvt_pk_bf16_f32 v4, v48, v49                             // 0000000101D4: D2680004 00026330
	v_cvt_pk_bf16_f32 v2, v50, v51                             // 0000000101DC: D2680002 00026732
	v_cvt_pk_bf16_f32 v5, v52, v53                             // 0000000101E4: D2680005 00026B34
	v_cvt_pk_bf16_f32 v3, v54, v55                             // 0000000101EC: D2680003 00026F36
	v_cvt_pk_bf16_f32 v8, v56, v57                             // 0000000101F4: D2680008 00027338
	v_cvt_pk_bf16_f32 v6, v58, v59                             // 0000000101FC: D2680006 0002773A
	v_cvt_pk_bf16_f32 v9, v60, v61                             // 000000010204: D2680009 00027B3C
	v_cvt_pk_bf16_f32 v7, v62, v63                             // 00000001020C: D2680007 00027F3E
	v_cvt_pk_bf16_f32 v12, v32, v33                            // 000000010214: D268000C 00024320
	v_cvt_pk_bf16_f32 v10, v34, v35                            // 00000001021C: D268000A 00024722
	v_cvt_pk_bf16_f32 v13, v36, v37                            // 000000010224: D268000D 00024B24
	v_cvt_pk_bf16_f32 v11, v38, v39                            // 00000001022C: D268000B 00024F26
	v_cvt_pk_bf16_f32 v16, v40, v41                            // 000000010234: D2680010 00025328
	v_cvt_pk_bf16_f32 v14, v42, v43                            // 00000001023C: D268000E 0002572A
	v_cvt_pk_bf16_f32 v17, v44, v45                            // 000000010244: D2680011 00025B2C
	v_cvt_pk_bf16_f32 v15, v46, v47                            // 00000001024C: D268000F 00025F2E
	v_cvt_pk_bf16_f32 v20, v66, v67                            // 000000010254: D2680014 00028742
	v_cvt_pk_bf16_f32 v18, v18, v19                            // 00000001025C: D2680012 00022712
	v_cvt_pk_bf16_f32 v21, v68, v21                            // 000000010264: D2680015 00022B44
	v_cvt_pk_bf16_f32 v19, v22, v23                            // 00000001026C: D2680013 00022F16
	v_cvt_pk_bf16_f32 v24, v24, v25                            // 000000010274: D2680018 00023318
	v_cvt_pk_bf16_f32 v22, v26, v27                            // 00000001027C: D2680016 0002371A
	v_cvt_pk_bf16_f32 v25, v28, v29                            // 000000010284: D2680019 00023B1C
	v_cvt_pk_bf16_f32 v23, v30, v31                            // 00000001028C: D2680017 00023F1E
	v_cvt_pk_bf16_f32 v28, v0, v1                              // 000000010294: D268001C 00020300
	v_cvt_pk_bf16_f32 v26, v69, v70                            // 00000001029C: D268001A 00028D45
	v_cvt_pk_bf16_f32 v29, v71, v72                            // 0000000102A4: D268001D 00029147
	v_cvt_pk_bf16_f32 v27, v73, v74                            // 0000000102AC: D268001B 00029549
	v_cvt_pk_bf16_f32 v32, v75, v76                            // 0000000102B4: D2680020 0002994B
	v_cvt_pk_bf16_f32 v30, v77, v78                            // 0000000102BC: D268001E 00029D4D
	v_cvt_pk_bf16_f32 v33, v79, v80                            // 0000000102C4: D2680021 0002A14F
	v_cvt_pk_bf16_f32 v31, v81, v64                            // 0000000102CC: D268001F 00028151
	v_permlane32_swap_b32_e32 v4, v5                           // 0000000102D4: 7E08B505
	v_permlane32_swap_b32_e32 v2, v3                           // 0000000102D8: 7E04B503
	v_mov_b32_e32 v0, v4                                       // 0000000102DC: 7E000304
	v_mov_b32_e32 v1, v2                                       // 0000000102E0: 7E020302
	v_permlane32_swap_b32_e32 v8, v9                           // 0000000102E4: 7E10B509
	v_mov_b32_e32 v2, v5                                       // 0000000102E8: 7E040305
	v_permlane32_swap_b32_e32 v6, v7                           // 0000000102EC: 7E0CB507
	v_permlane32_swap_b32_e32 v12, v13                         // 0000000102F0: 7E18B50D
	v_mov_b32_e32 v4, v8                                       // 0000000102F4: 7E080308
	v_mov_b32_e32 v5, v6                                       // 0000000102F8: 7E0A0306
	v_mov_b32_e32 v6, v9                                       // 0000000102FC: 7E0C0309
	v_permlane32_swap_b32_e32 v10, v11                         // 000000010300: 7E14B50B
	v_permlane32_swap_b32_e32 v16, v17                         // 000000010304: 7E20B511
	v_mov_b32_e32 v8, v12                                      // 000000010308: 7E10030C
	v_mov_b32_e32 v9, v10                                      // 00000001030C: 7E12030A
	v_mov_b32_e32 v10, v13                                     // 000000010310: 7E14030D
	v_permlane32_swap_b32_e32 v14, v15                         // 000000010314: 7E1CB50F
	v_permlane32_swap_b32_e32 v20, v21                         // 000000010318: 7E28B515
	v_mov_b32_e32 v12, v16                                     // 00000001031C: 7E180310
	v_mov_b32_e32 v13, v14                                     // 000000010320: 7E1A030E
	v_mov_b32_e32 v14, v17                                     // 000000010324: 7E1C0311
	v_permlane32_swap_b32_e32 v18, v19                         // 000000010328: 7E24B513
	v_permlane32_swap_b32_e32 v24, v25                         // 00000001032C: 7E30B519
	v_mov_b32_e32 v16, v20                                     // 000000010330: 7E200314
	v_mov_b32_e32 v17, v18                                     // 000000010334: 7E220312
	v_mov_b32_e32 v18, v21                                     // 000000010338: 7E240315
	v_permlane32_swap_b32_e32 v22, v23                         // 00000001033C: 7E2CB517
	v_permlane32_swap_b32_e32 v28, v29                         // 000000010340: 7E38B51D
	v_mov_b32_e32 v20, v24                                     // 000000010344: 7E280318
	v_mov_b32_e32 v21, v22                                     // 000000010348: 7E2A0316
	v_mov_b32_e32 v22, v25                                     // 00000001034C: 7E2C0319
	v_permlane32_swap_b32_e32 v26, v27                         // 000000010350: 7E34B51B
	v_permlane32_swap_b32_e32 v32, v33                         // 000000010354: 7E40B521
	v_mov_b32_e32 v24, v28                                     // 000000010358: 7E30031C
	v_mov_b32_e32 v25, v26                                     // 00000001035C: 7E32031A
	v_mov_b32_e32 v26, v29                                     // 000000010360: 7E34031D
	v_permlane32_swap_b32_e32 v30, v31                         // 000000010364: 7E3CB51F
	v_mov_b32_e32 v28, v32                                     // 000000010368: 7E380320
	v_mov_b32_e32 v29, v30                                     // 00000001036C: 7E3A031E
	v_mov_b32_e32 v30, v33                                     // 000000010370: 7E3C0321
	ds_write_b128 v158, v[0:3]                                 // 000000010374: D9BE0000 0000009E
	ds_write_b128 v160, v[4:7]                                 // 00000001037C: D9BE0000 000004A0
	ds_write_b128 v159, v[8:11]                                // 000000010384: D9BE0000 0000089F
	ds_write_b128 v157, v[12:15]                               // 00000001038C: D9BE0000 00000C9D
	ds_write_b128 v156, v[16:19]                               // 000000010394: D9BE0000 0000109C
	ds_write_b128 v155, v[20:23]                               // 00000001039C: D9BE0000 0000149B
	ds_write_b128 v154, v[24:27]                               // 0000000103A4: D9BE0000 0000189A
	ds_write_b128 v153, v[28:31]                               // 0000000103AC: D9BE0000 00001C99
	ds_read_b128 v[8:11], v149                                 // 0000000103B4: D9FE0000 08000095
	ds_read_b128 v[12:15], v152 offset:1024                    // 0000000103BC: D9FE0400 0C000098
	ds_read_b128 v[16:19], v151 offset:2048                    // 0000000103C4: D9FE0800 10000097
	ds_read_b128 v[20:23], v150 offset:3072                    // 0000000103CC: D9FE0C00 14000096
	ds_read_b128 v[24:27], v149 offset:4096                    // 0000000103D4: D9FE1000 18000095
	ds_read_b128 v[28:31], v152 offset:5120                    // 0000000103DC: D9FE1400 1C000098
	ds_read_b128 v[32:35], v151 offset:6144                    // 0000000103E4: D9FE1800 20000097
	ds_read_b128 v[36:39], v150 offset:7168                    // 0000000103EC: D9FE1C00 24000096
	v_add_u32_e32 v0, s3, v147                                 // 0000000103F4: 68012603
	v_mul_lo_u32 v0, s8, v0                                    // 0000000103F8: D2850000 00020008
	v_add_u32_e32 v0, v0, v148                                 // 000000010400: 68012900
	v_add_u32_e32 v1, s4, v0                                   // 000000010404: 68020004
	v_add_u32_e32 v2, s4, v1                                   // 000000010408: 68040204
	v_add_u32_e32 v3, s4, v2                                   // 00000001040C: 68060404
	v_add_u32_e32 v4, s4, v3                                   // 000000010410: 68080604
	v_add_u32_e32 v5, s4, v4                                   // 000000010414: 680A0804
	v_add_u32_e32 v6, s4, v5                                   // 000000010418: 680C0A04
	v_add_u32_e32 v7, s4, v6                                   // 00000001041C: 680E0C04
	s_waitcnt lgkmcnt(0)                                       // 000000010420: BF8CC07F
	global_store_dwordx4 v0, v[8:11], s[10:11]                 // 000000010424: DC7C8000 000A0800
	s_waitcnt lgkmcnt(6)                                       // 00000001042C: BF8CC67F
	global_store_dwordx4 v1, v[12:15], s[10:11]                // 000000010430: DC7C8000 000A0C01
	s_waitcnt lgkmcnt(5)                                       // 000000010438: BF8CC57F
	global_store_dwordx4 v2, v[16:19], s[10:11]                // 00000001043C: DC7C8000 000A1002
	s_waitcnt lgkmcnt(4)                                       // 000000010444: BF8CC47F
	global_store_dwordx4 v3, v[20:23], s[10:11]                // 000000010448: DC7C8000 000A1403
	s_waitcnt lgkmcnt(3)                                       // 000000010450: BF8CC37F
	global_store_dwordx4 v4, v[24:27], s[10:11]                // 000000010454: DC7C8000 000A1804
	s_waitcnt lgkmcnt(2)                                       // 00000001045C: BF8CC27F
	global_store_dwordx4 v5, v[28:31], s[10:11]                // 000000010460: DC7C8000 000A1C05
	s_waitcnt lgkmcnt(1)                                       // 000000010468: BF8CC17F
	global_store_dwordx4 v6, v[32:35], s[10:11]                // 00000001046C: DC7C8000 000A2006
	s_waitcnt lgkmcnt(0)                                       // 000000010474: BF8CC07F
	global_store_dwordx4 v7, v[36:39], s[10:11]                // 000000010478: DC7C8000 000A2407
	v_add_f32_e32 v0, v178, v65                                // 000000010480: 020083B2
	v_add_f32_e32 v0, -4.0, v0                                 // 000000010484: 020000F7
	v_add_f32_e32 v0, -2.0, v0                                 // 000000010488: 020000F5
	v_mul_f32_e32 v0, 0x3f317218, v0                           // 00000001048C: 0A0000FF 3F317218
	v_add_u32_e32 v1, s3, v146                                 // 000000010494: 68032403
	v_lshlrev_b32_e32 v1, 2, v1                                // 000000010498: 24020282
	s_cmp_eq_u64 s[14:15], 0                                   // 00000001049C: BF12800E
	s_cbranch_scc1 2                                           // 0000000104A0: BF850002 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x58ac>
	global_store_dword v1, v0, s[14:15]                        // 0000000104A4: DC708000 000E0001
	s_and_b64 s[0:1], s[0:1], exec                             // 0000000104AC: 86807E00
	s_cbranch_scc0 1                                           // 0000000104B0: BF840001 <_ZN15fmha_fp8_native6attendILi192EEEvNSt11conditionalIXeqT_Li128EENS_7Args128ENS_7Args192EE4typeE+0x58b8>
	s_barrier                                                  // 0000000104B4: BF8A0000
	s_waitcnt vmcnt(0)                                         // 0000000104B8: BF8C0F70
	s_endpgm                                                   // 0000000104BC: BF810000
