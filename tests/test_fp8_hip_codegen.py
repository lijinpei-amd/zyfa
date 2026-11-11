"""Check LLVM's emitted FP8 stage order against the assembly schedule."""

import os
from pathlib import Path
import re
import subprocess

import pytest


ROOT = Path(__file__).resolve().parents[1]
ROCM = Path(os.environ.get("ROCM_PATH", "/opt/rocm"))
LLVM = Path(os.environ["ZYFA_LLVM_ROOT"]) if "ZYFA_LLVM_ROOT" in os.environ else None


def test_hip_host_argument_types_compile():
    if not LLVM:
        pytest.skip("requires ZYFA_LLVM_ROOT for host compilation")
    command = [str(LLVM / "build/bin/clang++"), "-O3", "-std=c++20", "-ffast-math",
               "-fhonor-infinities", "-DKITTENS_CDNA4", "--offload-arch=gfx950",
               "--rocm-path=" + str(ROCM), "--cuda-host-only", "-fsyntax-only",
               str(ROOT / "csrc/fp8_native.hip")]
    result = subprocess.run(command, capture_output=True, text=True)
    assert result.returncode == 0, result.stderr


@pytest.fixture(scope="module")
def native_codegen(tmp_path_factory):
    if not LLVM:
        pytest.skip("requires ZYFA_LLVM_ROOT for the native HIP FP8 compiler")
    if not (ROCM / "bin/hipcc").is_file():
        pytest.skip("requires ROCM_PATH pointing to a gfx950-capable HIP compiler")
    output = tmp_path_factory.mktemp("native_order") / "native.s"
    command = [str(LLVM / "build/bin/clang++") if LLVM else str(ROCM / "bin/hipcc"), "-O3", "-std=c++20", "-ffast-math",
               "-fgpu-flush-denormals-to-zero", "-Wno-nan-infinity-disabled", "-DKITTENS_CDNA4",
               "-fPIC", "-fno-gpu-rdc", "--offload-arch=gfx950", "--cuda-device-only", "-S",
               str(ROOT / "csrc/fp8_native.hip"), "-o", str(output)]
    if LLVM:
        ir = output.with_suffix(".ll")
        command += ["--rocm-path=" + str(ROCM), "-fno-slp-vectorize", "-fhonor-infinities", "-emit-llvm",
                    "-Xclang", "-target-feature", "-Xclang", "-dl-insts",
                    "-Xclang", "-target-feature", "-Xclang", "-vop3-literal",
                    "-Xclang", "-target-feature", "-Xclang", "-bitop3-insts",
                    "-mllvm", "-rotation-max-header-size=0"]
        command[command.index(str(output))] = str(ir)
    result = subprocess.run(command, capture_output=True, text=True)
    assert result.returncode == 0, result.stderr
    if LLVM:
        result = subprocess.run([str(LLVM / "build/bin/llc"), "-O3", "-mattr=-dl-insts,-vop3-literal,-bitop3-insts",
                                 "-amdgpu-spill-sgpr-to-vgpr=true", "-misched=gcn-max-ilp",
                                 "-amdgpu-prefer-scc1-branches",
                                 "-greedy-regclass-priority-trumps-globalness=true",
                                 "-enable-tail-merge=false",
                                 "-branch-folder-hoist-common-code=false",
                                 "-amdgpu-preserve-uniform-irreducible",
                                 "-amdgpu-shrink-late-compare-mask",
                                 "-amdgpu-prefer-unsigned-add",
                                 "-amdgpu-prefer-ge-scalar-bounds",
                                 str(ir), "-o", str(output)],
                                capture_output=True, text=True)
        assert result.returncode == 0, result.stderr
    return {"assembly": output.read_text(), "ir": ir.read_text() if LLVM else None}


@pytest.fixture(scope="module")
def native_assembly(native_codegen):
    return native_codegen["assembly"]


def test_hip_raw_kernarg_alignment_matches_abi(native_codegen):
    if not LLVM:
        pytest.skip("requires ZYFA_LLVM_ROOT for kernarg IR inspection")
    loads = re.findall(r"load volatile <(?:16|4|2) x i32>, ptr addrspace\(4\)[^\n]+", native_codegen["ir"])
    assert len(loads) == 8, loads
    assert all(int(re.search(r"align (\d+)", load)[1]) == 8 for load in loads), loads


