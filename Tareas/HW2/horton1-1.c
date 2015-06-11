// Description : Print on stdout the given name and address using printf()

#include <stdio.h>
int main ()
{
  // Set the initialize variables 
  char name[21]="";
  char address[41]="";  
  //Ask and save the information
  printf("Enter your name(máx 20 character)\n");
  fgets(name,20,stdin);
  printf("Enter your address(máx 40 character)\n");
  fgets(address,40,stdin);
  //Print out the information 
  printf("Your name is: %s\n",name);
  printf("Your address is: %s\n",address);
return 0; 
}
