# prevent-sleep

Prevent your Mac from sleeping during Claude Code sessions.

## Problem

When Claude Code runs extended operations, your Mac may enter sleep mode and pause the agent's work. This is particularly problematic when leaving the agent running unattended for long tasks.

## Solution

This plugin uses macOS's `caffeinate` command with Claude Code hooks to automatically keep your Mac awake while Claude is working:

- **On prompt submit:** Starts a `caffeinate` process with a 1-hour timeout
- **On stop:** Cleans up the `caffeinate` process, allowing normal sleep

## Requirements

- **macOS** (uses the built-in `caffeinate` command)
- **Claude Code v1.0.54+** (for `UserPromptSubmit` hook support)

## Installation

### Via Marketplace

```bash
# Add the marketplace (if not already added)
/plugin marketplace add leetwito/claude-marketplace

# Install the plugin
/plugin install prevent-sleep@leetwito-marketplace
```

### Direct Installation

```bash
/plugin add github:leetwito/claude-marketplace/plugins/prevent-sleep
```

## How It Works

1. When you submit a prompt, the `prevent-sleep.sh` hook runs
2. It kills any existing caffeinate process and starts a fresh one
3. The caffeinate process prevents idle sleep for up to 1 hour
4. When Claude Code stops, `allow-sleep.sh` cleans up the process

## Technical Details

- Uses `caffeinate -i` to prevent idle sleep
- 1-hour timeout (`-t 3600`) auto-releases if hooks don't fire
- PID stored in `/tmp/claude-caffeinate.pid` for cleanup
- Each new prompt resets the 1-hour timer

## Credits

Based on the technique described in [Preventing Mac Sleep During Claude Code Sessions](https://tngranados.com/blog/preventing-mac-sleep-claude-code/) by Teo Navarro Granados.

## License

MIT
