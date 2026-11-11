"""Launch one ZYFA FP8 attention kernel repeatedly for ATT capture.

Uses the same inputs as benchmark-before-after.py (seed 29, BSHD, causal,
output+LSE) so the traced dispatch matches the timed configuration.
"""
import argparse
import math
from pathlib import Path
import sys

parser = argparse.ArgumentParser()
parser.add_argument('--dim', type=int, choices=(128, 192), required=True)
parser.add_argument('--group', type=int, default=1)
parser.add_argument('--length', type=int, default=8192)
parser.add_argument('--backend', choices=('hip', 'asm'), required=True)
parser.add_argument('--iters', type=int, default=12)
parser.add_argument('--root', type=Path, default=None,
                    help='source tree whose in-place zyfa extension to load (default: installed)')
args = parser.parse_args()
if args.root is not None:
    sys.path.insert(0, str(args.root.resolve()))

import torch  # noqa: E402
import zyfa  # noqa: E402
from zyfa import _C  # noqa: E402

if args.root is not None:
    assert Path(_C.__file__).resolve().is_relative_to(args.root.resolve()), _C.__file__

torch.manual_seed(29)
heads = max(32, 262144 // args.length)
source = [torch.randn(1, args.length, h, d, device='cuda', dtype=torch.bfloat16) * 0.1
          for h, d in ((heads, args.dim), (heads // args.group, args.dim), (heads // args.group, 128))]
quantized = [zyfa.fp8_quantize(x) for x in source]
tensors = [x[0] for x in quantized]
descales = [x[1] for x in quantized]
kwargs = (1 / math.sqrt(args.dim), True, True, True, 1.0, *descales)
fn = getattr(_C, f'fp8_d{args.dim}' + ('_hip' if args.backend == 'hip' else ''))
for _ in range(args.iters):
    fn(*tensors, *kwargs)
torch.cuda.synchronize()
