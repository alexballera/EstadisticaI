# Estadística I - TGAD FCE UBA

Este repositorio contiene el material completo del curso **Estadística I** de la **Tecnicatura en Gestión y Análisis de Datos** de la **Facultad de Ciencias Económicas** de la **Universidad de Buenos Aires** (Cátedra Bianco).

## 🎯 Enfoque Dual de Herramientas

Este curso utiliza un **enfoque dual** que combina:

- **🐍 Python**: Para análisis estadístico programático, visualización de datos y notebooks interactivos
- **🧮 HP Prime**: Para verificación de cálculos, trabajo manual y comprensión conceptual de operaciones matemáticas

Esta metodología permite a los estudiantes desarrollar tanto habilidades de programación como competencias en el uso de herramientas matemáticas especializadas.

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
- **HP Prime** (calculadora física o emulador virtual) *[Opcional para verificación]*

## � Recursos Educativos

### Guías de Referencia

En la carpeta `guides/` encontrarás:

- **`Guia_Conjuntos_Python.ipynb`**: Guía completa de operaciones con conjuntos en Python
- **`Guia_Rapida_HP_Prime_Conjuntos.md`**: Referencia rápida para operaciones de conjuntos en HP Prime

### Documentación HP Prime

En la carpeta `hp-prime/` encontrarás:

- **`docs/`**: Guías específicas y documentación técnica
- **`imagenes/`**: Imágenes y capturas de pantalla de la calculadora
- **`manuales/`**: Manuales oficiales y guías de usuario en PDF

## �🚀 Cómo Usar este Repositorio

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

```text
EstadisticaI/
├── 0 Elementos iniciales/          # Introducción y fundamentos
├── 1 Probabilidad/                 # Conceptos básicos de probabilidad
├── 2 VA discretas/                 # Variables aleatorias discretas
├── 3 VA continuas/                 # Variables aleatorias continuas
├── 4 VA bidimensionales/           # Análisis conjunto de variables
├── 5 Descriptiva/                  # Estadística descriptiva
├── 6 Muestreo e IC/               # Muestreo e intervalos de confianza
├── 7 Test de Hipotesis/           # Pruebas de hipótesis
├── 8 Regresión Lineal/            # Modelos de regresión
├── 9 Numeros Indice/              # Números índice
├── guides/                         # Guías de referencia
│   ├── Guia_Conjuntos_Python.ipynb
│   └── Guia_Rapida_HP_Prime_Conjuntos.md
├── hp-prime/                      # Documentación HP Prime
│   ├── docs/                      # Guías específicas
│   ├── imagenes/                  # Recursos visuales
│   └── manuales/                  # Manuales oficiales
├── .github/                       # Configuración GitHub
├── AI_INSTRUCCIONES.md           # Instrucciones para asistentes IA
├── requirements.txt              # Dependencias Python
├── start_jupyter.sh              # Script de inicio
├── .gitignore
└── README.md
```

## 🎯 Objetivos de Aprendizaje

Al completar este curso, los estudiantes serán capaces de:

- Aplicar conceptos fundamentales de probabilidad y estadística
- Utilizar Python para análisis estadístico y programación
- Manejar la calculadora HP Prime para verificación y cálculos matemáticos
- Interpretar y visualizar datos estadísticos
- Realizar pruebas de hipótesis y análisis de regresión
- Construir y analizar números índice
- Integrar herramientas digitales y analógicas en el análisis estadístico

## � Metodología de Trabajo

1. **Estudio Teórico**: Revisión de conceptos en los notebooks
2. **Práctica en Python**: Implementación de algoritmos y análisis
3. **Verificación con HP Prime**: Validación de resultados y comprensión conceptual
4. **Ejercicios Integrados**: Problemas que combinan ambas herramientas

## �👥 Contribuciones

Este material es de uso académico. Para sugerencias o correcciones, por favor abre un issue o envía un pull request.

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo [LICENSE](LICENSE) para más detalles.

## 📧 Contacto

### Cátedra Bianco - TGAD FCE UBA

---

*Material desarrollado para la Tecnicatura en Gestión y Análisis de Datos de la Facultad de Ciencias Económicas de la Universidad de Buenos Aires.*
