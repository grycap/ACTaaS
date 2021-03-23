
/* Here, you must include the required libraries */
#include <stdio.h>
void main(){
	int profit_margin;
	float cost_price, selling_price, profit;

	printf("Please, Introduce the cost price in euros:");
	scanf("%f", &cost_price);
	
	printf ("Please, Introduce profit margin ('%%'):");
	scanf("%int", &profit_margin);
	
	profit = cost_price * profit_margin/100;
	selling_price = cost_price + profit;
	
	printf("\n");
	
	printf("The selling price is %f euros", selling_price);
}
