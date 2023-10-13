#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Parámetros insuficientes"
  exit 1
fi

rep=1
cont=0

for parametro in "$@"; do
  if [ ! -e "$parametro" ]; then
    cont=$(expr $cont + 1)
  fi

  rep=$(expr $rep + 1)

  res=$(expr $rep % 2)

  if [ $res -eq 0 ]; then
    if [ -e "$parametro" ]; then
      if [ -f "$parametro" ]; then
        echo "$parametro es un archivo"
      elif [ -d "$parametro" ]; then
        echo "$parametro es un directorio"
      fi
    fi
  fi
done

echo "La cantidad de archivos o directorios inexistentes en el sistema es: $cont"

