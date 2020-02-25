#include <stdio.h>

int main(){
	char name[80], surname[80], DNI[10];
	int day, month, year;
	char gender;
	float credits;
	
	FILE *F;
	


	printf("Entry your name: ");
	gets(name);
	
	printf("Entry your First Surname: ");
	gets(surname);
	
	printf("Entry your date of birth (d m y): ");
	scanf("%d %d %d", &day, &month, &year);

	printf("Entry your DNI: ");
	scanf("%s", DNI);

	printf("Entry your gender (M/F): ");
	scanf("\n%c", &gender);
	
	printf("Entry registered credits): ");
	scanf("%f", &credits);


	F = fopen("result.txt","w");
	fprintf(F,"My name is %s %s and I was born %d/%d/%d.\nMy DNI is %s and my sex is %c.\nThe registered credits are %.2f.",  name, surname, day, month, year, DNI, gender, credits);
	fclose(F);
	
    return 0;
}
