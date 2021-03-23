
/* Here, you must include the required libraries */
#include <stdio.h>

void main(){
	int a,b,m,s,i,x,y,z;
	/* Here, you must write the source code  */
	printf("Please, Introduce the number of agendas: ");
	scanf("%d",&a);
	b = a/50;
	x = a%50;
	m = x/20;
	y = x%20;
	s = y/5;
	z = y%5;
	i = z;
	
	printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas", b, m, s, i);
}
