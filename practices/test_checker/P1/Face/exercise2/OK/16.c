
/* Here, you must include the required libraries */
#include <stdio.h>
void main(){
	/* Here, you must write the source code  */

	char Name[80];
	char surname1[80];
	char surname2[80];
	char NIF[10];
	int day, month, year;
	char Sex;
	
	
	
	printf("Please, introduce the next information:");
	
	printf("\nName: ");
	scanf("%s", Name);
	
	printf("First surname: ");
	scanf("%s", surname1);
	
	printf("Second surname: ");
	scanf("%s", surname2);
	
	printf("NIF: ");
	scanf("%s", NIF);
	
	printf("Birthday: ");
	
	scanf ("%d %d %d", &day, &month, &year);

	printf("Sex (F/M): ");
	
	scanf("\n%c", &Sex);
	

	printf("\nMy name is %s %s %s with NIF %s. I was born on %d/%d/%d and my sex is %c.", Name, surname1, surname2, NIF, day, month, year, Sex);
	
}
