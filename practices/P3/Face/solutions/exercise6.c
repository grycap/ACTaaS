#include <stdio.h>
int main(){

	int year;

	printf("\nEnter a year between 1500 and 2050: ");
	scanf("%d", &year);

	printf("\n\nOUTPUT\n--------------------\n");

	if(year < 1500 || year > 2050)
        printf("INPUT out of range!\n");
    else if((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
        printf("%d is a leap year.\n", year);
    else
        printf("%d is not a leap year.\n", year);

    return 0;
}
