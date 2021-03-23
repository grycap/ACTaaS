
/* Here, you must include the required libraries */
#include <stdio.h>

#define PI 3.14159

void main(){
	float r, a, l;
	
	printf("Please, entry the radio:");
	scanf("%f", &r);
	
	l = 2 * PI * r;
	
	a = PI * r * r;
	
	printf("\n");
	
	printf("The area is %f and the perimeter is %f", a, l);
	
	
}
