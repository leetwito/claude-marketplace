# Claude Skills Marketplace

A collection of Claude Code skills by leetwito.

## Installation

Add this marketplace to Claude Code:

```bash
/plugin marketplace add leetwito/claude-skills-marketplace
```

Then install individual plugins:

```bash
/plugin install tmux-dev@leetwito-skills
```

Or install a plugin directly without adding the marketplace:

```bash
/plugin add github:leetwito/claude-skills-marketplace/plugins/tmux-dev
```

## Available Skills

### tmux-dev

Manage dev processes via tmux sessions. Enables multiple Claude Code sessions to share access to running processes.

**Features:**
- Multi-session access to running processes
- Persistent processes that survive Claude Code exit
- Send commands (including Ctrl+C) to running processes
- Configurable log buffer (10k lines)
- Works with any project structure (single or multiple services)

[View tmux-dev documentation](plugins/tmux-dev/README.md)

## Adding New Skills

To add a new skill to this marketplace:

1. Create a new plugin directory: `plugins/your-skill-name/`
2. Add `.claude-plugin/plugin.json` with plugin metadata
3. Add `skills/your-skill-name/SKILL.md` with the skill definition
4. Update `marketplace.json` to include the new plugin
5. Tag a new release

## License

MIT
