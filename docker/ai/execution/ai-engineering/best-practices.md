# 🌟 execution/ai-engineering/best-practices.md

# ✨ Buenas Prácticas y Reglas de Oro

Directivas obligatorias para garantizar seguridad, calidad e idempotencia en la interacción con la Plataforma de IA.

---

## 🟢 Lo que SIEMPRE debes hacer (DOs)

1. **Contexto Delimitado:** Proporciona siempre el Bounded Context (`ATS`, `Admisiones`, `ReservasEspacios`, `MapasAprendizaje`) en el prompt inicial.
2. **Uso de Skills Oficiales:** Exige al modelo que utilice las definiciones JSON de `execution/skills/` para generar migraciones o endpoints.
3. **Revisión Humana (Human-in-the-Loop):** Revisa y prueba localmente todo script DDL (T-SQL) o migración de EF Core antes de aplicar en entornos compartidos.
4. **Commits Granulares:** Guarda los cambios sugeridos por la IA en commits pequeños siguiendo la convención *Conventional Commits*.

---

## 🔴 Lo que NUNCA debes hacer (DON'Ts)

1. **Prohibido Secretos en Prompts:** Nunca pegues cadenas de conexión con contraseñas reales, API Keys ni certificados en el chat de ningún proveedor.
2. **No Inventar Skills:** No aceptes formatos de herramientas o funciones inventadas sobre la marcha; ajusta las interacciones al estándar **MCP** y **JSON Schema Draft 2020-12**.
3. **No Omitir Trazabilidad DWH:** Nunca permitas que la IA genere una nueva tabla relacional sin sus columnas de auditoría y claves de integración hacia el Data Warehouse central.
4. **No Confiar a Ciegas en Despliegues:** Ninguna plantilla Bicep debe desplegarse en Azure sin pasar por la validación del agente `azure-engineer` y la confirmación del Tech Lead.