#include "fp8_native.h"
#include "rt.h"
#include <type_traits>

namespace fmha_fp8_native {

using namespace hk;
using i8 = int __attribute__((ext_vector_type(8)));
using i4 = int __attribute__((ext_vector_type(4)));
using i2 = int __attribute__((ext_vector_type(2)));
using f4 = float __attribute__((ext_vector_type(4)));
using f2 = float __attribute__((ext_vector_type(2)));
using b2 = bf16 __attribute__((ext_vector_type(2)));
using u8 = uint32_t __attribute__((ext_vector_type(8)));
using u16 = uint32_t __attribute__((ext_vector_type(16)));
using u4 = uint32_t __attribute__((ext_vector_type(4)));
using u2 = uint32_t __attribute__((ext_vector_type(2)));
using b1 = bool __attribute__((ext_vector_type(1)));
using global_byte = unsigned char __attribute__((address_space(1))) *;
using const_global_byte = const unsigned char __attribute__((address_space(1))) *;
using global_float = float __attribute__((address_space(1))) *;
using const_global_float = const float __attribute__((address_space(1))) *;
using global_i4 = i4 __attribute__((address_space(1))) *;
using const_global_i4 = const i4 __attribute__((address_space(1))) *;
using const_global_u32 = const uint32_t __attribute__((address_space(1))) *;
using byte_lds = unsigned char __attribute__((address_space(3))) *;
using volatile_i4_lds = volatile i4 __attribute__((address_space(3))) *;
using i4_lds = i4 __attribute__((address_space(3))) *;
using i2_lds = i2 __attribute__((address_space(3))) *;
using u64_lds = uint64_t __attribute__((address_space(3))) *;

// Keep probability conversion before the phase barrier; LLVM emits no instruction for this use.
extern "C" __device__ void phase_use(...) __asm("llvm.fake.use");
extern "C" __device__ __attribute__((convergent)) void pipeline_barrier() __asm("llvm.amdgcn.s.barrier");
extern "C" __device__ __attribute__((convergent)) void pipeline_priority(unsigned short) __asm("llvm.amdgcn.s.setprio");
extern "C" __device__ void pipeline_nop(unsigned short) __asm("llvm.amdgcn.s.nop");
extern "C" __device__ __attribute__((convergent)) float pipeline_rcp(float) __asm("llvm.amdgcn.rcp.f32");
extern "C" __device__ __attribute__((convergent)) float pipeline_log(float) __asm("llvm.amdgcn.log.f32");

template <int D> constexpr int keys = D == 128 ? 128 : 64;
template <int D> constexpr int vslot_bytes = keys<D> * 128;
template <int D> constexpr int ring_bytes = 65536 + 4 * vslot_bytes<D>;
template <int D> constexpr int lds_bytes = ring_bytes<D> + 32768;
template <int D> using Args = std::conditional_t<D == 128, Args128, Args192>;

template <int D> struct Lds {
    byte_lds k0, k1, k2, k3, v0, v1, v2, v3, out;
    int dma_base;
    int kaddr0, kaddr1, kaddr2;
    uint32_t kvoff0, kvoff1, vvoff0, vvoff1;

    __device__ __forceinline__ byte_lds key(int slot) const {
        if (__builtin_constant_p(slot)) {
            switch (slot & 3) {
            case 0: return k0;
            case 1: return k1;
            case 2: return k2;
            default: return k3;
            }
        }
        const uint32_t bits = (uint32_t)slot & 3;
        const uint32_t low = bits & 1, high = bits >> 1;
        const uint32_t p0 = (uint32_t)(uintptr_t)k0, p1 = (uint32_t)(uintptr_t)k1;
        const uint32_t p2 = (uint32_t)(uintptr_t)k2, p3 = (uint32_t)(uintptr_t)k3;
        const uint32_t step = p1 - p0;
        return (byte_lds)(uintptr_t)(p0 + bits * step + high * (p2 - p0 - 2 * step)
                                    + (low & high) * (p3 - p2 - p1 + p0));
    }

    __device__ __forceinline__ byte_lds value(int slot) const {
        if (__builtin_constant_p(slot)) {
            switch (slot & 3) {
            case 0: return v0;
            case 1: return v1;
            case 2: return v2;
            default: return v3;
            }
        }
        const uint32_t bits = (uint32_t)slot & 3;
        const uint32_t low = bits & 1, high = bits >> 1;
        const uint32_t p0 = (uint32_t)(uintptr_t)v0, p1 = (uint32_t)(uintptr_t)v1;
        const uint32_t p2 = (uint32_t)(uintptr_t)v2, p3 = (uint32_t)(uintptr_t)v3;
        if constexpr (D == 192) {
            return (byte_lds)(uintptr_t)(p0 + low * (p1 - p0) + high * (p2 - p0)
                                        + (low & high) * (p3 - p2 - p1 + p0));
        } else {
            const uint32_t step = p1 - p0;
            return (byte_lds)(uintptr_t)(p0 + bits * step + high * (p2 - p0 - 2 * step)
                                        + (low & high) * (p3 - p2 - p1 + p0));
        }
    }
};

struct Scores128 { fx16 a, b, c, d; };
struct Scores192 { fx16 a, b; };
template <int D> using Scores = std::conditional_t<D == 128, Scores128, Scores192>;
struct Query128 { i8 a, b; };
struct Query192 { i8 a, b, c; };
template <int D> using Query = std::conditional_t<D == 128, Query128, Query192>;
struct Head128 { i8 a, b; };
struct Head192 { i8 a, b, c, d; };
template <int D> using Head = std::conditional_t<D == 128, Head128, Head192>;
struct Probability128 { i8 a, b; };
struct Probability192 { i8 a; };
template <int D> using Probability = std::conditional_t<D == 128, Probability128, Probability192>;
template <int D> struct SMData { Probability<D> p; Head<D> head; };

struct __attribute__((packed)) RawArgs { u16 a, b; u4 c; u2 d; };
using kernarg_bytes = const unsigned char __attribute__((address_space(4))) *;
using table_u8 = const volatile u8 __attribute__((address_space(4))) *;
typedef u16 kernarg16_storage __attribute__((aligned(8)));
typedef u4 kernarg4_storage __attribute__((aligned(8)));
typedef u2 kernarg2_storage __attribute__((aligned(8)));
using kernarg_u16 = const volatile kernarg16_storage __attribute__((address_space(4))) *;
using kernarg_u4 = const volatile kernarg4_storage __attribute__((address_space(4))) *;
using kernarg_u2 = const volatile kernarg2_storage __attribute__((address_space(4))) *;
static_assert(sizeof(RawArgs) == 152);

struct Params {
    float m, bias_lo, bias_hi, corr, sum_scale_lo, sum_scale_hi;
    int sb_lo, sb_hi;
    uint32_t rescale;
};

__device__ __forceinline__ float select_wave_mask(uint64_t mask, float old_m, float new_m) {
    float result;
    asm("v_cndmask_b32_e64 %0, %1, %2, %3" : "=v"(result) : "v"(old_m), "v"(new_m), "s"(mask));
    return result;
}

__device__ __forceinline__ uint32_t scalar_sub(uint32_t a, uint32_t b) {
    uint32_t result;
    asm("s_sub_u32 %0, %1, %2" : "=s"(result) : "s"(a), "s"(b) : "scc");
    return result;
}

template <int B>
__device__ __forceinline__ int scalar_mask_sub(int a) {
    int result;
    asm volatile("s_sub_i32 %0, %1, %2" : "=s"(result) : "s"(a), "n"(B) : "scc");
    return result;
}

__device__ __forceinline__ uint32_t scalar_add(uint32_t a, uint32_t b) {
    uint32_t r;
    asm volatile("s_add_u32 %0, %1, %2" : "=s"(r) : "s"(a), "s"(b) : "scc");
    return r;
}

__device__ __forceinline__ uint32_t scalar_increment(uint32_t a) {
    uint32_t r;
    asm volatile("s_add_u32 %0, %1, 1" : "=s"(r) : "s"(a) : "scc");
    return r;
}

__device__ __forceinline__ uint32_t scalar_min(uint32_t a, uint32_t b) {
    uint32_t r;
    asm volatile("s_min_u32 %0, %1, %2" : "=s"(r) : "s"(a), "s"(b) : "scc");
    return r;
}

__device__ __forceinline__ void phase_barrier() {
    SCHED_FENCE();
    __builtin_amdgcn_s_barrier();
    SCHED_FENCE();
}

__device__ __forceinline__ void wait_dma() {
    SCHED_FENCE();
    __builtin_amdgcn_s_waitcnt(0x0f70);
    SCHED_FENCE();
}

__device__ __forceinline__ fx16 mma(i8 a, i8 b, fx16 c) {
    const fx16 r = __builtin_amdgcn_mfma_scale_f32_32x32x64_f8f6f4(a, b, c, 0, 0, 0, 0, 0, 0);
    SCHED_FENCE();
    return r;
}

__device__ __forceinline__ fx16 mma_scaled(i8 a, i8 b, fx16 c, int sb) {
    const fx16 r = __builtin_amdgcn_mfma_scale_f32_32x32x64_f8f6f4(a, b, c, 0, 0, 0, 127, 0, sb);
    SCHED_FENCE();
    return r;
}

__device__ __forceinline__ i8 selector() {
    const int lane = laneid();
    const int x = (((lane >> 4) ^ (lane >> 2)) & 1) ? 0 : 0x38383838;
    return i8{x, x, x, x, x, x, x, x};
}

__device__ __forceinline__ f4 row_sum_vector(i8 p, i8 sel) {
    const f4 r = __builtin_amdgcn_mfma_scale_f32_16x16x128_f8f6f4(sel, p, f4{}, 0, 0, 0, 0, 0, 0);
    SCHED_FENCE();
    return r;
}

__device__ __forceinline__ float row_sum(i8 p, i8 sel) {
    return row_sum_vector(p, sel)[0];
}

template <int D, int Chunk, bool ByteOffset = false, bool Group0Round = false>
__device__ __forceinline__ void load_k_chunk(Lds<D> sm, g2s_i32x4 rsrc, int slot, int tile,
                                             int stride, int tid) {
    constexpr int round_key = Group0Round ? Chunk / (D == 128 ? 8 : 16) : 0;
    const uint32_t voff = Group0Round || Chunk == 0 ? sm.kvoff0 : sm.kvoff1;
    // m0 holds the wave's LDS base; hardware adds the lane's 16-byte displacement.
    byte_lds dest = sm.key(slot) + sm.dma_base + Chunk * 16;
    if constexpr (ByteOffset) {
        uint32_t address;
        asm volatile("s_add_u32 %0, %1, %2" : "=s"(address) : "s"(sm.dma_base), "s"((uint32_t)(uintptr_t)(sm.key(slot) + Chunk * 16)) : "scc");
        dest = (byte_lds)(uintptr_t)address;
#pragma unroll
        for (int other = 0; other < 4; ++other) {
            if (other != slot)
                __builtin_assume_separate_storage((void *)dest, (void *)sm.key(other));
            if (true)
                __builtin_assume_separate_storage((void *)dest, (void *)sm.value(other));
        }
    }
    llvm_amdgcn_raw_buffer_load_lds(rsrc, (g2s_as3)dest,
                                   16, voff, ByteOffset ? tile : (tile * keys<D> + round_key) * stride, 0, 0);
}

template <int D, int Chunk, bool ByteOffset = false, bool Group0Round = false>
__device__ __forceinline__ void load_v_chunk(Lds<D> sm, g2s_i32x4 rsrc, int slot, int tile,
                                             int stride, int tid) {
    constexpr int round_key = !Group0Round ? 0 : D == 128
        ? ((Chunk >> 7) & 3) * 32 + ((Chunk >> 9) & 1) * 4
        : ((Chunk >> 8) & 1) * 4;
    const uint32_t voff = Group0Round || Chunk == 0 ? sm.vvoff0 : sm.vvoff1;
    byte_lds dest = sm.value(slot) + sm.dma_base + Chunk * 16;
    if constexpr (ByteOffset) {
        uint32_t address;
        asm volatile("s_add_u32 %0, %1, %2" : "=s"(address) : "s"(sm.dma_base), "s"((uint32_t)(uintptr_t)(sm.value(slot) + Chunk * 16)) : "scc");
        dest = (byte_lds)(uintptr_t)address;
#pragma unroll
        for (int other = 0; other < 4; ++other) {
            if (true)
                __builtin_assume_separate_storage((void *)dest, (void *)sm.key(other));
            if (other != slot)
                __builtin_assume_separate_storage((void *)dest, (void *)sm.value(other));
        }
    }
    llvm_amdgcn_raw_buffer_load_lds(rsrc, (g2s_as3)dest,
                                   16, voff, ByteOffset ? tile : (tile * keys<D> + round_key) * stride, 0, 0);
}

template <int D>
__device__ __forceinline__ void load_k(Lds<D> sm, g2s_i32x4 rsrc, int slot, int tile, int stride, int tid) {
    load_k_chunk<D, 0>(sm, rsrc, slot, tile, stride, tid);
    load_k_chunk<D, 512>(sm, rsrc, slot, tile, stride, tid);
}

template <int D>
__device__ __forceinline__ void load_v(Lds<D> sm, g2s_i32x4 rsrc, int slot, int tile, int stride, int tid) {
    load_v_chunk<D, 0>(sm, rsrc, slot, tile, stride, tid);
    if constexpr (D == 128)
        load_v_chunk<D, 512>(sm, rsrc, slot, tile, stride, tid);
}

template <int D>
__device__ __forceinline__ void load_k_group0(Lds<D> sm, g2s_i32x4 rsrc, int slot, int tile,
                                              int stride, int tid) {
    load_k_chunk<D, 0, false, true>(sm, rsrc, slot, tile, stride, tid);
    load_k_chunk<D, 256, false, true>(sm, rsrc, slot, tile, stride, tid);
    load_k_chunk<D, 512, false, true>(sm, rsrc, slot, tile, stride, tid);
    load_k_chunk<D, 768, false, true>(sm, rsrc, slot, tile, stride, tid);
}

template <int D>
__device__ __forceinline__ void load_v_group0(Lds<D> sm, g2s_i32x4 rsrc, int slot, int tile,
                                              int stride, int tid) {
    load_v_chunk<D, 0, false, true>(sm, rsrc, slot, tile, stride, tid);
    load_v_chunk<D, 256, false, true>(sm, rsrc, slot, tile, stride, tid);
    if constexpr (D == 128) {
        load_v_chunk<D, 512, false, true>(sm, rsrc, slot, tile, stride, tid);
        load_v_chunk<D, 768, false, true>(sm, rsrc, slot, tile, stride, tid);
    }
}

template <int D, int Block, int DH, int Slot>
__device__ __forceinline__ i8 read_k(Lds<D> sm, int runtime_slot) {
    const int slot = Slot < 0 ? runtime_slot : Slot;
    const int c = laneid() & 31, gb = laneid() >> 5;
    const int pair = D == 128 ? (((2 * DH + gb) ^ (c >> 2)) & 3)
                              : ((2 * DH + gb + c) & 7);
    const int stride = D == 128 ? 128 : 256;
    const int laneoff = DH == 0 ? sm.kaddr0 : (DH == 1 ? sm.kaddr1 : sm.kaddr2);
    const auto p = (i4_lds)(sm.key(slot) + laneoff + Block * 32 * stride);
    const i4 lo = ((volatile_i4_lds)p)[0];
    const i4 hi = ((volatile_i4_lds)p)[1];
    return i8{lo[0], lo[1], lo[2], lo[3], hi[0], hi[1], hi[2], hi[3]};
}

template <int D, int Slot>
__device__ __forceinline__ Head<D> read_head(Lds<D> sm, int runtime_slot) {
    Head<D> h;
    h.a = read_k<D, 0, 0, Slot>(sm, runtime_slot);
    h.b = read_k<D, 1, 0, Slot>(sm, runtime_slot);
    if constexpr (D == 192) {
        h.c = read_k<D, 0, 1, Slot>(sm, runtime_slot);
        h.d = read_k<D, 1, 1, Slot>(sm, runtime_slot);
    }
    return h;
}

template <int D, int Half, int J, int Slot, bool Ordered = false>
__device__ __forceinline__ i8 read_v(Lds<D> sm, int runtime_slot) {
    const int slot = Slot < 0 ? runtime_slot : Slot;
    const int c = laneid() & 31, gb = laneid() >> 5;
    const int laneoff = (gb * (keys<D> / 2) + (c >> 4)) * 128 + (c & 15) * 8;
    const auto p = sm.value(slot) + laneoff + 4096 * Half + 256 * J;
    const i2 a = __builtin_amdgcn_ds_read_tr8_b64_v2i32((i2_lds)(p));
    if constexpr (Ordered) SCHED_FENCE();
    const i2 b = __builtin_amdgcn_ds_read_tr8_b64_v2i32((i2_lds)(p + 1024));
    if constexpr (Ordered) SCHED_FENCE();
    const i2 c0 = __builtin_amdgcn_ds_read_tr8_b64_v2i32((i2_lds)(p + 2048));
    if constexpr (Ordered) SCHED_FENCE();
    const i2 d = __builtin_amdgcn_ds_read_tr8_b64_v2i32((i2_lds)(p + 3072));
    if constexpr (Ordered) SCHED_FENCE();
    return i8{a[0], a[1], b[0], b[1], c0[0], c0[1], d[0], d[1]};
}


// Pending counts LGKM events: two per K fragment and four per V fragment.
template <int Pending>
__device__ __forceinline__ void wait_lds_fragments() {
    SCHED_FENCE();
    __builtin_amdgcn_s_waitcnt(0xc07f | (Pending << 8));
    SCHED_FENCE();
}

template <int D, int Slot, typename Prefetch>
__device__ __forceinline__ Scores<D> qk(Lds<D> sm, int runtime_slot, const Query<D> &q,
                                         Head<D> h, Prefetch prefetch) {
    Scores<D> s;
    if constexpr (D == 128) {
        i8 c = read_k<D, 2, 0, Slot>(sm, runtime_slot);
        i8 d = read_k<D, 3, 0, Slot>(sm, runtime_slot);
        wait_lds_fragments<4>();
        s.a = mma(h.a, q.a, fx16{});
        h.a = read_k<D, 0, 1, Slot>(sm, runtime_slot);
        s.b = mma(h.b, q.a, fx16{});
        h.b = read_k<D, 1, 1, Slot>(sm, runtime_slot);
        wait_lds_fragments<4>();
        s.c = mma(c, q.a, fx16{});
        c = read_k<D, 2, 1, Slot>(sm, runtime_slot);
        s.d = mma(d, q.a, fx16{});
        d = read_k<D, 3, 1, Slot>(sm, runtime_slot);
        prefetch();
        wait_lds_fragments<4>();
        s.a = mma(h.a, q.b, s.a);
        s.b = mma(h.b, q.b, s.b);
        wait_lds_fragments<0>();
        s.c = mma(c, q.b, s.c);
        s.d = mma(d, q.b, s.d);
    } else {
        wait_lds_fragments<0>();
        s.a = mma(h.a, q.a, fx16{});
        h.a = read_k<D, 0, 2, Slot>(sm, runtime_slot);
        s.b = mma(h.b, q.a, fx16{});
        h.b = read_k<D, 1, 2, Slot>(sm, runtime_slot);
        prefetch();
        s.a = mma(h.c, q.b, s.a);
        s.b = mma(h.d, q.b, s.b);
        wait_lds_fragments<0>();
        s.a = mma(h.a, q.c, s.a);
        s.b = mma(h.b, q.c, s.b);
    }
    return s;
}

__device__ __forceinline__ float lane_max(fx16 s) {
    float m = fmaxf(s[0], s[1]);
#pragma unroll
    for (int i = 2; i < 16; i += 2)
        m = fmaxf(fmaxf(s[i], s[i + 1]), m);
    return m;
}

template <int D, int Block>
__device__ __forceinline__ void mask(fx16 &s, int q_start, int tile) {
    const int delta = scalar_mask_sub<Block * 32>(scalar_sub((uint32_t)q_start, (uint32_t)tile * keys<D>));
    if (delta >= 32)
        return;
    if (delta < 0) {
        s = fx16{} + neg_inf();
        return;
    }
    const int threshold = delta + (laneid() & 31) - (laneid() >> 5) * 4;
#pragma unroll
    for (int j = 0; j < 4; ++j)
#pragma unroll
        for (int i = 0; i < 4; ++i)
            {
                const uint64_t visible = __builtin_amdgcn_sicmp(8 * j + i, threshold, 38);
                s[4 * j + i] = select_wave_mask(visible, s[4 * j + i], neg_inf());
                SCHED_FENCE();
            }
}

__device__ __forceinline__ float fma_negative_eight(float x, float bias) {
    return __builtin_fmaf(-x, 8.f, bias);
}

__device__ __forceinline__ float block_offset(float raw, float scale, float m) {
    const float x = __builtin_fmaf(raw, scale, -m);
    return __builtin_amdgcn_fmed3f(floorf(x), -127.f, 0.f);
}

__device__ __forceinline__ float code_bias(float m, float off) {
#pragma clang fp contract(off)
#pragma clang fp reassociate(off)
    return 6.f - (m + off);
}

template <int D>
__device__ __forceinline__ float add_tail_sum(float l, float row, float scale) {
    if constexpr (D == 192)
        return __builtin_fmaf(row, scale, l);
    else {
#pragma clang fp contract(off)
#pragma clang fp reassociate(off)
        return l + row * scale;
    }
}

__device__ __forceinline__ float add_scaled_sum(float l, float row, float scale) {
#pragma clang fp contract(off)
#pragma clang fp reassociate(off)
    return l + row * scale;
}

__device__ __forceinline__ float add_scaled_sum_float(float l, float row, float scale) {
#pragma clang fp contract(off)
#pragma clang fp reassociate(off)
    return l + row * scale;
}

__device__ __forceinline__ int pack_code(float a, float b, float c, float d) {
    unsigned x = __builtin_amdgcn_cvt_pk_u8_f32(a, 0, 0);
    x = __builtin_amdgcn_cvt_pk_u8_f32(b, 1, x);
    x = __builtin_amdgcn_cvt_pk_u8_f32(c, 2, x);
    return (int)__builtin_amdgcn_cvt_pk_u8_f32(d, 3, x);
}

__device__ __forceinline__ int pack_exp(float a, float b, float c, float d) {
    const int lo = __builtin_amdgcn_cvt_pk_fp8_f32(exp2_hw(a), exp2_hw(b), 0, false);
    return __builtin_amdgcn_cvt_pk_fp8_f32(exp2_hw(c), exp2_hw(d), lo, true);
}

template <int D>
__device__ __forceinline__ i8 convert_p(fx16 a, fx16 b, float scale, float bias) {
    i8 p;
#pragma unroll
    for (int j = 0; j < 4; ++j) {
        if constexpr (D == 128) {
            p[j] = pack_code(__builtin_fmaf(a[4*j], scale, bias), __builtin_fmaf(a[4*j+1], scale, bias),
                             __builtin_fmaf(a[4*j+2], scale, bias), __builtin_fmaf(a[4*j+3], scale, bias));
            p[j+4] = pack_code(__builtin_fmaf(b[4*j], scale, bias), __builtin_fmaf(b[4*j+1], scale, bias),
                               __builtin_fmaf(b[4*j+2], scale, bias), __builtin_fmaf(b[4*j+3], scale, bias));
        } else {
            p[j] = pack_exp(a[4*j], a[4*j+1], a[4*j+2], a[4*j+3]);
            p[j+4] = pack_exp(b[4*j], b[4*j+1], b[4*j+2], b[4*j+3]);
        }
    }
    return p;
}

template <int D>
__device__ __forceinline__ void prepare_scores(Scores<D> &s, const Params &params, float scale) {
    // d192's packed FMA belongs after MM's last MFMA, before the following SM's exp2.
    if constexpr (D == 192) {
        s.a = __builtin_elementwise_fma(s.a, (fx16)scale, (fx16)params.bias_lo);
        s.b = __builtin_elementwise_fma(s.b, (fx16)scale, (fx16)params.bias_lo);
    }
}

template <int D>
__device__ __forceinline__ Probability<D> softmax(const Scores<D> &s, const Params &params, float scale) {
    Probability<D> p;
    p.a = convert_p<D>(s.a, s.b, scale, params.bias_lo);
    if constexpr (D == 128)
        p.b = convert_p<D>(s.c, s.d, scale, params.bias_hi);
    return p;
}

template <int D, int Slot, typename Prefetch>
__device__ __forceinline__ void pv(Lds<D> sm, int runtime_slot, const Probability<D> &p,
                                    const Params &params, o_tile &o, Prefetch prefetch) {
    i8 a = read_v<D, 0, 0, Slot>(sm, runtime_slot);
    i8 b = read_v<D, 0, 1, Slot>(sm, runtime_slot);
    i8 c = read_v<D, 0, 2, Slot>(sm, runtime_slot);
    wait_lds_fragments<4>();
    o.a = mma_scaled(a, p.a, o.a, params.sb_lo);
    a = read_v<D, 0, 3, Slot>(sm, runtime_slot);
    o.b = mma_scaled(b, p.a, o.b, params.sb_lo);
    if constexpr (D == 128)
        b = read_v<D, 1, 0, Slot>(sm, runtime_slot);
    else
        prefetch();
    wait_lds_fragments<D == 128 ? 4 : 0>();
    o.c = mma_scaled(c, p.a, o.c, params.sb_lo);
    if constexpr (D == 128)
        c = read_v<D, 1, 1, Slot>(sm, runtime_slot);
    o.d = mma_scaled(a, p.a, o.d, params.sb_lo);
    if constexpr (D == 128) {
        a = read_v<D, 1, 2, Slot>(sm, runtime_slot);
        wait_lds_fragments<4>();
        o.a = mma_scaled(b, p.b, o.a, params.sb_hi);
        b = read_v<D, 1, 3, Slot>(sm, runtime_slot);
        o.b = mma_scaled(c, p.b, o.b, params.sb_hi);
        prefetch();
        wait_lds_fragments<0>();
        o.c = mma_scaled(a, p.b, o.c, params.sb_hi);
        o.d = mma_scaled(b, p.b, o.d, params.sb_hi);
    }
}

template <int D, int Slot, bool Masked>
__device__ __forceinline__ SMData<D> sm_step(Lds<D> sm, uint32_t base, uint32_t k, uint32_t fm,
                                            const Scores<D> &s, const Params &params, float p_scale) {
    constexpr int Next = Slot < 0 ? -1 : ((Slot + 1) & 3);
    const int next = Slot < 0 ? ((base + k + 1) & 3) : Next;
    SMData<D> data;
    [[clang::nomerge]] __builtin_amdgcn_s_setprio(0);
    if (!Masked || k <= fm)
        data.p = softmax<D>(s, params, p_scale);
    if (!Masked || k < fm)
        data.head = read_head<D, Next>(sm, next);
    return data;
}

// These schedule points stay in the kernel body: LLVM removes fake uses from inlined helpers.
// The intrinsic emits no ISA; it makes each result live before the following scheduler fence.
// Pass scalar FP32 as integer bits to avoid the variadic call's promotion to double.
// LLVM's fake-use lowering consumes one operand, so each value needs a separate call.
#define FP8_ANCHOR1(A) phase_use(A)
#define FP8_ANCHOR2(A, B) FP8_ANCHOR1(A); FP8_ANCHOR1(B)
#define FP8_ANCHOR3(A, B, C) FP8_ANCHOR2(A, B); FP8_ANCHOR1(C)
#define FP8_ANCHOR4(A, B, C, E) FP8_ANCHOR3(A, B, C); FP8_ANCHOR1(E)
#define FP8_PICK_ANCHOR(_1, _2, _3, _4, NAME, ...) NAME
#define FP8_SCHEDULE_POINT(...) do { \
    FP8_PICK_ANCHOR(__VA_ARGS__, FP8_ANCHOR4, FP8_ANCHOR3, FP8_ANCHOR2, FP8_ANCHOR1)(__VA_ARGS__); \
    SCHED_FENCE(); \
} while (false)


