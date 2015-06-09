#!/bin/bash
#: Description : This script do an animation with circle.sh

echo "enter the velocity:(value recomended 0.1)"
read a
w=$a
((t=0))
while (true)
do 
     clear
     echo "Animation" | figlet
     rt=$( echo "(c($w*$t))^2" | bc -l )
     sh ./circle.sh $rt
     t=$(($t+1))
     sleep 0.5
done
