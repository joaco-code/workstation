# 🔌 Arquitectura de Integración: Model Context Protocol (MCP)

Este documento define la arquitectura para conectar la Inteligencia Artificial (Claude Code, OpenAI Codex CLI) con los recursos de infraestructura y persistencia locales/cloud (MSSQL, Docker, Azure, DWH).

---

## 🎯 ¿Qué es MCP en esta Plataforma?

El **Model Context Protocol (MCP)** es un estándar abierto promovido por Anthropic que actúa como un bus de comunicación bidireccional entre el cliente de IA (Host/Client) y los recursos de datos o herramientas (Servers).

┌─────────────────────────────────────────────────────────┐
│              IA Client (Claude Code / Codex)             │
└────────────────────────────┬────────────────────────────┘
│ (Protocolo MCP / JSON-RPC)
▼
┌─────────────────────────────────────────────────────────┐
│                    MCP Server Router                    │
├──────────────┬──────────────┬─────────────┬─────────────┤
│  MSSQL MCP   │  Docker MCP  │  Azure MCP  │ Git/FS MCP  │
└──────┬───────┴──────┬───────┴──────┬──────┴──────┬──────┘
│              │              │             │
▼              ▼              ▼             ▼
[MSSQL / DWH]   [Docker Engine] [Azure Cloud] [WSL2 FS]


---

## 🛡️ Principios de Seguridad y Aislamiento

1. **Mínimo Privilegio (Least Privilege):** Los servidores MCP expuestos a la IA deben operar por defecto en modo **Read-Only** (consultas `SELECT`, insumos de arquitectura, lectura de logs). Operaciones de escritura (`INSERT`, `UPDATE`, `DROP`, despliegues) requieren confirmación humana explícita (*Human-in-the-Loop*).
2. **Transportes Permitidos:**
   * **STDIO (Standard Input/Output):** Transporte preferido para servidores locales ejecutados en la Workstation dentro de WSL2 (proceso hijo directo).
   * **SSE (Server-Sent Events / HTTP):** Reservado únicamente para integraciones remotas protegidas por TLS y tokens de autenticación.
3. **No Ex