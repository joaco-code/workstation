# 📋 Automation: Generador de CHANGELOG

## Propósito
Parsear los commits entre el último tag/release y `HEAD` siguiendo *Conventional Commits* (`feat:`, `fix:`, `refactor:`, `docs:`) y generar o actualizar el archivo `CHANGELOG.md` del proyecto.

## Formato Estándar
```markdown
## [1.2.0] - YYYY-MM-DD

### 🚀 Features
* **admisiones:** endpoint para registro de postulantes con validación FluentValidation (#42)

### 🐛 Fixes
* **mssql:** corrección de deadlock en consulta de cupos de reservas (#45)

### 🧹 Refactor & Chore
* **dotnet:** migración de Minimal APIs a .NET 10 Primary Constructors (#40)