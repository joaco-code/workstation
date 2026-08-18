# ✏️ Optimización y Compresión de Prompts

Estándares para la redacción de prompts concisos, deterministas y de alta densidad de información.

---

## 📐 Principios de Redacción de Prompts

### 1. Formato Basado en Etiquetas Estructuradas (XML / Markdown)
Utilizar delimitadores explícitos para separar instrucciones de datos:

```xml
<instruction>
  Crea un comando CQRS en .NET 10 para la entidad Candidato.
</instruction>
<context>
  Bounded Context: ATS
  Data Warehouse Tracking: Requerido (CandidateId, ExtractedAt)
</context>

### 2. Cero Verborragia Conversacional
Eliminar introducciones como "Por favor", "Claro que sí, con gusto te ayudo a...", "Como modelo de IA...".

Exigir respuestas con formato Direct-to-Code.

### 3. Densidad Léxica Técnica
Sustituir explicaciones largas por terminología técnica precisa (ej. usar "Primary Constructors", "Option Pattern", "CDC Staging", "Idempotente").