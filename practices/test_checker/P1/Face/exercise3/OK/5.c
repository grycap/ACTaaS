
/* Here, you must include the required libraries */
#include <stdio.h>
#include <stdlib.h>
#define PI 3.14159

void main(){
	/* Here, you must write the source code  */
	float R, A, P;
	
	printf ("Please, entry the radio: ");
	scanf("%f", &R);
	
	A = PI * R * R;
	P = 2 * PI * R;
	
	printf ("\nThe area is %f and the perimeter is %f", A, P);
	system("pause");
	
}
