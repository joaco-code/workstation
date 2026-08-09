---

name: Project Template
version: 1.0.0
status: Approved
owner: Platform Engineering
last_review: 2026-08-06
-----------------------

# Project Template

## 1. Purpose

This template provides the standard structure for all software projects developed within the AI Development Platform.

Its objective is to ensure that every project begins with a consistent engineering foundation, enabling predictable development, effective AI collaboration and long-term maintainability.

Every new project SHOULD be created from this template.

---

# 2. Objectives

The template aims to:

* standardize project organization;
* accelerate project initialization;
* improve engineering consistency;
* facilitate AI-assisted development;
* preserve project knowledge;
* simplify long-term maintenance.

---

# 3. Repository Structure

```text
template/

├── CLAUDE.md
├── README.md
├── .gitignore
│
├── docs/
├── adr/
├── references/
├── src/
├── tests/
├── scripts/
├── assets/
├── temp/
└── .claude/
```

Each directory has a defined engineering purpose.

---

# 4. Directory Overview

## Root

Contains the project identity and engineering configuration.

Key files:

* `README.md`
* `CLAUDE.md`
* `.gitignore`

---

## docs/

Project-specific documentation.

Typical contents include:

* architecture
* roadmap
* migration plan
* backlog
* integrations
* current status

---

## adr/

Architecture Decision Records (ADRs) specific to the project.

This directory documents significant technical decisions made throughout the project lifecycle.

---

## references/

External information required by the project.

Typical contents include:

* repositories
* cloud resources
* external systems
* environment references
* credential locations

This directory SHALL NOT store secrets or passwords.

---

## src/

Application source code.

The internal organization depends on the project's technology stack.

---

## tests/

Automated tests.

Projects SHOULD maintain an appropriate testing strategy.

---

## scripts/

Utility scripts supporting development, deployment and maintenance.

---

## assets/

Static project assets.

Examples include:

* images
* diagrams
* sample files
* design resources

---

## temp/

Temporary working files.

Contents MAY be removed at any time and SHOULD NOT contain permanent project artifacts.

---

## .claude/

Project-specific AI context.

Typical files include:

* context
* session notes

This directory provides working context for Claude Code without replacing the project's official documentation.

---

# 5. Engineering Principles

Projects created from this template SHALL follow the platform engineering principles defined by the AI Development Platform.

In particular:

* Documentation First
* Architecture Before Implementation
* Version Control
* AI-Assisted Engineering
* Continuous Improvement

---

# 6. Relationship with Platform Knowledge

Projects created from this template are expected to consume the shared engineering knowledge maintained by the platform.

This includes:

* Architecture
* Technologies
* Workflows
* Governance

Project documentation complements—but does not duplicate—the platform knowledge base.

---

# 7. Customization

Projects MAY extend this structure when justified by technical requirements.

However:

* existing directories SHOULD retain their intended purpose;
* unnecessary structural changes SHOULD be avoided;
* platform conventions SHOULD remain consistent.

---

# 8. Project Lifecycle

Projects created from this template typically follow the lifecycle below.

```text
Initialization

↓

Architecture

↓

Development

↓

Testing

↓

Deployment

↓

Maintenance

↓

Continuous Improvement
```

The template provides the engineering framework throughout this lifecycle.

---

# 9. Related Documents

Platform Knowledge

* Architecture
* Technologies
* Workflows
* Governance

Project Documents

* CLAUDE.md
* Documentation
* ADRs
* References

---

# 10. Engineering Philosophy

A project template is more than a directory structure.

It establishes a consistent engineering environment where documentation, architecture, implementation and AI collaboration evolve together.

By standardizing project organization, the template enables engineers and AI assistants to work with predictable structures, reusable workflows and shared engineering practices across every project developed within the platform.

---

End of Document.
