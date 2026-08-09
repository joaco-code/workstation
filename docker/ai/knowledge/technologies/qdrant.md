---
name: Qdrant
id: GS-TECH-042
version: 1.0.0
status: Approved
category: Database
technology_type: Vector Database
adoption_level: Preferred
criticality: Critical
vendor: Qdrant
license: Apache-2.0
owner: AI Engineering
last_review: 2026-08-04
---

# Qdrant

## 1. Purpose

Qdrant is the official vector database of the AI Development Platform.

It provides high-performance storage, indexing and retrieval of vector embeddings to enable semantic search, Retrieval-Augmented Generation (RAG) and AI knowledge discovery.

Qdrant is the platform's semantic retrieval engine.

---

# 2. Overview

Qdrant is an open-source vector database optimized for similarity search.

It is responsible for:

- vector storage;
- vector indexing;
- nearest-neighbor search;
- semantic retrieval;
- metadata filtering.

Qdrant stores vector representations rather than traditional relational or document data.

---

# 3. Platform Role

Within the AI Development Platform, Qdrant provides:

- semantic search;
- embedding storage;
- RAG retrieval;
- similarity search;
- contextual information retrieval.

Inference remains the responsibility of Ollama.

Knowledge relationships remain the responsibility of Neo4j.

---

# 4. Current Status

Current status

```text
Approved
Deployment planned
```

Current data directory

```text
docker/data/qdrant/
```

Current stack

```text
stacks/ai/
```

Deployment will occur during implementation of the AI Stack.

---

# 5. Architecture Integration

Qdrant is the semantic retrieval layer of the AI platform.

```text
Documents

      │

Embedding Model

      │

Qdrant

      │

Relevant Context

      │

Ollama
```

Future integrations include:

- Langfuse;
- Open WebUI;
- n8n;
- MCP servers.

---

# 6. Responsibilities

Qdrant is responsible for:

- storing embeddings;
- indexing vectors;
- similarity search;
- metadata filtering;
- semantic retrieval.

Document ingestion and embedding generation remain external responsibilities.

---

# 7. Recommended Use Cases

Qdrant SHOULD be used for:

- Retrieval-Augmented Generation (RAG);
- semantic document search;
- AI knowledge retrieval;
- embedding repositories;
- recommendation systems;
- contextual AI assistants.

It is optimized for vector similarity rather than structured queries.

---

# 8. When NOT to Use Qdrant

Qdrant SHOULD NOT be used for:

- relational transactions;
- document storage;
- graph traversal;
- caching;
- analytical reporting.

Other platform databases remain responsible for those workloads.

---

# 9. Security

The platform adopts the following principles.

- isolated Docker deployment;
- authenticated access where applicable;
- protected API endpoints;
- persistent storage;
- controlled embedding ingestion.

Embeddings may indirectly represent sensitive organizational knowledge and SHALL be protected accordingly.

---

# 10. Best Practices

Engineering standards include:

- generate high-quality embeddings;
- avoid duplicate vector collections;
- maintain metadata consistency;
- document collection schemas;
- periodically optimize indexes.

Retrieval quality depends on embedding quality.

---

# 11. Operational Notes

Future deployment SHALL include:

- Docker Compose;
- persistent volumes;
- health monitoring;
- automated backups;
- resource monitoring.

Vector indexes SHALL remain persistent across container recreation.

---

# 12. Future Evolution

Planned capabilities include:

- hybrid search;
- collection versioning;
- distributed deployments;
- embedding lifecycle management;
- advanced filtering;
- AI memory optimization.

Qdrant will remain the platform's primary semantic retrieval engine.

---

# 13. Decision Matrix

| Attribute | Value |
|----------|-------|
| Status | Approved |
| Adoption | Planned |
| Criticality | Critical |
| Vector Search | Excellent |
| RAG Support | Excellent |
| Metadata Filtering | Excellent |
| Docker Support | Excellent |
| Operational Complexity | Medium |

---

# 14. Platform Decisions

The AI Development Platform adopts the following decisions.

| Decision | Status |
|----------|--------|
| Qdrant as official vector database | ✅ |
| Docker deployment | ✅ |
| Persistent storage | ✅ |
| Semantic retrieval engine | ✅ |
| Shared AI network | ✅ |
| RAG foundation | ✅ |

---

# 15. Relationship with Other Technologies

Qdrant integrates directly with:

- Ollama
- Open WebUI
- Langfuse
- Docker
- Python
- n8n

Future integrations include:

- Claude Code
- Codex CLI
- MCP Servers

Qdrant complements:

- Neo4j (relationships)
- MongoDB (documents)
- SQL Server (transactions)
- Redis (cache)

It provides semantic retrieval capabilities for AI applications.

---

# 16. Why Qdrant?

Qdrant was selected because it provides:

- high-performance vector search;
- native metadata filtering;
- excellent RAG support;
- open-source architecture;
- Docker-native deployment;
- scalability for AI workloads.

Its architecture aligns with the platform's goals of semantic search, AI memory and retrieval efficiency.

---

# 17. Operational Risk

Qdrant introduces specific operational considerations.

Potential risks include:

- poor embedding quality affecting retrieval;
- uncontrolled collection growth;
- inconsistent metadata;
- degraded search performance due to improper indexing.

Risk mitigation includes:

- standardized embedding pipelines;
- metadata governance;
- collection lifecycle management;
- periodic index optimization;
- monitoring of retrieval quality.

Retrieval accuracy SHALL be continuously evaluated as part of the AI platform lifecycle.

---

# 18. Official References

Qdrant

https://qdrant.tech/

Documentation

https://qdrant.tech/documentation/

GitHub

https://github.com/qdrant/qdrant

API Reference

https://api.qdrant.tech/

Related Documents

- GS-TECH-040 Ollama
- GS-TECH-041 Open WebUI
- GS-TECH-043 Langfuse
- GS-TECH-023 Neo4j
- GS-TECH-021 MongoDB
- GS-ARC-002 Docker Architecture
- GS-ARC-003 Stack Strategy

End of Document.