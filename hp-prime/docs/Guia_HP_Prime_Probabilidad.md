# Guía de Uso HP Prime: Probabilidad

## Introducción

Esta guía explica cómo utilizar la calculadora HP Prime para resolver problemas de probabilidad. Se enfoca en el **procedimiento y la sintaxis** para cada concepto clave, permitiéndote usar la calculadora como una herramienta de apoyo en tu estudio.

Se recomienda trabajar en la vista **CAS (Sistema Algebraico Computacional)** para obtener resultados simbólicos y precisos. Puedes acceder a ella presionando la tecla `CAS`.

## 1. Teoría de Conjuntos: Operaciones con Eventos

La HP Prime maneja las operaciones de conjuntos sobre listas. Para que una lista se comporte como un conjunto, definela usando llaves `{}`.

### Paso a Paso: Trabajar con Conjuntos

1. **Definir un Evento (Conjunto/Lista):**
    - Ve a la vista CAS.
    - Asigna tu conjunto a una variable usando `:=`.
    - **Ejemplo:** Para definir el espacio muestral del lanzamiento de un dado, escribe:
      `Omega := {1, 2, 3, 4, 5, 6}` y presiona `Enter`.

2. **Acceder a las Operaciones de Conjuntos:**
    - La forma más directa de usar estas funciones es **escribir su nombre directamente** en la línea de entrada del CAS.
    - Alternativamente, puedes encontrarlas en el menú de la `Toolbox` en `Math > List`.

3. **Realizar Operaciones:**

    | Operación | Sintaxis en HP Prime | Ejemplo | Resultado |
    | :--- | :--- | :--- | :--- |
    | **Unión (∪)** | `UNION(set1, set2)` | `A:={1,3,5}`<br>`B:={2,3,4}`<br>`UNION(A,B)` | `{1,2,3,4,5}` |
    | **Intersección (∩)** | `INTERSECT(set1, set2)` | `A:={1,3,5}`<br>`B:={3,5,7}`<br>`INTERSECT(A,B)` | `{3,5}` |
    | **Complemento (Aᶜ)**| `DIFFERENCE(Omega, A)` | `Omega:={1,2,3,4,5,6}`<br>`A:={1,3,5}`<br>`DIFFERENCE(Omega,A)` | `{2,4,6}` |

    **Nota Importante sobre Diferencia y Complemento:**

El comando `DIFFERENCE(A, B)` en la HP Prime calcula la **diferencia simétrica**, es decir, el conjunto de elementos que están en A o en B, pero no en su intersección (A Δ B).

Para calcular el **complemento** de un conjunto A (Aᶜ), que son los elementos del espacio muestral (U) que no están en A, se debe usar el mismo comando pero de una forma específica: `DIFFERENCE(U, A)`. Esta operación devuelve correctamente los elementos de U que no están en A.

## 2. Cálculo de Probabilidades

### Probabilidad Clásica (Regla de Laplace)

Para calcular `P(A) = Casos Favorables / Casos Totales`, simplemente usa la división aritmética.

**Ejemplo:** Probabilidad de que la suma de dos dados sea 6.

- Casos favorables: 5
- Casos totales: 36
- En la HP Prime, ingresa `5 / 36` y presiona `Enter`.

### Técnicas de Conteo (Combinatoria)

Para calcular casos favorables y totales, a menudo necesitarás permutaciones y combinaciones.

- **Ruta del Menú:** `Toolbox -> Math -> Probability`

| Operación | Sintaxis en HP Prime | Descripción |
| :--- | :--- | :--- |
| **Permutaciones** | `PERM(n, k)` | Calcula el número de arreglos ordenados de `k` elementos de un conjunto de `n`. |
| **Combinaciones** | `COMB(n, k)` | Calcula el número de subconjuntos de `k` elementos de un conjunto de `n`. |

**Ejemplo de uso:** ¿De cuántas formas se pueden elegir 2 personas de un grupo de 5?

- `COMB(5, 2)` → `10`

## 3. Fórmulas de Probabilidad

Para las reglas de adición, probabilidad condicional o Teorema de Bayes, debes aplicar las fórmulas directamente en la línea de entrada de la calculadora.

### Ejemplo: Regla de la Adición `P(A ∪ B) = P(A) + P(B) - P(A ∩ B)`

- **Problema Tipo:** Si P(A)=0.5, P(B)=0.4 y P(A ∩ B)=0.25, calcula P(A ∪ B).
- **En la HP Prime:** Ingresa `0.5 + 0.4 - 0.25` y presiona `Enter`. El resultado es `0.65`.

### Ejemplo: Probabilidad Condicional `P(B|A) = P(A ∩ B) / P(A)`

- **Problema Tipo:** Si P(A)=0.07 y P(A ∩ B)=0.01, calcula P(B|A).
- **En la HP Prime:** Ingresa `0.01 / 0.07` y presiona `Enter`. El resultado es `1/7`.
