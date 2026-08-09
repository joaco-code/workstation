# 03 - Visual Studio Code

> Documentación de la instalación, configuración y optimización de Visual Studio Code como entorno principal de desarrollo.

---

# Objetivo

Este documento registra la instalación, configuración y buenas prácticas para utilizar Visual Studio Code como IDE principal de la workstation.

Visual Studio Code será el único editor de código utilizado durante el desarrollo de proyectos.

---

# Rol de VS Code

Visual Studio Code actuará como interfaz gráfica del entorno Linux (Ubuntu sobre WSL2).

Todo el código se ejecutará dentro de Ubuntu.

VS Code únicamente proporciona:

- Editor de código.
- Depuración (Debug).
- Terminal integrada.
- Extensiones.
- Control de versiones.
- Integración con Docker.
- Integración con GitHub.
- Integración con Azure.
- Integración con herramientas de IA.

---

# Arquitectura

```
Windows
│
├── Visual Studio Code
│
└──────────────┐
               │
               ▼
Ubuntu (WSL2)
│
├── Proyectos
├── Git
├── Node.js
├── Python
├── Docker CLI
├── Azure CLI
├── Claude Code
└── Codex CLI
```

VS Code nunca abrirá proyectos almacenados en Windows.

Todos los proyectos deberán abrirse desde Ubuntu.

---

# Instalación

## Estado

✅ Instalado

## Método

Instalador oficial de Microsoft.

Durante la instalación se seleccionaron las siguientes opciones:

- Agregar VS Code al PATH.
- Registrar VS Code como editor predeterminado.
- Agregar "Open with Code" al Explorador de Windows.
- Agregar "Open with Code" al menú contextual de carpetas.

---

# Extensiones instaladas

## WSL

| Propiedad | Valor |
|------------|------|
| Nombre | WSL |
| Identificador | `ms-vscode-remote.remote-wsl` |
| Estado | ✅ |

### Función

Permite abrir proyectos directamente dentro de Ubuntu.

---

# Primera conexión con Ubuntu

La primera apertura mediante WSL instaló automáticamente el **VS Code Server** dentro de Ubuntu.

Resultado:

```
WSL: Ubuntu
```

visible en la esquina inferior izquierda de VS Code.

Esto confirma que la integración entre Windows y Ubuntu funciona correctamente.

---

# Organización de proyectos

Todos los proyectos deberán abrirse desde:

```
/home/joaco/projects
```

Nunca desde:

```
C:\
```

ni

```
/mnt/c/
```

---

# Apertura de proyectos

Forma recomendada:

```
cd ~/projects

code .
```

o bien

```
File
Open Folder
```

seleccionando una carpeta dentro de Ubuntu.

---

# Problemas encontrados

## El comando `code` no existía

### Síntoma

PowerShell mostraba:

```
code : The term 'code' is not recognized...
```

Ubuntu mostraba:

```
Command 'code' not found
```

---

### Diagnóstico

Se verificó:

```
where code
```

Resultado:

No encontrado.

Posteriormente se comprobó que VS Code estaba instalado en:

```
C:\Program Files\Microsoft VS Code
```

pero la carpeta:

```
C:\Program Files\Microsoft VS Code\bin
```

no estaba incluida en la variable PATH.

---

### Solución

Se agregó manualmente:

```
C:\Program Files\Microsoft VS Code\bin
```

a la variable PATH del usuario.

Después de abrir una nueva sesión de PowerShell:

```
code --version
```

funcionó correctamente.

Como consecuencia, también quedó disponible desde Ubuntu:

```
code .
```

---

# Configuración recomendada

## Terminal integrada

Terminal predeterminada:

Ubuntu (WSL)

No se utilizará CMD.

PowerShell solo se utilizará para tareas específicas de Windows.

---

## Carpeta de trabajo

Siempre:

```
/home/joaco/projects
```

---

## Convención

Cada proyecto deberá abrirse en una ventana independiente de VS Code.

---

# Extensiones planificadas

Las siguientes extensiones se instalarán en etapas posteriores.

| Extensión | Estado |
|-----------|--------|
| Docker | ⬜ |
| GitHub Copilot | ⬜ |
| GitLens | ⬜ |
| Error Lens | ⬜ |
| EditorConfig | ⬜ |
| Prettier | ⬜ |
| ESLint | ⬜ |
| YAML | ⬜ |
| Markdown All in One | ⬜ |
| Python | ⬜ |
| Jupyter | ⬜ |
| Azure Tools | ⬜ |

Cada extensión será documentada cuando se incorpore.

---

# Configuración futura

En este documento se registrarán:

- `settings.json`
- `keybindings.json`
- Snippets personalizados
- Perfil de usuario
- Sincronización de configuraciones
- Temas
- Iconos
- Configuración del terminal
- Dev Containers
- Tasks
- Launch configurations

---

# Buenas prácticas

- Abrir siempre VS Code conectado a WSL.
- Mantener una ventana por proyecto.
- Evitar editar archivos ubicados en `C:\`.
- Mantener todas las extensiones actualizadas.
- Instalar únicamente extensiones realmente necesarias.
- Sincronizar la configuración utilizando la cuenta de Microsoft o GitHub.

---

# Verificaciones

## VS Code

```
code --version
```

Resultado esperado:

Visual Studio Code instalado correctamente.

---

## Integración con Ubuntu

```
code .
```

Resultado esperado:

Abre la carpeta actual utilizando WSL.

---

## Estado de la conexión

En la esquina inferior izquierda deberá visualizarse:

```
WSL: Ubuntu
```

---

# Relación con otros documentos

- 01-Windows.md
- 02-WSL.md
- 04-Git.md
- 05-Docker.md
- 08-Azure.md

---

# Estado al finalizar esta etapa

## Completado

- Visual Studio Code instalado.
- Integración con Ubuntu funcionando.
- Extensión WSL instalada.
- Comando `code` operativo.
- Apertura de proyectos desde WSL.
- PATH corregido.

## Próxima etapa

**04-Git.md**

Instalación y configuración de Git, claves SSH, GitHub y estrategia de autenticación.

---

# Historial

| Fecha | Cambio |
|--------|--------|
| 2026-07 | Instalación de Visual Studio Code. |
| 2026-07 | Instalación de la extensión WSL. |
| 2026-07 | Configuración del comando `code`. |
| 2026-07 | Integración completa con Ubuntu. |