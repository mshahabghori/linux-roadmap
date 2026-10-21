# Contribution Grep Analysis Lab

[← Day 8](../../README.md) · [← Roadmap](../../../README.md)

**Status:** Not started

> New exercise built on `contributions.zip` (repository root, untracked). The course covers contribution analysis in Section 6, but this repository has no record of that exercise being done.

## Objective

Use `grep`, `cut`, `sort`, `uniq`, and `sed` to answer questions about three people's contribution histories.

## Prerequisites

- Day 7 (pipes, redirection) and Day 8 [security log analysis](../security-log-analysis/README.md).
- The extracted `contributions.txt` files. See the [contribution-files lab](../../../03-text-processing/labs/contribution-files/README.md) for how to extract them outside the repository.

## Challenge

Answer each question with a pipeline. Save results to a file outside the repository using `>` or `tee`.

1. How many commits does each person have?
2. Which dates appear in the data, with no duplicates?
3. List only the commit messages that mention "fix" (ignore case).
4. Which person has the most commits?
5. Show the commit messages with the word "project" replaced by "PROJECT", without changing the original file.
6. Produce a one-file summary: author, commit count, first date, last date.

<details>
<summary>Hints</summary>

- Commit lines start with `commit `; `grep -c '^commit '` counts them.
- `grep -h` hides file names when searching several files.
- `sort | uniq -c` counts repeated lines; add `sort -rn` to rank them.
- `sed 's/old/new/g'` prints a changed copy and leaves the file alone.

</details>

## Verification

Self-check (spoilers).

<details>
<summary>Expected commit counts</summary>

Alice 25, Bob 33, Sarah 43 (101 in total).

</details>

## Safety and cleanup

Read-only on the data. Do not use `sed -i`. Remove any scratch results you created outside the repository when done.

## Progress

- [ ] Commits counted per person
- [ ] Unique dates listed
- [ ] "fix" search done
- [ ] Ranking done
- [ ] `sed` substitution shown without editing the file
- [ ] Summary file produced
