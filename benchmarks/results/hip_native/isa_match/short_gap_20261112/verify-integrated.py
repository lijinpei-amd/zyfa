"""Verify the integrated short-length gap HIP FP8 capture.

Checks the owning capture against the GPU-validated build object, the
assembly reference and the preceding owning capture (o_clear_placement_20261112),
then writes summary.json and whole-mnemonics.csv.
"""
from collections import Counter
import csv
import hashlib
import importlib.util
import json
from pathlib import Path
import re
import struct
import subprocess
import sys

root = next(p for p in Path(__file__).resolve().parents
            if (p / 'csrc/fp8_native.hip').is_file() and (p / 'setup.py').is_file())
sys.path.insert(0, str(root))
from benchmarks.compare_isa import compare, excluded_reason, parse_disassembly, select_function, steady_loop
import benchmarks.check_inline_asm_hazards as hazards

out = root / 'benchmarks/results/hip_native/isa_match/short_gap_20261112'
current = out / 'owning'
baseline = root / 'benchmarks/results/hip_native/isa_match/o_clear_placement_20261112/owning'
functions = parse_disassembly((current / 'disassembly.s').read_text())
before_functions = parse_disassembly((baseline / 'disassembly.s').read_text())
spec = importlib.util.spec_from_file_location('short_gap_codegen_checks', root / 'tests/test_fp8_hip_codegen.py')
checks = importlib.util.module_from_spec(spec)
spec.loader.exec_module(checks)
lanes = {'v_readlane_b32', 'v_writelane_b32'}
report = {'filter': 'scratch/register copies/native SGPR lane spills excluded; literal initialization retained',
          'dimensions': {}}

# Production build configuration this capture depends on.
setup_text = (root / 'setup.py').read_text()
source_text = (root / 'csrc/fp8_native.hip').read_text()
assert '-mllvm=-disable-machine-licm' in setup_text
assert source_text.count('#pragma clang loop licm(disable)') == 1


def resources(path):
    fields = ('group_segment_fixed_size', 'kernarg_segment_align', 'kernarg_segment_size',
              'max_flat_workgroup_size', 'private_segment_fixed_size', 'sgpr_count',
              'sgpr_spill_count', 'vgpr_count', 'vgpr_spill_count', 'wavefront_size')
    sections = path.read_text().split('  - .agpr_count:')[1:]
    result = {}
    for section in sections:
        dimension = int(re.search(r'\.name:.*ILi(128|192)E', section)[1])
        result[str(dimension)] = {field: int(re.search(r'\.' + field + r':\s*(\d+)', section)[1])
                                  for field in fields}
    assert len(result) == 2, path
    return result


report['resources'] = resources(current / 'metadata.txt')
report['resources_before'] = resources(baseline / 'metadata.txt')
expected = {'128': (244, 77), '192': (206, 79)}
for dim, (vgprs, sgprs) in expected.items():
    after, before = report['resources'][dim], report['resources_before'][dim]
    assert (after['vgpr_count'], after['sgpr_count']) == (vgprs, sgprs), (dim, after)
    assert after['vgpr_spill_count'] == after['sgpr_spill_count'] == 0, (dim, after)
    assert after['private_segment_fixed_size'] == 0, (dim, after)
    for field in ('group_segment_fixed_size', 'kernarg_segment_align', 'kernarg_segment_size',
                  'max_flat_workgroup_size', 'wavefront_size'):
        assert after[field] == before[field], (dim, field)


def elf_sections(path):
    data = path.read_bytes()
    assert data[:6] == b'\x7fELF\x02\x01', path
    offset = struct.unpack_from('<Q', data, 40)[0]
    size, count, names_index = struct.unpack_from('<HHH', data, 58)
    headers = [struct.unpack_from('<IIQQQQIIQQ', data, offset + i * size) for i in range(count)]
    names_header = headers[names_index]
    names = data[names_header[4]:names_header[4] + names_header[5]]
    return {names[h[0]:names.index(b'\x00', h[0])].decode(): data[h[4]:h[4] + h[5]]
            for h in headers if h[1] != 8}


