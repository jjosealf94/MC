# Solución taller 2 - 3/Jun/2015

## Loteria 
```
#!/bin/bash 
#: Description : Este script revisa si mi taller será revisado 


#Print the title
echo "Taller afortunado" | figlet  

#Print the divider to match 
echo =#####################################################

#Download the file with the information and save it in new file
curl -s  https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/master/2015-V/actividades/lottery/lottery.csv > loteria.csv

#Print the current date 
head -1 loteria.csv

#Print the information for the input code "$1"
grep $1 loteria.csv 

#Remove the extra files
rm loteria.csv 

#Print the divider to match 
echo =#####################################################

```
## Expresiones regulares

Luego de realizado el formato de los datos, se encontró que el sector con el menor cambio porcentual fue **REGISTRADURIA** con un valor de *-621.*	A continuación el códido del script. 

```
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

```

##Gnuplot

Primero se realizó el formateado del archivo saturnoO.csv (puede ser encontrado en la carpeta de HandsOn 2) y luego se realizó la gráfica que evaluaba la tercera ley de kepler para los satelites de saturno.

```
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

```
![alt text](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/Taller2_kepler3.png)



