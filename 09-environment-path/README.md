# Day 9 — Environment Variables and PATH

[← Roadmap](../README.md) · [← Day 8](../08-grep-text-processing/README.md) · [Day 10 →](../10-bash-expansions/README.md)

## Objective

Understand how Linux environment variables work, how Bash finds
commands, how variables are passed to child processes, and how
aliases and .bashrc customize the shell.

## Status and evidence

- **Course (videos, quizzes, role play):** unknown.
- **Lab:** unverified. No completion status has been recorded for Day 9.
- **Recorded observations (verified in this README):** the username (`skeleton`), the locale (`en_US.UTF-8`), the PATH entries (including `/snap/bin` twice), the Python 3 location (`/usr/bin/python3`), and that an `ll` alias already existed.
- **Not recorded:** output from `env`, `printenv`, the `export` test, and `command -v python`; and the result of the new-terminal alias check in section 5.
- **Reading this document:** command blocks list what was practised; "Concepts" and "Expected behavior" describe how things should work; recorded results are the "Observation" and "Observed PATH" notes and the existing-`ll`-alias note in section 4.

## 1. Inspecting Environment Variables

### Commands

```bash
env
printenv HOME
printenv USER
echo "$SHELL"
echo "$LANG"
echo "$PWD"
```

### Concepts

- `env` displays the current environment variables.
- `printenv NAME` displays a specific environment variable.
- `HOME` usually stores the user's home directory.
- `USER` usually identifies the current username.
- `SHELL` usually identifies the user's configured login shell.
- `LANG` specifies the default locale.
- `PWD` represents the current working directory.

### Observation

The username in this environment was `skeleton`.
The locale observed was `en_US.UTF-8`.

`pwd` is a command that prints the current working directory.
`PWD` is an environment variable that usually stores that directory.

## 2. Understanding PATH

### Commands

```bash
echo "$PATH"
command -v python
command -v python3
type python3
printf '%s\n' "$PATH" | tr ':' '\n'
```

### Concepts

`PATH` is an environment variable containing a colon-separated
list of directories.

When Bash needs to find an executable by name, it searches the
directories in PATH according to its command lookup rules.

`command -v` checks how a command name is resolved.
`type` explains how Bash interprets a command name.

### Observed PATH

The PATH contained these directories:

```text
/usr/local/sbin
/usr/local/bin
/usr/sbin
/usr/bin
/sbin
/bin
/usr/games
/usr/local/games
/snap/bin
/snap/bin
```

The observed Python 3 executable was:

```text
/usr/bin/python3
```

The PATH contained `/snap/bin` twice. Duplicate entries are
usually redundant, although they do not necessarily cause problems.

### Python and Python 3

The commands `python` and `python3` are different command names.
The `python` command may be unavailable or configured differently
depending on the Linux distribution and installed software.

The executable location observed for Python 3 was `/usr/bin/python3`.

## 3. Shell Variables and export

### Commands

```bash
unset TEST
TEST=hello
echo "$TEST"
bash -c 'echo "$TEST"'

export TEST
bash -c 'echo "$TEST"'
```

### Concepts

A shell variable can be read by the shell in which it is defined.

A child process does not automatically inherit every ordinary
shell variable.

The `export` command marks a variable for inclusion in the
environment of subsequently launched child processes.

Expected behavior in a clean test:

- The current shell prints `hello`.
- The child shell initially prints an empty line.
- After `export TEST`, the child shell prints `hello`.

A variable that was already exported remains exported when its
value is reassigned. This can make a test appear to behave
differently unless the variable is reset first.

Exporting a variable does not automatically share it with
unrelated terminal sessions.

## 4. Bash Aliases

### Commands

```bash
alias
alias ll='ls -lah'
ll
type ll
```

### Concepts

An alias is a shortcut for a command or command sequence.

The alias `ll` runs `ls -lah`, which lists directory contents
in long format, including hidden entries, with human-readable sizes.

Aliases created interactively normally belong to the current
shell session. They do not automatically persist in new terminals.

The original shell already had an `ll` alias. Defining it again
replaced the earlier definition in the current shell.

## 5. Persistent Aliases and .bashrc

### Commands

```bash
less ~/.bashrc
```

After inspecting the file, the following commands were used:

```bash
echo "alias ll='ls -lah'" >> ~/.bashrc
source ~/.bashrc
type ll
ll
```

### Concepts

`.bashrc` is a Bash configuration file commonly used to configure
interactive non-login shells.

Appending an alias to this file makes it available to future
interactive Bash sessions that read the file.

`source ~/.bashrc` reads and executes the file in the current shell,
so the configuration changes take effect without opening a new
terminal.

### Verification

Open a new terminal and run:

```bash
type ll
ll
```

The alias should still be available if the new interactive Bash
session loads the configuration.

Result of this check: not recorded.

### Safety Note

Commands in shell startup files execute when the relevant shell
loads the file. Review additions carefully. Avoid blindly copying
unknown commands into `.bashrc`.

## 6. Cybersecurity Connection

### PATH Hijacking

If an attacker can influence command lookup and place a malicious
executable in a directory searched before the legitimate executable,
a script may run the wrong program.

This is one reason security-sensitive scripts should use controlled
environments and carefully manage PATH.

### Environment Variables

Environment variables can influence application behavior and
pass configuration to child processes.

They should not automatically be trusted as secure or confidential.
Sensitive values may be exposed to processes or diagnostic output
depending on the environment.

### Shell Startup Files

Malicious commands inserted into startup files can execute when
a shell starts. Unexpected changes to `.bashrc` and other startup
files can therefore be a persistence or execution concern.

## 7. Key Takeaways

- Environment variables provide information and configuration
  to processes.
- `env` lists environment variables.
- `export` makes a shell variable available to child processes.
- PATH contains directories, separated by colons.
- Bash resolves command names using its command lookup rules.
- Aliases provide convenient command shortcuts.
- `.bashrc` configures interactive Bash sessions.
- Startup files and PATH entries should be reviewed carefully
  from a security perspective.

## 8. Lab Summary

- Environment variables inspected: HOME, USER, SHELL, LANG, PWD
- Python 3 executable observed: /usr/bin/python3
- Variable scope tested: local shell versus child shell
- Alias tested: ll
- Persistent configuration tested: ~/.bashrc
- Security topics: PATH hijacking and startup-file execution
