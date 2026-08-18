# 🤖 Catálogo de Agentes Especializados (System Prompts)

Este directorio define los perfiles, responsabilidades y comportamientos de las identidades de IA que operan en la plataforma.

---

## 🎯 Filosofía

Un **Agente** es un rol especializado configurado mediante un System Prompt estricto. Cada agente:
* Tiene un **Dominio de Responsabilidad** delimitado (evita que un programador tome decisiones de arquitectura sin consultar).
* Sabe qué documentación en `knowledge/` debe consultar antes de responder.
* Sabe qué **Skills** en `execution/skills/` tiene permitidos ejecutar.

---

## 📂 Mapa de Agentes

| Agente | Archivo | Responsabilidad Principal |
| :--- | :--- | :--- |
| **Software Architect** | `software-architect.md` | Diseño de soluciones, definición de contextos (.NET 10) e integración con el DWH. |
| **Backend Engineer** | `backend-engineer.md` | Desarrollo en C# .NET 10, Clean Architecture, CQRS y Web APIs. |
| **Database Architect** | `database-architect.md` | Diseños de modelos MSSQL, tuning de queries T-SQL y vistas Staging para DWH. |
| **Security Auditor** | `security-auditor.md` | Auditoría DevSecOps, revisión de secretos, Key Vault y cumplimiento OWASP. |
| **Docker Specialist** | `docker-specialist.md` | Creación y mantenimiento de Stacks Docker Compose, redes y hardening. |
| **Azure Engineer** | `azure-engineer.md` | Infraestructura como Código (Bicep), App Services e Identidades Administradas. |
| **Documentation Writer** | `documentation-writer.md` | Generación de ADRs, especificaciones técnicas y sincronización de KB. |
| **Code Reviewer** | `code-reviewer.md` | Control de calidad, refactorización y cumplimiento de convenciones globales. |