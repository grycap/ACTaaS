#include <stdio.h>

int main(){

	int n, i;

	do
    {
        printf("Enter an integer number (n > 0): ");
        scanf("%d", &n);
        if (n <0) printf("Incorrect value...try again !\n");
    } while(n < 1);

    for(i = 1; i <= n; i++)
        if(!(n % i))
          printf("%d\n", i);

    return 0;
}
