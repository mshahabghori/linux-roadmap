# Photo Management Lab

[← Day 2](../../README.md) · [← Roadmap](../../../README.md)

**Status:** Not started

> New exercise. The course has a photo-management exercise in Section 2, but this repository has no record of it being done. This lab is a self-made practice version, not a copy of the course exercise. Whether the existing [filesystem-organization lab](../filesystem-organization/README.md) already covered it is unknown.

## Objective

Sort a messy folder of photos into a clean structure using only `mkdir`, `mv`, `cp`, `ls`, and `rm`.

## Prerequisites

- Day 1 navigation and Day 2 file commands (`touch`, `mkdir`, `mv`, `cp`, `rm`).
- Ability to read a short Bash script before running it.

## Supporting file

[`setup.sh`](setup.sh) creates 12 **empty** placeholder files in `~/photo-lab/incoming/`. It refuses to run if `~/photo-lab` already exists. Run it from this folder:

```bash
less setup.sh        # read it first
bash setup.sh
```

## Challenge

Work from a terminal only. Do not use a file manager.

1. Look at `~/photo-lab/incoming/` and describe what is there.
2. Create `~/photo-lab/sorted/` with sub-folders for `jpg`, `png`, `screenshots`, and `other`.
3. Move every file to the right place. Handle the file names that contain spaces and the `.JPG` file with the upper-case extension.
4. Make a `~/photo-lab/backup/` copy of the sorted folder.
5. Rename `IMG_0001.jpg` to `holiday-001.jpg` inside the sorted structure.
6. Delete `notes.txt` and `photo-list.csv` only after confirming they are not needed.

<details>
<summary>Hints</summary>

- Quote names with spaces: `mv "beach day 01.jpg" jpg/`.
- `ls -R` shows the whole tree.
- `cp -r` copies a folder and its contents.
- Use `ls` before `rm` to confirm what you are deleting.

</details>

## Verification

- `ls -R ~/photo-lab/sorted` shows nothing left in `incoming/` that belongs in a sorted folder.
- The `backup/` copy lists the same files as `sorted/`.
- No file name was lost or changed except the one rename.

## Safety and cleanup

Only empty placeholder files are involved. When finished, remove the scratch folder with `rm -r ~/photo-lab` after checking the path with `ls ~/photo-lab`.

## Progress

- [ ] Setup script read and run
- [ ] Files sorted
- [ ] Backup copy verified
- [ ] Rename done
- [ ] Cleanup done
