#!/bin/bash

# Script para iniciar Jupyter Notebook - Estadística I
# Uso: ./start_jupyter.sh

echo "🚀 Iniciando Jupyter Notebook - Estadística I"
echo "📍 Directorio: $(pwd)"
echo ""

# Activar entorno virtual
source .venv/bin/activate

# Verificar que el kernel esté disponible
echo "📋 Kernels disponibles:"
jupyter kernelspec list | grep estadistica

echo ""
echo "🌐 Iniciando servidor Jupyter..."
echo "   Accede desde: http://localhost:8888"
echo "   Para detener: Ctrl+C"
echo ""

# Iniciar Jupyter con configuración básica
jupyter notebook \
    --ip=0.0.0.0 \
    --port=8888 \
    --no-browser=False \
    --allow-root \
    --NotebookApp.token='' \
    --NotebookApp.password='' \
    --notebook-dir="$(pwd)"
