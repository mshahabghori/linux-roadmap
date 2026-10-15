# Linux Roadmap

Hands-on Linux learning journey focused on building practical Linux, command-line, system administration, Bash, and networking skills.

## Progress

### 01 — Linux & Command Line Fundamentals
**Completed · August 25, 2026**

- Linux and Bash basics
- Command-line navigation
- `pwd`
- `ls`
- `ls -la`
- `cd`
- `.`, `..`, `~`
- `echo`
- `--help`
- `man`
- Basic command-line syntax

### 02 — Filesystem Operations
**Completed · August 26, 2026**

- `touch`
- `mkdir`
- `mv`
- `cp`
- `rm`
- `rmdir`
- Directory navigation
- File organization
- Filesystem operations lab
- Reorganized 10 files using only the terminal

### 03 — Text Files + Disk Usage
**Completed · August 27, 2026**

- `cat`
- `head`
- `tail`
- `nano`
- `wc`
- `less`
- `du`
- Text file inspection
- Log file analysis
- Text file analysis lab

### 04 — Users + Privileges
**Completed · August 28, 2026**

Topics covered:
- Linux users and user types
- `whoami`
- `id`
- `groups`
- `sudo`
- `su`
- User management
- Group management
- `/etc/passwd`
- `/etc/group`
- `/etc/shadow`
- Created and managed a test user and group


### 05 — Permissions + Package Management

**Completed · August 29, 2026**

Topics covered:

- Linux file permissions
- Owner, group, and others
- Read, write, and execute permissions
- `ls -l`
- `chmod`
- `chown`
- `chgrp`
- Numeric permissions
- APT package management
- `apt update`
- `apt install`
- `apt remove`
- `apt upgrade`
- `apt autoremove`
- Permissions and package management labs
- Practice Exam 1 — **18/30 (60%) · Passed**

## Environment

- Ubuntu
- VMware
- Bash
- Git & GitHub

## Approach

**Learn → Practice → Break → Fix → Build**

## Goal

Build strong Linux fundamentals before progressing into networking, system administration, and cybersecurity.

## 06 — Linux Security + Permissions Lab

**In Progress · August 30, 2026**

Hands-on lab focused on Linux access control, user/group permissions, and security troubleshooting.

### Topics Covered

- Linux permission model: owner, group, and others
- Read (`r`), write (`w`), and execute (`x`) permissions
- Numeric permissions: `640`, `644`, `660`, `750`, `755`, `775`
- File and directory permission differences
- User and supplementary group membership
- File ownership and group ownership
- `chmod`, `chown`, `chgrp`
- `ls -l`, `ls -ld`, `stat`, and `namei -l`
- Directory traversal and access control
- Executable scripts and group-based access
- Principle of least privilege

### Practical Lab

- Created and tested three Linux users: `usera`, `userb`, and `userc`
- Used `securityteam` and `logreaders` to practise group-based access
- Tested confidential-file access under different user accounts
- Troubleshot incorrect permissions, ownership, and group membership
- Tested shell-script execution under different user accounts
- Used `namei -l` to investigate directory traversal restrictions
- Inspected file contents, ownership, and permission bits

### Key Learnings

- File permissions and ownership work together to enforce access control.
- Group-write permission does not fix an incorrect owning group.
- Directory execute permission controls traversal.
- Parent-directory permissions can prevent access to a file.
- Changing permissions does not reverse modifications already made.
- Least privilege means granting only the access each user requires.

### Lab Documentation

- [Day 6 — Detailed Lab Report](06-linux-security-lab/README.md)
- [Permissions Quick Reference](06-linux-security-lab/permissions-reference.md)
- [Verification Tests](06-linux-security-lab/verification.md)

**Status:** Practical tests and troubleshooting performed. Final permission restoration and post-restoration verification remain pending.

## 07 — Pipes + Redirection

**Completed · October 12, 2026**

### Topics Covered

- Standard input, standard output, and standard error
- `>` — redirect output and overwrite files
- `>>` — append output to files
- `<` — read input from a file
- `2>` — redirect errors
- `2>&1` — combine standard error with standard output
- `|` — pipe output between commands
- `tee` — display and save output simultaneously
- Log filtering and command chaining

### Practical Lab

- Redirected command output into files
- Tested overwriting and appending output
- Separated error messages from normal output
- Combined standard output and standard error
- Filtered log entries using pipes
- Saved filtered results for later inspection

### Key Learnings

- Redirection controls where command input and output go.
- Pipes pass one command's output to another command.
- Standard output and standard error are separate streams.
- `>` overwrites a file, while `>>` appends to it.
- Combining pipes and redirection makes command-line workflows more efficient.

### Lab Documentation

- [Day 7 — Detailed Lab Report](07-redirection-pipes/README.md)
- [Day 7 — Lab Files](07-redirection-pipes/labs/README.md)

**Status:** Completed · Practice files committed and pushed to GitHub.

## Day 8 — Grep + Text Processing

**Completed · September 1, 2026**

Practised filtering and analysing a synthetic security log using `grep`, `cut`, `sort`, `uniq`, and `sed`.

### Lab Documentation

- [Day 8 — Lab Overview](08-grep-text-processing/README.md)
- [Day 8 — Security Log Analysis Lab](08-grep-text-processing/labs/README.md)

**Status:** Completed · Lab files committed and pushed to GitHub.

## Day 9 - Environment Variables and PATH

**Topics:** Environment variables, `env`, `export`, `$PATH`, variable scope, Bash aliases, and `.bashrc`.

**Lab:** [09 - Environment Variables and PATH](09-environment-path/README.md)

**Security connection:** PATH hijacking, process environment, and shell startup-file security.
