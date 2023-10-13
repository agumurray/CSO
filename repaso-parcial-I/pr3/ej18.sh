#!/bin/bash

if [ $# -ne 1 ]; then
  echo "parametros incorrectos"
  exit 1
fi

usr="$1"

while true; do
  if who | grep -wq "$usr"; then
    echo "usuario conectado"
    exit 0
  fi
  sleep 10
done

