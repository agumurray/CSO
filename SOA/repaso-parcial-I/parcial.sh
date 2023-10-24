#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "debe ingresar un directorio como parametro"
    exit 1
fi

dir="$1"
arr=()

for arch in "$dir"/*; do
  nombre=$(basename "$arch")
  arr+=("$nombre")
done

delete() {
  read n
  for ((i=0;i<${#arr[@]};i++)); do
    if [ "$n" == "${arr[$i]}" ]; then
      path="$dir/${arr[$i]}"
      echo "$path"
      rm "$path"
      unset arr[$i]
      arr=(${arr[@]})
      return 0
    fi
  done
  return 1
}

index() {
  read n
   for ((i=0;i<${#arr[@]};i++)); do
    if [ "$n" == "${arr[$i]}" ]; then
      echo "el archivo se encuentra en el indice $i"
      return 0
    fi
  done
  return 1
}

size() {
  echo "el tamanio del array es ${#arr[@]}"
  return 0
}

list() {
    for ((i=0;i<${#arr[@]};i++)); do
      echo "${arr[$i]}"
      echo "\n"
  done
  return 0
}

delete
index
size
list

