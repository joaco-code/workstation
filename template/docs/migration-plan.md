# Migration Plan

This document describes a planned migration, modernization, replacement or major transformation of an existing system.

It is only applicable when the project requires a migration or significant transition from one state to another.

## Purpose

The migration plan provides a persistent view of:

* the current system;
* the target system;
* the reason for the migration;
* migration phases;
* dependencies;
* risks;
* validation requirements;
* rollback or recovery considerations.

The plan SHOULD be based on verified information about the current system.

## Migration Overview

Describe the migration at a high level.

```text
Current System
      │
      ▼
Assessment
      │
      ▼
Preparation
      │
      ▼
Implementation
      │
      ▼
Validation
      │
      ▼
Cutover
      │
      ▼
Target System
```

The actual migration flow MAY differ depending on the project.

## Current State

Describe the system being migrated.

Include, when applicable:

* technologies;
* application components;
* databases;
* integrations;
* infrastructure;
* users;
* operational dependencies;
* known limitations.

The current state SHOULD be consistent with:

```text
docs/current-state.md
```

Do not assume that undocumented components do not exist.

## Target State

Describe the intended result of the migration.

Clearly identify:

* target technologies;
* target architecture;
* target infrastructure;
* required integrations;
* expected operational model.

The target state is a plan, not evidence that the migration has already been completed.

## Migration Objectives

Define why the migration is being performed.

Typical objectives may include:

* replacing obsolete technology;
* improving reliability;
* improving security;
* reducing operational risk;
* improving scalability;
* consolidating systems;
* changing infrastructure;
* improving maintainability.

Objectives SHOULD be measurable whenever practical.

## Migration Phases

Break the migration into meaningful phases.

A generic structure is:

### Phase 1 — Assessment

Understand the existing system and identify dependencies, risks and unknowns.

### Phase 2 — Preparation

Prepare the target environment, architecture, tooling, data strategy and validation mechanisms.

### Phase 3 — Implementation

Build or migrate the target components incrementally.

### Phase 4 — Data Migration

Migrate or synchronize data when applicable.

Data migration SHOULD include validation of:

* completeness;
* integrity;
* consistency;
* relationships;
* critical business rules.

### Phase 5 — Validation

Validate the target system against the expected functionality and acceptance criteria.

Validation SHOULD include appropriate:

* automated tests;
* integration tests;
* security checks;
* performance checks;
* user acceptance testing.

### Phase 6 — Cutover

Move operational use from the current system to the target system.

The cutover procedure SHOULD define:

* responsible person;
* prerequisites;
* sequence of actions;
* validation;
* communication;
* rollback conditions.

### Phase 7 — Stabilization

Monitor the target system after cutover and resolve issues before considering the migration complete.

## Migration Strategy

Document the selected migration strategy.

Possible strategies include:

* Big Bang;
* phased migration;
* parallel operation;
* incremental replacement;
* strangler pattern;
* data-first migration;
* application-first migration.

The selected strategy SHOULD be justified when the choice has meaningful technical or operational consequences.

## Dependencies

Document dependencies that can affect the migration.

Examples:

* infrastructure;
* external services;
* identity systems;
* databases;
* APIs;
* vendor services;
* user availability;
* approvals;
* security requirements.

Dependencies SHOULD be identified before the affected migration phase begins.

## Risks

Document relevant migration risks.

Each significant risk SHOULD include:

* description;
* probability;
* impact;
* mitigation;
* owner, when applicable.

Example:

```text
Risk: Data inconsistency during migration

Impact: High

Mitigation:
- Perform validation before cutover.
- Maintain a verified backup.
- Compare source and target datasets.
```

## Rollback and Recovery

Every migration that can affect production SHOULD define how the previous operational state can be recovered.

Depending on the migration, this MAY include:

* database backup;
* infrastructure rollback;
* application rollback;
* configuration rollback;
* DNS or routing rollback;
* restoration of the previous system.

Rollback criteria SHOULD be defined before the cutover begins.

## Validation and Acceptance

Define the criteria that determine whether the migration is successful.

Examples:

* all required functionality operates correctly;
* required data has been migrated;
* integrations operate correctly;
* security requirements are satisfied;
* performance requirements are satisfied;
* users have completed acceptance testing.

Migration completion SHOULD be based on evidence rather than assumption.

## Migration Status

The project SHOULD maintain a clear migration status.

Example:

```text
Not Started
Assessment
Preparation
In Progress
Validation
Ready for Cutover
Cutover
Stabilization
Completed
Blocked
Cancelled
```

Projects MAY use a different status model when required.

## Documentation During Migration

Migration work SHOULD update the relevant project documentation.

At minimum, consider:

```text
docs/current-state.md
docs/architecture.md
docs/backlog.md
docs/roadmap.md
adr/
```

When migration decisions have significant architectural consequences, an ADR SHOULD be created.

## AI-Assisted Development

AI assistants SHOULD NOT begin implementing a migration based only on the target state.

Before proposing migration changes, Claude SHOULD:

1. inspect the current implementation;
2. review the current-state documentation;
3. identify dependencies;
4. review relevant ADRs;
5. identify unknowns;
6. understand the migration strategy;
7. identify validation and rollback requirements.

AI assistants MUST distinguish between:

* verified current state;
* planned target state;
* assumptions;
* unresolved questions.

Claude SHOULD NOT invent missing migration details.

## Principle

> **A migration plan describes a controlled transition from verified reality to an explicitly defined target state.**
