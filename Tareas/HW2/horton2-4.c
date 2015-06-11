
// Description : This program give you the complete count

#include <stdio.h>
int main()
{
  //Set the initials variables
  float wpay;
  float nhours;
  float hpay;
  float hmeanpay;
  int hmeanpayD;
  float hmeanpayC;
  //Ask and save the information
  printf("Enter the weekly pay in dollars:\n");
  scanf("%f",&wpay);
  printf("Enter the hours worked:\n");
  scanf("%f",&nhours);
  //do the math
  hpay=wpay/168;
  hmeanpay=nhours*hpay;
  hmeanpayD=(int)hmeanpay;
  hmeanpayC=(100*(hmeanpay-hmeanpayD));
  //print out the result
  printf("Your average hourly pay rate is %d dollars and %.0f cents.\n",hmeanpayD,hmeanpayC);
return 0;
}
