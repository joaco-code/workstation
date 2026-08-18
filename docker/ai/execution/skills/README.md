## 🎯 Filosofía

A diferencia de la documentación pasiva ubicada en `knowledge/`, un **Skill** es un **contrato de ejecución determinista**. 

Nos alineamos estrictamente a los estándares oficiales de **MCP (Model Context Protocol)** de Anthropic y a las especificaciones de **Function Calling / JSON Schema (Draft 2020-12)** de OpenAI y Anthropic. Esto garantiza que los modelos generen y manipulen código en los sistemas satélites (.NET 10 / MSSQL) con tipos de datos estrictos, validación de parámetros y cero ambigüedad.

---

## 📂 Estructura del Catálogo

```text
execution/skills/
├── dotnet/                  # Especificaciones .NET 10, Clean Architecture y CQRS
│   ├── dotnet10-clean-api.json
│   └── efcore-mssql-migration.json
├── database/                # Modelado MSSQL, T-SQL Tuning e Integración DWH
│   ├── mssql-query-optimizer.json
│   └── dwh-staging-contract.json
├── azure/                   # IaC Bicep, App Services y KeyVault
│   ├── azure-appservice-bicep.json
│   └── azure-keyvault-options.json
└── governance/              # Wrappers MCP y validadores de esquemas
    └── mcp-tool-wrapper.json

```

---

## 📋 Estándar de Especificación (JSON Schema / MCP)

Cada archivo `.json` en este catálogo define un Skill que los modelos leen como una *Tool*. Debe cumplir obligatoriamente con los siguientes campos:

* **`$schema`**: Declaración `https://json-schema.org/draft/2020-12/schema`.
* **`name`**: Identificador único en `snake_case` (ej. `efcore_mssql_migration`).
* **`description`**: Explicación clara de la función y el momento exacto en que debe ser invocada.
* **`parameters`**: Objeto JSON Schema que define las propiedades, tipos, listas de valores permitidos (`enum`) y campos obligatorios (`required`).

---

## 🤖 Reglas de Invocación para los Agentes

1. **Inyección en Sesión**: Claude Code y Codex CLI mapean estas especificaciones como herramientas ejecutables al iniciar el contexto de un proyecto.
2. **Contexto de Dominio**: Para proyectos satélites (ATS, Admisiones, Reservas de Espacios, Mapas de Aprendizaje), el agente debe validar que cualquier entidad o endpoint generado mantenga las claves de trazabilidad hacia el **Data Warehouse (DWH)** central.
3. **Validación Estricta**: Si la instrucción dada por el usuario omite parámetros definidos como `required` en el esquema del Skill, el agente debe solicitar la aclaración antes de escribir código.
EOF

```

```