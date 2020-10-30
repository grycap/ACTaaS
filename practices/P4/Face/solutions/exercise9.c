#include <stdio.h>

int main(){

	int n, i, j, sum1 = 0, sum2 = 0;

	do
    {
        printf("Enter an integer (n > 0): ");
        scanf("%d", &n);
    } while(n < 1);

    for(i = 1; i <= n; i++)
        sum1 += 1 + (3 * i * i);

    for(i = 1; i <= n; i++)
        for(j = 1; j <= i; j++)
          sum2 += j;

    printf("\nSum1 = %d\nSum2 = %d\n", sum1, sum2);
	return 0;
}
