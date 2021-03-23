
/* Here, you must include the required libraries */
#include <stdio.h>
#include <stdlib.h>
void main(){

    float CP;
    float P;
    int PM;
    float SP;
    float PR;

    printf("Please, Introduce the cost price in euros:");
    scanf("%f",&CP);

    printf("Please, Introduce the profit margin(%%):");
    scanf("%d",&PM);
    
    PR = PM / 100.0;
    P = PM + PR;
    SP= P + CP;


    printf("The selling price is %f euros",SP);
}
