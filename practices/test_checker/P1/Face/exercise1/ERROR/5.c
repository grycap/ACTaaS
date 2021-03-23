#include <stdio.h>
#include <stdlib.h>

void main(){
	char N [80];
	int A;
	float W;

	printf("Please, entry your name: ");
	scanf("%s",N);
	
	printf("Please, entry your age: ");
	scanf("%d",&A);
	
	printf("Please, entry your weight in kilograms: ");
	scanf("%f",&W);
	
	printf("\n \nMy name is %s and I am %d years old. My weight is %f kg.", N, A, W);
	system("pause");
}
