#include "fp8_native.h"
#include <cstdio>
#include <cstdlib>
#include <initializer_list>
#include <limits>

namespace {
unsigned pushes = 0, error_reads = 0;
}

// Stop at the HIP launch boundary so this test needs no GPU or valid buffers.
extern "C" hipError_t __hipPushCallConfiguration(dim3 grid, dim3 block, size_t shared,
                                                 hipStream_t stream) {
    if (grid.x != 1 || grid.y != 1 || grid.z != 1 || block.x != 512 ||
        block.y != 1 || block.z != 1 || shared != 0 || stream != nullptr)
        std::abort();
    ++pushes;
    return hipErrorInvalidConfiguration;
}

extern "C" hipError_t hipGetLastError() {
    ++error_reads;
    return hipErrorNotSupported;
}

template <typename Args, typename Launch>
void check(const char *name, const Args &args, Launch launch, bool accepted) {
    pushes = error_reads = 0;
    const hipError_t actual = launch(args, nullptr);
    const hipError_t expected = accepted ? hipErrorNotSupported : hipErrorInvalidValue;
    if (actual != expected || pushes != unsigned(accepted) || error_reads != unsigned(accepted)) {
        std::fprintf(stderr, "%s: status=%d expected=%d pushes=%u error_reads=%u\n",
                     name, actual, expected, pushes, error_reads);
        std::exit(1);
    }
}

int main() {
    using namespace fmha_fp8_native;
    Args128 a128{};
    Args192 a192{};
    a128.grid = a192.grid = 1;
    a128.q_ss = a128.o_ss = a192.q_ss = a192.o_ss = std::numeric_limits<uint32_t>::max();
    for (uint32_t stride : {0u, 1u, 16777215u}) {
        a128.kv_ss = stride;
        check("d128 valid", a128, launch_d128, true);
        a192.k_ss = a192.v_ss = stride;
        check("d192 valid", a192, launch_d192, true);
    }
    for (uint32_t stride : {16777216u, 16777217u, 2147483648u, 4294967295u}) {
        a128.kv_ss = stride;
        check("d128 invalid shared stride", a128, launch_d128, false);
        a192.k_ss = stride;
        a192.v_ss = 16777215u;
        check("d192 invalid K stride", a192, launch_d192, false);
        a192.k_ss = 16777215u;
        a192.v_ss = stride;
        check("d192 invalid V stride", a192, launch_d192, false);
        a192.k_ss = stride;
        check("d192 invalid both strides", a192, launch_d192, false);
    }
    std::puts("native stride guards passed (22 launch cases)");
}
