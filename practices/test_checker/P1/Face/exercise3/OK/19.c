#include <stdio.h>
#include <stdlib.h>
#define PI 3.14159

void main(){
	
    float A;
    float P;
    float R;

    printf("Please, entry the radio:");
    scanf("%f",&R);

    A = PI * R * R;
    P = PI * 2 * R;

    printf("\nThe area is %f and the perimeter is %f",A ,P);
	
	
}
