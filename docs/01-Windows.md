# 01 - Windows

> Documentación de la instalación, configuración y optimización de Windows 11 como plataforma base de la workstation.

---

# Objetivo

Este documento registra todas las configuraciones realizadas sobre Windows.

Windows actúa como sistema operativo anfitrión (Host OS) de la workstation.

Todas las modificaciones deberán quedar documentadas para poder reproducir el entorno en otra computadora.

---

# Rol de Windows

Windows se utilizará exclusivamente como plataforma para:

- Ejecutar aplicaciones gráficas.
- Administrar WSL2.
- Ejecutar Docker Desktop.
- Proporcionar acceso al hardware.
- Gestionar dispositivos y periféricos.

Todo el desarrollo de software se realizará dentro de Ubuntu (WSL2).

---

# Estado inicial

## Sistema Operativo

| Característica | Valor |
|----------------|-------|
| Sistema Operativo | Windows 11 Pro |
| Arquitectura | 64 bits |
| Estado inicial | Instalación completamente limpia |
| Actualizaciones | Aplicadas antes de comenzar la configuración |

---

# Configuración inicial

## Actualización del sistema

Antes de instalar cualquier herramienta se verificó:

- Windows Update completamente actualizado.
- Drivers instalados.
- Firmware actualizado (cuando correspondiera).

---

## Virtualización

Se verificó el soporte para:

- WSL2
- Hyper-V
- Virtual Machine Platform

Resultado:

✅ Compatible

---

# Aplicaciones instaladas

## Windows Terminal

### Estado

✅ Instalado

### Motivo

Se utilizará como terminal principal de la workstation.

Permitirá trabajar con:

- PowerShell
- Ubuntu (WSL)
- CMD (solo cuando sea necesario)

---

## Visual Studio Code

### Estado

✅ Instalado

### Configuración

Se instaló utilizando el instalador oficial.

Opciones seleccionadas:

- Agregar VS Code al PATH.
- Registrar VS Code como editor predeterminado.
- Agregar "Open with Code" al menú contextual.

---

## Extensión WSL

### Estado

✅ Instalada

Identificador:

```
ms-vscode-remote.remote-wsl
```

Resultado:

VS Code puede abrir proyectos directamente dentro de Ubuntu.

---

# Incidencias encontradas

## Problema

Después de instalar VS Code:

```
code
```

no era reconocido desde PowerShell ni desde Ubuntu.

### Diagnóstico

Se verificó:

```
where code
```

Resultado:

No encontrado.

Posteriormente se comprobó que VS Code había sido instalado en:

```
C:\Program Files\Microsoft VS Code
```

pero la carpeta:

```
C:\Program Files\Microsoft VS Code\bin
```

no se encontraba en la variable PATH del usuario.

### Solución

Se agregó manualmente:

```
C:\Program Files\Microsoft VS Code\bin
```

a la variable de entorno PATH.

Posteriormente se reinició PowerShell.

Resultado:

```
code --version
```

funcionando correctamente.

También quedó disponible:

```
code .
```

desde Ubuntu (WSL).

---

# Variables de entorno

## PATH

Se verificó la correcta inclusión de:

```
C:\Program Files\Microsoft VS Code\bin
```

Se documentarán aquí todas las futuras modificaciones del PATH.

---

# Convenciones

## Windows contendrá únicamente aplicaciones gráficas.

Ejemplos:

- VS Code
- Docker Desktop
- Windows Terminal
- Navegadores
- Office
- DBeaver
- PowerToys

No se instalarán herramientas de desarrollo que también existan dentro de Ubuntu, salvo que sea estrictamente necesario.

---

# Organización de archivos

No se almacenarán proyectos de desarrollo en:

```
C:\
```

Todos los proyectos vivirán en:

```
/home/joaco/projects
```

accediendo mediante WSL.

---

# Aplicaciones pendientes

Las siguientes aplicaciones se instalarán en etapas posteriores.

| Aplicación | Estado |
|------------|--------|
| Docker Desktop | ⬜ |
| DBeaver | ⬜ |
| PowerToys | ⬜ |
| 7-Zip | ⬜ |
| Notepad++ (opcional) | ⬜ |

---

# Buenas prácticas

- Mantener Windows Update al día.
- Evitar instalar herramientas de desarrollo duplicadas en Windows y Ubuntu.
- Utilizar Windows únicamente como sistema anfitrión.
- Mantener limpio el PATH del sistema.
- Instalar aplicaciones preferentemente mediante Winget cuando sea posible.

---

# Verificaciones

## Windows Terminal

```
wt
```

Resultado esperado:

Se abre Windows Terminal.

---

## VS Code

```
code --version
```

Resultado esperado:

Muestra la versión instalada.

---

## Integración WSL

Desde Ubuntu:

```
code .
```

Resultado esperado:

Abre VS Code conectado a WSL.

---

# Relación con otros documentos

Este documento se complementa con:

- 00-Hardware.md
- 02-WSL.md
- 03-VSCode.md

---

# Historial

| Fecha | Cambio |
|--------|--------|
| 2026-07 | Creación del documento. |
| 2026-07 | Instalación de Windows Terminal y Visual Studio Code. |
| 2026-07 | Configuración del PATH para el comando `code`. |