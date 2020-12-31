# ! /bin/bash
# Programa RETO 5
# Modificar el archivo utilityHost.sh para escribir la información solicitada a un archivo de log cuyo nombre será log donde yyyy representa el año, MM el mes, DD el día, HH la hora, mm los minutos y SS los segundos.
# Autor: Boris Vargas - @borisvargas96

fecha=`date +%Y%m%d%H%M%S`
usuario=$(logname)
archivo=log-`date +%Y%m%d%H%M%S`.log

# Crear el archivo
touch $archivo
echo "\n"
# Agregar información del usuario
echo "Acceso del usuario: $usuario " >> $archivo
echo "\n"
# Agrego la fecha
echo "En la Fecha: $fecha " >> $archivo

# Muestro el archivo por 3 segundos
cat $archivo
sleep 3
