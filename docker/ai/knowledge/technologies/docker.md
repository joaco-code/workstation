---
name: Docker
id: GS-TECH-002
version: 1.0.0
status: Approved
category: Infrastructure
criticality: Critical
vendor: Docker Inc.
license: Apache 2.0 / Commercial (Docker Desktop)
owner: Infrastructure
last_review: 2026-08-04
---

# Docker

## 1. Purpose

Docker is the foundational infrastructure technology of the AI Development Platform.

It provides containerization, workload isolation, reproducibility and portability for every service deployed within the workstation.

All platform services SHALL execute as Docker containers.

The workstation follows a **Docker-first** architecture.

---

# 2. Overview

Docker enables applications and services to run inside lightweight containers with isolated runtimes while sharing the host operating system kernel.

Within this platform, Docker provides:

- runtime isolation;
- standardized deployments;
- reproducible environments;
- persistent storage;
- service networking;
- simplified lifecycle management.

Docker is the execution layer of the workstation.

---

# 3. Platform Role

Docker is responsible for hosting all platform services.

Current and planned services include:

Infrastructure

- Portainer

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

Future services SHALL follow the same deployment model.

---

# 4. Architecture Principles

The workstation adopts the following architectural principles.

## Docker-first

All long-running services execute as containers.

Native installations SHOULD be avoided unless technically justified.

---

## Compose-first

All services SHALL be deployed through Docker Compose.

Manual `docker run` commands SHALL NOT be used for permanent services.

Compose files become the infrastructure definition.

---

## Stack-based organization

Services are grouped by functional domain.

Current stacks include:

- infrastructure
- databases
- automation
- ai

Each stack owns its own Compose file.

---

## Persistent data separation

Persistent data SHALL remain outside containers.

The platform stores persistent data under:

```
docker/data/
```

Containers remain disposable.

Data remains persistent.

---

## Shared networking

All services communicate using the shared Docker bridge network.

```
goethe-network
```

Applications communicate using Docker DNS rather than fixed IP addresses.

---

## Infrastructure as Code

Every deployment SHALL be reproducible from version-controlled Compose files.

Manual configuration SHOULD be minimized.

---

# 5. Current Environment

Execution environment

```
Docker Desktop
```

Backend

```
WSL2
```

Container runtime

```
containerd
```

Compose

```
Docker Compose V2
```

Operating model

```
Single-host development platform
```

---

# 6. Directory Integration

Docker integrates with the repository structure.

```
docker/

data/
shared/
stacks/
```

Responsibilities

```
stacks/

deployment definitions

data/

persistent storage

shared/

shared assets

ai/

engineering knowledge
```

The repository structure is documented separately.

---

# 7. Networking

All containers participate in:

```
goethe-network
```

Container communication SHALL use service names.

Example

```
sqlserver

mongodb

redis

neo4j
```

Static IP assignments SHOULD NOT be used.

---

# 8. Storage

Persistent data SHALL remain outside containers.

```
docker/data/
```

Volumes SHALL survive:

- image upgrades;
- container recreation;
- platform updates.

Temporary data SHOULD remain inside containers.

---

# 9. Security

The platform adopts the following principles.

- least privilege;
- immutable containers;
- minimal images;
- official images whenever practical;
- externalized configuration;
- isolated networking.

Containers SHALL NOT execute as privileged unless technically required.

Secrets SHALL NOT be embedded into Compose files.

---

# 10. Best Practices

Platform engineering standards include:

- one responsibility per service;
- one Compose file per stack;
- version-controlled infrastructure;
- health checks whenever supported;
- named volumes;
- service discovery through Docker networking;
- documented configuration.

Operational consistency has priority over convenience.

---

# 11. Operational Notes

Docker services SHOULD be managed through:

- Docker Compose
- Portainer

The Docker CLI remains available for diagnostics and automation.

Routine operations SHOULD avoid direct container manipulation.

---

# 12. Future Evolution

The Docker platform is expected to evolve with:

- Traefik
- centralized monitoring
- backup automation
- image scanning
- DevSecOps pipelines
- GitHub Actions
- container signing
- SBOM generation

Future evolution SHALL remain compatible with the existing architecture.

---

# 13. Decision Matrix

| Attribute | Value |
|----------|-------|
| Status | Approved |
| Adoption | Production |
| Criticality | Critical |
| Scalability | High |
| Operational Complexity | Medium |
| Portability | Excellent |
| Automation | Excellent |
| Infrastructure as Code | Excellent |
| DevSecOps Integration | Excellent |

---

# 14. Why Docker?

Docker was selected because it provides:

- reproducibility;
- platform independence;
- deployment consistency;
- simplified maintenance;
- isolation between services;
- rapid disaster recovery;
- Infrastructure as Code support.

At the current scale of the workstation, Docker Compose provides the optimal balance between simplicity and operational capability.

Kubernetes is intentionally not adopted because it would introduce unnecessary operational complexity without providing proportional value.

---

# 15. Relationship with Other Technologies

Docker is the execution platform for:

- Portainer
- SQL Server
- MongoDB
- Redis
- Neo4j
- Cassandra
- n8n
- Ollama
- Open WebUI
- Qdrant
- Langfuse

Docker integrates with:

- WSL2
- Git
- GitHub
- Azure
- Claude Code
- Codex CLI

---

# 16. Official References

Docker

https://www.docker.com/

Docker Documentation

https://docs.docker.com/

Docker Compose

https://docs.docker.com/compose/

Related Documents

- GS-ARC-002 Docker Architecture
- GS-ARC-003 Stack Strategy
- GS-ARC-004 Networking
- GS-ARC-005 Backup Strategy
- GS-TECH-003 Portainer
- GS-TECH-004 WSL2

End of Document.