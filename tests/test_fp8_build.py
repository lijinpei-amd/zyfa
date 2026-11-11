import math

import pytest
import torch

import zyfa
from zyfa import _C


def test_extension_reports_native_fp8_build_capability():
    assert isinstance(getattr(_C, "native_fp8_enabled", None), bool)


@pytest.mark.skipif(not torch.cuda.is_available(), reason="requires gfx950")
def test_python_native_backend_checks_build_before_empty_input(monkeypatch):
    monkeypatch.setattr(_C, "native_fp8_enabled", False, raising=False)
    tensors = [torch.empty(1, h, 0, 128, device="cuda", dtype=torch.float8_e4m3fn) for h in (8, 2, 2)]
    with pytest.raises(RuntimeError, match="ZYFA_NATIVE_LLVM_ROOT"):
        zyfa.flash_attn_func(*tensors, causal=True, layout="bhsd", backend="hip")


@pytest.mark.parametrize("dim", [128, 192])
def test_disabled_native_backend_explains_build_requirement(dim):
    if getattr(_C, "native_fp8_enabled", True):
        pytest.skip("requires a build without the native HIP FP8 backend")
    tensors = [torch.empty(1, 1, 0, d, dtype=torch.float8_e4m3fn) for d in (dim, dim, 128)]
    with pytest.raises(RuntimeError, match="ZYFA_NATIVE_LLVM_ROOT"):
        getattr(_C, f"fp8_d{dim}_hip")(*tensors, 1 / math.sqrt(dim), True, False, False)
