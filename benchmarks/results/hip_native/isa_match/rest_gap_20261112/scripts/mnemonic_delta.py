"""Per-mnemonic change between two built trees (retained-instruction filter of histogram.py), with the
assembly count, and the protected mnemonics (memory, f32/bf16/fp8) that changed.

Usage: mnemonic_delta.py BEFORE_TREE AFTER_TREE
"""
import sys
from collections import Counter
from pathlib import Path

before, after = Path(sys.argv[1]), Path(sys.argv[2])
sys.path.insert(0, str(after))
from benchmarks.compare_isa import excluded_reason, parse_disassembly, select_function  # noqa: E402

REF = Path('/home/jinpli/workspace/home/jinpli/development/zyfa/benchmarks/results/hip_native/isa_match/baseline')
LANES = {'v_readlane_b32', 'v_writelane_b32'}


def counts(path, dim):
    code = [i for i in select_function(parse_disassembly(path.read_text()), dim) if i.mnemonic not in LANES]
    return Counter(i.mnemonic for i in code if excluded_reason(i) is None)


def protected(op):
    return op.startswith(('ds_', 'buffer_', 'global_')) or any(x in op for x in ('f32', 'bf16', 'fp8'))


for dim in (128, 192):
    b, a = counts(before / 'inspect/disassembly.s', dim), counts(after / 'inspect/disassembly.s', dim)
    ref = counts(REF / f'assembly_d{dim}.s', dim)
    d = {k: a[k] - b[k] for k in a.keys() | b.keys() if a[k] != b[k]}
    print(f'd{dim}:', ', '.join(f'{k} {v:+d} (now {a[k]}, asm {ref[k]})' for k, v in sorted(d.items())))
    print(f'  protected mnemonics changed: {sorted(k for k in d if protected(k))}')
