/* Here, you must include the required libraries */
#include <stdio.h>

void main(){
	/* Here, you must write the source code  */
	
	float c, m, p, s;
	
	printf("Please, Introduce the cost price in euros: ");
	scanf("%f", &c);
	
	printf("Please, Introduce profit margin ('%'): ");
	scanf("%f", &m);
	
	p = c * (m/100);
	
	s = c + p;
	
	printf("The selling price is %f euros", s);
}
