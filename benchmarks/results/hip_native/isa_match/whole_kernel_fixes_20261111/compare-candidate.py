import argparse
import ast
from collections import Counter
from dataclasses import asdict
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess
import sys

ROOT = Path('/home/jinpli/workspace/home/jinpli/development/zyfa')
sys.path.insert(0, str(ROOT))
from benchmarks.compare_isa import compare, excluded_reason, parse_disassembly, select_function, steady_loop

parser = argparse.ArgumentParser()
parser.add_argument('--source-root', type=Path, default=ROOT)
parser.add_argument('--toolchain', type=Path, default=ROOT / 'build/whole-kernel-candidates/toolchain')
parser.add_argument('--output', type=Path, required=True)
parser.add_argument('--extra-device-flag', action='append', default=[])
parser.add_argument('--object', type=Path)
args = parser.parse_args()
args.output.mkdir(parents=True, exist_ok=True)
rocm = Path('/home/jinpli/workspace/home/jinpli/.local/opt/rocm-7.2.3')
obj = args.object or args.output / 'fp8_native.o'
if args.object is None:
    compile_source = args.output / 'source/csrc/fp8_native.hip'
    compile_source.parent.mkdir(parents=True, exist_ok=True)
    for name in ('fp8_native.hip', 'fp8_native.h', 'rt.h', 'llvm.h'):
        shutil.copy2(args.source_root / 'csrc' / name, compile_source.parent / name)
    tree = ast.parse((args.source_root / 'setup.py').read_text())
    hip_flags = next(ast.literal_eval(n.value) for n in tree.body if isinstance(n, ast.Assign) and any(isinstance(t, ast.Name) and t.id == 'hip_flags' for t in n.targets))
    value = next(n.value for n in ast.walk(tree) if isinstance(n, ast.Assign) and any(isinstance(t, ast.Name) and t.id == 'native_flags' for t in n.targets))
    native_flags = eval(compile(ast.Expression(value), '<native_flags>', 'eval'), {'hip_flags': hip_flags, 'str': str, 'rocm': rocm})
    command = [str(args.toolchain / 'build/bin/clang++'), *native_flags]
    for flag in args.extra_device_flag:
        command.extend(['-Xarch_device', '-mllvm=' + flag])
    command += ['-c', str(compile_source), '-o', str(obj)]
    (args.output / 'compile-command.json').write_text(json.dumps(command, indent=2) + '\n')
    result = subprocess.run(command, capture_output=True, text=True)
    (args.output / 'compile.log').write_text(result.stdout + result.stderr)
    if result.returncode:
        raise RuntimeError(f'Compile failed; see {args.output / "compile.log"}')
subprocess.run([sys.executable, str(args.source_root / 'benchmarks/inspect_hip.py'), '--object', str(obj), '--rocm', str(rocm), '--output', str(args.output)], check=True)
manifest_path = args.output / 'manifest.json'
manifest = json.loads(manifest_path.read_text())
if args.object is None:
    manifest['native_source_sha256'] = hashlib.sha256(compile_source.read_bytes()).hexdigest()
    manifest['source_snapshot'] = str(compile_source.resolve())
manifest_path.write_text(json.dumps(manifest, indent=2) + '\n')
functions = parse_disassembly((args.output / 'disassembly.s').read_text())
summary = {}
for dim, mfmas in ((128, 72), (192, 44)):
    llvm = select_function(functions, dim)
    reference = select_function(parse_disassembly((ROOT / f'benchmarks/results/hip_native/isa_match/baseline/assembly_d{dim}.s').read_text()), dim)
    old = select_function(parse_disassembly((ROOT / 'benchmarks/results/hip_native/isa_match/offsets_owning_20261111/disassembly.s').read_text()), dim)
    loop = compare(steady_loop(reference, mfmas), steady_loop(llvm, mfmas))
    lanes = {'v_readlane_b32', 'v_writelane_b32'}
    excluded_lanes = [asdict(i) for i in llvm if i.mnemonic in lanes]
    llvm_kept = [i for i in llvm if i.mnemonic not in lanes]
    old_kept = [i for i in old if i.mnemonic not in lanes]
    whole = compare(reference, llvm_kept)
    change = compare(old_kept, llvm_kept)
    for name, result in [('loop', loop), ('kernel', whole), ('baseline-change', change)]:
        (args.output / f'd{dim}-{name}.json').write_text(json.dumps(result, indent=2) + '\n')
    (args.output / f'd{dim}-excluded-lane-spills.json').write_text(json.dumps(excluded_lanes, indent=2) + '\n')
    deltas = [v['delta'] for v in whole['count_differences'].values()]
    summary[str(dim)] = {'reference': whole['reference_instruction_count'], 'hip': whole['llvm_instruction_count'], 'owning_baseline': change['reference_instruction_count'], 'positive_delta_sum': sum(max(v, 0) for v in deltas), 'negative_delta_sum': sum(min(v, 0) for v in deltas), 'changed_vs_baseline': change['count_differences'], 'loop_counts_match': loop['counts_match'], 'loop_sequence_match': loop['sequence_match'], 'loop_first_mismatch': loop['first_mismatch'], 'whole_first_mismatch': whole['first_mismatch'], 'excluded_lane_spills': len(excluded_lanes)}
    print(f'd{dim}: reference={summary[str(dim)]["reference"]} hip={summary[str(dim)]["hip"]}; +{summary[str(dim)]["positive_delta_sum"]} {summary[str(dim)]["negative_delta_sum"]}; loop={loop["counts_match"]}/{loop["sequence_match"]}', flush=True)
    for op, counts in sorted(change['count_differences'].items(), key=lambda p: -abs(p[1]['delta']))[:10]:
        print(f'  {op}: baseline={counts["reference"]} candidate={counts["llvm"]} delta={counts["delta"]:+}')
(args.output / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
if not all(x['loop_counts_match'] and x['loop_sequence_match'] for x in summary.values()):
    sys.exit(2)
