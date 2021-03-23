
/* Here, you must include the required libraries */
#include <stdio.h>
void main(){
	/* Here, you must write the source code  */
	char name[80], surnameF[80], surnameS[80], NIF [10], sex;
	int day, month, year;
	
	printf("Please, introduce the next information:");
	printf("\nName: ");
	scanf("%s",name);
	printf("First surname: ");
	scanf("%s",surnameF);
	printf("Second surname: ");
	scanf("%s",surnameS);
	printf("NIF: ");
	scanf("%s",NIF);
	printf("Birthday: ");
	scanf("%d %d %d",&day,&month,&year);
	printf("Sex (F/M): ");
	scanf("\n%c",&sex);
	printf("\nMy name is %s %s %s with NIF %s. I was born on %d/%d/%d and my sex is %c.", name, surnameF, surnameS, NIF, day, month, year, sex);
	
}
