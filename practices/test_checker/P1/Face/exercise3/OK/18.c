
#include <stdio.h>
#define PI 3.14159

void main(){
	float r, l, a;

    printf("Please, entry the radio: ");
    scanf("%f",&r);

    l = 2 * PI * r; 
    a = PI * r * r;

    printf("\nThe area is %f and the perimeter is %f\n", a, l);
}
