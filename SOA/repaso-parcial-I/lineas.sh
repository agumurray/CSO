# IFS=$'\n'
# for linea in $(cat /etc/passwd); do
  # users=$(echo $linea | cut -d: -f1)
  # bash=$(echo $linea | cut -d: -f7)
  # echo "$users - $bash"
# done

while read -r linea; do
  users=$(echo $linea | cut -d: -f1)
  bash=$(echo $linea | cut -d: -f7)
  echo "$users - $bash"
done < /etc/passwd
