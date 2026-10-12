# Security Log Analysis Lab

## Objective

Use Linux text-processing commands to investigate a sample security log.

## Commands practised

- `grep` — filter error and failed-login records.
- `grep -c` — count matching records.
- `cut` — extract usernames, IP addresses, and message fields.
- `sort` and `uniq` — identify unique values and count repeated error messages.
- `sed` — substitute text in displayed output without modifying the original file.
- Pipelines (`|`) — combine commands into a useful analysis workflow.

## Findings

The generated report in `summary.txt` records:

- 27 ERROR entries.
- 24 failed-login events.
- Four unique usernames and four unique IP addresses.
- `Invalid_password`: 18 occurrences.
- `Permission_denied`: 9 occurrences.

## Files

- `security.log` — sample log dataset.
- `summary.txt` — results of the analysis.

The log is synthetic and intended for practice, not evidence of real security incidents.
