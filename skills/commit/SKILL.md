---
name: commit
description: Create focused, atomic git commits with user approval. Use when the user asks to commit changes, save progress, or create a commit for current work.
---

# Commit Changes

Create git commits for changes made during this session.

## Process

1. **Assess what changed:**
   - Review the conversation history and understand what was accomplished
   - Run `git status` to see current changes
   - Run `git diff` to understand the modifications
   - Consider whether changes should be one commit or multiple logical commits

2. **Plan your commit(s):**
   - Identify which files belong together
   - Draft clear, descriptive commit messages
   - Use imperative mood ("Add feature" not "Added feature")
   - Focus on *why* the changes were made, not just what

3. **Present your plan to the user:**
   - List the files you plan to add for each commit
   - Show the commit message(s) you'll use
   - Ask: "I plan to create [N] commit(s) with these changes. Shall I proceed?"

4. **Execute upon confirmation:**
   - Use `git add` with specific files (never use `-A` or `.`)
   - Create commits with your planned messages
   - Show the result with `git log --oneline -n [number]`

## Rules
- Group related changes together
- Keep commits focused and atomic when possible
- Never commit files that look auto-generated, temporary, or unrelated to the work
- Never commit secrets, credentials, or `.env` files
