#include <stdio.h>

int main()
{
    int magic, age;

    printf("Enter Magic Number: ");
    scanf("%d", &magic);

    age = (magic / 10) + (magic % 10);
    printf("\nYour age is %d and the secret number is %d.\n", age, magic % 10);

    return 0;
}
