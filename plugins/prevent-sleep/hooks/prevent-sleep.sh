#!/bin/bash
#
# prevent-sleep.sh - Keep Mac awake while Claude Code is working
#
# This script is triggered on UserPromptSubmit hook to prevent the Mac
# from sleeping during long-running Claude Code operations.
#
# Uses caffeinate with:
#   -i  Prevent idle sleep (system won't sleep from inactivity)
#   -t  Timeout in seconds (3600 = 1 hour, auto-releases after)
#

PID_FILE="/tmp/claude-caffeinate.pid"

# Kill any existing caffeinate process from previous runs
if [ -f "$PID_FILE" ]; then
    OLD_PID=$(cat "$PID_FILE")
    if ps -p "$OLD_PID" > /dev/null 2>&1; then
        kill "$OLD_PID" 2>/dev/null
    fi
    rm -f "$PID_FILE"
fi

# Start new caffeinate process with 1-hour timeout
# Using -i to prevent idle sleep (most appropriate for this use case)
caffeinate -i -t 3600 &
CAFFEINATE_PID=$!

# Store the PID for later cleanup
echo "$CAFFEINATE_PID" > "$PID_FILE"

exit 0
