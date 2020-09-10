#include <stdio.h>
#define BASE_PRICE 120000.0
#define INC 10.0

int main(){

    char res;
    float final_price;

    final_price = BASE_PRICE;

    printf("ATTENTION\n");
    printf("----------------------------------------------\n");
    printf("The base price of these flats is %.1f Euros.\n", BASE_PRICE);
    printf("Two features may be added. For each one that you choice,\n");
    printf("the final price is incremented in %.1f of the base price.\n", INC);
    printf("\nEnter y/n if you accept or not each one of the following features:\n");
    printf("-------------------------------------------------------------------\n");
    printf("a. Is the flat in the third floor or higher? (y/n).\n");
    scanf("\n%c", &res);
    if(res == 'y' || res == 'Y')
      final_price += BASE_PRICE * (INC / 100);
    printf("b. Has the flat in outward-facing? (y/n).\n");
    scanf("\n%c", &res);
    if(res == 'y'|| res == 'Y')
        final_price += BASE_PRICE * (INC / 100);
    printf("\nOUTPUT\n");
    printf("-------------------------------\n");
    printf("The final price of your flat is %.1f Euros\n", final_price);

    return 0;
}
