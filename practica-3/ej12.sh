#!/bin/bash

#Comprobar si se proporcionaron dos parametros
#
if [ $# -ne 2 ]; then
    echo "Debe proporcionar exactamente dos numeros como paramteros."
    exit 1
fi

num1="$1"
num2="$2"

# Realizar las operaciones
suma=$((num1 + num2))
resta=$((num1 - num2))
multiplicacion=$((num1 * num2))

# Determinar cuál número es mayor
if [ $num1 -gt $num2 ]; then
    mayor=$num1
else
    mayor=$num2
fi

# Imprimir resultados
echo "La suma de $num1 y $num2 es: $suma"
echo "La resta de $num1 y $num2 es: $resta"
echo "La multiplicación de $num1 y $num2 es: $multiplicacion"
echo "El número mayor entre $num1 y $num2 es: $mayor"



