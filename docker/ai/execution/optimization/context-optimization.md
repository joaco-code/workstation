# 🎯 Optimización de Ventana de Contexto

Este documento establece las reglas para prevenir la saturación de la ventana de contexto y el fenómeno de "pérdida en el medio" (*Lost in the Middle*) durante sesiones extensas de desarrollo.

---

## ⚙️ Estrategias de Manejo de Contexto

### 1. Poda Activa de Contexto (Context Pruning)
* **Carga Bajo Demanda:** Cargar únicamente las interfaces C# y esquemas de tablas relevantes al caso de uso activo (ej. solo el Bounded Context `Admisiones`).
* **Límite de Ficheros Simultáneos:** No inyectar más de 5 archivos fuente completos en una misma llamada a la IA.
* **Resúmenes Intermedios:** Solicitar condensación de estado cuando la conversación supere los 15 turnos de diálogo.

### 2. Estructura de Contexto Estratificado
```text
┌──────────────────────────────────────────────────────────┐
│ 1. System Prompt & Rules (Inmutable - Alta Prioridad)    │
├──────────────────────────────────────────────────────────┤
│ 2. MCP Tool Definitions (Esquemas JSON - Media-Alta)     │
├──────────────────────────────────────────────────────────┤
│ 3. Código Fuente / DDL Requerido (Dinámico - Contextual) │
├──────────────────────────────────────────────────────────┤
│ 4. Historial Condensado (Variable - Poda Continua)       │
└──────────────────────────────────────────────────────────┘

3. Delimitación de Ámbitos por Agente
Cada agente invocado solo debe recibir la documentación de knowledge/ que impacte directamente su dominio para evitar saturación:

backend-engineer: Solo recibe conventions.md y el .json de la API objetivo.

database-architect: Solo recibe la especificación T-SQL y el contrato de Staging DWH.