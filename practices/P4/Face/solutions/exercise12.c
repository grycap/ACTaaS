#include <stdio.h>

int main(){

	int n, l, i, j, k, sp;

	do
    {
        printf("Enter the number of asterisks per line: ");
        scanf("%d", &n);
    } while(n < 1);

	do
    {
        printf("Enter the number of lines: ");
        scanf("%d", &l);
    } while(l < 1);
    
    printf("\n");

    sp = l;
    for(i = 1; i <= l; i++)
    {
      for(k = 1; k <= sp; k++)
          putchar(' ');
      for(j = 1; j <= n; j++)
         putchar('*');

      putchar('\n');
      sp--;
    }

    return 0;
}
