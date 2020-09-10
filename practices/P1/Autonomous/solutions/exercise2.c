#include <stdio.h>

int main()
{
    char lowercase, uppercase;

    printf("Enter a lowercase character: ");
    fflush(stdin);
    scanf("%c", &lowercase);

    if(lowercase >= 'a' && lowercase <= 'z')
    {
       uppercase = lowercase - 32;
       printf("\n%c\n", uppercase);
    }
    else
       printf("Error, enter a lowercase character.\n");

    return 0;
}
