#include <stdio.h>

int main()
{

	int count = 0;
	float mark, sum = 0, max = -99, min = 99;

	printf("SUBJECT MARKS------------*\n");
	printf("(enter a out of range value when you have finished entering the marks)\n");
	printf("-------------------------*\n");

    printf("Mark #%d: ", count + 1);
    scanf("%f", &mark);

	while(mark > -1 && mark < 11) // mark must be between 0 and 10
    {
        count++;
        sum += mark;
        if(mark > max)
            max = mark;
        if(mark < min)
            min = mark;
	    printf("Mark #%d: ", count + 1);
	    scanf("%f", &mark);
    }

    if(count > 1)
    {
        printf("\n\nSUMMARY*************\n");
        printf("Minimum mark:   %.1f\n", min);
        printf("Maximum mark:   %.1f\n", max);
        printf("     Average:   %.1f\n", sum / (float) count);
        printf("********************\n");
    }
    else
        printf("\n\nNo valid values entered.\n");

    return 0;
}
