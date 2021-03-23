
/* Here, you must include the required libraries */
#include <stdio.h>
void main(){
	/* Here, you must write the source code  */
	float cost_price, profit_margin, selling_price, profit;
	
	printf("Please, Introduce the cost price in euros:");
	scanf("%f", &cost_price);
	//Pide el cost price y lo guarda en cost price
	
	printf("Please, Introduce profit margin ('%%'):");
	scanf("%f", &profit_margin);
	//Pide el profit margin y lo guarda en profit margin
	
	profit=cost_price*profit_margin/100 ;
	selling_price=cost_price+profit;
	
	printf("The selling price is %f euros", selling_price);
			
}
