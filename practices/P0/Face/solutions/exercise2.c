/* Here, you should entry the required libraries */ 
#include <stdio.h>

void main(){
	/* Here, you should write the source code of your program */
	float cp, p, sp;
	int m;
	
	printf("Please, Introduce the cost price in euros:" );
	scanf("%f", &cp);
	printf("Please, Introduce profit margin ('%%'):");
	scanf("%d", &m);
	
	p = cp * m/100;
	sp = cp + p;
	
	printf("\nThe selling price is %f euros\n", sp);
	}
