#include <stdio.h>

int main(){

	int id, inv_bal_m, cpr, cps, ubib;

	printf("Book identification number: ");
	scanf("%d", &id);

	while(id > -1)
    {
        do
        {
            printf("Inventory balance at the beginning of the month: ");
            scanf("%d", &inv_bal_m);
        } while(inv_bal_m < 1);

        do
        {
            printf("Number of copies received during the month: ");
            scanf("%d", &cpr);
        } while(cpr < 0);

        do
        {
            printf("Number of copies sold during the month: ");
            scanf("%d", &cps);
        } while(cps < 0 || cps > inv_bal_m + cpr);

        ubib = inv_bal_m + cpr - cps;
        printf("Book identification number: %d\nUpdated book inventory balance: %d\n", id, ubib);

        printf("Book identification number: ");
	    scanf("%d", &id);
    }

    return 0;
}
