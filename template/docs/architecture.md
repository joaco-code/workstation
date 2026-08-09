# Project Architecture

This document describes the architecture of the project as it currently exists or is intentionally being designed.

It is project-specific and SHOULD be updated when significant architectural changes are introduced.

## Purpose

The purpose of this document is to provide a clear technical overview of:

* system components;
* application boundaries;
* data flows;
* external dependencies;
* infrastructure;
* deployment model;
* important architectural constraints.

It should allow a developer or AI assistant to understand the system without having to reconstruct the entire architecture from source code.

## Current Architecture

The current architecture SHOULD be documented here using the components that actually exist in the project.

When the project is undergoing migration or major architectural change, clearly distinguish between:

* **Current architecture** — what is implemented and operating.
* **Target architecture** — what the project intends to become.

Do not present planned components as implemented components.

## Architecture Overview

Projects SHOULD document their main components using a structure similar to:

```text
┌─────────────────────┐
│       Users         │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│      Frontend       │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│       Backend       │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│      Database       │
└─────────────────────┘
```

The diagram MUST be adapted to the actual project.

## Components

Each significant component SHOULD be documented with:

* name;
* purpose;
* technology;
* responsibility;
* dependencies;
* communication mechanism.

Example:

| Component      | Technology | Responsibility    |
| -------------- | ---------- | ----------------- |
| Frontend       | React      | User interface    |
| Backend        | .NET       | Application logic |
| Database       | SQL Server | Persistent data   |
| Authentication | OAuth      | User identity     |

The example above is illustrative only. Project documentation MUST reflect the actual implementation.

## Data Flow

Important data flows SHOULD be documented.

For example:

```text
User
 ↓
Frontend
 ↓
API
 ↓
Application Logic
 ↓
Database
```

External integrations SHOULD be represented when they are part of the system's normal operation.

## External Systems

External dependencies SHOULD be documented separately from internal components.

Examples include:

* cloud services;
* identity providers;
* APIs;
* databases;
* third-party platforms;
* messaging systems;
* storage systems.

Detailed external references SHOULD be maintained in:

```text
references/
```

## Infrastructure

The infrastructure required to run the project SHOULD be documented here at an architectural level.

This MAY include:

* hosting;
* compute;
* networking;
* databases;
* storage;
* containers;
* CI/CD;
* monitoring.

Infrastructure-specific operational procedures SHOULD be documented separately.

## Deployment Architecture

The project SHOULD document how software moves from development to production.

For example:

```text
Developer
   ↓
Git
   ↓
CI
   ↓
Build
   ↓
Tests
   ↓
Deployment
   ↓
Environment
```

The diagram MUST reflect the actual project workflow.

## Architectural Constraints

Important constraints SHOULD be recorded here.

Examples include:

* required technologies;
* security requirements;
* compatibility requirements;
* infrastructure restrictions;
* performance requirements;
* regulatory requirements;
* integration constraints.

Architectural decisions and their rationale SHOULD be recorded in `adr/`.

## Current vs Target Architecture

When architecture is evolving, use explicit sections:

### Current Architecture

Describe what exists today.

### Target Architecture

Describe the intended future architecture.

### Migration Considerations

Describe the major changes required to move from the current architecture to the target architecture.

This separation prevents planned architecture from being mistaken for implemented functionality.

## Architecture Changes

Significant architectural changes SHOULD:

1. be discussed before implementation;
2. be documented;
3. have an ADR when the decision has meaningful long-term consequences;
4. update this document after implementation.

## AI-Assisted Development

AI assistants MUST understand the current architecture before making significant architectural changes.

Before modifying an architectural component, Claude SHOULD:

1. read this document;
2. inspect the relevant implementation;
3. review related ADRs;
4. identify affected integrations;
5. verify assumptions against the actual code.

AI assistants SHOULD NOT infer that a target architecture is already implemented merely because it appears in documentation.

## Principle

> **The architecture document describes reality first and intention second.**
