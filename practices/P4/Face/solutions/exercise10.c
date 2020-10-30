#include <stdio.h>

int main(){

	FILE *fp;
	float min = 99, max = -99, mark, sum = 0, average;
	int count = 0, passed = 0, upper_average = 0, lower_average = 0;

	if((fp = fopen("marks.txt", "r")) == NULL)
    {
        printf("Can't open marks.txt\n");
        return 1;
    }

    while((fscanf(fp, "%f", &mark)) == 1)
    {
        count++;
        sum += mark;
        if(mark > max)
            max = mark;
        if(mark < min)
            min = mark;
        if(mark >= 5)
            passed++;
    }

    fclose(fp);
    average = sum / (double) count;

	if((fp = fopen("marks.txt", "r")) == NULL)
    {
        printf("Can't open marks.txt\n");
        return 1;
    }

    while((fscanf(fp, "%f", &mark)) == 1)
    {
        if(mark < average)
            lower_average++;
        else if(mark > average)
            upper_average++;
    }
    fclose(fp);

    printf("\n\nSUMMARY****************************************************************************************\n");
    printf("Minimum mark:   %.2f\n", min);
    printf("Maximum mark:   %.2f\n", max);
    printf("Passed:         %d\n", passed);
    printf("Average mark:   %.2f\n", average);
    printf("Number of students that have obtained a mark higher than the mark average:  %d\n", upper_average);
    printf("Number of students that have obtained a mark lower than the mark average:   %d\n", lower_average);
    printf("************************************************************************************************\n");

    return 0;
}
