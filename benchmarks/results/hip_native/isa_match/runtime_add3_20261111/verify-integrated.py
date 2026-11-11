from collections import Counter
import csv
import hashlib
import importlib.util
import json
from pathlib import Path
import re
import struct
import sys

root = next(p for p in Path(__file__).resolve().parents if (p/'csrc/fp8_native.hip').is_file() and (p/'setup.py').is_file())
sys.path.insert(0, str(root))
from benchmarks.compare_isa import compare, excluded_reason, parse_disassembly, select_function, steady_loop

out = root/'benchmarks/results/hip_native/isa_match/runtime_add3_20261111'
current = out/'owning'
baseline = root/'benchmarks/results/hip_native/isa_match/vector_fixes_20261111/owning'
functions = parse_disassembly((current/'disassembly.s').read_text())
before_functions = parse_disassembly((baseline/'disassembly.s').read_text())
spec = importlib.util.spec_from_file_location('vector_fix_codegen_checks', root/'tests/test_fp8_hip_codegen.py')
checks = importlib.util.module_from_spec(spec)
spec.loader.exec_module(checks)
lanes = {'v_readlane_b32', 'v_writelane_b32'}
report = {'filter':'scratch/register copies/native SGPR lane spills excluded; literal initialization retained',
          'dimensions':{}}

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

report['resources'] = resources(current/'metadata.txt')
assert report['resources'] == resources(baseline/'metadata.txt')

def elf_sections(path):
    data = path.read_bytes()
    assert data[:6] == b'\x7fELF\x02\x01', path
    offset = struct.unpack_from('<Q', data, 40)[0]
    size,count,names_index = struct.unpack_from('<HHH', data, 58)
    headers = [struct.unpack_from('<IIQQQQIIQQ', data, offset + i * size) for i in range(count)]
    names_header = headers[names_index]
    names = data[names_header[4]:names_header[4] + names_header[5]]
    return {names[h[0]:names.index(b'\x00',h[0])].decode():data[h[4]:h[4] + h[5]]
            for h in headers if h[1] != 8}

candidate_object = out/'tasks/candidate-native.co'
actual_sections = elf_sections(current/'native.co')
candidate_sections = elf_sections(candidate_object)
assert actual_sections.keys() == candidate_sections.keys()
different_sections = sorted(name for name in actual_sections
                            if actual_sections[name] != candidate_sections[name])
assert set(different_sections) <= {'.gnu.hash','.hash','.dynstr','.strtab'}, different_sections
for name in ('.text','.rodata','.note'):
    assert actual_sections[name] == candidate_sections[name], name
raw_identity = {}
for dimension in (128,192):
    actual = select_function(functions,dimension)
    candidate = select_function(parse_disassembly((out/'tasks/candidate-disassembly.s').read_text()),dimension)
    signature = lambda code:[(i.address,i.mnemonic,i.operands) for i in code]
    assert signature(actual) == signature(candidate)
    raw_identity[str(dimension)] = len(actual)
report['candidate_equivalence'] = {
    'candidate_code_object_sha256':hashlib.sha256(candidate_object.read_bytes()).hexdigest(),
    'owning_code_object_sha256':hashlib.sha256((current/'native.co').read_bytes()).hexdigest(),
    'text_rodata_notes_byte_identical':True,
    'text_sha256':hashlib.sha256(actual_sections['.text']).hexdigest(),
    'differing_sections':different_sections,
    'hip_cuid_symbols':{name:re.findall(rb'__hip_cuid_[0-9a-f]+',sections['.dynstr'])[0].decode()
                        for name,sections in [('candidate',candidate_sections),('owning',actual_sections)]},
    'unfiltered_isa_address_mnemonic_operands_identity':raw_identity}
