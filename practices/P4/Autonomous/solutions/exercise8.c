#include <stdio.h>
#define PUR 28000
#define DEP 4000
#define MAX_YEAR 7

int main(){

	int i, end_year = PUR, acum_dep = 0;

	printf("\n%7s%20s%26s%32s\n", "YEAR", "DEPRECIATION", "END OF YEAR VALUE", "ACCUMULATED DEPRECIATION");
	printf("-------------------------------------------------------------------------------------\n");
	for(i = 1; i <= MAX_YEAR; i++)
    {
        end_year -= DEP;
        acum_dep += DEP;
        printf("%6d%20d%22d%25d\n", i, DEP, end_year, acum_dep);
    }


    return 0;
}
