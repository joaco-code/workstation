Aquí tienes la especificación para el último conector de la serie: **`git-mcp`**, diseñado para permitir a los agentes inspeccionar el control de versiones, analizar diffs, revisar el historial de commits y auditar cambios en los repositorios de la workstation.

---

### 📄 Documento de Configuración: `execution/mcp/git-mcp.md`

```markdown
# 🔌 MCP Server: Git Control de Versiones (`git-mcp`)

Este conector implementa el protocolo **MCP (Model Context Protocol)** oficial para otorgar a los agentes de IA acceso a la inspección, auditoría y lectura del estado de repositorios Git en la workstation.

---

## 🛠️ Herramientas Expuestas al Agente (Tools)

El servidor MCP de Git expone las siguientes capacidades nativas:

* **`git_status`**: Muestra el estado actual del árbol de trabajo (archivos modificados, staged, untracked y rama activa).
* **`git_diff`**: Obtiene las diferencias de código entre el estado actual, commits previos o ramas de desarrollo.
* **`git_log`**: Consulta el historial de commits filtrado por cantidad, autor, fecha o mensaje.
* **`git_show`**: Inspecciona los detalles completos y cambios introducidos por un commit específico (hash).
* **`git_branch`**: Lista las ramas locales y remotas disponibles en el repositorio.

---

## ⚙️ Configuración del Servidor MCP

### Ejecución mediante `uvx` (Servidor Oficial `mcp-server-git`)

El cliente de IA se ejecuta apuntando al directorio raíz del repositorio de trabajo en WSL2:

```json
{
  "mcpServers": {
    "git-repository": {
      "command": "uvx",
      "args": [
        "mcp-server-git",
        "--repository",
        "/home/developer/projects/colegio-satelites"
      ]
    }
  }
}

```

---

## 🛡️ Reglas de Seguridad Innegociables

1. **Inmutabilidad en Remoto (No Auto-Push):** El conector ópera en modo local de auditoría. Ningún agente puede ejecutar `git push` o alterar ramas remotas (`origin/main`, `origin/master`) sin confirmación explícita del desarrollador.
2. **Escaneo de Secretos Pre-Commit:** Antes de sugerir o realizar un commit, el agente debe verificar que los archivos staged no contengan credenciales, tokens o archivos `.env`.
3. **Mensajes de Commit Estandarizados:** Los commits sugeridos deben seguir la convención *Conventional Commits* (ej. `feat(admisiones): add staging table for DWH sync`).

```

---

### 💻 Comando para Guardar el Archivo

Puedes crear el archivo directamente ejecutando este bloque en tu terminal:

```bash
cat << 'EOF' > ~/docker/ai/execution/mcp/git-mcp.md
# 🔌 MCP Server: Git Control de Versiones (`git-mcp`)

Este conector implementa el protocolo **MCP (Model Context Protocol)** oficial para otorgar a los agentes de IA acceso a la inspección, auditoría y lectura del estado de repositorios Git en la workstation.

---

## 🛠️ Herramientas Expuestas al Agente (Tools)

El servidor MCP de Git expone las siguientes capacidades nativas:

* **`git_status`**: Muestra el estado actual del árbol de trabajo (archivos modificados, staged, untracked y rama activa).
* **`git_diff`**: Obtiene las diferencias de código entre el estado actual, commits previos o ramas de desarrollo.
* **`git_log`**: Consulta el historial de commits filtrado por cantidad, autor, fecha o mensaje.
* **`git_show`**: Inspecciona los detalles completos y cambios introducidos por un commit específico (hash).
* **`git_branch`**: Lista las ramas locales y remotas disponibles en el repositorio.

---

## ⚙️ Configuración del Servidor MCP

### Ejecución mediante `uvx` (Servidor Oficial `mcp-server-git`)

El cliente de IA se ejecuta apuntando al directorio raíz del repositorio de trabajo en WSL2:

```json
{
  "mcpServers": {
    "git-repository": {
      "command": "uvx",
      "args": [
        "mcp-server-git",
        "--repository",
        "/home/developer/projects/colegio-satelites"
      ]
    }
  }
}

```

---

## 🛡️ Reglas de Seguridad Innegociables

1. **Inmutabilidad en Remoto (No Auto-Push):** El conector opera en modo local de auditoría. Ningún agente puede ejecutar `git push` o alterar ramas remotas (`origin/main`, `origin/master`) sin confirmación explícita del desarrollador.
2. **Escaneo de Secretos Pre-Commit:** Antes de sugerir o realizar un commit, el agente debe verificar que los archivos staged no contengan credenciales, tokens o archivos `.env`.
3. **Mensajes de Commit Estandarizados:** Los commits sugeridos deben seguir la convención *Conventional Commits* (ej. `feat(admisiones): add staging table for DWH sync`).
EOF

```

```