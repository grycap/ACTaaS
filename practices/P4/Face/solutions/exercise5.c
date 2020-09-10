#include <stdio.h>


int main(){

	int op;
	int FO,SO, result;

	do
    {
        /**** Show Menú ****/
	    printf("CALCULATOR\n-----------\n\t0. Exit\n\t1. Add\n\t2. Subtract\n\t3. Multiply\n\t4. Divide\n");
	   /**** read Option ****/
	   printf("Enter option Menu (0-4): ");
	   scanf("%d", &op);
	   if(op == 0) break; // exit loop
	  /**** Read First operand ****/
	  printf("Enter First Operand: ");
	  scanf("%d", &FO);
	  /**** Read Second Operand: ***/
	  printf("Enter Second Operand: ");
	  scanf("%d", &SO);

      /**** Multiple Selection****/
	   switch(op){
	       case 0: return 0;
	               break;
	       case 1: result = FO + SO;
                   printf("%d + %d = %d\n", FO, SO, result);
                   break;
		   case 2: result = FO -  SO;
                   printf("%d - %d = %d\n", FO, SO, result);
                   break;
		   case 3: result = FO * SO;
                   printf("%d * %d = %d\n", FO, SO, result);
                   break;
           case 4: if (SO == 0) printf("Error");
                   else
                   {
                       result = FO / SO;
                       printf("%d / %d = %d\n", FO, SO, result);
                  }
                  break;
		default: printf("\nIncorrect option\n");
	}
    }  while(1);

    return 0;
}
