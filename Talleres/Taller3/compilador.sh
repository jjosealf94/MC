#!/bin/bash 
cd ~/Documentos/c-examples/src/
ls -X > lista.txt
rm *.out 
rm c31_goto.c
rm c83_terminal_io.c
rm cA5_thread_join.c
for file in $(head -30 lista.txt)
do 
  
   gcc -o $file.out $file 
   grep -A 2 "Example" $file
   echo "Ejecutable"
   ./$file.out
   echo 
   read -p "Press any key" -n1 -s 

done
