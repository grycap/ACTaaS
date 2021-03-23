
#include <stdio.h>

void main(){
	int agendas, big_boxes, medium_boxes, small_boxes, individual_boxes;

	printf("Please, Introduce the number of agendas: ");
	scanf("%d", &agendas);
	
	big_boxes = agendas/50;
	agendas = agendas%50;
	
	medium_boxes = agendas/20;
	agendas = agendas%20;
	
	small_boxes = agendas/5;
	agendas = agendas%5;
	
	individual_boxes = agendas;
	
	printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas\n.", big_boxes, medium_boxes, small_boxes, individual_boxes);
	


}
