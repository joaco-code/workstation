---
name: Neo4j
id: GS-TECH-023
version: 1.0.0
status: Approved
category: Graph Database
criticality: High
vendor: Neo4j Inc.
license: GPL v3 / Commercial
owner: Data Platform
last_review: 2026-08-04
---

# Neo4j

## 1. Purpose

Neo4j is the graph database selected for managing highly connected data within the AI Development Platform.

It enables the representation, storage and analysis of relationships between entities, making it the preferred database for knowledge graphs, semantic models and AI context.

Neo4j SHALL be used whenever relationships are the primary asset rather than individual records.

---

# 2. Overview

Neo4j is a native property graph database.

Unlike relational or document databases, Neo4j stores nodes and relationships as first-class citizens, allowing complex traversals with high performance.

Within the platform, Neo4j provides:

- graph persistence;
- relationship analysis;
- semantic navigation;
- knowledge representation;
- graph queries using Cypher.

Neo4j complements the platform's relational, document, cache and distributed databases.

---

# 3. Platform Role

Neo4j supports workloads such as:

- knowledge graphs;
- AI memory relationships;
- document linkage;
- architecture dependency mapping;
- infrastructure topology;
- identity relationships;
- semantic search enrichment.

Neo4j is the platform's graph knowledge engine.

---

# 4. Current Status

Current status

```text
Approved
Deployment planned
```

Current data directory

```text
docker/data/neo4j/
```

Current stack

```text
stacks/databases/
```

The deployment architecture has been defined but Neo4j is not yet running.

---

# 5. Architecture Integration

Neo4j is part of the platform's polyglot persistence strategy.

```text
Applications

      │

Knowledge Graph

      │

Neo4j

      │

Docker

      │

Persistent Storage
```

Future integrations include AI services and engineering knowledge repositories.

---

# 6. Data Model

Neo4j stores information as:

- nodes;
- relationships;
- properties.

Relationships are explicitly modeled and queried rather than reconstructed through joins.

This approach enables efficient exploration of highly connected domains.

---

# 7. Recommended Use Cases

Neo4j SHOULD be selected for:

- knowledge graphs;
- AI memory;
- semantic search;
- recommendation engines;
- dependency analysis;
- network topology;
- organizational relationships;
- document linking.

These scenarios benefit from graph traversal rather than relational joins.

---

# 8. When NOT to Use Neo4j

Neo4j SHOULD NOT be selected for:

- transactional financial systems;
- simple CRUD applications;
- tabular reporting;
- document storage;
- key-value caching;
- workloads without meaningful relationships.

Relational or document databases remain preferable for those scenarios.

---

# 9. Security

The platform adopts the following principles.

- authentication enabled;
- least-privilege access;
- isolated networking;
- externalized configuration;
- secured administrative interfaces.

Graph data may represent sensitive organizational knowledge and SHALL be protected accordingly.

---

# 10. Best Practices

Engineering standards include:

- model relationships explicitly;
- avoid duplicate nodes;
- use meaningful labels;
- document graph schemas;
- optimize Cypher queries;
- index frequently accessed properties.

Graph design SHALL prioritize semantic clarity.

---

# 11. Operational Notes

Future deployment SHALL include:

- Docker Compose;
- persistent volumes;
- health checks;
- backup automation;
- monitoring.

Container lifecycle SHALL remain independent of stored graph data.

---

# 12. Future Evolution

Planned capabilities include:

- enterprise knowledge graph;
- AI memory layer;
- semantic document navigation;
- architecture dependency graphs;
- MCP relationship mapping;
- RAG enrichment;
- ontology support.

Neo4j is expected to become a foundational component of the platform's AI capabilities.

---

# 13. Decision Matrix

| Attribute | Value |
|----------|-------|
| Status | Approved |
| Adoption | Planned |
| Criticality | High |
| Relationship Modeling | Excellent |
| Knowledge Graph Support | Excellent |
| Query Language | Cypher |
| Learning Curve | Medium |
| Docker Integration | Excellent |

---

# 14. Platform Decisions

The AI Development Platform adopts the following decisions.

| Decision | Status |
|----------|--------|
| Neo4j as official graph database | ✅ |
| Deployment through Docker | ✅ |
| Persistent external storage | ✅ |
| Shared Docker networking | ✅ |
| Graph-first modeling for relationship-centric domains | ✅ |
| Knowledge Graph foundation | ✅ |

---

# 15. Relationship with Other Technologies

Neo4j complements:

- SQL Server
- MongoDB
- Redis
- Cassandra

Neo4j integrates with:

- Docker
- Portainer
- Python
- Node.js
- n8n
- Ollama
- Langfuse
- Qdrant

Future integrations include:

- Claude Code
- Codex CLI
- MCP servers
- AI agents

Neo4j is the relationship intelligence layer of the AI Development Platform.

---

# 16. Why Neo4j?

Neo4j was selected because it provides:

- native graph storage;
- efficient relationship traversal;
- expressive Cypher query language;
- mature ecosystem;
- excellent Docker support;
- strong alignment with AI and knowledge graph architectures.

Its capabilities make it the preferred technology for representing connected knowledge.

---

# 17. Official References

Neo4j

https://neo4j.com/

Neo4j Documentation

https://neo4j.com/docs/

Cypher Query Language

https://neo4j.com/developer/cypher/

Neo4j Docker Image

https://hub.docker.com/_/neo4j

Related Documents

- GS-TECH-020 SQL Server
- GS-TECH-021 MongoDB
- GS-TECH-022 Redis
- GS-TECH-024 Cassandra
- GS-TECH-042 Qdrant
- GS-ARC-002 Docker Architecture
- GS-ARC-003 Stack Strategy

End of Document.