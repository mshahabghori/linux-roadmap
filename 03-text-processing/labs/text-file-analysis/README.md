# Text File Analysis Lab

[← Day 3](../../README.md) · [← Roadmap](../../../README.md)

## Objective

Inspect a small log file with `cat`, `head`, `tail`, `wc`, and `less`.

## Status

**reported complete.** Only the input file is recorded; no analysis results or terminal output are.

## Files

- `contribution.log` — a synthetic 20-line log of INFO, WARNING, and ERROR messages (logins, file access, backups, failed logins). It is **not** the course's `contributions.zip` dataset; that is used by the [contribution-files lab](../contribution-files/README.md).

## Practice ideas

Run these inside this folder (nothing here changes the file):

```bash
head -n 5 contribution.log
tail -n 5 contribution.log
wc -l contribution.log
```
