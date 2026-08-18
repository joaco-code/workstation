# 📜 Automation: Generador de ADR (Architecture Decision Record)

## Propósito
Generar automáticamente un archivo ADR numerado en `knowledge/memory/decisions.md` o en la carpeta `adr/` de un proyecto satélite cuando se toma una decisión de diseño significativa.

## Entradas
* Título de la decisión.
* Contexto y problema a resolver.
* Opciones evaluadas y opción elegida.

## Plantilla de Salida (Markdown)
```markdown
# ADR-[Número]: [Título de la Decisión]

* **Estado:** [Propuesto | Aprobado | Deprecado]
* **Fecha:** [YYYY-MM-DD]
* **Autor:** [Agente / Ingeniero]

## Contexto
[Descripción del problema o requerimiento técnico]

## Decisión
[Detalle de la solución elegida y justificación]

## Consecuencias
* **Positivas:** [Beneficios]
* **Negativas / Riesgos:** [Deuda técnica o mitigar]