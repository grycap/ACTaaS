
#include <stdio.h>
#include <stdlib.h>
#define PI 3.14159

void main(){
	float r, l, A;
	
	printf("Please, entry the radio:");
	scanf("%f",&r);
	
	l = 2*PI*r;
	A = PI*r*r;
	
	printf("\nThe area is %f and the perimeter is a %f", A, l);
	system("pause");
}

