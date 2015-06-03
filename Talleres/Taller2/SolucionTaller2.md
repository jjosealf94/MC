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
