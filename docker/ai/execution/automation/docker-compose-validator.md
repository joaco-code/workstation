# 🐳 Automation: Validador de Docker Compose

## Propósito
Analizar un archivo `docker-compose.yml` antes de su ejecución para asegurar el cumplimiento de las políticas de la plataforma.

## Checklist de Reglas Innegociables
1. **Healthchecks:** Todo servicio de persistencia (MSSQL, Redis, etc.) debe incluir un `healthcheck`.
2. **Hardening:** Ningún contenedor debe montarse con privilegios innecesarios o exponiendo puertos sensibles a `0.0.0.0` sin necesidad.
3. **Redes:** Uso de redes explícitas (ej. `backend-tier`, `database-tier`). Prohibido la red `bridge` por defecto.
4. **Persistencia:** Todo volumen de base de datos debe ser nombrado de forma explicita.