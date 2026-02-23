---
name: gam
description: >
  GAM CLI assistant for Google Workspace administration. Use when the user asks
  to manage users, groups, OUs, Drive, Gmail, reports, licenses, Chrome devices,
  or any other Google Workspace domain/user settings via the GAM7 command-line
  tool. Also use when they need help installing, configuring, or authorizing GAM,
  constructing bulk CSV commands, writing batch files, or troubleshooting GAM errors.
allowed-tools: Read, Grep, Glob, Bash
---

# GAM7 — Google Workspace Admin CLI

GAM7 is a free, open-source CLI for Google Workspace administrators.
It wraps Google Admin SDK and Workspace APIs to manage domain settings,
users, groups, Drive, Gmail, Chrome devices, and more from the command line.

- **GitHub:** https://github.com/GAM-team/GAM
- **Wiki (live):** https://github.com/GAM-team/GAM/wiki
- **Discussion:** https://groups.google.com/group/google-apps-manager

> **Wiki snapshot:** 2026-02-23. All 166 wiki pages are included in
> `wiki/` alongside this file. For the most current syntax, browse the
> live wiki URL above.

---

## Supporting Reference Files

All GAM wiki pages are available locally in `wiki/`. Read them for
complete syntax, BNF definitions, and examples:

| Topic | Local file |
|---|---|
| Installation (downloads) | [wiki/Downloads-Installs.md](wiki/Downloads-Installs.md) |
| Install guide (Linux/Mac/Win) | [wiki/How-to-Install-GAM7.md](wiki/How-to-Install-GAM7.md) |
| Update GAM7 | [wiki/How-to-Update-GAM7.md](wiki/How-to-Update-GAM7.md) |
| Authorization | [wiki/Authorization.md](wiki/Authorization.md) |
| Configuration (gam.cfg) | [wiki/gam.cfg.md](wiki/gam.cfg.md) |
| Users | [wiki/Users.md](wiki/Users.md) |
| Collections of Users | [wiki/Collections-of-Users.md](wiki/Collections-of-Users.md) |
| User Deprovision | [wiki/Users-Deprovision.md](wiki/Users-Deprovision.md) |
| Groups | [wiki/Groups.md](wiki/Groups.md) |
| Groups Membership | [wiki/Groups-Membership.md](wiki/Groups-Membership.md) |
| Organizational Units | [wiki/Organizational-Units.md](wiki/Organizational-Units.md) |
| Drive Transfer | [wiki/Users-Drive-Transfer.md](wiki/Users-Drive-Transfer.md) |
| Drive Files (manage) | [wiki/Users-Drive-Files-Manage.md](wiki/Users-Drive-Files-Manage.md) |
| Drive Files (display) | [wiki/Users-Drive-Files-Display.md](wiki/Users-Drive-Files-Display.md) |
| Drive Permissions | [wiki/Users-Drive-Permissions.md](wiki/Users-Drive-Permissions.md) |
| Drive Ownership | [wiki/Users-Drive-Ownership.md](wiki/Users-Drive-Ownership.md) |
| Drive Copy/Move | [wiki/Users-Drive-Copy-Move.md](wiki/Users-Drive-Copy-Move.md) |
| Drive Cleanup | [wiki/Users-Drive-Cleanup.md](wiki/Users-Drive-Cleanup.md) |
| Drive Orphans | [wiki/Users-Drive-Orphans.md](wiki/Users-Drive-Orphans.md) |
| Drive Query | [wiki/Users-Drive-Query.md](wiki/Users-Drive-Query.md) |
| Drive File Selection | [wiki/Drive-File-Selection.md](wiki/Drive-File-Selection.md) |
| Shared Drives | [wiki/Shared-Drives.md](wiki/Shared-Drives.md) |
| Gmail Settings | [wiki/Users-Gmail-Settings.md](wiki/Users-Gmail-Settings.md) |
| Gmail Delegates | [wiki/Users-Gmail-Delegates.md](wiki/Users-Gmail-Delegates.md) |
| Gmail Forwarding | [wiki/Users-Gmail-Forwarding.md](wiki/Users-Gmail-Forwarding.md) |
| Gmail SendAs/Signature/Vacation | [wiki/Users-Gmail-Send-As-Signature-Vacation.md](wiki/Users-Gmail-Send-As-Signature-Vacation.md) |
| Gmail Labels | [wiki/Users-Gmail-Labels.md](wiki/Users-Gmail-Labels.md) |
| Gmail Filters | [wiki/Users-Gmail-Filters.md](wiki/Users-Gmail-Filters.md) |
| Gmail Messages/Threads | [wiki/Users-Gmail-Messages-Threads.md](wiki/Users-Gmail-Messages-Threads.md) |
| Reports | [wiki/Reports.md](wiki/Reports.md) |
| Bulk Processing | [wiki/Bulk-Processing.md](wiki/Bulk-Processing.md) |
| CSV Input Filtering | [wiki/CSV-Input-Filtering.md](wiki/CSV-Input-Filtering.md) |
| CSV Output Filtering | [wiki/CSV-Output-Filtering.md](wiki/CSV-Output-Filtering.md) |
| Todrive | [wiki/Todrive.md](wiki/Todrive.md) |
| Licenses | [wiki/Licenses.md](wiki/Licenses.md) |
| ChromeOS Devices | [wiki/ChromeOS-Devices.md](wiki/ChromeOS-Devices.md) |
| Calendars | [wiki/Calendars.md](wiki/Calendars.md) |
| Calendar Events | [wiki/Calendars-Events.md](wiki/Calendars-Events.md) |
| Send Email | [wiki/Send-Email.md](wiki/Send-Email.md) |
| Aliases | [wiki/Aliases.md](wiki/Aliases.md) |
| Domains | [wiki/Domains.md](wiki/Domains.md) |
| Administrators | [wiki/Administrators.md](wiki/Administrators.md) |
| Mobile Devices | [wiki/Mobile-Devices.md](wiki/Mobile-Devices.md) |
| Resources | [wiki/Resources.md](wiki/Resources.md) |
| Cloud Identity Groups | [wiki/Cloud-Identity-Groups.md](wiki/Cloud-Identity-Groups.md) |
| Vault / Takeout | [wiki/Vault-Takeout.md](wiki/Vault-Takeout.md) |
| BNF Syntax | [wiki/BNF-Syntax.md](wiki/BNF-Syntax.md) |
| Command Line Parsing | [wiki/Command-Line-Parsing.md](wiki/Command-Line-Parsing.md) |
| GAM Return Codes | [wiki/GAM-Return-Codes.md](wiki/GAM-Return-Codes.md) |
| Scripts | [wiki/Scripts.md](wiki/Scripts.md) |
| Find File Owner | [wiki/Find-File-Owner.md](wiki/Find-File-Owner.md) |
| Classroom Courses | [wiki/Classroom-Courses.md](wiki/Classroom-Courses.md) |
| User Contacts | [wiki/Users-People-Contacts-Profiles.md](wiki/Users-People-Contacts-Profiles.md) |
| User Tasks | [wiki/Users-Tasks.md](wiki/Users-Tasks.md) |
| User Meet | [wiki/Users-Meet.md](wiki/Users-Meet.md) |
| User Chat | [wiki/Users-Chat.md](wiki/Users-Chat.md) |
| Schemas | [wiki/Schemas.md](wiki/Schemas.md) |
| Tag Replace | [wiki/Tag-Replace.md](wiki/Tag-Replace.md) |

