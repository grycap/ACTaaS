/* Here, you must include the required libraries */
#include <stdio.h>
#include <stdlib.h>

void main(){
	/* Here, you must write the source code  */
	
	char name[100], fsur[100], ssur[100], nif[12], sex;
	int day, month, year;
	
	printf("Please, introduce the next information: ");
	
	printf("\nName: ");
	scanf("%s", name);
	
	printf("First surname: ");
	scanf("%s", fsur);
	
	printf("Second surname: ");
	scanf("%s", ssur);
	
	printf("NIF: ");
	scanf("%s", nif);
	
	printf("Birthday: ");
	scanf("%d %d %d", &day, &month, &year);
	
	printf("Sex (F/M): ");
	scanf("\n%c", &sex);
	
	printf("\nMy name is %s %s %s with NIF %s. I was born on %d/%d/%d and my sex is %c.", name, fsur, ssur, nif, day, month, year, sex);

}
