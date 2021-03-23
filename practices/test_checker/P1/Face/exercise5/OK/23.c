#include<stdio.h>
#include<stdlib.h>

#define B 50;
#define M 20;	
#define S 5;
#define I 1;
void main(){
	int big, medium, small, individual, agendas;
	
	printf("Please, entry the number of agendas: ");
	scanf("%d",&agendas);
	
	big=agendas/B;
	agendas=agendas%B;
	
	medium=agendas/M;
	agendas=agendas%M;
	
	small=agendas/S;
	agendas=agendas%S;
	
	individual=agendas;
	
	
	printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas", big, medium, small, individual);
}
