# Current State

This document describes the current state of the project.

It should represent what actually exists at the time of the last review, based on the project source code, configuration, infrastructure and verified documentation.

It MUST NOT present planned or assumed functionality as implemented.

## Purpose

The current-state document provides a concise snapshot of the project at a specific point in time.

It helps developers and AI assistants understand:

* what currently exists;
* what is operational;
* what is incomplete;
* what is known to be problematic;
* what is currently being changed;
* what still requires verification.

## Last Review

```text
Review date: YYYY-MM-DD
Reviewed by: <name or role>
```

The review date SHOULD be updated whenever the document is substantially reviewed.

## System Status

Describe the overall state of the project.

Example:

```text
Status: Active development
Environment: Development
Production: Active
Migration: In progress
```

Projects SHOULD use statuses that accurately describe their own situation.

## Current Implementation

Describe the functionality that is currently implemented.

This section SHOULD focus on observable reality rather than intended behavior.

Recommended categories include:

### Application

Describe the current application components and their responsibilities.

### Data

Describe the databases, storage systems and relevant data structures currently in use.

### Infrastructure

Describe the infrastructure currently required to operate the system.

### Integrations

Describe external systems currently connected to the project.

### Authentication and Authorization

Describe the authentication and authorization mechanisms currently implemented.

### Deployment

Describe how the current version is built and deployed.

## Known Issues

Document known problems that currently affect the system.

Each issue SHOULD indicate, when relevant:

* description;
* impact;
* affected component;
* current workaround;
* related backlog item;
* related ADR.

Do not move unresolved issues into the backlog merely to make this document appear cleaner. The current-state document should accurately reflect relevant known problems.

## Incomplete Work

Describe functionality or migration work that has started but is not yet complete.

Clearly distinguish:

```text
Implemented
Partially implemented
Planned
Unknown / requires verification
```

This distinction is particularly important during migrations and major refactoring.

## Current Limitations

Document relevant limitations of the current implementation.

Examples include:

* scalability limitations;
* unsupported scenarios;
* manual operational steps;
* technical debt;
* temporary workarounds;
* known compatibility constraints.

## Verification Required

When information about the system is uncertain, record it explicitly rather than presenting an assumption as fact.

Example:

```text
- Production configuration has not yet been verified.
- The current database schema requires confirmation.
- Deployment behavior requires validation in the development environment.
```

Unverified information SHOULD be tracked until it can be confirmed.

## Current vs Target

If the project has a target architecture or future implementation, keep it separate from the current state.

```text
Current State
    ↓
What exists today

Target State
    ↓
What the project intends to achieve
```

Target architecture SHOULD be documented in `docs/architecture.md` and planned work in `docs/roadmap.md` or `docs/migration-plan.md`.

## Evidence

Important statements SHOULD be traceable to project evidence when practical.

Possible evidence includes:

* source files;
* configuration;
* infrastructure;
* deployment logs;
* tests;
* project documentation;
* verified system behavior.

When evidence is unavailable, mark the information as unknown or requiring verification.

## AI-Assisted Development

AI assistants MUST treat this document as a description of the current project state, not as a list of instructions.

Before making significant changes, Claude SHOULD:

1. review the current state;
2. inspect the relevant implementation;
3. verify important assumptions;
4. identify discrepancies between documentation and code;
5. update this document when the project's actual state changes significantly.

Claude MUST NOT assume that a documented feature exists simply because it is mentioned in a roadmap, migration plan or target architecture.

## Maintenance

This document SHOULD be updated after significant changes such as:

* architecture changes;
* major feature implementation;
* migrations;
* infrastructure changes;
* deployment changes;
* discovery of important system limitations.

The document SHOULD remain concise enough to function as a reliable snapshot rather than becoming a complete project history.

## Principle

> **Current state describes what exists—not what we wish existed.**
