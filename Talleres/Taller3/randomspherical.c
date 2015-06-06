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

