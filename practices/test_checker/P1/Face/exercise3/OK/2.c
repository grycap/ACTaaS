
/* Here, you must include the required libraries */
#include <stdio.h>
#define Pi 3.14159
void main(){
	float r, l, a; 
	
	printf("Please, entry the radio: ");
	scanf("%f",&r);

	l = 2 * Pi * r;
	a = Pi * r * r;
	
	printf("\nThe area is %f and the perimeter is %f\n", a, l); 
}
