# Final Challenge Lab

[← Day 12](../../README.md) · [← Roadmap](../../../README.md)

**Status:** Not started

> The repository holds no notes, commands, or output from the final challenge the author reports completing (`12-linux-final-lab/notes/` is empty). This is a written-down version for a verifiable run.

## Objective

Combine filesystem work, users and permissions, text processing, environment variables, Bash expansions, SSH, and services in one independent run.

## Prerequisites

- Days 1–11. The SSH and Apache steps need the [Day 11 checklist](../../../11-ssh-webserver/README.md) items done first.

## Scenario

You are setting up a small test server area, `~/final-lab`, and must leave evidence that each step worked.

## Challenge

Work in `~/final-lab` and use test accounts only.

1. **Filesystem:** create `logs/`, `scripts/`, and `reports/`, and put a sample log in `logs/`.
2. **Users and permissions:** create a test user and group; make `reports/` writable by the group and unreadable by others.
3. **Text processing:** from the log, count errors, list unique IP addresses, and save a summary with a pipeline and `tee`.
4. **Environment:** create a script in `scripts/`, add that folder to `PATH` for the current session only, and run the script by name.
5. **Expansions:** write a command that processes every `.log` file, including names with spaces.
6. **SSH and transfer:** copy the summary to `localhost` with `scp`.
7. **Services:** stop and start a service and read its log.
8. **Cleanup:** remove the test user, group, and scratch folder.

## Verification

For each step, keep the command and its real output in your own notes. A step counts as done only when you can show that evidence. Do not paste private keys or password hashes.

## Safety and cleanup

Use test files and accounts only. Use `sudo` only when needed. Confirm every path before `rm`, `userdel`, or `groupdel`.

## Progress

- [ ] Filesystem
- [ ] Users and permissions
- [ ] Text processing
- [ ] Environment
- [ ] Expansions
- [ ] SSH and transfer
- [ ] Services
- [ ] Cleanup
