# 14 - Backups

> Estrategia de respaldo, recuperación y continuidad operativa de la workstation.

---

# Objetivo

Este documento define la política de respaldo y recuperación de toda la workstation.

El objetivo es garantizar que cualquier falla de hardware, software o error humano pueda recuperarse rápidamente sin pérdida significativa de información.

---

# Filosofía

Todo puede reinstalarse.

Lo único irremplazable son:

- datos;
- código fuente;
- configuraciones;
- documentación;
- secretos;
- automatizaciones.

Por ello se aplicará una estrategia de copias de seguridad basada en múltiples niveles.

---

# Objetivos de recuperación

## RPO

Recovery Point Objective

Máxima pérdida aceptable:

```
24 horas
```

---

## RTO

Recovery Time Objective

Tiempo máximo para volver a operar:

```
2 horas
```

---

# Arquitectura

```
                 Workstation
                      │
      ┌───────────────┼────────────────┐
      ▼               ▼                ▼
   Código         Configuración     Datos
      │               │                │
      ▼               ▼                ▼
     Git          Exportaciones     Docker Volumes
      │               │                │
      └───────────────┼────────────────┘
                      ▼
               Copias de seguridad
                      │
      ┌───────────────┼────────────────┐
      ▼               ▼                ▼
 Disco local      OneDrive      Disco externo
```

---

# Estrategia 3-2-1

Se adoptará la regla 3-2-1.

- 3 copias de la información.
- 2 medios distintos.
- 1 copia fuera del equipo.

---

# Elementos a respaldar

## Código fuente

Ubicación

```
/home/joaco/projects
```

Método

Git + repositorios remotos.

Frecuencia

Cada commit.

---

## Documentación

Incluye:

- README
- documentación técnica
- ADR
- procedimientos
- notas

Ubicación

```
/home/joaco/projects/workstation
```

Método

Git + OneDrive.

---

## Docker

Respaldar:

- docker-compose.yml
- .env
- scripts
- configuraciones

No es necesario respaldar imágenes Docker, ya que pueden reconstruirse.

---

## Docker Volumes

Respaldar:

- PostgreSQL
- SQL Server
- MongoDB
- Neo4j
- Cassandra
- Redis (si contiene datos persistentes)
- n8n
- Portainer

Frecuencia

Diaria.

---

## Bases de Datos

Cada motor tendrá su propio procedimiento de exportación.

### SQL Server

Backup nativo.

---

### MongoDB

`mongodump`

---

### Redis

Persistencia RDB/AOF.

---

### Neo4j

Dump de base.

---

### Cassandra

Snapshots.

---

# n8n

Respaldar:

- Workflows
- Credenciales cifradas
- Variables
- Base PostgreSQL
- Archivos

Frecuencia

Diaria.

---

# Variables de entorno

Respaldar:

```
.env
```

Nunca subirlos a repositorios públicos.

---

# SSH

Respaldar:

```
~/.ssh
```

Incluye:

- claves privadas;
- claves públicas;
- configuración.

---

# Git

Respaldar:

```
~/.gitconfig
```

---

# VS Code

Respaldar:

- settings.json
- keybindings.json
- snippets
- extensiones (Settings Sync)

---

# Windows Terminal

Respaldar:

Configuración JSON.

---

# PowerShell

Respaldar:

Perfil de PowerShell.

---

# WSL

Periódicamente exportar la distribución.

Ejemplo:

```powershell
wsl --export Ubuntu backup.tar
```

Esto permite restaurar el entorno completo en otra máquina.

---

# Secretos

Nunca almacenar:

- Passwords
- API Keys
- Tokens

en el repositorio Git.

Utilizar:

- Azure Key Vault
- KeePassXC
- Variables de entorno

---

# Automatización

Se desarrollarán scripts para respaldar automáticamente:

- Docker
- Bases de datos
- Documentación
- Configuraciones
- WSL

Los scripts se almacenarán en:

```
/home/joaco/scripts
```

---

# Versionado

Todo el código y la documentación deberán estar versionados mediante Git.

No se utilizarán copias manuales como mecanismo principal.

---

# Almacenamiento

## Local

SSD principal.

---

## OneDrive

Documentación.

Configuraciones.

Scripts.

---

## Disco externo

Backups completos.

Periodicidad:

Mensual.

---

# Recuperación

En caso de reemplazar el equipo:

1. Instalar Windows.
2. Instalar WSL.
3. Restaurar Ubuntu.
4. Clonar repositorios.
5. Restaurar Docker.
6. Restaurar bases de datos.
7. Restaurar n8n.
8. Restaurar configuraciones.
9. Verificar funcionamiento.

---

# Verificaciones

Se realizarán pruebas periódicas de restauración.

Un backup que nunca fue probado no puede considerarse confiable.

---

# Checklist mensual

- Actualizar Windows.
- Actualizar Ubuntu.
- Actualizar Docker.
- Verificar Git.
- Verificar Azure CLI.
- Verificar backups.
- Verificar restauración.
- Limpiar imágenes Docker.
- Limpiar volúmenes no utilizados.

---

# Buenas prácticas

- Automatizar los respaldos.
- Documentar todos los procedimientos.
- Verificar periódicamente la restauración.
- No depender de un único medio.
- Mantener varias versiones históricas.

---

# Relación con otros documentos

- 02-WSL.md
- 04-Git.md
- 05-Docker.md
- 11-n8n.md
- 12-Bases-de-datos.md
- 13-Herramientas.md

---

# Estado al finalizar esta etapa

## Completado

- Estrategia de backup definida.
- Estrategia de recuperación definida.
- Política 3-2-1 adoptada.
- Procedimientos de restauración documentados.

## Pendiente

- Scripts automáticos.
- Programación de tareas.
- Backups incrementales.
- Restauración automatizada.

## Próximo documento

**CHANGELOG.md**

Registro cronológico de cambios realizados sobre la workstation y su documentación.

---

# Historial

| Fecha | Cambio |
|--------|--------|
| 2026-08 | Definición de la estrategia de backup. |
| 2026-08 | Adopción de la política 3-2-1. |
| 2026-08 | Documentación del proceso de recuperación de desastres. |