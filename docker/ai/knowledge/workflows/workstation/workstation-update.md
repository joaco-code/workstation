---
name: Workstation Update
id: GS-WF-002
version: 1.0.0
status: Approved
category: Workstation
owner: Platform Engineering
last_review: 2026-08-06
---

# Workstation Update

## 1. Purpose

This workflow defines the standard procedure for updating the AI Development Platform workstation.

Its objective is to keep the workstation secure, supported and operational while minimizing the risk of introducing regressions.

Updates SHALL be performed in a controlled and verifiable manner.

---

# 2. Scope

This workflow applies to:

- operating system updates;
- development tools;
- Docker components;
- AI tooling;
- platform utilities.

It does not cover application-specific updates or database migrations.

---

# 3. Update Principles

The workstation SHALL follow these principles:

- update deliberately, never automatically;
- validate after every significant change;
- update one technology at a time whenever practical;
- maintain reproducibility;
- document major version changes.

Major upgrades SHOULD be scheduled and validated separately.

---

# 4. Prerequisites

Before starting:

- review release notes for the component being updated;
- ensure the workstation is in a healthy state;
- commit or back up any important work in progress;
- ensure Docker containers are not executing critical tasks.

---

# 5. Recommended Update Order

Updates SHOULD follow this order.

## Phase 1 — Windows

Update the Windows operating system.

If required:

- reboot Windows;
- verify WSL starts correctly.

Reference:

- 01-Windows.md

---

## Phase 2 — WSL2

Update the Linux environment.

Reference:

- 02-WSL.md

Objective:

Ensure the development environment remains current.

---

## Phase 3 — Docker

Update Docker Desktop (or Docker Engine).

Reference:

- 05-Docker.md

Verify:

- Docker daemon starts correctly.
- Existing containers remain operational.

---

## Phase 4 — Development Tools

Review and update, when appropriate:

- Git
- GitHub CLI
- Node.js
- npm
- pnpm
- Python
- Azure CLI

Updates SHOULD prioritize stability over adopting the newest available release.

---

## Phase 5 — AI Tooling

Review updates for:

- Claude Code
- Codex CLI

Major version upgrades SHOULD be reviewed before installation.

References:

- 09-Claude-Code.md
- 10-Codex.md

---

# 6. Post-Update Validation

After completing updates:

Execute the official workstation health check.

```bash
~/scripts/check-workstation.sh
```

Verify:

- required tools are detected;
- Docker is operational;
- expected containers are running;
- Docker networks are available.

The workstation SHALL only be considered updated after a successful health check.

---

# 7. Rollback Strategy

If an update introduces instability:

1. Identify the affected component.
2. Restore the previous supported version whenever feasible.
3. Repeat the health check.
4. Record the incident in the project documentation.

Rollback procedures SHOULD prioritize restoring workstation operability.

---

# 8. Operational Notes

Minor updates may be grouped during routine maintenance.

Major platform upgrades SHOULD be performed individually to simplify troubleshooting.

Whenever a breaking change is introduced, related documentation SHALL be updated before the workstation is considered compliant.

---

# 9. Operational Frequency

Recommended cadence:

| Component | Frequency |
|-----------|-----------|
| Windows | Monthly |
| WSL2 | Monthly |
| Docker | Monthly |
| Development tools | Monthly or as required |
| Claude Code | As new stable releases become available |
| Codex CLI | As new stable releases become available |

Security-related updates SHOULD be applied as soon as practical.

---

# 10. Evidence

This workflow is based on the current workstation architecture and technology documentation, including:

- 01-Windows.md
- 02-WSL.md
- 05-Docker.md
- 06-Node.md
- 07-Python.md
- 08-Azure.md
- 09-Claude-Code.md
- 10-Codex.md

Validation is performed using:

```text
~/scripts/check-workstation.sh
```

---

# 11. Related Workflows

- Workstation Setup
- Workstation Health Check

---

# 12. Future Evolution

As the platform evolves, this workflow will expand to include update procedures for:

- Ollama
- Open WebUI
- Langfuse
- n8n
- SQL Server
- MongoDB
- Neo4j
- Redis
- Qdrant
- MCP Servers

Those procedures SHALL be incorporated only after the corresponding services become part of the operational platform.

End of Document.