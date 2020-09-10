#include <stdio.h>

int main(){

	FILE *fp;
	char brand1[81], brand2[81];
	float fuel1, fuel2, liter_cost1, liter_cost2, distance, car1, car2;

	fp = fopen("info.txt", "r");
    fscanf(fp,  "%[^\n] %f %f %[^\n] %f %f", brand1, &fuel1, &liter_cost1, brand2, &fuel2, &liter_cost2);
	fclose(fp);

	printf("Distance (km): ");
	scanf("%f", &distance);

	car1 = fuel1 * (distance / 100) * liter_cost1;
	car2 = fuel2 * (distance / 100) * liter_cost2;

	fp = fopen("info.txt", "w");

	if(car1 > car2)
	{
	    fprintf(fp, "%s\n%.2f\n%.2f\n", brand1, fuel1, liter_cost1);
	    fprintf(fp, "%s\n%.2f\n%.2f\n", brand2, fuel2, liter_cost2);
	}
	else
    {
        fprintf(fp, "%s\n%.2f\n%.2f\n", brand2, fuel2, liter_cost2);
        fprintf(fp, "%s\n%.2f\n%.2f\n", brand1, fuel1, liter_cost1);
    }

    fclose(fp);


    return 0;
}
