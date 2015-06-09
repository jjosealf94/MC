# Solucion Taller 1

##Primer punto: Electromagnétismo 

El electromagnetismo es una rama de la física que estudia y unifica los fenómenos eléctricos y magnéticos en una sola teoría, cuyos fundamentos fueron sentados por Michael Faraday y formulados por primera vez de modo completo por James Clerk Maxwell. La formulación consiste en cuatro ecuaciones diferenciales vectoriales que relacionan el campo eléctrico, el campo magnético y sus respectivas fuentes materiales (corriente eléctrica, polarización eléctrica y polarización magnética), conocidas como ecuaciones de Maxwell.

El electromagnetismo es una teoría de campos; es decir, las explicaciones y predicciones que provee se basan en magnitudes físicas vectoriales o tensoriales dependientes de la posición en el espacio y del tiempo. El electromagnetismo describe los fenómenos físicos macroscópicos en los cuales intervienen cargas eléctricas en reposo y en movimiento, usando para ello campos eléctricos y magnéticos y sus efectos sobre las sustancias sólidas, líquidas y gaseosas. Por ser una teoría macroscópica, es decir, aplicable sólo a un número muy grande de partículas y a distancias grandes respecto de las dimensiones de éstas, el electromagnetismo no describe los fenómenos atómicos y moleculares, para los que es necesario usar la mecánica cuántica.

El electromagnetismo es considerado como una de las cuatro fuerzas fundamentales del universo actualmente conocido.

## Historia

Desde la antigua Grecia se conocían los fenómenos magnéticos y eléctricos pero no es hasta inicios del siglo XVII donde se comienza a realizar experimentos y a llegar a conclusiones científicas de estos fenómenos. Durante estos dos siglos, XVII y XVIII, grandes hombres de ciencia como:

+ William Gilbert, 
+ Otto von Guericke,
+ Stephen Gray,
+ Benjamin Franklin,
+ Alessandro Volta. 

Entre otros estuvieron investigando estos dos fenómenos de manera separada y llegando a conclusiones coherentes con sus experimentos.

A principios del siglo XIX Hans Christian Ørsted encontró evidencia empírica de que los fenómenos magnéticos y eléctricos estaban relacionados. De ahí es que los trabajos de físicos como:

+ André-Marie Ampère,
+ William Sturgeon,
+ Joseph Henry,
+ Georg Simon Ohm,
+ Michael Faraday.

En ese siglo, son unificados por James Clerk Maxwell en 1861 con un conjunto de ecuaciones que describían ambos fenómenos como uno solo, como un fenómeno electromagnético.

```
Las ahora llamadas ecuaciones de Maxwell demostraban que los campos eléctricos y magnéticos
eran manifestaciones de un solo campo electromagnético.
```
Además describía la naturaleza ondulatoria de la luz, mostrándola como una onda electromagnética. Con una sola teoría consistente que describía estos dos fenómenos antes separados, los físicos pudieron realizar varios experimentos prodigiosos e inventos muy útiles como la bombilla eléctrica por Thomas Alva Edison o el generador de corriente alterna por Nikola Tesla. El éxito predicitivo de la teoría de Maxwell y la búsqueda de una interpretación coherente de sus implicaciones, fue lo que llevó a Albert Einstein a formular su teoría de la relatividad que se apoyaba en algunos resultados previos de Hendrik Antoon Lorentz y Henri Poincaré.

En la primera mitad del siglo XX, con el advenimiento de la mecánica cuántica, el electromagnetismo tenía que mejorar su formulación con el objetivo de que fuera coherente con la nueva teoría. Esto se logró en la década de 1940 cuando se completó una teoría cuántica electromagnética o mejor conocida como electrodinámica cuántica.

## Electrostática y Magnetostática

La electrostática y magnetostática determinan el comportamiento de cargas y corrientes estáticas, algunas de sus formulas son:

1. Fuerza de Coulomb 
   
    `F=KQq/r^2`
 
2. Fuerza de Lorentz

    `F=q(vxB+E)`

[Referencia](https://es.wikipedia.org/wiki/Electromagnetismo#Electrost.C3.A1tica)

## Segundo punto: Numeros y cuadrados
```
#!/bin/bash
#: Description: print the first 1000 numbers and theirs squares
for i in {1..1000}
do
ii=$((i**2))
echo "$i, $ii">>numeros.csv
done
```

## Tercer punto: Suma de columnas
      
```
#!/bin/bash 
#: Description: Take two colums with awk and do the sum

awk -F "," '{print $1+$2}' numeros.csv > suma.dat
```

## Cuarto punto: Lectura de números
```
#!/bin/bash
#: Description : Read two numbers and return the sum

echo "Please enter two numbers:"
read a b 
sum=$((a+b))
printf "The sum is %d\n" "$sum"
```
## Quinto punto: Reloj 
```
#!/bin/bash
#: Description : give you the time using date

while (true)
do
    echo "The time is:" | figlet
    date |figlet
    sleep 1
    clear
done
```
##Sexto punto: Descargando 10 comics
```
#!/bin/bash 
#: Description : This script download the first 10 comics on http://xkcd.com

mkdir comics
cd comics
for((n=1;n<=10;n++))
do 
  direction=$(curl http://xkcd.com/$n/ -s | grep "Image URL" |sed 's/.*: //g')
  echo "Descargando $direction"
  wget -q $direction
done
```

##Septimo punto: Jugando en sdf.org
```
ssh jose94@sdf.org
password: *******
```
##Octavo punto: Formatting a csv file
```
#!/bin/bash
#: Description: csv formatted in tsv

wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/hyg.csv

head -10 hyg.csv 
sed 's/,/\t/g' hyg.csv > hyg.tsv
head -10 hyg.tsv
```
## Noveno punto: manchas solares
```
#!/bin/bash
#: Description : This script does different task about sunspot

echo "Download the file with sunspot information"
wget -q https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionalesDatos/master/hands_on/solar/monthrg.dat

echo "Please enter your year of birth:"
read year
echo "Please enter the number of the month:"
read month

numberSunspot=$(grep "$year *$month" monthrg.dat | sed 's/^...............//g' | sed -E 's/(....) +.*/\1/g') 
echo "The sunspot mean in that month and year: $numberSunspot"

for ((yr=1900;yr<=1950;yr++))
do 
    grep $yr monthrg.dat | awk '{if ($4>=30.0) {print $1,$2}}'>>yearwith30ormore.dat
done
output=$(wc -l yearwith30ormore.dat | sed 's/ .*//g' )
echo "The number of month between 1900-1950 with 30.0 or more sunspot mean is: $output"

maxSunspot=$(awk '{print $4}' monthrg.dat  | sort | tail -1)
echo "The year(s) and month(s) with max sunspot mean is(are):"
awk -v var="$maxSunspot"  '{if (var==$4) {print $1,$2}}' monthrg.dat 

rm yearwith30ormore.dat
rm monthrg.dat
```
##Decimo punto: Forteando csv en tsv general
```
sed 's/,/\t/g' filename
```
























