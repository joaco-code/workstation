# 👤 Gobernanza del Catálogo de Agentes

Reglas para la creación, aislamiento de permisos y control de comportamiento de los System Prompts de los Agentes (`execution/agents/`).

---

## 📋 Reglas de Delimitación de Agentes

1. **Principio de Especialización Unica (Single Responsibility):** Un agente no debe asumir múltiples roles contradictorios (ej. un `backend-engineer` no aprueba sus propios cambios de infraestructura sin pasar por el `azure-engineer` o `code-reviewer`).
2. **Asignación Explícita de Contexto:** Cada archivo de Agente `.md` debe listar exactamente qué carpetas de `knowledge/` tiene permitido leer.
3. **Aislamiento de Skills:** Cada agente declara explícitamente la lista blanca de Skills (`skills/`) que puede invocar. Cualquier intento de usar un Skill no autorizado debe ser denegado.
4. **Respeto a las Reglas de Core:** Todo agente hereda de forma innegociable las directivas de `core/conventions.md` y `core/permissions.md`.