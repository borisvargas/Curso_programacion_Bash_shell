# ! /bin/bash
# Programa para ejemplificar el uso de break y continue
# Author: Boris Vargas - @borisvargas96

echo "Sentencias break y continue"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        if [ $fil = "11_download.sh" ]; then
            break;
        elif [[$file == 4* ]]; then
            continue;
        else
            echo "Nombre archivo: $fil _ $nombre"
        fi
    done
done