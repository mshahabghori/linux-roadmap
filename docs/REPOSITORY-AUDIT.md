# Repository Audit

[← Roadmap](../README.md) · [Course mapping](COURSE-MAP.md)

This report records what was inspected, what was changed, and what could not be verified. The changes were committed on a new branch, `repo-repair`, by an install script. No existing commit or branch was changed, and nothing was merged.

## 1. Scope and limits

- **Inspected:** the `linux-roadmap.zip` upload, which contains the working tree and the `.git` folder (branches, history, and the two untracked files).
- **Not inspected:** the Ubuntu VM itself. The external locations in section 5 could not be searched, and `~/linux-security-lab` (the Day 6 lab folder) is not in the repository.
- **Not available:** the original study plan and the course lecture list were not attached. Lecture titles, durations, and the planned day-by-day dates were therefore **not** checked. [COURSE-MAP.md](COURSE-MAP.md) records the mapping you gave, with no lecture details.
- **Backup:** the install script copied the whole folder to `~/linux-roadmap-backup-<timestamp>` before changing anything.
- **Safety:** no `git reset --hard`, `git clean`, or bulk deletion was used; no scripts from the repository were run; `contributions.zip` was listed and read but not extracted into the repository; nothing was read from `~/.ssh` (a search of the repository found no private-key material).

## 2. Git state found

| Item | Finding |
|---|---|
| Current branch | `day-10-bash-expansions-lab`, at commit `5959169` ("Add Day 12 Linux final lab") |
| Upstream | It tracks `origin/day-11-ssh-webserver-lab` and is 1 commit ahead. The branch name, upstream, and content do not match. |
| `origin/main` | `201d5d3`, which includes Days 1–10. Days 11 and 12 are on separate remote branches. |
| Local `main` | Stale at `0eac850` (Day 6). |
| Working tree | Clean except two untracked files: `README.md.day9-backup` and `contributions.zip`. No staged or modified tracked files. |

No existing Git history was changed. Decision needed: see section 10.

History also shows the filesystem lab was first committed as a flat `linux-lab/` folder (commit `71cce9a`), then moved to `02-filesystem/labs/filesystem-organization/` (commits `ebd1fec`, `e8efd81`). Nothing else was moved or deleted in history.

## 3. Initial and final structure

### Initial (excluding `.git`)

```text
.
├── 01-command-line
│   └── exercises
│       └── navigation.md
├── 02-filesystem
│   └── labs
│       └── filesystem-organization
│           ├── backup
│           │   ├── backup.txt
│           │   ├── config.conf
│           │   └── data.csv
│           ├── documents
│           │   ├── notes.txt
│           │   ├── report.txt
│           │   └── resume.pdf
│           ├── images
│           │   ├── logo.png
│           │   └── photo.jpg
│           └── scripts
│               ├── install.sh
│               └── script.sh
├── 03-text-processing
│   └── labs
│       └── text-file-analysis
│           └── contribution.log
├── 04-users-system
│   ├── groups
│   ├── labs
│   │   └── user-management
│   │       └── README.md
│   ├── sudo-su
│   └── users
├── 05-permissions-packages
│   ├── labs
│   │   ├── package-management
│   │   │   └── README.md
│   │   └── permissions
│   │       └── README.md
│   └── README.md
├── 06-linux-security-lab
│   ├── .gitignore
│   ├── permissions-reference.md
│   ├── README.md
│   └── verification.md
├── 07-redirection-pipes
│   ├── labs
│   │   ├── combined.txt
│   │   ├── errors.txt
│   │   ├── failed-logins.txt
│   │   ├── lab.txt
│   │   ├── output.txt
│   │   └── README.md
│   └── README.md
├── 08-grep-text-processing
│   ├── labs
│   │   ├── README.md
│   │   ├── security.log
│   │   └── summary.txt
│   └── README.md
├── 09-environment-path
│   └── README.md
├── 10-bash-expansions
│   ├── lab-files
│   │   ├── access log.txt
│   │   ├── failed login.log
│   │   ├── file1.txt
│   │   ├── file2.txt
│   │   ├── fileA.txt
│   │   ├── notes with spaces.md
│   │   ├── report.csv
│   │   ├── report.txt
│   │   └── special's file.txt
│   └── README.md
├── 11-ssh-webserver
│   ├── notes
│   └── README.md
├── 12-linux-final-lab
│   ├── notes
│   └── README.md
├── contributions.zip
├── README.md
└── README.md.day9-backup
```

### Final (excluding `.git`)