#define FP8_LOAD_QUERY() do { \
    const uint32_t qr = q_start + ((uint32_t)tid & 31u); \
    FP8_SCHEDULE_POINT(qr); \
    const uint32_t qm = qr * (uint32_t)args.q_ss; \
    FP8_SCHEDULE_POINT(qm); \
    const uint32_t qgb = __builtin_amdgcn_ubfe((uint32_t)tid, 5u, 1u); \
    FP8_SCHEDULE_POINT(qgb); \
    const uint32_t qo = qm + (qgb << 5); \
    FP8_SCHEDULE_POINT(qo); \
    const auto qp = qh + qo; \
    const i4 qa0 = *(const_global_i4)(qp); \
    FP8_SCHEDULE_POINT(qa0); \
    const i4 qa1 = *(const_global_i4)(qp + 16); \
    FP8_SCHEDULE_POINT(qa1); \
    const i4 qb0 = *(const_global_i4)(qp + 64); \
    FP8_SCHEDULE_POINT(qb0); \
    const i4 qb1 = *(const_global_i4)(qp + 80); \
    FP8_SCHEDULE_POINT(qb1); \
    q.a = i8{qa0[0], qa0[1], qa0[2], qa0[3], qa1[0], qa1[1], qa1[2], qa1[3]}; \
    q.b = i8{qb0[0], qb0[1], qb0[2], qb0[3], qb1[0], qb1[1], qb1[2], qb1[3]}; \
    if constexpr (D == 192) { \
        const i4 qc0 = *(const_global_i4)(qp + 128); \
        FP8_SCHEDULE_POINT(qc0); \
        const i4 qc1 = *(const_global_i4)(qp + 144); \
        FP8_SCHEDULE_POINT(qc1); \
        q.c = i8{qc0[0], qc0[1], qc0[2], qc0[3], qc1[0], qc1[1], qc1[2], qc1[3]}; \
    } \
} while (false)

