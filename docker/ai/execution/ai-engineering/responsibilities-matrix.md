# 🎯 execution/ai-engineering/responsibilities-matrix.md

# 📋 Matriz de Responsabilidades de Herramientas de IA

Asignación clara de responsabilidades para evitar solapamiento y maximizar el rendimiento por tarea.

---

## 🗺️ Matriz RACI de Ecosistemas IA

* **R (Responsible):** Ejecuta la tarea.
* **A (Accountable):** Valida la calidad final (Desarrollador Humano / Agente Supervisor).
* **C (Consulted):** Proporciona contexto o análisis adicional.
* **I (Informed):** Recibe la salida o actualización.

| Tarea / Fase de Desarrollo | Claude Code | OpenAI Codex | GitHub Copilot | Gemini | Humano (Tech Lead) |
| :--- | :---: | :---: | :---: | :---: | :---: |
| **Diseño de Arquitectura (.NET 10 / CQRS)** | **R** | C | I | C | **A** |
| **Autocompletado de Código en IDE** | I | I | **R** | I | **A** |
| **Generación de Migraciones EF Core / MSSQL** | **R** | C | C | I | **A** |
| **Diseño de Vistas de Staging DWH** | C | **R** | I | C | **A** |
| **Análisis de Logs Masivos / Documentación** | I | I | I | **R** | **A** |
| **Creación de Infraestructura Bicep (Azure)** | **R** | C | C | I | **A** |
| **Auditoría de Seguridad y Secretos** | **R** | C | I | I | **A** |