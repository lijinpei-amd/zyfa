"""verify-integrated.py protected ISA checks on a linked build's disassembly.

Usage: protected.py TREE DISASSEMBLY OUTPUT_JSON
Per dimension: strict loop exact vs the assembly reference, ADD3 == 0, MAD_U24 setup count (4/3), MUL_LO == 7,
protected mnemonic counts (ds_/buffer_/global_/f32/bf16/fp8) equal to owning 4dd38ce, and the codegen-test helpers
for the shared PV V address and the u24 setup fusion (from TREE/tests/test_fp8_hip_codegen.py).
"""
import importlib.util
import json
import sys
from collections import Counter
from pathlib import Path

tree, disassembly, output = Path(sys.argv[1]), Path(sys.argv[2]), Path(sys.argv[3])
sys.path.insert(0, str(tree))
from benchmarks.compare_isa import compare, excluded_reason, parse_disassembly, select_function, steady_loop

MAIN = Path('/home/jinpli/workspace/home/jinpli/development/zyfa')
OWN = MAIN / 'benchmarks/results/hip_native/isa_match/runtime_add3_20261111/owning/disassembly.s'
REF = MAIN / 'benchmarks/results/hip_native/isa_match/baseline'
LANES = {'v_readlane_b32', 'v_writelane_b32'}
protected = lambda op: op.startswith(('ds_', 'buffer_', 'global_')) or any(x in op for x in ('f32', 'bf16', 'fp8'))
spec = importlib.util.spec_from_file_location('codegen_checks', tree / 'tests/test_fp8_hip_codegen.py')
checks = importlib.util.module_from_spec(spec)
spec.loader.exec_module(checks)
text = disassembly.read_text()
report, ok = {}, True
for dim, mads, mfmas in ((128, 4, 72), (192, 3, 44)):
    new = select_function(parse_disassembly(text), dim)
    own = select_function(parse_disassembly(OWN.read_text()), dim)
    ref = select_function(parse_disassembly((REF / f'assembly_d{dim}.s').read_text()), dim)
    loop = compare(steady_loop(ref, mfmas), steady_loop(new, mfmas))
    nc, oc = (Counter(i.mnemonic for i in c if i.mnemonic not in LANES and excluded_reason(i) is None)
              for c in (new, own))
    r = {'strict_loop_exact': loop['counts_match'] and loop['sequence_match'],
         'strict_loop_instructions': loop['llvm_instruction_count'],
         'add3==0': nc['v_add3_u32'] == 0, f'mad_u24=={mads}': nc['v_mad_u32_u24'] == mads,
         'mul_lo==7': nc['v_mul_lo_u32'] == 7,
         'protected_equal_owning': all(nc[op] == oc[op] for op in nc.keys() | oc.keys() if protected(op))}
    for name, fn in (('pv_one_v_address', lambda: checks.test_hip_runtime_pv_reuses_one_v_address([text], dim)),
                     ('u24_setup', lambda: checks.test_hip_setup_offsets_fuse_to_u24_mads([text], dim, mads))):
        try:
            fn()
            r[name] = True
        except AssertionError as e:
            r[name] = f'FAIL {str(e)[:300]}'
    diff = {op: [oc[op], nc[op]] for op in nc.keys() | oc.keys() if protected(op) and nc[op] != oc[op]}
    if diff:
        r['protected_diff_owning_vs_new'] = diff
    r['s_waitcnt'] = nc['s_waitcnt']
    ok &= all(v is True for k, v in r.items() if k not in ('strict_loop_instructions', 'protected_diff_owning_vs_new',
                                                             's_waitcnt'))
    report[dim] = r
report['all_ok'] = bool(ok)
output.write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report, indent=1))
