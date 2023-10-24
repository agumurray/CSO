#!/bin/bash

if [ $# -ne 3 ]; then
  echo "parametros incorrectos"
  exit 1
fi

case $3 in
  "*")
    echo "$1 * $2 = `expr $1 \* $2`"
  ;;
  "+")
    echo "$1 + $2 = `expr $1 + $2`"
  ;;
  "-")
    echo "$1 - $2 = `expr $1 - $2`"
  ;;
  *)
    echo "operador no valido"
esac

if [ $1 -eq $2 ]; then
  echo "son iguales"
  exit 0
fi
if [ $1 -gt $2 ]; then
  echo "$1 es mayor que $2"
else
  echo "$2 es mayor que $1"
fi
