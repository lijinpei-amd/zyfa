#!/bin/bash
# Long tail/race pass of the candidate tree against the HEAD strict and HEAD non-strict extensions.
# Usage: tail_race.sh TREE EXPECTED_SHA OUTDIR LOG GPU
TREE=$1; SHA=$2; OUTDIR=$3; LOG=$4; GPU=$5
S=/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261112/gpu-validation-9cf4ce9/scripts
SO=_C.cpython-314-x86_64-linux-gnu.so
HS=/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261112/mlicm-followup/trees/head/zyfa/$SO
HNS=/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261113/nop-slots/trees/head-ns/zyfa/$SO
cd "$TREE" || exit 1
{
  echo "date: $(date -Is)"; echo "tree: $TREE"; echo "HIP_VISIBLE_DEVICES=$GPU"
  start=$(date +%s)
  HIP_VISIBLE_DEVICES=$GPU PYTHONDONTWRITEBYTECODE=1 "$S/env-run.sh" python "$S/tail_race2.py" \
    --reference "head_strict=$HS" --reference "head_nonstrict=$HNS" --expect-sha "$SHA" --output "$OUTDIR" \
    --repeats 500 --diag-repeats 20 --stress-iters 20000 --seeds 200 \
    --phases kernel,persistent,padded,diagonal,oclear,stress --oclear-extra
  code=$?
  echo "wall seconds: $(( $(date +%s) - start ))"; echo "exit: $code"
} > "$LOG" 2>&1
