
#include <stdio.h>
#include <stdlib.h>

void main(){
	
	char name[80];
	int age;
	float weight;
	
	printf("Please, entry your name:");
	scanf("%s",name);
	
	printf("Please, entry your age:");
	scanf("%int",&age);
	
	printf("Please, entry your weight:");
	scanf("%f",&weight);
	
	printf("\n \nMy name is %s and im %i years old. My weight is %f kg.",name,age,weight);

	system("pause");



}
