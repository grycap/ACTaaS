
/* Here, you must include the required libraries */
#include<stdio.h>
#include<stdlib.h>
void main(){
	char name [80], first_surname [80], second_surname [80], sex, NIF [10];
	int day, month, year;
	
	printf("Please, introduce the next information:\n ");
	
	printf("Name: ");
	scanf("%s", name);
	
	printf("First surname: ");
	scanf("%s", first_surname);
	
	printf("Second surname: ");
	scanf("%s",second_surname);
	
	printf("NIF: ");
	scanf("%s", NIF);
	
	printf("\nBirthday: ");
	scanf("%d %d %d", &day, &month, &year);
	
	printf("Sex (F/M): ");
	scanf("\n%c",&sex);
	
	printf("\nMy name is %s %s %s with NIF %s. I was born on %d/%d/%d and my sex is %c.", name, first_surname, second_surname, NIF, day, month, year, sex);
	
	system("pause");
	
}
