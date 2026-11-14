#!/bin/bash
# Copies the zyfa working tree (tracked files, with uncommitted edits) into OUT/trees/NAME and builds it.
# Usage: build_wt.sh NAME LLVM STRICT(unset|0|1)
set -u
NAME=$1; LLVM=$2; STRICT=$3
SRC=/home/jinpli/workspace/home/jinpli/development/zyfa
OUT=$SRC/build/investigations-20261114/integrate
T=$OUT/trees/$NAME
rm -rf "$T"; mkdir -p "$T"
(cd "$SRC" && git ls-files -z | tar --null -T - -cf -) | tar -x -C "$T"
cd "$T" || exit 1
source $SRC/build/env.sh
export ROCM_HOME="$ROCM_PATH" HIP_PATH="$ROCM_PATH" MAX_JOBS=8
export ZYFA_NATIVE_LLVM_ROOT="$LLVM" ZYFA_LLVM_ROOT="$LLVM"
unset ZYFA_FP8_STRICT_ISA ZYFA_FP8_DMA_FILL
[ "$STRICT" != unset ] && export ZYFA_FP8_STRICT_ISA="$STRICT"
start=$(date +%s)
{
  python setup.py build_ext --inplace > build.log 2>&1 && python benchmarks/inspect_hip.py --output inspect >> build.log 2>&1
  code=$?
  echo "tree=$T llvm=$LLVM@$(git -C "$LLVM" rev-parse --short=12 HEAD) strict=$STRICT exit=$code wall=$(( $(date +%s) - start ))s"
  if [ -f inspect/native.co ]; then
    "$ROCM_PATH/llvm/bin/llvm-objcopy" -O binary --only-section=.text inspect/native.co inspect/text.bin
    echo "text_sha256 $(sha256sum < inspect/text.bin | cut -d' ' -f1)"
    echo "extension_sha256 $(sha256sum < zyfa/_C.*.so | cut -d' ' -f1)"
  fi
} > "$OUT/trees/$NAME.out" 2>&1
cat "$OUT/trees/$NAME.out"