#define FP8_MAX16(M, S) \
    float M = fmaxf((S)[0], (S)[1]); \
    FP8_SCHEDULE_POINT(__float_as_int(M)); \
    M = fmaxf(fmaxf((S)[2], (S)[3]), M); \
    FP8_SCHEDULE_POINT(__float_as_int(M)); \
    M = fmaxf(fmaxf((S)[4], (S)[5]), M); \
    FP8_SCHEDULE_POINT(__float_as_int(M)); \
    M = fmaxf(fmaxf((S)[6], (S)[7]), M); \
    FP8_SCHEDULE_POINT(__float_as_int(M)); \
    M = fmaxf(fmaxf((S)[8], (S)[9]), M); \
    FP8_SCHEDULE_POINT(__float_as_int(M)); \
    M = fmaxf(fmaxf((S)[10], (S)[11]), M); \
    FP8_SCHEDULE_POINT(__float_as_int(M)); \
    M = fmaxf(fmaxf((S)[12], (S)[13]), M); \
    FP8_SCHEDULE_POINT(__float_as_int(M)); \
    M = fmaxf(fmaxf((S)[14], (S)[15]), M); \
    FP8_SCHEDULE_POINT(__float_as_int(M));

#define FP8_LDS_WAIT(N) do { \
    SCHED_FENCE(); \
    __builtin_amdgcn_s_waitcnt(0xc07f | ((N) << 8)); \
    SCHED_FENCE(); \
} while (false)

// Steady MM follows csrc/asm/d128.py and d192.py::seg_mm, including each fragment refill,
// DMA issue slot, and the max chains placed one MFMA after the corresponding final QK.
// Named fragments describe the five/six-slot source ring; LLVM chooses physical registers.
#define FP8_STEADY_MM(SLOT) \
do { \
    constexpr int Cur = (SLOT), Next = (Cur + 1) & 3; \
    const auto &p = data.p; \
    const float old_m = params.m; \
    __builtin_amdgcn_s_setprio(1); \
    const f4 rs_lo_vector = row_sum_vector(p.a, sel); \
    const float rs_lo = rs_lo_vector[0]; \
    FP8_SCHEDULE_POINT(rs_lo_vector); \
    Params np{}; \
    i8 r0 = data.head.a, r1 = data.head.b, r2, r3, r4, r5; \
    if constexpr (D == 128) { \
        const f4 rs_hi_vector = row_sum_vector(p.b, sel); \
        const float rs_hi = rs_hi_vector[0]; \
        FP8_SCHEDULE_POINT(rs_hi_vector); \
        r2 = read_k<D, 2, 0, Next>(sm, Next); \
        r3 = read_k<D, 3, 0, Next>(sm, Next); \
        FP8_SCHEDULE_POINT(r2, r3); \
        FP8_LDS_WAIT(4); \
        s.a = mma(r0, q.a, fx16{}); \
        r4 = read_k<D, 0, 1, Next>(sm, Next); \
        FP8_SCHEDULE_POINT(s.a, r4); \
        s.b = mma(r1, q.a, fx16{}); \
        r0 = read_k<D, 1, 1, Next>(sm, Next); \
        FP8_SCHEDULE_POINT(s.b, r0); \
        FP8_LDS_WAIT(4); \
        s.c = mma(r2, q.a, fx16{}); \
        r1 = read_k<D, 2, 1, Next>(sm, Next); \
        FP8_SCHEDULE_POINT(s.c, r1); \
        const uint32_t k_offset = scalar_min(k_future, k_max); \
        FP8_SCHEDULE_POINT(k_offset); \
        load_k_chunk<D, 0, true>(sm, kr, Cur, k_offset, k_stride, tid); \
        SCHED_FENCE(); \
        l = add_scaled_sum_float(l, rs_lo, params.sum_scale_lo); \
        FP8_SCHEDULE_POINT(__float_as_int(l)); \
        l = add_scaled_sum_float(l, rs_hi, params.sum_scale_hi); \
        FP8_ANCHOR1(rs_lo_vector); FP8_ANCHOR1(rs_hi_vector); \
        FP8_SCHEDULE_POINT(__float_as_int(l)); \
        s.d = mma(r3, q.a, fx16{}); \
        r2 = read_k<D, 3, 1, Next>(sm, Next); \
        FP8_SCHEDULE_POINT(s.d, r2); \
        load_k_chunk<D, 512, true>(sm, kr, Cur, k_offset, k_stride, tid); \
        SCHED_FENCE(); \
        FP8_LDS_WAIT(4); \
        s.a = mma(r4, q.b, s.a); \
        r3 = read_v<D, 0, 0, Cur, true>(sm, Cur); \
        FP8_SCHEDULE_POINT(s.a, r3); \
        const uint32_t v_offset = scalar_min(v_future, v_max); \
        FP8_SCHEDULE_POINT(v_offset); \
        load_v_chunk<D, 0, true>(sm, vr, (Cur + 2) & 3, v_offset, v_stride, tid); \
        SCHED_FENCE(); \
        s.b = mma(r0, q.b, s.b); \
        r4 = read_v<D, 0, 1, Cur, true>(sm, Cur); \
        FP8_SCHEDULE_POINT(s.b, r4); \
        load_v_chunk<D, 512, true>(sm, vr, (Cur + 2) & 3, v_offset, v_stride, tid); \
        k_future = scalar_add(k_future, k_step); \
        v_future = scalar_add(v_future, v_step); \
        SCHED_FENCE(); \
        FP8_MAX16(ma, s.a); \
        FP8_SCHEDULE_POINT(__float_as_int(ma)); \
        FP8_LDS_WAIT(8); \
        s.c = mma(r1, q.b, s.c); \
        r0 = read_v<D, 0, 2, Cur, true>(sm, Cur); \
        FP8_SCHEDULE_POINT(s.c, r0); \
        FP8_MAX16(mb, s.b); \
        FP8_SCHEDULE_POINT(__float_as_int(mb)); \
        s.d = mma(r2, q.b, s.d); \
        FP8_SCHEDULE_POINT(s.d); \
        FP8_MAX16(mc, s.c); \
        FP8_SCHEDULE_POINT(__float_as_int(mc)); \
        FP8_LDS_WAIT(4); \
        o.a = mma_scaled(r3, p.a, o.a, params.sb_lo); \
        r1 = read_v<D, 0, 3, Cur, true>(sm, Cur); \
        r2 = read_v<D, 1, 0, Cur, true>(sm, Cur); \
        FP8_SCHEDULE_POINT(o.a, r1, r2); \
        FP8_MAX16(md, s.d); \
        FP8_SCHEDULE_POINT(__float_as_int(md)); \
        o.b = mma_scaled(r4, p.a, o.b, params.sb_lo); \
        const float lo_raw = fmaxf(ma, mb); \
        const float hi_pair_max = fmaxf(mc, md); \
        FP8_SCHEDULE_POINT(__float_as_int(lo_raw), __float_as_int(hi_pair_max)); \
        const auto lo_swap = __builtin_amdgcn_permlane32_swap(__float_as_int(lo_raw), __float_as_int(lo_raw), false, false); \
        const auto hi_swap = __builtin_amdgcn_permlane32_swap(__float_as_int(hi_pair_max), __float_as_int(hi_pair_max), false, false); \
        FP8_SCHEDULE_POINT(lo_swap, hi_swap); \
        const float lo = fmaxf(__int_as_float(lo_swap[0]), __int_as_float(lo_swap[1])); \
        const float hi = fmaxf(__int_as_float(hi_swap[0]), __int_as_float(hi_swap[1])); \
        FP8_SCHEDULE_POINT(o.b, __float_as_int(lo), __float_as_int(hi)); \
        FP8_LDS_WAIT(4); \
        o.c = mma_scaled(r0, p.a, o.c, params.sb_lo); \
        r3 = read_v<D, 1, 1, Cur, true>(sm, Cur); \
        r4 = read_v<D, 1, 2, Cur, true>(sm, Cur); \
        FP8_SCHEDULE_POINT(o.c, r3, r4); \
        const float m = fmaxf(params.m, fmaxf(lo, hi) * scale); \
        np.rescale = __builtin_amdgcn_ballot_w64(m - params.m > 0.125f) != 0; \
        const uint64_t rescale_mask = np.rescale ? -1ULL : 0ULL; \
        FP8_ANCHOR1(rescale_mask); \
        FP8_SCHEDULE_POINT(__float_as_int(m), np.rescale); \
        o.d = mma_scaled(r1, p.a, o.d, params.sb_lo); \
        np.m = select_wave_mask(rescale_mask, params.m, m); \
        const float off_lo = block_offset(lo, scale, np.m); \
        np.sb_lo = 127 + (int)off_lo; \
        np.sum_scale_lo = __int_as_float(np.sb_lo << 23); \
        FP8_SCHEDULE_POINT(o.d, __float_as_int(np.m), np.sb_lo, __float_as_int(np.sum_scale_lo)); \
        const float hi_raw = __builtin_fmaf(hi, scale, -np.m); \
        FP8_SCHEDULE_POINT(__float_as_int(hi_raw)); \
        FP8_LDS_WAIT(4); \
        o.a = mma_scaled(r2, p.b, o.a, params.sb_hi); \
        r0 = read_v<D, 1, 3, Cur, true>(sm, Cur); \
        FP8_SCHEDULE_POINT(o.a, r0); \
        const float off_hi = __builtin_amdgcn_fmed3f(floorf(hi_raw), -127.f, 0.f); \
        np.sb_hi = 127 + (int)off_hi; \
        np.sum_scale_hi = __int_as_float(np.sb_hi << 23); \
        FP8_SCHEDULE_POINT(np.sb_hi, __float_as_int(np.sum_scale_hi)); \
        const float bias = fma_negative_eight(np.m, b8k); \
        np.bias_lo = fma_negative_eight(off_lo, bias); \
        np.bias_hi = fma_negative_eight(off_hi, bias); \
        FP8_SCHEDULE_POINT(__float_as_int(np.bias_lo), __float_as_int(np.bias_hi)); \
        o.b = mma_scaled(r3, p.b, o.b, params.sb_hi); \
        FP8_SCHEDULE_POINT(o.b); \
        FP8_LDS_WAIT(0); \
        o.c = mma_scaled(r4, p.b, o.c, params.sb_hi); \
        FP8_SCHEDULE_POINT(o.c); \
        o.d = mma_scaled(r0, p.b, o.d, params.sb_hi); \
        FP8_SCHEDULE_POINT(o.d); \
    } else { \
        r2 = data.head.c; \
        r3 = data.head.d; \
        r4 = read_k<D, 0, 2, Next>(sm, Next); \
        FP8_SCHEDULE_POINT(r4); \
        FP8_LDS_WAIT(6); \
        s.a = mma(r0, q.a, fx16{}); \
        r5 = read_k<D, 1, 2, Next>(sm, Next); \
        FP8_SCHEDULE_POINT(s.a, r5); \
        s.b = mma(r1, q.a, fx16{}); \
        r0 = read_v<D, 0, 0, Cur, true>(sm, Cur); \
        FP8_SCHEDULE_POINT(s.b, r0); \
        const uint32_t k_offset = scalar_min(k_future, k_max); \
        FP8_SCHEDULE_POINT(k_offset); \
        load_k_chunk<D, 0, true>(sm, kr, Cur, k_offset, k_stride, tid); \
        SCHED_FENCE(); \
        const float old_l = l; \
        l = __builtin_fmaf(rs_lo, __int_as_float(params.sb_lo << 23), old_l); \
        FP8_SCHEDULE_POINT(__float_as_int(l)); \
        FP8_ANCHOR1(rs_lo_vector); \
        FP8_LDS_WAIT(8); \
        s.a = mma(r2, q.b, s.a); \
        r1 = read_v<D, 0, 1, Cur, true>(sm, Cur); \
        FP8_SCHEDULE_POINT(s.a, r1); \
        load_k_chunk<D, 512, true>(sm, kr, Cur, k_offset, k_stride, tid); \
        SCHED_FENCE(); \
        s.b = mma(r3, q.b, s.b); \
        FP8_SCHEDULE_POINT(s.b); \
        const uint32_t v_offset = scalar_min(v_future, v_max); \
        FP8_SCHEDULE_POINT(v_offset); \
        load_v_chunk<D, 0, true>(sm, vr, (Cur + 2) & 3, v_offset, v_stride, tid); \
        k_future = scalar_add(k_future, k_step); \
        v_future = scalar_add(v_future, v_step); \
        SCHED_FENCE(); \
        FP8_LDS_WAIT(8); \
        s.a = mma(r4, q.c, s.a); \
        r2 = read_v<D, 0, 2, Cur, true>(sm, Cur); \
        FP8_SCHEDULE_POINT(s.a, r2); \
        s.b = mma(r5, q.c, s.b); \
        FP8_SCHEDULE_POINT(s.b); \
        FP8_MAX16(ma, s.a); \
        FP8_SCHEDULE_POINT(__float_as_int(ma)); \
        FP8_LDS_WAIT(4); \
        o.a = mma_scaled(r0, p.a, o.a, params.sb_lo); \
        r3 = read_v<D, 0, 3, Cur, true>(sm, Cur); \
        FP8_SCHEDULE_POINT(o.a, r3); \
        FP8_MAX16(mb, s.b); \
        FP8_SCHEDULE_POINT(__float_as_int(mb)); \
        o.b = mma_scaled(r1, p.a, o.b, params.sb_lo); \
        const float lo = xor32_max(fmaxf(ma, mb)); \
        const float m = fmaxf(params.m, lo * scale); \
        const bool vote_pred = m - params.m > 0.125f; \
        FP8_SCHEDULE_POINT(o.b, __float_as_int(lo), __float_as_int(m), b1{vote_pred}); \
        FP8_LDS_WAIT(0); \
        o.c = mma_scaled(r2, p.a, o.c, params.sb_lo); \
        FP8_SCHEDULE_POINT(o.c); \
        np.rescale = __builtin_amdgcn_ballot_w64(vote_pred) != 0; \
        const uint64_t rescale_mask = np.rescale ? -1ULL : 0ULL; \
        FP8_ANCHOR1(rescale_mask); \
        FP8_SCHEDULE_POINT(np.rescale, rescale_mask); \
        np.m = select_wave_mask(rescale_mask, params.m, m); \
        const float off_lo = block_offset(lo, scale, np.m); \
        const int offset_int = (int)off_lo; \
        FP8_SCHEDULE_POINT(__float_as_int(np.m), offset_int); \
        o.d = mma_scaled(r3, p.a, o.d, params.sb_lo); \
        FP8_SCHEDULE_POINT(o.d); \
        np.sb_lo = 127 + offset_int; \
        np.sb_hi = np.sb_lo; \
        np.bias_lo = 6.f - (np.m + off_lo); \
        np.bias_hi = np.bias_lo; \
        FP8_SCHEDULE_POINT(np.sb_lo, __float_as_int(np.bias_lo)); \
    } \
    params = np; \
    prepare_scores<D>(s, params, p_scale); \
    if constexpr (D == 192) { FP8_SCHEDULE_POINT(s.a, s.b); } \
    if (__builtin_expect(__builtin_amdgcn_readfirstlane(params.rescale), 1)) { \
        params.corr = exp2_hw(old_m - params.m); \
        o.a *= params.corr; \
        o.b *= params.corr; \
        o.c *= params.corr; \
        o.d *= params.corr; \
        l *= params.corr; \
    } \
    __builtin_amdgcn_s_waitcnt(D == 128 ? 0x0f74 : 0x0f73); \
    phase_barrier(); \
} while (false)

