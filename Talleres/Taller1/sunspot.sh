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
