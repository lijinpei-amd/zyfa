from collections import Counter

from benchmarks.compare_isa import compare, excluded_reason, parse_disassembly, steady_loop


SAMPLE = """
0000000000001000 <kernel>:
    v_mov_b32_e32 v1, v2                 // 000000001000: 7E020302
    v_mfma_f32_16x16x128_f8f6f4 v[4:7], v[8:15], v[16:23], 0 // 000000001004: D3AD0004 02002108
    s_add_u32 s1, s1, 1                 // 00000000100C: 80018101
    s_cbranch_scc1 65531                // 000000001010: BF85FFFB <kernel>
    s_endpgm                            // 000000001014: BF810000
"""


def test_parse_and_extract_encoded_backward_loop():
    functions = parse_disassembly(SAMPLE)
    assert list(functions) == ["kernel"]
    body = steady_loop(functions["kernel"], 1)
    assert [i.mnemonic for i in body] == ["v_mov_b32_e32", "v_mfma_f32_16x16x128_f8f6f4",
                                          "s_add_u32", "s_cbranch_scc1"]
    assert body[-1].branch_target == 0x1000


def test_register_moves_are_excluded_but_literals_and_lane_operations_remain():
    code = SAMPLE.replace("v_mov_b32_e32 v1, v2", "v_mov_b32_e32 v1, 0")
    copied = parse_disassembly(SAMPLE)["kernel"][0]
    initialized = parse_disassembly(code)["kernel"][0]
    assert excluded_reason(copied) == "register_copy"
    assert excluded_reason(initialized) is None
    for op in ["v_permlane32_swap_b32_e32 v1, v2", "v_readfirstlane_b32 s1, v2"]:
        instruction = parse_disassembly(SAMPLE.replace("v_mov_b32_e32 v1, v2", op))["kernel"][0]
        assert excluded_reason(instruction) is None


def test_spills_are_excluded_but_lds_and_global_memory_operations_remain():
    for op, expected in [("scratch_store_dword off, v2, off", "scratch"),
                         ("scratch_load_dword v2, off, off", "scratch"),
                         ("ds_read_b128 v[4:7], v2", None),
                         ("global_load_dword v2, v[4:5], off", None)]:
        instruction = parse_disassembly(SAMPLE.replace("v_mov_b32_e32 v1, v2", op))["kernel"][0]
        assert excluded_reason(instruction) == expected


def test_sequence_difference_is_detected_when_mnemonic_counts_match():
    reference = parse_disassembly(SAMPLE)["kernel"]
    swapped = reference[:1] + [reference[2], reference[1]] + reference[3:]
    result = compare(reference, swapped)
    assert result["counts_match"]
    assert not result["sequence_match"]
    assert result["first_mismatch"]["index"] == 0
    assert result["first_mismatch"]["reference"]["mnemonic"] == "v_mfma_f32_16x16x128_f8f6f4"
    assert result["first_mismatch"]["llvm"]["mnemonic"] == "s_add_u32"


def test_only_spill_and_copy_differences_pass():
    reference = parse_disassembly(SAMPLE)["kernel"]
    without_copy = reference[1:]
    result = compare(reference, without_copy)
    assert result["counts_match"] and result["sequence_match"]
    assert result["reference_counts"] == dict(Counter({"v_mfma_f32_16x16x128_f8f6f4": 1,
                                                      "s_add_u32": 1, "s_cbranch_scc1": 1, "s_endpgm": 1}))


def test_added_wait_or_nop_fails_the_count_contract():
    reference = parse_disassembly(SAMPLE)["kernel"]
    for op in ["s_waitcnt vmcnt(0)", "s_nop 0"]:
        extra = parse_disassembly(SAMPLE.replace("v_mov_b32_e32 v1, v2", op))["kernel"][0]
        result = compare(reference, [extra, *reference])
        assert not result["counts_match"]
        assert result["count_differences"][extra.mnemonic] == {"reference": 0, "llvm": 1, "delta": 1}


def test_loop_includes_all_backedge_paths_and_excludes_interleaved_preheader():
    from benchmarks.compare_isa import Instruction

    layout = [(0, "s_branch", 16), (4, "v_mfma_example", None), (8, "s_branch", 32),
              (12, "s_nop", None), (16, "s_add_u32", None), (20, "s_branch", 4),
              (24, "s_endpgm", None), (28, "s_nop", None), (32, "v_mfma_example", None),
              (36, "s_cbranch_scc1", 4), (40, "v_mul_f32_e32", None), (44, "s_branch", 4),
              (48, "s_endpgm", None)]
    code = [Instruction(op, "", address, n + 1, target) for n, (address, op, target) in enumerate(layout)]
    body = steady_loop(code, 2)
    assert [i.address for i in body] == [4, 8, 32, 36, 40, 44]
