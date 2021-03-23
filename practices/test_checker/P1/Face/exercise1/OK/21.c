
#include <stdlib.h>
#include <stdio.h>

void main(){
	char name [80];
	int age;
	float weight; 
	
	printf("\n Please, entry your name : ");
	scanf("%s",name);
	
	printf("\n Please, entry your age: " );
	scanf("%d",&age);
	
	printf("\n Please, entry your weight in kilograms: ");
	scanf("%f",&weight);
	
	printf("\nMy name is %s and I am %d years old. My weight is %f kg.",name,age,weight);
	
	system ("pause");
	
}
