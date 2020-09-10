#include <stdio.h>

int main(){

	FILE *fp;
	char name[26], ssn[12];
	float hourly_rate, hours_worked;
	fp = fopen("employee.txt", "r");

	printf("\n%13s%13s%16s\n\n", "S.S.N", "Name", "Gross pay");
    fscanf(fp, "%*[^\n]\n"); /* skip the first line of the file */

    fscanf(fp, "%s%s%f%f", name, ssn, &hourly_rate, &hours_worked);
    printf("%19s%13s%10.2f\n\n", ssn, name, hourly_rate * hours_worked);

    fscanf(fp, "%s%s%f%f", name, ssn, &hourly_rate, &hours_worked);
    printf("%19s%13s%10.2f\n\n", ssn, name, hourly_rate * hours_worked);

    fscanf(fp, "%s%s%f%f", name, ssn, &hourly_rate, &hours_worked);
    printf("%19s%11s%12.2f\n\n", ssn, name, hourly_rate * hours_worked);

    fscanf(fp, "%s%s%f%f", name, ssn, &hourly_rate, &hours_worked);
    printf("%19s%11s%12.2f\n\n", ssn, name, hourly_rate * hours_worked);
	fclose(fp);

    return 0;
}
