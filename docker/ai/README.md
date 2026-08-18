## 📊 Resumen Ejecutivo del Repositorio

* **Estructura:** 32 directorios / 131 archivos de configuración, esquemas y normativas.
* **Núcleo de Reglas:** `core/` (Estándar GS-ENG-001, permisos y configuraciones).
* **Base de Conocimiento (KB):** `knowledge/` (Arquitectura, Seguridad, Tecnologías, Workflows y Memoria Técnica).
* **Capa Ejecutable:** `execution/` (Agentes, Skills, Automatizaciones, Optimización, Gobernanza, AI Engineering y Codex CLI).

---

## 🏛️ Mapa de Directorios

```text
docker/ai/
├── README.md                           # Índice general y arquitectura
├── claude-roadmap.md                   # Hoja de ruta de integración
├── core/                               # Directivas innegociables
│   ├── CLAUDE.md                       # Reglas de interacción para Claude Code
│   ├── conventions.md                  # Estándar de Ingeniería GS-ENG-001
│   ├── permissions.md                  # Matriz de permisos por agente
│   └── settings.md                     # Variables y entornos
├── execution/                          # Módulos operativos y ejecutores
│   ├── agents/                         # Prompts de System Roles (8 Agentes)
│   ├── ai-engineering/                 # Comparativa, Benchmarks y Guías Multi-Modelo
│   ├── automation/                     # Scripts y generadores de docs/ADRs
│   ├── codex/                          # Runner y wrapper para OpenAI Codex CLI
│   ├── governance/                     # SemVer, Compliance, Auditoría y Ciclo de Vida
│   ├── optimization/                   # Control de costos, contexto, memoria y latencia
│   └── skills/                         # Schemas JSON Draft 2020-12 (Azure, DB, .NET)
└── knowledge/                          # Base de Conocimiento Central (KB)
    ├── architecture/                   # Diseños de Red, Docker, MCP y Backups
    ├── memory/                         # Decisiones (ADRs), Roadmap y Issues
    ├── prompts/                        # Librería de prompts reutilizables
    ├── security/                       # ISO27001, OWASP, DevSecOps y Threat Modeling
    ├── technologies/                   # Especificaciones de 20+ tecnologías
    └── workflows/                      # Guías paso a paso (AI, Dev, Gov, Ops, Workstation)

```

---

## 🗂️ Módulos Principales

### 1. `core/`

Define las reglas de comportamiento de la workstation. Ningún agente ni desarrollador puede violar los límites establecidos en `permissions.md` ni los estándares de `conventions.md`.

### 2. `execution/`

* **Agents:** Prompts especializados para `@backend-engineer`, `@database-architect`, `@software-architect`, `@security-auditor`, `@azure-engineer`, `@docker-specialist`, `@documentation-writer` y `@code-reviewer`.
* **Skills:** Esquemas JSON validados para la generación determinista de código .NET 10, consultas MSSQL y plantillas Azure Bicep.
* **Codex:** Wrapper `codex-runner.sh` para invocar la CLI de OpenAI utilizando la suscripción de ChatGPT Plus.
* **Governance & Optimization:** Control de costos de tokens, versionado semántico y logs de auditoría.

### 3. `knowledge/`

* **Technologies:** Guías de stack actualizadas (.NET 10, SQL Server, Redis, n8n, Azure, Docker, etc.).
* **Workflows:** Procedimientos operativos estandarizados para despliegues, salud de la workstation, copias de seguridad y auditorías de seguridad.
* **Security:** Políticas alineadas a OWASP y marcos normativos.

---

## 🚀 Clientes y Motores de IA Soportados

1. **Claude Code CLI (`claude`):** Integración nativa con servidores MCP (MSSQL, Docker, Git, Filesystem).
2. **OpenAI Codex CLI (`codex`):** Integración mediante `codex-runner.sh` en modo pasarela con la cuenta Plus.
EOF

```

---

```