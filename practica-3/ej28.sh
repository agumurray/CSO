#!/bin/bash

# Verificar que se proporcione el directorio como parámetro
if [ $# -ne 1 ]; then
    echo "Uso: $0 <directorio>"
    exit 1
fi

directorio="$1"

# Verificar si el directorio existe
if [ ! -d "$directorio" ]; then
    echo "El directorio '$directorio' no existe."
    exit 4
fi

# Contadores para archivos con permisos de lectura y escritura
lectura_escritura=0

# Recorrer los archivos en el directorio
for archivo in "$directorio"/*; do
    if [ -f "$archivo" ] && [ -r "$archivo" ] && [ -w "$archivo" ]; then
        lectura_escritura=$((lectura_escritura + 1))
    fi
done

# Imprimir la cantidad de archivos con permisos de lectura y escritura
echo "Cantidad de archivos con permisos de lectura y escritura en '$directorio': $lectura_escritura"
