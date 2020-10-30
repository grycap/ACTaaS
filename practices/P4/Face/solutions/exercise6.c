#include <stdio.h>

int main(){

    float begin, end, inc;

    printf("CONVERSION TABLE\n");

    do
    {
        printf("starts with the value: ");
        scanf("%f", &begin);
    } while(begin < 1);

    do
    {
        printf("...and it ends with the value: ");
        scanf("%f", &end);
    } while(end <= begin);

    printf("\n");
    do
    {
        printf("Difference required between consecutive values of the table: ");
        scanf("%f", &inc);
    } while(inc < 0);

    printf("\n\n    EUROS  |   PESETAS\n");
    printf("  ---------------------\n");

    while(begin < end)
    {
        printf("%9.2f  | %9.2f\n", begin, begin * 166.386);
        begin += inc;
    }

    return 0;
}
