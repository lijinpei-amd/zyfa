"""Lists each LDS DMA in an llc .s file with its kernel, enclosing block label and the code between
the preceding M0 write and the DMA.

Usage: dma_sites.py FILE.s [KERNEL_SUBSTRING]
"""
import re
import sys

path = sys.argv[1]
want = sys.argv[2] if len(sys.argv) > 2 else ''
kernel = None
block = None
lines = open(path).read().splitlines()
insts = []  # (kernel, block, lineno, text)
for i, line in enumerate(lines):
    m = re.match(r'^(_Z\w+):', line)
    if m:
        kernel = m.group(1)
        block = 'entry'
        continue
    if line.startswith('.Lfunc_end'):
        kernel = None
        continue
    if kernel is None:
        continue
    m = re.match(r'^(\.LBB\w+|; %bb\.\d+):\s*(?:;\s*(.*))?$', line)
    if m:
        block = (m.group(1) + ' ' + (m.group(2) or '')).strip()
        continue
    s = line.strip()
    if not s or s.startswith(';') or s.startswith('.'):
        continue
    insts.append((kernel, block, i + 1, s.split(';')[0].strip()))

last_m0 = None
for idx, (k, b, ln, t) in enumerate(insts):
    if want not in k:
        continue
    if re.match(r'^\S+\s+m0\b', t):
        last_m0 = idx
    if re.search(r'\blds$', t) and t.startswith('buffer_load'):
        between = [x[3] for x in insts[last_m0 + 1:idx]] if last_m0 is not None else []
        print(f'{ln:6d} [{b}] m0@{insts[last_m0][2] if last_m0 is not None else "-"}: '
              f'{insts[last_m0][3] if last_m0 is not None else ""} | between={between}')
