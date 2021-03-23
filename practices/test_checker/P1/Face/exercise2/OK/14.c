
/* Here, you must include the required libraries */
#include <stdio.h>

void main(){
	/* Here, you must write the source code  */
	char name[80], first_surname[80], second_surname[80], nif[80], sex;
	int day, month, year;
	
	printf("Please, introduce the next information:\n");
	printf("Name: ");
	scanf("%s", name);
	
	printf("First surname: ");
	scanf("%s", first_surname);
	
	printf("Second surname: ");
	scanf("%s", second_surname);
	
	printf("NIF: ");
	scanf("%s", nif);
	
	printf("Birthday: ");
	scanf("%d %d %d", &day, &month, &year);
	
	printf("Sex (F/M): ");
	scanf("\n%c", &sex);
	
	printf("\n\nMy name is %s %s %s with NIF %s. I was born on %d/%d/%d and my sex is %c.\n", name, first_surname, second_surname, nif, day, month, year, sex);
	
}
