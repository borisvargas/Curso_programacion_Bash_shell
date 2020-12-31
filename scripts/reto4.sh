# ! /bin/bash
# Programa reto 4
# Autor: Boris Vargas - @borisvargas96

opcion=0

while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menú de opciones
    echo "_________________________________________"
    echo "            MENÚ PRINCIPAL  RETO 4       "
    echo "_________________________________________"
    echo "1. Procesos Actuales"
    echo "2. Memoria Disponible"
    echo "3. Espacio en Disco"
    echo "4. Información de Red"
    echo "5. Variables de Entorno Configuradas"
    echo "6. Información Programa"
    echo "7. Backup información"
    echo "8. Salir"

    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción [1-8]:" opcion

    #Validar la opción ingresada
    case $opcion in
        1)
            echo "\nProcesos Actuales....."
            ps aux
            sleep 3
            ;;
        2) 
            echo "\nMemoria Disponible...."
            free -h
            sleep 3
            ;;
        3) 
            echo "\nEspacio en Disco..."
            df -hT
            sleep 3
            ;;
        4) 
            echo "\nInformación de Red..."
            ip a
            sleep 3
            ;;
        5) 
            echo "\nVariables de Entorno Configuradas..."
            echo "$PATH"
            sleep 3
            ;;
        6) 
            echo "\nInformación Programa..."
            dpkg --list
            sleep 3
            ;;
        7) 
            echo "\nBackup información..."
            sleep 3
            ;;
        8)  
            echo "Salir del Programa"
            exit 0
            ;;
        *)
            echo "\nOpcion no valida, ingrese una opcion del 1-8"
            sleep 3
            ;;
    esac
done 