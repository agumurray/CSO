#!/bin/bash

#Lo hago solo con los ultimos tres scritps porque sino alta pajaaaa ;)

echo "MENU DE COMANDOS
16:reporte de extensiones (enviar extension)
17:nombres de archivos modificados (sin parametros)
18:verificacion de logins (enviar nombre-usuario)"

read opcion

case $opcion in
  16)
    read params
    ./ej16.sh "$params"
    ;;
  17)
    ./ej17.sh
    ;;
  18)
    read params
    ./ej18.sh "$params"
    ;;
  *)
    echo "opcion invalida"
    ;;
esac


