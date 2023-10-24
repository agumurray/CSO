#!/bin/bash

directorio="`pwd`"

for archivo in "$directorio"/*; do
  nombre=`basename "$archivo"`
  echo "$nombre" | tr '[:lower:][:upper:]' '[:upper:][:lower:]'
done
