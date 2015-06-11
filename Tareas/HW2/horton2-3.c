
// Description : This program give you the complete count

#include <stdio.h>

int main()
{
  //Set the initials variables
  float prod1=3.50;
  float prod2=5.50;
  int type;
  int num;
  float count;
  //Ask and save the information
  printf("The products are: type 1 $%.2f and type 2 $%.2f\n",prod1,prod2);
  printf("Enter the number of the type:\n");
  //Check the correct values for to save
  while(1)
    {
      scanf("%d",&type);
      if(type==1 || type==2)
	{
	  break;
	}
      printf("Enter 1 or 2:\n");
    }

  printf("Enter the quantity that you want:\n");
  while(1)
    {
      scanf("%d",&num);
      if(num>=0)
	{
	  break;
	}
      printf("Enter a number greater or equal than 0:\n");
    }
  //Take a count the value selected
  if(type==1)
    {
      count=prod1*num;
    }
  else
    {
      count=prod2*num;
    }
  //Print out the result
  printf("The complete price for the quantity entered is: $%.2f\n",count);
  return 0;
}
