# Day 6 — Linux Security and Permissions Lab

## Overview

This lab explores how Linux users, groups, file ownership, and permission
bits control access to files, directories, and executable scripts.

**Topics:** `id`, `groups`, `ls -l`, `stat`, `namei`, `chmod`,
`chown`, `chgrp`, directory traversal, and least privilege.

## Lab Structure

```text
linux-security-lab/
├── public/
│   └── announcement.txt
├── private/
│   └── secret.txt
├── scripts/
│   └── audit.sh
└── logs/
    └── system.log
```

## Test Users and Groups

| User | Supplementary group | Purpose |
|---|---|---|
| `usera` | `securityteam` | Test reading and script execution |
| `userb` | `securityteam` | Test file modification |
| `userc` | `logreaders` | Test restricted access |

The `id` command confirmed these group memberships during testing.

## Concepts Learned

### Permission classes

Linux permissions apply to three classes:

- **Owner:** the user who owns the file.
- **Group:** users belonging to the file's owning group.
- **Others:** everyone who does not match the owner or group classes.

For regular files:
- `r` allows reading.
- `w` allows modifying the file.
- `x` allows execution.

For directories:
- `r` allows listing directory entries.
- `w` allows creating or removing entries, subject to other checks.
- `x` allows traversing the directory.

### Numeric permissions

| Mode | Owner | Group | Others | Typical example |
|---|---|---|---|---|
| `640` | Read/write | Read | None | Private readable file |
| `644` | Read/write | Read | Read | Public text file |
| `660` | Read/write | Read/write | None | Group-editable file |
| `750` | Read/write/execute | Read/execute | None | Restricted script or directory |
| `755` | Read/write/execute | Read/execute | Read/execute | Publicly accessible directory |
| `775` | Read/write/execute | Read/write/execute | Read/execute | Group-writable shared directory |

These are examples, not universal security rules. Choose permissions according to the intended access policy.

### Ownership and permissions are different

- `chmod` changes permission bits.
- `chown` changes the owner and can change the group.
- `chgrp` changes the owning group.

Granting group-write permission does not help a user through that group if the file belongs to a different group.

Directory traversal permissions also matter. A user must be able to traverse every parent directory in the path to access a file.

## Tasks Performed

1. Inspected test users and group memberships using `id` and `groups`.
2. Attempted to read `private/secret.txt` as different users.
3. Attempted to append text as `userb`.
4. Investigated file ownership and group-write permissions.
5. Changed the file's group to `securityteam` and retried the write.
6. Inspected script permissions and parent-directory traversal using `namei -l`.
7. Tested script execution as `usera` and `userc`.
8. Inspected file permissions, ownership, and contents using `ls`, `find`, and `stat`.

## Observed Results

### Reading the secret file

The initial file was owned by `skeleton:skeleton` with mode `664`. The
private directory had mode `775`.

Both `usera` and `userc` could initially read the file. This was
unexpected because the intended configuration was supposed to restrict
access. The file's permissions allowed reading by others, and the
directory allowed traversal.

### Testing file modification

`userb` initially received `Permission denied` when attempting to append
to the secret file.

Adding group-write permission alone did not solve the problem. The file
still belonged to group `skeleton`, while `userb` belonged to
`securityteam`.

After changing the file's group to `securityteam`, `userb` successfully
appended:

```text
Modified by User B
```

The group was subsequently changed back to `skeleton`, and the file was
set to mode `664`. The modification remained in the file.

### Testing script execution

The script `audit.sh` was owned by `skeleton:securityteam` with mode
`750`.

- `usera` successfully executed the script.
- `userc` received a permission-denied error.

During troubleshooting, `namei -l` revealed that `/home/skeleton`
initially blocked traversal by other users. The command
`sudo chmod o+x /home/skeleton` was used to allow traversal.

Changing permissions on a home directory affects access to its contents
and should be done cautiously. This change needs to be reviewed during
cleanup.

### Current verification status

The latest inspection of `~/linux-security-lab` showed:

- Lab and subdirectories: mode `775`, owned by `skeleton:skeleton`.
- `secret.txt`: mode `664`, owned by `skeleton:skeleton`.
- `audit.sh`: mode `750`, owned by `skeleton:securityteam`.
- `secret.txt` contains the original text and `Modified by User B`.

**Important:** The final restoration of the intended permissions has not
yet been verified. Do not consider the lab fully secured until ownership,
permissions, and access tests have been checked again.

## Verification Checklist

- [x] Inspected users and groups.
- [x] Tested reading as different users.
- [x] Investigated group ownership and write permissions.
- [x] Tested script execution as different users.
- [x] Inspected parent-directory traversal.
- [x] Checked the final secret-file contents.
- [ ] Restored the intended ownership and permissions.
- [ ] Repeated access tests after restoration.
- [ ] Verified all final results.

## Key Takeaways

1. Correct permission bits do not guarantee correct access if ownership
   or parent-directory permissions are wrong.
2. Group membership and file group ownership must match the access policy.
3. Execute permission on a directory allows traversal; it is not the
   same as executing a file.
4. Changing permissions does not undo earlier file modifications.
5. The principle of least privilege means granting only the access
   necessary for each user or group.
