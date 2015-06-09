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
