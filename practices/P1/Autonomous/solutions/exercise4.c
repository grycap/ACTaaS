#include <stdio.h>
#define BUFSIZE 81

int main()
{
    char father_first_name[BUFSIZE], father_last_name_1[BUFSIZE], father_last_name_2[BUFSIZE];
    char mother_first_name[BUFSIZE], mother_last_name_1[BUFSIZE], mother_last_name_2[BUFSIZE];
    char first_name[BUFSIZE];

    printf("Father's full name\n");
    printf("First name: ");
    gets(father_first_name);
    printf("Last name 1: ");
    gets(father_last_name_1);
    printf("Last name 2: ");
    gets(father_last_name_2);
    printf("\nMother's full name\n");
    printf("First name: ");
    gets(mother_first_name);
    printf("Last name 1: ");
    gets(mother_last_name_1);
    printf("Last name 2: ");
    gets(mother_last_name_2);
    printf("Son/Daughter's First name\n");
    printf("First name: ");
    gets(first_name);

    printf("\n\n\nSon/Daughter's Full name: %s %s %s\n", first_name, father_last_name_1, mother_last_name_1);

    return 0;
}
