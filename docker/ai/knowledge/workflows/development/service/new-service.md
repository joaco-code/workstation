---
name: New Service
id: GS-WF-102
version: 1.0.0
status: Approved
category: Development
owner: Platform Engineering
last_review: 2026-08-06
---

# New Service

## 1. Purpose

This workflow defines the standard procedure for creating a new service within an existing project of the AI Development Platform.

A service represents an independently deployable software component with a clearly defined responsibility.

Every service SHALL be designed to integrate consistently with the platform architecture, engineering conventions and operational standards.

---

# 2. Scope

This workflow applies to all service types, including:

- REST APIs
- Web Applications
- Background Workers
- Scheduled Jobs
- AI Services
- Integration Services
- Infrastructure Utilities
- Internal Platform Services

Technology-specific implementation details are documented separately.

---

# 3. Service Principles

Every service SHALL:

- have a single primary responsibility;
- expose well-defined interfaces;
- remain independently maintainable;
- be documented;
- be version controlled;
- follow platform conventions.

Services SHOULD minimize coupling with other services.

---

# 4. Service Lifecycle

Every service follows the lifecycle below.

```text
Need

↓

Service Definition

↓

Architecture

↓

Implementation

↓

Documentation

↓

Validation

↓

Deployment

↓

Maintenance
```

---

# 5. Service Definition

Before implementation begins, define:

## Functional Purpose

Document:

- business objective;
- responsibilities;
- expected consumers.

---

## Boundaries

Identify:

- inputs;
- outputs;
- dependencies;
- external integrations.

A service SHALL have clearly defined ownership.

---

## Technology

Select technologies according to platform standards.

Technology choices SHALL remain consistent with the existing project unless an architectural decision justifies otherwise.

---

# 6. Repository Structure

A new service SHALL integrate into the existing repository structure defined by the project.

The service SHOULD include:

```text
service/

README.md

configuration

source code

tests

documentation
```

Exact directory structures depend on the selected technology stack.

---

# 7. Configuration

Configuration SHALL be externalized.

The following SHALL NOT be committed:

- credentials;
- secrets;
- API keys;
- certificates.

Environment-specific values SHOULD be managed separately.

---

# 8. Dependencies

Before implementation:

- identify required dependencies;
- minimize unnecessary libraries;
- use supported versions;
- evaluate security implications.

Every dependency increases operational complexity.

---

# 9. Documentation

Every service SHALL include documentation describing:

- purpose;
- architecture;
- interfaces;
- configuration;
- deployment considerations;
- operational notes.

Documentation SHALL evolve together with implementation.

---

# 10. Validation

Before considering the service operational:

- project conventions are respected;
- documentation exists;
- dependencies are identified;
- configuration is externalized;
- service can be executed locally.

---

# 11. Completion Criteria

A service is considered successfully created when:

- its purpose is documented;
- responsibilities are defined;
- implementation structure exists;
- documentation is available;
- the service is ready for development.

---

# 12. Relationship with Other Workflows

Typical lifecycle:

```text
New Project

↓

New Service

↓

New Stack

↓

Dependency Update

↓

Release Process
```

---

# 13. Related Documents

Core

- CLAUDE.md
- conventions.md
- permissions.md
- settings.md

Knowledge

- Architecture
- Technologies
- Security

Related Workflows

- New Project
- New Stack
- Dependency Update
- Release Process

---

# 14. Continuous Improvement

Service creation practices SHALL evolve together with the engineering platform.

Future improvements SHOULD emphasize:

- modularity;
- maintainability;
- observability;
- security;
- automation.

End of Document.