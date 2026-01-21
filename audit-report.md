# Informe de Auditoría Estática
Proyecto: DemoAuditApp
Norma: IEEE 1028
Auditor: Equipo de Auditoría de Sistemas

---

## Hallazgos Detectados

1. Falta de validación de entrada
- Riesgo: Caída del sistema por excepción
- Impacto: Medio

2. Ausencia de manejo de excepciones
- Riesgo: Interrupción del servicio
- Impacto: Alto

3. Falta de documentación
- Riesgo: Baja mantenibilidad
- Impacto: Medio

4. Ausencia de logging
- Riesgo: Imposibilidad de auditoría posterior
- Impacto: Medio

---

## Riesgos Asociados
- Fallos en producción
- Dificultad de mantenimiento
- Incumplimiento de estándares de calidad

---

## Recomendaciones
- Usar `int.TryParse`
- Implementar bloques `try-catch`
- Agregar comentarios XML
- Incorporar logging estructurado
- Mantener auditoría automática en CI/CD

---

## Conclusión
La auditoría estática permitió detectar defectos antes del despliegue,
cumpliendo con el objetivo de control preventivo sin frenar DevOps.
