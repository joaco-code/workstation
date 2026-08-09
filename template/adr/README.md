# Architecture Decision Records

This directory contains the **Architecture Decision Records (ADRs)** for this project.

ADRs document significant technical and architectural decisions made during the project lifecycle, including the context that led to the decision and its consequences.

## Purpose

ADRs provide a permanent record of decisions that affect the architecture, technology choices or long-term technical direction of the project.

They help ensure that future contributors—and AI assistants—can understand **why** a decision was made, not only what was implemented.

## When to Create an ADR

An ADR SHOULD be created when a decision:

* significantly affects the system architecture;
* introduces or changes a major technology;
* establishes an important integration pattern;
* changes a significant security or operational approach;
* has meaningful long-term consequences;
* resolves an important architectural alternative.

Routine implementation choices do not require an ADR.

## ADR Lifecycle

An ADR normally follows this lifecycle:

```text
Proposed
   ↓
Accepted
   ↓
Implemented
   ↓
Superseded / Deprecated
```

The status of an ADR MUST reflect its current validity.

## Naming

ADRs SHOULD use sequential numbering:

```text
ADR-001-short-description.md
ADR-002-short-description.md
ADR-003-short-description.md
```

The filename should remain stable after creation.

## Recommended Structure

Each ADR SHOULD contain:

1. Title
2. Status
3. Date
4. Context
5. Decision
6. Alternatives considered
7. Consequences

Additional sections MAY be added when useful.

## Relationship with Project Documentation

ADRs document **decisions**.

Other project documentation serves different purposes:

* `docs/architecture.md` describes the current architecture.
* `docs/roadmap.md` describes planned evolution.
* `docs/backlog.md` contains pending work.
* `references/` contains external project references.

An ADR should not become a general project documentation file.

## AI-Assisted Development

Claude and other AI assistants SHOULD read relevant ADRs before proposing changes that affect an area covered by an existing architectural decision.

AI assistants MUST NOT silently contradict an accepted ADR.

If a new requirement requires changing an existing architectural decision, a new ADR SHOULD be created or the existing decision should be explicitly superseded.

## Principle

> **Code describes what the system does. ADRs explain why important architectural decisions were made.**
