
/* Here, you must include the required libraries */
#include <stdio.h>
#define big_box 50
#define medium_box 20
#define small_box 5

void main(){
	/* Here, you must write the source code  */
	int number_agendas, A, BB, MB, SB;
	
	printf("Please, Introduce the number of agendas: ");
	scanf("%d", &number_agendas);
	
	A = number_agendas;
	
	BB = A / big_box;
	A = A % big_box;
	
	MB = A / medium_box;
	A = A % medium_box;
	
	SB = A / small_box;
	A = A % small_box;
	
	printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas", BB, MB, SB, A);
		
}
