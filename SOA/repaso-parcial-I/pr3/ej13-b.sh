#!/bin/bash

opciones=("Listar" "DondeEstoy" "QuienEsta" "Salir")

select opcion in "${opciones[@]}"; do
  case $opcion in
    "Listar")
        ls
        ;;
      "DondeEstoy")
        pwd
        ;;
      "QuienEsta")
        who
        ;;
      "Salir")
        exit 0
        ;;
        *)
          echo "opcion invalida"
          ;;
   esac
done
