# 🕸️ Prevención OWASP Top 10

Nuestros desarrollos deben mitigar activamente los riesgos documentados en el OWASP Top 10[cite: 1].

## Medidas de Mitigación Obligatorias

* **Inyección (SQL/NoSQL/Command):** Uso estricto de ORMs, consultas parametrizadas y validación estricta de inputs. Prohibida la concatenación de strings para queries.
* **Autenticación Rota:** Implementación de JWT con tiempos de expiración cortos y almacenamiento seguro de contraseñas (bcrypt/Argon2).
* **Exposición de Datos Sensibles:** Todo dato PII (Personal Identifiable Information) debe viajar cifrado. No se loguearán contraseñas, tokens ni tarjetas de crédito.
* **Componentes Vulnerables:** Actualización periódica de dependencias y auditoría mediante herramientas como `npm audit` o Snyk.
* **Fallas de Registro y Monitoreo:** Todos los servicios deben generar logs estructurados (JSON) que faciliten la auditoría sin exponer datos confidenciales.