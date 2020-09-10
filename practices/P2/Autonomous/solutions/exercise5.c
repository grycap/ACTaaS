#include <stdio.h>

int main(){

	FILE *fp;
	char line[81];

	fp = fopen("text.dat", "r");

	fgets(line, 81, fp);
	printf("%s", line);

    fgets(line, 81, fp);
	printf("%s", line);

    fgets(line, 81, fp);
	printf("%s\n", line);

	fclose(fp);

    return 0;
}
