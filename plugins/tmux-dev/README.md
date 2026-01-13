# tmux-dev Skill

A Claude Code skill for managing development processes via tmux sessions, enabling **multiple Claude Code sessions to share access** to running processes.

## Why tmux?

| Feature | Background Task | tmux |
|---------|----------------|------|
| Multi-session access | ❌ Single Claude session | ✅ Any session |
| Survives Claude exit | ❌ Dies with session | ✅ Persists |
| Send commands after start | ❌ No | ✅ Yes |
| Send Ctrl+C | ❌ Only kill | ✅ Yes |
| Log history | Limited | 10k lines |

## Installation

### Option 1: Copy to Your Project

```bash
# Copy the skill folder to your project
cp -r tmux-dev /path/to/your-project/.claude/skills/

# Edit SKILL.md Configuration section for your project
```

### Option 2: Global Installation

```bash
# Install globally for all projects
cp -r tmux-dev ~/.claude/skills/
```

### Option 3: Via Plugin Marketplace (Coming Soon)

```bash
# When published to a marketplace
/plugin marketplace add your-username/tmux-dev
/plugin install tmux-dev@your-marketplace
```

## Configuration

Edit the Configuration section in `SKILL.md` for your project:

```yaml
sessions:
  - name: "server"              # tmux session name
    dir: "server"               # directory relative to project root
    cmd: "npm run dev"          # command to run
    port: 3000                  # optional: port to check/kill
```

See `templates/example-config.md` for common project configurations.

## Usage

Once installed, just tell Claude:

- **"start"** - Start dev services (or connect if already running)
- **"restart"** - Kill and restart
- **"stop"** - Stop all services
- **"logs"** - Show recent logs
- **"status"** - Check what's running

## Sharing with Colleagues

### Via Git Repository

1. Add the skill to your project's `.claude/skills/` directory
2. Commit and push
3. Colleagues clone the repo and get the skill automatically

### Via Standalone Repository

1. Create a new repository for the skill
2. Structure:
   ```
   tmux-dev/
   ├── SKILL.md           # Required: Main skill file
   ├── README.md          # Documentation
   └── templates/         # Optional: Example configs
       └── example-config.md
   ```
3. Share the repo URL with colleagues
4. They copy to their `~/.claude/skills/` or project `.claude/skills/`

### Via Plugin Marketplace

1. Create a repository with `.claude-plugin` config:
   ```json
   {
     "name": "tmux-dev",
     "version": "1.0.0",
     "description": "Manage dev processes via tmux for multi-session access",
     "skills": ["tmux-dev"]
   }
   ```
2. Register with a marketplace (e.g., anthropics/skills, community marketplaces)
3. Colleagues install via `/plugin marketplace add ...`

## Resources

- [Agent Skills Documentation](https://code.claude.com/docs/en/skills)
- [Anthropic Skills Repository](https://github.com/anthropics/skills)
- [SkillsMP Marketplace](https://skillsmp.com/)
- [Awesome Claude Skills](https://github.com/travisvn/awesome-claude-skills)

## License

MIT - Feel free to use, modify, and share!
