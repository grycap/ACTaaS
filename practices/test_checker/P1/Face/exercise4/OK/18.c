
#include <stdio.h>

void main(){
	float profit, cost_price, selling_price;
	int profit_margin;
	
	printf("Please, Introduce the cost price in euros: ");
	scanf("%f",&cost_price);
	
	printf("Please, Introduce profit margin ('%%'): ");
	scanf("%int",&profit_margin);
	
	printf ("\n");
	
	profit = cost_price * profit_margin/100;
	selling_price = cost_price + profit;
	
	
	printf("The selling price is %f euros", selling_price);
}
