
// Description : This program give you the complete count

#include <stdio.h>

int main()
{
  float prod1=3.50;
  float prod2=5.50;
  int type;
  int num;
  float count;
  printf("The products are: type 1 $%.2f and type 2 $%.2f\n",prod1,prod2);
  printf("Enter the number of the type:\n");
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
  if(type==1)
    {
      count=prod1*num;
    }
  else
    {
      count=prod2*num;
    }
  printf("The complete price for the quantity entered is: $%.2f\n",count);
  return 0;
}
