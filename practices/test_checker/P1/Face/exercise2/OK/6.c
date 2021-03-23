#include <stdio.h>

void main(){
	char name[40], surname1[40], surname2[40], NIF[20], sex;
	int date1, date2, date3;
	
	printf("Name: ");
	scanf("%s", name);
	
	printf("First surname: ");
	scanf("%s", surname1);
	
	printf("Second surname: ");
	scanf("%s", surname2); 
	
	printf("NIF: ");
	scanf("%s", NIF);
	
	printf("Birthday: ");
	scanf("%d %d %d", &date1, &date2, &date3);
	
	printf("Sex (M/F): ");
	scanf("\n%c", &sex);
	
	printf("\n\nMy name is %s %s %s with NIF %s. I was born on %d/%d/%d and my sex is %c.", name, surname1, surname2, NIF, date1, date2, date3, sex);
}
