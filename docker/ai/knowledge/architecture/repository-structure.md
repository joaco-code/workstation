---
name: Repository Structure
id: GS-ARC-001
version: 1.0.0
status: Active
owner: Goethe-Schule Buenos Aires
layer: Architecture
last_review: 2026-08-04
---

# Repository Structure

## 1. Purpose

This document defines the canonical directory structure of the AI Development Platform repository.

The repository structure is designed to provide:

- clear separation of responsibilities;
- predictable organization;
- scalability;
- maintainability;
- consistent onboarding for engineers and AI assistants.

Every directory SHALL have a single, well-defined responsibility.

---

# 2. Design Principles

The repository follows the following architectural principles.

## Separation of Concerns

Each top-level directory represents a distinct responsibility.

Configuration, persistent data, documentation and AI knowledge SHALL remain physically separated.

---

## Infrastructure as Code

Infrastructure configuration SHALL be stored as code.

Docker Compose files, templates and deployment assets SHALL be version controlled.

---

## Stateless Infrastructure

Infrastructure definitions SHALL remain independent from runtime data.

Containers may be recreated at any time without affecting persistent information.

---

## Knowledge as Code

Engineering knowledge is treated as a first-class artifact.

Documentation evolves together with the platform.

---

## Predictable Structure

Every engineer or AI assistant SHOULD be able to locate information without prior project knowledge.

---

# 3. Repository Layout

```
docker/

├── ai/
├── data/
├── docs/
├── shared/
└── stacks/
```

Each directory has a specific operational responsibility.

---

# 4. AI

```
ai/
```

Purpose

Stores the AI Development Platform.

This directory contains:

- engineering standards;
- AI configuration;
- reusable knowledge;
- prompts;
- skills;
- agents;
- operational memory.

Typical contents

```
ai/

core/

knowledge/

execution/
```

The AI directory SHALL NOT contain runtime application data.

---

# 5. Data

```
data/
```

Purpose

Stores persistent application data.

Typical examples include:

```
sqlserver/

mongodb/

redis/

neo4j/

portainer/

ollama/
```

Rules

- runtime data only;
- never version controlled;
- survives container recreation;
- included in backup procedures.

---

# 6. Docs

```
docs/
```

Purpose

Stores project documentation intended for human consumption.

Examples

- implementation guides;
- architecture diagrams;
- onboarding documentation;
- manuals;
- meeting notes;
- exported reports.

The `docs/` directory complements the AI knowledge base but does not replace it.

---

# 7. Shared

```
shared/
```

Purpose

Contains reusable resources shared across multiple stacks.

Typical contents

```
backups/

networks/

scripts/

templates/

volumes/
```

Rules

Resources placed here SHALL be generic and reusable.

No application-specific configuration SHOULD be stored here.

---

# 8. Stacks

```
stacks/
```

Purpose

Contains all Docker Compose projects.

Each directory represents one deployable operational stack.

Current structure

```
stacks/

infrastructure/

databases/

automation/

ai/
```

Each stack SHALL contain:

- docker-compose.yml
- README.md
- optional stack-specific configuration

---

# 9. Directory Relationships

```
                    docker/

          ┌──────────┼──────────┐
          │          │          │
          ▼          ▼          ▼
      stacks      shared      ai
          │                     │
          ▼                     ▼
     Docker Services      Engineering Knowledge
          │
          ▼
        data
```

Responsibilities

- `stacks/` defines **how services run**.
- `shared/` provides **common resources**.
- `data/` stores **persistent information**.
- `ai/` stores **engineering knowledge and AI configuration**.
- `docs/` stores **human-oriented documentation**.

---

# 10. Growth Strategy

New directories SHALL only be introduced when they represent a new architectural responsibility.

Technology alone SHALL NOT justify a new top-level directory.

Example

Correct

```
stacks/security
```

Incorrect

```
vault/
```

The architecture evolves by capability, not by technology.

---

# 11. Naming Conventions

Directory names SHALL:

- use lowercase;
- use hyphens only when necessary;
- avoid spaces;
- remain descriptive;
- remain stable over time.

Examples

Correct

```
open-webui
```

```
sqlserver
```

```
backup-strategy.md
```

Incorrect

```
SQL Server
```

```
DockerFiles
```

```
Misc
```

---

# 12. Repository Governance

Every modification to the repository structure SHOULD satisfy the following questions.

1. Does the directory represent a unique responsibility?

2. Can an existing directory already fulfill this purpose?

3. Does the change simplify or complicate navigation?

4. Will the structure remain understandable in five years?

Structural changes SHOULD be documented through an Engineering Decision Record (ADR) when they affect repository organization.

---

# 13. References

Related Documents

- docker-architecture.md
- stack-strategy.md
- networking.md
- backup-strategy.md

Related Standards

- GS-ENG-001
- GS-KB-002
- GS-DEC-001

End of Document.