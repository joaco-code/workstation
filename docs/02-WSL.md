# 02 - WSL (Windows Subsystem for Linux)

> Documentación de la instalación, configuración y optimización de Windows Subsystem for Linux (WSL2) como entorno principal de desarrollo.

---

# Objetivo

Este documento registra la instalación y configuración de WSL2.

WSL constituye el entorno principal donde se ejecutarán todas las herramientas de desarrollo de la workstation.

El objetivo es disponer de un entorno Linux moderno, reproducible y completamente integrado con Windows.

---

# ¿Por qué WSL2?

Se eligió WSL2 como plataforma principal de desarrollo por las siguientes razones:

- Compatibilidad casi nativa con Linux.
- Excelente integración con Windows.
- Backend oficial para Docker Desktop.
- Alto rendimiento en proyectos Node.js, Python y Git.
- Entorno idéntico al de servidores Linux.
- Compatibilidad con herramientas modernas de IA.

---

# Arquitectura

```
Windows
│
├── Windows Terminal
├── VS Code
├── Docker Desktop
│
└──────────────┐
               │
               ▼
Ubuntu (WSL2)
│
├── Git
├── Node.js
├── Python
├── Azure CLI
├── Claude Code
├── Codex CLI
├── Docker CLI
├── n8n
└── Proyectos
```

Todo el desarrollo se realiza dentro de Ubuntu.

Windows únicamente proporciona la interfaz gráfica.

---

# Distribución elegida

| Característica | Valor |
|----------------|------|
| Distribución | Ubuntu |
| Versión | Ubuntu 26.04 LTS |
| Backend | WSL2 |

---

# Instalación

## Verificación

```
wsl --status
```

Resultado esperado

- Default Version: 2
- Ubuntu como distribución predeterminada

---

## Versiones

```
wsl --version
```

Resultado registrado:

```
WSL version: 2.7.11
Kernel: 6.18
```

---

# Configuración de recursos

Se creó el archivo:

```
C:\Users\joaco\.wslconfig
```

Configuración aplicada:

```ini
[wsl2]
memory=16GB
processors=8
swap=8GB
localhostForwarding=true
```

---

## Justificación

Con 32 GB de RAM física se decidió asignar:

| Recurso | Valor |
|----------|------|
| RAM | 16 GB |
| CPU | 8 |
| Swap | 8 GB |

Esta configuración permite ejecutar simultáneamente:

- Docker
- PostgreSQL
- MongoDB
- SQL Server
- n8n
- VS Code
- Azure CLI

sin comprometer el rendimiento de Windows.

---

# Configuraciones descartadas

Durante la configuración se intentó utilizar:

```ini
autoMemoryReclaim=gradual
```

y posteriormente:

```ini
pageReporting=true
```

Ambas opciones fueron rechazadas por la versión instalada de WSL mediante el mensaje:

```
Unknown key
```

Se decidió eliminarlas para mantener compatibilidad.

---

# Organización del sistema

Toda la información de desarrollo se almacena dentro de Ubuntu.

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

---

# Convención de proyectos

Todos los proyectos deberán almacenarse en:

```
/home/joaco/projects
```

No se utilizarán carpetas como:

```
C:\Dev
```

ni

```
C:\Users\...
```

---

# Motivo

Trabajar dentro del sistema de archivos Linux ofrece:

- mayor rendimiento;
- mejor compatibilidad con Docker;
- mejor rendimiento de Git;
- mejor rendimiento de Node.js;
- menos problemas de permisos.

---

# Integración con VS Code

VS Code se conecta directamente a Ubuntu mediante la extensión:

```
Remote - WSL
```

Los proyectos se abrirán siempre desde Ubuntu.

Ejemplo:

```
code .
```

desde:

```
/home/joaco/projects
```

---

# Comandos utilizados

## Estado

```bash
wsl --status
```

---

## Versiones

```bash
wsl --version
```

---

## Distribuciones disponibles

```bash
wsl --list --online
```

---

## Reiniciar WSL

```powershell
wsl --shutdown
```

---

## Información de Ubuntu

```bash
lsb_release -a
```

---

## Usuario

```bash
whoami
```

---

## Directorio actual

```bash
pwd
```

---

## Memoria

```bash
free -h
```

Resultado esperado

```
15 GiB RAM
8 GiB Swap
```

---

## Procesadores

```bash
nproc
```

Resultado esperado

```
8
```

---

# Verificaciones realizadas

| Verificación | Estado |
|--------------|--------|
| Ubuntu instalada | ✅ |
| WSL2 activo | ✅ |
| Memoria aplicada | ✅ |
| Procesadores aplicados | ✅ |
| Swap aplicado | ✅ |
| Integración con VS Code | ✅ |

---

# Buenas prácticas

- Mantener todos los proyectos dentro de Ubuntu.
- No desarrollar sobre `/mnt/c`.
- Mantener una única distribución Linux.
- Actualizar Ubuntu periódicamente.
- Evitar instalar herramientas duplicadas en Windows.

---

# Problemas encontrados

## Inicio en `/mnt/c/WINDOWS/system32`

Al abrir WSL desde PowerShell, la sesión iniciaba en:

```
/mnt/c/WINDOWS/system32
```

Esto es el comportamiento esperado, ya que WSL hereda el directorio actual de Windows.

Para trabajar se utilizará siempre:

```bash
cd ~/projects
```

---

## Parámetros no soportados

Las opciones:

```
autoMemoryReclaim
```

y

```
pageReporting
```

no fueron reconocidas por la versión instalada de WSL.

Se eliminaron de la configuración.

---

# Relación con otros documentos

- 00-Hardware.md
- 01-Windows.md
- 03-VSCode.md
- 05-Docker.md

---

# Historial

| Fecha | Cambio |
|--------|--------|
| 2026-07 | Instalación de WSL2. |
| 2026-07 | Instalación de Ubuntu 26.04 LTS. |
| 2026-07 | Configuración de `.wslconfig`. |
| 2026-07 | Definición de la estructura de directorios. |
| 2026-07 | Integración con Visual Studio Code. |