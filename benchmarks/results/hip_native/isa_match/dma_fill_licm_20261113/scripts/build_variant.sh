#!/bin/bash
# Exports a zyfa commit into OUT/trees/NAME, applies the variant's edits and builds it like
# build/att-20261112/build_tree.sh, with ZYFA_NATIVE_LLVM_ROOT = ZYFA_LLVM_ROOT = LLVM.
# Usage: build_variant.sh NAME COMMIT LLVM STRICT(unset|0|1) LICM(off|rp) FILL(keep|N)
#   LICM=rp replaces setup.py's -disable-machine-licm with -machinelicm-real-pressure.
#   FILL=N sets the non-strict default of ZYFA_FP8_DMA_FILL to N.
# Records the build, the .text SHA-256 and the extension SHA-256 in NAME.out.
set -u
NAME=$1; COMMIT=$2; LLVM=$3; STRICT=$4; LICM=$5; FILL=$6
OUT=/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261113/nop-slots
WT=/home/jinpli/workspace/home/jinpli/development/zyfa/.claude/worktrees/agent-a0aea6fd908e2ef3f
T=$OUT/trees/$NAME
rm -rf "$T"; mkdir -p "$T"
git -C "$WT" archive "$COMMIT" | tar -x -C "$T"
if [ "$LICM" = rp ]; then
  sed -i 's/-mllvm=-disable-machine-licm/-mllvm=-machinelicm-real-pressure/' "$T/setup.py"
  grep -q machinelicm-real-pressure "$T/setup.py" || { echo "setup.py edit failed"; exit 1; }
fi
if [ "$FILL" != keep ]; then
  sed -i "s/^#define ZYFA_FP8_DMA_FILL (ZYFA_FP8_STRICT_ISA ? 0 : 7)$/#define ZYFA_FP8_DMA_FILL (ZYFA_FP8_STRICT_ISA ? 0 : $FILL)/" \
    "$T/csrc/fp8_native.hip"
  grep -q "ZYFA_FP8_STRICT_ISA ? 0 : $FILL)" "$T/csrc/fp8_native.hip" || { echo "fill edit failed"; exit 1; }
fi
cd "$T" || exit 1
source /home/jinpli/workspace/home/jinpli/development/zyfa/build/env.sh
export ROCM_HOME="$ROCM_PATH" HIP_PATH="$ROCM_PATH" MAX_JOBS=8
export ZYFA_NATIVE_LLVM_ROOT="$LLVM" ZYFA_LLVM_ROOT="$LLVM"
unset ZYFA_FP8_STRICT_ISA
[ "$STRICT" != unset ] && export ZYFA_FP8_STRICT_ISA="$STRICT"
start=$(date +%s)
{
  python setup.py build_ext --inplace > build.log 2>&1 && python benchmarks/inspect_hip.py --output inspect >> build.log 2>&1
  code=$?
  echo "tree=$T commit=$COMMIT llvm=$LLVM@$(git -C "$LLVM" rev-parse --short=12 HEAD) strict=$STRICT licm=$LICM fill=$FILL exit=$code wall=$(( $(date +%s) - start ))s"
  if [ -f inspect/native.co ]; then
    "$ROCM_PATH/llvm/bin/llvm-objcopy" -O binary --only-section=.text inspect/native.co inspect/text.bin
    echo "text_sha256 $(sha256sum < inspect/text.bin | cut -d' ' -f1)"
    echo "extension_sha256 $(sha256sum < zyfa/_C.*.so | cut -d' ' -f1)"
  fi
} > "$OUT/trees/$NAME.out" 2>&1
cat "$OUT/trees/$NAME.out"
