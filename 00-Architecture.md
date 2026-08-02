# Workstation Architecture

**Versión:** 1.0

**Estado:** Definitivo

---

# Objetivo

Esta workstation fue diseñada para ser una plataforma de desarrollo profesional basada en:

- Windows 11
- WSL2 (Ubuntu)
- Docker Desktop
- Docker Compose
- VS Code
- Git

El objetivo es que toda la infraestructura pueda reconstruirse desde cero utilizando únicamente el repositorio Git.

---

# Principios

## 1. Infrastructure as Code

Toda la infraestructura se define mediante Docker Compose.

Nunca se crean contenedores manualmente.

Todo debe poder reconstruirse ejecutando:

docker compose up -d

---

## 2. Un único origen de verdad

La fuente de verdad siempre será:

docker-compose.yml

Portainer únicamente administra e inspecciona.

Nunca se utilizará para crear servicios.

---

## 3. Datos separados de los servicios

Nunca se almacenarán datos dentro de los contenedores.

Todos los datos vivirán en:

~/docker/data

Los contenedores pueden eliminarse sin perder información.

---

## 4. Organización por dominios

La infraestructura se divide en cuatro grandes áreas.

Infrastructure

Servicios necesarios para administrar la plataforma.

Ejemplos:

- Portainer
- Traefik
- Monitoring

---

Databases

Motores de bases de datos.

Ejemplos:

- SQL Server
- MongoDB
- Redis
- Neo4j
- Cassandra

---

Automation

Herramientas de automatización.

Ejemplos:

- n8n

---

AI

Servicios relacionados con IA.

Ejemplos:

- Ollama
- Open WebUI
- Qdrant
- Langfuse

---

# Estructura

~/docker
│
├── stacks
│   ├── infrastructure
│   │   ├── docker-compose.yml
│   │   ├── .env
│   │   └── README.md
│   │
│   ├── databases
│   │   ├── docker-compose.yml
│   │   ├── .env
│   │   └── README.md
│   │
│   ├── automation
│   │   ├── docker-compose.yml
│   │   ├── .env
│   │   └── README.md
│   │
│   └── ai
│       ├── docker-compose.yml
│       ├── .env
│       └── README.md
│
├── data
│   ├── sqlserver
│   ├── mongodb
│   ├── redis
│   ├── neo4j
│   ├── cassandra
│   ├── n8n
│   ├── ollama
│   ├── portainer
│   └── ...
│
├── docs
│
└── shared
    ├── backups
    ├── scripts
    ├── templates
    └── networks

---

# Docker Networks

Existe una única red principal:

goethe-network

Todos los servicios se conectan a ella.

La comunicación entre servicios siempre se realiza utilizando el nombre del servicio Docker.

Nunca mediante direcciones IP.

---

# Gestión de servicios

Cada stack puede iniciarse completo:

docker compose up -d

o parcialmente:

docker compose up -d sqlserver

docker compose up -d redis

docker compose up -d mongodb

No es necesario ejecutar todos los servicios simultáneamente.

---

# Persistencia

Toda la persistencia se encuentra en:

~/docker/data

Las carpetas data nunca se versionan en Git.

---

# Git

Se versiona:

- stacks
- docs
- scripts
- templates

No se versiona:

- data
- backups

---

# Convenciones

Todos los stacks contienen:

docker-compose.yml

.env

README.md

---

# Futuras ampliaciones

Se podrán agregar nuevos servicios sin modificar la estructura general.

Ejemplos:

- PostgreSQL
- RabbitMQ
- Kafka
- MinIO
- Elasticsearch
- Grafana
- Prometheus
- Keycloak

Todos deberán incorporarse respetando la arquitectura definida en este documento.

---

# Regla de oro

Antes de modificar la arquitectura se debe actualizar este documento.

La arquitectura siempre precede a la implementación.