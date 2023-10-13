#!/bin/bash

inicializar() {
  arr=()
}

agregar_elem() {
  arr+=("$1")
}

eliminar_elem() {

echo "$valor"
if [ "$1" -lt ${#arr[@]} ]; then
  unset arr[$1]
  arr=(${arr[@]})
fi
}

longitud() {
  echo "${#arr[@]}"
}


inicializar
agregar_elem 1
agregar_elem 2
agregar_elem 3
agregar_elem 4
longitud
eliminar_elem 3
longitud



