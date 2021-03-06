#!/bin/bash
#: Description : Toma un año y muestra los eventos historicos importantes más información de estrellas que su luz llega en ese año 

## Clean the screen
clear

## Download the files requiered
wget -q https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/worldhistory.tsv 
wget -q https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/hyg.csv

## Build a divider
divider=#####################################
divider=$divider$divider

## Width of divider 
totalwidth=60

## Print divider  to match 
printf "%$totalwidth.${totalwidth}s\n" "$divider"
echo

## Build a title 
echo "StartDate" | figlet

## Print divider  to match 
printf "%$totalwidth.${totalwidth}s\n" "$divider"
echo

## Read input date and set the relative variable 
echo $1 | figlet 
idate=$1
dateA=$((2015-$idate))
dateB=$((2016-$idate))

##Formatted the historic information
grep $idate worldhistory.tsv | sed 's/^.....//g'  
echo

## Print divider  to match 
printf "%$totalwidth.${totalwidth}s\n" "$divider"

##Print a message 
echo "LOOK AT THE FOLLOWING STARS:"

##Formatted the star information
sed -i '1,32d' hyg.csv 
awk -F "," '{if('$dateA' <= $10 && '$dateB' > $10 ) {print $8 "\t" $9 "\t" $2}}' hyg.csv > mostrar.csv

##Print the result
echo "RA/°             DEC/°         HIP No."
head -5 mostrar.csv

## Print divider  to match 
printf "%$totalwidth.${totalwidth}s\n" "$divider"

## remove the extra files
rm mostrar.csv 
rm worldhistory.tsv
rm hyg.csv
