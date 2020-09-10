#include <stdio.h>

int main(){

	FILE *fp;
	int miles = 0;
	int gallons = 0;
	int md, gu;

	fp = fopen("ex8_alu.txt", "r");

	fscanf(fp, "%*[^\n]\n"); /* skip the first line of the file */

	fscanf(fp, "%*d%d%d", &md, &gu);
    miles = md;
	gallons = gu;

    fscanf(fp, "%*d%d%d", &md, &gu);
	miles += md;
	gallons += gu;

	fscanf(fp, "%*d%d%d", &md, &gu);
	miles += md;
	gallons += gu;

	fscanf(fp, "%*d%d%d", &md, &gu);
	miles += md;
	gallons += gu;

	fscanf(fp, "%*d%d%d", &md, &gu);
	miles += md;
	gallons += gu;

    fclose(fp);

    fp = fopen("ex8_alu.txt", "a");
	fprintf(fp, "\nTotal Miles: %d\nAverage of gallons used: %.2f\n", miles, gallons / 5.0);

	fclose(fp);


    return 0;
}
