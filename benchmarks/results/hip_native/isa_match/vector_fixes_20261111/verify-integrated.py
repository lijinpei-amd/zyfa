from collections import Counter
import csv
import hashlib
import importlib.util
import json
from pathlib import Path
import sys

root = next(p for p in Path(__file__).resolve().parents if (p/'csrc/fp8_native.hip').is_file() and (p/'setup.py').is_file())
sys.path.insert(0, str(root))
from benchmarks.compare_isa import compare, excluded_reason, parse_disassembly, select_function, steady_loop

out = root/'benchmarks/results/hip_native/isa_match/vector_fixes_20261111'
current = out/'owning'
baseline = root/'benchmarks/results/hip_native/isa_match/whole_kernel_fixes_20261111/owning'
functions = parse_disassembly((current/'disassembly.s').read_text())
before_functions = parse_disassembly((baseline/'disassembly.s').read_text())
spec = importlib.util.spec_from_file_location('vector_fix_codegen_checks', root/'tests/test_fp8_hip_codegen.py')
checks = importlib.util.module_from_spec(spec)
spec.loader.exec_module(checks)
lanes = {'v_readlane_b32', 'v_writelane_b32'}
report = {'filter':'scratch/register copies/native SGPR lane spills excluded; literal initialization retained',
          'dimensions':{}}
csv_rows = []
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
    assert nc['v_add3_u32'] == 6
    assert nc['v_mad_u32_u24'] == mads
    assert nc['v_mul_lo_u32'] == 7
    checks.test_hip_runtime_pv_reuses_one_v_address([(current/'disassembly.s').read_text()],dim)
    checks.test_hip_setup_offsets_fuse_to_u24_mads([(current/'disassembly.s').read_text()],dim,mads)
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
manifest['source_commit'] = __import__('subprocess').check_output(['git','rev-parse','HEAD'],cwd=root,text=True).strip()
report['manifest'] = manifest
(out/'summary.json').write_text(json.dumps(report,indent=2)+'\n')
with (out/'whole-mnemonics.csv').open('w') as f:
    writer = csv.DictWriter(f,fieldnames=list(csv_rows[0]),lineterminator='\n')
    writer.writeheader()
    writer.writerows(csv_rows)
