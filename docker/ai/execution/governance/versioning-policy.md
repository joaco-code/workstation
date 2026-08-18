# 🏷️ Política de Versionado (Semantic Versioning)

Todos los artefactos ejecutables (`execution/skills/`, `execution/agents/`, `execution/mcp/`) deben estar versionados bajo el esquema **SemVer (`MAJOR.MINOR.PATCH`)** para evitar rupturas de contrato con Claude Code o Codex CLI.

---

## 📐 Reglas de Incremento de Versión

### 1. `MAJOR` (Cambios Rompedores / Breaking Changes)
* Modificación o eliminación de parámetros obligatorios (`required`) en un JSON Schema de Skill.
* Eliminación de un agente o redefinición completa de su System Prompt que altere radicalmente su comportamiento.
* Cambio en la firma de herramientas MCP o eliminación de conectores.

### 2. `MINOR` (Nuevas Capacidades / Backward Compatible)
* Incorporación de nuevos parámetros opcionales en esquemas de Skills.
* Creación de un nuevo Agente o servidor MCP.
* Ampliación del ámbito de conocimiento (`knowledge/`) consultable por un Agente existente.

### 3. `PATCH` (Correcciones y Ajustes Minoritarios)
* Aclaración de descripciones en campos JSON Schema para guiar mejor a los modelos.
* Corrección de errores tipográficos, formato Markdown o mejoras de sintaxis en System Prompts.
* Refactorización de reglas sin alterar la lógica de negocio ni las respuestas esperadas.

---

## 📌 Control de Versiones en Encabezados
Todo agente o skill debe declarar su versión actual en sus metadatos:

```json
{
  "$schema": "[https://json-schema.org/draft/2020-12/schema](https://json-schema.org/draft/2020-12/schema)",
  "name": "efcore_mssql_migration",
  "version": "1.2.0",
  "description": "..."
}