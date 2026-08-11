# SQL Server CLI Cookbook

> Manual operativo para trabajar con SQL Server desde WSL usando Docker y `sqlcmd`.
>
> Objetivo: **copiar → pegar → ejecutar**. Cada bloque debe servir para comprobar algo concreto.

**Ubicación sugerida:**

```text
~/docker/stacks/databases/SQL-SERVER-CLI.md
```

## Requisitos

Se asume que:

- El proyecto Docker está en `~/docker/stacks/databases`.
- El contenedor se llama `local-sqlserver`.
- El servicio de Docker Compose se llama `sqlserver`.
- SQL Server escucha en el puerto `1433`.
- El archivo `.env` contiene `MSSQL_SA_PASSWORD`.
- El cliente `sqlcmd` está instalado dentro del contenedor en `/opt/mssql-tools18/bin/sqlcmd`.

> **Importante:** si el nombre del contenedor o del servicio es diferente en tu `docker-compose.yml`, ajustá `local-sqlserver` o `sqlserver` según corresponda.

---

## 1. Variables y conexión

Primero, ubicarse en el directorio del proyecto:

```bash
cd ~/docker/stacks/databases
```

Cargar la contraseña desde `.env` para no repetirla en todos los comandos:

```bash
export MSSQL_PASSWORD="$(grep '^MSSQL_SA_PASSWORD=' .env | cut -d= -f2-)"
```

Verificar que la variable exista sin mostrar la contraseña:

```bash
if [ -n "$MSSQL_PASSWORD" ]; then
  echo "MSSQL_PASSWORD cargada"
else
  echo "ERROR: no se encontró MSSQL_SA_PASSWORD en .env"
fi
```

### Probar la conexión

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -Q "SELECT @@VERSION;"
```

### Ver versión, servidor y fecha

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -Q "SELECT @@SERVERNAME AS ServerName, @@VERSION AS Version, GETDATE() AS CurrentDateTime;"
```

---

## 2. Validar Docker

### Estado de los servicios

```bash
docker compose ps
```

### Estado específico del contenedor

```bash
docker inspect local-sqlserver \
  --format '{{.State.Status}}'
```

### Healthcheck

Si el contenedor tiene un healthcheck configurado:

```bash
docker inspect local-sqlserver \
  --format '{{if .State.Health}}{{.State.Health.Status}}{{else}}no-healthcheck{{end}}'
```

### Logs

```bash
docker compose logs sqlserver
```

### Logs en tiempo real

```bash
docker compose logs -f sqlserver
```

### Verificar que el puerto 1433 esté abierto

```bash
nc -zv 127.0.0.1 1433
```

> Si `nc` no está instalado, este chequeo puede omitirse o instalarse con el gestor de paquetes de tu distribución de WSL.

---

## 3. Listar bases de datos

### Solo nombres

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -Q "SELECT name FROM sys.databases ORDER BY name;"
```

### Con estado y modelo de recuperación

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -Q "SELECT name, state_desc, recovery_model_desc FROM sys.databases ORDER BY name;"
```

---

## 4. Crear una base de datos

Por ejemplo:

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -Q "IF DB_ID(N'PracticaSQL') IS NULL CREATE DATABASE PracticaSQL;"
```

### Verificar

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -Q "SELECT name FROM sys.databases WHERE name = N'PracticaSQL';"
```

---

## 5. Ejecutar SQL sobre una base específica

La opción importante es:

```text
-d NombreBase
```

Por ejemplo:

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -d PracticaSQL \
  -Q "SELECT DB_NAME() AS DatabaseName;"
```

---

## 6. Crear una tabla

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -d PracticaSQL \
  -Q "
IF OBJECT_ID(N'dbo.Personas', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.Personas (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Nombre NVARCHAR(100) NOT NULL,
        Email NVARCHAR(200),
        Edad INT,
        FechaAlta DATETIME2 NOT NULL DEFAULT SYSDATETIME()
    );
END;
"
```

> Se usa `dbo.Personas` explícitamente para evitar depender del esquema por defecto.

