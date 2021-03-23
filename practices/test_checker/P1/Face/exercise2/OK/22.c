
/* Here, you must include the required libraries */
#include <stdio.h>
#include <stdlib.h>
void main(){
	/* Here, you must write the source code  */
	char name[80], prisurn[80], segsurn[80], NIF[80],Sex;
	int d,m,y;
	printf("Please, introduce the next information:");
	
	printf("\nName: ");
	scanf("%s",name);
	
	printf("First surname: ");
	scanf("%s",prisurn);
	
	printf("Second surname: ");
	scanf("%s",segsurn);
	
	printf("NIF: ");
	scanf("%s",NIF);
	
	printf("Birthday: ");
	scanf("%d %d %d",&d, &m, &y);
	
	printf("Sex(F/M): ");
	scanf("\n%c",&Sex);

	printf("\nMy name is %s %s %s with NIF %s. I was born on %d/%d/%d and my sex is %c.\n",name,prisurn,segsurn,NIF,d,m,y,Sex);
	
	system("pause");
}
