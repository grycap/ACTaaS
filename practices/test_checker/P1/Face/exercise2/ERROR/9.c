
/* Here, you must include the required libraries */

#include<stdio.h>
#include<stdlib.h>

void main(){
	/* Here, you must write the source code  */
	
	char name[80],first_surname[80],second_surname[80],NIF[10],sex[2];
	int day,month,year;
	
	printf("Please, introduce the next information:");
	printf("\nName:");
	scanf("%s",&name);
	
	printf("First surname:");
	scanf("%s",&first_surname);
	
	printf("Second surname:");
	scanf("%s",&second_surname);
	
	printf("NIF:");
	scanf("%s",&NIF);
	
	printf("Birthdate:");
	scanf("%d%d%d",&day,&month,&year);
	
	printf("Sex (F/M):");
	scanf("%s",&sex);
	
	printf("\nMy name is %s %s %s with NIF %s. I was born on %d/%d/%d and my sex is %s.\n",name,first_surname,second_surname,NIF,day,month,year,sex);
	
	system("pause");	
	
}
