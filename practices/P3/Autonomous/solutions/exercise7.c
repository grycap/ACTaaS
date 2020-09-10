#include <stdio.h>

int main(){

	FILE *fp;
	int x, y;

	fp = fopen("data.txt", "r");
	fscanf(fp, "%d%d", &x, &y);
	fclose(fp);

	fp = fopen("result.txt", "w");
	if((x * y) % 2 == 0)
        fprintf(fp, "The product is even\n");
    else
        fprintf(fp, "The product is odd\n");
    fclose(fp);


    return 0;
}
