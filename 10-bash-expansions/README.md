# Day 10 — Bash Expansions

[← Roadmap](../README.md) · [← Day 9](../09-environment-path/README.md) · [Lab files](lab-files/)

## Goal

Understand how Bash expands variables, matches filenames, handles quotes,
splits words, and substitutes command output.

## Status and evidence

- **Course (videos, quizzes, File Extraction exercise):** unknown.
- **Lab:** unverified. No completion status has been recorded for Day 10.
- **Verified in files:** the commands below and the test files in [`lab-files/`](lab-files/). The contents of `lab-files/access log.txt` match the three `echo` commands in section 6.
- **Not recorded:** the output of any command here (wildcards, quoting, word splitting, command substitution).

## Topics

- Home directory: `~` and `$HOME`
- Variables: `$VARIABLE` and `${VARIABLE}`
- Wildcards: `*`, `?`, and character sets such as `[12]`
- Single quotes, double quotes, and escaping
- Word splitting and filenames containing spaces
- Command substitution: `$(command)`

## Practical Lab

Practice files are stored in [`lab-files/`](lab-files/). To reproduce the commands below, run them from inside that folder so the wildcards match these files.

Files currently in `lab-files/`:

- `access log.txt` — three lines, matching the commands in section 6.
- Eight empty files: `failed login.log`, `file1.txt`, `file2.txt`, `fileA.txt`, `notes with spaces.md`, `report.csv`, `report.txt`, and `special's file.txt`.

The file names with spaces and an apostrophe are intentional test cases; keep them quoted.

### 1. Home directory and variables

```bash
echo ~
echo "$HOME"

LAB_NAME=day10
echo "$LAB_NAME"
echo "${LAB_NAME}"

DAY=10
echo "This is day ${DAY}"
```

### 2. Wildcards

```bash
ls *.txt
ls *file?.txt
ls *file[12].txt
ls report*
ls *.txt *.csv
```

- `*` matches zero or more characters.
- `?` matches exactly one character.
- `[12]` matches either `1` or `2`.

### 3. Quotes and filenames

```bash
echo '$HOME'
echo "$HOME"

cat "access log.txt"
cat "special's file.txt"

echo \*
```

Single quotes prevent variable expansion. Double quotes allow variable
expansion while preserving the resulting text as a single argument.

### 4. Word splitting

```bash
FILE="access log.txt"

ls $FILE
ls "$FILE"
```

The unquoted variable can split into separate arguments. Quoting it
preserves the complete filename.

### 5. Command substitution

```bash
CURRENT_DIR=$(pwd)
echo "$CURRENT_DIR"

echo "My username is $(whoami)"
```

Command substitution runs a command and replaces `$(...)` with its output.

### 6. Log-file practice

```bash
echo "User login successful" >> "access log.txt"
echo "Failed login attempt" >> "access log.txt"
echo "User logged out" >> "access log.txt"

cat "access log.txt"
ls *.log
ls *.txt | wc -l
```

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