---

## Installation & Quick Start

### 1. Download & Install

**Linux / macOS / Cloud Shell (automatic installer):**
```bash
# New install (default path: $HOME/bin/gam7):
bash <(curl -s -S -L https://git.io/gam-install)

# Specify custom path:
bash <(curl -s -S -L https://git.io/gam-install) -d /opt/gam7

# Update only (no re-auth):
bash <(curl -s -S -L https://git.io/gam-install) -l
```

**Windows:** Download the MSI from https://github.com/GAM-team/GAM/releases/latest

**Python package:**
```bash
pip install gam7
```

Full download options: [wiki/Downloads-Installs.md](wiki/Downloads-Installs.md)

### 2. Set Configuration Directory (Linux/macOS)

```bash
mkdir -p ~/GAMConfig ~/GAMWork
echo 'export GAMCFGDIR="$HOME/GAMConfig"' >> ~/.zshrc   # or ~/.bashrc
echo 'alias gam="$HOME/bin/gam7/gam"'    >> ~/.zshrc
source ~/.zshrc

# Initialize:
gam config drive_dir ~/GAMWork verify
```

### 3. Create GCP Project & Enable APIs

```bash
gam create project
# Follow prompts: enter super admin email, authorize in browser,
# then enter Client ID and Client Secret from GCP console.
```

