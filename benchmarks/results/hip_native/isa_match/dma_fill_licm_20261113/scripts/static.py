"""Static summary per kernel of an llc .s or inspect disassembly.s: instruction count, s_nop count,
SGPR/VGPR use, spills, copies (v_mov/s_mov between registers), scratch.

Usage: static.py FILE.s [FILE.s ...]
"""
import re
import sys
from collections import Counter


def short(kernel):
    m = re.search(r'attendILi(\d+)E(?:Lb([01])E)?', kernel)
    return f'd{m.group(1)}' + ({'1': ' all', '0': ' gen'}.get(m.group(2), '')) if m else kernel[:20]


def parse(path):
    text = open(path).read()
    res = {}
    for sec in text.split('  - .agpr_count:')[1:]:
        name = re.search(r'\.name:\s+(\S+)', sec)[1]
        f = {}
        for k in ('sgpr_count', 'vgpr_count', 'sgpr_spill_count', 'vgpr_spill_count', 'private_segment_fixed_size'):
            m = re.search(r'\.' + k + r':\s*(\d+)', sec)
            f[k] = int(m[1]) if m else -1
        res[short(name)] = f
    kernels = {}
    kernel = None
    for line in text.splitlines():
        m = re.match(r'^(_Z\w+):', line)
        if m:
            kernel = short(m.group(1))
            kernels[kernel] = Counter()
            continue
        if kernel is None:
            continue
        if line.startswith('.Lfunc_end') or line.startswith('\t.size') or line.startswith('\t.section'):
            kernel = None
            continue
        s = line.strip()
        if not s or s.startswith(';') or s.startswith('.') or s.endswith(':'):
            continue
        op = s.split()[0]
        c = kernels[kernel]
        c['insts'] += 1
        c[op] += 1
        if re.match(r'^(v_mov_b32\w*|s_mov_b32|s_mov_b64)\s+[vs]\[?\d+.*,\s*[vs]\[?\d+', s):
            c['copies'] += 1
    return kernels, res


for path in sys.argv[1:]:
    kernels, res = parse(path)
    print(path)
    for k, c in kernels.items():
        r = res.get(k, {})
        print(f'  {k:8} insts {c["insts"]:5} s_nop {c["s_nop"]:3} s_mul {c["s_mul_i32"]:3} s_lshl {c["s_lshl_b32"]:3} '
              f'copies {c["copies"]:4} SGPR {r.get("sgpr_count")} VGPR {r.get("vgpr_count")} '
              f'spill v{r.get("vgpr_spill_count")}/s{r.get("sgpr_spill_count")} scratch {r.get("private_segment_fixed_size")}')
