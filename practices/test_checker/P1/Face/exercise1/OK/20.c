/* Here, you must include the required libraries */
#include <stdio.h>
#include <stdlib.h>

void main(){
	/* Here, you must write the source code */

	char n[100];
	int a;
	float w;
	
	printf("Please, entry your name: ");
	scanf("%s", n);

	printf("Please, entry your age: ");
	scanf("%d", &a);

	printf("Please, entry your weight in kilograms: ");
	scanf("%f", &w);


	printf("\nMy name is %s and I am %d years old. My weight is %f kg.", n,a,w);

	
}
