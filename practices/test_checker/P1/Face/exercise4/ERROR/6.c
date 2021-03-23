
#include <stdio.h>

void main(){
	float cost_price, profit_margin, profit, selling_price;
	printf("Please, Introduce the cost price in euros: ");
	scanf("%f", &cost_price);
	
	printf("Please, Introduce the profit margin ('%%'): ");
	scanf("%f", &profit_margin);
	
	profit=cost_price*(profit_margin/100);
	selling_price=cost_price+profit;
	
	printf("\nThe selling price is %f euros", selling_price);
}
