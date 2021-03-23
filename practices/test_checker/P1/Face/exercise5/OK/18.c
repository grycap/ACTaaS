
#include <stdio.h>


void main(){
	int  num_agendas, rest1, rest2, big, medium, small, ind;
	
	printf("Please, Introduce the number of agendas: ");
	scanf("%d", &num_agendas);
	
	big = num_agendas / 50;
	rest1 = num_agendas - 50 * big;
	
	medium = rest1 / 20;
	rest2 = rest1 - 20 * medium;
	
	small = rest2 / 5;
	ind = rest2 - 5 * small;
	
	printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas", big, medium, small, ind);
	
	
	
	
	
	
}
