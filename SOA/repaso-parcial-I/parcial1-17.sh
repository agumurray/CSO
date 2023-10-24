#!/bin/bash

if [ $# -ne 1 ]; then
  echo "parametros incorrectos"
  exit 1
fi

dir="$1"
cantRead=0
cantWrite=0
if [ -e "$dir" ]; then
  for file in "$dir"/*; do
    name="$file"
    if [ -f "$name" ]; then
      if [ -r "$name" ]; then
        cantRead=`expr $cantRead + 1`
      fi
      if [ -w "$name" ]; then
        cantWrite=`expr $cantWrite + 1`
      fi
    fi
  done
else
  echo "el directorio no existe"
  exit 4
fi

echo "La cantidad de archivos con permiso de lectura es: $cantRead"
echo "La cantidad de archivos con permiso de escritura es: $cantWrite"
