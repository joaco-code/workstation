# 00 - Hardware

> Documentación del hardware base sobre el cual se construye esta workstation.

---

# Objetivo

Este documento registra las características físicas del equipo y las decisiones de arquitectura relacionadas con el hardware.
Toda decisión de software (WSL, Docker, memoria, contenedores, virtualización, etc.) debe considerar las capacidades de este equipo.

---

# Información general

| Componente | Valor |

|------------|-------|

| Equipo | 2026-18 |

| Sistema Operativo | Windows 11 Pro 64 bits |

| Arquitectura | x64 |

| Estado inicial | Instalación limpia |

---

# Procesador

| Característica | Valor |

|----------------|------|

| Modelo | Intel Core Ultra 7 265U |

| Arquitectura | x64 |

| Virtualización | Compatible |

| Uso previsto | Desarrollo, Docker, IA, Automatización |

## Observaciones

El procesador ofrece recursos suficientes para ejecutar simultáneamente:

- Docker Desktop

- WSL2

- VS Code

- n8n

- PostgreSQL

- MongoDB

- SQL Server

- Claude Code

- Codex

- Azure CLI

sin necesidad de hardware adicional.

---

# Memoria

| Característica | Valor |

|----------------|------|

| RAM instalada | 32 GB |

| RAM utilizable | 31.5 GB |

## Configuración adoptada

WSL2 utilizará:

| Recurso | Valor |

|----------|------|

| RAM máxima | 16 GB |

| Procesadores | 8 |

| Swap | 8 GB |

## Justificación

Esta configuración permite:

- mantener Windows completamente fluido;

- ejecutar varios contenedores Docker simultáneamente;

- trabajar con modelos de IA y herramientas de desarrollo sin agotar la memoria;

- evitar que WSL monopolice los recursos del sistema.

---

# Almacenamiento

| Característica | Valor |

|----------------|------|

| Capacidad | 1 TB SSD |

| Espacio utilizado al inicio | \~80 GB |

## Estrategia

El almacenamiento se dividirá lógicamente:

### Windows

Aplicaciones gráficas

- VS Code

- Docker Desktop

- Office

- Navegadores

- DBeaver

- PowerToys

### Ubuntu (WSL)

Todo el desarrollo
```

/home/joaco

```
- proyectos

- Docker

- herramientas

- scripts

- backups

---

# Gráficos

| Característica | Valor |

|----------------|------|

| GPU | Intel Graphics integrada |

## Uso previsto

No se prevé utilizar GPU para entrenamiento de modelos.
La GPU será utilizada para:

- aceleración de Windows;

- VS Code;

- navegadores;

- aplicaciones gráficas.

---

# Virtualización

## Estado

✅ Compatible

## Tecnologías utilizadas

- Hyper-V

- WSL2

- Virtual Machine Platform

## Uso previsto

La virtualización será utilizada exclusivamente para:

- WSL2

- Docker Desktop

No se prevé utilizar máquinas virtuales tradicionales (Hyper-V o VMware), salvo necesidades puntuales.

---

# Hardware actualmente instalado

| Recurso | Estado |

|----------|--------|

| Windows | ✅ |

| WSL2 | ✅ |

| Ubuntu 26.04 | ✅ |

| Windows Terminal | ✅ |

| VS Code | ✅ |

---

# Capacidad estimada

Esta workstation está diseñada para ejecutar simultáneamente:

- VS Code

- Windows Terminal

- Docker Desktop

- PostgreSQL

- MongoDB

- SQL Server

- Redis

- n8n

- Claude Code

- Codex

- Azure CLI

- Navegadores

- Office

sin degradar significativamente el rendimiento.

---

# Decisiones relacionadas

Este documento se relaciona con:

- ADR-001 — Proyectos en WSL

- ADR-002 — Docker Desktop sobre WSL2

- ADR-003 — Ubuntu 26.04 LTS

---

# Verificaciones realizadas

## Hardware

- Procesador identificado

- Memoria validada

- Arquitectura validada

## WSL
```

free -h

```
Resultado esperado:

- 16 GB RAM

- 8 GB Swap
```

nproc

```
Resultado esperado:
```

8

```
---

# Futuras ampliaciones

En caso de cambios de hardware deberán registrarse aquí.
Ejemplos:

- ampliación de memoria RAM;

- reemplazo del SSD;

- incorporación de GPU dedicada;

- cambio de procesador;

- cambio de equipo.

---

# Historial

| Fecha | Cambio |

|--------|--------|

| 2026-07 | Creación del documento. |
