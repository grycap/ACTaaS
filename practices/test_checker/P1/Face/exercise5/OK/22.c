
/* Here, you must include the required libraries */
#include <stdio.h>
#include <stdlib.h>

#define big 50
#define medium 20
#define small 5
void main(){
	/* Here, you must write the source code  */
	int agendas,bigbox,mediumbox,smallbox,indage,res1,res2;
	
	printf("Please, Introduce the number of agendas: ");
	scanf("%d",&agendas);
	
	bigbox=agendas/big;
	res1=agendas%big;
	
	mediumbox=res1/medium;
	res2=res1%medium;
	
	smallbox=res2/small;
	indage=res2%small;
	
	printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas\n",bigbox,mediumbox,smallbox,indage);
	system("pause");
}
