
#include <stdio.h>

void main(){
 char name[80], first_surname[80], second_surname[80], NIF[88], sex;
 int day, month, year;
 

 
 
 printf("Please, introduce the next information:");
 printf("\nName:");
 scanf("%s", name);
 printf("First surname:");
 scanf("%s", first_surname);
 printf("Second surname:");
 scanf("%s", second_surname);
 printf("NIF:");
 scanf("%s", NIF );
 printf("Birthday:");
 scanf("%d %d %d", &day, &month, &year);
 printf("Sex (F/M):");
 scanf("\n %c", &sex);
 printf("\n\nMy name is %s %s %s with NIF %s. I was born on %d/%d/%d and my sex is %c.\n ", name, first_surname, second_surname, NIF, day, month, year, sex);
 
 
 
}
