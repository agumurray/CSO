#!/bin/bash

# Definir los vectores
vector1=(1 80 65 35 2)
vector2=(5 98 3 41 8)

# Verificar que los vectores tengan la misma longitud
if [ ${#vector1[@]} -ne ${#vector2[@]} ]; then
    echo "Los vectores no tienen la misma longitud."
    exit 1
fi

# Crear un vector para almacenar la suma
suma=()

# Calcular la suma elemento a elemento
for ((i = 0; i < ${#vector1[@]}; i++)); do
    suma_elemento=$((vector1[i] + vector2[i]))
    suma+=("$suma_elemento")
done

# Imprimir la suma en pantalla
echo "La suma de los vectores es:"
echo "${suma[@]}"

