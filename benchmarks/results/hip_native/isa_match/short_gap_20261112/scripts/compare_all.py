"""HIP vs assembly region comparison for every captured case.

Usage: compare_all.py OUT_PREFIX HIP_TAG ASM_TAG [REP ...]
  Captures are looked up in att/capdirs.json by '<kernel>-<version>-<rep>' with the version table below;
  several reps are pooled. Writes OUT_PREFIX-<case>.txt and OUT_PREFIX.json.
"""
import json
import subprocess
import sys

ROOT = '/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261112/short-gap'
PY = '/home/jinpli/workspace/home/jinpli/venv/01/bin/python'
HERE = '/home/jinpli/workspace/home/jinpli/development/zyfa/.claude/worktrees/agent-ac24e7bfa6fedf3e8/build/sg'
# case -> (hip kernel id, hip version, asm kernel id, asm version)
VERSIONS = {
    'head': {
        'd128-gqa4-256': ('zyfa_fp8_d128_hip', 'v7'), 'd128-mha-256': ('zyfa_fp8_d128_hip', 'v8'),
        'd128-gqa4-1024': ('zyfa_fp8_d128_hip', 'v9'), 'd128-mha-1024': ('zyfa_fp8_d128_hip', 'v10'),
        'd192-mha-256': ('zyfa_fp8_d192_hip', 'v6'), 'd192-gqa4-256': ('zyfa_fp8_d192_hip', 'v7'),
        'd192-mha-1024': ('zyfa_fp8_d192_hip', 'v8'), 'd192-gqa4-1024': ('zyfa_fp8_d192_hip', 'v9')},
    'asm': {
        'd128-gqa4-256': ('zyfa_fp8_d128_asm', 'v2'), 'd128-mha-256': ('zyfa_fp8_d128_asm', 'v3'),
        'd128-gqa4-1024': ('zyfa_fp8_d128_asm', 'v4'), 'd128-mha-1024': ('zyfa_fp8_d128_asm', 'v5'),
        'd192-mha-256': ('zyfa_fp8_d192_asm', 'v2'), 'd192-gqa4-256': ('zyfa_fp8_d192_asm', 'v3'),
        'd192-mha-1024': ('zyfa_fp8_d192_asm', 'v4'), 'd192-gqa4-1024': ('zyfa_fp8_d192_asm', 'v5')},
}


def main():
    out, tag_a, tag_b = sys.argv[1:4]
    reps = sys.argv[4:] or ['r1']
    extra = json.load(open(f'{ROOT}/att/versions-extra.json')) if tag_a not in VERSIONS or tag_b not in VERSIONS else {}
    table = dict(VERSIONS, **extra.get('versions', {}))
    dis = extra.get('dis', {})
    caps = json.load(open(f'{ROOT}/att/capdirs.json'))
    allj = {}
    for case in table[tag_a]:
        if case not in table[tag_b]:
            continue
        dim = case[1:4]
        args = []
        for tag in (tag_a, tag_b):
            kid, ver = table[tag][case]
            dirs = [caps[f'{kid}-{ver}-{r}'] for r in reps if f'{kid}-{ver}-{r}' in caps]
            if not dirs:
                break
            kind = ('asm' if kid.endswith('_asm') else 'hip') + dim
            args += [tag, kind, ','.join(dirs)]
        else:
            cmd = [PY, f'{HERE}/regions.py', 'compare', *args, '--json', f'{out}-{case}.json']
            if tag_a in dis:
                cmd += ['--dis-a', dis[tag_a]]
            if tag_b in dis:
                cmd += ['--dis-b', dis[tag_b]]
            r = subprocess.run(cmd, capture_output=True, text=True)
            text = f'# {case}: {tag_a} vs {tag_b}, reps {reps}\n' + r.stdout + r.stderr
            open(f'{out}-{case}.txt', 'w').write(text)
            print(text)
            allj[case] = f'{out}-{case}.json'
    json.dump(allj, open(f'{out}.json', 'w'), indent=1)


if __name__ == '__main__':
    main()
