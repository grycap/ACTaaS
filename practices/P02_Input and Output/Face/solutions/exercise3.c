#include <stdio.h>
#include <stdlib.h>

#define psausage  1.10
#define ptuna     1.40
#define pwater    0.50
#define pcocacola 0.75
#define pojuice   0.70

int main(){
	int sausages, tunas, waters, cocacolas, ojuices;
	float bill, payment;
	

	
	printf("Sandwiches of sausages: ");
	scanf("%d", &sausages);
	
	printf("Sandwiches of tune: ");
	scanf("%d", &tunas);
	
	
	printf("Bottels of water: ");
	scanf("%d", &waters);
		
	printf("Bottels of cocacola: ");
	scanf("%d", &cocacolas);	
	
	printf("Bottels of orange juice: ");
	scanf("%d", &ojuices);
	
	bill = sausages*psausage + tunas*ptuna + waters*pwater + cocacolas*pcocacola + ojuices*pojuice;
	printf ("\n\nyour bill is %.2f ", bill);	
	printf("\nPlease, give me your payment: ");
	scanf("%f", &payment);
	
	
	system("cls");
	
	
	printf("%2d sandwiches of sausage at  %5.2f euros are %6.2f euros", sausages, psausage, sausages*psausage);
	printf("\n%2d sandwiches of sausage at  %5.2f euros are %6.2f euros", tunas, ptuna, tunas*ptuna);
	printf("\n%2d sandwiches of sausage at  %5.2f euros are %6.2f euros", waters, pwater, waters*pwater);
	printf("\n%2d sandwiches of sausage at  %5.2f euros are %6.2f euros", cocacolas, pcocacola, cocacolas*pcocacola);
	printf("\n%2d sandwiches of sausage at  %5.2f euros are %6.2f euros", ojuices, pojuice, ojuices*pojuice);
	printf("\nTOTAL:   %6.2f", bill);
	printf("\nPayment: %6.2f", payment);
	printf("\nRefund:  %6.2f", payment - bill);
	
	
    return 0;
}