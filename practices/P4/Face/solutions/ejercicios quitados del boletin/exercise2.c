#include <stdio.h>

int main(){

	int age;
	char sex;

	do
    {
        printf("Enter your age (1 - 18): ");
        scanf("%d", &age);
        if(age < 1 || age > 18)
            printf("Incorrect answer... try again!\n");
    } while(age < 1 || age > 18);

    do
    {
        printf("Enter your sex(M/F): ");
        scanf("\n%c", &sex);

        if(sex != 'm' && sex != 'M' && sex != 'f' && sex != 'F')
            printf("Incorrect answer... try again!\n");
    } while (sex != 'm' && sex != 'M' && sex != 'f' && sex != 'F');

    return 0;
}
