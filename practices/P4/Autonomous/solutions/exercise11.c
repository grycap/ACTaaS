#include <stdio.h>

int main(){

	FILE *fp;
	char exp[81];
	double a, b, c, d, e, f;

	if((fp = fopen("experiment.txt", "r")) == NULL)
    {
        printf("Can't open experiment.txt\n");
        return 0;
    }

    while((fscanf(fp, "%s %lf %lf %lf %lf %lf %lf", exp, &a, &b, &c, &d, &e, &f)) == 7)
        printf("%s Average %.2f\n", exp, (a + b + c + d + e + f) / 6.0);

  fclose(fp);
  return 0;
}