---

## 7. Insertar registros

### Un registro

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -d PracticaSQL \
  -Q "
INSERT INTO dbo.Personas (Nombre, Email, Edad)
VALUES (N'Juan Pérez', N'juan@example.com', 35);
"
```

### Varios registros

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -d PracticaSQL \
  -Q "
INSERT INTO dbo.Personas (Nombre, Email, Edad)
VALUES
    (N'Ana García', N'ana@example.com', 28),
    (N'Pedro López', N'pedro@example.com', 42),
    (N'Laura Díaz', N'laura@example.com', 31);
"
```

---

## 8. Consultar

### Todos los registros

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -d PracticaSQL \
  -Q "SELECT * FROM dbo.Personas;"
```

### Columnas específicas

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -d PracticaSQL \
  -Q "SELECT Id, Nombre, Edad FROM dbo.Personas;"
```

### Con filtro

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -d PracticaSQL \
  -Q "SELECT * FROM dbo.Personas WHERE Edad >= 30;"
```

### Ordenado

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -d PracticaSQL \
  -Q "SELECT * FROM dbo.Personas ORDER BY Edad DESC;"
```

---

## 9. Actualizar

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -d PracticaSQL \
  -Q "
UPDATE dbo.Personas
SET Edad = 36
WHERE Nombre = N'Juan Pérez';
"
```

### Verificar

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -d PracticaSQL \
  -Q "SELECT * FROM dbo.Personas WHERE Nombre = N'Juan Pérez';"
```

---

## 10. Eliminar registros

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -d PracticaSQL \
  -Q "
DELETE FROM dbo.Personas
WHERE Nombre = N'Pedro López';
"
```

---

## 11. Contar registros

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -d PracticaSQL \
  -Q "SELECT COUNT(*) AS TotalPersonas FROM dbo.Personas;"
```

---

## 12. Transacciones

Una transacción permite probar cambios y deshacerlos con `ROLLBACK`.

### Probar `ROLLBACK`

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -d PracticaSQL \
  -Q "
BEGIN TRANSACTION;

UPDATE dbo.Personas
SET Edad = Edad + 1;

SELECT * FROM dbo.Personas;

ROLLBACK TRANSACTION;

SELECT * FROM dbo.Personas;
"
```

### Probar `COMMIT`

Si querés confirmar los cambios:

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -d PracticaSQL \
  -Q "
BEGIN TRANSACTION;

UPDATE dbo.Personas
SET Edad = Edad + 1;

COMMIT TRANSACTION;

SELECT * FROM dbo.Personas;
"
```

> `COMMIT` y `ROLLBACK` son alternativas dentro de una misma transacción. Una vez ejecutado `ROLLBACK`, no tiene sentido ejecutar después `COMMIT` para confirmar esos mismos cambios.

---

## 13. Ejecutar un archivo `.sql`

Esta es una de las formas más útiles para trabajar con scripts reproducibles.

Crear el archivo:

```bash
nano ~/docker/stacks/databases/practica.sql
```

Contenido:

```sql
USE PracticaSQL;
GO

INSERT INTO dbo.Personas (Nombre, Email, Edad)
VALUES (N'Alumno de prueba', N'alumno@example.com', 20);
GO

SELECT *
FROM dbo.Personas;
GO
```

Ejecutarlo desde WSL:

```bash
docker exec -i local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -d PracticaSQL \
  < practica.sql
```

> `docker exec -i` es importante porque permite pasar el contenido del archivo mediante `stdin` al `sqlcmd` que corre dentro del contenedor.

---

## 14. Entrar directamente al `sqlcmd`

También se puede usar `sqlcmd` de manera interactiva:

```bash
docker exec -it local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C
```

Aparecerá:

```text
1>
```

Podés ejecutar:

```sql
SELECT @@VERSION;
GO
```

Después:

```sql
SELECT name
FROM sys.databases;
GO
```

Para salir:

```text
QUIT
```

También podés usar:

```text
EXIT
```

---

## 15. Validar persistencia

Después de trabajar con la base:

