# Guía Rápida: Operaciones con Conjuntos en HP Prime

**Universidad de Buenos Aires - Facultad de Ciencias Económicas**  
**Estadística I - Cátedra Bianco**

---

## **1. Configuración Inicial**

Antes de trabajar con conjuntos, asegúrate de estar en el **entorno CAS**:

- Presiona la tecla `CAS` para entrar al modo CAS (Computer Algebra System)
- Para mayor precisión, ve a `Shift` + `CAS` (Configuración) y configura:
  - **Sistema numérico:** Exacto
  - **Formato de salida:** Simplificado

---

## **2. Definición de Conjuntos**

En HP Prime, los conjuntos se representan usando **listas** con llaves `{}`:

### **Sintaxis Básica:**

```
A := {1, 2, 3, 4, 5}
B := {3, 4, 5, 6, 7}
C := {2, 4, 6, 8}
```

### **Consejos:**

- Usa `:=` para asignar conjuntos a variables
- Los elementos duplicados se manejan automáticamente
- Para el conjunto vacío usa: `vacio := {}`

---

## **3. Operaciones Fundamentales**

### **3.1 Unión (∪)**

**Comando:** `union(A, B)` o usar el operador `∪`

```
A := {1, 2, 3}
B := {3, 4, 5}
union(A, B)          → {1, 2, 3, 4, 5}
```

**Acceso al símbolo ∪:**

- Busca en `Toolbox` → `CAS` → `Matem` → `Conjunto`
- O escribe directamente `union(A, B)`

### **3.2 Intersección (∩)**

**Comando:** `intersect(A, B)` o símbolo `∩`

```
A := {1, 2, 3, 4}
B := {3, 4, 5, 6}
intersect(A, B)      → {3, 4}
```

### **3.3 Diferencia (-)**

**Comando:** `minus(A, B)` o `A - B`

```
A := {1, 2, 3, 4, 5}
B := {3, 4, 5, 6, 7}
minus(A, B)          → {1, 2}
```

### **3.4 Complemento**

**Comando:** `complement(A, Universal)`

```
Omega := {1, 2, 3, 4, 5, 6}    // Espacio muestral
A := {1, 3, 5}                 // Números impares
complement(A, Omega)           → {2, 4, 6}
```

### **3.5 Diferencia Simétrica**

**Comando:** `symdiff(A, B)`

```
A := {1, 2, 3, 4}
B := {3, 4, 5, 6}
symdiff(A, B)        → {1, 2, 5, 6}
```

---

## **4. Relaciones entre Conjuntos**

### **4.1 Subconjunto**

**Comando:** `subset(A, B)` - Verifica si A ⊆ B

```
A := {1, 2, 3}
B := {1, 2, 3, 4, 5}
subset(A, B)         → true
```

### **4.2 Conjuntos Disjuntos**

**Verificación:** `intersect(A, B) == {}`

```
A := {1, 2, 3}
B := {4, 5, 6}
intersect(A, B) == {}    → true (son disjuntos)
```

### **4.3 Igualdad de Conjuntos**

**Verificación:** `A == B`

```
A := {1, 2, 3}
B := {3, 2, 1}       // El orden no importa
A == B               → true
```

---

## **5. Funciones Útiles**

### **5.1 Cardinalidad (Tamaño)**

**Comando:** `size(A)` o `length(A)`

```
A := {1, 2, 3, 4, 5}
size(A)              → 5
```

### **5.2 Membresía**

**Comando:** `member(elemento, conjunto)`

```
A := {1, 2, 3, 4, 5}
member(3, A)         → true
member(7, A)         → false
```

### **5.3 Convertir Lista a Conjunto**

**Comando:** `set(lista)`

```
lista := [1, 2, 2, 3, 3, 4]
set(lista)           → {1, 2, 3, 4}
```

---

## **6. Ejemplo Práctico: Lanzamiento de Dado**

```
// Definir eventos
Omega := {1, 2, 3, 4, 5, 6}     // Espacio muestral
A := {1, 3, 5}                  // Números impares
B := {2, 4, 6}                  // Números pares
C := {1, 2, 3}                  // Números ≤ 3

// Operaciones
union(A, B)                     → {1, 2, 3, 4, 5, 6}
intersect(A, B)                 → {} (vacío)
intersect(A, C)                 → {1, 3}
complement(A, Omega)            → {2, 4, 6}

// Verificaciones
union(A, B) == Omega            → true
intersect(A, B) == {}           → true (disjuntos)
```

---

## **7. Consejos y Atajos**

### **Acceso Rápido:**

- **Toolbox:** Presiona `Toolbox` → `CAS` → `Matem` → `Conjunto`
- **Catálogo:** Busca funciones escribiendo las primeras letras

### **Funciones del Menú:**

| Función | Comando | Descripción |
|---------|---------|-------------|
| Unión | `union(A,B)` | A ∪ B |
| Intersección | `intersect(A,B)` | A ∩ B |
| Diferencia | `minus(A,B)` | A - B |
| Complemento | `complement(A,U)` | A^C respecto a U |
| Diferencia Simétrica | `symdiff(A,B)` | A △ B |
| Subconjunto | `subset(A,B)` | ¿A ⊆ B? |
| Cardinalidad | `size(A)` | |A| |
| Membresía | `member(x,A)` | ¿x ∈ A? |

### **Entrada de Datos:**

- Usa llaves `{}` para definir conjuntos
- Separa elementos con comas
- No importa el orden de los elementos
- Los duplicados se eliminan automáticamente

### **Visualización:**

- Los resultados se muestran automáticamente ordenados
- El conjunto vacío se muestra como `{}`
- Usa `simplify()` si necesitas simplificar expresiones complejas

---

## **8. Ejercicios de Práctica**

### **Ejercicio 1:**

```
A := {1, 2, 3, 4, 5}
B := {4, 5, 6, 7, 8}

// Calcula:
union(A, B)              // A ∪ B
intersect(A, B)          // A ∩ B  
minus(A, B)              // A - B
minus(B, A)              // B - A
symdiff(A, B)            // A △ B
```

### **Ejercicio 2:**

```
Omega := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
Pares := {2, 4, 6, 8, 10}
Primos := {2, 3, 5, 7}

// Verifica:
complement(Pares, Omega)     // Complemento de pares
intersect(Pares, Primos)     // Pares y primos
subset(Primos, Omega)        // ¿Primos ⊆ Omega?
```

---

**💡 Recuerda:** Siempre trabaja en modo CAS para operaciones con conjuntos y verifica que tus resultados coincidan con la teoría matemática de conjuntos.
