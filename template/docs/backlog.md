# Project Backlog

This document contains pending work identified for the project.

The backlog provides a persistent record of work that has been identified but has not yet been completed.

## Purpose

The backlog helps the project:

* preserve pending work;
* prioritize future activities;
* avoid losing requirements or technical tasks;
* maintain visibility of project progress;
* provide persistent context for developers and AI assistants.

## Backlog Items

Each item SHOULD contain enough information to understand what needs to be done without relying on a previous conversation.

A recommended structure is:

```text
ID
Title
Description
Priority
Status
Context
Acceptance criteria
```

Example:

```markdown
## TASK-001 — Example task

**Priority:** Medium  
**Status:** Pending

### Description

Description of the work required.

### Context

Why this task exists and any relevant background.

### Acceptance Criteria

- Criterion one
- Criterion two
```

The example is illustrative. Projects MAY use another identifier convention when an existing project process already defines one.

## Status

A project MAY use statuses such as:

* Pending
* In Progress
* Blocked
* Completed
* Cancelled

The project SHOULD use a consistent status vocabulary.

## Priority

Projects MAY classify backlog items according to their needs.

A simple model is:

* Critical
* High
* Medium
* Low

Priority SHOULD reflect project impact and urgency rather than personal preference.

## Sources

Backlog items SHOULD identify their origin when useful.

Possible sources include:

* project requirements;
* user requests;
* technical discoveries;
* bugs;
* audits;
* architecture work;
* operational issues;
* security reviews.

## Acceptance Criteria

Tasks that result in a concrete implementation SHOULD have clear acceptance criteria whenever practical.

Acceptance criteria should describe the expected outcome rather than prescribe unnecessary implementation details.

## Keeping the Backlog Current

Completed work SHOULD be updated promptly.

Obsolete or cancelled items SHOULD remain documented when their history is useful.

The backlog SHOULD NOT become a historical dump of every action performed during development.

Completed implementation details belong in the appropriate project documentation, commits or ADRs.

## AI-Assisted Development

AI assistants SHOULD consult the backlog before starting significant project work.

When a new requirement or task is identified, the appropriate backlog item SHOULD be created or updated according to the project's established process.

AI assistants SHOULD NOT assume that an instruction given only in a conversation has become a permanent project requirement.

When a task changes the project architecture or represents a significant engineering decision, the corresponding ADR and architecture documentation SHOULD also be considered.

## Relationship with Other Documents

```text
backlog.md
    ↓
What needs to be done

roadmap.md
    ↓
Where the project is going

architecture.md
    ↓
How the system is structured

adr/
    ↓
Why important architectural decisions were made

current-state.md
    ↓
What actually exists today
```

These documents complement each other and SHOULD NOT duplicate the same information unnecessarily.

## Principle

> **If a task matters, it should exist somewhere persistent—not only in someone's memory or an AI conversation.**
