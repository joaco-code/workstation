#!/usr/bin/env bash
set -e

AGENT_NAME=${1:-"backend-engineer"}
PROMPT_INPUT=${2:-""}

AGENT_FILE="$HOME/docker/ai/execution/agents/${AGENT_NAME}.md"
CORE_RULES="$HOME/docker/ai/core/conventions.md"

if [ ! -f "$AGENT_FILE" ]; then
    echo "❌ Error: El agente '$AGENT_NAME' no existe en execution/agents/"
    exit 1
fi

echo "🚀 Ejecutando OpenAI Codex CLI con el rol: [$AGENT_NAME]"

# Cargar directivas del núcleo y del agente
SYSTEM_PROMPT=$(cat "$CORE_RULES" "$AGENT_FILE")

# Combinar las directivas del agente con el requerimiento del usuario
COMBINED_PROMPT="[INSTRUCCIONES DEL SISTEMA Y ROL DE AGENTE: $AGENT_NAME]
$SYSTEM_PROMPT

[SOLICITUD DEL USUARIO]
$PROMPT_INPUT"

# Invocar codex exec agregando la bandera para omitir el chequeo estricto de repositorio git
codex exec --skip-git-repo-check "$COMBINED_PROMPT"
