---
name: understand-code
description: Build deep understanding of unfamiliar code by producing a learning guide with ordered reading paths, key concepts, and noteworthy details. Use when the user wants to understand a codebase, subsystem, or set of files — especially during onboarding, after an agent made changes, or before working in an unfamiliar area.
---

# Understand Code

Build genuine understanding of unfamiliar code. Produce a learning guide that teaches how the code works, not just what it does.

## When to use

- Onboarding onto a new codebase or subsystem
- Understanding code an agent just wrote or modified
- Getting oriented before making changes in an unfamiliar area
- When the user says "help me understand", "walk me through", "explain how this works", "what's going on in X"

Do not use when:

- The user wants a factual reference document
- The user wants to plan implementation
- The user wants to debug a specific problem

## Process

### 1. Calibrate

Before exploring, establish two things:

**What's the target?**

- Whole repo, a subsystem, specific files, or a recent diff/commit range
- If the user hasn't specified, ask

**What's the user's context?**

- New to the entire codebase, or familiar with some parts?
- What's their background? (helps calibrate what needs explaining vs. what they can infer)
- Are they trying to do something specific, or just building general understanding?

Keep this to one exchange — ask what you need, don't interrogate.

### 2. Reconnaissance

Explore broadly to build a mental model. Look at:

- File structure and organization
- Entry points and main flows
- Dependencies between components
- Configuration and environment
- Tests (they reveal intended behavior and edge cases)
- Git history for context on why things were built this way

The goal is NOT to document everything. It's to identify:

- **Key concepts** the user needs to grasp
- **Dependency order** between those concepts (what must you understand before something else makes sense?)
- **Conventions** that let the user predict code they haven't read yet
- **Non-obvious details** that would surprise or confuse someone new

### 3. Produce Learning Guide

Write a document structured for learning, not reference. Adapt depth based on the calibration step.

```md
# Understanding: {target}

**Context:** {what the user already knows, what they're trying to learn}

## The Big Picture

2-3 paragraphs that build a mental model. How should the user _think_
about this system? Use analogies where they genuinely help. Answer:
what does this do, why does it exist, and how is it structured at a
high level?

## Key Concepts

Ordered so each concept builds on the previous ones. Not every file or
function — just the ideas the user needs to internalize.

1. **Concept A** — what it is, why it exists
   See: `file:line`
2. **Concept B** (builds on A) — ...
   See: `file:line`

## Reading Order

Concrete sequence of files to read, and what to pay attention to in
each. This is NOT a list of every file — it's a curated path through
the code that builds understanding progressively.

1. **`path/to/entry.ts`** — Start here. This is the entry point.
   Notice how X pattern is used to Y.
2. **`path/to/next.ts`** — Read this after entry.ts. It shows how
   requests flow from the entry point to Z.

## Conventions & Patterns

"Once you know these, you can predict what unfamiliar code does."
These are the recurring patterns that make the codebase consistent.

- Pattern 1: description and example location
- Pattern 2: ...

## Noteworthy Details

Things that are non-obvious, clever, surprising, or potentially
confusing. The stuff that would bite you if you just skimmed.

- Detail 1 with `file:line` reference
- Detail 2 ...

## Improvement Opportunities

Things worth considering if the user plans to work in this area.
Not a code review — just patterns that stand out.

- Opportunity 1
- Opportunity 2
```

Adjust sections based on scope:

- For small targets (one file, a few functions), skip the full document format and just explain conversationally
- For diffs/changes, reframe: "What changed" → "Key concepts" → "Reading order of the changes" → "What to watch out for"
- Drop the Improvement Opportunities section if the user didn't ask for opinions

### 4. Interactive Follow-up

After presenting the guide, stay available for deeper exploration:

- "Explain X in more detail"
- "I don't understand the pattern in Y, walk me through an example"
- "What would break if I changed Z?"
- "Show me how data flows from A to B"

Treat this as a conversation with an experienced colleague, not a documentation lookup.

## Guidelines

- **Teach, don't just describe.** Explain _why_ things are the way they are, not just _what_ they are.
- **Order matters.** Present information in the order someone needs to learn it, not the order you discovered it.
- **Be opinionated.** Unlike research-codebase, this skill should highlight what's noteworthy — good patterns, surprising choices, potential issues.
- **Use `file:line` references** so the user can follow along in the actual code.
- **Adapt depth to context.** A senior engineer onboarding needs different explanations than someone learning the framework for the first time.
- **Prefer fewer concepts, well explained** over comprehensive but shallow coverage.
