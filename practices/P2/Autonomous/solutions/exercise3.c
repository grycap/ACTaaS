#include <stdio.h>

int main(){

	char line1[81], line2[81], line3[81];
	FILE *fp;

	fp = fopen("text.dat", "w");

	printf("\nEnter a text line: ");
	gets(line1);
	fprintf(fp, "%s\n", line1);

	printf("\nEnter a text line: ");
	gets(line2);
	fprintf(fp, "%s\n", line2);
	printf("\nEnter a text line: ");
	gets(line3);
	fprintf(fp, "%s\n", line3);

	fclose(fp);

    return 0;
}
