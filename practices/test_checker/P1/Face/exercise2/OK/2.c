/* Here, you must include the required libraries */
#include <stdio.h>
void main(){
	/* Here, you must write the source code  */
	char name[100], surname1[100], surname2[100], nif[50], sex;
	int day, month, year;
	
	printf("Please, introduce the next information:\n");
	
	printf("Name: " );
	scanf("%s", name);
	
	printf("First surname: " );
	scanf("%s", surname1);
	
	printf("Second surname: " );
	scanf("%s", surname2);
	
	printf("NIF: " );
	scanf("%s", nif);
	
	printf("Birthday: " );
	scanf("%d %d %d", &day, &month, &year);
	
	printf("Sex (F/M): ");
	scanf("\n%c", &sex);
	
	printf("\n\nMy name is %s %s %s with NIF %s. I was born on %d/%d/%d and my sex is %c.\n", name, surname1, surname2, nif, day, month, year, sex);
	
}
