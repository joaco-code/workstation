# 06 - Node.js

> Documentación de la instalación, configuración y administración de Node.js como plataforma de ejecución para aplicaciones JavaScript y TypeScript.

---

# Objetivo

Este documento registra la instalación y configuración de Node.js dentro de Ubuntu (WSL2).

Node.js será la plataforma base para el desarrollo de aplicaciones JavaScript, TypeScript y la ejecución de herramientas modernas de automatización e Inteligencia Artificial.

---

# ¿Por qué Node.js?

Node.js será utilizado para:

- Desarrollo de aplicaciones JavaScript.
- Desarrollo TypeScript.
- n8n.
- Herramientas CLI.
- MCP Servers.
- Claude Code.
- Codex CLI.
- Scripts de automatización.
- APIs.
- Frameworks modernos.

---

# Arquitectura

```
VS Code
     │
     ▼
Ubuntu (WSL2)
     │
     ▼
fnm
     │
     ▼
Node.js
     │
     ├── npm
     ├── npx
     └── Corepack
            │
            ├── pnpm
            └── Yarn
```

Node.js se instalará exclusivamente dentro de Ubuntu.

---

# Gestor de versiones

## Herramienta seleccionada

```
fnm
```

(Fast Node Manager)

---

## Motivos

Se eligió `fnm` por:

- Mayor velocidad.
- Menor consumo de memoria.
- Instalación sencilla.
- Excelente integración con WSL.
- Compatibilidad con VS Code.
- Compatibilidad con múltiples versiones de Node.

---

# Instalación

La instalación se realizará mediante el instalador oficial.

Posteriormente se configurará el shell para cargar automáticamente `fnm`.

---

# Estrategia de versiones

No se instalará una única versión de Node.

Cada proyecto podrá definir su propia versión utilizando:

```
.node-version
```

o

```
.nvmrc
```

`fnm` seleccionará automáticamente la versión correspondiente.

---

# Versión por defecto

Se utilizará siempre la versión LTS más reciente disponible.

Ejemplo

```
Node.js 24 LTS
```

(La versión concreta deberá actualizarse cuando exista una nueva LTS.)

---

# npm

npm se instalará junto con Node.js.

Será utilizado únicamente cuando una herramienta no soporte otro gestor de paquetes.

---

# Corepack

Corepack deberá habilitarse.

Permitirá administrar:

- pnpm
- Yarn

sin necesidad de instalaciones globales adicionales.

---

# Gestor de paquetes recomendado

Para nuevos proyectos se utilizará:

```
pnpm
```

Motivos:

- Mayor velocidad.
- Menor consumo de disco.
- Caché compartida.
- Excelente rendimiento en monorepos.

npm permanecerá disponible por compatibilidad.

---

# Instalaciones globales

Se minimizará el uso de paquetes globales.

Solo se instalarán globalmente herramientas de línea de comandos.

Ejemplos:

- npm
- pnpm
- Claude Code
- Codex CLI
- n8n (solo si fuera necesario)
- Azure Functions Core Tools (si aplica)

Las dependencias de los proyectos se instalarán localmente.

---

# Organización

Todos los proyectos Node vivirán en:

```
/home/joaco/projects
```

Ejemplo

```
projects/

├── api/
├── frontend/
├── n8n-workflows/
├── mcp/
└── scripts/
```

---

# Variables de entorno

Cada proyecto utilizará:

```
.env
```

No se almacenarán secretos en el código fuente.

---

# Integración con Visual Studio Code

VS Code utilizará el Node.js instalado en Ubuntu.

No deberá utilizar Node instalado en Windows.

Las extensiones detectarán automáticamente la versión activa mediante `fnm`.

---

# Integración futura

Node.js será utilizado por:

- n8n
- Claude Code
- Codex CLI
- MCP Servers
- Azure Functions
- Next.js
- Express
- NestJS
- React
- Vue
- Angular
- Vite

---

# Buenas prácticas

- Utilizar siempre versiones LTS.
- Evitar instalaciones globales innecesarias.
- Mantener un archivo `.node-version` en cada proyecto.
- Preferir `pnpm` para nuevos desarrollos.
- Actualizar Node periódicamente.
- Utilizar dependencias locales.

---

# Verificaciones

## Node

```bash
node --version
```

---

## npm

```bash
npm --version
```

---

## fnm

```bash
fnm --version
```

---

## Corepack

```bash
corepack --version
```

---

## pnpm

```bash
pnpm --version
```

---

# Flujo de trabajo

Para un nuevo proyecto:

1. Crear carpeta en:

```
/home/joaco/projects
```

2. Seleccionar versión de Node.

3. Inicializar proyecto.

4. Instalar dependencias.

5. Configurar `.env`.

6. Abrir con VS Code.

---

# Relación con otros documentos

- 02-WSL.md
- 03-VSCode.md
- 05-Docker.md
- 07-Python.md
- 11-n8n.md

---

# Estado al finalizar esta etapa

## Completado

- fnm instalado.
- Node.js LTS instalado.
- npm disponible.
- Corepack habilitado.
- pnpm configurado.
- Integración con VS Code funcionando.

## Pendiente

- Claude Code.
- Codex CLI.
- Azure Functions.
- MCP Servers.

## Próxima etapa

**07-Python.md**

Instalación de Python, gestión de versiones, entornos virtuales y preparación para automatización, IA y scripting.

Nota (2026-08): pnpm init con pnpm 11.18 puede generar un bloque devEngines.packageManager.version con un rango (^11.18.0) que provoca un error al ejecutar pnpm add. Como solución temporal, eliminar ese bloque o reemplazar la versión por una versión exacta.
---

# Historial

| Fecha | Cambio |
|--------|--------|
| 2026-07 | Instalación de fnm. |
| 2026-07 | Instalación de Node.js LTS. |
| 2026-07 | Configuración de Corepack. |
| 2026-07 | Habilitación de pnpm. |
