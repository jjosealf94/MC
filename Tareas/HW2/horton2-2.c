// Description : Print on stdout the given name and address using printf()

#include <stdio.h>
int main ()
{
  float lg=0.0;
  float wd=0.0;
  float area;
  printf("Enter the length in feet:\n");
  scanf("%f",&lg);
  printf("Enter the width in inches:\n");
  scanf("%f",&wd);
  lg=lg/3;
  wd=wd/36;
  area=lg*wd;
  printf("the floor area in square yards is: %.2f\n",area);
  
return 0; 
}
