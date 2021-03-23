#include <stdio.h>
#include <stdlib.h>

#define PI 3.14159

int main()
{
	
	float r, a, p;
	
	printf("Please, entry the radius: ");
	scanf("%f", &r);
	
	p = 2 * PI * r;
	a = PI * r * r;
	
	printf("\nThe area is %f and the perimeter is %f", a, p);
	
	system("pause");
	
}
