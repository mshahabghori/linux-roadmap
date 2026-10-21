# File Extraction Lab

[← Day 10](../../README.md) · [← Roadmap](../../../README.md)

**Status:** Not started

> New exercise built on `contributions.zip` (repository root, untracked). The course covers file extraction in Section 8, but this repository has no record of that exercise being done.

## Objective

Use Bash expansions (wildcards, brace expansion, quoting, command substitution) to extract and collect files from an archive safely.

## Prerequisites

- The [Bash expansions lab](../bash-expansions/README.md).
- An empty scratch folder outside the repository, for example `~/extract-lab`.

## Challenge

1. List the archive contents **before** extracting anything.
2. Extract the archive into `~/extract-lab`, not into the repository.
3. Use one wildcard pattern to list all three `contributions.txt` files.
4. Use brace expansion to create `~/extract-lab/results/{alice,bob,sarah}` in one command.
5. Copy each person's file into their results folder.
6. Store a count of the extracted files in a variable with command substitution and print it in a sentence.
7. Find and list the macOS leftovers (`__MACOSX`, `.DS_Store`) without deleting them. Decide whether to ignore or remove them, and explain why.

<details>
<summary>Hints</summary>

- `unzip -l ARCHIVE` lists without extracting; `unzip ARCHIVE -d DIR` extracts into `DIR`.
- `ls */contributions.txt` matches one level down; `find DIR -name contributions.txt` searches all levels.
- `mkdir -p results/{alice,bob,sarah}` expands to three paths.
- `COUNT=$(find DIR -name contributions.txt | wc -l)`

</details>

## Verification

- Three results folders exist and each holds one `contributions.txt`.
- `find ~/extract-lab -name contributions.txt` lists the original and the copied files.
- The repository contains no extracted files (`git status` shows only the zip as untracked).

## Safety and cleanup

Never extract an archive you have not listed first. Extract only into a fresh folder. When finished, remove the scratch folder after checking the path.

## Progress

- [ ] Archive listed first
- [ ] Extracted outside the repository
- [ ] Wildcard and brace expansion used
- [ ] Command substitution used
- [ ] Leftovers identified