#define FP8_CODE_FMA(V, I, BIAS) do { \
    (V)[I] = __builtin_fmaf((V)[I], p_scale, (BIAS)); \
    phase_use(__float_as_int((V)[I])); \
    SCHED_FENCE(); \
} while (false)
#define FP8_CODE_CVT(P, J, V, I, BYTE) do { \
    (P)[J] = __builtin_amdgcn_cvt_pk_u8_f32((V)[I], (BYTE), (BYTE) == 0 ? 0 : (P)[J]); \
    phase_use((P)[J]); \
    SCHED_FENCE(); \
} while (false)
#define FP8_CODE_START(V, BIAS) \
    FP8_CODE_FMA(V, 0, BIAS); \
    FP8_CODE_FMA(V, 1, BIAS); \
    FP8_CODE_FMA(V, 2, BIAS); \
    FP8_CODE_FMA(V, 3, BIAS); \
    FP8_CODE_FMA(V, 4, BIAS); \
    FP8_CODE_FMA(V, 5, BIAS); \
    FP8_CODE_FMA(V, 6, BIAS); \
    FP8_CODE_FMA(V, 7, BIAS); \
    FP8_CODE_FMA(V, 8, BIAS); \
    FP8_CODE_FMA(V, 9, BIAS); \
    FP8_CODE_FMA(V, 10, BIAS); \
    FP8_CODE_FMA(V, 11, BIAS); \
    FP8_CODE_FMA(V, 12, BIAS); \
    FP8_CODE_FMA(V, 13, BIAS); \
    FP8_CODE_FMA(V, 14, BIAS); \
    FP8_CODE_FMA(V, 15, BIAS);
#define FP8_CODE_PIPE(V, BIAS, P, N, PREV) \
    FP8_CODE_FMA(V, 0, BIAS); \
    FP8_CODE_CVT(P, (N)+0, PREV, 0, 0); \
    FP8_CODE_FMA(V, 1, BIAS); \
    FP8_CODE_CVT(P, (N)+1, PREV, 4, 0); \
    FP8_CODE_FMA(V, 2, BIAS); \
    FP8_CODE_CVT(P, (N)+2, PREV, 8, 0); \
    FP8_CODE_FMA(V, 3, BIAS); \
    FP8_CODE_CVT(P, (N)+3, PREV, 12, 0); \
    FP8_CODE_FMA(V, 4, BIAS); \
    FP8_CODE_CVT(P, (N)+0, PREV, 1, 1); \
    FP8_CODE_FMA(V, 5, BIAS); \
    FP8_CODE_CVT(P, (N)+1, PREV, 5, 1); \
    FP8_CODE_FMA(V, 6, BIAS); \
    FP8_CODE_CVT(P, (N)+2, PREV, 9, 1); \
    FP8_CODE_FMA(V, 7, BIAS); \
    FP8_CODE_CVT(P, (N)+3, PREV, 13, 1); \
    FP8_CODE_FMA(V, 8, BIAS); \
    FP8_CODE_CVT(P, (N)+0, PREV, 2, 2); \
    FP8_CODE_FMA(V, 9, BIAS); \
    FP8_CODE_CVT(P, (N)+1, PREV, 6, 2); \
    FP8_CODE_FMA(V, 10, BIAS); \
    FP8_CODE_CVT(P, (N)+2, PREV, 10, 2); \
    FP8_CODE_FMA(V, 11, BIAS); \
    FP8_CODE_CVT(P, (N)+3, PREV, 14, 2); \
    FP8_CODE_FMA(V, 12, BIAS); \
    FP8_CODE_CVT(P, (N)+0, PREV, 3, 3); \
    FP8_CODE_FMA(V, 13, BIAS); \
    FP8_CODE_CVT(P, (N)+1, PREV, 7, 3); \
    FP8_CODE_FMA(V, 14, BIAS); \
    FP8_CODE_CVT(P, (N)+2, PREV, 11, 3); \
    FP8_CODE_FMA(V, 15, BIAS); \
    FP8_CODE_CVT(P, (N)+3, PREV, 15, 3);
#define FP8_CODE_END(P, N, V) \
    FP8_CODE_CVT(P, (N)+0, V, 0, 0); \
    FP8_CODE_CVT(P, (N)+1, V, 4, 0); \
    FP8_CODE_CVT(P, (N)+2, V, 8, 0); \
    FP8_CODE_CVT(P, (N)+3, V, 12, 0); \
    FP8_CODE_CVT(P, (N)+0, V, 1, 1); \
    FP8_CODE_CVT(P, (N)+1, V, 5, 1); \
    FP8_CODE_CVT(P, (N)+2, V, 9, 1); \
    FP8_CODE_CVT(P, (N)+3, V, 13, 1); \
    FP8_CODE_CVT(P, (N)+0, V, 2, 2); \
    FP8_CODE_CVT(P, (N)+1, V, 6, 2); \
    FP8_CODE_CVT(P, (N)+2, V, 10, 2); \
    FP8_CODE_CVT(P, (N)+3, V, 14, 2); \
    FP8_CODE_CVT(P, (N)+0, V, 3, 3); \
    FP8_CODE_CVT(P, (N)+1, V, 7, 3); \
    FP8_CODE_CVT(P, (N)+2, V, 11, 3); \
    FP8_CODE_CVT(P, (N)+3, V, 15, 3);
#define FP8_D128_CODES(P) do { \
    FP8_CODE_START(s.a, params.bias_lo); \
    FP8_CODE_PIPE(s.b, params.bias_lo, (P).a, 0, s.a); \
    FP8_CODE_PIPE(s.c, params.bias_hi, (P).a, 4, s.b); \
    FP8_CODE_PIPE(s.d, params.bias_hi, (P).b, 0, s.c); \
    FP8_CODE_END((P).b, 4, s.d); \
    phase_use(f2{params.bias_lo, params.bias_lo}); \
    phase_use(f2{params.bias_hi, params.bias_hi}); \
} while (false)

#define FP8_CODE_EXP(V, I) do { \
    (V)[I] = exp2_hw((V)[I]); \
    phase_use(__float_as_int((V)[I])); \
    SCHED_FENCE(); \
} while (false)
#define FP8_CODE_FP8(P, J, V, I, HIGH) do { \
    (P)[J] = __builtin_amdgcn_cvt_pk_fp8_f32((V)[I], (V)[(I)+1], (HIGH) ? (P)[J] : params.sb_lo, HIGH); \
    phase_use((P)[J]); \
    SCHED_FENCE(); \
} while (false)
#define FP8_D192_CODES(P) do { \
    FP8_CODE_EXP(s.a, 0); FP8_CODE_EXP(s.a, 1); FP8_CODE_EXP(s.a, 2); FP8_CODE_EXP(s.a, 3); \
    FP8_CODE_EXP(s.a, 4); FP8_CODE_EXP(s.a, 5); FP8_CODE_EXP(s.a, 6); FP8_CODE_EXP(s.a, 7); \
    FP8_CODE_EXP(s.a, 8); FP8_CODE_EXP(s.a, 9); FP8_CODE_EXP(s.a, 10); FP8_CODE_EXP(s.a, 11); \
    FP8_CODE_EXP(s.a, 12); FP8_CODE_EXP(s.a, 13); FP8_CODE_EXP(s.a, 14); FP8_CODE_EXP(s.a, 15); \
    FP8_CODE_FP8((P).a, 0, s.a, 0, false); FP8_CODE_FP8((P).a, 0, s.a, 2, true); \
    FP8_CODE_FP8((P).a, 1, s.a, 4, false); FP8_CODE_FP8((P).a, 1, s.a, 6, true); \
    FP8_CODE_EXP(s.b, 0); FP8_CODE_FP8((P).a, 2, s.a, 8, false); \
    FP8_CODE_EXP(s.b, 1); FP8_CODE_FP8((P).a, 2, s.a, 10, true); \
    FP8_CODE_EXP(s.b, 2); FP8_CODE_FP8((P).a, 3, s.a, 12, false); \
    FP8_CODE_EXP(s.b, 3); FP8_CODE_FP8((P).a, 3, s.a, 14, true); \
    FP8_CODE_EXP(s.b, 4); FP8_CODE_EXP(s.b, 5); FP8_CODE_EXP(s.b, 6); FP8_CODE_EXP(s.b, 7); \
    FP8_CODE_EXP(s.b, 8); FP8_CODE_EXP(s.b, 9); FP8_CODE_EXP(s.b, 10); FP8_CODE_EXP(s.b, 11); \
    FP8_CODE_EXP(s.b, 12); FP8_CODE_EXP(s.b, 13); FP8_CODE_EXP(s.b, 14); FP8_CODE_EXP(s.b, 15); \
    FP8_CODE_FP8((P).a, 4, s.b, 0, false); FP8_CODE_FP8((P).a, 4, s.b, 2, true); \
    FP8_CODE_FP8((P).a, 5, s.b, 4, false); FP8_CODE_FP8((P).a, 5, s.b, 6, true); \
    FP8_CODE_FP8((P).a, 6, s.b, 8, false); FP8_CODE_FP8((P).a, 6, s.b, 10, true); \
    FP8_CODE_FP8((P).a, 7, s.b, 12, false); FP8_CODE_FP8((P).a, 7, s.b, 14, true); \
} while (false)

