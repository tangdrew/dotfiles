---
name: research-codebase
description: Conduct deep, structured research into a codebase and produce a written research document. Use when the user wants to understand how something works, investigate a system, document architecture, or explore unfamiliar code before making changes.
---

# Research Codebase

Conduct thorough codebase research and produce a structured document of findings.

## When to use
- Understanding how a system or feature works before changing it
- Investigating unfamiliar parts of the codebase
- Documenting architecture or data flow
- Answering "how does X work?" questions that require deep exploration

## Philosophy
**Be a documentarian, not a critic.** The goal is to understand and record how things work today — not to suggest improvements or refactors. Capture the system as it is.

## Process

### 1. Define Scope
- Clarify what specifically needs to be researched
- Set boundaries to avoid scope creep
- Identify the key questions to answer

### 2. Explore
- Search for relevant files, types, and entry points
- Trace data flow and control flow through the system
- Read tests to understand expected behavior
- Check git history for context on why things were built this way
- Look at configuration, environment variables, and dependencies

### 3. Document Findings

Write a research document with this structure:

```md
# Research: {topic}

**Date:** {date}
**Scope:** {what was investigated}

## Overview
Brief summary of what this system/feature does.

## Architecture
How the pieces fit together. Include key files and their roles.

## Data Flow
How data moves through the system, step by step.

## Key Files
- `path/to/file.ext` — what it does and why it matters
- `path/to/other.ext` — ...

## Patterns & Conventions
Existing patterns this code follows that new changes should respect.

## Dependencies
External services, libraries, or internal systems this depends on.

## Open Questions
Things that remain unclear or need further investigation.
```

### 4. Review
- Share findings with the user
- Clarify any open questions
- Confirm the research answers the original questions

## Rules
- **Follow the code, not your assumptions.** Read what's actually there.
- **Use file:line references** so findings are easy to verify
- **Record what you don't understand** in Open Questions rather than guessing
- **Don't suggest changes** unless specifically asked — this is research, not a code review
