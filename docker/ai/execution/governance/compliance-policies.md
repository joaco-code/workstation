# 📜 Políticas de Cumplimiento y Seguridad (Compliance)

Marco normativo de seguridad de información y privacidad de datos de cumplimiento obligatorio para todas las herramientas y agentes.

---

## 🔐 Reglas Innegociables

### 1. Protección de Datos Personales y PII (Educación)
* **Anonimización Estricta:** Las consultas ejecutadas vía `mssql-mcp` o las migraciones en sistemas satélites (ATS, Admisiones, Reservas) no deben exponer datos personales de alumnos o postulantes (DNI, correos, registros médicos) en los prompts.
* En entornos de desarrollo/staging se debe trabajar obligatoriamente con datos sintéticos (*seeders*).

### 2. Trazabilidad Hacia el Data Warehouse (DWH)
* Toda entidad o tabla de satélite generada por un Agente **debe** preservar la clave de negocio y columnas de auditoría (`CreatedAt`, `CreatedBy`, `UpdatedAt`, `UpdatedBy`, `IsDeleted`) para no romper la ingesta incremental (CDC / Temporal Tables) hacia el DWH.

### 3. Principio de Mínimo Privilegio (Zero Trust)
* Ninguna API KEY de OpenAI, Anthropic ni cadena de conexión a Azure SQL debe estar escrita directamente en código fuente.
* Las llamadas a herramientas MCP se ejecutan bajo cuentas de servicio con permisos de solo lectura (`db_datareader`) en entornos no productivos.
