// Description : Print on stdout the given name and address using printf()

#include <stdio.h>
int main ()
{
  //Set the initials variables
  float din=0.0;  
  float dyd=0.0;
  float dft=0.0;
  //Ask and save the information
  printf("Enter a distance in inches:\n");
  scanf("%f",&din);
  //Do the math
  dyd=(din/36);
  dft=(din/12);
  //Print out the results
  printf("The distance given is: %.2f in, %.2f yd and %.2f ft\n",din,dyd,dft);
return 0; 
}
