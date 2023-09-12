#!/bin/bash

# Verificar que al menos se reciba un parámetro
if [ $# -eq 0 ]; then
    echo "Debe proporcionar al menos un parámetro."
    exit 1
fi

# Inicializar un contador para el número de objetos inexistentes
objetos_inexistentes=0

# Iterar por los parámetros en posiciones impares
for ((i = 0; i < $#; i += 2)); do
    ruta="${!i}"  # Obtener el parámetro en la posición impar actual

    # Verificar si el archivo o directorio existe
    if [ -e "$ruta" ]; then
        if [ -d "$ruta" ]; then
            echo "El objeto en la ruta \"$ruta\" es un directorio."
        elif [ -f "$ruta" ]; then
            echo "El objeto en la ruta \"$ruta\" es un archivo."
        else
            echo "El objeto en la ruta \"$ruta\" existe pero no es ni un archivo ni un directorio."
        fi
    else
        echo "El objeto en la ruta \"$ruta\" no existe."
        objetos_inexistentes=$((objetos_inexistentes + 1))
    fi
done

# Imprimir la cantidad de objetos inexistentes
if [ $objetos_inexistentes -gt 0 ]; then
    echo "Cantidad de objetos inexistentes: $objetos_inexistentes"
fi

