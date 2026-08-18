# 🧰 Gobernanza del Catálogo de Skills

Normas para la incorporación, estandarización y mantenimiento de los esquemas de herramientas executables (`execution/skills/`).

---

## 📐 Estándar Estricto de Definición de Skills

1. **Formato Exclusivo JSON Schema Draft 2020-12:** No se aceptan formatos propietarias ni esquemas incompletos.
2. **Nombramiento Determinista:** El nombre (`name`) debe usar sintaxis `snake_case` y prefijarse con la tecnología objetivo (`dotnet10_`, `mssql_`, `azure_`).
3. **Descripciones Semánticas Claras:** El campo `description` debe explicar explícitamente **cuándo** y **para qué** el modelo debe invocar la herramienta.
4. **Validación de Parámetros:** Todo parámetro debe incluir su tipo (`type`), descripción y, cuando aplique, una lista delimitada de valores permitidos (`enum`).

---

## 🧪 Chequeo de Calidad Pre-Commit
Antes de fusionar un nuevo Skill en `execution/skills/`:
* [ ] El JSON es sintácticamente válido.
* [ ] Contiene los campos obligatorios: `$schema`, `name`, `description`, `parameters`.
* [ ] Ha sido probado con al menos un modelo de Anthropic (Claude) y uno de OpenAI (Codex/GPT-4o).
