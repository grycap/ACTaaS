
#include <stdio.h>
void main(){
	int A, B, nB, rB, M, nM, rM, S, nS, rS;
   
    printf("Please, Introduce the number of agendas: ");
    scanf("%d", &A);
    
    B=50;
    nB=A/B;
    rB=A%B;
    
    M=20;
    nM=rB/M;
    rM=rB%M;
    
    S=5;
    nS=rM/S;
    rS=rM%S;
    
    
    printf("%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas\n", nB, nM, nS, rS);
}
