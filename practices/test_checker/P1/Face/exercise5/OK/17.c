
#include <stdio.h>

void main(){
	
	int n_ag, bigb, medb, smallb, indv;
	
	printf("Please, Introduce the number of agendas: ");
	scanf("%d", &n_ag);
	\
	/* Acuerdate de poner el & en ciertos casos */
	
	bigb = n_ag / 50;
	
	medb = (n_ag-bigb*50)/20;
	
	smallb = (n_ag-bigb*50-medb*20)/5;
	
	indv = n_ag-bigb*50-medb*20-smallb*5;
	
	
	printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas\n", bigb, medb, smallb, indv);

}