@pytest.fixture(scope="module")
def disassembled_kernels(native_assembly, tmp_path_factory):
    if not LLVM:
        pytest.skip("requires ZYFA_LLVM_ROOT for exact ISA matching")
    output = tmp_path_factory.mktemp("native_objects")
    source = output / "native.s"
    source.write_text(native_assembly)
    obj = output / "native.o"
    commands = [
        [str(LLVM / "build/bin/clang"), "-x", "assembler", "-target", "amdgcn-amd-amdhsa",
         "-mcpu=gfx950", "-c", str(source), "-o", str(obj)],
        [os.sys.executable, str(ROOT / "csrc/asm/build.py"), "--out-dir", str(output),
         "--rocm", str(ROCM)],
    ]
    for command in commands:
        result = subprocess.run(command, capture_output=True, text=True)
        assert result.returncode == 0, result.stderr
    objects = [obj, output / "fmha_fp8_d128_pp.co", output / "fmha_fp8_d192_pp.co"]
    disassemblies = []
    for obj in objects:
        result = subprocess.run([str(LLVM / "build/bin/llvm-objdump"), "--disassemble",
                                 "--mcpu=gfx950", str(obj)], capture_output=True, text=True)
        assert result.returncode == 0, result.stderr
        disassemblies.append(result.stdout)
    return disassemblies


@pytest.mark.parametrize("dim,index", [(128, 1), (192, 2)])
def test_hip_kernarg_load_sequence_matches_assembly(disassembled_kernels, dim, index):
    from benchmarks.compare_isa import compare, parse_disassembly, select_function

    llvm = select_function(parse_disassembly(disassembled_kernels[0]), dim)
    reference = select_function(parse_disassembly(disassembled_kernels[index]), dim)
    result = compare(reference[:4], llvm[:4])
    assert result["counts_match"], result["count_differences"]
    assert result["sequence_match"], result["first_mismatch"]


@pytest.mark.parametrize("dim,index,mfmas", [(128, 1, 72), (192, 2, 44)])
def test_hip_steady_disassembled_mnemonics_match(disassembled_kernels, dim, index, mfmas):
    from benchmarks.compare_isa import compare, parse_disassembly, select_function, steady_loop

    llvm = select_function(parse_disassembly(disassembled_kernels[0]), dim)
    reference = select_function(parse_disassembly(disassembled_kernels[index]), dim)
    result = compare(steady_loop(reference, mfmas), steady_loop(llvm, mfmas))
    assert result["counts_match"], result["count_differences"]
    assert result["sequence_match"], result["first_mismatch"]


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_signed_upper_bounds_are_only_causal_masks(disassembled_kernels, dim):
    from benchmarks.compare_isa import parse_disassembly, select_function

    index = 1 if dim == 128 else 2
    checks = ("s_cmp_ge_i32", "s_cmp_gt_i32", "s_cmpk_gt_i32")
    counts = []
    for text in (disassembled_kernels[index], disassembled_kernels[0]):
        instructions = select_function(parse_disassembly(text), dim)
        counts.append({op: sum(i.mnemonic == op for i in instructions) for op in checks})
    assert counts[0] == counts[1], counts


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_scalar_add_encoding_matches_reference(disassembled_kernels, dim):
    from benchmarks.compare_isa import parse_disassembly, select_function

    index = 1 if dim == 128 else 2
    counts = []
    for disassembly in (disassembled_kernels[index], disassembled_kernels[0]):
        instructions = select_function(parse_disassembly(disassembly), dim)
        counts.append({op: sum(i.mnemonic == op for i in instructions)
                       for op in ("s_add_i32",)})
    assert counts[0] == counts[1], counts


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_group0_dma_rounds_reuse_lane_offsets(disassembled_kernels, dim):
    from benchmarks.compare_isa import parse_disassembly, select_function

    counts = []
    for text in (disassembled_kernels[1 if dim == 128 else 2], disassembled_kernels[0]):
        rounds = []
        count = 0
        for instruction in select_function(parse_disassembly(text), dim):
            if instruction.mnemonic.startswith("s_cbranch") or instruction.mnemonic == "s_branch":
                rounds = []
            elif instruction.mnemonic == "buffer_load_dwordx4":
                rounds.append(instruction.operands.split(",")[0])
                if len(rounds) == 4:
                    count += len(set(rounds)) == 1
                    rounds = []
        counts.append(count)
    assert counts[0] == counts[1], counts


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_whole_kernel_has_no_three_input_address_adds(disassembled_kernels, dim):
    from benchmarks.compare_isa import parse_disassembly, select_function

    code = select_function(parse_disassembly(disassembled_kernels[0]), dim)
    assert not [i for i in code if i.mnemonic == "v_add3_u32"]


