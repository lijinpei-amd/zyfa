#!/usr/bin/env bash
# Run a command with the zyfa build/runtime environment (equivalent to build/env.sh plus README exports).
# NATIVE_LLVM can override the native compiler root (default: the production llvm-project).
export ROCM_PATH=/home/jinpli/workspace/home/jinpli/.local/opt/rocm-7.2.3
export LD_LIBRARY_PATH="$ROCM_PATH/lib/compat${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
export PATH="/home/jinpli/workspace/home/jinpli/venv/01/bin:$ROCM_PATH/bin:$PATH"
export MAX_JOBS="${MAX_JOBS:-8}"
export ROCM_HOME="$ROCM_PATH" HIP_PATH="$ROCM_PATH"
export ZYFA_NATIVE_LLVM_ROOT="${NATIVE_LLVM:-/home/jinpli/workspace/home/jinpli/development/workspace/01/llvm-project}"
export ZYFA_LLVM_ROOT="$ZYFA_NATIVE_LLVM_ROOT"
export AMDGPU_ASIC_ID_TABLE_PATHS=/home/jinpli/workspace/home/jinpli/venv/01/lib/python3.14/site-packages/torch/share/libdrm
exec "$@"
