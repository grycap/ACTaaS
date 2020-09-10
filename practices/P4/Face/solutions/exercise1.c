#include <stdio.h>

int main(){

	int count = 0, n, sum = 0;

	printf("Enter values, 0 to finish\n");
	scanf("%d", &n);

    while(n) // n != 0
    {
        count++;
        sum += n;
        scanf("%d", &n);
    }

	if(count)
        printf("The average is %.2f\n", sum / (float) count);
    else
        printf("No values entered\n");

    return 0;
}
