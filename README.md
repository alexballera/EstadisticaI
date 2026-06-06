# Estadística I — Cátedra Bianco

Material de clases y ejercicios de **Estadística I** (Cátedra Bianco) de la [Tecnicatura en Gestión y Análisis de Datos (TGAD)](https://www.econ.uba.ar/) - Facultad de Ciencias Económicas, UBA.

## Descripción

Este repositorio contiene material educativo estructurado en notebooks Jupyter para el aprendizaje de estadística aplicada con Python. Los contenidos abarcan desde elementos básicos de Python hasta temas avanzados de inferencia estadística, regresión lineal y números índice, organizados en 10 unidades temáticas.

---

## Cómo ejecutar este material

### Google Colab ⭐ (recomendado — método oficial del curso)

Google Colab es el entorno utilizado en clase. No requiere instalación local y provee acceso gratuito a recursos de cómputo en la nube de Google.

**Requisito único**: tener una cuenta de Gmail (Google).

#### Abrir un notebook del curso en Colab

1. Accedé a [colab.research.google.com](https://colab.research.google.com)
2. En el menú: **Archivo → Abrir cuaderno → Subir** → seleccioná el archivo `.ipynb` del repositorio, o bien usá la pestaña **Google Drive** si ya tenés el repositorio sincronizado.
3. Una vez abierto, guardá tu propia copia: **Archivo → Guardar una copia en Drive**. El notebook se abrirá en una nueva pestaña ya conectado a tu sesión personal.
4. Ejecutá las celdas desde arriba hacia abajo con `Ctrl+Enter` (celda actual) o `Shift+Enter` (celda actual y avanzar).

> **Importante**: siempre trabajar en la copia guardada en tu Drive. Si abrís el notebook original sin guardar copia, no podrás ejecutar el código.

#### Instalar dependencias en Colab

Colab pre-instala las librerías más comunes (`pandas`, `numpy`, `matplotlib`, `seaborn`, `scipy`, `IPython`, `sympy`). Para el resto, ejecutá `!pip install` en una celda al inicio del notebook:

```python
# Instalación de paquetes adicionales (ejecutar solo una vez por sesión)
# Solo para Unidad 1 (Probabilidad):
!pip install anytree graphviz

# Solo para Unidad 9 (Números Índice):
!pip install yfinance
```

Cada sesión de Colab comienza desde cero, por lo que esta celda debe ejecutarse nuevamente si reconectás.

#### Compartir un notebook de Colab

- Para compartir: botón **Compartir** (arriba a la derecha) → seleccionar "Cualquier persona con el enlace" → **Copiar enlace**.
- Para recibir un notebook compartido: abrí el enlace → **Archivo → Guardar una copia en Drive** para activar tu propia sesión de ejecución.

---

### Entorno local con Python (opcional — usuarios avanzados)

Para ejecutar los notebooks localmente sin dependencia de internet:

```bash
python -m venv .venv
source .venv/Scripts/activate   # Windows Git Bash
# .venv\Scripts\Activate.ps1    # Windows PowerShell
pip install pip-tools
python -m piptools compile
pip install -r requirements.txt
```

Después, abrí los notebooks con Jupyter Lab o VS Code y seleccioná el kernel `.venv`.

---

## Gestión de dependencias con pip-tools

> **Nota**: esta sección aplica solo al entorno local. En Google Colab, usar `!pip install` directamente en el notebook (ver sección anterior).

Este proyecto utiliza **pip-tools** para garantizar reproducibilidad y control preciso de versiones.

### Archivos clave

- **`requirements.in`** — Archivo fuente: lista solo las dependencias directas que necesita el proyecto
- **`requirements.txt`** — Archivo generado automáticamente: contiene todas las dependencias (directas e indirectas) con versiones pinned

### Agregar nuevas dependencias

```bash
echo "nombre_paquete" >> requirements.in
python -m piptools compile
pip install -r requirements.txt
```

Por ejemplo, para agregar `statsmodels`:

```bash
echo "statsmodels" >> requirements.in
python -m piptools compile
pip install -r requirements.txt
```

### Actualizar dependencias

Para actualizar todas las dependencias a sus versiones más recientes compatibles:

```bash
python -m piptools compile --upgrade
pip install -r requirements.txt
```

### Regla fundamental

⚠️ **NO editar manualmente `requirements.txt`**

Siempre modificar `requirements.in` y luego compilar con `python -m piptools compile`.

---

## Ejecución local del proyecto

Para ejecutar localmente después de instalar las dependencias:

### Con Jupyter Lab

```bash
jupyter lab
```

Abre una interfaz web en `http://localhost:8888` donde puedes navegar y ejecutar los notebooks.

### Con VS Code

Abre VS Code y utiliza la extensión oficial de Jupyter para VS Code. Seleccioná el kernel `.venv` al abrir un notebook (`.ipynb`).

---

## Estructura del proyecto

```
EstadisticaI/
├── 0 Elementos iniciales/
│   ├── Introducción a Google Colaboratory.pdf
│   ├── Introducción a Python.pdf
│   ├── Introducción al repositorio.pdf
│   ├── TGAD_Nociones_básicas_Python.ipynb
│   └── TGAD_Obtención_de_datos_con_Python.ipynb
├── 1 Probabilidad/
│   └── TGAD_Estadística_Clase_U1_con_Python.ipynb
├── 2 VA discretas/
│   ├── TGAD_Distribuciones_Discretas_con_Python.ipynb
│   └── TGAD_Estadística_Clase_U2_con_Python.ipynb
├── 3 VA continuas/
│   ├── TGAD_Distribuciones_Continuas_con_Python.ipynb
│   └── TGAD_Estadística_Clase_U3_con_Python.ipynb
├── 4 VA bidimensionales/
│   └── TGAD_Estadística_Clase_U4_con_Python.ipynb
├── 5 Descriptiva/
│   └── TGAD_Estadística_Clase_U5_con_Python.ipynb
├── 6 Muestreo e IC/
│   └── TGAD_Estadística_Clase_U6_con_Python.ipynb
├── 7 Test de Hipotesis/
│   └── TGAD_Estadística_Clase_U7_con_Python.ipynb
├── 8 Regresión Lineal/
│   └── TGAD_Estadística_Clase_U8_con_Python.ipynb
├── 9 Numeros Indice/
│   └── TGAD_Estadística_Clase_U9_con_Python.ipynb
├── requirements.in                # Dependencias directas (fuente)
├── requirements.txt               # Dependencias compiladas (generado)
├── .gitignore                     # Archivos a ignorar en Git
├── README.md                      # Este archivo
└── LICENSE                        # Licencia del proyecto
```

---

## Sistema de archivos en Google Colab

Cada vez que abrís un notebook en Colab, se crea una máquina virtual temporal. Entender dónde se guardan los archivos es fundamental para evitar errores del tipo `FileNotFoundError`.

### Mapa de rutas

| Ruta | Descripción | ¿Persiste al cerrar? |
|------|-------------|---------------------|
| `/content/` | Directorio de trabajo por defecto | **No** |
| `/content/archivo.csv` | Archivos subidos manualmente o descargados con `requests` / `urllib` | **No** |
| `/content/drive/` | Raíz del Google Drive montado | **Sí** (en Drive) |
| `/content/drive/MyDrive/` | Tu Google Drive personal | **Sí** (en Drive) |
| `/content/drive/MyDrive/EstadisticaI/` | Carpeta recomendada para guardar datasets del curso | **Sí** (en Drive) |

> **Importante**: todo lo que esté en `/content/` (fuera de Drive) se pierde al desconectar o cerrar la sesión. Los archivos en `/content/drive/MyDrive/` persisten porque viven en Google Drive.

### Dónde aparecen los archivos descargados

```python
import requests

# Descargar un CSV desde una URL
url = "https://ejemplo.com/datos.csv"
response = requests.get(url)
with open("/content/datos.csv", "wb") as f:
    f.write(response.content)

# El archivo queda en /content/datos.csv
# En el panel izquierdo de Colab (ícono de carpeta) aparece como "datos.csv"
import pandas as pd
df = pd.read_csv("/content/datos.csv")
```

### Montar Google Drive (recomendado para persistencia)

Ejecutar esta celda al inicio del notebook para tener acceso a Google Drive:

```python
from google.colab import drive
drive.mount("/content/drive")
# Tus archivos quedan accesibles en /content/drive/MyDrive/
```

Luego guardá los datasets descargados en Drive para no tener que volver a bajarlos:

```python
import shutil
# Copiar un dataset al Drive para que persista
shutil.copy("/content/archivo.csv", "/content/drive/MyDrive/EstadisticaI/archivo.csv")
```

### Resumen: qué hacer al reconectar la sesión

1. Volver a ejecutar la celda de `!pip install` si usás paquetes no pre-instalados (los paquetes no persisten)
2. Volver a ejecutar `drive.mount("/content/drive")` si usás Drive
3. Los archivos en Drive siguen disponibles; los que estaban en `/content/` deben volver a descargarse

---

## Contenidos por unidad

### Unidad 0 — Elementos iniciales

Introducción a Python y obtención de datos:

- **Nociones básicas de Python**: tipos de datos (int, float, str, bool), operaciones básicas, estructuras de control
- **Obtención de datos**: lectura de archivos CSV, descarga desde web, manipulación básica con pandas
- **Materiales de referencia**: PDFs introductorios a Python, Google Colab y el repositorio

**Librerías principales**: `pandas`

**Notebooks**: `TGAD_Nociones_básicas_Python.ipynb`, `TGAD_Obtención_de_datos_con_Python.ipynb`

---

### Unidad 1 — Probabilidad

Fundamentos de teoría de probabilidad:

- **Espacios muestrales y eventos**: conjuntos, operaciones, cardinalidad
- **Probabilidad de eventos**: definiciones clásica y axiomática
- **Operaciones con conjuntos**: unión, intersección, complemento, diferencia
- **Árboles de probabilidad**: construcción y análisis con `anytree` y `graphviz`
- **Probabilidad condicional**: teorema de Bayes, independencia

**Librerías principales**: `pandas`, `itertools`, `fractions`, `IPython.display`, `anytree`, `graphviz`

**Paquetes a instalar en Colab**: `!pip install anytree graphviz`

**Notebooks**: `TGAD_Estadística_Clase_U1_con_Python.ipynb`

---

### Unidad 2 — Variables Aleatorias Discretas

Distribuciones de probabilidad discretas:

- **Distribución de Bernoulli**: experimentos binarios, función de probabilidad
- **Distribución Binomial**: n ensayos de Bernoulli, parámetros n y p
- **Distribución Geométrica**: número de ensayos hasta el primer éxito
- **Distribución de Poisson**: eventos raros en intervalos fijos, parámetro λ
- **Distribución Hipergeométrica**: muestreo sin reemplazo
- **Funciones PMF y CDF**: cálculo y visualización con `scipy.stats`
- **Esperanza y varianza**: propiedades de cada distribución

**Librerías principales**: `scipy.stats` (bernoulli, binom, geom, poisson, hypergeom), `pandas`, `numpy`, `matplotlib`, `IPython.display`, `sympy`

**Notebooks**: `TGAD_Distribuciones_Discretas_con_Python.ipynb`, `TGAD_Estadística_Clase_U2_con_Python.ipynb`

---

### Unidad 3 — Variables Aleatorias Continuas

Distribuciones de probabilidad continuas:

- **Distribución Uniforme**: probabilidad constante en intervalo [a, b]
- **Distribución Exponencial**: tiempo entre eventos de Poisson, parámetro λ
- **Distribución Normal**: campana de Gauss, parámetros μ (media) y σ² (varianza)
- **Funciones PDF y CDF**: densidad y distribución acumulada con `scipy.stats`
- **Cálculo de probabilidades**: integración simbólica con `sympy`
- **Estandarización**: transformación Z = (X - μ) / σ
- **Tabla Z**: uso de la distribución normal estándar

**Librerías principales**: `scipy.stats` (uniform, expon, norm), `pandas`, `numpy`, `sympy`, `matplotlib`, `IPython.display`

**Notebooks**: `TGAD_Distribuciones_Continuas_con_Python.ipynb`, `TGAD_Estadística_Clase_U3_con_Python.ipynb`

---

### Unidad 4 — Variables Aleatorias Bidimensionales

Distribuciones conjuntas y marginales:

- **Distribuciones conjuntas**: función de probabilidad bivariada f(x, y)
- **Distribuciones marginales**: probabilidades individuales de X e Y
- **Distribuciones condicionales**: P(X|Y) y P(Y|X)
- **Independencia**: verificación de f(x, y) = f_X(x) × f_Y(y)
- **Covarianza y correlación**: medidas de asociación lineal
- **Tablas de contingencia**: análisis con pandas

**Librerías principales**: `pandas`, `numpy`, `sympy`, `matplotlib`, `IPython.display`, `itertools`, `fractions`

**Notebooks**: `TGAD_Estadística_Clase_U4_con_Python.ipynb`

---

### Unidad 5 — Estadística Descriptiva

Análisis descriptivo de datos:

- **Frecuencias**: absolutas, relativas, acumuladas
- **Medidas de tendencia central**: media, mediana, moda
- **Medidas de dispersión**: rango, varianza, desviación estándar, coeficiente de variación
- **Medidas de posición**: cuartiles, percentiles, quintiles
- **Medidas de forma**: asimetría (skewness), curtosis
- **Visualización**: histogramas, gráficos de barras, boxplots con `matplotlib` y `seaborn`
- **Análisis de distribuciones**: identificación de patrones y outliers

**Librerías principales**: `pandas`, `numpy`, `sympy`, `statistics`, `matplotlib`, `seaborn`, `IPython.display`, `requests`

**Notebooks**: `TGAD_Estadística_Clase_U5_con_Python.ipynb`

---

### Unidad 6 — Muestreo e Intervalos de Confianza

Inferencia estadística y estimación:

- **Muestreo aleatorio simple**: con y sin reemplazo
- **Muestreo estratificado**: partición de la población en estratos
- **Distribución muestral de la media**: teorema del límite central
- **Intervalos de confianza para la media**: con varianza conocida (Z) y desconocida (t de Student)
- **Intervalos de confianza para la varianza**: distribución chi-cuadrado
- **Nivel de confianza**: interpretación del 90%, 95%, 99%
- **Tamaño de muestra**: cálculo para precisión deseada

**Librerías principales**: `pandas`, `numpy`, `scipy.stats` (t, chi2, norm), `matplotlib`, `seaborn`, `statistics`

**Notebooks**: `TGAD_Estadística_Clase_U6_con_Python.ipynb`

---

### Unidad 7 — Test de Hipótesis

Contraste de hipótesis estadísticas:

- **Hipótesis nula (H₀) y alternativa (H₁)**: planteamiento del test
- **Errores tipo I y tipo II**: significancia α y potencia (1-β)
- **Tests para la media**: con varianza conocida (Z) y desconocida (t de Student)
- **Tests para la varianza**: chi-cuadrado
- **Tests bilaterales y unilaterales**: regiones críticas y de aceptación
- **p-valor**: interpretación y criterio de decisión
- **Funciones personalizadas**: implementación de tests con scipy.stats
- **Aplicaciones prácticas**: análisis de diferencias significativas

**Librerías principales**: `pandas`, `numpy`, `scipy.stats` (t, chi2, norm, f), `matplotlib`, `seaborn`, `statistics`

**Notebooks**: `TGAD_Estadística_Clase_U7_con_Python.ipynb`

---

### Unidad 8 — Regresión Lineal

Modelado de relaciones lineales:

- **Regresión lineal simple**: modelo Y = β₀ + β₁X + ε
- **Método de mínimos cuadrados**: estimación de β₀ y β₁
- **Coeficiente de correlación (r)**: medida de asociación lineal (-1 a 1)
- **Coeficiente de determinación (R²)**: proporción de varianza explicada
- **Residuos**: análisis de errores, supuestos del modelo
- **Predicción**: estimación de valores de Y para nuevos valores de X
- **Visualización**: diagramas de dispersión, recta de regresión

**Librerías principales**: `pandas`, `numpy`, `matplotlib`, `IPython.display`

**Notebooks**: `TGAD_Estadística_Clase_U8_con_Python.ipynb`

---

### Unidad 9 — Números Índice

Índices de precios y cantidades:

- **Índices de precio simple**: variación de un solo producto
- **Índices de precio agregado**: canasta de productos
- **Índices de precio ponderado**: Laspeyres, Paasche, Fisher
- **Índices de cantidad**: similar a precios pero sobre cantidades
- **Deflación de series**: ajuste por inflación
- **Descarga de datos financieros**: uso de `yfinance` para datos de mercado (acciones, índices)
- **Análisis de series temporales**: tendencias, estacionalidad
- **Aplicaciones**: IPC, deflactor del PBI, índices bursátiles

**Librerías principales**: `pandas`, `numpy`, `matplotlib`, `IPython.display`, `yfinance`

**Paquetes a instalar en Colab**: `!pip install yfinance`

**Notebooks**: `TGAD_Estadística_Clase_U9_con_Python.ipynb`

---

## Uso sugerido del material

1. **Orden secuencial** — Seguir cada unidad en orden (0 a 9), ya que los conceptos se construyen progresivamente
2. **Ejecutar todas las celdas** — Practicar ejecutando cada celda de código para entender el comportamiento
3. **Google Colab** — Abrir el notebook, guardar copia en Drive y ejecutar (método recomendado del curso)
4. **PDFs de referencia** — Consultar los PDFs en "0 Elementos iniciales/" para introducción a Python y Colab
5. **Persistencia de datos** — Montar Google Drive al inicio de la sesión para no perder archivos descargados
6. **Experimentar** — Modificar parámetros de las distribuciones y observar cambios en gráficos y resultados

---

## Buenas prácticas

- **Siempre usar entorno virtual** — Evita conflictos de versiones a nivel del sistema (solo para ejecución local)
- **Reproducibilidad** — El archivo `requirements.txt` garantiza que cualquier otro desarrollador obtenga exactamente el mismo entorno
- **Separación de dependencias** — `requirements.in` lista solo lo que necesita tu código; `requirements.txt` incluye el árbol completo de dependencias
- **Mantener .venv en .gitignore** — El entorno virtual no debe versionarse; se regenera fácilmente con `pip install -r requirements.txt`
- **Guardar copia en Drive** — Siempre trabajar en tu copia personal del notebook en Google Drive
- **Documentar cálculos** — Usar celdas de Markdown para explicar razonamientos estadísticos

---

## Dependencias principales

El archivo `requirements.in` lista las dependencias directas del proyecto:

| Paquete | Uso en el curso |
|---------|------------------|
| `numpy` | Arreglos numéricos y operaciones vectoriales (todas las unidades) |
| `pandas` | Manipulación y análisis de datos tabulares (U0 en adelante) |
| `scipy` | Distribuciones de probabilidad y tests estadísticos (U2 en adelante) |
| `matplotlib` | Visualización clásica: histogramas, dispersión, líneas (U2 en adelante) |
| `seaborn` | Visualización estadística: boxplots, distribuciones (U5 en adelante) |
| `sympy` | Cálculo simbólico para estadística y probabilidad (U1 en adelante) |
| `ipython` | Renderizado de LaTeX con `IPython.display.Math` (todas las unidades) |
| `ipywidgets` | Widgets interactivos en notebooks |
| `nbformat` | Manipulación programática de archivos `.ipynb` |
| `requests` | Descarga de archivos desde web (U0) |
| `anytree` | Construcción de árboles de probabilidad (U1) |
| `graphviz` | Visualización de grafos y árboles (U1) |
| `yfinance` | Descarga de datos financieros de Yahoo Finance (U9) |

> **Paquetes de la biblioteca estándar de Python** (no requieren instalación): `statistics`, `itertools`, `fractions`, `warnings`

---

## Solución de problemas (troubleshooting)

### Error: `ModuleNotFoundError: No module named 'anytree'` (o similar)

**En Google Colab**:
```python
# Ejecutar en una celda al inicio del notebook
!pip install anytree graphviz
```

**En entorno local**:
1. Asegurate de activar el entorno del proyecto:
   ```bash
   source .venv/Scripts/activate   # Git Bash
   # o .venv\Scripts\Activate.ps1  # PowerShell
   ```
2. Instalar dependencias:
   ```bash
   pip install -r requirements.txt
   ```
3. Si usás VS Code, seleccioná el kernel `.venv` en la paleta de kernels de Jupyter.

### Error: `FileNotFoundError` al leer archivos en Colab

- **Verificar ruta**: los archivos descargados quedan en `/content/`. Si usás Drive, la ruta es `/content/drive/MyDrive/...`
- **Montar Drive**: ejecutar `drive.mount("/content/drive")` antes de leer archivos del Drive
- **Archivos temporales**: todo en `/content/` se pierde al cerrar sesión. Copiar a Drive para persistencia.

### Error: packages no persisten en Colab

- **Es normal**: cada sesión de Colab es una nueva máquina virtual
- **Solución**: re-ejecutar la celda `!pip install ...` al inicio de cada sesión
- **Alternativa**: crear script de setup en Drive que se ejecute automáticamente

### Gráficos no se visualizan

- **Matplotlib/Seaborn**: normalmente se renderizan automáticamente en notebooks
- **Si no aparecen**: agregar `%matplotlib inline` al inicio del notebook
- **Graphviz**: requiere instalación del sistema en entorno local (en Colab funciona con `!pip install graphviz`)

### Kernel desconectado o muerto

- **En Colab**: menú **Entorno de ejecución → Reiniciar entorno de ejecución**
- **Localmente**: reiniciar el kernel en Jupyter Lab o VS Code
- **Causa común**: operación que consume demasiada memoria

---

## Licencia

Ver [LICENSE](LICENSE). 
