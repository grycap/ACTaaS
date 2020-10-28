#include <stdio.h>

void main(){

	FILE *fin, *fout;
	char filename[81], name[81], nif[10];
	int age;
	float credits;

	printf("\nEnter the name of input file: ");
	fflush(stdin);
	gets(filename);

	if((fin = fopen(filename, "r")) == NULL)
    {
        printf("\nCan't open input file %s\n", filename);
        return 1;
    }

    fgets(name, 80, fin);
    fgets(nif, 10, fin);
    fscanf(fin, "%d", &age);
    fscanf(fin, "%f", &credits);
    if(age > 18 || credits < 30.0)
    {
        fout = fopen("user.txt", "w");
        fprintf(fout, "%s", name);
        fclose(fout);
    }

    fclose(fin);    
}
