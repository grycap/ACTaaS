/* Here, you should entry the required libraries */

#include <stdio.h>
#include <stdlib.h>


void main(){
	float cost_price, profit_margin, profit, selling_price;
	
	printf("Please, Introduce the cost price in euros:");
	
scanf("%f", &cost_price);



    printf("Please, Introduce profit margin ('%%'):");
    
 scanf("%f", &profit_margin);
 
    profit=cost_price*profit_margin/100.0;
    
    selling_price=cost_price+profit;
    
    printf("The selling price is %f euros:", selling_price);
    
system("pause");
   
	/* Here, you should write the source code of your program */
}
