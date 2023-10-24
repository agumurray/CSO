#!/bin/bash

if [ $# -ne 3 ]; then
  echo "parametros incorrectos"
  exit 1
fi

if [ -e $1 ]; then
  if [ -d $1 ]; then
    echo "directorio existente"
  fi
else
  echo "el directorio no existe o no es valido"
  exit 1
fi

directorio="$1"
echo "$directorio"
cadena="$3"

for archivo in "$directorio"/*; do
  if [ -f "$archivo" ]; then
    nombre=$(basename "$archivo");
    echo "$nombre"
    if [ "$2" == "-a" ]; then
      nuevo_nombre="$nombre$cadena"
    fi
    if [ "$2" == "-b" ]; then
      nuevo_nombre="$cadena$nombre"
    fi
    mv "$directorio/$nombre" "$directorio/$nuevo_nombre"
  fi
done
