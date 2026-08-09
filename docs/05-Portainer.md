# Portainer CE

> Documentación de la instalación, configuración y arquitectura de Portainer como gestor visual de contenedores en la Workstation.

---

# Objetivo

Este documento registra la configuración de Portainer Community Edition (CE) dentro del entorno Docker de la workstation. Portainer se utiliza para monitorizar, gestionar y administrar de forma gráfica los contenedores, imágenes, redes y volúmenes locales.

---

# Arquitectura de Despliegue

Portainer está desplegado como parte del stack de **Infraestructura**.

*   **Stack:** `infrastructure`
*   **Ruta Compose:** `~/docker/stacks/infrastructure/docker-compose.yml`
*   **Imagen:** `portainer/portainer-ce:2.31.1` (definido por `${PORTAINER_VERSION}`)
*   **Contenedor:** `goethe-portainer` (definido por `${PORTAINER_NAME}`)

---

# Variables de Entorno

El despliegue depende del archivo `.env` ubicado en el directorio del stack, el cual inyecta las siguientes variables:

*   `PORTAINER_VERSION`: Versión de la imagen.
*   `PORTAINER_NAME`: Nombre del contenedor.
*   `PORTAINER_HTTP_PORT`: Puerto mapeado para HTTP (interno 9000).
*   `PORTAINER_HTTPS_PORT`: Puerto mapeado para HTTPS (interno 9443).
*   `TZ`: Zona horaria del contenedor.
*   `NETWORK_NAME`: Red externa de Docker (ej. `goethe-network`).
*   `PROJECT_NAME`: Etiqueta del proyecto para organización.

---

# Persistencia y Volúmenes

Los datos de configuración, usuarios y estados de Portainer se persisten localmente fuera del contenedor:

*   **Ruta Host:** `~/docker/data/portainer`
*   **Ruta Contenedor:** `/data`

Adicionalmente, Portainer requiere acceso al socket de Docker para funcionar:
*   **Socket:** `/var/run/docker.sock:/var/run/docker.sock`

---

# Operación

Para levantar el servicio de Portainer de forma aislada (si está detenido):

```bash
cd ~/docker/stacks/infrastructure
docker compose up -d portainer
