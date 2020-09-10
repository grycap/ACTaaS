#include <stdio.h>

int main(){

	FILE *fp;

	fp = fopen("ex8_alu.txt", "w");

	fprintf(fp, "%10s%17s%17s\n", "Car No.", "Miles Driven", "Gallons used");
	fprintf(fp, "%5d%13d%16d\n", 54, 250, 19);
	fprintf(fp, "%5d%13d%16d\n", 62, 525, 38);
	fprintf(fp, "%5d%13d%16d\n", 71, 123, 6);
	fprintf(fp, "%5d%14d%15d\n", 85, 1322, 86);
	fprintf(fp, "%5d%13d%16d\n", 97, 235, 14);
	fclose(fp);
    return 0;
}
