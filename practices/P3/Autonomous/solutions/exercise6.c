#include <stdio.h>

int main(){

	float years, interest_rate;

	printf("Enter the time that funds are left on deposit (years): ");
	scanf("%f", &years);

	if(years >= 5)
        interest_rate = 0.095;
    else if(years >= 4)
        interest_rate = 0.09;
    else if(years >= 3)
        interest_rate = 0.085;
    else if(years >= 2)
        interest_rate = 0.075;
    else if(years >= 1)
        interest_rate = 0.065;
    else if(years > 0)
        interest_rate = 0.058;
    else
    {
        printf("Out of range values. The program will end.\n");
        return 0;
    }


    printf("Interest rate for %.2f years is %.3f\n", years, interest_rate);
	return 0;
}
