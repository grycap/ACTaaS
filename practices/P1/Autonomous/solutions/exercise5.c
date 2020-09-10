#include <stdio.h>

int main()
{
    int dividend, divisor, quotient, remainder;

    printf("Dividend: ");
    scanf("%d", &dividend);
    printf("Divisor: ");
    scanf("%d", &divisor);

    if(divisor)
    {
       quotient = dividend / divisor;
       remainder = dividend % divisor;
       printf("\n\nQuotient: %d\nRemainder: %d\n", quotient, remainder);
    }
    else
       printf("\n\nDivision by zero is not posible\n");

    return 0;
}
