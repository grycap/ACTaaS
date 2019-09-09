#include <stdio.h>
#include <conio.h>

#define PI 3.1416

main()
{
    float radius,length;
    printf("Enter radius: ");
    scanf("%f",&radius);
    length = 2*PI*radius;
    printf("\nThe length of the circumference with radius %f is %f",radius, length);    
}