# The owning object must equal the GPU-validated build in code bytes.
actual_sections = elf_sections(current / 'native.co')
validated = out / 'tasks/validated-native.co'
sections = elf_sections(validated)
assert sections.keys() == actual_sections.keys()
differing = sorted(name for name in actual_sections if actual_sections[name] != sections[name])
assert set(differing) <= {'.gnu.hash', '.hash', '.dynstr', '.strtab'}, differing
for name in ('.text', '.rodata', '.note'):
    assert actual_sections[name] == sections[name], name
raw_identity = {}
validated_functions = parse_disassembly((out / 'tasks/validated-disassembly.s').read_text())
for dimension in (128, 192):
    actual = select_function(functions, dimension)
    candidate = select_function(validated_functions, dimension)
    signature = lambda code: [(i.address, i.mnemonic, i.operands) for i in code]
    assert signature(actual) == signature(candidate)
    raw_identity[str(dimension)] = len(actual)
equivalence = {'owning_code_object_sha256': hashlib.sha256((current / 'native.co').read_bytes()).hexdigest(),
               'validated_code_object_sha256': hashlib.sha256(validated.read_bytes()).hexdigest(),
               'text_sha256': hashlib.sha256(actual_sections['.text']).hexdigest(),
               'differing_sections': differing, 'text_rodata_notes_byte_identical': True,
               'unfiltered_isa_address_mnemonic_operands_identity': raw_identity}
report['validated_build_equivalence'] = equivalence

