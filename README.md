# Estadística I - TGAD FCE UBA

Este repositorio contiene el material completo del curso **Estadística I** de la **Tecnicatura en Gestión y Análisis de Datos** de la **Facultad de Ciencias Económicas** de la **Universidad de Buenos Aires** (Cátedra Bianco).

## 📚 Contenido del Curso

El curso está organizado en **10 unidades temáticas**, cada una con notebooks interactivos de Jupyter que combinan teoría, ejemplos prácticos y ejercicios:

### Estructura de Unidades

- **0. Elementos Iniciales** - Introducción a Python, Google Colab y el repositorio
- **1. Probabilidad** - Conceptos básicos de probabilidad y aplicaciones
- **2. Variables Aleatorias Discretas** - Distribuciones discretas y sus propiedades
- **3. Variables Aleatorias Continuas** - Distribuciones continuas y análisis
- **4. Variables Aleatorias Bidimensionales** - Análisis conjunto de variables
- **5. Estadística Descriptiva** - Medidas de tendencia central y dispersión
- **6. Muestreo e Intervalos de Confianza** - Técnicas de muestreo y estimación
- **7. Test de Hipótesis** - Pruebas estadísticas y toma de decisiones
- **8. Regresión Lineal** - Modelos de regresión y predicción
- **9. Números Índice** - Cálculo y análisis de índices

## 🛠️ Requisitos

- **Python 3.7+**
- **Jupyter Notebook** o **Google Colab**
- Librerías: `numpy`, `pandas`, `matplotlib`, `scipy`, `seaborn`

## 🚀 Cómo Usar este Repositorio

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/alexballera/EstadisticaI.git
   cd EstadisticaI
   ```

2. **Crear entorno virtual (recomendado):**
   ```bash
   python -m venv estadistica_env
   source estadistica_env/bin/activate  # Linux/Mac
   # estadistica_env\Scripts\activate    # Windows
   ```

3. **Instalar dependencias:**
   ```bash
   pip install -r requirements.txt
   ```

4. **Ejecutar Jupyter:**

   ```bash
   ./start_jupyter.sh
   ```

   O manualmente:
   ```bash
   source .venv/bin/activate
   jupyter notebook --ip=0.0.0.0 --port=8888
   ```

5. **Acceder desde el navegador:** <http://localhost:8888>

6. **Alternativamente**, puedes abrir los notebooks directamente en **Google Colab**.

## 📁 Estructura del Proyecto

```
EstadisticaI/
├── 0 Elementos iniciales/
├── 1 Probabilidad/
├── 2 VA discretas/
├── 3 VA continuas/
├── 4 VA bidimensionales/
├── 5 Descriptiva/
├── 6 Muestreo e IC/
├── 7 Test de Hipotesis/
├── 8 Regresión Lineal/
├── 9 Numeros Indice/
├── .github/
├── AI_INSTRUCCIONES.md
├── requirements.txt
├── .gitignore
└── README.md
```

## 🎯 Objetivos de Aprendizaje

Al completar este curso, los estudiantes serán capaces de:

- Aplicar conceptos fundamentales de probabilidad y estadística
- Utilizar Python para análisis estadístico
- Interpretar y visualizar datos estadísticos
- Realizar pruebas de hipótesis y análisis de regresión
- Construir y analizar números índice

## 👥 Contribuciones

Este material es de uso académico. Para sugerencias o correcciones, por favor abre un issue o envía un pull request.

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo [LICENSE](LICENSE) para más detalles.

## 📧 Contacto

**Cátedra Bianco - TGAD FCE UBA**

---

*Material desarrollado para la Tecnicatura en Gestión y Análisis de Datos de la Facultad de Ciencias Económicas de la Universidad de Buenos Aires.*
