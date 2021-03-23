 #include <stdio.h>

 
/* Here, you must include the required libraries */

void main(){
  char name[80];
  float  weight;
  int i;

 
 printf("Please, entry your name:");
 
 scanf("%s", name);
 
 printf("Please, entry your age:");
  scanf("%d", &i);
 
 printf("Please, entry your weight in kilograms:");
 
 scanf ("%f", &weight);
 
 printf("\n\nMy name is %s and I am %d years old. My weight is %f kg.", name, i, weight);
 

 
 
}