def runtime_pv_address_sites(code, dim):
    from benchmarks.compare_isa import steady_loop

    positions = {i.address: position for position, i in enumerate(code)}
    predecessors = [set() for _ in code]
    writes = []
    for position, instruction in enumerate(code):
        if instruction.branch_target in positions:
            predecessors[positions[instruction.branch_target]].add(position)
        if instruction.mnemonic not in ("s_branch", "s_endpgm") and position + 1 < len(code):
            predecessors[position + 1].add(position)
        destination = instruction.operands.split(",")[0].strip()
        registers = set()
        if re.fullmatch(r"v\d+", destination):
            registers.add(destination)
        elif m := re.fullmatch(r"v\[(\d+):(\d+)\]", destination):
            registers.update(f"v{r}" for r in range(int(m[1]), int(m[2]) + 1))
        if instruction.mnemonic.startswith(("global_store", "buffer_store", "ds_write")):
            registers.clear()
        writes.append(registers)

    def origins(position, register):
        pending = [(p, register) for p in predecessors[position]]
        visited, result = set(), set()
        while pending:
            p, r = pending.pop()
            if (p, r) in visited:
                continue
            visited.add((p, r))
            if r in writes[p]:
                instruction = code[p]
                if instruction.mnemonic in ("v_mov_b32_e32", "v_mov_b32_e64"):
                    source = instruction.operands.split(",")[1].strip()
                    if re.fullmatch(r"v\d+", source):
                        pending.extend((pred, source) for pred in predecessors[p])
                        continue
                result.add(instruction.address)
            else:
                pending.extend((pred, r) for pred in predecessors[p])
        return result

    loop_end = max(i.address for i in steady_loop(code, 72 if dim == 128 else 44))
    reads = [i for i in code if i.address > loop_end and i.mnemonic == "ds_read_b64_tr_b8"]
    per_site = 32 if dim == 128 else 16
    assert len(reads) == 6 * per_site
    sites = []
    for site in range(6):
        consumers = reads[site * per_site:(site + 1) * per_site]
        producers = set()
        for instruction in consumers:
            register = instruction.operands.split(",")[1].strip().split()[0]
            producers.update(origins(positions[instruction.address], register))
        sites.append((consumers, producers))
    return sites


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_runtime_pv_reuses_one_v_address(disassembled_kernels, dim):
    from benchmarks.compare_isa import parse_disassembly, select_function

    code = select_function(parse_disassembly(disassembled_kernels[0]), dim)
    expected_offsets = [4096 * half + 256 * fragment + 1024 * word
                        for half in range(2 if dim == 128 else 1)
                        for fragment in range(4) for word in range(4)]
    updates = set()
    for site, (fragment_reads, constructions) in enumerate(runtime_pv_address_sites(code, dim)):
        offsets = [int(m[1]) if (m := re.search(r"offset:(\d+)", i.operands)) else 0
                   for i in fragment_reads]
        assert offsets == expected_offsets, (site, offsets)
        assert len(constructions) == 1, (site, sorted(constructions))
        updates.update(constructions)
    producers = {i.address: i for i in code}
    assert all(producers[address].mnemonic in ("v_add_u32_e32", "v_add_u32_e64", "v_lshl_add_u32")
               for address in updates), [producers[address] for address in sorted(updates)]
    assert len(updates) == 4, [producers[address] for address in sorted(updates)]
    invariant_registers = set()
    for address in updates:
        sources = producers[address].operands.split(",")[1:]
        vector_sources = re.findall(r"\bv\d+\b", ",".join(sources))
        assert len(vector_sources) == 1, producers[address]
        invariant_registers.update(vector_sources)
    assert len(invariant_registers) == 1, invariant_registers


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_epilogue_scales_then_packs_then_swaps(disassembled_kernels, dim):
    from benchmarks.compare_isa import parse_disassembly, select_function

    operations = {"v_mul_f32_e32", "v_cvt_pk_bf16_f32", "v_permlane32_swap_b32_e32"}
    expected = (["v_mul_f32_e32"] * 65 + ["v_cvt_pk_bf16_f32"] * 32
                + ["v_permlane32_swap_b32_e32"] * 16)
    if dim == 128:
        expected.append("v_mul_f32_e32")
    code = select_function(parse_disassembly(disassembled_kernels[0]), dim)
    starts = [i for i, instruction in enumerate(code) if instruction.mnemonic == "v_rcp_f32_e32"]
    assert starts
    for start in starts:
        end = next(i for i in range(start + 1, len(code)) if code[i].mnemonic == "ds_write_b128")
        actual = [i.mnemonic for i in code[start:end] if i.mnemonic in operations]
        assert actual == expected, actual


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_whole_qk_mfma_count_matches_reference(disassembled_kernels, dim):
    from benchmarks.compare_isa import parse_disassembly, select_function

    counts = [sum(i.mnemonic == "v_mfma_f32_32x32x64_f8f6f4"
                  for i in select_function(parse_disassembly(text), dim))
              for text in (disassembled_kernels[1 if dim == 128 else 2], disassembled_kernels[0])]
    assert counts[0] == counts[1], counts


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_whole_max3_count_matches_reference(disassembled_kernels, dim):
    from benchmarks.compare_isa import parse_disassembly, select_function

    counts = [sum(i.mnemonic == "v_max3_f32"
                  for i in select_function(parse_disassembly(text), dim))
              for text in (disassembled_kernels[1 if dim == 128 else 2], disassembled_kernels[0])]
    assert counts[0] == counts[1], counts


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_whole_float_mnemonic_counts_match_reference(disassembled_kernels, dim):
    from benchmarks.compare_isa import compare, parse_disassembly, select_function

    code = [[i for i in select_function(parse_disassembly(text), dim)
             if any(kind in i.mnemonic for kind in ("f32", "bf16", "fp8"))]
            for text in (disassembled_kernels[1 if dim == 128 else 2], disassembled_kernels[0])]
    result = compare(*code)
    assert result["counts_match"], result["count_differences"]


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_causal_mask_scalar_sub_count_matches_reference(disassembled_kernels, dim):
    from benchmarks.compare_isa import parse_disassembly, select_function

    counts = [sum(i.mnemonic == "s_sub_i32"
                  for i in select_function(parse_disassembly(text), dim))
              for text in (disassembled_kernels[1 if dim == 128 else 2], disassembled_kernels[0])]
    assert counts[0] == counts[1], counts


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_whole_barrier_count_matches_reference(disassembled_kernels, dim):
    from benchmarks.compare_isa import parse_disassembly, select_function

    counts = [sum(i.mnemonic == "s_barrier"
                  for i in select_function(parse_disassembly(text), dim))
              for text in (disassembled_kernels[1 if dim == 128 else 2], disassembled_kernels[0])]
    assert counts[0] == counts[1], counts


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_whole_priority_count_matches_reference(disassembled_kernels, dim):
    from benchmarks.compare_isa import parse_disassembly, select_function

    counts = [sum(i.mnemonic == "s_setprio"
                  for i in select_function(parse_disassembly(text), dim))
              for text in (disassembled_kernels[1 if dim == 128 else 2], disassembled_kernels[0])]
    assert counts[0] == counts[1], counts


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_whole_memory_mnemonic_counts_match_reference(disassembled_kernels, dim):
    from benchmarks.compare_isa import compare, parse_disassembly, select_function

    code = [[i for i in select_function(parse_disassembly(text), dim)
             if i.mnemonic.startswith(("ds_", "buffer_", "global_"))]
            for text in (disassembled_kernels[1 if dim == 128 else 2], disassembled_kernels[0])]
    result = compare(*code)
    assert result["counts_match"], result["count_differences"]


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_query_loads_use_scalar_base_and_32bit_offset(disassembled_kernels, dim):
    from benchmarks.compare_isa import parse_disassembly, select_function

    for text in (disassembled_kernels[1 if dim == 128 else 2], disassembled_kernels[0]):
        loads = [i for i in select_function(parse_disassembly(text), dim)
                 if i.mnemonic == "global_load_dwordx4"]
        assert loads
        assert all(re.match(r"v\[\d+:\d+\], v\d+, s\[\d+:\d+\]", i.operands)
                   for i in loads), loads


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_query_load_offset_order_matches_reference(disassembled_kernels, dim):
    from benchmarks.compare_isa import parse_disassembly, select_function

    offsets = []
    for text in (disassembled_kernels[1 if dim == 128 else 2], disassembled_kernels[0]):
        loads = [i for i in select_function(parse_disassembly(text), dim)
                 if i.mnemonic == "global_load_dwordx4"]
        offsets.append([int(match[1]) if (match := re.search(r"offset:(\d+)", i.operands)) else 0
                        for i in loads])
    assert offsets[0] == offsets[1], offsets


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_wide_integer_mad_count_matches_reference(disassembled_kernels, dim):
    from benchmarks.compare_isa import parse_disassembly, select_function

    counts = [sum(i.mnemonic == "v_mad_u64_u32"
                  for i in select_function(parse_disassembly(text), dim))
              for text in (disassembled_kernels[1 if dim == 128 else 2], disassembled_kernels[0])]
    assert counts[0] == counts[1], counts


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_lse_stores_use_scalar_base_and_32bit_offset(disassembled_kernels, dim):
    from benchmarks.compare_isa import parse_disassembly, select_function

    for text in (disassembled_kernels[1 if dim == 128 else 2], disassembled_kernels[0]):
        stores = [i for i in select_function(parse_disassembly(text), dim)
                  if i.mnemonic == "global_store_dword"]
        assert stores
        assert all(re.match(r"v\d+, v\d+, s\[\d+:\d+\]", i.operands)
                   for i in stores), stores


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_lse_indexing_needs_no_extra_wide_shifts(disassembled_kernels, dim):
    from benchmarks.compare_isa import parse_disassembly, select_function

    counts = [sum(i.mnemonic == "s_lshl_b64"
                  for i in select_function(parse_disassembly(text), dim))
              for text in (disassembled_kernels[1 if dim == 128 else 2], disassembled_kernels[0])]
    assert counts[0] == counts[1], counts


