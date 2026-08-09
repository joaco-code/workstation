---
name: Workstation Setup
id: GS-WF-001
version: 1.0.0
status: Approved
category: Workstation
owner: Platform Engineering
last_review: 2026-08-06
---

# Workstation Setup

## 1. Purpose

This workflow defines the official bootstrap procedure for creating the AI Development Platform workstation.

It is based on the documented workstation architecture and establishes the recommended order for provisioning a new engineering environment.

This workflow references the authoritative technical documentation contained in the Workstation repository.

---

# 2. Scope

This workflow applies to:

- new workstation deployments;
- workstation rebuilds;
- migration to new hardware;
- disaster recovery scenarios.

It does not replace the detailed installation guides for each technology.

---

# 3. Guiding Principles

The workstation SHALL be built following these principles:

- Infrastructure as Code
- Docker-first deployment
- Linux-first development (WSL2)
- Reproducibility
- Documentation before implementation
- AI-assisted engineering

These principles are defined in the workstation architecture documentation.

---

# 4. Bootstrap Sequence

The workstation SHALL be provisioned in the following order.

## Phase 1 — Architecture

Review the platform architecture.

Reference:

- 00-Architecture.md

Objective:

Understand the design principles before installing any software.

---

## Phase 2 — Hardware

Validate that the target workstation satisfies the documented hardware requirements.

Reference:

- 00-Hardware.md

Objective:

Ensure sufficient resources for virtualization, Docker and AI workloads.

---

## Phase 3 — Windows

Prepare Windows as the host operating system.

Reference:

- 01-Windows.md

Objective:

Configure Windows as the host platform for WSL2 and Docker Desktop.

---

## Phase 4 — WSL2

Install and configure Ubuntu under WSL2.

Reference:

- 02-WSL.md

Objective:

Establish Linux as the primary development environment.

---

## Phase 5 — Visual Studio Code

Install and configure Visual Studio Code.

Reference:

- 03-VSCode.md

Objective:

Provide the primary IDE for development.

---

## Phase 6 — Git

Install and configure Git.

Reference:

- 04-Git.md

Objective:

Enable source control and repository management.

---

## Phase 7 — Docker

Install and configure Docker Desktop and Docker Engine.

Reference:

- 05-Docker.md

Objective:

Provide the execution platform for all platform services.

---

## Phase 8 — Development Runtimes

Install language runtimes.

References:

- 06-Node.md
- 07-Python.md

Objective:

Prepare the development environment.

---

## Phase 9 — Cloud Tooling

Install Azure CLI.

Reference:

- 08-Azure.md

Objective:

Enable cloud administration and DevOps integration.

---

## Phase 10 — AI Tooling

Install AI development tools.

References:

- 09-Claude-Code.md
- 10-Codex.md

Objective:

Enable AI-assisted software engineering.

---

## Phase 11 — Platform Services

Deploy platform services.

References:

- 11-n8n.md
- 12-Bases-de-datos.md
- 13-Herramientas.md

Objective:

Provision the local engineering platform.

---

## Phase 12 — Backup Strategy

Review and configure backup procedures.

Reference:

- 14-Backups.md

Objective:

Protect critical information before productive use.

---

# 5. Validation

A workstation SHALL NOT be considered operational until:

- operating system is configured;
- WSL2 is functional;
- Docker is operational;
- development runtimes are installed;
- Git is configured;
- AI tooling is operational;
- platform services can be deployed.

Validation procedures are documented separately.

---

# 6. Expected Result

The expected outcome is a fully reproducible engineering workstation where:

- development occurs inside WSL2;
- services execute through Docker;
- infrastructure is version-controlled;
- AI tools are available;
- documentation reflects the current architecture.

---

# 7. Operational Notes

This workflow intentionally references the architecture documentation rather than duplicating installation instructions.

Each technology document remains the authoritative source for its own configuration.

---

# 8. Evidence

This workflow is derived from the following repository documentation:

- 00-Architecture.md
- 00-Hardware.md
- 01-Windows.md
- 02-WSL.md
- 03-VSCode.md
- 04-Git.md
- 05-Docker.md
- 06-Node.md
- 07-Python.md
- 08-Azure.md
- 09-Claude-Code.md
- 10-Codex.md
- 11-n8n.md
- 12-Bases-de-datos.md
- 13-Herramientas.md
- 14-Backups.md

End of Document.