---
name: tmux-dev
description: Manage dev processes using tmux sessions. Enables multiple Claude Code sessions to share access to running processes. Use when starting, stopping, or checking status of development services.
---

# tmux Dev Environment

> **CRITICAL:** For long-running dev processes, NEVER use `Bash` with `run_in_background: true`. Background tasks are tied to a single Claude Code session and cannot be accessed by other sessions. ALWAYS use **tmux** commands as documented below.

Manages development processes via **tmux sessions**, enabling multiple Claude Code sessions to share access to running processes.

## Configuration

Before using this skill, configure the sessions for your project. Add one entry per service you need to run:

```yaml
sessions:
  - name: "SESSION_NAME"        # tmux session name (e.g., "api", "web", "worker")
    dir: "DIRECTORY"            # directory relative to project root (use "." for root)
    cmd: "COMMAND"              # command to run (e.g., "npm run dev", "python main.py")
    port: PORT                  # optional: port to check/kill (omit if no port)
```

**Examples:**

Single service:
```yaml
sessions:
  - name: "dev"
    dir: "."
    cmd: "npm run dev"
    port: 3000
```

Multiple services:
```yaml
sessions:
  - name: "api"
    dir: "backend"
    cmd: "python -m uvicorn main:app --reload"
    port: 8000

  - name: "web"
    dir: "frontend"
    cmd: "npm run dev"
    port: 3000
```

See `templates/example-config.md` for more configurations (Django, Next.js, monorepo, etc.).

## User Commands

| User Says | Action |
|-----------|--------|
| **"start"** or **"/dev"** | Check if sessions exist. If running, just read logs and report status. If not running, create them. |
| **"restart"** | Kill existing sessions (if any), then start fresh. |
| **"stop"** | Kill all configured sessions. |
| **"status"** | Check if sessions exist and report. |
| **"logs"** | Read recent logs from all sessions. |

## Commands Reference

### Check Session Status

```bash
# Replace SESSION_NAME with your configured session name
tmux has-session -t SESSION_NAME 2>/dev/null && echo "running" || echo "stopped"
```

### Read Logs

```bash
# Last 50 lines (default)
tmux capture-pane -t SESSION_NAME -p -S -50

# Last 500 lines (more context)
tmux capture-pane -t SESSION_NAME -p -S -500

# Entire buffer
tmux capture-pane -t SESSION_NAME -p -S -

# Filter for errors
tmux capture-pane -t SESSION_NAME -p -S -500 | grep -i error
```

### Start Sessions

**Step 1: Check for port conflicts and kill if needed**
```bash
# Replace PORT with your configured port
lsof -ti:PORT | xargs kill -9 2>/dev/null || true
```

**Step 2: Create tmux session with 10k line buffer**
```bash
# Replace PROJECT_ROOT, SESSION_NAME, DIR, and CMD with your values
tmux new-session -d -s SESSION_NAME -c PROJECT_ROOT/DIR
tmux set-option -t SESSION_NAME history-limit 10000
tmux send-keys -t SESSION_NAME "CMD" Enter
```

### Stop Sessions

```bash
tmux kill-session -t SESSION_NAME 2>/dev/null || true
```

### Send Commands to Running Session

```bash
# Send Ctrl+C to stop current command
tmux send-keys -t SESSION_NAME C-c

# Send a new command
tmux send-keys -t SESSION_NAME "your command here" Enter
```

### List All Sessions

```bash
tmux list-sessions
```

## Workflow for Claude Code Sessions

When you need to work with dev services:

### 1. Check if sessions exist

```bash
tmux has-session -t SESSION_NAME 2>/dev/null && echo "running" || echo "stopped"
```

### 2. If running: Read logs

```bash
tmux capture-pane -t SESSION_NAME -p -S -50
```

### 3. If NOT running: Start them

First kill any port conflicts, then create sessions (see Start Sessions above).

### 4. If crashed: Recreate

If a session doesn't exist but the port is in use by a non-tmux process, kill the port and recreate the session.

## Key Advantages Over Background Tasks

| Feature | Background Task | tmux |
|---------|----------------|------|
| Multi-session access | No (single Claude session) | Yes |
| Send commands after start | No | Yes |
| Send Ctrl+C | No (only kill) | Yes |
| Survives Claude exit | No | Yes |
| Interactive terminal | No | Yes (`tmux attach -t name`) |

## Troubleshooting

### Session won't start
- Check if port is already in use: `lsof -ti:PORT`
- Kill existing process: `lsof -ti:PORT | xargs kill -9`

### Can't read logs
- Session may have closed - check if it exists: `tmux has-session -t SESSION_NAME`
- If process crashed, session closes - recreate it

### Process crashed inside session
- Session closes when command exits
- Recreate the session to restart

### Need to attach for debugging
```bash
# In a regular terminal (not Claude Code)
tmux attach -t SESSION_NAME
# Detach with: Ctrl+b, then d
```

## Installation

To use this skill in your project:

1. Copy this file to `.claude/skills/tmux-dev/SKILL.md` in your project
2. Update the Configuration section with your project's sessions
3. Add to your `CLAUDE.md`:

```markdown
## Development Commands

> **IMPORTANT:** For dev processes, NEVER use `Bash` with `run_in_background: true`.
> ALWAYS use **tmux** as described in `.claude/skills/tmux-dev/SKILL.md`.
```
