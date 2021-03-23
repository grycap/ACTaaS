/* Here, you must include the required libraries */
#include<stdio.h>

void main(){
	/* Here, you must write the source code  */
	float cost_price, profit, selling_price;
	int profit_margin;

	printf("Please, give me the cost price: ");
	scanf("%f", &cost_price);
	
	printf("Please give me the profit margin: ");
	scanf("%d", &profit_margin);
	
	profit = cost_price * (profit_margin / 100.0);
	
	selling_price = cost_price + profit;
	
	printf("The selling price is: %f.", selling_price);
}
