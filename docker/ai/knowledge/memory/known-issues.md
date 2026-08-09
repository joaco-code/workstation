---
name: Known Issues Register
id: GS-KB-005
version: 1.0.0
status: Active
owner: Goethe-Schule Buenos Aires
applies_to:
  - Claude Code
  - Codex CLI
  - Future AI Assistants
last_review: 2026-08-03
---

# Known Issues Register

## 1. Purpose

This document records known technical issues, operational limitations and outstanding engineering tasks affecting the AI Development Platform.

Its purpose is to ensure visibility, traceability and consistent treatment of unresolved issues.

Known issues SHALL remain documented until they are resolved or explicitly retired.

---

# 2. Scope

This register includes:

- technical limitations;
- infrastructure gaps;
- security improvements;
- operational risks;
- pending engineering work;
- platform constraints.

This document SHALL NOT be used as a bug tracker.

---

# 3. Issue Status

Every issue SHALL include one of the following states.

| Status | Meaning |
|----------|---------|
| Open | Active issue |
| Monitoring | Under observation |
| Planned | Resolution planned |
| In Progress | Being addressed |
| Resolved | Closed |
| Accepted Risk | Intentionally accepted |

---

# 4. Severity

| Level | Description |
|---------|-------------|
| Critical | Immediate action required |
| High | Significant operational impact |
| Medium | Moderate impact |
| Low | Minor impact |
| Informational | Observation or future improvement |

---

# 5. Operational Risk

Each issue SHALL include an operational risk classification.

| Risk | Meaning |
|------|---------|
| Low | Minimal operational impact |
| Moderate | Manageable operational impact |
| High | Significant operational impact |
| Critical | Business continuity may be affected |

---

# 6. Issue Template

Every issue SHOULD follow the structure below.

```
Issue ID

Status

Severity

Operational Risk

Category

Description

Impact

Current Workaround

Planned Resolution

Owner (optional)
```

---

# 7. Current Issues

---

## GS-ISS-001

### Title

HTTPS not configured for Portainer

Status

Planned

Severity

Medium

Operational Risk

Moderate

Category

Infrastructure

Description

Portainer currently operates over HTTP inside the trusted local workstation.

TLS termination has not yet been implemented.

Impact

Browser security warnings.

Encrypted communication is not available.

Current Workaround

Operate only within the local development environment.

Planned Resolution

Implement reverse proxy with HTTPS support.

---

## GS-ISS-002

### Title

Automated Backup Strategy Pending

Status

Open

Severity

Medium

Operational Risk

High

Category

Operations

Description

Container data backups are currently performed manually.

No automated scheduling or validation exists.

Impact

Risk of data loss after infrastructure failures.

Current Workaround

Manual backup procedures.

Planned Resolution

Implement automated backup workflows.

---

## GS-ISS-003

### Title

Monitoring Stack Not Yet Implemented

Status

Planned

Severity

Low

Operational Risk

Low

Category

Observability

Description

Infrastructure monitoring has not yet been deployed.

Impact

Limited operational visibility.

Current Workaround

Manual verification.

Planned Resolution

Deploy monitoring stack.

---

## GS-ISS-004

### Title

AI Skills Library Under Construction

Status

Open

Severity

Informational

Operational Risk

Low

Category

AI Platform

Description

The Skills library has not yet been implemented.

Impact

AI assistants currently rely primarily on documentation rather than reusable executable skills.

Planned Resolution

Complete Stage 4 of the roadmap.

---

## GS-ISS-005

### Title

Codex CLI Integration Pending

Status

Planned

Severity

Informational

Operational Risk

Low

Category

AI Platform

Description

Codex CLI has not yet been integrated into the AI Development Platform.

Impact

The platform currently depends on Claude Code for AI-assisted engineering.

Planned Resolution

Implement the Codex roadmap after completion of the Claude Knowledge layer.

---

# 8. Review Process

Known issues SHOULD be reviewed periodically.

During each review an issue may be:

- updated;
- reprioritized;
- resolved;
- accepted as operational risk;
- superseded.

Historical traceability SHOULD be preserved.

---

# 9. Relationship with Other Documents

| Document | Purpose |
|----------|---------|
| project-memory.md | Current platform state |
| decisions.md | Engineering decisions |
| roadmap.md | Future direction |
| known-issues.md | Active technical issues |
| lessons-learned.md | Engineering experience |

---

# 10. References

Related Standards

- GS-KB-001 (Knowledge Memory Standard)
- GS-KB-002 (Project Memory)
- GS-KB-003 (Engineering Decisions Register)
- GS-KB-004 (Platform Roadmap Snapshot)

End of Document.