def test_hip_d128_tail_reuses_materialized_sum_scales(disassembled_kernels):
    from benchmarks.compare_isa import parse_disassembly, select_function

    counts = [sum(i.mnemonic == "v_lshlrev_b32_e32" and i.operands.split(",")[1].strip() == "23"
                  for i in select_function(parse_disassembly(text), 128))
              for text in (disassembled_kernels[1], disassembled_kernels[0])]
    assert counts[0] == counts[1], counts


@pytest.mark.parametrize("dim", [128, 192])
def test_hip_mfma_accumulator_has_no_partial_overlap(disassembled_kernels, dim):
    from benchmarks.compare_isa import parse_disassembly, select_function

    instructions = select_function(parse_disassembly(disassembled_kernels[0]), dim)
    for instruction in instructions:
        if not instruction.mnemonic.startswith("v_mfma"):
            continue
        operands = instruction.operands.split(",")
        ranges = [re.fullmatch(r"([va])\[(\d+):(\d+)\]", operands[i].strip())
                  for i in (0, 3)]
        if not all(ranges) or ranges[0][1] != ranges[1][1]:
            continue
        dst, accumulator = [tuple(map(int, r.group(2, 3))) for r in ranges]
        if dst[1] - dst[0] < 4:
            continue
        assert dst == accumulator or dst[1] < accumulator[0] or accumulator[1] < dst[0], instruction


