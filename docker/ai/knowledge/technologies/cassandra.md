---
name: Apache Cassandra
id: GS-TECH-024
version: 1.0.0
status: Approved
category: Database
criticality: Medium
vendor: Apache Software Foundation
license: Apache License 2.0
owner: Data Platform
last_review: 2026-08-04
---

# Apache Cassandra

## 1. Purpose

Apache Cassandra is the distributed wide-column NoSQL database selected for large-scale, highly available and fault-tolerant workloads within the AI Development Platform.

Although not currently deployed, Cassandra is part of the approved technology catalog and is available for future projects requiring horizontal scalability and continuous availability.

---

# 2. Overview

Apache Cassandra is an open-source distributed database designed to provide high write throughput, linear scalability and fault tolerance without a single point of failure.

Unlike traditional relational databases, Cassandra distributes data across multiple nodes using a peer-to-peer architecture.

Its design prioritizes availability and scalability over strong consistency.

---

# 3. Platform Role

Within the AI Development Platform, Cassandra is intended for workloads involving:

- very large datasets;
- distributed applications;
- event storage;
- telemetry;
- time-series information;
- append-only data models.

Cassandra is **not** intended to replace relational databases or document databases.

It complements the existing database portfolio.

---

# 4. Current Status

Deployment status

```
Approved
Not yet deployed
```

Current data directory

```
docker/data/cassandra/
```

Current stack

```
stacks/databases/
```

No production or development instance is currently running.

---

# 5. Architecture Fit

Within the database strategy:

| Technology | Primary Role |
|------------|--------------|
| SQL Server | Relational data |
| MongoDB | Document storage |
| Redis | In-memory cache |
| Neo4j | Graph database |
| Cassandra | Distributed wide-column storage |

Each database technology addresses a different architectural requirement.

---

# 6. Installation

Future deployments SHALL follow the platform standards.

Deployment requirements include:

- Docker Compose;
- persistent volumes;
- goethe-network integration;
- standardized container naming;
- centralized documentation.

No manual installations are permitted.

---

# 7. Configuration

Configuration SHALL remain externalized.

Typical configuration includes:

- cluster name;
- data directories;
- replication settings;
- memory allocation;
- authentication;
- networking.

Configuration files SHALL remain under version control whenever practical.

---

# 8. Integration

Future integrations may include:

- Python applications;
- Node.js services;
- n8n workflows;
- analytics pipelines;
- AI telemetry systems.

Applications SHALL connect using Docker service discovery.

---

# 9. Best Practices

The platform adopts the following principles.

- use Cassandra only for workloads requiring horizontal scalability;
- model data according to query patterns;
- avoid relational thinking;
- prefer immutable data when practical;
- monitor storage growth continuously.

Cassandra SHOULD NOT be selected solely because it is a NoSQL database.

Technology selection SHALL follow documented architectural requirements.

---

# 10. Operational Notes

Cassandra introduces operational complexity beyond other databases currently used by the platform.

Future deployments SHOULD include:

- health monitoring;
- backup strategy;
- repair scheduling;
- capacity planning;
- performance monitoring.

Operational procedures will be documented in the Workflows domain.

---

# 11. Future Evolution

Future work may include:

- multi-node Docker deployment;
- cluster experimentation;
- backup automation;
- monitoring integration;
- benchmarking against MongoDB and SQL Server.

Adoption will occur only when justified by project requirements.

---

# 12. Relationship with Other Technologies

Cassandra complements:

- SQL Server
- MongoDB
- Redis
- Neo4j

It is expected to integrate with:

- Docker
- Portainer
- Python
- Node.js
- n8n

---

# 13. References

Official Documentation

https://cassandra.apache.org/

Apache Cassandra Documentation

https://cassandra.apache.org/doc/latest/

Related Documents

- GS-ARC-002 Docker Architecture
- GS-ARC-003 Stack Strategy
- GS-TECH-020 SQL Server
- GS-TECH-021 MongoDB
- GS-TECH-022 Redis
- GS-TECH-023 Neo4j

End of Document.