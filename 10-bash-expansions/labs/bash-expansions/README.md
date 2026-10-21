# Bash Expansions Lab

[← Day 10](../../README.md) · [← Roadmap](../../../README.md)

**Status:** unverified. The commands and test files are recorded; no command output has been recorded. See the [Day 10 status notes](../../README.md#status-and-evidence).

## Objective

Practise how Bash expands `~` and variables, matches filenames with wildcards, handles quotes, splits words, and substitutes command output.

## Lab files

The practice files sit next to this README. To reproduce the commands below, run them from inside this folder so the wildcards match these files.

Files currently in this folder (besides this README):

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
