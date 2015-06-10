// Description : Print on stdout the given name and address using one printf()

#include <stdio.h>
int main ()
{
  char name[21]="";
  char address[41]="";  
  printf("Enter your name(máx 20 character)\n");
  fgets(name,20,stdin);
  printf("Enter your address(máx 40 character)\n");
  fgets(address,40,stdin);
  printf("Your name is: %sand your address is: %s\n",name,address);
  
return 0; 
}
