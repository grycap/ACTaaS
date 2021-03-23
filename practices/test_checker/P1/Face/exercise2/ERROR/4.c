#include <stdio.h>
void main(){
	/* 
	n: name
	sn1: surname 1
	sn2: surname 2
	s: sex
	nif: NIF
	bd: birth day
	bm: birth month
	by: birth year   */

	char n [20], sn1 [20], sn2 [20], nif[20], s;
	int bd, bm, by;
	printf("Please, introduce the next information: ");
	printf("\nName: ");
		 scanf("%s", n);
	printf("\nFirst surname: ");
		 scanf("%s", sn1);
	printf("\nSecond surname: ");
		 scanf("%s", sn2);
	printf("\nNIF: ");
		 scanf("%s", nif);	
	printf("\nBirthday: ");
		 scanf("%d%d%d", &bd, &bm, &by);
	printf("\nSex: ");
		 scanf("\n%c", &s);	

	printf("\nMy name is %s %s %s", n, sn1, sn2);
	printf(" with NIF %s.", nif );
	printf(" Iwas born on  %d/%d/%d", bd, bm, by);
	printf(" and my sex is %c.", s );
}
