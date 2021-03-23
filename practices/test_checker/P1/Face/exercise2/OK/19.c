
/* Here, you must include the required libraries */
#include <stdio.h>
void main(){
	/* Here, you must write the source code  */
	char Name [80];
	char Surname1 [80];
	char Surname2 [80];
	char NIF [50];
	char Sex;
	int day, month, year;
	
	printf("Please, introduce the next information:");
	
	printf("\nName:");
	scanf("%s", Name);
	
	printf("First surname:");
	scanf("%s", Surname1);
	
	printf("Second surname:");
	scanf("%s", Surname2);
	
	printf("NIF:");
	scanf("%s", NIF);
	
	printf("Birthday:");
	scanf("%d %d %d", &day, &month, &year);
	
	printf("Sex (F/M):");
	scanf("\n%c", &Sex);
	
	printf("\n \nMy name is %s %s %s with NIF %s. I was born on %d/%d/%d and my sex is %c.",Name,Surname1,Surname2,NIF,day,month,year,Sex);
	
}