def extract_loop(assembly, function, mfma_count):
    from benchmarks.compare_isa import Instruction, steady_loop

    lines = assembly.splitlines()
    dim = 128 if function == 0 else 192
    start = next(i for i, line in enumerate(lines) if re.match(rf"^_ZN15fmha_fp8_native6attendILi{dim}EE.*:", line))
    end = next(i for i in range(start, len(lines)) if lines[i].startswith(".Lfunc_end"))
    positions = {}
    labels = {}
    next_position = None
    for i in range(end - 1, start - 1, -1):
        op = re.match(r"\s+((?:s|v|ds|buffer|global|flat|scratch)_[\w]+)(?:\s+(.*?))?\s*(?:;.*)?$", lines[i])
        if op:
            positions[i] = (op[1], op[2] or "")
            next_position = i
        label = re.match(r"(\.LBB\d+_\d+):", lines[i])
        if label:
            labels[label[1]] = next_position
    code = []
    for i, (op, operands) in sorted(positions.items()):
        target = labels.get(operands.split()[0]) if operands and (op == "s_branch" or op.startswith("s_cbranch_")) else None
        code.append(Instruction(op, operands, i, i + 1, target))
    selected = steady_loop(code, mfma_count)
    following = dict(zip(sorted(positions), sorted(positions)[1:] + [end]))
    body = [line for instruction in selected for line in lines[instruction.address:following[instruction.address]]]
    phase = next(i for i, line in enumerate(body) if line.strip() == "s_setprio 0")
    return body[phase:] + body[:phase]


