#include<stdio.h>
#include<stdlib.h>
#define PI 3.14159
/* Here, you must include the required libraries */
void main(){
	/* Here, you must write the source code  */
	float r, P, A;
	
	printf("Please, give me the radius: ");
	scanf("%f", &r);
	
	P = 2 * PI * r;
	A = PI * r *r;
	
	printf("The area of the circle is %f and it's perimeter is %f", A, P);
	system("pause");
}
