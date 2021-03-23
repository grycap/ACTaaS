
/* Here, you must include the required libraries */

#include<stdio.h>
#include<stdlib.h>
#define PI 3.14159

void main(){
	/* Here, you must write the source code  */
	
	float r,l,A;
	
	printf("Please, entry the radio: ");
	scanf("%f",&r);
	
	l = 2*PI*r;
	A = PI*r*r;
	
	printf("\nThe area is: %f and the perimeter is:%f", A ,l);
	
	system("pause");
}
