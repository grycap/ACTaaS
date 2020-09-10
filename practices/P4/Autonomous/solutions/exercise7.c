#include <stdio.h>

int main(){

	char min, max;
	int i;

	do
    {
        printf("Enter two characters (alphabetically ordered): ");
        scanf("\n%c %c", &min, &max);
    } while(min >= max);

    printf("\n%4s%16s\n", "Character", "Decimal");
    for(i = min; i <= max; i++)
        printf("%4c%18d\n", i, i);

    return 0;
}
