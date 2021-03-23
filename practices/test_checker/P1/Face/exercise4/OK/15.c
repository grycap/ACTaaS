#include <stdio.h>

void main(){
	/* Here, you should write the source code of your program */
	float P, C, S;
	int M;
	
	printf("Please, Introduce the cost price in euros:");
	
	scanf("%f", &C);
	
	printf("Please, Introduce profit margin ('%%'):");
	
	scanf("%int", &M);
	
	P = C * M/100;
	S = C + P;
	
	printf("The selling price is %f euros",S);
}
