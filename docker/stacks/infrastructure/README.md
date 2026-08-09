# Infrastructure Stack

## Objetivo

Este stack contiene los servicios base de administración de la workstation.

## Servicios

| Servicio | Estado |
|----------|--------|
| Portainer | ✅ |
| Traefik | ⏳ |
| Uptime Kuma | ⏳ |
| Grafana | ⏳ |
| Prometheus | ⏳ |

## Red

Todos los servicios utilizan la red Docker:

goethe-network

## Persistencia

Los datos se almacenan en:

~/docker/data

## Administración

Levantar el stack:

docker compose up -d

Detener:

docker compose down

Logs:

docker compose logs

Estado:

docker compose ps