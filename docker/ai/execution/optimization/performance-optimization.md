# ⏱️ Optimización de Rendimiento y Latencia

Estrategias para reducir el tiempo hasta el primer token (*TTFT*) y acelerar la generación de artefactos técnicos en .NET 10 y MSSQL.

---

## 🛠️ Reglas de Alto Rendimiento

### 1. Invocación Paralela de Herramientas MCP
* Cuando un agente necesite consultar múltiples tablas o revisar varios archivos, debe enviar las llamadas MCP en un único payload de herramientas en lugar de secuencialmente.

### 2. Respuestas Estructuradas por Capas
* **Fase 1 (Respuesta Rápida):** Confirmación del plan de ejecución y arquitectura elegida.
* **Fase 2 (Generación Única):** Emisión directa del código fuente o script DDL sin texto introductorio innecesario.

### 3. Consultas T-SQL Asíncronas y Ligeras
* Toda inspección de base de datos a través de `mssql-mcp` debe usar `SET NOCOUNT ON;` y limitar la devolución a un máximo de 50 filas (`TOP 50`) para evitar congelar el pipeline por I/O.