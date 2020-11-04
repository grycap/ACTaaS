#include <stdio.h>

int main(){

	int n, even_sum = 0, odd_sum = 0, i;

	do
    {
        printf("Last number to add in the sum: ");
        scanf("%d", &n);
    } while(n < 1);

    for(i = 1; i <= n; i++)
        if (i % 2 == 0)
            even_sum += i;
        else
            odd_sum +=  i;



    printf("OUTPUT****************************************\n");
    printf("Sum of odd  numbers (from 1 to %d)-->    %d\n", n, odd_sum);
    printf("Sum of even numbers (from 2 to %d)-->    %d\n", n, even_sum);
    printf("**********************************************\n");

    return 0;
}
