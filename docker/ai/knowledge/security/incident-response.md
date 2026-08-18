# 🚑 Respuesta a Incidentes

Procedimiento estandarizado para actuar ante brechas de seguridad, fugas de datos o caídas críticas causadas por ataques[cite: 1].

## Fases de Respuesta

1. **Identificación:** Detectar la anomalía (alertas de monitoreo, reportes de usuarios, logs sospechosos).
2. **Contención:** 
   * Detener contenedores comprometidos de inmediato.
   * Revocar y rotar credenciales o tokens filtrados.
   * Aislar la red del servicio afectado si es necesario.
3. **Erradicación:** Eliminar la causa raíz (parchear código, actualizar dependencia, restaurar backup seguro).
4. **Recuperación:** Desplegar los servicios parcheados y monitorear intensivamente durante 24 horas.
5. **Post-Mortem:** Redactar un documento `lessons-learned.md` detallando qué falló, cómo se resolvió y qué medidas estructurales se implementarán para que no vuelva a ocurrir.