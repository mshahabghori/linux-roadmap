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

* Linux permission model: owner, group, and others
* Read (`r`), write (`w`), and execute (`x`) permissions
* Numeric permissions: `640`, `644`, `660`, `750`, `755`, `775`
* File and directory permission differences
* User and supplementary group membership
* File ownership and group ownership
* `chmod` — modify permissions
* `chown` — change ownership
* `chgrp` — change group ownership
* `ls -l` and `ls -ld` — inspect permissions
* `stat` — inspect file metadata
* `namei -l` — inspect parent-directory permissions
* Directory traversal and access control
* Executable scripts and group-based access
* Principle of least privilege

### Practical Lab

Created a Linux security lab with separate directories for public files, private files, scripts, and logs.

* Created and tested three Linux users: `usera`, `userb`, and `userc`
* Used `securityteam` and `logreaders` to practise group-based access
* Tested read access to a confidential file under different user accounts
* Investigated why an unintended user could read a supposedly private file
* Troubleshot a failed file-write attempt by checking group membership and ownership
* Changed file group ownership and successfully tested group-based write access
* Tested shell-script execution under different user accounts
* Used `namei -l` to identify parent-directory traversal restrictions
* Inspected final file contents, ownership, and permission bits

### Key Learnings

* File permissions and ownership must work together to enforce access control.
* Adding group-write permission does not fix an incorrect owning group.
* Directory execute permission controls traversal, not file execution.
* Parent-directory permissions can prevent access even when the target file's permissions appear correct.
* Changing permissions does not reverse modifications already made to a file.
* Least privilege means granting only the access required by each user.

### Lab Documentation

* [Day 6 — Detailed Lab Report](06-linux-security-lab/README.md)
* [Permissions Quick Reference](06-linux-security-lab/permissions-reference.md)
* [Verification Tests](06-linux-security-lab/verification.md)

**Status:** Practical tests and troubleshooting performed. Final permission restoration and post-restoration verification remain pending.
