#!/bin/bash

fechaSrch="$1"
shift
for param in "$@"; do
  acc=0
  while read -r linea; do
    ip=$(echo "$linea" | cut -d' ' -f1)
    fecha=$(echo "$linea" | cut -d' ' -f3)
    if [ "$ip" == "$param" ] && [ "$fechaSrch" = "$fecha" ]; then
      acc=$(expr $acc + 1)
    fi
  done < logs.bin
  res="$param - $acc"
  echo "$res" >> res.txt
done
