#!/bin/bash

# Comprobar si se proporciona la extensión como argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 extension"
    exit 1
fi

extension="$1"

# Crear un archivo de informe llamado "reporte.txt"
archivo_informe="reporte.txt"

# Encabezado del informe
echo "Nombre de usuario | Cantidad de archivos con la extensión .$extension" > "$archivo_informe"
echo "------------------------------------------------------------" >> "$archivo_informe"

# Buscar archivos con la extensión especificada y contarlos para cada usuario
find /home -type f -name "*.$extension" -exec stat -c "%U" {} \; | sort | uniq -c | while read count user; do
    echo "$user | $count" >> "$archivo_informe"
done

echo "Informe generado en $archivo_informe"

