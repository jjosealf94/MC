#!/bin/bash
#: Description: csv formatted in tsv

wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/hyg.csv

tail -10 hyg.csv 
sed 's/,/\t/g' hyg.csv > hyg.tsv
tail -10 hyg.tsv
rm hyg.csv
rm hyg.tsv
