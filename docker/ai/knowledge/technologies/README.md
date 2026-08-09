---
name: Technologies Knowledge Standard
id: GS-TECH-000
version: 1.0.0
status: Active
owner: Goethe-Schule Buenos Aires
layer: Technologies
last_review: 2026-08-04
---

# Technologies Knowledge Standard

## 1. Purpose

This document defines the Technologies domain of the AI Development Platform.

The Technologies domain documents every software product, framework, runtime, platform and service used by the workstation.

Its purpose is to establish a consistent technical reference describing why each technology exists, how it fits into the architecture and how it should be used.

The Technologies domain complements the Architecture domain by documenting implementation rather than design.

---

# 2. Scope

Technology documents describe:

- purpose;
- role within the platform;
- supported versions;
- architectural integration;
- operational considerations;
- engineering best practices;
- official references.

Technology documents SHALL NOT describe operational procedures.

Operational procedures belong in the Workflows domain.

---

# 3. Design Principles

## Technology as a Component

Each document represents a single technology.

Examples:

- Docker
- Azure CLI
- SQL Server
- MongoDB
- Claude Code

---

## Vendor Neutrality

Documents describe how the technology is used within the platform.

They SHOULD avoid marketing language.

---

## Stable Knowledge

Technology documents SHOULD remain stable.

Version upgrades SHOULD require only minor updates.

---

## Single Responsibility

One document.

One technology.

No document SHALL describe multiple unrelated technologies.

---

## Architecture Alignment

Every technology SHALL explicitly describe its relationship with the platform architecture.

---

# 4. Standard Document Structure

Every technology document SHOULD contain the following sections.

1. Purpose

2. Overview

3. Platform Role

4. Current Version

5. Installation

6. Configuration

7. Integration

8. Best Practices

9. Operational Notes

10. Future Evolution

11. References

The exact structure MAY evolve when justified.

---

# 5. Technology Categories

The current platform includes technologies from multiple domains.

Infrastructure

- Docker
- Portainer
- WSL2

Development

- Git
- GitHub
- Node.js
- pnpm
- Python

Cloud

- Azure

Databases

- SQL Server
- MongoDB
- Redis
- Neo4j
- Cassandra

Automation

- n8n

Artificial Intelligence

- Ollama
- Open WebUI
- Qdrant
- Langfuse
- Claude Code
- Codex CLI

---

# 6. Relationship with Other Domains

```
Core
        │
        ▼
Architecture
        │
        ▼
Technologies
        │
        ▼
Workflows
        │
        ▼
Skills
```

Technologies explain **what** the platform uses.

Workflows explain **how** the platform is operated.

Skills teach AI assistants **how to perform engineering tasks** using those technologies.

---

# 7. Naming Convention

Technology documents SHALL use lowercase filenames.

Examples

```
docker.md

python.md

claude-code.md

sqlserver.md

open-webui.md
```

One file SHALL represent one technology.

---

# 8. Maintenance Policy

Technology documents SHOULD be reviewed when:

- a major version is adopted;
- configuration changes significantly;
- architectural responsibilities change;
- operational practices evolve.

Routine patches SHOULD NOT require immediate documentation updates.

---

# 9. References

Related Domains

- Core
- Memory
- Architecture
- Workflows
- Skills

Document Prefix

GS-TECH

End of Document.