This enables ~23 Google APIs automatically.

### 4. Authorize Client Access (Admin OAuth)

```bash
gam oauth create
# Select scopes (press 'c' to continue with defaults),
# enter admin email, authorize in browser.
```

### 5. Authorize Service Account (for User-level data)

```bash
gam user admin@domain.com update serviceaccount
# Select scopes, press 'c', then follow the link to
# Google Admin > Security > API Controls > Domain-wide Delegation.
# Click AUTHORIZE.

# Verify (may take a few minutes to propagate):
gam user admin@domain.com check serviceaccount
```

### 6. Configure gam.cfg

```bash
gam info domain   # note your Customer ID
gam config customer_id C01234567 domain yourdomain.com timezone local save verify
```

Full step-by-step with screenshots: [wiki/How-to-Install-GAM7.md](wiki/How-to-Install-GAM7.md)

---

## Core Syntax

```
gam [global-flags] <UserTypeEntity|object> <verb> [options]
```

- **Client access** (admin OAuth) — users, groups, OUs, reports, licenses…
- **Service account access** — per-user Drive, Gmail, Calendar, Chat…

---

## User Management

```bash
# Create
gam create user u@d.com firstname "First" lastname "Last" password "P@ss" ou "/Staff"
gam create user u@d.com firstname "First" lastname "Last" password random notify u@d.com

# Update
gam update user u@d.com firstname "New" lastname "Name" ou "/Staff"
gam update user u@d.com primaryemail newemail@d.com
gam update user u@d.com password random notify mgr@d.com

# Info / list
gam info user u@d.com
gam print users fields primaryemail,firstname,lastname,ou,lastlogintime
gam print users query "orgUnitPath='/Staff'" countonly

# Suspend / restore / delete
gam suspend user u@d.com
gam unsuspend user u@d.com
gam delete user u@d.com
gam undelete user u@d.com

# Deprovision (remove tokens, app passwords, backup codes)
gam user u@d.com deprovision popimap signout turnoff2sv
```

Full syntax: [wiki/Users.md](wiki/Users.md) | [wiki/Users-Deprovision.md](wiki/Users-Deprovision.md)

---

## User Selectors (`<UserTypeEntity>`)

| Selector | Meaning |
|---|---|
| `all users` | All non-suspended users |
| `all users_ns` | All users including suspended |
| `user u@d.com` | Single user |
| `users "u1@d,u2@d"` | List |
| `group g@d.com` | Direct group members |
| `group_users g@d.com` | All (nested) group members |
| `ou /OrgUnit` | Users directly in OU |
| `ou_and_children /OrgUnit` | OU + all sub-OUs |
| `query "orgUnitPath='/Staff'"` | Directory query |
| `file emails.txt` | From a flat file |
| `csvkmd data.csv keyfield Email` | From CSV column |

Full reference: [wiki/Collections-of-Users.md](wiki/Collections-of-Users.md)

---

## Groups

```bash
gam create group grp@d.com name "Name" description "Desc"
gam update group grp@d.com allowexternalmembers true
gam delete group grp@d.com
gam info group grp@d.com
gam print groups allfields
gam print groups namematchpattern "^students-"

# Membership
gam update group grp@d.com add member u@d.com
gam update group grp@d.com add owner owner@d.com
gam update group grp@d.com delete member u@d.com
gam update group grp@d.com sync members ou_and_children /Staff   # replace all members
gam print group-members group grp@d.com fields email,role
```

Full syntax: [wiki/Groups.md](wiki/Groups.md) | [wiki/Groups-Membership.md](wiki/Groups-Membership.md)

