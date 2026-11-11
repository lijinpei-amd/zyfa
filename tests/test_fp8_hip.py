import math

import pytest
import torch

import zyfa
from zyfa import _C


pytestmark = pytest.mark.skipif(not torch.cuda.is_available() or not getattr(_C, "native_fp8_enabled", False),
                                reason="requires gfx950 and a build with native HIP FP8 support")


def make_inputs(dim, group, batch, length, grow=False):
    generator = torch.Generator(device="cuda").manual_seed(31)
    heads = 12 if group == 3 else 8
    source = [torch.randn(batch, heads // g, length, d, generator=generator, device="cuda") * 0.4
              for g, d in ((1, dim), (group, dim), (group, 128))]
    if grow:
        source[0][..., 0] = 1
        source[1][..., 0] += torch.arange(length, device="cuda") / 8
    quantized = [zyfa.fp8_quantize(x) for x in source]
    return [x[0] for x in quantized], [x[1] for x in quantized]


def check_reference(output, lse, tensors, descales):
    q, k, v = [x.double() * d for x, d in zip(tensors, descales)]
    length = q.shape[2]
    rows = torch.tensor(sorted(set([0, 31, 32, 63, 64, 127, 128, length // 2, length - 1])),
                        device="cuda")
    rows = rows[rows < length]
    group = q.shape[1] // k.shape[1]
    k, v = [x.repeat_interleave(group, 1) for x in (k, v)]
    scores = q[:, :, rows] @ k.transpose(-1, -2) / math.sqrt(q.shape[-1])
    scores.masked_fill_(torch.arange(length, device="cuda")[None, :] > rows[:, None], -math.inf)
    expected_lse = scores.logsumexp(-1)
    expected = scores.softmax(-1) @ v
    actual = output[:, :, rows].double()
    assert output.dtype == torch.bfloat16
    assert output.isfinite().all()
    assert ((actual - expected).square().mean() / expected.square().mean()).sqrt().item() < 0.05
    assert (lse[:, :, rows].double() - expected_lse).abs().max().item() < 0.06


@pytest.mark.parametrize("dim", [128, 192])
@pytest.mark.parametrize("group", [1, 4, 3])
@pytest.mark.parametrize("bshd", [False, True])
@pytest.mark.parametrize("batch,length,grow", [(1, 256, False), (2, 512, False),
                                             (1, 2048, True), (1, 8192, False)])
def test_hip_causal_heads_tails_and_persistent_jobs(dim, group, bshd, batch, length, grow):
    tensors, descales = make_inputs(dim, group, batch, length, grow)
    args = [x.transpose(1, 2).contiguous() if bshd else x for x in tensors]
    fn = getattr(_C, f"fp8_d{dim}_hip")
    output, lse = fn(*args, 1 / math.sqrt(dim), True, True, bshd, 1.0, *descales)
    if bshd:
        output = output.transpose(1, 2)
    check_reference(output, lse.view(batch, tensors[0].shape[1], length), tensors, descales)


@pytest.mark.parametrize("dim", [128, 192])
@pytest.mark.parametrize("group", [1, 4])
@pytest.mark.parametrize("length", [256, 512])
def test_hip_all_rows_across_ring_entries(dim, group, length):
    tensors, descales = make_inputs(dim, group, 1, length)
    output, lse = getattr(_C, f"fp8_d{dim}_hip")(
        *tensors, 1 / math.sqrt(dim), True, True, False, 1.0, *descales)
    q, k, v = [x.double() * d for x, d in zip(tensors, descales)]
    k, v = [x.repeat_interleave(group, 1) for x in (k, v)]
    scores = q @ k.transpose(-1, -2) / math.sqrt(dim)
    rows = torch.arange(length, device="cuda")
    scores.masked_fill_(rows[None, :] > rows[:, None], -math.inf)
    expected = scores.softmax(-1) @ v
    error = (output.double() - expected).reshape(1, 8, length // 32, 32, 128)
    expected = expected.reshape_as(error)
    rms = (error.square().sum((-1, -2)) / expected.square().sum((-1, -2))).sqrt()
    assert rms.max().item() < 0.05
    assert (lse.view(1, 8, length).double() - scores.logsumexp(-1)).abs().max().item() < 0.06


@pytest.mark.parametrize("dim", [128, 192])
@pytest.mark.parametrize("length", [1, 300, 768])
def test_python_hip_padding(dim, length):
    tensors, descales = make_inputs(dim, 4, 1, length)
    output, lse = zyfa.flash_attn_func(*tensors, causal=True, layout="bhsd", return_lse=True,
                                      backend="hip", **dict(zip(("q_descale", "k_descale", "v_descale"), descales)))
    assert output.shape == (1, 8, length, 128)
    check_reference(output, lse, tensors, descales)


@pytest.mark.parametrize("dim", [128, 192])
def test_python_hip_graph_reads_updated_descales(dim):
    tensors, descales = make_inputs(dim, 4, 1, 512)
    kwargs = dict(causal=True, layout="bhsd", return_lse=True, backend="hip",
                  **dict(zip(("q_descale", "k_descale", "v_descale"), descales)))
    zyfa.flash_attn_func(*tensors, **kwargs)
    torch.cuda.synchronize()
    graph = torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        output, lse = zyfa.flash_attn_func(*tensors, **kwargs)
    before = output.clone()
    for descale, multiplier in zip(descales, (1.1, 0.9, 1.25)):
        descale.mul_(multiplier)
    graph.replay()
    assert not torch.equal(before, output)
    check_reference(output, lse, tensors, descales)


def test_python_hip_backend_validation_and_empty_inputs():
    tensors = [torch.empty(1, h, 0, 128, device="cuda", dtype=torch.float8_e4m3fn) for h in (8, 2, 2)]
    output, lse = zyfa.flash_attn_func(*tensors, causal=True, layout="bhsd", backend="hip", return_lse=True)
    assert output.shape == (1, 8, 0, 128) and lse.shape == (1, 8, 0)
    with pytest.raises(ValueError, match="backend"):
        zyfa.flash_attn_func(*tensors, causal=True, layout="bhsd", backend="missing")
    with pytest.raises(ValueError, match="FP8"):
        zyfa.flash_attn_func(*(x.bfloat16() for x in tensors), causal=True, layout="bhsd", backend="hip")


@pytest.mark.parametrize("dim", [128, 192])
def test_python_hip_compile_is_deterministic(dim):
    tensors, descales = make_inputs(dim, 4, 1, 300)
    kwargs = dict(causal=True, layout="bhsd", return_lse=True, backend="hip",
                  **dict(zip(("q_descale", "k_descale", "v_descale"), descales)))
    def run(q, k, v):
        return zyfa.flash_attn_func(q, k, v, **kwargs)
    expected, expected_lse = run(*tensors)
    actual, actual_lse = torch.compile(run, fullgraph=True)(*tensors)
    assert torch.equal(actual.view(torch.int16), expected.view(torch.int16))
    assert torch.equal(actual_lse.view(torch.int32), expected_lse.view(torch.int32))


@pytest.mark.parametrize("dim", [128, 192])
def test_python_hip_unit_descales_and_fake_operator(dim):
    tensors = [x.float().mul(0.01).to(torch.float8_e4m3fn) for x in make_inputs(dim, 4, 1, 512)[0]]
    kwargs = dict(causal=True, layout="bhsd", backend="hip", return_lse=True)
    output, lse = zyfa.flash_attn_func(*tensors, **kwargs)
    one = torch.ones((), device="cuda", dtype=torch.float32)
    scaled, scaled_lse = zyfa.flash_attn_func(*tensors, q_descale=one, k_descale=one, v_descale=one, **kwargs)
    assert torch.equal(output.view(torch.int16), scaled.view(torch.int16))
    assert torch.equal(lse.view(torch.int32), scaled_lse.view(torch.int32))
    check_reference(output, lse, tensors, [one, one, one])
    torch.library.opcheck(torch.ops.zyfa.fwd_hip.default,
                          (*tensors, 1 / math.sqrt(dim), 1.0, True, False, one, one, one),
                          test_utils="test_faketensor")
