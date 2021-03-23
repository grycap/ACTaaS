#include <stdio.h>
#define BigBox 50
#define MediumBox 20
#define SmallBox 5
#define Individual 1

void main(){
	int Agendas, BB, MB, SB, I, Resto1, Resto2;
	
	printf("Please, Introduce the number of agendas: ");
	scanf("%d", &Agendas);
	
	BB = Agendas / BigBox;
	Resto1 = Agendas % BigBox;
	MB = Resto1 / MediumBox;
	Resto2 = Resto1 % MediumBox;
	SB = Resto2 / SmallBox;
	I = Resto2 % SmallBox;
	
	printf ("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas", BB, MB, SB, I);
}
