
/* Here, you must include the required libraries */
#include <stdio.h>

void main(){
	/* Here, you must write the source code  */
	int Agendas, Big_boxes, Medium_boxes, Small_boxes, Individualagendas, restoB, numB, restoM, numM, restoS, numS;
	
	printf("Please, Introduce the number of agendas:");
	scanf("%d", &Agendas);
	
	Big_boxes=50;
	numB= Agendas/Big_boxes;
	restoB=Agendas%Big_boxes;
	
	Medium_boxes=20;
	numM=restoB/Medium_boxes;
	restoM=restoB%Medium_boxes;
	
	Small_boxes=5;
	numS=restoM/Small_boxes;
	restoS=restoM%Small_boxes;
	
	printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas.", numB, numM, numS, restoS);
	
}
