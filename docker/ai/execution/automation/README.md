# ⚡ Catálogo de Automatizaciones

Este directorio centraliza las rutinas, scripts y flujos automatizados de gobernanza, calidad de código y mantenimiento documental de la plataforma.

---

## 🎯 Objetivo

Garantizar que la documentación, la arquitectura y los artefactos de infraestructura se mantengan **actualizados, validados y sincronizados de forma automática**, reduciendo la fricción operacional en los proyectos satélites (.NET 10 / MSSQL / Azure).

---

## 📊 Matriz de Automatizaciones

| Automatización | Archivo | Propósito Principal |
| :--- | :--- | :--- |
| **Generación de ADR** | `adr-generator.md` | Crea un Registro de Decisión de Arquitectura formateado a partir de un debate o decisión técnica. |
| **Generación de README** | `readme-generator.md` | Genera o actualiza el `README.md` de cualquier subdirectorio analizando sus archivos. |
| **Revisión de Documentación** | `docs-reviewer.md` | Audita la KB detectando enlaces rotos, incoherencias o documentos desactualizados. |
| **Validación Docker Compose** | `docker-compose-validator.md` | Analiza archivos `docker-compose.yml` verificando reglas de hardening, healthchecks y redes. |
| **Release Notes** | `release-notes.md` | Sintetiza los cambios de una entrega para stakeholders y equipo técnico. |
| **Changelog Generator** | `changelog-generator.md` | Parsea el historial Git en formato *Conventional Commits* para actualizar `CHANGELOG.md`. |
| **Documentación Automática** | `auto-docs.md` | Extrae especificaciones técnicas directamente desde el código (.NET 10 Web APIs, T-SQL DDL). |