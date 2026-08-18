cat << 'EOF' > ~/docker/ai/knowledge/security/README.md
# 🛡️ Seguridad y Gobernanza (Security)

Este directorio centraliza las políticas, estándares y prácticas de seguridad que rigen toda la plataforma de desarrollo e infraestructura.

## Filosofía

La seguridad en esta plataforma no es un paso de auditoría final, sino un atributo inherente del diseño. Adoptamos un enfoque **Shift-Left**, integrando validaciones de seguridad desde la concepción de la arquitectura (Threat Modeling) hasta la escritura de código y el despliegue de contenedores.

## Índice de Conocimiento

El conocimiento está dividido en tres pilares fundamentales:

### 1. Políticas Core y Estándares
* **[`devsecops.md`](./devsecops.md):** Cultura, automatización y principios fundamentales del ciclo de vida seguro.
* **[`iso27001.md`](./iso27001.md):** Alineación de nuestros controles operativos con el estándar de gestión de seguridad.
* **[`owasp.md`](./owasp.md):** Mitigación activa de los riesgos documentados en el OWASP Top 10.

### 2. Diseño, Prevención y Hardening
* **[`threat-model.md`](./threat-model.md):** Metodología STRIDE para el análisis y modelado de amenazas en la fase de diseño.
* **[`hardening.md`](./hardening.md):** Reducción de la superficie de ataque en infraestructura (imágenes base, usuarios no-root, redes aisladas).
* **[`supply-chain.md`](./supply-chain.md):** Políticas de gestión de dependencias, lockfiles y mitigación de vulnerabilidades heredadas.

### 3. Operación y Respuesta
* **[`secret-management.md`](./secret-management.md):** Reglas estrictas, innegociables, para el manejo de credenciales, tokens y archivos `.env`.
* **[`vulnerability-management.md`](./vulnerability-management.md):** Ciclo de descubrimiento, triaje y remediación (SLAs) de vulnerabilidades.
* **[`incident-response.md`](./incident-response.md):** Procedimiento estandarizado para contención, erradicación y análisis post-mortem de incidentes.

---

> **⚠️ Atención Agentes y Desarrolladores:**
> Cualquier agente de IA (Claude, Codex) o ingeniero que interactúe con este entorno debe comprender y adherirse estrictamente a estos lineamientos antes de proponer cambios arquitectónicos, escribir código o manipular credenciales.
EOF