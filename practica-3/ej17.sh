#!/bin/bash

for archivo in *
do
  if [ -f "$archivo" ]; then
      nuevo_nombre=$(echo "$archivo" | tr 'a-z' 'A-Z' | tr -d 'aA')

      echo "$nuevo_nombre"
  fi
done
