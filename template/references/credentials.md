# Credentials Management

This document describes how credentials and secrets required by the project are managed.

It MUST NOT contain actual credentials.

## Purpose

This document provides a persistent reference for:

* which systems require credentials;
* what type of credential is required;
* where credentials are managed;
* who or what is responsible for them;
* how credential changes should be handled.

The objective is to make credential management understandable without exposing sensitive information.

## Credential Register

Projects SHOULD maintain an inventory of credential requirements without storing their values.

Recommended structure:

| System | Credential Type | Purpose | Storage | Status |
| ------ | --------------- | ------- | ------- | ------ |
| —      | —               | —       | —       | —      |

Example:

| System       | Credential Type                  | Purpose            | Storage                 | Status |
| ------------ | -------------------------------- | ------------------ | ----------------------- | ------ |
| Database     | Password / connection credential | Database access    | Approved secret manager | Active |
| External API | API key                          | API authentication | Approved secret manager | Active |

The examples are illustrative only.

## Credential Types

Credentials MAY include:

* passwords;
* API keys;
* access tokens;
* OAuth client secrets;
* service-account credentials;
* private keys;
* certificates containing private material;
* database credentials;
* cloud credentials.

The actual type SHOULD be documented without recording its secret value.

## Secret Storage

Secrets MUST be stored using the project's approved secret-management mechanism.

Possible mechanisms include:

* cloud secret managers;
* environment-specific secret stores;
* operating-system credential stores;
* secure CI/CD secret stores;
* local development secret mechanisms.

The actual mechanism MUST be documented for the project.

## Repository Rules

Secrets MUST NOT be committed to the repository.

Do not store credentials in:

```text id="s5w2jk"
source code
Markdown files
configuration files
.env files
scripts
JSON files
YAML files
Git history
documentation
```

unless the project explicitly uses a secure mechanism designed for encrypted secret storage and the repository policy permits it.

A `.gitignore` entry is useful for preventing accidental commits, but it is **not a secret-management solution**.

## Configuration

Application configuration SHOULD reference secrets without containing their values.

For example:

```text id="0m4w6x"
DATABASE_URL=<provided externally>
API_KEY=<provided externally>
```

The actual values SHOULD be injected through the project's approved configuration mechanism.

## Local Development

Local development credentials SHOULD be provided through an appropriate local secret mechanism.

Examples include:

* environment variables;
* local secret stores;
* development-specific configuration excluded from version control.

Developers SHOULD NOT copy production credentials into local development environments unless explicitly required and authorized.

## CI/CD

CI/CD credentials SHOULD be provided through the CI/CD platform's approved secret or identity mechanism.

Where supported, short-lived or federated identities SHOULD be preferred over long-lived static credentials.

Actual credential values MUST NOT appear in workflow files, logs or commits.

## Rotation

Credentials SHOULD be rotated when:

* they are suspected to be exposed;
* personnel with access change;
* a credential reaches its expiration;
* the associated service requires rotation;
* security policy requires it.

If a credential is exposed, the appropriate response is to **revoke or rotate it**, not merely remove it from the current file.

Removing a secret from a working tree does not remove it from Git history.

## Access

Credential access SHOULD follow the principle of least privilege.

Each credential SHOULD have only the permissions required for its intended purpose.

Where possible, separate credentials SHOULD be used for:

* development;
* testing;
* staging;
* production.

Production credentials SHOULD NOT be reused unnecessarily across environments.

## Credential Ownership

Important credentials SHOULD have an identifiable owner or responsible team.

Example:

```text id="6k7w1p"
System: External API
Credential: API key
Owner: Project administrator
Storage: Approved secret manager
Rotation: According to provider/security policy
```

Do not document personal passwords or other sensitive personal information.

## Incident Response

If a credential is accidentally exposed:

1. Treat it as compromised.
2. Revoke or rotate it immediately.
3. Identify where it was exposed.
4. Remove the secret from the affected location.
5. Check repository history when applicable.
6. Review systems for unauthorized use.
7. Document the incident according to the project's security process.

Do not paste the exposed credential into an issue, chat, commit message or documentation while investigating it.

## AI-Assisted Development

AI assistants MUST NOT request users to paste passwords, API keys, private keys or other secrets into the conversation when a secure alternative exists.

Claude SHOULD use the project's approved credential mechanism rather than receiving secret values directly in chat.

AI assistants MUST NOT:

* commit credentials;
* write credentials into documentation;
* expose secrets in command output;
* copy production secrets into project files;
* assume that a credential is safe because it is already present somewhere in the project.

If a secret is discovered in the repository, Claude SHOULD treat it as potentially compromised and follow the project's security procedure.

## Maintenance

Update this document when:

* a new external system requires authentication;
* the credential-management mechanism changes;
* an environment introduces a new credential requirement;
* authentication architecture changes;
* a credential is retired.

The credential inventory SHOULD describe requirements, not secret values.

## Principle

> **Document where credentials are managed, never the credentials themselves.**
