💾 Gestión de Memoria y Estado Continuo

Estrategias para preservar la memoria del proyecto a largo plazo entre diferentes sesiones de trabajo con la IA.

---

## 🔄 Ciclo de Vida de la Memoria

```text
[Sesión Activa] ──> [Condensador de Estado] ──> [knowledge/memory/decisions.md]
                                           └──> [Git Commit / Tag]
1. Archivo de Decisión de Memoria Vivo (knowledge/memory/decisions.md)
Cada sesión de trabajo relevante debe actualizar este archivo agregando un bloque de máximo 5 líneas con:

Fecha y Sistema Satélite afectado.

Cambio de arquitectura o modelo realizado.

Estado de la integración con el DWH central.

2. Truncado de Historial por Hitos
Una vez completada una funcionalidad (ej. "Endpoint POST Admisiones terminado y probado"), el estado conversacional debe reiniciarse (/reset o nueva sesión) pasando únicamente el resumen del hito completado.