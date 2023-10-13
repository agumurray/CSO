#!/bin/bash

esta_logueado() {
  if who | grep -wq "$1"; then
    return 0
  fi
  return 1
}

cant_procesos() {
  ps -U "$1" | wc -l
}

uso_de_procesos() {
  cant=$(cant_procesos $1)
  if [ $cant -gt 100 ]; then
    return 0
  fi
  return 1
}

for user in "$@"; do
  $(esta_logueado "$user")
  if [ "$?" -ne 0 ]; then
    echo "El usuario esta logueado"
    $(uso_de_procesos "$user")
    if [ "$?" -eq 0 ]; then
      echo "El usuario esta corriendo mas de 100 procesos"
      res="$user - "$(date)
      echo "$res" >> logs.txt
    fi
  fi
done

