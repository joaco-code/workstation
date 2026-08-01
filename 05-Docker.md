# 05 - Docker

> Documentación de la instalación, configuración y buenas prácticas para Docker Desktop y Docker Engine como plataforma de contenedores de la workstation.

---

# Objetivo

Este documento registra la instalación, configuración y utilización de Docker como plataforma estándar para la ejecución de aplicaciones, bases de datos y servicios de desarrollo.

Docker permitirá disponer de un entorno reproducible, aislado y fácilmente mantenible.

---

# ¿Por qué Docker?

En esta workstation se decidió utilizar Docker como mecanismo principal para ejecutar servicios.

No se instalarán aplicaciones como PostgreSQL, MongoDB, Redis o n8n directamente sobre Ubuntu.

Cada servicio se ejecutará dentro de su propio contenedor.

---

# Arquitectura

```
Windows
│
├── Docker Desktop
│
└──────────────┐
               │
               ▼
Ubuntu (WSL2)
│
├── Docker Engine
├── Docker CLI
├── Docker Compose
│
└──────────────┐
               │
               ▼
Contenedores
│
├── PostgreSQL
├── MongoDB
├── SQL Server
├── Redis
├── n8n
├── Ollama (futuro)
├── MCP Servers (futuro)
└── Otros servicios
```

---

# Filosofía

Docker será utilizado para ejecutar:

- Bases de datos
- APIs
- Automatizaciones
- Herramientas de IA
- Servicios auxiliares
- Entornos de prueba
- Aplicaciones temporales

No se instalarán estos servicios directamente sobre Ubuntu.

---

# Componentes

## Docker Desktop

Se instalará en Windows.

Responsabilidades:

- Administración del motor Docker.
- Integración con WSL2.
- Gestión de imágenes.
- Gestión de redes.
- Gestión de volúmenes.

---

## Docker Engine

Se ejecutará dentro de Ubuntu mediante la integración con Docker Desktop.

No se instalará Docker Engine manualmente utilizando APT.

---

## Docker CLI

Disponible dentro de Ubuntu.

Será la interfaz principal para administrar los contenedores.

---

## Docker Compose

Se utilizará Docker Compose V2.

Toda la infraestructura deberá definirse mediante archivos:

```
docker-compose.yml
```

No se crearán contenedores manualmente desde Docker Desktop.

---

# Integración con WSL

Docker Desktop deberá integrarse únicamente con:

```
Ubuntu
```

No se habilitarán distribuciones Linux adicionales.

---

# Organización

Dentro de Ubuntu se utilizará:

```
/home/joaco/docker
```

Estructura propuesta

```
docker
│
├── postgres/
├── mongodb/
├── redis/
├── sqlserver/
├── n8n/
├── ollama/
├── shared/
├── networks/
└── backups/
```

Cada servicio tendrá su propio directorio.

---

# Organización de proyectos

Los proyectos continuarán almacenándose en:

```
/home/joaco/projects
```

Docker no modificará esta estructura.

---

# Volúmenes

Todos los datos persistentes deberán almacenarse mediante Docker Volumes.

No se utilizarán bases de datos efímeras para proyectos importantes.

Ejemplos:

- PostgreSQL
- MongoDB
- Redis
- SQL Server
- n8n

---

# Redes

Se utilizarán redes Docker específicas para cada stack.

Ejemplo:

```
n8n-network
```

```
database-network
```

```
development-network
```

Esto mejora el aislamiento entre servicios.

---

# Imágenes

Preferencias:

- Imágenes oficiales.
- Versiones LTS cuando existan.
- Evitar la etiqueta `latest` en entornos persistentes.

Ejemplo:

```
postgres:17
```

en lugar de

```
postgres:latest
```

---

# Contenedores planificados

| Servicio | Estado |
|----------|--------|
| PostgreSQL | ⬜ |
| MongoDB | ⬜ |
| SQL Server | ⬜ |
| Redis | ⬜ |
| n8n | ⬜ |
| Ollama | ⬜ |
| Qdrant | ⬜ |
| MinIO | ⬜ |

---

# Configuración

Docker Desktop deberá configurarse para:

- Backend WSL2.
- Inicio automático con Windows.
- Integración únicamente con Ubuntu.
- Recursos administrados desde `.wslconfig`.

No se configurarán límites de memoria dentro de Docker Desktop.

La memoria será administrada exclusivamente por WSL.

---

# Buenas prácticas

- Un servicio por contenedor.
- Un `docker-compose.yml` por stack.
- Variables sensibles en archivos `.env`.
- Nunca guardar contraseñas en el compose.
- Utilizar imágenes oficiales.
- Mantener imágenes actualizadas.
- Eliminar imágenes no utilizadas periódicamente.

---

# Integración con VS Code

Se instalará posteriormente la extensión:

Docker

Esta permitirá:

- Administrar contenedores.
- Ver logs.
- Ejecutar comandos.
- Explorar imágenes.
- Explorar volúmenes.

---

# Integración futura

Docker se integrará con:

- Dev Containers
- Claude Code
- Codex CLI
- Azure CLI
- GitHub Actions
- MCP Servers

---

# Verificaciones

## Docker

```bash
docker version
```

---

## Docker Compose

```bash
docker compose version
```

---

## Contenedores

```bash
docker ps
```

---

## Imágenes

```bash
docker images
```

---

## Volúmenes

```bash
docker volume ls
```

---

## Redes

```bash
docker network ls
```

---

# Flujo de trabajo

Todo nuevo servicio deberá seguir este proceso:

1. Crear carpeta dentro de `/home/joaco/docker`.
2. Crear `docker-compose.yml`.
3. Crear `.env`.
4. Crear volumen persistente.
5. Crear red Docker.
6. Iniciar mediante Docker Compose.
7. Documentar el servicio.

No se utilizará `docker run` para servicios permanentes.

---

# Relación con otros documentos

- 02-WSL.md
- 03-VSCode.md
- 06-Node.md
- 07-Python.md
- 11-n8n.md
- 12-Bases-de-datos.md

---

# Estado al finalizar esta etapa

## Completado

- Docker Desktop instalado.
- Integración con WSL2 habilitada.
- Docker CLI funcionando.
- Docker Compose disponible.
- Directorio `/home/joaco/docker` preparado.

## Pendiente

- PostgreSQL
- MongoDB
- SQL Server
- Redis
- n8n
- Ollama
- Dev Containers

## Próxima etapa

**06-Node.md**

Instalación y administración de Node.js mediante un gestor de versiones, configuración de npm y preparación del entorno para aplicaciones JavaScript, TypeScript y herramientas como n8n.

---

# Historial

| Fecha | Cambio |
|--------|--------|
| 2026-07 | Instalación de Docker Desktop. |
| 2026-07 | Integración con WSL2. |
| 2026-07 | Definición de la estructura de directorios Docker. |
| 2026-07 | Definición de la estrategia de contenedores. |