```bash
docker compose restart
```

Verificar:

```bash
docker compose ps
```

Y consultar nuevamente:

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -d PracticaSQL \
  -Q "SELECT * FROM dbo.Personas;"
```

### Probar reinicio completo de los servicios

```bash
docker compose down
docker compose up -d
```

Esperar a que SQL Server esté listo:

```bash
docker compose ps
```

Y verificar los datos:

```bash
docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -d PracticaSQL \
  -Q "SELECT * FROM dbo.Personas;"
```

> **No usar `docker compose down -v`** durante esta prueba. La opción `-v` elimina los volúmenes asociados al proyecto y puede borrar los datos persistidos.

---

# 16. Chequeo rápido

Este bloque permite comprobar rápidamente si Docker, el healthcheck, el puerto y SQL Server están funcionando:

```bash
cd ~/docker/stacks/databases

echo "===== DOCKER COMPOSE ====="
docker compose ps

echo "===== CONTAINER STATUS ====="
docker inspect local-sqlserver \
  --format '{{.State.Status}}'

echo "===== HEALTH ====="
docker inspect local-sqlserver \
  --format '{{if .State.Health}}{{.State.Health.Status}}{{else}}no-healthcheck{{end}}'

echo "===== PORT 1433 ====="
nc -zv 127.0.0.1 1433

echo "===== SQL SERVER ====="
export MSSQL_PASSWORD="$(grep '^MSSQL_SA_PASSWORD=' .env | cut -d= -f2-)"

docker exec local-sqlserver \
  /opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "$MSSQL_PASSWORD" \
  -C \
  -Q "SELECT @@VERSION;"
```

---

## 17. Buenas prácticas

### No guardar la contraseña en este documento

No escribir la contraseña real directamente en comandos ni en el `.md`.

El patrón:

```bash
export MSSQL_PASSWORD="$(grep '^MSSQL_SA_PASSWORD=' .env | cut -d= -f2-)"
```

permite obtenerla desde `.env` sin repetirla en el documento.

### Proteger `.env`

Verificar que `.env` esté incluido en `.gitignore`:

```gitignore
.env
```

### Separar infraestructura de operación

Una estructura recomendable:

```text
~/docker/stacks/databases/
├── .env
├── .gitignore
├── README.md
├── SQL-SERVER-LOCAL.md
├── SQL-SERVER-CLI.md
├── docker-compose.yml
└── practica.sql
```

La separación de responsabilidades sería:

- `SQL-SERVER-LOCAL.md`: cómo está construida y configurada la infraestructura.
- `SQL-SERVER-CLI.md`: cómo trabajar con SQL Server desde WSL.
- `practica.sql`: scripts SQL reproducibles.
- `.env`: configuración sensible/local.

---

## 18. Resumen de comandos principales

| Objetivo | Comando |
|---|---|
| Ver servicios | `docker compose ps` |
| Ver logs | `docker compose logs sqlserver` |
| Ver estado del contenedor | `docker inspect local-sqlserver --format '{{.State.Status}}'` |
| Ver healthcheck | `docker inspect local-sqlserver --format '{{if .State.Health}}{{.State.Health.Status}}{{else}}no-healthcheck{{end}}'` |
| Verificar puerto | `nc -zv 127.0.0.1 1433` |
| Conectar con SQL Server | `docker exec -it local-sqlserver /opt/mssql-tools18/bin/sqlcmd ...` |
| Ejecutar una consulta | `sqlcmd ... -Q "SELECT ..."` |
| Ejecutar un `.sql` | `docker exec -i ... sqlcmd ... < archivo.sql` |
| Reiniciar servicios | `docker compose restart` |
| Bajar servicios | `docker compose down` |
| Levantar servicios | `docker compose up -d` |

---

## Nota final

Este documento está pensado como **manual operativo de WSL para SQL Server CLI**: comandos concretos, verificables y reproducibles.

La idea es que `SQL-SERVER-LOCAL.md` documente la infraestructura y que este archivo documente el uso diario de SQL Server mediante `sqlcmd`.
