# ! /bin/bash
# Programa para ejemplificar como capturar la informacion del usuario utilizando el comando read
# Autor: Boris Vargas - @borisvargas96

option=0
backupName=""

echo "programa Utilidades Postgres"
read -p "Ingresar una opcion: " option
read -p "Ingresar el nombre del archivo del backup: " backupName

echo "Opcion: $option, backupName: $backupName"

