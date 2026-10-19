# Day 7 — Pipes and Redirection

[← Roadmap](../README.md) · [Lab guide](labs/README.md) · [← Day 6](../06-linux-security-lab/README.md) · [Day 8 →](../08-grep-text-processing/README.md)

## Topics Covered
- Standard input (stdin), standard output (stdout), and standard error (stderr)
- Output redirection using `>` and `>>`
- Input redirection using `<`
- Error redirection using `2>`
- Combining output streams using `2>&1`
- Pipes (`|`) to connect commands
- Filtering text using `grep`
- Counting lines using `wc -l`
- Displaying line numbers using `grep -n`
- Saving and displaying output using `tee`

## Practice Commands

```bash
echo "System started" > output.txt
echo "Failed login detected" >> output.txt
cat output.txt

ls nonexistent_file 2> errors.txt
cat errors.txt

wc -l < output.txt

cat output.txt | grep "Failed"
cat output.txt | grep -n "Failed"
cat output.txt | grep "Failed" | wc -l

ls output.txt nonexistent_file > combined.txt 2>&1
cat combined.txt

cat output.txt | grep "Failed" | tee failed-logins.txt
wc -l < failed-logins.txt

grep "Failed" missing.log 2> errors.txt
cat errors.txt

ls output.txt nonexistent_file 2>&1 | tee all-output.txt
```

## Key Learnings
- `>` overwrites a file; `>>` appends to it.
- `<` supplies input from a file.
- `2>` redirects error messages.
- `2>&1` redirects stderr to stdout's current destination.
- `|` passes one command's standard output to another command.
- `tee` displays output and saves it simultaneously.
- `grep` filters matching lines, while `wc -l` counts lines.

## Mini Lab
Practised filtering failed-login messages, counting matching entries, capturing command errors, combining output streams, and saving filtered results to files.

See the [lab guide](labs/README.md) for the files produced.

## Status and evidence

- **Course (videos, quizzes):** unknown.
- **Lab:** reported complete (see the [roadmap](../README.md)).
- **Verified in files:** `labs/output.txt`, `labs/errors.txt`, `labs/combined.txt`, and `labs/failed-logins.txt` are consistent with the commands above. `labs/all-output.txt`, which the final `tee` command above would create, is not present in the repository.
- **Not recorded:** terminal output for the individual commands (for example `wc -l`, `grep -n`, and `tee`).
