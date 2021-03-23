
#include <stdio.h>
#include <stdlib.h>

void main(){
	char name[80], surname[80], second_surname[80], nif[10], sex;
	int day, month, year;

	printf("Please, introduce the next information:\n");
	
	printf("Name: ");
	scanf("%s", name);
	
	printf("First surname: ");
	scanf("%s", surname);
	
	printf("Second surname: ");
	scanf("%s", second_surname);
	
	printf("NIF: ");
	scanf("%s", nif);
	
	printf("Birhday: ");
	scanf("%d%d%d", &day, &month, &year);
	
	printf("Sex (F/M): ");
	scanf("\n%c", &sex);
	
	printf("\n\nMy name is %s %s %s with NIF %s. I was born on %d/%d/%d and my sex is %c.", name, surname, second_surname, nif, day, month, year, sex);
	
	
}
