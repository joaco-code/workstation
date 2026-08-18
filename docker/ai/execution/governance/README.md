# 🛡️ Marco de Gobernanza del Ecosistema IA

Este directorio centraliza las políticas, controles de cumplimiento, auditoría y reglas de ciclo de vida que rigen a los Agentes, Skills, Conectores MCP y documentación dentro de la plataforma (.NET 10 / MSSQL / Azure).

---

## 📊 Matriz de Políticas de Gobernanza

| Componente | Archivo | Propósito Principal |
| :--- | :--- | :--- |
| **Versionado** | `versioning-policy.md` | Esquema Semantic Versioning (SemVer) para Prompts, Skills y Agentes. |
| **Políticas** | `compliance-policies.md` | Reglas innegociables de seguridad, PII, seguridad en MSSQL e integración DWH. |
| **Auditoría** | `audit-logging.md` | Registro distribuido de llamadas a LLM, ejecuciones de herramientas MCP y trazabilidad. |
| **Ciclo de Vida** | `lifecycle-management.md` | Proceso de aprobación, promoción (Dev/Staging/Prod) y deprecación de componentes IA. |
| **Catálogo de Skills** | `skills-governance.md` | Reglas de diseño, validación de schemas JSON y publicación de Skills de ejecución. |
| **Catálogo de Agentes** | `agents-governance.md` | Delimitación de responsabilidades, permisos de ejecución y System Prompts. |
| **Mantenimiento Documental** | `documentation-maintenance.md` | Control de obsolescencia y sincronización entre código C#, esquemas T-SQL y KB. |