# 10 - Codex

> Documentación de la instalación, configuración y buenas prácticas para Codex CLI como agente principal de desarrollo asistido por IA.

---

# Objetivo

Este documento registra la instalación, configuración y utilización de Codex CLI dentro de Ubuntu (WSL2).

Codex será el agente principal para el desarrollo diario, automatización de tareas, implementación de código y asistencia técnica sobre los proyectos de la workstation.

---

# Rol de Codex

Codex será utilizado para:

- Desarrollo de software.
- Implementación de nuevas funcionalidades.
- Refactorización.
- Corrección de errores.
- Automatización de tareas.
- Ejecución de pruebas.
- Generación de documentación.
- Análisis de proyectos.
- Integración con herramientas externas.

---

# Arquitectura

```
                   VS Code
                      │
                      ▼
                 Codex CLI
                      │
        ┌─────────────┼─────────────┐
        ▼             ▼             ▼
      Git         Docker       Azure CLI
        │             │             │
        └─────────────┼─────────────┘
                      ▼
                Proyecto Local
```

Codex se ejecutará exclusivamente dentro de Ubuntu (WSL2).

No se instalará en Windows.

---

# Requisitos

Antes de instalar Codex deberán estar disponibles:

- Ubuntu (WSL2)
- Git
- Node.js LTS
- Visual Studio Code
- Docker Desktop
- Azure CLI (opcional)

---

# Instalación

La instalación se realizará utilizando el procedimiento oficial de OpenAI.

Una vez instalado deberá verificarse mediante:

```bash
codex --version
```

---

# Autenticación

La autenticación se realizará mediante la cuenta oficial de OpenAI.

No se almacenarán credenciales dentro de los proyectos.

Las API Keys, cuando sean necesarias, se gestionarán mediante:

- Variables de entorno.
- Azure Key Vault.
- Gestores de secretos.

---

# Organización

Codex trabajará únicamente sobre proyectos almacenados en:

```
/home/joaco/projects
```

No se trabajará sobre:

```
/mnt/c
```

---

# Integración con Git

Codex podrá asistir en:

- análisis de repositorios;
- creación de ramas;
- revisión de cambios;
- generación de commits;
- resolución de conflictos;
- generación de mensajes de commit.

Las operaciones que modifiquen el historial requerirán confirmación del usuario.

---

# Integración con Docker

Codex podrá:

- generar Dockerfiles;
- crear `docker-compose.yml`;
- revisar imágenes;
- analizar contenedores;
- inspeccionar logs;
- optimizar configuraciones.

No eliminará contenedores ni volúmenes sin autorización.

---

# Integración con Azure

Codex podrá asistir en:

- Azure CLI.
- Azure Functions.
- Azure Storage.
- Azure Container Registry.
- Azure AI.
- Azure DevOps.
- Azure Key Vault.

Las operaciones sobre recursos cloud deberán ser revisadas antes de ejecutarse.

---

# Integración con Bases de Datos

Codex podrá trabajar con:

- PostgreSQL.
- SQL Server.
- MongoDB.
- Redis.

Podrá generar:

- consultas SQL;
- migraciones;
- modelos de datos;
- scripts de administración.

No modificará bases productivas sin autorización.

---

# Integración con MCP

Codex utilizará MCP Servers para acceder de forma segura a recursos externos.

Entre ellos:

- GitHub
- Azure
- PostgreSQL
- SQL Server
- MongoDB
- Documentación
- APIs corporativas

La configuración de MCP se documentará posteriormente.

---

# Integración con n8n

Codex podrá asistir en:

- creación de workflows;
- JavaScript;
- expresiones;
- HTTP Requests;
- integración con APIs;
- depuración de nodos.

---

# Integración con Claude Code

Codex y Claude Code son herramientas complementarias.

## Codex

Especializado en:

- implementación;
- ejecución de tareas;
- modificaciones del proyecto;
- automatización.

## Claude Code

Especializado en:

- arquitectura;
- diseño;
- documentación;
- revisión profunda;
- refactorizaciones complejas.

---

# Casos de uso

Codex se utilizará para:

- implementar funcionalidades;
- crear proyectos;
- escribir pruebas;
- corregir errores;
- actualizar dependencias;
- analizar código;
- generar documentación técnica;
- automatizar tareas repetitivas.

---

# Seguridad

Codex no deberá:

- modificar producción automáticamente;
- eliminar recursos críticos;
- almacenar credenciales;
- ejecutar operaciones destructivas sin confirmación.

---

# Variables de entorno

Cuando sea necesario utilizar autenticación mediante API se emplearán variables de entorno.

Nunca deberán almacenarse dentro del repositorio Git.

---

# Configuración futura

Se documentará la configuración de:

- perfiles;
- modelos disponibles;
- permisos;
- políticas de ejecución;
- archivos de configuración;
- integración con MCP.

---

# Buenas prácticas

- Trabajar únicamente desde Ubuntu.
- Revisar el código generado.
- Confirmar cambios antes de realizar commits.
- Ejecutar pruebas antes de finalizar una tarea.
- Mantener actualizado el contexto del proyecto.
- Utilizar Git para registrar todos los cambios.

---

# Verificaciones

## Codex

```bash
codex --version
```

---

## Estado de autenticación

```bash
codex auth status
```

---

## Configuración

```bash
codex config list
```

---

# Flujo de trabajo

Nuevo proyecto:

1. Clonar repositorio.
2. Abrir con VS Code.
3. Iniciar Codex.
4. Analizar el proyecto.
5. Implementar cambios.
6. Ejecutar pruebas.
7. Revisar diferencias.
8. Confirmar mediante Git.

---

# Relación con otros documentos

- 03-VSCode.md
- 04-Git.md
- 05-Docker.md
- 06-Node.md
- 08-Azure.md
- 09-Claude-Code.md
- 11-n8n.md

---

# Estado al finalizar esta etapa

## Completado

- Codex instalado.
- Autenticación configurada.
- Integración con Git.
- Integración con Docker.
- Integración con WSL.
- Integración con Visual Studio Code.

## Pendiente

- Configuración de MCP Servers.
- Integración avanzada con Azure.
- Automatización mediante agentes.
- Configuración de perfiles y permisos.

## Próxima etapa

**11-n8n.md**

Instalación y configuración de n8n mediante Docker, integración con bases de datos, servicios de IA y automatización de flujos de trabajo.

---

# Historial

| Fecha | Cambio |
|--------|--------|
| 2026-08 | Instalación de Codex CLI. |
| 2026-08 | Configuración inicial. |
| 2026-08 | Integración con Git, Docker y Azure. |
| 2026-08 | Definición del rol de Codex dentro de la arquitectura de IA de la workstation. |