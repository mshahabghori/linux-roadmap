# Permissions Lab

[← Day 5](../../README.md) · [← Roadmap](../../../README.md)

Hands-on practice with Linux file permissions and ownership.

## Commands Practiced

`ls -l`  
`chmod`  
`chown`  
`chgrp`

## Concepts Practiced

- Owner / group / others
- Read (`r`)
- Write (`w`)
- Execute (`x`)
- Numeric permissions
- Permission strings
- Changing permissions
- Changing ownership
- Changing group ownership

## Permission Reference

```text
r = 4
w = 2
x = 1

7 = rwx
6 = rw-
5 = r-x
4 = r--
0 = ---

Example:

644 = rw-r--r--
```

## Security Relevance

Permissions are a fundamental Linux access-control mechanism. Misconfigured permissions can allow unauthorized users to read, modify, or execute files.
