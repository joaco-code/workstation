Aquí tienes la especificación para el conector **`filesystem-mcp`**, encargado de permitir a los agentes interactuar de forma segura con el sistema de archivos local de la workstation dentro del entorno WSL2.

---

### 📄 Documento de Configuración: `execution/mcp/filesystem-mcp.md`

```markdown
# 🔌 MCP Server: Filesystem (`filesystem-mcp`)

Este conector implementa el protocolo **MCP (Model Context Protocol)** oficial para otorgar a los agentes de IA capacidad de lectura, búsqueda, navegación y edición de archivos dentro del árbol de directorios de la workstation.

---

## 🛠️ Herramientas Expuestas al Agente (Tools)

El servidor MCP de Filesystem expone las siguientes capacidades nativas:

* **`read_file`**: Lee el contenido completo de un archivo dentro del directorio permitido.
* **`read_multiple_files`**: Lee simultáneamente varios archivos para optimizar el contexto.
* **`write_file`**: Crea o sobrescribe un archivo con nuevo contenido.
* **`create_directory`**: Genera nuevos subdirectorios en la estructura del proyecto.
* **`list_directory`**: Muestra los archivos y carpetas de una ruta especificada.
* **`search_files`**: Busca archivos por patrón de nombre o extensión (vía glob).
* **`get_file_info`**: Retorna metadatos de un archivo (tamaño, fecha de modificación, permisos).

---

## ⚙️ Configuración del Servidor MCP

### Ejecución mediante `npx` (Servidor Oficial `@modelcontextprotocol/server-filesystem`)

Se debe especificar de forma explícita la lista de rutas permitidas (`allowed directories`). El agente **no** podrá acceder a nada fuera de estas carpetas:

```json
{
  "mcpServers": {
    "filesystem-ai": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "/home/developer/docker/ai",
        "/home/developer/projects"
      ]
    }
  }
}

```

---

## 🛡️ Reglas de Seguridad Innegociables

1. **Sandboxing Estricto:** El servidor solo tiene acceso a las rutas explícitamente declaradas como argumentos. Queda prohibido el acceso a directorios del sistema como `/etc`, `~/.ssh`, o archivos de configuración de WSL2/Windows.
2. **Prevensión de Path Traversal:** No se permiten llamadas que utilicen secuencias relativas para escapar de los límites autorizados (ej. `../../..`).
3. **Respeto a Archivos Protegidos:** Archivos `.env` que contengan secretos de producción o claves privadas no deben ser leídos ni modificados masivamente sin autorización.

```

---

### 💻 Comando para Guardar el Archivo

Puedes crear el archivo directamente ejecutando el siguiente bloque en tu terminal:

```bash
cat << 'EOF' > ~/docker/ai/execution/mcp/filesystem-mcp.md
# 🔌 MCP Server: Filesystem (`filesystem-mcp`)

Este conector implementa el protocolo **MCP (Model Context Protocol)** oficial para otorgar a los agentes de IA capacidad de lectura, búsqueda, navegación y edición de archivos dentro del árbol de directorios de la workstation.

---

## 🛠️ Herramientas Expuestas al Agente (Tools)

El servidor MCP de Filesystem expone las siguientes capacidades nativas:

* **`read_file`**: Lee el contenido completo de un archivo dentro del directorio permitido.
* **`read_multiple_files`**: Lee simultáneamente varios archivos para optimizar el contexto.
* **`write_file`**: Crea o sobrescribe un archivo con nuevo contenido.
* **`create_directory`**: Genera nuevos subdirectorios en la estructura del proyecto.
* **`list_directory`**: Muestra los archivos y carpetas de una ruta especificada.
* **`search_files`**: Busca archivos por patrón de nombre o extensión (vía glob).
* **`get_file_info`**: Retorna metadatos de un archivo (tamaño, fecha de modificación, permisos).

---

## ⚙️ Configuración del Servidor MCP

### Ejecución mediante `npx` (Servidor Oficial `@modelcontextprotocol/server-filesystem`)

Se debe especificar de forma explícita la lista de rutas permitidas (`allowed directories`). El agente **no** podrá acceder a nada fuera de estas carpetas:

```json
{
  "mcpServers": {
    "filesystem-ai": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "/home/developer/docker/ai",
        "/home/developer/projects"
      ]
    }
  }
}

```

---

## 🛡️ Reglas de Seguridad Innegociables

1. **Sandboxing Estricto:** El servidor solo tiene acceso a las rutas explícitamente declaradas como argumentos. Queda prohibido el acceso a directorios del sistema como `/etc`, `~/.ssh`, o archivos de configuración de WSL2/Windows.
2. **Prevensión de Path Traversal:** No se permiten llamadas que utilicen secuencias relativas para escapar de los límites autorizados (ej. `../../..`).
3. **Respeto a Archivos Protegidos:** Archivos `.env` que contengan secretos de producción o claves privadas no deben ser leídos ni modificados masivamente sin autorización.
EOF

```

```