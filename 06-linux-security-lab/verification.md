# Day 6 Verification Tests

[← Day 6 report](README.md) · [← Roadmap](../README.md)

Run these tests against the lab in your environment. Compare actual
results with the expected results; do not assume the configuration is
correct merely because a command ran.

## Users and Groups

```bash
id usera
id userb
id userc
```

Expected: `usera` and `userb` belong to `securityteam`;
`userc` belongs to `logreaders`.

## Inspect Permissions and Ownership

```bash
LAB=/home/skeleton/linux-security-lab

ls -ld "$LAB" "$LAB"/*
find "$LAB" -type f -exec stat -c '%A %a %U:%G %n' {} \;
namei -l "$LAB/scripts/audit.sh"
```

## Test Access

```bash
sudo -u usera cat "$LAB/private/secret.txt"
sudo -u userc cat "$LAB/private/secret.txt"
sudo -u usera "$LAB/scripts/audit.sh"
sudo -u userc "$LAB/scripts/audit.sh"
```

For a correctly configured restricted lab, `usera` should be able to
read the secret and execute the script, while `userc` should be denied.

## Checklist

- [ ] User and group memberships verified.
- [ ] File and directory permissions inspected.
- [ ] Ownership checked.
- [ ] Read access tested.
- [ ] Write access tested.
- [ ] Script execution tested.
- [ ] Parent-directory traversal checked.
- [ ] Intended permissions restored.
- [ ] Access tests repeated after restoration.
