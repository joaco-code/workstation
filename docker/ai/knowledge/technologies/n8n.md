---
name: n8n
id: GS-TECH-030
version: 1.0.0
status: Approved
category: Integration & Automation Platform
criticality: High
vendor: n8n GmbH
license: Fair Code
owner: Automation
last_review: 2026-08-04
---

# n8n

## 1. Purpose

n8n is the official workflow automation and systems integration platform of the AI Development Platform.

It orchestrates business processes, infrastructure automation and AI-powered workflows by connecting services, APIs and engineering tools.

n8n is the integration backbone of the platform.

---

# 2. Overview

n8n is an open-source workflow automation platform that enables event-driven and scheduled integrations between heterogeneous systems.

Within this platform, n8n provides:

- workflow orchestration;
- API integration;
- scheduled automation;
- event processing;
- AI workflow execution;
- business process automation.

It is the preferred solution for implementing repeatable automation without custom code.

---

# 3. Platform Role

n8n coordinates interactions between platform components.

Typical responsibilities include:

- system integrations;
- workflow execution;
- notification processing;
- AI orchestration;
- data synchronization;
- infrastructure automation;
- operational automation.

n8n acts as the automation layer of the platform.

---

# 4. Current Status

Current status

```text
Approved
Deployment planned
```

Current data directory

```text
docker/data/n8n/
```

Current stack

```text
stacks/automation/
```

The deployment architecture has been defined but the platform is not yet operational.

---

# 5. Architecture Integration

n8n connects multiple technologies through reusable workflows.

```
GitHub      Azure

   │           │

   └─────┬─────┘

         │

        n8n

         │

 ┌───────┼─────────────┐

 │       │             │

Docker  Databases   AI Services
```

Workflows are treated as engineering assets.

---

# 6. Workflow Model

Workflows may be triggered by:

- webhooks;
- schedules;
- API requests;
- manual execution;
- events from integrated services.

Each workflow SHOULD have a single business purpose and remain easy to understand.

---

# 7. Recommended Use Cases

n8n SHOULD be used for:

- system integrations;
- scheduled jobs;
- API orchestration;
- notifications;
- document processing;
- AI workflow execution;
- DevOps automation;
- operational processes.

Reusable workflows are preferred over duplicated implementations.

---

# 8. When NOT to Use n8n

n8n SHOULD NOT be used for:

- long-running business logic;
- high-performance transactional systems;
- replacing application code;
- persistent data storage;
- computationally intensive processing.

Complex business logic SHOULD remain within dedicated applications or services.

---

# 9. Security

Automation workflows may access sensitive systems.

Therefore:

- credentials SHALL use secure credential storage;
- secrets SHALL NOT be hardcoded;
- workflows SHALL follow least-privilege principles;
- execution logs SHALL be reviewed periodically;
- external integrations SHALL be documented.

Automation security follows platform governance.

---

# 10. Best Practices

Engineering standards include:

- one business purpose per workflow;
- modular workflow design;
- reusable sub-workflows;
- meaningful workflow names;
- version-controlled exports when appropriate;
- documented integrations.

Automation SHALL remain understandable and maintainable.

---

# 11. Operational Notes

Future deployment SHALL include:

- Docker Compose;
- persistent storage;
- backup strategy;
- health monitoring;
- workflow versioning.

Operational procedures will be documented after deployment.

---

# 12. Future Evolution

Planned capabilities include:

- AI Agents;
- MCP integrations;
- GitHub automation;
- Azure automation;
- DevSecOps workflows;
- infrastructure orchestration;
- approval workflows;
- monitoring integrations.

n8n will progressively become the central orchestration platform.

---

# 13. Decision Matrix

| Attribute | Value |
|----------|-------|
| Status | Approved |
| Adoption | Planned |
| Criticality | High |
| Automation | Excellent |
| Integration | Excellent |
| AI Workflow Support | Excellent |
| Learning Curve | Medium |
| Docker Integration | Excellent |

---

# 14. Platform Decisions

The AI Development Platform adopts the following decisions.

| Decision | Status |
|----------|--------|
| n8n as official automation platform | ✅ |
| Deployment through Docker | ✅ |
| Workflow-based integrations | ✅ |
| AI orchestration support | ✅ |
| Persistent workflow storage | ✅ |
| Modular workflow design | ✅ |

---

# 15. Relationship with Other Technologies

n8n integrates with:

- Docker
- Azure
- GitHub
- SQL Server
- MongoDB
- Redis
- Neo4j
- Cassandra
- Ollama
- Open WebUI
- Langfuse
- Claude Code
- Codex CLI

n8n is the integration layer connecting engineering, infrastructure and AI services.

---

# 16. Why n8n?

n8n was selected because it provides:

- self-hosted deployment;
- extensive integration ecosystem;
- visual workflow design;
- AI-native capabilities;
- strong Docker support;
- low-code automation;
- extensibility through custom nodes.

Its architecture aligns with the platform's principles of openness, portability and Infrastructure as Code.

---

# 17. Official References

n8n

https://n8n.io/

Documentation

https://docs.n8n.io/

GitHub

https://github.com/n8n-io/n8n

Related Documents

- GS-TECH-001 Microsoft Azure
- GS-TECH-002 Docker
- GS-TECH-021 MongoDB
- GS-TECH-040 Ollama
- GS-TECH-043 Langfuse
- GS-ARC-002 Docker Architecture
- GS-ARC-003 Stack Strategy

End of Document.