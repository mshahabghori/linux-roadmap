# SSH Key Authentication Lab

[← Day 11](../../README.md) · [← Roadmap](../../../README.md)

**Status:** Not started (checklist item 3 of 8)

## Objective

Generate an SSH key pair safely and understand which half is private.

## Prerequisites

- OpenSSH server installed and running, and a successful SSH connection (checklist items 1 and 2, reported done).

## Challenge

1. Generate a new Ed25519 key pair with a passphrase, using a **new file name** (for example `~/.ssh/roadmap_lab_ed25519`). Do not overwrite any existing key.
2. List the files created and check their permissions.
3. Show the public key's fingerprint.
4. Say which file may be shared and which must never leave your account.
5. Optional: authorise the public key for `localhost` and log in with it.

<details>
<summary>Hints</summary>

- `ssh-keygen -t ed25519 -f ~/.ssh/NAME -C "comment"` creates `NAME` (private) and `NAME.pub` (public).
- `ssh-keygen -lf ~/.ssh/NAME.pub` prints the fingerprint.
- The private key should be readable only by you (`600`).
- `ssh-copy-id -i ~/.ssh/NAME.pub localhost` adds the public key to `~/.ssh/authorized_keys`.

</details>

## Verification

- Two files exist: the key and the key with `.pub`.
- The private key has mode `600`.
- Optional step 5 logs in without a password prompt for the account (a passphrase prompt for the key is expected).

## Safety and cleanup

- **Never print, paste, or commit the private key.** Do not copy either key file into this repository.
- Recording the *fingerprint* or *public* key is fine; recording the private key is not.
- To undo step 5, delete the line you added from `~/.ssh/authorized_keys` and remove the key files you created.

## Progress

- [ ] Key pair generated with a new file name
- [ ] Permissions checked
- [ ] Fingerprint shown
- [ ] Optional: key login tested
