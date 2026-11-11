"""Provenance for the GPU validation of 3ff0230.

Usage: provenance.py WORKTREE INSPECT_DIR REFERENCE_INSPECT_DIR EXTENSION OUTPUT_JSON

Checks that the linked extension embeds exactly the inspected native fatbin, that
its code object matches the investigation's reference build (executable sections and
every instruction), and records hashes, resources and strict-loop status.
"""
import hashlib
import json
import re
import struct
import subprocess
import sys
from pathlib import Path

worktree, inspect_dir, reference_dir, extension, output = map(Path, sys.argv[1:6])
sys.path.insert(0, str(worktree))
from benchmarks.compare_isa import compare, parse_disassembly, select_function, steady_loop

sha = lambda p: hashlib.sha256(Path(p).read_bytes()).hexdigest()
owning = Path('/home/jinpli/workspace/home/jinpli/development/zyfa/benchmarks/results/hip_native/'
              'isa_match/runtime_add3_20261111/owning')
git = lambda *a: subprocess.check_output(['git', *a], cwd=worktree, text=True).strip()


def elf_sections(path):
    data = path.read_bytes()
    offset = struct.unpack_from('<Q', data, 40)[0]
    size, count, names_index = struct.unpack_from('<HHH', data, 58)
    headers = [struct.unpack_from('<IIQQQQIIQQ', data, offset + i * size) for i in range(count)]
    names = data[headers[names_index][4]:headers[names_index][4] + headers[names_index][5]]
    return {names[h[0]:names.index(b'\x00', h[0])].decode(): data[h[4]:h[4] + h[5]]
            for h in headers if h[1] != 8}


def resources(path):
    fields = ('group_segment_fixed_size', 'private_segment_fixed_size', 'sgpr_count', 'sgpr_spill_count',
              'vgpr_count', 'vgpr_spill_count', 'kernarg_segment_size', 'max_flat_workgroup_size')
    result = {}
    for section in path.read_text().split('  - .agpr_count:')[1:]:
        dim = int(re.search(r'\.name:.*ILi(128|192)E', section)[1])
        result[dim] = {f: int(re.search(r'\.' + f + r':\s*(\d+)', section)[1]) for f in fields}
    return result


report = {}
report['git_head'] = git('rev-parse', 'HEAD')
report['git_status_porcelain'] = git('status', '--porcelain', '--untracked-files=no')
src = worktree / 'csrc/fp8_native.hip'
report['source_sha256'] = sha(src)
report['source_sha256_at_head_blob'] = hashlib.sha256(
    subprocess.check_output(['git', 'show', 'HEAD:csrc/fp8_native.hip'], cwd=worktree)).hexdigest()
report['test_codegen_sha256'] = sha(worktree / 'tests/test_fp8_hip_codegen.py')
manifest = json.loads((inspect_dir / 'manifest.json').read_text())
report['inspect_manifest'] = manifest
report['native_fatbin_sha256'] = sha(inspect_dir / 'native.fatbin')
ext_bytes = extension.read_bytes()
report['extension'] = str(extension)
report['extension_sha256'] = hashlib.sha256(ext_bytes).hexdigest()
report['extension_native_fatbin_occurrences'] = ext_bytes.count((inspect_dir / 'native.fatbin').read_bytes())
report['extension_owning_fatbin_occurrences'] = ext_bytes.count((owning / 'native.fatbin').read_bytes())
report['extension_native_code_object_occurrences'] = ext_bytes.count((inspect_dir / 'native.co').read_bytes())

# Reference: the investigation's v9-final build (llvm-lds-licm Release build, flag at default).
ref_sections = elf_sections(reference_dir / 'native.co')
cur_sections = elf_sections(inspect_dir / 'native.co')
report['reference_dir'] = str(reference_dir)
report['reference_code_object_sha256'] = sha(reference_dir / 'native.co')
report['code_object_sha256'] = sha(inspect_dir / 'native.co')
report['reference_source_sha256'] = json.loads((reference_dir / 'manifest.json').read_text())['native_source_sha256']
report['section_names_equal'] = ref_sections.keys() == cur_sections.keys()
report['differing_sections'] = sorted(n for n in cur_sections if n in ref_sections and cur_sections[n] != ref_sections[n])
for name in ('.text', '.rodata', '.note'):
    report[f'{name}_identical_to_reference'] = cur_sections.get(name) == ref_sections.get(name)
report['text_sha256'] = hashlib.sha256(cur_sections['.text']).hexdigest()
report['hip_cuid'] = {n: re.findall(rb'__hip_cuid_[0-9a-f]+', s['.dynstr'])[0].decode()
                      for n, s in (('candidate', cur_sections), ('reference', ref_sections))
                      if b'__hip_cuid_' in s.get('.dynstr', b'')}

cur_funcs = parse_disassembly((inspect_dir / 'disassembly.s').read_text())
ref_funcs = parse_disassembly((reference_dir / 'disassembly.s').read_text())
own_funcs = parse_disassembly((owning / 'disassembly.s').read_text())
report['dimensions'] = {}
for dim, mfmas in ((128, 72), (192, 44)):
    cur, ref, own = (select_function(f, dim) for f in (cur_funcs, ref_funcs, own_funcs))
    sig = lambda code: [(i.address, i.mnemonic, i.operands) for i in code]
    asm_ref = select_function(parse_disassembly(Path(
        '/home/jinpli/workspace/home/jinpli/development/zyfa/benchmarks/results/hip_native/isa_match/baseline/'
        f'assembly_d{dim}.s').read_text()), dim)
    loop = compare(steady_loop(asm_ref, mfmas), steady_loop(cur, mfmas))
    report['dimensions'][dim] = {
        'instructions': len(cur), 'owning_instructions': len(own),
        'instruction_signatures_identical_to_reference': sig(cur) == sig(ref),
        'differs_from_owning': sig(cur) != sig(own),
        'strict_loop_instructions': loop['llvm_instruction_count'],
        'strict_loop_counts_match': loop['counts_match'], 'strict_loop_sequence_match': loop['sequence_match'],
        's_waitcnt': sum(i.mnemonic == 's_waitcnt' for i in cur),
        'owning_s_waitcnt': sum(i.mnemonic == 's_waitcnt' for i in own)}
report['resources'] = resources(inspect_dir / 'metadata.txt')
report['owning_resources'] = resources(owning / 'metadata.txt')
output.write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k: v for k, v in report.items() if k not in ('inspect_manifest',)}, indent=1))
