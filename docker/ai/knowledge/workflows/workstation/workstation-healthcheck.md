---
name: Workstation Health Check
id: GS-WF-003
version: 1.0.0
status: Approved
category: Workstation
owner: Platform Engineering
last_review: 2026-08-06
---

# Workstation Health Check

## 1. Purpose

This workflow defines the standard procedure for validating the operational health of the AI Development Platform workstation.

Its objective is to verify that the engineering environment remains functional after installation, updates or maintenance activities.

The health check SHALL be executed before diagnosing platform issues.

---

# 2. Scope

This workflow applies to:

- daily workstation validation;
- post-installation verification;
- post-update verification;
- troubleshooting activities;
- periodic operational reviews.

---

# 3. Prerequisites

The following conditions SHALL be met:

- WSL2 is running.
- The Linux environment is accessible.
- The workstation repository is available.
- Docker Desktop (or Docker Engine) is operational.

---

# 4. Health Check Script

The official validation tool is:

```text
check-workstation.sh
```

Location

```text
~/scripts/check-workstation.sh
```

The script provides a consolidated overview of the engineering workstation.

---

# 5. Execution Procedure

Open a terminal inside WSL2.

Execute:

```bash
~/scripts/check-workstation.sh
```

Wait until the script completes successfully.

No manual intervention is required.

---

# 6. Current Validation Scope

The current implementation verifies:

## Operating Environment

- Current user
- Host name
- Linux kernel
- Execution date

---

## Development Tools

The following tools are validated:

- Git
- GitHub CLI
- Node.js
- npm
- pnpm
- Python
- pip
- Azure CLI
- Docker
- Claude Code

Each tool SHALL report its installed version.

---

## Docker

The script validates:

- Docker daemon accessibility
- Running containers

Current expected output includes the operational containers running at the time of execution.

---

## Docker Networks

The script validates the available Docker networks.

Current expected networks include:

- bridge
- host
- none
- goethe-network

---

# 7. Expected Result

A successful execution SHALL produce:

- all required tools detected;
- Docker operational;
- expected containers visible;
- expected Docker networks available;
- script completion without errors.

---

# 8. Failure Handling

If a validation fails:

1. Identify the failing component.
2. Review the corresponding technology documentation.
3. Restore the missing dependency if necessary.
4. Execute the health check again.

No additional changes SHOULD be made until the failing component has been identified.

---

# 9. Current Operational Baseline

At the time of approval, the workstation validates:

Development

- Git
- GitHub CLI
- Node.js
- npm
- pnpm
- Python
- pip
- Azure CLI
- Docker
- Claude Code

Infrastructure

- Docker Engine
- Docker Networks
- Active Containers

---

# 10. Future Evolution

The health check is expected to evolve as the platform grows.

Future validations may include:

- Codex CLI
- Ollama
- Open WebUI
- Langfuse
- MongoDB
- Neo4j
- Redis
- SQL Server
- Qdrant
- n8n
- MCP Servers
- disk utilization
- backup verification
- certificate validation

Additional checks SHALL only be incorporated after the corresponding services become part of the operational platform.

---

# 11. Operational Frequency

The health check SHOULD be executed:

- after workstation installation;
- after operating system updates;
- after Docker updates;
- before major development sessions;
- before reporting infrastructure issues.

---

# 12. References

Related Workflows

- Workstation Setup
- Workstation Update

Related Technologies

- Docker
- Git
- Node.js
- Python
- Azure CLI
- Claude Code

Supporting Script

```text
~/scripts/check-workstation.sh
```

End of Document.