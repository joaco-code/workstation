# 09 - Claude Code

> Documentación de la instalación, configuración y buenas prácticas para Claude Code como asistente de desarrollo basado en Inteligencia Artificial.

---

# Objetivo

Este documento registra la instalación, configuración y utilización de Claude Code dentro de Ubuntu (WSL2).

Claude Code será uno de los asistentes principales de desarrollo de la workstation y participará en tareas de programación, revisión de código, automatización y arquitectura de software.

---

# Rol de Claude Code

Claude Code será utilizado para:

- Desarrollo de software.
- Refactorización.
- Revisión de código.
- Generación de documentación.
- Automatización de tareas.
- Desarrollo asistido por IA.
- Integración con Git.
- Integración con Docker.
- Integración con Azure.
- Integración con MCP Servers.

---

# Arquitectura

```
                    VS Code
                       │
                       ▼
                Claude Code CLI
                       │
        ┌──────────────┼──────────────┐
        ▼              ▼              ▼
      Git          Docker        Azure CLI
        │              │              │
        └──────────────┼──────────────┘
                       ▼
                 Proyecto Local
```

Claude Code se ejecutará exclusivamente dentro de Ubuntu (WSL2).

No se instalará en Windows.

---

# Instalación

## Plataforma

Ubuntu 26.04 LTS

## Método

Instalación oficial mediante Node.js.

La instalación deberá realizarse utilizando el procedimiento recomendado por Anthropic.

---

# Requisitos

Antes de instalar Claude Code deberán estar disponibles:

- Node.js LTS
- npm
- Git
- Visual Studio Code
- Docker (opcional)
- Azure CLI (opcional)

---

# Autenticación

La autenticación se realizará mediante la cuenta oficial de Anthropic.

No deberán almacenarse API Keys dentro del código fuente.

Cuando se utilicen claves de API se almacenarán mediante variables de entorno o gestores de secretos.

---

# Organización

Claude Code trabajará sobre proyectos ubicados en:

```
/home/joaco/projects
```

Nunca sobre:

```
/mnt/c
```

---

# Integración con Git

Claude Code podrá:

- analizar repositorios;
- crear commits (cuando se autorice);
- generar mensajes de commit;
- revisar Pull Requests;
- sugerir refactorizaciones;
- explicar cambios.

Las operaciones destructivas deberán requerir confirmación del usuario.

---

# Integración con Visual Studio Code

Claude Code trabajará conjuntamente con Visual Studio Code.

VS Code será el entorno gráfico.

Claude Code actuará como asistente desde la terminal.

---

# Integración con Docker

Claude Code podrá:

- generar `Dockerfile`;
- generar `docker-compose.yml`;
- revisar imágenes;
- analizar contenedores;
- optimizar configuraciones.

No iniciará ni eliminará contenedores sin autorización.

---

# Integración con Azure

Claude Code podrá asistir en:

- Azure CLI.
- Azure Functions.
- Azure Storage.
- Azure Container Apps.
- Azure OpenAI.
- Azure DevOps.

Las operaciones sobre recursos cloud deberán validarse antes de ejecutarse.

---

# Integración con Bases de Datos

Claude Code podrá generar:

- consultas SQL;
- scripts de migración;
- modelos de datos;
- índices;
- procedimientos almacenados.

No modificará bases productivas sin autorización.

---

# Integración con MCP

Claude Code podrá utilizar MCP Servers para ampliar sus capacidades.

Ejemplos:

- GitHub
- PostgreSQL
- SQL Server
- MongoDB
- Azure
- Documentación
- APIs

La configuración de MCP se documentará posteriormente.

---

# Integración con n8n

Claude Code podrá asistir en:

- creación de workflows;
- generación de expresiones;
- JavaScript;
- HTTP Requests;
- integración con APIs.

---

# Integración con Codex

Claude Code convivirá con Codex CLI.

Cada herramienta podrá utilizarse según el tipo de tarea.

No comparten configuración.

---

# Casos de uso

Claude Code se utilizará para:

- generar código;
- explicar código existente;
- detectar errores;
- optimizar algoritmos;
- crear documentación;
- diseñar arquitectura;
- revisar Pull Requests;
- generar pruebas unitarias;
- generar scripts.

---

# Seguridad

Claude Code no deberá:

- almacenar credenciales;
- modificar producción sin autorización;
- ejecutar comandos destructivos automáticamente;
- exponer secretos.

---

# Variables de entorno

Cuando sea necesario utilizar:

```
ANTHROPIC_API_KEY
```

ésta deberá almacenarse:

- en `.env`;
- mediante Azure Key Vault;
- o mediante un gestor de secretos.

Nunca en el repositorio Git.

---

# Buenas prácticas

- Trabajar únicamente dentro de WSL.
- Revisar siempre el código generado.
- Mantener el contexto del proyecto actualizado.
- Confirmar operaciones críticas.
- Versionar todos los cambios mediante Git.

---

# Verificaciones

## Claude Code

```bash
claude --version
```

---

## Autenticación

```bash
claude auth status
```

---

## Configuración

```bash
claude config list
```

---

# Flujo de trabajo

Nuevo proyecto:

1. Clonar repositorio.
2. Abrir con VS Code.
3. Iniciar Claude Code.
4. Analizar el proyecto.
5. Implementar cambios.
6. Ejecutar pruebas.
7. Confirmar cambios mediante Git.

---

# Relación con otros documentos

- 03-VSCode.md
- 04-Git.md
- 05-Docker.md
- 06-Node.md
- 08-Azure.md
- 10-Codex.md
- 11-n8n.md

---

# Estado al finalizar esta etapa

## Completado

- Claude Code instalado.
- Autenticación configurada.
- Integración con Git.
- Integración con VS Code.
- Integración con WSL.

## Pendiente

- MCP Servers.
- GitHub MCP.
- PostgreSQL MCP.
- Azure MCP.
- Automatizaciones avanzadas.

## Próxima etapa

**10-Codex.md**

Instalación y configuración de Codex CLI como segundo asistente de desarrollo de la workstation.

---

# Historial

| Fecha | Cambio |
|--------|--------|
| 2026-07 | Instalación de Claude Code. |
| 2026-07 | Configuración inicial. |
| 2026-07 | Integración con Git y Visual Studio Code. |
| 2026-07 | Definición de la estrategia de uso de IA en la workstation. |