# 🔬 execution/ai-engineering/llm-comparison.md

# 📊 Comparativa de Ecosistemas de IA (Claude, Codex, Copilot, Gemini)

Análisis de fortalezas, debilidades e integración con el ecosistema de la workstation para el stack .NET 10, MSSQL y Azure.

---

## 🛠️ Tabla Comparativa de Capacidades

| Criterio | Anthropic Claude (Claude Code / Sonnet) | OpenAI Codex / GPT-4o | GitHub Copilot | Google Gemini (Gemini Studio / Pro) |
| :--- | :--- | :--- | :--- | :--- |
| **Soporte Protocolo MCP** | 🟢 Nativo / Nativo en Claude Code CLI | 🟡 Vía wrappers / Custom Functions | 🔴 No nativo (Propietario) | 🟡 Vía SDK / Extensions |
| **Desarrollo en CLI** | 🟢 Excelente (`claude-code`) | 🟢 Excelente (`codex-cli`) | 🟡 Limitado (`gh copilot`) | 🟡 Interactivo (Notebooks/API) |
| **Generación .NET 10 / C#** | 🟢 Alta precisión sintáctica y arquitectura | 🟢 Excelente precisión lógica e integraciones | 🟢 Auto-completado rápido en IDE | 🟡 Buena capacidad sintáctica |
| **Optimización T-SQL / MSSQL**| 🟢 Análisis profundo de planes y esquemas | 🟢 Generación de procedimientos y DDL | 🟡 Sugerencias contextuales simples | 🟢 Manejo de grandes esquemas DWH |
| **Ventana de Contexto** | 200K+ Tokens (Caché Eficiente) | 128K+ Tokens | Limitado al contexto del archivo | 1M - 2M+ Tokens (Ultra-largo) |
| **Costo por Token** | Medio-Alto (Optimizado con Caching) | Medio | Suscripción fija por usuario | Bajo / Competitivo |

---

## 🎯 Posicionamiento Estratégico

1. **Claude (Anthropic):** Motor principal de arquitectura, ejecución CLI con protocolo MCP, refactorización masiva y auditoría de código.
2. **OpenAI Codex / GPT-4o:** Motor de soporte para lógica de algoritmos complejos, generación de esquemas OpenAPI/JSON y herramientas automatizadas.
3. **GitHub Copilot:** Asistente *in-line* en tiempo de escritura dentro de VS Code / Visual Studio para autocompletado diario.
4. **Google Gemini:** Motor de análisis masivo de documentación histórica, logs extensos y análisis de esquemas globales del Data Warehouse.