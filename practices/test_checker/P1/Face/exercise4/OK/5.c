#include <stdio.h>
#include <stdlib.h>

void main(){
	float P, C, S, M;
	
	printf("Please, Introduce the cost price in euros: ");
	scanf("%f", &C);
	
	printf("Please, Introduce profit margin ('%%'): ");
	scanf("%f", &M);
	
	P = C * M/100;
	S = C + P;
	
	printf("The selling price is %f euros", S);
	system("pause");
}
