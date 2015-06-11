#!/bin/bash
#: Description : This script decrypts the message in bigenigna.txt

name=$1
for((i=1;i<=10;i++))
do
    sh flip.sh z v $name |sh flip.sh y h |sh flip.sh x p |sh flip.sh w u |sh flip.sh v z|sh flip.sh u s|sh flip.sh t f|sh flip.sh s g |sh flip.sh r x|sh flip.sh q e|sh flip.sh p d|sh flip.sh o r|sh flip.sh n m|sh flip.sh m b|sh flip.sh l j|sh flip.sh k a|sh flip.sh j c|sh flip.sh i y|sh flip.sh h k|sh flip.sh g t|sh flip.sh f q|sh flip.sh e o|sh flip.sh d l|sh flip.sh c w|sh flip.sh b n|sh flip.sh a i > $i.txt
name=$i.txt
done

for((i=1;i<10;i++))
do
    rm $i.txt
done

mv 10.txt unencrypted.txt
