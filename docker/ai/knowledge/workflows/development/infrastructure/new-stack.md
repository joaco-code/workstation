---
name: New Stack
id: GS-WF-103
version: 1.0.0
status: Approved
category: Development
owner: Platform Engineering
last_review: 2026-08-06
---

# New Stack

## 1. Purpose

This workflow defines the standard procedure for introducing a new Docker Stack into the AI Development Platform.

A Stack represents a logical group of related services sharing a common operational purpose.

Stacks SHALL integrate with the existing platform architecture and follow the established engineering conventions.

---

# 2. Scope

This workflow applies to every new stack created under:

```text
~/docker/stacks/
```

Examples include:

- AI Services
- Automation
- Databases
- Infrastructure
- Monitoring
- Observability
- Messaging

---

# 3. Stack Principles

Every stack SHALL:

- have a single operational purpose;
- group related services only;
- remain independently deployable;
- use the shared platform conventions;
- be fully documented.

Stacks SHOULD remain loosely coupled with other stacks.

---

# 4. Decision Process

Before creating a new stack, evaluate whether the functionality belongs to:

- an existing stack;
- a new logical domain.

A new stack SHALL only be created when introducing a distinct operational capability.

---

# 5. Directory Creation

Every stack SHALL be created under:

```text
~/docker/stacks/
```

Example:

```text
stacks/

monitoring/
```

The directory name SHOULD:

- be lowercase;
- use hyphenated words when necessary;
- describe the functional domain.

---

# 6. Minimum Structure

Every stack SHALL contain:

```text
stack-name/

README.md

docker-compose.yml
```

Additional files MAY be added as required.

---

# 7. Docker Compose

Each stack SHALL expose a single entry point.

Current platform standard:

```text
docker-compose.yml
```

The Compose file SHALL:

- define only services belonging to the stack;
- use named volumes;
- use shared Docker networks;
- externalize configuration whenever possible.

---

# 8. Data Management

Persistent data SHALL NOT be stored inside the stack directory.

Persistent data belongs under:

```text
~/docker/data/
```

Every service SHALL reference its corresponding data directory.

---

# 9. Shared Resources

Reusable assets SHALL be placed under:

```text
~/docker/shared/
```

Examples:

- scripts
- templates
- volumes
- backups
- networks

Stacks SHOULD reuse shared resources instead of duplicating them.

---

# 10. Documentation

Every stack SHALL include a README describing:

- purpose;
- contained services;
- dependencies;
- exposed ports;
- volumes;
- networks;
- operational considerations.

Documentation SHALL be updated together with infrastructure changes.

---

# 11. Validation

Before considering a stack complete:

- directory structure exists;
- README exists;
- docker-compose.yml exists;
- persistent data is externalized;
- shared resources are reused;
- stack follows platform conventions.

---

# 12. Completion Criteria

A stack is considered successfully created when:

- it integrates into the platform architecture;
- it can be deployed independently;
- documentation exists;
- operational responsibilities are clearly defined.

---

# 13. Current Platform Organization

Current stacks include:

```text
stacks/

ai/

automation/

databases/

infrastructure/
```

Future stacks SHALL follow the same organizational model.

---

# 14. Related Documents

Architecture

- Repository Structure
- Docker Architecture
- Stack Strategy

Technologies

- Docker
- Portainer

Related Workflows

- New Project
- New Service
- Dependency Update
- Release Process

---

# 15. Future Evolution

Future platform capabilities may introduce additional workflows, including:

- Stack Update
- Stack Versioning
- Compose Validation
- Service Migration
- Stack Decommissioning

These workflows will extend the stack lifecycle without replacing this creation procedure.

---

# 16. Engineering Philosophy

Stacks represent operational domains rather than collections of containers.

Infrastructure organization SHALL prioritize:

- clarity;
- modularity;
- reproducibility;
- maintainability;
- operational independence.

Every new stack should strengthen the overall platform architecture rather than increase its complexity.

---

End of Document.