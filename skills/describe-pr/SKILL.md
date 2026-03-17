---
name: describe-pr
description: Generate a comprehensive PR description by analyzing the diff, commits, and changes, then update the PR on GitHub. Use when the user asks to describe a PR, write a PR description, or fill out PR details.
---

# Generate PR Description

Analyze a pull request's changes and generate a thorough, structured description.

## Steps

1. **Identify the PR:**
   - Check if the current branch has a PR: `gh pr view --json url,number,title,state 2>/dev/null`
   - If no PR exists, list open PRs: `gh pr list --limit 10 --json number,title,headRefName,author`
   - Ask the user which PR if ambiguous

2. **Gather PR information:**
   - Get the full diff: `gh pr diff {number}`
   - Get commit history: `gh pr view {number} --json commits`
   - Get base branch: `gh pr view {number} --json baseRefName`
   - Get metadata: `gh pr view {number} --json url,title,number,state`

3. **Analyze changes thoroughly:**
   - Read through the entire diff carefully
   - For context, read any files referenced but not shown in the diff
   - Understand the purpose and impact of each change
   - Identify user-facing changes vs internal implementation details
   - Look for breaking changes or migration requirements

4. **Generate the description using this template:**

   ```md
   ## What problem does this solve?

   ## What user-facing changes are included?

   ## How it's implemented

   ## How to verify

   ## Changelog entry
   ```

   - Be specific about problems solved and changes made
   - Focus on user impact where relevant
   - Include technical details in the implementation section
   - For verification: if you can run commands (tests, lints), run them and report results

5. **Update the PR:**
   - Write to `/tmp/pr_{number}_description.md`
   - Update via: `gh pr edit {number} --body-file /tmp/pr_{number}_description.md`
   - Confirm success

## Rules
- Be thorough but concise — descriptions should be scannable
- Focus on the "why" as much as the "what"
- Include breaking changes or migration notes prominently
- If the PR touches multiple components, organize accordingly
