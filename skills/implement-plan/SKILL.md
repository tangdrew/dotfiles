---
name: implement-plan
description: Execute an existing implementation plan phase by phase with verification between each phase. Use when the user has a plan document and wants to implement it, or says "implement the plan" or "execute the plan".
---

# Implement Plan

Execute an approved implementation plan phase by phase.

## Process

### 1. Read the Plan
- Read the referenced plan document thoroughly
- Identify all phases, success criteria, and risks
- Confirm understanding with the user before starting

### 2. Execute Phase by Phase

For each phase:

1. **Announce** what you're about to do
2. **Implement** the changes described in the phase
3. **Verify** using the phase's verification steps (run tests, lints, type checks)
4. **Report** results and any deviations from the plan
5. **Pause** for user confirmation before proceeding to the next phase

### 3. Handle Deviations
- If something doesn't work as planned, stop and explain
- Propose adjustments and get user approval before continuing
- Note deviations for the final summary

### 4. Final Verification
- Run through all success criteria from the plan
- Execute any automated checks (tests, build, lint)
- Report final status

## Rules
- **Never skip phases** or combine them without user approval
- **Always run verification** before moving to the next phase
- **Stop on failures** — don't push through broken states
- **Document deviations** from the original plan
- If the plan references specific files or patterns, verify they still exist before modifying
