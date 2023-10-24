#!/bin/bash

# Declarar un arreglo vacío
array=()

# Función para agregar un elemento al final del arreglo
function agregar_elem() {
    local elemento="$1"
    array+=("$elemento")
}

# Función para eliminar un elemento en una posición específica del arreglo
function eliminar_elem() {
    local posicion="$1"
    if [ "$posicion" -ge 0 ] && [ "$posicion" -lt "${#array[@]}" ]; then
        unset "array[$posicion]"
        array=("${array[@]}")
    else
        echo "Posición inválida. El arreglo tiene ${#array[@]} elementos."
    fi
}

# Función para obtener la longitud del arreglo
function longitud() {
    echo "Longitud del arreglo: ${#array[@]}"
}

# Función para imprimir todos los elementos del arreglo
function imprimir() {
    echo "Elementos del arreglo:"
    for elemento in "${array[@]}"; do
        echo "$elemento"
    done
}

# Función para inicializar el arreglo con una longitud y un valor específico
function inicializar_Con_Valores() {
    local longitud="$1"
    local valor="$2"
    array=()
    for ((i = 0; i < longitud; i++)); do
        array+=("$valor")
    done
}

# Ejemplo de uso de las funciones
agregar_elem "Elemento1"
agregar_elem "Elemento2"
agregar_elem "Elemento3"
longitud
imprimir
eliminar_elem 1
longitud
imprimir
inicializar_Con_Valores 5 "ValorInicial"
longitud
imprimir

