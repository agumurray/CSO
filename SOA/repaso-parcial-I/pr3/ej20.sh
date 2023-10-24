#!/bin/bash

pila=()

push() {
  pila+=($1)
}

pop() {
  unset pila[${#pila[@]}-1]
}

length() {
  len=${#pila[@]}
  echo "$len"
}

print() {
  for ((i=${#pila[@]}-1; i>=0; i--)); do
    echo ${pila[$i]}
  done
}

push 1
push 2
push 3
length
pop
print
length
