# Project Roadmap

This document describes the planned evolution of the project.

The roadmap provides a high-level view of where the project is going. It is not a detailed task list and SHOULD NOT duplicate the project backlog.

## Purpose

The roadmap helps communicate:

* major project objectives;
* planned capabilities;
* significant milestones;
* major phases of development;
* dependencies between initiatives;
* the expected direction of the project.

## Roadmap Principles

The roadmap SHOULD:

* reflect the actual priorities of the project;
* distinguish planned work from completed work;
* remain at a higher level than the backlog;
* avoid unnecessary implementation detail;
* be updated when project priorities change.

The roadmap MUST NOT be used to represent functionality as completed before it has actually been implemented and validated.

## Roadmap Structure

A roadmap MAY be organized into phases, milestones or initiatives.

A generic structure is:

```text
Current State
     │
     ▼
Phase 1 — Foundation
     │
     ▼
Phase 2 — Core Capabilities
     │
     ▼
Phase 3 — Integrations
     │
     ▼
Phase 4 — Validation
     │
     ▼
Phase 5 — Release
```

The actual phases MUST be defined according to the project.

## Milestones

Each significant milestone SHOULD include:

* name;
* objective;
* expected outcome;
* dependencies;
* status.

Example:

```markdown
## Milestone 1 — Foundation

**Status:** Planned

### Objective

Establish the technical foundation required for the next stage of development.

### Expected Outcome

The project has the required base architecture and development environment.

### Dependencies

- Architecture decision
- Development environment
```

The example is illustrative only.

## Status

A project MAY use statuses such as:

* Planned
* In Progress
* Blocked
* Completed
* Cancelled

The project SHOULD use a consistent status vocabulary.

## Completed Work

Completed milestones MAY remain in the roadmap to provide historical context.

Completed work MUST be clearly identified as completed.

A milestone SHOULD NOT be marked completed merely because its implementation has started.

Completion SHOULD be based on the project's defined acceptance criteria.

## Dependencies

When one roadmap initiative depends on another, document the dependency explicitly.

Example:

```text
Foundation
    ↓
Core Platform
    ↓
Integrations
    ↓
Production Release
```

Dependencies that represent individual tasks belong in `docs/backlog.md`.

## Relationship with Other Documents

The roadmap works together with the other project documents:

```text
roadmap.md
    ↓
Where the project is going

backlog.md
    ↓
What needs to be done

current-state.md
    ↓
What exists today

architecture.md
    ↓
How the system is structured

migration-plan.md
    ↓
How a major transition will be performed

adr/
    ↓
Why important architectural decisions were made
```

These documents SHOULD complement one another without duplicating the same information.

## Roadmap and Planning Changes

Significant changes to the project's direction SHOULD be documented.

When a change affects architecture or represents an important long-term technical decision, an ADR SHOULD be considered.

The roadmap SHOULD be updated when:

* priorities change;
* milestones are completed;
* major initiatives are added or removed;
* dependencies change;
* the target direction changes.

## AI-Assisted Development

AI assistants SHOULD consult the roadmap when determining the broader context of a requested task.

Claude SHOULD NOT:

* treat planned work as implemented;
* create work solely because it appears on a roadmap;
* change project priorities without explicit direction;
* replace the roadmap with a detailed task list.

When implementing roadmap work, Claude SHOULD identify the corresponding backlog items and relevant architectural decisions.

## Dates and Estimates

Dates SHOULD only be included when they are meaningful and supported by an actual project commitment or planning decision.

AI assistants MUST NOT invent deadlines, estimates or milestones.

If timing is uncertain, the roadmap SHOULD communicate sequence or dependency rather than fabricated dates.

## Principle

> **The roadmap describes direction and milestones; the backlog describes the work required to get there.**
