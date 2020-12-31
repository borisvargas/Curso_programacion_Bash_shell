# ! /bin/bash
# Programa RETO 6
# Modificar programa utilityHost. sh para empaquetar los logs generados utilizando algún formato de compresión, colocarle una clave y pasarlo a otra máquina a través de SSH, cuando se seleccione la opción 7. Backup de Información
# Autor: Boris Vargas - @borisvargas96

option=`uname -a`
result=$(date)
fecha=`date +%Y%m%d_%H%M%S`
usuario=""
host=""
echo "$result \n$option" > log_$fecha.txt
echo "compresion del log"
zip -elog_$fecha.zip log_$fecha.txt
echo "\ntranferir archivo" 
read -p "Ingrese usuario: " usuario
read -p "Ingrese host destino: " host
rsync -avz log_$fecha.zip $usuario@$host:/Downloads/platzi/
