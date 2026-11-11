"""Run pytest after pinning zyfa to the current directory's tree.

Usage (from the tree root): run-pytest.py EXPECTED_EXTENSION_SHA256 [pytest args...]
The editable install's finder would otherwise resolve zyfa to the main checkout.
"""
import hashlib
import os
import sys
from pathlib import Path

sys.path.insert(0, os.getcwd())
import zyfa
from zyfa import _C

digest = hashlib.sha256(Path(_C.__file__).read_bytes()).hexdigest()
print('pinned zyfa:', zyfa.__file__, '_C:', _C.__file__, digest, flush=True)
assert Path(zyfa.__file__).resolve().parent.parent == Path(os.getcwd()).resolve(), zyfa.__file__
assert digest == sys.argv[1], (digest, sys.argv[1])
import pytest
code = pytest.main(sys.argv[2:])
assert sys.modules['zyfa'] is zyfa and sys.modules['zyfa._C'] is _C
print('pytest exit code', int(code), 'zyfa still', zyfa.__file__, flush=True)
raise SystemExit(code)