// LLVM drops fake uses when it inlines a helper, so the phase boundary belongs in the kernel body.
#define FP8_STEP(SLOT, MASKED, KEY)                                                                              \
    do {                                                                                                       \
        const int sk = (KEY);                                                                                  \
        SMData<D> data; \
        if constexpr (D == 128 && !(MASKED)) { \
            __builtin_amdgcn_s_setprio(0); \
            FP8_D128_CODES(data.p); \
            data.head = read_head<D, ((SLOT)+1)&3>(sm, ((SLOT)+1)&3); \
        } else if constexpr (D == 192 && !(MASKED)) { \
            __builtin_amdgcn_s_setprio(0); \
            FP8_D192_CODES(data.p); \
            data.head = read_head<D, ((SLOT)+1)&3>(sm, ((SLOT)+1)&3); \
        } else { \
            data = sm_step<D, SLOT, MASKED>(sm, base, sk, fm, s, params, p_scale); \
        } \
        if (!(MASKED) || sk <= fm) {                                                                            \
            phase_use(data.p.a);                                                                               \
            if constexpr (D == 128)                                                                            \
                phase_use(data.p.b);                                                                           \
        }                                                                                                     \
        phase_barrier();                                                                                       \
        if constexpr (MASKED) {                                                                               \
            FP8_MASKED_MM();                                      \
        } else {                                                                                              \
            FP8_STEADY_MM(SLOT);                                                                               \
        }                                                                                                     \
    } while (false)

__device__ __forceinline__ uint32_t pack_bf16(float a, float b) {
    const b2 x = __builtin_convertvector(f2{a, b}, b2);
    uint32_t r;
    __builtin_memcpy(&r, &x, 4);
    return r;
}

#define FP8_OUTPUT_POINT(A) do { [[clang::nomerge]] phase_use(A); SCHED_FENCE(); } while (false)
#define FP8_OUTPUT() \
do { \
    pipeline_nop(15); pipeline_nop(3); SCHED_FENCE(); \
    float inv; \
    [[clang::nomerge]] inv = pipeline_rcp(l); \
    FP8_OUTPUT_POINT(__float_as_int(inv)); \
    float log_l; \
    [[clang::nomerge]] log_l = pipeline_log(l); \
    FP8_OUTPUT_POINT(__float_as_int(log_l)); \
    pipeline_nop(1); SCHED_FENCE(); \
    inv *= v_scale; \
    FP8_OUTPUT_POINT(__float_as_int(inv)); \
    o_tile eo = o; \
    u8 pa, pb, pc, pd; \
    eo.a[0] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.a[0])); \
    eo.a[1] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.a[1])); \
    eo.a[2] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.a[2])); \
    eo.a[3] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.a[3])); \
    eo.a[4] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.a[4])); \
    eo.a[5] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.a[5])); \
    eo.a[6] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.a[6])); \
    eo.a[7] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.a[7])); \
    eo.a[8] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.a[8])); \
    eo.a[9] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.a[9])); \
    eo.a[10] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.a[10])); \
    eo.a[11] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.a[11])); \
    eo.a[12] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.a[12])); \
    eo.a[13] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.a[13])); \
    eo.a[14] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.a[14])); \
    eo.a[15] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.a[15])); \
    eo.b[0] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.b[0])); \
    eo.b[1] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.b[1])); \
    eo.b[2] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.b[2])); \
    eo.b[3] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.b[3])); \
    eo.b[4] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.b[4])); \
    eo.b[5] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.b[5])); \
    eo.b[6] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.b[6])); \
    eo.b[7] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.b[7])); \
    eo.b[8] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.b[8])); \
    eo.b[9] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.b[9])); \
    eo.b[10] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.b[10])); \
    eo.b[11] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.b[11])); \
    eo.b[12] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.b[12])); \
    eo.b[13] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.b[13])); \
    eo.b[14] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.b[14])); \
    eo.b[15] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.b[15])); \
    eo.c[0] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.c[0])); \
    eo.c[1] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.c[1])); \
    eo.c[2] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.c[2])); \
    eo.c[3] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.c[3])); \
    eo.c[4] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.c[4])); \
    eo.c[5] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.c[5])); \
    eo.c[6] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.c[6])); \
    eo.c[7] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.c[7])); \
    eo.c[8] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.c[8])); \
    eo.c[9] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.c[9])); \
    eo.c[10] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.c[10])); \
    eo.c[11] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.c[11])); \
    eo.c[12] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.c[12])); \
    eo.c[13] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.c[13])); \
    eo.c[14] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.c[14])); \
    eo.c[15] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.c[15])); \
    eo.d[0] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.d[0])); \
    eo.d[1] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.d[1])); \
    eo.d[2] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.d[2])); \
    eo.d[3] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.d[3])); \
    eo.d[4] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.d[4])); \
    eo.d[5] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.d[5])); \
    eo.d[6] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.d[6])); \
    eo.d[7] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.d[7])); \
    eo.d[8] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.d[8])); \
    eo.d[9] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.d[9])); \
    eo.d[10] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.d[10])); \
    eo.d[11] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.d[11])); \
    eo.d[12] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.d[12])); \
    eo.d[13] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.d[13])); \
    eo.d[14] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.d[14])); \
    eo.d[15] *= inv; \
    FP8_OUTPUT_POINT(__float_as_int(eo.d[15])); \
    pa[0] = pack_bf16(eo.a[0], eo.a[1]); \
    FP8_OUTPUT_POINT(pa[0]); \
    pa[1] = pack_bf16(eo.a[2], eo.a[3]); \
    FP8_OUTPUT_POINT(pa[1]); \
    pa[2] = pack_bf16(eo.a[4], eo.a[5]); \
    FP8_OUTPUT_POINT(pa[2]); \
    pa[3] = pack_bf16(eo.a[6], eo.a[7]); \
    FP8_OUTPUT_POINT(pa[3]); \
    pa[4] = pack_bf16(eo.a[8], eo.a[9]); \
    FP8_OUTPUT_POINT(pa[4]); \
    pa[5] = pack_bf16(eo.a[10], eo.a[11]); \
    FP8_OUTPUT_POINT(pa[5]); \
    pa[6] = pack_bf16(eo.a[12], eo.a[13]); \
    FP8_OUTPUT_POINT(pa[6]); \
    pa[7] = pack_bf16(eo.a[14], eo.a[15]); \
    FP8_OUTPUT_POINT(pa[7]); \
    pb[0] = pack_bf16(eo.b[0], eo.b[1]); \
    FP8_OUTPUT_POINT(pb[0]); \
    pb[1] = pack_bf16(eo.b[2], eo.b[3]); \
    FP8_OUTPUT_POINT(pb[1]); \
    pb[2] = pack_bf16(eo.b[4], eo.b[5]); \
    FP8_OUTPUT_POINT(pb[2]); \
    pb[3] = pack_bf16(eo.b[6], eo.b[7]); \
    FP8_OUTPUT_POINT(pb[3]); \
    pb[4] = pack_bf16(eo.b[8], eo.b[9]); \
    FP8_OUTPUT_POINT(pb[4]); \
    pb[5] = pack_bf16(eo.b[10], eo.b[11]); \
    FP8_OUTPUT_POINT(pb[5]); \
    pb[6] = pack_bf16(eo.b[12], eo.b[13]); \
    FP8_OUTPUT_POINT(pb[6]); \
    pb[7] = pack_bf16(eo.b[14], eo.b[15]); \
    FP8_OUTPUT_POINT(pb[7]); \
    pc[0] = pack_bf16(eo.c[0], eo.c[1]); \
    FP8_OUTPUT_POINT(pc[0]); \
    pc[1] = pack_bf16(eo.c[2], eo.c[3]); \
    FP8_OUTPUT_POINT(pc[1]); \
    pc[2] = pack_bf16(eo.c[4], eo.c[5]); \
    FP8_OUTPUT_POINT(pc[2]); \
    pc[3] = pack_bf16(eo.c[6], eo.c[7]); \
    FP8_OUTPUT_POINT(pc[3]); \
    pc[4] = pack_bf16(eo.c[8], eo.c[9]); \
    FP8_OUTPUT_POINT(pc[4]); \
    pc[5] = pack_bf16(eo.c[10], eo.c[11]); \
    FP8_OUTPUT_POINT(pc[5]); \
    pc[6] = pack_bf16(eo.c[12], eo.c[13]); \
    FP8_OUTPUT_POINT(pc[6]); \
    pc[7] = pack_bf16(eo.c[14], eo.c[15]); \
    FP8_OUTPUT_POINT(pc[7]); \
    pd[0] = pack_bf16(eo.d[0], eo.d[1]); \
    FP8_OUTPUT_POINT(pd[0]); \
    pd[1] = pack_bf16(eo.d[2], eo.d[3]); \
    FP8_OUTPUT_POINT(pd[1]); \
    pd[2] = pack_bf16(eo.d[4], eo.d[5]); \
    FP8_OUTPUT_POINT(pd[2]); \
    pd[3] = pack_bf16(eo.d[6], eo.d[7]); \
    FP8_OUTPUT_POINT(pd[3]); \
    pd[4] = pack_bf16(eo.d[8], eo.d[9]); \
    FP8_OUTPUT_POINT(pd[4]); \
    pd[5] = pack_bf16(eo.d[10], eo.d[11]); \
    FP8_OUTPUT_POINT(pd[5]); \
    pd[6] = pack_bf16(eo.d[12], eo.d[13]); \
    FP8_OUTPUT_POINT(pd[6]); \
    pd[7] = pack_bf16(eo.d[14], eo.d[15]); \
    FP8_OUTPUT_POINT(pd[7]); \
    { \
        const auto lo = __builtin_amdgcn_permlane32_swap(pa[0], pa[2], false, false); \
        FP8_OUTPUT_POINT(lo); \
        const auto hi = __builtin_amdgcn_permlane32_swap(pa[1], pa[3], false, false); \
        FP8_OUTPUT_POINT(hi); \
        pa[0] = lo[0]; pa[2] = lo[1]; \
        pa[1] = hi[0]; pa[3] = hi[1]; \
    } \
    { \
        const auto lo = __builtin_amdgcn_permlane32_swap(pa[4], pa[6], false, false); \
        FP8_OUTPUT_POINT(lo); \
        const auto hi = __builtin_amdgcn_permlane32_swap(pa[5], pa[7], false, false); \
        FP8_OUTPUT_POINT(hi); \
        pa[4] = lo[0]; pa[6] = lo[1]; \
        pa[5] = hi[0]; pa[7] = hi[1]; \
    } \
    { \
        const auto lo = __builtin_amdgcn_permlane32_swap(pb[0], pb[2], false, false); \
        FP8_OUTPUT_POINT(lo); \
        const auto hi = __builtin_amdgcn_permlane32_swap(pb[1], pb[3], false, false); \
        FP8_OUTPUT_POINT(hi); \
        pb[0] = lo[0]; pb[2] = lo[1]; \
        pb[1] = hi[0]; pb[3] = hi[1]; \
    } \
    { \
        const auto lo = __builtin_amdgcn_permlane32_swap(pb[4], pb[6], false, false); \
        FP8_OUTPUT_POINT(lo); \
        const auto hi = __builtin_amdgcn_permlane32_swap(pb[5], pb[7], false, false); \
        FP8_OUTPUT_POINT(hi); \
        pb[4] = lo[0]; pb[6] = lo[1]; \
        pb[5] = hi[0]; pb[7] = hi[1]; \
    } \
    { \
        const auto lo = __builtin_amdgcn_permlane32_swap(pc[0], pc[2], false, false); \
        FP8_OUTPUT_POINT(lo); \
        const auto hi = __builtin_amdgcn_permlane32_swap(pc[1], pc[3], false, false); \
        FP8_OUTPUT_POINT(hi); \
        pc[0] = lo[0]; pc[2] = lo[1]; \
        pc[1] = hi[0]; pc[3] = hi[1]; \
    } \
    { \
        const auto lo = __builtin_amdgcn_permlane32_swap(pc[4], pc[6], false, false); \
        FP8_OUTPUT_POINT(lo); \
        const auto hi = __builtin_amdgcn_permlane32_swap(pc[5], pc[7], false, false); \
        FP8_OUTPUT_POINT(hi); \
        pc[4] = lo[0]; pc[6] = lo[1]; \
        pc[5] = hi[0]; pc[7] = hi[1]; \
    } \
    { \
        const auto lo = __builtin_amdgcn_permlane32_swap(pd[0], pd[2], false, false); \
        FP8_OUTPUT_POINT(lo); \
        const auto hi = __builtin_amdgcn_permlane32_swap(pd[1], pd[3], false, false); \
        FP8_OUTPUT_POINT(hi); \
        pd[0] = lo[0]; pd[2] = lo[1]; \
        pd[1] = hi[0]; pd[3] = hi[1]; \
    } \
    { \
        const auto lo = __builtin_amdgcn_permlane32_swap(pd[4], pd[6], false, false); \
        FP8_OUTPUT_POINT(lo); \
        const auto hi = __builtin_amdgcn_permlane32_swap(pd[5], pd[7], false, false); \
        FP8_OUTPUT_POINT(hi); \
        pd[4] = lo[0]; pd[6] = lo[1]; \
        pd[5] = hi[0]; pd[7] = hi[1]; \
    } \
    float lse_value; \
    if constexpr (D == 128) { \
    float log_value = params.m + log_l; \
    FP8_OUTPUT_POINT(__float_as_int(log_value)); \
    log_value += -4.f; \
    FP8_OUTPUT_POINT(__float_as_int(log_value)); \
    log_value += -2.f; \
    FP8_OUTPUT_POINT(__float_as_int(log_value)); \
    log_value *= 0.6931471805599453f; \
    FP8_OUTPUT_POINT(__float_as_int(log_value)); \
        lse_value = log_value; \
    } \
    const uint32_t wave_offset = ((uint32_t)wave & 3u) << 13; \
    const uint32_t lane = (uint32_t)tid & 63u; \
    const uint32_t row = lane & 31u; \
    const uint32_t half = (lane >> 5) & 1u; \
    const uint32_t base_write = (uint32_t)(uintptr_t)sm.out + wave_offset + (row << 8); \
    const uint32_t write_address = base_write | ((half ^ (row & 15u)) << 4); \
    *(volatile_i4_lds)(uintptr_t)(write_address ^ 0u) = __builtin_bit_cast(i4, (u4)pa.s0123); \
    SCHED_FENCE(); \
    *(volatile_i4_lds)(uintptr_t)(write_address ^ 32u) = __builtin_bit_cast(i4, (u4)pa.s4567); \
    SCHED_FENCE(); \
    *(volatile_i4_lds)(uintptr_t)(write_address ^ 64u) = __builtin_bit_cast(i4, (u4)pb.s0123); \
    SCHED_FENCE(); \
    *(volatile_i4_lds)(uintptr_t)(write_address ^ 96u) = __builtin_bit_cast(i4, (u4)pb.s4567); \
    SCHED_FENCE(); \
    *(volatile_i4_lds)(uintptr_t)(write_address ^ 128u) = __builtin_bit_cast(i4, (u4)pc.s0123); \
    SCHED_FENCE(); \
    *(volatile_i4_lds)(uintptr_t)(write_address ^ 160u) = __builtin_bit_cast(i4, (u4)pc.s4567); \
    SCHED_FENCE(); \
    *(volatile_i4_lds)(uintptr_t)(write_address ^ 192u) = __builtin_bit_cast(i4, (u4)pd.s0123); \
    SCHED_FENCE(); \
    *(volatile_i4_lds)(uintptr_t)(write_address ^ 224u) = __builtin_bit_cast(i4, (u4)pd.s4567); \
    SCHED_FENCE(); \
    __builtin_amdgcn_wave_barrier(); \
    const uint32_t first_row = (lane >> 4) & 3u; \
    const uint32_t column = lane & 15u; \
    const uint32_t base_read = (uint32_t)(uintptr_t)sm.out + wave_offset + (first_row << 8); \
    const uint32_t read_address = base_read | ((column ^ first_row) << 4); \
    const i4 read0 = *(volatile_i4_lds)(uintptr_t)((read_address ^ 0u) + 0u); \
    SCHED_FENCE(); \
    const i4 read1 = *(volatile_i4_lds)(uintptr_t)((read_address ^ 64u) + 1024u); \
    SCHED_FENCE(); \
    const i4 read2 = *(volatile_i4_lds)(uintptr_t)((read_address ^ 128u) + 2048u); \
    SCHED_FENCE(); \
    const i4 read3 = *(volatile_i4_lds)(uintptr_t)((read_address ^ 192u) + 3072u); \
    SCHED_FENCE(); \
    const i4 read4 = *(volatile_i4_lds)(uintptr_t)((read_address ^ 0u) + 4096u); \
    SCHED_FENCE(); \
    const i4 read5 = *(volatile_i4_lds)(uintptr_t)((read_address ^ 64u) + 5120u); \
    SCHED_FENCE(); \
    const i4 read6 = *(volatile_i4_lds)(uintptr_t)((read_address ^ 128u) + 6144u); \
    SCHED_FENCE(); \
    const i4 read7 = *(volatile_i4_lds)(uintptr_t)((read_address ^ 192u) + 7168u); \
    SCHED_FENCE(); \
    const uint32_t output_row = saved_q_start + first_row; \
    FP8_OUTPUT_POINT(output_row); \
    const uint32_t output_product = output_row * (uint32_t)args.o_ss; \
    FP8_OUTPUT_POINT(output_product); \
    const uint32_t address0 = output_product + (column << 4); \
    FP8_OUTPUT_POINT(address0); \
    const uint32_t row_step = (uint32_t)args.o_ss << 2; \
    const uint32_t address1 = address0 + row_step; \
    FP8_OUTPUT_POINT(address1); \
    const uint32_t address2 = address1 + row_step; \
    FP8_OUTPUT_POINT(address2); \
    const uint32_t address3 = address2 + row_step; \
    FP8_OUTPUT_POINT(address3); \
    const uint32_t address4 = address3 + row_step; \
    FP8_OUTPUT_POINT(address4); \
    const uint32_t address5 = address4 + row_step; \
    FP8_OUTPUT_POINT(address5); \
    const uint32_t address6 = address5 + row_step; \
    FP8_OUTPUT_POINT(address6); \
    const uint32_t address7 = address6 + row_step; \
    FP8_OUTPUT_POINT(address7); \
    FP8_LDS_WAIT(7); \
    *(global_i4)(saved_oh + address0) = read0; \
    SCHED_FENCE(); \
    FP8_LDS_WAIT(6); \
    *(global_i4)(saved_oh + address1) = read1; \
    SCHED_FENCE(); \
    FP8_LDS_WAIT(5); \
    *(global_i4)(saved_oh + address2) = read2; \
    SCHED_FENCE(); \
    FP8_LDS_WAIT(4); \
    *(global_i4)(saved_oh + address3) = read3; \
    SCHED_FENCE(); \
    FP8_LDS_WAIT(3); \
    *(global_i4)(saved_oh + address4) = read4; \
    SCHED_FENCE(); \
    FP8_LDS_WAIT(2); \
    *(global_i4)(saved_oh + address5) = read5; \
    SCHED_FENCE(); \
    FP8_LDS_WAIT(1); \
    *(global_i4)(saved_oh + address6) = read6; \
    SCHED_FENCE(); \
    FP8_LDS_WAIT(0); \
    *(global_i4)(saved_oh + address7) = read7; \
    SCHED_FENCE(); \
    if constexpr (D == 192) { \
    float log_value = params.m + log_l; \
    FP8_OUTPUT_POINT(__float_as_int(log_value)); \
    log_value += -4.f; \
    FP8_OUTPUT_POINT(__float_as_int(log_value)); \
    log_value += -2.f; \
    FP8_OUTPUT_POINT(__float_as_int(log_value)); \
    log_value *= 0.6931471805599453f; \
    FP8_OUTPUT_POINT(__float_as_int(log_value)); \
        lse_value = log_value; \
    } \
    const uint32_t lse_row = saved_q_start + (lane & 31u); \
    FP8_OUTPUT_POINT(lse_row); \
    const uint32_t lse_byte_offset = lse_row << 2; \
    FP8_OUTPUT_POINT(lse_byte_offset); \
    if (saved_lh) *(global_float)((global_byte)saved_lh + lse_byte_offset) = lse_value; \
} while (false)

