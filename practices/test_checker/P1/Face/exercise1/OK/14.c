
/* Here, you must include the required libraries */
#include <stdio.h>

void main(){
	/* Here, you must write the source code */
	char name[80];
	int age;
	float weight;
	
	printf("Please, entry your name: ");
	scanf("%s", name);
	
	printf("Please, entry your age: ");
	scanf("%d", &age);
	
	printf("Please, entry your weight in kilograms: ");
	scanf("%f", &weight);
	
	printf("\n\nMy name is %s and I am %d years old. My weight is %f kg.\n", name, age, weight);
	
}
