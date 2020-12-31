# ! /bin/bash
# Programa RETO 7
# Modificar nuestro programa utiliyHost.sh para crear cinco funciones de acuerdo al menú creado anteriormente y completarlo con lo visto en clases.
# Autor: Boris Vargas - @borisvargas96

opcion=0
fechaActual=`date +%Y%m%d`

#Función para instalar postgres
instalar_postgres () {
	echo "\n Verificar instalación de postgres..."
	verifyInstall=$(which psql)
	if [ $? -eq 0 ]; then
		echo "\n Postgres ya se encuentra instalado"
	else
		read -s -p "Ingresar contraseña de sudo:" password
		read -s -p "Ingresar contraseña a utilizar en postgres:" passwordPostgres
		echo "$password" | sudo -S apt update
		echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
		sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$PASSWORDpOSTGRES}';"
		echo "$password"| sudo -S systemctl enable postgresql.service
		echo "$password"| sudo -S systemctl start postgresql.service
	fi
	read -n1 -s -r -p "PRESIONE [ENTER] para continuar..."

}

desinstalar_postgres () {
echo "Desintalar postgres"
echo "\n"
read -s -p "Ingresar contraseña de sudo:" password
echo "$password"| sudo -S systemctl stop postgresql.service
echo "$password"| sudo -S apt-get -y --purge remove postgresql\*
echo "$password"| sudo -S rm -f /etc/postgresql
echo "$password"| sudo -S rm -f /etc/postgresql-common
echo "$password"| sudo -S rm -f /var/lib/postgresql
echo "$password"| sudo -S userdel -r postgres
echo "$password"| sudo -S groupdel postgresql
read -n1 -s -r -p "PRESIONE [ENTER] para continuar..."

}

sacar_respaldo () {
	echo "Listar las bases de datos"
	sudo -u postgres psql -c "\l"
	read -p "Elegir la base de datos a respaldar:" bddRespaldo
	echo "\n"
	if [ -d "$1" ]; then
		echo "Establecer permisos al directorio"
		echo "$password"| sudo -S chmod 755 $1
		echo "Realizando respaldo ... "
		sudo -u postgres pg_dump -Fc $bddRespaldo > "$1/bddRespaldo$fechaActual.bak"
		echo "Respaldo realizado correctamente en la ubicación: $1/bddRespaldo$fechaActual.bak"
	else
		echo "El directorio $1 no existe"
	fi

	read -n1 -s -r -p "PRESIONE [ENTER] para continuar..."
}


restaurar_respaldo () {
	echo "Listar respaldos"
	ls -1 $1/*.bak
	read -p "Elegir el respaldo a restaurar" respaldoRestaurar
	echo "\n"
	read -p "Ingrese el nombre de la base de datos destino:" bddDestino
	# Verificar si la bdd existe 
	verifyBdd=$(sudo -u postgres psql -lqt |cut -d \| -f 1 | grep -wq $bddDestino)
	if [ $? -eq 0 ];then
		echo "Restaurando en la dbb destino: $bddDestino"
	else
		sudo -u postgres psql -c "create database $bddDestino"
	fi

	if [ -f"$1/$respaldoRestaurar" ]; then
		echo "Restaurando respaldo..."
		sudo -u postgres pg_restore -Fc -d$bddDestino"$1/$respaldorestaurar"
		echo "Listar la base de datos"
		sudo -u postgres psql -c "\l"
	else
		echo "El respaldo $respaldoRestaurar no existe"
	fi
	read -n1 -s -r -p "PRESIONE [ENTER] para continuar..."

}

memoria () {
	echo "\nMemoria del servidor"
	free -m
}

uso_cpu () {
	echo -n "\nestadisticas de uso de cpu"
	vmstat 1 2
}

uso_disco () {
	echo "\nuso disco"
	df -h
}

procesos_memoria () {
	echo "\nlos procesos en memoria"
	ps -fea
}

usuarios_locales () {
	echo "\nusuario locales"
	cat /etc/passwd
}

while :
do
	#Limpiar pantalla
	clear
	#desplegar menu de opciones
	echo "_________________________________________"
	echo "PGUTIL - Programa de utilidad de Postgres"
	echo "_________________________________________"
	echo "              MENU PRINCIPAL             "
	echo "_________________________________________"
	echo "1. Instalar Postgres"
	echo "2. Desintalar Postgres"
	echo "3. Sacar un respaldo"
	echo "4. Restar respaldo"
	echo "5. ver memoria"
	echo "6. Uso CPU"
	echo "7. Disco"
	echo "8. Procesos memoria"
	echo "9. Usuarios locales"
	echo "10. Salir"

	#Leer los datos de usuario
	read -n2 -p "Ingrese una opción [1-10]:" opcion

	#validar la opción ingresada
	case $opcion in
		1) instalar_postgres
			sleep 3
			;;
		2) desinstalar_postgres
			sleep 3
			;;
		3) read -p "Directorio Backup" directorioBackup
			sacar_respaldo $directorioBackup
			sleep 3
			;;
		4) read -p "Directorio de Respaldo:" directorioRespaldos
			restaurar_respaldo $directorioRespaldos
			sleep 3
			;;

		5) memoria
			sleep 3
			;;
		6) uso_cpu
			sleep 3
			;;
		7) uso_disco
			sleep 3
			;;
		8) procesos_memoria
			sleep 3
			;;
		9) usuarios_locales
			sleep 3
			;;
		10) echo "\nSalir del programa"
			exit 0
			;;
	esac
done
