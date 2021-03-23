#include<stdio.h>

int main(){
	/* Here, you must write the source code  */
	int agendas, bigb, mediumb, smallb, individualu;
		
    printf("Please, Introduce the number of agendas: ");
	scanf("%d", &agendas);
	
	bigb = agendas / 50;
	agendas = agendas % 50;
	
	mediumb = agendas / 20;
	agendas = agendas % 20;
	
	smallb = agendas / 5;
	agendas = agendas % 5;
	
	individualu = agendas;
	
	
	printf("%i BIG BOXES -- %i MEDIUM BOXES -- %i SMALL BOXES -- %i Individual agendas", bigb, mediumb, smallb, individualu);
}
