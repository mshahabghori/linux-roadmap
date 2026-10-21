# Contribution Files Lab

[← Day 3](../../README.md) · [← Roadmap](../../../README.md)

**Status:** Not started

> New exercise built on `contributions.zip` (repository root, untracked). The course covers contribution-file analysis in Section 3, but this repository has no record of that exercise being done.

## Objective

Inspect three people's contribution histories with `cat`, `head`, `tail`, `less`, `wc`, and `du`.

## Prerequisites

- Day 3 commands: `cat`, `head`, `tail`, `less`, `wc`, `du`.
- An empty scratch folder outside the repository, for example `~/contrib-lab`.

## Supporting file

`contributions.zip` at the repository root. It contains `Alice/`, `Bob/`, and `Sarah/`, each with a `contributions.txt` that looks like `git log` output (commit hash, author, date, message). The zip also holds macOS leftovers (`__MACOSX/`, `.DS_Store`) that you can ignore. The data is fictional: the dates are in 2031 and the hashes are not real.

Do **not** extract it inside the repository. Extract a copy elsewhere:

```bash
mkdir -p ~/contrib-lab && cd ~/contrib-lab
unzip -l ~/linux-roadmap/contributions.zip      # list first
unzip ~/linux-roadmap/contributions.zip
```

## Challenge

1. Find the three `contributions.txt` files.
2. Show the first 10 lines of each file.
3. Show the last 10 lines of each file.
4. Count lines and words in each file.
5. Work out how much disk space each person's folder uses.
6. Open one file in `less` and find a commit message that mentions "fix".

<details>
<summary>Hints</summary>

- `head -n 10 FILE`, `tail -n 10 FILE`
- `wc -l` counts lines, `wc -w` counts words
- `du -sh FOLDER` shows a human-readable folder size
- In `less`, press `/` then type a word to search, `n` for the next match, `q` to quit

</details>

## Verification

Self-check (spoilers). Line counts should be 148 (Alice), 197 (Bob), and 257 (Sarah).

<details>
<summary>Expected line counts</summary>

The three files have 148, 197, and 257 lines. If yours differ, check that you ran the command on the right file.

</details>

## Safety and cleanup

Read-only exercise. When finished, `rm -r ~/contrib-lab` after checking the path.

## Progress

- [ ] Archive listed and extracted outside the repository
- [ ] head/tail/wc tasks done
- [ ] Disk usage checked
- [ ] `less` search done
