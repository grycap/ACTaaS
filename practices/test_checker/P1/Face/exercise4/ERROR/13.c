
/* Here, you must include the required libraries */
#include <stdio.h>
void main(){
	/* Here, you must write the source code  */
	float cost_price, profit, selling_price, profit_margin;
	
	printf("Please, Introduce de cost price in euros: ");
	scanf("%f",&cost_price);
	printf("Please, profit margin ('&'): ");
	scanf("%f",&profit_margin);
	
	profit = cost_price * (profit_margin / 100);
	selling_price = cost_price + profit;

	printf("\nThe selling price is %f euros\n", selling_price);
}