csv_rows = []
address_report = {}
for dim, mfmas, mads in [(128,72,4),(192,44,3)]:
    new = select_function(functions,dim)
    old = select_function(before_functions,dim)
    ref_path = root/f'benchmarks/results/hip_native/isa_match/baseline/assembly_d{dim}.s'
    ref = select_function(parse_disassembly(ref_path.read_text()),dim)
    clean = lambda code: [i for i in code if i.mnemonic not in lanes]
    loop = compare(steady_loop(ref,mfmas),steady_loop(new,mfmas))
    assert loop['counts_match'] and loop['sequence_match'], loop['first_mismatch']
    whole = compare(ref,clean(new))
    delta = compare(clean(old),clean(new))
    for name,result in [('loop',loop),('kernel',whole),('before-after',delta)]:
        (current/f'd{dim}-{name}.json').write_text(json.dumps(result,indent=2)+'\n')
    nc,oc,rc = [Counter(i.mnemonic for i in code if excluded_reason(i) is None)
                for code in (clean(new),clean(old),ref)]
    assert nc['v_add3_u32'] == 0
    assert nc['v_mad_u32_u24'] == mads
    assert nc['v_mul_lo_u32'] == 7
    assert delta['llvm_instruction_count'] < delta['reference_instruction_count']
    checks.test_hip_runtime_pv_reuses_one_v_address([(current/'disassembly.s').read_text()],dim)
    checks.test_hip_setup_offsets_fuse_to_u24_mads([(current/'disassembly.s').read_text()],dim,mads)
    producers = {i.address:i for i in new}
    sites = checks.runtime_pv_address_sites(new,dim)
    updates = {address for _,origins in sites for address in origins}
    invariant_sources = [set(re.findall(r'\bv\d+\b', producers[address].operands.split(',',1)[1]))
                         for address in sorted(updates)]
    invariant = set.intersection(*invariant_sources)
    assert len(invariant) == 1, invariant_sources
    register = invariant.pop()
    number = int(register[1:])
    invariant_definitions = []
    for instruction in new:
        if instruction.mnemonic.startswith(('global_store','buffer_store','scratch_store','ds_write')):
            continue
        if instruction.mnemonic.startswith('buffer_load') and ' lds' in instruction.operands:
            continue
        destination = instruction.operands.split(',')[0].strip()
        match = re.fullmatch(r'v\[(\d+):(\d+)\]', destination)
        if destination == register or (match and int(match[1]) <= number <= int(match[2])):
            invariant_definitions.append(instruction)
    assert len(invariant_definitions) == 1, invariant_definitions
    definition = invariant_definitions[0]
    assert definition.address < min(i.address for i in steady_loop(new,mfmas))
    address_report[str(dim)] = {'invariant':{'register':register, 'address':definition.address,
                                           'mnemonic':definition.mnemonic, 'operands':definition.operands,
                                           'update_count':len(updates)}, 'sites':[
        {'site':site, 'read_count':len(reads),
         'definitions':[{'address':address, 'mnemonic':producers[address].mnemonic,
                         'operands':producers[address].operands} for address in sorted(origins)],
         'offsets':[int(match[1]) if (match := re.search(r'offset:(\d+)', i.operands)) else 0
                    for i in reads]}
        for site,(reads,origins) in enumerate(sites)]}
    protected = lambda op: op.startswith(('ds_','buffer_','global_')) or any(x in op for x in ('f32','bf16','fp8'))
    for op in nc.keys()|oc.keys():
        if protected(op):
            assert nc[op]==oc[op], (dim,op,oc[op],nc[op])
    for op in sorted(nc.keys()|oc.keys()|rc.keys()):
        csv_rows.append({'dimension':dim,'mnemonic':op,'assembly':rc[op],'before':oc[op],'after':nc[op],
                         'change':nc[op]-oc[op],'excess':nc[op]-rc[op]})
    diffs = whole['count_differences']
    report['dimensions'][str(dim)] = {'steady_count_sequence_match':True,'steady_instructions':loop['llvm_instruction_count'],
        'before_total':delta['reference_instruction_count'],'after_total':delta['llvm_instruction_count'],
        'reference_total':whole['reference_instruction_count'],'before_after_differences':delta['count_differences'],
        'positive_excess_sum':sum(max(v['delta'],0) for v in diffs.values()),
        'negative_excess_sum':sum(min(v['delta'],0) for v in diffs.values()),
        'vector_positive_excess':{op:v for op,v in diffs.items() if op.startswith('v_') and v['delta']>0},
        'raw_allocator_instructions':{op:sum(i.mnemonic == op and
                                           (i.mnemonic in lanes or excluded_reason(i) is not None) for i in new)
                                     for op in sorted({i.mnemonic for i in new
                                                       if i.mnemonic in lanes or excluded_reason(i) is not None})},
        'first_sequence_mismatch':whole['first_mismatch']}
    print(f'd{dim}: strict loop {loop["llvm_instruction_count"]} matched; whole {delta["reference_instruction_count"]}->{delta["llvm_instruction_count"]}; ADD3={nc["v_add3_u32"]}, MAD_U24={nc["v_mad_u32_u24"]}, MUL_LO={nc["v_mul_lo_u32"]}')
manifest = json.loads((current/'manifest.json').read_text())
assert manifest['native_source_sha256']==hashlib.sha256((root/'csrc/fp8_native.hip').read_bytes()).hexdigest()
assert manifest['code_object_sha256']==hashlib.sha256((current/'native.co').read_bytes()).hexdigest()
from zyfa import _C
extension = Path(_C.__file__)
assert extension.read_bytes().count((current/'native.fatbin').read_bytes()) == 1
manifest['extension_sha256'] = hashlib.sha256(extension.read_bytes()).hexdigest()
manifest['extension_contains_exact_native_fatbin'] = True
baseline_extension = root/'build/runtime-add3-20261111/evidence/baseline-extension.so'
assert baseline_extension.read_bytes().count((baseline/'native.fatbin').read_bytes()) == 1
manifest['baseline_extension_sha256'] = hashlib.sha256(baseline_extension.read_bytes()).hexdigest()
manifest['source_commit'] = __import__('subprocess').check_output(['git','rev-parse','HEAD'],cwd=root,text=True).strip()
report['manifest'] = manifest
(out/'summary.json').write_text(json.dumps(report,indent=2)+'\n')
(out/'v-address-validation.json').write_text(json.dumps(address_report,indent=2)+'\n')
with (out/'whole-mnemonics.csv').open('w') as f:
    writer = csv.DictWriter(f,fieldnames=list(csv_rows[0]),lineterminator='\n')
    writer.writeheader()
    writer.writerows(csv_rows)
