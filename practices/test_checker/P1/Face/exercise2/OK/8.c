
#include<stdio.h>

int main(){
	char Name[200];
	char surname1[200];
	char surname2[200];
	char NIF[500];
	int day, month, year;
	char Sex;
	
	printf("Please, introduce the next information:");
	printf("\nName:");
	scanf("%s", Name);
	
	printf("First surname: ");
	scanf("%s", surname1);
	
	printf("Second surname: ");
	scanf("%s", surname2);
	
	printf("NIF: ");
	scanf("%s", NIF);
	
	printf("Birthday: ");
	scanf("%d %d %d", &day, &month, &year);
	
	printf("Sex (F/M): ");
	scanf("\n%c", &Sex);  
	
	printf("\n\nMy name is %s %s %s with NIF %s. I was born on %d/%d/%d and my sex is %c.", Name, surname1, surname2, NIF, day, month, year, Sex);
	
}
