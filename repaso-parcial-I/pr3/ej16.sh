#!/bin/bash

if [ $# -ne 1 ]; then
  echo "parametros incorrectos"
  exit 1
fi

extension="$1"

find "$HOME" -type f -name "*.$extension" > reporte.txt

cont=`wc -l reporte.txt`
rm -rf "reporte.txt"

echo "`whoami` $cont" > reporte.txt
