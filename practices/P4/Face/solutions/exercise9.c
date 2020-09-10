#include <stdio.h>
#define YES 1
#define NO 0

int main(){

	int n, i = 2, prime = YES;

	do
    {
        printf("Enter an integer (n > 0): ");
        scanf("%d", &n);
    } while(n < 1);

	while(prime == YES && i < n)
    {
        if(n % i == 0)
            prime = NO;
        i++;
    }

    if(prime == YES)
        printf("The number is prime.\n");
    else
        printf("The number isn't prime.\n");

    return 0;
}
