# !/bin/bash
# Programa para ejemplificar el uso de expresiones condicionales
# Autor: Boris Vargas - @borisvargas96

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su pais: " pais
read -p "Ingrese el path de su archivo: " pathArchivo

echo "\nExpresiones condicionales con numeros"
if [ $edad -lt 10 ]; then
    echo "La persona es un nino o nina"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona se trata de un adolescente"
else 
    echo "La persona es mayor de edad"
fi

echo "\nExpresiones condicionales con cadenas"
if [ $pais = "EEUU" ]; then
    echo "La persona es Americana"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
    echo "La persona es del Sur America"
else 
    echo "Se desconoce la nacionalidad"
fi

echo "\nExpresiones Condicionales con archivos"
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe"
else
    echo "El directorio $pathArchivo no existe"
fi

