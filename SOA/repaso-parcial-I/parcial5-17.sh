#!/bin/bash

while read -r linea; do
  usuario=$(echo $linea | cut -d: -f1)
  home=$(echo $linea | cut -d: -f6)
  shell=$(echo $linea | cut -d: -f7)


  if [ "$shell" == "/bin/zsh" ] && [ -e $home/miDir ]; then
    echo $usuario >> users.txt
    echo "Usuario $usuario aniadido exitosamente!"
  fi
done < /etc/passwd

