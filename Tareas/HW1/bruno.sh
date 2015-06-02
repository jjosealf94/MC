#!/bin/bash
#: Description : Examina el csv de kleper y lo examina

## clear consola
clear
## Download the requiered files
wget -q https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/kepler.csv
## Print a title 
echo "Planetas extrasolares" | figlet

## Build a long strings for printf
divider=========================================
divider=$divider$divider$divider

## Width of divider 
totalwidth=60

## Print divider  to match 
printf "%$totalwidth.${totalwidth}s\n" "$divider"

## Print a message
total=$( wc -l kepler.csv| sed 's/ kepler.csv//g' )
## Se resta la primera linea que contiene las etiquetas de los campos
total=$(($total-1))
printf "Cantidad de planetas reportados en kepler.csv: %d\n" "$total"

## Print divider  to match 
printf "%$totalwidth.${totalwidth}s\n" "$divider"

name=$(awk -F "," '{if ($2<0.01 && $2 >0) {print $1}}' kepler.csv)
number=$(awk -F "," '{if ($2<0.01 && $2 >0) {print $1}}' kepler.csv| wc -l)

printf "The number of the planets that satisfice the condition is: %s\n" "$number"
echo "The name of the planets are:"
printf "%s\n" "$name"

## Print divider  to match 
printf "%$totalwidth.${totalwidth}s\n" "$divider"

## Take all the periods on kepler.csv
awk -F "," '{if ($6 >0 ) {print $6}}' kepler.csv > periodos.csv

## Sort the periods on kepler.csv
sort periodos.csv > ordenados.csv

## Take the lower period  
lower=$(head -1 ordenados.csv )
echo "the information of the planet with lower period is:"
## Show the information
grep $lower kepler.csv  

## remove the all the extra files
rm ordenados.csv
rm periodos.csv
rm kepler.csv
## Print divider  to match 
printf "%$totalwidth.${totalwidth}s\n" "$divider"
