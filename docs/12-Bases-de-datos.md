# 12 - Bases de Datos

> Documentación de la arquitectura, instalación, configuración y administración de la plataforma de bases de datos de la workstation.

---

# Objetivo

Este documento registra la estrategia de datos utilizada en la workstation.

Todas las bases de datos se ejecutarán mediante Docker y estarán organizadas como servicios independientes.

Cada motor cumplirá un propósito específico según el tipo de información que deba almacenarse.

---

# Filosofía

No existe una única base de datos adecuada para todos los problemas.

Cada tecnología será utilizada según sus fortalezas.

La workstation adoptará un enfoque **Polyglot Persistence**, donde diferentes motores conviven y colaboran según el caso de uso.

---

# Arquitectura

```
                     Aplicaciones
                           │
        ┌──────────────────┼──────────────────┐
        ▼                  ▼                  ▼
      n8n             APIs Python        APIs Node
        │                  │                  │
        └──────────────────┼──────────────────┘
                           ▼
                   Plataforma de Datos
                           │
 ┌──────────┬──────────┬──────────┬──────────┬──────────┐
 ▼          ▼          ▼          ▼          ▼
SQL Server MongoDB    Redis     Neo4j   Cassandra
```

Todas las bases se ejecutarán dentro de Docker Compose.

---

# Motores soportados

| Motor | Función |
|---------|---------|
| SQL Server | Datos relacionales |
| MongoDB | Documentos JSON |
| Redis | Cache, sesiones y colas |
| Neo4j | Grafos y relaciones |
| Cassandra | Grandes volúmenes distribuidos |

---

# Organización

```
/home/joaco/docker/

stacks/

└── databases/

    ├── sqlserver/
    ├── mongodb/
    ├── redis/
    ├── neo4j/
    ├── cassandra/
    ├── adminer/
    └── pgadmin/
```

Cada motor tendrá su propio:

- docker-compose.yml
- .env
- volumen persistente
- scripts
- backups

---

# SQL Server

## Uso previsto

SQL Server será utilizado para:

- aplicaciones empresariales
- sistemas administrativos
- reporting
- procedimientos almacenados
- ETL
- Power BI
- integración con Microsoft

---

## Persistencia

Volumen Docker dedicado.

---

## Herramientas

- Azure Data Studio
- SQL Server Management Studio (Windows)
- VS Code SQL Extension

---

# MongoDB

## Uso previsto

MongoDB almacenará:

- documentos
- configuraciones
- APIs REST
- JSON
- logs
- metadata

---

## Herramientas

- MongoDB Compass
- VS Code MongoDB Extension

---

# Redis

## Uso previsto

Redis será utilizado para:

- cache
- sesiones
- colas
- rate limiting
- pub/sub
- almacenamiento temporal

No se utilizará como base de datos principal.

---

# Neo4j

## Uso previsto

Neo4j será utilizado para:

- grafos
- relaciones
- redes sociales
- grafos de conocimiento
- RAG
- agentes de IA
- dependencias

---

## Casos previstos

- relaciones entre documentos
- relaciones entre personas
- dependencias entre sistemas
- mapas de conocimiento
- ontologías

---

# Cassandra

## Uso previsto

Cassandra será utilizada para:

- grandes volúmenes
- escritura intensiva
- eventos
- series temporales
- alta disponibilidad
- almacenamiento distribuido

---

# Persistencia

Todas las bases utilizarán:

Docker Volumes

No se utilizarán contenedores efímeros.

---

# Variables de entorno

Cada servicio tendrá:

```
.env
```

Ejemplos:

- usuarios
- passwords
- puertos
- memoria
- configuración

Nunca se almacenarán credenciales dentro del compose.

---

# Redes Docker

Cada motor pertenecerá a:

```
database-network
```

Los proyectos accederán mediante nombres DNS de Docker.

Ejemplo:

```
sqlserver
mongodb
redis
neo4j
cassandra
```

---

# Integración con n8n

n8n podrá conectarse a todos los motores.

Los workflows utilizarán conexiones administradas desde n8n.

---

# Integración con Python

Python utilizará:

- SQLAlchemy
- pymongo
- redis-py
- neo4j-driver
- cassandra-driver

según corresponda.

---

# Integración con Node.js

Node utilizará:

- mssql
- mongoose
- redis
- neo4j-driver
- cassandra-driver

---

# Integración con Azure

En el futuro algunos proyectos podrán migrarse hacia:

- Azure SQL
- Azure Cosmos DB
- Azure Cache for Redis

manteniendo la misma arquitectura lógica.

---

# Integración con IA

Los motores serán utilizados por:

- Claude Code
- Codex
- MCP Servers
- n8n
- agentes

---

# Backups

Todos los motores deberán poseer:

- backup automático
- restore documentado
- exportación
- importación

La estrategia completa se documentará en:

```
14-Backups.md
```

---

# Buenas prácticas

- Un volumen por motor.
- Un compose por servicio.
- Nunca utilizar latest.
- Mantener versiones LTS.
- Utilizar variables de entorno.
- Documentar cambios de esquema.
- Versionar scripts SQL.

---

# Verificaciones

## Contenedores

```bash
docker ps
```

---

## Volúmenes

```bash
docker volume ls
```

---

## Redes

```bash
docker network ls
```

---

## SQL Server

```bash
sqlcmd
```

---

## MongoDB

```bash
mongosh
```

---

## Redis

```bash
redis-cli ping
```

---

## Neo4j

Acceso web

```
http://localhost:7474
```

---

## Cassandra

```bash
cqlsh
```

---

# Flujo de trabajo

Nuevo proyecto:

1. Elegir el motor adecuado.
2. Crear el stack Docker correspondiente.
3. Configurar `.env`.
4. Crear volumen persistente.
5. Crear scripts de inicialización.
6. Documentar el esquema.
7. Versionar cambios mediante Git.

---

# Relación con otros documentos

- 05-Docker.md
- 07-Python.md
- 08-Azure.md
- 11-n8n.md
- 14-Backups.md

---

# Estado al finalizar esta etapa

## Completado

- Arquitectura Polyglot Persistence definida.
- Motores seleccionados.
- Organización Docker establecida.
- Estrategia de persistencia definida.

## Pendiente

- Instalación de SQL Server.
- Instalación de MongoDB.
- Instalación de Redis.
- Instalación de Neo4j.
- Instalación de Cassandra.
- Herramientas gráficas de administración.
- Scripts de inicialización.
- Estrategia de replicación y monitoreo.

## Próxima etapa

**13-Herramientas.md**

Instalación y configuración de las herramientas complementarias de desarrollo, productividad y administración de la workstation.

---

# Historial

| Fecha | Cambio |
|--------|--------|
| 2026-08 | Definición de la arquitectura Polyglot Persistence. |
| 2026-08 | Selección de SQL Server, MongoDB, Redis, Neo4j y Cassandra como motores principales. |
| 2026-08 | Definición de la organización Docker para la plataforma de datos. |