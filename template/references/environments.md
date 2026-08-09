# Environments

This document describes the environments associated with the project.

It provides enough information to identify and distinguish environments and their associated resources without exposing credentials or other sensitive information.

## Purpose

Environment documentation helps developers and AI assistants understand:

* which environments exist;
* the purpose of each environment;
* which resources belong to each environment;
* how environments differ;
* which environment should be used for a particular operation.

## Environment Register

Projects SHOULD maintain a simple inventory of their environments.

| Environment | Purpose                       | Status   | Deployment |
| ----------- | ----------------------------- | -------- | ---------- |
| Development | Local development and testing | Active   | —          |
| Staging     | Pre-production validation     | Optional | —          |
| Production  | Live system                   | Optional | —          |

The table is a template. Remove environments that do not exist in the project and add project-specific environments when required.

## Environment Details

Each environment SHOULD have a dedicated section when additional information is useful.

Recommended structure:

```markdown
## Development

**Purpose:** Local development and testing.

**Status:** Active

**Application:** <resource or location>

**Database:** <resource or location>

**Hosting:** <resource or location>

**Deployment:** <description>

**Notes:**
Additional environment-specific information.
```

The information MUST describe the actual project environment.

## Local Development

If the project can be run locally, document:

* required operating system;
* runtime requirements;
* local services;
* databases;
* containers;
* configuration requirements;
* development-specific dependencies.

Do not store credentials or secret values here.

## Remote Environments

For hosted environments, document the resources required to identify them.

Examples include:

* application/service name;
* cloud resource name;
* resource group;
* subscription identifier, when safe to document;
* region;
* database name;
* hosting platform.

Only information considered safe for repository storage SHOULD be included.

## Environment Boundaries

Resources SHOULD belong clearly to a specific environment.

For example:

```text
Development
├── Application
├── Database
└── Supporting services

Production
├── Application
├── Database
└── Supporting services
```

AI assistants MUST NOT assume that a resource belongs to an environment without verification.

## Deployment

Document how code reaches each environment when this information is relevant.

Example:

```text
Local
  ↓
Version Control
  ↓
CI
  ↓
Development
  ↓
Validation
  ↓
Production
```

The actual deployment flow MUST reflect the project.

## Environment-Specific Configuration

Document configuration **names and purpose**, not secret values.

Example:

```text
DATABASE_URL
API_BASE_URL
AUTH_ISSUER
```

Sensitive values SHOULD be provided through the project's approved configuration or secret-management mechanism.

## Secrets

This document MUST NOT contain:

* passwords;
* API keys;
* access tokens;
* private keys;
* database credentials;
* connection strings containing credentials;
* secret configuration values.

If credentials are required, document where they are managed rather than storing them here.

For example:

```text
Secrets: Managed through the project's approved secret-management mechanism.
```

## Environment Safety

Operations SHOULD be performed against the correct environment.

Particularly sensitive operations include:

* database migrations;
* data deletion;
* infrastructure changes;
* production deployments;
* configuration changes;
* credential rotation.

When an operation could affect production, the target environment SHOULD be explicitly verified before execution.

## AI-Assisted Development

AI assistants SHOULD consult this document before performing environment-specific operations.

Claude MUST:

* verify the target environment;
* distinguish local, development, staging and production resources;
* avoid assuming that similarly named resources belong to the same environment;
* avoid executing destructive operations against an unverified environment.

When environment information is missing or ambiguous, Claude SHOULD stop and request clarification rather than guessing.

## Maintenance

Update this document when:

* an environment is created or removed;
* infrastructure changes;
* deployment targets change;
* resources are renamed;
* the environment strategy changes.

The document SHOULD remain a concise inventory rather than becoming an operational manual.

## Principle

> **Know which environment you are operating on before changing anything.**