```text
.
├── 01-command-line
│   ├── labs
│   │   └── navigation
│   │       └── README.md
│   └── README.md
├── 02-filesystem
│   ├── labs
│   │   ├── filesystem-organization
│   │   │   ├── backup
│   │   │   │   ├── backup.txt
│   │   │   │   ├── config.conf
│   │   │   │   └── data.csv
│   │   │   ├── documents
│   │   │   │   ├── notes.txt
│   │   │   │   ├── report.txt
│   │   │   │   └── resume.pdf
│   │   │   ├── images
│   │   │   │   ├── logo.png
│   │   │   │   └── photo.jpg
│   │   │   ├── README.md
│   │   │   └── scripts
│   │   │       ├── install.sh
│   │   │       └── script.sh
│   │   └── photo-management
│   │       ├── README.md
│   │       └── setup.sh
│   └── README.md
├── 03-text-processing
│   ├── labs
│   │   ├── contribution-files
│   │   │   └── README.md
│   │   └── text-file-analysis
│   │       ├── contribution.log
│   │       └── README.md
│   └── README.md
├── 04-users-system
│   ├── groups
│   ├── labs
│   │   └── user-management
│   │       └── README.md
│   ├── README.md
│   ├── sudo-su
│   └── users
├── 05-permissions-packages
│   ├── labs
│   │   ├── package-management
│   │   │   └── README.md
│   │   └── permissions
│   │       └── README.md
│   └── README.md
├── 06-linux-security-lab
│   ├── .gitignore
│   ├── permissions-reference.md
│   ├── README.md
│   └── verification.md
├── 07-redirection-pipes
│   ├── labs
│   │   └── redirection-practice
│   │       ├── combined.txt
│   │       ├── errors.txt
│   │       ├── failed-logins.txt
│   │       ├── lab.txt
│   │       ├── output.txt
│   │       └── README.md
│   └── README.md
├── 08-grep-text-processing
│   ├── labs
│   │   ├── contribution-grep-analysis
│   │   │   └── README.md
│   │   └── security-log-analysis
│   │       ├── README.md
│   │       ├── security.log
│   │       └── summary.txt
│   └── README.md
├── 09-environment-path
│   └── README.md
├── 10-bash-expansions
│   ├── labs
│   │   ├── bash-expansions
│   │   │   ├── access log.txt
│   │   │   ├── failed login.log
│   │   │   ├── file1.txt
│   │   │   ├── file2.txt
│   │   │   ├── fileA.txt
│   │   │   ├── notes with spaces.md
│   │   │   ├── README.md
│   │   │   ├── report.csv
│   │   │   ├── report.txt
│   │   │   └── special's file.txt
│   │   └── file-extraction
│   │       └── README.md
│   └── README.md
├── 11-ssh-webserver
│   ├── labs
│   │   ├── apache-service-and-logs
│   │   │   └── README.md
│   │   ├── file-transfer
│   │   │   └── README.md
│   │   └── ssh-key-authentication
│   │       └── README.md
│   ├── notes
│   └── README.md
├── 12-linux-final-lab
│   ├── labs
│   │   └── final-challenge
│   │       └── README.md
│   ├── notes
│   └── README.md
├── contributions.zip
├── docs
│   ├── archive
│   │   └── README.md.day9-backup
│   ├── COURSE-MAP.md
│   └── REPOSITORY-AUDIT.md
└── README.md
```

## 4. Moves, copies, renames, and new files

### Moved (original → destination)

| Original | Destination | Reason |
|---|---|---|
| `01-command-line/exercises/navigation.md` | `01-command-line/labs/navigation/README.md` | Follow the topic/lab pattern. Links inside it were adjusted. |
| `07-redirection-pipes/labs/README.md` | `07-redirection-pipes/labs/redirection-practice/README.md` | Loose files under `labs/` moved into a lab folder. |
| `07-redirection-pipes/labs/{combined,errors,failed-logins,lab,output}.txt` | `07-redirection-pipes/labs/redirection-practice/` | Same. |
| `08-grep-text-processing/labs/README.md` | `08-grep-text-processing/labs/security-log-analysis/README.md` | Same. |
| `08-grep-text-processing/labs/{security.log,summary.txt}` | `08-grep-text-processing/labs/security-log-analysis/` | Same. |
| `10-bash-expansions/lab-files/*` (9 files) | `10-bash-expansions/labs/bash-expansions/` | Lab data now sits beside the lab README. |
| `README.md.day9-backup` (repository root) | `docs/archive/README.md.day9-backup` | Obsolete backup, relocated after checking (see section 6). |

Two folders left empty by the moves (`01-command-line/exercises/` and `10-bash-expansions/lab-files/`) were removed with `rmdir`, which only removes empty folders. The files were moved on disk, and the commit records them as renames.

