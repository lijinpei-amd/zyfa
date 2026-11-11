# Environment for ATT captures of the ZYFA FP8 kernels.
source /home/jinpli/workspace/home/jinpli/development/zyfa/build/env.sh
P=/home/jinpli/workspace/home/jinpli/.local/opt/rocprofiler-7.2.3/opt/rocm-7.2.3
export PATH=$HOME/.cargo/bin:$P/bin:$PATH
export LD_LIBRARY_PATH=$P/lib:$P/lib/rocprofiler-sdk:$ROCM_PATH/lib:$LD_LIBRARY_PATH:/home/jinpli/workspace/home/jinpli/venv/01/lib/python3.14/site-packages/torch/lib
export AMDGPU_ASIC_ID_TABLE_PATHS=/home/jinpli/workspace/home/jinpli/venv/01/lib/python3.14/site-packages/torch/share/libdrm
export ATT_SKILL=/home/jinpli/workspace/home/jinpli/.claude/plugins/cache/jinpei-skills/capture-att-trace/1.0.0/skills/capture-att-trace
export ATT_DECODER_DIR=$P/lib
export ATT_PRELOAD="--preload librocprofiler-sdk.so librocprofiler-register.so libhsa-runtime64.so libamdhip64.so"
