#include <stdio.h>

int main(){

	int n;

	printf("Input: ");
	scanf("%d", &n);

	printf("Output: ");
	if(n < 1000 || n > 999999)
        printf("Value out range.\n");
    else
        printf("%d thousand %d\n", n / 1000, n % 1000);

	return 0;
}
