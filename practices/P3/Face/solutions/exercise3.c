#include <stdio.h>

int main(){

	int op;
	int FO, SO, result;

	/**** Show Menú ****/
	printf("Menu \n\t1-Sum\n\t2-Substraction\n\t3-Multiplication\n\t4-division\n");
	/**** read Option ****/
	printf("Enter option Menu (1-4): ");
	scanf("%d", &op);
	/**** Read First operand ****/
	printf("Enter First Operand: ");
	scanf("%d", &FO);
	/**** Read Second Operand: ***/
	printf("Enter Second Operand: ");
	scanf("%d", &SO);

	/**** Multiple Selection****/
	switch(op){
		case 1: result = FO + SO;
                printf("%d", result);
                break;
		case 2: result = FO -  SO;
                printf("%d", result);
                break;
		case 3: result = FO * SO;
                printf("%d", result);
                break;
		case 4: if (SO == 0) printf("Error");
                else {
                        result = FO / SO;
                        printf("%d", result);
                     }
                break;
		default: printf("\nIncorrect option\n");
	}


    return 0;
}
