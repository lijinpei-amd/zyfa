#!/bin/bash
# Static checks of built trees: histogram vs assembly, exact LCS order, op counts, strict loops,
# O-clear hazard margins both directions, resources.
# Usage: static.sh TREE [TREE ...]
PY=/home/jinpli/workspace/home/jinpli/venv/01/bin/python
SG=/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261112/rest-gap/scripts
echo "# whole-kernel histogram vs assembly"
$PY $SG/histogram.py "$@"
echo; echo "# exact LCS order"
$PY $SG/lcs_order.py "$@"
echo; echo "# zero moves, copies, waits, nops"
$PY $SG/count_ops.py "$@"
for t in "$@"; do
  echo; echo "# $t: strict loops and copies"
  $PY $SG/strict_loops.py "$t"
  echo "# $t: O-clear hazard margins (backward: repository checker; forward: fwd_hazard.py)"
  for d in 128 192; do
    (cd "$t" && $PY benchmarks/check_inline_asm_hazards.py inspect/disassembly.s --dim $d --limit 200)
    $PY $SG/fwd_hazard.py "$t" --dim $d --limit 400
  done
  echo "# $t: resources"
  grep -E "vgpr_count|sgpr_count|vgpr_spill|sgpr_spill|private_segment" "$t/inspect/metadata.txt" | tr -s ' '
done
