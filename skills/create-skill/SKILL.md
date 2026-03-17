---
name: create-skill
description: Create, revise, or refactor agent skills that are portable, activation-friendly, and easy to maintain. Use when the user wants to create a new skill, update an existing skill, improve a skill's trigger description, split a large skill into supporting files, or add lightweight validation for a skill library.
---

# Create Skill

Create or revise a skill as a spec-compliant skill folder centered on a concise `SKILL.md`, with optional supporting files only when they materially improve maintainability.

Optimize for: clear activation, narrow scope, portability, easy maintenance, and fit in a Git-backed skill library.

## Decision process

1. **Identify the job**: create / update / tighten activation / split / add scripts / convert ad-hoc instructions to skill
2. **Define the boundary**: what triggers it, what should NOT trigger it, global vs project-specific
3. **Choose structure**: default to just `SKILL.md`; add `references/`, `examples/`, or `scripts/` only when justified
4. **Draft `SKILL.md`**: concise, direct, easy for an agent to follow
5. **Validate**: description specific? scope narrow? main file concise? supporting files justified?

## Writing the description

The description is the most important part — it controls activation.

Pattern: `[What it does]. Use when [specific triggers].`

Good: `Produce safe database migration plans before schema changes are implemented. Use when the user asks to plan migrations, evaluate migration risk, or sequence schema and backfill work.`

Bad: `Helps with skills.` / `General development helper.`

Rules: be concrete, state capability first, include trigger conditions, keep narrow to avoid over-triggering.

## Template

```md
---
name: skill-name
description: What this skill does. Use when specific triggers indicate this skill is relevant.
---

# Skill Name

## When to use
- trigger 1
- trigger 2

Do not use when:
- non-trigger 1

## Goal
Short statement of the job.

## Instructions
1. Clarify if needed, but prefer reasonable assumptions.
2. Follow the core workflow.
3. Keep output scoped to the job.
4. Surface assumptions clearly.

## Output
Expected format or deliverables.
```

## When to split

Split when: main file is noisy, distinct workflows exist, bulk is reference material, or skill covers multiple jobs. Keep `SKILL.md` for activation + core workflow; move references and examples to subdirectories.

Don't split just for organization.

## When to add scripts

Only when they materially improve reliability: deterministic logic, repeated helper code, validation/formatting better as code, or important error handling. Skip if the agent can do it inline.

## Global vs project skill

**Global/personal**: general working style, meta-workflows, broad debugging/planning habits, reusable conventions.

**Project-specific**: depends on repo architecture, team conventions, framework-specific instructions, local processes.

## Naming

Short, specific, one-job-aligned. Prefer `create-skill`, `debug-logs`, `write-migration-plan`. Avoid `general-helper`, `do-everything`.

## Updating existing skills

Preserve the original job unless redesign is requested. Tighten broad descriptions, remove unnecessary detail, extract bulky references. If one skill does too much, recommend splitting. Briefly explain changes.

## Deliverables

1. The `SKILL.md` (and any justified supporting files)
2. A short note: what it does, why the description triggers correctly, assumptions made, global vs project recommendation

## Validation checklist

- [ ] Clear, narrow job
- [ ] Description states what + when, specific enough for correct activation
- [ ] `SKILL.md` is high-signal only
- [ ] Supporting files justified
- [ ] Fits in a Git-backed skill library
- [ ] Copyable result provided
