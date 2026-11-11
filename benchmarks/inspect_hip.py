"""Save native HIP code objects, resource metadata, and unrolled loop assembly.

Run after building the native extension with --output DIR. ROCM_PATH selects
the inspection tools; --object overrides build/native/fp8_native.o. All saved
assembly comes from the selected object's embedded code object.
"""

import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess

if __package__:
    from .compare_isa import parse_disassembly, select_function, steady_loop
else:
    from compare_isa import parse_disassembly, select_function, steady_loop


def run(command, output=None):
    """Run a compiler/tool command and optionally save its standard output."""
    result = subprocess.run([str(x) for x in command], capture_output=True, text=True)
    if result.returncode:
        raise RuntimeError(f"tool command failed: {result.returncode=}, stderr={result.stderr!r}")
    if output is not None:
        output.write_text(result.stdout)
    return result.stdout


def main():
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--object", type=Path)
    parser.add_argument("--rocm", type=Path, default=Path(os.environ.get("ROCM_PATH", "/opt/rocm")))
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    obj = args.object or root / "build/native/fp8_native.o"
    if not obj.is_file():
        parser.error("native object not found; build with ZYFA_NATIVE_LLVM_ROOT or pass --object PATH: "
                     + str(obj))
    args.output.mkdir(parents=True, exist_ok=True)
    source = root / "csrc/fp8_native.hip"
    llvm = args.rocm / "llvm/bin"
    fatbin = args.output / "native.fatbin"
    code_object = args.output / "native.co"
    host_copy = args.output / "host-copy.o"
    run([llvm / "llvm-objcopy", "--dump-section", f".hip_fatbin={fatbin}", obj, host_copy])
    host_copy.unlink()
    run([llvm / "clang-offload-bundler", "--unbundle", "--type=o",
         "--targets=hipv4-amdgcn-amd-amdhsa--gfx950", f"--input={fatbin}", f"--output={code_object}"])
    run([llvm / "llvm-readobj", "--notes", code_object], args.output / "metadata.txt")
    assembly = run([llvm / "llvm-objdump", "--disassemble", "--mcpu=gfx950", code_object],
                   args.output / "disassembly.s")
    functions = parse_disassembly(assembly)
    lines = assembly.splitlines()
    for dim, count in ((128, 72), (192, 44)):
        directory = args.output / f"hip_d{dim}"
        directory.mkdir(exist_ok=True)
        body = steady_loop(select_function(functions, dim), count)
        (directory / "steady-loop.s").write_text("".join(lines[i.line - 1] + "\n" for i in body))
    manifest = {"native_source_sha256": hashlib.sha256(source.read_bytes()).hexdigest(),
                "object_sha256": hashlib.sha256(obj.read_bytes()).hexdigest(),
                "code_object_sha256": hashlib.sha256(code_object.read_bytes()).hexdigest(),
                "object": str(obj.resolve()),
                "assembly_origin": "disassembly of the selected object's embedded code object",
                "inspection_tool_version": run([llvm / "llvm-objdump", "--version"]).strip(),
                "lds_bytes_per_block": {"d128": 163840, "d192": 131072}}
    (args.output / "manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
    print(f"Saved native code object, metadata, and loop bodies to {args.output}")


if __name__ == "__main__":
    main()
