#!/bin/bash

if [ $# -ne 1 ]; then
    echo "error: no ingreso nombre de usuario"
    exit 1
fi

usuario="$1"

while true
do
  if who | grep -wq "$usuario"; then
      echo "Usuario $usuario logueado en el sistema"
      break
  fi
sleep 10
done


