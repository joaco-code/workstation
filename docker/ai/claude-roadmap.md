# AI Development Platform Roadmap

Version: 1.0.0  
Status: Active  
Owner: Goethe-Schule Buenos Aires  
Last Update: 2026-08-03

---

# Vision

Build a professional AI-assisted Engineering Platform where every AI assistant
(Claude Code, Codex CLI and future assistants) operates under the same
engineering standards, security model and knowledge base.

The platform is divided into three layers:

```
AI Platform
│
├── Core
├── Knowledge
└── Execution
```

---

# Current Architecture

```
AI
│
├── Core
│   ├── CLAUDE.md
│   ├── settings.md
│   ├── permissions.md
│   └── conventions.md
│
├── Knowledge
│   ├── memory/
│   ├── prompts/
│   ├── security/
│   ├── architecture/
│   ├── technologies/
│   └── workflows/
│
└── Execution
    ├── skills/
    └── agents/
```

---

# Claude Code Roadmap

## Stage 1 — Installation ✅

Status

```
COMPLETED
```

Includes

- Claude Code installation
- Authentication
- Claude Pro
- WSL integration
- Validation
- Health Check

Deliverables

- Claude Code operational
- Health Check script

---

## Stage 2 — Global Configuration ✅

Status

```
COMPLETED
```

Objective

Build the permanent engineering foundation.

Deliverables

```
Core/
```

Implemented

- ✅ CLAUDE.md
- ✅ GS-ENG-001 Engineering Standard
- ✅ GS-SET-001 Platform Settings Standard
- ✅ GS-PRM-001 AI Operational Governance Standard

Outcome

Claude now operates under documented engineering standards.

---

## Stage 3 — Context 🚧

Status

```
IN PROGRESS
```

Objective

Teach Claude how the Goethe AI Development Platform works.

Deliverables

```
Knowledge/
```

### 3.1 Memory

Purpose

Operational memory of the platform.

Contents

```
project-memory.md
roadmap.md
decisions.md
lessons-learned.md
known-issues.md
```

Status

⬜ Pending

---

### 3.2 Architecture

Purpose

Understand how the workstation is designed.

Examples

```
repository-structure.md
docker-architecture.md
stack-strategy.md
networking.md
backup-strategy.md
```

Status

⬜ Pending

---

### 3.3 Technologies

Purpose

Teach platform-specific usage.

Examples

```
docker.md
azure.md
sqlserver.md
mongodb.md
redis.md
neo4j.md
cassandra.md
python.md
node.md
claude.md
codex.md
portainer.md
n8n.md
```

Status

⬜ Pending

---

### 3.4 Workflows

Purpose

Teach repeatable engineering procedures.

Examples

```
new-stack.md
backup.md
restore.md
release.md
security-audit.md
new-project.md
```

Status

⬜ Pending

---

### 3.5 Security

Purpose

Platform security knowledge.

Examples

```
iso27001.md
owasp.md
devsecops.md
hardening.md
secret-management.md
security-checklists.md
```

Status

⬜ Pending

---

### 3.6 Prompts

Purpose

Reusable engineering prompts.

Examples

```
architecture-review.md
docker-review.md
security-review.md
create-readme.md
adr.md
documentation.md
```

Status

⬜ Pending

---

## Stage 4 — Skills

Status

```
PLANNED
```

Objective

Build a reusable engineering skill library.

Examples

```
docker/
sqlserver/
mongodb/
redis/
neo4j/
azure/
python/
node/
documentation/
security/
markdown/
devsecops/
n8n/
```

---

## Stage 5 — Agents

Status

```
PLANNED
```

Objective

Create specialized AI engineers.

Examples

```
Software Architect

DevOps Engineer

Database Architect

Security Auditor

Documentation Engineer

Code Reviewer

Python Engineer

Azure Engineer
```

---

## Stage 6 — Security

Status

```
PLANNED
```

Objective

Build an enterprise-grade DevSecOps framework.

Includes

- ISO 27001
- OWASP
- Threat Modeling
- Secret Management
- Secure Coding
- Hardening
- Security Policies

---

## Stage 7 — MCP

Status

```
PLANNED
```

Integrations

- GitHub
- Docker
- Azure
- SQL Server
- MongoDB
- Neo4j
- Redis
- n8n
- Browser
- Filesystem

---

## Stage 8 — Automation

Status

```
PLANNED
```

Examples

- ADR generation
- README generation
- CHANGELOG generation
- Compose validation
- Documentation generation
- PR review
- Security review

---

## Stage 9 — Optimization

Status

```
PLANNED
```

Goals

- Reduce context
- Increase response quality
- Reduce costs
- Increase speed
- Improve maintainability

---

## Stage 10 — Governance

Status

```
PLANNED
```

Topics

- Official prompts
- Skill lifecycle
- Agent lifecycle
- Versioning
- Auditing
- Best practices
- AI policies

---

# Codex CLI Roadmap

Status

```
PLANNED
```

Stages

1. Installation
2. Configuration
3. Models
4. Sandbox
5. Security
6. Automation
7. Git Integration
8. Docker Integration
9. MCP
10. Governance

---

# AI Engineering

Status

```
FUTURE
```

Objective

Evaluate every AI assistant objectively.

Examples

| Capability | Claude | Codex | Copilot | Gemini |
|------------|---------|--------|----------|---------|
| Architecture | | | | |
| Refactoring | | | | |
| Docker | | | | |
| Azure | | | | |
| Databases | | | | |
| Python | | | | |
| Documentation | | | | |
| Security | | | | |

Outcome

Produce an official AI Decision Guide indicating which assistant should be used
for each engineering scenario.

---

# Current Progress

| Area | Status |
|-------|--------|
| Workstation | ✅ |
| WSL | ✅ |
| Docker | ✅ |
| Azure CLI | ✅ |
| Portainer | ✅ |
| Claude Code | ✅ |
| Core | ✅ |
| Knowledge | 🚧 |
| Skills | ⬜ |
| Agents | ⬜ |
| Codex | ⬜ |
| AI Engineering | ⬜ |

---

# Next Milestone

Complete **Knowledge → Memory**, establishing the operational memory of the AI Development Platform.

A partir de este documento, propondría que toda nueva carpeta del repositorio tenga un README.md obligatorio.

Por ejemplo:

docker/
├── ai/
│   └── README.md
├── data/
│   └── README.md
├── shared/
│   └── README.md
├── stacks/
│   └── README.md
└── docs/
    └── README.md

Y dentro de cada subdirectorio relevante:

stacks/
├── infrastructure/
│   └── README.md
├── databases/
│   └── README.md
└── ai/
    └── README.md

Cada README.md respondería siempre las mismas preguntas:

Purpose (para qué existe).
Contents (qué contiene).
Responsibilities (qué le corresponde).
What does NOT belong here (qué nunca debería ir allí).
Related Documents (referencias).

Ese patrón hace que el repositorio sea prácticamente autoexplicativo, tanto para nuevos integrantes del equipo como para asistentes de IA, y mantiene una estructura coherente a medida que la plataforma crece.