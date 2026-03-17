---
name: create-plan
description: Create a detailed implementation plan through interactive research and discussion before writing code. Use when the user wants to plan a feature, design an approach, create a technical plan, or think through implementation before coding.
---

# Create Implementation Plan

Collaboratively create a detailed, actionable implementation plan before writing any code.

## When to use
- Non-trivial features or changes
- Work that spans multiple files or systems
- When the user says "plan", "design", "think through", or "how should we implement"

Do not use when:
- Simple one-file changes
- Bug fixes with obvious solutions

## Process

### 1. Gather Context
- Read any referenced tickets, issues, or docs
- Ask clarifying questions about scope, constraints, and goals
- Identify what "done" looks like

### 2. Research & Discovery
- Explore the codebase to understand existing patterns and architecture
- Identify files and systems that will be affected
- Look for similar implementations to follow as precedent
- Note potential conflicts or risks

### 3. Propose Approaches
- Present 2-3 possible approaches with tradeoffs
- For each approach, note: complexity, risk, alignment with existing patterns
- Make a recommendation with reasoning
- Discuss with the user until alignment is reached

### 4. Write the Plan

Write the plan to a file the user can reference later. Use this structure:

```md
# Implementation Plan: {title}

## Goal
One-paragraph summary of what we're building and why.

## Approach
The selected approach and why it was chosen over alternatives.

## Phases

### Phase 1: {name}
**Files:** list of files to create/modify
**Changes:**
- Specific change 1
- Specific change 2
**Verification:** how to confirm this phase works

### Phase 2: {name}
...

## Success Criteria
- [ ] Criterion 1
- [ ] Criterion 2

## Risks & Mitigations
- Risk 1 → Mitigation
- Risk 2 → Mitigation

## Out of Scope
Things explicitly not included in this plan.
```

### 5. Review
- Walk through the plan with the user
- Incorporate feedback
- Confirm the plan is ready for implementation

## Guidelines
- **Be skeptical of your first instinct.** Research the codebase before proposing solutions.
- **Be interactive.** Ask questions rather than making assumptions.
- **Be practical.** Plans should be directly executable, not theoretical.
- **Prefer small phases.** Each phase should be independently verifiable.
- **Follow existing patterns.** Don't introduce new paradigms unless justified.
