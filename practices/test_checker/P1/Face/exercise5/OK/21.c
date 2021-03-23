#include<stdio.h>
#include<stdlib.h>

#define B 50;
#define M 20;
#define S 5;
#define I 1;

void main(){
	int Bb, Sb, Mb, Ib, agendas; 
	
	printf("Please, Introduce the number of agendas: ");
	scanf("%d",&agendas);
	
	Bb= agendas/B;
	agendas= agendas%B;
	
	Mb = agendas/M;
	agendas= agendas%M;
	
	Sb = agendas/S;
	agendas= agendas%S;
	
	Ib = agendas;
		
	printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas",Bb,Mb,Sb,Ib);
	
   system("pause");	
}
