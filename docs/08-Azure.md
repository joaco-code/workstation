# 08 - Azure

> Documentación de la instalación, configuración y administración del entorno Microsoft Azure para desarrollo, automatización, Inteligencia Artificial y DevOps.

---

# Objetivo

Este documento registra la instalación y configuración de las herramientas necesarias para trabajar con Microsoft Azure desde Ubuntu (WSL2).

Azure será la plataforma cloud principal de esta workstation para:

- Desarrollo
- DevOps
- Inteligencia Artificial
- Automatización
- Contenedores
- Gestión de recursos cloud

---

# Rol de Azure

Azure será utilizado para:

- Administración de recursos Cloud
- Azure AI
- Azure OpenAI
- Azure Storage
- Azure Functions
- Azure Container Apps
- Azure App Service
- Azure SQL
- Azure Key Vault
- Azure DevOps
- Azure Container Registry (ACR)

---

# Arquitectura

```
VS Code
     │
     ▼
Ubuntu (WSL2)
     │
     ▼
Azure CLI
     │
     ├── Azure Subscription
     ├── Resource Groups
     ├── Azure AI
     ├── Azure Storage
     ├── Azure Functions
     ├── Azure Container Registry
     ├── Azure Key Vault
     └── Azure DevOps
```

Toda la interacción con Azure se realizará mediante Azure CLI ejecutándose dentro de Ubuntu.

---

# Componentes

## Azure CLI

Será la herramienta principal para administrar Azure.

No se utilizará Azure PowerShell como herramienta principal.

---

## Azure Developer CLI

Se evaluará la incorporación de:

```
azd
```

para automatizar despliegues de aplicaciones modernas.

---

## Azure Functions Core Tools

Se instalarán únicamente si se desarrollan Azure Functions.

---

## Azure Storage Explorer

Aplicación gráfica opcional para administración de Storage Accounts.

Se instalará en Windows.

---

# Instalación

La instalación se realizará mediante el repositorio oficial de Microsoft.

Posteriormente se verificará:

```bash
az version
```

---

# Autenticación

La autenticación estándar será mediante:

```bash
az login
```

Utilizando el navegador del sistema.

---

# Gestión de suscripciones

Después del inicio de sesión deberá verificarse:

```bash
az account list
```

y seleccionar la suscripción activa:

```bash
az account set
```

---

# Gestión de tenants

La workstation podrá trabajar con múltiples tenants.

Siempre deberá verificarse el tenant activo mediante:

```bash
az account show
```

Antes de ejecutar operaciones críticas se confirmará:

- Tenant
- Subscription
- Usuario autenticado

---

# Azure DevOps

Posteriormente se integrará con:

- Repositorios Git
- Pipelines
- Artifacts
- Boards

La autenticación se realizará mediante Microsoft Entra ID.

---

# Azure AI

Azure se utilizará para trabajar con:

- Azure OpenAI
- Azure AI Foundry
- Modelos LLM
- Embeddings
- Agentes

La configuración específica se documentará cuando corresponda.

---

# Azure Container Registry

Docker podrá publicar imágenes en:

Azure Container Registry (ACR)

mediante:

```bash
az acr login
```

---

# Azure Key Vault

Las credenciales sensibles deberán almacenarse en:

Azure Key Vault

Nunca deberán almacenarse:

- Tokens
- Passwords
- API Keys

dentro del código fuente.

---

# Variables de entorno

Cada proyecto utilizará:

```
.env
```

Los secretos podrán obtenerse desde Azure Key Vault cuando corresponda.

---

# Integración con Docker

Docker podrá autenticarse contra:

- Azure Container Registry

y desplegar imágenes hacia Azure.

---

# Integración con Visual Studio Code

VS Code utilizará posteriormente:

- Azure Resources
- Azure Functions
- Azure Storage
- Azure Containers

Las extensiones se documentarán en una etapa posterior.

---

# Integración futura

Azure se integrará con:

- Docker
- GitHub
- GitHub Actions
- Claude Code
- Codex CLI
- n8n
- PostgreSQL
- Azure SQL
- Cosmos DB
- Azure AI

---

# Buenas prácticas

- Utilizar Azure CLI como herramienta principal.
- Verificar siempre la suscripción activa.
- Verificar el tenant antes de realizar cambios.
- Utilizar grupos de recursos.
- Automatizar mediante scripts.
- No almacenar secretos localmente.

---

# Verificaciones

## Azure CLI

```bash
az version
```

---

## Usuario autenticado

```bash
az account show
```

---

## Suscripciones

```bash
az account list
```

---

## Resource Groups

```bash
az group list
```

---

## Ubicaciones

```bash
az account list-locations
```

---

# Flujo de trabajo

Nuevo proyecto Azure:

1. Crear Resource Group.
2. Crear recursos necesarios.
3. Configurar autenticación.
4. Configurar variables de entorno.
5. Desarrollar localmente.
6. Publicar mediante Azure CLI o GitHub Actions.

---

# Relación con otros documentos

- 03-VSCode.md
- 04-Git.md
- 05-Docker.md
- 07-Python.md
- 09-Claude-Code.md
- 10-Codex.md

---

# Estado al finalizar esta etapa

## Completado

- Azure CLI instalada.
- Inicio de sesión configurado.
- Tenant validado.
- Suscripción configurada.
- Integración con WSL.

## Pendiente

- Azure Developer CLI.
- Azure Functions Core Tools.
- Azure AI.
- Azure Container Registry.
- Azure Key Vault.
- Azure DevOps.

## Próxima etapa

**09-Claude-Code.md**

Instalación y configuración de Claude Code como asistente de desarrollo integrado en la workstation.

---

# Historial

| Fecha | Cambio |
|--------|--------|
| 2026-07 | Instalación de Azure CLI. |
| 2026-07 | Configuración de autenticación. |
| 2026-07 | Definición de la arquitectura Azure de la workstation. |