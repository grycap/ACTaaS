#include <stdio.h>


int main(){

	char city_1[13], city_2[13], city_3[13];
	float rain_1, rain_2, rain_3, sum1, sum2, sum3;
	FILE *fin, *fout;

	fin = fopen("rainfall.txt", "r");
	fout = fopen("summary.txt", "w");

	fscanf(fin, "%s%f%f%f", city_1, &rain_1, &rain_2, &rain_3);
	sum1 = rain_1 + rain_2 + rain_3;
	fscanf(fin, "%s%f%f%f", city_2, &rain_1, &rain_2, &rain_3);
	sum2 = rain_1 + rain_2 + rain_3;
	fscanf(fin, "%s%f%f%f", city_3, &rain_1, &rain_2, &rain_3);
	sum3 = rain_1 + rain_2 + rain_3;

	fprintf(fout, "%13s%13s%16s\n-----------------------------------------\n", city_1, city_2, city_3);
    fprintf(fout, "%13.2f %11.2f %15.2f\n", sum1, sum2, sum3);
	fclose(fin);
	fclose(fout);

	return 0;
}
