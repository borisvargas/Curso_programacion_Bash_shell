# !/bin/bash
# Programa para revisar los tipos de operadores
# Autor: Boris Vargas - @borisvargas96

numA=10
numB=4

echo "Operadores aritmenticos"
echo "Numeros: A=$numA y B=$numB"
echo "Sumar A + B = " $((numA + numB))
echo "Restar A - B = " $((numA - numB))
echo "Multiplicar A * B = " $((numA * numB))
echo "Dividir A / B = " $((numA / numB))
echo "Residuo A % B = " $((numA % numB))


echo -e "\nOperadores Relaciones"
echo "Numeros: A=$numA y B=$numB"
echo "A>B : $((numA > numB))"
echo "A<B : $((numA < numB))"
echo "A>=B : $((numA >= numB))"
echo "A<=B : $((numA <= numB))"

echo -e "\nOperadores Asignacion"
echo "Numeros: A=$numA y B=$numB"
echo "Sumar A += B : $((numA += numB))"
echo "Restar A -= B = $((numA -= numB))"
echo "Multiplicacion A *= B : $((numA *= numB))"
echo "Dividir A /= B : $((numA /= numB))"
echo "Residuo A %= B : $((numA %= numB))"




