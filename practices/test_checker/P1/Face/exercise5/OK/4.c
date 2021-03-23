#include <stdio.h>
#define bbox 50
#define mbox 20
#define sbox 5
#define ind 1
void main(){
	int nagendas, r1, r2, r3, r4, r5, r6, r7, r8;
	printf("Please, Introduce the number of agendas:");
	scanf("%d", &nagendas);

	r1 = nagendas/bbox;

	r2 = nagendas-(bbox*r1);

	r3 = r2/mbox;

	r4 = r2-(mbox*r3);

	r5 = r4/sbox;

	r6 = r4-(sbox*r5);

	r7 = r6/ind;

	r8 = r6-(ind*r7);

	printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas", r1, r3, r5, r6);

	
}


