/* Here, you must write the source code  */

#include <stdio.h>
#define PI 3.14159

void main(){
	float radio, area, length;
	printf("Please, entry the radio: ");
	scanf("%f", &radio);
	
	length = 2 * PI * radio;
	area = PI * radio * radio;
	
	printf("\nThe area is %f and the perimeter is %f.\n", area, length);
}
