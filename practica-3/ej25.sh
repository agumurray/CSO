#!/bin/bash

usuarios=()

while IFS=: read -r nombre usuario grupo resto; do
    if [ "$grupo" = "users" ]; then
        usuarios+=("$nombre")
    fi
done < /etc/passwd

function mostrar_error() {
  echo "Error: $1"
  exit 1
}

while getopts ":b:li" opcion; do
      case "$opcion" in
        b)
            indice="$OPTARG"
            if [ "$indice" -ge 0 ] && [ "$indice" -lt "${#usuarios[@]}" ]; then
                echo "Elemento en la posición $indice del arreglo: ${usuarios[$indice]}"
            else
                mostrar_error "Índice fuera de rango o el arreglo está vacío."
            fi
            ;;
        l)
            echo "Longitud del arreglo: ${#usuarios[@]}"
            ;;
        i)
            echo "Elementos del arreglo:"
            for nombre in "${usuarios[@]}"; do
                echo "$nombre"
            done
            ;;
        \?)
            mostrar_error "Opción inválida: -$OPTARG"
            ;;
        :)
            mostrar_error "La opción -$OPTARG requiere un argumento."
            ;;
    esac
done

# Si no se proporcionan opciones, mostrar mensaje de uso
if [ $# -eq 0 ]; then
    echo "Uso: $0 [-b n] [-l] [-i]"
    exit 1
fi
