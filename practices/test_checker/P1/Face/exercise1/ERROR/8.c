
/* Here, you must include the required libraries */
#include <stdio.h>
void main(){
	char N[30];
	int A;
	float W;
	
	printf("Please, entry yout name:");
	scanf("%s", &N);
	printf("Please, entry your age:");
	scanf("%d", &A);
	printf("Please, entry your weight in kilograms:");
	scanf("%f", &W);
	printf("\n\nMy name is %s and I am %d years old. My weight is %f kg.", N, A, W);
}
