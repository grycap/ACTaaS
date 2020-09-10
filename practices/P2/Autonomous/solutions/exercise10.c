#include <stdio.h>
#define CURRENT_YEAR 2015

int main(){
    FILE *fp;
    char name[81];
    int year;

    fp = fopen("ex10.txt", "r");

    fgets(name, 23, fp);
    fscanf(fp, "%*d%*d%d", &year);

	printf("%s is %d years old.\n", name, CURRENT_YEAR - year);

	fclose(fp);
    return 0;
}
