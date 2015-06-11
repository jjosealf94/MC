#!/bin/bash
#: Description : This script do an animation with circle.sh

echo "enter the velocity:(value recomended 0.1)"
read a

#angular velocity given for the user 
w=$a

#infinity loop for the animation 
((t=0))
while (true)
do 
     clear
     echo "Animation" | figlet
#determine the change in radius with a given angular velocity
     rt=$( echo "(c($w*$t))^2" | bc -l )
#use the script circle.sh to create the circle
     sh ./circle.sh $rt
     t=$(($t+1))
     sleep 0.5
done
