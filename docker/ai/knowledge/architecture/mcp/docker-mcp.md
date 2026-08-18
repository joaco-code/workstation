Aquí tienes la especificación para el conector **`docker-mcp`**, que permitirá a los agentes inspeccionar el estado de los contenedores, redes y logs de la workstation.

---

### 📄 Documento de Configuración: `execution/mcp/docker-mcp.md`

```markdown
# 🔌 MCP Server: Docker Engine (`docker-mcp`)

Este conector implementa el protocolo **MCP (Model Context Protocol)** para otorgar a los agentes de IA capacidad de inspección y monitoreo sobre el motor de contenedores Docker en la workstation (WSL2).

---

## 🛠️ Herramientas Expuestas al Agente (Tools)

El servidor MCP de Docker expone las siguientes capacidades:

* **`docker_list_containers`**: Lista los contenedores activos e inactivos con su estado, imagen y puertos mapeados.
* **`docker_container_logs`**: Obtiene las últimas líneas de logs de un contenedor para diagnóstico de errores.
* **`docker_inspect_container`**: Muestra la configuración detallada de un contenedor (variables de entorno, montajes de volúmenes, IPs).
* **`docker_network_ls`**: Revisa las redes creadas y qué servicios están interconectados.
* **`docker_compose_ps`**: Verifica el estado de salud y réplicas de los stacks desplegados mediante Docker Compose.

---

## ⚙️ Configuración del Servidor MCP

### Ejecución mediante `uvx` (Socket de Docker en WSL2)

El cliente de IA se conecta a través del socket UNIX local de Docker (`/var/run/docker.sock`):

```json
{
  "mcpServers": {
    "docker-engine": {
      "command": "uvx",
      "args": ["mcp-server-docker"],
      "env": {
        "DOCKER_HOST": "unix:///var/run/docker.sock"
      }
    }
  }
}

```

---

## 🛡️ Reglas de Seguridad Innegociables

1. **Modo Observador (Read-Only):** Por defecto, el agente solo puede consultar logs, inspeccionar configuraciones y ver estados. No tiene permitido ejecutar acciones destructivas (`docker rm`, `docker prune`, `docker stop`) de forma autónoma.
2. **Prohibida la Modificación de Producción:** Ningún agente puede alterar stacks en ejecución sin una solicitud explícita y aprobación previa.
3. **Ofuscación de Secretos en Logs:** Si se inspeccionan variables de entorno mediante `docker_inspect_container`, el agente debe filtrar o enmascarar automáticamente claves privadas, tokens y passwords.

```

---

### 💻 Comando para Guardar el Archivo

Puedes crear el archivo directamente en tu terminal con el siguiente comando:

```bash
cat << 'EOF' > ~/docker/ai/execution/mcp/docker-mcp.md
# 🔌 MCP Server: Docker Engine (`docker-mcp`)

Este conector implementa el protocolo **MCP (Model Context Protocol)** para otorgar a los agentes de IA capacidad de inspección y monitoreo sobre el motor de contenedores Docker en la workstation (WSL2).

---

## 🛠️ Herramientas Expuestas al Agente (Tools)

El servidor MCP de Docker expone las siguientes capacidades:

* **`docker_list_containers`**: Lista los contenedores activos e inactivos con su estado, imagen y puertos mapeados.
* **`docker_container_logs`**: Obtiene las últimas líneas de logs de un contenedor para diagnóstico de errores.
* **`docker_inspect_container`**: Muestra la configuración detallada de un contenedor (variables de entorno, montajes de volúmenes, IPs).
* **`docker_network_ls`**: Revisa las redes creadas y qué servicios están interconectados.
* **`docker_compose_ps`**: Verifica el estado de salud y réplicas de los stacks desplegados mediante Docker Compose.

---

## ⚙️ Configuración del Servidor MCP

### Ejecución mediante `uvx` (Socket de Docker en WSL2)

El cliente de IA se conecta a través del socket UNIX local de Docker (`/var/run/docker.sock`):

```json
{
  "mcpServers": {
    "docker-engine": {
      "command": "uvx",
      "args": ["mcp-server-docker"],
      "env": {
        "DOCKER_HOST": "unix:///var/run/docker.sock"
      }
    }
  }
}

```

---

## 🛡️ Reglas de Seguridad Innegociables

1. **Modo Observador (Read-Only):** Por defecto, el agente solo puede consultar logs, inspeccionar configuraciones y ver estados. No tiene permitido ejecutar acciones destructivas (`docker rm`, `docker prune`, `docker stop`) de forma autónoma.
2. **Prohibida la Modificación de Producción:** Ningún agente puede alterar stacks en ejecución sin una solicitud explícita y aprobación previa.
3. **Ofuscación de Secretos en Logs:** Si se inspeccionan variables de entorno mediante `docker_inspect_container`, el agente debe filtrar o enmascarar automáticamente claves privadas, tokens y passwords.
EOF

```

```