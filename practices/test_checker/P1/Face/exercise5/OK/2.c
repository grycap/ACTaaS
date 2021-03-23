
/* Here, you must include the required libraries */
#include <stdio.h>
void main(){
	/* Here, you must write the source code  */
	
	int agendas , bb, mb, sb, ib;
	
	printf("Please, Introduce the number of agendas: ");
	scanf("%d", &agendas);
	
	bb = agendas/50;
	agendas = agendas%50;
	
	mb = agendas/20;
	agendas = agendas%20;
	
	sb = agendas/5;
	agendas = agendas%5;
	
	ib = agendas;
	
	printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas\n", bb, mb, sb, ib);
}