@pytest.mark.parametrize("dim,function", [(128, 0), (192, 1)])
def test_hip_steady_mfma_order_matches_assembly(native_assembly, dim, function):
    stage = ["RS"] * (2 if dim == 128 else 1)
    stage += ["QK"] * (8 if dim == 128 else 6)
    stage += ["PV"] * (8 if dim == 128 else 4)
    body = extract_loop(native_assembly, function, 4 * len(stage))
    actual = ["PV" if "v_mfma_scale" in line else "RS" if "16x16" in line else "QK"
              for line in body if "v_mfma" in line]
    assert actual == stage * 4


@pytest.mark.parametrize("dim,function,count", [(128, 0, 72), (192, 1, 44)])
def test_hip_unrolled_stage_scheduler_barriers(native_assembly, dim, function, count):
    body = extract_loop(native_assembly, function, count)
    starts = [i for i, line in enumerate(body) if line.strip() == "s_setprio 0"]
    assert len(starts) == 4
    for start, end in zip(starts, starts[1:] + [len(body)]):
        barriers = [i for i in range(start, end) if body[i].strip() == "s_barrier"]
        assert len(barriers) == 2
        # The phase barrier's closing fence and the explicit stage fence both survive.
        assert sum("sched_barrier mask(0x00000000)" in line for line in body[barriers[-1] + 1:end]) == 2


@pytest.mark.parametrize("dim,function,stage_size,slots", [
    (128, 0, 18, [4, 5, 6, 7]),
    (192, 1, 11, [2, 3, 4]),
])
def test_hip_steady_dma_issue_slots_match_assembly(native_assembly, dim, function, stage_size, slots):
    body = extract_loop(native_assembly, function, 4 * stage_size)
    mfma = -1
    actual = []
    for line in body:
        if "v_mfma" in line:
            mfma += 1
        elif "buffer_load_dwordx4" in line and "lds" in line:
            actual.append(mfma)
    assert actual == [stage * stage_size + slot for stage in range(4) for slot in slots]


@pytest.mark.parametrize("dim,function,stage_size,slots", [
    (128, 0, 18, [7, 8, 9, 10]),
    (192, 1, 11, [6, 7]),
])
def test_hip_steady_score_reduction_slots_match_assembly(native_assembly, dim, function, stage_size, slots):
    body = extract_loop(native_assembly, function, 4 * stage_size)
    mfma = -1
    reductions = []
    for line in body:
        if "v_mfma" in line:
            mfma += 1
        elif re.search(r"\bv_max(?:3)?_f32", line) and mfma % stage_size in slots:
            reductions.append(mfma)
    # Each finalized 16-register score tile contributes an eight-instruction max chain.
    assert reductions == [stage * stage_size + slot for stage in range(4) for slot in slots for _ in range(8)]


