
#include <stdio.h>

void main(){
	
	char name[80], surname[80], s_surname[80], nif[80], sex[80];
	int day, month, year;
	
	printf("Please, introduce the next information:\n");
	
	printf("Name: ");
	scanf("%s", name);
	
	printf("First surname: ");
	scanf("%s", surname);
	
	printf("Second surname: ");
	scanf("%s", s_surname);
	
	printf("NIF: ");
	scanf("%s", nif);
	
	printf("Birthday:");
	scanf ("%d %d %d", &day, &month, &year);
	
	printf("Sex (F/M): ");
	scanf ("%s", &sex);
	
	printf("\n\nMy name is %s %s %s with NIF %s. I was born on %d/%d/%d and my sex is %s.\n", name, surname, s_surname, nif, day, month, year, sex);
}