### Edited (existing files)

- `README.md` (root): links fixed; Day 11 and Day 12 rows and sections added with honest statuses; the outdated sentence saying Day 11 had no folder replaced; links to the course map and this audit added. The wording of earlier days is otherwise unchanged.
- `07-redirection-pipes/README.md`, `08-grep-text-processing/README.md`: links to moved files fixed; lab tables added.
- `10-bash-expansions/README.md`: the practical commands were moved verbatim into `labs/bash-expansions/README.md`; the topic README keeps goals, topics, takeaways, and links.
- `11-ssh-webserver/README.md`: 2-of-8 checklist added; original task list kept but marked as planned, not completed; outcome reworded to match.
- `12-linux-final-lab/README.md`: status changed from "Completed" to "reported complete, unverified" with a note about the SSH overlap; the completion claim is kept, labelled as reported.

### Created

- Topic READMEs: `01-command-line`, `02-filesystem`, `03-text-processing`, `04-users-system`.
- Lab READMEs: `02-filesystem/labs/filesystem-organization`, `03-text-processing/labs/text-file-analysis`, `10-bash-expansions/labs/bash-expansions` (split from the topic README).
- New lab scaffolds (all **Not started**): see section 7.
- `docs/COURSE-MAP.md`, `docs/REPOSITORY-AUDIT.md` (this file), `docs/archive/`.

### Copied

None. No external files were copied in, because none could be searched (section 5).

## 5. Candidate external files

The VM was not accessible, so nothing was found, inspected, or copied. Locations to check on the VM:

| Location | Look for |
|---|---|
| `~/linux-security-lab` | The Day 6 lab folder (`public/`, `private/`, `scripts/`, `logs/`). The Day 6 report describes it but it is not in the repository. |
| `~/Desktop`, `~/Documents`, `~/Downloads` | Contribution files, extracted course material, notes. |
| `~/projects`, `~/linux-lab` | Older copies of the filesystem lab (`linux-lab/` was its original name in Git history). |
| `~/.ssh` | **Do not copy anything from here.** Only a public key or fingerprint may ever be referenced; never a private key. |

## 6. Duplicates and suspicious files

| File | Finding | Handling |
|---|---|---|
| `README.md.day9-backup` | Byte-for-byte identical to `README.md` at commit `0cb9114` ("Add Day 8 grep and text processing lab"), so it is already recoverable from Git. No file referenced it. | Copied to `docs/archive/`, compared, then the root copy removed. Content preserved. |
| `contributions.zip` | 28 entries: three `contributions.txt` files (Alice 148 lines, Bob 197, Sarah 257) in `Alice/`, `Bob/`, `Sarah/`, plus `__MACOSX/` and `.DS_Store` leftovers. The data looks like fictional `git log` output (dates in 2031, `example.com` emails, patterned hashes). Untracked. No scripts. | Left in place and untouched. New labs refer to it. See section 10. |
| `03-text-processing/.../contribution.log` | A 20-line synthetic log, **not** the zip's data, despite the similar name. | Kept; the lab README now says so. |
| `07-redirection-pipes/.../lab.txt` | One line, `INFO: New session started`; purpose not recorded, no command refers to it. | Kept as found; its lab README already notes this. |
| 10 files in `02-filesystem/.../filesystem-organization/` | All zero bytes (including `resume.pdf`, `logo.png`, `photo.jpg`, and both scripts). | Kept; documented as placeholders. |
| `10-bash-expansions` test files | Eight zero-byte files plus `access log.txt`. The zip shows them world-writable (`666`), which may reflect the upload rather than your VM. | Kept; permissions not changed. |
| `08-grep-text-processing/.../security.log` | 123 lines; lines 121–123 repeat earlier timestamps (out of order). The counts in `summary.txt` (27 ERROR, 24 failed logins, 4 users, 4 IPs, 18 + 9 error messages) were recomputed and **match**. | Kept unchanged. |
| Empty folders `04-users-system/{groups,sudo-su,users}`, `11-ssh-webserver/notes`, `12-linux-final-lab/notes` | Empty. Git does not track empty folders, so they exist only in this working copy. | Left in place. See section 10. |

## 7. Missing exercises and new scaffolds

An exercise was treated as missing when the course mapping you gave lists it, but the repository has no lab, notes, or files for it. This is not proof the work was never done.

