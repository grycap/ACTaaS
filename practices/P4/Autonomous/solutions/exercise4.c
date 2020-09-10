#include <stdio.h>

int main(){

	float fahr, cels, lower, upper, step;

	printf("Lower limit of the temperature table: ");
	scanf("%f", &lower);

	printf("Upper limit of the temperature table: ");
	scanf("%f", &upper);

	printf("Step size: ");
	scanf("%f", &step);

	printf("\n%10s%25s\n", "Celsius", "Fahrenheit");
	cels = lower;

	while(cels <= upper)
    {
        fahr = (9.0 / 5.0) * cels + 32.0;
        printf("%6.0f %25.1f\n", cels, fahr);
        cels += step;
    }


    return 0;
}
