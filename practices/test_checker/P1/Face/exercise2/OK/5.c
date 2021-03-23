#include <stdio.h>
#include <stdlib.h>

void main(){
	char Name[50];
	char FS [50];
	char SS [50];
	char NIF [9];
	char sex;
	int d, m, y;
	
	printf ("Please, introduce the next information:");
	
	printf ("\nName: ");
	scanf ("%s", Name);
	
	printf ("First surname: ");
	scanf ("%s", FS);
	
	printf("Second surname: ");
	scanf("%s", SS);
	
	printf("NIF: ");
	scanf("%s", NIF);
	
	printf("Birthday: ");
	scanf("%d %d %d", &d, &m, &y);
	
	printf("Sex (M/F): ");
	scanf("\n%c", &sex);
	
	printf("\nMy name is %s %s %s with NIF %s. I was born on %d/%d/%d and my sex is %c.", Name, FS, SS, NIF, d, m, y, sex);
	
	system("pause");
}
