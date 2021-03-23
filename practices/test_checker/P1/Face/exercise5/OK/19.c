
/* Here, you must include the required libraries */
#include <stdio.h>
void main(){
	/* Here, you must write the source code  */
	int agendas, bboxes, mboxes, sboxes, iboxes;
	
	printf("Please, Introduce the number of agendas:");
	scanf("%d",&agendas);
	
	bboxes = agendas/50;
	mboxes = (agendas - bboxes*50)/20;
	sboxes = (agendas - bboxes*50 - mboxes*20)/5;
	iboxes = (agendas - bboxes*50 - mboxes*20 - sboxes*5);
	
	printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d -- SMALL BOXES -- %d Individual agendas",bboxes ,mboxes ,sboxes ,iboxes);
	
	
}
