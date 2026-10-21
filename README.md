# 🐧 Linux Roadmap

A hands-on Linux learning journey focused on building practical skills in Linux fundamentals, command-line usage, system administration, Bash, SSH and web servers, and the security thinking behind them.

This repository documents my progress through practical exercises, troubleshooting, and labs in Ubuntu. The goal is to understand how Linux works by using the terminal, solving problems, and writing down what I learn along the way.

**Learn → Practice → Break → Fix → Build**

## 🛠️ Environment

- **Operating system:** Ubuntu Linux
- **Virtualization:** VMware
- **Shell:** Bash
- **Version control:** Git and GitHub

## 🎯 Goals

Build a strong foundation in Linux before moving on to networking, system administration, and cybersecurity.

The focus is on practical command-line skills, understanding permissions and access control, working with system tools, analysing logs, and troubleshooting problems independently.

## 📚 Roadmap Overview

The repository follows my own 12-day study sequence. Each day has its own folder with a README and hands-on labs.

| Day | Topic | Main Areas | Status | Lab |
|---|---|---|---|---|
| [01](01-command-line/README.md) | Command-Line Fundamentals | Bash basics, navigation, help, command syntax | ✅ Completed | [Navigation](01-command-line/labs/navigation/README.md) |
| [02](02-filesystem/README.md) | Filesystem Operations | Files, directories, copying, moving, deletion | ✅ Completed | [Filesystem organization](02-filesystem/labs/filesystem-organization/README.md) |
| [03](03-text-processing/README.md) | Text Files and Disk Usage | `cat`, `head`, `tail`, `nano`, `wc`, `less`, `du` | ✅ Completed | [Text file analysis](03-text-processing/labs/text-file-analysis/README.md) |
| [04](04-users-system/README.md) | Users and Privileges | Users, groups, `sudo`, `su`, system account files | ✅ Completed | [User management](04-users-system/labs/user-management/README.md) |
| [05](05-permissions-packages/README.md) | Permissions and Package Management | `chmod`, `chown`, `chgrp`, APT | ✅ Completed | [Permissions](05-permissions-packages/labs/permissions/README.md) · [Packages](05-permissions-packages/labs/package-management/README.md) |
| [06](06-linux-security-lab/README.md) | Linux Security and Access Control | Ownership, permissions, groups, least privilege | ✅ Completed | [Lab report](06-linux-security-lab/README.md) |
| [07](07-redirection-pipes/README.md) | Pipes and Redirection | Standard streams, redirection, pipes, `tee` | ✅ Completed | [Redirection practice](07-redirection-pipes/labs/redirection-practice/README.md) |
| [08](08-grep-text-processing/README.md) | Grep and Text Processing | Filtering, extracting, sorting, log analysis | ✅ Completed | [Security log analysis](08-grep-text-processing/labs/security-log-analysis/README.md) |
| [09](09-environment-path/README.md) | Environment Variables and PATH | `export`, PATH, aliases, `.bashrc` | ✅ Completed | [Notes](09-environment-path/README.md) |
| [10](10-bash-expansions/README.md) | Bash Expansions | Variables, globbing, quoting, word splitting | ✅ Completed | [Bash expansions](10-bash-expansions/labs/bash-expansions/README.md) |
| [11](11-ssh-webserver/README.md) | SSH and Webserver Essentials | SSH, keys, file transfers, Apache, services, logs | ✅ Completed | [SSH keys](11-ssh-webserver/labs/ssh-key-authentication/README.md) · [Transfers](11-ssh-webserver/labs/file-transfer/README.md) · [Apache](11-ssh-webserver/labs/apache-service-and-logs/README.md) |
| [12](12-linux-final-lab/README.md) | Linux Final Lab | Integrated practical challenge | ✅ Completed | [Final challenge](12-linux-final-lab/labs/final-challenge/README.md) |

## 💻 Daily Progress

### Day 01 — Linux and Command-Line Fundamentals

**Status:** ✅ Completed · August 25, 2026

Established the basics of working in a Linux terminal and moving around the filesystem.

**Concepts and commands**
- Linux and Bash fundamentals.
- Command-line syntax and basic command execution.
- Navigation using `pwd`, `ls`, and `cd`.
- Listing hidden files and directory contents with `ls -la`.
- Relative paths, `.`, `..`, and `~`.
- Basic output using `echo`.
- Command help using `--help` and `man`.

