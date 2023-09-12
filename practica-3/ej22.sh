#!/bin/bash

num=(10 3 5 7 9 3 5 4)

res=1
function productoria() {
  for elemento in "${num[@]}";
    do
      res=$((res * elemento))
    done
  echo "$res"
}

# Llamar a la función productoria
resultado_productoria=$(productoria)

# Imprimir el resultado
echo "La productoria de los números en el arreglo es: $resultado_productoria"


