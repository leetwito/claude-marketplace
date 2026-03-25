---
name: gws-hub
description: Use when working with any Google Workspace service — Gmail, Drive, Calendar, Sheets, Docs, Meet, Chat, Forms, Slides, Tasks, etc. Routes to the appropriate on-demand gws-specific skill.
---

# Google Workspace Skills

Google Workspace tasks are handled by on-demand skills from the `googleworkspace/cli` repo.

## Install a specific skill

```bash
npx skills add https://github.com/googleworkspace/cli --skill <name> -g -y
```

## Core service skills

| Service | Skill | Sub-skills available |
|---------|-------|----------------------|
| Gmail | `gws-gmail` | `gws-gmail-send`, `gws-gmail-read`, `gws-gmail-reply`, `gws-gmail-forward`, `gws-gmail-triage`, `gws-gmail-watch` |
| Drive | `gws-drive` | `gws-drive-upload` |
| Calendar | `gws-calendar` | `gws-calendar-agenda`, `gws-calendar-insert` |
| Sheets | `gws-sheets` | `gws-sheets-read`, `gws-sheets-append` |
| Docs | `gws-docs` | `gws-docs-write` |
| Meet | `gws-meet` | — |
| Chat | `gws-chat` | `gws-chat-send` |
| Forms | `gws-forms` | — |
| Slides | `gws-slides` | — |
| Tasks | `gws-tasks` | — |
| Keep | `gws-keep` | — |
| People | `gws-people` | — |
| Classroom | `gws-classroom` | — |

Also available: `gws-workflow-*` recipes (standup reports, meeting prep, weekly digest, etc.) and `persona-*` skills (exec-assistant, project-manager, etc.).

Browse all 90+ skills: https://github.com/googleworkspace/cli/tree/main/skills

## Usage

1. Check if the relevant skill is already installed: `ls ~/.claude/skills/ | grep gws`
2. If not, install it with the command above using the exact skill name
3. Invoke the installed skill to complete the task
