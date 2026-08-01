# Workstation de Desarrollo e IA

> Documentación técnica para la construcción y mantenimiento de una workstation profesional orientada a desarrollo de software, Inteligencia Artificial, automatización y DevOps.

---

# Objetivo

Este repositorio documenta, paso a paso, la instalación, configuración y mantenimiento de mi entorno de trabajo.

El objetivo es que la documentación sea suficiente para:

- Reinstalar completamente la workstation desde cero.
- Replicar el entorno en otra computadora.
- Registrar todas las decisiones de arquitectura.
- Mantener un historial técnico de los cambios realizados.
- Evitar depender de la memoria de una conversación de ChatGPT.

La documentación deberá mantenerse siempre sincronizada con el estado real de la computadora.

---

# Filosofía del proyecto

Este proyecto no consiste solamente en instalar programas.

El objetivo es diseñar una workstation moderna para:

- Desarrollo de software
- Inteligencia Artificial
- Automatización
- Contenedores
- DevOps
- Azure
- n8n
- Bases de datos
- Agentes de IA

Cada decisión deberá quedar documentada y justificada.

---

# Hardware

## Equipo

- CPU: Intel Core Ultra 7 265U
- RAM: 32 GB
- SSD: 1 TB NVMe
- GPU: Intel Graphics

---

# Estado inicial

La computadora comenzó con una instalación completamente limpia de Windows.

No existía ninguna herramienta de desarrollo instalada.

Todo el proceso de instalación deberá quedar documentado.

---

# Arquitectura elegida

## Windows

Windows contendrá únicamente aplicaciones gráficas.

Ejemplos:

- Visual Studio Code
- Docker Desktop
- Windows Terminal
- Navegadores
- Office
- DBeaver
- PowerToys

---

## Ubuntu (WSL2)

Ubuntu contendrá todas las herramientas de desarrollo.

Ejemplos:

- Git
- Node.js
- Python
- Azure CLI
- GitHub CLI
- Docker CLI
- Claude Code
- Codex CLI
- herramientas Linux

Todo el desarrollo deberá ejecutarse dentro de WSL2.

---

# Organización de carpetas

Todos los proyectos vivirán dentro de Linux.

```
/home/joaco
│
├── projects/
├── docker/
├── scripts/
├── tools/
├── backups/
└── tmp/
```

No se almacenarán proyectos en `C:\`.

---

# Arquitectura general

```
Windows
│
├── VS Code
├── Docker Desktop
├── Windows Terminal
├── Navegadores
└── Aplicaciones gráficas
        │
        ▼
Ubuntu (WSL2)
│
├── Git
├── Node
├── Python
├── Azure CLI
├── Docker
├── Claude Code
├── Codex
└── Proyectos
```

---

# Estado actual

## Completado

- Windows instalado y actualizado
- WSL2 instalado
- Ubuntu 26.04 LTS instalado
- Windows Terminal instalado
- Visual Studio Code instalado
- Extensión WSL instalada
- Integración VS Code ↔ WSL funcionando
- Comando `code` configurado correctamente
- `.wslconfig` optimizado
- Memoria limitada a 16 GB
- Swap de 8 GB
- 8 procesadores asignados
- Estructura de carpetas creada

---

# Próximas etapas

La documentación se desarrollará en el siguiente orden.

| Documento | Estado |
|------------|--------|
| README.md | ✅ |
| 00-Hardware.md | ⬜ |
| 01-Windows.md | ⬜ |
| 02-WSL.md | ⬜ |
| 03-VSCode.md | ⬜ |
| 04-Git.md | ⬜ |
| 05-Docker.md | ⬜ |
| 06-Node.md | ⬜ |
| 07-Python.md | ⬜ |
| 08-Azure.md | ⬜ |
| 09-Claude-Code.md | ⬜ |
| 10-Codex.md | ⬜ |
| 11-n8n.md | ⬜ |
| 12-Bases-de-datos.md | ⬜ |
| 13-Herramientas.md | ⬜ |
| 14-Backups.md | ⬜ |
| CHANGELOG.md | ⬜ |
| TODO.md | ⬜ |

---

# Estructura del proyecto

```
workstation/
│
├── README.md
├── 00-Hardware.md
├── 01-Windows.md
├── 02-WSL.md
├── 03-VSCode.md
├── 04-Git.md
├── 05-Docker.md
├── 06-Node.md
├── 07-Python.md
├── 08-Azure.md
├── 09-Claude-Code.md
├── 10-Codex.md
├── 11-n8n.md
├── 12-Bases-de-datos.md
├── 13-Herramientas.md
├── 14-Backups.md
├── CHANGELOG.md
├── TODO.md
│
└── docs/
    ├── adr/
    ├── diagrams/
    └── screenshots/
```

---

# Criterios de documentación

Todos los documentos deberán incluir, cuando corresponda:

- Objetivo
- Requisitos previos
- Decisiones tomadas
- Justificación técnica
- Pasos realizados
- Comandos utilizados
- Configuración aplicada
- Verificaciones
- Problemas encontrados
- Soluciones implementadas
- Buenas prácticas
- Referencias oficiales
- Próximos pasos

---

# Architecture Decision Records (ADR)

Las decisiones importantes de arquitectura deberán registrarse como ADR dentro de:

```
docs/adr/
```

Ejemplos:

- ADR-001: Proyectos almacenados en WSL
- ADR-002: Docker Desktop con backend WSL2
- ADR-003: Ubuntu 26.04 LTS
- ADR-004: Organización de directorios
- ADR-005: Estrategia de backups

Cada ADR deberá documentar:

- Contexto
- Problema
- Alternativas evaluadas
- Decisión
- Consecuencias

---

# Objetivo de las próximas conversaciones

Las próximas conversaciones deberán continuar esta documentación.

Antes de avanzar con una nueva instalación o configuración:

1. Revisar el estado actual de la documentación.
2. Actualizar el documento correspondiente.
3. Registrar las decisiones tomadas.
4. Actualizar el CHANGELOG.
5. Continuar con la siguiente etapa.

La documentación es parte del proyecto y debe mantenerse tan importante como la configuración de la workstation.