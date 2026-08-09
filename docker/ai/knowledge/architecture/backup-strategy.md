---
name: Backup Strategy
id: GS-ARC-005
version: 1.0.0
status: Active
owner: Goethe-Schule Buenos Aires
layer: Architecture
last_review: 2026-08-04
---

# Backup Strategy

## 1. Purpose

This document defines the backup and recovery strategy for the AI Development Platform.

The objective is to ensure that critical engineering assets, configuration and persistent application data can be recovered following accidental deletion, hardware failure or infrastructure rebuild.

Backup is considered an architectural capability rather than an operational task.

Operational procedures are documented separately in the Workflows domain.

---

# 2. Objectives

The backup strategy has the following objectives:

- protect engineering knowledge;
- preserve persistent application data;
- minimize service recovery time;
- simplify workstation rebuilds;
- support disaster recovery.

---

# 3. Backup Principles

The platform follows these principles.

## Infrastructure is Reproducible

Containers SHALL NOT be backed up.

Docker Compose definitions are the source of truth.

Infrastructure can always be recreated.

---

## Configuration is Version Controlled

Configuration SHALL be stored in Git whenever possible.

Examples include:

- Docker Compose files;
- AI knowledge;
- scripts;
- templates;
- documentation.

Git is considered the primary backup mechanism for configuration.

---

## Data is Irreplaceable

Persistent application data SHALL be backed up.

Examples include:

- SQL Server databases;
- MongoDB databases;
- Neo4j databases;
- Redis persistence;
- Portainer configuration;
- Ollama models (when applicable);
- Langfuse data.

---

## Knowledge is Critical

The AI Development Platform itself is a strategic asset.

The following SHALL be protected:

```
docker/ai/
```

This includes:

- Core
- Knowledge
- Skills
- Agents

---

# 4. Backup Scope

The repository is divided into four backup categories.

## Category A — Version Controlled

```
docker/ai/

docker/stacks/

docker/docs/

docker/shared/
```

Primary protection

GitHub Repository.

Secondary protection

Periodic repository export.

---

## Category B — Persistent Data

```
docker/data/
```

Primary protection

Filesystem backup.

Secondary protection

External storage.

---

## Category C — Generated Data

Includes:

- logs;
- temporary files;
- caches.

These resources MAY be excluded from backups.

---

## Category D — Reproducible Components

Examples:

- Docker images;
- containers;
- downloaded packages.

These components SHALL NOT be backed up.

They can be recreated automatically.

---

# 5. Recovery Priorities

Recovery SHALL follow this order.

Priority 1

Engineering knowledge.

```
docker/ai/
```

---

Priority 2

Infrastructure definition.

```
docker/stacks/
```

---

Priority 3

Shared resources.

```
docker/shared/
```

---

Priority 4

Persistent application data.

```
docker/data/
```

---

Priority 5

Container deployment.

Containers are recreated from Docker Compose.

---

# 6. Recovery Strategy

Platform recovery follows the sequence below.

```
Operating System

↓

WSL2

↓

Docker Desktop

↓

Git Repository

↓

AI Knowledge

↓

Docker Stacks

↓

Persistent Data

↓

Deploy Containers
```

The architecture is intentionally designed so that infrastructure can be rebuilt from version-controlled assets.

---

# 7. Retention Strategy

Backups SHOULD follow multiple retention levels.

| Type | Purpose |
|------|---------|
| Daily | Operational recovery |
| Weekly | Medium-term recovery |
| Monthly | Long-term recovery |
| Manual | Before major architectural changes |

Retention periods MAY evolve as the platform grows.

---

# 8. Storage Strategy

Backups SHOULD exist in multiple locations.

Recommended hierarchy

1. Local workstation
2. Secondary local disk
3. External storage
4. Cloud storage (optional)

No single storage location SHOULD be considered sufficient.

---

# 9. Future Evolution

Future improvements may include:

- automated backup scheduling;
- backup verification;
- encrypted backups;
- off-site replication;
- immutable backup storage;
- disaster recovery testing.

These capabilities will be documented in the Workflows domain as they are implemented.

---

# 10. Relationship with Other Documents

| Document | Purpose |
|----------|---------|
| repository-structure.md | Defines protected directories |
| docker-architecture.md | Defines reproducible infrastructure |
| stack-strategy.md | Defines deployment units |
| networking.md | Defines communication model |
| workflows/backup.md | Defines operational procedures |

---

# 11. References

Related Standards

- GS-ARC-001
- GS-KB-002
- GS-ENG-001

End of Document.