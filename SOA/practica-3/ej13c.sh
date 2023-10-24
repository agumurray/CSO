#!/bin/bash

# Comprobar si se proporciona un parámetro
if [ $# -ne 1 ]; then
    echo "Uso: $0 nombre_de_archivo_o_directorio"
    exit 1
fi

nombre="$1"

# Comprobar si el archivo/directorio existe
if [ -e "$nombre" ]; then
    if [ -d "$nombre" ]; then
        echo "$nombre es un directorio."
    elif [ -f "$nombre" ]; then
        echo "$nombre es un archivo."
    else
        echo "$nombre existe pero no es ni un archivo ni un directorio."
    fi
else
    # Si no existe, crear un directorio con el nombre proporcionado
    mkdir "$nombre"
    echo "Se creó el directorio $nombre."
fi

