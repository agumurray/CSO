#!/bin/bash

echo "1.-Listar
2.-DondeEstoy
3.-QuienEsta"

read op

case $op in
  1)
    ls
    ;;
  2)
    pwd
    ;;
  3)
    whoami
  ;;
*)
  echo "opcion no valida"
  ;;
esac


