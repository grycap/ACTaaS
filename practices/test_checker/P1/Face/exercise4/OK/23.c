#include <stdio.h>

 
#define N 100.0
void main(){
float c, p, s;
int m;

printf("Please, Introduce the cost price in euros: ");

scanf("%f",&c);

printf("Please, Introduce profit margin ('%%'): ");

scanf("%d",&m);

p = c * m / N;

s = c + p;

printf("The selling price is %f euros", s);
}
