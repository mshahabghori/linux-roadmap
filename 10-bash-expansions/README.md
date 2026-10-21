# Day 10 — Bash Expansions

[← Roadmap](../README.md) · [← Day 9](../09-environment-path/README.md) · [Day 11 →](../11-ssh-webserver/README.md) · [Lab](labs/bash-expansions/README.md)

## Goal

Understand how Bash expands variables, matches filenames, handles quotes,
splits words, and substitutes command output.

## Status and evidence

- **Course (videos, quizzes, File Extraction exercise):** unknown.
- **Lab:** unverified. No completion status has been recorded for Day 10.
- **Verified in files:** the commands in the lab README and the test files in [`labs/bash-expansions/`](labs/bash-expansions/). The contents of `labs/bash-expansions/access log.txt` match the three `echo` commands in section 6 of the lab README.
- **Not recorded:** the output of any command here (wildcards, quoting, word splitting, command substitution).

## Topics

- Home directory: `~` and `$HOME`
- Variables: `$VARIABLE` and `${VARIABLE}`
- Wildcards: `*`, `?`, and character sets such as `[12]`
- Single quotes, double quotes, and escaping
- Word splitting and filenames containing spaces
- Command substitution: `$(command)`

## Practical Lab

The hands-on commands and the practice files live in the lab folder: [`labs/bash-expansions/`](labs/bash-expansions/README.md).

| Lab | Status |
|---|---|
| [Bash expansions](labs/bash-expansions/README.md) | unverified |
| [File extraction](labs/file-extraction/README.md) | Not started |

## Key Takeaways

- Quote variables when passing filenames or other text to commands.
- Use wildcards to select files by name or extension.
- Use `${VARIABLE}` when variable boundaries need to be explicit.
- Use `$(command)` to capture command output.
- Understand how Bash expansion affects the arguments a command receives.

## Cybersecurity Relevance

- Safely handling filenames that contain spaces or special characters.
- Avoiding unintended shell expansion by quoting variables and patterns.
- Writing reliable shell scripts and log-processing commands.
