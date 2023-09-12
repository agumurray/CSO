#!/bin/bash

pila=()

function push() {
  pila+=("$1")
}

function pop() {
  if [ ${#pila[@]} -gt 0 ]; then
    elemento="${pila[-1]}"
    unset 'pila[-1]'
    echo "Elemento sacado de la pila: $elemento"
  else
    echo "La pila esta vacia.";
  fi
}

function length() {
  echo "Longitud de la pila: ${#pila[@]}"
}

function print() {
  echo "Elementos en la pila: "
  for elemento in "${pila[@]}"
    do
      echo "$elemento"
  done
}

push "Elemento 1"
push "Elemento 2"
push "Elemento 3"
push "Elemento 4"
push "Elemento 5"
push "Elemento 6"
push "Elemento 7"
push "Elemento 8"
push "Elemento 9"
push "Elemento 10"
pop
pop
pop
length
print
