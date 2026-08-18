# 📖 execution/ai-engineering/usage-guide.md

# 📘 Guía Oficial de Uso de la Plataforma de IA

Manual operativo para la interacción con los clientes de IA en el desarrollo diario de los sistemas satélites (ATS, Admisiones, Reservas, Mapas).

---

## 🚀 Flujo de Trabajo Estandarizado (Daily Workflow)

### Paso 1: Inicialización de Sesión CLI con Claude Code
Para tareas de refactorización, creación de endpoints o migraciones:

```bash
# Navegar al proyecto satélite objetivo
cd ~/projects/colegio-satelites/src/Admisiones.Api

# Iniciar Claude Code cargando las reglas del repositorio
claude --config ~/docker/ai/execution/mcp/mcp-config.json
Paso 2: Selección del Agente Adecuado
Informa al cliente qué rol debe asumir según la tarea invocando los System Prompts de execution/agents/:

Plaintext
"Asume el rol de @backend-engineer.md y genera el Handler CQRS para registrar una nueva postulación en Admisiones usando .NET 10 y FluentValidation."
Paso 3: Uso de MCP para Interacción con MSSQL
Para consultar tablas o verificar el esquema de Staging hacia el DWH:

Plaintext
"Usa la herramienta mssql_describe_table para inspeccionar la tabla dbo.SolicitudesAdmision y genera el contrato DWH en dwh-staging-contract.json."
Paso 4: Autocompletado Continuo con Copilot
Mantén activada la extensión de GitHub Copilot en tu IDE para autocompletar implementaciones secundarias, Mappers o DTOs en tiempo real.