
/* Here, you must include the required libraries */
#include <stdio.h>
void main()
{
	/* Here, you must write the source code */
	char Name[333];
	float Weight;
	int Age;
	
	printf("Please, entry your name:");
	scanf("%s", &Name);
	
	printf("Please, entry your age:");
	scanf("%d", &Age);
	
	printf("Please, entry your weight in kilograms:");
	scanf("%f", &Weight);
	
	
	printf("\n\nMy name is %s and I am %d years old. My weight is %f kg.", Name, Age, Weight);
}
