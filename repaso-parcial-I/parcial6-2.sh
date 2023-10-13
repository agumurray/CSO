#!/bin/bash

arr=()
patron=$1

while read -r linea; do
  usr=$(echo "$linea" | cut -d: -f1)
  if echo "$usr" | grep -q "$patron"; then
    arr+=("$usr")
  fi
done < /etc/passwd

echo "${arr[@]}"

echo "1-listar
      2-eliminar
      3-contar"
read op
case "$op" in
  1)
    echo "${arr[@]}"
    ;;
  2)
    read elem
    unset arr[$elem]
    arr=(${arr[@]})
    ;;
  3)
    echo "${#arr[@]}"
    ;;
  *)
    ;;
esac


