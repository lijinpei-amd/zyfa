"""Runs the disassembly-only codegen tests of tests/test_fp8_hip_codegen.py against TREE/inspect/disassembly.s.

Usage: dis_tests.py TREE   (imports the test module from TREE)
"""
import importlib.util
import inspect
import sys
from pathlib import Path

tree = Path(sys.argv[1])
sys.path.insert(0, str(tree))
spec = importlib.util.spec_from_file_location('codegen', tree / 'benchmarks/../tests/test_fp8_hip_codegen.py')
mod = importlib.util.module_from_spec(spec)
spec.loader.exec_module(mod)
import subprocess
OBJDUMP = '/home/jinpli/workspace/home/jinpli/development/workspace/01/llvm-project/build/bin/llvm-objdump'
asm = [subprocess.run([OBJDUMP, '--disassemble', '--mcpu=gfx950', str(tree / f'build/include/generated/fmha_fp8_d{d}_pp.co')],
                      capture_output=True, text=True, check=True).stdout for d in (128, 192)]
text = (tree / 'inspect/disassembly.s').read_text()
fails = 0
for name, fn in sorted(vars(mod).items()):
    if not name.startswith('test_') or not callable(fn):
        continue
    params = list(inspect.signature(fn).parameters)
    if not params or params[0] != 'disassembled_kernels':
        continue
    marks = getattr(fn, 'pytestmark', [])
    cases = [()]
    for m in marks:
        if m.name == 'parametrize':
            names = [n.strip() for n in m.args[0].split(',')] if isinstance(m.args[0], str) else list(m.args[0])
            vals = [v if isinstance(v, tuple) else (v,) for v in m.args[1]]
            cases = [c + v for c in cases for v in vals]
    for c in cases:
        try:
            fn([text] + asm, *c)
            status = 'ok'
        except Exception as e:
            fails += 1
            status = f'FAIL {type(e).__name__}: {str(e)[:150]}'
        print(f'{name}{list(c)}: {status}')
print('failures', fails)
