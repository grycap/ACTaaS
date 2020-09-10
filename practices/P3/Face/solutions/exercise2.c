#include <stdio.h>

int main(){

	float a,b;

	printf("Enter a and b numbers: ");
	scanf("%f %f", &a, &b);

	if (a!=0){
		printf("The result is %.2f\n",b / a);
	}else
             if((a == 0) && (b != 0)){
		       printf("The solution is not feasible\n");
		}else{
                    if ((a == 0) && (b == 0)){
			printf("The solution is indeterminate\n");
		       }
		}
		return 0;
    }





