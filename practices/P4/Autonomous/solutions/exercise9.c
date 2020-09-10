#include <stdio.h>
#define SAL 10000000
#define LOS 0.04
#define MAX_YEAR 10
#define PP 0.1

int main(){

	int i;
	float expected_sales = SAL, pro_prifit = SAL * PP, total_sales = expected_sales, total_profit = pro_prifit;

	printf("\n%14s%27s%33s\n", "YEAR", "EXPECTED SALES", "PROJECTED PROFIT");
	printf("--------------------------------------------------------------------------\n");
	for(i = 1; i <= MAX_YEAR; i++)
    {
        printf("%14d %20.0f%32.0f\n", i, expected_sales, pro_prifit);
        expected_sales -= expected_sales * LOS;
        pro_prifit = expected_sales * PP;
        total_sales += expected_sales;
        total_profit += pro_prifit;
    }

   printf("--------------------------------------------------------------------------\n");
   printf("Totals: %20s %.0f%24s %.0f\n", "$", total_sales, "$", total_profit);
   return 0;
}
