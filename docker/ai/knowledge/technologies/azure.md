---
name: Microsoft Azure
id: GS-TECH-001
version: 1.0.0
status: Approved
category: Cloud Platform
criticality: High
vendor: Microsoft
license: Commercial
owner: Infrastructure
last_review: 2026-08-04
---

# Microsoft Azure

## 1. Purpose

Microsoft Azure is the primary cloud platform used by the AI Development Platform.

Azure provides cloud infrastructure, identity management, AI services, automation capabilities and development tooling that complement the local workstation.

Within this platform, Azure acts as the bridge between local engineering workflows and enterprise cloud services.

---

# 2. Overview

Azure is a cloud computing platform offering Infrastructure as a Service (IaaS), Platform as a Service (PaaS) and Software as a Service (SaaS).

The workstation currently interacts with Azure through the Azure CLI and Microsoft Entra ID authentication.

Future integrations may include additional Azure services as the platform evolves.

---

# 3. Platform Role

Azure is responsible for:

- cloud authentication;
- subscription management;
- resource administration;
- AI service integration;
- enterprise identity;
- future cloud deployments.

Azure is not used to host the local development environment.

Local execution remains Docker-first.

---

# 4. Current Environment

Current tenant

```
Asociación Escolar Goethe
```

Primary domain

```
goethe.edu.ar
```

Authentication

Microsoft Entra ID

Subscription

Treffpunkt Goethe

Environment

AzureCloud

---

# 5. Current Usage

The workstation currently uses Azure for:

- Azure CLI authentication;
- subscription management;
- tenant administration;
- Azure resource management;
- cloud automation.

No production workloads are currently deployed from this workstation.

---

# 6. Installed Components

Current component

Azure CLI

Purpose

Provides command-line access to Azure resources.

Typical commands include:

```
az login

az account show

az group list

az resource list
```

Additional extensions may be installed as required.

---

# 7. Integration

Azure integrates with multiple platform components.

```
                Azure

                  │

      ┌───────────┼───────────┐

      │           │           │

Azure CLI      GitHub      Claude Code

      │

      ▼

Docker Workstation
```

Future integrations may include:

- Docker Container Registry;
- Azure AI Foundry;
- Azure OpenAI;
- Azure Monitor;
- Azure Key Vault;
- Azure Storage.

---

# 8. Security

Authentication SHALL use Microsoft Entra ID.

Credentials SHALL NOT be hardcoded.

Authentication tokens SHALL remain managed by Azure CLI.

Least-privilege access SHALL be preferred.

Production subscriptions SHOULD remain isolated from development environments.

---

# 9. Best Practices

The platform adopts the following engineering practices.

- authenticate through Azure CLI;
- avoid storing credentials in repositories;
- use resource groups consistently;
- separate development and production resources;
- document cloud resources as Infrastructure as Code whenever possible.

---

# 10. Operational Notes

Azure connectivity depends upon:

- Internet connectivity;
- authenticated Azure CLI session;
- valid tenant membership;
- sufficient RBAC permissions.

Authentication status may be verified using:

```
az account show
```

---

# 11. Future Evolution

The platform roadmap includes evaluation of:

- Azure AI Foundry;
- Azure OpenAI;
- Azure Container Registry;
- Azure Key Vault;
- Azure Monitor;
- Azure App Service;
- Azure Functions;
- Azure DevOps integration.

Future adoption will follow the platform governance process.

---

# 12. Relationship with Other Technologies

Azure works together with:

- Docker
- Git
- GitHub
- Claude Code
- Codex CLI

Future integrations may extend to:

- n8n
- Langfuse
- Open WebUI
- Ollama
- SQL Server

---

# 13. References

Official Documentation

https://learn.microsoft.com/azure/

Azure CLI

https://learn.microsoft.com/cli/azure/

Related Documents

- GS-ARC-002 Docker Architecture
- GS-TECH-002 Docker
- GS-TECH-003 GitHub
- GS-TECH-004 Claude Code

End of Document.