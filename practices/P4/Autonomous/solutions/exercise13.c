#include <stdio.h>
#define N 7
#define ABS(N) ((N<0)?(-N):(N))

int main() {
    int i, j;

    for (i = -N / 2; i <= N / 2; i++)
    {
      for (j = 0; j < N - ABS(i); j++)
         putchar(j < ABS(i) ? ' ' : '*');
      putchar('\n');
    }

    return 0;
}
