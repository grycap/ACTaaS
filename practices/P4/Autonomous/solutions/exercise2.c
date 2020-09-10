#include <stdio.h>

int main(){

	int min, max, i;

	do
    {
        printf("Enter two integers (min and max values): ");
        scanf("%d %d", &min, &max);
    } while(min >= max);

    printf("\n%4s%16s%14s\n", "N", "Square", "Cube");
    for(i = min; i <= max; i++)
        printf("%4d%16d%14d\n", i, i * i, i * i * i);

    return 0;
}

