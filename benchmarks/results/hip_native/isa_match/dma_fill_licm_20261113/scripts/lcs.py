"""Exact LCS of the mnemonic sequences in a compare_isa.py output directory (llvm vs reference)."""
import sys
from pathlib import Path

def mnemonics(path):
    return [line.split()[0] for line in Path(path).read_text().splitlines() if line.strip() and not line.startswith(('#', ';'))]

def lcs(a, b):
    # Bit-parallel LCS (Allison-Dix / Hyyro).
    masks = {}
    for i, x in enumerate(a):
        masks[x] = masks.get(x, 0) | (1 << i)
    v = (1 << len(a)) - 1
    full = v
    for y in b:
        u = v & masks.get(y, 0)
        v = ((v + u) | (v - u)) & full
    return len(a) - bin(v).count('1')

for d in sys.argv[1:]:
    a = mnemonics(Path(d) / 'reference.filtered.s'); b = mnemonics(Path(d) / 'llvm.filtered.s')
    print(f'{Path(d).name}: LCS {lcs(a, b)} of asm {len(a)} / hip {len(b)}')
