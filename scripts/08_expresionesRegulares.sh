# ! /bin/bash
# Programa para ejemplificar como capturar la informacion del usuario y validarla utilizando expresiones regulares
# Autor: Boris Vargas - @borisvargas96

identificacionRegex='^[0-9]{10}$'
paisRegex='^EC|COL|US$'
# fechaNacimientoRegex='^19|20[0-8]{2}[1-12][1-31]$'
fechaNacimientoRegex='^(19|20)([0-9]{2})(0[1-9]|1[1-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])$'

echo "Expresiones regulares"
read -p "Ingresar una identificacion: " identificacion
read -p "Ingresar las iniciales de un Pais [EC, COL, US]: " pais
read -p "Ingresar la fecha de nacimiento [yyyyMMdd]: " fechaNacimiento

#Validacion Identificacion
if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "Identificacion $identificacion valida"
else
    echo "Identificacion $identificacion invalida"
fi

#Validacion Pais
if [[ $pais =~ $paisRegex ]]; then
    echo "Pais $pais valida"
else
    echo "Pais $pais invalido"
fi

#Validacion Fecha de Nacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
    echo "Fecha Nacimiento $fechaNacimiento valida"
else
    echo "Fecha Nacimiento $fechaNacimiento invalida"
fi