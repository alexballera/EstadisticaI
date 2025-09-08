# Guía HP Prime: Variables Aleatorias Continuas

## Introducción

Esta guía explica cómo utilizar la calculadora HP Prime para trabajar con **Variables Aleatorias Continuas**, incluyendo el cálculo de funciones de densidad, distribución acumulada y probabilidades asociadas.

**💡 Modo recomendado:** Trabajar en vista **CAS** (Sistema Algebraico Computacional) para obtener resultados simbólicos exactos. Accede presionando la tecla `CAS`.

---

## 1. Funciones de Densidad de Probabilidad

### 1.1 Verificar que f(x) es una función de densidad válida

Una función f(x) es una función de densidad de probabilidad si:
- f(x) ≥ 0 para todo x
- ∫_{-∞}^{∞} f(x) dx = 1

**Sintaxis en HP Prime:**
```
# Definir la función de densidad
f(x) := expresión_de_x

# Verificar que la integral es 1
int(f(x), x, a, b)
```

**Ejemplo práctico:**
```
# Función f(x) = (3/26)x² para 1 ≤ x ≤ 3
f(x) := (3/26)*x^2

# Verificar integral
int(f(x), x, 1, 3)
```
**Resultado:** `1` ✓

---

## 2. Función de Distribución Acumulada F(x)

### 2.1 Definición y Cálculo

La función de distribución acumulada se define como:
**F(x) = P(X ≤ x) = ∫_{-∞}^{x} f(t) dt**

**Sintaxis en HP Prime:**
```
# Calcular F(x) para un intervalo específico
F(x) := int(f(t), t, límite_inferior, x)

# Simplificar la expresión resultante
simplify(F(x))
```

**Ejemplo paso a paso:**
```
# Definir f(x)
f(x) := (3/26)*x^2

# Calcular F(x) para 1 ≤ x ≤ 3
F(x) := int(f(t), t, 1, x)

# Simplificar
simplify(F(x))
```
**Resultado:** `(x³-1)/26`

### 2.2 Función F(x) por tramos

Para una función de densidad definida por tramos, F(x) también será por tramos:

```
F(x) = {
  0           si x < 1
  (x³-1)/26   si 1 ≤ x < 3  
  1           si x ≥ 3
}
```

### 2.3 Evaluación de F(x) en puntos específicos

```
# Ejemplos de evaluación
F(2)        # Para x = 2
F(2.5)      # Para x = 2.5  
F(3)        # Para x = 3
```

---

## 3. Cálculo de Probabilidades

### 3.1 Probabilidades Básicas

| Tipo de Probabilidad | Fórmula | Comando HP Prime |
|:---------------------|:--------|:-----------------|
| **P(X ≤ a)** | F(a) | `F(a)` |
| **P(X < a)** | F(a⁻) | `F(a)` (si F es continua) |
| **P(X ≥ a)** | 1 - F(a) | `1 - F(a)` |
| **P(X > a)** | 1 - F(a) | `1 - F(a)` |
| **P(a < X ≤ b)** | F(b) - F(a) | `F(b) - F(a)` |
| **P(a ≤ X ≤ b)** | F(b) - F(a⁻) | `F(b) - F(a)` |

### 3.2 Ejemplos Prácticos

**Ejemplo 1: P(X ≤ 2)**
```
F(2)
# o directamente:
(2^3-1)/26
```
**Resultado:** `7/26 ≈ 0.2692`

**Ejemplo 2: P(1.5 < X ≤ 2.5)**
```
F(2.5) - F(1.5)
# o paso a paso:
((2.5)^3-1)/26 - ((1.5)^3-1)/26
```
**Resultado:** `12.25/26 ≈ 0.4712`

**Ejemplo 3: P(X > 2)**
```
1 - F(2)
# o directamente:
1 - (2^3-1)/26
```
**Resultado:** `19/26 ≈ 0.7308`

---

## 4. Comandos Útiles Adicionales

### 4.1 Conversión entre Exacto y Aproximado

