/******************* Problem definition **********************************/
/* Implement a program that it shows the message "Hello World" on screen. */
/*************************************************************************/
 
/* Here, you must include the required libraries */
#include <stdio.h>

#define PI 3.14159


void main(){
	float R, l, a;
	printf("Please, entry radius:");
	
	scanf("%f",&R);
	
	l = 2 * PI * R;
	a = PI * R * R;
	printf("\n\The area is %f and the perimeter is %f \n\ ", a, l);
}

