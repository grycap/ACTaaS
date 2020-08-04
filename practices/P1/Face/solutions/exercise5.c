#include <stdio.h>

#define BIG_BOX		50
#define MEDIUM_BOX	20
#define SMALL_BOX	 5

int main(){
	int n_agendas, n_big_boxes, n_medium_boxes, n_small_boxes, aux;
	
	printf("Please, Introduce the number of agendas: ");
	scanf("%d", &n_agendas);
	
	n_big_boxes = n_agendas / BIG_BOX;
	aux = n_agendas % BIG_BOX;
	n_medium_boxes = aux / MEDIUM_BOX;
	aux = aux % MEDIUM_BOX;
	n_small_boxes  = aux / SMALL_BOX;
	aux = aux % SMALL_BOX;
	
	printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas\n", n_big_boxes,n_medium_boxes,n_small_boxes,aux);
	return 0;
}
