# Filesystem Organization Lab

[← Day 2](../../README.md) · [← Roadmap](../../../README.md)

## Objective

Reorganise a set of loose files into a clear folder structure using only the terminal.

## Status

**reported complete.** The author reports reorganising 10 files from the terminal. Only the end result is recorded.

## Result in this repository

```text
filesystem-organization/
├── backup/      backup.txt, config.conf, data.csv
├── documents/   notes.txt, report.txt, resume.pdf
├── images/      logo.png, photo.jpg
└── scripts/     install.sh, script.sh
```

## Evidence and limits

- All ten files are **zero-byte placeholders**. `resume.pdf`, `logo.png`, and `photo.jpg` are not real PDF or image files, and the two scripts are empty.
- Git history shows the files first committed as a flat `linux-lab/` folder (commit `71cce9a`), then moved here (commits `ebd1fec` and `e8efd81`). The starting layout and the commands used are not recorded.

## Safety

The files are placeholders. Do not run the empty scripts expecting any behaviour.
