#include <stdio.h>
#include <math.h>

int main(){
    double a, b, c, d, x1, x2;

	printf("Please, enter constants of the quadratic equation.\n--------------------------------------------------\n");
    printf("a: ");
    scanf("%lf", &a);
    printf("b: ");
    scanf("%lf", &b);
    printf("c: ");
    scanf("%lf", &c);
    printf("\n\nOUTPUT\n-------------------------------------------------\n");

    if(a == 0)
        printf("Invalid value for constants. The program will end.\n");
    else
    {
        d = b * b - (4 * a * c);
        if(d > 0)
        {
            x1 = (-b + sqrt(d)) / (2 * a);
            x2 = (-b - sqrt(d)) / (2 * a);
            printf("X1 = %.1f\nX2 = %.1f\n", x1, x2);
        }
        else if(d < 0)
        {
            printf("X1 = %.1f + %.1f i\n", -b / (2 * a), (sqrt(-d)) / (2 * a));
            printf("X2 = %.1f - %.1f i\n", -b / (2 * a), (sqrt(-d)) / (2 * a));
        }
        else
        {
            x1 = -b / (2 * a);
            printf("x = %.1f\n", x1);
        }

    }

    return 0;
}
