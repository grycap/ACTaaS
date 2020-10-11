#include <stdio.h>

int main()
{
    char ch;

    printf("Enter a character: ");
    scanf("%c", &ch);

    printf("Next character to \'%c\' is \'%c\'.\n", ch, ch + 1);

    return 0;
}