| New scaffold (all **Not started**) | Why it was considered missing |
|---|---|
| [`02-filesystem/labs/photo-management`](../02-filesystem/labs/photo-management/README.md) (with `setup.sh`) | The mapping lists a photo-management exercise; no lab is recorded for it. |
| [`03-text-processing/labs/contribution-files`](../03-text-processing/labs/contribution-files/README.md) | The mapping lists contribution-file analysis in Section 3; `contributions.zip` exists but no lab uses it. |
| [`08-grep-text-processing/labs/contribution-grep-analysis`](../08-grep-text-processing/labs/contribution-grep-analysis/README.md) | The mapping lists contribution analysis in Section 6. |
| [`10-bash-expansions/labs/file-extraction`](../10-bash-expansions/labs/file-extraction/README.md) | The mapping lists file extraction in Section 8; no lab covers it. |
| [`11-ssh-webserver/labs/ssh-key-authentication`](../11-ssh-webserver/labs/ssh-key-authentication/README.md) | SSH checklist item 3. |
| [`11-ssh-webserver/labs/file-transfer`](../11-ssh-webserver/labs/file-transfer/README.md) | SSH checklist item 4. |
| [`11-ssh-webserver/labs/apache-service-and-logs`](../11-ssh-webserver/labs/apache-service-and-logs/README.md) | SSH checklist items 5–8. |
| [`12-linux-final-lab/labs/final-challenge`](../12-linux-final-lab/labs/final-challenge/README.md) | The final challenge is reported complete but has no notes or output. |

Each has an objective, prerequisites, challenge tasks first (hints collapsed), verification, safety and cleanup, and an unticked progress list. No terminal output or completion was invented.

Candidates considered and **not** created: an extra Day 9 PATH lab (the Day 9 README already covers the content; only the new-terminal alias check is unrecorded), and new Day 4–6 labs (the existing labs cover the mapping). Role plays and practice exams are course items, not repository labs.

## 8. Completion status that could not be verified

| Topic | Reported | What the files show |
|---|---|---|
| 01–05 | complete | READMEs or file lists only; no command output. |
| 06 | in progress | A detailed report with observations; final restoration and re-verification are unchecked in its own checklist. The lab folder is not in the repository. |
| 07 | complete | Output files match the commands; `all-output.txt` is absent. |
| 08 | complete | `summary.txt` counts match `security.log`; commands not recorded. |
| 09, 10 | unverified | Recorded observations (09) or commands and files (10); no output. |
| 11 | 2 of 8 | Preserved as reported. No file records evidence for any item. SSH connectivity is not treated as proof of key login, transfer, Apache, or logs. |
| 12 | complete | Documentation only. Its scope overlaps SSH items still unchecked in Day 11. |
| Practice Exam 1 | 18/30 (60%) | No record in the repository. |
| Dates in the root README | various | Not checked against your original study plan (not attached). |

## 9. Other observations

- The only `.gitignore` is in `06-linux-security-lab/` (`*.swp`, `*~`). There is no root `.gitignore`, so a private key or extracted archive placed in the repository would show up as untracked rather than ignored. See section 10.
- Day 6 documents `sudo chmod o+x /home/skeleton` as pending review. That is a change on your VM which the repository can neither confirm nor reverse.

## 10. Decisions and remaining tasks for you

1. **Attach the study plan and lecture list**, so lecture titles and durations can be added to [COURSE-MAP.md](COURSE-MAP.md) and the root-README dates can be checked.
2. **Search the VM locations in section 5** and tell me what exists; no external material has been compared yet.
3. **Day 12 status:** confirm whether "complete" should stay, given the unchecked SSH items. It is labelled "reported complete, unverified" for now.
4. **Git branches:** your current branch is named for Day 10, tracks the Day 11 remote branch, and holds the Day 12 commit; local `main` is behind `origin/main`. Decide how to tidy this. Nothing was changed.
5. **`contributions.zip`:** it looks like course-supplied material. Decide whether to commit it (check the course's terms first), keep it untracked, or keep only your lab results.
6. **Empty folders** (`04-users-system/{groups,sudo-su,users}`, the two `notes/` folders): fill them, add a placeholder `README.md`, or remove them.
7. **Root `.gitignore`:** consider ignoring private keys (`id_*`, `*.pem`, `*.key`) and extracted course archives.
8. **Day 6:** finish restoration and re-verification, and decide whether to add the lab files.
9. **Placeholder files** (zero-byte files in Days 2 and 10): keep, or replace with real content.

## 11. Validation

Checks run on the repaired copy: a README in each numbered topic and each lab folder; all relative Markdown links and heading anchors; no loose files directly under any `labs/`; `git diff --check`; no private-key material in the repository; no changes to Git history, branches, or tracked files other than those listed in section 4.
