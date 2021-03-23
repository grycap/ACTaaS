#include<stdio.h>
#include<stdlib.h>

void main(){
	char name[80], sur[80], surr[80], NIF[80], sex;
	int day, month, year;
	
	printf("Please, introduce the nect information: ");
	
	printf("Name: ");
	scanf("%s", name);
	
	printf("First surrname: ");
	scanf("%s", sur);
	
	printf("Second surrname: ");
	scanf("%s", surr);
	
	printf("NIF: ");
	scanf("%s", NIF);
	
	printf("Birthday: ");
	scanf("%d %d %d", &day, &month, &year);
	
	printf("Sex(M/F): ");
	scanf("\n%c", &sex);
	
	printf("\nMy name is %s %s %s with NIF %s. I was born on %d/%d/%d and my sex is %c.", name, sur, surr, NIF, day, month, year, sex);
	system("pause");
}
