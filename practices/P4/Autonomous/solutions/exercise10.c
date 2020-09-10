#include <stdio.h>
#define YEARLY_AMOUNT 1000
#define YEARS 10
#define MIN_INTEREST 6
#define MAX_INTEREST 12

int main(){

	int i;

	for(i = MIN_INTEREST; i <= MAX_INTEREST; i++)
	   printf("Total yearly amount at %d%%: %3.0f\n", i, YEARS * (YEARLY_AMOUNT * (i / 100.0)));

    return 0;
}
