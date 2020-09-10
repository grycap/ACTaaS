#include <stdio.h>

int main(){

	int n, aux, reverse = 0, weighing = 1, i, nd = 0;

	do
    {
        printf("Enter a natural number: ");
        scanf("%d", &n);
    } while(n < 1);

    aux = n;
    while(aux)
    {
        nd++;
        aux /= 10;
    }

    aux = n;
    for(i = 1; i < nd; i++)
        weighing *= 10;

    while(aux)
    {
        reverse += (aux % 10) * weighing;
        aux /= 10;
        weighing /= 10;
    }

    printf("The reversal of %d is %d\n", n, reverse);

    return 0;
}
