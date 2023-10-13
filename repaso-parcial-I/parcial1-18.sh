#!/bin/bash

arr=()

for arch in $(find "/home/agustin-murray/facultad/CSO/repaso-parcial-I/prueba/" -type f -name "*.doc"); do
  arr+=("$arch")
done

verArchivo() {
  for ((i=0; i<${#arr[@]}; i++)); do
    if [ "$1" == "${arr[$i]}" ]; then
      more "${arr[$i]}"
      return
    fi
  done
  echo "Archivo no encontrado"
  exit 5
}

cantidadArchivos() {
  echo "la cantidad de archivos .doc es: ${#arr[@]}"
}

borrarArchivo() {
  echo "Ingrese SI para eliminar el archivo del arreglo y NO para eliminarlo tambien del FS"
  read op
  for ((i=0; i<${#arr[@]}; i++)); do
    if [ "$1" == "${arr[$i]}" ]; then
      unset arr[$i]
      arr=(${arr[@]})
      if [ "$op" == "NO" ]; then
        rm "$1"
      fi
      return
    fi
  done
  echo "Archivo no encontrado"
  exit 10
}


verArchivo /home/agustin-murray/facultad/CSO/repaso-parcial-I/prueba/arch1.doc
cantidadArchivos
borrarArchivo /home/agustin-murray/facultad/CSO/repaso-parcial-I/prueba/arch4.doc
cantidadArchivos

# for ((i=0; i<${#arr[@]}; i++)); do
 # echo ${arr[$i]}
# done
