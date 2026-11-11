#pragma once

#include <hip/hip_runtime.h>
#include <cstddef>
#include <cstdint>

namespace fmha_fp8_native {

struct alignas(8) Args128 {
    const void *q, *k, *v;
    void *o, *lse;
    const void *tab;
    float c8, sl2, b8k;
    uint32_t n_jobs, num_q, qw, pair, q_ss, kv_ss, o_ss, q_sh2, o_sh2, l_sh2, n_keys, grid;
    float v_scale;
    uint32_t pad[4];
    const float *q_descale, *k_descale, *v_descale;
};

struct alignas(8) Args192 {
    const void *q, *k, *v;
    void *o, *lse;
    const void *tab;
    float sl2;
    uint32_t n_jobs, num_q, qw, pair, q_ss, k_ss, v_ss, o_ss, q_sh2, o_sh2, l_sh2, n_keys, grid;
    float v_scale;
    uint32_t pad[5];
    const float *q_descale, *k_descale, *v_descale;
};

static_assert(sizeof(Args128) == 152 && offsetof(Args128, q_descale) == 128);
static_assert(sizeof(Args192) == 152 && offsetof(Args192, q_descale) == 128);

// K/V byte strides must be below 2^24: kv_ss for d128, k_ss and v_ss for d192.
// Launchers reject larger unsigned strides with hipErrorInvalidValue before enqueue.
hipError_t launch_d128(const Args128 &args, hipStream_t stream);
hipError_t launch_d192(const Args192 &args, hipStream_t stream);

} // namespace fmha_fp8_native