@pytest.mark.parametrize("dim,function,stage_size", [(128, 0, 18), (192, 1, 11)])
def test_hip_steady_fragment_refill_order_matches_assembly(native_assembly, dim, function, stage_size):
    body = extract_loop(native_assembly, function, 4 * stage_size)
    # (MFMA slot, fragment indices): K in block-major order within each 64-D chunk;
    # V in output-tile order within each 64-key half.
    krefills = {1: [2, 3], 2: [0], 3: [1], 4: [2], 5: [3]} if dim == 128 else {0: [0], 1: [1]}
    vrefills = {6: [0], 7: [1], 8: [2], 10: [3, 4], 12: [5, 6], 14: [7]} if dim == 128 else {
        2: [0], 3: [1], 5: [2], 7: [3]}
    expected = []
    for stage in range(4):
        for slot in range(stage_size):
            expected += [(stage * stage_size + slot, "K", block * (4096 if dim == 128 else 8192) + i)
                         for block in krefills.get(slot, []) for i in [0, 16]]
            expected += [(stage * stage_size + slot, "V", (frag // 4) * 4096 + (frag % 4) * 256 + i * 1024)
                         for frag in vrefills.get(slot, []) for i in range(4)]
    actual = []
    mfma = -1
    in_mm = False
    for line in body:
        if "s_setprio 0" in line:
            in_mm = False
        elif "s_setprio 1" in line:
            in_mm = True
        if "v_mfma" in line:
            mfma += 1
        elif in_mm and "ds_read" in line:
            kind = "V" if "tr_b8" in line else "K"
            offset = re.search(r"offset:(\d+)", line)
            offset = int(offset[1]) if offset else 0
            actual.append((mfma, kind, offset % (16384 if kind == "K" or dim == 128 else 8192)))
    assert actual == expected


@pytest.mark.parametrize("function,count", [(0, 72), (1, 44)])
def test_hip_schedule_anchors_preserve_scalar_bits(native_assembly, function, count):
    body = extract_loop(native_assembly, function, count)
    assert not any("v_cvt_f64_f32" in line for line in body)


def test_hip_d192_score_preparation_precedes_rescale(native_assembly):
    body = extract_loop(native_assembly, 1, 44)
    starts = [i for i, line in enumerate(body) if line.strip() == "s_setprio 0"]
    for start, end in zip(starts, starts[1:] + [len(body)]):
        stage = body[start:end]
        mfmas = [i for i, line in enumerate(stage) if "v_mfma" in line]
        expected = set()
        for i in mfmas[5:7]:
            regs = re.search(r"v\[(\d+):(\d+)\]", stage[i])
            expected.update(range(int(regs[1]), int(regs[2]) + 1))
        branch = next(i for i in range(mfmas[-1] + 1, len(stage)) if "s_cbranch" in stage[i])
        actual = set()
        for line in stage[mfmas[-1] + 1:branch]:
            packed = re.search(r"v_pk_fma_f32\s+v\[\d+:\d+\],\s*v\[(\d+):(\d+)\]", line)
            scalar = re.search(r"v_fma_f32\s+v\d+,\s*v(\d+),", line)
            if packed:
                actual.update(range(int(packed[1]), int(packed[2]) + 1))
            elif scalar:
                actual.add(int(scalar[1]))
        assert actual == expected


@pytest.mark.parametrize("dim,function,count", [(128, 0, 72), (192, 1, 44)])
def test_hip_steady_lds_dma_slots_are_independent(native_assembly, dim, function, count):
    if not LLVM:
        pytest.skip("requires ZYFA_LLVM_ROOT for exact ISA matching")
    body = extract_loop(native_assembly, function, count)
    assert not any(re.search(r"\bs_waitcnt\s+vmcnt\(0\)", line) for line in body)


def test_hip_d128_softmax_instruction_pipeline(native_assembly):
    if not LLVM:
        pytest.skip("requires ZYFA_LLVM_ROOT for exact ISA matching")
    body = extract_loop(native_assembly, 0, 72)
    starts = [i for i, line in enumerate(body) if line.strip() == "s_setprio 0"]
    expected = ["v_fma_f32"] * 16
    expected += [op for _ in range(48) for op in ("v_fma_f32", "v_cvt_pk_u8_f32")]
    expected += ["v_cvt_pk_u8_f32"] * 16
    for start, end in zip(starts, starts[1:] + [len(body)]):
        barrier = next(i for i in range(start, end) if body[i].strip() == "s_barrier")
        actual = [line.strip().split()[0] for line in body[start:barrier]
                  if re.match(r"\s*v_(?:fma\w*|cvt_pk_u8)_f32\b", line)]
        assert actual == expected


def test_hip_d192_keeps_packed_score_fma(native_assembly):
    if not LLVM:
        pytest.skip("requires ZYFA_LLVM_ROOT for exact ISA matching")
    body = extract_loop(native_assembly, 1, 44)
    assert sum(bool(re.match(r"\s*v_pk_fma_f32\b", line)) for line in body) == 64


@pytest.mark.parametrize("dim,function,count", [(128, 0, 72), (192, 1, 44)])
def test_hip_steady_rescale_vote_uses_scalar_flag(native_assembly, dim, function, count):
    body = extract_loop(native_assembly, function, count)
    assert sum(bool(re.match(r"\s*s_cmp_eq_u32\b", line)) for line in body) == 4
    assert not any(re.match(r"\s*s_and_b64\b", line) for line in body)
    assert not any(re.match(r"\s*s_cbranch_vccz\b", line) for line in body)


def test_hip_d192_steady_probability_words_need_no_zero_initializers(native_assembly):
    body = extract_loop(native_assembly, 1, 44)
    assert not any(re.match(r"\s*v_mov_b32_e32\s+[^,]+, 0\s*$", line) for line in body)


@pytest.mark.parametrize("dim,mads", [(128, 4), (192, 3)])
def test_hip_setup_offsets_fuse_to_u24_mads(disassembled_kernels, dim, mads):
    from benchmarks.compare_isa import parse_disassembly, select_function

    code = select_function(parse_disassembly(disassembled_kernels[0]), dim)
    end = next(i for i, instruction in enumerate(code)
               if instruction.mnemonic == "s_cmp_ge_u32")
    setup = code[:end]
    assert sum(i.mnemonic == "v_mad_u32_u24" for i in setup) == mads
    assert not any(re.sub(r"_e(?:32|64)$", "", i.mnemonic)
                   in {"v_mul_lo_u32", "v_mul_u32_u24", "v_mad_u64_u32"}
                   for i in setup)
    # Five query and two shared output bodies retain full-width products.
    assert sum(i.mnemonic == "v_mul_lo_u32" for i in code[end:]) == 7


def test_hip_native_launch_rejects_u24_stride_boundary(tmp_path):
    import importlib.util

    if not LLVM:
        pytest.skip("requires ZYFA_LLVM_ROOT for native host compilation")
    torch_lib = Path(importlib.util.find_spec("torch").origin).parent / "lib"
    output = tmp_path / "native_stride_guard"
    command = [str(LLVM / "build/bin/clang++"), "-O1", "-std=c++20", "-DKITTENS_CDNA4",
               "-D__HIP_PLATFORM_AMD__", "-x", "hip",
               "--offload-arch=gfx950", "--rocm-path=" + str(ROCM), "-fno-gpu-rdc",
               str(ROOT / "csrc/fp8_native.hip"),
               str(ROOT / "tests/native_fp8_stride_guard.cpp"),
               "-I" + str(ROOT / "csrc"), "-L" + str(ROCM / "lib"),
               "-Wl,-rpath," + str(ROCM / "lib"),
               "-Wl,-rpath," + str(torch_lib), "-Wl,-rpath-link," + str(torch_lib),
               "-lamdhip64", "-o", str(output)]
    result = subprocess.run(command, capture_output=True, text=True)
    assert result.returncode == 0, result.stderr
    env = dict(os.environ)
    env["LD_LIBRARY_PATH"] = str(torch_lib) + ":" + env.get("LD_LIBRARY_PATH", "")
    result = subprocess.run([str(output)], capture_output=True, text=True, env=env)
    assert result.returncode == 0, result.stdout + result.stderr
