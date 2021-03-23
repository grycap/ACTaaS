
/* Here, you must include the required libraries */
#include <stdio.h>

void main(){
	/* Here, you must write the source code  */
	int big_boxes, medium_boxes, small_boxes, agendas, rest;
	
	printf("Please, Introduce the number of agendas: ");
	scanf("%int", &agendas);
	
	big_boxes =  agendas/50;
	agendas = agendas%50;
	
	medium_boxes = agendas/20;
	agendas = agendas%20;
	
	small_boxes = agendas/5;
	agendas = agendas%5;
	
	rest = agendas;
	
	printf("%i BIG BOXES -- %i MEDIUM BOXES -- %i SMALL BOXES -- %i Individual agendas.", big_boxes, medium_boxes, small_boxes, rest);
}
