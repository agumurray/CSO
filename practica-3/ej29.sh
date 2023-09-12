#!/bin/bash

# Declarar un arreglo para almacenar los archivos .doc
archivos_doc=()

# Función para agregar archivos .doc al arreglo
function agregar_archivos_doc() {
    local directorio="/home"
    archivos_doc=()

    for archivo in "$directorio"/*.doc; do
        [ -f "$archivo" ] || continue
        archivos_doc+=("$archivo")
    done
}

# Función para imprimir un archivo en pantalla si está en el arreglo
function verArchivo() {
    local archivo="$1"
    if [[ " ${archivos_doc[@]} " =~ " $archivo " ]]; then
        cat "$archivo"
    else
        echo "Archivo no encontrado"
        return 5
    fi
}

# Función para imprimir la cantidad de archivos .doc en /home
function cantidadArchivos() {
    local cantidad="${#archivos_doc[@]}"
    echo "Cantidad de archivos .doc en /home: $cantidad"
}

# Función para eliminar un archivo del arreglo y, opcionalmente, del FileSystem
function borrarArchivo() {
    local archivo="$1"
    if [[ " ${archivos_doc[@]} " =~ " $archivo " ]]; then
        echo "¿Desea eliminar el archivo lógicamente? (Si/No)"
        read respuesta
        if [ "$respuesta" == "Si" ]; then
            archivos_doc=("${archivos_doc[@]/$archivo}")
        elif [ "$respuesta" == "No" ]; then
            archivos_doc=("${archivos_doc[@]/$archivo}")
            rm -f "$archivo"
        else
            echo "Respuesta no válida. No se realizaron cambios."
        fi
    else
        echo "Archivo no encontrado"
        return 10
    fi
}

# Agregar archivos .doc al arreglo
agregar_archivos_doc

# Ejemplo de uso de las funciones
verArchivo "/home/archivo1.doc"
cantidadArchivos
borrarArchivo "/home/archivo2.doc"
cantidadArchivos

