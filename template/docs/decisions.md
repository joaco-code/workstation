# Project Decisions

This document provides a concise summary of important decisions that affect the project.

Detailed architectural decisions SHOULD be documented as Architecture Decision Records in:

```text
adr/
```

This document acts as a convenient overview and SHOULD NOT replace the ADRs.

## Purpose

The purpose of this document is to provide a quick reference to significant project decisions, including:

* technical choices;
* architectural direction;
* infrastructure decisions;
* integration decisions;
* operational decisions;
* important project constraints.

It helps developers and AI assistants quickly understand decisions that may affect current work.

## Decision Register

Significant decisions SHOULD be listed in a concise table.

Recommended structure:

| ID      | Decision                       | Status   | Date       | Reference                |
| ------- | ------------------------------ | -------- | ---------- | ------------------------ |
| ADR-001 | Example architectural decision | Accepted | YYYY-MM-DD | `adr/ADR-001-example.md` |

The table is an index, not the full decision record.

## Decision Status

A project MAY use statuses such as:

* Proposed
* Accepted
* Rejected
* Superseded
* Deprecated

The status SHOULD reflect the current validity of the decision.

## What Belongs Here

A decision SHOULD be included when it has meaningful consequences for the project.

Examples include:

* selecting a database technology;
* selecting a framework;
* defining an integration strategy;
* choosing a deployment model;
* establishing an authentication approach;
* adopting an important architectural pattern;
* accepting a significant technical constraint.

Routine implementation choices do not normally need to be recorded here.

## What Does Not Belong Here

This document SHOULD NOT become:

* a task list;
* a backlog;
* a project history;
* a copy of the architecture document;
* a collection of implementation notes.

Use the appropriate project document instead:

```text
backlog.md
    Tasks and pending work

architecture.md
    Current system architecture

current-state.md
    Current implementation status

roadmap.md
    Planned project evolution

adr/
    Detailed architectural decisions
```

## Decision Changes

When an important decision changes, the change SHOULD be explicitly documented.

For architectural decisions:

1. identify the existing decision;
2. understand why it is no longer appropriate;
3. create or update the appropriate ADR according to the project's ADR process;
4. update this register;
5. update affected project documentation.

Historical decisions SHOULD NOT be silently rewritten when preserving the original reasoning is important.

## Decision Traceability

Important decisions SHOULD be traceable to their source when practical.

Possible sources include:

* requirements;
* technical evaluations;
* experiments;
* audits;
* security reviews;
* project constraints;
* stakeholder decisions;
* previous ADRs.

The goal is to preserve the reasoning behind important choices.

## AI-Assisted Development

AI assistants SHOULD review relevant decisions before proposing changes that could conflict with an established project direction.

Claude MUST NOT silently override an accepted architectural decision.

If a requested change conflicts with an existing decision, Claude SHOULD:

1. identify the conflict;
2. explain the affected decision;
3. determine whether the request requires a new decision;
4. update or create the appropriate ADR when necessary;
5. update this decision register.

AI assistants MUST NOT invent historical decisions or claim that a decision was previously approved without evidence.

## Principle

> **The decision register tells us what important choices were made; the ADR explains why.**
