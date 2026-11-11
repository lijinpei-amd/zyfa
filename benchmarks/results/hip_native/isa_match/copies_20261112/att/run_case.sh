#!/bin/bash
# Prepend the profiler's runtime libraries, as `rocprofv3 --preload` does, so torch's
# bundled HIP/HSA/rocprofiler copies are not loaded beside the tool's.
export LD_PRELOAD="librocprofiler-sdk.so:librocprofiler-register.so:libhsa-runtime64.so:libamdhip64.so${LD_PRELOAD:+:$LD_PRELOAD}"
exec python /home/jinpli/workspace/home/jinpli/development/zyfa/build/att-20261112/run_case.py "$@"
