# 🔐 Gestión de Secretos

Los secretos (contraseñas, API keys, tokens, certificados) son el objetivo principal de los atacantes[cite: 1]. Su gestión es crítica.

## Reglas de Oro

* **Prohibición Absoluta:** Nunca, bajo ninguna circunstancia, se commiteará un secreto en código fuente, archivos de configuración o Dockerfiles.
* **Uso de Archivos `.env`:** Los secretos locales se gestionan mediante archivos `.env` que DEBEN estar incluidos en el `.gitignore` global[cite: 1].
* **Plantillas:** Se permite commitear archivos `.env.example` o `.env.template` con valores vacíos o falsos para documentar las variables necesarias.
* **Inyección en Contenedores:** Docker Compose debe leer los secretos desde el entorno del host y pasarlos a los contenedores, preferiblemente utilizando Docker Secrets o variables de solo lectura.