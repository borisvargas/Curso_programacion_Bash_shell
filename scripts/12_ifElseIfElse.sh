# ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de decisión if, else if, else
# Autor: Boris Vargas - @borisvargas96

notaClase=0
edad=0

echo "Ejemplo Sentencia If - Else"

read -p "Indique cúal es su edad: " edad
if [ $edad -le 18 ]; then
    echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else 
    echo "La persona es adulto mayor"
fi