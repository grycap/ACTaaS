
#include <stdio.h>

void main(){
	float margin;
	float profit;
	float cost;
	float selling;
	
	printf("Please, Introduce the cost price in euros: ");
	scanf("%f", &cost);
	printf("Please, Introduce profit margin ('%%'): ");
	scanf("%f", &margin);
	
	profit=cost*(margin/100);
	selling=cost+profit;
	
	printf("\nThe selling price is %f euros", selling);
}
