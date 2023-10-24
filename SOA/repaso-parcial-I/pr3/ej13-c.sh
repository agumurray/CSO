#!/bin/bash

if [ $# -ne 1 ]; then
    echo "parametros incorrectos"
    exit 1
fi

if [ -e $1 ]; then
  if [ -f $1 ]; then
    echo "Es un archivo"
  fi
  if [ -d $1 ]; then
    echo "Es un directorio"
  fi
  exit 0
fi

mkdir $1
