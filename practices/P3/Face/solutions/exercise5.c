#include <stdio.h>

int main(){

	char student[81], subject[81];
	float mark;
	FILE *fp;

	printf("\nStudent's name: ");
	gets(student);

	printf("\nSubject's name: ");
	gets(subject);

	printf("\nMark obtained (0 - 10): ");
	scanf("%f", &mark);

	if(mark < 0 || mark > 10)
    {
        printf("\nMark out of range\n");
        return 0;
    }

   fp = fopen("ex5_alu.txt", "w");

    if(mark < 5)
        fprintf(fp, "%s %s %s", student, subject, "Failed");
    else if(mark < 7)
        fprintf(fp, "%s %s %s", student, subject, "Passed");
    else if(mark < 9)
        fprintf(fp, "%s %s %s", student, subject, "Notable");
    else if(mark < 10)
        fprintf(fp, "%s %s %s", student, subject, "Excellent");
    else
        fprintf(fp, "%s %s %s", student, subject, "MH");

    fclose(fp);
    return 0;
}
