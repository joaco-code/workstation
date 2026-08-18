# 📦 Seguridad en la Cadena de Suministro

Las vulnerabilidades heredadas a través de dependencias de terceros representan un riesgo severo[cite: 1].

## Políticas de Gestión de Dependencias

* **Fijación de Versiones (Pinning):** Las dependencias en `package.json`, `requirements.txt` o `docker-compose.yml` deben apuntar a versiones exactas, evitando rangos amplios (`^` o `~`) que puedan inyectar actualizaciones maliciosas.
* **Lockfiles:** Archivos como `pnpm-lock.yaml` o `package-lock.json` deben commitearse obligatoriamente para garantizar builds determinísticos.
* **Auditoría Pre-Instalación:** Revisar la reputación, popularidad y mantenimiento del paquete antes de integrarlo a un proyecto.
* **Software Bill of Materials (SBOM):** Mantener un inventario claro de todos los componentes de terceros utilizados en producción.