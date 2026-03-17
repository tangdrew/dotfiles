---
name: create-handoff
description: Create a handoff document to transfer work context to another session or agent. Use when the user wants to save progress for later, hand off work, create a session summary, or prepare context for a new session to continue.
---

# Create Handoff

Write a concise handoff document that captures enough context for another session (or future you) to continue the work.

## When to use
- Ending a session with work still in progress
- Handing off to another agent or session
- User says "save progress", "create handoff", "I'll continue later"

## Process

### 1. Assess Current State
- Review what was accomplished in this session
- Run `git status` and `git log --oneline -5` to capture code state
- Identify what's done, what's in progress, and what's next

### 2. Write the Handoff

Create the document at a path agreed with the user (default: `/tmp/handoff-{date}-{description}.md`).

```md
# Handoff: {concise description}

**Date:** {date and time}
**Branch:** {current branch}
**Commit:** {current commit hash}

## Task
What we were working on and its current status (completed / in progress / planned).

## Recent Changes
Files modified in this session with brief descriptions.
Use `file:line` references.

## Learnings
Important discoveries: patterns, root causes, gotchas, or context someone continuing this work needs to know.

## Artifacts
Exhaustive list of files produced or updated (plans, configs, new source files).

## Next Steps
Ordered list of what to do next to continue this work.

## Notes
Anything else useful: relevant file locations, open questions, things to watch out for.
```

### 3. Confirm
- Show the user the handoff document
- Tell them how to resume: provide the file path

## Rules
- **More information, not less.** Include both high-level objectives and low-level details.
- **Be precise.** Use `file:line` references, not vague descriptions.
- **Avoid large code blocks.** Reference files instead of inlining code.
- **Include learnings.** The most valuable part of a handoff is what you figured out that isn't obvious from the code.
