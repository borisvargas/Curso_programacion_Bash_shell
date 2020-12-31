# !/bin/bash
# Programa para ejemplificar la creacion de archivos y directorios
# Autor: Boris Vargas - @borisvargas96

echo "Escribir en un archivo"

echo "Valores escritos con el comando echo " >> $1

#Adición multilínea
cat <<EOM >>$1
$2
EOM