---
name: New Project
id: GS-WF-101
version: 1.0.0
status: Approved
category: Development
owner: Platform Engineering
last_review: 2026-08-06
---

# New Project

## 1. Purpose

This workflow defines the standard process for creating a new project within the AI Development Platform.

Its objective is to ensure that every project is created following a consistent engineering process, independent of the implementation technology.

Projects SHALL conform to the platform architecture, engineering conventions and governance model.

---

# 2. Scope

This workflow applies to every new software project developed inside the platform, including:

- backend services;
- frontend applications;
- APIs;
- automation services;
- AI components;
- infrastructure projects;
- supporting utilities.

Technology-specific implementation details are documented separately.

---

# 3. Guiding Principles

Every project SHALL be:

- reproducible;
- version controlled;
- documented;
- maintainable;
- secure by design;
- aligned with platform conventions.

Projects SHOULD be created with future maintenance in mind rather than immediate implementation speed.

---

# 4. Project Lifecycle

Every project follows the same lifecycle.

```text
Need

↓

Analysis

↓

Architecture

↓

Repository Creation

↓

Implementation

↓

Documentation

↓

Validation

↓

Release

↓

Maintenance
```

No implementation should begin before the project purpose has been defined.

---

# 5. Project Definition

Before creating a repository, the following information SHALL be available.

## Business Purpose

Define:

- problem statement;
- expected outcome;
- stakeholders.

---

## Technical Scope

Identify:

- project boundaries;
- responsibilities;
- dependencies;
- external integrations.

---

## Technology Selection

Choose technologies according to the platform standards.

Technology decisions SHALL be documented when they introduce new dependencies or architectural changes.

---

# 6. Repository Creation

Every project SHALL have its own Git repository.

The repository SHOULD contain, at minimum:

```text
README.md
.gitignore
LICENSE (when applicable)
```

The repository SHALL be version controlled from the beginning.

---

# 7. Documentation

Every project SHALL include basic documentation before implementation grows.

Minimum documentation includes:

- project description;
- architecture overview;
- setup instructions;
- configuration requirements.

Documentation SHALL evolve together with the project.

---

# 8. Security

Before implementation begins:

- secrets SHALL NOT be committed;
- credentials SHALL remain externalized;
- dependencies SHOULD originate from trusted sources.

Security considerations SHALL be addressed from the first iteration.

---

# 9. Validation

Before a project is considered operational:

- repository exists;
- documentation exists;
- technology stack is defined;
- dependencies are identified;
- development environment is reproducible.

---

# 10. Completion Criteria

A project is considered successfully created when:

- objectives are documented;
- repository exists;
- documentation is available;
- architecture is defined;
- development can begin without ambiguity.

---

# 11. Related Documents

Core

- CLAUDE.md
- conventions.md
- permissions.md

Knowledge

- Architecture
- Technologies
- Security

Related Workflows

- New Stack
- New Service
- Dependency Update
- Release Process

---

# 12. Continuous Improvement

Project creation practices SHALL evolve as the platform matures.

Improvements SHOULD prioritize:

- reproducibility;
- simplicity;
- maintainability;
- engineering quality.

End of Document.