#define PI  3.14159
#include <stdio.h>
#include <stdlib.h>

void main(){
	float r, A, P;
	
	printf("Please, entry the radio:");
	scanf("%f", &r);
	
     A = PI * r * r;
     P = 2 * PI * r;
     
     printf("The area is %f and the perimeter is %f ",A,P);
     system("pause");
}
