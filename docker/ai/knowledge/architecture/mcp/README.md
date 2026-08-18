# 🔌 Catálogo y Gobernanza de Servidores MCP

Este directorio centraliza las configuraciones, plantillas y registros de servidores **MCP (Model Context Protocol)** utilizados para otorgar contexto en tiempo real y capacidad de acción a los agentes de IA.

---

## 🛠️ Conectores del Ecosistema

| Servidor MCP | Tipo Transporte | Propósito Principal |
| :--- | :--- | :--- |
| **`mssql-mcp`** | STDIO (Node/Python) | Consultar esquemas, tablas de staging DWH y planes de ejecución T-SQL. |
| **`docker-mcp`** | STDIO (Socket) | Inspeccionar estado de contenedores, logs y métricas de salud. |
| **`azure-mcp`** | STDIO (Az CLI) | Consultar estado de App Services, Key Vaults y despliegues en Azure. |
| **`filesystem-mcp`** | STDIO (Native) | Acceso seguro al árbol de directorio de trabajo. |
| **`git-mcp`** | STDIO (Native) | Lectura de diffs, historial de commits y estado del repositorio. |

---

## ⚙️ Estructura Estándar de Configuración (`mcp-config.json`)

Los clientes de IA (Claude Code / Codex) leen la configuración global de servidores MCP desde el archivo de manifiesto correspondiente.

```json
{
  "mcpServers": {
    "mssql-satelites": {
      "command": "npx",
      "args": ["-y", "@mcp/server-mssql"],
      "env": {
        "MSSQL_CONNECTION_STRING": "Server=localhost,1433;Database=master;User Id=sa;Password=${MSSQL_SA_PASSWORD};Encrypt=False;"
      }
    },
    "docker-engine": {
      "command": "uvx",
      "args": ["mcp-server-docker"],
      "env": {
        "DOCKER_HOST": "unix:///var/run/docker.sock"
      }
    }
  }
}

🛑 Reglas de Ejecución
Aislamiento por Entorno: La base de datos de producción nunca se conecta directamente a un servidor MCP con permisos de escritura.

Auditoría de Consultas: Todas las queries ejecutadas a través del servidor MCP de MSSQL deben registrarse en el log de auditoría para prevenir fuga de datos no autorizada.