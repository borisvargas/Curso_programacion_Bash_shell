# ! /bin/bash
# Programa para ejemplificar como se lee en un archivo
# Autor: Boris Vargas - @borisvargas96

echo "Leer en un archivo"
cat $1
echo "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

# Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacios en blanco al inicio al final se recortan
echo "\nLeer archivos línea por línea utilizando while"
while IFS= read linea
do
    echo "$linea"
done < $1