#include <stdio.h>
#include <math.h>

int main(){
    int n, i;
    float x, sum = 1;

    do
    {
        printf("Enter the value of x in the series (x > 0): ");
        scanf("%f", &x);
    } while(x < 1);

    do
    {
        printf("Enter the number of terms in the series : ");
        scanf("%d", &n);
    } while(n < 1);

    for (i = n - 1; i > 0; i--)
        sum = 1 + x * sum / i;

    printf("\nThe sum of the Taylor series is : %f\n", sum);
    return 0;
}
