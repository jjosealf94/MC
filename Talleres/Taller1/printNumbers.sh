#!/bin/bash
#: Description : Print 1000 numbers and theirs square

for i in {1..1000}
do
ii=$((i**2))
echo "$i,$ii">>numeros.csv
done
echo "numeros.csv creado"
