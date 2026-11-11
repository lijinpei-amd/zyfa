#!/usr/bin/env bash
# run-timing2.sh SCRIPT BASELINE_EXTENSION OUTPUT_DIR GPU LOG
# run-timing.sh plus a 1 s amd-smi activity sampler for the whole run (all GPUs), saved next to the log;
# the log ends with the maximum GFX activity seen per GPU during the run.
set -u
SCRIPT=$1; BASE=$2; OUT=$3; GPU=$4; LOG=$5
S=/home/jinpli/workspace/home/jinpli/development/zyfa/.claude/worktrees/agent-ac019c7f660da3916/build/gpu-validation/scripts
SAMPLES="${LOG%.log}.activity.txt"
( while true; do echo "$(date +%T) $("$S/env-run.sh" amd-smi metric -u 2>&1 | grep GFX_ACTIVITY | awk '{printf "%s ", $2}')"; sleep 1; done ) > "$SAMPLES" &
SAMPLER=$!
{
  echo "date: $(date -Is)"; echo "script: $SCRIPT ($(sha256sum "$SCRIPT" | cut -c1-64))"
  echo "baseline: $BASE ($(sha256sum "$BASE" | cut -c1-64))"; echo "HIP_VISIBLE_DEVICES=$GPU"
  echo "--- GPU processes before"; "$S/env-run.sh" amd-smi process -g "$GPU" 2>&1 | grep -E "PID|VRAM_MEM" | paste -s -d' '
  start=$(date +%s)
  HIP_VISIBLE_DEVICES=$GPU PYTHONDONTWRITEBYTECODE=1 KINETO_LOG_LEVEL=5 "$S/env-run.sh" python "$SCRIPT" \
      --baseline-extension "$BASE" --output "$OUT" 2>&1 | grep -v -E "^USDT:|SyncActivityProfilerHandler"
  code=${PIPESTATUS[0]}
  echo "wall seconds: $(( $(date +%s) - start ))"; echo "exit: $code"
} > "$LOG" 2>&1
kill "$SAMPLER" 2>/dev/null
echo "max GFX activity per GPU during run: $(awk '{for (i = 2; i <= NF; i++) if ($i > m[i]) m[i] = $i} END {for (i = 2; i <= 9; i++) printf "%s ", m[i]+0}' "$SAMPLES")" >> "$LOG"
