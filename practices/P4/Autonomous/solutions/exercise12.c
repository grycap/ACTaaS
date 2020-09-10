#include <stdio.h>

int main(){

	FILE *fp;
	char player[81];
	int a, b, c, total_score = 1, i = 0;

	if((fp = fopen("bowling_team.txt", "r")) == NULL)
    {
        printf("Can't open bowling_team.txt\n");
        return 0;
    }

    while((fscanf(fp, "%s %d %d %d", player, &a, &b, &c)) == 4)
    {
        i++;
        printf("\n%s %8d %8d %8d\tTotal score: %d\n", player, a, b, c, (a + b + c));
        total_score += a + b + c;
    }

    printf("\nAverage score: %.2f\n", total_score / (float) i);

    fclose(fp);
    return 0;
}
