#include <stdio.h>

int main(){

	int age;
	char sex;

	do
    {
        printf("Enter your age (1 - 18): ");
        scanf("%d", &age);
        if(age < 1 || age > 18)
            printf("Incorrect age... try again!\n");
    } while(age < 1 || age > 18);

    do
    {
        printf("Enter your sex(M/F): ");
        scanf("\n%c", &sex);

        if(sex != 'm' && sex != 'M' && sex != 'f' && sex != 'F')
            printf("Incorrect sex... try again!\n");
    } while (sex != 'm' && sex != 'M' && sex != 'f' && sex != 'F');

	printf("\n\nThe information has been entered successfully!!!");

    return 0;
}
