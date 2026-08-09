---
name: Open WebUI
id: GS-TECH-041
version: 1.0.0
status: Approved
category: AI Platform
technology_type: AI User Interface
criticality: High
vendor: Open WebUI
license: BSD-3-Clause
owner: AI Engineering
last_review: 2026-08-04
---

# Open WebUI

## 1. Purpose

Open WebUI is the official user interface for interacting with Large Language Models within the AI Development Platform.

It provides a secure, browser-based environment for accessing locally hosted AI models while abstracting the underlying inference infrastructure.

Open WebUI is the primary interaction layer between users and the AI platform.

---

# 2. Overview

Open WebUI is an open-source web application designed to communicate with AI inference engines such as Ollama.

Within this platform it provides:

- conversational interface;
- model selection;
- chat history;
- prompt management;
- multi-user access;
- AI workspace.

Open WebUI does not execute language models itself.

---

# 3. Platform Role

Within the AI Development Platform, Open WebUI provides:

- AI user interface;
- conversation management;
- model selection;
- prompt interaction;
- user experience layer.

Inference execution remains the responsibility of Ollama.

---

# 4. Current Status

Current status

```text
Approved
Deployment planned
```

Current data directory

```text
docker/data/open-webui/
```

Current stack

```text
stacks/ai/
```

Deployment will occur during implementation of the AI Stack.

---

# 5. Architecture Integration

Open WebUI is the presentation layer of the AI platform.

```text
Users

   │

Browser

   │

Open WebUI

   │

Ollama

   │

LLM Models
```

Future integrations include:

- Langfuse;
- Qdrant;
- n8n;
- authentication providers.

---

# 6. Responsibilities

Open WebUI is responsible for:

- user interaction;
- chat sessions;
- prompt submission;
- model selection;
- conversation history;
- AI usability.

Business logic and inference remain external responsibilities.

---

# 7. Recommended Use Cases

Open WebUI SHOULD be used for:

- interactive AI conversations;
- local LLM testing;
- prompt experimentation;
- engineering assistance;
- document analysis;
- knowledge exploration.

It provides a consistent interface regardless of the underlying model.

---

# 8. When NOT to Use Open WebUI

Open WebUI SHOULD NOT be used for:

- workflow orchestration;
- API integration;
- AI observability;
- vector storage;
- autonomous agents.

Those responsibilities belong to other platform components.

---

# 9. Security

The platform adopts the following principles.

- local deployment preferred;
- authenticated access;
- isolated Docker networking;
- controlled model availability;
- secure configuration management.

Administrative access SHALL remain restricted.

---

# 10. Best Practices

Engineering standards include:

- expose only approved models;
- document available capabilities;
- separate experimental and production models;
- minimize unnecessary plugins;
- maintain a clean user experience.

The interface SHALL remain simple and predictable.

---

# 11. Operational Notes

Future deployment SHALL include:

- Docker Compose;
- persistent storage;
- health monitoring;
- backup procedures;
- integration with AI services.

Container lifecycle SHALL remain independent of user configuration.

---

# 12. Future Evolution

Planned capabilities include:

- authentication integration;
- role-based access;
- multi-model routing;
- RAG integration;
- prompt libraries;
- AI workspaces.

Open WebUI will remain the standard interface for locally hosted AI services.

---

# 13. Decision Matrix

| Attribute | Value |
|----------|-------|
| Status | Approved |
| Adoption | Planned |
| Criticality | High |
| User Experience | Excellent |
| Ollama Integration | Excellent |
| Docker Support | Excellent |
| Multi-model Support | Excellent |
| Operational Complexity | Low |

---

# 14. Platform Decisions

The AI Development Platform adopts the following decisions.

| Decision | Status |
|----------|--------|
| Open WebUI as official AI interface | ✅ |
| Browser-based interaction | ✅ |
| Docker deployment | ✅ |
| Integration with Ollama | ✅ |
| Shared AI network | ✅ |
| Persistent configuration | ✅ |

---

# 15. Relationship with Other Technologies

Open WebUI integrates with:

- Ollama
- Langfuse
- Qdrant
- Docker
- n8n

Future integrations include:

- Azure AD
- Claude Code
- Codex CLI
- MCP Servers

Open WebUI provides the presentation layer for all locally hosted AI capabilities.

---

# 16. Why Open WebUI?

Open WebUI was selected because it provides:

- modern web interface;
- seamless Ollama integration;
- self-hosted deployment;
- multi-model support;
- active open-source community;
- extensibility.

Its architecture aligns with the platform's principles of openness, usability and self-hosting.

---

# 17. Official References

Open WebUI

https://openwebui.com/

Documentation

https://docs.openwebui.com/

GitHub

https://github.com/open-webui/open-webui

Related Documents

- GS-TECH-040 Ollama
- GS-TECH-042 Qdrant
- GS-TECH-043 Langfuse
- GS-TECH-030 n8n
- GS-ARC-002 Docker Architecture
- GS-ARC-003 Stack Strategy

End of Document.