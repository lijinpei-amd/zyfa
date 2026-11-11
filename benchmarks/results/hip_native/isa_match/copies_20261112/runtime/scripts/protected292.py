"""ac8512a verify-integrated.py static checks, adapted for 292d02a (expected SGPRs 77/79 instead of 88/90).

Usage: protected292.py TREE INSPECT_DIR OUTPUT_JSON
Checks: setup.py has -disable-machine-licm and the source has one licm(disable) pragma; resources (VGPR/SGPR
244/77 and 206/79, zero spills and private segment, other fields equal to ac8512a's capture); no SGPR lane spills
or scratch; strict loops exact vs the assembly reference; ADD3 == 0, MAD_U24 4/3, MUL_LO 7; the codegen-test PV
address and u24 setup helpers; protected mnemonic counts (ds_/buffer_/global_/f32/bf16/fp8) equal to both the
ac8512a capture (lds_licm_mask_20261111/owning) and the 4dd38ce capture (runtime_add3_20261111/owning).
"""
import importlib.util
import json
import re
import sys
from collections import Counter
from pathlib import Path

tree, inspect_dir, output = Path(sys.argv[1]), Path(sys.argv[2]), Path(sys.argv[3])
sys.path.insert(0, str(tree))
from benchmarks.compare_isa import compare, excluded_reason, parse_disassembly, select_function, steady_loop

RES = Path('/home/jinpli/workspace/home/jinpli/development/zyfa/benchmarks/results/hip_native/isa_match')
CAPTURES = {'ac8512a': RES / 'lds_licm_mask_20261111/owning', '4dd38ce': RES / 'runtime_add3_20261111/owning'}
LANES = {'v_readlane_b32', 'v_writelane_b32'}
protected = lambda op: op.startswith(('ds_', 'buffer_', 'global_')) or any(x in op for x in ('f32', 'bf16', 'fp8'))


def resources(path):
    fields = ('group_segment_fixed_size', 'kernarg_segment_align', 'kernarg_segment_size', 'max_flat_workgroup_size',
              'private_segment_fixed_size', 'sgpr_count', 'sgpr_spill_count', 'vgpr_count', 'vgpr_spill_count',
              'wavefront_size')
    result = {}
    for section in path.read_text().split('  - .agpr_count:')[1:]:
        dim = int(re.search(r'\.name:.*ILi(128|192)E', section)[1])
        result[dim] = {f: int(re.search(r'\.' + f + r':\s*(\d+)', section)[1]) for f in fields}
    return result


report = {'checks': {}}
c = report['checks']
c['setup_disable_machine_licm'] = '-mllvm=-disable-machine-licm' in (tree / 'setup.py').read_text()
c['one_licm_disable_pragma'] = (tree / 'csrc/fp8_native.hip').read_text().count('#pragma clang loop licm(disable)') == 1
res = resources(inspect_dir / 'metadata.txt')
before = resources(CAPTURES['ac8512a'] / 'metadata.txt')
report['resources'] = res
report['resources_ac8512a'] = before
for dim, (v, s) in {128: (244, 77), 192: (206, 79)}.items():
    c[f'd{dim}_vgpr_sgpr_{v}_{s}'] = (res[dim]['vgpr_count'], res[dim]['sgpr_count']) == (v, s)
    c[f'd{dim}_zero_spills_private'] = res[dim]['vgpr_spill_count'] == res[dim]['sgpr_spill_count'] == \
        res[dim]['private_segment_fixed_size'] == 0
    c[f'd{dim}_other_resources_equal_ac8512a'] = all(
        res[dim][f] == before[dim][f] for f in ('group_segment_fixed_size', 'kernarg_segment_align',
                                                'kernarg_segment_size', 'max_flat_workgroup_size', 'wavefront_size'))
spec = importlib.util.spec_from_file_location('codegen_checks', tree / 'tests/test_fp8_hip_codegen.py')
checks = importlib.util.module_from_spec(spec)
spec.loader.exec_module(checks)
text = (inspect_dir / 'disassembly.s').read_text()
report['dimensions'] = {}
for dim, mads, mfmas in ((128, 4, 72), (192, 3, 44)):
    new = select_function(parse_disassembly(text), dim)
    ref = select_function(parse_disassembly((RES / f'baseline/assembly_d{dim}.s').read_text()), dim)
    loop = compare(steady_loop(ref, mfmas), steady_loop(new, mfmas))
    count = lambda code: Counter(i.mnemonic for i in code if i.mnemonic not in LANES and excluded_reason(i) is None)
    nc = count(new)
    d = {'instructions': len(new), 'strict_loop_instructions': loop['llvm_instruction_count'],
         'strict_loop_exact': loop['counts_match'] and loop['sequence_match'],
         'no_lane_spills': not any(i.mnemonic in LANES for i in new),
         'no_scratch': not any(i.mnemonic.startswith('scratch_') for i in new),
         'add3==0': nc['v_add3_u32'] == 0, f'mad_u24=={mads}': nc['v_mad_u32_u24'] == mads,
         'mul_lo==7': nc['v_mul_lo_u32'] == 7, 's_waitcnt': nc['s_waitcnt'], 's_nop': nc['s_nop']}
    for name, fn in (('pv_one_v_address', lambda: checks.test_hip_runtime_pv_reuses_one_v_address([text], dim)),
                     ('u24_setup', lambda: checks.test_hip_setup_offsets_fuse_to_u24_mads([text], dim, mads))):
        try:
            fn()
            d[name] = True
        except AssertionError as e:
            d[name] = f'FAIL {str(e)[:300]}'
    for label, capture in CAPTURES.items():
        oc = count(select_function(parse_disassembly((capture / 'disassembly.s').read_text()), dim))
        diff = {op: [oc[op], nc[op]] for op in nc.keys() | oc.keys() if protected(op) and nc[op] != oc[op]}
        d[f'protected_equal_{label}'] = not diff
        if diff:
            d[f'protected_diff_{label}'] = diff
        d[f'whole_change_vs_{label}'] = {op: nc[op] - oc[op] for op in sorted(nc.keys() | oc.keys())
                                         if nc[op] != oc[op]}
    report['dimensions'][dim] = d
flags = [v for v in c.values()] + [v for d in report['dimensions'].values() for k, v in d.items()
                                    if isinstance(v, bool) or (isinstance(v, str) and v.startswith('FAIL'))]
report['all_ok'] = all(v is True for v in flags)
output.write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({'checks': c, 'dimensions': {k: {kk: vv for kk, vv in v.items() if not kk.startswith('whole_change')}
                                              for k, v in report['dimensions'].items()},
                  'all_ok': report['all_ok']}, indent=1))
