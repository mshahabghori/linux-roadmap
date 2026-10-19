# Linux Permissions Quick Reference

[← Day 6 report](README.md) · [← Roadmap](../README.md)

## Inspect

```bash
id usera
groups usera
ls -l file.txt
ls -ld directory/
stat -c '%A %a %U:%G %n' file.txt
namei -l /path/to/file
```

## Modify Permissions and Ownership

```bash
chmod 640 file.txt
chmod g+w file.txt
chgrp securityteam file.txt
chown user:group file.txt
```

- `chmod`: changes permissions.
- `chgrp`: changes the owning group.
- `chown`: changes ownership.

Use `sudo` only when required and understand the impact before making
changes.

## Permission Meaning

| Permission | File | Directory |
|---|---|---|
| Read (`r`) | Read contents | List entries |
| Write (`w`) | Modify contents | Create/remove entries, subject to other checks |
| Execute (`x`) | Execute a program or script | Traverse the directory |

## Numeric Modes

Each digit represents owner, group, or others:

- `4` = read
- `2` = write
- `1` = execute

Add the values for combined permissions: `7 = rwx`, `6 = rw-`,
`5 = r-x`, and `4 = r--`.

Always inspect ownership and parent-directory permissions when access
does not behave as expected.
