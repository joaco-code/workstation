# Project References

This directory contains references to external resources that are relevant to the project.

References provide additional context that may be required to understand, develop, operate or maintain the project.

## Purpose

The `references/` directory may contain references to:

* external documentation;
* official vendor documentation;
* related repositories;
* external services;
* environments;
* APIs;
* technical specifications;
* project resources;
* external systems.

The goal is to make important external dependencies discoverable without duplicating information unnecessarily.

## Reference Types

References SHOULD be organized according to their purpose.

The standard template includes:

```text
references/
├── README.md
├── external-links.md
├── environments.md
└── credentials.md
```

### `external-links.md`

Contains relevant external URLs and documentation.

Examples include:

* official product documentation;
* API documentation;
* related repositories;
* project dashboards;
* service portals.

### `environments.md`

Contains information needed to identify project environments and their associated resources.

It SHOULD describe environments without exposing credentials or secrets.

### `credentials.md`

Documents **how credentials are managed**, not the credentials themselves.

It MUST NOT contain passwords, API keys, tokens, private keys or other secrets.

## External References

Each important external reference SHOULD include enough context to explain why it matters.

Recommended structure:

```markdown id="g5kq9p"
## Example Resource

**Type:** Documentation

**Purpose:** Explains the external service used by the project.

**URL:** https://example.com/documentation

**Status:** Active
```

References SHOULD use official or authoritative sources whenever available.

## Source of Truth

External references provide context but do not automatically become the project's source of truth.

For example:

```text id="5f8t2d"
External documentation
        │
        ▼
Project implementation
        │
        ▼
Project documentation
```

If project behavior differs from external documentation, the actual implementation and verified project documentation SHOULD be investigated rather than assuming the external reference is correct for the project.

## URLs

URLs SHOULD be documented with a short description explaining their purpose.

Avoid maintaining unexplained lists of links.

When a reference becomes obsolete, it SHOULD be marked accordingly or removed if its historical value is not relevant.

## Secrets

Secrets MUST NOT be stored in this directory.

Do not store:

```text id="5h1s8n"
passwords
API keys
access tokens
private keys
certificates containing private material
service-account credentials
database passwords
connection strings containing secrets
```

A reference MAY document where credentials are managed.

For example:

```text id="q4rj6v"
Credential storage: External secret manager
Credential owner: Project administrator
```

## Environment References

Environment-specific information SHOULD identify the environment and relevant resources without exposing sensitive information.

For example:

```text id="9q8x1v"
Development
- Application: <resource identifier>
- Database: <resource identifier>
- Hosting: <resource identifier>

Production
- Application: <resource identifier>
- Database: <resource identifier>
- Hosting: <resource identifier>
```

Actual values SHOULD only be documented when they are safe to store in the repository.

## Maintaining References

References SHOULD be reviewed when:

* an external service changes;
* an integration is replaced;
* an environment changes;
* documentation moves;
* a dependency is removed;
* authentication mechanisms change.

Broken or obsolete references SHOULD NOT remain silently presented as active resources.

## AI-Assisted Development

AI assistants SHOULD consult relevant references before working with external systems.

Claude MAY use references to:

* locate official documentation;
* identify external services;
* understand environment boundaries;
* locate related repositories;
* understand project dependencies.

AI assistants MUST NOT assume that an external reference represents an active project dependency without verification.

AI assistants MUST NOT retrieve, expose or commit credentials merely because a credential-management reference exists.

## Relationship with Project Documentation

```text id="m4r0bp"
docs/
    Internal project knowledge

adr/
    Architectural decisions

references/
    External resources and dependencies
```

References SHOULD complement project documentation rather than duplicate it.

## Principle

> **References point to external knowledge; they do not replace the project's own verified knowledge.**
