#include <stdio.h>
int main() {
    float c, p, profit, selling_price;
    printf("Please, Introduce the cost price in euros: ");
    scanf("%f",&c);
	printf("Please, Introduce the profit margin  in euros: ");
	scanf("%f",&p); 
	profit = c * (p / 100);

	selling_price = c + profit;

    printf("The selling price is %f", selling_price);
    
    return 0;
}

