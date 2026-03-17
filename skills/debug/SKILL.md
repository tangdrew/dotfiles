---
name: debug
description: Investigate a problem in read-only mode by examining logs, state, git history, and code without making any edits. Use when the user wants to diagnose an issue, investigate a bug, understand what went wrong, or figure out why something is broken before fixing it.
---

# Debug Investigation

Investigate a problem without modifying any files. Read-only analysis mode.

## When to use
- Diagnosing bugs or unexpected behavior
- Understanding what went wrong before attempting a fix
- Investigating logs, state, or git history
- When the user says "investigate", "debug", "why is this broken", "what happened"

Do not use when:
- The user wants you to fix the issue (use this first to understand, then fix separately)

## Process

### 1. Understand the Problem
- Ask the user what they're seeing vs what they expect
- Identify the affected area of the codebase

### 2. Gather Evidence (read-only)
- **Logs:** Check relevant log files, service output, or error messages
- **Code:** Read the relevant source files and trace the logic
- **Git history:** Check recent changes to affected files (`git log`, `git blame`)
- **State:** Check configuration, environment, database state, running processes
- **Tests:** Read existing tests to understand expected behavior
- **Dependencies:** Check for version mismatches or breaking changes

### 3. Form Hypotheses
- Based on the evidence, propose likely root causes
- Rank by likelihood
- Identify what additional evidence would confirm or rule out each hypothesis

### 4. Report Findings

Present a clear summary:
- **Symptoms:** What's happening
- **Root cause:** Most likely explanation with supporting evidence
- **Evidence:** What you found that points to this conclusion
- **Suggested fix:** What to change (but don't change it yet)
- **Alternative hypotheses:** Other possibilities if the primary one is wrong

## Rules
- **Do NOT edit any files** — this is investigation only
- **Do NOT run destructive commands** (no restarts, no deletes, no state changes)
- Read-only commands only: `git log`, `git blame`, `git diff`, reading files, checking status
- Present findings clearly so the user can decide on next steps
