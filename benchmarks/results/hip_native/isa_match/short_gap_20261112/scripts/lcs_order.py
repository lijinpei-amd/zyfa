"""Exact whole-kernel instruction-order match against the assembly: length of the longest common subsequence
of retained mnemonics (same filter as histogram.py), computed with the bit-parallel LCS algorithm
(Allison-Dix / Hyyro). difflib's matching blocks (order_match.py) are not a true LCS and move by
hundreds when unrelated code shifts.

Usage: lcs_order.py TREE [TREE ...]
"""
from pathlib import Path
import sys

WT = Path('/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261112/short-gap/trees/head')
sys.path.insert(0, str(WT))
from benchmarks.compare_isa import excluded_reason, parse_disassembly, select_function  # noqa: E402

REF = Path('/home/jinpli/workspace/home/jinpli/development/zyfa/benchmarks/results/hip_native/isa_match/baseline')
LANES = {'v_readlane_b32', 'v_writelane_b32'}


def lcs(a, b):
    masks = {}
    for i, x in enumerate(a):
        masks[x] = masks.get(x, 0) | (1 << i)
    full = (1 << len(a)) - 1
    v = full
    for y in b:
        m = masks.get(y, 0)
        u = v & m
        v = ((v + u) | (v - u)) & full
    return len(a) - bin(v).count('1')


for tree in sys.argv[1:]:
    funcs = parse_disassembly((Path(tree) / 'inspect/disassembly.s').read_text())
    for dim in (128, 192):
        new = [i.mnemonic for i in select_function(funcs, dim) if i.mnemonic not in LANES and excluded_reason(i) is None]
        ref = [i.mnemonic for i in select_function(parse_disassembly((REF / f'assembly_d{dim}.s').read_text()), dim)
               if excluded_reason(i) is None]
        n = lcs(ref, new)
        print(f'{Path(tree).name} d{dim}: LCS {n} of asm {len(ref)} / hip {len(new)}; unmatched asm {len(ref) - n}, '
              f'hip {len(new) - n}')
