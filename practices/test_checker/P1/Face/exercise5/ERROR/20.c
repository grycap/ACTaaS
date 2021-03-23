/* Here, you must include the required libraries */
#include <stdlib.h>
#define i 1
#define s 5
#define m 20
#define l 50


void main(){
	/* Here, you must write the source code  */
	int agendas, w, x , y, z, resto;
	
	printf("Please, Introduce the number of agendas: ");
	scanf("%d", &agendas);
	
	z = agendas/l;
	resto = agendas%l;
	
	y = resto/m;
	resto = resto%m;
	
	x = resto/s;
	resto = resto%s;
	
	w = resto/i;
	
	printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES --  %d Individual agendas", z, y, x, w);
}
