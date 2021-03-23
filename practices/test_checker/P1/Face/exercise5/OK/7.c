
/* Here, you must include the required libraries */
#include <stdio.h>
void main(){
	
	int agendas, big, medium, small, individual, rest1, rest2;
	
	printf("Please, Introduce the number of agendas:");
	scanf("%d", &agendas);
	
	big = agendas / 50;
	rest1 = agendas - 50 * big;
	
	medium = rest1 / 20;
	rest2 = rest1 - 20 * medium;
	
	small = rest2 / 5;
	individual = rest2 -5 * small;
	

	printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas", big, medium, small, individual);
	
}

