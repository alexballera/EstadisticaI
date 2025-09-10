# Guía: Teorema de Bayes

## Introducción

El **Teorema de Bayes** es una herramienta fundamental en probabilidad que nos permite "invertir" probabilidades condicionales. Es especialmente útil cuando conocemos la probabilidad de un efecto dada una causa, pero necesitamos la probabilidad de la causa dado el efecto.

## Definición Fundamental

### ¿Qué es el Teorema de Bayes?

El **Teorema de Bayes** nos permite calcular P(A|B) cuando conocemos P(B|A), P(A) y P(B).

### Fórmula del Teorema de Bayes

**P(A|B) = [P(B|A) × P(A)] / P(B)**

### Componentes de la Fórmula:

- **P(A|B)**: Probabilidad **a posteriori** (lo que queremos encontrar)
- **P(B|A)**: Probabilidad de la evidencia dado el evento (verosimilitud)
- **P(A)**: Probabilidad **a priori** del evento
- **P(B)**: Probabilidad total de la evidencia (denominador normalizador)

### Fórmula Extendida con Probabilidad Total:

**P(A|B) = [P(B|A) × P(A)] / [Σ P(B|Aᵢ) × P(Aᵢ)]**

## Identificación Semántica: Cuándo Usar Bayes

### ✅ Palabras clave que indican uso de Bayes:

- **"Si [resultado], ¿cuál es la probabilidad de que [causa]?"**
  - Ejemplo: "Si el televisor es defectuoso, ¿cuál es la probabilidad de que sea marca 1?"

- **"Dado que [efecto ocurrió], ¿probabilidad de [causa específica]?"**
  - Ejemplo: "Dado que la prueba es positiva, ¿probabilidad de tener la enfermedad?"

- **"¿De dónde proviene más probablemente [el resultado]?"**
  - Ejemplo: "¿De qué máquina proviene más probablemente el producto defectuoso?"

- **"¿Cuál es la causa más probable de [el efecto]?"**
  - Ejemplo: "¿Cuál es la marca más probable del televisor defectuoso?"

### ❌ NO es Bayes cuando:

- **Preguntan por P(B|A) directamente** (ya lo conoces)
- **Preguntan por probabilidad total** (usa fórmula de probabilidad total)
- **No hay "inversión" de la condicional**

## Ejemplo 1: Televisores Defectuosos

### Enunciado:
*"Una empresa vende televisores de 3 marcas: 50% marca 1, 30% marca 2, 20% marca 3. Se sabe que el 25% de los televisores de marca 1 necesita reparación, el 20% de marca 2 y el 10% de marca 3. Si un cliente vuelve con un televisor defectuoso, ¿cuál es la probabilidad de que sea de marca 1?"*

### Análisis Semántico:
- **"Si un cliente vuelve con un televisor defectuoso"** → Tenemos la evidencia (efecto)
- **"¿cuál es la probabilidad de que sea de marca 1?"** → Buscamos la causa
- **Estructura**: "Si [efecto], ¿probabilidad de [causa]?" → **BAYES**

### Datos del Problema:
- P(A₁) = 0.50, P(A₂) = 0.30, P(A₃) = 0.20 (probabilidades a priori)
- P(D|A₁) = 0.25, P(D|A₂) = 0.20, P(D|A₃) = 0.10 (verosimilitudes)

### Solución Paso a Paso:

**Paso 1: Calcular P(D) - Probabilidad total**
P(D) = P(D|A₁)×P(A₁) + P(D|A₂)×P(A₂) + P(D|A₃)×P(A₃)
P(D) = 0.25×0.50 + 0.20×0.30 + 0.10×0.20 = 0.125 + 0.06 + 0.02 = 0.205

**Paso 2: Aplicar Bayes**
P(A₁|D) = [P(D|A₁) × P(A₁)] / P(D) = [0.25 × 0.50] / 0.205 = 0.125 / 0.205 ≈ 0.610

**Interpretación**: Si un televisor es defectuoso, hay **61%** de probabilidad de que sea marca 1.

## Ejemplo 2: Pruebas Médicas

### Enunciado:
*"Una prueba médica detecta correctamente una enfermedad en el 95% de los casos (sensibilidad). La probabilidad de falso positivo es 2% (especificidad = 98%). Si la enfermedad afecta al 1% de la población, ¿cuál es la probabilidad de tener la enfermedad si la prueba da positivo?"*

### Análisis Semántico:
- **"si la prueba da positivo"** → Tenemos la evidencia
- **"¿probabilidad de tener la enfermedad?"** → Buscamos la causa
- **Estructura clásica de diagnóstico** → **BAYES**

### Definición de Eventos:
- E: Tener la enfermedad
- T+: Prueba positiva

### Datos:
- P(E) = 0.01 (prevalencia: 1%)
- P(E^C) = 0.99 (99% sanos)
- P(T+|E) = 0.95 (sensibilidad: 95%)
- P(T+|E^C) = 0.02 (falso positivo: 2%)

### Solución:

**Paso 1: Calcular P(T+)**
P(T+) = P(T+|E)×P(E) + P(T+|E^C)×P(E^C)
P(T+) = 0.95×0.01 + 0.02×0.99 = 0.0095 + 0.0198 = 0.0293

**Paso 2: Aplicar Bayes**
P(E|T+) = [P(T+|E) × P(E)] / P(T+) = [0.95 × 0.01] / 0.0293 ≈ 0.324

**Interpretación Sorprendente**: ¡Solo hay **32.4%** de probabilidad de tener la enfermedad aunque la prueba sea positiva!

