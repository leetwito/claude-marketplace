#!/bin/bash
#
# allow-sleep.sh - Allow Mac to sleep again after Claude Code stops
#
# This script is triggered on Stop hook to clean up the caffeinate
# process and allow the Mac to sleep normally again.
#

PID_FILE="/tmp/claude-caffeinate.pid"

# Kill the caffeinate process if it exists
if [ -f "$PID_FILE" ]; then
    CAFFEINATE_PID=$(cat "$PID_FILE")
    if ps -p "$CAFFEINATE_PID" > /dev/null 2>&1; then
        kill "$CAFFEINATE_PID" 2>/dev/null
    fi
    rm -f "$PID_FILE"
fi

exit 0
