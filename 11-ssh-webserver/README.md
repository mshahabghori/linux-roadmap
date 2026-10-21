# Day 11 — SSH and Webserver Essentials

[← Roadmap](../README.md) · [← Day 10](../10-bash-expansions/README.md) · [Day 12 →](../12-linux-final-lab/README.md)

**Status:** in progress — **2 of 8** checklist items reported complete. This is the author's reported status; no repository file records evidence for any item.

**Course coverage:** Section 9 (SSH, authentication, Apache, service management, file transfers, logs). See [course mapping](../docs/COURSE-MAP.md).

## Objective
Practice SSH connectivity, SSH key verification, file transfers, Linux service management, Apache hosting, and log inspection.

## Labs

| Lab | Status |
|---|---|
| [SSH key authentication](labs/ssh-key-authentication/README.md) | Not started |
| [File transfer (SCP and SFTP)](labs/file-transfer/README.md) | Not started |
| [Apache service and logs](labs/apache-service-and-logs/README.md) | Not started |

## Environment
- OS: Ubuntu VM
- SSH server: OpenSSH
- Web server: Apache2
- Lab location: Ubuntu virtual machine
- Repository: linux-roadmap

## Progress checklist (2 of 8)

- [x] SSH server installed and running.
- [x] Connected successfully using SSH.
- [ ] Generated an SSH key pair safely. → [SSH key authentication lab](labs/ssh-key-authentication/README.md)
- [ ] Transferred a test file using `scp` or `sftp`. → [File transfer lab](labs/file-transfer/README.md)
- [ ] Installed Apache and checked its status. → [Apache service and logs lab](labs/apache-service-and-logs/README.md)
- [ ] Started and stopped Apache successfully. → same lab
- [ ] Opened the local web page. → same lab
- [ ] Inspected Apache access and error logs. → same lab

Connecting over SSH does not show that key-based login, file transfer, Apache, or log inspection were done.

## Original task list

This list was written before the checklist above. Only its first two items match completed checklist items; treat the rest as planned tasks, not completed work.

- Installed and checked the SSH server.
- Connected using `ssh localhost` and the VM's private IP.
- Inspected SSH key files and verified the public-key fingerprint and private-key validity.
- Transferred a test file using SCP.
- Practiced SFTP file upload.
- Installed and managed Apache using `systemctl`.
- Tested the local web server using `curl`.
- Inspected Apache access and error logs.

## Important Commands
```bash
systemctl status ssh
ssh localhost
ssh skeleton@VM_IP
ssh-keygen -lf ~/.ssh/id_ed25519.pub
scp ~/transfer-test.txt skeleton@VM_IP:/home/skeleton/transfer-received.txt
sftp skeleton@localhost
sudo systemctl status apache2
sudo systemctl start apache2
sudo systemctl stop apache2
sudo systemctl restart apache2
curl -I http://localhost
sudo tail -n 20 /var/log/apache2/access.log
sudo tail -n 20 /var/log/apache2/error.log
```

Replace `VM_IP` with your VM's actual IP address.

## Key Concepts
- SSH client versus SSH server.
- SSH host keys versus user authentication keys.
- Public and private SSH keys.
- SCP and SFTP file transfers.
- `systemctl start`, `stop`, `restart`, and `enable`.
- Apache access logs versus error logs.
- Local VM addresses versus public websites.

## Security Notes
- Never commit private SSH keys, passwords, or authentication tokens.
- Keep SSH and web services restricted to trusted networks unless intentionally configured otherwise.
- A private VM IP does not automatically make a website publicly accessible.

## Outcome

Partly done: SSH server installed and a connection made. File transfer, key authentication, Apache, and log inspection are still to do. Commands in the reference list above have not been verified by files in this repository.
