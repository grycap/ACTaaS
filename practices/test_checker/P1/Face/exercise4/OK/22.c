/* Here, you must include the required libraries */
#include <stdio.h>
#include <stdlib.h>

void main(){
	float cost_price, profit, selling_price;
    int profit_margin;
	/* Here, you should write the source code of your program */
	
	printf("Please, entry the cost price in euros: ");
	scanf("%f",&cost_price);
	
	printf("Please, entry the profit margin %: ");
	scanf("%d",&profit_margin);
	
	profit = cost_price * profit_margin / 100;
	selling_price = cost_price + profit;
	
	printf("\nThe selling price is %f euros\n", selling_price);
	
	system("pause");

}
