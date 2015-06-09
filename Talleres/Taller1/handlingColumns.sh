#!/bin/bash 
#: Description: Take two colums with awk and do the sum

awk -F "," '{print $1+$2}' numeros.csv > suma.dat
echo "suma.dat creado"
