#Punto 1
```
#!/bin/bash 
cd ~/Documentos/c-examples/src/
for file in $(ls)
do 
echo "#$file" >> punto1.md 
echo "\`\`\`">> punto1.md 
less "$file" >> punto1.md 
echo "\`\`\`">>punto1.md 
done

mv punto1.md ~/Documentos/MC/Talleres/Taller3/

```

#Punto 2
```
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

```