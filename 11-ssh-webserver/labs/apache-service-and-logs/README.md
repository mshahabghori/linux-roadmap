# Apache Service and Logs Lab

[← Day 11](../../README.md) · [← Roadmap](../../../README.md)

**Status:** Not started (checklist items 5–8 of 8)

## Objective

Install Apache, manage it as a service, open its default page locally, and read its logs.

## Prerequisites

- Package management (Day 5) and basic `sudo` use.

## Challenge

1. Install the `apache2` package and check its service status.
2. Stop the service, confirm it is stopped, then start it again.
3. Open the default web page from the VM (`curl` or a browser) and note the HTTP status.
4. Find Apache's access and error logs and read the last lines of each.
5. Request a page that does not exist, then find that request in the logs.
6. Explain the difference between the access log and the error log.

<details>
<summary>Hints</summary>

- `sudo apt update && sudo apt install apache2`
- `systemctl status apache2`, `sudo systemctl stop apache2`, `sudo systemctl start apache2`
- `curl -I http://localhost` shows the response headers
- Logs are usually under `/var/log/apache2/`; use `sudo tail -n 20 FILE`

</details>

## Verification

- Status shows `active (running)` after start and `inactive (dead)` after stop.
- `curl -I http://localhost` returns a `200` while running and fails to connect while stopped.
- The not-found request appears in the access log.

## Safety and cleanup

- Keep the web server on a trusted network. A VM in NAT mode is normally not reachable from outside; do not change that without a reason.
- Optional cleanup: `sudo systemctl disable --now apache2`, then `sudo apt remove apache2`.

## Progress

- [ ] Apache installed and status checked
- [ ] Stopped and started
- [ ] Local page opened
- [ ] Access and error logs inspected
