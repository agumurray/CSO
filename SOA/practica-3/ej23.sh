#!/bin/bash

# Declarar el arreglo de números
numeros=(10 3 5 7 9 12 4 6 8)

# Inicializar variables para contar números impares
contador_impares=0

# Recorrer el arreglo
for numero in "${numeros[@]}"; do
    # Verificar si el número es par
    if ((numero % 2 == 0)); then
        echo "Número par: $numero"
    else
        # Si no es par, aumentar el contador de impares
        contador_impares=$((contador_impares + 1))
    fi
done

# Imprimir la cantidad de números impares al finalizar el recorrido
echo "Cantidad de números impares: $contador_impares"

