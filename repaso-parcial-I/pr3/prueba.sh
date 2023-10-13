archivo="hola.txt"
extension=$(echo "$archivo" | cut -d. -f2)
echo "$extension"
