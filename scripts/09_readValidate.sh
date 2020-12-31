# ! /bin/bash
# Programa para ejemplificar como capturar la informacion del usuario y validarla
# Autor: Boris Vargas - @borisvargas96

option=0
backupName=""
clave=""

echo "Programa utilidades Postgres"
# Acepta el ingreso de informacion de solo un caracter
read -n1 -p "Ingresar una opcion: " option
echo -e "\n"
# Acepta el ingreso de informacion de solo diez caracteres
read -n10 -p "Ingresar el nombre del archivo del backup: " backupName
echo -e "\n"
echo "Opcion: $option, backupName: $backupName"
# No se muestra en pantalla el texto a escribir
read -s -p "Clave: " clave
echo "La clave: $clave"

