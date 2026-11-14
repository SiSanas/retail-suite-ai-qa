#!/usr/bin/env bash
# Unattended run for cron / CI.  Usage: ./scripts/run.sh smoke   |   ./scripts/run.sh regression "Item master"
set -euo pipefail
cd "$(dirname "$0")/.."
SUITE="${1:?smoke or regression}"; FILTER="${2:-}"
mkdir -p reports/_logs
LOG="reports/_logs/${SUITE}-$(date +%Y%m%d-%H%M).log"
claude -p "/${SUITE} ${FILTER}" --output-format text 2>&1 | tee "$LOG"
