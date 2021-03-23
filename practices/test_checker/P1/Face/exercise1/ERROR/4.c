
/* Here, you must include the required libraries */
#include <stdio.h>
void main(){
	char n [20];
	int a;
	float w;

	printf("Please, entry your name: ");
		 scanf("%s", n);
	printf("Please, entry your age: ");
		 scanf("%d", &a);	
	printf("Please, entry your weight: ");
		 scanf("%f", &w);	

	printf("\nMy name is %s and I am %d years old. My weight is %f.", n, a, w);
}
