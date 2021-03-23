#include <stdio.h>
#define PI 3.14159
int main() {
    float a, p, r;
    printf("Enter the radio: ");
    scanf("%f", &r);  
 
    p = 2 * PI * r;

    a = PI * r * r;

    printf("The area is %f and the perimeter is %f", a, p);
    
}
