---
name: Platform Settings Standard
id: GS-SET-001
version: 1.0.0
status: Active
owner: Goethe-Schule Buenos Aires
applies_to:
  - AI Development Platform
last_review: 2026-08-03
---

# Platform Settings Standard

## 1. Purpose

This document records the strategic configuration decisions that define the behavior of the AI Development Platform.

Unlike implementation details, these settings are intended to remain stable over time and provide a consistent engineering experience.

Configuration values that change frequently belong to the implementation, not to this document.

---

# 2. Scope

This standard defines:

- Engineering philosophy
- Default operating mode
- AI behavior
- Platform defaults
- Technology decisions
- Configuration governance

---

# 3. Engineering Mode

## SET-001

### Setting

Engineering Excellence

### Description

The platform prioritizes engineering quality over development speed.

All AI assistants SHALL optimize for long-term sustainability.

---

## SET-002

### Default Decision Order

Engineering decisions SHALL follow this priority:

1. Correctness
2. Security
3. Maintainability
4. Clarity
5. Performance
6. Speed

---

## SET-003

### Documentation Strategy

Documentation is treated as a first-class engineering artifact.

Every significant implementation SHOULD be accompanied by documentation updates.

---

# 4. AI Configuration

## SET-101

### Default Interaction Mode

Confirmation Required

AI assistants SHALL request confirmation before performing operations that modify infrastructure, data or repository history.

---

## SET-102

### Assistant Role

The default assistant role is:

- Software Architect
- Senior Engineer
- DevSecOps Specialist
- Technical Reviewer
- Documentation Engineer

The assistant SHALL adapt its level of detail to the task.

---

## SET-103

### Recommendation Policy

AI assistants SHOULD recommend better engineering solutions whenever appropriate.

The final decision always belongs to the repository owner unless security or data integrity is compromised.

---

# 5. Language Configuration

## SET-201

Documentation:

Spanish

---

## SET-202

Technical discussion:

Spanish

---

## SET-203

Source code:

English

---

## SET-204

Identifiers:

English

---

## SET-205

Comments inside source code:

English

---

# 6. Repository Configuration

## SET-301

Repository structure SHALL follow the documented architecture.

---

## SET-302

The repository SHALL maintain a single source of truth.

---

## SET-303

Knowledge SHALL remain modular.

---

# 7. AI Platform Configuration

## SET-401

Permanent AI knowledge SHALL be organized as:

```
ai/
```

---

## SET-402

Global assistant context SHALL be maintained in:

```
core/CLAUDE.md
```

---

## SET-403

Engineering standards SHALL be maintained in:

```
core/conventions.md
```

---

## SET-404

Assistant permissions SHALL be maintained in:

```
core/permissions.md
```

---

## SET-405

Reusable knowledge SHALL remain under:

```
knowledge/
```

---

## SET-406

Executable AI components SHALL remain under:

```
execution/
```

---

# 8. Docker Configuration

## SET-501

Each Docker Compose project SHALL implement a single functional responsibility.

---

## SET-502

Persistent data SHALL remain under:

```
~/docker/data
```

---

## SET-503

Infrastructure SHALL be managed using Docker Compose.

---

## SET-504

Shared resources SHALL remain under:

```
~/docker/shared
```

---

# 9. Documentation Configuration

## SET-601

Architecture decisions SHOULD be documented.

---

## SET-602

Repository documentation SHALL be written in Markdown.

---

## SET-603

Documentation SHALL evolve together with implementation.

---

# 10. Governance

Configuration changes affecting the platform SHALL:

- be reviewed;
- be documented;
- remain backward compatible whenever possible.

Breaking changes SHOULD include a migration strategy.

---

# 11. Versioning

This document follows semantic versioning.

Major versions indicate platform-level configuration changes.

Minor versions introduce compatible improvements.

Patch versions correct documentation or clarify existing settings.

---

# 12. References

Related standards:

- CLAUDE.md
- GS-ENG-001 (Engineering Standard)
- GS-PRM-001 (Permissions Standard)

End of Standard.