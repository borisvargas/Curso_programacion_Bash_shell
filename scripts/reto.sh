# ! /bin/bash
# Solicitar informacion del usuario
# Autor Boris Vargas - @borisvargas96

echo "- Favor introduzca sus datos -"
read -p "Ingresar Nombre: " nombre
read -p "Ingresar Apellido: " apellido
read -p "Ingresar Edad: " edad
read -p "Ingresar Direccion: " direccion
read -p "Ingresar Telefono: " telefono

# Validar edad
if (($edad >= 0)) && (($edad <= 120)); then
    echo "Nombre : $nombre y apellido: $apellido"
    echo "Edad: $edad"
    echo "Direccion: $direccion"
    echo "Telefono: $telefono"
else
    echo "Edad: $edad no valido"
    read -p "ingrese edad entre 0 a 120 anhos: " edad
fi
