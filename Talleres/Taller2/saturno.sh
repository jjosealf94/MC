#!/bin/bash
#: Description : Formatea el archivo saturno con la información de sus satelites

#Delete the titles with the editor "pluma"
#Format the file "satelites.txt"
sed -E 's/^ +//g' saturnoO.csv > saturnoC.csv
sed -E -i 's/,//g' saturnoC.csv
sed -E -i 's/\(.*\)//g' saturnoC.csv
sed -E -i 's/([0-9])R/\1/g' saturnoC.csv
sed -E -i 's/\. //g' saturnoC.csv
sed -E -i 's/([0-9]) +([0-9])/\1\,\2/g' saturnoC.csv
sed -E -i 's/([a-z]) +([0-9])/\1\,\2/g' saturnoC.csv
sed -E -i 's/([0-9]) +([SC]) +([0-9])/\1,\3/g' saturnoC.csv
sed -i '/^$/d' saturnoC.csv

gnuplot -persist << EOF
    set term qt
    set datafile separator ","
    set xlabel "Cubo del semieje mayor"
    set ylabel "Cuadrado del periodo" 
    unset key
    set title "Tercera ley de kepler con los satelites de saturno" 
    plot "saturnoC.csv" using ((\$2)**3):((\$3)**2)

EOF

