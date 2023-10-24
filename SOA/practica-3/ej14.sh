#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Uso: $0 [-a|-b] CADENA directorio"
    exit 1
fi

opcion="$1"
cadena="$2"
directorio="$3"

if [ ! -d "$directorio" ]; then
    echo "El directorio '$directorio' no existe."
    exit 1
fi

for archivo in "$directorio"/*; do
  if [ -f "$archivo" ]; then
      nombre=$(basename "$archivo")
      extension="${nombre##*.}"  # Obtiene la extensión del archivo
      nombre_sin_extension="${nombre%.*}"

      if [ "$opcion" = "-a" ]; then
        nuevo_nombre="${nombre_sin_extension}${cadena}.${extension}"
      elif [ "$opcion" = "-b" ]; then
        nuevo_nombre="${cadena}${nombre}"
      else
        echo "opcion no valida"
        exit 1
    fi

  mv "$archivo" "$directorio/$nuevo_nombre"
  echo "Renombrado '$nombre' a '$nuevo_nombre'"
  fi
done