#define FP8_COMPUTE_STATS(OUT, FIRST) do { \
    FP8_MAX16(ma, s.a); \
    FP8_MAX16(mb, s.b); \
    float hi_raw; \
    if constexpr (D == 128) { \
        FP8_MAX16(mc, s.c); \
        FP8_MAX16(md, s.d); \
        hi_raw = fmaxf(mc, md); \
        FP8_SCHEDULE_POINT(__float_as_int(hi_raw)); \
    } \
    const float lo_raw = fmaxf(ma, mb); \
    FP8_SCHEDULE_POINT(__float_as_int(lo_raw)); \
    const auto lo_swap = __builtin_amdgcn_permlane32_swap(__float_as_int(lo_raw), __float_as_int(lo_raw), false, false); \
    FP8_SCHEDULE_POINT(lo_swap); \
    float hi = 0.f; \
    if constexpr (D == 128) { \
        const auto hi_swap = __builtin_amdgcn_permlane32_swap(__float_as_int(hi_raw), __float_as_int(hi_raw), false, false); \
        FP8_SCHEDULE_POINT(hi_swap); \
        hi = fmaxf(__int_as_float(hi_swap[0]), __int_as_float(hi_swap[1])); \
        FP8_SCHEDULE_POINT(__float_as_int(hi)); \
    } \
    const float lo = fmaxf(__int_as_float(lo_swap[0]), __int_as_float(lo_swap[1])); \
    FP8_SCHEDULE_POINT(__float_as_int(lo)); \
    if constexpr (D == 192) hi = lo; \
    const float tile_max = fmaxf(lo, hi); \
    FP8_SCHEDULE_POINT(__float_as_int(tile_max)); \
    const float next_m = tile_max * scale; \
    FP8_SCHEDULE_POINT(__float_as_int(next_m)); \
    if constexpr (FIRST) { \
        (OUT).m = next_m; \
        (OUT).rescale = false; \
        (OUT).corr = 1.f; \
    } else { \
        const float m = fmaxf(params.m, next_m); \
        FP8_SCHEDULE_POINT(__float_as_int(m)); \
        (OUT).rescale = __builtin_amdgcn_ballot_w64(m - params.m > 0.125f) != 0; \
        FP8_SCHEDULE_POINT((OUT).rescale); \
        const uint64_t rescale_mask = (OUT).rescale ? -1ULL : 0ULL; \
        FP8_SCHEDULE_POINT(rescale_mask); \
        (OUT).m = select_wave_mask(rescale_mask, params.m, m); \
    } \
    FP8_SCHEDULE_POINT(__float_as_int((OUT).m)); \
    const float off_lo = block_offset(lo, scale, (OUT).m); \
    FP8_SCHEDULE_POINT(__float_as_int(off_lo)); \
    (OUT).sb_lo = 127 + (int)off_lo; \
    (OUT).sum_scale_lo = __int_as_float((OUT).sb_lo << 23); \
    FP8_SCHEDULE_POINT((OUT).sb_lo, __float_as_int((OUT).sum_scale_lo)); \
    if constexpr (D == 128) { \
        const float off_hi = block_offset(hi, scale, (OUT).m); \
        FP8_SCHEDULE_POINT(__float_as_int(off_hi)); \
        (OUT).sb_hi = 127 + (int)off_hi; \
        (OUT).sum_scale_hi = __int_as_float((OUT).sb_hi << 23); \
        FP8_SCHEDULE_POINT((OUT).sb_hi, __float_as_int((OUT).sum_scale_hi)); \
        const float bias = fma_negative_eight((OUT).m, b8k); \
        FP8_SCHEDULE_POINT(__float_as_int(bias)); \
        (OUT).bias_lo = fma_negative_eight(off_lo, bias); \
        (OUT).bias_hi = fma_negative_eight(off_hi, bias); \
    } else { \
        (OUT).sb_hi = (OUT).sb_lo; \
        (OUT).sum_scale_hi = (OUT).sum_scale_lo; \
        (OUT).bias_lo = code_bias((OUT).m, off_lo); \
        (OUT).bias_hi = (OUT).bias_lo; \
    } \
    FP8_SCHEDULE_POINT(__float_as_int((OUT).bias_lo), __float_as_int((OUT).bias_hi)); \
} while (false)

