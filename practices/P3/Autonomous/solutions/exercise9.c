#include <stdio.h>

int main(){

	FILE *fp;
	float d, vt1, vt2, tt1, tt2, dt1, dt2;

	fp = fopen("train.txt", "r");
	fscanf(fp, "%f %f %f %f %f", &d, &vt1, &vt2, &tt1, &tt2);
	fclose(fp);

	dt1 = vt1 * tt1;
	dt2 = vt2 * tt2;

	if((dt1 + dt2) < d)
        printf("Trains cannot crash");
    else
        printf("Trains would crash");

	return 0;
}
