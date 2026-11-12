"""Region comparison of the rest-gap final candidate against the assembly and HEAD (4a2e4fb) ATT captures.

Runs short-gap/scripts/regions.py compare per case with the clean guarded captures (g1 = SE 0, g2 = SE 1,
pooled): assembly v2-v5 and HEAD (d128 from short-gap C2 v15-v18, d192 from C4 v22-v25, code identical
to 4a2e4fb) from short-gap/att/capdirs.json, the final candidate from rest-gap/att/guarded.

Usage: att_compare.py OUT_DIR
"""
import glob
import json
import os
import subprocess
import sys

SG = '/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261112/short-gap'
RG = '/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261112/rest-gap'
PY = '/home/jinpli/workspace/home/jinpli/venv/01/bin/python'
REGIONS = f'{SG}/scripts/regions.py'
DIS = {'head': f'{SG}/trees/c5/inspect/disassembly.s', 'final': f'{RG}/trees/final/inspect/disassembly.s'}
CASES = {
    'd128-gqa4-256': ('v2', 'v15', 'v27'), 'd128-mha-256': ('v3', 'v16', 'v28'),
    'd128-gqa4-1024': ('v4', 'v17', 'v29'), 'd128-mha-1024': ('v5', 'v18', 'v30'),
    'd192-mha-256': ('v2', 'v22', 'v26'), 'd192-gqa4-256': ('v3', 'v23', 'v27'),
    'd192-mha-1024': ('v4', 'v24', 'v28'), 'd192-gqa4-1024': ('v5', 'v25', 'v29'),
}
out = sys.argv[1]
os.makedirs(out, exist_ok=True)
old = json.load(open(f'{SG}/att/capdirs.json'))
new = {}
for path in sorted(glob.glob(f'{RG}/att/guarded/*/capture.json')):
    label = os.path.basename(os.path.dirname(path))
    if 'contaminated' in label:
        continue
    d = json.load(open(path))
    if d.get('result', {}).get('verdict', '').startswith('OK'):
        new[label] = d['output-dir']
json.dump(new, open(f'{out}/capdirs-final.json', 'w'), indent=1)
for case, (va, vh, vf) in CASES.items():
    dim = case[1:4]
    asm = ','.join(old[f'zyfa_fp8_d{dim}_asm-{va}-{r}'] for r in ('g1', 'g2'))
    head = ','.join(old[f'zyfa_fp8_d{dim}_hip-{vh}-{r}'] for r in ('g1', 'g2'))
    final = ','.join(new[k] for k in (f'zyfa_fp8_d{dim}_hip-{vf}-g1', f'zyfa_fp8_d{dim}_hip-{vf}-g2') if k in new)
    if not final:
        print(case, 'no final capture')
        continue
    for name, (la, ka, ca, da) in (('asm-vs-final', ('asm', f'asm{dim}', asm, None)),
                                   ('head-vs-final', ('head', f'hip{dim}', head, DIS['head']))):
        cmd = [PY, REGIONS, 'compare', la, ka, ca, 'final', f'hip{dim}', final,
               '--dis-b', DIS['final'], '--json', f'{out}/{name}-{case}.json']
        if da:
            cmd += ['--dis-a', da]
        r = subprocess.run(cmd, capture_output=True, text=True)
        text = f'# {case}: {la} vs final (g1+g2 pooled)\n' + r.stdout + r.stderr
        open(f'{out}/{name}-{case}.txt', 'w').write(text)
        print(text)
