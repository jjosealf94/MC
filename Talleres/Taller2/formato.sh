#!/bin/bash 
#: Description : Formatea el archivo del ministerio de hacienda y lo formatea con el formato correcto
#: El archivo png.dat fue descargado de https://github.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/blob/master/2015-V/actividades/talleres/Taller2/pgn.dat

sed -i -E 's/\.//g' pgn.dat
sed -i -E 's/,([0-9])/\.\1/g' pgn.dat 
sed -i -E 's/ ([0-9])/\t\1/g' pgn.dat
sed -i -E 's/([0-9]) /\1\t/g' pgn.dat
sed -i -E 's/\) \(/\t/g' pgn.dat
sed -i -E 's/\)//g' pgn.dat
sed -i -E 's/\(/-/g' pgn.dat 

sort --field-separator=$'\t' --key=4 -n pgn.dat > ordenado.dat
head -1 ordenado.dat
rm ordenado.dat
