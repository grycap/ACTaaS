#include <stdio.h>
#define POINTS_PER_RACE 25

int main(){

    FILE *fp;
    int score_1, score_2, races, total_score;

    fp = fopen("F1.txt", "r");
    fscanf(fp, "%d %d", &score_1, &score_2);
    fclose(fp);

    printf("How many races are left ? ");
    scanf("%d", &races);

   total_score = score_2 + races * POINTS_PER_RACE;

    if(races < 1)
        printf("Number of races is incorrect.\n");
    else if(total_score >= score_1)
        printf("can win\n");
    else
        printf("cannot win\n");

    return 0;
}
