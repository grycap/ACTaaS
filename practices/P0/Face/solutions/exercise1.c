#include <stdio.h>

#define PI 3.14159

int main(){
	float radio, area, perimeter;
	
	printf("Please, entry the radio: ");
	scanf("%f", &radio);
	
	area      = PI*radio*radio;
	perimeter = 2*PI*radio;
	
	printf("\nThe area is %f and the perimeter is %f\n", area, perimeter);
	return 0;			
}
