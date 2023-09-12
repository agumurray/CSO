#!/bin/bash
# Comentarios acerca de lo que hace el script
# Siempre comento mis scripts, si no hoy lo hago
# y mañana ya no me acuerdo de lo que quise hacer

echo "1. Mostrar su directorio personal:"
echo "2. Mostrar el contenido de un directorio:"
echo "3. Mostrar espacio libre en disco:"
read opcion

case $opcion in
    1)
        echo "Su directorio personal es: $HOME"
        ;;
    2)
        echo "Ingrese la ruta del directorio:"
        read directorio
        ls "$directorio"
        ;;
    3)
        df -h
        ;;
    *)
        echo "Opción no válida."
        ;;
esac