**Documentation:** [Day 01 overview](01-command-line/README.md) · [Navigation lab](01-command-line/labs/navigation/README.md)

### Day 02 — Filesystem Operations

**Status:** ✅ Completed · August 26, 2026

Practised file and directory management from the terminal. The exercise involved reorganising ten sample files into four folders without a graphical file manager.

**Concepts and commands**
- Creating files and directories with `touch` and `mkdir`.
- Moving and renaming files with `mv`.
- Copying files with `cp`.
- Removing files and empty directories with `rm` and `rmdir`.
- Navigating directories and working with relative paths.
- Organising documents, images, backups, and scripts.

**Documentation:** [Day 02 overview](02-filesystem/README.md) · [Filesystem organization lab](02-filesystem/labs/filesystem-organization/README.md)

### Day 03 — Text Files and Disk Usage

**Status:** ✅ Completed · August 27, 2026

Worked with text files and basic file-analysis tools, including a sample contribution log.

**Concepts and commands**
- Inspecting file contents using `cat`, `head`, and `tail`.
- Editing text files with `nano`.
- Counting lines, words, and bytes using `wc`.
- Viewing larger files with `less`.
- Inspecting directory and file space usage with `du`.
- Inspecting and analysing text-based data from the terminal.

**Documentation:** [Day 03 overview](03-text-processing/README.md) · [Text file analysis lab](03-text-processing/labs/text-file-analysis/README.md)

### Day 04 — Users, Groups, and Privileges

**Status:** ✅ Completed · August 28, 2026

Explored how Linux identifies users, manages groups, and controls administrative access.

**Concepts and commands**
- Identifying the current user using `whoami`.
- Inspecting user and group information with `id` and `groups`.
- Understanding administrative privileges using `sudo`.
- Switching users with `su`.
- Examining `/etc/passwd`, `/etc/group`, and `/etc/shadow`.
- Creating and managing test users and groups.
- Understanding how user identity, group membership, and access fit together.

**Documentation:** [Day 04 overview](04-users-system/README.md) · [User management lab](04-users-system/labs/user-management/README.md)

### Day 05 — Permissions and Package Management

**Status:** ✅ Completed · August 29, 2026

Studied Linux permission bits, file ownership, and package management with APT.

**Concepts and commands**
- Owner, group, and others.
- Read, write, and execute permissions.
- Inspecting permissions with `ls -l`.
- Changing permissions with `chmod`.
- Changing ownership and groups using `chown` and `chgrp`.
- Numeric permission notation.
- Refreshing package information using `apt update`.
- Installing and removing packages with `apt install` and `apt remove`.
- Understanding `apt upgrade` and `apt autoremove`.

**Documentation:** [Day 05 overview](05-permissions-packages/README.md) · [Permissions lab](05-permissions-packages/labs/permissions/README.md) · [Package management lab](05-permissions-packages/labs/package-management/README.md)

### Day 06 — Linux Security and Access Control

**Status:** ✅ Completed

A practical security lab on Linux permissions, user and group access, ownership, and troubleshooting access-control problems.

**Practical work**
- Created and tested three users: `usera`, `userb`, and `userc`.
- Used the `securityteam` and `logreaders` groups for access-control exercises.
- Tested access to files under different user accounts.
- Investigated permission, ownership, and group-membership problems.
- Tested shell-script execution under different accounts.
- Used `namei -l` to inspect directory traversal permissions.
- Examined permission modes including `640`, `644`, `660`, `750`, `755`, and `775`.

**Key takeaways**
- File permissions and ownership work together to control access.
- Directory execute permission governs traversal.
- A restrictive parent directory can block access even when the file's own permissions look correct.
- Group permissions need the right group ownership and membership.
- Least privilege means granting only the permissions a task requires.

**Documentation:** [Detailed lab report](06-linux-security-lab/README.md) · [Permissions reference](06-linux-security-lab/permissions-reference.md) · [Verification tests](06-linux-security-lab/verification.md)

### Day 07 — Pipes and Redirection

**Status:** ✅ Completed

Practised controlling command input and output, separating error messages, and chaining commands into useful workflows.

