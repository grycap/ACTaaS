
#include <stdio.h>

void main(){
	int total, big, medium, small, ind;
	
	printf("Please, Introduce the number of agendas: ");
	scanf("%d", &total);
	big=total/50;
	medium= (total%50)/20;
	small= ((total%50)%20)/5;
	ind=(((total%50)%20)%5);
	
	printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas", big, medium, small, ind);
}
