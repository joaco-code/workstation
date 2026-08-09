---
name: AI Workflows
id: GS-WF-AI-000
version: 1.0.0
status: Approved
category: AI
owner: Platform Engineering
last_review: 2026-08-06
---

# AI Workflows

## 1. Purpose

The AI Workflows domain defines the standard engineering processes for integrating AI assistants into the software development lifecycle of the AI Development Platform.

Its objective is to ensure that AI is used consistently, transparently and as an accelerator for engineering activities while preserving human ownership of technical decisions.

AI SHALL augment engineering work, not replace engineering responsibility.

---

# 2. Scope

This domain applies to the use of AI assistants during:

- software development;
- architecture design;
- documentation;
- code generation;
- code review;
- operational support;
- knowledge management.

Technology-specific capabilities are documented separately under Technologies.

---

# 3. Objectives

The AI Workflows domain pursues the following objectives:

- standardize AI-assisted engineering;
- improve development productivity;
- preserve engineering quality;
- ensure reproducible AI interactions;
- maintain traceability of AI-generated artifacts.

AI usage SHALL remain aligned with the engineering standards defined by the platform.

---

# 4. AI Workflow Lifecycle

AI-assisted engineering follows the lifecycle below.

```text
Context

↓

Prompt

↓

AI Generation

↓

Human Review

↓

Implementation

↓

Validation

↓

Documentation
```

Human validation SHALL be performed before accepting AI-generated output.

---

# 5. Workflow Organization

Current workflows contained in this domain:

```text
ai/

├── README.md
├── use-claude.md
├── use-codex.md
├── prompt-lifecycle.md
└── ai-assisted-development.md
```

Additional workflows MAY be incorporated as AI capabilities evolve.

---

# 6. Current Workflows

## Use Claude

Defines the recommended engineering workflow for using Claude during platform development.

---

## Use Codex

Defines the recommended engineering workflow for using Codex during software development activities.

---

## Prompt Lifecycle

Defines how prompts are created, refined, validated and maintained throughout their lifecycle.

---

## AI-Assisted Development

Defines how AI integrates into the overall software development process while preserving engineering quality and accountability.

---

# 7. Engineering Principles

AI-assisted engineering SHALL follow these principles:

- Human Ownership
- Context First
- Verification Required
- Transparency
- Continuous Learning

AI-generated artifacts SHALL be reviewed before becoming part of the platform.

---

# 8. Relationship with Other Domains

AI Workflows consume knowledge from every engineering domain.

```text
Architecture

↓

Technologies

↓

Memory

↓

Workflows

↓

AI Execution
```

AI assistants rely on the platform knowledge base to produce consistent engineering outcomes.

---

# 9. Related Documents

Core

- CLAUDE.md
- conventions.md
- permissions.md
- settings.md

Knowledge

- Architecture
- Technologies
- Memory
- Governance

Related Workflows

- Development
- Operations
- Governance

---

# 10. Future Evolution

The AI Workflows domain is expected to expand with workflows covering areas such as:

- multi-agent collaboration;
- autonomous task execution;
- prompt libraries;
- context optimization;
- AI evaluation;
- model selection;
- AI quality assurance.

New workflows SHALL be introduced as operational practices mature.

---

# 11. Engineering Philosophy

AI is an engineering accelerator.

Its purpose is to reduce repetitive work, improve knowledge access and assist engineering decision-making while preserving human responsibility for architecture, implementation and operations.

The objective is to build a platform where AI becomes an integrated member of the engineering workflow rather than an isolated productivity tool.

---

End of Document.