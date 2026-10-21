# File Transfer Lab (SCP and SFTP)

[← Day 11](../../README.md) · [← Roadmap](../../../README.md)

**Status:** Not started (checklist item 4 of 8)

## Objective

Copy a test file over SSH with `scp` and with `sftp`.

## Prerequisites

- SSH server running and a working SSH connection (checklist items 1 and 2, reported done).

## Challenge

1. Create a small test file in your home folder with a line of text in it.
2. Copy it to the same machine under a new name using `scp` over `localhost`.
3. Confirm the copy exists and has the same content.
4. Start an `sftp` session to `localhost`, upload the file under another name, list the remote folder, then leave the session.
5. Explain in one sentence how `scp` and `sftp` differ in use.

<details>
<summary>Hints</summary>

- `scp SOURCE USER@HOST:DESTINATION`
- Compare files with `diff FILE1 FILE2` (no output means identical) or `sha256sum`.
- In `sftp`: `put`, `ls`, `pwd`, `exit`.

</details>

## Verification

- `diff` between the original and each copy prints nothing.
- The `sftp` session listed the uploaded file.

## Safety and cleanup

Use a harmless test file. Delete the test and copied files when finished. Do not transfer private keys or password files.

## Progress

- [ ] Test file created
- [ ] `scp` copy verified
- [ ] `sftp` upload verified
