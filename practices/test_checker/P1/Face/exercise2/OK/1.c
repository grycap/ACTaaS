#include <stdio.h>
#include <stdlib.h>

void main()
{
	char name[100], first_surname[100], second_surname[100], NIF[100], birthday[100], sex[2];
	
	printf("Please, introduce the next information:\nName: ");
	scanf("%s", name);
	
	printf("First surname: ");
	scanf("%s", first_surname);
	
	printf("Second surname: ");
	scanf("%s", second_surname);
	
	printf("NIF: ");
	scanf("%s", NIF);
	
	printf("Birthday: ");
	scanf("%s", birthday);
	
	printf("Sex (F/M): ");
	scanf("%s", sex);
	
	printf("\n\nMy name is %s %s %s with NIF %s. I was born on %s and my sex is %s.", name, first_surname, second_surname, NIF, birthday, sex);
	
	system("pause");
}
