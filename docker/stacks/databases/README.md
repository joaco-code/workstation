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

## Acceso desde Windows

La instancia fue validada correctamente desde Windows utilizando SQL Server
Management Studio (SSMS).

Configuración utilizada:


Servidor: tcp:127.0.0.1,1433
Autenticación: SQL Server Authentication
Usuario: sa
Cifrado: Optional
Trust Server Certificate: habilitado

La conexión mediante tcp:127.0.0.1,1433 fue exitosa.

Se utiliza explícitamente 127.0.0.1 para evitar problemas de resolución de
localhost hacia IPv6 (::1) en determinados clientes.


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
- conexión desde Windows mediante SQL Server Management Studio (SSMS);
- autenticación SQL mediante el usuario `sa`;
- conexión validada utilizando `tcp:127.0.0.1,1433`.

---

## Próximos pasos

1. Documentar la conexión desde Windows mediante SSMS.
2. Definir estrategia de backup y restore de la infraestructura local.
3. Definir procedimiento de actualización de la imagen de SQL Server.
4. Definir procedimiento de recuperación ante pérdida del contenedor.
5. Crear una base de datos de práctica cuando exista una necesidad concreta.
6. Documentar el flujo de uso para alumnos, si corresponde.
