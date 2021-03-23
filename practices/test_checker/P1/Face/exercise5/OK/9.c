
/* Here, you must include the required libraries */

#include<stdio.h>
#include<stdlib.h>

#define big_box 50
#define med_box 20
#define small_box 5

void main(){
	/* Here, you must write the source code  */
	
	int agendas,BIG,MEDIUM,SMALL,individual;
	
	printf("Please, Introduce the number of agendas: ");
	scanf("%d",&agendas);
	
	BIG=agendas/big_box;
	MEDIUM=(agendas%50)/med_box;
	SMALL=((agendas%50)%20)/small_box;
	individual=(((agendas%50)%20)%5);
	
	printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas",BIG,MEDIUM,SMALL,individual);
	
	system("pause");
}