---

## Organizational Units

```bash
gam create org "/Students/2029" [parent "/Students"]
gam update org "/Students/2028" name "Graduates"
gam delete org "/Students/2028"
gam print orgs fields path,name
gam show orgtree

# Move users
gam update user u@d.com ou "/Staff"
gam update ou "/Staff" sync users ou "/Temp"
```

Full syntax: [wiki/Organizational-Units.md](wiki/Organizational-Units.md)

---

## Drive

```bash
# Transfer Drive on offboarding
gam user leaver@d.com transfer drive newowner@d.com
gam user leaver@d.com transfer drive newowner@d.com targetuserfoldername "From leaver" preview

# Shared Drives
gam create teamdrive "Team Name"
gam print teamdrives
gam add teamdriveacls <driveID> user u@d.com role organizer
gam print teamdriveacls

# File list / permissions (service account)
gam user u@d.com print filelist fields id,name,owners
gam user u@d.com print drivefileacls <fileID>
gam user u@d.com add drivefileacl <fileID> user viewer@d.com role reader
```

Full syntax: [wiki/Users-Drive-Transfer.md](wiki/Users-Drive-Transfer.md) | [wiki/Shared-Drives.md](wiki/Shared-Drives.md)

---

## Gmail

```bash
gam user u@d.com add delegate delegate@d.com
gam user u@d.com vacation on subject "OOO" message "Away." startdate 2026-03-01 enddate 2026-03-10
gam user u@d.com signature file sig.html html
gam user u@d.com print labels
gam user u@d.com print filters
```

Full syntax: [wiki/Users-Gmail-Settings.md](wiki/Users-Gmail-Settings.md)

---

## Reports

```bash
gam report admin start -7d                           # admin activity
gam report login start -7d                           # login activity
gam report drive user u@d.com start -30d             # user Drive activity
gam report customer 2026-02-01                       # customer storage/seat usage
gam report users 2026-02-01 fields accounts:used_quota_in_mb
gam report admin start -7d todrive                   # pipe to Google Sheets
```

Apps: `admin`, `login`, `drive`, `calendar`, `chat`, `meet`, `token`, `groups`, `classroom`, `rules`, `saml`

Full syntax: [wiki/Reports.md](wiki/Reports.md)

---

## Bulk Processing

```bash
# CSV — run a gam command for every row
gam csv users.csv gam create user "~email" firstname "~first" lastname "~last"
gam csv offboard.csv gam user "~email" deprovision popimap signout

# Batch file (parallel processes):
gam batch commands.bat

# Tbatch (threads, allows gam csv inside):
gam redirect stdout ./out.csv redirect stderr ./err.txt tbatch commands.bat showcmds
```

Batch file syntax:
```
# comment line
gam update user u@d.com ou "/Staff"
commit-batch          # wait for all threads
sleep 5
gam update group g@d.com sync members ou /Staff
```

Full syntax: [wiki/Bulk-Processing.md](wiki/Bulk-Processing.md)

---

## Offboarding Workflow

```bash
# 1. Transfer Drive files
gam user leaver@d.com transfer drive manager@d.com targetuserfoldername "From leaver"
# 2. Remove tokens / app passwords / backup codes
gam user leaver@d.com deprovision popimap signout turnoff2sv
# 3. Suspend account
gam suspend user leaver@d.com
# 4. Move to offboarded OU
gam update user leaver@d.com ou "/Offboarded"
# 5. Remove from all groups
gam user leaver@d.com remove groups
```

---

## Useful Tips

- **`todrive`** — pipe any `print` output to Google Sheets: append `todrive` to any command.
- **`redirect`** — capture output: `gam redirect stdout out.csv redirect stderr err.txt <command>`
- **Short domain** — once `domain` is set in `gam.cfg`, you can write `user` instead of `user@domain.com`.
- **Version check:** `gam version`
- **Help for any command:** `gam help <topic>`
- **Return codes:** [wiki/GAM-Return-Codes.md](wiki/GAM-Return-Codes.md)
- **Config reference:** [wiki/gam.cfg.md](wiki/gam.cfg.md)
