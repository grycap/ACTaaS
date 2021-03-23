#include<stdio.h>


#define PI  3.14159
void main(){
	float r, a, l;
	
	printf("Please, entry the radio: ");
	scanf("%f",&r);
	
	a = PI * r * r;
	l = 2 * PI * r;
	
	printf("The area is %f and the perimeter is %f", a, l);
}
