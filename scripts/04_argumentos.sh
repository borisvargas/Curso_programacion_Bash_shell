# ! /bin/bash
# Programa para ejemplificar el paso de argumentos
# Autor: Boris Vargas - @borisvargas96

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario de $horarioCurso"
echo "El numero de paramentros enviados es: $#"
echo "Los parametros enviados son: $*"

# ./04_argumentos.sh "Programacion Bash" "18:00 a 20:00"
