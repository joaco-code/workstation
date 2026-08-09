---
name: Project Memory
id: GS-KB-002
version: 1.0.0
status: Active
owner: Goethe-Schule Buenos Aires
applies_to:
  - Claude Code
  - Codex CLI
  - Future AI Assistants
last_review: 2026-08-03
---

# Project Memory

## 1. Purpose

This document represents the operational memory of the AI Development Platform.

Its purpose is to provide every AI assistant and human engineer with a concise understanding of the current state of the platform, its objectives, architecture and engineering philosophy.

This document SHALL be maintained throughout the lifetime of the project.

---

# 2. Project Overview

## Name

AI Development Platform

## Organization

Goethe-Schule Buenos Aires

## Purpose

Build a professional AI-assisted engineering platform capable of supporting software development, infrastructure management, automation, documentation and DevSecOps activities through specialized AI assistants.

The platform is designed to be modular, maintainable and technology-agnostic, allowing multiple AI assistants to operate under the same engineering standards.

---

# 3. Vision

The long-term vision is to create an AI Engineering Platform where:

- engineering standards are documented;
- knowledge is centralized;
- AI assistants collaborate under shared governance;
- infrastructure is reproducible;
- every engineering decision is traceable.

The platform SHALL evolve incrementally while preserving simplicity and maintainability.

---

# 4. Engineering Philosophy

The platform follows the principles of Engineering Excellence.

Primary priorities are:

1. Correctness
2. Security
3. Maintainability
4. Clarity
5. Performance
6. Development Speed

Engineering decisions SHALL always prioritize long-term quality over short-term convenience.

---

# 5. Current Architecture

The platform is organized into three logical layers.

```
AI Development Platform
│
├── Core
├── Knowledge
└── Execution
```

## Core

Defines engineering governance.

Contains:

- CLAUDE.md
- Engineering Standards
- Platform Settings
- Operational Governance
- Conventions

---

## Knowledge

Stores reusable engineering knowledge.

Domains include:

- Memory
- Architecture
- Technologies
- Security
- Workflows
- Prompts

---

## Execution

Contains executable AI capabilities.

Includes:

- Skills
- Specialized Agents

---

# 6. Infrastructure Overview

The development environment is based on:

- Windows 11
- WSL2
- Ubuntu
- Docker Desktop
- Docker Compose
- Git
- GitHub
- Azure CLI
- Claude Code

Infrastructure is container-first.

Every major component SHALL be deployed using Docker Compose.

---

# 7. Repository Organization

The repository is organized according to functional domains.

Major directories include:

```
data/
shared/
stacks/
docs/
AI/
```

Each directory has a clearly defined responsibility.

Infrastructure and persistent data remain separated.

---

# 8. Technology Stack

Current technologies include:

Infrastructure

- Docker
- Docker Compose
- Portainer

Programming

- Python
- Node.js

Databases

- SQL Server
- MongoDB
- Redis
- Neo4j
- Cassandra

Automation

- n8n

Artificial Intelligence

- Claude Code
- Codex CLI (planned)
- Ollama
- Open WebUI
- Langfuse
- Qdrant

Cloud

- Microsoft Azure

The technology stack may evolve while preserving architectural consistency.

---

# 9. Current Status

Infrastructure

- Docker operational
- Portainer operational
- Azure CLI configured
- GitHub authentication configured
- Claude Code operational

AI Platform

Core

Status

✅ Completed

Knowledge

Status

🚧 In Progress

Execution

Status

⬜ Planned

---

# 10. Current Milestone

Current focus:

Complete the Knowledge layer.

Immediate objectives include:

- Build Memory
- Build Architecture knowledge
- Build Technology knowledge
- Build Security knowledge
- Build Workflow library

Only after the Knowledge layer is mature will the project move toward Skills and AI Agents.

---

# 11. Long-Term Objectives

The platform aims to become:

- a complete AI Engineering Workstation;
- a reusable engineering framework;
- a DevSecOps reference implementation;
- an enterprise-grade AI development environment.

Future assistants should be able to understand, maintain and extend the platform with minimal onboarding.

---

# 12. Guiding Principles

The project follows these principles.

## Documentation First

Important engineering knowledge SHALL be documented.

---

## Security by Default

Security is considered from the beginning of every implementation.

---

## Infrastructure as Code

Infrastructure SHOULD be reproducible.

---

## Modular Design

Components SHOULD remain independent whenever practical.

---

## Single Source of Truth

Knowledge SHALL exist in only one authoritative location.

---

## Continuous Improvement

The platform evolves incrementally through documented engineering decisions.

---

# 13. Relationship with Other Memory Files

This document provides the operational snapshot of the platform.

Additional memory documents have specific responsibilities.

| Document | Purpose |
|----------|---------|
| project-memory.md | Current state of the platform |
| decisions.md | Engineering decisions |
| roadmap.md | Future direction |
| known-issues.md | Open issues |
| lessons-learned.md | Engineering experience |

---

# 14. Maintenance

This document SHOULD be reviewed whenever significant architectural or organizational changes occur.

Major updates include:

- new infrastructure
- new technologies
- architectural changes
- major milestones
- engineering philosophy updates

---

# 15. References

Related Standards

- GS-AI-001 (CLAUDE.md)
- GS-ENG-001 (Engineering Standard)
- GS-SET-001 (Platform Settings Standard)
- GS-PRM-001 (AI Operational Governance Standard)
- GS-KB-001 (Knowledge Memory Standard)

End of Document.