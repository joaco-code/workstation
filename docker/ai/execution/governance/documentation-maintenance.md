# 📖 Mantenimiento y Sincronización Documental

Mecanismos para prevenir la desactualización (drift) entre la documentación conceptual (`knowledge/`), el código fuente en .NET 10 y las bases de datos MSSQL.

---

## 🔄 Estrategia de Sincronización

### 1. Detección de Obsolescencia (Documentation Drift)
* Cualquier cambio en la estructura de tablas MSSQL o modelos EF Core 10 que afecte las vistas de staging del Data Warehouse **debe** actualizar inmediatamente el contrato en `execution/skills/database/dwh-staging-contract.json`.
* Los cambios de arquitectura exigen la creación automática de un nuevo ADR mediante la automatización `execution/automation/adr-generator.md`.

### 2. Mantenimiento del Índice Principal
* Los archivos `README.md` de cada subdirectorio actúan como tablas de verdad. Si un archivo `.md` o `.json` es añadido o removido, el `README.md` padre debe actualizarse en el mismo commit.

### 3. Revisiones Periódicas
* Ejecución mensual de la rutina `execution/automation/docs-reviewer.md` para verificar enlaces rotos, formateo Markdown e inconsistencias de versiones.