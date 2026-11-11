#!/usr/bin/env bash
# run-timing-ebddf9d.sh GPU ROUNDS...
# Alternates owning->ebddf9d and 3ff0230->ebddf9d same-process timing runs (README protocol) per round label.
set -u
GPU=$1; shift
S=/home/jinpli/workspace/home/jinpli/development/zyfa/.claude/worktrees/agent-ac019c7f660da3916/build/gpu-validation/scripts
B=/home/jinpli/workspace/home/jinpli/development/zyfa/.claude/worktrees/agent-ac019c7f660da3916/build/ebddf9d-B/build/bench/benchmark-before-after.py
E=/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261111/gpu-validation-3ff0230/extensions
O=/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261111/gpu-validation-ebddf9d
for r in "$@"; do
  for pair in "owning-vs-ebddf9d:$E/owning-4dd38ce.so" "c3ff0230-vs-ebddf9d:$E/candidate-3ff0230.so"; do
    name=${pair%%:*}; base=${pair#*:}
    "$S/run-timing2.sh" "$B" "$base" "$O/timing/g$GPU-$name-$r" "$GPU" "$O/logs/timing-g$GPU-$name-$r.log"
    echo "== $name $r"; grep -E "^(128|192) |^exit|^max GFX" "$O/logs/timing-g$GPU-$name-$r.log"
  done
done
