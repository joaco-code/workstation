# Project Documentation

This directory contains the documentation specific to the project.

Project documentation records the current state, architecture, decisions, integrations, plans and pending work required to understand and maintain the system.

## Purpose

The documentation provides persistent project knowledge that can be used by:

* developers;
* technical administrators;
* project stakeholders;
* AI assistants.

Documentation SHOULD remain synchronized with the implementation.

## Documentation Structure

The standard documents are:

| File                | Purpose                                           |
| ------------------- | ------------------------------------------------- |
| `architecture.md`   | Current system architecture                       |
| `current-state.md`  | Current implementation and project status         |
| `migration-plan.md` | Migration or transformation plan, when applicable |
| `roadmap.md`        | Planned evolution of the project                  |
| `backlog.md`        | Pending tasks and work items                      |
| `decisions.md`      | Summary of important project decisions            |
| `integrations.md`   | External systems and integrations                 |

Not every project requires all documents to contain information. Files MAY remain minimal when a particular subject is not applicable.

## Documentation Principles

### Source of Truth

Project-specific documentation is the source of truth for the project's current state and decisions.

Documentation SHOULD describe what is actually implemented rather than what is merely planned.

### Evidence

When documenting an existing system, information SHOULD be based on:

* source code;
* configuration;
* infrastructure;
* existing documentation;
* verified project behavior.

Assumptions SHOULD be identified as such.

### Synchronization

When a significant implementation change affects documented behavior or architecture, the corresponding documentation SHOULD be reviewed and updated.

### Historical Information

Historical information SHOULD be preserved when it helps explain the evolution of the project or the reasons behind current decisions.

Architecture decisions themselves SHOULD be documented in `adr/`.

## Relationship with Other Directories

```text
docs/
    Project knowledge and current state

adr/
    Architectural decisions and their rationale

references/
    External project references and environments

src/
    Application source code

tests/
    Automated tests

.claude/
    AI working context
```

## AI-Assisted Development

AI assistants SHOULD read the relevant documentation before making significant changes.

When an AI assistant discovers important project information that is not documented, it SHOULD identify the appropriate documentation file where that knowledge belongs.

The objective is to ensure that important project knowledge does not remain exclusively inside an AI conversation.

## Principle

> **If important project knowledge is only present in a conversation, it is not yet part of the project's permanent documentation.**
