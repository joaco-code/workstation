# Claude Context

This file contains temporary or session-oriented context that may help Claude understand the current working situation of the project.

It is not the project's source of truth.

## Purpose

Use this file for context that is useful while working on the project but does not belong in the permanent project documentation.

Examples include:

* current work focus;
* temporary investigation context;
* relevant files being examined;
* unresolved questions;
* temporary constraints;
* context needed to continue an ongoing task.

## Permanent vs Temporary Information

Permanent project knowledge SHOULD be stored in the appropriate project documentation.

```text
CLAUDE.md
    Project-level instructions and working rules

docs/
    Permanent project knowledge

adr/
    Architectural decisions

references/
    External references and environment information

.claude/context.md
    Temporary working context

.claude/session-notes.md
    Session-specific notes
```

Information should be moved to the appropriate permanent document when it becomes relevant beyond the current working context.

## Current Context

Use this section to describe the current working situation.

```markdown
## Current Task

<What is currently being worked on>

## Relevant Files

- <file>
- <file>

## Relevant Context

<Important temporary context>

## Open Questions

- <question>

## Constraints

- <temporary constraint>
```

The contents of this section SHOULD reflect the actual project situation.

## Working Assumptions

Temporary assumptions MAY be recorded here when they are necessary to continue an investigation.

Assumptions MUST be clearly identified as assumptions.

They MUST NOT be presented as verified project facts.

Example:

```text
Assumption:
The development environment appears to use <technology>, but this has not yet been verified.
```

Once verified, the information SHOULD be moved to the appropriate permanent documentation.

## Investigation Context

When investigating an unfamiliar project, this file MAY record:

* areas already inspected;
* files relevant to the investigation;
* findings that still require verification;
* questions raised during analysis.

This helps prevent repeated work during a session.

## AI-Assisted Development

Claude SHOULD read this file when continuing an ongoing task.

Claude MUST distinguish between:

* permanent project documentation;
* verified project facts;
* temporary context;
* assumptions;
* unresolved questions.

Claude MUST NOT treat temporary context as authoritative when it conflicts with verified project documentation or the actual implementation.

If information becomes important to the project beyond the current task, Claude SHOULD move it to the appropriate permanent documentation rather than keeping it only here.

## Maintenance

This file SHOULD remain concise.

Temporary information that is no longer useful SHOULD be removed.

The file SHOULD NOT become a duplicate of `CLAUDE.md`, `docs/` or `references/`.

## Principle

> **Context helps continue the work; project documentation preserves the knowledge.**
