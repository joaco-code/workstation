# Project Integrations

This document describes the external systems and services that interact with the project.

It should document integrations that actually exist, as well as planned integrations when they are clearly identified as such.

## Purpose

The integration document provides a persistent reference for:

* external systems;
* APIs;
* authentication providers;
* databases;
* cloud services;
* messaging systems;
* storage services;
* third-party platforms;
* data exchanged with external systems.

It helps developers and AI assistants understand the boundaries of the project and the dependencies that exist outside the application itself.

## Integration Register

Significant integrations SHOULD be listed in a concise table.

Recommended structure:

| System         | Purpose         | Direction                          | Protocol / Mechanism | Status |
| -------------- | --------------- | ---------------------------------- | -------------------- | ------ |
| Example System | Example purpose | Inbound / Outbound / Bidirectional | HTTPS / API / SDK    | Active |

Projects SHOULD adapt the fields when additional information is useful.

## Integration Status

Each integration SHOULD have a clear status.

Recommended statuses include:

* Planned
* Active
* Temporarily unavailable
* Deprecated
* Removed
* Requires verification

Do not mark an integration as active unless it has been verified.

## Integration Details

Important integrations SHOULD have a dedicated section containing enough information to understand how the systems interact.

A recommended structure is:

```markdown id="f5cx9r"
## Example System

**Purpose:** Description of the integration.

**Status:** Active

**Direction:** Outbound

**Mechanism:** HTTPS API

### Data Exchanged

Describe the relevant data exchanged between systems.

### Authentication

Describe the authentication mechanism without documenting secrets.

### Dependencies

List relevant dependencies or prerequisites.

### Failure Handling

Describe how integration failures are detected and handled.

### References

Link to relevant documentation or configuration.
```

The example is illustrative only.

## Authentication and Secrets

This document MUST NOT contain:

* passwords;
* API keys;
* access tokens;
* private keys;
* connection strings containing credentials;
* service-account secrets.

Only the authentication **mechanism** and the location or management strategy for credentials should be documented.

For example:

```text id="l6x8dv"
Authentication: OAuth 2.0
Credentials: Managed outside the repository
```

Credential-related references SHOULD be maintained according to the project's security process.

## Data Exchange

Document important information exchanged between systems.

When relevant, describe:

* data format;
* request and response structure;
* direction;
* synchronization behavior;
* frequency;
* ownership;
* validation requirements.

Detailed API specifications SHOULD remain in the appropriate technical documentation rather than being duplicated here.

## Data Ownership

When multiple systems exchange the same business data, document which system is authoritative.

For example:

```text id="5b9evj"
System A
   │
   │ authoritative data
   ▼
System B
   │
   │ derived data
   ▼
System C
```

This distinction is particularly important when data is synchronized between systems.

## Failure Handling

Important integrations SHOULD document what happens when the external system is unavailable.

Possible mechanisms include:

* retry;
* timeout;
* queue;
* fallback;
* caching;
* manual intervention;
* error reporting.

The actual behavior MUST reflect the implementation.

## Integration Dependencies

Document dependencies that can affect application operation.

Examples include:

* external API availability;
* DNS;
* identity providers;
* certificates;
* network access;
* cloud resources;
* third-party services.

Operational procedures SHOULD be documented separately when required.

## Planned Integrations

Planned integrations MAY be documented, but MUST be clearly distinguished from active integrations.

For example:

```text id="3q5mvi"
Status: Planned
```

Planned integrations SHOULD NOT be described as part of the current architecture unless they are already implemented.

## Integration Changes

Significant changes to an integration SHOULD trigger a review of:

* `docs/architecture.md`;
* `docs/current-state.md`;
* `docs/backlog.md`;
* relevant ADRs;
* security documentation.

Changes that affect authentication, data ownership or system boundaries SHOULD receive additional review.

## AI-Assisted Development

Before modifying an integration, AI assistants SHOULD:

1. read the relevant integration documentation;
2. inspect the implementation;
3. verify the external dependency;
4. identify authentication requirements;
5. identify data ownership;
6. review relevant security constraints;
7. check related ADRs.

AI assistants MUST NOT invent API endpoints, credentials, service capabilities or integration behavior.

If an integration cannot be verified from the project, it SHOULD be marked as requiring verification.

## Principle

> **Document the boundary between the project and external systems clearly, especially who owns the data and how the systems communicate.**