#define FP8_MASKED_MM() do { \
    const uint32_t cur = (base + sk) & 3u; \
    const uint32_t next = (cur + 1u) & 3u; \
    [[clang::nomerge]] __builtin_amdgcn_s_setprio(1); \
    const auto prefetch = [&]() { \
        if (sk + 4u < n) load_k<D>(sm, kr, cur, sk + 4u, k_stride, tid); \
        if (sk + 2u < n) load_v<D>(sm, vr, (cur + 2u) & 3u, sk + 2u, v_stride, tid); \
    }; \
    const auto rs_lo = row_sum_vector(data.p.a, sel); \
    FP8_SCHEDULE_POINT(rs_lo); \
    if constexpr (D == 128) { \
        const auto rs_hi = row_sum_vector(data.p.b, sel); \
        FP8_SCHEDULE_POINT(rs_hi); \
        l = add_scaled_sum(l, rs_lo[0], params.sum_scale_lo); \
        FP8_SCHEDULE_POINT(__float_as_int(l)); \
        l = add_scaled_sum(l, rs_hi[0], params.sum_scale_hi); \
        FP8_SCHEDULE_POINT(__float_as_int(l)); \
    } else { \
        l = __builtin_fmaf(rs_lo[0], __int_as_float(params.sb_lo << 23), l); \
        FP8_SCHEDULE_POINT(__float_as_int(l)); \
    } \
    s = qk<D, -1>(sm, next, q, data.head, [&]() { if constexpr (D == 128) prefetch(); }); \
    [[clang::nomerge]] phase_use(s.a); \
    [[clang::nomerge]] phase_use(s.b); \
    if constexpr (D == 128) { \
        [[clang::nomerge]] phase_use(s.c); \
        [[clang::nomerge]] phase_use(s.d); \
    } \
    SCHED_FENCE(); \
    mask<D, 0>(s.a, q_start, sk + 1u); \
    [[clang::nomerge]] phase_use(s.a); \
    SCHED_FENCE(); \
    mask<D, 1>(s.b, q_start, sk + 1u); \
    [[clang::nomerge]] phase_use(s.b); \
    SCHED_FENCE(); \
    if constexpr (D == 128) { \
        mask<D, 2>(s.c, q_start, sk + 1u); \
        [[clang::nomerge]] phase_use(s.c); \
        SCHED_FENCE(); \
        mask<D, 3>(s.d, q_start, sk + 1u); \
        [[clang::nomerge]] phase_use(s.d); \
        SCHED_FENCE(); \
    } \
    Params np; \
    FP8_COMPUTE_STATS(np, false); \
    pv<D, -1>(sm, cur, data.p, params, o, [&]() { if constexpr (D == 192) prefetch(); }); \
    prepare_scores<D>(s, np, p_scale); \
    if constexpr (D == 192) { FP8_SCHEDULE_POINT(s.a, s.b); } \
    if (np.rescale) { \
        np.corr = exp2_hw(params.m - np.m); \
        o.a *= np.corr; \
        o.b *= np.corr; \
        o.c *= np.corr; \
        o.d *= np.corr; \
        l *= np.corr; \
    } \
    params = np; \
    wait_dma(); \
    phase_barrier(); \
} while (false)

