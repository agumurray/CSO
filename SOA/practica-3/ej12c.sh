#!/bin/bash

#Comprobar si se proporcionan los parametros necesarios
if [ $# -ne 3 ]; then
    echo "You should give exactly 3 parameters (op n1 n2)"
    exit 1
fi

#Capturar los parametros
op="$1"
num1="$2"
num2="$3"

# Realizar la operación deseada
case $op in
    +)
        resultado=$((num1 + num2))
        ;;
    -)
        resultado=$((num1 - num2))
        ;;
    *)
        echo "Operación no válida. Las operaciones válidas son: +, - ,*, %"
        exit 1
        ;;
esac

echo $resultado
