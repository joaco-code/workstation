# 🎯 Modelado de Amenazas (Threat Modeling)

El modelado de amenazas se realiza en la fase de diseño de cualquier nuevo stack o servicio[cite: 1]. Utilizamos la metodología **STRIDE** para identificar vectores de ataque.

## Metodología STRIDE

* **S (Spoofing):** ¿Puede un atacante suplantar la identidad de un servicio o usuario?
* **T (Tampering):** ¿Pueden modificarse los datos en tránsito o en reposo?
* **R (Repudiation):** ¿Tenemos logs suficientes para probar quién hizo qué?
* **I (Information Disclosure):** ¿Estamos filtrando datos sensibles en mensajes de error o APIs públicas?
* **D (Denial of Service):** ¿Está la infraestructura protegida contra consumo exhaustivo de recursos?
* **E (Elevation of Privilege):** ¿Puede un usuario normal escalar a administrador?

Todo proyecto nuevo debe incluir un análisis documentado respondiendo a estas preguntas antes de su aprobación técnica.