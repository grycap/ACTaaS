#include <stdio.h>
int main(){

	FILE *fp;
	double max, min, spend_j, spend_a, spend_s;
	int month_max, month_min;

	fp = fopen("spending.txt", "r");
	fscanf(fp, "%lf%lf%lf", &spend_j, &spend_a, &spend_s);
	fclose(fp);

	if(spend_j > spend_a)
    {
        max = spend_j;
        min = spend_a;
        month_max = 7;
        month_min = 8;
    }
    else
    {
        max = spend_a;
        min = spend_j;
        month_max = 8;
        month_min = 7;
    }

    if(spend_s > max)
    {
        max = spend_s;
        month_max = 9;
    }
    else if(spend_s < min)
    {
        min = spend_s;
        month_min = 9;
    }


    fp = fopen("spending.txt", "a");

    fprintf(fp, "Month during which the maximum spending has occurred: %d\n", month_max);
    fprintf(fp, "Month during which the minimum spending has occurred: %d\n", month_min);

    fclose(fp);
	return 0;
}
