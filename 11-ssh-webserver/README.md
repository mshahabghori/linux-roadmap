# Day 11 — SSH and Webserver Essentials

## Objective
Practice SSH connectivity, SSH key verification, file transfers, Linux service management, Apache hosting, and log inspection.

## Environment
- OS: Ubuntu VM
- SSH server: OpenSSH
- Web server: Apache2
- Lab location: Ubuntu virtual machine
- Repository: linux-roadmap

## Tasks Practiced
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
Practiced basic Linux remote access, file transfer, service management, local web hosting, and server-log inspection.
