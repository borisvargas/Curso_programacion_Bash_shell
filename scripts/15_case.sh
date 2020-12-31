# !/bin/bash
# Programa para ejemplificar el uso de la sentencia case
# Autor: Boris Vargas - @borisvargas96

opcion=""

echo "Ejemplo Sentencia Case"
read -p "Ingrese una opcion de la A - Z: " opcion
echo "\n"

case $opcion in 
    "A") echo "\nOperacion Gurdar archivo";;
    "B") echo "\nOperacion Eliminar archivo";;
    [C-E]) echo "\nNo esta implementada la operacion";;
    "*" "Opcion Incorrecta";;
esac


