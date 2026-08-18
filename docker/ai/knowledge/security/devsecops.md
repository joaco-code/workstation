# 🔄 DevSecOps: Cultura y Práctica

El enfoque DevSecOps integra la seguridad de forma continua en el ciclo de vida de desarrollo de software (SDLC). 

## Principios Fundamentales

* **Automatización de Seguridad:** Las pruebas de seguridad (SAST, DAST, SCA) deben integrarse en los pipelines de CI/CD.
* **Infraestructura Inmutable:** Los contenedores y servidores no se parchean en caliente; se reconstruyen desde una imagen base segura y se vuelven a desplegar.
* **Mínimo Privilegio:** Cada servicio, contenedor y usuario operará únicamente con los permisos estrictamente necesarios para su función.
* **Trazabilidad:** Todos los cambios en infraestructura y código deben ser versionados en Git, incluyendo las decisiones de arquitectura (ADRs).

## Integración con IA
Los agentes (Claude/Codex) están instruidos para actuar como auditores pasivos durante la generación de código, alertando sobre patrones inseguros y sugiriendo refactorizaciones alineadas con estos principios.