```
# Convertir resultado exacto a decimal
approx(7/26)              # → 0.269230769231

# Convertir decimal a fracción exacta
exact(0.2692)             # → 673/2500 (aproximación)
```

### 4.2 Resolución de Ecuaciones

```
# Encontrar valores de x para probabilidades específicas
solve(F(x) = 0.5, x)      # Encuentra la mediana
solve(F(x) = 0.25, x)     # Encuentra el primer cuartil
solve(F(x) = 0.75, x)     # Encuentra el tercer cuartil
```

### 4.3 Verificación de Propiedades

```
# Verificar que F es no decreciente
diff(F(x), x)             # La derivada debe ser ≥ 0

# Verificar continuidad
limit(F(x), x, punto, -1) # Límite por izquierda
limit(F(x), x, punto, 1)  # Límite por derecha
```

---

## 5. Distribuciones Continuas Estándar

### 5.1 Distribución Uniforme U(a,b)

**Función de densidad:**
```
f(x) := 1/(b-a)           # para a ≤ x ≤ b
```

**Función de distribución:**
```
F(x) := (x-a)/(b-a)       # para a ≤ x ≤ b
```

### 5.2 Distribución Exponencial Exp(λ)

**Función de densidad:**
```
f(x) := λ*exp(-λ*x)       # para x ≥ 0
```

**Función de distribución:**
```
F(x) := 1 - exp(-λ*x)     # para x ≥ 0
```

### 5.3 Distribución Normal N(μ,σ²)

La HP Prime tiene funciones integradas para la distribución normal:

```
# Función de distribución estándar N(0,1)
normald(z)                # P(Z ≤ z)

# Para N(μ,σ²), estandarizar primero:
z := (x - μ)/σ
normald(z)
```

---

## 6. Consejos y Buenas Prácticas

### ✅ **Ventajas de usar HP Prime para Variables Continuas:**

1. **Cálculo simbólico exacto** de integrales
2. **Resultados en fracciones** exactas en lugar de aproximaciones
3. **Verificación rápida** de cálculos manuales
4. **Capacidad gráfica** para visualizar funciones
5. **Resolución de ecuaciones** para encontrar percentiles

### 💡 **Consejos prácticos:**

1. **Siempre verificar** que ∫f(x)dx = 1 antes de proceder
2. **Usar `simplify()`** para obtener expresiones más simples
3. **Definir funciones** con `:=` para reutilizarlas
4. **Verificar límites** de F(x): F(-∞) = 0 y F(∞) = 1
5. **Usar `exact()`** cuando necesites fracciones exactas

### ⚠️ **Limitaciones:**

- No tiene funciones predefinidas para distribuciones continuas personalizadas
- Requiere definir manualmente las funciones f(x) y F(x)
- Los gráficos pueden requerir configuración manual de rangos

---

## 7. Ejercicios de Práctica

### Ejercicio 1: Distribución Triangular
Dada f(x) = 2x para 0 ≤ x ≤ 1:

1. Verificar que es función de densidad
2. Calcular F(x)
3. Encontrar P(X ≤ 0.5)

**Solución en HP Prime:**
```
f(x) := 2*x
int(f(x), x, 0, 1)        # Verificar = 1
F(x) := int(f(t), t, 0, x)
simplify(F(x))            # Resultado: x²
F(0.5)                    # Resultado: 1/4
```

### Ejercicio 2: Mediana
Para la función del ejercicio principal, encontrar la mediana.

**Solución:**
```
solve(F(x) = 0.5, x)      # Resolver (x³-1)/26 = 0.5
```

---

## Referencias

- Manual oficial HP Prime
- Documentación CAS integrada: `Help` → `CAS Commands`
- Para más funciones: `Toolbox` → `Math` → `Calculus`

---

**📚 Nota:** Esta guía complementa el trabajo realizado en Python y proporciona una herramienta adicional para verificación y cálculo exacto de problemas de variables aleatorias continuas.
