#include<stdio.h>
#include<stdlib.h>


int main(){
	
char name[80];
int A;
float W;

printf("Please, entry your name: ");
scanf("%s", name);


printf("Please, entry your age: ");
scanf("%d", &A);


printf("Please, entry your weight in kilograms: ");
scanf("%f", &W);

printf("My name is %s and I am %d years old. My weight is %f kg", name, A, W);

system("pause");

}
