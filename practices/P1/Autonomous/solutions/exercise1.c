#include <stdio.h>
#include <math.h>

int main()
{
    int x1, y1, x2, y2;
    double geometrical_distance;

    printf("Point A:\n");
    printf("Enter the value of the x1 coordinate: ");
    scanf("%d", &x1);
    printf("Enter the value of the y1 coordinate: ");
    scanf("%d", &y1);
    printf("Point B:\n");
    printf("Enter the value of the x2 coordinate: ");
    scanf("%d", &x2);
    printf("Enter the value of the y2 coordinate: ");
    scanf("%d", &y2);

    geometrical_distance = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));

    printf("\nThe geometric distance between A and B is %.1f\n", geometrical_distance);

    return 0;
}
