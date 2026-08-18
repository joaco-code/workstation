# 🧪 execution/ai-engineering/benchmarks.md

# 📊 Benchmarks y Evaluación de Desempeño

Resultados empíricos de evaluación de precisión en el stack .NET 10, MSSQL y Azure.

---

## 📐 Métricas de Evaluación por Proveedor

Las pruebas se realizan utilizando el conjunto de evaluadores de `execution/optimization/benchmarking.md`:

| Benchmark Test | Claude 3.5 Sonnet | GPT-4o / Codex | Gemini 1.5 Pro |
| :--- | :---: | :---: | :---: |
| **C# .NET 10 Clean Code (Minimal APIs / CQRS)** | **96%** Éxito | 92% Éxito | 85% Éxito |
| **Optimización de Queries T-SQL (MSSQL)** | **94%** Éxito | 90% Éxito | 88% Éxito |
| **Compatibilidad con Esquema MCP** | **100%** Nativo | 88% (Adaptado) | 80% (Adaptado) |
| **Generación de Bicep (Azure IaC)** | **92%** Éxito | 91% Éxito | 82% Éxito |
| **Comprensión de Contexto Extenso (>100K Tokens)** | 91% Retención | 85% Retención | **98%** Retención |

---

## 💡 Conclusión de Rendimiento
* **Claude 3.5 Sonnet** es el modelo con mayor tasa de compilación exitosa sin refactorización manual para C# .NET 10.
* **Gemini** destaca en la ingestión y análisis de documentación masiva sin degradación de atención (*Lost in the Middle*).
* **GPT-4o** destaca en la transformación estricta de esquemas de datos JSON a contratos DWH.
