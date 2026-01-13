# Claude Marketplace

A collection of Claude Code plugins by leetwito.

## Installation

Add this marketplace to Claude Code:

```bash
/plugin marketplace add leetwito/claude-marketplace
```

Then install individual plugins:

```bash
/plugin install tmux-dev@leetwito-marketplace
```

Or install a plugin directly without adding the marketplace:

```bash
/plugin add github:leetwito/claude-marketplace/plugins/tmux-dev
```

## Available Plugins

### tmux-dev

Manage dev processes via tmux sessions. Enables multiple Claude Code sessions to share access to running processes.

**Features:**
- Multi-session access to running processes
- Persistent processes that survive Claude Code exit
- Send commands (including Ctrl+C) to running processes
- Configurable log buffer (10k lines)
- Works with any project structure (single or multiple services)

[View tmux-dev documentation](plugins/tmux-dev/README.md)

### prevent-sleep

Prevent your Mac from sleeping during Claude Code sessions using caffeinate hooks.

**Features:**
- Automatically keeps Mac awake while Claude is working
- Uses macOS built-in `caffeinate` command
- 1-hour timeout with auto-reset on each prompt
- Clean hook-based implementation

[View prevent-sleep documentation](plugins/prevent-sleep/README.md)

## Adding New Plugins

To add a new plugin to this marketplace:

1. Create a new plugin directory: `plugins/your-plugin-name/`
2. Add `.claude-plugin/plugin.json` with plugin metadata
3. Add skills, hooks, commands, or agents as needed
4. Update `marketplace.json` to include the new plugin
5. Tag a new release

## License

MIT
