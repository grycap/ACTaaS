#include <stdio.h>

void main(){
	
	float prof, costp, profm, sellp;
	
	printf("Please, Introduce the cost price in euros: ");
	scanf("%f", &costp);
	
	printf("Please, Introduce profit margin ('%%'): ");
	scanf("%f", &profm);
	
	prof=costp*profm/100;
	
	sellp=costp+prof;
	
	printf("\nThe selling price is %f\n", sellp);
}
