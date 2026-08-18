# 🛡️ Hardening de Infraestructura

El hardening consiste en reducir la superficie de ataque de nuestros sistemas y contenedores[cite: 1].

## Estándares para Contenedores Docker

* **Imágenes Base:** Utilizar imágenes oficiales, mínimas (como Alpine o distroless) y específicas (ej. `node:18-alpine` en lugar de `node:latest`).
* **Usuarios No-Root:** Añadir la instrucción `USER nonroot` (o equivalente) al final de los Dockerfiles. Los contenedores no deben ejecutarse como root.
* **Sistemas de Archivos:** Montar volúmenes de configuración como Read-Only (`:ro`) siempre que sea posible.
* **Redes Aisladas:** No usar la red default de Docker. Crear redes específicas por stack (`backend-tier`, `database-tier`) para segmentar el tráfico.