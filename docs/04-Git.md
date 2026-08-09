# 04 - Git

> Documentación de la instalación, configuración y buenas prácticas para Git como sistema de control de versiones de la workstation.

---

# Objetivo

Este documento registra la instalación y configuración de Git dentro de Ubuntu (WSL2).

Git será el sistema de control de versiones utilizado por todos los proyectos de la workstation.

Toda la configuración deberá realizarse dentro de Ubuntu para garantizar compatibilidad con Docker, GitHub, Azure DevOps y herramientas de desarrollo.

---

# Rol de Git

Git será responsable de:

- Control de versiones.
- Gestión de ramas.
- Historial de cambios.
- Integración con GitHub.
- Integración con Azure DevOps.
- Soporte para Claude Code.
- Soporte para Codex CLI.
- Integración con Visual Studio Code.

---

# Arquitectura

```
VS Code
     │
     ▼
Git (Ubuntu)
     │
     ├──────── GitHub
     │
     └──────── Azure DevOps
```

Git siempre se ejecutará dentro de Ubuntu.

No se instalará Git para Windows, salvo que exista una necesidad específica.

---

# Instalación

## Plataforma

Ubuntu 26.04 (WSL2)

## Método

APT

```bash
sudo apt update
sudo apt install git
```

---

# Verificación

```bash
git --version
```

Resultado esperado

```
git version x.xx.x
```

---

# Configuración global

## Nombre

```bash
git config --global user.name "..."
```

---

## Correo electrónico

```bash
git config --global user.email "..."
```

---

## Rama principal

Se utilizará:

```bash
main
```

```bash
git config --global init.defaultBranch main
```

---

## Editor

Visual Studio Code

```bash
git config --global core.editor "code --wait"
```

---

## Fin de línea

Linux

```bash
git config --global core.autocrlf input
```

Justificación

Evita problemas de compatibilidad entre Windows y Linux.

---

# Configuración recomendada

## Color

```bash
git config --global color.ui auto
```

---

## Pull

```bash
git config --global pull.rebase true
```

---

## Push

```bash
git config --global push.autoSetupRemote true
```

---

## Fetch

```bash
git config --global fetch.prune true
```

---

# Alias recomendados

```bash
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.cm commit
git config --global alias.lg "log --graph --oneline --decorate --all"
```

Estos alias buscan agilizar el trabajo diario sin modificar el comportamiento estándar de Git.

---

# Autenticación

La autenticación mediante usuario y contraseña no se utilizará.

La workstation utilizará:

- SSH Keys
- GitHub CLI
- Azure CLI

La generación y configuración de claves SSH se documentará en una sección posterior de este documento.

---

# Organización de repositorios

Todos los repositorios deberán clonarse dentro de:

```
/home/joaco/projects
```

Ejemplo

```
/home/joaco/projects/n8n
```

---

# Flujo de trabajo

El flujo recomendado será:

```
main
 │
 ├── feature/*
 ├── bugfix/*
 ├── hotfix/*
 └── release/*
```

---

# Buenas prácticas

- Un repositorio por proyecto.
- Commits pequeños y frecuentes.
- Mensajes de commit claros y descriptivos.
- No almacenar secretos en Git.
- Mantener actualizado el archivo `.gitignore`.
- Sincronizar frecuentemente con el repositorio remoto.

---

# Integración con Visual Studio Code

Visual Studio Code utilizará Git instalado dentro de Ubuntu.

No deberá utilizar Git para Windows.

La integración deberá permitir:

- Source Control
- Diff
- Merge
- Branches
- Historial
- Resolución de conflictos

---

# Integración futura

Este documento también registrará la configuración de:

- GitHub CLI
- Git Credential Manager (si fuera necesario)
- Firma de commits (GPG o SSH)
- Conventional Commits
- Hooks
- Git LFS
- Submodules (si fueran necesarios)

---

# Verificaciones

## Git instalado

```bash
git --version
```

---

## Configuración

```bash
git config --list
```

---

## Editor

```bash
git config --global core.editor
```

Resultado esperado

```
code --wait
```

---

## Rama principal

```bash
git config --global init.defaultBranch
```

Resultado esperado

```
main
```

---

# Relación con otros documentos

- 02-WSL.md
- 03-VSCode.md
- 08-Azure.md

---

# Estado al finalizar esta etapa

## Completado

- Git instalado.
- Configuración global aplicada.
- Editor configurado.
- Rama principal definida.
- Alias creados.
- Integración con VS Code funcionando.

## Pendiente

- Configuración de claves SSH.
- Conexión con GitHub.
- GitHub CLI.
- Firma de commits.
- Integración con Azure DevOps.

## Próxima etapa

**05-Docker.md**

Instalación de Docker Desktop, integración con WSL2 y preparación del entorno de contenedores.

---

# Historial

| Fecha | Cambio |
|--------|--------|
| 2026-07 | Instalación de Git. |
| 2026-07 | Configuración global inicial. |
| 2026-07 | Integración con Visual Studio Code. |