**Concepts and commands**
- Standard input, standard output, and standard error.
- `>` to redirect output and overwrite a file.
- `>>` to append output.
- `<` to read input from a file.
- `2>` to redirect standard error.
- `2>&1` to combine standard output and standard error.
- `|` to pass output between commands.
- `tee` to display and save output at the same time.

**Documentation:** [Day 07 overview](07-redirection-pipes/README.md) · [Redirection practice lab](07-redirection-pipes/labs/redirection-practice/README.md)

### Day 08 — Grep and Text Processing

**Status:** ✅ Completed · September 1, 2026

Worked with a synthetic security log and practised pulling useful information out of text with standard Linux utilities.

**Concepts and commands**
- Filtering matching lines with `grep`.
- Extracting fields using `cut`.
- Sorting output using `sort`.
- Counting repeated entries with `uniq`.
- Replacing text with `sed`.
- Combining commands for log analysis.
- Checking summary counts against the source dataset.

The repository contains `security.log` and `summary.txt`, and the summary counts match the log.

**Documentation:** [Day 08 overview](08-grep-text-processing/README.md) · [Security log analysis lab](08-grep-text-processing/labs/security-log-analysis/README.md)

### Day 09 — Environment Variables and PATH

**Status:** ✅ Completed

Explored how the shell stores configuration, passes environment variables to programs, finds executable commands, and supports shortcuts.

**Concepts and commands**
- Inspecting variables with `env` and `printenv`.
- Defining variables and exporting them with `export`.
- Understanding the colon-separated `PATH` variable.
- Locating commands with `command -v` and examining command types with `type`.
- Configuring shell startup behaviour with `.bashrc`.
- Creating, inspecting, and removing aliases.

**Documentation:** [Day 09 lab and notes](09-environment-path/README.md)

### Day 10 — Bash Expansions

**Status:** ✅ Completed

Practised how Bash interprets variables, patterns, quotation marks, filenames, and command output.

**Concepts and commands**
- Home-directory expansion using `~` and `$HOME`.
- Variable expansion using `$VARIABLE` and `${VARIABLE}`.
- Filename globbing using `*`, `?`, and character sets.
- Single quotes, double quotes, and escaping.
- Word splitting and filenames containing spaces.
- Command substitution using `$(command)`.
- Handling filenames with special characters.

The lab uses deliberately awkward file names such as `access log.txt`, `notes with spaces.md`, and `special's file.txt`.

**Security connection:** careful quoting and input handling stop shell scripts from treating filenames and input as unintended arguments.

**Documentation:** [Day 10 overview](10-bash-expansions/README.md) · [Bash expansions lab](10-bash-expansions/labs/bash-expansions/README.md)

### Day 11 — SSH and Webserver Essentials

**Status:** ✅ Completed

Remote access, authentication, file transfers, service management, web hosting, and log inspection.

**Checklist**
- [x] SSH server installed and running
- [x] Connected successfully using SSH
- [x] Generated an SSH key pair safely
- [x] Transferred a test file using `scp` or `sftp`
- [x] Installed Apache and checked its status
- [x] Started and stopped Apache successfully
- [x] Opened the local web page
- [x] Inspected Apache access and error logs

**Documentation:** [Day 11 overview](11-ssh-webserver/README.md) · [SSH key authentication](11-ssh-webserver/labs/ssh-key-authentication/README.md) · [File transfer](11-ssh-webserver/labs/file-transfer/README.md) · [Apache service and logs](11-ssh-webserver/labs/apache-service-and-logs/README.md)

### Day 12 — Linux Final Lab

**Status:** ✅ Completed

An independent practical challenge that brings together the skills from the whole roadmap.

The challenge covers:
- Filesystem navigation and file operations.
- Users, groups, ownership, and permissions.
- Package management and text processing.
- Pipes, redirection, environment variables, and Bash expansions.
- SSH, file transfers, services, and system logs.

**Documentation:** [Day 12 overview](12-linux-final-lab/README.md) · [Final challenge](12-linux-final-lab/labs/final-challenge/README.md)

## 🚀 What's Next

1. Revise the whole roadmap and tidy the notes.
2. Move on to networking fundamentals.
3. Keep adding terminal output and screenshots to the labs as proof of the work.
4. Build on these foundations toward system administration and cybersecurity.

---

*This repository is a work in progress and is updated as I learn.*
