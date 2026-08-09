---
name: Engineering Standard
id: GS-ENG-001
version: 1.0.0
status: Active
owner: Goethe-Schule Buenos Aires
applies_to:
  - AI Development Platform
  - Claude Code
  - Codex CLI
last_review: 2026-08-03
---

# Engineering Standard

## 1. Purpose

This document defines the engineering standards that govern the AI Development Platform.

Its purpose is to ensure consistency, maintainability, security, reproducibility and long-term sustainability across all projects developed within this workstation.

These standards apply to humans and AI assistants equally.

---

# 2. Scope

This standard applies to:

- Source code
- Documentation
- Docker infrastructure
- Git repositories
- AI assistants
- Automation
- Architecture decisions
- Configuration files

---

# 3. Normative Language

The keywords below follow RFC 2119.

| Keyword | Meaning |
|----------|---------|
| MUST | Mandatory requirement |
| MUST NOT | Absolutely prohibited |
| SHOULD | Strong recommendation |
| SHOULD NOT | Strong recommendation against |
| MAY | Optional |

Unless otherwise stated, all requirements in this document are normative.

---

# 4. Engineering Principles

The following principles govern every engineering decision.

---

## ES-001 — Correctness First

### Requirement

Engineering decisions MUST prioritize:

1. Correctness
2. Security
3. Maintainability
4. Clarity
5. Performance
6. Speed

### Rationale

Long-term quality is preferred over short-term productivity.

### Verification

No implementation may sacrifice a higher priority to improve a lower one.

---

## ES-002 — Simplicity

### Requirement

Solutions SHOULD remain as simple as possible.

### Rationale

Simple systems are easier to understand, maintain and secure.

### Verification

Avoid unnecessary abstraction, complexity or duplication.

---

## ES-003 — Architecture Preservation

### Requirement

Every change MUST preserve architectural consistency.

### Rationale

Architecture is more valuable than isolated implementations.

### Verification

Changes SHALL respect documented architecture decisions.

---

## ES-004 — Documentation as Code

### Requirement

Documentation MUST evolve together with the implementation.

### Rationale

Outdated documentation creates technical debt.

### Verification

Relevant changes SHALL include documentation updates.

---

## ES-005 — Security by Design

### Requirement

Security MUST be considered during design.

### Verification

Implementations SHALL avoid introducing unnecessary risks.

---

## ES-006 — Reproducibility

### Requirement

Every environment SHOULD be reproducible.

### Verification

Configuration SHALL be stored as code whenever possible.

---

# 5. Repository Standards

## ES-101 — Repository Structure

Repositories MUST follow the documented architecture.

Ad hoc directory structures SHOULD NOT be introduced.

---

## ES-102 — Single Source of Truth

Knowledge MUST NOT be duplicated.

Documentation SHALL reference existing documents whenever possible.

---

## ES-103 — Modular Design

Projects SHOULD be organized into cohesive modules.

Each module SHOULD have a single responsibility.

---

# 6. Naming Standards

## ES-201 — Directories

Directory names MUST use lowercase.

Example:

```
docker/
shared/
stacks/
```

---

## ES-202 — Markdown Files

Standard Markdown filenames MUST follow common conventions.

Examples:

```
README.md
CHANGELOG.md
TODO.md
LICENSE
```

---

## ES-203 — Containers

Container names MUST be descriptive.

Example:

```
goethe-portainer
goethe-redis
goethe-sqlserver
```

---

## ES-204 — Networks

Docker networks MUST use descriptive names.

Example:

```
goethe-network
```

---

## ES-205 — Volumes

Volumes MUST clearly identify their purpose.

Example:

```
sqlserver-data
redis-data
```

---

# 7. Documentation Standards

## ES-301

Every major component MUST include a README.

---

## ES-302

Architecture decisions SHOULD be documented using ADRs.

---

## ES-303

Long procedures SHOULD be documented.

Knowledge MUST NOT remain only in conversations.

---

## ES-304

Documentation MUST remain synchronized with implementation.

---

# 8. Docker Standards

## ES-401

Each Docker stack MUST have a single responsibility.

---

## ES-402

Persistent data MUST be stored under:

```
~/docker/data
```

---

## ES-403

Shared resources SHOULD remain under:

```
~/docker/shared
```

---

## ES-404

Docker Compose files MUST remain independent whenever possible.

---

# 9. Git Standards

## ES-501

Git SHALL remain the source of truth.

---

## ES-502

Meaningful commit messages SHOULD be used.

Semantic commits are recommended.

---

## ES-503

Git history MUST NOT be rewritten without explicit approval.

---

## ES-504

Direct pushes to protected branches SHOULD be avoided.

---

# 10. Code Standards

## ES-601

Code MUST be readable.

---

## ES-602

Identifiers MUST use descriptive names.

---

## ES-603

Duplicated logic SHOULD be avoided.

---

## ES-604

Small, cohesive functions SHOULD be preferred.

---

## ES-605

Magic values SHOULD NOT appear in production code.

---

# 11. AI Standards

## ES-701

AI assistants MUST follow CLAUDE.md.

---

## ES-702

AI assistants MUST respect permissions.md.

---

## ES-703

AI assistants MUST NOT invent requirements.

---

## ES-704

AI assistants SHOULD explain trade-offs when relevant.

---

## ES-705

AI assistants SHOULD recommend improvements that increase engineering quality.

---

# 12. Security Standards

## ES-801

Secrets MUST NEVER be committed.

---

## ES-802

Credentials MUST remain outside repositories.

---

## ES-803

Environment variables SHOULD be used for sensitive configuration.

---

## ES-804

Least privilege SHOULD be preferred.

---

# 13. Quality Gates

Before considering work complete, verify:

- Documentation updated
- Architecture preserved
- Security validated
- No duplicated knowledge
- Naming conventions respected
- Reproducibility maintained
- Changes tested
- Technical debt minimized

---

# 14. Exceptions

Exceptions MAY exist only when:

- technically justified;
- documented;
- approved by the repository owner.

Temporary exceptions SHOULD include a plan for resolution.

---

# 15. References

This standard complements:

- CLAUDE.md
- settings.md
- permissions.md

Related documentation:

- Repository Architecture
- ADRs
- Security documentation

---

End of Standard.