
#include <stdio.h>

#define PI 3.14159

void main(){
	float r, a, p;
	
	printf("Please, entry the radio: ");
	scanf("%f", &r);
	
	a = PI*r*r;
	
	p = 2*PI*r;
	
	printf("\nThe area is %f and the perimeter is %f", a, p);
}
