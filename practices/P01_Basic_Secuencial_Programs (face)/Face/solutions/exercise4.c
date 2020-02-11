#include <stdio.h>

int main(){
	int profit_margin;
	float cost_price, profit, selling_price;
	
	printf("Please, Introduce the cost price in euros: ");
	scanf("%f", &cost_price);
	
	printf("Please, Introduce profit margin ('%%'): ");
	scanf("%d", &profit_margin);
			
	profit = cost_price * (profit_margin / 100);
	
	selling_price = cost_price + profit;
	
	printf ("\nThe selling price is %f euros\n", selling_price);
	return 0;
	
}
