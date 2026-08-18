# 📊 Benchmarking y Control de Calidad de IA

Marco de pruebas para evaluar la precisión y eficiencia de las respuestas generadas por los modelos e integraciones MCP.

---

## 📐 Métricas de Evaluación

### 1. Indicadores Clave de Rendimiento (KPIs)

* **Código .NET 10 Válido a la Primera (First-Pass Compilation Rate):** $> 95\%$.
* **Cumplimiento de Convenciones SQL (T-SQL Adherence):** $100\%$ de inclusión de claves primarias, índices y trazabilidad DWH.
* **Tiempo Promedio de Respuesta (Latency):** $< 5$ segundos para generación de endpoints simples.
* **Tasa de Exceso de Tokens (Token Waste Ratio):** $< 10\%$ de tokens no relevantes en las respuestas.

---

## 📑 Suite de Pruebas de Regresión (Eval Set)

Para validar actualizaciones en el sistema o cambios de modelos, se ejecutan las siguientes pruebas estandarizadas:

1. **Test 01 - Entity Generation:** Validar que `efcore-mssql-migration.json` genere correctamente campos de auditoría y relaciones relacionales.
2. **Test 02 - DWH Contract:** Validar que `dwh-staging-contract.json` cree vistas delta con marcas de agua (`WatermarkTimestamp`) correctas.
3. **Test 03 - Security Scan:** Verificar que el agente `security-auditor` detecte conexiones con credenciales explícitas o fallas OWASP en endpoints .NET.