#include <stdio.h>

int main(){

    int n, i;
    unsigned long fact = 1;

    printf("Enter an integer: ");
    scanf("%d", &n);

    // shows error if the user enters a negative integer
    if (n < 0)
        printf("There is no negative number factorial..\n");
    else
    {
        for (i = 1; i <= n; ++i)
            fact *= i;

        printf("%d! = %lu\n", n, fact);
    }

    return 0;

}
