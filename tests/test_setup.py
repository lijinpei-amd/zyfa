import runpy
from pathlib import Path

import pytest
import setuptools
from setuptools import Extension
from setuptools.dist import Distribution
from torch.utils.cpp_extension import BuildExtension
import torch.utils.cpp_extension


ROOT = Path(__file__).resolve().parents[1]


def setup_configuration(monkeypatch, llvm_root):
    """Loads the package configuration without invoking setuptools commands."""
    if llvm_root is None:
        monkeypatch.delenv("ZYFA_NATIVE_LLVM_ROOT", raising=False)
    else:
        monkeypatch.setenv("ZYFA_NATIVE_LLVM_ROOT", llvm_root)
    configuration = {}
    monkeypatch.setattr(setuptools, "setup", lambda **kwargs: configuration.update(kwargs))
    # Constructing CUDAExtension hipifies the source tree before any build runs.
    monkeypatch.setattr(torch.utils.cpp_extension, "CUDAExtension", Extension)
    runpy.run_path(str(ROOT / "setup.py"))
    return configuration


@pytest.mark.parametrize("llvm_root", [None, ""])
def test_default_build_excludes_native_object(monkeypatch, llvm_root):
    configuration = setup_configuration(monkeypatch, llvm_root)
    extension = configuration["ext_modules"][0]
    assert extension.extra_objects == []
    assert "-DZYFA_ENABLE_NATIVE_FP8=1" not in extension.extra_compile_args["nvcc"]
    assert "-DZYFA_ENABLE_NATIVE_FP8=1" not in extension.extra_compile_args["cxx"]


def test_opted_in_build_links_native_object_and_enables_launchers(monkeypatch, tmp_path):
    configuration = setup_configuration(monkeypatch, str(tmp_path / "llvm"))
    extension = configuration["ext_modules"][0]
    assert extension.extra_objects == [str(ROOT / "build/native/fp8_native.o")]
    assert "-DZYFA_ENABLE_NATIVE_FP8=1" in extension.extra_compile_args["nvcc"]
    assert "-DZYFA_ENABLE_NATIVE_FP8=1" in extension.extra_compile_args["cxx"]


@pytest.mark.parametrize("llvm_root", [None, "/custom/llvm"])
def test_build_compiles_native_source_only_when_opted_in(monkeypatch, llvm_root):
    configuration = setup_configuration(monkeypatch, llvm_root)
    commands = []
    monkeypatch.setattr("subprocess.run", lambda command, **kwargs: commands.append(command))
    monkeypatch.setattr(BuildExtension, "run", lambda self: None)
    command = configuration["cmdclass"]["build_ext"](Distribution(), use_ninja=False)
    command.run()
    native_commands = [c for c in commands if str(ROOT / "csrc/fp8_native.hip") in c]
    if llvm_root:
        assert len(native_commands) == 1
        assert native_commands[0][0] == str(Path(llvm_root) / "build/bin/clang++")
    else:
        assert native_commands == []
