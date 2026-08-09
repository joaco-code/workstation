# 07 - Python

> Documentación de la instalación, configuración y administración de Python como plataforma para automatización, Inteligencia Artificial, scripting y desarrollo de aplicaciones.

---

# Objetivo

Este documento registra la instalación y configuración de Python dentro de Ubuntu (WSL2).

Python será uno de los lenguajes principales de la workstation y se utilizará para automatización, Inteligencia Artificial, scripting, APIs y herramientas de desarrollo.

---

# ¿Por qué Python?

Python será utilizado para:

- Inteligencia Artificial
- Machine Learning
- Automatización
- Scripts de administración
- APIs
- MCP Servers
- Azure SDK
- Procesamiento de datos
- Integración con LLMs
- Utilidades del sistema

---

# Arquitectura

```
VS Code
     │
     ▼
Ubuntu (WSL2)
     │
     ▼
Python
     │
     ▼
uv
     │
     ├── Virtual Environments
     ├── Dependency Management
     ├── Package Installation
     └── Project Execution
```

Python se instalará exclusivamente dentro de Ubuntu.

No se instalará Python para Windows, salvo que alguna aplicación lo requiera explícitamente.

---

# Gestor de proyectos

## Herramienta seleccionada

```
uv
```

---

## ¿Por qué uv?

Se eligió `uv` como herramienta estándar porque:

- Es extremadamente rápido.
- Reemplaza a `pip` en la mayoría de los casos.
- Administra entornos virtuales.
- Administra dependencias.
- Ejecuta proyectos.
- Posee excelente compatibilidad con el ecosistema Python.
- Es el estándar moderno recomendado para nuevos proyectos.

---

# Estrategia

Cada proyecto Python será completamente independiente.

Cada proyecto tendrá:

```
.venv
```

creado automáticamente mediante `uv`.

Nunca se compartirán dependencias entre proyectos.

---

# Instalación

La instalación se realizará mediante el instalador oficial de `uv`.

Posteriormente se instalará la versión LTS de Python recomendada para desarrollo.

---

# Organización

Todos los proyectos Python deberán almacenarse en:

```
/home/joaco/projects
```

Ejemplo:

```
projects/

├── ai/
├── automation/
├── scripts/
├── apis/
└── experiments/
```

---

# Dependencias

Cada proyecto deberá incluir:

```
pyproject.toml
```

No se utilizará `requirements.txt` como mecanismo principal.

Podrá generarse únicamente por compatibilidad cuando sea necesario.

---

# Entornos virtuales

Cada proyecto tendrá:

```
.venv/
```

No se utilizarán entornos globales.

No se instalarán paquetes mediante:

```
pip install --user
```

---

# Variables de entorno

Cada proyecto utilizará:

```
.env
```

No se almacenarán secretos dentro del código fuente.

---

# Instalaciones globales

Se minimizarán las instalaciones globales.

Únicamente se instalarán herramientas CLI cuando resulte necesario.

---

# Integración con Visual Studio Code

VS Code detectará automáticamente:

- Python Interpreter
- `.venv`
- Debugger
- Linter
- Formatter

No será necesario configurar manualmente el intérprete para cada proyecto si se utiliza la estructura definida.

---

# Herramientas planificadas

Posteriormente podrán incorporarse:

- Ruff
- Black
- Pyright
- pytest
- Jupyter
- IPython

Cada una será documentada cuando corresponda.

---

# Casos de uso previstos

Python será utilizado para:

- Scripts de administración
- Automatización de procesos
- Azure SDK
- OpenAI SDK
- Anthropic SDK
- Google AI SDK
- MCP Servers
- Procesamiento de documentos
- OCR
- Integraciones REST
- ETL
- Data Science

---

# Buenas prácticas

- Un entorno virtual por proyecto.
- Nunca instalar paquetes globales innecesarios.
- Utilizar `pyproject.toml`.
- Versionar únicamente el código fuente.
- Excluir `.venv` mediante `.gitignore`.
- Mantener dependencias actualizadas.

---

# Verificaciones

## Python

```bash
python --version
```

---

## uv

```bash
uv --version
```

---

## Pip

```bash
pip --version
```

(Disponible por compatibilidad.)

---

## Entorno virtual

```bash
uv venv
```

Resultado esperado:

Se crea:

```
.venv/
```

---

# Flujo de trabajo

Nuevo proyecto:

1. Crear carpeta.

2. Crear entorno virtual.

```bash
uv venv
```

3. Activar entorno.

4. Instalar dependencias.

5. Crear:

```
pyproject.toml
```

6. Abrir proyecto con VS Code.

---

# Integración futura

Python se integrará con:

- Docker
- PostgreSQL
- MongoDB
- Redis
- Azure
- Claude Code
- Codex CLI
- MCP Servers
- Jupyter

---

# Relación con otros documentos

- 02-WSL.md
- 03-VSCode.md
- 05-Docker.md
- 06-Node.md
- 08-Azure.md

---

# Estado al finalizar esta etapa

## Completado

- Python instalado.
- uv instalado.
- Entornos virtuales mediante uv.
- pyproject.toml como estándar.
- Integración con VS Code.

## Pendiente

- Ruff
- Pyright
- pytest
- Jupyter
- SDKs de IA

## Próxima etapa

**08-Azure.md**

Instalación y configuración de Azure CLI, autenticación, suscripciones y entorno de desarrollo para servicios de Azure.

---

# Historial

| Fecha | Cambio |
|--------|--------|
| 2026-07 | Instalación de Python. |
| 2026-07 | Adopción de uv como gestor estándar de proyectos. |
| 2026-07 | Definición del uso de pyproject.toml. |
| 2026-07 | Configuración de entornos virtuales por proyecto. |