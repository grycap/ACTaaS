#include <stdio.h>

int main(){
	int profit_margin;
	char aux[40];
	float cost_price, profit, selling_price;
	
	FILE *F;
	
	
	F=fopen("price_margin.txt","r");
	fscanf(F,"%s", aux);
	fscanf(F,"%f", &cost_price);
	fscanf(F,"%s", aux);
	fscanf(F,"%d", &profit_margin);
	fclose(F);
					
			
	profit = cost_price * (profit_margin / 100.0);
	selling_price = cost_price + profit;
	
	F=fopen("price_margin.txt","a");		
	fprintf (F,"\nsellingprice %.2f", selling_price);
	fclose(F);
	
	return 0;
	
}
