#include <stdio.h>

void main(){
    int x, abs;

    printf("Enter a integer number: ");
    scanf("%d", &x);

    abs = x;
    if(abs < 0)
         abs *= -1;
    printf("\n|%d| = %d\n", x, abs);
    
}
