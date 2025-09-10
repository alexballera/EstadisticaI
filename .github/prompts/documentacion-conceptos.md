# Prompt: Generación de Documentación de Conceptos Estadísticos

## Objetivo
Crear documentación educativa clara y estructurada para conceptos de estadística, siguiendo el patrón establecido en el proyecto EstadisticaI.

## Instrucciones de Uso

### Para el Usuario:
```
Siguiendo el patrón de documentación del proyecto, créame un archivo de documentación para el concepto [CONCEPTO] basado en [FUENTE_MATERIAL] (página X). El archivo debe llamarse [NOMBRE_ARCHIVO].md y ubicarse en [CARPETA_DESTINO].
```

### Para el Agente de IA:

## Estructura Obligatoria del Documento

### 1. **Encabezado y Título**
```markdown
# Guía: [Nombre del Concepto]

## Introducción
[Párrafo explicando la importancia del concepto, confusiones comunes, y qué aprenderá el lector]
```

### 2. **Definiciones Fundamentales**
- Incluir **todas** las definiciones relacionadas
- **Fórmulas matemáticas** con explicación de cada componente
- **Interpretación práctica** de cada fórmula
- Conceptos prerequisitos si son necesarios

### 3. **Identificación Semántica**
```markdown
## Identificación Semántica: Cuándo Usar [Concepto]

### ✅ Palabras clave que indican uso de [Concepto]:
- **"[Patrón 1]"**
  - Ejemplo: "[Ejemplo específico]"
- **"[Patrón 2]"**
  - Ejemplo: "[Ejemplo específico]"

### ❌ NO es [Concepto] cuando:
- **[Anti-patrón 1]** ([explicación])
- **[Anti-patrón 2]** ([explicación])
```

### 4. **Ejemplos Prácticos (Mínimo 3)**
Para cada ejemplo:

```markdown
### Ejemplo X: [Título Descriptivo]

#### Enunciado:
*"[Enunciado completo del problema]"*

#### Análisis Semántico:
- **"[frase clave 1]"** → [interpretación]
- **"[frase clave 2]"** → [interpretación]
- **Estructura**: "[patrón identificado]" → **[CONCEPTO]**

#### Datos del Problema:
- [Lista clara de todos los datos]

#### Solución Paso a Paso:
**Paso 1: [Descripción]**
[Cálculos detallados]

**Paso 2: [Descripción]**
[Cálculos detallados]

#### Interpretación:
[Explicación clara del resultado en contexto del problema]
```

### 5. **Secciones Metodológicas**

#### A. Pasos Sistemáticos
```markdown
## Pasos Sistemáticos para Resolver Problemas con [Concepto]

### 1. **[Paso 1]**
- [Instrucción específica]

### 2. **[Paso 2]**
- [Instrucción específica]
[Continuar...]
```

#### B. Errores Comunes
```markdown
## Errores Comunes

### 1. **[Error Común 1]**
- **Error**: [Descripción del error]
- **Realidad/Solución**: [Corrección]

### 2. **[Error Común 2]**
- **Error**: [Descripción del error]
- **Realidad/Solución**: [Corrección]
```

#### C. Consejos Prácticos
```markdown
## Consejos para Exámenes

1. **[Consejo 1]** - [Explicación]
2. **[Consejo 2]** - [Explicación]
3. **[Consejo 3]** - [Explicación]
```

### 6. **Aplicaciones Prácticas (si aplica)**
```markdown
## Aplicaciones Prácticas

### [Área de Aplicación 1]
- [Uso específico]
- [Ejemplo breve]

### [Área de Aplicación 2]
- [Uso específico]
- [Ejemplo breve]
```

### 7. **Fórmulas de Referencia**
```markdown
## Fórmulas de Referencia

- **[Nombre fórmula 1]**: [Fórmula matemática]
- **[Nombre fórmula 2]**: [Fórmula matemática]
- **[Nombre fórmula 3]**: [Fórmula matemática]

---

*Recuerda: [Mensaje clave o recordatorio principal]*
```

## Estándares de Calidad

### ✅ Contenido Obligatorio:
- [ ] Mínimo 3 ejemplos completos con solución paso a paso
- [ ] Análisis semántico para cada ejemplo
- [ ] Identificación clara de palabras clave
- [ ] Errores comunes y cómo evitarlos
- [ ] Pasos sistemáticos de resolución
- [ ] Interpretación práctica de resultados

### ✅ Formato y Estilo:
- [ ] Uso consistente de **negritas** para términos clave
- [ ] Fórmulas en formato matemático apropiado
- [ ] Ejemplos con datos realistas
- [ ] Lenguaje claro y educativo
- [ ] Estructura jerárquica clara (H2, H3, H4)

### ✅ Pedagogía:
- [ ] Progresión lógica de conceptos simples a complejos
- [ ] Conexión entre teoría y práctica
- [ ] Anticipación de confusiones comunes
- [ ] Verificación de resultados cuando sea posible

## Patrones de Naming

### Archivos:
- **Conceptos específicos**: `[concepto-principal].md`
- **Comparaciones**: `[concepto1]-vs-[concepto2].md`
- **Procesos**: `[proceso-o-metodo].md`

### Ejemplos:
- `probabilidad-condicional.md`
- `teorema-bayes.md`
- `distribucion-normal.md`
- `intervalos-confianza.md`

## Ubicación de Archivos

```
[Número] [Tema]/
├── [archivo-concepto-1].md
├── [archivo-concepto-2].md
└── TGAD_[Notebook_correspondiente].ipynb
```

## Variables de Plantilla

Al usar este prompt, reemplazar:
- `[CONCEPTO]`: Nombre del concepto principal
- `[FUENTE_MATERIAL]`: Referencia al material fuente
- `[NOMBRE_ARCHIVO]`: Nombre específico del archivo
- `[CARPETA_DESTINO]`: Ubicación en la estructura del proyecto

## Ejemplo de Uso

```
Siguiendo el patrón de documentación del proyecto, créame un archivo de documentación para el concepto "Distribución Normal" basado en el PDF U3_VA_Continuas.pdf (páginas 15-20). El archivo debe llamarse distribucion-normal.md y ubicarse en "3 VA continuas/".
```

## Notas Importantes

1. **Coherencia**: Mantener el mismo nivel de detalle y estilo que los archivos existentes
2. **Contextualización**: Todos los ejemplos deben ser relevantes al contexto argentino/universitario
3. **Verificación**: Incluir verificaciones numéricas cuando sea posible
4. **Interconexión**: Referenciar otros conceptos del curso cuando sea relevante
5. **Idioma**: Todo el contenido en español, utilizando terminología estándar argentina

---

*Este prompt asegura consistencia y calidad en toda la documentación del proyecto EstadisticaI.*
