
#include <stdio.h>

void main(){
	int age;
	float weight;
	char name[80];
	
	printf("Please, entry your name: ");
	scanf("%s", name);
	
	printf("Please, entry your age: ");
	scanf("%d", &age);
	
	printf("Please, entry your weight in kilograms: ");
	scanf("%f", &weight);
	
	printf("\n\nMy name is %s and I am %d years old. My weight is %f kg.", name, age, weight);
}
