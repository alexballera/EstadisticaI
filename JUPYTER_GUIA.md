# 🚀 Guía de Uso de Jupyter Notebook - Estadística I

## Opciones para Iniciar Jupyter

### Opción 1: Script Principal (Recomendado)

```bash
./start_jupyter.sh
```

Script único que inicia Jupyter sin modificar configuraciones globales.

### Opción 2: Manual

```bash
# Activar entorno virtual
source .venv/bin/activate

# Iniciar Jupyter
jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser=False
```

## 📝 Configuración del Kernel

El proyecto incluye un kernel específico llamado **"Estadística I"** que puedes seleccionar en cada notebook:

1. Abre un notebook (.ipynb)
2. Ve a: `Kernel > Change Kernel > Estadística I`
3. Alternativamente, al crear un nuevo notebook, selecciona "Estadística I" desde el menú

## 🌐 Acceso desde el Navegador

- **URL Local**: http://localhost:8888
- **Sin Token**: Los scripts están configurados para desarrollo local sin autenticación
- **Auto-abrir**: El navegador se abrirá automáticamente

## 📁 Estructura de Navegación

Cuando inicies Jupyter, verás la estructura completa del proyecto:

```
📁 0 Elementos iniciales/
📁 1 Probabilidad/
📁 2 VA discretas/
... (todas las unidades)
📄 README.md
📄 requirements.txt
```

## ⚠️ Notas Importantes

1. **Siempre usar el entorno virtual**: Los scripts lo activan automáticamente
2. **Kernel correcto**: Selecciona "Estadística I" para tener todas las librerías
3. **Puerto 8888**: Si está ocupado, Jupyter usará automáticamente 8889, 8890, etc.
4. **Detener servidor**: Usa `Ctrl+C` en la terminal donde ejecutaste el script

## 🛠️ Resolución de Problemas

### Si no funciona el kernel "Estadística I":

```bash
source .venv/bin/activate
python -m ipykernel install --user --name=estadistica_env --display-name="Estadística I"
```

### Si hay problemas con librerías:

```bash
source .venv/bin/activate
pip install -r requirements.txt
```

### Si Jupyter no se instala:

```bash
source .venv/bin/activate
pip install jupyter notebook
```
