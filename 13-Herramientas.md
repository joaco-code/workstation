# 13 - Herramientas

> Documentación de las herramientas complementarias utilizadas en la workstation para desarrollo, administración, monitoreo, productividad y soporte.

---

# Objetivo

Este documento registra las herramientas auxiliares que complementan el entorno de desarrollo.

Estas aplicaciones no forman parte del núcleo de la workstation, pero mejoran significativamente la productividad y la administración del entorno.

---

# Filosofía

Las herramientas se clasifican según su función.

Cada herramienta deberá:

- tener un propósito claro;
- mantenerse actualizada;
- estar documentada;
- evitar duplicar funcionalidades.

Siempre que exista una alternativa en línea de comandos, será la opción preferida para automatización.

---

# Arquitectura

```
                Workstation
                     │
     ┌───────────────┼────────────────┐
     ▼               ▼                ▼
 Desarrollo     Administración    Productividad
     │               │                │
     ▼               ▼                ▼
 VS Code        Docker Desktop     PowerToys
 Git            Terminal           Obsidian
 Azure CLI      DBeaver            Notepad++
 Claude Code    Monitorización     7-Zip
```

---

# Terminales

## Windows Terminal

Terminal principal de Windows.

Características:

- Múltiples pestañas.
- PowerShell.
- WSL.
- Azure Cloud Shell.
- Perfiles personalizados.

Estado:

✅ Obligatorio

---

# Utilidades de Windows

## PowerToys

Utilidades avanzadas para Windows.

Funciones principales:

- FancyZones
- PowerRename
- Text Extractor
- Keyboard Manager
- PowerToys Run
- Always On Top

Estado:

✅ Recomendado

---

## Microsoft Sysinternals

Colección de herramientas para administración y diagnóstico.

Herramientas destacadas:

- Process Explorer
- Process Monitor
- TCPView
- Autoruns
- Handle

Estado:

✅ Recomendado

---

# Compresión

## 7-Zip

Administrador de archivos comprimidos.

Formatos:

- zip
- 7z
- tar
- gzip
- rar (lectura)

Estado:

✅ Obligatorio

---

# Desarrollo

## Visual Studio Code

Editor principal.

Documentación:

```
03-VSCode.md
```

---

## Git

Control de versiones.

Documentación:

```
04-Git.md
```

---

## GitHub CLI

Cliente oficial para GitHub.

Usos:

- Pull Requests
- Issues
- Releases
- Workflows
- Repositorios

Estado:

✅ Recomendado

---

# Docker

## Docker Desktop

Administración gráfica de contenedores.

Documentación:

```
05-Docker.md
```

---

## Portainer

Interfaz web para administración de Docker.

Funciones:

- Contenedores
- Redes
- Volúmenes
- Logs
- Stacks

Estado:

✅ Recomendado

---

# Bases de Datos

## Azure Data Studio

Cliente SQL principal.

Uso:

- SQL Server
- Azure SQL

Estado:

✅ Recomendado

---

## SQL Server Management Studio (SSMS)

Administración avanzada de SQL Server.

Solo Windows.

Estado:

✅ Opcional

---

## MongoDB Compass

Cliente gráfico para MongoDB.

Estado:

✅ Recomendado

---

## Neo4j Desktop

Cliente de administración para Neo4j.

Estado:

✅ Opcional

---

## DBeaver Community

Cliente universal para bases de datos.

Motores:

- SQL Server
- PostgreSQL
- MySQL
- MariaDB
- SQLite
- Oracle
- Cassandra

Estado:

✅ Recomendado

---

## Redis Insight

Cliente gráfico para Redis.

Estado:

✅ Recomendado

---

# APIs

## Bruno

Cliente para pruebas de APIs.

Se adopta como reemplazo de Postman.

Ventajas:

- Colecciones en Git.
- Formato de texto.
- Sin dependencia de la nube.

Estado:

✅ Recomendado

---

# Navegadores

## Microsoft Edge

Uso institucional.

---

## Google Chrome

Uso general.

---

## Firefox Developer Edition

Pruebas y desarrollo web.

Estado:

✅ Opcional

---

# Documentación

## Obsidian

Gestión de documentación técnica.

Uso previsto:

- Arquitectura
- Notas
- Procedimientos
- ADR
- Diagramas

Estado:

✅ Recomendado

---

## Markdown

Toda la documentación de la workstation utilizará Markdown.

---

# Diagramas

## Mermaid

Herramienta estándar para diagramas.

Tipos:

- Flowchart
- Sequence
- ER
- Gantt
- Git
- C4

Estado:

✅ Estándar

---

# Monitoreo

## Uptime Kuma

Monitorización de servicios Docker.

Estado:

⏳ Futuro

---

## Grafana

Dashboards.

Estado:

⏳ Futuro

---

## Prometheus

Recolección de métricas.

Estado:

⏳ Futuro

---

# IA

Herramientas documentadas en:

```
09-Claude-Code.md
10-Codex.md
```

---

# Automatización

Documentada en:

```
11-n8n.md
```

---

# Utilidades Linux

Herramientas recomendadas:

- tree
- htop
- btop
- curl
- wget
- jq
- yq
- ripgrep
- fd
- bat
- eza
- fzf
- unzip
- zip
- ncdu

Todas se instalarán mediante `apt`.

---

# Seguridad

## GPG

Firma de commits.

---

## OpenSSH

Acceso remoto.

---

## KeePassXC

Administrador local de contraseñas.

Alternativamente podrán utilizarse gestores corporativos.

Estado:

✅ Recomendado

---

# Sincronización

## OneDrive

Sincronización de documentación y proyectos institucionales cuando corresponda.

No se utilizará para almacenar secretos.

---

# Actualizaciones

Las herramientas deberán revisarse periódicamente.

Frecuencia sugerida:

- Windows: mensual.
- Ubuntu: mensual.
- Docker: mensual.
- VS Code: automática.
- Azure CLI: mensual.
- GitHub CLI: mensual.

---

# Buenas prácticas

- Instalar únicamente herramientas necesarias.
- Preferir software libre cuando sea viable.
- Mantener versiones estables.
- Evitar aplicaciones redundantes.
- Documentar cualquier herramienta adicional.

---

# Relación con otros documentos

- 03-VSCode.md
- 04-Git.md
- 05-Docker.md
- 08-Azure.md
- 11-n8n.md
- 12-Bases-de-datos.md

---

# Estado al finalizar esta etapa

## Completado

- Catálogo de herramientas definido.
- Clasificación por categorías.
- Herramientas principales identificadas.
- Estrategia de mantenimiento establecida.

## Pendiente

- Instalación de herramientas opcionales.
- Configuración de monitoreo.
- Personalización de PowerToys.
- Integración de Obsidian con la documentación.

## Próxima etapa

**14-Backups.md**

Definición de la estrategia de respaldo y recuperación de toda la workstation.

---

# Historial

| Fecha | Cambio |
|--------|--------|
| 2026-08 | Definición del catálogo de herramientas de la workstation. |
| 2026-08 | Clasificación por categorías funcionales. |
| 2026-08 | Adopción de Bruno como cliente principal para APIs. |
| 2026-08 | Definición de Mermaid como estándar para diagramas. |