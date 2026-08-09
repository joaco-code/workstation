---
name: Stack Strategy
id: GS-ARC-003
version: 1.0.0
status: Active
owner: Goethe-Schule Buenos Aires
layer: Architecture
last_review: 2026-08-03
---

# Stack Strategy

## 1. Purpose

This document defines the strategy for organizing Docker services into logical stacks within the AI Development Platform.

The objective is to ensure scalability, maintainability and operational independence while keeping the platform easy to understand and evolve.

---

# 2. Guiding Principles

The stack organization follows the following principles.

## Functional Separation

Each stack represents a functional domain rather than an individual technology.

A stack groups services that work together to achieve a common objective.

---

## Independent Lifecycle

Every stack SHALL be deployable, updated and stopped independently.

Independent lifecycle management minimizes operational impact during maintenance activities.

---

## Loose Coupling

Stacks SHOULD communicate through well-defined interfaces and shared Docker networks.

No stack SHALL depend on implementation details of another stack.

---

## Infrastructure as Code

Every stack SHALL be described by a dedicated `docker-compose.yml`.

Manual container creation is discouraged.

---

## Persistent Data Isolation

Application data SHALL remain under:

```
docker/data/
```

Containers remain disposable.

Persistent information does not.

---

# 3. Current Stack Model

The platform is organized into four major stacks.

```
docker/

stacks/

├── infrastructure
├── databases
├── automation
└── ai
```

Each stack represents a business capability rather than a technical layer.

---

# 4. Infrastructure Stack

Purpose

Provide the shared services required by the entire platform.

Typical responsibilities include:

- container management;
- reverse proxy;
- monitoring;
- logging;
- networking;
- secrets management.

Current implementation

- Portainer

Future services

- Traefik
- Prometheus
- Grafana
- Loki
- Watchtower
- Vault (optional)

---

# 5. Databases Stack

Purpose

Provide persistent data services.

Current technologies include:

- SQL Server
- MongoDB
- Redis
- Neo4j
- Cassandra

Each database remains an independent service while sharing common operational standards.

---

# 6. Automation Stack

Purpose

Provide workflow automation capabilities.

Current implementation

- n8n

Future additions may include:

- message brokers;
- schedulers;
- integration services.

---

# 7. AI Stack

Purpose

Provide AI infrastructure and supporting services.

Current technologies include:

- Ollama
- Open WebUI
- Qdrant
- Langfuse

Future services may include:

- model gateways;
- evaluation frameworks;
- embedding services;
- inference monitoring.

---

# 8. Why Organize by Stack?

The platform intentionally avoids creating one Docker Compose project per container.

Instead, services are grouped according to operational responsibility.

Advantages include:

- simpler deployments;
- easier maintenance;
- reduced operational complexity;
- clearer ownership;
- better scalability.

The stack becomes the operational unit rather than the individual container.

---

# 9. Deployment Philosophy

Typical deployment scenarios include:

## Example 1

Only infrastructure.

```
Infrastructure
```

Useful during workstation initialization.

---

## Example 2

Infrastructure + Databases.

```
Infrastructure

Databases
```

Useful during backend development.

---

## Example 3

Infrastructure + Automation.

```
Infrastructure

Automation
```

Useful when testing workflows.

---

## Example 4

Full AI Platform.

```
Infrastructure

AI
```

Useful when working with local language models.

---

## Example 5

Complete Platform.

```
Infrastructure

Databases

Automation

AI
```

Used for full integration testing.

---

# 10. Operational Rules

Every stack SHALL:

- have its own README;
- have its own Docker Compose file;
- connect to the shared network;
- store persistent data under `docker/data`;
- avoid storing business data inside containers.

---

# 11. Future Evolution

Future stacks may include:

```
security

monitoring

messaging

analytics

development

integration
```

The creation of a new stack SHALL be justified by a clear operational responsibility rather than by the addition of a single technology.

---

# 12. References

Related Documents

- platform-architecture.md
- docker-architecture.md
- network-architecture.md
- data-architecture.md

Related Standards

- GS-DEC-001
- GS-KB-002

End of Document.