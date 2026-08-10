# Local Database Infrastructure

Infraestructura de bases de datos local de la workstation de desarrollo.

Esta infraestructura es **independiente de cualquier proyecto de software** y puede ser utilizada por múltiples proyectos para desarrollo, pruebas y capacitación.

---

## Ubicación

```text
~/docker/stacks/databases/
```

---

## Estructura

```text
databases/
├── .env
├── .gitignore
├── README.md
├── SQL-SERVER-LOCAL.md
└── docker-compose.yml
```

### Archivos

| Archivo               | Propósito                         |
| --------------------- | --------------------------------- |
| `README.md`           | Índice y descripción general      |
| `SQL-SERVER-LOCAL.md` | Documentación de SQL Server local |
| `docker-compose.yml`  | Definición de la infraestructura  |
| `.env`                | Variables locales y credenciales  |
| `.gitignore`          | Protección de archivos sensibles  |

---

## Servicios

Actualmente la infraestructura contiene:

```text
SQL Server 2025 Developer
```

Servicio:

```text
sqlserver
```

Contenedor:

```text
local-sqlserver
```

Puerto:

```text
127.0.0.1:1433
```

---

## Objetivo

La infraestructura permite disponer de un SQL Server local para:

- desarrollo;
- pruebas;
- prototipos;
- ejercicios educativos;
- demostraciones de SQL Server;
- prácticas con SQL Server Management Studio (SSMS);
- proyectos que no requieren Azure;
- proyectos que posteriormente podrían migrarse a Azure.

---

## Independencia

Esta infraestructura **no pertenece a ningún proyecto**.

Los proyectos ubicados en:

```text
~/projects/
```

pueden utilizar esta infraestructura, pero no deben incorporar su configuración dentro del proyecto.

Ejemplo:

```text
~/projects/
├── proyecto-a/
├── proyecto-b/
└── goethe-reservas/
```

La infraestructura permanece separada:

```text
~/docker/stacks/databases/
```

---

## SQL Server

La instancia principal está documentada en:

```text
SQL-SERVER-LOCAL.md
```

Consultar ese documento para:

- configuración;
- credenciales;
- persistencia;
- healthcheck;
- conexión;
- operación;
- recuperación;
- validaciones realizadas.

---

## Operación

### Iniciar infraestructura

```bash
cd ~/docker/stacks/databases
docker compose up -d
```

### Ver estado

```bash
docker compose ps
```

### Ver logs

```bash
docker compose logs -f sqlserver
```

### Detener

```bash
docker compose stop
```

### Recrear contenedores conservando datos

```bash
docker compose down
docker compose up -d
```

---

## Datos

Los datos de SQL Server se almacenan en un Docker named volume.

El volumen es independiente del ciclo de vida del contenedor.

No eliminar el volumen salvo que se quiera borrar deliberadamente toda la información de la instancia.

---

## Seguridad

El archivo:

```text
.env
```

contiene información sensible y **no debe ser versionado ni compartido**.

Nunca almacenar en este repositorio:

- contraseñas;
- connection strings con credenciales;
- tokens;
- claves API;
- secretos de Azure;
- credenciales de proyectos.

La documentación describe la infraestructura sin exponer valores sensibles.

---

## Estado

Estado actual:

```text
SQL Server local operativo
```

Validaciones realizadas:

- SQL Server iniciado correctamente;
- healthcheck `healthy`;
- puerto `1433` accesible;
- conexión mediante `sqlcmd`;
- creación de base de datos;
- creación de tablas;
- inserción y consulta de datos;
- persistencia después de recrear el contenedor.

---

## Próximos pasos

1. Instalar SQL Server Management Studio (SSMS) en Windows.
2. Conectar SSMS a `localhost,1433`.
3. Validar autenticación desde Windows.
4. Crear una base de datos de práctica.
5. Documentar el flujo de uso para alumnos.
