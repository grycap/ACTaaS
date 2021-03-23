
/* Here, you must include the required libraries */
#include <stdio.h>
#define PI 3.14159

void main(){
	/* Here, you must write the source code  */
		
	float r, l, a;
	
	printf("Please, entry the radio: ");
	scanf("%f",&r);
	
	l = 2 * PI * r;
	a = PI * r * r;	
	
	printf("\nThe area is %f and the perimeter is %f\n", a, l);
	
}
