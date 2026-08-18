# ♻️ Gestión del Ciclo de Vida de Artefactos de IA

Definición de las etapas por las que transita cualquier Agente, Skill o Conector MCP desde su concepción hasta su retiro.

---

## 🏁 Estados del Ciclo de Vida

```text
[ 1. PROPOSED ] ──> [ 2. DRAFT / DEV ] ──> [ 3. TESTING ] ──> [ 4. APPROVED / PROD ] ──> [ 5. DEPRECATED ]
1. Proposed (Propuesto)
Creación de un Issue o propuesta de arquitectura justificando la necesidad de un nuevo Agente o Skill.

2. Draft / Dev (En Desarrollo)
Redacción del System Prompt o definición del JSON Schema en ramas de desarrollo.

3. Testing (Pruebas y Evaluación)
Ejecución de la suite de pruebas del evaluador (execution/optimization/benchmarking.md).

Validación de que la herramienta genera código .NET 10 y T-SQL válido.

4. Approved / Prod (Aprobado / Producción)
Inclusión oficial en la rama main y en los índices de README.md.

Habilitado para uso diario por el equipo de ingeniería.

5. Deprecated (Obsoleto)
Marcado explícito de componentes que serán reemplazados. Se mantiene por un ciclo previo a su eliminación total.