# !/bin/bash
# Programa: Solicitar  que se ingrese un valor del 1 al 5. Segun el valor ingresado valor a validarlo utilizando las condicionales e imprimir segun el valor ingresado. Construir expresiones de validacion numericas, cadenas y archivos segun la opcion ingresada.

numeroRegex='^[1-5]{1}$'
opcion=""

echo "Opcion 1 imprime la hora exacta"
echo "Opcion 2 Imprime la fecha"
echo "Opcion 3 Imprime el nombre del mes"
echo "Opcion 4 Imprime el día de la semana"
echo "Opcion 5 imprime el día del mes"

read -n1 -p "Selecciona una opción del 1 al 5: " opcion
echo "\n"

#Validacion de Variables
#Identificacion

if [[ $opcion =~ $numeroRegex ]]; then
    case $opcion in
        1) echo "La hora exacta es $(date +%T)";;
        2) echo "La fecha exacta es $(date +%F)";;
        3) echo "El mes es $(date +%B)";;
        4) echo "El día de la semana es $(date +%A)";;
        5) echo "El día del mes es $(date +%d)";;
    esac
else
    echo "Opcion no válida"
fi
