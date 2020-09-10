#include <stdio.h>

int main(){

	FILE *org, *des;
	char text[81], source_file[81], destination_file[81];

	printf("\nEnter the source file name: ");
	gets(source_file);

	printf("\nEnter the destination file name: ");
	gets(destination_file);

	org = fopen(source_file, "r");
	des = fopen(destination_file, "w");

	fgets(text, 81, org);
	fprintf(des, "%s", text);
	fgets(text, 81, org);
	fprintf(des, "%s", text);
	fgets(text, 81, org);
	fprintf(des, "%s", text);

	fclose(org);
	fclose(des);

    return 0;
}
