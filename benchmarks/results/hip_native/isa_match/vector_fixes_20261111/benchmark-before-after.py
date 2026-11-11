import argparse
import hashlib
import importlib.util
import json
import math
from pathlib import Path
import statistics
import sys

root = next(p for p in Path(__file__).resolve().parents if (p/'csrc/fp8_native.hip').is_file() and (p/'setup.py').is_file())
sys.path.insert(0, str(root))
from benchmarks.benchmark_hip import correctness, kernel_time
import torch
import zyfa
from zyfa import _C

parser = argparse.ArgumentParser()
parser.add_argument('--baseline-extension', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
parser.add_argument('--warmup', type=int, default=200)
parser.add_argument('--iters', type=int, default=100)
parser.add_argument('--repeats', type=int, default=5)
args = parser.parse_args()
spec = importlib.util.spec_from_file_location('_C', args.baseline_extension.resolve())
before = importlib.util.module_from_spec(spec)
spec.loader.exec_module(before)
report = {'baseline_extension_sha256': hashlib.sha256(args.baseline_extension.read_bytes()).hexdigest(),
          'current_extension_sha256': hashlib.sha256(Path(_C.__file__).read_bytes()).hexdigest(),
          'source_sha256': hashlib.sha256((root/'csrc/fp8_native.hip').read_bytes()).hexdigest(),
          'gpu': torch.cuda.get_device_name(),
          'protocol': {'warmup': args.warmup, 'iters': args.iters, 'repeats': args.repeats,
                       'seed': 29, 'layout': 'bshd', 'return_lse': True, 'same_process': True}, 'cases': []}
args.output.mkdir(parents=True, exist_ok=True)
print('dim group length before_us after_us asm_us change_pct', flush=True)
for dim in (128, 192):
    for group in (1, 4):
        for length in (256, 1024, 8192):
            torch.manual_seed(29)
            heads = max(32, 262144//length)
            source = [torch.randn(1, length, h, d, device='cuda', dtype=torch.bfloat16)*0.1
                      for h,d in ((heads,dim),(heads//group,dim),(heads//group,128))]
            quantized = [zyfa.fp8_quantize(x) for x in source]
            tensors = [x[0] for x in quantized]
            descales = [x[1] for x in quantized]
            kwargs = (1/math.sqrt(dim), True, True, True, 1.0, *descales)
            functions = {name: (lambda fn=getattr(module, f'fp8_d{dim}' + suffix): fn(*tensors, *kwargs))
                         for name,module,suffix in [('before',before,'_hip'),('after',_C,'_hip'),('assembly',_C,'')]}
            a,b = functions['before'](), functions['after']()
            equal = [bool(torch.equal(x.view(torch.int16 if i == 0 else torch.int32),
                                     y.view(torch.int16 if i == 0 else torch.int32)))
                     for i,(x,y) in enumerate(zip(a,b))]
            assert all(equal), (dim,group,length,equal)
            rms = correctness(b[0], tensors, descales)
            samples = {name: [] for name in functions}
            names = {}
            for repeat in range(args.repeats):
                order = ('before','after','assembly') if repeat%2 == 0 else ('assembly','after','before')
                for name in order:
                    us,names[name] = kernel_time(functions[name],args.warmup,args.iters)
                    samples[name].append(us)
            medians = {name: statistics.median(values) for name,values in samples.items()}
            change = 100*(medians['after']/medians['before']-1)
            report['cases'].append({'dim':dim,'group':group,'length':length,'heads':heads,
                                    'medians_us':medians,'samples_us':samples,'kernel_names':names,
                                    'change_pct':change,'bitwise_output_lse_equal':equal,'relative_rms':rms})
            (args.output/'benchmark.json').write_text(json.dumps(report,indent=2)+'\n')
            print(f'{dim} {group} {length} {medians["before"]:.2f} {medians["after"]:.2f} '
                  f'{medians["assembly"]:.2f} {change:+.2f}%',flush=True)
