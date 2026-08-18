# 💳 Optimización de Costos y Presupuesto de Tokens

Políticas para reducir el consumo monetario sin comprometer la precisión técnica ni la seguridad del código generado.

---

## 📉 Estrategia de Reducción de Tokens

### 1. Activación de Prompt Caching (Anthropic / OpenAI)
* La sección de `core/` (Reglas globales) y los esquemas JSON de `skills/` deben marcarse con bloques estáticos para aprovechar el caché de prompts, reduciendo hasta un 90% el costo de entrada en llamadas repetitivas.

### 2. Ruteo Dinámico de Modelos por Complejidad de Tarea

| Nivel de Tarea | Modelo Sugerido | Casos de Uso |
| :--- | :--- | :--- |
| **Alta Complejidad** | Claude 3.5 Sonnet / GPT-4o | Diseño de arquitectura, auditorías de seguridad, optimización DWH compleja. |
| **Media Complejidad** | Claude 3.5 Sonnet / GPT-4o-mini | Creación de Handlers CQRS en .NET 10, migraciones EF Core, vistas SQL. |
| **Baja Complejidad** | Claude 3.5 Haiku / GPT-4o-mini | Generación de READMEs, formatting, changelogs, parsing de Git log. |

### 3. Eliminación de Payload Inútil
* Prohibido incluir binarios, carpetas `bin/`, `obj/`, `node_modules/` o logs de compilación masivos en los prompts.