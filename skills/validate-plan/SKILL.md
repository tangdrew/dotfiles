---
name: validate-plan
description: Audit the implementation against the original plan, checking success criteria and identifying deviations. Use when the user wants to verify that an implementation matches its plan, or asks to validate or audit completed work.
---

# Validate Implementation Against Plan

Compare what was actually built against the original plan document.

## Process

### 1. Read the Plan
- Read the implementation plan document
- Extract all phases, expected changes, and success criteria

### 2. Audit Phase by Phase

For each phase in the plan:

- **Check file changes:** Were the expected files created/modified?
- **Check behavior:** Do the changes match what was described?
- **Check verification:** Run the phase's verification steps
- **Note deviations:** Document anything that differs from the plan

### 3. Run Success Criteria
- Go through each success criterion from the plan
- For automated checks (tests, build, lint), run them
- For manual criteria, assess based on code review
- Mark each as pass/fail with explanation

### 4. Generate Report

```md
# Validation Report: {plan title}

## Summary
{overall status: complete/partial/significant deviations}

## Phase Results
### Phase 1: {name}
- Status: {complete/partial/skipped}
- Deviations: {none or list}

### Phase 2: {name}
...

## Success Criteria
- [x] Criterion 1 — passed
- [ ] Criterion 2 — failed: {reason}

## Unplanned Changes
- {any changes made that weren't in the plan}

## Recommendations
- {any follow-up work needed}
```

## Rules
- Be objective — report what you find, not what you expect
- Run every automated check you can
- Flag unplanned changes (they may be fine, but should be noted)
