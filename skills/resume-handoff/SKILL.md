---
name: resume-handoff
description: Resume work from a handoff document created by a previous session. Use when the user provides a handoff file, asks to continue previous work, or wants to pick up where a prior session left off.
---

# Resume from Handoff

Pick up work from a handoff document written by a previous session.

## Process

### 1. Read the Handoff
- Read the provided handoff document thoroughly
- Note the branch, commit, task status, and next steps

### 2. Validate State
- Check the current branch matches the handoff: `git branch --show-current`
- Check if the commit in the handoff is in the current history: `git log --oneline -10`
- Verify referenced files still exist and haven't changed unexpectedly
- If state has diverged, inform the user before proceeding

### 3. Gather Additional Context
- Read the key files mentioned in the handoff
- Review any artifacts or plan documents referenced
- Check git log for changes since the handoff was written
- If referenced plans or research docs exist, read them

### 4. Create Action Plan
- Based on the "Next Steps" from the handoff, create a concrete plan
- Confirm the plan with the user before starting
- Begin implementation

## Rules
- **Validate before assuming.** The codebase may have changed since the handoff.
- **Read referenced files.** Don't rely solely on the handoff's descriptions.
- **Confirm with the user** before starting work — they may have new context or changed priorities.
- Treat the handoff as a starting point, not gospel. Use your own judgment if things have changed.
