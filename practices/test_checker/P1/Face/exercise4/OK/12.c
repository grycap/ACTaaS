/* Here, you should entry the required libraries */
#include <stdio.h>

void main(){
	float P, C, S;
	int M;
	
	printf("Please, Introduce the cost price in euros:");
	
	scanf("%f", &C);
	
	printf("Please, Introduce profit margin ('%%'):");
	
	scanf("%d", &M);
	
	P = C * (M/100.0);
	S = C + P;
	
	printf("\nThe selling price is %f euros\n ",S);
}
