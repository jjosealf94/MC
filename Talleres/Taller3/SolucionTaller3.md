#Solucion Taller3 5-Jun-2015

Los scripts correspondientes pueden ser encontrados [aquí](https://github.com/jjosealf94/MC/tree/master/Talleres/Taller3)

##Punto 1
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

##Punto 2
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
##Punto 3
```
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

double gaussrandom();
int main (){
  double x,y,z;
  int num=5000;
  int i;
  double norm;
  for (i=0;i<num;i++){
    x=gaussrandom();
    y=gaussrandom();
    z=gaussrandom();
    norm=sqrt(x*x+y*y+z*z);
    x/=norm;
    y/=norm;
    z/=norm;
    printf("%f,%f,%f\n",x,y,z);
  }
  return 0;
}

double gaussrandom()
{
static double V1, V2, S;
static int phase = 0;
double X;

 if(phase == 0)
 {
  do {
      double U1 = (double)rand() / RAND_MAX;
      double U2 = (double)rand() / RAND_MAX;
      V1 = 2 * U1 - 1;
      V2 = 2 * U2 - 1;
      S = V1 * V1 + V2 * V2;
    } 
  while(S >= 1 || S == 0);
  X = V1 * sqrt(-2 * log(S) / S);
 } 
 else
 {
  X = V2 * sqrt(-2 * log(S) / S);
 }
phase = 1 - phase;

return X;
}

```
```
gcc randomspherical.c -lm -o randomspherical.out
./randomspherical.out > randomspherical.dat
./Graphrandomspherical.gn -persist
```