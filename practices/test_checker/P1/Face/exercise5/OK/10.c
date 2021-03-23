#include <stdio.h>
#define BIGB 50
#define MEDIUMB 20
#define SMALLB 5
#define INDIVIDUALB 1;
 
void main(){
	int agendas, Bboxes, Mboxes, Sboxes, Bindividual, a, b, c;

printf("Please, Introduce the number of agendas: ");
scanf("%d", &agendas);
Bboxes = agendas/BIGB;
a =agendas%BIGB;
Mboxes = a/MEDIUMB;
b =a%MEDIUMB;
Sboxes = b/SMALLB;
c = b%SMALLB;
Bindividual = c /INDIVIDUALB;
 
 printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas", Bboxes, Mboxes, Sboxes, Bindividual);
	
}
