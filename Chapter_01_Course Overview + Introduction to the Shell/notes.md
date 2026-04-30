# Lecture 01 — Course Shell

> Full material: https://missing.csail.mit.edu/2026/course-shell/

---

## Key concepts

**The shell** is a text interface to your OS. It lets you run programs, combine them, and automate tasks — things no GUI can fully replicate.

**`$PATH`** — the list of directories the shell searches when you run a command. `which <cmd>` tells you exactly which binary gets executed.

**`$SHELL`** — environment variable that holds your current shell path (e.g. `/bin/bash`).

---

## Navigation

| Command | What it does |
|---------|--------------|
| `pwd` | print working directory |
| `ls -l` | list files with permissions |
| `cd <path>` | change directory (built-in, not a program — see ex07) |
| `man <cmd>` | open the manual for any command |

- `.` = current directory, `..` = parent directory
- Absolute paths start with `/`. Relative paths start from `pwd`.

---

## Streams & redirection

```
stdin (0)   →  keyboard input
stdout (1)  →  normal output
stderr (2)  →  error output
```

| Syntax | Effect |
|--------|--------|
| `> file` | redirect stdout (overwrites) |
| `>> file` | redirect stdout (appends) |
| `2> file` | redirect stderr |
| `&> file` | redirect both stdout and stderr |
| `< file` | read stdin from file |

---

## Pipes

`cmd1 | cmd2` — stdout of `cmd1` becomes stdin of `cmd2`.

Pipes are how you compose programs. One tool does one thing well; pipes chain them.

---

## Exit status & conditionals

- `$?` — exit code of the last command (`0` = success, anything else = failure)
- `&&` — run next command only if previous succeeded
- `||` — run next command only if previous failed
- `if cmd1; then cmd2; fi` — conditional execution

---

## Globs (pattern matching)

| Pattern | Matches |
|---------|---------|
| `*` | any string |
| `?` | exactly one character |
| `{a,b,c}` | alternatives (a, b, or c) |

---

## Quoting

| Style | Behavior |
|-------|----------|
| `'single'` | literal — no variable expansion |
| `"double"` | expands variables (`$VAR`) |
| `$'ANSI'` | interprets escape sequences (`\n`, `\t`) |

---

## Useful tools introduced

| Tool | One-liner |
|------|-----------|
| `find` | search files by name, type, size, date |
| `grep` | search inside files with patterns |
| `sed` | stream editor — find & replace |
| `awk` | parse and filter structured text |
| `xargs` | convert stdin lines into command arguments |
| `curl` | fetch URLs |
| `jq` | process JSON |
| `sort / uniq` | sort lines / remove duplicates |
| `wc -l` | count lines |

---

## Scripts

```bash
#!/bin/bash          # shebang — tells the OS what interpreter to use
set -euo pipefail    # strict mode: exit on error, undefined vars, pipe failures
```

- `$1`, `$@` — script arguments
- `$(cmd)` — command substitution (preferred over backticks)
- `&` — run a process in the background

---

## Things that confused me

<!-- Fill this in as you go through the exercises -->