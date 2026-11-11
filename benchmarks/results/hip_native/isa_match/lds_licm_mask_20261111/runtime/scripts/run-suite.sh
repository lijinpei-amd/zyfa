#!/usr/bin/env bash
# run-suite.sh TREE EXPECTED_EXTENSION_SHA256 LOG GPU [pytest args...]
set -u
TREE=$1; SHA=$2; LOG=$3; GPU=$4; shift 4
S=/home/jinpli/workspace/home/jinpli/development/zyfa/.claude/worktrees/agent-ac019c7f660da3916/build/gpu-validation/scripts
cd "$TREE"
{
  echo "date: $(date -Is)"; echo "tree: $TREE"; echo "HIP_VISIBLE_DEVICES=$GPU"; echo "args: $*"
  start=$(date +%s)
  HIP_VISIBLE_DEVICES=$GPU PYTHONDONTWRITEBYTECODE=1 "$S/env-run.sh" python "$S/run-pytest.py" "$SHA" "$@"
  code=$?
  echo "wall seconds: $(( $(date +%s) - start ))"; echo "exit: $code"
} > "$LOG" 2>&1