template <int D>
__global__ __launch_bounds__(512, 1) void attend(Args<D> kernel_args) {
#pragma clang fp reassociate(off)
    const auto ap = (kernarg_bytes)__builtin_amdgcn_kernarg_segment_ptr();
    const u16 a = *(kernarg_u16)(ap);
    const u16 b = *(kernarg_u16)(ap + 64);
    const u4 c = *(kernarg_u4)(ap + 128);
    const u2 d = *(kernarg_u2)(ap + 144);
    FP8_SCHEDULE_POINT(a, b, c, d);
    const Args<D> args = __builtin_bit_cast(Args<D>, RawArgs{a, b, c, d});
    __shared__ __align__(128) unsigned char k0[16384], k1[16384], k2[16384], k3[16384];
    __shared__ __align__(128) unsigned char v0[vslot_bytes<D>], v1[vslot_bytes<D>],
                                                 v2[vslot_bytes<D>], v3[vslot_bytes<D>];
    __shared__ __align__(16) unsigned char output_storage[32768];
    const int tid = threadIdx.x;
    const int wave = __builtin_amdgcn_readfirstlane(tid >> 6);
    const int lc = laneid() & 31, lgb = laneid() >> 5;
    const int kp0 = D == 128 ? ((lgb ^ (lc >> 2)) & 3) : ((lgb + lc) & 7);
    const int kp1 = D == 128 ? (((2 + lgb) ^ (lc >> 2)) & 3) : ((2 + lgb + lc) & 7);
    const int kp2 = ((4 + lgb + lc) & 7);
    const int stride = D == 128 ? 128 : 256;
    const int klane0 = (lc * stride) | (kp0 * 32);
    const int klane1 = (lc * stride) | (kp1 * 32);
    const int klane2 = (lc * stride) | (kp2 * 32);
    phase_use(klane0);
    phase_use(klane1);
    if constexpr (D == 192) phase_use(klane2);
    const int group = wave >> 2;
    const int qwarp = args.pair ? (wave & 3) : wave;
    const int paired_head = args.pair ? group : 0;
    const float qd = args.q_descale ? *((const_global_float)args.q_descale) : 1.f;
    const float kd = args.k_descale ? *((const_global_float)args.k_descale) : 1.f;
    const float vd = args.v_descale ? *((const_global_float)args.v_descale) : 1.f;
    const float qk_descale = qd * kd;
    const float scale = args.sl2 * qk_descale;
    float p_scale = scale;
    if constexpr (D == 128)
        p_scale = args.c8 * qk_descale;
    const float v_scale = vd * args.v_scale;
    const float b8k = [&]() { if constexpr (D == 128) return args.b8k; else return 0.f; }();
    int k_stride, v_stride;
    if constexpr (D == 128) {
        k_stride = args.kv_ss;
        v_stride = args.kv_ss;
    } else {
        k_stride = args.k_ss;
        v_stride = args.v_ss;
    }
    u2 koffsets{}, voffsets{};
#pragma unroll
    for (int pass_index = 0; pass_index < 2; ++pass_index) {
        const uint32_t ctid = (uint32_t)tid + 512u * pass_index;
        FP8_SCHEDULE_POINT(ctid);
        const uint32_t key = ctid >> (D == 128 ? 3u : 4u);
        FP8_SCHEDULE_POINT(key);
        uint32_t pair = __builtin_amdgcn_ubfe(ctid, 1u, D == 128 ? 2u : 3u);
        FP8_SCHEDULE_POINT(pair);
        if constexpr (D == 128) {
            const uint32_t key_group = key >> 2;
            FP8_SCHEDULE_POINT(key_group);
            pair ^= key_group;
            FP8_SCHEDULE_POINT(pair);
            pair &= 3u;
            FP8_SCHEDULE_POINT(pair);
        } else {
            pair -= key;
            FP8_SCHEDULE_POINT(pair);
            pair &= 7u;
            FP8_SCHEDULE_POINT(pair);
            pair = pair < 6u ? pair : 0u;
            FP8_SCHEDULE_POINT(pair);
        }
        uint32_t chunk = pair << 5;
        FP8_SCHEDULE_POINT(chunk);
        const uint32_t low_bit = __builtin_amdgcn_ubfe(ctid, 0u, 1u);
        FP8_SCHEDULE_POINT(low_bit);
        chunk += low_bit << 4;
        FP8_SCHEDULE_POINT(chunk);
        const uint32_t product = key * (uint32_t)k_stride;
        FP8_SCHEDULE_POINT(product);
        koffsets[pass_index] = product + chunk;
        FP8_SCHEDULE_POINT(koffsets[pass_index]);
    }
#pragma unroll
    for (int pass_index = 0; pass_index < (D == 128 ? 2 : 1); ++pass_index) {
        const uint32_t ctid = (uint32_t)tid + 512u * pass_index;
        FP8_SCHEDULE_POINT(ctid);
        const uint32_t nk = __builtin_amdgcn_ubfe(ctid, 7u, D == 128 ? 2u : 1u);
        FP8_SCHEDULE_POINT(nk);
        uint32_t key = nk << 5;
        FP8_SCHEDULE_POINT(key);
        const uint32_t gt = __builtin_amdgcn_ubfe(ctid, D == 128 ? 9u : 8u, 1u);
        FP8_SCHEDULE_POINT(gt);
        key += gt << 2;
        FP8_SCHEDULE_POINT(key);
        const uint32_t half = __builtin_amdgcn_ubfe(ctid, 6u, 1u);
        FP8_SCHEDULE_POINT(half);
        key += half << 4;
        FP8_SCHEDULE_POINT(key);
        const uint32_t bit2 = __builtin_amdgcn_ubfe(ctid, 2u, 1u);
        FP8_SCHEDULE_POINT(bit2);
        key += bit2 << 3;
        FP8_SCHEDULE_POINT(key);
        const uint32_t low = ctid & 3u;
        FP8_SCHEDULE_POINT(low);
        key += low;
        FP8_SCHEDULE_POINT(key);
        const uint32_t dg = __builtin_amdgcn_ubfe(ctid, 3u, 3u);
        FP8_SCHEDULE_POINT(dg);
        const uint32_t chunk = dg << 4;
        FP8_SCHEDULE_POINT(chunk);
        const uint32_t product = key * (uint32_t)v_stride;
        FP8_SCHEDULE_POINT(product);
        voffsets[pass_index] = product + chunk;
        FP8_SCHEDULE_POINT(voffsets[pass_index]);
    }
    const Lds<D> sm{(byte_lds)k0, (byte_lds)k1, (byte_lds)k2, (byte_lds)k3,
                   (byte_lds)v0, (byte_lds)v1, (byte_lds)v2, (byte_lds)v3, (byte_lds)output_storage,
                   wave * 1024, klane0, klane1, klane2, koffsets[0], koffsets[1], voffsets[0], voffsets[1]};
    const i8 sel = selector();

    uint32_t job = blockIdx.x, pass = 0, base = 0, next_base = 0;
    uint32_t q_start = 0, n = 0, fm = 0, k = 0, qx_saved = 0;
    const_global_byte qh = nullptr, kh = nullptr, vh = nullptr;
    global_byte oh = nullptr, saved_oh = nullptr;
    global_float lh = nullptr, saved_lh = nullptr;
    uint32_t saved_q_start = 0;
    g2s_i32x4 kr{}, vr{};
    Query<D> q;
    Head<D> first_head;
    Scores<D> s;
    Params params;
    o_tile o{};
    float l = 0.f;
    uint32_t have_next = 0;
    const uint32_t k_step = keys<D> * k_stride, v_step = keys<D> * v_stride;
    uint32_t k_max = 0, v_max = 0, k_future = 0, v_future = 0;
    u8 jobdata{};
    const auto load_job = [&]() {
        const uint32_t offset = job * 32u;
        jobdata = *(table_u8)((uintptr_t)args.tab + offset);
    };
    const auto set_pass = [&]() {
        const uint32_t qx = __builtin_amdgcn_readfirstlane(jobdata[0]);
        const uint32_t lse_offset = __builtin_amdgcn_readfirstlane(jobdata[1]);
        const uint64_t qo = (uint64_t)jobdata[2] | ((uint64_t)jobdata[3] << 32);
        const uint64_t ko = (uint64_t)jobdata[4] | ((uint64_t)jobdata[5] << 32);
        const uint32_t word6 = jobdata[6];
        const uint32_t word7 = jobdata[7];
        uint64_t vo, oo;
        if constexpr (D == 128) {
            vo = ko;
            oo = (uint64_t)word6 | ((uint64_t)word7 << 32);
        } else {
            vo = (uint64_t)word6 << 7;
            oo = (uint64_t)word7 << 8;
        }
        qh = (const_global_byte)args.q + qo + (size_t)paired_head * args.q_sh2;
        kh = (const_global_byte)args.k + ko;
        vh = (const_global_byte)args.v + vo;
        oh = (global_byte)args.o + oo + (size_t)paired_head * args.o_sh2;
        // Host validation bounds the complete LSE span below 4 GiB.
        const uint32_t lse_byte_offset = (lse_offset + paired_head * args.l_sh2) * 4u;
        lh = args.lse ? (global_float)((global_byte)args.lse + lse_byte_offset) : nullptr;
        kr = make_srsrc((const void *)(uintptr_t)kh, args.n_keys * k_stride);
        vr = make_srsrc((const void *)(uintptr_t)vh, args.n_keys * v_stride);

        const uint32_t qblk = pass == 0 ? args.num_q - 1u - qx : qx;
        q_start = (qblk * args.qw + qwarp) * 32u;
        n = min(args.n_keys / keys<D>, ((qblk + 1u) * args.qw * 32u + keys<D> - 1u) / keys<D>);
        fm = q_start / keys<D>;

        qx_saved = qx;
    };
    const auto load_first_tiles = [&](uint32_t ring_base) {
        load_k<D>(sm, kr, ring_base, 0, k_stride, tid);
        load_v<D>(sm, vr, ring_base, 0, v_stride, tid);
        if (n > 1) load_k<D>(sm, kr, (ring_base + 1) & 3, 1, k_stride, tid);
    };
    const auto load_first_tiles_group0 = [&](uint32_t ring_base) {
        load_k_group0<D>(sm, kr, ring_base, 0, k_stride, tid);
        load_v_group0<D>(sm, vr, ring_base, 0, v_stride, tid);
        if (n > 1) load_k_group0<D>(sm, kr, (ring_base + 1) & 3, 1, k_stride, tid);
    };
    if (job >= args.n_jobs) goto kernel_end;
    load_job();
    set_pass();
    FP8_LOAD_QUERY();
    load_first_tiles(base);
    wait_dma();
    phase_barrier();
    if (group == 1) phase_barrier();
    goto pass_start;

pass_top:
    FP8_OUTPUT();
pass_start:
    fm = __builtin_amdgcn_readfirstlane(fm);
    n = __builtin_amdgcn_readfirstlane(n);
    base = __builtin_amdgcn_readfirstlane(base);
    __builtin_amdgcn_s_waitcnt(0x0f78);
    k_max = (n - 1) * k_step;
    v_max = (n - 1) * v_step;
    k_future = 4 * k_step;
    v_future = 2 * v_step;
    first_head = read_head<D, -1>(sm, base);
    FP8_SCHEDULE_POINT(first_head.a, first_head.b);
    if constexpr (D == 192) { FP8_SCHEDULE_POINT(first_head.c, first_head.d); }
    if (fm != 0) {
        [[clang::nomerge]] pipeline_priority(1);
        s = qk<D, -1>(sm, base, q, first_head, []() {});
        [[clang::nomerge]] phase_use(s.a);
        [[clang::nomerge]] phase_use(s.b);
        if constexpr (D == 128) {
            [[clang::nomerge]] phase_use(s.c);
            [[clang::nomerge]] phase_use(s.d);
        }
        SCHED_FENCE();
        FP8_COMPUTE_STATS(params, true);
        prepare_scores<D>(s, params, p_scale);
        if constexpr (D == 192) {
            [[clang::nomerge]] phase_use(s.a);
            [[clang::nomerge]] phase_use(s.b);
            SCHED_FENCE();
        }
    } else {
        [[clang::nomerge]] pipeline_priority(1);
        s = qk<D, -1>(sm, base, q, first_head, []() {});
        [[clang::nomerge]] phase_use(s.a);
        [[clang::nomerge]] phase_use(s.b);
        if constexpr (D == 128) {
            [[clang::nomerge]] phase_use(s.c);
            [[clang::nomerge]] phase_use(s.d);
        }
        SCHED_FENCE();
        mask<D, 0>(s.a, q_start, 0);
        [[clang::nomerge]] phase_use(s.a);
        SCHED_FENCE();
        mask<D, 1>(s.b, q_start, 0);
        [[clang::nomerge]] phase_use(s.b);
        SCHED_FENCE();
        if constexpr (D == 128) {
            mask<D, 2>(s.c, q_start, 0);
            [[clang::nomerge]] phase_use(s.c);
            SCHED_FENCE();
            mask<D, 3>(s.d, q_start, 0);
            [[clang::nomerge]] phase_use(s.d);
            SCHED_FENCE();
        }
        FP8_COMPUTE_STATS(params, true);
        prepare_scores<D>(s, params, p_scale);
        if constexpr (D == 192) {
            [[clang::nomerge]] phase_use(s.a);
            [[clang::nomerge]] phase_use(s.b);
            SCHED_FENCE();
        }
    }
    wait_dma();
    o = o_tile{};
    l = 0.f;
    if (group == 0) {
        if (n > 1) load_v_group0<D>(sm, vr, (base + 1) & 3, 1, v_stride, tid);
        if (n > 2) load_k_group0<D>(sm, kr, (base + 2) & 3, 2, k_stride, tid);
        if (n > 3) load_k_group0<D>(sm, kr, (base + 3) & 3, 3, k_stride, tid);
        wait_dma();
    }
    phase_barrier();
    k = 0;
    if (base == 0) goto stage0;
    if (base == 1) goto stage1;
    if (base == 2) goto stage2;
    goto stage3;

stage0:
    if (__builtin_expect(scalar_increment(k) >= fm, 0)) goto tail;
    FP8_STEP(0, false, k);
    SCHED_FENCE();
    k = scalar_increment(k);
    goto stage1;

stage1:
    if (__builtin_expect(scalar_increment(k) >= fm, 0)) goto tail;
    FP8_STEP(1, false, k);
    SCHED_FENCE();
    k = scalar_increment(k);
    goto stage2;

stage2:
    if (__builtin_expect(scalar_increment(k) >= fm, 0)) goto tail;
    FP8_STEP(2, false, k);
    SCHED_FENCE();
    k = scalar_increment(k);
    goto stage3;

stage3:
    if (__builtin_expect(scalar_increment(k) >= fm, 0)) goto tail;
    FP8_STEP(3, false, k);
    SCHED_FENCE();
    k = scalar_increment(k);
    goto stage0;


tail:
    if ((base + k) & 1) goto tail1;
        tail0: {
            if (scalar_increment(k) >= n) goto last0;
            if (k < fm) goto normal0;
            if (k == fm) goto pvo0;
            phase_barrier();
            wait_dma();
            if (k + 4 < n) load_k<D>(sm, kr, (base + k) & 3, k + 4, k_stride, tid);
            if (k + 2 < n) load_v<D>(sm, vr, (base + k + 2) & 3, k + 2, v_stride, tid);
            phase_barrier();
            k = scalar_increment(k);
            goto tail1;
        }
        pvo0: {
            [[clang::nomerge]] __builtin_amdgcn_s_setprio(0);
            Probability<D> p = softmax<D>(s, params, p_scale);
            phase_use(p.a);
            if constexpr (D == 128) phase_use(p.b);
            phase_barrier();
            [[clang::nomerge]] __builtin_amdgcn_s_setprio(1);
            wait_dma();
            l = add_tail_sum<D>(l, row_sum(p.a, sel), D == 128 ? params.sum_scale_lo : __int_as_float(params.sb_lo << 23));
            if constexpr (D == 128) l = add_tail_sum<D>(l, row_sum(p.b, sel), params.sum_scale_hi);
            pv<D, -1>(sm, (base + k) & 3, p, params, o, [&]() {
                if (k + 4 < n) load_k<D>(sm, kr, (base + k) & 3, k + 4, k_stride, tid);
                if (k + 2 < n) load_v<D>(sm, vr, (base + k + 2) & 3, k + 2, v_stride, tid);
            });
            phase_barrier();
            k = scalar_increment(k);
            goto tail1;
        }
        normal0: {
            __builtin_assume(k < fm);
            FP8_STEP(-1, true, k);
            SCHED_FENCE();
            k = scalar_increment(k);
            goto tail1;
        }

        last0: {
            if (fm < k) goto dead_last0;
            [[clang::nomerge]] __builtin_amdgcn_s_setprio(0);
            Probability<D> p = softmax<D>(s, params, p_scale);
            phase_use(p.a);
            if constexpr (D == 128) phase_use(p.b);
            wait_dma();
            phase_barrier();

    saved_q_start = q_start;
    saved_oh = oh;
    saved_lh = lh;
    next_base = (base + n) & 3;
    have_next = 1;
    if (pass != 0) goto advance_last0;
    if (qx_saved == args.num_q - 1u - qx_saved) goto advance_last0;
    pass = 1;
    goto prepare_last0;
advance_last0:
    job = scalar_add(job, args.grid);
    pass = 0;
    have_next = 0;
    if (job >= args.n_jobs) goto finished_last0;
    load_job();
    have_next = 1;
prepare_last0:
    set_pass();
    if (group == 0) load_first_tiles_group0(next_base);
    FP8_LOAD_QUERY();
finished_last0:

            [[clang::nomerge]] __builtin_amdgcn_s_setprio(1);
            l = add_tail_sum<D>(l, row_sum(p.a, sel), D == 128 ? params.sum_scale_lo : __int_as_float(params.sb_lo << 23));
            if constexpr (D == 128) l = add_tail_sum<D>(l, row_sum(p.b, sel), params.sum_scale_hi);
            pv<D, -1>(sm, (base + k) & 3, p, params, o, []() {});
            goto pass_done0;
        }
        dead_last0: {
            wait_dma();
            phase_barrier();

    saved_q_start = q_start;
    saved_oh = oh;
    saved_lh = lh;
    next_base = (base + n) & 3;
    have_next = 1;
    if (pass != 0) goto advance_dead_last0;
    if (qx_saved == args.num_q - 1u - qx_saved) goto advance_dead_last0;
    pass = 1;
    goto prepare_dead_last0;
advance_dead_last0:
    job = scalar_add(job, args.grid);
    pass = 0;
    have_next = 0;
    if (job >= args.n_jobs) goto finished_dead_last0;
    load_job();
    have_next = 1;
prepare_dead_last0:
    set_pass();
    if (group == 0) load_first_tiles_group0(next_base);
    FP8_LOAD_QUERY();
finished_dead_last0:

            goto pass_done0;
        }
        tail1: {
            if (scalar_increment(k) >= n) goto last1;
            if (k < fm) goto normal1;
            if (k == fm) goto pvo1;
            phase_barrier();
            wait_dma();
            if (k + 4 < n) load_k<D>(sm, kr, (base + k) & 3, k + 4, k_stride, tid);
            if (k + 2 < n) load_v<D>(sm, vr, (base + k + 2) & 3, k + 2, v_stride, tid);
            phase_barrier();
            k = scalar_increment(k);
            goto tail0;
        }
        pvo1: {
            [[clang::nomerge]] __builtin_amdgcn_s_setprio(0);
            Probability<D> p = softmax<D>(s, params, p_scale);
            phase_use(p.a);
            if constexpr (D == 128) phase_use(p.b);
            phase_barrier();
            [[clang::nomerge]] __builtin_amdgcn_s_setprio(1);
            wait_dma();
            l = add_tail_sum<D>(l, row_sum(p.a, sel), D == 128 ? params.sum_scale_lo : __int_as_float(params.sb_lo << 23));
            if constexpr (D == 128) l = add_tail_sum<D>(l, row_sum(p.b, sel), params.sum_scale_hi);
            pv<D, -1>(sm, (base + k) & 3, p, params, o, [&]() {
                if (k + 4 < n) load_k<D>(sm, kr, (base + k) & 3, k + 4, k_stride, tid);
                if (k + 2 < n) load_v<D>(sm, vr, (base + k + 2) & 3, k + 2, v_stride, tid);
            });
            phase_barrier();
            k = scalar_increment(k);
            goto tail0;
        }
        normal1: {
            __builtin_assume(k < fm);
            FP8_STEP(-1, true, k);
            SCHED_FENCE();
            k = scalar_increment(k);
            goto tail0;
        }

        last1: {
            if (fm < k) goto dead_last1;
            [[clang::nomerge]] __builtin_amdgcn_s_setprio(0);
            Probability<D> p = softmax<D>(s, params, p_scale);
            phase_use(p.a);
            if constexpr (D == 128) phase_use(p.b);
            wait_dma();
            phase_barrier();

    saved_q_start = q_start;
    saved_oh = oh;
    saved_lh = lh;
    next_base = (base + n) & 3;
    have_next = 1;
    if (pass != 0) goto advance_last1;
    if (qx_saved == args.num_q - 1u - qx_saved) goto advance_last1;
    pass = 1;
    goto prepare_last1;
advance_last1:
    job = scalar_add(job, args.grid);
    pass = 0;
    have_next = 0;
    if (job >= args.n_jobs) goto finished_last1;
    load_job();
    have_next = 1;
prepare_last1:
    set_pass();
    if (group == 0) load_first_tiles_group0(next_base);
    FP8_LOAD_QUERY();
finished_last1:

            [[clang::nomerge]] __builtin_amdgcn_s_setprio(1);
            l = add_tail_sum<D>(l, row_sum(p.a, sel), D == 128 ? params.sum_scale_lo : __int_as_float(params.sb_lo << 23));
            if constexpr (D == 128) l = add_tail_sum<D>(l, row_sum(p.b, sel), params.sum_scale_hi);
            pv<D, -1>(sm, (base + k) & 3, p, params, o, []() {});
            goto pass_done1;
        }
        dead_last1: {
            wait_dma();
            phase_barrier();

    saved_q_start = q_start;
    saved_oh = oh;
    saved_lh = lh;
    next_base = (base + n) & 3;
    have_next = 1;
    if (pass != 0) goto advance_dead_last1;
    if (qx_saved == args.num_q - 1u - qx_saved) goto advance_dead_last1;
    pass = 1;
    goto prepare_dead_last1;
advance_dead_last1:
    job = scalar_add(job, args.grid);
    pass = 0;
    have_next = 0;
    if (job >= args.n_jobs) goto finished_dead_last1;
    load_job();
    have_next = 1;
prepare_dead_last1:
    set_pass();
    if (group == 0) load_first_tiles_group0(next_base);
    FP8_LOAD_QUERY();
finished_dead_last1:

            goto pass_done1;
        }


pass_done0:
    base = next_base;
    __builtin_amdgcn_s_waitcnt(D == 128 ? 0x0f74 : 0x0f76);
    SCHED_FENCE();
    [[clang::nomerge]] pipeline_barrier();
    SCHED_FENCE();
    goto pass_done;
pass_done1:
    base = next_base;
    __builtin_amdgcn_s_waitcnt(D == 128 ? 0x0f74 : 0x0f76);
    SCHED_FENCE();
    [[clang::nomerge]] pipeline_barrier();
    SCHED_FENCE();
pass_done:
    phase_use(have_next);
    if (have_next) goto pass_top;
    FP8_OUTPUT();
    if (group == 0) phase_barrier();
kernel_end:
    wait_dma();

}

#undef FP8_COMPUTE_STATS
#undef FP8_MASKED_MM
#undef FP8_OUTPUT
#undef FP8_OUTPUT_POINT
#undef FP8_STEP
#undef FP8_STEADY_MM
#undef FP8_LDS_WAIT
#undef FP8_SCHEDULE_POINT
#undef FP8_PICK_ANCHOR
#undef FP8_ANCHOR4
#undef FP8_ANCHOR3
#undef FP8_ANCHOR2
#undef FP8_ANCHOR1

hipError_t launch_d128(const Args128 &args, hipStream_t stream) {
    hipLaunchKernelGGL(attend<128>, dim3(args.grid), dim3(512), 0, stream, args);
    return hipGetLastError();
}

hipError_t launch_d192(const Args192 &args, hipStream_t stream) {
    hipLaunchKernelGGL(attend<192>, dim3(args.grid), dim3(512), 0, stream, args);
    return hipGetLastError();
}

} // namespace fmha_fp8_native