csv_rows = []
for dim, mfmas, mads in [(128, 72, 4), (192, 44, 3)]:
    new = select_function(functions, dim)
    old = select_function(before_functions, dim)
    ref_path = root / f'benchmarks/results/hip_native/isa_match/baseline/assembly_d{dim}.s'
    ref = select_function(parse_disassembly(ref_path.read_text()), dim)
    clean = lambda code: [i for i in code if i.mnemonic not in lanes]
    assert not any(i.mnemonic in lanes for i in new), 'no SGPR lane spills expected'
    assert not any(i.mnemonic.startswith('scratch_') for i in new), 'no scratch expected'
    loop = compare(steady_loop(ref, mfmas), steady_loop(new, mfmas))
    assert loop['counts_match'] and loop['sequence_match'], loop['first_mismatch']
    whole = compare(ref, clean(new))
    delta = compare(clean(old), clean(new))
    for name, result in [('loop', loop), ('kernel', whole), ('before-after', delta)]:
        (current / f'd{dim}-{name}.json').write_text(json.dumps(result, indent=2) + '\n')
    nc, oc, rc = [Counter(i.mnemonic for i in code if excluded_reason(i) is None)
                  for code in (clean(new), clean(old), ref)]
    is_copy = lambda i: excluded_reason(i) == 'register_copy'
    copies = {name: {'loop': sum(map(is_copy, steady_loop(code, mfmas))), 'whole': sum(map(is_copy, code))}
              for name, code in (('after', new), ('before', old), ('assembly', ref))}
    assert copies['after']['loop'] <= copies['assembly']['loop'], copies
    hazard_targets, hazard_nearest = hazards.nearest_overlapping_mfma(new, limit=200)
    assert hazard_nearest is not None and hazard_nearest[0] > 19, hazard_nearest
    assert nc['v_add3_u32'] == 0
    assert nc['v_mad_u32_u24'] == mads
    assert nc['v_mul_lo_u32'] == 7
    checks.test_hip_runtime_pv_reuses_one_v_address([(current / 'disassembly.s').read_text()], dim)
    checks.test_hip_setup_offsets_fuse_to_u24_mads([(current / 'disassembly.s').read_text()], dim, mads)
    protected = lambda op: op.startswith(('ds_', 'buffer_', 'global_')) or any(x in op for x in ('f32', 'bf16', 'fp8'))
    for op in nc.keys() | oc.keys():
        if protected(op):
            assert nc[op] == oc[op], (dim, op, oc[op], nc[op])
    for op in sorted(nc.keys() | oc.keys() | rc.keys()):
        csv_rows.append({'dimension': dim, 'mnemonic': op, 'assembly': rc[op], 'before': oc[op], 'after': nc[op],
                         'change': nc[op] - oc[op], 'excess': nc[op] - rc[op]})
    diffs = whole['count_differences']
    before_whole = compare(ref, clean(old))['count_differences']
    report['dimensions'][str(dim)] = {
        'steady_count_sequence_match': True, 'steady_instructions': loop['llvm_instruction_count'],
        'before_total': delta['reference_instruction_count'], 'after_total': delta['llvm_instruction_count'],
        'reference_total': whole['reference_instruction_count'],
        'before_after_differences': delta['count_differences'],
        'positive_excess_sum': sum(max(v['delta'], 0) for v in diffs.values()),
        'negative_excess_sum': sum(min(v['delta'], 0) for v in diffs.values()),
        'l1_distance': sum(abs(v['delta']) for v in diffs.values()),
        'before_positive_excess_sum': sum(max(v['delta'], 0) for v in before_whole.values()),
        'before_negative_excess_sum': sum(min(v['delta'], 0) for v in before_whole.values()),
        'before_l1_distance': sum(abs(v['delta']) for v in before_whole.values()),
        'scalar_positive_excess': sum(max(v['delta'], 0) for op, v in diffs.items() if op.startswith('s_')),
        'vector_positive_excess': {op: v for op, v in diffs.items() if op.startswith('v_') and v['delta'] > 0},
        'raw_allocator_instructions': {op: sum(i.mnemonic == op and
                                               (i.mnemonic in lanes or excluded_reason(i) is not None) for i in new)
                                       for op in sorted({i.mnemonic for i in new
                                                         if i.mnemonic in lanes or excluded_reason(i) is not None})},
        'first_sequence_mismatch': whole['first_mismatch'],
        'register_copies': copies,
        'o_clear_hazard_targets': hazard_targets,
        'nearest_overlapping_mfma_before_clear': hazard_nearest}
    d = report['dimensions'][str(dim)]
    # The wait and order changes must not move the histogram away from the assembly.
    assert d['positive_excess_sum'] <= d['before_positive_excess_sum'], d
    assert d['l1_distance'] <= d['before_l1_distance'], d
    print(f'd{dim}: strict loop {loop["llvm_instruction_count"]} matched; whole {d["before_total"]}->{d["after_total"]}; '
          f'positive excess {d["before_positive_excess_sum"]}->{d["positive_excess_sum"]}; '
          f'L1 {d["before_l1_distance"]}->{d["l1_distance"]}; copies {copies}; ADD3={nc["v_add3_u32"]}, '
          f'MAD_U24={nc["v_mad_u32_u24"]}, MUL_LO={nc["v_mul_lo_u32"]}')

manifest = json.loads((current / 'manifest.json').read_text())
assert manifest['native_source_sha256'] == hashlib.sha256((root / 'csrc/fp8_native.hip').read_bytes()).hexdigest()
assert manifest['code_object_sha256'] == hashlib.sha256((current / 'native.co').read_bytes()).hexdigest()
from zyfa import _C
extension = Path(_C.__file__)
assert extension.read_bytes().count((current / 'native.fatbin').read_bytes()) == 1
manifest['extension_sha256'] = hashlib.sha256(extension.read_bytes()).hexdigest()
manifest['extension_contains_exact_native_fatbin'] = True
baseline_extension = root / 'build/short-gap-20261112/evidence/baseline-extension.so'
assert baseline_extension.read_bytes().count((baseline / 'native.fatbin').read_bytes()) == 1
manifest['baseline_extension_sha256'] = hashlib.sha256(baseline_extension.read_bytes()).hexdigest()
manifest['source_commit'] = subprocess.check_output(['git', 'rev-parse', 'HEAD'], cwd=root, text=True).strip()
report['manifest'] = manifest
(out / 'summary.json').write_text(json.dumps(report, indent=2) + '\n')
with (out / 'whole-mnemonics.csv').open('w') as f:
    writer = csv.DictWriter(f, fieldnames=list(csv_rows[0]), lineterminator='\n')
    writer.writeheader()
    writer.writerows(csv_rows)
