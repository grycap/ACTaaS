#include <stdio.h>

int main(){
	char name[80], surname1[80], surname2[80], NIF[12], sex;
	int day, month, year;
	
	
	printf("Please, introduce the next information:\n");
	printf("Name: ");
	scanf("%s", name);
				
	printf("First surname: ");		
	scanf("%s", surname1);
	
	printf("Second surname: ");
	scanf("%s", surname2);
		
	printf("NIF: ");
	scanf("%s", NIF);
			
	printf("Birthday: ");
	scanf("%d %d %d", &day, &month, &year);
			
	printf("Sex (F/M): ");
	scanf("\n%c", &sex);

	printf("\n\nMy name is %s %s %s with NIF %s. I was born on %d/%d/%d and my sex is %c.\n", name, surname1, surname2, NIF, day, month, year, sex);
	return 0;	
	
}
