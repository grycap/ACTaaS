
/* Here, you must include the required libraries */
#include <stdio.h>
#define PI 3.14159
void main()
{
	/* Here, you must write the source code  */
	float radio, A,P;
	
	printf("Please, entry the radio:");
	scanf("%f", &radio);
	
	P=2*PI*radio;
	A=PI*radio*radio;
	
	
	printf("The area is %f and the perimeter is %f", A,P);	
}
