Para arrancar con **`mssql-mcp`**, crearemos su especificación de conector dentro de `~/docker/ai/execution/mcp/mssql-mcp.md`.

Este conector permite a los agentes de IA (Claude Code, Codex) conectarse a **SQL Server** (tanto en tu contenedor Docker local `local-mssql` como en las instancias de Azure SQL) para inspeccionar tablas, entender esquemas relacionales, validar vistas de staging para el DWH y probar consultas T-SQL de forma segura.

---

### 📄 Documento de Configuración: `execution/mcp/mssql-mcp.md`

```markdown
# 🔌 MCP Server: Microsoft SQL Server (`mssql-mcp`)

Este conector implementa el protocolo **MCP (Model Context Protocol)** para otorgar a los agentes de IA acceso controlado a la base de datos **MSSQL** local (Docker) y remota (Azure SQL).

---

## 🛠️ Herramientas Expuestas al Agente (Tools)

El servidor MCP de MSSQL expone automáticamente las siguientes capacidades:

* **`mssql_list_tables`**: Lista las tablas y vistas disponibles en una base de datos o contexto delimitado.
* **`mssql_describe_table`**: Muestra las columnas, tipos de datos, llaves primarias, nulos e índices de una tabla.
* **`mssql_read_query`**: Ejecuta consultas de lectura (`SELECT`) de forma segura con límites de filas por defecto.
* **`mssql_get_execution_plan`**: Inspecciona el plan de ejecución de una consulta para diagnóstico de rendimiento.
* **`mssql_check_dwh_staging`**: Valida que la estructura de staging/delta coincida con los requisitos del Data Warehouse.

---

## ⚙️ Configuración del Servidor MCP

### Opción A: Ejecución Directa mediante `uvx` (Recomendado en WSL2)

El cliente de IA invoca el paquete oficial mediante `uvx` leyendo las credenciales desde las variables de entorno de la sesión:

```json
{
  "mcpServers": {
    "mssql-local": {
      "command": "uvx",
      "args": ["microsoft_sql_server_mcp"],
      "env": {
        "MSSQL_SERVER": "127.0.0.1",
        "MSSQL_PORT": "1433",
        "MSSQL_DATABASE": "master",
        "MSSQL_USER": "sa",
        "MSSQL_PASSWORD": "${MSSQL_SA_PASSWORD}",
        "MSSQL_ENCRYPT": "false",
        "MSSQL_TRUST_SERVER_CERTIFICATE": "true"
      }
    }
  }
}

```

### Opción B: Integración con Azure SQL Database (Entorno Cloud)

Para bases de datos satélites en Azure (ATS, Admisiones, Reservas, Mapas), la configuración fuerza cifrado e identidad:

```json
{
  "mcpServers": {
    "mssql-azure-admisiones": {
      "command": "uvx",
      "args": ["microsoft_sql_server_mcp"],
      "env": {
        "MSSQL_SERVER": "sql-colegio-prod.database.windows.net",
        "MSSQL_DATABASE": "db-admisiones",
        "MSSQL_USER": "${AZURE_SQL_USER}",
        "MSSQL_PASSWORD": "${AZURE_SQL_PASSWORD}",
        "MSSQL_ENCRYPT": "true"
      }
    }
  }
}

```

---

## 🛡️ Reglas de Seguridad Innegociables

1. **Restricción de Escritura (Read-Only Default):** En entornos de desarrollo y staging, el usuario asignado al conector MCP debe tener permisos limitados a `db_datareader` y `VIEW DEFINITION`.
2. **Prohibido en Producción Directa:** Ningún cliente de IA se conectará directamente a la base de datos de producción de los satélites con credenciales administrativas (`sa`).
3. **Paginación Obligatoria:** Las consultas ejecutadas mediante `mssql_read_query` deben incluir automáticamente cláusulas `TOP (100)` o `OFFSET...FETCH` para evitar el agotamiento de memoria del contexto.

```

---

### 💻 Comando para Guardar el Archivo

Puedes generar este conector directamente corriendo el siguiente bloque en tu terminal:

```bash
cat << 'EOF' > ~/docker/ai/execution/mcp/mssql-mcp.md
# 🔌 MCP Server: Microsoft SQL Server (`mssql-mcp`)

Este conector implementa el protocolo **MCP (Model Context Protocol)** para otorgar a los agentes de IA acceso controlado a la base de datos **MSSQL** local (Docker) y remota (Azure SQL).

---

## 🛠️ Herramientas Expuestas al Agente (Tools)

El servidor MCP de MSSQL expone automáticamente las siguientes capacidades:

* **`mssql_list_tables`**: Lista las tablas y vistas disponibles en una base de datos o contexto delimitado.
* **`mssql_describe_table`**: Muestra las columnas, tipos de datos, llaves primarias, nulos e índices de una tabla.
* **`mssql_read_query`**: Ejecuta consultas de lectura (`SELECT`) de forma segura con límites de filas por defecto.
* **`mssql_get_execution_plan`**: Inspecciona el plan de ejecución de una consulta para diagnóstico de rendimiento.
* **`mssql_check_dwh_staging`**: Valida que la estructura de staging/delta coincida con los requisitos del Data Warehouse.

---

## ⚙️ Configuración del Servidor MCP

### Opción A: Ejecución Directa mediante `uvx` (Recomendado en WSL2)

El cliente de IA invoca el paquete oficial mediante `uvx` leyendo las credenciales desde las variables de entorno de la sesión:

```json
{
  "mcpServers": {
    "mssql-local": {
      "command": "uvx",
      "args": ["microsoft_sql_server_mcp"],
      "env": {
        "MSSQL_SERVER": "127.0.0.1",
        "MSSQL_PORT": "1433",
        "MSSQL_DATABASE": "master",
        "MSSQL_USER": "sa",
        "MSSQL_PASSWORD": "${MSSQL_SA_PASSWORD}",
        "MSSQL_ENCRYPT": "false",
        "MSSQL_TRUST_SERVER_CERTIFICATE": "true"
      }
    }
  }
}

```

### Opción B: Integración con Azure SQL Database (Entorno Cloud)

Para bases de datos satélites en Azure (ATS, Admisiones, Reservas, Mapas), la configuración fuerza cifrado e identidad:

```json
{
  "mcpServers": {
    "mssql-azure-admisiones": {
      "command": "uvx",
      "args": ["microsoft_sql_server_mcp"],
      "env": {
        "MSSQL_SERVER": "sql-colegio-prod.database.windows.net",
        "MSSQL_DATABASE": "db-admisiones",
        "MSSQL_USER": "${AZURE_SQL_USER}",
        "MSSQL_PASSWORD": "${AZURE_SQL_PASSWORD}",
        "MSSQL_ENCRYPT": "true"
      }
    }
  }
}

```

---

## 🛡️ Reglas de Seguridad Innegociables

1. **Restricción de Escritura (Read-Only Default):** En entornos de desarrollo y staging, el usuario asignado al conector MCP debe tener permisos limitados a `db_datareader` y `VIEW DEFINITION`.
2. **Prohibido en Producción Directa:** Ningún cliente de IA se conectará directamente a la base de datos de producción de los satélites con credenciales administrativas (`sa`).
3. **Paginación Obligatoria:** Las consultas ejecutadas mediante `mssql_read_query` deben incluir automáticamente cláusulas `TOP (100)` o `OFFSET...FETCH` para evitar el agotamiento de memoria del contexto.
EOF

```

```