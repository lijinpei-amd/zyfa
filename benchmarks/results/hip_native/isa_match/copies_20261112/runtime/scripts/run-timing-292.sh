#!/usr/bin/env bash
# run-timing-292.sh GPU ROUNDS...
# Alternates ac8512a->292d02a and 4dd38ce->292d02a same-process timing runs (README protocol) per round label.
set -u
GPU=$1; shift
S=/home/jinpli/workspace/home/jinpli/development/zyfa/.claude/worktrees/agent-ac019c7f660da3916/build/gpu-validation/scripts
B=/home/jinpli/workspace/home/jinpli/development/zyfa/.claude/worktrees/agent-ac019c7f660da3916/build/292d02a/build/bench/benchmark-before-after.py
O=/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261112/gpu-validation-292d02a
for r in "$@"; do
  for pair in "ac8512a-vs-292d02a:$O/extensions/ac8512a-main.so" "4dd38ce-vs-292d02a:$O/extensions/owning-4dd38ce.so"; do
    name=${pair%%:*}; base=${pair#*:}
    "$S/run-timing2.sh" "$B" "$base" "$O/timing/hip$GPU-$name-$r" "$GPU" "$O/logs/timing-hip$GPU-$name-$r.log"
    echo "== $name $r"; grep -E "^(128|192) |^exit|^max GFX" "$O/logs/timing-hip$GPU-$name-$r.log"
  done
done