### ¿Por qué este resultado es tan bajo?

Porque la enfermedad es **muy rara** (1%). Aunque la prueba es muy buena, los falsos positivos (1.98% de la población) superan a los verdaderos positivos (0.95% de la población) debido a la baja prevalencia.

## Ejemplo 3: Control de Calidad

### Enunciado:
*"Una fábrica tiene 3 máquinas: A produce 50% con 2% defectuosos, B produce 30% con 3% defectuosos, C produce 20% con 1% defectuosos. Si se encuentra un producto defectuoso, ¿cuál es la probabilidad de que venga de la máquina B?"*

### Análisis Semántico:
- **"Si se encuentra un producto defectuoso"** → Evidencia
- **"¿probabilidad de que venga de máquina B?"** → Causa específica
- **Patrón de diagnóstico industrial** → **BAYES**

### Solución:

**Datos:**
- P(A) = 0.50, P(B) = 0.30, P(C) = 0.20
- P(D|A) = 0.02, P(D|B) = 0.03, P(D|C) = 0.01

**Cálculo:**
P(D) = 0.02×0.50 + 0.03×0.30 + 0.01×0.20 = 0.01 + 0.009 + 0.002 = 0.021

P(B|D) = [P(D|B) × P(B)] / P(D) = [0.03 × 0.30] / 0.021 = 0.009 / 0.021 ≈ 0.429

**Respuesta**: **42.9%** de probabilidad de que venga de la máquina B.

## Ejemplo 4: Análisis de Email Spam

### Enunciado:
*"Un filtro de spam clasifica emails: 2% de emails son spam, 98% legítimos. El filtro detecta correctamente 90% del spam y marca incorrectamente como spam el 1% de emails legítimos. Si un email es marcado como spam, ¿cuál es la probabilidad de que realmente sea spam?"*

### Análisis Semántico:
- **"Si un email es marcado como spam"** → Evidencia del clasificador
- **"¿probabilidad de que realmente sea spam?"** → Causa real
- **Problema de clasificación** → **BAYES**

### Solución:

**Eventos:**
- S: Email es spam
- M: Email marcado como spam

**Datos:**
- P(S) = 0.02, P(S^C) = 0.98
- P(M|S) = 0.90, P(M|S^C) = 0.01

**Cálculo:**
P(M) = 0.90×0.02 + 0.01×0.98 = 0.018 + 0.0098 = 0.0278

P(S|M) = [0.90 × 0.02] / 0.0278 = 0.018 / 0.0278 ≈ 0.647

**Resultado**: **64.7%** de probabilidad de que sea realmente spam.

## Pasos Sistemáticos para Resolver Problemas con Bayes

### 1. **Identificación del Problema**
- ¿Te dan el efecto y preguntan por la causa?
- ¿Hay estructura "Si [resultado], ¿probabilidad de [origen]?"

### 2. **Definir Eventos Claramente**
- Causa: A₁, A₂, A₃, ... (mutuamente excluyentes y exhaustivos)
- Efecto: B

### 3. **Recopilar Datos**
- P(A₁), P(A₂), P(A₃), ... (probabilidades a priori)
- P(B|A₁), P(B|A₂), P(B|A₃), ... (verosimilitudes)

### 4. **Calcular Probabilidad Total**
- P(B) = Σ P(B|Aᵢ) × P(Aᵢ)

### 5. **Aplicar Bayes**
- P(Aᵢ|B) = [P(B|Aᵢ) × P(Aᵢ)] / P(B)

### 6. **Interpretar en Contexto**
- ¿Qué significa el resultado en términos del problema original?

## Errores Comunes

### 1. **Confundir P(A|B) con P(B|A)**
- **Error**: Pensar que son iguales
- **Realidad**: Generalmente son muy diferentes

### 2. **Olvidar Calcular P(B)**
- **Error**: Intentar aplicar Bayes sin el denominador
- **Solución**: Siempre calcular la probabilidad total primero

### 3. **No Considerar Todas las Causas**
- **Error**: Omitir causas posibles
- **Solución**: Verificar que P(A₁) + P(A₂) + ... = 1

### 4. **Malinterpretar Prevalencia**
- **Error**: No considerar cuán rara es la condición
- **Solución**: Prestar atención especial a las probabilidades a priori

### 5. **Confundir Sensibilidad y Especificidad**
- **Sensibilidad**: P(Positivo|Enfermo)
- **Especificidad**: P(Negativo|Sano) = 1 - P(Positivo|Sano)

## Aplicaciones Prácticas

### Diagnóstico Médico
- Interpretar resultados de pruebas
- Evaluar probabilidades de enfermedades

### Control de Calidad
- Identificar fuentes de defectos
- Optimizar procesos de producción

### Clasificación y Filtrado
- Detección de spam
- Reconocimiento de patrones

### Investigación Criminal
- Análisis de evidencia
- Probabilidades de culpabilidad

## Fórmulas de Referencia

- **Teorema de Bayes**: P(A|B) = [P(B|A) × P(A)] / P(B)
- **Forma extendida**: P(A|B) = [P(B|A) × P(A)] / [Σ P(B|Aᵢ) × P(Aᵢ)]
- **Probabilidad total**: P(B) = Σ P(B|Aᵢ) × P(Aᵢ)
- **Odds posteriores**: P(A|B)/P(A^C|B) = [P(B|A)/P(B|A^C)] × [P(A)/P(A^C)]

---

*Recuerda: Bayes es la herramienta para "dar vuelta" la probabilidad condicional cuando necesitas ir del efecto a la causa.*
